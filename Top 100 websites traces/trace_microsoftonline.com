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
           /* TID 0x78ce */
    10 ms  0x78ce SECKEY_DestroyPrivateKey()
    10 ms  0x78ce privk:0x7f2ef2dc9020::7f2ef2dc9020  40 6c fc f2                                      @l..
    10 ms  0x78ce privk:0x7f2ef2dc9020::7f2ef2dc9020  e5 e5 e5 e5                                      ....
    11 ms  0x78ce SECKEY_DestroyPrivateKey()
    11 ms  0x78ce privk:0x7f2ef2dc7020::7f2ef2dc7020  60 6a fc f2                                      `j..
    11 ms  0x78ce privk:0x7f2ef2dc7020::7f2ef2dc7020  e5 e5 e5 e5                                      ....
           /* TID 0x78d6 */
   204 ms  0x78d6 PR_Close()
   204 ms  0x78d6 fd:0x7f2ef2b61070
           /* TID 0x78ce */
   270 ms  0x78ce SSL_ImportFD()
   270 ms  0x78ce ret:0x7f2ef2bd3a00
   270 ms  0x78ce SSL_AuthCertificateHook()
   270 ms  0x78ce fd:0x7f2ef2bd3a00
   270 ms  0x78ce ret:0x0
   271 ms  0x78ce PR_Connect()
   271 ms  0x78ce fd:0x7f2ef2bd3a00
   296 ms  0x78ce SECKEY_CreateECPrivateKey()
   296 ms  0x78ce cx:0x7f2ef2b55cc8
   298 ms     | 0x78ce EC_ValidatePublicKey()
   298 ms     | 0x78ce ret:0x0
   298 ms  0x78ce ret:0x7f2ef2b2c820::7f2ef2b2c820  d0 cd b5 f2                                      ....
   298 ms  0x78ce SECKEY_CreateECPrivateKey()
   298 ms  0x78ce cx:0x7f2ef2b55cc8
   299 ms     | 0x78ce EC_ValidatePublicKey()
   303 ms     | 0x78ce ret:0x0
   303 ms  0x78ce ret:0x7f2ef2b2e820::7f2ef2b2e820  b0 cf b5 f2                                      ....
           /* TID 0x7936 */
   355 ms  0x7936 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   355 ms  0x7936 ret:0x0
           /* TID 0x78ce */
   355 ms  SECKEY_ECParamsToKeySize()
   355 ms  0x78ce ret:0x100
   355 ms  0x78ce SECKEY_CreateECPrivateKey()
   355 ms  0x78ce cx:0x7f2ef2b55cc8
   356 ms     | 0x78ce EC_ValidatePublicKey()
   357 ms     | 0x78ce ret:0x0
   357 ms  0x78ce ret:0x7f2ef2dc2820::7f2ef2dc2820  e0 12 93 f2                                      ....
   358 ms  0x78ce PK11_PubDeriveWithKDF()
   358 ms  0x78ce seckey:0x7f2ef2dc2820
   358 ms     | 0x78ce EC_ValidatePublicKey()
   359 ms     | 0x78ce ret:0x0
   361 ms  0x78ce ret:0x7f2ef3d49480
   361 ms  0x78ce PK11_DeriveWithFlags()
   361 ms  0x78ce basekey:0x7f2ef3d49480
   361 ms     | 0x78ce PK11_DeriveWithTemplate()
   361 ms  0x78ce ret:0x7f2ef2bcc680
   361 ms  0x78ce PK11_Derive()
   361 ms  0x78ce basekey:0x7f2ef2bcc680
   361 ms     | 0x78ce PK11_DeriveWithTemplate()
   361 ms  0x78ce ret:0x7f2ef2bcc700
   361 ms  0x78ce SECKEY_DestroyPrivateKey()
   361 ms  0x78ce privk:0x7f2ef2dc2820::7f2ef2dc2820  e0 12 93 f2                                      ....
   361 ms  0x78ce privk:0x7f2ef2dc2820::7f2ef2dc2820  e5 e5 e5 e5                                      ....
   361 ms  0x78ce PK11_Encrypt()
   361 ms  0x78ce symkey:0x7f2ef2bcc880
   362 ms  0x78ce SSL_AuthCertificateComplete()
   362 ms  0x78ce fd:0x7f2ef2bd3a00
   362 ms  0x78ce err:0x0
   362 ms  0x78ce PK11_Encrypt()
   362 ms  0x78ce symkey:0x7f2ef2bcc880
   413 ms  0x78ce SECKEY_DestroyPrivateKey()
   413 ms  0x78ce privk:0x7f2ef2b2e820::7f2ef2b2e820  b0 cf b5 f2                                      ....
   413 ms  0x78ce privk:0x7f2ef2b2e820::7f2ef2b2e820  e5 e5 e5 e5                                      ....
   413 ms  0x78ce SECKEY_DestroyPrivateKey()
   413 ms  0x78ce privk:0x7f2ef2b2c820::7f2ef2b2c820  d0 cd b5 f2                                      ....
   413 ms  0x78ce privk:0x7f2ef2b2c820::7f2ef2b2c820  e5 e5 e5 e5                                      ....
   414 ms  0x78ce PK11_Encrypt()
   414 ms  0x78ce symkey:0x7f2ef2bcc880
   444 ms  0x78ce PK11_Encrypt()
   444 ms  0x78ce symkey:0x7f2ef2bcc880
   471 ms  0x78ce PK11_Encrypt()
   471 ms  0x78ce symkey:0x7f2ef2bcc880
   499 ms  0x78ce PK11_Encrypt()
   499 ms  0x78ce symkey:0x7f2ef2bcc880
   611 ms  0x78ce PK11_Encrypt()
   611 ms  0x78ce symkey:0x7f2ef2bcc880
   642 ms  0x78ce PK11_Encrypt()
   642 ms  0x78ce symkey:0x7f2ef2bcc880
   672 ms  0x78ce PK11_Encrypt()
   672 ms  0x78ce symkey:0x7f2ef2bcc880
           /* TID 0x792c */
   699 ms  0x792c PR_Close()
   699 ms  0x792c fd:0x7f2ef294a190
   699 ms  0x792c PR_Close()
   699 ms  0x792c fd:0x7f2ef294a490
   699 ms  0x792c PR_Close()
   699 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a490
   700 ms  0x792c PR_Close()
   700 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a190
   701 ms  0x792c PR_Close()
   701 ms  0x792c fd:0x7f2ef294a490
   708 ms  0x792c PR_Close()
   708 ms  0x792c fd:0x7f2ef294a190
   708 ms  0x792c PR_Close()
   708 ms  0x792c fd:0x7f2ef294a460
   711 ms  0x792c PR_Close()
   711 ms  0x792c fd:0x7f2ef294a460
   711 ms  0x792c PR_Close()
   711 ms  0x792c fd:0x7f2ef294a490
   713 ms  0x792c PR_Close()
   713 ms  0x792c fd:0x7f2ef294a490
   713 ms  0x792c PR_Close()
   713 ms  0x792c fd:0x7f2ef294a490
   715 ms  0x792c PR_Close()
   715 ms  0x792c fd:0x7f2ef294a490
   716 ms  0x792c PR_Close()
   716 ms  0x792c fd:0x7f2ef294a490
           /* TID 0x78e8 */
   748 ms  0x78e8 PR_Close()
   748 ms  0x78e8 fd:0x7f2ef294a550
   750 ms  0x78e8 PR_Close()
   750 ms  0x78e8 fd:0x7f2ef294a550
   751 ms  0x78e8 PR_Close()
   751 ms  0x78e8 fd:0x7f2ef294a550
           /* TID 0x792c */
   769 ms  0x792c PR_Close()
   769 ms  0x792c fd:0x7f2ef294a490
   770 ms  0x792c PR_Close()
   770 ms  0x792c fd:0x7f2ef294a490
   777 ms  0x792c PR_Close()
   777 ms  0x792c fd:0x7f2ef294a490
   777 ms  0x792c PR_Close()
   777 ms  0x792c fd:0x7f2ef294a490
   784 ms  0x792c PR_Close()
   784 ms  0x792c fd:0x7f2ef294a490
   784 ms  0x792c PR_Close()
   784 ms  0x792c fd:0x7f2ef294a490
   785 ms  0x792c PR_Close()
   785 ms  0x792c fd:0x7f2ef294a490
   785 ms  0x792c PR_Close()
   785 ms  0x792c fd:0x7f2ef294a490
           /* TID 0x7929 */
   785 ms  0x7929 PR_Close()
   785 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
   786 ms  0x7929 PR_Close()
   786 ms  0x7929 fd:0x7f2ef294a490
           /* TID 0x78e8 */
  1288 ms  0x78e8 PR_Close()
  1288 ms  0x78e8 fd:0x7f2ef294a4c0
  1291 ms  0x78e8 PR_Close()
  1291 ms  0x78e8 fd:0x7f2ef294a4c0
  2869 ms  0x78e8 PR_Close()
  2869 ms  0x78e8 fd:0x7f2ef294a9a0
           /* TID 0x78d6 */
  4147 ms  0x78d6 PR_Close()
  4147 ms  0x78d6 fd:0x7f2ef294a9a0
  4147 ms  0x78d6 PR_Close()
  4147 ms  0x78d6 fd:0x7f2ef294aa00
           /* TID 0x78ce */
  4475 ms  0x78ce SSL_ImportFD()
  4475 ms  0x78ce ret:0x7f2ef3ec3ac0
  4475 ms  0x78ce SSL_AuthCertificateHook()
  4475 ms  0x78ce fd:0x7f2ef3ec3ac0
  4475 ms  0x78ce ret:0x0
  4475 ms  0x78ce PR_Connect()
  4475 ms  0x78ce fd:0x7f2ef3ec3ac0
  4726 ms  0x78ce SSL_ImportFD()
  4726 ms  0x78ce ret:0x7f2ef3ec3af0
  4726 ms  0x78ce SSL_AuthCertificateHook()
  4726 ms  0x78ce fd:0x7f2ef3ec3af0
  4726 ms  0x78ce ret:0x0
  4726 ms  0x78ce PR_Connect()
  4726 ms  0x78ce fd:0x7f2ef3ec3af0
           /* TID 0x78d6 */
  9373 ms  0x78d6 PR_Close()
  9373 ms  0x78d6 fd:0x7f2ef2b61b80
  9373 ms  0x78d6 PR_Close()
  9373 ms  0x78d6 fd:0x7f2ef2b61b80
           /* TID 0x78ce */
 19121 ms  0x78ce SSL_ImportFD()
 19121 ms  0x78ce ret:0x7f2ef3d4e9d0
 19121 ms  0x78ce SSL_AuthCertificateHook()
 19121 ms  0x78ce fd:0x7f2ef3d4e9d0
 19121 ms  0x78ce ret:0x0
 19122 ms  0x78ce PR_Connect()
 19122 ms  0x78ce fd:0x7f2ef3d4e9d0
 19333 ms  0x78ce SECKEY_CreateECPrivateKey()
 19333 ms  0x78ce cx:0x7f2ef2944608
 19336 ms     | 0x78ce EC_ValidatePublicKey()
 19336 ms     | 0x78ce ret:0x0
 19336 ms  0x78ce ret:0x7f2ef2b18820::7f2ef2b18820  60 65 fc f2                                      `e..
 19336 ms  0x78ce SECKEY_CreateECPrivateKey()
 19336 ms  0x78ce cx:0x7f2ef2944608
 19338 ms     | 0x78ce EC_ValidatePublicKey()
 19344 ms     | 0x78ce ret:0x0
 19344 ms  0x78ce ret:0x7f2ef2b1a820::7f2ef2b1a820  e0 67 fc f2                                      .g..
           /* TID 0x78e8 */
 19485 ms  0x78e8 PR_Close()
 19485 ms  0x78e8 fd:0x7f2ef3d4e790
 19488 ms  0x78e8 PR_Close()
 19488 ms  0x78e8 fd:0x7f2ef3d4e790
           /* TID 0x78ce */
 19560 ms  SECKEY_ECParamsToKeySize()
 19560 ms  0x78ce ret:0x100
 19560 ms  0x78ce SECKEY_CreateECPrivateKey()
 19560 ms  0x78ce cx:0x7f2ef2944608
 19562 ms     | 0x78ce EC_ValidatePublicKey()
 19567 ms     | 0x78ce ret:0x0
 19568 ms  0x78ce ret:0x7f2ef2b25020::7f2ef2b25020  a0 61 a0 f3                                      .a..
 19568 ms  0x78ce PK11_PubDeriveWithKDF()
 19568 ms  0x78ce seckey:0x7f2ef2b25020
 19568 ms     | 0x78ce EC_ValidatePublicKey()
 19572 ms     | 0x78ce ret:0x0
 19576 ms  0x78ce ret:0x7f2ef3d49480
 19576 ms  0x78ce PK11_DeriveWithFlags()
 19576 ms  0x78ce basekey:0x7f2ef3d49480
 19576 ms     | 0x78ce PK11_DeriveWithTemplate()
 19576 ms  0x78ce ret:0x7f2ef2bb2080
 19576 ms  0x78ce PK11_Derive()
 19576 ms  0x78ce basekey:0x7f2ef2bb2080
 19576 ms     | 0x78ce PK11_DeriveWithTemplate()
 19577 ms  0x78ce ret:0x7f2ef2bb2100
 19577 ms  0x78ce SECKEY_DestroyPrivateKey()
 19577 ms  0x78ce privk:0x7f2ef2b25020::7f2ef2b25020  a0 61 a0 f3                                      .a..
 19577 ms  0x78ce privk:0x7f2ef2b25020::7f2ef2b25020  e5 e5 e5 e5                                      ....
 19577 ms  0x78ce PK11_Encrypt()
 19577 ms  0x78ce symkey:0x7f2ef2bb2280
           /* TID 0x78d6 */
 19605 ms  0x78d6 PR_Close()
 19605 ms  0x78d6 fd:0x7f2ef3d4e7f0
           /* TID 0x7965 */
 19605 ms  0x7965 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19605 ms  0x7965 ret:0x0
           /* TID 0x78ce */
 19605 ms  0x78ce SSL_AuthCertificateComplete()
 19605 ms  0x78ce fd:0x7f2ef3d4e9d0
 19605 ms  0x78ce err:0x0
 19606 ms  0x78ce PK11_Encrypt()
 19606 ms  0x78ce symkey:0x7f2ef2bb2280
 19790 ms  0x78ce SECKEY_DestroyPrivateKey()
 19790 ms  0x78ce privk:0x7f2ef2b1a820::7f2ef2b1a820  e0 67 fc f2                                      .g..
 19790 ms  0x78ce privk:0x7f2ef2b1a820::7f2ef2b1a820  e5 e5 e5 e5                                      ....
 19790 ms  0x78ce SECKEY_DestroyPrivateKey()
 19790 ms  0x78ce privk:0x7f2ef2b18820::7f2ef2b18820  60 65 fc f2                                      `e..
 19791 ms  0x78ce privk:0x7f2ef2b18820::7f2ef2b18820  e5 e5 e5 e5                                      ....
 20003 ms  0x78ce PK11_Encrypt()
 20003 ms  0x78ce symkey:0x7f2ef2bb2280
 20227 ms  0x78ce PK11_Encrypt()
 20227 ms  0x78ce symkey:0x7f2ef2bb2280
           /* TID 0x78e8 */
 20514 ms  0x78e8 PR_Close()
 20514 ms  0x78e8 fd:0x7f2ef2bb4c10
 20727 ms  0x78e8 PR_Close()
 20727 ms  0x78e8 fd:0x7f2ef2bb4c10
 20730 ms  0x78e8 PR_Close()
 20730 ms  0x78e8 fd:0x7f2ef2bb4c10
 28617 ms  0x78e8 PR_Close()
 28617 ms  0x78e8 fd:0x7f2ef41e4640
 28619 ms  0x78e8 PR_Close()
 28619 ms  0x78e8 fd:0x7f2ef41e4640
 29325 ms  0x78e8 PR_Close()
 29325 ms  0x78e8 fd:0x7f2ef41e4640
 29328 ms  0x78e8 PR_Close()
 29328 ms  0x78e8 fd:0x7f2ef41e4640
 58103 ms  0x78e8 PR_Close()
 58103 ms  0x78e8 fd:0x7f2ef3ec3df0
 58104 ms  0x78e8 PR_Close()
 58104 ms  0x78e8 fd:0x7f2ef3ec3f40
 58111 ms  0x78e8 PR_Close()
 58111 ms  0x78e8 fd:0x7f2ef3efcee0
 58114 ms  0x78e8 PR_Close()
 58114 ms  0x78e8 fd:0x7f2ef41e48e0
 58601 ms  0x78e8 PR_Close()
 58601 ms  0x78e8 fd:0x7f2ef3ec3df0
 58604 ms  0x78e8 PR_Close()
 58604 ms  0x78e8 fd:0x7f2ef3ec3df0
           /* TID 0x78ce */
 58899 ms  0x78ce PR_Connect()
 58899 ms  0x78ce fd:0x7f2ef41e4d30
 60553 ms  0x78ce PR_Close()
 60553 ms  0x78ce fd:0x7f2ef7561430
 60553 ms     | 0x78ce PK11_Encrypt()
 60553 ms     | 0x78ce symkey:0x7f2ef2f89b00
 60640 ms  0x78ce PR_Close()
 60640 ms  0x78ce fd:0x7f2ef75615e0
 60640 ms     | 0x78ce PK11_Encrypt()
 60640 ms     | 0x78ce symkey:0x7f2f01ceef80
           /* TID 0x78e8 */
 64859 ms  0x78e8 PR_Close()
 64859 ms  0x78e8 fd:0x7f2ef31ff790
 64862 ms  0x78e8 PR_Close()
 64862 ms  0x78e8 fd:0x7f2ef31ff790
           /* TID 0x78ce */
 94756 ms  0x78ce PR_Close()
 94756 ms  0x78ce fd:0x7f2ef3ec3af0
 94756 ms  0x78ce PR_Close()
 94756 ms  0x78ce fd:0x7f2ef3ec3ac0
 94825 ms  0x78ce PR_Close()
 94825 ms  0x78ce fd:0x7f2ef3a88d90
           /* TID 0x78c3 */
 94832 ms  0x78c3 EC_ValidatePublicKey()
 94833 ms  0x78c3 ret:0x0
 94833 ms  0x78c3 EC_ValidatePublicKey()
 94835 ms  0x78c3 ret:0x0
 94835 ms  0x78c3 EC_ValidatePublicKey()
 94836 ms  0x78c3 ret:0x0
 94836 ms  0x78c3 EC_ValidatePublicKey()
 94839 ms  0x78c3 ret:0x0
 94839 ms  0x78c3 EC_ValidatePublicKey()
 94840 ms  0x78c3 ret:0x0
 94840 ms  0x78c3 EC_ValidatePublicKey()
 94842 ms  0x78c3 ret:0x0
 94842 ms  0x78c3 EC_ValidatePublicKey()
 94843 ms  0x78c3 ret:0x0
 94843 ms  0x78c3 EC_ValidatePublicKey()
 94845 ms  0x78c3 ret:0x0
 94845 ms  0x78c3 EC_ValidatePublicKey()
 94846 ms  0x78c3 ret:0x0
 94846 ms  0x78c3 EC_ValidatePublicKey()
 94849 ms  0x78c3 ret:0x0
           /* TID 0x78ce */
 94849 ms  0x78ce PR_Close()
 94849 ms  0x78ce fd:0x7f2f018a0160
 94850 ms  0x78ce PR_Close()
 94850 ms  0x78ce fd:0x7f2f018a00a0
 94851 ms  0x78ce PR_Close()
 94851 ms  0x78ce fd:0x7f2ef41e4d30
 94851 ms  0x78ce PR_Close()
 94851 ms  0x78ce fd:0x7f2ef7561280
 94851 ms     | 0x78ce PK11_Encrypt()
 94851 ms     | 0x78ce symkey:0x7f2ef3d49680
 94851 ms  0x78ce PR_Close()
 94851 ms  0x78ce fd:0x7f2ef2bd3a00
 94851 ms     | 0x78ce PK11_Encrypt()
 94851 ms     | 0x78ce symkey:0x7f2ef2bcc880
           /* TID 0x7927 */
 94851 ms  0x7927 PR_Close()
 94851 ms  0x7927 fd:0x7f2ef2bb4520
 94851 ms  0x7927 PR_Close()
 94851 ms  0x7927 fd:0x7f2ef2bb4520
           /* TID 0x78c3 */
 94854 ms  0x78c3 PR_Close()
 94854 ms  0x78c3 fd:0x7f2ef5bf6e50
 94854 ms  0x78c3 PR_Close()
 94854 ms  0x78c3 fd:0x7f2ef2bd3340
 94855 ms  0x78c3 PR_Close()
 94855 ms  0x78c3 fd:0x7f2ef2bd3a60
 94855 ms  0x78c3 PR_Close()
 94855 ms  0x78c3 fd:0x7f2ef2bd3340
 94856 ms  0x78c3 PR_Close()
 94856 ms  0x78c3 fd:0x7f2ef2bd3a60
 94856 ms  0x78c3 PR_Close()
 94856 ms  0x78c3 fd:0x7f2ef2bd3340
           /* TID 0x78e8 */
 94859 ms  0x78e8 PR_Close()
 94859 ms  0x78e8 fd:0x7f2ef2bd3340
           /* TID 0x78c3 */
 94880 ms  0x78c3 PR_Close()
 94880 ms  0x78c3 fd:0x7f2ef2bd3a60
 94880 ms  0x78c3 PR_Close()
 94880 ms  0x78c3 fd:0x7f2ef8a0a220
 94881 ms  0x78c3 PR_Close()
 94881 ms  0x78c3 fd:0x7f2ef2bd3a60
 94881 ms  0x78c3 PR_Close()
 94881 ms  0x78c3 fd:0x7f2ef8a0a220
 94881 ms  0x78c3 PR_Close()
 94881 ms  0x78c3 fd:0x7f2efdac89a0
 94881 ms  0x78c3 PR_Close()
 94881 ms  0x78c3 fd:0x7f2efdac88b0
 94881 ms  0x78c3 PR_Close()
 94881 ms  0x78c3 fd:0x7f2efdac8a60
 94884 ms  0x78c3 PR_Close()
 94884 ms  0x78c3 fd:0x7f2ef3d4ed60
 94885 ms  0x78c3 PR_Close()
 94885 ms  0x78c3 fd:0x7f2ef3d4ed60
 94887 ms  0x78c3 PR_Close()
 94887 ms  0x78c3 fd:0x7f2ef2bd3a60
 94887 ms  0x78c3 PR_Close()
 94887 ms  0x78c3 fd:0x7f2ef7561250
 94888 ms  0x78c3 PR_Close()
 94888 ms  0x78c3 fd:0x7f2ef2bd3a60
 94888 ms  0x78c3 PR_Close()
 94888 ms  0x78c3 fd:0x7f2ef7561250
 94891 ms  0x78c3 PR_Close()
 94891 ms  0x78c3 fd:0x7f2ef7591640
 94892 ms  0x78c3 PR_Close()
 94892 ms  0x78c3 fd:0x7f2ef7591640
 94894 ms  0x78c3 PR_Close()
 94894 ms  0x78c3 fd:0x7f2ef2bd3a60
 94894 ms  0x78c3 PR_Close()
 94894 ms  0x78c3 fd:0x7f2ef89c9c10
 94894 ms  0x78c3 PR_Close()
 94894 ms  0x78c3 fd:0x7f2ef2bd3a60
 94895 ms  0x78c3 PR_Close()
 94895 ms  0x78c3 fd:0x7f2ef89c9c10
 94897 ms  0x78c3 PR_Close()
 94897 ms  0x78c3 fd:0x7f2ef8a0a220
 94899 ms  0x78c3 PR_Close()
 94899 ms  0x78c3 fd:0x7f2ef8a0a220
 94905 ms  0x78c3 PR_Close()
 94905 ms  0x78c3 fd:0x7f2ef8a0a9d0
 94906 ms  0x78c3 PR_Close()
 94906 ms  0x78c3 fd:0x7f2ef8a0a9d0
 94908 ms  0x78c3 PR_Close()
 94908 ms  0x78c3 fd:0x7f2ef8a0aa00
 94914 ms  0x78c3 PR_Close()
 94914 ms  0x78c3 fd:0x7f2ef2bd3a60
 94914 ms  0x78c3 PR_Close()
 94914 ms  0x78c3 fd:0x7f2ef3efc040
           /* TID 0x78ce */
 94916 ms  0x78ce PK11_Encrypt()
 94916 ms  0x78ce symkey:0x7f2ef2bb2280
           /* TID 0x78e8 */
 94923 ms  0x78e8 PR_Close()
 94923 ms  0x78e8 fd:0x7f2ef2bd3340
 94945 ms  0x78e8 PR_Close()
 94945 ms  0x78e8 fd:0x7f2ef2bd3340
           /* TID 0x78c8 */
 94956 ms  0x78c8 PR_Close()
 94956 ms  0x78c8 fd:0x7f2efc4e9fa0
 94960 ms  0x78c8 PR_Close()
 94960 ms  0x78c8 fd:0x7f2ef8ea6130
           /* TID 0x78e8 */
 94967 ms  0x78e8 PR_Close()
 94967 ms  0x78e8 fd:0x7f2ef3a88310
           /* TID 0x78ce */
 94970 ms  0x78ce PR_Close()
 94970 ms  0x78ce fd:0x7f2ef31ff490
 94970 ms  0x78ce PR_Close()
 94970 ms  0x78ce fd:0x7f2ef3d4e9d0
 94970 ms     | 0x78ce PK11_Encrypt()
 94970 ms     | 0x78ce symkey:0x7f2ef2bb2280
           /* TID 0x7927 */
 94971 ms  0x7927 PR_Close()
 94971 ms  0x7927 fd:0x7f2ef31ff490
 94971 ms  0x7927 PR_Close()
 94971 ms  0x7927 fd:0x7f2ef31ff490
 94971 ms  0x7927 PR_Close()
 94971 ms  0x7927 fd:0x7f2ef31ff490
 94971 ms  0x7927 PR_Close()
 94971 ms  0x7927 fd:0x7f2ef3a88310
           /* TID 0x78e8 */
 94972 ms  0x78e8 PR_Close()
 94972 ms  0x78e8 fd:0x7f2ef3a88310
           /* TID 0x78d6 */
 94975 ms  0x78d6 PR_Close()
 94975 ms  0x78d6 fd:0x7f2ef43fc3d0
 94975 ms  0x78d6 PR_Close()
 94975 ms  0x78d6 fd:0x7f2ef43fc3d0
           /* TID 0x78c8 */
 94983 ms  0x78c8 PR_Close()
 94983 ms  0x78c8 fd:0x7f2ef7561580
           /* TID 0x78c3 */
 94986 ms  0x78c3 PR_Close()
 94986 ms  0x78c3 fd:0x7f2ef2bd3a60
 94986 ms  0x78c3 PR_Close()
 94986 ms  0x78c3 fd:0x7f2ef43fc430
           /* TID 0x78e8 */
 94987 ms  0x78e8 PR_Close()
 94987 ms  0x78e8 fd:0x7f2ef43fc4c0
 94989 ms  0x78e8 PR_Close()
 94989 ms  0x78e8 fd:0x7f2ef3ec38e0
 95003 ms  0x78e8 PR_Close()
 95003 ms  0x78e8 fd:0x7f2ef3d4ecd0
 95004 ms  0x78e8 PR_Close()
 95004 ms  0x78e8 fd:0x7f2ef3d4ecd0
 95011 ms  0x78e8 PR_Close()
 95011 ms  0x78e8 fd:0x7f2ef3ec30a0
           /* TID 0x78c3 */
 95174 ms  0x78c3 PR_Close()
 95174 ms  0x78c3 fd:0x7f2ef294a7c0
 95175 ms  0x78c3 PR_Close()
 95175 ms  0x78c3 fd:0x7f2ef294a7c0
 95179 ms  0x78c3 PR_Close()
 95179 ms  0x78c3 fd:0x7f2f1adda130
 95179 ms  0x78c3 PR_Close()
 95179 ms  0x78c3 fd:0x7f2f1adda190
Process terminated
