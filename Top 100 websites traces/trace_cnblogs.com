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
           /* TID 0x1884 */
    55 ms  0x1884 PR_Close()
    55 ms  0x1884 fd:0x7febe6d9cbe0
           /* TID 0x187c */
   144 ms  0x187c SSL_ImportFD()
   144 ms  0x187c ret:0x7febd7b0a790
   144 ms  0x187c SSL_AuthCertificateHook()
   144 ms  0x187c fd:0x7febd7b0a790
   145 ms  0x187c ret:0x0
   145 ms  0x187c PR_Connect()
   145 ms  0x187c fd:0x7febd7b0a790
   170 ms  0x187c SECKEY_CreateECPrivateKey()
   170 ms  0x187c cx:0x7febd7b05b28
   172 ms     | 0x187c EC_ValidatePublicKey()
   172 ms     | 0x187c ret:0x0
   172 ms  0x187c ret:0x7febd7b6e820::7febd7b6e820  70 69 b0 d7                                      pi..
   172 ms  0x187c SECKEY_CreateECPrivateKey()
   172 ms  0x187c cx:0x7febd7b05b28
   174 ms     | 0x187c EC_ValidatePublicKey()
   179 ms     | 0x187c ret:0x0
   179 ms  0x187c ret:0x7febd7b70820::7febd7b70820  30 68 b0 d7                                      0h..
           /* TID 0x18de */
   232 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   233 ms  0x18de ret:0x0
           /* TID 0x187c */
   233 ms  SECKEY_ECParamsToKeySize()
   233 ms  0x187c ret:0x100
   233 ms  0x187c SECKEY_CreateECPrivateKey()
   233 ms  0x187c cx:0x7febd7b05b28
   235 ms     | 0x187c EC_ValidatePublicKey()
   239 ms     | 0x187c ret:0x0
   239 ms  0x187c ret:0x7febd7b73820::7febd7b73820  d0 6d b0 d7                                      .m..
   240 ms  0x187c PK11_PubDeriveWithKDF()
   240 ms  0x187c seckey:0x7febd7b73820
   240 ms     | 0x187c EC_ValidatePublicKey()
   244 ms     | 0x187c ret:0x0
   248 ms  0x187c ret:0x7febd9737780
   248 ms  0x187c PK11_DeriveWithFlags()
   248 ms  0x187c basekey:0x7febd9737780
   248 ms     | 0x187c PK11_DeriveWithTemplate()
   248 ms  0x187c ret:0x7febd7be8a00
   248 ms  0x187c PK11_Derive()
   248 ms  0x187c basekey:0x7febd7be8a00
   248 ms     | 0x187c PK11_DeriveWithTemplate()
   248 ms  0x187c ret:0x7febd7be8c00
   248 ms  0x187c SECKEY_DestroyPrivateKey()
   248 ms  0x187c privk:0x7febd7b73820::7febd7b73820  d0 6d b0 d7                                      .m..
   248 ms  0x187c privk:0x7febd7b73820::7febd7b73820  e5 e5 e5 e5                                      ....
   249 ms  0x187c PK11_Encrypt()
   249 ms  0x187c symkey:0x7febd7be9100
   249 ms  0x187c SSL_AuthCertificateComplete()
   249 ms  0x187c fd:0x7febd7b0a790
   249 ms  0x187c err:0x0
   249 ms  0x187c PK11_Encrypt()
   249 ms  0x187c symkey:0x7febd7be9100
   303 ms  0x187c SECKEY_DestroyPrivateKey()
   303 ms  0x187c privk:0x7febd7b70820::7febd7b70820  30 68 b0 d7                                      0h..
   303 ms  0x187c privk:0x7febd7b70820::7febd7b70820  e5 e5 e5 e5                                      ....
   304 ms  0x187c SECKEY_DestroyPrivateKey()
   304 ms  0x187c privk:0x7febd7b6e820::7febd7b6e820  70 69 b0 d7                                      pi..
   304 ms  0x187c privk:0x7febd7b6e820::7febd7b6e820  e5 e5 e5 e5                                      ....
   307 ms  0x187c PK11_Encrypt()
   307 ms  0x187c symkey:0x7febd7be9100
   335 ms  0x187c PK11_Encrypt()
   335 ms  0x187c symkey:0x7febd7be9100
   366 ms  0x187c PK11_Encrypt()
   366 ms  0x187c symkey:0x7febd7be9100
   399 ms  0x187c PK11_Encrypt()
   399 ms  0x187c symkey:0x7febd7be9100
   514 ms  0x187c PK11_Encrypt()
   514 ms  0x187c symkey:0x7febd7be9100
   546 ms  0x187c PK11_Encrypt()
   546 ms  0x187c symkey:0x7febd7be9100
           /* TID 0x189e */
   571 ms  0x189e PR_Close()
   571 ms  0x189e fd:0x7febe6d28100
   573 ms  0x189e PR_Close()
   573 ms  0x189e fd:0x7febe6d28100
           /* TID 0x187c */
   577 ms  0x187c PK11_Encrypt()
   577 ms  0x187c symkey:0x7febd7be9100
           /* TID 0x18d9 */
   605 ms  0x18d9 PR_Close()
   605 ms  0x18d9 fd:0x7febd7b9bd60
   605 ms  0x18d9 PR_Close()
   605 ms  0x18d9 fd:0x7febe6d28130
   605 ms  0x18d9 PR_Close()
   605 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febd7b9bd60
   606 ms  0x18d9 PR_Close()
   606 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febe6d28130
   607 ms  0x18d9 PR_Close()
   607 ms  0x18d9 fd:0x7febd7b9bd60
   608 ms  0x18d9 PR_Close()
   608 ms  0x18d9 fd:0x7febe6d28130
   608 ms  0x18d9 PR_Close()
   608 ms  0x18d9 fd:0x7febd7b9bd60
   608 ms  0x18d9 PR_Close()
   608 ms  0x18d9 fd:0x7febe6d28130
   611 ms  0x18d9 PR_Close()
   611 ms  0x18d9 fd:0x7febd7b9bd60
   611 ms  0x18d9 PR_Close()
   611 ms  0x18d9 fd:0x7febd7b9bd60
   615 ms  0x18d9 PR_Close()
   615 ms  0x18d9 fd:0x7febd7b9bd60
   615 ms  0x18d9 PR_Close()
   615 ms  0x18d9 fd:0x7febe6d28100
   618 ms  0x18d9 PR_Close()
   618 ms  0x18d9 fd:0x7febe6d28100
   618 ms  0x18d9 PR_Close()
   618 ms  0x18d9 fd:0x7febe6d28100
   620 ms  0x18d9 PR_Close()
   620 ms  0x18d9 fd:0x7febe6d28100
   620 ms  0x18d9 PR_Close()
   620 ms  0x18d9 fd:0x7febe6d28100
   725 ms  0x18d9 PR_Close()
   725 ms  0x18d9 fd:0x7febe6d28100
   726 ms  0x18d9 PR_Close()
   726 ms  0x18d9 fd:0x7febe6d28100
           /* TID 0x189e */
   737 ms  0x189e PR_Close()
   737 ms  0x189e fd:0x7febe6d28190
           /* TID 0x18d9 */
   739 ms  0x18d9 PR_Close()
   739 ms  0x18d9 fd:0x7febe6d28100
   739 ms  0x18d9 PR_Close()
   739 ms  0x18d9 fd:0x7febe6d28100
   749 ms  0x18d9 PR_Close()
   749 ms  0x18d9 fd:0x7febe6d28100
   750 ms  0x18d9 PR_Close()
   750 ms  0x18d9 fd:0x7febe6d28100
   753 ms  0x18d9 PR_Close()
   753 ms  0x18d9 fd:0x7febe6d28100
   753 ms  0x18d9 PR_Close()
   753 ms  0x18d9 fd:0x7febe6d28100
           /* TID 0x18d6 */
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   753 ms  0x18d6 PR_Close()
   753 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
   754 ms  0x18d6 PR_Close()
   754 ms  0x18d6 fd:0x7febe6d28100
           /* TID 0x189e */
  1257 ms  0x189e PR_Close()
  1257 ms  0x189e fd:0x7febd7b0ad60
  1261 ms  0x189e PR_Close()
  1261 ms  0x189e fd:0x7febd7b0ad60
  2737 ms  0x189e PR_Close()
  2737 ms  0x189e fd:0x7febddcdff70
           /* TID 0x1884 */
  4210 ms  0x1884 PR_Close()
  4210 ms  0x1884 fd:0x7febddffe0a0
  4210 ms  0x1884 PR_Close()
  4210 ms  0x1884 fd:0x7febde11e310
           /* TID 0x187c */
  4831 ms  0x187c SSL_ImportFD()
  4831 ms  0x187c ret:0x7febd8caa790
  4831 ms  0x187c SSL_AuthCertificateHook()
  4831 ms  0x187c fd:0x7febd8caa790
  4831 ms  0x187c ret:0x0
  4831 ms  0x187c PR_Connect()
  4831 ms  0x187c fd:0x7febd8caa790
  5081 ms  0x187c SSL_ImportFD()
  5081 ms  0x187c ret:0x7febd8caa940
  5082 ms  0x187c SSL_AuthCertificateHook()
  5082 ms  0x187c fd:0x7febd8caa940
  5082 ms  0x187c ret:0x0
  5082 ms  0x187c PR_Connect()
  5082 ms  0x187c fd:0x7febd8caa940
  5091 ms  0x187c SECKEY_CreateECPrivateKey()
  5091 ms  0x187c cx:0x7febd7c225c8
  5093 ms     | 0x187c EC_ValidatePublicKey()
  5093 ms     | 0x187c ret:0x0
  5093 ms  0x187c ret:0x7febc6f96820::7febc6f96820  30 28 e3 c6                                      0(..
  5094 ms  0x187c SECKEY_CreateECPrivateKey()
  5094 ms  0x187c cx:0x7febd7c225c8
  5096 ms     | 0x187c EC_ValidatePublicKey()
  5106 ms     | 0x187c ret:0x0
  5106 ms  0x187c ret:0x7febc6f98820::7febc6f98820  60 2a e3 c6                                      `*..
  5343 ms  0x187c SECKEY_CreateECPrivateKey()
  5343 ms  0x187c cx:0x7febd7c22768
  5345 ms     | 0x187c EC_ValidatePublicKey()
  5345 ms     | 0x187c ret:0x0
  5345 ms  0x187c ret:0x7febc6f9b020::7febc6f9b020  80 28 e3 c6                                      .(..
  5345 ms  0x187c SECKEY_CreateECPrivateKey()
  5345 ms  0x187c cx:0x7febd7c22768
  5348 ms     | 0x187c EC_ValidatePublicKey()
  5354 ms     | 0x187c ret:0x0
  5354 ms  0x187c ret:0x7febc6f9d020::7febc6f9d020  80 2d e3 c6                                      .-..
  5375 ms  SECKEY_ECParamsToKeySize()
  5375 ms  0x187c ret:0x100
  5376 ms  0x187c SECKEY_CreateECPrivateKey()
  5376 ms  0x187c cx:0x7febd7c225c8
  5378 ms     | 0x187c EC_ValidatePublicKey()
  5383 ms     | 0x187c ret:0x0
  5383 ms  0x187c ret:0x7febc6fa7820::7febc6fa7820  80 13 e2 c6                                      ....
  5383 ms  0x187c PK11_PubDeriveWithKDF()
  5383 ms  0x187c seckey:0x7febc6fa7820
  5383 ms     | 0x187c EC_ValidatePublicKey()
  5388 ms     | 0x187c ret:0x0
  5396 ms  0x187c ret:0x7febd9737780
  5396 ms  0x187c PK11_DeriveWithFlags()
  5396 ms  0x187c basekey:0x7febd9737780
  5407 ms     | 0x187c PK11_DeriveWithTemplate()
  5407 ms  0x187c ret:0x7febd8c95b80
  5407 ms  0x187c PK11_Derive()
  5407 ms  0x187c basekey:0x7febd8c95b80
  5407 ms     | 0x187c PK11_DeriveWithTemplate()
  5407 ms  0x187c ret:0x7febd8c95c00
  5407 ms  0x187c SECKEY_DestroyPrivateKey()
  5407 ms  0x187c privk:0x7febc6fa7820::7febc6fa7820  80 13 e2 c6                                      ....
  5407 ms  0x187c privk:0x7febc6fa7820::7febc6fa7820  e5 e5 e5 e5                                      ....
  5408 ms  0x187c PK11_Encrypt()
  5408 ms  0x187c symkey:0x7febd8c95d80
  5619 ms  SECKEY_ECParamsToKeySize()
  5619 ms  0x187c ret:0x100
  5619 ms  0x187c SECKEY_CreateECPrivateKey()
  5619 ms  0x187c cx:0x7febd7c22768
  5621 ms     | 0x187c EC_ValidatePublicKey()
  5626 ms     | 0x187c ret:0x0
  5626 ms  0x187c ret:0x7febc6faa820::7febc6faa820  70 14 e2 c6                                      p...
  5629 ms  0x187c PK11_PubDeriveWithKDF()
  5629 ms  0x187c seckey:0x7febc6faa820
  5630 ms     | 0x187c EC_ValidatePublicKey()
  5634 ms     | 0x187c ret:0x0
  5639 ms  0x187c ret:0x7febd9737780
  5639 ms  0x187c PK11_DeriveWithFlags()
  5639 ms  0x187c basekey:0x7febd9737780
  5639 ms     | 0x187c PK11_DeriveWithTemplate()
  5639 ms  0x187c ret:0x7febd8c96080
  5639 ms  0x187c PK11_Derive()
  5639 ms  0x187c basekey:0x7febd8c96080
  5639 ms     | 0x187c PK11_DeriveWithTemplate()
  5639 ms  0x187c ret:0x7febd8c96100
  5640 ms  0x187c SECKEY_DestroyPrivateKey()
  5640 ms  0x187c privk:0x7febc6faa820::7febc6faa820  70 14 e2 c6                                      p...
  5640 ms  0x187c privk:0x7febc6faa820::7febc6faa820  e5 e5 e5 e5                                      ....
  5640 ms  0x187c PK11_Encrypt()
  5640 ms  0x187c symkey:0x7febd8c96280
  7153 ms  0x187c PR_Connect()
  7153 ms  0x187c fd:0x7febd7b11580
  7154 ms  0x187c PR_Connect()
  7154 ms  0x187c fd:0x7febd7b115b0
           /* TID 0x1884 */
  7284 ms  0x1884 PR_Close()
  7284 ms  0x1884 fd:0x7febd7b0a610
           /* TID 0x18de */
  7284 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7285 ms  0x18de ret:0x0
           /* TID 0x1884 */
  7288 ms  0x1884 PR_Close()
  7288 ms  0x1884 fd:0x7febd7b0ad30
           /* TID 0x1912 */
  7288 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7289 ms  0x1912 ret:0x0
           /* TID 0x187c */
  9294 ms  0x187c SSL_AuthCertificateComplete()
  9294 ms  0x187c fd:0x7febd8caa940
  9294 ms  0x187c err:0x0
  9295 ms     | 0x187c SECKEY_DestroyPrivateKey()
  9295 ms     | 0x187c privk:0x7febc6f9d020::7febc6f9d020  80 2d e3 c6                                      .-..
  9295 ms     | 0x187c privk:0x7febc6f9d020::7febc6f9d020  e5 e5 e5 e5                                      ....
  9295 ms     | 0x187c SECKEY_DestroyPrivateKey()
  9295 ms     | 0x187c privk:0x7febc6f9b020::7febc6f9b020  80 28 e3 c6                                      .(..
  9296 ms     | 0x187c privk:0x7febc6f9b020::7febc6f9b020  e5 e5 e5 e5                                      ....
  9297 ms  0x187c PK11_Encrypt()
  9297 ms  0x187c symkey:0x7febd8c96280
  9298 ms  0x187c SSL_AuthCertificateComplete()
  9298 ms  0x187c fd:0x7febd8caa790
  9298 ms  0x187c err:0x0
  9298 ms     | 0x187c SECKEY_DestroyPrivateKey()
  9298 ms     | 0x187c privk:0x7febc6f98820::7febc6f98820  60 2a e3 c6                                      `*..
  9298 ms     | 0x187c privk:0x7febc6f98820::7febc6f98820  e5 e5 e5 e5                                      ....
  9299 ms     | 0x187c SECKEY_DestroyPrivateKey()
  9299 ms     | 0x187c privk:0x7febc6f96820::7febc6f96820  30 28 e3 c6                                      0(..
  9299 ms     | 0x187c privk:0x7febc6f96820::7febc6f96820  e5 e5 e5 e5                                      ....
  9300 ms  0x187c PK11_Encrypt()
  9300 ms  0x187c symkey:0x7febd8c96280
  9303 ms  0x187c PK11_Encrypt()
  9303 ms  0x187c symkey:0x7febd8c95d80
  9304 ms  0x187c PK11_Encrypt()
  9304 ms  0x187c symkey:0x7febd8c96280
  9305 ms  0x187c PR_Close()
  9305 ms  0x187c fd:0x7febd8caa790
  9305 ms     | 0x187c PK11_Encrypt()
  9305 ms     | 0x187c symkey:0x7febd8c95d80
           /* TID 0x1884 */
  9375 ms  0x1884 PR_Close()
  9375 ms  0x1884 fd:0x7febd7b11e50
  9376 ms  0x1884 PR_Close()
  9376 ms  0x1884 fd:0x7febd7b11e50
           /* TID 0x1893 */
  9816 ms  0x1893 PR_Close()
  9816 ms  0x1893 fd:0x7febd7b9b2e0
           /* TID 0x187c */
  9892 ms  0x187c PK11_Encrypt()
  9892 ms  0x187c symkey:0x7febd8c96280
  9893 ms  0x187c PK11_Encrypt()
  9893 ms  0x187c symkey:0x7febd8c96280
  9895 ms  0x187c PK11_Encrypt()
  9895 ms  0x187c symkey:0x7febd8c96280
           /* TID 0x1884 */
 10052 ms  0x1884 PR_Close()
 10052 ms  0x1884 fd:0x7febddc422e0
 10152 ms  0x1884 PR_Close()
 10152 ms  0x1884 fd:0x7febdd963b50
           /* TID 0x187c */
 10183 ms  0x187c SSL_ImportFD()
 10183 ms  0x187c ret:0x7febddce94c0
 10183 ms  0x187c SSL_AuthCertificateHook()
 10183 ms  0x187c fd:0x7febddce94c0
 10183 ms  0x187c ret:0x0
 10183 ms  0x187c PR_Connect()
 10183 ms  0x187c fd:0x7febddce94c0
 10399 ms  0x187c SECKEY_CreateECPrivateKey()
 10399 ms  0x187c cx:0x7febd7c23948
 10401 ms     | 0x187c EC_ValidatePublicKey()
 10401 ms     | 0x187c ret:0x0
 10401 ms  0x187c ret:0x7febddb05820::7febddb05820  90 7c 12 de                                      .|..
 10401 ms  0x187c SECKEY_CreateECPrivateKey()
 10401 ms  0x187c cx:0x7febd7c23948
 10403 ms     | 0x187c EC_ValidatePublicKey()
           /* TID 0x1884 */
 10410 ms  0x1884 PR_Close()
 10410 ms  0x1884 fd:0x7febd9bfe190
 10415 ms  0x1884 PR_Close()
 10415 ms  0x1884 fd:0x7febd7b9bb20
           /* TID 0x187c */
 10420 ms     | 0x187c ret:0x0
 10420 ms  0x187c ret:0x7febddb11820::7febddb11820  20 49 ce dd                                       I..
 10638 ms  SECKEY_ECParamsToKeySize()
 10638 ms  0x187c ret:0x100
 10638 ms  0x187c SECKEY_CreateECPrivateKey()
 10638 ms  0x187c cx:0x7febd7c23948
 10640 ms     | 0x187c EC_ValidatePublicKey()
 10644 ms     | 0x187c ret:0x0
 10644 ms  0x187c ret:0x7febddb1a820::7febddb1a820  60 e0 14 de                                      `...
 10644 ms  0x187c PK11_PubDeriveWithKDF()
 10644 ms  0x187c seckey:0x7febddb1a820
 10644 ms     | 0x187c EC_ValidatePublicKey()
 10650 ms     | 0x187c ret:0x0
 10654 ms  0x187c ret:0x7febd8c95c00
 10654 ms  0x187c PK11_DeriveWithFlags()
 10654 ms  0x187c basekey:0x7febd8c95c00
 10655 ms     | 0x187c PK11_DeriveWithTemplate()
 10655 ms  0x187c ret:0x7febd8c95b80
 10655 ms  0x187c PK11_Derive()
 10655 ms  0x187c basekey:0x7febd8c95b80
 10655 ms     | 0x187c PK11_DeriveWithTemplate()
 10655 ms  0x187c ret:0x7febd9737780
 10655 ms  0x187c SECKEY_DestroyPrivateKey()
 10655 ms  0x187c privk:0x7febddb1a820::7febddb1a820  60 e0 14 de                                      `...
 10655 ms  0x187c privk:0x7febddb1a820::7febddb1a820  e5 e5 e5 e5                                      ....
 10655 ms  0x187c PK11_Encrypt()
 10655 ms  0x187c symkey:0x7febd8c95c80
 10656 ms  0x187c SSL_AuthCertificateComplete()
 10656 ms  0x187c fd:0x7febddce94c0
 10656 ms  0x187c err:0x0
 10657 ms  0x187c PK11_Encrypt()
 10657 ms  0x187c symkey:0x7febd8c95c80
 10657 ms  0x187c PK11_Encrypt()
 10657 ms  0x187c symkey:0x7febd8c95c80
 10658 ms  0x187c PK11_Encrypt()
 10658 ms  0x187c symkey:0x7febd8c95c80
 10658 ms  0x187c PK11_Encrypt()
 10658 ms  0x187c symkey:0x7febd8c95c80
 10659 ms  0x187c PK11_Encrypt()
 10659 ms  0x187c symkey:0x7febd8c95c80
 10871 ms  0x187c SECKEY_DestroyPrivateKey()
 10871 ms  0x187c privk:0x7febddb11820::7febddb11820  20 49 ce dd                                       I..
 10872 ms  0x187c privk:0x7febddb11820::7febddb11820  e5 e5 e5 e5                                      ....
 10874 ms  0x187c SECKEY_DestroyPrivateKey()
 10874 ms  0x187c privk:0x7febddb05820::7febddb05820  90 7c 12 de                                      .|..
 10874 ms  0x187c privk:0x7febddb05820::7febddb05820  e5 e5 e5 e5                                      ....
 10874 ms  0x187c PK11_Encrypt()
 10874 ms  0x187c symkey:0x7febd8c95c80
           /* TID 0x1884 */
 11304 ms  0x1884 PR_Close()
 11304 ms  0x1884 fd:0x7febd8c87e20
 11308 ms  0x1884 PR_Close()
 11308 ms  0x1884 fd:0x7febd8c87e20
           /* TID 0x187c */
 11518 ms  0x187c SSL_ImportFD()
 11518 ms  0x187c ret:0x7febd93c6f10
 11518 ms  0x187c SSL_AuthCertificateHook()
 11518 ms  0x187c fd:0x7febd93c6f10
 11518 ms  0x187c ret:0x0
 11519 ms  0x187c PR_Connect()
 11519 ms  0x187c fd:0x7febd93c6f10
 11519 ms  0x187c SSL_ImportFD()
 11519 ms  0x187c ret:0x7febd8c8a070
 11519 ms  0x187c SSL_AuthCertificateHook()
 11519 ms  0x187c fd:0x7febd8c8a070
 11519 ms  0x187c ret:0x0
 11519 ms  0x187c PR_Connect()
 11519 ms  0x187c fd:0x7febd8c8a070
 11519 ms  0x187c SSL_ImportFD()
 11519 ms  0x187c ret:0x7febd93c6f70
 11519 ms  0x187c SSL_AuthCertificateHook()
 11519 ms  0x187c fd:0x7febd93c6f70
 11520 ms  0x187c ret:0x0
 11520 ms  0x187c PR_Connect()
 11520 ms  0x187c fd:0x7febd93c6f70
 11520 ms  0x187c SSL_ImportFD()
 11520 ms  0x187c ret:0x7febd93c6fa0
 11520 ms  0x187c SSL_AuthCertificateHook()
 11520 ms  0x187c fd:0x7febd93c6fa0
 11520 ms  0x187c ret:0x0
 11520 ms  0x187c PR_Connect()
 11520 ms  0x187c fd:0x7febd93c6fa0
 11520 ms  0x187c SSL_ImportFD()
 11520 ms  0x187c ret:0x7febd9382d60
 11520 ms  0x187c SSL_AuthCertificateHook()
 11520 ms  0x187c fd:0x7febd9382d60
 11520 ms  0x187c ret:0x0
 11520 ms  0x187c PR_Connect()
 11520 ms  0x187c fd:0x7febd9382d60
 11521 ms  0x187c SSL_ImportFD()
 11521 ms  0x187c ret:0x7febd9382f10
 11521 ms  0x187c SSL_AuthCertificateHook()
 11521 ms  0x187c fd:0x7febd9382f10
 11521 ms  0x187c ret:0x0
 11521 ms  0x187c PR_Connect()
 11521 ms  0x187c fd:0x7febd9382f10
           /* TID 0x1884 */
 11526 ms  0x1884 PR_Close()
 11526 ms  0x1884 fd:0x7febd7b11e50
 11543 ms  0x1884 PR_Close()
 11543 ms  0x1884 fd:0x7febd7b11e50
           /* TID 0x187c */
 11574 ms  0x187c PK11_Encrypt()
 11574 ms  0x187c symkey:0x7febd8c96280
 11576 ms  0x187c PK11_Encrypt()
 11576 ms  0x187c symkey:0x7febd8c96280
 11584 ms  0x187c PK11_Encrypt()
 11584 ms  0x187c symkey:0x7febd8c96280
 11584 ms  0x187c PK11_Encrypt()
 11584 ms  0x187c symkey:0x7febd8c96280
 11592 ms  0x187c PK11_Encrypt()
 11592 ms  0x187c symkey:0x7febd8c95c80
 11592 ms  0x187c PK11_Encrypt()
 11592 ms  0x187c symkey:0x7febd8c95c80
 11593 ms  0x187c PK11_Encrypt()
 11593 ms  0x187c symkey:0x7febd8c95c80
 11593 ms  0x187c PK11_Encrypt()
 11593 ms  0x187c symkey:0x7febd8c95c80
 11593 ms  0x187c PK11_Encrypt()
 11593 ms  0x187c symkey:0x7febd8c95c80
 11594 ms  0x187c PK11_Encrypt()
 11594 ms  0x187c symkey:0x7febd8c95c80
 11633 ms  0x187c PK11_Encrypt()
 11633 ms  0x187c symkey:0x7febd8c96280
 11635 ms  0x187c PK11_Encrypt()
 11635 ms  0x187c symkey:0x7febd8c96280
 11637 ms  0x187c PK11_Encrypt()
 11637 ms  0x187c symkey:0x7febd8c96280
 11769 ms  0x187c SSL_ImportFD()
 11769 ms  0x187c ret:0x7febd7b9b190
 11769 ms  0x187c SSL_AuthCertificateHook()
 11769 ms  0x187c fd:0x7febd7b9b190
 11769 ms  0x187c ret:0x0
 11769 ms  0x187c PR_Connect()
 11769 ms  0x187c fd:0x7febd7b9b190
 11770 ms  0x187c SSL_ImportFD()
 11770 ms  0x187c ret:0x7febd8aafee0
 11770 ms  0x187c SSL_AuthCertificateHook()
 11770 ms  0x187c fd:0x7febd8aafee0
 11770 ms  0x187c ret:0x0
 11770 ms  0x187c PR_Connect()
 11770 ms  0x187c fd:0x7febd8aafee0
 11770 ms  0x187c SSL_ImportFD()
 11770 ms  0x187c ret:0x7febd8aaf0d0
 11770 ms  0x187c SSL_AuthCertificateHook()
 11770 ms  0x187c fd:0x7febd8aaf0d0
 11771 ms  0x187c ret:0x0
 11771 ms  0x187c PR_Connect()
 11771 ms  0x187c fd:0x7febd8aaf0d0
 11771 ms  0x187c SSL_ImportFD()
 11771 ms  0x187c ret:0x7febd8c87a00
 11771 ms  0x187c SSL_AuthCertificateHook()
 11771 ms  0x187c fd:0x7febd8c87a00
 11771 ms  0x187c ret:0x0
 11771 ms  0x187c PR_Connect()
 11771 ms  0x187c fd:0x7febd8c87a00
 11771 ms  0x187c SSL_ImportFD()
 11771 ms  0x187c ret:0x7febd8c87100
 11771 ms  0x187c SSL_AuthCertificateHook()
 11771 ms  0x187c fd:0x7febd8c87100
 11772 ms  0x187c ret:0x0
 11772 ms  0x187c PR_Connect()
 11772 ms  0x187c fd:0x7febd8c87100
 11772 ms  0x187c SSL_ImportFD()
 11772 ms  0x187c ret:0x7febdd963e50
 11772 ms  0x187c SSL_AuthCertificateHook()
 11772 ms  0x187c fd:0x7febdd963e50
 11772 ms  0x187c ret:0x0
 11772 ms  0x187c PR_Connect()
 11772 ms  0x187c fd:0x7febdd963e50
 11807 ms  0x187c SECKEY_CreateECPrivateKey()
 11807 ms  0x187c cx:0x7febd7c244a8
 11809 ms     | 0x187c EC_ValidatePublicKey()
 11809 ms     | 0x187c ret:0x0
 11809 ms  0x187c ret:0x7febc6fa4820::7febc6fa4820  e0 27 e3 c6                                      .'..
 11809 ms  0x187c SECKEY_CreateECPrivateKey()
 11809 ms  0x187c cx:0x7febd7c244a8
 11819 ms     | 0x187c EC_ValidatePublicKey()
 11831 ms     | 0x187c ret:0x0
 11832 ms  0x187c ret:0x7febc6fb4820::7febc6fb4820  f0 8b 36 d9                                      ..6.
           /* TID 0x1884 */
 11835 ms  0x1884 PR_Close()
 11835 ms  0x1884 fd:0x7febd93c6040
           /* TID 0x187c */
 11838 ms  0x187c SECKEY_CreateECPrivateKey()
 11838 ms  0x187c cx:0x7febd7c247e8
 11839 ms     | 0x187c EC_ValidatePublicKey()
 11839 ms     | 0x187c ret:0x0
 11839 ms  0x187c ret:0x7febd7b73820::7febd7b73820  60 1a e5 da                                      `...
 11839 ms  0x187c SECKEY_CreateECPrivateKey()
 11839 ms  0x187c cx:0x7febd7c247e8
 11841 ms     | 0x187c EC_ValidatePublicKey()
 11843 ms     | 0x187c ret:0x0
 11843 ms  0x187c ret:0x7febdcab0020::7febdcab0020  50 bb e5 da                                      P...
 11844 ms  0x187c SECKEY_CreateECPrivateKey()
 11844 ms  0x187c cx:0x7febd7c24648
 11845 ms     | 0x187c EC_ValidatePublicKey()
 11845 ms     | 0x187c ret:0x0
 11845 ms  0x187c ret:0x7febddb0a020::7febddb0a020  b0 8f e6 da                                      ....
 11845 ms  0x187c SECKEY_CreateECPrivateKey()
 11845 ms  0x187c cx:0x7febd7c24648
 11846 ms     | 0x187c EC_ValidatePublicKey()
 11848 ms     | 0x187c ret:0x0
 11848 ms  0x187c ret:0x7febddb0e820::7febddb0e820  b0 5a 2b dd                                      .Z+.
 11850 ms  0x187c SECKEY_CreateECPrivateKey()
 11850 ms  0x187c cx:0x7febd7c24308
 11851 ms     | 0x187c EC_ValidatePublicKey()
 11851 ms     | 0x187c ret:0x0
 11851 ms  0x187c ret:0x7febddb17020::7febddb17020  40 5c 2b dd                                      @\+.
 11851 ms  0x187c SECKEY_CreateECPrivateKey()
 11851 ms  0x187c cx:0x7febd7c24308
 11852 ms     | 0x187c EC_ValidatePublicKey()
 11854 ms     | 0x187c ret:0x0
 11854 ms  0x187c ret:0x7febddb1c020::7febddb1c020  20 5e 2b dd                                       ^+.
 11855 ms  0x187c SSL_ImportFD()
 11855 ms  0x187c ret:0x7febdd9638e0
 11855 ms  0x187c SSL_AuthCertificateHook()
 11855 ms  0x187c fd:0x7febdd9638e0
 11855 ms  0x187c ret:0x0
 11855 ms  0x187c PR_Connect()
 11855 ms  0x187c fd:0x7febdd9638e0
 11902 ms  0x187c SSL_ImportFD()
 11902 ms  0x187c ret:0x7febdca47a00
 11902 ms  0x187c SSL_AuthCertificateHook()
 11902 ms  0x187c fd:0x7febdca47a00
 11902 ms  0x187c ret:0x0
 11902 ms  0x187c PR_Connect()
 11902 ms  0x187c fd:0x7febdca47a00
           /* TID 0x1884 */
 12033 ms  0x1884 PR_Close()
 12033 ms  0x1884 fd:0x7febd9382fa0
 12037 ms  0x1884 PR_Close()
 12037 ms  0x1884 fd:0x7febd7b9bc10
 12041 ms  0x1884 PR_Close()
 12041 ms  0x1884 fd:0x7febd7b9bc10
 12045 ms  0x1884 PR_Close()
 12045 ms  0x1884 fd:0x7febd7b9bc10
 12052 ms  0x1884 PR_Close()
 12052 ms  0x1884 fd:0x7febd7b9bc10
           /* TID 0x187c */
 12088 ms  0x187c SECKEY_CreateECPrivateKey()
 12088 ms  0x187c cx:0x7febd7b960a8
 12089 ms     | 0x187c EC_ValidatePublicKey()
 12089 ms     | 0x187c ret:0x0
 12089 ms  0x187c ret:0x7febd970b020::7febd970b020  80 8d 36 d9                                      ..6.
 12089 ms  0x187c SECKEY_CreateECPrivateKey()
 12089 ms  0x187c cx:0x7febd7b960a8
 12090 ms     | 0x187c EC_ValidatePublicKey()
 12093 ms     | 0x187c ret:0x0
 12093 ms  0x187c ret:0x7febddb21020::7febddb21020  90 ac bf dd                                      ....
           /* TID 0x1884 */
 12116 ms  0x1884 PR_Close()
 12116 ms  0x1884 fd:0x7febd8ae68e0
 12123 ms  0x1884 PR_Close()
 12123 ms  0x1884 fd:0x7febd8ae68e0
           /* TID 0x187c */
 12135 ms  0x187c SECKEY_CreateECPrivateKey()
 12135 ms  0x187c cx:0x7febd7b96728
 12135 ms     | 0x187c EC_ValidatePublicKey()
 12135 ms     | 0x187c ret:0x0
 12135 ms  0x187c ret:0x7febd971d020::7febd971d020  c0 89 36 d9                                      ..6.
 12136 ms  0x187c SECKEY_CreateECPrivateKey()
 12136 ms  0x187c cx:0x7febd7b96728
 12136 ms     | 0x187c EC_ValidatePublicKey()
 12138 ms     | 0x187c ret:0x0
 12138 ms  0x187c ret:0x7febddca0020::7febddca0020  a0 d1 34 d9                                      ..4.
 12330 ms  SECKEY_ECParamsToKeySize()
 12332 ms  0x187c ret:0x100
 12332 ms  0x187c SECKEY_CreateECPrivateKey()
 12332 ms  0x187c cx:0x7febd7b960a8
 12335 ms     | 0x187c EC_ValidatePublicKey()
 12340 ms     | 0x187c ret:0x0
 12340 ms  0x187c ret:0x7febddf6b820::7febddf6b820  70 54 2b dd                                      pT+.
 12340 ms  0x187c PK11_PubDeriveWithKDF()
 12340 ms  0x187c seckey:0x7febddf6b820
 12340 ms     | 0x187c EC_ValidatePublicKey()
 12345 ms     | 0x187c ret:0x0
 12352 ms  0x187c ret:0x7febd8c95c00
 12352 ms  0x187c PK11_DeriveWithFlags()
 12352 ms  0x187c basekey:0x7febd8c95c00
 12352 ms     | 0x187c PK11_DeriveWithTemplate()
 12352 ms  0x187c ret:0x7febd7ba3700
 12352 ms  0x187c PK11_Derive()
 12352 ms  0x187c basekey:0x7febd7ba3700
 12352 ms     | 0x187c PK11_DeriveWithTemplate()
 12352 ms  0x187c ret:0x7febd7ba3e00
 12352 ms  0x187c SECKEY_DestroyPrivateKey()
 12352 ms  0x187c privk:0x7febddf6b820::7febddf6b820  70 54 2b dd                                      pT+.
 12352 ms  0x187c privk:0x7febddf6b820::7febddf6b820  e5 e5 e5 e5                                      ....
 12353 ms  0x187c PK11_Encrypt()
 12353 ms  0x187c symkey:0x7febd7be8080
 12353 ms  0x187c SSL_AuthCertificateComplete()
 12353 ms  0x187c fd:0x7febdd9638e0
 12353 ms  0x187c err:0x0
 12354 ms  0x187c PK11_Encrypt()
 12354 ms  0x187c symkey:0x7febd7be8080
 12355 ms  0x187c PK11_Encrypt()
 12355 ms  0x187c symkey:0x7febd7be8080
           /* TID 0x1884 */
 12366 ms  0x1884 PR_Close()
 12366 ms  0x1884 fd:0x7febd8c870d0
           /* TID 0x187c */
 12374 ms  SECKEY_ECParamsToKeySize()
 12374 ms  0x187c ret:0x100
 12375 ms  0x187c SECKEY_CreateECPrivateKey()
 12375 ms  0x187c cx:0x7febd7b96728
 12376 ms     | 0x187c EC_ValidatePublicKey()
 12381 ms     | 0x187c ret:0x0
 12381 ms  0x187c ret:0x7febddf6c020::7febddf6c020  80 53 2b dd                                      .S+.
 12381 ms  0x187c PK11_PubDeriveWithKDF()
 12381 ms  0x187c seckey:0x7febddf6c020
 12381 ms     | 0x187c EC_ValidatePublicKey()
 12384 ms     | 0x187c ret:0x0
 12386 ms  0x187c ret:0x7febd8c95c00
 12386 ms  0x187c PK11_DeriveWithFlags()
 12386 ms  0x187c basekey:0x7febd8c95c00
 12386 ms     | 0x187c PK11_DeriveWithTemplate()
 12386 ms  0x187c ret:0x7febd7b7d280
 12386 ms  0x187c PK11_Derive()
 12386 ms  0x187c basekey:0x7febd7b7d280
 12386 ms     | 0x187c PK11_DeriveWithTemplate()
 12386 ms  0x187c ret:0x7febd7c25780
 12386 ms  0x187c SECKEY_DestroyPrivateKey()
 12386 ms  0x187c privk:0x7febddf6c020::7febddf6c020  80 53 2b dd                                      .S+.
 12386 ms  0x187c privk:0x7febddf6c020::7febddf6c020  e5 e5 e5 e5                                      ....
 12386 ms  0x187c PK11_Encrypt()
 12386 ms  0x187c symkey:0x7febd7c25d00
 12396 ms  0x187c SSL_AuthCertificateComplete()
 12396 ms  0x187c fd:0x7febdca47a00
 12396 ms  0x187c err:0x0
 12396 ms  0x187c PK11_Encrypt()
 12396 ms  0x187c symkey:0x7febd7c25d00
 12396 ms  0x187c PK11_Encrypt()
 12396 ms  0x187c symkey:0x7febd7c25d00
 12587 ms  0x187c SECKEY_DestroyPrivateKey()
 12587 ms  0x187c privk:0x7febddb21020::7febddb21020  90 ac bf dd                                      ....
 12587 ms  0x187c privk:0x7febddb21020::7febddb21020  e5 e5 e5 e5                                      ....
 12588 ms  0x187c SECKEY_DestroyPrivateKey()
 12588 ms  0x187c privk:0x7febd970b020::7febd970b020  80 8d 36 d9                                      ..6.
 12588 ms  0x187c privk:0x7febd970b020::7febd970b020  e5 e5 e5 e5                                      ....
 12588 ms  0x187c PK11_Encrypt()
 12588 ms  0x187c symkey:0x7febd7be8080
 12620 ms  0x187c SECKEY_DestroyPrivateKey()
 12620 ms  0x187c privk:0x7febddca0020::7febddca0020  a0 d1 34 d9                                      ..4.
 12620 ms  0x187c privk:0x7febddca0020::7febddca0020  e5 e5 e5 e5                                      ....
 12620 ms  0x187c SECKEY_DestroyPrivateKey()
 12620 ms  0x187c privk:0x7febd971d020::7febd971d020  c0 89 36 d9                                      ..6.
 12621 ms  0x187c privk:0x7febd971d020::7febd971d020  e5 e5 e5 e5                                      ....
 12621 ms  0x187c PK11_Encrypt()
 12621 ms  0x187c symkey:0x7febd7c25d00
 12827 ms  0x187c SECKEY_CreateECPrivateKey()
 12827 ms  0x187c cx:0x7febd7c24168
 12829 ms     | 0x187c EC_ValidatePublicKey()
 12829 ms     | 0x187c ret:0x0
 12829 ms  0x187c ret:0x7febd970b820::7febd970b820  c0 89 36 d9                                      ..6.
 12829 ms  0x187c SECKEY_CreateECPrivateKey()
 12829 ms  0x187c cx:0x7febd7c24168
 12831 ms     | 0x187c EC_ValidatePublicKey()
 12835 ms     | 0x187c ret:0x0
 12835 ms  0x187c ret:0x7febd971d020::7febd971d020  80 8d 36 d9                                      ..6.
 12843 ms  0x187c PK11_Encrypt()
 12843 ms  0x187c symkey:0x7febd7be8080
           /* TID 0x1884 */
 12855 ms  0x1884 PR_Close()
 12855 ms  0x1884 fd:0x7febd8c87190
           /* TID 0x187c */
 13077 ms  0x187c SECKEY_CreateECPrivateKey()
 13077 ms  0x187c cx:0x7febd7c24988
 13079 ms     | 0x187c EC_ValidatePublicKey()
 13079 ms     | 0x187c ret:0x0
 13079 ms  0x187c ret:0x7febddca0020::7febddca0020  80 53 2b dd                                      .S+.
 13079 ms  0x187c SECKEY_CreateECPrivateKey()
 13079 ms  0x187c cx:0x7febd7c24988
 13082 ms     | 0x187c EC_ValidatePublicKey()
 13093 ms     | 0x187c ret:0x0
 13093 ms  0x187c ret:0x7febddf6d820::7febddf6d820  00 56 2b dd                                      .V+.
           /* TID 0x1884 */
 13330 ms  0x1884 PR_Close()
 13330 ms  0x1884 fd:0x7febdaead940
           /* TID 0x187c */
 14105 ms  SECKEY_ECParamsToKeySize()
 14107 ms  0x187c ret:0x100
 14108 ms  0x187c SECKEY_CreateECPrivateKey()
 14108 ms  0x187c cx:0x7febd7c24308
 14112 ms     | 0x187c EC_ValidatePublicKey()
 14118 ms     | 0x187c ret:0x0
 14118 ms  0x187c ret:0x7febddf6f820::7febddf6f820  40 57 2b dd                                      @W+.
 14118 ms  0x187c PK11_PubDeriveWithKDF()
 14118 ms  0x187c seckey:0x7febddf6f820
 14120 ms     | 0x187c EC_ValidatePublicKey()
 14127 ms     | 0x187c ret:0x0
 14131 ms  0x187c ret:0x7febd8c95c00
 14131 ms  0x187c PK11_DeriveWithFlags()
 14131 ms  0x187c basekey:0x7febd8c95c00
 14131 ms     | 0x187c PK11_DeriveWithTemplate()
 14131 ms  0x187c ret:0x7febd7b7d700
 14131 ms  0x187c PK11_Derive()
 14131 ms  0x187c basekey:0x7febd7b7d700
 14131 ms     | 0x187c PK11_DeriveWithTemplate()
 14131 ms  0x187c ret:0x7febd80d2780
 14131 ms  0x187c SECKEY_DestroyPrivateKey()
 14131 ms  0x187c privk:0x7febddf6f820::7febddf6f820  40 57 2b dd                                      @W+.
 14131 ms  0x187c privk:0x7febddf6f820::7febddf6f820  e5 e5 e5 e5                                      ....
 14132 ms  0x187c PK11_Encrypt()
 14132 ms  0x187c symkey:0x7febd8326280
 14134 ms  0x187c SSL_AuthCertificateComplete()
 14134 ms  0x187c fd:0x7febd93c6f70
 14134 ms  0x187c err:0x0
 14138 ms  0x187c PK11_Encrypt()
 14138 ms  0x187c symkey:0x7febd8326280
 14146 ms  SECKEY_ECParamsToKeySize()
 14146 ms  0x187c ret:0x100
 14146 ms  0x187c SECKEY_CreateECPrivateKey()
 14146 ms  0x187c cx:0x7febd7c24988
 14147 ms     | 0x187c EC_ValidatePublicKey()
 14149 ms     | 0x187c ret:0x0
 14149 ms  0x187c ret:0x7febddf70020::7febddf70020  e0 fc ba dd                                      ....
 14149 ms  0x187c PK11_PubDeriveWithKDF()
 14149 ms  0x187c seckey:0x7febddf70020
 14149 ms     | 0x187c EC_ValidatePublicKey()
 14151 ms     | 0x187c ret:0x0
 14153 ms  0x187c ret:0x7febd8c95c00
 14153 ms  0x187c PK11_DeriveWithFlags()
 14153 ms  0x187c basekey:0x7febd8c95c00
 14153 ms     | 0x187c PK11_DeriveWithTemplate()
 14153 ms  0x187c ret:0x7febd8a34600
 14153 ms  0x187c PK11_Derive()
 14153 ms  0x187c basekey:0x7febd8a34600
 14153 ms     | 0x187c PK11_DeriveWithTemplate()
 14153 ms  0x187c ret:0x7febd8a34c00
 14153 ms  0x187c SECKEY_DestroyPrivateKey()
 14153 ms  0x187c privk:0x7febddf70020::7febddf70020  e0 fc ba dd                                      ....
 14153 ms  0x187c privk:0x7febddf70020::7febddf70020  e5 e5 e5 e5                                      ....
 14154 ms  0x187c PK11_Encrypt()
 14154 ms  0x187c symkey:0x7febd8a35500
 14155 ms  0x187c SSL_AuthCertificateComplete()
 14155 ms  0x187c fd:0x7febd8aafee0
 14155 ms  0x187c err:0x0
 14340 ms  SECKEY_ECParamsToKeySize()
 14341 ms  0x187c ret:0x100
 14341 ms  0x187c SECKEY_CreateECPrivateKey()
 14341 ms  0x187c cx:0x7febd7c247e8
 14343 ms     | 0x187c EC_ValidatePublicKey()
 14348 ms     | 0x187c ret:0x0
 14348 ms  0x187c ret:0x7febddf70820::7febddf70820  e0 dc c4 dd                                      ....
 14349 ms  0x187c PK11_PubDeriveWithKDF()
 14349 ms  0x187c seckey:0x7febddf70820
 14349 ms     | 0x187c EC_ValidatePublicKey()
 14354 ms     | 0x187c ret:0x0
 14359 ms  0x187c ret:0x7febd8c95c00
 14359 ms  0x187c PK11_DeriveWithFlags()
 14359 ms  0x187c basekey:0x7febd8c95c00
 14359 ms     | 0x187c PK11_DeriveWithTemplate()
 14359 ms  0x187c ret:0x7febd8a34100
 14359 ms  0x187c PK11_Derive()
 14359 ms  0x187c basekey:0x7febd8a34100
 14359 ms     | 0x187c PK11_DeriveWithTemplate()
 14359 ms  0x187c ret:0x7febd8c02080
 14359 ms  0x187c SECKEY_DestroyPrivateKey()
 14359 ms  0x187c privk:0x7febddf70820::7febddf70820  e0 dc c4 dd                                      ....
 14360 ms  0x187c privk:0x7febddf70820::7febddf70820  e5 e5 e5 e5                                      ....
 14360 ms  0x187c PK11_Encrypt()
 14360 ms  0x187c symkey:0x7febd8c02500
 14360 ms  0x187c SSL_AuthCertificateComplete()
 14360 ms  0x187c fd:0x7febd9382f10
 14360 ms  0x187c err:0x0
 14362 ms  0x187c PK11_Encrypt()
 14362 ms  0x187c symkey:0x7febd8c02500
 14491 ms  0x187c SECKEY_DestroyPrivateKey()
 14491 ms  0x187c privk:0x7febddf6d820::7febddf6d820  00 56 2b dd                                      .V+.
 14491 ms  0x187c privk:0x7febddf6d820::7febddf6d820  e5 e5 e5 e5                                      ....
 14492 ms  0x187c SECKEY_DestroyPrivateKey()
 14492 ms  0x187c privk:0x7febddca0020::7febddca0020  80 53 2b dd                                      .S+.
 14492 ms  0x187c privk:0x7febddca0020::7febddca0020  e5 e5 e5 e5                                      ....
           /* TID 0x1884 */
 14802 ms  0x1884 PR_Close()
 14802 ms  0x1884 fd:0x7febdae3ac70
 14802 ms  0x1884 PR_Close()
 14802 ms  0x1884 fd:0x7febdaead940
 14802 ms  0x1884 PR_Close()
 14802 ms  0x1884 fd:0x7febdca47850
 14802 ms  0x1884 PR_Close()
 14802 ms  0x1884 fd:0x7febdca479d0
 14806 ms  0x1884 PR_Close()
 14806 ms  0x1884 fd:0x7febdae3ac70
 14806 ms  0x1884 PR_Close()
 14806 ms  0x1884 fd:0x7febdaead940
 14806 ms  0x1884 PR_Close()
 14806 ms  0x1884 fd:0x7febdca47850
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdca479d0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdd963730
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdd963fd0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdd9e9250
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddc1e0d0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddc1e490
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddc42130
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddcdfb50
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdde33190
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febdde337f0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddffe5e0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febddffe9a0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11e3a0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11e400
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11e460
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11e5e0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11e820
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11ed30
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11ee20
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde11ef10
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde1490a0
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde149100
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde149160
 14807 ms  0x1884 PR_Close()
 14807 ms  0x1884 fd:0x7febde149700
 14808 ms  0x1884 PR_Close()
 14808 ms  0x1884 fd:0x7febde149760
 14808 ms  0x1884 PR_Close()
 14808 ms  0x1884 fd:0x7febde1497c0
 14808 ms  0x1884 PR_Close()
 14808 ms  0x1884 fd:0x7febde1498e0
 14808 ms  0x1884 PR_Close()
 14808 ms  0x1884 fd:0x7febde149a60
 14808 ms  0x1884 PR_Close()
 14808 ms  0x1884 fd:0x7febde149ac0
           /* TID 0x187c */
 15036 ms  0x187c SSL_ImportFD()
 15036 ms  0x187c ret:0x7febdd9e9220
 15036 ms  0x187c SSL_AuthCertificateHook()
 15036 ms  0x187c fd:0x7febdd9e9220
 15036 ms  0x187c ret:0x0
 15036 ms  0x187c PR_Connect()
 15036 ms  0x187c fd:0x7febdd9e9220
 15040 ms  0x187c PK11_Encrypt()
 15040 ms  0x187c symkey:0x7febd8c95c80
 15041 ms  0x187c SSL_ImportFD()
 15041 ms  0x187c ret:0x7febdde33190
 15041 ms  0x187c SSL_AuthCertificateHook()
 15041 ms  0x187c fd:0x7febdde33190
 15042 ms  0x187c ret:0x0
 15042 ms  0x187c PR_Connect()
 15042 ms  0x187c fd:0x7febdde33190
 15074 ms  0x187c SECKEY_CreateECPrivateKey()
 15074 ms  0x187c cx:0x7febd7b970e8
 15076 ms     | 0x187c EC_ValidatePublicKey()
 15076 ms     | 0x187c ret:0x0
 15076 ms  0x187c ret:0x7febddf6b020::7febddf6b020  d0 58 2b dd                                      .X+.
 15076 ms  0x187c SECKEY_CreateECPrivateKey()
 15076 ms  0x187c cx:0x7febd7b970e8
 15082 ms     | 0x187c EC_ValidatePublicKey()
 15089 ms     | 0x187c ret:0x0
 15089 ms  0x187c ret:0x7febddf6f020::7febddf6f020  60 df c4 dd                                      `...
 15092 ms  0x187c SECKEY_CreateECPrivateKey()
 15092 ms  0x187c cx:0x7febd7c24b28
 15094 ms     | 0x187c EC_ValidatePublicKey()
 15094 ms     | 0x187c ret:0x0
 15094 ms  0x187c ret:0x7febddf71820::7febddf71820  60 40 ce dd                                      `@..
 15094 ms  0x187c SECKEY_CreateECPrivateKey()
 15094 ms  0x187c cx:0x7febd7c24b28
 15096 ms     | 0x187c EC_ValidatePublicKey()
 15099 ms     | 0x187c ret:0x0
 15099 ms  0x187c ret:0x7febddf77820::7febddf77820  40 42 ce dd                                      @B..
 15099 ms  0x187c SECKEY_CreateECPrivateKey()
 15099 ms  0x187c cx:0x7febd7b97288
 15100 ms     | 0x187c EC_ValidatePublicKey()
 15100 ms     | 0x187c ret:0x0
 15100 ms  0x187c ret:0x7febddf7c020::7febddf7c020  d0 43 ce dd                                      .C..
 15100 ms  0x187c SECKEY_CreateECPrivateKey()
 15100 ms  0x187c cx:0x7febd7b97288
 15102 ms     | 0x187c EC_ValidatePublicKey()
 15104 ms     | 0x187c ret:0x0
 15104 ms  0x187c ret:0x7febde21e820::7febde21e820  20 49 ce dd                                       I..
 15143 ms  0x187c PK11_Derive()
 15143 ms  0x187c basekey:0x7febd8c95c00
 15143 ms     | 0x187c PK11_DeriveWithTemplate()
 15143 ms  0x187c ret:0x7febd8c03e80
 15144 ms  0x187c PK11_PubDeriveWithKDF()
 15144 ms  0x187c seckey:0x7febddf6b020
 15144 ms     | 0x187c EC_ValidatePublicKey()
 15144 ms     | 0x187c ret:0x0
 15144 ms  0x187c ret:0x7febd8c95c00
 15144 ms  SECKEY_ECParamsToKeySize()
 15144 ms  0x187c ret:0xff
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c03e80
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a380
 15144 ms  0x187c PK11_Derive()
 15144 ms  0x187c basekey:0x7febd8c95c00
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a580
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c0a580
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c03e80
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c0a580
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c95c00
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c0a580
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a380
 15144 ms  0x187c PK11_Derive()
 15144 ms  0x187c basekey:0x7febd8c0a700
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a900
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c95c00
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a580
 15144 ms  0x187c PK11_DeriveWithFlags()
 15144 ms  0x187c basekey:0x7febd8c95c00
 15144 ms     | 0x187c PK11_DeriveWithTemplate()
 15144 ms  0x187c ret:0x7febd8c0a380
 15147 ms  SECKEY_ECParamsToKeySize()
 15147 ms  0x187c ret:0x100
 15147 ms  SECKEY_ECParamsToBasePointOrderLen()
 15147 ms  0x187c ret:0x100
 15147 ms  SECKEY_ECParamsToBasePointOrderLen()
 15147 ms  0x187c ret:0x100
 15147 ms  0x187c EC_ValidatePublicKey()
 15149 ms  0x187c ret:0x0
 15151 ms  0x187c PK11_DeriveWithFlags()
 15151 ms  0x187c basekey:0x7febd8c95c00
 15151 ms     | 0x187c PK11_DeriveWithTemplate()
 15151 ms  0x187c ret:0x7febd8c0a380
 15152 ms  0x187c PR_Connect()
 15152 ms  0x187c fd:0x7febde11ee20
 15160 ms  0x187c PK11_Derive()
 15160 ms  0x187c basekey:0x7febd8c0a380
 15160 ms     | 0x187c PK11_DeriveWithTemplate()
 15160 ms  0x187c ret:0x7febd8c0a700
 15160 ms  0x187c PK11_PubDeriveWithKDF()
 15160 ms  0x187c seckey:0x7febddf7c020
 15160 ms     | 0x187c EC_ValidatePublicKey()
 15160 ms     | 0x187c ret:0x0
 15160 ms  0x187c ret:0x7febd8c0a380
 15161 ms  SECKEY_ECParamsToKeySize()
 15161 ms  0x187c ret:0xff
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0a700
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b600
 15161 ms  0x187c PK11_Derive()
 15161 ms  0x187c basekey:0x7febd8c0a380
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b700
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0b700
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0a700
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0b700
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0a380
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0b700
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b600
 15161 ms  0x187c PK11_Derive()
 15161 ms  0x187c basekey:0x7febd8c0b780
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b880
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0a380
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b700
 15161 ms  0x187c PK11_DeriveWithFlags()
 15161 ms  0x187c basekey:0x7febd8c0a380
 15161 ms     | 0x187c PK11_DeriveWithTemplate()
 15161 ms  0x187c ret:0x7febd8c0b600
 15164 ms  0x187c PK11_DeriveWithFlags()
 15164 ms  0x187c basekey:0x7febd8c0a380
 15164 ms     | 0x187c PK11_DeriveWithTemplate()
 15164 ms  0x187c ret:0x7febd8c0b600
 15164 ms  0x187c PR_Connect()
 15164 ms  0x187c fd:0x7febde149760
           /* TID 0x1884 */
 15260 ms  0x1884 PR_Close()
 15260 ms  0x1884 fd:0x7febd8aafa60
 15335 ms  0x1884 PR_Close()
 15335 ms  0x1884 fd:0x7febde149b20
           /* TID 0x1912 */
 15335 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15336 ms  0x1912 ret:0x0
           /* TID 0x1884 */
 15349 ms  0x1884 PR_Close()
 15349 ms  0x1884 fd:0x7febde11ef10
           /* TID 0x18de */
 15349 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15349 ms  0x18de ret:0x0
           /* TID 0x187c */
 15467 ms  0x187c PK11_Derive()
 15467 ms  0x187c basekey:0x7febd8c0b780
 15468 ms     | 0x187c PK11_DeriveWithTemplate()
 15468 ms  0x187c ret:0x7febd8c0b600
 15468 ms  0x187c PK11_Encrypt()
 15468 ms  0x187c symkey:0x7febd8c96700
 17356 ms  0x187c SECKEY_DestroyPrivateKey()
 17356 ms  0x187c privk:0x7febddf77820::7febddf77820  40 42 ce dd                                      @B..
 17358 ms  0x187c privk:0x7febddf77820::7febddf77820  e5 e5 e5 e5                                      ....
 17358 ms  0x187c SECKEY_DestroyPrivateKey()
 17358 ms  0x187c privk:0x7febddf71820::7febddf71820  60 40 ce dd                                      `@..
 17359 ms  0x187c privk:0x7febddf71820::7febddf71820  e5 e5 e5 e5                                      ....
 17359 ms  0x187c SSL_AuthCertificateComplete()
 17359 ms  0x187c fd:0x7febdde33190
 17359 ms  0x187c err:0x0
 17359 ms     | 0x187c PK11_DeriveWithFlags()
 17359 ms     | 0x187c basekey:0x7febd8c0b880
 17359 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17359 ms     | 0x187c ret:0x7febd9144180
 17359 ms     | 0x187c PK11_DeriveWithFlags()
 17359 ms     | 0x187c basekey:0x7febd8c0b880
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9144580
 17360 ms     | 0x187c PK11_DeriveWithFlags()
 17360 ms     | 0x187c basekey:0x7febd8c0b880
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9145700
 17360 ms     | 0x187c PK11_DeriveWithFlags()
 17360 ms     | 0x187c basekey:0x7febd8c0a700
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9145780
 17360 ms     | 0x187c PK11_DeriveWithFlags()
 17360 ms     | 0x187c basekey:0x7febd8c0a700
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9145980
 17360 ms     | 0x187c PK11_DeriveWithFlags()
 17360 ms     | 0x187c basekey:0x7febd9144580
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9145980
 17360 ms     | 0x187c PK11_DeriveWithFlags()
 17360 ms     | 0x187c basekey:0x7febd9144580
 17360 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17360 ms     | 0x187c ret:0x7febd9145b00
 17361 ms     | 0x187c PK11_DeriveWithFlags()
 17361 ms     | 0x187c basekey:0x7febd8c0a700
 17361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17361 ms     | 0x187c ret:0x7febd8c0b700
 17361 ms     | 0x187c PK11_Encrypt()
 17361 ms     | 0x187c symkey:0x7febd9145780
 17361 ms     | 0x187c PK11_DeriveWithFlags()
 17361 ms     | 0x187c basekey:0x7febd9144180
 17361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17361 ms     | 0x187c ret:0x7febd8c0b700
 17361 ms     | 0x187c PK11_DeriveWithFlags()
 17361 ms     | 0x187c basekey:0x7febd9144180
 17362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17362 ms     | 0x187c ret:0x7febd9145b00
 17362 ms     | 0x187c PK11_DeriveWithFlags()
 17362 ms     | 0x187c basekey:0x7febd8c0b880
 17362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17362 ms     | 0x187c ret:0x7febd9145780
 17362 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17362 ms     | 0x187c privk:0x7febde21e820::7febde21e820  20 49 ce dd                                       I..
 17362 ms     | 0x187c privk:0x7febde21e820::7febde21e820  e5 e5 e5 e5                                      ....
 17362 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17362 ms     | 0x187c privk:0x7febddf7c020::7febddf7c020  d0 43 ce dd                                      .C..
 17363 ms     | 0x187c privk:0x7febddf7c020::7febddf7c020  e5 e5 e5 e5                                      ....
 17363 ms  0x187c SSL_AuthCertificateComplete()
 17363 ms  0x187c fd:0x7febdd9e9220
 17363 ms  0x187c err:0x0
 17363 ms     | 0x187c PK11_DeriveWithFlags()
 17363 ms     | 0x187c basekey:0x7febd8c0a900
 17363 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17363 ms     | 0x187c ret:0x7febd8c0a380
 17363 ms     | 0x187c PK11_DeriveWithFlags()
 17363 ms     | 0x187c basekey:0x7febd8c0a900
 17363 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17363 ms     | 0x187c ret:0x7febd8c0a700
 17363 ms     | 0x187c PK11_DeriveWithFlags()
 17363 ms     | 0x187c basekey:0x7febd8c0a900
 17363 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17363 ms     | 0x187c ret:0x7febd8c0b880
 17364 ms     | 0x187c PK11_DeriveWithFlags()
 17364 ms     | 0x187c basekey:0x7febd8c03e80
 17364 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17364 ms     | 0x187c ret:0x7febd9145b00
 17364 ms     | 0x187c PK11_DeriveWithFlags()
 17364 ms     | 0x187c basekey:0x7febd8c03e80
 17364 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17364 ms     | 0x187c ret:0x7febd9145b80
 17364 ms     | 0x187c PK11_DeriveWithFlags()
 17364 ms     | 0x187c basekey:0x7febd8c0a700
 17364 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17364 ms     | 0x187c ret:0x7febd9145b80
 17364 ms     | 0x187c PK11_DeriveWithFlags()
 17364 ms     | 0x187c basekey:0x7febd8c0a700
 17364 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17364 ms     | 0x187c ret:0x7febd9303500
 17364 ms     | 0x187c PK11_DeriveWithFlags()
 17364 ms     | 0x187c basekey:0x7febd8c03e80
 17364 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17364 ms     | 0x187c ret:0x7febd8c0a580
 17364 ms     | 0x187c PK11_Encrypt()
 17364 ms     | 0x187c symkey:0x7febd9145b00
 17365 ms     | 0x187c PK11_DeriveWithFlags()
 17365 ms     | 0x187c basekey:0x7febd8c0a380
 17365 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17366 ms     | 0x187c ret:0x7febd8c0a580
 17366 ms     | 0x187c PK11_DeriveWithFlags()
 17366 ms     | 0x187c basekey:0x7febd8c0a380
 17366 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17366 ms     | 0x187c ret:0x7febd9303500
 17366 ms     | 0x187c PK11_DeriveWithFlags()
 17366 ms     | 0x187c basekey:0x7febd8c0a900
 17366 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17366 ms     | 0x187c ret:0x7febd9145b00
 17366 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17366 ms     | 0x187c privk:0x7febddf6f020::7febddf6f020  60 df c4 dd                                      `...
 17366 ms     | 0x187c privk:0x7febddf6f020::7febddf6f020  e5 e5 e5 e5                                      ....
 17367 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17367 ms     | 0x187c privk:0x7febddf6b020::7febddf6b020  d0 58 2b dd                                      .X+.
 17367 ms     | 0x187c privk:0x7febddf6b020::7febddf6b020  e5 e5 e5 e5                                      ....
 17369 ms  SECKEY_ECParamsToKeySize()
 17369 ms  0x187c ret:0x100
 17369 ms  0x187c SECKEY_CreateECPrivateKey()
 17369 ms  0x187c cx:0x7febd7c24168
 17371 ms     | 0x187c EC_ValidatePublicKey()
 17376 ms     | 0x187c ret:0x0
 17376 ms  0x187c ret:0x7febddf6b820::7febddf6b820  80 dd c4 dd                                      ....
 17376 ms  0x187c PK11_PubDeriveWithKDF()
 17376 ms  0x187c seckey:0x7febddf6b820
 17376 ms     | 0x187c EC_ValidatePublicKey()
 17380 ms     | 0x187c ret:0x0
 17384 ms  0x187c ret:0x7febd8c95c00
 17384 ms  0x187c PK11_DeriveWithFlags()
 17384 ms  0x187c basekey:0x7febd8c95c00
 17384 ms     | 0x187c PK11_DeriveWithTemplate()
 17384 ms  0x187c ret:0x7febd8c03e80
 17384 ms  0x187c PK11_Derive()
 17384 ms  0x187c basekey:0x7febd8c03e80
 17384 ms     | 0x187c PK11_DeriveWithTemplate()
 17384 ms  0x187c ret:0x7febd8c0a900
 17384 ms  0x187c SECKEY_DestroyPrivateKey()
 17384 ms  0x187c privk:0x7febddf6b820::7febddf6b820  80 dd c4 dd                                      ....
 17384 ms  0x187c privk:0x7febddf6b820::7febddf6b820  e5 e5 e5 e5                                      ....
 17384 ms  0x187c PK11_Encrypt()
 17384 ms  0x187c symkey:0x7febd9304880
 17386 ms  0x187c PK11_Encrypt()
 17386 ms  0x187c symkey:0x7febd8c0a580
 17387 ms  0x187c PK11_Encrypt()
 17387 ms  0x187c symkey:0x7febd8c0a580
 17387 ms  0x187c PK11_Encrypt()
 17387 ms  0x187c symkey:0x7febd8c0b700
 17388 ms  0x187c PK11_Encrypt()
 17388 ms  0x187c symkey:0x7febd8c0b700
 17388 ms  0x187c SSL_AuthCertificateComplete()
 17388 ms  0x187c fd:0x7febd8c8a070
 17388 ms  0x187c err:0x0
 17389 ms  0x187c PK11_Encrypt()
 17389 ms  0x187c symkey:0x7febd9304880
 17399 ms  0x187c PK11_DeriveWithFlags()
 17399 ms  0x187c basekey:0x7febd9145780
 17399 ms     | 0x187c PK11_DeriveWithTemplate()
 17399 ms  0x187c ret:0x7febd8c95c00
 17399 ms  0x187c PK11_DeriveWithFlags()
 17399 ms  0x187c basekey:0x7febd9145780
 17399 ms     | 0x187c PK11_DeriveWithTemplate()
 17399 ms  0x187c ret:0x7febd8c95c00
 17399 ms  0x187c PK11_Encrypt()
 17399 ms  0x187c symkey:0x7febd8c0b700
 17404 ms  0x187c PK11_DeriveWithFlags()
 17404 ms  0x187c basekey:0x7febd9145b00
 17404 ms     | 0x187c PK11_DeriveWithTemplate()
 17404 ms  0x187c ret:0x7febd8c95c00
 17405 ms  0x187c PK11_DeriveWithFlags()
 17405 ms  0x187c basekey:0x7febd9145b00
 17405 ms     | 0x187c PK11_DeriveWithTemplate()
 17405 ms  0x187c ret:0x7febd8c95c00
 17405 ms  0x187c PK11_Encrypt()
 17405 ms  0x187c symkey:0x7febd8c0a580
 17447 ms  0x187c PK11_Encrypt()
 17447 ms  0x187c symkey:0x7febd8c0b700
           /* TID 0x1884 */
 17448 ms  0x1884 PR_Close()
 17448 ms  0x1884 fd:0x7febdaead940
           /* TID 0x187c */
 17490 ms  0x187c PK11_Encrypt()
 17490 ms  0x187c symkey:0x7febd8c0a580
           /* TID 0x1884 */
 17491 ms  0x1884 PR_Close()
 17491 ms  0x1884 fd:0x7febdaead940
           /* TID 0x187c */
 17504 ms  0x187c SSL_ImportFD()
 17504 ms  0x187c ret:0x7febde19e400
 17504 ms  0x187c SSL_AuthCertificateHook()
 17504 ms  0x187c fd:0x7febde19e400
 17504 ms  0x187c ret:0x0
 17504 ms  0x187c PR_Connect()
 17504 ms  0x187c fd:0x7febde19e400
 17542 ms  0x187c SECKEY_CreateECPrivateKey()
 17542 ms  0x187c cx:0x7febd7b97428
 17542 ms     | 0x187c EC_ValidatePublicKey()
 17542 ms     | 0x187c ret:0x0
 17543 ms  0x187c ret:0x7febddf78020::7febddf78020  40 42 ce dd                                      @B..
 17543 ms  0x187c SECKEY_CreateECPrivateKey()
 17543 ms  0x187c cx:0x7febd7b97428
 17543 ms     | 0x187c EC_ValidatePublicKey()
 17545 ms     | 0x187c ret:0x0
 17545 ms  0x187c ret:0x7febde21b820::7febde21b820  f0 46 ce dd                                      .F..
 17601 ms  0x187c PK11_Derive()
 17601 ms  0x187c basekey:0x7febd8c95c00
 17601 ms     | 0x187c PK11_DeriveWithTemplate()
 17601 ms  0x187c ret:0x7febd9303500
 17601 ms  0x187c PK11_PubDeriveWithKDF()
 17601 ms  0x187c seckey:0x7febddf78020
 17601 ms     | 0x187c EC_ValidatePublicKey()
 17602 ms     | 0x187c ret:0x0
 17603 ms  0x187c ret:0x7febd8c95c00
 17603 ms  SECKEY_ECParamsToKeySize()
 17603 ms  0x187c ret:0xff
 17603 ms  0x187c PK11_DeriveWithFlags()
 17603 ms  0x187c basekey:0x7febd9303500
 17603 ms     | 0x187c PK11_DeriveWithTemplate()
 17603 ms  0x187c ret:0x7febd8c0a880
 17603 ms  0x187c PK11_Derive()
 17603 ms  0x187c basekey:0x7febd8c95c00
 17603 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd9b16c80
 17604 ms  0x187c PK11_DeriveWithFlags()
 17604 ms  0x187c basekey:0x7febd9b16c80
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd9303500
 17604 ms  0x187c PK11_DeriveWithFlags()
 17604 ms  0x187c basekey:0x7febd9b16c80
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd8c95c00
 17604 ms  0x187c PK11_DeriveWithFlags()
 17604 ms  0x187c basekey:0x7febd9b16c80
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd8c0a880
 17604 ms  0x187c PK11_Derive()
 17604 ms  0x187c basekey:0x7febd9bed380
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd9bed680
 17604 ms  0x187c PK11_DeriveWithFlags()
 17604 ms  0x187c basekey:0x7febd8c95c00
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd9b16c80
 17604 ms  0x187c PK11_DeriveWithFlags()
 17604 ms  0x187c basekey:0x7febd8c95c00
 17604 ms     | 0x187c PK11_DeriveWithTemplate()
 17604 ms  0x187c ret:0x7febd8c0a880
 17608 ms  0x187c PK11_DeriveWithFlags()
 17608 ms  0x187c basekey:0x7febd8c95c00
 17608 ms     | 0x187c PK11_DeriveWithTemplate()
 17609 ms  0x187c ret:0x7febd8c0a880
           /* TID 0x1884 */
 17760 ms  0x1884 PR_Close()
 17760 ms  0x1884 fd:0x7febd8c87d90
           /* TID 0x1912 */
 17760 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17760 ms  0x1912 ret:0x0
           /* TID 0x187c */
 17761 ms  0x187c SSL_AuthCertificateComplete()
 17761 ms  0x187c fd:0x7febde19e400
 17761 ms  0x187c err:0x0
 17761 ms     | 0x187c PK11_DeriveWithFlags()
 17761 ms     | 0x187c basekey:0x7febd9bed680
 17761 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17761 ms     | 0x187c ret:0x7febd8c0a880
 17761 ms     | 0x187c PK11_DeriveWithFlags()
 17761 ms     | 0x187c basekey:0x7febd9bed680
 17761 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17761 ms     | 0x187c ret:0x7febd9bed380
 17761 ms     | 0x187c PK11_DeriveWithFlags()
 17761 ms     | 0x187c basekey:0x7febd9bed680
 17761 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17761 ms     | 0x187c ret:0x7febd9bedd00
 17761 ms     | 0x187c PK11_DeriveWithFlags()
 17761 ms     | 0x187c basekey:0x7febd9303500
 17761 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17762 ms     | 0x187c ret:0x7febd9bedd80
 17762 ms     | 0x187c PK11_DeriveWithFlags()
 17762 ms     | 0x187c basekey:0x7febd9303500
 17762 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17762 ms     | 0x187c ret:0x7febd9bede00
 17762 ms     | 0x187c PK11_DeriveWithFlags()
 17762 ms     | 0x187c basekey:0x7febd9bed380
 17762 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17762 ms     | 0x187c ret:0x7febd9bede00
 17762 ms     | 0x187c PK11_DeriveWithFlags()
 17762 ms     | 0x187c basekey:0x7febd9bed380
 17762 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17762 ms     | 0x187c ret:0x7febd9bede80
 17762 ms     | 0x187c PK11_DeriveWithFlags()
 17762 ms     | 0x187c basekey:0x7febd9303500
 17762 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17762 ms     | 0x187c ret:0x7febd9b16c80
 17762 ms     | 0x187c PK11_Encrypt()
 17762 ms     | 0x187c symkey:0x7febd9bedd80
 17763 ms     | 0x187c PK11_DeriveWithFlags()
 17763 ms     | 0x187c basekey:0x7febd8c0a880
 17763 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17763 ms     | 0x187c ret:0x7febd9b16c80
 17763 ms     | 0x187c PK11_DeriveWithFlags()
 17763 ms     | 0x187c basekey:0x7febd8c0a880
 17763 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17764 ms     | 0x187c ret:0x7febd9bede80
 17764 ms     | 0x187c PK11_DeriveWithFlags()
 17764 ms     | 0x187c basekey:0x7febd9bed680
 17764 ms     |    | 0x187c PK11_DeriveWithTemplate()
 17764 ms     | 0x187c ret:0x7febd9bedd80
 17764 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17764 ms     | 0x187c privk:0x7febde21b820::7febde21b820  f0 46 ce dd                                      .F..
 17764 ms     | 0x187c privk:0x7febde21b820::7febde21b820  e5 e5 e5 e5                                      ....
 17765 ms     | 0x187c SECKEY_DestroyPrivateKey()
 17765 ms     | 0x187c privk:0x7febddf78020::7febddf78020  40 42 ce dd                                      @B..
 17765 ms     | 0x187c privk:0x7febddf78020::7febddf78020  e5 e5 e5 e5                                      ....
 17766 ms  0x187c PK11_Encrypt()
 17766 ms  0x187c symkey:0x7febd9b16c80
 17767 ms  0x187c PK11_Encrypt()
 17767 ms  0x187c symkey:0x7febd9b16c80
 17800 ms  0x187c PK11_DeriveWithFlags()
 17800 ms  0x187c basekey:0x7febd9bedd80
 17800 ms     | 0x187c PK11_DeriveWithTemplate()
 17800 ms  0x187c ret:0x7febd8c95c00
 17800 ms  0x187c PK11_DeriveWithFlags()
 17800 ms  0x187c basekey:0x7febd9bedd80
 17800 ms     | 0x187c PK11_DeriveWithTemplate()
 17800 ms  0x187c ret:0x7febd8c95c00
 17800 ms  0x187c PK11_Encrypt()
 17800 ms  0x187c symkey:0x7febd9b16c80
 17858 ms  0x187c PK11_Encrypt()
 17858 ms  0x187c symkey:0x7febd9b16c80
 18389 ms  0x187c PR_Close()
 18389 ms  0x187c fd:0x7febd8aafee0
 18389 ms     | 0x187c PK11_Encrypt()
 18389 ms     | 0x187c symkey:0x7febd8a35500
 18953 ms  0x187c SSL_ImportFD()
 18953 ms  0x187c ret:0x7febde29fe20
 18953 ms  0x187c SSL_AuthCertificateHook()
 18953 ms  0x187c fd:0x7febde29fe20
 18953 ms  0x187c ret:0x0
 18954 ms  0x187c PR_Connect()
 18954 ms  0x187c fd:0x7febde29fe20
 19082 ms  SECKEY_ECParamsToKeySize()
 19082 ms  0x187c ret:0x100
 19082 ms  0x187c SECKEY_CreateECPrivateKey()
 19082 ms  0x187c cx:0x7febd7c244a8
 19084 ms     | 0x187c EC_ValidatePublicKey()
 19090 ms     | 0x187c ret:0x0
 19092 ms  0x187c ret:0x7febe0cbb020::7febe0cbb020  00 56 17 de                                      .V..
 19092 ms  0x187c PK11_PubDeriveWithKDF()
 19092 ms  0x187c seckey:0x7febe0cbb020
 19092 ms     | 0x187c EC_ValidatePublicKey()
 19098 ms     | 0x187c ret:0x0
 19103 ms  0x187c ret:0x7febd8a34c00
 19103 ms  0x187c PK11_DeriveWithFlags()
 19103 ms  0x187c basekey:0x7febd8a34c00
 19103 ms     | 0x187c PK11_DeriveWithTemplate()
 19103 ms  0x187c ret:0x7febd8a34600
 19103 ms  0x187c PK11_Derive()
 19103 ms  0x187c basekey:0x7febd8a34600
 19103 ms     | 0x187c PK11_DeriveWithTemplate()
 19103 ms  0x187c ret:0x7febd8c95c00
 19103 ms  0x187c SECKEY_DestroyPrivateKey()
 19103 ms  0x187c privk:0x7febe0cbb020::7febe0cbb020  00 56 17 de                                      .V..
 19103 ms  0x187c privk:0x7febe0cbb020::7febe0cbb020  e5 e5 e5 e5                                      ....
 19104 ms  0x187c PK11_Encrypt()
 19104 ms  0x187c symkey:0x7febd8a34f00
 19104 ms  0x187c SSL_AuthCertificateComplete()
 19104 ms  0x187c fd:0x7febd93c6fa0
 19104 ms  0x187c err:0x0
 19106 ms  0x187c PK11_Encrypt()
 19106 ms  0x187c symkey:0x7febd8a34f00
 19159 ms  0x187c SECKEY_CreateECPrivateKey()
 19159 ms  0x187c cx:0x7febd7c24e68
 19163 ms     | 0x187c EC_ValidatePublicKey()
 19163 ms     | 0x187c ret:0x0
 19163 ms  0x187c ret:0x7febe0cbb020::7febe0cbb020  50 51 17 de                                      PQ..
 19164 ms  0x187c SECKEY_CreateECPrivateKey()
 19164 ms  0x187c cx:0x7febd7c24e68
 19166 ms     | 0x187c EC_ValidatePublicKey()
 19172 ms     | 0x187c ret:0x0
 19172 ms  0x187c ret:0x7febe0cbe020::7febe0cbe020  40 5c 17 de                                      @\..
 19174 ms  0x187c SECKEY_CreateECPrivateKey()
 19174 ms  0x187c cx:0x7febd7b97c48
 19175 ms     | 0x187c EC_ValidatePublicKey()
 19175 ms     | 0x187c ret:0x0
 19176 ms  0x187c ret:0x7febe0cc5020::7febe0cc5020  80 38 18 de                                      .8..
 19176 ms  0x187c SECKEY_CreateECPrivateKey()
 19176 ms  0x187c cx:0x7febd7b97c48
 19178 ms     | 0x187c EC_ValidatePublicKey()
 19182 ms     | 0x187c ret:0x0
 19182 ms  0x187c ret:0x7febe0cc7820::7febe0cc7820  90 d2 18 de                                      ....
 19407 ms  SECKEY_ECParamsToKeySize()
 19408 ms  0x187c ret:0x100
 19408 ms  0x187c SECKEY_CreateECPrivateKey()
 19408 ms  0x187c cx:0x7febd7b97c48
 19409 ms     | 0x187c EC_ValidatePublicKey()
 19414 ms     | 0x187c ret:0x0
 19414 ms  0x187c ret:0x7febe1713020::7febe1713020  b0 9f 1b de                                      ....
 19414 ms  0x187c PK11_PubDeriveWithKDF()
 19414 ms  0x187c seckey:0x7febe1713020
 19414 ms     | 0x187c EC_ValidatePublicKey()
           /* TID 0x189e */
 19420 ms  0x189e PR_Close()
 19420 ms  0x189e fd:0x7febde29fd00
 19421 ms  0x189e PR_Close()
 19421 ms  0x189e fd:0x7febde29fd00
           /* TID 0x187c */
 19423 ms     | 0x187c ret:0x0
 19427 ms  0x187c ret:0x7febd8a34c00
 19427 ms  0x187c PK11_DeriveWithFlags()
 19427 ms  0x187c basekey:0x7febd8a34c00
 19427 ms     | 0x187c PK11_DeriveWithTemplate()
 19427 ms  0x187c ret:0x7febd9303500
 19427 ms  0x187c PK11_Derive()
 19427 ms  0x187c basekey:0x7febd9303500
 19427 ms     | 0x187c PK11_DeriveWithTemplate()
 19428 ms  0x187c ret:0x7febd9bed680
 19428 ms  0x187c SECKEY_DestroyPrivateKey()
 19428 ms  0x187c privk:0x7febe1713020::7febe1713020  b0 9f 1b de                                      ....
 19428 ms  0x187c privk:0x7febe1713020::7febe1713020  e5 e5 e5 e5                                      ....
 19428 ms  0x187c PK11_Encrypt()
 19428 ms  0x187c symkey:0x7febdae6fb80
 19435 ms  0x187c SECKEY_DestroyPrivateKey()
 19435 ms  0x187c privk:0x7febc6fb4820::7febc6fb4820  f0 8b 36 d9                                      ..6.
 19435 ms  0x187c privk:0x7febc6fb4820::7febc6fb4820  e5 e5 e5 e5                                      ....
 19436 ms  0x187c SECKEY_DestroyPrivateKey()
 19436 ms  0x187c privk:0x7febc6fa4820::7febc6fa4820  e0 27 e3 c6                                      .'..
 19436 ms  0x187c privk:0x7febc6fa4820::7febc6fa4820  e5 e5 e5 e5                                      ....
           /* TID 0x1912 */
 19457 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19457 ms  0x1912 ret:0x0
           /* TID 0x1884 */
 19457 ms  0x1884 PR_Close()
 19457 ms  0x1884 fd:0x7febdaefdac0
           /* TID 0x187c */
 19458 ms  0x187c SSL_AuthCertificateComplete()
 19458 ms  0x187c fd:0x7febde29fe20
 19458 ms  0x187c err:0x0
 19460 ms  0x187c PK11_Encrypt()
 19460 ms  0x187c symkey:0x7febdae6fb80
 19564 ms  0x187c PK11_Encrypt()
 19564 ms  0x187c symkey:0x7febd8c0b700
 19568 ms  0x187c SSL_ImportFD()
 19568 ms  0x187c ret:0x7febde2e5850
 19568 ms  0x187c SSL_AuthCertificateHook()
 19568 ms  0x187c fd:0x7febde2e5850
 19569 ms  0x187c ret:0x0
 19572 ms  0x187c PR_Connect()
 19572 ms  0x187c fd:0x7febde2e5850
 19575 ms  0x187c SSL_ImportFD()
 19575 ms  0x187c ret:0x7febde2e5280
 19575 ms  0x187c SSL_AuthCertificateHook()
 19575 ms  0x187c fd:0x7febde2e5280
 19575 ms  0x187c ret:0x0
 19577 ms  0x187c PR_Connect()
 19577 ms  0x187c fd:0x7febde2e5280
 19611 ms  0x187c SECKEY_CreateECPrivateKey()
 19611 ms  0x187c cx:0x7febd7b97f88
 19613 ms     | 0x187c EC_ValidatePublicKey()
 19613 ms     | 0x187c ret:0x0
 19613 ms  0x187c ret:0x7febc6fa6020::7febc6fa6020  40 9c 1b de                                      @...
 19613 ms  0x187c SECKEY_CreateECPrivateKey()
 19613 ms  0x187c cx:0x7febd7b97f88
 19621 ms     | 0x187c EC_ValidatePublicKey()
 19625 ms     | 0x187c ret:0x0
 19625 ms  0x187c ret:0x7febe170d820::7febe170d820  c0 9e 1b de                                      ....
 19631 ms  0x187c PK11_Encrypt()
 19631 ms  0x187c symkey:0x7febd8c0b700
 19632 ms  0x187c SECKEY_CreateECPrivateKey()
 19632 ms  0x187c cx:0x7febd7b98128
 19633 ms     | 0x187c EC_ValidatePublicKey()
 19633 ms     | 0x187c ret:0x0
 19633 ms  0x187c ret:0x7febe1710020::7febe1710020  60 9f 1b de                                      `...
 19633 ms  0x187c SECKEY_CreateECPrivateKey()
 19633 ms  0x187c cx:0x7febd7b98128
 19635 ms     | 0x187c EC_ValidatePublicKey()
 19637 ms     | 0x187c ret:0x0
 19637 ms  0x187c ret:0x7febe1713820::7febe1713820  e0 07 1c de                                      ....
 19647 ms  0x187c SECKEY_DestroyPrivateKey()
 19647 ms  0x187c privk:0x7febe0cc7820::7febe0cc7820  90 d2 18 de                                      ....
 19647 ms  0x187c privk:0x7febe0cc7820::7febe0cc7820  e5 e5 e5 e5                                      ....
 19647 ms  0x187c SECKEY_DestroyPrivateKey()
 19647 ms  0x187c privk:0x7febe0cc5020::7febe0cc5020  80 38 18 de                                      .8..
 19647 ms  0x187c privk:0x7febe0cc5020::7febe0cc5020  e5 e5 e5 e5                                      ....
 19680 ms  0x187c PK11_Derive()
 19680 ms  0x187c basekey:0x7febd8a34c00
 19680 ms     | 0x187c PK11_DeriveWithTemplate()
 19681 ms  0x187c ret:0x7febd9bede80
 19681 ms  0x187c PK11_PubDeriveWithKDF()
 19681 ms  0x187c seckey:0x7febc6fa6020
 19681 ms     | 0x187c EC_ValidatePublicKey()
 19681 ms     | 0x187c ret:0x0
 19683 ms  0x187c ret:0x7febd8a34c00
 19683 ms  SECKEY_ECParamsToKeySize()
 19683 ms  0x187c ret:0xff
 19683 ms  0x187c PK11_DeriveWithFlags()
 19683 ms  0x187c basekey:0x7febd9bede80
 19683 ms     | 0x187c PK11_DeriveWithTemplate()
 19683 ms  0x187c ret:0x7febd9384c80
 19683 ms  0x187c PK11_Derive()
 19683 ms  0x187c basekey:0x7febd8a34c00
 19683 ms     | 0x187c PK11_DeriveWithTemplate()
 19683 ms  0x187c ret:0x7febdae70700
 19683 ms  0x187c PK11_DeriveWithFlags()
 19683 ms  0x187c basekey:0x7febdae70700
 19683 ms     | 0x187c PK11_DeriveWithTemplate()
 19683 ms  0x187c ret:0x7febd9bede80
 19683 ms  0x187c PK11_DeriveWithFlags()
 19683 ms  0x187c basekey:0x7febdae70700
 19684 ms     | 0x187c PK11_DeriveWithTemplate()
 19684 ms  0x187c ret:0x7febd8a34c00
 19684 ms  0x187c PK11_DeriveWithFlags()
 19684 ms  0x187c basekey:0x7febdae70700
 19684 ms     | 0x187c PK11_DeriveWithTemplate()
 19684 ms  0x187c ret:0x7febd9384c80
 19684 ms  0x187c PK11_Derive()
 19684 ms  0x187c basekey:0x7febdae83400
 19684 ms     | 0x187c PK11_DeriveWithTemplate()
 19684 ms  0x187c ret:0x7febdae9ca00
 19684 ms  0x187c PK11_DeriveWithFlags()
 19684 ms  0x187c basekey:0x7febd8a34c00
 19684 ms     | 0x187c PK11_DeriveWithTemplate()
 19684 ms  0x187c ret:0x7febdae70700
 19684 ms  0x187c PK11_DeriveWithFlags()
 19684 ms  0x187c basekey:0x7febd8a34c00
 19684 ms     | 0x187c PK11_DeriveWithTemplate()
 19684 ms  0x187c ret:0x7febd9384c80
 19687 ms  SECKEY_ECParamsToKeySize()
 19687 ms  0x187c ret:0x100
 19687 ms  SECKEY_ECParamsToBasePointOrderLen()
 19687 ms  0x187c ret:0x100
 19687 ms  SECKEY_ECParamsToBasePointOrderLen()
 19687 ms  0x187c ret:0x100
 19687 ms  0x187c EC_ValidatePublicKey()
 19693 ms  0x187c ret:0x0
 19699 ms  0x187c PK11_DeriveWithFlags()
 19699 ms  0x187c basekey:0x7febd8a34c00
 19699 ms     | 0x187c PK11_DeriveWithTemplate()
 19699 ms  0x187c ret:0x7febd9384c80
 19700 ms  0x187c PK11_Derive()
 19700 ms  0x187c basekey:0x7febd9384c80
 19700 ms     | 0x187c PK11_DeriveWithTemplate()
 19700 ms  0x187c ret:0x7febdae83400
 19700 ms  0x187c PK11_PubDeriveWithKDF()
 19700 ms  0x187c seckey:0x7febe1710020
 19700 ms     | 0x187c EC_ValidatePublicKey()
 19700 ms     | 0x187c ret:0x0
 19701 ms  0x187c ret:0x7febd9384c80
 19701 ms  SECKEY_ECParamsToKeySize()
 19701 ms  0x187c ret:0xff
 19701 ms  0x187c PK11_DeriveWithFlags()
 19701 ms  0x187c basekey:0x7febdae83400
 19701 ms     | 0x187c PK11_DeriveWithTemplate()
 19701 ms  0x187c ret:0x7febdae9cd00
 19701 ms  0x187c PK11_Derive()
 19701 ms  0x187c basekey:0x7febd9384c80
 19701 ms     | 0x187c PK11_DeriveWithTemplate()
 19701 ms  0x187c ret:0x7febdae9cd80
 19701 ms  0x187c PK11_DeriveWithFlags()
 19701 ms  0x187c basekey:0x7febdae9cd80
 19701 ms     | 0x187c PK11_DeriveWithTemplate()
 19701 ms  0x187c ret:0x7febdae83400
 19702 ms  0x187c PK11_DeriveWithFlags()
 19702 ms  0x187c basekey:0x7febdae9cd80
 19702 ms     | 0x187c PK11_DeriveWithTemplate()
 19702 ms  0x187c ret:0x7febd9384c80
 19702 ms  0x187c PK11_DeriveWithFlags()
 19702 ms  0x187c basekey:0x7febdae9cd80
 19702 ms     | 0x187c PK11_DeriveWithTemplate()
 19702 ms  0x187c ret:0x7febdae9cd00
 19702 ms  0x187c PK11_Derive()
 19702 ms  0x187c basekey:0x7febdaeb3100
 19702 ms     | 0x187c PK11_DeriveWithTemplate()
 19702 ms  0x187c ret:0x7febdaeb3180
 19702 ms  0x187c PK11_DeriveWithFlags()
 19702 ms  0x187c basekey:0x7febd9384c80
 19702 ms     | 0x187c PK11_DeriveWithTemplate()
 19702 ms  0x187c ret:0x7febdae9cd80
 19702 ms  0x187c PK11_DeriveWithFlags()
 19702 ms  0x187c basekey:0x7febd9384c80
 19702 ms     | 0x187c PK11_DeriveWithTemplate()
 19702 ms  0x187c ret:0x7febdae9cd00
 19703 ms  SECKEY_ECParamsToKeySize()
 19703 ms  0x187c ret:0x100
 19703 ms  SECKEY_ECParamsToBasePointOrderLen()
 19703 ms  0x187c ret:0x100
 19703 ms  SECKEY_ECParamsToBasePointOrderLen()
 19703 ms  0x187c ret:0x100
 19703 ms  0x187c EC_ValidatePublicKey()
 19706 ms  0x187c ret:0x0
 19711 ms  0x187c PK11_DeriveWithFlags()
 19711 ms  0x187c basekey:0x7febd9384c80
 19711 ms     | 0x187c PK11_DeriveWithTemplate()
 19711 ms  0x187c ret:0x7febdae9cd00
 19711 ms  0x187c SSL_AuthCertificateComplete()
 19711 ms  0x187c fd:0x7febde2e5280
 19711 ms  0x187c err:0x0
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdaeb3180
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdae9cd00
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdaeb3180
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3100
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdaeb3180
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3200
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdae83400
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3300
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdae83400
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3380
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdaeb3100
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3380
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdaeb3100
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdaeb3400
 19711 ms     | 0x187c PK11_DeriveWithFlags()
 19711 ms     | 0x187c basekey:0x7febdae83400
 19711 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19711 ms     | 0x187c ret:0x7febdae9cd80
 19711 ms     | 0x187c PK11_Encrypt()
 19711 ms     | 0x187c symkey:0x7febdaeb3300
 19712 ms     | 0x187c PK11_DeriveWithFlags()
 19712 ms     | 0x187c basekey:0x7febdae9cd00
 19712 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19712 ms     | 0x187c ret:0x7febdae9cd80
 19712 ms     | 0x187c PK11_DeriveWithFlags()
 19712 ms     | 0x187c basekey:0x7febdae9cd00
 19712 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19712 ms     | 0x187c ret:0x7febdaeb3400
 19712 ms     | 0x187c PK11_DeriveWithFlags()
 19712 ms     | 0x187c basekey:0x7febdaeb3180
 19712 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19712 ms     | 0x187c ret:0x7febdaeb3300
 19712 ms     | 0x187c SECKEY_DestroyPrivateKey()
 19712 ms     | 0x187c privk:0x7febe1713820::7febe1713820  e0 07 1c de                                      ....
 19712 ms     | 0x187c privk:0x7febe1713820::7febe1713820  e5 e5 e5 e5                                      ....
 19712 ms     | 0x187c SECKEY_DestroyPrivateKey()
 19712 ms     | 0x187c privk:0x7febe1710020::7febe1710020  60 9f 1b de                                      `...
 19712 ms     | 0x187c privk:0x7febe1710020::7febe1710020  e5 e5 e5 e5                                      ....
 19713 ms  0x187c PK11_Encrypt()
 19713 ms  0x187c symkey:0x7febdae9cd80
 19717 ms  0x187c PK11_Encrypt()
 19717 ms  0x187c symkey:0x7febdae9cd80
 19750 ms  0x187c PK11_DeriveWithFlags()
 19750 ms  0x187c basekey:0x7febdaeb3300
 19750 ms     | 0x187c PK11_DeriveWithTemplate()
 19750 ms  0x187c ret:0x7febd9384c80
 19750 ms  0x187c PK11_DeriveWithFlags()
 19750 ms  0x187c basekey:0x7febdaeb3300
 19750 ms     | 0x187c PK11_DeriveWithTemplate()
 19750 ms  0x187c ret:0x7febd9384c80
 19750 ms  0x187c PK11_Encrypt()
 19750 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 19845 ms  0x1884 PR_Close()
 19845 ms  0x1884 fd:0x7febde29fd00
           /* TID 0x18de */
 19845 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19846 ms  0x18de ret:0x0
           /* TID 0x187c */
 19847 ms  0x187c SSL_AuthCertificateComplete()
 19847 ms  0x187c fd:0x7febde2e5850
 19847 ms  0x187c err:0x0
 19847 ms     | 0x187c PK11_DeriveWithFlags()
 19847 ms     | 0x187c basekey:0x7febdae9ca00
 19847 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19847 ms     | 0x187c ret:0x7febd9384c80
 19847 ms     | 0x187c PK11_DeriveWithFlags()
 19847 ms     | 0x187c basekey:0x7febdae9ca00
 19847 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19847 ms     | 0x187c ret:0x7febdae83400
 19847 ms     | 0x187c PK11_DeriveWithFlags()
 19847 ms     | 0x187c basekey:0x7febdae9ca00
 19847 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19847 ms     | 0x187c ret:0x7febdaeb3180
 19847 ms     | 0x187c PK11_DeriveWithFlags()
 19847 ms     | 0x187c basekey:0x7febd9bede80
 19847 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19847 ms     | 0x187c ret:0x7febdaeb3400
 19848 ms     | 0x187c PK11_DeriveWithFlags()
 19848 ms     | 0x187c basekey:0x7febd9bede80
 19848 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19848 ms     | 0x187c ret:0x7febdaeb3780
 19848 ms     | 0x187c PK11_DeriveWithFlags()
 19848 ms     | 0x187c basekey:0x7febdae83400
 19848 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19848 ms     | 0x187c ret:0x7febdaeb3780
 19848 ms     | 0x187c PK11_DeriveWithFlags()
 19848 ms     | 0x187c basekey:0x7febdae83400
 19848 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19848 ms     | 0x187c ret:0x7febdaeb3800
 19848 ms     | 0x187c PK11_DeriveWithFlags()
 19848 ms     | 0x187c basekey:0x7febd9bede80
 19848 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19848 ms     | 0x187c ret:0x7febdae70700
 19848 ms     | 0x187c PK11_Encrypt()
 19848 ms     | 0x187c symkey:0x7febdaeb3400
 19849 ms     | 0x187c PK11_DeriveWithFlags()
 19849 ms     | 0x187c basekey:0x7febd9384c80
 19849 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19849 ms     | 0x187c ret:0x7febdae70700
 19849 ms     | 0x187c PK11_DeriveWithFlags()
 19849 ms     | 0x187c basekey:0x7febd9384c80
 19849 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19849 ms     | 0x187c ret:0x7febdaeb3800
 19849 ms     | 0x187c PK11_DeriveWithFlags()
 19849 ms     | 0x187c basekey:0x7febdae9ca00
 19849 ms     |    | 0x187c PK11_DeriveWithTemplate()
 19849 ms     | 0x187c ret:0x7febdaeb3400
 19849 ms     | 0x187c SECKEY_DestroyPrivateKey()
 19849 ms     | 0x187c privk:0x7febe170d820::7febe170d820  c0 9e 1b de                                      ....
 19849 ms     | 0x187c privk:0x7febe170d820::7febe170d820  e5 e5 e5 e5                                      ....
 19850 ms     | 0x187c SECKEY_DestroyPrivateKey()
 19850 ms     | 0x187c privk:0x7febc6fa6020::7febc6fa6020  40 9c 1b de                                      @...
 19850 ms     | 0x187c privk:0x7febc6fa6020::7febc6fa6020  e5 e5 e5 e5                                      ....
 19854 ms  0x187c PK11_Encrypt()
 19854 ms  0x187c symkey:0x7febdae70700
 19854 ms  0x187c PK11_Encrypt()
 19854 ms  0x187c symkey:0x7febdae70700
 19865 ms  0x187c PK11_Encrypt()
 19865 ms  0x187c symkey:0x7febdae6fb80
           /* TID 0x1884 */
 19886 ms  0x1884 PR_Close()
 19886 ms  0x1884 fd:0x7febd7b9bc10
           /* TID 0x187c */
 19900 ms  0x187c PK11_Encrypt()
 19900 ms  0x187c symkey:0x7febdae9cd80
 19901 ms  0x187c PK11_DeriveWithFlags()
 19901 ms  0x187c basekey:0x7febdaeb3400
 19901 ms     | 0x187c PK11_DeriveWithTemplate()
 19901 ms  0x187c ret:0x7febd8a34c00
 19901 ms  0x187c PK11_DeriveWithFlags()
 19901 ms  0x187c basekey:0x7febdaeb3400
 19901 ms     | 0x187c PK11_DeriveWithTemplate()
 19901 ms  0x187c ret:0x7febd8a34c00
 19901 ms  0x187c PK11_Encrypt()
 19901 ms  0x187c symkey:0x7febdae70700
 19943 ms  0x187c PK11_Encrypt()
 19943 ms  0x187c symkey:0x7febdae70700
 19963 ms  0x187c PK11_Encrypt()
 19963 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 20036 ms  0x1884 PR_Close()
 20036 ms  0x1884 fd:0x7febde19e370
 20036 ms  0x1884 PR_Close()
 20036 ms  0x1884 fd:0x7febde19e370
 20036 ms  0x1884 PR_Close()
 20036 ms  0x1884 fd:0x7febde1bc790
 20036 ms  0x1884 PR_Close()
 20036 ms  0x1884 fd:0x7febde2fd5b0
 20036 ms  0x1884 PR_Close()
 20036 ms  0x1884 fd:0x7febde2fdfa0
           /* TID 0x187c */
 20099 ms  0x187c PK11_Encrypt()
 20099 ms  0x187c symkey:0x7febdae6fb80
 20147 ms  0x187c PR_Close()
 20147 ms  0x187c fd:0x7febd8c87100
 20147 ms     | 0x187c SECKEY_DestroyPrivateKey()
 20147 ms     | 0x187c privk:0x7febe0cbe020::7febe0cbe020  40 5c 17 de                                      @\..
 20148 ms     | 0x187c privk:0x7febe0cbe020::7febe0cbe020  e5 e5 e5 e5                                      ....
 20148 ms     | 0x187c SECKEY_DestroyPrivateKey()
 20148 ms     | 0x187c privk:0x7febe0cbb020::7febe0cbb020  50 51 17 de                                      PQ..
 20148 ms     | 0x187c privk:0x7febe0cbb020::7febe0cbb020  e5 e5 e5 e5                                      ....
 20289 ms  0x187c PK11_Encrypt()
 20289 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 20294 ms  0x1884 PR_Close()
 20294 ms  0x1884 fd:0x7febde11ed00
           /* TID 0x187c */
 20375 ms  0x187c PR_Close()
 20375 ms  0x187c fd:0x7febd93c6fa0
 20375 ms     | 0x187c PK11_Encrypt()
 20375 ms     | 0x187c symkey:0x7febd8a34f00
 20375 ms  0x187c PR_Close()
 20375 ms  0x187c fd:0x7febd8aaf0d0
 20375 ms     | 0x187c PK11_Encrypt()
 20375 ms     | 0x187c symkey:0x7febd8c96700
 20376 ms  0x187c SSL_ImportFD()
 20376 ms  0x187c ret:0x7febd8aaf7c0
 20376 ms  0x187c SSL_AuthCertificateHook()
 20376 ms  0x187c fd:0x7febd8aaf7c0
 20376 ms  0x187c ret:0x0
 20376 ms  0x187c PR_Connect()
 20376 ms  0x187c fd:0x7febd8aaf7c0
           /* TID 0x189e */
 20447 ms  0x189e PR_Close()
 20447 ms  0x189e fd:0x7febdaefdc10
 20596 ms  0x189e PR_Close()
 20596 ms  0x189e fd:0x7febdaeadd30
 20599 ms  0x189e PR_Close()
 20599 ms  0x189e fd:0x7febdaeadd30
           /* TID 0x187c */
 20627 ms  0x187c SSL_ImportFD()
 20627 ms  0x187c ret:0x7febde149b20
 20627 ms  0x187c SSL_AuthCertificateHook()
 20627 ms  0x187c fd:0x7febde149b20
 20627 ms  0x187c ret:0x0
 20627 ms  0x187c PR_Connect()
 20627 ms  0x187c fd:0x7febde149b20
 20707 ms  0x187c SECKEY_CreateECPrivateKey()
 20707 ms  0x187c cx:0x7febd7b982c8
 20709 ms     | 0x187c EC_ValidatePublicKey()
 20709 ms     | 0x187c ret:0x0
 20709 ms  0x187c ret:0x7febddf7a820::7febddf7a820  20 54 17 de                                       T..
 20709 ms  0x187c SECKEY_CreateECPrivateKey()
 20709 ms  0x187c cx:0x7febd7b982c8
 20711 ms     | 0x187c EC_ValidatePublicKey()
 20715 ms     | 0x187c ret:0x0
 20715 ms  0x187c ret:0x7febe0cbd020::7febe0cbd020  10 0f 1c de                                      ....
 20870 ms  SECKEY_ECParamsToKeySize()
 20870 ms  0x187c ret:0x100
 20870 ms  0x187c SECKEY_CreateECPrivateKey()
 20870 ms  0x187c cx:0x7febd7c24648
 20872 ms     | 0x187c EC_ValidatePublicKey()
 20879 ms     | 0x187c ret:0x0
 20879 ms  0x187c ret:0x7febe1710020::7febe1710020  00 3b 1d de                                      .;..
 20879 ms  0x187c PK11_PubDeriveWithKDF()
 20879 ms  0x187c seckey:0x7febe1710020
 20879 ms     | 0x187c EC_ValidatePublicKey()
 20884 ms     | 0x187c ret:0x0
 20889 ms  0x187c ret:0x7febd8c0b600
 20889 ms  0x187c PK11_DeriveWithFlags()
 20889 ms  0x187c basekey:0x7febd8c0b600
 20889 ms     | 0x187c PK11_DeriveWithTemplate()
 20889 ms  0x187c ret:0x7febd8c0b780
 20889 ms  0x187c PK11_Derive()
 20889 ms  0x187c basekey:0x7febd8c0b780
 20889 ms     | 0x187c PK11_DeriveWithTemplate()
 20889 ms  0x187c ret:0x7febd8c95c00
 20889 ms  0x187c SECKEY_DestroyPrivateKey()
 20889 ms  0x187c privk:0x7febe1710020::7febe1710020  00 3b 1d de                                      .;..
 20890 ms  0x187c privk:0x7febe1710020::7febe1710020  e5 e5 e5 e5                                      ....
 20890 ms  0x187c PK11_Encrypt()
 20890 ms  0x187c symkey:0x7febd8c0b480
 20890 ms  0x187c SSL_AuthCertificateComplete()
 20890 ms  0x187c fd:0x7febd9382d60
 20890 ms  0x187c err:0x0
 20892 ms  0x187c PK11_Encrypt()
 20892 ms  0x187c symkey:0x7febd8c0b480
 21995 ms  0x187c PK11_Encrypt()
 21995 ms  0x187c symkey:0x7febdae9cd80
 22085 ms  0x187c PK11_Encrypt()
 22085 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 22087 ms  0x1884 PR_Close()
 22087 ms  0x1884 fd:0x7febdaeaddc0
           /* TID 0x187c */
 22124 ms  0x187c SSL_ImportFD()
 22124 ms  0x187c ret:0x7febde341550
 22124 ms  0x187c SSL_AuthCertificateHook()
 22124 ms  0x187c fd:0x7febde341550
 22124 ms  0x187c ret:0x0
 22124 ms  0x187c PR_Connect()
 22124 ms  0x187c fd:0x7febde341550
 22126 ms  0x187c SSL_ImportFD()
 22126 ms  0x187c ret:0x7febde341df0
 22126 ms  0x187c SSL_AuthCertificateHook()
 22126 ms  0x187c fd:0x7febde341df0
 22126 ms  0x187c ret:0x0
 22126 ms  0x187c PR_Connect()
 22126 ms  0x187c fd:0x7febde341df0
 22127 ms  0x187c SSL_ImportFD()
 22127 ms  0x187c ret:0x7febe0b4c220
 22127 ms  0x187c SSL_AuthCertificateHook()
 22127 ms  0x187c fd:0x7febe0b4c220
 22127 ms  0x187c ret:0x0
 22127 ms  0x187c PR_Connect()
 22127 ms  0x187c fd:0x7febe0b4c220
           /* TID 0x1884 */
 22131 ms  0x1884 PR_Close()
 22131 ms  0x1884 fd:0x7febe0b4c3d0
           /* TID 0x187c */
 22138 ms  0x187c SSL_ImportFD()
 22138 ms  0x187c ret:0x7febe0b4ce50
 22138 ms  0x187c SSL_AuthCertificateHook()
 22138 ms  0x187c fd:0x7febe0b4ce50
 22139 ms  0x187c ret:0x0
 22139 ms  0x187c PR_Connect()
 22139 ms  0x187c fd:0x7febe0b4ce50
 22140 ms  0x187c SSL_ImportFD()
 22140 ms  0x187c ret:0x7febe0b65400
 22140 ms  0x187c SSL_AuthCertificateHook()
 22140 ms  0x187c fd:0x7febe0b65400
 22140 ms  0x187c ret:0x0
 22140 ms  0x187c PR_Connect()
 22140 ms  0x187c fd:0x7febe0b65400
 22141 ms  0x187c SSL_ImportFD()
 22141 ms  0x187c ret:0x7febe0b69880
 22141 ms  0x187c SSL_AuthCertificateHook()
 22141 ms  0x187c fd:0x7febe0b69880
 22141 ms  0x187c ret:0x0
 22141 ms  0x187c PR_Connect()
 22141 ms  0x187c fd:0x7febe0b69880
           /* TID 0x1884 */
 22154 ms  0x1884 PR_Close()
 22154 ms  0x1884 fd:0x7febe0b69040
           /* TID 0x187c */
 22162 ms  0x187c SECKEY_CreateECPrivateKey()
 22162 ms  0x187c cx:0x7febd7b98ae8
 22162 ms     | 0x187c EC_ValidatePublicKey()
 22162 ms     | 0x187c ret:0x0
 22162 ms  0x187c ret:0x7febe1725820::7febe1725820  40 5c 21 de                                      @\!.
 22162 ms  0x187c SECKEY_CreateECPrivateKey()
 22162 ms  0x187c cx:0x7febd7b98ae8
 22163 ms     | 0x187c EC_ValidatePublicKey()
 22165 ms     | 0x187c ret:0x0
 22165 ms  0x187c ret:0x7febe1dc7020::7febe1dc7020  00 d6 1f de                                      ....
 22166 ms  0x187c SECKEY_CreateECPrivateKey()
 22166 ms  0x187c cx:0x7febd7b98c88
 22167 ms     | 0x187c EC_ValidatePublicKey()
 22167 ms     | 0x187c ret:0x0
 22167 ms  0x187c ret:0x7febe1dca820::7febe1dca820  70 ce 2b de                                      p.+.
 22167 ms  0x187c SECKEY_CreateECPrivateKey()
 22167 ms  0x187c cx:0x7febd7b98c88
 22167 ms     | 0x187c EC_ValidatePublicKey()
 22169 ms     | 0x187c ret:0x0
 22169 ms  0x187c ret:0x7febe1dcc820::7febe1dcc820  00 b6 2f de                                      ../.
           /* TID 0x1884 */
 22174 ms  0x1884 PR_Close()
 22174 ms  0x1884 fd:0x7febe0c57580
           /* TID 0x187c */
 22174 ms  0x187c SECKEY_CreateECPrivateKey()
 22174 ms  0x187c cx:0x7febd7b98e28
 22175 ms     | 0x187c EC_ValidatePublicKey()
 22175 ms     | 0x187c ret:0x0
 22175 ms  0x187c ret:0x7febe1dd0820::7febe1dd0820  d0 83 30 de                                      ..0.
 22175 ms  0x187c SECKEY_CreateECPrivateKey()
 22175 ms  0x187c cx:0x7febd7b98e28
 22175 ms     | 0x187c EC_ValidatePublicKey()
 22180 ms     | 0x187c ret:0x0
 22180 ms  0x187c ret:0x7febe1dd3020::7febe1dd3020  e0 3c 1d de                                      .<..
 22182 ms  0x187c SECKEY_CreateECPrivateKey()
 22182 ms  0x187c cx:0x7febd7b98fc8
 22183 ms     | 0x187c EC_ValidatePublicKey()
 22183 ms     | 0x187c ret:0x0
 22183 ms  0x187c ret:0x7febe1dd5820::7febe1dd5820  60 6f 32 de                                      `o2.
 22183 ms  0x187c SECKEY_CreateECPrivateKey()
 22183 ms  0x187c cx:0x7febd7b98fc8
 22184 ms     | 0x187c EC_ValidatePublicKey()
 22185 ms     | 0x187c ret:0x0
 22185 ms  0x187c ret:0x7febe1dd7820::7febe1dd7820  80 9d 32 de                                      ..2.
 22191 ms  0x187c SECKEY_CreateECPrivateKey()
 22191 ms  0x187c cx:0x7febd7b99168
 22192 ms     | 0x187c EC_ValidatePublicKey()
 22192 ms     | 0x187c ret:0x0
 22192 ms  0x187c ret:0x7febe1de1020::7febe1de1020  40 bc b4 e0                                      @...
 22192 ms  0x187c SECKEY_CreateECPrivateKey()
 22192 ms  0x187c cx:0x7febd7b99168
 22192 ms     | 0x187c EC_ValidatePublicKey()
 22194 ms     | 0x187c ret:0x0
 22194 ms  0x187c ret:0x7febe1de3020::7febe1de3020  a0 16 b6 e0                                      ....
           /* TID 0x1884 */
 22199 ms  0x1884 PR_Close()
 22199 ms  0x1884 fd:0x7febdaeadd30
           /* TID 0x187c */
 22200 ms  0x187c SECKEY_CreateECPrivateKey()
 22200 ms  0x187c cx:0x7febd7b99308
 22201 ms     | 0x187c EC_ValidatePublicKey()
 22201 ms     | 0x187c ret:0x0
 22201 ms  0x187c ret:0x7febe217b820::7febe217b820  b0 a5 bb e0                                      ....
 22201 ms  0x187c SECKEY_CreateECPrivateKey()
 22201 ms  0x187c cx:0x7febd7b99308
 22201 ms     | 0x187c EC_ValidatePublicKey()
 22203 ms     | 0x187c ret:0x0
 22203 ms  0x187c ret:0x7febe2ab1820::7febe2ab1820  b0 aa bb e0                                      ....
 22220 ms  0x187c PK11_Derive()
 22220 ms  0x187c basekey:0x7febd8c0b600
 22220 ms     | 0x187c PK11_DeriveWithTemplate()
 22220 ms  0x187c ret:0x7febd8a34600
 22220 ms  0x187c PK11_PubDeriveWithKDF()
 22220 ms  0x187c seckey:0x7febe1725820
 22220 ms     | 0x187c EC_ValidatePublicKey()
 22220 ms     | 0x187c ret:0x0
 22220 ms  0x187c ret:0x7febd8c0b600
 22220 ms  SECKEY_ECParamsToKeySize()
 22220 ms  0x187c ret:0xff
 22220 ms  0x187c PK11_DeriveWithFlags()
 22220 ms  0x187c basekey:0x7febd8a34600
 22220 ms     | 0x187c PK11_DeriveWithTemplate()
 22220 ms  0x187c ret:0x7febd8a34c00
 22220 ms  0x187c PK11_Derive()
 22220 ms  0x187c basekey:0x7febd8c0b600
 22220 ms     | 0x187c PK11_DeriveWithTemplate()
 22220 ms  0x187c ret:0x7febd9bede80
 22220 ms  0x187c PK11_DeriveWithFlags()
 22220 ms  0x187c basekey:0x7febd9bede80
 22220 ms     | 0x187c PK11_DeriveWithTemplate()
 22220 ms  0x187c ret:0x7febd8a34600
 22220 ms  0x187c PK11_DeriveWithFlags()
 22220 ms  0x187c basekey:0x7febd9bede80
 22220 ms     | 0x187c PK11_DeriveWithTemplate()
 22220 ms  0x187c ret:0x7febd8c0b600
 22220 ms  0x187c PK11_DeriveWithFlags()
 22220 ms  0x187c basekey:0x7febd9bede80
 22221 ms     | 0x187c PK11_DeriveWithTemplate()
 22221 ms  0x187c ret:0x7febd8a34c00
 22221 ms  0x187c PK11_Derive()
 22221 ms  0x187c basekey:0x7febdae9ca00
 22221 ms     | 0x187c PK11_DeriveWithTemplate()
 22221 ms  0x187c ret:0x7febdaeb3800
 22221 ms  0x187c PK11_DeriveWithFlags()
 22221 ms  0x187c basekey:0x7febd8c0b600
 22221 ms     | 0x187c PK11_DeriveWithTemplate()
 22221 ms  0x187c ret:0x7febd9bede80
 22221 ms  0x187c PK11_DeriveWithFlags()
 22221 ms  0x187c basekey:0x7febd8c0b600
 22221 ms     | 0x187c PK11_DeriveWithTemplate()
 22221 ms  0x187c ret:0x7febd8a34c00
 22224 ms  0x187c PK11_Derive()
 22224 ms  0x187c basekey:0x7febd8a34c00
 22224 ms     | 0x187c PK11_DeriveWithTemplate()
 22224 ms  0x187c ret:0x7febdae9ca00
 22224 ms  0x187c PK11_PubDeriveWithKDF()
 22224 ms  0x187c seckey:0x7febe1dca820
 22224 ms     | 0x187c EC_ValidatePublicKey()
 22224 ms     | 0x187c ret:0x0
 22225 ms  0x187c ret:0x7febd8a34c00
 22225 ms  SECKEY_ECParamsToKeySize()
 22225 ms  0x187c ret:0xff
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febdae9ca00
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a35580
 22225 ms  0x187c PK11_Derive()
 22225 ms  0x187c basekey:0x7febd8a34c00
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a35500
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febd8a35500
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febdae9ca00
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febd8a35500
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a34c00
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febd8a35500
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a35580
 22225 ms  0x187c PK11_Derive()
 22225 ms  0x187c basekey:0x7febd8a35000
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a34f00
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febd8a34c00
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a35500
 22225 ms  0x187c PK11_DeriveWithFlags()
 22225 ms  0x187c basekey:0x7febd8a34c00
 22225 ms     | 0x187c PK11_DeriveWithTemplate()
 22225 ms  0x187c ret:0x7febd8a35580
 22227 ms  0x187c PK11_DeriveWithFlags()
 22227 ms  0x187c basekey:0x7febd8c0b600
 22228 ms     | 0x187c PK11_DeriveWithTemplate()
 22228 ms  0x187c ret:0x7febd8a35580
 22230 ms  0x187c PK11_DeriveWithFlags()
 22230 ms  0x187c basekey:0x7febd8a34c00
 22230 ms     | 0x187c PK11_DeriveWithTemplate()
 22230 ms  0x187c ret:0x7febd8a35580
 22235 ms  0x187c PK11_Derive()
 22235 ms  0x187c basekey:0x7febd8a35580
 22235 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febd8a35000
 22236 ms  0x187c PK11_PubDeriveWithKDF()
 22236 ms  0x187c seckey:0x7febe1dd0820
 22236 ms     | 0x187c EC_ValidatePublicKey()
 22236 ms     | 0x187c ret:0x0
 22236 ms  0x187c ret:0x7febd8a35580
 22236 ms  SECKEY_ECParamsToKeySize()
 22236 ms  0x187c ret:0xff
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febd8a35000
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb3d80
 22236 ms  0x187c PK11_Derive()
 22236 ms  0x187c basekey:0x7febd8a35580
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb4000
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febddbb4000
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febd8a35000
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febddbb4000
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febd8a35580
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febddbb4000
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb3d80
 22236 ms  0x187c PK11_Derive()
 22236 ms  0x187c basekey:0x7febddbb4100
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb4180
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febd8a35580
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb4000
 22236 ms  0x187c PK11_DeriveWithFlags()
 22236 ms  0x187c basekey:0x7febd8a35580
 22236 ms     | 0x187c PK11_DeriveWithTemplate()
 22236 ms  0x187c ret:0x7febddbb3d80
 22239 ms  0x187c PK11_Derive()
 22239 ms  0x187c basekey:0x7febddbb3d80
 22239 ms     | 0x187c PK11_DeriveWithTemplate()
 22239 ms  0x187c ret:0x7febddbb4100
 22239 ms  0x187c PK11_PubDeriveWithKDF()
 22239 ms  0x187c seckey:0x7febe1dd5820
 22239 ms     | 0x187c EC_ValidatePublicKey()
 22239 ms     | 0x187c ret:0x0
 22240 ms  0x187c ret:0x7febddbb3d80
 22240 ms  SECKEY_ECParamsToKeySize()
 22240 ms  0x187c ret:0xff
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb4100
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4200
 22240 ms  0x187c PK11_Derive()
 22240 ms  0x187c basekey:0x7febddbb3d80
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4580
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb4580
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4100
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb4580
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb3d80
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb4580
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4200
 22240 ms  0x187c PK11_Derive()
 22240 ms  0x187c basekey:0x7febddbb4600
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4f80
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb3d80
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4580
 22240 ms  0x187c PK11_DeriveWithFlags()
 22240 ms  0x187c basekey:0x7febddbb3d80
 22240 ms     | 0x187c PK11_DeriveWithTemplate()
 22240 ms  0x187c ret:0x7febddbb4200
 22241 ms  0x187c PK11_DeriveWithFlags()
 22241 ms  0x187c basekey:0x7febd8a35580
 22241 ms     | 0x187c PK11_DeriveWithTemplate()
 22241 ms  0x187c ret:0x7febddbb4200
 22244 ms  0x187c PK11_DeriveWithFlags()
 22244 ms  0x187c basekey:0x7febddbb3d80
 22244 ms     | 0x187c PK11_DeriveWithTemplate()
 22244 ms  0x187c ret:0x7febddbb4200
 22249 ms  0x187c PK11_Derive()
 22249 ms  0x187c basekey:0x7febddbb4200
 22249 ms     | 0x187c PK11_DeriveWithTemplate()
 22249 ms  0x187c ret:0x7febddbb4600
 22249 ms  0x187c PK11_PubDeriveWithKDF()
 22249 ms  0x187c seckey:0x7febe1de1020
 22249 ms     | 0x187c EC_ValidatePublicKey()
 22249 ms     | 0x187c ret:0x0
 22250 ms  0x187c ret:0x7febddbb4200
 22250 ms  SECKEY_ECParamsToKeySize()
 22250 ms  0x187c ret:0xff
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddbb4600
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a280
 22250 ms  0x187c PK11_Derive()
 22250 ms  0x187c basekey:0x7febddbb4200
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a300
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddc6a300
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddbb4600
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddc6a300
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddbb4200
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddc6a300
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a280
 22250 ms  0x187c PK11_Derive()
 22250 ms  0x187c basekey:0x7febddc6a500
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a600
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddbb4200
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a300
 22250 ms  0x187c PK11_DeriveWithFlags()
 22250 ms  0x187c basekey:0x7febddbb4200
 22250 ms     | 0x187c PK11_DeriveWithTemplate()
 22250 ms  0x187c ret:0x7febddc6a280
 22256 ms  0x187c PK11_DeriveWithFlags()
 22256 ms  0x187c basekey:0x7febddbb4200
 22256 ms     | 0x187c PK11_DeriveWithTemplate()
 22256 ms  0x187c ret:0x7febddc6a280
 22259 ms  0x187c PK11_Derive()
 22259 ms  0x187c basekey:0x7febddc6a280
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddc6a500
 22259 ms  0x187c PK11_PubDeriveWithKDF()
 22259 ms  0x187c seckey:0x7febe217b820
 22259 ms     | 0x187c EC_ValidatePublicKey()
 22259 ms     | 0x187c ret:0x0
 22259 ms  0x187c ret:0x7febddc6a280
 22259 ms  SECKEY_ECParamsToKeySize()
 22259 ms  0x187c ret:0xff
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6a500
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febdaec4280
 22259 ms  0x187c PK11_Derive()
 22259 ms  0x187c basekey:0x7febddc6a280
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddc6ad00
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6ad00
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddc6a500
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6ad00
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddc6a280
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6ad00
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febdaec4280
 22259 ms  0x187c PK11_Derive()
 22259 ms  0x187c basekey:0x7febddc6ae00
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddce2300
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6a280
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febddc6ad00
 22259 ms  0x187c PK11_DeriveWithFlags()
 22259 ms  0x187c basekey:0x7febddc6a280
 22259 ms     | 0x187c PK11_DeriveWithTemplate()
 22259 ms  0x187c ret:0x7febdaec4280
 22265 ms  0x187c PK11_DeriveWithFlags()
 22265 ms  0x187c basekey:0x7febddc6a280
 22265 ms     | 0x187c PK11_DeriveWithTemplate()
 22265 ms  0x187c ret:0x7febdaec4280
 22273 ms  0x187c PR_Connect()
 22273 ms  0x187c fd:0x7febe17a5cd0
 22286 ms  0x187c PR_Connect()
 22286 ms  0x187c fd:0x7febe17d12b0
 22326 ms  0x187c PR_Connect()
 22326 ms  0x187c fd:0x7febe17d1280
           /* TID 0x1884 */
 22393 ms  0x1884 PR_Close()
 22393 ms  0x1884 fd:0x7febe0b65130
           /* TID 0x18de */
 22394 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22394 ms  0x18de ret:0x0
           /* TID 0x187c */
 22397 ms  0x187c SSL_AuthCertificateComplete()
 22397 ms  0x187c fd:0x7febde341550
 22397 ms  0x187c err:0x0
 22397 ms     | 0x187c PK11_DeriveWithFlags()
 22397 ms     | 0x187c basekey:0x7febdaeb3800
 22397 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22397 ms     | 0x187c ret:0x7febdaec4280
 22397 ms     | 0x187c PK11_DeriveWithFlags()
 22397 ms     | 0x187c basekey:0x7febdaeb3800
 22397 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22397 ms     | 0x187c ret:0x7febddc6ae00
 22397 ms     | 0x187c PK11_DeriveWithFlags()
 22397 ms     | 0x187c basekey:0x7febdaeb3800
 22397 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22397 ms     | 0x187c ret:0x7febddce2780
 22397 ms     | 0x187c PK11_DeriveWithFlags()
 22397 ms     | 0x187c basekey:0x7febd8a34600
 22397 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22397 ms     | 0x187c ret:0x7febddce2800
 22397 ms     | 0x187c PK11_DeriveWithFlags()
 22397 ms     | 0x187c basekey:0x7febd8a34600
 22398 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22398 ms     | 0x187c ret:0x7febddce2880
 22398 ms     | 0x187c PK11_DeriveWithFlags()
 22398 ms     | 0x187c basekey:0x7febddc6ae00
 22398 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22398 ms     | 0x187c ret:0x7febddce2880
 22398 ms     | 0x187c PK11_DeriveWithFlags()
 22398 ms     | 0x187c basekey:0x7febddc6ae00
 22398 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22398 ms     | 0x187c ret:0x7febddce2900
 22398 ms     | 0x187c PK11_DeriveWithFlags()
 22398 ms     | 0x187c basekey:0x7febd8a34600
 22398 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22398 ms     | 0x187c ret:0x7febd9bede80
 22398 ms     | 0x187c PK11_Encrypt()
 22398 ms     | 0x187c symkey:0x7febddce2800
 22399 ms     | 0x187c PK11_DeriveWithFlags()
 22399 ms     | 0x187c basekey:0x7febdaec4280
 22399 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22399 ms     | 0x187c ret:0x7febd9bede80
 22399 ms     | 0x187c PK11_DeriveWithFlags()
 22399 ms     | 0x187c basekey:0x7febdaec4280
 22399 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22399 ms     | 0x187c ret:0x7febddce2900
 22399 ms     | 0x187c PK11_DeriveWithFlags()
 22399 ms     | 0x187c basekey:0x7febdaeb3800
 22399 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22399 ms     | 0x187c ret:0x7febddce2800
 22400 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22400 ms     | 0x187c privk:0x7febe1dc7020::7febe1dc7020  00 d6 1f de                                      ....
 22400 ms     | 0x187c privk:0x7febe1dc7020::7febe1dc7020  e5 e5 e5 e5                                      ....
 22400 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22400 ms     | 0x187c privk:0x7febe1725820::7febe1725820  40 5c 21 de                                      @\!.
 22400 ms     | 0x187c privk:0x7febe1725820::7febe1725820  e5 e5 e5 e5                                      ....
 22404 ms  0x187c PK11_Encrypt()
 22404 ms  0x187c symkey:0x7febd9bede80
 22404 ms  0x187c PK11_Encrypt()
 22404 ms  0x187c symkey:0x7febd9bede80
 22405 ms  0x187c SSL_AuthCertificateComplete()
 22405 ms  0x187c fd:0x7febe0b69880
 22405 ms  0x187c err:0x0
 22405 ms     | 0x187c PK11_DeriveWithFlags()
 22405 ms     | 0x187c basekey:0x7febddce2300
 22405 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22405 ms     | 0x187c ret:0x7febd8c0b600
 22405 ms     | 0x187c PK11_DeriveWithFlags()
 22405 ms     | 0x187c basekey:0x7febddce2300
 22405 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22405 ms     | 0x187c ret:0x7febd8a34600
 22405 ms     | 0x187c PK11_DeriveWithFlags()
 22405 ms     | 0x187c basekey:0x7febddce2300
 22405 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22405 ms     | 0x187c ret:0x7febdaeb3800
 22405 ms     | 0x187c PK11_DeriveWithFlags()
 22405 ms     | 0x187c basekey:0x7febddc6a500
 22405 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22405 ms     | 0x187c ret:0x7febddce2900
 22405 ms     | 0x187c PK11_DeriveWithFlags()
 22405 ms     | 0x187c basekey:0x7febddc6a500
 22405 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22405 ms     | 0x187c ret:0x7febddbb3b00
 22406 ms     | 0x187c PK11_DeriveWithFlags()
 22406 ms     | 0x187c basekey:0x7febd8a34600
 22406 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22406 ms     | 0x187c ret:0x7febddbb3b00
 22406 ms     | 0x187c PK11_DeriveWithFlags()
 22406 ms     | 0x187c basekey:0x7febd8a34600
 22406 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22406 ms     | 0x187c ret:0x7febddbb3b80
 22406 ms     | 0x187c PK11_DeriveWithFlags()
 22406 ms     | 0x187c basekey:0x7febddc6a500
 22406 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22406 ms     | 0x187c ret:0x7febddc6ad00
 22406 ms     | 0x187c PK11_Encrypt()
 22406 ms     | 0x187c symkey:0x7febddce2900
 22406 ms     | 0x187c PK11_DeriveWithFlags()
 22406 ms     | 0x187c basekey:0x7febd8c0b600
 22406 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22407 ms     | 0x187c ret:0x7febddc6ad00
 22407 ms     | 0x187c PK11_DeriveWithFlags()
 22407 ms     | 0x187c basekey:0x7febd8c0b600
 22407 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22407 ms     | 0x187c ret:0x7febddbb3b80
 22407 ms     | 0x187c PK11_DeriveWithFlags()
 22407 ms     | 0x187c basekey:0x7febddce2300
 22407 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22407 ms     | 0x187c ret:0x7febddce2900
 22407 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22407 ms     | 0x187c privk:0x7febe2ab1820::7febe2ab1820  b0 aa bb e0                                      ....
 22407 ms     | 0x187c privk:0x7febe2ab1820::7febe2ab1820  e5 e5 e5 e5                                      ....
 22408 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22408 ms     | 0x187c privk:0x7febe217b820::7febe217b820  b0 a5 bb e0                                      ....
 22408 ms     | 0x187c privk:0x7febe217b820::7febe217b820  e5 e5 e5 e5                                      ....
 22408 ms  0x187c PK11_Encrypt()
 22408 ms  0x187c symkey:0x7febd9bede80
 22412 ms  0x187c PK11_Encrypt()
 22412 ms  0x187c symkey:0x7febd9bede80
 22413 ms  0x187c PK11_Encrypt()
 22413 ms  0x187c symkey:0x7febd9bede80
 22413 ms  0x187c PK11_Encrypt()
 22413 ms  0x187c symkey:0x7febd9bede80
 22414 ms  0x187c PK11_Encrypt()
 22414 ms  0x187c symkey:0x7febd9bede80
 22415 ms  0x187c PK11_Encrypt()
 22415 ms  0x187c symkey:0x7febd9bede80
 22415 ms  0x187c PK11_Encrypt()
 22415 ms  0x187c symkey:0x7febd9bede80
 22416 ms  0x187c PK11_Encrypt()
 22416 ms  0x187c symkey:0x7febd9bede80
           /* TID 0x1912 */
 22417 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22417 ms  0x1912 ret:0x0
           /* TID 0x1884 */
 22418 ms  0x1884 PR_Close()
 22418 ms  0x1884 fd:0x7febde3410a0
           /* TID 0x187c */
 22419 ms  0x187c PK11_Encrypt()
 22419 ms  0x187c symkey:0x7febddc6ad00
 22419 ms  0x187c SSL_AuthCertificateComplete()
 22419 ms  0x187c fd:0x7febde341df0
 22419 ms  0x187c err:0x0
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febd8a34f00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febddc6a280
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febd8a34f00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febddc6a500
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febd8a34f00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febddce2300
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febdae9ca00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febddbb3b80
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febdae9ca00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febdaefbb00
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febddc6a500
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febdaefbb00
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febddc6a500
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febddbb3d00
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febdae9ca00
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22420 ms     | 0x187c ret:0x7febd8a35500
 22420 ms     | 0x187c PK11_Encrypt()
 22420 ms     | 0x187c symkey:0x7febddbb3b80
 22420 ms     | 0x187c PK11_DeriveWithFlags()
 22420 ms     | 0x187c basekey:0x7febddc6a280
 22420 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22421 ms     | 0x187c ret:0x7febd8a35500
 22421 ms     | 0x187c PK11_DeriveWithFlags()
 22421 ms     | 0x187c basekey:0x7febddc6a280
 22421 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22421 ms     | 0x187c ret:0x7febddbb3d00
 22421 ms     | 0x187c PK11_DeriveWithFlags()
 22421 ms     | 0x187c basekey:0x7febd8a34f00
 22421 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22421 ms     | 0x187c ret:0x7febddbb3b80
 22421 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22421 ms     | 0x187c privk:0x7febe1dcc820::7febe1dcc820  00 b6 2f de                                      ../.
 22421 ms     | 0x187c privk:0x7febe1dcc820::7febe1dcc820  e5 e5 e5 e5                                      ....
 22421 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22421 ms     | 0x187c privk:0x7febe1dca820::7febe1dca820  70 ce 2b de                                      p.+.
 22421 ms     | 0x187c privk:0x7febe1dca820::7febe1dca820  e5 e5 e5 e5                                      ....
 22422 ms  0x187c PK11_Encrypt()
 22422 ms  0x187c symkey:0x7febd9bede80
 22422 ms  0x187c PK11_Encrypt()
 22422 ms  0x187c symkey:0x7febd8a35500
 22423 ms  0x187c PK11_Encrypt()
 22423 ms  0x187c symkey:0x7febd9bede80
 22423 ms  0x187c PK11_Encrypt()
 22423 ms  0x187c symkey:0x7febd9bede80
 22424 ms  0x187c PK11_Encrypt()
 22424 ms  0x187c symkey:0x7febd9bede80
 22424 ms  0x187c PK11_Encrypt()
 22424 ms  0x187c symkey:0x7febd9bede80
 22425 ms  0x187c PK11_Encrypt()
 22425 ms  0x187c symkey:0x7febd9bede80
 22437 ms  0x187c PK11_DeriveWithFlags()
 22437 ms  0x187c basekey:0x7febddce2800
 22437 ms     | 0x187c PK11_DeriveWithTemplate()
 22437 ms  0x187c ret:0x7febd8a34c00
 22437 ms  0x187c PK11_DeriveWithFlags()
 22437 ms  0x187c basekey:0x7febddce2800
 22437 ms     | 0x187c PK11_DeriveWithTemplate()
 22437 ms  0x187c ret:0x7febd8a34c00
 22437 ms  0x187c PK11_Encrypt()
 22437 ms  0x187c symkey:0x7febd9bede80
 22450 ms  0x187c PK11_DeriveWithFlags()
 22450 ms  0x187c basekey:0x7febddce2900
 22450 ms     | 0x187c PK11_DeriveWithTemplate()
 22450 ms  0x187c ret:0x7febd8a34c00
 22450 ms  0x187c PK11_DeriveWithFlags()
 22450 ms  0x187c basekey:0x7febddce2900
 22450 ms     | 0x187c PK11_DeriveWithTemplate()
 22450 ms  0x187c ret:0x7febd8a34c00
 22451 ms  0x187c PR_Close()
 22451 ms  0x187c fd:0x7febe0b69880
 22451 ms     | 0x187c PK11_Encrypt()
 22451 ms     | 0x187c symkey:0x7febddc6ad00
           /* TID 0x1884 */
 22457 ms  0x1884 PR_Close()
 22457 ms  0x1884 fd:0x7febdaeadd30
           /* TID 0x191e */
 22457 ms  0x191e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22457 ms  0x191e ret:0x0
           /* TID 0x187c */
 22458 ms  0x187c SSL_AuthCertificateComplete()
 22458 ms  0x187c fd:0x7febe0b4c220
 22458 ms  0x187c err:0x0
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febddbb4180
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febdaeb3800
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febddbb4180
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febd8a34600
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febddbb4180
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febd8c0b600
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febd8a35000
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febddce2900
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febd8a35000
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febddbb3b00
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febd8a34600
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febddbb3b00
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febd8a34600
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febddc6ad00
 22458 ms     | 0x187c PK11_DeriveWithFlags()
 22458 ms     | 0x187c basekey:0x7febd8a35000
 22458 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22458 ms     | 0x187c ret:0x7febddbb4000
 22458 ms     | 0x187c PK11_Encrypt()
 22458 ms     | 0x187c symkey:0x7febddce2900
 22459 ms     | 0x187c PK11_DeriveWithFlags()
 22459 ms     | 0x187c basekey:0x7febdaeb3800
 22459 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22459 ms     | 0x187c ret:0x7febddbb4000
 22459 ms     | 0x187c PK11_DeriveWithFlags()
 22459 ms     | 0x187c basekey:0x7febdaeb3800
 22459 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22459 ms     | 0x187c ret:0x7febddc6ad00
 22459 ms     | 0x187c PK11_DeriveWithFlags()
 22459 ms     | 0x187c basekey:0x7febddbb4180
 22459 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22459 ms     | 0x187c ret:0x7febddce2900
 22459 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22459 ms     | 0x187c privk:0x7febe1dd3020::7febe1dd3020  e0 3c 1d de                                      .<..
 22459 ms     | 0x187c privk:0x7febe1dd3020::7febe1dd3020  e5 e5 e5 e5                                      ....
 22459 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22459 ms     | 0x187c privk:0x7febe1dd0820::7febe1dd0820  d0 83 30 de                                      ..0.
 22459 ms     | 0x187c privk:0x7febe1dd0820::7febe1dd0820  e5 e5 e5 e5                                      ....
 22459 ms  0x187c PK11_DeriveWithFlags()
 22459 ms  0x187c basekey:0x7febddbb3b80
 22459 ms     | 0x187c PK11_DeriveWithTemplate()
 22459 ms  0x187c ret:0x7febd8a35580
 22459 ms  0x187c PK11_DeriveWithFlags()
 22459 ms  0x187c basekey:0x7febddbb3b80
 22459 ms     | 0x187c PK11_DeriveWithTemplate()
 22460 ms  0x187c ret:0x7febd8a35580
 22460 ms  0x187c PK11_Encrypt()
 22460 ms  0x187c symkey:0x7febddbb4000
 22460 ms  0x187c PR_Close()
 22460 ms  0x187c fd:0x7febde341df0
 22460 ms     | 0x187c PK11_Encrypt()
 22460 ms     | 0x187c symkey:0x7febd8a35500
 22461 ms  0x187c PK11_Encrypt()
 22461 ms  0x187c symkey:0x7febd9bede80
           /* TID 0x1884 */
 22469 ms  0x1884 PR_Close()
 22469 ms  0x1884 fd:0x7febde341e80
           /* TID 0x191f */
 22469 ms  0x191f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22469 ms  0x191f ret:0x0
           /* TID 0x187c */
 22469 ms  0x187c SSL_AuthCertificateComplete()
 22469 ms  0x187c fd:0x7febe0b4ce50
 22469 ms  0x187c err:0x0
 22469 ms     | 0x187c PK11_DeriveWithFlags()
 22469 ms     | 0x187c basekey:0x7febddbb4f80
 22469 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22469 ms     | 0x187c ret:0x7febddce2300
 22469 ms     | 0x187c PK11_DeriveWithFlags()
 22469 ms     | 0x187c basekey:0x7febddbb4f80
 22469 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22469 ms     | 0x187c ret:0x7febddc6a500
 22469 ms     | 0x187c PK11_DeriveWithFlags()
 22469 ms     | 0x187c basekey:0x7febddbb4f80
 22469 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22469 ms     | 0x187c ret:0x7febddc6a280
 22469 ms     | 0x187c PK11_DeriveWithFlags()
 22469 ms     | 0x187c basekey:0x7febddbb4100
 22469 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22469 ms     | 0x187c ret:0x7febddbb3b80
 22469 ms     | 0x187c PK11_DeriveWithFlags()
 22469 ms     | 0x187c basekey:0x7febddbb4100
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febdaefbb00
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddc6a500
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febdaefbb00
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddc6a500
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febd8a35500
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddbb4100
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febddbb4580
 22470 ms     | 0x187c PK11_Encrypt()
 22470 ms     | 0x187c symkey:0x7febddbb3b80
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddce2300
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febddbb4580
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddce2300
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febd8a35500
 22470 ms     | 0x187c PK11_DeriveWithFlags()
 22470 ms     | 0x187c basekey:0x7febddbb4f80
 22470 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22470 ms     | 0x187c ret:0x7febddbb3b80
 22470 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22470 ms     | 0x187c privk:0x7febe1dd7820::7febe1dd7820  80 9d 32 de                                      ..2.
 22470 ms     | 0x187c privk:0x7febe1dd7820::7febe1dd7820  e5 e5 e5 e5                                      ....
 22470 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22470 ms     | 0x187c privk:0x7febe1dd5820::7febe1dd5820  60 6f 32 de                                      `o2.
 22470 ms     | 0x187c privk:0x7febe1dd5820::7febe1dd5820  e5 e5 e5 e5                                      ....
 22471 ms  0x187c PK11_Encrypt()
 22471 ms  0x187c symkey:0x7febddbb4580
 22471 ms  0x187c PK11_Encrypt()
 22471 ms  0x187c symkey:0x7febd9bede80
 22497 ms  0x187c PK11_DeriveWithFlags()
 22497 ms  0x187c basekey:0x7febddce2900
 22497 ms     | 0x187c PK11_DeriveWithTemplate()
 22497 ms  0x187c ret:0x7febddbb3d80
 22497 ms  0x187c PK11_DeriveWithFlags()
 22497 ms  0x187c basekey:0x7febddce2900
 22497 ms     | 0x187c PK11_DeriveWithTemplate()
 22497 ms  0x187c ret:0x7febddbb3d80
 22497 ms  0x187c PR_Close()
 22497 ms  0x187c fd:0x7febe0b4c220
 22497 ms     | 0x187c PK11_Encrypt()
 22497 ms     | 0x187c symkey:0x7febddbb4000
 22522 ms  0x187c PK11_Encrypt()
 22522 ms  0x187c symkey:0x7febdae9cd80
 22523 ms  0x187c PK11_Encrypt()
 22523 ms  0x187c symkey:0x7febd9bede80
 22530 ms  0x187c PK11_DeriveWithFlags()
 22530 ms  0x187c basekey:0x7febddbb3b80
 22531 ms     | 0x187c PK11_DeriveWithTemplate()
 22531 ms  0x187c ret:0x7febd8c0b600
 22531 ms  0x187c PK11_DeriveWithFlags()
 22531 ms  0x187c basekey:0x7febddbb3b80
 22531 ms     | 0x187c PK11_DeriveWithTemplate()
 22531 ms  0x187c ret:0x7febd8c0b600
 22531 ms  0x187c PR_Close()
 22531 ms  0x187c fd:0x7febe0b4ce50
 22531 ms     | 0x187c PK11_Encrypt()
 22531 ms     | 0x187c symkey:0x7febddbb4580
           /* TID 0x1884 */
 22532 ms  0x1884 PR_Close()
 22532 ms  0x1884 fd:0x7febdaefdc10
           /* TID 0x1920 */
 22532 ms  0x1920 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22532 ms  0x1920 ret:0x0
           /* TID 0x187c */
 22536 ms  0x187c SSL_AuthCertificateComplete()
 22536 ms  0x187c fd:0x7febe0b65400
 22536 ms  0x187c err:0x0
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddc6a280
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddc6a500
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddce2300
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddbb4600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddbb3b80
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddbb4600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febdaefbb00
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a500
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febdaefbb00
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a500
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddbb4580
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddbb4600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddc6a300
 22536 ms     | 0x187c PK11_Encrypt()
 22536 ms     | 0x187c symkey:0x7febddbb3b80
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a280
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddc6a300
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a280
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddbb4580
 22536 ms     | 0x187c PK11_DeriveWithFlags()
 22536 ms     | 0x187c basekey:0x7febddc6a600
 22536 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22536 ms     | 0x187c ret:0x7febddbb3b80
 22537 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22537 ms     | 0x187c privk:0x7febe1de3020::7febe1de3020  a0 16 b6 e0                                      ....
 22537 ms     | 0x187c privk:0x7febe1de3020::7febe1de3020  e5 e5 e5 e5                                      ....
 22537 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22537 ms     | 0x187c privk:0x7febe1de1020::7febe1de1020  40 bc b4 e0                                      @...
 22537 ms     | 0x187c privk:0x7febe1de1020::7febe1de1020  e5 e5 e5 e5                                      ....
 22537 ms  0x187c PK11_Encrypt()
 22537 ms  0x187c symkey:0x7febddc6a300
 22537 ms  0x187c PK11_Encrypt()
 22537 ms  0x187c symkey:0x7febd9bede80
 22575 ms  0x187c PK11_DeriveWithFlags()
 22575 ms  0x187c basekey:0x7febddbb3b80
 22575 ms     | 0x187c PK11_DeriveWithTemplate()
 22575 ms  0x187c ret:0x7febddbb4200
 22575 ms  0x187c PK11_DeriveWithFlags()
 22575 ms  0x187c basekey:0x7febddbb3b80
 22575 ms     | 0x187c PK11_DeriveWithTemplate()
 22575 ms  0x187c ret:0x7febddbb4200
 22575 ms  0x187c PR_Close()
 22575 ms  0x187c fd:0x7febe0b65400
 22575 ms     | 0x187c PK11_Encrypt()
 22575 ms     | 0x187c symkey:0x7febddc6a300
           /* TID 0x1884 */
 22606 ms  0x1884 PR_Close()
 22606 ms  0x1884 fd:0x7febde341730
           /* TID 0x187c */
 22607 ms  0x187c PK11_Encrypt()
 22607 ms  0x187c symkey:0x7febd9bede80
 22613 ms  0x187c PK11_Encrypt()
 22613 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 22614 ms  0x1884 PR_Close()
 22614 ms  0x1884 fd:0x7febdaefdc10
           /* TID 0x187c */
 22617 ms  0x187c PK11_Encrypt()
 22617 ms  0x187c symkey:0x7febdae9cd80
 22617 ms  0x187c SSL_ImportFD()
 22617 ms  0x187c ret:0x7febe0b4c400
 22617 ms  0x187c SSL_AuthCertificateHook()
 22617 ms  0x187c fd:0x7febe0b4c400
 22617 ms  0x187c ret:0x0
 22618 ms  0x187c PR_Connect()
 22618 ms  0x187c fd:0x7febe0b4c400
           /* TID 0x1884 */
 22619 ms  0x1884 PR_Close()
 22619 ms  0x1884 fd:0x7febde3ede50
           /* TID 0x187c */
 22619 ms  0x187c PK11_Encrypt()
 22619 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 22631 ms  0x1884 PR_Close()
 22631 ms  0x1884 fd:0x7febdaefdc10
           /* TID 0x187c */
 22632 ms  0x187c PK11_Encrypt()
 22632 ms  0x187c symkey:0x7febd9bede80
           /* TID 0x1884 */
 22632 ms  0x1884 PR_Close()
 22632 ms  0x1884 fd:0x7febdaefdc10
 22633 ms  0x1884 PR_Close()
 22633 ms  0x1884 fd:0x7febdaefdc10
 22634 ms  0x1884 PR_Close()
 22634 ms  0x1884 fd:0x7febdaefdc10
           /* TID 0x187c */
 22636 ms  0x187c SSL_ImportFD()
 22636 ms  0x187c ret:0x7febe0b4cf70
 22636 ms  0x187c SSL_AuthCertificateHook()
 22636 ms  0x187c fd:0x7febe0b4cf70
 22636 ms  0x187c ret:0x0
 22636 ms  0x187c PR_Connect()
 22636 ms  0x187c fd:0x7febe0b4cf70
 22636 ms  0x187c SSL_ImportFD()
 22636 ms  0x187c ret:0x7febe0b69880
 22636 ms  0x187c SSL_AuthCertificateHook()
 22636 ms  0x187c fd:0x7febe0b69880
 22636 ms  0x187c ret:0x0
 22636 ms  0x187c PR_Connect()
 22636 ms  0x187c fd:0x7febe0b69880
 22636 ms  0x187c SSL_ImportFD()
 22636 ms  0x187c ret:0x7febe0bc0ca0
 22636 ms  0x187c SSL_AuthCertificateHook()
 22636 ms  0x187c fd:0x7febe0bc0ca0
 22636 ms  0x187c ret:0x0
 22636 ms  0x187c PR_Connect()
 22636 ms  0x187c fd:0x7febe0bc0ca0
 22637 ms  0x187c PK11_Encrypt()
 22637 ms  0x187c symkey:0x7febdae9cd80
 22656 ms  0x187c SECKEY_CreateECPrivateKey()
 22656 ms  0x187c cx:0x7febd7b99988
 22656 ms     | 0x187c EC_ValidatePublicKey()
 22656 ms     | 0x187c ret:0x0
 22656 ms  0x187c ret:0x7febe1dc7820::7febe1dc7820  b0 d0 1f de                                      ....
 22656 ms  0x187c SECKEY_CreateECPrivateKey()
 22656 ms  0x187c cx:0x7febd7b99988
 22657 ms     | 0x187c EC_ValidatePublicKey()
 22658 ms     | 0x187c ret:0x0
 22658 ms  0x187c ret:0x7febe1dcb020::7febe1dcb020  30 0d 24 de                                      0.$.
 22673 ms  0x187c SECKEY_CreateECPrivateKey()
 22673 ms  0x187c cx:0x7febd7b99b28
 22674 ms     | 0x187c EC_ValidatePublicKey()
 22674 ms     | 0x187c ret:0x0
 22674 ms  0x187c ret:0x7febe1dd0020::7febe1dd0020  20 ce 2b de                                       .+.
 22674 ms  0x187c SECKEY_CreateECPrivateKey()
 22674 ms  0x187c cx:0x7febd7b99b28
 22674 ms     | 0x187c EC_ValidatePublicKey()
 22676 ms     | 0x187c ret:0x0
 22676 ms  0x187c ret:0x7febe1dd2820::7febe1dd2820  50 b1 2f de                                      P./.
 22678 ms  0x187c SECKEY_CreateECPrivateKey()
 22678 ms  0x187c cx:0x7febd7b99cc8
 22679 ms     | 0x187c EC_ValidatePublicKey()
 22679 ms     | 0x187c ret:0x0
 22679 ms  0x187c ret:0x7febe1dd5020::7febe1dd5020  d0 b8 2f de                                      ../.
 22679 ms  0x187c SECKEY_CreateECPrivateKey()
 22679 ms  0x187c cx:0x7febd7b99cc8
 22679 ms     | 0x187c EC_ValidatePublicKey()
 22681 ms     | 0x187c ret:0x0
 22681 ms  0x187c ret:0x7febe1dd7020::7febe1dd7020  80 f3 31 de                                      ..1.
 22690 ms  0x187c SECKEY_CreateECPrivateKey()
 22690 ms  0x187c cx:0x7febd7c244a8
 22691 ms     | 0x187c EC_ValidatePublicKey()
 22691 ms     | 0x187c ret:0x0
 22691 ms  0x187c ret:0x7febe1de0820::7febe1de0820  b0 95 32 de                                      ..2.
 22691 ms  0x187c SECKEY_CreateECPrivateKey()
 22691 ms  0x187c cx:0x7febd7c244a8
 22692 ms     | 0x187c EC_ValidatePublicKey()
 22693 ms     | 0x187c ret:0x0
 22693 ms  0x187c ret:0x7febe25b3820::7febe25b3820  b0 9f 32 de                                      ..2.
 22713 ms  0x187c PK11_Derive()
 22713 ms  0x187c basekey:0x7febddce2300
 22713 ms     | 0x187c PK11_DeriveWithTemplate()
 22713 ms  0x187c ret:0x7febddc6a500
 22713 ms  0x187c PK11_PubDeriveWithKDF()
 22713 ms  0x187c seckey:0x7febe1dc7820
 22713 ms     | 0x187c EC_ValidatePublicKey()
 22713 ms     | 0x187c ret:0x0
 22714 ms  0x187c ret:0x7febddce2300
 22714 ms  SECKEY_ECParamsToKeySize()
 22714 ms  0x187c ret:0xff
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddc6a500
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddc6a280
 22714 ms  0x187c PK11_Derive()
 22714 ms  0x187c basekey:0x7febddce2300
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddbb3b80
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddbb3b80
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddc6a500
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddbb3b80
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddce2300
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddbb3b80
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddc6a280
 22714 ms  0x187c PK11_Derive()
 22714 ms  0x187c basekey:0x7febdaefbb00
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddc6a300
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddce2300
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddbb3b80
 22714 ms  0x187c PK11_DeriveWithFlags()
 22714 ms  0x187c basekey:0x7febddce2300
 22714 ms     | 0x187c PK11_DeriveWithTemplate()
 22714 ms  0x187c ret:0x7febddc6a280
 22716 ms  0x187c PK11_DeriveWithFlags()
 22716 ms  0x187c basekey:0x7febddce2300
 22716 ms     | 0x187c PK11_DeriveWithTemplate()
 22716 ms  0x187c ret:0x7febddc6a280
 22730 ms  0x187c PK11_Derive()
 22730 ms  0x187c basekey:0x7febddc6a280
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febdaefbb00
 22731 ms  0x187c PK11_PubDeriveWithKDF()
 22731 ms  0x187c seckey:0x7febe1dd0020
 22731 ms     | 0x187c EC_ValidatePublicKey()
 22731 ms     | 0x187c ret:0x0
 22731 ms  0x187c ret:0x7febddc6a280
 22731 ms  SECKEY_ECParamsToKeySize()
 22731 ms  0x187c ret:0xff
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febdaefbb00
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4200
 22731 ms  0x187c PK11_Derive()
 22731 ms  0x187c basekey:0x7febddc6a280
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4600
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febddbb4600
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febdaefbb00
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febddbb4600
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddc6a280
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febddbb4600
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4200
 22731 ms  0x187c PK11_Derive()
 22731 ms  0x187c basekey:0x7febddc6a600
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4580
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febddc6a280
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4600
 22731 ms  0x187c PK11_DeriveWithFlags()
 22731 ms  0x187c basekey:0x7febddc6a280
 22731 ms     | 0x187c PK11_DeriveWithTemplate()
 22731 ms  0x187c ret:0x7febddbb4200
 22734 ms  0x187c PK11_DeriveWithFlags()
 22734 ms  0x187c basekey:0x7febddc6a280
 22734 ms     | 0x187c PK11_DeriveWithTemplate()
 22734 ms  0x187c ret:0x7febddbb4200
 22736 ms  0x187c PK11_Derive()
 22736 ms  0x187c basekey:0x7febddbb4200
 22736 ms     | 0x187c PK11_DeriveWithTemplate()
 22736 ms  0x187c ret:0x7febddc6a600
 22736 ms  0x187c PK11_PubDeriveWithKDF()
 22736 ms  0x187c seckey:0x7febe1dd5020
 22736 ms     | 0x187c EC_ValidatePublicKey()
 22737 ms     | 0x187c ret:0x0
 22737 ms  0x187c ret:0x7febddbb4200
 22737 ms  SECKEY_ECParamsToKeySize()
 22737 ms  0x187c ret:0xff
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febddc6a600
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febd8c0b600
 22737 ms  0x187c PK11_Derive()
 22737 ms  0x187c basekey:0x7febddbb4200
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febd8a34600
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febd8a34600
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febddc6a600
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febd8a34600
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febddbb4200
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febd8a34600
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febd8c0b600
 22737 ms  0x187c PK11_Derive()
 22737 ms  0x187c basekey:0x7febdaeb3800
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febddce2900
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febddbb4200
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febd8a34600
 22737 ms  0x187c PK11_DeriveWithFlags()
 22737 ms  0x187c basekey:0x7febddbb4200
 22737 ms     | 0x187c PK11_DeriveWithTemplate()
 22737 ms  0x187c ret:0x7febd8c0b600
 22738 ms  0x187c PK11_DeriveWithFlags()
 22738 ms  0x187c basekey:0x7febddbb4200
 22738 ms     | 0x187c PK11_DeriveWithTemplate()
 22738 ms  0x187c ret:0x7febd8c0b600
 22751 ms  0x187c PK11_Derive()
 22751 ms  0x187c basekey:0x7febd8c0b600
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febdaeb3800
 22751 ms  0x187c PK11_PubDeriveWithKDF()
 22751 ms  0x187c seckey:0x7febe1de0820
 22751 ms     | 0x187c EC_ValidatePublicKey()
 22751 ms     | 0x187c ret:0x0
 22751 ms  0x187c ret:0x7febd8c0b600
 22751 ms  SECKEY_ECParamsToKeySize()
 22751 ms  0x187c ret:0xff
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febdaeb3800
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb3b00
 22751 ms  0x187c PK11_Derive()
 22751 ms  0x187c basekey:0x7febd8c0b600
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb4000
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febddbb4000
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febdaeb3800
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febddbb4000
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febd8c0b600
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febddbb4000
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb3b00
 22751 ms  0x187c PK11_Derive()
 22751 ms  0x187c basekey:0x7febddbb3d80
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb4100
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febd8c0b600
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb4000
 22751 ms  0x187c PK11_DeriveWithFlags()
 22751 ms  0x187c basekey:0x7febd8c0b600
 22751 ms     | 0x187c PK11_DeriveWithTemplate()
 22751 ms  0x187c ret:0x7febddbb3b00
 22753 ms  0x187c PK11_DeriveWithFlags()
 22753 ms  0x187c basekey:0x7febd8c0b600
 22753 ms     | 0x187c PK11_DeriveWithTemplate()
 22753 ms  0x187c ret:0x7febddbb3b00
 22777 ms  0x187c SSL_ImportFD()
 22777 ms  0x187c ret:0x7febe2af02b0
 22777 ms  0x187c SSL_AuthCertificateHook()
 22777 ms  0x187c fd:0x7febe2af02b0
 22777 ms  0x187c ret:0x0
 22777 ms  0x187c PR_Connect()
 22777 ms  0x187c fd:0x7febe2af02b0
 22783 ms  0x187c SECKEY_DestroyPrivateKey()
 22783 ms  0x187c privk:0x7febddb0e820::7febddb0e820  b0 5a 2b dd                                      .Z+.
 22783 ms  0x187c privk:0x7febddb0e820::7febddb0e820  e5 e5 e5 e5                                      ....
 22784 ms  0x187c SECKEY_DestroyPrivateKey()
 22784 ms  0x187c privk:0x7febddb0a020::7febddb0a020  b0 8f e6 da                                      ....
 22784 ms  0x187c privk:0x7febddb0a020::7febddb0a020  e5 e5 e5 e5                                      ....
 22792 ms  0x187c PK11_Encrypt()
 22792 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 22793 ms  0x1884 PR_Close()
 22793 ms  0x1884 fd:0x7febde341880
 22793 ms  0x1884 PR_Close()
 22793 ms  0x1884 fd:0x7febe0b4c6d0
           /* TID 0x187c */
 22830 ms  0x187c SSL_ImportFD()
 22831 ms  0x187c ret:0x7febe2af0eb0
 22831 ms  0x187c SSL_AuthCertificateHook()
 22831 ms  0x187c fd:0x7febe2af0eb0
 22831 ms  0x187c ret:0x0
 22831 ms  0x187c PR_Connect()
 22831 ms  0x187c fd:0x7febe2af0eb0
           /* TID 0x1884 */
 22859 ms  0x1884 PR_Close()
 22859 ms  0x1884 fd:0x7febe2aea760
           /* TID 0x18de */
 22859 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22859 ms  0x18de ret:0x0
           /* TID 0x187c */
 22860 ms  0x187c SSL_AuthCertificateComplete()
 22860 ms  0x187c fd:0x7febe0b4c400
 22860 ms  0x187c err:0x0
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a300
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febddbb3b00
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a300
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febddbb3d80
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a300
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febddbb4f80
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a500
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35500
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a500
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35580
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddbb3d80
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35580
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddbb3d80
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35000
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a500
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febddbb3b80
 22860 ms     | 0x187c PK11_Encrypt()
 22860 ms     | 0x187c symkey:0x7febd8a35500
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddbb3b00
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febddbb3b80
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddbb3b00
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35000
 22860 ms     | 0x187c PK11_DeriveWithFlags()
 22860 ms     | 0x187c basekey:0x7febddc6a300
 22860 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22860 ms     | 0x187c ret:0x7febd8a35500
 22860 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22860 ms     | 0x187c privk:0x7febe1dcb020::7febe1dcb020  30 0d 24 de                                      0.$.
 22860 ms     | 0x187c privk:0x7febe1dcb020::7febe1dcb020  e5 e5 e5 e5                                      ....
 22861 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22861 ms     | 0x187c privk:0x7febe1dc7820::7febe1dc7820  b0 d0 1f de                                      ....
 22861 ms     | 0x187c privk:0x7febe1dc7820::7febe1dc7820  e5 e5 e5 e5                                      ....
 22861 ms  0x187c PK11_Encrypt()
 22861 ms  0x187c symkey:0x7febddbb3b80
 22861 ms  0x187c PK11_Encrypt()
 22861 ms  0x187c symkey:0x7febddbb3b80
 22867 ms  0x187c PR_Close()
 22867 ms  0x187c fd:0x7febe2af02b0
 22868 ms  0x187c PK11_Encrypt()
 22868 ms  0x187c symkey:0x7febd8c0b480
 22868 ms  0x187c SECKEY_CreateECPrivateKey()
 22868 ms  0x187c cx:0x7febdde3e248
 22869 ms     | 0x187c EC_ValidatePublicKey()
 22869 ms     | 0x187c ret:0x0
 22869 ms  0x187c ret:0x7febe171a020::7febe171a020  b0 d0 1f de                                      ....
 22869 ms  0x187c SECKEY_CreateECPrivateKey()
 22869 ms  0x187c cx:0x7febdde3e248
 22870 ms     | 0x187c EC_ValidatePublicKey()
 22871 ms     | 0x187c ret:0x0
 22871 ms  0x187c ret:0x7febe1dc6820::7febe1dc6820  80 d3 1f de                                      ....
           /* TID 0x1884 */
 22874 ms  0x1884 PR_Close()
 22874 ms  0x1884 fd:0x7febde3edd00
           /* TID 0x187c */
 22874 ms  0x187c SSL_ImportFD()
 22874 ms  0x187c ret:0x7febe0b65160
 22874 ms  0x187c SSL_AuthCertificateHook()
 22874 ms  0x187c fd:0x7febe0b65160
 22874 ms  0x187c ret:0x0
 22875 ms  0x187c PR_Connect()
 22875 ms  0x187c fd:0x7febe0b65160
           /* TID 0x1912 */
 22877 ms  0x1912 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22878 ms  0x1912 ret:0x0
           /* TID 0x1884 */
 22878 ms  0x1884 PR_Close()
 22878 ms  0x1884 fd:0x7febd9bfe4f0
           /* TID 0x187c */
 22878 ms  0x187c SSL_AuthCertificateComplete()
 22878 ms  0x187c fd:0x7febe0b4cf70
 22878 ms  0x187c err:0x0
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddbb4580
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddce2300
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddbb4580
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddc6a500
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddbb4580
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddc6a300
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febdaefbb00
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febd8a35000
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febdaefbb00
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddbb4180
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddc6a500
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddbb4180
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddc6a500
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddc6ad00
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febdaefbb00
 22878 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22878 ms     | 0x187c ret:0x7febddbb4600
 22878 ms     | 0x187c PK11_Encrypt()
 22878 ms     | 0x187c symkey:0x7febd8a35000
 22878 ms     | 0x187c PK11_DeriveWithFlags()
 22878 ms     | 0x187c basekey:0x7febddce2300
 22879 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22879 ms     | 0x187c ret:0x7febddbb4600
 22879 ms     | 0x187c PK11_DeriveWithFlags()
 22879 ms     | 0x187c basekey:0x7febddce2300
 22879 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22879 ms     | 0x187c ret:0x7febddc6ad00
 22879 ms     | 0x187c PK11_DeriveWithFlags()
 22879 ms     | 0x187c basekey:0x7febddbb4580
 22879 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22879 ms     | 0x187c ret:0x7febd8a35000
 22879 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22879 ms     | 0x187c privk:0x7febe1dd2820::7febe1dd2820  50 b1 2f de                                      P./.
 22879 ms     | 0x187c privk:0x7febe1dd2820::7febe1dd2820  e5 e5 e5 e5                                      ....
 22879 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22879 ms     | 0x187c privk:0x7febe1dd0020::7febe1dd0020  20 ce 2b de                                       .+.
 22879 ms     | 0x187c privk:0x7febe1dd0020::7febe1dd0020  e5 e5 e5 e5                                      ....
 22879 ms  0x187c PK11_Encrypt()
 22879 ms  0x187c symkey:0x7febddbb4600
 22880 ms  0x187c PK11_Encrypt()
 22880 ms  0x187c symkey:0x7febddbb3b80
           /* TID 0x191e */
 22885 ms  0x191e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22885 ms  0x191e ret:0x0
           /* TID 0x1884 */
 22886 ms  0x1884 PR_Close()
 22886 ms  0x1884 fd:0x7febd9bfe4f0
           /* TID 0x187c */
 22886 ms  0x187c SSL_AuthCertificateComplete()
 22886 ms  0x187c fd:0x7febe0b69880
 22886 ms  0x187c err:0x0
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddce2900
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febddc6a280
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddce2900
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febdaefbb00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddce2900
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febddbb4580
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddc6a600
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febddc6ad00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddc6a600
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febd8a34c00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febdaefbb00
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febd8a34c00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febdaefbb00
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febdae9ca00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddc6a600
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febd8a34600
 22886 ms     | 0x187c PK11_Encrypt()
 22886 ms     | 0x187c symkey:0x7febddc6ad00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddc6a280
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febd8a34600
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddc6a280
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febdae9ca00
 22886 ms     | 0x187c PK11_DeriveWithFlags()
 22886 ms     | 0x187c basekey:0x7febddce2900
 22886 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22886 ms     | 0x187c ret:0x7febddc6ad00
 22887 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22887 ms     | 0x187c privk:0x7febe1dd7020::7febe1dd7020  80 f3 31 de                                      ..1.
 22887 ms     | 0x187c privk:0x7febe1dd7020::7febe1dd7020  e5 e5 e5 e5                                      ....
 22887 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22887 ms     | 0x187c privk:0x7febe1dd5020::7febe1dd5020  d0 b8 2f de                                      ../.
 22887 ms     | 0x187c privk:0x7febe1dd5020::7febe1dd5020  e5 e5 e5 e5                                      ....
 22897 ms  0x187c PK11_Encrypt()
 22897 ms  0x187c symkey:0x7febd8a34600
 22897 ms  0x187c PK11_Encrypt()
 22897 ms  0x187c symkey:0x7febddbb3b80
           /* TID 0x1884 */
 22898 ms  0x1884 PR_Close()
 22898 ms  0x1884 fd:0x7febd9bfe4f0
           /* TID 0x191f */
 22898 ms  0x191f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22898 ms  0x191f ret:0x0
           /* TID 0x187c */
 22898 ms  0x187c PK11_DeriveWithFlags()
 22898 ms  0x187c basekey:0x7febd8a35500
 22898 ms     | 0x187c PK11_DeriveWithTemplate()
 22898 ms  0x187c ret:0x7febddbb4200
 22898 ms  0x187c PK11_DeriveWithFlags()
 22898 ms  0x187c basekey:0x7febd8a35500
 22898 ms     | 0x187c PK11_DeriveWithTemplate()
 22898 ms  0x187c ret:0x7febddbb4200
 22898 ms  0x187c SSL_AuthCertificateComplete()
 22898 ms  0x187c fd:0x7febe0bc0ca0
 22898 ms  0x187c err:0x0
 22898 ms     | 0x187c PK11_DeriveWithFlags()
 22898 ms     | 0x187c basekey:0x7febddbb4100
 22898 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22898 ms     | 0x187c ret:0x7febddbb4200
 22898 ms     | 0x187c PK11_DeriveWithFlags()
 22898 ms     | 0x187c basekey:0x7febddbb4100
 22898 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22898 ms     | 0x187c ret:0x7febddc6a600
 22898 ms     | 0x187c PK11_DeriveWithFlags()
 22898 ms     | 0x187c basekey:0x7febddbb4100
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febddce2900
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febdaeb3800
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febdae9ca00
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febdaeb3800
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febd8a34f00
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febddc6a600
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febd8a34f00
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febddc6a600
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febddbb3d00
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febdaeb3800
 22899 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22899 ms     | 0x187c ret:0x7febddbb4000
 22899 ms     | 0x187c PK11_Encrypt()
 22899 ms     | 0x187c symkey:0x7febdae9ca00
 22899 ms     | 0x187c PK11_DeriveWithFlags()
 22899 ms     | 0x187c basekey:0x7febddbb4200
 22900 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22900 ms     | 0x187c ret:0x7febddbb4000
 22900 ms     | 0x187c PK11_DeriveWithFlags()
 22900 ms     | 0x187c basekey:0x7febddbb4200
 22900 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22900 ms     | 0x187c ret:0x7febddbb3d00
 22900 ms     | 0x187c PK11_DeriveWithFlags()
 22900 ms     | 0x187c basekey:0x7febddbb4100
 22900 ms     |    | 0x187c PK11_DeriveWithTemplate()
 22900 ms     | 0x187c ret:0x7febdae9ca00
 22900 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22900 ms     | 0x187c privk:0x7febe25b3820::7febe25b3820  b0 9f 32 de                                      ..2.
 22900 ms     | 0x187c privk:0x7febe25b3820::7febe25b3820  e5 e5 e5 e5                                      ....
 22900 ms     | 0x187c SECKEY_DestroyPrivateKey()
 22900 ms     | 0x187c privk:0x7febe1de0820::7febe1de0820  b0 95 32 de                                      ..2.
 22900 ms     | 0x187c privk:0x7febe1de0820::7febe1de0820  e5 e5 e5 e5                                      ....
 22900 ms  0x187c PK11_Encrypt()
 22900 ms  0x187c symkey:0x7febddbb3b80
 22901 ms  0x187c PK11_Encrypt()
 22901 ms  0x187c symkey:0x7febddbb4000
 22901 ms  0x187c PK11_Encrypt()
 22901 ms  0x187c symkey:0x7febddbb3b80
 22905 ms  0x187c PK11_Encrypt()
 22905 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 22906 ms  0x1884 PR_Close()
 22906 ms  0x1884 fd:0x7febe0bc0c10
           /* TID 0x187c */
 22916 ms  0x187c PK11_DeriveWithFlags()
 22916 ms  0x187c basekey:0x7febd8a35000
 22916 ms     | 0x187c PK11_DeriveWithTemplate()
 22916 ms  0x187c ret:0x7febd8c0b600
 22916 ms  0x187c PK11_DeriveWithFlags()
 22916 ms  0x187c basekey:0x7febd8a35000
 22916 ms     | 0x187c PK11_DeriveWithTemplate()
 22916 ms  0x187c ret:0x7febd8c0b600
 22917 ms  0x187c PR_Close()
 22917 ms  0x187c fd:0x7febe0b4cf70
 22917 ms     | 0x187c PK11_Encrypt()
 22917 ms     | 0x187c symkey:0x7febddbb4600
 22924 ms  0x187c PK11_DeriveWithFlags()
 22924 ms  0x187c basekey:0x7febddc6ad00
 22924 ms     | 0x187c PK11_DeriveWithTemplate()
 22924 ms  0x187c ret:0x7febddc6a300
 22924 ms  0x187c PK11_DeriveWithFlags()
 22924 ms  0x187c basekey:0x7febddc6ad00
 22924 ms     | 0x187c PK11_DeriveWithTemplate()
 22924 ms  0x187c ret:0x7febddc6a300
 22924 ms  0x187c PR_Close()
 22924 ms  0x187c fd:0x7febe0b69880
 22924 ms     | 0x187c PK11_Encrypt()
 22924 ms     | 0x187c symkey:0x7febd8a34600
 22928 ms  0x187c PK11_Derive()
 22928 ms  0x187c basekey:0x7febddbb4580
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febdaefbb00
 22928 ms  0x187c PK11_PubDeriveWithKDF()
 22928 ms  0x187c seckey:0x7febe171a020
 22928 ms     | 0x187c EC_ValidatePublicKey()
 22928 ms     | 0x187c ret:0x0
 22928 ms  0x187c ret:0x7febddbb4580
 22928 ms  SECKEY_ECParamsToKeySize()
 22928 ms  0x187c ret:0xff
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febdaefbb00
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddc6a280
 22928 ms  0x187c PK11_Derive()
 22928 ms  0x187c basekey:0x7febddbb4580
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddc6ad00
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febddc6ad00
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febdaefbb00
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febddc6ad00
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddbb4580
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febddc6ad00
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddc6a280
 22928 ms  0x187c PK11_Derive()
 22928 ms  0x187c basekey:0x7febd8a34c00
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febd8a34600
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febddbb4580
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddc6ad00
 22928 ms  0x187c PK11_DeriveWithFlags()
 22928 ms  0x187c basekey:0x7febddbb4580
 22928 ms     | 0x187c PK11_DeriveWithTemplate()
 22928 ms  0x187c ret:0x7febddc6a280
 22930 ms  SECKEY_ECParamsToKeySize()
 22930 ms  0x187c ret:0x100
 22930 ms  SECKEY_ECParamsToBasePointOrderLen()
 22930 ms  0x187c ret:0x100
 22930 ms  SECKEY_ECParamsToBasePointOrderLen()
 22930 ms  0x187c ret:0x100
 22930 ms  0x187c EC_ValidatePublicKey()
 22931 ms  0x187c ret:0x0
 22933 ms  0x187c PK11_DeriveWithFlags()
 22933 ms  0x187c basekey:0x7febddbb4580
 22933 ms     | 0x187c PK11_DeriveWithTemplate()
 22933 ms  0x187c ret:0x7febddc6a280
           /* TID 0x1884 */
 22943 ms  0x1884 PR_Close()
 22943 ms  0x1884 fd:0x7febe0b4ce50
           /* TID 0x187c */
 22943 ms  0x187c PK11_DeriveWithFlags()
 22943 ms  0x187c basekey:0x7febdae9ca00
 22943 ms     | 0x187c PK11_DeriveWithTemplate()
 22943 ms  0x187c ret:0x7febddc6a280
 22943 ms  0x187c PK11_DeriveWithFlags()
 22943 ms  0x187c basekey:0x7febdae9ca00
 22943 ms     | 0x187c PK11_DeriveWithTemplate()
 22943 ms  0x187c ret:0x7febddc6a280
 22943 ms  0x187c PR_Close()
 22943 ms  0x187c fd:0x7febe0bc0ca0
 22943 ms     | 0x187c PK11_Encrypt()
 22943 ms     | 0x187c symkey:0x7febddbb4000
 22944 ms  0x187c PK11_Encrypt()
 22944 ms  0x187c symkey:0x7febddbb3b80
           /* TID 0x1884 */
 22946 ms  0x1884 PR_Close()
 22946 ms  0x1884 fd:0x7febe0b4ce50
           /* TID 0x187c */
 22946 ms  0x187c PK11_Encrypt()
 22946 ms  0x187c symkey:0x7febddbb3b80
 22948 ms  0x187c SSL_ImportFD()
 22948 ms  0x187c ret:0x7febe0b65730
 22948 ms  0x187c SSL_AuthCertificateHook()
 22948 ms  0x187c fd:0x7febe0b65730
 22948 ms  0x187c ret:0x0
 22948 ms  0x187c PR_Connect()
 22948 ms  0x187c fd:0x7febe0b65730
 22985 ms  0x187c SECKEY_CreateECPrivateKey()
 22985 ms  0x187c cx:0x7febd7c244a8
 22985 ms     | 0x187c EC_ValidatePublicKey()
 22985 ms     | 0x187c ret:0x0
 22985 ms  0x187c ret:0x7febe1dd1820::7febe1dd1820  e0 8c 2e de                                      ....
 22986 ms  0x187c SECKEY_CreateECPrivateKey()
 22986 ms  0x187c cx:0x7febd7c244a8
 22986 ms     | 0x187c EC_ValidatePublicKey()
 22988 ms     | 0x187c ret:0x0
 22988 ms  0x187c ret:0x7febe1dd6020::7febe1dd6020  30 b8 2f de                                      0./.
 22988 ms  0x187c PK11_Derive()
 22988 ms  0x187c basekey:0x7febddc6a600
 22988 ms     | 0x187c PK11_DeriveWithTemplate()
 22988 ms  0x187c ret:0x7febddce2900
 22988 ms  0x187c PK11_DeriveWithFlags()
 22988 ms  0x187c basekey:0x7febddce2900
 22988 ms     | 0x187c PK11_DeriveWithTemplate()
 22988 ms  0x187c ret:0x7febddc6a600
 22988 ms  0x187c PK11_DeriveWithFlags()
 22988 ms  0x187c basekey:0x7febddc6a600
 22988 ms     | 0x187c PK11_DeriveWithTemplate()
 22988 ms  0x187c ret:0x7febddbb4200
 23016 ms  0x187c PK11_Encrypt()
 23016 ms  0x187c symkey:0x7febddbb3b80
 23016 ms  0x187c PR_Close()
 23016 ms  0x187c fd:0x7febe0b4c400
 23016 ms     | 0x187c PK11_Encrypt()
 23016 ms     | 0x187c symkey:0x7febddbb3b80
           /* TID 0x1884 */
 23018 ms  0x1884 PR_Close()
 23018 ms  0x1884 fd:0x7febde341610
 23018 ms  0x1884 PR_Close()
 23018 ms  0x1884 fd:0x7febe0b4c790
           /* TID 0x187c */
 23041 ms  0x187c PK11_PubDeriveWithKDF()
 23041 ms  0x187c seckey:0x7febe1dd1820
 23041 ms     | 0x187c EC_ValidatePublicKey()
 23041 ms     | 0x187c ret:0x0
 23042 ms  0x187c ret:0x7febddbb4f80
 23042 ms  SECKEY_ECParamsToKeySize()
 23042 ms  0x187c ret:0xff
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddce2900
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3d80
 23042 ms  0x187c PK11_Derive()
 23042 ms  0x187c basekey:0x7febddbb4f80
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3b00
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb3b00
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddce2900
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb3b00
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb4f80
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb3b00
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3d80
 23042 ms  0x187c PK11_Derive()
 23042 ms  0x187c basekey:0x7febd8a35500
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febd8a35580
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb4f80
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3b00
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb4f80
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3d80
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddbb4f80
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3d80
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febd8a35580
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3d80
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febd8a35580
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febd8a35500
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febd8a35580
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3b80
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddce2900
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb4200
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddce2900
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febdae9ca00
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febd8a35500
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febdae9ca00
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febd8a35500
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febd8a34f00
 23042 ms  0x187c PK11_DeriveWithFlags()
 23042 ms  0x187c basekey:0x7febddce2900
 23042 ms     | 0x187c PK11_DeriveWithTemplate()
 23042 ms  0x187c ret:0x7febddbb3b00
 23042 ms  0x187c PK11_Encrypt()
 23042 ms  0x187c symkey:0x7febddbb4200
 23043 ms  0x187c PK11_DeriveWithFlags()
 23043 ms  0x187c basekey:0x7febddbb3d80
 23043 ms     | 0x187c PK11_DeriveWithTemplate()
 23043 ms  0x187c ret:0x7febddbb3b00
 23043 ms  0x187c PK11_DeriveWithFlags()
 23043 ms  0x187c basekey:0x7febddbb3d80
 23043 ms     | 0x187c PK11_DeriveWithTemplate()
 23043 ms  0x187c ret:0x7febd8a34f00
 23043 ms  0x187c PK11_DeriveWithFlags()
 23043 ms  0x187c basekey:0x7febd8a35580
 23043 ms     | 0x187c PK11_DeriveWithTemplate()
 23043 ms  0x187c ret:0x7febddbb4200
 23044 ms  0x187c SECKEY_DestroyPrivateKey()
 23044 ms  0x187c privk:0x7febe1dd6020::7febe1dd6020  30 b8 2f de                                      0./.
 23044 ms  0x187c privk:0x7febe1dd6020::7febe1dd6020  e5 e5 e5 e5                                      ....
 23044 ms  0x187c SECKEY_DestroyPrivateKey()
 23044 ms  0x187c privk:0x7febe1dd1820::7febe1dd1820  e0 8c 2e de                                      ....
 23044 ms  0x187c privk:0x7febe1dd1820::7febe1dd1820  e5 e5 e5 e5                                      ....
 23044 ms  0x187c PK11_Encrypt()
 23044 ms  0x187c symkey:0x7febddbb3b00
 23044 ms  0x187c PK11_Encrypt()
 23044 ms  0x187c symkey:0x7febddbb3b00
 23080 ms  0x187c PK11_DeriveWithFlags()
 23080 ms  0x187c basekey:0x7febddbb4200
 23080 ms     | 0x187c PK11_DeriveWithTemplate()
 23080 ms  0x187c ret:0x7febddbb4f80
 23080 ms  0x187c PK11_DeriveWithFlags()
 23080 ms  0x187c basekey:0x7febddbb4200
 23080 ms     | 0x187c PK11_DeriveWithTemplate()
 23080 ms  0x187c ret:0x7febddbb4f80
 23080 ms  0x187c PK11_Encrypt()
 23080 ms  0x187c symkey:0x7febddbb3b00
           /* TID 0x1884 */
 23085 ms  0x1884 PR_Close()
 23085 ms  0x1884 fd:0x7febe0b4c370
           /* TID 0x18de */
 23086 ms  0x18de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 23086 ms  0x18de ret:0x0
           /* TID 0x187c */
 23086 ms  0x187c SSL_AuthCertificateComplete()
 23086 ms  0x187c fd:0x7febe2af0eb0
 23086 ms  0x187c err:0x0
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febd8a34600
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddbb4f80
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febd8a34600
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddce2900
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febd8a34600
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febd8a35580
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febdaefbb00
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febd8a34f00
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febdaefbb00
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddbb4000
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febddce2900
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddbb4000
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febddce2900
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddc6a280
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febdaefbb00
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddc6ad00
 23086 ms     | 0x187c PK11_Encrypt()
 23086 ms     | 0x187c symkey:0x7febd8a34f00
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febddbb4f80
 23086 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23086 ms     | 0x187c ret:0x7febddc6ad00
 23086 ms     | 0x187c PK11_DeriveWithFlags()
 23086 ms     | 0x187c basekey:0x7febddbb4f80
 23087 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23087 ms     | 0x187c ret:0x7febddc6a280
 23087 ms     | 0x187c PK11_DeriveWithFlags()
 23087 ms     | 0x187c basekey:0x7febd8a34600
 23087 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23087 ms     | 0x187c ret:0x7febd8a34f00
 23087 ms     | 0x187c SECKEY_DestroyPrivateKey()
 23087 ms     | 0x187c privk:0x7febe1dc6820::7febe1dc6820  80 d3 1f de                                      ....
 23087 ms     | 0x187c privk:0x7febe1dc6820::7febe1dc6820  e5 e5 e5 e5                                      ....
 23087 ms     | 0x187c SECKEY_DestroyPrivateKey()
 23087 ms     | 0x187c privk:0x7febe171a020::7febe171a020  b0 d0 1f de                                      ....
 23087 ms     | 0x187c privk:0x7febe171a020::7febe171a020  e5 e5 e5 e5                                      ....
 23087 ms  0x187c PK11_Encrypt()
 23087 ms  0x187c symkey:0x7febddc6ad00
 23087 ms  0x187c PK11_Encrypt()
 23087 ms  0x187c symkey:0x7febddc6ad00
 23117 ms  0x187c SECKEY_DestroyPrivateKey()
 23117 ms  0x187c privk:0x7febdcab0020::7febdcab0020  50 bb e5 da                                      P...
 23117 ms  0x187c privk:0x7febdcab0020::7febdcab0020  e5 e5 e5 e5                                      ....
 23117 ms  0x187c SECKEY_DestroyPrivateKey()
 23117 ms  0x187c privk:0x7febd7b73820::7febd7b73820  60 1a e5 da                                      `...
 23117 ms  0x187c privk:0x7febd7b73820::7febd7b73820  e5 e5 e5 e5                                      ....
 23127 ms  0x187c SSL_ImportFD()
 23127 ms  0x187c ret:0x7febe0b4cdf0
 23127 ms  0x187c SSL_AuthCertificateHook()
 23127 ms  0x187c fd:0x7febe0b4cdf0
 23127 ms  0x187c ret:0x0
 23127 ms  0x187c PR_Connect()
 23127 ms  0x187c fd:0x7febe0b4cdf0
 23161 ms  0x187c PK11_Encrypt()
 23161 ms  0x187c symkey:0x7febd8c02500
           /* TID 0x1884 */
 23161 ms  0x1884 PR_Close()
 23161 ms  0x1884 fd:0x7febd9bfe520
           /* TID 0x187c */
 23167 ms  0x187c PK11_Encrypt()
 23167 ms  0x187c symkey:0x7febddbb3b00
           /* TID 0x1884 */
 23168 ms  0x1884 PR_Close()
 23168 ms  0x1884 fd:0x7febe0b4cf40
           /* TID 0x187c */
 23202 ms  0x187c PK11_DeriveWithFlags()
 23202 ms  0x187c basekey:0x7febd8a34f00
 23202 ms     | 0x187c PK11_DeriveWithTemplate()
 23202 ms  0x187c ret:0x7febddbb4580
 23202 ms  0x187c PK11_DeriveWithFlags()
 23202 ms  0x187c basekey:0x7febd8a34f00
 23202 ms     | 0x187c PK11_DeriveWithTemplate()
 23202 ms  0x187c ret:0x7febddbb4580
 23202 ms  0x187c PK11_Encrypt()
 23202 ms  0x187c symkey:0x7febddc6ad00
 23244 ms  0x187c PK11_Encrypt()
 23244 ms  0x187c symkey:0x7febddc6ad00
 23247 ms  0x187c SSL_ImportFD()
 23247 ms  0x187c ret:0x7febe2aea670
 23247 ms  0x187c SSL_AuthCertificateHook()
 23247 ms  0x187c fd:0x7febe2aea670
 23247 ms  0x187c ret:0x0
 23248 ms  0x187c PK11_Encrypt()
 23248 ms  0x187c symkey:0x7febdae9cd80
 23248 ms  0x187c PR_Connect()
 23248 ms  0x187c fd:0x7febe2aea670
 23286 ms  0x187c SECKEY_CreateECPrivateKey()
 23286 ms  0x187c cx:0x7febdde3ea68
 23286 ms     | 0x187c EC_ValidatePublicKey()
 23286 ms     | 0x187c ret:0x0
 23286 ms  0x187c ret:0x7febdcab5020::7febdcab5020  90 b2 1e de                                      ....
 23286 ms  0x187c SECKEY_CreateECPrivateKey()
 23286 ms  0x187c cx:0x7febdde3ea68
 23288 ms     | 0x187c EC_ValidatePublicKey()
 23289 ms     | 0x187c ret:0x0
 23290 ms  0x187c ret:0x7febe1725820::7febe1725820  60 d0 1f de                                      `...
           /* TID 0x1884 */
 23330 ms  0x1884 PR_Close()
 23330 ms  0x1884 fd:0x7febe0bc0ee0
           /* TID 0x187c */
 23332 ms  0x187c PK11_Encrypt()
 23332 ms  0x187c symkey:0x7febdae9cd80
 23344 ms  0x187c PK11_Derive()
 23344 ms  0x187c basekey:0x7febddbb4580
 23344 ms     | 0x187c PK11_DeriveWithTemplate()
 23344 ms  0x187c ret:0x7febdaefbb00
 23344 ms  0x187c PK11_PubDeriveWithKDF()
 23344 ms  0x187c seckey:0x7febdcab5020
 23344 ms     | 0x187c EC_ValidatePublicKey()
 23344 ms     | 0x187c ret:0x0
 23346 ms  0x187c ret:0x7febddbb4580
 23346 ms  SECKEY_ECParamsToKeySize()
 23346 ms  0x187c ret:0xff
 23346 ms  0x187c PK11_DeriveWithFlags()
 23346 ms  0x187c basekey:0x7febdaefbb00
 23346 ms     | 0x187c PK11_DeriveWithTemplate()
 23346 ms  0x187c ret:0x7febd8a34600
 23346 ms  0x187c PK11_Derive()
 23346 ms  0x187c basekey:0x7febddbb4580
 23346 ms     | 0x187c PK11_DeriveWithTemplate()
 23346 ms  0x187c ret:0x7febddc6a280
 23346 ms  0x187c PK11_DeriveWithFlags()
 23346 ms  0x187c basekey:0x7febddc6a280
 23346 ms     | 0x187c PK11_DeriveWithTemplate()
 23346 ms  0x187c ret:0x7febdaefbb00
 23346 ms  0x187c PK11_DeriveWithFlags()
 23346 ms  0x187c basekey:0x7febddc6a280
 23346 ms     | 0x187c PK11_DeriveWithTemplate()
 23346 ms  0x187c ret:0x7febddbb4580
 23346 ms  0x187c PK11_DeriveWithFlags()
 23346 ms  0x187c basekey:0x7febddc6a280
 23347 ms     | 0x187c PK11_DeriveWithTemplate()
 23347 ms  0x187c ret:0x7febd8a34600
 23347 ms  0x187c PK11_Derive()
 23347 ms  0x187c basekey:0x7febd8a34c00
 23347 ms     | 0x187c PK11_DeriveWithTemplate()
 23347 ms  0x187c ret:0x7febddc6a300
 23347 ms  0x187c PK11_DeriveWithFlags()
 23347 ms  0x187c basekey:0x7febddbb4580
 23347 ms     | 0x187c PK11_DeriveWithTemplate()
 23347 ms  0x187c ret:0x7febddc6a280
 23347 ms  0x187c PK11_DeriveWithFlags()
 23347 ms  0x187c basekey:0x7febddbb4580
 23347 ms     | 0x187c PK11_DeriveWithTemplate()
 23347 ms  0x187c ret:0x7febd8a34600
 23349 ms  SECKEY_ECParamsToKeySize()
 23349 ms  0x187c ret:0x100
 23349 ms  SECKEY_ECParamsToBasePointOrderLen()
 23349 ms  0x187c ret:0x100
 23349 ms  SECKEY_ECParamsToBasePointOrderLen()
 23349 ms  0x187c ret:0x100
 23349 ms  0x187c EC_ValidatePublicKey()
 23356 ms  0x187c ret:0x0
 23361 ms  0x187c PK11_DeriveWithFlags()
 23361 ms  0x187c basekey:0x7febddbb4580
 23361 ms     | 0x187c PK11_DeriveWithTemplate()
 23361 ms  0x187c ret:0x7febd8a34600
 23361 ms  0x187c SSL_AuthCertificateComplete()
 23361 ms  0x187c fd:0x7febe2aea670
 23361 ms  0x187c err:0x0
 23361 ms     | 0x187c PK11_DeriveWithFlags()
 23361 ms     | 0x187c basekey:0x7febddc6a300
 23361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23361 ms     | 0x187c ret:0x7febd8a34600
 23361 ms     | 0x187c PK11_DeriveWithFlags()
 23361 ms     | 0x187c basekey:0x7febddc6a300
 23361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23361 ms     | 0x187c ret:0x7febd8a34c00
 23361 ms     | 0x187c PK11_DeriveWithFlags()
 23361 ms     | 0x187c basekey:0x7febddc6a300
 23361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23361 ms     | 0x187c ret:0x7febddc6a500
 23361 ms     | 0x187c PK11_DeriveWithFlags()
 23361 ms     | 0x187c basekey:0x7febdaefbb00
 23361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23361 ms     | 0x187c ret:0x7febddce2300
 23361 ms     | 0x187c PK11_DeriveWithFlags()
 23361 ms     | 0x187c basekey:0x7febdaefbb00
 23361 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23361 ms     | 0x187c ret:0x7febd8a35000
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febd8a34c00
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febd8a35000
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febd8a34c00
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febddbb4180
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febdaefbb00
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febddc6a280
 23362 ms     | 0x187c PK11_Encrypt()
 23362 ms     | 0x187c symkey:0x7febddce2300
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febd8a34600
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febddc6a280
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febd8a34600
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febddbb4180
 23362 ms     | 0x187c PK11_DeriveWithFlags()
 23362 ms     | 0x187c basekey:0x7febddc6a300
 23362 ms     |    | 0x187c PK11_DeriveWithTemplate()
 23362 ms     | 0x187c ret:0x7febddce2300
 23362 ms     | 0x187c SECKEY_DestroyPrivateKey()
 23362 ms     | 0x187c privk:0x7febe1725820::7febe1725820  60 d0 1f de                                      `...
 23363 ms     | 0x187c privk:0x7febe1725820::7febe1725820  e5 e5 e5 e5                                      ....
 23363 ms     | 0x187c SECKEY_DestroyPrivateKey()
 23363 ms     | 0x187c privk:0x7febdcab5020::7febdcab5020  90 b2 1e de                                      ....
 23363 ms     | 0x187c privk:0x7febdcab5020::7febdcab5020  e5 e5 e5 e5                                      ....
 23363 ms  0x187c PK11_Encrypt()
 23363 ms  0x187c symkey:0x7febddc6a280
 23400 ms  0x187c PK11_DeriveWithFlags()
 23400 ms  0x187c basekey:0x7febddce2300
 23400 ms     | 0x187c PK11_DeriveWithTemplate()
 23400 ms  0x187c ret:0x7febddbb4580
 23400 ms  0x187c PK11_DeriveWithFlags()
 23400 ms  0x187c basekey:0x7febddce2300
 23400 ms     | 0x187c PK11_DeriveWithTemplate()
 23400 ms  0x187c ret:0x7febddbb4580
 23400 ms  0x187c PR_Close()
 23400 ms  0x187c fd:0x7febe2aea670
 23400 ms     | 0x187c PK11_Encrypt()
 23400 ms     | 0x187c symkey:0x7febddc6a280
 23969 ms  0x187c PK11_Encrypt()
 23969 ms  0x187c symkey:0x7febd8c0b480
           /* TID 0x1884 */
 23971 ms  0x1884 PR_Close()
 23971 ms  0x1884 fd:0x7febd9bfe3a0
           /* TID 0x187c */
 24202 ms  0x187c PK11_Encrypt()
 24202 ms  0x187c symkey:0x7febdae9cd80
 24208 ms  0x187c SSL_ImportFD()
 24208 ms  0x187c ret:0x7febe2ad8e80
 24208 ms  0x187c SSL_AuthCertificateHook()
 24208 ms  0x187c fd:0x7febe2ad8e80
 24208 ms  0x187c ret:0x0
 24209 ms  0x187c PK11_Encrypt()
 24209 ms  0x187c symkey:0x7febdae9cd80
 24209 ms  0x187c PR_Connect()
 24209 ms  0x187c fd:0x7febe2ad8e80
 24247 ms  0x187c SECKEY_CreateECPrivateKey()
 24247 ms  0x187c cx:0x7febdde3ea68
 24247 ms     | 0x187c EC_ValidatePublicKey()
 24247 ms     | 0x187c ret:0x0
 24247 ms  0x187c ret:0x7febe1725820::7febe1725820  b0 d0 1f de                                      ....
 24247 ms  0x187c SECKEY_CreateECPrivateKey()
 24247 ms  0x187c cx:0x7febdde3ea68
 24248 ms     | 0x187c EC_ValidatePublicKey()
 24249 ms     | 0x187c ret:0x0
 24249 ms  0x187c ret:0x7febe1dcc020::7febe1dcc020  30 d3 1f de                                      0...
           /* TID 0x1884 */
 24275 ms  0x1884 PR_Close()
 24275 ms  0x1884 fd:0x7febde341880
           /* TID 0x187c */
 24276 ms  0x187c PK11_Encrypt()
 24276 ms  0x187c symkey:0x7febdae9cd80
 24303 ms  0x187c PK11_Derive()
 24303 ms  0x187c basekey:0x7febddc6a500
 24303 ms     | 0x187c PK11_DeriveWithTemplate()
 24303 ms  0x187c ret:0x7febd8a34c00
 24303 ms  0x187c PK11_PubDeriveWithKDF()
 24303 ms  0x187c seckey:0x7febe1725820
 24304 ms     | 0x187c EC_ValidatePublicKey()
 24304 ms     | 0x187c ret:0x0
 24305 ms  0x187c ret:0x7febddc6a500
 24305 ms  SECKEY_ECParamsToKeySize()
 24305 ms  0x187c ret:0xff
 24305 ms  0x187c PK11_DeriveWithFlags()
 24305 ms  0x187c basekey:0x7febd8a34c00
 24305 ms     | 0x187c PK11_DeriveWithTemplate()
 24305 ms  0x187c ret:0x7febd8a34600
 24305 ms  0x187c PK11_Derive()
 24305 ms  0x187c basekey:0x7febddc6a500
 24305 ms     | 0x187c PK11_DeriveWithTemplate()
 24305 ms  0x187c ret:0x7febddce2300
 24305 ms  0x187c PK11_DeriveWithFlags()
 24305 ms  0x187c basekey:0x7febddce2300
 24305 ms     | 0x187c PK11_DeriveWithTemplate()
 24305 ms  0x187c ret:0x7febd8a34c00
 24305 ms  0x187c PK11_DeriveWithFlags()
 24305 ms  0x187c basekey:0x7febddce2300
 24305 ms     | 0x187c PK11_DeriveWithTemplate()
 24305 ms  0x187c ret:0x7febddc6a500
 24305 ms  0x187c PK11_DeriveWithFlags()
 24305 ms  0x187c basekey:0x7febddce2300
 24305 ms     | 0x187c PK11_DeriveWithTemplate()
 24305 ms  0x187c ret:0x7febd8a34600
 24305 ms  0x187c PK11_Derive()
 24305 ms  0x187c basekey:0x7febd8a35000
 24306 ms     | 0x187c PK11_DeriveWithTemplate()
 24306 ms  0x187c ret:0x7febddc6a280
 24306 ms  0x187c PK11_DeriveWithFlags()
 24306 ms  0x187c basekey:0x7febddc6a500
 24306 ms     | 0x187c PK11_DeriveWithTemplate()
 24306 ms  0x187c ret:0x7febddce2300
 24306 ms  0x187c PK11_DeriveWithFlags()
 24306 ms  0x187c basekey:0x7febddc6a500
 24306 ms     | 0x187c PK11_DeriveWithTemplate()
 24306 ms  0x187c ret:0x7febd8a34600
 24307 ms  SECKEY_ECParamsToKeySize()
 24308 ms  0x187c ret:0x100
 24308 ms  SECKEY_ECParamsToBasePointOrderLen()
 24308 ms  0x187c ret:0x100
 24308 ms  SECKEY_ECParamsToBasePointOrderLen()
 24308 ms  0x187c ret:0x100
 24308 ms  0x187c EC_ValidatePublicKey()
 24311 ms  0x187c ret:0x0
 24318 ms  0x187c PK11_DeriveWithFlags()
 24318 ms  0x187c basekey:0x7febddc6a500
 24318 ms     | 0x187c PK11_DeriveWithTemplate()
 24318 ms  0x187c ret:0x7febd8a34600
 24318 ms  0x187c SSL_AuthCertificateComplete()
 24318 ms  0x187c fd:0x7febe2ad8e80
 24318 ms  0x187c err:0x0
 24318 ms     | 0x187c PK11_DeriveWithFlags()
 24318 ms     | 0x187c basekey:0x7febddc6a280
 24318 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24318 ms     | 0x187c ret:0x7febd8a34600
 24318 ms     | 0x187c PK11_DeriveWithFlags()
 24318 ms     | 0x187c basekey:0x7febddc6a280
 24318 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24318 ms     | 0x187c ret:0x7febd8a35000
 24318 ms     | 0x187c PK11_DeriveWithFlags()
 24318 ms     | 0x187c basekey:0x7febddc6a280
 24318 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24318 ms     | 0x187c ret:0x7febddbb4580
 24318 ms     | 0x187c PK11_DeriveWithFlags()
 24318 ms     | 0x187c basekey:0x7febd8a34c00
 24318 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24318 ms     | 0x187c ret:0x7febdaefbb00
 24318 ms     | 0x187c PK11_DeriveWithFlags()
 24318 ms     | 0x187c basekey:0x7febd8a34c00
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddc6a300
 24319 ms     | 0x187c PK11_DeriveWithFlags()
 24319 ms     | 0x187c basekey:0x7febd8a35000
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddc6a300
 24319 ms     | 0x187c PK11_DeriveWithFlags()
 24319 ms     | 0x187c basekey:0x7febd8a35000
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddbb4180
 24319 ms     | 0x187c PK11_DeriveWithFlags()
 24319 ms     | 0x187c basekey:0x7febd8a34c00
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddce2300
 24319 ms     | 0x187c PK11_Encrypt()
 24319 ms     | 0x187c symkey:0x7febdaefbb00
 24319 ms     | 0x187c PK11_DeriveWithFlags()
 24319 ms     | 0x187c basekey:0x7febd8a34600
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddce2300
 24319 ms     | 0x187c PK11_DeriveWithFlags()
 24319 ms     | 0x187c basekey:0x7febd8a34600
 24319 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24319 ms     | 0x187c ret:0x7febddbb4180
 24320 ms     | 0x187c PK11_DeriveWithFlags()
 24320 ms     | 0x187c basekey:0x7febddc6a280
 24320 ms     |    | 0x187c PK11_DeriveWithTemplate()
 24320 ms     | 0x187c ret:0x7febdaefbb00
 24320 ms     | 0x187c SECKEY_DestroyPrivateKey()
 24320 ms     | 0x187c privk:0x7febe1dcc020::7febe1dcc020  30 d3 1f de                                      0...
 24320 ms     | 0x187c privk:0x7febe1dcc020::7febe1dcc020  e5 e5 e5 e5                                      ....
 24320 ms     | 0x187c SECKEY_DestroyPrivateKey()
 24320 ms     | 0x187c privk:0x7febe1725820::7febe1725820  b0 d0 1f de                                      ....
 24320 ms     | 0x187c privk:0x7febe1725820::7febe1725820  e5 e5 e5 e5                                      ....
 24321 ms  0x187c PK11_Encrypt()
 24321 ms  0x187c symkey:0x7febddce2300
 24357 ms  0x187c PK11_DeriveWithFlags()
 24357 ms  0x187c basekey:0x7febdaefbb00
 24358 ms     | 0x187c PK11_DeriveWithTemplate()
 24358 ms  0x187c ret:0x7febddc6a500
 24358 ms  0x187c PK11_DeriveWithFlags()
 24358 ms  0x187c basekey:0x7febdaefbb00
 24358 ms     | 0x187c PK11_DeriveWithTemplate()
 24358 ms  0x187c ret:0x7febddc6a500
 24358 ms  0x187c PR_Close()
 24358 ms  0x187c fd:0x7febe2ad8e80
 24358 ms     | 0x187c PK11_Encrypt()
 24358 ms     | 0x187c symkey:0x7febddce2300
 24392 ms  0x187c PK11_Encrypt()
 24392 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 24394 ms  0x1884 PR_Close()
 24394 ms  0x1884 fd:0x7febdca47490
           /* TID 0x187c */
 24539 ms  0x187c PK11_Encrypt()
 24539 ms  0x187c symkey:0x7febd8c02500
           /* TID 0x1884 */
 24543 ms  0x1884 PR_Close()
 24543 ms  0x1884 fd:0x7febdde33550
 25296 ms  0x1884 PR_Close()
 25296 ms  0x1884 fd:0x7febde1bc700
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febde1bc700
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe0b4c3d0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe0b65700
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe0bc0ee0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe0c57040
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe0c575e0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2ad8e80
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2aeabb0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2aead60
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2af02e0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2b0c6a0
 25298 ms  0x1884 PR_Close()
 25298 ms  0x1884 fd:0x7febe2bb7550
           /* TID 0x187c */
 25628 ms  0x187c PR_Close()
 25628 ms  0x187c fd:0x7febde149b20
 25629 ms  0x187c SSL_ImportFD()
 25629 ms  0x187c ret:0x7febde19e850
 25629 ms  0x187c SSL_AuthCertificateHook()
 25629 ms  0x187c fd:0x7febde19e850
 25629 ms  0x187c ret:0x0
 25630 ms  0x187c PR_Connect()
 25630 ms  0x187c fd:0x7febde19e850
 25833 ms  0x187c SECKEY_CreateECPrivateKey()
 25833 ms  0x187c cx:0x7febdde3ec08
 25835 ms     | 0x187c EC_ValidatePublicKey()
 25835 ms     | 0x187c ret:0x0
 25835 ms  0x187c ret:0x7febe170f020::7febe170f020  60 ba 1e de                                      `...
 25835 ms  0x187c SECKEY_CreateECPrivateKey()
 25835 ms  0x187c cx:0x7febdde3ec08
 25837 ms     | 0x187c EC_ValidatePublicKey()
 25841 ms     | 0x187c ret:0x0
 25841 ms  0x187c ret:0x7febe1726820::7febe1726820  f0 d1 1f de                                      ....
 26195 ms  0x187c SECKEY_CreateECPrivateKey()
 26195 ms  0x187c cx:0x7febdde3e0a8
 26196 ms     | 0x187c EC_ValidatePublicKey()
 26196 ms     | 0x187c ret:0x0
 26197 ms  0x187c ret:0x7febc6fa6820::7febc6fa6820  80 08 24 de                                      ..$.
 26197 ms  0x187c SECKEY_CreateECPrivateKey()
 26197 ms  0x187c cx:0x7febdde3e0a8
 26200 ms     | 0x187c EC_ValidatePublicKey()
 26204 ms     | 0x187c ret:0x0
 26204 ms  0x187c ret:0x7febe1dd3020::7febe1dd3020  80 c8 2b de                                      ..+.
 26543 ms  SECKEY_ECParamsToKeySize()
 26545 ms  0x187c ret:0x100
 26545 ms  0x187c SECKEY_CreateECPrivateKey()
 26545 ms  0x187c cx:0x7febdde3e0a8
 26547 ms     | 0x187c EC_ValidatePublicKey()
 26552 ms     | 0x187c ret:0x0
 26552 ms  0x187c ret:0x7febe1dd6820::7febe1dd6820  80 b8 2f de                                      ../.
 26552 ms  0x187c PK11_PubDeriveWithKDF()
 26552 ms  0x187c seckey:0x7febe1dd6820
 26553 ms     | 0x187c EC_ValidatePublicKey()
 26558 ms     | 0x187c ret:0x0
 26563 ms  0x187c ret:0x7febddbb4580
 26563 ms  0x187c PK11_DeriveWithFlags()
 26563 ms  0x187c basekey:0x7febddbb4580
 26563 ms     | 0x187c PK11_DeriveWithTemplate()
 26563 ms  0x187c ret:0x7febd8a35000
 26563 ms  0x187c PK11_Derive()
 26563 ms  0x187c basekey:0x7febd8a35000
 26563 ms     | 0x187c PK11_DeriveWithTemplate()
 26563 ms  0x187c ret:0x7febd8a34600
 26563 ms  0x187c SECKEY_DestroyPrivateKey()
 26563 ms  0x187c privk:0x7febe1dd6820::7febe1dd6820  80 b8 2f de                                      ../.
 26564 ms  0x187c privk:0x7febe1dd6820::7febe1dd6820  e5 e5 e5 e5                                      ....
 26564 ms  0x187c PK11_Encrypt()
 26564 ms  0x187c symkey:0x7febd8c0b500
 26565 ms  0x187c SSL_AuthCertificateComplete()
 26565 ms  0x187c fd:0x7febe0b65160
 26565 ms  0x187c err:0x0
 26567 ms  0x187c PK11_Encrypt()
 26567 ms  0x187c symkey:0x7febd8c0b500
           /* TID 0x1884 */
 26944 ms  0x1884 PR_Close()
 26944 ms  0x1884 fd:0x7febdca47490
           /* TID 0x187c */
 26980 ms  0x187c SECKEY_DestroyPrivateKey()
 26980 ms  0x187c privk:0x7febe1dd3020::7febe1dd3020  80 c8 2b de                                      ..+.
 26980 ms  0x187c privk:0x7febe1dd3020::7febe1dd3020  e5 e5 e5 e5                                      ....
 26980 ms  0x187c SECKEY_DestroyPrivateKey()
 26980 ms  0x187c privk:0x7febc6fa6820::7febc6fa6820  80 08 24 de                                      ..$.
 26981 ms  0x187c privk:0x7febc6fa6820::7febc6fa6820  e5 e5 e5 e5                                      ....
 27334 ms  0x187c SECKEY_CreateECPrivateKey()
 27334 ms  0x187c cx:0x7febe25de648
 27335 ms     | 0x187c EC_ValidatePublicKey()
 27336 ms     | 0x187c ret:0x0
 27336 ms  0x187c ret:0x7febe1dd0020::7febe1dd0020  80 d3 1f de                                      ....
 27336 ms  0x187c SECKEY_CreateECPrivateKey()
 27336 ms  0x187c cx:0x7febe25de648
 27338 ms     | 0x187c EC_ValidatePublicKey()
 27343 ms     | 0x187c ret:0x0
 27343 ms  0x187c ret:0x7febe1dd3020::7febe1dd3020  80 c8 2b de                                      ..+.
 27350 ms  0x187c SECKEY_CreateECPrivateKey()
 27350 ms  0x187c cx:0x7febd7c24cc8
 27352 ms     | 0x187c EC_ValidatePublicKey()
 27352 ms     | 0x187c ret:0x0
 27352 ms  0x187c ret:0x7febe1dd7020::7febe1dd7020  50 66 2f de                                      Pf/.
 27352 ms  0x187c SECKEY_CreateECPrivateKey()
 27352 ms  0x187c cx:0x7febd7c24cc8
 27354 ms     | 0x187c EC_ValidatePublicKey()
 27359 ms     | 0x187c ret:0x0
 27359 ms  0x187c ret:0x7febe1de0020::7febe1de0020  60 fa 2f de                                      `./.
 28041 ms  SECKEY_ECParamsToKeySize()
 28041 ms  0x187c ret:0x100
 28041 ms  0x187c SECKEY_CreateECPrivateKey()
 28041 ms  0x187c cx:0x7febdde3ec08
 28043 ms     | 0x187c EC_ValidatePublicKey()
 28054 ms     | 0x187c ret:0x0
 28056 ms  0x187c ret:0x7febe2ab2820::7febe2ab2820  80 9d 32 de                                      ..2.
 28056 ms  0x187c PK11_PubDeriveWithKDF()
 28056 ms  0x187c seckey:0x7febe2ab2820
 28056 ms     | 0x187c EC_ValidatePublicKey()
 28060 ms     | 0x187c ret:0x0
 28064 ms  0x187c ret:0x7febddbb4580
 28064 ms  0x187c PK11_DeriveWithFlags()
 28064 ms  0x187c basekey:0x7febddbb4580
 28064 ms     | 0x187c PK11_DeriveWithTemplate()
 28064 ms  0x187c ret:0x7febdaefbb00
 28064 ms  0x187c PK11_Derive()
 28064 ms  0x187c basekey:0x7febdaefbb00
 28064 ms     | 0x187c PK11_DeriveWithTemplate()
 28064 ms  0x187c ret:0x7febddc6a300
 28064 ms  0x187c SECKEY_DestroyPrivateKey()
 28064 ms  0x187c privk:0x7febe2ab2820::7febe2ab2820  80 9d 32 de                                      ..2.
 28064 ms  0x187c privk:0x7febe2ab2820::7febe2ab2820  e5 e5 e5 e5                                      ....
 28064 ms  0x187c PK11_Encrypt()
 28064 ms  0x187c symkey:0x7febd93fb500
 28064 ms  0x187c SSL_AuthCertificateComplete()
 28064 ms  0x187c fd:0x7febde19e850
 28064 ms  0x187c err:0x0
           /* TID 0x189e */
 28533 ms  0x189e PR_Close()
 28533 ms  0x189e fd:0x7febddce9670
 28536 ms  0x189e PR_Close()
 28536 ms  0x189e fd:0x7febddce9670
           /* TID 0x1884 */
 28804 ms  0x1884 PR_Close()
 28804 ms  0x1884 fd:0x7febddbf8610
           /* TID 0x187c */
 28926 ms  0x187c PK11_Derive()
 28926 ms  0x187c basekey:0x7febddce2300
 28926 ms     | 0x187c PK11_DeriveWithTemplate()
 28927 ms  0x187c ret:0x7febddbb4580
 28927 ms  0x187c PK11_Encrypt()
 28927 ms  0x187c symkey:0x7febd93fcb80
 28928 ms  0x187c SECKEY_DestroyPrivateKey()
 28928 ms  0x187c privk:0x7febe1de0020::7febe1de0020  60 fa 2f de                                      `./.
 28929 ms  0x187c privk:0x7febe1de0020::7febe1de0020  e5 e5 e5 e5                                      ....
 28929 ms  0x187c SECKEY_DestroyPrivateKey()
 28929 ms  0x187c privk:0x7febe1dd7020::7febe1dd7020  50 66 2f de                                      Pf/.
 28929 ms  0x187c privk:0x7febe1dd7020::7febe1dd7020  e5 e5 e5 e5                                      ....
           /* TID 0x189e */
 29344 ms  0x189e PR_Close()
 29344 ms  0x189e fd:0x7febddbf8640
 29347 ms  0x189e PR_Close()
 29347 ms  0x189e fd:0x7febddbf8640
           /* TID 0x187c */
 29839 ms  0x187c PK11_Encrypt()
 29839 ms  0x187c symkey:0x7febdae9cd80
 29990 ms  0x187c PK11_Encrypt()
 29990 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x1884 */
 29992 ms  0x1884 PR_Close()
 29992 ms  0x1884 fd:0x7febd9bfe6d0
           /* TID 0x187c */
 31066 ms  0x187c PR_Close()
 31066 ms  0x187c fd:0x7febde19e850
 31067 ms     | 0x187c SECKEY_DestroyPrivateKey()
 31067 ms     | 0x187c privk:0x7febe1726820::7febe1726820  f0 d1 1f de                                      ....
 31069 ms     | 0x187c privk:0x7febe1726820::7febe1726820  e5 e5 e5 e5                                      ....
 31069 ms     | 0x187c SECKEY_DestroyPrivateKey()
 31069 ms     | 0x187c privk:0x7febe170f020::7febe170f020  60 ba 1e de                                      `...
 31069 ms     | 0x187c privk:0x7febe170f020::7febe170f020  e5 e5 e5 e5                                      ....
           /* TID 0x1884 */
 31943 ms  0x1884 PR_Close()
 31943 ms  0x1884 fd:0x7febde149b20
 31943 ms  0x1884 PR_Close()
 31943 ms  0x1884 fd:0x7febde149b20
 31943 ms  0x1884 PR_Close()
 31943 ms  0x1884 fd:0x7febde1bc700
 31943 ms  0x1884 PR_Close()
 31943 ms  0x1884 fd:0x7febde2fd580
           /* TID 0x187c */
 32093 ms  0x187c PK11_Derive()
 32093 ms  0x187c basekey:0x7febdaefbb00
 32094 ms     | 0x187c PK11_DeriveWithTemplate()
 32094 ms  0x187c ret:0x7febddc6a300
 32094 ms  0x187c PK11_Encrypt()
 32094 ms  0x187c symkey:0x7febd9384f00
 32097 ms  0x187c SECKEY_DestroyPrivateKey()
 32097 ms  0x187c privk:0x7febe1dd3020::7febe1dd3020  80 c8 2b de                                      ..+.
 32097 ms  0x187c privk:0x7febe1dd3020::7febe1dd3020  e5 e5 e5 e5                                      ....
 32098 ms  0x187c SECKEY_DestroyPrivateKey()
 32098 ms  0x187c privk:0x7febe1dd0020::7febe1dd0020  80 d3 1f de                                      ....
 32098 ms  0x187c privk:0x7febe1dd0020::7febe1dd0020  e5 e5 e5 e5                                      ....
 32101 ms  0x187c PK11_Encrypt()
 32101 ms  0x187c symkey:0x7febd8c0b480
 32837 ms  0x187c SECKEY_DestroyPrivateKey()
 32837 ms  0x187c privk:0x7febd971d020::7febd971d020  80 8d 36 d9                                      ..6.
 32838 ms  0x187c privk:0x7febd971d020::7febd971d020  e5 e5 e5 e5                                      ....
 32838 ms  0x187c SECKEY_DestroyPrivateKey()
 32838 ms  0x187c privk:0x7febd970b820::7febd970b820  c0 89 36 d9                                      ..6.
 32838 ms  0x187c privk:0x7febd970b820::7febd970b820  e5 e5 e5 e5                                      ....
           /* TID 0x1884 */
 32842 ms  0x1884 PR_Close()
 32842 ms  0x1884 fd:0x7febd8c87cd0
           /* TID 0x187c */
 32843 ms  0x187c PK11_Encrypt()
 32843 ms  0x187c symkey:0x7febd9304880
 33068 ms  0x187c PR_Close()
 33068 ms  0x187c fd:0x7febdd963e50
 33068 ms     | 0x187c PK11_Encrypt()
 33068 ms     | 0x187c symkey:0x7febd9384f00
 33069 ms  0x187c PR_Close()
 33069 ms  0x187c fd:0x7febd8c87a00
 33069 ms     | 0x187c PK11_Encrypt()
 33069 ms     | 0x187c symkey:0x7febd93fcb80
 33167 ms  0x187c PK11_Encrypt()
 33167 ms  0x187c symkey:0x7febd9304880
           /* TID 0x1884 */
 33169 ms  0x1884 PR_Close()
 33169 ms  0x1884 fd:0x7febd8aafbb0
           /* TID 0x187c */
 33791 ms  0x187c PK11_Encrypt()
 33791 ms  0x187c symkey:0x7febd8c0b480
           /* TID 0x1884 */
 33794 ms  0x1884 PR_Close()
 33794 ms  0x1884 fd:0x7febd8c87ac0
           /* TID 0x187c */
 34125 ms  0x187c PK11_Encrypt()
 34125 ms  0x187c symkey:0x7febd8c0b480
           /* TID 0x1884 */
 34129 ms  0x1884 PR_Close()
 34129 ms  0x1884 fd:0x7febd8aafbb0
           /* TID 0x187c */
 34337 ms  0x187c PR_Close()
 34337 ms  0x187c fd:0x7febe0b65160
 34337 ms     | 0x187c PK11_Encrypt()
 34337 ms     | 0x187c symkey:0x7febd8c0b500
 34451 ms  0x187c PR_Close()
 34451 ms  0x187c fd:0x7febd9382d60
 34451 ms     | 0x187c PK11_Encrypt()
 34451 ms     | 0x187c symkey:0x7febd8c0b480
 34452 ms  0x187c SSL_ImportFD()
 34452 ms  0x187c ret:0x7febd9382d60
 34452 ms  0x187c SSL_AuthCertificateHook()
 34452 ms  0x187c fd:0x7febd9382d60
 34452 ms  0x187c ret:0x0
 34452 ms  0x187c PR_Connect()
 34452 ms  0x187c fd:0x7febd9382d60
 34675 ms  0x187c SECKEY_CreateECPrivateKey()
 34675 ms  0x187c cx:0x7febd7c24cc8
 34676 ms     | 0x187c EC_ValidatePublicKey()
 34676 ms     | 0x187c ret:0x0
 34676 ms  0x187c ret:0x7febd970a820::7febd970a820  70 29 ef dd                                      p)..
 34676 ms  0x187c SECKEY_CreateECPrivateKey()
 34676 ms  0x187c cx:0x7febd7c24cc8
 34676 ms     | 0x187c EC_ValidatePublicKey()
 34678 ms     | 0x187c ret:0x0
 34678 ms  0x187c ret:0x7febd9715820::7febd9715820  f0 9b 1b de                                      ....
 34906 ms  SECKEY_ECParamsToKeySize()
 34910 ms  0x187c ret:0x100
 34910 ms  0x187c SECKEY_CreateECPrivateKey()
 34910 ms  0x187c cx:0x7febd7c24cc8
 34914 ms     | 0x187c EC_ValidatePublicKey()
 34920 ms     | 0x187c ret:0x0
 34920 ms  0x187c ret:0x7febe170f020::7febe170f020  b0 9f 1b de                                      ....
 34920 ms  0x187c PK11_PubDeriveWithKDF()
 34920 ms  0x187c seckey:0x7febe170f020
 34920 ms     | 0x187c EC_ValidatePublicKey()
 34925 ms     | 0x187c ret:0x0
 34931 ms  0x187c ret:0x7febd8c95c00
 34931 ms  0x187c PK11_DeriveWithFlags()
 34931 ms  0x187c basekey:0x7febd8c95c00
 34931 ms     | 0x187c PK11_DeriveWithTemplate()
 34931 ms  0x187c ret:0x7febd8c0b780
 34931 ms  0x187c PK11_Derive()
 34931 ms  0x187c basekey:0x7febd8c0b780
 34932 ms     | 0x187c PK11_DeriveWithTemplate()
 34932 ms  0x187c ret:0x7febd8a34600
 34932 ms  0x187c SECKEY_DestroyPrivateKey()
 34932 ms  0x187c privk:0x7febe170f020::7febe170f020  b0 9f 1b de                                      ....
 34932 ms  0x187c privk:0x7febe170f020::7febe170f020  e5 e5 e5 e5                                      ....
 34932 ms  0x187c PK11_Encrypt()
 34932 ms  0x187c symkey:0x7febd8c0b580
 34933 ms  0x187c SSL_AuthCertificateComplete()
 34933 ms  0x187c fd:0x7febd9382d60
 34933 ms  0x187c err:0x0
 34934 ms  0x187c PK11_Encrypt()
 34934 ms  0x187c symkey:0x7febd8c0b580
           /* TID 0x1884 */
 37841 ms  0x1884 PR_Close()
 37841 ms  0x1884 fd:0x7febd8c87a00
 37841 ms  0x1884 PR_Close()
 37841 ms  0x1884 fd:0x7febd8c87a00
 37841 ms  0x1884 PR_Close()
 37841 ms  0x1884 fd:0x7febd9bfe730
           /* TID 0x187c */
 38659 ms  0x187c PK11_Encrypt()
 38659 ms  0x187c symkey:0x7febd9304880
           /* TID 0x1884 */
 38661 ms  0x1884 PR_Close()
 38661 ms  0x1884 fd:0x7febd8c87a00
           /* TID 0x187c */
 38991 ms  0x187c PK11_Encrypt()
 38991 ms  0x187c symkey:0x7febd9304880
           /* TID 0x1884 */
 38994 ms  0x1884 PR_Close()
 38994 ms  0x1884 fd:0x7febd8c87cd0
           /* TID 0x187c */
 42434 ms  0x187c PK11_Encrypt()
 42434 ms  0x187c symkey:0x7febd9304880
           /* TID 0x1884 */
 42437 ms  0x1884 PR_Close()
 42437 ms  0x1884 fd:0x7febd8c87a00
           /* TID 0x187c */
 43235 ms  0x187c SECKEY_CreateECPrivateKey()
 43235 ms  0x187c cx:0x7febd7c23fc8
 43238 ms     | 0x187c EC_ValidatePublicKey()
 43238 ms     | 0x187c ret:0x0
 43239 ms  0x187c ret:0x7febe0cbd820::7febe0cbd820  70 54 16 de                                      pT..
 43239 ms  0x187c SECKEY_CreateECPrivateKey()
 43239 ms  0x187c cx:0x7febd7c23fc8
 43241 ms     | 0x187c EC_ValidatePublicKey()
 43246 ms     | 0x187c ret:0x0
 43246 ms  0x187c ret:0x7febe171a020::7febe171a020  90 02 1c de                                      ....
           /* TID 0x1884 */
 43662 ms  0x1884 PR_Close()
 43662 ms  0x1884 fd:0x7febd9bfe370
 43662 ms  0x1884 PR_Close()
 43662 ms  0x1884 fd:0x7febd9bfe370
 43662 ms  0x1884 PR_Close()
 43662 ms  0x1884 fd:0x7febdae71340
           /* TID 0x187c */
 44758 ms  0x187c SECKEY_DestroyPrivateKey()
 44758 ms  0x187c privk:0x7febddb1c020::7febddb1c020  20 5e 2b dd                                       ^+.
 44758 ms  0x187c privk:0x7febddb1c020::7febddb1c020  e5 e5 e5 e5                                      ....
 44758 ms  0x187c SECKEY_DestroyPrivateKey()
 44758 ms  0x187c privk:0x7febddb17020::7febddb17020  40 5c 2b dd                                      @\+.
 44759 ms  0x187c privk:0x7febddb17020::7febddb17020  e5 e5 e5 e5                                      ....
           /* TID 0x1884 */
 44761 ms  0x1884 PR_Close()
 44761 ms  0x1884 fd:0x7febd8c8a040
 49761 ms  0x1884 PR_Close()
 49761 ms  0x1884 fd:0x7febd8c8a040
           /* TID 0x187c */
 51379 ms  0x187c PR_Close()
 51379 ms  0x187c fd:0x7febd8aaf7c0
 51381 ms     | 0x187c SECKEY_DestroyPrivateKey()
 51381 ms     | 0x187c privk:0x7febe0cbd020::7febe0cbd020  10 0f 1c de                                      ....
 51381 ms     | 0x187c privk:0x7febe0cbd020::7febe0cbd020  e5 e5 e5 e5                                      ....
 51381 ms     | 0x187c SECKEY_DestroyPrivateKey()
 51381 ms     | 0x187c privk:0x7febddf7a820::7febddf7a820  20 54 17 de                                       T..
 51381 ms     | 0x187c privk:0x7febddf7a820::7febddf7a820  e5 e5 e5 e5                                      ....
 52783 ms  0x187c PK11_Derive()
 52783 ms  0x187c basekey:0x7febd8a35000
 52783 ms     | 0x187c PK11_DeriveWithTemplate()
 52783 ms  0x187c ret:0x7febd8c95c00
 52783 ms  0x187c PK11_Encrypt()
 52783 ms  0x187c symkey:0x7febd8ac3780
 52785 ms  0x187c SECKEY_DestroyPrivateKey()
 52785 ms  0x187c privk:0x7febe171a020::7febe171a020  90 02 1c de                                      ....
 52786 ms  0x187c privk:0x7febe171a020::7febe171a020  e5 e5 e5 e5                                      ....
 52786 ms  0x187c SECKEY_DestroyPrivateKey()
 52786 ms  0x187c privk:0x7febe0cbd820::7febe0cbd820  70 54 16 de                                      pT..
 52786 ms  0x187c privk:0x7febe0cbd820::7febe0cbd820  e5 e5 e5 e5                                      ....
 52787 ms  0x187c PR_Close()
 52787 ms  0x187c fd:0x7febd93c6f10
 52787 ms     | 0x187c PK11_Encrypt()
 52787 ms     | 0x187c symkey:0x7febd8ac3780
 54992 ms  0x187c SECKEY_CreateECPrivateKey()
 54992 ms  0x187c cx:0x7febdde3e3e8
 54993 ms     | 0x187c EC_ValidatePublicKey()
 54993 ms     | 0x187c ret:0x0
 54993 ms  0x187c ret:0x7febd9707020::7febd9707020  40 5c 2b dd                                      @\+.
 54993 ms  0x187c SECKEY_CreateECPrivateKey()
 54993 ms  0x187c cx:0x7febdde3e3e8
 54995 ms     | 0x187c EC_ValidatePublicKey()
 54999 ms     | 0x187c ret:0x0
 54999 ms  0x187c ret:0x7febddb11820::7febddb11820  20 5e 2b dd                                       ^+.
 55575 ms  0x187c PR_Close()
 55575 ms  0x187c fd:0x7febd93c6f70
 55575 ms     | 0x187c PK11_Encrypt()
 55575 ms     | 0x187c symkey:0x7febd8326280
 56017 ms  SECKEY_ECParamsToKeySize()
 56017 ms  0x187c ret:0x100
 56017 ms  0x187c SECKEY_CreateECPrivateKey()
 56017 ms  0x187c cx:0x7febdde3e3e8
 56019 ms     | 0x187c EC_ValidatePublicKey()
 56024 ms     | 0x187c ret:0x0
 56024 ms  0x187c ret:0x7febddb1b820::7febddb1b820  20 2e ef dd                                       ...
 56025 ms  0x187c PK11_PubDeriveWithKDF()
 56025 ms  0x187c seckey:0x7febddb1b820
 56025 ms     | 0x187c EC_ValidatePublicKey()
 56032 ms     | 0x187c ret:0x0
 56036 ms  0x187c ret:0x7febd80d2780
 56036 ms  0x187c PK11_DeriveWithFlags()
 56036 ms  0x187c basekey:0x7febd80d2780
 56036 ms     | 0x187c PK11_DeriveWithTemplate()
 56037 ms  0x187c ret:0x7febd7b7d700
 56037 ms  0x187c PK11_Derive()
 56037 ms  0x187c basekey:0x7febd7b7d700
 56037 ms     | 0x187c PK11_DeriveWithTemplate()
 56038 ms  0x187c ret:0x7febd8c95c00
 56038 ms  0x187c SECKEY_DestroyPrivateKey()
 56038 ms  0x187c privk:0x7febddb1b820::7febddb1b820  20 2e ef dd                                       ...
 56038 ms  0x187c privk:0x7febddb1b820::7febddb1b820  e5 e5 e5 e5                                      ....
 56038 ms  0x187c PK11_Encrypt()
 56038 ms  0x187c symkey:0x7febd80d2800
 56039 ms  0x187c SSL_AuthCertificateComplete()
 56039 ms  0x187c fd:0x7febe0b4cdf0
 56039 ms  0x187c err:0x0
           /* TID 0x189e */
 58014 ms  0x189e PR_Close()
 58014 ms  0x189e fd:0x7febd93c6fa0
 58019 ms  0x189e PR_Close()
 58019 ms  0x189e fd:0x7febd93c6fd0
 58041 ms  0x189e PR_Close()
 58041 ms  0x189e fd:0x7febd9bfed90
 58049 ms  0x189e PR_Close()
 58049 ms  0x189e fd:0x7febdd963f10
 58513 ms  0x189e PR_Close()
 58513 ms  0x189e fd:0x7febd8c87b80
 58519 ms  0x189e PR_Close()
 58519 ms  0x189e fd:0x7febd8c87b80
           /* TID 0x187c */
 58847 ms  0x187c PR_Connect()
 58847 ms  0x187c fd:0x7febddcdfd90
 59075 ms  0x187c SECKEY_DestroyPrivateKey()
 59075 ms  0x187c privk:0x7febddb11820::7febddb11820  20 5e 2b dd                                       ^+.
 59076 ms  0x187c privk:0x7febddb11820::7febddb11820  e5 e5 e5 e5                                      ....
 59076 ms  0x187c SECKEY_DestroyPrivateKey()
 59076 ms  0x187c privk:0x7febd9707020::7febd9707020  40 5c 2b dd                                      @\+.
 59076 ms  0x187c privk:0x7febd9707020::7febd9707020  e5 e5 e5 e5                                      ....
 60041 ms  0x187c PR_Close()
 60041 ms  0x187c fd:0x7febe0b4cdf0
 60041 ms     | 0x187c PK11_Encrypt()
 60041 ms     | 0x187c symkey:0x7febd80d2800
 60739 ms  0x187c PR_Close()
 60739 ms  0x187c fd:0x7febd8aafc70
 60739 ms     | 0x187c PK11_Encrypt()
 60739 ms     | 0x187c symkey:0x7febd83b7500
 61032 ms  0x187c PR_Close()
 61032 ms  0x187c fd:0x7febde19e520
 61033 ms     | 0x187c PK11_Encrypt()
 61033 ms     | 0x187c symkey:0x7febd83b6300
           /* TID 0x189e */
 64864 ms  0x189e PR_Close()
 64864 ms  0x189e fd:0x7febd8aafbe0
 64868 ms  0x189e PR_Close()
 64868 ms  0x189e fd:0x7febd8aafbe0
           /* TID 0x187c */
 70392 ms  0x187c PK11_Encrypt()
 70392 ms  0x187c symkey:0x7febd8c96280
 71393 ms  0x187c PK11_Encrypt()
 71393 ms  0x187c symkey:0x7febd7be8080
 71393 ms  0x187c PK11_Encrypt()
 71393 ms  0x187c symkey:0x7febd7c25d00
 73394 ms  0x187c PK11_Encrypt()
 73394 ms  0x187c symkey:0x7febd8c95c80
 76396 ms  0x187c PK11_Encrypt()
 76396 ms  0x187c symkey:0x7febd9b16c80
 76397 ms  0x187c PK11_Encrypt()
 76397 ms  0x187c symkey:0x7febd8c0a580
 78399 ms  0x187c PK11_Encrypt()
 78399 ms  0x187c symkey:0x7febd8c0b700
 78404 ms  0x187c PK11_Encrypt()
 78404 ms  0x187c symkey:0x7febdae70700
 81406 ms  0x187c PK11_Encrypt()
 81406 ms  0x187c symkey:0x7febddbb3b00
 81406 ms  0x187c PK11_Encrypt()
 81406 ms  0x187c symkey:0x7febddc6ad00
 81407 ms  0x187c PK11_Encrypt()
 81407 ms  0x187c symkey:0x7febd9bede80
 88412 ms  0x187c PK11_Encrypt()
 88412 ms  0x187c symkey:0x7febdae9cd80
 93326 ms  0x187c PR_Close()
 93326 ms  0x187c fd:0x7febd9382f10
 93326 ms     | 0x187c PK11_Encrypt()
 93326 ms     | 0x187c symkey:0x7febd8c02500
 93413 ms  0x187c PR_Close()
 93413 ms  0x187c fd:0x7febd8c8a070
 93413 ms     | 0x187c PK11_Encrypt()
 93413 ms     | 0x187c symkey:0x7febd9304880
 93417 ms  0x187c SSL_ImportFD()
 93417 ms  0x187c ret:0x7febd8aafcd0
 93417 ms  0x187c SSL_AuthCertificateHook()
 93417 ms  0x187c fd:0x7febd8aafcd0
 93417 ms  0x187c ret:0x0
 93418 ms  0x187c PR_Connect()
 93418 ms  0x187c fd:0x7febd8aafcd0
 93668 ms  0x187c SSL_ImportFD()
 93668 ms  0x187c ret:0x7febd8c87a00
 93668 ms  0x187c SSL_AuthCertificateHook()
 93668 ms  0x187c fd:0x7febd8c87a00
 93669 ms  0x187c ret:0x0
 93669 ms  0x187c PR_Connect()
 93669 ms  0x187c fd:0x7febd8c87a00
 96907 ms  0x187c SECKEY_CreateECPrivateKey()
 96907 ms  0x187c cx:0x7febd7c247e8
 96909 ms     | 0x187c EC_ValidatePublicKey()
 96909 ms     | 0x187c ret:0x0
 96909 ms  0x187c ret:0x7febc6fa8020::7febc6fa8020  00 96 12 d8                                      ....
 96909 ms  0x187c SECKEY_CreateECPrivateKey()
 96909 ms  0x187c cx:0x7febd7c247e8
 96911 ms     | 0x187c EC_ValidatePublicKey()
 96919 ms     | 0x187c ret:0x0
 96919 ms  0x187c ret:0x7febc6faa820::7febc6faa820  a0 d1 34 d9                                      ..4.
 98377 ms  SECKEY_ECParamsToKeySize()
 98377 ms  0x187c ret:0x100
 98377 ms  0x187c SECKEY_CreateECPrivateKey()
 98377 ms  0x187c cx:0x7febd7c247e8
 98380 ms     | 0x187c EC_ValidatePublicKey()
 98386 ms     | 0x187c ret:0x0
 98386 ms  0x187c ret:0x7febc6fb0020::7febc6fb0020  e0 87 36 d9                                      ..6.
 98386 ms  0x187c PK11_PubDeriveWithKDF()
 98386 ms  0x187c seckey:0x7febc6fb0020
 98386 ms     | 0x187c EC_ValidatePublicKey()
 98393 ms     | 0x187c ret:0x0
 98398 ms  0x187c ret:0x7febd8c0a900
 98399 ms  0x187c PK11_DeriveWithFlags()
 98399 ms  0x187c basekey:0x7febd8c0a900
 98399 ms     | 0x187c PK11_DeriveWithTemplate()
 98399 ms  0x187c ret:0x7febd8c03e80
 98399 ms  0x187c PK11_Derive()
 98399 ms  0x187c basekey:0x7febd8c03e80
 98399 ms     | 0x187c PK11_DeriveWithTemplate()
 98399 ms  0x187c ret:0x7febd8c02080
 98399 ms  0x187c SECKEY_DestroyPrivateKey()
 98399 ms  0x187c privk:0x7febc6fb0020::7febc6fb0020  e0 87 36 d9                                      ..6.
 98399 ms  0x187c privk:0x7febc6fb0020::7febc6fb0020  e5 e5 e5 e5                                      ....
 98400 ms  0x187c PK11_Encrypt()
 98400 ms  0x187c symkey:0x7febd9304680
 98400 ms  0x187c SSL_AuthCertificateComplete()
 98400 ms  0x187c fd:0x7febd8c87a00
 98400 ms  0x187c err:0x0
 98402 ms  0x187c PK11_Encrypt()
 98402 ms  0x187c symkey:0x7febd9304680
102421 ms  0x187c PR_Close()
102421 ms  0x187c fd:0x7febd7b9b190
102421 ms  0x187c SSL_ImportFD()
102421 ms  0x187c ret:0x7febd7b9b850
102421 ms  0x187c SSL_AuthCertificateHook()
102421 ms  0x187c fd:0x7febd7b9b850
102421 ms  0x187c ret:0x0
102421 ms  0x187c PR_Connect()
102421 ms  0x187c fd:0x7febd7b9b850
102672 ms  0x187c SSL_ImportFD()
102673 ms  0x187c ret:0x7febd8caad90
102673 ms  0x187c SSL_AuthCertificateHook()
102673 ms  0x187c fd:0x7febd8caad90
102673 ms  0x187c ret:0x0
102673 ms  0x187c PR_Connect()
102673 ms  0x187c fd:0x7febd8caad90
102893 ms  0x187c SECKEY_CreateECPrivateKey()
102893 ms  0x187c cx:0x7febd7c24648
102895 ms     | 0x187c EC_ValidatePublicKey()
102895 ms     | 0x187c ret:0x0
102895 ms  0x187c ret:0x7febc6faf020::7febc6faf020  50 8b 36 d9                                      P.6.
102895 ms  0x187c SECKEY_CreateECPrivateKey()
102895 ms  0x187c cx:0x7febd7c24648
102897 ms     | 0x187c EC_ValidatePublicKey()
102901 ms     | 0x187c ret:0x0
102901 ms  0x187c ret:0x7febc6fb1820::7febc6fb1820  80 8d 36 d9                                      ..6.
103858 ms  0x187c SECKEY_DestroyPrivateKey()
103858 ms  0x187c privk:0x7febc6faa820::7febc6faa820  a0 d1 34 d9                                      ..4.
103858 ms  0x187c privk:0x7febc6faa820::7febc6faa820  e5 e5 e5 e5                                      ....
103858 ms  0x187c SECKEY_DestroyPrivateKey()
103858 ms  0x187c privk:0x7febc6fa8020::7febc6fa8020  00 96 12 d8                                      ....
103859 ms  0x187c privk:0x7febc6fa8020::7febc6fa8020  e5 e5 e5 e5                                      ....
103879 ms  SECKEY_ECParamsToKeySize()
103879 ms  0x187c ret:0x100
103879 ms  0x187c SECKEY_CreateECPrivateKey()
103879 ms  0x187c cx:0x7febd7c24648
103882 ms     | 0x187c EC_ValidatePublicKey()
103887 ms     | 0x187c ret:0x0
103887 ms  0x187c ret:0x7febc6fa9820::7febc6fa9820  40 62 c0 d8                                      @b..
103887 ms  0x187c PK11_PubDeriveWithKDF()
103887 ms  0x187c seckey:0x7febc6fa9820
103887 ms     | 0x187c EC_ValidatePublicKey()
103892 ms     | 0x187c ret:0x0
103898 ms  0x187c ret:0x7febd8c0a900
103898 ms  0x187c PK11_DeriveWithFlags()
103898 ms  0x187c basekey:0x7febd8c0a900
103898 ms     | 0x187c PK11_DeriveWithTemplate()
103898 ms  0x187c ret:0x7febd8a34100
103898 ms  0x187c PK11_Derive()
103898 ms  0x187c basekey:0x7febd8a34100
103898 ms     | 0x187c PK11_DeriveWithTemplate()
103898 ms  0x187c ret:0x7febd83b6080
103898 ms  0x187c SECKEY_DestroyPrivateKey()
103898 ms  0x187c privk:0x7febc6fa9820::7febc6fa9820  40 62 c0 d8                                      @b..
103898 ms  0x187c privk:0x7febc6fa9820::7febc6fa9820  e5 e5 e5 e5                                      ....
103899 ms  0x187c PK11_Encrypt()
103899 ms  0x187c symkey:0x7febd8c02180
103899 ms  0x187c SSL_AuthCertificateComplete()
103899 ms  0x187c fd:0x7febd8caad90
103899 ms  0x187c err:0x0
103904 ms  0x187c PK11_Encrypt()
103904 ms  0x187c symkey:0x7febd8c02180
           /* TID 0x1884 */
104048 ms  0x1884 PR_Close()
104048 ms  0x1884 fd:0x7febd93c6fa0
104049 ms  0x1884 PR_Close()
104049 ms  0x1884 fd:0x7febd91d38b0
           /* TID 0x187c */
104189 ms  0x187c SECKEY_DestroyPrivateKey()
104189 ms  0x187c privk:0x7febc6fb1820::7febc6fb1820  80 8d 36 d9                                      ..6.
104189 ms  0x187c privk:0x7febc6fb1820::7febc6fb1820  e5 e5 e5 e5                                      ....
104190 ms  0x187c SECKEY_DestroyPrivateKey()
104190 ms  0x187c privk:0x7febc6faf020::7febc6faf020  50 8b 36 d9                                      P.6.
104190 ms  0x187c privk:0x7febc6faf020::7febc6faf020  e5 e5 e5 e5                                      ....
105674 ms  0x187c SECKEY_CreateECPrivateKey()
105674 ms  0x187c cx:0x7febd7c237a8
105677 ms     | 0x187c EC_ValidatePublicKey()
105677 ms     | 0x187c ret:0x0
105677 ms  0x187c ret:0x7febc6faa020::7febc6faa020  00 81 36 d9                                      ..6.
105678 ms  0x187c SECKEY_CreateECPrivateKey()
105678 ms  0x187c cx:0x7febd7c237a8
105679 ms     | 0x187c EC_ValidatePublicKey()
105681 ms     | 0x187c ret:0x0
105681 ms  0x187c ret:0x7febc6faf020::7febc6faf020  40 8c 36 d9                                      @.6.
107509 ms  SECKEY_ECParamsToKeySize()
107510 ms  0x187c ret:0x100
107510 ms  0x187c SECKEY_CreateECPrivateKey()
107510 ms  0x187c cx:0x7febd7c237a8
107511 ms     | 0x187c EC_ValidatePublicKey()
107512 ms     | 0x187c ret:0x0
107512 ms  0x187c ret:0x7febd7b5d020::7febd7b5d020  40 b7 a5 dc                                      @...
107512 ms  0x187c PK11_PubDeriveWithKDF()
107512 ms  0x187c seckey:0x7febd7b5d020
107512 ms     | 0x187c EC_ValidatePublicKey()
107514 ms     | 0x187c ret:0x0
107515 ms  0x187c ret:0x7febd8c0a900
107515 ms  0x187c PK11_DeriveWithFlags()
107515 ms  0x187c basekey:0x7febd8c0a900
107515 ms     | 0x187c PK11_DeriveWithTemplate()
107515 ms  0x187c ret:0x7febd8327f80
107515 ms  0x187c PK11_Derive()
107515 ms  0x187c basekey:0x7febd8327f80
107515 ms     | 0x187c PK11_DeriveWithTemplate()
107515 ms  0x187c ret:0x7febd83b7380
107515 ms  0x187c SECKEY_DestroyPrivateKey()
107515 ms  0x187c privk:0x7febd7b5d020::7febd7b5d020  40 b7 a5 dc                                      @...
107515 ms  0x187c privk:0x7febd7b5d020::7febd7b5d020  e5 e5 e5 e5                                      ....
107515 ms  0x187c PK11_Encrypt()
107515 ms  0x187c symkey:0x7febd83b6180
107516 ms  0x187c SSL_AuthCertificateComplete()
107516 ms  0x187c fd:0x7febd7b9b850
107516 ms  0x187c err:0x0
108665 ms  0x187c PR_Close()
108665 ms  0x187c fd:0x7febd7b115b0
108968 ms  0x187c SECKEY_DestroyPrivateKey()
108968 ms  0x187c privk:0x7febc6faf020::7febc6faf020  40 8c 36 d9                                      @.6.
108968 ms  0x187c privk:0x7febc6faf020::7febc6faf020  e5 e5 e5 e5                                      ....
108968 ms  0x187c SECKEY_DestroyPrivateKey()
108968 ms  0x187c privk:0x7febc6faa020::7febc6faa020  00 81 36 d9                                      ..6.
108968 ms  0x187c privk:0x7febc6faa020::7febc6faa020  e5 e5 e5 e5                                      ....
           /* TID 0x1884 */
109049 ms  0x1884 PR_Close()
109049 ms  0x1884 fd:0x7febd7b0a2b0
           /* TID 0x187c */
111518 ms  0x187c PR_Close()
111518 ms  0x187c fd:0x7febd7b9b850
111518 ms     | 0x187c PK11_Encrypt()
111518 ms     | 0x187c symkey:0x7febd83b6180
114519 ms  0x187c PR_Close()
114519 ms  0x187c fd:0x7febd8ab00a0
114519 ms     | 0x187c PK11_Encrypt()
114519 ms     | 0x187c symkey:0x7febd9737900
115519 ms  0x187c PR_Close()
115519 ms  0x187c fd:0x7febdd9e9790
116521 ms  0x187c PR_Close()
116521 ms  0x187c fd:0x7febd7b0a790
116521 ms     | 0x187c PK11_Encrypt()
116521 ms     | 0x187c symkey:0x7febd7be9100
           /* TID 0x1935 */
118218 ms  0x1935 PR_Close()
118218 ms  0x1935 fd:0x7febd7b0a670
           /* TID 0x187c */
121481 ms  0x187c PR_Close()
121481 ms  0x187c fd:0x7febd8c87a00
121481 ms     | 0x187c PK11_Encrypt()
121481 ms     | 0x187c symkey:0x7febd9304680
122527 ms  0x187c PR_Close()
122527 ms  0x187c fd:0x7febd7b11580
125074 ms  0x187c SECKEY_CreateECPrivateKey()
125074 ms  0x187c cx:0x7febd7c24168
125076 ms     | 0x187c EC_ValidatePublicKey()
125076 ms     | 0x187c ret:0x0
125076 ms  0x187c ret:0x7febc6faa820::7febc6faa820  c0 34 ab d8                                      .4..
125076 ms  0x187c SECKEY_CreateECPrivateKey()
125076 ms  0x187c cx:0x7febd7c24168
125079 ms     | 0x187c EC_ValidatePublicKey()
125084 ms     | 0x187c ret:0x0
125084 ms  0x187c ret:0x7febc6fae820::7febc6fae820  00 81 36 d9                                      ..6.
125086 ms  0x187c PR_Close()
125086 ms  0x187c fd:0x7febd8caad90
125086 ms     | 0x187c PK11_Encrypt()
125086 ms     | 0x187c symkey:0x7febd8c02180
125194 ms  0x187c PR_Close()
125194 ms  0x187c fd:0x7febd9382d60
125195 ms     | 0x187c SECKEY_DestroyPrivateKey()
125195 ms     | 0x187c privk:0x7febd9715820::7febd9715820  f0 9b 1b de                                      ....
125196 ms     | 0x187c privk:0x7febd9715820::7febd9715820  e5 e5 e5 e5                                      ....
125196 ms     | 0x187c SECKEY_DestroyPrivateKey()
125196 ms     | 0x187c privk:0x7febd970a820::7febd970a820  70 29 ef dd                                      p)..
125196 ms     | 0x187c privk:0x7febd970a820::7febd970a820  e5 e5 e5 e5                                      ....
125319 ms  SECKEY_ECParamsToKeySize()
125321 ms  0x187c ret:0x100
125321 ms  0x187c SECKEY_CreateECPrivateKey()
125321 ms  0x187c cx:0x7febd7c24168
125323 ms     | 0x187c EC_ValidatePublicKey()
125328 ms     | 0x187c ret:0x0
125328 ms  0x187c ret:0x7febc6fb1020::7febc6fb1020  c0 19 e5 da                                      ....
125329 ms  0x187c PK11_PubDeriveWithKDF()
125329 ms  0x187c seckey:0x7febc6fb1020
125329 ms     | 0x187c EC_ValidatePublicKey()
125334 ms     | 0x187c ret:0x0
125339 ms  0x187c ret:0x7febd8a34600
125339 ms  0x187c PK11_DeriveWithFlags()
125339 ms  0x187c basekey:0x7febd8a34600
125339 ms     | 0x187c PK11_DeriveWithTemplate()
125339 ms  0x187c ret:0x7febd8c0b780
125339 ms  0x187c PK11_Derive()
125339 ms  0x187c basekey:0x7febd8c0b780
125340 ms     | 0x187c PK11_DeriveWithTemplate()
125340 ms  0x187c ret:0x7febd83b6080
125340 ms  0x187c SECKEY_DestroyPrivateKey()
125340 ms  0x187c privk:0x7febc6fb1020::7febc6fb1020  c0 19 e5 da                                      ....
125340 ms  0x187c privk:0x7febc6fb1020::7febc6fb1020  e5 e5 e5 e5                                      ....
125340 ms  0x187c PK11_Encrypt()
125340 ms  0x187c symkey:0x7febd8fc7780
125341 ms  0x187c SSL_AuthCertificateComplete()
125341 ms  0x187c fd:0x7febd8aafcd0
125341 ms  0x187c err:0x0
125341 ms  0x187c PK11_Encrypt()
125341 ms  0x187c symkey:0x7febd8fc7780
129433 ms  0x187c PK11_Encrypt()
129433 ms  0x187c symkey:0x7febd8c96280
130434 ms  0x187c PK11_Encrypt()
130434 ms  0x187c symkey:0x7febd7be8080
130434 ms  0x187c PK11_Encrypt()
130434 ms  0x187c symkey:0x7febd7c25d00
132437 ms  0x187c PK11_Encrypt()
132437 ms  0x187c symkey:0x7febd8c95c80
134440 ms  0x187c PK11_Encrypt()
134440 ms  0x187c symkey:0x7febd9b16c80
134441 ms  0x187c PK11_Encrypt()
134441 ms  0x187c symkey:0x7febd8c0a580
135343 ms  0x187c PR_Close()
135343 ms  0x187c fd:0x7febd8ae6e80
136442 ms  0x187c PK11_Encrypt()
136442 ms  0x187c symkey:0x7febd8c0b700
136443 ms  0x187c PK11_Encrypt()
136443 ms  0x187c symkey:0x7febdae70700
138344 ms  0x187c PR_Close()
138344 ms  0x187c fd:0x7febe17a5cd0
138344 ms  0x187c PR_Close()
138344 ms  0x187c fd:0x7febe17d12b0
138345 ms  0x187c PR_Close()
138345 ms  0x187c fd:0x7febe17d1280
138345 ms  0x187c PR_Close()
138345 ms  0x187c fd:0x7febde11ee20
138345 ms  0x187c PR_Close()
138345 ms  0x187c fd:0x7febde149760
139445 ms  0x187c PK11_Encrypt()
139445 ms  0x187c symkey:0x7febddbb3b00
139445 ms  0x187c PK11_Encrypt()
139445 ms  0x187c symkey:0x7febddc6ad00
139447 ms  0x187c PK11_Encrypt()
139447 ms  0x187c symkey:0x7febd9bede80
147449 ms  0x187c PK11_Encrypt()
147449 ms  0x187c symkey:0x7febdae9cd80
           /* TID 0x193a */
