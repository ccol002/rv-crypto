#define FILE_SIZE 7168
#define ITERATIONS   10
#define BLOCKSIZE    32

#include "nss.h"

#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include "secube-host/L1.h"

static uint8_t pin1[32] = {
        't','e','s','t',  0,0,0,0, 0,0,0,0, 0,0,0,0,
        0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0
};

bool benchmark(const Crypto *crypto, const char * dir_path, const size_t iterations) {
	if (!crypto) {
		return false;
	}

	const char *name = crypto->name();

    clock_t t;

	void *param = NULL;
	if (!crypto->init(&param)) {
		printf("[%s] initialization failed!\n", name);
		return false;
	}
    int message_size;

    bool ok = true;

    DIR *d;
    struct dirent *dir;
    d = opendir(dir_path);
    FILE *inFile;
    if (!d) {
        printf("[%s] wrong dir path!\n", dir_path);
        return false;
    }

    unsigned char  ptext[FILE_SIZE];
    unsigned int   ptextLen = 0;
    unsigned int paddingLength;
    unsigned char  encbuf[FILE_SIZE+32];
    unsigned int   encbufLen;
    char a[1000];
    se3_disco_it it;
    se3_device dev;
    se3_session s;
    uint32_t session_id = 0;
    uint16_t return_value = 0;
    L0_discover_init(&it);
    while (L0_discover_next(&it)) {

        return_value = L0_open(&dev, &(it.device_info), SE3_TIMEOUT);
        if (SE3_OK != return_value) {
            printf("Failure to open device\n");
            return false;
        }

        return_value = L1_login(&s, &dev, pin1, SE3_ACCESS_USER);
        if (SE3_OK != return_value) {
            printf("Failure to log in as user\n");
            return false;
        }

        return_value = L1_crypto_set_time(&s, (uint32_t) time(0));
        if (SE3_OK != return_value) {
            printf("Failure to set time\n");
            L1_logout(&s);
            return false;
        }

        uint8_t *key_data; //aes256
        key_data = (uint8_t *) calloc(32, sizeof(uint8_t));

        se3_key key;
        strcpy(key.name, "Application_key_1");
        key.id = 5;
        key.name_size = strlen(key.name);
        key.data_size = 32;
        key.data = key_data;
        key.validity = (uint32_t) time(0) + 365 * 24 * 3600;

        if (SE3_OK != L1_key_edit(&s, SE3_KEY_OP_UPSERT, &key)) {
            return false;
        }

        return_value = L1_crypto_init(&s, SE3_ALGO_AES, SE3_DIR_ENCRYPT | SE3_FEEDBACK_GCM, key.id, &session_id);
        if (SE3_OK != return_value) {
            printf("Failure initialise crypto session\n");
            L1_logout(&s);
            return false;
        }

        while ((dir = readdir(d)) != NULL)
            if (dir->d_type == DT_REG) {
                const char **ciphers = crypto->ciphers();
                for (size_t i = 0; ciphers[i] != NULL; ++i) {
                    const char *cipher = ciphers[i];
                    if (!crypto->set_cipher(param, cipher)) {
                        printf("[%s] failed to set %s, skipping it...\n", name, cipher);
                        continue;
                    }

                    for (size_t i = 0; i < iterations; ++i) {
                        printf("%s,", dir->d_name);
                        strcpy(a, "/home/peter/Desktop/NSS/exp/");
                        strcat(a, dir->d_name);
                        inFile = fopen(a, "r");
                        if (!inFile) {
                            printf("Unable to open \"%s\" for reading.\n", a);
                            return false;
                        }

                        t = clock();
                        while ((ptextLen = fread(ptext, sizeof(unsigned char), FILE_SIZE, inFile)) > 0) {
                            if (ptextLen % BLOCKSIZE != 0) {
                                paddingLength = BLOCKSIZE * ((int) (ptextLen / BLOCKSIZE) + 1) - ptextLen;
                                for (int j = 0; j < paddingLength; j++) {
                                    ptext[ptextLen + j] = (unsigned char) paddingLength;
                                }
                                ptextLen = ptextLen + paddingLength;
                            }
                            size_t ret = crypto->encrypt(param, ptextLen, encbuf, ptext);
                            if (!ret) {
                                printf("[%s] encryption failed!\n", name);
                                ok = false;
                                break;
                            }
                        }
                        t = clock() - t;
                        double time_taken = ((double) t) / CLOCKS_PER_SEC; // in seconds
                        printf("%lfs,", time_taken);

                        if (inFile) {
                            fclose(inFile);
                        }

                        inFile = fopen(a, "r");
                        if (!inFile) {
                            printf("Unable to open \"%s\" for reading.\n", a);
                            return false;
                        }

                        t = clock();
                        while ((ptextLen = fread(ptext, sizeof(unsigned char), FILE_SIZE, inFile)) > 0) {
                            if (ptextLen % BLOCKSIZE != 0) {
                                paddingLength = BLOCKSIZE * ((int) (ptextLen / BLOCKSIZE) + 1) - ptextLen;
                                for (int j = 0; j < paddingLength; j++) {
                                    ptext[ptextLen + j] = (unsigned char) paddingLength;
                                }
                                ptextLen = ptextLen + paddingLength;
                            }

                            /* Encrypt and finalise encryption session */
                            return_value = L1_crypto_update(&s, session_id, SE3_DIR_ENCRYPT | SE3_FEEDBACK_GCM ,
                                                            0, NULL,  0,NULL, ptextLen, ptext, &encbufLen, encbuf);
                            if (SE3_OK != return_value) {
                                printf("Failure encrypt data \n");
                                L1_logout(&s);
                                return false;
                            }
                        }
                        t = clock() - t;
                        time_taken = ((double) t) / CLOCKS_PER_SEC; // in seconds
                        printf("%lfs,", time_taken);

                        if (inFile) {
                            fclose(inFile);
                        }

                        printf("\n");
                    }
                }


            }
        closedir(d);

    }

	crypto->free(param);

    return_value = L1_logout(&s);
    if (SE3_OK != return_value) {
        printf("Failure to log out\n");
        return false;
    }
	return ok;
}

int main() {
	bool ok = true;

#if BENCHMARK_NSS
	if (!benchmark(nss_get(),"/home/peter/Desktop/NSS/exp", ITERATIONS)) {
		ok = false;
	}
#endif

	return ok ? EXIT_SUCCESS : EXIT_FAILURE;
}
