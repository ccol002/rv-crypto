Attaching...
Resolving functions...
Instrumenting functions...
SSL_ImportFD: Loaded handler at "/home/blockio/binrv/__handlers__/libssl3.so/SSL_ImportFD.js"
PR_Connect: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Connect.js"
SSL_AuthCertificateComplete: Loaded handler at "/home/blockio/binrv/__handlers__/libssl3.so/SSL_AuthCertificateComplete.js"
SSL_AuthCertificate: Loaded handler at "/home/blockio/binrv/__handlers__/libssl3.so/SSL_AuthCertificate.js"
SSL_AuthCertificateHook: Loaded handler at "/home/blockio/binrv/__handlers__/libssl3.so/SSL_AuthCertificateHook.js"
SECKEY_CreateDHPrivateKey: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_CreateDHPrivateKey.js"
SECKEY_CreateECPrivateKey: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_CreateECPrivateKey.js"
SECKEY_DestroyPrivateKey: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_DestroyPrivateKey.js"
CERT_VerifySignedDataWithPublicKey: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/CERT_VerifySignedDataWithPublicKey.js"
CERT_VerifySignedData: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/CERT_VerifySignedData.js"
CERT_VerifySignedDataWithPublicKeyInfo: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/CERT_VerifySignedDataWithPublicKeyInfo.js"
_ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE: Loaded handler at "/home/blockio/binrv/__handlers__/libxul.so/_ZN7mozilla4pkix16VerifySignedDa_bce4259a.js"
PK11_PubDeriveWithKDF: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDeriveWithKDF.js"
PK11_DeriveWithFlags: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlags.js"
PK11_PubDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDerive.js"
PK11_Derive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Derive.js"
PK11_DeriveWithFlagsPerm: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlagsPerm.js"
PK11_DeriveWithTemplate: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithTemplate.js"
PK11_Encrypt: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Encrypt.js"
PR_Send: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Send.js"
PR_Close: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Close.js"
EC_ValidatePublicKey: Loaded handler at "/home/blockio/binrv/__handlers__/libfreeblpriv3.so/EC_ValidatePublicKey.js"
SECKEY_ECParamsToBasePointOrderLen: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToBasePointOrderLen.js"
SECKEY_ECParamsToKeySize: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToKeySize.js"
Started tracing 24 functions. Press Ctrl+C to stop.
           /* TID 0x702c */
   140 ms  0x702c PR_Close()
   140 ms  0x702c fd:0x7f8ee14e5820
           /* TID 0x7024 */
   443 ms  0x7024 SSL_ImportFD()
   444 ms  0x7024 ret:0x7f8ee14fe910
   444 ms  0x7024 SSL_AuthCertificateHook()
   444 ms  0x7024 fd:0x7f8ee14fe910
   444 ms  0x7024 ret:0x0
   444 ms  0x7024 PR_Connect()
   444 ms  0x7024 fd:0x7f8ee14fe910
   651 ms  0x7024 SECKEY_CreateECPrivateKey()
   651 ms  0x7024 cx:0x7f8ee14e97e8
   653 ms     | 0x7024 EC_ValidatePublicKey()
   653 ms     | 0x7024 ret:0x0
   653 ms  0x7024 ret:0x7f8ee1261020::7f8ee1261020  10 3a 2e e1                                      .:..
   654 ms  0x7024 SECKEY_CreateECPrivateKey()
   654 ms  0x7024 cx:0x7f8ee14e97e8
   656 ms     | 0x7024 EC_ValidatePublicKey()
   657 ms     | 0x7024 ret:0x0
   658 ms  0x7024 ret:0x7f8ee1263020::7f8ee1263020  50 3b 2e e1                                      P;..
           /* TID 0x708a */
   672 ms  0x708a PR_Close()
   672 ms  0x708a fd:0x7f8ee128b9a0
   674 ms  0x708a PR_Close()
   674 ms  0x708a fd:0x7f8ee128b9a0
   803 ms  0x708a PR_Close()
   803 ms  0x708a fd:0x7f8ee14fed00
           /* TID 0x7024 */
   872 ms  SECKEY_ECParamsToKeySize()
   873 ms  0x7024 ret:0x100
   873 ms  0x7024 SECKEY_CreateECPrivateKey()
   873 ms  0x7024 cx:0x7f8ee14e97e8
   875 ms     | 0x7024 EC_ValidatePublicKey()
   879 ms     | 0x7024 ret:0x0
   879 ms  0x7024 ret:0x7f8ee126c020::7f8ee126c020  50 36 41 d0                                      P6A.
   880 ms  0x7024 PK11_PubDeriveWithKDF()
   880 ms  0x7024 seckey:0x7f8ee126c020
   880 ms     | 0x7024 EC_ValidatePublicKey()
   884 ms     | 0x7024 ret:0x0
   888 ms  0x7024 ret:0x7f8ee30bdb00
   888 ms  0x7024 PK11_DeriveWithFlags()
   888 ms  0x7024 basekey:0x7f8ee30bdb00
   888 ms     | 0x7024 PK11_DeriveWithTemplate()
   888 ms  0x7024 ret:0x7f8ee12f7c00
   888 ms  0x7024 PK11_Derive()
   888 ms  0x7024 basekey:0x7f8ee12f7c00
   888 ms     | 0x7024 PK11_DeriveWithTemplate()
   888 ms  0x7024 ret:0x7f8ee12f7d00
   888 ms  0x7024 SECKEY_DestroyPrivateKey()
   888 ms  0x7024 privk:0x7f8ee126c020::7f8ee126c020  50 36 41 d0                                      P6A.
   888 ms  0x7024 privk:0x7f8ee126c020::7f8ee126c020  e5 e5 e5 e5                                      ....
   889 ms  0x7024 PK11_Encrypt()
   889 ms  0x7024 symkey:0x7f8ee12f7e80
   889 ms  0x7024 PR_Connect()
   889 ms  0x7024 fd:0x7f8ee14fee80
           /* TID 0x707f */
   943 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   943 ms  0x707f ret:0x0
           /* TID 0x702c */
   944 ms  0x702c PR_Close()
   944 ms  0x702c fd:0x7f8ed0428070
           /* TID 0x7024 */
   944 ms  0x7024 SSL_AuthCertificateComplete()
   944 ms  0x7024 fd:0x7f8ee14fe910
   944 ms  0x7024 err:0x0
   945 ms  0x7024 PK11_Encrypt()
   945 ms  0x7024 symkey:0x7f8ee12f7e80
  1102 ms  0x7024 SECKEY_DestroyPrivateKey()
  1102 ms  0x7024 privk:0x7f8ee1263020::7f8ee1263020  50 3b 2e e1                                      P;..
  1102 ms  0x7024 privk:0x7f8ee1263020::7f8ee1263020  e5 e5 e5 e5                                      ....
  1102 ms  0x7024 SECKEY_DestroyPrivateKey()
  1102 ms  0x7024 privk:0x7f8ee1261020::7f8ee1261020  10 3a 2e e1                                      .:..
  1103 ms  0x7024 privk:0x7f8ee1261020::7f8ee1261020  e5 e5 e5 e5                                      ....
  1329 ms  0x7024 SSL_ImportFD()
  1329 ms  0x7024 ret:0x7f8ed0428220
  1329 ms  0x7024 SSL_AuthCertificateHook()
  1329 ms  0x7024 fd:0x7f8ed0428220
  1329 ms  0x7024 ret:0x0
  1330 ms  0x7024 PR_Connect()
  1330 ms  0x7024 fd:0x7f8ed0428220
  1355 ms  0x7024 SECKEY_CreateECPrivateKey()
  1355 ms  0x7024 cx:0x7f8ed0408728
  1356 ms     | 0x7024 EC_ValidatePublicKey()
  1356 ms     | 0x7024 ret:0x0
  1356 ms  0x7024 ret:0x7f8ee1262020::7f8ee1262020  a0 36 41 d0                                      .6A.
  1356 ms  0x7024 SECKEY_CreateECPrivateKey()
  1356 ms  0x7024 cx:0x7f8ed0408728
  1357 ms     | 0x7024 EC_ValidatePublicKey()
  1360 ms     | 0x7024 ret:0x0
  1360 ms  0x7024 ret:0x7f8ee1268020::7f8ee1268020  80 38 41 d0                                      .8A.
           /* TID 0x707f */
  1412 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1413 ms  0x707f ret:0x0
           /* TID 0x7024 */
  1413 ms  SECKEY_ECParamsToKeySize()
  1413 ms  0x7024 ret:0x100
  1413 ms  0x7024 SECKEY_CreateECPrivateKey()
  1413 ms  0x7024 cx:0x7f8ed0408728
  1415 ms     | 0x7024 EC_ValidatePublicKey()
  1420 ms     | 0x7024 ret:0x0
  1420 ms  0x7024 ret:0x7f8ee126b820::7f8ee126b820  00 3b 41 d0                                      .;A.
  1420 ms  0x7024 PK11_PubDeriveWithKDF()
  1420 ms  0x7024 seckey:0x7f8ee126b820
  1420 ms     | 0x7024 EC_ValidatePublicKey()
  1424 ms     | 0x7024 ret:0x0
  1428 ms  0x7024 ret:0x7f8ee30bdb00
  1428 ms  0x7024 PK11_DeriveWithFlags()
  1428 ms  0x7024 basekey:0x7f8ee30bdb00
  1428 ms     | 0x7024 PK11_DeriveWithTemplate()
  1428 ms  0x7024 ret:0x7f8ee128dd00
  1428 ms  0x7024 PK11_Derive()
  1428 ms  0x7024 basekey:0x7f8ee128dd00
  1428 ms     | 0x7024 PK11_DeriveWithTemplate()
  1428 ms  0x7024 ret:0x7f8ee12f8700
  1428 ms  0x7024 SECKEY_DestroyPrivateKey()
  1428 ms  0x7024 privk:0x7f8ee126b820::7f8ee126b820  00 3b 41 d0                                      .;A.
  1428 ms  0x7024 privk:0x7f8ee126b820::7f8ee126b820  e5 e5 e5 e5                                      ....
  1428 ms  0x7024 PK11_Encrypt()
  1428 ms  0x7024 symkey:0x7f8ee12f8c00
  1429 ms  0x7024 SSL_AuthCertificateComplete()
  1429 ms  0x7024 fd:0x7f8ed0428220
  1429 ms  0x7024 err:0x0
  1429 ms  0x7024 PK11_Encrypt()
  1429 ms  0x7024 symkey:0x7f8ee12f8c00
  1481 ms  0x7024 SECKEY_DestroyPrivateKey()
  1481 ms  0x7024 privk:0x7f8ee1268020::7f8ee1268020  80 38 41 d0                                      .8A.
  1482 ms  0x7024 privk:0x7f8ee1268020::7f8ee1268020  e5 e5 e5 e5                                      ....
  1482 ms  0x7024 SECKEY_DestroyPrivateKey()
  1482 ms  0x7024 privk:0x7f8ee1262020::7f8ee1262020  a0 36 41 d0                                      .6A.
  1482 ms  0x7024 privk:0x7f8ee1262020::7f8ee1262020  e5 e5 e5 e5                                      ....
  1485 ms  0x7024 PK11_Encrypt()
  1485 ms  0x7024 symkey:0x7f8ee12f8c00
  1516 ms  0x7024 PK11_Encrypt()
  1516 ms  0x7024 symkey:0x7f8ee12f8c00
  1546 ms  0x7024 PK11_Encrypt()
  1546 ms  0x7024 symkey:0x7f8ee12f8c00
  1589 ms  0x7024 PK11_Encrypt()
  1589 ms  0x7024 symkey:0x7f8ee12f8c00
  1705 ms  0x7024 PK11_Encrypt()
  1705 ms  0x7024 symkey:0x7f8ee12f8c00
  1738 ms  0x7024 PK11_Encrypt()
  1738 ms  0x7024 symkey:0x7f8ee12f8c00
  1769 ms  0x7024 PK11_Encrypt()
  1769 ms  0x7024 symkey:0x7f8ee12f8c00
           /* TID 0x7079 */
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed0428310
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed04283d0
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed0428310
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed04283d0
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed0428310
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed04283d0
  1798 ms  0x7079 PR_Close()
  1798 ms  0x7079 fd:0x7f8ed0428310
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed04283d0
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed0428310
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed04283d0
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed0428310
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed04283d0
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed0428310
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed04283d0
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed0428310
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed04283d0
  1799 ms  0x7079 PR_Close()
  1799 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed0428310
  1800 ms  0x7079 PR_Close()
  1800 ms  0x7079 fd:0x7f8ed04283d0
  1804 ms  0x7079 PR_Close()
  1804 ms  0x7079 fd:0x7f8ed0428310
  1804 ms  0x7079 PR_Close()
  1804 ms  0x7079 fd:0x7f8ed0428310
  1807 ms  0x7079 PR_Close()
  1807 ms  0x7079 fd:0x7f8ed0428310
  1807 ms  0x7079 PR_Close()
  1807 ms  0x7079 fd:0x7f8ed0428340
  1810 ms  0x7079 PR_Close()
  1810 ms  0x7079 fd:0x7f8ed0428340
  1810 ms  0x7079 PR_Close()
  1810 ms  0x7079 fd:0x7f8ed0428340
  1812 ms  0x7079 PR_Close()
  1812 ms  0x7079 fd:0x7f8ed0428340
  1813 ms  0x7079 PR_Close()
  1813 ms  0x7079 fd:0x7f8ed0428340
  1866 ms  0x7079 PR_Close()
  1866 ms  0x7079 fd:0x7f8ed0428340
  1867 ms  0x7079 PR_Close()
  1867 ms  0x7079 fd:0x7f8ed0428340
  1914 ms  0x7079 PR_Close()
  1914 ms  0x7079 fd:0x7f8ed0428340
  1915 ms  0x7079 PR_Close()
  1915 ms  0x7079 fd:0x7f8ed0428340
  1953 ms  0x7079 PR_Close()
  1953 ms  0x7079 fd:0x7f8ed0428340
  1954 ms  0x7079 PR_Close()
  1954 ms  0x7079 fd:0x7f8ed0428340
  1957 ms  0x7079 PR_Close()
  1957 ms  0x7079 fd:0x7f8ed0428340
  1958 ms  0x7079 PR_Close()
  1958 ms  0x7079 fd:0x7f8ed0428340
           /* TID 0x7076 */
  1958 ms  0x7076 PR_Close()
  1958 ms  0x7076 fd:0x7f8ed0428340
  1958 ms  0x7076 PR_Close()
  1958 ms  0x7076 fd:0x7f8ed0428340
  1958 ms  0x7076 PR_Close()
  1958 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1959 ms  0x7076 PR_Close()
  1959 ms  0x7076 fd:0x7f8ed0428340
  1960 ms  0x7076 PR_Close()
  1960 ms  0x7076 fd:0x7f8ed0428340
           /* TID 0x708a */
  2463 ms  0x708a PR_Close()
  2463 ms  0x708a fd:0x7f8ed0428160
  2467 ms  0x708a PR_Close()
  2467 ms  0x708a fd:0x7f8ed0428160
  2817 ms  0x708a PR_Close()
  2817 ms  0x708a fd:0x7f8ed0428190
           /* TID 0x702c */
  4216 ms  0x702c PR_Close()
  4216 ms  0x702c fd:0x7f8ed0428190
  4216 ms  0x702c PR_Close()
  4216 ms  0x702c fd:0x7f8ed04283d0
           /* TID 0x7024 */
  4475 ms  0x7024 SSL_ImportFD()
  4475 ms  0x7024 ret:0x7f8ee271f790
  4475 ms  0x7024 SSL_AuthCertificateHook()
  4475 ms  0x7024 fd:0x7f8ee271f790
  4475 ms  0x7024 ret:0x0
  4475 ms  0x7024 PR_Connect()
  4475 ms  0x7024 fd:0x7f8ee271f790
  4500 ms  0x7024 SECKEY_CreateECPrivateKey()
  4500 ms  0x7024 cx:0x7f8ed0408a68
  4502 ms     | 0x7024 EC_ValidatePublicKey()
  4502 ms     | 0x7024 ret:0x0
  4502 ms  0x7024 ret:0x7f8ed03d4820::7f8ed03d4820  b0 55 3a d0                                      .U:.
  4502 ms  0x7024 SECKEY_CreateECPrivateKey()
  4502 ms  0x7024 cx:0x7f8ed0408a68
  4503 ms     | 0x7024 EC_ValidatePublicKey()
  4507 ms     | 0x7024 ret:0x0
  4507 ms  0x7024 ret:0x7f8ed03d6820::7f8ed03d6820  20 54 3a d0                                       T:.
           /* TID 0x707f */
  4538 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4538 ms  0x707f ret:0x0
           /* TID 0x7024 */
  4539 ms  SECKEY_ECParamsToKeySize()
  4539 ms  0x7024 ret:0xff
  4539 ms  0x7024 SECKEY_CreateECPrivateKey()
  4539 ms  0x7024 cx:0x7f8ed0408a68
  4540 ms     | 0x7024 EC_ValidatePublicKey()
  4540 ms     | 0x7024 ret:0x0
  4540 ms  0x7024 ret:0x7f8ed03dd820::7f8ed03dd820  00 5b 3a d0                                      .[:.
  4540 ms  0x7024 PK11_PubDeriveWithKDF()
  4540 ms  0x7024 seckey:0x7f8ed03dd820
  4541 ms     | 0x7024 EC_ValidatePublicKey()
  4541 ms     | 0x7024 ret:0x0
  4542 ms  0x7024 ret:0x7f8ee30bdb00
  4542 ms  0x7024 PK11_DeriveWithFlags()
  4542 ms  0x7024 basekey:0x7f8ee30bdb00
  4542 ms     | 0x7024 PK11_DeriveWithTemplate()
  4542 ms  0x7024 ret:0x7f8eeb238d00
  4542 ms  0x7024 PK11_Derive()
  4542 ms  0x7024 basekey:0x7f8eeb238d00
  4542 ms     | 0x7024 PK11_DeriveWithTemplate()
  4542 ms  0x7024 ret:0x7f8eeb238d80
  4542 ms  0x7024 SECKEY_DestroyPrivateKey()
  4542 ms  0x7024 privk:0x7f8ed03dd820::7f8ed03dd820  00 5b 3a d0                                      .[:.
  4543 ms  0x7024 privk:0x7f8ed03dd820::7f8ed03dd820  e5 e5 e5 e5                                      ....
  4543 ms  0x7024 PK11_Encrypt()
  4543 ms  0x7024 symkey:0x7f8eeb238f00
  4543 ms  0x7024 SSL_AuthCertificateComplete()
  4543 ms  0x7024 fd:0x7f8ee271f790
  4543 ms  0x7024 err:0x0
  4544 ms  0x7024 PK11_Encrypt()
  4544 ms  0x7024 symkey:0x7f8eeb238f00
  4545 ms  0x7024 PK11_Encrypt()
  4545 ms  0x7024 symkey:0x7f8eeb238f00
  4569 ms  0x7024 SECKEY_DestroyPrivateKey()
  4569 ms  0x7024 privk:0x7f8ed03d6820::7f8ed03d6820  20 54 3a d0                                       T:.
  4570 ms  0x7024 privk:0x7f8ed03d6820::7f8ed03d6820  e5 e5 e5 e5                                      ....
  4570 ms  0x7024 SECKEY_DestroyPrivateKey()
  4570 ms  0x7024 privk:0x7f8ed03d4820::7f8ed03d4820  b0 55 3a d0                                      .U:.
  4570 ms  0x7024 privk:0x7f8ed03d4820::7f8ed03d4820  e5 e5 e5 e5                                      ....
  4595 ms  0x7024 PK11_Encrypt()
  4595 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x703b */
  5660 ms  0x703b PR_Close()
  5660 ms  0x703b fd:0x7f8ee271fdc0
           /* TID 0x702c */
  5709 ms  0x702c PR_Close()
  5709 ms  0x702c fd:0x7f8ed0130df0
           /* TID 0x7024 */
  5756 ms  0x7024 SSL_ImportFD()
  5756 ms  0x7024 ret:0x7f8ed0379d30
  5756 ms  0x7024 SSL_AuthCertificateHook()
  5756 ms  0x7024 fd:0x7f8ed0379d30
  5756 ms  0x7024 ret:0x0
  5756 ms  0x7024 PK11_Encrypt()
  5756 ms  0x7024 symkey:0x7f8eeb238f00
  5756 ms  0x7024 PR_Connect()
  5756 ms  0x7024 fd:0x7f8ed0379d30
  5757 ms  0x7024 SSL_ImportFD()
  5757 ms  0x7024 ret:0x7f8ed0379f70
  5757 ms  0x7024 SSL_AuthCertificateHook()
  5757 ms  0x7024 fd:0x7f8ed0379f70
  5757 ms  0x7024 ret:0x0
  5757 ms  0x7024 PK11_Encrypt()
  5757 ms  0x7024 symkey:0x7f8eeb238f00
  5757 ms  0x7024 PR_Connect()
  5757 ms  0x7024 fd:0x7f8ed0379f70
  5758 ms  0x7024 SSL_ImportFD()
  5758 ms  0x7024 ret:0x7f8ed0487100
  5758 ms  0x7024 SSL_AuthCertificateHook()
  5758 ms  0x7024 fd:0x7f8ed0487100
  5758 ms  0x7024 ret:0x0
  5758 ms  0x7024 PK11_Encrypt()
  5758 ms  0x7024 symkey:0x7f8eeb238f00
  5758 ms  0x7024 PR_Connect()
  5758 ms  0x7024 fd:0x7f8ed0487100
  5758 ms  0x7024 PK11_Encrypt()
  5758 ms  0x7024 symkey:0x7f8eeb238f00
  5759 ms  0x7024 SSL_ImportFD()
  5759 ms  0x7024 ret:0x7f8ed0362880
  5759 ms  0x7024 SSL_AuthCertificateHook()
  5759 ms  0x7024 fd:0x7f8ed0362880
  5759 ms  0x7024 ret:0x0
  5760 ms  0x7024 PK11_Encrypt()
  5760 ms  0x7024 symkey:0x7f8eeb238f00
  5760 ms  0x7024 PR_Connect()
  5760 ms  0x7024 fd:0x7f8ed0362880
  5761 ms  0x7024 PK11_Encrypt()
  5761 ms  0x7024 symkey:0x7f8eeb238f00
  5762 ms  0x7024 PK11_Encrypt()
  5762 ms  0x7024 symkey:0x7f8eeb238f00
  5762 ms  0x7024 PK11_Encrypt()
  5762 ms  0x7024 symkey:0x7f8eeb238f00
  5763 ms  0x7024 PK11_Encrypt()
  5763 ms  0x7024 symkey:0x7f8eeb238f00
  5763 ms  0x7024 PK11_Encrypt()
  5763 ms  0x7024 symkey:0x7f8eeb238f00
  5763 ms  0x7024 PK11_Encrypt()
  5763 ms  0x7024 symkey:0x7f8eeb238f00
  5763 ms  0x7024 PK11_Encrypt()
  5763 ms  0x7024 symkey:0x7f8eeb238f00
  5766 ms  0x7024 PK11_Encrypt()
  5766 ms  0x7024 symkey:0x7f8eeb238f00
  5766 ms  0x7024 PK11_Encrypt()
  5766 ms  0x7024 symkey:0x7f8eeb238f00
  5766 ms  0x7024 PK11_Encrypt()
  5766 ms  0x7024 symkey:0x7f8eeb238f00
  5766 ms  0x7024 PK11_Encrypt()
  5766 ms  0x7024 symkey:0x7f8eeb238f00
  5766 ms  0x7024 PK11_Encrypt()
  5766 ms  0x7024 symkey:0x7f8eeb238f00
  5767 ms  0x7024 PK11_Encrypt()
  5767 ms  0x7024 symkey:0x7f8eeb238f00
  5767 ms  0x7024 PK11_Encrypt()
  5767 ms  0x7024 symkey:0x7f8eeb238f00
  5767 ms  0x7024 SSL_ImportFD()
  5767 ms  0x7024 ret:0x7f8ed0362e20
  5767 ms  0x7024 SSL_AuthCertificateHook()
  5767 ms  0x7024 fd:0x7f8ed0362e20
  5767 ms  0x7024 ret:0x0
  5767 ms  0x7024 PK11_Encrypt()
  5767 ms  0x7024 symkey:0x7f8eeb238f00
  5768 ms  0x7024 PK11_Encrypt()
  5768 ms  0x7024 symkey:0x7f8eeb238f00
  5768 ms  0x7024 PR_Connect()
  5768 ms  0x7024 fd:0x7f8ed0362e20
  5768 ms  0x7024 SSL_ImportFD()
  5768 ms  0x7024 ret:0x7f8ed0347a30
  5768 ms  0x7024 SSL_AuthCertificateHook()
  5768 ms  0x7024 fd:0x7f8ed0347a30
  5768 ms  0x7024 ret:0x0
  5768 ms  0x7024 PR_Connect()
  5768 ms  0x7024 fd:0x7f8ed0347a30
  5768 ms  0x7024 SSL_ImportFD()
  5768 ms  0x7024 ret:0x7f8ed0362f70
  5768 ms  0x7024 SSL_AuthCertificateHook()
  5768 ms  0x7024 fd:0x7f8ed0362f70
  5768 ms  0x7024 ret:0x0
  5768 ms  0x7024 PR_Connect()
  5768 ms  0x7024 fd:0x7f8ed0362f70
  5768 ms  0x7024 SSL_ImportFD()
  5768 ms  0x7024 ret:0x7f8ed0362fd0
  5768 ms  0x7024 SSL_AuthCertificateHook()
  5768 ms  0x7024 fd:0x7f8ed0362fd0
  5768 ms  0x7024 ret:0x0
  5768 ms  0x7024 PR_Connect()
  5768 ms  0x7024 fd:0x7f8ed0362fd0
  5777 ms  0x7024 PK11_Encrypt()
  5777 ms  0x7024 symkey:0x7f8eeb238f00
  5777 ms  0x7024 PK11_Encrypt()
  5777 ms  0x7024 symkey:0x7f8eeb238f00
  5777 ms  0x7024 PK11_Encrypt()
  5777 ms  0x7024 symkey:0x7f8eeb238f00
  5777 ms  0x7024 PK11_Encrypt()
  5777 ms  0x7024 symkey:0x7f8eeb238f00
  5777 ms  0x7024 PK11_Encrypt()
  5777 ms  0x7024 symkey:0x7f8eeb238f00
  5778 ms  0x7024 PK11_Encrypt()
  5778 ms  0x7024 symkey:0x7f8eeb238f00
  5778 ms  0x7024 PK11_Encrypt()
  5778 ms  0x7024 symkey:0x7f8eeb238f00
  5780 ms  0x7024 PK11_Encrypt()
  5780 ms  0x7024 symkey:0x7f8eeb238f00
  5780 ms  0x7024 PK11_Encrypt()
  5780 ms  0x7024 symkey:0x7f8eeb238f00
  5781 ms  0x7024 PK11_Encrypt()
  5781 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
  5782 ms  0x7024 PK11_Encrypt()
  5782 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  5788 ms  0x702c PR_Close()
  5788 ms  0x702c fd:0x7f8ed0347940
           /* TID 0x7024 */
  5790 ms  0x7024 PK11_Encrypt()
  5790 ms  0x7024 symkey:0x7f8eeb238f00
  5791 ms  0x7024 PK11_Encrypt()
  5791 ms  0x7024 symkey:0x7f8eeb238f00
  5791 ms  0x7024 PK11_Encrypt()
  5791 ms  0x7024 symkey:0x7f8eeb238f00
  5792 ms  0x7024 PK11_Encrypt()
  5792 ms  0x7024 symkey:0x7f8eeb238f00
  5795 ms  0x7024 SECKEY_CreateECPrivateKey()
  5795 ms  0x7024 cx:0x7f8ed0409288
  5795 ms     | 0x7024 EC_ValidatePublicKey()
  5795 ms     | 0x7024 ret:0x0
  5795 ms  0x7024 ret:0x7f8ef1109020::7f8ef1109020  10 75 4a d0                                      .uJ.
  5795 ms  0x7024 SECKEY_CreateECPrivateKey()
  5795 ms  0x7024 cx:0x7f8ed0409288
  5796 ms     | 0x7024 EC_ValidatePublicKey()
           /* TID 0x702c */
  5802 ms  0x702c PR_Close()
  5802 ms  0x702c fd:0x7f8ed0347eb0
           /* TID 0x7024 */
  5805 ms     | 0x7024 ret:0x0
  5805 ms  0x7024 ret:0x7f8ed006d020::7f8ed006d020  a0 bb 1e d0                                      ....
  5806 ms  0x7024 SECKEY_CreateECPrivateKey()
  5806 ms  0x7024 cx:0x7f8ed04095c8
  5807 ms     | 0x7024 EC_ValidatePublicKey()
  5807 ms     | 0x7024 ret:0x0
  5807 ms  0x7024 ret:0x7f8ed006f820::7f8ed006f820  70 be 1e d0                                      p...
  5807 ms  0x7024 SECKEY_CreateECPrivateKey()
  5807 ms  0x7024 cx:0x7f8ed04095c8
  5811 ms     | 0x7024 EC_ValidatePublicKey()
  5813 ms     | 0x7024 ret:0x0
  5813 ms  0x7024 ret:0x7f8ed0071820::7f8ed0071820  30 53 3a d0                                      0S:.
  5817 ms  0x7024 SECKEY_CreateECPrivateKey()
  5817 ms  0x7024 cx:0x7f8ed0409768
  5818 ms     | 0x7024 EC_ValidatePublicKey()
  5818 ms     | 0x7024 ret:0x0
  5818 ms  0x7024 ret:0x7f8ed0074820::7f8ed0074820  80 73 4a d0                                      .sJ.
  5818 ms  0x7024 SECKEY_CreateECPrivateKey()
  5818 ms  0x7024 cx:0x7f8ed0409768
  5819 ms     | 0x7024 EC_ValidatePublicKey()
  5820 ms     | 0x7024 ret:0x0
  5820 ms  0x7024 ret:0x7f8ed0076820::7f8ed0076820  40 7c 4a d0                                      @|J.
  5826 ms  0x7024 SSL_ImportFD()
  5826 ms  0x7024 ret:0x7f8ed0379ac0
  5826 ms  0x7024 SSL_AuthCertificateHook()
  5826 ms  0x7024 fd:0x7f8ed0379ac0
  5826 ms  0x7024 ret:0x0
  5827 ms  0x7024 PK11_Encrypt()
  5827 ms  0x7024 symkey:0x7f8eeb238f00
  5827 ms  0x7024 PR_Connect()
  5827 ms  0x7024 fd:0x7f8ed0379ac0
  5827 ms  0x7024 PK11_Encrypt()
  5827 ms  0x7024 symkey:0x7f8eeb238f00
  5828 ms  0x7024 PK11_Encrypt()
  5828 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  5829 ms  0x702c PR_Close()
  5829 ms  0x702c fd:0x7f8ed02e28e0
           /* TID 0x7024 */
  5829 ms  0x7024 SSL_ImportFD()
  5829 ms  0x7024 ret:0x7f8ed0347940
  5829 ms  0x7024 SSL_AuthCertificateHook()
  5829 ms  0x7024 fd:0x7f8ed0347940
  5829 ms  0x7024 ret:0x0
  5829 ms  0x7024 PK11_Encrypt()
  5829 ms  0x7024 symkey:0x7f8eeb238f00
  5830 ms  0x7024 PR_Connect()
  5830 ms  0x7024 fd:0x7f8ed0347940
           /* TID 0x702c */
  5830 ms  0x702c PR_Close()
  5830 ms  0x702c fd:0x7f8ed01309d0
  5831 ms  0x702c PR_Close()
  5831 ms  0x702c fd:0x7f8ed01309d0
  5833 ms  0x702c PR_Close()
  5833 ms  0x702c fd:0x7f8ed01309d0
  5834 ms  0x702c PR_Close()
  5834 ms  0x702c fd:0x7f8ed01309d0
  5835 ms  0x702c PR_Close()
  5835 ms  0x702c fd:0x7f8ed01309d0
  5835 ms  0x702c PR_Close()
  5835 ms  0x702c fd:0x7f8ed01309d0
  5838 ms  0x702c PR_Close()
  5838 ms  0x702c fd:0x7f8ed02e28e0
  5838 ms  0x702c PR_Close()
  5838 ms  0x702c fd:0x7f8ed02e2820
  5839 ms  0x702c PR_Close()
  5839 ms  0x702c fd:0x7f8ed0130dc0
  5840 ms  0x702c PR_Close()
  5840 ms  0x702c fd:0x7f8ed0130dc0
  5841 ms  0x702c PR_Close()
  5841 ms  0x702c fd:0x7f8ed0130dc0
  5843 ms  0x702c PR_Close()
  5843 ms  0x702c fd:0x7f8ed0130dc0
           /* TID 0x707f */
  5844 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5844 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5844 ms  SECKEY_ECParamsToKeySize()
  5844 ms  0x7024 ret:0xff
  5844 ms  0x7024 SECKEY_CreateECPrivateKey()
  5844 ms  0x7024 cx:0x7f8ed0409288
  5849 ms     | 0x7024 EC_ValidatePublicKey()
  5849 ms     | 0x7024 ret:0x0
  5849 ms  0x7024 ret:0x7f8ed007e020::7f8ed007e020  10 85 0c d0                                      ....
  5849 ms  0x7024 PK11_PubDeriveWithKDF()
  5849 ms  0x7024 seckey:0x7f8ed007e020
  5849 ms     | 0x7024 EC_ValidatePublicKey()
  5849 ms     | 0x7024 ret:0x0
  5849 ms  0x7024 ret:0x7f8ee30bdb00
  5849 ms  0x7024 PK11_DeriveWithFlags()
  5849 ms  0x7024 basekey:0x7f8ee30bdb00
  5849 ms     | 0x7024 PK11_DeriveWithTemplate()
  5850 ms  0x7024 ret:0x7f8ed00dd380
  5850 ms  0x7024 PK11_Derive()
  5850 ms  0x7024 basekey:0x7f8ed00dd380
  5850 ms     | 0x7024 PK11_DeriveWithTemplate()
  5850 ms  0x7024 ret:0x7f8ed00dd400
  5850 ms  0x7024 SECKEY_DestroyPrivateKey()
  5850 ms  0x7024 privk:0x7f8ed007e020::7f8ed007e020  10 85 0c d0                                      ....
  5850 ms  0x7024 privk:0x7f8ed007e020::7f8ed007e020  e5 e5 e5 e5                                      ....
  5850 ms  0x7024 PK11_Encrypt()
  5850 ms  0x7024 symkey:0x7f8ed00dd580
  5850 ms  0x7024 SECKEY_CreateECPrivateKey()
  5850 ms  0x7024 cx:0x7f8ed0409908
  5850 ms     | 0x7024 EC_ValidatePublicKey()
  5850 ms     | 0x7024 ret:0x0
  5850 ms  0x7024 ret:0x7f8ed007e020::7f8ed007e020  c0 84 0c d0                                      ....
  5850 ms  0x7024 SECKEY_CreateECPrivateKey()
  5850 ms  0x7024 cx:0x7f8ed0409908
  5851 ms     | 0x7024 EC_ValidatePublicKey()
           /* TID 0x702c */
  5853 ms  0x702c PR_Close()
  5853 ms  0x702c fd:0x7f8ed0362700
  5853 ms  0x702c PR_Close()
  5853 ms  0x702c fd:0x7f8ed01304c0
  5854 ms  0x702c PR_Close()
  5854 ms  0x702c fd:0x7f8ed01304c0
           /* TID 0x7024 */
  5856 ms     | 0x7024 ret:0x0
  5856 ms  0x7024 ret:0x7f8ed0080020::7f8ed0080020  a0 81 0c d0                                      ....
  5857 ms  0x7024 SECKEY_CreateECPrivateKey()
  5857 ms  0x7024 cx:0x7f8ed0409f88
  5858 ms     | 0x7024 EC_ValidatePublicKey()
  5858 ms     | 0x7024 ret:0x0
  5858 ms  0x7024 ret:0x7f8ed0083020::7f8ed0083020  e0 82 0c d0                                      ....
  5858 ms  0x7024 SECKEY_CreateECPrivateKey()
  5858 ms  0x7024 cx:0x7f8ed0409f88
  5861 ms     | 0x7024 EC_ValidatePublicKey()
  5862 ms     | 0x7024 ret:0x0
  5862 ms  0x7024 ret:0x7f8ed0085020::7f8ed0085020  e0 87 0c d0                                      ....
  5867 ms  0x7024 SECKEY_CreateECPrivateKey()
  5867 ms  0x7024 cx:0x7f8ed0409de8
  5867 ms     | 0x7024 EC_ValidatePublicKey()
  5867 ms     | 0x7024 ret:0x0
  5867 ms  0x7024 ret:0x7f8ed0088020::7f8ed0088020  70 89 0c d0                                      p...
  5867 ms  0x7024 SECKEY_CreateECPrivateKey()
  5867 ms  0x7024 cx:0x7f8ed0409de8
  5868 ms     | 0x7024 EC_ValidatePublicKey()
  5869 ms     | 0x7024 ret:0x0
  5869 ms  0x7024 ret:0x7f8ed03dc020::7f8ed03dc020  50 8b 0c d0                                      P...
  5878 ms  0x7024 SECKEY_CreateECPrivateKey()
  5878 ms  0x7024 cx:0x7f8ed0409c48
  5878 ms     | 0x7024 EC_ValidatePublicKey()
  5878 ms     | 0x7024 ret:0x0
  5878 ms  0x7024 ret:0x7f8ed044f020::7f8ed044f020  c0 8e 0c d0                                      ....
  5878 ms  0x7024 SECKEY_CreateECPrivateKey()
  5878 ms  0x7024 cx:0x7f8ed0409c48
  5879 ms     | 0x7024 EC_ValidatePublicKey()
  5880 ms     | 0x7024 ret:0x0
  5880 ms  0x7024 ret:0x7f8ed0451820::7f8ed0451820  60 0f 14 d0                                      `...
  5888 ms  0x7024 SECKEY_CreateECPrivateKey()
  5888 ms  0x7024 cx:0x7f8ed0409aa8
  5889 ms     | 0x7024 EC_ValidatePublicKey()
  5889 ms     | 0x7024 ret:0x0
  5889 ms  0x7024 ret:0x7f8ed0455020::7f8ed0455020  80 bd 1e d0                                      ....
  5889 ms  0x7024 SECKEY_CreateECPrivateKey()
  5889 ms  0x7024 cx:0x7f8ed0409aa8
  5890 ms     | 0x7024 EC_ValidatePublicKey()
  5896 ms     | 0x7024 ret:0x0
  5896 ms  0x7024 ret:0x7f8ed0468820::7f8ed0468820  f0 76 4a d0                                      .vJ.
  5897 ms  0x7024 SSL_AuthCertificateComplete()
  5897 ms  0x7024 fd:0x7f8ed0379d30
  5897 ms  0x7024 err:0x0
  5897 ms  0x7024 PK11_Encrypt()
  5897 ms  0x7024 symkey:0x7f8eeb238f00
  5898 ms  0x7024 PK11_Encrypt()
  5898 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  5901 ms  0x702c PR_Close()
  5901 ms  0x702c fd:0x7f8ed0347610
           /* TID 0x7024 */
  5902 ms  0x7024 PK11_Encrypt()
  5902 ms  0x7024 symkey:0x7f8ed00dd580
           /* TID 0x707f */
  5903 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5903 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5903 ms  SECKEY_ECParamsToKeySize()
  5903 ms  0x7024 ret:0xff
  5903 ms  0x7024 SECKEY_CreateECPrivateKey()
  5903 ms  0x7024 cx:0x7f8ed04095c8
  5904 ms     | 0x7024 EC_ValidatePublicKey()
  5904 ms     | 0x7024 ret:0x0
  5904 ms  0x7024 ret:0x7f8ecfeb9820::7f8ecfeb9820  c0 7e 4a d0                                      .~J.
  5904 ms  0x7024 PK11_PubDeriveWithKDF()
  5904 ms  0x7024 seckey:0x7f8ecfeb9820
  5904 ms     | 0x7024 EC_ValidatePublicKey()
  5904 ms     | 0x7024 ret:0x0
  5904 ms  0x7024 ret:0x7f8ee30bdb00
  5909 ms  0x7024 PK11_DeriveWithFlags()
  5909 ms  0x7024 basekey:0x7f8ee30bdb00
  5909 ms     | 0x7024 PK11_DeriveWithTemplate()
  5909 ms  0x7024 ret:0x7f8ed00ddc00
  5909 ms  0x7024 PK11_Derive()
  5909 ms  0x7024 basekey:0x7f8ed00ddc00
  5909 ms     | 0x7024 PK11_DeriveWithTemplate()
  5909 ms  0x7024 ret:0x7f8ed00ddc80
  5909 ms  0x7024 SECKEY_DestroyPrivateKey()
  5909 ms  0x7024 privk:0x7f8ecfeb9820::7f8ecfeb9820  c0 7e 4a d0                                      .~J.
  5909 ms  0x7024 privk:0x7f8ecfeb9820::7f8ecfeb9820  e5 e5 e5 e5                                      ....
  5909 ms  0x7024 PK11_Encrypt()
  5909 ms  0x7024 symkey:0x7f8ed00dde00
           /* TID 0x707f */
  5911 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5911 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5912 ms  SECKEY_ECParamsToKeySize()
  5912 ms  0x7024 ret:0xff
  5912 ms  0x7024 SECKEY_CreateECPrivateKey()
  5912 ms  0x7024 cx:0x7f8ed0409768
  5912 ms     | 0x7024 EC_ValidatePublicKey()
  5912 ms     | 0x7024 ret:0x0
  5912 ms  0x7024 ret:0x7f8ecfeba820::7f8ecfeba820  60 7f 4a d0                                      `.J.
  5912 ms  0x7024 PK11_PubDeriveWithKDF()
  5912 ms  0x7024 seckey:0x7f8ecfeba820
  5912 ms     | 0x7024 EC_ValidatePublicKey()
  5912 ms     | 0x7024 ret:0x0
  5913 ms  0x7024 ret:0x7f8ee30bdb00
  5913 ms  0x7024 PK11_DeriveWithFlags()
  5913 ms  0x7024 basekey:0x7f8ee30bdb00
  5913 ms     | 0x7024 PK11_DeriveWithTemplate()
  5913 ms  0x7024 ret:0x7f8ed00ddf00
  5913 ms  0x7024 PK11_Derive()
  5913 ms  0x7024 basekey:0x7f8ed00ddf00
  5913 ms     | 0x7024 PK11_DeriveWithTemplate()
  5913 ms  0x7024 ret:0x7f8ed00ddf80
  5913 ms  0x7024 SECKEY_DestroyPrivateKey()
  5913 ms  0x7024 privk:0x7f8ecfeba820::7f8ecfeba820  60 7f 4a d0                                      `.J.
  5913 ms  0x7024 privk:0x7f8ecfeba820::7f8ecfeba820  e5 e5 e5 e5                                      ....
  5913 ms  0x7024 PK11_Encrypt()
  5913 ms  0x7024 symkey:0x7f8ed00de100
           /* TID 0x707f */
  5916 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5916 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5916 ms  SECKEY_ECParamsToKeySize()
  5916 ms  0x7024 ret:0xff
  5916 ms  0x7024 SECKEY_CreateECPrivateKey()
  5916 ms  0x7024 cx:0x7f8ed0409908
  5916 ms     | 0x7024 EC_ValidatePublicKey()
  5916 ms     | 0x7024 ret:0x0
  5916 ms  0x7024 ret:0x7f8ecfebb820::7f8ecfebb820  60 30 4c d0                                      `0L.
  5916 ms  0x7024 PK11_PubDeriveWithKDF()
  5916 ms  0x7024 seckey:0x7f8ecfebb820
  5916 ms     | 0x7024 EC_ValidatePublicKey()
  5916 ms     | 0x7024 ret:0x0
  5917 ms  0x7024 ret:0x7f8ee30bdb00
  5917 ms  0x7024 PK11_DeriveWithFlags()
  5917 ms  0x7024 basekey:0x7f8ee30bdb00
  5917 ms     | 0x7024 PK11_DeriveWithTemplate()
  5917 ms  0x7024 ret:0x7f8ed00de200
  5917 ms  0x7024 PK11_Derive()
  5917 ms  0x7024 basekey:0x7f8ed00de200
  5917 ms     | 0x7024 PK11_DeriveWithTemplate()
  5917 ms  0x7024 ret:0x7f8ed00de280
  5917 ms  0x7024 SECKEY_DestroyPrivateKey()
  5917 ms  0x7024 privk:0x7f8ecfebb820::7f8ecfebb820  60 30 4c d0                                      `0L.
  5917 ms  0x7024 privk:0x7f8ecfebb820::7f8ecfebb820  e5 e5 e5 e5                                      ....
  5917 ms  0x7024 PK11_Encrypt()
  5917 ms  0x7024 symkey:0x7f8ed00de400
           /* TID 0x707f */
  5924 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5924 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5924 ms  SECKEY_ECParamsToKeySize()
  5924 ms  0x7024 ret:0xff
  5924 ms  0x7024 SECKEY_CreateECPrivateKey()
  5924 ms  0x7024 cx:0x7f8ed0409f88
  5925 ms     | 0x7024 EC_ValidatePublicKey()
  5925 ms     | 0x7024 ret:0x0
  5925 ms  0x7024 ret:0x7f8ecfebc820::7f8ecfebc820  a0 31 4c d0                                      .1L.
  5925 ms  0x7024 PK11_PubDeriveWithKDF()
  5925 ms  0x7024 seckey:0x7f8ecfebc820
  5925 ms     | 0x7024 EC_ValidatePublicKey()
  5925 ms     | 0x7024 ret:0x0
  5925 ms  0x7024 ret:0x7f8ee30bdb00
  5925 ms  0x7024 PK11_DeriveWithFlags()
  5925 ms  0x7024 basekey:0x7f8ee30bdb00
  5925 ms     | 0x7024 PK11_DeriveWithTemplate()
  5925 ms  0x7024 ret:0x7f8ed00de500
  5926 ms  0x7024 PK11_Derive()
  5926 ms  0x7024 basekey:0x7f8ed00de500
  5926 ms     | 0x7024 PK11_DeriveWithTemplate()
  5926 ms  0x7024 ret:0x7f8ed00de580
  5926 ms  0x7024 SECKEY_DestroyPrivateKey()
  5926 ms  0x7024 privk:0x7f8ecfebc820::7f8ecfebc820  a0 31 4c d0                                      .1L.
  5926 ms  0x7024 privk:0x7f8ecfebc820::7f8ecfebc820  e5 e5 e5 e5                                      ....
  5927 ms  0x7024 PK11_Encrypt()
  5927 ms  0x7024 symkey:0x7f8ed00de700
           /* TID 0x707f */
  5927 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5927 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5928 ms  SECKEY_ECParamsToKeySize()
  5928 ms  0x7024 ret:0xff
  5928 ms  0x7024 SECKEY_CreateECPrivateKey()
  5928 ms  0x7024 cx:0x7f8ed0409de8
  5928 ms     | 0x7024 EC_ValidatePublicKey()
  5928 ms     | 0x7024 ret:0x0
  5928 ms  0x7024 ret:0x7f8ecfebd820::7f8ecfebd820  90 32 4c d0                                      .2L.
  5928 ms  0x7024 PK11_PubDeriveWithKDF()
  5928 ms  0x7024 seckey:0x7f8ecfebd820
  5928 ms     | 0x7024 EC_ValidatePublicKey()
  5928 ms     | 0x7024 ret:0x0
  5929 ms  0x7024 ret:0x7f8ee30bdb00
  5929 ms  0x7024 PK11_DeriveWithFlags()
  5929 ms  0x7024 basekey:0x7f8ee30bdb00
  5929 ms     | 0x7024 PK11_DeriveWithTemplate()
  5929 ms  0x7024 ret:0x7f8ed00de800
  5929 ms  0x7024 PK11_Derive()
  5929 ms  0x7024 basekey:0x7f8ed00de800
  5929 ms     | 0x7024 PK11_DeriveWithTemplate()
  5929 ms  0x7024 ret:0x7f8ed00de880
  5929 ms  0x7024 SECKEY_DestroyPrivateKey()
  5929 ms  0x7024 privk:0x7f8ecfebd820::7f8ecfebd820  90 32 4c d0                                      .2L.
  5929 ms  0x7024 privk:0x7f8ecfebd820::7f8ecfebd820  e5 e5 e5 e5                                      ....
  5929 ms  0x7024 PK11_Encrypt()
  5929 ms  0x7024 symkey:0x7f8ed00dea00
  5936 ms  0x7024 SSL_AuthCertificateComplete()
  5936 ms  0x7024 fd:0x7f8ed0379f70
  5936 ms  0x7024 err:0x0
  5936 ms  0x7024 SSL_AuthCertificateComplete()
  5936 ms  0x7024 fd:0x7f8ed0487100
  5936 ms  0x7024 err:0x0
  5936 ms  0x7024 SSL_AuthCertificateComplete()
  5936 ms  0x7024 fd:0x7f8ed0362880
  5936 ms  0x7024 err:0x0
  5936 ms  0x7024 SSL_AuthCertificateComplete()
  5936 ms  0x7024 fd:0x7f8ed0362fd0
  5936 ms  0x7024 err:0x0
  5936 ms  0x7024 SSL_AuthCertificateComplete()
  5936 ms  0x7024 fd:0x7f8ed0362f70
  5936 ms  0x7024 err:0x0
           /* TID 0x702c */
  5937 ms  0x702c PR_Close()
  5937 ms  0x702c fd:0x7f8ed0347bb0
  5938 ms  0x702c PR_Close()
  5938 ms  0x702c fd:0x7f8ed02e2a30
  5940 ms  0x702c PR_Close()
  5940 ms  0x702c fd:0x7f8ed02e2a30
  5940 ms  0x702c PR_Close()
  5940 ms  0x702c fd:0x7f8ed02e2a30
  5941 ms  0x702c PR_Close()
  5941 ms  0x702c fd:0x7f8ed02e2a30
  5943 ms  0x702c PR_Close()
  5943 ms  0x702c fd:0x7f8ed02e2a30
  5944 ms  0x702c PR_Close()
  5944 ms  0x702c fd:0x7f8ed02e2a30
           /* TID 0x7024 */
  5944 ms  0x7024 PK11_Encrypt()
  5944 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  5945 ms  0x702c PR_Close()
  5945 ms  0x702c fd:0x7f8ed02e2a30
  5945 ms  0x702c PR_Close()
  5945 ms  0x702c fd:0x7f8ed02e2a30
           /* TID 0x7024 */
  5948 ms  0x7024 SECKEY_DestroyPrivateKey()
  5948 ms  0x7024 privk:0x7f8ed006d020::7f8ed006d020  a0 bb 1e d0                                      ....
           /* TID 0x702c */
  5951 ms  0x702c PR_Close()
  5951 ms  0x702c fd:0x7f8ed02e2a60
  5951 ms  0x702c PR_Close()
  5951 ms  0x702c fd:0x7f8ed02e2a60
           /* TID 0x7024 */
  5951 ms  0x7024 privk:0x7f8ed006d020::7f8ed006d020  e5 e5 e5 e5                                      ....
  5951 ms  0x7024 SECKEY_DestroyPrivateKey()
  5951 ms  0x7024 privk:0x7f8ef1109020::7f8ef1109020  10 75 4a d0                                      .uJ.
  5952 ms  0x7024 privk:0x7f8ef1109020::7f8ef1109020  e5 e5 e5 e5                                      ....
           /* TID 0x702c */
  5952 ms  0x702c PR_Close()
  5952 ms  0x702c fd:0x7f8ed02e2a90
           /* TID 0x7024 */
  5952 ms  0x7024 PK11_Encrypt()
  5952 ms  0x7024 symkey:0x7f8ed00dde00
  5957 ms  0x7024 PK11_Encrypt()
  5957 ms  0x7024 symkey:0x7f8ed00de100
  5958 ms  0x7024 PK11_Encrypt()
  5958 ms  0x7024 symkey:0x7f8ed00de400
  5958 ms  0x7024 PK11_Encrypt()
  5958 ms  0x7024 symkey:0x7f8ed00de700
  5960 ms  0x7024 PK11_Encrypt()
  5960 ms  0x7024 symkey:0x7f8ed00dea00
           /* TID 0x707f */
  5961 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5961 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5961 ms  SECKEY_ECParamsToKeySize()
  5961 ms  0x7024 ret:0xff
  5961 ms  0x7024 SECKEY_CreateECPrivateKey()
  5961 ms  0x7024 cx:0x7f8ed0409c48
  5962 ms     | 0x7024 EC_ValidatePublicKey()
  5962 ms     | 0x7024 ret:0x0
  5962 ms  0x7024 ret:0x7f8ecfec3820::7f8ecfec3820  50 5b 3a d0                                      P[:.
  5962 ms  0x7024 PK11_PubDeriveWithKDF()
  5962 ms  0x7024 seckey:0x7f8ecfec3820
  5962 ms     | 0x7024 EC_ValidatePublicKey()
  5962 ms     | 0x7024 ret:0x0
  5962 ms  0x7024 ret:0x7f8ee30bdb00
  5962 ms  0x7024 PK11_DeriveWithFlags()
  5962 ms  0x7024 basekey:0x7f8ee30bdb00
  5962 ms     | 0x7024 PK11_DeriveWithTemplate()
  5962 ms  0x7024 ret:0x7f8ed0492a00
  5962 ms  0x7024 PK11_Derive()
  5962 ms  0x7024 basekey:0x7f8ed0492a00
  5962 ms     | 0x7024 PK11_DeriveWithTemplate()
  5962 ms  0x7024 ret:0x7f8ed0492a80
  5962 ms  0x7024 SECKEY_DestroyPrivateKey()
  5962 ms  0x7024 privk:0x7f8ecfec3820::7f8ecfec3820  50 5b 3a d0                                      P[:.
  5962 ms  0x7024 privk:0x7f8ecfec3820::7f8ecfec3820  e5 e5 e5 e5                                      ....
  5963 ms  0x7024 PK11_Encrypt()
  5963 ms  0x7024 symkey:0x7f8ed0492c00
           /* TID 0x707f */
  5966 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5967 ms  0x707f ret:0x0
           /* TID 0x7024 */
  5967 ms  SECKEY_ECParamsToKeySize()
  5967 ms  0x7024 ret:0xff
  5967 ms  0x7024 SECKEY_CreateECPrivateKey()
  5967 ms  0x7024 cx:0x7f8ed0409aa8
  5967 ms     | 0x7024 EC_ValidatePublicKey()
  5967 ms     | 0x7024 ret:0x0
  5967 ms  0x7024 ret:0x7f8ecfec4820::7f8ecfec4820  c0 74 4a d0                                      .tJ.
  5967 ms  0x7024 PK11_PubDeriveWithKDF()
  5967 ms  0x7024 seckey:0x7f8ecfec4820
  5967 ms     | 0x7024 EC_ValidatePublicKey()
  5967 ms     | 0x7024 ret:0x0
  5968 ms  0x7024 ret:0x7f8ee30bdb00
  5968 ms  0x7024 PK11_DeriveWithFlags()
  5968 ms  0x7024 basekey:0x7f8ee30bdb00
  5968 ms     | 0x7024 PK11_DeriveWithTemplate()
  5968 ms  0x7024 ret:0x7f8ed0492d80
  5968 ms  0x7024 PK11_Derive()
  5968 ms  0x7024 basekey:0x7f8ed0492d80
  5968 ms     | 0x7024 PK11_DeriveWithTemplate()
  5968 ms  0x7024 ret:0x7f8ed0492f80
  5968 ms  0x7024 SECKEY_DestroyPrivateKey()
  5968 ms  0x7024 privk:0x7f8ecfec4820::7f8ecfec4820  c0 74 4a d0                                      .tJ.
  5968 ms  0x7024 privk:0x7f8ecfec4820::7f8ecfec4820  e5 e5 e5 e5                                      ....
  5968 ms  0x7024 PK11_Encrypt()
  5968 ms  0x7024 symkey:0x7f8ed0493280
  5985 ms  0x7024 SECKEY_CreateECPrivateKey()
  5985 ms  0x7024 cx:0x7f8ed040a128
  5986 ms     | 0x7024 EC_ValidatePublicKey()
  5986 ms     | 0x7024 ret:0x0
  5986 ms  0x7024 ret:0x7f8ecfec4820::7f8ecfec4820  70 74 4a d0                                      ptJ.
  5986 ms  0x7024 SECKEY_CreateECPrivateKey()
  5986 ms  0x7024 cx:0x7f8ed040a128
  5987 ms     | 0x7024 EC_ValidatePublicKey()
  5988 ms     | 0x7024 ret:0x0
  5988 ms  0x7024 ret:0x7f8ecfec6820::7f8ecfec6820  90 77 4a d0                                      .wJ.
  5989 ms  0x7024 SECKEY_CreateECPrivateKey()
  5989 ms  0x7024 cx:0x7f8ed040a7a8
  5989 ms     | 0x7024 EC_ValidatePublicKey()
  5989 ms     | 0x7024 ret:0x0
  5989 ms  0x7024 ret:0x7f8ecfec9020::7f8ecfec9020  d0 78 4a d0                                      .xJ.
  5989 ms  0x7024 SECKEY_CreateECPrivateKey()
  5989 ms  0x7024 cx:0x7f8ed040a7a8
  5990 ms     | 0x7024 EC_ValidatePublicKey()
  5991 ms     | 0x7024 ret:0x0
  5991 ms  0x7024 ret:0x7f8ecfecb020::7f8ecfecb020  a0 7b 4a d0                                      .{J.
  5996 ms  0x7024 PR_Close()
  5996 ms  0x7024 fd:0x7f8ed0379d30
  5996 ms     | 0x7024 PK11_Encrypt()
  5996 ms     | 0x7024 symkey:0x7f8ed00dd580
  5997 ms  0x7024 SSL_AuthCertificateComplete()
  5997 ms  0x7024 fd:0x7f8ed0347a30
  5997 ms  0x7024 err:0x0
  5997 ms  0x7024 SSL_AuthCertificateComplete()
  5997 ms  0x7024 fd:0x7f8ed0362e20
  5997 ms  0x7024 err:0x0
           /* TID 0x702c */
  5998 ms  0x702c PR_Close()
  5998 ms  0x702c fd:0x7f8ed02e2a60
  6000 ms  0x702c PR_Close()
  6000 ms  0x702c fd:0x7f8ed02e2a60
  6001 ms  0x702c PR_Close()
  6001 ms  0x702c fd:0x7f8ed0130820
           /* TID 0x7024 */
  6003 ms  0x7024 PK11_Encrypt()
  6003 ms  0x7024 symkey:0x7f8eeb238f00
  6003 ms  0x7024 PK11_Encrypt()
  6003 ms  0x7024 symkey:0x7f8eeb238f00
  6003 ms  0x7024 PK11_Encrypt()
  6003 ms  0x7024 symkey:0x7f8eeb238f00
  6003 ms  0x7024 PK11_Encrypt()
  6003 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
  6004 ms  0x7024 PK11_Encrypt()
  6004 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  6004 ms  0x702c PR_Close()
  6004 ms  0x702c fd:0x7f8ed0130820
  6005 ms  0x702c PR_Close()
  6005 ms  0x702c fd:0x7f8ed0130820
  6005 ms  0x702c PR_Close()
  6005 ms  0x702c fd:0x7f8ed0130820
  6006 ms  0x702c PR_Close()
  6006 ms  0x702c fd:0x7f8ed0130820
  6007 ms  0x702c PR_Close()
  6007 ms  0x702c fd:0x7f8ed0130820
  6008 ms  0x702c PR_Close()
  6008 ms  0x702c fd:0x7f8ed0130820
  6008 ms  0x702c PR_Close()
  6008 ms  0x702c fd:0x7f8ed0130820
  6018 ms  0x702c PR_Close()
  6018 ms  0x702c fd:0x7f8ed0130820
  6019 ms  0x702c PR_Close()
  6019 ms  0x702c fd:0x7f8ed0130820
  6020 ms  0x702c PR_Close()
  6020 ms  0x702c fd:0x7f8ed0130820
           /* TID 0x7024 */
  6020 ms  0x7024 SECKEY_DestroyPrivateKey()
  6020 ms  0x7024 privk:0x7f8ed0071820::7f8ed0071820  30 53 3a d0                                      0S:.
  6020 ms  0x7024 privk:0x7f8ed0071820::7f8ed0071820  e5 e5 e5 e5                                      ....
  6020 ms  0x7024 SECKEY_DestroyPrivateKey()
  6020 ms  0x7024 privk:0x7f8ed006f820::7f8ed006f820  70 be 1e d0                                      p...
  6020 ms  0x7024 privk:0x7f8ed006f820::7f8ed006f820  e5 e5 e5 e5                                      ....
  6021 ms  0x7024 SECKEY_DestroyPrivateKey()
  6021 ms  0x7024 privk:0x7f8ed0076820::7f8ed0076820  40 7c 4a d0                                      @|J.
  6021 ms  0x7024 privk:0x7f8ed0076820::7f8ed0076820  e5 e5 e5 e5                                      ....
  6021 ms  0x7024 SECKEY_DestroyPrivateKey()
  6021 ms  0x7024 privk:0x7f8ed0074820::7f8ed0074820  80 73 4a d0                                      .sJ.
  6021 ms  0x7024 privk:0x7f8ed0074820::7f8ed0074820  e5 e5 e5 e5                                      ....
  6021 ms  0x7024 SECKEY_DestroyPrivateKey()
  6021 ms  0x7024 privk:0x7f8ed0080020::7f8ed0080020  a0 81 0c d0                                      ....
  6021 ms  0x7024 privk:0x7f8ed0080020::7f8ed0080020  e5 e5 e5 e5                                      ....
  6021 ms  0x7024 SECKEY_DestroyPrivateKey()
  6021 ms  0x7024 privk:0x7f8ed007e020::7f8ed007e020  c0 84 0c d0                                      ....
           /* TID 0x702c */
  6026 ms  0x702c PR_Close()
  6026 ms  0x702c fd:0x7f8ed0130820
  6026 ms  0x702c PR_Close()
  6026 ms  0x702c fd:0x7f8ed0130820
           /* TID 0x7024 */
  6026 ms  0x7024 privk:0x7f8ed007e020::7f8ed007e020  e5 e5 e5 e5                                      ....
  6026 ms  0x7024 SECKEY_DestroyPrivateKey()
  6026 ms  0x7024 privk:0x7f8ed0085020::7f8ed0085020  e0 87 0c d0                                      ....
  6026 ms  0x7024 privk:0x7f8ed0085020::7f8ed0085020  e5 e5 e5 e5                                      ....
  6026 ms  0x7024 SECKEY_DestroyPrivateKey()
  6026 ms  0x7024 privk:0x7f8ed0083020::7f8ed0083020  e0 82 0c d0                                      ....
  6026 ms  0x7024 privk:0x7f8ed0083020::7f8ed0083020  e5 e5 e5 e5                                      ....
  6027 ms  0x7024 SECKEY_DestroyPrivateKey()
  6027 ms  0x7024 privk:0x7f8ed03dc020::7f8ed03dc020  50 8b 0c d0                                      P...
  6027 ms  0x7024 privk:0x7f8ed03dc020::7f8ed03dc020  e5 e5 e5 e5                                      ....
  6027 ms  0x7024 SECKEY_DestroyPrivateKey()
  6027 ms  0x7024 privk:0x7f8ed0088020::7f8ed0088020  70 89 0c d0                                      p...
  6027 ms  0x7024 privk:0x7f8ed0088020::7f8ed0088020  e5 e5 e5 e5                                      ....
  6027 ms  0x7024 PK11_Encrypt()
  6027 ms  0x7024 symkey:0x7f8ed0492c00
  6027 ms  0x7024 PK11_Encrypt()
  6027 ms  0x7024 symkey:0x7f8ed0493280
  6028 ms  0x7024 PR_Close()
  6028 ms  0x7024 fd:0x7f8ed0362f70
  6028 ms     | 0x7024 PK11_Encrypt()
  6028 ms     | 0x7024 symkey:0x7f8ed00dea00
  6028 ms  0x7024 PR_Close()
  6028 ms  0x7024 fd:0x7f8ed0362fd0
  6028 ms     | 0x7024 PK11_Encrypt()
  6028 ms     | 0x7024 symkey:0x7f8ed00de700
  6028 ms  0x7024 PR_Close()
  6028 ms  0x7024 fd:0x7f8ed0362880
  6028 ms     | 0x7024 PK11_Encrypt()
  6028 ms     | 0x7024 symkey:0x7f8ed00de400
  6029 ms  0x7024 PR_Close()
  6029 ms  0x7024 fd:0x7f8ed0487100
  6029 ms     | 0x7024 PK11_Encrypt()
  6029 ms     | 0x7024 symkey:0x7f8ed00de100
  6029 ms  0x7024 PR_Close()
  6029 ms  0x7024 fd:0x7f8ed0379f70
  6029 ms     | 0x7024 PK11_Encrypt()
  6029 ms     | 0x7024 symkey:0x7f8ed00dde00
           /* TID 0x702c */
  6032 ms  0x702c PR_Close()
  6032 ms  0x702c fd:0x7f8ed01304c0
  6033 ms  0x702c PR_Close()
  6033 ms  0x702c fd:0x7f8ed01304c0
           /* TID 0x707f */
  6034 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6034 ms  0x707f ret:0x0
           /* TID 0x7024 */
  6034 ms  SECKEY_ECParamsToKeySize()
  6034 ms  0x7024 ret:0xff
  6034 ms  0x7024 SECKEY_CreateECPrivateKey()
  6034 ms  0x7024 cx:0x7f8ed040a7a8
  6035 ms     | 0x7024 EC_ValidatePublicKey()
  6035 ms     | 0x7024 ret:0x0
  6035 ms  0x7024 ret:0x7f8ecfeb9820::7f8ecfeb9820  30 83 0c d0                                      0...
  6035 ms  0x7024 PK11_PubDeriveWithKDF()
  6035 ms  0x7024 seckey:0x7f8ecfeb9820
  6035 ms     | 0x7024 EC_ValidatePublicKey()
  6035 ms     | 0x7024 ret:0x0
  6043 ms  0x7024 ret:0x7f8ed00ddc80
  6043 ms  0x7024 PK11_DeriveWithFlags()
  6043 ms  0x7024 basekey:0x7f8ed00ddc80
  6043 ms     | 0x7024 PK11_DeriveWithTemplate()
  6043 ms  0x7024 ret:0x7f8ed00ddc00
  6043 ms  0x7024 PK11_Derive()
  6043 ms  0x7024 basekey:0x7f8ed00ddc00
  6043 ms     | 0x7024 PK11_DeriveWithTemplate()
  6043 ms  0x7024 ret:0x7f8ed00ddf80
  6043 ms  0x7024 SECKEY_DestroyPrivateKey()
  6043 ms  0x7024 privk:0x7f8ecfeb9820::7f8ecfeb9820  30 83 0c d0                                      0...
  6043 ms  0x7024 privk:0x7f8ecfeb9820::7f8ecfeb9820  e5 e5 e5 e5                                      ....
  6043 ms  0x7024 PK11_Encrypt()
  6043 ms  0x7024 symkey:0x7f8ed00ddd00
  6053 ms  0x7024 SECKEY_DestroyPrivateKey()
  6053 ms  0x7024 privk:0x7f8ed0468820::7f8ed0468820  f0 76 4a d0                                      .vJ.
  6054 ms  0x7024 privk:0x7f8ed0468820::7f8ed0468820  e5 e5 e5 e5                                      ....
  6054 ms  0x7024 SECKEY_DestroyPrivateKey()
  6054 ms  0x7024 privk:0x7f8ed0455020::7f8ed0455020  80 bd 1e d0                                      ....
  6054 ms  0x7024 privk:0x7f8ed0455020::7f8ed0455020  e5 e5 e5 e5                                      ....
           /* TID 0x707f */
  6054 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6055 ms  0x707f ret:0x0
           /* TID 0x7024 */
  6055 ms  SECKEY_ECParamsToKeySize()
  6055 ms  0x7024 ret:0xff
  6055 ms  0x7024 SECKEY_CreateECPrivateKey()
  6055 ms  0x7024 cx:0x7f8ed040a128
  6056 ms     | 0x7024 EC_ValidatePublicKey()
  6056 ms     | 0x7024 ret:0x0
  6056 ms  0x7024 ret:0x7f8ecfeba020::7f8ecfeba020  20 89 0c d0                                       ...
  6056 ms  0x7024 PK11_PubDeriveWithKDF()
  6056 ms  0x7024 seckey:0x7f8ecfeba020
  6056 ms     | 0x7024 EC_ValidatePublicKey()
  6056 ms     | 0x7024 ret:0x0
  6056 ms  0x7024 ret:0x7f8ed00ddc80
  6057 ms  0x7024 PK11_DeriveWithFlags()
  6057 ms  0x7024 basekey:0x7f8ed00ddc80
  6057 ms     | 0x7024 PK11_DeriveWithTemplate()
  6057 ms  0x7024 ret:0x7f8ed00ddf00
  6057 ms  0x7024 PK11_Derive()
  6057 ms  0x7024 basekey:0x7f8ed00ddf00
  6057 ms     | 0x7024 PK11_DeriveWithTemplate()
  6057 ms  0x7024 ret:0x7f8ed00de280
  6057 ms  0x7024 SECKEY_DestroyPrivateKey()
  6057 ms  0x7024 privk:0x7f8ecfeba020::7f8ecfeba020  20 89 0c d0                                       ...
  6057 ms  0x7024 privk:0x7f8ecfeba020::7f8ecfeba020  e5 e5 e5 e5                                      ....
  6057 ms  0x7024 PK11_Encrypt()
  6057 ms  0x7024 symkey:0x7f8ed00de000
  6057 ms  0x7024 SECKEY_DestroyPrivateKey()
  6057 ms  0x7024 privk:0x7f8ed0451820::7f8ed0451820  60 0f 14 d0                                      `...
  6057 ms  0x7024 privk:0x7f8ed0451820::7f8ed0451820  e5 e5 e5 e5                                      ....
  6057 ms  0x7024 SECKEY_DestroyPrivateKey()
  6057 ms  0x7024 privk:0x7f8ed044f020::7f8ed044f020  c0 8e 0c d0                                      ....
  6057 ms  0x7024 privk:0x7f8ed044f020::7f8ed044f020  e5 e5 e5 e5                                      ....
  6057 ms  0x7024 PR_Close()
  6057 ms  0x7024 fd:0x7f8ed0347a30
  6057 ms     | 0x7024 PK11_Encrypt()
  6057 ms     | 0x7024 symkey:0x7f8ed0492c00
  6058 ms  0x7024 PR_Close()
  6058 ms  0x7024 fd:0x7f8ed0362e20
  6058 ms     | 0x7024 PK11_Encrypt()
  6058 ms     | 0x7024 symkey:0x7f8ed0493280
  6058 ms  0x7024 SSL_AuthCertificateComplete()
  6058 ms  0x7024 fd:0x7f8ed0347940
  6058 ms  0x7024 err:0x0
  6058 ms  0x7024 SSL_AuthCertificateComplete()
  6058 ms  0x7024 fd:0x7f8ed0379ac0
  6058 ms  0x7024 err:0x0
           /* TID 0x702c */
  6059 ms  0x702c PR_Close()
  6059 ms  0x702c fd:0x7f8ed01305b0
           /* TID 0x7024 */
  6059 ms  0x7024 PK11_Encrypt()
  6059 ms  0x7024 symkey:0x7f8ed00ddd00
  6060 ms  0x7024 PK11_Encrypt()
  6060 ms  0x7024 symkey:0x7f8ed00de000
           /* TID 0x702c */
  6061 ms  0x702c PR_Close()
  6061 ms  0x702c fd:0x7f8ed01305b0
  6068 ms  0x702c PR_Close()
  6068 ms  0x702c fd:0x7f8ed01305b0
  6069 ms  0x702c PR_Close()
  6069 ms  0x702c fd:0x7f8ed01305b0
           /* TID 0x7024 */
  6069 ms  0x7024 SECKEY_DestroyPrivateKey()
  6069 ms  0x7024 privk:0x7f8ecfecb020::7f8ecfecb020  a0 7b 4a d0                                      .{J.
  6070 ms  0x7024 privk:0x7f8ecfecb020::7f8ecfecb020  e5 e5 e5 e5                                      ....
  6070 ms  0x7024 SECKEY_DestroyPrivateKey()
  6070 ms  0x7024 privk:0x7f8ecfec9020::7f8ecfec9020  d0 78 4a d0                                      .xJ.
  6070 ms  0x7024 privk:0x7f8ecfec9020::7f8ecfec9020  e5 e5 e5 e5                                      ....
  6070 ms  0x7024 PR_Close()
  6070 ms  0x7024 fd:0x7f8ed0347940
  6070 ms     | 0x7024 PK11_Encrypt()
  6070 ms     | 0x7024 symkey:0x7f8ed00ddd00
           /* TID 0x702c */
  6070 ms  0x702c PR_Close()
  6070 ms  0x702c fd:0x7f8ed01305b0
  6071 ms  0x702c PR_Close()
  6071 ms  0x702c fd:0x7f8ed01305b0
  6072 ms  0x702c PR_Close()
  6072 ms  0x702c fd:0x7f8ed01305b0
  6072 ms  0x702c PR_Close()
  6072 ms  0x702c fd:0x7f8ed01305b0
  6073 ms  0x702c PR_Close()
  6073 ms  0x702c fd:0x7f8ed01305b0
  6074 ms  0x702c PR_Close()
  6074 ms  0x702c fd:0x7f8ed01305b0
           /* TID 0x7024 */
  6083 ms  0x7024 SECKEY_DestroyPrivateKey()
  6083 ms  0x7024 privk:0x7f8ecfec6820::7f8ecfec6820  90 77 4a d0                                      .wJ.
  6083 ms  0x7024 privk:0x7f8ecfec6820::7f8ecfec6820  e5 e5 e5 e5                                      ....
  6083 ms  0x7024 SECKEY_DestroyPrivateKey()
  6083 ms  0x7024 privk:0x7f8ecfec4820::7f8ecfec4820  70 74 4a d0                                      ptJ.
  6083 ms  0x7024 privk:0x7f8ecfec4820::7f8ecfec4820  e5 e5 e5 e5                                      ....
  6083 ms  0x7024 PR_Close()
  6083 ms  0x7024 fd:0x7f8ed0379ac0
  6083 ms     | 0x7024 PK11_Encrypt()
  6083 ms     | 0x7024 symkey:0x7f8ed00de000
           /* TID 0x702c */
  6508 ms  0x702c PR_Close()
  6508 ms  0x702c fd:0x7f8ed02e2730
  6510 ms  0x702c PR_Close()
  6510 ms  0x702c fd:0x7f8ed0347040
  6511 ms  0x702c PR_Close()
  6511 ms  0x702c fd:0x7f8ed03473d0
  6513 ms  0x702c PR_Close()
  6513 ms  0x702c fd:0x7f8ed03474f0
  6514 ms  0x702c PR_Close()
  6514 ms  0x702c fd:0x7f8ed03476a0
  6515 ms  0x702c PR_Close()
  6515 ms  0x702c fd:0x7f8ed0347ac0
  6517 ms  0x702c PR_Close()
  6517 ms  0x702c fd:0x7f8ed0347af0
  6518 ms  0x702c PR_Close()
  6518 ms  0x702c fd:0x7f8ed0347b20
  6519 ms  0x702c PR_Close()
  6519 ms  0x702c fd:0x7f8ed0347b50
  6520 ms  0x702c PR_Close()
  6520 ms  0x702c fd:0x7f8ed0347bb0
           /* TID 0x7024 */
  6727 ms  0x7024 SSL_ImportFD()
  6727 ms  0x7024 ret:0x7f8ed02e2f40
  6728 ms  0x7024 SSL_AuthCertificateHook()
  6728 ms  0x7024 fd:0x7f8ed02e2f40
  6728 ms  0x7024 ret:0x0
  6728 ms  0x7024 PR_Connect()
  6728 ms  0x7024 fd:0x7f8ed02e2f40
  6739 ms  0x7024 PK11_Encrypt()
  6739 ms  0x7024 symkey:0x7f8eeb238f00
  6741 ms  0x7024 PK11_Encrypt()
  6741 ms  0x7024 symkey:0x7f8eeb238f00
  6764 ms  0x7024 SECKEY_CreateECPrivateKey()
  6764 ms  0x7024 cx:0x7f8ed0409c48
  6765 ms     | 0x7024 EC_ValidatePublicKey()
  6765 ms     | 0x7024 ret:0x0
  6765 ms  0x7024 ret:0x7f8ecfec2020::7f8ecfec2020  10 05 14 d0                                      ....
  6765 ms  0x7024 SECKEY_CreateECPrivateKey()
  6765 ms  0x7024 cx:0x7f8ed0409c48
  6766 ms     | 0x7024 EC_ValidatePublicKey()
  6767 ms     | 0x7024 ret:0x0
  6767 ms  0x7024 ret:0x7f8ecfec4020::7f8ecfec4020  10 0a 14 d0                                      ....
           /* TID 0x702c */
  6777 ms  0x702c PR_Close()
  6777 ms  0x702c fd:0x7f8ed0130eb0
  6792 ms  0x702c PR_Close()
  6792 ms  0x702c fd:0x7f8ed0130eb0
           /* TID 0x7024 */
  6805 ms  SECKEY_ECParamsToKeySize()
  6805 ms  0x7024 ret:0x100
  6805 ms  SECKEY_ECParamsToBasePointOrderLen()
  6805 ms  0x7024 ret:0x100
  6805 ms  SECKEY_ECParamsToBasePointOrderLen()
  6805 ms  0x7024 ret:0x100
  6805 ms  0x7024 EC_ValidatePublicKey()
  6806 ms  0x7024 ret:0x0
  6808 ms  SECKEY_ECParamsToKeySize()
  6808 ms  0x7024 ret:0x100
  6808 ms  0x7024 SECKEY_CreateECPrivateKey()
  6808 ms  0x7024 cx:0x7f8ed0409c48
  6809 ms     | 0x7024 EC_ValidatePublicKey()
  6810 ms     | 0x7024 ret:0x0
  6810 ms  0x7024 ret:0x7f8ecfecb020::7f8ecfecb020  f0 c1 1a d0                                      ....
  6810 ms  0x7024 PK11_PubDeriveWithKDF()
  6810 ms  0x7024 seckey:0x7f8ecfecb020
  6810 ms     | 0x7024 EC_ValidatePublicKey()
  6812 ms     | 0x7024 ret:0x0
  6813 ms  0x7024 ret:0x7f8ed00de280
  6813 ms  0x7024 PK11_DeriveWithFlags()
  6813 ms  0x7024 basekey:0x7f8ed00de280
  6813 ms     | 0x7024 PK11_DeriveWithTemplate()
  6813 ms  0x7024 ret:0x7f8ed00ddf00
  6813 ms  0x7024 PK11_Derive()
  6813 ms  0x7024 basekey:0x7f8ed00ddf00
  6813 ms     | 0x7024 PK11_DeriveWithTemplate()
  6813 ms  0x7024 ret:0x7f8ed00ddf80
  6813 ms  0x7024 SECKEY_DestroyPrivateKey()
  6813 ms  0x7024 privk:0x7f8ecfecb020::7f8ecfecb020  f0 c1 1a d0                                      ....
  6813 ms  0x7024 privk:0x7f8ecfecb020::7f8ecfecb020  e5 e5 e5 e5                                      ....
  6814 ms  0x7024 PK11_Encrypt()
  6814 ms  0x7024 symkey:0x7f8ed00de080
           /* TID 0x707f */
  6814 ms  SECKEY_ECParamsToBasePointOrderLen()
  6814 ms  0x707f ret:0x180
  6814 ms  SECKEY_ECParamsToBasePointOrderLen()
  6814 ms  0x707f ret:0x180
  6814 ms  0x707f EC_ValidatePublicKey()
  6816 ms  0x707f ret:0x0
  6819 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6819 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6819 ms     | 0x707f ret:0x180
  6819 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6819 ms     | 0x707f ret:0x180
  6819 ms     | 0x707f EC_ValidatePublicKey()
  6820 ms     | 0x707f ret:0x0
  6823 ms  0x707f ret:0x0
           /* TID 0x7024 */
  6841 ms  0x7024 SSL_AuthCertificateComplete()
  6841 ms  0x7024 fd:0x7f8ed02e2f40
  6841 ms  0x7024 err:0x0
  6841 ms  0x7024 PK11_Encrypt()
  6841 ms  0x7024 symkey:0x7f8ed00de080
  6841 ms  0x7024 PK11_Encrypt()
  6841 ms  0x7024 symkey:0x7f8ed00de080
  6851 ms  0x7024 SECKEY_DestroyPrivateKey()
  6851 ms  0x7024 privk:0x7f8ecfec4020::7f8ecfec4020  10 0a 14 d0                                      ....
  6851 ms  0x7024 privk:0x7f8ecfec4020::7f8ecfec4020  e5 e5 e5 e5                                      ....
  6851 ms  0x7024 SECKEY_DestroyPrivateKey()
  6851 ms  0x7024 privk:0x7f8ecfec2020::7f8ecfec2020  10 05 14 d0                                      ....
  6851 ms  0x7024 privk:0x7f8ecfec2020::7f8ecfec2020  e5 e5 e5 e5                                      ....
  6887 ms  0x7024 PK11_Encrypt()
  6887 ms  0x7024 symkey:0x7f8ed00de080
           /* TID 0x702c */
  6982 ms  0x702c PR_Close()
  6982 ms  0x702c fd:0x7f8ed0347ac0
           /* TID 0x7024 */
  7080 ms  0x7024 PK11_Encrypt()
  7080 ms  0x7024 symkey:0x7f8eeb238f00
  7081 ms  0x7024 PK11_Encrypt()
  7081 ms  0x7024 symkey:0x7f8eeb238f00
  7084 ms  0x7024 PK11_Encrypt()
  7084 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  7107 ms  0x702c PR_Close()
  7107 ms  0x702c fd:0x7f8ed0347ac0
  7134 ms  0x702c PR_Close()
  7134 ms  0x702c fd:0x7f8ed02ff9a0
  7134 ms  0x702c PR_Close()
  7134 ms  0x702c fd:0x7f8ed02ff9a0
           /* TID 0x7024 */
  7160 ms  0x7024 PK11_Encrypt()
  7160 ms  0x7024 symkey:0x7f8eeb238f00
  7165 ms  0x7024 PK11_Encrypt()
  7165 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  7189 ms  0x702c PR_Close()
  7189 ms  0x702c fd:0x7f8ed0347fd0
  7213 ms  0x702c PR_Close()
  7213 ms  0x702c fd:0x7f8ed0347ac0
           /* TID 0x7024 */
  7227 ms  0x7024 PK11_Encrypt()
  7227 ms  0x7024 symkey:0x7f8eeb238f00
  7227 ms  0x7024 PK11_Encrypt()
  7227 ms  0x7024 symkey:0x7f8eeb238f00
  7227 ms  0x7024 SSL_ImportFD()
  7227 ms  0x7024 ret:0x7f8ed0379fd0
  7227 ms  0x7024 SSL_AuthCertificateHook()
  7227 ms  0x7024 fd:0x7f8ed0379fd0
  7227 ms  0x7024 ret:0x0
  7227 ms  0x7024 PR_Connect()
  7227 ms  0x7024 fd:0x7f8ed0379fd0
  7227 ms  0x7024 SSL_ImportFD()
  7227 ms  0x7024 ret:0x7f8ed0379ee0
  7227 ms  0x7024 SSL_AuthCertificateHook()
  7227 ms  0x7024 fd:0x7f8ed0379ee0
  7227 ms  0x7024 ret:0x0
  7227 ms  0x7024 PR_Connect()
  7227 ms  0x7024 fd:0x7f8ed0379ee0
  7242 ms  0x7024 SSL_ImportFD()
  7242 ms  0x7024 ret:0x7f8ed0379a30
  7242 ms  0x7024 SSL_AuthCertificateHook()
  7242 ms  0x7024 fd:0x7f8ed0379a30
  7242 ms  0x7024 ret:0x0
  7242 ms  0x7024 PR_Connect()
  7242 ms  0x7024 fd:0x7f8ed0379a30
  7253 ms  0x7024 SECKEY_CreateECPrivateKey()
  7253 ms  0x7024 cx:0x7f8ed040b7e8
  7253 ms     | 0x7024 EC_ValidatePublicKey()
  7253 ms     | 0x7024 ret:0x0
  7253 ms  0x7024 ret:0x7f8ecfecd020::7f8ecfecd020  c0 be 1e d0                                      ....
  7253 ms  0x7024 SECKEY_CreateECPrivateKey()
  7253 ms  0x7024 cx:0x7f8ed040b7e8
  7254 ms     | 0x7024 EC_ValidatePublicKey()
  7255 ms     | 0x7024 ret:0x0
  7255 ms  0x7024 ret:0x7f8ecfecf020::7f8ecfecf020  40 52 3a d0                                      @R:.
           /* TID 0x702c */
  7256 ms  0x702c PR_Close()
  7256 ms  0x702c fd:0x7f8ed03620d0
           /* TID 0x7024 */
  7265 ms  0x7024 SECKEY_CreateECPrivateKey()
  7265 ms  0x7024 cx:0x7f8ed040b648
  7265 ms     | 0x7024 EC_ValidatePublicKey()
  7265 ms     | 0x7024 ret:0x0
  7265 ms  0x7024 ret:0x7f8ecfed1820::7f8ecfed1820  00 bb 1e d0                                      ....
  7265 ms  0x7024 SECKEY_CreateECPrivateKey()
  7265 ms  0x7024 cx:0x7f8ed040b648
  7266 ms     | 0x7024 EC_ValidatePublicKey()
  7267 ms     | 0x7024 ret:0x0
  7267 ms  0x7024 ret:0x7f8ecfed3820::7f8ecfed3820  80 bd 1e d0                                      ....
  7268 ms  0x7024 SECKEY_CreateECPrivateKey()
  7268 ms  0x7024 cx:0x7f8ed040b988
  7270 ms     | 0x7024 EC_ValidatePublicKey()
  7270 ms     | 0x7024 ret:0x0
  7270 ms  0x7024 ret:0x7f8ed006c820::7f8ed006c820  30 53 3a d0                                      0S:.
  7270 ms  0x7024 SECKEY_CreateECPrivateKey()
  7270 ms  0x7024 cx:0x7f8ed040b988
  7271 ms     | 0x7024 EC_ValidatePublicKey()
  7272 ms     | 0x7024 ret:0x0
  7272 ms  0x7024 ret:0x7f8ed006e820::7f8ed006e820  40 5c 3a d0                                      @\:.
           /* TID 0x702c */
  7278 ms  0x702c PR_Close()
  7278 ms  0x702c fd:0x7f8ed0362700
           /* TID 0x7024 */
  7315 ms  SECKEY_ECParamsToKeySize()
  7315 ms  0x7024 ret:0x100
  7315 ms  0x7024 SECKEY_CreateECPrivateKey()
  7315 ms  0x7024 cx:0x7f8ed040b7e8
  7315 ms     | 0x7024 EC_ValidatePublicKey()
  7317 ms     | 0x7024 ret:0x0
           /* TID 0x707f */
  7318 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7318 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7319 ms  0x7024 ret:0x7f8ed007e820::7f8ed007e820  40 7c 4a d0                                      @|J.
  7319 ms  0x7024 PK11_PubDeriveWithKDF()
  7319 ms  0x7024 seckey:0x7f8ed007e820
  7319 ms     | 0x7024 EC_ValidatePublicKey()
  7326 ms     | 0x7024 ret:0x0
  7327 ms  0x7024 ret:0x7f8ed00de280
  7327 ms  0x7024 PK11_DeriveWithFlags()
  7327 ms  0x7024 basekey:0x7f8ed00de280
  7327 ms     | 0x7024 PK11_DeriveWithTemplate()
  7327 ms  0x7024 ret:0x7f8ed00ddc00
  7327 ms  0x7024 PK11_Derive()
  7327 ms  0x7024 basekey:0x7f8ed00ddc00
  7327 ms     | 0x7024 PK11_DeriveWithTemplate()
  7327 ms  0x7024 ret:0x7f8ed0492f80
  7327 ms  0x7024 SECKEY_DestroyPrivateKey()
  7327 ms  0x7024 privk:0x7f8ed007e820::7f8ed007e820  40 7c 4a d0                                      @|J.
  7327 ms  0x7024 privk:0x7f8ed007e820::7f8ed007e820  e5 e5 e5 e5                                      ....
  7327 ms  0x7024 PK11_Encrypt()
  7327 ms  0x7024 symkey:0x7f8ed00ddd80
           /* TID 0x707f */
  7337 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7337 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7338 ms  SECKEY_ECParamsToKeySize()
  7338 ms  0x7024 ret:0xff
  7338 ms  0x7024 SECKEY_CreateECPrivateKey()
  7338 ms  0x7024 cx:0x7f8ed040b988
  7339 ms     | 0x7024 EC_ValidatePublicKey()
  7339 ms     | 0x7024 ret:0x0
  7339 ms  0x7024 ret:0x7f8ed0325020::7f8ed0325020  f0 31 4c d0                                      .1L.
  7340 ms  0x7024 PK11_PubDeriveWithKDF()
  7340 ms  0x7024 seckey:0x7f8ed0325020
  7340 ms     | 0x7024 EC_ValidatePublicKey()
  7340 ms     | 0x7024 ret:0x0
  7341 ms  0x7024 ret:0x7f8ed00de280
  7341 ms  0x7024 PK11_DeriveWithFlags()
  7341 ms  0x7024 basekey:0x7f8ed00de280
  7341 ms     | 0x7024 PK11_DeriveWithTemplate()
  7344 ms  0x7024 ret:0x7f8ed0492d80
  7344 ms  0x7024 PK11_Derive()
  7344 ms  0x7024 basekey:0x7f8ed0492d80
  7344 ms     | 0x7024 PK11_DeriveWithTemplate()
  7344 ms  0x7024 ret:0x7f8ed0492a80
  7344 ms  0x7024 SECKEY_DestroyPrivateKey()
  7344 ms  0x7024 privk:0x7f8ed0325020::7f8ed0325020  f0 31 4c d0                                      .1L.
  7344 ms  0x7024 privk:0x7f8ed0325020::7f8ed0325020  e5 e5 e5 e5                                      ....
  7344 ms  0x7024 PK11_Encrypt()
  7344 ms  0x7024 symkey:0x7f8ed0493080
  7344 ms  0x7024 SSL_AuthCertificateComplete()
  7344 ms  0x7024 fd:0x7f8ed0379ee0
  7344 ms  0x7024 err:0x0
  7345 ms  0x7024 PK11_Encrypt()
  7345 ms  0x7024 symkey:0x7f8eeb238f00
  7345 ms  0x7024 SSL_AuthCertificateComplete()
  7345 ms  0x7024 fd:0x7f8ed0379a30
  7345 ms  0x7024 err:0x0
  7345 ms  0x7024 PK11_Encrypt()
  7345 ms  0x7024 symkey:0x7f8ed00ddd80
  7345 ms  0x7024 PK11_Encrypt()
  7345 ms  0x7024 symkey:0x7f8ed00ddd80
  7345 ms  0x7024 PK11_Derive()
  7345 ms  0x7024 basekey:0x7f8ed00de280
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed0492a00
  7346 ms  0x7024 PK11_PubDeriveWithKDF()
  7346 ms  0x7024 seckey:0x7f8ecfed1820
  7346 ms     | 0x7024 EC_ValidatePublicKey()
  7346 ms     | 0x7024 ret:0x0
  7346 ms  0x7024 ret:0x7f8ed00de280
  7346 ms  SECKEY_ECParamsToKeySize()
  7346 ms  0x7024 ret:0xff
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed0492a00
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00ddc80
  7346 ms  0x7024 PK11_Derive()
  7346 ms  0x7024 basekey:0x7f8ed00de280
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00de200
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed00de200
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed0492a00
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed00de200
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00de280
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed00de200
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00ddc80
  7346 ms  0x7024 PK11_Derive()
  7346 ms  0x7024 basekey:0x7f8ed00de580
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00de500
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed00de280
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00de200
  7346 ms  0x7024 PK11_DeriveWithFlags()
  7346 ms  0x7024 basekey:0x7f8ed00de280
  7346 ms     | 0x7024 PK11_DeriveWithTemplate()
  7346 ms  0x7024 ret:0x7f8ed00ddc80
  7353 ms  SECKEY_ECParamsToKeySize()
  7353 ms  0x7024 ret:0x100
  7353 ms  SECKEY_ECParamsToBasePointOrderLen()
  7353 ms  0x7024 ret:0x100
  7353 ms  SECKEY_ECParamsToBasePointOrderLen()
  7353 ms  0x7024 ret:0x100
  7353 ms  0x7024 EC_ValidatePublicKey()
  7355 ms  0x7024 ret:0x0
  7357 ms  0x7024 PK11_DeriveWithFlags()
  7357 ms  0x7024 basekey:0x7f8ed00de280
  7357 ms     | 0x7024 PK11_DeriveWithTemplate()
  7357 ms  0x7024 ret:0x7f8ed00ddc80
  7357 ms  0x7024 PK11_Encrypt()
  7357 ms  0x7024 symkey:0x7f8ed0493080
  7358 ms  0x7024 SECKEY_DestroyPrivateKey()
  7358 ms  0x7024 privk:0x7f8ecfecf020::7f8ecfecf020  40 52 3a d0                                      @R:.
  7358 ms  0x7024 privk:0x7f8ecfecf020::7f8ecfecf020  e5 e5 e5 e5                                      ....
  7358 ms  0x7024 SECKEY_DestroyPrivateKey()
  7358 ms  0x7024 privk:0x7f8ecfecd020::7f8ecfecd020  c0 be 1e d0                                      ....
  7358 ms  0x7024 privk:0x7f8ecfecd020::7f8ecfecd020  e5 e5 e5 e5                                      ....
  7365 ms  0x7024 PK11_Encrypt()
  7365 ms  0x7024 symkey:0x7f8ed00ddd80
  7369 ms  0x7024 PR_Connect()
  7369 ms  0x7024 fd:0x7f8ed0487d60
           /* TID 0x702c */
  7372 ms  0x702c PR_Close()
  7372 ms  0x702c fd:0x7f8ed03476d0
           /* TID 0x7024 */
  7372 ms  0x7024 SECKEY_DestroyPrivateKey()
  7372 ms  0x7024 privk:0x7f8ed006e820::7f8ed006e820  40 5c 3a d0                                      @\:.
  7372 ms  0x7024 privk:0x7f8ed006e820::7f8ed006e820  e5 e5 e5 e5                                      ....
  7372 ms  0x7024 SECKEY_DestroyPrivateKey()
  7372 ms  0x7024 privk:0x7f8ed006c820::7f8ed006c820  30 53 3a d0                                      0S:.
  7372 ms  0x7024 privk:0x7f8ed006c820::7f8ed006c820  e5 e5 e5 e5                                      ....
           /* TID 0x702c */
  7408 ms  0x702c PR_Close()
  7408 ms  0x702c fd:0x7f8ed0347b20
  7434 ms  0x702c PR_Close()
  7434 ms  0x702c fd:0x7f8ed03476d0
           /* TID 0x7024 */
  7460 ms  0x7024 PK11_Encrypt()
  7460 ms  0x7024 symkey:0x7f8eeb238f00
  7480 ms  0x7024 SSL_ImportFD()
  7481 ms  0x7024 ret:0x7f8ed0362940
  7481 ms  0x7024 SSL_AuthCertificateHook()
  7481 ms  0x7024 fd:0x7f8ed0362940
  7481 ms  0x7024 ret:0x0
  7481 ms  0x7024 PR_Connect()
  7481 ms  0x7024 fd:0x7f8ed0362940
           /* TID 0x702c */
  7487 ms  0x702c PR_Close()
  7487 ms  0x702c fd:0x7f8ed03476d0
           /* TID 0x7024 */
  7517 ms  0x7024 SECKEY_CreateECPrivateKey()
  7517 ms  0x7024 cx:0x7f8ee14e9b28
  7518 ms     | 0x7024 EC_ValidatePublicKey()
  7518 ms     | 0x7024 ret:0x0
  7518 ms  0x7024 ret:0x7f8ed006e820::7f8ed006e820  20 54 3a d0                                       T:.
  7518 ms  0x7024 SECKEY_CreateECPrivateKey()
  7518 ms  0x7024 cx:0x7f8ee14e9b28
  7518 ms     | 0x7024 EC_ValidatePublicKey()
  7520 ms     | 0x7024 ret:0x0
  7520 ms  0x7024 ret:0x7f8ed0330820::7f8ed0330820  40 32 4c d0                                      @2L.
  7535 ms  0x7024 PK11_Encrypt()
  7535 ms  0x7024 symkey:0x7f8ed00ddd80
           /* TID 0x702c */
  7550 ms  0x702c PR_Close()
  7550 ms  0x702c fd:0x7f8ed02ff9d0
           /* TID 0x707f */
  7550 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7550 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7557 ms  0x7024 SSL_AuthCertificateComplete()
  7557 ms  0x7024 fd:0x7f8ed0379fd0
  7557 ms  0x7024 err:0x0
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed00de500
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00ddc80
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed00de500
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00de580
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed00de500
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00de880
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed0492a00
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00de800
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed0492a00
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00dd400
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed00de580
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00dd400
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed00de580
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00dd380
  7557 ms     | 0x7024 PK11_DeriveWithFlags()
  7557 ms     | 0x7024 basekey:0x7f8ed0492a00
  7557 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7557 ms     | 0x7024 ret:0x7f8ed00de200
  7557 ms     | 0x7024 PK11_Encrypt()
  7557 ms     | 0x7024 symkey:0x7f8ed00de800
  7558 ms     | 0x7024 PK11_DeriveWithFlags()
  7558 ms     | 0x7024 basekey:0x7f8ed00ddc80
  7558 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7558 ms     | 0x7024 ret:0x7f8ed00de200
  7558 ms     | 0x7024 PK11_DeriveWithFlags()
  7558 ms     | 0x7024 basekey:0x7f8ed00ddc80
  7558 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7558 ms     | 0x7024 ret:0x7f8ed00dd380
  7558 ms     | 0x7024 PK11_DeriveWithFlags()
  7558 ms     | 0x7024 basekey:0x7f8ed00de500
  7558 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7558 ms     | 0x7024 ret:0x7f8ed00de800
  7558 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  7558 ms     | 0x7024 privk:0x7f8ecfed3820::7f8ecfed3820  80 bd 1e d0                                      ....
  7558 ms     | 0x7024 privk:0x7f8ecfed3820::7f8ecfed3820  e5 e5 e5 e5                                      ....
  7558 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  7558 ms     | 0x7024 privk:0x7f8ecfed1820::7f8ecfed1820  00 bb 1e d0                                      ....
  7558 ms     | 0x7024 privk:0x7f8ecfed1820::7f8ecfed1820  e5 e5 e5 e5                                      ....
  7558 ms  0x7024 PK11_Encrypt()
  7558 ms  0x7024 symkey:0x7f8ed00de200
  7558 ms  0x7024 PK11_Encrypt()
  7558 ms  0x7024 symkey:0x7f8ed00de200
           /* TID 0x707f */
  7559 ms  SECKEY_ECParamsToBasePointOrderLen()
  7559 ms  0x707f ret:0x180
  7559 ms  SECKEY_ECParamsToBasePointOrderLen()
  7559 ms  0x707f ret:0x180
  7560 ms  0x707f EC_ValidatePublicKey()
  7561 ms  0x707f ret:0x0
  7564 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7564 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7564 ms     | 0x707f ret:0x180
  7564 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7564 ms     | 0x707f ret:0x180
  7564 ms     | 0x707f EC_ValidatePublicKey()
           /* TID 0x7024 */
  7565 ms  SECKEY_ECParamsToKeySize()
  7565 ms  0x7024 ret:0x100
  7565 ms  SECKEY_ECParamsToBasePointOrderLen()
  7565 ms  0x7024 ret:0x100
  7565 ms  SECKEY_ECParamsToBasePointOrderLen()
  7565 ms  0x7024 ret:0x100
           /* TID 0x707f */
  7571 ms     | 0x707f ret:0x0
           /* TID 0x7024 */
  7571 ms  0x7024 EC_ValidatePublicKey()
  7572 ms  0x7024 ret:0x0
  7574 ms  SECKEY_ECParamsToKeySize()
  7574 ms  0x7024 ret:0x100
  7574 ms  0x7024 SECKEY_CreateECPrivateKey()
  7574 ms  0x7024 cx:0x7f8ee14e9b28
  7575 ms     | 0x7024 EC_ValidatePublicKey()
  7582 ms     | 0x7024 ret:0x0
  7582 ms  0x7024 ret:0x7f8ed0338820::7f8ed0338820  60 35 4c d0                                      `5L.
  7582 ms  0x7024 PK11_PubDeriveWithKDF()
  7582 ms  0x7024 seckey:0x7f8ed0338820
  7582 ms     | 0x7024 EC_ValidatePublicKey()
  7583 ms     | 0x7024 ret:0x0
  7585 ms  0x7024 ret:0x7f8ed00de280
  7585 ms  0x7024 PK11_DeriveWithFlags()
  7585 ms  0x7024 basekey:0x7f8ed00de280
  7585 ms     | 0x7024 PK11_DeriveWithTemplate()
  7585 ms  0x7024 ret:0x7f8ed0492a00
  7585 ms  0x7024 PK11_Derive()
  7585 ms  0x7024 basekey:0x7f8ed0492a00
  7585 ms     | 0x7024 PK11_DeriveWithTemplate()
  7585 ms  0x7024 ret:0x7f8ed00de500
  7585 ms  0x7024 SECKEY_DestroyPrivateKey()
  7585 ms  0x7024 privk:0x7f8ed0338820::7f8ed0338820  60 35 4c d0                                      `5L.
  7585 ms  0x7024 privk:0x7f8ed0338820::7f8ed0338820  e5 e5 e5 e5                                      ....
  7585 ms  0x7024 PK11_Encrypt()
  7585 ms  0x7024 symkey:0x7f8ed0492b00
           /* TID 0x707f */
  7587 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7591 ms  0x7024 PK11_Encrypt()
  7591 ms  0x7024 symkey:0x7f8eeb238f00
  7592 ms  0x7024 SSL_AuthCertificateComplete()
  7592 ms  0x7024 fd:0x7f8ed0362940
  7592 ms  0x7024 err:0x0
           /* TID 0x702c */
  7593 ms  0x702c PR_Close()
  7593 ms  0x702c fd:0x7f8ed04879d0
           /* TID 0x7024 */
  7594 ms  0x7024 PK11_Encrypt()
  7594 ms  0x7024 symkey:0x7f8ed0492b00
  7607 ms  0x7024 PK11_DeriveWithFlags()
  7607 ms  0x7024 basekey:0x7f8ed00de800
  7607 ms     | 0x7024 PK11_DeriveWithTemplate()
  7607 ms  0x7024 ret:0x7f8ed00de280
  7607 ms  0x7024 PK11_DeriveWithFlags()
  7607 ms  0x7024 basekey:0x7f8ed00de800
  7607 ms     | 0x7024 PK11_DeriveWithTemplate()
  7607 ms  0x7024 ret:0x7f8ed00de280
  7607 ms  0x7024 PK11_Encrypt()
  7607 ms  0x7024 symkey:0x7f8ed00de200
           /* TID 0x702c */
  7618 ms  0x702c PR_Close()
  7618 ms  0x702c fd:0x7f8ee34feb50
           /* TID 0x7024 */
  7622 ms  0x7024 SECKEY_DestroyPrivateKey()
  7622 ms  0x7024 privk:0x7f8ed0330820::7f8ed0330820  40 32 4c d0                                      @2L.
  7622 ms  0x7024 privk:0x7f8ed0330820::7f8ed0330820  e5 e5 e5 e5                                      ....
  7623 ms  0x7024 SECKEY_DestroyPrivateKey()
  7623 ms  0x7024 privk:0x7f8ed006e820::7f8ed006e820  20 54 3a d0                                       T:.
  7623 ms  0x7024 privk:0x7f8ed006e820::7f8ed006e820  e5 e5 e5 e5                                      ....
  7623 ms  0x7024 SSL_ImportFD()
  7623 ms  0x7024 ret:0x7f8ee47c4b50
  7623 ms  0x7024 SSL_AuthCertificateHook()
  7623 ms  0x7024 fd:0x7f8ee47c4b50
  7623 ms  0x7024 ret:0x0
  7623 ms  0x7024 PR_Connect()
  7623 ms  0x7024 fd:0x7f8ee47c4b50
  7627 ms  0x7024 PK11_Encrypt()
  7627 ms  0x7024 symkey:0x7f8eeb238f00
  7629 ms  0x7024 PK11_Encrypt()
  7629 ms  0x7024 symkey:0x7f8eeb238f00
  7646 ms  0x7024 SSL_ImportFD()
  7647 ms  0x7024 ret:0x7f8ee618fd30
  7647 ms  0x7024 SSL_AuthCertificateHook()
  7647 ms  0x7024 fd:0x7f8ee618fd30
  7647 ms  0x7024 ret:0x0
  7647 ms  0x7024 PR_Connect()
  7647 ms  0x7024 fd:0x7f8ee618fd30
           /* TID 0x702c */
  7656 ms  0x702c PR_Close()
  7656 ms  0x702c fd:0x7f8ed04879d0
           /* TID 0x7024 */
  7660 ms  0x7024 SECKEY_CreateECPrivateKey()
  7660 ms  0x7024 cx:0x7f8ed040be68
  7661 ms     | 0x7024 EC_ValidatePublicKey()
  7661 ms     | 0x7024 ret:0x0
  7661 ms  0x7024 ret:0x7f8ed0329820::7f8ed0329820  e0 7c 4a d0                                      .|J.
  7661 ms  0x7024 SECKEY_CreateECPrivateKey()
  7661 ms  0x7024 cx:0x7f8ed040be68
  7661 ms     | 0x7024 EC_ValidatePublicKey()
  7663 ms     | 0x7024 ret:0x0
  7663 ms  0x7024 ret:0x7f8ed0338020::7f8ed0338020  70 34 4c d0                                      p4L.
           /* TID 0x702c */
  7668 ms  0x702c PR_Close()
  7668 ms  0x702c fd:0x7f8ed0379b50
           /* TID 0x7024 */
  7672 ms  0x7024 SECKEY_CreateECPrivateKey()
  7672 ms  0x7024 cx:0x7f8f098a84a8
  7672 ms     | 0x7024 EC_ValidatePublicKey()
  7672 ms     | 0x7024 ret:0x0
  7672 ms  0x7024 ret:0x7f8ed033a820::7f8ed033a820  60 35 4c d0                                      `5L.
  7673 ms  0x7024 SECKEY_CreateECPrivateKey()
  7673 ms  0x7024 cx:0x7f8f098a84a8
  7673 ms     | 0x7024 EC_ValidatePublicKey()
  7674 ms     | 0x7024 ret:0x0
  7674 ms  0x7024 ret:0x7f8ed033c820::7f8ed033c820  80 38 4c d0                                      .8L.
  7678 ms  0x7024 PK11_Encrypt()
  7678 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
  7681 ms  0x702c PR_Close()
  7681 ms  0x702c fd:0x7f8ee47c40d0
  7690 ms  0x702c PR_Close()
  7690 ms  0x702c fd:0x7f8ee47c40d0
           /* TID 0x7024 */
  7691 ms  0x7024 PK11_Encrypt()
  7691 ms  0x7024 symkey:0x7f8ed00de200
  7703 ms  SECKEY_ECParamsToKeySize()
  7703 ms  0x7024 ret:0xff
  7703 ms  0x7024 SECKEY_CreateECPrivateKey()
  7703 ms  0x7024 cx:0x7f8f098a84a8
  7704 ms     | 0x7024 EC_ValidatePublicKey()
  7704 ms     | 0x7024 ret:0x0
  7704 ms  0x7024 ret:0x7f8ed03e5020::7f8ed03e5020  a0 3b 4c d0                                      .;L.
  7704 ms  0x7024 PK11_PubDeriveWithKDF()
  7704 ms  0x7024 seckey:0x7f8ed03e5020
  7704 ms     | 0x7024 EC_ValidatePublicKey()
  7704 ms     | 0x7024 ret:0x0
           /* TID 0x707f */
  7705 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7705 ms  0x707f ret:0x0
  7705 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7705 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7706 ms  0x7024 ret:0x7f8ed00de280
  7706 ms  0x7024 PK11_DeriveWithFlags()
  7706 ms  0x7024 basekey:0x7f8ed00de280
  7706 ms     | 0x7024 PK11_DeriveWithTemplate()
  7707 ms  0x7024 ret:0x7f8ed00dd380
  7707 ms  0x7024 PK11_Derive()
  7707 ms  0x7024 basekey:0x7f8ed00dd380
  7707 ms     | 0x7024 PK11_DeriveWithTemplate()
  7707 ms  0x7024 ret:0x7f8ee30bdb00
  7707 ms  0x7024 SECKEY_DestroyPrivateKey()
  7707 ms  0x7024 privk:0x7f8ed03e5020::7f8ed03e5020  a0 3b 4c d0                                      .;L.
  7707 ms  0x7024 privk:0x7f8ed03e5020::7f8ed03e5020  e5 e5 e5 e5                                      ....
  7707 ms  0x7024 PK11_Encrypt()
  7707 ms  0x7024 symkey:0x7f8ed00de300
           /* TID 0x702c */
  7709 ms  0x702c PR_Close()
  7709 ms  0x702c fd:0x7f8ee47c4070
           /* TID 0x7024 */
  7714 ms  0x7024 SSL_AuthCertificateComplete()
  7714 ms  0x7024 fd:0x7f8ee618fd30
  7714 ms  0x7024 err:0x0
  7714 ms  0x7024 PK11_Encrypt()
  7714 ms  0x7024 symkey:0x7f8ed00de300
  7714 ms  0x7024 PK11_Encrypt()
  7714 ms  0x7024 symkey:0x7f8ed00de300
  7717 ms  0x7024 PK11_Derive()
  7717 ms  0x7024 basekey:0x7f8ed00de280
  7717 ms     | 0x7024 PK11_DeriveWithTemplate()
  7717 ms  0x7024 ret:0x7f8ed00de680
  7717 ms  0x7024 PK11_PubDeriveWithKDF()
  7717 ms  0x7024 seckey:0x7f8ed0329820
  7717 ms     | 0x7024 EC_ValidatePublicKey()
  7717 ms     | 0x7024 ret:0x0
  7718 ms  0x7024 ret:0x7f8ed00de280
  7718 ms  SECKEY_ECParamsToKeySize()
  7718 ms  0x7024 ret:0xff
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de680
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de780
  7718 ms  0x7024 PK11_Derive()
  7718 ms  0x7024 basekey:0x7f8ed00de280
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de600
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de600
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de680
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de600
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de280
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de600
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de780
  7718 ms  0x7024 PK11_Derive()
  7718 ms  0x7024 basekey:0x7f8ed00de700
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de980
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de280
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de600
  7718 ms  0x7024 PK11_DeriveWithFlags()
  7718 ms  0x7024 basekey:0x7f8ed00de280
  7718 ms     | 0x7024 PK11_DeriveWithTemplate()
  7718 ms  0x7024 ret:0x7f8ed00de780
  7720 ms  0x7024 PK11_DeriveWithFlags()
  7720 ms  0x7024 basekey:0x7f8ed00de280
  7720 ms     | 0x7024 PK11_DeriveWithTemplate()
  7720 ms  0x7024 ret:0x7f8ed00de780
  7733 ms  0x7024 SECKEY_DestroyPrivateKey()
  7733 ms  0x7024 privk:0x7f8ed033c820::7f8ed033c820  80 38 4c d0                                      .8L.
  7733 ms  0x7024 privk:0x7f8ed033c820::7f8ed033c820  e5 e5 e5 e5                                      ....
  7733 ms  0x7024 SECKEY_DestroyPrivateKey()
  7733 ms  0x7024 privk:0x7f8ed033a820::7f8ed033a820  60 35 4c d0                                      `5L.
  7733 ms  0x7024 privk:0x7f8ed033a820::7f8ed033a820  e5 e5 e5 e5                                      ....
  7738 ms  0x7024 PK11_Encrypt()
  7738 ms  0x7024 symkey:0x7f8eeb238f00
  7738 ms  0x7024 PK11_Encrypt()
  7738 ms  0x7024 symkey:0x7f8eeb238f00
  7738 ms  0x7024 PK11_Encrypt()
  7738 ms  0x7024 symkey:0x7f8eeb238f00
  7758 ms  0x7024 PK11_Encrypt()
  7758 ms  0x7024 symkey:0x7f8ed00de300
  7771 ms  0x7024 PK11_Encrypt()
  7771 ms  0x7024 symkey:0x7f8ed0492b00
  7772 ms  0x7024 SSL_ImportFD()
  7772 ms  0x7024 ret:0x7f8ee7527070
  7772 ms  0x7024 SSL_AuthCertificateHook()
  7772 ms  0x7024 fd:0x7f8ee7527070
  7772 ms  0x7024 ret:0x0
  7772 ms  0x7024 PR_Connect()
  7772 ms  0x7024 fd:0x7f8ee7527070
  7809 ms  0x7024 PK11_Encrypt()
  7809 ms  0x7024 symkey:0x7f8ed0492b00
  7809 ms  0x7024 SECKEY_CreateECPrivateKey()
  7809 ms  0x7024 cx:0x7f8ee7ac43e8
  7809 ms     | 0x7024 EC_ValidatePublicKey()
  7809 ms     | 0x7024 ret:0x0
  7809 ms  0x7024 ret:0x7f8ed03ef820::7f8ed03ef820  90 32 4d d0                                      .2M.
  7809 ms  0x7024 SECKEY_CreateECPrivateKey()
  7809 ms  0x7024 cx:0x7f8ee7ac43e8
  7810 ms     | 0x7024 EC_ValidatePublicKey()
           /* TID 0x702c */
  7812 ms  0x702c PR_Close()
  7812 ms  0x702c fd:0x7f8ee713e8e0
           /* TID 0x7024 */
  7813 ms     | 0x7024 ret:0x0
  7813 ms  0x7024 ret:0x7f8ed044a820::7f8ed044a820  f0 36 4c d0                                      .6L.
  7840 ms  0x7024 SSL_ImportFD()
  7840 ms  0x7024 ret:0x7f8ee75fbdc0
  7840 ms  0x7024 SSL_AuthCertificateHook()
  7840 ms  0x7024 fd:0x7f8ee75fbdc0
  7840 ms  0x7024 ret:0x0
  7840 ms  0x7024 PR_Connect()
  7840 ms  0x7024 fd:0x7f8ee75fbdc0
           /* TID 0x702c */
  7846 ms  0x702c PR_Close()
  7846 ms  0x702c fd:0x7f8ee747faf0
           /* TID 0x7024 */
  7849 ms  0x7024 PK11_Derive()
  7849 ms  0x7024 basekey:0x7f8ed00de700
  7850 ms     | 0x7024 PK11_DeriveWithTemplate()
  7850 ms  0x7024 ret:0x7f8ed00de780
  7850 ms  0x7024 PK11_Encrypt()
  7850 ms  0x7024 symkey:0x7f8ed00dea00
  7850 ms  SECKEY_ECParamsToBasePointOrderLen()
  7850 ms  0x7024 ret:0x180
  7850 ms  SECKEY_ECParamsToBasePointOrderLen()
  7850 ms  0x7024 ret:0x180
  7850 ms  0x7024 EC_ValidatePublicKey()
  7852 ms  0x7024 ret:0x0
  7855 ms  0x7024 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7855 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7855 ms     | 0x7024 ret:0x180
  7855 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7855 ms     | 0x7024 ret:0x180
  7855 ms     | 0x7024 EC_ValidatePublicKey()
  7861 ms     | 0x7024 ret:0x0
  7864 ms  0x7024 ret:0x0
  7864 ms  0x7024 SECKEY_DestroyPrivateKey()
  7864 ms  0x7024 privk:0x7f8ed044a820::7f8ed044a820  f0 36 4c d0                                      .6L.
  7864 ms  0x7024 privk:0x7f8ed044a820::7f8ed044a820  e5 e5 e5 e5                                      ....
  7864 ms  0x7024 SECKEY_DestroyPrivateKey()
  7864 ms  0x7024 privk:0x7f8ed03ef820::7f8ed03ef820  90 32 4d d0                                      .2M.
  7864 ms  0x7024 privk:0x7f8ed03ef820::7f8ed03ef820  e5 e5 e5 e5                                      ....
           /* TID 0x707f */
  7864 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x702c */
  7865 ms  0x702c PR_Close()
  7865 ms  0x702c fd:0x7f8ee7527460
           /* TID 0x707f */
  7865 ms  0x707f ret:0x0
           /* TID 0x7024 */
  7866 ms  0x7024 SSL_AuthCertificateComplete()
  7866 ms  0x7024 fd:0x7f8ee47c4b50
  7866 ms  0x7024 err:0x0
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de980
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed00dd600
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de980
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed00dd480
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de980
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed00dd580
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de680
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed0422f00
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de680
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ee12f7a00
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00dd480
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ee12f7a00
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00dd480
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ee14eb280
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de680
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed00de600
  7866 ms     | 0x7024 PK11_Encrypt()
  7866 ms     | 0x7024 symkey:0x7f8ed0422f00
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00dd600
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed00de600
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00dd600
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ee14eb280
  7866 ms     | 0x7024 PK11_DeriveWithFlags()
  7866 ms     | 0x7024 basekey:0x7f8ed00de980
  7866 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  7866 ms     | 0x7024 ret:0x7f8ed0422f00
  7866 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  7866 ms     | 0x7024 privk:0x7f8ed0338020::7f8ed0338020  70 34 4c d0                                      p4L.
  7867 ms     | 0x7024 privk:0x7f8ed0338020::7f8ed0338020  e5 e5 e5 e5                                      ....
  7867 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  7867 ms     | 0x7024 privk:0x7f8ed0329820::7f8ed0329820  e0 7c 4a d0                                      .|J.
  7867 ms     | 0x7024 privk:0x7f8ed0329820::7f8ed0329820  e5 e5 e5 e5                                      ....
  7867 ms  0x7024 PK11_Encrypt()
  7867 ms  0x7024 symkey:0x7f8ed00de600
  7867 ms  0x7024 PK11_Encrypt()
  7867 ms  0x7024 symkey:0x7f8ed00de600
  7868 ms  0x7024 SSL_ImportFD()
  7868 ms  0x7024 ret:0x7f8ee747fb80
  7868 ms  0x7024 SSL_AuthCertificateHook()
  7868 ms  0x7024 fd:0x7f8ee747fb80
  7868 ms  0x7024 ret:0x0
  7868 ms  0x7024 PR_Connect()
  7868 ms  0x7024 fd:0x7f8ee747fb80
  7878 ms  0x7024 SECKEY_CreateECPrivateKey()
  7878 ms  0x7024 cx:0x7f8ee7ac4588
  7878 ms     | 0x7024 EC_ValidatePublicKey()
  7878 ms     | 0x7024 ret:0x0
  7878 ms  0x7024 ret:0x7f8ed0337020::7f8ed0337020  a0 31 4c d0                                      .1L.
  7878 ms  0x7024 SECKEY_CreateECPrivateKey()
  7878 ms  0x7024 cx:0x7f8ee7ac4588
  7879 ms     | 0x7024 EC_ValidatePublicKey()
  7880 ms     | 0x7024 ret:0x0
  7880 ms  0x7024 ret:0x7f8ed03ec820::7f8ed03ec820  50 3b 4c d0                                      P;L.
  7885 ms  0x7024 SSL_ImportFD()
  7885 ms  0x7024 ret:0x7f8ee75fd070
  7885 ms  0x7024 SSL_AuthCertificateHook()
  7885 ms  0x7024 fd:0x7f8ee75fd070
  7885 ms  0x7024 ret:0x0
  7886 ms  SECKEY_ECParamsToBasePointOrderLen()
  7886 ms  0x7024 ret:0x180
  7886 ms  SECKEY_ECParamsToBasePointOrderLen()
  7886 ms  0x7024 ret:0x180
  7886 ms  0x7024 EC_ValidatePublicKey()
  7887 ms  0x7024 ret:0x0
  7891 ms  0x7024 PK11_Encrypt()
  7891 ms  0x7024 symkey:0x7f8ed00de080
  7896 ms  0x7024 PR_Connect()
  7896 ms  0x7024 fd:0x7f8ee75fd070
  7900 ms  0x7024 SECKEY_CreateECPrivateKey()
  7900 ms  0x7024 cx:0x7f8ee7ac4728
  7900 ms     | 0x7024 EC_ValidatePublicKey()
  7900 ms     | 0x7024 ret:0x0
  7900 ms  0x7024 ret:0x7f8ed03f0820::7f8ed03f0820  d0 3d 4c d0                                      .=L.
  7900 ms  0x7024 SECKEY_CreateECPrivateKey()
  7900 ms  0x7024 cx:0x7f8ee7ac4728
  7901 ms     | 0x7024 EC_ValidatePublicKey()
  7902 ms     | 0x7024 ret:0x0
  7902 ms  0x7024 ret:0x7f8ed0454020::7f8ed0454020  90 32 4d d0                                      .2M.
  7905 ms  0x7024 PK11_DeriveWithFlags()
  7905 ms  0x7024 basekey:0x7f8ed0422f00
  7905 ms     | 0x7024 PK11_DeriveWithTemplate()
  7905 ms  0x7024 ret:0x7f8ed00de280
  7905 ms  0x7024 PK11_DeriveWithFlags()
  7905 ms  0x7024 basekey:0x7f8ed0422f00
  7906 ms     | 0x7024 PK11_DeriveWithTemplate()
  7906 ms  0x7024 ret:0x7f8ed00de280
  7906 ms  0x7024 PK11_Encrypt()
  7906 ms  0x7024 symkey:0x7f8ed00de600
  7934 ms  0x7024 SECKEY_CreateECPrivateKey()
  7934 ms  0x7024 cx:0x7f8ee7ac48c8
  7934 ms     | 0x7024 EC_ValidatePublicKey()
  7934 ms     | 0x7024 ret:0x0
  7934 ms  0x7024 ret:0x7f8ed0456820::7f8ed0456820  20 34 4d d0                                       4M.
  7934 ms  0x7024 SECKEY_CreateECPrivateKey()
  7934 ms  0x7024 cx:0x7f8ee7ac48c8
  7935 ms     | 0x7024 EC_ValidatePublicKey()
  7937 ms     | 0x7024 ret:0x0
  7937 ms  0x7024 ret:0x7f8ed0458820::7f8ed0458820  70 3e 4d d0                                      p>M.
  7937 ms  0x7024 PK11_Derive()
  7937 ms  0x7024 basekey:0x7f8ed00de280
  7937 ms     | 0x7024 PK11_DeriveWithTemplate()
  7937 ms  0x7024 ret:0x7f8ed00de680
  7937 ms  0x7024 PK11_PubDeriveWithKDF()
  7937 ms  0x7024 seckey:0x7f8ed0337020
  7937 ms     | 0x7024 EC_ValidatePublicKey()
  7937 ms     | 0x7024 ret:0x0
  7938 ms  0x7024 ret:0x7f8ed00de280
  7938 ms  SECKEY_ECParamsToKeySize()
  7938 ms  0x7024 ret:0xff
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ed00de680
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ed00de980
  7938 ms  0x7024 PK11_Derive()
  7938 ms  0x7024 basekey:0x7f8ed00de280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ee14eb280
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ee14eb280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ed00de680
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ee14eb280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ed00de280
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ee14eb280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ed00de980
  7938 ms  0x7024 PK11_Derive()
  7938 ms  0x7024 basekey:0x7f8ed0422980
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ee1664700
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ed00de280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ee14eb280
  7938 ms  0x7024 PK11_DeriveWithFlags()
  7938 ms  0x7024 basekey:0x7f8ed00de280
  7938 ms     | 0x7024 PK11_DeriveWithTemplate()
  7938 ms  0x7024 ret:0x7f8ed00de980
  7940 ms  0x7024 PK11_DeriveWithFlags()
  7940 ms  0x7024 basekey:0x7f8ed00de280
  7940 ms     | 0x7024 PK11_DeriveWithTemplate()
  7940 ms  0x7024 ret:0x7f8ed00de980
  7940 ms  SECKEY_ECParamsToKeySize()
  7940 ms  0x7024 ret:0xff
  7940 ms  0x7024 SECKEY_CreateECPrivateKey()
  7940 ms  0x7024 cx:0x7f8ee7ac4728
  7940 ms     | 0x7024 EC_ValidatePublicKey()
  7940 ms     | 0x7024 ret:0x0
  7940 ms  0x7024 ret:0x7f8ed0464020::7f8ed0464020  b0 b5 24 e1                                      ..$.
  7941 ms  0x7024 PK11_PubDeriveWithKDF()
  7941 ms  0x7024 seckey:0x7f8ed0464020
  7941 ms     | 0x7024 EC_ValidatePublicKey()
  7941 ms     | 0x7024 ret:0x0
  7941 ms  0x7024 ret:0x7f8ed00de980
  7941 ms  0x7024 PK11_DeriveWithFlags()
  7941 ms  0x7024 basekey:0x7f8ed00de980
  7941 ms     | 0x7024 PK11_DeriveWithTemplate()
  7941 ms  0x7024 ret:0x7f8ed0422980
  7941 ms  0x7024 PK11_Derive()
  7941 ms  0x7024 basekey:0x7f8ed0422980
  7941 ms     | 0x7024 PK11_DeriveWithTemplate()
  7941 ms  0x7024 ret:0x7f8ee1664d00
  7943 ms  0x7024 SECKEY_DestroyPrivateKey()
  7943 ms  0x7024 privk:0x7f8ed0464020::7f8ed0464020  b0 b5 24 e1                                      ..$.
  7943 ms  0x7024 privk:0x7f8ed0464020::7f8ed0464020  e5 e5 e5 e5                                      ....
  7943 ms  0x7024 PK11_Encrypt()
  7943 ms  0x7024 symkey:0x7f8ee18c3580
           /* TID 0x70c7 */
  7944 ms  0x70c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7944 ms  0x70c7 ret:0x0
           /* TID 0x7024 */
  7944 ms  0x7024 SSL_AuthCertificateComplete()
  7944 ms  0x7024 fd:0x7f8ee747fb80
  7944 ms  0x7024 err:0x0
  7944 ms  0x7024 PK11_Encrypt()
  7944 ms  0x7024 symkey:0x7f8ee18c3580
  7945 ms  0x7024 PK11_Encrypt()
  7945 ms  0x7024 symkey:0x7f8ee18c3580
  7959 ms  0x7024 SSL_ImportFD()
  7959 ms  0x7024 ret:0x7f8ee128ba00
  7959 ms  0x7024 SSL_AuthCertificateHook()
  7959 ms  0x7024 fd:0x7f8ee128ba00
  7959 ms  0x7024 ret:0x0
  7959 ms  0x7024 PR_Connect()
  7959 ms  0x7024 fd:0x7f8ee128ba00
  7969 ms  0x7024 SECKEY_DestroyPrivateKey()
  7969 ms  0x7024 privk:0x7f8ed0454020::7f8ed0454020  90 32 4d d0                                      .2M.
  7969 ms  0x7024 privk:0x7f8ed0454020::7f8ed0454020  e5 e5 e5 e5                                      ....
  7970 ms  0x7024 SECKEY_DestroyPrivateKey()
  7970 ms  0x7024 privk:0x7f8ed03f0820::7f8ed03f0820  d0 3d 4c d0                                      .=L.
  7970 ms  0x7024 privk:0x7f8ed03f0820::7f8ed03f0820  e5 e5 e5 e5                                      ....
  7970 ms  0x7024 PK11_Encrypt()
  7970 ms  0x7024 symkey:0x7f8ee18c3580
  7972 ms  0x7024 SSL_ImportFD()
  7972 ms  0x7024 ret:0x7f8ee1309c70
  7972 ms  0x7024 SSL_AuthCertificateHook()
  7972 ms  0x7024 fd:0x7f8ee1309c70
  7972 ms  0x7024 ret:0x0
  7972 ms  0x7024 PR_Connect()
  7972 ms  0x7024 fd:0x7f8ee1309c70
           /* TID 0x702c */
  7974 ms  0x702c PR_Close()
  7974 ms  0x702c fd:0x7f8ee128b1f0
           /* TID 0x7024 */
  7975 ms  0x7024 PK11_Encrypt()
  7975 ms  0x7024 symkey:0x7f8ed00de600
           /* TID 0x70c7 */
  7976 ms  SECKEY_ECParamsToBasePointOrderLen()
  7976 ms  0x70c7 ret:0x180
  7976 ms  SECKEY_ECParamsToBasePointOrderLen()
  7976 ms  0x70c7 ret:0x180
  7976 ms  0x70c7 EC_ValidatePublicKey()
  7979 ms  0x70c7 ret:0x0
  7983 ms  0x70c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7983 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7983 ms     | 0x70c7 ret:0x180
  7983 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7983 ms     | 0x70c7 ret:0x180
  7983 ms     | 0x70c7 EC_ValidatePublicKey()
           /* TID 0x7024 */
  7986 ms  SECKEY_ECParamsToKeySize()
  7986 ms  0x7024 ret:0x100
  7986 ms  SECKEY_ECParamsToBasePointOrderLen()
  7986 ms  0x7024 ret:0x100
  7986 ms  SECKEY_ECParamsToBasePointOrderLen()
  7986 ms  0x7024 ret:0x100
           /* TID 0x70c7 */
  7997 ms     | 0x70c7 ret:0x0
           /* TID 0x7024 */
  7997 ms  0x7024 EC_ValidatePublicKey()
  7999 ms  0x7024 ret:0x0
  8001 ms  SECKEY_ECParamsToKeySize()
  8001 ms  0x7024 ret:0x100
  8001 ms  0x7024 SECKEY_CreateECPrivateKey()
  8001 ms  0x7024 cx:0x7f8ee7ac48c8
  8001 ms     | 0x7024 EC_ValidatePublicKey()
  8003 ms     | 0x7024 ret:0x0
  8003 ms  0x7024 ret:0x7f8ed0459820::7f8ed0459820  b0 b5 24 e1                                      ..$.
  8003 ms  0x7024 PK11_PubDeriveWithKDF()
  8003 ms  0x7024 seckey:0x7f8ed0459820
  8003 ms     | 0x7024 EC_ValidatePublicKey()
  8004 ms     | 0x7024 ret:0x0
           /* TID 0x70c7 */
  8009 ms  0x70c7 ret:0x0
           /* TID 0x7024 */
  8023 ms  0x7024 ret:0x7f8ed00de980
  8023 ms  0x7024 PK11_DeriveWithFlags()
  8023 ms  0x7024 basekey:0x7f8ed00de980
  8023 ms     | 0x7024 PK11_DeriveWithTemplate()
  8023 ms  0x7024 ret:0x7f8ed0344680
  8023 ms  0x7024 PK11_Derive()
  8023 ms  0x7024 basekey:0x7f8ed0344680
  8023 ms     | 0x7024 PK11_DeriveWithTemplate()
  8023 ms  0x7024 ret:0x7f8ee1246a80
  8023 ms  0x7024 SECKEY_DestroyPrivateKey()
  8023 ms  0x7024 privk:0x7f8ed0459820::7f8ed0459820  b0 b5 24 e1                                      ..$.
  8023 ms  0x7024 privk:0x7f8ed0459820::7f8ed0459820  e5 e5 e5 e5                                      ....
  8023 ms  0x7024 PK11_Encrypt()
  8023 ms  0x7024 symkey:0x7f8ee1246c00
  8024 ms  0x7024 SSL_AuthCertificateComplete()
  8024 ms  0x7024 fd:0x7f8ee75fd070
  8024 ms  0x7024 err:0x0
           /* TID 0x702c */
  8025 ms  0x702c PR_Close()
  8025 ms  0x702c fd:0x7f8ee1309490
           /* TID 0x7024 */
  8025 ms  0x7024 SECKEY_CreateECPrivateKey()
  8025 ms  0x7024 cx:0x7f8ee7ac4da8
  8026 ms     | 0x7024 EC_ValidatePublicKey()
  8026 ms     | 0x7024 ret:0x0
  8026 ms  0x7024 ret:0x7f8ed03f0820::7f8ed03f0820  f0 31 4d d0                                      .1M.
  8026 ms  0x7024 SECKEY_CreateECPrivateKey()
  8026 ms  0x7024 cx:0x7f8ee7ac4da8
  8027 ms     | 0x7024 EC_ValidatePublicKey()
  8028 ms     | 0x7024 ret:0x0
  8028 ms  0x7024 ret:0x7f8ed044c020::7f8ed044c020  70 b4 24 e1                                      p.$.
  8030 ms  0x7024 SECKEY_CreateECPrivateKey()
  8030 ms  0x7024 cx:0x7f8ee7ac50e8
  8030 ms     | 0x7024 EC_ValidatePublicKey()
  8030 ms     | 0x7024 ret:0x0
  8030 ms  0x7024 ret:0x7f8ed0463820::7f8ed0463820  00 b6 24 e1                                      ..$.
  8030 ms  0x7024 SECKEY_CreateECPrivateKey()
  8030 ms  0x7024 cx:0x7f8ee7ac50e8
  8032 ms     | 0x7024 EC_ValidatePublicKey()
  8034 ms     | 0x7024 ret:0x0
  8034 ms  0x7024 ret:0x7f8ed0465820::7f8ed0465820  60 ba 24 e1                                      `.$.
  8034 ms  0x7024 SSL_ImportFD()
  8034 ms  0x7024 ret:0x7f8ee27b5550
  8034 ms  0x7024 SSL_AuthCertificateHook()
  8034 ms  0x7024 fd:0x7f8ee27b5550
  8034 ms  0x7024 ret:0x0
  8034 ms  0x7024 PR_Connect()
  8034 ms  0x7024 fd:0x7f8ee27b5550
  8035 ms  0x7024 SSL_ImportFD()
  8035 ms  0x7024 ret:0x7f8ee29b0220
  8035 ms  0x7024 SSL_AuthCertificateHook()
  8035 ms  0x7024 fd:0x7f8ee29b0220
  8035 ms  0x7024 ret:0x0
  8036 ms  0x7024 PR_Connect()
  8036 ms  0x7024 fd:0x7f8ee29b0220
  8037 ms  0x7024 SSL_ImportFD()
  8037 ms  0x7024 ret:0x7f8ee27b5190
  8037 ms  0x7024 SSL_AuthCertificateHook()
  8037 ms  0x7024 fd:0x7f8ee27b5190
  8037 ms  0x7024 ret:0x0
  8037 ms  0x7024 PR_Connect()
  8037 ms  0x7024 fd:0x7f8ee27b5190
  8060 ms  0x7024 SECKEY_DestroyPrivateKey()
  8060 ms  0x7024 privk:0x7f8ed0458820::7f8ed0458820  70 3e 4d d0                                      p>M.
  8060 ms  0x7024 privk:0x7f8ed0458820::7f8ed0458820  e5 e5 e5 e5                                      ....
  8060 ms  0x7024 SECKEY_DestroyPrivateKey()
  8060 ms  0x7024 privk:0x7f8ed0456820::7f8ed0456820  20 34 4d d0                                       4M.
  8060 ms  0x7024 privk:0x7f8ed0456820::7f8ed0456820  e5 e5 e5 e5                                      ....
  8072 ms  0x7024 SECKEY_CreateECPrivateKey()
  8072 ms  0x7024 cx:0x7f8ee7ac5288
  8073 ms     | 0x7024 EC_ValidatePublicKey()
  8073 ms     | 0x7024 ret:0x0
  8073 ms  0x7024 ret:0x7f8ed0456820::7f8ed0456820  c0 39 4d d0                                      .9M.
  8073 ms  0x7024 SECKEY_CreateECPrivateKey()
  8073 ms  0x7024 cx:0x7f8ee7ac5288
  8076 ms     | 0x7024 EC_ValidatePublicKey()
  8077 ms     | 0x7024 ret:0x0
  8077 ms  0x7024 ret:0x7f8ed0458820::7f8ed0458820  20 3e 4d d0                                       >M.
  8079 ms  0x7024 SECKEY_CreateECPrivateKey()
  8079 ms  0x7024 cx:0x7f8ee7ac5768
  8079 ms     | 0x7024 EC_ValidatePublicKey()
  8079 ms     | 0x7024 ret:0x0
  8079 ms  0x7024 ret:0x7f8ed0468820::7f8ed0468820  f0 bb 24 e1                                      ..$.
  8079 ms  0x7024 SECKEY_CreateECPrivateKey()
  8079 ms  0x7024 cx:0x7f8ee7ac5768
  8080 ms     | 0x7024 EC_ValidatePublicKey()
  8081 ms     | 0x7024 ret:0x0
  8081 ms  0x7024 ret:0x7f8ee1254020::7f8ee1254020  70 be 24 e1                                      p.$.
  8083 ms  0x7024 SECKEY_CreateECPrivateKey()
  8083 ms  0x7024 cx:0x7f8ee7ac5908
  8083 ms     | 0x7024 EC_ValidatePublicKey()
  8083 ms     | 0x7024 ret:0x0
  8083 ms  0x7024 ret:0x7f8ee1257820::7f8ee1257820  60 50 28 e1                                      `P(.
  8083 ms  0x7024 SECKEY_CreateECPrivateKey()
  8083 ms  0x7024 cx:0x7f8ee7ac5908
  8084 ms     | 0x7024 EC_ValidatePublicKey()
  8085 ms     | 0x7024 ret:0x0
  8085 ms  0x7024 ret:0x7f8ee125a020::7f8ee125a020  e0 52 28 e1                                      .R(.
  8086 ms  0x7024 PK11_Derive()
  8086 ms  0x7024 basekey:0x7f8ed00de980
  8086 ms     | 0x7024 PK11_DeriveWithTemplate()
  8086 ms  0x7024 ret:0x7f8ee1246d00
  8086 ms  0x7024 PK11_PubDeriveWithKDF()
  8086 ms  0x7024 seckey:0x7f8ed03f0820
  8086 ms     | 0x7024 EC_ValidatePublicKey()
  8086 ms     | 0x7024 ret:0x0
  8087 ms  0x7024 ret:0x7f8ed00de980
  8087 ms  SECKEY_ECParamsToKeySize()
  8087 ms  0x7024 ret:0xff
  8087 ms  0x7024 PK11_DeriveWithFlags()
  8087 ms  0x7024 basekey:0x7f8ee1246d00
  8087 ms     | 0x7024 PK11_DeriveWithTemplate()
  8087 ms  0x7024 ret:0x7f8ee1247880
  8087 ms  0x7024 PK11_Derive()
  8087 ms  0x7024 basekey:0x7f8ed00de980
  8087 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1247900
  8088 ms  0x7024 PK11_DeriveWithFlags()
  8088 ms  0x7024 basekey:0x7f8ee1247900
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1246d00
  8088 ms  0x7024 PK11_DeriveWithFlags()
  8088 ms  0x7024 basekey:0x7f8ee1247900
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ed00de980
  8088 ms  0x7024 PK11_DeriveWithFlags()
  8088 ms  0x7024 basekey:0x7f8ee1247900
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1247880
  8088 ms  0x7024 PK11_Derive()
  8088 ms  0x7024 basekey:0x7f8ee1247980
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1247d80
  8088 ms  0x7024 PK11_DeriveWithFlags()
  8088 ms  0x7024 basekey:0x7f8ed00de980
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1247900
  8088 ms  0x7024 PK11_DeriveWithFlags()
  8088 ms  0x7024 basekey:0x7f8ed00de980
  8088 ms     | 0x7024 PK11_DeriveWithTemplate()
  8088 ms  0x7024 ret:0x7f8ee1247880
  8090 ms  0x7024 PK11_DeriveWithFlags()
  8090 ms  0x7024 basekey:0x7f8ed00de980
  8090 ms     | 0x7024 PK11_DeriveWithTemplate()
  8090 ms  0x7024 ret:0x7f8ee1247880
           /* TID 0x702c */
  8092 ms  0x702c PR_Close()
  8092 ms  0x702c fd:0x7f8ee2b8c610
           /* TID 0x707f */
  8092 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8092 ms  0x707f ret:0x0
           /* TID 0x7024 */
  8092 ms  0x7024 PK11_Derive()
  8092 ms  0x7024 basekey:0x7f8ee1247880
  8092 ms     | 0x7024 PK11_DeriveWithTemplate()
  8092 ms  0x7024 ret:0x7f8ee1247980
  8092 ms  0x7024 PK11_PubDeriveWithKDF()
  8092 ms  0x7024 seckey:0x7f8ed0463820
  8092 ms     | 0x7024 EC_ValidatePublicKey()
  8092 ms     | 0x7024 ret:0x0
  8093 ms  0x7024 ret:0x7f8ee1247880
  8093 ms  SECKEY_ECParamsToKeySize()
  8093 ms  0x7024 ret:0xff
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1247980
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281380
  8093 ms  0x7024 PK11_Derive()
  8093 ms  0x7024 basekey:0x7f8ee1247880
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281400
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1281400
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1247980
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1281400
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1247880
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1281400
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281380
  8093 ms  0x7024 PK11_Derive()
  8093 ms  0x7024 basekey:0x7f8ee1281480
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281500
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1247880
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281400
  8093 ms  0x7024 PK11_DeriveWithFlags()
  8093 ms  0x7024 basekey:0x7f8ee1247880
  8093 ms     | 0x7024 PK11_DeriveWithTemplate()
  8093 ms  0x7024 ret:0x7f8ee1281380
  8094 ms  0x7024 PK11_DeriveWithFlags()
  8094 ms  0x7024 basekey:0x7f8ee1247880
  8094 ms     | 0x7024 PK11_DeriveWithTemplate()
  8094 ms  0x7024 ret:0x7f8ee1281380
  8095 ms  0x7024 SSL_AuthCertificateComplete()
  8095 ms  0x7024 fd:0x7f8ee75fbdc0
  8095 ms  0x7024 err:0x0
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ee1664700
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281380
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ee1664700
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281480
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ee1664700
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281880
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ed00de680
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281900
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ed00de680
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281980
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ee1281480
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281980
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ee1281480
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee1281a00
  8095 ms     | 0x7024 PK11_DeriveWithFlags()
  8095 ms     | 0x7024 basekey:0x7f8ed00de680
  8095 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8095 ms     | 0x7024 ret:0x7f8ee14eb280
  8095 ms     | 0x7024 PK11_Encrypt()
  8095 ms     | 0x7024 symkey:0x7f8ee1281900
  8096 ms     | 0x7024 PK11_DeriveWithFlags()
  8096 ms     | 0x7024 basekey:0x7f8ee1281380
  8096 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8096 ms     | 0x7024 ret:0x7f8ee14eb280
  8096 ms     | 0x7024 PK11_DeriveWithFlags()
  8096 ms     | 0x7024 basekey:0x7f8ee1281380
  8096 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8096 ms     | 0x7024 ret:0x7f8ee1281a00
  8096 ms     | 0x7024 PK11_DeriveWithFlags()
  8096 ms     | 0x7024 basekey:0x7f8ee1664700
  8096 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8096 ms     | 0x7024 ret:0x7f8ee1281900
  8096 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8096 ms     | 0x7024 privk:0x7f8ed03ec820::7f8ed03ec820  50 3b 4c d0                                      P;L.
  8096 ms     | 0x7024 privk:0x7f8ed03ec820::7f8ed03ec820  e5 e5 e5 e5                                      ....
  8097 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8097 ms     | 0x7024 privk:0x7f8ed0337020::7f8ed0337020  a0 31 4c d0                                      .1L.
  8097 ms     | 0x7024 privk:0x7f8ed0337020::7f8ed0337020  e5 e5 e5 e5                                      ....
  8097 ms  0x7024 PK11_Encrypt()
  8097 ms  0x7024 symkey:0x7f8ee14eb280
  8097 ms  0x7024 PK11_Encrypt()
  8097 ms  0x7024 symkey:0x7f8ee14eb280
  8119 ms  SECKEY_ECParamsToKeySize()
  8119 ms  0x7024 ret:0xff
  8119 ms  0x7024 SECKEY_CreateECPrivateKey()
  8119 ms  0x7024 cx:0x7f8ee7ac5288
  8119 ms     | 0x7024 EC_ValidatePublicKey()
  8119 ms     | 0x7024 ret:0x0
  8119 ms  0x7024 ret:0x7f8ee61d8020::7f8ee61d8020  70 5e 28 e1                                      p^(.
  8119 ms  0x7024 PK11_PubDeriveWithKDF()
  8119 ms  0x7024 seckey:0x7f8ee61d8020
  8120 ms     | 0x7024 EC_ValidatePublicKey()
  8120 ms     | 0x7024 ret:0x0
  8120 ms  0x7024 ret:0x7f8ed00de280
  8120 ms  0x7024 PK11_DeriveWithFlags()
  8120 ms  0x7024 basekey:0x7f8ed00de280
  8120 ms     | 0x7024 PK11_DeriveWithTemplate()
  8120 ms  0x7024 ret:0x7f8ed00de680
  8120 ms  0x7024 PK11_Derive()
  8120 ms  0x7024 basekey:0x7f8ed00de680
  8120 ms     | 0x7024 PK11_DeriveWithTemplate()
  8120 ms  0x7024 ret:0x7f8ee1664700
  8120 ms  0x7024 SECKEY_DestroyPrivateKey()
  8120 ms  0x7024 privk:0x7f8ee61d8020::7f8ee61d8020  70 5e 28 e1                                      p^(.
  8120 ms  0x7024 privk:0x7f8ee61d8020::7f8ee61d8020  e5 e5 e5 e5                                      ....
  8120 ms  0x7024 PK11_Encrypt()
  8120 ms  0x7024 symkey:0x7f8ee1281d80
  8123 ms  0x7024 PR_Connect()
  8123 ms  0x7024 fd:0x7f8ee47fdca0
  8130 ms  0x7024 PR_Connect()
  8130 ms  0x7024 fd:0x7f8ee47c40d0
  8131 ms  0x7024 PR_Connect()
  8131 ms  0x7024 fd:0x7f8ee2b8c640
  8133 ms  0x7024 PK11_DeriveWithFlags()
  8133 ms  0x7024 basekey:0x7f8ee1281900
  8133 ms     | 0x7024 PK11_DeriveWithTemplate()
  8133 ms  0x7024 ret:0x7f8ed00de280
  8133 ms  0x7024 PK11_DeriveWithFlags()
  8133 ms  0x7024 basekey:0x7f8ee1281900
  8133 ms     | 0x7024 PK11_DeriveWithTemplate()
  8133 ms  0x7024 ret:0x7f8ed00de280
  8133 ms  0x7024 PK11_Encrypt()
  8133 ms  0x7024 symkey:0x7f8ee14eb280
  8135 ms  0x7024 PK11_Derive()
  8135 ms  0x7024 basekey:0x7f8ed00de280
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1281a00
  8136 ms  0x7024 PK11_PubDeriveWithKDF()
  8136 ms  0x7024 seckey:0x7f8ed0468820
  8136 ms     | 0x7024 EC_ValidatePublicKey()
  8136 ms     | 0x7024 ret:0x0
  8136 ms  0x7024 ret:0x7f8ed00de280
  8136 ms  SECKEY_ECParamsToKeySize()
  8136 ms  0x7024 ret:0xff
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ee1281a00
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282400
  8136 ms  0x7024 PK11_Derive()
  8136 ms  0x7024 basekey:0x7f8ed00de280
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282480
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ee1282480
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1281a00
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ee1282480
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ed00de280
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ee1282480
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282400
  8136 ms  0x7024 PK11_Derive()
  8136 ms  0x7024 basekey:0x7f8ee1282500
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282580
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ed00de280
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282480
  8136 ms  0x7024 PK11_DeriveWithFlags()
  8136 ms  0x7024 basekey:0x7f8ed00de280
  8136 ms     | 0x7024 PK11_DeriveWithTemplate()
  8136 ms  0x7024 ret:0x7f8ee1282400
  8137 ms  SECKEY_ECParamsToKeySize()
  8137 ms  0x7024 ret:0x100
  8137 ms  SECKEY_ECParamsToBasePointOrderLen()
  8137 ms  0x7024 ret:0x100
  8137 ms  SECKEY_ECParamsToBasePointOrderLen()
  8137 ms  0x7024 ret:0x100
  8137 ms  0x7024 EC_ValidatePublicKey()
  8138 ms  0x7024 ret:0x0
  8143 ms  0x7024 PK11_DeriveWithFlags()
  8143 ms  0x7024 basekey:0x7f8ed00de280
  8143 ms     | 0x7024 PK11_DeriveWithTemplate()
  8143 ms  0x7024 ret:0x7f8ee1282400
  8143 ms  0x7024 PK11_Derive()
  8143 ms  0x7024 basekey:0x7f8ee1282400
  8143 ms     | 0x7024 PK11_DeriveWithTemplate()
  8143 ms  0x7024 ret:0x7f8ee1282500
  8143 ms  0x7024 PK11_PubDeriveWithKDF()
  8143 ms  0x7024 seckey:0x7f8ee1257820
  8143 ms     | 0x7024 EC_ValidatePublicKey()
  8143 ms     | 0x7024 ret:0x0
  8144 ms  0x7024 ret:0x7f8ee1282400
  8144 ms  SECKEY_ECParamsToKeySize()
  8144 ms  0x7024 ret:0xff
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282500
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282180
  8144 ms  0x7024 PK11_Derive()
  8144 ms  0x7024 basekey:0x7f8ee1282400
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282700
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282700
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282500
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282700
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282400
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282700
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282180
  8144 ms  0x7024 PK11_Derive()
  8144 ms  0x7024 basekey:0x7f8ee1282780
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282800
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282400
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282700
  8144 ms  0x7024 PK11_DeriveWithFlags()
  8144 ms  0x7024 basekey:0x7f8ee1282400
  8144 ms     | 0x7024 PK11_DeriveWithTemplate()
  8144 ms  0x7024 ret:0x7f8ee1282180
  8154 ms  SECKEY_ECParamsToKeySize()
  8154 ms  0x7024 ret:0x100
  8154 ms  SECKEY_ECParamsToBasePointOrderLen()
  8154 ms  0x7024 ret:0x100
  8154 ms  SECKEY_ECParamsToBasePointOrderLen()
  8154 ms  0x7024 ret:0x100
  8154 ms  0x7024 EC_ValidatePublicKey()
  8155 ms  0x7024 ret:0x0
  8158 ms  0x7024 PK11_DeriveWithFlags()
  8158 ms  0x7024 basekey:0x7f8ee1282400
  8158 ms     | 0x7024 PK11_DeriveWithTemplate()
  8158 ms  0x7024 ret:0x7f8ee1282180
  8161 ms  0x7024 SSL_AuthCertificateComplete()
  8161 ms  0x7024 fd:0x7f8ee27b5190
  8161 ms  0x7024 err:0x0
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282800
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282180
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282800
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282780
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282800
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282680
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282500
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282b00
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282500
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282b80
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282780
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282b80
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282780
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282c00
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282500
  8161 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8161 ms     | 0x7024 ret:0x7f8ee1282700
  8161 ms     | 0x7024 PK11_Encrypt()
  8161 ms     | 0x7024 symkey:0x7f8ee1282b00
  8161 ms     | 0x7024 PK11_DeriveWithFlags()
  8161 ms     | 0x7024 basekey:0x7f8ee1282180
  8162 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8162 ms     | 0x7024 ret:0x7f8ee1282700
  8162 ms     | 0x7024 PK11_DeriveWithFlags()
  8162 ms     | 0x7024 basekey:0x7f8ee1282180
  8162 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8162 ms     | 0x7024 ret:0x7f8ee1282c00
  8162 ms     | 0x7024 PK11_DeriveWithFlags()
  8162 ms     | 0x7024 basekey:0x7f8ee1282800
  8162 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8162 ms     | 0x7024 ret:0x7f8ee1282b00
  8162 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8162 ms     | 0x7024 privk:0x7f8ee125a020::7f8ee125a020  e0 52 28 e1                                      .R(.
  8162 ms     | 0x7024 privk:0x7f8ee125a020::7f8ee125a020  e5 e5 e5 e5                                      ....
  8162 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8162 ms     | 0x7024 privk:0x7f8ee1257820::7f8ee1257820  60 50 28 e1                                      `P(.
  8162 ms     | 0x7024 privk:0x7f8ee1257820::7f8ee1257820  e5 e5 e5 e5                                      ....
  8162 ms  0x7024 PK11_Encrypt()
  8162 ms  0x7024 symkey:0x7f8ee1282700
  8162 ms  0x7024 PK11_Encrypt()
  8162 ms  0x7024 symkey:0x7f8ee1282700
  8189 ms  0x7024 PK11_Encrypt()
  8189 ms  0x7024 symkey:0x7f8ee14eb280
  8195 ms  0x7024 PK11_Encrypt()
  8195 ms  0x7024 symkey:0x7f8eeb238f00
  8199 ms  0x7024 PK11_DeriveWithFlags()
  8199 ms  0x7024 basekey:0x7f8ee1282b00
  8199 ms     | 0x7024 PK11_DeriveWithTemplate()
  8199 ms  0x7024 ret:0x7f8ee1282400
  8199 ms  0x7024 PK11_DeriveWithFlags()
  8199 ms  0x7024 basekey:0x7f8ee1282b00
  8199 ms     | 0x7024 PK11_DeriveWithTemplate()
  8199 ms  0x7024 ret:0x7f8ee1282400
  8199 ms  0x7024 PK11_Encrypt()
  8199 ms  0x7024 symkey:0x7f8ee1282700
           /* TID 0x702c */
  8209 ms  0x702c PR_Close()
  8209 ms  0x702c fd:0x7f8ee473d0a0
           /* TID 0x70c8 */
  8209 ms  0x70c8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8209 ms  0x70c8 ret:0x0
           /* TID 0x7024 */
  8215 ms  0x7024 SSL_AuthCertificateComplete()
  8215 ms  0x7024 fd:0x7f8ee27b5550
  8215 ms  0x7024 err:0x0
  8215 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8215 ms     | 0x7024 privk:0x7f8ed0458820::7f8ed0458820  20 3e 4d d0                                       >M.
  8215 ms     | 0x7024 privk:0x7f8ed0458820::7f8ed0458820  e5 e5 e5 e5                                      ....
  8215 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8215 ms     | 0x7024 privk:0x7f8ed0456820::7f8ed0456820  c0 39 4d d0                                      .9M.
  8215 ms     | 0x7024 privk:0x7f8ed0456820::7f8ed0456820  e5 e5 e5 e5                                      ....
  8215 ms  0x7024 PK11_Encrypt()
  8215 ms  0x7024 symkey:0x7f8ee1281d80
  8215 ms  0x7024 PK11_Encrypt()
  8215 ms  0x7024 symkey:0x7f8ee1281d80
  8216 ms  0x7024 PK11_Encrypt()
  8216 ms  0x7024 symkey:0x7f8ee1281d80
           /* TID 0x702c */
  8222 ms  0x702c PR_Close()
  8222 ms  0x702c fd:0x7f8ee29b00d0
  8252 ms  0x702c PR_Close()
  8252 ms  0x702c fd:0x7f8ee29b00d0
           /* TID 0x707f */
  8252 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8253 ms  0x707f ret:0x0
           /* TID 0x702c */
  8264 ms  0x702c PR_Close()
  8264 ms  0x702c fd:0x7f8ee1681b80
           /* TID 0x70c7 */
  8264 ms  0x70c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8264 ms  0x70c7 ret:0x0
           /* TID 0x702c */
  8305 ms  0x702c PR_Close()
  8305 ms  0x702c fd:0x7f8ee29b0f40
           /* TID 0x70c9 */
  8305 ms  0x70c9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8305 ms  0x70c9 ret:0x0
           /* TID 0x7024 */
  8306 ms  0x7024 SSL_AuthCertificateComplete()
  8306 ms  0x7024 fd:0x7f8ee29b0220
  8306 ms  0x7024 err:0x0
  8306 ms     | 0x7024 PK11_DeriveWithFlags()
  8306 ms     | 0x7024 basekey:0x7f8ee1282580
  8306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8306 ms     | 0x7024 ret:0x7f8ee1282400
  8306 ms     | 0x7024 PK11_DeriveWithFlags()
  8306 ms     | 0x7024 basekey:0x7f8ee1282580
  8306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8306 ms     | 0x7024 ret:0x7f8ee1282500
  8306 ms     | 0x7024 PK11_DeriveWithFlags()
  8306 ms     | 0x7024 basekey:0x7f8ee1282580
  8306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282800
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1281a00
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282c00
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1281a00
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282880
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1282500
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282880
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1282500
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282980
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1281a00
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282480
  8307 ms     | 0x7024 PK11_Encrypt()
  8307 ms     | 0x7024 symkey:0x7f8ee1282c00
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1282400
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282480
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1282400
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282980
  8307 ms     | 0x7024 PK11_DeriveWithFlags()
  8307 ms     | 0x7024 basekey:0x7f8ee1282580
  8307 ms     |    | 0x7024 PK11_DeriveWithTemplate()
  8307 ms     | 0x7024 ret:0x7f8ee1282c00
  8308 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8308 ms     | 0x7024 privk:0x7f8ee1254020::7f8ee1254020  70 be 24 e1                                      p.$.
  8308 ms     | 0x7024 privk:0x7f8ee1254020::7f8ee1254020  e5 e5 e5 e5                                      ....
  8308 ms     | 0x7024 SECKEY_DestroyPrivateKey()
  8308 ms     | 0x7024 privk:0x7f8ed0468820::7f8ed0468820  f0 bb 24 e1                                      ..$.
  8308 ms     | 0x7024 privk:0x7f8ed0468820::7f8ed0468820  e5 e5 e5 e5                                      ....
  8308 ms  0x7024 PK11_Encrypt()
  8308 ms  0x7024 symkey:0x7f8ee1282480
  8309 ms  0x7024 PK11_Encrypt()
  8309 ms  0x7024 symkey:0x7f8ee1282480
  8314 ms  0x7024 PK11_Encrypt()
  8314 ms  0x7024 symkey:0x7f8eeb238f00
  8332 ms  0x7024 PK11_Encrypt()
  8332 ms  0x7024 symkey:0x7f8eeb238f00
  8335 ms  0x7024 PK11_Encrypt()
  8335 ms  0x7024 symkey:0x7f8ee1282700
           /* TID 0x702c */
  8336 ms  0x702c PR_Close()
  8336 ms  0x702c fd:0x7f8ee755d7f0
  8341 ms  0x702c PR_Close()
  8341 ms  0x702c fd:0x7f8ee2b8c0d0
           /* TID 0x7024 */
  8345 ms  0x7024 PK11_DeriveWithFlags()
  8345 ms  0x7024 basekey:0x7f8ee1282c00
  8345 ms     | 0x7024 PK11_DeriveWithTemplate()
  8345 ms  0x7024 ret:0x7f8ed00de280
  8345 ms  0x7024 PK11_DeriveWithFlags()
  8345 ms  0x7024 basekey:0x7f8ee1282c00
  8345 ms     | 0x7024 PK11_DeriveWithTemplate()
  8345 ms  0x7024 ret:0x7f8ed00de280
  8345 ms  0x7024 PK11_Encrypt()
  8345 ms  0x7024 symkey:0x7f8ee1282480
           /* TID 0x702c */
  8367 ms  0x702c PR_Close()
  8367 ms  0x702c fd:0x7f8ee29b0790
           /* TID 0x7024 */
  8402 ms  0x7024 PK11_Encrypt()
  8402 ms  0x7024 symkey:0x7f8ee1282480
  8526 ms  0x7024 PK11_Encrypt()
  8526 ms  0x7024 symkey:0x7f8ee1281d80
           /* TID 0x702c */
  8528 ms  0x702c PR_Close()
  8528 ms  0x702c fd:0x7f8ed0428e50
           /* TID 0x7024 */
  8546 ms  0x7024 SSL_ImportFD()
  8546 ms  0x7024 ret:0x7f8ee75fd130
  8546 ms  0x7024 SSL_AuthCertificateHook()
  8546 ms  0x7024 fd:0x7f8ee75fd130
  8546 ms  0x7024 ret:0x0
  8546 ms  0x7024 PR_Connect()
  8546 ms  0x7024 fd:0x7f8ee75fd130
  8605 ms  0x7024 SSL_ImportFD()
  8605 ms  0x7024 ret:0x7f8ee77021f0
  8605 ms  0x7024 SSL_AuthCertificateHook()
  8605 ms  0x7024 fd:0x7f8ee77021f0
  8605 ms  0x7024 ret:0x0
  8605 ms  0x7024 PR_Connect()
  8605 ms  0x7024 fd:0x7f8ee77021f0
  8628 ms  0x7024 SECKEY_CreateECPrivateKey()
  8628 ms  0x7024 cx:0x7f8ee7ac4248
  8629 ms     | 0x7024 EC_ValidatePublicKey()
  8629 ms     | 0x7024 ret:0x0
  8629 ms  0x7024 ret:0x7f8ee1259020::7f8ee1259020  30 bd 24 e1                                      0.$.
  8629 ms  0x7024 SECKEY_CreateECPrivateKey()
  8629 ms  0x7024 cx:0x7f8ee7ac4248
  8629 ms     | 0x7024 EC_ValidatePublicKey()
  8631 ms     | 0x7024 ret:0x0
  8631 ms  0x7024 ret:0x7f8ee144f820::7f8ee144f820  60 50 28 e1                                      `P(.
  8647 ms  0x7024 SECKEY_CreateECPrivateKey()
  8647 ms  0x7024 cx:0x7f8ee7ac6128
  8648 ms     | 0x7024 EC_ValidatePublicKey()
  8648 ms     | 0x7024 ret:0x0
  8648 ms  0x7024 ret:0x7f8ee61cd820::7f8ee61cd820  50 51 28 e1                                      PQ(.
  8648 ms  0x7024 SECKEY_CreateECPrivateKey()
  8648 ms  0x7024 cx:0x7f8ee7ac6128
  8648 ms     | 0x7024 EC_ValidatePublicKey()
  8650 ms     | 0x7024 ret:0x0
  8650 ms  0x7024 ret:0x7f8ee745b020::7f8ee745b020  f0 56 28 e1                                      .V(.
           /* TID 0x702c */
  9429 ms  0x702c PR_Close()
  9429 ms  0x702c fd:0x7f8ee2b8c160
  9429 ms  0x702c PR_Close()
  9429 ms  0x702c fd:0x7f8ee7a497c0
  9429 ms  0x702c PR_Close()
  9429 ms  0x702c fd:0x7f8ee7a49a90
  9429 ms  0x702c PR_Close()
  9429 ms  0x702c fd:0x7f8ee7a49ee0
  9429 ms  0x702c PR_Close()
  9429 ms  0x702c fd:0x7f8ee7a49f40
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee2b8c160
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a497c0
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a49a90
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a49ee0
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a49f40
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a73250
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a73430
  9430 ms  0x702c PR_Close()
  9430 ms  0x702c fd:0x7f8ee7a734f0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a737c0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73820
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73880
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73910
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73970
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a739d0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73a30
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a73a90
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a84070
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a84220
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a842e0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a846d0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a84850
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7a84fa0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abc5e0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abc640
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abc6a0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abc700
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abc790
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abce80
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abcee0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7abcf40
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b14100
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b14280
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b142e0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b14340
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b14730
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b807f0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80880
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b808e0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80940
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b809a0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80a00
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80a60
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80ac0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80b20
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80c70
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80d30
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80e50
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80ee0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7b80f40
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be51f0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be5790
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be57f0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be5850
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be58b0
  9431 ms  0x702c PR_Close()
  9431 ms  0x702c fd:0x7f8ee7be5910
           /* TID 0x7024 */
 10268 ms  SECKEY_ECParamsToKeySize()
 10268 ms  0x7024 ret:0x100
 10268 ms  0x7024 SECKEY_CreateECPrivateKey()
 10268 ms  0x7024 cx:0x7f8ee7ac6128
 10269 ms     | 0x7024 EC_ValidatePublicKey()
 10272 ms     | 0x7024 ret:0x0
 10272 ms  0x7024 ret:0x7f8ee78d9020::7f8ee78d9020  b0 ef 46 e1                                      ..F.
 10272 ms  0x7024 PK11_PubDeriveWithKDF()
 10272 ms  0x7024 seckey:0x7f8ee78d9020
 10272 ms     | 0x7024 EC_ValidatePublicKey()
 10275 ms     | 0x7024 ret:0x0
 10282 ms  0x7024 ret:0x7f8ed00de280
 10282 ms  0x7024 PK11_DeriveWithFlags()
 10282 ms  0x7024 basekey:0x7f8ed00de280
 10282 ms     | 0x7024 PK11_DeriveWithTemplate()
 10282 ms  0x7024 ret:0x7f8ee1281a00
 10282 ms  0x7024 PK11_Derive()
 10282 ms  0x7024 basekey:0x7f8ee1281a00
 10282 ms     | 0x7024 PK11_DeriveWithTemplate()
 10282 ms  0x7024 ret:0x7f8ee1282580
 10282 ms  0x7024 SECKEY_DestroyPrivateKey()
 10282 ms  0x7024 privk:0x7f8ee78d9020::7f8ee78d9020  b0 ef 46 e1                                      ..F.
 10282 ms  0x7024 privk:0x7f8ee78d9020::7f8ee78d9020  e5 e5 e5 e5                                      ....
 10283 ms  0x7024 PK11_Encrypt()
 10283 ms  0x7024 symkey:0x7f8ee27c8580
 10285 ms  0x7024 PK11_Encrypt()
 10285 ms  0x7024 symkey:0x7f8eeb238f00
 10286 ms  0x7024 PK11_Encrypt()
 10286 ms  0x7024 symkey:0x7f8eeb238f00
 10287 ms  0x7024 PK11_Encrypt()
 10287 ms  0x7024 symkey:0x7f8eeb238f00
 10288 ms  0x7024 PK11_Encrypt()
 10288 ms  0x7024 symkey:0x7f8eeb238f00
 10289 ms  0x7024 PK11_Encrypt()
 10289 ms  0x7024 symkey:0x7f8eeb238f00
 10290 ms  0x7024 PK11_Encrypt()
 10290 ms  0x7024 symkey:0x7f8eeb238f00
 10290 ms  0x7024 SSL_AuthCertificateComplete()
 10290 ms  0x7024 fd:0x7f8ee128ba00
 10290 ms  0x7024 err:0x0
 10290 ms     | 0x7024 PK11_DeriveWithFlags()
 10290 ms     | 0x7024 basekey:0x7f8ee1247d80
 10290 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ed00de280
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1247d80
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee1282980
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1247d80
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee27c8a00
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1246d00
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee27c8c80
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1246d00
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee27c8d00
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1282980
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee27c8d00
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1282980
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee27c8d80
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ee1246d00
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10291 ms     | 0x7024 ret:0x7f8ee1247900
 10291 ms     | 0x7024 PK11_Encrypt()
 10291 ms     | 0x7024 symkey:0x7f8ee27c8c80
 10291 ms     | 0x7024 PK11_DeriveWithFlags()
 10291 ms     | 0x7024 basekey:0x7f8ed00de280
 10291 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10292 ms     | 0x7024 ret:0x7f8ee1247900
 10292 ms     | 0x7024 PK11_DeriveWithFlags()
 10292 ms     | 0x7024 basekey:0x7f8ed00de280
 10292 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10292 ms     | 0x7024 ret:0x7f8ee27c8d80
 10292 ms     | 0x7024 PK11_DeriveWithFlags()
 10292 ms     | 0x7024 basekey:0x7f8ee1247d80
 10292 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10292 ms     | 0x7024 ret:0x7f8ee27c8c80
 10292 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10292 ms     | 0x7024 privk:0x7f8ed044c020::7f8ed044c020  70 b4 24 e1                                      p.$.
 10292 ms     | 0x7024 privk:0x7f8ed044c020::7f8ed044c020  e5 e5 e5 e5                                      ....
 10293 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10293 ms     | 0x7024 privk:0x7f8ed03f0820::7f8ed03f0820  f0 31 4d d0                                      .1M.
 10293 ms     | 0x7024 privk:0x7f8ed03f0820::7f8ed03f0820  e5 e5 e5 e5                                      ....
 10294 ms  0x7024 SSL_AuthCertificateComplete()
 10294 ms  0x7024 fd:0x7f8ee1309c70
 10294 ms  0x7024 err:0x0
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1281500
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ed00de980
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1281500
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee1246d00
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1281500
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee1247d80
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1247980
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee27c8d80
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1247980
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee27c8e00
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1246d00
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee27c8e00
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1246d00
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee27c8e80
 10294 ms     | 0x7024 PK11_DeriveWithFlags()
 10294 ms     | 0x7024 basekey:0x7f8ee1247980
 10294 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10294 ms     | 0x7024 ret:0x7f8ee1281400
 10294 ms     | 0x7024 PK11_Encrypt()
 10294 ms     | 0x7024 symkey:0x7f8ee27c8d80
 10296 ms     | 0x7024 PK11_DeriveWithFlags()
 10296 ms     | 0x7024 basekey:0x7f8ed00de980
 10296 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10296 ms     | 0x7024 ret:0x7f8ee1281400
 10296 ms     | 0x7024 PK11_DeriveWithFlags()
 10296 ms     | 0x7024 basekey:0x7f8ed00de980
 10296 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10296 ms     | 0x7024 ret:0x7f8ee27c8e80
 10297 ms     | 0x7024 PK11_DeriveWithFlags()
 10297 ms     | 0x7024 basekey:0x7f8ee1281500
 10297 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10297 ms     | 0x7024 ret:0x7f8ee27c8d80
 10297 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10297 ms     | 0x7024 privk:0x7f8ed0465820::7f8ed0465820  60 ba 24 e1                                      `.$.
 10297 ms     | 0x7024 privk:0x7f8ed0465820::7f8ed0465820  e5 e5 e5 e5                                      ....
 10297 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10297 ms     | 0x7024 privk:0x7f8ed0463820::7f8ed0463820  00 b6 24 e1                                      ..$.
 10297 ms     | 0x7024 privk:0x7f8ed0463820::7f8ed0463820  e5 e5 e5 e5                                      ....
 10299 ms  0x7024 PK11_Encrypt()
 10299 ms  0x7024 symkey:0x7f8ee1247900
 10299 ms  0x7024 PK11_Encrypt()
 10299 ms  0x7024 symkey:0x7f8ee1247900
 10300 ms  0x7024 PK11_Encrypt()
 10300 ms  0x7024 symkey:0x7f8ee1281400
 10300 ms  0x7024 PK11_Encrypt()
 10300 ms  0x7024 symkey:0x7f8ee1281400
           /* TID 0x70c8 */
 10302 ms  0x70c8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10302 ms  0x70c8 ret:0x0
           /* TID 0x7024 */
 10305 ms  SECKEY_ECParamsToKeySize()
 10305 ms  0x7024 ret:0x100
 10305 ms  0x7024 SECKEY_CreateECPrivateKey()
 10305 ms  0x7024 cx:0x7f8ee7ac4248
 10306 ms     | 0x7024 EC_ValidatePublicKey()
 10310 ms     | 0x7024 ret:0x0
 10310 ms  0x7024 ret:0x7f8ee7b9e820::7f8ee7b9e820  a0 b6 24 e1                                      ..$.
 10310 ms  0x7024 PK11_PubDeriveWithKDF()
 10310 ms  0x7024 seckey:0x7f8ee7b9e820
 10310 ms     | 0x7024 EC_ValidatePublicKey()
 10313 ms     | 0x7024 ret:0x0
 10315 ms  0x7024 ret:0x7f8ee1247880
 10315 ms  0x7024 PK11_DeriveWithFlags()
 10315 ms  0x7024 basekey:0x7f8ee1247880
 10315 ms     | 0x7024 PK11_DeriveWithTemplate()
 10315 ms  0x7024 ret:0x7f8ee1247980
 10315 ms  0x7024 PK11_Derive()
 10315 ms  0x7024 basekey:0x7f8ee1247980
 10315 ms     | 0x7024 PK11_DeriveWithTemplate()
 10315 ms  0x7024 ret:0x7f8ee1281500
 10315 ms  0x7024 SECKEY_DestroyPrivateKey()
 10315 ms  0x7024 privk:0x7f8ee7b9e820::7f8ee7b9e820  a0 b6 24 e1                                      ..$.
 10315 ms  0x7024 privk:0x7f8ee7b9e820::7f8ee7b9e820  e5 e5 e5 e5                                      ....
 10315 ms  0x7024 PK11_Encrypt()
 10315 ms  0x7024 symkey:0x7f8ee27d5b00
 10315 ms  0x7024 PK11_Encrypt()
 10315 ms  0x7024 symkey:0x7f8ee1281400
 10316 ms  0x7024 SSL_AuthCertificateComplete()
 10316 ms  0x7024 fd:0x7f8ee75fd130
 10316 ms  0x7024 err:0x0
           /* TID 0x702c */
 10318 ms  0x702c PR_Close()
 10318 ms  0x702c fd:0x7f8ee7527a00
           /* TID 0x7024 */
 10319 ms  0x7024 PK11_Encrypt()
 10319 ms  0x7024 symkey:0x7f8eeb238f00
 10325 ms  0x7024 PK11_Encrypt()
 10325 ms  0x7024 symkey:0x7f8eeb238f00
 10325 ms  0x7024 PK11_Encrypt()
 10325 ms  0x7024 symkey:0x7f8ee27d5b00
           /* TID 0x70c7 */
 10326 ms  0x70c7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10326 ms  0x70c7 ret:0x0
           /* TID 0x702c */
 10327 ms  0x702c PR_Close()
 10327 ms  0x702c fd:0x7f8ee7527a00
           /* TID 0x7024 */
 10329 ms  0x7024 PK11_Encrypt()
 10329 ms  0x7024 symkey:0x7f8eeb238f00
 10333 ms  0x7024 SSL_AuthCertificateComplete()
 10333 ms  0x7024 fd:0x7f8ee77021f0
 10333 ms  0x7024 err:0x0
 10333 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10333 ms     | 0x7024 privk:0x7f8ee745b020::7f8ee745b020  f0 56 28 e1                                      .V(.
 10333 ms     | 0x7024 privk:0x7f8ee745b020::7f8ee745b020  e5 e5 e5 e5                                      ....
 10333 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10333 ms     | 0x7024 privk:0x7f8ee61cd820::7f8ee61cd820  50 51 28 e1                                      PQ(.
 10333 ms     | 0x7024 privk:0x7f8ee61cd820::7f8ee61cd820  e5 e5 e5 e5                                      ....
 10334 ms  0x7024 PK11_Encrypt()
 10334 ms  0x7024 symkey:0x7f8ee27c8580
           /* TID 0x702c */
 10338 ms  0x702c PR_Close()
 10338 ms  0x702c fd:0x7f8ee128b040
 10340 ms  0x702c PR_Close()
 10340 ms  0x702c fd:0x7f8ee128b040
 10342 ms  0x702c PR_Close()
 10342 ms  0x702c fd:0x7f8ee128b040
 10345 ms  0x702c PR_Close()
 10345 ms  0x702c fd:0x7f8ee128b040
 10346 ms  0x702c PR_Close()
 10346 ms  0x702c fd:0x7f8ee128b040
           /* TID 0x7024 */
 10347 ms  0x7024 PK11_DeriveWithFlags()
 10347 ms  0x7024 basekey:0x7f8ee27c8d80
 10347 ms     | 0x7024 PK11_DeriveWithTemplate()
 10347 ms  0x7024 ret:0x7f8ee1247880
 10347 ms  0x7024 PK11_DeriveWithFlags()
 10347 ms  0x7024 basekey:0x7f8ee27c8d80
 10347 ms     | 0x7024 PK11_DeriveWithTemplate()
 10347 ms  0x7024 ret:0x7f8ee1247880
 10347 ms  0x7024 PK11_Encrypt()
 10347 ms  0x7024 symkey:0x7f8ee1281400
 10359 ms  0x7024 PK11_DeriveWithFlags()
 10359 ms  0x7024 basekey:0x7f8ee27c8c80
 10359 ms     | 0x7024 PK11_DeriveWithTemplate()
 10359 ms  0x7024 ret:0x7f8ee1247880
 10359 ms  0x7024 PK11_DeriveWithFlags()
 10359 ms  0x7024 basekey:0x7f8ee27c8c80
 10359 ms     | 0x7024 PK11_DeriveWithTemplate()
 10359 ms  0x7024 ret:0x7f8ee1247880
 10359 ms  0x7024 PK11_Encrypt()
 10359 ms  0x7024 symkey:0x7f8ee1247900
           /* TID 0x702c */
 10365 ms  0x702c PR_Close()
 10365 ms  0x702c fd:0x7f8ee14fe160
 10367 ms  0x702c PR_Close()
 10367 ms  0x702c fd:0x7f8ee14fe160
 10369 ms  0x702c PR_Close()
 10369 ms  0x702c fd:0x7f8ee14fe160
 10377 ms  0x702c PR_Close()
 10377 ms  0x702c fd:0x7f8ee14fe160
           /* TID 0x7024 */
 10398 ms  0x7024 SECKEY_DestroyPrivateKey()
 10398 ms  0x7024 privk:0x7f8ee144f820::7f8ee144f820  60 50 28 e1                                      `P(.
 10398 ms  0x7024 privk:0x7f8ee144f820::7f8ee144f820  e5 e5 e5 e5                                      ....
 10398 ms  0x7024 SECKEY_DestroyPrivateKey()
 10398 ms  0x7024 privk:0x7f8ee1259020::7f8ee1259020  30 bd 24 e1                                      0.$.
 10398 ms  0x7024 privk:0x7f8ee1259020::7f8ee1259020  e5 e5 e5 e5                                      ....
 10411 ms  0x7024 SSL_ImportFD()
 10411 ms  0x7024 ret:0x7f8ee7a499a0
 10411 ms  0x7024 SSL_AuthCertificateHook()
 10411 ms  0x7024 fd:0x7f8ee7a499a0
 10411 ms  0x7024 ret:0x0
 10412 ms  0x7024 PR_Connect()
 10412 ms  0x7024 fd:0x7f8ee7a499a0
 10412 ms  0x7024 SSL_ImportFD()
 10412 ms  0x7024 ret:0x7f8ee7a49190
 10412 ms  0x7024 SSL_AuthCertificateHook()
 10412 ms  0x7024 fd:0x7f8ee7a49190
 10412 ms  0x7024 ret:0x0
 10412 ms  0x7024 PR_Connect()
 10412 ms  0x7024 fd:0x7f8ee7a49190
           /* TID 0x702c */
 10413 ms  0x702c PR_Close()
 10413 ms  0x702c fd:0x7f8ee7731a90
           /* TID 0x7024 */
 10438 ms  0x7024 SSL_ImportFD()
 10438 ms  0x7024 ret:0x7f8ee7702430
 10438 ms  0x7024 SSL_AuthCertificateHook()
 10438 ms  0x7024 fd:0x7f8ee7702430
 10438 ms  0x7024 ret:0x0
 10438 ms  0x7024 PR_Connect()
 10438 ms  0x7024 fd:0x7f8ee7702430
 10464 ms  0x7024 SECKEY_CreateECPrivateKey()
 10464 ms  0x7024 cx:0x7f8ee7ac6e28
 10464 ms     | 0x7024 EC_ValidatePublicKey()
 10464 ms     | 0x7024 ret:0x0
 10464 ms  0x7024 ret:0x7f8ee125a020::7f8ee125a020  60 ba 24 e1                                      `.$.
 10465 ms  0x7024 SECKEY_CreateECPrivateKey()
 10465 ms  0x7024 cx:0x7f8ee7ac6e28
 10465 ms     | 0x7024 EC_ValidatePublicKey()
 10468 ms     | 0x7024 ret:0x0
 10468 ms  0x7024 ret:0x7f8ee1451020::7f8ee1451020  e0 b7 24 e1                                      ..$.
 10469 ms  0x7024 SECKEY_CreateECPrivateKey()
 10469 ms  0x7024 cx:0x7f8ee7ac5428
 10470 ms     | 0x7024 EC_ValidatePublicKey()
 10470 ms     | 0x7024 ret:0x0
 10470 ms  0x7024 ret:0x7f8ee7453020::7f8ee7453020  20 be 24 e1                                       .$.
 10470 ms  0x7024 SECKEY_CreateECPrivateKey()
 10470 ms  0x7024 cx:0x7f8ee7ac5428
 10470 ms     | 0x7024 EC_ValidatePublicKey()
 10472 ms     | 0x7024 ret:0x0
 10472 ms  0x7024 ret:0x7f8ee78d2820::7f8ee78d2820  f0 51 28 e1                                      .Q(.
 10472 ms  0x7024 SECKEY_CreateECPrivateKey()
 10472 ms  0x7024 cx:0x7f8ee7ac6fc8
 10473 ms     | 0x7024 EC_ValidatePublicKey()
 10473 ms     | 0x7024 ret:0x0
 10473 ms  0x7024 ret:0x7f8ee78d9020::7f8ee78d9020  60 55 28 e1                                      `U(.
 10473 ms  0x7024 SECKEY_CreateECPrivateKey()
 10473 ms  0x7024 cx:0x7f8ee7ac6fc8
 10473 ms     | 0x7024 EC_ValidatePublicKey()
 10475 ms     | 0x7024 ret:0x0
 10475 ms  0x7024 ret:0x7f8ee78ed820::7f8ee78ed820  00 5b 28 e1                                      .[(.
 10479 ms  0x7024 SSL_ImportFD()
 10479 ms  0x7024 ret:0x7f8ee7a49fa0
 10479 ms  0x7024 SSL_AuthCertificateHook()
 10479 ms  0x7024 fd:0x7f8ee7a49fa0
 10479 ms  0x7024 ret:0x0
 10480 ms  0x7024 PR_Connect()
 10480 ms  0x7024 fd:0x7f8ee7a49fa0
 10482 ms  0x7024 PK11_Encrypt()
 10482 ms  0x7024 symkey:0x7f8ee27d5b00
           /* TID 0x70c9 */
 10526 ms  0x70c9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10526 ms  0x70c9 ret:0x0
           /* TID 0x7024 */
 10526 ms  SECKEY_ECParamsToKeySize()
 10526 ms  0x7024 ret:0x100
 10526 ms  0x7024 SECKEY_CreateECPrivateKey()
 10526 ms  0x7024 cx:0x7f8ee7ac6fc8
 10527 ms     | 0x7024 EC_ValidatePublicKey()
 10529 ms     | 0x7024 ret:0x0
 10529 ms  0x7024 ret:0x7f8ee7ba5020::7f8ee7ba5020  30 4d 30 e1                                      0M0.
 10529 ms  0x7024 PK11_PubDeriveWithKDF()
 10529 ms  0x7024 seckey:0x7f8ee7ba5020
 10529 ms     | 0x7024 EC_ValidatePublicKey()
 10531 ms     | 0x7024 ret:0x0
 10538 ms  0x7024 ret:0x7f8ee1247880
 10538 ms  0x7024 PK11_DeriveWithFlags()
 10538 ms  0x7024 basekey:0x7f8ee1247880
 10538 ms     | 0x7024 PK11_DeriveWithTemplate()
 10538 ms  0x7024 ret:0x7f8ee27c8e80
 10538 ms  0x7024 PK11_Derive()
 10538 ms  0x7024 basekey:0x7f8ee27c8e80
 10538 ms     | 0x7024 PK11_DeriveWithTemplate()
 10538 ms  0x7024 ret:0x7f8ee2b9e700
 10538 ms  0x7024 SECKEY_DestroyPrivateKey()
 10538 ms  0x7024 privk:0x7f8ee7ba5020::7f8ee7ba5020  30 4d 30 e1                                      0M0.
 10538 ms  0x7024 privk:0x7f8ee7ba5020::7f8ee7ba5020  e5 e5 e5 e5                                      ....
 10538 ms  0x7024 PK11_Encrypt()
 10538 ms  0x7024 symkey:0x7f8ee2b9ea00
 10538 ms  0x7024 SSL_AuthCertificateComplete()
 10538 ms  0x7024 fd:0x7f8ee7702430
 10538 ms  0x7024 err:0x0
 10539 ms  0x7024 PK11_Encrypt()
 10539 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
 10539 ms  0x702c PR_Close()
 10539 ms  0x702c fd:0x7f8ee755d5e0
           /* TID 0x7024 */
 10542 ms  0x7024 PK11_Derive()
 10542 ms  0x7024 basekey:0x7f8ee1247880
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2925580
 10542 ms  0x7024 PK11_PubDeriveWithKDF()
 10542 ms  0x7024 seckey:0x7f8ee125a020
 10542 ms     | 0x7024 EC_ValidatePublicKey()
 10542 ms     | 0x7024 ret:0x0
 10542 ms  0x7024 ret:0x7f8ee1247880
 10542 ms  SECKEY_ECParamsToKeySize()
 10542 ms  0x7024 ret:0xff
 10542 ms  0x7024 PK11_DeriveWithFlags()
 10542 ms  0x7024 basekey:0x7f8ee2925580
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2b9ec80
 10542 ms  0x7024 PK11_Derive()
 10542 ms  0x7024 basekey:0x7f8ee1247880
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2b9ed00
 10542 ms  0x7024 PK11_DeriveWithFlags()
 10542 ms  0x7024 basekey:0x7f8ee2b9ed00
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2925580
 10542 ms  0x7024 PK11_DeriveWithFlags()
 10542 ms  0x7024 basekey:0x7f8ee2b9ed00
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee1247880
 10542 ms  0x7024 PK11_DeriveWithFlags()
 10542 ms  0x7024 basekey:0x7f8ee2b9ed00
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2b9ec80
 10542 ms  0x7024 PK11_Derive()
 10542 ms  0x7024 basekey:0x7f8ee2b9ee00
 10542 ms     | 0x7024 PK11_DeriveWithTemplate()
 10542 ms  0x7024 ret:0x7f8ee2b9ee80
 10543 ms  0x7024 PK11_DeriveWithFlags()
 10543 ms  0x7024 basekey:0x7f8ee1247880
 10543 ms     | 0x7024 PK11_DeriveWithTemplate()
 10543 ms  0x7024 ret:0x7f8ee2b9ed00
 10543 ms  0x7024 PK11_DeriveWithFlags()
 10543 ms  0x7024 basekey:0x7f8ee1247880
 10543 ms     | 0x7024 PK11_DeriveWithTemplate()
 10543 ms  0x7024 ret:0x7f8ee2b9ec80
 10544 ms  0x7024 PK11_DeriveWithFlags()
 10544 ms  0x7024 basekey:0x7f8ee1247880
 10544 ms     | 0x7024 PK11_DeriveWithTemplate()
 10544 ms  0x7024 ret:0x7f8ee2b9ec80
 10544 ms  0x7024 PK11_Derive()
 10544 ms  0x7024 basekey:0x7f8ee2b9ec80
 10544 ms     | 0x7024 PK11_DeriveWithTemplate()
 10544 ms  0x7024 ret:0x7f8ee2b9ee00
 10544 ms  0x7024 PK11_PubDeriveWithKDF()
 10544 ms  0x7024 seckey:0x7f8ee7453020
 10544 ms     | 0x7024 EC_ValidatePublicKey()
 10544 ms     | 0x7024 ret:0x0
 10545 ms  0x7024 ret:0x7f8ee2b9ec80
 10545 ms  SECKEY_ECParamsToKeySize()
 10545 ms  0x7024 ret:0xff
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9ee00
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9f400
 10545 ms  0x7024 PK11_Derive()
 10545 ms  0x7024 basekey:0x7f8ee2b9ec80
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9f900
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9f900
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9ee00
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9f900
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9ec80
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9f900
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9f400
 10545 ms  0x7024 PK11_Derive()
 10545 ms  0x7024 basekey:0x7f8ee2b9fb00
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9fc00
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9ec80
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9f900
 10545 ms  0x7024 PK11_DeriveWithFlags()
 10545 ms  0x7024 basekey:0x7f8ee2b9ec80
 10545 ms     | 0x7024 PK11_DeriveWithTemplate()
 10545 ms  0x7024 ret:0x7f8ee2b9f400
 10550 ms  0x7024 PK11_DeriveWithFlags()
 10550 ms  0x7024 basekey:0x7f8ee2b9ec80
 10550 ms     | 0x7024 PK11_DeriveWithTemplate()
 10550 ms  0x7024 ret:0x7f8ee2b9f400
 10550 ms  0x7024 PK11_Encrypt()
 10550 ms  0x7024 symkey:0x7f8ee2b9ea00
 10550 ms  0x7024 PK11_Encrypt()
 10550 ms  0x7024 symkey:0x7f8ee2b9ea00
 10564 ms  0x7024 SECKEY_DestroyPrivateKey()
 10564 ms  0x7024 privk:0x7f8ee78ed820::7f8ee78ed820  00 5b 28 e1                                      .[(.
 10564 ms  0x7024 privk:0x7f8ee78ed820::7f8ee78ed820  e5 e5 e5 e5                                      ....
 10564 ms  0x7024 SECKEY_DestroyPrivateKey()
 10564 ms  0x7024 privk:0x7f8ee78d9020::7f8ee78d9020  60 55 28 e1                                      `U(.
 10564 ms  0x7024 privk:0x7f8ee78d9020::7f8ee78d9020  e5 e5 e5 e5                                      ....
 10564 ms  0x7024 PK11_Encrypt()
 10564 ms  0x7024 symkey:0x7f8ee2b9ea00
           /* TID 0x702c */
 10566 ms  0x702c PR_Close()
 10566 ms  0x702c fd:0x7f8ee7a842b0
 10573 ms  0x702c PR_Close()
 10573 ms  0x702c fd:0x7f8ee755d580
           /* TID 0x7024 */
 10580 ms  0x7024 PK11_Encrypt()
 10580 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
 10596 ms  0x702c PR_Close()
 10596 ms  0x702c fd:0x7f8ee75fd1f0
 10607 ms  0x702c PR_Close()
 10607 ms  0x702c fd:0x7f8ee755d580
 10613 ms  0x702c PR_Close()
 10613 ms  0x702c fd:0x7f8ee755d580
           /* TID 0x70ca */
 10613 ms  0x70ca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10613 ms  0x70ca ret:0x0
           /* TID 0x7024 */
 10613 ms  0x7024 SSL_AuthCertificateComplete()
 10613 ms  0x7024 fd:0x7f8ee7a49190
 10613 ms  0x7024 err:0x0
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9ee80
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9f400
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9ee80
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9fb00
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9ee80
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9f000
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2925580
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9f180
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2925580
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9f380
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9fb00
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9f380
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9fb00
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee3417680
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2925580
 10613 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10613 ms     | 0x7024 ret:0x7f8ee2b9ed00
 10613 ms     | 0x7024 PK11_Encrypt()
 10613 ms     | 0x7024 symkey:0x7f8ee2b9f180
 10613 ms     | 0x7024 PK11_DeriveWithFlags()
 10613 ms     | 0x7024 basekey:0x7f8ee2b9f400
 10614 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10614 ms     | 0x7024 ret:0x7f8ee2b9ed00
 10614 ms     | 0x7024 PK11_DeriveWithFlags()
 10614 ms     | 0x7024 basekey:0x7f8ee2b9f400
 10614 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10614 ms     | 0x7024 ret:0x7f8ee3417680
 10614 ms     | 0x7024 PK11_DeriveWithFlags()
 10614 ms     | 0x7024 basekey:0x7f8ee2b9ee80
 10614 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10614 ms     | 0x7024 ret:0x7f8ee2b9f180
 10614 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10614 ms     | 0x7024 privk:0x7f8ee1451020::7f8ee1451020  e0 b7 24 e1                                      ..$.
 10614 ms     | 0x7024 privk:0x7f8ee1451020::7f8ee1451020  e5 e5 e5 e5                                      ....
 10614 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10614 ms     | 0x7024 privk:0x7f8ee125a020::7f8ee125a020  60 ba 24 e1                                      `.$.
 10614 ms     | 0x7024 privk:0x7f8ee125a020::7f8ee125a020  e5 e5 e5 e5                                      ....
 10614 ms  0x7024 PK11_Encrypt()
 10614 ms  0x7024 symkey:0x7f8ee2b9ed00
 10614 ms  0x7024 PK11_Encrypt()
 10614 ms  0x7024 symkey:0x7f8ee2b9ed00
           /* TID 0x702c */
 10617 ms  0x702c PR_Close()
 10617 ms  0x702c fd:0x7f8ee75fd1f0
           /* TID 0x707f */
 10617 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10618 ms  0x707f ret:0x0
           /* TID 0x7024 */
 10618 ms  0x7024 SSL_AuthCertificateComplete()
 10618 ms  0x7024 fd:0x7f8ee7a499a0
 10618 ms  0x7024 err:0x0
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9fc00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee1247880
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9fc00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2925580
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9fc00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2b9ee80
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9ee00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee3417680
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9ee00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2b7a580
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2925580
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2b7a580
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2925580
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2bf1f80
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9ee00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2b9f900
 10618 ms     | 0x7024 PK11_Encrypt()
 10618 ms     | 0x7024 symkey:0x7f8ee3417680
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee1247880
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2b9f900
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee1247880
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee2bf1f80
 10618 ms     | 0x7024 PK11_DeriveWithFlags()
 10618 ms     | 0x7024 basekey:0x7f8ee2b9fc00
 10618 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10618 ms     | 0x7024 ret:0x7f8ee3417680
 10618 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10618 ms     | 0x7024 privk:0x7f8ee78d2820::7f8ee78d2820  f0 51 28 e1                                      .Q(.
 10619 ms     | 0x7024 privk:0x7f8ee78d2820::7f8ee78d2820  e5 e5 e5 e5                                      ....
 10619 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10619 ms     | 0x7024 privk:0x7f8ee7453020::7f8ee7453020  20 be 24 e1                                       .$.
 10619 ms     | 0x7024 privk:0x7f8ee7453020::7f8ee7453020  e5 e5 e5 e5                                      ....
 10619 ms  0x7024 PK11_Encrypt()
 10619 ms  0x7024 symkey:0x7f8ee2b9f900
 10619 ms  0x7024 PK11_Encrypt()
 10619 ms  0x7024 symkey:0x7f8ee2b9f900
 10620 ms  0x7024 SECKEY_CreateECPrivateKey()
 10620 ms  0x7024 cx:0x7f8ee7ac7168
 10620 ms     | 0x7024 EC_ValidatePublicKey()
 10620 ms     | 0x7024 ret:0x0
 10620 ms  0x7024 ret:0x7f8ee61ce820::7f8ee61ce820  d0 b8 24 e1                                      ..$.
 10620 ms  0x7024 SECKEY_CreateECPrivateKey()
 10620 ms  0x7024 cx:0x7f8ee7ac7168
 10621 ms     | 0x7024 EC_ValidatePublicKey()
 10622 ms     | 0x7024 ret:0x0
 10622 ms  0x7024 ret:0x7f8ee78d2020::7f8ee78d2020  90 bc 24 e1                                      ..$.
 10656 ms  0x7024 SSL_ImportFD()
 10656 ms  0x7024 ret:0x7f8ee7b80940
 10656 ms  0x7024 SSL_AuthCertificateHook()
 10656 ms  0x7024 fd:0x7f8ee7b80940
 10656 ms  0x7024 ret:0x0
 10656 ms  0x7024 PR_Connect()
 10656 ms  0x7024 fd:0x7f8ee7b80940
 10666 ms  0x7024 PK11_DeriveWithFlags()
 10666 ms  0x7024 basekey:0x7f8ee2b9f180
 10666 ms     | 0x7024 PK11_DeriveWithTemplate()
 10666 ms  0x7024 ret:0x7f8ee2b9ec80
 10666 ms  0x7024 PK11_DeriveWithFlags()
 10666 ms  0x7024 basekey:0x7f8ee2b9f180
 10666 ms     | 0x7024 PK11_DeriveWithTemplate()
 10666 ms  0x7024 ret:0x7f8ee2b9ec80
 10666 ms  0x7024 PK11_Encrypt()
 10666 ms  0x7024 symkey:0x7f8ee2b9ed00
 10671 ms  0x7024 PK11_Encrypt()
 10671 ms  0x7024 symkey:0x7f8eeb238f00
 10671 ms  0x7024 PK11_DeriveWithFlags()
 10671 ms  0x7024 basekey:0x7f8ee3417680
 10671 ms     | 0x7024 PK11_DeriveWithTemplate()
 10671 ms  0x7024 ret:0x7f8ee2b9ec80
 10671 ms  0x7024 PK11_DeriveWithFlags()
 10671 ms  0x7024 basekey:0x7f8ee3417680
 10671 ms     | 0x7024 PK11_DeriveWithTemplate()
 10671 ms  0x7024 ret:0x7f8ee2b9ec80
 10671 ms  0x7024 PK11_Encrypt()
 10671 ms  0x7024 symkey:0x7f8ee2b9f900
 10698 ms  0x7024 SECKEY_CreateECPrivateKey()
 10698 ms  0x7024 cx:0x7f8ee7ac7988
 10698 ms     | 0x7024 EC_ValidatePublicKey()
 10698 ms     | 0x7024 ret:0x0
 10698 ms  0x7024 ret:0x7f8ee78ed820::7f8ee78ed820  10 ef 46 e1                                      ..F.
 10698 ms  0x7024 SECKEY_CreateECPrivateKey()
 10698 ms  0x7024 cx:0x7f8ee7ac7988
 10699 ms     | 0x7024 EC_ValidatePublicKey()
 10700 ms     | 0x7024 ret:0x0
 10700 ms  0x7024 ret:0x7f8ee7ba7820::7f8ee7ba7820  40 77 8d e1                                      @w..
           /* TID 0x702c */
 10701 ms  0x702c PR_Close()
 10701 ms  0x702c fd:0x7f8ee7a84850
           /* TID 0x7024 */
 10707 ms  0x7024 PK11_Encrypt()
 10707 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
 10723 ms  0x702c PR_Close()
 10723 ms  0x702c fd:0x7f8ee7527f10
 10734 ms  0x702c PR_Close()
 10734 ms  0x702c fd:0x7f8ee7527f10
           /* TID 0x7024 */
 10739 ms  0x7024 PK11_Encrypt()
 10739 ms  0x7024 symkey:0x7f8eeb238f00
 10744 ms  SECKEY_ECParamsToKeySize()
 10744 ms  0x7024 ret:0x100
 10744 ms  0x7024 SECKEY_CreateECPrivateKey()
 10744 ms  0x7024 cx:0x7f8ee7ac7988
 10745 ms     | 0x7024 EC_ValidatePublicKey()
 10746 ms     | 0x7024 ret:0x0
 10747 ms  0x7024 ret:0x7f8ee7c87020::7f8ee7c87020  70 4e 30 e1                                      pN0.
 10747 ms  0x7024 PK11_PubDeriveWithKDF()
 10747 ms  0x7024 seckey:0x7f8ee7c87020
 10747 ms     | 0x7024 EC_ValidatePublicKey()
 10748 ms     | 0x7024 ret:0x0
 10750 ms  0x7024 ret:0x7f8ee2b9ec80
 10750 ms  0x7024 PK11_DeriveWithFlags()
 10750 ms  0x7024 basekey:0x7f8ee2b9ec80
 10750 ms     | 0x7024 PK11_DeriveWithTemplate()
 10750 ms  0x7024 ret:0x7f8ee2b9ee00
 10750 ms  0x7024 PK11_Derive()
 10750 ms  0x7024 basekey:0x7f8ee2b9ee00
 10750 ms     | 0x7024 PK11_DeriveWithTemplate()
 10750 ms  0x7024 ret:0x7f8ee2b9fc00
 10750 ms  0x7024 SECKEY_DestroyPrivateKey()
 10750 ms  0x7024 privk:0x7f8ee7c87020::7f8ee7c87020  70 4e 30 e1                                      pN0.
 10750 ms  0x7024 privk:0x7f8ee7c87020::7f8ee7c87020  e5 e5 e5 e5                                      ....
 10750 ms  0x7024 PK11_Encrypt()
 10750 ms  0x7024 symkey:0x7f8ee396bc80
 10754 ms  0x7024 SSL_AuthCertificateComplete()
 10754 ms  0x7024 fd:0x7f8ee7b80940
 10754 ms  0x7024 err:0x0
 10754 ms  0x7024 PK11_Encrypt()
 10754 ms  0x7024 symkey:0x7f8ee396bc80
 10759 ms  0x7024 SSL_ImportFD()
 10759 ms  0x7024 ret:0x7f8ee7b80e50
 10759 ms  0x7024 SSL_AuthCertificateHook()
 10759 ms  0x7024 fd:0x7f8ee7b80e50
 10759 ms  0x7024 ret:0x0
 10759 ms  0x7024 PK11_Encrypt()
 10759 ms  0x7024 symkey:0x7f8eeb238f00
 10759 ms  0x7024 PR_Connect()
 10759 ms  0x7024 fd:0x7f8ee7b80e50
 10762 ms  SECKEY_ECParamsToKeySize()
 10762 ms  0x7024 ret:0x100
 10762 ms  0x7024 SECKEY_CreateECPrivateKey()
 10762 ms  0x7024 cx:0x7f8ee7ac7168
 10763 ms     | 0x7024 EC_ValidatePublicKey()
 10764 ms     | 0x7024 ret:0x0
 10764 ms  0x7024 ret:0x7f8ee7c8b820::7f8ee7c8b820  a0 fb 8f e1                                      ....
 10764 ms  0x7024 PK11_PubDeriveWithKDF()
 10764 ms  0x7024 seckey:0x7f8ee7c8b820
 10764 ms     | 0x7024 EC_ValidatePublicKey()
 10767 ms     | 0x7024 ret:0x0
 10769 ms  0x7024 ret:0x7f8ee2b9ec80
 10769 ms  0x7024 PK11_DeriveWithFlags()
 10769 ms  0x7024 basekey:0x7f8ee2b9ec80
 10769 ms     | 0x7024 PK11_DeriveWithTemplate()
 10769 ms  0x7024 ret:0x7f8ee2bf1f80
 10769 ms  0x7024 PK11_Derive()
 10769 ms  0x7024 basekey:0x7f8ee2bf1f80
 10769 ms     | 0x7024 PK11_DeriveWithTemplate()
 10769 ms  0x7024 ret:0x7f8ee4749880
 10769 ms  0x7024 SECKEY_DestroyPrivateKey()
 10769 ms  0x7024 privk:0x7f8ee7c8b820::7f8ee7c8b820  a0 fb 8f e1                                      ....
 10769 ms  0x7024 privk:0x7f8ee7c8b820::7f8ee7c8b820  e5 e5 e5 e5                                      ....
 10769 ms  0x7024 PK11_Encrypt()
 10769 ms  0x7024 symkey:0x7f8ee4749e80
           /* TID 0x702c */
 10779 ms  0x702c PR_Close()
 10779 ms  0x702c fd:0x7f8ee77310d0
           /* TID 0x7024 */
 10785 ms  0x7024 SECKEY_CreateECPrivateKey()
 10785 ms  0x7024 cx:0x7f8ee7ac7e68
 10785 ms     | 0x7024 EC_ValidatePublicKey()
 10785 ms     | 0x7024 ret:0x0
 10785 ms  0x7024 ret:0x7f8ee7c8b020::7f8ee7c8b020  10 7a 8d e1                                      .z..
 10785 ms  0x7024 SECKEY_CreateECPrivateKey()
 10785 ms  0x7024 cx:0x7f8ee7ac7e68
 10786 ms     | 0x7024 EC_ValidatePublicKey()
 10787 ms     | 0x7024 ret:0x0
 10787 ms  0x7024 ret:0x7f8ee7c8f020::7f8ee7c8f020  40 27 20 e2                                      @' .
           /* TID 0x702c */
 10791 ms  0x702c PR_Close()
 10791 ms  0x702c fd:0x7f8ee7a73880
           /* TID 0x7024 */
 10792 ms  0x7024 SECKEY_DestroyPrivateKey()
 10792 ms  0x7024 privk:0x7f8ee7ba7820::7f8ee7ba7820  40 77 8d e1                                      @w..
 10792 ms  0x7024 privk:0x7f8ee7ba7820::7f8ee7ba7820  e5 e5 e5 e5                                      ....
 10792 ms  0x7024 SECKEY_DestroyPrivateKey()
 10792 ms  0x7024 privk:0x7f8ee78ed820::7f8ee78ed820  10 ef 46 e1                                      ..F.
 10792 ms  0x7024 privk:0x7f8ee78ed820::7f8ee78ed820  e5 e5 e5 e5                                      ....
           /* TID 0x702c */
 10793 ms  0x702c PR_Close()
 10793 ms  0x702c fd:0x7f8ee713e8e0
           /* TID 0x7024 */
 10794 ms  0x7024 SSL_ImportFD()
 10794 ms  0x7024 ret:0x7f8ee7be5ac0
 10794 ms  0x7024 SSL_AuthCertificateHook()
 10794 ms  0x7024 fd:0x7f8ee7be5ac0
 10794 ms  0x7024 ret:0x0
 10794 ms  0x7024 PR_Connect()
 10794 ms  0x7024 fd:0x7f8ee7be5ac0
 10794 ms  0x7024 SSL_ImportFD()
 10794 ms  0x7024 ret:0x7f8ee7b80e20
 10794 ms  0x7024 SSL_AuthCertificateHook()
 10794 ms  0x7024 fd:0x7f8ee7b80e20
 10794 ms  0x7024 ret:0x0
 10794 ms  0x7024 PR_Connect()
 10794 ms  0x7024 fd:0x7f8ee7b80e20
           /* TID 0x702c */
 10804 ms  0x702c PR_Close()
 10804 ms  0x702c fd:0x7f8ee7b80a30
           /* TID 0x70c9 */
 10804 ms  0x70c9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10804 ms  0x70c9 ret:0x0
           /* TID 0x7024 */
 10804 ms  0x7024 SSL_AuthCertificateComplete()
 10804 ms  0x7024 fd:0x7f8ee7a49fa0
 10804 ms  0x7024 err:0x0
 10804 ms  0x7024 PK11_Encrypt()
 10804 ms  0x7024 symkey:0x7f8ee4749e80
 10816 ms  SECKEY_ECParamsToKeySize()
 10816 ms  0x7024 ret:0xff
 10816 ms  0x7024 SECKEY_CreateECPrivateKey()
 10816 ms  0x7024 cx:0x7f8ee7ac7e68
 10816 ms     | 0x7024 EC_ValidatePublicKey()
 10816 ms     | 0x7024 ret:0x0
 10816 ms  0x7024 ret:0x7f8ee7ba7020::7f8ee7ba7020  00 71 8d e1                                      .q..
 10816 ms  0x7024 PK11_PubDeriveWithKDF()
 10816 ms  0x7024 seckey:0x7f8ee7ba7020
 10817 ms     | 0x7024 EC_ValidatePublicKey()
 10817 ms     | 0x7024 ret:0x0
 10817 ms  0x7024 ret:0x7f8ee2b9ec80
 10817 ms  0x7024 PK11_DeriveWithFlags()
 10817 ms  0x7024 basekey:0x7f8ee2b9ec80
 10817 ms     | 0x7024 PK11_DeriveWithTemplate()
 10817 ms  0x7024 ret:0x7f8ee34f8600
 10817 ms  0x7024 PK11_Derive()
 10817 ms  0x7024 basekey:0x7f8ee34f8600
 10817 ms     | 0x7024 PK11_DeriveWithTemplate()
 10817 ms  0x7024 ret:0x7f8ee39bf700
 10817 ms  0x7024 SECKEY_DestroyPrivateKey()
 10817 ms  0x7024 privk:0x7f8ee7ba7020::7f8ee7ba7020  00 71 8d e1                                      .q..
 10817 ms  0x7024 privk:0x7f8ee7ba7020::7f8ee7ba7020  e5 e5 e5 e5                                      ....
 10817 ms  0x7024 PK11_Encrypt()
 10817 ms  0x7024 symkey:0x7f8ee4749800
           /* TID 0x70ca */
 10818 ms  0x70ca _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10818 ms  0x70ca ret:0x0
           /* TID 0x7024 */
 10818 ms  0x7024 SSL_AuthCertificateComplete()
 10818 ms  0x7024 fd:0x7f8ee7b80e50
 10818 ms  0x7024 err:0x0
 10819 ms  0x7024 PK11_Encrypt()
 10819 ms  0x7024 symkey:0x7f8ee4749800
 10819 ms  0x7024 SECKEY_CreateECPrivateKey()
 10819 ms  0x7024 cx:0x7f8ee77350a8
 10820 ms     | 0x7024 EC_ValidatePublicKey()
 10820 ms     | 0x7024 ret:0x0
 10820 ms  0x7024 ret:0x7f8ee7ba7820::7f8ee7ba7820  00 71 8d e1                                      .q..
 10820 ms  0x7024 SECKEY_CreateECPrivateKey()
 10820 ms  0x7024 cx:0x7f8ee77350a8
 10820 ms     | 0x7024 EC_ValidatePublicKey()
 10822 ms     | 0x7024 ret:0x0
 10822 ms  0x7024 ret:0x7f8ee7c8d020::7f8ee7c8d020  30 fd 8f e1                                      0...
 10838 ms  0x7024 SECKEY_CreateECPrivateKey()
 10838 ms  0x7024 cx:0x7f8ee77353e8
 10838 ms     | 0x7024 EC_ValidatePublicKey()
 10838 ms     | 0x7024 ret:0x0
 10838 ms  0x7024 ret:0x7f8ee7c91820::7f8ee7c91820  60 25 20 e2                                      `% .
 10838 ms  0x7024 SECKEY_CreateECPrivateKey()
 10838 ms  0x7024 cx:0x7f8ee77353e8
 10839 ms     | 0x7024 EC_ValidatePublicKey()
 10840 ms     | 0x7024 ret:0x0
 10840 ms  0x7024 ret:0x7f8ee7c93820::7f8ee7c93820  20 29 20 e2                                       ) .
 10852 ms  0x7024 SECKEY_DestroyPrivateKey()
 10852 ms  0x7024 privk:0x7f8ee7c8f020::7f8ee7c8f020  40 27 20 e2                                      @' .
 10852 ms  0x7024 privk:0x7f8ee7c8f020::7f8ee7c8f020  e5 e5 e5 e5                                      ....
 10852 ms  0x7024 SECKEY_DestroyPrivateKey()
 10852 ms  0x7024 privk:0x7f8ee7c8b020::7f8ee7c8b020  10 7a 8d e1                                      .z..
 10852 ms  0x7024 privk:0x7f8ee7c8b020::7f8ee7c8b020  e5 e5 e5 e5                                      ....
 10852 ms  0x7024 PK11_Derive()
 10852 ms  0x7024 basekey:0x7f8ee2b9ec80
 10852 ms     | 0x7024 PK11_DeriveWithTemplate()
 10852 ms  0x7024 ret:0x7f8ee228a880
 10852 ms  0x7024 PK11_PubDeriveWithKDF()
 10852 ms  0x7024 seckey:0x7f8ee7ba7820
 10852 ms     | 0x7024 EC_ValidatePublicKey()
 10852 ms     | 0x7024 ret:0x0
 10853 ms  0x7024 ret:0x7f8ee2b9ec80
 10853 ms  SECKEY_ECParamsToKeySize()
 10853 ms  0x7024 ret:0xff
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee228a880
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee474a980
 10853 ms  0x7024 PK11_Derive()
 10853 ms  0x7024 basekey:0x7f8ee2b9ec80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee474aa80
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee474aa80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee228a880
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee474aa80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee2b9ec80
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee474aa80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee474a980
 10853 ms  0x7024 PK11_Derive()
 10853 ms  0x7024 basekey:0x7f8ee476f100
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee476f180
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee2b9ec80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee474aa80
 10853 ms  0x7024 PK11_DeriveWithFlags()
 10853 ms  0x7024 basekey:0x7f8ee2b9ec80
 10853 ms     | 0x7024 PK11_DeriveWithTemplate()
 10853 ms  0x7024 ret:0x7f8ee474a980
           /* TID 0x707f */
 10857 ms  SECKEY_ECParamsToBasePointOrderLen()
 10857 ms  0x707f ret:0x180
 10857 ms  SECKEY_ECParamsToBasePointOrderLen()
 10857 ms  0x707f ret:0x180
 10857 ms  0x707f EC_ValidatePublicKey()
 10858 ms  0x707f ret:0x0
 10861 ms  SECKEY_ECParamsToBasePointOrderLen()
 10861 ms  0x707f ret:0x100
 10861 ms  SECKEY_ECParamsToBasePointOrderLen()
 10861 ms  0x707f ret:0x100
 10861 ms  0x707f EC_ValidatePublicKey()
 10863 ms  0x707f ret:0x0
 10865 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10865 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10865 ms     | 0x707f ret:0x100
 10865 ms     | SECKEY_ECParamsToBasePointOrderLen()
 10865 ms     | 0x707f ret:0x100
 10865 ms     | 0x707f EC_ValidatePublicKey()
           /* TID 0x7024 */
 10869 ms  SECKEY_ECParamsToKeySize()
 10869 ms  0x7024 ret:0x100
 10869 ms  SECKEY_ECParamsToBasePointOrderLen()
 10869 ms  0x7024 ret:0x100
 10869 ms  SECKEY_ECParamsToBasePointOrderLen()
 10869 ms  0x7024 ret:0x100
           /* TID 0x707f */
 10878 ms     | 0x707f ret:0x0
           /* TID 0x7024 */
 10878 ms  0x7024 EC_ValidatePublicKey()
 10879 ms  0x7024 ret:0x0
 10881 ms  0x7024 PK11_DeriveWithFlags()
 10881 ms  0x7024 basekey:0x7f8ee2b9ec80
 10881 ms     | 0x7024 PK11_DeriveWithTemplate()
 10881 ms  0x7024 ret:0x7f8ee474a980
 10881 ms  0x7024 PR_Close()
 10881 ms  0x7024 fd:0x7f8ee7b80e50
 10881 ms     | 0x7024 PK11_Encrypt()
 10881 ms     | 0x7024 symkey:0x7f8ee4749800
           /* TID 0x707f */
 10884 ms  0x707f ret:0x0
           /* TID 0x7024 */
 10904 ms  0x7024 SSL_AuthCertificateComplete()
 10904 ms  0x7024 fd:0x7f8ee7be5ac0
 10904 ms  0x7024 err:0x0
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee476f180
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee39bf700
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee476f180
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee34f8600
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee476f180
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee474a980
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee228a880
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee476f100
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee228a880
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee4749680
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee34f8600
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee4749680
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee34f8600
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee474a080
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee228a880
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee474aa80
 10905 ms     | 0x7024 PK11_Encrypt()
 10905 ms     | 0x7024 symkey:0x7f8ee476f100
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee39bf700
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee474aa80
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee39bf700
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee474a080
 10905 ms     | 0x7024 PK11_DeriveWithFlags()
 10905 ms     | 0x7024 basekey:0x7f8ee476f180
 10905 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10905 ms     | 0x7024 ret:0x7f8ee476f100
 10905 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10905 ms     | 0x7024 privk:0x7f8ee7c8d020::7f8ee7c8d020  30 fd 8f e1                                      0...
 10905 ms     | 0x7024 privk:0x7f8ee7c8d020::7f8ee7c8d020  e5 e5 e5 e5                                      ....
 10905 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10905 ms     | 0x7024 privk:0x7f8ee7ba7820::7f8ee7ba7820  00 71 8d e1                                      .q..
 10906 ms     | 0x7024 privk:0x7f8ee7ba7820::7f8ee7ba7820  e5 e5 e5 e5                                      ....
 10906 ms  0x7024 PK11_Encrypt()
 10906 ms  0x7024 symkey:0x7f8ee474aa80
 10906 ms  0x7024 PK11_Encrypt()
 10906 ms  0x7024 symkey:0x7f8ee474aa80
 10908 ms  0x7024 SECKEY_DestroyPrivateKey()
 10908 ms  0x7024 privk:0x7f8ee78d2020::7f8ee78d2020  90 bc 24 e1                                      ..$.
 10908 ms  0x7024 privk:0x7f8ee78d2020::7f8ee78d2020  e5 e5 e5 e5                                      ....
 10908 ms  0x7024 SECKEY_DestroyPrivateKey()
 10908 ms  0x7024 privk:0x7f8ee61ce820::7f8ee61ce820  d0 b8 24 e1                                      ..$.
 10908 ms  0x7024 privk:0x7f8ee61ce820::7f8ee61ce820  e5 e5 e5 e5                                      ....
 10908 ms  0x7024 PK11_Encrypt()
 10908 ms  0x7024 symkey:0x7f8ee4749e80
 10908 ms  0x7024 PK11_Derive()
 10908 ms  0x7024 basekey:0x7f8ee2b9ec80
 10908 ms     | 0x7024 PK11_DeriveWithTemplate()
 10908 ms  0x7024 ret:0x7f8ee228a880
 10908 ms  0x7024 PK11_PubDeriveWithKDF()
 10908 ms  0x7024 seckey:0x7f8ee7c91820
 10909 ms     | 0x7024 EC_ValidatePublicKey()
 10909 ms     | 0x7024 ret:0x0
 10909 ms  0x7024 ret:0x7f8ee2b9ec80
 10909 ms  SECKEY_ECParamsToKeySize()
 10909 ms  0x7024 ret:0xff
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee228a880
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee476f180
 10909 ms  0x7024 PK11_Derive()
 10909 ms  0x7024 basekey:0x7f8ee2b9ec80
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee474a080
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee474a080
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee228a880
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee474a080
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee2b9ec80
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee474a080
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee476f180
 10909 ms  0x7024 PK11_Derive()
 10909 ms  0x7024 basekey:0x7f8ee39c0c00
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee4749800
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee2b9ec80
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee474a080
 10909 ms  0x7024 PK11_DeriveWithFlags()
 10909 ms  0x7024 basekey:0x7f8ee2b9ec80
 10909 ms     | 0x7024 PK11_DeriveWithTemplate()
 10909 ms  0x7024 ret:0x7f8ee476f180
 10911 ms  0x7024 SSL_ImportFD()
 10911 ms  0x7024 ret:0x7f8ee7b80f10
 10911 ms  0x7024 SSL_AuthCertificateHook()
 10911 ms  0x7024 fd:0x7f8ee7b80f10
 10911 ms  0x7024 ret:0x0
 10911 ms  0x7024 PR_Connect()
 10911 ms  0x7024 fd:0x7f8ee7b80f10
 10912 ms  0x7024 PK11_DeriveWithFlags()
 10912 ms  0x7024 basekey:0x7f8ee2b9ec80
 10912 ms     | 0x7024 PK11_DeriveWithTemplate()
 10912 ms  0x7024 ret:0x7f8ee476f180
 10912 ms  0x7024 SSL_AuthCertificateComplete()
 10912 ms  0x7024 fd:0x7f8ee7b80e20
 10912 ms  0x7024 err:0x0
 10912 ms     | 0x7024 PK11_DeriveWithFlags()
 10912 ms     | 0x7024 basekey:0x7f8ee4749800
 10912 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10912 ms     | 0x7024 ret:0x7f8ee476f180
 10912 ms     | 0x7024 PK11_DeriveWithFlags()
 10912 ms     | 0x7024 basekey:0x7f8ee4749800
 10912 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10912 ms     | 0x7024 ret:0x7f8ee39c0c00
 10912 ms     | 0x7024 PK11_DeriveWithFlags()
 10912 ms     | 0x7024 basekey:0x7f8ee4749800
 10912 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10912 ms     | 0x7024 ret:0x7f8ee4770100
 10912 ms     | 0x7024 PK11_DeriveWithFlags()
 10912 ms     | 0x7024 basekey:0x7f8ee228a880
 10912 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770300
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee228a880
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770380
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee39c0c00
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770380
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee39c0c00
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770480
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee228a880
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee474a080
 10913 ms     | 0x7024 PK11_Encrypt()
 10913 ms     | 0x7024 symkey:0x7f8ee4770300
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee476f180
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee474a080
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee476f180
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770480
 10913 ms     | 0x7024 PK11_DeriveWithFlags()
 10913 ms     | 0x7024 basekey:0x7f8ee4749800
 10913 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 10913 ms     | 0x7024 ret:0x7f8ee4770300
 10913 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10913 ms     | 0x7024 privk:0x7f8ee7c93820::7f8ee7c93820  20 29 20 e2                                       ) .
 10913 ms     | 0x7024 privk:0x7f8ee7c93820::7f8ee7c93820  e5 e5 e5 e5                                      ....
 10913 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 10913 ms     | 0x7024 privk:0x7f8ee7c91820::7f8ee7c91820  60 25 20 e2                                      `% .
 10913 ms     | 0x7024 privk:0x7f8ee7c91820::7f8ee7c91820  e5 e5 e5 e5                                      ....
 10914 ms  0x7024 PK11_Encrypt()
 10914 ms  0x7024 symkey:0x7f8ee474a080
 10914 ms  0x7024 PK11_Encrypt()
 10914 ms  0x7024 symkey:0x7f8ee474a080
 10930 ms  0x7024 PK11_DeriveWithFlags()
 10930 ms  0x7024 basekey:0x7f8ee476f100
 10930 ms     | 0x7024 PK11_DeriveWithTemplate()
 10930 ms  0x7024 ret:0x7f8ee2b9ec80
 10930 ms  0x7024 PK11_DeriveWithFlags()
 10930 ms  0x7024 basekey:0x7f8ee476f100
 10930 ms     | 0x7024 PK11_DeriveWithTemplate()
 10931 ms  0x7024 ret:0x7f8ee2b9ec80
 10931 ms  0x7024 PK11_Encrypt()
 10931 ms  0x7024 symkey:0x7f8ee474aa80
 10951 ms  0x7024 PK11_DeriveWithFlags()
 10951 ms  0x7024 basekey:0x7f8ee4770300
 10951 ms     | 0x7024 PK11_DeriveWithTemplate()
 10951 ms  0x7024 ret:0x7f8ee2b9ec80
 10951 ms  0x7024 PK11_DeriveWithFlags()
 10951 ms  0x7024 basekey:0x7f8ee4770300
 10951 ms     | 0x7024 PK11_DeriveWithTemplate()
 10951 ms  0x7024 ret:0x7f8ee2b9ec80
 10951 ms  0x7024 PK11_Encrypt()
 10951 ms  0x7024 symkey:0x7f8ee474a080
           /* TID 0x702c */
 10995 ms  0x702c PR_Close()
 10995 ms  0x702c fd:0x7f8ee75279d0
           /* TID 0x7024 */
 11000 ms  0x7024 PK11_Encrypt()
 11000 ms  0x7024 symkey:0x7f8ee474a080
           /* TID 0x702c */
 11000 ms  0x702c PR_Close()
 11000 ms  0x702c fd:0x7f8ee75279d0
           /* TID 0x7024 */
 11024 ms  0x7024 SSL_ImportFD()
 11024 ms  0x7024 ret:0x7f8ee7c02070
 11024 ms  0x7024 SSL_AuthCertificateHook()
 11024 ms  0x7024 fd:0x7f8ee7c02070
 11024 ms  0x7024 ret:0x0
 11025 ms  SECKEY_ECParamsToBasePointOrderLen()
 11025 ms  0x7024 ret:0x180
 11025 ms  SECKEY_ECParamsToBasePointOrderLen()
 11025 ms  0x7024 ret:0x180
 11025 ms  0x7024 EC_ValidatePublicKey()
 11026 ms  0x7024 ret:0x0
 11029 ms  SECKEY_ECParamsToBasePointOrderLen()
 11029 ms  0x7024 ret:0x100
 11029 ms  SECKEY_ECParamsToBasePointOrderLen()
 11029 ms  0x7024 ret:0x100
 11029 ms  0x7024 EC_ValidatePublicKey()
 11031 ms  0x7024 ret:0x0
 11033 ms  0x7024 PK11_Encrypt()
 11033 ms  0x7024 symkey:0x7f8ee474aa80
 11056 ms  0x7024 PR_Connect()
 11056 ms  0x7024 fd:0x7f8ee7c02070
 11061 ms  0x7024 SECKEY_CreateECPrivateKey()
 11061 ms  0x7024 cx:0x7f8ee77358c8
 11061 ms     | 0x7024 EC_ValidatePublicKey()
 11061 ms     | 0x7024 ret:0x0
 11061 ms  0x7024 ret:0x7f8ee7c8c820::7f8ee7c8c820  b0 ef 46 e1                                      ..F.
 11061 ms  0x7024 SECKEY_CreateECPrivateKey()
 11061 ms  0x7024 cx:0x7f8ee77358c8
 11062 ms     | 0x7024 EC_ValidatePublicKey()
 11063 ms     | 0x7024 ret:0x0
 11063 ms  0x7024 ret:0x7f8ee7c90820::7f8ee7c90820  70 79 8d e1                                      py..
 11081 ms  0x7024 SECKEY_CreateECPrivateKey()
 11081 ms  0x7024 cx:0x7f8ee7735728
 11081 ms     | 0x7024 EC_ValidatePublicKey()
 11081 ms     | 0x7024 ret:0x0
 11081 ms  0x7024 ret:0x7f8ee7c92820::7f8ee7c92820  30 fd 8f e1                                      0...
 11081 ms  0x7024 SECKEY_CreateECPrivateKey()
 11081 ms  0x7024 cx:0x7f8ee7735728
 11082 ms     | 0x7024 EC_ValidatePublicKey()
 11083 ms     | 0x7024 ret:0x0
 11083 ms  0x7024 ret:0x7f8ee7c96020::7f8ee7c96020  e0 27 20 e2                                      .' .
 11098 ms  0x7024 PK11_Encrypt()
 11098 ms  0x7024 symkey:0x7f8ee474a080
 11100 ms  0x7024 PR_Close()
 11100 ms  0x7024 fd:0x7f8ee7c02070
 11100 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 11100 ms     | 0x7024 privk:0x7f8ee7c96020::7f8ee7c96020  e0 27 20 e2                                      .' .
 11100 ms     | 0x7024 privk:0x7f8ee7c96020::7f8ee7c96020  e5 e5 e5 e5                                      ....
 11100 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 11100 ms     | 0x7024 privk:0x7f8ee7c92820::7f8ee7c92820  30 fd 8f e1                                      0...
 11101 ms     | 0x7024 privk:0x7f8ee7c92820::7f8ee7c92820  e5 e5 e5 e5                                      ....
 11104 ms  0x7024 SSL_ImportFD()
 11104 ms  0x7024 ret:0x7f8ee7c02070
 11104 ms  0x7024 SSL_AuthCertificateHook()
 11104 ms  0x7024 fd:0x7f8ee7c02070
 11104 ms  0x7024 ret:0x0
 11104 ms  0x7024 PR_Connect()
 11104 ms  0x7024 fd:0x7f8ee7c02070
 11151 ms  0x7024 SECKEY_CreateECPrivateKey()
 11151 ms  0x7024 cx:0x7f8ee7735728
 11152 ms     | 0x7024 EC_ValidatePublicKey()
 11152 ms     | 0x7024 ret:0x0
 11152 ms  0x7024 ret:0x7f8ee7c92820::7f8ee7c92820  40 27 20 e2                                      @' .
 11152 ms  0x7024 SECKEY_CreateECPrivateKey()
 11152 ms  0x7024 cx:0x7f8ee7735728
 11152 ms     | 0x7024 EC_ValidatePublicKey()
 11154 ms     | 0x7024 ret:0x0
 11154 ms  0x7024 ret:0x7f8ee7c96020::7f8ee7c96020  70 29 20 e2                                      p) .
 11159 ms  0x7024 PK11_Encrypt()
 11159 ms  0x7024 symkey:0x7f8ee474a080
 11160 ms  0x7024 PK11_Encrypt()
 11160 ms  0x7024 symkey:0x7f8eeb238f00
 11166 ms  0x7024 PK11_Encrypt()
 11166 ms  0x7024 symkey:0x7f8eeb238f00
           /* TID 0x702c */
 11187 ms  0x702c PR_Close()
 11187 ms  0x702c fd:0x7f8ee7c025b0
           /* TID 0x7024 */
 11201 ms  0x7024 SSL_ImportFD()
 11201 ms  0x7024 ret:0x7f8ee7c16250
 11201 ms  0x7024 SSL_AuthCertificateHook()
 11201 ms  0x7024 fd:0x7f8ee7c16250
 11201 ms  0x7024 ret:0x0
 11201 ms  0x7024 PR_Connect()
 11201 ms  0x7024 fd:0x7f8ee7c16250
 11202 ms  SECKEY_ECParamsToKeySize()
 11202 ms  0x7024 ret:0x100
 11202 ms  SECKEY_ECParamsToBasePointOrderLen()
 11202 ms  0x7024 ret:0x100
 11202 ms  SECKEY_ECParamsToBasePointOrderLen()
 11202 ms  0x7024 ret:0x100
 11202 ms  0x7024 EC_ValidatePublicKey()
 11204 ms  0x7024 ret:0x0
           /* TID 0x70c9 */
 11206 ms  SECKEY_ECParamsToBasePointOrderLen()
 11206 ms  0x70c9 ret:0x180
 11206 ms  SECKEY_ECParamsToBasePointOrderLen()
 11206 ms  0x70c9 ret:0x180
 11206 ms  0x70c9 EC_ValidatePublicKey()
 11207 ms  0x70c9 ret:0x0
 11210 ms  0x70c9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11210 ms     | SECKEY_ECParamsToBasePointOrderLen()
 11210 ms     | 0x70c9 ret:0x180
 11210 ms     | SECKEY_ECParamsToBasePointOrderLen()
 11210 ms     | 0x70c9 ret:0x180
 11210 ms     | 0x70c9 EC_ValidatePublicKey()
 11212 ms     | 0x70c9 ret:0x0
           /* TID 0x7024 */
 11216 ms  SECKEY_ECParamsToKeySize()
 11216 ms  0x7024 ret:0x100
 11216 ms  0x7024 SECKEY_CreateECPrivateKey()
 11216 ms  0x7024 cx:0x7f8ee7735728
 11218 ms     | 0x7024 EC_ValidatePublicKey()
 11220 ms     | 0x7024 ret:0x0
 11220 ms  0x7024 ret:0x7f8eea5b9820::7f8eea5b9820  b0 95 23 e2                                      ..#.
 11220 ms  0x7024 PK11_PubDeriveWithKDF()
 11220 ms  0x7024 seckey:0x7f8eea5b9820
 11220 ms     | 0x7024 EC_ValidatePublicKey()
 11221 ms     | 0x7024 ret:0x0
 11223 ms  0x7024 ret:0x7f8ee2b9ec80
 11223 ms  0x7024 PK11_DeriveWithFlags()
 11223 ms  0x7024 basekey:0x7f8ee2b9ec80
 11223 ms     | 0x7024 PK11_DeriveWithTemplate()
 11223 ms  0x7024 ret:0x7f8ee228a880
 11223 ms  0x7024 PK11_Derive()
 11223 ms  0x7024 basekey:0x7f8ee228a880
 11223 ms     | 0x7024 PK11_DeriveWithTemplate()
 11223 ms  0x7024 ret:0x7f8ee4749800
 11223 ms  0x7024 SECKEY_DestroyPrivateKey()
 11223 ms  0x7024 privk:0x7f8eea5b9820::7f8eea5b9820  b0 95 23 e2                                      ..#.
 11223 ms  0x7024 privk:0x7f8eea5b9820::7f8eea5b9820  e5 e5 e5 e5                                      ....
 11223 ms  0x7024 PK11_Encrypt()
 11223 ms  0x7024 symkey:0x7f8ee2925800
           /* TID 0x70c9 */
 11227 ms  0x70c9 ret:0x0
           /* TID 0x7024 */
 11227 ms  0x7024 SSL_AuthCertificateComplete()
 11227 ms  0x7024 fd:0x7f8ee7c02070
 11227 ms  0x7024 err:0x0
           /* TID 0x702c */
 11229 ms  0x702c PR_Close()
 11229 ms  0x702c fd:0x7f8ee2b8ce50
           /* TID 0x7024 */
 11230 ms  0x7024 PK11_Derive()
 11230 ms  0x7024 basekey:0x7f8ee4770480
 11230 ms     | 0x7024 PK11_DeriveWithTemplate()
 11230 ms  0x7024 ret:0x7f8ee2b9ec80
 11230 ms  0x7024 PK11_Encrypt()
 11230 ms  0x7024 symkey:0x7f8ee2925c80
 11231 ms  0x7024 SECKEY_DestroyPrivateKey()
 11231 ms  0x7024 privk:0x7f8ee7c90820::7f8ee7c90820  70 79 8d e1                                      py..
 11231 ms  0x7024 privk:0x7f8ee7c90820::7f8ee7c90820  e5 e5 e5 e5                                      ....
 11231 ms  0x7024 SECKEY_DestroyPrivateKey()
 11231 ms  0x7024 privk:0x7f8ee7c8c820::7f8ee7c8c820  b0 ef 46 e1                                      ..F.
 11231 ms  0x7024 privk:0x7f8ee7c8c820::7f8ee7c8c820  e5 e5 e5 e5                                      ....
 11231 ms  0x7024 PK11_Encrypt()
 11231 ms  0x7024 symkey:0x7f8ee2925800
 11232 ms  0x7024 PK11_Encrypt()
 11232 ms  0x7024 symkey:0x7f8ee2925c80
 11249 ms  0x7024 SECKEY_CreateECPrivateKey()
 11249 ms  0x7024 cx:0x7f8ee7735c08
 11249 ms     | 0x7024 EC_ValidatePublicKey()
 11249 ms     | 0x7024 ret:0x0
 11250 ms  0x7024 ret:0x7f8ee7c89820::7f8ee7c89820  b0 ef 46 e1                                      ..F.
 11250 ms  0x7024 SECKEY_CreateECPrivateKey()
 11250 ms  0x7024 cx:0x7f8ee7735c08
 11250 ms     | 0x7024 EC_ValidatePublicKey()
 11252 ms     | 0x7024 ret:0x0
 11252 ms  0x7024 ret:0x7f8ee7c8e820::7f8ee7c8e820  70 79 8d e1                                      py..
 11271 ms  0x7024 SECKEY_DestroyPrivateKey()
 11271 ms  0x7024 privk:0x7f8ee7c96020::7f8ee7c96020  70 29 20 e2                                      p) .
 11271 ms  0x7024 privk:0x7f8ee7c96020::7f8ee7c96020  e5 e5 e5 e5                                      ....
 11271 ms  0x7024 SECKEY_DestroyPrivateKey()
 11271 ms  0x7024 privk:0x7f8ee7c92820::7f8ee7c92820  40 27 20 e2                                      @' .
 11271 ms  0x7024 privk:0x7f8ee7c92820::7f8ee7c92820  e5 e5 e5 e5                                      ....
 11300 ms  0x7024 PK11_Derive()
 11300 ms  0x7024 basekey:0x7f8ee2925680
 11300 ms     | 0x7024 PK11_DeriveWithTemplate()
 11300 ms  0x7024 ret:0x7f8ed001ba80
 11300 ms  0x7024 PK11_PubDeriveWithKDF()
 11300 ms  0x7024 seckey:0x7f8ee7c89820
 11300 ms     | 0x7024 EC_ValidatePublicKey()
 11300 ms     | 0x7024 ret:0x0
 11301 ms  0x7024 ret:0x7f8ee2925680
 11301 ms  SECKEY_ECParamsToKeySize()
 11301 ms  0x7024 ret:0xff
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ed001ba80
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001be00
 11301 ms  0x7024 PK11_Derive()
 11301 ms  0x7024 basekey:0x7f8ee2925680
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001be80
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ed001be80
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001ba80
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ed001be80
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ee2925680
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ed001be80
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001be00
 11301 ms  0x7024 PK11_Derive()
 11301 ms  0x7024 basekey:0x7f8ed001bf80
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001c080
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ee2925680
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001be80
 11301 ms  0x7024 PK11_DeriveWithFlags()
 11301 ms  0x7024 basekey:0x7f8ee2925680
 11301 ms     | 0x7024 PK11_DeriveWithTemplate()
 11301 ms  0x7024 ret:0x7f8ed001be00
 11302 ms  SECKEY_ECParamsToKeySize()
 11302 ms  0x7024 ret:0x100
 11302 ms  SECKEY_ECParamsToBasePointOrderLen()
 11302 ms  0x7024 ret:0x100
 11302 ms  SECKEY_ECParamsToBasePointOrderLen()
 11302 ms  0x7024 ret:0x100
 11302 ms  0x7024 EC_ValidatePublicKey()
 11303 ms  0x7024 ret:0x0
 11305 ms  0x7024 PK11_DeriveWithFlags()
 11305 ms  0x7024 basekey:0x7f8ee2925680
 11305 ms     | 0x7024 PK11_DeriveWithTemplate()
 11305 ms  0x7024 ret:0x7f8ed001be00
 11306 ms  0x7024 SSL_AuthCertificateComplete()
 11306 ms  0x7024 fd:0x7f8ee7c16250
 11306 ms  0x7024 err:0x0
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001c080
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001be00
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001c080
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001bf80
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001c080
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c280
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001ba80
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c300
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001ba80
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c380
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001bf80
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c380
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001bf80
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c980
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001ba80
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001be80
 11306 ms     | 0x7024 PK11_Encrypt()
 11306 ms     | 0x7024 symkey:0x7f8ed001c300
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001be00
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001be80
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001be00
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c980
 11306 ms     | 0x7024 PK11_DeriveWithFlags()
 11306 ms     | 0x7024 basekey:0x7f8ed001c080
 11306 ms     |    | 0x7024 PK11_DeriveWithTemplate()
 11306 ms     | 0x7024 ret:0x7f8ed001c300
 11306 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 11306 ms     | 0x7024 privk:0x7f8ee7c8e820::7f8ee7c8e820  70 79 8d e1                                      py..
 11306 ms     | 0x7024 privk:0x7f8ee7c8e820::7f8ee7c8e820  e5 e5 e5 e5                                      ....
 11306 ms     | 0x7024 SECKEY_DestroyPrivateKey()
 11306 ms     | 0x7024 privk:0x7f8ee7c89820::7f8ee7c89820  b0 ef 46 e1                                      ..F.
 11307 ms     | 0x7024 privk:0x7f8ee7c89820::7f8ee7c89820  e5 e5 e5 e5                                      ....
 11307 ms  0x7024 PK11_Encrypt()
 11307 ms  0x7024 symkey:0x7f8ed001be80
 11307 ms  0x7024 PK11_Encrypt()
 11307 ms  0x7024 symkey:0x7f8ed001be80
 11335 ms  0x7024 PK11_Encrypt()
 11335 ms  0x7024 symkey:0x7f8ee2925800
 11355 ms  0x7024 PK11_DeriveWithFlags()
 11355 ms  0x7024 basekey:0x7f8ed001c300
 11355 ms     | 0x7024 PK11_DeriveWithTemplate()
 11355 ms  0x7024 ret:0x7f8ee2925680
 11355 ms  0x7024 PK11_DeriveWithFlags()
 11355 ms  0x7024 basekey:0x7f8ed001c300
 11355 ms     | 0x7024 PK11_DeriveWithTemplate()
 11355 ms  0x7024 ret:0x7f8ee2925680
 11355 ms  0x7024 PK11_Encrypt()
 11355 ms  0x7024 symkey:0x7f8ed001be80
 11390 ms  0x7024 PK11_Encrypt()
 11390 ms  0x7024 symkey:0x7f8ee474aa80
 11403 ms  0x7024 PK11_Encrypt()
 11403 ms  0x7024 symkey:0x7f8ed001be80
 11526 ms  0x7024 SSL_ImportFD()
 11526 ms  0x7024 ret:0x7f8ee34fe730
 11526 ms  0x7024 SSL_AuthCertificateHook()
 11526 ms  0x7024 fd:0x7f8ee34fe730
 11526 ms  0x7024 ret:0x0
 11526 ms  0x7024 PR_Connect()
 11526 ms  0x7024 fd:0x7f8ee34fe730
 11552 ms  0x7024 SECKEY_CreateECPrivateKey()
 11552 ms  0x7024 cx:0x7f8ee7735f48
 11552 ms     | 0x7024 EC_ValidatePublicKey()
 11552 ms     | 0x7024 ret:0x0
 11552 ms  0x7024 ret:0x7f8ee7c92020::7f8ee7c92020  20 29 20 e2                                       ) .
 11552 ms  0x7024 SECKEY_CreateECPrivateKey()
 11552 ms  0x7024 cx:0x7f8ee7735f48
 11553 ms     | 0x7024 EC_ValidatePublicKey()
 11554 ms     | 0x7024 ret:0x0
 11554 ms  0x7024 ret:0x7f8ee7c94820::7f8ee7c94820  c0 94 23 e2                                      ..#.
 11557 ms  0x7024 PK11_Encrypt()
 11557 ms  0x7024 symkey:0x7f8eeb238f00
 11564 ms  0x7024 PR_Close()
 11564 ms  0x7024 fd:0x7f8ee2289ca0
           /* TID 0x7019 */
 11565 ms  0x7019 EC_ValidatePublicKey()
 11568 ms  0x7019 ret:0x0
 11568 ms  0x7019 EC_ValidatePublicKey()
 11569 ms  0x7019 ret:0x0
 11569 ms  0x7019 EC_ValidatePublicKey()
 11571 ms  0x7019 ret:0x0
 11571 ms  0x7019 EC_ValidatePublicKey()
 11572 ms  0x7019 ret:0x0
 11572 ms  0x7019 EC_ValidatePublicKey()
 11574 ms  0x7019 ret:0x0
 11574 ms  0x7019 EC_ValidatePublicKey()
 11575 ms  0x7019 ret:0x0
 11575 ms  0x7019 EC_ValidatePublicKey()
 11597 ms  0x7019 ret:0x0
 11597 ms  0x7019 EC_ValidatePublicKey()
 11599 ms  0x7019 ret:0x0
 11599 ms  0x7019 EC_ValidatePublicKey()
 11600 ms  0x7019 ret:0x0
 11600 ms  0x7019 EC_ValidatePublicKey()
 11602 ms  0x7019 ret:0x0
           /* TID 0x7024 */
 11602 ms  SECKEY_ECParamsToKeySize()
 11602 ms  0x7024 ret:0xff
 11602 ms  0x7024 SECKEY_CreateECPrivateKey()
 11602 ms  0x7024 cx:0x7f8ee7735f48
 11602 ms     | 0x7024 EC_ValidatePublicKey()
 11603 ms     | 0x7024 ret:0x0
 11603 ms  0x7024 ret:0x7f8ee27f8820::7f8ee27f8820  10 5a 3a d0                                      .Z:.
 11603 ms  0x7024 PK11_PubDeriveWithKDF()
 11603 ms  0x7024 seckey:0x7f8ee27f8820
 11603 ms     | 0x7024 EC_ValidatePublicKey()
 11603 ms     | 0x7024 ret:0x0
 11603 ms  0x7024 ret:0x7f8ee2925680
 11603 ms  0x7024 PK11_DeriveWithFlags()
 11603 ms  0x7024 basekey:0x7f8ee2925680
 11603 ms     | 0x7024 PK11_DeriveWithTemplate()
 11603 ms  0x7024 ret:0x7f8ed001ba80
 11603 ms  0x7024 PK11_Derive()
 11603 ms  0x7024 basekey:0x7f8ed001ba80
 11603 ms     | 0x7024 PK11_DeriveWithTemplate()
 11603 ms  0x7024 ret:0x7f8ed001c080
 11603 ms  0x7024 SECKEY_DestroyPrivateKey()
 11603 ms  0x7024 privk:0x7f8ee27f8820::7f8ee27f8820  10 5a 3a d0                                      .Z:.
 11603 ms  0x7024 privk:0x7f8ee27f8820::7f8ee27f8820  e5 e5 e5 e5                                      ....
 11603 ms  0x7024 PK11_Encrypt()
 11603 ms  0x7024 symkey:0x7f8ed0344e00
           /* TID 0x707f */
 11604 ms  0x707f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11604 ms  0x707f ret:0x0
           /* TID 0x7024 */
 11604 ms  0x7024 SSL_AuthCertificateComplete()
 11604 ms  0x7024 fd:0x7f8ee34fe730
 11604 ms  0x7024 err:0x0
 11605 ms  0x7024 PK11_Encrypt()
 11605 ms  0x7024 symkey:0x7f8ed0344e00
 11605 ms  0x7024 PK11_Encrypt()
 11605 ms  0x7024 symkey:0x7f8ed0344e00
 11605 ms  0x7024 PK11_Encrypt()
 11605 ms  0x7024 symkey:0x7f8ee18c3580
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ed00de300
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ed00ddd80
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ee474aa80
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ee1282480
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ee1247900
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ee14eb280
 11606 ms  0x7024 PK11_Encrypt()
 11606 ms  0x7024 symkey:0x7f8ee4749e80
           /* TID 0x7074 */
 11606 ms  0x7074 PR_Close()
 11606 ms  0x7074 fd:0x7f8ee2289cd0
 11606 ms  0x7074 PR_Close()
 11606 ms  0x7074 fd:0x7f8ee2289cd0
           /* TID 0x7024 */
 11607 ms  0x7024 PK11_Encrypt()
 11607 ms  0x7024 symkey:0x7f8ed00de200
 11607 ms  0x7024 PK11_Encrypt()
 11607 ms  0x7024 symkey:0x7f8ee474a080
 11607 ms  0x7024 PK11_Encrypt()
 11607 ms  0x7024 symkey:0x7f8ee2b9f900
 11608 ms  0x7024 PK11_Encrypt()
 11608 ms  0x7024 symkey:0x7f8ee2b9ea00
 11608 ms  0x7024 PK11_Encrypt()
 11608 ms  0x7024 symkey:0x7f8ed001be80
 11608 ms  0x7024 PK11_Encrypt()
 11608 ms  0x7024 symkey:0x7f8ed00de080
 11608 ms  0x7024 PK11_Encrypt()
 11608 ms  0x7024 symkey:0x7f8ee1281400
 11608 ms  0x7024 PK11_Encrypt()
 11608 ms  0x7024 symkey:0x7f8ee1282700
 11609 ms  0x7024 PK11_Encrypt()
 11609 ms  0x7024 symkey:0x7f8ee2b9ed00
 11609 ms  0x7024 PK11_Encrypt()
 11609 ms  0x7024 symkey:0x7f8eeb238f00
 11609 ms  0x7024 PK11_Encrypt()
 11609 ms  0x7024 symkey:0x7f8ee1281d80
 11609 ms  0x7024 PK11_Encrypt()
 11609 ms  0x7024 symkey:0x7f8ed00de600
 11609 ms  0x7024 PR_Close()
 11609 ms  0x7024 fd:0x7f8ee7c02070
 11609 ms     | 0x7024 PK11_Encrypt()
 11609 ms     | 0x7024 symkey:0x7f8ee2925800
 11609 ms  0x7024 PR_Close()
 11609 ms  0x7024 fd:0x7f8ee7b80940
 11609 ms     | 0x7024 PK11_Encrypt()
 11609 ms     | 0x7024 symkey:0x7f8ee396bc80
 11609 ms  0x7024 PR_Close()
 11609 ms  0x7024 fd:0x7f8ee77021f0
 11609 ms     | 0x7024 PK11_Encrypt()
 11609 ms     | 0x7024 symkey:0x7f8ee27c8580
 11609 ms  0x7024 PR_Close()
 11609 ms  0x7024 fd:0x7f8ee75fd130
 11609 ms     | 0x7024 PK11_Encrypt()
 11609 ms     | 0x7024 symkey:0x7f8ee27d5b00
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ee47c40d0
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ee2b8c640
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ee47fdca0
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ee7527070
 11610 ms     | 0x7024 PK11_Encrypt()
 11610 ms     | 0x7024 symkey:0x7f8ed00dea00
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ed0362940
 11610 ms     | 0x7024 PK11_Encrypt()
 11610 ms     | 0x7024 symkey:0x7f8ed0492b00
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ed0487d60
 11610 ms  0x7024 PR_Close()
 11610 ms  0x7024 fd:0x7f8ed0379a30
 11610 ms     | 0x7024 PK11_Encrypt()
 11610 ms     | 0x7024 symkey:0x7f8ed0493080
 11611 ms  0x7024 PR_Close()
 11611 ms  0x7024 fd:0x7f8ed0428220
 11611 ms     | 0x7024 PK11_Encrypt()
 11611 ms     | 0x7024 symkey:0x7f8ee12f8c00
 11611 ms  0x7024 PR_Close()
 11611 ms  0x7024 fd:0x7f8ee14fee80
 11611 ms  0x7024 PR_Close()
 11611 ms  0x7024 fd:0x7f8ee14fe910
 11611 ms     | 0x7024 PK11_Encrypt()
 11611 ms     | 0x7024 symkey:0x7f8ee12f7e80
 11611 ms  0x7024 PR_Close()
 11611 ms  0x7024 fd:0x7f8ee1681fa0
 11611 ms  0x7024 PR_Close()
 11611 ms  0x7024 fd:0x7f8ee1629e20
 11611 ms     | 0x7024 PK11_Encrypt()
 11611 ms     | 0x7024 symkey:0x7f8ee30bdd00
 11612 ms  0x7024 PR_Close()
 11612 ms  0x7024 fd:0x7f8ee47fdaf0
 11612 ms     | 0x7024 PK11_Encrypt()
 11612 ms     | 0x7024 symkey:0x7f8ee0f93380
           /* TID 0x702c */
 11615 ms  0x702c PR_Close()
 11615 ms  0x702c fd:0x7f8ed0379fa0
           /* TID 0x7024 */
 11617 ms  0x7024 PR_Close()
 11617 ms  0x7024 fd:0x7f8ee75fd070
 11617 ms     | 0x7024 PK11_Encrypt()
 11617 ms     | 0x7024 symkey:0x7f8ee1246c00
 11617 ms  0x7024 PR_Close()
 11617 ms  0x7024 fd:0x7f8ee128ba00
 11617 ms     | 0x7024 PK11_Encrypt()
 11617 ms     | 0x7024 symkey:0x7f8ee1247900
 11617 ms  0x7024 PR_Close()
 11617 ms  0x7024 fd:0x7f8ee29b0220
 11617 ms     | 0x7024 PK11_Encrypt()
 11617 ms     | 0x7024 symkey:0x7f8ee1282480
 11618 ms  0x7024 PR_Close()
 11618 ms  0x7024 fd:0x7f8ee747fb80
 11618 ms     | 0x7024 PK11_Encrypt()
 11618 ms     | 0x7024 symkey:0x7f8ee18c3580
 11618 ms  0x7024 PR_Close()
 11618 ms  0x7024 fd:0x7f8ee75fbdc0
 11618 ms     | 0x7024 PK11_Encrypt()
 11618 ms     | 0x7024 symkey:0x7f8ee14eb280
 11618 ms  0x7024 PR_Close()
 11618 ms  0x7024 fd:0x7f8ee7a499a0
 11618 ms     | 0x7024 PK11_Encrypt()
 11618 ms     | 0x7024 symkey:0x7f8ee2b9f900
 11618 ms  0x7024 PR_Close()
 11618 ms  0x7024 fd:0x7f8ee618fd30
 11618 ms     | 0x7024 PK11_Encrypt()
 11618 ms     | 0x7024 symkey:0x7f8ed00de300
 11619 ms  0x7024 PR_Close()
 11619 ms  0x7024 fd:0x7f8ee47c4b50
 11619 ms     | 0x7024 PK11_Encrypt()
 11619 ms     | 0x7024 symkey:0x7f8ed00de600
 11619 ms  0x7024 PR_Close()
 11619 ms  0x7024 fd:0x7f8ee7a49190
 11619 ms     | 0x7024 PK11_Encrypt()
 11619 ms     | 0x7024 symkey:0x7f8ee2b9ed00
 11619 ms  0x7024 PR_Close()
 11619 ms  0x7024 fd:0x7f8ee7b80e20
 11619 ms     | 0x7024 PK11_Encrypt()
 11619 ms     | 0x7024 symkey:0x7f8ee474a080
 11619 ms  0x7024 PR_Close()
 11619 ms  0x7024 fd:0x7f8ee7be5ac0
 11619 ms     | 0x7024 PK11_Encrypt()
 11619 ms     | 0x7024 symkey:0x7f8ee474aa80
 11620 ms  0x7024 PR_Close()
 11620 ms  0x7024 fd:0x7f8ed0379fd0
 11620 ms     | 0x7024 PK11_Encrypt()
 11620 ms     | 0x7024 symkey:0x7f8ed00de200
 11620 ms  0x7024 PR_Close()
 11620 ms  0x7024 fd:0x7f8ed0379ee0
 11620 ms     | 0x7024 PK11_Encrypt()
 11620 ms     | 0x7024 symkey:0x7f8ed00ddd80
 11624 ms  0x7024 PR_Close()
 11624 ms  0x7024 fd:0x7f8ed02e2f40
 11624 ms     | 0x7024 PK11_Encrypt()
 11624 ms     | 0x7024 symkey:0x7f8ed00de080
 11625 ms  0x7024 PR_Close()
 11625 ms  0x7024 fd:0x7f8ee271f790
 11625 ms     | 0x7024 PK11_Encrypt()
 11625 ms     | 0x7024 symkey:0x7f8eeb238f00
 11625 ms  0x7024 PR_Close()
 11625 ms  0x7024 fd:0x7f8ee7c16250
 11625 ms     | 0x7024 PK11_Encrypt()
 11625 ms     | 0x7024 symkey:0x7f8ed001be80
 11625 ms  0x7024 PR_Close()
 11625 ms  0x7024 fd:0x7f8ee7a49fa0
 11625 ms     | 0x7024 PK11_Encrypt()
 11625 ms     | 0x7024 symkey:0x7f8ee4749e80
 11626 ms  0x7024 PR_Close()
 11626 ms  0x7024 fd:0x7f8ee7702430
 11626 ms     | 0x7024 PK11_Encrypt()
 11626 ms     | 0x7024 symkey:0x7f8ee2b9ea00
 11626 ms  0x7024 PR_Close()
 11626 ms  0x7024 fd:0x7f8ee27b5190
 11626 ms     | 0x7024 PK11_Encrypt()
 11626 ms     | 0x7024 symkey:0x7f8ee1282700
 11631 ms  0x7024 PR_Close()
 11631 ms  0x7024 fd:0x7f8ee27b5550
 11631 ms     | 0x7024 PK11_Encrypt()
 11631 ms     | 0x7024 symkey:0x7f8ee1281d80
 11632 ms  0x7024 PR_Close()
 11632 ms  0x7024 fd:0x7f8ee1309c70
 11632 ms     | 0x7024 PK11_Encrypt()
 11632 ms     | 0x7024 symkey:0x7f8ee1281400
 11632 ms  0x7024 SECKEY_DestroyPrivateKey()
 11632 ms  0x7024 privk:0x7f8ee7c94820::7f8ee7c94820  c0 94 23 e2                                      ..#.
 11632 ms  0x7024 privk:0x7f8ee7c94820::7f8ee7c94820  e5 e5 e5 e5                                      ....
 11632 ms  0x7024 SECKEY_DestroyPrivateKey()
 11632 ms  0x7024 privk:0x7f8ee7c92020::7f8ee7c92020  20 29 20 e2                                       ) .
 11632 ms  0x7024 privk:0x7f8ee7c92020::7f8ee7c92020  e5 e5 e5 e5                                      ....
 11645 ms  0x7024 SSL_ImportFD()
 11645 ms  0x7024 ret:0x7f8ed0487e50
 11645 ms  0x7024 SSL_AuthCertificateHook()
 11645 ms  0x7024 fd:0x7f8ed0487e50
 11645 ms  0x7024 ret:0x0
 11645 ms  0x7024 PR_Connect()
 11645 ms  0x7024 fd:0x7f8ed0487e50
 11654 ms  0x7024 PK11_Encrypt()
 11654 ms  0x7024 symkey:0x7f8ed0344e00
 11654 ms  0x7024 PK11_Encrypt()
 11654 ms  0x7024 symkey:0x7f8ed0344e00
 11655 ms  0x7024 PR_Close()
 11655 ms  0x7024 fd:0x7f8ee34fe730
 11655 ms     | 0x7024 PK11_Encrypt()
 11655 ms     | 0x7024 symkey:0x7f8ed0344e00
 11655 ms  0x7024 SSL_ImportFD()
 11655 ms  0x7024 ret:0x7f8ee128ba90
 11655 ms  0x7024 SSL_AuthCertificateHook()
 11655 ms  0x7024 fd:0x7f8ee128ba90
 11655 ms  0x7024 ret:0x0
 11655 ms  0x7024 PR_Connect()
 11655 ms  0x7024 fd:0x7f8ee128ba90
 11661 ms  0x7024 PK11_Encrypt()
 11661 ms  0x7024 symkey:0x7f8ee2925c80
 11661 ms  0x7024 PK11_Encrypt()
 11661 ms  0x7024 symkey:0x7f8ee2925c80
 11661 ms  0x7024 PK11_Encrypt()
 11661 ms  0x7024 symkey:0x7f8ee2925c80
 11671 ms  0x7024 SECKEY_CreateECPrivateKey()
 11671 ms  0x7024 cx:0x7f8ed0408728
 11671 ms     | 0x7024 EC_ValidatePublicKey()
 11671 ms     | 0x7024 ret:0x0
 11671 ms  0x7024 ret:0x7f8ed0081820::7f8ed0081820  b0 e0 4d d0                                      ..M.
 11671 ms  0x7024 SECKEY_CreateECPrivateKey()
 11671 ms  0x7024 cx:0x7f8ed0408728
 11672 ms     | 0x7024 EC_ValidatePublicKey()
 11674 ms     | 0x7024 ret:0x0
 11674 ms  0x7024 ret:0x7f8ed0083820::7f8ed0083820  c0 34 4d d0                                      .4M.
 11681 ms  0x7024 SECKEY_CreateECPrivateKey()
 11681 ms  0x7024 cx:0x7f8ed04088c8
 11682 ms     | 0x7024 EC_ValidatePublicKey()
 11682 ms     | 0x7024 ret:0x0
 11682 ms  0x7024 ret:0x7f8ed0087820::7f8ed0087820  00 bb 24 e1                                      ..$.
 11682 ms  0x7024 SECKEY_CreateECPrivateKey()
 11682 ms  0x7024 cx:0x7f8ed04088c8
 11684 ms     | 0x7024 EC_ValidatePublicKey()
 11687 ms     | 0x7024 ret:0x0
 11687 ms  0x7024 ret:0x7f8ed032a020::7f8ed032a020  40 42 30 e1                                      @B0.
           /* TID 0x70c8 */
 11703 ms  0x70c8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11703 ms  0x70c8 ret:0x0
           /* TID 0x7024 */
 11703 ms  SECKEY_ECParamsToKeySize()
 11703 ms  0x7024 ret:0xff
 11704 ms  0x7024 SECKEY_CreateECPrivateKey()
 11704 ms  0x7024 cx:0x7f8ed0408728
 11707 ms     | 0x7024 EC_ValidatePublicKey()
 11707 ms     | 0x7024 ret:0x0
 11707 ms  0x7024 ret:0x7f8ed033a820::7f8ed033a820  10 75 8d e1                                      .u..
 11707 ms  0x7024 PK11_PubDeriveWithKDF()
 11707 ms  0x7024 seckey:0x7f8ed033a820
 11707 ms     | 0x7024 EC_ValidatePublicKey()
 11707 ms     | 0x7024 ret:0x0
 11708 ms  0x7024 ret:0x7f8ed001c080
 11708 ms  0x7024 PK11_DeriveWithFlags()
 11708 ms  0x7024 basekey:0x7f8ed001c080
 11708 ms     | 0x7024 PK11_DeriveWithTemplate()
 11708 ms  0x7024 ret:0x7f8ed001ba80
 11708 ms  0x7024 PK11_Derive()
 11708 ms  0x7024 basekey:0x7f8ed001ba80
 11708 ms     | 0x7024 PK11_DeriveWithTemplate()
 11708 ms  0x7024 ret:0x7f8ee1247d80
 11708 ms  0x7024 SECKEY_DestroyPrivateKey()
 11708 ms  0x7024 privk:0x7f8ed033a820::7f8ed033a820  10 75 8d e1                                      .u..
 11708 ms  0x7024 privk:0x7f8ed033a820::7f8ed033a820  e5 e5 e5 e5                                      ....
 11708 ms  0x7024 PK11_Encrypt()
 11708 ms  0x7024 symkey:0x7f8ed0344d00
 11709 ms  0x7024 SSL_AuthCertificateComplete()
 11709 ms  0x7024 fd:0x7f8ed0487e50
 11709 ms  0x7024 err:0x0
 11709 ms  0x7024 PK11_Encrypt()
 11709 ms  0x7024 symkey:0x7f8ed0344d00
 11709 ms  0x7024 PK11_Encrypt()
 11709 ms  0x7024 symkey:0x7f8ed0344d00
 11710 ms  0x7024 PK11_Encrypt()
 11710 ms  0x7024 symkey:0x7f8ed0344d00
 11710 ms  0x7024 PK11_Encrypt()
 11710 ms  0x7024 symkey:0x7f8ed0344d00
 11710 ms  0x7024 PK11_Encrypt()
 11710 ms  0x7024 symkey:0x7f8ed0344d00
 11713 ms  0x7024 PK11_Derive()
 11713 ms  0x7024 basekey:0x7f8ee1246d00
 11713 ms     | 0x7024 PK11_DeriveWithTemplate()
 11713 ms  0x7024 ret:0x7f8ed001c080
 11713 ms  0x7024 PK11_Encrypt()
 11713 ms  0x7024 symkey:0x7f8ee1281c80
 11714 ms  0x7024 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11714 ms  0x7024 ret:0x0
 11714 ms  0x7024 SECKEY_DestroyPrivateKey()
 11714 ms  0x7024 privk:0x7f8ed032a020::7f8ed032a020  40 42 30 e1                                      @B0.
 11715 ms  0x7024 privk:0x7f8ed032a020::7f8ed032a020  e5 e5 e5 e5                                      ....
 11715 ms  0x7024 SECKEY_DestroyPrivateKey()
 11715 ms  0x7024 privk:0x7f8ed0087820::7f8ed0087820  00 bb 24 e1                                      ..$.
 11715 ms  0x7024 privk:0x7f8ed0087820::7f8ed0087820  e5 e5 e5 e5                                      ....
 11715 ms  0x7024 PK11_Encrypt()
 11715 ms  0x7024 symkey:0x7f8ee1281c80
 11715 ms  0x7024 PK11_Encrypt()
 11715 ms  0x7024 symkey:0x7f8ee1281c80
 11716 ms  0x7024 PK11_Encrypt()
 11716 ms  0x7024 symkey:0x7f8ee1281c80
 11735 ms  0x7024 SECKEY_DestroyPrivateKey()
 11735 ms  0x7024 privk:0x7f8ed0083820::7f8ed0083820  c0 34 4d d0                                      .4M.
 11735 ms  0x7024 privk:0x7f8ed0083820::7f8ed0083820  e5 e5 e5 e5                                      ....
 11735 ms  0x7024 SECKEY_DestroyPrivateKey()
 11735 ms  0x7024 privk:0x7f8ed0081820::7f8ed0081820  b0 e0 4d d0                                      ..M.
 11735 ms  0x7024 privk:0x7f8ed0081820::7f8ed0081820  e5 e5 e5 e5                                      ....
 11735 ms  0x7024 PK11_Encrypt()
 11735 ms  0x7024 symkey:0x7f8ed0344d00
 11810 ms  0x7024 PK11_Encrypt()
 11810 ms  0x7024 symkey:0x7f8ee1281c80
           /* TID 0x702c */
 11849 ms  0x702c PR_Close()
 11849 ms  0x702c fd:0x7f8ee128b190
           /* TID 0x7019 */
 11897 ms  0x7019 PR_Close()
 11897 ms  0x7019 fd:0x7f8ee2bf69d0
 11897 ms  0x7019 PR_Close()
 11897 ms  0x7019 fd:0x7f8ee128bb50
 11898 ms  0x7019 PR_Close()
 11898 ms  0x7019 fd:0x7f8ee128bbb0
 11898 ms  0x7019 PR_Close()
 11898 ms  0x7019 fd:0x7f8ee128bb50
 11899 ms  0x7019 PR_Close()
 11899 ms  0x7019 fd:0x7f8ee128bbb0
 11900 ms  0x7019 PR_Close()
 11900 ms  0x7019 fd:0x7f8ee128bb50
           /* TID 0x708a */
 11903 ms  0x708a PR_Close()
 11903 ms  0x708a fd:0x7f8ee128bb50
           /* TID 0x7019 */
 11929 ms  0x7019 PR_Close()
 11929 ms  0x7019 fd:0x7f8ee128bbb0
 11929 ms  0x7019 PR_Close()
 11929 ms  0x7019 fd:0x7f8ee16815e0
 11930 ms  0x7019 PR_Close()
 11930 ms  0x7019 fd:0x7f8ee128bbb0
 11930 ms  0x7019 PR_Close()
 11930 ms  0x7019 fd:0x7f8ee16815e0
 11930 ms  0x7019 PR_Close()
 11930 ms  0x7019 fd:0x7f8eec4c89a0
 11930 ms  0x7019 PR_Close()
 11930 ms  0x7019 fd:0x7f8eec4c88b0
 11930 ms  0x7019 PR_Close()
 11930 ms  0x7019 fd:0x7f8eec4c8a60
 11932 ms  0x7019 PR_Close()
 11932 ms  0x7019 fd:0x7f8ee1629d30
 11933 ms  0x7019 PR_Close()
 11933 ms  0x7019 fd:0x7f8ee1629d30
 11934 ms  0x7019 PR_Close()
 11934 ms  0x7019 fd:0x7f8ee128bbb0
 11935 ms  0x7019 PR_Close()
 11935 ms  0x7019 fd:0x7f8ee16815e0
 11936 ms  0x7019 PR_Close()
 11936 ms  0x7019 fd:0x7f8ee128bbb0
 11936 ms  0x7019 PR_Close()
 11936 ms  0x7019 fd:0x7f8ee14fe370
 11947 ms  0x7019 PR_Close()
 11947 ms  0x7019 fd:0x7f8ee16815e0
 11949 ms  0x7019 PR_Close()
 11949 ms  0x7019 fd:0x7f8ee16815e0
 11950 ms  0x7019 PR_Close()
 11950 ms  0x7019 fd:0x7f8ee128bbb0
 11950 ms  0x7019 PR_Close()
 11950 ms  0x7019 fd:0x7f8ee1681760
 11951 ms  0x7019 PR_Close()
 11951 ms  0x7019 fd:0x7f8ee128bbb0
 11951 ms  0x7019 PR_Close()
 11951 ms  0x7019 fd:0x7f8ee1681760
 11953 ms  0x7019 PR_Close()
 11953 ms  0x7019 fd:0x7f8ee1681790
 11954 ms  0x7019 PR_Close()
 11954 ms  0x7019 fd:0x7f8ee1681790
 11961 ms  0x7019 PR_Close()
 11961 ms  0x7019 fd:0x7f8ee271f610
 11961 ms  0x7019 PR_Close()
 11961 ms  0x7019 fd:0x7f8ee271f610
 11963 ms  0x7019 PR_Close()
 11963 ms  0x7019 fd:0x7f8ee271f640
           /* TID 0x701e */
 11986 ms  0x701e PR_Close()
 11986 ms  0x701e fd:0x7f8eeb278df0
           /* TID 0x7019 */
 11986 ms  0x7019 PR_Close()
 11986 ms  0x7019 fd:0x7f8ee128bbb0
 11986 ms  0x7019 PR_Close()
 11986 ms  0x7019 fd:0x7f8ee14fe070
           /* TID 0x708a */
 11995 ms  0x708a PR_Close()
 11995 ms  0x708a fd:0x7f8ee128bb20
           /* TID 0x7019 */
 11996 ms  0x7019 PR_Close()
 11996 ms  0x7019 fd:0x7f8ee128bbb0
 11996 ms  0x7019 PR_Close()
 11996 ms  0x7019 fd:0x7f8ee14fef70
           /* TID 0x70cc */
 12005 ms  0x70cc PR_Close()
 12005 ms  0x70cc fd:0x7f8ee27b5f70
 12033 ms  0x70cc PR_Close()
 12033 ms  0x70cc fd:0x7f8ed0130040
           /* TID 0x7024 */
 12036 ms  0x7024 PK11_Encrypt()
 12036 ms  0x7024 symkey:0x7f8ee1281c80
 12036 ms  0x7024 PK11_Encrypt()
 12036 ms  0x7024 symkey:0x7f8ed0344d00
 12037 ms  0x7024 PR_Close()
 12037 ms  0x7024 fd:0x7f8ee128ba90
 12037 ms     | 0x7024 PK11_Encrypt()
 12037 ms     | 0x7024 symkey:0x7f8ee1281c80
 12037 ms  0x7024 PR_Close()
 12037 ms  0x7024 fd:0x7f8ed0487e50
 12037 ms     | 0x7024 PK11_Encrypt()
 12037 ms     | 0x7024 symkey:0x7f8ed0344d00
           /* TID 0x70cc */
 12042 ms  0x70cc PR_Close()
 12042 ms  0x70cc fd:0x7f8ed0130100
           /* TID 0x708a */
 12043 ms  0x708a PR_Close()
 12043 ms  0x708a fd:0x7f8ee128bb20
           /* TID 0x7024 */
 12048 ms  0x7024 PR_Close()
 12048 ms  0x7024 fd:0x7f8ee7b80f10
 12048 ms     | 0x7024 PK11_Encrypt()
 12048 ms     | 0x7024 symkey:0x7f8ee2925c80
 12065 ms  0x7024 PR_Close()
 12065 ms  0x7024 fd:0x7f8eec16fbe0
           /* TID 0x7019 */
 12066 ms  0x7019 PR_Close()
 12066 ms  0x7019 fd:0x7f8ee128bbb0
 12066 ms  0x7019 PR_Close()
 12066 ms  0x7019 fd:0x7f8ed0130910
           /* TID 0x7074 */
 12067 ms  0x7074 PR_Close()
 12067 ms  0x7074 fd:0x7f8ed0347130
 12067 ms  0x7074 PR_Close()
 12067 ms  0x7074 fd:0x7f8ed0130040
 12067 ms  0x7074 PR_Close()
 12067 ms  0x7074 fd:0x7f8ed0130040
 12067 ms  0x7074 PR_Close()
 12067 ms  0x7074 fd:0x7f8ed0130040
           /* TID 0x70cc */
 12068 ms  0x70cc PR_Close()
 12068 ms  0x70cc fd:0x7f8ed02ff430
           /* TID 0x702c */
 12071 ms  0x702c PR_Close()
 12071 ms  0x702c fd:0x7f8ed0379e20
 12071 ms  0x702c PR_Close()
 12071 ms  0x702c fd:0x7f8ed0379e50
           /* TID 0x701e */
 12081 ms  0x701e PR_Close()
 12081 ms  0x701e fd:0x7f8ee1681430
           /* TID 0x7019 */
 12151 ms  0x7019 PR_Close()
 12151 ms  0x7019 fd:0x7f8ed02e2d90
 12151 ms  0x7019 PR_Close()
 12151 ms  0x7019 fd:0x7f8ed0379f70
           /* TID 0x70cc */
 12154 ms  0x70cc PR_Close()
 12154 ms  0x70cc fd:0x7f8ed0362b50
           /* TID 0x701e */
 12156 ms  0x701e PR_Close()
 12156 ms  0x701e fd:0x7f8ee7731820
           /* TID 0x70cc */
 12156 ms  0x70cc PR_Close()
 12156 ms  0x70cc fd:0x7f8ed0130d30
 12179 ms  0x70cc PR_Close()
 12179 ms  0x70cc fd:0x7f8ed0130e50
 12181 ms  0x70cc PR_Close()
 12181 ms  0x70cc fd:0x7f8ed0130e50
 12184 ms  0x70cc PR_Close()
 12184 ms  0x70cc fd:0x7f8ed02ff8b0
 12185 ms  0x70cc PR_Close()
 12185 ms  0x70cc fd:0x7f8ed02ff8e0
 12193 ms  0x70cc PR_Close()
 12193 ms  0x70cc fd:0x7f8ed0347d60
 12198 ms  0x70cc PR_Close()
 12198 ms  0x70cc fd:0x7f8ed0362820
 12204 ms  0x70cc PR_Close()
 12204 ms  0x70cc fd:0x7f8ed0362a60
 12214 ms  0x70cc PR_Close()
 12214 ms  0x70cc fd:0x7f8ed0362d00
 12216 ms  0x70cc PR_Close()
 12216 ms  0x70cc fd:0x7f8ed0362d00
           /* TID 0x7019 */
 12376 ms  0x7019 PR_Close()
 12376 ms  0x7019 fd:0x7f8ed02e20d0
 12377 ms  0x7019 PR_Close()
 12377 ms  0x7019 fd:0x7f8ed02e20d0
 12382 ms  0x7019 PR_Close()
 12382 ms  0x7019 fd:0x7f8f098da130
 12382 ms  0x7019 PR_Close()
 12382 ms  0x7019 fd:0x7f8f098da190
Process terminated