148538 ms  0x193a PR_Close()
148538 ms  0x193a fd:0x7febd7b9b190
148541 ms  0x193a PR_Close()
148541 ms  0x193a fd:0x7febd7b9b190
           /* TID 0x187c */
174345 ms  0x187c PR_Close()
174345 ms  0x187c fd:0x7febddcdfd90
           /* TID 0x1945 */
178942 ms  0x1945 PR_Close()
178942 ms  0x1945 fd:0x7febe0b69280
178946 ms  0x1945 PR_Close()
178946 ms  0x1945 fd:0x7febe0b69280
           /* TID 0x18dd */
178948 ms  0x18dd PR_Close()
178948 ms  0x18dd fd:0x7febdaeadbe0
           /* TID 0x1945 */
179419 ms  0x1945 PR_Close()
179419 ms  0x1945 fd:0x7febd9bfeaf0
179422 ms  0x1945 PR_Close()
179422 ms  0x1945 fd:0x7febd9bfeaf0
           /* TID 0x187c */
183347 ms  0x187c PK11_Encrypt()
183347 ms  0x187c symkey:0x7febd7be8080
183347 ms  0x187c PK11_Encrypt()
183347 ms  0x187c symkey:0x7febd7c25d00
183348 ms  0x187c PK11_Encrypt()
183348 ms  0x187c symkey:0x7febd8c96280
183348 ms  0x187c PR_Close()
183348 ms  0x187c fd:0x7febdca47a00
183348 ms     | 0x187c PK11_Encrypt()
183348 ms     | 0x187c symkey:0x7febd7c25d00
183350 ms  0x187c PR_Close()
183350 ms  0x187c fd:0x7febdd9638e0
183350 ms     | 0x187c PK11_Encrypt()
183350 ms     | 0x187c symkey:0x7febd7be8080
183350 ms  0x187c PR_Close()
183350 ms  0x187c fd:0x7febd8caa940
183351 ms     | 0x187c PK11_Encrypt()
183351 ms     | 0x187c symkey:0x7febd8c96280
185347 ms  0x187c PK11_Encrypt()
185347 ms  0x187c symkey:0x7febd8c95c80
185348 ms  0x187c PR_Close()
185348 ms  0x187c fd:0x7febddce94c0
185348 ms     | 0x187c PK11_Encrypt()
185348 ms     | 0x187c symkey:0x7febd8c95c80
188348 ms  0x187c PK11_Encrypt()
188348 ms  0x187c symkey:0x7febd9b16c80
188349 ms  0x187c PK11_Encrypt()
188349 ms  0x187c symkey:0x7febd8c0a580
188350 ms  0x187c PR_Close()
188350 ms  0x187c fd:0x7febdd9e9220
188351 ms     | 0x187c PK11_Encrypt()
188351 ms     | 0x187c symkey:0x7febd8c0a580
188351 ms  0x187c PR_Close()
188351 ms  0x187c fd:0x7febde19e400
188351 ms     | 0x187c PK11_Encrypt()
188351 ms     | 0x187c symkey:0x7febd9b16c80
190357 ms  0x187c PK11_Encrypt()
190357 ms  0x187c symkey:0x7febd8c0b700
190357 ms  0x187c PK11_Encrypt()
190357 ms  0x187c symkey:0x7febdae70700
190357 ms  0x187c PR_Close()
190357 ms  0x187c fd:0x7febde2e5850
190357 ms     | 0x187c PK11_Encrypt()
190357 ms     | 0x187c symkey:0x7febdae70700
190357 ms  0x187c PR_Close()
190357 ms  0x187c fd:0x7febdde33190
190357 ms     | 0x187c PK11_Encrypt()
190357 ms     | 0x187c symkey:0x7febd8c0b700
193358 ms  0x187c PK11_Encrypt()
193358 ms  0x187c symkey:0x7febddbb3b00
193358 ms  0x187c PK11_Encrypt()
193358 ms  0x187c symkey:0x7febddc6ad00
193359 ms  0x187c PK11_Encrypt()
193359 ms  0x187c symkey:0x7febd9bede80
193360 ms  0x187c PR_Close()
193360 ms  0x187c fd:0x7febe2af0eb0
193360 ms     | 0x187c PK11_Encrypt()
193360 ms     | 0x187c symkey:0x7febddc6ad00
193361 ms  0x187c PR_Close()
193361 ms  0x187c fd:0x7febe0b65730
193361 ms     | 0x187c PK11_Encrypt()
193361 ms     | 0x187c symkey:0x7febddbb3b00
193362 ms  0x187c PR_Close()
193362 ms  0x187c fd:0x7febde341550
193362 ms     | 0x187c PK11_Encrypt()
193362 ms     | 0x187c symkey:0x7febd9bede80
200359 ms  0x187c PK11_Encrypt()
200359 ms  0x187c symkey:0x7febdae9cd80
200360 ms  0x187c PR_Close()
200360 ms  0x187c fd:0x7febde2e5280
200360 ms     | 0x187c PK11_Encrypt()
200360 ms     | 0x187c symkey:0x7febdae9cd80
           /* TID 0x1959 */
