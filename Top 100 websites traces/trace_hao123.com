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
           /* TID 0x1ae8 */
   162 ms  0x1ae8 SSL_ImportFD()
   162 ms  0x1ae8 ret:0x7f39829c84f0
   162 ms  0x1ae8 SSL_AuthCertificateHook()
   162 ms  0x1ae8 fd:0x7f39829c84f0
   162 ms  0x1ae8 ret:0x0
   162 ms  0x1ae8 PR_Connect()
   162 ms  0x1ae8 fd:0x7f39829c84f0
   364 ms  0x1ae8 SECKEY_CreateECPrivateKey()
   364 ms  0x1ae8 cx:0x7f39829c6ae8
   366 ms     | 0x1ae8 EC_ValidatePublicKey()
   366 ms     | 0x1ae8 ret:0x0
   366 ms  0x1ae8 ret:0x7f398294a820::7f398294a820  70 9e 9b 82                                      p...
   367 ms  0x1ae8 SECKEY_CreateECPrivateKey()
   367 ms  0x1ae8 cx:0x7f39829c6ae8
   369 ms     | 0x1ae8 EC_ValidatePublicKey()
   374 ms     | 0x1ae8 ret:0x0
   375 ms  0x1ae8 ret:0x7f398294c820::7f398294c820  30 9d 9b 82                                      0...
           /* TID 0x1b4c */
   455 ms  0x1b4c PR_Close()
   455 ms  0x1b4c fd:0x7f39829c83d0
   459 ms  0x1b4c PR_Close()
   459 ms  0x1b4c fd:0x7f39829c83d0
           /* TID 0x1ae8 */
   583 ms  SECKEY_ECParamsToKeySize()
   583 ms  0x1ae8 ret:0x100
   583 ms  0x1ae8 SECKEY_CreateECPrivateKey()
   583 ms  0x1ae8 cx:0x7f39829c6ae8
   585 ms     | 0x1ae8 EC_ValidatePublicKey()
   588 ms     | 0x1ae8 ret:0x0
   588 ms  0x1ae8 ret:0x7f3982955820::7f3982955820  10 8a 70 7f                                      ..p.
   589 ms  0x1ae8 PK11_PubDeriveWithKDF()
   589 ms  0x1ae8 seckey:0x7f3982955820
   589 ms     | 0x1ae8 EC_ValidatePublicKey()
   592 ms     | 0x1ae8 ret:0x0
   596 ms  0x1ae8 ret:0x7f39923e5180
   596 ms  0x1ae8 PK11_DeriveWithFlags()
   596 ms  0x1ae8 basekey:0x7f39923e5180
   596 ms     | 0x1ae8 PK11_DeriveWithTemplate()
   596 ms  0x1ae8 ret:0x7f39829bec80
   596 ms  0x1ae8 PK11_Derive()
   596 ms  0x1ae8 basekey:0x7f39829bec80
   596 ms     | 0x1ae8 PK11_DeriveWithTemplate()
   597 ms  0x1ae8 ret:0x7f39829bed80
   597 ms  0x1ae8 SECKEY_DestroyPrivateKey()
   597 ms  0x1ae8 privk:0x7f3982955820::7f3982955820  10 8a 70 7f                                      ..p.
   597 ms  0x1ae8 privk:0x7f3982955820::7f3982955820  e5 e5 e5 e5                                      ....
   597 ms  0x1ae8 PK11_Encrypt()
   597 ms  0x1ae8 symkey:0x7f39829bef00
   598 ms  0x1ae8 PR_Connect()
   598 ms  0x1ae8 fd:0x7f397f727070
           /* TID 0x1b4c */
   647 ms  0x1b4c PR_Close()
   647 ms  0x1b4c fd:0x7f397f727100
           /* TID 0x1af0 */
   651 ms  0x1af0 PR_Close()
   651 ms  0x1af0 fd:0x7f397f727100
           /* TID 0x1b42 */
   651 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   652 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
   652 ms  0x1ae8 SSL_AuthCertificateComplete()
   652 ms  0x1ae8 fd:0x7f39829c84f0
   652 ms  0x1ae8 err:0x0
   652 ms  0x1ae8 PK11_Encrypt()
   652 ms  0x1ae8 symkey:0x7f39829bef00
   800 ms  0x1ae8 SECKEY_DestroyPrivateKey()
   800 ms  0x1ae8 privk:0x7f398294c820::7f398294c820  30 9d 9b 82                                      0...
   800 ms  0x1ae8 privk:0x7f398294c820::7f398294c820  e5 e5 e5 e5                                      ....
   800 ms  0x1ae8 SECKEY_DestroyPrivateKey()
   800 ms  0x1ae8 privk:0x7f398294a820::7f398294a820  70 9e 9b 82                                      p...
   801 ms  0x1ae8 privk:0x7f398294a820::7f398294a820  e5 e5 e5 e5                                      ....
  1013 ms  0x1ae8 SSL_ImportFD()
  1013 ms  0x1ae8 ret:0x7f397f727430
  1013 ms  0x1ae8 SSL_AuthCertificateHook()
  1013 ms  0x1ae8 fd:0x7f397f727430
  1013 ms  0x1ae8 ret:0x0
  1014 ms  0x1ae8 PR_Connect()
  1014 ms  0x1ae8 fd:0x7f397f727430
  1040 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  1040 ms  0x1ae8 cx:0x7f397f709728
  1041 ms     | 0x1ae8 EC_ValidatePublicKey()
  1041 ms     | 0x1ae8 ret:0x0
  1042 ms  0x1ae8 ret:0x7f398294b820::7f398294b820  10 8a 70 7f                                      ..p.
  1042 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  1042 ms  0x1ae8 cx:0x7f397f709728
  1044 ms     | 0x1ae8 EC_ValidatePublicKey()
  1049 ms     | 0x1ae8 ret:0x0
  1049 ms  0x1ae8 ret:0x7f3982951820::7f3982951820  d0 88 70 7f                                      ..p.
           /* TID 0x1b42 */
  1102 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1102 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
  1103 ms  SECKEY_ECParamsToKeySize()
  1103 ms  0x1ae8 ret:0x100
  1103 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  1103 ms  0x1ae8 cx:0x7f397f709728
  1105 ms     | 0x1ae8 EC_ValidatePublicKey()
  1109 ms     | 0x1ae8 ret:0x0
  1109 ms  0x1ae8 ret:0x7f3982955020::7f3982955020  70 8e 70 7f                                      p.p.
  1110 ms  0x1ae8 PK11_PubDeriveWithKDF()
  1110 ms  0x1ae8 seckey:0x7f3982955020
  1110 ms     | 0x1ae8 EC_ValidatePublicKey()
  1114 ms     | 0x1ae8 ret:0x0
  1118 ms  0x1ae8 ret:0x7f39923e5180
  1118 ms  0x1ae8 PK11_DeriveWithFlags()
  1118 ms  0x1ae8 basekey:0x7f39923e5180
  1118 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  1118 ms  0x1ae8 ret:0x7f39829bf680
  1118 ms  0x1ae8 PK11_Derive()
  1118 ms  0x1ae8 basekey:0x7f39829bf680
  1118 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  1118 ms  0x1ae8 ret:0x7f39829bf880
  1118 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  1118 ms  0x1ae8 privk:0x7f3982955020::7f3982955020  70 8e 70 7f                                      p.p.
  1118 ms  0x1ae8 privk:0x7f3982955020::7f3982955020  e5 e5 e5 e5                                      ....
  1119 ms  0x1ae8 PK11_Encrypt()
  1119 ms  0x1ae8 symkey:0x7f39829bfd80
  1119 ms  0x1ae8 SSL_AuthCertificateComplete()
  1119 ms  0x1ae8 fd:0x7f397f727430
  1119 ms  0x1ae8 err:0x0
  1119 ms  0x1ae8 PK11_Encrypt()
  1119 ms  0x1ae8 symkey:0x7f39829bfd80
  1170 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  1170 ms  0x1ae8 privk:0x7f3982951820::7f3982951820  d0 88 70 7f                                      ..p.
  1171 ms  0x1ae8 privk:0x7f3982951820::7f3982951820  e5 e5 e5 e5                                      ....
  1171 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  1171 ms  0x1ae8 privk:0x7f398294b820::7f398294b820  10 8a 70 7f                                      ..p.
  1171 ms  0x1ae8 privk:0x7f398294b820::7f398294b820  e5 e5 e5 e5                                      ....
  1177 ms  0x1ae8 PK11_Encrypt()
  1177 ms  0x1ae8 symkey:0x7f39829bfd80
  1208 ms  0x1ae8 PK11_Encrypt()
  1208 ms  0x1ae8 symkey:0x7f39829bfd80
  1242 ms  0x1ae8 PK11_Encrypt()
  1242 ms  0x1ae8 symkey:0x7f39829bfd80
  1272 ms  0x1ae8 PK11_Encrypt()
  1272 ms  0x1ae8 symkey:0x7f39829bfd80
  1388 ms  0x1ae8 PK11_Encrypt()
  1388 ms  0x1ae8 symkey:0x7f39829bfd80
  1422 ms  0x1ae8 PK11_Encrypt()
  1422 ms  0x1ae8 symkey:0x7f39829bfd80
  1453 ms  0x1ae8 PK11_Encrypt()
  1453 ms  0x1ae8 symkey:0x7f39829bfd80
           /* TID 0x1b3a */
  1481 ms  0x1b3a PR_Close()
  1481 ms  0x1b3a fd:0x7f397f727250
  1481 ms  0x1b3a PR_Close()
  1481 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f727250
  1482 ms  0x1b3a PR_Close()
  1482 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f727250
  1483 ms  0x1b3a PR_Close()
  1483 ms  0x1b3a fd:0x7f397f7272e0
  1486 ms  0x1b3a PR_Close()
  1486 ms  0x1b3a fd:0x7f397f727250
  1486 ms  0x1b3a PR_Close()
  1486 ms  0x1b3a fd:0x7f397f727250
  1489 ms  0x1b3a PR_Close()
  1489 ms  0x1b3a fd:0x7f397f727250
  1489 ms  0x1b3a PR_Close()
  1489 ms  0x1b3a fd:0x7f397f727280
  1491 ms  0x1b3a PR_Close()
  1491 ms  0x1b3a fd:0x7f397f727280
  1491 ms  0x1b3a PR_Close()
  1491 ms  0x1b3a fd:0x7f397f727280
  1493 ms  0x1b3a PR_Close()
  1493 ms  0x1b3a fd:0x7f397f727280
  1494 ms  0x1b3a PR_Close()
  1494 ms  0x1b3a fd:0x7f397f727280
  1541 ms  0x1b3a PR_Close()
  1541 ms  0x1b3a fd:0x7f397f727280
  1542 ms  0x1b3a PR_Close()
  1542 ms  0x1b3a fd:0x7f397f727280
  1549 ms  0x1b3a PR_Close()
  1549 ms  0x1b3a fd:0x7f397f727280
  1549 ms  0x1b3a PR_Close()
  1549 ms  0x1b3a fd:0x7f397f727280
  1555 ms  0x1b3a PR_Close()
  1555 ms  0x1b3a fd:0x7f397f727280
  1556 ms  0x1b3a PR_Close()
  1556 ms  0x1b3a fd:0x7f397f727280
  1558 ms  0x1b3a PR_Close()
  1558 ms  0x1b3a fd:0x7f397f727280
  1558 ms  0x1b3a PR_Close()
  1558 ms  0x1b3a fd:0x7f397f727280
           /* TID 0x1b37 */
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
  1558 ms  0x1b37 PR_Close()
  1558 ms  0x1b37 fd:0x7f397f727280
           /* TID 0x1b4c */
  2061 ms  0x1b4c PR_Close()
  2061 ms  0x1b4c fd:0x7f397f727790
  2064 ms  0x1b4c PR_Close()
  2064 ms  0x1b4c fd:0x7f397f727790
  2604 ms  0x1b4c PR_Close()
  2604 ms  0x1b4c fd:0x7f397f727790
           /* TID 0x1af0 */
  4069 ms  0x1af0 PR_Close()
  4069 ms  0x1af0 fd:0x7f397f727790
  4069 ms  0x1af0 PR_Close()
  4069 ms  0x1af0 fd:0x7f397f7278e0
           /* TID 0x1ae8 */
  5044 ms  0x1ae8 SSL_ImportFD()
  5044 ms  0x1ae8 ret:0x7f397f6e0a30
  5044 ms  0x1ae8 SSL_AuthCertificateHook()
  5044 ms  0x1ae8 fd:0x7f397f6e0a30
  5044 ms  0x1ae8 ret:0x0
  5044 ms  0x1ae8 PR_Connect()
  5044 ms  0x1ae8 fd:0x7f397f6e0a30
  5295 ms  0x1ae8 SSL_ImportFD()
  5295 ms  0x1ae8 ret:0x7f397f6e0be0
  5295 ms  0x1ae8 SSL_AuthCertificateHook()
  5295 ms  0x1ae8 fd:0x7f397f6e0be0
  5295 ms  0x1ae8 ret:0x0
  5295 ms  0x1ae8 PR_Connect()
  5295 ms  0x1ae8 fd:0x7f397f6e0be0
  5399 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  5399 ms  0x1ae8 cx:0x7f397f709a68
  5401 ms     | 0x1ae8 EC_ValidatePublicKey()
  5401 ms     | 0x1ae8 ret:0x0
  5401 ms  0x1ae8 ret:0x7f397f699820::7f397f699820  60 6a 6e 7f                                      `jn.
  5401 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  5401 ms  0x1ae8 cx:0x7f397f709a68
  5403 ms     | 0x1ae8 EC_ValidatePublicKey()
  5406 ms     | 0x1ae8 ret:0x0
  5406 ms  0x1ae8 ret:0x7f397f69b820::7f397f69b820  90 6c 6e 7f                                      .ln.
  5637 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  5637 ms  0x1ae8 cx:0x7f397f709c08
  5639 ms     | 0x1ae8 EC_ValidatePublicKey()
  5639 ms     | 0x1ae8 ret:0x0
  5639 ms  0x1ae8 ret:0x7f397f69e820::7f397f69e820  a0 f1 51 7f                                      ..Q.
  5639 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  5639 ms  0x1ae8 cx:0x7f397f709c08
  5642 ms     | 0x1ae8 EC_ValidatePublicKey()
  5647 ms     | 0x1ae8 ret:0x0
  5647 ms  0x1ae8 ret:0x7f397f6a0820::7f397f6a0820  80 f3 51 7f                                      ..Q.
  5793 ms  SECKEY_ECParamsToKeySize()
  5793 ms  0x1ae8 ret:0x100
  5793 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  5793 ms  0x1ae8 cx:0x7f397f709a68
  5795 ms     | 0x1ae8 EC_ValidatePublicKey()
  5802 ms     | 0x1ae8 ret:0x0
  5802 ms  0x1ae8 ret:0x7f397f6ad020::7f397f6ad020  a0 fb 51 7f                                      ..Q.
  5802 ms  0x1ae8 PK11_PubDeriveWithKDF()
  5802 ms  0x1ae8 seckey:0x7f397f6ad020
  5802 ms     | 0x1ae8 EC_ValidatePublicKey()
  5808 ms     | 0x1ae8 ret:0x0
  5813 ms  0x1ae8 ret:0x7f39923e5180
  5813 ms  0x1ae8 PK11_DeriveWithFlags()
  5813 ms  0x1ae8 basekey:0x7f39923e5180
  5813 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  5813 ms  0x1ae8 ret:0x7f397f6e2200
  5813 ms  0x1ae8 PK11_Derive()
  5813 ms  0x1ae8 basekey:0x7f397f6e2200
  5813 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  5813 ms  0x1ae8 ret:0x7f397f6e2280
  5813 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  5813 ms  0x1ae8 privk:0x7f397f6ad020::7f397f6ad020  a0 fb 51 7f                                      ..Q.
  5814 ms  0x1ae8 privk:0x7f397f6ad020::7f397f6ad020  e5 e5 e5 e5                                      ....
  5814 ms  0x1ae8 PK11_Encrypt()
  5814 ms  0x1ae8 symkey:0x7f397f6e2400
  5815 ms  0x1ae8 PR_Connect()
  5815 ms  0x1ae8 fd:0x7f3991a8bca0
           /* TID 0x1b42 */
  5874 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5874 ms  0x1b42 ret:0x0
  5875 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5876 ms  0x1b42 ret:0x0
           /* TID 0x1af0 */
  5878 ms  0x1af0 PR_Close()
  5878 ms  0x1af0 fd:0x7f39905834c0
           /* TID 0x1ae8 */
  5928 ms  0x1ae8 SSL_AuthCertificateComplete()
  5928 ms  0x1ae8 fd:0x7f397f6e0a30
  5928 ms  0x1ae8 err:0x0
  5928 ms  0x1ae8 PK11_Encrypt()
  5928 ms  0x1ae8 symkey:0x7f397f6e2400
  5992 ms  0x1ae8 SSL_AuthCertificateComplete()
  5992 ms  0x1ae8 fd:0x7f397f6e0be0
  5992 ms  0x1ae8 err:0x0
  6025 ms  SECKEY_ECParamsToKeySize()
  6025 ms  0x1ae8 ret:0x100
  6025 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  6025 ms  0x1ae8 cx:0x7f397f709c08
  6027 ms     | 0x1ae8 EC_ValidatePublicKey()
  6032 ms     | 0x1ae8 ret:0x0
  6032 ms  0x1ae8 ret:0x7f397f6ac020::7f397f6ac020  60 ff 51 7f                                      `.Q.
  6033 ms  0x1ae8 PK11_PubDeriveWithKDF()
  6033 ms  0x1ae8 seckey:0x7f397f6ac020
  6033 ms     | 0x1ae8 EC_ValidatePublicKey()
  6038 ms     | 0x1ae8 ret:0x0
  6042 ms  0x1ae8 ret:0x7f39923e5180
  6042 ms  0x1ae8 PK11_DeriveWithFlags()
  6042 ms  0x1ae8 basekey:0x7f39923e5180
  6042 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  6042 ms  0x1ae8 ret:0x7f397f6e1900
  6042 ms  0x1ae8 PK11_Derive()
  6042 ms  0x1ae8 basekey:0x7f397f6e1900
  6042 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  6042 ms  0x1ae8 ret:0x7f397f6e1e80
  6042 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  6042 ms  0x1ae8 privk:0x7f397f6ac020::7f397f6ac020  60 ff 51 7f                                      `.Q.
  6042 ms  0x1ae8 privk:0x7f397f6ac020::7f397f6ac020  e5 e5 e5 e5                                      ....
  6043 ms  0x1ae8 PK11_Encrypt()
  6043 ms  0x1ae8 symkey:0x7f397f6e2180
  6169 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  6169 ms  0x1ae8 privk:0x7f397f69b820::7f397f69b820  90 6c 6e 7f                                      .ln.
  6169 ms  0x1ae8 privk:0x7f397f69b820::7f397f69b820  e5 e5 e5 e5                                      ....
  6169 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  6169 ms  0x1ae8 privk:0x7f397f699820::7f397f699820  60 6a 6e 7f                                      `jn.
  6169 ms  0x1ae8 privk:0x7f397f699820::7f397f699820  e5 e5 e5 e5                                      ....
  6385 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  6385 ms  0x1ae8 privk:0x7f397f6a0820::7f397f6a0820  80 f3 51 7f                                      ..Q.
  6386 ms  0x1ae8 privk:0x7f397f6a0820::7f397f6a0820  e5 e5 e5 e5                                      ....
  6386 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  6386 ms  0x1ae8 privk:0x7f397f69e820::7f397f69e820  a0 f1 51 7f                                      ..Q.
  6386 ms  0x1ae8 privk:0x7f397f69e820::7f397f69e820  e5 e5 e5 e5                                      ....
           /* TID 0x1aff */
  6709 ms  0x1aff PR_Close()
  6709 ms  0x1aff fd:0x7f3990338b80
           /* TID 0x1af0 */
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39920ea520
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39950b5fd0
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39959ff2e0
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39959ff8b0
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39959ff910
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f39959ffa90
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f399653e700
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f399653e7c0
  9394 ms  0x1af0 PR_Close()
  9394 ms  0x1af0 fd:0x7f399653e8b0
  9395 ms  0x1af0 PR_Close()
  9395 ms  0x1af0 fd:0x7f399653eac0
  9395 ms  0x1af0 PR_Close()
  9395 ms  0x1af0 fd:0x7f399653eb80
  9395 ms  0x1af0 PR_Close()
  9395 ms  0x1af0 fd:0x7f399653eca0
  9395 ms  0x1af0 PR_Close()
  9395 ms  0x1af0 fd:0x7f399653ee50
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39965ea0d0
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39965ea130
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39965ea340
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39965ea910
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969423d0
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969c6250
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969c68e0
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969c6f40
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969e6c10
  9398 ms  0x1af0 PR_Close()
  9398 ms  0x1af0 fd:0x7f39969e6dc0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fd850
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fdb20
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fdbb0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fdca0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fdd60
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fddc0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969fde20
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff040
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff0a0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff100
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff160
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff1c0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff250
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff2e0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff340
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff3d0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff460
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff4c0
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff550
  9399 ms  0x1af0 PR_Close()
  9399 ms  0x1af0 fd:0x7f39969ff5e0
  9400 ms  0x1af0 PR_Close()
  9400 ms  0x1af0 fd:0x7f39969ff640
  9400 ms  0x1af0 PR_Close()
  9400 ms  0x1af0 fd:0x7f3996b1de50
           /* TID 0x1ae8 */
  9411 ms  0x1ae8 SSL_ImportFD()
  9411 ms  0x1ae8 ret:0x7f39950b5fd0
  9411 ms  0x1ae8 SSL_AuthCertificateHook()
  9411 ms  0x1ae8 fd:0x7f39950b5fd0
  9412 ms  0x1ae8 ret:0x0
  9412 ms  0x1ae8 PR_Connect()
  9412 ms  0x1ae8 fd:0x7f39950b5fd0
  9412 ms  0x1ae8 SSL_ImportFD()
  9412 ms  0x1ae8 ret:0x7f39920eaeb0
  9412 ms  0x1ae8 SSL_AuthCertificateHook()
  9412 ms  0x1ae8 fd:0x7f39920eaeb0
  9412 ms  0x1ae8 ret:0x0
  9412 ms  0x1ae8 PR_Connect()
  9412 ms  0x1ae8 fd:0x7f39920eaeb0
           /* TID 0x1af0 */
  9509 ms  0x1af0 PR_Close()
  9509 ms  0x1af0 fd:0x7f397f6e0cd0
           /* TID 0x1ae8 */
  9543 ms  0x1ae8 SSL_ImportFD()
  9543 ms  0x1ae8 ret:0x7f39969ff160
  9543 ms  0x1ae8 SSL_AuthCertificateHook()
  9543 ms  0x1ae8 fd:0x7f39969ff160
  9543 ms  0x1ae8 ret:0x0
  9543 ms  0x1ae8 PR_Connect()
  9543 ms  0x1ae8 fd:0x7f39969ff160
  9544 ms  0x1ae8 SSL_ImportFD()
  9544 ms  0x1ae8 ret:0x7f39969ff280
  9544 ms  0x1ae8 SSL_AuthCertificateHook()
  9544 ms  0x1ae8 fd:0x7f39969ff280
  9544 ms  0x1ae8 ret:0x0
  9544 ms  0x1ae8 PR_Connect()
  9544 ms  0x1ae8 fd:0x7f39969ff280
  9544 ms  0x1ae8 SSL_ImportFD()
  9544 ms  0x1ae8 ret:0x7f39920eaf40
  9544 ms  0x1ae8 SSL_AuthCertificateHook()
  9544 ms  0x1ae8 fd:0x7f39920eaf40
  9544 ms  0x1ae8 ret:0x0
  9545 ms  0x1ae8 PR_Connect()
  9545 ms  0x1ae8 fd:0x7f39920eaf40
  9545 ms  0x1ae8 SSL_ImportFD()
  9545 ms  0x1ae8 ret:0x7f39920f0820
  9545 ms  0x1ae8 SSL_AuthCertificateHook()
  9545 ms  0x1ae8 fd:0x7f39920f0820
  9545 ms  0x1ae8 ret:0x0
  9545 ms  0x1ae8 PR_Connect()
  9545 ms  0x1ae8 fd:0x7f39920f0820
  9547 ms  0x1ae8 SSL_ImportFD()
  9547 ms  0x1ae8 ret:0x7f397f727670
  9547 ms  0x1ae8 SSL_AuthCertificateHook()
  9547 ms  0x1ae8 fd:0x7f397f727670
  9547 ms  0x1ae8 ret:0x0
  9549 ms  0x1ae8 PR_Connect()
  9549 ms  0x1ae8 fd:0x7f397f727670
  9549 ms  0x1ae8 SSL_ImportFD()
  9549 ms  0x1ae8 ret:0x7f3990338cd0
  9549 ms  0x1ae8 SSL_AuthCertificateHook()
  9549 ms  0x1ae8 fd:0x7f3990338cd0
  9549 ms  0x1ae8 ret:0x0
  9549 ms  0x1ae8 PR_Connect()
  9549 ms  0x1ae8 fd:0x7f3990338cd0
  9551 ms  0x1ae8 SSL_ImportFD()
  9551 ms  0x1ae8 ret:0x7f397f6e0cd0
  9551 ms  0x1ae8 SSL_AuthCertificateHook()
  9551 ms  0x1ae8 fd:0x7f397f6e0cd0
  9551 ms  0x1ae8 ret:0x0
  9551 ms  0x1ae8 PR_Connect()
  9551 ms  0x1ae8 fd:0x7f397f6e0cd0
  9551 ms  0x1ae8 SSL_ImportFD()
  9551 ms  0x1ae8 ret:0x7f39905f7670
  9552 ms  0x1ae8 SSL_AuthCertificateHook()
  9552 ms  0x1ae8 fd:0x7f39905f7670
  9552 ms  0x1ae8 ret:0x0
  9552 ms  0x1ae8 PR_Connect()
  9552 ms  0x1ae8 fd:0x7f39905f7670
  9552 ms  0x1ae8 SSL_ImportFD()
  9552 ms  0x1ae8 ret:0x7f39920ea340
  9552 ms  0x1ae8 SSL_AuthCertificateHook()
  9552 ms  0x1ae8 fd:0x7f39920ea340
  9552 ms  0x1ae8 ret:0x0
  9552 ms  0x1ae8 PR_Connect()
  9552 ms  0x1ae8 fd:0x7f39920ea340
  9552 ms  0x1ae8 SSL_ImportFD()
  9552 ms  0x1ae8 ret:0x7f39920f0c10
  9552 ms  0x1ae8 SSL_AuthCertificateHook()
  9552 ms  0x1ae8 fd:0x7f39920f0c10
  9552 ms  0x1ae8 ret:0x0
  9552 ms  0x1ae8 PR_Connect()
  9552 ms  0x1ae8 fd:0x7f39920f0c10
  9553 ms  0x1ae8 SSL_ImportFD()
  9553 ms  0x1ae8 ret:0x7f399289dca0
  9553 ms  0x1ae8 SSL_AuthCertificateHook()
  9553 ms  0x1ae8 fd:0x7f399289dca0
  9553 ms  0x1ae8 ret:0x0
  9553 ms  0x1ae8 PR_Connect()
  9553 ms  0x1ae8 fd:0x7f399289dca0
  9553 ms  0x1ae8 SSL_ImportFD()
  9553 ms  0x1ae8 ret:0x7f399653eac0
  9553 ms  0x1ae8 SSL_AuthCertificateHook()
  9553 ms  0x1ae8 fd:0x7f399653eac0
  9553 ms  0x1ae8 ret:0x0
  9553 ms  0x1ae8 PR_Connect()
  9553 ms  0x1ae8 fd:0x7f399653eac0
  9556 ms  0x1ae8 SSL_ImportFD()
  9556 ms  0x1ae8 ret:0x7f399653efa0
  9556 ms  0x1ae8 SSL_AuthCertificateHook()
  9556 ms  0x1ae8 fd:0x7f399653efa0
  9556 ms  0x1ae8 ret:0x0
  9557 ms  0x1ae8 PR_Connect()
  9557 ms  0x1ae8 fd:0x7f399653efa0
  9557 ms  0x1ae8 SSL_ImportFD()
  9557 ms  0x1ae8 ret:0x7f39965ea910
  9557 ms  0x1ae8 SSL_AuthCertificateHook()
  9557 ms  0x1ae8 fd:0x7f39965ea910
  9557 ms  0x1ae8 ret:0x0
  9558 ms  0x1ae8 PR_Connect()
  9558 ms  0x1ae8 fd:0x7f39965ea910
  9559 ms  0x1ae8 SSL_ImportFD()
  9559 ms  0x1ae8 ret:0x7f39969c6df0
  9559 ms  0x1ae8 SSL_AuthCertificateHook()
  9559 ms  0x1ae8 fd:0x7f39969c6df0
  9559 ms  0x1ae8 ret:0x0
  9559 ms  0x1ae8 PR_Connect()
  9559 ms  0x1ae8 fd:0x7f39969c6df0
  9560 ms  0x1ae8 SSL_ImportFD()
  9560 ms  0x1ae8 ret:0x7f39969fd850
  9560 ms  0x1ae8 SSL_AuthCertificateHook()
  9560 ms  0x1ae8 fd:0x7f39969fd850
  9560 ms  0x1ae8 ret:0x0
  9560 ms  0x1ae8 PR_Connect()
  9560 ms  0x1ae8 fd:0x7f39969fd850
  9567 ms  0x1ae8 SSL_ImportFD()
  9567 ms  0x1ae8 ret:0x7f39969fdd30
  9567 ms  0x1ae8 SSL_AuthCertificateHook()
  9567 ms  0x1ae8 fd:0x7f39969fdd30
  9567 ms  0x1ae8 ret:0x0
  9568 ms  0x1ae8 PR_Connect()
  9568 ms  0x1ae8 fd:0x7f39969fdd30
  9568 ms  0x1ae8 SSL_ImportFD()
  9568 ms  0x1ae8 ret:0x7f39969ff040
  9568 ms  0x1ae8 SSL_AuthCertificateHook()
  9568 ms  0x1ae8 fd:0x7f39969ff040
  9568 ms  0x1ae8 ret:0x0
  9569 ms  0x1ae8 PR_Connect()
  9569 ms  0x1ae8 fd:0x7f39969ff040
  9570 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9570 ms  0x1ae8 cx:0x7f397f70ade8
  9571 ms     | 0x1ae8 EC_ValidatePublicKey()
  9571 ms     | 0x1ae8 ret:0x0
  9571 ms  0x1ae8 ret:0x7f399086b020::7f399086b020  40 4c 8c 92                                      @L..
  9571 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9571 ms  0x1ae8 cx:0x7f397f70ade8
  9572 ms     | 0x1ae8 EC_ValidatePublicKey()
  9576 ms     | 0x1ae8 ret:0x0
  9576 ms  0x1ae8 ret:0x7f3996812820::7f3996812820  40 f7 df 92                                      @...
  9577 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9577 ms  0x1ae8 cx:0x7f397f70ac48
  9578 ms     | 0x1ae8 EC_ValidatePublicKey()
  9578 ms     | 0x1ae8 ret:0x0
  9578 ms  0x1ae8 ret:0x7f3996819020::7f3996819020  70 5e 65 93                                      p^e.
  9578 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9578 ms  0x1ae8 cx:0x7f397f70ac48
  9579 ms     | 0x1ae8 EC_ValidatePublicKey()
  9581 ms     | 0x1ae8 ret:0x0
  9581 ms  0x1ae8 ret:0x7f399681e820::7f399681e820  f0 e1 6a 93                                      ..j.
  9678 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9678 ms  0x1ae8 cx:0x7f397f70b2c8
  9680 ms     | 0x1ae8 EC_ValidatePublicKey()
  9680 ms     | 0x1ae8 ret:0x0
  9680 ms  0x1ae8 ret:0x7f39969a1020::7f39969a1020  e0 e2 6a 93                                      ..j.
  9680 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9680 ms  0x1ae8 cx:0x7f397f70b2c8
  9685 ms     | 0x1ae8 EC_ValidatePublicKey()
  9690 ms     | 0x1ae8 ret:0x0
  9690 ms  0x1ae8 ret:0x7f3996cde020::7f3996cde020  20 e4 6a 93                                       .j.
  9691 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9691 ms  0x1ae8 cx:0x7f397f70af88
  9693 ms     | 0x1ae8 EC_ValidatePublicKey()
  9693 ms     | 0x1ae8 ret:0x0
  9693 ms  0x1ae8 ret:0x7f3996ce2820::7f3996ce2820  b0 00 55 96                                      ..U.
  9693 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9693 ms  0x1ae8 cx:0x7f397f70af88
  9695 ms     | 0x1ae8 EC_ValidatePublicKey()
  9699 ms     | 0x1ae8 ret:0x0
  9699 ms  0x1ae8 ret:0x7f3996ce4820::7f3996ce4820  30 9d 5f 96                                      0._.
  9703 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9703 ms  0x1ae8 cx:0x7f397f70c7e8
  9704 ms     | 0x1ae8 EC_ValidatePublicKey()
  9704 ms     | 0x1ae8 ret:0x0
  9704 ms  0x1ae8 ret:0x7f3996cec820::7f3996cec820  50 8b 85 96                                      P...
  9704 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9704 ms  0x1ae8 cx:0x7f397f70c7e8
  9706 ms     | 0x1ae8 EC_ValidatePublicKey()
  9708 ms     | 0x1ae8 ret:0x0
  9708 ms  0x1ae8 ret:0x7f3997064820::7f3997064820  70 1e 8e 96                                      p...
  9709 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9709 ms  0x1ae8 cx:0x7f397f70c648
  9710 ms     | 0x1ae8 EC_ValidatePublicKey()
  9710 ms     | 0x1ae8 ret:0x0
  9710 ms  0x1ae8 ret:0x7f3997067020::7f3997067020  c0 04 91 96                                      ....
  9710 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9710 ms  0x1ae8 cx:0x7f397f70c648
  9711 ms     | 0x1ae8 EC_ValidatePublicKey()
  9713 ms     | 0x1ae8 ret:0x0
  9713 ms  0x1ae8 ret:0x7f3997069020::7f3997069020  10 f5 91 96                                      ....
  9714 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9714 ms  0x1ae8 cx:0x7f397f70c4a8
  9714 ms     | 0x1ae8 EC_ValidatePublicKey()
  9714 ms     | 0x1ae8 ret:0x0
  9714 ms  0x1ae8 ret:0x7f399706e020::7f399706e020  b0 a0 92 96                                      ....
  9714 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9714 ms  0x1ae8 cx:0x7f397f70c4a8
  9715 ms     | 0x1ae8 EC_ValidatePublicKey()
  9717 ms     | 0x1ae8 ret:0x0
  9717 ms  0x1ae8 ret:0x7f3997070020::7f3997070020  90 52 9f 96                                      .R..
  9718 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9718 ms  0x1ae8 cx:0x7f397f70c308
  9718 ms     | 0x1ae8 EC_ValidatePublicKey()
  9718 ms     | 0x1ae8 ret:0x0
  9718 ms  0x1ae8 ret:0x7f3997072820::7f3997072820  a0 5b 9f 96                                      .[..
  9718 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9718 ms  0x1ae8 cx:0x7f397f70c308
  9719 ms     | 0x1ae8 EC_ValidatePublicKey()
  9721 ms     | 0x1ae8 ret:0x0
  9721 ms  0x1ae8 ret:0x7f3997074820::7f3997074820  b0 85 9f 96                                      ....
  9721 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9721 ms  0x1ae8 cx:0x7f397f70c168
  9722 ms     | 0x1ae8 EC_ValidatePublicKey()
  9722 ms     | 0x1ae8 ret:0x0
  9722 ms  0x1ae8 ret:0x7f3997077020::7f3997077020  a0 71 b6 96                                      .q..
  9722 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9722 ms  0x1ae8 cx:0x7f397f70c168
  9723 ms     | 0x1ae8 EC_ValidatePublicKey()
  9724 ms     | 0x1ae8 ret:0x0
  9724 ms  0x1ae8 ret:0x7f3997079020::7f3997079020  00 11 bf 96                                      ....
  9725 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9725 ms  0x1ae8 cx:0x7f397f70bfc8
  9725 ms     | 0x1ae8 EC_ValidatePublicKey()
  9725 ms     | 0x1ae8 ret:0x0
  9726 ms  0x1ae8 ret:0x7f399707b820::7f399707b820  40 12 bf 96                                      @...
  9726 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9726 ms  0x1ae8 cx:0x7f397f70bfc8
  9726 ms     | 0x1ae8 EC_ValidatePublicKey()
  9728 ms     | 0x1ae8 ret:0x0
  9728 ms  0x1ae8 ret:0x7f399707d820::7f399707d820  20 14 bf 96                                       ...
  9730 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9730 ms  0x1ae8 cx:0x7f397f70be28
  9730 ms     | 0x1ae8 EC_ValidatePublicKey()
  9731 ms     | 0x1ae8 ret:0x0
  9731 ms  0x1ae8 ret:0x7f3997080020::7f3997080020  60 15 bf 96                                      `...
  9731 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9731 ms  0x1ae8 cx:0x7f397f70be28
  9731 ms     | 0x1ae8 EC_ValidatePublicKey()
  9733 ms     | 0x1ae8 ret:0x0
  9733 ms  0x1ae8 ret:0x7f3997099820::7f3997099820  d0 18 bf 96                                      ....
  9733 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9733 ms  0x1ae8 cx:0x7f397f70bc88
  9733 ms     | 0x1ae8 EC_ValidatePublicKey()
  9733 ms     | 0x1ae8 ret:0x0
  9733 ms  0x1ae8 ret:0x7f39970a3820::7f39970a3820  50 81 c8 96                                      P...
  9734 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9734 ms  0x1ae8 cx:0x7f397f70bc88
  9734 ms     | 0x1ae8 EC_ValidatePublicKey()
  9736 ms     | 0x1ae8 ret:0x0
  9736 ms  0x1ae8 ret:0x7f39970aa820::7f39970aa820  b0 85 c8 96                                      ....
  9736 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9736 ms  0x1ae8 cx:0x7f397f70bae8
  9736 ms     | 0x1ae8 EC_ValidatePublicKey()
  9736 ms     | 0x1ae8 ret:0x0
  9736 ms  0x1ae8 ret:0x7f39970ad820::7f39970ad820  30 88 c8 96                                      0...
  9737 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9737 ms  0x1ae8 cx:0x7f397f70bae8
  9737 ms     | 0x1ae8 EC_ValidatePublicKey()
  9739 ms     | 0x1ae8 ret:0x0
  9739 ms  0x1ae8 ret:0x7f39970b2020::7f39970b2020  80 8d c8 96                                      ....
  9739 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9739 ms  0x1ae8 cx:0x7f397f70b948
  9739 ms     | 0x1ae8 EC_ValidatePublicKey()
  9739 ms     | 0x1ae8 ret:0x0
  9739 ms  0x1ae8 ret:0x7f39970b4820::7f39970b4820  b0 8f c8 96                                      ....
  9739 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9739 ms  0x1ae8 cx:0x7f397f70b948
  9740 ms     | 0x1ae8 EC_ValidatePublicKey()
  9741 ms     | 0x1ae8 ret:0x0
  9741 ms  0x1ae8 ret:0x7f39998f3020::7f39998f3020  a0 16 c9 96                                      ....
  9742 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9742 ms  0x1ae8 cx:0x7f397f70b7a8
  9742 ms     | 0x1ae8 EC_ValidatePublicKey()
  9742 ms     | 0x1ae8 ret:0x0
  9742 ms  0x1ae8 ret:0x7f39998f9020::7f39998f9020  70 1e c9 96                                      p...
  9743 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9743 ms  0x1ae8 cx:0x7f397f70b7a8
  9743 ms     | 0x1ae8 EC_ValidatePublicKey()
  9745 ms     | 0x1ae8 ret:0x0
  9745 ms  0x1ae8 ret:0x7f39998fd820::7f39998fd820  30 1d e1 96                                      0...
  9745 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9745 ms  0x1ae8 cx:0x7f397f70b608
  9745 ms     | 0x1ae8 EC_ValidatePublicKey()
  9745 ms     | 0x1ae8 ret:0x0
  9745 ms  0x1ae8 ret:0x7f3999914020::7f3999914020  70 1e e1 96                                      p...
  9746 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9746 ms  0x1ae8 cx:0x7f397f70b608
  9746 ms     | 0x1ae8 EC_ValidatePublicKey()
  9748 ms     | 0x1ae8 ret:0x0
  9748 ms  0x1ae8 ret:0x7f3999917820::7f3999917820  90 32 e3 96                                      .2..
  9748 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9748 ms  0x1ae8 cx:0x7f397f70b468
  9748 ms     | 0x1ae8 EC_ValidatePublicKey()
  9748 ms     | 0x1ae8 ret:0x0
  9748 ms  0x1ae8 ret:0x7f399a69f820::7f399a69f820  d0 33 e3 96                                      .3..
  9748 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9748 ms  0x1ae8 cx:0x7f397f70b468
  9749 ms     | 0x1ae8 EC_ValidatePublicKey()
  9750 ms     | 0x1ae8 ret:0x0
  9750 ms  0x1ae8 ret:0x7f399a6a2820::7f399a6a2820  10 2a e5 96                                      .*..
  9751 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9751 ms  0x1ae8 cx:0x7f397f70b128
  9751 ms     | 0x1ae8 EC_ValidatePublicKey()
  9751 ms     | 0x1ae8 ret:0x0
  9751 ms  0x1ae8 ret:0x7f399a6a8820::7f399a6a8820  f0 2b e5 96                                      .+..
  9751 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9751 ms  0x1ae8 cx:0x7f397f70b128
  9752 ms     | 0x1ae8 EC_ValidatePublicKey()
  9753 ms     | 0x1ae8 ret:0x0
  9753 ms  0x1ae8 ret:0x7f399a6ad020::7f399a6ad020  70 2e e5 96                                      p...
  9754 ms  SECKEY_ECParamsToKeySize()
  9754 ms  0x1ae8 ret:0xff
  9754 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9754 ms  0x1ae8 cx:0x7f397f70ade8
  9755 ms     | 0x1ae8 EC_ValidatePublicKey()
  9755 ms     | 0x1ae8 ret:0x0
  9755 ms  0x1ae8 ret:0x7f399a6b3020::7f399a6b3020  90 dc e5 96                                      ....
  9755 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9755 ms  0x1ae8 seckey:0x7f399a6b3020
  9755 ms     | 0x1ae8 EC_ValidatePublicKey()
  9755 ms     | 0x1ae8 ret:0x0
  9755 ms  0x1ae8 ret:0x7f39923e5180
  9755 ms  0x1ae8 PK11_DeriveWithFlags()
  9755 ms  0x1ae8 basekey:0x7f39923e5180
  9756 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9756 ms  0x1ae8 ret:0x7f397f6e2880
  9756 ms  0x1ae8 PK11_Derive()
  9756 ms  0x1ae8 basekey:0x7f397f6e2880
  9756 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9756 ms  0x1ae8 ret:0x7f397f6f0980
  9756 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9756 ms  0x1ae8 privk:0x7f399a6b3020::7f399a6b3020  90 dc e5 96                                      ....
  9756 ms  0x1ae8 privk:0x7f399a6b3020::7f399a6b3020  e5 e5 e5 e5                                      ....
  9756 ms  0x1ae8 PK11_Encrypt()
  9756 ms  0x1ae8 symkey:0x7f3992060d00
  9757 ms  SECKEY_ECParamsToKeySize()
  9757 ms  0x1ae8 ret:0xff
  9757 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9757 ms  0x1ae8 cx:0x7f397f70ac48
  9757 ms     | 0x1ae8 EC_ValidatePublicKey()
  9757 ms     | 0x1ae8 ret:0x0
  9757 ms  0x1ae8 ret:0x7f399a6b3820::7f399a6b3820  00 11 e6 96                                      ....
  9757 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9757 ms  0x1ae8 seckey:0x7f399a6b3820
  9757 ms     | 0x1ae8 EC_ValidatePublicKey()
  9757 ms     | 0x1ae8 ret:0x0
  9758 ms  0x1ae8 ret:0x7f39923e5180
  9758 ms  0x1ae8 PK11_DeriveWithFlags()
  9758 ms  0x1ae8 basekey:0x7f39923e5180
  9758 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9758 ms  0x1ae8 ret:0x7f3992060e80
  9758 ms  0x1ae8 PK11_Derive()
  9758 ms  0x1ae8 basekey:0x7f3992060e80
  9758 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9758 ms  0x1ae8 ret:0x7f3992060f00
  9758 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9758 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  00 11 e6 96                                      ....
  9758 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  e5 e5 e5 e5                                      ....
  9758 ms  0x1ae8 PK11_Encrypt()
  9758 ms  0x1ae8 symkey:0x7f3992061780
  9759 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9759 ms  0x1ae8 cx:0x7f397f70c988
  9759 ms     | 0x1ae8 EC_ValidatePublicKey()
  9759 ms     | 0x1ae8 ret:0x0
  9759 ms  0x1ae8 ret:0x7f399a6b3820::7f399a6b3820  e0 dc e5 96                                      ....
  9759 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9759 ms  0x1ae8 cx:0x7f397f70c988
  9760 ms     | 0x1ae8 EC_ValidatePublicKey()
  9761 ms     | 0x1ae8 ret:0x0
  9761 ms  0x1ae8 ret:0x7f399aad9820::7f399aad9820  f0 86 e7 96                                      ....
  9761 ms  0x1ae8 SSL_AuthCertificateComplete()
  9761 ms  0x1ae8 fd:0x7f39920eaeb0
  9761 ms  0x1ae8 err:0x0
  9761 ms  0x1ae8 SSL_AuthCertificateComplete()
  9761 ms  0x1ae8 fd:0x7f39950b5fd0
  9761 ms  0x1ae8 err:0x0
  9762 ms  0x1ae8 PK11_Encrypt()
  9762 ms  0x1ae8 symkey:0x7f3992060d00
  9762 ms  0x1ae8 PK11_Encrypt()
  9762 ms  0x1ae8 symkey:0x7f3992060d00
  9762 ms  0x1ae8 PK11_Encrypt()
  9762 ms  0x1ae8 symkey:0x7f3992061780
  9762 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9762 ms  0x1ae8 cx:0x7f397f70cb28
  9763 ms     | 0x1ae8 EC_ValidatePublicKey()
  9763 ms     | 0x1ae8 ret:0x0
  9763 ms  0x1ae8 ret:0x7f399aae8020::7f399aae8020  20 3e ea 96                                       >..
  9763 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9763 ms  0x1ae8 cx:0x7f397f70cb28
  9763 ms     | 0x1ae8 EC_ValidatePublicKey()
  9765 ms     | 0x1ae8 ret:0x0
  9765 ms  0x1ae8 ret:0x7f399aaeb820::7f399aaeb820  60 60 eb 96                                      ``..
  9765 ms  0x1ae8 PK11_Encrypt()
  9765 ms  0x1ae8 symkey:0x7f3992060d00
  9826 ms  SECKEY_ECParamsToKeySize()
  9826 ms  0x1ae8 ret:0xff
  9826 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9826 ms  0x1ae8 cx:0x7f397f70b2c8
  9827 ms     | 0x1ae8 EC_ValidatePublicKey()
  9827 ms     | 0x1ae8 ret:0x0
  9827 ms  0x1ae8 ret:0x7f399ab6b820::7f399ab6b820  80 e8 ec 96                                      ....
  9827 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9827 ms  0x1ae8 seckey:0x7f399ab6b820
  9827 ms     | 0x1ae8 EC_ValidatePublicKey()
  9827 ms     | 0x1ae8 ret:0x0
  9829 ms  0x1ae8 ret:0x7f39923e5180
  9829 ms  0x1ae8 PK11_DeriveWithFlags()
  9829 ms  0x1ae8 basekey:0x7f39923e5180
  9829 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9829 ms  0x1ae8 ret:0x7f3991ae6e00
  9829 ms  0x1ae8 PK11_Derive()
  9829 ms  0x1ae8 basekey:0x7f3991ae6e00
  9829 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9829 ms  0x1ae8 ret:0x7f3992060600
  9829 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9829 ms  0x1ae8 privk:0x7f399ab6b820::7f399ab6b820  80 e8 ec 96                                      ....
  9829 ms  0x1ae8 privk:0x7f399ab6b820::7f399ab6b820  e5 e5 e5 e5                                      ....
  9830 ms  0x1ae8 PK11_Encrypt()
  9830 ms  0x1ae8 symkey:0x7f399209c900
  9832 ms  0x1ae8 SSL_AuthCertificateComplete()
  9832 ms  0x1ae8 fd:0x7f39920eaf40
  9832 ms  0x1ae8 err:0x0
  9833 ms  0x1ae8 PK11_Encrypt()
  9833 ms  0x1ae8 symkey:0x7f399209c900
  9833 ms  0x1ae8 PK11_Encrypt()
  9833 ms  0x1ae8 symkey:0x7f399209c900
  9834 ms  0x1ae8 PK11_Encrypt()
  9834 ms  0x1ae8 symkey:0x7f399209c900
  9835 ms  0x1ae8 PK11_Encrypt()
  9835 ms  0x1ae8 symkey:0x7f399209c900
  9837 ms  SECKEY_ECParamsToKeySize()
  9837 ms  0x1ae8 ret:0xff
  9838 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9838 ms  0x1ae8 cx:0x7f397f70af88
  9839 ms     | 0x1ae8 EC_ValidatePublicKey()
  9839 ms     | 0x1ae8 ret:0x0
  9839 ms  0x1ae8 ret:0x7f399ab6e020::7f399ab6e020  80 68 f0 96                                      .h..
  9839 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9839 ms  0x1ae8 seckey:0x7f399ab6e020
  9839 ms     | 0x1ae8 EC_ValidatePublicKey()
  9839 ms     | 0x1ae8 ret:0x0
  9840 ms  0x1ae8 ret:0x7f39923e5180
  9840 ms  0x1ae8 PK11_DeriveWithFlags()
  9840 ms  0x1ae8 basekey:0x7f39923e5180
  9840 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9843 ms  0x1ae8 ret:0x7f399209d880
  9843 ms  0x1ae8 PK11_Derive()
  9843 ms  0x1ae8 basekey:0x7f399209d880
  9843 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9843 ms  0x1ae8 ret:0x7f39920cd180
  9843 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9843 ms  0x1ae8 privk:0x7f399ab6e020::7f399ab6e020  80 68 f0 96                                      .h..
  9843 ms  0x1ae8 privk:0x7f399ab6e020::7f399ab6e020  e5 e5 e5 e5                                      ....
  9844 ms  0x1ae8 PK11_Encrypt()
  9844 ms  0x1ae8 symkey:0x7f39920cd900
  9845 ms  0x1ae8 SSL_AuthCertificateComplete()
  9845 ms  0x1ae8 fd:0x7f39969ff160
  9845 ms  0x1ae8 err:0x0
  9847 ms  SECKEY_ECParamsToKeySize()
  9847 ms  0x1ae8 ret:0xff
  9847 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9847 ms  0x1ae8 cx:0x7f397f70c7e8
  9848 ms     | 0x1ae8 EC_ValidatePublicKey()
  9848 ms     | 0x1ae8 ret:0x0
  9848 ms  0x1ae8 ret:0x7f399ab6e820::7f399ab6e820  10 75 fa 96                                      .u..
  9848 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9848 ms  0x1ae8 seckey:0x7f399ab6e820
  9848 ms     | 0x1ae8 EC_ValidatePublicKey()
  9848 ms     | 0x1ae8 ret:0x0
  9849 ms  0x1ae8 ret:0x7f39923e5180
  9849 ms  0x1ae8 PK11_DeriveWithFlags()
  9849 ms  0x1ae8 basekey:0x7f39923e5180
  9849 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9849 ms  0x1ae8 ret:0x7f397f6e2680
  9849 ms  0x1ae8 PK11_Derive()
  9849 ms  0x1ae8 basekey:0x7f397f6e2680
  9849 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9850 ms  0x1ae8 ret:0x7f39920cdb00
  9850 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9850 ms  0x1ae8 privk:0x7f399ab6e820::7f399ab6e820  10 75 fa 96                                      .u..
  9850 ms  0x1ae8 privk:0x7f399ab6e820::7f399ab6e820  e5 e5 e5 e5                                      ....
  9850 ms  0x1ae8 PK11_Encrypt()
  9850 ms  0x1ae8 symkey:0x7f39920cdc80
  9851 ms  0x1ae8 PK11_Encrypt()
  9851 ms  0x1ae8 symkey:0x7f39920cd900
  9851 ms  0x1ae8 SSL_AuthCertificateComplete()
  9851 ms  0x1ae8 fd:0x7f39969fd850
  9851 ms  0x1ae8 err:0x0
  9851 ms  0x1ae8 PK11_Encrypt()
  9851 ms  0x1ae8 symkey:0x7f399209c900
  9852 ms  0x1ae8 PK11_Encrypt()
  9852 ms  0x1ae8 symkey:0x7f39920cdc80
  9853 ms  0x1ae8 PK11_Encrypt()
  9853 ms  0x1ae8 symkey:0x7f39920cdc80
  9854 ms  SECKEY_ECParamsToKeySize()
  9854 ms  0x1ae8 ret:0xff
  9854 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9854 ms  0x1ae8 cx:0x7f397f70c648
  9855 ms     | 0x1ae8 EC_ValidatePublicKey()
  9855 ms     | 0x1ae8 ret:0x0
  9855 ms  0x1ae8 ret:0x7f399ab72020::7f399ab72020  60 7f fa 96                                      `...
  9855 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9855 ms  0x1ae8 seckey:0x7f399ab72020
  9855 ms     | 0x1ae8 EC_ValidatePublicKey()
  9855 ms     | 0x1ae8 ret:0x0
  9856 ms  0x1ae8 ret:0x7f39923e5180
  9856 ms  0x1ae8 PK11_DeriveWithFlags()
  9856 ms  0x1ae8 basekey:0x7f39923e5180
  9856 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9856 ms  0x1ae8 ret:0x7f39920ce100
  9856 ms  0x1ae8 PK11_Derive()
  9856 ms  0x1ae8 basekey:0x7f39920ce100
  9856 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9856 ms  0x1ae8 ret:0x7f39920ce180
  9856 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9856 ms  0x1ae8 privk:0x7f399ab72020::7f399ab72020  60 7f fa 96                                      `...
  9856 ms  0x1ae8 privk:0x7f399ab72020::7f399ab72020  e5 e5 e5 e5                                      ....
  9856 ms  0x1ae8 PK11_Encrypt()
  9856 ms  0x1ae8 symkey:0x7f39920ce580
  9857 ms  0x1ae8 PK11_Encrypt()
  9857 ms  0x1ae8 symkey:0x7f39920cdc80
  9858 ms  0x1ae8 PK11_Encrypt()
  9858 ms  0x1ae8 symkey:0x7f39920cdc80
  9859 ms  0x1ae8 SSL_AuthCertificateComplete()
  9859 ms  0x1ae8 fd:0x7f39969c6df0
  9859 ms  0x1ae8 err:0x0
  9859 ms  0x1ae8 PK11_Encrypt()
  9859 ms  0x1ae8 symkey:0x7f39920cdc80
  9859 ms  0x1ae8 PK11_Encrypt()
  9859 ms  0x1ae8 symkey:0x7f39920ce580
  9861 ms  SECKEY_ECParamsToKeySize()
  9861 ms  0x1ae8 ret:0xff
  9861 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9861 ms  0x1ae8 cx:0x7f397f70c4a8
  9862 ms     | 0x1ae8 EC_ValidatePublicKey()
  9862 ms     | 0x1ae8 ret:0x0
  9862 ms  0x1ae8 ret:0x7f399ab75020::7f399ab75020  90 a2 fb 96                                      ....
  9862 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9862 ms  0x1ae8 seckey:0x7f399ab75020
  9862 ms     | 0x1ae8 EC_ValidatePublicKey()
  9862 ms     | 0x1ae8 ret:0x0
  9862 ms  0x1ae8 ret:0x7f39923e5180
  9862 ms  0x1ae8 PK11_DeriveWithFlags()
  9862 ms  0x1ae8 basekey:0x7f39923e5180
  9862 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9862 ms  0x1ae8 ret:0x7f39920ce680
  9862 ms  0x1ae8 PK11_Derive()
  9862 ms  0x1ae8 basekey:0x7f39920ce680
  9862 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9862 ms  0x1ae8 ret:0x7f39920ce700
  9862 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9862 ms  0x1ae8 privk:0x7f399ab75020::7f399ab75020  90 a2 fb 96                                      ....
  9863 ms  0x1ae8 privk:0x7f399ab75020::7f399ab75020  e5 e5 e5 e5                                      ....
  9863 ms  0x1ae8 PK11_Encrypt()
  9863 ms  0x1ae8 symkey:0x7f39920cec80
  9864 ms  SECKEY_ECParamsToKeySize()
  9864 ms  0x1ae8 ret:0xff
  9864 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9864 ms  0x1ae8 cx:0x7f397f70c308
  9864 ms     | 0x1ae8 EC_ValidatePublicKey()
  9864 ms     | 0x1ae8 ret:0x0
  9864 ms  0x1ae8 ret:0x7f399ab75820::7f399ab75820  70 a9 fb 96                                      p...
  9864 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9864 ms  0x1ae8 seckey:0x7f399ab75820
  9864 ms     | 0x1ae8 EC_ValidatePublicKey()
  9864 ms     | 0x1ae8 ret:0x0
  9865 ms  0x1ae8 ret:0x7f39923e5180
  9865 ms  0x1ae8 PK11_DeriveWithFlags()
  9865 ms  0x1ae8 basekey:0x7f39923e5180
  9865 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9865 ms  0x1ae8 ret:0x7f39920db600
  9865 ms  0x1ae8 PK11_Derive()
  9865 ms  0x1ae8 basekey:0x7f39920db600
  9865 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9865 ms  0x1ae8 ret:0x7f39920db680
  9865 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9865 ms  0x1ae8 privk:0x7f399ab75820::7f399ab75820  70 a9 fb 96                                      p...
  9865 ms  0x1ae8 privk:0x7f399ab75820::7f399ab75820  e5 e5 e5 e5                                      ....
  9865 ms  0x1ae8 PK11_Encrypt()
  9865 ms  0x1ae8 symkey:0x7f39920db800
  9866 ms  0x1ae8 SSL_AuthCertificateComplete()
  9866 ms  0x1ae8 fd:0x7f39965ea910
  9866 ms  0x1ae8 err:0x0
  9866 ms  0x1ae8 SSL_AuthCertificateComplete()
  9866 ms  0x1ae8 fd:0x7f399653efa0
  9866 ms  0x1ae8 err:0x0
  9866 ms  0x1ae8 PK11_Encrypt()
  9866 ms  0x1ae8 symkey:0x7f39920cdc80
  9866 ms  0x1ae8 PK11_Encrypt()
  9866 ms  0x1ae8 symkey:0x7f39920cec80
  9867 ms  0x1ae8 PK11_Encrypt()
  9867 ms  0x1ae8 symkey:0x7f39920db800
  9868 ms  SECKEY_ECParamsToKeySize()
  9868 ms  0x1ae8 ret:0xff
  9868 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9868 ms  0x1ae8 cx:0x7f397f70c168
  9868 ms     | 0x1ae8 EC_ValidatePublicKey()
  9868 ms     | 0x1ae8 ret:0x0
  9868 ms  0x1ae8 ret:0x7f399ab78820::7f399ab78820  10 aa fb 96                                      ....
  9868 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9868 ms  0x1ae8 seckey:0x7f399ab78820
  9868 ms     | 0x1ae8 EC_ValidatePublicKey()
  9868 ms     | 0x1ae8 ret:0x0
  9869 ms  0x1ae8 ret:0x7f39923e5180
  9869 ms  0x1ae8 PK11_DeriveWithFlags()
  9869 ms  0x1ae8 basekey:0x7f39923e5180
  9869 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9869 ms  0x1ae8 ret:0x7f39920dc600
  9869 ms  0x1ae8 PK11_Derive()
  9869 ms  0x1ae8 basekey:0x7f39920dc600
  9869 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9869 ms  0x1ae8 ret:0x7f39920dc680
  9869 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9869 ms  0x1ae8 privk:0x7f399ab78820::7f399ab78820  10 aa fb 96                                      ....
  9869 ms  0x1ae8 privk:0x7f399ab78820::7f399ab78820  e5 e5 e5 e5                                      ....
  9869 ms  0x1ae8 PK11_Encrypt()
  9869 ms  0x1ae8 symkey:0x7f39920dc800
  9870 ms  SECKEY_ECParamsToKeySize()
  9870 ms  0x1ae8 ret:0xff
  9870 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9870 ms  0x1ae8 cx:0x7f397f70bfc8
  9871 ms     | 0x1ae8 EC_ValidatePublicKey()
  9871 ms     | 0x1ae8 ret:0x0
  9871 ms  0x1ae8 ret:0x7f399ab79020::7f399ab79020  20 ee fd 96                                       ...
  9871 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9871 ms  0x1ae8 seckey:0x7f399ab79020
  9871 ms     | 0x1ae8 EC_ValidatePublicKey()
  9871 ms     | 0x1ae8 ret:0x0
  9871 ms  0x1ae8 ret:0x7f39923e5180
  9871 ms  0x1ae8 PK11_DeriveWithFlags()
  9871 ms  0x1ae8 basekey:0x7f39923e5180
  9871 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9871 ms  0x1ae8 ret:0x7f39920dca80
  9871 ms  0x1ae8 PK11_Derive()
  9871 ms  0x1ae8 basekey:0x7f39920dca80
  9871 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9871 ms  0x1ae8 ret:0x7f39920dcb00
  9871 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9871 ms  0x1ae8 privk:0x7f399ab79020::7f399ab79020  20 ee fd 96                                       ...
  9871 ms  0x1ae8 privk:0x7f399ab79020::7f399ab79020  e5 e5 e5 e5                                      ....
  9872 ms  0x1ae8 PK11_Encrypt()
  9872 ms  0x1ae8 symkey:0x7f39920dcf00
  9872 ms  0x1ae8 PK11_Encrypt()
  9872 ms  0x1ae8 symkey:0x7f39920cdc80
  9872 ms  0x1ae8 SSL_AuthCertificateComplete()
  9872 ms  0x1ae8 fd:0x7f399653eac0
  9872 ms  0x1ae8 err:0x0
  9872 ms  0x1ae8 SSL_AuthCertificateComplete()
  9872 ms  0x1ae8 fd:0x7f399289dca0
  9872 ms  0x1ae8 err:0x0
  9872 ms  0x1ae8 PK11_Encrypt()
  9872 ms  0x1ae8 symkey:0x7f39920cdc80
  9873 ms  0x1ae8 PK11_Encrypt()
  9873 ms  0x1ae8 symkey:0x7f39920dc800
  9873 ms  0x1ae8 PK11_Encrypt()
  9873 ms  0x1ae8 symkey:0x7f39920dc800
  9873 ms  0x1ae8 PK11_Encrypt()
  9873 ms  0x1ae8 symkey:0x7f39920dcf00
  9874 ms  SECKEY_ECParamsToKeySize()
  9874 ms  0x1ae8 ret:0xff
  9874 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9874 ms  0x1ae8 cx:0x7f397f70be28
  9875 ms     | 0x1ae8 EC_ValidatePublicKey()
  9875 ms     | 0x1ae8 ret:0x0
  9875 ms  0x1ae8 ret:0x7f399ab7d020::7f399ab7d020  70 f4 ff 96                                      p...
  9875 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9875 ms  0x1ae8 seckey:0x7f399ab7d020
  9875 ms     | 0x1ae8 EC_ValidatePublicKey()
  9875 ms     | 0x1ae8 ret:0x0
  9875 ms  0x1ae8 ret:0x7f39923e5180
  9875 ms  0x1ae8 PK11_DeriveWithFlags()
  9875 ms  0x1ae8 basekey:0x7f39923e5180
  9875 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9875 ms  0x1ae8 ret:0x7f39923de600
  9875 ms  0x1ae8 PK11_Derive()
  9875 ms  0x1ae8 basekey:0x7f39923de600
  9875 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9875 ms  0x1ae8 ret:0x7f39923de880
  9876 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9876 ms  0x1ae8 privk:0x7f399ab7d020::7f399ab7d020  70 f4 ff 96                                      p...
  9876 ms  0x1ae8 privk:0x7f399ab7d020::7f399ab7d020  e5 e5 e5 e5                                      ....
  9876 ms  0x1ae8 PK11_Encrypt()
  9876 ms  0x1ae8 symkey:0x7f39923e5600
  9876 ms  0x1ae8 PK11_Encrypt()
  9876 ms  0x1ae8 symkey:0x7f39920dc800
  9876 ms  0x1ae8 PK11_Encrypt()
  9876 ms  0x1ae8 symkey:0x7f39920dc800
  9876 ms  0x1ae8 PK11_Encrypt()
  9876 ms  0x1ae8 symkey:0x7f39920dc800
  9881 ms  0x1ae8 PK11_Encrypt()
  9881 ms  0x1ae8 symkey:0x7f39920dc800
  9882 ms  0x1ae8 PK11_Encrypt()
  9882 ms  0x1ae8 symkey:0x7f39920dc800
  9882 ms  0x1ae8 PK11_Encrypt()
  9882 ms  0x1ae8 symkey:0x7f39920dc800
  9882 ms  0x1ae8 PK11_Encrypt()
  9882 ms  0x1ae8 symkey:0x7f39920dc800
  9884 ms  0x1ae8 PK11_Encrypt()
  9884 ms  0x1ae8 symkey:0x7f39920dc800
  9885 ms  0x1ae8 PK11_Encrypt()
  9885 ms  0x1ae8 symkey:0x7f39920dc800
  9885 ms  0x1ae8 PK11_Encrypt()
  9885 ms  0x1ae8 symkey:0x7f39920dc800
  9885 ms  0x1ae8 PK11_Encrypt()
  9885 ms  0x1ae8 symkey:0x7f39920dc800
  9885 ms  0x1ae8 PK11_Encrypt()
  9885 ms  0x1ae8 symkey:0x7f39920dc800
  9886 ms  0x1ae8 SSL_AuthCertificateComplete()
  9886 ms  0x1ae8 fd:0x7f39920f0c10
  9886 ms  0x1ae8 err:0x0
  9886 ms  0x1ae8 PK11_Encrypt()
  9886 ms  0x1ae8 symkey:0x7f39920dc800
  9886 ms  0x1ae8 PK11_Encrypt()
  9886 ms  0x1ae8 symkey:0x7f39920dc800
  9886 ms  0x1ae8 PK11_Encrypt()
  9886 ms  0x1ae8 symkey:0x7f39923e5600
  9887 ms  SECKEY_ECParamsToKeySize()
  9887 ms  0x1ae8 ret:0xff
  9887 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9887 ms  0x1ae8 cx:0x7f397f70bc88
  9888 ms     | 0x1ae8 EC_ValidatePublicKey()
  9888 ms     | 0x1ae8 ret:0x0
  9888 ms  0x1ae8 ret:0x7f399b361820::7f399b361820  60 95 01 97                                      `...
  9888 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9888 ms  0x1ae8 seckey:0x7f399b361820
  9888 ms     | 0x1ae8 EC_ValidatePublicKey()
  9888 ms     | 0x1ae8 ret:0x0
  9888 ms  0x1ae8 ret:0x7f39923e5180
  9888 ms  0x1ae8 PK11_DeriveWithFlags()
  9888 ms  0x1ae8 basekey:0x7f39923e5180
  9888 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9888 ms  0x1ae8 ret:0x7f39923e5700
  9888 ms  0x1ae8 PK11_Derive()
  9888 ms  0x1ae8 basekey:0x7f39923e5700
  9888 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9888 ms  0x1ae8 ret:0x7f39923e5780
  9889 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9889 ms  0x1ae8 privk:0x7f399b361820::7f399b361820  60 95 01 97                                      `...
  9889 ms  0x1ae8 privk:0x7f399b361820::7f399b361820  e5 e5 e5 e5                                      ....
  9889 ms  0x1ae8 PK11_Encrypt()
  9889 ms  0x1ae8 symkey:0x7f3992828300
  9890 ms  SECKEY_ECParamsToKeySize()
  9890 ms  0x1ae8 ret:0xff
  9890 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9890 ms  0x1ae8 cx:0x7f397f70bae8
  9890 ms     | 0x1ae8 EC_ValidatePublicKey()
  9890 ms     | 0x1ae8 ret:0x0
  9890 ms  0x1ae8 ret:0x7f399b362020::7f399b362020  10 65 09 97                                      .e..
  9890 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9890 ms  0x1ae8 seckey:0x7f399b362020
  9890 ms     | 0x1ae8 EC_ValidatePublicKey()
  9890 ms     | 0x1ae8 ret:0x0
  9891 ms  0x1ae8 ret:0x7f39923e5180
  9891 ms  0x1ae8 PK11_DeriveWithFlags()
  9891 ms  0x1ae8 basekey:0x7f39923e5180
  9891 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9891 ms  0x1ae8 ret:0x7f3992828480
  9891 ms  0x1ae8 PK11_Derive()
  9891 ms  0x1ae8 basekey:0x7f3992828480
  9891 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9891 ms  0x1ae8 ret:0x7f3992828500
  9891 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9891 ms  0x1ae8 privk:0x7f399b362020::7f399b362020  10 65 09 97                                      .e..
  9891 ms  0x1ae8 privk:0x7f399b362020::7f399b362020  e5 e5 e5 e5                                      ....
  9891 ms  0x1ae8 PK11_Encrypt()
  9891 ms  0x1ae8 symkey:0x7f39928c3100
  9892 ms  SECKEY_ECParamsToKeySize()
  9892 ms  0x1ae8 ret:0xff
  9892 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9892 ms  0x1ae8 cx:0x7f397f70b948
  9892 ms     | 0x1ae8 EC_ValidatePublicKey()
  9892 ms     | 0x1ae8 ret:0x0
  9892 ms  0x1ae8 ret:0x7f399b362820::7f399b362820  e0 6c 09 97                                      .l..
  9893 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9893 ms  0x1ae8 seckey:0x7f399b362820
  9893 ms     | 0x1ae8 EC_ValidatePublicKey()
  9893 ms     | 0x1ae8 ret:0x0
  9893 ms  0x1ae8 ret:0x7f39923e5180
  9893 ms  0x1ae8 PK11_DeriveWithFlags()
  9893 ms  0x1ae8 basekey:0x7f39923e5180
  9893 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9893 ms  0x1ae8 ret:0x7f39928c3380
  9893 ms  0x1ae8 PK11_Derive()
  9893 ms  0x1ae8 basekey:0x7f39928c3380
  9893 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9893 ms  0x1ae8 ret:0x7f39928c3400
  9893 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9893 ms  0x1ae8 privk:0x7f399b362820::7f399b362820  e0 6c 09 97                                      .l..
  9893 ms  0x1ae8 privk:0x7f399b362820::7f399b362820  e5 e5 e5 e5                                      ....
  9893 ms  0x1ae8 PK11_Encrypt()
  9893 ms  0x1ae8 symkey:0x7f39928c3600
  9894 ms  SECKEY_ECParamsToKeySize()
  9894 ms  0x1ae8 ret:0xff
  9894 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9894 ms  0x1ae8 cx:0x7f397f70b7a8
  9895 ms     | 0x1ae8 EC_ValidatePublicKey()
  9895 ms     | 0x1ae8 ret:0x0
  9895 ms  0x1ae8 ret:0x7f399b363020::7f399b363020  80 6d 09 97                                      .m..
  9895 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9895 ms  0x1ae8 seckey:0x7f399b363020
  9895 ms     | 0x1ae8 EC_ValidatePublicKey()
  9895 ms     | 0x1ae8 ret:0x0
  9895 ms  0x1ae8 ret:0x7f39923e5180
  9895 ms  0x1ae8 PK11_DeriveWithFlags()
  9895 ms  0x1ae8 basekey:0x7f39923e5180
  9895 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9895 ms  0x1ae8 ret:0x7f39928c3700
  9895 ms  0x1ae8 PK11_Derive()
  9895 ms  0x1ae8 basekey:0x7f39928c3700
  9895 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9895 ms  0x1ae8 ret:0x7f39928c3780
  9895 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9895 ms  0x1ae8 privk:0x7f399b363020::7f399b363020  80 6d 09 97                                      .m..
  9896 ms  0x1ae8 privk:0x7f399b363020::7f399b363020  e5 e5 e5 e5                                      ....
  9896 ms  0x1ae8 PK11_Encrypt()
  9896 ms  0x1ae8 symkey:0x7f39928c3b00
  9896 ms  SECKEY_ECParamsToKeySize()
  9896 ms  0x1ae8 ret:0xff
  9896 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9896 ms  0x1ae8 cx:0x7f397f70b608
  9897 ms     | 0x1ae8 EC_ValidatePublicKey()
  9897 ms     | 0x1ae8 ret:0x0
  9897 ms  0x1ae8 ret:0x7f399b363820::7f399b363820  c0 29 86 99                                      .)..
  9897 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9897 ms  0x1ae8 seckey:0x7f399b363820
  9897 ms     | 0x1ae8 EC_ValidatePublicKey()
  9897 ms     | 0x1ae8 ret:0x0
  9897 ms  0x1ae8 ret:0x7f39923e5180
  9897 ms  0x1ae8 PK11_DeriveWithFlags()
  9897 ms  0x1ae8 basekey:0x7f39923e5180
  9897 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9898 ms  0x1ae8 ret:0x7f39928c3c00
  9898 ms  0x1ae8 PK11_Derive()
  9898 ms  0x1ae8 basekey:0x7f39928c3c00
  9898 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9898 ms  0x1ae8 ret:0x7f39928c3c80
  9898 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9898 ms  0x1ae8 privk:0x7f399b363820::7f399b363820  c0 29 86 99                                      .)..
  9898 ms  0x1ae8 privk:0x7f399b363820::7f399b363820  e5 e5 e5 e5                                      ....
  9898 ms  0x1ae8 PK11_Encrypt()
  9898 ms  0x1ae8 symkey:0x7f39928c3f00
  9898 ms  SECKEY_ECParamsToKeySize()
  9899 ms  0x1ae8 ret:0xff
  9899 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9899 ms  0x1ae8 cx:0x7f397f70b468
  9899 ms     | 0x1ae8 EC_ValidatePublicKey()
  9899 ms     | 0x1ae8 ret:0x0
  9899 ms  0x1ae8 ret:0x7f399b364020::7f399b364020  00 2b 86 99                                      .+..
  9899 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9899 ms  0x1ae8 seckey:0x7f399b364020
  9899 ms     | 0x1ae8 EC_ValidatePublicKey()
  9899 ms     | 0x1ae8 ret:0x0
  9900 ms  0x1ae8 ret:0x7f39923e5180
  9900 ms  0x1ae8 PK11_DeriveWithFlags()
  9900 ms  0x1ae8 basekey:0x7f39923e5180
  9900 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9900 ms  0x1ae8 ret:0x7f39928fe100
  9900 ms  0x1ae8 PK11_Derive()
  9900 ms  0x1ae8 basekey:0x7f39928fe100
  9900 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9900 ms  0x1ae8 ret:0x7f39928fe180
  9900 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9900 ms  0x1ae8 privk:0x7f399b364020::7f399b364020  00 2b 86 99                                      .+..
  9900 ms  0x1ae8 privk:0x7f399b364020::7f399b364020  e5 e5 e5 e5                                      ....
  9900 ms  0x1ae8 PK11_Encrypt()
  9900 ms  0x1ae8 symkey:0x7f39928fe300
  9900 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9900 ms  0x1ae8 privk:0x7f3996812820::7f3996812820  40 f7 df 92                                      @...
  9900 ms  0x1ae8 privk:0x7f3996812820::7f3996812820  e5 e5 e5 e5                                      ....
  9900 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9900 ms  0x1ae8 privk:0x7f399086b020::7f399086b020  40 4c 8c 92                                      @L..
  9900 ms  0x1ae8 privk:0x7f399086b020::7f399086b020  e5 e5 e5 e5                                      ....
  9900 ms  0x1ae8 PK11_Encrypt()
  9900 ms  0x1ae8 symkey:0x7f39920dc800
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f39920ea340
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f39905f7670
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f397f6e0cd0
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f3990338cd0
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f397f727670
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 SSL_AuthCertificateComplete()
  9901 ms  0x1ae8 fd:0x7f39920f0820
  9901 ms  0x1ae8 err:0x0
  9901 ms  0x1ae8 PK11_Encrypt()
  9901 ms  0x1ae8 symkey:0x7f3992060d00
  9901 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9901 ms  0x1ae8 privk:0x7f399681e820::7f399681e820  f0 e1 6a 93                                      ..j.
  9901 ms  0x1ae8 privk:0x7f399681e820::7f399681e820  e5 e5 e5 e5                                      ....
  9901 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9901 ms  0x1ae8 privk:0x7f3996819020::7f3996819020  70 5e 65 93                                      p^e.
  9901 ms  0x1ae8 privk:0x7f3996819020::7f3996819020  e5 e5 e5 e5                                      ....
  9902 ms  SECKEY_ECParamsToKeySize()
  9902 ms  0x1ae8 ret:0xff
  9902 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9902 ms  0x1ae8 cx:0x7f397f70cb28
  9903 ms     | 0x1ae8 EC_ValidatePublicKey()
  9903 ms     | 0x1ae8 ret:0x0
  9903 ms  0x1ae8 ret:0x7f3996812020::7f3996812020  e0 5c 65 93                                      .\e.
  9903 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9903 ms  0x1ae8 seckey:0x7f3996812020
  9903 ms     | 0x1ae8 EC_ValidatePublicKey()
  9903 ms     | 0x1ae8 ret:0x0
  9903 ms  0x1ae8 ret:0x7f39923e5180
  9903 ms  0x1ae8 PK11_DeriveWithFlags()
  9903 ms  0x1ae8 basekey:0x7f39923e5180
  9903 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9903 ms  0x1ae8 ret:0x7f39928fe580
  9903 ms  0x1ae8 PK11_Derive()
  9903 ms  0x1ae8 basekey:0x7f39928fe580
  9903 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9903 ms  0x1ae8 ret:0x7f39928fe600
  9903 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9903 ms  0x1ae8 privk:0x7f3996812020::7f3996812020  e0 5c 65 93                                      .\e.
  9903 ms  0x1ae8 privk:0x7f3996812020::7f3996812020  e5 e5 e5 e5                                      ....
  9904 ms  0x1ae8 PK11_Encrypt()
  9904 ms  0x1ae8 symkey:0x7f39928fe800
  9904 ms  SECKEY_ECParamsToKeySize()
  9904 ms  0x1ae8 ret:0xff
  9904 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9904 ms  0x1ae8 cx:0x7f397f70c988
  9905 ms     | 0x1ae8 EC_ValidatePublicKey()
  9905 ms     | 0x1ae8 ret:0x0
  9905 ms  0x1ae8 ret:0x7f3996815020::7f3996815020  70 5e 65 93                                      p^e.
  9905 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9905 ms  0x1ae8 seckey:0x7f3996815020
  9905 ms     | 0x1ae8 EC_ValidatePublicKey()
  9905 ms     | 0x1ae8 ret:0x0
  9905 ms  0x1ae8 ret:0x7f39923e5180
  9905 ms  0x1ae8 PK11_DeriveWithFlags()
  9905 ms  0x1ae8 basekey:0x7f39923e5180
  9905 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9905 ms  0x1ae8 ret:0x7f3992d7a500
  9906 ms  0x1ae8 PK11_Derive()
  9906 ms  0x1ae8 basekey:0x7f3992d7a500
  9906 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9906 ms  0x1ae8 ret:0x7f3992d7ab80
  9906 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9906 ms  0x1ae8 privk:0x7f3996815020::7f3996815020  70 5e 65 93                                      p^e.
  9906 ms  0x1ae8 privk:0x7f3996815020::7f3996815020  e5 e5 e5 e5                                      ....
  9906 ms  0x1ae8 PK11_Encrypt()
  9906 ms  0x1ae8 symkey:0x7f3992d7ad00
  9906 ms  0x1ae8 PK11_Encrypt()
  9906 ms  0x1ae8 symkey:0x7f39920dc800
  9907 ms  0x1ae8 PK11_Encrypt()
  9907 ms  0x1ae8 symkey:0x7f3992828300
  9907 ms  0x1ae8 PK11_Encrypt()
  9907 ms  0x1ae8 symkey:0x7f39928c3100
  9908 ms  0x1ae8 PK11_Encrypt()
  9908 ms  0x1ae8 symkey:0x7f39928c3600
  9908 ms  0x1ae8 PK11_Encrypt()
  9908 ms  0x1ae8 symkey:0x7f39928c3b00
  9909 ms  0x1ae8 PK11_Encrypt()
  9909 ms  0x1ae8 symkey:0x7f39928c3f00
  9909 ms  0x1ae8 PK11_Encrypt()
  9909 ms  0x1ae8 symkey:0x7f39928fe300
  9910 ms  SECKEY_ECParamsToKeySize()
  9910 ms  0x1ae8 ret:0xff
  9910 ms  0x1ae8 SECKEY_CreateECPrivateKey()
  9910 ms  0x1ae8 cx:0x7f397f70b128
  9910 ms     | 0x1ae8 EC_ValidatePublicKey()
  9910 ms     | 0x1ae8 ret:0x0
  9910 ms  0x1ae8 ret:0x7f399b363020::7f399b363020  60 e0 6a 93                                      `.j.
  9910 ms  0x1ae8 PK11_PubDeriveWithKDF()
  9910 ms  0x1ae8 seckey:0x7f399b363020
  9910 ms     | 0x1ae8 EC_ValidatePublicKey()
  9910 ms     | 0x1ae8 ret:0x0
  9911 ms  0x1ae8 ret:0x7f39923e5180
  9911 ms  0x1ae8 PK11_DeriveWithFlags()
  9911 ms  0x1ae8 basekey:0x7f39923e5180
  9911 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9911 ms  0x1ae8 ret:0x7f3992d7b180
  9911 ms  0x1ae8 PK11_Derive()
  9911 ms  0x1ae8 basekey:0x7f3992d7b180
  9911 ms     | 0x1ae8 PK11_DeriveWithTemplate()
  9911 ms  0x1ae8 ret:0x7f3992d7b200
  9911 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9911 ms  0x1ae8 privk:0x7f399b363020::7f399b363020  60 e0 6a 93                                      `.j.
  9911 ms  0x1ae8 privk:0x7f399b363020::7f399b363020  e5 e5 e5 e5                                      ....
  9911 ms  0x1ae8 PK11_Encrypt()
  9911 ms  0x1ae8 symkey:0x7f3992dcd180
  9911 ms  0x1ae8 PR_Close()
  9911 ms  0x1ae8 fd:0x7f39950b5fd0
  9911 ms     | 0x1ae8 PK11_Encrypt()
  9911 ms     | 0x1ae8 symkey:0x7f3992061780
  9912 ms  0x1ae8 SSL_AuthCertificateComplete()
  9912 ms  0x1ae8 fd:0x7f39969ff040
  9912 ms  0x1ae8 err:0x0
  9912 ms  0x1ae8 SSL_AuthCertificateComplete()
  9912 ms  0x1ae8 fd:0x7f39969fdd30
  9912 ms  0x1ae8 err:0x0
  9912 ms  0x1ae8 PK11_Encrypt()
  9912 ms  0x1ae8 symkey:0x7f39920dc800
  9912 ms  0x1ae8 PK11_Encrypt()
  9912 ms  0x1ae8 symkey:0x7f39920dc800
  9912 ms  0x1ae8 PK11_Encrypt()
  9912 ms  0x1ae8 symkey:0x7f399209c900
  9913 ms  0x1ae8 PK11_Encrypt()
  9913 ms  0x1ae8 symkey:0x7f399209c900
  9913 ms  0x1ae8 SSL_AuthCertificateComplete()
  9913 ms  0x1ae8 fd:0x7f39969ff280
  9913 ms  0x1ae8 err:0x0
  9914 ms  0x1ae8 PK11_Encrypt()
  9914 ms  0x1ae8 symkey:0x7f39928fe800
  9914 ms  0x1ae8 PK11_Encrypt()
  9914 ms  0x1ae8 symkey:0x7f3992d7ad00
  9914 ms  0x1ae8 PK11_Encrypt()
  9914 ms  0x1ae8 symkey:0x7f39920dc800
  9914 ms  0x1ae8 PK11_Encrypt()
  9914 ms  0x1ae8 symkey:0x7f399209c900
  9915 ms  0x1ae8 PK11_Encrypt()
  9915 ms  0x1ae8 symkey:0x7f3992dcd180
  9915 ms  0x1ae8 PK11_Encrypt()
  9915 ms  0x1ae8 symkey:0x7f39920cdc80
  9915 ms  0x1ae8 PK11_Encrypt()
  9915 ms  0x1ae8 symkey:0x7f39920cdc80
  9915 ms  0x1ae8 PK11_Encrypt()
  9915 ms  0x1ae8 symkey:0x7f39920dc800
  9916 ms  0x1ae8 PK11_Encrypt()
  9916 ms  0x1ae8 symkey:0x7f399209c900
  9916 ms  0x1ae8 PK11_Encrypt()
  9916 ms  0x1ae8 symkey:0x7f39920dc800
  9916 ms  0x1ae8 PK11_Encrypt()
  9916 ms  0x1ae8 symkey:0x7f39920dc800
  9916 ms  0x1ae8 PK11_Encrypt()
  9916 ms  0x1ae8 symkey:0x7f39920dc800
  9917 ms  0x1ae8 PK11_Encrypt()
  9917 ms  0x1ae8 symkey:0x7f39920dc800
  9963 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9963 ms  0x1ae8 privk:0x7f3996cde020::7f3996cde020  20 e4 6a 93                                       .j.
  9963 ms  0x1ae8 privk:0x7f3996cde020::7f3996cde020  e5 e5 e5 e5                                      ....
  9963 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9963 ms  0x1ae8 privk:0x7f39969a1020::7f39969a1020  e0 e2 6a 93                                      ..j.
  9963 ms  0x1ae8 privk:0x7f39969a1020::7f39969a1020  e5 e5 e5 e5                                      ....
  9964 ms  0x1ae8 PK11_Encrypt()
  9964 ms  0x1ae8 symkey:0x7f399209c900
  9978 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9978 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  30 9d 5f 96                                      0._.
  9979 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  e5 e5 e5 e5                                      ....
  9979 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9979 ms  0x1ae8 privk:0x7f3996ce2820::7f3996ce2820  b0 00 55 96                                      ..U.
  9979 ms  0x1ae8 privk:0x7f3996ce2820::7f3996ce2820  e5 e5 e5 e5                                      ....
  9979 ms  0x1ae8 PR_Close()
  9979 ms  0x1ae8 fd:0x7f39969ff160
  9979 ms     | 0x1ae8 PK11_Encrypt()
  9979 ms     | 0x1ae8 symkey:0x7f39920cd900
  9982 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9982 ms  0x1ae8 privk:0x7f3997064820::7f3997064820  70 1e 8e 96                                      p...
  9982 ms  0x1ae8 privk:0x7f3997064820::7f3997064820  e5 e5 e5 e5                                      ....
  9982 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9982 ms  0x1ae8 privk:0x7f3996cec820::7f3996cec820  50 8b 85 96                                      P...
  9982 ms  0x1ae8 privk:0x7f3996cec820::7f3996cec820  e5 e5 e5 e5                                      ....
  9983 ms  0x1ae8 PK11_Encrypt()
  9983 ms  0x1ae8 symkey:0x7f39920cdc80
  9991 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9991 ms  0x1ae8 privk:0x7f3997069020::7f3997069020  10 f5 91 96                                      ....
  9991 ms  0x1ae8 privk:0x7f3997069020::7f3997069020  e5 e5 e5 e5                                      ....
  9992 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9992 ms  0x1ae8 privk:0x7f3997067020::7f3997067020  c0 04 91 96                                      ....
  9992 ms  0x1ae8 privk:0x7f3997067020::7f3997067020  e5 e5 e5 e5                                      ....
  9992 ms  0x1ae8 PR_Close()
  9992 ms  0x1ae8 fd:0x7f39969c6df0
  9992 ms     | 0x1ae8 PK11_Encrypt()
  9992 ms     | 0x1ae8 symkey:0x7f39920ce580
  9997 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9997 ms  0x1ae8 privk:0x7f3997070020::7f3997070020  90 52 9f 96                                      .R..
  9997 ms  0x1ae8 privk:0x7f3997070020::7f3997070020  e5 e5 e5 e5                                      ....
  9998 ms  0x1ae8 SECKEY_DestroyPrivateKey()
  9998 ms  0x1ae8 privk:0x7f399706e020::7f399706e020  b0 a0 92 96                                      ....
  9998 ms  0x1ae8 privk:0x7f399706e020::7f399706e020  e5 e5 e5 e5                                      ....
  9998 ms  0x1ae8 PR_Close()
  9998 ms  0x1ae8 fd:0x7f39965ea910
  9998 ms     | 0x1ae8 PK11_Encrypt()
  9998 ms     | 0x1ae8 symkey:0x7f39920cec80
 10001 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10001 ms  0x1ae8 privk:0x7f3997074820::7f3997074820  b0 85 9f 96                                      ....
 10001 ms  0x1ae8 privk:0x7f3997074820::7f3997074820  e5 e5 e5 e5                                      ....
 10001 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10001 ms  0x1ae8 privk:0x7f3997072820::7f3997072820  a0 5b 9f 96                                      .[..
 10001 ms  0x1ae8 privk:0x7f3997072820::7f3997072820  e5 e5 e5 e5                                      ....
 10002 ms  0x1ae8 PR_Close()
 10002 ms  0x1ae8 fd:0x7f399653efa0
 10002 ms     | 0x1ae8 PK11_Encrypt()
 10002 ms     | 0x1ae8 symkey:0x7f39920db800
 10004 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10004 ms  0x1ae8 privk:0x7f399707d820::7f399707d820  20 14 bf 96                                       ...
 10004 ms  0x1ae8 privk:0x7f399707d820::7f399707d820  e5 e5 e5 e5                                      ....
 10004 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10004 ms  0x1ae8 privk:0x7f399707b820::7f399707b820  40 12 bf 96                                      @...
 10004 ms  0x1ae8 privk:0x7f399707b820::7f399707b820  e5 e5 e5 e5                                      ....
 10005 ms  0x1ae8 PR_Close()
 10005 ms  0x1ae8 fd:0x7f399289dca0
 10005 ms     | 0x1ae8 PK11_Encrypt()
 10005 ms     | 0x1ae8 symkey:0x7f39920dcf00
 10031 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10031 ms  0x1ae8 privk:0x7f3997079020::7f3997079020  00 11 bf 96                                      ....
 10039 ms  0x1ae8 privk:0x7f3997079020::7f3997079020  e5 e5 e5 e5                                      ....
 10039 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10039 ms  0x1ae8 privk:0x7f3997077020::7f3997077020  a0 71 b6 96                                      .q..
 10039 ms  0x1ae8 privk:0x7f3997077020::7f3997077020  e5 e5 e5 e5                                      ....
 10039 ms  0x1ae8 PK11_Encrypt()
 10039 ms  0x1ae8 symkey:0x7f39920dc800
 10040 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10040 ms  0x1ae8 privk:0x7f39998fd820::7f39998fd820  30 1d e1 96                                      0...
 10040 ms  0x1ae8 privk:0x7f39998fd820::7f39998fd820  e5 e5 e5 e5                                      ....
 10040 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10040 ms  0x1ae8 privk:0x7f39998f9020::7f39998f9020  70 1e c9 96                                      p...
 10040 ms  0x1ae8 privk:0x7f39998f9020::7f39998f9020  e5 e5 e5 e5                                      ....
 10040 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10040 ms  0x1ae8 privk:0x7f3997099820::7f3997099820  d0 18 bf 96                                      ....
 10041 ms  0x1ae8 privk:0x7f3997099820::7f3997099820  e5 e5 e5 e5                                      ....
 10041 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10041 ms  0x1ae8 privk:0x7f3997080020::7f3997080020  60 15 bf 96                                      `...
 10041 ms  0x1ae8 privk:0x7f3997080020::7f3997080020  e5 e5 e5 e5                                      ....
 10041 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10041 ms  0x1ae8 privk:0x7f39970aa820::7f39970aa820  b0 85 c8 96                                      ....
 10041 ms  0x1ae8 privk:0x7f39970aa820::7f39970aa820  e5 e5 e5 e5                                      ....
 10041 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10041 ms  0x1ae8 privk:0x7f39970a3820::7f39970a3820  50 81 c8 96                                      P...
 10041 ms  0x1ae8 privk:0x7f39970a3820::7f39970a3820  e5 e5 e5 e5                                      ....
 10041 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10041 ms  0x1ae8 privk:0x7f39970b2020::7f39970b2020  80 8d c8 96                                      ....
 10042 ms  0x1ae8 privk:0x7f39970b2020::7f39970b2020  e5 e5 e5 e5                                      ....
 10042 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10042 ms  0x1ae8 privk:0x7f39970ad820::7f39970ad820  30 88 c8 96                                      0...
 10042 ms  0x1ae8 privk:0x7f39970ad820::7f39970ad820  e5 e5 e5 e5                                      ....
 10042 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10042 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  a0 16 c9 96                                      ....
 10042 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  e5 e5 e5 e5                                      ....
 10042 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10042 ms  0x1ae8 privk:0x7f39970b4820::7f39970b4820  b0 8f c8 96                                      ....
 10042 ms  0x1ae8 privk:0x7f39970b4820::7f39970b4820  e5 e5 e5 e5                                      ....
 10043 ms  0x1ae8 PR_Close()
 10043 ms  0x1ae8 fd:0x7f397f6e0cd0
 10043 ms     | 0x1ae8 PK11_Encrypt()
 10043 ms     | 0x1ae8 symkey:0x7f39928c3600
           /* TID 0x1af0 */
 10056 ms  0x1af0 PR_Close()
 10056 ms  0x1af0 fd:0x7f39905f7250
 10061 ms  0x1af0 PR_Close()
 10061 ms  0x1af0 fd:0x7f397f7273a0
           /* TID 0x1ae8 */
 10071 ms  0x1ae8 PR_Close()
 10071 ms  0x1ae8 fd:0x7f39905f7670
 10071 ms     | 0x1ae8 PK11_Encrypt()
 10071 ms     | 0x1ae8 symkey:0x7f39928c3100
 10072 ms  0x1ae8 PR_Close()
 10072 ms  0x1ae8 fd:0x7f39920ea340
 10072 ms     | 0x1ae8 PK11_Encrypt()
 10072 ms     | 0x1ae8 symkey:0x7f3992828300
 10072 ms  0x1ae8 PR_Close()
 10072 ms  0x1ae8 fd:0x7f39920f0c10
 10072 ms     | 0x1ae8 PK11_Encrypt()
 10072 ms     | 0x1ae8 symkey:0x7f39923e5600
 10072 ms  0x1ae8 PR_Close()
 10072 ms  0x1ae8 fd:0x7f3990338cd0
 10072 ms     | 0x1ae8 PK11_Encrypt()
 10072 ms     | 0x1ae8 symkey:0x7f39928c3b00
 10073 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10073 ms  0x1ae8 privk:0x7f399a6ad020::7f399a6ad020  70 2e e5 96                                      p...
 10073 ms  0x1ae8 privk:0x7f399a6ad020::7f399a6ad020  e5 e5 e5 e5                                      ....
 10077 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10077 ms  0x1ae8 privk:0x7f399a6a8820::7f399a6a8820  f0 2b e5 96                                      .+..
 10077 ms  0x1ae8 privk:0x7f399a6a8820::7f399a6a8820  e5 e5 e5 e5                                      ....
 10077 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10077 ms  0x1ae8 privk:0x7f399aaeb820::7f399aaeb820  60 60 eb 96                                      ``..
 10078 ms  0x1ae8 privk:0x7f399aaeb820::7f399aaeb820  e5 e5 e5 e5                                      ....
 10078 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10078 ms  0x1ae8 privk:0x7f399aae8020::7f399aae8020  20 3e ea 96                                       >..
 10078 ms  0x1ae8 privk:0x7f399aae8020::7f399aae8020  e5 e5 e5 e5                                      ....
 10078 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10078 ms  0x1ae8 privk:0x7f399aad9820::7f399aad9820  f0 86 e7 96                                      ....
 10078 ms  0x1ae8 privk:0x7f399aad9820::7f399aad9820  e5 e5 e5 e5                                      ....
 10078 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10078 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  e0 dc e5 96                                      ....
 10078 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  e5 e5 e5 e5                                      ....
 10078 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10078 ms  0x1ae8 privk:0x7f399a6a2820::7f399a6a2820  10 2a e5 96                                      .*..
 10078 ms  0x1ae8 privk:0x7f399a6a2820::7f399a6a2820  e5 e5 e5 e5                                      ....
 10078 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10078 ms  0x1ae8 privk:0x7f399a69f820::7f399a69f820  d0 33 e3 96                                      .3..
 10078 ms  0x1ae8 privk:0x7f399a69f820::7f399a69f820  e5 e5 e5 e5                                      ....
 10079 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10079 ms  0x1ae8 privk:0x7f3999917820::7f3999917820  90 32 e3 96                                      .2..
 10079 ms  0x1ae8 privk:0x7f3999917820::7f3999917820  e5 e5 e5 e5                                      ....
 10079 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 10079 ms  0x1ae8 privk:0x7f3999914020::7f3999914020  70 1e e1 96                                      p...
 10079 ms  0x1ae8 privk:0x7f3999914020::7f3999914020  e5 e5 e5 e5                                      ....
 10079 ms  0x1ae8 PR_Close()
 10079 ms  0x1ae8 fd:0x7f397f727670
 10079 ms     | 0x1ae8 PK11_Encrypt()
 10079 ms     | 0x1ae8 symkey:0x7f39928c3f00
 10079 ms  0x1ae8 PR_Close()
 10079 ms  0x1ae8 fd:0x7f39920f0820
 10079 ms     | 0x1ae8 PK11_Encrypt()
 10079 ms     | 0x1ae8 symkey:0x7f39928fe300
 10080 ms  0x1ae8 PR_Close()
 10080 ms  0x1ae8 fd:0x7f39969fdd30
 10080 ms     | 0x1ae8 PK11_Encrypt()
 10080 ms     | 0x1ae8 symkey:0x7f3992d7ad00
 10080 ms  0x1ae8 PR_Close()
 10080 ms  0x1ae8 fd:0x7f39969ff040
 10080 ms     | 0x1ae8 PK11_Encrypt()
 10080 ms     | 0x1ae8 symkey:0x7f39928fe800
 10080 ms  0x1ae8 PR_Close()
 10080 ms  0x1ae8 fd:0x7f39969ff280
 10080 ms     | 0x1ae8 PK11_Encrypt()
 10080 ms     | 0x1ae8 symkey:0x7f3992dcd180
           /* TID 0x1af0 */
 10098 ms  0x1af0 PR_Close()
 10098 ms  0x1af0 fd:0x7f397f6e0cd0
 10102 ms  0x1af0 PR_Close()
 10102 ms  0x1af0 fd:0x7f397f6e0cd0
 10107 ms  0x1af0 PR_Close()
 10107 ms  0x1af0 fd:0x7f397f6e0cd0
 10109 ms  0x1af0 PR_Close()
 10109 ms  0x1af0 fd:0x7f397f6e0cd0
 10111 ms  0x1af0 PR_Close()
 10111 ms  0x1af0 fd:0x7f397f6e0cd0
 10157 ms  0x1af0 PR_Close()
 10157 ms  0x1af0 fd:0x7f397f6e0cd0
 10160 ms  0x1af0 PR_Close()
 10160 ms  0x1af0 fd:0x7f397f6e0cd0
 10163 ms  0x1af0 PR_Close()
 10163 ms  0x1af0 fd:0x7f397f727670
 10246 ms  0x1af0 PR_Close()
 10246 ms  0x1af0 fd:0x7f39904cc2b0
 10292 ms  0x1af0 PR_Close()
 10292 ms  0x1af0 fd:0x7f39905c2370
 10364 ms  0x1af0 PR_Close()
 10364 ms  0x1af0 fd:0x7f39905c2370
 10377 ms  0x1af0 PR_Close()
 10377 ms  0x1af0 fd:0x7f39905c2370
 10382 ms  0x1af0 PR_Close()
 10382 ms  0x1af0 fd:0x7f39905c2370
 10385 ms  0x1af0 PR_Close()
 10385 ms  0x1af0 fd:0x7f39905c2370
 10427 ms  0x1af0 PR_Close()
 10427 ms  0x1af0 fd:0x7f39905c23a0
 10427 ms  0x1af0 PR_Close()
 10427 ms  0x1af0 fd:0x7f39905f74f0
           /* TID 0x1ae8 */
 10429 ms  0x1ae8 SSL_ImportFD()
 10429 ms  0x1ae8 ret:0x7f39905f7130
 10429 ms  0x1ae8 SSL_AuthCertificateHook()
 10429 ms  0x1ae8 fd:0x7f39905f7130
 10429 ms  0x1ae8 ret:0x0
 10429 ms  0x1ae8 PR_Connect()
 10429 ms  0x1ae8 fd:0x7f39905f7130
           /* TID 0x1af0 */
 10561 ms  0x1af0 PR_Close()
 10561 ms  0x1af0 fd:0x7f39905f7520
 10563 ms  0x1af0 PR_Close()
 10563 ms  0x1af0 fd:0x7f39905f7520
 10641 ms  0x1af0 PR_Close()
 10641 ms  0x1af0 fd:0x7f3990583400
 10643 ms  0x1af0 PR_Close()
 10643 ms  0x1af0 fd:0x7f3990583400
 10645 ms  0x1af0 PR_Close()
 10645 ms  0x1af0 fd:0x7f3990583400
 10649 ms  0x1af0 PR_Close()
 10649 ms  0x1af0 fd:0x7f3990583400
           /* TID 0x1ae8 */
 10680 ms  0x1ae8 SSL_ImportFD()
 10680 ms  0x1ae8 ret:0x7f3991a8b730
 10680 ms  0x1ae8 SSL_AuthCertificateHook()
 10680 ms  0x1ae8 fd:0x7f3991a8b730
 10680 ms  0x1ae8 ret:0x0
 10680 ms  0x1ae8 PR_Connect()
 10680 ms  0x1ae8 fd:0x7f3991a8b730
 10681 ms  0x1ae8 PK11_Encrypt()
 10681 ms  0x1ae8 symkey:0x7f39920cdc80
 10685 ms  0x1ae8 PK11_Encrypt()
 10685 ms  0x1ae8 symkey:0x7f39920dc800
 10686 ms  0x1ae8 PK11_Encrypt()
 10686 ms  0x1ae8 symkey:0x7f39920dc800
 10687 ms  0x1ae8 PK11_Encrypt()
 10687 ms  0x1ae8 symkey:0x7f39920dc800
 10689 ms  0x1ae8 PK11_Encrypt()
 10689 ms  0x1ae8 symkey:0x7f39920dc800
           /* TID 0x1af0 */
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f397f7276a0
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f39829973a0
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f39905588b0
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f39920f0d30
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f399289d460
 10697 ms  0x1af0 PR_Close()
 10697 ms  0x1af0 fd:0x7f397f7276a0
           /* TID 0x1ae8 */
 10726 ms  0x1ae8 PK11_Encrypt()
 10726 ms  0x1ae8 symkey:0x7f39920cdc80
 10727 ms  0x1ae8 PK11_Encrypt()
 10727 ms  0x1ae8 symkey:0x7f39920cdc80
 10729 ms  0x1ae8 PK11_Encrypt()
 10729 ms  0x1ae8 symkey:0x7f39920cdc80
 10760 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 10760 ms  0x1ae8 cx:0x7f397f70af88
 10761 ms     | 0x1ae8 EC_ValidatePublicKey()
 10761 ms     | 0x1ae8 ret:0x0
 10761 ms  0x1ae8 ret:0x7f39969a1820::7f39969a1820  c0 5e 65 93                                      .^e.
 10761 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 10761 ms  0x1ae8 cx:0x7f397f70af88
 10761 ms     | 0x1ae8 EC_ValidatePublicKey()
 10763 ms     | 0x1ae8 ret:0x0
 10763 ms  0x1ae8 ret:0x7f3996cdf820::7f3996cdf820  e0 e2 6a 93                                      ..j.
           /* TID 0x1af0 */
 10772 ms  0x1af0 PR_Close()
 10772 ms  0x1af0 fd:0x7f39905c2bb0
 10772 ms  0x1af0 PR_Close()
 10772 ms  0x1af0 fd:0x7f39905c2bb0
           /* TID 0x1ae8 */
 10772 ms  0x1ae8 PR_Close()
 10772 ms  0x1ae8 fd:0x7f397f6e0be0
 10773 ms     | 0x1ae8 PK11_Encrypt()
 10773 ms     | 0x1ae8 symkey:0x7f397f6e2180
           /* TID 0x1af0 */
 10776 ms  0x1af0 PR_Close()
 10776 ms  0x1af0 fd:0x7f397f6e08e0
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f3991a8b550
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f39920ea310
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f39920f03a0
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f39920f0d30
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f399289d490
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f399289deb0
 10830 ms  0x1af0 PR_Close()
 10830 ms  0x1af0 fd:0x7f399363ff10
 10831 ms  0x1af0 PR_Close()
 10831 ms  0x1af0 fd:0x7f39904cc220
 10832 ms  0x1af0 PR_Close()
 10832 ms  0x1af0 fd:0x7f3990338e20
 10833 ms  0x1af0 PR_Close()
 10833 ms  0x1af0 fd:0x7f3990338e20
 10834 ms  0x1af0 PR_Close()
 10834 ms  0x1af0 fd:0x7f3990338e20
           /* TID 0x1ae8 */
 11011 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11011 ms  0x1ae8 cx:0x7f397f70b468
 11013 ms     | 0x1ae8 EC_ValidatePublicKey()
 11013 ms     | 0x1ae8 ret:0x0
 11013 ms  0x1ae8 ret:0x7f3996ce2820::7f3996ce2820  30 e3 af 91                                      0...
 11013 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11013 ms  0x1ae8 cx:0x7f397f70b468
 11016 ms     | 0x1ae8 EC_ValidatePublicKey()
 11021 ms     | 0x1ae8 ret:0x0
 11021 ms  0x1ae8 ret:0x7f3996ce4820::7f3996ce4820  60 bf 04 92                                      `...
 11106 ms  0x1ae8 SSL_AuthCertificateComplete()
 11106 ms  0x1ae8 fd:0x7f39905f7130
 11106 ms  0x1ae8 err:0x0
 11136 ms  SECKEY_ECParamsToKeySize()
 11136 ms  0x1ae8 ret:0x100
 11136 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11136 ms  0x1ae8 cx:0x7f397f70af88
 11138 ms     | 0x1ae8 EC_ValidatePublicKey()
 11141 ms     | 0x1ae8 ret:0x0
 11141 ms  0x1ae8 ret:0x7f39928e9820::7f39928e9820  40 b7 05 92                                      @...
 11141 ms  0x1ae8 PK11_PubDeriveWithKDF()
 11141 ms  0x1ae8 seckey:0x7f39928e9820
 11141 ms     | 0x1ae8 EC_ValidatePublicKey()
 11144 ms     | 0x1ae8 ret:0x0
 11154 ms  0x1ae8 ret:0x7f397f6e1e80
 11155 ms  0x1ae8 PK11_DeriveWithFlags()
 11155 ms  0x1ae8 basekey:0x7f397f6e1e80
 11155 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11155 ms  0x1ae8 ret:0x7f397f6e1900
 11155 ms  0x1ae8 PK11_Derive()
 11155 ms  0x1ae8 basekey:0x7f397f6e1900
 11155 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11155 ms  0x1ae8 ret:0x7f3992d7b200
 11155 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11155 ms  0x1ae8 privk:0x7f39928e9820::7f39928e9820  40 b7 05 92                                      @...
 11155 ms  0x1ae8 privk:0x7f39928e9820::7f39928e9820  e5 e5 e5 e5                                      ....
 11155 ms  0x1ae8 PK11_Encrypt()
 11155 ms  0x1ae8 symkey:0x7f397f6e1f00
 11156 ms  0x1ae8 PK11_Encrypt()
 11156 ms  0x1ae8 symkey:0x7f397f6e1f00
           /* TID 0x1af0 */
 11163 ms  0x1af0 PR_Close()
 11163 ms  0x1af0 fd:0x7f397f727940
           /* TID 0x1ae8 */
 11204 ms  0x1ae8 PK11_Encrypt()
 11204 ms  0x1ae8 symkey:0x7f39920cdc80
 11221 ms  0x1ae8 PK11_Encrypt()
 11221 ms  0x1ae8 symkey:0x7f397f6e2400
 11222 ms  0x1ae8 PK11_Encrypt()
 11222 ms  0x1ae8 symkey:0x7f39920dc800
 11224 ms  0x1ae8 PK11_Encrypt()
 11224 ms  0x1ae8 symkey:0x7f39920dc800
 11225 ms  0x1ae8 PK11_Encrypt()
 11225 ms  0x1ae8 symkey:0x7f39920cdc80
 11226 ms  0x1ae8 PK11_Encrypt()
 11226 ms  0x1ae8 symkey:0x7f39920cdc80
 11231 ms  0x1ae8 SSL_ImportFD()
 11231 ms  0x1ae8 ret:0x7f39920f0c10
 11231 ms  0x1ae8 SSL_AuthCertificateHook()
 11231 ms  0x1ae8 fd:0x7f39920f0c10
 11231 ms  0x1ae8 ret:0x0
 11231 ms  0x1ae8 PR_Connect()
 11231 ms  0x1ae8 fd:0x7f39920f0c10
 11237 ms  0x1ae8 SSL_ImportFD()
 11237 ms  0x1ae8 ret:0x7f39923e12e0
 11237 ms  0x1ae8 SSL_AuthCertificateHook()
 11237 ms  0x1ae8 fd:0x7f39923e12e0
 11237 ms  0x1ae8 ret:0x0
 11237 ms  0x1ae8 PR_Connect()
 11237 ms  0x1ae8 fd:0x7f39923e12e0
 11251 ms  0x1ae8 SSL_ImportFD()
 11251 ms  0x1ae8 ret:0x7f3991a96e50
 11251 ms  0x1ae8 SSL_AuthCertificateHook()
 11251 ms  0x1ae8 fd:0x7f3991a96e50
 11251 ms  0x1ae8 ret:0x0
 11251 ms  0x1ae8 PR_Connect()
 11251 ms  0x1ae8 fd:0x7f3991a96e50
 11355 ms  0x1ae8 SSL_AuthCertificateComplete()
 11355 ms  0x1ae8 fd:0x7f3991a8b730
 11355 ms  0x1ae8 err:0x0
 11388 ms  SECKEY_ECParamsToKeySize()
 11388 ms  0x1ae8 ret:0x100
 11388 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11388 ms  0x1ae8 cx:0x7f397f70b468
 11389 ms     | 0x1ae8 EC_ValidatePublicKey()
 11397 ms     | 0x1ae8 ret:0x0
 11397 ms  0x1ae8 ret:0x7f397f6b0820::7f397f6b0820  d0 fd 3a 90                                      ..:.
 11397 ms  0x1ae8 PK11_PubDeriveWithKDF()
 11397 ms  0x1ae8 seckey:0x7f397f6b0820
 11397 ms     | 0x1ae8 EC_ValidatePublicKey()
 11401 ms     | 0x1ae8 ret:0x0
 11403 ms  0x1ae8 ret:0x7f397f6e1e80
 11403 ms  0x1ae8 PK11_DeriveWithFlags()
 11403 ms  0x1ae8 basekey:0x7f397f6e1e80
 11403 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11403 ms  0x1ae8 ret:0x7f3992d7b180
 11403 ms  0x1ae8 PK11_Derive()
 11403 ms  0x1ae8 basekey:0x7f3992d7b180
 11403 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11403 ms  0x1ae8 ret:0x7f39928fe600
 11403 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11403 ms  0x1ae8 privk:0x7f397f6b0820::7f397f6b0820  d0 fd 3a 90                                      ..:.
 11404 ms  0x1ae8 privk:0x7f397f6b0820::7f397f6b0820  e5 e5 e5 e5                                      ....
 11404 ms  0x1ae8 PK11_Encrypt()
 11404 ms  0x1ae8 symkey:0x7f3992d7bc00
 11481 ms  0x1ae8 SSL_ImportFD()
 11482 ms  0x1ae8 ret:0x7f3990338fa0
 11482 ms  0x1ae8 SSL_AuthCertificateHook()
 11482 ms  0x1ae8 fd:0x7f3990338fa0
 11482 ms  0x1ae8 ret:0x0
 11482 ms  0x1ae8 PR_Connect()
 11482 ms  0x1ae8 fd:0x7f3990338fa0
 11488 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11488 ms  0x1ae8 privk:0x7f3996cdf820::7f3996cdf820  e0 e2 6a 93                                      ..j.
 11488 ms  0x1ae8 privk:0x7f3996cdf820::7f3996cdf820  e5 e5 e5 e5                                      ....
 11488 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11488 ms  0x1ae8 privk:0x7f39969a1820::7f39969a1820  c0 5e 65 93                                      .^e.
 11489 ms  0x1ae8 privk:0x7f39969a1820::7f39969a1820  e5 e5 e5 e5                                      ....
 11489 ms  0x1ae8 SSL_ImportFD()
 11489 ms  0x1ae8 ret:0x7f3991a96f70
 11490 ms  0x1ae8 SSL_AuthCertificateHook()
 11490 ms  0x1ae8 fd:0x7f3991a96f70
 11490 ms  0x1ae8 ret:0x0
 11490 ms  0x1ae8 PR_Connect()
 11490 ms  0x1ae8 fd:0x7f3991a96f70
 11507 ms  0x1ae8 SSL_ImportFD()
 11507 ms  0x1ae8 ret:0x7f3991a8b280
 11507 ms  0x1ae8 SSL_AuthCertificateHook()
 11507 ms  0x1ae8 fd:0x7f3991a8b280
 11507 ms  0x1ae8 ret:0x0
 11507 ms  0x1ae8 PR_Connect()
 11507 ms  0x1ae8 fd:0x7f3991a8b280
           /* TID 0x1af0 */
 11556 ms  0x1af0 PR_Close()
 11556 ms  0x1af0 fd:0x7f397f6e08e0
 11557 ms  0x1af0 PR_Close()
 11557 ms  0x1af0 fd:0x7f397f6e08e0
 11572 ms  0x1af0 PR_Close()
 11572 ms  0x1af0 fd:0x7f397f6e08e0
 11573 ms  0x1af0 PR_Close()
 11573 ms  0x1af0 fd:0x7f397f6e08e0
           /* TID 0x1ae8 */
 11576 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11576 ms  0x1ae8 cx:0x7f397f70b948
 11577 ms     | 0x1ae8 EC_ValidatePublicKey()
 11577 ms     | 0x1ae8 ret:0x0
 11577 ms  0x1ae8 ret:0x7f397f6af820::7f397f6af820  c0 f4 3a 90                                      ..:.
 11577 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11577 ms  0x1ae8 cx:0x7f397f70b948
 11578 ms     | 0x1ae8 EC_ValidatePublicKey()
 11580 ms     | 0x1ae8 ret:0x0
 11580 ms  0x1ae8 ret:0x7f397f6b3820::7f397f6b3820  00 fb 3a 90                                      ..:.
 11593 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11593 ms  0x1ae8 cx:0x7f397f70b7a8
 11594 ms     | 0x1ae8 EC_ValidatePublicKey()
 11594 ms     | 0x1ae8 ret:0x0
 11594 ms  0x1ae8 ret:0x7f3982953020::7f3982953020  b0 1a 5d 90                                      ..].
 11594 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11594 ms  0x1ae8 cx:0x7f397f70b7a8
 11594 ms     | 0x1ae8 EC_ValidatePublicKey()
 11598 ms     | 0x1ae8 ret:0x0
 11599 ms  0x1ae8 ret:0x7f3990318820::7f3990318820  70 e4 5e 90                                      p.^.
 11605 ms  0x1ae8 SSL_ImportFD()
 11605 ms  0x1ae8 ret:0x7f39905f7430
 11605 ms  0x1ae8 SSL_AuthCertificateHook()
 11605 ms  0x1ae8 fd:0x7f39905f7430
 11605 ms  0x1ae8 ret:0x0
 11605 ms  0x1ae8 PR_Connect()
 11605 ms  0x1ae8 fd:0x7f39905f7430
           /* TID 0x1af0 */
 11607 ms  0x1af0 PR_Close()
 11607 ms  0x1af0 fd:0x7f39829974c0
 11608 ms  0x1af0 PR_Close()
 11608 ms  0x1af0 fd:0x7f39829974c0
           /* TID 0x1ae8 */
 11609 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11609 ms  0x1ae8 cx:0x7f397f70bae8
 11610 ms     | 0x1ae8 EC_ValidatePublicKey()
 11610 ms     | 0x1ae8 ret:0x0
 11610 ms  0x1ae8 ret:0x7f3990866020::7f3990866020  b0 bf ab 91                                      ....
 11610 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11610 ms  0x1ae8 cx:0x7f397f70bae8
 11610 ms     | 0x1ae8 EC_ValidatePublicKey()
 11612 ms     | 0x1ae8 ret:0x0
 11612 ms  0x1ae8 ret:0x7f3990869020::7f3990869020  c0 b4 05 92                                      ....
 11616 ms  0x1ae8 SSL_ImportFD()
 11616 ms  0x1ae8 ret:0x7f39920f0b20
 11616 ms  0x1ae8 SSL_AuthCertificateHook()
 11616 ms  0x1ae8 fd:0x7f39920f0b20
 11616 ms  0x1ae8 ret:0x0
 11616 ms  0x1ae8 PR_Connect()
 11616 ms  0x1ae8 fd:0x7f39920f0b20
 11649 ms  0x1ae8 SSL_ImportFD()
 11649 ms  0x1ae8 ret:0x7f399289d880
 11649 ms  0x1ae8 SSL_AuthCertificateHook()
 11649 ms  0x1ae8 fd:0x7f399289d880
 11649 ms  0x1ae8 ret:0x0
 11649 ms  0x1ae8 PR_Connect()
 11649 ms  0x1ae8 fd:0x7f399289d880
 11673 ms  0x1ae8 PK11_Encrypt()
 11673 ms  0x1ae8 symkey:0x7f397f6e2400
           /* TID 0x1af0 */
 11674 ms  0x1af0 PR_Close()
 11674 ms  0x1af0 fd:0x7f3992039ca0
           /* TID 0x1ae8 */
 11677 ms  0x1ae8 SSL_ImportFD()
 11677 ms  0x1ae8 ret:0x7f39920f01f0
 11677 ms  0x1ae8 SSL_AuthCertificateHook()
 11677 ms  0x1ae8 fd:0x7f39920f01f0
 11677 ms  0x1ae8 ret:0x0
 11677 ms  0x1ae8 PR_Connect()
 11677 ms  0x1ae8 fd:0x7f39920f01f0
 11687 ms  0x1ae8 PK11_Encrypt()
 11687 ms  0x1ae8 symkey:0x7f39920dc800
 11688 ms  0x1ae8 PK11_Encrypt()
 11688 ms  0x1ae8 symkey:0x7f39920dc800
 11735 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11735 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  60 bf 04 92                                      `...
 11735 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  e5 e5 e5 e5                                      ....
 11735 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11735 ms  0x1ae8 privk:0x7f3996ce2820::7f3996ce2820  30 e3 af 91                                      0...
 11735 ms  0x1ae8 privk:0x7f3996ce2820::7f3996ce2820  e5 e5 e5 e5                                      ....
           /* TID 0x1af0 */
 11771 ms  0x1af0 PR_Close()
 11771 ms  0x1af0 fd:0x7f3990583d90
           /* TID 0x1ae8 */
 11800 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11800 ms  0x1ae8 cx:0x7f397f70c308
 11801 ms     | 0x1ae8 EC_ValidatePublicKey()
 11801 ms     | 0x1ae8 ret:0x0
 11801 ms  0x1ae8 ret:0x7f39928dd020::7f39928dd020  00 b6 05 92                                      ....
 11801 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11801 ms  0x1ae8 cx:0x7f397f70c308
 11802 ms     | 0x1ae8 EC_ValidatePublicKey()
 11803 ms     | 0x1ae8 ret:0x0
 11803 ms  0x1ae8 ret:0x7f39950a2820::7f39950a2820  50 96 3d 92                                      P.=.
 11833 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11833 ms  0x1ae8 cx:0x7f397f70bc88
 11834 ms     | 0x1ae8 EC_ValidatePublicKey()
 11834 ms     | 0x1ae8 ret:0x0
 11834 ms  0x1ae8 ret:0x7f399657a820::7f399657a820  90 97 3d 92                                      ..=.
 11834 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11834 ms  0x1ae8 cx:0x7f397f70bc88
 11835 ms     | 0x1ae8 EC_ValidatePublicKey()
 11841 ms     | 0x1ae8 ret:0x0
 11841 ms  0x1ae8 ret:0x7f399681f820::7f399681f820  f0 9b 3d 92                                      ..=.
 11842 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11842 ms  0x1ae8 cx:0x7f397f70be28
 11843 ms     | 0x1ae8 EC_ValidatePublicKey()
 11843 ms     | 0x1ae8 ret:0x0
 11843 ms  0x1ae8 ret:0x7f3996cdd820::7f3996cdd820  00 41 8c 92                                      .A..
 11843 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11843 ms  0x1ae8 cx:0x7f397f70be28
 11844 ms     | 0x1ae8 EC_ValidatePublicKey()
 11847 ms     | 0x1ae8 ret:0x0
 11847 ms  0x1ae8 ret:0x7f3996ce1020::7f3996ce1020  e0 42 8c 92                                      .B..
 11855 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11855 ms  0x1ae8 cx:0x7f397f70bfc8
 11856 ms     | 0x1ae8 EC_ValidatePublicKey()
 11856 ms     | 0x1ae8 ret:0x0
 11856 ms  0x1ae8 ret:0x7f3996ce4020::7f3996ce4020  20 44 8c 92                                       D..
 11857 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11857 ms  0x1ae8 cx:0x7f397f70bfc8
 11858 ms     | 0x1ae8 EC_ValidatePublicKey()
 11861 ms     | 0x1ae8 ret:0x0
 11861 ms  0x1ae8 ret:0x7f3996cec820::7f3996cec820  60 4a 8c 92                                      `J..
 11865 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11865 ms  0x1ae8 cx:0x7f397f70c988
 11866 ms     | 0x1ae8 EC_ValidatePublicKey()
 11866 ms     | 0x1ae8 ret:0x0
 11866 ms  0x1ae8 ret:0x7f3997066820::7f3997066820  20 54 65 93                                       Te.
 11866 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11866 ms  0x1ae8 cx:0x7f397f70c988
 11867 ms     | 0x1ae8 EC_ValidatePublicKey()
 11870 ms     | 0x1ae8 ret:0x0
 11870 ms  0x1ae8 ret:0x7f3997068820::7f3997068820  f0 e1 6a 93                                      ..j.
 11874 ms  0x1ae8 SSL_ImportFD()
 11874 ms  0x1ae8 ret:0x7f39959ff2b0
 11874 ms  0x1ae8 SSL_AuthCertificateHook()
 11874 ms  0x1ae8 fd:0x7f39959ff2b0
 11875 ms  0x1ae8 ret:0x0
 11875 ms  0x1ae8 PR_Connect()
 11875 ms  0x1ae8 fd:0x7f39959ff2b0
 11899 ms  0x1ae8 SSL_ImportFD()
 11900 ms  0x1ae8 ret:0x7f3993690b50
 11900 ms  0x1ae8 SSL_AuthCertificateHook()
 11900 ms  0x1ae8 fd:0x7f3993690b50
 11900 ms  0x1ae8 ret:0x0
 11900 ms  0x1ae8 PR_Connect()
 11900 ms  0x1ae8 fd:0x7f3993690b50
 11918 ms  0x1ae8 PK11_Derive()
 11918 ms  0x1ae8 basekey:0x7f39928fe580
 11918 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11918 ms  0x1ae8 ret:0x7f397f6e1e80
 11918 ms  0x1ae8 PK11_Encrypt()
 11918 ms  0x1ae8 symkey:0x7f39928fe680
 11920 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11920 ms  0x1ae8 privk:0x7f397f6b3820::7f397f6b3820  00 fb 3a 90                                      ..:.
 11920 ms  0x1ae8 privk:0x7f397f6b3820::7f397f6b3820  e5 e5 e5 e5                                      ....
 11921 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11921 ms  0x1ae8 privk:0x7f397f6af820::7f397f6af820  c0 f4 3a 90                                      ..:.
 11921 ms  0x1ae8 privk:0x7f397f6af820::7f397f6af820  e5 e5 e5 e5                                      ....
 11921 ms  0x1ae8 PK11_Encrypt()
 11921 ms  0x1ae8 symkey:0x7f39928fe680
 11943 ms  0x1ae8 PK11_Derive()
 11943 ms  0x1ae8 basekey:0x7f3992d7a500
 11943 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11943 ms  0x1ae8 ret:0x7f3992d7ab80
 11943 ms  0x1ae8 PK11_Encrypt()
 11943 ms  0x1ae8 symkey:0x7f3992d7ac00
 11945 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11945 ms  0x1ae8 privk:0x7f3990318820::7f3990318820  70 e4 5e 90                                      p.^.
 11945 ms  0x1ae8 privk:0x7f3990318820::7f3990318820  e5 e5 e5 e5                                      ....
 11945 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11945 ms  0x1ae8 privk:0x7f3982953020::7f3982953020  b0 1a 5d 90                                      ..].
 11945 ms  0x1ae8 privk:0x7f3982953020::7f3982953020  e5 e5 e5 e5                                      ....
 11945 ms  0x1ae8 PK11_Encrypt()
 11945 ms  0x1ae8 symkey:0x7f3992d7ac00
 11948 ms  0x1ae8 PK11_Derive()
 11948 ms  0x1ae8 basekey:0x7f39928fe100
 11948 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 11948 ms  0x1ae8 ret:0x7f39928fe180
 11948 ms  0x1ae8 PK11_Encrypt()
 11948 ms  0x1ae8 symkey:0x7f39928fe200
 11949 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11949 ms  0x1ae8 privk:0x7f3990869020::7f3990869020  c0 b4 05 92                                      ....
 11949 ms  0x1ae8 privk:0x7f3990869020::7f3990869020  e5 e5 e5 e5                                      ....
 11949 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 11949 ms  0x1ae8 privk:0x7f3990866020::7f3990866020  b0 bf ab 91                                      ....
 11950 ms  0x1ae8 privk:0x7f3990866020::7f3990866020  e5 e5 e5 e5                                      ....
 11950 ms  0x1ae8 PK11_Encrypt()
 11950 ms  0x1ae8 symkey:0x7f39928fe200
 11951 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11951 ms  0x1ae8 cx:0x7f397f70c4a8
 11951 ms     | 0x1ae8 EC_ValidatePublicKey()
 11951 ms     | 0x1ae8 ret:0x0
 11951 ms  0x1ae8 ret:0x7f397f6b0820::7f397f6b0820  00 fb 3a 90                                      ..:.
 11951 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11951 ms  0x1ae8 cx:0x7f397f70c4a8
 11952 ms     | 0x1ae8 EC_ValidatePublicKey()
 11954 ms     | 0x1ae8 ret:0x0
 11954 ms  0x1ae8 ret:0x7f3982949820::7f3982949820  80 1d 5d 90                                      ..].
 11990 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11990 ms  0x1ae8 cx:0x7f397f70c648
 11991 ms     | 0x1ae8 EC_ValidatePublicKey()
 11991 ms     | 0x1ae8 ret:0x0
 11991 ms  0x1ae8 ret:0x7f3990306820::7f3990306820  70 e4 5e 90                                      p.^.
 11991 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11991 ms  0x1ae8 cx:0x7f397f70c648
 11992 ms     | 0x1ae8 EC_ValidatePublicKey()
 11994 ms     | 0x1ae8 ret:0x0
 11994 ms  0x1ae8 ret:0x7f3990865820::7f3990865820  a0 bb 04 92                                      ....
 11996 ms  0x1ae8 SSL_AuthCertificateComplete()
 11996 ms  0x1ae8 fd:0x7f39905f7430
 11996 ms  0x1ae8 err:0x0
 11997 ms  SECKEY_ECParamsToKeySize()
 11997 ms  0x1ae8 ret:0x100
 11997 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 11997 ms  0x1ae8 cx:0x7f397f70c308
 11998 ms     | 0x1ae8 EC_ValidatePublicKey()
 12000 ms     | 0x1ae8 ret:0x0
 12000 ms  0x1ae8 ret:0x7f39928d5020::7f39928d5020  20 9e 3d 92                                       .=.
 12000 ms  0x1ae8 PK11_PubDeriveWithKDF()
 12000 ms  0x1ae8 seckey:0x7f39928d5020
 12000 ms     | 0x1ae8 EC_ValidatePublicKey()
 12002 ms     | 0x1ae8 ret:0x0
 12004 ms  0x1ae8 ret:0x7f39928c3c80
 12004 ms  0x1ae8 PK11_DeriveWithFlags()
 12004 ms  0x1ae8 basekey:0x7f39928c3c80
 12004 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12004 ms  0x1ae8 ret:0x7f39928c3c00
 12004 ms  0x1ae8 PK11_Derive()
 12004 ms  0x1ae8 basekey:0x7f39928c3c00
 12004 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12004 ms  0x1ae8 ret:0x7f39928c3780
 12004 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12004 ms  0x1ae8 privk:0x7f39928d5020::7f39928d5020  20 9e 3d 92                                       .=.
 12004 ms  0x1ae8 privk:0x7f39928d5020::7f39928d5020  e5 e5 e5 e5                                      ....
 12004 ms  0x1ae8 PK11_Encrypt()
 12004 ms  0x1ae8 symkey:0x7f39928c3d00
 12005 ms  0x1ae8 PK11_Encrypt()
 12005 ms  0x1ae8 symkey:0x7f39928c3d00
 12059 ms  SECKEY_ECParamsToKeySize()
 12059 ms  0x1ae8 ret:0x100
 12059 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 12059 ms  0x1ae8 cx:0x7f397f70c988
 12060 ms     | 0x1ae8 EC_ValidatePublicKey()
 12061 ms     | 0x1ae8 ret:0x0
 12061 ms  0x1ae8 ret:0x7f39950a3820::7f39950a3820  10 9f 3d 92                                      ..=.
 12062 ms  0x1ae8 PK11_PubDeriveWithKDF()
 12062 ms  0x1ae8 seckey:0x7f39950a3820
 12062 ms     | 0x1ae8 EC_ValidatePublicKey()
 12063 ms     | 0x1ae8 ret:0x0
 12077 ms  0x1ae8 ret:0x7f39928c3c80
 12077 ms  0x1ae8 PK11_DeriveWithFlags()
 12077 ms  0x1ae8 basekey:0x7f39928c3c80
 12077 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12077 ms  0x1ae8 ret:0x7f39928c3700
 12077 ms  0x1ae8 PK11_Derive()
 12077 ms  0x1ae8 basekey:0x7f39928c3700
 12077 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12077 ms  0x1ae8 ret:0x7f39923de880
 12077 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12077 ms  0x1ae8 privk:0x7f39950a3820::7f39950a3820  10 9f 3d 92                                      ..=.
 12077 ms  0x1ae8 privk:0x7f39950a3820::7f39950a3820  e5 e5 e5 e5                                      ....
 12077 ms  0x1ae8 PK11_Encrypt()
 12077 ms  0x1ae8 symkey:0x7f39928c3a00
 12078 ms  0x1ae8 SSL_AuthCertificateComplete()
 12078 ms  0x1ae8 fd:0x7f39920f01f0
 12078 ms  0x1ae8 err:0x0
 12078 ms  0x1ae8 PK11_Encrypt()
 12078 ms  0x1ae8 symkey:0x7f39928c3a00
           /* TID 0x1af0 */
 12127 ms  0x1af0 PR_Close()
 12127 ms  0x1af0 fd:0x7f39923e1940
           /* TID 0x1ae8 */
 12193 ms  0x1ae8 PK11_Derive()
 12193 ms  0x1ae8 basekey:0x7f39923de600
 12193 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12193 ms  0x1ae8 ret:0x7f39928c3c80
 12194 ms  0x1ae8 PK11_Encrypt()
 12194 ms  0x1ae8 symkey:0x7f39923e4280
 12195 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12195 ms  0x1ae8 privk:0x7f399681f820::7f399681f820  f0 9b 3d 92                                      ..=.
 12195 ms  0x1ae8 privk:0x7f399681f820::7f399681f820  e5 e5 e5 e5                                      ....
 12195 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12195 ms  0x1ae8 privk:0x7f399657a820::7f399657a820  90 97 3d 92                                      ..=.
 12195 ms  0x1ae8 privk:0x7f399657a820::7f399657a820  e5 e5 e5 e5                                      ....
 12195 ms  0x1ae8 PK11_Derive()
 12195 ms  0x1ae8 basekey:0x7f39923e5700
 12196 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12196 ms  0x1ae8 ret:0x7f39923e5780
 12196 ms  0x1ae8 PK11_Encrypt()
 12196 ms  0x1ae8 symkey:0x7f39923e5800
 12197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12197 ms  0x1ae8 privk:0x7f3996ce1020::7f3996ce1020  e0 42 8c 92                                      .B..
 12197 ms  0x1ae8 privk:0x7f3996ce1020::7f3996ce1020  e5 e5 e5 e5                                      ....
 12197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12197 ms  0x1ae8 privk:0x7f3996cdd820::7f3996cdd820  00 41 8c 92                                      .A..
 12197 ms  0x1ae8 privk:0x7f3996cdd820::7f3996cdd820  e5 e5 e5 e5                                      ....
 12197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12197 ms  0x1ae8 privk:0x7f39950a2820::7f39950a2820  50 96 3d 92                                      P.=.
 12197 ms  0x1ae8 privk:0x7f39950a2820::7f39950a2820  e5 e5 e5 e5                                      ....
 12197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12197 ms  0x1ae8 privk:0x7f39928dd020::7f39928dd020  00 b6 05 92                                      ....
 12197 ms  0x1ae8 privk:0x7f39928dd020::7f39928dd020  e5 e5 e5 e5                                      ....
 12209 ms  0x1ae8 PK11_Derive()
 12209 ms  0x1ae8 basekey:0x7f3992828480
 12209 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12209 ms  0x1ae8 ret:0x7f3992828500
 12209 ms  0x1ae8 PK11_Encrypt()
 12209 ms  0x1ae8 symkey:0x7f3992828580
 12210 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12210 ms  0x1ae8 privk:0x7f3996cec820::7f3996cec820  60 4a 8c 92                                      `J..
 12210 ms  0x1ae8 privk:0x7f3996cec820::7f3996cec820  e5 e5 e5 e5                                      ....
 12210 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12210 ms  0x1ae8 privk:0x7f3996ce4020::7f3996ce4020  20 44 8c 92                                       D..
 12211 ms  0x1ae8 privk:0x7f3996ce4020::7f3996ce4020  e5 e5 e5 e5                                      ....
 12211 ms  0x1ae8 PK11_Encrypt()
 12211 ms  0x1ae8 symkey:0x7f397f6e2400
 12218 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 12218 ms  0x1ae8 cx:0x7f397f70cb28
 12219 ms     | 0x1ae8 EC_ValidatePublicKey()
 12219 ms     | 0x1ae8 ret:0x0
 12219 ms  0x1ae8 ret:0x7f39928e2820::7f39928e2820  30 b8 05 92                                      0...
 12219 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 12219 ms  0x1ae8 cx:0x7f397f70cb28
 12220 ms     | 0x1ae8 EC_ValidatePublicKey()
 12221 ms     | 0x1ae8 ret:0x0
 12221 ms  0x1ae8 ret:0x7f39950a2820::7f39950a2820  50 96 3d 92                                      P.=.
           /* TID 0x1af0 */
 12226 ms  0x1af0 PR_Close()
 12226 ms  0x1af0 fd:0x7f3990583490
           /* TID 0x1ae8 */
 12234 ms  0x1ae8 PK11_Encrypt()
 12234 ms  0x1ae8 symkey:0x7f397f6e1f00
 12241 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 12241 ms  0x1ae8 cx:0x7f39905d62c8
 12241 ms     | 0x1ae8 EC_ValidatePublicKey()
 12241 ms     | 0x1ae8 ret:0x0
 12241 ms  0x1ae8 ret:0x7f3996812820::7f3996812820  e0 97 3d 92                                      ..=.
 12241 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 12241 ms  0x1ae8 cx:0x7f39905d62c8
 12242 ms     | 0x1ae8 EC_ValidatePublicKey()
 12243 ms     | 0x1ae8 ret:0x0
 12243 ms  0x1ae8 ret:0x7f3996995020::7f3996995020  80 9d 3d 92                                      ..=.
 12264 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12264 ms  0x1ae8 privk:0x7f3997068820::7f3997068820  f0 e1 6a 93                                      ..j.
 12265 ms  0x1ae8 privk:0x7f3997068820::7f3997068820  e5 e5 e5 e5                                      ....
 12265 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12265 ms  0x1ae8 privk:0x7f3997066820::7f3997066820  20 54 65 93                                       Te.
 12265 ms  0x1ae8 privk:0x7f3997066820::7f3997066820  e5 e5 e5 e5                                      ....
 12289 ms  0x1ae8 PK11_Derive()
 12289 ms  0x1ae8 basekey:0x7f39928c3380
 12289 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12289 ms  0x1ae8 ret:0x7f39928c3400
 12289 ms  0x1ae8 PK11_Encrypt()
 12289 ms  0x1ae8 symkey:0x7f39928c3480
 12290 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12290 ms  0x1ae8 privk:0x7f3982949820::7f3982949820  80 1d 5d 90                                      ..].
 12290 ms  0x1ae8 privk:0x7f3982949820::7f3982949820  e5 e5 e5 e5                                      ....
 12290 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12290 ms  0x1ae8 privk:0x7f397f6b0820::7f397f6b0820  00 fb 3a 90                                      ..:.
 12290 ms  0x1ae8 privk:0x7f397f6b0820::7f397f6b0820  e5 e5 e5 e5                                      ....
 12335 ms  0x1ae8 PK11_Derive()
 12335 ms  0x1ae8 basekey:0x7f39920dca80
 12335 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12335 ms  0x1ae8 ret:0x7f39920dcb00
 12335 ms  0x1ae8 PK11_Encrypt()
 12335 ms  0x1ae8 symkey:0x7f39920dcc80
 12336 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12336 ms  0x1ae8 privk:0x7f3990865820::7f3990865820  a0 bb 04 92                                      ....
 12336 ms  0x1ae8 privk:0x7f3990865820::7f3990865820  e5 e5 e5 e5                                      ....
 12336 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12336 ms  0x1ae8 privk:0x7f3990306820::7f3990306820  70 e4 5e 90                                      p.^.
 12336 ms  0x1ae8 privk:0x7f3990306820::7f3990306820  e5 e5 e5 e5                                      ....
 12336 ms  0x1ae8 PK11_Encrypt()
 12336 ms  0x1ae8 symkey:0x7f39920dcc80
           /* TID 0x1af0 */
 12443 ms  0x1af0 PR_Close()
 12443 ms  0x1af0 fd:0x7f3990583d90
 12443 ms  0x1af0 PR_Close()
 12443 ms  0x1af0 fd:0x7f39920ead60
 12446 ms  0x1af0 PR_Close()
 12446 ms  0x1af0 fd:0x7f397f727940
           /* TID 0x1ae8 */
 12566 ms  0x1ae8 PK11_Derive()
 12566 ms  0x1ae8 basekey:0x7f39920db600
 12566 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12566 ms  0x1ae8 ret:0x7f39920db680
 12566 ms  0x1ae8 PK11_Encrypt()
 12566 ms  0x1ae8 symkey:0x7f39920db700
 12569 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12569 ms  0x1ae8 privk:0x7f39950a2820::7f39950a2820  50 96 3d 92                                      P.=.
 12569 ms  0x1ae8 privk:0x7f39950a2820::7f39950a2820  e5 e5 e5 e5                                      ....
 12570 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12570 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  30 b8 05 92                                      0...
 12570 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  e5 e5 e5 e5                                      ....
           /* TID 0x1af0 */
 12580 ms  0x1af0 PR_Close()
 12580 ms  0x1af0 fd:0x7f397f727940
 12583 ms  0x1af0 PR_Close()
 12583 ms  0x1af0 fd:0x7f397f727940
           /* TID 0x1ae8 */
 12586 ms  0x1ae8 PK11_Derive()
 12586 ms  0x1ae8 basekey:0x7f39920ce680
 12586 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 12586 ms  0x1ae8 ret:0x7f39920ce700
 12587 ms  0x1ae8 PK11_Encrypt()
 12587 ms  0x1ae8 symkey:0x7f39920cea80
           /* TID 0x1af0 */
 12587 ms  0x1af0 PR_Close()
 12587 ms  0x1af0 fd:0x7f3990583d90
 12589 ms  0x1af0 PR_Close()
 12589 ms  0x1af0 fd:0x7f3990583d90
 12591 ms  0x1af0 PR_Close()
 12591 ms  0x1af0 fd:0x7f3990583d90
           /* TID 0x1ae8 */
 12594 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12594 ms  0x1ae8 privk:0x7f3996995020::7f3996995020  80 9d 3d 92                                      ..=.
 12594 ms  0x1ae8 privk:0x7f3996995020::7f3996995020  e5 e5 e5 e5                                      ....
 12597 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 12597 ms  0x1ae8 privk:0x7f3996812820::7f3996812820  e0 97 3d 92                                      ..=.
 12597 ms  0x1ae8 privk:0x7f3996812820::7f3996812820  e5 e5 e5 e5                                      ....
 12597 ms  0x1ae8 PK11_Encrypt()
 12597 ms  0x1ae8 symkey:0x7f39923e4280
           /* TID 0x1af0 */
 12630 ms  0x1af0 PR_Close()
 12630 ms  0x1af0 fd:0x7f39920eaca0
 12637 ms  0x1af0 PR_Close()
 12637 ms  0x1af0 fd:0x7f39920eaca0
           /* TID 0x1ae8 */
 12664 ms  0x1ae8 PK11_Encrypt()
 12664 ms  0x1ae8 symkey:0x7f39928fe680
           /* TID 0x1af0 */
 12665 ms  0x1af0 PR_Close()
 12665 ms  0x1af0 fd:0x7f39920ead60
           /* TID 0x1ae8 */
 12668 ms  0x1ae8 PK11_Encrypt()
 12668 ms  0x1ae8 symkey:0x7f397f6e2400
           /* TID 0x1af0 */
 12669 ms  0x1af0 PR_Close()
 12669 ms  0x1af0 fd:0x7f39920ead60
           /* TID 0x1ae8 */
 12710 ms  0x1ae8 PK11_Encrypt()
 12710 ms  0x1ae8 symkey:0x7f3992d7ac00
 12710 ms  0x1ae8 PK11_Encrypt()
 12710 ms  0x1ae8 symkey:0x7f39923e5800
           /* TID 0x1af0 */
 12712 ms  0x1af0 PR_Close()
 12712 ms  0x1af0 fd:0x7f3992039a90
 12712 ms  0x1af0 PR_Close()
 12712 ms  0x1af0 fd:0x7f39920f0850
 12713 ms  0x1af0 PR_Close()
 12713 ms  0x1af0 fd:0x7f3982997520
           /* TID 0x1ae8 */
 12716 ms  0x1ae8 PK11_Encrypt()
 12716 ms  0x1ae8 symkey:0x7f3992828580
 12933 ms  0x1ae8 SSL_ImportFD()
 12934 ms  0x1ae8 ret:0x7f3992039a30
 12934 ms  0x1ae8 SSL_AuthCertificateHook()
 12934 ms  0x1ae8 fd:0x7f3992039a30
 12934 ms  0x1ae8 ret:0x0
 12934 ms  0x1ae8 PR_Connect()
 12934 ms  0x1ae8 fd:0x7f3992039a30
           /* TID 0x1af0 */
 13031 ms  0x1af0 PR_Close()
 13031 ms  0x1af0 fd:0x7f39920f0760
           /* TID 0x1ae8 */
 13043 ms  0x1ae8 PK11_Encrypt()
 13043 ms  0x1ae8 symkey:0x7f39923e4280
           /* TID 0x1af0 */
 13090 ms  0x1af0 PR_Close()
 13090 ms  0x1af0 fd:0x7f399289daf0
           /* TID 0x1ae8 */
 13111 ms  0x1ae8 PK11_Encrypt()
 13111 ms  0x1ae8 symkey:0x7f39920dcc80
           /* TID 0x1af0 */
 13117 ms  0x1af0 PR_Close()
 13117 ms  0x1af0 fd:0x7f399363f0d0
 13121 ms  0x1af0 PR_Close()
 13121 ms  0x1af0 fd:0x7f399289dc40
 13150 ms  0x1af0 PR_Close()
 13150 ms  0x1af0 fd:0x7f3991a8bf10
 13161 ms  0x1af0 PR_Close()
 13161 ms  0x1af0 fd:0x7f3990558130
           /* TID 0x1ae8 */
 13184 ms  0x1ae8 SSL_ImportFD()
 13184 ms  0x1ae8 ret:0x7f3991a8bf70
 13184 ms  0x1ae8 SSL_AuthCertificateHook()
 13184 ms  0x1ae8 fd:0x7f3991a8bf70
 13184 ms  0x1ae8 ret:0x0
 13184 ms  0x1ae8 PR_Connect()
 13184 ms  0x1ae8 fd:0x7f3991a8bf70
 13286 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13286 ms  0x1ae8 cx:0x7f39905d6608
 13287 ms     | 0x1ae8 EC_ValidatePublicKey()
 13287 ms     | 0x1ae8 ret:0x0
 13287 ms  0x1ae8 ret:0x7f3990864020::7f3990864020  f0 e1 5e 90                                      ..^.
 13287 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13287 ms  0x1ae8 cx:0x7f39905d6608
 13289 ms     | 0x1ae8 EC_ValidatePublicKey()
 13294 ms     | 0x1ae8 ret:0x0
 13294 ms  0x1ae8 ret:0x7f399086d820::7f399086d820  c0 e4 af 91                                      ....
           /* TID 0x1af0 */
 13497 ms  0x1af0 PR_Close()
 13497 ms  0x1af0 fd:0x7f39923e1ac0
           /* TID 0x1ae8 */
 13528 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13528 ms  0x1ae8 cx:0x7f39905d67a8
 13529 ms     | 0x1ae8 EC_ValidatePublicKey()
 13529 ms     | 0x1ae8 ret:0x0
 13529 ms  0x1ae8 ret:0x7f39928dd020::7f39928dd020  d0 b3 ab 91                                      ....
 13529 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13529 ms  0x1ae8 cx:0x7f39905d67a8
 13530 ms     | 0x1ae8 EC_ValidatePublicKey()
 13532 ms     | 0x1ae8 ret:0x0
 13532 ms  0x1ae8 ret:0x7f39928ee020::7f39928ee020  60 bf 04 92                                      `...
           /* TID 0x1af0 */
 13545 ms  0x1af0 PR_Close()
 13545 ms  0x1af0 fd:0x7f39920f0b80
           /* TID 0x1ae8 */
 13645 ms  0x1ae8 SSL_AuthCertificateComplete()
 13645 ms  0x1ae8 fd:0x7f3992039a30
 13645 ms  0x1ae8 err:0x0
           /* TID 0x1af0 */
 13653 ms  0x1af0 PR_Close()
 13653 ms  0x1af0 fd:0x7f3990583c70
           /* TID 0x1ae8 */
 13677 ms  SECKEY_ECParamsToKeySize()
 13677 ms  0x1ae8 ret:0x100
 13677 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13677 ms  0x1ae8 cx:0x7f39905d6608
 13678 ms     | 0x1ae8 EC_ValidatePublicKey()
 13695 ms     | 0x1ae8 ret:0x0
 13695 ms  0x1ae8 ret:0x7f3996ce2020::7f3996ce2020  90 47 0e 92                                      .G..
 13695 ms  0x1ae8 PK11_PubDeriveWithKDF()
 13695 ms  0x1ae8 seckey:0x7f3996ce2020
 13695 ms     | 0x1ae8 EC_ValidatePublicKey()
 13698 ms     | 0x1ae8 ret:0x0
 13700 ms  0x1ae8 ret:0x7f39920ce180
 13700 ms  0x1ae8 PK11_DeriveWithFlags()
 13700 ms  0x1ae8 basekey:0x7f39920ce180
 13700 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 13700 ms  0x1ae8 ret:0x7f39920ce100
 13700 ms  0x1ae8 PK11_Derive()
 13700 ms  0x1ae8 basekey:0x7f39920ce100
 13700 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 13701 ms  0x1ae8 ret:0x7f39920cd180
 13701 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 13701 ms  0x1ae8 privk:0x7f3996ce2020::7f3996ce2020  90 47 0e 92                                      .G..
 13701 ms  0x1ae8 privk:0x7f3996ce2020::7f3996ce2020  e5 e5 e5 e5                                      ....
 13701 ms  0x1ae8 PK11_Encrypt()
 13701 ms  0x1ae8 symkey:0x7f39920ce200
 13718 ms  0x1ae8 PK11_Encrypt()
 13718 ms  0x1ae8 symkey:0x7f39920dc800
 13720 ms  0x1ae8 PK11_Encrypt()
 13720 ms  0x1ae8 symkey:0x7f39920ce200
 13721 ms  0x1ae8 PK11_Encrypt()
 13721 ms  0x1ae8 symkey:0x7f39920cdc80
 13722 ms  0x1ae8 SSL_ImportFD()
 13722 ms  0x1ae8 ret:0x7f39969ff400
 13722 ms  0x1ae8 SSL_AuthCertificateHook()
 13722 ms  0x1ae8 fd:0x7f39969ff400
 13722 ms  0x1ae8 ret:0x0
 13727 ms  0x1ae8 PK11_Encrypt()
 13727 ms  0x1ae8 symkey:0x7f3992060d00
 13728 ms  0x1ae8 PK11_Encrypt()
 13728 ms  0x1ae8 symkey:0x7f3992060d00
 13728 ms  0x1ae8 PK11_Encrypt()
 13728 ms  0x1ae8 symkey:0x7f3992060d00
 13728 ms  0x1ae8 PK11_Encrypt()
 13728 ms  0x1ae8 symkey:0x7f3992060d00
 13728 ms  0x1ae8 PR_Connect()
 13728 ms  0x1ae8 fd:0x7f39969ff400
 13729 ms  0x1ae8 SSL_ImportFD()
 13729 ms  0x1ae8 ret:0x7f39969e66d0
 13729 ms  0x1ae8 SSL_AuthCertificateHook()
 13729 ms  0x1ae8 fd:0x7f39969e66d0
 13729 ms  0x1ae8 ret:0x0
 13729 ms  0x1ae8 PR_Connect()
 13729 ms  0x1ae8 fd:0x7f39969e66d0
 13729 ms  0x1ae8 SSL_ImportFD()
 13729 ms  0x1ae8 ret:0x7f399289d760
 13729 ms  0x1ae8 SSL_AuthCertificateHook()
 13729 ms  0x1ae8 fd:0x7f399289d760
 13729 ms  0x1ae8 ret:0x0
 13729 ms  0x1ae8 PR_Connect()
 13729 ms  0x1ae8 fd:0x7f399289d760
 13730 ms  0x1ae8 SSL_ImportFD()
 13730 ms  0x1ae8 ret:0x7f39923e1c40
 13730 ms  0x1ae8 SSL_AuthCertificateHook()
 13730 ms  0x1ae8 fd:0x7f39923e1c40
 13730 ms  0x1ae8 ret:0x0
 13730 ms  0x1ae8 PR_Connect()
 13730 ms  0x1ae8 fd:0x7f39923e1c40
 13730 ms  0x1ae8 PK11_Encrypt()
 13730 ms  0x1ae8 symkey:0x7f3992060d00
 13730 ms  0x1ae8 PK11_Encrypt()
 13730 ms  0x1ae8 symkey:0x7f3992060d00
 13731 ms  0x1ae8 SSL_ImportFD()
 13731 ms  0x1ae8 ret:0x7f3996f09160
 13731 ms  0x1ae8 SSL_AuthCertificateHook()
 13731 ms  0x1ae8 fd:0x7f3996f09160
 13731 ms  0x1ae8 ret:0x0
 13731 ms  0x1ae8 PK11_Encrypt()
 13731 ms  0x1ae8 symkey:0x7f3992060d00
 13732 ms  0x1ae8 PK11_Encrypt()
 13732 ms  0x1ae8 symkey:0x7f3992060d00
 13735 ms  0x1ae8 PR_Connect()
 13735 ms  0x1ae8 fd:0x7f3996f09160
 13735 ms  0x1ae8 SSL_ImportFD()
 13735 ms  0x1ae8 ret:0x7f399289deb0
 13735 ms  0x1ae8 SSL_AuthCertificateHook()
 13735 ms  0x1ae8 fd:0x7f399289deb0
 13735 ms  0x1ae8 ret:0x0
 13735 ms  0x1ae8 PR_Connect()
 13735 ms  0x1ae8 fd:0x7f399289deb0
 13736 ms  0x1ae8 SSL_ImportFD()
 13736 ms  0x1ae8 ret:0x7f3996f03070
 13736 ms  0x1ae8 SSL_AuthCertificateHook()
 13736 ms  0x1ae8 fd:0x7f3996f03070
 13736 ms  0x1ae8 ret:0x0
 13736 ms  0x1ae8 PR_Connect()
 13736 ms  0x1ae8 fd:0x7f3996f03070
 13736 ms  0x1ae8 PK11_Encrypt()
 13736 ms  0x1ae8 symkey:0x7f3992060d00
 13736 ms  0x1ae8 PK11_Encrypt()
 13736 ms  0x1ae8 symkey:0x7f397f6e2400
 13737 ms  0x1ae8 SSL_ImportFD()
 13737 ms  0x1ae8 ret:0x7f39969427c0
 13737 ms  0x1ae8 SSL_AuthCertificateHook()
 13737 ms  0x1ae8 fd:0x7f39969427c0
 13737 ms  0x1ae8 ret:0x0
 13737 ms  0x1ae8 PK11_Encrypt()
 13737 ms  0x1ae8 symkey:0x7f3992060d00
 13738 ms  0x1ae8 PK11_Encrypt()
 13738 ms  0x1ae8 symkey:0x7f3992060d00
 13738 ms  0x1ae8 PR_Connect()
 13738 ms  0x1ae8 fd:0x7f39969427c0
 13738 ms  0x1ae8 SSL_ImportFD()
 13738 ms  0x1ae8 ret:0x7f3993690e80
 13738 ms  0x1ae8 SSL_AuthCertificateHook()
 13738 ms  0x1ae8 fd:0x7f3993690e80
 13738 ms  0x1ae8 ret:0x0
 13738 ms  0x1ae8 PR_Connect()
 13738 ms  0x1ae8 fd:0x7f3993690e80
 13738 ms  0x1ae8 SSL_ImportFD()
 13738 ms  0x1ae8 ret:0x7f39969ff4f0
 13738 ms  0x1ae8 SSL_AuthCertificateHook()
 13738 ms  0x1ae8 fd:0x7f39969ff4f0
 13738 ms  0x1ae8 ret:0x0
 13739 ms  0x1ae8 PR_Connect()
 13739 ms  0x1ae8 fd:0x7f39969ff4f0
 13739 ms  0x1ae8 PK11_Encrypt()
 13739 ms  0x1ae8 symkey:0x7f3992060d00
 13785 ms  0x1ae8 PK11_Encrypt()
 13785 ms  0x1ae8 symkey:0x7f3992d7ac00
           /* TID 0x1af0 */
 13854 ms  0x1af0 PR_Close()
 13854 ms  0x1af0 fd:0x7f3990558130
 13855 ms  0x1af0 PR_Close()
 13855 ms  0x1af0 fd:0x7f3990558130
           /* TID 0x1ae8 */
 13862 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13862 ms  0x1ae8 cx:0x7f39905d6fc8
 13862 ms     | 0x1ae8 EC_ValidatePublicKey()
 13862 ms     | 0x1ae8 ret:0x0
 13862 ms  0x1ae8 ret:0x7f399706f820::7f399706f820  10 9a 3d 92                                      ..=.
 13862 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13862 ms  0x1ae8 cx:0x7f39905d6fc8
 13863 ms     | 0x1ae8 EC_ValidatePublicKey()
 13865 ms     | 0x1ae8 ret:0x0
 13865 ms  0x1ae8 ret:0x7f3997071820::7f3997071820  a0 eb 6a 93                                      ..j.
 13865 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13865 ms  0x1ae8 cx:0x7f39905d6ae8
 13866 ms     | 0x1ae8 EC_ValidatePublicKey()
 13866 ms     | 0x1ae8 ret:0x0
 13866 ms  0x1ae8 ret:0x7f3997073820::7f3997073820  60 3f 56 96                                      `?V.
 13866 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13866 ms  0x1ae8 cx:0x7f39905d6ae8
 13866 ms     | 0x1ae8 EC_ValidatePublicKey()
           /* TID 0x1af0 */
 13868 ms  0x1af0 PR_Close()
 13868 ms  0x1af0 fd:0x7f39969fdeb0
           /* TID 0x1ae8 */
 13874 ms     | 0x1ae8 ret:0x0
 13874 ms  0x1ae8 ret:0x7f3997075020::7f3997075020  e0 b7 05 92                                      ....
 13876 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13876 ms  0x1ae8 cx:0x7f39905d7168
 13877 ms     | 0x1ae8 EC_ValidatePublicKey()
 13877 ms     | 0x1ae8 ret:0x0
 13877 ms  0x1ae8 ret:0x7f3997077820::7f3997077820  c0 ee 6a 93                                      ..j.
 13877 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13877 ms  0x1ae8 cx:0x7f39905d7168
 13878 ms     | 0x1ae8 EC_ValidatePublicKey()
 13879 ms     | 0x1ae8 ret:0x0
 13879 ms  0x1ae8 ret:0x7f3997079820::7f3997079820  c0 9e 5f 96                                      .._.
 13881 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13881 ms  0x1ae8 cx:0x7f39905d6e28
 13882 ms     | 0x1ae8 EC_ValidatePublicKey()
 13882 ms     | 0x1ae8 ret:0x0
 13882 ms  0x1ae8 ret:0x7f399707c820::7f399707c820  70 d4 88 96                                      p...
 13882 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13882 ms  0x1ae8 cx:0x7f39905d6e28
 13882 ms     | 0x1ae8 EC_ValidatePublicKey()
 13884 ms     | 0x1ae8 ret:0x0
 13884 ms  0x1ae8 ret:0x7f399707e820::7f399707e820  c0 1e 8e 96                                      ....
 13890 ms  0x1ae8 SSL_AuthCertificateComplete()
 13890 ms  0x1ae8 fd:0x7f3991a8bf70
 13890 ms  0x1ae8 err:0x0
 13890 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13890 ms  0x1ae8 cx:0x7f39905d7648
 13890 ms     | 0x1ae8 EC_ValidatePublicKey()
 13890 ms     | 0x1ae8 ret:0x0
 13890 ms  0x1ae8 ret:0x7f3997082820::7f3997082820  00 0b 91 96                                      ....
 13890 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13890 ms  0x1ae8 cx:0x7f39905d7648
 13891 ms     | 0x1ae8 EC_ValidatePublicKey()
 13892 ms     | 0x1ae8 ret:0x0
 13892 ms  0x1ae8 ret:0x7f399709e020::7f399709e020  b0 a0 92 96                                      ....
 13896 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13896 ms  0x1ae8 cx:0x7f39905d74a8
 13896 ms     | 0x1ae8 EC_ValidatePublicKey()
 13896 ms     | 0x1ae8 ret:0x0
 13896 ms  0x1ae8 ret:0x7f39970a4820::7f39970a4820  00 3b 9e 96                                      .;..
 13896 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13896 ms  0x1ae8 cx:0x7f39905d74a8
 13897 ms     | 0x1ae8 EC_ValidatePublicKey()
 13898 ms     | 0x1ae8 ret:0x0
 13898 ms  0x1ae8 ret:0x7f39970ab820::7f39970ab820  a0 5b 9f 96                                      .[..
 13899 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13899 ms  0x1ae8 cx:0x7f39905d7308
 13899 ms     | 0x1ae8 EC_ValidatePublicKey()
 13899 ms     | 0x1ae8 ret:0x0
 13899 ms  0x1ae8 ret:0x7f39970b1020::7f39970b1020  c0 84 9f 96                                      ....
 13899 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13899 ms  0x1ae8 cx:0x7f39905d7308
 13900 ms     | 0x1ae8 EC_ValidatePublicKey()
 13901 ms     | 0x1ae8 ret:0x0
 13901 ms  0x1ae8 ret:0x7f39970b3020::7f39970b3020  a0 71 b6 96                                      .q..
 13902 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13902 ms  0x1ae8 cx:0x7f39905d7b28
 13902 ms     | 0x1ae8 EC_ValidatePublicKey()
 13902 ms     | 0x1ae8 ret:0x0
 13902 ms  0x1ae8 ret:0x7f39970b7820::7f39970b7820  60 10 bf 96                                      `...
 13902 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13902 ms  0x1ae8 cx:0x7f39905d7b28
 13903 ms     | 0x1ae8 EC_ValidatePublicKey()
 13904 ms     | 0x1ae8 ret:0x0
 13904 ms  0x1ae8 ret:0x7f39998f4020::7f39998f4020  40 12 bf 96                                      @...
 13907 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13907 ms  0x1ae8 cx:0x7f39905d7988
 13907 ms     | 0x1ae8 EC_ValidatePublicKey()
 13907 ms     | 0x1ae8 ret:0x0
 13907 ms  0x1ae8 ret:0x7f39998fc820::7f39998fc820  80 13 bf 96                                      ....
 13907 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13907 ms  0x1ae8 cx:0x7f39905d7988
 13908 ms     | 0x1ae8 EC_ValidatePublicKey()
 13909 ms     | 0x1ae8 ret:0x0
 13909 ms  0x1ae8 ret:0x7f3999911820::7f3999911820  60 15 bf 96                                      `...
 13912 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13912 ms  0x1ae8 cx:0x7f39905d77e8
 13913 ms     | 0x1ae8 EC_ValidatePublicKey()
 13913 ms     | 0x1ae8 ret:0x0
 13913 ms  0x1ae8 ret:0x7f3999916020::7f3999916020  a0 16 bf 96                                      ....
 13913 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13913 ms  0x1ae8 cx:0x7f39905d77e8
 13913 ms     | 0x1ae8 EC_ValidatePublicKey()
 13915 ms     | 0x1ae8 ret:0x0
 13915 ms  0x1ae8 ret:0x7f399991a820::7f399991a820  30 4d bf 96                                      0M..
 13915 ms  SECKEY_ECParamsToKeySize()
 13915 ms  0x1ae8 ret:0x100
 13915 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 13915 ms  0x1ae8 cx:0x7f39905d67a8
 13916 ms     | 0x1ae8 EC_ValidatePublicKey()
 13917 ms     | 0x1ae8 ret:0x0
 13917 ms  0x1ae8 ret:0x7f399a6a2020::7f399a6a2020  60 85 c8 96                                      `...
 13917 ms  0x1ae8 PK11_PubDeriveWithKDF()
 13917 ms  0x1ae8 seckey:0x7f399a6a2020
 13917 ms     | 0x1ae8 EC_ValidatePublicKey()
 13919 ms     | 0x1ae8 ret:0x0
 13920 ms  0x1ae8 ret:0x7f39920ce180
 13920 ms  0x1ae8 PK11_DeriveWithFlags()
 13920 ms  0x1ae8 basekey:0x7f39920ce180
 13920 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 13920 ms  0x1ae8 ret:0x7f399209d880
 13920 ms  0x1ae8 PK11_Derive()
 13920 ms  0x1ae8 basekey:0x7f399209d880
 13920 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 13920 ms  0x1ae8 ret:0x7f3992060f00
 13920 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 13920 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  60 85 c8 96                                      `...
 13920 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  e5 e5 e5 e5                                      ....
 13921 ms  0x1ae8 PK11_Encrypt()
 13921 ms  0x1ae8 symkey:0x7f39920cd700
           /* TID 0x1af0 */
 13999 ms  0x1af0 PR_Close()
 13999 ms  0x1af0 fd:0x7f399653eeb0
 13999 ms  0x1af0 PR_Close()
 13999 ms  0x1af0 fd:0x7f39969c64f0
           /* TID 0x1ae8 */
 14000 ms  SECKEY_ECParamsToKeySize()
 14000 ms  0x1ae8 ret:0xff
 14000 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14000 ms  0x1ae8 cx:0x7f39905d6fc8
 14000 ms     | 0x1ae8 EC_ValidatePublicKey()
 14000 ms     | 0x1ae8 ret:0x0
 14000 ms  0x1ae8 ret:0x7f399a6a2020::7f399a6a2020  00 1b bf 96                                      ....
 14000 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14000 ms  0x1ae8 seckey:0x7f399a6a2020
 14001 ms     | 0x1ae8 EC_ValidatePublicKey()
 14001 ms     | 0x1ae8 ret:0x0
 14001 ms  0x1ae8 ret:0x7f39920ce180
 14001 ms  0x1ae8 PK11_DeriveWithFlags()
 14001 ms  0x1ae8 basekey:0x7f39920ce180
 14001 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14001 ms  0x1ae8 ret:0x7f3992060e80
 14001 ms  0x1ae8 PK11_Derive()
 14001 ms  0x1ae8 basekey:0x7f3992060e80
 14001 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14001 ms  0x1ae8 ret:0x7f39923e5180
 14001 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14001 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  00 1b bf 96                                      ....
 14001 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  e5 e5 e5 e5                                      ....
 14001 ms  0x1ae8 PK11_Encrypt()
 14001 ms  0x1ae8 symkey:0x7f3992060f80
 14002 ms  0x1ae8 SSL_AuthCertificateComplete()
 14002 ms  0x1ae8 fd:0x7f399289d760
 14002 ms  0x1ae8 err:0x0
 14002 ms  0x1ae8 PK11_Encrypt()
 14002 ms  0x1ae8 symkey:0x7f3992060f80
           /* TID 0x1af0 */
 14010 ms  0x1af0 PR_Close()
 14010 ms  0x1af0 fd:0x7f39936903a0
           /* TID 0x1ae8 */
 14011 ms  SECKEY_ECParamsToKeySize()
 14011 ms  0x1ae8 ret:0xff
 14011 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14011 ms  0x1ae8 cx:0x7f39905d6ae8
 14011 ms     | 0x1ae8 EC_ValidatePublicKey()
 14011 ms     | 0x1ae8 ret:0x0
 14012 ms  0x1ae8 ret:0x7f399a6a2820::7f399a6a2820  70 84 c8 96                                      p...
 14012 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14012 ms  0x1ae8 seckey:0x7f399a6a2820
 14012 ms     | 0x1ae8 EC_ValidatePublicKey()
 14012 ms     | 0x1ae8 ret:0x0
 14012 ms  0x1ae8 ret:0x7f39920ce180
 14012 ms  0x1ae8 PK11_DeriveWithFlags()
 14012 ms  0x1ae8 basekey:0x7f39920ce180
 14012 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14012 ms  0x1ae8 ret:0x7f399209cb80
 14012 ms  0x1ae8 PK11_Derive()
 14012 ms  0x1ae8 basekey:0x7f399209cb80
 14012 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14012 ms  0x1ae8 ret:0x7f39923e5000
 14012 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14012 ms  0x1ae8 privk:0x7f399a6a2820::7f399a6a2820  70 84 c8 96                                      p...
 14012 ms  0x1ae8 privk:0x7f399a6a2820::7f399a6a2820  e5 e5 e5 e5                                      ....
 14013 ms  0x1ae8 PK11_Encrypt()
 14013 ms  0x1ae8 symkey:0x7f39923e5c00
 14013 ms  0x1ae8 SSL_AuthCertificateComplete()
 14013 ms  0x1ae8 fd:0x7f39969ff400
 14013 ms  0x1ae8 err:0x0
 14014 ms  0x1ae8 PK11_Encrypt()
 14014 ms  0x1ae8 symkey:0x7f39923e5c00
 14018 ms  SECKEY_ECParamsToKeySize()
 14018 ms  0x1ae8 ret:0xff
 14018 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14018 ms  0x1ae8 cx:0x7f39905d7168
 14019 ms     | 0x1ae8 EC_ValidatePublicKey()
 14019 ms     | 0x1ae8 ret:0x0
 14019 ms  0x1ae8 ret:0x7f399a6a7820::7f399a6a7820  10 85 c8 96                                      ....
 14019 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14019 ms  0x1ae8 seckey:0x7f399a6a7820
 14019 ms     | 0x1ae8 EC_ValidatePublicKey()
 14019 ms     | 0x1ae8 ret:0x0
 14019 ms  0x1ae8 ret:0x7f39920ce180
 14019 ms  0x1ae8 PK11_DeriveWithFlags()
 14019 ms  0x1ae8 basekey:0x7f39920ce180
 14019 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14019 ms  0x1ae8 ret:0x7f39923e5f00
 14019 ms  0x1ae8 PK11_Derive()
 14019 ms  0x1ae8 basekey:0x7f39923e5f00
 14019 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14019 ms  0x1ae8 ret:0x7f39923e5f80
 14019 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14019 ms  0x1ae8 privk:0x7f399a6a7820::7f399a6a7820  10 85 c8 96                                      ....
 14019 ms  0x1ae8 privk:0x7f399a6a7820::7f399a6a7820  e5 e5 e5 e5                                      ....
 14020 ms  0x1ae8 PK11_Encrypt()
 14020 ms  0x1ae8 symkey:0x7f39928c2100
 14020 ms  0x1ae8 SSL_AuthCertificateComplete()
 14020 ms  0x1ae8 fd:0x7f39923e1c40
 14020 ms  0x1ae8 err:0x0
 14021 ms  0x1ae8 PK11_Encrypt()
 14021 ms  0x1ae8 symkey:0x7f39928c2100
 14022 ms  SECKEY_ECParamsToKeySize()
 14022 ms  0x1ae8 ret:0xff
 14022 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14022 ms  0x1ae8 cx:0x7f39905d6e28
 14023 ms     | 0x1ae8 EC_ValidatePublicKey()
 14023 ms     | 0x1ae8 ret:0x0
 14023 ms  0x1ae8 ret:0x7f399a6ab020::7f399a6ab020  b0 85 c8 96                                      ....
 14023 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14023 ms  0x1ae8 seckey:0x7f399a6ab020
 14023 ms     | 0x1ae8 EC_ValidatePublicKey()
 14023 ms     | 0x1ae8 ret:0x0
 14023 ms  0x1ae8 ret:0x7f39920ce180
 14023 ms  0x1ae8 PK11_DeriveWithFlags()
 14023 ms  0x1ae8 basekey:0x7f39920ce180
 14023 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14023 ms  0x1ae8 ret:0x7f3992043680
 14023 ms  0x1ae8 PK11_Derive()
 14023 ms  0x1ae8 basekey:0x7f3992043680
 14023 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14023 ms  0x1ae8 ret:0x7f39923e4b00
 14023 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14023 ms  0x1ae8 privk:0x7f399a6ab020::7f399a6ab020  b0 85 c8 96                                      ....
 14027 ms  0x1ae8 privk:0x7f399a6ab020::7f399a6ab020  e5 e5 e5 e5                                      ....
 14027 ms  0x1ae8 PK11_Encrypt()
 14027 ms  0x1ae8 symkey:0x7f39923e4e00
 14027 ms  0x1ae8 SSL_AuthCertificateComplete()
 14027 ms  0x1ae8 fd:0x7f39969e66d0
 14027 ms  0x1ae8 err:0x0
 14028 ms  0x1ae8 PK11_Encrypt()
 14028 ms  0x1ae8 symkey:0x7f39923e4e00
 14029 ms  SECKEY_ECParamsToKeySize()
 14029 ms  0x1ae8 ret:0xff
 14029 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14029 ms  0x1ae8 cx:0x7f39905d7648
 14029 ms     | 0x1ae8 EC_ValidatePublicKey()
 14029 ms     | 0x1ae8 ret:0x0
 14029 ms  0x1ae8 ret:0x7f399a6ad020::7f399a6ad020  80 88 c8 96                                      ....
 14029 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14029 ms  0x1ae8 seckey:0x7f399a6ad020
 14029 ms     | 0x1ae8 EC_ValidatePublicKey()
 14029 ms     | 0x1ae8 ret:0x0
 14030 ms  0x1ae8 ret:0x7f39920ce180
 14030 ms  0x1ae8 PK11_DeriveWithFlags()
 14030 ms  0x1ae8 basekey:0x7f39920ce180
 14030 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14030 ms  0x1ae8 ret:0x7f39928c2280
 14030 ms  0x1ae8 PK11_Derive()
 14030 ms  0x1ae8 basekey:0x7f39928c2280
 14030 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14030 ms  0x1ae8 ret:0x7f39928c2300
 14030 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14030 ms  0x1ae8 privk:0x7f399a6ad020::7f399a6ad020  80 88 c8 96                                      ....
 14030 ms  0x1ae8 privk:0x7f399a6ad020::7f399a6ad020  e5 e5 e5 e5                                      ....
 14030 ms  0x1ae8 PK11_Encrypt()
 14030 ms  0x1ae8 symkey:0x7f39928c2480
 14032 ms  0x1ae8 SSL_AuthCertificateComplete()
 14032 ms  0x1ae8 fd:0x7f3996f03070
 14032 ms  0x1ae8 err:0x0
 14033 ms  0x1ae8 PK11_Encrypt()
 14033 ms  0x1ae8 symkey:0x7f39928c2480
 14038 ms  SECKEY_ECParamsToKeySize()
 14038 ms  0x1ae8 ret:0xff
 14038 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14038 ms  0x1ae8 cx:0x7f39905d74a8
 14039 ms     | 0x1ae8 EC_ValidatePublicKey()
 14039 ms     | 0x1ae8 ret:0x0
 14039 ms  0x1ae8 ret:0x7f399a6b1020::7f399a6b1020  20 89 c8 96                                       ...
 14039 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14039 ms  0x1ae8 seckey:0x7f399a6b1020
 14039 ms     | 0x1ae8 EC_ValidatePublicKey()
 14039 ms     | 0x1ae8 ret:0x0
 14039 ms  0x1ae8 ret:0x7f39920ce180
 14039 ms  0x1ae8 PK11_DeriveWithFlags()
 14039 ms  0x1ae8 basekey:0x7f39920ce180
 14043 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14043 ms  0x1ae8 ret:0x7f39928c2680
 14043 ms  0x1ae8 PK11_Derive()
 14043 ms  0x1ae8 basekey:0x7f39928c2680
 14043 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14043 ms  0x1ae8 ret:0x7f39928c2900
 14043 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14043 ms  0x1ae8 privk:0x7f399a6b1020::7f399a6b1020  20 89 c8 96                                       ...
 14043 ms  0x1ae8 privk:0x7f399a6b1020::7f399a6b1020  e5 e5 e5 e5                                      ....
 14043 ms  0x1ae8 PK11_Encrypt()
 14043 ms  0x1ae8 symkey:0x7f39928c2c00
 14043 ms  0x1ae8 SSL_AuthCertificateComplete()
 14043 ms  0x1ae8 fd:0x7f399289deb0
 14043 ms  0x1ae8 err:0x0
 14043 ms  0x1ae8 PK11_Encrypt()
 14043 ms  0x1ae8 symkey:0x7f39928c2c00
 14044 ms  SECKEY_ECParamsToKeySize()
 14044 ms  0x1ae8 ret:0xff
 14044 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14044 ms  0x1ae8 cx:0x7f39905d7308
 14045 ms     | 0x1ae8 EC_ValidatePublicKey()
 14045 ms     | 0x1ae8 ret:0x0
 14045 ms  0x1ae8 ret:0x7f399a6b3820::7f399a6b3820  e0 8c c8 96                                      ....
 14045 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14045 ms  0x1ae8 seckey:0x7f399a6b3820
 14045 ms     | 0x1ae8 EC_ValidatePublicKey()
 14045 ms     | 0x1ae8 ret:0x0
 14046 ms  0x1ae8 ret:0x7f39920ce180
 14046 ms  0x1ae8 PK11_DeriveWithFlags()
 14046 ms  0x1ae8 basekey:0x7f39920ce180
 14046 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14046 ms  0x1ae8 ret:0x7f39928c2580
 14047 ms  0x1ae8 PK11_Derive()
 14047 ms  0x1ae8 basekey:0x7f39928c2580
 14047 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14047 ms  0x1ae8 ret:0x7f39928c2600
 14047 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14047 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  e0 8c c8 96                                      ....
 14047 ms  0x1ae8 privk:0x7f399a6b3820::7f399a6b3820  e5 e5 e5 e5                                      ....
 14047 ms  0x1ae8 PK11_Encrypt()
 14047 ms  0x1ae8 symkey:0x7f39928c2800
 14048 ms  SECKEY_ECParamsToKeySize()
 14048 ms  0x1ae8 ret:0xff
 14048 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14048 ms  0x1ae8 cx:0x7f39905d7b28
 14048 ms     | 0x1ae8 EC_ValidatePublicKey()
 14048 ms     | 0x1ae8 ret:0x0
 14048 ms  0x1ae8 ret:0x7f399a6b4020::7f399a6b4020  80 8d c8 96                                      ....
 14048 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14048 ms  0x1ae8 seckey:0x7f399a6b4020
 14048 ms     | 0x1ae8 EC_ValidatePublicKey()
 14048 ms     | 0x1ae8 ret:0x0
 14049 ms  0x1ae8 ret:0x7f39920ce180
 14049 ms  0x1ae8 PK11_DeriveWithFlags()
 14049 ms  0x1ae8 basekey:0x7f39920ce180
 14049 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14049 ms  0x1ae8 ret:0x7f39928c2980
 14049 ms  0x1ae8 PK11_Derive()
 14049 ms  0x1ae8 basekey:0x7f39928c2980
 14049 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14049 ms  0x1ae8 ret:0x7f39928c2d80
 14049 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14049 ms  0x1ae8 privk:0x7f399a6b4020::7f399a6b4020  80 8d c8 96                                      ....
 14049 ms  0x1ae8 privk:0x7f399a6b4020::7f399a6b4020  e5 e5 e5 e5                                      ....
 14049 ms  0x1ae8 PK11_Encrypt()
 14049 ms  0x1ae8 symkey:0x7f39928c2f00
 14054 ms  0x1ae8 SSL_AuthCertificateComplete()
 14054 ms  0x1ae8 fd:0x7f3996f09160
 14054 ms  0x1ae8 err:0x0
 14055 ms  0x1ae8 SSL_AuthCertificateComplete()
 14055 ms  0x1ae8 fd:0x7f39969ff4f0
 14055 ms  0x1ae8 err:0x0
 14055 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14055 ms  0x1ae8 privk:0x7f399086d820::7f399086d820  c0 e4 af 91                                      ....
 14055 ms  0x1ae8 privk:0x7f399086d820::7f399086d820  e5 e5 e5 e5                                      ....
 14055 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14055 ms  0x1ae8 privk:0x7f3990864020::7f3990864020  f0 e1 5e 90                                      ..^.
 14055 ms  0x1ae8 privk:0x7f3990864020::7f3990864020  e5 e5 e5 e5                                      ....
 14055 ms  0x1ae8 PK11_Encrypt()
 14055 ms  0x1ae8 symkey:0x7f39928c2800
 14055 ms  0x1ae8 PK11_Encrypt()
 14055 ms  0x1ae8 symkey:0x7f39928c2f00
 14060 ms  SECKEY_ECParamsToKeySize()
 14060 ms  0x1ae8 ret:0xff
 14060 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14060 ms  0x1ae8 cx:0x7f39905d7988
 14060 ms     | 0x1ae8 EC_ValidatePublicKey()
 14060 ms     | 0x1ae8 ret:0x0
 14060 ms  0x1ae8 ret:0x7f399a6b2820::7f399a6b2820  10 5a 65 93                                      .Ze.
 14060 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14060 ms  0x1ae8 seckey:0x7f399a6b2820
 14060 ms     | 0x1ae8 EC_ValidatePublicKey()
 14060 ms     | 0x1ae8 ret:0x0
 14061 ms  0x1ae8 ret:0x7f39920ce180
 14061 ms  0x1ae8 PK11_DeriveWithFlags()
 14061 ms  0x1ae8 basekey:0x7f39920ce180
 14061 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14061 ms  0x1ae8 ret:0x7f39928c2a00
 14061 ms  0x1ae8 PK11_Derive()
 14061 ms  0x1ae8 basekey:0x7f39928c2a00
 14061 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14061 ms  0x1ae8 ret:0x7f39928c2a80
 14061 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14061 ms  0x1ae8 privk:0x7f399a6b2820::7f399a6b2820  10 5a 65 93                                      .Ze.
 14061 ms  0x1ae8 privk:0x7f399a6b2820::7f399a6b2820  e5 e5 e5 e5                                      ....
 14061 ms  0x1ae8 PK11_Encrypt()
 14061 ms  0x1ae8 symkey:0x7f39928c3580
 14062 ms  SECKEY_ECParamsToKeySize()
 14062 ms  0x1ae8 ret:0xff
 14062 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14062 ms  0x1ae8 cx:0x7f39905d77e8
 14063 ms     | 0x1ae8 EC_ValidatePublicKey()
 14063 ms     | 0x1ae8 ret:0x0
 14063 ms  0x1ae8 ret:0x7f399a6b3020::7f399a6b3020  30 88 c8 96                                      0...
 14063 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14063 ms  0x1ae8 seckey:0x7f399a6b3020
 14063 ms     | 0x1ae8 EC_ValidatePublicKey()
 14063 ms     | 0x1ae8 ret:0x0
 14063 ms  0x1ae8 ret:0x7f39920ce180
 14063 ms  0x1ae8 PK11_DeriveWithFlags()
 14063 ms  0x1ae8 basekey:0x7f39920ce180
 14063 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14063 ms  0x1ae8 ret:0x7f39928c3900
 14063 ms  0x1ae8 PK11_Derive()
 14063 ms  0x1ae8 basekey:0x7f39928c3900
 14063 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14063 ms  0x1ae8 ret:0x7f39928c3980
 14063 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14063 ms  0x1ae8 privk:0x7f399a6b3020::7f399a6b3020  30 88 c8 96                                      0...
 14063 ms  0x1ae8 privk:0x7f399a6b3020::7f399a6b3020  e5 e5 e5 e5                                      ....
 14063 ms  0x1ae8 PK11_Encrypt()
 14063 ms  0x1ae8 symkey:0x7f39928feb80
 14064 ms  0x1ae8 SSL_AuthCertificateComplete()
 14064 ms  0x1ae8 fd:0x7f3993690e80
 14064 ms  0x1ae8 err:0x0
 14064 ms  0x1ae8 SSL_AuthCertificateComplete()
 14064 ms  0x1ae8 fd:0x7f39969427c0
 14064 ms  0x1ae8 err:0x0
 14064 ms  0x1ae8 PK11_Encrypt()
 14064 ms  0x1ae8 symkey:0x7f39928c3580
 14064 ms  0x1ae8 PK11_Encrypt()
 14064 ms  0x1ae8 symkey:0x7f39928feb80
           /* TID 0x1af0 */
 14133 ms  0x1af0 PR_Close()
 14133 ms  0x1af0 fd:0x7f39969fdc40
 14133 ms  0x1af0 PR_Close()
 14133 ms  0x1af0 fd:0x7f3996e34160
           /* TID 0x1ae8 */
 14135 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14135 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  a0 eb 6a 93                                      ..j.
 14135 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  e5 e5 e5 e5                                      ....
 14135 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14135 ms  0x1ae8 privk:0x7f399706f820::7f399706f820  10 9a 3d 92                                      ..=.
 14135 ms  0x1ae8 privk:0x7f399706f820::7f399706f820  e5 e5 e5 e5                                      ....
 14135 ms  0x1ae8 PR_Close()
 14135 ms  0x1ae8 fd:0x7f399289d760
 14135 ms     | 0x1ae8 PK11_Encrypt()
 14135 ms     | 0x1ae8 symkey:0x7f3992060f80
           /* TID 0x1af0 */
 14143 ms  0x1af0 PR_Close()
 14143 ms  0x1af0 fd:0x7f3990558130
           /* TID 0x1ae8 */
 14147 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14147 ms  0x1ae8 privk:0x7f3997075020::7f3997075020  e0 b7 05 92                                      ....
 14147 ms  0x1ae8 privk:0x7f3997075020::7f3997075020  e5 e5 e5 e5                                      ....
 14147 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14147 ms  0x1ae8 privk:0x7f3997073820::7f3997073820  60 3f 56 96                                      `?V.
 14147 ms  0x1ae8 privk:0x7f3997073820::7f3997073820  e5 e5 e5 e5                                      ....
 14147 ms  0x1ae8 PR_Close()
 14147 ms  0x1ae8 fd:0x7f39969ff400
 14147 ms     | 0x1ae8 PK11_Encrypt()
 14147 ms     | 0x1ae8 symkey:0x7f39923e5c00
 14155 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14155 ms  0x1ae8 privk:0x7f3997079820::7f3997079820  c0 9e 5f 96                                      .._.
 14155 ms  0x1ae8 privk:0x7f3997079820::7f3997079820  e5 e5 e5 e5                                      ....
 14155 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14155 ms  0x1ae8 privk:0x7f3997077820::7f3997077820  c0 ee 6a 93                                      ..j.
 14155 ms  0x1ae8 privk:0x7f3997077820::7f3997077820  e5 e5 e5 e5                                      ....
 14155 ms  0x1ae8 PR_Close()
 14155 ms  0x1ae8 fd:0x7f39923e1c40
 14155 ms     | 0x1ae8 PK11_Encrypt()
 14155 ms     | 0x1ae8 symkey:0x7f39928c2100
 14161 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14161 ms  0x1ae8 privk:0x7f399707e820::7f399707e820  c0 1e 8e 96                                      ....
 14161 ms  0x1ae8 privk:0x7f399707e820::7f399707e820  e5 e5 e5 e5                                      ....
 14161 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14161 ms  0x1ae8 privk:0x7f399707c820::7f399707c820  70 d4 88 96                                      p...
 14161 ms  0x1ae8 privk:0x7f399707c820::7f399707c820  e5 e5 e5 e5                                      ....
 14161 ms  0x1ae8 PR_Close()
 14161 ms  0x1ae8 fd:0x7f39969e66d0
 14161 ms     | 0x1ae8 PK11_Encrypt()
 14161 ms     | 0x1ae8 symkey:0x7f39923e4e00
 14162 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14162 ms  0x1ae8 privk:0x7f399709e020::7f399709e020  b0 a0 92 96                                      ....
 14162 ms  0x1ae8 privk:0x7f399709e020::7f399709e020  e5 e5 e5 e5                                      ....
 14162 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14162 ms  0x1ae8 privk:0x7f3997082820::7f3997082820  00 0b 91 96                                      ....
 14162 ms  0x1ae8 privk:0x7f3997082820::7f3997082820  e5 e5 e5 e5                                      ....
 14162 ms  0x1ae8 PR_Close()
 14162 ms  0x1ae8 fd:0x7f3996f03070
 14162 ms     | 0x1ae8 PK11_Encrypt()
 14162 ms     | 0x1ae8 symkey:0x7f39928c2480
           /* TID 0x1af0 */
 14165 ms  0x1af0 PR_Close()
 14165 ms  0x1af0 fd:0x7f3990558130
           /* TID 0x1ae8 */
 14180 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14180 ms  0x1ae8 privk:0x7f39970ab820::7f39970ab820  a0 5b 9f 96                                      .[..
 14181 ms  0x1ae8 privk:0x7f39970ab820::7f39970ab820  e5 e5 e5 e5                                      ....
 14181 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14181 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  00 3b 9e 96                                      .;..
 14181 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  e5 e5 e5 e5                                      ....
 14181 ms  0x1ae8 PR_Close()
 14181 ms  0x1ae8 fd:0x7f399289deb0
 14181 ms     | 0x1ae8 PK11_Encrypt()
 14181 ms     | 0x1ae8 symkey:0x7f39928c2c00
 14182 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14182 ms  0x1ae8 privk:0x7f39970b3020::7f39970b3020  a0 71 b6 96                                      .q..
 14182 ms  0x1ae8 privk:0x7f39970b3020::7f39970b3020  e5 e5 e5 e5                                      ....
 14182 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14182 ms  0x1ae8 privk:0x7f39970b1020::7f39970b1020  c0 84 9f 96                                      ....
 14182 ms  0x1ae8 privk:0x7f39970b1020::7f39970b1020  e5 e5 e5 e5                                      ....
 14183 ms  0x1ae8 PR_Close()
 14183 ms  0x1ae8 fd:0x7f3996f09160
 14183 ms     | 0x1ae8 PK11_Encrypt()
 14183 ms     | 0x1ae8 symkey:0x7f39928c2800
 14186 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14186 ms  0x1ae8 privk:0x7f39998f4020::7f39998f4020  40 12 bf 96                                      @...
 14186 ms  0x1ae8 privk:0x7f39998f4020::7f39998f4020  e5 e5 e5 e5                                      ....
 14186 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14186 ms  0x1ae8 privk:0x7f39970b7820::7f39970b7820  60 10 bf 96                                      `...
 14186 ms  0x1ae8 privk:0x7f39970b7820::7f39970b7820  e5 e5 e5 e5                                      ....
 14186 ms  0x1ae8 PR_Close()
 14186 ms  0x1ae8 fd:0x7f39969ff4f0
 14186 ms     | 0x1ae8 PK11_Encrypt()
 14186 ms     | 0x1ae8 symkey:0x7f39928c2f00
 14196 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14196 ms  0x1ae8 privk:0x7f3999911820::7f3999911820  60 15 bf 96                                      `...
 14196 ms  0x1ae8 privk:0x7f3999911820::7f3999911820  e5 e5 e5 e5                                      ....
 14197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14197 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  80 13 bf 96                                      ....
 14197 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  e5 e5 e5 e5                                      ....
 14197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14197 ms  0x1ae8 privk:0x7f399991a820::7f399991a820  30 4d bf 96                                      0M..
 14197 ms  0x1ae8 privk:0x7f399991a820::7f399991a820  e5 e5 e5 e5                                      ....
 14197 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14197 ms  0x1ae8 privk:0x7f3999916020::7f3999916020  a0 16 bf 96                                      ....
 14197 ms  0x1ae8 privk:0x7f3999916020::7f3999916020  e5 e5 e5 e5                                      ....
 14197 ms  0x1ae8 PR_Close()
 14197 ms  0x1ae8 fd:0x7f39969427c0
 14197 ms     | 0x1ae8 PK11_Encrypt()
 14197 ms     | 0x1ae8 symkey:0x7f39928feb80
 14197 ms  0x1ae8 PR_Close()
 14197 ms  0x1ae8 fd:0x7f3993690e80
 14197 ms     | 0x1ae8 PK11_Encrypt()
 14197 ms     | 0x1ae8 symkey:0x7f39928c3580
           /* TID 0x1af0 */
 14227 ms  0x1af0 PR_Close()
 14227 ms  0x1af0 fd:0x7f399289d490
           /* TID 0x1ae8 */
 14252 ms  0x1ae8 SSL_ImportFD()
 14252 ms  0x1ae8 ret:0x7f399289d7c0
 14252 ms  0x1ae8 SSL_AuthCertificateHook()
 14252 ms  0x1ae8 fd:0x7f399289d7c0
 14252 ms  0x1ae8 ret:0x0
 14252 ms  0x1ae8 PR_Connect()
 14252 ms  0x1ae8 fd:0x7f399289d7c0
 14252 ms  0x1ae8 SSL_ImportFD()
 14252 ms  0x1ae8 ret:0x7f39923e1c40
 14252 ms  0x1ae8 SSL_AuthCertificateHook()
 14252 ms  0x1ae8 fd:0x7f39923e1c40
 14252 ms  0x1ae8 ret:0x0
 14252 ms  0x1ae8 PR_Connect()
 14252 ms  0x1ae8 fd:0x7f39923e1c40
 14265 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14265 ms  0x1ae8 privk:0x7f39928ee020::7f39928ee020  60 bf 04 92                                      `...
 14265 ms  0x1ae8 privk:0x7f39928ee020::7f39928ee020  e5 e5 e5 e5                                      ....
 14265 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14265 ms  0x1ae8 privk:0x7f39928dd020::7f39928dd020  d0 b3 ab 91                                      ....
 14265 ms  0x1ae8 privk:0x7f39928dd020::7f39928dd020  e5 e5 e5 e5                                      ....
           /* TID 0x1af0 */
 14268 ms  0x1af0 PR_Close()
 14268 ms  0x1af0 fd:0x7f39920ea190
 14270 ms  0x1af0 PR_Close()
 14270 ms  0x1af0 fd:0x7f39920ea190
 14278 ms  0x1af0 PR_Close()
 14278 ms  0x1af0 fd:0x7f39920ea190
           /* TID 0x1ae8 */
 14388 ms  0x1ae8 SSL_ImportFD()
 14389 ms  0x1ae8 ret:0x7f39959ff910
 14389 ms  0x1ae8 SSL_AuthCertificateHook()
 14389 ms  0x1ae8 fd:0x7f39959ff910
 14389 ms  0x1ae8 ret:0x0
 14389 ms  0x1ae8 PR_Connect()
 14389 ms  0x1ae8 fd:0x7f39959ff910
           /* TID 0x1af0 */
 14403 ms  0x1af0 PR_Close()
 14403 ms  0x1af0 fd:0x7f399289d460
 14403 ms  0x1af0 PR_Close()
 14403 ms  0x1af0 fd:0x7f39959ff8e0
           /* TID 0x1ae8 */
 14424 ms  0x1ae8 SSL_ImportFD()
 14424 ms  0x1ae8 ret:0x7f39950b5fd0
 14424 ms  0x1ae8 SSL_AuthCertificateHook()
 14424 ms  0x1ae8 fd:0x7f39950b5fd0
 14424 ms  0x1ae8 ret:0x0
 14424 ms  0x1ae8 PR_Connect()
 14424 ms  0x1ae8 fd:0x7f39950b5fd0
           /* TID 0x1af0 */
 14476 ms  0x1af0 PR_Close()
 14476 ms  0x1af0 fd:0x7f39920ea310
           /* TID 0x1ae8 */
 14478 ms  0x1ae8 PK11_Encrypt()
 14478 ms  0x1ae8 symkey:0x7f397f6e2400
 14505 ms  0x1ae8 SSL_ImportFD()
 14505 ms  0x1ae8 ret:0x7f39969e6640
 14505 ms  0x1ae8 SSL_AuthCertificateHook()
 14505 ms  0x1ae8 fd:0x7f39969e6640
 14505 ms  0x1ae8 ret:0x0
 14505 ms  0x1ae8 PR_Connect()
 14505 ms  0x1ae8 fd:0x7f39969e6640
 14505 ms  0x1ae8 SSL_ImportFD()
 14505 ms  0x1ae8 ret:0x7f3993690bb0
 14505 ms  0x1ae8 SSL_AuthCertificateHook()
 14505 ms  0x1ae8 fd:0x7f3993690bb0
 14505 ms  0x1ae8 ret:0x0
 14505 ms  0x1ae8 PR_Connect()
 14505 ms  0x1ae8 fd:0x7f3993690bb0
 14518 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14518 ms  0x1ae8 cx:0x7f39905d6ae8
 14519 ms     | 0x1ae8 EC_ValidatePublicKey()
 14519 ms     | 0x1ae8 ret:0x0
 14519 ms  0x1ae8 ret:0x7f3990864020::7f3990864020  80 b8 05 92                                      ....
 14519 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14519 ms  0x1ae8 cx:0x7f39905d6ae8
 14520 ms     | 0x1ae8 EC_ValidatePublicKey()
 14524 ms     | 0x1ae8 ret:0x0
 14524 ms  0x1ae8 ret:0x7f399086d820::7f399086d820  f0 bb 04 92                                      ....
 14526 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14526 ms  0x1ae8 cx:0x7f39905d6e28
 14527 ms     | 0x1ae8 EC_ValidatePublicKey()
 14527 ms     | 0x1ae8 ret:0x0
 14527 ms  0x1ae8 ret:0x7f39928e2820::7f39928e2820  10 45 0e 92                                      .E..
 14527 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14527 ms  0x1ae8 cx:0x7f39905d6e28
 14528 ms     | 0x1ae8 EC_ValidatePublicKey()
 14530 ms     | 0x1ae8 ret:0x0
 14530 ms  0x1ae8 ret:0x7f39928ef020::7f39928ef020  90 92 3d 92                                      ..=.
 14639 ms  0x1ae8 SSL_ImportFD()
 14639 ms  0x1ae8 ret:0x7f39969ff0a0
 14640 ms  0x1ae8 SSL_AuthCertificateHook()
 14640 ms  0x1ae8 fd:0x7f39969ff0a0
 14640 ms  0x1ae8 ret:0x0
 14640 ms  0x1ae8 PR_Connect()
 14640 ms  0x1ae8 fd:0x7f39969ff0a0
 14674 ms  0x1ae8 SSL_ImportFD()
 14674 ms  0x1ae8 ret:0x7f39969ff460
 14674 ms  0x1ae8 SSL_AuthCertificateHook()
 14674 ms  0x1ae8 fd:0x7f39969ff460
 14674 ms  0x1ae8 ret:0x0
 14674 ms  0x1ae8 PR_Connect()
 14674 ms  0x1ae8 fd:0x7f39969ff460
 14702 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14702 ms  0x1ae8 cx:0x7f39905d6fc8
 14703 ms     | 0x1ae8 EC_ValidatePublicKey()
 14703 ms     | 0x1ae8 ret:0x0
 14703 ms  0x1ae8 ret:0x7f3996cee020::7f3996cee020  10 9a 3d 92                                      ..=.
 14703 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14703 ms  0x1ae8 cx:0x7f39905d6fc8
 14705 ms     | 0x1ae8 EC_ValidatePublicKey()
 14707 ms     | 0x1ae8 ret:0x0
 14707 ms  0x1ae8 ret:0x7f3997067020::7f3997067020  c0 5e 65 93                                      .^e.
 14719 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14719 ms  0x1ae8 cx:0x7f39905d7168
 14720 ms     | 0x1ae8 EC_ValidatePublicKey()
 14720 ms     | 0x1ae8 ret:0x0
 14720 ms  0x1ae8 ret:0x7f399706a820::7f399706a820  30 e3 6a 93                                      0.j.
 14720 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14720 ms  0x1ae8 cx:0x7f39905d7168
 14721 ms     | 0x1ae8 EC_ValidatePublicKey()
 14724 ms     | 0x1ae8 ret:0x0
 14724 ms  0x1ae8 ret:0x7f399706f820::7f399706f820  90 ec 6a 93                                      ..j.
 14757 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14757 ms  0x1ae8 cx:0x7f39905d74a8
 14757 ms     | 0x1ae8 EC_ValidatePublicKey()
 14757 ms     | 0x1ae8 ret:0x0
 14757 ms  0x1ae8 ret:0x7f3997072020::7f3997072020  c0 ee 6a 93                                      ..j.
 14758 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14758 ms  0x1ae8 cx:0x7f39905d74a8
 14758 ms     | 0x1ae8 EC_ValidatePublicKey()
 14761 ms     | 0x1ae8 ret:0x0
 14761 ms  0x1ae8 ret:0x7f3997074020::7f3997074020  20 3e 56 96                                       >V.
 14773 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14773 ms  0x1ae8 cx:0x7f39905d7308
 14774 ms     | 0x1ae8 EC_ValidatePublicKey()
 14775 ms     | 0x1ae8 ret:0x0
 14775 ms  0x1ae8 ret:0x7f3997076820::7f3997076820  50 8b 85 96                                      P...
 14775 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14775 ms  0x1ae8 cx:0x7f39905d7308
 14777 ms     | 0x1ae8 EC_ValidatePublicKey()
 14780 ms     | 0x1ae8 ret:0x0
 14780 ms  0x1ae8 ret:0x7f3997078820::7f3997078820  70 1e 8e 96                                      p...
           /* TID 0x1b42 */
 14795 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14795 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
 14795 ms  SECKEY_ECParamsToKeySize()
 14795 ms  0x1ae8 ret:0x100
 14795 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14795 ms  0x1ae8 cx:0x7f39905d6ae8
 14796 ms     | 0x1ae8 EC_ValidatePublicKey()
 14800 ms     | 0x1ae8 ret:0x0
 14800 ms  0x1ae8 ret:0x7f399709d820::7f399709d820  60 05 91 96                                      `...
 14800 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14800 ms  0x1ae8 seckey:0x7f399709d820
 14800 ms     | 0x1ae8 EC_ValidatePublicKey()
 14803 ms     | 0x1ae8 ret:0x0
 14806 ms  0x1ae8 ret:0x7f39928c2a80
 14806 ms  0x1ae8 PK11_DeriveWithFlags()
 14806 ms  0x1ae8 basekey:0x7f39928c2a80
 14806 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14806 ms  0x1ae8 ret:0x7f39928c2a00
 14806 ms  0x1ae8 PK11_Derive()
 14806 ms  0x1ae8 basekey:0x7f39928c2a00
 14806 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14806 ms  0x1ae8 ret:0x7f39928c3980
 14806 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14806 ms  0x1ae8 privk:0x7f399709d820::7f399709d820  60 05 91 96                                      `...
 14806 ms  0x1ae8 privk:0x7f399709d820::7f399709d820  e5 e5 e5 e5                                      ....
 14806 ms  0x1ae8 PK11_Encrypt()
 14806 ms  0x1ae8 symkey:0x7f39928c3200
 14806 ms  0x1ae8 SSL_AuthCertificateComplete()
 14806 ms  0x1ae8 fd:0x7f399289d7c0
 14806 ms  0x1ae8 err:0x0
 14806 ms  0x1ae8 PK11_Encrypt()
 14806 ms  0x1ae8 symkey:0x7f39928c3200
 14807 ms  0x1ae8 PK11_Encrypt()
 14807 ms  0x1ae8 symkey:0x7f39928c3200
           /* TID 0x1b42 */
 14808 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14808 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
 14808 ms  SECKEY_ECParamsToKeySize()
 14808 ms  0x1ae8 ret:0x100
 14808 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14808 ms  0x1ae8 cx:0x7f39905d6e28
 14809 ms     | 0x1ae8 EC_ValidatePublicKey()
 14810 ms     | 0x1ae8 ret:0x0
 14810 ms  0x1ae8 ret:0x7f399709d820::7f399709d820  30 9d 5f 96                                      0._.
 14810 ms  0x1ae8 PK11_PubDeriveWithKDF()
 14810 ms  0x1ae8 seckey:0x7f399709d820
 14810 ms     | 0x1ae8 EC_ValidatePublicKey()
 14812 ms     | 0x1ae8 ret:0x0
 14813 ms  0x1ae8 ret:0x7f39928c2a80
 14813 ms  0x1ae8 PK11_DeriveWithFlags()
 14813 ms  0x1ae8 basekey:0x7f39928c2a80
 14813 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14813 ms  0x1ae8 ret:0x7f39928c3900
 14813 ms  0x1ae8 PK11_Derive()
 14813 ms  0x1ae8 basekey:0x7f39928c3900
 14813 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 14813 ms  0x1ae8 ret:0x7f39928c2d80
 14813 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 14813 ms  0x1ae8 privk:0x7f399709d820::7f399709d820  30 9d 5f 96                                      0._.
 14814 ms  0x1ae8 privk:0x7f399709d820::7f399709d820  e5 e5 e5 e5                                      ....
 14814 ms  0x1ae8 PK11_Encrypt()
 14814 ms  0x1ae8 symkey:0x7f39928fe880
 14817 ms  0x1ae8 SSL_AuthCertificateComplete()
 14817 ms  0x1ae8 fd:0x7f39923e1c40
 14817 ms  0x1ae8 err:0x0
 14818 ms  0x1ae8 PK11_Encrypt()
 14818 ms  0x1ae8 symkey:0x7f39928fe880
 14818 ms  0x1ae8 PK11_Encrypt()
 14818 ms  0x1ae8 symkey:0x7f39928c3200
           /* TID 0x1af0 */
 14921 ms  0x1af0 PR_Close()
 14921 ms  0x1af0 fd:0x7f3996ea6820
           /* TID 0x1ae8 */
 14952 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14952 ms  0x1ae8 cx:0x7f39905d7648
 14953 ms     | 0x1ae8 EC_ValidatePublicKey()
 14953 ms     | 0x1ae8 ret:0x0
 14953 ms  0x1ae8 ret:0x7f399709f020::7f399709f020  c0 1e 8e 96                                      ....
 14954 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14954 ms  0x1ae8 cx:0x7f39905d7648
 14955 ms     | 0x1ae8 EC_ValidatePublicKey()
 14961 ms     | 0x1ae8 ret:0x0
 14961 ms  0x1ae8 ret:0x7f39970a5020::7f39970a5020  30 f8 91 96                                      0...
 14962 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14962 ms  0x1ae8 cx:0x7f39905d7b28
 14965 ms     | 0x1ae8 EC_ValidatePublicKey()
 14965 ms     | 0x1ae8 ret:0x0
 14965 ms  0x1ae8 ret:0x7f39970ad020::7f39970ad020  b0 3a 9e 96                                      .:..
 14965 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 14965 ms  0x1ae8 cx:0x7f39905d7b28
 14967 ms     | 0x1ae8 EC_ValidatePublicKey()
 14971 ms     | 0x1ae8 ret:0x0
 14971 ms  0x1ae8 ret:0x7f39970b1820::7f39970b1820  00 5b 9f 96                                      .[..
 15008 ms  SECKEY_ECParamsToKeySize()
 15008 ms  0x1ae8 ret:0xff
 15008 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15008 ms  0x1ae8 cx:0x7f39905d6fc8
 15009 ms     | 0x1ae8 EC_ValidatePublicKey()
 15009 ms     | 0x1ae8 ret:0x0
 15009 ms  0x1ae8 ret:0x7f39970b4820::7f39970b4820  b0 85 9f 96                                      ....
 15010 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15010 ms  0x1ae8 seckey:0x7f39970b4820
 15010 ms     | 0x1ae8 EC_ValidatePublicKey()
 15010 ms     | 0x1ae8 ret:0x0
 15010 ms  0x1ae8 ret:0x7f39928c2a80
 15010 ms  0x1ae8 PK11_DeriveWithFlags()
 15010 ms  0x1ae8 basekey:0x7f39928c2a80
 15010 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15011 ms  0x1ae8 ret:0x7f39928c2980
 15011 ms  0x1ae8 PK11_Derive()
 15011 ms  0x1ae8 basekey:0x7f39928c2980
 15011 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15011 ms  0x1ae8 ret:0x7f39928c2600
 15011 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15011 ms  0x1ae8 privk:0x7f39970b4820::7f39970b4820  b0 85 9f 96                                      ....
 15011 ms  0x1ae8 privk:0x7f39970b4820::7f39970b4820  e5 e5 e5 e5                                      ....
 15011 ms  0x1ae8 PK11_Encrypt()
 15011 ms  0x1ae8 symkey:0x7f39928c2e00
 15011 ms  0x1ae8 SSL_AuthCertificateComplete()
 15011 ms  0x1ae8 fd:0x7f39959ff910
 15011 ms  0x1ae8 err:0x0
 15012 ms  0x1ae8 PK11_Encrypt()
 15012 ms  0x1ae8 symkey:0x7f39928c2e00
 15013 ms  0x1ae8 PK11_Encrypt()
 15013 ms  0x1ae8 symkey:0x7f39928c2e00
 15016 ms  SECKEY_ECParamsToKeySize()
 15016 ms  0x1ae8 ret:0xff
 15016 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15016 ms  0x1ae8 cx:0x7f39905d7168
 15017 ms     | 0x1ae8 EC_ValidatePublicKey()
 15017 ms     | 0x1ae8 ret:0x0
 15017 ms  0x1ae8 ret:0x7f39998f3020::7f39998f3020  d0 cd 9f 96                                      ....
 15017 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15017 ms  0x1ae8 seckey:0x7f39998f3020
 15017 ms     | 0x1ae8 EC_ValidatePublicKey()
 15017 ms     | 0x1ae8 ret:0x0
 15018 ms  0x1ae8 ret:0x7f39928c2a80
 15018 ms  0x1ae8 PK11_DeriveWithFlags()
 15018 ms  0x1ae8 basekey:0x7f39928c2a80
 15018 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15018 ms  0x1ae8 ret:0x7f39928c2580
 15018 ms  0x1ae8 PK11_Derive()
 15018 ms  0x1ae8 basekey:0x7f39928c2580
 15018 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15019 ms  0x1ae8 ret:0x7f39928c2900
 15019 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15019 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  d0 cd 9f 96                                      ....
 15019 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  e5 e5 e5 e5                                      ....
 15019 ms  0x1ae8 PK11_Encrypt()
 15019 ms  0x1ae8 symkey:0x7f39928c2700
 15019 ms  0x1ae8 SSL_AuthCertificateComplete()
 15019 ms  0x1ae8 fd:0x7f39950b5fd0
 15019 ms  0x1ae8 err:0x0
 15020 ms  0x1ae8 PK11_Encrypt()
 15020 ms  0x1ae8 symkey:0x7f39928c2700
 15020 ms  0x1ae8 PK11_Encrypt()
 15020 ms  0x1ae8 symkey:0x7f39928c2700
           /* TID 0x1b42 */
 15021 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15021 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
 15022 ms  SECKEY_ECParamsToKeySize()
 15022 ms  0x1ae8 ret:0x100
 15022 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15022 ms  0x1ae8 cx:0x7f39905d74a8
 15023 ms     | 0x1ae8 EC_ValidatePublicKey()
 15025 ms     | 0x1ae8 ret:0x0
 15025 ms  0x1ae8 ret:0x7f39998f8820::7f39998f8820  10 75 b6 96                                      .u..
 15026 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15026 ms  0x1ae8 seckey:0x7f39998f8820
 15026 ms     | 0x1ae8 EC_ValidatePublicKey()
 15028 ms     | 0x1ae8 ret:0x0
 15031 ms  0x1ae8 ret:0x7f39928c2a80
 15031 ms  0x1ae8 PK11_DeriveWithFlags()
 15031 ms  0x1ae8 basekey:0x7f39928c2a80
 15031 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15031 ms  0x1ae8 ret:0x7f39928c2680
 15031 ms  0x1ae8 PK11_Derive()
 15031 ms  0x1ae8 basekey:0x7f39928c2680
 15031 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15031 ms  0x1ae8 ret:0x7f39928c2300
 15031 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15031 ms  0x1ae8 privk:0x7f39998f8820::7f39998f8820  10 75 b6 96                                      .u..
 15031 ms  0x1ae8 privk:0x7f39998f8820::7f39998f8820  e5 e5 e5 e5                                      ....
 15031 ms  0x1ae8 PK11_Encrypt()
 15031 ms  0x1ae8 symkey:0x7f39928c2b00
 15032 ms  0x1ae8 SSL_AuthCertificateComplete()
 15032 ms  0x1ae8 fd:0x7f3993690bb0
 15032 ms  0x1ae8 err:0x0
 15032 ms  0x1ae8 PK11_Encrypt()
 15032 ms  0x1ae8 symkey:0x7f39928c2b00
           /* TID 0x1af0 */
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996e6ef10
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996ea6850
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996ea6df0
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f03070
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09160
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09220
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f093a0
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09580
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09610
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09c40
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f09e20
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f99190
 15039 ms  0x1af0 PR_Close()
 15039 ms  0x1af0 fd:0x7f3996f99250
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996f99e50
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996fd91c0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996fd9760
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996fd97c0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996fd9820
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996fd98b0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff20d0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2280
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff22e0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2370
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff23d0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2550
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2790
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff29d0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2cd0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff2fd0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff60a0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff64f0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff6970
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3996ff6f40
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3997002220
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970027f0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970b9ca0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970b9d00
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f5040
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f5130
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f5190
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f51f0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f52b0
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f39970f5340
 15040 ms  0x1af0 PR_Close()
 15040 ms  0x1af0 fd:0x7f3999858550
           /* TID 0x1b42 */
 15055 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15056 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
 15056 ms  SECKEY_ECParamsToKeySize()
 15056 ms  0x1ae8 ret:0x100
 15056 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15056 ms  0x1ae8 cx:0x7f39905d7308
 15057 ms     | 0x1ae8 EC_ValidatePublicKey()
 15059 ms     | 0x1ae8 ret:0x0
 15059 ms  0x1ae8 ret:0x7f39998fc820::7f39998fc820  60 10 bf 96                                      `...
 15059 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15059 ms  0x1ae8 seckey:0x7f39998fc820
 15059 ms     | 0x1ae8 EC_ValidatePublicKey()
 15061 ms     | 0x1ae8 ret:0x0
 15063 ms  0x1ae8 ret:0x7f39928c2a80
 15063 ms  0x1ae8 PK11_DeriveWithFlags()
 15063 ms  0x1ae8 basekey:0x7f39928c2a80
 15063 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15063 ms  0x1ae8 ret:0x7f39928c2280
 15063 ms  0x1ae8 PK11_Derive()
 15063 ms  0x1ae8 basekey:0x7f39928c2280
 15063 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15063 ms  0x1ae8 ret:0x7f39923e4b00
 15063 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15063 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  60 10 bf 96                                      `...
 15063 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  e5 e5 e5 e5                                      ....
 15063 ms  0x1ae8 PK11_Encrypt()
 15063 ms  0x1ae8 symkey:0x7f39928c2380
 15072 ms  0x1ae8 SSL_AuthCertificateComplete()
 15072 ms  0x1ae8 fd:0x7f39969e6640
 15072 ms  0x1ae8 err:0x0
 15072 ms  0x1ae8 PK11_Encrypt()
 15072 ms  0x1ae8 symkey:0x7f39928c2380
 15076 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15076 ms  0x1ae8 privk:0x7f399086d820::7f399086d820  f0 bb 04 92                                      ....
 15076 ms  0x1ae8 privk:0x7f399086d820::7f399086d820  e5 e5 e5 e5                                      ....
 15076 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15076 ms  0x1ae8 privk:0x7f3990864020::7f3990864020  80 b8 05 92                                      ....
 15076 ms  0x1ae8 privk:0x7f3990864020::7f3990864020  e5 e5 e5 e5                                      ....
 15084 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15084 ms  0x1ae8 privk:0x7f39928ef020::7f39928ef020  90 92 3d 92                                      ..=.
 15084 ms  0x1ae8 privk:0x7f39928ef020::7f39928ef020  e5 e5 e5 e5                                      ....
 15084 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15084 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  10 45 0e 92                                      .E..
 15084 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  e5 e5 e5 e5                                      ....
 15084 ms  0x1ae8 PR_Close()
 15084 ms  0x1ae8 fd:0x7f39923e1c40
 15084 ms     | 0x1ae8 PK11_Encrypt()
 15084 ms     | 0x1ae8 symkey:0x7f39928fe880
 15258 ms  SECKEY_ECParamsToKeySize()
 15260 ms  0x1ae8 ret:0xff
 15260 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15260 ms  0x1ae8 cx:0x7f39905d7b28
 15262 ms     | 0x1ae8 EC_ValidatePublicKey()
 15262 ms     | 0x1ae8 ret:0x0
 15262 ms  0x1ae8 ret:0x7f3990865820::7f3990865820  60 40 0e 92                                      `@..
 15262 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15262 ms  0x1ae8 seckey:0x7f3990865820
 15262 ms     | 0x1ae8 EC_ValidatePublicKey()
 15262 ms     | 0x1ae8 ret:0x0
 15264 ms  0x1ae8 ret:0x7f39928c2d80
 15264 ms  0x1ae8 PK11_DeriveWithFlags()
 15264 ms  0x1ae8 basekey:0x7f39928c2d80
 15264 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15264 ms  0x1ae8 ret:0x7f39928c3900
 15264 ms  0x1ae8 PK11_Derive()
 15264 ms  0x1ae8 basekey:0x7f39928c3900
 15264 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15264 ms  0x1ae8 ret:0x7f39928c2a80
 15264 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15264 ms  0x1ae8 privk:0x7f3990865820::7f3990865820  60 40 0e 92                                      `@..
 15266 ms  0x1ae8 privk:0x7f3990865820::7f3990865820  e5 e5 e5 e5                                      ....
 15267 ms  0x1ae8 PK11_Encrypt()
 15267 ms  0x1ae8 symkey:0x7f39928fea80
 15267 ms  0x1ae8 SSL_AuthCertificateComplete()
 15267 ms  0x1ae8 fd:0x7f39969ff460
 15267 ms  0x1ae8 err:0x0
 15268 ms  0x1ae8 PK11_Encrypt()
 15268 ms  0x1ae8 symkey:0x7f39928fea80
 15287 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15287 ms  0x1ae8 privk:0x7f3997074020::7f3997074020  20 3e 56 96                                       >V.
 15288 ms  0x1ae8 privk:0x7f3997074020::7f3997074020  e5 e5 e5 e5                                      ....
 15288 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15288 ms  0x1ae8 privk:0x7f3997072020::7f3997072020  c0 ee 6a 93                                      ..j.
 15288 ms  0x1ae8 privk:0x7f3997072020::7f3997072020  e5 e5 e5 e5                                      ....
 15288 ms  0x1ae8 PR_Close()
 15288 ms  0x1ae8 fd:0x7f3993690bb0
 15288 ms     | 0x1ae8 PK11_Encrypt()
 15288 ms     | 0x1ae8 symkey:0x7f39928c2b00
 15292 ms  SECKEY_ECParamsToKeySize()
 15292 ms  0x1ae8 ret:0xff
 15292 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 15292 ms  0x1ae8 cx:0x7f39905d7648
 15294 ms     | 0x1ae8 EC_ValidatePublicKey()
 15294 ms     | 0x1ae8 ret:0x0
 15294 ms  0x1ae8 ret:0x7f39928dc020::7f39928dc020  90 47 0e 92                                      .G..
 15294 ms  0x1ae8 PK11_PubDeriveWithKDF()
 15294 ms  0x1ae8 seckey:0x7f39928dc020
 15294 ms     | 0x1ae8 EC_ValidatePublicKey()
 15294 ms     | 0x1ae8 ret:0x0
 15296 ms  0x1ae8 ret:0x7f39928c2300
 15296 ms  0x1ae8 PK11_DeriveWithFlags()
 15296 ms  0x1ae8 basekey:0x7f39928c2300
 15296 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15296 ms  0x1ae8 ret:0x7f39928c2680
 15296 ms  0x1ae8 PK11_Derive()
 15296 ms  0x1ae8 basekey:0x7f39928c2680
 15296 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 15296 ms  0x1ae8 ret:0x7f39928c2d80
 15296 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15296 ms  0x1ae8 privk:0x7f39928dc020::7f39928dc020  90 47 0e 92                                      .G..
 15297 ms  0x1ae8 privk:0x7f39928dc020::7f39928dc020  e5 e5 e5 e5                                      ....
 15297 ms  0x1ae8 PK11_Encrypt()
 15297 ms  0x1ae8 symkey:0x7f39928c2b80
 15297 ms  0x1ae8 SSL_AuthCertificateComplete()
 15297 ms  0x1ae8 fd:0x7f39969ff0a0
 15297 ms  0x1ae8 err:0x0
 15299 ms  0x1ae8 PK11_Encrypt()
 15299 ms  0x1ae8 symkey:0x7f39928c2b80
 15313 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15313 ms  0x1ae8 privk:0x7f399706f820::7f399706f820  90 ec 6a 93                                      ..j.
 15313 ms  0x1ae8 privk:0x7f399706f820::7f399706f820  e5 e5 e5 e5                                      ....
 15314 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15314 ms  0x1ae8 privk:0x7f399706a820::7f399706a820  30 e3 6a 93                                      0.j.
 15314 ms  0x1ae8 privk:0x7f399706a820::7f399706a820  e5 e5 e5 e5                                      ....
 15314 ms  0x1ae8 PK11_Encrypt()
 15314 ms  0x1ae8 symkey:0x7f39928c2700
 15323 ms  0x1ae8 PK11_Encrypt()
 15323 ms  0x1ae8 symkey:0x7f397f6e2400
 15326 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15326 ms  0x1ae8 privk:0x7f3997067020::7f3997067020  c0 5e 65 93                                      .^e.
 15326 ms  0x1ae8 privk:0x7f3997067020::7f3997067020  e5 e5 e5 e5                                      ....
 15326 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15326 ms  0x1ae8 privk:0x7f3996cee020::7f3996cee020  10 9a 3d 92                                      ..=.
 15327 ms  0x1ae8 privk:0x7f3996cee020::7f3996cee020  e5 e5 e5 e5                                      ....
 15327 ms  0x1ae8 PK11_Encrypt()
 15327 ms  0x1ae8 symkey:0x7f39928c2e00
 15329 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15329 ms  0x1ae8 privk:0x7f3997078820::7f3997078820  70 1e 8e 96                                      p...
 15331 ms  0x1ae8 privk:0x7f3997078820::7f3997078820  e5 e5 e5 e5                                      ....
 15331 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15331 ms  0x1ae8 privk:0x7f3997076820::7f3997076820  50 8b 85 96                                      P...
 15331 ms  0x1ae8 privk:0x7f3997076820::7f3997076820  e5 e5 e5 e5                                      ....
 15332 ms  0x1ae8 PR_Close()
 15332 ms  0x1ae8 fd:0x7f39969e6640
 15332 ms     | 0x1ae8 PK11_Encrypt()
 15332 ms     | 0x1ae8 symkey:0x7f39928c2380
 15343 ms  0x1ae8 PK11_Encrypt()
 15343 ms  0x1ae8 symkey:0x7f39928c3200
           /* TID 0x1af0 */
 15361 ms  0x1af0 PR_Close()
 15361 ms  0x1af0 fd:0x7f39965ea910
           /* TID 0x1ae8 */
 15377 ms  0x1ae8 PK11_Encrypt()
 15377 ms  0x1ae8 symkey:0x7f39928c3200
 15383 ms  0x1ae8 PK11_Encrypt()
 15383 ms  0x1ae8 symkey:0x7f39928c2e00
           /* TID 0x1af0 */
 15450 ms  0x1af0 PR_Close()
 15450 ms  0x1af0 fd:0x7f399289deb0
           /* TID 0x1ae8 */
 15551 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15551 ms  0x1ae8 privk:0x7f39970b1820::7f39970b1820  00 5b 9f 96                                      .[..
 15552 ms  0x1ae8 privk:0x7f39970b1820::7f39970b1820  e5 e5 e5 e5                                      ....
 15552 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15552 ms  0x1ae8 privk:0x7f39970ad020::7f39970ad020  b0 3a 9e 96                                      .:..
 15552 ms  0x1ae8 privk:0x7f39970ad020::7f39970ad020  e5 e5 e5 e5                                      ....
 15552 ms  0x1ae8 PR_Close()
 15552 ms  0x1ae8 fd:0x7f39969ff460
 15552 ms     | 0x1ae8 PK11_Encrypt()
 15552 ms     | 0x1ae8 symkey:0x7f39928fea80
 15617 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15617 ms  0x1ae8 privk:0x7f39970a5020::7f39970a5020  30 f8 91 96                                      0...
 15617 ms  0x1ae8 privk:0x7f39970a5020::7f39970a5020  e5 e5 e5 e5                                      ....
 15617 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 15617 ms  0x1ae8 privk:0x7f399709f020::7f399709f020  c0 1e 8e 96                                      ....
 15617 ms  0x1ae8 privk:0x7f399709f020::7f399709f020  e5 e5 e5 e5                                      ....
 15618 ms  0x1ae8 PR_Close()
 15618 ms  0x1ae8 fd:0x7f39969ff0a0
 15618 ms     | 0x1ae8 PK11_Encrypt()
 15618 ms     | 0x1ae8 symkey:0x7f39928c2b80
           /* TID 0x1af0 */
 15751 ms  0x1af0 PR_Close()
 15751 ms  0x1af0 fd:0x7f3993690dc0
 15897 ms  0x1af0 PR_Close()
 15897 ms  0x1af0 fd:0x7f39920f0880
 15953 ms  0x1af0 PR_Close()
 15953 ms  0x1af0 fd:0x7f3991a8b9a0
 15965 ms  0x1af0 PR_Close()
 15965 ms  0x1af0 fd:0x7f3991a8b9a0
           /* TID 0x1ae8 */
 16223 ms  0x1ae8 SSL_ImportFD()
 16223 ms  0x1ae8 ret:0x7f39969e6d90
 16224 ms  0x1ae8 SSL_AuthCertificateHook()
 16224 ms  0x1ae8 fd:0x7f39969e6d90
 16224 ms  0x1ae8 ret:0x0
 16224 ms  0x1ae8 PR_Connect()
 16224 ms  0x1ae8 fd:0x7f39969e6d90
 16224 ms  0x1ae8 SSL_ImportFD()
 16224 ms  0x1ae8 ret:0x7f3991a8b9a0
 16224 ms  0x1ae8 SSL_AuthCertificateHook()
 16224 ms  0x1ae8 fd:0x7f3991a8b9a0
 16224 ms  0x1ae8 ret:0x0
 16224 ms  0x1ae8 PR_Connect()
 16224 ms  0x1ae8 fd:0x7f3991a8b9a0
 16405 ms  0x1ae8 PR_Close()
 16405 ms  0x1ae8 fd:0x7f3991a8b730
 16405 ms     | 0x1ae8 PK11_Encrypt()
 16405 ms     | 0x1ae8 symkey:0x7f3992d7bc00
 16458 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16458 ms  0x1ae8 cx:0x7f39905d7648
 16458 ms     | 0x1ae8 EC_ValidatePublicKey()
 16458 ms     | 0x1ae8 ret:0x0
 16458 ms  0x1ae8 ret:0x7f39928e2820::7f39928e2820  00 e1 6a 93                                      ..j.
 16458 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16458 ms  0x1ae8 cx:0x7f39905d7648
 16459 ms     | 0x1ae8 EC_ValidatePublicKey()
 16461 ms     | 0x1ae8 ret:0x0
 16461 ms  0x1ae8 ret:0x7f3996811820::7f3996811820  50 e6 6a 93                                      P.j.
 16461 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16461 ms  0x1ae8 cx:0x7f39905d7308
 16461 ms     | 0x1ae8 EC_ValidatePublicKey()
 16461 ms     | 0x1ae8 ret:0x0
 16462 ms  0x1ae8 ret:0x7f3996ce9820::7f3996ce9820  c0 a9 33 90                                      ..3.
 16462 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16462 ms  0x1ae8 cx:0x7f39905d7308
 16462 ms     | 0x1ae8 EC_ValidatePublicKey()
 16464 ms     | 0x1ae8 ret:0x0
 16464 ms  0x1ae8 ret:0x7f3997066820::7f3997066820  60 ef 6a 93                                      `.j.
           /* TID 0x1af0 */
 16477 ms  0x1af0 PR_Close()
 16477 ms  0x1af0 fd:0x7f3982997430
           /* TID 0x1ae8 */
 16500 ms  0x1ae8 SSL_ImportFD()
 16500 ms  0x1ae8 ret:0x7f3996e5e5b0
 16500 ms  0x1ae8 SSL_AuthCertificateHook()
 16500 ms  0x1ae8 fd:0x7f3996e5e5b0
 16500 ms  0x1ae8 ret:0x0
 16500 ms  0x1ae8 PR_Connect()
 16500 ms  0x1ae8 fd:0x7f3996e5e5b0
 16507 ms  0x1ae8 SSL_ImportFD()
 16507 ms  0x1ae8 ret:0x7f3996f992e0
 16507 ms  0x1ae8 SSL_AuthCertificateHook()
 16507 ms  0x1ae8 fd:0x7f3996f992e0
 16507 ms  0x1ae8 ret:0x0
 16507 ms  0x1ae8 PR_Connect()
 16507 ms  0x1ae8 fd:0x7f3996f992e0
 16697 ms  0x1ae8 SSL_AuthCertificateComplete()
 16697 ms  0x1ae8 fd:0x7f3991a8b9a0
 16697 ms  0x1ae8 err:0x0
 16700 ms  0x1ae8 SSL_AuthCertificateComplete()
 16700 ms  0x1ae8 fd:0x7f39969e6d90
 16700 ms  0x1ae8 err:0x0
 16705 ms  SECKEY_ECParamsToKeySize()
 16705 ms  0x1ae8 ret:0x100
 16705 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16705 ms  0x1ae8 cx:0x7f39905d7648
 16705 ms     | 0x1ae8 EC_ValidatePublicKey()
 16707 ms     | 0x1ae8 ret:0x0
 16707 ms  0x1ae8 ret:0x7f3997071020::7f3997071020  b0 cf 9f 96                                      ....
 16707 ms  0x1ae8 PK11_PubDeriveWithKDF()
 16707 ms  0x1ae8 seckey:0x7f3997071020
 16707 ms     | 0x1ae8 EC_ValidatePublicKey()
 16708 ms     | 0x1ae8 ret:0x0
 16710 ms  0x1ae8 ret:0x7f39928fe600
 16710 ms  0x1ae8 PK11_DeriveWithFlags()
 16710 ms  0x1ae8 basekey:0x7f39928fe600
 16710 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 16710 ms  0x1ae8 ret:0x7f3992d7b180
 16710 ms  0x1ae8 PK11_Derive()
 16710 ms  0x1ae8 basekey:0x7f3992d7b180
 16710 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 16710 ms  0x1ae8 ret:0x7f39928c2d80
 16710 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16710 ms  0x1ae8 privk:0x7f3997071020::7f3997071020  b0 cf 9f 96                                      ....
 16710 ms  0x1ae8 privk:0x7f3997071020::7f3997071020  e5 e5 e5 e5                                      ....
 16710 ms  0x1ae8 PK11_Encrypt()
 16710 ms  0x1ae8 symkey:0x7f3992dcd100
 16713 ms  0x1ae8 PK11_Encrypt()
 16713 ms  0x1ae8 symkey:0x7f3992dcd100
 16717 ms  SECKEY_ECParamsToKeySize()
 16717 ms  0x1ae8 ret:0x100
 16717 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16717 ms  0x1ae8 cx:0x7f39905d7308
 16718 ms     | 0x1ae8 EC_ValidatePublicKey()
 16720 ms     | 0x1ae8 ret:0x0
 16720 ms  0x1ae8 ret:0x7f3997071820::7f3997071820  70 74 b6 96                                      pt..
 16720 ms  0x1ae8 PK11_PubDeriveWithKDF()
 16720 ms  0x1ae8 seckey:0x7f3997071820
 16720 ms     | 0x1ae8 EC_ValidatePublicKey()
 16725 ms     | 0x1ae8 ret:0x0
 16726 ms  0x1ae8 ret:0x7f39928fe600
 16726 ms  0x1ae8 PK11_DeriveWithFlags()
 16726 ms  0x1ae8 basekey:0x7f39928fe600
 16726 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 16726 ms  0x1ae8 ret:0x7f39928c2680
 16726 ms  0x1ae8 PK11_Derive()
 16726 ms  0x1ae8 basekey:0x7f39928c2680
 16726 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 16726 ms  0x1ae8 ret:0x7f39928c2a80
 16726 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16726 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  70 74 b6 96                                      pt..
 16726 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  e5 e5 e5 e5                                      ....
 16727 ms  0x1ae8 PK11_Encrypt()
 16727 ms  0x1ae8 symkey:0x7f39928c2c80
 16727 ms  0x1ae8 PK11_Encrypt()
 16727 ms  0x1ae8 symkey:0x7f39928c2c80
 16728 ms  0x1ae8 SSL_ImportFD()
 16728 ms  0x1ae8 ret:0x7f3996ff2370
 16728 ms  0x1ae8 SSL_AuthCertificateHook()
 16728 ms  0x1ae8 fd:0x7f3996ff2370
 16728 ms  0x1ae8 ret:0x0
 16728 ms  0x1ae8 PR_Connect()
 16728 ms  0x1ae8 fd:0x7f3996ff2370
 16735 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16735 ms  0x1ae8 cx:0x7f397f70b468
 16735 ms     | 0x1ae8 EC_ValidatePublicKey()
 16735 ms     | 0x1ae8 ret:0x0
 16736 ms  0x1ae8 ret:0x7f3997071820::7f3997071820  d0 cd 9f 96                                      ....
 16736 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16736 ms  0x1ae8 cx:0x7f397f70b468
 16736 ms     | 0x1ae8 EC_ValidatePublicKey()
 16741 ms     | 0x1ae8 ret:0x0
 16741 ms  0x1ae8 ret:0x7f3997073820::7f3997073820  b0 10 bf 96                                      ....
 16744 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16744 ms  0x1ae8 cx:0x7f3991a435c8
 16744 ms     | 0x1ae8 EC_ValidatePublicKey()
 16744 ms     | 0x1ae8 ret:0x0
 16744 ms  0x1ae8 ret:0x7f3997076020::7f3997076020  f0 11 bf 96                                      ....
 16744 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16744 ms  0x1ae8 cx:0x7f3991a435c8
 16745 ms     | 0x1ae8 EC_ValidatePublicKey()
 16746 ms     | 0x1ae8 ret:0x0
 16746 ms  0x1ae8 ret:0x7f3997078020::7f3997078020  d0 13 bf 96                                      ....
 16945 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16945 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  50 e6 6a 93                                      P.j.
 16945 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  e5 e5 e5 e5                                      ....
 16945 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16945 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  00 e1 6a 93                                      ..j.
 16946 ms  0x1ae8 privk:0x7f39928e2820::7f39928e2820  e5 e5 e5 e5                                      ....
 16962 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16962 ms  0x1ae8 privk:0x7f3997066820::7f3997066820  60 ef 6a 93                                      `.j.
 16962 ms  0x1ae8 privk:0x7f3997066820::7f3997066820  e5 e5 e5 e5                                      ....
 16963 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 16963 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  c0 a9 33 90                                      ..3.
 16963 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  e5 e5 e5 e5                                      ....
 16979 ms  0x1ae8 SSL_AuthCertificateComplete()
 16979 ms  0x1ae8 fd:0x7f3996e5e5b0
 16979 ms  0x1ae8 err:0x0
 16986 ms  0x1ae8 SSL_AuthCertificateComplete()
 16986 ms  0x1ae8 fd:0x7f3996f992e0
 16986 ms  0x1ae8 err:0x0
 16987 ms  0x1ae8 SSL_ImportFD()
 16987 ms  0x1ae8 ret:0x7f3996ff2790
 16987 ms  0x1ae8 SSL_AuthCertificateHook()
 16987 ms  0x1ae8 fd:0x7f3996ff2790
 16987 ms  0x1ae8 ret:0x0
 16987 ms  0x1ae8 PR_Connect()
 16987 ms  0x1ae8 fd:0x7f3996ff2790
 16993 ms  SECKEY_ECParamsToKeySize()
 16993 ms  0x1ae8 ret:0x100
 16993 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 16993 ms  0x1ae8 cx:0x7f397f70b468
 16996 ms     | 0x1ae8 EC_ValidatePublicKey()
 17005 ms     | 0x1ae8 ret:0x0
 17005 ms  0x1ae8 ret:0x7f39928ef020::7f39928ef020  00 e1 6a 93                                      ..j.
 17006 ms  0x1ae8 PK11_PubDeriveWithKDF()
 17006 ms  0x1ae8 seckey:0x7f39928ef020
 17006 ms     | 0x1ae8 EC_ValidatePublicKey()
 17009 ms     | 0x1ae8 ret:0x0
 17012 ms  0x1ae8 ret:0x7f39928fe600
 17012 ms  0x1ae8 PK11_DeriveWithFlags()
 17012 ms  0x1ae8 basekey:0x7f39928fe600
 17012 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17012 ms  0x1ae8 ret:0x7f39928c3900
 17012 ms  0x1ae8 PK11_Derive()
 17012 ms  0x1ae8 basekey:0x7f39928c3900
 17012 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17012 ms  0x1ae8 ret:0x7f39923e4b00
 17012 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17012 ms  0x1ae8 privk:0x7f39928ef020::7f39928ef020  00 e1 6a 93                                      ..j.
 17013 ms  0x1ae8 privk:0x7f39928ef020::7f39928ef020  e5 e5 e5 e5                                      ....
 17013 ms  0x1ae8 PK11_Encrypt()
 17013 ms  0x1ae8 symkey:0x7f39928fec00
 17014 ms  0x1ae8 PK11_Encrypt()
 17014 ms  0x1ae8 symkey:0x7f39928fec00
 17015 ms  SECKEY_ECParamsToKeySize()
 17015 ms  0x1ae8 ret:0x100
 17015 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17015 ms  0x1ae8 cx:0x7f3991a435c8
 17016 ms     | 0x1ae8 EC_ValidatePublicKey()
 17018 ms     | 0x1ae8 ret:0x0
 17018 ms  0x1ae8 ret:0x7f3996811820::7f3996811820  00 e1 6a 93                                      ..j.
 17019 ms  0x1ae8 PK11_PubDeriveWithKDF()
 17019 ms  0x1ae8 seckey:0x7f3996811820
 17019 ms     | 0x1ae8 EC_ValidatePublicKey()
 17021 ms     | 0x1ae8 ret:0x0
 17023 ms  0x1ae8 ret:0x7f39928fe600
 17023 ms  0x1ae8 PK11_DeriveWithFlags()
 17023 ms  0x1ae8 basekey:0x7f39928fe600
 17023 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17023 ms  0x1ae8 ret:0x7f39928c2280
 17023 ms  0x1ae8 PK11_Derive()
 17023 ms  0x1ae8 basekey:0x7f39928c2280
 17023 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17023 ms  0x1ae8 ret:0x7f39928c2300
 17023 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17023 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  00 e1 6a 93                                      ..j.
 17023 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  e5 e5 e5 e5                                      ....
 17023 ms  0x1ae8 PK11_Encrypt()
 17023 ms  0x1ae8 symkey:0x7f39928c2400
 17024 ms  0x1ae8 PK11_Encrypt()
 17024 ms  0x1ae8 symkey:0x7f39928c2400
 17024 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17024 ms  0x1ae8 cx:0x7f3991a43768
 17025 ms     | 0x1ae8 EC_ValidatePublicKey()
 17025 ms     | 0x1ae8 ret:0x0
 17025 ms  0x1ae8 ret:0x7f3996811820::7f3996811820  20 54 65 93                                       Te.
 17025 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17025 ms  0x1ae8 cx:0x7f3991a43768
 17026 ms     | 0x1ae8 EC_ValidatePublicKey()
 17028 ms     | 0x1ae8 ret:0x0
 17028 ms  0x1ae8 ret:0x7f3996ce9820::7f3996ce9820  d0 e3 6a 93                                      ..j.
           /* TID 0x1af0 */
 17201 ms  0x1af0 PR_Close()
 17201 ms  0x1af0 fd:0x7f3993690a30
 17205 ms  0x1af0 PR_Close()
 17205 ms  0x1af0 fd:0x7f3991a8b730
           /* TID 0x1ae8 */
 17221 ms  0x1ae8 PK11_Encrypt()
 17221 ms  0x1ae8 symkey:0x7f3992dcd100
 17248 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17248 ms  0x1ae8 privk:0x7f3997073820::7f3997073820  b0 10 bf 96                                      ....
 17248 ms  0x1ae8 privk:0x7f3997073820::7f3997073820  e5 e5 e5 e5                                      ....
 17248 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17248 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  d0 cd 9f 96                                      ....
 17248 ms  0x1ae8 privk:0x7f3997071820::7f3997071820  e5 e5 e5 e5                                      ....
 17260 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17260 ms  0x1ae8 privk:0x7f3997078020::7f3997078020  d0 13 bf 96                                      ....
 17261 ms  0x1ae8 privk:0x7f3997078020::7f3997078020  e5 e5 e5 e5                                      ....
 17261 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17261 ms  0x1ae8 privk:0x7f3997076020::7f3997076020  f0 11 bf 96                                      ....
 17261 ms  0x1ae8 privk:0x7f3997076020::7f3997076020  e5 e5 e5 e5                                      ....
 17280 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17280 ms  0x1ae8 cx:0x7f3991a43de8
 17281 ms     | 0x1ae8 EC_ValidatePublicKey()
 17281 ms     | 0x1ae8 ret:0x0
 17281 ms  0x1ae8 ret:0x7f3997070020::7f3997070020  00 11 5d 90                                      ..].
 17281 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17281 ms  0x1ae8 cx:0x7f3991a43de8
 17281 ms     | 0x1ae8 EC_ValidatePublicKey()
 17283 ms     | 0x1ae8 ret:0x0
 17283 ms  0x1ae8 ret:0x7f3997072820::7f3997072820  10 9f 5f 96                                      .._.
 17407 ms  0x1ae8 PR_Close()
 17407 ms  0x1ae8 fd:0x7f3993690b50
 17407 ms     | 0x1ae8 PK11_Encrypt()
 17407 ms     | 0x1ae8 symkey:0x7f39920cea80
 17407 ms  0x1ae8 PR_Close()
 17407 ms  0x1ae8 fd:0x7f39959ff2b0
 17408 ms     | 0x1ae8 PK11_Encrypt()
 17408 ms     | 0x1ae8 symkey:0x7f39920db700
 17409 ms  0x1ae8 PR_Close()
 17409 ms  0x1ae8 fd:0x7f39920f0b20
 17409 ms     | 0x1ae8 PK11_Encrypt()
 17409 ms     | 0x1ae8 symkey:0x7f39928c3480
 17564 ms  SECKEY_ECParamsToKeySize()
 17564 ms  0x1ae8 ret:0x100
 17564 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17564 ms  0x1ae8 cx:0x7f3991a43de8
 17567 ms     | 0x1ae8 EC_ValidatePublicKey()
 17572 ms     | 0x1ae8 ret:0x0
 17573 ms  0x1ae8 ret:0x7f39969a2020::7f39969a2020  30 1d 8e 96                                      0...
 17574 ms  0x1ae8 PK11_PubDeriveWithKDF()
 17574 ms  0x1ae8 seckey:0x7f39969a2020
 17574 ms     | 0x1ae8 EC_ValidatePublicKey()
 17578 ms     | 0x1ae8 ret:0x0
 17582 ms  0x1ae8 ret:0x7f39928c3400
 17582 ms  0x1ae8 PK11_DeriveWithFlags()
 17582 ms  0x1ae8 basekey:0x7f39928c3400
 17582 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17582 ms  0x1ae8 ret:0x7f39928c3380
 17582 ms  0x1ae8 PK11_Derive()
 17582 ms  0x1ae8 basekey:0x7f39928c3380
 17582 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17582 ms  0x1ae8 ret:0x7f39920db680
 17582 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17582 ms  0x1ae8 privk:0x7f39969a2020::7f39969a2020  30 1d 8e 96                                      0...
 17583 ms  0x1ae8 privk:0x7f39969a2020::7f39969a2020  e5 e5 e5 e5                                      ....
 17583 ms  0x1ae8 PK11_Encrypt()
 17583 ms  0x1ae8 symkey:0x7f39928c3500
 17588 ms  0x1ae8 SSL_AuthCertificateComplete()
 17588 ms  0x1ae8 fd:0x7f3996ff2790
 17588 ms  0x1ae8 err:0x0
           /* TID 0x1af0 */
 17598 ms  0x1af0 PR_Close()
 17598 ms  0x1af0 fd:0x7f3991a8b730
           /* TID 0x1ae8 */
 17607 ms  0x1ae8 PK11_Encrypt()
 17607 ms  0x1ae8 symkey:0x7f39928c2e00
 17608 ms  0x1ae8 PK11_Encrypt()
 17608 ms  0x1ae8 symkey:0x7f39928c2e00
 17610 ms  0x1ae8 PK11_Encrypt()
 17610 ms  0x1ae8 symkey:0x7f39928c2e00
 17611 ms  0x1ae8 PK11_Encrypt()
 17611 ms  0x1ae8 symkey:0x7f39928c2e00
 17636 ms  0x1ae8 PK11_Encrypt()
 17636 ms  0x1ae8 symkey:0x7f39928c2e00
 17637 ms  0x1ae8 PK11_Encrypt()
 17637 ms  0x1ae8 symkey:0x7f39928c2e00
 17834 ms  0x1ae8 SSL_ImportFD()
 17834 ms  0x1ae8 ret:0x7f3996ff64c0
 17834 ms  0x1ae8 SSL_AuthCertificateHook()
 17834 ms  0x1ae8 fd:0x7f3996ff64c0
 17834 ms  0x1ae8 ret:0x0
 17834 ms  0x1ae8 PR_Connect()
 17834 ms  0x1ae8 fd:0x7f3996ff64c0
 17835 ms  0x1ae8 SSL_ImportFD()
 17835 ms  0x1ae8 ret:0x7f3993690160
 17835 ms  0x1ae8 SSL_AuthCertificateHook()
 17835 ms  0x1ae8 fd:0x7f3993690160
 17835 ms  0x1ae8 ret:0x0
 17835 ms  0x1ae8 PR_Connect()
 17835 ms  0x1ae8 fd:0x7f3993690160
 17872 ms  0x1ae8 SSL_ImportFD()
 17872 ms  0x1ae8 ret:0x7f39970f5340
 17872 ms  0x1ae8 SSL_AuthCertificateHook()
 17872 ms  0x1ae8 fd:0x7f39970f5340
 17872 ms  0x1ae8 ret:0x0
 17873 ms  0x1ae8 PR_Connect()
 17873 ms  0x1ae8 fd:0x7f39970f5340
 17955 ms  SECKEY_ECParamsToKeySize()
 17955 ms  0x1ae8 ret:0x100
 17955 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 17955 ms  0x1ae8 cx:0x7f3991a43768
 17957 ms     | 0x1ae8 EC_ValidatePublicKey()
 17961 ms     | 0x1ae8 ret:0x0
 17961 ms  0x1ae8 ret:0x7f399709f020::7f399709f020  00 11 bf 96                                      ....
 17961 ms  0x1ae8 PK11_PubDeriveWithKDF()
 17961 ms  0x1ae8 seckey:0x7f399709f020
 17962 ms     | 0x1ae8 EC_ValidatePublicKey()
 17970 ms     | 0x1ae8 ret:0x0
 17973 ms  0x1ae8 ret:0x7f39928c3400
 17973 ms  0x1ae8 PK11_DeriveWithFlags()
 17973 ms  0x1ae8 basekey:0x7f39928c3400
 17973 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17973 ms  0x1ae8 ret:0x7f39920db600
 17973 ms  0x1ae8 PK11_Derive()
 17973 ms  0x1ae8 basekey:0x7f39920db600
 17973 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 17973 ms  0x1ae8 ret:0x7f39920ce700
 17973 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 17973 ms  0x1ae8 privk:0x7f399709f020::7f399709f020  00 11 bf 96                                      ....
 17974 ms  0x1ae8 privk:0x7f399709f020::7f399709f020  e5 e5 e5 e5                                      ....
 17974 ms  0x1ae8 PK11_Encrypt()
 17974 ms  0x1ae8 symkey:0x7f39920db780
 17975 ms  0x1ae8 SSL_AuthCertificateComplete()
 17975 ms  0x1ae8 fd:0x7f3996ff2370
 17975 ms  0x1ae8 err:0x0
 17976 ms  0x1ae8 PK11_Encrypt()
 17976 ms  0x1ae8 symkey:0x7f39920db780
           /* TID 0x1af0 */
 18044 ms  0x1af0 PR_Close()
 18044 ms  0x1af0 fd:0x7f3992039c10
           /* TID 0x1ae8 */
 18085 ms  0x1ae8 SSL_ImportFD()
 18085 ms  0x1ae8 ret:0x7f39970f5130
 18085 ms  0x1ae8 SSL_AuthCertificateHook()
 18085 ms  0x1ae8 fd:0x7f39970f5130
 18085 ms  0x1ae8 ret:0x0
 18085 ms  0x1ae8 PR_Connect()
 18085 ms  0x1ae8 fd:0x7f39970f5130
 18086 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18086 ms  0x1ae8 cx:0x7f39905d62c8
 18088 ms     | 0x1ae8 EC_ValidatePublicKey()
 18088 ms     | 0x1ae8 ret:0x0
 18088 ms  0x1ae8 ret:0x7f399709e820::7f399709e820  70 74 b6 96                                      pt..
 18094 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18094 ms  0x1ae8 cx:0x7f39905d62c8
 18096 ms     | 0x1ae8 EC_ValidatePublicKey()
 18104 ms     | 0x1ae8 ret:0x0
 18108 ms  0x1ae8 ret:0x7f39970a4820::7f39970a4820  f0 11 bf 96                                      ....
           /* TID 0x1af0 */
 18110 ms  0x1af0 PR_Close()
 18110 ms  0x1af0 fd:0x7f399653e700
           /* TID 0x1ae8 */
 18111 ms  0x1ae8 SSL_ImportFD()
 18112 ms  0x1ae8 ret:0x7f3996ff6ee0
 18112 ms  0x1ae8 SSL_AuthCertificateHook()
 18112 ms  0x1ae8 fd:0x7f3996ff6ee0
 18112 ms  0x1ae8 ret:0x0
 18112 ms  0x1ae8 PR_Connect()
 18112 ms  0x1ae8 fd:0x7f3996ff6ee0
 18123 ms  0x1ae8 SSL_ImportFD()
 18123 ms  0x1ae8 ret:0x7f3999861ac0
 18123 ms  0x1ae8 SSL_AuthCertificateHook()
 18123 ms  0x1ae8 fd:0x7f3999861ac0
 18123 ms  0x1ae8 ret:0x0
 18123 ms  0x1ae8 PR_Connect()
 18123 ms  0x1ae8 fd:0x7f3999861ac0
 18127 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18127 ms  0x1ae8 cx:0x7f3991a442c8
 18127 ms     | 0x1ae8 EC_ValidatePublicKey()
 18127 ms     | 0x1ae8 ret:0x0
 18127 ms  0x1ae8 ret:0x7f39970ac020::7f39970ac020  40 12 bf 96                                      @...
 18128 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18128 ms  0x1ae8 cx:0x7f3991a442c8
 18129 ms     | 0x1ae8 EC_ValidatePublicKey()
 18131 ms     | 0x1ae8 ret:0x0
 18131 ms  0x1ae8 ret:0x7f39970b1020::7f39970b1020  10 15 bf 96                                      ....
 18133 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18133 ms  0x1ae8 cx:0x7f3991a43f88
 18134 ms     | 0x1ae8 EC_ValidatePublicKey()
 18134 ms     | 0x1ae8 ret:0x0
 18134 ms  0x1ae8 ret:0x7f39998f3020::7f39998f3020  a0 16 bf 96                                      ....
 18134 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18134 ms  0x1ae8 cx:0x7f3991a43f88
 18136 ms     | 0x1ae8 EC_ValidatePublicKey()
 18138 ms     | 0x1ae8 ret:0x0
 18138 ms  0x1ae8 ret:0x7f39998f8820::7f39998f8820  90 4c bf 96                                      .L..
 18268 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18268 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  d0 e3 6a 93                                      ..j.
 18268 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  e5 e5 e5 e5                                      ....
 18269 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18269 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  20 54 65 93                                       Te.
 18270 ms  0x1ae8 privk:0x7f3996811820::7f3996811820  e5 e5 e5 e5                                      ....
 18364 ms  SECKEY_ECParamsToKeySize()
 18364 ms  0x1ae8 ret:0x100
 18364 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18364 ms  0x1ae8 cx:0x7f39905d62c8
 18367 ms     | 0x1ae8 EC_ValidatePublicKey()
 18371 ms     | 0x1ae8 ret:0x0
 18372 ms  0x1ae8 ret:0x7f3996ce4820::7f3996ce4820  d0 f8 91 96                                      ....
 18372 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18372 ms  0x1ae8 seckey:0x7f3996ce4820
 18372 ms     | 0x1ae8 EC_ValidatePublicKey()
 18382 ms     | 0x1ae8 ret:0x0
 18388 ms  0x1ae8 ret:0x7f39928c3400
 18388 ms  0x1ae8 PK11_DeriveWithFlags()
 18388 ms  0x1ae8 basekey:0x7f39928c3400
 18388 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18388 ms  0x1ae8 ret:0x7f39920ce680
 18388 ms  0x1ae8 PK11_Derive()
 18388 ms  0x1ae8 basekey:0x7f39920ce680
 18388 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18388 ms  0x1ae8 ret:0x7f39928fe600
 18388 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18388 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  d0 f8 91 96                                      ....
 18388 ms  0x1ae8 privk:0x7f3996ce4820::7f3996ce4820  e5 e5 e5 e5                                      ....
 18389 ms  0x1ae8 PK11_Encrypt()
 18389 ms  0x1ae8 symkey:0x7f39920ceb00
 18389 ms  0x1ae8 SSL_AuthCertificateComplete()
 18389 ms  0x1ae8 fd:0x7f3996ff64c0
 18389 ms  0x1ae8 err:0x0
 18390 ms  0x1ae8 PK11_Encrypt()
 18390 ms  0x1ae8 symkey:0x7f39920ceb00
 18393 ms  SECKEY_ECParamsToKeySize()
 18393 ms  0x1ae8 ret:0x100
 18393 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18393 ms  0x1ae8 cx:0x7f3991a442c8
 18394 ms     | 0x1ae8 EC_ValidatePublicKey()
 18396 ms     | 0x1ae8 ret:0x0
 18396 ms  0x1ae8 ret:0x7f3996ce9820::7f3996ce9820  00 76 b6 96                                      .v..
 18396 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18396 ms  0x1ae8 seckey:0x7f3996ce9820
 18397 ms     | 0x1ae8 EC_ValidatePublicKey()
 18399 ms     | 0x1ae8 ret:0x0
 18401 ms  0x1ae8 ret:0x7f39928c3400
 18401 ms  0x1ae8 PK11_DeriveWithFlags()
 18401 ms  0x1ae8 basekey:0x7f39928c3400
 18401 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18401 ms  0x1ae8 ret:0x7f3992043680
 18401 ms  0x1ae8 PK11_Derive()
 18401 ms  0x1ae8 basekey:0x7f3992043680
 18401 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18401 ms  0x1ae8 ret:0x7f39923e5f80
 18401 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18401 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  00 76 b6 96                                      .v..
 18401 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  e5 e5 e5 e5                                      ....
 18401 ms  0x1ae8 PK11_Encrypt()
 18401 ms  0x1ae8 symkey:0x7f39923e4d00
 18402 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18402 ms  0x1ae8 cx:0x7f3991a44608
 18402 ms     | 0x1ae8 EC_ValidatePublicKey()
 18403 ms     | 0x1ae8 ret:0x0
 18403 ms  0x1ae8 ret:0x7f3996ce9820::7f3996ce9820  c0 0e 91 96                                      ....
 18403 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18403 ms  0x1ae8 cx:0x7f3991a44608
 18403 ms     | 0x1ae8 EC_ValidatePublicKey()
 18405 ms     | 0x1ae8 ret:0x0
 18405 ms  0x1ae8 ret:0x7f39998fc820::7f39998fc820  a0 81 c8 96                                      ....
 18406 ms  0x1ae8 SSL_AuthCertificateComplete()
 18406 ms  0x1ae8 fd:0x7f39970f5340
 18406 ms  0x1ae8 err:0x0
 18406 ms  0x1ae8 PK11_Encrypt()
 18406 ms  0x1ae8 symkey:0x7f39923e4d00
 18406 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18406 ms  0x1ae8 cx:0x7f3991a44468
 18407 ms     | 0x1ae8 EC_ValidatePublicKey()
 18407 ms     | 0x1ae8 ret:0x0
 18407 ms  0x1ae8 ret:0x7f3999913020::7f3999913020  10 85 c8 96                                      ....
 18407 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18407 ms  0x1ae8 cx:0x7f3991a44468
 18408 ms     | 0x1ae8 EC_ValidatePublicKey()
 18409 ms     | 0x1ae8 ret:0x0
 18409 ms  0x1ae8 ret:0x7f3999916020::7f3999916020  d0 88 c8 96                                      ....
 18421 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18421 ms  0x1ae8 cx:0x7f3991a44948
 18421 ms     | 0x1ae8 EC_ValidatePublicKey()
 18421 ms     | 0x1ae8 ret:0x0
 18421 ms  0x1ae8 ret:0x7f399991c020::7f399991c020  80 8d c8 96                                      ....
 18421 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18421 ms  0x1ae8 cx:0x7f3991a44948
 18422 ms     | 0x1ae8 EC_ValidatePublicKey()
 18423 ms     | 0x1ae8 ret:0x0
 18423 ms  0x1ae8 ret:0x7f399a6a2020::7f399a6a2020  50 11 c9 96                                      P...
 18438 ms  0x1ae8 SSL_AuthCertificateComplete()
 18438 ms  0x1ae8 fd:0x7f3993690160
 18438 ms  0x1ae8 err:0x0
 18439 ms  SECKEY_ECParamsToKeySize()
 18439 ms  0x1ae8 ret:0x100
 18439 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18439 ms  0x1ae8 cx:0x7f3991a43f88
 18440 ms     | 0x1ae8 EC_ValidatePublicKey()
 18441 ms     | 0x1ae8 ret:0x0
 18441 ms  0x1ae8 ret:0x7f399a6a8820::7f399a6a8820  f0 e6 cf 96                                      ....
 18441 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18441 ms  0x1ae8 seckey:0x7f399a6a8820
 18441 ms     | 0x1ae8 EC_ValidatePublicKey()
 18443 ms     | 0x1ae8 ret:0x0
 18444 ms  0x1ae8 ret:0x7f39928c3400
 18444 ms  0x1ae8 PK11_DeriveWithFlags()
 18444 ms  0x1ae8 basekey:0x7f39928c3400
 18444 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18444 ms  0x1ae8 ret:0x7f39923e5f00
 18444 ms  0x1ae8 PK11_Derive()
 18444 ms  0x1ae8 basekey:0x7f39923e5f00
 18444 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18444 ms  0x1ae8 ret:0x7f39923e5000
 18444 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18444 ms  0x1ae8 privk:0x7f399a6a8820::7f399a6a8820  f0 e6 cf 96                                      ....
 18444 ms  0x1ae8 privk:0x7f399a6a8820::7f399a6a8820  e5 e5 e5 e5                                      ....
 18446 ms  0x1ae8 PK11_Encrypt()
 18446 ms  0x1ae8 symkey:0x7f3992827500
 18446 ms  0x1ae8 PK11_Encrypt()
 18446 ms  0x1ae8 symkey:0x7f3992827500
           /* TID 0x1af0 */
 18555 ms  0x1af0 PR_Close()
 18555 ms  0x1af0 fd:0x7f3996e5ea60
           /* TID 0x1ae8 */
 18641 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18641 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  f0 11 bf 96                                      ....
 18642 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  e5 e5 e5 e5                                      ....
 18642 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18642 ms  0x1ae8 privk:0x7f399709e820::7f399709e820  70 74 b6 96                                      pt..
 18643 ms  0x1ae8 privk:0x7f399709e820::7f399709e820  e5 e5 e5 e5                                      ....
 18661 ms  SECKEY_ECParamsToKeySize()
 18661 ms  0x1ae8 ret:0x100
 18661 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18661 ms  0x1ae8 cx:0x7f3991a44608
 18663 ms     | 0x1ae8 EC_ValidatePublicKey()
 18669 ms     | 0x1ae8 ret:0x0
 18669 ms  0x1ae8 ret:0x7f39970a3820::7f39970a3820  b0 10 bf 96                                      ....
 18669 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18669 ms  0x1ae8 seckey:0x7f39970a3820
 18669 ms     | 0x1ae8 EC_ValidatePublicKey()
 18674 ms     | 0x1ae8 ret:0x0
 18682 ms  0x1ae8 ret:0x7f39928c3400
 18682 ms  0x1ae8 PK11_DeriveWithFlags()
 18682 ms  0x1ae8 basekey:0x7f39928c3400
 18682 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18683 ms  0x1ae8 ret:0x7f399209cb80
 18683 ms  0x1ae8 PK11_Derive()
 18683 ms  0x1ae8 basekey:0x7f399209cb80
 18683 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18683 ms  0x1ae8 ret:0x7f39923e5180
 18683 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18683 ms  0x1ae8 privk:0x7f39970a3820::7f39970a3820  b0 10 bf 96                                      ....
 18685 ms  0x1ae8 privk:0x7f39970a3820::7f39970a3820  e5 e5 e5 e5                                      ....
 18685 ms  0x1ae8 PK11_Encrypt()
 18685 ms  0x1ae8 symkey:0x7f39923e5a00
 18686 ms  0x1ae8 SSL_AuthCertificateComplete()
 18686 ms  0x1ae8 fd:0x7f3996ff6ee0
 18686 ms  0x1ae8 err:0x0
 18686 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18686 ms  0x1ae8 privk:0x7f39970b1020::7f39970b1020  10 15 bf 96                                      ....
 18686 ms  0x1ae8 privk:0x7f39970b1020::7f39970b1020  e5 e5 e5 e5                                      ....
 18686 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18686 ms  0x1ae8 privk:0x7f39970ac020::7f39970ac020  40 12 bf 96                                      @...
 18687 ms  0x1ae8 privk:0x7f39970ac020::7f39970ac020  e5 e5 e5 e5                                      ....
 18709 ms  0x1ae8 SSL_AuthCertificateComplete()
 18709 ms  0x1ae8 fd:0x7f39970f5130
 18709 ms  0x1ae8 err:0x0
 18710 ms  SECKEY_ECParamsToKeySize()
 18710 ms  0x1ae8 ret:0x100
 18710 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18710 ms  0x1ae8 cx:0x7f3991a44468
 18711 ms     | 0x1ae8 EC_ValidatePublicKey()
 18713 ms     | 0x1ae8 ret:0x0
 18713 ms  0x1ae8 ret:0x7f39970a4820::7f39970a4820  70 74 b6 96                                      pt..
 18713 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18713 ms  0x1ae8 seckey:0x7f39970a4820
 18713 ms     | 0x1ae8 EC_ValidatePublicKey()
 18715 ms     | 0x1ae8 ret:0x0
 18717 ms  0x1ae8 ret:0x7f39928c3400
 18717 ms  0x1ae8 PK11_DeriveWithFlags()
 18717 ms  0x1ae8 basekey:0x7f39928c3400
 18717 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18717 ms  0x1ae8 ret:0x7f3992060e80
 18717 ms  0x1ae8 PK11_Derive()
 18717 ms  0x1ae8 basekey:0x7f3992060e80
 18718 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18718 ms  0x1ae8 ret:0x7f39920ce180
 18718 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18718 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  70 74 b6 96                                      pt..
 18718 ms  0x1ae8 privk:0x7f39970a4820::7f39970a4820  e5 e5 e5 e5                                      ....
 18718 ms  0x1ae8 PK11_Encrypt()
 18718 ms  0x1ae8 symkey:0x7f3992061580
 18722 ms  0x1ae8 SSL_AuthCertificateComplete()
 18722 ms  0x1ae8 fd:0x7f3999861ac0
 18722 ms  0x1ae8 err:0x0
 18725 ms  SECKEY_ECParamsToKeySize()
 18725 ms  0x1ae8 ret:0x100
 18725 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 18725 ms  0x1ae8 cx:0x7f3991a44948
 18726 ms     | 0x1ae8 EC_ValidatePublicKey()
 18727 ms     | 0x1ae8 ret:0x0
 18727 ms  0x1ae8 ret:0x7f39970ab020::7f39970ab020  00 11 bf 96                                      ....
 18727 ms  0x1ae8 PK11_PubDeriveWithKDF()
 18727 ms  0x1ae8 seckey:0x7f39970ab020
 18728 ms     | 0x1ae8 EC_ValidatePublicKey()
 18729 ms     | 0x1ae8 ret:0x0
 18731 ms  0x1ae8 ret:0x7f39928c3400
 18731 ms  0x1ae8 PK11_DeriveWithFlags()
 18731 ms  0x1ae8 basekey:0x7f39928c3400
 18731 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18731 ms  0x1ae8 ret:0x7f39905f5280
 18731 ms  0x1ae8 PK11_Derive()
 18731 ms  0x1ae8 basekey:0x7f39905f5280
 18731 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 18731 ms  0x1ae8 ret:0x7f3992060a80
 18731 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18731 ms  0x1ae8 privk:0x7f39970ab020::7f39970ab020  00 11 bf 96                                      ....
 18731 ms  0x1ae8 privk:0x7f39970ab020::7f39970ab020  e5 e5 e5 e5                                      ....
 18731 ms  0x1ae8 PK11_Encrypt()
 18731 ms  0x1ae8 symkey:0x7f399209c200
 18745 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18745 ms  0x1ae8 privk:0x7f39998f8820::7f39998f8820  90 4c bf 96                                      .L..
 18745 ms  0x1ae8 privk:0x7f39998f8820::7f39998f8820  e5 e5 e5 e5                                      ....
 18745 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18745 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  a0 16 bf 96                                      ....
 18745 ms  0x1ae8 privk:0x7f39998f3020::7f39998f3020  e5 e5 e5 e5                                      ....
 18792 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18792 ms  0x1ae8 privk:0x7f3997072820::7f3997072820  10 9f 5f 96                                      .._.
 18792 ms  0x1ae8 privk:0x7f3997072820::7f3997072820  e5 e5 e5 e5                                      ....
 18792 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18792 ms  0x1ae8 privk:0x7f3997070020::7f3997070020  00 11 5d 90                                      ..].
 18793 ms  0x1ae8 privk:0x7f3997070020::7f3997070020  e5 e5 e5 e5                                      ....
           /* TID 0x1af0 */
 18912 ms  0x1af0 PR_Close()
 18912 ms  0x1af0 fd:0x7f39999fe400
 18916 ms  0x1af0 PR_Close()
 18916 ms  0x1af0 fd:0x7f399987bd60
           /* TID 0x1ae8 */
 18937 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18937 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  a0 81 c8 96                                      ....
 18937 ms  0x1ae8 privk:0x7f39998fc820::7f39998fc820  e5 e5 e5 e5                                      ....
 18937 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 18937 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  c0 0e 91 96                                      ....
 18937 ms  0x1ae8 privk:0x7f3996ce9820::7f3996ce9820  e5 e5 e5 e5                                      ....
 19018 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 19018 ms  0x1ae8 privk:0x7f3999916020::7f3999916020  d0 88 c8 96                                      ....
 19019 ms  0x1ae8 privk:0x7f3999916020::7f3999916020  e5 e5 e5 e5                                      ....
 19019 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 19019 ms  0x1ae8 privk:0x7f3999913020::7f3999913020  10 85 c8 96                                      ....
 19019 ms  0x1ae8 privk:0x7f3999913020::7f3999913020  e5 e5 e5 e5                                      ....
 19022 ms  0x1ae8 PK11_Encrypt()
 19022 ms  0x1ae8 symkey:0x7f39928c2e00
 19029 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 19029 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  50 11 c9 96                                      P...
 19030 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  e5 e5 e5 e5                                      ....
 19030 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 19030 ms  0x1ae8 privk:0x7f399991c020::7f399991c020  80 8d c8 96                                      ....
 19030 ms  0x1ae8 privk:0x7f399991c020::7f399991c020  e5 e5 e5 e5                                      ....
           /* TID 0x1af0 */
 19041 ms  0x1af0 PR_Close()
 19041 ms  0x1af0 fd:0x7f39920f07f0
 19042 ms  0x1af0 PR_Close()
 19042 ms  0x1af0 fd:0x7f39920f0fa0
 19047 ms  0x1af0 PR_Close()
 19047 ms  0x1af0 fd:0x7f39920f07f0
           /* TID 0x1ae8 */
 19062 ms  0x1ae8 PK11_Encrypt()
 19062 ms  0x1ae8 symkey:0x7f39928c2e00
 19077 ms  0x1ae8 PK11_Encrypt()
 19077 ms  0x1ae8 symkey:0x7f39928c2e00
 19078 ms  0x1ae8 PK11_Encrypt()
 19078 ms  0x1ae8 symkey:0x7f39928c2e00
 19080 ms  0x1ae8 PK11_Encrypt()
 19080 ms  0x1ae8 symkey:0x7f39928c2e00
           /* TID 0x1b4c */
 19385 ms  0x1b4c PR_Close()
 19385 ms  0x1b4c fd:0x7f39999fe6a0
 19389 ms  0x1b4c PR_Close()
 19389 ms  0x1b4c fd:0x7f39999fe6a0
           /* TID 0x1ae8 */
 19411 ms  0x1ae8 PR_Close()
 19411 ms  0x1ae8 fd:0x7f3991a8bf70
 19411 ms     | 0x1ae8 PK11_Encrypt()
 19411 ms     | 0x1ae8 symkey:0x7f39920cd700
           /* TID 0x1af0 */
 19639 ms  0x1af0 PR_Close()
 19639 ms  0x1af0 fd:0x7f3991a8bfa0
 19639 ms  0x1af0 PR_Close()
 19639 ms  0x1af0 fd:0x7f3991a8bfa0
 19639 ms  0x1af0 PR_Close()
 19639 ms  0x1af0 fd:0x7f39920ea040
           /* TID 0x1ae8 */
 19659 ms  0x1ae8 PK11_Encrypt()
 19659 ms  0x1ae8 symkey:0x7f39928c2400
 19661 ms  0x1ae8 PK11_Encrypt()
 19661 ms  0x1ae8 symkey:0x7f3992dcd100
 19678 ms  0x1ae8 SSL_ImportFD()
 19678 ms  0x1ae8 ret:0x7f399b8c86a0
 19678 ms  0x1ae8 SSL_AuthCertificateHook()
 19678 ms  0x1ae8 fd:0x7f399b8c86a0
 19678 ms  0x1ae8 ret:0x0
 19679 ms  0x1ae8 PR_Connect()
 19679 ms  0x1ae8 fd:0x7f399b8c86a0
 19679 ms  0x1ae8 SSL_ImportFD()
 19679 ms  0x1ae8 ret:0x7f399b8c8790
 19679 ms  0x1ae8 SSL_AuthCertificateHook()
 19679 ms  0x1ae8 fd:0x7f399b8c8790
 19679 ms  0x1ae8 ret:0x0
 19679 ms  0x1ae8 PR_Connect()
 19679 ms  0x1ae8 fd:0x7f399b8c8790
 19679 ms  0x1ae8 SSL_ImportFD()
 19679 ms  0x1ae8 ret:0x7f399b8c8100
 19679 ms  0x1ae8 SSL_AuthCertificateHook()
 19679 ms  0x1ae8 fd:0x7f399b8c8100
 19679 ms  0x1ae8 ret:0x0
 19679 ms  0x1ae8 PR_Connect()
 19679 ms  0x1ae8 fd:0x7f399b8c8100
 19679 ms  0x1ae8 SSL_ImportFD()
 19679 ms  0x1ae8 ret:0x7f399b8c8190
 19679 ms  0x1ae8 SSL_AuthCertificateHook()
 19679 ms  0x1ae8 fd:0x7f399b8c8190
 19679 ms  0x1ae8 ret:0x0
 19679 ms  0x1ae8 PR_Connect()
 19679 ms  0x1ae8 fd:0x7f399b8c8190
 19730 ms  0x1ae8 SSL_ImportFD()
 19730 ms  0x1ae8 ret:0x7f399a4c0850
 19730 ms  0x1ae8 SSL_AuthCertificateHook()
 19730 ms  0x1ae8 fd:0x7f399a4c0850
 19730 ms  0x1ae8 ret:0x0
 19730 ms  0x1ae8 PR_Connect()
 19730 ms  0x1ae8 fd:0x7f399a4c0850
           /* TID 0x1af0 */
 19903 ms  0x1af0 PR_Close()
 19903 ms  0x1af0 fd:0x7f399b5d1d00
           /* TID 0x1ae8 */
 19934 ms  0x1ae8 SSL_ImportFD()
 19934 ms  0x1ae8 ret:0x7f399d70c430
 19934 ms  0x1ae8 SSL_AuthCertificateHook()
 19934 ms  0x1ae8 fd:0x7f399d70c430
 19934 ms  0x1ae8 ret:0x0
 19934 ms  0x1ae8 PR_Connect()
 19934 ms  0x1ae8 fd:0x7f399d70c430
 19934 ms  0x1ae8 SSL_ImportFD()
 19934 ms  0x1ae8 ret:0x7f399a4c05e0
 19934 ms  0x1ae8 SSL_AuthCertificateHook()
 19934 ms  0x1ae8 fd:0x7f399a4c05e0
 19934 ms  0x1ae8 ret:0x0
 19934 ms  0x1ae8 PR_Connect()
 19934 ms  0x1ae8 fd:0x7f399a4c05e0
 19934 ms  0x1ae8 SSL_ImportFD()
 19934 ms  0x1ae8 ret:0x7f399d70c490
 19934 ms  0x1ae8 SSL_AuthCertificateHook()
 19934 ms  0x1ae8 fd:0x7f399d70c490
 19934 ms  0x1ae8 ret:0x0
 19934 ms  0x1ae8 PR_Connect()
 19934 ms  0x1ae8 fd:0x7f399d70c490
 19934 ms  0x1ae8 SSL_ImportFD()
 19934 ms  0x1ae8 ret:0x7f399d70c4c0
 19934 ms  0x1ae8 SSL_AuthCertificateHook()
 19934 ms  0x1ae8 fd:0x7f399d70c4c0
 19934 ms  0x1ae8 ret:0x0
 19934 ms  0x1ae8 PR_Connect()
 19934 ms  0x1ae8 fd:0x7f399d70c4c0
 19937 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19937 ms  0x1ae8 cx:0x7f399aaf0468
 19938 ms     | 0x1ae8 EC_ValidatePublicKey()
 19938 ms     | 0x1ae8 ret:0x0
 19938 ms  0x1ae8 ret:0x7f3997080020::7f3997080020  d0 f8 91 96                                      ....
 19938 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19938 ms  0x1ae8 cx:0x7f399aaf0468
 19939 ms     | 0x1ae8 EC_ValidatePublicKey()
 19940 ms     | 0x1ae8 ret:0x0
 19940 ms  0x1ae8 ret:0x7f3999919020::7f3999919020  a0 81 c8 96                                      ....
 19959 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19959 ms  0x1ae8 cx:0x7f39905d67a8
 19959 ms     | 0x1ae8 EC_ValidatePublicKey()
 19959 ms     | 0x1ae8 ret:0x0
 19959 ms  0x1ae8 ret:0x7f399a6a0020::7f399a6a0020  10 85 c8 96                                      ....
 19959 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19959 ms  0x1ae8 cx:0x7f39905d67a8
 19960 ms     | 0x1ae8 EC_ValidatePublicKey()
 19963 ms     | 0x1ae8 ret:0x0
 19964 ms  0x1ae8 ret:0x7f399aaec020::7f399aaec020  d0 88 c8 96                                      ....
 19970 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19970 ms  0x1ae8 cx:0x7f3991a45e68
 19975 ms     | 0x1ae8 EC_ValidatePublicKey()
 19975 ms     | 0x1ae8 ret:0x0
 19975 ms  0x1ae8 ret:0x7f399ab6b820::7f399ab6b820  80 8d c8 96                                      ....
 19975 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19975 ms  0x1ae8 cx:0x7f3991a45e68
 19976 ms     | 0x1ae8 EC_ValidatePublicKey()
 19977 ms     | 0x1ae8 ret:0x0
 19977 ms  0x1ae8 ret:0x7f399ab6e020::7f399ab6e020  50 11 c9 96                                      P...
 19983 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19983 ms  0x1ae8 cx:0x7f3991a45b28
 19983 ms     | 0x1ae8 EC_ValidatePublicKey()
 19983 ms     | 0x1ae8 ret:0x0
 19983 ms  0x1ae8 ret:0x7f399ab71820::7f399ab71820  70 1e c9 96                                      p...
 19984 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19984 ms  0x1ae8 cx:0x7f3991a45b28
 19984 ms     | 0x1ae8 EC_ValidatePublicKey()
 19986 ms     | 0x1ae8 ret:0x0
 19986 ms  0x1ae8 ret:0x7f399ab73820::7f399ab73820  30 1d e1 96                                      0...
 19988 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19988 ms  0x1ae8 cx:0x7f3991a45cc8
 19989 ms     | 0x1ae8 EC_ValidatePublicKey()
 19989 ms     | 0x1ae8 ret:0x0
 19989 ms  0x1ae8 ret:0x7f399ab76020::7f399ab76020  70 1e e1 96                                      p...
 19989 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 19989 ms  0x1ae8 cx:0x7f3991a45cc8
 19990 ms     | 0x1ae8 EC_ValidatePublicKey()
 19991 ms     | 0x1ae8 ret:0x0
 19991 ms  0x1ae8 ret:0x7f399ab79820::7f399ab79820  90 32 e3 96                                      .2..
 20150 ms  SECKEY_ECParamsToKeySize()
 20150 ms  0x1ae8 ret:0x100
 20150 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20150 ms  0x1ae8 cx:0x7f399aaf0468
 20150 ms     | 0x1ae8 EC_ValidatePublicKey()
 20152 ms     | 0x1ae8 ret:0x0
 20152 ms  0x1ae8 ret:0x7f399b211820::7f399b211820  90 2c e5 96                                      .,..
 20152 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20152 ms  0x1ae8 seckey:0x7f399b211820
 20152 ms     | 0x1ae8 EC_ValidatePublicKey()
 20153 ms     | 0x1ae8 ret:0x0
 20158 ms  0x1ae8 ret:0x7f3992060f00
 20158 ms  0x1ae8 PK11_DeriveWithFlags()
 20158 ms  0x1ae8 basekey:0x7f3992060f00
 20158 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20158 ms  0x1ae8 ret:0x7f399209d880
 20158 ms  0x1ae8 PK11_Derive()
 20158 ms  0x1ae8 basekey:0x7f399209d880
 20158 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20158 ms  0x1ae8 ret:0x7f39928c3400
 20158 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20158 ms  0x1ae8 privk:0x7f399b211820::7f399b211820  90 2c e5 96                                      .,..
 20158 ms  0x1ae8 privk:0x7f399b211820::7f399b211820  e5 e5 e5 e5                                      ....
 20158 ms  0x1ae8 PK11_Encrypt()
 20158 ms  0x1ae8 symkey:0x7f39920cd880
           /* TID 0x1af0 */
 20185 ms  0x1af0 PR_Close()
 20185 ms  0x1af0 fd:0x7f399b8c80d0
           /* TID 0x1b42 */
 20186 ms  0x1b42 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 20186 ms  0x1b42 ret:0x0
           /* TID 0x1ae8 */
 20186 ms  0x1ae8 SSL_AuthCertificateComplete()
 20186 ms  0x1ae8 fd:0x7f399a4c0850
 20186 ms  0x1ae8 err:0x0
 20187 ms  0x1ae8 PK11_Encrypt()
 20187 ms  0x1ae8 symkey:0x7f39920cd880
 20218 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20218 ms  0x1ae8 cx:0x7f39b8ba72c8
 20219 ms     | 0x1ae8 EC_ValidatePublicKey()
 20219 ms     | 0x1ae8 ret:0x0
 20219 ms  0x1ae8 ret:0x7f399b20d820::7f399b20d820  00 2b e5 96                                      .+..
 20219 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20219 ms  0x1ae8 cx:0x7f39b8ba72c8
 20221 ms     | 0x1ae8 EC_ValidatePublicKey()
 20223 ms     | 0x1ae8 ret:0x0
 20223 ms  0x1ae8 ret:0x7f399b211820::7f399b211820  e0 2c e5 96                                      .,..
 20224 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20224 ms  0x1ae8 cx:0x7f39b8ba84a8
 20226 ms     | 0x1ae8 EC_ValidatePublicKey()
 20226 ms     | 0x1ae8 ret:0x0
 20226 ms  0x1ae8 ret:0x7f399b217020::7f399b217020  00 d1 e5 96                                      ....
 20226 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20226 ms  0x1ae8 cx:0x7f39b8ba84a8
 20227 ms     | 0x1ae8 EC_ValidatePublicKey()
 20231 ms     | 0x1ae8 ret:0x0
 20231 ms  0x1ae8 ret:0x7f399b21b020::7f399b21b020  c0 14 e6 96                                      ....
 20231 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20231 ms  0x1ae8 cx:0x7f399aaf0e28
 20232 ms     | 0x1ae8 EC_ValidatePublicKey()
 20232 ms     | 0x1ae8 ret:0x0
 20232 ms  0x1ae8 ret:0x7f399b362820::7f399b362820  f0 86 e7 96                                      ....
 20232 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20232 ms  0x1ae8 cx:0x7f399aaf0e28
 20233 ms     | 0x1ae8 EC_ValidatePublicKey()
 20236 ms     | 0x1ae8 ret:0x0
 20236 ms  0x1ae8 ret:0x7f399b364820::7f399b364820  70 3e ea 96                                      p>..
 20236 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20236 ms  0x1ae8 cx:0x7f39923d10a8
 20237 ms     | 0x1ae8 EC_ValidatePublicKey()
 20237 ms     | 0x1ae8 ret:0x0
 20237 ms  0x1ae8 ret:0x7f399b367020::7f399b367020  b0 3f ea 96                                      .?..
 20237 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20237 ms  0x1ae8 cx:0x7f39923d10a8
 20238 ms     | 0x1ae8 EC_ValidatePublicKey()
 20241 ms     | 0x1ae8 ret:0x0
 20241 ms  0x1ae8 ret:0x7f399b369020::7f399b369020  20 ee ec 96                                       ...
 20247 ms  SECKEY_ECParamsToKeySize()
 20247 ms  0x1ae8 ret:0xff
 20247 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20247 ms  0x1ae8 cx:0x7f39905d67a8
 20247 ms     | 0x1ae8 EC_ValidatePublicKey()
 20247 ms     | 0x1ae8 ret:0x0
 20247 ms  0x1ae8 ret:0x7f399b36c020::7f399b36c020  e0 77 fa 96                                      .w..
 20247 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20247 ms  0x1ae8 seckey:0x7f399b36c020
 20247 ms     | 0x1ae8 EC_ValidatePublicKey()
 20247 ms     | 0x1ae8 ret:0x0
 20248 ms  0x1ae8 ret:0x7f3992060f00
 20248 ms  0x1ae8 PK11_DeriveWithFlags()
 20248 ms  0x1ae8 basekey:0x7f3992060f00
 20248 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20248 ms  0x1ae8 ret:0x7f39936fcd00
 20248 ms  0x1ae8 PK11_Derive()
 20248 ms  0x1ae8 basekey:0x7f39936fcd00
 20248 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20248 ms  0x1ae8 ret:0x7f39936fce80
 20248 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20248 ms  0x1ae8 privk:0x7f399b36c020::7f399b36c020  e0 77 fa 96                                      .w..
 20248 ms  0x1ae8 privk:0x7f399b36c020::7f399b36c020  e5 e5 e5 e5                                      ....
 20248 ms  0x1ae8 PK11_Encrypt()
 20248 ms  0x1ae8 symkey:0x7f399504b180
 20249 ms  0x1ae8 SSL_AuthCertificateComplete()
 20249 ms  0x1ae8 fd:0x7f399b8c86a0
 20249 ms  0x1ae8 err:0x0
 20249 ms  0x1ae8 PK11_Encrypt()
 20249 ms  0x1ae8 symkey:0x7f399504b180
 20249 ms  0x1ae8 PK11_Encrypt()
 20249 ms  0x1ae8 symkey:0x7f399504b180
 20272 ms  SECKEY_ECParamsToKeySize()
 20272 ms  0x1ae8 ret:0xff
 20272 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20272 ms  0x1ae8 cx:0x7f3991a45e68
 20272 ms     | 0x1ae8 EC_ValidatePublicKey()
 20272 ms     | 0x1ae8 ret:0x0
 20272 ms  0x1ae8 ret:0x7f399b36e020::7f399b36e020  20 7e fa 96                                       ~..
 20272 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20272 ms  0x1ae8 seckey:0x7f399b36e020
 20273 ms     | 0x1ae8 EC_ValidatePublicKey()
 20273 ms     | 0x1ae8 ret:0x0
 20273 ms  0x1ae8 ret:0x7f3992060f00
 20273 ms  0x1ae8 PK11_DeriveWithFlags()
 20273 ms  0x1ae8 basekey:0x7f3992060f00
 20273 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20273 ms  0x1ae8 ret:0x7f39936fce00
 20273 ms  0x1ae8 PK11_Derive()
 20273 ms  0x1ae8 basekey:0x7f39936fce00
 20273 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20273 ms  0x1ae8 ret:0x7f399504b700
 20273 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20273 ms  0x1ae8 privk:0x7f399b36e020::7f399b36e020  20 7e fa 96                                       ~..
 20273 ms  0x1ae8 privk:0x7f399b36e020::7f399b36e020  e5 e5 e5 e5                                      ....
 20273 ms  0x1ae8 PK11_Encrypt()
 20273 ms  0x1ae8 symkey:0x7f399504bb80
 20274 ms  0x1ae8 SSL_AuthCertificateComplete()
 20274 ms  0x1ae8 fd:0x7f399b8c8190
 20274 ms  0x1ae8 err:0x0
 20274 ms  0x1ae8 PK11_Encrypt()
 20274 ms  0x1ae8 symkey:0x7f399504bb80
 20274 ms  0x1ae8 PK11_Encrypt()
 20274 ms  0x1ae8 symkey:0x7f399504bb80
 20283 ms  SECKEY_ECParamsToKeySize()
 20283 ms  0x1ae8 ret:0xff
 20283 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20283 ms  0x1ae8 cx:0x7f3991a45b28
 20284 ms     | 0x1ae8 EC_ValidatePublicKey()
 20284 ms     | 0x1ae8 ret:0x0
 20284 ms  0x1ae8 ret:0x7f399b370020::7f399b370020  b0 7f fa 96                                      ....
 20286 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20286 ms  0x1ae8 seckey:0x7f399b370020
 20286 ms     | 0x1ae8 EC_ValidatePublicKey()
 20286 ms     | 0x1ae8 ret:0x0
 20288 ms  0x1ae8 ret:0x7f3992060f00
 20288 ms  0x1ae8 PK11_DeriveWithFlags()
 20288 ms  0x1ae8 basekey:0x7f3992060f00
 20288 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20288 ms  0x1ae8 ret:0x7f39936f4600
 20288 ms  0x1ae8 PK11_Derive()
 20288 ms  0x1ae8 basekey:0x7f39936f4600
 20288 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20288 ms  0x1ae8 ret:0x7f39936f4780
 20288 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20288 ms  0x1ae8 privk:0x7f399b370020::7f399b370020  b0 7f fa 96                                      ....
 20288 ms  0x1ae8 privk:0x7f399b370020::7f399b370020  e5 e5 e5 e5                                      ....
 20289 ms  0x1ae8 PK11_Encrypt()
 20289 ms  0x1ae8 symkey:0x7f39936fbe80
 20289 ms  0x1ae8 SSL_AuthCertificateComplete()
 20289 ms  0x1ae8 fd:0x7f399b8c8790
 20289 ms  0x1ae8 err:0x0
 20291 ms  SECKEY_ECParamsToKeySize()
 20291 ms  0x1ae8 ret:0xff
 20291 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20291 ms  0x1ae8 cx:0x7f3991a45cc8
 20292 ms     | 0x1ae8 EC_ValidatePublicKey()
 20292 ms     | 0x1ae8 ret:0x0
 20292 ms  0x1ae8 ret:0x7f399b370820::7f399b370820  c0 a9 fb 96                                      ....
 20292 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20292 ms  0x1ae8 seckey:0x7f399b370820
 20292 ms     | 0x1ae8 EC_ValidatePublicKey()
 20292 ms     | 0x1ae8 ret:0x0
 20293 ms  0x1ae8 ret:0x7f3992060f00
 20293 ms  0x1ae8 PK11_DeriveWithFlags()
 20293 ms  0x1ae8 basekey:0x7f3992060f00
 20293 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20293 ms  0x1ae8 ret:0x7f399504b400
 20293 ms  0x1ae8 PK11_Derive()
 20293 ms  0x1ae8 basekey:0x7f399504b400
 20293 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20293 ms  0x1ae8 ret:0x7f399504c000
 20293 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20293 ms  0x1ae8 privk:0x7f399b370820::7f399b370820  c0 a9 fb 96                                      ....
 20294 ms  0x1ae8 privk:0x7f399b370820::7f399b370820  e5 e5 e5 e5                                      ....
 20294 ms  0x1ae8 PK11_Encrypt()
 20294 ms  0x1ae8 symkey:0x7f3995079300
 20297 ms  0x1ae8 PK11_Encrypt()
 20297 ms  0x1ae8 symkey:0x7f39936fbe80
 20297 ms  0x1ae8 PK11_Encrypt()
 20297 ms  0x1ae8 symkey:0x7f39936fbe80
 20297 ms  0x1ae8 SSL_AuthCertificateComplete()
 20297 ms  0x1ae8 fd:0x7f399b8c8100
 20297 ms  0x1ae8 err:0x0
 20298 ms  0x1ae8 PK11_Encrypt()
 20298 ms  0x1ae8 symkey:0x7f3995079300
 20298 ms  0x1ae8 PK11_Encrypt()
 20298 ms  0x1ae8 symkey:0x7f39936fbe80
           /* TID 0x1af0 */
 20325 ms  0x1af0 PR_Close()
 20325 ms  0x1af0 fd:0x7f3996f991c0
 20325 ms  0x1af0 PR_Close()
 20325 ms  0x1af0 fd:0x7f399d7b3310
 20325 ms  0x1af0 PR_Close()
 20325 ms  0x1af0 fd:0x7f399d7b33a0
 20325 ms  0x1af0 PR_Close()
 20325 ms  0x1af0 fd:0x7f399d7b3460
 20325 ms  0x1af0 PR_Close()
 20325 ms  0x1af0 fd:0x7f399d7b3520
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f3996f991c0
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3310
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b33a0
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3460
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3520
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3580
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3640
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b36a0
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3700
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3790
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b37f0
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b3850
 20326 ms  0x1af0 PR_Close()
 20326 ms  0x1af0 fd:0x7f399d7b38b0
           /* TID 0x1ae8 */
 20365 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20365 ms  0x1ae8 privk:0x7f3999919020::7f3999919020  a0 81 c8 96                                      ....
 20366 ms  0x1ae8 privk:0x7f3999919020::7f3999919020  e5 e5 e5 e5                                      ....
 20366 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20366 ms  0x1ae8 privk:0x7f3997080020::7f3997080020  d0 f8 91 96                                      ....
 20366 ms  0x1ae8 privk:0x7f3997080020::7f3997080020  e5 e5 e5 e5                                      ....
           /* TID 0x1b4c */
 20423 ms  0x1b4c PR_Close()
 20423 ms  0x1b4c fd:0x7f399a412670
           /* TID 0x1ae8 */
 20510 ms  SECKEY_ECParamsToKeySize()
 20510 ms  0x1ae8 ret:0xff
 20510 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20510 ms  0x1ae8 cx:0x7f39b8ba72c8
 20511 ms     | 0x1ae8 EC_ValidatePublicKey()
 20511 ms     | 0x1ae8 ret:0x0
 20511 ms  0x1ae8 ret:0x7f3999917020::7f3999917020  60 40 bf 96                                      `@..
 20511 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20511 ms  0x1ae8 seckey:0x7f3999917020
 20511 ms     | 0x1ae8 EC_ValidatePublicKey()
 20511 ms     | 0x1ae8 ret:0x0
 20515 ms  0x1ae8 ret:0x7f3992060f00
 20515 ms  0x1ae8 PK11_DeriveWithFlags()
 20515 ms  0x1ae8 basekey:0x7f3992060f00
 20515 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20515 ms  0x1ae8 ret:0x7f39950f4380
 20515 ms  0x1ae8 PK11_Derive()
 20515 ms  0x1ae8 basekey:0x7f39950f4380
 20515 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20515 ms  0x1ae8 ret:0x7f39950f4f80
 20515 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20515 ms  0x1ae8 privk:0x7f3999917020::7f3999917020  60 40 bf 96                                      `@..
 20516 ms  0x1ae8 privk:0x7f3999917020::7f3999917020  e5 e5 e5 e5                                      ....
 20516 ms  0x1ae8 PK11_Encrypt()
 20516 ms  0x1ae8 symkey:0x7f39950f5580
 20517 ms  0x1ae8 SSL_AuthCertificateComplete()
 20517 ms  0x1ae8 fd:0x7f399a4c05e0
 20517 ms  0x1ae8 err:0x0
 20517 ms  0x1ae8 PK11_Encrypt()
 20517 ms  0x1ae8 symkey:0x7f39950f5580
 20522 ms  SECKEY_ECParamsToKeySize()
 20522 ms  0x1ae8 ret:0xff
 20522 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20522 ms  0x1ae8 cx:0x7f39b8ba84a8
 20523 ms     | 0x1ae8 EC_ValidatePublicKey()
 20523 ms     | 0x1ae8 ret:0x0
 20523 ms  0x1ae8 ret:0x7f399b361020::7f399b361020  c0 34 e3 96                                      .4..
 20523 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20523 ms  0x1ae8 seckey:0x7f399b361020
 20523 ms     | 0x1ae8 EC_ValidatePublicKey()
 20523 ms     | 0x1ae8 ret:0x0
 20524 ms  0x1ae8 ret:0x7f3992060f00
 20524 ms  0x1ae8 PK11_DeriveWithFlags()
 20524 ms  0x1ae8 basekey:0x7f3992060f00
 20524 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20524 ms  0x1ae8 ret:0x7f39959f0080
 20524 ms  0x1ae8 PK11_Derive()
 20524 ms  0x1ae8 basekey:0x7f39959f0080
 20524 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20524 ms  0x1ae8 ret:0x7f39959f0100
 20524 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20524 ms  0x1ae8 privk:0x7f399b361020::7f399b361020  c0 34 e3 96                                      .4..
 20524 ms  0x1ae8 privk:0x7f399b361020::7f399b361020  e5 e5 e5 e5                                      ....
 20524 ms  0x1ae8 PK11_Encrypt()
 20524 ms  0x1ae8 symkey:0x7f39959f0380
 20527 ms  0x1ae8 SSL_AuthCertificateComplete()
 20527 ms  0x1ae8 fd:0x7f399d70c490
 20527 ms  0x1ae8 err:0x0
 20527 ms  0x1ae8 PK11_Encrypt()
 20527 ms  0x1ae8 symkey:0x7f39959f0380
 20530 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20530 ms  0x1ae8 privk:0x7f399aaec020::7f399aaec020  d0 88 c8 96                                      ....
 20530 ms  0x1ae8 privk:0x7f399aaec020::7f399aaec020  e5 e5 e5 e5                                      ....
 20530 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20530 ms  0x1ae8 privk:0x7f399a6a0020::7f399a6a0020  10 85 c8 96                                      ....
 20530 ms  0x1ae8 privk:0x7f399a6a0020::7f399a6a0020  e5 e5 e5 e5                                      ....
 20531 ms  0x1ae8 PK11_Encrypt()
 20531 ms  0x1ae8 symkey:0x7f399504b180
 20532 ms  SECKEY_ECParamsToKeySize()
 20532 ms  0x1ae8 ret:0xff
 20532 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20532 ms  0x1ae8 cx:0x7f399aaf0e28
 20533 ms     | 0x1ae8 EC_ValidatePublicKey()
 20533 ms     | 0x1ae8 ret:0x0
 20533 ms  0x1ae8 ret:0x7f399a6a2020::7f399a6a2020  c0 84 c8 96                                      ....
 20533 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20533 ms  0x1ae8 seckey:0x7f399a6a2020
 20533 ms     | 0x1ae8 EC_ValidatePublicKey()
 20533 ms     | 0x1ae8 ret:0x0
 20534 ms  0x1ae8 ret:0x7f3992060f00
 20534 ms  0x1ae8 PK11_DeriveWithFlags()
 20534 ms  0x1ae8 basekey:0x7f3992060f00
 20534 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20534 ms  0x1ae8 ret:0x7f39950f5d80
 20535 ms  0x1ae8 PK11_Derive()
 20535 ms  0x1ae8 basekey:0x7f39950f5d80
 20535 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20535 ms  0x1ae8 ret:0x7f39959f0600
 20535 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20535 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  c0 84 c8 96                                      ....
 20535 ms  0x1ae8 privk:0x7f399a6a2020::7f399a6a2020  e5 e5 e5 e5                                      ....
 20535 ms  0x1ae8 PK11_Encrypt()
 20535 ms  0x1ae8 symkey:0x7f39959f0800
 20535 ms  0x1ae8 SSL_AuthCertificateComplete()
 20535 ms  0x1ae8 fd:0x7f399d70c430
 20535 ms  0x1ae8 err:0x0
 20535 ms  0x1ae8 PK11_Encrypt()
 20535 ms  0x1ae8 symkey:0x7f39959f0800
 20545 ms  SECKEY_ECParamsToKeySize()
 20545 ms  0x1ae8 ret:0xff
 20545 ms  0x1ae8 SECKEY_CreateECPrivateKey()
 20545 ms  0x1ae8 cx:0x7f39923d10a8
 20545 ms     | 0x1ae8 EC_ValidatePublicKey()
 20545 ms     | 0x1ae8 ret:0x0
 20545 ms  0x1ae8 ret:0x7f399b361020::7f399b361020  60 85 c8 96                                      `...
 20546 ms  0x1ae8 PK11_PubDeriveWithKDF()
 20546 ms  0x1ae8 seckey:0x7f399b361020
 20546 ms     | 0x1ae8 EC_ValidatePublicKey()
 20546 ms     | 0x1ae8 ret:0x0
 20546 ms  0x1ae8 ret:0x7f3992060f00
 20546 ms  0x1ae8 PK11_DeriveWithFlags()
 20546 ms  0x1ae8 basekey:0x7f3992060f00
 20546 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20546 ms  0x1ae8 ret:0x7f39959f0980
 20546 ms  0x1ae8 PK11_Derive()
 20546 ms  0x1ae8 basekey:0x7f39959f0980
 20546 ms     | 0x1ae8 PK11_DeriveWithTemplate()
 20546 ms  0x1ae8 ret:0x7f39959f0a00
 20546 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20546 ms  0x1ae8 privk:0x7f399b361020::7f399b361020  60 85 c8 96                                      `...
 20547 ms  0x1ae8 privk:0x7f399b361020::7f399b361020  e5 e5 e5 e5                                      ....
 20547 ms  0x1ae8 PK11_Encrypt()
 20547 ms  0x1ae8 symkey:0x7f39959f0c80
 20547 ms  0x1ae8 SSL_AuthCertificateComplete()
 20547 ms  0x1ae8 fd:0x7f399d70c4c0
 20547 ms  0x1ae8 err:0x0
 20548 ms  0x1ae8 PK11_Encrypt()
 20548 ms  0x1ae8 symkey:0x7f39959f0c80
 20566 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20566 ms  0x1ae8 privk:0x7f399ab6e020::7f399ab6e020  50 11 c9 96                                      P...
 20566 ms  0x1ae8 privk:0x7f399ab6e020::7f399ab6e020  e5 e5 e5 e5                                      ....
 20566 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20566 ms  0x1ae8 privk:0x7f399ab6b820::7f399ab6b820  80 8d c8 96                                      ....
 20566 ms  0x1ae8 privk:0x7f399ab6b820::7f399ab6b820  e5 e5 e5 e5                                      ....
 20566 ms  0x1ae8 PK11_Encrypt()
 20566 ms  0x1ae8 symkey:0x7f399504bb80
 20573 ms  0x1ae8 PK11_Encrypt()
 20573 ms  0x1ae8 symkey:0x7f39920cd880
 20578 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20578 ms  0x1ae8 privk:0x7f399ab73820::7f399ab73820  30 1d e1 96                                      0...
 20578 ms  0x1ae8 privk:0x7f399ab73820::7f399ab73820  e5 e5 e5 e5                                      ....
 20579 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20579 ms  0x1ae8 privk:0x7f399ab71820::7f399ab71820  70 1e c9 96                                      p...
 20579 ms  0x1ae8 privk:0x7f399ab71820::7f399ab71820  e5 e5 e5 e5                                      ....
 20579 ms  0x1ae8 PK11_Encrypt()
 20579 ms  0x1ae8 symkey:0x7f39936fbe80
 20587 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20587 ms  0x1ae8 privk:0x7f399ab79820::7f399ab79820  90 32 e3 96                                      .2..
 20587 ms  0x1ae8 privk:0x7f399ab79820::7f399ab79820  e5 e5 e5 e5                                      ....
 20587 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20587 ms  0x1ae8 privk:0x7f399ab76020::7f399ab76020  70 1e e1 96                                      p...
 20587 ms  0x1ae8 privk:0x7f399ab76020::7f399ab76020  e5 e5 e5 e5                                      ....
 20587 ms  0x1ae8 PR_Close()
 20587 ms  0x1ae8 fd:0x7f399b8c8100
 20587 ms     | 0x1ae8 PK11_Encrypt()
 20587 ms     | 0x1ae8 symkey:0x7f3995079300
 20791 ms  0x1ae8 PK11_Encrypt()
 20791 ms  0x1ae8 symkey:0x7f39920cd880
 20801 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20801 ms  0x1ae8 privk:0x7f399b211820::7f399b211820  e0 2c e5 96                                      .,..
 20801 ms  0x1ae8 privk:0x7f399b211820::7f399b211820  e5 e5 e5 e5                                      ....
 20801 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20801 ms  0x1ae8 privk:0x7f399b20d820::7f399b20d820  00 2b e5 96                                      .+..
 20802 ms  0x1ae8 privk:0x7f399b20d820::7f399b20d820  e5 e5 e5 e5                                      ....
 20802 ms  0x1ae8 PR_Close()
 20802 ms  0x1ae8 fd:0x7f399a4c05e0
 20802 ms     | 0x1ae8 PK11_Encrypt()
 20802 ms     | 0x1ae8 symkey:0x7f39950f5580
 20813 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20813 ms  0x1ae8 privk:0x7f399b21b020::7f399b21b020  c0 14 e6 96                                      ....
 20813 ms  0x1ae8 privk:0x7f399b21b020::7f399b21b020  e5 e5 e5 e5                                      ....
 20813 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20813 ms  0x1ae8 privk:0x7f399b217020::7f399b217020  00 d1 e5 96                                      ....
 20813 ms  0x1ae8 privk:0x7f399b217020::7f399b217020  e5 e5 e5 e5                                      ....
 20813 ms  0x1ae8 PR_Close()
 20813 ms  0x1ae8 fd:0x7f399d70c490
 20813 ms     | 0x1ae8 PK11_Encrypt()
 20813 ms     | 0x1ae8 symkey:0x7f39959f0380
 20825 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20825 ms  0x1ae8 privk:0x7f399b364820::7f399b364820  70 3e ea 96                                      p>..
 20826 ms  0x1ae8 privk:0x7f399b364820::7f399b364820  e5 e5 e5 e5                                      ....
 20826 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20826 ms  0x1ae8 privk:0x7f399b362820::7f399b362820  f0 86 e7 96                                      ....
 20826 ms  0x1ae8 privk:0x7f399b362820::7f399b362820  e5 e5 e5 e5                                      ....
 20826 ms  0x1ae8 PR_Close()
 20826 ms  0x1ae8 fd:0x7f399d70c430
 20826 ms     | 0x1ae8 PK11_Encrypt()
 20826 ms     | 0x1ae8 symkey:0x7f39959f0800
 20842 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20842 ms  0x1ae8 privk:0x7f399b369020::7f399b369020  20 ee ec 96                                       ...
 20842 ms  0x1ae8 privk:0x7f399b369020::7f399b369020  e5 e5 e5 e5                                      ....
 20842 ms  0x1ae8 SECKEY_DestroyPrivateKey()
 20842 ms  0x1ae8 privk:0x7f399b367020::7f399b367020  b0 3f ea 96                                      .?..
 20842 ms  0x1ae8 privk:0x7f399b367020::7f399b367020  e5 e5 e5 e5                                      ....
 20843 ms  0x1ae8 PR_Close()
 20843 ms  0x1ae8 fd:0x7f399d70c4c0
 20843 ms     | 0x1ae8 PK11_Encrypt()
 20843 ms     | 0x1ae8 symkey:0x7f39959f0c80
           /* TID 0x1af0 */
 21102 ms  0x1af0 PR_Close()
 21102 ms  0x1af0 fd:0x7f399d70c820
 21142 ms  0x1af0 PR_Close()
 21142 ms  0x1af0 fd:0x7f3996f991c0
 21158 ms  0x1af0 PR_Close()
 21158 ms  0x1af0 fd:0x7f39920f0fa0
           /* TID 0x1b4c */
 21291 ms  0x1b4c PR_Close()
 21291 ms  0x1b4c fd:0x7f3999861220
 21292 ms  0x1b4c PR_Close()
 21292 ms  0x1b4c fd:0x7f3999861220
           /* TID 0x1af0 */
 21447 ms  0x1af0 PR_Close()
 21447 ms  0x1af0 fd:0x7f39920f0fa0
           /* TID 0x1ae8 */
 21460 ms  0x1ae8 PK11_Encrypt()
 21460 ms  0x1ae8 symkey:0x7f39928c2400
 21468 ms  0x1ae8 PR_Close()
 21468 ms  0x1ae8 fd:0x7f399157ad00
           /* TID 0x1add */
 21471 ms  0x1add EC_ValidatePublicKey()
 21472 ms  0x1add ret:0x0
 21472 ms  0x1add EC_ValidatePublicKey()
 21474 ms  0x1add ret:0x0
 21474 ms  0x1add EC_ValidatePublicKey()
 21480 ms  0x1add ret:0x0
 21480 ms  0x1add EC_ValidatePublicKey()
 21483 ms  0x1add ret:0x0
 21484 ms  0x1add EC_ValidatePublicKey()
 21490 ms  0x1add ret:0x0
 21490 ms  0x1add EC_ValidatePublicKey()
 21492 ms  0x1add ret:0x0
 21492 ms  0x1add EC_ValidatePublicKey()
 21493 ms  0x1add ret:0x0
 21493 ms  0x1add EC_ValidatePublicKey()
 21495 ms  0x1add ret:0x0
 21495 ms  0x1add EC_ValidatePublicKey()
 21497 ms  0x1add ret:0x0
 21497 ms  0x1add EC_ValidatePublicKey()
 21498 ms  0x1add ret:0x0
           /* TID 0x1ae8 */
 21499 ms  0x1ae8 PK11_Encrypt()
 21499 ms  0x1ae8 symkey:0x7f39920dc800
 21500 ms  0x1ae8 PK11_Encrypt()
 21500 ms  0x1ae8 symkey:0x7f399209c900
 21500 ms  0x1ae8 PK11_Encrypt()
 21500 ms  0x1ae8 symkey:0x7f39928c2e00
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f39920cdc80
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f3992060d00
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f399504bb80
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f399504b180
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f39928c3200
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f39936fbe80
 21501 ms  0x1ae8 PK11_Encrypt()
 21501 ms  0x1ae8 symkey:0x7f39928c2700
 21501 ms  0x1ae8 PR_Close()
 21501 ms  0x1ae8 fd:0x7f3996ff64c0
 21501 ms     | 0x1ae8 PK11_Encrypt()
 21501 ms     | 0x1ae8 symkey:0x7f39920ceb00
 21502 ms  0x1ae8 PR_Close()
 21502 ms  0x1ae8 fd:0x7f3993690160
 21502 ms     | 0x1ae8 PK11_Encrypt()
 21502 ms     | 0x1ae8 symkey:0x7f3992827500
 21502 ms  0x1ae8 PR_Close()
 21502 ms  0x1ae8 fd:0x7f3996e5e5b0
 21502 ms     | 0x1ae8 PK11_Encrypt()
 21502 ms     | 0x1ae8 symkey:0x7f39928fec00
 21502 ms  0x1ae8 PR_Close()
 21502 ms  0x1ae8 fd:0x7f39969e6d90
 21502 ms     | 0x1ae8 PK11_Encrypt()
 21502 ms     | 0x1ae8 symkey:0x7f39928c2c80
 21502 ms  0x1ae8 PR_Close()
 21502 ms  0x1ae8 fd:0x7f3991a8b9a0
 21502 ms     | 0x1ae8 PK11_Encrypt()
 21502 ms     | 0x1ae8 symkey:0x7f3992dcd100
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f3992039a30
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f39920ce200
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f39970f5340
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f39923e4d00
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f3996ff2370
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f39920db780
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f399289d880
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f39920dcc80
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f39905f7430
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f39928c3d00
 21503 ms  0x1ae8 PR_Close()
 21503 ms  0x1ae8 fd:0x7f3991a8b280
 21503 ms     | 0x1ae8 PK11_Encrypt()
 21503 ms     | 0x1ae8 symkey:0x7f3992828580
 21504 ms  0x1ae8 PR_Close()
 21504 ms  0x1ae8 fd:0x7f3991a96f70
 21504 ms     | 0x1ae8 PK11_Encrypt()
 21504 ms     | 0x1ae8 symkey:0x7f39923e5800
 21504 ms  0x1ae8 PR_Close()
 21504 ms  0x1ae8 fd:0x7f3990338fa0
 21504 ms     | 0x1ae8 PK11_Encrypt()
 21504 ms     | 0x1ae8 symkey:0x7f39923e4280
 21504 ms  0x1ae8 PR_Close()
 21504 ms  0x1ae8 fd:0x7f3991a96e50
 21504 ms     | 0x1ae8 PK11_Encrypt()
 21504 ms     | 0x1ae8 symkey:0x7f39928fe200
 21504 ms  0x1ae8 PR_Close()
 21504 ms  0x1ae8 fd:0x7f39923e12e0
 21504 ms     | 0x1ae8 PK11_Encrypt()
 21504 ms     | 0x1ae8 symkey:0x7f39928fe680
 21504 ms  0x1ae8 PR_Close()
 21504 ms  0x1ae8 fd:0x7f39920f0c10
 21504 ms     | 0x1ae8 PK11_Encrypt()
 21504 ms     | 0x1ae8 symkey:0x7f3992d7ac00
 21505 ms  0x1ae8 PR_Close()
 21505 ms  0x1ae8 fd:0x7f39920f01f0
 21505 ms     | 0x1ae8 PK11_Encrypt()
 21505 ms     | 0x1ae8 symkey:0x7f39928c3a00
 21505 ms  0x1ae8 PR_Close()
 21505 ms  0x1ae8 fd:0x7f39905f7130
 21505 ms     | 0x1ae8 PK11_Encrypt()
 21505 ms     | 0x1ae8 symkey:0x7f397f6e1f00
 21505 ms  0x1ae8 PR_Close()
 21505 ms  0x1ae8 fd:0x7f3991a8bca0
 21505 ms  0x1ae8 PR_Close()
 21505 ms  0x1ae8 fd:0x7f397f6e0a30
 21505 ms     | 0x1ae8 PK11_Encrypt()
 21505 ms     | 0x1ae8 symkey:0x7f397f6e2400
           /* TID 0x1b35 */
 21505 ms  0x1b35 PR_Close()
 21505 ms  0x1b35 fd:0x7f397f6e08e0
 21505 ms  0x1b35 PR_Close()
 21505 ms  0x1b35 fd:0x7f397f6e08e0
           /* TID 0x1ae8 */
 21517 ms  0x1ae8 PR_Close()
 21517 ms  0x1ae8 fd:0x7f397f727430
 21517 ms     | 0x1ae8 PK11_Encrypt()
 21517 ms     | 0x1ae8 symkey:0x7f39829bfd80
 21517 ms  0x1ae8 PR_Close()
 21517 ms  0x1ae8 fd:0x7f397f727070
 21517 ms  0x1ae8 PR_Close()
 21517 ms  0x1ae8 fd:0x7f39829c84f0
 21517 ms     | 0x1ae8 PK11_Encrypt()
 21517 ms     | 0x1ae8 symkey:0x7f39829bef00
 21518 ms  0x1ae8 PR_Close()
 21518 ms  0x1ae8 fd:0x7f3990bdaa00
 21518 ms  0x1ae8 PR_Close()
 21518 ms  0x1ae8 fd:0x7f3990583730
 21518 ms     | 0x1ae8 PK11_Encrypt()
 21518 ms     | 0x1ae8 symkey:0x7f39923e5380
 21518 ms  0x1ae8 PR_Close()
 21518 ms  0x1ae8 fd:0x7f39920eafd0
 21518 ms     | 0x1ae8 PK11_Encrypt()
 21518 ms     | 0x1ae8 symkey:0x7f399057dc80
 21518 ms  0x1ae8 PR_Close()
 21518 ms  0x1ae8 fd:0x7f39970f5130
 21518 ms     | 0x1ae8 PK11_Encrypt()
 21518 ms     | 0x1ae8 symkey:0x7f3992061580
 21518 ms  0x1ae8 PR_Close()
 21518 ms  0x1ae8 fd:0x7f3996ff6ee0
 21518 ms     | 0x1ae8 PK11_Encrypt()
 21518 ms     | 0x1ae8 symkey:0x7f39923e5a00
 21519 ms  0x1ae8 PR_Close()
 21519 ms  0x1ae8 fd:0x7f3996ff2790
 21519 ms     | 0x1ae8 PK11_Encrypt()
 21519 ms     | 0x1ae8 symkey:0x7f39928c3500
 21519 ms  0x1ae8 PR_Close()
 21519 ms  0x1ae8 fd:0x7f3999861ac0
 21519 ms     | 0x1ae8 PK11_Encrypt()
 21519 ms     | 0x1ae8 symkey:0x7f399209c200
 21519 ms  0x1ae8 PR_Close()
 21519 ms  0x1ae8 fd:0x7f39920eaf40
 21519 ms     | 0x1ae8 PK11_Encrypt()
 21519 ms     | 0x1ae8 symkey:0x7f399209c900
 21519 ms  0x1ae8 PR_Close()
 21519 ms  0x1ae8 fd:0x7f39969fd850
 21519 ms     | 0x1ae8 PK11_Encrypt()
 21519 ms     | 0x1ae8 symkey:0x7f39920cdc80
 21520 ms  0x1ae8 PR_Close()
 21520 ms  0x1ae8 fd:0x7f39920eaeb0
 21520 ms     | 0x1ae8 PK11_Encrypt()
 21520 ms     | 0x1ae8 symkey:0x7f3992060d00
 21522 ms  0x1ae8 PR_Close()
 21522 ms  0x1ae8 fd:0x7f399b8c8190
 21522 ms     | 0x1ae8 PK11_Encrypt()
 21522 ms     | 0x1ae8 symkey:0x7f399504bb80
 21522 ms  0x1ae8 PR_Close()
 21522 ms  0x1ae8 fd:0x7f399b8c8790
 21522 ms     | 0x1ae8 PK11_Encrypt()
 21522 ms     | 0x1ae8 symkey:0x7f39936fbe80
 21522 ms  0x1ae8 PR_Close()
 21522 ms  0x1ae8 fd:0x7f39959ff910
 21522 ms     | 0x1ae8 PK11_Encrypt()
 21522 ms     | 0x1ae8 symkey:0x7f39928c2e00
 21522 ms  0x1ae8 PR_Close()
 21522 ms  0x1ae8 fd:0x7f39950b5fd0
 21522 ms     | 0x1ae8 PK11_Encrypt()
 21522 ms     | 0x1ae8 symkey:0x7f39928c2700
           /* TID 0x1add */
 21529 ms  0x1add PR_Close()
 21529 ms  0x1add fd:0x7f39920ead00
 21529 ms  0x1add PR_Close()
 21529 ms  0x1add fd:0x7f397f727580
           /* TID 0x1ae8 */
 21530 ms  0x1ae8 PR_Close()
 21530 ms  0x1ae8 fd:0x7f399289d7c0
 21530 ms     | 0x1ae8 PK11_Encrypt()
 21530 ms     | 0x1ae8 symkey:0x7f39928c3200
 21530 ms  0x1ae8 PR_Close()
 21530 ms  0x1ae8 fd:0x7f399b8c86a0
 21530 ms     | 0x1ae8 PK11_Encrypt()
 21530 ms     | 0x1ae8 symkey:0x7f399504b180
 21530 ms  0x1ae8 PR_Close()
 21530 ms  0x1ae8 fd:0x7f399653eac0
 21530 ms     | 0x1ae8 PK11_Encrypt()
 21530 ms     | 0x1ae8 symkey:0x7f39920dc800
 21531 ms  0x1ae8 SSL_ImportFD()
 21531 ms  0x1ae8 ret:0x7f397f727430
 21531 ms  0x1ae8 SSL_AuthCertificateHook()
 21531 ms  0x1ae8 fd:0x7f397f727430
 21531 ms  0x1ae8 ret:0x0
 21531 ms  0x1ae8 PR_Connect()
 21531 ms  0x1ae8 fd:0x7f397f727430
           /* TID 0x1add */
 21531 ms  0x1add PR_Close()
 21531 ms  0x1add fd:0x7f397f727b80
 21531 ms  0x1add PR_Close()
 21531 ms  0x1add fd:0x7f39829c8610
 21532 ms  0x1add PR_Close()
 21532 ms  0x1add fd:0x7f397f727b80
 21532 ms  0x1add PR_Close()
 21532 ms  0x1add fd:0x7f39829c8610
           /* TID 0x1b4c */
 21534 ms  0x1b4c PR_Close()
 21534 ms  0x1b4c fd:0x7f39829c8610
           /* TID 0x1add */
 21567 ms  0x1add PR_Close()
 21567 ms  0x1add fd:0x7f397f727b80
 21569 ms  0x1add PR_Close()
 21569 ms  0x1add fd:0x7f3991a8b610
 21570 ms  0x1add PR_Close()
 21570 ms  0x1add fd:0x7f397f727b80
 21570 ms  0x1add PR_Close()
 21570 ms  0x1add fd:0x7f3990bdaa00
 21571 ms  0x1add PR_Close()
 21571 ms  0x1add fd:0x7f399b8c89a0
 21571 ms  0x1add PR_Close()
 21571 ms  0x1add fd:0x7f399b8c88b0
 21571 ms  0x1add PR_Close()
 21571 ms  0x1add fd:0x7f399b8c8a60
 21573 ms  0x1add PR_Close()
 21573 ms  0x1add fd:0x7f3990583940
 21577 ms  0x1add PR_Close()
 21577 ms  0x1add fd:0x7f3990583940
 21579 ms  0x1add PR_Close()
 21579 ms  0x1add fd:0x7f397f727b80
 21579 ms  0x1add PR_Close()
 21579 ms  0x1add fd:0x7f39905f7550
 21579 ms  0x1add PR_Close()
 21579 ms  0x1add fd:0x7f397f727b80
 21580 ms  0x1add PR_Close()
 21580 ms  0x1add fd:0x7f39905f7550
 21586 ms  0x1add PR_Close()
 21586 ms  0x1add fd:0x7f3990bdaa00
 21587 ms  0x1add PR_Close()
 21587 ms  0x1add fd:0x7f3990bdaa00
 21589 ms  0x1add PR_Close()
 21589 ms  0x1add fd:0x7f397f727b80
 21589 ms  0x1add PR_Close()
 21589 ms  0x1add fd:0x7f3991a8b790
 21590 ms  0x1add PR_Close()
 21590 ms  0x1add fd:0x7f397f727b80
 21590 ms  0x1add PR_Close()
 21590 ms  0x1add fd:0x7f3991a8b790
 21592 ms  0x1add PR_Close()
 21592 ms  0x1add fd:0x7f3991a8b880
 21594 ms  0x1add PR_Close()
 21594 ms  0x1add fd:0x7f3991a8b880
 21602 ms  0x1add PR_Close()
 21602 ms  0x1add fd:0x7f3992039280
 21603 ms  0x1add PR_Close()
 21603 ms  0x1add fd:0x7f3992039280
 21609 ms  0x1add PR_Close()
 21609 ms  0x1add fd:0x7f39920392b0
           /* TID 0x1b4c */
 21622 ms  0x1b4c PR_Close()
 21622 ms  0x1b4c fd:0x7f39829c8e80
 21624 ms  0x1b4c PR_Close()
 21624 ms  0x1b4c fd:0x7f39829c8e80
           /* TID 0x1add */
 21625 ms  0x1add PR_Close()
 21625 ms  0x1add fd:0x7f397f727b80
 21625 ms  0x1add PR_Close()
 21625 ms  0x1add fd:0x7f39829c8ee0
           /* TID 0x1ae8 */
 21630 ms  0x1ae8 PK11_Encrypt()
 21630 ms  0x1ae8 symkey:0x7f39920cd880
           /* TID 0x1b4c */
 21631 ms  0x1b4c PR_Close()
 21631 ms  0x1b4c fd:0x7f3990558160
 21674 ms  0x1b4c PR_Close()
 21674 ms  0x1b4c fd:0x7f397f727fa0
           /* TID 0x1ae8 */
 21681 ms  0x1ae8 PR_Close()
 21681 ms  0x1ae8 fd:0x7f3996f992e0
 21682 ms     | 0x1ae8 PK11_Encrypt()
 21682 ms     | 0x1ae8 symkey:0x7f39928c2400
 21689 ms  0x1ae8 SSL_ImportFD()
 21689 ms  0x1ae8 ret:0x7f399289de20
 21689 ms  0x1ae8 SSL_AuthCertificateHook()
 21689 ms  0x1ae8 fd:0x7f399289de20
 21689 ms  0x1ae8 ret:0x0
 21689 ms  0x1ae8 PR_Connect()
 21689 ms  0x1ae8 fd:0x7f399289de20
           /* TID 0x1ae2 */
 21697 ms  0x1ae2 PR_Close()
 21697 ms  0x1ae2 fd:0x7f399a687a30
           /* TID 0x1ae8 */
 21698 ms  0x1ae8 SSL_ImportFD()
 21698 ms  0x1ae8 ret:0x7f3992039850
 21698 ms  0x1ae8 SSL_AuthCertificateHook()
 21698 ms  0x1ae8 fd:0x7f3992039850
 21698 ms  0x1ae8 ret:0x0
 21698 ms  0x1ae8 PR_Connect()
 21698 ms  0x1ae8 fd:0x7f3992039850
 21698 ms  0x1ae8 PR_Close()
 21698 ms  0x1ae8 fd:0x7f3992039850
 21699 ms  0x1ae8 PR_Close()
 21699 ms  0x1ae8 fd:0x7f397f727430
 21699 ms  0x1ae8 PR_Close()
 21699 ms  0x1ae8 fd:0x7f399289de20
 21699 ms  0x1ae8 SSL_ImportFD()
 21699 ms  0x1ae8 ret:0x7f397f727580
 21699 ms  0x1ae8 SSL_AuthCertificateHook()
 21699 ms  0x1ae8 fd:0x7f397f727580
 21699 ms  0x1ae8 ret:0x0
 21699 ms  0x1ae8 PR_Connect()
 21699 ms  0x1ae8 fd:0x7f397f727580
 21699 ms  0x1ae8 PR_Close()
 21699 ms  0x1ae8 fd:0x7f397f727580
           /* TID 0x1add */
 21701 ms  0x1add PR_Close()
 21701 ms  0x1add fd:0x7f397f727b80
 21701 ms  0x1add PR_Close()
 21701 ms  0x1add fd:0x7f397f6e08b0
           /* TID 0x1b4c */
 21715 ms  0x1b4c PR_Close()
 21715 ms  0x1b4c fd:0x7f397f727070
           /* TID 0x1ae2 */
 21726 ms  0x1ae2 PR_Close()
 21726 ms  0x1ae2 fd:0x7f3996b1d790
           /* TID 0x1ae8 */
 21730 ms  0x1ae8 PR_Close()
 21730 ms  0x1ae8 fd:0x7f399a4c0850
 21730 ms     | 0x1ae8 PK11_Encrypt()
 21730 ms     | 0x1ae8 symkey:0x7f39920cd880
 21730 ms  0x1ae8 PR_Close()
 21730 ms  0x1ae8 fd:0x7f3990bdadf0
           /* TID 0x1b35 */
 21732 ms  0x1b35 PR_Close()
 21732 ms  0x1b35 fd:0x7f39905c22e0
 21732 ms  0x1b35 PR_Close()
 21732 ms  0x1b35 fd:0x7f397f6e08b0
 21732 ms  0x1b35 PR_Close()
 21732 ms  0x1b35 fd:0x7f397f6e08b0
 21732 ms  0x1b35 PR_Close()
 21732 ms  0x1b35 fd:0x7f397f6e08b0
           /* TID 0x1b4c */
 21732 ms  0x1b4c PR_Close()
 21732 ms  0x1b4c fd:0x7f3990583340
           /* TID 0x1af0 */
 21737 ms  0x1af0 PR_Close()
 21737 ms  0x1af0 fd:0x7f3992039850
 21737 ms  0x1af0 PR_Close()
 21737 ms  0x1af0 fd:0x7f3992039970
           /* TID 0x1ae2 */
 21745 ms  0x1ae2 PR_Close()
 21745 ms  0x1ae2 fd:0x7f399a687df0
           /* TID 0x1add */
 21748 ms  0x1add PR_Close()
 21748 ms  0x1add fd:0x7f397f6e0b80
 21748 ms  0x1add PR_Close()
 21748 ms  0x1add fd:0x7f3990583610
           /* TID 0x1b4c */
 21750 ms  0x1b4c PR_Close()
 21750 ms  0x1b4c fd:0x7f39905832e0
 21752 ms  0x1b4c PR_Close()
 21752 ms  0x1b4c fd:0x7f397f727c40
 21789 ms  0x1b4c PR_Close()
 21789 ms  0x1b4c fd:0x7f397f7274c0
 21790 ms  0x1b4c PR_Close()
 21790 ms  0x1b4c fd:0x7f397f7274c0
 21813 ms  0x1b4c PR_Close()
 21813 ms  0x1b4c fd:0x7f39829c8e50
 21814 ms  0x1b4c PR_Close()
 21814 ms  0x1b4c fd:0x7f39829c8fd0
 21823 ms  0x1b4c PR_Close()
 21823 ms  0x1b4c fd:0x7f3990338dc0
 21827 ms  0x1b4c PR_Close()
 21827 ms  0x1b4c fd:0x7f3990583490
 21834 ms  0x1b4c PR_Close()
 21834 ms  0x1b4c fd:0x7f39905837c0
 21845 ms  0x1b4c PR_Close()
 21845 ms  0x1b4c fd:0x7f39905839a0
 21846 ms  0x1b4c PR_Close()
 21846 ms  0x1b4c fd:0x7f39905839a0
           /* TID 0x1add */
 22006 ms  0x1add PR_Close()
 22006 ms  0x1add fd:0x7f397f6e0850
 22006 ms  0x1add PR_Close()
 22006 ms  0x1add fd:0x7f397f6e0850
 22011 ms  0x1add PR_Close()
 22011 ms  0x1add fd:0x7f39b8bda130
 22011 ms  0x1add PR_Close()
 22011 ms  0x1add fd:0x7f39b8bda190
Process terminated
