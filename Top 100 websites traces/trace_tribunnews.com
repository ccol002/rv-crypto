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
           /* TID 0x7487 */
   161 ms  0x7487 SSL_ImportFD()
   161 ms  0x7487 ret:0x7f52db0cd940
   161 ms  0x7487 SSL_AuthCertificateHook()
   161 ms  0x7487 fd:0x7f52db0cd940
   161 ms  0x7487 ret:0x0
   161 ms  0x7487 PR_Connect()
   161 ms  0x7487 fd:0x7f52db0cd940
           /* TID 0x748f */
   211 ms  0x748f PR_Close()
   211 ms  0x748f fd:0x7f52db0cd8e0
           /* TID 0x7487 */
   360 ms  0x7487 SECKEY_CreateECPrivateKey()
   360 ms  0x7487 cx:0x7f52db0d0ae8
   361 ms     | 0x7487 EC_ValidatePublicKey()
   361 ms     | 0x7487 ret:0x0
   361 ms  0x7487 ret:0x7f52c9b54820::7f52c9b54820  20 29 bc c9                                       )..
   362 ms  0x7487 SECKEY_CreateECPrivateKey()
   362 ms  0x7487 cx:0x7f52db0d0ae8
   363 ms     | 0x7487 EC_ValidatePublicKey()
   367 ms     | 0x7487 ret:0x0
   367 ms  0x7487 ret:0x7f52c9b56820::7f52c9b56820  e0 27 bc c9                                      .'..
   573 ms  SECKEY_ECParamsToKeySize()
   573 ms  0x7487 ret:0x100
   573 ms  0x7487 SECKEY_CreateECPrivateKey()
   573 ms  0x7487 cx:0x7f52db0d0ae8
   575 ms     | 0x7487 EC_ValidatePublicKey()
   580 ms     | 0x7487 ret:0x0
   580 ms  0x7487 ret:0x7f52c9b60020::7f52c9b60020  00 61 bf c9                                      .a..
   580 ms  0x7487 PK11_PubDeriveWithKDF()
   580 ms  0x7487 seckey:0x7f52c9b60020
   580 ms     | 0x7487 EC_ValidatePublicKey()
   584 ms     | 0x7487 ret:0x0
   588 ms  0x7487 ret:0x7f52e49db380
   588 ms  0x7487 PK11_DeriveWithFlags()
   588 ms  0x7487 basekey:0x7f52e49db380
   588 ms     | 0x7487 PK11_DeriveWithTemplate()
   588 ms  0x7487 ret:0x7f52c9bf8280
   588 ms  0x7487 PK11_Derive()
   588 ms  0x7487 basekey:0x7f52c9bf8280
   588 ms     | 0x7487 PK11_DeriveWithTemplate()
   589 ms  0x7487 ret:0x7f52c9bf8300
   589 ms  0x7487 SECKEY_DestroyPrivateKey()
   589 ms  0x7487 privk:0x7f52c9b60020::7f52c9b60020  00 61 bf c9                                      .a..
   589 ms  0x7487 privk:0x7f52c9b60020::7f52c9b60020  e5 e5 e5 e5                                      ....
   589 ms  0x7487 PK11_Encrypt()
   589 ms  0x7487 symkey:0x7f52c9bf8480
   590 ms  0x7487 PR_Connect()
   590 ms  0x7487 fd:0x7f52c9b10850
           /* TID 0x74e3 */
   643 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   643 ms  0x74e3 ret:0x0
           /* TID 0x748f */
   644 ms  0x748f PR_Close()
   644 ms  0x748f fd:0x7f52c9b10790
           /* TID 0x74f5 */
   646 ms  0x74f5 PR_Close()
   646 ms  0x74f5 fd:0x7f52c9b10cd0
           /* TID 0x7487 */
   646 ms  0x7487 SSL_AuthCertificateComplete()
   646 ms  0x7487 fd:0x7f52db0cd940
   646 ms  0x7487 err:0x0
   646 ms  0x7487 PK11_Encrypt()
   646 ms  0x7487 symkey:0x7f52c9bf8480
           /* TID 0x74f5 */
   743 ms  0x74f5 PR_Close()
   743 ms  0x74f5 fd:0x7f52c9b108e0
   746 ms  0x74f5 PR_Close()
   746 ms  0x74f5 fd:0x7f52c9b108e0
           /* TID 0x7487 */
   790 ms  0x7487 SECKEY_DestroyPrivateKey()
   790 ms  0x7487 privk:0x7f52c9b56820::7f52c9b56820  e0 27 bc c9                                      .'..
   790 ms  0x7487 privk:0x7f52c9b56820::7f52c9b56820  e5 e5 e5 e5                                      ....
   790 ms  0x7487 SECKEY_DestroyPrivateKey()
   790 ms  0x7487 privk:0x7f52c9b54820::7f52c9b54820  20 29 bc c9                                       )..
   790 ms  0x7487 privk:0x7f52c9b54820::7f52c9b54820  e5 e5 e5 e5                                      ....
   994 ms  0x7487 SSL_ImportFD()
   994 ms  0x7487 ret:0x7f52c9b10d90
   994 ms  0x7487 SSL_AuthCertificateHook()
   994 ms  0x7487 fd:0x7f52c9b10d90
   994 ms  0x7487 ret:0x0
   994 ms  0x7487 PR_Connect()
   994 ms  0x7487 fd:0x7f52c9b10d90
  1020 ms  0x7487 SECKEY_CreateECPrivateKey()
  1020 ms  0x7487 cx:0x7f52c9bfc588
  1020 ms     | 0x7487 EC_ValidatePublicKey()
  1020 ms     | 0x7487 ret:0x0
  1020 ms  0x7487 ret:0x7f52c9b55820::7f52c9b55820  40 2c bc c9                                      @,..
  1021 ms  0x7487 SECKEY_CreateECPrivateKey()
  1021 ms  0x7487 cx:0x7f52c9bfc588
  1021 ms     | 0x7487 EC_ValidatePublicKey()
  1024 ms     | 0x7487 ret:0x0
  1024 ms  0x7487 ret:0x7f52c9b5c020::7f52c9b5c020  d0 63 bf c9                                      .c..
           /* TID 0x74e3 */
  1077 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1077 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
  1078 ms  SECKEY_ECParamsToKeySize()
  1078 ms  0x7487 ret:0x100
  1078 ms  0x7487 SECKEY_CreateECPrivateKey()
  1078 ms  0x7487 cx:0x7f52c9bfc588
  1079 ms     | 0x7487 EC_ValidatePublicKey()
  1081 ms     | 0x7487 ret:0x0
  1081 ms  0x7487 ret:0x7f52c9b5f820::7f52c9b5f820  a0 66 bf c9                                      .f..
  1081 ms  0x7487 PK11_PubDeriveWithKDF()
  1081 ms  0x7487 seckey:0x7f52c9b5f820
  1081 ms     | 0x7487 EC_ValidatePublicKey()
  1082 ms     | 0x7487 ret:0x0
  1084 ms  0x7487 ret:0x7f52e49db380
  1084 ms  0x7487 PK11_DeriveWithFlags()
  1084 ms  0x7487 basekey:0x7f52e49db380
  1084 ms     | 0x7487 PK11_DeriveWithTemplate()
  1084 ms  0x7487 ret:0x7f52c9bf9300
  1084 ms  0x7487 PK11_Derive()
  1084 ms  0x7487 basekey:0x7f52c9bf9300
  1084 ms     | 0x7487 PK11_DeriveWithTemplate()
  1084 ms  0x7487 ret:0x7f52c9bf9380
  1084 ms  0x7487 SECKEY_DestroyPrivateKey()
  1084 ms  0x7487 privk:0x7f52c9b5f820::7f52c9b5f820  a0 66 bf c9                                      .f..
  1084 ms  0x7487 privk:0x7f52c9b5f820::7f52c9b5f820  e5 e5 e5 e5                                      ....
  1084 ms  0x7487 PK11_Encrypt()
  1084 ms  0x7487 symkey:0x7f52c9bf9500
  1084 ms  0x7487 SSL_AuthCertificateComplete()
  1084 ms  0x7487 fd:0x7f52c9b10d90
  1084 ms  0x7487 err:0x0
  1084 ms  0x7487 PK11_Encrypt()
  1084 ms  0x7487 symkey:0x7f52c9bf9500
  1136 ms  0x7487 SECKEY_DestroyPrivateKey()
  1136 ms  0x7487 privk:0x7f52c9b5c020::7f52c9b5c020  d0 63 bf c9                                      .c..
  1136 ms  0x7487 privk:0x7f52c9b5c020::7f52c9b5c020  e5 e5 e5 e5                                      ....
  1136 ms  0x7487 SECKEY_DestroyPrivateKey()
  1136 ms  0x7487 privk:0x7f52c9b55820::7f52c9b55820  40 2c bc c9                                      @,..
  1137 ms  0x7487 privk:0x7f52c9b55820::7f52c9b55820  e5 e5 e5 e5                                      ....
  1140 ms  0x7487 PK11_Encrypt()
  1140 ms  0x7487 symkey:0x7f52c9bf9500
  1169 ms  0x7487 PK11_Encrypt()
  1169 ms  0x7487 symkey:0x7f52c9bf9500
  1201 ms  0x7487 PK11_Encrypt()
  1201 ms  0x7487 symkey:0x7f52c9bf9500
  1231 ms  0x7487 PK11_Encrypt()
  1231 ms  0x7487 symkey:0x7f52c9bf9500
  1348 ms  0x7487 PK11_Encrypt()
  1348 ms  0x7487 symkey:0x7f52c9bf9500
  1380 ms  0x7487 PK11_Encrypt()
  1380 ms  0x7487 symkey:0x7f52c9bf9500
  1411 ms  0x7487 PK11_Encrypt()
  1411 ms  0x7487 symkey:0x7f52c9bf9500
           /* TID 0x74de */
  1439 ms  0x74de PR_Close()
  1439 ms  0x74de fd:0x7f52c9b10d60
  1439 ms  0x74de PR_Close()
  1439 ms  0x74de fd:0x7f52c9b10f70
  1439 ms  0x74de PR_Close()
  1439 ms  0x74de fd:0x7f52c9b10d60
  1439 ms  0x74de PR_Close()
  1439 ms  0x74de fd:0x7f52c9b10f70
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10d60
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10f70
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10d60
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10f70
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10d60
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10f70
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10d60
  1440 ms  0x74de PR_Close()
  1440 ms  0x74de fd:0x7f52c9b10f70
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10d60
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10f70
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10d60
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10f70
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10d60
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10f70
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10d60
  1441 ms  0x74de PR_Close()
  1441 ms  0x74de fd:0x7f52c9b10f70
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10d60
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10f70
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10d60
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10f70
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10d60
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10f70
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10d60
  1442 ms  0x74de PR_Close()
  1442 ms  0x74de fd:0x7f52c9b10f70
  1445 ms  0x74de PR_Close()
  1445 ms  0x74de fd:0x7f52c9b10d60
  1445 ms  0x74de PR_Close()
  1445 ms  0x74de fd:0x7f52c9b10f10
  1448 ms  0x74de PR_Close()
  1448 ms  0x74de fd:0x7f52c9b10f10
  1448 ms  0x74de PR_Close()
  1448 ms  0x74de fd:0x7f52c9b10f40
  1451 ms  0x74de PR_Close()
  1451 ms  0x74de fd:0x7f52c9b10f40
  1451 ms  0x74de PR_Close()
  1451 ms  0x74de fd:0x7f52c9b10f40
  1454 ms  0x74de PR_Close()
  1454 ms  0x74de fd:0x7f52c9b10f40
  1454 ms  0x74de PR_Close()
  1454 ms  0x74de fd:0x7f52c9b10f40
  1500 ms  0x74de PR_Close()
  1500 ms  0x74de fd:0x7f52c9b10f40
  1501 ms  0x74de PR_Close()
  1501 ms  0x74de fd:0x7f52c9b10f40
  1508 ms  0x74de PR_Close()
  1508 ms  0x74de fd:0x7f52c9b10f40
  1508 ms  0x74de PR_Close()
  1508 ms  0x74de fd:0x7f52c9b10f40
  1515 ms  0x74de PR_Close()
  1515 ms  0x74de fd:0x7f52c9b10f40
  1515 ms  0x74de PR_Close()
  1515 ms  0x74de fd:0x7f52c9b10f40
  1517 ms  0x74de PR_Close()
  1517 ms  0x74de fd:0x7f52c9b10f40
  1517 ms  0x74de PR_Close()
  1517 ms  0x74de fd:0x7f52c9b10f40
           /* TID 0x74db */
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1517 ms  0x74db PR_Close()
  1517 ms  0x74db fd:0x7f52c9b10f40
  1518 ms  0x74db PR_Close()
  1518 ms  0x74db fd:0x7f52c9b10f40
           /* TID 0x74f5 */
  2020 ms  0x74f5 PR_Close()
  2020 ms  0x74f5 fd:0x7f52c9b06220
  2024 ms  0x74f5 PR_Close()
  2024 ms  0x74f5 fd:0x7f52c9b06220
  2820 ms  0x74f5 PR_Close()
  2820 ms  0x74f5 fd:0x7f52c9b06340
           /* TID 0x748f */
  4347 ms  0x748f PR_Close()
  4347 ms  0x748f fd:0x7f52c97c8d90
  4347 ms  0x748f PR_Close()
  4347 ms  0x748f fd:0x7f52c97c8d90
  4347 ms  0x748f PR_Close()
  4347 ms  0x748f fd:0x7f52c97c8e20
  4347 ms  0x748f PR_Close()
  4347 ms  0x748f fd:0x7f52c97c8ee0
           /* TID 0x7487 */
  5409 ms  0x7487 SSL_ImportFD()
  5409 ms  0x7487 ret:0x7f52c97c8df0
  5409 ms  0x7487 SSL_AuthCertificateHook()
  5409 ms  0x7487 fd:0x7f52c97c8df0
  5409 ms  0x7487 ret:0x0
  5409 ms  0x7487 PR_Connect()
  5409 ms  0x7487 fd:0x7f52c97c8df0
  5435 ms  0x7487 SECKEY_CreateECPrivateKey()
  5435 ms  0x7487 cx:0x7f52c9bfc8c8
  5437 ms     | 0x7487 EC_ValidatePublicKey()
  5437 ms     | 0x7487 ret:0x0
  5437 ms  0x7487 ret:0x7f52c9607020::7f52c9607020  a0 f6 63 c9                                      ..c.
  5437 ms  0x7487 SECKEY_CreateECPrivateKey()
  5437 ms  0x7487 cx:0x7f52c9bfc8c8
  5439 ms     | 0x7487 EC_ValidatePublicKey()
  5444 ms     | 0x7487 ret:0x0
  5444 ms  0x7487 ret:0x7f52c9609020::7f52c9609020  20 f9 63 c9                                       .c.
  5506 ms  SECKEY_ECParamsToKeySize()
  5507 ms  0x7487 ret:0x100
  5507 ms  0x7487 SECKEY_CreateECPrivateKey()
  5507 ms  0x7487 cx:0x7f52c9bfc8c8
  5509 ms     | 0x7487 EC_ValidatePublicKey()
  5513 ms     | 0x7487 ret:0x0
  5514 ms  0x7487 ret:0x7f52c9619020::7f52c9619020  70 ee 79 c9                                      p.y.
  5514 ms  0x7487 PK11_PubDeriveWithKDF()
  5514 ms  0x7487 seckey:0x7f52c9619020
  5514 ms     | 0x7487 EC_ValidatePublicKey()
  5519 ms     | 0x7487 ret:0x0
  5523 ms  0x7487 ret:0x7f52e49db380
  5524 ms  0x7487 PK11_DeriveWithFlags()
  5524 ms  0x7487 basekey:0x7f52e49db380
  5524 ms     | 0x7487 PK11_DeriveWithTemplate()
  5524 ms  0x7487 ret:0x7f52c97e0480
  5524 ms  0x7487 PK11_Derive()
  5524 ms  0x7487 basekey:0x7f52c97e0480
  5524 ms     | 0x7487 PK11_DeriveWithTemplate()
  5524 ms  0x7487 ret:0x7f52c97e0700
  5524 ms  0x7487 SECKEY_DestroyPrivateKey()
  5524 ms  0x7487 privk:0x7f52c9619020::7f52c9619020  70 ee 79 c9                                      p.y.
  5524 ms  0x7487 privk:0x7f52c9619020::7f52c9619020  e5 e5 e5 e5                                      ....
  5524 ms  0x7487 PK11_Encrypt()
  5524 ms  0x7487 symkey:0x7f52db31a380
  5554 ms  0x7487 PR_Connect()
  5554 ms  0x7487 fd:0x7f52db31d160
           /* TID 0x748f */
  5706 ms  0x748f PR_Close()
  5706 ms  0x748f fd:0x7f52c97c8d60
           /* TID 0x74e3 */
  5707 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5707 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
  5717 ms  0x7487 SSL_AuthCertificateComplete()
  5717 ms  0x7487 fd:0x7f52c97c8df0
  5717 ms  0x7487 err:0x0
  5717 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  5717 ms     | 0x7487 privk:0x7f52c9609020::7f52c9609020  20 f9 63 c9                                       .c.
  5717 ms     | 0x7487 privk:0x7f52c9609020::7f52c9609020  e5 e5 e5 e5                                      ....
  5717 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  5717 ms     | 0x7487 privk:0x7f52c9607020::7f52c9607020  a0 f6 63 c9                                      ..c.
  5717 ms     | 0x7487 privk:0x7f52c9607020::7f52c9607020  e5 e5 e5 e5                                      ....
  5717 ms  0x7487 PK11_Encrypt()
  5717 ms  0x7487 symkey:0x7f52db31a380
  5717 ms  0x7487 PK11_Encrypt()
  5717 ms  0x7487 symkey:0x7f52db31a380
  5717 ms  0x7487 PK11_Encrypt()
  5717 ms  0x7487 symkey:0x7f52db31a380
           /* TID 0x74a0 */
  6100 ms  0x74a0 PR_Close()
  6100 ms  0x74a0 fd:0x7f52dd8b3fa0
           /* TID 0x7487 */
  6219 ms  0x7487 SSL_ImportFD()
  6219 ms  0x7487 ret:0x7f52c93fe610
  6219 ms  0x7487 SSL_AuthCertificateHook()
  6219 ms  0x7487 fd:0x7f52c93fe610
  6219 ms  0x7487 ret:0x0
  6219 ms  0x7487 PR_Connect()
  6219 ms  0x7487 fd:0x7f52c93fe610
  6221 ms  0x7487 SSL_ImportFD()
  6221 ms  0x7487 ret:0x7f52c98e5fd0
  6221 ms  0x7487 SSL_AuthCertificateHook()
  6221 ms  0x7487 fd:0x7f52c98e5fd0
  6221 ms  0x7487 ret:0x0
  6221 ms  0x7487 PR_Connect()
  6221 ms  0x7487 fd:0x7f52c98e5fd0
  6227 ms  0x7487 SSL_ImportFD()
  6227 ms  0x7487 ret:0x7f52c9595d00
  6227 ms  0x7487 SSL_AuthCertificateHook()
  6227 ms  0x7487 fd:0x7f52c9595d00
  6227 ms  0x7487 ret:0x0
  6227 ms  0x7487 PR_Connect()
  6227 ms  0x7487 fd:0x7f52c9595d00
           /* TID 0x748f */
  6242 ms  0x748f PR_Close()
  6242 ms  0x748f fd:0x7f52c93fae20
           /* TID 0x7487 */
  6257 ms  0x7487 SECKEY_CreateECPrivateKey()
  6257 ms  0x7487 cx:0x7f52c9bfd0e8
  6257 ms     | 0x7487 EC_ValidatePublicKey()
  6257 ms     | 0x7487 ret:0x0
  6257 ms  0x7487 ret:0x7f52c93be820::7f52c93be820  a0 0b 59 c9                                      ..Y.
  6257 ms  0x7487 SECKEY_CreateECPrivateKey()
  6257 ms  0x7487 cx:0x7f52c9bfd0e8
  6258 ms     | 0x7487 EC_ValidatePublicKey()
  6260 ms     | 0x7487 ret:0x0
  6260 ms  0x7487 ret:0x7f52c93c0820::7f52c93c0820  20 e9 59 c9                                       .Y.
  6261 ms  0x7487 SECKEY_CreateECPrivateKey()
  6261 ms  0x7487 cx:0x7f52c9bfd288
  6262 ms     | 0x7487 EC_ValidatePublicKey()
  6262 ms     | 0x7487 ret:0x0
  6262 ms  0x7487 ret:0x7f52c9606820::7f52c9606820  e0 ec 59 c9                                      ..Y.
  6262 ms  0x7487 SECKEY_CreateECPrivateKey()
  6262 ms  0x7487 cx:0x7f52c9bfd288
  6263 ms     | 0x7487 EC_ValidatePublicKey()
  6264 ms     | 0x7487 ret:0x0
  6264 ms  0x7487 ret:0x7f52c9875820::7f52c9875820  90 22 5b c9                                      ."[.
  6267 ms  0x7487 SECKEY_CreateECPrivateKey()
  6267 ms  0x7487 cx:0x7f52c9bfd428
  6268 ms     | 0x7487 EC_ValidatePublicKey()
  6268 ms     | 0x7487 ret:0x0
  6268 ms  0x7487 ret:0x7f52c9238020::7f52c9238020  c0 24 5b c9                                      .$[.
  6268 ms  0x7487 SECKEY_CreateECPrivateKey()
  6268 ms  0x7487 cx:0x7f52c9bfd428
  6268 ms     | 0x7487 EC_ValidatePublicKey()
  6270 ms     | 0x7487 ret:0x0
  6270 ms  0x7487 ret:0x7f52c923a020::7f52c923a020  80 28 5b c9                                      .([.
  6307 ms  0x7487 PK11_Derive()
  6307 ms  0x7487 basekey:0x7f52e49db380
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52c9318700
  6307 ms  0x7487 PK11_PubDeriveWithKDF()
  6307 ms  0x7487 seckey:0x7f52c9606820
  6307 ms     | 0x7487 EC_ValidatePublicKey()
  6307 ms     | 0x7487 ret:0x0
  6307 ms  0x7487 ret:0x7f52e49db380
  6307 ms  SECKEY_ECParamsToKeySize()
  6307 ms  0x7487 ret:0xff
  6307 ms  0x7487 PK11_DeriveWithFlags()
  6307 ms  0x7487 basekey:0x7f52c9318700
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52c9318a00
  6307 ms  0x7487 PK11_Derive()
  6307 ms  0x7487 basekey:0x7f52e49db380
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52c9335b80
  6307 ms  0x7487 PK11_DeriveWithFlags()
  6307 ms  0x7487 basekey:0x7f52c9335b80
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52c9318700
  6307 ms  0x7487 PK11_DeriveWithFlags()
  6307 ms  0x7487 basekey:0x7f52c9335b80
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52e49db380
  6307 ms  0x7487 PK11_DeriveWithFlags()
  6307 ms  0x7487 basekey:0x7f52c9335b80
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6307 ms  0x7487 ret:0x7f52c9318a00
  6307 ms  0x7487 PK11_Derive()
  6307 ms  0x7487 basekey:0x7f52c934ef80
  6307 ms     | 0x7487 PK11_DeriveWithTemplate()
  6308 ms  0x7487 ret:0x7f52c9362000
  6308 ms  0x7487 PK11_DeriveWithFlags()
  6308 ms  0x7487 basekey:0x7f52e49db380
  6308 ms     | 0x7487 PK11_DeriveWithTemplate()
  6308 ms  0x7487 ret:0x7f52c9335b80
  6308 ms  0x7487 PK11_DeriveWithFlags()
  6308 ms  0x7487 basekey:0x7f52e49db380
  6308 ms     | 0x7487 PK11_DeriveWithTemplate()
  6308 ms  0x7487 ret:0x7f52c9318a00
           /* TID 0x74e3 */
  6309 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6310 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
  6311 ms  0x7487 PK11_DeriveWithFlags()
  6311 ms  0x7487 basekey:0x7f52e49db380
  6311 ms     | 0x7487 PK11_DeriveWithTemplate()
  6311 ms  0x7487 ret:0x7f52c9318a00
  6313 ms  0x7487 PK11_Derive()
  6313 ms  0x7487 basekey:0x7f52c9318a00
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c934ef80
  6314 ms  0x7487 PK11_PubDeriveWithKDF()
  6314 ms  0x7487 seckey:0x7f52c93be820
  6314 ms     | 0x7487 EC_ValidatePublicKey()
  6314 ms     | 0x7487 ret:0x0
  6314 ms  0x7487 ret:0x7f52c9318a00
  6314 ms  SECKEY_ECParamsToKeySize()
  6314 ms  0x7487 ret:0xff
  6314 ms  0x7487 PK11_DeriveWithFlags()
  6314 ms  0x7487 basekey:0x7f52c934ef80
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c985d080
  6314 ms  0x7487 PK11_Derive()
  6314 ms  0x7487 basekey:0x7f52c9318a00
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c985d180
  6314 ms  0x7487 PK11_DeriveWithFlags()
  6314 ms  0x7487 basekey:0x7f52c985d180
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c934ef80
  6314 ms  0x7487 PK11_DeriveWithFlags()
  6314 ms  0x7487 basekey:0x7f52c985d180
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c9318a00
  6314 ms  0x7487 PK11_DeriveWithFlags()
  6314 ms  0x7487 basekey:0x7f52c985d180
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c985d080
  6314 ms  0x7487 PK11_Derive()
  6314 ms  0x7487 basekey:0x7f52c985d800
  6314 ms     | 0x7487 PK11_DeriveWithTemplate()
  6314 ms  0x7487 ret:0x7f52c985da00
  6314 ms  0x7487 PK11_DeriveWithFlags()
  6314 ms  0x7487 basekey:0x7f52c9318a00
  6315 ms     | 0x7487 PK11_DeriveWithTemplate()
  6315 ms  0x7487 ret:0x7f52c985d180
  6315 ms  0x7487 PK11_DeriveWithFlags()
  6315 ms  0x7487 basekey:0x7f52c9318a00
  6315 ms     | 0x7487 PK11_DeriveWithTemplate()
  6315 ms  0x7487 ret:0x7f52c985d080
  7323 ms  SECKEY_ECParamsToKeySize()
  7323 ms  0x7487 ret:0x100
  7324 ms  SECKEY_ECParamsToBasePointOrderLen()
  7324 ms  0x7487 ret:0x100
  7324 ms  SECKEY_ECParamsToBasePointOrderLen()
  7324 ms  0x7487 ret:0x100
  7324 ms  0x7487 EC_ValidatePublicKey()
  7329 ms  0x7487 ret:0x0
  7336 ms  0x7487 PK11_DeriveWithFlags()
  7336 ms  0x7487 basekey:0x7f52c9318a00
  7336 ms     | 0x7487 PK11_DeriveWithTemplate()
  7336 ms  0x7487 ret:0x7f52c985d080
  7337 ms  0x7487 SSL_AuthCertificateComplete()
  7337 ms  0x7487 fd:0x7f52c98e5fd0
  7337 ms  0x7487 err:0x0
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c9362000
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c985d080
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c9362000
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c985d800
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c9362000
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c9555700
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c9318700
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c9555800
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c9318700
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c9555880
  7337 ms     | 0x7487 PK11_DeriveWithFlags()
  7337 ms     | 0x7487 basekey:0x7f52c985d800
  7337 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7337 ms     | 0x7487 ret:0x7f52c9555880
  7338 ms     | 0x7487 PK11_DeriveWithFlags()
  7338 ms     | 0x7487 basekey:0x7f52c985d800
  7338 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7338 ms     | 0x7487 ret:0x7f52c9555900
  7338 ms     | 0x7487 PK11_DeriveWithFlags()
  7338 ms     | 0x7487 basekey:0x7f52c9318700
  7338 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7338 ms     | 0x7487 ret:0x7f52c9335b80
  7338 ms     | 0x7487 PK11_Encrypt()
  7338 ms     | 0x7487 symkey:0x7f52c9555800
  7338 ms     | 0x7487 PK11_DeriveWithFlags()
  7338 ms     | 0x7487 basekey:0x7f52c985d080
  7338 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7338 ms     | 0x7487 ret:0x7f52c9335b80
  7338 ms     | 0x7487 PK11_DeriveWithFlags()
  7338 ms     | 0x7487 basekey:0x7f52c985d080
  7338 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7339 ms     | 0x7487 ret:0x7f52c9555900
  7339 ms     | 0x7487 PK11_DeriveWithFlags()
  7339 ms     | 0x7487 basekey:0x7f52c9362000
  7339 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  7339 ms     | 0x7487 ret:0x7f52c9555800
  7339 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  7339 ms     | 0x7487 privk:0x7f52c9875820::7f52c9875820  90 22 5b c9                                      ."[.
  7339 ms     | 0x7487 privk:0x7f52c9875820::7f52c9875820  e5 e5 e5 e5                                      ....
  7339 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  7339 ms     | 0x7487 privk:0x7f52c9606820::7f52c9606820  e0 ec 59 c9                                      ..Y.
  7339 ms     | 0x7487 privk:0x7f52c9606820::7f52c9606820  e5 e5 e5 e5                                      ....
  7342 ms  0x7487 PK11_Encrypt()
  7342 ms  0x7487 symkey:0x7f52c9335b80
  7342 ms  0x7487 PK11_Encrypt()
  7342 ms  0x7487 symkey:0x7f52c9335b80
  7343 ms  0x7487 PK11_Derive()
  7343 ms  0x7487 basekey:0x7f52e49db380
  7345 ms     | 0x7487 PK11_DeriveWithTemplate()
  7345 ms  0x7487 ret:0x7f52c9318700
  7345 ms  0x7487 PK11_PubDeriveWithKDF()
  7345 ms  0x7487 seckey:0x7f52c9238020
  7345 ms     | 0x7487 EC_ValidatePublicKey()
  7345 ms     | 0x7487 ret:0x0
  7347 ms  0x7487 ret:0x7f52e49db380
  7347 ms  SECKEY_ECParamsToKeySize()
  7347 ms  0x7487 ret:0xff
  7347 ms  0x7487 PK11_DeriveWithFlags()
  7347 ms  0x7487 basekey:0x7f52c9318700
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52c9362000
  7347 ms  0x7487 PK11_Derive()
  7347 ms  0x7487 basekey:0x7f52e49db380
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52c9555900
  7347 ms  0x7487 PK11_DeriveWithFlags()
  7347 ms  0x7487 basekey:0x7f52c9555900
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52c9318700
  7347 ms  0x7487 PK11_DeriveWithFlags()
  7347 ms  0x7487 basekey:0x7f52c9555900
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52e49db380
  7347 ms  0x7487 PK11_DeriveWithFlags()
  7347 ms  0x7487 basekey:0x7f52c9555900
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52c9362000
  7347 ms  0x7487 PK11_Derive()
  7347 ms  0x7487 basekey:0x7f52c9593880
  7347 ms     | 0x7487 PK11_DeriveWithTemplate()
  7347 ms  0x7487 ret:0x7f52c9623500
  7347 ms  0x7487 PK11_DeriveWithFlags()
  7347 ms  0x7487 basekey:0x7f52e49db380
  7348 ms     | 0x7487 PK11_DeriveWithTemplate()
  7348 ms  0x7487 ret:0x7f52c9555900
  7348 ms  0x7487 PK11_DeriveWithFlags()
  7348 ms  0x7487 basekey:0x7f52e49db380
  7348 ms     | 0x7487 PK11_DeriveWithTemplate()
  7348 ms  0x7487 ret:0x7f52c9362000
  7350 ms  0x7487 PK11_DeriveWithFlags()
  7350 ms  0x7487 basekey:0x7f52e49db380
  7350 ms     | 0x7487 PK11_DeriveWithTemplate()
  7350 ms  0x7487 ret:0x7f52c9362000
  7351 ms  0x7487 SSL_ImportFD()
  7351 ms  0x7487 ret:0x7f52c9595280
  7351 ms  0x7487 SSL_AuthCertificateHook()
  7351 ms  0x7487 fd:0x7f52c9595280
  7351 ms  0x7487 ret:0x0
  7351 ms  0x7487 PR_Connect()
  7351 ms  0x7487 fd:0x7f52c9595280
  7352 ms  0x7487 SSL_ImportFD()
  7352 ms  0x7487 ret:0x7f52c93fe580
  7352 ms  0x7487 SSL_AuthCertificateHook()
  7352 ms  0x7487 fd:0x7f52c93fe580
  7352 ms  0x7487 ret:0x0
  7352 ms  0x7487 PR_Connect()
  7352 ms  0x7487 fd:0x7f52c93fe580
  7352 ms  0x7487 SSL_ImportFD()
  7352 ms  0x7487 ret:0x7f52c93fe670
  7352 ms  0x7487 SSL_AuthCertificateHook()
  7352 ms  0x7487 fd:0x7f52c93fe670
  7352 ms  0x7487 ret:0x0
  7353 ms  0x7487 PR_Connect()
  7353 ms  0x7487 fd:0x7f52c93fe670
  7353 ms  0x7487 SSL_ImportFD()
  7353 ms  0x7487 ret:0x7f52c93fe760
  7353 ms  0x7487 SSL_AuthCertificateHook()
  7353 ms  0x7487 fd:0x7f52c93fe760
  7353 ms  0x7487 ret:0x0
  7354 ms  0x7487 PR_Connect()
  7354 ms  0x7487 fd:0x7f52c93fe760
  7354 ms  0x7487 SSL_ImportFD()
  7354 ms  0x7487 ret:0x7f52c93fe850
  7354 ms  0x7487 SSL_AuthCertificateHook()
  7354 ms  0x7487 fd:0x7f52c93fe850
  7354 ms  0x7487 ret:0x0
  7354 ms  0x7487 PR_Connect()
  7354 ms  0x7487 fd:0x7f52c93fe850
  7355 ms  0x7487 SSL_ImportFD()
  7355 ms  0x7487 ret:0x7f52c93fe940
  7355 ms  0x7487 SSL_AuthCertificateHook()
  7355 ms  0x7487 fd:0x7f52c93fe940
  7355 ms  0x7487 ret:0x0
  7355 ms  0x7487 PR_Connect()
  7355 ms  0x7487 fd:0x7f52c93fe940
  7356 ms  0x7487 PR_Connect()
  7356 ms  0x7487 fd:0x7f52c93feee0
  7356 ms  0x7487 PR_Connect()
  7356 ms  0x7487 fd:0x7f52c9595160
  7379 ms  0x7487 PK11_DeriveWithFlags()
  7379 ms  0x7487 basekey:0x7f52c9555800
  7379 ms     | 0x7487 PK11_DeriveWithTemplate()
  7379 ms  0x7487 ret:0x7f52c9362000
  7379 ms  0x7487 PK11_DeriveWithFlags()
  7379 ms  0x7487 basekey:0x7f52c9555800
  7379 ms     | 0x7487 PK11_DeriveWithTemplate()
  7379 ms  0x7487 ret:0x7f52c9362000
  7379 ms  0x7487 PK11_Encrypt()
  7379 ms  0x7487 symkey:0x7f52c9335b80
  7389 ms  0x7487 SECKEY_CreateECPrivateKey()
  7389 ms  0x7487 cx:0x7f52c9bfdde8
  7389 ms     | 0x7487 EC_ValidatePublicKey()
  7389 ms     | 0x7487 ret:0x0
  7390 ms  0x7487 ret:0x7f52c93b7820::7f52c93b7820  40 e2 84 c9                                      @...
  7390 ms  0x7487 SECKEY_CreateECPrivateKey()
  7390 ms  0x7487 cx:0x7f52c9bfdde8
  7391 ms     | 0x7487 EC_ValidatePublicKey()
  7393 ms     | 0x7487 ret:0x0
  7393 ms  0x7487 ret:0x7f52c93c1820::7f52c93c1820  40 ec 84 c9                                      @...
  7395 ms  0x7487 SECKEY_CreateECPrivateKey()
  7395 ms  0x7487 cx:0x7f52c9bfe608
  7395 ms     | 0x7487 EC_ValidatePublicKey()
  7395 ms     | 0x7487 ret:0x0
  7395 ms  0x7487 ret:0x7f52c9604820::7f52c9604820  b0 b0 86 c9                                      ....
  7395 ms  0x7487 SECKEY_CreateECPrivateKey()
  7395 ms  0x7487 cx:0x7f52c9bfe608
  7396 ms     | 0x7487 EC_ValidatePublicKey()
  7399 ms     | 0x7487 ret:0x0
  7399 ms  0x7487 ret:0x7f52c9617820::7f52c9617820  c0 b4 86 c9                                      ....
  7399 ms  0x7487 SECKEY_CreateECPrivateKey()
  7399 ms  0x7487 cx:0x7f52c9bfe468
  7400 ms     | 0x7487 EC_ValidatePublicKey()
  7400 ms     | 0x7487 ret:0x0
  7400 ms  0x7487 ret:0x7f52c9888820::7f52c9888820  70 f9 8d c9                                      p...
  7400 ms  0x7487 SECKEY_CreateECPrivateKey()
  7400 ms  0x7487 cx:0x7f52c9bfe468
  7401 ms     | 0x7487 EC_ValidatePublicKey()
  7403 ms     | 0x7487 ret:0x0
  7403 ms  0x7487 ret:0x7f52c988c820::7f52c988c820  50 e1 b3 c9                                      P...
  7403 ms  0x7487 SECKEY_CreateECPrivateKey()
  7403 ms  0x7487 cx:0x7f52c9bfe2c8
  7404 ms     | 0x7487 EC_ValidatePublicKey()
  7404 ms     | 0x7487 ret:0x0
  7404 ms  0x7487 ret:0x7f52c9b47820::7f52c9b47820  e0 e2 b3 c9                                      ....
  7404 ms  0x7487 SECKEY_CreateECPrivateKey()
  7404 ms  0x7487 cx:0x7f52c9bfe2c8
  7405 ms     | 0x7487 EC_ValidatePublicKey()
  7407 ms     | 0x7487 ret:0x0
  7407 ms  0x7487 ret:0x7f52c9b4a020::7f52c9b4a020  60 e5 b3 c9                                      `...
  7407 ms  0x7487 SECKEY_CreateECPrivateKey()
  7407 ms  0x7487 cx:0x7f52c9bfe128
  7408 ms     | 0x7487 EC_ValidatePublicKey()
  7408 ms     | 0x7487 ret:0x0
  7408 ms  0x7487 ret:0x7f52c9b4d820::7f52c9b4d820  a0 e6 b3 c9                                      ....
  7408 ms  0x7487 SECKEY_CreateECPrivateKey()
  7408 ms  0x7487 cx:0x7f52c9bfe128
  7409 ms     | 0x7487 EC_ValidatePublicKey()
  7411 ms     | 0x7487 ret:0x0
  7411 ms  0x7487 ret:0x7f52c9b52820::7f52c9b52820  d0 e8 b3 c9                                      ....
  7411 ms  0x7487 SECKEY_CreateECPrivateKey()
  7411 ms  0x7487 cx:0x7f52c9bfdf88
  7412 ms     | 0x7487 EC_ValidatePublicKey()
  7412 ms     | 0x7487 ret:0x0
  7412 ms  0x7487 ret:0x7f52c9b56020::7f52c9b56020  60 ea b3 c9                                      `...
  7412 ms  0x7487 SECKEY_CreateECPrivateKey()
  7412 ms  0x7487 cx:0x7f52c9bfdf88
  7412 ms     | 0x7487 EC_ValidatePublicKey()
  7414 ms     | 0x7487 ret:0x0
  7414 ms  0x7487 ret:0x7f52c9b5e820::7f52c9b5e820  e0 ec b3 c9                                      ....
           /* TID 0x748f */
  7423 ms  0x748f PR_Close()
  7423 ms  0x748f fd:0x7f52c932c100
           /* TID 0x7487 */
  7432 ms  SECKEY_ECParamsToKeySize()
  7432 ms  0x7487 ret:0x100
  7432 ms  0x7487 SECKEY_CreateECPrivateKey()
  7432 ms  0x7487 cx:0x7f52c9bfdde8
  7432 ms     | 0x7487 EC_ValidatePublicKey()
  7434 ms     | 0x7487 ret:0x0
  7434 ms  0x7487 ret:0x7f52db3ba820::7f52db3ba820  f0 81 b7 c9                                      ....
  7434 ms  0x7487 PK11_PubDeriveWithKDF()
  7434 ms  0x7487 seckey:0x7f52db3ba820
  7434 ms     | 0x7487 EC_ValidatePublicKey()
  7435 ms     | 0x7487 ret:0x0
           /* TID 0x7526 */
  7437 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7437 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  7439 ms  0x7487 ret:0x7f52c9362000
  7439 ms  0x7487 PK11_DeriveWithFlags()
  7439 ms  0x7487 basekey:0x7f52c9362000
  7439 ms     | 0x7487 PK11_DeriveWithTemplate()
  7439 ms  0x7487 ret:0x7f52c9593880
  7439 ms  0x7487 PK11_Derive()
  7439 ms  0x7487 basekey:0x7f52c9593880
  7439 ms     | 0x7487 PK11_DeriveWithTemplate()
  7439 ms  0x7487 ret:0x7f52c9807a00
  7439 ms  0x7487 SECKEY_DestroyPrivateKey()
  7439 ms  0x7487 privk:0x7f52db3ba820::7f52db3ba820  f0 81 b7 c9                                      ....
  7439 ms  0x7487 privk:0x7f52db3ba820::7f52db3ba820  e5 e5 e5 e5                                      ....
  7439 ms  0x7487 PK11_Encrypt()
  7439 ms  0x7487 symkey:0x7f52c9807b80
  7440 ms  SECKEY_ECParamsToKeySize()
  7440 ms  0x7487 ret:0x100
  7440 ms  0x7487 SECKEY_CreateECPrivateKey()
  7440 ms  0x7487 cx:0x7f52c9bfe608
  7440 ms     | 0x7487 EC_ValidatePublicKey()
  7443 ms     | 0x7487 ret:0x0
           /* TID 0x7526 */
  7443 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7443 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  7444 ms  0x7487 ret:0x7f52db3b8820::7f52db3b8820  00 86 b7 c9                                      ....
  7444 ms  0x7487 PK11_PubDeriveWithKDF()
  7444 ms  0x7487 seckey:0x7f52db3b8820
  7444 ms     | 0x7487 EC_ValidatePublicKey()
  7446 ms     | 0x7487 ret:0x0
  7447 ms  0x7487 ret:0x7f52c9362000
  7447 ms  0x7487 PK11_DeriveWithFlags()
  7447 ms  0x7487 basekey:0x7f52c9362000
  7447 ms     | 0x7487 PK11_DeriveWithTemplate()
  7447 ms  0x7487 ret:0x7f52c9807480
  7447 ms  0x7487 PK11_Derive()
  7447 ms  0x7487 basekey:0x7f52c9807480
  7447 ms     | 0x7487 PK11_DeriveWithTemplate()
  7447 ms  0x7487 ret:0x7f52c9807500
  7447 ms  0x7487 SECKEY_DestroyPrivateKey()
  7447 ms  0x7487 privk:0x7f52db3b8820::7f52db3b8820  00 86 b7 c9                                      ....
  7447 ms  0x7487 privk:0x7f52db3b8820::7f52db3b8820  e5 e5 e5 e5                                      ....
  7447 ms  0x7487 PK11_Encrypt()
  7447 ms  0x7487 symkey:0x7f52c9807680
  7447 ms  0x7487 SSL_AuthCertificateComplete()
  7447 ms  0x7487 fd:0x7f52c9595280
  7447 ms  0x7487 err:0x0
  7447 ms  0x7487 SSL_AuthCertificateComplete()
  7447 ms  0x7487 fd:0x7f52c93fe940
  7447 ms  0x7487 err:0x0
  7448 ms  0x7487 PK11_Encrypt()
  7448 ms  0x7487 symkey:0x7f52c9807680
           /* TID 0x7526 */
  7449 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7449 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  7449 ms  SECKEY_ECParamsToKeySize()
  7449 ms  0x7487 ret:0x100
  7449 ms  0x7487 SECKEY_CreateECPrivateKey()
  7449 ms  0x7487 cx:0x7f52c9bfe468
  7449 ms     | 0x7487 EC_ValidatePublicKey()
  7451 ms     | 0x7487 ret:0x0
  7451 ms  0x7487 ret:0x7f52df4a9020::7f52df4a9020  f0 86 b7 c9                                      ....
  7451 ms  0x7487 PK11_PubDeriveWithKDF()
  7451 ms  0x7487 seckey:0x7f52df4a9020
  7451 ms     | 0x7487 EC_ValidatePublicKey()
  7453 ms     | 0x7487 ret:0x0
  7454 ms  0x7487 ret:0x7f52c9362000
  7454 ms  0x7487 PK11_DeriveWithFlags()
  7454 ms  0x7487 basekey:0x7f52c9362000
  7454 ms     | 0x7487 PK11_DeriveWithTemplate()
  7454 ms  0x7487 ret:0x7f52c9807780
  7454 ms  0x7487 PK11_Derive()
  7454 ms  0x7487 basekey:0x7f52c9807780
  7454 ms     | 0x7487 PK11_DeriveWithTemplate()
  7454 ms  0x7487 ret:0x7f52c9807880
  7454 ms  0x7487 SECKEY_DestroyPrivateKey()
  7454 ms  0x7487 privk:0x7f52df4a9020::7f52df4a9020  f0 86 b7 c9                                      ....
  7454 ms  0x7487 privk:0x7f52df4a9020::7f52df4a9020  e5 e5 e5 e5                                      ....
  7454 ms  0x7487 PK11_Encrypt()
  7454 ms  0x7487 symkey:0x7f52c9807c80
           /* TID 0x7527 */
  7455 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7455 ms  0x7527 ret:0x0
           /* TID 0x7487 */
  7455 ms  SECKEY_ECParamsToKeySize()
  7455 ms  0x7487 ret:0x100
  7455 ms  0x7487 SECKEY_CreateECPrivateKey()
  7455 ms  0x7487 cx:0x7f52c9bfe2c8
  7456 ms     | 0x7487 EC_ValidatePublicKey()
  7457 ms     | 0x7487 ret:0x0
  7457 ms  0x7487 ret:0x7f52df4a9820::7f52df4a9820  30 88 b7 c9                                      0...
  7457 ms  0x7487 PK11_PubDeriveWithKDF()
  7457 ms  0x7487 seckey:0x7f52df4a9820
  7457 ms     | 0x7487 EC_ValidatePublicKey()
  7459 ms     | 0x7487 ret:0x0
  7460 ms  0x7487 ret:0x7f52c9362000
  7460 ms  0x7487 PK11_DeriveWithFlags()
  7460 ms  0x7487 basekey:0x7f52c9362000
  7460 ms     | 0x7487 PK11_DeriveWithTemplate()
  7460 ms  0x7487 ret:0x7f52c9807e00
  7460 ms  0x7487 PK11_Derive()
  7460 ms  0x7487 basekey:0x7f52c9807e00
  7460 ms     | 0x7487 PK11_DeriveWithTemplate()
  7460 ms  0x7487 ret:0x7f52c9807e80
  7460 ms  0x7487 SECKEY_DestroyPrivateKey()
  7460 ms  0x7487 privk:0x7f52df4a9820::7f52df4a9820  30 88 b7 c9                                      0...
  7460 ms  0x7487 privk:0x7f52df4a9820::7f52df4a9820  e5 e5 e5 e5                                      ....
  7461 ms  0x7487 PK11_Encrypt()
  7461 ms  0x7487 symkey:0x7f52c9808000
  7461 ms  0x7487 PK11_Encrypt()
  7461 ms  0x7487 symkey:0x7f52c9807b80
  7461 ms  0x7487 SSL_AuthCertificateComplete()
  7461 ms  0x7487 fd:0x7f52c93fe850
  7461 ms  0x7487 err:0x0
  7461 ms  0x7487 SSL_AuthCertificateComplete()
  7461 ms  0x7487 fd:0x7f52c93fe760
  7461 ms  0x7487 err:0x0
  7461 ms  0x7487 PK11_Encrypt()
  7461 ms  0x7487 symkey:0x7f52c9807c80
  7462 ms  0x7487 PK11_Encrypt()
  7462 ms  0x7487 symkey:0x7f52c9808000
           /* TID 0x7526 */
  7462 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7463 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  7463 ms  SECKEY_ECParamsToKeySize()
  7463 ms  0x7487 ret:0x100
  7463 ms  0x7487 SECKEY_CreateECPrivateKey()
  7463 ms  0x7487 cx:0x7f52c9bfe128
  7463 ms     | 0x7487 EC_ValidatePublicKey()
  7465 ms     | 0x7487 ret:0x0
  7465 ms  0x7487 ret:0x7f52df4aa020::7f52df4aa020  d0 88 b7 c9                                      ....
  7465 ms  0x7487 PK11_PubDeriveWithKDF()
  7465 ms  0x7487 seckey:0x7f52df4aa020
  7465 ms     | 0x7487 EC_ValidatePublicKey()
  7466 ms     | 0x7487 ret:0x0
  7468 ms  0x7487 ret:0x7f52c9362000
  7468 ms  0x7487 PK11_DeriveWithFlags()
  7468 ms  0x7487 basekey:0x7f52c9362000
  7468 ms     | 0x7487 PK11_DeriveWithTemplate()
  7468 ms  0x7487 ret:0x7f52c9808180
  7468 ms  0x7487 PK11_Derive()
  7468 ms  0x7487 basekey:0x7f52c9808180
  7468 ms     | 0x7487 PK11_DeriveWithTemplate()
  7468 ms  0x7487 ret:0x7f52c9808200
  7468 ms  0x7487 SECKEY_DestroyPrivateKey()
  7468 ms  0x7487 privk:0x7f52df4aa020::7f52df4aa020  d0 88 b7 c9                                      ....
  7468 ms  0x7487 privk:0x7f52df4aa020::7f52df4aa020  e5 e5 e5 e5                                      ....
  7468 ms  0x7487 PK11_Encrypt()
  7468 ms  0x7487 symkey:0x7f52c9808380
           /* TID 0x7527 */
  7469 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7469 ms  0x7527 ret:0x0
           /* TID 0x7487 */
  7469 ms  SECKEY_ECParamsToKeySize()
  7469 ms  0x7487 ret:0x100
  7469 ms  0x7487 SECKEY_CreateECPrivateKey()
  7469 ms  0x7487 cx:0x7f52c9bfdf88
  7469 ms     | 0x7487 EC_ValidatePublicKey()
  7471 ms     | 0x7487 ret:0x0
  7471 ms  0x7487 ret:0x7f52df4aa820::7f52df4aa820  70 89 b7 c9                                      p...
  7471 ms  0x7487 PK11_PubDeriveWithKDF()
  7471 ms  0x7487 seckey:0x7f52df4aa820
  7471 ms     | 0x7487 EC_ValidatePublicKey()
  7472 ms     | 0x7487 ret:0x0
  7474 ms  0x7487 ret:0x7f52c9362000
  7474 ms  0x7487 PK11_DeriveWithFlags()
  7474 ms  0x7487 basekey:0x7f52c9362000
  7474 ms     | 0x7487 PK11_DeriveWithTemplate()
  7474 ms  0x7487 ret:0x7f52c9808e80
  7474 ms  0x7487 PK11_Derive()
  7474 ms  0x7487 basekey:0x7f52c9808e80
  7474 ms     | 0x7487 PK11_DeriveWithTemplate()
  7474 ms  0x7487 ret:0x7f52c985c580
  7474 ms  0x7487 SECKEY_DestroyPrivateKey()
  7474 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  70 89 b7 c9                                      p...
  7474 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  e5 e5 e5 e5                                      ....
  7474 ms  0x7487 PK11_Encrypt()
  7474 ms  0x7487 symkey:0x7f52c9b3c080
  7474 ms  0x7487 SSL_AuthCertificateComplete()
  7474 ms  0x7487 fd:0x7f52c93fe670
  7474 ms  0x7487 err:0x0
  7474 ms  0x7487 SSL_AuthCertificateComplete()
  7474 ms  0x7487 fd:0x7f52c93fe580
  7474 ms  0x7487 err:0x0
  7474 ms  0x7487 PK11_Encrypt()
  7474 ms  0x7487 symkey:0x7f52c9808380
  7475 ms  0x7487 PK11_Encrypt()
  7475 ms  0x7487 symkey:0x7f52c9b3c080
  7476 ms  0x7487 SECKEY_DestroyPrivateKey()
  7476 ms  0x7487 privk:0x7f52c93c1820::7f52c93c1820  40 ec 84 c9                                      @...
  7476 ms  0x7487 privk:0x7f52c93c1820::7f52c93c1820  e5 e5 e5 e5                                      ....
  7476 ms  0x7487 SECKEY_DestroyPrivateKey()
  7476 ms  0x7487 privk:0x7f52c93b7820::7f52c93b7820  40 e2 84 c9                                      @...
  7476 ms  0x7487 privk:0x7f52c93b7820::7f52c93b7820  e5 e5 e5 e5                                      ....
  7487 ms  0x7487 SECKEY_DestroyPrivateKey()
  7487 ms  0x7487 privk:0x7f52c9617820::7f52c9617820  c0 b4 86 c9                                      ....
  7488 ms  0x7487 privk:0x7f52c9617820::7f52c9617820  e5 e5 e5 e5                                      ....
  7488 ms  0x7487 SECKEY_DestroyPrivateKey()
  7488 ms  0x7487 privk:0x7f52c9604820::7f52c9604820  b0 b0 86 c9                                      ....
  7488 ms  0x7487 privk:0x7f52c9604820::7f52c9604820  e5 e5 e5 e5                                      ....
  7491 ms  0x7487 SECKEY_DestroyPrivateKey()
  7491 ms  0x7487 privk:0x7f52c988c820::7f52c988c820  50 e1 b3 c9                                      P...
  7491 ms  0x7487 privk:0x7f52c988c820::7f52c988c820  e5 e5 e5 e5                                      ....
  7491 ms  0x7487 SECKEY_DestroyPrivateKey()
  7491 ms  0x7487 privk:0x7f52c9888820::7f52c9888820  70 f9 8d c9                                      p...
  7491 ms  0x7487 privk:0x7f52c9888820::7f52c9888820  e5 e5 e5 e5                                      ....
  7497 ms  0x7487 SECKEY_DestroyPrivateKey()
  7497 ms  0x7487 privk:0x7f52c9b4a020::7f52c9b4a020  60 e5 b3 c9                                      `...
  7498 ms  0x7487 privk:0x7f52c9b4a020::7f52c9b4a020  e5 e5 e5 e5                                      ....
  7498 ms  0x7487 SECKEY_DestroyPrivateKey()
  7498 ms  0x7487 privk:0x7f52c9b47820::7f52c9b47820  e0 e2 b3 c9                                      ....
  7498 ms  0x7487 privk:0x7f52c9b47820::7f52c9b47820  e5 e5 e5 e5                                      ....
  7505 ms  0x7487 SECKEY_DestroyPrivateKey()
  7505 ms  0x7487 privk:0x7f52c9b52820::7f52c9b52820  d0 e8 b3 c9                                      ....
  7505 ms  0x7487 privk:0x7f52c9b52820::7f52c9b52820  e5 e5 e5 e5                                      ....
  7505 ms  0x7487 SECKEY_DestroyPrivateKey()
  7505 ms  0x7487 privk:0x7f52c9b4d820::7f52c9b4d820  a0 e6 b3 c9                                      ....
  7505 ms  0x7487 privk:0x7f52c9b4d820::7f52c9b4d820  e5 e5 e5 e5                                      ....
  7511 ms  0x7487 SECKEY_DestroyPrivateKey()
  7511 ms  0x7487 privk:0x7f52c9b5e820::7f52c9b5e820  e0 ec b3 c9                                      ....
  7511 ms  0x7487 privk:0x7f52c9b5e820::7f52c9b5e820  e5 e5 e5 e5                                      ....
  7511 ms  0x7487 SECKEY_DestroyPrivateKey()
  7511 ms  0x7487 privk:0x7f52c9b56020::7f52c9b56020  60 ea b3 c9                                      `...
  7511 ms  0x7487 privk:0x7f52c9b56020::7f52c9b56020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
  7515 ms  0x748f PR_Close()
  7515 ms  0x748f fd:0x7f52c930ddf0
  7523 ms  0x748f PR_Close()
  7523 ms  0x748f fd:0x7f52c930ddf0
  7529 ms  0x748f PR_Close()
  7529 ms  0x748f fd:0x7f52c932c220
  7535 ms  0x748f PR_Close()
  7535 ms  0x748f fd:0x7f52c932c1c0
  7548 ms  0x748f PR_Close()
  7548 ms  0x748f fd:0x7f52c932c160
  7559 ms  0x748f PR_Close()
  7559 ms  0x748f fd:0x7f52c932c0d0
           /* TID 0x7525 */
  7559 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7559 ms  0x7525 ret:0x0
           /* TID 0x748f */
  7561 ms  0x748f PR_Close()
  7561 ms  0x748f fd:0x7f52c93feb80
           /* TID 0x74e3 */
  7561 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7561 ms  0x74e3 ret:0x0
           /* TID 0x748f */
  7592 ms  0x748f PR_Close()
  7592 ms  0x748f fd:0x7f52c932c160
           /* TID 0x7487 */
  9567 ms  0x7487 SSL_AuthCertificateComplete()
  9567 ms  0x7487 fd:0x7f52c93fe610
  9567 ms  0x7487 err:0x0
  9567 ms     | 0x7487 PK11_DeriveWithFlags()
  9567 ms     | 0x7487 basekey:0x7f52c985da00
  9567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9567 ms     | 0x7487 ret:0x7f52c9362000
  9567 ms     | 0x7487 PK11_DeriveWithFlags()
  9567 ms     | 0x7487 basekey:0x7f52c985da00
  9567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9567 ms     | 0x7487 ret:0x7f52c9b3d100
  9567 ms     | 0x7487 PK11_DeriveWithFlags()
  9567 ms     | 0x7487 basekey:0x7f52c985da00
  9567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9567 ms     | 0x7487 ret:0x7f52c9b3d180
  9567 ms     | 0x7487 PK11_DeriveWithFlags()
  9567 ms     | 0x7487 basekey:0x7f52c934ef80
  9567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9568 ms     | 0x7487 ret:0x7f52c9b3d200
  9568 ms     | 0x7487 PK11_DeriveWithFlags()
  9568 ms     | 0x7487 basekey:0x7f52c934ef80
  9568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9568 ms     | 0x7487 ret:0x7f52c9b3d280
  9568 ms     | 0x7487 PK11_DeriveWithFlags()
  9568 ms     | 0x7487 basekey:0x7f52c9b3d100
  9568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9568 ms     | 0x7487 ret:0x7f52c9b3d280
  9568 ms     | 0x7487 PK11_DeriveWithFlags()
  9568 ms     | 0x7487 basekey:0x7f52c9b3d100
  9568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9568 ms     | 0x7487 ret:0x7f52c9b3d300
  9568 ms     | 0x7487 PK11_DeriveWithFlags()
  9568 ms     | 0x7487 basekey:0x7f52c934ef80
  9568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9568 ms     | 0x7487 ret:0x7f52c985d180
  9568 ms     | 0x7487 PK11_Encrypt()
  9568 ms     | 0x7487 symkey:0x7f52c9b3d200
  9569 ms     | 0x7487 PK11_DeriveWithFlags()
  9569 ms     | 0x7487 basekey:0x7f52c9362000
  9569 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9569 ms     | 0x7487 ret:0x7f52c985d180
  9569 ms     | 0x7487 PK11_DeriveWithFlags()
  9569 ms     | 0x7487 basekey:0x7f52c9362000
  9569 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9569 ms     | 0x7487 ret:0x7f52c9b3d300
  9569 ms     | 0x7487 PK11_DeriveWithFlags()
  9569 ms     | 0x7487 basekey:0x7f52c985da00
  9569 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9570 ms     | 0x7487 ret:0x7f52c9b3d200
  9571 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  9571 ms     | 0x7487 privk:0x7f52c93c0820::7f52c93c0820  20 e9 59 c9                                       .Y.
  9571 ms     | 0x7487 privk:0x7f52c93c0820::7f52c93c0820  e5 e5 e5 e5                                      ....
  9571 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  9571 ms     | 0x7487 privk:0x7f52c93be820::7f52c93be820  a0 0b 59 c9                                      ..Y.
  9571 ms     | 0x7487 privk:0x7f52c93be820::7f52c93be820  e5 e5 e5 e5                                      ....
  9571 ms  0x7487 PK11_Encrypt()
  9571 ms  0x7487 symkey:0x7f52c985d180
  9571 ms  0x7487 PK11_Encrypt()
  9571 ms  0x7487 symkey:0x7f52c985d180
  9571 ms  0x7487 SSL_AuthCertificateComplete()
  9571 ms  0x7487 fd:0x7f52c9595d00
  9571 ms  0x7487 err:0x0
  9571 ms     | 0x7487 PK11_DeriveWithFlags()
  9571 ms     | 0x7487 basekey:0x7f52c9623500
  9571 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9571 ms     | 0x7487 ret:0x7f52c9318a00
  9571 ms     | 0x7487 PK11_DeriveWithFlags()
  9571 ms     | 0x7487 basekey:0x7f52c9623500
  9571 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9571 ms     | 0x7487 ret:0x7f52c934ef80
  9571 ms     | 0x7487 PK11_DeriveWithFlags()
  9571 ms     | 0x7487 basekey:0x7f52c9623500
  9571 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c985da00
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9318700
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d300
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9318700
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d480
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c934ef80
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d480
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c934ef80
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d500
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9318700
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9555900
  9572 ms     | 0x7487 PK11_Encrypt()
  9572 ms     | 0x7487 symkey:0x7f52c9b3d300
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9318a00
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9555900
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9318a00
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d500
  9572 ms     | 0x7487 PK11_DeriveWithFlags()
  9572 ms     | 0x7487 basekey:0x7f52c9623500
  9572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
  9572 ms     | 0x7487 ret:0x7f52c9b3d300
  9572 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  9572 ms     | 0x7487 privk:0x7f52c923a020::7f52c923a020  80 28 5b c9                                      .([.
  9572 ms     | 0x7487 privk:0x7f52c923a020::7f52c923a020  e5 e5 e5 e5                                      ....
  9572 ms     | 0x7487 SECKEY_DestroyPrivateKey()
  9572 ms     | 0x7487 privk:0x7f52c9238020::7f52c9238020  c0 24 5b c9                                      .$[.
  9572 ms     | 0x7487 privk:0x7f52c9238020::7f52c9238020  e5 e5 e5 e5                                      ....
  9573 ms  0x7487 PK11_Encrypt()
  9573 ms  0x7487 symkey:0x7f52c9555900
  9573 ms  0x7487 PK11_Encrypt()
  9573 ms  0x7487 symkey:0x7f52c9555900
  9607 ms  0x7487 PK11_DeriveWithFlags()
  9607 ms  0x7487 basekey:0x7f52c9b3d200
  9607 ms     | 0x7487 PK11_DeriveWithTemplate()
  9607 ms  0x7487 ret:0x7f52e49db380
  9607 ms  0x7487 PK11_DeriveWithFlags()
  9607 ms  0x7487 basekey:0x7f52c9b3d200
  9607 ms     | 0x7487 PK11_DeriveWithTemplate()
  9607 ms  0x7487 ret:0x7f52e49db380
  9607 ms  0x7487 PK11_Encrypt()
  9607 ms  0x7487 symkey:0x7f52c985d180
  9610 ms  0x7487 PK11_DeriveWithFlags()
  9610 ms  0x7487 basekey:0x7f52c9b3d300
  9610 ms     | 0x7487 PK11_DeriveWithTemplate()
  9610 ms  0x7487 ret:0x7f52e49db380
  9610 ms  0x7487 PK11_DeriveWithFlags()
  9610 ms  0x7487 basekey:0x7f52c9b3d300
  9610 ms     | 0x7487 PK11_DeriveWithTemplate()
  9610 ms  0x7487 ret:0x7f52e49db380
  9610 ms  0x7487 PK11_Encrypt()
  9610 ms  0x7487 symkey:0x7f52c9555900
  9665 ms  0x7487 PK11_Encrypt()
  9665 ms  0x7487 symkey:0x7f52c985d180
           /* TID 0x748f */
  9670 ms  0x748f PR_Close()
  9670 ms  0x748f fd:0x7f52c9b7f100
           /* TID 0x7487 */
  9673 ms  0x7487 SSL_ImportFD()
  9673 ms  0x7487 ret:0x7f52c9b7f790
  9673 ms  0x7487 SSL_AuthCertificateHook()
  9673 ms  0x7487 fd:0x7f52c9b7f790
  9673 ms  0x7487 ret:0x0
  9673 ms  0x7487 PR_Connect()
  9673 ms  0x7487 fd:0x7f52c9b7f790
  9687 ms  0x7487 SSL_ImportFD()
  9687 ms  0x7487 ret:0x7f52c9b7f160
  9687 ms  0x7487 SSL_AuthCertificateHook()
  9687 ms  0x7487 fd:0x7f52c9b7f160
  9687 ms  0x7487 ret:0x0
  9687 ms  0x7487 PR_Connect()
  9687 ms  0x7487 fd:0x7f52c9b7f160
  9688 ms  0x7487 SSL_ImportFD()
  9688 ms  0x7487 ret:0x7f52c9b7f8b0
  9688 ms  0x7487 SSL_AuthCertificateHook()
  9688 ms  0x7487 fd:0x7f52c9b7f8b0
  9688 ms  0x7487 ret:0x0
  9688 ms  0x7487 PR_Connect()
  9688 ms  0x7487 fd:0x7f52c9b7f8b0
  9688 ms  0x7487 SSL_ImportFD()
  9688 ms  0x7487 ret:0x7f52c9b7f8e0
  9688 ms  0x7487 SSL_AuthCertificateHook()
  9688 ms  0x7487 fd:0x7f52c9b7f8e0
  9688 ms  0x7487 ret:0x0
  9688 ms  0x7487 PR_Connect()
  9688 ms  0x7487 fd:0x7f52c9b7f8e0
  9689 ms  0x7487 SSL_ImportFD()
  9689 ms  0x7487 ret:0x7f52c9b7f1f0
  9689 ms  0x7487 SSL_AuthCertificateHook()
  9689 ms  0x7487 fd:0x7f52c9b7f1f0
  9689 ms  0x7487 ret:0x0
  9689 ms  0x7487 PR_Connect()
  9689 ms  0x7487 fd:0x7f52c9b7f1f0
  9689 ms  0x7487 SSL_ImportFD()
  9689 ms  0x7487 ret:0x7f52c9b7f310
  9689 ms  0x7487 SSL_AuthCertificateHook()
  9689 ms  0x7487 fd:0x7f52c9b7f310
  9689 ms  0x7487 ret:0x0
  9689 ms  0x7487 PR_Connect()
  9689 ms  0x7487 fd:0x7f52c9b7f310
  9693 ms  0x7487 PR_Connect()
  9693 ms  0x7487 fd:0x7f52c9b7f1c0
  9694 ms  0x7487 PR_Connect()
  9694 ms  0x7487 fd:0x7f52c9b7f520
  9694 ms  0x7487 PR_Connect()
  9694 ms  0x7487 fd:0x7f52c9b7f5b0
  9695 ms  0x7487 PR_Connect()
  9695 ms  0x7487 fd:0x7f52c9b7f670
           /* TID 0x748f */
  9696 ms  0x748f PR_Close()
  9696 ms  0x748f fd:0x7f52c93fe160
           /* TID 0x7487 */
  9697 ms  0x7487 PK11_Encrypt()
  9697 ms  0x7487 symkey:0x7f52c9555900
  9698 ms  0x7487 PR_Connect()
  9698 ms  0x7487 fd:0x7f52db0cdc70
  9698 ms  0x7487 SSL_ImportFD()
  9698 ms  0x7487 ret:0x7f52c9b7f700
  9698 ms  0x7487 SSL_AuthCertificateHook()
  9698 ms  0x7487 fd:0x7f52c9b7f700
  9698 ms  0x7487 ret:0x0
  9698 ms  0x7487 PR_Connect()
  9698 ms  0x7487 fd:0x7f52c9b7f700
  9707 ms  0x7487 SSL_ImportFD()
  9707 ms  0x7487 ret:0x7f52db0cdee0
  9707 ms  0x7487 SSL_AuthCertificateHook()
  9707 ms  0x7487 fd:0x7f52db0cdee0
  9707 ms  0x7487 ret:0x0
  9707 ms  0x7487 PR_Connect()
  9707 ms  0x7487 fd:0x7f52db0cdee0
  9710 ms  0x7487 SECKEY_CreateECPrivateKey()
  9710 ms  0x7487 cx:0x7f52c9bfdaa8
  9711 ms     | 0x7487 EC_ValidatePublicKey()
  9711 ms     | 0x7487 ret:0x0
  9711 ms  0x7487 ret:0x7f52c923a020::7f52c923a020  d0 08 59 c9                                      ..Y.
  9711 ms  0x7487 SECKEY_CreateECPrivateKey()
  9711 ms  0x7487 cx:0x7f52c9bfdaa8
  9711 ms     | 0x7487 EC_ValidatePublicKey()
  9713 ms     | 0x7487 ret:0x0
  9713 ms  0x7487 ret:0x7f52c93b1820::7f52c93b1820  a0 21 5b c9                                      .![.
  9722 ms  0x7487 SSL_ImportFD()
  9722 ms  0x7487 ret:0x7f52db0d52e0
  9722 ms  0x7487 SSL_AuthCertificateHook()
  9722 ms  0x7487 fd:0x7f52db0d52e0
  9722 ms  0x7487 ret:0x0
  9722 ms  0x7487 PR_Connect()
  9722 ms  0x7487 fd:0x7f52db0d52e0
  9724 ms  0x7487 SECKEY_CreateECPrivateKey()
  9724 ms  0x7487 cx:0x7f52c9bff7e8
  9725 ms     | 0x7487 EC_ValidatePublicKey()
  9725 ms     | 0x7487 ret:0x0
  9725 ms  0x7487 ret:0x7f52c93b8820::7f52c93b8820  80 23 5b c9                                      .#[.
  9725 ms  0x7487 SECKEY_CreateECPrivateKey()
  9725 ms  0x7487 cx:0x7f52c9bff7e8
  9726 ms     | 0x7487 EC_ValidatePublicKey()
  9728 ms     | 0x7487 ret:0x0
  9728 ms  0x7487 ret:0x7f52c93be020::7f52c93be020  80 28 5b c9                                      .([.
  9729 ms  0x7487 SECKEY_CreateECPrivateKey()
  9729 ms  0x7487 cx:0x7f52c9bffe68
  9729 ms     | 0x7487 EC_ValidatePublicKey()
  9729 ms     | 0x7487 ret:0x0
  9729 ms  0x7487 ret:0x7f52c93c0820::7f52c93c0820  b0 ea 79 c9                                      ..y.
  9729 ms  0x7487 SECKEY_CreateECPrivateKey()
  9729 ms  0x7487 cx:0x7f52c9bffe68
  9734 ms     | 0x7487 EC_ValidatePublicKey()
  9735 ms     | 0x7487 ret:0x0
  9735 ms  0x7487 ret:0x7f52c9603020::7f52c9603020  d0 ed 84 c9                                      ....
  9739 ms  0x7487 SECKEY_CreateECPrivateKey()
  9739 ms  0x7487 cx:0x7f52c9bffcc8
  9739 ms     | 0x7487 EC_ValidatePublicKey()
  9739 ms     | 0x7487 ret:0x0
  9739 ms  0x7487 ret:0x7f52c9719820::7f52c9719820  d0 b3 86 c9                                      ....
  9740 ms  0x7487 SECKEY_CreateECPrivateKey()
  9740 ms  0x7487 cx:0x7f52c9bffcc8
  9740 ms     | 0x7487 EC_ValidatePublicKey()
  9742 ms     | 0x7487 ret:0x0
  9742 ms  0x7487 ret:0x7f52c988b020::7f52c988b020  70 f9 8d c9                                      p...
  9749 ms  0x7487 SECKEY_CreateECPrivateKey()
  9749 ms  0x7487 cx:0x7f52c9bffb28
  9750 ms     | 0x7487 EC_ValidatePublicKey()
  9750 ms     | 0x7487 ret:0x0
  9750 ms  0x7487 ret:0x7f52c9b48020::7f52c9b48020  50 e1 b3 c9                                      P...
  9750 ms  0x7487 SECKEY_CreateECPrivateKey()
  9750 ms  0x7487 cx:0x7f52c9bffb28
  9751 ms     | 0x7487 EC_ValidatePublicKey()
  9753 ms     | 0x7487 ret:0x0
  9753 ms  0x7487 ret:0x7f52c9b4a820::7f52c9b4a820  20 e4 b3 c9                                       ...
  9758 ms  0x7487 SECKEY_CreateECPrivateKey()
  9758 ms  0x7487 cx:0x7f52c9bff988
  9758 ms     | 0x7487 EC_ValidatePublicKey()
  9758 ms     | 0x7487 ret:0x0
  9758 ms  0x7487 ret:0x7f52c9b4e820::7f52c9b4e820  b0 e5 b3 c9                                      ....
  9758 ms  0x7487 SECKEY_CreateECPrivateKey()
  9758 ms  0x7487 cx:0x7f52c9bff988
  9760 ms     | 0x7487 EC_ValidatePublicKey()
  9761 ms     | 0x7487 ret:0x0
  9761 ms  0x7487 ret:0x7f52c9b54820::7f52c9b54820  e0 e7 b3 c9                                      ....
           /* TID 0x7526 */
  9767 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9767 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  9767 ms  SECKEY_ECParamsToKeySize()
  9767 ms  0x7487 ret:0x100
  9767 ms  0x7487 SECKEY_CreateECPrivateKey()
  9767 ms  0x7487 cx:0x7f52c9bfdaa8
  9768 ms     | 0x7487 EC_ValidatePublicKey()
  9769 ms     | 0x7487 ret:0x0
  9769 ms  0x7487 ret:0x7f52c9b5e820::7f52c9b5e820  50 eb b3 c9                                      P...
  9769 ms  0x7487 PK11_PubDeriveWithKDF()
  9769 ms  0x7487 seckey:0x7f52c9b5e820
  9769 ms     | 0x7487 EC_ValidatePublicKey()
  9770 ms     | 0x7487 ret:0x0
  9772 ms  0x7487 ret:0x7f52e49db380
  9772 ms  0x7487 PK11_DeriveWithFlags()
  9772 ms  0x7487 basekey:0x7f52e49db380
  9772 ms     | 0x7487 PK11_DeriveWithTemplate()
  9772 ms  0x7487 ret:0x7f52c9318700
  9772 ms  0x7487 PK11_Derive()
  9772 ms  0x7487 basekey:0x7f52c9318700
  9772 ms     | 0x7487 PK11_DeriveWithTemplate()
  9772 ms  0x7487 ret:0x7f52c9623500
  9772 ms  0x7487 SECKEY_DestroyPrivateKey()
  9772 ms  0x7487 privk:0x7f52c9b5e820::7f52c9b5e820  50 eb b3 c9                                      P...
  9772 ms  0x7487 privk:0x7f52c9b5e820::7f52c9b5e820  e5 e5 e5 e5                                      ....
  9772 ms  0x7487 PK11_Encrypt()
  9772 ms  0x7487 symkey:0x7f52c9b76a00
  9785 ms  0x7487 SSL_AuthCertificateComplete()
  9785 ms  0x7487 fd:0x7f52c9b7f790
  9785 ms  0x7487 err:0x0
           /* TID 0x7527 */
  9789 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9789 ms  0x7527 ret:0x0
           /* TID 0x7487 */
  9790 ms  SECKEY_ECParamsToKeySize()
  9790 ms  0x7487 ret:0x100
  9790 ms  0x7487 SECKEY_CreateECPrivateKey()
  9790 ms  0x7487 cx:0x7f52c9bffe68
  9790 ms     | 0x7487 EC_ValidatePublicKey()
  9792 ms     | 0x7487 ret:0x0
  9792 ms  0x7487 ret:0x7f52df4aa820::7f52df4aa820  90 87 b7 c9                                      ....
  9792 ms  0x7487 PK11_PubDeriveWithKDF()
  9792 ms  0x7487 seckey:0x7f52df4aa820
  9792 ms     | 0x7487 EC_ValidatePublicKey()
  9800 ms     | 0x7487 ret:0x0
  9801 ms  0x7487 ret:0x7f52e49db380
  9801 ms  0x7487 PK11_DeriveWithFlags()
  9801 ms  0x7487 basekey:0x7f52e49db380
  9801 ms     | 0x7487 PK11_DeriveWithTemplate()
  9801 ms  0x7487 ret:0x7f52c9b3d500
  9801 ms  0x7487 PK11_Derive()
  9801 ms  0x7487 basekey:0x7f52c9b3d500
  9801 ms     | 0x7487 PK11_DeriveWithTemplate()
  9801 ms  0x7487 ret:0x7f52c9b76f80
  9801 ms  0x7487 SECKEY_DestroyPrivateKey()
  9801 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  90 87 b7 c9                                      ....
  9801 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  e5 e5 e5 e5                                      ....
  9802 ms  0x7487 PK11_Encrypt()
  9802 ms  0x7487 symkey:0x7f52c9b77280
           /* TID 0x74e3 */
  9803 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9803 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
  9803 ms  SECKEY_ECParamsToKeySize()
  9803 ms  0x7487 ret:0x100
  9803 ms  0x7487 SECKEY_CreateECPrivateKey()
  9803 ms  0x7487 cx:0x7f52c9bffcc8
  9804 ms     | 0x7487 EC_ValidatePublicKey()
  9805 ms     | 0x7487 ret:0x0
  9805 ms  0x7487 ret:0x7f52df4ab820::7f52df4ab820  80 88 b7 c9                                      ....
  9805 ms  0x7487 PK11_PubDeriveWithKDF()
  9805 ms  0x7487 seckey:0x7f52df4ab820
  9806 ms     | 0x7487 EC_ValidatePublicKey()
  9807 ms     | 0x7487 ret:0x0
  9809 ms  0x7487 ret:0x7f52e49db380
  9809 ms  0x7487 PK11_DeriveWithFlags()
  9809 ms  0x7487 basekey:0x7f52e49db380
  9809 ms     | 0x7487 PK11_DeriveWithTemplate()
  9809 ms  0x7487 ret:0x7f52c9b77380
  9809 ms  0x7487 PK11_Derive()
  9809 ms  0x7487 basekey:0x7f52c9b77380
  9809 ms     | 0x7487 PK11_DeriveWithTemplate()
  9809 ms  0x7487 ret:0x7f52c9b77400
  9817 ms  0x7487 SECKEY_DestroyPrivateKey()
  9817 ms  0x7487 privk:0x7f52df4ab820::7f52df4ab820  80 88 b7 c9                                      ....
  9817 ms  0x7487 privk:0x7f52df4ab820::7f52df4ab820  e5 e5 e5 e5                                      ....
  9817 ms  0x7487 PK11_Encrypt()
  9817 ms  0x7487 symkey:0x7f52c9b77900
           /* TID 0x7525 */
  9819 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9819 ms  0x7525 ret:0x0
           /* TID 0x7487 */
  9819 ms  SECKEY_ECParamsToKeySize()
  9819 ms  0x7487 ret:0x100
  9819 ms  0x7487 SECKEY_CreateECPrivateKey()
  9819 ms  0x7487 cx:0x7f52c9bff7e8
  9820 ms     | 0x7487 EC_ValidatePublicKey()
  9824 ms     | 0x7487 ret:0x0
  9824 ms  0x7487 ret:0x7f52df4ab820::7f52df4ab820  a0 8b b7 c9                                      ....
  9824 ms  0x7487 PK11_PubDeriveWithKDF()
  9824 ms  0x7487 seckey:0x7f52df4ab820
  9824 ms     | 0x7487 EC_ValidatePublicKey()
  9827 ms     | 0x7487 ret:0x0
  9829 ms  0x7487 ret:0x7f52e49db380
  9829 ms  0x7487 PK11_DeriveWithFlags()
  9829 ms  0x7487 basekey:0x7f52e49db380
  9829 ms     | 0x7487 PK11_DeriveWithTemplate()
  9829 ms  0x7487 ret:0x7f52c9b77b00
  9829 ms  0x7487 PK11_Derive()
  9829 ms  0x7487 basekey:0x7f52c9b77b00
  9829 ms     | 0x7487 PK11_DeriveWithTemplate()
  9829 ms  0x7487 ret:0x7f52c9b77d00
  9829 ms  0x7487 SECKEY_DestroyPrivateKey()
  9829 ms  0x7487 privk:0x7f52df4ab820::7f52df4ab820  a0 8b b7 c9                                      ....
  9829 ms  0x7487 privk:0x7f52df4ab820::7f52df4ab820  e5 e5 e5 e5                                      ....
  9829 ms  0x7487 PK11_Encrypt()
  9829 ms  0x7487 symkey:0x7f52c9b77e80
  9834 ms  0x7487 PK11_Encrypt()
  9834 ms  0x7487 symkey:0x7f52c9b76a00
  9835 ms  0x7487 SECKEY_CreateECPrivateKey()
  9835 ms  0x7487 cx:0x7f52e4a58468
  9835 ms     | 0x7487 EC_ValidatePublicKey()
  9835 ms     | 0x7487 ret:0x0
  9835 ms  0x7487 ret:0x7f52e035b820::7f52e035b820  40 8c b7 c9                                      @...
  9835 ms  0x7487 SECKEY_CreateECPrivateKey()
  9835 ms  0x7487 cx:0x7f52e4a58468
  9839 ms     | 0x7487 EC_ValidatePublicKey()
  9848 ms     | 0x7487 ret:0x0
  9848 ms  0x7487 ret:0x7f52e07bb820::7f52e07bb820  20 8e b7 c9                                       ...
  9849 ms  0x7487 SECKEY_CreateECPrivateKey()
  9849 ms  0x7487 cx:0x7f5302aa72c8
  9849 ms     | 0x7487 EC_ValidatePublicKey()
  9849 ms     | 0x7487 ret:0x0
  9849 ms  0x7487 ret:0x7f52e0a25820::7f52e0a25820  60 8f b7 c9                                      `...
  9849 ms  0x7487 SECKEY_CreateECPrivateKey()
  9849 ms  0x7487 cx:0x7f5302aa72c8
  9850 ms     | 0x7487 EC_ValidatePublicKey()
  9851 ms     | 0x7487 ret:0x0
  9851 ms  0x7487 ret:0x7f52e0a29820::7f52e0a29820  a0 21 bc c9                                      .!..
  9851 ms  0x7487 SECKEY_CreateECPrivateKey()
  9851 ms  0x7487 cx:0x7f52c9256248
  9852 ms     | 0x7487 EC_ValidatePublicKey()
  9852 ms     | 0x7487 ret:0x0
  9852 ms  0x7487 ret:0x7f52e0a2e020::7f52e0a2e020  80 2d bc c9                                      .-..
  9852 ms  0x7487 SECKEY_CreateECPrivateKey()
  9852 ms  0x7487 cx:0x7f52c9256248
  9853 ms     | 0x7487 EC_ValidatePublicKey()
  9854 ms     | 0x7487 ret:0x0
  9854 ms  0x7487 ret:0x7f52e0a32020::7f52e0a32020  f0 91 0c db                                      ....
  9866 ms  0x7487 SSL_AuthCertificateComplete()
  9866 ms  0x7487 fd:0x7f52c9b7f310
  9866 ms  0x7487 err:0x0
  9866 ms  0x7487 SSL_AuthCertificateComplete()
  9866 ms  0x7487 fd:0x7f52c9b7f1f0
  9866 ms  0x7487 err:0x0
  9866 ms  0x7487 SSL_AuthCertificateComplete()
  9866 ms  0x7487 fd:0x7f52c9b7f160
  9866 ms  0x7487 err:0x0
  9866 ms  0x7487 PK11_Encrypt()
  9866 ms  0x7487 symkey:0x7f52c9335b80
           /* TID 0x748f */
  9867 ms  0x748f PR_Close()
  9867 ms  0x748f fd:0x7f52c932ce20
  9868 ms  0x748f PR_Close()
  9868 ms  0x748f fd:0x7f52c932c7c0
  9868 ms  0x748f PR_Close()
  9868 ms  0x748f fd:0x7f52c932c790
  9869 ms  0x748f PR_Close()
  9869 ms  0x748f fd:0x7f52c932c2e0
           /* TID 0x7487 */
  9869 ms  0x7487 PK11_Encrypt()
  9869 ms  0x7487 symkey:0x7f52c9b77280
  9869 ms  0x7487 PK11_Encrypt()
  9869 ms  0x7487 symkey:0x7f52c9b77900
           /* TID 0x7526 */
  9870 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9870 ms  0x7526 ret:0x0
           /* TID 0x7487 */
  9870 ms  SECKEY_ECParamsToKeySize()
  9870 ms  0x7487 ret:0x100
  9871 ms  0x7487 SECKEY_CreateECPrivateKey()
  9871 ms  0x7487 cx:0x7f52c9bffb28
  9871 ms     | 0x7487 EC_ValidatePublicKey()
  9873 ms     | 0x7487 ret:0x0
  9873 ms  0x7487 ret:0x7f52e0a87820::7f52e0a87820  d0 93 0c db                                      ....
  9873 ms  0x7487 PK11_PubDeriveWithKDF()
  9873 ms  0x7487 seckey:0x7f52e0a87820
  9873 ms     | 0x7487 EC_ValidatePublicKey()
  9874 ms     | 0x7487 ret:0x0
  9876 ms  0x7487 ret:0x7f52e49db380
  9876 ms  0x7487 PK11_DeriveWithFlags()
  9876 ms  0x7487 basekey:0x7f52e49db380
  9876 ms     | 0x7487 PK11_DeriveWithTemplate()
  9876 ms  0x7487 ret:0x7f52c954d980
  9876 ms  0x7487 PK11_Derive()
  9876 ms  0x7487 basekey:0x7f52c954d980
  9876 ms     | 0x7487 PK11_DeriveWithTemplate()
  9876 ms  0x7487 ret:0x7f52c9b80d00
  9876 ms  0x7487 SECKEY_DestroyPrivateKey()
  9876 ms  0x7487 privk:0x7f52e0a87820::7f52e0a87820  d0 93 0c db                                      ....
  9876 ms  0x7487 privk:0x7f52e0a87820::7f52e0a87820  e5 e5 e5 e5                                      ....
  9876 ms  0x7487 PK11_Encrypt()
  9876 ms  0x7487 symkey:0x7f52c9bf8780
           /* TID 0x7527 */
  9877 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9877 ms  0x7527 ret:0x0
           /* TID 0x7487 */
  9877 ms  SECKEY_ECParamsToKeySize()
  9877 ms  0x7487 ret:0x100
  9877 ms  0x7487 SECKEY_CreateECPrivateKey()
  9877 ms  0x7487 cx:0x7f52c9bff988
  9877 ms     | 0x7487 EC_ValidatePublicKey()
  9879 ms     | 0x7487 ret:0x0
  9879 ms  0x7487 ret:0x7f52e0a89020::7f52e0a89020  70 94 0c db                                      p...
  9879 ms  0x7487 PK11_PubDeriveWithKDF()
  9879 ms  0x7487 seckey:0x7f52e0a89020
  9879 ms     | 0x7487 EC_ValidatePublicKey()
  9880 ms     | 0x7487 ret:0x0
  9882 ms  0x7487 ret:0x7f52e49db380
  9882 ms  0x7487 PK11_DeriveWithFlags()
  9882 ms  0x7487 basekey:0x7f52e49db380
  9882 ms     | 0x7487 PK11_DeriveWithTemplate()
  9882 ms  0x7487 ret:0x7f52c9bf8d80
  9882 ms  0x7487 PK11_Derive()
  9882 ms  0x7487 basekey:0x7f52c9bf8d80
  9882 ms     | 0x7487 PK11_DeriveWithTemplate()
  9882 ms  0x7487 ret:0x7f52c9bf8f00
  9882 ms  0x7487 SECKEY_DestroyPrivateKey()
  9882 ms  0x7487 privk:0x7f52e0a89020::7f52e0a89020  70 94 0c db                                      p...
  9882 ms  0x7487 privk:0x7f52e0a89020::7f52e0a89020  e5 e5 e5 e5                                      ....
  9882 ms  0x7487 PK11_Encrypt()
  9882 ms  0x7487 symkey:0x7f52c9bf9700
  9887 ms  0x7487 PK11_Encrypt()
  9887 ms  0x7487 symkey:0x7f52c9b77e80
  9887 ms  0x7487 SECKEY_DestroyPrivateKey()
  9887 ms  0x7487 privk:0x7f52c93b1820::7f52c93b1820  a0 21 5b c9                                      .![.
  9887 ms  0x7487 privk:0x7f52c93b1820::7f52c93b1820  e5 e5 e5 e5                                      ....
  9887 ms  0x7487 SECKEY_DestroyPrivateKey()
  9887 ms  0x7487 privk:0x7f52c923a020::7f52c923a020  d0 08 59 c9                                      ..Y.
  9887 ms  0x7487 privk:0x7f52c923a020::7f52c923a020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
  9888 ms  0x748f PR_Close()
  9888 ms  0x748f fd:0x7f52c932ce50
  9889 ms  0x748f PR_Close()
  9889 ms  0x748f fd:0x7f52c932cc40
           /* TID 0x7487 */
  9889 ms  0x7487 PR_Connect()
  9889 ms  0x7487 fd:0x7f52c932ce50
  9889 ms  0x7487 PR_Connect()
  9889 ms  0x7487 fd:0x7f52c98e5940
  9890 ms  0x7487 SSL_AuthCertificateComplete()
  9890 ms  0x7487 fd:0x7f52c9b7f8e0
  9890 ms  0x7487 err:0x0
  9890 ms  0x7487 SSL_AuthCertificateComplete()
  9890 ms  0x7487 fd:0x7f52c9b7f8b0
  9890 ms  0x7487 err:0x0
  9890 ms  0x7487 SECKEY_DestroyPrivateKey()
  9890 ms  0x7487 privk:0x7f52c9603020::7f52c9603020  d0 ed 84 c9                                      ....
  9890 ms  0x7487 privk:0x7f52c9603020::7f52c9603020  e5 e5 e5 e5                                      ....
  9890 ms  0x7487 SECKEY_DestroyPrivateKey()
  9890 ms  0x7487 privk:0x7f52c93c0820::7f52c93c0820  b0 ea 79 c9                                      ..y.
  9890 ms  0x7487 privk:0x7f52c93c0820::7f52c93c0820  e5 e5 e5 e5                                      ....
  9890 ms  0x7487 SECKEY_DestroyPrivateKey()
  9890 ms  0x7487 privk:0x7f52c988b020::7f52c988b020  70 f9 8d c9                                      p...
  9890 ms  0x7487 privk:0x7f52c988b020::7f52c988b020  e5 e5 e5 e5                                      ....
  9891 ms  0x7487 SECKEY_DestroyPrivateKey()
  9891 ms  0x7487 privk:0x7f52c9719820::7f52c9719820  d0 b3 86 c9                                      ....
  9891 ms  0x7487 privk:0x7f52c9719820::7f52c9719820  e5 e5 e5 e5                                      ....
  9891 ms  0x7487 PK11_Encrypt()
  9891 ms  0x7487 symkey:0x7f52c9bf8780
  9894 ms  0x7487 PK11_Encrypt()
  9894 ms  0x7487 symkey:0x7f52c9bf9700
  9895 ms  0x7487 SECKEY_DestroyPrivateKey()
  9895 ms  0x7487 privk:0x7f52c93be020::7f52c93be020  80 28 5b c9                                      .([.
  9895 ms  0x7487 privk:0x7f52c93be020::7f52c93be020  e5 e5 e5 e5                                      ....
  9895 ms  0x7487 SECKEY_DestroyPrivateKey()
  9895 ms  0x7487 privk:0x7f52c93b8820::7f52c93b8820  80 23 5b c9                                      .#[.
  9895 ms  0x7487 privk:0x7f52c93b8820::7f52c93b8820  e5 e5 e5 e5                                      ....
  9895 ms  0x7487 SSL_ImportFD()
  9895 ms  0x7487 ret:0x7f52db0cdb20
  9895 ms  0x7487 SSL_AuthCertificateHook()
  9895 ms  0x7487 fd:0x7f52db0cdb20
  9895 ms  0x7487 ret:0x0
  9895 ms  0x7487 PR_Connect()
  9895 ms  0x7487 fd:0x7f52db0cdb20
  9896 ms  0x7487 PR_Connect()
  9896 ms  0x7487 fd:0x7f52c98e5df0
  9896 ms  0x7487 SSL_ImportFD()
  9896 ms  0x7487 ret:0x7f52c9b7fb50
  9896 ms  0x7487 SSL_AuthCertificateHook()
  9896 ms  0x7487 fd:0x7f52c9b7fb50
  9896 ms  0x7487 ret:0x0
  9897 ms  0x7487 PR_Connect()
  9897 ms  0x7487 fd:0x7f52c9b7fb50
  9897 ms  0x7487 SSL_ImportFD()
  9897 ms  0x7487 ret:0x7f52db0cd8e0
  9897 ms  0x7487 SSL_AuthCertificateHook()
  9897 ms  0x7487 fd:0x7f52db0cd8e0
  9897 ms  0x7487 ret:0x0
  9897 ms  0x7487 PR_Connect()
  9897 ms  0x7487 fd:0x7f52db0cd8e0
  9897 ms  0x7487 PK11_Encrypt()
  9897 ms  0x7487 symkey:0x7f52c9b76a00
  9897 ms  0x7487 PR_Connect()
  9897 ms  0x7487 fd:0x7f52db1b9b80
  9898 ms  0x7487 PR_Connect()
  9898 ms  0x7487 fd:0x7f52c9b7fdc0
  9902 ms  0x7487 PK11_Derive()
  9902 ms  0x7487 basekey:0x7f52e49db380
  9902 ms     | 0x7487 PK11_DeriveWithTemplate()
  9902 ms  0x7487 ret:0x7f52dafc4c00
  9902 ms  0x7487 PK11_PubDeriveWithKDF()
  9902 ms  0x7487 seckey:0x7f52e035b820
  9902 ms     | 0x7487 EC_ValidatePublicKey()
  9902 ms     | 0x7487 ret:0x0
  9903 ms  0x7487 ret:0x7f52e49db380
  9903 ms  SECKEY_ECParamsToKeySize()
  9903 ms  0x7487 ret:0xff
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52dafc4c00
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc4e80
  9903 ms  0x7487 PK11_Derive()
  9903 ms  0x7487 basekey:0x7f52e49db380
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc5080
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52dafc5080
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc4c00
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52dafc5080
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52e49db380
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52dafc5080
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc4e80
  9903 ms  0x7487 PK11_Derive()
  9903 ms  0x7487 basekey:0x7f52dafc5100
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc5180
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52e49db380
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc5080
  9903 ms  0x7487 PK11_DeriveWithFlags()
  9903 ms  0x7487 basekey:0x7f52e49db380
  9903 ms     | 0x7487 PK11_DeriveWithTemplate()
  9903 ms  0x7487 ret:0x7f52dafc4e80
  9905 ms  SECKEY_ECParamsToKeySize()
  9905 ms  0x7487 ret:0x100
  9905 ms  SECKEY_ECParamsToBasePointOrderLen()
  9905 ms  0x7487 ret:0x100
  9905 ms  SECKEY_ECParamsToBasePointOrderLen()
  9905 ms  0x7487 ret:0x100
  9905 ms  0x7487 EC_ValidatePublicKey()
  9907 ms  0x7487 ret:0x0
  9916 ms  0x7487 PK11_DeriveWithFlags()
  9916 ms  0x7487 basekey:0x7f52e49db380
  9916 ms     | 0x7487 PK11_DeriveWithTemplate()
  9916 ms  0x7487 ret:0x7f52dafc4e80
           /* TID 0x748f */
  9918 ms  0x748f PR_Close()
  9918 ms  0x748f fd:0x7f52c93663d0
  9919 ms  0x748f PR_Close()
  9919 ms  0x748f fd:0x7f52c93663a0
           /* TID 0x7487 */
  9919 ms  0x7487 SECKEY_DestroyPrivateKey()
  9919 ms  0x7487 privk:0x7f52c9b4a820::7f52c9b4a820  20 e4 b3 c9                                       ...
  9920 ms  0x7487 privk:0x7f52c9b4a820::7f52c9b4a820  e5 e5 e5 e5                                      ....
  9920 ms  0x7487 SECKEY_DestroyPrivateKey()
  9920 ms  0x7487 privk:0x7f52c9b48020::7f52c9b48020  50 e1 b3 c9                                      P...
  9920 ms  0x7487 privk:0x7f52c9b48020::7f52c9b48020  e5 e5 e5 e5                                      ....
  9920 ms  0x7487 PK11_Derive()
  9920 ms  0x7487 basekey:0x7f52dafc4e80
  9920 ms     | 0x7487 PK11_DeriveWithTemplate()
  9920 ms  0x7487 ret:0x7f52dafc5100
  9920 ms  0x7487 PK11_PubDeriveWithKDF()
  9920 ms  0x7487 seckey:0x7f52e0a25820
  9920 ms     | 0x7487 EC_ValidatePublicKey()
  9920 ms     | 0x7487 ret:0x0
  9920 ms  0x7487 ret:0x7f52dafc4e80
  9920 ms  SECKEY_ECParamsToKeySize()
  9920 ms  0x7487 ret:0xff
  9920 ms  0x7487 PK11_DeriveWithFlags()
  9920 ms  0x7487 basekey:0x7f52dafc5100
  9920 ms     | 0x7487 PK11_DeriveWithTemplate()
  9920 ms  0x7487 ret:0x7f52dafc5680
  9920 ms  0x7487 PK11_Derive()
  9920 ms  0x7487 basekey:0x7f52dafc4e80
  9920 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5900
  9921 ms  0x7487 PK11_DeriveWithFlags()
  9921 ms  0x7487 basekey:0x7f52dafc5900
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5100
  9921 ms  0x7487 PK11_DeriveWithFlags()
  9921 ms  0x7487 basekey:0x7f52dafc5900
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc4e80
  9921 ms  0x7487 PK11_DeriveWithFlags()
  9921 ms  0x7487 basekey:0x7f52dafc5900
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5680
  9921 ms  0x7487 PK11_Derive()
  9921 ms  0x7487 basekey:0x7f52dafc5980
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5a00
  9921 ms  0x7487 PK11_DeriveWithFlags()
  9921 ms  0x7487 basekey:0x7f52dafc4e80
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5900
  9921 ms  0x7487 PK11_DeriveWithFlags()
  9921 ms  0x7487 basekey:0x7f52dafc4e80
  9921 ms     | 0x7487 PK11_DeriveWithTemplate()
  9921 ms  0x7487 ret:0x7f52dafc5680
  9922 ms  SECKEY_ECParamsToKeySize()
  9922 ms  0x7487 ret:0x100
  9922 ms  SECKEY_ECParamsToBasePointOrderLen()
  9922 ms  0x7487 ret:0x100
  9922 ms  SECKEY_ECParamsToBasePointOrderLen()
  9922 ms  0x7487 ret:0x100
  9922 ms  0x7487 EC_ValidatePublicKey()
  9923 ms  0x7487 ret:0x0
  9927 ms  0x7487 PK11_DeriveWithFlags()
  9927 ms  0x7487 basekey:0x7f52dafc4e80
  9927 ms     | 0x7487 PK11_DeriveWithTemplate()
  9927 ms  0x7487 ret:0x7f52dafc5680
  9928 ms  0x7487 PK11_Derive()
  9928 ms  0x7487 basekey:0x7f52dafc5680
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52dafc5980
  9928 ms  0x7487 PK11_PubDeriveWithKDF()
  9928 ms  0x7487 seckey:0x7f52e0a2e020
  9928 ms     | 0x7487 EC_ValidatePublicKey()
  9928 ms     | 0x7487 ret:0x0
  9928 ms  0x7487 ret:0x7f52dafc5680
  9928 ms  SECKEY_ECParamsToKeySize()
  9928 ms  0x7487 ret:0xff
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52dafc5980
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bc900
  9928 ms  0x7487 PK11_Derive()
  9928 ms  0x7487 basekey:0x7f52dafc5680
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bd500
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52db1bd500
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52dafc5980
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52db1bd500
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52dafc5680
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52db1bd500
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bc900
  9928 ms  0x7487 PK11_Derive()
  9928 ms  0x7487 basekey:0x7f52db1bd980
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bda00
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52dafc5680
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bd500
  9928 ms  0x7487 PK11_DeriveWithFlags()
  9928 ms  0x7487 basekey:0x7f52dafc5680
  9928 ms     | 0x7487 PK11_DeriveWithTemplate()
  9928 ms  0x7487 ret:0x7f52db1bc900
  9931 ms  SECKEY_ECParamsToKeySize()
  9931 ms  0x7487 ret:0x100
  9931 ms  SECKEY_ECParamsToBasePointOrderLen()
  9931 ms  0x7487 ret:0x100
  9931 ms  SECKEY_ECParamsToBasePointOrderLen()
  9931 ms  0x7487 ret:0x100
  9931 ms  0x7487 EC_ValidatePublicKey()
  9934 ms  0x7487 ret:0x0
  9936 ms  0x7487 PK11_DeriveWithFlags()
  9936 ms  0x7487 basekey:0x7f52dafc5680
  9936 ms     | 0x7487 PK11_DeriveWithTemplate()
  9936 ms  0x7487 ret:0x7f52db1bc900
  9944 ms  0x7487 PK11_Encrypt()
  9944 ms  0x7487 symkey:0x7f52c9b77280
  9950 ms  0x7487 PK11_Encrypt()
  9950 ms  0x7487 symkey:0x7f52c9b77900
           /* TID 0x748f */
  9951 ms  0x748f PR_Close()
  9951 ms  0x748f fd:0x7f52c9595a00
  9952 ms  0x748f PR_Close()
  9952 ms  0x748f fd:0x7f52c932cee0
           /* TID 0x7487 */
  9952 ms  0x7487 SECKEY_DestroyPrivateKey()
  9952 ms  0x7487 privk:0x7f52c9b54820::7f52c9b54820  e0 e7 b3 c9                                      ....
  9952 ms  0x7487 privk:0x7f52c9b54820::7f52c9b54820  e5 e5 e5 e5                                      ....
  9952 ms  0x7487 SECKEY_DestroyPrivateKey()
  9952 ms  0x7487 privk:0x7f52c9b4e820::7f52c9b4e820  b0 e5 b3 c9                                      ....
  9952 ms  0x7487 privk:0x7f52c9b4e820::7f52c9b4e820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
  9953 ms  0x748f PR_Close()
  9953 ms  0x748f fd:0x7f52c932ce80
  9954 ms  0x748f PR_Close()
  9954 ms  0x748f fd:0x7f52c932ce80
           /* TID 0x7487 */
  9956 ms  0x7487 SECKEY_CreateECPrivateKey()
  9956 ms  0x7487 cx:0x7f52c9257428
  9956 ms     | 0x7487 EC_ValidatePublicKey()
  9956 ms     | 0x7487 ret:0x0
  9956 ms  0x7487 ret:0x7f52c9720820::7f52c9720820  70 0e 59 c9                                      p.Y.
  9957 ms  0x7487 SECKEY_CreateECPrivateKey()
  9957 ms  0x7487 cx:0x7f52c9257428
  9957 ms     | 0x7487 EC_ValidatePublicKey()
  9958 ms     | 0x7487 ret:0x0
  9959 ms  0x7487 ret:0x7f52c9890820::7f52c9890820  f0 f6 8d c9                                      ....
  9963 ms  0x7487 SECKEY_CreateECPrivateKey()
  9963 ms  0x7487 cx:0x7f52c9257768
  9963 ms     | 0x7487 EC_ValidatePublicKey()
  9963 ms     | 0x7487 ret:0x0
  9963 ms  0x7487 ret:0x7f52c9b4a020::7f52c9b4a020  40 e2 b3 c9                                      @...
  9964 ms  0x7487 SECKEY_CreateECPrivateKey()
  9964 ms  0x7487 cx:0x7f52c9257768
  9964 ms     | 0x7487 EC_ValidatePublicKey()
  9966 ms     | 0x7487 ret:0x0
  9966 ms  0x7487 ret:0x7f52c9b4e020::7f52c9b4e020  c0 e4 b3 c9                                      ....
  9970 ms  0x7487 SECKEY_CreateECPrivateKey()
  9970 ms  0x7487 cx:0x7f52c92575c8
  9970 ms     | 0x7487 EC_ValidatePublicKey()
  9970 ms     | 0x7487 ret:0x0
  9970 ms  0x7487 ret:0x7f52c9b54820::7f52c9b54820  40 e7 b3 c9                                      @...
  9970 ms  0x7487 SECKEY_CreateECPrivateKey()
  9970 ms  0x7487 cx:0x7f52c92575c8
  9971 ms     | 0x7487 EC_ValidatePublicKey()
  9972 ms     | 0x7487 ret:0x0
  9972 ms  0x7487 ret:0x7f52e0a35820::7f52e0a35820  80 93 0c db                                      ....
  9982 ms  0x7487 PK11_Encrypt()
  9982 ms  0x7487 symkey:0x7f52c9b76a00
           /* TID 0x748f */
  9984 ms  0x748f PR_Close()
  9984 ms  0x748f fd:0x7f52c932c7c0
  9985 ms  0x748f PR_Close()
  9985 ms  0x748f fd:0x7f52c932c7c0
           /* TID 0x7487 */
  9986 ms  0x7487 SSL_ImportFD()
  9986 ms  0x7487 ret:0x7f52c9366430
  9986 ms  0x7487 SSL_AuthCertificateHook()
  9986 ms  0x7487 fd:0x7f52c9366430
  9986 ms  0x7487 ret:0x0
  9987 ms  0x7487 PK11_Encrypt()
  9987 ms  0x7487 symkey:0x7f52c985d180
  9989 ms  0x7487 PR_Connect()
  9989 ms  0x7487 fd:0x7f52c9366430
  9992 ms  0x7487 PR_Connect()
  9992 ms  0x7487 fd:0x7f52db3218e0
           /* TID 0x748f */
  9994 ms  0x748f PR_Close()
  9994 ms  0x748f fd:0x7f52c932ceb0
           /* TID 0x7487 */
  9995 ms  0x7487 PK11_Encrypt()
  9995 ms  0x7487 symkey:0x7f52c9b77280
  9996 ms  0x7487 PR_Connect()
  9996 ms  0x7487 fd:0x7f52c98e5040
 10011 ms  SECKEY_ECParamsToKeySize()
 10011 ms  0x7487 ret:0x100
 10011 ms  0x7487 SECKEY_CreateECPrivateKey()
 10011 ms  0x7487 cx:0x7f52c9257428
 10012 ms     | 0x7487 EC_ValidatePublicKey()
 10013 ms     | 0x7487 ret:0x0
 10013 ms  0x7487 ret:0x7f52e0e82020::7f52e0e82020  60 9a 0c db                                      `...
 10013 ms  0x7487 PK11_PubDeriveWithKDF()
 10013 ms  0x7487 seckey:0x7f52e0e82020
 10013 ms     | 0x7487 EC_ValidatePublicKey()
 10015 ms     | 0x7487 ret:0x0
 10016 ms  0x7487 ret:0x7f52db1bc900
 10016 ms  0x7487 PK11_DeriveWithFlags()
 10016 ms  0x7487 basekey:0x7f52db1bc900
 10016 ms     | 0x7487 PK11_DeriveWithTemplate()
 10016 ms  0x7487 ret:0x7f52db1bd980
 10016 ms  0x7487 PK11_Derive()
 10016 ms  0x7487 basekey:0x7f52db1bd980
 10016 ms     | 0x7487 PK11_DeriveWithTemplate()
 10016 ms  0x7487 ret:0x7f52c9318580
 10016 ms  0x7487 SECKEY_DestroyPrivateKey()
 10016 ms  0x7487 privk:0x7f52e0e82020::7f52e0e82020  60 9a 0c db                                      `...
 10016 ms  0x7487 privk:0x7f52e0e82020::7f52e0e82020  e5 e5 e5 e5                                      ....
           /* TID 0x7527 */
 10021 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10022 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 10022 ms  0x7487 PK11_Encrypt()
 10022 ms  0x7487 symkey:0x7f52db35cb00
 10023 ms  0x7487 PK11_Derive()
 10023 ms  0x7487 basekey:0x7f52db1bc900
 10023 ms     | 0x7487 PK11_DeriveWithTemplate()
 10023 ms  0x7487 ret:0x7f52db35f700
 10023 ms  0x7487 PK11_PubDeriveWithKDF()
 10023 ms  0x7487 seckey:0x7f52c9b4a020
 10023 ms     | 0x7487 EC_ValidatePublicKey()
 10023 ms     | 0x7487 ret:0x0
 10024 ms  0x7487 ret:0x7f52db1bc900
 10024 ms  SECKEY_ECParamsToKeySize()
 10024 ms  0x7487 ret:0xff
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db35f700
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f780
 10024 ms  0x7487 PK11_Derive()
 10024 ms  0x7487 basekey:0x7f52db1bc900
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f800
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db35f800
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f700
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db35f800
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db1bc900
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db35f800
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f780
 10024 ms  0x7487 PK11_Derive()
 10024 ms  0x7487 basekey:0x7f52db35fe00
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db360200
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db1bc900
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f800
 10024 ms  0x7487 PK11_DeriveWithFlags()
 10024 ms  0x7487 basekey:0x7f52db1bc900
 10024 ms     | 0x7487 PK11_DeriveWithTemplate()
 10024 ms  0x7487 ret:0x7f52db35f780
 10029 ms  SECKEY_ECParamsToKeySize()
 10029 ms  0x7487 ret:0x100
 10029 ms  SECKEY_ECParamsToBasePointOrderLen()
 10029 ms  0x7487 ret:0x100
 10029 ms  SECKEY_ECParamsToBasePointOrderLen()
 10029 ms  0x7487 ret:0x100
 10029 ms  0x7487 EC_ValidatePublicKey()
 10031 ms  0x7487 ret:0x0
 10035 ms  0x7487 PK11_DeriveWithFlags()
 10035 ms  0x7487 basekey:0x7f52db1bc900
 10035 ms     | 0x7487 PK11_DeriveWithTemplate()
 10035 ms  0x7487 ret:0x7f52db35f780
           /* TID 0x748f */
 10035 ms  0x748f PR_Close()
 10035 ms  0x748f fd:0x7f52c932c8b0
           /* TID 0x7487 */
 10037 ms  0x7487 PK11_Encrypt()
 10037 ms  0x7487 symkey:0x7f52c9b77e80
 10038 ms  0x7487 SSL_AuthCertificateComplete()
 10038 ms  0x7487 fd:0x7f52db0cdb20
 10038 ms  0x7487 err:0x0
           /* TID 0x748f */
 10038 ms  0x748f PR_Close()
 10038 ms  0x748f fd:0x7f52c932c8b0
           /* TID 0x7487 */
 10038 ms  0x7487 PK11_Encrypt()
 10038 ms  0x7487 symkey:0x7f52db35cb00
 10039 ms  0x7487 PK11_Derive()
 10039 ms  0x7487 basekey:0x7f52db35f780
 10039 ms     | 0x7487 PK11_DeriveWithTemplate()
 10039 ms  0x7487 ret:0x7f52db35fe00
 10039 ms  0x7487 PK11_PubDeriveWithKDF()
 10039 ms  0x7487 seckey:0x7f52c9b54820
 10039 ms     | 0x7487 EC_ValidatePublicKey()
 10039 ms     | 0x7487 ret:0x0
 10044 ms  0x7487 ret:0x7f52db35f780
 10044 ms  SECKEY_ECParamsToKeySize()
 10044 ms  0x7487 ret:0xff
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db35fe00
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51ed80
 10044 ms  0x7487 PK11_Derive()
 10044 ms  0x7487 basekey:0x7f52db35f780
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51ee80
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db51ee80
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db35fe00
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db51ee80
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db35f780
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db51ee80
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51ed80
 10044 ms  0x7487 PK11_Derive()
 10044 ms  0x7487 basekey:0x7f52db51f280
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51f380
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db35f780
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51ee80
 10044 ms  0x7487 PK11_DeriveWithFlags()
 10044 ms  0x7487 basekey:0x7f52db35f780
 10044 ms     | 0x7487 PK11_DeriveWithTemplate()
 10044 ms  0x7487 ret:0x7f52db51ed80
 10045 ms  SECKEY_ECParamsToKeySize()
 10045 ms  0x7487 ret:0x100
 10045 ms  SECKEY_ECParamsToBasePointOrderLen()
 10045 ms  0x7487 ret:0x100
 10045 ms  SECKEY_ECParamsToBasePointOrderLen()
 10045 ms  0x7487 ret:0x100
 10045 ms  0x7487 EC_ValidatePublicKey()
 10047 ms  0x7487 ret:0x0
 10049 ms  0x7487 PK11_DeriveWithFlags()
 10049 ms  0x7487 basekey:0x7f52db35f780
 10049 ms     | 0x7487 PK11_DeriveWithTemplate()
 10049 ms  0x7487 ret:0x7f52db51ed80
 10052 ms  0x7487 PK11_Encrypt()
 10052 ms  0x7487 symkey:0x7f52c9b77280
 10053 ms  0x7487 SECKEY_CreateECPrivateKey()
 10053 ms  0x7487 cx:0x7f52c9257908
 10053 ms     | 0x7487 EC_ValidatePublicKey()
 10053 ms     | 0x7487 ret:0x0
 10053 ms  0x7487 ret:0x7f52e0e8f020::7f52e0e8f020  00 26 51 db                                      .&Q.
 10053 ms  0x7487 SECKEY_CreateECPrivateKey()
 10053 ms  0x7487 cx:0x7f52c9257908
 10054 ms     | 0x7487 EC_ValidatePublicKey()
 10055 ms     | 0x7487 ret:0x0
 10055 ms  0x7487 ret:0x7f52e0e91020::7f52e0e91020  80 28 51 db                                      .(Q.
 10057 ms  0x7487 PK11_Encrypt()
 10057 ms  0x7487 symkey:0x7f52c9bf8780
           /* TID 0x748f */
 10058 ms  0x748f PR_Close()
 10058 ms  0x748f fd:0x7f52c932c9a0
 10059 ms  0x748f PR_Close()
 10059 ms  0x748f fd:0x7f52c932c970
           /* TID 0x7487 */
 10059 ms  0x7487 PR_Connect()
 10059 ms  0x7487 fd:0x7f52c932c9a0
           /* TID 0x74e3 */
 10069 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10069 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 10069 ms  0x748f PR_Close()
 10069 ms  0x748f fd:0x7f52c932c970
           /* TID 0x7487 */
 10070 ms  0x7487 SSL_AuthCertificateComplete()
 10070 ms  0x7487 fd:0x7f52c9b7f700
 10070 ms  0x7487 err:0x0
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc5180
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db51ed80
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc5180
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db51f280
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc5180
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52dafc5400
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc4c00
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52dafc5480
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc4c00
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db35f080
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52db51f280
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db35f080
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52db51f280
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db360480
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc4c00
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52dafc5080
 10070 ms     | 0x7487 PK11_Encrypt()
 10070 ms     | 0x7487 symkey:0x7f52dafc5480
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52db51ed80
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52dafc5080
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52db51ed80
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52db360480
 10070 ms     | 0x7487 PK11_DeriveWithFlags()
 10070 ms     | 0x7487 basekey:0x7f52dafc5180
 10070 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10070 ms     | 0x7487 ret:0x7f52dafc5480
 10071 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10071 ms     | 0x7487 privk:0x7f52e07bb820::7f52e07bb820  20 8e b7 c9                                       ...
 10071 ms     | 0x7487 privk:0x7f52e07bb820::7f52e07bb820  e5 e5 e5 e5                                      ....
 10071 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10071 ms     | 0x7487 privk:0x7f52e035b820::7f52e035b820  40 8c b7 c9                                      @...
 10071 ms     | 0x7487 privk:0x7f52e035b820::7f52e035b820  e5 e5 e5 e5                                      ....
 10071 ms  0x7487 PK11_Encrypt()
 10071 ms  0x7487 symkey:0x7f52dafc5080
 10071 ms  0x7487 PK11_Encrypt()
 10071 ms  0x7487 symkey:0x7f52dafc5080
 10072 ms  0x7487 SSL_ImportFD()
 10072 ms  0x7487 ret:0x7f52c9595bb0
 10072 ms  0x7487 SSL_AuthCertificateHook()
 10072 ms  0x7487 fd:0x7f52c9595bb0
 10072 ms  0x7487 ret:0x0
 10072 ms  0x7487 PR_Connect()
 10072 ms  0x7487 fd:0x7f52c9595bb0
           /* TID 0x748f */
 10075 ms  0x748f PR_Close()
 10075 ms  0x748f fd:0x7f52c9366940
           /* TID 0x7487 */
 10076 ms  0x7487 SECKEY_DestroyPrivateKey()
 10076 ms  0x7487 privk:0x7f52c9890820::7f52c9890820  f0 f6 8d c9                                      ....
 10076 ms  0x7487 privk:0x7f52c9890820::7f52c9890820  e5 e5 e5 e5                                      ....
 10076 ms  0x7487 SECKEY_DestroyPrivateKey()
 10076 ms  0x7487 privk:0x7f52c9720820::7f52c9720820  70 0e 59 c9                                      p.Y.
 10076 ms  0x7487 privk:0x7f52c9720820::7f52c9720820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 10077 ms  0x748f PR_Close()
 10077 ms  0x748f fd:0x7f52c9366940
           /* TID 0x7487 */
 10082 ms  0x7487 PK11_Encrypt()
 10082 ms  0x7487 symkey:0x7f52c9808380
           /* TID 0x748f */
 10090 ms  0x748f PR_Close()
 10090 ms  0x748f fd:0x7f52c930dd30
           /* TID 0x7525 */
 10093 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10093 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 10094 ms  0x7487 SSL_AuthCertificateComplete()
 10094 ms  0x7487 fd:0x7f52db0cdee0
 10094 ms  0x7487 err:0x0
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5a00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52e49db380
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5a00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52dafc4c00
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5a00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52dafc5180
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5100
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db360480
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5100
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db1bc700
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc4c00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db1bc700
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc4c00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db56ab00
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5100
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52dafc5900
 10094 ms     | 0x7487 PK11_Encrypt()
 10094 ms     | 0x7487 symkey:0x7f52db360480
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52e49db380
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52dafc5900
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52e49db380
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db56ab00
 10094 ms     | 0x7487 PK11_DeriveWithFlags()
 10094 ms     | 0x7487 basekey:0x7f52dafc5a00
 10094 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10094 ms     | 0x7487 ret:0x7f52db360480
 10094 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10094 ms     | 0x7487 privk:0x7f52e0a29820::7f52e0a29820  a0 21 bc c9                                      .!..
 10094 ms     | 0x7487 privk:0x7f52e0a29820::7f52e0a29820  e5 e5 e5 e5                                      ....
 10094 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10094 ms     | 0x7487 privk:0x7f52e0a25820::7f52e0a25820  60 8f b7 c9                                      `...
 10095 ms     | 0x7487 privk:0x7f52e0a25820::7f52e0a25820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 10095 ms  0x748f PR_Close()
 10095 ms  0x748f fd:0x7f52c930dd30
 10095 ms  0x748f PR_Close()
 10095 ms  0x748f fd:0x7f52c930dd30
           /* TID 0x7487 */
 10095 ms  0x7487 PK11_Encrypt()
 10095 ms  0x7487 symkey:0x7f52dafc5900
 10096 ms  0x7487 PK11_Encrypt()
 10096 ms  0x7487 symkey:0x7f52dafc5080
 10097 ms  0x7487 SECKEY_CreateECPrivateKey()
 10097 ms  0x7487 cx:0x7f52c9257f88
 10098 ms     | 0x7487 EC_ValidatePublicKey()
 10098 ms     | 0x7487 ret:0x0
 10098 ms  0x7487 ret:0x7f52c9720820::7f52c9720820  10 ff 38 c9                                      ..8.
 10098 ms  0x7487 SECKEY_CreateECPrivateKey()
 10098 ms  0x7487 cx:0x7f52c9257f88
 10098 ms     | 0x7487 EC_ValidatePublicKey()
 10100 ms     | 0x7487 ret:0x0
 10100 ms  0x7487 ret:0x7f52df4aa820::7f52df4aa820  10 0a 59 c9                                      ..Y.
 10108 ms  0x7487 PK11_Encrypt()
 10108 ms  0x7487 symkey:0x7f52c9b77280
 10108 ms  0x7487 PK11_DeriveWithFlags()
 10108 ms  0x7487 basekey:0x7f52dafc5480
 10108 ms     | 0x7487 PK11_DeriveWithTemplate()
 10108 ms  0x7487 ret:0x7f52dafc4e80
 10108 ms  0x7487 PK11_DeriveWithFlags()
 10108 ms  0x7487 basekey:0x7f52dafc5480
 10108 ms     | 0x7487 PK11_DeriveWithTemplate()
 10108 ms  0x7487 ret:0x7f52dafc4e80
 10108 ms  0x7487 PK11_Encrypt()
 10108 ms  0x7487 symkey:0x7f52dafc5080
 10109 ms  0x7487 PK11_Derive()
 10109 ms  0x7487 basekey:0x7f52dafc4e80
 10109 ms     | 0x7487 PK11_DeriveWithTemplate()
 10109 ms  0x7487 ret:0x7f52dafc5100
 10109 ms  0x7487 PK11_PubDeriveWithKDF()
 10109 ms  0x7487 seckey:0x7f52e0e8f020
 10109 ms     | 0x7487 EC_ValidatePublicKey()
 10109 ms     | 0x7487 ret:0x0
 10110 ms  0x7487 ret:0x7f52dafc4e80
 10110 ms  SECKEY_ECParamsToKeySize()
 10110 ms  0x7487 ret:0xff
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52dafc5100
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52dafc5a00
 10110 ms  0x7487 PK11_Derive()
 10110 ms  0x7487 basekey:0x7f52dafc4e80
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52db56ab00
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52db56ab00
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52dafc5100
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52db56ab00
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52dafc4e80
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52db56ab00
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52dafc5a00
 10110 ms  0x7487 PK11_Derive()
 10110 ms  0x7487 basekey:0x7f52db1bc680
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52db56af80
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52dafc4e80
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52db56ab00
 10110 ms  0x7487 PK11_DeriveWithFlags()
 10110 ms  0x7487 basekey:0x7f52dafc4e80
 10110 ms     | 0x7487 PK11_DeriveWithTemplate()
 10110 ms  0x7487 ret:0x7f52dafc5a00
 10112 ms  SECKEY_ECParamsToKeySize()
 10112 ms  0x7487 ret:0x100
 10112 ms  SECKEY_ECParamsToBasePointOrderLen()
 10112 ms  0x7487 ret:0x100
 10112 ms  SECKEY_ECParamsToBasePointOrderLen()
 10112 ms  0x7487 ret:0x100
 10112 ms  0x7487 EC_ValidatePublicKey()
 10114 ms  0x7487 ret:0x0
 10116 ms  0x7487 PK11_DeriveWithFlags()
 10116 ms  0x7487 basekey:0x7f52dafc4e80
 10116 ms     | 0x7487 PK11_DeriveWithTemplate()
 10116 ms  0x7487 ret:0x7f52dafc5a00
 10116 ms  0x7487 SSL_AuthCertificateComplete()
 10116 ms  0x7487 fd:0x7f52c9366430
 10116 ms  0x7487 err:0x0
 10116 ms     | 0x7487 PK11_DeriveWithFlags()
 10116 ms     | 0x7487 basekey:0x7f52db56af80
 10116 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10116 ms     | 0x7487 ret:0x7f52dafc5a00
 10116 ms     | 0x7487 PK11_DeriveWithFlags()
 10116 ms     | 0x7487 basekey:0x7f52db56af80
 10116 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10116 ms     | 0x7487 ret:0x7f52db1bc680
 10116 ms     | 0x7487 PK11_DeriveWithFlags()
 10116 ms     | 0x7487 basekey:0x7f52db56af80
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b080
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52dafc5100
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b180
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52dafc5100
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b280
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52db1bc680
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b280
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52db1bc680
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b400
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52dafc5100
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56ab00
 10117 ms     | 0x7487 PK11_Encrypt()
 10117 ms     | 0x7487 symkey:0x7f52db56b180
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52dafc5a00
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56ab00
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52dafc5a00
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b400
 10117 ms     | 0x7487 PK11_DeriveWithFlags()
 10117 ms     | 0x7487 basekey:0x7f52db56af80
 10117 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10117 ms     | 0x7487 ret:0x7f52db56b180
 10117 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10117 ms     | 0x7487 privk:0x7f52e0e91020::7f52e0e91020  80 28 51 db                                      .(Q.
 10117 ms     | 0x7487 privk:0x7f52e0e91020::7f52e0e91020  e5 e5 e5 e5                                      ....
 10117 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10117 ms     | 0x7487 privk:0x7f52e0e8f020::7f52e0e8f020  00 26 51 db                                      .&Q.
 10117 ms     | 0x7487 privk:0x7f52e0e8f020::7f52e0e8f020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 10133 ms  0x748f PR_Close()
 10133 ms  0x748f fd:0x7f52c932c9d0
 10134 ms  0x748f PR_Close()
 10134 ms  0x748f fd:0x7f52c932c9d0
           /* TID 0x7487 */
 10134 ms  0x7487 PK11_Encrypt()
 10134 ms  0x7487 symkey:0x7f52db56ab00
           /* TID 0x748f */
 10136 ms  0x748f PR_Close()
 10136 ms  0x748f fd:0x7f52c932c9d0
           /* TID 0x7487 */
 10136 ms  0x7487 PK11_DeriveWithFlags()
 10136 ms  0x7487 basekey:0x7f52db360480
 10136 ms     | 0x7487 PK11_DeriveWithTemplate()
 10136 ms  0x7487 ret:0x7f52dafc4e80
 10136 ms  0x7487 PK11_DeriveWithFlags()
 10136 ms  0x7487 basekey:0x7f52db360480
 10136 ms     | 0x7487 PK11_DeriveWithTemplate()
 10136 ms  0x7487 ret:0x7f52dafc4e80
 10136 ms  0x7487 PR_Close()
 10136 ms  0x7487 fd:0x7f52db0cdee0
 10136 ms     | 0x7487 PK11_Encrypt()
 10136 ms     | 0x7487 symkey:0x7f52dafc5900
 10136 ms  0x7487 PK11_Encrypt()
 10136 ms  0x7487 symkey:0x7f52c985d180
           /* TID 0x748f */
 10137 ms  0x748f PR_Close()
 10137 ms  0x748f fd:0x7f52c93663a0
           /* TID 0x7487 */
 10145 ms  0x7487 PK11_Encrypt()
 10145 ms  0x7487 symkey:0x7f52c9b77280
           /* TID 0x748f */
 10146 ms  0x748f PR_Close()
 10146 ms  0x748f fd:0x7f52c93663a0
           /* TID 0x7487 */
 10152 ms  SECKEY_ECParamsToKeySize()
 10152 ms  0x7487 ret:0x100
 10152 ms  0x7487 SECKEY_CreateECPrivateKey()
 10152 ms  0x7487 cx:0x7f52c9257f88
 10153 ms     | 0x7487 EC_ValidatePublicKey()
 10155 ms     | 0x7487 ret:0x0
           /* TID 0x7525 */
 10155 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10155 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 10155 ms  0x7487 ret:0x7f52e0a26020::7f52e0a26020  f0 8b b7 c9                                      ....
 10155 ms  0x7487 PK11_PubDeriveWithKDF()
 10155 ms  0x7487 seckey:0x7f52e0a26020
 10155 ms     | 0x7487 EC_ValidatePublicKey()
 10159 ms     | 0x7487 ret:0x0
 10161 ms  0x7487 ret:0x7f52dafc5180
 10161 ms  0x7487 PK11_DeriveWithFlags()
 10161 ms  0x7487 basekey:0x7f52dafc5180
 10161 ms     | 0x7487 PK11_DeriveWithTemplate()
 10161 ms  0x7487 ret:0x7f52dafc4c00
 10161 ms  0x7487 PK11_Derive()
 10161 ms  0x7487 basekey:0x7f52dafc4c00
 10161 ms     | 0x7487 PK11_DeriveWithTemplate()
 10161 ms  0x7487 ret:0x7f52e49db380
 10161 ms  0x7487 SECKEY_DestroyPrivateKey()
 10161 ms  0x7487 privk:0x7f52e0a26020::7f52e0a26020  f0 8b b7 c9                                      ....
 10161 ms  0x7487 privk:0x7f52e0a26020::7f52e0a26020  e5 e5 e5 e5                                      ....
 10161 ms  0x7487 PK11_Encrypt()
 10161 ms  0x7487 symkey:0x7f52db56b980
 10166 ms  0x7487 SSL_AuthCertificateComplete()
 10166 ms  0x7487 fd:0x7f52c9595bb0
 10166 ms  0x7487 err:0x0
           /* TID 0x748f */
 10167 ms  0x748f PR_Close()
 10167 ms  0x748f fd:0x7f52c932cbe0
           /* TID 0x7487 */
 10167 ms  0x7487 PK11_Encrypt()
 10167 ms  0x7487 symkey:0x7f52db56b980
 10168 ms  0x7487 PK11_DeriveWithFlags()
 10168 ms  0x7487 basekey:0x7f52db56b180
 10168 ms     | 0x7487 PK11_DeriveWithTemplate()
 10168 ms  0x7487 ret:0x7f52dafc5180
 10168 ms  0x7487 PK11_DeriveWithFlags()
 10168 ms  0x7487 basekey:0x7f52db56b180
 10168 ms     | 0x7487 PK11_DeriveWithTemplate()
 10168 ms  0x7487 ret:0x7f52dafc5180
 10168 ms  0x7487 PR_Close()
 10168 ms  0x7487 fd:0x7f52c9366430
 10168 ms     | 0x7487 PK11_Encrypt()
 10168 ms     | 0x7487 symkey:0x7f52db56ab00
 10168 ms  0x7487 PK11_Encrypt()
 10168 ms  0x7487 symkey:0x7f52c9b77e80
 10169 ms  0x7487 PK11_Encrypt()
 10169 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 10173 ms  0x748f PR_Close()
 10173 ms  0x748f fd:0x7f52c932ca60
           /* TID 0x7487 */
 10173 ms  0x7487 SSL_ImportFD()
 10173 ms  0x7487 ret:0x7f52c932ca60
 10173 ms  0x7487 SSL_AuthCertificateHook()
 10173 ms  0x7487 fd:0x7f52c932ca60
 10173 ms  0x7487 ret:0x0
 10173 ms  0x7487 PR_Connect()
 10173 ms  0x7487 fd:0x7f52c932ca60
           /* TID 0x748f */
 10183 ms  0x748f PR_Close()
 10183 ms  0x748f fd:0x7f52c930de20
 10183 ms  0x748f PR_Close()
 10183 ms  0x748f fd:0x7f52db0cdfd0
 10186 ms  0x748f PR_Close()
 10186 ms  0x748f fd:0x7f52c930de20
           /* TID 0x7487 */
 10197 ms  0x7487 PK11_Encrypt()
 10197 ms  0x7487 symkey:0x7f52c9b77280
           /* TID 0x748f */
 10201 ms  0x748f PR_Close()
 10201 ms  0x748f fd:0x7f52c930de20
           /* TID 0x7526 */
 10201 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10201 ms  0x7526 ret:0x0
           /* TID 0x7487 */
 10201 ms  0x7487 SSL_AuthCertificateComplete()
 10201 ms  0x7487 fd:0x7f52db0d52e0
 10201 ms  0x7487 err:0x0
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db1bda00
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db56b080
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db1bda00
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db1bc680
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db1bda00
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52dafc5a00
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52dafc5980
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db56b180
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52dafc5980
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db56b280
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db1bc680
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db56b280
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db1bc680
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db56ab00
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52dafc5980
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db1bd500
 10201 ms     | 0x7487 PK11_Encrypt()
 10201 ms     | 0x7487 symkey:0x7f52db56b180
 10201 ms     | 0x7487 PK11_DeriveWithFlags()
 10201 ms     | 0x7487 basekey:0x7f52db56b080
 10201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10201 ms     | 0x7487 ret:0x7f52db1bd500
 10202 ms     | 0x7487 PK11_DeriveWithFlags()
 10202 ms     | 0x7487 basekey:0x7f52db56b080
 10202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10202 ms     | 0x7487 ret:0x7f52db56ab00
 10202 ms     | 0x7487 PK11_DeriveWithFlags()
 10202 ms     | 0x7487 basekey:0x7f52db1bda00
 10202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10202 ms     | 0x7487 ret:0x7f52db56b180
 10202 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10202 ms     | 0x7487 privk:0x7f52e0a32020::7f52e0a32020  f0 91 0c db                                      ....
 10202 ms     | 0x7487 privk:0x7f52e0a32020::7f52e0a32020  e5 e5 e5 e5                                      ....
 10202 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10202 ms     | 0x7487 privk:0x7f52e0a2e020::7f52e0a2e020  80 2d bc c9                                      .-..
 10202 ms     | 0x7487 privk:0x7f52e0a2e020::7f52e0a2e020  e5 e5 e5 e5                                      ....
 10202 ms  0x7487 PK11_Encrypt()
 10202 ms  0x7487 symkey:0x7f52db1bd500
 10202 ms  0x7487 PK11_Encrypt()
 10202 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 10206 ms  0x748f PR_Close()
 10206 ms  0x748f fd:0x7f52c932ca30
           /* TID 0x7487 */
 10211 ms  0x7487 SECKEY_CreateECPrivateKey()
 10211 ms  0x7487 cx:0x7f52c9256f48
 10211 ms     | 0x7487 EC_ValidatePublicKey()
 10211 ms     | 0x7487 ret:0x0
 10211 ms  0x7487 ret:0x7f52e07ba820::7f52e07ba820  c0 24 5b c9                                      .$[.
 10211 ms  0x7487 SECKEY_CreateECPrivateKey()
 10211 ms  0x7487 cx:0x7f52c9256f48
 10212 ms     | 0x7487 EC_ValidatePublicKey()
 10214 ms     | 0x7487 ret:0x0
 10214 ms  0x7487 ret:0x7f52e0a27020::7f52e0a27020  c0 09 59 c9                                      ..Y.
           /* TID 0x7527 */
 10217 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10217 ms  0x7527 ret:0x0
           /* TID 0x748f */
 10217 ms  0x748f PR_Close()
 10217 ms  0x748f fd:0x7f52c932cc10
 10217 ms  0x748f PR_Close()
 10217 ms  0x748f fd:0x7f52c932ca90
           /* TID 0x7487 */
 10218 ms  0x7487 SSL_AuthCertificateComplete()
 10218 ms  0x7487 fd:0x7f52db0cd8e0
 10218 ms  0x7487 err:0x0
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db360200
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52dafc5680
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db360200
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52dafc5980
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db360200
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db1bda00
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db35f700
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db56ab00
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db35f700
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52dafc5180
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52dafc5980
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52dafc5180
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52dafc5980
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db360480
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db35f700
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db35f800
 10218 ms     | 0x7487 PK11_Encrypt()
 10218 ms     | 0x7487 symkey:0x7f52db56ab00
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52dafc5680
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db35f800
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52dafc5680
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db360480
 10218 ms     | 0x7487 PK11_DeriveWithFlags()
 10218 ms     | 0x7487 basekey:0x7f52db360200
 10218 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10218 ms     | 0x7487 ret:0x7f52db56ab00
 10218 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10218 ms     | 0x7487 privk:0x7f52c9b4e020::7f52c9b4e020  c0 e4 b3 c9                                      ....
 10218 ms     | 0x7487 privk:0x7f52c9b4e020::7f52c9b4e020  e5 e5 e5 e5                                      ....
 10218 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10218 ms     | 0x7487 privk:0x7f52c9b4a020::7f52c9b4a020  40 e2 b3 c9                                      @...
 10219 ms     | 0x7487 privk:0x7f52c9b4a020::7f52c9b4a020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 10219 ms  0x748f PR_Close()
 10219 ms  0x748f fd:0x7f52c932ca90
           /* TID 0x7487 */
 10220 ms  0x7487 PK11_Encrypt()
 10220 ms  0x7487 symkey:0x7f52db35f800
 10220 ms  0x7487 PK11_Encrypt()
 10220 ms  0x7487 symkey:0x7f52db35f800
           /* TID 0x748f */
 10222 ms  0x748f PR_Close()
 10222 ms  0x748f fd:0x7f52c932c8e0
           /* TID 0x7487 */
 10234 ms  0x7487 PK11_Encrypt()
 10234 ms  0x7487 symkey:0x7f52c9b77e80
           /* TID 0x748f */
 10235 ms  0x748f PR_Close()
 10235 ms  0x748f fd:0x7f52c932c8e0
           /* TID 0x7487 */
 10239 ms  0x7487 PK11_DeriveWithFlags()
 10239 ms  0x7487 basekey:0x7f52db56b180
 10239 ms     | 0x7487 PK11_DeriveWithTemplate()
 10239 ms  0x7487 ret:0x7f52db1bc900
 10239 ms  0x7487 PK11_DeriveWithFlags()
 10239 ms  0x7487 basekey:0x7f52db56b180
 10239 ms     | 0x7487 PK11_DeriveWithTemplate()
 10239 ms  0x7487 ret:0x7f52db1bc900
 10239 ms  0x7487 PR_Close()
 10239 ms  0x7487 fd:0x7f52db0d52e0
 10239 ms     | 0x7487 PK11_Encrypt()
 10239 ms     | 0x7487 symkey:0x7f52db1bd500
           /* TID 0x748f */
 10241 ms  0x748f PR_Close()
 10241 ms  0x748f fd:0x7f52c930de20
           /* TID 0x752a */
 10241 ms  0x752a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10241 ms  0x752a ret:0x0
           /* TID 0x7487 */
 10241 ms  0x7487 SSL_AuthCertificateComplete()
 10241 ms  0x7487 fd:0x7f52c9b7fb50
 10241 ms  0x7487 err:0x0
 10241 ms     | 0x7487 PK11_DeriveWithFlags()
 10241 ms     | 0x7487 basekey:0x7f52db51f380
 10241 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10241 ms     | 0x7487 ret:0x7f52dafc5a00
 10241 ms     | 0x7487 PK11_DeriveWithFlags()
 10241 ms     | 0x7487 basekey:0x7f52db51f380
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db1bc680
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db51f380
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db56b080
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db35fe00
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db56b180
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db35fe00
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db56b280
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db1bc680
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db56b280
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db1bc680
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db1bd500
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db35fe00
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db51ee80
 10242 ms     | 0x7487 PK11_Encrypt()
 10242 ms     | 0x7487 symkey:0x7f52db56b180
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52dafc5a00
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db51ee80
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52dafc5a00
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db1bd500
 10242 ms     | 0x7487 PK11_DeriveWithFlags()
 10242 ms     | 0x7487 basekey:0x7f52db51f380
 10242 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10242 ms     | 0x7487 ret:0x7f52db56b180
 10242 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10242 ms     | 0x7487 privk:0x7f52e0a35820::7f52e0a35820  80 93 0c db                                      ....
 10242 ms     | 0x7487 privk:0x7f52e0a35820::7f52e0a35820  e5 e5 e5 e5                                      ....
 10242 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10242 ms     | 0x7487 privk:0x7f52c9b54820::7f52c9b54820  40 e7 b3 c9                                      @...
 10242 ms     | 0x7487 privk:0x7f52c9b54820::7f52c9b54820  e5 e5 e5 e5                                      ....
 10243 ms  0x7487 PK11_Encrypt()
 10243 ms  0x7487 symkey:0x7f52db51ee80
 10243 ms  0x7487 PK11_Encrypt()
 10243 ms  0x7487 symkey:0x7f52dafc5080
 10244 ms  0x7487 PK11_Encrypt()
 10244 ms  0x7487 symkey:0x7f52c9b77280
 10247 ms  0x7487 PR_Connect()
 10247 ms  0x7487 fd:0x7f52c93fe790
 10253 ms  0x7487 SECKEY_DestroyPrivateKey()
 10253 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  10 0a 59 c9                                      ..Y.
 10253 ms  0x7487 privk:0x7f52df4aa820::7f52df4aa820  e5 e5 e5 e5                                      ....
 10254 ms  0x7487 SECKEY_DestroyPrivateKey()
 10254 ms  0x7487 privk:0x7f52c9720820::7f52c9720820  10 ff 38 c9                                      ..8.
 10254 ms  0x7487 privk:0x7f52c9720820::7f52c9720820  e5 e5 e5 e5                                      ....
 10256 ms  0x7487 PK11_DeriveWithFlags()
 10256 ms  0x7487 basekey:0x7f52db56ab00
 10256 ms     | 0x7487 PK11_DeriveWithTemplate()
 10256 ms  0x7487 ret:0x7f52db35f780
 10256 ms  0x7487 PK11_DeriveWithFlags()
 10256 ms  0x7487 basekey:0x7f52db56ab00
 10256 ms     | 0x7487 PK11_DeriveWithTemplate()
 10256 ms  0x7487 ret:0x7f52db35f780
 10256 ms  0x7487 PK11_Encrypt()
 10256 ms  0x7487 symkey:0x7f52db35f800
           /* TID 0x748f */
 10257 ms  0x748f PR_Close()
 10257 ms  0x748f fd:0x7f52c98e5d30
 10259 ms  0x748f PR_Close()
 10259 ms  0x748f fd:0x7f52c932c910
 10259 ms  0x748f PR_Close()
 10259 ms  0x748f fd:0x7f52c98e5d30
           /* TID 0x7487 */
 10269 ms  0x7487 PK11_Derive()
 10269 ms  0x7487 basekey:0x7f52db35f780
 10269 ms     | 0x7487 PK11_DeriveWithTemplate()
 10269 ms  0x7487 ret:0x7f52db35fe00
 10269 ms  0x7487 PK11_PubDeriveWithKDF()
 10269 ms  0x7487 seckey:0x7f52e07ba820
 10269 ms     | 0x7487 EC_ValidatePublicKey()
 10269 ms     | 0x7487 ret:0x0
 10269 ms  0x7487 ret:0x7f52db35f780
 10269 ms  SECKEY_ECParamsToKeySize()
 10269 ms  0x7487 ret:0xff
 10269 ms  0x7487 PK11_DeriveWithFlags()
 10269 ms  0x7487 basekey:0x7f52db35fe00
 10269 ms     | 0x7487 PK11_DeriveWithTemplate()
 10269 ms  0x7487 ret:0x7f52db51f380
 10269 ms  0x7487 PK11_Derive()
 10269 ms  0x7487 basekey:0x7f52db35f780
 10269 ms     | 0x7487 PK11_DeriveWithTemplate()
 10269 ms  0x7487 ret:0x7f52db1bd500
 10269 ms  0x7487 PK11_DeriveWithFlags()
 10269 ms  0x7487 basekey:0x7f52db1bd500
 10269 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db35fe00
 10270 ms  0x7487 PK11_DeriveWithFlags()
 10270 ms  0x7487 basekey:0x7f52db1bd500
 10270 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db35f780
 10270 ms  0x7487 PK11_DeriveWithFlags()
 10270 ms  0x7487 basekey:0x7f52db1bd500
 10270 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db51f380
 10270 ms  0x7487 PK11_Derive()
 10270 ms  0x7487 basekey:0x7f52db1bc900
 10270 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db35f700
 10270 ms  0x7487 PK11_DeriveWithFlags()
 10270 ms  0x7487 basekey:0x7f52db35f780
 10270 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db1bd500
 10270 ms  0x7487 PK11_DeriveWithFlags()
 10270 ms  0x7487 basekey:0x7f52db35f780
 10270 ms     | 0x7487 PK11_DeriveWithTemplate()
 10270 ms  0x7487 ret:0x7f52db51f380
 10272 ms  0x7487 PK11_DeriveWithFlags()
 10272 ms  0x7487 basekey:0x7f52db35f780
 10272 ms     | 0x7487 PK11_DeriveWithTemplate()
 10272 ms  0x7487 ret:0x7f52db51f380
           /* TID 0x748f */
 10273 ms  0x748f PR_Close()
 10273 ms  0x748f fd:0x7f52c939cdc0
 10274 ms  0x748f PR_Close()
 10274 ms  0x748f fd:0x7f52c98e5dc0
           /* TID 0x7487 */
 10280 ms  0x7487 PK11_DeriveWithFlags()
 10280 ms  0x7487 basekey:0x7f52db56b180
 10280 ms     | 0x7487 PK11_DeriveWithTemplate()
 10280 ms  0x7487 ret:0x7f52db51f380
 10280 ms  0x7487 PK11_DeriveWithFlags()
 10280 ms  0x7487 basekey:0x7f52db56b180
 10280 ms     | 0x7487 PK11_DeriveWithTemplate()
 10280 ms  0x7487 ret:0x7f52db51f380
 10280 ms  0x7487 PR_Close()
 10280 ms  0x7487 fd:0x7f52c9b7fb50
 10280 ms     | 0x7487 PK11_Encrypt()
 10280 ms     | 0x7487 symkey:0x7f52db51ee80
           /* TID 0x748f */
 10281 ms  0x748f PR_Close()
 10281 ms  0x748f fd:0x7f52c930de20
 10295 ms  0x748f PR_Close()
 10295 ms  0x748f fd:0x7f52c930de20
           /* TID 0x7487 */
 10298 ms  0x7487 PK11_Encrypt()
 10298 ms  0x7487 symkey:0x7f52db35f800
           /* TID 0x748f */
 10299 ms  0x748f PR_Close()
 10299 ms  0x748f fd:0x7f52c930de20
           /* TID 0x7487 */
 10306 ms  0x7487 PK11_Encrypt()
 10306 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 10307 ms  0x748f PR_Close()
 10307 ms  0x748f fd:0x7f52c930de20
 10318 ms  0x748f PR_Close()
 10318 ms  0x748f fd:0x7f52c930de20
           /* TID 0x7487 */
 10391 ms  0x7487 SSL_ImportFD()
 10391 ms  0x7487 ret:0x7f52db0cdee0
 10391 ms  0x7487 SSL_AuthCertificateHook()
 10391 ms  0x7487 fd:0x7f52db0cdee0
 10391 ms  0x7487 ret:0x0
 10391 ms  0x7487 PR_Connect()
 10391 ms  0x7487 fd:0x7f52db0cdee0
 10417 ms  0x7487 SECKEY_CreateECPrivateKey()
 10417 ms  0x7487 cx:0x7f52c92575c8
 10418 ms     | 0x7487 EC_ValidatePublicKey()
 10418 ms     | 0x7487 ret:0x0
 10418 ms  0x7487 ret:0x7f52e0a20820::7f52e0a20820  40 e2 b3 c9                                      @...
 10418 ms  0x7487 SECKEY_CreateECPrivateKey()
 10418 ms  0x7487 cx:0x7f52c92575c8
 10418 ms     | 0x7487 EC_ValidatePublicKey()
 10420 ms     | 0x7487 ret:0x0
 10420 ms  0x7487 ret:0x7f52e0a2b020::7f52e0a2b020  c0 e4 b3 c9                                      ....
 10427 ms  0x7487 PR_Connect()
 10427 ms  0x7487 fd:0x7f52db0d52e0
           /* TID 0x748f */
 10470 ms  0x748f PR_Close()
 10470 ms  0x748f fd:0x7f52c932cb50
           /* TID 0x74e3 */
 10470 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10470 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 10471 ms  SECKEY_ECParamsToKeySize()
 10471 ms  0x7487 ret:0x100
 10471 ms  0x7487 SECKEY_CreateECPrivateKey()
 10471 ms  0x7487 cx:0x7f52c92575c8
 10471 ms     | 0x7487 EC_ValidatePublicKey()
 10473 ms     | 0x7487 ret:0x0
 10473 ms  0x7487 ret:0x7f52e0a2e820::7f52e0a2e820  a0 e6 b3 c9                                      ....
 10473 ms  0x7487 PK11_PubDeriveWithKDF()
 10473 ms  0x7487 seckey:0x7f52e0a2e820
 10473 ms     | 0x7487 EC_ValidatePublicKey()
 10474 ms     | 0x7487 ret:0x0
 10476 ms  0x7487 ret:0x7f52db56b080
 10476 ms  0x7487 PK11_DeriveWithFlags()
 10476 ms  0x7487 basekey:0x7f52db56b080
 10476 ms     | 0x7487 PK11_DeriveWithTemplate()
 10476 ms  0x7487 ret:0x7f52db1bc680
 10476 ms  0x7487 PK11_Derive()
 10476 ms  0x7487 basekey:0x7f52db1bc680
 10476 ms     | 0x7487 PK11_DeriveWithTemplate()
 10476 ms  0x7487 ret:0x7f52dafc5a00
 10476 ms  0x7487 SECKEY_DestroyPrivateKey()
 10476 ms  0x7487 privk:0x7f52e0a2e820::7f52e0a2e820  a0 e6 b3 c9                                      ....
 10476 ms  0x7487 privk:0x7f52e0a2e820::7f52e0a2e820  e5 e5 e5 e5                                      ....
 10476 ms  0x7487 PK11_Encrypt()
 10476 ms  0x7487 symkey:0x7f52c9554500
           /* TID 0x7525 */
 10477 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10477 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 10491 ms  0x7487 SSL_AuthCertificateComplete()
 10491 ms  0x7487 fd:0x7f52c932ca60
 10491 ms  0x7487 err:0x0
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35f700
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db56b080
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35f700
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db56b180
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35f700
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db56b280
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35fe00
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db51ee80
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35fe00
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db51f380
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db56b180
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db51f380
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db56b180
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db1bc900
 10491 ms     | 0x7487 PK11_DeriveWithFlags()
 10491 ms     | 0x7487 basekey:0x7f52db35fe00
 10491 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10491 ms     | 0x7487 ret:0x7f52db1bd500
 10491 ms     | 0x7487 PK11_Encrypt()
 10491 ms     | 0x7487 symkey:0x7f52db51ee80
 10493 ms     | 0x7487 PK11_DeriveWithFlags()
 10493 ms     | 0x7487 basekey:0x7f52db56b080
 10493 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10493 ms     | 0x7487 ret:0x7f52db1bd500
 10493 ms     | 0x7487 PK11_DeriveWithFlags()
 10493 ms     | 0x7487 basekey:0x7f52db56b080
 10493 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10493 ms     | 0x7487 ret:0x7f52db1bc900
 10493 ms     | 0x7487 PK11_DeriveWithFlags()
 10493 ms     | 0x7487 basekey:0x7f52db35f700
 10493 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 10493 ms     | 0x7487 ret:0x7f52db51ee80
 10493 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10493 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  c0 09 59 c9                                      ..Y.
 10493 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  e5 e5 e5 e5                                      ....
 10493 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 10493 ms     | 0x7487 privk:0x7f52e07ba820::7f52e07ba820  c0 24 5b c9                                      .$[.
 10493 ms     | 0x7487 privk:0x7f52e07ba820::7f52e07ba820  e5 e5 e5 e5                                      ....
 10493 ms  0x7487 SSL_AuthCertificateComplete()
 10493 ms  0x7487 fd:0x7f52db0cdee0
 10493 ms  0x7487 err:0x0
 10496 ms  0x7487 PK11_Encrypt()
 10496 ms  0x7487 symkey:0x7f52db1bd500
 10497 ms  0x7487 PK11_Encrypt()
 10497 ms  0x7487 symkey:0x7f52db1bd500
 10497 ms  0x7487 PK11_Encrypt()
 10497 ms  0x7487 symkey:0x7f52c9554500
           /* TID 0x748f */
 10499 ms  0x748f PR_Close()
 10499 ms  0x748f fd:0x7f52db1b91f0
           /* TID 0x7487 */
 10501 ms  0x7487 PK11_Encrypt()
 10501 ms  0x7487 symkey:0x7f52db1bd500
 10529 ms  0x7487 PK11_DeriveWithFlags()
 10529 ms  0x7487 basekey:0x7f52db51ee80
 10529 ms     | 0x7487 PK11_DeriveWithTemplate()
 10529 ms  0x7487 ret:0x7f52db35f780
 10529 ms  0x7487 PK11_DeriveWithFlags()
 10529 ms  0x7487 basekey:0x7f52db51ee80
 10529 ms     | 0x7487 PK11_DeriveWithTemplate()
 10529 ms  0x7487 ret:0x7f52db35f780
 10529 ms  0x7487 PK11_Encrypt()
 10529 ms  0x7487 symkey:0x7f52db1bd500
           /* TID 0x748f */
 10563 ms  0x748f PR_Close()
 10563 ms  0x748f fd:0x7f52c93661f0
           /* TID 0x7487 */
 10567 ms  0x7487 PK11_Encrypt()
 10567 ms  0x7487 symkey:0x7f52db1bd500
           /* TID 0x748f */
 10569 ms  0x748f PR_Close()
 10569 ms  0x748f fd:0x7f52c9595a00
           /* TID 0x7487 */
 10569 ms  0x7487 SECKEY_DestroyPrivateKey()
 10569 ms  0x7487 privk:0x7f52e0a2b020::7f52e0a2b020  c0 e4 b3 c9                                      ....
 10569 ms  0x7487 privk:0x7f52e0a2b020::7f52e0a2b020  e5 e5 e5 e5                                      ....
 10569 ms  0x7487 SECKEY_DestroyPrivateKey()
 10569 ms  0x7487 privk:0x7f52e0a20820::7f52e0a20820  40 e2 b3 c9                                      @...
 10570 ms  0x7487 privk:0x7f52e0a20820::7f52e0a20820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 10895 ms  0x748f PR_Close()
 10895 ms  0x748f fd:0x7f52c93669d0
 10909 ms  0x748f PR_Close()
 10909 ms  0x748f fd:0x7f52c932cb20
 10921 ms  0x748f PR_Close()
 10921 ms  0x748f fd:0x7f52c9366d90
 10931 ms  0x748f PR_Close()
 10931 ms  0x748f fd:0x7f52c9366d90
 10938 ms  0x748f PR_Close()
 10938 ms  0x748f fd:0x7f52c932cc70
 10941 ms  0x748f PR_Close()
 10941 ms  0x748f fd:0x7f52c932cbb0
 10941 ms  0x748f PR_Close()
 10941 ms  0x748f fd:0x7f52c9366d90
 10957 ms  0x748f PR_Close()
 10957 ms  0x748f fd:0x7f52c932cb80
 11008 ms  0x748f PR_Close()
 11008 ms  0x748f fd:0x7f52c932cbb0
 11054 ms  0x748f PR_Close()
 11054 ms  0x748f fd:0x7f52c932cbb0
 11087 ms  0x748f PR_Close()
 11087 ms  0x748f fd:0x7f52c932cb80
 11087 ms  0x748f PR_Close()
 11087 ms  0x748f fd:0x7f52c932cca0
 11088 ms  0x748f PR_Close()
 11088 ms  0x748f fd:0x7f52c932cf10
 11088 ms  0x748f PR_Close()
 11088 ms  0x748f fd:0x7f52c939c190
 11103 ms  0x748f PR_Close()
 11103 ms  0x748f fd:0x7f52c932cb80
 11103 ms  0x748f PR_Close()
 11103 ms  0x748f fd:0x7f52c932cca0
 11103 ms  0x748f PR_Close()
 11103 ms  0x748f fd:0x7f52c932cf10
 11103 ms  0x748f PR_Close()
 11103 ms  0x748f fd:0x7f52c939c190
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c939cd60
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c93fad30
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c93fe2e0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c93fe880
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c9595a90
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c9595b50
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c98e5cd0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c932cd30
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c9b7fdf0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0cdeb0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d53d0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5520
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5670
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5730
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d57c0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5850
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5b50
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5f40
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db0d5fd0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db31d220
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db31d280
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db31db20
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db31dbb0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52c932cd60
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db321460
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db51d7c0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db51d8b0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db51ddc0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db51deb0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db547220
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db5473a0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db547400
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db547460
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db5474c0
 11104 ms  0x748f PR_Close()
 11104 ms  0x748f fd:0x7f52db547520
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db5475e0
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db547640
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db547760
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db5477f0
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db8205b0
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db820730
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db8208b0
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db820910
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db820a30
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db820f10
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db820f70
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db894430
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db8945e0
 11105 ms  0x748f PR_Close()
 11105 ms  0x748f fd:0x7f52db894700
 11127 ms  0x748f PR_Close()
 11127 ms  0x748f fd:0x7f52c932cb80
 11138 ms  0x748f PR_Close()
 11138 ms  0x748f fd:0x7f52c932cb80
 11144 ms  0x748f PR_Close()
 11144 ms  0x748f fd:0x7f52c932cb80
 11181 ms  0x748f PR_Close()
 11181 ms  0x748f fd:0x7f52c932cb80
 11283 ms  0x748f PR_Close()
 11283 ms  0x748f fd:0x7f52c932ccd0
 11293 ms  0x748f PR_Close()
 11293 ms  0x748f fd:0x7f52c932cbb0
 11296 ms  0x748f PR_Close()
 11296 ms  0x748f fd:0x7f52c932cbb0
 11339 ms  0x748f PR_Close()
 11339 ms  0x748f fd:0x7f52c932cc70
 11342 ms  0x748f PR_Close()
 11342 ms  0x748f fd:0x7f52c932cc70
 11379 ms  0x748f PR_Close()
 11379 ms  0x748f fd:0x7f52c932cbb0
 11419 ms  0x748f PR_Close()
 11419 ms  0x748f fd:0x7f52c932cbb0
 11524 ms  0x748f PR_Close()
 11524 ms  0x748f fd:0x7f52c932cc70
 11642 ms  0x748f PR_Close()
 11642 ms  0x748f fd:0x7f52c932cd90
 11649 ms  0x748f PR_Close()
 11649 ms  0x748f fd:0x7f52c932cb20
 11672 ms  0x748f PR_Close()
 11672 ms  0x748f fd:0x7f52c932cb20
 11685 ms  0x748f PR_Close()
 11685 ms  0x748f fd:0x7f52c93fe100
 11689 ms  0x748f PR_Close()
 11689 ms  0x748f fd:0x7f52c932cb80
 11724 ms  0x748f PR_Close()
 11724 ms  0x748f fd:0x7f52c932cca0
 11725 ms  0x748f PR_Close()
 11725 ms  0x748f fd:0x7f52c932cca0
 11762 ms  0x748f PR_Close()
 11762 ms  0x748f fd:0x7f52c932cca0
 11786 ms  0x748f PR_Close()
 11786 ms  0x748f fd:0x7f52c932cca0
 11819 ms  0x748f PR_Close()
 11819 ms  0x748f fd:0x7f52c932cd00
 11821 ms  0x748f PR_Close()
 11821 ms  0x748f fd:0x7f52c932cb80
 11857 ms  0x748f PR_Close()
 11857 ms  0x748f fd:0x7f52c932cca0
 11862 ms  0x748f PR_Close()
 11862 ms  0x748f fd:0x7f52c932cca0
 11881 ms  0x748f PR_Close()
 11881 ms  0x748f fd:0x7f52c932cca0
 11907 ms  0x748f PR_Close()
 11907 ms  0x748f fd:0x7f52c932cca0
 11934 ms  0x748f PR_Close()
 11934 ms  0x748f fd:0x7f52c932ccd0
 11945 ms  0x748f PR_Close()
 11945 ms  0x748f fd:0x7f52c932ccd0
 11971 ms  0x748f PR_Close()
 11971 ms  0x748f fd:0x7f52c932ccd0
 11983 ms  0x748f PR_Close()
 11983 ms  0x748f fd:0x7f52c932ccd0
 11996 ms  0x748f PR_Close()
 11996 ms  0x748f fd:0x7f52c932ccd0
 12010 ms  0x748f PR_Close()
 12010 ms  0x748f fd:0x7f52c932ccd0
 12020 ms  0x748f PR_Close()
 12020 ms  0x748f fd:0x7f52c932cca0
 12022 ms  0x748f PR_Close()
 12022 ms  0x748f fd:0x7f52c932cca0
 12033 ms  0x748f PR_Close()
 12033 ms  0x748f fd:0x7f52c932cca0
 12045 ms  0x748f PR_Close()
 12045 ms  0x748f fd:0x7f52c932cca0
 12059 ms  0x748f PR_Close()
 12059 ms  0x748f fd:0x7f52c932cd00
 12060 ms  0x748f PR_Close()
 12060 ms  0x748f fd:0x7f52c932cd00
 12070 ms  0x748f PR_Close()
 12070 ms  0x748f fd:0x7f52c932cd00
 12083 ms  0x748f PR_Close()
 12083 ms  0x748f fd:0x7f52c932cd00
 12097 ms  0x748f PR_Close()
 12097 ms  0x748f fd:0x7f52c932cd00
 12113 ms  0x748f PR_Close()
 12113 ms  0x748f fd:0x7f52c932cd00
 12138 ms  0x748f PR_Close()
 12138 ms  0x748f fd:0x7f52c932cd00
 12257 ms  0x748f PR_Close()
 12257 ms  0x748f fd:0x7f52c932cb80
           /* TID 0x7487 */
 12359 ms  0x7487 SSL_ImportFD()
 12359 ms  0x7487 ret:0x7f52c9366370
 12359 ms  0x7487 SSL_AuthCertificateHook()
 12359 ms  0x7487 fd:0x7f52c9366370
 12359 ms  0x7487 ret:0x0
 12359 ms  0x7487 PR_Connect()
 12359 ms  0x7487 fd:0x7f52c9366370
 12360 ms  0x7487 SSL_ImportFD()
 12360 ms  0x7487 ret:0x7f52c9366820
 12360 ms  0x7487 SSL_AuthCertificateHook()
 12360 ms  0x7487 fd:0x7f52c9366820
 12360 ms  0x7487 ret:0x0
 12360 ms  0x7487 PR_Connect()
 12360 ms  0x7487 fd:0x7f52c9366820
 12361 ms  0x7487 PK11_Encrypt()
 12361 ms  0x7487 symkey:0x7f52c9808380
 12361 ms  0x7487 PK11_Encrypt()
 12361 ms  0x7487 symkey:0x7f52c9807680
 12362 ms  0x7487 SSL_ImportFD()
 12362 ms  0x7487 ret:0x7f52c9595100
 12362 ms  0x7487 SSL_AuthCertificateHook()
 12362 ms  0x7487 fd:0x7f52c9595100
 12362 ms  0x7487 ret:0x0
 12362 ms  0x7487 PR_Connect()
 12362 ms  0x7487 fd:0x7f52c9595100
 12363 ms  0x7487 SSL_ImportFD()
 12363 ms  0x7487 ret:0x7f52c95956d0
 12363 ms  0x7487 SSL_AuthCertificateHook()
 12363 ms  0x7487 fd:0x7f52c95956d0
 12363 ms  0x7487 ret:0x0
 12363 ms  0x7487 PR_Connect()
 12363 ms  0x7487 fd:0x7f52c95956d0
 12363 ms  0x7487 SSL_ImportFD()
 12363 ms  0x7487 ret:0x7f52c93fe970
 12363 ms  0x7487 SSL_AuthCertificateHook()
 12363 ms  0x7487 fd:0x7f52c93fe970
 12363 ms  0x7487 ret:0x0
 12363 ms  0x7487 PR_Connect()
 12363 ms  0x7487 fd:0x7f52c93fe970
 12363 ms  0x7487 SSL_ImportFD()
 12363 ms  0x7487 ret:0x7f52c95957c0
 12363 ms  0x7487 SSL_AuthCertificateHook()
 12363 ms  0x7487 fd:0x7f52c95957c0
 12363 ms  0x7487 ret:0x0
 12363 ms  0x7487 PR_Connect()
 12363 ms  0x7487 fd:0x7f52c95957c0
 12364 ms  0x7487 SSL_ImportFD()
 12364 ms  0x7487 ret:0x7f52c95957f0
 12364 ms  0x7487 SSL_AuthCertificateHook()
 12364 ms  0x7487 fd:0x7f52c95957f0
 12364 ms  0x7487 ret:0x0
 12364 ms  0x7487 PR_Connect()
 12364 ms  0x7487 fd:0x7f52c95957f0
 12390 ms  0x7487 SECKEY_CreateECPrivateKey()
 12390 ms  0x7487 cx:0x7f52c9259988
 12390 ms     | 0x7487 EC_ValidatePublicKey()
 12390 ms     | 0x7487 ret:0x0
 12390 ms  0x7487 ret:0x7f52c987a020::7f52c987a020  d0 0d 59 c9                                      ..Y.
 12390 ms  0x7487 SECKEY_CreateECPrivateKey()
 12390 ms  0x7487 cx:0x7f52c9259988
 12391 ms     | 0x7487 EC_ValidatePublicKey()
 12394 ms     | 0x7487 ret:0x0
 12394 ms  0x7487 ret:0x7f52c9880820::7f52c9880820  f0 e1 59 c9                                      ..Y.
           /* TID 0x748f */
 12401 ms  0x748f PR_Close()
 12401 ms  0x748f fd:0x7f52c9366220
 12408 ms  0x748f PR_Close()
 12408 ms  0x748f fd:0x7f52c9366220
           /* TID 0x7487 */
 12409 ms  0x7487 SECKEY_CreateECPrivateKey()
 12409 ms  0x7487 cx:0x7f52c9259168
 12410 ms     | 0x7487 EC_ValidatePublicKey()
 12410 ms     | 0x7487 ret:0x0
 12410 ms  0x7487 ret:0x7f52c9884820::7f52c9884820  e0 e2 59 c9                                      ..Y.
 12410 ms  0x7487 SECKEY_CreateECPrivateKey()
 12410 ms  0x7487 cx:0x7f52c9259168
 12411 ms     | 0x7487 EC_ValidatePublicKey()
 12414 ms     | 0x7487 ret:0x0
 12414 ms  0x7487 ret:0x7f52c9887820::7f52c9887820  00 e6 59 c9                                      ..Y.
 12424 ms  0x7487 SECKEY_CreateECPrivateKey()
 12424 ms  0x7487 cx:0x7f52c9259308
 12425 ms     | 0x7487 EC_ValidatePublicKey()
 12425 ms     | 0x7487 ret:0x0
 12425 ms  0x7487 ret:0x7f52c9b4c820::7f52c9b4c820  60 ea 59 c9                                      `.Y.
 12425 ms  0x7487 SECKEY_CreateECPrivateKey()
 12425 ms  0x7487 cx:0x7f52c9259308
 12426 ms     | 0x7487 EC_ValidatePublicKey()
 12437 ms     | 0x7487 ret:0x0
 12437 ms  0x7487 ret:0x7f52db02e820::7f52db02e820  40 0c 59 c9                                      @.Y.
 12441 ms  0x7487 SECKEY_CreateECPrivateKey()
 12441 ms  0x7487 cx:0x7f52c9259648
 12442 ms     | 0x7487 EC_ValidatePublicKey()
 12442 ms     | 0x7487 ret:0x0
 12442 ms  0x7487 ret:0x7f52df4a9820::7f52df4a9820  b0 b0 86 c9                                      ....
 12442 ms  0x7487 SECKEY_CreateECPrivateKey()
 12442 ms  0x7487 cx:0x7f52c9259648
 12444 ms     | 0x7487 EC_ValidatePublicKey()
 12445 ms     | 0x7487 ret:0x0
 12445 ms  0x7487 ret:0x7f52df4b0020::7f52df4b0020  a0 e1 b3 c9                                      ....
 12446 ms  0x7487 SECKEY_CreateECPrivateKey()
 12446 ms  0x7487 cx:0x7f52c92594a8
 12446 ms     | 0x7487 EC_ValidatePublicKey()
 12446 ms     | 0x7487 ret:0x0
 12446 ms  0x7487 ret:0x7f52e0364020::7f52e0364020  e0 e2 b3 c9                                      ....
 12446 ms  0x7487 SECKEY_CreateECPrivateKey()
 12446 ms  0x7487 cx:0x7f52c92594a8
 12447 ms     | 0x7487 EC_ValidatePublicKey()
 12449 ms     | 0x7487 ret:0x0
 12449 ms  0x7487 ret:0x7f52e0369820::7f52e0369820  60 e5 b3 c9                                      `...
 12449 ms  0x7487 SECKEY_CreateECPrivateKey()
 12449 ms  0x7487 cx:0x7f52c9258fc8
 12450 ms     | 0x7487 EC_ValidatePublicKey()
 12450 ms     | 0x7487 ret:0x0
 12450 ms  0x7487 ret:0x7f52e0a21020::7f52e0a21020  e0 e7 b3 c9                                      ....
 12450 ms  0x7487 SECKEY_CreateECPrivateKey()
 12450 ms  0x7487 cx:0x7f52c9258fc8
 12450 ms     | 0x7487 EC_ValidatePublicKey()
 12452 ms     | 0x7487 ret:0x0
 12452 ms  0x7487 ret:0x7f52e0a27020::7f52e0a27020  30 83 b7 c9                                      0...
           /* TID 0x7526 */
 12453 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12453 ms  0x7526 ret:0x0
           /* TID 0x7487 */
 12453 ms  SECKEY_ECParamsToKeySize()
 12453 ms  0x7487 ret:0x100
 12453 ms  0x7487 SECKEY_CreateECPrivateKey()
 12453 ms  0x7487 cx:0x7f52c9259988
 12453 ms     | 0x7487 EC_ValidatePublicKey()
 12455 ms     | 0x7487 ret:0x0
 12455 ms  0x7487 ret:0x7f52e0a36820::7f52e0a36820  10 8f b7 c9                                      ....
 12455 ms  0x7487 PK11_PubDeriveWithKDF()
 12455 ms  0x7487 seckey:0x7f52e0a36820
 12455 ms     | 0x7487 EC_ValidatePublicKey()
 12456 ms     | 0x7487 ret:0x0
 12458 ms  0x7487 ret:0x7f52db35f780
 12458 ms  0x7487 PK11_DeriveWithFlags()
 12458 ms  0x7487 basekey:0x7f52db35f780
 12458 ms     | 0x7487 PK11_DeriveWithTemplate()
 12458 ms  0x7487 ret:0x7f52db35fe00
 12458 ms  0x7487 PK11_Derive()
 12458 ms  0x7487 basekey:0x7f52db35fe00
 12458 ms     | 0x7487 PK11_DeriveWithTemplate()
 12458 ms  0x7487 ret:0x7f52db35f700
 12458 ms  0x7487 SECKEY_DestroyPrivateKey()
 12458 ms  0x7487 privk:0x7f52e0a36820::7f52e0a36820  10 8f b7 c9                                      ....
 12458 ms  0x7487 privk:0x7f52e0a36820::7f52e0a36820  e5 e5 e5 e5                                      ....
 12458 ms  0x7487 PK11_Encrypt()
 12458 ms  0x7487 symkey:0x7f52c98b6300
 12459 ms  0x7487 SSL_AuthCertificateComplete()
 12459 ms  0x7487 fd:0x7f52c95957f0
 12459 ms  0x7487 err:0x0
 12459 ms  0x7487 PK11_Encrypt()
 12459 ms  0x7487 symkey:0x7f52c98b6300
 12459 ms  0x7487 SECKEY_CreateECPrivateKey()
 12459 ms  0x7487 cx:0x7f52c92597e8
 12460 ms     | 0x7487 EC_ValidatePublicKey()
 12460 ms     | 0x7487 ret:0x0
 12460 ms  0x7487 ret:0x7f52e0a36820::7f52e0a36820  20 8e b7 c9                                       ...
 12460 ms  0x7487 SECKEY_CreateECPrivateKey()
 12460 ms  0x7487 cx:0x7f52c92597e8
 12460 ms     | 0x7487 EC_ValidatePublicKey()
 12462 ms     | 0x7487 ret:0x0
 12462 ms  0x7487 ret:0x7f52e0a86820::7f52e0a86820  60 20 bc c9                                      ` ..
 12469 ms  0x7487 PK11_Derive()
 12469 ms  0x7487 basekey:0x7f52db35f780
 12469 ms     | 0x7487 PK11_DeriveWithTemplate()
 12469 ms  0x7487 ret:0x7f52db1bc900
 12469 ms  0x7487 PK11_PubDeriveWithKDF()
 12469 ms  0x7487 seckey:0x7f52c9884820
 12469 ms     | 0x7487 EC_ValidatePublicKey()
 12469 ms     | 0x7487 ret:0x0
 12470 ms  0x7487 ret:0x7f52db35f780
 12470 ms  SECKEY_ECParamsToKeySize()
 12470 ms  0x7487 ret:0xff
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db1bc900
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db360200
 12470 ms  0x7487 PK11_Derive()
 12470 ms  0x7487 basekey:0x7f52db35f780
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db360480
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db360480
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db1bc900
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db360480
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db35f780
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db360480
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db360200
 12470 ms  0x7487 PK11_Derive()
 12470 ms  0x7487 basekey:0x7f52db1bc700
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52dafc5900
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db35f780
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db360480
 12470 ms  0x7487 PK11_DeriveWithFlags()
 12470 ms  0x7487 basekey:0x7f52db35f780
 12470 ms     | 0x7487 PK11_DeriveWithTemplate()
 12470 ms  0x7487 ret:0x7f52db360200
 12473 ms  0x7487 PK11_DeriveWithFlags()
 12473 ms  0x7487 basekey:0x7f52db35f780
 12473 ms     | 0x7487 PK11_DeriveWithTemplate()
 12473 ms  0x7487 ret:0x7f52db360200
 12473 ms  0x7487 SSL_AuthCertificateComplete()
 12473 ms  0x7487 fd:0x7f52c9366820
 12473 ms  0x7487 err:0x0
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52dafc5900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db360200
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52dafc5900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db1bc700
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52dafc5900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52dafc4e80
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52db1bc900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52dafc5100
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52db1bc900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db56af80
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52db1bc700
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db56af80
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52db1bc700
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db56b400
 12473 ms     | 0x7487 PK11_DeriveWithFlags()
 12473 ms     | 0x7487 basekey:0x7f52db1bc900
 12473 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12473 ms     | 0x7487 ret:0x7f52db360480
 12473 ms     | 0x7487 PK11_Encrypt()
 12473 ms     | 0x7487 symkey:0x7f52dafc5100
 12474 ms     | 0x7487 PK11_DeriveWithFlags()
 12474 ms     | 0x7487 basekey:0x7f52db360200
 12474 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12474 ms     | 0x7487 ret:0x7f52db360480
 12474 ms     | 0x7487 PK11_DeriveWithFlags()
 12474 ms     | 0x7487 basekey:0x7f52db360200
 12474 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12474 ms     | 0x7487 ret:0x7f52db56b400
 12474 ms     | 0x7487 PK11_DeriveWithFlags()
 12474 ms     | 0x7487 basekey:0x7f52dafc5900
 12474 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12474 ms     | 0x7487 ret:0x7f52dafc5100
 12474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 12474 ms     | 0x7487 privk:0x7f52c9887820::7f52c9887820  00 e6 59 c9                                      ..Y.
 12474 ms     | 0x7487 privk:0x7f52c9887820::7f52c9887820  e5 e5 e5 e5                                      ....
 12474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 12474 ms     | 0x7487 privk:0x7f52c9884820::7f52c9884820  e0 e2 59 c9                                      ..Y.
 12474 ms     | 0x7487 privk:0x7f52c9884820::7f52c9884820  e5 e5 e5 e5                                      ....
 12479 ms  0x7487 PK11_Encrypt()
 12479 ms  0x7487 symkey:0x7f52db360480
 12479 ms  0x7487 PK11_Encrypt()
 12479 ms  0x7487 symkey:0x7f52db360480
           /* TID 0x74e3 */
 12480 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12480 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 12480 ms  SECKEY_ECParamsToKeySize()
 12480 ms  0x7487 ret:0x100
 12480 ms  0x7487 SECKEY_CreateECPrivateKey()
 12480 ms  0x7487 cx:0x7f52c9259308
 12481 ms     | 0x7487 EC_ValidatePublicKey()
 12482 ms     | 0x7487 ret:0x0
 12483 ms  0x7487 ret:0x7f52e0e86020::7f52e0e86020  f0 21 bc c9                                      .!..
 12483 ms  0x7487 PK11_PubDeriveWithKDF()
 12483 ms  0x7487 seckey:0x7f52e0e86020
 12483 ms     | 0x7487 EC_ValidatePublicKey()
 12484 ms     | 0x7487 ret:0x0
 12486 ms  0x7487 ret:0x7f52db35f780
 12486 ms  0x7487 PK11_DeriveWithFlags()
 12486 ms  0x7487 basekey:0x7f52db35f780
 12486 ms     | 0x7487 PK11_DeriveWithTemplate()
 12486 ms  0x7487 ret:0x7f52db1bc900
 12486 ms  0x7487 PK11_Derive()
 12486 ms  0x7487 basekey:0x7f52db1bc900
 12486 ms     | 0x7487 PK11_DeriveWithTemplate()
 12486 ms  0x7487 ret:0x7f52dafc5900
 12486 ms  0x7487 SECKEY_DestroyPrivateKey()
 12486 ms  0x7487 privk:0x7f52e0e86020::7f52e0e86020  f0 21 bc c9                                      .!..
 12486 ms  0x7487 privk:0x7f52e0e86020::7f52e0e86020  e5 e5 e5 e5                                      ....
 12486 ms  0x7487 PK11_Encrypt()
 12486 ms  0x7487 symkey:0x7f52c98b6600
 12486 ms  0x7487 SSL_AuthCertificateComplete()
 12486 ms  0x7487 fd:0x7f52c9595100
 12486 ms  0x7487 err:0x0
 12486 ms  0x7487 PK11_Encrypt()
 12486 ms  0x7487 symkey:0x7f52c98b6600
 12487 ms  0x7487 PK11_Derive()
 12487 ms  0x7487 basekey:0x7f52db35f780
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52db56b400
 12487 ms  0x7487 PK11_PubDeriveWithKDF()
 12487 ms  0x7487 seckey:0x7f52e0364020
 12487 ms     | 0x7487 EC_ValidatePublicKey()
 12487 ms     | 0x7487 ret:0x0
 12487 ms  0x7487 ret:0x7f52db35f780
 12487 ms  SECKEY_ECParamsToKeySize()
 12487 ms  0x7487 ret:0xff
 12487 ms  0x7487 PK11_DeriveWithFlags()
 12487 ms  0x7487 basekey:0x7f52db56b400
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52c98b6700
 12487 ms  0x7487 PK11_Derive()
 12487 ms  0x7487 basekey:0x7f52db35f780
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52c98b6780
 12487 ms  0x7487 PK11_DeriveWithFlags()
 12487 ms  0x7487 basekey:0x7f52c98b6780
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52db56b400
 12487 ms  0x7487 PK11_DeriveWithFlags()
 12487 ms  0x7487 basekey:0x7f52c98b6780
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52db35f780
 12487 ms  0x7487 PK11_DeriveWithFlags()
 12487 ms  0x7487 basekey:0x7f52c98b6780
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52c98b6700
 12487 ms  0x7487 PK11_Derive()
 12487 ms  0x7487 basekey:0x7f52c98b6800
 12487 ms     | 0x7487 PK11_DeriveWithTemplate()
 12487 ms  0x7487 ret:0x7f52c98b6880
 12487 ms  0x7487 PK11_DeriveWithFlags()
 12487 ms  0x7487 basekey:0x7f52db35f780
 12488 ms     | 0x7487 PK11_DeriveWithTemplate()
 12488 ms  0x7487 ret:0x7f52c98b6780
 12488 ms  0x7487 PK11_DeriveWithFlags()
 12488 ms  0x7487 basekey:0x7f52db35f780
 12488 ms     | 0x7487 PK11_DeriveWithTemplate()
 12488 ms  0x7487 ret:0x7f52c98b6700
 12489 ms  SECKEY_ECParamsToKeySize()
 12489 ms  0x7487 ret:0x100
 12489 ms  SECKEY_ECParamsToBasePointOrderLen()
 12489 ms  0x7487 ret:0x100
 12489 ms  SECKEY_ECParamsToBasePointOrderLen()
 12489 ms  0x7487 ret:0x100
 12489 ms  0x7487 EC_ValidatePublicKey()
 12490 ms  0x7487 ret:0x0
 12492 ms  0x7487 PK11_DeriveWithFlags()
 12492 ms  0x7487 basekey:0x7f52db35f780
 12492 ms     | 0x7487 PK11_DeriveWithTemplate()
 12492 ms  0x7487 ret:0x7f52c98b6700
 12499 ms  0x7487 PK11_Derive()
 12499 ms  0x7487 basekey:0x7f52c98b6700
 12499 ms     | 0x7487 PK11_DeriveWithTemplate()
 12499 ms  0x7487 ret:0x7f52c98b6800
 12499 ms  0x7487 PK11_PubDeriveWithKDF()
 12499 ms  0x7487 seckey:0x7f52df4a9820
 12499 ms     | 0x7487 EC_ValidatePublicKey()
 12499 ms     | 0x7487 ret:0x0
 12500 ms  0x7487 ret:0x7f52c98b6700
 12500 ms  SECKEY_ECParamsToKeySize()
 12500 ms  0x7487 ret:0xff
 12500 ms  0x7487 PK11_DeriveWithFlags()
 12500 ms  0x7487 basekey:0x7f52c98b6800
 12500 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6c80
 12501 ms  0x7487 PK11_Derive()
 12501 ms  0x7487 basekey:0x7f52c98b6700
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6d00
 12501 ms  0x7487 PK11_DeriveWithFlags()
 12501 ms  0x7487 basekey:0x7f52c98b6d00
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6800
 12501 ms  0x7487 PK11_DeriveWithFlags()
 12501 ms  0x7487 basekey:0x7f52c98b6d00
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6700
 12501 ms  0x7487 PK11_DeriveWithFlags()
 12501 ms  0x7487 basekey:0x7f52c98b6d00
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6c80
 12501 ms  0x7487 PK11_Derive()
 12501 ms  0x7487 basekey:0x7f52c98b6d80
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6e00
 12501 ms  0x7487 PK11_DeriveWithFlags()
 12501 ms  0x7487 basekey:0x7f52c98b6700
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6d00
 12501 ms  0x7487 PK11_DeriveWithFlags()
 12501 ms  0x7487 basekey:0x7f52c98b6700
 12501 ms     | 0x7487 PK11_DeriveWithTemplate()
 12501 ms  0x7487 ret:0x7f52c98b6c80
 12503 ms  SECKEY_ECParamsToKeySize()
 12503 ms  0x7487 ret:0x100
 12503 ms  SECKEY_ECParamsToBasePointOrderLen()
 12503 ms  0x7487 ret:0x100
 12503 ms  SECKEY_ECParamsToBasePointOrderLen()
 12503 ms  0x7487 ret:0x100
 12503 ms  0x7487 EC_ValidatePublicKey()
 12506 ms  0x7487 ret:0x0
 12509 ms  0x7487 PK11_DeriveWithFlags()
 12509 ms  0x7487 basekey:0x7f52c98b6700
 12509 ms     | 0x7487 PK11_DeriveWithTemplate()
 12509 ms  0x7487 ret:0x7f52c98b6c80
 12509 ms  0x7487 SSL_AuthCertificateComplete()
 12509 ms  0x7487 fd:0x7f52c93fe970
 12509 ms  0x7487 err:0x0
 12509 ms     | 0x7487 PK11_DeriveWithFlags()
 12509 ms     | 0x7487 basekey:0x7f52c98b6e00
 12509 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12509 ms     | 0x7487 ret:0x7f52c98b6c80
 12509 ms     | 0x7487 PK11_DeriveWithFlags()
 12509 ms     | 0x7487 basekey:0x7f52c98b6e00
 12509 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12509 ms     | 0x7487 ret:0x7f52c98b6d80
 12509 ms     | 0x7487 PK11_DeriveWithFlags()
 12509 ms     | 0x7487 basekey:0x7f52c98b6e00
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c98b6f00
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6800
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c200
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6800
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c280
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6d80
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c280
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6d80
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c300
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6800
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c98b6d00
 12510 ms     | 0x7487 PK11_Encrypt()
 12510 ms     | 0x7487 symkey:0x7f52c9b3c200
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6c80
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c98b6d00
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6c80
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c300
 12510 ms     | 0x7487 PK11_DeriveWithFlags()
 12510 ms     | 0x7487 basekey:0x7f52c98b6e00
 12510 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 12510 ms     | 0x7487 ret:0x7f52c9b3c200
 12510 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 12510 ms     | 0x7487 privk:0x7f52df4b0020::7f52df4b0020  a0 e1 b3 c9                                      ....
 12511 ms     | 0x7487 privk:0x7f52df4b0020::7f52df4b0020  e5 e5 e5 e5                                      ....
 12511 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 12511 ms     | 0x7487 privk:0x7f52df4a9820::7f52df4a9820  b0 b0 86 c9                                      ....
 12511 ms     | 0x7487 privk:0x7f52df4a9820::7f52df4a9820  e5 e5 e5 e5                                      ....
 12511 ms  0x7487 PK11_Derive()
 12511 ms  0x7487 basekey:0x7f52c98b6700
 12511 ms     | 0x7487 PK11_DeriveWithTemplate()
 12511 ms  0x7487 ret:0x7f52c98b6800
 12511 ms  0x7487 PK11_PubDeriveWithKDF()
 12511 ms  0x7487 seckey:0x7f52e0a21020
 12511 ms     | 0x7487 EC_ValidatePublicKey()
 12511 ms     | 0x7487 ret:0x0
 12512 ms  0x7487 ret:0x7f52c98b6700
 12512 ms  SECKEY_ECParamsToKeySize()
 12512 ms  0x7487 ret:0xff
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c98b6800
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c98b6e00
 12512 ms  0x7487 PK11_Derive()
 12512 ms  0x7487 basekey:0x7f52c98b6700
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c9b3c300
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c9b3c300
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c98b6800
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c9b3c300
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c98b6700
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c9b3c300
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c98b6e00
 12512 ms  0x7487 PK11_Derive()
 12512 ms  0x7487 basekey:0x7f52c9b3c380
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c9b3c400
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c98b6700
 12512 ms     | 0x7487 PK11_DeriveWithTemplate()
 12512 ms  0x7487 ret:0x7f52c9b3c300
 12512 ms  0x7487 PK11_DeriveWithFlags()
 12512 ms  0x7487 basekey:0x7f52c98b6700
 12513 ms     | 0x7487 PK11_DeriveWithTemplate()
 12513 ms  0x7487 ret:0x7f52c98b6e00
           /* TID 0x7527 */
 12514 ms  SECKEY_ECParamsToBasePointOrderLen()
 12514 ms  0x7527 ret:0x180
 12514 ms  SECKEY_ECParamsToBasePointOrderLen()
 12514 ms  0x7527 ret:0x180
 12514 ms  0x7527 EC_ValidatePublicKey()
 12516 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 12516 ms  SECKEY_ECParamsToKeySize()
 12516 ms  0x7487 ret:0x100
 12517 ms  SECKEY_ECParamsToBasePointOrderLen()
 12517 ms  0x7487 ret:0x100
 12517 ms  SECKEY_ECParamsToBasePointOrderLen()
 12517 ms  0x7487 ret:0x100
 12517 ms  0x7487 EC_ValidatePublicKey()
 12521 ms  0x7487 ret:0x0
 12524 ms  0x7487 PK11_DeriveWithFlags()
 12524 ms  0x7487 basekey:0x7f52c98b6700
 12524 ms     | 0x7487 PK11_DeriveWithTemplate()
 12524 ms  0x7487 ret:0x7f52c98b6e00
 12524 ms  0x7487 SECKEY_DestroyPrivateKey()
 12524 ms  0x7487 privk:0x7f52c9880820::7f52c9880820  f0 e1 59 c9                                      ..Y.
 12524 ms  0x7487 privk:0x7f52c9880820::7f52c9880820  e5 e5 e5 e5                                      ....
 12524 ms  0x7487 SECKEY_DestroyPrivateKey()
 12524 ms  0x7487 privk:0x7f52c987a020::7f52c987a020  d0 0d 59 c9                                      ..Y.
 12524 ms  0x7487 privk:0x7f52c987a020::7f52c987a020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 12526 ms  0x748f PR_Close()
 12526 ms  0x748f fd:0x7f52c98e5dc0
           /* TID 0x7487 */
 12527 ms  0x7487 PK11_Encrypt()
 12527 ms  0x7487 symkey:0x7f52c98b6d00
 12527 ms  0x7487 PK11_Encrypt()
 12527 ms  0x7487 symkey:0x7f52c98b6d00
 12527 ms  0x7487 PK11_DeriveWithFlags()
 12527 ms  0x7487 basekey:0x7f52dafc5100
 12527 ms     | 0x7487 PK11_DeriveWithTemplate()
 12527 ms  0x7487 ret:0x7f52c98b6e00
 12527 ms  0x7487 PK11_DeriveWithFlags()
 12527 ms  0x7487 basekey:0x7f52dafc5100
 12527 ms     | 0x7487 PK11_DeriveWithTemplate()
 12527 ms  0x7487 ret:0x7f52c98b6e00
 12527 ms  0x7487 PK11_Encrypt()
 12527 ms  0x7487 symkey:0x7f52db360480
           /* TID 0x748f */
 12528 ms  0x748f PR_Close()
 12528 ms  0x748f fd:0x7f52c93fe2e0
           /* TID 0x7525 */
 12528 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12528 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 12536 ms  0x7487 SECKEY_DestroyPrivateKey()
 12536 ms  0x7487 privk:0x7f52db02e820::7f52db02e820  40 0c 59 c9                                      @.Y.
 12536 ms  0x7487 privk:0x7f52db02e820::7f52db02e820  e5 e5 e5 e5                                      ....
 12536 ms  0x7487 SECKEY_DestroyPrivateKey()
 12536 ms  0x7487 privk:0x7f52c9b4c820::7f52c9b4c820  60 ea 59 c9                                      `.Y.
 12536 ms  0x7487 privk:0x7f52c9b4c820::7f52c9b4c820  e5 e5 e5 e5                                      ....
           /* TID 0x74e3 */
 13541 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13542 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 13544 ms  SECKEY_ECParamsToKeySize()
 13544 ms  0x7487 ret:0x100
 13544 ms  0x7487 SECKEY_CreateECPrivateKey()
 13544 ms  0x7487 cx:0x7f52c92597e8
 13547 ms     | 0x7487 EC_ValidatePublicKey()
 13552 ms     | 0x7487 ret:0x0
 13552 ms  0x7487 ret:0x7f52e0e98020::7f52e0e98020  30 93 0c db                                      0...
 13552 ms  0x7487 PK11_PubDeriveWithKDF()
 13552 ms  0x7487 seckey:0x7f52e0e98020
 13553 ms     | 0x7487 EC_ValidatePublicKey()
 13558 ms     | 0x7487 ret:0x0
 13565 ms  0x7487 ret:0x7f52c98b6e00
 13565 ms  0x7487 PK11_DeriveWithFlags()
 13565 ms  0x7487 basekey:0x7f52c98b6e00
 13565 ms     | 0x7487 PK11_DeriveWithTemplate()
 13565 ms  0x7487 ret:0x7f52c9b3c380
 13565 ms  0x7487 PK11_Derive()
 13565 ms  0x7487 basekey:0x7f52c9b3c380
 13565 ms     | 0x7487 PK11_DeriveWithTemplate()
 13565 ms  0x7487 ret:0x7f52c98b6c00
 13566 ms  0x7487 SECKEY_DestroyPrivateKey()
 13566 ms  0x7487 privk:0x7f52e0e98020::7f52e0e98020  30 93 0c db                                      0...
 13566 ms  0x7487 privk:0x7f52e0e98020::7f52e0e98020  e5 e5 e5 e5                                      ....
 13566 ms  0x7487 PK11_Encrypt()
 13566 ms  0x7487 symkey:0x7f52c9b3d600
 13567 ms  0x7487 SSL_AuthCertificateComplete()
 13567 ms  0x7487 fd:0x7f52c95956d0
 13567 ms  0x7487 err:0x0
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52c98b6880
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c98b6e00
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52c98b6880
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3d780
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52c98b6880
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3d980
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52db56b400
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3dc00
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52db56b400
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3dc80
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52c9b3d780
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3dc80
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52c9b3d780
 13567 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13567 ms     | 0x7487 ret:0x7f52c9b3dd00
 13567 ms     | 0x7487 PK11_DeriveWithFlags()
 13567 ms     | 0x7487 basekey:0x7f52db56b400
 13568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13568 ms     | 0x7487 ret:0x7f52c98b6780
 13568 ms     | 0x7487 PK11_Encrypt()
 13568 ms     | 0x7487 symkey:0x7f52c9b3dc00
 13568 ms     | 0x7487 PK11_DeriveWithFlags()
 13568 ms     | 0x7487 basekey:0x7f52c98b6e00
 13568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13568 ms     | 0x7487 ret:0x7f52c98b6780
 13568 ms     | 0x7487 PK11_DeriveWithFlags()
 13568 ms     | 0x7487 basekey:0x7f52c98b6e00
 13568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13568 ms     | 0x7487 ret:0x7f52c9b3dd00
 13568 ms     | 0x7487 PK11_DeriveWithFlags()
 13568 ms     | 0x7487 basekey:0x7f52c98b6880
 13568 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13568 ms     | 0x7487 ret:0x7f52c9b3dc00
 13568 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13568 ms     | 0x7487 privk:0x7f52e0369820::7f52e0369820  60 e5 b3 c9                                      `...
 13568 ms     | 0x7487 privk:0x7f52e0369820::7f52e0369820  e5 e5 e5 e5                                      ....
 13569 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13569 ms     | 0x7487 privk:0x7f52e0364020::7f52e0364020  e0 e2 b3 c9                                      ....
 13569 ms     | 0x7487 privk:0x7f52e0364020::7f52e0364020  e5 e5 e5 e5                                      ....
 13569 ms  0x7487 SSL_AuthCertificateComplete()
 13569 ms  0x7487 fd:0x7f52c95957c0
 13569 ms  0x7487 err:0x0
           /* TID 0x748f */
 13581 ms  0x748f PR_Close()
 13581 ms  0x748f fd:0x7f52c9595970
           /* TID 0x7487 */
 13582 ms  0x7487 PK11_Encrypt()
 13582 ms  0x7487 symkey:0x7f52c9b3d600
           /* TID 0x748f */
 13584 ms  0x748f PR_Close()
 13584 ms  0x748f fd:0x7f52c9595970
           /* TID 0x7487 */
 13585 ms  0x7487 PK11_DeriveWithFlags()
 13585 ms  0x7487 basekey:0x7f52c9b3c200
 13585 ms     | 0x7487 PK11_DeriveWithTemplate()
 13585 ms  0x7487 ret:0x7f52db35f780
 13585 ms  0x7487 PK11_DeriveWithFlags()
 13585 ms  0x7487 basekey:0x7f52c9b3c200
 13585 ms     | 0x7487 PK11_DeriveWithTemplate()
 13585 ms  0x7487 ret:0x7f52db35f780
 13585 ms  0x7487 PK11_Encrypt()
 13585 ms  0x7487 symkey:0x7f52c98b6d00
 13585 ms  0x7487 PK11_Encrypt()
 13585 ms  0x7487 symkey:0x7f52c98b6d00
 13586 ms  0x7487 PK11_Encrypt()
 13586 ms  0x7487 symkey:0x7f52c98b6780
 13587 ms  0x7487 PK11_Encrypt()
 13587 ms  0x7487 symkey:0x7f52c98b6780
 13587 ms  0x7487 PR_Connect()
 13587 ms  0x7487 fd:0x7f52db31da30
 13587 ms  0x7487 PK11_Encrypt()
 13587 ms  0x7487 symkey:0x7f52db360480
           /* TID 0x748f */
 13587 ms  0x748f PR_Close()
 13587 ms  0x748f fd:0x7f52c98e5dc0
 13596 ms  0x748f PR_Close()
 13596 ms  0x748f fd:0x7f52c93fa3d0
           /* TID 0x7527 */
 13596 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13596 ms     | SECKEY_ECParamsToBasePointOrderLen()
 13596 ms     | 0x7527 ret:0x180
 13596 ms     | SECKEY_ECParamsToBasePointOrderLen()
 13596 ms     | 0x7527 ret:0x180
 13596 ms     | 0x7527 EC_ValidatePublicKey()
 13597 ms     | 0x7527 ret:0x0
 13600 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 13604 ms  0x7487 PK11_DeriveWithFlags()
 13604 ms  0x7487 basekey:0x7f52c9b3dc00
 13604 ms     | 0x7487 PK11_DeriveWithTemplate()
 13604 ms  0x7487 ret:0x7f52db35f780
 13604 ms  0x7487 PK11_Encrypt()
 13604 ms  0x7487 symkey:0x7f52c98b6780
 13608 ms  0x7487 SSL_AuthCertificateComplete()
 13608 ms  0x7487 fd:0x7f52c9366370
 13608 ms  0x7487 err:0x0
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c9b3c400
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52db35f780
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c9b3c400
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52db56b400
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c9b3c400
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c98b6880
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c98b6800
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b3dd00
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c98b6800
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b3c700
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52db56b400
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b3c700
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52db56b400
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b76080
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52c98b6800
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b3c300
 13608 ms     | 0x7487 PK11_Encrypt()
 13608 ms     | 0x7487 symkey:0x7f52c9b3dd00
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52db35f780
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b3c300
 13608 ms     | 0x7487 PK11_DeriveWithFlags()
 13608 ms     | 0x7487 basekey:0x7f52db35f780
 13608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13608 ms     | 0x7487 ret:0x7f52c9b76080
 13609 ms     | 0x7487 PK11_DeriveWithFlags()
 13609 ms     | 0x7487 basekey:0x7f52c9b3c400
 13609 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13609 ms     | 0x7487 ret:0x7f52c9b3dd00
 13609 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13609 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  30 83 b7 c9                                      0...
 13609 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  e5 e5 e5 e5                                      ....
 13609 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13609 ms     | 0x7487 privk:0x7f52e0a21020::7f52e0a21020  e0 e7 b3 c9                                      ....
 13609 ms     | 0x7487 privk:0x7f52e0a21020::7f52e0a21020  e5 e5 e5 e5                                      ....
 13609 ms  0x7487 PK11_Encrypt()
 13609 ms  0x7487 symkey:0x7f52c9b3c300
 13609 ms  0x7487 PK11_Encrypt()
 13609 ms  0x7487 symkey:0x7f52c9b3c300
 13627 ms  0x7487 SECKEY_DestroyPrivateKey()
 13627 ms  0x7487 privk:0x7f52e0a86820::7f52e0a86820  60 20 bc c9                                      ` ..
 13627 ms  0x7487 privk:0x7f52e0a86820::7f52e0a86820  e5 e5 e5 e5                                      ....
 13627 ms  0x7487 SECKEY_DestroyPrivateKey()
 13627 ms  0x7487 privk:0x7f52e0a36820::7f52e0a36820  20 8e b7 c9                                       ...
 13627 ms  0x7487 privk:0x7f52e0a36820::7f52e0a36820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 13642 ms  0x748f PR_Close()
 13642 ms  0x748f fd:0x7f52c95fd8b0
           /* TID 0x7487 */
 13656 ms  0x7487 SSL_ImportFD()
 13656 ms  0x7487 ret:0x7f52db31dc70
 13656 ms  0x7487 SSL_AuthCertificateHook()
 13656 ms  0x7487 fd:0x7f52db31dc70
 13656 ms  0x7487 ret:0x0
 13657 ms  0x7487 PK11_Encrypt()
 13657 ms  0x7487 symkey:0x7f52dafc5080
 13657 ms  0x7487 PR_Connect()
 13657 ms  0x7487 fd:0x7f52db31dc70
 13664 ms  0x7487 PK11_DeriveWithFlags()
 13664 ms  0x7487 basekey:0x7f52c9b3dd00
 13664 ms     | 0x7487 PK11_DeriveWithTemplate()
 13664 ms  0x7487 ret:0x7f52c98b6700
 13664 ms  0x7487 PK11_DeriveWithFlags()
 13664 ms  0x7487 basekey:0x7f52c9b3dd00
 13664 ms     | 0x7487 PK11_DeriveWithTemplate()
 13664 ms  0x7487 ret:0x7f52c98b6700
           /* TID 0x748f */
 13688 ms  0x748f PR_Close()
 13688 ms  0x748f fd:0x7f52c9366610
           /* TID 0x7487 */
 13695 ms  0x7487 SECKEY_CreateECPrivateKey()
 13695 ms  0x7487 cx:0x7f52e033b588
 13695 ms     | 0x7487 EC_ValidatePublicKey()
 13695 ms     | 0x7487 ret:0x0
 13695 ms  0x7487 ret:0x7f52e0a27020::7f52e0a27020  b0 ea 59 c9                                      ..Y.
 13695 ms  0x7487 SECKEY_CreateECPrivateKey()
 13695 ms  0x7487 cx:0x7f52e033b588
 13696 ms     | 0x7487 EC_ValidatePublicKey()
 13698 ms     | 0x7487 ret:0x0
 13698 ms  0x7487 ret:0x7f52e0a36820::7f52e0a36820  f0 e1 b3 c9                                      ....
 13718 ms  0x7487 PK11_Encrypt()
 13718 ms  0x7487 symkey:0x7f52c9b3c300
 13739 ms  0x7487 PK11_Encrypt()
 13739 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 13740 ms  0x748f PR_Close()
 13740 ms  0x748f fd:0x7f52db0d5d00
           /* TID 0x7487 */
 13752 ms  0x7487 PK11_Derive()
 13752 ms  0x7487 basekey:0x7f52c98b6700
 13752 ms     | 0x7487 PK11_DeriveWithTemplate()
 13752 ms  0x7487 ret:0x7f52c98b6800
 13752 ms  0x7487 PK11_PubDeriveWithKDF()
 13752 ms  0x7487 seckey:0x7f52e0a27020
 13752 ms     | 0x7487 EC_ValidatePublicKey()
 13752 ms     | 0x7487 ret:0x0
 13753 ms  0x7487 ret:0x7f52c98b6700
 13753 ms  SECKEY_ECParamsToKeySize()
 13753 ms  0x7487 ret:0xff
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c98b6800
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b3c400
 13753 ms  0x7487 PK11_Derive()
 13753 ms  0x7487 basekey:0x7f52c98b6700
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b76080
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c9b76080
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c98b6800
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c9b76080
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c98b6700
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c9b76080
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b3c400
 13753 ms  0x7487 PK11_Derive()
 13753 ms  0x7487 basekey:0x7f52c9b77c80
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b80180
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c98b6700
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b76080
 13753 ms  0x7487 PK11_DeriveWithFlags()
 13753 ms  0x7487 basekey:0x7f52c98b6700
 13753 ms     | 0x7487 PK11_DeriveWithTemplate()
 13753 ms  0x7487 ret:0x7f52c9b3c400
 13754 ms  0x7487 PK11_DeriveWithFlags()
 13754 ms  0x7487 basekey:0x7f52c98b6700
 13754 ms     | 0x7487 PK11_DeriveWithTemplate()
 13754 ms  0x7487 ret:0x7f52c9b3c400
           /* TID 0x748f */
 13780 ms  0x748f PR_Close()
 13780 ms  0x748f fd:0x7f52c9595460
           /* TID 0x7487 */
 13785 ms  0x7487 PK11_Encrypt()
 13785 ms  0x7487 symkey:0x7f52dafc5080
 13854 ms  0x7487 PK11_Encrypt()
 13854 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 13856 ms  0x748f PR_Close()
 13856 ms  0x748f fd:0x7f52db51d8b0
           /* TID 0x7487 */
 13872 ms  0x7487 SSL_ImportFD()
 13872 ms  0x7487 ret:0x7f52db547220
 13872 ms  0x7487 SSL_AuthCertificateHook()
 13872 ms  0x7487 fd:0x7f52db547220
 13872 ms  0x7487 ret:0x0
 13872 ms  0x7487 PR_Connect()
 13872 ms  0x7487 fd:0x7f52db547220
           /* TID 0x748f */
 13898 ms  0x748f PR_Close()
 13898 ms  0x748f fd:0x7f52db51dc10
           /* TID 0x7526 */
 13898 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13898 ms  0x7526 ret:0x0
           /* TID 0x7487 */
 13898 ms  0x7487 SSL_AuthCertificateComplete()
 13898 ms  0x7487 fd:0x7f52db31dc70
 13898 ms  0x7487 err:0x0
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b80180
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b3c400
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b80180
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b77c80
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b80180
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b80380
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c98b6800
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b80500
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c98b6800
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b81000
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b77c80
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b81000
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b77c80
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b81080
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c98b6800
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b76080
 13899 ms     | 0x7487 PK11_Encrypt()
 13899 ms     | 0x7487 symkey:0x7f52c9b80500
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b3c400
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b76080
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b3c400
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b81080
 13899 ms     | 0x7487 PK11_DeriveWithFlags()
 13899 ms     | 0x7487 basekey:0x7f52c9b80180
 13899 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 13899 ms     | 0x7487 ret:0x7f52c9b80500
 13899 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13899 ms     | 0x7487 privk:0x7f52e0a36820::7f52e0a36820  f0 e1 b3 c9                                      ....
 13900 ms     | 0x7487 privk:0x7f52e0a36820::7f52e0a36820  e5 e5 e5 e5                                      ....
 13900 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 13900 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  b0 ea 59 c9                                      ..Y.
 13900 ms     | 0x7487 privk:0x7f52e0a27020::7f52e0a27020  e5 e5 e5 e5                                      ....
 13900 ms  0x7487 PK11_Encrypt()
 13900 ms  0x7487 symkey:0x7f52c9b76080
 13910 ms  0x7487 SECKEY_CreateECPrivateKey()
 13910 ms  0x7487 cx:0x7f52e033ba68
 13910 ms     | 0x7487 EC_ValidatePublicKey()
 13910 ms     | 0x7487 ret:0x0
 13910 ms  0x7487 ret:0x7f52e0a35820::7f52e0a35820  10 ea 59 c9                                      ..Y.
 13910 ms  0x7487 SECKEY_CreateECPrivateKey()
 13910 ms  0x7487 cx:0x7f52e033ba68
 13911 ms     | 0x7487 EC_ValidatePublicKey()
 13913 ms     | 0x7487 ret:0x0
 13913 ms  0x7487 ret:0x7f52e0e93820::7f52e0e93820  f0 e1 b3 c9                                      ....
 13937 ms  0x7487 PK11_DeriveWithFlags()
 13937 ms  0x7487 basekey:0x7f52c9b80500
 13937 ms     | 0x7487 PK11_DeriveWithTemplate()
 13937 ms  0x7487 ret:0x7f52c98b6700
 13937 ms  0x7487 PK11_DeriveWithFlags()
 13937 ms  0x7487 basekey:0x7f52c9b80500
 13937 ms     | 0x7487 PK11_DeriveWithTemplate()
 13937 ms  0x7487 ret:0x7f52c98b6700
 13937 ms  0x7487 PR_Close()
 13937 ms  0x7487 fd:0x7f52db31dc70
 13937 ms     | 0x7487 PK11_Encrypt()
 13937 ms     | 0x7487 symkey:0x7f52c9b76080
 13956 ms  0x7487 PK11_Encrypt()
 13956 ms  0x7487 symkey:0x7f52db360480
 13957 ms  0x7487 PK11_Encrypt()
 13957 ms  0x7487 symkey:0x7f52c98b6780
 13957 ms  0x7487 PK11_Encrypt()
 13957 ms  0x7487 symkey:0x7f52c9b3d600
 13957 ms  0x7487 PK11_Encrypt()
 13957 ms  0x7487 symkey:0x7f52c9b3c300
 13958 ms  0x7487 PK11_Encrypt()
 13958 ms  0x7487 symkey:0x7f52c9b3c300
 13959 ms  0x7487 SSL_ImportFD()
 13959 ms  0x7487 ret:0x7f52db321400
 13959 ms  0x7487 SSL_AuthCertificateHook()
 13959 ms  0x7487 fd:0x7f52db321400
 13959 ms  0x7487 ret:0x0
 13959 ms  0x7487 PR_Connect()
 13959 ms  0x7487 fd:0x7f52db321400
 13967 ms  0x7487 PK11_Derive()
 13967 ms  0x7487 basekey:0x7f52c9b80380
 13967 ms     | 0x7487 PK11_DeriveWithTemplate()
 13967 ms  0x7487 ret:0x7f52c9b77c80
 13967 ms  0x7487 PK11_PubDeriveWithKDF()
 13967 ms  0x7487 seckey:0x7f52e0a35820
 13967 ms     | 0x7487 EC_ValidatePublicKey()
 13967 ms     | 0x7487 ret:0x0
 13969 ms  0x7487 ret:0x7f52c9b80380
 13969 ms  SECKEY_ECParamsToKeySize()
 13969 ms  0x7487 ret:0xff
 13969 ms  0x7487 PK11_DeriveWithFlags()
 13969 ms  0x7487 basekey:0x7f52c9b77c80
 13969 ms     | 0x7487 PK11_DeriveWithTemplate()
 13969 ms  0x7487 ret:0x7f52c9b3c400
 13969 ms  0x7487 PK11_Derive()
 13969 ms  0x7487 basekey:0x7f52c9b80380
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b80500
 13970 ms  0x7487 PK11_DeriveWithFlags()
 13970 ms  0x7487 basekey:0x7f52c9b80500
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b77c80
 13970 ms  0x7487 PK11_DeriveWithFlags()
 13970 ms  0x7487 basekey:0x7f52c9b80500
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b80380
 13970 ms  0x7487 PK11_DeriveWithFlags()
 13970 ms  0x7487 basekey:0x7f52c9b80500
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b3c400
 13970 ms  0x7487 PK11_Derive()
 13970 ms  0x7487 basekey:0x7f52c9b81000
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b76080
 13970 ms  0x7487 PK11_DeriveWithFlags()
 13970 ms  0x7487 basekey:0x7f52c9b80380
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b80500
 13970 ms  0x7487 PK11_DeriveWithFlags()
 13970 ms  0x7487 basekey:0x7f52c9b80380
 13970 ms     | 0x7487 PK11_DeriveWithTemplate()
 13970 ms  0x7487 ret:0x7f52c9b3c400
 13973 ms  0x7487 PK11_DeriveWithFlags()
 13973 ms  0x7487 basekey:0x7f52c9b80380
 13974 ms     | 0x7487 PK11_DeriveWithTemplate()
 13974 ms  0x7487 ret:0x7f52c9b3c400
           /* TID 0x748f */
 13998 ms  0x748f PR_Close()
 13998 ms  0x748f fd:0x7f52c9595970
           /* TID 0x7487 */
 14010 ms  0x7487 PK11_Encrypt()
 14010 ms  0x7487 symkey:0x7f52db360480
 14010 ms  0x7487 SECKEY_CreateECPrivateKey()
 14010 ms  0x7487 cx:0x7f52e033b248
 14012 ms     | 0x7487 EC_ValidatePublicKey()
 14012 ms     | 0x7487 ret:0x0
 14012 ms  0x7487 ret:0x7f52e0eae020::7f52e0eae020  50 91 0c db                                      P...
 14012 ms  0x7487 SECKEY_CreateECPrivateKey()
 14012 ms  0x7487 cx:0x7f52e033b248
 14014 ms     | 0x7487 EC_ValidatePublicKey()
 14017 ms     | 0x7487 ret:0x0
 14017 ms  0x7487 ret:0x7f52e0eb3020::7f52e0eb3020  20 94 0c db                                       ...
           /* TID 0x748f */
 14028 ms  0x748f PR_Close()
 14028 ms  0x748f fd:0x7f52c9366610
           /* TID 0x7487 */
 14034 ms  0x7487 SSL_ImportFD()
 14035 ms  0x7487 ret:0x7f52db820700
 14035 ms  0x7487 SSL_AuthCertificateHook()
 14035 ms  0x7487 fd:0x7f52db820700
 14035 ms  0x7487 ret:0x0
 14035 ms  0x7487 PK11_Encrypt()
 14035 ms  0x7487 symkey:0x7f52dafc5080
 14035 ms  0x7487 PK11_Encrypt()
 14035 ms  0x7487 symkey:0x7f52dafc5080
 14036 ms  0x7487 PR_Connect()
 14036 ms  0x7487 fd:0x7f52db820700
           /* TID 0x748f */
 14070 ms  0x748f PR_Close()
 14070 ms  0x748f fd:0x7f52c9b06e50
           /* TID 0x7487 */
 14071 ms  0x7487 PK11_Derive()
 14071 ms  0x7487 basekey:0x7f52c9b3c400
 14071 ms     | 0x7487 PK11_DeriveWithTemplate()
 14071 ms  0x7487 ret:0x7f52c9b81000
 14071 ms  0x7487 PK11_PubDeriveWithKDF()
 14071 ms  0x7487 seckey:0x7f52e0eae020
 14071 ms     | 0x7487 EC_ValidatePublicKey()
 14071 ms     | 0x7487 ret:0x0
 14072 ms  0x7487 ret:0x7f52c9b3c400
 14072 ms  SECKEY_ECParamsToKeySize()
 14072 ms  0x7487 ret:0xff
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c9b81000
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c98b6700
 14072 ms  0x7487 PK11_Derive()
 14072 ms  0x7487 basekey:0x7f52c9b3c400
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c98b6800
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c98b6800
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c9b81000
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c98b6800
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c9b3c400
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c98b6800
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c98b6700
 14072 ms  0x7487 PK11_Derive()
 14072 ms  0x7487 basekey:0x7f52c9b80180
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c9b81080
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c9b3c400
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c98b6800
 14072 ms  0x7487 PK11_DeriveWithFlags()
 14072 ms  0x7487 basekey:0x7f52c9b3c400
 14072 ms     | 0x7487 PK11_DeriveWithTemplate()
 14072 ms  0x7487 ret:0x7f52c98b6700
 14075 ms  SECKEY_ECParamsToKeySize()
 14075 ms  0x7487 ret:0x100
 14075 ms  SECKEY_ECParamsToBasePointOrderLen()
 14075 ms  0x7487 ret:0x100
 14075 ms  SECKEY_ECParamsToBasePointOrderLen()
 14075 ms  0x7487 ret:0x100
 14075 ms  0x7487 EC_ValidatePublicKey()
 14081 ms  0x7487 ret:0x0
 14084 ms  0x7487 PK11_DeriveWithFlags()
 14084 ms  0x7487 basekey:0x7f52c9b3c400
 14084 ms     | 0x7487 PK11_DeriveWithTemplate()
 14084 ms  0x7487 ret:0x7f52c98b6700
           /* TID 0x748f */
 14094 ms  0x748f PR_Close()
 14094 ms  0x748f fd:0x7f52c95953d0
           /* TID 0x7487 */
 14094 ms  0x7487 SECKEY_CreateECPrivateKey()
 14094 ms  0x7487 cx:0x7f52e033bda8
 14095 ms     | 0x7487 EC_ValidatePublicKey()
 14095 ms     | 0x7487 ret:0x0
 14095 ms  0x7487 ret:0x7f52e0ec4820::7f52e0ec4820  80 e8 b3 c9                                      ....
 14095 ms  0x7487 SECKEY_CreateECPrivateKey()
 14095 ms  0x7487 cx:0x7f52e033bda8
 14095 ms     | 0x7487 EC_ValidatePublicKey()
 14107 ms     | 0x7487 ret:0x0
 14107 ms  0x7487 ret:0x7f52e0ec6820::7f52e0ec6820  10 1f 2f db                                      ../.
           /* TID 0x748f */
 14118 ms  0x748f PR_Close()
 14118 ms  0x748f fd:0x7f52db547400
           /* TID 0x7525 */
 14118 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14118 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 14118 ms  0x7487 SSL_AuthCertificateComplete()
 14118 ms  0x7487 fd:0x7f52db547220
 14118 ms  0x7487 err:0x0
 14118 ms     | 0x7487 PK11_DeriveWithFlags()
 14118 ms     | 0x7487 basekey:0x7f52c9b76080
 14118 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14118 ms     | 0x7487 ret:0x7f52c98b6700
 14118 ms     | 0x7487 PK11_DeriveWithFlags()
 14118 ms     | 0x7487 basekey:0x7f52c9b76080
 14118 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14118 ms     | 0x7487 ret:0x7f52c9b80180
 14118 ms     | 0x7487 PK11_DeriveWithFlags()
 14118 ms     | 0x7487 basekey:0x7f52c9b76080
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52c9bf9d80
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b77c80
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52dafc4100
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b77c80
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52db1bcf80
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b80180
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52db1bcf80
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b80180
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52db1bd000
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b77c80
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52c9b80500
 14119 ms     | 0x7487 PK11_Encrypt()
 14119 ms     | 0x7487 symkey:0x7f52dafc4100
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c98b6700
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52c9b80500
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c98b6700
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52db1bd000
 14119 ms     | 0x7487 PK11_DeriveWithFlags()
 14119 ms     | 0x7487 basekey:0x7f52c9b76080
 14119 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14119 ms     | 0x7487 ret:0x7f52dafc4100
 14119 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14119 ms     | 0x7487 privk:0x7f52e0e93820::7f52e0e93820  f0 e1 b3 c9                                      ....
 14119 ms     | 0x7487 privk:0x7f52e0e93820::7f52e0e93820  e5 e5 e5 e5                                      ....
 14119 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14119 ms     | 0x7487 privk:0x7f52e0a35820::7f52e0a35820  10 ea 59 c9                                      ..Y.
 14119 ms     | 0x7487 privk:0x7f52e0a35820::7f52e0a35820  e5 e5 e5 e5                                      ....
 14120 ms  0x7487 PK11_Encrypt()
 14120 ms  0x7487 symkey:0x7f52c9b80500
 14120 ms  0x7487 PK11_Encrypt()
 14120 ms  0x7487 symkey:0x7f52c9b80500
 14127 ms  0x7487 PK11_Encrypt()
 14127 ms  0x7487 symkey:0x7f52dafc5080
 14130 ms  0x7487 SSL_ImportFD()
 14130 ms  0x7487 ret:0x7f52db894730
 14131 ms  0x7487 SSL_AuthCertificateHook()
 14131 ms  0x7487 fd:0x7f52db894730
 14131 ms  0x7487 ret:0x0
 14131 ms  0x7487 PK11_Encrypt()
 14131 ms  0x7487 symkey:0x7f52c98b6780
 14134 ms  0x7487 PR_Connect()
 14134 ms  0x7487 fd:0x7f52db894730
 14145 ms  0x7487 SSL_ImportFD()
 14145 ms  0x7487 ret:0x7f52db894cd0
 14145 ms  0x7487 SSL_AuthCertificateHook()
 14145 ms  0x7487 fd:0x7f52db894cd0
 14145 ms  0x7487 ret:0x0
 14145 ms  0x7487 PR_Connect()
 14145 ms  0x7487 fd:0x7f52db894cd0
 14157 ms  0x7487 PK11_DeriveWithFlags()
 14157 ms  0x7487 basekey:0x7f52dafc4100
 14157 ms     | 0x7487 PK11_DeriveWithTemplate()
 14157 ms  0x7487 ret:0x7f52c9b80380
 14157 ms  0x7487 PK11_DeriveWithFlags()
 14157 ms  0x7487 basekey:0x7f52dafc4100
 14157 ms     | 0x7487 PK11_DeriveWithTemplate()
 14157 ms  0x7487 ret:0x7f52c9b80380
 14157 ms  0x7487 PK11_Encrypt()
 14157 ms  0x7487 symkey:0x7f52c9b80500
 14161 ms  0x7487 PK11_Derive()
 14161 ms  0x7487 basekey:0x7f52c9b80380
 14161 ms     | 0x7487 PK11_DeriveWithTemplate()
 14161 ms  0x7487 ret:0x7f52c9b77c80
 14161 ms  0x7487 PK11_PubDeriveWithKDF()
 14161 ms  0x7487 seckey:0x7f52e0ec4820
 14161 ms     | 0x7487 EC_ValidatePublicKey()
 14161 ms     | 0x7487 ret:0x0
 14161 ms  0x7487 ret:0x7f52c9b80380
 14161 ms  SECKEY_ECParamsToKeySize()
 14161 ms  0x7487 ret:0xff
 14161 ms  0x7487 PK11_DeriveWithFlags()
 14161 ms  0x7487 basekey:0x7f52c9b77c80
 14161 ms     | 0x7487 PK11_DeriveWithTemplate()
 14161 ms  0x7487 ret:0x7f52c9b76080
 14161 ms  0x7487 PK11_Derive()
 14161 ms  0x7487 basekey:0x7f52c9b80380
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52db1bd000
 14162 ms  0x7487 PK11_DeriveWithFlags()
 14162 ms  0x7487 basekey:0x7f52db1bd000
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52c9b77c80
 14162 ms  0x7487 PK11_DeriveWithFlags()
 14162 ms  0x7487 basekey:0x7f52db1bd000
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52c9b80380
 14162 ms  0x7487 PK11_DeriveWithFlags()
 14162 ms  0x7487 basekey:0x7f52db1bd000
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52c9b76080
 14162 ms  0x7487 PK11_Derive()
 14162 ms  0x7487 basekey:0x7f52db2fa400
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52db2fa500
 14162 ms  0x7487 PK11_DeriveWithFlags()
 14162 ms  0x7487 basekey:0x7f52c9b80380
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52db1bd000
 14162 ms  0x7487 PK11_DeriveWithFlags()
 14162 ms  0x7487 basekey:0x7f52c9b80380
 14162 ms     | 0x7487 PK11_DeriveWithTemplate()
 14162 ms  0x7487 ret:0x7f52c9b76080
 14163 ms  SECKEY_ECParamsToKeySize()
 14163 ms  0x7487 ret:0x100
 14163 ms  SECKEY_ECParamsToBasePointOrderLen()
 14163 ms  0x7487 ret:0x100
 14163 ms  SECKEY_ECParamsToBasePointOrderLen()
 14163 ms  0x7487 ret:0x100
 14163 ms  0x7487 EC_ValidatePublicKey()
 14164 ms  0x7487 ret:0x0
 14166 ms  0x7487 PK11_DeriveWithFlags()
 14166 ms  0x7487 basekey:0x7f52c9b80380
 14166 ms     | 0x7487 PK11_DeriveWithTemplate()
 14166 ms  0x7487 ret:0x7f52c9b76080
 14166 ms  0x7487 SSL_AuthCertificateComplete()
 14166 ms  0x7487 fd:0x7f52db820700
 14166 ms  0x7487 err:0x0
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52db2fa500
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52c9b76080
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52db2fa500
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2fa400
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52db2fa500
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2fa700
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52c9b77c80
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2fa780
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52c9b77c80
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2fa900
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52db2fa400
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2fa900
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52db2fa400
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14166 ms     | 0x7487 ret:0x7f52db2faa00
 14166 ms     | 0x7487 PK11_DeriveWithFlags()
 14166 ms     | 0x7487 basekey:0x7f52c9b77c80
 14166 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14167 ms     | 0x7487 ret:0x7f52db1bd000
 14167 ms     | 0x7487 PK11_Encrypt()
 14167 ms     | 0x7487 symkey:0x7f52db2fa780
 14167 ms     | 0x7487 PK11_DeriveWithFlags()
 14167 ms     | 0x7487 basekey:0x7f52c9b76080
 14167 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14167 ms     | 0x7487 ret:0x7f52db1bd000
 14167 ms     | 0x7487 PK11_DeriveWithFlags()
 14167 ms     | 0x7487 basekey:0x7f52c9b76080
 14167 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14167 ms     | 0x7487 ret:0x7f52db2faa00
 14167 ms     | 0x7487 PK11_DeriveWithFlags()
 14167 ms     | 0x7487 basekey:0x7f52db2fa500
 14167 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14167 ms     | 0x7487 ret:0x7f52db2fa780
 14167 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14167 ms     | 0x7487 privk:0x7f52e0ec6820::7f52e0ec6820  10 1f 2f db                                      ../.
 14167 ms     | 0x7487 privk:0x7f52e0ec6820::7f52e0ec6820  e5 e5 e5 e5                                      ....
 14167 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14167 ms     | 0x7487 privk:0x7f52e0ec4820::7f52e0ec4820  80 e8 b3 c9                                      ....
 14167 ms     | 0x7487 privk:0x7f52e0ec4820::7f52e0ec4820  e5 e5 e5 e5                                      ....
 14167 ms  0x7487 PK11_Encrypt()
 14167 ms  0x7487 symkey:0x7f52db1bd000
           /* TID 0x748f */
 14177 ms  0x748f PR_Close()
 14177 ms  0x748f fd:0x7f52db547610
           /* TID 0x7487 */
 14177 ms  0x7487 SECKEY_CreateECPrivateKey()
 14177 ms  0x7487 cx:0x7f52e033c0e8
 14178 ms     | 0x7487 EC_ValidatePublicKey()
 14178 ms     | 0x7487 ret:0x0
 14178 ms  0x7487 ret:0x7f52e0ec4820::7f52e0ec4820  30 e3 b3 c9                                      0...
 14178 ms  0x7487 SECKEY_CreateECPrivateKey()
 14178 ms  0x7487 cx:0x7f52e033c0e8
 14178 ms     | 0x7487 EC_ValidatePublicKey()
 14180 ms     | 0x7487 ret:0x0
 14180 ms  0x7487 ret:0x7f52e0ec6820::7f52e0ec6820  60 90 0c db                                      `...
 14184 ms  0x7487 SECKEY_CreateECPrivateKey()
 14184 ms  0x7487 cx:0x7f52e033c428
 14184 ms     | 0x7487 EC_ValidatePublicKey()
 14184 ms     | 0x7487 ret:0x0
 14184 ms  0x7487 ret:0x7f52e0ecb820::7f52e0ecb820  a0 9b 0c db                                      ....
 14184 ms  0x7487 SECKEY_CreateECPrivateKey()
 14184 ms  0x7487 cx:0x7f52e033c428
 14185 ms     | 0x7487 EC_ValidatePublicKey()
 14186 ms     | 0x7487 ret:0x0
 14186 ms  0x7487 ret:0x7f52e3653020::7f52e3653020  40 22 32 db                                      @"2.
 14205 ms  0x7487 PK11_DeriveWithFlags()
 14205 ms  0x7487 basekey:0x7f52db2fa780
 14205 ms     | 0x7487 PK11_DeriveWithTemplate()
 14205 ms  0x7487 ret:0x7f52c9b80380
 14205 ms  0x7487 PK11_DeriveWithFlags()
 14205 ms  0x7487 basekey:0x7f52db2fa780
 14205 ms     | 0x7487 PK11_DeriveWithTemplate()
 14205 ms  0x7487 ret:0x7f52c9b80380
 14205 ms  0x7487 PR_Close()
 14205 ms  0x7487 fd:0x7f52db820700
 14205 ms     | 0x7487 PK11_Encrypt()
 14205 ms     | 0x7487 symkey:0x7f52db1bd000
 14217 ms  0x7487 PK11_Encrypt()
 14217 ms  0x7487 symkey:0x7f52c9b80500
 14218 ms  0x7487 PK11_Derive()
 14218 ms  0x7487 basekey:0x7f52db2fa700
 14218 ms     | 0x7487 PK11_DeriveWithTemplate()
 14218 ms  0x7487 ret:0x7f52db2fa400
 14218 ms  0x7487 PK11_PubDeriveWithKDF()
 14218 ms  0x7487 seckey:0x7f52e0ec4820
 14218 ms     | 0x7487 EC_ValidatePublicKey()
 14218 ms     | 0x7487 ret:0x0
 14219 ms  0x7487 ret:0x7f52db2fa700
 14219 ms  SECKEY_ECParamsToKeySize()
 14219 ms  0x7487 ret:0xff
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa400
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52c9b76080
 14219 ms  0x7487 PK11_Derive()
 14219 ms  0x7487 basekey:0x7f52db2fa700
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52db2fa780
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa780
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52db2fa400
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa780
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52db2fa700
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa780
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52c9b76080
 14219 ms  0x7487 PK11_Derive()
 14219 ms  0x7487 basekey:0x7f52db2fa900
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52db1bd000
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa700
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52db2fa780
 14219 ms  0x7487 PK11_DeriveWithFlags()
 14219 ms  0x7487 basekey:0x7f52db2fa700
 14219 ms     | 0x7487 PK11_DeriveWithTemplate()
 14219 ms  0x7487 ret:0x7f52c9b76080
 14220 ms  SECKEY_ECParamsToKeySize()
 14220 ms  0x7487 ret:0x100
 14220 ms  SECKEY_ECParamsToBasePointOrderLen()
 14220 ms  0x7487 ret:0x100
 14220 ms  SECKEY_ECParamsToBasePointOrderLen()
 14220 ms  0x7487 ret:0x100
 14220 ms  0x7487 EC_ValidatePublicKey()
 14221 ms  0x7487 ret:0x0
 14223 ms  0x7487 PK11_DeriveWithFlags()
 14223 ms  0x7487 basekey:0x7f52db2fa700
 14223 ms     | 0x7487 PK11_DeriveWithTemplate()
 14223 ms  0x7487 ret:0x7f52c9b76080
 14223 ms  0x7487 SSL_AuthCertificateComplete()
 14223 ms  0x7487 fd:0x7f52db894730
 14223 ms  0x7487 err:0x0
 14223 ms     | 0x7487 PK11_DeriveWithFlags()
 14223 ms     | 0x7487 basekey:0x7f52db1bd000
 14223 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14223 ms     | 0x7487 ret:0x7f52c9b76080
 14223 ms     | 0x7487 PK11_DeriveWithFlags()
 14223 ms     | 0x7487 basekey:0x7f52db1bd000
 14223 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14223 ms     | 0x7487 ret:0x7f52db2fa900
 14223 ms     | 0x7487 PK11_DeriveWithFlags()
 14223 ms     | 0x7487 basekey:0x7f52db1bd000
 14223 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14223 ms     | 0x7487 ret:0x7f52c9b80380
 14223 ms     | 0x7487 PK11_DeriveWithFlags()
 14223 ms     | 0x7487 basekey:0x7f52db2fa400
 14223 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14223 ms     | 0x7487 ret:0x7f52c9b77c80
 14223 ms     | 0x7487 PK11_DeriveWithFlags()
 14223 ms     | 0x7487 basekey:0x7f52db2fa400
 14223 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14224 ms     | 0x7487 ret:0x7f52db2fa500
 14224 ms     | 0x7487 PK11_DeriveWithFlags()
 14224 ms     | 0x7487 basekey:0x7f52db2fa900
 14224 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14224 ms     | 0x7487 ret:0x7f52db2fa500
 14224 ms     | 0x7487 PK11_DeriveWithFlags()
 14224 ms     | 0x7487 basekey:0x7f52db2fa900
 14224 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14224 ms     | 0x7487 ret:0x7f52db2faa00
 14224 ms     | 0x7487 PK11_DeriveWithFlags()
 14224 ms     | 0x7487 basekey:0x7f52db2fa400
 14224 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14224 ms     | 0x7487 ret:0x7f52db2fa780
 14224 ms     | 0x7487 PK11_Encrypt()
 14224 ms     | 0x7487 symkey:0x7f52c9b77c80
           /* TID 0x747c */
 14226 ms  0x747c PR_Close()
 14226 ms  0x747c fd:0x7f52db894ca0
           /* TID 0x7487 */
 14231 ms     | 0x7487 PK11_DeriveWithFlags()
 14231 ms     | 0x7487 basekey:0x7f52c9b76080
 14231 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14231 ms     | 0x7487 ret:0x7f52db2fa780
 14231 ms     | 0x7487 PK11_DeriveWithFlags()
 14231 ms     | 0x7487 basekey:0x7f52c9b76080
 14231 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14231 ms     | 0x7487 ret:0x7f52db2faa00
 14231 ms     | 0x7487 PK11_DeriveWithFlags()
 14231 ms     | 0x7487 basekey:0x7f52db1bd000
 14231 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14231 ms     | 0x7487 ret:0x7f52c9b77c80
 14231 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14231 ms     | 0x7487 privk:0x7f52e0ec6820::7f52e0ec6820  60 90 0c db                                      `...
 14231 ms     | 0x7487 privk:0x7f52e0ec6820::7f52e0ec6820  e5 e5 e5 e5                                      ....
 14231 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14231 ms     | 0x7487 privk:0x7f52e0ec4820::7f52e0ec4820  30 e3 b3 c9                                      0...
 14231 ms     | 0x7487 privk:0x7f52e0ec4820::7f52e0ec4820  e5 e5 e5 e5                                      ....
 14231 ms  0x7487 PK11_Encrypt()
 14231 ms  0x7487 symkey:0x7f52db2fa780
 14233 ms  0x7487 PK11_Encrypt()
 14233 ms  0x7487 symkey:0x7f52dafc5080
 14234 ms  0x7487 SSL_ImportFD()
 14234 ms  0x7487 ret:0x7f52db820a30
 14234 ms  0x7487 SSL_AuthCertificateHook()
 14234 ms  0x7487 fd:0x7f52db820a30
 14234 ms  0x7487 ret:0x0
 14234 ms  0x7487 PR_Connect()
 14234 ms  0x7487 fd:0x7f52db820a30
           /* TID 0x74e3 */
 14235 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14235 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 14235 ms  0x748f PR_Close()
 14235 ms  0x748f fd:0x7f52db0d5c10
           /* TID 0x7487 */
 14235 ms  0x7487 SSL_AuthCertificateComplete()
 14235 ms  0x7487 fd:0x7f52db321400
 14235 ms  0x7487 err:0x0
 14235 ms     | 0x7487 PK11_DeriveWithFlags()
 14235 ms     | 0x7487 basekey:0x7f52c9b81080
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52db2fa700
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81080
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52db2fa400
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81080
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52db1bd000
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81000
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52db2faa00
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81000
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c9b80b00
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52db2fa400
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c9b80b00
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52db2fa400
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c9b80f80
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81000
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c98b6800
 14236 ms     | 0x7487 PK11_Encrypt()
 14236 ms     | 0x7487 symkey:0x7f52db2faa00
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52db2fa700
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c98b6800
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52db2fa700
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52c9b80f80
 14236 ms     | 0x7487 PK11_DeriveWithFlags()
 14236 ms     | 0x7487 basekey:0x7f52c9b81080
 14236 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14236 ms     | 0x7487 ret:0x7f52db2faa00
 14236 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14236 ms     | 0x7487 privk:0x7f52e0eb3020::7f52e0eb3020  20 94 0c db                                       ...
 14236 ms     | 0x7487 privk:0x7f52e0eb3020::7f52e0eb3020  e5 e5 e5 e5                                      ....
 14236 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14236 ms     | 0x7487 privk:0x7f52e0eae020::7f52e0eae020  50 91 0c db                                      P...
 14237 ms     | 0x7487 privk:0x7f52e0eae020::7f52e0eae020  e5 e5 e5 e5                                      ....
 14237 ms  0x7487 PK11_Encrypt()
 14237 ms  0x7487 symkey:0x7f52c98b6800
 14237 ms  0x7487 PK11_Encrypt()
 14237 ms  0x7487 symkey:0x7f52c98b6800
 14240 ms  0x7487 PK11_Derive()
 14240 ms  0x7487 basekey:0x7f52c9b3c400
 14240 ms     | 0x7487 PK11_DeriveWithTemplate()
 14240 ms  0x7487 ret:0x7f52c9b81000
 14240 ms  0x7487 PK11_PubDeriveWithKDF()
 14240 ms  0x7487 seckey:0x7f52e0ecb820
 14240 ms     | 0x7487 EC_ValidatePublicKey()
 14241 ms     | 0x7487 ret:0x0
 14241 ms  0x7487 ret:0x7f52c9b3c400
 14241 ms  SECKEY_ECParamsToKeySize()
 14241 ms  0x7487 ret:0xff
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b81000
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b81080
 14241 ms  0x7487 PK11_Derive()
 14241 ms  0x7487 basekey:0x7f52c9b3c400
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b80f80
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b80f80
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b81000
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b80f80
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b3c400
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b80f80
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b81080
 14241 ms  0x7487 PK11_Derive()
 14241 ms  0x7487 basekey:0x7f52db31a880
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52db31ab00
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b3c400
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b80f80
 14241 ms  0x7487 PK11_DeriveWithFlags()
 14241 ms  0x7487 basekey:0x7f52c9b3c400
 14241 ms     | 0x7487 PK11_DeriveWithTemplate()
 14241 ms  0x7487 ret:0x7f52c9b81080
 14243 ms  0x7487 PK11_DeriveWithFlags()
 14243 ms  0x7487 basekey:0x7f52c9b3c400
 14243 ms     | 0x7487 PK11_DeriveWithTemplate()
 14243 ms  0x7487 ret:0x7f52c9b81080
 14262 ms  0x7487 PK11_DeriveWithFlags()
 14262 ms  0x7487 basekey:0x7f52c9b77c80
 14262 ms     | 0x7487 PK11_DeriveWithTemplate()
 14262 ms  0x7487 ret:0x7f52c9b81080
 14262 ms  0x7487 PR_Close()
 14262 ms  0x7487 fd:0x7f52db894730
 14262 ms     | 0x7487 PK11_Encrypt()
 14262 ms     | 0x7487 symkey:0x7f52db2fa780
 14272 ms  0x7487 SECKEY_CreateECPrivateKey()
 14272 ms  0x7487 cx:0x7f52e033bda8
 14273 ms     | 0x7487 EC_ValidatePublicKey()
 14273 ms     | 0x7487 ret:0x0
 14273 ms  0x7487 ret:0x7f52e0e93020::7f52e0e93020  20 94 0c db                                       ...
 14273 ms  0x7487 SECKEY_CreateECPrivateKey()
 14273 ms  0x7487 cx:0x7f52e033bda8
 14273 ms     | 0x7487 EC_ValidatePublicKey()
 14275 ms     | 0x7487 ret:0x0
 14275 ms  0x7487 ret:0x7f52e0ec6020::7f52e0ec6020  d0 9d 0c db                                      ....
 14275 ms  0x7487 PK11_DeriveWithFlags()
 14275 ms  0x7487 basekey:0x7f52db2faa00
 14275 ms     | 0x7487 PK11_DeriveWithTemplate()
 14275 ms  0x7487 ret:0x7f52c9b80380
 14275 ms  0x7487 PK11_DeriveWithFlags()
 14275 ms  0x7487 basekey:0x7f52db2faa00
 14275 ms     | 0x7487 PK11_DeriveWithTemplate()
 14275 ms  0x7487 ret:0x7f52c9b80380
 14275 ms  0x7487 PK11_Encrypt()
 14275 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 14310 ms  0x748f PR_Close()
 14310 ms  0x748f fd:0x7f52db31daf0
           /* TID 0x7487 */
 14311 ms  0x7487 PK11_Encrypt()
 14311 ms  0x7487 symkey:0x7f52dafc5080
 14331 ms  0x7487 PK11_Derive()
 14331 ms  0x7487 basekey:0x7f52c9b80380
 14331 ms     | 0x7487 PK11_DeriveWithTemplate()
 14331 ms  0x7487 ret:0x7f52db2fa900
 14331 ms  0x7487 PK11_PubDeriveWithKDF()
 14331 ms  0x7487 seckey:0x7f52e0e93020
 14331 ms     | 0x7487 EC_ValidatePublicKey()
 14331 ms     | 0x7487 ret:0x0
 14332 ms  0x7487 ret:0x7f52c9b80380
 14332 ms  SECKEY_ECParamsToKeySize()
 14332 ms  0x7487 ret:0xff
 14332 ms  0x7487 PK11_DeriveWithFlags()
 14332 ms  0x7487 basekey:0x7f52db2fa900
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52c9b76080
 14332 ms  0x7487 PK11_Derive()
 14332 ms  0x7487 basekey:0x7f52c9b80380
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52c9b77c80
 14332 ms  0x7487 PK11_DeriveWithFlags()
 14332 ms  0x7487 basekey:0x7f52c9b77c80
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52db2fa900
 14332 ms  0x7487 PK11_DeriveWithFlags()
 14332 ms  0x7487 basekey:0x7f52c9b77c80
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52c9b80380
 14332 ms  0x7487 PK11_DeriveWithFlags()
 14332 ms  0x7487 basekey:0x7f52c9b77c80
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52c9b76080
 14332 ms  0x7487 PK11_Derive()
 14332 ms  0x7487 basekey:0x7f52db2fa500
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14332 ms  0x7487 ret:0x7f52db2fa780
 14332 ms  0x7487 PK11_DeriveWithFlags()
 14332 ms  0x7487 basekey:0x7f52c9b80380
 14332 ms     | 0x7487 PK11_DeriveWithTemplate()
 14333 ms  0x7487 ret:0x7f52c9b77c80
 14333 ms  0x7487 PK11_DeriveWithFlags()
 14333 ms  0x7487 basekey:0x7f52c9b80380
 14333 ms     | 0x7487 PK11_DeriveWithTemplate()
 14333 ms  0x7487 ret:0x7f52c9b76080
 14334 ms  SECKEY_ECParamsToKeySize()
 14334 ms  0x7487 ret:0x100
 14334 ms  SECKEY_ECParamsToBasePointOrderLen()
 14334 ms  0x7487 ret:0x100
 14334 ms  SECKEY_ECParamsToBasePointOrderLen()
 14334 ms  0x7487 ret:0x100
 14334 ms  0x7487 EC_ValidatePublicKey()
 14337 ms  0x7487 ret:0x0
 14341 ms  0x7487 PK11_DeriveWithFlags()
 14341 ms  0x7487 basekey:0x7f52c9b80380
 14341 ms     | 0x7487 PK11_DeriveWithTemplate()
 14341 ms  0x7487 ret:0x7f52c9b76080
 14341 ms  0x7487 SSL_AuthCertificateComplete()
 14341 ms  0x7487 fd:0x7f52db820a30
 14341 ms  0x7487 err:0x0
 14341 ms     | 0x7487 PK11_DeriveWithFlags()
 14341 ms     | 0x7487 basekey:0x7f52db2fa780
 14341 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14341 ms     | 0x7487 ret:0x7f52c9b76080
 14341 ms     | 0x7487 PK11_DeriveWithFlags()
 14341 ms     | 0x7487 basekey:0x7f52db2fa780
 14341 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14341 ms     | 0x7487 ret:0x7f52db2fa500
 14341 ms     | 0x7487 PK11_DeriveWithFlags()
 14341 ms     | 0x7487 basekey:0x7f52db2fa780
 14341 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14341 ms     | 0x7487 ret:0x7f52c9b81080
 14341 ms     | 0x7487 PK11_DeriveWithFlags()
 14341 ms     | 0x7487 basekey:0x7f52db2fa900
 14342 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14342 ms     | 0x7487 ret:0x7f52db31a880
 14342 ms     | 0x7487 PK11_DeriveWithFlags()
 14342 ms     | 0x7487 basekey:0x7f52db2fa900
 14342 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14342 ms     | 0x7487 ret:0x7f52db35b480
 14342 ms     | 0x7487 PK11_DeriveWithFlags()
 14342 ms     | 0x7487 basekey:0x7f52db2fa500
 14342 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14342 ms     | 0x7487 ret:0x7f52db35b480
 14342 ms     | 0x7487 PK11_DeriveWithFlags()
 14342 ms     | 0x7487 basekey:0x7f52db2fa500
 14342 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14342 ms     | 0x7487 ret:0x7f52db35b500
 14342 ms     | 0x7487 PK11_DeriveWithFlags()
 14342 ms     | 0x7487 basekey:0x7f52db2fa900
 14342 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14342 ms     | 0x7487 ret:0x7f52c9b77c80
 14342 ms     | 0x7487 PK11_Encrypt()
 14342 ms     | 0x7487 symkey:0x7f52db31a880
 14344 ms     | 0x7487 PK11_DeriveWithFlags()
 14344 ms     | 0x7487 basekey:0x7f52c9b76080
 14344 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14344 ms     | 0x7487 ret:0x7f52c9b77c80
 14344 ms     | 0x7487 PK11_DeriveWithFlags()
 14344 ms     | 0x7487 basekey:0x7f52c9b76080
 14344 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14344 ms     | 0x7487 ret:0x7f52db35b500
 14344 ms     | 0x7487 PK11_DeriveWithFlags()
 14344 ms     | 0x7487 basekey:0x7f52db2fa780
 14344 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14344 ms     | 0x7487 ret:0x7f52db31a880
 14344 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14344 ms     | 0x7487 privk:0x7f52e0ec6020::7f52e0ec6020  d0 9d 0c db                                      ....
 14344 ms     | 0x7487 privk:0x7f52e0ec6020::7f52e0ec6020  e5 e5 e5 e5                                      ....
 14344 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14344 ms     | 0x7487 privk:0x7f52e0e93020::7f52e0e93020  20 94 0c db                                       ...
 14345 ms     | 0x7487 privk:0x7f52e0e93020::7f52e0e93020  e5 e5 e5 e5                                      ....
 14345 ms  0x7487 PK11_Encrypt()
 14345 ms  0x7487 symkey:0x7f52c9b77c80
 14346 ms  0x7487 PK11_Encrypt()
 14346 ms  0x7487 symkey:0x7f52c9b77c80
 14346 ms  0x7487 PK11_Encrypt()
 14346 ms  0x7487 symkey:0x7f52db360480
 14347 ms  0x7487 PK11_Encrypt()
 14347 ms  0x7487 symkey:0x7f52c9b3d600
 14348 ms  0x7487 SSL_ImportFD()
 14348 ms  0x7487 ret:0x7f52db894730
 14348 ms  0x7487 SSL_AuthCertificateHook()
 14348 ms  0x7487 fd:0x7f52db894730
 14348 ms  0x7487 ret:0x0
 14348 ms  0x7487 PR_Connect()
 14348 ms  0x7487 fd:0x7f52db894730
           /* TID 0x748f */
 14362 ms  0x748f PR_Close()
 14362 ms  0x748f fd:0x7f52c9b065b0
           /* TID 0x7487 */
 14367 ms  0x7487 PK11_Encrypt()
 14367 ms  0x7487 symkey:0x7f52c98b6800
 14379 ms  0x7487 SSL_ImportFD()
 14379 ms  0x7487 ret:0x7f52dbdc8640
 14379 ms  0x7487 SSL_AuthCertificateHook()
 14379 ms  0x7487 fd:0x7f52dbdc8640
 14379 ms  0x7487 ret:0x0
 14380 ms  0x7487 PR_Connect()
 14380 ms  0x7487 fd:0x7f52dbdc8640
 14380 ms  0x7487 PK11_DeriveWithFlags()
 14380 ms  0x7487 basekey:0x7f52db31a880
 14380 ms     | 0x7487 PK11_DeriveWithTemplate()
 14380 ms  0x7487 ret:0x7f52c9b80380
 14380 ms  0x7487 PK11_DeriveWithFlags()
 14380 ms  0x7487 basekey:0x7f52db31a880
 14380 ms     | 0x7487 PK11_DeriveWithTemplate()
 14380 ms  0x7487 ret:0x7f52c9b80380
 14380 ms  0x7487 PK11_Encrypt()
 14380 ms  0x7487 symkey:0x7f52c9b77c80
 14386 ms  0x7487 PK11_Encrypt()
 14386 ms  0x7487 symkey:0x7f52db360480
           /* TID 0x748f */
 14387 ms  0x748f PR_Close()
 14387 ms  0x748f fd:0x7f52dbdc88b0
           /* TID 0x7525 */
 14387 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14388 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 14388 ms  0x7487 SSL_AuthCertificateComplete()
 14388 ms  0x7487 fd:0x7f52db894cd0
 14388 ms  0x7487 err:0x0
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db31ab00
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52c9b80380
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db31ab00
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db2fa900
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db31ab00
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db2fa780
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52c9b81000
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b500
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52c9b81000
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b180
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db2fa900
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b180
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db2fa900
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b980
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52c9b81000
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52c9b80f80
 14388 ms     | 0x7487 PK11_Encrypt()
 14388 ms     | 0x7487 symkey:0x7f52db35b500
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52c9b80380
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52c9b80f80
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52c9b80380
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b980
 14388 ms     | 0x7487 PK11_DeriveWithFlags()
 14388 ms     | 0x7487 basekey:0x7f52db31ab00
 14388 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14388 ms     | 0x7487 ret:0x7f52db35b500
 14389 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14389 ms     | 0x7487 privk:0x7f52e3653020::7f52e3653020  40 22 32 db                                      @"2.
 14389 ms     | 0x7487 privk:0x7f52e3653020::7f52e3653020  e5 e5 e5 e5                                      ....
 14389 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14389 ms     | 0x7487 privk:0x7f52e0ecb820::7f52e0ecb820  a0 9b 0c db                                      ....
 14389 ms     | 0x7487 privk:0x7f52e0ecb820::7f52e0ecb820  e5 e5 e5 e5                                      ....
 14390 ms  0x7487 PK11_Encrypt()
 14390 ms  0x7487 symkey:0x7f52c9b80f80
 14390 ms  0x7487 PK11_Encrypt()
 14390 ms  0x7487 symkey:0x7f52c9b80f80
 14391 ms  0x7487 PK11_Encrypt()
 14391 ms  0x7487 symkey:0x7f52c9b80f80
 14396 ms  0x7487 SECKEY_CreateECPrivateKey()
 14396 ms  0x7487 cx:0x7f52e033caa8
 14397 ms     | 0x7487 EC_ValidatePublicKey()
 14397 ms     | 0x7487 ret:0x0
 14397 ms  0x7487 ret:0x7f52e0ec6020::7f52e0ec6020  f0 91 0c db                                      ....
 14397 ms  0x7487 SECKEY_CreateECPrivateKey()
 14397 ms  0x7487 cx:0x7f52e033caa8
 14398 ms     | 0x7487 EC_ValidatePublicKey()
 14399 ms     | 0x7487 ret:0x0
 14399 ms  0x7487 ret:0x7f52e0ecb020::7f52e0ecb020  40 9c 0c db                                      @...
 14418 ms  0x7487 SECKEY_CreateECPrivateKey()
 14418 ms  0x7487 cx:0x7f52e033cc48
 14418 ms     | 0x7487 EC_ValidatePublicKey()
 14418 ms     | 0x7487 ret:0x0
 14418 ms  0x7487 ret:0x7f52e3653020::7f52e3653020  d0 9d 0c db                                      ....
 14418 ms  0x7487 SECKEY_CreateECPrivateKey()
 14418 ms  0x7487 cx:0x7f52e033cc48
 14419 ms     | 0x7487 EC_ValidatePublicKey()
 14421 ms     | 0x7487 ret:0x0
 14421 ms  0x7487 ret:0x7f52e3658020::7f52e3658020  10 1f 2f db                                      ../.
           /* TID 0x748f */
 14422 ms  0x748f PR_Close()
 14422 ms  0x748f fd:0x7f52db51dc10
           /* TID 0x7487 */
 14426 ms  0x7487 PK11_DeriveWithFlags()
 14426 ms  0x7487 basekey:0x7f52db35b500
 14426 ms     | 0x7487 PK11_DeriveWithTemplate()
 14426 ms  0x7487 ret:0x7f52c9b3c400
 14426 ms  0x7487 PK11_DeriveWithFlags()
 14426 ms  0x7487 basekey:0x7f52db35b500
 14426 ms     | 0x7487 PK11_DeriveWithTemplate()
 14426 ms  0x7487 ret:0x7f52c9b3c400
 14426 ms  0x7487 PK11_Encrypt()
 14426 ms  0x7487 symkey:0x7f52c9b80f80
 14426 ms  0x7487 PK11_Encrypt()
 14426 ms  0x7487 symkey:0x7f52c9b77c80
 14430 ms  0x7487 PK11_Encrypt()
 14430 ms  0x7487 symkey:0x7f52dafc5080
 14447 ms  0x7487 PK11_Derive()
 14447 ms  0x7487 basekey:0x7f52c9b3c400
 14447 ms     | 0x7487 PK11_DeriveWithTemplate()
 14447 ms  0x7487 ret:0x7f52c9b81000
 14447 ms  0x7487 PK11_PubDeriveWithKDF()
 14447 ms  0x7487 seckey:0x7f52e0ec6020
 14447 ms     | 0x7487 EC_ValidatePublicKey()
 14447 ms     | 0x7487 ret:0x0
 14448 ms  0x7487 ret:0x7f52c9b3c400
 14448 ms  SECKEY_ECParamsToKeySize()
 14448 ms  0x7487 ret:0xff
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52c9b81000
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db31ab00
 14448 ms  0x7487 PK11_Derive()
 14448 ms  0x7487 basekey:0x7f52c9b3c400
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db35b980
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52db35b980
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52c9b81000
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52db35b980
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52c9b3c400
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52db35b980
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db31ab00
 14448 ms  0x7487 PK11_Derive()
 14448 ms  0x7487 basekey:0x7f52db2fb080
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db2fbd00
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52c9b3c400
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db35b980
 14448 ms  0x7487 PK11_DeriveWithFlags()
 14448 ms  0x7487 basekey:0x7f52c9b3c400
 14448 ms     | 0x7487 PK11_DeriveWithTemplate()
 14448 ms  0x7487 ret:0x7f52db31ab00
 14449 ms  SECKEY_ECParamsToKeySize()
 14449 ms  0x7487 ret:0x100
 14449 ms  SECKEY_ECParamsToBasePointOrderLen()
 14449 ms  0x7487 ret:0x100
 14449 ms  SECKEY_ECParamsToBasePointOrderLen()
 14449 ms  0x7487 ret:0x100
 14449 ms  0x7487 EC_ValidatePublicKey()
 14450 ms  0x7487 ret:0x0
 14452 ms  0x7487 PK11_DeriveWithFlags()
 14452 ms  0x7487 basekey:0x7f52c9b3c400
 14452 ms     | 0x7487 PK11_DeriveWithTemplate()
 14452 ms  0x7487 ret:0x7f52db31ab00
 14452 ms  0x7487 SSL_AuthCertificateComplete()
 14452 ms  0x7487 fd:0x7f52db894730
 14452 ms  0x7487 err:0x0
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52db2fbd00
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db31ab00
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52db2fbd00
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db2fb080
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52db2fbd00
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db51e900
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52c9b81000
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db51ea00
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52c9b81000
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db51ea80
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52db2fb080
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db51ea80
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52db2fb080
 14452 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14452 ms     | 0x7487 ret:0x7f52db51eb00
 14452 ms     | 0x7487 PK11_DeriveWithFlags()
 14452 ms     | 0x7487 basekey:0x7f52c9b81000
 14453 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14453 ms     | 0x7487 ret:0x7f52db35b980
 14453 ms     | 0x7487 PK11_Encrypt()
 14453 ms     | 0x7487 symkey:0x7f52db51ea00
 14453 ms     | 0x7487 PK11_DeriveWithFlags()
 14453 ms     | 0x7487 basekey:0x7f52db31ab00
 14453 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14453 ms     | 0x7487 ret:0x7f52db35b980
 14453 ms     | 0x7487 PK11_DeriveWithFlags()
 14453 ms     | 0x7487 basekey:0x7f52db31ab00
 14453 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14453 ms     | 0x7487 ret:0x7f52db51eb00
 14453 ms     | 0x7487 PK11_DeriveWithFlags()
 14453 ms     | 0x7487 basekey:0x7f52db2fbd00
 14453 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14453 ms     | 0x7487 ret:0x7f52db51ea00
 14453 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14453 ms     | 0x7487 privk:0x7f52e0ecb020::7f52e0ecb020  40 9c 0c db                                      @...
 14453 ms     | 0x7487 privk:0x7f52e0ecb020::7f52e0ecb020  e5 e5 e5 e5                                      ....
 14453 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14453 ms     | 0x7487 privk:0x7f52e0ec6020::7f52e0ec6020  f0 91 0c db                                      ....
 14453 ms     | 0x7487 privk:0x7f52e0ec6020::7f52e0ec6020  e5 e5 e5 e5                                      ....
 14455 ms  0x7487 PK11_Encrypt()
 14455 ms  0x7487 symkey:0x7f52db35b980
 14455 ms  0x7487 PK11_Encrypt()
 14455 ms  0x7487 symkey:0x7f52db35b980
           /* TID 0x748f */
 14470 ms  0x748f PR_Close()
 14470 ms  0x748f fd:0x7f52dbdc8280
           /* TID 0x7487 */
 14477 ms  0x7487 PK11_Encrypt()
 14477 ms  0x7487 symkey:0x7f52dafc5080
 14478 ms  0x7487 PK11_Derive()
 14478 ms  0x7487 basekey:0x7f52c9b3c400
 14478 ms     | 0x7487 PK11_DeriveWithTemplate()
 14478 ms  0x7487 ret:0x7f52c9b81000
 14478 ms  0x7487 PK11_PubDeriveWithKDF()
 14478 ms  0x7487 seckey:0x7f52e3653020
 14478 ms     | 0x7487 EC_ValidatePublicKey()
 14478 ms     | 0x7487 ret:0x0
 14478 ms  0x7487 ret:0x7f52c9b3c400
 14478 ms  SECKEY_ECParamsToKeySize()
 14478 ms  0x7487 ret:0xff
 14478 ms  0x7487 PK11_DeriveWithFlags()
 14478 ms  0x7487 basekey:0x7f52c9b81000
 14478 ms     | 0x7487 PK11_DeriveWithTemplate()
 14478 ms  0x7487 ret:0x7f52db2fbd00
 14478 ms  0x7487 PK11_Derive()
 14478 ms  0x7487 basekey:0x7f52c9b3c400
 14478 ms     | 0x7487 PK11_DeriveWithTemplate()
 14478 ms  0x7487 ret:0x7f52db51eb00
 14478 ms  0x7487 PK11_DeriveWithFlags()
 14478 ms  0x7487 basekey:0x7f52db51eb00
 14478 ms     | 0x7487 PK11_DeriveWithTemplate()
 14478 ms  0x7487 ret:0x7f52c9b81000
 14479 ms  0x7487 PK11_DeriveWithFlags()
 14479 ms  0x7487 basekey:0x7f52db51eb00
 14479 ms     | 0x7487 PK11_DeriveWithTemplate()
 14479 ms  0x7487 ret:0x7f52c9b3c400
 14479 ms  0x7487 PK11_DeriveWithFlags()
 14479 ms  0x7487 basekey:0x7f52db51eb00
 14479 ms     | 0x7487 PK11_DeriveWithTemplate()
 14479 ms  0x7487 ret:0x7f52db2fbd00
 14479 ms  0x7487 PK11_Derive()
 14479 ms  0x7487 basekey:0x7f52db35be00
 14479 ms     | 0x7487 PK11_DeriveWithTemplate()
 14479 ms  0x7487 ret:0x7f52db51ec80
 14479 ms  0x7487 PK11_DeriveWithFlags()
 14479 ms  0x7487 basekey:0x7f52c9b3c400
 14479 ms     | 0x7487 PK11_DeriveWithTemplate()
 14479 ms  0x7487 ret:0x7f52db51eb00
 14479 ms  0x7487 PK11_DeriveWithFlags()
 14479 ms  0x7487 basekey:0x7f52c9b3c400
 14479 ms     | 0x7487 PK11_DeriveWithTemplate()
 14479 ms  0x7487 ret:0x7f52db2fbd00
 14479 ms  0x7487 PK11_DeriveWithFlags()
 14479 ms  0x7487 basekey:0x7f52c9b3c400
 14480 ms     | 0x7487 PK11_DeriveWithTemplate()
 14480 ms  0x7487 ret:0x7f52db2fbd00
 14480 ms  0x7487 SSL_AuthCertificateComplete()
 14480 ms  0x7487 fd:0x7f52dbdc8640
 14480 ms  0x7487 err:0x0
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db51ec80
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db2fbd00
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db51ec80
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db35be00
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db51ec80
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51ef00
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52c9b81000
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51ef80
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52c9b81000
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51f000
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db35be00
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51f000
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db35be00
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51f080
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52c9b81000
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51eb00
 14480 ms     | 0x7487 PK11_Encrypt()
 14480 ms     | 0x7487 symkey:0x7f52db51ef80
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db2fbd00
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51eb00
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db2fbd00
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51f080
 14480 ms     | 0x7487 PK11_DeriveWithFlags()
 14480 ms     | 0x7487 basekey:0x7f52db51ec80
 14480 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14480 ms     | 0x7487 ret:0x7f52db51ef80
 14480 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14480 ms     | 0x7487 privk:0x7f52e3658020::7f52e3658020  10 1f 2f db                                      ../.
 14481 ms     | 0x7487 privk:0x7f52e3658020::7f52e3658020  e5 e5 e5 e5                                      ....
 14481 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14481 ms     | 0x7487 privk:0x7f52e3653020::7f52e3653020  d0 9d 0c db                                      ....
 14481 ms     | 0x7487 privk:0x7f52e3653020::7f52e3653020  e5 e5 e5 e5                                      ....
 14482 ms  0x7487 PK11_Encrypt()
 14482 ms  0x7487 symkey:0x7f52c9b80f80
 14483 ms  0x7487 PK11_Encrypt()
 14483 ms  0x7487 symkey:0x7f52db51eb00
 14483 ms  0x7487 PK11_Encrypt()
 14483 ms  0x7487 symkey:0x7f52db51eb00
 14500 ms  0x7487 PK11_DeriveWithFlags()
 14500 ms  0x7487 basekey:0x7f52db51ea00
 14500 ms     | 0x7487 PK11_DeriveWithTemplate()
 14500 ms  0x7487 ret:0x7f52c9b3c400
 14500 ms  0x7487 PK11_DeriveWithFlags()
 14500 ms  0x7487 basekey:0x7f52db51ea00
 14500 ms     | 0x7487 PK11_DeriveWithTemplate()
 14500 ms  0x7487 ret:0x7f52c9b3c400
 14500 ms  0x7487 PK11_Encrypt()
 14500 ms  0x7487 symkey:0x7f52db35b980
 14506 ms  0x7487 PK11_Encrypt()
 14506 ms  0x7487 symkey:0x7f52c9b80500
 14518 ms  0x7487 PK11_DeriveWithFlags()
 14518 ms  0x7487 basekey:0x7f52db51ef80
 14518 ms     | 0x7487 PK11_DeriveWithTemplate()
 14518 ms  0x7487 ret:0x7f52c9b3c400
 14518 ms  0x7487 PK11_DeriveWithFlags()
 14518 ms  0x7487 basekey:0x7f52db51ef80
 14518 ms     | 0x7487 PK11_DeriveWithTemplate()
 14518 ms  0x7487 ret:0x7f52c9b3c400
 14518 ms  0x7487 PK11_Encrypt()
 14518 ms  0x7487 symkey:0x7f52db51eb00
 14548 ms  0x7487 PK11_Encrypt()
 14548 ms  0x7487 symkey:0x7f52db35b980
 14564 ms  0x7487 PK11_Encrypt()
 14564 ms  0x7487 symkey:0x7f52c9b80500
 14570 ms  0x7487 PK11_Encrypt()
 14570 ms  0x7487 symkey:0x7f52c9b77c80
 14571 ms  0x7487 PK11_Encrypt()
 14571 ms  0x7487 symkey:0x7f52c9b77c80
 14575 ms  0x7487 PK11_Encrypt()
 14575 ms  0x7487 symkey:0x7f52db51eb00
 14608 ms  0x7487 PK11_Encrypt()
 14608 ms  0x7487 symkey:0x7f52c9b77c80
           /* TID 0x748f */
 14610 ms  0x748f PR_Close()
 14610 ms  0x748f fd:0x7f52db8945e0
 14664 ms  0x748f PR_Close()
 14664 ms  0x748f fd:0x7f52db51db80
           /* TID 0x7487 */
 14677 ms  0x7487 PK11_Encrypt()
 14677 ms  0x7487 symkey:0x7f52db360480
 14678 ms  0x7487 SSL_ImportFD()
 14678 ms  0x7487 ret:0x7f52dc13c1c0
 14678 ms  0x7487 SSL_AuthCertificateHook()
 14678 ms  0x7487 fd:0x7f52dc13c1c0
 14678 ms  0x7487 ret:0x0
 14680 ms  0x7487 PR_Connect()
 14680 ms  0x7487 fd:0x7f52dc13c1c0
 14680 ms  0x7487 SSL_ImportFD()
 14680 ms  0x7487 ret:0x7f52dbdc8a90
 14681 ms  0x7487 SSL_AuthCertificateHook()
 14681 ms  0x7487 fd:0x7f52dbdc8a90
 14681 ms  0x7487 ret:0x0
 14681 ms  0x7487 PR_Connect()
 14681 ms  0x7487 fd:0x7f52dbdc8a90
 14693 ms  0x7487 PK11_Encrypt()
 14693 ms  0x7487 symkey:0x7f52c9b80500
 14718 ms  0x7487 SECKEY_CreateECPrivateKey()
 14718 ms  0x7487 cx:0x7f52e033d2c8
 14719 ms     | 0x7487 EC_ValidatePublicKey()
 14719 ms     | 0x7487 ret:0x0
 14719 ms  0x7487 ret:0x7f52e3658020::7f52e3658020  40 22 51 db                                      @"Q.
 14719 ms  0x7487 SECKEY_CreateECPrivateKey()
 14719 ms  0x7487 cx:0x7f52e033d2c8
 14719 ms     | 0x7487 EC_ValidatePublicKey()
 14721 ms     | 0x7487 ret:0x0
 14721 ms  0x7487 ret:0x7f52e373e020::7f52e373e020  40 27 51 db                                      @'Q.
 14721 ms  0x7487 SECKEY_CreateECPrivateKey()
 14721 ms  0x7487 cx:0x7f52e033cf88
 14722 ms     | 0x7487 EC_ValidatePublicKey()
 14722 ms     | 0x7487 ret:0x0
 14722 ms  0x7487 ret:0x7f52e3740820::7f52e3740820  90 27 51 db                                      .'Q.
 14722 ms  0x7487 SECKEY_CreateECPrivateKey()
 14722 ms  0x7487 cx:0x7f52e033cf88
 14723 ms     | 0x7487 EC_ValidatePublicKey()
 14724 ms     | 0x7487 ret:0x0
 14724 ms  0x7487 ret:0x7f52e3743820::7f52e3743820  90 2c 51 db                                      .,Q.
 14736 ms  0x7487 PK11_Encrypt()
 14736 ms  0x7487 symkey:0x7f52db35b980
 14736 ms  0x7487 PK11_Encrypt()
 14736 ms  0x7487 symkey:0x7f52db360480
           /* TID 0x748f */
 14753 ms  0x748f PR_Close()
 14753 ms  0x748f fd:0x7f52db5475b0
           /* TID 0x7487 */
 14755 ms  0x7487 PK11_Encrypt()
 14755 ms  0x7487 symkey:0x7f52c9b80500
 14776 ms  0x7487 PK11_Derive()
 14776 ms  0x7487 basekey:0x7f52c9b3c400
 14776 ms     | 0x7487 PK11_DeriveWithTemplate()
 14776 ms  0x7487 ret:0x7f52c9b81000
 14776 ms  0x7487 PK11_PubDeriveWithKDF()
 14776 ms  0x7487 seckey:0x7f52e3658020
 14776 ms     | 0x7487 EC_ValidatePublicKey()
 14776 ms     | 0x7487 ret:0x0
 14777 ms  0x7487 ret:0x7f52c9b3c400
 14777 ms  SECKEY_ECParamsToKeySize()
 14777 ms  0x7487 ret:0xff
 14777 ms  0x7487 PK11_DeriveWithFlags()
 14777 ms  0x7487 basekey:0x7f52c9b81000
 14777 ms     | 0x7487 PK11_DeriveWithTemplate()
 14777 ms  0x7487 ret:0x7f52db51ec80
 14777 ms  0x7487 PK11_Derive()
 14777 ms  0x7487 basekey:0x7f52c9b3c400
 14777 ms     | 0x7487 PK11_DeriveWithTemplate()
 14777 ms  0x7487 ret:0x7f52db51f080
 14777 ms  0x7487 PK11_DeriveWithFlags()
 14777 ms  0x7487 basekey:0x7f52db51f080
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52c9b81000
 14778 ms  0x7487 PK11_DeriveWithFlags()
 14778 ms  0x7487 basekey:0x7f52db51f080
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52c9b3c400
 14778 ms  0x7487 PK11_DeriveWithFlags()
 14778 ms  0x7487 basekey:0x7f52db51f080
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52db51ec80
 14778 ms  0x7487 PK11_Derive()
 14778 ms  0x7487 basekey:0x7f52db52b980
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52db56b600
 14778 ms  0x7487 PK11_DeriveWithFlags()
 14778 ms  0x7487 basekey:0x7f52c9b3c400
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52db51f080
 14778 ms  0x7487 PK11_DeriveWithFlags()
 14778 ms  0x7487 basekey:0x7f52c9b3c400
 14778 ms     | 0x7487 PK11_DeriveWithTemplate()
 14778 ms  0x7487 ret:0x7f52db51ec80
 14780 ms  SECKEY_ECParamsToKeySize()
 14780 ms  0x7487 ret:0x100
 14780 ms  SECKEY_ECParamsToBasePointOrderLen()
 14780 ms  0x7487 ret:0x100
 14780 ms  SECKEY_ECParamsToBasePointOrderLen()
 14780 ms  0x7487 ret:0x100
 14780 ms  0x7487 EC_ValidatePublicKey()
 14784 ms  0x7487 ret:0x0
 14790 ms  0x7487 PK11_DeriveWithFlags()
 14790 ms  0x7487 basekey:0x7f52c9b3c400
 14790 ms     | 0x7487 PK11_DeriveWithTemplate()
 14790 ms  0x7487 ret:0x7f52db51ec80
 14790 ms  0x7487 SSL_AuthCertificateComplete()
 14790 ms  0x7487 fd:0x7f52dbdc8a90
 14790 ms  0x7487 err:0x0
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52db56b600
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14790 ms     | 0x7487 ret:0x7f52db51ec80
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52db56b600
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14790 ms     | 0x7487 ret:0x7f52db52b980
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52db56b600
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14790 ms     | 0x7487 ret:0x7f52db56ba80
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52c9b81000
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14790 ms     | 0x7487 ret:0x7f52db56bb00
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52c9b81000
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14790 ms     | 0x7487 ret:0x7f52db56bb80
 14790 ms     | 0x7487 PK11_DeriveWithFlags()
 14790 ms     | 0x7487 basekey:0x7f52db52b980
 14790 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14791 ms     | 0x7487 ret:0x7f52db56bb80
 14791 ms     | 0x7487 PK11_DeriveWithFlags()
 14791 ms     | 0x7487 basekey:0x7f52db52b980
 14791 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14791 ms     | 0x7487 ret:0x7f52db56bc00
 14791 ms     | 0x7487 PK11_DeriveWithFlags()
 14791 ms     | 0x7487 basekey:0x7f52c9b81000
 14791 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14791 ms     | 0x7487 ret:0x7f52db51f080
 14791 ms     | 0x7487 PK11_Encrypt()
 14791 ms     | 0x7487 symkey:0x7f52db56bb00
 14794 ms     | 0x7487 PK11_DeriveWithFlags()
 14794 ms     | 0x7487 basekey:0x7f52db51ec80
 14794 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14794 ms     | 0x7487 ret:0x7f52db51f080
 14794 ms     | 0x7487 PK11_DeriveWithFlags()
 14794 ms     | 0x7487 basekey:0x7f52db51ec80
 14794 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14794 ms     | 0x7487 ret:0x7f52db56bc00
 14794 ms     | 0x7487 PK11_DeriveWithFlags()
 14794 ms     | 0x7487 basekey:0x7f52db56b600
 14794 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14794 ms     | 0x7487 ret:0x7f52db56bb00
 14794 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14794 ms     | 0x7487 privk:0x7f52e373e020::7f52e373e020  40 27 51 db                                      @'Q.
 14794 ms     | 0x7487 privk:0x7f52e373e020::7f52e373e020  e5 e5 e5 e5                                      ....
 14795 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14795 ms     | 0x7487 privk:0x7f52e3658020::7f52e3658020  40 22 51 db                                      @"Q.
 14795 ms     | 0x7487 privk:0x7f52e3658020::7f52e3658020  e5 e5 e5 e5                                      ....
 14800 ms  0x7487 PK11_Encrypt()
 14800 ms  0x7487 symkey:0x7f52db51f080
 14801 ms  0x7487 PK11_Encrypt()
 14801 ms  0x7487 symkey:0x7f52db51f080
 14801 ms  0x7487 PK11_Derive()
 14801 ms  0x7487 basekey:0x7f52c9b3c400
 14801 ms     | 0x7487 PK11_DeriveWithTemplate()
 14801 ms  0x7487 ret:0x7f52c9b81000
 14802 ms  0x7487 PK11_PubDeriveWithKDF()
 14802 ms  0x7487 seckey:0x7f52e3740820
 14802 ms     | 0x7487 EC_ValidatePublicKey()
 14802 ms     | 0x7487 ret:0x0
 14803 ms  0x7487 ret:0x7f52c9b3c400
 14803 ms  SECKEY_ECParamsToKeySize()
 14803 ms  0x7487 ret:0xff
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52c9b81000
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db56b600
 14803 ms  0x7487 PK11_Derive()
 14803 ms  0x7487 basekey:0x7f52c9b3c400
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db56bc00
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52db56bc00
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52c9b81000
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52db56bc00
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52c9b3c400
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52db56bc00
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db56b600
 14803 ms  0x7487 PK11_Derive()
 14803 ms  0x7487 basekey:0x7f52db56bf80
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db843080
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52c9b3c400
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db56bc00
 14803 ms  0x7487 PK11_DeriveWithFlags()
 14803 ms  0x7487 basekey:0x7f52c9b3c400
 14803 ms     | 0x7487 PK11_DeriveWithTemplate()
 14803 ms  0x7487 ret:0x7f52db56b600
 14805 ms  SECKEY_ECParamsToKeySize()
 14805 ms  0x7487 ret:0x100
 14805 ms  SECKEY_ECParamsToBasePointOrderLen()
 14805 ms  0x7487 ret:0x100
 14805 ms  SECKEY_ECParamsToBasePointOrderLen()
 14805 ms  0x7487 ret:0x100
 14805 ms  0x7487 EC_ValidatePublicKey()
 14807 ms  0x7487 ret:0x0
 14810 ms  0x7487 PK11_DeriveWithFlags()
 14810 ms  0x7487 basekey:0x7f52c9b3c400
 14811 ms     | 0x7487 PK11_DeriveWithTemplate()
 14811 ms  0x7487 ret:0x7f52db56b600
 14811 ms  0x7487 SSL_AuthCertificateComplete()
 14811 ms  0x7487 fd:0x7f52dc13c1c0
 14811 ms  0x7487 err:0x0
 14811 ms     | 0x7487 PK11_DeriveWithFlags()
 14811 ms     | 0x7487 basekey:0x7f52db843080
 14811 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14811 ms     | 0x7487 ret:0x7f52db56b600
 14811 ms     | 0x7487 PK11_DeriveWithFlags()
 14811 ms     | 0x7487 basekey:0x7f52db843080
 14811 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14811 ms     | 0x7487 ret:0x7f52db56bf80
 14811 ms     | 0x7487 PK11_DeriveWithFlags()
 14811 ms     | 0x7487 basekey:0x7f52db843080
 14811 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14811 ms     | 0x7487 ret:0x7f52db56b800
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52c9b81000
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843500
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52c9b81000
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843580
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52db56bf80
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843580
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52db56bf80
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843600
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52c9b81000
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db56bc00
 14812 ms     | 0x7487 PK11_Encrypt()
 14812 ms     | 0x7487 symkey:0x7f52db843500
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52db56b600
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db56bc00
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52db56b600
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843600
 14812 ms     | 0x7487 PK11_DeriveWithFlags()
 14812 ms     | 0x7487 basekey:0x7f52db843080
 14812 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 14812 ms     | 0x7487 ret:0x7f52db843500
 14812 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14812 ms     | 0x7487 privk:0x7f52e3743820::7f52e3743820  90 2c 51 db                                      .,Q.
 14812 ms     | 0x7487 privk:0x7f52e3743820::7f52e3743820  e5 e5 e5 e5                                      ....
 14813 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 14813 ms     | 0x7487 privk:0x7f52e3740820::7f52e3740820  90 27 51 db                                      .'Q.
 14813 ms     | 0x7487 privk:0x7f52e3740820::7f52e3740820  e5 e5 e5 e5                                      ....
 14813 ms  0x7487 PK11_Encrypt()
 14813 ms  0x7487 symkey:0x7f52db35b980
 14813 ms  0x7487 PK11_Encrypt()
 14813 ms  0x7487 symkey:0x7f52db56bc00
 14814 ms  0x7487 PK11_Encrypt()
 14814 ms  0x7487 symkey:0x7f52db56bc00
 14814 ms  0x7487 SSL_ImportFD()
 14814 ms  0x7487 ret:0x7f52dc13c610
 14814 ms  0x7487 SSL_AuthCertificateHook()
 14814 ms  0x7487 fd:0x7f52dc13c610
 14814 ms  0x7487 ret:0x0
 14815 ms  0x7487 PR_Connect()
 14815 ms  0x7487 fd:0x7f52dc13c610
 14832 ms  0x7487 PK11_DeriveWithFlags()
 14832 ms  0x7487 basekey:0x7f52db56bb00
 14832 ms     | 0x7487 PK11_DeriveWithTemplate()
 14832 ms  0x7487 ret:0x7f52c9b3c400
 14832 ms  0x7487 PK11_DeriveWithFlags()
 14832 ms  0x7487 basekey:0x7f52db56bb00
 14832 ms     | 0x7487 PK11_DeriveWithTemplate()
 14832 ms  0x7487 ret:0x7f52c9b3c400
 14832 ms  0x7487 PK11_Encrypt()
 14832 ms  0x7487 symkey:0x7f52db51f080
 14850 ms  0x7487 PK11_DeriveWithFlags()
 14850 ms  0x7487 basekey:0x7f52db843500
 14850 ms     | 0x7487 PK11_DeriveWithTemplate()
 14850 ms  0x7487 ret:0x7f52c9b3c400
 14850 ms  0x7487 PK11_DeriveWithFlags()
 14850 ms  0x7487 basekey:0x7f52db843500
 14850 ms     | 0x7487 PK11_DeriveWithTemplate()
 14850 ms  0x7487 ret:0x7f52c9b3c400
 14850 ms  0x7487 PK11_Encrypt()
 14850 ms  0x7487 symkey:0x7f52db56bc00
 14853 ms  0x7487 SECKEY_CreateECPrivateKey()
 14853 ms  0x7487 cx:0x7f52e033d7a8
 14853 ms     | 0x7487 EC_ValidatePublicKey()
 14853 ms     | 0x7487 ret:0x0
 14853 ms  0x7487 ret:0x7f52e3740820::7f52e3740820  50 21 32 db                                      P!2.
 14853 ms  0x7487 SECKEY_CreateECPrivateKey()
 14853 ms  0x7487 cx:0x7f52e033d7a8
 14854 ms     | 0x7487 EC_ValidatePublicKey()
 14856 ms     | 0x7487 ret:0x0
 14856 ms  0x7487 ret:0x7f52e3743820::7f52e3743820  f0 26 51 db                                      .&Q.
 14914 ms  0x7487 PK11_Encrypt()
 14914 ms  0x7487 symkey:0x7f52db56bc00
 14920 ms  0x7487 PK11_Derive()
 14920 ms  0x7487 basekey:0x7f52c9b3c400
 14920 ms     | 0x7487 PK11_DeriveWithTemplate()
 14921 ms  0x7487 ret:0x7f52c9b81000
 14921 ms  0x7487 PK11_PubDeriveWithKDF()
 14921 ms  0x7487 seckey:0x7f52e3740820
 14921 ms     | 0x7487 EC_ValidatePublicKey()
 14921 ms     | 0x7487 ret:0x0
 14922 ms  0x7487 ret:0x7f52c9b3c400
 14922 ms  SECKEY_ECParamsToKeySize()
 14922 ms  0x7487 ret:0xff
 14922 ms  0x7487 PK11_DeriveWithFlags()
 14922 ms  0x7487 basekey:0x7f52c9b81000
 14922 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db843080
 14923 ms  0x7487 PK11_Derive()
 14923 ms  0x7487 basekey:0x7f52c9b3c400
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db843600
 14923 ms  0x7487 PK11_DeriveWithFlags()
 14923 ms  0x7487 basekey:0x7f52db843600
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52c9b81000
 14923 ms  0x7487 PK11_DeriveWithFlags()
 14923 ms  0x7487 basekey:0x7f52db843600
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52c9b3c400
 14923 ms  0x7487 PK11_DeriveWithFlags()
 14923 ms  0x7487 basekey:0x7f52db843600
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db843080
 14923 ms  0x7487 PK11_Derive()
 14923 ms  0x7487 basekey:0x7f52db56af00
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db8e5480
 14923 ms  0x7487 PK11_DeriveWithFlags()
 14923 ms  0x7487 basekey:0x7f52c9b3c400
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db843600
 14923 ms  0x7487 PK11_DeriveWithFlags()
 14923 ms  0x7487 basekey:0x7f52c9b3c400
 14923 ms     | 0x7487 PK11_DeriveWithTemplate()
 14923 ms  0x7487 ret:0x7f52db843080
 14929 ms  SECKEY_ECParamsToKeySize()
 14929 ms  0x7487 ret:0x100
 14929 ms  SECKEY_ECParamsToBasePointOrderLen()
 14930 ms  0x7487 ret:0x100
 14930 ms  SECKEY_ECParamsToBasePointOrderLen()
 14930 ms  0x7487 ret:0x100
 14930 ms  0x7487 EC_ValidatePublicKey()
 14934 ms  0x7487 ret:0x0
 14938 ms  0x7487 PK11_DeriveWithFlags()
 14938 ms  0x7487 basekey:0x7f52c9b3c400
 14938 ms     | 0x7487 PK11_DeriveWithTemplate()
 14938 ms  0x7487 ret:0x7f52db843080
           /* TID 0x748f */
 14966 ms  0x748f PR_Close()
 14966 ms  0x748f fd:0x7f52dbdc8880
           /* TID 0x7487 */
 14977 ms  0x7487 PK11_Encrypt()
 14977 ms  0x7487 symkey:0x7f52db51f080
 15007 ms  0x7487 SSL_ImportFD()
 15007 ms  0x7487 ret:0x7f52dc1ff190
 15007 ms  0x7487 SSL_AuthCertificateHook()
 15007 ms  0x7487 fd:0x7f52dc1ff190
 15007 ms  0x7487 ret:0x0
 15007 ms  0x7487 PR_Connect()
 15007 ms  0x7487 fd:0x7f52dc1ff190
 15063 ms  0x7487 SECKEY_CreateECPrivateKey()
 15063 ms  0x7487 cx:0x7f52e033dae8
 15063 ms     | 0x7487 EC_ValidatePublicKey()
 15063 ms     | 0x7487 ret:0x0
 15063 ms  0x7487 ret:0x7f52e4687020::7f52e4687020  20 9e 52 db                                       .R.
 15063 ms  0x7487 SECKEY_CreateECPrivateKey()
 15063 ms  0x7487 cx:0x7f52e033dae8
 15064 ms     | 0x7487 EC_ValidatePublicKey()
 15065 ms     | 0x7487 ret:0x0
 15066 ms  0x7487 ret:0x7f52e468a020::7f52e468a020  90 2c 51 db                                      .,Q.
           /* TID 0x748f */
 15083 ms  0x748f PR_Close()
 15083 ms  0x748f fd:0x7f52dc13c520
           /* TID 0x7526 */
 15084 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15084 ms  0x7526 ret:0x0
           /* TID 0x7487 */
 15084 ms  0x7487 SSL_AuthCertificateComplete()
 15084 ms  0x7487 fd:0x7f52dc13c610
 15084 ms  0x7487 err:0x0
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db8e5480
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db843080
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db8e5480
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db56af00
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db8e5480
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db360600
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52c9b81000
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db8e5780
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52c9b81000
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db8e5a00
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db56af00
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db8e5a00
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db56af00
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db8e5e80
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52c9b81000
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db843600
 15084 ms     | 0x7487 PK11_Encrypt()
 15084 ms     | 0x7487 symkey:0x7f52db8e5780
 15084 ms     | 0x7487 PK11_DeriveWithFlags()
 15084 ms     | 0x7487 basekey:0x7f52db843080
 15084 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15084 ms     | 0x7487 ret:0x7f52db843600
 15085 ms     | 0x7487 PK11_DeriveWithFlags()
 15085 ms     | 0x7487 basekey:0x7f52db843080
 15085 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15085 ms     | 0x7487 ret:0x7f52db8e5e80
 15085 ms     | 0x7487 PK11_DeriveWithFlags()
 15085 ms     | 0x7487 basekey:0x7f52db8e5480
 15085 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 15085 ms     | 0x7487 ret:0x7f52db8e5780
 15085 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 15085 ms     | 0x7487 privk:0x7f52e3743820::7f52e3743820  f0 26 51 db                                      .&Q.
 15085 ms     | 0x7487 privk:0x7f52e3743820::7f52e3743820  e5 e5 e5 e5                                      ....
 15085 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 15085 ms     | 0x7487 privk:0x7f52e3740820::7f52e3740820  50 21 32 db                                      P!2.
 15085 ms     | 0x7487 privk:0x7f52e3740820::7f52e3740820  e5 e5 e5 e5                                      ....
 15086 ms  0x7487 PK11_Encrypt()
 15086 ms  0x7487 symkey:0x7f52db843600
 15086 ms  0x7487 PK11_Encrypt()
 15086 ms  0x7487 symkey:0x7f52db843600
 15124 ms  0x7487 PK11_DeriveWithFlags()
 15124 ms  0x7487 basekey:0x7f52c9b3c400
 15124 ms     | 0x7487 PK11_DeriveWithTemplate()
 15124 ms  0x7487 ret:0x7f52c9b81000
 15124 ms  0x7487 PK11_Derive()
 15124 ms  0x7487 basekey:0x7f52c9b81000
 15124 ms     | 0x7487 PK11_DeriveWithTemplate()
 15124 ms  0x7487 ret:0x7f52db8e5480
           /* TID 0x74e3 */
 15152 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15152 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 15153 ms  0x748f PR_Close()
 15153 ms  0x748f fd:0x7f52dc1ff130
           /* TID 0x7487 */
 15153 ms  0x7487 SSL_AuthCertificateComplete()
 15153 ms  0x7487 fd:0x7f52dc1ff190
 15153 ms  0x7487 err:0x0
 15184 ms  0x7487 SECKEY_DestroyPrivateKey()
 15184 ms  0x7487 privk:0x7f52e468a020::7f52e468a020  90 2c 51 db                                      .,Q.
 15184 ms  0x7487 privk:0x7f52e468a020::7f52e468a020  e5 e5 e5 e5                                      ....
 15184 ms  0x7487 SECKEY_DestroyPrivateKey()
 15184 ms  0x7487 privk:0x7f52e4687020::7f52e4687020  20 9e 52 db                                       .R.
 15185 ms  0x7487 privk:0x7f52e4687020::7f52e4687020  e5 e5 e5 e5                                      ....
 15200 ms  0x7487 PK11_DeriveWithFlags()
 15200 ms  0x7487 basekey:0x7f52db8e5780
 15200 ms     | 0x7487 PK11_DeriveWithTemplate()
 15201 ms  0x7487 ret:0x7f52c9b3c400
 15201 ms  0x7487 PK11_DeriveWithFlags()
 15201 ms  0x7487 basekey:0x7f52db8e5780
 15201 ms     | 0x7487 PK11_DeriveWithTemplate()
 15201 ms  0x7487 ret:0x7f52c9b3c400
 15201 ms  0x7487 PK11_Encrypt()
 15201 ms  0x7487 symkey:0x7f52db843600
 15234 ms  0x7487 PK11_Encrypt()
 15234 ms  0x7487 symkey:0x7f52db843600
 15319 ms  0x7487 SSL_ImportFD()
 15319 ms  0x7487 ret:0x7f52dc5cf430
 15319 ms  0x7487 SSL_AuthCertificateHook()
 15319 ms  0x7487 fd:0x7f52dc5cf430
 15319 ms  0x7487 ret:0x0
 15319 ms  0x7487 PR_Connect()
 15319 ms  0x7487 fd:0x7f52dc5cf430
 15360 ms  0x7487 SSL_ImportFD()
 15360 ms  0x7487 ret:0x7f52dc1ff8e0
 15360 ms  0x7487 SSL_AuthCertificateHook()
 15360 ms  0x7487 fd:0x7f52dc1ff8e0
 15360 ms  0x7487 ret:0x0
 15360 ms  0x7487 PR_Connect()
 15360 ms  0x7487 fd:0x7f52dc1ff8e0
 15361 ms  0x7487 SECKEY_CreateECPrivateKey()
 15361 ms  0x7487 cx:0x7f52e033d608
 15361 ms     | 0x7487 EC_ValidatePublicKey()
 15361 ms     | 0x7487 ret:0x0
 15361 ms  0x7487 ret:0x7f52e4694020::7f52e4694020  50 86 d3 db                                      P...
 15361 ms  0x7487 SECKEY_CreateECPrivateKey()
 15361 ms  0x7487 cx:0x7f52e033d608
 15362 ms     | 0x7487 EC_ValidatePublicKey()
 15363 ms     | 0x7487 ret:0x0
 15363 ms  0x7487 ret:0x7f52e4698020::7f52e4698020  80 88 d3 db                                      ....
 15365 ms  0x7487 SSL_ImportFD()
 15365 ms  0x7487 ret:0x7f52dd862e20
 15365 ms  0x7487 SSL_AuthCertificateHook()
 15365 ms  0x7487 fd:0x7f52dd862e20
 15365 ms  0x7487 ret:0x0
 15366 ms  0x7487 PR_Connect()
 15366 ms  0x7487 fd:0x7f52dd862e20
 15366 ms  0x7487 SSL_ImportFD()
 15366 ms  0x7487 ret:0x7f52dbdc8f10
 15366 ms  0x7487 SSL_AuthCertificateHook()
 15366 ms  0x7487 fd:0x7f52dbdc8f10
 15366 ms  0x7487 ret:0x0
 15366 ms  0x7487 PR_Connect()
 15366 ms  0x7487 fd:0x7f52dbdc8f10
 15366 ms  0x7487 SSL_ImportFD()
 15366 ms  0x7487 ret:0x7f52dc1ffa90
 15366 ms  0x7487 SSL_AuthCertificateHook()
 15366 ms  0x7487 fd:0x7f52dc1ffa90
 15366 ms  0x7487 ret:0x0
 15366 ms  0x7487 PR_Connect()
 15366 ms  0x7487 fd:0x7f52dc1ffa90
 15366 ms  0x7487 SSL_ImportFD()
 15366 ms  0x7487 ret:0x7f52dc5cf520
 15366 ms  0x7487 SSL_AuthCertificateHook()
 15366 ms  0x7487 fd:0x7f52dc5cf520
 15367 ms  0x7487 ret:0x0
 15367 ms  0x7487 PR_Connect()
 15367 ms  0x7487 fd:0x7f52dc5cf520
 15367 ms  0x7487 SSL_ImportFD()
 15367 ms  0x7487 ret:0x7f52dc5cf820
 15367 ms  0x7487 SSL_AuthCertificateHook()
 15367 ms  0x7487 fd:0x7f52dc5cf820
 15367 ms  0x7487 ret:0x0
 15367 ms  0x7487 PR_Connect()
 15367 ms  0x7487 fd:0x7f52dc5cf820
 15367 ms  0x7487 SSL_ImportFD()
 15367 ms  0x7487 ret:0x7f52dd8621f0
 15367 ms  0x7487 SSL_AuthCertificateHook()
 15367 ms  0x7487 fd:0x7f52dd8621f0
 15367 ms  0x7487 ret:0x0
 15367 ms  0x7487 PR_Connect()
 15367 ms  0x7487 fd:0x7f52dd8621f0
           /* TID 0x7527 */
 15408 ms  SECKEY_ECParamsToBasePointOrderLen()
 15409 ms  0x7527 ret:0x180
 15409 ms  SECKEY_ECParamsToBasePointOrderLen()
 15409 ms  0x7527 ret:0x180
 15409 ms  0x7527 EC_ValidatePublicKey()
 15413 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 15417 ms  SECKEY_ECParamsToKeySize()
 15417 ms  0x7487 ret:0x100
 15417 ms  SECKEY_ECParamsToBasePointOrderLen()
 15417 ms  0x7487 ret:0x100
 15417 ms  SECKEY_ECParamsToBasePointOrderLen()
 15417 ms  0x7487 ret:0x100
 15417 ms  0x7487 EC_ValidatePublicKey()
 15421 ms  0x7487 ret:0x0
 15426 ms  SECKEY_ECParamsToKeySize()
 15426 ms  0x7487 ret:0x100
 15426 ms  0x7487 SECKEY_CreateECPrivateKey()
 15426 ms  0x7487 cx:0x7f52e033d608
 15432 ms     | 0x7487 EC_ValidatePublicKey()
 15434 ms     | 0x7487 ret:0x0
           /* TID 0x7527 */
 15435 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15435 ms     | SECKEY_ECParamsToBasePointOrderLen()
 15435 ms     | 0x7527 ret:0x180
 15435 ms     | SECKEY_ECParamsToBasePointOrderLen()
 15435 ms     | 0x7527 ret:0x180
 15435 ms     | 0x7527 EC_ValidatePublicKey()
 15438 ms     | 0x7527 ret:0x0
 15442 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 15442 ms  0x7487 ret:0x7f52e47de820::7f52e47de820  00 8b d3 db                                      ....
 15442 ms  0x7487 PK11_PubDeriveWithKDF()
 15442 ms  0x7487 seckey:0x7f52e47de820
 15442 ms     | 0x7487 EC_ValidatePublicKey()
 15445 ms     | 0x7487 ret:0x0
 15446 ms  0x7487 ret:0x7f52c9b3c400
 15446 ms  0x7487 PK11_DeriveWithFlags()
 15446 ms  0x7487 basekey:0x7f52c9b3c400
 15446 ms     | 0x7487 PK11_DeriveWithTemplate()
 15446 ms  0x7487 ret:0x7f52db8e5e80
 15446 ms  0x7487 PK11_Derive()
 15446 ms  0x7487 basekey:0x7f52db8e5e80
 15447 ms     | 0x7487 PK11_DeriveWithTemplate()
 15447 ms  0x7487 ret:0x7f52dc57d780
 15447 ms  0x7487 SECKEY_DestroyPrivateKey()
 15447 ms  0x7487 privk:0x7f52e47de820::7f52e47de820  00 8b d3 db                                      ....
 15447 ms  0x7487 privk:0x7f52e47de820::7f52e47de820  e5 e5 e5 e5                                      ....
 15447 ms  0x7487 PK11_Encrypt()
 15447 ms  0x7487 symkey:0x7f52dc57e100
 15447 ms  0x7487 SSL_AuthCertificateComplete()
 15447 ms  0x7487 fd:0x7f52dc5cf430
 15447 ms  0x7487 err:0x0
 15447 ms  0x7487 PK11_Encrypt()
 15447 ms  0x7487 symkey:0x7f52dc57e100
 15448 ms  0x7487 SECKEY_CreateECPrivateKey()
 15448 ms  0x7487 cx:0x7f52e033dfc8
 15449 ms     | 0x7487 EC_ValidatePublicKey()
 15449 ms     | 0x7487 ret:0x0
 15449 ms  0x7487 ret:0x7f52e47df820::7f52e47df820  50 8b d3 db                                      P...
 15449 ms  0x7487 SECKEY_CreateECPrivateKey()
 15449 ms  0x7487 cx:0x7f52e033dfc8
 15449 ms     | 0x7487 EC_ValidatePublicKey()
 15451 ms     | 0x7487 ret:0x0
 15451 ms  0x7487 ret:0x7f52e47e1820::7f52e47e1820  80 8d d3 db                                      ....
 15451 ms  0x7487 SECKEY_CreateECPrivateKey()
 15451 ms  0x7487 cx:0x7f52e033eb28
 15452 ms     | 0x7487 EC_ValidatePublicKey()
 15452 ms     | 0x7487 ret:0x0
 15452 ms  0x7487 ret:0x7f52e47e4020::7f52e47e4020  c0 8e d3 db                                      ....
 15452 ms  0x7487 SECKEY_CreateECPrivateKey()
 15452 ms  0x7487 cx:0x7f52e033eb28
 15453 ms     | 0x7487 EC_ValidatePublicKey()
 15454 ms     | 0x7487 ret:0x0
 15454 ms  0x7487 ret:0x7f52e47e8020::7f52e47e8020  50 a1 d6 db                                      P...
 15455 ms  0x7487 SECKEY_CreateECPrivateKey()
 15455 ms  0x7487 cx:0x7f52e033e988
 15455 ms     | 0x7487 EC_ValidatePublicKey()
 15455 ms     | 0x7487 ret:0x0
 15455 ms  0x7487 ret:0x7f52e47ed020::7f52e47ed020  e0 a2 d6 db                                      ....
 15455 ms  0x7487 SECKEY_CreateECPrivateKey()
 15455 ms  0x7487 cx:0x7f52e033e988
 15456 ms     | 0x7487 EC_ValidatePublicKey()
 15457 ms     | 0x7487 ret:0x0
 15457 ms  0x7487 ret:0x7f52e47ef020::7f52e47ef020  c0 a4 d6 db                                      ....
 15458 ms  0x7487 SECKEY_CreateECPrivateKey()
 15458 ms  0x7487 cx:0x7f52e033e7e8
 15458 ms     | 0x7487 EC_ValidatePublicKey()
 15458 ms     | 0x7487 ret:0x0
 15458 ms  0x7487 ret:0x7f52e47f3820::7f52e47f3820  f0 a6 d6 db                                      ....
 15458 ms  0x7487 SECKEY_CreateECPrivateKey()
 15458 ms  0x7487 cx:0x7f52e033e7e8
 15459 ms     | 0x7487 EC_ValidatePublicKey()
 15460 ms     | 0x7487 ret:0x0
 15460 ms  0x7487 ret:0x7f52e4987020::7f52e4987020  d0 a8 d6 db                                      ....
 15463 ms  0x7487 SECKEY_CreateECPrivateKey()
 15463 ms  0x7487 cx:0x7f52e033e648
 15463 ms     | 0x7487 EC_ValidatePublicKey()
 15463 ms     | 0x7487 ret:0x0
 15463 ms  0x7487 ret:0x7f52e498c820::7f52e498c820  10 aa d6 db                                      ....
 15463 ms  0x7487 SECKEY_CreateECPrivateKey()
 15463 ms  0x7487 cx:0x7f52e033e648
 15464 ms     | 0x7487 EC_ValidatePublicKey()
 15465 ms     | 0x7487 ret:0x0
 15465 ms  0x7487 ret:0x7f52e498f820::7f52e498f820  f0 ab d6 db                                      ....
 15466 ms  0x7487 SECKEY_CreateECPrivateKey()
 15466 ms  0x7487 cx:0x7f52e033e4a8
 15466 ms     | 0x7487 EC_ValidatePublicKey()
 15466 ms     | 0x7487 ret:0x0
 15466 ms  0x7487 ret:0x7f52e4992020::7f52e4992020  30 ad d6 db                                      0...
 15466 ms  0x7487 SECKEY_CreateECPrivateKey()
 15466 ms  0x7487 cx:0x7f52e033e4a8
 15467 ms     | 0x7487 EC_ValidatePublicKey()
 15468 ms     | 0x7487 ret:0x0
 15468 ms  0x7487 ret:0x7f52e53b4820::7f52e53b4820  60 af d6 db                                      `...
 15468 ms  0x7487 SECKEY_CreateECPrivateKey()
 15468 ms  0x7487 cx:0x7f52e033e168
 15469 ms     | 0x7487 EC_ValidatePublicKey()
 15469 ms     | 0x7487 ret:0x0
 15469 ms  0x7487 ret:0x7f52e53b7020::7f52e53b7020  80 93 1a dc                                      ....
 15469 ms  0x7487 SECKEY_CreateECPrivateKey()
 15469 ms  0x7487 cx:0x7f52e033e168
 15470 ms     | 0x7487 EC_ValidatePublicKey()
 15471 ms     | 0x7487 ret:0x0
 15471 ms  0x7487 ret:0x7f52e53b9020::7f52e53b9020  d0 98 1a dc                                      ....
 15489 ms  0x7487 SECKEY_DestroyPrivateKey()
 15489 ms  0x7487 privk:0x7f52e4698020::7f52e4698020  80 88 d3 db                                      ....
 15489 ms  0x7487 privk:0x7f52e4698020::7f52e4698020  e5 e5 e5 e5                                      ....
 15489 ms  0x7487 SECKEY_DestroyPrivateKey()
 15489 ms  0x7487 privk:0x7f52e4694020::7f52e4694020  50 86 d3 db                                      P...
 15489 ms  0x7487 privk:0x7f52e4694020::7f52e4694020  e5 e5 e5 e5                                      ....
 15499 ms  0x7487 PK11_DeriveWithFlags()
 15499 ms  0x7487 basekey:0x7f52c9b3c400
 15499 ms     | 0x7487 PK11_DeriveWithTemplate()
 15499 ms  0x7487 ret:0x7f52dc5fd200
 15499 ms  0x7487 PK11_Derive()
 15499 ms  0x7487 basekey:0x7f52dc5fd200
 15499 ms     | 0x7487 PK11_DeriveWithTemplate()
 15500 ms  0x7487 ret:0x7f52dc5fd280
 15506 ms  SECKEY_ECParamsToKeySize()
 15506 ms  0x7487 ret:0x100
 15506 ms  0x7487 SECKEY_CreateECPrivateKey()
 15506 ms  0x7487 cx:0x7f52e033dfc8
 15508 ms     | 0x7487 EC_ValidatePublicKey()
 15511 ms     | 0x7487 ret:0x0
 15512 ms  0x7487 ret:0x7f52e5464020::7f52e5464020  30 bd 86 dd                                      0...
 15512 ms  0x7487 PK11_PubDeriveWithKDF()
 15512 ms  0x7487 seckey:0x7f52e5464020
 15512 ms     | 0x7487 EC_ValidatePublicKey()
 15515 ms     | 0x7487 ret:0x0
 15520 ms  0x7487 ret:0x7f52c9b3c400
 15520 ms  0x7487 PK11_DeriveWithFlags()
 15520 ms  0x7487 basekey:0x7f52c9b3c400
 15520 ms     | 0x7487 PK11_DeriveWithTemplate()
 15520 ms  0x7487 ret:0x7f52dc5fdd80
 15520 ms  0x7487 PK11_Derive()
 15520 ms  0x7487 basekey:0x7f52dc5fdd80
 15520 ms     | 0x7487 PK11_DeriveWithTemplate()
 15520 ms  0x7487 ret:0x7f52dc5fde80
 15520 ms  0x7487 SECKEY_DestroyPrivateKey()
 15520 ms  0x7487 privk:0x7f52e5464020::7f52e5464020  30 bd 86 dd                                      0...
 15520 ms  0x7487 privk:0x7f52e5464020::7f52e5464020  e5 e5 e5 e5                                      ....
 15520 ms  0x7487 PK11_Encrypt()
 15520 ms  0x7487 symkey:0x7f52dca6a080
 15522 ms  0x7487 PK11_DeriveWithFlags()
 15522 ms  0x7487 basekey:0x7f52c9b3c400
 15522 ms     | 0x7487 PK11_DeriveWithTemplate()
 15522 ms  0x7487 ret:0x7f52dca6af80
 15522 ms  0x7487 PK11_Derive()
 15522 ms  0x7487 basekey:0x7f52dca6af80
 15522 ms     | 0x7487 PK11_DeriveWithTemplate()
 15522 ms  0x7487 ret:0x7f52dca6b400
 15524 ms  0x7487 PK11_DeriveWithFlags()
 15524 ms  0x7487 basekey:0x7f52c9b3c400
 15524 ms     | 0x7487 PK11_DeriveWithTemplate()
 15524 ms  0x7487 ret:0x7f52dcac0c80
 15524 ms  0x7487 PK11_Derive()
 15524 ms  0x7487 basekey:0x7f52dcac0c80
 15524 ms     | 0x7487 PK11_DeriveWithTemplate()
 15524 ms  0x7487 ret:0x7f52dcac0d00
 15525 ms  0x7487 PK11_DeriveWithFlags()
 15525 ms  0x7487 basekey:0x7f52c9b3c400
 15525 ms     | 0x7487 PK11_DeriveWithTemplate()
 15525 ms  0x7487 ret:0x7f52dd845a80
 15525 ms  0x7487 PK11_Derive()
 15525 ms  0x7487 basekey:0x7f52dd845a80
 15525 ms     | 0x7487 PK11_DeriveWithTemplate()
 15525 ms  0x7487 ret:0x7f52dd845d80
 15526 ms  0x7487 PK11_DeriveWithFlags()
 15526 ms  0x7487 basekey:0x7f52c9b3c400
 15526 ms     | 0x7487 PK11_DeriveWithTemplate()
 15526 ms  0x7487 ret:0x7f52dd846100
 15526 ms  0x7487 PK11_Derive()
 15526 ms  0x7487 basekey:0x7f52dd846100
 15526 ms     | 0x7487 PK11_DeriveWithTemplate()
 15526 ms  0x7487 ret:0x7f52dd846480
 15526 ms  0x7487 PK11_DeriveWithFlags()
 15526 ms  0x7487 basekey:0x7f52c9b3c400
 15526 ms     | 0x7487 PK11_DeriveWithTemplate()
 15526 ms  0x7487 ret:0x7f52dd846780
 15526 ms  0x7487 PK11_Derive()
 15526 ms  0x7487 basekey:0x7f52dd846780
 15526 ms     | 0x7487 PK11_DeriveWithTemplate()
 15527 ms  0x7487 ret:0x7f52dd846800
           /* TID 0x7525 */
 15527 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15527 ms  0x7525 ret:0x0
           /* TID 0x748f */
 15529 ms  0x748f PR_Close()
 15529 ms  0x748f fd:0x7f52dd8b3d30
           /* TID 0x7487 */
 15530 ms  0x7487 SSL_AuthCertificateComplete()
 15530 ms  0x7487 fd:0x7f52dd8621f0
 15530 ms  0x7487 err:0x0
 15530 ms  0x7487 SSL_AuthCertificateComplete()
 15530 ms  0x7487 fd:0x7f52dc1ffa90
 15530 ms  0x7487 err:0x0
 15530 ms  0x7487 SSL_AuthCertificateComplete()
 15530 ms  0x7487 fd:0x7f52dbdc8f10
 15530 ms  0x7487 err:0x0
 15530 ms  0x7487 SSL_AuthCertificateComplete()
 15530 ms  0x7487 fd:0x7f52dd862e20
 15530 ms  0x7487 err:0x0
 15530 ms  0x7487 PR_Connect()
 15530 ms  0x7487 fd:0x7f52dd8b34f0
 15530 ms  0x7487 PR_Connect()
 15530 ms  0x7487 fd:0x7f52dd8b3d30
           /* TID 0x74e3 */
 15551 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15551 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 15551 ms  0x748f PR_Close()
 15551 ms  0x748f fd:0x7f52dd8f4e50
           /* TID 0x7487 */
 15552 ms  0x7487 SSL_AuthCertificateComplete()
 15552 ms  0x7487 fd:0x7f52dc5cf820
 15552 ms  0x7487 err:0x0
 15553 ms  0x7487 SECKEY_DestroyPrivateKey()
 15553 ms  0x7487 privk:0x7f52e47e8020::7f52e47e8020  50 a1 d6 db                                      P...
 15553 ms  0x7487 privk:0x7f52e47e8020::7f52e47e8020  e5 e5 e5 e5                                      ....
 15553 ms  0x7487 SECKEY_DestroyPrivateKey()
 15553 ms  0x7487 privk:0x7f52e47e4020::7f52e47e4020  c0 8e d3 db                                      ....
 15553 ms  0x7487 privk:0x7f52e47e4020::7f52e47e4020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 15557 ms  0x748f PR_Close()
 15557 ms  0x748f fd:0x7f52dd8b3c70
           /* TID 0x7527 */
 15557 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15557 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 15557 ms  0x7487 SSL_AuthCertificateComplete()
 15557 ms  0x7487 fd:0x7f52dc5cf520
 15557 ms  0x7487 err:0x0
 15570 ms  0x7487 SECKEY_DestroyPrivateKey()
 15570 ms  0x7487 privk:0x7f52e53b9020::7f52e53b9020  d0 98 1a dc                                      ....
 15570 ms  0x7487 privk:0x7f52e53b9020::7f52e53b9020  e5 e5 e5 e5                                      ....
 15570 ms  0x7487 SECKEY_DestroyPrivateKey()
 15570 ms  0x7487 privk:0x7f52e53b7020::7f52e53b7020  80 93 1a dc                                      ....
 15570 ms  0x7487 privk:0x7f52e53b7020::7f52e53b7020  e5 e5 e5 e5                                      ....
 15573 ms  0x7487 SECKEY_DestroyPrivateKey()
 15573 ms  0x7487 privk:0x7f52e498f820::7f52e498f820  f0 ab d6 db                                      ....
 15574 ms  0x7487 privk:0x7f52e498f820::7f52e498f820  e5 e5 e5 e5                                      ....
 15574 ms  0x7487 SECKEY_DestroyPrivateKey()
 15574 ms  0x7487 privk:0x7f52e498c820::7f52e498c820  10 aa d6 db                                      ....
 15574 ms  0x7487 privk:0x7f52e498c820::7f52e498c820  e5 e5 e5 e5                                      ....
 15578 ms  0x7487 SECKEY_DestroyPrivateKey()
 15578 ms  0x7487 privk:0x7f52e47ef020::7f52e47ef020  c0 a4 d6 db                                      ....
 15578 ms  0x7487 privk:0x7f52e47ef020::7f52e47ef020  e5 e5 e5 e5                                      ....
 15578 ms  0x7487 SECKEY_DestroyPrivateKey()
 15578 ms  0x7487 privk:0x7f52e47ed020::7f52e47ed020  e0 a2 d6 db                                      ....
 15578 ms  0x7487 privk:0x7f52e47ed020::7f52e47ed020  e5 e5 e5 e5                                      ....
 15578 ms  0x7487 SECKEY_DestroyPrivateKey()
 15578 ms  0x7487 privk:0x7f52e53b4820::7f52e53b4820  60 af d6 db                                      `...
 15578 ms  0x7487 privk:0x7f52e53b4820::7f52e53b4820  e5 e5 e5 e5                                      ....
 15579 ms  0x7487 SECKEY_DestroyPrivateKey()
 15579 ms  0x7487 privk:0x7f52e4992020::7f52e4992020  30 ad d6 db                                      0...
 15579 ms  0x7487 privk:0x7f52e4992020::7f52e4992020  e5 e5 e5 e5                                      ....
 15582 ms  0x7487 SECKEY_DestroyPrivateKey()
 15582 ms  0x7487 privk:0x7f52e4987020::7f52e4987020  d0 a8 d6 db                                      ....
 15582 ms  0x7487 privk:0x7f52e4987020::7f52e4987020  e5 e5 e5 e5                                      ....
 15582 ms  0x7487 SECKEY_DestroyPrivateKey()
 15582 ms  0x7487 privk:0x7f52e47f3820::7f52e47f3820  f0 a6 d6 db                                      ....
 15582 ms  0x7487 privk:0x7f52e47f3820::7f52e47f3820  e5 e5 e5 e5                                      ....
           /* TID 0x7526 */
 15617 ms  0x7526 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15617 ms  0x7526 ret:0x0
           /* TID 0x748f */
 15619 ms  0x748f PR_Close()
 15619 ms  0x748f fd:0x7f52dc5cf580
           /* TID 0x7487 */
 15663 ms  0x7487 SSL_AuthCertificateComplete()
 15663 ms  0x7487 fd:0x7f52dc1ff8e0
 15663 ms  0x7487 err:0x0
 15663 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 15663 ms     | 0x7487 privk:0x7f52e47e1820::7f52e47e1820  80 8d d3 db                                      ....
 15664 ms     | 0x7487 privk:0x7f52e47e1820::7f52e47e1820  e5 e5 e5 e5                                      ....
 15664 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 15664 ms     | 0x7487 privk:0x7f52e47df820::7f52e47df820  50 8b d3 db                                      P...
 15664 ms     | 0x7487 privk:0x7f52e47df820::7f52e47df820  e5 e5 e5 e5                                      ....
 15665 ms  0x7487 PK11_Encrypt()
 15665 ms  0x7487 symkey:0x7f52dca6a080
 15666 ms  0x7487 PK11_Encrypt()
 15666 ms  0x7487 symkey:0x7f52dca6a080
 15667 ms  0x7487 PK11_Encrypt()
 15667 ms  0x7487 symkey:0x7f52dca6a080
 15676 ms  0x7487 PK11_Encrypt()
 15676 ms  0x7487 symkey:0x7f52dca6a080
 15725 ms  0x7487 PR_Close()
 15725 ms  0x7487 fd:0x7f52c932c9a0
 16000 ms  0x7487 SSL_ImportFD()
 16000 ms  0x7487 ret:0x7f52dc13c5e0
 16000 ms  0x7487 SSL_AuthCertificateHook()
 16000 ms  0x7487 fd:0x7f52dc13c5e0
 16000 ms  0x7487 ret:0x0
 16000 ms  0x7487 PR_Connect()
 16000 ms  0x7487 fd:0x7f52dc13c5e0
 16039 ms  0x7487 SECKEY_CreateECPrivateKey()
 16039 ms  0x7487 cx:0x7f52db5d2f48
 16041 ms     | 0x7487 EC_ValidatePublicKey()
 16041 ms     | 0x7487 ret:0x0
 16041 ms  0x7487 ret:0x7f52c93b9820::7f52c93b9820  b0 80 d3 db                                      ....
 16043 ms  0x7487 SECKEY_CreateECPrivateKey()
 16043 ms  0x7487 cx:0x7f52db5d2f48
 16045 ms     | 0x7487 EC_ValidatePublicKey()
 16051 ms     | 0x7487 ret:0x0
 16051 ms  0x7487 ret:0x7f52c93bc820::7f52c93bc820  00 91 52 db                                      ..R.
 16107 ms  0x7487 PK11_Derive()
 16107 ms  0x7487 basekey:0x7f52c9b3c400
 16107 ms     | 0x7487 PK11_DeriveWithTemplate()
 16107 ms  0x7487 ret:0x7f52c951f900
 16107 ms  0x7487 PK11_PubDeriveWithKDF()
 16107 ms  0x7487 seckey:0x7f52c93b9820
 16107 ms     | 0x7487 EC_ValidatePublicKey()
 16107 ms     | 0x7487 ret:0x0
 16109 ms  0x7487 ret:0x7f52c9b3c400
 16109 ms  SECKEY_ECParamsToKeySize()
 16109 ms  0x7487 ret:0xff
 16109 ms  0x7487 PK11_DeriveWithFlags()
 16109 ms  0x7487 basekey:0x7f52c951f900
 16109 ms     | 0x7487 PK11_DeriveWithTemplate()
 16109 ms  0x7487 ret:0x7f52c951fb80
 16109 ms  0x7487 PK11_Derive()
 16109 ms  0x7487 basekey:0x7f52c9b3c400
 16109 ms     | 0x7487 PK11_DeriveWithTemplate()
 16109 ms  0x7487 ret:0x7f52c951fc00
 16109 ms  0x7487 PK11_DeriveWithFlags()
 16109 ms  0x7487 basekey:0x7f52c951fc00
 16109 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c951f900
 16110 ms  0x7487 PK11_DeriveWithFlags()
 16110 ms  0x7487 basekey:0x7f52c951fc00
 16110 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c9b3c400
 16110 ms  0x7487 PK11_DeriveWithFlags()
 16110 ms  0x7487 basekey:0x7f52c951fc00
 16110 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c951fb80
 16110 ms  0x7487 PK11_Derive()
 16110 ms  0x7487 basekey:0x7f52c951fc80
 16110 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c951fd00
 16110 ms  0x7487 PK11_DeriveWithFlags()
 16110 ms  0x7487 basekey:0x7f52c9b3c400
 16110 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c951fc00
 16110 ms  0x7487 PK11_DeriveWithFlags()
 16110 ms  0x7487 basekey:0x7f52c9b3c400
 16110 ms     | 0x7487 PK11_DeriveWithTemplate()
 16110 ms  0x7487 ret:0x7f52c951fb80
 16113 ms  0x7487 PK11_DeriveWithFlags()
 16113 ms  0x7487 basekey:0x7f52c9b3c400
 16113 ms     | 0x7487 PK11_DeriveWithTemplate()
 16113 ms  0x7487 ret:0x7f52c951fb80
 16113 ms  0x7487 SSL_AuthCertificateComplete()
 16113 ms  0x7487 fd:0x7f52dc13c5e0
 16113 ms  0x7487 err:0x0
 16113 ms     | 0x7487 PK11_DeriveWithFlags()
 16113 ms     | 0x7487 basekey:0x7f52c951fd00
 16113 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16113 ms     | 0x7487 ret:0x7f52c951fb80
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951fd00
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16114 ms     | 0x7487 ret:0x7f52c951fc80
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951fd00
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16114 ms     | 0x7487 ret:0x7f52c951fd80
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951f900
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16114 ms     | 0x7487 ret:0x7f52c951fe00
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951f900
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16114 ms     | 0x7487 ret:0x7f52c951fe80
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951fc80
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16114 ms     | 0x7487 ret:0x7f52c951fe80
 16114 ms     | 0x7487 PK11_DeriveWithFlags()
 16114 ms     | 0x7487 basekey:0x7f52c951fc80
 16114 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16115 ms     | 0x7487 ret:0x7f52c951ff00
 16115 ms     | 0x7487 PK11_DeriveWithFlags()
 16115 ms     | 0x7487 basekey:0x7f52c951f900
 16115 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16115 ms     | 0x7487 ret:0x7f52c951fc00
 16115 ms     | 0x7487 PK11_Encrypt()
 16115 ms     | 0x7487 symkey:0x7f52c951fe00
 16115 ms     | 0x7487 PK11_DeriveWithFlags()
 16115 ms     | 0x7487 basekey:0x7f52c951fb80
 16115 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16115 ms     | 0x7487 ret:0x7f52c951fc00
 16115 ms     | 0x7487 PK11_DeriveWithFlags()
 16115 ms     | 0x7487 basekey:0x7f52c951fb80
 16115 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16115 ms     | 0x7487 ret:0x7f52c951ff00
 16116 ms     | 0x7487 PK11_DeriveWithFlags()
 16116 ms     | 0x7487 basekey:0x7f52c951fd00
 16116 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 16116 ms     | 0x7487 ret:0x7f52c951fe00
 16116 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 16116 ms     | 0x7487 privk:0x7f52c93bc820::7f52c93bc820  00 91 52 db                                      ..R.
 16116 ms     | 0x7487 privk:0x7f52c93bc820::7f52c93bc820  e5 e5 e5 e5                                      ....
 16116 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 16116 ms     | 0x7487 privk:0x7f52c93b9820::7f52c93b9820  b0 80 d3 db                                      ....
 16117 ms     | 0x7487 privk:0x7f52c93b9820::7f52c93b9820  e5 e5 e5 e5                                      ....
 16118 ms  0x7487 PK11_Encrypt()
 16118 ms  0x7487 symkey:0x7f52c951fc00
 16118 ms  0x7487 PK11_Encrypt()
 16118 ms  0x7487 symkey:0x7f52c951fc00
           /* TID 0x748f */
 16138 ms  0x748f PR_Close()
 16138 ms  0x748f fd:0x7f52dc13c5b0
 16139 ms  0x748f PR_Close()
 16139 ms  0x748f fd:0x7f52dd885f10
 16139 ms  0x748f PR_Close()
 16139 ms  0x748f fd:0x7f52dd8b3070
 16139 ms  0x748f PR_Close()
 16139 ms  0x748f fd:0x7f52dd8f4e50
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52dc13c5b0
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52dd885f10
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52dd8b3070
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52dd8f4e50
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52df443f40
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52df490250
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52df490ac0
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52df494730
 16140 ms  0x748f PR_Close()
 16140 ms  0x748f fd:0x7f52df4fe070
 16141 ms  0x748f PR_Close()
 16141 ms  0x748f fd:0x7f52df4fe0d0
           /* TID 0x7487 */
 16193 ms  0x7487 PK11_DeriveWithFlags()
 16193 ms  0x7487 basekey:0x7f52c951fe00
 16194 ms     | 0x7487 PK11_DeriveWithTemplate()
 16194 ms  0x7487 ret:0x7f52c9b3c400
 16194 ms  0x7487 PK11_DeriveWithFlags()
 16194 ms  0x7487 basekey:0x7f52c951fe00
 16194 ms     | 0x7487 PK11_DeriveWithTemplate()
 16194 ms  0x7487 ret:0x7f52c9b3c400
 16194 ms  0x7487 PK11_Encrypt()
 16194 ms  0x7487 symkey:0x7f52c951fc00
 16219 ms  0x7487 PK11_Encrypt()
 16219 ms  0x7487 symkey:0x7f52c951fc00
 16447 ms  0x7487 PK11_Encrypt()
 16447 ms  0x7487 symkey:0x7f52db51f080
 16649 ms  0x7487 PK11_Encrypt()
 16649 ms  0x7487 symkey:0x7f52db51f080
 16739 ms  0x7487 PK11_Encrypt()
 16739 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 16741 ms  0x748f PR_Close()
 16741 ms  0x748f fd:0x7f52c930dd30
           /* TID 0x7487 */
 16904 ms  0x7487 PK11_Encrypt()
 16904 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 16907 ms  0x748f PR_Close()
 16907 ms  0x748f fd:0x7f52dd885f40
           /* TID 0x7487 */
 16947 ms  0x7487 SSL_ImportFD()
 16947 ms  0x7487 ret:0x7f52df4fee80
 16947 ms  0x7487 SSL_AuthCertificateHook()
 16947 ms  0x7487 fd:0x7f52df4fee80
 16947 ms  0x7487 ret:0x0
 16947 ms  0x7487 PR_Connect()
 16947 ms  0x7487 fd:0x7f52df4fee80
 16950 ms  0x7487 SSL_ImportFD()
 16950 ms  0x7487 ret:0x7f52e034bac0
 16950 ms  0x7487 SSL_AuthCertificateHook()
 16950 ms  0x7487 fd:0x7f52e034bac0
 16950 ms  0x7487 ret:0x0
 16950 ms  0x7487 PR_Connect()
 16950 ms  0x7487 fd:0x7f52e034bac0
 16951 ms  0x7487 SSL_ImportFD()
 16951 ms  0x7487 ret:0x7f52e03ec0d0
 16951 ms  0x7487 SSL_AuthCertificateHook()
 16951 ms  0x7487 fd:0x7f52e03ec0d0
 16951 ms  0x7487 ret:0x0
 16951 ms  0x7487 PR_Connect()
 16951 ms  0x7487 fd:0x7f52e03ec0d0
 16952 ms  0x7487 SSL_ImportFD()
 16952 ms  0x7487 ret:0x7f52e06247c0
 16952 ms  0x7487 SSL_AuthCertificateHook()
 16952 ms  0x7487 fd:0x7f52e06247c0
 16952 ms  0x7487 ret:0x0
 16952 ms  0x7487 PR_Connect()
 16952 ms  0x7487 fd:0x7f52e06247c0
 16953 ms  0x7487 SSL_ImportFD()
 16953 ms  0x7487 ret:0x7f52e06bebe0
 16953 ms  0x7487 SSL_AuthCertificateHook()
 16953 ms  0x7487 fd:0x7f52e06bebe0
 16953 ms  0x7487 ret:0x0
 16953 ms  0x7487 PR_Connect()
 16953 ms  0x7487 fd:0x7f52e06bebe0
 16955 ms  0x7487 SSL_ImportFD()
 16955 ms  0x7487 ret:0x7f52e06f9e80
 16955 ms  0x7487 SSL_AuthCertificateHook()
 16955 ms  0x7487 fd:0x7f52e06f9e80
 16955 ms  0x7487 ret:0x0
 16955 ms  0x7487 PR_Connect()
 16955 ms  0x7487 fd:0x7f52e06f9e80
           /* TID 0x748f */
 16964 ms  0x748f PR_Close()
 16964 ms  0x748f fd:0x7f52e0624370
 16974 ms  0x748f PR_Close()
 16974 ms  0x748f fd:0x7f52e0624370
           /* TID 0x7487 */
 16985 ms  0x7487 SECKEY_CreateECPrivateKey()
 16985 ms  0x7487 cx:0x7f52db5d30e8
 16985 ms     | 0x7487 EC_ValidatePublicKey()
 16985 ms     | 0x7487 ret:0x0
 16985 ms  0x7487 ret:0x7f52c961f020::7f52c961f020  90 a7 d6 db                                      ....
 16985 ms  0x7487 SECKEY_CreateECPrivateKey()
 16985 ms  0x7487 cx:0x7f52db5d30e8
 16986 ms     | 0x7487 EC_ValidatePublicKey()
           /* TID 0x748f */
 16987 ms  0x748f PR_Close()
 16987 ms  0x748f fd:0x7f52e075ce80
           /* TID 0x7487 */
 16988 ms     | 0x7487 ret:0x0
 16988 ms  0x7487 ret:0x7f52c9621820::7f52c9621820  60 a5 d6 db                                      `...
 16989 ms  0x7487 SECKEY_CreateECPrivateKey()
 16989 ms  0x7487 cx:0x7f52db5d3428
 16990 ms     | 0x7487 EC_ValidatePublicKey()
 16990 ms     | 0x7487 ret:0x0
 16990 ms  0x7487 ret:0x7f52c970e020::7f52c970e020  00 ab d6 db                                      ....
 16990 ms  0x7487 SECKEY_CreateECPrivateKey()
 16990 ms  0x7487 cx:0x7f52db5d3428
 16990 ms     | 0x7487 EC_ValidatePublicKey()
 16992 ms     | 0x7487 ret:0x0
 16992 ms  0x7487 ret:0x7f52c971b820::7f52c971b820  e0 ac d6 db                                      ....
 16996 ms  0x7487 SECKEY_CreateECPrivateKey()
 16996 ms  0x7487 cx:0x7f52db5d35c8
 16996 ms     | 0x7487 EC_ValidatePublicKey()
 16996 ms     | 0x7487 ret:0x0
 16996 ms  0x7487 ret:0x7f52e47de820::7f52e47de820  70 ae d6 db                                      p...
 16996 ms  0x7487 SECKEY_CreateECPrivateKey()
 16996 ms  0x7487 cx:0x7f52db5d35c8
 16999 ms     | 0x7487 EC_ValidatePublicKey()
 17000 ms     | 0x7487 ret:0x0
 17000 ms  0x7487 ret:0x7f52e47e1020::7f52e47e1020  d0 93 1a dc                                      ....
           /* TID 0x748f */
 17003 ms  0x748f PR_Close()
 17003 ms  0x748f fd:0x7f52e07fe6a0
           /* TID 0x7487 */
 17005 ms  0x7487 PK11_Encrypt()
 17005 ms  0x7487 symkey:0x7f52c98b6800
 17007 ms  0x7487 SECKEY_CreateECPrivateKey()
 17007 ms  0x7487 cx:0x7f52db5d3768
 17007 ms     | 0x7487 EC_ValidatePublicKey()
 17007 ms     | 0x7487 ret:0x0
 17007 ms  0x7487 ret:0x7f52e47e8020::7f52e47e8020  c0 9e 1a dc                                      ....
 17007 ms  0x7487 SECKEY_CreateECPrivateKey()
 17007 ms  0x7487 cx:0x7f52db5d3768
 17008 ms     | 0x7487 EC_ValidatePublicKey()
 17009 ms     | 0x7487 ret:0x0
 17009 ms  0x7487 ret:0x7f52e47ed020::7f52e47ed020  b0 ba 86 dd                                      ....
 17014 ms  0x7487 SECKEY_CreateECPrivateKey()
 17014 ms  0x7487 cx:0x7f52db5d3908
 17014 ms     | 0x7487 EC_ValidatePublicKey()
 17014 ms     | 0x7487 ret:0x0
 17014 ms  0x7487 ret:0x7f52e47ef820::7f52e47ef820  d0 bd 86 dd                                      ....
 17014 ms  0x7487 SECKEY_CreateECPrivateKey()
 17014 ms  0x7487 cx:0x7f52db5d3908
 17015 ms     | 0x7487 EC_ValidatePublicKey()
 17016 ms     | 0x7487 ret:0x0
 17016 ms  0x7487 ret:0x7f52e47f4820::7f52e47f4820  20 b4 87 dd                                       ...
           /* TID 0x748f */
 17021 ms  0x748f PR_Close()
 17021 ms  0x748f fd:0x7f52e0913730
 17022 ms  0x748f PR_Close()
 17022 ms  0x748f fd:0x7f52e06beaf0
           /* TID 0x7487 */
 17025 ms  0x7487 SECKEY_CreateECPrivateKey()
 17025 ms  0x7487 cx:0x7f52db5d3aa8
 17025 ms     | 0x7487 EC_ValidatePublicKey()
 17025 ms     | 0x7487 ret:0x0
 17025 ms  0x7487 ret:0x7f52e498e020::7f52e498e020  50 b1 8a dd                                      P...
 17025 ms  0x7487 SECKEY_CreateECPrivateKey()
 17025 ms  0x7487 cx:0x7f52db5d3aa8
 17026 ms     | 0x7487 EC_ValidatePublicKey()
 17031 ms     | 0x7487 ret:0x0
 17031 ms  0x7487 ret:0x7f52e4990020::7f52e4990020  60 b5 8a dd                                      `...
 17031 ms  0x7487 PK11_Encrypt()
 17031 ms  0x7487 symkey:0x7f52c98b6800
 17035 ms  0x7487 PK11_Encrypt()
 17035 ms  0x7487 symkey:0x7f52c985d180
           /* TID 0x748f */
 17041 ms  0x748f PR_Close()
 17041 ms  0x748f fd:0x7f52e0913ca0
           /* TID 0x7487 */
 17043 ms  0x7487 PK11_Derive()
 17043 ms  0x7487 basekey:0x7f52c9b3c400
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951f900
 17043 ms  0x7487 PK11_PubDeriveWithKDF()
 17043 ms  0x7487 seckey:0x7f52c961f020
 17043 ms     | 0x7487 EC_ValidatePublicKey()
 17043 ms     | 0x7487 ret:0x0
 17043 ms  0x7487 ret:0x7f52c9b3c400
 17043 ms  SECKEY_ECParamsToKeySize()
 17043 ms  0x7487 ret:0xff
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c951f900
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951fd00
 17043 ms  0x7487 PK11_Derive()
 17043 ms  0x7487 basekey:0x7f52c9b3c400
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951ff00
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c951ff00
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951f900
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c951ff00
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c9b3c400
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c951ff00
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951fd00
 17043 ms  0x7487 PK11_Derive()
 17043 ms  0x7487 basekey:0x7f52dd863900
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52dd864280
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c9b3c400
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951ff00
 17043 ms  0x7487 PK11_DeriveWithFlags()
 17043 ms  0x7487 basekey:0x7f52c9b3c400
 17043 ms     | 0x7487 PK11_DeriveWithTemplate()
 17043 ms  0x7487 ret:0x7f52c951fd00
 17044 ms  0x7487 PK11_Encrypt()
 17044 ms  0x7487 symkey:0x7f52c98b6800
 17046 ms  0x7487 PK11_Derive()
 17046 ms  0x7487 basekey:0x7f52c951fd00
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd863900
 17047 ms  0x7487 PK11_PubDeriveWithKDF()
 17047 ms  0x7487 seckey:0x7f52c970e020
 17047 ms     | 0x7487 EC_ValidatePublicKey()
 17047 ms     | 0x7487 ret:0x0
 17047 ms  0x7487 ret:0x7f52c951fd00
 17047 ms  SECKEY_ECParamsToKeySize()
 17047 ms  0x7487 ret:0xff
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52dd863900
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd864480
 17047 ms  0x7487 PK11_Derive()
 17047 ms  0x7487 basekey:0x7f52c951fd00
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd864500
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52dd864500
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd863900
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52dd864500
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52c951fd00
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52dd864500
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd864480
 17047 ms  0x7487 PK11_Derive()
 17047 ms  0x7487 basekey:0x7f52dd864580
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd864600
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52c951fd00
 17047 ms     | 0x7487 PK11_DeriveWithTemplate()
 17047 ms  0x7487 ret:0x7f52dd864500
 17047 ms  0x7487 PK11_DeriveWithFlags()
 17047 ms  0x7487 basekey:0x7f52c951fd00
 17048 ms     | 0x7487 PK11_DeriveWithTemplate()
 17048 ms  0x7487 ret:0x7f52dd864480
 17049 ms  0x7487 PK11_DeriveWithFlags()
 17049 ms  0x7487 basekey:0x7f52c9b3c400
 17049 ms     | 0x7487 PK11_DeriveWithTemplate()
 17049 ms  0x7487 ret:0x7f52dd864480
 17052 ms  0x7487 PK11_DeriveWithFlags()
 17052 ms  0x7487 basekey:0x7f52c951fd00
 17052 ms     | 0x7487 PK11_DeriveWithTemplate()
 17052 ms  0x7487 ret:0x7f52dd864480
 17055 ms  0x7487 PK11_Derive()
 17055 ms  0x7487 basekey:0x7f52dd864480
 17055 ms     | 0x7487 PK11_DeriveWithTemplate()
 17055 ms  0x7487 ret:0x7f52dd864580
 17055 ms  0x7487 PK11_PubDeriveWithKDF()
 17055 ms  0x7487 seckey:0x7f52e47de820
 17055 ms     | 0x7487 EC_ValidatePublicKey()
 17055 ms     | 0x7487 ret:0x0
 17056 ms  0x7487 ret:0x7f52dd864480
 17056 ms  SECKEY_ECParamsToKeySize()
 17056 ms  0x7487 ret:0xff
 17056 ms  0x7487 PK11_DeriveWithFlags()
 17056 ms  0x7487 basekey:0x7f52dd864580
 17056 ms     | 0x7487 PK11_DeriveWithTemplate()
 17056 ms  0x7487 ret:0x7f52dd864c80
 17056 ms  0x7487 PK11_Derive()
 17056 ms  0x7487 basekey:0x7f52dd864480
 17056 ms     | 0x7487 PK11_DeriveWithTemplate()
 17056 ms  0x7487 ret:0x7f52dd864d80
 17056 ms  0x7487 PK11_DeriveWithFlags()
 17056 ms  0x7487 basekey:0x7f52dd864d80
 17056 ms     | 0x7487 PK11_DeriveWithTemplate()
 17056 ms  0x7487 ret:0x7f52dd864580
 17057 ms  0x7487 PK11_DeriveWithFlags()
 17057 ms  0x7487 basekey:0x7f52dd864d80
 17057 ms     | 0x7487 PK11_DeriveWithTemplate()
 17057 ms  0x7487 ret:0x7f52dd864480
 17057 ms  0x7487 PK11_DeriveWithFlags()
 17057 ms  0x7487 basekey:0x7f52dd864d80
 17057 ms     | 0x7487 PK11_DeriveWithTemplate()
 17057 ms  0x7487 ret:0x7f52dd864c80
 17057 ms  0x7487 PK11_Derive()
 17057 ms  0x7487 basekey:0x7f52dd864e80
 17057 ms     | 0x7487 PK11_DeriveWithTemplate()
 17057 ms  0x7487 ret:0x7f52dd864f00
 17057 ms  0x7487 PK11_DeriveWithFlags()
 17057 ms  0x7487 basekey:0x7f52dd864480
 17057 ms     | 0x7487 PK11_DeriveWithTemplate()
 17057 ms  0x7487 ret:0x7f52dd864d80
 17057 ms  0x7487 PK11_DeriveWithFlags()
 17057 ms  0x7487 basekey:0x7f52dd864480
 17057 ms     | 0x7487 PK11_DeriveWithTemplate()
 17057 ms  0x7487 ret:0x7f52dd864c80
           /* TID 0x748f */
 17059 ms  0x748f PR_Close()
 17059 ms  0x748f fd:0x7f52e0aa6160
           /* TID 0x7487 */
 17060 ms  0x7487 PK11_Encrypt()
 17060 ms  0x7487 symkey:0x7f52c98b6800
 17060 ms  0x7487 PK11_DeriveWithFlags()
 17060 ms  0x7487 basekey:0x7f52dd864480
 17060 ms     | 0x7487 PK11_DeriveWithTemplate()
 17060 ms  0x7487 ret:0x7f52dd864c80
 17064 ms  0x7487 PK11_Derive()
 17064 ms  0x7487 basekey:0x7f52dd864c80
 17064 ms     | 0x7487 PK11_DeriveWithTemplate()
 17064 ms  0x7487 ret:0x7f52dd864e80
 17064 ms  0x7487 PK11_PubDeriveWithKDF()
 17064 ms  0x7487 seckey:0x7f52e47e8020
 17064 ms     | 0x7487 EC_ValidatePublicKey()
 17064 ms     | 0x7487 ret:0x0
 17064 ms  0x7487 ret:0x7f52dd864c80
 17065 ms  SECKEY_ECParamsToKeySize()
 17065 ms  0x7487 ret:0xff
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd864e80
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d480
 17065 ms  0x7487 PK11_Derive()
 17065 ms  0x7487 basekey:0x7f52dd864c80
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d500
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd87d500
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd864e80
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd87d500
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd864c80
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd87d500
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d480
 17065 ms  0x7487 PK11_Derive()
 17065 ms  0x7487 basekey:0x7f52dd87d580
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d600
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd864c80
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d500
 17065 ms  0x7487 PK11_DeriveWithFlags()
 17065 ms  0x7487 basekey:0x7f52dd864c80
 17065 ms     | 0x7487 PK11_DeriveWithTemplate()
 17065 ms  0x7487 ret:0x7f52dd87d480
 17069 ms  0x7487 PK11_DeriveWithFlags()
 17069 ms  0x7487 basekey:0x7f52dd864c80
 17069 ms     | 0x7487 PK11_DeriveWithTemplate()
 17069 ms  0x7487 ret:0x7f52dd87d480
 17070 ms  0x7487 PR_Connect()
 17070 ms  0x7487 fd:0x7f52e0aa67c0
 17071 ms  0x7487 PK11_Derive()
 17071 ms  0x7487 basekey:0x7f52dd87d480
 17071 ms     | 0x7487 PK11_DeriveWithTemplate()
 17071 ms  0x7487 ret:0x7f52dd87d580
 17071 ms  0x7487 PK11_PubDeriveWithKDF()
 17071 ms  0x7487 seckey:0x7f52e47ef820
 17071 ms     | 0x7487 EC_ValidatePublicKey()
 17071 ms     | 0x7487 ret:0x0
 17073 ms  0x7487 ret:0x7f52dd87d480
 17073 ms  SECKEY_ECParamsToKeySize()
 17073 ms  0x7487 ret:0xff
 17073 ms  0x7487 PK11_DeriveWithFlags()
 17073 ms  0x7487 basekey:0x7f52dd87d580
 17073 ms     | 0x7487 PK11_DeriveWithTemplate()
 17073 ms  0x7487 ret:0x7f52dd87d900
 17073 ms  0x7487 PK11_Derive()
 17073 ms  0x7487 basekey:0x7f52dd87d480
 17073 ms     | 0x7487 PK11_DeriveWithTemplate()
 17073 ms  0x7487 ret:0x7f52dd87dc80
 17074 ms  0x7487 PK11_DeriveWithFlags()
 17074 ms  0x7487 basekey:0x7f52dd87dc80
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87d580
 17074 ms  0x7487 PK11_DeriveWithFlags()
 17074 ms  0x7487 basekey:0x7f52dd87dc80
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87d480
 17074 ms  0x7487 PK11_DeriveWithFlags()
 17074 ms  0x7487 basekey:0x7f52dd87dc80
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87d900
 17074 ms  0x7487 PK11_Derive()
 17074 ms  0x7487 basekey:0x7f52dd87dd00
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87dd80
 17074 ms  0x7487 PK11_DeriveWithFlags()
 17074 ms  0x7487 basekey:0x7f52dd87d480
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87dc80
 17074 ms  0x7487 PK11_DeriveWithFlags()
 17074 ms  0x7487 basekey:0x7f52dd87d480
 17074 ms     | 0x7487 PK11_DeriveWithTemplate()
 17074 ms  0x7487 ret:0x7f52dd87d900
 17081 ms  0x7487 PK11_DeriveWithFlags()
 17081 ms  0x7487 basekey:0x7f52dd87d480
 17082 ms     | 0x7487 PK11_DeriveWithTemplate()
 17082 ms  0x7487 ret:0x7f52dd87d900
           /* TID 0x748f */
 17084 ms  0x748f PR_Close()
 17084 ms  0x748f fd:0x7f52e0aac9a0
           /* TID 0x7487 */
 17084 ms  0x7487 PR_Connect()
 17084 ms  0x7487 fd:0x7f52e0c4a100
 17085 ms  0x7487 PK11_Derive()
 17085 ms  0x7487 basekey:0x7f52dd87d900
 17085 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd87dd00
 17086 ms  0x7487 PK11_PubDeriveWithKDF()
 17086 ms  0x7487 seckey:0x7f52e498e020
 17086 ms     | 0x7487 EC_ValidatePublicKey()
 17086 ms     | 0x7487 ret:0x0
 17086 ms  0x7487 ret:0x7f52dd87d900
 17086 ms  SECKEY_ECParamsToKeySize()
 17086 ms  0x7487 ret:0xff
 17086 ms  0x7487 PK11_DeriveWithFlags()
 17086 ms  0x7487 basekey:0x7f52dd87dd00
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd8cd480
 17086 ms  0x7487 PK11_Derive()
 17086 ms  0x7487 basekey:0x7f52dd87d900
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd8cd500
 17086 ms  0x7487 PK11_DeriveWithFlags()
 17086 ms  0x7487 basekey:0x7f52dd8cd500
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd87dd00
 17086 ms  0x7487 PK11_DeriveWithFlags()
 17086 ms  0x7487 basekey:0x7f52dd8cd500
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd87d900
 17086 ms  0x7487 PK11_DeriveWithFlags()
 17086 ms  0x7487 basekey:0x7f52dd8cd500
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd8cd480
 17086 ms  0x7487 PK11_Derive()
 17086 ms  0x7487 basekey:0x7f52dd8cd600
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17086 ms  0x7487 ret:0x7f52dd8cd680
 17086 ms  0x7487 PK11_DeriveWithFlags()
 17086 ms  0x7487 basekey:0x7f52dd87d900
 17086 ms     | 0x7487 PK11_DeriveWithTemplate()
 17087 ms  0x7487 ret:0x7f52dd8cd500
 17087 ms  0x7487 PK11_DeriveWithFlags()
 17087 ms  0x7487 basekey:0x7f52dd87d900
 17087 ms     | 0x7487 PK11_DeriveWithTemplate()
 17087 ms  0x7487 ret:0x7f52dd8cd480
 17089 ms  0x7487 SSL_ImportFD()
 17089 ms  0x7487 ret:0x7f52e0c4a280
 17089 ms  0x7487 SSL_AuthCertificateHook()
 17089 ms  0x7487 fd:0x7f52e0c4a280
 17089 ms  0x7487 ret:0x0
 17090 ms  0x7487 PK11_Encrypt()
 17090 ms  0x7487 symkey:0x7f52c985d180
 17090 ms  0x7487 PR_Connect()
 17090 ms  0x7487 fd:0x7f52e0c4a280
 17091 ms  0x7487 PK11_DeriveWithFlags()
 17091 ms  0x7487 basekey:0x7f52dd87d900
 17091 ms     | 0x7487 PK11_DeriveWithTemplate()
 17091 ms  0x7487 ret:0x7f52dd8cd480
 17094 ms  0x7487 PK11_Encrypt()
 17094 ms  0x7487 symkey:0x7f52c985d180
           /* TID 0x748f */
 17094 ms  0x748f PR_Close()
 17094 ms  0x748f fd:0x7f52df443f70
           /* TID 0x7487 */
 17095 ms  0x7487 PK11_Encrypt()
 17095 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 17104 ms  0x748f PR_Close()
 17104 ms  0x748f fd:0x7f52e0c4aaf0
           /* TID 0x7487 */
 17104 ms  0x7487 PK11_Encrypt()
 17104 ms  0x7487 symkey:0x7f52c98b6800
 17105 ms  0x7487 PK11_Encrypt()
 17105 ms  0x7487 symkey:0x7f52c98b6800
 17105 ms  0x7487 PK11_Encrypt()
 17105 ms  0x7487 symkey:0x7f52c98b6800
 17105 ms  0x7487 PK11_Encrypt()
 17105 ms  0x7487 symkey:0x7f52c98b6800
 17105 ms  0x7487 PK11_Encrypt()
 17105 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 17105 ms  0x748f PR_Close()
 17105 ms  0x748f fd:0x7f52e07fe6d0
           /* TID 0x7487 */
 17128 ms  0x7487 SECKEY_CreateECPrivateKey()
 17128 ms  0x7487 cx:0x7f52db5d47a8
 17128 ms     | 0x7487 EC_ValidatePublicKey()
 17128 ms     | 0x7487 ret:0x0
 17128 ms  0x7487 ret:0x7f52e4993020::7f52e4993020  50 bb 8a dd                                      P...
 17128 ms  0x7487 SECKEY_CreateECPrivateKey()
 17128 ms  0x7487 cx:0x7f52db5d47a8
 17129 ms     | 0x7487 EC_ValidatePublicKey()
 17131 ms     | 0x7487 ret:0x0
 17131 ms  0x7487 ret:0x7f52e5798820::7f52e5798820  70 14 71 e0                                      p.q.
           /* TID 0x748f */
 17140 ms  0x748f PR_Close()
 17140 ms  0x748f fd:0x7f52db0d5af0
 17150 ms  0x748f PR_Close()
 17150 ms  0x748f fd:0x7f52e0aa6580
           /* TID 0x7487 */
 17152 ms  0x7487 PK11_Encrypt()
 17152 ms  0x7487 symkey:0x7f52db51eb00
 17185 ms  0x7487 PK11_Derive()
 17185 ms  0x7487 basekey:0x7f52dd8cd480
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd8cd600
 17186 ms  0x7487 PK11_PubDeriveWithKDF()
 17186 ms  0x7487 seckey:0x7f52e4993020
 17186 ms     | 0x7487 EC_ValidatePublicKey()
 17186 ms     | 0x7487 ret:0x0
 17186 ms  0x7487 ret:0x7f52dd8cd480
 17186 ms  SECKEY_ECParamsToKeySize()
 17186 ms  0x7487 ret:0xff
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52dd8cd600
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd863c00
 17186 ms  0x7487 PK11_Derive()
 17186 ms  0x7487 basekey:0x7f52dd8cd480
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52df484180
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52df484180
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd8cd600
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52df484180
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd8cd480
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52df484180
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd863c00
 17186 ms  0x7487 PK11_Derive()
 17186 ms  0x7487 basekey:0x7f52df484500
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52df484680
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52dd8cd480
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52df484180
 17186 ms  0x7487 PK11_DeriveWithFlags()
 17186 ms  0x7487 basekey:0x7f52dd8cd480
 17186 ms     | 0x7487 PK11_DeriveWithTemplate()
 17186 ms  0x7487 ret:0x7f52dd863c00
 17188 ms  SECKEY_ECParamsToKeySize()
 17188 ms  0x7487 ret:0x100
 17188 ms  SECKEY_ECParamsToBasePointOrderLen()
 17188 ms  0x7487 ret:0x100
 17188 ms  SECKEY_ECParamsToBasePointOrderLen()
 17188 ms  0x7487 ret:0x100
 17188 ms  0x7487 EC_ValidatePublicKey()
 17189 ms  0x7487 ret:0x0
 17191 ms  0x7487 PK11_DeriveWithFlags()
 17191 ms  0x7487 basekey:0x7f52dd8cd480
 17191 ms     | 0x7487 PK11_DeriveWithTemplate()
 17191 ms  0x7487 ret:0x7f52dd863c00
           /* TID 0x74e3 */
 17197 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17197 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 17198 ms  0x748f PR_Close()
 17198 ms  0x748f fd:0x7f52e0aa6580
           /* TID 0x752b */
 17199 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17199 ms  0x752b ret:0x0
           /* TID 0x748f */
 17199 ms  0x748f PR_Close()
 17199 ms  0x748f fd:0x7f52e0a12d00
           /* TID 0x7487 */
 17199 ms  0x7487 SSL_AuthCertificateComplete()
 17199 ms  0x7487 fd:0x7f52e034bac0
 17199 ms  0x7487 err:0x0
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52dd864600
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52dd863c00
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52dd864600
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52df484500
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52dd864600
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52dd864880
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52dd863900
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52df484f00
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52dd863900
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52dfceb400
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52df484500
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17199 ms     | 0x7487 ret:0x7f52dfceb400
 17199 ms     | 0x7487 PK11_DeriveWithFlags()
 17199 ms     | 0x7487 basekey:0x7f52df484500
 17199 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dfceb480
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd863900
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dd864500
 17200 ms     | 0x7487 PK11_Encrypt()
 17200 ms     | 0x7487 symkey:0x7f52df484f00
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd863c00
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dd864500
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd863c00
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dfceb480
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd864600
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52df484f00
 17200 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17200 ms     | 0x7487 privk:0x7f52c971b820::7f52c971b820  e0 ac d6 db                                      ....
 17200 ms     | 0x7487 privk:0x7f52c971b820::7f52c971b820  e5 e5 e5 e5                                      ....
 17200 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17200 ms     | 0x7487 privk:0x7f52c970e020::7f52c970e020  00 ab d6 db                                      ....
 17200 ms     | 0x7487 privk:0x7f52c970e020::7f52c970e020  e5 e5 e5 e5                                      ....
 17200 ms  0x7487 SSL_AuthCertificateComplete()
 17200 ms  0x7487 fd:0x7f52e06f9e80
 17200 ms  0x7487 err:0x0
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd8cd680
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52c951fd00
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd8cd680
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dd863900
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd8cd680
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17200 ms     | 0x7487 ret:0x7f52dd864600
 17200 ms     | 0x7487 PK11_DeriveWithFlags()
 17200 ms     | 0x7487 basekey:0x7f52dd87dd00
 17200 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb480
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52dd87dd00
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb500
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52dd863900
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb500
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52dd863900
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb580
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52dd87dd00
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dd8cd500
 17201 ms     | 0x7487 PK11_Encrypt()
 17201 ms     | 0x7487 symkey:0x7f52dfceb480
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52c951fd00
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dd8cd500
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52c951fd00
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb580
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52dd8cd680
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dfceb480
 17201 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17201 ms     | 0x7487 privk:0x7f52e4990020::7f52e4990020  60 b5 8a dd                                      `...
 17201 ms     | 0x7487 privk:0x7f52e4990020::7f52e4990020  e5 e5 e5 e5                                      ....
 17201 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17201 ms     | 0x7487 privk:0x7f52e498e020::7f52e498e020  50 b1 8a dd                                      P...
 17201 ms     | 0x7487 privk:0x7f52e498e020::7f52e498e020  e5 e5 e5 e5                                      ....
 17201 ms  0x7487 SSL_AuthCertificateComplete()
 17201 ms  0x7487 fd:0x7f52e0c4a280
 17201 ms  0x7487 err:0x0
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52df484680
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dd87d900
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52df484680
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17201 ms     | 0x7487 ret:0x7f52dd87dd00
 17201 ms     | 0x7487 PK11_DeriveWithFlags()
 17201 ms     | 0x7487 basekey:0x7f52df484680
 17201 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dd8cd680
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd8cd600
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb580
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd8cd600
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb600
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd87dd00
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb600
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd87dd00
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb680
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd8cd600
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52df484180
 17202 ms     | 0x7487 PK11_Encrypt()
 17202 ms     | 0x7487 symkey:0x7f52dfceb580
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd87d900
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52df484180
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd87d900
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb680
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52df484680
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dfceb580
 17202 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17202 ms     | 0x7487 privk:0x7f52e5798820::7f52e5798820  70 14 71 e0                                      p.q.
 17202 ms     | 0x7487 privk:0x7f52e5798820::7f52e5798820  e5 e5 e5 e5                                      ....
 17202 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17202 ms     | 0x7487 privk:0x7f52e4993020::7f52e4993020  50 bb 8a dd                                      P...
 17202 ms     | 0x7487 privk:0x7f52e4993020::7f52e4993020  e5 e5 e5 e5                                      ....
 17202 ms  0x7487 SSL_AuthCertificateComplete()
 17202 ms  0x7487 fd:0x7f52df4fee80
 17202 ms  0x7487 err:0x0
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd864280
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dd8cd480
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd864280
 17202 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17202 ms     | 0x7487 ret:0x7f52dd8cd600
 17202 ms     | 0x7487 PK11_DeriveWithFlags()
 17202 ms     | 0x7487 basekey:0x7f52dd864280
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52df484680
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52c951f900
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb680
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52c951f900
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb700
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52dd8cd600
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb700
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52dd8cd600
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb780
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52c951f900
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52c951ff00
 17203 ms     | 0x7487 PK11_Encrypt()
 17203 ms     | 0x7487 symkey:0x7f52dfceb680
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52dd8cd480
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52c951ff00
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52dd8cd480
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb780
 17203 ms     | 0x7487 PK11_DeriveWithFlags()
 17203 ms     | 0x7487 basekey:0x7f52dd864280
 17203 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17203 ms     | 0x7487 ret:0x7f52dfceb680
 17203 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17203 ms     | 0x7487 privk:0x7f52c9621820::7f52c9621820  60 a5 d6 db                                      `...
 17203 ms     | 0x7487 privk:0x7f52c9621820::7f52c9621820  e5 e5 e5 e5                                      ....
 17203 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17203 ms     | 0x7487 privk:0x7f52c961f020::7f52c961f020  90 a7 d6 db                                      ....
 17203 ms     | 0x7487 privk:0x7f52c961f020::7f52c961f020  e5 e5 e5 e5                                      ....
 17210 ms  0x7487 PK11_Encrypt()
 17210 ms  0x7487 symkey:0x7f52c951ff00
 17210 ms  0x7487 PK11_Encrypt()
 17210 ms  0x7487 symkey:0x7f52c951ff00
 17210 ms  0x7487 PK11_Encrypt()
 17210 ms  0x7487 symkey:0x7f52dd864500
 17210 ms  0x7487 PK11_Encrypt()
 17210 ms  0x7487 symkey:0x7f52dd8cd500
 17210 ms  0x7487 PK11_Encrypt()
 17210 ms  0x7487 symkey:0x7f52df484180
 17211 ms  0x7487 PK11_Encrypt()
 17211 ms  0x7487 symkey:0x7f52c951ff00
 17211 ms  0x7487 PK11_Encrypt()
 17211 ms  0x7487 symkey:0x7f52c951ff00
 17211 ms  0x7487 PK11_Encrypt()
 17211 ms  0x7487 symkey:0x7f52c951ff00
 17211 ms  0x7487 PK11_Encrypt()
 17211 ms  0x7487 symkey:0x7f52c98b6800
 17212 ms  0x7487 PK11_Encrypt()
 17212 ms  0x7487 symkey:0x7f52c951ff00
 17213 ms  0x7487 PK11_Encrypt()
 17213 ms  0x7487 symkey:0x7f52db51eb00
           /* TID 0x748f */
 17214 ms  0x748f PR_Close()
 17214 ms  0x748f fd:0x7f52e034b490
           /* TID 0x7527 */
 17214 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17214 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 17214 ms  0x7487 SSL_AuthCertificateComplete()
 17214 ms  0x7487 fd:0x7f52e03ec0d0
 17214 ms  0x7487 err:0x0
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864f00
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52c9b3c400
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864f00
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52c951f900
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864f00
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dd864280
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864580
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dfceb780
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864580
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dd87d300
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52c951f900
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dd87d300
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52c951f900
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dfcebd00
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864580
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dd864d80
 17215 ms     | 0x7487 PK11_Encrypt()
 17215 ms     | 0x7487 symkey:0x7f52dfceb780
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52c9b3c400
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dd864d80
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52c9b3c400
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dfcebd00
 17215 ms     | 0x7487 PK11_DeriveWithFlags()
 17215 ms     | 0x7487 basekey:0x7f52dd864f00
 17215 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17215 ms     | 0x7487 ret:0x7f52dfceb780
 17215 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17215 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  d0 93 1a dc                                      ....
 17215 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  e5 e5 e5 e5                                      ....
 17215 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17215 ms     | 0x7487 privk:0x7f52e47de820::7f52e47de820  70 ae d6 db                                      p...
 17216 ms     | 0x7487 privk:0x7f52e47de820::7f52e47de820  e5 e5 e5 e5                                      ....
 17216 ms  0x7487 PK11_Encrypt()
 17216 ms  0x7487 symkey:0x7f52c951ff00
 17216 ms  0x7487 PK11_Encrypt()
 17216 ms  0x7487 symkey:0x7f52c951ff00
 17216 ms  0x7487 PK11_Encrypt()
 17216 ms  0x7487 symkey:0x7f52dd864d80
 17217 ms  0x7487 PK11_Encrypt()
 17217 ms  0x7487 symkey:0x7f52c951ff00
 17238 ms  0x7487 PK11_DeriveWithFlags()
 17238 ms  0x7487 basekey:0x7f52df484f00
 17238 ms     | 0x7487 PK11_DeriveWithTemplate()
 17238 ms  0x7487 ret:0x7f52dd864480
 17238 ms  0x7487 PK11_DeriveWithFlags()
 17238 ms  0x7487 basekey:0x7f52df484f00
 17238 ms     | 0x7487 PK11_DeriveWithTemplate()
 17238 ms  0x7487 ret:0x7f52dd864480
 17238 ms  0x7487 PR_Close()
 17238 ms  0x7487 fd:0x7f52e034bac0
 17238 ms     | 0x7487 PK11_Encrypt()
 17238 ms     | 0x7487 symkey:0x7f52dd864500
 17241 ms  0x7487 PK11_DeriveWithFlags()
 17241 ms  0x7487 basekey:0x7f52dfceb680
 17241 ms     | 0x7487 PK11_DeriveWithTemplate()
 17241 ms  0x7487 ret:0x7f52dd864880
 17241 ms  0x7487 PK11_DeriveWithFlags()
 17241 ms  0x7487 basekey:0x7f52dfceb680
 17241 ms     | 0x7487 PK11_DeriveWithTemplate()
 17241 ms  0x7487 ret:0x7f52dd864880
 17241 ms  0x7487 PK11_Encrypt()
 17241 ms  0x7487 symkey:0x7f52c951ff00
 17242 ms  0x7487 PK11_DeriveWithFlags()
 17242 ms  0x7487 basekey:0x7f52dfceb580
 17242 ms     | 0x7487 PK11_DeriveWithTemplate()
 17242 ms  0x7487 ret:0x7f52dd864880
 17242 ms  0x7487 PK11_DeriveWithFlags()
 17242 ms  0x7487 basekey:0x7f52dfceb580
 17242 ms     | 0x7487 PK11_DeriveWithTemplate()
 17242 ms  0x7487 ret:0x7f52dd864880
 17242 ms  0x7487 PK11_DeriveWithFlags()
 17242 ms  0x7487 basekey:0x7f52dfceb480
 17242 ms     | 0x7487 PK11_DeriveWithTemplate()
 17242 ms  0x7487 ret:0x7f52dd864880
 17242 ms  0x7487 PK11_DeriveWithFlags()
 17242 ms  0x7487 basekey:0x7f52dfceb480
 17242 ms     | 0x7487 PK11_DeriveWithTemplate()
 17242 ms  0x7487 ret:0x7f52dd864880
 17242 ms  0x7487 PR_Close()
 17242 ms  0x7487 fd:0x7f52e06f9e80
 17242 ms     | 0x7487 PK11_Encrypt()
 17242 ms     | 0x7487 symkey:0x7f52dd8cd500
 17242 ms  0x7487 PR_Close()
 17242 ms  0x7487 fd:0x7f52e0c4a280
 17242 ms     | 0x7487 PK11_Encrypt()
 17242 ms     | 0x7487 symkey:0x7f52df484180
 17247 ms  0x7487 PK11_Encrypt()
 17247 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 17251 ms  0x748f PR_Close()
 17251 ms  0x748f fd:0x7f52e034baf0
           /* TID 0x7525 */
 17251 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17251 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 17252 ms  0x7487 SSL_AuthCertificateComplete()
 17252 ms  0x7487 fd:0x7f52e06247c0
 17252 ms  0x7487 err:0x0
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87d600
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dd8cd680
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87d600
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dd87dd00
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87d600
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dd87d900
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd864e80
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dfceb580
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd864e80
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dfceb600
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87dd00
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dfceb600
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87dd00
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52df484180
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd864e80
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dd87d500
 17252 ms     | 0x7487 PK11_Encrypt()
 17252 ms     | 0x7487 symkey:0x7f52dfceb580
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd8cd680
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dd87d500
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd8cd680
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52df484180
 17252 ms     | 0x7487 PK11_DeriveWithFlags()
 17252 ms     | 0x7487 basekey:0x7f52dd87d600
 17252 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17252 ms     | 0x7487 ret:0x7f52dfceb580
 17253 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17253 ms     | 0x7487 privk:0x7f52e47ed020::7f52e47ed020  b0 ba 86 dd                                      ....
 17253 ms     | 0x7487 privk:0x7f52e47ed020::7f52e47ed020  e5 e5 e5 e5                                      ....
 17253 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17253 ms     | 0x7487 privk:0x7f52e47e8020::7f52e47e8020  c0 9e 1a dc                                      ....
 17253 ms     | 0x7487 privk:0x7f52e47e8020::7f52e47e8020  e5 e5 e5 e5                                      ....
 17253 ms  0x7487 PK11_DeriveWithFlags()
 17253 ms  0x7487 basekey:0x7f52dfceb780
 17253 ms     | 0x7487 PK11_DeriveWithTemplate()
 17253 ms  0x7487 ret:0x7f52dd864c80
 17253 ms  0x7487 PK11_DeriveWithFlags()
 17253 ms  0x7487 basekey:0x7f52dfceb780
 17253 ms     | 0x7487 PK11_DeriveWithTemplate()
 17253 ms  0x7487 ret:0x7f52dd864c80
 17254 ms  0x7487 PK11_Encrypt()
 17254 ms  0x7487 symkey:0x7f52dd87d500
 17254 ms  0x7487 PR_Close()
 17254 ms  0x7487 fd:0x7f52e03ec0d0
 17254 ms     | 0x7487 PK11_Encrypt()
 17254 ms     | 0x7487 symkey:0x7f52dd864d80
 17254 ms  0x7487 PK11_Encrypt()
 17254 ms  0x7487 symkey:0x7f52c951ff00
 17259 ms  0x7487 PK11_Encrypt()
 17259 ms  0x7487 symkey:0x7f52db35f800
 17260 ms  0x7487 PK11_Encrypt()
 17260 ms  0x7487 symkey:0x7f52db35f800
 17261 ms  0x7487 PK11_Encrypt()
 17261 ms  0x7487 symkey:0x7f52db35f800
           /* TID 0x752c */
 17265 ms  0x752c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17265 ms  0x752c ret:0x0
           /* TID 0x748f */
 17266 ms  0x748f PR_Close()
 17266 ms  0x748f fd:0x7f52e034b8e0
           /* TID 0x7487 */
 17266 ms  0x7487 SSL_AuthCertificateComplete()
 17266 ms  0x7487 fd:0x7f52e06bebe0
 17266 ms  0x7487 err:0x0
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87dd80
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd864280
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87dd80
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52c951f900
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87dd80
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52c9b3c400
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87d580
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dfceb780
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87d580
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd87d300
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52c951f900
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd87d300
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52c951f900
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd864d80
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87d580
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd87dc80
 17266 ms     | 0x7487 PK11_Encrypt()
 17266 ms     | 0x7487 symkey:0x7f52dfceb780
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd864280
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd87dc80
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd864280
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dd864d80
 17266 ms     | 0x7487 PK11_DeriveWithFlags()
 17266 ms     | 0x7487 basekey:0x7f52dd87dd80
 17266 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17266 ms     | 0x7487 ret:0x7f52dfceb780
 17267 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17267 ms     | 0x7487 privk:0x7f52e47f4820::7f52e47f4820  20 b4 87 dd                                       ...
 17267 ms     | 0x7487 privk:0x7f52e47f4820::7f52e47f4820  e5 e5 e5 e5                                      ....
 17267 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17267 ms     | 0x7487 privk:0x7f52e47ef820::7f52e47ef820  d0 bd 86 dd                                      ....
 17267 ms     | 0x7487 privk:0x7f52e47ef820::7f52e47ef820  e5 e5 e5 e5                                      ....
 17267 ms  0x7487 PK11_Encrypt()
 17267 ms  0x7487 symkey:0x7f52dd87dc80
 17268 ms  0x7487 PK11_Encrypt()
 17268 ms  0x7487 symkey:0x7f52c951ff00
 17284 ms  0x7487 PK11_Encrypt()
 17284 ms  0x7487 symkey:0x7f52c951ff00
           /* TID 0x748f */
 17285 ms  0x748f PR_Close()
 17285 ms  0x748f fd:0x7f52e034ba60
           /* TID 0x7487 */
 17290 ms  0x7487 PK11_DeriveWithFlags()
 17290 ms  0x7487 basekey:0x7f52dfceb580
 17290 ms     | 0x7487 PK11_DeriveWithTemplate()
 17290 ms  0x7487 ret:0x7f52dd87d480
 17290 ms  0x7487 PK11_DeriveWithFlags()
 17290 ms  0x7487 basekey:0x7f52dfceb580
 17290 ms     | 0x7487 PK11_DeriveWithTemplate()
 17290 ms  0x7487 ret:0x7f52dd87d480
 17290 ms  0x7487 PR_Close()
 17290 ms  0x7487 fd:0x7f52e06247c0
 17290 ms     | 0x7487 PK11_Encrypt()
 17290 ms     | 0x7487 symkey:0x7f52dd87d500
           /* TID 0x748f */
 17296 ms  0x748f PR_Close()
 17296 ms  0x748f fd:0x7f52e06241c0
           /* TID 0x7487 */
 17300 ms  0x7487 PK11_Encrypt()
 17300 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 17301 ms  0x748f PR_Close()
 17301 ms  0x748f fd:0x7f52e06241c0
           /* TID 0x7487 */
 17304 ms  0x7487 PK11_DeriveWithFlags()
 17304 ms  0x7487 basekey:0x7f52dfceb780
 17304 ms     | 0x7487 PK11_DeriveWithTemplate()
 17304 ms  0x7487 ret:0x7f52dd87d900
 17304 ms  0x7487 PK11_DeriveWithFlags()
 17304 ms  0x7487 basekey:0x7f52dfceb780
 17304 ms     | 0x7487 PK11_DeriveWithTemplate()
 17304 ms  0x7487 ret:0x7f52dd87d900
 17304 ms  0x7487 PR_Close()
 17304 ms  0x7487 fd:0x7f52e06bebe0
 17304 ms     | 0x7487 PK11_Encrypt()
 17304 ms     | 0x7487 symkey:0x7f52dd87dc80
 17306 ms  0x7487 PK11_Encrypt()
 17306 ms  0x7487 symkey:0x7f52db35f800
           /* TID 0x748f */
 17306 ms  0x748f PR_Close()
 17306 ms  0x748f fd:0x7f52e03ec0d0
           /* TID 0x7487 */
 17315 ms  0x7487 PK11_Encrypt()
 17315 ms  0x7487 symkey:0x7f52db51f080
 17321 ms  0x7487 PK11_Encrypt()
 17321 ms  0x7487 symkey:0x7f52db51f080
 17321 ms  0x7487 SSL_ImportFD()
 17321 ms  0x7487 ret:0x7f52e06beac0
 17321 ms  0x7487 SSL_AuthCertificateHook()
 17321 ms  0x7487 fd:0x7f52e06beac0
 17321 ms  0x7487 ret:0x0
 17321 ms  0x7487 PR_Connect()
 17321 ms  0x7487 fd:0x7f52e06beac0
 17323 ms  0x7487 PK11_Encrypt()
 17323 ms  0x7487 symkey:0x7f52db51f080
 17323 ms  0x7487 SSL_ImportFD()
 17323 ms  0x7487 ret:0x7f52e075c910
 17323 ms  0x7487 SSL_AuthCertificateHook()
 17323 ms  0x7487 fd:0x7f52e075c910
 17323 ms  0x7487 ret:0x0
 17323 ms  0x7487 PR_Connect()
 17323 ms  0x7487 fd:0x7f52e075c910
           /* TID 0x748f */
 17344 ms  0x748f PR_Close()
 17344 ms  0x748f fd:0x7f52c9366bb0
 17354 ms  0x748f PR_Close()
 17354 ms  0x748f fd:0x7f52c9366bb0
           /* TID 0x7487 */
 17355 ms  0x7487 PK11_Encrypt()
 17355 ms  0x7487 symkey:0x7f52db51f080
 17355 ms  0x7487 SSL_ImportFD()
 17355 ms  0x7487 ret:0x7f52e07fe4f0
 17355 ms  0x7487 SSL_AuthCertificateHook()
 17355 ms  0x7487 fd:0x7f52e07fe4f0
 17355 ms  0x7487 ret:0x0
 17355 ms  0x7487 PR_Connect()
 17355 ms  0x7487 fd:0x7f52e07fe4f0
 17359 ms  0x7487 SECKEY_CreateECPrivateKey()
 17359 ms  0x7487 cx:0x7f52db5d3908
 17359 ms     | 0x7487 EC_ValidatePublicKey()
 17359 ms     | 0x7487 ret:0x0
 17359 ms  0x7487 ret:0x7f52e47e1020::7f52e47e1020  d0 ad d6 db                                      ....
 17359 ms  0x7487 SECKEY_CreateECPrivateKey()
 17359 ms  0x7487 cx:0x7f52db5d3908
 17360 ms     | 0x7487 EC_ValidatePublicKey()
 17362 ms     | 0x7487 ret:0x0
 17362 ms  0x7487 ret:0x7f52e47e8020::7f52e47e8020  30 a8 d6 db                                      0...
           /* TID 0x748f */
 17365 ms  0x748f PR_Close()
 17365 ms  0x748f fd:0x7f52e0624c70
           /* TID 0x7487 */
 17366 ms  0x7487 PK11_Encrypt()
 17366 ms  0x7487 symkey:0x7f52c951ff00
 17366 ms  0x7487 PK11_Encrypt()
 17366 ms  0x7487 symkey:0x7f52c951ff00
 17367 ms  0x7487 SECKEY_CreateECPrivateKey()
 17367 ms  0x7487 cx:0x7f52db5d4128
 17368 ms     | 0x7487 EC_ValidatePublicKey()
 17368 ms     | 0x7487 ret:0x0
 17368 ms  0x7487 ret:0x7f52e47e8820::7f52e47e8820  d0 a3 d6 db                                      ....
 17368 ms  0x7487 SECKEY_CreateECPrivateKey()
 17368 ms  0x7487 cx:0x7f52db5d4128
 17369 ms     | 0x7487 EC_ValidatePublicKey()
 17374 ms     | 0x7487 ret:0x0
 17374 ms  0x7487 ret:0x7f52e47ee820::7f52e47ee820  80 93 1a dc                                      ....
 17392 ms  0x7487 SECKEY_CreateECPrivateKey()
 17392 ms  0x7487 cx:0x7f52db5d42c8
 17393 ms     | 0x7487 EC_ValidatePublicKey()
 17393 ms     | 0x7487 ret:0x0
 17393 ms  0x7487 ret:0x7f52e47f3820::7f52e47f3820  50 9b 1a dc                                      P...
 17393 ms  0x7487 SECKEY_CreateECPrivateKey()
 17393 ms  0x7487 cx:0x7f52db5d42c8
 17394 ms     | 0x7487 EC_ValidatePublicKey()
 17397 ms     | 0x7487 ret:0x0
 17401 ms  0x7487 ret:0x7f52e498c020::7f52e498c020  b0 aa d6 db                                      ....
           /* TID 0x748f */
 17402 ms  0x748f PR_Close()
 17402 ms  0x748f fd:0x7f52e0624c70
           /* TID 0x7487 */
 17404 ms  0x7487 PK11_Encrypt()
 17404 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 17411 ms  0x748f PR_Close()
 17411 ms  0x748f fd:0x7f52e06243d0
           /* TID 0x7487 */
 17416 ms  0x7487 PK11_Derive()
 17416 ms  0x7487 basekey:0x7f52c9b3c400
 17416 ms     | 0x7487 PK11_DeriveWithTemplate()
 17416 ms  0x7487 ret:0x7f52c951f900
 17416 ms  0x7487 PK11_PubDeriveWithKDF()
 17416 ms  0x7487 seckey:0x7f52e47e1020
 17416 ms     | 0x7487 EC_ValidatePublicKey()
 17416 ms     | 0x7487 ret:0x0
 17417 ms  0x7487 ret:0x7f52c9b3c400
 17417 ms  SECKEY_ECParamsToKeySize()
 17417 ms  0x7487 ret:0xff
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52c951f900
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dd864280
 17417 ms  0x7487 PK11_Derive()
 17417 ms  0x7487 basekey:0x7f52c9b3c400
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dfceb780
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52dfceb780
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52c951f900
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52dfceb780
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52c9b3c400
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52dfceb780
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dd864280
 17417 ms  0x7487 PK11_Derive()
 17417 ms  0x7487 basekey:0x7f52dd87d300
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dd87dc80
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52c9b3c400
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dfceb780
 17417 ms  0x7487 PK11_DeriveWithFlags()
 17417 ms  0x7487 basekey:0x7f52c9b3c400
 17417 ms     | 0x7487 PK11_DeriveWithTemplate()
 17417 ms  0x7487 ret:0x7f52dd864280
           /* TID 0x748f */
 17418 ms  0x748f PR_Close()
 17418 ms  0x748f fd:0x7f52e0624340
           /* TID 0x7487 */
 17420 ms  0x7487 PK11_DeriveWithFlags()
 17420 ms  0x7487 basekey:0x7f52c9b3c400
 17420 ms     | 0x7487 PK11_DeriveWithTemplate()
 17420 ms  0x7487 ret:0x7f52dd864280
 17420 ms  0x7487 PK11_Encrypt()
 17420 ms  0x7487 symkey:0x7f52db51f080
 17420 ms  0x7487 SSL_ImportFD()
 17420 ms  0x7487 ret:0x7f52e07fe1f0
 17421 ms  0x7487 SSL_AuthCertificateHook()
 17421 ms  0x7487 fd:0x7f52e07fe1f0
 17421 ms  0x7487 ret:0x0
 17421 ms  0x7487 PR_Connect()
 17421 ms  0x7487 fd:0x7f52e07fe1f0
 17421 ms  0x7487 SSL_ImportFD()
 17421 ms  0x7487 ret:0x7f52e0aa6250
 17421 ms  0x7487 SSL_AuthCertificateHook()
 17421 ms  0x7487 fd:0x7f52e0aa6250
 17421 ms  0x7487 ret:0x0
 17421 ms  0x7487 PR_Connect()
 17421 ms  0x7487 fd:0x7f52e0aa6250
 17421 ms  0x7487 SSL_ImportFD()
 17421 ms  0x7487 ret:0x7f52e0aa6b50
 17421 ms  0x7487 SSL_AuthCertificateHook()
 17421 ms  0x7487 fd:0x7f52e0aa6b50
 17421 ms  0x7487 ret:0x0
 17421 ms  0x7487 PR_Connect()
 17421 ms  0x7487 fd:0x7f52e0aa6b50
 17429 ms  0x7487 PK11_Derive()
 17429 ms  0x7487 basekey:0x7f52dd864280
 17429 ms     | 0x7487 PK11_DeriveWithTemplate()
 17429 ms  0x7487 ret:0x7f52dd87d300
 17429 ms  0x7487 PK11_PubDeriveWithKDF()
 17429 ms  0x7487 seckey:0x7f52e47e8820
 17429 ms     | 0x7487 EC_ValidatePublicKey()
 17429 ms     | 0x7487 ret:0x0
 17430 ms  0x7487 ret:0x7f52dd864280
 17430 ms  SECKEY_ECParamsToKeySize()
 17430 ms  0x7487 ret:0xff
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd87d300
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87d900
 17430 ms  0x7487 PK11_Derive()
 17430 ms  0x7487 basekey:0x7f52dd864280
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87dd00
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd87dd00
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87d300
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd87dd00
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd864280
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd87dd00
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87d900
 17430 ms  0x7487 PK11_Derive()
 17430 ms  0x7487 basekey:0x7f52dd8cd680
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dfceb580
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd864280
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87dd00
 17430 ms  0x7487 PK11_DeriveWithFlags()
 17430 ms  0x7487 basekey:0x7f52dd864280
 17430 ms     | 0x7487 PK11_DeriveWithTemplate()
 17430 ms  0x7487 ret:0x7f52dd87d900
 17431 ms  0x7487 PK11_DeriveWithFlags()
 17431 ms  0x7487 basekey:0x7f52dd864280
 17431 ms     | 0x7487 PK11_DeriveWithTemplate()
 17431 ms  0x7487 ret:0x7f52dd87d900
           /* TID 0x748f */
 17433 ms  0x748f PR_Close()
 17433 ms  0x748f fd:0x7f52e03ec0a0
 17436 ms  0x748f PR_Close()
 17436 ms  0x748f fd:0x7f52df4fe040
 17437 ms  0x748f PR_Close()
 17437 ms  0x748f fd:0x7f52df4fe040
           /* TID 0x7487 */
 17457 ms  0x7487 PK11_Derive()
 17457 ms  0x7487 basekey:0x7f52dd87d900
 17457 ms     | 0x7487 PK11_DeriveWithTemplate()
 17457 ms  0x7487 ret:0x7f52dd8cd680
 17457 ms  0x7487 PK11_PubDeriveWithKDF()
 17457 ms  0x7487 seckey:0x7f52e47f3820
 17457 ms     | 0x7487 EC_ValidatePublicKey()
 17457 ms     | 0x7487 ret:0x0
 17457 ms  0x7487 ret:0x7f52dd87d900
 17457 ms  SECKEY_ECParamsToKeySize()
 17457 ms  0x7487 ret:0xff
 17458 ms  0x7487 PK11_DeriveWithFlags()
 17458 ms  0x7487 basekey:0x7f52dd8cd680
 17458 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dfceb600
 17461 ms  0x7487 PK11_Derive()
 17461 ms  0x7487 basekey:0x7f52dd87d900
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dd87d500
 17461 ms  0x7487 PK11_DeriveWithFlags()
 17461 ms  0x7487 basekey:0x7f52dd87d500
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dd8cd680
 17461 ms  0x7487 PK11_DeriveWithFlags()
 17461 ms  0x7487 basekey:0x7f52dd87d500
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dd87d900
 17461 ms  0x7487 PK11_DeriveWithFlags()
 17461 ms  0x7487 basekey:0x7f52dd87d500
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dfceb600
 17461 ms  0x7487 PK11_Derive()
 17461 ms  0x7487 basekey:0x7f52dd87d480
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dd87d580
 17461 ms  0x7487 PK11_DeriveWithFlags()
 17461 ms  0x7487 basekey:0x7f52dd87d900
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dd87d500
 17461 ms  0x7487 PK11_DeriveWithFlags()
 17461 ms  0x7487 basekey:0x7f52dd87d900
 17461 ms     | 0x7487 PK11_DeriveWithTemplate()
 17461 ms  0x7487 ret:0x7f52dfceb600
 17462 ms  0x7487 PK11_DeriveWithFlags()
 17462 ms  0x7487 basekey:0x7f52dd87d900
 17462 ms     | 0x7487 PK11_DeriveWithTemplate()
 17462 ms  0x7487 ret:0x7f52dfceb600
 17464 ms  0x7487 SECKEY_CreateECPrivateKey()
 17464 ms  0x7487 cx:0x7f52db5d4e28
 17464 ms     | 0x7487 EC_ValidatePublicKey()
 17464 ms     | 0x7487 ret:0x0
 17465 ms  0x7487 ret:0x7f52e5455020::7f52e5455020  50 31 45 df                                      P1E.
 17465 ms  0x7487 SECKEY_CreateECPrivateKey()
 17465 ms  0x7487 cx:0x7f52db5d4e28
 17465 ms     | 0x7487 EC_ValidatePublicKey()
 17471 ms     | 0x7487 ret:0x0
 17471 ms  0x7487 ret:0x7f52e5464820::7f52e5464820  70 39 45 df                                      p9E.
 17471 ms  0x7487 SECKEY_CreateECPrivateKey()
 17471 ms  0x7487 cx:0x7f52db5d4c88
 17472 ms     | 0x7487 EC_ValidatePublicKey()
 17472 ms     | 0x7487 ret:0x0
 17472 ms  0x7487 ret:0x7f52e5469020::7f52e5469020  70 69 c7 df                                      pi..
 17472 ms  0x7487 SECKEY_CreateECPrivateKey()
 17472 ms  0x7487 cx:0x7f52db5d4c88
 17473 ms     | 0x7487 EC_ValidatePublicKey()
 17474 ms     | 0x7487 ret:0x0
 17474 ms  0x7487 ret:0x7f52e578b820::7f52e578b820  40 6c c7 df                                      @l..
 17477 ms  0x7487 SECKEY_CreateECPrivateKey()
 17477 ms  0x7487 cx:0x7f52db5d4608
 17478 ms     | 0x7487 EC_ValidatePublicKey()
 17478 ms     | 0x7487 ret:0x0
 17478 ms  0x7487 ret:0x7f52e5798020::7f52e5798020  d0 6d c7 df                                      .m..
 17478 ms  0x7487 SECKEY_CreateECPrivateKey()
 17478 ms  0x7487 cx:0x7f52db5d4608
 17478 ms     | 0x7487 EC_ValidatePublicKey()
 17480 ms     | 0x7487 ret:0x0
 17480 ms  0x7487 ret:0x7f52e579c020::7f52e579c020  b0 6f c7 df                                      .o..
           /* TID 0x748f */
 17484 ms  0x748f PR_Close()
 17484 ms  0x748f fd:0x7f52e034baf0
           /* TID 0x7487 */
 17484 ms  0x7487 PK11_Encrypt()
 17484 ms  0x7487 symkey:0x7f52db51f080
 17513 ms  0x7487 PR_Close()
 17513 ms  0x7487 fd:0x7f52e07fe1f0
 17515 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17515 ms     | 0x7487 privk:0x7f52e579c020::7f52e579c020  b0 6f c7 df                                      .o..
 17516 ms     | 0x7487 privk:0x7f52e579c020::7f52e579c020  e5 e5 e5 e5                                      ....
 17516 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17516 ms     | 0x7487 privk:0x7f52e5798020::7f52e5798020  d0 6d c7 df                                      .m..
 17516 ms     | 0x7487 privk:0x7f52e5798020::7f52e5798020  e5 e5 e5 e5                                      ....
 17518 ms  0x7487 SSL_ImportFD()
 17518 ms  0x7487 ret:0x7f52e07fe100
 17518 ms  0x7487 SSL_AuthCertificateHook()
 17518 ms  0x7487 fd:0x7f52e07fe100
 17518 ms  0x7487 ret:0x0
 17518 ms  0x7487 PR_Connect()
 17518 ms  0x7487 fd:0x7f52e07fe100
 17518 ms  0x7487 SSL_ImportFD()
 17518 ms  0x7487 ret:0x7f52e06be0a0
 17518 ms  0x7487 SSL_AuthCertificateHook()
 17518 ms  0x7487 fd:0x7f52e06be0a0
 17518 ms  0x7487 ret:0x0
 17518 ms  0x7487 PR_Connect()
 17518 ms  0x7487 fd:0x7f52e06be0a0
 17518 ms  0x7487 SSL_ImportFD()
 17518 ms  0x7487 ret:0x7f52e06befa0
 17518 ms  0x7487 SSL_AuthCertificateHook()
 17518 ms  0x7487 fd:0x7f52e06befa0
 17518 ms  0x7487 ret:0x0
 17518 ms  0x7487 PR_Connect()
 17518 ms  0x7487 fd:0x7f52e06befa0
 17519 ms  0x7487 SSL_ImportFD()
 17519 ms  0x7487 ret:0x7f52e0c4ac40
 17519 ms  0x7487 SSL_AuthCertificateHook()
 17519 ms  0x7487 fd:0x7f52e0c4ac40
 17519 ms  0x7487 ret:0x0
 17519 ms  0x7487 PR_Connect()
 17519 ms  0x7487 fd:0x7f52e0c4ac40
 17521 ms  0x7487 PR_Close()
 17521 ms  0x7487 fd:0x7f52e0aa6250
 17521 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17521 ms     | 0x7487 privk:0x7f52e578b820::7f52e578b820  40 6c c7 df                                      @l..
 17521 ms     | 0x7487 privk:0x7f52e578b820::7f52e578b820  e5 e5 e5 e5                                      ....
 17521 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17521 ms     | 0x7487 privk:0x7f52e5469020::7f52e5469020  70 69 c7 df                                      pi..
 17521 ms     | 0x7487 privk:0x7f52e5469020::7f52e5469020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 17522 ms  0x748f PR_Close()
 17522 ms  0x748f fd:0x7f52c9b7f460
           /* TID 0x7487 */
 17523 ms  0x7487 SSL_ImportFD()
 17523 ms  0x7487 ret:0x7f52e075cc40
 17523 ms  0x7487 SSL_AuthCertificateHook()
 17523 ms  0x7487 fd:0x7f52e075cc40
 17523 ms  0x7487 ret:0x0
 17523 ms  0x7487 PR_Connect()
 17523 ms  0x7487 fd:0x7f52e075cc40
 17524 ms  0x7487 PR_Close()
 17524 ms  0x7487 fd:0x7f52e0aa6b50
 17524 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17524 ms     | 0x7487 privk:0x7f52e5464820::7f52e5464820  70 39 45 df                                      p9E.
 17524 ms     | 0x7487 privk:0x7f52e5464820::7f52e5464820  e5 e5 e5 e5                                      ....
 17524 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17524 ms     | 0x7487 privk:0x7f52e5455020::7f52e5455020  50 31 45 df                                      P1E.
 17525 ms     | 0x7487 privk:0x7f52e5455020::7f52e5455020  e5 e5 e5 e5                                      ....
 17526 ms  0x7487 SSL_ImportFD()
 17526 ms  0x7487 ret:0x7f52e06f9e80
 17526 ms  0x7487 SSL_AuthCertificateHook()
 17526 ms  0x7487 fd:0x7f52e06f9e80
 17526 ms  0x7487 ret:0x0
 17526 ms  0x7487 PR_Connect()
 17526 ms  0x7487 fd:0x7f52e06f9e80
           /* TID 0x748f */
 17534 ms  0x748f PR_Close()
 17534 ms  0x748f fd:0x7f52e0c4ab20
           /* TID 0x7487 */
 17534 ms  0x7487 PK11_Encrypt()
 17534 ms  0x7487 symkey:0x7f52db51f080
 17557 ms  0x7487 SECKEY_CreateECPrivateKey()
 17557 ms  0x7487 cx:0x7f52db5d5648
 17558 ms     | 0x7487 EC_ValidatePublicKey()
 17558 ms     | 0x7487 ret:0x0
 17558 ms  0x7487 ret:0x7f52e5455020::7f52e5455020  80 bd 86 dd                                      ....
 17558 ms  0x7487 SECKEY_CreateECPrivateKey()
 17558 ms  0x7487 cx:0x7f52db5d5648
 17558 ms     | 0x7487 EC_ValidatePublicKey()
 17560 ms     | 0x7487 ret:0x0
 17560 ms  0x7487 ret:0x7f52e5464820::7f52e5464820  30 33 45 df                                      03E.
 17561 ms  0x7487 SECKEY_CreateECPrivateKey()
 17561 ms  0x7487 cx:0x7f52db5d4c88
 17561 ms     | 0x7487 EC_ValidatePublicKey()
 17561 ms     | 0x7487 ret:0x0
 17561 ms  0x7487 ret:0x7f52e5469020::7f52e5469020  e0 5c 48 df                                      .\H.
 17561 ms  0x7487 SECKEY_CreateECPrivateKey()
 17561 ms  0x7487 cx:0x7f52db5d4c88
 17562 ms     | 0x7487 EC_ValidatePublicKey()
 17570 ms     | 0x7487 ret:0x0
 17570 ms  0x7487 ret:0x7f52e578b820::7f52e578b820  50 6b c7 df                                      Pk..
           /* TID 0x748f */
 17571 ms  0x748f PR_Close()
 17571 ms  0x748f fd:0x7f52e034bf10
           /* TID 0x74e3 */
 17571 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17572 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 17572 ms  0x7487 SSL_AuthCertificateComplete()
 17572 ms  0x7487 fd:0x7f52e06beac0
 17572 ms  0x7487 err:0x0
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52dd87dc80
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dfceb600
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52dd87dc80
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd87d480
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52dd87dc80
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd87dd80
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52c951f900
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd864d80
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52c951f900
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd864c80
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52dd87d480
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd864c80
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52dd87d480
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dd864e80
 17572 ms     | 0x7487 PK11_DeriveWithFlags()
 17572 ms     | 0x7487 basekey:0x7f52c951f900
 17572 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17572 ms     | 0x7487 ret:0x7f52dfceb780
 17572 ms     | 0x7487 PK11_Encrypt()
 17572 ms     | 0x7487 symkey:0x7f52dd864d80
 17573 ms     | 0x7487 PK11_DeriveWithFlags()
 17573 ms     | 0x7487 basekey:0x7f52dfceb600
 17573 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17573 ms     | 0x7487 ret:0x7f52dfceb780
 17573 ms     | 0x7487 PK11_DeriveWithFlags()
 17573 ms     | 0x7487 basekey:0x7f52dfceb600
 17573 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17573 ms     | 0x7487 ret:0x7f52dd864e80
 17573 ms     | 0x7487 PK11_DeriveWithFlags()
 17573 ms     | 0x7487 basekey:0x7f52dd87dc80
 17573 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17573 ms     | 0x7487 ret:0x7f52dd864d80
 17573 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17573 ms     | 0x7487 privk:0x7f52e47e8020::7f52e47e8020  30 a8 d6 db                                      0...
 17573 ms     | 0x7487 privk:0x7f52e47e8020::7f52e47e8020  e5 e5 e5 e5                                      ....
 17573 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17573 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  d0 ad d6 db                                      ....
 17574 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  e5 e5 e5 e5                                      ....
 17575 ms  0x7487 PK11_Encrypt()
 17575 ms  0x7487 symkey:0x7f52dfceb780
 17575 ms  0x7487 PK11_Encrypt()
 17575 ms  0x7487 symkey:0x7f52dfceb780
 17575 ms  0x7487 PR_Close()
 17575 ms  0x7487 fd:0x7f52e06f9e80
 17575 ms  0x7487 PK11_Encrypt()
 17575 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x752b */
 17577 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17577 ms  0x752b ret:0x0
           /* TID 0x748f */
 17577 ms  0x748f PR_Close()
 17577 ms  0x748f fd:0x7f52e03ec0a0
           /* TID 0x7487 */
 17577 ms  0x7487 SSL_AuthCertificateComplete()
 17577 ms  0x7487 fd:0x7f52e075c910
 17577 ms  0x7487 err:0x0
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52dfceb580
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52c9b3c400
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52dfceb580
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52c951f900
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52dfceb580
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52dd87dc80
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52dd87d300
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52dd864e80
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52dd87d300
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52dd87d600
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52c951f900
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52dd87d600
 17577 ms     | 0x7487 PK11_DeriveWithFlags()
 17577 ms     | 0x7487 basekey:0x7f52c951f900
 17577 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17577 ms     | 0x7487 ret:0x7f52df484180
 17578 ms     | 0x7487 PK11_DeriveWithFlags()
 17578 ms     | 0x7487 basekey:0x7f52dd87d300
 17578 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17578 ms     | 0x7487 ret:0x7f52dd87dd00
 17578 ms     | 0x7487 PK11_Encrypt()
 17578 ms     | 0x7487 symkey:0x7f52dd864e80
 17580 ms     | 0x7487 PK11_DeriveWithFlags()
 17580 ms     | 0x7487 basekey:0x7f52c9b3c400
 17580 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17580 ms     | 0x7487 ret:0x7f52dd87dd00
 17580 ms     | 0x7487 PK11_DeriveWithFlags()
 17580 ms     | 0x7487 basekey:0x7f52c9b3c400
 17580 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17580 ms     | 0x7487 ret:0x7f52df484180
 17580 ms     | 0x7487 PK11_DeriveWithFlags()
 17580 ms     | 0x7487 basekey:0x7f52dfceb580
 17580 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17580 ms     | 0x7487 ret:0x7f52dd864e80
 17580 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17580 ms     | 0x7487 privk:0x7f52e47ee820::7f52e47ee820  80 93 1a dc                                      ....
 17580 ms     | 0x7487 privk:0x7f52e47ee820::7f52e47ee820  e5 e5 e5 e5                                      ....
 17580 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17580 ms     | 0x7487 privk:0x7f52e47e8820::7f52e47e8820  d0 a3 d6 db                                      ....
 17580 ms     | 0x7487 privk:0x7f52e47e8820::7f52e47e8820  e5 e5 e5 e5                                      ....
 17585 ms  0x7487 PK11_Encrypt()
 17585 ms  0x7487 symkey:0x7f52dd87dd00
 17585 ms  0x7487 PK11_Encrypt()
 17585 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 17589 ms  0x748f PR_Close()
 17589 ms  0x748f fd:0x7f52e06f9e80
           /* TID 0x7487 */
 17589 ms  0x7487 PK11_Encrypt()
 17589 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 17608 ms  0x748f PR_Close()
 17608 ms  0x748f fd:0x7f52e03ec0a0
           /* TID 0x7527 */
 17608 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 17608 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 17608 ms  0x7487 SSL_AuthCertificateComplete()
 17608 ms  0x7487 fd:0x7f52e07fe4f0
 17608 ms  0x7487 err:0x0
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd87d580
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd864280
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd87d580
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd87d300
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd87d580
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dfceb580
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd8cd680
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52df484180
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd8cd680
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd864600
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd87d300
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd864600
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd87d300
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd863900
 17608 ms     | 0x7487 PK11_DeriveWithFlags()
 17608 ms     | 0x7487 basekey:0x7f52dd8cd680
 17608 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17608 ms     | 0x7487 ret:0x7f52dd87d500
 17608 ms     | 0x7487 PK11_Encrypt()
 17608 ms     | 0x7487 symkey:0x7f52df484180
 17609 ms     | 0x7487 PK11_DeriveWithFlags()
 17609 ms     | 0x7487 basekey:0x7f52dd864280
 17609 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17609 ms     | 0x7487 ret:0x7f52dd87d500
 17609 ms     | 0x7487 PK11_DeriveWithFlags()
 17609 ms     | 0x7487 basekey:0x7f52dd864280
 17609 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17609 ms     | 0x7487 ret:0x7f52dd863900
 17609 ms     | 0x7487 PK11_DeriveWithFlags()
 17609 ms     | 0x7487 basekey:0x7f52dd87d580
 17609 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17609 ms     | 0x7487 ret:0x7f52df484180
 17609 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17609 ms     | 0x7487 privk:0x7f52e498c020::7f52e498c020  b0 aa d6 db                                      ....
 17609 ms     | 0x7487 privk:0x7f52e498c020::7f52e498c020  e5 e5 e5 e5                                      ....
 17609 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17609 ms     | 0x7487 privk:0x7f52e47f3820::7f52e47f3820  50 9b 1a dc                                      P...
 17609 ms     | 0x7487 privk:0x7f52e47f3820::7f52e47f3820  e5 e5 e5 e5                                      ....
 17609 ms  0x7487 PK11_Encrypt()
 17609 ms  0x7487 symkey:0x7f52dd87d500
 17610 ms  0x7487 PK11_Encrypt()
 17610 ms  0x7487 symkey:0x7f52dfceb780
 17610 ms  0x7487 PK11_DeriveWithFlags()
 17610 ms  0x7487 basekey:0x7f52dd864d80
 17610 ms     | 0x7487 PK11_DeriveWithTemplate()
 17610 ms  0x7487 ret:0x7f52dd87d900
 17610 ms  0x7487 PK11_DeriveWithFlags()
 17610 ms  0x7487 basekey:0x7f52dd864d80
 17610 ms     | 0x7487 PK11_DeriveWithTemplate()
 17610 ms  0x7487 ret:0x7f52dd87d900
 17610 ms  0x7487 PK11_Encrypt()
 17610 ms  0x7487 symkey:0x7f52dfceb780
 17615 ms  0x7487 PK11_Derive()
 17615 ms  0x7487 basekey:0x7f52dd87d900
 17615 ms     | 0x7487 PK11_DeriveWithTemplate()
 17615 ms  0x7487 ret:0x7f52dd8cd680
 17615 ms  0x7487 PK11_PubDeriveWithKDF()
 17615 ms  0x7487 seckey:0x7f52e5455020
 17615 ms     | 0x7487 EC_ValidatePublicKey()
 17615 ms     | 0x7487 ret:0x0
 17615 ms  0x7487 ret:0x7f52dd87d900
 17615 ms  SECKEY_ECParamsToKeySize()
 17615 ms  0x7487 ret:0xff
 17615 ms  0x7487 PK11_DeriveWithFlags()
 17615 ms  0x7487 basekey:0x7f52dd8cd680
 17615 ms     | 0x7487 PK11_DeriveWithTemplate()
 17615 ms  0x7487 ret:0x7f52dd87d580
 17615 ms  0x7487 PK11_Derive()
 17615 ms  0x7487 basekey:0x7f52dd87d900
 17615 ms     | 0x7487 PK11_DeriveWithTemplate()
 17615 ms  0x7487 ret:0x7f52dd863900
 17615 ms  0x7487 PK11_DeriveWithFlags()
 17615 ms  0x7487 basekey:0x7f52dd863900
 17615 ms     | 0x7487 PK11_DeriveWithTemplate()
 17615 ms  0x7487 ret:0x7f52dd8cd680
 17615 ms  0x7487 PK11_DeriveWithFlags()
 17615 ms  0x7487 basekey:0x7f52dd863900
 17615 ms     | 0x7487 PK11_DeriveWithTemplate()
 17616 ms  0x7487 ret:0x7f52dd87d900
 17616 ms  0x7487 PK11_DeriveWithFlags()
 17616 ms  0x7487 basekey:0x7f52dd863900
 17616 ms     | 0x7487 PK11_DeriveWithTemplate()
 17616 ms  0x7487 ret:0x7f52dd87d580
 17616 ms  0x7487 PK11_Derive()
 17616 ms  0x7487 basekey:0x7f52c951fd00
 17616 ms     | 0x7487 PK11_DeriveWithTemplate()
 17616 ms  0x7487 ret:0x7f52dfceb480
 17616 ms  0x7487 PK11_DeriveWithFlags()
 17616 ms  0x7487 basekey:0x7f52dd87d900
 17616 ms     | 0x7487 PK11_DeriveWithTemplate()
 17616 ms  0x7487 ret:0x7f52dd863900
 17616 ms  0x7487 PK11_DeriveWithFlags()
 17616 ms  0x7487 basekey:0x7f52dd87d900
 17616 ms     | 0x7487 PK11_DeriveWithTemplate()
 17616 ms  0x7487 ret:0x7f52dd87d580
 17617 ms  0x7487 PK11_DeriveWithFlags()
 17617 ms  0x7487 basekey:0x7f52dd87d900
 17617 ms     | 0x7487 PK11_DeriveWithTemplate()
 17617 ms  0x7487 ret:0x7f52dd87d580
 17617 ms  0x7487 SSL_AuthCertificateComplete()
 17617 ms  0x7487 fd:0x7f52e0c4ac40
 17617 ms  0x7487 err:0x0
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dfceb480
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd87d580
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dfceb480
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52c951fd00
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dfceb480
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dfceb500
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dd8cd680
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd8cd500
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dd8cd680
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd864880
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52c951fd00
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd864880
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52c951fd00
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52df484500
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dd8cd680
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd863900
 17617 ms     | 0x7487 PK11_Encrypt()
 17617 ms     | 0x7487 symkey:0x7f52dd8cd500
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dd87d580
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd863900
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dd87d580
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52df484500
 17617 ms     | 0x7487 PK11_DeriveWithFlags()
 17617 ms     | 0x7487 basekey:0x7f52dfceb480
 17617 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17617 ms     | 0x7487 ret:0x7f52dd8cd500
 17617 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17617 ms     | 0x7487 privk:0x7f52e5464820::7f52e5464820  30 33 45 df                                      03E.
 17618 ms     | 0x7487 privk:0x7f52e5464820::7f52e5464820  e5 e5 e5 e5                                      ....
 17618 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17618 ms     | 0x7487 privk:0x7f52e5455020::7f52e5455020  80 bd 86 dd                                      ....
 17618 ms     | 0x7487 privk:0x7f52e5455020::7f52e5455020  e5 e5 e5 e5                                      ....
 17622 ms  0x7487 PK11_DeriveWithFlags()
 17622 ms  0x7487 basekey:0x7f52dd864e80
 17622 ms     | 0x7487 PK11_DeriveWithTemplate()
 17622 ms  0x7487 ret:0x7f52dd87d900
 17622 ms  0x7487 PK11_DeriveWithFlags()
 17622 ms  0x7487 basekey:0x7f52dd864e80
 17623 ms     | 0x7487 PK11_DeriveWithTemplate()
 17623 ms  0x7487 ret:0x7f52dd87d900
 17624 ms  0x7487 PK11_Encrypt()
 17624 ms  0x7487 symkey:0x7f52dd863900
 17631 ms  0x7487 PR_Close()
 17631 ms  0x7487 fd:0x7f52e075c910
 17631 ms     | 0x7487 PK11_Encrypt()
 17631 ms     | 0x7487 symkey:0x7f52dd87dd00
 17633 ms  0x7487 PK11_Encrypt()
 17633 ms  0x7487 symkey:0x7f52dfceb780
 17637 ms  0x7487 PK11_Derive()
 17637 ms  0x7487 basekey:0x7f52dd87dc80
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52c951f900
 17637 ms  0x7487 PK11_PubDeriveWithKDF()
 17637 ms  0x7487 seckey:0x7f52e5469020
 17637 ms     | 0x7487 EC_ValidatePublicKey()
 17637 ms     | 0x7487 ret:0x0
 17637 ms  0x7487 ret:0x7f52dd87dc80
 17637 ms  SECKEY_ECParamsToKeySize()
 17637 ms  0x7487 ret:0xff
 17637 ms  0x7487 PK11_DeriveWithFlags()
 17637 ms  0x7487 basekey:0x7f52c951f900
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52c9b3c400
 17637 ms  0x7487 PK11_Derive()
 17637 ms  0x7487 basekey:0x7f52dd87dc80
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52dd864e80
 17637 ms  0x7487 PK11_DeriveWithFlags()
 17637 ms  0x7487 basekey:0x7f52dd864e80
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52c951f900
 17637 ms  0x7487 PK11_DeriveWithFlags()
 17637 ms  0x7487 basekey:0x7f52dd864e80
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52dd87dc80
 17637 ms  0x7487 PK11_DeriveWithFlags()
 17637 ms  0x7487 basekey:0x7f52dd864e80
 17637 ms     | 0x7487 PK11_DeriveWithTemplate()
 17637 ms  0x7487 ret:0x7f52c9b3c400
 17638 ms  0x7487 PK11_Derive()
 17638 ms  0x7487 basekey:0x7f52dd87d600
 17638 ms     | 0x7487 PK11_DeriveWithTemplate()
 17638 ms  0x7487 ret:0x7f52dd87dd00
 17638 ms  0x7487 PK11_DeriveWithFlags()
 17638 ms  0x7487 basekey:0x7f52dd87dc80
 17638 ms     | 0x7487 PK11_DeriveWithTemplate()
 17638 ms  0x7487 ret:0x7f52dd864e80
 17638 ms  0x7487 PK11_DeriveWithFlags()
 17638 ms  0x7487 basekey:0x7f52dd87dc80
 17638 ms     | 0x7487 PK11_DeriveWithTemplate()
 17638 ms  0x7487 ret:0x7f52c9b3c400
 17638 ms  0x7487 PK11_DeriveWithFlags()
 17638 ms  0x7487 basekey:0x7f52dd87dc80
 17638 ms     | 0x7487 PK11_DeriveWithTemplate()
 17639 ms  0x7487 ret:0x7f52c9b3c400
 17639 ms  0x7487 SSL_AuthCertificateComplete()
 17639 ms  0x7487 fd:0x7f52e075cc40
 17639 ms  0x7487 err:0x0
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87dd00
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52c9b3c400
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87dd00
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd87d600
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87dd00
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd87d900
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52c951f900
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd8cd680
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52c951f900
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dfceb480
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87d600
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dfceb480
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87d600
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52df484500
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52c951f900
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd864e80
 17639 ms     | 0x7487 PK11_Encrypt()
 17639 ms     | 0x7487 symkey:0x7f52dd8cd680
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52c9b3c400
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd864e80
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52c9b3c400
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52df484500
 17639 ms     | 0x7487 PK11_DeriveWithFlags()
 17639 ms     | 0x7487 basekey:0x7f52dd87dd00
 17639 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 17639 ms     | 0x7487 ret:0x7f52dd8cd680
 17639 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17639 ms     | 0x7487 privk:0x7f52e578b820::7f52e578b820  50 6b c7 df                                      Pk..
 17640 ms     | 0x7487 privk:0x7f52e578b820::7f52e578b820  e5 e5 e5 e5                                      ....
 17640 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 17640 ms     | 0x7487 privk:0x7f52e5469020::7f52e5469020  e0 5c 48 df                                      .\H.
 17640 ms     | 0x7487 privk:0x7f52e5469020::7f52e5469020  e5 e5 e5 e5                                      ....
 17640 ms  0x7487 PK11_Encrypt()
 17640 ms  0x7487 symkey:0x7f52dd864e80
 17640 ms  0x7487 PK11_Encrypt()
 17640 ms  0x7487 symkey:0x7f52dfceb780
 17645 ms  0x7487 PK11_Encrypt()
 17645 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 17646 ms  0x748f PR_Close()
 17646 ms  0x748f fd:0x7f52e075c940
           /* TID 0x7487 */
 17647 ms  0x7487 PK11_DeriveWithFlags()
 17647 ms  0x7487 basekey:0x7f52df484180
 17647 ms     | 0x7487 PK11_DeriveWithTemplate()
 17647 ms  0x7487 ret:0x7f52dd87dc80
 17647 ms  0x7487 PK11_DeriveWithFlags()
 17647 ms  0x7487 basekey:0x7f52df484180
 17647 ms     | 0x7487 PK11_DeriveWithTemplate()
 17647 ms  0x7487 ret:0x7f52dd87dc80
 17647 ms  0x7487 PR_Close()
 17647 ms  0x7487 fd:0x7f52e07fe4f0
 17647 ms     | 0x7487 PK11_Encrypt()
 17647 ms     | 0x7487 symkey:0x7f52dd87d500
           /* TID 0x748f */
 17650 ms  0x748f PR_Close()
 17650 ms  0x748f fd:0x7f52e034b640
           /* TID 0x7487 */
 17650 ms  0x7487 PK11_Encrypt()
 17650 ms  0x7487 symkey:0x7f52dfceb780
 17655 ms  0x7487 PK11_DeriveWithFlags()
 17655 ms  0x7487 basekey:0x7f52dd8cd500
 17655 ms     | 0x7487 PK11_DeriveWithTemplate()
 17655 ms  0x7487 ret:0x7f52dfceb580
 17655 ms  0x7487 PK11_DeriveWithFlags()
 17655 ms  0x7487 basekey:0x7f52dd8cd500
 17655 ms     | 0x7487 PK11_DeriveWithTemplate()
 17655 ms  0x7487 ret:0x7f52dfceb580
 17655 ms  0x7487 PR_Close()
 17655 ms  0x7487 fd:0x7f52e0c4ac40
 17655 ms     | 0x7487 PK11_Encrypt()
 17655 ms     | 0x7487 symkey:0x7f52dd863900
 17665 ms  0x7487 PK11_Encrypt()
 17665 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 17666 ms  0x748f PR_Close()
 17666 ms  0x748f fd:0x7f52c9b7f460
           /* TID 0x7487 */
 17667 ms  0x7487 PK11_Encrypt()
 17667 ms  0x7487 symkey:0x7f52dfceb780
 17677 ms  0x7487 PK11_DeriveWithFlags()
 17677 ms  0x7487 basekey:0x7f52dd8cd680
 17677 ms     | 0x7487 PK11_DeriveWithTemplate()
 17677 ms  0x7487 ret:0x7f52dfceb500
 17677 ms  0x7487 PK11_DeriveWithFlags()
 17677 ms  0x7487 basekey:0x7f52dd8cd680
 17677 ms     | 0x7487 PK11_DeriveWithTemplate()
 17677 ms  0x7487 ret:0x7f52dfceb500
 17677 ms  0x7487 PR_Close()
 17677 ms  0x7487 fd:0x7f52e075cc40
 17677 ms     | 0x7487 PK11_Encrypt()
 17677 ms     | 0x7487 symkey:0x7f52dd864e80
 17746 ms  0x7487 PK11_Encrypt()
 17746 ms  0x7487 symkey:0x7f52dfceb780
 17747 ms  0x7487 PK11_Encrypt()
 17747 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 17758 ms  0x748f PR_Close()
 17758 ms  0x748f fd:0x7f52e06247c0
           /* TID 0x7487 */
 17768 ms  0x7487 SSL_ImportFD()
 17768 ms  0x7487 ret:0x7f52e075c970
 17768 ms  0x7487 SSL_AuthCertificateHook()
 17768 ms  0x7487 fd:0x7f52e075c970
 17768 ms  0x7487 ret:0x0
 17768 ms  0x7487 PR_Connect()
 17768 ms  0x7487 fd:0x7f52e075c970
 17769 ms  0x7487 SSL_ImportFD()
 17769 ms  0x7487 ret:0x7f52e06f9970
 17769 ms  0x7487 SSL_AuthCertificateHook()
 17769 ms  0x7487 fd:0x7f52e06f9970
 17769 ms  0x7487 ret:0x0
 17769 ms  0x7487 PR_Connect()
 17769 ms  0x7487 fd:0x7f52e06f9970
 17769 ms  0x7487 SSL_ImportFD()
 17769 ms  0x7487 ret:0x7f52e075cc40
 17769 ms  0x7487 SSL_AuthCertificateHook()
 17769 ms  0x7487 fd:0x7f52e075cc40
 17769 ms  0x7487 ret:0x0
 17769 ms  0x7487 PR_Connect()
 17769 ms  0x7487 fd:0x7f52e075cc40
           /* TID 0x748f */
 17780 ms  0x748f PR_Close()
 17780 ms  0x748f fd:0x7f52e034bb80
 17799 ms  0x748f PR_Close()
 17799 ms  0x748f fd:0x7f52e06247c0
           /* TID 0x7487 */
 17807 ms  0x7487 SECKEY_CreateECPrivateKey()
 17807 ms  0x7487 cx:0x7f52db5d4608
 17808 ms     | 0x7487 EC_ValidatePublicKey()
 17808 ms     | 0x7487 ret:0x0
 17808 ms  0x7487 ret:0x7f52e47e0820::7f52e47e0820  d0 a8 d6 db                                      ....
 17808 ms  0x7487 SECKEY_CreateECPrivateKey()
 17808 ms  0x7487 cx:0x7f52db5d4608
 17808 ms     | 0x7487 EC_ValidatePublicKey()
 17810 ms     | 0x7487 ret:0x0
 17810 ms  0x7487 ret:0x7f52e47e4820::7f52e47e4820  00 a1 d6 db                                      ....
 17821 ms  0x7487 PK11_Encrypt()
 17821 ms  0x7487 symkey:0x7f52dfceb780
 17822 ms  0x7487 SECKEY_CreateECPrivateKey()
 17822 ms  0x7487 cx:0x7f52db5d4fc8
 17822 ms     | 0x7487 EC_ValidatePublicKey()
 17822 ms     | 0x7487 ret:0x0
 17822 ms  0x7487 ret:0x7f52e47e8820::7f52e47e8820  f0 ab d6 db                                      ....
 17822 ms  0x7487 SECKEY_CreateECPrivateKey()
 17822 ms  0x7487 cx:0x7f52db5d4fc8
 17823 ms     | 0x7487 EC_ValidatePublicKey()
 17824 ms     | 0x7487 ret:0x0
 17824 ms  0x7487 ret:0x7f52e47ee820::7f52e47ee820  20 ae d6 db                                       ...
           /* TID 0x748f */
 17826 ms  0x748f PR_Close()
 17826 ms  0x748f fd:0x7f52e034beb0
           /* TID 0x7487 */
 17830 ms  0x7487 SECKEY_CreateECPrivateKey()
 17830 ms  0x7487 cx:0x7f52db5d54a8
 17831 ms     | 0x7487 EC_ValidatePublicKey()
 17831 ms     | 0x7487 ret:0x0
 17831 ms  0x7487 ret:0x7f52e47f4820::7f52e47f4820  40 a2 d6 db                                      @...
 17831 ms  0x7487 SECKEY_CreateECPrivateKey()
 17831 ms  0x7487 cx:0x7f52db5d54a8
 17833 ms     | 0x7487 EC_ValidatePublicKey()
 17838 ms     | 0x7487 ret:0x0
 17838 ms  0x7487 ret:0x7f52e498c820::7f52e498c820  70 ae d6 db                                      p...
           /* TID 0x748f */
 17849 ms  0x748f PR_Close()
 17849 ms  0x748f fd:0x7f52e034beb0
           /* TID 0x7487 */
 17872 ms  0x7487 PK11_Encrypt()
 17872 ms  0x7487 symkey:0x7f52db843600
 17941 ms  0x7487 PK11_Encrypt()
 17941 ms  0x7487 symkey:0x7f52c98b6600
 17953 ms  0x7487 PK11_Encrypt()
 17953 ms  0x7487 symkey:0x7f52db843600
 17968 ms  0x7487 SSL_ImportFD()
 17968 ms  0x7487 ret:0x7f52e0c4af40
 17968 ms  0x7487 SSL_AuthCertificateHook()
 17968 ms  0x7487 fd:0x7f52e0c4af40
 17968 ms  0x7487 ret:0x0
 17968 ms  0x7487 PR_Connect()
 17968 ms  0x7487 fd:0x7f52e0c4af40
           /* TID 0x748f */
 17980 ms  0x748f PR_Close()
 17980 ms  0x748f fd:0x7f52e0c4a7f0
           /* TID 0x7487 */
 17982 ms  0x7487 SSL_ImportFD()
 17982 ms  0x7487 ret:0x7f52e0c73700
 17982 ms  0x7487 SSL_AuthCertificateHook()
 17982 ms  0x7487 fd:0x7f52e0c73700
 17982 ms  0x7487 ret:0x0
 17982 ms  0x7487 PR_Connect()
 17982 ms  0x7487 fd:0x7f52e0c73700
 17993 ms  0x7487 SECKEY_CreateECPrivateKey()
 17993 ms  0x7487 cx:0x7f52db5d5308
 17994 ms     | 0x7487 EC_ValidatePublicKey()
 17994 ms     | 0x7487 ret:0x0
 17994 ms  0x7487 ret:0x7f52e5450020::7f52e5450020  80 bd 86 dd                                      ....
 17994 ms  0x7487 SECKEY_CreateECPrivateKey()
 17994 ms  0x7487 cx:0x7f52db5d5308
 17995 ms     | 0x7487 EC_ValidatePublicKey()
 17996 ms     | 0x7487 ret:0x0
 17996 ms  0x7487 ret:0x7f52e5462020::7f52e5462020  20 b4 87 dd                                       ...
 18006 ms  0x7487 SSL_ImportFD()
 18006 ms  0x7487 ret:0x7f52e0cbc6a0
 18006 ms  0x7487 SSL_AuthCertificateHook()
 18006 ms  0x7487 fd:0x7f52e0cbc6a0
 18006 ms  0x7487 ret:0x0
 18007 ms  0x7487 PK11_Encrypt()
 18007 ms  0x7487 symkey:0x7f52c98b6800
 18007 ms  0x7487 PR_Connect()
 18007 ms  0x7487 fd:0x7f52e0cbc6a0
 18007 ms  0x7487 SSL_ImportFD()
 18007 ms  0x7487 ret:0x7f52e0cbc640
 18007 ms  0x7487 SSL_AuthCertificateHook()
 18007 ms  0x7487 fd:0x7f52e0cbc640
 18007 ms  0x7487 ret:0x0
 18007 ms  0x7487 PR_Connect()
 18007 ms  0x7487 fd:0x7f52e0cbc640
           /* TID 0x748f */
 18012 ms  0x748f PR_Close()
 18012 ms  0x748f fd:0x7f52e0c4a280
 18013 ms  0x748f PR_Close()
 18013 ms  0x748f fd:0x7f52e0c836a0
 18015 ms  0x748f PR_Close()
 18015 ms  0x748f fd:0x7f52e0c836a0
           /* TID 0x7487 */
 18024 ms  SECKEY_ECParamsToKeySize()
 18024 ms  0x7487 ret:0xff
 18024 ms  0x7487 SECKEY_CreateECPrivateKey()
 18024 ms  0x7487 cx:0x7f52db5d5308
 18025 ms     | 0x7487 EC_ValidatePublicKey()
 18025 ms     | 0x7487 ret:0x0
 18025 ms  0x7487 ret:0x7f52e8664020::7f52e8664020  40 32 45 df                                      @2E.
 18025 ms  0x7487 PK11_PubDeriveWithKDF()
 18025 ms  0x7487 seckey:0x7f52e8664020
 18025 ms     | 0x7487 EC_ValidatePublicKey()
 18025 ms     | 0x7487 ret:0x0
 18025 ms  0x7487 ret:0x7f52dd87d900
 18025 ms  0x7487 PK11_DeriveWithFlags()
 18025 ms  0x7487 basekey:0x7f52dd87d900
 18026 ms     | 0x7487 PK11_DeriveWithTemplate()
 18026 ms  0x7487 ret:0x7f52dd87d600
 18026 ms  0x7487 PK11_Derive()
 18026 ms  0x7487 basekey:0x7f52dd87d600
 18026 ms     | 0x7487 PK11_DeriveWithTemplate()
 18026 ms  0x7487 ret:0x7f52c9b3c400
 18026 ms  0x7487 SECKEY_DestroyPrivateKey()
 18026 ms  0x7487 privk:0x7f52e8664020::7f52e8664020  40 32 45 df                                      @2E.
 18026 ms  0x7487 privk:0x7f52e8664020::7f52e8664020  e5 e5 e5 e5                                      ....
 18026 ms  0x7487 PK11_Encrypt()
 18026 ms  0x7487 symkey:0x7f52e0942600
           /* TID 0x752b */
 18027 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18027 ms  0x752b ret:0x0
 18027 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18027 ms  0x752b ret:0x0
           /* TID 0x7487 */
 18044 ms  0x7487 SECKEY_CreateECPrivateKey()
 18044 ms  0x7487 cx:0x7f52db5d5cc8
 18045 ms     | 0x7487 EC_ValidatePublicKey()
 18045 ms     | 0x7487 ret:0x0
 18045 ms  0x7487 ret:0x7f52e867a020::7f52e867a020  60 6a c7 df                                      `j..
 18045 ms  0x7487 SECKEY_CreateECPrivateKey()
 18045 ms  0x7487 cx:0x7f52db5d5cc8
 18048 ms     | 0x7487 EC_ValidatePublicKey()
 18049 ms     | 0x7487 ret:0x0
 18049 ms  0x7487 ret:0x7f52ea40c820::7f52ea40c820  e0 6c c7 df                                      .l..
 18056 ms  0x7487 SECKEY_CreateECPrivateKey()
 18056 ms  0x7487 cx:0x7f52e033ecc8
 18056 ms     | 0x7487 EC_ValidatePublicKey()
 18056 ms     | 0x7487 ret:0x0
 18056 ms  0x7487 ret:0x7f52ea413020::7f52ea413020  20 6e c7 df                                       n..
 18056 ms  0x7487 SECKEY_CreateECPrivateKey()
 18056 ms  0x7487 cx:0x7f52e033ecc8
 18057 ms     | 0x7487 EC_ValidatePublicKey()
 18058 ms     | 0x7487 ret:0x0
 18058 ms  0x7487 ret:0x7f5302a74820::7f5302a74820  f0 d1 34 e0                                      ..4.
 18059 ms  0x7487 SECKEY_CreateECPrivateKey()
 18059 ms  0x7487 cx:0x7f52db5d5b28
 18059 ms     | 0x7487 EC_ValidatePublicKey()
 18059 ms     | 0x7487 ret:0x0
 18059 ms  0x7487 ret:0x7f52c9269020::7f52c9269020  90 12 62 e0                                      ..b.
 18059 ms  0x7487 SECKEY_CreateECPrivateKey()
 18059 ms  0x7487 cx:0x7f52db5d5b28
 18060 ms     | 0x7487 EC_ValidatePublicKey()
 18061 ms     | 0x7487 ret:0x0
 18061 ms  0x7487 ret:0x7f52c926b020::7f52c926b020  10 0f 6c e0                                      ..l.
 18063 ms  0x7487 SSL_AuthCertificateComplete()
 18063 ms  0x7487 fd:0x7f52e0c4af40
 18063 ms  0x7487 err:0x0
 18063 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 18063 ms     | 0x7487 privk:0x7f52e5462020::7f52e5462020  20 b4 87 dd                                       ...
 18063 ms     | 0x7487 privk:0x7f52e5462020::7f52e5462020  e5 e5 e5 e5                                      ....
 18063 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 18063 ms     | 0x7487 privk:0x7f52e5450020::7f52e5450020  80 bd 86 dd                                      ....
 18063 ms     | 0x7487 privk:0x7f52e5450020::7f52e5450020  e5 e5 e5 e5                                      ....
 18063 ms  0x7487 PK11_Encrypt()
 18063 ms  0x7487 symkey:0x7f52e0942600
 18064 ms  0x7487 SECKEY_CreateECPrivateKey()
 18064 ms  0x7487 cx:0x7f52db5d4c88
 18064 ms     | 0x7487 EC_ValidatePublicKey()
 18064 ms     | 0x7487 ret:0x0
 18064 ms  0x7487 ret:0x7f52c926e020::7f52c926e020  80 bd 86 dd                                      ....
 18064 ms  0x7487 SECKEY_CreateECPrivateKey()
 18064 ms  0x7487 cx:0x7f52db5d4c88
 18065 ms     | 0x7487 EC_ValidatePublicKey()
 18066 ms     | 0x7487 ret:0x0
 18066 ms  0x7487 ret:0x7f52c9270020::7f52c9270020  20 b4 87 dd                                       ...
 18076 ms  0x7487 SECKEY_CreateECPrivateKey()
 18076 ms  0x7487 cx:0x7f52db5d4948
 18078 ms     | 0x7487 EC_ValidatePublicKey()
 18078 ms     | 0x7487 ret:0x0
 18078 ms  0x7487 ret:0x7f52c9272820::7f52c9272820  70 34 45 df                                      p4E.
 18078 ms  0x7487 SECKEY_CreateECPrivateKey()
 18078 ms  0x7487 cx:0x7f52db5d4948
 18079 ms     | 0x7487 EC_ValidatePublicKey()
 18083 ms     | 0x7487 ret:0x0
 18083 ms  0x7487 ret:0x7f52c9274820::7f52c9274820  f0 7b 6e e0                                      .{n.
 18097 ms  0x7487 SECKEY_CreateECPrivateKey()
 18097 ms  0x7487 cx:0x7f52db5d4128
 18098 ms     | 0x7487 EC_ValidatePublicKey()
 18098 ms     | 0x7487 ret:0x0
 18098 ms  0x7487 ret:0x7f52c9277020::7f52c9277020  d0 1d 71 e0                                      ..q.
 18098 ms  0x7487 SECKEY_CreateECPrivateKey()
 18098 ms  0x7487 cx:0x7f52db5d4128
 18099 ms     | 0x7487 EC_ValidatePublicKey()
 18101 ms     | 0x7487 ret:0x0
 18101 ms  0x7487 ret:0x7f52c9279020::7f52c9279020  f0 ab 71 e0                                      ..q.
           /* TID 0x748f */
 18105 ms  0x748f PR_Close()
 18105 ms  0x748f fd:0x7f52e0c4ac10
           /* TID 0x7487 */
 18107 ms  SECKEY_ECParamsToKeySize()
 18107 ms  0x7487 ret:0x100
 18107 ms  0x7487 SECKEY_CreateECPrivateKey()
 18107 ms  0x7487 cx:0x7f52db5d4608
 18108 ms     | 0x7487 EC_ValidatePublicKey()
 18109 ms     | 0x7487 ret:0x0
 18109 ms  0x7487 ret:0x7f52c9284020::7f52c9284020  10 f5 7d e0                                      ..}.
 18109 ms  0x7487 PK11_PubDeriveWithKDF()
 18109 ms  0x7487 seckey:0x7f52c9284020
 18109 ms     | 0x7487 EC_ValidatePublicKey()
 18111 ms     | 0x7487 ret:0x0
 18112 ms  0x7487 ret:0x7f52dd87d900
 18112 ms  0x7487 PK11_DeriveWithFlags()
 18112 ms  0x7487 basekey:0x7f52dd87d900
 18112 ms     | 0x7487 PK11_DeriveWithTemplate()
 18112 ms  0x7487 ret:0x7f52dd8cd680
 18112 ms  0x7487 PK11_Derive()
 18112 ms  0x7487 basekey:0x7f52dd8cd680
 18112 ms     | 0x7487 PK11_DeriveWithTemplate()
 18112 ms  0x7487 ret:0x7f52dfceb480
 18112 ms  0x7487 SECKEY_DestroyPrivateKey()
 18112 ms  0x7487 privk:0x7f52c9284020::7f52c9284020  10 f5 7d e0                                      ..}.
 18113 ms  0x7487 privk:0x7f52c9284020::7f52c9284020  e5 e5 e5 e5                                      ....
 18113 ms  0x7487 PK11_Encrypt()
 18113 ms  0x7487 symkey:0x7f52e0a69400
           /* TID 0x748f */
 18117 ms  0x748f PR_Close()
 18117 ms  0x748f fd:0x7f52df4fed00
           /* TID 0x7487 */
 18117 ms  0x7487 PK11_Derive()
 18117 ms  0x7487 basekey:0x7f52dd87d900
 18117 ms     | 0x7487 PK11_DeriveWithTemplate()
 18117 ms  0x7487 ret:0x7f52dd864e80
 18117 ms  0x7487 PK11_PubDeriveWithKDF()
 18117 ms  0x7487 seckey:0x7f52e867a020
 18117 ms     | 0x7487 EC_ValidatePublicKey()
 18117 ms     | 0x7487 ret:0x0
 18117 ms  0x7487 ret:0x7f52dd87d900
 18117 ms  SECKEY_ECParamsToKeySize()
 18117 ms  0x7487 ret:0xff
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52dd864e80
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dfceb500
 18118 ms  0x7487 PK11_Derive()
 18118 ms  0x7487 basekey:0x7f52dd87d900
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52c951fd00
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52c951fd00
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dd864e80
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52c951fd00
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dd87d900
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52c951fd00
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dfceb500
 18118 ms  0x7487 PK11_Derive()
 18118 ms  0x7487 basekey:0x7f52dd87d580
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dd8cd500
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52dd87d900
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52c951fd00
 18118 ms  0x7487 PK11_DeriveWithFlags()
 18118 ms  0x7487 basekey:0x7f52dd87d900
 18118 ms     | 0x7487 PK11_DeriveWithTemplate()
 18118 ms  0x7487 ret:0x7f52dfceb500
 18120 ms  SECKEY_ECParamsToKeySize()
 18120 ms  0x7487 ret:0x100
 18120 ms  SECKEY_ECParamsToBasePointOrderLen()
 18120 ms  0x7487 ret:0x100
 18120 ms  SECKEY_ECParamsToBasePointOrderLen()
 18120 ms  0x7487 ret:0x100
 18120 ms  0x7487 EC_ValidatePublicKey()
 18122 ms  0x7487 ret:0x0
 18123 ms  0x7487 PK11_DeriveWithFlags()
 18123 ms  0x7487 basekey:0x7f52dd87d900
 18123 ms     | 0x7487 PK11_DeriveWithTemplate()
 18123 ms  0x7487 ret:0x7f52dfceb500
 18130 ms  0x7487 SSL_AuthCertificateComplete()
 18130 ms  0x7487 fd:0x7f52e0cbc6a0
 18130 ms  0x7487 err:0x0
 18130 ms     | 0x7487 PK11_DeriveWithFlags()
 18130 ms     | 0x7487 basekey:0x7f52dd8cd500
 18130 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18130 ms     | 0x7487 ret:0x7f52dfceb500
 18130 ms     | 0x7487 PK11_DeriveWithFlags()
 18130 ms     | 0x7487 basekey:0x7f52dd8cd500
 18130 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18130 ms     | 0x7487 ret:0x7f52dd87d580
 18130 ms     | 0x7487 PK11_DeriveWithFlags()
 18130 ms     | 0x7487 basekey:0x7f52dd8cd500
 18130 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18130 ms     | 0x7487 ret:0x7f52dd864880
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd864e80
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dd863900
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd864e80
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dfceb580
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd87d580
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dfceb580
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd87d580
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dd87d300
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd864e80
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52c951fd00
 18131 ms     | 0x7487 PK11_Encrypt()
 18131 ms     | 0x7487 symkey:0x7f52dd863900
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dfceb500
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52c951fd00
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dfceb500
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dd87d300
 18131 ms     | 0x7487 PK11_DeriveWithFlags()
 18131 ms     | 0x7487 basekey:0x7f52dd8cd500
 18131 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 18131 ms     | 0x7487 ret:0x7f52dd863900
 18131 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 18131 ms     | 0x7487 privk:0x7f52ea40c820::7f52ea40c820  e0 6c c7 df                                      .l..
 18131 ms     | 0x7487 privk:0x7f52ea40c820::7f52ea40c820  e5 e5 e5 e5                                      ....
 18131 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 18131 ms     | 0x7487 privk:0x7f52e867a020::7f52e867a020  60 6a c7 df                                      `j..
 18131 ms     | 0x7487 privk:0x7f52e867a020::7f52e867a020  e5 e5 e5 e5                                      ....
 18132 ms  0x7487 PK11_Encrypt()
 18132 ms  0x7487 symkey:0x7f52c98b6800
 18132 ms  0x7487 PK11_Encrypt()
 18132 ms  0x7487 symkey:0x7f52c951fd00
 18133 ms  SECKEY_ECParamsToKeySize()
 18133 ms  0x7487 ret:0x100
 18133 ms  0x7487 SECKEY_CreateECPrivateKey()
 18133 ms  0x7487 cx:0x7f52e033ecc8
 18134 ms     | 0x7487 EC_ValidatePublicKey()
 18135 ms     | 0x7487 ret:0x0
 18135 ms  0x7487 ret:0x7f52e53b9020::7f52e53b9020  50 6b c7 df                                      Pk..
 18135 ms  0x7487 PK11_PubDeriveWithKDF()
 18135 ms  0x7487 seckey:0x7f52e53b9020
 18135 ms     | 0x7487 EC_ValidatePublicKey()
 18137 ms     | 0x7487 ret:0x0
 18142 ms  0x7487 ret:0x7f52dd87d900
 18142 ms  0x7487 PK11_DeriveWithFlags()
 18142 ms  0x7487 basekey:0x7f52dd87d900
 18142 ms     | 0x7487 PK11_DeriveWithTemplate()
 18142 ms  0x7487 ret:0x7f52dd864e80
 18142 ms  0x7487 PK11_Derive()
 18142 ms  0x7487 basekey:0x7f52dd864e80
 18142 ms     | 0x7487 PK11_DeriveWithTemplate()
 18142 ms  0x7487 ret:0x7f52dd8cd500
 18142 ms  0x7487 SECKEY_DestroyPrivateKey()
 18142 ms  0x7487 privk:0x7f52e53b9020::7f52e53b9020  50 6b c7 df                                      Pk..
 18142 ms  0x7487 privk:0x7f52e53b9020::7f52e53b9020  e5 e5 e5 e5                                      ....
 18142 ms  0x7487 PK11_Encrypt()
 18142 ms  0x7487 symkey:0x7f52e0c82400
 18143 ms  0x7487 SSL_AuthCertificateComplete()
 18143 ms  0x7487 fd:0x7f52e0cbc640
 18143 ms  0x7487 err:0x0
 18146 ms  SECKEY_ECParamsToKeySize()
 18146 ms  0x7487 ret:0x100
 18146 ms  0x7487 SECKEY_CreateECPrivateKey()
 18146 ms  0x7487 cx:0x7f52db5d4fc8
 18147 ms     | 0x7487 EC_ValidatePublicKey()
 18148 ms     | 0x7487 ret:0x0
 18148 ms  0x7487 ret:0x7f52e5464820::7f52e5464820  50 1b 7e e0                                      P.~.
 18148 ms  0x7487 PK11_PubDeriveWithKDF()
 18148 ms  0x7487 seckey:0x7f52e5464820
 18148 ms     | 0x7487 EC_ValidatePublicKey()
 18150 ms     | 0x7487 ret:0x0
 18152 ms  0x7487 ret:0x7f52dd87d900
 18152 ms  0x7487 PK11_DeriveWithFlags()
 18152 ms  0x7487 basekey:0x7f52dd87d900
 18152 ms     | 0x7487 PK11_DeriveWithTemplate()
 18152 ms  0x7487 ret:0x7f52dd87d300
 18152 ms  0x7487 PK11_Derive()
 18152 ms  0x7487 basekey:0x7f52dd87d300
 18152 ms     | 0x7487 PK11_DeriveWithTemplate()
 18152 ms  0x7487 ret:0x7f52dd864280
 18152 ms  0x7487 SECKEY_DestroyPrivateKey()
 18152 ms  0x7487 privk:0x7f52e5464820::7f52e5464820  50 1b 7e e0                                      P.~.
 18152 ms  0x7487 privk:0x7f52e5464820::7f52e5464820  e5 e5 e5 e5                                      ....
 18152 ms  0x7487 PK11_Encrypt()
 18152 ms  0x7487 symkey:0x7f52e0cb8a00
           /* TID 0x7525 */
 18153 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18153 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 18153 ms  SECKEY_ECParamsToKeySize()
 18153 ms  0x7487 ret:0x100
 18153 ms  0x7487 SECKEY_CreateECPrivateKey()
 18153 ms  0x7487 cx:0x7f52db5d5b28
 18154 ms     | 0x7487 EC_ValidatePublicKey()
 18155 ms     | 0x7487 ret:0x0
 18155 ms  0x7487 ret:0x7f52e8672020::7f52e8672020  50 61 7e e0                                      Pa~.
 18155 ms  0x7487 PK11_PubDeriveWithKDF()
 18155 ms  0x7487 seckey:0x7f52e8672020
 18155 ms     | 0x7487 EC_ValidatePublicKey()
 18162 ms     | 0x7487 ret:0x0
 18163 ms  0x7487 ret:0x7f52dd87d900
 18163 ms  0x7487 PK11_DeriveWithFlags()
 18163 ms  0x7487 basekey:0x7f52dd87d900
 18163 ms     | 0x7487 PK11_DeriveWithTemplate()
 18163 ms  0x7487 ret:0x7f52df484180
 18163 ms  0x7487 PK11_Derive()
 18163 ms  0x7487 basekey:0x7f52df484180
 18163 ms     | 0x7487 PK11_DeriveWithTemplate()
 18163 ms  0x7487 ret:0x7f52dd864600
 18163 ms  0x7487 SECKEY_DestroyPrivateKey()
 18163 ms  0x7487 privk:0x7f52e8672020::7f52e8672020  50 61 7e e0                                      Pa~.
 18163 ms  0x7487 privk:0x7f52e8672020::7f52e8672020  e5 e5 e5 e5                                      ....
 18164 ms  0x7487 PK11_Encrypt()
 18164 ms  0x7487 symkey:0x7f52e0cb8f80
 18164 ms  0x7487 PK11_Encrypt()
 18164 ms  0x7487 symkey:0x7f52e0c82400
 18165 ms  0x7487 SSL_AuthCertificateComplete()
 18165 ms  0x7487 fd:0x7f52e0c73700
 18165 ms  0x7487 err:0x0
 18166 ms  SECKEY_ECParamsToKeySize()
 18166 ms  0x7487 ret:0x100
 18166 ms  0x7487 SECKEY_CreateECPrivateKey()
 18166 ms  0x7487 cx:0x7f52db5d54a8
 18167 ms     | 0x7487 EC_ValidatePublicKey()
 18168 ms     | 0x7487 ret:0x0
 18168 ms  0x7487 ret:0x7f52ea407820::7f52ea407820  70 64 7e e0                                      pd~.
 18168 ms  0x7487 PK11_PubDeriveWithKDF()
 18168 ms  0x7487 seckey:0x7f52ea407820
 18168 ms     | 0x7487 EC_ValidatePublicKey()
 18170 ms     | 0x7487 ret:0x0
 18171 ms  0x7487 ret:0x7f52dd87d900
 18171 ms  0x7487 PK11_DeriveWithFlags()
 18171 ms  0x7487 basekey:0x7f52dd87d900
 18171 ms     | 0x7487 PK11_DeriveWithTemplate()
 18171 ms  0x7487 ret:0x7f52dd87d500
 18171 ms  0x7487 PK11_Derive()
 18171 ms  0x7487 basekey:0x7f52dd87d500
 18171 ms     | 0x7487 PK11_DeriveWithTemplate()
 18171 ms  0x7487 ret:0x7f52dd87dc80
 18171 ms  0x7487 SECKEY_DestroyPrivateKey()
 18171 ms  0x7487 privk:0x7f52ea407820::7f52ea407820  70 64 7e e0                                      pd~.
 18171 ms  0x7487 privk:0x7f52ea407820::7f52ea407820  e5 e5 e5 e5                                      ....
 18171 ms  0x7487 PK11_Encrypt()
 18171 ms  0x7487 symkey:0x7f52e0cb9580
 18172 ms  0x7487 PK11_Encrypt()
 18172 ms  0x7487 symkey:0x7f52e0cb8f80
 18172 ms  0x7487 PR_Connect()
 18172 ms  0x7487 fd:0x7f52e0d9f820
 18172 ms  0x7487 PK11_DeriveWithFlags()
 18172 ms  0x7487 basekey:0x7f52dd863900
 18172 ms     | 0x7487 PK11_DeriveWithTemplate()
 18172 ms  0x7487 ret:0x7f52dd87d900
 18172 ms  0x7487 PK11_DeriveWithFlags()
 18172 ms  0x7487 basekey:0x7f52dd863900
 18172 ms     | 0x7487 PK11_DeriveWithTemplate()
 18172 ms  0x7487 ret:0x7f52dd87d900
 18172 ms  0x7487 PR_Close()
 18172 ms  0x7487 fd:0x7f52e0cbc6a0
 18172 ms     | 0x7487 PK11_Encrypt()
 18172 ms     | 0x7487 symkey:0x7f52c951fd00
 18173 ms  0x7487 SSL_ImportFD()
 18173 ms  0x7487 ret:0x7f52e0c83850
 18173 ms  0x7487 SSL_AuthCertificateHook()
 18173 ms  0x7487 fd:0x7f52e0c83850
 18173 ms  0x7487 ret:0x0
 18173 ms  0x7487 PR_Connect()
 18173 ms  0x7487 fd:0x7f52e0c83850
 18173 ms  0x7487 PR_Connect()
 18173 ms  0x7487 fd:0x7f52e0c4ad00
 18173 ms  0x7487 PR_Connect()
 18173 ms  0x7487 fd:0x7f52e0d9fc70
 18191 ms  0x7487 SECKEY_DestroyPrivateKey()
 18191 ms  0x7487 privk:0x7f5302a74820::7f5302a74820  f0 d1 34 e0                                      ..4.
 18191 ms  0x7487 privk:0x7f5302a74820::7f5302a74820  e5 e5 e5 e5                                      ....
 18191 ms  0x7487 SECKEY_DestroyPrivateKey()
 18191 ms  0x7487 privk:0x7f52ea413020::7f52ea413020  20 6e c7 df                                       n..
 18191 ms  0x7487 privk:0x7f52ea413020::7f52ea413020  e5 e5 e5 e5                                      ....
 18216 ms  0x7487 SECKEY_CreateECPrivateKey()
 18216 ms  0x7487 cx:0x7f52c92868c8
 18217 ms     | 0x7487 EC_ValidatePublicKey()
 18217 ms     | 0x7487 ret:0x0
 18217 ms  0x7487 ret:0x7f52c9620020::7f52c9620020  d0 6d c7 df                                      .m..
 18217 ms  0x7487 SECKEY_CreateECPrivateKey()
 18217 ms  0x7487 cx:0x7f52c92868c8
 18218 ms     | 0x7487 EC_ValidatePublicKey()
 18219 ms     | 0x7487 ret:0x0
 18219 ms  0x7487 ret:0x7f52e867a020::7f52e867a020  b0 6f c7 df                                      .o..
           /* TID 0x7527 */
 18225 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18225 ms  0x7527 ret:0x0
           /* TID 0x748f */
 18226 ms  0x748f PR_Close()
 18226 ms  0x748f fd:0x7f52e0aac4c0
           /* TID 0x752b */
 18227 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18227 ms  0x752b ret:0x0
           /* TID 0x748f */
 18227 ms  0x748f PR_Close()
 18227 ms  0x748f fd:0x7f52e0aac4c0
           /* TID 0x7487 */
 18237 ms  0x7487 SECKEY_DestroyPrivateKey()
 18237 ms  0x7487 privk:0x7f52c926b020::7f52c926b020  10 0f 6c e0                                      ..l.
 18237 ms  0x7487 privk:0x7f52c926b020::7f52c926b020  e5 e5 e5 e5                                      ....
 18237 ms  0x7487 SECKEY_DestroyPrivateKey()
 18237 ms  0x7487 privk:0x7f52c9269020::7f52c9269020  90 12 62 e0                                      ..b.
 18237 ms  0x7487 privk:0x7f52c9269020::7f52c9269020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 18240 ms  0x748f PR_Close()
 18240 ms  0x748f fd:0x7f52e0aac4c0
           /* TID 0x7487 */
 18251 ms  0x7487 SSL_ImportFD()
 18251 ms  0x7487 ret:0x7f52e0de4a30
 18251 ms  0x7487 SSL_AuthCertificateHook()
 18251 ms  0x7487 fd:0x7f52e0de4a30
 18251 ms  0x7487 ret:0x0
 18251 ms  0x7487 PR_Connect()
 18251 ms  0x7487 fd:0x7f52e0de4a30
           /* TID 0x748f */
 18257 ms  0x748f PR_Close()
 18257 ms  0x748f fd:0x7f52e0c83220
           /* TID 0x74e3 */
 18257 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18257 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 18261 ms  SECKEY_ECParamsToKeySize()
 18261 ms  0x7487 ret:0x100
 18261 ms  SECKEY_ECParamsToBasePointOrderLen()
 18261 ms  0x7487 ret:0x100
 18261 ms  SECKEY_ECParamsToBasePointOrderLen()
 18261 ms  0x7487 ret:0x100
 18261 ms  0x7487 EC_ValidatePublicKey()
 18262 ms  0x7487 ret:0x0
 18264 ms  SECKEY_ECParamsToKeySize()
 18264 ms  0x7487 ret:0x100
 18264 ms  0x7487 SECKEY_CreateECPrivateKey()
 18264 ms  0x7487 cx:0x7f52c92868c8
 18265 ms     | 0x7487 EC_ValidatePublicKey()
 18266 ms     | 0x7487 ret:0x0
 18266 ms  0x7487 ret:0x7f5302a73820::7f5302a73820  e0 62 7e e0                                      .b~.
 18287 ms  0x7487 PK11_PubDeriveWithKDF()
 18287 ms  0x7487 seckey:0x7f5302a73820
 18287 ms     | 0x7487 EC_ValidatePublicKey()
 18288 ms     | 0x7487 ret:0x0
 18289 ms  0x7487 ret:0x7f52dd864880
 18289 ms  0x7487 PK11_DeriveWithFlags()
 18289 ms  0x7487 basekey:0x7f52dd864880
 18289 ms     | 0x7487 PK11_DeriveWithTemplate()
 18290 ms  0x7487 ret:0x7f52dd87d580
 18290 ms  0x7487 PK11_Derive()
 18290 ms  0x7487 basekey:0x7f52dd87d580
 18290 ms     | 0x7487 PK11_DeriveWithTemplate()
 18290 ms  0x7487 ret:0x7f52dfceb500
 18290 ms  0x7487 SECKEY_DestroyPrivateKey()
 18290 ms  0x7487 privk:0x7f5302a73820::7f5302a73820  e0 62 7e e0                                      .b~.
 18290 ms  0x7487 privk:0x7f5302a73820::7f5302a73820  e5 e5 e5 e5                                      ....
 18290 ms  0x7487 PK11_Encrypt()
 18290 ms  0x7487 symkey:0x7f52e540b880
 18301 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0ee93a0
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0ee93a0
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0ee93a0
 18302 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0e1c280
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0e1c280
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0e1c280
 18302 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0ee93d0
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0ee93d0
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0ee93d0
 18302 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0ee9400
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0ee9400
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0ee9400
 18302 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0e33f70
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0e33f70
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0e33f70
 18302 ms  0x7487 SSL_ImportFD()
 18302 ms  0x7487 ret:0x7f52e0e33fd0
 18302 ms  0x7487 SSL_AuthCertificateHook()
 18302 ms  0x7487 fd:0x7f52e0e33fd0
 18302 ms  0x7487 ret:0x0
 18302 ms  0x7487 PR_Connect()
 18302 ms  0x7487 fd:0x7f52e0e33fd0
 18303 ms  0x7487 SSL_ImportFD()
 18303 ms  0x7487 ret:0x7f52e0e33ca0
 18303 ms  0x7487 SSL_AuthCertificateHook()
 18303 ms  0x7487 fd:0x7f52e0e33ca0
 18303 ms  0x7487 ret:0x0
 18303 ms  0x7487 PR_Connect()
 18303 ms  0x7487 fd:0x7f52e0e33ca0
 18303 ms  0x7487 SSL_ImportFD()
 18303 ms  0x7487 ret:0x7f52e0ee92e0
 18303 ms  0x7487 SSL_AuthCertificateHook()
 18303 ms  0x7487 fd:0x7f52e0ee92e0
 18303 ms  0x7487 ret:0x0
 18303 ms  0x7487 PR_Connect()
 18303 ms  0x7487 fd:0x7f52e0ee92e0
 18308 ms  0x7487 SSL_ImportFD()
 18308 ms  0x7487 ret:0x7f52e0dff430
 18308 ms  0x7487 SSL_AuthCertificateHook()
 18308 ms  0x7487 fd:0x7f52e0dff430
 18308 ms  0x7487 ret:0x0
 18308 ms  0x7487 PR_Connect()
 18308 ms  0x7487 fd:0x7f52e0dff430
 18308 ms  0x7487 SECKEY_CreateECPrivateKey()
 18308 ms  0x7487 cx:0x7f52c92870e8
 18308 ms     | 0x7487 EC_ValidatePublicKey()
 18308 ms     | 0x7487 ret:0x0
 18308 ms  0x7487 ret:0x7f52c92d4820::7f52c92d4820  a0 0b 9f e0                                      ....
 18309 ms  0x7487 SECKEY_CreateECPrivateKey()
 18309 ms  0x7487 cx:0x7f52c92870e8
 18314 ms     | 0x7487 EC_ValidatePublicKey()
 18316 ms     | 0x7487 ret:0x0
 18316 ms  0x7487 ret:0x7f52c92d7020::7f52c92d7020  b0 20 91 e0                                      . ..
 18326 ms  0x7487 PK11_Encrypt()
 18326 ms  0x7487 symkey:0x7f52db51f080
 18326 ms  0x7487 PK11_Encrypt()
 18326 ms  0x7487 symkey:0x7f52db51f080
 18327 ms  0x7487 PK11_Encrypt()
 18327 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 18328 ms  0x748f PR_Close()
 18328 ms  0x748f fd:0x7f52e0c73850
           /* TID 0x7487 */
 18329 ms  0x7487 SSL_ImportFD()
 18329 ms  0x7487 ret:0x7f52e0c738b0
 18329 ms  0x7487 SSL_AuthCertificateHook()
 18329 ms  0x7487 fd:0x7f52e0c738b0
 18329 ms  0x7487 ret:0x0
 18329 ms  0x7487 PR_Connect()
 18329 ms  0x7487 fd:0x7f52e0c738b0
 18340 ms  0x7487 SECKEY_CreateECPrivateKey()
 18340 ms  0x7487 cx:0x7f52c9287768
 18341 ms     | 0x7487 EC_ValidatePublicKey()
 18341 ms     | 0x7487 ret:0x0
 18341 ms  0x7487 ret:0x7f52c92db020::7f52c92db020  90 2c 91 e0                                      .,..
 18341 ms  0x7487 SECKEY_CreateECPrivateKey()
 18341 ms  0x7487 cx:0x7f52c9287768
 18341 ms     | 0x7487 EC_ValidatePublicKey()
 18343 ms     | 0x7487 ret:0x0
 18343 ms  0x7487 ret:0x7f52c92dd020::7f52c92dd020  20 f4 94 e0                                       ...
 18350 ms  0x7487 SECKEY_CreateECPrivateKey()
 18350 ms  0x7487 cx:0x7f52c9287f88
 18350 ms     | 0x7487 EC_ValidatePublicKey()
 18350 ms     | 0x7487 ret:0x0
 18350 ms  0x7487 ret:0x7f52c92df820::7f52c92df820  e0 0c 9f e0                                      ....
 18350 ms  0x7487 SECKEY_CreateECPrivateKey()
 18350 ms  0x7487 cx:0x7f52c9287f88
 18351 ms     | 0x7487 EC_ValidatePublicKey()
 18352 ms     | 0x7487 ret:0x0
 18352 ms  0x7487 ret:0x7f52c92e1820::7f52c92e1820  10 0f 9f e0                                      ....
 18355 ms  0x7487 SECKEY_CreateECPrivateKey()
 18355 ms  0x7487 cx:0x7f52c9287de8
 18356 ms     | 0x7487 EC_ValidatePublicKey()
 18356 ms     | 0x7487 ret:0x0
 18356 ms  0x7487 ret:0x7f52c92e5020::7f52c92e5020  10 55 a1 e0                                      .U..
 18356 ms  0x7487 SECKEY_CreateECPrivateKey()
 18356 ms  0x7487 cx:0x7f52c9287de8
 18356 ms     | 0x7487 EC_ValidatePublicKey()
 18362 ms     | 0x7487 ret:0x0
 18362 ms  0x7487 ret:0x7f52c92e6820::7f52c92e6820  60 45 af e0                                      `E..
 18363 ms  0x7487 SECKEY_CreateECPrivateKey()
 18363 ms  0x7487 cx:0x7f52c92882c8
 18364 ms     | 0x7487 EC_ValidatePublicKey()
 18364 ms     | 0x7487 ret:0x0
 18364 ms  0x7487 ret:0x7f52c92e9020::7f52c92e9020  f0 8b c2 e0                                      ....
 18364 ms  0x7487 SECKEY_CreateECPrivateKey()
 18364 ms  0x7487 cx:0x7f52c92882c8
 18364 ms     | 0x7487 EC_ValidatePublicKey()
 18368 ms     | 0x7487 ret:0x0
 18368 ms  0x7487 ret:0x7f52c92eb020::7f52c92eb020  d0 8d c2 e0                                      ....
 18373 ms  SECKEY_ECParamsToKeySize()
 18373 ms  0x7487 ret:0x100
 18373 ms  0x7487 SECKEY_CreateECPrivateKey()
 18373 ms  0x7487 cx:0x7f52db5d4c88
 18374 ms     | 0x7487 EC_ValidatePublicKey()
 18375 ms     | 0x7487 ret:0x0
 18375 ms  0x7487 ret:0x7f52ea41e020::7f52ea41e020  30 e3 c4 e0                                      0...
 18375 ms  0x7487 PK11_PubDeriveWithKDF()
 18375 ms  0x7487 seckey:0x7f52ea41e020
 18376 ms     | 0x7487 EC_ValidatePublicKey()
 18377 ms     | 0x7487 ret:0x0
 18378 ms  0x7487 ret:0x7f52dd864880
 18378 ms  0x7487 PK11_DeriveWithFlags()
 18378 ms  0x7487 basekey:0x7f52dd864880
 18378 ms     | 0x7487 PK11_DeriveWithTemplate()
 18378 ms  0x7487 ret:0x7f52dd863900
 18378 ms  0x7487 PK11_Derive()
 18378 ms  0x7487 basekey:0x7f52dd863900
 18378 ms     | 0x7487 PK11_DeriveWithTemplate()
 18379 ms  0x7487 ret:0x7f52dfceb580
 18379 ms  0x7487 SECKEY_DestroyPrivateKey()
 18379 ms  0x7487 privk:0x7f52ea41e020::7f52ea41e020  30 e3 c4 e0                                      0...
 18379 ms  0x7487 privk:0x7f52ea41e020::7f52ea41e020  e5 e5 e5 e5                                      ....
 18379 ms  0x7487 PK11_Encrypt()
 18379 ms  0x7487 symkey:0x7f52e7722880
           /* TID 0x748f */
 18544 ms  0x748f PR_Close()
 18544 ms  0x748f fd:0x7f52e37c0340
           /* TID 0x74f5 */
 19465 ms  0x74f5 PR_Close()
 19465 ms  0x74f5 fd:0x7f52e0aa6ee0
 19468 ms  0x74f5 PR_Close()
 19468 ms  0x74f5 fd:0x7f52e0aa6ee0
           /* TID 0x7525 */
 20235 ms  SECKEY_ECParamsToBasePointOrderLen()
 20246 ms  0x7525 ret:0x180
 20246 ms  SECKEY_ECParamsToBasePointOrderLen()
 20246 ms  0x7525 ret:0x180
 20246 ms  0x7525 EC_ValidatePublicKey()
 20251 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 20257 ms  SECKEY_ECParamsToKeySize()
 20257 ms  0x7487 ret:0x100
 20257 ms  0x7487 SECKEY_CreateECPrivateKey()
 20257 ms  0x7487 cx:0x7f52c92870e8
 20258 ms     | 0x7487 EC_ValidatePublicKey()
 20261 ms     | 0x7487 ret:0x0
 20261 ms  0x7487 ret:0x7f52dfb13820::7f52dfb13820  e0 1c d1 e0                                      ....
 20261 ms  0x7487 PK11_PubDeriveWithKDF()
 20261 ms  0x7487 seckey:0x7f52dfb13820
 20261 ms     | 0x7487 EC_ValidatePublicKey()
 20264 ms     | 0x7487 ret:0x0
 20266 ms  0x7487 ret:0x7f52dd864880
 20266 ms  0x7487 PK11_DeriveWithFlags()
 20266 ms  0x7487 basekey:0x7f52dd864880
 20266 ms     | 0x7487 PK11_DeriveWithTemplate()
 20268 ms  0x7487 ret:0x7f52c951fd00
 20268 ms  0x7487 PK11_Derive()
 20268 ms  0x7487 basekey:0x7f52c951fd00
 20268 ms     | 0x7487 PK11_DeriveWithTemplate()
 20268 ms  0x7487 ret:0x7f52dd87d900
 20268 ms  0x7487 SECKEY_DestroyPrivateKey()
 20268 ms  0x7487 privk:0x7f52dfb13820::7f52dfb13820  e0 1c d1 e0                                      ....
 20269 ms  0x7487 privk:0x7f52dfb13820::7f52dfb13820  e5 e5 e5 e5                                      ....
 20269 ms  0x7487 PK11_Encrypt()
 20269 ms  0x7487 symkey:0x7f52dd869e00
 20270 ms  0x7487 SECKEY_CreateECPrivateKey()
 20270 ms  0x7487 cx:0x7f52c9287c48
 20271 ms     | 0x7487 EC_ValidatePublicKey()
 20271 ms     | 0x7487 ret:0x0
 20271 ms  0x7487 ret:0x7f52dfb13820::7f52dfb13820  b0 8f d0 e0                                      ....
 20271 ms  0x7487 SECKEY_CreateECPrivateKey()
 20271 ms  0x7487 cx:0x7f52c9287c48
 20275 ms     | 0x7487 EC_ValidatePublicKey()
 20276 ms     | 0x7487 ret:0x0
           /* TID 0x7525 */
 20279 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20280 ms     | SECKEY_ECParamsToBasePointOrderLen()
 20280 ms     | 0x7525 ret:0x180
 20280 ms     | SECKEY_ECParamsToBasePointOrderLen()
 20280 ms     | 0x7525 ret:0x180
 20280 ms     | 0x7525 EC_ValidatePublicKey()
 20281 ms     | 0x7525 ret:0x0
 20285 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 20285 ms  0x7487 ret:0x7f52dfb0b020::7f52dfb0b020  30 a3 d6 db                                      0...
 20287 ms  0x7487 SECKEY_CreateECPrivateKey()
 20287 ms  0x7487 cx:0x7f52c9287aa8
 20287 ms     | 0x7487 EC_ValidatePublicKey()
 20287 ms     | 0x7487 ret:0x0
 20287 ms  0x7487 ret:0x7f52dfb0e020::7f52dfb0e020  00 61 7e e0                                      .a~.
 20287 ms  0x7487 SECKEY_CreateECPrivateKey()
 20287 ms  0x7487 cx:0x7f52c9287aa8
 20288 ms     | 0x7487 EC_ValidatePublicKey()
 20289 ms     | 0x7487 ret:0x0
 20289 ms  0x7487 ret:0x7f52dfb18820::7f52dfb18820  a0 26 d1 e0                                      .&..
 20290 ms  0x7487 SECKEY_CreateECPrivateKey()
 20290 ms  0x7487 cx:0x7f52c9287908
 20290 ms     | 0x7487 EC_ValidatePublicKey()
 20290 ms     | 0x7487 ret:0x0
 20291 ms  0x7487 ret:0x7f52dfb1b020::7f52dfb1b020  60 2f d1 e0                                      `/..
 20291 ms  0x7487 SECKEY_CreateECPrivateKey()
 20291 ms  0x7487 cx:0x7f52c9287908
 20291 ms     | 0x7487 EC_ValidatePublicKey()
 20293 ms     | 0x7487 ret:0x0
 20293 ms  0x7487 ret:0x7f52dfb1d020::7f52dfb1d020  c0 84 d4 e0                                      ....
 20295 ms  SECKEY_ECParamsToKeySize()
 20295 ms  0x7487 ret:0x100
 20295 ms  0x7487 SECKEY_CreateECPrivateKey()
 20295 ms  0x7487 cx:0x7f52c9287768
 20295 ms     | 0x7487 EC_ValidatePublicKey()
 20297 ms     | 0x7487 ret:0x0
 20297 ms  0x7487 ret:0x7f52ea40f820::7f52ea40f820  70 64 e2 e0                                      pd..
 20297 ms  0x7487 PK11_PubDeriveWithKDF()
 20297 ms  0x7487 seckey:0x7f52ea40f820
 20297 ms     | 0x7487 EC_ValidatePublicKey()
 20298 ms     | 0x7487 ret:0x0
 20300 ms  0x7487 ret:0x7f52dd864880
 20300 ms  0x7487 PK11_DeriveWithFlags()
 20300 ms  0x7487 basekey:0x7f52dd864880
 20300 ms     | 0x7487 PK11_DeriveWithTemplate()
 20300 ms  0x7487 ret:0x7f52c951f900
 20300 ms  0x7487 PK11_Derive()
 20300 ms  0x7487 basekey:0x7f52c951f900
 20300 ms     | 0x7487 PK11_DeriveWithTemplate()
 20300 ms  0x7487 ret:0x7f52dd87dd00
 20300 ms  0x7487 SECKEY_DestroyPrivateKey()
 20300 ms  0x7487 privk:0x7f52ea40f820::7f52ea40f820  70 64 e2 e0                                      pd..
 20300 ms  0x7487 privk:0x7f52ea40f820::7f52ea40f820  e5 e5 e5 e5                                      ....
 20300 ms  0x7487 PK11_Encrypt()
 20300 ms  0x7487 symkey:0x7f52df4f5c00
 20303 ms  0x7487 SECKEY_CreateECPrivateKey()
 20303 ms  0x7487 cx:0x7f52c9287428
 20304 ms     | 0x7487 EC_ValidatePublicKey()
 20304 ms     | 0x7487 ret:0x0
 20304 ms  0x7487 ret:0x7f52ea40f820::7f52ea40f820  40 bc e1 e0                                      @...
 20304 ms  0x7487 SECKEY_CreateECPrivateKey()
 20304 ms  0x7487 cx:0x7f52c9287428
 20304 ms     | 0x7487 EC_ValidatePublicKey()
 20306 ms     | 0x7487 ret:0x0
 20306 ms  0x7487 ret:0x7f52dfb2f020::7f52dfb2f020  00 96 e2 e0                                      ....
 20307 ms  0x7487 PK11_Encrypt()
 20307 ms  0x7487 symkey:0x7f52dc57e100
 20307 ms  0x7487 PK11_Encrypt()
 20307 ms  0x7487 symkey:0x7f52dfceb780
 20308 ms  0x7487 SSL_AuthCertificateComplete()
 20308 ms  0x7487 fd:0x7f52e06be0a0
 20308 ms  0x7487 err:0x0
 20308 ms  0x7487 SSL_AuthCertificateComplete()
 20308 ms  0x7487 fd:0x7f52e07fe100
 20308 ms  0x7487 err:0x0
 20308 ms  0x7487 SSL_AuthCertificateComplete()
 20308 ms  0x7487 fd:0x7f52e075cc40
 20308 ms  0x7487 err:0x0
 20308 ms  0x7487 SSL_AuthCertificateComplete()
 20308 ms  0x7487 fd:0x7f52e06befa0
 20308 ms  0x7487 err:0x0
 20308 ms  0x7487 SSL_AuthCertificateComplete()
 20308 ms  0x7487 fd:0x7f52e0c83850
 20308 ms  0x7487 err:0x0
 20308 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20308 ms     | 0x7487 privk:0x7f52e867a020::7f52e867a020  b0 6f c7 df                                      .o..
 20308 ms     | 0x7487 privk:0x7f52e867a020::7f52e867a020  e5 e5 e5 e5                                      ....
 20308 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20308 ms     | 0x7487 privk:0x7f52c9620020::7f52c9620020  d0 6d c7 df                                      .m..
 20308 ms     | 0x7487 privk:0x7f52c9620020::7f52c9620020  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 20309 ms  0x748f PR_Close()
 20309 ms  0x748f fd:0x7f52e0aac220
           /* TID 0x7487 */
 20310 ms  0x7487 PK11_Encrypt()
 20310 ms  0x7487 symkey:0x7f52e0a69400
 20310 ms  0x7487 PK11_Encrypt()
 20310 ms  0x7487 symkey:0x7f52e0cb8a00
 20311 ms  0x7487 PK11_Encrypt()
 20311 ms  0x7487 symkey:0x7f52e0cb9580
 20312 ms  SECKEY_ECParamsToKeySize()
 20312 ms  0x7487 ret:0x100
 20312 ms  0x7487 SECKEY_CreateECPrivateKey()
 20312 ms  0x7487 cx:0x7f52db5d4948
 20312 ms     | 0x7487 EC_ValidatePublicKey()
 20314 ms     | 0x7487 ret:0x0
 20314 ms  0x7487 ret:0x7f52dfb0b820::7f52dfb0b820  60 6f c7 df                                      `o..
 20314 ms  0x7487 PK11_PubDeriveWithKDF()
 20314 ms  0x7487 seckey:0x7f52dfb0b820
 20314 ms     | 0x7487 EC_ValidatePublicKey()
 20315 ms     | 0x7487 ret:0x0
 20317 ms  0x7487 ret:0x7f52dd864880
 20317 ms  0x7487 PK11_DeriveWithFlags()
 20317 ms  0x7487 basekey:0x7f52dd864880
 20317 ms     | 0x7487 PK11_DeriveWithTemplate()
 20317 ms  0x7487 ret:0x7f52df484500
 20317 ms  0x7487 PK11_Derive()
 20317 ms  0x7487 basekey:0x7f52df484500
 20317 ms     | 0x7487 PK11_DeriveWithTemplate()
 20317 ms  0x7487 ret:0x7f52dd863c00
 20317 ms  0x7487 SECKEY_DestroyPrivateKey()
 20317 ms  0x7487 privk:0x7f52dfb0b820::7f52dfb0b820  60 6f c7 df                                      `o..
 20317 ms  0x7487 privk:0x7f52dfb0b820::7f52dfb0b820  e5 e5 e5 e5                                      ....
 20317 ms  0x7487 PK11_Encrypt()
 20317 ms  0x7487 symkey:0x7f52dfcec900
 20318 ms  SECKEY_ECParamsToKeySize()
 20318 ms  0x7487 ret:0x100
 20318 ms  0x7487 SECKEY_CreateECPrivateKey()
 20318 ms  0x7487 cx:0x7f52db5d4128
 20319 ms     | 0x7487 EC_ValidatePublicKey()
 20320 ms     | 0x7487 ret:0x0
 20320 ms  0x7487 ret:0x7f52dfb30820::7f52dfb30820  70 64 7e e0                                      pd~.
 20320 ms  0x7487 PK11_PubDeriveWithKDF()
 20320 ms  0x7487 seckey:0x7f52dfb30820
 20320 ms     | 0x7487 EC_ValidatePublicKey()
 20322 ms     | 0x7487 ret:0x0
 20324 ms  0x7487 ret:0x7f52dd864880
 20324 ms  0x7487 PK11_DeriveWithFlags()
 20324 ms  0x7487 basekey:0x7f52dd864880
 20324 ms     | 0x7487 PK11_DeriveWithTemplate()
 20324 ms  0x7487 ret:0x7f52df484f00
 20324 ms  0x7487 PK11_Derive()
 20324 ms  0x7487 basekey:0x7f52df484f00
 20324 ms     | 0x7487 PK11_DeriveWithTemplate()
 20324 ms  0x7487 ret:0x7f52dfceb400
 20324 ms  0x7487 SECKEY_DestroyPrivateKey()
 20324 ms  0x7487 privk:0x7f52dfb30820::7f52dfb30820  70 64 7e e0                                      pd~.
 20324 ms  0x7487 privk:0x7f52dfb30820::7f52dfb30820  e5 e5 e5 e5                                      ....
 20324 ms  0x7487 PK11_Encrypt()
 20324 ms  0x7487 symkey:0x7f52e0351300
 20325 ms  0x7487 PK11_Encrypt()
 20325 ms  0x7487 symkey:0x7f52e540b880
 20326 ms  SECKEY_ECParamsToKeySize()
 20326 ms  0x7487 ret:0x100
 20326 ms  0x7487 SECKEY_CreateECPrivateKey()
 20326 ms  0x7487 cx:0x7f52c9287f88
 20327 ms     | 0x7487 EC_ValidatePublicKey()
 20328 ms     | 0x7487 ret:0x0
 20328 ms  0x7487 ret:0x7f52dfb36020::7f52dfb36020  50 06 6d e3                                      P.m.
 20328 ms  0x7487 PK11_PubDeriveWithKDF()
 20328 ms  0x7487 seckey:0x7f52dfb36020
 20328 ms     | 0x7487 EC_ValidatePublicKey()
 20330 ms     | 0x7487 ret:0x0
 20331 ms  0x7487 ret:0x7f52dd864880
 20331 ms  0x7487 PK11_DeriveWithFlags()
 20331 ms  0x7487 basekey:0x7f52dd864880
 20331 ms     | 0x7487 PK11_DeriveWithTemplate()
 20331 ms  0x7487 ret:0x7f52dd864500
 20331 ms  0x7487 PK11_Derive()
 20331 ms  0x7487 basekey:0x7f52dd864500
 20331 ms     | 0x7487 PK11_DeriveWithTemplate()
 20331 ms  0x7487 ret:0x7f52dd864480
 20331 ms  0x7487 SECKEY_DestroyPrivateKey()
 20331 ms  0x7487 privk:0x7f52dfb36020::7f52dfb36020  50 06 6d e3                                      P.m.
 20331 ms  0x7487 privk:0x7f52dfb36020::7f52dfb36020  e5 e5 e5 e5                                      ....
 20332 ms  0x7487 PK11_Encrypt()
 20332 ms  0x7487 symkey:0x7f52e076ca00
 20334 ms  SECKEY_ECParamsToKeySize()
 20334 ms  0x7487 ret:0x100
 20334 ms  0x7487 SECKEY_CreateECPrivateKey()
 20334 ms  0x7487 cx:0x7f52c9287de8
 20335 ms     | 0x7487 EC_ValidatePublicKey()
 20336 ms     | 0x7487 ret:0x0
 20336 ms  0x7487 ret:0x7f52dfb44020::7f52dfb44020  70 5e 71 e3                                      p^q.
 20336 ms  0x7487 PK11_PubDeriveWithKDF()
 20336 ms  0x7487 seckey:0x7f52dfb44020
 20336 ms     | 0x7487 EC_ValidatePublicKey()
 20338 ms     | 0x7487 ret:0x0
 20344 ms  0x7487 ret:0x7f52dd864880
 20344 ms  0x7487 PK11_DeriveWithFlags()
 20344 ms  0x7487 basekey:0x7f52dd864880
 20344 ms     | 0x7487 PK11_DeriveWithTemplate()
 20344 ms  0x7487 ret:0x7f52dd864580
 20344 ms  0x7487 PK11_Derive()
 20344 ms  0x7487 basekey:0x7f52dd864580
 20344 ms     | 0x7487 PK11_DeriveWithTemplate()
 20344 ms  0x7487 ret:0x7f52dd864f00
 20344 ms  0x7487 SECKEY_DestroyPrivateKey()
 20344 ms  0x7487 privk:0x7f52dfb44020::7f52dfb44020  70 5e 71 e3                                      p^q.
 20344 ms  0x7487 privk:0x7f52dfb44020::7f52dfb44020  e5 e5 e5 e5                                      ....
 20344 ms  0x7487 PK11_Encrypt()
 20344 ms  0x7487 symkey:0x7f52e0cb9100
 20345 ms  0x7487 SECKEY_CreateECPrivateKey()
 20345 ms  0x7487 cx:0x7f52c92875c8
 20345 ms     | 0x7487 EC_ValidatePublicKey()
 20345 ms     | 0x7487 ret:0x0
 20345 ms  0x7487 ret:0x7f52dfb44020::7f52dfb44020  50 5b 71 e3                                      P[q.
 20345 ms  0x7487 SECKEY_CreateECPrivateKey()
 20345 ms  0x7487 cx:0x7f52c92875c8
 20346 ms     | 0x7487 EC_ValidatePublicKey()
 20347 ms     | 0x7487 ret:0x0
 20347 ms  0x7487 ret:0x7f52dfb46020::7f52dfb46020  50 51 75 e3                                      PQu.
           /* TID 0x74e3 */
 20349 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20349 ms  0x74e3 ret:0x0
 20349 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20349 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 20350 ms  SECKEY_ECParamsToKeySize()
 20350 ms  0x7487 ret:0xff
 20350 ms  0x7487 SECKEY_CreateECPrivateKey()
 20350 ms  0x7487 cx:0x7f52c92882c8
 20350 ms     | 0x7487 EC_ValidatePublicKey()
 20350 ms     | 0x7487 ret:0x0
 20350 ms  0x7487 ret:0x7f52dfb4c020::7f52dfb4c020  e0 dc 7b e3                                      ..{.
 20350 ms  0x7487 PK11_PubDeriveWithKDF()
 20350 ms  0x7487 seckey:0x7f52dfb4c020
 20350 ms     | 0x7487 EC_ValidatePublicKey()
 20350 ms     | 0x7487 ret:0x0
 20351 ms  0x7487 ret:0x7f52dd864880
 20351 ms  0x7487 PK11_DeriveWithFlags()
 20351 ms  0x7487 basekey:0x7f52dd864880
 20351 ms     | 0x7487 PK11_DeriveWithTemplate()
 20351 ms  0x7487 ret:0x7f52dfcebd00
 20351 ms  0x7487 PK11_Derive()
 20351 ms  0x7487 basekey:0x7f52dfcebd00
 20351 ms     | 0x7487 PK11_DeriveWithTemplate()
 20351 ms  0x7487 ret:0x7f52e7d6af80
 20351 ms  0x7487 SECKEY_DestroyPrivateKey()
 20351 ms  0x7487 privk:0x7f52dfb4c020::7f52dfb4c020  e0 dc 7b e3                                      ..{.
 20351 ms  0x7487 privk:0x7f52dfb4c020::7f52dfb4c020  e5 e5 e5 e5                                      ....
 20351 ms  0x7487 PK11_Encrypt()
 20351 ms  0x7487 symkey:0x7f52e7d81180
 20352 ms  0x7487 SSL_ImportFD()
 20352 ms  0x7487 ret:0x7f52e36d5be0
 20352 ms  0x7487 SSL_AuthCertificateHook()
 20352 ms  0x7487 fd:0x7f52e36d5be0
 20352 ms  0x7487 ret:0x0
 20352 ms  0x7487 PR_Connect()
 20352 ms  0x7487 fd:0x7f52e36d5be0
 20353 ms  0x7487 SECKEY_DestroyPrivateKey()
 20353 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  20 b4 87 dd                                       ...
 20353 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e5 e5 e5 e5                                      ....
 20353 ms  0x7487 SECKEY_DestroyPrivateKey()
 20353 ms  0x7487 privk:0x7f52c926e020::7f52c926e020  80 bd 86 dd                                      ....
 20353 ms  0x7487 privk:0x7f52c926e020::7f52c926e020  e5 e5 e5 e5                                      ....
 20353 ms  0x7487 SSL_AuthCertificateComplete()
 20353 ms  0x7487 fd:0x7f52e06f9970
 20353 ms  0x7487 err:0x0
 20353 ms  0x7487 SSL_AuthCertificateComplete()
 20353 ms  0x7487 fd:0x7f52e075c970
 20353 ms  0x7487 err:0x0
 20353 ms  0x7487 SSL_AuthCertificateComplete()
 20353 ms  0x7487 fd:0x7f52e0c738b0
 20353 ms  0x7487 err:0x0
 20353 ms  0x7487 PK11_Encrypt()
 20353 ms  0x7487 symkey:0x7f52db51f080
           /* TID 0x748f */
 20354 ms  0x748f PR_Close()
 20354 ms  0x748f fd:0x7f52e07fe370
 20360 ms  0x748f PR_Close()
 20360 ms  0x748f fd:0x7f52e07fe370
 20362 ms  0x748f PR_Close()
 20362 ms  0x748f fd:0x7f52e4a80070
           /* TID 0x7487 */
 20363 ms  0x7487 PK11_Encrypt()
 20363 ms  0x7487 symkey:0x7f52dfceb780
 20364 ms  0x7487 SECKEY_DestroyPrivateKey()
 20364 ms  0x7487 privk:0x7f52e47e4820::7f52e47e4820  00 a1 d6 db                                      ....
 20364 ms  0x7487 privk:0x7f52e47e4820::7f52e47e4820  e5 e5 e5 e5                                      ....
 20364 ms  0x7487 SECKEY_DestroyPrivateKey()
 20364 ms  0x7487 privk:0x7f52e47e0820::7f52e47e0820  d0 a8 d6 db                                      ....
 20364 ms  0x7487 privk:0x7f52e47e0820::7f52e47e0820  e5 e5 e5 e5                                      ....
 20364 ms  0x7487 SECKEY_DestroyPrivateKey()
 20364 ms  0x7487 privk:0x7f52e47ee820::7f52e47ee820  20 ae d6 db                                       ...
 20365 ms  0x7487 privk:0x7f52e47ee820::7f52e47ee820  e5 e5 e5 e5                                      ....
 20365 ms  0x7487 SECKEY_DestroyPrivateKey()
 20365 ms  0x7487 privk:0x7f52e47e8820::7f52e47e8820  f0 ab d6 db                                      ....
 20365 ms  0x7487 privk:0x7f52e47e8820::7f52e47e8820  e5 e5 e5 e5                                      ....
 20365 ms  0x7487 SECKEY_DestroyPrivateKey()
 20365 ms  0x7487 privk:0x7f52e498c820::7f52e498c820  70 ae d6 db                                      p...
 20365 ms  0x7487 privk:0x7f52e498c820::7f52e498c820  e5 e5 e5 e5                                      ....
 20365 ms  0x7487 SECKEY_DestroyPrivateKey()
 20365 ms  0x7487 privk:0x7f52e47f4820::7f52e47f4820  40 a2 d6 db                                      @...
 20365 ms  0x7487 privk:0x7f52e47f4820::7f52e47f4820  e5 e5 e5 e5                                      ....
 20368 ms  SECKEY_ECParamsToKeySize()
 20368 ms  0x7487 ret:0x100
 20368 ms  0x7487 SECKEY_CreateECPrivateKey()
 20368 ms  0x7487 cx:0x7f52c9287c48
 20369 ms     | 0x7487 EC_ValidatePublicKey()
 20370 ms     | 0x7487 ret:0x0
 20371 ms  0x7487 ret:0x7f52dfb4b020::7f52dfb4b020  b0 aa d6 db                                      ....
 20371 ms  0x7487 PK11_PubDeriveWithKDF()
 20371 ms  0x7487 seckey:0x7f52dfb4b020
 20371 ms     | 0x7487 EC_ValidatePublicKey()
 20378 ms     | 0x7487 ret:0x0
 20379 ms  0x7487 ret:0x7f52dd864880
 20379 ms  0x7487 PK11_DeriveWithFlags()
 20379 ms  0x7487 basekey:0x7f52dd864880
 20379 ms     | 0x7487 PK11_DeriveWithTemplate()
 20379 ms  0x7487 ret:0x7f52e7d81d00
 20379 ms  0x7487 PK11_Derive()
 20379 ms  0x7487 basekey:0x7f52e7d81d00
 20379 ms     | 0x7487 PK11_DeriveWithTemplate()
 20379 ms  0x7487 ret:0x7f52e7d81d80
 20379 ms  0x7487 SECKEY_DestroyPrivateKey()
 20379 ms  0x7487 privk:0x7f52dfb4b020::7f52dfb4b020  b0 aa d6 db                                      ....
 20380 ms  0x7487 privk:0x7f52dfb4b020::7f52dfb4b020  e5 e5 e5 e5                                      ....
 20380 ms  0x7487 PK11_Encrypt()
 20380 ms  0x7487 symkey:0x7f52e7d81f00
           /* TID 0x748f */
 20385 ms  0x748f PR_Close()
 20385 ms  0x748f fd:0x7f52e503bb50
           /* TID 0x7487 */
 20386 ms  SECKEY_ECParamsToKeySize()
 20386 ms  0x7487 ret:0x100
 20386 ms  0x7487 SECKEY_CreateECPrivateKey()
 20386 ms  0x7487 cx:0x7f52c9287aa8
 20390 ms     | 0x7487 EC_ValidatePublicKey()
 20391 ms     | 0x7487 ret:0x0
 20391 ms  0x7487 ret:0x7f52dfbc6820::7f52dfbc6820  c0 be 86 dd                                      ....
 20392 ms  0x7487 PK11_PubDeriveWithKDF()
 20392 ms  0x7487 seckey:0x7f52dfbc6820
 20392 ms     | 0x7487 EC_ValidatePublicKey()
 20393 ms     | 0x7487 ret:0x0
 20395 ms  0x7487 ret:0x7f52dd864880
 20395 ms  0x7487 PK11_DeriveWithFlags()
 20395 ms  0x7487 basekey:0x7f52dd864880
 20395 ms     | 0x7487 PK11_DeriveWithTemplate()
 20395 ms  0x7487 ret:0x7f52e7d9d300
 20395 ms  0x7487 PK11_Derive()
 20395 ms  0x7487 basekey:0x7f52e7d9d300
 20395 ms     | 0x7487 PK11_DeriveWithTemplate()
 20395 ms  0x7487 ret:0x7f52e7d9d680
 20395 ms  0x7487 SECKEY_DestroyPrivateKey()
 20395 ms  0x7487 privk:0x7f52dfbc6820::7f52dfbc6820  c0 be 86 dd                                      ....
 20395 ms  0x7487 privk:0x7f52dfbc6820::7f52dfbc6820  e5 e5 e5 e5                                      ....
 20395 ms  0x7487 PK11_Encrypt()
 20395 ms  0x7487 symkey:0x7f52e7d9d800
 20408 ms  SECKEY_ECParamsToKeySize()
 20408 ms  0x7487 ret:0xff
 20408 ms  0x7487 SECKEY_CreateECPrivateKey()
 20408 ms  0x7487 cx:0x7f52c9287908
 20409 ms     | 0x7487 EC_ValidatePublicKey()
 20409 ms     | 0x7487 ret:0x0
 20409 ms  0x7487 ret:0x7f52dfbcc820::7f52dfbcc820  20 ae 90 e0                                       ...
 20409 ms  0x7487 PK11_PubDeriveWithKDF()
 20409 ms  0x7487 seckey:0x7f52dfbcc820
 20409 ms     | 0x7487 EC_ValidatePublicKey()
 20409 ms     | 0x7487 ret:0x0
 20411 ms  0x7487 ret:0x7f52dd864880
 20411 ms  0x7487 PK11_DeriveWithFlags()
 20411 ms  0x7487 basekey:0x7f52dd864880
 20411 ms     | 0x7487 PK11_DeriveWithTemplate()
 20411 ms  0x7487 ret:0x7f52e7d9db80
 20411 ms  0x7487 PK11_Derive()
 20411 ms  0x7487 basekey:0x7f52e7d9db80
 20411 ms     | 0x7487 PK11_DeriveWithTemplate()
 20411 ms  0x7487 ret:0x7f52e7d9dc00
 20411 ms  0x7487 SECKEY_DestroyPrivateKey()
 20411 ms  0x7487 privk:0x7f52dfbcc820::7f52dfbcc820  20 ae 90 e0                                       ...
 20411 ms  0x7487 privk:0x7f52dfbcc820::7f52dfbcc820  e5 e5 e5 e5                                      ....
 20411 ms  0x7487 PK11_Encrypt()
 20411 ms  0x7487 symkey:0x7f52e7d9dd80
 20414 ms  0x7487 SECKEY_CreateECPrivateKey()
 20414 ms  0x7487 cx:0x7f52c9288128
 20414 ms     | 0x7487 EC_ValidatePublicKey()
 20414 ms     | 0x7487 ret:0x0
 20414 ms  0x7487 ret:0x7f52dfbcc820::7f52dfbcc820  e0 ac 90 e0                                      ....
 20415 ms  0x7487 SECKEY_CreateECPrivateKey()
 20415 ms  0x7487 cx:0x7f52c9288128
 20415 ms     | 0x7487 EC_ValidatePublicKey()
 20418 ms     | 0x7487 ret:0x0
 20418 ms  0x7487 ret:0x7f52dfbce820::7f52dfbce820  80 dd 7b e3                                      ..{.
 20419 ms  0x7487 SECKEY_DestroyPrivateKey()
 20419 ms  0x7487 privk:0x7f52c92eb020::7f52c92eb020  d0 8d c2 e0                                      ....
 20419 ms  0x7487 privk:0x7f52c92eb020::7f52c92eb020  e5 e5 e5 e5                                      ....
 20419 ms  0x7487 SECKEY_DestroyPrivateKey()
 20419 ms  0x7487 privk:0x7f52c92e9020::7f52c92e9020  f0 8b c2 e0                                      ....
 20419 ms  0x7487 privk:0x7f52c92e9020::7f52c92e9020  e5 e5 e5 e5                                      ....
 20419 ms  0x7487 PK11_Encrypt()
 20419 ms  0x7487 symkey:0x7f52e7d81180
 20419 ms  0x7487 PK11_Encrypt()
 20419 ms  0x7487 symkey:0x7f52e7d81180
 20420 ms  0x7487 SSL_ImportFD()
 20420 ms  0x7487 ret:0x7f52e0e02730
 20420 ms  0x7487 SSL_AuthCertificateHook()
 20420 ms  0x7487 fd:0x7f52e0e02730
 20420 ms  0x7487 ret:0x0
 20421 ms  0x7487 PK11_Encrypt()
 20421 ms  0x7487 symkey:0x7f52c98b6800
 20421 ms  0x7487 PK11_Encrypt()
 20421 ms  0x7487 symkey:0x7f52c98b6800
 20421 ms  0x7487 PR_Connect()
 20421 ms  0x7487 fd:0x7f52e0e02730
 20422 ms  0x7487 SSL_ImportFD()
 20422 ms  0x7487 ret:0x7f52e0c73a90
 20422 ms  0x7487 SSL_AuthCertificateHook()
 20422 ms  0x7487 fd:0x7f52e0c73a90
 20422 ms  0x7487 ret:0x0
 20422 ms  0x7487 PR_Connect()
 20422 ms  0x7487 fd:0x7f52e0c73a90
 20422 ms  0x7487 SSL_ImportFD()
 20422 ms  0x7487 ret:0x7f52e0d23d90
 20422 ms  0x7487 SSL_AuthCertificateHook()
 20422 ms  0x7487 fd:0x7f52e0d23d90
 20422 ms  0x7487 ret:0x0
 20422 ms  0x7487 PR_Connect()
 20422 ms  0x7487 fd:0x7f52e0d23d90
 20422 ms  0x7487 SSL_ImportFD()
 20422 ms  0x7487 ret:0x7f52e0e02670
 20422 ms  0x7487 SSL_AuthCertificateHook()
 20422 ms  0x7487 fd:0x7f52e0e02670
 20422 ms  0x7487 ret:0x0
 20422 ms  0x7487 PR_Connect()
 20422 ms  0x7487 fd:0x7f52e0e02670
 20423 ms  0x7487 SSL_ImportFD()
 20423 ms  0x7487 ret:0x7f52e0e339a0
 20423 ms  0x7487 SSL_AuthCertificateHook()
 20423 ms  0x7487 fd:0x7f52e0e339a0
 20423 ms  0x7487 ret:0x0
 20423 ms  0x7487 PR_Connect()
 20423 ms  0x7487 fd:0x7f52e0e339a0
 20423 ms  0x7487 SSL_ImportFD()
 20423 ms  0x7487 ret:0x7f52e0e33cd0
 20423 ms  0x7487 SSL_AuthCertificateHook()
 20423 ms  0x7487 fd:0x7f52e0e33cd0
 20423 ms  0x7487 ret:0x0
 20423 ms  0x7487 PR_Connect()
 20423 ms  0x7487 fd:0x7f52e0e33cd0
 20423 ms  0x7487 SSL_ImportFD()
 20423 ms  0x7487 ret:0x7f52e0ee9340
 20423 ms  0x7487 SSL_AuthCertificateHook()
 20423 ms  0x7487 fd:0x7f52e0ee9340
 20423 ms  0x7487 ret:0x0
 20424 ms  0x7487 PR_Connect()
 20424 ms  0x7487 fd:0x7f52e0ee9340
 20424 ms  0x7487 SSL_ImportFD()
 20424 ms  0x7487 ret:0x7f52e36d5e80
 20424 ms  0x7487 SSL_AuthCertificateHook()
 20424 ms  0x7487 fd:0x7f52e36d5e80
 20424 ms  0x7487 ret:0x0
 20424 ms  0x7487 PR_Connect()
 20424 ms  0x7487 fd:0x7f52e36d5e80
 20424 ms  0x7487 SSL_ImportFD()
 20424 ms  0x7487 ret:0x7f52e36d5fa0
 20424 ms  0x7487 SSL_AuthCertificateHook()
 20424 ms  0x7487 fd:0x7f52e36d5fa0
 20424 ms  0x7487 ret:0x0
 20424 ms  0x7487 PR_Connect()
 20424 ms  0x7487 fd:0x7f52e36d5fa0
 20425 ms  0x7487 SSL_ImportFD()
 20425 ms  0x7487 ret:0x7f52e36deeb0
 20425 ms  0x7487 SSL_AuthCertificateHook()
 20425 ms  0x7487 fd:0x7f52e36deeb0
 20425 ms  0x7487 ret:0x0
 20425 ms  0x7487 PR_Connect()
 20425 ms  0x7487 fd:0x7f52e36deeb0
 20425 ms  0x7487 SSL_ImportFD()
 20425 ms  0x7487 ret:0x7f52e3702160
 20425 ms  0x7487 SSL_AuthCertificateHook()
 20425 ms  0x7487 fd:0x7f52e3702160
 20425 ms  0x7487 ret:0x0
 20425 ms  0x7487 PR_Connect()
 20425 ms  0x7487 fd:0x7f52e3702160
 20426 ms  0x7487 PK11_Encrypt()
 20426 ms  0x7487 symkey:0x7f52dfceb780
 20426 ms  0x7487 PK11_Encrypt()
 20426 ms  0x7487 symkey:0x7f52dfceb780
 20426 ms  0x7487 PK11_Encrypt()
 20426 ms  0x7487 symkey:0x7f52db843600
 20427 ms  0x7487 PK11_Encrypt()
 20427 ms  0x7487 symkey:0x7f52c98b6800
 20427 ms  0x7487 PK11_Encrypt()
 20427 ms  0x7487 symkey:0x7f52dfceb780
 20437 ms  SECKEY_ECParamsToKeySize()
 20437 ms  0x7487 ret:0xff
 20437 ms  0x7487 SECKEY_CreateECPrivateKey()
 20437 ms  0x7487 cx:0x7f52c92875c8
 20438 ms     | 0x7487 EC_ValidatePublicKey()
 20438 ms     | 0x7487 ret:0x0
 20438 ms  0x7487 ret:0x7f52dfbd8020::7f52dfbd8020  d0 4d 7d e3                                      .M}.
 20438 ms  0x7487 PK11_PubDeriveWithKDF()
 20438 ms  0x7487 seckey:0x7f52dfbd8020
 20438 ms     | 0x7487 EC_ValidatePublicKey()
 20438 ms     | 0x7487 ret:0x0
 20438 ms  0x7487 ret:0x7f52dd864880
 20438 ms  0x7487 PK11_DeriveWithFlags()
 20438 ms  0x7487 basekey:0x7f52dd864880
 20438 ms     | 0x7487 PK11_DeriveWithTemplate()
 20438 ms  0x7487 ret:0x7f52e87c2080
 20438 ms  0x7487 PK11_Derive()
 20438 ms  0x7487 basekey:0x7f52e87c2080
 20438 ms     | 0x7487 PK11_DeriveWithTemplate()
 20438 ms  0x7487 ret:0x7f52e87c2100
 20438 ms  0x7487 SECKEY_DestroyPrivateKey()
 20438 ms  0x7487 privk:0x7f52dfbd8020::7f52dfbd8020  d0 4d 7d e3                                      .M}.
 20438 ms  0x7487 privk:0x7f52dfbd8020::7f52dfbd8020  e5 e5 e5 e5                                      ....
 20438 ms  0x7487 PK11_Encrypt()
 20438 ms  0x7487 symkey:0x7f52e87c2600
 20450 ms  SECKEY_ECParamsToKeySize()
 20450 ms  0x7487 ret:0x100
 20450 ms  0x7487 SECKEY_CreateECPrivateKey()
 20450 ms  0x7487 cx:0x7f52c9287428
 20451 ms     | 0x7487 EC_ValidatePublicKey()
 20452 ms     | 0x7487 ret:0x0
 20452 ms  0x7487 ret:0x7f52e0363020::7f52e0363020  50 31 2c e4                                      P1,.
 20452 ms  0x7487 PK11_PubDeriveWithKDF()
 20452 ms  0x7487 seckey:0x7f52e0363020
 20452 ms     | 0x7487 EC_ValidatePublicKey()
 20454 ms     | 0x7487 ret:0x0
 20456 ms  0x7487 ret:0x7f52dd864880
 20456 ms  0x7487 PK11_DeriveWithFlags()
 20456 ms  0x7487 basekey:0x7f52dd864880
 20456 ms     | 0x7487 PK11_DeriveWithTemplate()
 20456 ms  0x7487 ret:0x7f52e0c42580
 20456 ms  0x7487 PK11_Derive()
 20456 ms  0x7487 basekey:0x7f52e0c42580
 20456 ms     | 0x7487 PK11_DeriveWithTemplate()
 20456 ms  0x7487 ret:0x7f52e0c82280
 20456 ms  0x7487 SECKEY_DestroyPrivateKey()
 20456 ms  0x7487 privk:0x7f52e0363020::7f52e0363020  50 31 2c e4                                      P1,.
 20456 ms  0x7487 privk:0x7f52e0363020::7f52e0363020  e5 e5 e5 e5                                      ....
 20456 ms  0x7487 PK11_Encrypt()
 20456 ms  0x7487 symkey:0x7f52e87c5c80
 20457 ms  0x7487 PK11_Encrypt()
 20457 ms  0x7487 symkey:0x7f52c98b6800
 20458 ms  0x7487 PK11_Encrypt()
 20458 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 20458 ms  0x748f PR_Close()
 20458 ms  0x748f fd:0x7f52e53a8730
           /* TID 0x74e3 */
 20458 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20459 ms  0x74e3 ret:0x0
 20459 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20459 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 20467 ms  0x7487 PK11_Encrypt()
 20467 ms  0x7487 symkey:0x7f52e7d81180
 20467 ms  0x7487 SECKEY_CreateECPrivateKey()
 20467 ms  0x7487 cx:0x7f52c9288c88
 20468 ms     | 0x7487 EC_ValidatePublicKey()
 20468 ms     | 0x7487 ret:0x0
 20468 ms  0x7487 ret:0x7f52e0363020::7f52e0363020  80 33 2c e4                                      .3,.
 20468 ms  0x7487 SECKEY_CreateECPrivateKey()
 20468 ms  0x7487 cx:0x7f52c9288c88
 20469 ms     | 0x7487 EC_ValidatePublicKey()
 20470 ms     | 0x7487 ret:0x0
 20470 ms  0x7487 ret:0x7f52e47e1020::7f52e47e1020  d0 c8 2c e4                                      ..,.
 20471 ms  0x7487 SSL_ImportFD()
 20471 ms  0x7487 ret:0x7f52e0e33bb0
 20471 ms  0x7487 SSL_AuthCertificateHook()
 20471 ms  0x7487 fd:0x7f52e0e33bb0
 20471 ms  0x7487 ret:0x0
 20471 ms  0x7487 PR_Connect()
 20471 ms  0x7487 fd:0x7f52e0e33bb0
 20471 ms  0x7487 SSL_ImportFD()
 20471 ms  0x7487 ret:0x7f52e57c9a30
 20471 ms  0x7487 SSL_AuthCertificateHook()
 20471 ms  0x7487 fd:0x7f52e57c9a30
 20471 ms  0x7487 ret:0x0
 20472 ms  0x7487 PR_Connect()
 20472 ms  0x7487 fd:0x7f52e57c9a30
 20472 ms  0x7487 SSL_ImportFD()
 20472 ms  0x7487 ret:0x7f52e5481850
 20472 ms  0x7487 SSL_AuthCertificateHook()
 20472 ms  0x7487 fd:0x7f52e5481850
 20472 ms  0x7487 ret:0x0
 20473 ms  0x7487 PK11_Encrypt()
 20473 ms  0x7487 symkey:0x7f52c98b6800
 20473 ms  0x7487 PK11_Encrypt()
 20473 ms  0x7487 symkey:0x7f52c98b6800
 20473 ms  0x7487 PR_Connect()
 20473 ms  0x7487 fd:0x7f52e5481850
 20474 ms  0x7487 SSL_AuthCertificateComplete()
 20474 ms  0x7487 fd:0x7f52e0e33fd0
 20474 ms  0x7487 err:0x0
 20474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20474 ms     | 0x7487 privk:0x7f52dfb0b020::7f52dfb0b020  30 a3 d6 db                                      0...
 20474 ms     | 0x7487 privk:0x7f52dfb0b020::7f52dfb0b020  e5 e5 e5 e5                                      ....
 20474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20474 ms     | 0x7487 privk:0x7f52dfb13820::7f52dfb13820  b0 8f d0 e0                                      ....
 20474 ms     | 0x7487 privk:0x7f52dfb13820::7f52dfb13820  e5 e5 e5 e5                                      ....
 20474 ms  0x7487 SSL_AuthCertificateComplete()
 20474 ms  0x7487 fd:0x7f52e0e33f70
 20474 ms  0x7487 err:0x0
 20474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20474 ms     | 0x7487 privk:0x7f52dfb18820::7f52dfb18820  a0 26 d1 e0                                      .&..
 20474 ms     | 0x7487 privk:0x7f52dfb18820::7f52dfb18820  e5 e5 e5 e5                                      ....
 20474 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20474 ms     | 0x7487 privk:0x7f52dfb0e020::7f52dfb0e020  00 61 7e e0                                      .a~.
 20474 ms     | 0x7487 privk:0x7f52dfb0e020::7f52dfb0e020  e5 e5 e5 e5                                      ....
 20475 ms  0x7487 PK11_Encrypt()
 20475 ms  0x7487 symkey:0x7f52e7d81f00
 20475 ms  0x7487 PK11_Encrypt()
 20475 ms  0x7487 symkey:0x7f52e7d9d800
 20475 ms  0x7487 PK11_Encrypt()
 20475 ms  0x7487 symkey:0x7f52e7d9d800
 20475 ms  0x7487 SECKEY_CreateECPrivateKey()
 20475 ms  0x7487 cx:0x7f52db5d5988
 20476 ms     | 0x7487 EC_ValidatePublicKey()
 20476 ms     | 0x7487 ret:0x0
 20476 ms  0x7487 ret:0x7f52dfb0e020::7f52dfb0e020  b0 90 1a dc                                      ....
 20476 ms  0x7487 SECKEY_CreateECPrivateKey()
 20476 ms  0x7487 cx:0x7f52db5d5988
 20477 ms     | 0x7487 EC_ValidatePublicKey()
 20478 ms     | 0x7487 ret:0x0
 20478 ms  0x7487 ret:0x7f52dfb13820::7f52dfb13820  30 53 c7 e0                                      0S..
 20479 ms  0x7487 SSL_ImportFD()
 20479 ms  0x7487 ret:0x7f52e3702520
 20479 ms  0x7487 SSL_AuthCertificateHook()
 20479 ms  0x7487 fd:0x7f52e3702520
 20479 ms  0x7487 ret:0x0
 20479 ms  0x7487 PR_Connect()
 20479 ms  0x7487 fd:0x7f52e3702520
 20479 ms  0x7487 SSL_ImportFD()
 20479 ms  0x7487 ret:0x7f52e0e024f0
 20479 ms  0x7487 SSL_AuthCertificateHook()
 20479 ms  0x7487 fd:0x7f52e0e024f0
 20479 ms  0x7487 ret:0x0
 20480 ms  0x7487 PR_Connect()
 20480 ms  0x7487 fd:0x7f52e0e024f0
 20480 ms  0x7487 SSL_ImportFD()
 20480 ms  0x7487 ret:0x7f52e37147f0
 20480 ms  0x7487 SSL_AuthCertificateHook()
 20480 ms  0x7487 fd:0x7f52e37147f0
 20480 ms  0x7487 ret:0x0
 20480 ms  0x7487 PR_Connect()
 20480 ms  0x7487 fd:0x7f52e37147f0
 20480 ms  0x7487 SSL_ImportFD()
 20480 ms  0x7487 ret:0x7f52e3714970
 20480 ms  0x7487 SSL_AuthCertificateHook()
 20480 ms  0x7487 fd:0x7f52e3714970
 20480 ms  0x7487 ret:0x0
 20480 ms  0x7487 PR_Connect()
 20480 ms  0x7487 fd:0x7f52e3714970
 20480 ms  0x7487 SSL_ImportFD()
 20480 ms  0x7487 ret:0x7f52e37c0220
 20480 ms  0x7487 SSL_AuthCertificateHook()
 20480 ms  0x7487 fd:0x7f52e37c0220
 20481 ms  0x7487 ret:0x0
 20481 ms  0x7487 PR_Connect()
 20481 ms  0x7487 fd:0x7f52e37c0220
 20481 ms  0x7487 SSL_ImportFD()
 20481 ms  0x7487 ret:0x7f52e46674c0
 20481 ms  0x7487 SSL_AuthCertificateHook()
 20481 ms  0x7487 fd:0x7f52e46674c0
 20481 ms  0x7487 ret:0x0
 20481 ms  0x7487 PR_Connect()
 20481 ms  0x7487 fd:0x7f52e46674c0
 20482 ms  0x7487 PK11_Encrypt()
 20482 ms  0x7487 symkey:0x7f52e7d9d800
           /* TID 0x748f */
 20485 ms  0x748f PR_Close()
 20485 ms  0x748f fd:0x7f52e5055550
 20486 ms  0x748f PR_Close()
 20486 ms  0x748f fd:0x7f52e5055550
           /* TID 0x74f5 */
 20487 ms  0x74f5 PR_Close()
 20487 ms  0x74f5 fd:0x7f52e5055550
           /* TID 0x7487 */
 20488 ms  0x7487 PK11_Encrypt()
 20488 ms  0x7487 symkey:0x7f52e7d9d800
 20488 ms  0x7487 PK11_Encrypt()
 20488 ms  0x7487 symkey:0x7f52c98b6600
 20489 ms  0x7487 PK11_Encrypt()
 20489 ms  0x7487 symkey:0x7f52c98b6800
 20489 ms  0x7487 PK11_Encrypt()
 20489 ms  0x7487 symkey:0x7f52c98b6800
 20489 ms  0x7487 PK11_Encrypt()
 20489 ms  0x7487 symkey:0x7f52db843600
 20489 ms  0x7487 PK11_Encrypt()
 20489 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 20490 ms  0x748f PR_Close()
 20490 ms  0x748f fd:0x7f52e504e5b0
           /* TID 0x7487 */
 20491 ms  0x7487 SECKEY_CreateECPrivateKey()
 20491 ms  0x7487 cx:0x7f52db5d57e8
 20492 ms     | 0x7487 EC_ValidatePublicKey()
 20492 ms     | 0x7487 ret:0x0
 20492 ms  0x7487 ret:0x7f52c92eb020::7f52c92eb020  70 ae d6 db                                      p...
 20492 ms  0x7487 SECKEY_CreateECPrivateKey()
 20492 ms  0x7487 cx:0x7f52db5d57e8
 20492 ms     | 0x7487 EC_ValidatePublicKey()
 20494 ms     | 0x7487 ret:0x0
 20494 ms  0x7487 ret:0x7f52e47e7020::7f52e47e7020  90 1c d1 e0                                      ....
 20495 ms  0x7487 SECKEY_CreateECPrivateKey()
 20495 ms  0x7487 cx:0x7f52c9289cc8
 20495 ms     | 0x7487 EC_ValidatePublicKey()
 20495 ms     | 0x7487 ret:0x0
 20495 ms  0x7487 ret:0x7f52e47ee020::7f52e47ee020  10 ca 2c e4                                      ..,.
 20495 ms  0x7487 SECKEY_CreateECPrivateKey()
 20495 ms  0x7487 cx:0x7f52c9289cc8
 20496 ms     | 0x7487 EC_ValidatePublicKey()
 20498 ms     | 0x7487 ret:0x0
 20498 ms  0x7487 ret:0x7f52e47f4820::7f52e47f4820  20 04 2e e4                                       ...
 20498 ms  0x7487 SECKEY_CreateECPrivateKey()
 20498 ms  0x7487 cx:0x7f52c9289b28
 20499 ms     | 0x7487 EC_ValidatePublicKey()
 20499 ms     | 0x7487 ret:0x0
 20499 ms  0x7487 ret:0x7f52e4990020::7f52e4990020  b0 05 2e e4                                      ....
 20499 ms  0x7487 SECKEY_CreateECPrivateKey()
 20499 ms  0x7487 cx:0x7f52c9289b28
 20499 ms     | 0x7487 EC_ValidatePublicKey()
 20501 ms     | 0x7487 ret:0x0
 20501 ms  0x7487 ret:0x7f52bce0c020::7f52bce0c020  80 08 2e e4                                      ....
 20501 ms  0x7487 SECKEY_CreateECPrivateKey()
 20501 ms  0x7487 cx:0x7f52c9289648
 20502 ms     | 0x7487 EC_ValidatePublicKey()
 20502 ms     | 0x7487 ret:0x0
 20502 ms  0x7487 ret:0x7f52bce0e820::7f52bce0e820  10 0a 2e e4                                      ....
 20502 ms  0x7487 SECKEY_CreateECPrivateKey()
 20502 ms  0x7487 cx:0x7f52c9289648
 20502 ms     | 0x7487 EC_ValidatePublicKey()
 20504 ms     | 0x7487 ret:0x0
 20504 ms  0x7487 ret:0x7f52bce10820::7f52bce10820  90 0c 2e e4                                      ....
 20506 ms  0x7487 SSL_ImportFD()
 20506 ms  0x7487 ret:0x7f52e53d97f0
 20506 ms  0x7487 SSL_AuthCertificateHook()
 20506 ms  0x7487 fd:0x7f52e53d97f0
 20506 ms  0x7487 ret:0x0
 20506 ms  0x7487 PR_Connect()
 20506 ms  0x7487 fd:0x7f52e53d97f0
 20506 ms  0x7487 SSL_ImportFD()
 20506 ms  0x7487 ret:0x7f52e5055550
 20506 ms  0x7487 SSL_AuthCertificateHook()
 20506 ms  0x7487 fd:0x7f52e5055550
 20506 ms  0x7487 ret:0x0
 20506 ms  0x7487 PR_Connect()
 20506 ms  0x7487 fd:0x7f52e5055550
 20506 ms  0x7487 SSL_ImportFD()
 20506 ms  0x7487 ret:0x7f52e5055970
 20506 ms  0x7487 SSL_AuthCertificateHook()
 20506 ms  0x7487 fd:0x7f52e5055970
 20506 ms  0x7487 ret:0x0
 20507 ms  0x7487 PR_Connect()
 20507 ms  0x7487 fd:0x7f52e5055970
           /* TID 0x748f */
 20508 ms  0x748f PR_Close()
 20508 ms  0x748f fd:0x7f52e36d5b80
           /* TID 0x7487 */
 20513 ms  0x7487 SECKEY_CreateECPrivateKey()
 20513 ms  0x7487 cx:0x7f52db5d5cc8
 20514 ms     | 0x7487 EC_ValidatePublicKey()
 20514 ms     | 0x7487 ret:0x0
 20514 ms  0x7487 ret:0x7f52bce14020::7f52bce14020  e0 0c 2e e4                                      ....
 20514 ms  0x7487 SECKEY_CreateECPrivateKey()
 20514 ms  0x7487 cx:0x7f52db5d5cc8
 20515 ms     | 0x7487 EC_ValidatePublicKey()
 20516 ms     | 0x7487 ret:0x0
 20516 ms  0x7487 ret:0x7f52bce16020::7f52bce16020  c0 0e 2e e4                                      ....
 20527 ms  SECKEY_ECParamsToKeySize()
 20527 ms  0x7487 ret:0xff
 20527 ms  0x7487 SECKEY_CreateECPrivateKey()
 20527 ms  0x7487 cx:0x7f52db5d5988
 20528 ms     | 0x7487 EC_ValidatePublicKey()
 20528 ms     | 0x7487 ret:0x0
 20528 ms  0x7487 ret:0x7f52bce1e020::7f52bce1e020  20 99 60 e4                                       .`.
 20528 ms  0x7487 PK11_PubDeriveWithKDF()
 20528 ms  0x7487 seckey:0x7f52bce1e020
 20528 ms     | 0x7487 EC_ValidatePublicKey()
 20528 ms     | 0x7487 ret:0x0
 20528 ms  0x7487 ret:0x7f52dd864880
 20528 ms  0x7487 PK11_DeriveWithFlags()
 20528 ms  0x7487 basekey:0x7f52dd864880
 20528 ms     | 0x7487 PK11_DeriveWithTemplate()
 20528 ms  0x7487 ret:0x7f52e87d4200
 20528 ms  0x7487 PK11_Derive()
 20528 ms  0x7487 basekey:0x7f52e87d4200
 20528 ms     | 0x7487 PK11_DeriveWithTemplate()
 20528 ms  0x7487 ret:0x7f52e87d4280
 20528 ms  0x7487 SECKEY_DestroyPrivateKey()
 20528 ms  0x7487 privk:0x7f52bce1e020::7f52bce1e020  20 99 60 e4                                       .`.
 20529 ms  0x7487 privk:0x7f52bce1e020::7f52bce1e020  e5 e5 e5 e5                                      ....
 20529 ms  0x7487 PK11_Encrypt()
 20529 ms  0x7487 symkey:0x7f52e87d4400
 20531 ms  0x7487 SECKEY_CreateECPrivateKey()
 20531 ms  0x7487 cx:0x7f52db5d5648
 20532 ms     | 0x7487 EC_ValidatePublicKey()
 20532 ms     | 0x7487 ret:0x0
 20532 ms  0x7487 ret:0x7f52bce1e020::7f52bce1e020  20 99 60 e4                                       .`.
 20532 ms  0x7487 SECKEY_CreateECPrivateKey()
 20532 ms  0x7487 cx:0x7f52db5d5648
 20533 ms     | 0x7487 EC_ValidatePublicKey()
 20534 ms     | 0x7487 ret:0x0
 20534 ms  0x7487 ret:0x7f52bce20020::7f52bce20020  50 9b 60 e4                                      P.`.
 20537 ms  0x7487 SECKEY_CreateECPrivateKey()
 20537 ms  0x7487 cx:0x7f52c9289e68
 20537 ms     | 0x7487 EC_ValidatePublicKey()
 20537 ms     | 0x7487 ret:0x0
 20537 ms  0x7487 ret:0x7f52bce22820::7f52bce22820  90 9c 60 e4                                      ..`.
 20537 ms  0x7487 SECKEY_CreateECPrivateKey()
 20537 ms  0x7487 cx:0x7f52c9289e68
 20538 ms     | 0x7487 EC_ValidatePublicKey()
 20539 ms     | 0x7487 ret:0x0
 20540 ms  0x7487 ret:0x7f52bce24820::7f52bce24820  70 9e 60 e4                                      p.`.
 20548 ms  0x7487 SECKEY_CreateECPrivateKey()
 20548 ms  0x7487 cx:0x7f52c9289988
 20548 ms     | 0x7487 EC_ValidatePublicKey()
 20548 ms     | 0x7487 ret:0x0
 20548 ms  0x7487 ret:0x7f52bce29020::7f52bce29020  50 c1 9d e4                                      P...
 20548 ms  0x7487 SECKEY_CreateECPrivateKey()
 20548 ms  0x7487 cx:0x7f52c9289988
 20549 ms     | 0x7487 EC_ValidatePublicKey()
 20552 ms     | 0x7487 ret:0x0
 20552 ms  0x7487 ret:0x7f52c92e7020::7f52c92e7020  80 c3 9d e4                                      ....
 20556 ms  0x7487 PR_Connect()
 20556 ms  0x7487 fd:0x7f52e36d5cd0
 20557 ms  0x7487 PK11_Encrypt()
 20557 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 20559 ms  0x748f PR_Close()
 20559 ms  0x748f fd:0x7f52e06bec40
           /* TID 0x7487 */
 20561 ms  SECKEY_ECParamsToKeySize()
 20561 ms  0x7487 ret:0x100
 20561 ms  0x7487 SECKEY_CreateECPrivateKey()
 20561 ms  0x7487 cx:0x7f52c9288c88
 20562 ms     | 0x7487 EC_ValidatePublicKey()
 20564 ms     | 0x7487 ret:0x0
 20564 ms  0x7487 ret:0x7f52bcd33020::7f52bcd33020  60 c5 9d e4                                      `...
 20564 ms  0x7487 PK11_PubDeriveWithKDF()
 20564 ms  0x7487 seckey:0x7f52bcd33020
 20564 ms     | 0x7487 EC_ValidatePublicKey()
 20565 ms     | 0x7487 ret:0x0
 20572 ms  0x7487 ret:0x7f52dd864880
 20572 ms  0x7487 PK11_DeriveWithFlags()
 20572 ms  0x7487 basekey:0x7f52dd864880
 20572 ms     | 0x7487 PK11_DeriveWithTemplate()
 20572 ms  0x7487 ret:0x7f52e87e4c80
 20572 ms  0x7487 PK11_Derive()
 20572 ms  0x7487 basekey:0x7f52e87e4c80
 20572 ms     | 0x7487 PK11_DeriveWithTemplate()
 20572 ms  0x7487 ret:0x7f52e87e4d00
 20572 ms  0x7487 SECKEY_DestroyPrivateKey()
 20572 ms  0x7487 privk:0x7f52bcd33020::7f52bcd33020  60 c5 9d e4                                      `...
 20572 ms  0x7487 privk:0x7f52bcd33020::7f52bcd33020  e5 e5 e5 e5                                      ....
 20572 ms  0x7487 PK11_Encrypt()
 20572 ms  0x7487 symkey:0x7f52e87e4e80
 20577 ms  SECKEY_ECParamsToKeySize()
 20577 ms  0x7487 ret:0x100
 20577 ms  0x7487 SECKEY_CreateECPrivateKey()
 20577 ms  0x7487 cx:0x7f52db5d57e8
 20578 ms     | 0x7487 EC_ValidatePublicKey()
 20579 ms     | 0x7487 ret:0x0
 20579 ms  0x7487 ret:0x7f52bcd37820::7f52bcd37820  f0 c6 9d e4                                      ....
 20579 ms  0x7487 PK11_PubDeriveWithKDF()
 20579 ms  0x7487 seckey:0x7f52bcd37820
 20579 ms     | 0x7487 EC_ValidatePublicKey()
 20581 ms     | 0x7487 ret:0x0
 20589 ms  0x7487 ret:0x7f52dd864880
 20589 ms  0x7487 PK11_DeriveWithFlags()
 20589 ms  0x7487 basekey:0x7f52dd864880
 20590 ms     | 0x7487 PK11_DeriveWithTemplate()
 20590 ms  0x7487 ret:0x7f52e7d8dc00
 20590 ms  0x7487 PK11_Derive()
 20590 ms  0x7487 basekey:0x7f52e7d8dc00
 20590 ms     | 0x7487 PK11_DeriveWithTemplate()
 20590 ms  0x7487 ret:0x7f52e87e5300
 20590 ms  0x7487 SECKEY_DestroyPrivateKey()
 20590 ms  0x7487 privk:0x7f52bcd37820::7f52bcd37820  f0 c6 9d e4                                      ....
 20590 ms  0x7487 privk:0x7f52bcd37820::7f52bcd37820  e5 e5 e5 e5                                      ....
 20590 ms  0x7487 PK11_Encrypt()
 20590 ms  0x7487 symkey:0x7f52e87e5780
 20593 ms  0x7487 PK11_DeriveWithFlags()
 20593 ms  0x7487 basekey:0x7f52dd864880
 20593 ms     | 0x7487 PK11_DeriveWithTemplate()
 20593 ms  0x7487 ret:0x7f52e87e5900
 20593 ms  0x7487 PK11_Derive()
 20593 ms  0x7487 basekey:0x7f52e87e5900
 20593 ms     | 0x7487 PK11_DeriveWithTemplate()
 20593 ms  0x7487 ret:0x7f52e87e5980
 20594 ms  0x7487 PK11_Derive()
 20594 ms  0x7487 basekey:0x7f52dd864880
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20594 ms  0x7487 ret:0x7f52e87e5c00
 20594 ms  0x7487 PK11_PubDeriveWithKDF()
 20594 ms  0x7487 seckey:0x7f52e4990020
 20594 ms     | 0x7487 EC_ValidatePublicKey()
 20594 ms     | 0x7487 ret:0x0
 20594 ms  0x7487 ret:0x7f52dd864880
 20594 ms  SECKEY_ECParamsToKeySize()
 20594 ms  0x7487 ret:0xff
 20594 ms  0x7487 PK11_DeriveWithFlags()
 20594 ms  0x7487 basekey:0x7f52e87e5c00
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20594 ms  0x7487 ret:0x7f52e87e5c80
 20594 ms  0x7487 PK11_Derive()
 20594 ms  0x7487 basekey:0x7f52dd864880
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20594 ms  0x7487 ret:0x7f52e87e5d00
 20594 ms  0x7487 PK11_DeriveWithFlags()
 20594 ms  0x7487 basekey:0x7f52e87e5d00
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20594 ms  0x7487 ret:0x7f52e87e5c00
 20594 ms  0x7487 PK11_DeriveWithFlags()
 20594 ms  0x7487 basekey:0x7f52e87e5d00
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20594 ms  0x7487 ret:0x7f52dd864880
 20594 ms  0x7487 PK11_DeriveWithFlags()
 20594 ms  0x7487 basekey:0x7f52e87e5d00
 20594 ms     | 0x7487 PK11_DeriveWithTemplate()
 20595 ms  0x7487 ret:0x7f52e87e5c80
 20595 ms  0x7487 PK11_Derive()
 20595 ms  0x7487 basekey:0x7f52e87e5d80
 20595 ms     | 0x7487 PK11_DeriveWithTemplate()
 20595 ms  0x7487 ret:0x7f52e87e5e00
 20595 ms  0x7487 PK11_DeriveWithFlags()
 20595 ms  0x7487 basekey:0x7f52dd864880
 20595 ms     | 0x7487 PK11_DeriveWithTemplate()
 20595 ms  0x7487 ret:0x7f52e87e5d00
 20595 ms  0x7487 PK11_DeriveWithFlags()
 20595 ms  0x7487 basekey:0x7f52dd864880
 20595 ms     | 0x7487 PK11_DeriveWithTemplate()
 20595 ms  0x7487 ret:0x7f52e87e5c80
 20595 ms  SECKEY_ECParamsToKeySize()
 20595 ms  0x7487 ret:0x100
 20595 ms  SECKEY_ECParamsToBasePointOrderLen()
 20595 ms  0x7487 ret:0x100
 20595 ms  SECKEY_ECParamsToBasePointOrderLen()
 20595 ms  0x7487 ret:0x100
 20595 ms  0x7487 EC_ValidatePublicKey()
 20596 ms  0x7487 ret:0x0
 20598 ms  0x7487 PK11_DeriveWithFlags()
 20598 ms  0x7487 basekey:0x7f52dd864880
 20598 ms     | 0x7487 PK11_DeriveWithTemplate()
 20598 ms  0x7487 ret:0x7f52e87e5c80
 20598 ms  0x7487 PK11_Derive()
 20598 ms  0x7487 basekey:0x7f52e87e5c80
 20598 ms     | 0x7487 PK11_DeriveWithTemplate()
 20598 ms  0x7487 ret:0x7f52e87e5d80
 20598 ms  0x7487 PK11_PubDeriveWithKDF()
 20598 ms  0x7487 seckey:0x7f52bce0e820
 20598 ms     | 0x7487 EC_ValidatePublicKey()
 20598 ms     | 0x7487 ret:0x0
 20599 ms  0x7487 ret:0x7f52e87e5c80
 20599 ms  SECKEY_ECParamsToKeySize()
 20599 ms  0x7487 ret:0xff
 20599 ms  0x7487 PK11_DeriveWithFlags()
 20599 ms  0x7487 basekey:0x7f52e87e5d80
 20599 ms     | 0x7487 PK11_DeriveWithTemplate()
 20599 ms  0x7487 ret:0x7f52e87e5e80
 20599 ms  0x7487 PK11_Derive()
 20599 ms  0x7487 basekey:0x7f52e87e5c80
 20599 ms     | 0x7487 PK11_DeriveWithTemplate()
 20599 ms  0x7487 ret:0x7f52e87e5f00
 20599 ms  0x7487 PK11_DeriveWithFlags()
 20599 ms  0x7487 basekey:0x7f52e87e5f00
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e87e5d80
 20605 ms  0x7487 PK11_DeriveWithFlags()
 20605 ms  0x7487 basekey:0x7f52e87e5f00
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e87e5c80
 20605 ms  0x7487 PK11_DeriveWithFlags()
 20605 ms  0x7487 basekey:0x7f52e87e5f00
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e87e5e80
 20605 ms  0x7487 PK11_Derive()
 20605 ms  0x7487 basekey:0x7f52e460ac00
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e49dbb80
 20605 ms  0x7487 PK11_DeriveWithFlags()
 20605 ms  0x7487 basekey:0x7f52e87e5c80
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e87e5f00
 20605 ms  0x7487 PK11_DeriveWithFlags()
 20605 ms  0x7487 basekey:0x7f52e87e5c80
 20605 ms     | 0x7487 PK11_DeriveWithTemplate()
 20605 ms  0x7487 ret:0x7f52e87e5e80
 20605 ms  SECKEY_ECParamsToKeySize()
 20605 ms  0x7487 ret:0x100
 20606 ms  SECKEY_ECParamsToBasePointOrderLen()
 20606 ms  0x7487 ret:0x100
 20606 ms  SECKEY_ECParamsToBasePointOrderLen()
 20606 ms  0x7487 ret:0x100
 20606 ms  0x7487 EC_ValidatePublicKey()
 20609 ms  0x7487 ret:0x0
 20611 ms  0x7487 PK11_DeriveWithFlags()
 20611 ms  0x7487 basekey:0x7f52e87e5c80
 20611 ms     | 0x7487 PK11_DeriveWithTemplate()
 20611 ms  0x7487 ret:0x7f52e87e5e80
 20612 ms  0x7487 SSL_ImportFD()
 20612 ms  0x7487 ret:0x7f52e7d3a1f0
 20612 ms  0x7487 SSL_AuthCertificateHook()
 20612 ms  0x7487 fd:0x7f52e7d3a1f0
 20612 ms  0x7487 ret:0x0
 20613 ms  0x7487 PR_Connect()
 20613 ms  0x7487 fd:0x7f52e7d3a1f0
 20613 ms  0x7487 PK11_Encrypt()
 20613 ms  0x7487 symkey:0x7f52db843600
 20614 ms  0x7487 PR_Close()
 20614 ms  0x7487 fd:0x7f52e0e02730
 20614 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20614 ms     | 0x7487 privk:0x7f52bce10820::7f52bce10820  90 0c 2e e4                                      ....
 20614 ms     | 0x7487 privk:0x7f52bce10820::7f52bce10820  e5 e5 e5 e5                                      ....
 20614 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20614 ms     | 0x7487 privk:0x7f52bce0e820::7f52bce0e820  10 0a 2e e4                                      ....
 20614 ms     | 0x7487 privk:0x7f52bce0e820::7f52bce0e820  e5 e5 e5 e5                                      ....
 20614 ms  0x7487 PR_Close()
 20614 ms  0x7487 fd:0x7f52e0d23d90
 20614 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20614 ms     | 0x7487 privk:0x7f52bce0c020::7f52bce0c020  80 08 2e e4                                      ....
 20614 ms     | 0x7487 privk:0x7f52bce0c020::7f52bce0c020  e5 e5 e5 e5                                      ....
 20614 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 20614 ms     | 0x7487 privk:0x7f52e4990020::7f52e4990020  b0 05 2e e4                                      ....
 20615 ms     | 0x7487 privk:0x7f52e4990020::7f52e4990020  e5 e5 e5 e5                                      ....
           /* TID 0x7527 */
 20615 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20615 ms  0x7527 ret:0x0
           /* TID 0x748f */
 20618 ms  0x748f PR_Close()
 20618 ms  0x748f fd:0x7f52e0d23d90
 20619 ms  0x748f PR_Close()
 20619 ms  0x748f fd:0x7f52e0d23d90
           /* TID 0x752b */
 20619 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20620 ms  0x752b ret:0x0
           /* TID 0x7487 */
 20624 ms  0x7487 SECKEY_CreateECPrivateKey()
 20624 ms  0x7487 cx:0x7f52e033ee68
           /* TID 0x748f */
 20625 ms  0x748f PR_Close()
 20625 ms  0x748f fd:0x7f52e0e02730
 20631 ms  0x748f PR_Close()
 20631 ms  0x748f fd:0x7f52e07fe3d0
           /* TID 0x7487 */
 20632 ms     | 0x7487 EC_ValidatePublicKey()
 20632 ms     | 0x7487 ret:0x0
 20632 ms  0x7487 ret:0x7f52bcd40820::7f52bcd40820  b0 5f c6 e0                                      ._..
 20632 ms  0x7487 SECKEY_CreateECPrivateKey()
 20632 ms  0x7487 cx:0x7f52e033ee68
           /* TID 0x748f */
 20633 ms  0x748f PR_Close()
 20633 ms  0x748f fd:0x7f52e0a12eb0
           /* TID 0x7487 */
 20634 ms     | 0x7487 EC_ValidatePublicKey()
 20638 ms     | 0x7487 ret:0x0
 20638 ms  0x7487 ret:0x7f52bcd42820::7f52bcd42820  20 e9 df e0                                       ...
           /* TID 0x748f */
 20688 ms  0x748f PR_Close()
 20688 ms  0x748f fd:0x7f52e505c580
 21451 ms  0x748f PR_Close()
 21451 ms  0x748f fd:0x7f52e0e02730
 21451 ms  0x748f PR_Close()
 21451 ms  0x748f fd:0x7f52e53d9340
 21451 ms  0x748f PR_Close()
 21451 ms  0x748f fd:0x7f52e77b3a00
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e78cefa0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a160
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a220
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a2b0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a310
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a4f0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a550
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a5b0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a610
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a670
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a6d0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a730
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a790
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a7f0
 21452 ms  0x748f PR_Close()
 21452 ms  0x748f fd:0x7f52e7d3a850
 21467 ms  0x748f PR_Close()
 21467 ms  0x748f fd:0x7f52e0e02730
 21467 ms  0x748f PR_Close()
 21467 ms  0x748f fd:0x7f52e53d9340
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e77b3a00
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e78cefa0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a160
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a220
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a2b0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a310
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a4f0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a550
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a5b0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a610
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a670
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a6d0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a730
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a790
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a7f0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a850
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a8b0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a910
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a970
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3a9d0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3aa30
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3aa90
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3aaf0
 21468 ms  0x748f PR_Close()
 21468 ms  0x748f fd:0x7f52e7d3ab50
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3abb0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3ac10
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3ac70
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3acd0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3ad30
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3ad90
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3adf0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3ae50
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3aeb0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3af10
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3af70
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e7d3afd0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87a0160
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87a06a0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87a0700
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87a0850
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87a08b0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87e3df0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87e3e50
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e87e3f70
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e8907070
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e89070d0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e8907130
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e8907190
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e89071f0
 21469 ms  0x748f PR_Close()
 21469 ms  0x748f fd:0x7f52e8907250
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89072b0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907310
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907370
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89073d0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907430
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907490
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89074f0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907550
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89075b0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907610
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907670
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89076d0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907730
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907790
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89077f0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907850
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e89078b0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907a30
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907a90
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907af0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907b50
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907bb0
 21470 ms  0x748f PR_Close()
 21470 ms  0x748f fd:0x7f52e8907c10
           /* TID 0x7487 */
 21627 ms  SECKEY_ECParamsToKeySize()
 21627 ms  0x7487 ret:0x100
 21627 ms  0x7487 SECKEY_CreateECPrivateKey()
 21627 ms  0x7487 cx:0x7f52db5d5cc8
 21629 ms     | 0x7487 EC_ValidatePublicKey()
 21633 ms     | 0x7487 ret:0x0
 21634 ms  0x7487 ret:0x7f52bce0e020::7f52bce0e020  a0 cb 9d e4                                      ....
 21634 ms  0x7487 PK11_PubDeriveWithKDF()
 21634 ms  0x7487 seckey:0x7f52bce0e020
 21634 ms     | 0x7487 EC_ValidatePublicKey()
 21644 ms     | 0x7487 ret:0x0
 21646 ms  0x7487 ret:0x7f52dd864880
 21646 ms  0x7487 PK11_DeriveWithFlags()
 21646 ms  0x7487 basekey:0x7f52dd864880
 21646 ms     | 0x7487 PK11_DeriveWithTemplate()
 21648 ms  0x7487 ret:0x7f52e87e5c00
 21648 ms  0x7487 PK11_Derive()
 21648 ms  0x7487 basekey:0x7f52e87e5c00
 21649 ms     | 0x7487 PK11_DeriveWithTemplate()
 21649 ms  0x7487 ret:0x7f52e87e5e00
 21649 ms  0x7487 SECKEY_DestroyPrivateKey()
 21649 ms  0x7487 privk:0x7f52bce0e020::7f52bce0e020  a0 cb 9d e4                                      ....
 21649 ms  0x7487 privk:0x7f52bce0e020::7f52bce0e020  e5 e5 e5 e5                                      ....
 21649 ms  0x7487 PK11_Encrypt()
 21649 ms  0x7487 symkey:0x7f52e49da980
 21650 ms  SECKEY_ECParamsToKeySize()
 21650 ms  0x7487 ret:0x100
 21650 ms  0x7487 SECKEY_CreateECPrivateKey()
 21650 ms  0x7487 cx:0x7f52db5d5648
 21650 ms     | 0x7487 EC_ValidatePublicKey()
 21653 ms     | 0x7487 ret:0x0
 21653 ms  0x7487 ret:0x7f52bce10820::7f52bce10820  70 ce 9d e4                                      p...
 21653 ms  0x7487 PK11_PubDeriveWithKDF()
 21653 ms  0x7487 seckey:0x7f52bce10820
 21653 ms     | 0x7487 EC_ValidatePublicKey()
 21655 ms     | 0x7487 ret:0x0
 21657 ms  0x7487 ret:0x7f52dd864880
 21657 ms  0x7487 PK11_DeriveWithFlags()
 21657 ms  0x7487 basekey:0x7f52dd864880
 21657 ms     | 0x7487 PK11_DeriveWithTemplate()
 21657 ms  0x7487 ret:0x7f52e87e5d00
 21657 ms  0x7487 PK11_Derive()
 21657 ms  0x7487 basekey:0x7f52e87e5d00
 21657 ms     | 0x7487 PK11_DeriveWithTemplate()
 21657 ms  0x7487 ret:0x7f52e87e5c80
 21657 ms  0x7487 SECKEY_DestroyPrivateKey()
 21657 ms  0x7487 privk:0x7f52bce10820::7f52bce10820  70 ce 9d e4                                      p...
 21658 ms  0x7487 privk:0x7f52bce10820::7f52bce10820  e5 e5 e5 e5                                      ....
 21658 ms  0x7487 PK11_Encrypt()
 21658 ms  0x7487 symkey:0x7f52e890e480
 21659 ms  SECKEY_ECParamsToKeySize()
 21659 ms  0x7487 ret:0x100
 21659 ms  0x7487 SECKEY_CreateECPrivateKey()
 21659 ms  0x7487 cx:0x7f52c9289e68
 21660 ms     | 0x7487 EC_ValidatePublicKey()
 21661 ms     | 0x7487 ret:0x0
 21661 ms  0x7487 ret:0x7f52e47e8820::7f52e47e8820  a0 d1 9e e4                                      ....
 21661 ms  0x7487 PK11_PubDeriveWithKDF()
 21661 ms  0x7487 seckey:0x7f52e47e8820
 21661 ms     | 0x7487 EC_ValidatePublicKey()
 21663 ms     | 0x7487 ret:0x0
 21665 ms  0x7487 ret:0x7f52dd864880
 21665 ms  0x7487 PK11_DeriveWithFlags()
 21665 ms  0x7487 basekey:0x7f52dd864880
 21665 ms     | 0x7487 PK11_DeriveWithTemplate()
 21665 ms  0x7487 ret:0x7f52e87e5d80
 21665 ms  0x7487 PK11_Derive()
 21665 ms  0x7487 basekey:0x7f52e87e5d80
 21665 ms     | 0x7487 PK11_DeriveWithTemplate()
 21665 ms  0x7487 ret:0x7f52e49dbb80
 21665 ms  0x7487 SECKEY_DestroyPrivateKey()
 21665 ms  0x7487 privk:0x7f52e47e8820::7f52e47e8820  a0 d1 9e e4                                      ....
 21665 ms  0x7487 privk:0x7f52e47e8820::7f52e47e8820  e5 e5 e5 e5                                      ....
 21665 ms  0x7487 PK11_Encrypt()
 21665 ms  0x7487 symkey:0x7f52e890e800
 21667 ms  0x7487 SECKEY_CreateECPrivateKey()
 21667 ms  0x7487 cx:0x7f52bcfa5288
 21668 ms     | 0x7487 EC_ValidatePublicKey()
 21668 ms     | 0x7487 ret:0x0
 21668 ms  0x7487 ret:0x7f52e47e8820::7f52e47e8820  00 d1 9e e4                                      ....
 21668 ms  0x7487 SECKEY_CreateECPrivateKey()
 21668 ms  0x7487 cx:0x7f52bcfa5288
 21668 ms     | 0x7487 EC_ValidatePublicKey()
 21670 ms     | 0x7487 ret:0x0
 21670 ms  0x7487 ret:0x7f52e498c820::7f52e498c820  e0 d2 9e e4                                      ....
 21670 ms  0x7487 SECKEY_CreateECPrivateKey()
 21670 ms  0x7487 cx:0x7f52bcfa4588
 21671 ms     | 0x7487 EC_ValidatePublicKey()
 21671 ms     | 0x7487 ret:0x0
 21671 ms  0x7487 ret:0x7f52e579c820::7f52e579c820  20 d4 9e e4                                       ...
 21671 ms  0x7487 SECKEY_CreateECPrivateKey()
 21671 ms  0x7487 cx:0x7f52bcfa4588
 21671 ms     | 0x7487 EC_ValidatePublicKey()
 21673 ms     | 0x7487 ret:0x0
 21673 ms  0x7487 ret:0x7f52bcdb5020::7f52bcdb5020  00 d6 9e e4                                      ....
 21674 ms  0x7487 SECKEY_CreateECPrivateKey()
 21674 ms  0x7487 cx:0x7f52bcfa43e8
 21674 ms     | 0x7487 EC_ValidatePublicKey()
 21674 ms     | 0x7487 ret:0x0
 21674 ms  0x7487 ret:0x7f52bcdb7820::7f52bcdb7820  40 d7 9e e4                                      @...
 21674 ms  0x7487 SECKEY_CreateECPrivateKey()
 21674 ms  0x7487 cx:0x7f52bcfa43e8
 21675 ms     | 0x7487 EC_ValidatePublicKey()
 21676 ms     | 0x7487 ret:0x0
 21676 ms  0x7487 ret:0x7f52bcdb9820::7f52bcdb9820  20 d9 9e e4                                       ...
 21677 ms  0x7487 SECKEY_CreateECPrivateKey()
 21677 ms  0x7487 cx:0x7f52bcfa50e8
 21677 ms     | 0x7487 EC_ValidatePublicKey()
 21677 ms     | 0x7487 ret:0x0
 21677 ms  0x7487 ret:0x7f52bcdbc020::7f52bcdbc020  60 da 9e e4                                      `...
 21677 ms  0x7487 SECKEY_CreateECPrivateKey()
 21677 ms  0x7487 cx:0x7f52bcfa50e8
 21678 ms     | 0x7487 EC_ValidatePublicKey()
 21679 ms     | 0x7487 ret:0x0
 21679 ms  0x7487 ret:0x7f52bcdbe020::7f52bcdbe020  d0 dd 9e e4                                      ....
 21682 ms  0x7487 SECKEY_CreateECPrivateKey()
 21682 ms  0x7487 cx:0x7f52bcfa4f48
 21683 ms     | 0x7487 EC_ValidatePublicKey()
 21683 ms     | 0x7487 ret:0x0
 21683 ms  0x7487 ret:0x7f52bcdc0820::7f52bcdc0820  60 f5 a8 e4                                      `...
 21683 ms  0x7487 SECKEY_CreateECPrivateKey()
 21683 ms  0x7487 cx:0x7f52bcfa4f48
 21683 ms     | 0x7487 EC_ValidatePublicKey()
 21685 ms     | 0x7487 ret:0x0
 21685 ms  0x7487 ret:0x7f52bcdc2820::7f52bcdc2820  c0 f9 a8 e4                                      ....
 21688 ms  0x7487 SECKEY_CreateECPrivateKey()
 21688 ms  0x7487 cx:0x7f52bcfa4da8
 21689 ms     | 0x7487 EC_ValidatePublicKey()
 21689 ms     | 0x7487 ret:0x0
 21689 ms  0x7487 ret:0x7f52bcdc5020::7f52bcdc5020  b0 fa a8 e4                                      ....
 21689 ms  0x7487 SECKEY_CreateECPrivateKey()
 21689 ms  0x7487 cx:0x7f52bcfa4da8
 21689 ms     | 0x7487 EC_ValidatePublicKey()
 21691 ms     | 0x7487 ret:0x0
 21691 ms  0x7487 ret:0x7f52bcdc7020::7f52bcdc7020  70 ce aa e4                                      p...
 21691 ms  0x7487 SECKEY_CreateECPrivateKey()
 21691 ms  0x7487 cx:0x7f52bcfa4c08
 21692 ms     | 0x7487 EC_ValidatePublicKey()
 21692 ms     | 0x7487 ret:0x0
 21692 ms  0x7487 ret:0x7f52bcdc9820::7f52bcdc9820  f0 7b d9 e4                                      .{..
 21692 ms  0x7487 SECKEY_CreateECPrivateKey()
 21692 ms  0x7487 cx:0x7f52bcfa4c08
 21692 ms     | 0x7487 EC_ValidatePublicKey()
 21694 ms     | 0x7487 ret:0x0
 21694 ms  0x7487 ret:0x7f52bcdcb820::7f52bcdcb820  90 1c 3f e5                                      ..?.
 21694 ms  0x7487 SECKEY_CreateECPrivateKey()
 21694 ms  0x7487 cx:0x7f52bcfa4a68
 21695 ms     | 0x7487 EC_ValidatePublicKey()
 21695 ms     | 0x7487 ret:0x0
 21695 ms  0x7487 ret:0x7f52bcdce020::7f52bcdce020  70 8e 41 e5                                      p.A.
 21695 ms  0x7487 SECKEY_CreateECPrivateKey()
 21695 ms  0x7487 cx:0x7f52bcfa4a68
 21695 ms     | 0x7487 EC_ValidatePublicKey()
 21697 ms     | 0x7487 ret:0x0
 21697 ms  0x7487 ret:0x7f52bcdd0020::7f52bcdd0020  d0 03 77 e5                                      ..w.
 21697 ms  0x7487 SECKEY_CreateECPrivateKey()
 21697 ms  0x7487 cx:0x7f52bcfa4728
 21698 ms     | 0x7487 EC_ValidatePublicKey()
 21698 ms     | 0x7487 ret:0x0
 21698 ms  0x7487 ret:0x7f52bcdd2820::7f52bcdd2820  b0 0a 77 e5                                      ..w.
 21698 ms  0x7487 SECKEY_CreateECPrivateKey()
 21698 ms  0x7487 cx:0x7f52bcfa4728
 21698 ms     | 0x7487 EC_ValidatePublicKey()
 21700 ms     | 0x7487 ret:0x0
 21700 ms  0x7487 ret:0x7f52bcc18020::7f52bcc18020  00 fb 7f e5                                      ....
 21700 ms  0x7487 SECKEY_CreateECPrivateKey()
 21700 ms  0x7487 cx:0x7f52bcfa5c48
 21701 ms     | 0x7487 EC_ValidatePublicKey()
 21701 ms     | 0x7487 ret:0x0
 21701 ms  0x7487 ret:0x7f52bcc1a820::7f52bcc1a820  60 7a 87 e7                                      `z..
 21701 ms  0x7487 SECKEY_CreateECPrivateKey()
 21701 ms  0x7487 cx:0x7f52bcfa5c48
 21702 ms     | 0x7487 EC_ValidatePublicKey()
 21703 ms     | 0x7487 ret:0x0
 21703 ms  0x7487 ret:0x7f52bcc1c820::7f52bcc1c820  f0 f1 d9 e7                                      ....
 21704 ms  0x7487 SECKEY_CreateECPrivateKey()
 21704 ms  0x7487 cx:0x7f52bcfa5aa8
 21704 ms     | 0x7487 EC_ValidatePublicKey()
 21704 ms     | 0x7487 ret:0x0
 21704 ms  0x7487 ret:0x7f52bcc1f020::7f52bcc1f020  30 f3 d9 e7                                      0...
 21704 ms  0x7487 SECKEY_CreateECPrivateKey()
 21704 ms  0x7487 cx:0x7f52bcfa5aa8
 21705 ms     | 0x7487 EC_ValidatePublicKey()
 21709 ms     | 0x7487 ret:0x0
 21709 ms  0x7487 ret:0x7f52bcc21020::7f52bcc21020  10 f5 d9 e7                                      ....
 21710 ms  0x7487 SSL_AuthCertificateComplete()
 21710 ms  0x7487 fd:0x7f52e0de4a30
 21710 ms  0x7487 err:0x0
 21710 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21710 ms     | 0x7487 privk:0x7f52c92d7020::7f52c92d7020  b0 20 91 e0                                      . ..
 21710 ms     | 0x7487 privk:0x7f52c92d7020::7f52c92d7020  e5 e5 e5 e5                                      ....
 21710 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21710 ms     | 0x7487 privk:0x7f52c92d4820::7f52c92d4820  a0 0b 9f e0                                      ....
 21710 ms     | 0x7487 privk:0x7f52c92d4820::7f52c92d4820  e5 e5 e5 e5                                      ....
 21710 ms  0x7487 PK11_Encrypt()
 21710 ms  0x7487 symkey:0x7f52dc57e100
 21711 ms  0x7487 PK11_Encrypt()
 21711 ms  0x7487 symkey:0x7f52db51f080
 21711 ms  0x7487 PK11_Encrypt()
 21711 ms  0x7487 symkey:0x7f52dfceb780
 21712 ms  0x7487 SSL_AuthCertificateComplete()
 21712 ms  0x7487 fd:0x7f52e0ee93d0
 21712 ms  0x7487 err:0x0
 21712 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21712 ms     | 0x7487 privk:0x7f52c92dd020::7f52c92dd020  20 f4 94 e0                                       ...
 21712 ms     | 0x7487 privk:0x7f52c92dd020::7f52c92dd020  e5 e5 e5 e5                                      ....
 21712 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21712 ms     | 0x7487 privk:0x7f52c92db020::7f52c92db020  90 2c 91 e0                                      .,..
 21712 ms     | 0x7487 privk:0x7f52c92db020::7f52c92db020  e5 e5 e5 e5                                      ....
           /* TID 0x7525 */
 21713 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21713 ms  0x7525 ret:0x0
 21714 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21714 ms  0x7525 ret:0x0
 21714 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21714 ms  0x7525 ret:0x0
           /* TID 0x748f */
 21715 ms  0x748f PR_Close()
 21715 ms  0x748f fd:0x7f52e37c05e0
 21717 ms  0x748f PR_Close()
 21717 ms  0x748f fd:0x7f52e462aa60
           /* TID 0x7487 */
 21719 ms  0x7487 PK11_Encrypt()
 21719 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 21720 ms  0x748f PR_Close()
 21720 ms  0x748f fd:0x7f52e462aa60
           /* TID 0x7487 */
 21723 ms  0x7487 SECKEY_DestroyPrivateKey()
 21723 ms  0x7487 privk:0x7f52c9274820::7f52c9274820  f0 7b 6e e0                                      .{n.
 21723 ms  0x7487 privk:0x7f52c9274820::7f52c9274820  e5 e5 e5 e5                                      ....
 21723 ms  0x7487 SECKEY_DestroyPrivateKey()
 21723 ms  0x7487 privk:0x7f52c9272820::7f52c9272820  70 34 45 df                                      p4E.
 21724 ms  0x7487 privk:0x7f52c9272820::7f52c9272820  e5 e5 e5 e5                                      ....
 21724 ms  0x7487 SECKEY_DestroyPrivateKey()
 21724 ms  0x7487 privk:0x7f52c9279020::7f52c9279020  f0 ab 71 e0                                      ..q.
 21724 ms  0x7487 privk:0x7f52c9279020::7f52c9279020  e5 e5 e5 e5                                      ....
 21724 ms  0x7487 SECKEY_DestroyPrivateKey()
 21724 ms  0x7487 privk:0x7f52c9277020::7f52c9277020  d0 1d 71 e0                                      ..q.
 21724 ms  0x7487 privk:0x7f52c9277020::7f52c9277020  e5 e5 e5 e5                                      ....
 21724 ms  0x7487 PK11_Encrypt()
 21724 ms  0x7487 symkey:0x7f52dd869e00
 21724 ms  0x7487 PK11_Encrypt()
 21724 ms  0x7487 symkey:0x7f52dd869e00
           /* TID 0x748f */
 21726 ms  0x748f PR_Close()
 21726 ms  0x748f fd:0x7f52e07fe520
           /* TID 0x7487 */
 21726 ms  0x7487 PK11_Encrypt()
 21726 ms  0x7487 symkey:0x7f52df4f5c00
 21727 ms  0x7487 PK11_Encrypt()
 21727 ms  0x7487 symkey:0x7f52df4f5c00
 21728 ms  0x7487 SECKEY_CreateDHPrivateKey()
 21728 ms  0x7487 cx:0x0
 21728 ms  0x7487 ret:7f52bcc30820  a0 76 6e e0                                      .vn.
 21728 ms  0x7487 PK11_PubDerive()
 21728 ms  0x7487 privkey0x7f52bcc30820
 21728 ms  0x7487 ret:0x7f52dd864880
 21728 ms  0x7487 PK11_DeriveWithFlags()
 21728 ms  0x7487 basekey:0x7f52dd864880
 21728 ms     | 0x7487 PK11_DeriveWithTemplate()
 21728 ms  0x7487 ret:0x7f52e87e5f00
 21728 ms  0x7487 PK11_Derive()
 21728 ms  0x7487 basekey:0x7f52e87e5f00
 21728 ms     | 0x7487 PK11_DeriveWithTemplate()
 21728 ms  0x7487 ret:0x7f52e87e5e80
 21728 ms  0x7487 SECKEY_DestroyPrivateKey()
 21728 ms  0x7487 privk:0x7f52bcc30820::7f52bcc30820  a0 76 6e e0                                      .vn.
 21728 ms  0x7487 privk:0x7f52bcc30820::7f52bcc30820  e5 e5 e5 e5                                      ....
 21729 ms  0x7487 SECKEY_CreateDHPrivateKey()
 21729 ms  0x7487 cx:0x0
 21729 ms  0x7487 ret:7f52bcc32020  f0 7b 6e e0                                      .{n.
 21729 ms  0x7487 PK11_PubDerive()
 21729 ms  0x7487 privkey0x7f52bcc32020
 21729 ms  0x7487 ret:0x7f52dd864880
 21729 ms  0x7487 PK11_DeriveWithFlags()
 21729 ms  0x7487 basekey:0x7f52dd864880
 21729 ms     | 0x7487 PK11_DeriveWithTemplate()
 21730 ms  0x7487 ret:0x7f52e460ac00
 21730 ms  0x7487 PK11_Derive()
 21730 ms  0x7487 basekey:0x7f52e460ac00
 21730 ms     | 0x7487 PK11_DeriveWithTemplate()
 21730 ms  0x7487 ret:0x7f52e891a280
 21730 ms  0x7487 SECKEY_DestroyPrivateKey()
 21730 ms  0x7487 privk:0x7f52bcc32020::7f52bcc32020  f0 7b 6e e0                                      .{n.
 21730 ms  0x7487 privk:0x7f52bcc32020::7f52bcc32020  e5 e5 e5 e5                                      ....
 21730 ms  SECKEY_ECParamsToKeySize()
 21730 ms  0x7487 ret:0xff
 21730 ms  0x7487 SECKEY_CreateECPrivateKey()
 21730 ms  0x7487 cx:0x7f52bcfa5288
 21731 ms     | 0x7487 EC_ValidatePublicKey()
 21731 ms     | 0x7487 ret:0x0
 21731 ms  0x7487 ret:0x7f52bcc34820::7f52bcc34820  c0 7e 6e e0                                      .~n.
 21731 ms  0x7487 PK11_PubDeriveWithKDF()
 21731 ms  0x7487 seckey:0x7f52bcc34820
 21731 ms     | 0x7487 EC_ValidatePublicKey()
 21731 ms     | 0x7487 ret:0x0
 21731 ms  0x7487 ret:0x7f52dd864880
 21731 ms  0x7487 PK11_DeriveWithFlags()
 21731 ms  0x7487 basekey:0x7f52dd864880
 21731 ms     | 0x7487 PK11_DeriveWithTemplate()
 21731 ms  0x7487 ret:0x7f52e8919c00
 21731 ms  0x7487 PK11_Derive()
 21731 ms  0x7487 basekey:0x7f52e8919c00
 21731 ms     | 0x7487 PK11_DeriveWithTemplate()
 21731 ms  0x7487 ret:0x7f52e8919c80
 21731 ms  0x7487 SECKEY_DestroyPrivateKey()
 21731 ms  0x7487 privk:0x7f52bcc34820::7f52bcc34820  c0 7e 6e e0                                      .~n.
 21732 ms  0x7487 privk:0x7f52bcc34820::7f52bcc34820  e5 e5 e5 e5                                      ....
 21732 ms  0x7487 PK11_Encrypt()
 21732 ms  0x7487 symkey:0x7f52e8919e80
 21732 ms  SECKEY_ECParamsToKeySize()
 21732 ms  0x7487 ret:0xff
 21732 ms  0x7487 SECKEY_CreateECPrivateKey()
 21732 ms  0x7487 cx:0x7f52c9289988
 21740 ms     | 0x7487 EC_ValidatePublicKey()
 21740 ms     | 0x7487 ret:0x0
 21740 ms  0x7487 ret:0x7f52bcc36020::7f52bcc36020  d0 1d 71 e0                                      ..q.
 21740 ms  0x7487 PK11_PubDeriveWithKDF()
 21740 ms  0x7487 seckey:0x7f52bcc36020
 21740 ms     | 0x7487 EC_ValidatePublicKey()
 21740 ms     | 0x7487 ret:0x0
 21741 ms  0x7487 ret:0x7f52dd864880
 21741 ms  0x7487 PK11_DeriveWithFlags()
 21741 ms  0x7487 basekey:0x7f52dd864880
 21741 ms     | 0x7487 PK11_DeriveWithTemplate()
 21741 ms  0x7487 ret:0x7f52e8967180
 21741 ms  0x7487 PK11_Derive()
 21741 ms  0x7487 basekey:0x7f52e8967180
 21741 ms     | 0x7487 PK11_DeriveWithTemplate()
 21741 ms  0x7487 ret:0x7f52e8967200
 21741 ms  0x7487 SECKEY_DestroyPrivateKey()
 21741 ms  0x7487 privk:0x7f52bcc36020::7f52bcc36020  d0 1d 71 e0                                      ..q.
 21741 ms  0x7487 privk:0x7f52bcc36020::7f52bcc36020  e5 e5 e5 e5                                      ....
 21741 ms  0x7487 PK11_Encrypt()
 21741 ms  0x7487 symkey:0x7f52e8967380
 21744 ms  0x7487 SECKEY_CreateECPrivateKey()
 21744 ms  0x7487 cx:0x7f52bcfa4248
 21745 ms     | 0x7487 EC_ValidatePublicKey()
 21745 ms     | 0x7487 ret:0x0
 21745 ms  0x7487 ret:0x7f52bcc36020::7f52bcc36020  70 14 71 e0                                      p.q.
 21745 ms  0x7487 SECKEY_CreateECPrivateKey()
 21745 ms  0x7487 cx:0x7f52bcfa4248
 21745 ms     | 0x7487 EC_ValidatePublicKey()
 21747 ms     | 0x7487 ret:0x0
 21747 ms  0x7487 ret:0x7f52bcd43820::7f52bcd43820  50 ab 71 e0                                      P.q.
 21747 ms  0x7487 PR_Connect()
 21747 ms  0x7487 fd:0x7f52e3702e50
 21749 ms  0x7487 SSL_AuthCertificateComplete()
 21749 ms  0x7487 fd:0x7f52e0ee92e0
 21749 ms  0x7487 err:0x0
 21749 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21749 ms     | 0x7487 privk:0x7f52c92e1820::7f52c92e1820  10 0f 9f e0                                      ....
 21749 ms     | 0x7487 privk:0x7f52c92e1820::7f52c92e1820  e5 e5 e5 e5                                      ....
 21750 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21750 ms     | 0x7487 privk:0x7f52c92df820::7f52c92df820  e0 0c 9f e0                                      ....
 21750 ms     | 0x7487 privk:0x7f52c92df820::7f52c92df820  e5 e5 e5 e5                                      ....
 21750 ms  0x7487 SSL_AuthCertificateComplete()
 21750 ms  0x7487 fd:0x7f52e36d5e80
 21750 ms  0x7487 err:0x0
 21750 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21750 ms     | 0x7487 privk:0x7f52dfb13820::7f52dfb13820  30 53 c7 e0                                      0S..
 21750 ms     | 0x7487 privk:0x7f52dfb13820::7f52dfb13820  e5 e5 e5 e5                                      ....
 21750 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21750 ms     | 0x7487 privk:0x7f52dfb0e020::7f52dfb0e020  b0 90 1a dc                                      ....
 21750 ms     | 0x7487 privk:0x7f52dfb0e020::7f52dfb0e020  e5 e5 e5 e5                                      ....
 21750 ms  0x7487 SSL_AuthCertificateComplete()
 21750 ms  0x7487 fd:0x7f52e36d5be0
 21750 ms  0x7487 err:0x0
 21750 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21750 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  d0 c8 2c e4                                      ..,.
 21750 ms     | 0x7487 privk:0x7f52e47e1020::7f52e47e1020  e5 e5 e5 e5                                      ....
 21750 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 21750 ms     | 0x7487 privk:0x7f52e0363020::7f52e0363020  80 33 2c e4                                      .3,.
 21750 ms     | 0x7487 privk:0x7f52e0363020::7f52e0363020  e5 e5 e5 e5                                      ....
 21751 ms  0x7487 PK11_Encrypt()
 21751 ms  0x7487 symkey:0x7f52db51f080
 21752 ms  0x7487 PR_Close()
 21752 ms  0x7487 fd:0x7f52dd8b3d30
 21753 ms  0x7487 PR_Close()
 21753 ms  0x7487 fd:0x7f52dd862e20
 21753 ms  0x7487 PR_Close()
 21753 ms  0x7487 fd:0x7f52dbdc8f10
 21753 ms  0x7487 PR_Close()
 21753 ms  0x7487 fd:0x7f52dc1ffa90
 21753 ms  0x7487 PR_Close()
 21753 ms  0x7487 fd:0x7f52dc5cf520
 21753 ms  0x7487 PR_Close()
 21753 ms  0x7487 fd:0x7f52dc5cf820
 21754 ms  0x7487 PR_Close()
 21754 ms  0x7487 fd:0x7f52dd8621f0
           /* TID 0x748f */
 21758 ms  0x748f PR_Close()
 21758 ms  0x748f fd:0x7f52dbdc8f10
           /* TID 0x7487 */
 21759 ms  0x7487 PK11_Encrypt()
 21759 ms  0x7487 symkey:0x7f52db843600
 21760 ms  0x7487 PK11_Encrypt()
 21760 ms  0x7487 symkey:0x7f52dd869e00
 21760 ms  0x7487 PK11_Encrypt()
 21760 ms  0x7487 symkey:0x7f52df4f5c00
 21762 ms  0x7487 PK11_Encrypt()
 21762 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 21764 ms  0x748f PR_Close()
 21764 ms  0x748f fd:0x7f52dbdc8f10
           /* TID 0x7487 */
 21765 ms  0x7487 PK11_Derive()
 21765 ms  0x7487 basekey:0x7f52dc5fd280
 21765 ms     | 0x7487 PK11_DeriveWithTemplate()
 21765 ms  0x7487 ret:0x7f52dc5fd200
 21765 ms  0x7487 PK11_PubDeriveWithKDF()
 21765 ms  0x7487 seckey:0x7f52bcdbc020
 21765 ms     | 0x7487 EC_ValidatePublicKey()
 21765 ms     | 0x7487 ret:0x0
 21765 ms  0x7487 ret:0x7f52dc5fd280
 21765 ms  SECKEY_ECParamsToKeySize()
 21765 ms  0x7487 ret:0xff
 21765 ms  0x7487 PK11_DeriveWithFlags()
 21765 ms  0x7487 basekey:0x7f52dc5fd200
 21765 ms     | 0x7487 PK11_DeriveWithTemplate()
 21765 ms  0x7487 ret:0x7f52dca6b400
 21765 ms  0x7487 PK11_Derive()
 21765 ms  0x7487 basekey:0x7f52dc5fd280
 21765 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dca6af80
 21766 ms  0x7487 PK11_DeriveWithFlags()
 21766 ms  0x7487 basekey:0x7f52dca6af80
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dc5fd200
 21766 ms  0x7487 PK11_DeriveWithFlags()
 21766 ms  0x7487 basekey:0x7f52dca6af80
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dc5fd280
 21766 ms  0x7487 PK11_DeriveWithFlags()
 21766 ms  0x7487 basekey:0x7f52dca6af80
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dca6b400
 21766 ms  0x7487 PK11_Derive()
 21766 ms  0x7487 basekey:0x7f52dcac0d00
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dcac0c80
 21766 ms  0x7487 PK11_DeriveWithFlags()
 21766 ms  0x7487 basekey:0x7f52dc5fd280
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dca6af80
 21766 ms  0x7487 PK11_DeriveWithFlags()
 21766 ms  0x7487 basekey:0x7f52dc5fd280
 21766 ms     | 0x7487 PK11_DeriveWithTemplate()
 21766 ms  0x7487 ret:0x7f52dca6b400
 21766 ms  SECKEY_ECParamsToKeySize()
 21766 ms  0x7487 ret:0x100
 21766 ms  SECKEY_ECParamsToBasePointOrderLen()
 21766 ms  0x7487 ret:0x100
 21766 ms  SECKEY_ECParamsToBasePointOrderLen()
 21766 ms  0x7487 ret:0x100
 21766 ms  0x7487 EC_ValidatePublicKey()
 21772 ms  0x7487 ret:0x0
 21774 ms  0x7487 PK11_DeriveWithFlags()
 21774 ms  0x7487 basekey:0x7f52dc5fd280
 21774 ms     | 0x7487 PK11_DeriveWithTemplate()
 21774 ms  0x7487 ret:0x7f52dca6b400
 21774 ms  SECKEY_ECParamsToKeySize()
 21774 ms  0x7487 ret:0x100
 21774 ms  0x7487 SECKEY_CreateECPrivateKey()
 21774 ms  0x7487 cx:0x7f52bcfa4f48
 21775 ms     | 0x7487 EC_ValidatePublicKey()
 21778 ms     | 0x7487 ret:0x0
 21778 ms  0x7487 ret:0x7f52c9274820::7f52c9274820  b0 f0 94 e0                                      ....
 21778 ms  0x7487 PK11_PubDeriveWithKDF()
 21778 ms  0x7487 seckey:0x7f52c9274820
 21778 ms     | 0x7487 EC_ValidatePublicKey()
 21780 ms     | 0x7487 ret:0x0
 21781 ms  0x7487 ret:0x7f52dca6b400
 21781 ms  0x7487 PK11_DeriveWithFlags()
 21781 ms  0x7487 basekey:0x7f52dca6b400
 21781 ms     | 0x7487 PK11_DeriveWithTemplate()
 21781 ms  0x7487 ret:0x7f52dcac0d00
 21781 ms  0x7487 PK11_Derive()
 21781 ms  0x7487 basekey:0x7f52dcac0d00
 21781 ms     | 0x7487 PK11_DeriveWithTemplate()
 21781 ms  0x7487 ret:0x7f52dd845d80
 21781 ms  0x7487 SECKEY_DestroyPrivateKey()
 21781 ms  0x7487 privk:0x7f52c9274820::7f52c9274820  b0 f0 94 e0                                      ....
 21781 ms  0x7487 privk:0x7f52c9274820::7f52c9274820  e5 e5 e5 e5                                      ....
 21782 ms  0x7487 PK11_Encrypt()
 21782 ms  0x7487 symkey:0x7f52dc5fd300
 21782 ms  SECKEY_ECParamsToKeySize()
 21782 ms  0x7487 ret:0x100
 21782 ms  0x7487 SECKEY_CreateECPrivateKey()
 21782 ms  0x7487 cx:0x7f52bcfa4da8
 21782 ms     | 0x7487 EC_ValidatePublicKey()
 21784 ms     | 0x7487 ret:0x0
 21784 ms  0x7487 ret:0x7f52c9276020::7f52c9276020  20 f4 94 e0                                       ...
 21784 ms  0x7487 PK11_PubDeriveWithKDF()
 21784 ms  0x7487 seckey:0x7f52c9276020
 21784 ms     | 0x7487 EC_ValidatePublicKey()
 21786 ms     | 0x7487 ret:0x0
 21788 ms  0x7487 ret:0x7f52dca6b400
 21788 ms  0x7487 PK11_DeriveWithFlags()
 21788 ms  0x7487 basekey:0x7f52dca6b400
 21788 ms     | 0x7487 PK11_DeriveWithTemplate()
 21788 ms  0x7487 ret:0x7f52dd845a80
 21788 ms  0x7487 PK11_Derive()
 21788 ms  0x7487 basekey:0x7f52dd845a80
 21788 ms     | 0x7487 PK11_DeriveWithTemplate()
 21788 ms  0x7487 ret:0x7f52dd846480
 21788 ms  0x7487 SECKEY_DestroyPrivateKey()
 21788 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  20 f4 94 e0                                       ...
 21788 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  e5 e5 e5 e5                                      ....
 21788 ms  0x7487 PK11_Encrypt()
 21788 ms  0x7487 symkey:0x7f52dca6b480
 21788 ms  SECKEY_ECParamsToKeySize()
 21788 ms  0x7487 ret:0xff
 21788 ms  0x7487 SECKEY_CreateECPrivateKey()
 21788 ms  0x7487 cx:0x7f52bcfa4c08
 21789 ms     | 0x7487 EC_ValidatePublicKey()
 21789 ms     | 0x7487 ret:0x0
 21789 ms  0x7487 ret:0x7f52c9277020::7f52c9277020  20 f4 94 e0                                       ...
 21789 ms  0x7487 PK11_PubDeriveWithKDF()
 21789 ms  0x7487 seckey:0x7f52c9277020
 21789 ms     | 0x7487 EC_ValidatePublicKey()
 21789 ms     | 0x7487 ret:0x0
 21789 ms  0x7487 ret:0x7f52dca6b400
 21789 ms  0x7487 PK11_DeriveWithFlags()
 21789 ms  0x7487 basekey:0x7f52dca6b400
 21789 ms     | 0x7487 PK11_DeriveWithTemplate()
 21789 ms  0x7487 ret:0x7f52dd846100
 21789 ms  0x7487 PK11_Derive()
 21789 ms  0x7487 basekey:0x7f52dd846100
 21789 ms     | 0x7487 PK11_DeriveWithTemplate()
 21789 ms  0x7487 ret:0x7f52dd846800
 21789 ms  0x7487 SECKEY_DestroyPrivateKey()
 21789 ms  0x7487 privk:0x7f52c9277020::7f52c9277020  20 f4 94 e0                                       ...
 21789 ms  0x7487 privk:0x7f52c9277020::7f52c9277020  e5 e5 e5 e5                                      ....
 21790 ms  0x7487 PK11_Encrypt()
 21790 ms  0x7487 symkey:0x7f52dd845280
 21790 ms  SECKEY_ECParamsToKeySize()
 21790 ms  0x7487 ret:0x100
 21790 ms  0x7487 SECKEY_CreateECPrivateKey()
 21790 ms  0x7487 cx:0x7f52bcfa4a68
 21796 ms     | 0x7487 EC_ValidatePublicKey()
 21798 ms     | 0x7487 ret:0x0
 21798 ms  0x7487 ret:0x7f52c9278020::7f52c9278020  50 0b 9f e0                                      P...
 21798 ms  0x7487 PK11_PubDeriveWithKDF()
 21798 ms  0x7487 seckey:0x7f52c9278020
 21798 ms     | 0x7487 EC_ValidatePublicKey()
 21799 ms     | 0x7487 ret:0x0
 21801 ms  0x7487 ret:0x7f52dca6b400
 21801 ms  0x7487 PK11_DeriveWithFlags()
 21801 ms  0x7487 basekey:0x7f52dca6b400
 21801 ms     | 0x7487 PK11_DeriveWithTemplate()
 21801 ms  0x7487 ret:0x7f52dd846780
 21801 ms  0x7487 PK11_Derive()
 21801 ms  0x7487 basekey:0x7f52dd846780
 21801 ms     | 0x7487 PK11_DeriveWithTemplate()
 21801 ms  0x7487 ret:0x7f52dd864880
 21801 ms  0x7487 SECKEY_DestroyPrivateKey()
 21801 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  50 0b 9f e0                                      P...
 21801 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  e5 e5 e5 e5                                      ....
 21802 ms  0x7487 PK11_Encrypt()
 21802 ms  0x7487 symkey:0x7f52dd845e80
 21802 ms  0x7487 PK11_Derive()
 21802 ms  0x7487 basekey:0x7f52dca6b400
 21802 ms     | 0x7487 PK11_DeriveWithTemplate()
 21802 ms  0x7487 ret:0x7f52dd846580
 21802 ms  0x7487 PK11_PubDeriveWithKDF()
 21802 ms  0x7487 seckey:0x7f52bcdd2820
 21802 ms     | 0x7487 EC_ValidatePublicKey()
 21802 ms     | 0x7487 ret:0x0
 21802 ms  0x7487 ret:0x7f52dca6b400
 21802 ms  SECKEY_ECParamsToKeySize()
 21802 ms  0x7487 ret:0xff
 21802 ms  0x7487 PK11_DeriveWithFlags()
 21802 ms  0x7487 basekey:0x7f52dd846580
 21802 ms     | 0x7487 PK11_DeriveWithTemplate()
 21802 ms  0x7487 ret:0x7f52dd846680
 21802 ms  0x7487 PK11_Derive()
 21802 ms  0x7487 basekey:0x7f52dca6b400
 21802 ms     | 0x7487 PK11_DeriveWithTemplate()
 21802 ms  0x7487 ret:0x7f52dd846500
 21802 ms  0x7487 PK11_DeriveWithFlags()
 21802 ms  0x7487 basekey:0x7f52dd846500
 21802 ms     | 0x7487 PK11_DeriveWithTemplate()
 21802 ms  0x7487 ret:0x7f52dd846580
 21803 ms  0x7487 PK11_DeriveWithFlags()
 21803 ms  0x7487 basekey:0x7f52dd846500
 21803 ms     | 0x7487 PK11_DeriveWithTemplate()
 21803 ms  0x7487 ret:0x7f52dca6b400
 21803 ms  0x7487 PK11_DeriveWithFlags()
 21803 ms  0x7487 basekey:0x7f52dd846500
 21803 ms     | 0x7487 PK11_DeriveWithTemplate()
 21803 ms  0x7487 ret:0x7f52dd846680
 21803 ms  0x7487 PK11_Derive()
 21803 ms  0x7487 basekey:0x7f52dd846600
 21803 ms     | 0x7487 PK11_DeriveWithTemplate()
 21803 ms  0x7487 ret:0x7f52dd846980
 21803 ms  0x7487 PK11_DeriveWithFlags()
 21803 ms  0x7487 basekey:0x7f52dca6b400
 21803 ms     | 0x7487 PK11_DeriveWithTemplate()
 21803 ms  0x7487 ret:0x7f52dd846500
 21803 ms  0x7487 PK11_DeriveWithFlags()
 21803 ms  0x7487 basekey:0x7f52dca6b400
 21803 ms     | 0x7487 PK11_DeriveWithTemplate()
 21803 ms  0x7487 ret:0x7f52dd846680
 21803 ms  SECKEY_ECParamsToKeySize()
 21803 ms  0x7487 ret:0x100
 21803 ms  SECKEY_ECParamsToBasePointOrderLen()
 21803 ms  0x7487 ret:0x100
 21803 ms  SECKEY_ECParamsToBasePointOrderLen()
 21803 ms  0x7487 ret:0x100
 21803 ms  0x7487 EC_ValidatePublicKey()
 21804 ms  0x7487 ret:0x0
 21806 ms  0x7487 PK11_DeriveWithFlags()
 21806 ms  0x7487 basekey:0x7f52dca6b400
 21806 ms     | 0x7487 PK11_DeriveWithTemplate()
 21806 ms  0x7487 ret:0x7f52dd846680
 21807 ms  0x7487 PK11_DeriveWithFlags()
 21807 ms  0x7487 basekey:0x7f52dd846680
 21807 ms     | 0x7487 PK11_DeriveWithTemplate()
 21807 ms  0x7487 ret:0x7f52dd846600
 21807 ms  0x7487 PK11_Derive()
 21807 ms  0x7487 basekey:0x7f52dd846600
 21807 ms     | 0x7487 PK11_DeriveWithTemplate()
 21807 ms  0x7487 ret:0x7f52dd846b00
           /* TID 0x748f */
 21821 ms  0x748f PR_Close()
 21821 ms  0x748f fd:0x7f52dd8b3490
           /* TID 0x7487 */
 21821 ms  0x7487 PK11_DeriveWithFlags()
 21821 ms  0x7487 basekey:0x7f52dd846680
 21821 ms     | 0x7487 PK11_DeriveWithTemplate()
 21821 ms  0x7487 ret:0x7f52dc1a1800
 21821 ms  0x7487 PK11_Derive()
 21821 ms  0x7487 basekey:0x7f52dc1a1800
 21821 ms     | 0x7487 PK11_DeriveWithTemplate()
 21821 ms  0x7487 ret:0x7f52e890d980
 21823 ms  0x7487 SECKEY_CreateECPrivateKey()
 21823 ms  0x7487 cx:0x7f52bcfa6608
 21823 ms     | 0x7487 EC_ValidatePublicKey()
 21823 ms     | 0x7487 ret:0x0
 21823 ms  0x7487 ret:0x7f52c92d3820::7f52c92d3820  40 0c 9f e0                                      @...
 21823 ms  0x7487 SECKEY_CreateECPrivateKey()
 21823 ms  0x7487 cx:0x7f52bcfa6608
 21824 ms     | 0x7487 EC_ValidatePublicKey()
 21826 ms     | 0x7487 ret:0x0
 21826 ms  0x7487 ret:0x7f52c92d5820::7f52c92d5820  c0 0e 9f e0                                      ....
 21827 ms  0x7487 PK11_Encrypt()
 21827 ms  0x7487 symkey:0x7f52e076ca00
 21828 ms  0x7487 PK11_Encrypt()
 21828 ms  0x7487 symkey:0x7f52e87e4e80
 21828 ms  0x7487 SECKEY_CreateECPrivateKey()
 21828 ms  0x7487 cx:0x7f5302aa72c8
 21829 ms     | 0x7487 EC_ValidatePublicKey()
 21829 ms     | 0x7487 ret:0x0
 21829 ms  0x7487 ret:0x7f52c92da820::7f52c92da820  40 e2 c4 e0                                      @...
 21829 ms  0x7487 SECKEY_CreateECPrivateKey()
 21829 ms  0x7487 cx:0x7f5302aa72c8
 21829 ms     | 0x7487 EC_ValidatePublicKey()
 21831 ms     | 0x7487 ret:0x0
 21831 ms  0x7487 ret:0x7f52c92dc820::7f52c92dc820  a0 96 e2 e0                                      ....
 21831 ms  0x7487 PK11_Encrypt()
 21831 ms  0x7487 symkey:0x7f52e87d4400
 21831 ms  0x7487 PK11_Encrypt()
 21831 ms  0x7487 symkey:0x7f52e87d4400
 21832 ms  0x7487 PK11_Derive()
 21832 ms  0x7487 basekey:0x7f52dd846680
 21832 ms     | 0x7487 PK11_DeriveWithTemplate()
 21832 ms  0x7487 ret:0x7f52e8968780
 21832 ms  0x7487 PK11_PubDeriveWithKDF()
 21832 ms  0x7487 seckey:0x7f52e579c820
 21832 ms     | 0x7487 EC_ValidatePublicKey()
 21832 ms     | 0x7487 ret:0x0
 21833 ms  0x7487 ret:0x7f52dd846680
 21833 ms  SECKEY_ECParamsToKeySize()
 21833 ms  0x7487 ret:0xff
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52e8968780
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968800
 21833 ms  0x7487 PK11_Derive()
 21833 ms  0x7487 basekey:0x7f52dd846680
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968880
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52e8968880
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968780
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52e8968880
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52dd846680
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52e8968880
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968800
 21833 ms  0x7487 PK11_Derive()
 21833 ms  0x7487 basekey:0x7f52e8968900
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968980
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52dd846680
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968880
 21833 ms  0x7487 PK11_DeriveWithFlags()
 21833 ms  0x7487 basekey:0x7f52dd846680
 21833 ms     | 0x7487 PK11_DeriveWithTemplate()
 21833 ms  0x7487 ret:0x7f52e8968800
 21833 ms  SECKEY_ECParamsToKeySize()
 21833 ms  0x7487 ret:0x100
 21833 ms  SECKEY_ECParamsToBasePointOrderLen()
 21833 ms  0x7487 ret:0x100
 21833 ms  SECKEY_ECParamsToBasePointOrderLen()
 21833 ms  0x7487 ret:0x100
 21833 ms  0x7487 EC_ValidatePublicKey()
 21834 ms  0x7487 ret:0x0
 21837 ms  0x7487 PK11_DeriveWithFlags()
 21837 ms  0x7487 basekey:0x7f52dd846680
 21837 ms     | 0x7487 PK11_DeriveWithTemplate()
 21837 ms  0x7487 ret:0x7f52e8968800
 21837 ms  SECKEY_ECParamsToKeySize()
 21837 ms  0x7487 ret:0x100
 21837 ms  0x7487 SECKEY_CreateECPrivateKey()
 21837 ms  0x7487 cx:0x7f52bcfa43e8
 21838 ms     | 0x7487 EC_ValidatePublicKey()
 21841 ms     | 0x7487 ret:0x0
 21841 ms  0x7487 ret:0x7f52dfb0e820::7f52dfb0e820  10 0a 2e e4                                      ....
 21841 ms  0x7487 PK11_PubDeriveWithKDF()
 21841 ms  0x7487 seckey:0x7f52dfb0e820
 21841 ms     | 0x7487 EC_ValidatePublicKey()
 21843 ms     | 0x7487 ret:0x0
 21844 ms  0x7487 ret:0x7f52e8968800
 21844 ms  0x7487 PK11_DeriveWithFlags()
 21844 ms  0x7487 basekey:0x7f52e8968800
 21844 ms     | 0x7487 PK11_DeriveWithTemplate()
 21844 ms  0x7487 ret:0x7f52e8968900
 21844 ms  0x7487 PK11_Derive()
 21844 ms  0x7487 basekey:0x7f52e8968900
 21844 ms     | 0x7487 PK11_DeriveWithTemplate()
 21844 ms  0x7487 ret:0x7f52e8968a80
 21844 ms  0x7487 SECKEY_DestroyPrivateKey()
 21844 ms  0x7487 privk:0x7f52dfb0e820::7f52dfb0e820  10 0a 2e e4                                      ....
 21844 ms  0x7487 privk:0x7f52dfb0e820::7f52dfb0e820  e5 e5 e5 e5                                      ....
 21845 ms  0x7487 PK11_Encrypt()
 21845 ms  0x7487 symkey:0x7f52e8968c00
 21852 ms  0x7487 SSL_ImportFD()
 21852 ms  0x7487 ret:0x7f52e3714430
 21852 ms  0x7487 SSL_AuthCertificateHook()
 21852 ms  0x7487 fd:0x7f52e3714430
 21852 ms  0x7487 ret:0x0
 21852 ms  0x7487 PR_Connect()
 21852 ms  0x7487 fd:0x7f52e3714430
 21852 ms  0x7487 SSL_ImportFD()
 21852 ms  0x7487 ret:0x7f52dc1ff220
 21852 ms  0x7487 SSL_AuthCertificateHook()
 21852 ms  0x7487 fd:0x7f52dc1ff220
 21852 ms  0x7487 ret:0x0
 21852 ms  0x7487 PR_Connect()
 21852 ms  0x7487 fd:0x7f52dc1ff220
 21853 ms  0x7487 SSL_ImportFD()
 21853 ms  0x7487 ret:0x7f52dc1ff8b0
 21853 ms  0x7487 SSL_AuthCertificateHook()
 21853 ms  0x7487 fd:0x7f52dc1ff8b0
 21853 ms  0x7487 ret:0x0
 21853 ms  0x7487 PR_Connect()
 21853 ms  0x7487 fd:0x7f52dc1ff8b0
 21853 ms  0x7487 SSL_ImportFD()
 21853 ms  0x7487 ret:0x7f52dc1ff970
 21853 ms  0x7487 SSL_AuthCertificateHook()
 21853 ms  0x7487 fd:0x7f52dc1ff970
 21853 ms  0x7487 ret:0x0
 21853 ms  0x7487 PR_Connect()
 21853 ms  0x7487 fd:0x7f52dc1ff970
 21853 ms  0x7487 SSL_ImportFD()
 21853 ms  0x7487 ret:0x7f52dc1ffa90
 21853 ms  0x7487 SSL_AuthCertificateHook()
 21853 ms  0x7487 fd:0x7f52dc1ffa90
 21853 ms  0x7487 ret:0x0
 21854 ms  0x7487 PR_Connect()
 21854 ms  0x7487 fd:0x7f52dc1ffa90
 21854 ms  0x7487 SSL_ImportFD()
 21854 ms  0x7487 ret:0x7f52dc5cf520
 21854 ms  0x7487 SSL_AuthCertificateHook()
 21854 ms  0x7487 fd:0x7f52dc5cf520
 21854 ms  0x7487 ret:0x0
 21854 ms  0x7487 PR_Connect()
 21854 ms  0x7487 fd:0x7f52dc5cf520
 21854 ms  0x7487 SSL_ImportFD()
 21854 ms  0x7487 ret:0x7f52dc5cf820
 21854 ms  0x7487 SSL_AuthCertificateHook()
 21854 ms  0x7487 fd:0x7f52dc5cf820
 21854 ms  0x7487 ret:0x0
 21854 ms  0x7487 PR_Connect()
 21854 ms  0x7487 fd:0x7f52dc5cf820
 21854 ms  0x7487 SSL_ImportFD()
 21854 ms  0x7487 ret:0x7f52dd8620a0
 21854 ms  0x7487 SSL_AuthCertificateHook()
 21854 ms  0x7487 fd:0x7f52dd8620a0
 21854 ms  0x7487 ret:0x0
 21855 ms  0x7487 PR_Connect()
 21855 ms  0x7487 fd:0x7f52dd8620a0
 21855 ms  0x7487 SSL_ImportFD()
 21855 ms  0x7487 ret:0x7f52dd862190
 21855 ms  0x7487 SSL_AuthCertificateHook()
 21855 ms  0x7487 fd:0x7f52dd862190
 21855 ms  0x7487 ret:0x0
 21855 ms  0x7487 PR_Connect()
 21855 ms  0x7487 fd:0x7f52dd862190
 21855 ms  0x7487 SSL_ImportFD()
 21855 ms  0x7487 ret:0x7f52dd8621f0
 21855 ms  0x7487 SSL_AuthCertificateHook()
 21855 ms  0x7487 fd:0x7f52dd8621f0
 21855 ms  0x7487 ret:0x0
 21855 ms  0x7487 PR_Connect()
 21855 ms  0x7487 fd:0x7f52dd8621f0
 21856 ms  0x7487 SSL_ImportFD()
 21856 ms  0x7487 ret:0x7f52dd862280
 21856 ms  0x7487 SSL_AuthCertificateHook()
 21856 ms  0x7487 fd:0x7f52dd862280
 21856 ms  0x7487 ret:0x0
 21856 ms  0x7487 PR_Connect()
 21856 ms  0x7487 fd:0x7f52dd862280
 21856 ms  0x7487 SSL_ImportFD()
 21856 ms  0x7487 ret:0x7f52dd862490
 21856 ms  0x7487 SSL_AuthCertificateHook()
 21856 ms  0x7487 fd:0x7f52dd862490
 21856 ms  0x7487 ret:0x0
 21856 ms  0x7487 PR_Connect()
 21856 ms  0x7487 fd:0x7f52dd862490
 21856 ms  0x7487 SSL_ImportFD()
 21857 ms  0x7487 ret:0x7f52dd862b50
 21857 ms  0x7487 SSL_AuthCertificateHook()
 21857 ms  0x7487 fd:0x7f52dd862b50
 21857 ms  0x7487 ret:0x0
 21857 ms  0x7487 PR_Connect()
 21857 ms  0x7487 fd:0x7f52dd862b50
 21857 ms  0x7487 SSL_ImportFD()
 21857 ms  0x7487 ret:0x7f52dd862bb0
 21857 ms  0x7487 SSL_AuthCertificateHook()
 21857 ms  0x7487 fd:0x7f52dd862bb0
 21857 ms  0x7487 ret:0x0
 21857 ms  0x7487 PR_Connect()
 21857 ms  0x7487 fd:0x7f52dd862bb0
 21857 ms  0x7487 PK11_Encrypt()
 21857 ms  0x7487 symkey:0x7f52db843600
           /* TID 0x748f */
 21858 ms  0x748f PR_Close()
 21858 ms  0x748f fd:0x7f52dd862f10
           /* TID 0x7487 */
 21862 ms  0x7487 PK11_Encrypt()
 21862 ms  0x7487 symkey:0x7f52dfceb780
           /* TID 0x748f */
 21863 ms  0x748f PR_Close()
 21863 ms  0x748f fd:0x7f52dd862f10
           /* TID 0x7487 */
 21867 ms  0x7487 PR_Connect()
 21867 ms  0x7487 fd:0x7f52e0d9ff10
 21867 ms  0x7487 PK11_Encrypt()
 21867 ms  0x7487 symkey:0x7f52dd869e00
 21868 ms  0x7487 PK11_Encrypt()
 21868 ms  0x7487 symkey:0x7f52db51f080
 21868 ms  0x7487 PK11_DeriveWithFlags()
 21868 ms  0x7487 basekey:0x7f52e8968800
 21868 ms     | 0x7487 PK11_DeriveWithTemplate()
 21868 ms  0x7487 ret:0x7f52e8975480
 21868 ms  0x7487 PK11_Derive()
 21868 ms  0x7487 basekey:0x7f52e8975480
 21869 ms     | 0x7487 PK11_DeriveWithTemplate()
 21869 ms  0x7487 ret:0x7f52e8975500
 21869 ms  0x7487 PK11_Encrypt()
 21869 ms  0x7487 symkey:0x7f52e87d4400
           /* TID 0x748f */
 21870 ms  0x748f PR_Close()
 21870 ms  0x748f fd:0x7f52e87a0880
           /* TID 0x7525 */
 21871 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21871 ms  0x7525 ret:0x0
           /* TID 0x748f */
 21872 ms  0x748f PR_Close()
 21872 ms  0x748f fd:0x7f52e7d3a4f0
           /* TID 0x752b */
 21872 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21872 ms  0x752b ret:0x0
 21874 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21874 ms  0x752b ret:0x0
 21874 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21874 ms  0x752b ret:0x0
           /* TID 0x748f */
 21877 ms  0x748f PR_Close()
 21877 ms  0x748f fd:0x7f52e7d3a250
 21878 ms  0x748f PR_Close()
 21878 ms  0x748f fd:0x7f52e3714850
 21879 ms  0x748f PR_Close()
 21879 ms  0x748f fd:0x7f52e3714850
           /* TID 0x74e3 */
 22881 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22889 ms  0x74e3 ret:0x0
 22889 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22889 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 22898 ms  0x748f PR_Close()
 22898 ms  0x748f fd:0x7f52e89075e0
           /* TID 0x7527 */
 22898 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 22898 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 24894 ms  SECKEY_ECParamsToKeySize()
 24899 ms  0x7487 ret:0x100
 24899 ms  0x7487 SECKEY_CreateECPrivateKey()
 24899 ms  0x7487 cx:0x7f5302aa72c8
 24901 ms     | 0x7487 EC_ValidatePublicKey()
 24905 ms     | 0x7487 ret:0x0
 24905 ms  0x7487 ret:0x7f52dfbc9820::7f52dfbc9820  a0 f6 d9 e7                                      ....
 24905 ms  0x7487 PK11_PubDeriveWithKDF()
 24905 ms  0x7487 seckey:0x7f52dfbc9820
 24905 ms     | 0x7487 EC_ValidatePublicKey()
 24910 ms     | 0x7487 ret:0x0
 24914 ms  0x7487 ret:0x7f52e8968800
 24914 ms  0x7487 PK11_DeriveWithFlags()
 24914 ms  0x7487 basekey:0x7f52e8968800
 24914 ms     | 0x7487 PK11_DeriveWithTemplate()
 24914 ms  0x7487 ret:0x7f52e47aae80
 24914 ms  0x7487 PK11_Derive()
 24914 ms  0x7487 basekey:0x7f52e47aae80
 24914 ms     | 0x7487 PK11_DeriveWithTemplate()
 24914 ms  0x7487 ret:0x7f52e49db180
 24914 ms  0x7487 SECKEY_DestroyPrivateKey()
 24914 ms  0x7487 privk:0x7f52dfbc9820::7f52dfbc9820  a0 f6 d9 e7                                      ....
 24914 ms  0x7487 privk:0x7f52dfbc9820::7f52dfbc9820  e5 e5 e5 e5                                      ....
 24915 ms  0x7487 PK11_Encrypt()
 24915 ms  0x7487 symkey:0x7f52e4dd8b80
           /* TID 0x74e3 */
 25917 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 25917 ms  0x74e3 ret:0x0
 25917 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 25918 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 25920 ms  SECKEY_ECParamsToKeySize()
 25920 ms  0x7487 ret:0x100
 25920 ms  0x7487 SECKEY_CreateECPrivateKey()
 25920 ms  0x7487 cx:0x7f52bcfa4248
 25922 ms     | 0x7487 EC_ValidatePublicKey()
 25925 ms     | 0x7487 ret:0x0
 25925 ms  0x7487 ret:0x7f52dfbde020::7f52dfbde020  a0 fb d9 e7                                      ....
 25925 ms  0x7487 PK11_PubDeriveWithKDF()
 25925 ms  0x7487 seckey:0x7f52dfbde020
 25925 ms     | 0x7487 EC_ValidatePublicKey()
 25933 ms     | 0x7487 ret:0x0
 25936 ms  0x7487 ret:0x7f52e8968800
 25936 ms  0x7487 PK11_DeriveWithFlags()
 25936 ms  0x7487 basekey:0x7f52e8968800
 25936 ms     | 0x7487 PK11_DeriveWithTemplate()
 25936 ms  0x7487 ret:0x7f52e7d81b80
 25936 ms  0x7487 PK11_Derive()
 25936 ms  0x7487 basekey:0x7f52e7d81b80
 25936 ms     | 0x7487 PK11_DeriveWithTemplate()
 25936 ms  0x7487 ret:0x7f52e870d100
 25936 ms  0x7487 SECKEY_DestroyPrivateKey()
 25936 ms  0x7487 privk:0x7f52dfbde020::7f52dfbde020  a0 fb d9 e7                                      ....
 25936 ms  0x7487 privk:0x7f52dfbde020::7f52dfbde020  e5 e5 e5 e5                                      ....
 25936 ms  0x7487 PK11_Encrypt()
 25936 ms  0x7487 symkey:0x7f52e870e000
 25941 ms  0x7487 PR_Close()
 25941 ms  0x7487 fd:0x7f52e0e33bb0
 25942 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25942 ms     | 0x7487 privk:0x7f52bcd43820::7f52bcd43820  50 ab 71 e0                                      P.q.
 25943 ms     | 0x7487 privk:0x7f52bcd43820::7f52bcd43820  e5 e5 e5 e5                                      ....
 25943 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25943 ms     | 0x7487 privk:0x7f52bcc36020::7f52bcc36020  70 14 71 e0                                      p.q.
 25943 ms     | 0x7487 privk:0x7f52bcc36020::7f52bcc36020  e5 e5 e5 e5                                      ....
 25943 ms  0x7487 PR_Close()
 25943 ms  0x7487 fd:0x7f52e06befa0
 25943 ms     | 0x7487 PK11_Encrypt()
 25943 ms     | 0x7487 symkey:0x7f52e0cb9580
 25943 ms  0x7487 PR_Close()
 25943 ms  0x7487 fd:0x7f52e06be0a0
 25943 ms     | 0x7487 PK11_Encrypt()
 25943 ms     | 0x7487 symkey:0x7f52e0cb8a00
 25943 ms  0x7487 PR_Close()
 25943 ms  0x7487 fd:0x7f52e07fe100
 25943 ms     | 0x7487 PK11_Encrypt()
 25943 ms     | 0x7487 symkey:0x7f52e0a69400
 25944 ms  0x7487 SSL_AuthCertificateComplete()
 25944 ms  0x7487 fd:0x7f52e0ee9340
 25944 ms  0x7487 err:0x0
 25944 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25944 ms     | 0x7487 privk:0x7f52e47e7020::7f52e47e7020  90 1c d1 e0                                      ....
 25944 ms     | 0x7487 privk:0x7f52e47e7020::7f52e47e7020  e5 e5 e5 e5                                      ....
 25944 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25944 ms     | 0x7487 privk:0x7f52c92eb020::7f52c92eb020  70 ae d6 db                                      p...
 25944 ms     | 0x7487 privk:0x7f52c92eb020::7f52c92eb020  e5 e5 e5 e5                                      ....
 25944 ms  0x7487 SSL_AuthCertificateComplete()
 25944 ms  0x7487 fd:0x7f52e0e1c280
 25944 ms  0x7487 err:0x0
 25944 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25944 ms     | 0x7487 privk:0x7f52dfb46020::7f52dfb46020  50 51 75 e3                                      PQu.
 25944 ms     | 0x7487 privk:0x7f52dfb46020::7f52dfb46020  e5 e5 e5 e5                                      ....
 25944 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25944 ms     | 0x7487 privk:0x7f52dfb44020::7f52dfb44020  50 5b 71 e3                                      P[q.
 25944 ms     | 0x7487 privk:0x7f52dfb44020::7f52dfb44020  e5 e5 e5 e5                                      ....
 25945 ms  0x7487 PK11_Encrypt()
 25945 ms  0x7487 symkey:0x7f52df4f5c00
 25945 ms  0x7487 SSL_AuthCertificateComplete()
 25945 ms  0x7487 fd:0x7f52e36d5fa0
 25945 ms  0x7487 err:0x0
 25946 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25946 ms     | 0x7487 privk:0x7f52bce16020::7f52bce16020  c0 0e 2e e4                                      ....
 25946 ms     | 0x7487 privk:0x7f52bce16020::7f52bce16020  e5 e5 e5 e5                                      ....
 25946 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25946 ms     | 0x7487 privk:0x7f52bce14020::7f52bce14020  e0 0c 2e e4                                      ....
 25946 ms     | 0x7487 privk:0x7f52bce14020::7f52bce14020  e5 e5 e5 e5                                      ....
 25946 ms  0x7487 SSL_AuthCertificateComplete()
 25946 ms  0x7487 fd:0x7f52e0e33cd0
 25946 ms  0x7487 err:0x0
 25946 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25946 ms     | 0x7487 privk:0x7f52bce20020::7f52bce20020  50 9b 60 e4                                      P.`.
 25946 ms     | 0x7487 privk:0x7f52bce20020::7f52bce20020  e5 e5 e5 e5                                      ....
 25946 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25946 ms     | 0x7487 privk:0x7f52bce1e020::7f52bce1e020  20 99 60 e4                                       .`.
 25946 ms     | 0x7487 privk:0x7f52bce1e020::7f52bce1e020  e5 e5 e5 e5                                      ....
 25946 ms  0x7487 SSL_AuthCertificateComplete()
 25946 ms  0x7487 fd:0x7f52e0ee93a0
 25946 ms  0x7487 err:0x0
 25946 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25946 ms     | 0x7487 privk:0x7f52dfb2f020::7f52dfb2f020  00 96 e2 e0                                      ....
 25947 ms     | 0x7487 privk:0x7f52dfb2f020::7f52dfb2f020  e5 e5 e5 e5                                      ....
 25947 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25947 ms     | 0x7487 privk:0x7f52ea40f820::7f52ea40f820  40 bc e1 e0                                      @...
 25947 ms     | 0x7487 privk:0x7f52ea40f820::7f52ea40f820  e5 e5 e5 e5                                      ....
 25947 ms  0x7487 PK11_Encrypt()
 25947 ms  0x7487 symkey:0x7f52e87d4400
 25947 ms  0x7487 PK11_Encrypt()
 25947 ms  0x7487 symkey:0x7f52c98b6800
 25948 ms  0x7487 PK11_Encrypt()
 25948 ms  0x7487 symkey:0x7f52e540b880
 25948 ms  0x7487 SSL_AuthCertificateComplete()
 25948 ms  0x7487 fd:0x7f52e0e02670
 25948 ms  0x7487 err:0x0
 25948 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25948 ms     | 0x7487 privk:0x7f52e47f4820::7f52e47f4820  20 04 2e e4                                       ...
 25948 ms     | 0x7487 privk:0x7f52e47f4820::7f52e47f4820  e5 e5 e5 e5                                      ....
 25948 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25948 ms     | 0x7487 privk:0x7f52e47ee020::7f52e47ee020  10 ca 2c e4                                      ..,.
 25948 ms     | 0x7487 privk:0x7f52e47ee020::7f52e47ee020  e5 e5 e5 e5                                      ....
 25948 ms  0x7487 SSL_AuthCertificateComplete()
 25948 ms  0x7487 fd:0x7f52e0ee9400
 25948 ms  0x7487 err:0x0
 25948 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25948 ms     | 0x7487 privk:0x7f52dfb1d020::7f52dfb1d020  c0 84 d4 e0                                      ....
 25948 ms     | 0x7487 privk:0x7f52dfb1d020::7f52dfb1d020  e5 e5 e5 e5                                      ....
 25948 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25948 ms     | 0x7487 privk:0x7f52dfb1b020::7f52dfb1b020  60 2f d1 e0                                      `/..
 25948 ms     | 0x7487 privk:0x7f52dfb1b020::7f52dfb1b020  e5 e5 e5 e5                                      ....
 25949 ms  0x7487 SSL_AuthCertificateComplete()
 25949 ms  0x7487 fd:0x7f52e0e339a0
 25949 ms  0x7487 err:0x0
 25949 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25949 ms     | 0x7487 privk:0x7f52bce24820::7f52bce24820  70 9e 60 e4                                      p.`.
 25949 ms     | 0x7487 privk:0x7f52bce24820::7f52bce24820  e5 e5 e5 e5                                      ....
 25949 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25949 ms     | 0x7487 privk:0x7f52bce22820::7f52bce22820  90 9c 60 e4                                      ..`.
 25949 ms     | 0x7487 privk:0x7f52bce22820::7f52bce22820  e5 e5 e5 e5                                      ....
 25949 ms  0x7487 SSL_AuthCertificateComplete()
 25949 ms  0x7487 fd:0x7f52e0c73a90
 25949 ms  0x7487 err:0x0
 25949 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25949 ms     | 0x7487 privk:0x7f52c92e7020::7f52c92e7020  80 c3 9d e4                                      ....
 25949 ms     | 0x7487 privk:0x7f52c92e7020::7f52c92e7020  e5 e5 e5 e5                                      ....
 25949 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25949 ms     | 0x7487 privk:0x7f52bce29020::7f52bce29020  50 c1 9d e4                                      P...
 25949 ms     | 0x7487 privk:0x7f52bce29020::7f52bce29020  e5 e5 e5 e5                                      ....
 25949 ms  0x7487 SSL_AuthCertificateComplete()
 25949 ms  0x7487 fd:0x7f52e46674c0
 25949 ms  0x7487 err:0x0
 25949 ms     | 0x7487 PK11_DeriveWithFlags()
 25949 ms     | 0x7487 basekey:0x7f52dcac0c80
 25949 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25949 ms     | 0x7487 ret:0x7f52dfceb480
 25949 ms     | 0x7487 PK11_DeriveWithFlags()
 25949 ms     | 0x7487 basekey:0x7f52dcac0c80
 25949 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25949 ms     | 0x7487 ret:0x7f52dd8cd680
 25949 ms     | 0x7487 PK11_DeriveWithFlags()
 25949 ms     | 0x7487 basekey:0x7f52dcac0c80
 25949 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25949 ms     | 0x7487 ret:0x7f52dd864280
 25949 ms     | 0x7487 PK11_DeriveWithFlags()
 25949 ms     | 0x7487 basekey:0x7f52dc5fd200
 25949 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25949 ms     | 0x7487 ret:0x7f52dd87d300
 25949 ms     | 0x7487 PK11_DeriveWithFlags()
 25949 ms     | 0x7487 basekey:0x7f52dc5fd200
 25949 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dd87dc80
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dd8cd680
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dd87dc80
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dd8cd680
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dd87d500
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dc5fd200
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dca6af80
 25950 ms     | 0x7487 PK11_Encrypt()
 25950 ms     | 0x7487 symkey:0x7f52dd87d300
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dfceb480
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dca6af80
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dfceb480
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dd87d500
 25950 ms     | 0x7487 PK11_DeriveWithFlags()
 25950 ms     | 0x7487 basekey:0x7f52dcac0c80
 25950 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25950 ms     | 0x7487 ret:0x7f52dd87d300
 25950 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25950 ms     | 0x7487 privk:0x7f52bcdbe020::7f52bcdbe020  d0 dd 9e e4                                      ....
 25950 ms     | 0x7487 privk:0x7f52bcdbe020::7f52bcdbe020  e5 e5 e5 e5                                      ....
 25950 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25950 ms     | 0x7487 privk:0x7f52bcdbc020::7f52bcdbc020  60 da 9e e4                                      `...
 25950 ms     | 0x7487 privk:0x7f52bcdbc020::7f52bcdbc020  e5 e5 e5 e5                                      ....
 25950 ms  0x7487 SSL_AuthCertificateComplete()
 25950 ms  0x7487 fd:0x7f52e37c0220
 25950 ms  0x7487 err:0x0
 25950 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25950 ms     | 0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  c0 f9 a8 e4                                      ....
 25950 ms     | 0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  e5 e5 e5 e5                                      ....
 25950 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25950 ms     | 0x7487 privk:0x7f52bcdc0820::7f52bcdc0820  60 f5 a8 e4                                      `...
 25950 ms     | 0x7487 privk:0x7f52bcdc0820::7f52bcdc0820  e5 e5 e5 e5                                      ....
 25951 ms  0x7487 SSL_AuthCertificateComplete()
 25951 ms  0x7487 fd:0x7f52e0e33ca0
 25951 ms  0x7487 err:0x0
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52c92e6820::7f52c92e6820  60 45 af e0                                      `E..
 25951 ms     | 0x7487 privk:0x7f52c92e6820::7f52c92e6820  e5 e5 e5 e5                                      ....
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52c92e5020::7f52c92e5020  10 55 a1 e0                                      .U..
 25951 ms     | 0x7487 privk:0x7f52c92e5020::7f52c92e5020  e5 e5 e5 e5                                      ....
 25951 ms  0x7487 SSL_AuthCertificateComplete()
 25951 ms  0x7487 fd:0x7f52e37147f0
 25951 ms  0x7487 err:0x0
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52bcdcb820::7f52bcdcb820  90 1c 3f e5                                      ..?.
 25951 ms     | 0x7487 privk:0x7f52bcdcb820::7f52bcdcb820  e5 e5 e5 e5                                      ....
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52bcdc9820::7f52bcdc9820  f0 7b d9 e4                                      .{..
 25951 ms     | 0x7487 privk:0x7f52bcdc9820::7f52bcdc9820  e5 e5 e5 e5                                      ....
 25951 ms  0x7487 SSL_AuthCertificateComplete()
 25951 ms  0x7487 fd:0x7f52e0e024f0
 25951 ms  0x7487 err:0x0
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52bcdd0020::7f52bcdd0020  d0 03 77 e5                                      ..w.
 25951 ms     | 0x7487 privk:0x7f52bcdd0020::7f52bcdd0020  e5 e5 e5 e5                                      ....
 25951 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25951 ms     | 0x7487 privk:0x7f52bcdce020::7f52bcdce020  70 8e 41 e5                                      p.A.
 25951 ms     | 0x7487 privk:0x7f52bcdce020::7f52bcdce020  e5 e5 e5 e5                                      ....
 25951 ms  0x7487 SSL_AuthCertificateComplete()
 25951 ms  0x7487 fd:0x7f52e3702520
 25951 ms  0x7487 err:0x0
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846980
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dc5fd280
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846980
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dc5fd200
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846980
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dcac0c80
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846580
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dd87d500
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846580
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52e870d100
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dc5fd200
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52e870d100
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dc5fd200
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52e7d81b80
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dd846580
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dd846500
 25966 ms     | 0x7487 PK11_Encrypt()
 25966 ms     | 0x7487 symkey:0x7f52dd87d500
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dc5fd280
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25966 ms     | 0x7487 ret:0x7f52dd846500
 25966 ms     | 0x7487 PK11_DeriveWithFlags()
 25966 ms     | 0x7487 basekey:0x7f52dc5fd280
 25966 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25967 ms     | 0x7487 ret:0x7f52e7d81b80
 25967 ms     | 0x7487 PK11_DeriveWithFlags()
 25967 ms     | 0x7487 basekey:0x7f52dd846980
 25967 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25967 ms     | 0x7487 ret:0x7f52dd87d500
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcc18020::7f52bcc18020  00 fb 7f e5                                      ....
 25967 ms     | 0x7487 privk:0x7f52bcc18020::7f52bcc18020  e5 e5 e5 e5                                      ....
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  b0 0a 77 e5                                      ..w.
 25967 ms     | 0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  e5 e5 e5 e5                                      ....
 25967 ms  0x7487 SSL_AuthCertificateComplete()
 25967 ms  0x7487 fd:0x7f52e5055970
 25967 ms  0x7487 err:0x0
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcc1c820::7f52bcc1c820  f0 f1 d9 e7                                      ....
 25967 ms     | 0x7487 privk:0x7f52bcc1c820::7f52bcc1c820  e5 e5 e5 e5                                      ....
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcc1a820::7f52bcc1a820  60 7a 87 e7                                      `z..
 25967 ms     | 0x7487 privk:0x7f52bcc1a820::7f52bcc1a820  e5 e5 e5 e5                                      ....
 25967 ms  0x7487 SSL_AuthCertificateComplete()
 25967 ms  0x7487 fd:0x7f52e5055550
 25967 ms  0x7487 err:0x0
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcc21020::7f52bcc21020  10 f5 d9 e7                                      ....
 25967 ms     | 0x7487 privk:0x7f52bcc21020::7f52bcc21020  e5 e5 e5 e5                                      ....
 25967 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25967 ms     | 0x7487 privk:0x7f52bcc1f020::7f52bcc1f020  30 f3 d9 e7                                      0...
 25968 ms     | 0x7487 privk:0x7f52bcc1f020::7f52bcc1f020  e5 e5 e5 e5                                      ....
 25968 ms  0x7487 SSL_AuthCertificateComplete()
 25968 ms  0x7487 fd:0x7f52e53d97f0
 25968 ms  0x7487 err:0x0
 25968 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25968 ms     | 0x7487 privk:0x7f52e498c820::7f52e498c820  e0 d2 9e e4                                      ....
 25968 ms     | 0x7487 privk:0x7f52e498c820::7f52e498c820  e5 e5 e5 e5                                      ....
 25968 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25968 ms     | 0x7487 privk:0x7f52e47e8820::7f52e47e8820  00 d1 9e e4                                      ....
 25968 ms     | 0x7487 privk:0x7f52e47e8820::7f52e47e8820  e5 e5 e5 e5                                      ....
 25977 ms  0x7487 SSL_AuthCertificateComplete()
 25977 ms  0x7487 fd:0x7f52e3714970
 25977 ms  0x7487 err:0x0
 25977 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25977 ms     | 0x7487 privk:0x7f52bcdc7020::7f52bcdc7020  70 ce aa e4                                      p...
 25977 ms     | 0x7487 privk:0x7f52bcdc7020::7f52bcdc7020  e5 e5 e5 e5                                      ....
 25977 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25977 ms     | 0x7487 privk:0x7f52bcdc5020::7f52bcdc5020  b0 fa a8 e4                                      ....
 25977 ms     | 0x7487 privk:0x7f52bcdc5020::7f52bcdc5020  e5 e5 e5 e5                                      ....
 25977 ms  0x7487 SSL_AuthCertificateComplete()
 25977 ms  0x7487 fd:0x7f52e7d3a1f0
 25977 ms  0x7487 err:0x0
 25977 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25977 ms     | 0x7487 privk:0x7f52c92d5820::7f52c92d5820  c0 0e 9f e0                                      ....
 25977 ms     | 0x7487 privk:0x7f52c92d5820::7f52c92d5820  e5 e5 e5 e5                                      ....
 25977 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25977 ms     | 0x7487 privk:0x7f52c92d3820::7f52c92d3820  40 0c 9f e0                                      @...
 25977 ms     | 0x7487 privk:0x7f52c92d3820::7f52c92d3820  e5 e5 e5 e5                                      ....
 25981 ms  0x7487 SSL_AuthCertificateComplete()
 25981 ms  0x7487 fd:0x7f52e5481850
 25981 ms  0x7487 err:0x0
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52e8968980
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52dca6b400
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52e8968980
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52dd846580
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52e8968980
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52dd846980
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52e8968780
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52e7d81b80
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52e8968780
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52e8968800
 25981 ms     | 0x7487 PK11_DeriveWithFlags()
 25981 ms     | 0x7487 basekey:0x7f52dd846580
 25981 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25981 ms     | 0x7487 ret:0x7f52e8968800
 25982 ms     | 0x7487 PK11_DeriveWithFlags()
 25982 ms     | 0x7487 basekey:0x7f52dd846580
 25982 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25982 ms     | 0x7487 ret:0x7f52e0a69380
 25982 ms     | 0x7487 PK11_DeriveWithFlags()
 25982 ms     | 0x7487 basekey:0x7f52e8968780
 25982 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25982 ms     | 0x7487 ret:0x7f52e8968880
 25982 ms     | 0x7487 PK11_Encrypt()
 25982 ms     | 0x7487 symkey:0x7f52e7d81b80
 25982 ms     | 0x7487 PK11_DeriveWithFlags()
 25982 ms     | 0x7487 basekey:0x7f52dca6b400
 25982 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25982 ms     | 0x7487 ret:0x7f52e8968880
 25982 ms     | 0x7487 PK11_DeriveWithFlags()
 25982 ms     | 0x7487 basekey:0x7f52dca6b400
 25982 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25982 ms     | 0x7487 ret:0x7f52e0a69380
 25982 ms     | 0x7487 PK11_DeriveWithFlags()
 25982 ms     | 0x7487 basekey:0x7f52e8968980
 25982 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 25982 ms     | 0x7487 ret:0x7f52e7d81b80
 25982 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25982 ms     | 0x7487 privk:0x7f52bcdb5020::7f52bcdb5020  00 d6 9e e4                                      ....
 25982 ms     | 0x7487 privk:0x7f52bcdb5020::7f52bcdb5020  e5 e5 e5 e5                                      ....
 25982 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 25982 ms     | 0x7487 privk:0x7f52e579c820::7f52e579c820  20 d4 9e e4                                       ...
 25982 ms     | 0x7487 privk:0x7f52e579c820::7f52e579c820  e5 e5 e5 e5                                      ....
 25985 ms  0x7487 PR_Close()
 25985 ms  0x7487 fd:0x7f52e0e33fd0
 25985 ms     | 0x7487 PK11_Encrypt()
 25985 ms     | 0x7487 symkey:0x7f52e7d81f00
 25985 ms  0x7487 PR_Close()
 25985 ms  0x7487 fd:0x7f52e075cc40
 25986 ms     | 0x7487 PK11_Encrypt()
 25986 ms     | 0x7487 symkey:0x7f52e7722880
 25986 ms  0x7487 PR_Close()
 25986 ms  0x7487 fd:0x7f52e075c970
 25986 ms     | 0x7487 PK11_Encrypt()
 25986 ms     | 0x7487 symkey:0x7f52e0351300
 25986 ms  0x7487 PR_Close()
 25986 ms  0x7487 fd:0x7f52e06f9970
 25986 ms     | 0x7487 PK11_Encrypt()
 25986 ms     | 0x7487 symkey:0x7f52dfcec900
 25987 ms  0x7487 PK11_Encrypt()
 25987 ms  0x7487 symkey:0x7f52db843600
           /* TID 0x748f */
 25988 ms  0x748f PR_Close()
 25988 ms  0x748f fd:0x7f52e06f9970
           /* TID 0x7487 */
 25988 ms  0x7487 PK11_Encrypt()
 25988 ms  0x7487 symkey:0x7f52dca6af80
 25988 ms  0x7487 PK11_Encrypt()
 25988 ms  0x7487 symkey:0x7f52dc5fd300
 25988 ms  0x7487 PK11_Encrypt()
 25988 ms  0x7487 symkey:0x7f52dc5fd300
 25989 ms  0x7487 PK11_Encrypt()
 25989 ms  0x7487 symkey:0x7f52dca6b480
 25989 ms  0x7487 PK11_Encrypt()
 25989 ms  0x7487 symkey:0x7f52dd845280
 25989 ms  0x7487 PK11_Encrypt()
 25989 ms  0x7487 symkey:0x7f52dd845e80
 25990 ms  0x7487 PK11_Encrypt()
 25990 ms  0x7487 symkey:0x7f52dd846500
 25990 ms  0x7487 SECKEY_CreateECPrivateKey()
 25990 ms  0x7487 cx:0x7f52c92897e8
 25991 ms     | 0x7487 EC_ValidatePublicKey()
 25991 ms     | 0x7487 ret:0x0
 25991 ms  0x7487 ret:0x7f52bcc1f020::7f52bcc1f020  f0 bb 86 dd                                      ....
 25991 ms  0x7487 SECKEY_CreateECPrivateKey()
 25991 ms  0x7487 cx:0x7f52c92897e8
 25991 ms     | 0x7487 EC_ValidatePublicKey()
 25993 ms     | 0x7487 ret:0x0
 25993 ms  0x7487 ret:0x7f52bcc21020::7f52bcc21020  80 7d 6e e0                                      .}n.
 25993 ms  0x7487 SECKEY_CreateECPrivateKey()
 25993 ms  0x7487 cx:0x7f52bcfa7e68
 25994 ms     | 0x7487 EC_ValidatePublicKey()
 25994 ms     | 0x7487 ret:0x0
 25994 ms  0x7487 ret:0x7f52bcd43820::7f52bcd43820  d0 1d 71 e0                                      ..q.
 25994 ms  0x7487 SECKEY_CreateECPrivateKey()
 25994 ms  0x7487 cx:0x7f52bcfa7e68
 25994 ms     | 0x7487 EC_ValidatePublicKey()
 25996 ms     | 0x7487 ret:0x0
 25996 ms  0x7487 ret:0x7f52bcdbb020::7f52bcdbb020  10 15 7e e0                                      ..~.
 25996 ms  0x7487 SECKEY_CreateECPrivateKey()
 25996 ms  0x7487 cx:0x7f52bcfa77e8
 25997 ms     | 0x7487 EC_ValidatePublicKey()
 25997 ms     | 0x7487 ret:0x0
 25997 ms  0x7487 ret:0x7f52bcdbd820::7f52bcdbd820  80 a8 90 e0                                      ....
 25997 ms  0x7487 SECKEY_CreateECPrivateKey()
 25997 ms  0x7487 cx:0x7f52bcfa77e8
 25997 ms     | 0x7487 EC_ValidatePublicKey()
 25999 ms     | 0x7487 ret:0x0
 25999 ms  0x7487 ret:0x7f52bcdc0020::7f52bcdc0020  f0 0b 9f e0                                      ....
 25999 ms  0x7487 SECKEY_CreateECPrivateKey()
 25999 ms  0x7487 cx:0x7f52db5d2248
 26000 ms     | 0x7487 EC_ValidatePublicKey()
 26000 ms     | 0x7487 ret:0x0
 26000 ms  0x7487 ret:0x7f52bcdc2820::7f52bcdc2820  80 0d 9f e0                                      ....
 26000 ms  0x7487 SECKEY_CreateECPrivateKey()
 26000 ms  0x7487 cx:0x7f52db5d2248
 26000 ms     | 0x7487 EC_ValidatePublicKey()
 26002 ms     | 0x7487 ret:0x0
 26002 ms  0x7487 ret:0x7f52bcdc5020::7f52bcdc5020  80 53 a1 e0                                      .S..
 26003 ms  0x7487 PK11_Encrypt()
 26003 ms  0x7487 symkey:0x7f52e0cb9100
 26004 ms  0x7487 SECKEY_CreateECPrivateKey()
 26004 ms  0x7487 cx:0x7f52db5d20a8
 26004 ms     | 0x7487 EC_ValidatePublicKey()
 26004 ms     | 0x7487 ret:0x0
 26004 ms  0x7487 ret:0x7f52bcdc7820::7f52bcdc7820  30 5d a1 e0                                      0]..
 26004 ms  0x7487 SECKEY_CreateECPrivateKey()
 26004 ms  0x7487 cx:0x7f52db5d20a8
 26005 ms     | 0x7487 EC_ValidatePublicKey()
 26006 ms     | 0x7487 ret:0x0
 26006 ms  0x7487 ret:0x7f52bcdca020::7f52bcdca020  d0 e3 c4 e0                                      ....
 26007 ms  0x7487 PK11_Encrypt()
 26007 ms  0x7487 symkey:0x7f52e7d9dd80
 26010 ms  0x7487 PK11_Encrypt()
 26010 ms  0x7487 symkey:0x7f52e87c2600
 26010 ms  0x7487 PK11_Encrypt()
 26010 ms  0x7487 symkey:0x7f52e87c5c80
 26011 ms  0x7487 PK11_Encrypt()
 26011 ms  0x7487 symkey:0x7f52e49da980
 26011 ms  0x7487 PK11_Encrypt()
 26011 ms  0x7487 symkey:0x7f52e87e5780
 26011 ms  0x7487 PK11_Encrypt()
 26011 ms  0x7487 symkey:0x7f52e890e480
 26012 ms  0x7487 PK11_Encrypt()
 26012 ms  0x7487 symkey:0x7f52e890e800
 26013 ms  0x7487 PK11_Encrypt()
 26013 ms  0x7487 symkey:0x7f52e8919e80
 26013 ms  0x7487 PK11_Encrypt()
 26013 ms  0x7487 symkey:0x7f52e8967380
 26013 ms  0x7487 PK11_Encrypt()
 26013 ms  0x7487 symkey:0x7f52e8968880
 26014 ms  0x7487 SECKEY_CreateECPrivateKey()
 26014 ms  0x7487 cx:0x7f52bccea588
 26014 ms     | 0x7487 EC_ValidatePublicKey()
 26014 ms     | 0x7487 ret:0x0
 26014 ms  0x7487 ret:0x7f52bcdd2820::7f52bcdd2820  90 1c d1 e0                                      ....
 26014 ms  0x7487 SECKEY_CreateECPrivateKey()
 26014 ms  0x7487 cx:0x7f52bccea588
 26015 ms     | 0x7487 EC_ValidatePublicKey()
 26016 ms     | 0x7487 ret:0x0
 26016 ms  0x7487 ret:0x7f52bce13020::7f52bce13020  60 2f d1 e0                                      `/..
 26017 ms  0x7487 SECKEY_CreateECPrivateKey()
 26017 ms  0x7487 cx:0x7f52bccea3e8
 26017 ms     | 0x7487 EC_ValidatePublicKey()
 26017 ms     | 0x7487 ret:0x0
 26017 ms  0x7487 ret:0x7f52bce15820::7f52bce15820  40 3c d4 e0                                      @<..
 26017 ms  0x7487 SECKEY_CreateECPrivateKey()
 26017 ms  0x7487 cx:0x7f52bccea3e8
 26018 ms     | 0x7487 EC_ValidatePublicKey()
 26019 ms     | 0x7487 ret:0x0
 26020 ms  0x7487 ret:0x7f52bce1d820::7f52bce1d820  40 bc e1 e0                                      @...
 26020 ms  0x7487 SECKEY_CreateECPrivateKey()
 26020 ms  0x7487 cx:0x7f52bccea248
 26021 ms     | 0x7487 EC_ValidatePublicKey()
 26021 ms     | 0x7487 ret:0x0
 26021 ms  0x7487 ret:0x7f52bce20020::7f52bce20020  d0 6d e2 e0                                      .m..
 26021 ms  0x7487 SECKEY_CreateECPrivateKey()
 26021 ms  0x7487 cx:0x7f52bccea248
 26021 ms     | 0x7487 EC_ValidatePublicKey()
 26023 ms     | 0x7487 ret:0x0
 26023 ms  0x7487 ret:0x7f52bce22820::7f52bce22820  b0 5a 71 e3                                      .Zq.
 26023 ms  0x7487 SECKEY_CreateECPrivateKey()
 26023 ms  0x7487 cx:0x7f5302aa84a8
 26024 ms     | 0x7487 EC_ValidatePublicKey()
 26024 ms     | 0x7487 ret:0x0
 26024 ms  0x7487 ret:0x7f52bce25020::7f52bce25020  70 5e 71 e3                                      p^q.
 26024 ms  0x7487 SECKEY_CreateECPrivateKey()
 26024 ms  0x7487 cx:0x7f5302aa84a8
 26024 ms     | 0x7487 EC_ValidatePublicKey()
 26026 ms     | 0x7487 ret:0x0
 26026 ms  0x7487 ret:0x7f52bce29820::7f52bce29820  40 a2 2c e4                                      @.,.
 26026 ms  0x7487 SECKEY_CreateECPrivateKey()
 26026 ms  0x7487 cx:0x7f52db5d2a68
 26027 ms     | 0x7487 EC_ValidatePublicKey()
 26032 ms     | 0x7487 ret:0x0
 26032 ms  0x7487 ret:0x7f52c9270020::7f52c9270020  a0 cb 2c e4                                      ..,.
 26032 ms  0x7487 SECKEY_CreateECPrivateKey()
 26032 ms  0x7487 cx:0x7f52db5d2a68
 26033 ms     | 0x7487 EC_ValidatePublicKey()
 26034 ms     | 0x7487 ret:0x0
 26034 ms  0x7487 ret:0x7f52c9278020::7f52c9278020  60 05 2e e4                                      `...
 26034 ms  0x7487 SECKEY_CreateECPrivateKey()
 26034 ms  0x7487 cx:0x7f52db5d2728
 26035 ms     | 0x7487 EC_ValidatePublicKey()
 26035 ms     | 0x7487 ret:0x0
 26035 ms  0x7487 ret:0x7f52c927f020::7f52c927f020  80 0d 2e e4                                      ....
 26035 ms  0x7487 SECKEY_CreateECPrivateKey()
 26035 ms  0x7487 cx:0x7f52db5d2728
 26035 ms     | 0x7487 EC_ValidatePublicKey()
 26037 ms     | 0x7487 ret:0x0
 26037 ms  0x7487 ret:0x7f52c92d3020::7f52c92d3020  90 97 60 e4                                      ..`.
 26038 ms  0x7487 SECKEY_CreateECPrivateKey()
 26038 ms  0x7487 cx:0x7f52db5d2588
 26038 ms     | 0x7487 EC_ValidatePublicKey()
 26038 ms     | 0x7487 ret:0x0
 26038 ms  0x7487 ret:0x7f52c92d5820::7f52c92d5820  70 99 60 e4                                      p.`.
 26038 ms  0x7487 SECKEY_CreateECPrivateKey()
 26038 ms  0x7487 cx:0x7f52db5d2588
 26039 ms     | 0x7487 EC_ValidatePublicKey()
 26041 ms     | 0x7487 ret:0x0
 26041 ms  0x7487 ret:0x7f52c92e4020::7f52c92e4020  a0 9b 60 e4                                      ..`.
 26041 ms  0x7487 SECKEY_CreateECPrivateKey()
 26041 ms  0x7487 cx:0x7f52db5d23e8
 26041 ms     | 0x7487 EC_ValidatePublicKey()
 26041 ms     | 0x7487 ret:0x0
 26041 ms  0x7487 ret:0x7f52c92e6820::7f52c92e6820  e0 9c 60 e4                                      ..`.
 26042 ms  0x7487 SECKEY_CreateECPrivateKey()
 26042 ms  0x7487 cx:0x7f52db5d23e8
 26042 ms     | 0x7487 EC_ValidatePublicKey()
 26044 ms     | 0x7487 ret:0x0
 26044 ms  0x7487 ret:0x7f52c92ea820::7f52c92ea820  d0 a3 7b e4                                      ..{.
 26044 ms  0x7487 PR_Close()
 26044 ms  0x7487 fd:0x7f52dd862280
 26044 ms  0x7487 PR_Connect()
 26044 ms  0x7487 fd:0x7f52e06f9970
 26044 ms  0x7487 PR_Connect()
 26044 ms  0x7487 fd:0x7f52e06f9b80
 26044 ms  0x7487 PR_Connect()
 26044 ms  0x7487 fd:0x7f52e075c8e0
 26045 ms  0x7487 PK11_Encrypt()
 26045 ms  0x7487 symkey:0x7f52dc5fd300
 26046 ms  0x7487 PK11_Encrypt()
 26046 ms  0x7487 symkey:0x7f52dd869e00
 26046 ms  0x7487 PK11_Encrypt()
 26046 ms  0x7487 symkey:0x7f52e87d4400
           /* TID 0x748f */
 26048 ms  0x748f PR_Close()
 26048 ms  0x748f fd:0x7f52e89073a0
           /* TID 0x7487 */
 26052 ms  0x7487 PK11_Encrypt()
 26052 ms  0x7487 symkey:0x7f52dc5fd300
 26054 ms  0x7487 SSL_ImportFD()
 26054 ms  0x7487 ret:0x7f52e0c4ab50
 26054 ms  0x7487 SSL_AuthCertificateHook()
 26054 ms  0x7487 fd:0x7f52e0c4ab50
 26054 ms  0x7487 ret:0x0
 26054 ms  0x7487 PR_Connect()
 26054 ms  0x7487 fd:0x7f52e0c4ab50
 26055 ms  0x7487 PK11_Encrypt()
 26055 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x748f */
 26058 ms  0x748f PR_Close()
 26058 ms  0x748f fd:0x7f52dd862280
           /* TID 0x752b */
 26058 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26058 ms  0x752b ret:0x0
           /* TID 0x7487 */
 26058 ms  0x7487 PK11_DeriveWithFlags()
 26058 ms  0x7487 basekey:0x7f52dd87d300
 26058 ms     | 0x7487 PK11_DeriveWithTemplate()
 26058 ms  0x7487 ret:0x7f52dd863c00
 26058 ms  0x7487 PK11_DeriveWithFlags()
 26058 ms  0x7487 basekey:0x7f52dd87d300
 26058 ms     | 0x7487 PK11_DeriveWithTemplate()
 26058 ms  0x7487 ret:0x7f52dd863c00
 26058 ms  0x7487 PK11_Encrypt()
 26058 ms  0x7487 symkey:0x7f52dc5fd300
           /* TID 0x748f */
 26059 ms  0x748f PR_Close()
 26059 ms  0x748f fd:0x7f52e37149d0
 26059 ms  0x748f PR_Close()
 26059 ms  0x748f fd:0x7f52e37147c0
 26060 ms  0x748f PR_Close()
 26060 ms  0x748f fd:0x7f52e37147c0
           /* TID 0x7487 */
 26061 ms  0x7487 PK11_DeriveWithFlags()
 26061 ms  0x7487 basekey:0x7f52dd87d500
 26061 ms     | 0x7487 PK11_DeriveWithTemplate()
 26061 ms  0x7487 ret:0x7f52dd863c00
 26061 ms  0x7487 PK11_DeriveWithFlags()
 26061 ms  0x7487 basekey:0x7f52dd87d500
 26061 ms     | 0x7487 PK11_DeriveWithTemplate()
 26061 ms  0x7487 ret:0x7f52dd863c00
           /* TID 0x752b */
 26063 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26063 ms  0x752b ret:0x0
 26063 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26063 ms  0x752b ret:0x0
           /* TID 0x7487 */
 26064 ms  SECKEY_ECParamsToKeySize()
 26064 ms  0x7487 ret:0xff
 26064 ms  0x7487 SECKEY_CreateECPrivateKey()
 26064 ms  0x7487 cx:0x7f52c92897e8
 26065 ms     | 0x7487 EC_ValidatePublicKey()
 26065 ms     | 0x7487 ret:0x0
 26065 ms  0x7487 ret:0x7f52dfb43020::7f52dfb43020  60 d0 9e e4                                      `...
 26065 ms  0x7487 PK11_PubDeriveWithKDF()
 26065 ms  0x7487 seckey:0x7f52dfb43020
 26065 ms     | 0x7487 EC_ValidatePublicKey()
 26065 ms     | 0x7487 ret:0x0
 26067 ms  0x7487 ret:0x7f52dd863c00
 26068 ms  0x7487 PK11_DeriveWithFlags()
 26068 ms  0x7487 basekey:0x7f52dd863c00
 26068 ms     | 0x7487 PK11_DeriveWithTemplate()
 26068 ms  0x7487 ret:0x7f52df484500
 26068 ms  0x7487 PK11_Derive()
 26068 ms  0x7487 basekey:0x7f52df484500
 26068 ms     | 0x7487 PK11_DeriveWithTemplate()
 26068 ms  0x7487 ret:0x7f52dfceb400
 26068 ms  0x7487 SECKEY_DestroyPrivateKey()
 26068 ms  0x7487 privk:0x7f52dfb43020::7f52dfb43020  60 d0 9e e4                                      `...
 26068 ms  0x7487 privk:0x7f52dfb43020::7f52dfb43020  e5 e5 e5 e5                                      ....
 26071 ms  0x7487 PK11_Encrypt()
 26071 ms  0x7487 symkey:0x7f52dfcec680
 26072 ms  0x7487 PK11_DeriveWithFlags()
 26072 ms  0x7487 basekey:0x7f52dd863c00
 26072 ms     | 0x7487 PK11_DeriveWithTemplate()
 26073 ms  0x7487 ret:0x7f52df484f00
 26073 ms  0x7487 PK11_Derive()
 26073 ms  0x7487 basekey:0x7f52df484f00
 26073 ms     | 0x7487 PK11_DeriveWithTemplate()
 26073 ms  0x7487 ret:0x7f52dfceb580
 26074 ms  SECKEY_ECParamsToKeySize()
 26074 ms  0x7487 ret:0x100
 26074 ms  0x7487 SECKEY_CreateECPrivateKey()
 26074 ms  0x7487 cx:0x7f52bcfa77e8
 26074 ms     | 0x7487 EC_ValidatePublicKey()
           /* TID 0x748f */
 26076 ms  0x748f PR_Close()
 26076 ms  0x748f fd:0x7f52e53f24c0
           /* TID 0x7487 */
 26078 ms     | 0x7487 ret:0x0
 26078 ms  0x7487 ret:0x7f52dfb39020::7f52dfb39020  60 d0 9e e4                                      `...
 26078 ms  0x7487 PK11_PubDeriveWithKDF()
 26078 ms  0x7487 seckey:0x7f52dfb39020
 26078 ms     | 0x7487 EC_ValidatePublicKey()
 26082 ms     | 0x7487 ret:0x0
 26083 ms  0x7487 ret:0x7f52dd863c00
 26083 ms  0x7487 PK11_DeriveWithFlags()
 26083 ms  0x7487 basekey:0x7f52dd863c00
 26083 ms     | 0x7487 PK11_DeriveWithTemplate()
 26083 ms  0x7487 ret:0x7f52dd863900
 26083 ms  0x7487 PK11_Derive()
 26083 ms  0x7487 basekey:0x7f52dd863900
 26083 ms     | 0x7487 PK11_DeriveWithTemplate()
 26090 ms  0x7487 ret:0x7f52e7d81d80
 26090 ms  0x7487 SECKEY_DestroyPrivateKey()
 26090 ms  0x7487 privk:0x7f52dfb39020::7f52dfb39020  60 d0 9e e4                                      `...
 26090 ms  0x7487 privk:0x7f52dfb39020::7f52dfb39020  e5 e5 e5 e5                                      ....
 26090 ms  0x7487 PK11_Encrypt()
 26090 ms  0x7487 symkey:0x7f52e7722780
 26093 ms  SECKEY_ECParamsToKeySize()
 26093 ms  0x7487 ret:0x100
 26093 ms  0x7487 SECKEY_CreateECPrivateKey()
 26093 ms  0x7487 cx:0x7f52db5d2248
 26094 ms     | 0x7487 EC_ValidatePublicKey()
 26095 ms     | 0x7487 ret:0x0
 26095 ms  0x7487 ret:0x7f52dfb3d820::7f52dfb3d820  a0 d1 9e e4                                      ....
 26095 ms  0x7487 PK11_PubDeriveWithKDF()
 26095 ms  0x7487 seckey:0x7f52dfb3d820
 26095 ms     | 0x7487 EC_ValidatePublicKey()
 26098 ms     | 0x7487 ret:0x0
 26099 ms  0x7487 ret:0x7f52dd863c00
 26099 ms  0x7487 PK11_DeriveWithFlags()
 26099 ms  0x7487 basekey:0x7f52dd863c00
 26099 ms     | 0x7487 PK11_DeriveWithTemplate()
 26099 ms  0x7487 ret:0x7f52e7d81d00
 26099 ms  0x7487 PK11_Derive()
 26099 ms  0x7487 basekey:0x7f52e7d81d00
 26099 ms     | 0x7487 PK11_DeriveWithTemplate()
 26099 ms  0x7487 ret:0x7f52dd846680
 26099 ms  0x7487 SECKEY_DestroyPrivateKey()
 26099 ms  0x7487 privk:0x7f52dfb3d820::7f52dfb3d820  a0 d1 9e e4                                      ....
 26099 ms  0x7487 privk:0x7f52dfb3d820::7f52dfb3d820  e5 e5 e5 e5                                      ....
 26099 ms  0x7487 PK11_Encrypt()
 26099 ms  0x7487 symkey:0x7f52e7d81e00
 26108 ms  0x7487 PK11_DeriveWithFlags()
 26108 ms  0x7487 basekey:0x7f52dd863c00
 26108 ms     | 0x7487 PK11_DeriveWithTemplate()
 26108 ms  0x7487 ret:0x7f52e8968780
 26108 ms  0x7487 PK11_Derive()
 26108 ms  0x7487 basekey:0x7f52e8968780
 26108 ms     | 0x7487 PK11_DeriveWithTemplate()
 26108 ms  0x7487 ret:0x7f52e8968980
 26109 ms  0x7487 PK11_DeriveWithFlags()
 26109 ms  0x7487 basekey:0x7f52e7d81b80
 26109 ms     | 0x7487 PK11_DeriveWithTemplate()
 26109 ms  0x7487 ret:0x7f52dd863c00
 26109 ms  0x7487 PK11_DeriveWithFlags()
 26109 ms  0x7487 basekey:0x7f52e7d81b80
 26109 ms     | 0x7487 PK11_DeriveWithTemplate()
 26109 ms  0x7487 ret:0x7f52dd863c00
           /* TID 0x748f */
 26111 ms  0x748f PR_Close()
 26111 ms  0x748f fd:0x7f52e7d3a490
 26112 ms  0x748f PR_Close()
 26112 ms  0x748f fd:0x7f52e0d9f910
           /* TID 0x752d */
 26112 ms  0x752d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26112 ms  0x752d ret:0x0
           /* TID 0x752b */
 26113 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26114 ms  0x752b ret:0x0
 26114 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26114 ms  0x752b ret:0x0
           /* TID 0x7487 */
 26114 ms  SECKEY_ECParamsToKeySize()
 26114 ms  0x7487 ret:0xff
 26114 ms  0x7487 SECKEY_CreateECPrivateKey()
 26114 ms  0x7487 cx:0x7f5302aa84a8
 26114 ms     | 0x7487 EC_ValidatePublicKey()
 26114 ms     | 0x7487 ret:0x0
 26114 ms  0x7487 ret:0x7f52dfb3d820::7f52dfb3d820  a0 d1 9e e4                                      ....
 26115 ms  0x7487 PK11_PubDeriveWithKDF()
 26115 ms  0x7487 seckey:0x7f52dfb3d820
 26115 ms     | 0x7487 EC_ValidatePublicKey()
 26115 ms     | 0x7487 ret:0x0
 26115 ms  0x7487 ret:0x7f52dd863c00
 26115 ms  0x7487 PK11_DeriveWithFlags()
 26115 ms  0x7487 basekey:0x7f52dd863c00
 26115 ms     | 0x7487 PK11_DeriveWithTemplate()
 26115 ms  0x7487 ret:0x7f52e0a69380
 26115 ms  0x7487 PK11_Derive()
 26115 ms  0x7487 basekey:0x7f52e0a69380
 26115 ms     | 0x7487 PK11_DeriveWithTemplate()
 26115 ms  0x7487 ret:0x7f52e0cb8c00
 26115 ms  0x7487 SECKEY_DestroyPrivateKey()
 26115 ms  0x7487 privk:0x7f52dfb3d820::7f52dfb3d820  a0 d1 9e e4                                      ....
 26115 ms  0x7487 privk:0x7f52dfb3d820::7f52dfb3d820  e5 e5 e5 e5                                      ....
 26115 ms  0x7487 PK11_Encrypt()
 26115 ms  0x7487 symkey:0x7f52e0cb9300
 26116 ms  0x7487 PR_Close()
 26116 ms  0x7487 fd:0x7f52e5481850
 26116 ms     | 0x7487 PK11_Encrypt()
 26116 ms     | 0x7487 symkey:0x7f52e8968880
 26116 ms  0x7487 PR_Close()
 26116 ms  0x7487 fd:0x7f52e53d97f0
 26116 ms     | 0x7487 PK11_Encrypt()
 26116 ms     | 0x7487 symkey:0x7f52e8919e80
 26116 ms  0x7487 PR_Close()
 26116 ms  0x7487 fd:0x7f52e0e339a0
 26116 ms     | 0x7487 PK11_Encrypt()
 26116 ms     | 0x7487 symkey:0x7f52e890e800
 26116 ms  0x7487 PR_Close()
 26116 ms  0x7487 fd:0x7f52e0e33cd0
 26116 ms     | 0x7487 PK11_Encrypt()
 26116 ms     | 0x7487 symkey:0x7f52e890e480
 26116 ms  0x7487 PR_Close()
 26116 ms  0x7487 fd:0x7f52e3702520
 26116 ms     | 0x7487 PK11_Encrypt()
 26116 ms     | 0x7487 symkey:0x7f52dd846500
 26117 ms  0x7487 PR_Close()
 26117 ms  0x7487 fd:0x7f52e46674c0
 26117 ms     | 0x7487 PK11_Encrypt()
 26117 ms     | 0x7487 symkey:0x7f52dca6af80
 26117 ms  0x7487 SSL_ImportFD()
 26117 ms  0x7487 ret:0x7f52dd8b34c0
 26117 ms  0x7487 SSL_AuthCertificateHook()
 26117 ms  0x7487 fd:0x7f52dd8b34c0
 26117 ms  0x7487 ret:0x0
 26117 ms  0x7487 PR_Connect()
 26117 ms  0x7487 fd:0x7f52dd8b34c0
 26117 ms  0x7487 SSL_AuthCertificateComplete()
 26117 ms  0x7487 fd:0x7f52e3702160
 26117 ms  0x7487 err:0x0
 26117 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26117 ms     | 0x7487 privk:0x7f52c92dc820::7f52c92dc820  a0 96 e2 e0                                      ....
 26118 ms     | 0x7487 privk:0x7f52c92dc820::7f52c92dc820  e5 e5 e5 e5                                      ....
 26118 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26118 ms     | 0x7487 privk:0x7f52c92da820::7f52c92da820  40 e2 c4 e0                                      @...
 26118 ms     | 0x7487 privk:0x7f52c92da820::7f52c92da820  e5 e5 e5 e5                                      ....
 26118 ms  0x7487 SSL_AuthCertificateComplete()
 26118 ms  0x7487 fd:0x7f52dc1ff8b0
 26118 ms  0x7487 err:0x0
 26118 ms  0x7487 SSL_AuthCertificateComplete()
 26118 ms  0x7487 fd:0x7f52dc1ff220
 26118 ms  0x7487 err:0x0
 26118 ms  0x7487 SSL_AuthCertificateComplete()
 26118 ms  0x7487 fd:0x7f52e3714430
 26118 ms  0x7487 err:0x0
 26118 ms  0x7487 PK11_Encrypt()
 26118 ms  0x7487 symkey:0x7f52dd845280
 26119 ms  0x7487 SSL_AuthCertificateComplete()
 26119 ms  0x7487 fd:0x7f52dc1ffa90
 26119 ms  0x7487 err:0x0
 26120 ms  0x7487 PK11_DeriveWithFlags()
 26120 ms  0x7487 basekey:0x7f52dd864280
 26120 ms     | 0x7487 PK11_DeriveWithTemplate()
 26120 ms  0x7487 ret:0x7f52dd8cd680
 26120 ms  0x7487 PK11_Derive()
 26120 ms  0x7487 basekey:0x7f52dd8cd680
 26120 ms     | 0x7487 PK11_DeriveWithTemplate()
 26120 ms  0x7487 ret:0x7f52dfceb480
 26120 ms  0x7487 SSL_AuthCertificateComplete()
 26120 ms  0x7487 fd:0x7f52dc1ff970
 26120 ms  0x7487 err:0x0
 26121 ms  0x7487 SSL_AuthCertificateComplete()
 26121 ms  0x7487 fd:0x7f52dd8621f0
 26121 ms  0x7487 err:0x0
 26121 ms  0x7487 PR_Close()
 26121 ms  0x7487 fd:0x7f52dd862bb0
 26121 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26121 ms     | 0x7487 privk:0x7f52bce13020::7f52bce13020  60 2f d1 e0                                      `/..
 26121 ms     | 0x7487 privk:0x7f52bce13020::7f52bce13020  e5 e5 e5 e5                                      ....
 26121 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26121 ms     | 0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  90 1c d1 e0                                      ....
 26121 ms     | 0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  e5 e5 e5 e5                                      ....
 26121 ms  0x7487 PR_Close()
 26121 ms  0x7487 fd:0x7f52e0e02670
 26121 ms  0x7487 PR_Close()
 26121 ms  0x7487 fd:0x7f52e0e33ca0
 26121 ms     | 0x7487 PK11_Encrypt()
 26121 ms     | 0x7487 symkey:0x7f52e0cb9100
 26122 ms  0x7487 PR_Close()
 26122 ms  0x7487 fd:0x7f52e3714970
 26122 ms     | 0x7487 PK11_Encrypt()
 26122 ms     | 0x7487 symkey:0x7f52dca6b480
           /* TID 0x74e3 */
 26122 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26122 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 26123 ms  0x748f PR_Close()
 26123 ms  0x748f fd:0x7f52dd862bb0
           /* TID 0x7487 */
 26124 ms  SECKEY_ECParamsToKeySize()
 26124 ms  0x7487 ret:0x100
 26124 ms  0x7487 SECKEY_CreateECPrivateKey()
 26124 ms  0x7487 cx:0x7f52db5d2728
 26124 ms     | 0x7487 EC_ValidatePublicKey()
 26126 ms     | 0x7487 ret:0x0
 26126 ms  0x7487 ret:0x7f52bcc31820::7f52bcc31820  50 0b 9f e0                                      P...
 26126 ms  0x7487 PK11_PubDeriveWithKDF()
 26126 ms  0x7487 seckey:0x7f52bcc31820
 26126 ms     | 0x7487 EC_ValidatePublicKey()
 26127 ms     | 0x7487 ret:0x0
 26129 ms  0x7487 ret:0x7f52dd846480
 26129 ms  0x7487 PK11_DeriveWithFlags()
 26129 ms  0x7487 basekey:0x7f52dd846480
 26129 ms     | 0x7487 PK11_DeriveWithTemplate()
 26129 ms  0x7487 ret:0x7f52dd845a80
 26129 ms  0x7487 PK11_Derive()
 26129 ms  0x7487 basekey:0x7f52dd845a80
 26129 ms     | 0x7487 PK11_DeriveWithTemplate()
 26129 ms  0x7487 ret:0x7f52dd864f00
 26129 ms  0x7487 SECKEY_DestroyPrivateKey()
 26129 ms  0x7487 privk:0x7f52bcc31820::7f52bcc31820  50 0b 9f e0                                      P...
 26129 ms  0x7487 privk:0x7f52bcc31820::7f52bcc31820  e5 e5 e5 e5                                      ....
 26129 ms  0x7487 PK11_Encrypt()
 26129 ms  0x7487 symkey:0x7f52dca6be80
           /* TID 0x748f */
 26130 ms  0x748f PR_Close()
 26130 ms  0x748f fd:0x7f52e0c4aa60
           /* TID 0x7487 */
 26133 ms  SECKEY_ECParamsToKeySize()
 26133 ms  0x7487 ret:0x100
 26133 ms  0x7487 SECKEY_CreateECPrivateKey()
 26133 ms  0x7487 cx:0x7f52db5d2588
 26134 ms     | 0x7487 EC_ValidatePublicKey()
 26135 ms     | 0x7487 ret:0x0
 26135 ms  0x7487 ret:0x7f52bce0d020::7f52bce0d020  e0 1c d1 e0                                      ....
 26135 ms  0x7487 PK11_PubDeriveWithKDF()
 26135 ms  0x7487 seckey:0x7f52bce0d020
 26135 ms     | 0x7487 EC_ValidatePublicKey()
 26138 ms     | 0x7487 ret:0x0
 26139 ms  0x7487 ret:0x7f52dd846480
 26139 ms  0x7487 PK11_DeriveWithFlags()
 26139 ms  0x7487 basekey:0x7f52dd846480
 26139 ms     | 0x7487 PK11_DeriveWithTemplate()
 26139 ms  0x7487 ret:0x7f52dd864580
 26139 ms  0x7487 PK11_Derive()
 26139 ms  0x7487 basekey:0x7f52dd864580
 26139 ms     | 0x7487 PK11_DeriveWithTemplate()
 26139 ms  0x7487 ret:0x7f52e87e5980
 26139 ms  0x7487 SECKEY_DestroyPrivateKey()
 26139 ms  0x7487 privk:0x7f52bce0d020::7f52bce0d020  e0 1c d1 e0                                      ....
 26139 ms  0x7487 privk:0x7f52bce0d020::7f52bce0d020  e5 e5 e5 e5                                      ....
 26140 ms  0x7487 PK11_Encrypt()
 26140 ms  0x7487 symkey:0x7f52e0c43480
 26147 ms  0x7487 SECKEY_DestroyPrivateKey()
 26147 ms  0x7487 privk:0x7f52bcc21020::7f52bcc21020  80 7d 6e e0                                      .}n.
 26147 ms  0x7487 privk:0x7f52bcc21020::7f52bcc21020  e5 e5 e5 e5                                      ....
 26147 ms  0x7487 SECKEY_DestroyPrivateKey()
 26147 ms  0x7487 privk:0x7f52bcc1f020::7f52bcc1f020  f0 bb 86 dd                                      ....
 26147 ms  0x7487 privk:0x7f52bcc1f020::7f52bcc1f020  e5 e5 e5 e5                                      ....
 26148 ms  0x7487 PK11_Encrypt()
 26148 ms  0x7487 symkey:0x7f52dfcec680
 26148 ms  0x7487 PK11_Encrypt()
 26148 ms  0x7487 symkey:0x7f52dfcec680
 26148 ms  0x7487 PK11_Encrypt()
 26148 ms  0x7487 symkey:0x7f52e7722780
 26148 ms  0x7487 PK11_Encrypt()
 26148 ms  0x7487 symkey:0x7f52e7d81e00
 26154 ms  SECKEY_ECParamsToKeySize()
 26154 ms  0x7487 ret:0x100
 26154 ms  0x7487 SECKEY_CreateECPrivateKey()
 26154 ms  0x7487 cx:0x7f52db5d23e8
 26155 ms     | 0x7487 EC_ValidatePublicKey()
 26156 ms     | 0x7487 ret:0x0
 26157 ms  0x7487 ret:0x7f52c92da020::7f52c92da020  b0 9a e2 e0                                      ....
 26157 ms  0x7487 PK11_PubDeriveWithKDF()
 26157 ms  0x7487 seckey:0x7f52c92da020
 26157 ms     | 0x7487 EC_ValidatePublicKey()
 26158 ms     | 0x7487 ret:0x0
 26159 ms  0x7487 ret:0x7f52dd846480
 26159 ms  0x7487 PK11_DeriveWithFlags()
 26159 ms  0x7487 basekey:0x7f52dd846480
 26159 ms     | 0x7487 PK11_DeriveWithTemplate()
 26159 ms  0x7487 ret:0x7f52e87e5900
 26160 ms  0x7487 PK11_Derive()
 26160 ms  0x7487 basekey:0x7f52e87e5900
 26160 ms     | 0x7487 PK11_DeriveWithTemplate()
 26160 ms  0x7487 ret:0x7f52dfceb480
 26160 ms  0x7487 SECKEY_DestroyPrivateKey()
 26160 ms  0x7487 privk:0x7f52c92da020::7f52c92da020  b0 9a e2 e0                                      ....
 26160 ms  0x7487 privk:0x7f52c92da020::7f52c92da020  e5 e5 e5 e5                                      ....
 26160 ms  0x7487 PK11_Encrypt()
 26160 ms  0x7487 symkey:0x7f52e87e5a00
 26167 ms  0x7487 PK11_Encrypt()
 26167 ms  0x7487 symkey:0x7f52e4dd8b80
 26168 ms  0x7487 SECKEY_DestroyPrivateKey()
 26168 ms  0x7487 privk:0x7f52bce29820::7f52bce29820  40 a2 2c e4                                      @.,.
 26169 ms  0x7487 privk:0x7f52bce29820::7f52bce29820  e5 e5 e5 e5                                      ....
 26169 ms  0x7487 SECKEY_DestroyPrivateKey()
 26169 ms  0x7487 privk:0x7f52bce25020::7f52bce25020  70 5e 71 e3                                      p^q.
 26169 ms  0x7487 privk:0x7f52bce25020::7f52bce25020  e5 e5 e5 e5                                      ....
 26169 ms  0x7487 PK11_Encrypt()
 26169 ms  0x7487 symkey:0x7f52e0cb9300
 26169 ms  0x7487 PK11_Encrypt()
 26169 ms  0x7487 symkey:0x7f52e0cb9300
 26173 ms  SECKEY_ECParamsToKeySize()
 26173 ms  0x7487 ret:0x100
 26173 ms  0x7487 SECKEY_CreateECPrivateKey()
 26173 ms  0x7487 cx:0x7f52db5d2a68
 26174 ms     | 0x7487 EC_ValidatePublicKey()
 26175 ms     | 0x7487 ret:0x0
 26175 ms  0x7487 ret:0x7f52bce29820::7f52bce29820  80 08 6d e3                                      ..m.
 26175 ms  0x7487 PK11_PubDeriveWithKDF()
 26175 ms  0x7487 seckey:0x7f52bce29820
 26175 ms     | 0x7487 EC_ValidatePublicKey()
 26177 ms     | 0x7487 ret:0x0
 26178 ms  0x7487 ret:0x7f52dd846480
 26178 ms  0x7487 PK11_DeriveWithFlags()
 26178 ms  0x7487 basekey:0x7f52dd846480
 26179 ms     | 0x7487 PK11_DeriveWithTemplate()
 26179 ms  0x7487 ret:0x7f52dd8cd680
 26179 ms  0x7487 PK11_Derive()
 26179 ms  0x7487 basekey:0x7f52dd8cd680
 26179 ms     | 0x7487 PK11_DeriveWithTemplate()
 26179 ms  0x7487 ret:0x7f52dd864280
 26179 ms  0x7487 SECKEY_DestroyPrivateKey()
 26179 ms  0x7487 privk:0x7f52bce29820::7f52bce29820  80 08 6d e3                                      ..m.
 26179 ms  0x7487 privk:0x7f52bce29820::7f52bce29820  e5 e5 e5 e5                                      ....
 26179 ms  0x7487 PK11_Encrypt()
 26179 ms  0x7487 symkey:0x7f52e87c5d80
 26179 ms  0x7487 SSL_AuthCertificateComplete()
 26179 ms  0x7487 fd:0x7f52e57c9a30
 26179 ms  0x7487 err:0x0
 26179 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26179 ms     | 0x7487 privk:0x7f52bcdb9820::7f52bcdb9820  20 d9 9e e4                                       ...
 26180 ms     | 0x7487 privk:0x7f52bcdb9820::7f52bcdb9820  e5 e5 e5 e5                                      ....
 26180 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26180 ms     | 0x7487 privk:0x7f52bcdb7820::7f52bcdb7820  40 d7 9e e4                                      @...
 26180 ms     | 0x7487 privk:0x7f52bcdb7820::7f52bcdb7820  e5 e5 e5 e5                                      ....
 26180 ms  0x7487 SSL_AuthCertificateComplete()
 26180 ms  0x7487 fd:0x7f52dd8620a0
 26180 ms  0x7487 err:0x0
 26180 ms  0x7487 PK11_Encrypt()
 26180 ms  0x7487 symkey:0x7f52c98b6800
 26181 ms  0x7487 PK11_Encrypt()
 26181 ms  0x7487 symkey:0x7f52e7d9d800
 26181 ms  0x7487 PK11_Encrypt()
 26181 ms  0x7487 symkey:0x7f52dd869e00
 26184 ms  0x7487 PK11_Encrypt()
 26184 ms  0x7487 symkey:0x7f52e87c2600
 26185 ms  0x7487 SSL_AuthCertificateComplete()
 26185 ms  0x7487 fd:0x7f52dd862190
 26185 ms  0x7487 err:0x0
 26185 ms  0x7487 PK11_Encrypt()
 26185 ms  0x7487 symkey:0x7f52e8967380
 26185 ms  0x7487 PR_Close()
 26185 ms  0x7487 fd:0x7f52e36d5fa0
 26185 ms     | 0x7487 PK11_Encrypt()
 26185 ms     | 0x7487 symkey:0x7f52e49da980
 26186 ms  0x7487 PR_Close()
 26186 ms  0x7487 fd:0x7f52e0ee93a0
 26186 ms     | 0x7487 PK11_Encrypt()
 26186 ms     | 0x7487 symkey:0x7f52e87c5c80
 26188 ms  0x7487 PK11_Encrypt()
 26188 ms  0x7487 symkey:0x7f52dfcec680
 26189 ms  0x7487 PK11_Encrypt()
 26189 ms  0x7487 symkey:0x7f52dc5fd300
 26192 ms  0x7487 SSL_ImportFD()
 26192 ms  0x7487 ret:0x7f52e0ee9520
 26192 ms  0x7487 SSL_AuthCertificateHook()
 26192 ms  0x7487 fd:0x7f52e0ee9520
 26192 ms  0x7487 ret:0x0
 26192 ms  0x7487 PR_Connect()
 26192 ms  0x7487 fd:0x7f52e0ee9520
 26192 ms  0x7487 SSL_ImportFD()
 26192 ms  0x7487 ret:0x7f52e0ee9490
 26192 ms  0x7487 SSL_AuthCertificateHook()
 26192 ms  0x7487 fd:0x7f52e0ee9490
 26192 ms  0x7487 ret:0x0
 26192 ms  0x7487 PR_Connect()
 26192 ms  0x7487 fd:0x7f52e0ee9490
 26192 ms  0x7487 SSL_ImportFD()
 26192 ms  0x7487 ret:0x7f52e0ee94c0
 26192 ms  0x7487 SSL_AuthCertificateHook()
 26192 ms  0x7487 fd:0x7f52e0ee94c0
 26192 ms  0x7487 ret:0x0
 26192 ms  0x7487 PR_Connect()
 26192 ms  0x7487 fd:0x7f52e0ee94c0
 26194 ms  0x7487 PK11_Encrypt()
 26194 ms  0x7487 symkey:0x7f52dca6be80
 26194 ms  0x7487 PK11_Encrypt()
 26194 ms  0x7487 symkey:0x7f52dc5fd300
           /* TID 0x752d */
 26196 ms  0x752d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26196 ms  0x752d ret:0x0
           /* TID 0x7487 */
 26196 ms  SECKEY_ECParamsToKeySize()
 26196 ms  0x7487 ret:0x100
 26196 ms  0x7487 SECKEY_CreateECPrivateKey()
 26196 ms  0x7487 cx:0x7f52bccea248
 26197 ms     | 0x7487 EC_ValidatePublicKey()
 26202 ms     | 0x7487 ret:0x0
 26202 ms  0x7487 ret:0x7f52c92db820::7f52c92db820  50 0b 6d e3                                      P.m.
 26202 ms  0x7487 PK11_PubDeriveWithKDF()
 26202 ms  0x7487 seckey:0x7f52c92db820
 26202 ms     | 0x7487 EC_ValidatePublicKey()
 26203 ms     | 0x7487 ret:0x0
 26205 ms  0x7487 ret:0x7f52e0c82280
 26205 ms  0x7487 PK11_DeriveWithFlags()
 26205 ms  0x7487 basekey:0x7f52e0c82280
 26205 ms     | 0x7487 PK11_DeriveWithTemplate()
 26205 ms  0x7487 ret:0x7f52e0c42580
 26205 ms  0x7487 PK11_Derive()
 26205 ms  0x7487 basekey:0x7f52e0c42580
 26205 ms     | 0x7487 PK11_DeriveWithTemplate()
 26205 ms  0x7487 ret:0x7f52e87e5e00
 26205 ms  0x7487 SECKEY_DestroyPrivateKey()
 26205 ms  0x7487 privk:0x7f52c92db820::7f52c92db820  50 0b 6d e3                                      P.m.
 26205 ms  0x7487 privk:0x7f52c92db820::7f52c92db820  e5 e5 e5 e5                                      ....
 26205 ms  0x7487 PK11_Encrypt()
 26205 ms  0x7487 symkey:0x7f52e87c5b80
 26208 ms  0x7487 SECKEY_DestroyPrivateKey()
 26208 ms  0x7487 privk:0x7f52bcdbb020::7f52bcdbb020  10 15 7e e0                                      ..~.
 26208 ms  0x7487 privk:0x7f52bcdbb020::7f52bcdbb020  e5 e5 e5 e5                                      ....
 26208 ms  0x7487 SECKEY_DestroyPrivateKey()
 26208 ms  0x7487 privk:0x7f52bcd43820::7f52bcd43820  d0 1d 71 e0                                      ..q.
 26208 ms  0x7487 privk:0x7f52bcd43820::7f52bcd43820  e5 e5 e5 e5                                      ....
 26208 ms  0x7487 SECKEY_DestroyPrivateKey()
 26208 ms  0x7487 privk:0x7f52bcdc0020::7f52bcdc0020  f0 0b 9f e0                                      ....
 26209 ms  0x7487 privk:0x7f52bcdc0020::7f52bcdc0020  e5 e5 e5 e5                                      ....
 26209 ms  0x7487 SECKEY_DestroyPrivateKey()
 26209 ms  0x7487 privk:0x7f52bcdbd820::7f52bcdbd820  80 a8 90 e0                                      ....
 26209 ms  0x7487 privk:0x7f52bcdbd820::7f52bcdbd820  e5 e5 e5 e5                                      ....
 26210 ms  0x7487 SECKEY_DestroyPrivateKey()
 26210 ms  0x7487 privk:0x7f52bcdc5020::7f52bcdc5020  80 53 a1 e0                                      .S..
 26210 ms  0x7487 privk:0x7f52bcdc5020::7f52bcdc5020  e5 e5 e5 e5                                      ....
 26210 ms  0x7487 SECKEY_DestroyPrivateKey()
 26210 ms  0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  80 0d 9f e0                                      ....
 26210 ms  0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  e5 e5 e5 e5                                      ....
 26216 ms  0x7487 SECKEY_DestroyPrivateKey()
 26216 ms  0x7487 privk:0x7f52bcdca020::7f52bcdca020  d0 e3 c4 e0                                      ....
 26216 ms  0x7487 privk:0x7f52bcdca020::7f52bcdca020  e5 e5 e5 e5                                      ....
 26216 ms  0x7487 SECKEY_DestroyPrivateKey()
 26216 ms  0x7487 privk:0x7f52bcdc7820::7f52bcdc7820  30 5d a1 e0                                      0]..
 26216 ms  0x7487 privk:0x7f52bcdc7820::7f52bcdc7820  e5 e5 e5 e5                                      ....
 26217 ms  0x7487 SECKEY_CreateECPrivateKey()
 26217 ms  0x7487 cx:0x7f52bccea0a8
 26218 ms     | 0x7487 EC_ValidatePublicKey()
 26218 ms     | 0x7487 ret:0x0
 26218 ms  0x7487 ret:0x7f52bcd43820::7f52bcd43820  10 7f 6e e0                                      ..n.
 26218 ms  0x7487 SECKEY_CreateECPrivateKey()
 26218 ms  0x7487 cx:0x7f52bccea0a8
 26218 ms     | 0x7487 EC_ValidatePublicKey()
 26220 ms     | 0x7487 ret:0x0
 26220 ms  0x7487 ret:0x7f52bcdbb020::7f52bcdbb020  c0 a9 71 e0                                      ..q.
 26220 ms  0x7487 PK11_Encrypt()
 26220 ms  0x7487 symkey:0x7f52e8968c00
 26220 ms  0x7487 PK11_Encrypt()
 26220 ms  0x7487 symkey:0x7f52e8968c00
 26221 ms  0x7487 PK11_Encrypt()
 26221 ms  0x7487 symkey:0x7f52e87c5d80
 26221 ms  0x7487 PR_Connect()
 26221 ms  0x7487 fd:0x7f52e07fe700
 26221 ms  0x7487 SSL_ImportFD()
 26221 ms  0x7487 ret:0x7f52e0aa63a0
 26221 ms  0x7487 SSL_AuthCertificateHook()
 26221 ms  0x7487 fd:0x7f52e0aa63a0
 26221 ms  0x7487 ret:0x0
 26222 ms  0x7487 PR_Connect()
 26222 ms  0x7487 fd:0x7f52e0aa63a0
 26222 ms  0x7487 SSL_ImportFD()
 26222 ms  0x7487 ret:0x7f52e3702940
 26222 ms  0x7487 SSL_AuthCertificateHook()
 26222 ms  0x7487 fd:0x7f52e3702940
 26222 ms  0x7487 ret:0x0
 26222 ms  0x7487 PR_Connect()
 26222 ms  0x7487 fd:0x7f52e3702940
 26222 ms  0x7487 SSL_AuthCertificateComplete()
 26222 ms  0x7487 fd:0x7f52dd862490
 26222 ms  0x7487 err:0x0
 26222 ms  0x7487 PK11_Encrypt()
 26222 ms  0x7487 symkey:0x7f52e7d81e00
 26223 ms  0x7487 PK11_Encrypt()
 26223 ms  0x7487 symkey:0x7f52e0cb9300
 26223 ms  0x7487 PK11_Encrypt()
 26223 ms  0x7487 symkey:0x7f52e8968c00
           /* TID 0x74e3 */
 26224 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26224 ms  0x74e3 ret:0x0
           /* TID 0x748f */
 26224 ms  0x748f PR_Close()
 26224 ms  0x748f fd:0x7f52e06be0a0
           /* TID 0x7487 */
 26224 ms  0x7487 SECKEY_DestroyPrivateKey()
 26224 ms  0x7487 privk:0x7f52c92d3020::7f52c92d3020  90 97 60 e4                                      ..`.
 26224 ms  0x7487 privk:0x7f52c92d3020::7f52c92d3020  e5 e5 e5 e5                                      ....
 26224 ms  0x7487 SECKEY_DestroyPrivateKey()
 26224 ms  0x7487 privk:0x7f52c927f020::7f52c927f020  80 0d 2e e4                                      ....
 26224 ms  0x7487 privk:0x7f52c927f020::7f52c927f020  e5 e5 e5 e5                                      ....
 26225 ms  0x7487 PK11_Encrypt()
 26225 ms  0x7487 symkey:0x7f52e87c5b80
 26225 ms  0x7487 SECKEY_CreateECPrivateKey()
 26225 ms  0x7487 cx:0x7f52bccec468
 26226 ms     | 0x7487 EC_ValidatePublicKey()
 26226 ms     | 0x7487 ret:0x0
 26226 ms  0x7487 ret:0x7f52bcdc0020::7f52bcdc0020  c0 24 91 e0                                      .$..
 26226 ms  0x7487 SECKEY_CreateECPrivateKey()
 26226 ms  0x7487 cx:0x7f52bccec468
 26226 ms     | 0x7487 EC_ValidatePublicKey()
 26228 ms     | 0x7487 ret:0x0
 26228 ms  0x7487 ret:0x7f52bcdc2820::7f52bcdc2820  40 0c 9f e0                                      @...
           /* TID 0x748f */
 26228 ms  0x748f PR_Close()
 26228 ms  0x748f fd:0x7f52e07fee50
           /* TID 0x7487 */
 26228 ms  0x7487 SECKEY_DestroyPrivateKey()
 26228 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  60 05 2e e4                                      `...
 26229 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  e5 e5 e5 e5                                      ....
 26229 ms  0x7487 SECKEY_DestroyPrivateKey()
 26229 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  a0 cb 2c e4                                      ..,.
 26229 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e5 e5 e5 e5                                      ....
 26229 ms  0x7487 SSL_AuthCertificateComplete()
 26229 ms  0x7487 fd:0x7f52dc5cf520
 26229 ms  0x7487 err:0x0
 26229 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26229 ms     | 0x7487 privk:0x7f52c92ea820::7f52c92ea820  d0 a3 7b e4                                      ..{.
 26229 ms     | 0x7487 privk:0x7f52c92ea820::7f52c92ea820  e5 e5 e5 e5                                      ....
 26229 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26229 ms     | 0x7487 privk:0x7f52c92e6820::7f52c92e6820  e0 9c 60 e4                                      ..`.
 26229 ms     | 0x7487 privk:0x7f52c92e6820::7f52c92e6820  e5 e5 e5 e5                                      ....
 26229 ms  0x7487 PR_Close()
 26229 ms  0x7487 fd:0x7f52e3702e50
 26230 ms  0x7487 PK11_Encrypt()
 26230 ms  0x7487 symkey:0x7f52e87e5a00
 26230 ms  0x7487 SSL_ImportFD()
 26230 ms  0x7487 ret:0x7f52e07fee50
 26230 ms  0x7487 SSL_AuthCertificateHook()
 26230 ms  0x7487 fd:0x7f52e07fee50
 26230 ms  0x7487 ret:0x0
 26230 ms  0x7487 PR_Connect()
 26230 ms  0x7487 fd:0x7f52e07fee50
           /* TID 0x748f */
 26237 ms  0x748f PR_Close()
 26237 ms  0x748f fd:0x7f52dd885970
           /* TID 0x7487 */
 26237 ms  0x7487 PK11_Encrypt()
 26237 ms  0x7487 symkey:0x7f52c98b6800
 26248 ms  SECKEY_ECParamsToKeySize()
 26248 ms  0x7487 ret:0x100
 26248 ms  0x7487 SECKEY_CreateECPrivateKey()
 26248 ms  0x7487 cx:0x7f52bccea3e8
 26249 ms     | 0x7487 EC_ValidatePublicKey()
 26250 ms     | 0x7487 ret:0x0
 26250 ms  0x7487 ret:0x7f52bcdc7820::7f52bcdc7820  c0 44 af e0                                      .D..
 26250 ms  0x7487 PK11_PubDeriveWithKDF()
 26250 ms  0x7487 seckey:0x7f52bcdc7820
 26250 ms     | 0x7487 EC_ValidatePublicKey()
 26256 ms     | 0x7487 ret:0x0
 26258 ms  0x7487 ret:0x7f52e0c82280
 26258 ms  0x7487 PK11_DeriveWithFlags()
 26258 ms  0x7487 basekey:0x7f52e0c82280
 26258 ms     | 0x7487 PK11_DeriveWithTemplate()
 26258 ms  0x7487 ret:0x7f52e87e5c00
 26258 ms  0x7487 PK11_Derive()
 26258 ms  0x7487 basekey:0x7f52e87e5c00
 26258 ms     | 0x7487 PK11_DeriveWithTemplate()
 26258 ms  0x7487 ret:0x7f52dd846480
 26258 ms  0x7487 SECKEY_DestroyPrivateKey()
 26258 ms  0x7487 privk:0x7f52bcdc7820::7f52bcdc7820  c0 44 af e0                                      .D..
 26258 ms  0x7487 privk:0x7f52bcdc7820::7f52bcdc7820  e5 e5 e5 e5                                      ....
 26258 ms  0x7487 PK11_Encrypt()
 26258 ms  0x7487 symkey:0x7f52e0a69c00
 26262 ms  0x7487 SSL_AuthCertificateComplete()
 26262 ms  0x7487 fd:0x7f52dd862b50
 26262 ms  0x7487 err:0x0
           /* TID 0x748f */
 26267 ms  0x748f PR_Close()
 26267 ms  0x748f fd:0x7f52e77b38e0
           /* TID 0x7527 */
 26267 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26267 ms  0x7527 ret:0x0
           /* TID 0x748f */
 26267 ms  0x748f PR_Close()
 26267 ms  0x748f fd:0x7f52e78cee50
           /* TID 0x7487 */
 26270 ms  0x7487 SECKEY_CreateECPrivateKey()
 26270 ms  0x7487 cx:0x7f52bccec608
 26271 ms     | 0x7487 EC_ValidatePublicKey()
 26271 ms     | 0x7487 ret:0x0
 26271 ms  0x7487 ret:0x7f52bcdc9820::7f52bcdc9820  20 8e c2 e0                                       ...
 26271 ms  0x7487 SECKEY_CreateECPrivateKey()
 26271 ms  0x7487 cx:0x7f52bccec608
 26272 ms     | 0x7487 EC_ValidatePublicKey()
 26277 ms     | 0x7487 ret:0x0
 26278 ms  0x7487 ret:0x7f52bce1c020::7f52bce1c020  70 39 45 df                                      p9E.
 26280 ms  0x7487 SSL_AuthCertificateComplete()
 26280 ms  0x7487 fd:0x7f52e0dff430
 26280 ms  0x7487 err:0x0
 26280 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26280 ms     | 0x7487 privk:0x7f52dfbce820::7f52dfbce820  80 dd 7b e3                                      ..{.
 26280 ms     | 0x7487 privk:0x7f52dfbce820::7f52dfbce820  e5 e5 e5 e5                                      ....
 26280 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26280 ms     | 0x7487 privk:0x7f52dfbcc820::7f52dfbcc820  e0 ac 90 e0                                      ....
 26281 ms     | 0x7487 privk:0x7f52dfbcc820::7f52dfbcc820  e5 e5 e5 e5                                      ....
 26281 ms  0x7487 PK11_Encrypt()
 26281 ms  0x7487 symkey:0x7f52e87d4400
 26281 ms  0x7487 PR_Close()
 26281 ms  0x7487 fd:0x7f52dd862b50
 26281 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26281 ms     | 0x7487 privk:0x7f52bce1d820::7f52bce1d820  40 bc e1 e0                                      @...
 26281 ms     | 0x7487 privk:0x7f52bce1d820::7f52bce1d820  e5 e5 e5 e5                                      ....
 26281 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26281 ms     | 0x7487 privk:0x7f52bce15820::7f52bce15820  40 3c d4 e0                                      @<..
 26281 ms     | 0x7487 privk:0x7f52bce15820::7f52bce15820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 26283 ms  0x748f PR_Close()
 26283 ms  0x748f fd:0x7f52e0aac430
           /* TID 0x7487 */
 26291 ms  SECKEY_ECParamsToKeySize()
 26291 ms  0x7487 ret:0x100
 26291 ms  0x7487 SECKEY_CreateECPrivateKey()
 26291 ms  0x7487 cx:0x7f52bccec468
 26292 ms     | 0x7487 EC_ValidatePublicKey()
 26293 ms     | 0x7487 ret:0x0
 26293 ms  0x7487 ret:0x7f52c9271020::7f52c9271020  b0 3a d4 e0                                      .:..
 26298 ms  0x7487 PK11_PubDeriveWithKDF()
 26298 ms  0x7487 seckey:0x7f52c9271020
 26298 ms     | 0x7487 EC_ValidatePublicKey()
 26300 ms     | 0x7487 ret:0x0
 26301 ms  0x7487 ret:0x7f52dd846480
 26301 ms  0x7487 PK11_DeriveWithFlags()
 26301 ms  0x7487 basekey:0x7f52dd846480
 26301 ms     | 0x7487 PK11_DeriveWithTemplate()
 26301 ms  0x7487 ret:0x7f52e87e5c00
 26301 ms  0x7487 PK11_Derive()
 26301 ms  0x7487 basekey:0x7f52e87e5c00
 26301 ms     | 0x7487 PK11_DeriveWithTemplate()
 26301 ms  0x7487 ret:0x7f52e0c82280
 26301 ms  0x7487 SECKEY_DestroyPrivateKey()
 26301 ms  0x7487 privk:0x7f52c9271020::7f52c9271020  b0 3a d4 e0                                      .:..
 26301 ms  0x7487 privk:0x7f52c9271020::7f52c9271020  e5 e5 e5 e5                                      ....
 26301 ms  0x7487 PK11_Encrypt()
 26301 ms  0x7487 symkey:0x7f52e0a69c80
           /* TID 0x748f */
 26309 ms  0x748f PR_Close()
 26309 ms  0x748f fd:0x7f52e576ff70
           /* TID 0x7525 */
 26309 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26310 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 26310 ms  0x7487 PK11_Derive()
 26310 ms  0x7487 basekey:0x7f52dd87d300
 26310 ms     | 0x7487 PK11_DeriveWithTemplate()
 26310 ms  0x7487 ret:0x7f52dd846480
 26310 ms  0x7487 PK11_Encrypt()
 26310 ms  0x7487 symkey:0x7f52e890e700
 26311 ms  0x7487 SECKEY_DestroyPrivateKey()
 26311 ms  0x7487 privk:0x7f52bcdbb020::7f52bcdbb020  c0 a9 71 e0                                      ..q.
 26311 ms  0x7487 privk:0x7f52bcdbb020::7f52bcdbb020  e5 e5 e5 e5                                      ....
 26311 ms  0x7487 SECKEY_DestroyPrivateKey()
 26311 ms  0x7487 privk:0x7f52bcd43820::7f52bcd43820  10 7f 6e e0                                      ..n.
 26311 ms  0x7487 privk:0x7f52bcd43820::7f52bcd43820  e5 e5 e5 e5                                      ....
 26314 ms  0x7487 SECKEY_CreateECPrivateKey()
 26314 ms  0x7487 cx:0x7f52bccebf88
 26314 ms     | 0x7487 EC_ValidatePublicKey()
 26314 ms     | 0x7487 ret:0x0
 26314 ms  0x7487 ret:0x7f52bcd3e020::7f52bcd3e020  10 7f 6e e0                                      ..n.
 26314 ms  0x7487 SECKEY_CreateECPrivateKey()
 26314 ms  0x7487 cx:0x7f52bccebf88
 26315 ms     | 0x7487 EC_ValidatePublicKey()
 26316 ms     | 0x7487 ret:0x0
 26316 ms  0x7487 ret:0x7f52bcdba020::7f52bcdba020  c0 a9 71 e0                                      ..q.
 26317 ms  0x7487 SECKEY_CreateECPrivateKey()
 26317 ms  0x7487 cx:0x7f52bccea588
 26317 ms     | 0x7487 EC_ValidatePublicKey()
 26317 ms     | 0x7487 ret:0x0
 26317 ms  0x7487 ret:0x7f52c9270020::7f52c9270020  b0 3a d4 e0                                      .:..
 26317 ms  0x7487 SECKEY_CreateECPrivateKey()
 26317 ms  0x7487 cx:0x7f52bccea588
 26318 ms     | 0x7487 EC_ValidatePublicKey()
 26319 ms     | 0x7487 ret:0x0
 26319 ms  0x7487 ret:0x7f52c9276020::7f52c9276020  50 0b 6d e3                                      P.m.
 26320 ms  0x7487 PK11_Encrypt()
 26320 ms  0x7487 symkey:0x7f52e7d81e00
 26320 ms  0x7487 PK11_Encrypt()
 26320 ms  0x7487 symkey:0x7f52dc5fd300
 26321 ms  0x7487 SSL_AuthCertificateComplete()
 26321 ms  0x7487 fd:0x7f52e36deeb0
 26321 ms  0x7487 err:0x0
 26321 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26321 ms     | 0x7487 privk:0x7f52bcd42820::7f52bcd42820  20 e9 df e0                                       ...
 26321 ms     | 0x7487 privk:0x7f52bcd42820::7f52bcd42820  e5 e5 e5 e5                                      ....
 26321 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26321 ms     | 0x7487 privk:0x7f52bcd40820::7f52bcd40820  b0 5f c6 e0                                      ._..
 26321 ms     | 0x7487 privk:0x7f52bcd40820::7f52bcd40820  e5 e5 e5 e5                                      ....
 26321 ms  0x7487 SECKEY_CreateECPrivateKey()
 26321 ms  0x7487 cx:0x7f52bccecae8
 26322 ms     | 0x7487 EC_ValidatePublicKey()
 26322 ms     | 0x7487 ret:0x0
 26322 ms  0x7487 ret:0x7f52bcd40820::7f52bcd40820  80 8d c2 e0                                      ....
 26322 ms  0x7487 SECKEY_CreateECPrivateKey()
 26322 ms  0x7487 cx:0x7f52bccecae8
 26322 ms     | 0x7487 EC_ValidatePublicKey()
 26324 ms     | 0x7487 ret:0x0
 26324 ms  0x7487 ret:0x7f52bcd42820::7f52bcd42820  20 99 df e0                                       ...
 26326 ms  0x7487 PK11_Encrypt()
 26326 ms  0x7487 symkey:0x7f52e890e700
 26327 ms  0x7487 SECKEY_CreateECPrivateKey()
 26327 ms  0x7487 cx:0x7f52bccec7a8
 26327 ms     | 0x7487 EC_ValidatePublicKey()
 26327 ms     | 0x7487 ret:0x0
 26327 ms  0x7487 ret:0x7f52c9282020::7f52c9282020  70 2e 71 e3                                      p.q.
 26327 ms  0x7487 SECKEY_CreateECPrivateKey()
 26327 ms  0x7487 cx:0x7f52bccec7a8
 26328 ms     | 0x7487 EC_ValidatePublicKey()
 26329 ms     | 0x7487 ret:0x0
 26330 ms  0x7487 ret:0x7f52c92db020::7f52c92db020  20 5e 71 e3                                       ^q.
 26330 ms  0x7487 SSL_ImportFD()
 26330 ms  0x7487 ret:0x7f52e53d9700
 26330 ms  0x7487 SSL_AuthCertificateHook()
 26330 ms  0x7487 fd:0x7f52e53d9700
 26330 ms  0x7487 ret:0x0
 26330 ms  0x7487 PR_Connect()
 26330 ms  0x7487 fd:0x7f52e53d9700
 26330 ms  0x7487 SSL_ImportFD()
 26330 ms  0x7487 ret:0x7f52e3714a30
 26330 ms  0x7487 SSL_AuthCertificateHook()
 26330 ms  0x7487 fd:0x7f52e3714a30
 26330 ms  0x7487 ret:0x0
 26332 ms  0x7487 PK11_Encrypt()
 26332 ms  0x7487 symkey:0x7f52e0cb9300
 26332 ms  0x7487 PR_Connect()
 26332 ms  0x7487 fd:0x7f52e3714a30
 26332 ms  0x7487 SSL_ImportFD()
 26332 ms  0x7487 ret:0x7f52e77b3580
 26332 ms  0x7487 SSL_AuthCertificateHook()
 26332 ms  0x7487 fd:0x7f52e77b3580
 26332 ms  0x7487 ret:0x0
 26333 ms  0x7487 PR_Connect()
 26333 ms  0x7487 fd:0x7f52e77b3580
 26333 ms  0x7487 PR_Close()
 26333 ms  0x7487 fd:0x7f52e36deeb0
 26333 ms  0x7487 SECKEY_DestroyPrivateKey()
 26333 ms  0x7487 privk:0x7f52bce22820::7f52bce22820  b0 5a 71 e3                                      .Zq.
 26333 ms  0x7487 privk:0x7f52bce22820::7f52bce22820  e5 e5 e5 e5                                      ....
 26333 ms  0x7487 SECKEY_DestroyPrivateKey()
 26333 ms  0x7487 privk:0x7f52bce20020::7f52bce20020  d0 6d e2 e0                                      .m..
 26333 ms  0x7487 privk:0x7f52bce20020::7f52bce20020  e5 e5 e5 e5                                      ....
 26335 ms  0x7487 PK11_Derive()
 26335 ms  0x7487 basekey:0x7f52e460ac00
 26335 ms     | 0x7487 PK11_DeriveWithTemplate()
 26335 ms  0x7487 ret:0x7f52e891a280
 26335 ms  0x7487 PK11_Encrypt()
 26335 ms  0x7487 symkey:0x7f52e891a580
 26336 ms  0x7487 SECKEY_DestroyPrivateKey()
 26336 ms  0x7487 privk:0x7f52bce1c020::7f52bce1c020  70 39 45 df                                      p9E.
 26336 ms  0x7487 privk:0x7f52bce1c020::7f52bce1c020  e5 e5 e5 e5                                      ....
 26336 ms  0x7487 SECKEY_DestroyPrivateKey()
 26336 ms  0x7487 privk:0x7f52bcdc9820::7f52bcdc9820  20 8e c2 e0                                       ...
 26336 ms  0x7487 privk:0x7f52bcdc9820::7f52bcdc9820  e5 e5 e5 e5                                      ....
 26336 ms  0x7487 SECKEY_CreateECPrivateKey()
 26336 ms  0x7487 cx:0x7f52bccec948
 26337 ms     | 0x7487 EC_ValidatePublicKey()
 26337 ms     | 0x7487 ret:0x0
 26337 ms  0x7487 ret:0x7f52bcdc8820::7f52bcdc8820  40 a7 90 e0                                      @...
 26337 ms  0x7487 SECKEY_CreateECPrivateKey()
 26337 ms  0x7487 cx:0x7f52bccec948
 26338 ms     | 0x7487 EC_ValidatePublicKey()
 26339 ms     | 0x7487 ret:0x0
 26339 ms  0x7487 ret:0x7f52bcdd2820::7f52bcdd2820  d0 e3 c4 e0                                      ....
 26340 ms  0x7487 SSL_ImportFD()
 26340 ms  0x7487 ret:0x7f52e3702490
 26340 ms  0x7487 SSL_AuthCertificateHook()
 26340 ms  0x7487 fd:0x7f52e3702490
 26340 ms  0x7487 ret:0x0
 26340 ms  0x7487 PR_Connect()
 26340 ms  0x7487 fd:0x7f52e3702490
 26340 ms  0x7487 SSL_ImportFD()
 26340 ms  0x7487 ret:0x7f52e46674c0
 26340 ms  0x7487 SSL_AuthCertificateHook()
 26340 ms  0x7487 fd:0x7f52e46674c0
 26340 ms  0x7487 ret:0x0
 26340 ms  0x7487 PR_Connect()
 26340 ms  0x7487 fd:0x7f52e46674c0
           /* TID 0x752b */
 26343 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26343 ms  0x752b ret:0x0
           /* TID 0x748f */
 26344 ms  0x748f PR_Close()
 26344 ms  0x748f fd:0x7f52e37d9490
           /* TID 0x7487 */
 26344 ms  0x7487 PK11_Encrypt()
 26344 ms  0x7487 symkey:0x7f52e891a580
 26350 ms  0x7487 SSL_AuthCertificateComplete()
 26350 ms  0x7487 fd:0x7f52dc5cf820
 26350 ms  0x7487 err:0x0
 26350 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26350 ms     | 0x7487 privk:0x7f52c92e4020::7f52c92e4020  a0 9b 60 e4                                      ..`.
 26350 ms     | 0x7487 privk:0x7f52c92e4020::7f52c92e4020  e5 e5 e5 e5                                      ....
 26350 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26350 ms     | 0x7487 privk:0x7f52c92d5820::7f52c92d5820  70 99 60 e4                                      p.`.
 26350 ms     | 0x7487 privk:0x7f52c92d5820::7f52c92d5820  e5 e5 e5 e5                                      ....
 26350 ms  0x7487 PK11_Encrypt()
 26350 ms  0x7487 symkey:0x7f52e0c43480
 26351 ms  0x7487 SSL_ImportFD()
 26351 ms  0x7487 ret:0x7f52e7d3ad90
 26351 ms  0x7487 SSL_AuthCertificateHook()
 26351 ms  0x7487 fd:0x7f52e7d3ad90
 26351 ms  0x7487 ret:0x0
 26351 ms  0x7487 PR_Connect()
 26351 ms  0x7487 fd:0x7f52e7d3ad90
           /* TID 0x748f */
 26351 ms  0x748f PR_Close()
 26351 ms  0x748f fd:0x7f52e7d3a670
           /* TID 0x74e3 */
 26352 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26352 ms  0x74e3 ret:0x0
 26352 ms  0x74e3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26352 ms  0x74e3 ret:0x0
           /* TID 0x7487 */
 26353 ms  0x7487 SSL_AuthCertificateComplete()
 26353 ms  0x7487 fd:0x7f52dd8b34c0
 26353 ms  0x7487 err:0x0
 26353 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26353 ms     | 0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  40 0c 9f e0                                      @...
 26353 ms     | 0x7487 privk:0x7f52bcdc2820::7f52bcdc2820  e5 e5 e5 e5                                      ....
 26353 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26353 ms     | 0x7487 privk:0x7f52bcdc0020::7f52bcdc0020  c0 24 91 e0                                      .$..
 26353 ms     | 0x7487 privk:0x7f52bcdc0020::7f52bcdc0020  e5 e5 e5 e5                                      ....
 26353 ms  0x7487 PK11_Encrypt()
 26353 ms  0x7487 symkey:0x7f52e0a69c80
 26358 ms  0x7487 SECKEY_CreateECPrivateKey()
 26358 ms  0x7487 cx:0x7f52bccece28
 26360 ms     | 0x7487 EC_ValidatePublicKey()
 26360 ms     | 0x7487 ret:0x0
 26360 ms  0x7487 ret:0x7f52bcdbe820::7f52bcdbe820  60 95 1a dc                                      `...
 26360 ms  0x7487 SECKEY_CreateECPrivateKey()
 26360 ms  0x7487 cx:0x7f52bccece28
 26361 ms     | 0x7487 EC_ValidatePublicKey()
 26364 ms     | 0x7487 ret:0x0
 26364 ms  0x7487 ret:0x7f52bcdc0820::7f52bcdc0820  90 2c 91 e0                                      .,..
 26378 ms  0x7487 PK11_DeriveWithFlags()
 26378 ms  0x7487 basekey:0x7f52dd87dc80
 26379 ms     | 0x7487 PK11_DeriveWithTemplate()
 26379 ms  0x7487 ret:0x7f52dca6af80
 26379 ms  0x7487 PK11_Derive()
 26379 ms  0x7487 basekey:0x7f52dca6af80
 26379 ms     | 0x7487 PK11_DeriveWithTemplate()
 26379 ms  0x7487 ret:0x7f52dcac0c80
 26381 ms  0x7487 PK11_Encrypt()
 26381 ms  0x7487 symkey:0x7f52e7d81e00
 26381 ms  0x7487 SSL_AuthCertificateComplete()
 26381 ms  0x7487 fd:0x7f52e07fee50
 26381 ms  0x7487 err:0x0
 26381 ms  0x7487 PK11_Derive()
 26381 ms  0x7487 basekey:0x7f52dc5fd200
 26381 ms     | 0x7487 PK11_DeriveWithTemplate()
 26381 ms  0x7487 ret:0x7f52dd87dc80
 26381 ms  0x7487 PK11_Encrypt()
 26381 ms  0x7487 symkey:0x7f52e870d200
 26382 ms  0x7487 SECKEY_DestroyPrivateKey()
 26382 ms  0x7487 privk:0x7f52c92db020::7f52c92db020  20 5e 71 e3                                       ^q.
 26383 ms  0x7487 privk:0x7f52c92db020::7f52c92db020  e5 e5 e5 e5                                      ....
 26383 ms  0x7487 SECKEY_DestroyPrivateKey()
 26383 ms  0x7487 privk:0x7f52c9282020::7f52c9282020  70 2e 71 e3                                      p.q.
 26383 ms  0x7487 privk:0x7f52c9282020::7f52c9282020  e5 e5 e5 e5                                      ....
 26390 ms  SECKEY_ECParamsToKeySize()
 26390 ms  0x7487 ret:0x100
 26390 ms  0x7487 SECKEY_CreateECPrivateKey()
 26390 ms  0x7487 cx:0x7f52bccebf88
 26391 ms     | 0x7487 EC_ValidatePublicKey()
 26392 ms     | 0x7487 ret:0x0
 26392 ms  0x7487 ret:0x7f52c92e3820::7f52c92e3820  20 0e 6d e3                                       .m.
 26397 ms  0x7487 PK11_PubDeriveWithKDF()
 26397 ms  0x7487 seckey:0x7f52c92e3820
 26397 ms     | 0x7487 EC_ValidatePublicKey()
 26399 ms     | 0x7487 ret:0x0
 26400 ms  0x7487 ret:0x7f52dc5fd280
 26400 ms  0x7487 PK11_DeriveWithFlags()
 26400 ms  0x7487 basekey:0x7f52dc5fd280
 26400 ms     | 0x7487 PK11_DeriveWithTemplate()
 26401 ms  0x7487 ret:0x7f52dd87d500
 26401 ms  0x7487 PK11_Derive()
 26401 ms  0x7487 basekey:0x7f52dd87d500
 26401 ms     | 0x7487 PK11_DeriveWithTemplate()
 26401 ms  0x7487 ret:0x7f52e870d100
 26401 ms  0x7487 SECKEY_DestroyPrivateKey()
 26401 ms  0x7487 privk:0x7f52c92e3820::7f52c92e3820  20 0e 6d e3                                       .m.
 26401 ms  0x7487 privk:0x7f52c92e3820::7f52c92e3820  e5 e5 e5 e5                                      ....
 26401 ms  0x7487 PK11_Encrypt()
 26401 ms  0x7487 symkey:0x7f52e7722b80
           /* TID 0x7525 */
 26402 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26402 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 26402 ms  SECKEY_ECParamsToKeySize()
 26402 ms  0x7487 ret:0x100
 26402 ms  0x7487 SECKEY_CreateECPrivateKey()
 26402 ms  0x7487 cx:0x7f52bccea588
 26403 ms     | 0x7487 EC_ValidatePublicKey()
 26405 ms     | 0x7487 ret:0x0
 26405 ms  0x7487 ret:0x7f52c92e7820::7f52c92e7820  30 58 71 e3                                      0Xq.
 26405 ms  0x7487 PK11_PubDeriveWithKDF()
 26405 ms  0x7487 seckey:0x7f52c92e7820
 26405 ms     | 0x7487 EC_ValidatePublicKey()
 26408 ms     | 0x7487 ret:0x0
 26410 ms  0x7487 ret:0x7f52dc5fd280
 26410 ms  0x7487 PK11_DeriveWithFlags()
 26410 ms  0x7487 basekey:0x7f52dc5fd280
 26410 ms     | 0x7487 PK11_DeriveWithTemplate()
 26410 ms  0x7487 ret:0x7f52dd846500
 26410 ms  0x7487 PK11_Derive()
 26410 ms  0x7487 basekey:0x7f52dd846500
 26410 ms     | 0x7487 PK11_DeriveWithTemplate()
 26410 ms  0x7487 ret:0x7f52e87e5c80
 26410 ms  0x7487 SECKEY_DestroyPrivateKey()
 26410 ms  0x7487 privk:0x7f52c92e7820::7f52c92e7820  30 58 71 e3                                      0Xq.
 26410 ms  0x7487 privk:0x7f52c92e7820::7f52c92e7820  e5 e5 e5 e5                                      ....
 26410 ms  0x7487 PK11_Encrypt()
 26410 ms  0x7487 symkey:0x7f52e8eff300
 26410 ms  0x7487 SECKEY_CreateECPrivateKey()
 26410 ms  0x7487 cx:0x7f52bcceb5c8
 26411 ms     | 0x7487 EC_ValidatePublicKey()
 26411 ms     | 0x7487 ret:0x0
 26411 ms  0x7487 ret:0x7f52c92e7820::7f52c92e7820  90 2c 71 e3                                      .,q.
 26411 ms  0x7487 SECKEY_CreateECPrivateKey()
 26411 ms  0x7487 cx:0x7f52bcceb5c8
 26412 ms     | 0x7487 EC_ValidatePublicKey()
 26413 ms     | 0x7487 ret:0x0
 26413 ms  0x7487 ret:0x7f52c92eb020::7f52c92eb020  b0 5a 71 e3                                      .Zq.
           /* TID 0x752b */
 26414 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26414 ms  0x752b ret:0x0
 26414 ms  0x752b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26415 ms  0x752b ret:0x0
           /* TID 0x7487 */
 26415 ms  SECKEY_ECParamsToKeySize()
 26415 ms  0x7487 ret:0xff
 26415 ms  0x7487 SECKEY_CreateECPrivateKey()
 26415 ms  0x7487 cx:0x7f52bccece28
 26415 ms     | 0x7487 EC_ValidatePublicKey()
 26415 ms     | 0x7487 ret:0x0
 26415 ms  0x7487 ret:0x7f52dfb14820::7f52dfb14820  50 51 75 e3                                      PQu.
 26415 ms  0x7487 PK11_PubDeriveWithKDF()
 26415 ms  0x7487 seckey:0x7f52dfb14820
 26415 ms     | 0x7487 EC_ValidatePublicKey()
 26415 ms     | 0x7487 ret:0x0
 26416 ms  0x7487 ret:0x7f52dc5fd280
 26416 ms  0x7487 PK11_DeriveWithFlags()
 26416 ms  0x7487 basekey:0x7f52dc5fd280
 26416 ms     | 0x7487 PK11_DeriveWithTemplate()
 26416 ms  0x7487 ret:0x7f52e87e5d00
 26416 ms  0x7487 PK11_Derive()
 26416 ms  0x7487 basekey:0x7f52e87e5d00
 26416 ms     | 0x7487 PK11_DeriveWithTemplate()
 26416 ms  0x7487 ret:0x7f52e49dbb80
 26416 ms  0x7487 SECKEY_DestroyPrivateKey()
 26416 ms  0x7487 privk:0x7f52dfb14820::7f52dfb14820  50 51 75 e3                                      PQu.
 26416 ms  0x7487 privk:0x7f52dfb14820::7f52dfb14820  e5 e5 e5 e5                                      ....
 26416 ms  0x7487 PK11_Encrypt()
 26416 ms  0x7487 symkey:0x7f52e8eff700
 26416 ms  0x7487 PK11_Encrypt()
 26416 ms  0x7487 symkey:0x7f52e7722780
 26417 ms  0x7487 SSL_AuthCertificateComplete()
 26417 ms  0x7487 fd:0x7f52e0ee9490
 26417 ms  0x7487 err:0x0
 26417 ms  0x7487 SSL_AuthCertificateComplete()
 26417 ms  0x7487 fd:0x7f52e0ee9520
 26417 ms  0x7487 err:0x0
 26417 ms  0x7487 PR_Close()
 26417 ms  0x7487 fd:0x7f52e3714a30
 26417 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26417 ms     | 0x7487 privk:0x7f52bcdc0820::7f52bcdc0820  90 2c 91 e0                                      .,..
 26417 ms     | 0x7487 privk:0x7f52bcdc0820::7f52bcdc0820  e5 e5 e5 e5                                      ....
 26417 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 26417 ms     | 0x7487 privk:0x7f52bcdbe820::7f52bcdbe820  60 95 1a dc                                      `...
 26417 ms     | 0x7487 privk:0x7f52bcdbe820::7f52bcdbe820  e5 e5 e5 e5                                      ....
 26422 ms  0x7487 PK11_Encrypt()
 26422 ms  0x7487 symkey:0x7f52e870d200
 26426 ms  0x7487 PK11_Encrypt()
 26426 ms  0x7487 symkey:0x7f52e7722b80
 26426 ms  0x7487 PK11_Encrypt()
 26426 ms  0x7487 symkey:0x7f52e8eff300
 26429 ms  SECKEY_ECParamsToKeySize()
 26429 ms  0x7487 ret:0x100
 26429 ms  0x7487 SECKEY_CreateECPrivateKey()
 26429 ms  0x7487 cx:0x7f52bccec948
 26429 ms     | 0x7487 EC_ValidatePublicKey()
 26434 ms     | 0x7487 ret:0x0
 26434 ms  0x7487 ret:0x7f52bcdc2020::7f52bcdc2020  80 03 6d e3                                      ..m.
 26434 ms  0x7487 PK11_PubDeriveWithKDF()
 26434 ms  0x7487 seckey:0x7f52bcdc2020
 26434 ms     | 0x7487 EC_ValidatePublicKey()
 26436 ms     | 0x7487 ret:0x0
 26438 ms  0x7487 ret:0x7f52e49dbb80
 26438 ms  0x7487 PK11_DeriveWithFlags()
 26438 ms  0x7487 basekey:0x7f52e49dbb80
 26438 ms     | 0x7487 PK11_DeriveWithTemplate()
 26438 ms  0x7487 ret:0x7f52e87e5d00
 26438 ms  0x7487 PK11_Derive()
 26438 ms  0x7487 basekey:0x7f52e87e5d00
 26438 ms     | 0x7487 PK11_DeriveWithTemplate()
 26438 ms  0x7487 ret:0x7f52dc5fd280
 26438 ms  0x7487 SECKEY_DestroyPrivateKey()
 26438 ms  0x7487 privk:0x7f52bcdc2020::7f52bcdc2020  80 03 6d e3                                      ..m.
 26438 ms  0x7487 privk:0x7f52bcdc2020::7f52bcdc2020  e5 e5 e5 e5                                      ....
 26438 ms  0x7487 PK11_Encrypt()
 26438 ms  0x7487 symkey:0x7f52e8eff600
 26438 ms  0x7487 SECKEY_CreateECPrivateKey()
 26438 ms  0x7487 cx:0x7f52bccecfc8
 26440 ms     | 0x7487 EC_ValidatePublicKey()
 26440 ms     | 0x7487 ret:0x0
 26440 ms  0x7487 ret:0x7f52bcdc2020::7f52bcdc2020  d0 3d cd e0                                      .=..
 26440 ms  0x7487 SECKEY_CreateECPrivateKey()
 26440 ms  0x7487 cx:0x7f52bccecfc8
 26441 ms     | 0x7487 EC_ValidatePublicKey()
 26447 ms     | 0x7487 ret:0x0
 26447 ms  0x7487 ret:0x7f52c9278020::7f52c9278020  60 50 75 e3                                      `Pu.
 26449 ms  0x7487 PK11_Encrypt()
 26449 ms  0x7487 symkey:0x7f52e87e5a00
 26449 ms  0x7487 PK11_Encrypt()
 26449 ms  0x7487 symkey:0x7f52e0c43480
 26450 ms  0x7487 PK11_Encrypt()
 26450 ms  0x7487 symkey:0x7f52df4f5c00
 26450 ms  0x7487 PK11_Encrypt()
 26450 ms  0x7487 symkey:0x7f52e890e700
 26450 ms  0x7487 SSL_AuthCertificateComplete()
 26450 ms  0x7487 fd:0x7f52e3702940
 26450 ms  0x7487 err:0x0
 26451 ms  0x7487 SECKEY_DestroyPrivateKey()
 26451 ms  0x7487 privk:0x7f52bcd42820::7f52bcd42820  20 99 df e0                                       ...
 26452 ms  0x7487 privk:0x7f52bcd42820::7f52bcd42820  e5 e5 e5 e5                                      ....
 26452 ms  0x7487 SECKEY_DestroyPrivateKey()
 26452 ms  0x7487 privk:0x7f52bcd40820::7f52bcd40820  80 8d c2 e0                                      ....
 26452 ms  0x7487 privk:0x7f52bcd40820::7f52bcd40820  e5 e5 e5 e5                                      ....
 26453 ms  0x7487 SECKEY_CreateECPrivateKey()
 26453 ms  0x7487 cx:0x7f52bcced168
 26454 ms     | 0x7487 EC_ValidatePublicKey()
 26454 ms     | 0x7487 ret:0x0
 26454 ms  0x7487 ret:0x7f52bcd41020::7f52bcd41020  80 8d c2 e0                                      ....
 26454 ms  0x7487 SECKEY_CreateECPrivateKey()
 26454 ms  0x7487 cx:0x7f52bcced168
 26455 ms     | 0x7487 EC_ValidatePublicKey()
 26456 ms     | 0x7487 ret:0x0
 26456 ms  0x7487 ret:0x7f52dc5de820::7f52dc5de820  00 f1 cf e0                                      ....
 26463 ms  0x7487 PK11_Encrypt()
 26463 ms  0x7487 symkey:0x7f52e8eff600
 26463 ms  0x7487 SECKEY_CreateECPrivateKey()
 26463 ms  0x7487 cx:0x7f52bcced4a8
 26464 ms     | 0x7487 EC_ValidatePublicKey()
 26464 ms     | 0x7487 ret:0x0
 26464 ms  0x7487 ret:0x7f52dfb33020::7f52dfb33020  20 99 df e0                                       ...
 26464 ms  0x7487 SECKEY_CreateECPrivateKey()
 26464 ms  0x7487 cx:0x7f52bcced4a8
 26465 ms     | 0x7487 EC_ValidatePublicKey()
 26469 ms     | 0x7487 ret:0x0
 26470 ms  0x7487 ret:0x7f52dfb35820::7f52dfb35820  80 dd 7b e3                                      ..{.
 26470 ms  0x7487 SECKEY_CreateECPrivateKey()
 26470 ms  0x7487 cx:0x7f52bcced308
 26471 ms     | 0x7487 EC_ValidatePublicKey()
 26471 ms     | 0x7487 ret:0x0
 26471 ms  0x7487 ret:0x7f52dfb38020::7f52dfb38020  e0 f7 2a e4                                      ..*.
 26471 ms  0x7487 SECKEY_CreateECPrivateKey()
 26471 ms  0x7487 cx:0x7f52bcced308
 26471 ms     | 0x7487 EC_ValidatePublicKey()
 26473 ms     | 0x7487 ret:0x0
 26473 ms  0x7487 ret:0x7f52dfb3a020::7f52dfb3a020  70 c9 2c e4                                      p.,.
 26474 ms  0x7487 PK11_Encrypt()
 26474 ms  0x7487 symkey:0x7f52e4dd8b80
 26474 ms  0x7487 PK11_Encrypt()
 26474 ms  0x7487 symkey:0x7f52e7d81e00
 26482 ms  0x7487 SECKEY_DestroyPrivateKey()
 26482 ms  0x7487 privk:0x7f52bcdba020::7f52bcdba020  c0 a9 71 e0                                      ..q.
 26482 ms  0x7487 privk:0x7f52bcdba020::7f52bcdba020  e5 e5 e5 e5                                      ....
 26482 ms  0x7487 SECKEY_DestroyPrivateKey()
 26482 ms  0x7487 privk:0x7f52bcd3e020::7f52bcd3e020  10 7f 6e e0                                      ..n.
 26482 ms  0x7487 privk:0x7f52bcd3e020::7f52bcd3e020  e5 e5 e5 e5                                      ....
 26483 ms  0x7487 SECKEY_DestroyPrivateKey()
 26483 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  50 0b 6d e3                                      P.m.
 26483 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  e5 e5 e5 e5                                      ....
 26483 ms  0x7487 SECKEY_DestroyPrivateKey()
 26483 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  b0 3a d4 e0                                      .:..
 26483 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e5 e5 e5 e5                                      ....
 26484 ms  0x7487 PK11_DeriveWithFlags()
 26484 ms  0x7487 basekey:0x7f52e49dbb80
 26484 ms     | 0x7487 PK11_DeriveWithTemplate()
 26484 ms  0x7487 ret:0x7f52e87e5d80
 26485 ms  0x7487 PK11_Derive()
 26485 ms  0x7487 basekey:0x7f52e87e5d80
 26485 ms     | 0x7487 PK11_DeriveWithTemplate()
 26485 ms  0x7487 ret:0x7f52e8919c80
 26488 ms  0x7487 PK11_Encrypt()
 26488 ms  0x7487 symkey:0x7f52e87c5b80
 26488 ms  0x7487 SSL_AuthCertificateComplete()
 26488 ms  0x7487 fd:0x7f52e53d9700
 26488 ms  0x7487 err:0x0
 26492 ms  0x7487 PK11_Encrypt()
 26492 ms  0x7487 symkey:0x7f52c98b6800
           /* TID 0x7525 */
 26496 ms  SECKEY_ECParamsToBasePointOrderLen()
 26496 ms  0x7525 ret:0x180
 26496 ms  SECKEY_ECParamsToBasePointOrderLen()
 26496 ms  0x7525 ret:0x180
 26496 ms  0x7525 EC_ValidatePublicKey()
 26498 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 26506 ms  SECKEY_ECParamsToKeySize()
 26506 ms  0x7487 ret:0x100
 26507 ms  SECKEY_ECParamsToBasePointOrderLen()
 26507 ms  0x7487 ret:0x100
 26507 ms  SECKEY_ECParamsToBasePointOrderLen()
 26507 ms  0x7487 ret:0x100
 26507 ms  0x7487 EC_ValidatePublicKey()
 26508 ms  0x7487 ret:0x0
           /* TID 0x7525 */
 26510 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26510 ms     | SECKEY_ECParamsToBasePointOrderLen()
 26510 ms     | 0x7525 ret:0x180
 26510 ms     | SECKEY_ECParamsToBasePointOrderLen()
 26510 ms     | 0x7525 ret:0x180
 26510 ms     | 0x7525 EC_ValidatePublicKey()
 26512 ms     | 0x7525 ret:0x0
 26515 ms  0x7525 ret:0x0
           /* TID 0x7487 */
 26515 ms  SECKEY_ECParamsToKeySize()
 26515 ms  0x7487 ret:0x100
 26515 ms  0x7487 SECKEY_CreateECPrivateKey()
 26515 ms  0x7487 cx:0x7f52bccecfc8
 26516 ms     | 0x7487 EC_ValidatePublicKey()
 26517 ms     | 0x7487 ret:0x0
 26517 ms  0x7487 ret:0x7f52bcdd1820::7f52bcdd1820  e0 0c 9f e0                                      ....
 26517 ms  0x7487 PK11_PubDeriveWithKDF()
 26517 ms  0x7487 seckey:0x7f52bcdd1820
 26517 ms     | 0x7487 EC_ValidatePublicKey()
 26519 ms     | 0x7487 ret:0x0
 26520 ms  0x7487 ret:0x7f52e49dbb80
 26520 ms  0x7487 PK11_DeriveWithFlags()
 26520 ms  0x7487 basekey:0x7f52e49dbb80
 26520 ms     | 0x7487 PK11_DeriveWithTemplate()
 26520 ms  0x7487 ret:0x7f52e8919c00
 26520 ms  0x7487 PK11_Derive()
 26520 ms  0x7487 basekey:0x7f52e8919c00
 26520 ms     | 0x7487 PK11_DeriveWithTemplate()
 26520 ms  0x7487 ret:0x7f52dd846980
 26520 ms  0x7487 SECKEY_DestroyPrivateKey()
 26520 ms  0x7487 privk:0x7f52bcdd1820::7f52bcdd1820  e0 0c 9f e0                                      ....
 26520 ms  0x7487 privk:0x7f52bcdd1820::7f52bcdd1820  e5 e5 e5 e5                                      ....
 26521 ms  0x7487 PK11_Encrypt()
 26521 ms  0x7487 symkey:0x7f52e969d680
 26521 ms  0x7487 SSL_AuthCertificateComplete()
 26521 ms  0x7487 fd:0x7f52e77b3580
 26521 ms  0x7487 err:0x0
 26528 ms  0x7487 PK11_Derive()
 26528 ms  0x7487 basekey:0x7f52dd846580
 26528 ms     | 0x7487 PK11_DeriveWithTemplate()
 26528 ms  0x7487 ret:0x7f52e49dbb80
 26529 ms  0x7487 PK11_Encrypt()
 26529 ms  0x7487 symkey:0x7f52e9aec980
 26534 ms  0x7487 SECKEY_DestroyPrivateKey()
 26534 ms  0x7487 privk:0x7f52dc5de820::7f52dc5de820  00 f1 cf e0                                      ....
 26534 ms  0x7487 privk:0x7f52dc5de820::7f52dc5de820  e5 e5 e5 e5                                      ....
 26534 ms  0x7487 SECKEY_DestroyPrivateKey()
 26534 ms  0x7487 privk:0x7f52bcd41020::7f52bcd41020  80 8d c2 e0                                      ....
 26534 ms  0x7487 privk:0x7f52bcd41020::7f52bcd41020  e5 e5 e5 e5                                      ....
 26536 ms  0x7487 SECKEY_DestroyPrivateKey()
 26536 ms  0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  d0 e3 c4 e0                                      ....
 26536 ms  0x7487 privk:0x7f52bcdd2820::7f52bcdd2820  e5 e5 e5 e5                                      ....
 26536 ms  0x7487 SECKEY_DestroyPrivateKey()
 26536 ms  0x7487 privk:0x7f52bcdc8820::7f52bcdc8820  40 a7 90 e0                                      @...
 26536 ms  0x7487 privk:0x7f52bcdc8820::7f52bcdc8820  e5 e5 e5 e5                                      ....
 26536 ms  0x7487 PK11_Encrypt()
 26536 ms  0x7487 symkey:0x7f52e969d680
 26536 ms  0x7487 PK11_Derive()
 26536 ms  0x7487 basekey:0x7f52e7d81b80
 26536 ms     | 0x7487 PK11_DeriveWithTemplate()
 26536 ms  0x7487 ret:0x7f52dca6b400
 26536 ms  0x7487 PK11_Encrypt()
 26536 ms  0x7487 symkey:0x7f52e9aed380
 26537 ms  0x7487 SECKEY_DestroyPrivateKey()
 26537 ms  0x7487 privk:0x7f52dfb35820::7f52dfb35820  80 dd 7b e3                                      ..{.
 26538 ms  0x7487 privk:0x7f52dfb35820::7f52dfb35820  e5 e5 e5 e5                                      ....
 26538 ms  0x7487 SECKEY_DestroyPrivateKey()
 26538 ms  0x7487 privk:0x7f52dfb33020::7f52dfb33020  20 99 df e0                                       ...
 26538 ms  0x7487 privk:0x7f52dfb33020::7f52dfb33020  e5 e5 e5 e5                                      ....
 26540 ms  SECKEY_ECParamsToKeySize()
 26540 ms  0x7487 ret:0x100
 26540 ms  0x7487 SECKEY_CreateECPrivateKey()
 26540 ms  0x7487 cx:0x7f52bcced308
 26541 ms     | 0x7487 EC_ValidatePublicKey()
 26542 ms     | 0x7487 ret:0x0
 26542 ms  0x7487 ret:0x7f52bcdb5820::7f52bcdb5820  b0 a5 90 e0                                      ....
 26542 ms  0x7487 PK11_PubDeriveWithKDF()
 26542 ms  0x7487 seckey:0x7f52bcdb5820
 26542 ms     | 0x7487 EC_ValidatePublicKey()
 26544 ms     | 0x7487 ret:0x0
 26545 ms  0x7487 ret:0x7f52e8968800
 26545 ms  0x7487 PK11_DeriveWithFlags()
 26545 ms  0x7487 basekey:0x7f52e8968800
 26545 ms     | 0x7487 PK11_DeriveWithTemplate()
 26545 ms  0x7487 ret:0x7f52e8968880
 26545 ms  0x7487 PK11_Derive()
 26545 ms  0x7487 basekey:0x7f52e8968880
 26545 ms     | 0x7487 PK11_DeriveWithTemplate()
 26545 ms  0x7487 ret:0x7f52dd863c00
 26545 ms  0x7487 SECKEY_DestroyPrivateKey()
 26545 ms  0x7487 privk:0x7f52bcdb5820::7f52bcdb5820  b0 a5 90 e0                                      ....
 26546 ms  0x7487 privk:0x7f52bcdb5820::7f52bcdb5820  e5 e5 e5 e5                                      ....
 26546 ms  0x7487 PK11_Encrypt()
 26546 ms  0x7487 symkey:0x7f52ea4b7b80
 26555 ms  0x7487 SECKEY_DestroyPrivateKey()
 26555 ms  0x7487 privk:0x7f52c92eb020::7f52c92eb020  b0 5a 71 e3                                      .Zq.
 26556 ms  0x7487 privk:0x7f52c92eb020::7f52c92eb020  e5 e5 e5 e5                                      ....
 26556 ms  0x7487 SECKEY_DestroyPrivateKey()
 26556 ms  0x7487 privk:0x7f52c92e7820::7f52c92e7820  90 2c 71 e3                                      .,q.
 26556 ms  0x7487 privk:0x7f52c92e7820::7f52c92e7820  e5 e5 e5 e5                                      ....
 26556 ms  0x7487 SSL_AuthCertificateComplete()
 26556 ms  0x7487 fd:0x7f52e46674c0
 26556 ms  0x7487 err:0x0
 26558 ms  0x7487 PK11_Encrypt()
 26558 ms  0x7487 symkey:0x7f52ea4b7b80
 26560 ms  0x7487 PK11_Encrypt()
 26560 ms  0x7487 symkey:0x7f52c98b6800
 26561 ms  0x7487 PR_Close()
 26561 ms  0x7487 fd:0x7f52e3702940
 26561 ms     | 0x7487 PK11_Encrypt()
 26561 ms     | 0x7487 symkey:0x7f52e8eff600
 26568 ms  0x7487 SECKEY_DestroyPrivateKey()
 26568 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  60 50 75 e3                                      `Pu.
 26568 ms  0x7487 privk:0x7f52c9278020::7f52c9278020  e5 e5 e5 e5                                      ....
 26568 ms  0x7487 SECKEY_DestroyPrivateKey()
 26568 ms  0x7487 privk:0x7f52bcdc2020::7f52bcdc2020  d0 3d cd e0                                      .=..
 26568 ms  0x7487 privk:0x7f52bcdc2020::7f52bcdc2020  e5 e5 e5 e5                                      ....
 26576 ms  0x7487 PK11_Encrypt()
 26576 ms  0x7487 symkey:0x7f52e891a580
 26578 ms  0x7487 PK11_Encrypt()
 26578 ms  0x7487 symkey:0x7f52dca6be80
 26580 ms  0x7487 SSL_ImportFD()
 26580 ms  0x7487 ret:0x7f52e77b39d0
 26580 ms  0x7487 SSL_AuthCertificateHook()
 26580 ms  0x7487 fd:0x7f52e77b39d0
 26580 ms  0x7487 ret:0x0
 26580 ms  0x7487 PR_Connect()
 26580 ms  0x7487 fd:0x7f52e77b39d0
 26582 ms  0x7487 PK11_Encrypt()
 26582 ms  0x7487 symkey:0x7f52e87e5a00
 26584 ms  0x7487 PK11_Encrypt()
 26584 ms  0x7487 symkey:0x7f52e7722780
 26594 ms  0x7487 SECKEY_DestroyPrivateKey()
 26594 ms  0x7487 privk:0x7f52dfb3a020::7f52dfb3a020  70 c9 2c e4                                      p.,.
 26594 ms  0x7487 privk:0x7f52dfb3a020::7f52dfb3a020  e5 e5 e5 e5                                      ....
 26594 ms  0x7487 SECKEY_DestroyPrivateKey()
 26594 ms  0x7487 privk:0x7f52dfb38020::7f52dfb38020  e0 f7 2a e4                                      ..*.
 26594 ms  0x7487 privk:0x7f52dfb38020::7f52dfb38020  e5 e5 e5 e5                                      ....
 26639 ms  0x7487 SECKEY_CreateECPrivateKey()
 26639 ms  0x7487 cx:0x7f52bccede68
 26639 ms     | 0x7487 EC_ValidatePublicKey()
 26639 ms     | 0x7487 ret:0x0
 26639 ms  0x7487 ret:0x7f52bcdc8820::7f52bcdc8820  80 0d 9f e0                                      ....
 26640 ms  0x7487 SECKEY_CreateECPrivateKey()
 26640 ms  0x7487 cx:0x7f52bccede68
 26640 ms     | 0x7487 EC_ValidatePublicKey()
 26643 ms     | 0x7487 ret:0x0
 26643 ms  0x7487 ret:0x7f52bcdcc020::7f52bcdcc020  20 8e c2 e0                                       ...
           /* TID 0x748f */
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e0ee9310
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e4667160
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e77b3040
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e8907880
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e8907ca0
 26644 ms  0x748f PR_Close()
 26644 ms  0x748f fd:0x7f52e8907d30
 26645 ms  0x748f PR_Close()
 26645 ms  0x748f fd:0x7f52e8907dc0
 26645 ms  0x748f PR_Close()
 26645 ms  0x748f fd:0x7f52e8907e50
 26645 ms  0x748f PR_Close()
 26645 ms  0x748f fd:0x7f52e8907ee0
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e0ee9310
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e4667160
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e77b3040
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907880
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907ca0
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907d30
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907dc0
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907e50
 26651 ms  0x748f PR_Close()
 26651 ms  0x748f fd:0x7f52e8907ee0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8907f70
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958040
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958100
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958160
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89581c0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958220
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958280
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958340
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89583d0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958490
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89584f0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958550
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958670
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958820
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958a00
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958a60
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958b20
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958c40
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958ca0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e8958d60
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9130
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d91f0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e36b2730
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9280
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d95e0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d96a0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9700
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9760
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d97c0
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9820
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9880
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d9910
 26652 ms  0x748f PR_Close()
 26652 ms  0x748f fd:0x7f52e89d99a0
           /* TID 0x7487 */
 26676 ms  0x7487 SSL_ImportFD()
 26676 ms  0x7487 ret:0x7f52e8907be0
 26676 ms  0x7487 SSL_AuthCertificateHook()
 26676 ms  0x7487 fd:0x7f52e8907be0
 26676 ms  0x7487 ret:0x0
 26676 ms  0x7487 PR_Connect()
 26676 ms  0x7487 fd:0x7f52e8907be0
 26677 ms  0x7487 PK11_Encrypt()
 26677 ms  0x7487 symkey:0x7f52e969d680
 26678 ms  0x7487 PK11_Encrypt()
 26678 ms  0x7487 symkey:0x7f52e87c5b80
 26701 ms  0x7487 PK11_Encrypt()
 26701 ms  0x7487 symkey:0x7f52e4dd8b80
 26706 ms  SECKEY_ECParamsToKeySize()
 26706 ms  0x7487 ret:0x100
 26706 ms  0x7487 SECKEY_CreateECPrivateKey()
 26706 ms  0x7487 cx:0x7f52bccede68
 26706 ms     | 0x7487 EC_ValidatePublicKey()
 26708 ms     | 0x7487 ret:0x0
           /* TID 0x752d */
 26709 ms  0x752d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26709 ms  0x752d ret:0x0
           /* TID 0x7487 */
 26709 ms  0x7487 ret:0x7f52c9270020::7f52c9270020  e0 0c 6d e3                                      ..m.
 26709 ms  0x7487 PK11_PubDeriveWithKDF()
 26709 ms  0x7487 seckey:0x7f52c9270020
 26709 ms     | 0x7487 EC_ValidatePublicKey()
 26710 ms     | 0x7487 ret:0x0
 26712 ms  0x7487 ret:0x7f52dc5fd280
 26712 ms  0x7487 PK11_DeriveWithFlags()
 26712 ms  0x7487 basekey:0x7f52dc5fd280
 26712 ms     | 0x7487 PK11_DeriveWithTemplate()
 26712 ms  0x7487 ret:0x7f52e87e5d00
 26712 ms  0x7487 PK11_Derive()
 26712 ms  0x7487 basekey:0x7f52e87e5d00
 26712 ms     | 0x7487 PK11_DeriveWithTemplate()
 26712 ms  0x7487 ret:0x7f52e8968800
 26712 ms  0x7487 SECKEY_DestroyPrivateKey()
 26712 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e0 0c 6d e3                                      ..m.
 26712 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e5 e5 e5 e5                                      ....
 26712 ms  0x7487 PK11_Encrypt()
 26712 ms  0x7487 symkey:0x7f52e8eff680
 26713 ms  0x7487 SSL_AuthCertificateComplete()
 26713 ms  0x7487 fd:0x7f52e77b39d0
 26713 ms  0x7487 err:0x0
 26714 ms  0x7487 PK11_Encrypt()
 26714 ms  0x7487 symkey:0x7f52e8eff680
 26714 ms  0x7487 SECKEY_CreateECPrivateKey()
 26714 ms  0x7487 cx:0x7f52bcfa4588
 26715 ms     | 0x7487 EC_ValidatePublicKey()
 26715 ms     | 0x7487 ret:0x0
 26715 ms  0x7487 ret:0x7f52c9270020::7f52c9270020  80 03 6d e3                                      ..m.
 26715 ms  0x7487 SECKEY_CreateECPrivateKey()
 26715 ms  0x7487 cx:0x7f52bcfa4588
 26716 ms     | 0x7487 EC_ValidatePublicKey()
 26717 ms     | 0x7487 ret:0x0
 26717 ms  0x7487 ret:0x7f52c9276020::7f52c9276020  90 2c 71 e3                                      .,q.
 26732 ms  0x7487 PK11_Encrypt()
 26732 ms  0x7487 symkey:0x7f52e969d680
           /* TID 0x748f */
 26732 ms  0x748f PR_Close()
 26732 ms  0x748f fd:0x7f52e0ee9310
           /* TID 0x7487 */
 26757 ms  SECKEY_ECParamsToKeySize()
 26757 ms  0x7487 ret:0xff
 26757 ms  0x7487 SECKEY_CreateECPrivateKey()
 26757 ms  0x7487 cx:0x7f52bcfa4588
 26757 ms     | 0x7487 EC_ValidatePublicKey()
 26757 ms     | 0x7487 ret:0x0
 26757 ms  0x7487 ret:0x7f52dfb0c020::7f52dfb0c020  70 5e 71 e3                                      p^q.
 26757 ms  0x7487 PK11_PubDeriveWithKDF()
 26757 ms  0x7487 seckey:0x7f52dfb0c020
 26757 ms     | 0x7487 EC_ValidatePublicKey()
 26757 ms     | 0x7487 ret:0x0
 26758 ms  0x7487 ret:0x7f52dc5fd280
 26758 ms  0x7487 PK11_DeriveWithFlags()
 26758 ms  0x7487 basekey:0x7f52dc5fd280
 26758 ms     | 0x7487 PK11_DeriveWithTemplate()
 26758 ms  0x7487 ret:0x7f52bc82e600
 26758 ms  0x7487 PK11_Derive()
 26758 ms  0x7487 basekey:0x7f52bc82e600
 26758 ms     | 0x7487 PK11_DeriveWithTemplate()
 26758 ms  0x7487 ret:0x7f52bc82e700
 26758 ms  0x7487 SECKEY_DestroyPrivateKey()
 26758 ms  0x7487 privk:0x7f52dfb0c020::7f52dfb0c020  70 5e 71 e3                                      p^q.
 26758 ms  0x7487 privk:0x7f52dfb0c020::7f52dfb0c020  e5 e5 e5 e5                                      ....
 26758 ms  0x7487 PK11_Encrypt()
 26758 ms  0x7487 symkey:0x7f52bc82e880
 26771 ms  0x7487 SECKEY_DestroyPrivateKey()
 26771 ms  0x7487 privk:0x7f52bcdcc020::7f52bcdcc020  20 8e c2 e0                                       ...
 26772 ms  0x7487 privk:0x7f52bcdcc020::7f52bcdcc020  e5 e5 e5 e5                                      ....
 26772 ms  0x7487 SECKEY_DestroyPrivateKey()
 26772 ms  0x7487 privk:0x7f52bcdc8820::7f52bcdc8820  80 0d 9f e0                                      ....
 26772 ms  0x7487 privk:0x7f52bcdc8820::7f52bcdc8820  e5 e5 e5 e5                                      ....
           /* TID 0x748f */
 26788 ms  0x748f PR_Close()
 26788 ms  0x748f fd:0x7f52e7d3aca0
           /* TID 0x7527 */
 26788 ms  0x7527 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 26788 ms  0x7527 ret:0x0
           /* TID 0x7487 */
 26788 ms  0x7487 SSL_AuthCertificateComplete()
 26788 ms  0x7487 fd:0x7f52e8907be0
 26788 ms  0x7487 err:0x0
 26789 ms  0x7487 PK11_Encrypt()
 26789 ms  0x7487 symkey:0x7f52bc82e880
 26789 ms  0x7487 PK11_Encrypt()
 26789 ms  0x7487 symkey:0x7f52bc82e880
 26796 ms  0x7487 SECKEY_DestroyPrivateKey()
 26796 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  90 2c 71 e3                                      .,q.
 26797 ms  0x7487 privk:0x7f52c9276020::7f52c9276020  e5 e5 e5 e5                                      ....
 26797 ms  0x7487 SECKEY_DestroyPrivateKey()
 26797 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  80 03 6d e3                                      ..m.
 26797 ms  0x7487 privk:0x7f52c9270020::7f52c9270020  e5 e5 e5 e5                                      ....
 26797 ms  0x7487 PK11_Encrypt()
 26797 ms  0x7487 symkey:0x7f52bc82e880
 26812 ms  0x7487 PK11_Encrypt()
 26812 ms  0x7487 symkey:0x7f52dc57e100
           /* TID 0x748f */
 26832 ms  0x748f PR_Close()
 26832 ms  0x748f fd:0x7f52e89d91f0
           /* TID 0x7487 */
 26851 ms  0x7487 PK11_Encrypt()
 26851 ms  0x7487 symkey:0x7f52bc82e880
 26853 ms  0x7487 PK11_Encrypt()
 26853 ms  0x7487 symkey:0x7f52bc82e880
 26861 ms  0x7487 PK11_Encrypt()
 26861 ms  0x7487 symkey:0x7f52e87c5b80
 26933 ms  0x7487 PK11_Encrypt()
 26933 ms  0x7487 symkey:0x7f52bc82e880
 26934 ms  0x7487 PK11_Encrypt()
 26934 ms  0x7487 symkey:0x7f52e87e5a00
 26986 ms  0x7487 PK11_Encrypt()
 26986 ms  0x7487 symkey:0x7f52dd869e00
 27034 ms  0x7487 PK11_Encrypt()
 27034 ms  0x7487 symkey:0x7f52dc57e100
 27047 ms  0x7487 PK11_Encrypt()
 27047 ms  0x7487 symkey:0x7f52e87e5a00
 27137 ms  0x7487 SSL_ImportFD()
 27137 ms  0x7487 ret:0x7f52e89d9e20
 27137 ms  0x7487 SSL_AuthCertificateHook()
 27137 ms  0x7487 fd:0x7f52e89d9e20
 27137 ms  0x7487 ret:0x0
 27137 ms  0x7487 PR_Connect()
 27137 ms  0x7487 fd:0x7f52e89d9e20
 27177 ms  0x7487 SECKEY_CreateECPrivateKey()
 27177 ms  0x7487 cx:0x7f52bcfa5288
 27178 ms     | 0x7487 EC_ValidatePublicKey()
 27178 ms     | 0x7487 ret:0x0
 27178 ms  0x7487 ret:0x7f52c9275820::7f52c9275820  80 03 6d e3                                      ..m.
 27179 ms  0x7487 SECKEY_CreateECPrivateKey()
 27179 ms  0x7487 cx:0x7f52bcfa5288
 27181 ms     | 0x7487 EC_ValidatePublicKey()
 27185 ms     | 0x7487 ret:0x0
 27185 ms  0x7487 ret:0x7f52c93bb020::7f52c93bb020  90 2c 71 e3                                      .,q.
           /* TID 0x74f5 */
 27207 ms  0x74f5 PR_Close()
 27207 ms  0x74f5 fd:0x7f52e53f21f0
 27209 ms  0x74f5 PR_Close()
 27209 ms  0x74f5 fd:0x7f52e53f21f0
           /* TID 0x7487 */
 27228 ms  SECKEY_ECParamsToKeySize()
 27228 ms  0x7487 ret:0x100
 27228 ms  0x7487 SECKEY_CreateECPrivateKey()
 27228 ms  0x7487 cx:0x7f52bcfa5288
 27229 ms     | 0x7487 EC_ValidatePublicKey()
 27231 ms     | 0x7487 ret:0x0
 27231 ms  0x7487 ret:0x7f52dfb39820::7f52dfb39820  90 c7 29 e4                                      ..).
 27231 ms  0x7487 PK11_PubDeriveWithKDF()
 27231 ms  0x7487 seckey:0x7f52dfb39820
 27231 ms     | 0x7487 EC_ValidatePublicKey()
 27233 ms     | 0x7487 ret:0x0
 27234 ms  0x7487 ret:0x7f52dc5fd280
 27234 ms  0x7487 PK11_DeriveWithFlags()
 27234 ms  0x7487 basekey:0x7f52dc5fd280
 27234 ms     | 0x7487 PK11_DeriveWithTemplate()
 27235 ms  0x7487 ret:0x7f52bca5ec00
 27235 ms  0x7487 PK11_Derive()
 27235 ms  0x7487 basekey:0x7f52bca5ec00
 27235 ms     | 0x7487 PK11_DeriveWithTemplate()
 27235 ms  0x7487 ret:0x7f52e7722c80
 27235 ms  0x7487 SECKEY_DestroyPrivateKey()
 27235 ms  0x7487 privk:0x7f52dfb39820::7f52dfb39820  90 c7 29 e4                                      ..).
 27235 ms  0x7487 privk:0x7f52dfb39820::7f52dfb39820  e5 e5 e5 e5                                      ....
 27235 ms  0x7487 PK11_Encrypt()
 27235 ms  0x7487 symkey:0x7f52bc88b080
           /* TID 0x7525 */
 27380 ms  0x7525 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 27380 ms  0x7525 ret:0x0
           /* TID 0x748f */
 27381 ms  0x748f PR_Close()
 27381 ms  0x748f fd:0x7f52e53f21f0
           /* TID 0x7487 */
 27381 ms  0x7487 SSL_AuthCertificateComplete()
 27381 ms  0x7487 fd:0x7f52e89d9e20
 27381 ms  0x7487 err:0x0
 27381 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27381 ms     | 0x7487 privk:0x7f52c93bb020::7f52c93bb020  90 2c 71 e3                                      .,q.
 27381 ms     | 0x7487 privk:0x7f52c93bb020::7f52c93bb020  e5 e5 e5 e5                                      ....
 27381 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27381 ms     | 0x7487 privk:0x7f52c9275820::7f52c9275820  80 03 6d e3                                      ..m.
 27382 ms     | 0x7487 privk:0x7f52c9275820::7f52c9275820  e5 e5 e5 e5                                      ....
 27382 ms  0x7487 PK11_Encrypt()
 27382 ms  0x7487 symkey:0x7f52bc88b080
 27427 ms  0x7487 PK11_Encrypt()
 27427 ms  0x7487 symkey:0x7f52e87e5a00
 27474 ms  0x7487 PK11_Encrypt()
 27474 ms  0x7487 symkey:0x7f52c98b6800
 27531 ms  0x7487 PK11_Encrypt()
 27531 ms  0x7487 symkey:0x7f52c98b6800
 27545 ms  0x7487 SSL_ImportFD()
 27545 ms  0x7487 ret:0x7f52e8d09370
 27545 ms  0x7487 SSL_AuthCertificateHook()
 27545 ms  0x7487 fd:0x7f52e8d09370
 27545 ms  0x7487 ret:0x0
 27547 ms  0x7487 PK11_Encrypt()
 27547 ms  0x7487 symkey:0x7f52dafc5080
 27547 ms  0x7487 PR_Connect()
 27547 ms  0x7487 fd:0x7f52e8d09370
 27585 ms  0x7487 SECKEY_CreateECPrivateKey()
 27585 ms  0x7487 cx:0x7f52bcfa6948
 27587 ms     | 0x7487 EC_ValidatePublicKey()
 27587 ms     | 0x7487 ret:0x0
 27587 ms  0x7487 ret:0x7f52c93bb020::7f52c93bb020  20 59 71 e3                                       Yq.
 27588 ms  0x7487 SECKEY_CreateECPrivateKey()
 27588 ms  0x7487 cx:0x7f52bcfa6948
 27589 ms     | 0x7487 EC_ValidatePublicKey()
 27593 ms     | 0x7487 ret:0x0
 27593 ms  0x7487 ret:0x7f52dfb37020::7f52dfb37020  40 77 20 e4                                      @w .
 27610 ms  0x7487 PR_Close()
 27610 ms  0x7487 fd:0x7f52e8d09370
 27610 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27610 ms     | 0x7487 privk:0x7f52dfb37020::7f52dfb37020  40 77 20 e4                                      @w .
 27611 ms     | 0x7487 privk:0x7f52dfb37020::7f52dfb37020  e5 e5 e5 e5                                      ....
 27611 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27611 ms     | 0x7487 privk:0x7f52c93bb020::7f52c93bb020  20 59 71 e3                                       Yq.
 27611 ms     | 0x7487 privk:0x7f52c93bb020::7f52c93bb020  e5 e5 e5 e5                                      ....
 27612 ms  0x7487 PK11_Encrypt()
 27612 ms  0x7487 symkey:0x7f52dafc5080
 27613 ms  0x7487 SSL_ImportFD()
 27613 ms  0x7487 ret:0x7f52e8d091c0
 27613 ms  0x7487 SSL_AuthCertificateHook()
 27613 ms  0x7487 fd:0x7f52e8d091c0
 27613 ms  0x7487 ret:0x0
 27615 ms  0x7487 PK11_Encrypt()
 27615 ms  0x7487 symkey:0x7f52dafc5080
 27616 ms  0x7487 PR_Connect()
 27616 ms  0x7487 fd:0x7f52e8d091c0
 27654 ms  0x7487 SECKEY_CreateECPrivateKey()
 27654 ms  0x7487 cx:0x7f52bcfa6948
 27655 ms     | 0x7487 EC_ValidatePublicKey()
 27655 ms     | 0x7487 ret:0x0
 27655 ms  0x7487 ret:0x7f52c93aa020::7f52c93aa020  20 59 71 e3                                       Yq.
 27655 ms  0x7487 SECKEY_CreateECPrivateKey()
 27655 ms  0x7487 cx:0x7f52bcfa6948
 27656 ms     | 0x7487 EC_ValidatePublicKey()
 27658 ms     | 0x7487 ret:0x0
 27658 ms  0x7487 ret:0x7f52dfb36020::7f52dfb36020  40 77 20 e4                                      @w .
 27713 ms  0x7487 PK11_Derive()
 27713 ms  0x7487 basekey:0x7f52dc5fd280
 27713 ms     | 0x7487 PK11_DeriveWithTemplate()
 27713 ms  0x7487 ret:0x7f52bc88c680
 27713 ms  0x7487 PK11_PubDeriveWithKDF()
 27713 ms  0x7487 seckey:0x7f52c93aa020
 27713 ms     | 0x7487 EC_ValidatePublicKey()
 27713 ms     | 0x7487 ret:0x0
 27715 ms  0x7487 ret:0x7f52dc5fd280
 27715 ms  SECKEY_ECParamsToKeySize()
 27715 ms  0x7487 ret:0xff
 27715 ms  0x7487 PK11_DeriveWithFlags()
 27715 ms  0x7487 basekey:0x7f52bc88c680
 27715 ms     | 0x7487 PK11_DeriveWithTemplate()
 27715 ms  0x7487 ret:0x7f52bc88cc80
 27715 ms  0x7487 PK11_Derive()
 27715 ms  0x7487 basekey:0x7f52dc5fd280
 27715 ms     | 0x7487 PK11_DeriveWithTemplate()
 27715 ms  0x7487 ret:0x7f52bc88cd00
 27715 ms  0x7487 PK11_DeriveWithFlags()
 27715 ms  0x7487 basekey:0x7f52bc88cd00
 27715 ms     | 0x7487 PK11_DeriveWithTemplate()
 27715 ms  0x7487 ret:0x7f52bc88c680
 27715 ms  0x7487 PK11_DeriveWithFlags()
 27715 ms  0x7487 basekey:0x7f52bc88cd00
 27716 ms     | 0x7487 PK11_DeriveWithTemplate()
 27716 ms  0x7487 ret:0x7f52dc5fd280
 27716 ms  0x7487 PK11_DeriveWithFlags()
 27716 ms  0x7487 basekey:0x7f52bc88cd00
 27716 ms     | 0x7487 PK11_DeriveWithTemplate()
 27716 ms  0x7487 ret:0x7f52bc88cc80
 27716 ms  0x7487 PK11_Derive()
 27716 ms  0x7487 basekey:0x7f52bc88cd80
 27716 ms     | 0x7487 PK11_DeriveWithTemplate()
 27716 ms  0x7487 ret:0x7f52bc88ce00
 27716 ms  0x7487 PK11_DeriveWithFlags()
 27716 ms  0x7487 basekey:0x7f52dc5fd280
 27716 ms     | 0x7487 PK11_DeriveWithTemplate()
 27716 ms  0x7487 ret:0x7f52bc88cd00
 27716 ms  0x7487 PK11_DeriveWithFlags()
 27716 ms  0x7487 basekey:0x7f52dc5fd280
 27716 ms     | 0x7487 PK11_DeriveWithTemplate()
 27716 ms  0x7487 ret:0x7f52bc88cc80
 27719 ms  SECKEY_ECParamsToKeySize()
 27719 ms  0x7487 ret:0x100
 27719 ms  SECKEY_ECParamsToBasePointOrderLen()
 27719 ms  0x7487 ret:0x100
 27719 ms  SECKEY_ECParamsToBasePointOrderLen()
 27719 ms  0x7487 ret:0x100
 27719 ms  0x7487 EC_ValidatePublicKey()
 27724 ms  0x7487 ret:0x0
 27740 ms  0x7487 PK11_DeriveWithFlags()
 27740 ms  0x7487 basekey:0x7f52dc5fd280
 27740 ms     | 0x7487 PK11_DeriveWithTemplate()
 27740 ms  0x7487 ret:0x7f52bc88cc80
 27740 ms  0x7487 SSL_AuthCertificateComplete()
 27740 ms  0x7487 fd:0x7f52e8d091c0
 27740 ms  0x7487 err:0x0
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88ce00
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc88cc80
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88ce00
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc88cd80
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88ce00
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc88cf00
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88c680
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc88cf80
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88c680
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc8b1080
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88cd80
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc8b1080
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88cd80
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc8b1100
 27740 ms     | 0x7487 PK11_DeriveWithFlags()
 27740 ms     | 0x7487 basekey:0x7f52bc88c680
 27740 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27740 ms     | 0x7487 ret:0x7f52bc88cd00
 27740 ms     | 0x7487 PK11_Encrypt()
 27740 ms     | 0x7487 symkey:0x7f52bc88cf80
 27741 ms     | 0x7487 PK11_DeriveWithFlags()
 27741 ms     | 0x7487 basekey:0x7f52bc88cc80
 27741 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27741 ms     | 0x7487 ret:0x7f52bc88cd00
 27741 ms     | 0x7487 PK11_DeriveWithFlags()
 27741 ms     | 0x7487 basekey:0x7f52bc88cc80
 27741 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27741 ms     | 0x7487 ret:0x7f52bc8b1100
 27741 ms     | 0x7487 PK11_DeriveWithFlags()
 27741 ms     | 0x7487 basekey:0x7f52bc88ce00
 27741 ms     |    | 0x7487 PK11_DeriveWithTemplate()
 27741 ms     | 0x7487 ret:0x7f52bc88cf80
 27741 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27741 ms     | 0x7487 privk:0x7f52dfb36020::7f52dfb36020  40 77 20 e4                                      @w .
 27741 ms     | 0x7487 privk:0x7f52dfb36020::7f52dfb36020  e5 e5 e5 e5                                      ....
 27741 ms     | 0x7487 SECKEY_DestroyPrivateKey()
 27741 ms     | 0x7487 privk:0x7f52c93aa020::7f52c93aa020  20 59 71 e3                                       Yq.
 27742 ms     | 0x7487 privk:0x7f52c93aa020::7f52c93aa020  e5 e5 e5 e5                                      ....
 27742 ms  0x7487 PK11_Encrypt()
 27742 ms  0x7487 symkey:0x7f52bc88cd00
 27745 ms  0x7487 PK11_Encrypt()
 27745 ms  0x7487 symkey:0x7f52dafc5080
           /* TID 0x748f */
 27746 ms  0x748f PR_Close()
 27746 ms  0x748f fd:0x7f52e8d091f0
           /* TID 0x7487 */
 27779 ms  0x7487 PK11_DeriveWithFlags()
 27779 ms  0x7487 basekey:0x7f52bc88cf80
 27779 ms     | 0x7487 PK11_DeriveWithTemplate()
 27779 ms  0x7487 ret:0x7f52dc5fd280
 27779 ms  0x7487 PK11_DeriveWithFlags()
 27779 ms  0x7487 basekey:0x7f52bc88cf80
 27779 ms     | 0x7487 PK11_DeriveWithTemplate()
 27779 ms  0x7487 ret:0x7f52dc5fd280
 27779 ms  0x7487 PR_Close()
 27779 ms  0x7487 fd:0x7f52e8d091c0
 27779 ms     | 0x7487 PK11_Encrypt()
 27779 ms     | 0x7487 symkey:0x7f52bc88cd00
 28430 ms  0x7487 PR_Close()
 28430 ms  0x7487 fd:0x7f52e0ee9490
 28430 ms     | 0x7487 PK11_Encrypt()
 28430 ms     | 0x7487 symkey:0x7f52e7722b80
           /* TID 0x74f5 */
 28579 ms  0x74f5 PR_Close()
 28579 ms  0x74f5 fd:0x7f52dd8b31c0
 28584 ms  0x74f5 PR_Close()
 28584 ms  0x74f5 fd:0x7f52dd8b31c0
 29160 ms  0x74f5 PR_Close()
 29160 ms  0x74f5 fd:0x7f52dd8b31c0
 29163 ms  0x74f5 PR_Close()
 29163 ms  0x74f5 fd:0x7f52dd8b31c0
           /* TID 0x7487 */
 30555 ms  0x7487 PR_Close()
 30555 ms  0x7487 fd:0x7f52dc1ff190
 31542 ms  0x7487 PR_Close()
 31542 ms  0x7487 fd:0x7f52e53d9700
 31543 ms  0x7487 PR_Close()
 31543 ms  0x7487 fd:0x7f52e7d3ad90
 31543 ms     | 0x7487 PK11_Encrypt()
 31543 ms     | 0x7487 symkey:0x7f52e9aed380
 31543 ms  0x7487 PR_Close()
 31543 ms  0x7487 fd:0x7f52dd8b34c0
 31543 ms     | 0x7487 PK11_Encrypt()
 31543 ms     | 0x7487 symkey:0x7f52e0a69c80
 31544 ms  0x7487 PR_Close()
 31544 ms  0x7487 fd:0x7f52e3702490
 31544 ms     | 0x7487 PK11_Encrypt()
 31544 ms     | 0x7487 symkey:0x7f52e9aec980
           /* TID 0x748f */
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52dbdc8880
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52e3702340
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52dc1ff190
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52dc1ff2b0
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52dc1ff3d0
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52dd8b34c0
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52e034bbe0
 31654 ms  0x748f PR_Close()
 31654 ms  0x748f fd:0x7f52e07fe790
           /* TID 0x7487 */
 34394 ms  0x7487 PR_Close()
 34394 ms  0x7487 fd:0x7f52e0dff430
 35989 ms  0x7487 PR_Close()
 35989 ms  0x7487 fd:0x7f52e0c83850
 35990 ms     | 0x7487 PK11_Encrypt()
 35990 ms     | 0x7487 symkey:0x7f52e540b880
 36789 ms  0x7487 PR_Close()
 36789 ms  0x7487 fd:0x7f52e77b3580
 36790 ms     | 0x7487 PK11_Encrypt()
 36790 ms     | 0x7487 symkey:0x7f52e969d680
 37084 ms  0x7487 PR_Close()
 37084 ms  0x7487 fd:0x7f52dc5cf430
 37085 ms     | 0x7487 PK11_Encrypt()
 37085 ms     | 0x7487 symkey:0x7f52dc57e100
 38337 ms  0x7487 PR_Close()
 38337 ms  0x7487 fd:0x7f52dc1ff220
 41073 ms  0x7487 PR_Close()
 41073 ms  0x7487 fd:0x7f52e0ee9400
 41073 ms     | 0x7487 PK11_Encrypt()
 41073 ms     | 0x7487 symkey:0x7f52e7d9dd80
 41977 ms  0x7487 PR_Close()
 41977 ms  0x7487 fd:0x7f52e0ee9520
 41978 ms     | 0x7487 PK11_Encrypt()
 41978 ms     | 0x7487 symkey:0x7f52e8eff300
 42113 ms  0x7487 PR_Close()
 42113 ms  0x7487 fd:0x7f52e77b39d0
 42113 ms     | 0x7487 PK11_Encrypt()
 42113 ms     | 0x7487 symkey:0x7f52e8eff680
 57428 ms  0x7487 PR_Close()
 57428 ms  0x7487 fd:0x7f52dc5cf820
 57428 ms     | 0x7487 PK11_Encrypt()
 57428 ms     | 0x7487 symkey:0x7f52e0c43480
           /* TID 0x74f5 */
 58062 ms  0x74f5 PR_Close()
 58062 ms  0x74f5 fd:0x7f52c98e5bb0
 58068 ms  0x74f5 PR_Close()
 58068 ms  0x74f5 fd:0x7f52c9b06100
 58089 ms  0x74f5 PR_Close()
 58089 ms  0x74f5 fd:0x7f52dc5cf400
 58102 ms  0x74f5 PR_Close()
 58102 ms  0x74f5 fd:0x7f52dd8f4c70
 58561 ms  0x74f5 PR_Close()
 58561 ms  0x74f5 fd:0x7f52e07fe670
 58564 ms  0x74f5 PR_Close()
 58564 ms  0x74f5 fd:0x7f52e07fe670
           /* TID 0x7487 */
 58844 ms  0x7487 PR_Connect()
 58844 ms  0x7487 fd:0x7f52e0cbc6a0
 60297 ms  0x7487 PR_Close()
 60297 ms  0x7487 fd:0x7f52dc13ca90
 60297 ms     | 0x7487 PK11_Encrypt()
 60297 ms     | 0x7487 symkey:0x7f52db35fd00
 60921 ms  0x7487 PR_Close()
 60921 ms  0x7487 fd:0x7f52e5055550
 61452 ms  0x7487 PR_Close()
 61452 ms  0x7487 fd:0x7f52db0cd940
 61452 ms     | 0x7487 PK11_Encrypt()
 61452 ms     | 0x7487 symkey:0x7f52c9bf8480
 63209 ms  0x7487 PR_Close()
 63209 ms  0x7487 fd:0x7f52e7d3a1f0
           /* TID 0x74f5 */
 64794 ms  0x74f5 PR_Close()
 64794 ms  0x74f5 fd:0x7f52c9b106a0
           /* TID 0x7487 */
 64795 ms  0x7487 PR_Close()
 64795 ms  0x7487 fd:0x7f52e36d5be0
 64796 ms     | 0x7487 PK11_Encrypt()
 64796 ms     | 0x7487 symkey:0x7f52e87e4e80
           /* TID 0x74f5 */
 64926 ms  0x74f5 PR_Close()
 64926 ms  0x74f5 fd:0x7f52c9b106a0
           /* TID 0x7487 */
 64977 ms  0x7487 PK11_Encrypt()
 64977 ms  0x7487 symkey:0x7f52db31a380
 67981 ms  0x7487 PK11_Encrypt()
 67981 ms  0x7487 symkey:0x7f52c9335b80
 67982 ms  0x7487 PK11_Encrypt()
 67982 ms  0x7487 symkey:0x7f52c9555900
 68983 ms  0x7487 PK11_Encrypt()
 68983 ms  0x7487 symkey:0x7f52db1bd500
 71988 ms  0x7487 PK11_Encrypt()
 71988 ms  0x7487 symkey:0x7f52c98b6d00
 72991 ms  0x7487 PK11_Encrypt()
 72991 ms  0x7487 symkey:0x7f52db56bc00
 72991 ms  0x7487 PK11_Encrypt()
 72991 ms  0x7487 symkey:0x7f52c9b80500
 72991 ms  0x7487 PK11_Encrypt()
 72991 ms  0x7487 symkey:0x7f52db360480
 72992 ms  0x7487 PK11_Encrypt()
 72992 ms  0x7487 symkey:0x7f52c9b3c300
 72992 ms  0x7487 PK11_Encrypt()
 72992 ms  0x7487 symkey:0x7f52db35b980
 72992 ms  0x7487 PK11_Encrypt()
 72992 ms  0x7487 symkey:0x7f52c98b6780
 72992 ms  0x7487 PK11_Encrypt()
 72992 ms  0x7487 symkey:0x7f52c9b80f80
 72993 ms  0x7487 PK11_Encrypt()
 72993 ms  0x7487 symkey:0x7f52c9b77c80
 73994 ms  0x7487 PK11_Encrypt()
 73994 ms  0x7487 symkey:0x7f52dca6a080
 74997 ms  0x7487 PK11_Encrypt()
 74997 ms  0x7487 symkey:0x7f52c951fc00
 75998 ms  0x7487 PK11_Encrypt()
 75998 ms  0x7487 symkey:0x7f52db35f800
 75998 ms  0x7487 PK11_Encrypt()
 75998 ms  0x7487 symkey:0x7f52c985d180
 75999 ms  0x7487 PK11_Encrypt()
 75999 ms  0x7487 symkey:0x7f52db51eb00
 75999 ms  0x7487 PK11_Encrypt()
 75999 ms  0x7487 symkey:0x7f52c951ff00
 79006 ms  0x7487 PK11_Encrypt()
 79006 ms  0x7487 symkey:0x7f52e7d81180
 80007 ms  0x7487 PK11_Encrypt()
 80007 ms  0x7487 symkey:0x7f52dfceb780
 80007 ms  0x7487 PK11_Encrypt()
 80007 ms  0x7487 symkey:0x7f52db51f080
 81949 ms  0x7487 PR_Close()
 81949 ms  0x7487 fd:0x7f52e0ee92e0
 81949 ms     | 0x7487 PK11_Encrypt()
 81949 ms     | 0x7487 symkey:0x7f52e076ca00
 84010 ms  0x7487 PK11_Encrypt()
 84010 ms  0x7487 symkey:0x7f52db843600
 85011 ms  0x7487 PK11_Encrypt()
 85011 ms  0x7487 symkey:0x7f52e8968c00
 85011 ms  0x7487 PK11_Encrypt()
 85011 ms  0x7487 symkey:0x7f52bc82e880
 85012 ms  0x7487 PK11_Encrypt()
 85012 ms  0x7487 symkey:0x7f52e87d4400
 85012 ms  0x7487 PK11_Encrypt()
 85012 ms  0x7487 symkey:0x7f52e0cb9300
 85012 ms  0x7487 PK11_Encrypt()
 85012 ms  0x7487 symkey:0x7f52dfcec680
 85012 ms  0x7487 PK11_Encrypt()
 85012 ms  0x7487 symkey:0x7f52df4f5c00
 85013 ms  0x7487 PK11_Encrypt()
 85013 ms  0x7487 symkey:0x7f52e7d9d800
 85617 ms  0x7487 PR_Close()
 85617 ms  0x7487 fd:0x7f52dd8b34f0
 86013 ms  0x7487 PK11_Encrypt()
 86013 ms  0x7487 symkey:0x7f52dd869e00
 86014 ms  0x7487 PK11_Encrypt()
 86014 ms  0x7487 symkey:0x7f52c98b6800
 86014 ms  0x7487 PK11_Encrypt()
 86014 ms  0x7487 symkey:0x7f52dc5fd300
 86014 ms  0x7487 PK11_Encrypt()
 86014 ms  0x7487 symkey:0x7f52dafc5080
 86317 ms  0x7487 PR_Close()
 86317 ms  0x7487 fd:0x7f52dd862190
 86317 ms     | 0x7487 PK11_Encrypt()
 86317 ms     | 0x7487 symkey:0x7f52e87c5d80
 86931 ms  0x7487 PR_Close()
 86931 ms  0x7487 fd:0x7f52e0ee9340
 86931 ms     | 0x7487 PK11_Encrypt()
 86931 ms     | 0x7487 symkey:0x7f52e87e5780
 87749 ms  0x7487 PR_Close()
 87749 ms  0x7487 fd:0x7f52dc5cf520
 87749 ms     | 0x7487 PK11_Encrypt()
 87749 ms     | 0x7487 symkey:0x7f52e87e5a00
 88107 ms  0x7487 PR_Close()
 88107 ms  0x7487 fd:0x7f52e89d9e20
 88107 ms     | 0x7487 PK11_Encrypt()
 88107 ms     | 0x7487 symkey:0x7f52bc88b080
 89809 ms  0x7487 PR_Close()
 89809 ms  0x7487 fd:0x7f52e5055970
 91261 ms  0x7487 PR_Close()
 91261 ms  0x7487 fd:0x7f52e06f9b80
 91273 ms  0x7487 PR_Close()
 91273 ms  0x7487 fd:0x7f52e075c8e0
 91995 ms  0x7487 PR_Close()
 91995 ms  0x7487 fd:0x7f52dd862490
 91995 ms     | 0x7487 PK11_Encrypt()
 91995 ms     | 0x7487 symkey:0x7f52e87c5b80
100025 ms  0x7487 PR_Close()
100025 ms  0x7487 fd:0x7f52c98e5040
100026 ms  0x7487 PR_Close()
100026 ms  0x7487 fd:0x7f52c93fe790
           /* TID 0x748f */
100027 ms  0x748f PR_Close()
100027 ms  0x748f fd:0x7f52c9366a30
           /* TID 0x7487 */
100043 ms  0x7487 SSL_ImportFD()
100043 ms  0x7487 ret:0x7f52c9595b20
100043 ms  0x7487 SSL_AuthCertificateHook()
100043 ms  0x7487 fd:0x7f52c9595b20
100043 ms  0x7487 ret:0x0
100044 ms  0x7487 PR_Connect()
100044 ms  0x7487 fd:0x7f52c9595b20
100091 ms  0x7487 PR_Close()
100091 ms  0x7487 fd:0x7f52dd885e20
           /* TID 0x747c */
100093 ms  0x747c EC_ValidatePublicKey()
100094 ms  0x747c ret:0x0
100094 ms  0x747c EC_ValidatePublicKey()
100096 ms  0x747c ret:0x0
100096 ms  0x747c EC_ValidatePublicKey()
           /* TID 0x7487 */
100101 ms  0x7487 SECKEY_CreateECPrivateKey()
100101 ms  0x7487 cx:0x7f52bcced168
           /* TID 0x747c */
100102 ms  0x747c ret:0x0
           /* TID 0x7487 */
100103 ms     | 0x7487 EC_ValidatePublicKey()
100103 ms     | 0x7487 ret:0x0
100103 ms  0x7487 ret:0x7f52bcc30020::7f52bcc30020  80 ed 59 c9                                      ..Y.
100103 ms  0x7487 SECKEY_CreateECPrivateKey()
100103 ms  0x7487 cx:0x7f52bcced168
100104 ms     | 0x7487 EC_ValidatePublicKey()
100105 ms     | 0x7487 ret:0x0
100105 ms  0x7487 ret:0x7f52bcd30820::7f52bcd30820  90 e2 b3 c9                                      ....
           /* TID 0x747c */
100105 ms  0x747c EC_ValidatePublicKey()
100107 ms  0x747c ret:0x0
100107 ms  0x747c EC_ValidatePublicKey()
100108 ms  0x747c ret:0x0
100108 ms  0x747c EC_ValidatePublicKey()
100110 ms  0x747c ret:0x0
100110 ms  0x747c EC_ValidatePublicKey()
100111 ms  0x747c ret:0x0
100111 ms  0x747c EC_ValidatePublicKey()
100113 ms  0x747c ret:0x0
100113 ms  0x747c EC_ValidatePublicKey()
100114 ms  0x747c ret:0x0
100114 ms  0x747c EC_ValidatePublicKey()
100116 ms  0x747c ret:0x0
           /* TID 0x7487 */
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52c951fc00
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52db35f800
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52c985d180
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52e8968c00
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52db31a380
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52dca6a080
100128 ms  0x7487 PK11_Encrypt()
100128 ms  0x7487 symkey:0x7f52db56bc00
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52db1bd500
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52e7d81180
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52bc82e880
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52c9b80500
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52c98b6d00
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52dd869e00
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52db51eb00
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52c98b6800
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52e87d4400
100129 ms  0x7487 PK11_Encrypt()
100129 ms  0x7487 symkey:0x7f52db360480
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52c9b3c300
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52db843600
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52db35b980
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52e0cb9300
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52c951ff00
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52c98b6780
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52c9b80f80
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52dc5fd300
100130 ms  0x7487 PK11_Encrypt()
100130 ms  0x7487 symkey:0x7f52dfcec680
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52dafc5080
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52df4f5c00
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52c9335b80
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52c9b77c80
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52dfceb780
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52db51f080
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52e7d9d800
100131 ms  0x7487 PK11_Encrypt()
100131 ms  0x7487 symkey:0x7f52c9555900
100131 ms  0x7487 PR_Close()
100131 ms  0x7487 fd:0x7f52e0e1c280
100131 ms     | 0x7487 PK11_Encrypt()
100131 ms     | 0x7487 symkey:0x7f52e87c2600
100131 ms  0x7487 PR_Close()
100131 ms  0x7487 fd:0x7f52e06f9970
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52dc1ff970
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52e0d9fc70
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52e0c4ad00
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52e0cbc640
100132 ms     | 0x7487 PK11_Encrypt()
100132 ms     | 0x7487 symkey:0x7f52e0c82400
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52e0d9f820
100132 ms  0x7487 PR_Close()
100132 ms  0x7487 fd:0x7f52e0c73700
100132 ms     | 0x7487 PK11_Encrypt()
100132 ms     | 0x7487 symkey:0x7f52e0cb8f80
100133 ms  0x7487 PR_Close()
100133 ms  0x7487 fd:0x7f52e0c4af40
100133 ms     | 0x7487 PK11_Encrypt()
100133 ms     | 0x7487 symkey:0x7f52e0942600
           /* TID 0x74d9 */
100133 ms  0x74d9 PR_Close()
100133 ms  0x74d9 fd:0x7f52c9366730
100133 ms  0x74d9 PR_Close()
100133 ms  0x74d9 fd:0x7f52c9366730
           /* TID 0x7487 */
100138 ms  0x7487 PR_Close()
100138 ms  0x7487 fd:0x7f52e0c73a90
100138 ms     | 0x7487 PK11_Encrypt()
100138 ms     | 0x7487 symkey:0x7f52e8967380
100138 ms  0x7487 PR_Close()
100138 ms  0x7487 fd:0x7f52e0c4ab50
100138 ms     | 0x7487 PK11_Encrypt()
100138 ms     | 0x7487 symkey:0x7f52e890e700
100138 ms  0x7487 PR_Close()
100138 ms  0x7487 fd:0x7f52dc1ffa90
100138 ms     | 0x7487 PK11_Encrypt()
100138 ms     | 0x7487 symkey:0x7f52e7d81e00
100138 ms  0x7487 PR_Close()
100138 ms  0x7487 fd:0x7f52e3714430
100138 ms     | 0x7487 PK11_Encrypt()
100138 ms     | 0x7487 symkey:0x7f52e7722780
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e0ee94c0
100139 ms     | 0x7487 PK11_Encrypt()
100139 ms     | 0x7487 symkey:0x7f52e891a580
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e0c4a100
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e0aa67c0
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e0aa63a0
100139 ms     | 0x7487 PK11_Encrypt()
100139 ms     | 0x7487 symkey:0x7f52e870d200
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e0e024f0
100139 ms     | 0x7487 PK11_Encrypt()
100139 ms     | 0x7487 symkey:0x7f52dd845e80
100139 ms  0x7487 PR_Close()
100139 ms  0x7487 fd:0x7f52e37147f0
100139 ms     | 0x7487 PK11_Encrypt()
100139 ms     | 0x7487 symkey:0x7f52dd845280
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52dd8620a0
100140 ms     | 0x7487 PK11_Encrypt()
100140 ms     | 0x7487 symkey:0x7f52dca6be80
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52e36d5cd0
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52db31da30
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52c95957c0
100140 ms     | 0x7487 PK11_Encrypt()
100140 ms     | 0x7487 symkey:0x7f52c9b3d600
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52c95957f0
100140 ms     | 0x7487 PK11_Encrypt()
100140 ms     | 0x7487 symkey:0x7f52c98b6300
100140 ms  0x7487 PR_Close()
100140 ms  0x7487 fd:0x7f52c9595100
100140 ms     | 0x7487 PK11_Encrypt()
100140 ms     | 0x7487 symkey:0x7f52c98b6600
100141 ms  0x7487 PR_Close()
100141 ms  0x7487 fd:0x7f52db0d52e0
100141 ms  0x7487 PR_Close()
100141 ms  0x7487 fd:0x7f52db0cdee0
100141 ms     | 0x7487 PK11_Encrypt()
100141 ms     | 0x7487 symkey:0x7f52c9554500
100141 ms  0x7487 PR_Close()
100141 ms  0x7487 fd:0x7f52e07fe700
100141 ms  0x7487 PR_Close()
100141 ms  0x7487 fd:0x7f52db3218e0
100141 ms  0x7487 PR_Close()
100141 ms  0x7487 fd:0x7f52e46674c0
100141 ms     | 0x7487 PK11_Encrypt()
100141 ms     | 0x7487 symkey:0x7f52ea4b7b80
           /* TID 0x747c */
100148 ms  0x747c PR_Close()
100148 ms  0x747c fd:0x7f52dc1ff610
100149 ms  0x747c PR_Close()
100149 ms  0x747c fd:0x7f52c93fa790
100150 ms  0x747c PR_Close()
100150 ms  0x747c fd:0x7f52c93fac40
100150 ms  0x747c PR_Close()
100150 ms  0x747c fd:0x7f52c93fa790
100151 ms  0x747c PR_Close()
100151 ms  0x747c fd:0x7f52c93fac40
100151 ms  0x747c PR_Close()
100151 ms  0x747c fd:0x7f52c93fa790
           /* TID 0x7487 */
100153 ms  0x7487 PR_Close()
100153 ms  0x7487 fd:0x7f52db1b9b80
100153 ms  0x7487 PR_Close()
100153 ms  0x7487 fd:0x7f52c9b7fdc0
100153 ms  0x7487 PR_Close()
100153 ms  0x7487 fd:0x7f52c98e5df0
100153 ms  0x7487 PR_Close()
100153 ms  0x7487 fd:0x7f52e07fee50
100154 ms  0x7487 PR_Close()
100154 ms  0x7487 fd:0x7f52db0cdb20
100154 ms     | 0x7487 PK11_Encrypt()
100154 ms     | 0x7487 symkey:0x7f52db35cb00
100154 ms  0x7487 PR_Close()
100154 ms  0x7487 fd:0x7f52c932ce50
100154 ms  0x7487 PR_Close()
100154 ms  0x7487 fd:0x7f52c98e5940
100154 ms  0x7487 PR_Close()
100154 ms  0x7487 fd:0x7f52c9595bb0
100154 ms     | 0x7487 PK11_Encrypt()
100154 ms     | 0x7487 symkey:0x7f52db56b980
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52db0cdc70
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52c9b7f790
100155 ms     | 0x7487 PK11_Encrypt()
100155 ms     | 0x7487 symkey:0x7f52c9b76a00
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52c9b7f160
100155 ms     | 0x7487 PK11_Encrypt()
100155 ms     | 0x7487 symkey:0x7f52c9b77e80
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52c9b7f8b0
100155 ms     | 0x7487 PK11_Encrypt()
100155 ms     | 0x7487 symkey:0x7f52c9bf9700
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52c9b7f8e0
100155 ms     | 0x7487 PK11_Encrypt()
100155 ms     | 0x7487 symkey:0x7f52c9bf8780
100155 ms  0x7487 PR_Close()
100155 ms  0x7487 fd:0x7f52c9b7f1f0
100155 ms     | 0x7487 PK11_Encrypt()
100155 ms     | 0x7487 symkey:0x7f52c9b77900
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9b7f310
100156 ms     | 0x7487 PK11_Encrypt()
100156 ms     | 0x7487 symkey:0x7f52c9b77280
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9b7f1c0
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9b7f520
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9b7f5b0
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9b7f670
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9595160
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c93feee0
100156 ms  0x7487 PR_Close()
100156 ms  0x7487 fd:0x7f52c9595280
100157 ms     | 0x7487 PK11_Encrypt()
100157 ms     | 0x7487 symkey:0x7f52c9807b80
100157 ms  0x7487 PR_Close()
100157 ms  0x7487 fd:0x7f52c93fe580
100157 ms     | 0x7487 PK11_Encrypt()
100157 ms     | 0x7487 symkey:0x7f52c9b3c080
100157 ms  0x7487 PR_Close()
100157 ms  0x7487 fd:0x7f52c93fe670
100157 ms     | 0x7487 PK11_Encrypt()
100157 ms     | 0x7487 symkey:0x7f52c9808380
100157 ms  0x7487 PR_Close()
100157 ms  0x7487 fd:0x7f52c93fe760
100157 ms     | 0x7487 PK11_Encrypt()
100157 ms     | 0x7487 symkey:0x7f52c9808000
           /* TID 0x7533 */
100163 ms  0x7533 PR_Close()
100163 ms  0x7533 fd:0x7f52c93fea90
           /* TID 0x7487 */
100167 ms  0x7487 PR_Close()
100167 ms  0x7487 fd:0x7f52c93fe850
100167 ms     | 0x7487 PK11_Encrypt()
100167 ms     | 0x7487 symkey:0x7f52c9807c80
100167 ms  0x7487 PR_Close()
100167 ms  0x7487 fd:0x7f52c93fe940
100167 ms     | 0x7487 PK11_Encrypt()
100167 ms     | 0x7487 symkey:0x7f52c9807680
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52db31d160
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52c9b10d90
100168 ms     | 0x7487 PK11_Encrypt()
100168 ms     | 0x7487 symkey:0x7f52c9bf9500
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52c9b10850
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52e0d9ff10
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52db31d850
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52db5479a0
100168 ms     | 0x7487 PK11_Encrypt()
100168 ms     | 0x7487 symkey:0x7f52e49db500
100168 ms  0x7487 PR_Close()
100168 ms  0x7487 fd:0x7f52e0cbc6a0
100175 ms  0x7487 PK11_DeriveWithFlags()
100175 ms  0x7487 basekey:0x7f52e49db480
100175 ms     | 0x7487 PK11_DeriveWithTemplate()
100175 ms  0x7487 ret:0x7f52e49db300
100175 ms  0x7487 PK11_Derive()
100175 ms  0x7487 basekey:0x7f52e49db300
100175 ms     | 0x7487 PK11_DeriveWithTemplate()
100175 ms  0x7487 ret:0x7f52c9bf9380
100176 ms  0x7487 PR_Close()
100176 ms  0x7487 fd:0x7f52c95956d0
100176 ms     | 0x7487 PK11_Encrypt()
100176 ms     | 0x7487 symkey:0x7f52c98b6780
100176 ms  0x7487 PR_Close()
100176 ms  0x7487 fd:0x7f52dc13c610
100176 ms     | 0x7487 PK11_Encrypt()
100176 ms     | 0x7487 symkey:0x7f52db843600
100177 ms  0x7487 PR_Close()
100177 ms  0x7487 fd:0x7f52c932ca60
100177 ms     | 0x7487 PK11_Encrypt()
100177 ms     | 0x7487 symkey:0x7f52db1bd500
100177 ms  0x7487 PR_Close()
100177 ms  0x7487 fd:0x7f52dc13c1c0
100177 ms     | 0x7487 PK11_Encrypt()
100177 ms     | 0x7487 symkey:0x7f52db56bc00
100187 ms  0x7487 PR_Close()
100187 ms  0x7487 fd:0x7f52dbdc8a90
100187 ms     | 0x7487 PK11_Encrypt()
100187 ms     | 0x7487 symkey:0x7f52db51f080
100187 ms  0x7487 PR_Close()
100187 ms  0x7487 fd:0x7f52c9b7f700
100187 ms     | 0x7487 PK11_Encrypt()
100187 ms     | 0x7487 symkey:0x7f52dafc5080
100188 ms  0x7487 PR_Close()
100188 ms  0x7487 fd:0x7f52dbdc8640
100188 ms     | 0x7487 PK11_Encrypt()
100188 ms     | 0x7487 symkey:0x7f52db51eb00
100189 ms  0x7487 PR_Close()
100189 ms  0x7487 fd:0x7f52db894730
100189 ms     | 0x7487 PK11_Encrypt()
100189 ms     | 0x7487 symkey:0x7f52db35b980
100190 ms  0x7487 PR_Close()
100190 ms  0x7487 fd:0x7f52db820a30
100190 ms     | 0x7487 PK11_Encrypt()
100190 ms     | 0x7487 symkey:0x7f52c9b77c80
100190 ms  0x7487 PR_Close()
100190 ms  0x7487 fd:0x7f52db894cd0
100190 ms     | 0x7487 PK11_Encrypt()
100190 ms     | 0x7487 symkey:0x7f52c9b80f80
100190 ms  0x7487 PR_Close()
100190 ms  0x7487 fd:0x7f52db321400
100190 ms     | 0x7487 PK11_Encrypt()
100190 ms     | 0x7487 symkey:0x7f52c98b6800
100191 ms  0x7487 PR_Close()
100191 ms  0x7487 fd:0x7f52db547220
100191 ms     | 0x7487 PK11_Encrypt()
100191 ms     | 0x7487 symkey:0x7f52c9b80500
100191 ms  0x7487 PR_Close()
100191 ms  0x7487 fd:0x7f52e06beac0
100191 ms     | 0x7487 PK11_Encrypt()
100191 ms     | 0x7487 symkey:0x7f52dfceb780
100191 ms  0x7487 PR_Close()
100191 ms  0x7487 fd:0x7f52e8907be0
100191 ms     | 0x7487 PK11_Encrypt()
100191 ms     | 0x7487 symkey:0x7f52bc82e880
100191 ms  0x7487 PR_Close()
100191 ms  0x7487 fd:0x7f52c93fe970
100191 ms     | 0x7487 PK11_Encrypt()
100191 ms     | 0x7487 symkey:0x7f52c98b6d00
           /* TID 0x747c */
100195 ms  0x747c PR_Close()
100195 ms  0x747c fd:0x7f52c93fac40
100196 ms  0x747c PR_Close()
100196 ms  0x747c fd:0x7f52c93feb50
100197 ms  0x747c PR_Close()
100197 ms  0x747c fd:0x7f52c93fac40
100197 ms  0x747c PR_Close()
100197 ms  0x747c fd:0x7f52c93feb50
           /* TID 0x7487 */
100197 ms  0x7487 PR_Close()
100197 ms  0x7487 fd:0x7f52e0e33f70
100197 ms     | 0x7487 PK11_Encrypt()
100197 ms     | 0x7487 symkey:0x7f52e7d9d800
100198 ms  0x7487 PR_Close()
100198 ms  0x7487 fd:0x7f52e0ee93d0
100198 ms     | 0x7487 PK11_Encrypt()
100198 ms     | 0x7487 symkey:0x7f52df4f5c00
100205 ms  0x7487 PR_Close()
100205 ms  0x7487 fd:0x7f52df4fee80
100205 ms     | 0x7487 PK11_Encrypt()
100205 ms     | 0x7487 symkey:0x7f52c951ff00
100206 ms  0x7487 PR_Close()
100206 ms  0x7487 fd:0x7f52c9366820
100206 ms     | 0x7487 PK11_Encrypt()
100206 ms     | 0x7487 symkey:0x7f52db360480
100206 ms  0x7487 PR_Close()
100206 ms  0x7487 fd:0x7f52c9366370
100206 ms     | 0x7487 PK11_Encrypt()
100206 ms     | 0x7487 symkey:0x7f52c9b3c300
100206 ms  0x7487 PR_Close()
100206 ms  0x7487 fd:0x7f52dc13c5e0
100206 ms     | 0x7487 PK11_Encrypt()
100206 ms     | 0x7487 symkey:0x7f52c951fc00
           /* TID 0x747c */
100207 ms  0x747c PR_Close()
100207 ms  0x747c fd:0x7f52e57c99a0
100207 ms  0x747c PR_Close()
100207 ms  0x747c fd:0x7f52e57c98b0
100207 ms  0x747c PR_Close()
100207 ms  0x747c fd:0x7f52e57c9a60
100209 ms  0x747c PR_Close()
100209 ms  0x747c fd:0x7f52c9366370
           /* TID 0x7487 */
100209 ms  0x7487 PR_Close()
100209 ms  0x7487 fd:0x7f52e57c9a30
100209 ms     | 0x7487 PK11_Encrypt()
100209 ms     | 0x7487 symkey:0x7f52e8968c00
100210 ms  0x7487 PR_Close()
100210 ms  0x7487 fd:0x7f52e36d5e80
100210 ms     | 0x7487 PK11_Encrypt()
100210 ms     | 0x7487 symkey:0x7f52e87d4400
100210 ms  0x7487 PR_Close()
100210 ms  0x7487 fd:0x7f52c9595d00
100210 ms     | 0x7487 PK11_Encrypt()
100210 ms     | 0x7487 symkey:0x7f52c9555900
100210 ms  0x7487 PR_Close()
100210 ms  0x7487 fd:0x7f52c98e5fd0
100210 ms     | 0x7487 PK11_Encrypt()
100210 ms     | 0x7487 symkey:0x7f52c9335b80
100211 ms  0x7487 PR_Close()
100211 ms  0x7487 fd:0x7f52c93fe610
100211 ms     | 0x7487 PK11_Encrypt()
100211 ms     | 0x7487 symkey:0x7f52c985d180
100211 ms  0x7487 PR_Close()
100211 ms  0x7487 fd:0x7f52dd8621f0
100211 ms     | 0x7487 PK11_Encrypt()
100211 ms     | 0x7487 symkey:0x7f52e0cb9300
100211 ms  0x7487 PR_Close()
100211 ms  0x7487 fd:0x7f52c97c8df0
100211 ms     | 0x7487 PK11_Encrypt()
100211 ms     | 0x7487 symkey:0x7f52db31a380
100211 ms  0x7487 PR_Close()
100211 ms  0x7487 fd:0x7f52e0c738b0
100211 ms     | 0x7487 PK11_Encrypt()
100211 ms     | 0x7487 symkey:0x7f52e7d81180
100212 ms  0x7487 PR_Close()
100212 ms  0x7487 fd:0x7f52e37c0220
100212 ms     | 0x7487 PK11_Encrypt()
100212 ms     | 0x7487 symkey:0x7f52dc5fd300
100212 ms  0x7487 PR_Close()
100212 ms  0x7487 fd:0x7f52e0de4a30
100212 ms     | 0x7487 PK11_Encrypt()
100212 ms     | 0x7487 symkey:0x7f52dd869e00
100212 ms  0x7487 PR_Close()
100212 ms  0x7487 fd:0x7f52dc1ff8e0
100212 ms     | 0x7487 PK11_Encrypt()
100212 ms     | 0x7487 symkey:0x7f52dca6a080
100213 ms  0x7487 PR_Close()
100213 ms  0x7487 fd:0x7f52db0cd8e0
100213 ms     | 0x7487 PK11_Encrypt()
100213 ms     | 0x7487 symkey:0x7f52db35f800
100213 ms  0x7487 PR_Close()
100213 ms  0x7487 fd:0x7f52dc1ff8b0
100213 ms     | 0x7487 PK11_Encrypt()
100213 ms     | 0x7487 symkey:0x7f52dfcec680
           /* TID 0x747c */
100214 ms  0x747c PR_Close()
100214 ms  0x747c fd:0x7f52c93fe5b0
100215 ms  0x747c PR_Close()
100215 ms  0x747c fd:0x7f52c93fac40
100215 ms  0x747c PR_Close()
100215 ms  0x747c fd:0x7f52c93fed90
100215 ms  0x747c PR_Close()
100215 ms  0x747c fd:0x7f52c93fac40
100215 ms  0x747c PR_Close()
100215 ms  0x747c fd:0x7f52c9595a30
100216 ms  0x747c PR_Close()
100216 ms  0x747c fd:0x7f52c98e5940
100219 ms  0x747c PR_Close()
100219 ms  0x747c fd:0x7f52c9b7f100
100221 ms  0x747c PR_Close()
100221 ms  0x747c fd:0x7f52c93fac40
100221 ms  0x747c PR_Close()
100221 ms  0x747c fd:0x7f52c932c160
100222 ms  0x747c PR_Close()
100222 ms  0x747c fd:0x7f52c932c5e0
100222 ms  0x747c PR_Close()
100222 ms  0x747c fd:0x7f52c932c160
100224 ms  0x747c PR_Close()
100224 ms  0x747c fd:0x7f52c932c220
100226 ms  0x747c PR_Close()
100226 ms  0x747c fd:0x7f52c932c220
100237 ms  0x747c PR_Close()
100237 ms  0x747c fd:0x7f52c93666a0
100238 ms  0x747c PR_Close()
100238 ms  0x747c fd:0x7f52c93666a0
100241 ms  0x747c PR_Close()
100241 ms  0x747c fd:0x7f52c9366760
100248 ms  0x747c PR_Close()
100248 ms  0x747c fd:0x7f52c932c5e0
100248 ms  0x747c PR_Close()
100248 ms  0x747c fd:0x7f52c93fe7c0
           /* TID 0x7487 */
100252 ms  0x7487 PK11_Encrypt()
100252 ms  0x7487 symkey:0x7f52e4dd8b80
           /* TID 0x7533 */
100260 ms  0x7533 PR_Close()
100260 ms  0x7533 fd:0x7f52c93fea90
           /* TID 0x7487 */
100263 ms  0x7487 PR_Connect()
100263 ms  0x7487 fd:0x7f52c95fdd60
           /* TID 0x7533 */
100288 ms  0x7533 PR_Close()
100288 ms  0x7533 fd:0x7f52c930d0a0
           /* TID 0x7481 */
100296 ms  0x7481 PR_Close()
100296 ms  0x7481 fd:0x7f52e42e2df0
           /* TID 0x7487 */
100304 ms  0x7487 PR_Close()
100304 ms  0x7487 fd:0x7f52c95fdd60
100304 ms  0x7487 PR_Close()
100304 ms  0x7487 fd:0x7f52c9595b20
100304 ms     | 0x7487 SECKEY_DestroyPrivateKey()
100304 ms     | 0x7487 privk:0x7f52bcd30820::7f52bcd30820  90 e2 b3 c9                                      ....
100305 ms     | 0x7487 privk:0x7f52bcd30820::7f52bcd30820  e5 e5 e5 e5                                      ....
100305 ms     | 0x7487 SECKEY_DestroyPrivateKey()
100305 ms     | 0x7487 privk:0x7f52bcc30020::7f52bcc30020  80 ed 59 c9                                      ..Y.
100305 ms     | 0x7487 privk:0x7f52bcc30020::7f52bcc30020  e5 e5 e5 e5                                      ....
           /* TID 0x7533 */
100314 ms  0x7533 PR_Close()
100314 ms  0x7533 fd:0x7f52c930d040
           /* TID 0x7487 */
100318 ms  0x7487 PR_Close()
100318 ms  0x7487 fd:0x7f52e3702160
100318 ms     | 0x7487 PK11_Encrypt()
100318 ms     | 0x7487 symkey:0x7f52e4dd8b80
           /* TID 0x747c */
100320 ms  0x747c PR_Close()
100320 ms  0x747c fd:0x7f52c932c5e0
100320 ms  0x747c PR_Close()
100320 ms  0x747c fd:0x7f52c930d040
           /* TID 0x7487 */
100322 ms  0x7487 PR_Close()
100322 ms  0x7487 fd:0x7f52db8943d0
           /* TID 0x74d9 */
100323 ms  0x74d9 PR_Close()
100323 ms  0x74d9 fd:0x7f52c930d0a0
100323 ms  0x74d9 PR_Close()
100323 ms  0x74d9 fd:0x7f52c930d0a0
100323 ms  0x74d9 PR_Close()
100323 ms  0x74d9 fd:0x7f52c930d0a0
100323 ms  0x74d9 PR_Close()
100323 ms  0x74d9 fd:0x7f52c930d130
           /* TID 0x7533 */
100324 ms  0x7533 PR_Close()
100324 ms  0x7533 fd:0x7f52c930d130
           /* TID 0x748f */
100332 ms  0x748f PR_Close()
100332 ms  0x748f fd:0x7f52c932c640
100333 ms  0x748f PR_Close()
100333 ms  0x748f fd:0x7f52c932c640
           /* TID 0x7481 */
100339 ms  0x7481 PR_Close()
100339 ms  0x7481 fd:0x7f52dc13cc10
           /* TID 0x748f */
100388 ms  0x748f PR_Close()
100388 ms  0x748f fd:0x7f52c932c5b0
100389 ms  0x748f PR_Close()
100389 ms  0x748f fd:0x7f52c939c070
           /* TID 0x747c */
100404 ms  0x747c PR_Close()
100404 ms  0x747c fd:0x7f52c930d160
100404 ms  0x747c PR_Close()
100404 ms  0x747c fd:0x7f52c93fafd0
           /* TID 0x7533 */
100406 ms  0x7533 PR_Close()
100406 ms  0x7533 fd:0x7f52c9366af0
           /* TID 0x7481 */
100409 ms  0x7481 PR_Close()
100409 ms  0x7481 fd:0x7f52e0913820
           /* TID 0x7533 */
100409 ms  0x7533 PR_Close()
100409 ms  0x7533 fd:0x7f52c9366af0
           /* TID 0x748f */
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52c939c220
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52c939cac0
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e8907580
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e57c9790
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e89581f0
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e53d9bb0
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e57c9970
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e770d430
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e5055f70
100422 ms  0x748f PR_Close()
100422 ms  0x748f fd:0x7f52e54814f0
100423 ms  0x748f PR_Close()
100423 ms  0x748f fd:0x7f52e8907790
100423 ms  0x748f PR_Close()
100423 ms  0x748f fd:0x7f52e53ab6a0
100423 ms  0x748f PR_Close()
100423 ms  0x748f fd:0x7f52e8958040
100423 ms  0x748f PR_Close()
100423 ms  0x748f fd:0x7f52e8958130
           /* TID 0x747c */
100423 ms  0x747c PR_Close()
100423 ms  0x747c fd:0x7f52c9366af0
100423 ms  0x747c PR_Close()
100423 ms  0x747c fd:0x7f52c9366af0
           /* TID 0x7533 */
100426 ms  0x7533 PR_Close()
100426 ms  0x7533 fd:0x7f52c932cac0
100428 ms  0x7533 PR_Close()
100428 ms  0x7533 fd:0x7f52c932cac0
100434 ms  0x7533 PR_Close()
100434 ms  0x7533 fd:0x7f52c93667c0
           /* TID 0x747c */
100624 ms  0x747c PR_Close()
100624 ms  0x747c fd:0x7f52c9366220
100625 ms  0x747c PR_Close()
100625 ms  0x747c fd:0x7f52c9366220
100630 ms  0x747c PR_Close()
100630 ms  0x747c fd:0x7f5302ada130
100630 ms  0x747c PR_Close()
100630 ms  0x747c fd:0x7f5302ada190
Process terminated