268542 ms  0x1959 PR_Close()
268542 ms  0x1959 fd:0x7febdae3a040
268546 ms  0x1959 PR_Close()
268546 ms  0x1959 fd:0x7febdae3a040
           /* TID 0x18d4 */
300056 ms  0x18d4 PR_Close()
300056 ms  0x18d4 fd:0x7febd9bfe8e0
           /* TID 0x187c */
304373 ms  0x187c PR_Close()
304373 ms  0x187c fd:0x7febd91d3490
           /* TID 0x1871 */
304393 ms  0x1871 EC_ValidatePublicKey()
304396 ms  0x1871 ret:0x0
304396 ms  0x1871 EC_ValidatePublicKey()
304399 ms  0x1871 ret:0x0
304399 ms  0x1871 EC_ValidatePublicKey()
304402 ms  0x1871 ret:0x0
304402 ms  0x1871 EC_ValidatePublicKey()
304404 ms  0x1871 ret:0x0
304404 ms  0x1871 EC_ValidatePublicKey()
304406 ms  0x1871 ret:0x0
304406 ms  0x1871 EC_ValidatePublicKey()
304410 ms  0x1871 ret:0x0
304410 ms  0x1871 EC_ValidatePublicKey()
304412 ms  0x1871 ret:0x0
304412 ms  0x1871 EC_ValidatePublicKey()
304414 ms  0x1871 ret:0x0
304414 ms  0x1871 EC_ValidatePublicKey()
304415 ms  0x1871 ret:0x0
304415 ms  0x1871 EC_ValidatePublicKey()
304417 ms  0x1871 ret:0x0
           /* TID 0x18d4 */
304418 ms  0x18d4 PR_Close()
304418 ms  0x18d4 fd:0x7febd7b11550
304418 ms  0x18d4 PR_Close()
304418 ms  0x18d4 fd:0x7febd7b11550
           /* TID 0x1871 */
304422 ms  0x1871 PR_Close()
304422 ms  0x1871 fd:0x7febd93c61c0
304422 ms  0x1871 PR_Close()
304422 ms  0x1871 fd:0x7febd7b9bf70
304423 ms  0x1871 PR_Close()
304423 ms  0x1871 fd:0x7febd8aaf3a0
304423 ms  0x1871 PR_Close()
304423 ms  0x1871 fd:0x7febd7b9bf70
304423 ms  0x1871 PR_Close()
304423 ms  0x1871 fd:0x7febd8aaf3a0
304423 ms  0x1871 PR_Close()
304423 ms  0x1871 fd:0x7febd7b9bf70
           /* TID 0x195b */
304434 ms  0x195b PR_Close()
304434 ms  0x195b fd:0x7febd8ae6d60
           /* TID 0x1871 */
304445 ms  0x1871 PR_Close()
304445 ms  0x1871 fd:0x7febd8aaf3a0
304445 ms  0x1871 PR_Close()
304445 ms  0x1871 fd:0x7febd93c6b20
304446 ms  0x1871 PR_Close()
304446 ms  0x1871 fd:0x7febd8aaf3a0
304446 ms  0x1871 PR_Close()
304446 ms  0x1871 fd:0x7febd93c6b20
304447 ms  0x1871 PR_Close()
304447 ms  0x1871 fd:0x7febe2ec89a0
304447 ms  0x1871 PR_Close()
304447 ms  0x1871 fd:0x7febe2ec88b0
304447 ms  0x1871 PR_Close()
304447 ms  0x1871 fd:0x7febe2ec8a60
304449 ms  0x1871 PR_Close()
304449 ms  0x1871 fd:0x7febd8ae6370
304450 ms  0x1871 PR_Close()
304450 ms  0x1871 fd:0x7febd8ae6370
304452 ms  0x1871 PR_Close()
304452 ms  0x1871 fd:0x7febd8aaf3a0
304452 ms  0x1871 PR_Close()
304452 ms  0x1871 fd:0x7febd93c6b20
304453 ms  0x1871 PR_Close()
304453 ms  0x1871 fd:0x7febd8aaf3a0
304453 ms  0x1871 PR_Close()
304453 ms  0x1871 fd:0x7febd93c6b20
304455 ms  0x1871 PR_Close()
304455 ms  0x1871 fd:0x7febd93c6b50
304457 ms  0x1871 PR_Close()
304457 ms  0x1871 fd:0x7febd93c6b50
304459 ms  0x1871 PR_Close()
304459 ms  0x1871 fd:0x7febd8aaf3a0
304459 ms  0x1871 PR_Close()
304459 ms  0x1871 fd:0x7febd93c6be0
304459 ms  0x1871 PR_Close()
304459 ms  0x1871 fd:0x7febd8aaf3a0
304459 ms  0x1871 PR_Close()
304459 ms  0x1871 fd:0x7febd93c6be0
304462 ms  0x1871 PR_Close()
304462 ms  0x1871 fd:0x7febd93c6c10
304463 ms  0x1871 PR_Close()
304463 ms  0x1871 fd:0x7febd93c6c10
304469 ms  0x1871 PR_Close()
304469 ms  0x1871 fd:0x7febdae71520
304470 ms  0x1871 PR_Close()
304470 ms  0x1871 fd:0x7febdae71520
304472 ms  0x1871 PR_Close()
304472 ms  0x1871 fd:0x7febdae71550
304476 ms  0x1871 PR_Close()
304476 ms  0x1871 fd:0x7febd8aaf3a0
304476 ms  0x1871 PR_Close()
304476 ms  0x1871 fd:0x7febd7b9bc10
           /* TID 0x187c */
304479 ms  0x187c PK11_Encrypt()
304479 ms  0x187c symkey:0x7febdae6fb80
           /* TID 0x195b */
304483 ms  0x195b PR_Close()
304483 ms  0x195b fd:0x7febd7b9bc40
304508 ms  0x195b PR_Close()
304508 ms  0x195b fd:0x7febd7b0a8b0
           /* TID 0x1876 */
304521 ms  0x1876 PR_Close()
304521 ms  0x1876 fd:0x7febe17f8df0
           /* TID 0x187c */
304522 ms  0x187c PR_Close()
304522 ms  0x187c fd:0x7febd8aafcd0
304522 ms     | 0x187c SECKEY_DestroyPrivateKey()
304522 ms     | 0x187c privk:0x7febc6fae820::7febc6fae820  00 81 36 d9                                      ..6.
304522 ms     | 0x187c privk:0x7febc6fae820::7febc6fae820  e5 e5 e5 e5                                      ....
304522 ms     | 0x187c SECKEY_DestroyPrivateKey()
304522 ms     | 0x187c privk:0x7febc6faa820::7febc6faa820  c0 34 ab d8                                      .4..
304522 ms     | 0x187c privk:0x7febc6faa820::7febc6faa820  e5 e5 e5 e5                                      ....
           /* TID 0x195b */
304527 ms  0x195b PR_Close()
304527 ms  0x195b fd:0x7febd7b0a2b0
           /* TID 0x1871 */
304547 ms  0x1871 PR_Close()
304547 ms  0x1871 fd:0x7febd8aaf3a0
304547 ms  0x1871 PR_Close()
304547 ms  0x1871 fd:0x7febd7b0a2b0
           /* TID 0x187c */
304548 ms  0x187c PR_Close()
304548 ms  0x187c fd:0x7febde29fe20
304548 ms     | 0x187c PK11_Encrypt()
304548 ms     | 0x187c symkey:0x7febdae6fb80
304548 ms  0x187c PR_Close()
304548 ms  0x187c fd:0x7febe0c05610
           /* TID 0x18d4 */
304549 ms  0x18d4 PR_Close()
304549 ms  0x18d4 fd:0x7febd8ae6f70
304549 ms  0x18d4 PR_Close()
304549 ms  0x18d4 fd:0x7febd7b0a2b0
304549 ms  0x18d4 PR_Close()
304549 ms  0x18d4 fd:0x7febd7b0a2b0
304549 ms  0x18d4 PR_Close()
304549 ms  0x18d4 fd:0x7febd7b0a2b0
           /* TID 0x195b */
304549 ms  0x195b PR_Close()
304549 ms  0x195b fd:0x7febd8ae6c70
           /* TID 0x1884 */
304552 ms  0x1884 PR_Close()
304552 ms  0x1884 fd:0x7febd8c8a400
304552 ms  0x1884 PR_Close()
304552 ms  0x1884 fd:0x7febd8c8a400
           /* TID 0x1876 */
304562 ms  0x1876 PR_Close()
304562 ms  0x1876 fd:0x7febe1ef3dc0
           /* TID 0x1871 */
304602 ms  0x1871 PR_Close()
304602 ms  0x1871 fd:0x7febd8aaf3a0
304602 ms  0x1871 PR_Close()
304602 ms  0x1871 fd:0x7febd8c8ab50
           /* TID 0x195b */
304605 ms  0x195b PR_Close()
304605 ms  0x195b fd:0x7febd8c8aac0
           /* TID 0x1876 */
304607 ms  0x1876 PR_Close()
304607 ms  0x1876 fd:0x7febdde33820
           /* TID 0x195b */
304608 ms  0x195b PR_Close()
304608 ms  0x195b fd:0x7febd8c874f0
304632 ms  0x195b PR_Close()
304632 ms  0x195b fd:0x7febd7b9b340
304634 ms  0x195b PR_Close()
304634 ms  0x195b fd:0x7febd7b9b340
304642 ms  0x195b PR_Close()
304642 ms  0x195b fd:0x7febd7b9b5b0
           /* TID 0x1871 */
304672 ms  0x1871 PR_Close()
304672 ms  0x1871 fd:0x7febd7b0a670
304677 ms  0x1871 PR_Close()
304677 ms  0x1871 fd:0x7fec002da130
304677 ms  0x1871 PR_Close()
304677 ms  0x1871 fd:0x7fec002da190
Process terminated
