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
           /* TID 0x1a2e */
   349 ms  0x1a2e SSL_ImportFD()
   349 ms  0x1a2e ret:0x7f56df378610
   349 ms  0x1a2e SSL_AuthCertificateHook()
   349 ms  0x1a2e fd:0x7f56df378610
   349 ms  0x1a2e ret:0x0
   349 ms  0x1a2e PR_Connect()
   349 ms  0x1a2e fd:0x7f56df378610
           /* TID 0x1a47 */
   471 ms  0x1a47 PR_Close()
   471 ms  0x1a47 fd:0x7f56df378a30
   486 ms  0x1a47 PR_Close()
   486 ms  0x1a47 fd:0x7f56df378a30
           /* TID 0x1a2e */
   549 ms  0x1a2e SECKEY_CreateECPrivateKey()
   549 ms  0x1a2e cx:0x7f56df36b648
   550 ms     | 0x1a2e EC_ValidatePublicKey()
   550 ms     | 0x1a2e ret:0x0
   551 ms  0x1a2e ret:0x7f56df2cc820::7f56df2cc820  70 7e 37 df                                      p~7.
   551 ms  0x1a2e SECKEY_CreateECPrivateKey()
   551 ms  0x1a2e cx:0x7f56df36b648
   553 ms     | 0x1a2e EC_ValidatePublicKey()
   558 ms     | 0x1a2e ret:0x0
   558 ms  0x1a2e ret:0x7f56df2ce820::7f56df2ce820  b0 7f 37 df                                      ..7.
           /* TID 0x1a47 */
   736 ms  0x1a47 PR_Close()
   736 ms  0x1a47 fd:0x7f56df3786d0
           /* TID 0x1a2e */
   764 ms  SECKEY_ECParamsToKeySize()
   764 ms  0x1a2e ret:0x100
   764 ms  0x1a2e SECKEY_CreateECPrivateKey()
   764 ms  0x1a2e cx:0x7f56df36b648
   766 ms     | 0x1a2e EC_ValidatePublicKey()
   771 ms     | 0x1a2e ret:0x0
   771 ms  0x1a2e ret:0x7f56df2d7820::7f56df2d7820  50 76 3d df                                      Pv=.
   771 ms  0x1a2e PK11_PubDeriveWithKDF()
   771 ms  0x1a2e seckey:0x7f56df2d7820
   771 ms     | 0x1a2e EC_ValidatePublicKey()
   776 ms     | 0x1a2e ret:0x0
   780 ms  0x1a2e ret:0x7f56e0c0ed00
   780 ms  0x1a2e PK11_DeriveWithFlags()
   780 ms  0x1a2e basekey:0x7f56e0c0ed00
   780 ms     | 0x1a2e PK11_DeriveWithTemplate()
   780 ms  0x1a2e ret:0x7f56e042b800
   780 ms  0x1a2e PK11_Derive()
   780 ms  0x1a2e basekey:0x7f56e042b800
   781 ms     | 0x1a2e PK11_DeriveWithTemplate()
   781 ms  0x1a2e ret:0x7f56e042b880
   781 ms  0x1a2e SECKEY_DestroyPrivateKey()
   781 ms  0x1a2e privk:0x7f56df2d7820::7f56df2d7820  50 76 3d df                                      Pv=.
   781 ms  0x1a2e privk:0x7f56df2d7820::7f56df2d7820  e5 e5 e5 e5                                      ....
   781 ms  0x1a2e PK11_Encrypt()
   781 ms  0x1a2e symkey:0x7f56e042ba80
   782 ms  0x1a2e PR_Connect()
   782 ms  0x1a2e fd:0x7f56df378b80
           /* TID 0x1a89 */
   835 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   835 ms  0x1a89 ret:0x0
           /* TID 0x1a36 */
   836 ms  0x1a36 PR_Close()
   836 ms  0x1a36 fd:0x7f56df378a60
           /* TID 0x1a2e */
   837 ms  0x1a2e SSL_AuthCertificateComplete()
   837 ms  0x1a2e fd:0x7f56df378610
   837 ms  0x1a2e err:0x0
   837 ms  0x1a2e PK11_Encrypt()
   837 ms  0x1a2e symkey:0x7f56e042ba80
   981 ms  0x1a2e SECKEY_DestroyPrivateKey()
   981 ms  0x1a2e privk:0x7f56df2ce820::7f56df2ce820  b0 7f 37 df                                      ..7.
   982 ms  0x1a2e privk:0x7f56df2ce820::7f56df2ce820  e5 e5 e5 e5                                      ....
   982 ms  0x1a2e SECKEY_DestroyPrivateKey()
   982 ms  0x1a2e privk:0x7f56df2cc820::7f56df2cc820  70 7e 37 df                                      p~7.
   982 ms  0x1a2e privk:0x7f56df2cc820::7f56df2cc820  e5 e5 e5 e5                                      ....
  1188 ms  0x1a2e SSL_ImportFD()
  1188 ms  0x1a2e ret:0x7f56df378ca0
  1188 ms  0x1a2e SSL_AuthCertificateHook()
  1188 ms  0x1a2e fd:0x7f56df378ca0
  1188 ms  0x1a2e ret:0x0
  1188 ms  0x1a2e PR_Connect()
  1188 ms  0x1a2e fd:0x7f56df378ca0
  1214 ms  0x1a2e SECKEY_CreateECPrivateKey()
  1214 ms  0x1a2e cx:0x7f56df3c43e8
  1214 ms     | 0x1a2e EC_ValidatePublicKey()
  1214 ms     | 0x1a2e ret:0x0
  1214 ms  0x1a2e ret:0x7f56df2cd820::7f56df2cd820  b0 7f 37 df                                      ..7.
  1215 ms  0x1a2e SECKEY_CreateECPrivateKey()
  1215 ms  0x1a2e cx:0x7f56df3c43e8
  1215 ms     | 0x1a2e EC_ValidatePublicKey()
  1217 ms     | 0x1a2e ret:0x0
  1217 ms  0x1a2e ret:0x7f56df2d3820::7f56df2d3820  70 74 3d df                                      pt=.
           /* TID 0x1a89 */
  1271 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1271 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  1272 ms  SECKEY_ECParamsToKeySize()
  1272 ms  0x1a2e ret:0x100
  1272 ms  0x1a2e SECKEY_CreateECPrivateKey()
  1272 ms  0x1a2e cx:0x7f56df3c43e8
  1274 ms     | 0x1a2e EC_ValidatePublicKey()
  1278 ms     | 0x1a2e ret:0x0
  1278 ms  0x1a2e ret:0x7f56df2d7020::7f56df2d7020  f0 76 3d df                                      .v=.
  1279 ms  0x1a2e PK11_PubDeriveWithKDF()
  1279 ms  0x1a2e seckey:0x7f56df2d7020
  1279 ms     | 0x1a2e EC_ValidatePublicKey()
  1283 ms     | 0x1a2e ret:0x0
  1287 ms  0x1a2e ret:0x7f56e0c0ed00
  1287 ms  0x1a2e PK11_DeriveWithFlags()
  1287 ms  0x1a2e basekey:0x7f56e0c0ed00
  1287 ms     | 0x1a2e PK11_DeriveWithTemplate()
  1287 ms  0x1a2e ret:0x7f56e0c0ec80
  1287 ms  0x1a2e PK11_Derive()
  1287 ms  0x1a2e basekey:0x7f56e0c0ec80
  1287 ms     | 0x1a2e PK11_DeriveWithTemplate()
  1287 ms  0x1a2e ret:0x7f56e13f4800
  1287 ms  0x1a2e SECKEY_DestroyPrivateKey()
  1287 ms  0x1a2e privk:0x7f56df2d7020::7f56df2d7020  f0 76 3d df                                      .v=.
  1287 ms  0x1a2e privk:0x7f56df2d7020::7f56df2d7020  e5 e5 e5 e5                                      ....
  1288 ms  0x1a2e PK11_Encrypt()
  1288 ms  0x1a2e symkey:0x7f56e0c0ed80
  1288 ms  0x1a2e SSL_AuthCertificateComplete()
  1288 ms  0x1a2e fd:0x7f56df378ca0
  1288 ms  0x1a2e err:0x0
  1288 ms  0x1a2e PK11_Encrypt()
  1288 ms  0x1a2e symkey:0x7f56e0c0ed80
  1339 ms  0x1a2e SECKEY_DestroyPrivateKey()
  1339 ms  0x1a2e privk:0x7f56df2d3820::7f56df2d3820  70 74 3d df                                      pt=.
  1339 ms  0x1a2e privk:0x7f56df2d3820::7f56df2d3820  e5 e5 e5 e5                                      ....
  1340 ms  0x1a2e SECKEY_DestroyPrivateKey()
  1340 ms  0x1a2e privk:0x7f56df2cd820::7f56df2cd820  b0 7f 37 df                                      ..7.
  1340 ms  0x1a2e privk:0x7f56df2cd820::7f56df2cd820  e5 e5 e5 e5                                      ....
  1343 ms  0x1a2e PK11_Encrypt()
  1343 ms  0x1a2e symkey:0x7f56e0c0ed80
  1372 ms  0x1a2e PK11_Encrypt()
  1372 ms  0x1a2e symkey:0x7f56e0c0ed80
  1402 ms  0x1a2e PK11_Encrypt()
  1402 ms  0x1a2e symkey:0x7f56e0c0ed80
  1431 ms  0x1a2e PK11_Encrypt()
  1431 ms  0x1a2e symkey:0x7f56e0c0ed80
  1548 ms  0x1a2e PK11_Encrypt()
  1548 ms  0x1a2e symkey:0x7f56e0c0ed80
  1581 ms  0x1a2e PK11_Encrypt()
  1581 ms  0x1a2e symkey:0x7f56e0c0ed80
  1612 ms  0x1a2e PK11_Encrypt()
  1612 ms  0x1a2e symkey:0x7f56e0c0ed80
           /* TID 0x1a83 */
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf1f0
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf340
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf1f0
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf340
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf1f0
  1641 ms  0x1a83 PR_Close()
  1641 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf1f0
  1642 ms  0x1a83 PR_Close()
  1642 ms  0x1a83 fd:0x7f56df3bf340
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf1f0
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf340
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf1f0
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf340
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf1f0
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf340
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf1f0
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf340
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf1f0
  1643 ms  0x1a83 PR_Close()
  1643 ms  0x1a83 fd:0x7f56df3bf340
  1646 ms  0x1a83 PR_Close()
  1646 ms  0x1a83 fd:0x7f56df3bf1f0
  1646 ms  0x1a83 PR_Close()
  1646 ms  0x1a83 fd:0x7f56df3bf1f0
  1649 ms  0x1a83 PR_Close()
  1649 ms  0x1a83 fd:0x7f56df3bf1f0
  1649 ms  0x1a83 PR_Close()
  1649 ms  0x1a83 fd:0x7f56df3bf310
  1652 ms  0x1a83 PR_Close()
  1652 ms  0x1a83 fd:0x7f56df3bf310
  1652 ms  0x1a83 PR_Close()
  1652 ms  0x1a83 fd:0x7f56df3bf310
  1654 ms  0x1a83 PR_Close()
  1654 ms  0x1a83 fd:0x7f56df3bf310
  1654 ms  0x1a83 PR_Close()
  1654 ms  0x1a83 fd:0x7f56df3bf310
  1700 ms  0x1a83 PR_Close()
  1700 ms  0x1a83 fd:0x7f56df3bf310
  1701 ms  0x1a83 PR_Close()
  1701 ms  0x1a83 fd:0x7f56df3bf310
  1708 ms  0x1a83 PR_Close()
  1708 ms  0x1a83 fd:0x7f56df3bf310
  1708 ms  0x1a83 PR_Close()
  1708 ms  0x1a83 fd:0x7f56df3bf310
  1714 ms  0x1a83 PR_Close()
  1714 ms  0x1a83 fd:0x7f56df3bf310
  1714 ms  0x1a83 PR_Close()
  1714 ms  0x1a83 fd:0x7f56df3bf310
  1716 ms  0x1a83 PR_Close()
  1716 ms  0x1a83 fd:0x7f56df3bf310
  1716 ms  0x1a83 PR_Close()
  1716 ms  0x1a83 fd:0x7f56df3bf310
           /* TID 0x1a80 */
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1716 ms  0x1a80 PR_Close()
  1716 ms  0x1a80 fd:0x7f56df3bf310
  1717 ms  0x1a80 PR_Close()
  1717 ms  0x1a80 fd:0x7f56df3bf310
  1717 ms  0x1a80 PR_Close()
  1717 ms  0x1a80 fd:0x7f56df3bf310
  1717 ms  0x1a80 PR_Close()
  1717 ms  0x1a80 fd:0x7f56df3bf310
  1717 ms  0x1a80 PR_Close()
  1717 ms  0x1a80 fd:0x7f56df3bf310
  1717 ms  0x1a80 PR_Close()
  1717 ms  0x1a80 fd:0x7f56df3bf310
           /* TID 0x1a47 */
  2219 ms  0x1a47 PR_Close()
  2219 ms  0x1a47 fd:0x7f56df378c40
  2221 ms  0x1a47 PR_Close()
  2221 ms  0x1a47 fd:0x7f56df378c40
  2528 ms  0x1a47 PR_Close()
  2528 ms  0x1a47 fd:0x7f56df378d90
           /* TID 0x1a36 */
  4110 ms  0x1a36 PR_Close()
  4110 ms  0x1a36 fd:0x7f56df378d90
  4110 ms  0x1a36 PR_Close()
  4110 ms  0x1a36 fd:0x7f56df3bf340
  4110 ms  0x1a36 PR_Close()
  4110 ms  0x1a36 fd:0x7f56df3bf3a0
           /* TID 0x1a2e */
  4522 ms  0x1a2e SSL_ImportFD()
  4522 ms  0x1a2e ret:0x7f56ce5ec580
  4522 ms  0x1a2e SSL_AuthCertificateHook()
  4522 ms  0x1a2e fd:0x7f56ce5ec580
  4522 ms  0x1a2e ret:0x0
  4522 ms  0x1a2e PR_Connect()
  4522 ms  0x1a2e fd:0x7f56ce5ec580
  4547 ms  0x1a2e SECKEY_CreateECPrivateKey()
  4547 ms  0x1a2e cx:0x7f56df3c4728
  4548 ms     | 0x1a2e EC_ValidatePublicKey()
  4548 ms     | 0x1a2e ret:0x0
  4548 ms  0x1a2e ret:0x7f56ce5af020::7f56ce5af020  00 c6 5d ce                                      ..].
  4548 ms  0x1a2e SECKEY_CreateECPrivateKey()
  4548 ms  0x1a2e cx:0x7f56df3c4728
  4549 ms     | 0x1a2e EC_ValidatePublicKey()
  4551 ms     | 0x1a2e ret:0x0
  4551 ms  0x1a2e ret:0x7f56ce5b1020::7f56ce5b1020  80 c8 5d ce                                      ..].
           /* TID 0x1a89 */
  4583 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4583 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  4585 ms  SECKEY_ECParamsToKeySize()
  4585 ms  0x1a2e ret:0xff
  4585 ms  0x1a2e SECKEY_CreateECPrivateKey()
  4585 ms  0x1a2e cx:0x7f56df3c4728
  4586 ms     | 0x1a2e EC_ValidatePublicKey()
  4586 ms     | 0x1a2e ret:0x0
  4586 ms  0x1a2e ret:0x7f56ce5bc820::7f56ce5bc820  10 cf 5d ce                                      ..].
  4586 ms  0x1a2e PK11_PubDeriveWithKDF()
  4586 ms  0x1a2e seckey:0x7f56ce5bc820
  4586 ms     | 0x1a2e EC_ValidatePublicKey()
  4586 ms     | 0x1a2e ret:0x0
  4587 ms  0x1a2e ret:0x7f56e0c0ed00
  4587 ms  0x1a2e PK11_DeriveWithFlags()
  4587 ms  0x1a2e basekey:0x7f56e0c0ed00
  4587 ms     | 0x1a2e PK11_DeriveWithTemplate()
  4587 ms  0x1a2e ret:0x7f56ce5f0d80
  4587 ms  0x1a2e PK11_Derive()
  4587 ms  0x1a2e basekey:0x7f56ce5f0d80
  4587 ms     | 0x1a2e PK11_DeriveWithTemplate()
  4587 ms  0x1a2e ret:0x7f56ce5f0e00
  4587 ms  0x1a2e SECKEY_DestroyPrivateKey()
  4587 ms  0x1a2e privk:0x7f56ce5bc820::7f56ce5bc820  10 cf 5d ce                                      ..].
  4587 ms  0x1a2e privk:0x7f56ce5bc820::7f56ce5bc820  e5 e5 e5 e5                                      ....
  4588 ms  0x1a2e PK11_Encrypt()
  4588 ms  0x1a2e symkey:0x7f56ce5f0f80
  4675 ms  0x1a2e SSL_AuthCertificateComplete()
  4675 ms  0x1a2e fd:0x7f56ce5ec580
  4675 ms  0x1a2e err:0x0
  4675 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  4675 ms     | 0x1a2e privk:0x7f56ce5b1020::7f56ce5b1020  80 c8 5d ce                                      ..].
  4675 ms     | 0x1a2e privk:0x7f56ce5b1020::7f56ce5b1020  e5 e5 e5 e5                                      ....
  4676 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  4676 ms     | 0x1a2e privk:0x7f56ce5af020::7f56ce5af020  00 c6 5d ce                                      ..].
  4676 ms     | 0x1a2e privk:0x7f56ce5af020::7f56ce5af020  e5 e5 e5 e5                                      ....
  4676 ms  0x1a2e PK11_Encrypt()
  4676 ms  0x1a2e symkey:0x7f56ce5f0f80
  4679 ms  0x1a2e PK11_Encrypt()
  4679 ms  0x1a2e symkey:0x7f56ce5f0f80
  4703 ms  0x1a2e PK11_Encrypt()
  4703 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a45 */
  4996 ms  0x1a45 PR_Close()
  4996 ms  0x1a45 fd:0x7f56ce5d8250
           /* TID 0x1a23 */
  4999 ms  0x1a23 PR_Close()
  4999 ms  0x1a23 fd:0x7f56ce5d8670
           /* TID 0x1a2e */
  5104 ms  0x1a2e SSL_ImportFD()
  5104 ms  0x1a2e ret:0x7f56ce48c910
  5104 ms  0x1a2e SSL_AuthCertificateHook()
  5104 ms  0x1a2e fd:0x7f56ce48c910
  5104 ms  0x1a2e ret:0x0
  5105 ms  0x1a2e PK11_Encrypt()
  5105 ms  0x1a2e symkey:0x7f56ce5f0f80
  5105 ms  0x1a2e PR_Connect()
  5105 ms  0x1a2e fd:0x7f56ce48c910
  5114 ms  0x1a2e SSL_ImportFD()
  5114 ms  0x1a2e ret:0x7f56e04b20a0
  5114 ms  0x1a2e SSL_AuthCertificateHook()
  5114 ms  0x1a2e fd:0x7f56e04b20a0
  5114 ms  0x1a2e ret:0x0
  5114 ms  0x1a2e PR_Connect()
  5114 ms  0x1a2e fd:0x7f56e04b20a0
  5114 ms  0x1a2e SSL_ImportFD()
  5114 ms  0x1a2e ret:0x7f56e04b2040
  5114 ms  0x1a2e SSL_AuthCertificateHook()
  5114 ms  0x1a2e fd:0x7f56e04b2040
  5114 ms  0x1a2e ret:0x0
  5114 ms  0x1a2e PR_Connect()
  5114 ms  0x1a2e fd:0x7f56e04b2040
  5114 ms  0x1a2e SSL_ImportFD()
  5114 ms  0x1a2e ret:0x7f56df39f9d0
  5114 ms  0x1a2e SSL_AuthCertificateHook()
  5114 ms  0x1a2e fd:0x7f56df39f9d0
  5114 ms  0x1a2e ret:0x0
  5114 ms  0x1a2e PR_Connect()
  5114 ms  0x1a2e fd:0x7f56df39f9d0
  5114 ms  0x1a2e SSL_ImportFD()
  5114 ms  0x1a2e ret:0x7f56df39fa30
  5114 ms  0x1a2e SSL_AuthCertificateHook()
  5114 ms  0x1a2e fd:0x7f56df39fa30
  5114 ms  0x1a2e ret:0x0
  5114 ms  0x1a2e PR_Connect()
  5114 ms  0x1a2e fd:0x7f56df39fa30
  5115 ms  0x1a2e SSL_ImportFD()
  5115 ms  0x1a2e ret:0x7f56df39fa60
  5115 ms  0x1a2e SSL_AuthCertificateHook()
  5115 ms  0x1a2e fd:0x7f56df39fa60
  5115 ms  0x1a2e ret:0x0
  5115 ms  0x1a2e PR_Connect()
  5115 ms  0x1a2e fd:0x7f56df39fa60
  5115 ms  0x1a2e SSL_ImportFD()
  5115 ms  0x1a2e ret:0x7f56df39fa90
  5115 ms  0x1a2e SSL_AuthCertificateHook()
  5115 ms  0x1a2e fd:0x7f56df39fa90
  5115 ms  0x1a2e ret:0x0
  5115 ms  0x1a2e PR_Connect()
  5115 ms  0x1a2e fd:0x7f56df39fa90
  5115 ms  0x1a2e SSL_ImportFD()
  5115 ms  0x1a2e ret:0x7f56df39fac0
  5115 ms  0x1a2e SSL_AuthCertificateHook()
  5115 ms  0x1a2e fd:0x7f56df39fac0
  5115 ms  0x1a2e ret:0x0
  5115 ms  0x1a2e PR_Connect()
  5115 ms  0x1a2e fd:0x7f56df39fac0
  5115 ms  0x1a2e SSL_ImportFD()
  5115 ms  0x1a2e ret:0x7f56df39ff70
  5115 ms  0x1a2e SSL_AuthCertificateHook()
  5115 ms  0x1a2e fd:0x7f56df39ff70
  5115 ms  0x1a2e ret:0x0
  5115 ms  0x1a2e PR_Connect()
  5115 ms  0x1a2e fd:0x7f56df39ff70
           /* TID 0x1a36 */
  5129 ms  0x1a36 PR_Close()
  5129 ms  0x1a36 fd:0x7f56ce4610a0
           /* TID 0x1a2e */
  5131 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5131 ms  0x1a2e cx:0x7f56df3c4f48
  5132 ms     | 0x1a2e EC_ValidatePublicKey()
  5132 ms     | 0x1a2e ret:0x0
  5132 ms  0x1a2e ret:0x7f56ce4cf820::7f56ce4cf820  d0 bd 12 ce                                      ....
  5133 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5133 ms  0x1a2e cx:0x7f56df3c4f48
  5134 ms     | 0x1a2e EC_ValidatePublicKey()
           /* TID 0x1a36 */
  5142 ms  0x1a36 PR_Close()
  5142 ms  0x1a36 fd:0x7f56ce4610a0
           /* TID 0x1a2e */
  5144 ms     | 0x1a2e ret:0x0
  5145 ms  0x1a2e ret:0x7f56ce4d1820::7f56ce4d1820  d0 b3 12 ce                                      ....
           /* TID 0x1a89 */
  5174 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5174 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5175 ms  SECKEY_ECParamsToKeySize()
  5175 ms  0x1a2e ret:0xff
  5175 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5175 ms  0x1a2e cx:0x7f56df3c4f48
  5176 ms     | 0x1a2e EC_ValidatePublicKey()
  5176 ms     | 0x1a2e ret:0x0
  5176 ms  0x1a2e ret:0x7f56ce4d4820::7f56ce4d4820  60 bf 12 ce                                      `...
  5177 ms  0x1a2e PK11_PubDeriveWithKDF()
  5177 ms  0x1a2e seckey:0x7f56ce4d4820
  5177 ms     | 0x1a2e EC_ValidatePublicKey()
  5177 ms     | 0x1a2e ret:0x0
  5179 ms  0x1a2e ret:0x7f56e0c0ed00
  5179 ms  0x1a2e PK11_DeriveWithFlags()
  5179 ms  0x1a2e basekey:0x7f56e0c0ed00
  5179 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5179 ms  0x1a2e ret:0x7f56ce10b000
  5179 ms  0x1a2e PK11_Derive()
  5179 ms  0x1a2e basekey:0x7f56ce10b000
  5179 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5179 ms  0x1a2e ret:0x7f56ce10b400
  5179 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5179 ms  0x1a2e privk:0x7f56ce4d4820::7f56ce4d4820  60 bf 12 ce                                      `...
  5179 ms  0x1a2e privk:0x7f56ce4d4820::7f56ce4d4820  e5 e5 e5 e5                                      ....
  5180 ms  0x1a2e PK11_Encrypt()
  5180 ms  0x1a2e symkey:0x7f56ce10b680
  5180 ms  0x1a2e SSL_AuthCertificateComplete()
  5180 ms  0x1a2e fd:0x7f56ce48c910
  5180 ms  0x1a2e err:0x0
  5183 ms  0x1a2e PK11_Encrypt()
  5183 ms  0x1a2e symkey:0x7f56ce10b680
  5186 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5186 ms  0x1a2e cx:0x7f56df3c5de8
  5187 ms     | 0x1a2e EC_ValidatePublicKey()
  5187 ms     | 0x1a2e ret:0x0
  5187 ms  0x1a2e ret:0x7f56ce4d5820::7f56ce4d5820  90 bc 12 ce                                      ....
  5187 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5187 ms  0x1a2e cx:0x7f56df3c5de8
  5188 ms     | 0x1a2e EC_ValidatePublicKey()
  5190 ms     | 0x1a2e ret:0x0
  5190 ms  0x1a2e ret:0x7f56ce4d7820::7f56ce4d7820  10 ba 49 ce                                      ..I.
  5191 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5191 ms  0x1a2e cx:0x7f56df3c5c48
  5192 ms     | 0x1a2e EC_ValidatePublicKey()
  5192 ms     | 0x1a2e ret:0x0
  5192 ms  0x1a2e ret:0x7f56ce4da820::7f56ce4da820  90 bc 49 ce                                      ..I.
  5192 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5192 ms  0x1a2e cx:0x7f56df3c5c48
  5193 ms     | 0x1a2e EC_ValidatePublicKey()
  5195 ms     | 0x1a2e ret:0x0
  5195 ms  0x1a2e ret:0x7f56ce5af020::7f56ce5af020  b0 c0 5d ce                                      ..].
  5196 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5196 ms  0x1a2e cx:0x7f56df3c5aa8
  5196 ms     | 0x1a2e EC_ValidatePublicKey()
  5196 ms     | 0x1a2e ret:0x0
  5196 ms  0x1a2e ret:0x7f56ce181820::7f56ce181820  80 c3 5d ce                                      ..].
  5197 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5197 ms  0x1a2e cx:0x7f56df3c5aa8
  5197 ms     | 0x1a2e EC_ValidatePublicKey()
  5199 ms     | 0x1a2e ret:0x0
  5199 ms  0x1a2e ret:0x7f56ce183820::7f56ce183820  70 a9 ba ec                                      p...
  5200 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5200 ms  0x1a2e cx:0x7f56df3c5908
  5201 ms     | 0x1a2e EC_ValidatePublicKey()
  5201 ms     | 0x1a2e ret:0x0
  5201 ms  0x1a2e ret:0x7f56ce186020::7f56ce186020  50 a1 1a ce                                      P...
  5201 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5201 ms  0x1a2e cx:0x7f56df3c5908
  5202 ms     | 0x1a2e EC_ValidatePublicKey()
  5203 ms     | 0x1a2e ret:0x0
  5203 ms  0x1a2e ret:0x7f56ce188020::7f56ce188020  30 a3 1a ce                                      0...
  5204 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5204 ms  0x1a2e cx:0x7f56df3c5768
  5204 ms     | 0x1a2e EC_ValidatePublicKey()
  5204 ms     | 0x1a2e ret:0x0
  5204 ms  0x1a2e ret:0x7f56ce18b020::7f56ce18b020  70 a4 1a ce                                      p...
  5205 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5205 ms  0x1a2e cx:0x7f56df3c5768
  5205 ms     | 0x1a2e EC_ValidatePublicKey()
  5207 ms     | 0x1a2e ret:0x0
  5207 ms  0x1a2e ret:0x7f56ce18d020::7f56ce18d020  50 a6 1a ce                                      P...
  5207 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5207 ms  0x1a2e cx:0x7f56df3c55c8
  5208 ms     | 0x1a2e EC_ValidatePublicKey()
  5208 ms     | 0x1a2e ret:0x0
  5208 ms  0x1a2e ret:0x7f56ce18f820::7f56ce18f820  90 a7 1a ce                                      ....
  5208 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5208 ms  0x1a2e cx:0x7f56df3c55c8
  5209 ms     | 0x1a2e EC_ValidatePublicKey()
  5211 ms     | 0x1a2e ret:0x0
  5211 ms  0x1a2e ret:0x7f56ce191820::7f56ce191820  70 a9 1a ce                                      p...
  5211 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5211 ms  0x1a2e cx:0x7f56df3c5428
  5211 ms     | 0x1a2e EC_ValidatePublicKey()
  5211 ms     | 0x1a2e ret:0x0
  5211 ms  0x1a2e ret:0x7f56ce194020::7f56ce194020  b0 aa 1a ce                                      ....
  5211 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5211 ms  0x1a2e cx:0x7f56df3c5428
  5212 ms     | 0x1a2e EC_ValidatePublicKey()
  5214 ms     | 0x1a2e ret:0x0
  5214 ms  0x1a2e ret:0x7f56ce196020::7f56ce196020  90 ac 1a ce                                      ....
  5214 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5214 ms  0x1a2e cx:0x7f56df3c5288
  5214 ms     | 0x1a2e EC_ValidatePublicKey()
  5214 ms     | 0x1a2e ret:0x0
  5214 ms  0x1a2e ret:0x7f56ce198820::7f56ce198820  d0 ad 1a ce                                      ....
  5214 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5214 ms  0x1a2e cx:0x7f56df3c5288
  5215 ms     | 0x1a2e EC_ValidatePublicKey()
  5217 ms     | 0x1a2e ret:0x0
  5217 ms  0x1a2e ret:0x7f56ce19a820::7f56ce19a820  b0 af 1a ce                                      ....
  5217 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5217 ms  0x1a2e privk:0x7f56ce4d1820::7f56ce4d1820  d0 b3 12 ce                                      ....
  5217 ms  0x1a2e privk:0x7f56ce4d1820::7f56ce4d1820  e5 e5 e5 e5                                      ....
  5217 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5217 ms  0x1a2e privk:0x7f56ce4cf820::7f56ce4cf820  d0 bd 12 ce                                      ....
  5218 ms  0x1a2e privk:0x7f56ce4cf820::7f56ce4cf820  e5 e5 e5 e5                                      ....
  5218 ms  0x1a2e PR_Close()
  5218 ms  0x1a2e fd:0x7f56ce48c910
  5218 ms     | 0x1a2e PK11_Encrypt()
  5218 ms     | 0x1a2e symkey:0x7f56ce10b680
           /* TID 0x1a89 */
  5256 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5256 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5256 ms  SECKEY_ECParamsToKeySize()
  5256 ms  0x1a2e ret:0x100
  5256 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5256 ms  0x1a2e cx:0x7f56df3c5de8
  5257 ms     | 0x1a2e EC_ValidatePublicKey()
  5259 ms     | 0x1a2e ret:0x0
  5259 ms  0x1a2e ret:0x7f56ce4c6020::7f56ce4c6020  10 bf 12 ce                                      ....
  5259 ms  0x1a2e PK11_PubDeriveWithKDF()
  5259 ms  0x1a2e seckey:0x7f56ce4c6020
  5259 ms     | 0x1a2e EC_ValidatePublicKey()
  5260 ms     | 0x1a2e ret:0x0
  5262 ms  0x1a2e ret:0x7f56ce10b400
  5262 ms  0x1a2e PK11_DeriveWithFlags()
  5262 ms  0x1a2e basekey:0x7f56ce10b400
  5262 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5262 ms  0x1a2e ret:0x7f56ce10b000
  5262 ms  0x1a2e PK11_Derive()
  5262 ms  0x1a2e basekey:0x7f56ce10b000
  5262 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5262 ms  0x1a2e ret:0x7f56e0c0ed00
  5262 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5262 ms  0x1a2e privk:0x7f56ce4c6020::7f56ce4c6020  10 bf 12 ce                                      ....
  5262 ms  0x1a2e privk:0x7f56ce4c6020::7f56ce4c6020  e5 e5 e5 e5                                      ....
  5262 ms  0x1a2e PK11_Encrypt()
  5262 ms  0x1a2e symkey:0x7f56ce10b580
  5262 ms  0x1a2e SSL_AuthCertificateComplete()
  5262 ms  0x1a2e fd:0x7f56df39ff70
  5262 ms  0x1a2e err:0x0
  5262 ms  0x1a2e PK11_Encrypt()
  5262 ms  0x1a2e symkey:0x7f56ce10b580
  5263 ms  0x1a2e PK11_Encrypt()
  5263 ms  0x1a2e symkey:0x7f56ce10b580
           /* TID 0x1a89 */
  5263 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5263 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5264 ms  SECKEY_ECParamsToKeySize()
  5264 ms  0x1a2e ret:0x100
  5264 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5264 ms  0x1a2e cx:0x7f56df3c5c48
  5264 ms     | 0x1a2e EC_ValidatePublicKey()
  5266 ms     | 0x1a2e ret:0x0
  5266 ms  0x1a2e ret:0x7f56ce4d0820::7f56ce4d0820  a0 71 1d ce                                      .q..
  5266 ms  0x1a2e PK11_PubDeriveWithKDF()
  5266 ms  0x1a2e seckey:0x7f56ce4d0820
  5267 ms     | 0x1a2e EC_ValidatePublicKey()
  5268 ms     | 0x1a2e ret:0x0
  5270 ms  0x1a2e ret:0x7f56ce10b400
  5270 ms  0x1a2e PK11_DeriveWithFlags()
  5270 ms  0x1a2e basekey:0x7f56ce10b400
  5270 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5270 ms  0x1a2e ret:0x7f56ce10bb00
  5270 ms  0x1a2e PK11_Derive()
  5270 ms  0x1a2e basekey:0x7f56ce10bb00
  5270 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5270 ms  0x1a2e ret:0x7f56ce10bb80
  5270 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5270 ms  0x1a2e privk:0x7f56ce4d0820::7f56ce4d0820  a0 71 1d ce                                      .q..
  5270 ms  0x1a2e privk:0x7f56ce4d0820::7f56ce4d0820  e5 e5 e5 e5                                      ....
  5270 ms  0x1a2e PK11_Encrypt()
  5270 ms  0x1a2e symkey:0x7f56ce10bd00
  5270 ms  0x1a2e PK11_Encrypt()
  5270 ms  0x1a2e symkey:0x7f56ce10b580
  5271 ms  0x1a2e PK11_Encrypt()
  5271 ms  0x1a2e symkey:0x7f56ce10b580
  5271 ms  0x1a2e SSL_AuthCertificateComplete()
  5271 ms  0x1a2e fd:0x7f56df39fac0
  5271 ms  0x1a2e err:0x0
  5271 ms  0x1a2e PK11_Encrypt()
  5271 ms  0x1a2e symkey:0x7f56ce10b580
  5271 ms  0x1a2e PK11_Encrypt()
  5271 ms  0x1a2e symkey:0x7f56ce10bd00
           /* TID 0x1a89 */
  5272 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5272 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5273 ms  SECKEY_ECParamsToKeySize()
  5273 ms  0x1a2e ret:0x100
  5273 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5273 ms  0x1a2e cx:0x7f56df3c5aa8
  5273 ms     | 0x1a2e EC_ValidatePublicKey()
  5275 ms     | 0x1a2e ret:0x0
  5275 ms  0x1a2e ret:0x7f56ce23e820::7f56ce23e820  40 72 1d ce                                      @r..
  5275 ms  0x1a2e PK11_PubDeriveWithKDF()
  5275 ms  0x1a2e seckey:0x7f56ce23e820
  5275 ms     | 0x1a2e EC_ValidatePublicKey()
  5277 ms     | 0x1a2e ret:0x0
  5278 ms  0x1a2e ret:0x7f56ce10b400
  5278 ms  0x1a2e PK11_DeriveWithFlags()
  5278 ms  0x1a2e basekey:0x7f56ce10b400
  5278 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5278 ms  0x1a2e ret:0x7f56ce10aa00
  5278 ms  0x1a2e PK11_Derive()
  5278 ms  0x1a2e basekey:0x7f56ce10aa00
  5278 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5278 ms  0x1a2e ret:0x7f56ce10be00
  5278 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5278 ms  0x1a2e privk:0x7f56ce23e820::7f56ce23e820  40 72 1d ce                                      @r..
  5278 ms  0x1a2e privk:0x7f56ce23e820::7f56ce23e820  e5 e5 e5 e5                                      ....
  5278 ms  0x1a2e PK11_Encrypt()
  5278 ms  0x1a2e symkey:0x7f56ce10bf80
           /* TID 0x1a89 */
  5279 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5279 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5279 ms  SECKEY_ECParamsToKeySize()
  5279 ms  0x1a2e ret:0x100
  5279 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5279 ms  0x1a2e cx:0x7f56df3c5908
  5280 ms     | 0x1a2e EC_ValidatePublicKey()
  5282 ms     | 0x1a2e ret:0x0
  5282 ms  0x1a2e ret:0x7f56ce23f820::7f56ce23f820  e0 72 1d ce                                      .r..
  5282 ms  0x1a2e PK11_PubDeriveWithKDF()
  5282 ms  0x1a2e seckey:0x7f56ce23f820
  5282 ms     | 0x1a2e EC_ValidatePublicKey()
  5283 ms     | 0x1a2e ret:0x0
  5285 ms  0x1a2e ret:0x7f56ce10b400
  5285 ms  0x1a2e PK11_DeriveWithFlags()
  5285 ms  0x1a2e basekey:0x7f56ce10b400
  5285 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5285 ms  0x1a2e ret:0x7f56ce4fa200
  5285 ms  0x1a2e PK11_Derive()
  5285 ms  0x1a2e basekey:0x7f56ce4fa200
  5285 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5285 ms  0x1a2e ret:0x7f56ce5f0800
  5285 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5285 ms  0x1a2e privk:0x7f56ce23f820::7f56ce23f820  e0 72 1d ce                                      .r..
  5285 ms  0x1a2e privk:0x7f56ce23f820::7f56ce23f820  e5 e5 e5 e5                                      ....
  5285 ms  0x1a2e PK11_Encrypt()
  5285 ms  0x1a2e symkey:0x7f56ce26f080
           /* TID 0x1a89 */
  5286 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5286 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5286 ms  SECKEY_ECParamsToKeySize()
  5286 ms  0x1a2e ret:0x100
  5286 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5286 ms  0x1a2e cx:0x7f56df3c5768
  5287 ms     | 0x1a2e EC_ValidatePublicKey()
  5288 ms     | 0x1a2e ret:0x0
  5288 ms  0x1a2e ret:0x7f56ce240020::7f56ce240020  80 73 1d ce                                      .s..
  5288 ms  0x1a2e PK11_PubDeriveWithKDF()
  5288 ms  0x1a2e seckey:0x7f56ce240020
  5288 ms     | 0x1a2e EC_ValidatePublicKey()
  5290 ms     | 0x1a2e ret:0x0
  5291 ms  0x1a2e ret:0x7f56ce10b400
  5291 ms  0x1a2e PK11_DeriveWithFlags()
  5291 ms  0x1a2e basekey:0x7f56ce10b400
  5291 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5291 ms  0x1a2e ret:0x7f56ce26f180
  5291 ms  0x1a2e PK11_Derive()
  5291 ms  0x1a2e basekey:0x7f56ce26f180
  5291 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5291 ms  0x1a2e ret:0x7f56ce26f200
  5292 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5292 ms  0x1a2e privk:0x7f56ce240020::7f56ce240020  80 73 1d ce                                      .s..
  5292 ms  0x1a2e privk:0x7f56ce240020::7f56ce240020  e5 e5 e5 e5                                      ....
  5292 ms  0x1a2e PK11_Encrypt()
  5292 ms  0x1a2e symkey:0x7f56ce26f380
  5292 ms  0x1a2e SSL_AuthCertificateComplete()
  5292 ms  0x1a2e fd:0x7f56df39fa90
  5292 ms  0x1a2e err:0x0
  5292 ms  0x1a2e SSL_AuthCertificateComplete()
  5292 ms  0x1a2e fd:0x7f56df39fa60
  5292 ms  0x1a2e err:0x0
  5292 ms  0x1a2e SSL_AuthCertificateComplete()
  5292 ms  0x1a2e fd:0x7f56df39fa30
  5292 ms  0x1a2e err:0x0
           /* TID 0x1a89 */
  5292 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5293 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5293 ms  SECKEY_ECParamsToKeySize()
  5293 ms  0x1a2e ret:0x100
  5293 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5293 ms  0x1a2e cx:0x7f56df3c5288
  5293 ms     | 0x1a2e EC_ValidatePublicKey()
  5295 ms     | 0x1a2e ret:0x0
  5295 ms  0x1a2e ret:0x7f56ce241020::7f56ce241020  20 74 1d ce                                       t..
  5295 ms  0x1a2e PK11_PubDeriveWithKDF()
  5295 ms  0x1a2e seckey:0x7f56ce241020
  5295 ms     | 0x1a2e EC_ValidatePublicKey()
  5296 ms     | 0x1a2e ret:0x0
  5298 ms  0x1a2e ret:0x7f56ce10b400
  5298 ms  0x1a2e PK11_DeriveWithFlags()
  5298 ms  0x1a2e basekey:0x7f56ce10b400
  5298 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5298 ms  0x1a2e ret:0x7f56ce26f480
  5298 ms  0x1a2e PK11_Derive()
  5298 ms  0x1a2e basekey:0x7f56ce26f480
  5298 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5298 ms  0x1a2e ret:0x7f56ce26f500
  5298 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5298 ms  0x1a2e privk:0x7f56ce241020::7f56ce241020  20 74 1d ce                                       t..
  5298 ms  0x1a2e privk:0x7f56ce241020::7f56ce241020  e5 e5 e5 e5                                      ....
  5298 ms  0x1a2e PK11_Encrypt()
  5298 ms  0x1a2e symkey:0x7f56ce26f680
  5298 ms  0x1a2e PK11_Encrypt()
  5298 ms  0x1a2e symkey:0x7f56ce10b580
  5299 ms  0x1a2e PK11_Encrypt()
  5299 ms  0x1a2e symkey:0x7f56ce10bf80
  5299 ms  0x1a2e PK11_Encrypt()
  5299 ms  0x1a2e symkey:0x7f56ce26f080
  5300 ms  0x1a2e PK11_Encrypt()
  5300 ms  0x1a2e symkey:0x7f56ce26f380
           /* TID 0x1a89 */
  5300 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5300 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5301 ms  SECKEY_ECParamsToKeySize()
  5301 ms  0x1a2e ret:0x100
  5301 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5301 ms  0x1a2e cx:0x7f56df3c55c8
  5301 ms     | 0x1a2e EC_ValidatePublicKey()
  5304 ms     | 0x1a2e ret:0x0
  5304 ms  0x1a2e ret:0x7f56ce245820::7f56ce245820  c0 74 1d ce                                      .t..
  5304 ms  0x1a2e PK11_PubDeriveWithKDF()
  5304 ms  0x1a2e seckey:0x7f56ce245820
  5304 ms     | 0x1a2e EC_ValidatePublicKey()
  5306 ms     | 0x1a2e ret:0x0
  5312 ms  0x1a2e ret:0x7f56ce10b400
  5312 ms  0x1a2e PK11_DeriveWithFlags()
  5312 ms  0x1a2e basekey:0x7f56ce10b400
  5312 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5312 ms  0x1a2e ret:0x7f56ce26f780
  5312 ms  0x1a2e PK11_Derive()
  5312 ms  0x1a2e basekey:0x7f56ce26f780
  5312 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5312 ms  0x1a2e ret:0x7f56ce26f800
  5312 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5312 ms  0x1a2e privk:0x7f56ce245820::7f56ce245820  c0 74 1d ce                                      .t..
  5312 ms  0x1a2e privk:0x7f56ce245820::7f56ce245820  e5 e5 e5 e5                                      ....
  5312 ms  0x1a2e PK11_Encrypt()
  5312 ms  0x1a2e symkey:0x7f56ce26f980
           /* TID 0x1a89 */
  5313 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5313 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  5314 ms  SECKEY_ECParamsToKeySize()
  5314 ms  0x1a2e ret:0x100
  5314 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5314 ms  0x1a2e cx:0x7f56df3c5428
  5314 ms     | 0x1a2e EC_ValidatePublicKey()
  5316 ms     | 0x1a2e ret:0x0
  5316 ms  0x1a2e ret:0x7f56ce246820::7f56ce246820  00 76 1d ce                                      .v..
  5316 ms  0x1a2e PK11_PubDeriveWithKDF()
  5316 ms  0x1a2e seckey:0x7f56ce246820
  5316 ms     | 0x1a2e EC_ValidatePublicKey()
  5317 ms     | 0x1a2e ret:0x0
  5319 ms  0x1a2e ret:0x7f56ce10b400
  5319 ms  0x1a2e PK11_DeriveWithFlags()
  5319 ms  0x1a2e basekey:0x7f56ce10b400
  5319 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5319 ms  0x1a2e ret:0x7f56ce26fa80
  5319 ms  0x1a2e PK11_Derive()
  5319 ms  0x1a2e basekey:0x7f56ce26fa80
  5319 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5319 ms  0x1a2e ret:0x7f56ce26fb00
  5319 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5319 ms  0x1a2e privk:0x7f56ce246820::7f56ce246820  00 76 1d ce                                      .v..
  5319 ms  0x1a2e privk:0x7f56ce246820::7f56ce246820  e5 e5 e5 e5                                      ....
  5319 ms  0x1a2e PK11_Encrypt()
  5319 ms  0x1a2e symkey:0x7f56ce26fc80
  5320 ms  0x1a2e SSL_AuthCertificateComplete()
  5320 ms  0x1a2e fd:0x7f56e04b20a0
  5320 ms  0x1a2e err:0x0
  5320 ms  0x1a2e PK11_Encrypt()
  5320 ms  0x1a2e symkey:0x7f56ce10b580
  5321 ms  0x1a2e PK11_Encrypt()
  5321 ms  0x1a2e symkey:0x7f56ce10b580
  5321 ms  0x1a2e SSL_AuthCertificateComplete()
  5321 ms  0x1a2e fd:0x7f56df39f9d0
  5321 ms  0x1a2e err:0x0
  5321 ms  0x1a2e SSL_AuthCertificateComplete()
  5321 ms  0x1a2e fd:0x7f56e04b2040
  5321 ms  0x1a2e err:0x0
  5321 ms  0x1a2e PK11_Encrypt()
  5321 ms  0x1a2e symkey:0x7f56ce26f680
  5321 ms  0x1a2e PK11_Encrypt()
  5321 ms  0x1a2e symkey:0x7f56ce26f680
  5321 ms  0x1a2e PK11_Encrypt()
  5321 ms  0x1a2e symkey:0x7f56ce10b580
  5322 ms  0x1a2e PK11_Encrypt()
  5322 ms  0x1a2e symkey:0x7f56ce26f980
  5322 ms  0x1a2e PK11_Encrypt()
  5322 ms  0x1a2e symkey:0x7f56ce26fc80
  5322 ms  0x1a2e PK11_Encrypt()
  5322 ms  0x1a2e symkey:0x7f56ce26f680
  5323 ms  0x1a2e PK11_Encrypt()
  5323 ms  0x1a2e symkey:0x7f56ce10b580
  5326 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5326 ms  0x1a2e privk:0x7f56ce4d7820::7f56ce4d7820  10 ba 49 ce                                      ..I.
  5326 ms  0x1a2e privk:0x7f56ce4d7820::7f56ce4d7820  e5 e5 e5 e5                                      ....
  5326 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5326 ms  0x1a2e privk:0x7f56ce4d5820::7f56ce4d5820  90 bc 12 ce                                      ....
  5326 ms  0x1a2e privk:0x7f56ce4d5820::7f56ce4d5820  e5 e5 e5 e5                                      ....
  5331 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5331 ms  0x1a2e privk:0x7f56ce5af020::7f56ce5af020  b0 c0 5d ce                                      ..].
  5331 ms  0x1a2e privk:0x7f56ce5af020::7f56ce5af020  e5 e5 e5 e5                                      ....
  5331 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5331 ms  0x1a2e privk:0x7f56ce4da820::7f56ce4da820  90 bc 49 ce                                      ..I.
  5332 ms  0x1a2e privk:0x7f56ce4da820::7f56ce4da820  e5 e5 e5 e5                                      ....
  5332 ms  0x1a2e PR_Close()
  5332 ms  0x1a2e fd:0x7f56df39fac0
  5332 ms     | 0x1a2e PK11_Encrypt()
  5332 ms     | 0x1a2e symkey:0x7f56ce10bd00
  5343 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5343 ms  0x1a2e privk:0x7f56ce183820::7f56ce183820  70 a9 ba ec                                      p...
  5343 ms  0x1a2e privk:0x7f56ce183820::7f56ce183820  e5 e5 e5 e5                                      ....
  5343 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5343 ms  0x1a2e privk:0x7f56ce181820::7f56ce181820  80 c3 5d ce                                      ..].
  5343 ms  0x1a2e privk:0x7f56ce181820::7f56ce181820  e5 e5 e5 e5                                      ....
  5343 ms  0x1a2e PR_Close()
  5343 ms  0x1a2e fd:0x7f56df39fa90
  5343 ms     | 0x1a2e PK11_Encrypt()
  5343 ms     | 0x1a2e symkey:0x7f56ce10bf80
  5350 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5350 ms  0x1a2e privk:0x7f56ce188020::7f56ce188020  30 a3 1a ce                                      0...
  5350 ms  0x1a2e privk:0x7f56ce188020::7f56ce188020  e5 e5 e5 e5                                      ....
  5350 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5350 ms  0x1a2e privk:0x7f56ce186020::7f56ce186020  50 a1 1a ce                                      P...
  5350 ms  0x1a2e privk:0x7f56ce186020::7f56ce186020  e5 e5 e5 e5                                      ....
  5350 ms  0x1a2e PR_Close()
  5350 ms  0x1a2e fd:0x7f56df39fa60
  5350 ms     | 0x1a2e PK11_Encrypt()
  5350 ms     | 0x1a2e symkey:0x7f56ce26f080
  5352 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5352 ms  0x1a2e privk:0x7f56ce18d020::7f56ce18d020  50 a6 1a ce                                      P...
  5352 ms  0x1a2e privk:0x7f56ce18d020::7f56ce18d020  e5 e5 e5 e5                                      ....
  5352 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5352 ms  0x1a2e privk:0x7f56ce18b020::7f56ce18b020  70 a4 1a ce                                      p...
  5352 ms  0x1a2e privk:0x7f56ce18b020::7f56ce18b020  e5 e5 e5 e5                                      ....
  5352 ms  0x1a2e PR_Close()
  5352 ms  0x1a2e fd:0x7f56df39fa30
  5352 ms     | 0x1a2e PK11_Encrypt()
  5352 ms     | 0x1a2e symkey:0x7f56ce26f380
  5361 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5361 ms  0x1a2e privk:0x7f56ce19a820::7f56ce19a820  b0 af 1a ce                                      ....
  5361 ms  0x1a2e privk:0x7f56ce19a820::7f56ce19a820  e5 e5 e5 e5                                      ....
  5361 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5361 ms  0x1a2e privk:0x7f56ce198820::7f56ce198820  d0 ad 1a ce                                      ....
  5361 ms  0x1a2e privk:0x7f56ce198820::7f56ce198820  e5 e5 e5 e5                                      ....
  5374 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5374 ms  0x1a2e privk:0x7f56ce191820::7f56ce191820  70 a9 1a ce                                      p...
  5375 ms  0x1a2e privk:0x7f56ce191820::7f56ce191820  e5 e5 e5 e5                                      ....
  5375 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5375 ms  0x1a2e privk:0x7f56ce18f820::7f56ce18f820  90 a7 1a ce                                      ....
  5375 ms  0x1a2e privk:0x7f56ce18f820::7f56ce18f820  e5 e5 e5 e5                                      ....
  5375 ms  0x1a2e PR_Close()
  5375 ms  0x1a2e fd:0x7f56df39f9d0
  5375 ms     | 0x1a2e PK11_Encrypt()
  5375 ms     | 0x1a2e symkey:0x7f56ce26f980
  5382 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5382 ms  0x1a2e privk:0x7f56ce196020::7f56ce196020  90 ac 1a ce                                      ....
  5382 ms  0x1a2e privk:0x7f56ce196020::7f56ce196020  e5 e5 e5 e5                                      ....
  5382 ms  0x1a2e SECKEY_DestroyPrivateKey()
  5382 ms  0x1a2e privk:0x7f56ce194020::7f56ce194020  b0 aa 1a ce                                      ....
  5382 ms  0x1a2e privk:0x7f56ce194020::7f56ce194020  e5 e5 e5 e5                                      ....
  5382 ms  0x1a2e PR_Close()
  5382 ms  0x1a2e fd:0x7f56e04b2040
  5383 ms     | 0x1a2e PK11_Encrypt()
  5383 ms     | 0x1a2e symkey:0x7f56ce26fc80
  5392 ms  0x1a2e PK11_Encrypt()
  5392 ms  0x1a2e symkey:0x7f56ce10b580
  5422 ms  0x1a2e PK11_Encrypt()
  5422 ms  0x1a2e symkey:0x7f56ce26f680
           /* TID 0x1a36 */
  5501 ms  0x1a36 PR_Close()
  5501 ms  0x1a36 fd:0x7f56ce461790
  5531 ms  0x1a36 PR_Close()
  5531 ms  0x1a36 fd:0x7f56ce461790
  5535 ms  0x1a36 PR_Close()
  5535 ms  0x1a36 fd:0x7f56ce4611f0
  5546 ms  0x1a36 PR_Close()
  5546 ms  0x1a36 fd:0x7f56ce4611f0
  5587 ms  0x1a36 PR_Close()
  5587 ms  0x1a36 fd:0x7f56ce461190
  5591 ms  0x1a36 PR_Close()
  5591 ms  0x1a36 fd:0x7f56ce461130
  5603 ms  0x1a36 PR_Close()
  5603 ms  0x1a36 fd:0x7f56ce461130
  5612 ms  0x1a36 PR_Close()
  5612 ms  0x1a36 fd:0x7f56ce461070
  5613 ms  0x1a36 PR_Close()
  5613 ms  0x1a36 fd:0x7f56ce461070
  5660 ms  0x1a36 PR_Close()
  5660 ms  0x1a36 fd:0x7f56ce4619d0
  5664 ms  0x1a36 PR_Close()
  5664 ms  0x1a36 fd:0x7f56ce4610d0
           /* TID 0x1a2e */
  5913 ms  0x1a2e SSL_ImportFD()
  5914 ms  0x1a2e ret:0x7f56df39fa30
  5914 ms  0x1a2e SSL_AuthCertificateHook()
  5914 ms  0x1a2e fd:0x7f56df39fa30
  5914 ms  0x1a2e ret:0x0
  5914 ms  0x1a2e PR_Connect()
  5914 ms  0x1a2e fd:0x7f56df39fa30
  5916 ms  0x1a2e PK11_Encrypt()
  5916 ms  0x1a2e symkey:0x7f56ce10b580
  5917 ms  0x1a2e PK11_Encrypt()
  5917 ms  0x1a2e symkey:0x7f56ce10b580
  5921 ms  0x1a2e SSL_ImportFD()
  5921 ms  0x1a2e ret:0x7f56e04b21f0
  5921 ms  0x1a2e SSL_AuthCertificateHook()
  5921 ms  0x1a2e fd:0x7f56e04b21f0
  5921 ms  0x1a2e ret:0x0
  5921 ms  0x1a2e PR_Connect()
  5921 ms  0x1a2e fd:0x7f56e04b21f0
  5925 ms  0x1a2e PK11_Encrypt()
  5925 ms  0x1a2e symkey:0x7f56ce5f0f80
  5932 ms  0x1a2e PK11_Encrypt()
  5932 ms  0x1a2e symkey:0x7f56ce5f0f80
  5932 ms  0x1a2e PK11_Encrypt()
  5932 ms  0x1a2e symkey:0x7f56ce5f0f80
  5934 ms  0x1a2e PK11_Encrypt()
  5934 ms  0x1a2e symkey:0x7f56ce5f0f80
  5939 ms  0x1a2e PK11_Encrypt()
  5939 ms  0x1a2e symkey:0x7f56ce5f0f80
  5939 ms  0x1a2e PK11_Encrypt()
  5939 ms  0x1a2e symkey:0x7f56ce5f0f80
  5950 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5950 ms  0x1a2e cx:0x7f56df3c5428
  5951 ms     | 0x1a2e EC_ValidatePublicKey()
  5951 ms     | 0x1a2e ret:0x0
  5951 ms  0x1a2e ret:0x7f56ce18f820::7f56ce18f820  d0 b8 49 ce                                      ..I.
  5951 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5951 ms  0x1a2e cx:0x7f56df3c5428
  5951 ms     | 0x1a2e EC_ValidatePublicKey()
  5953 ms     | 0x1a2e ret:0x0
  5953 ms  0x1a2e ret:0x7f56ce191820::7f56ce191820  b0 7f 1d ce                                      ....
  5959 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5959 ms  0x1a2e cx:0x7f56df3c55c8
  5959 ms     | 0x1a2e EC_ValidatePublicKey()
  5959 ms     | 0x1a2e ret:0x0
  5959 ms  0x1a2e ret:0x7f56ce194020::7f56ce194020  e0 bc 49 ce                                      ..I.
  5959 ms  0x1a2e SECKEY_CreateECPrivateKey()
  5959 ms  0x1a2e cx:0x7f56df3c55c8
  5960 ms     | 0x1a2e EC_ValidatePublicKey()
  5961 ms     | 0x1a2e ret:0x0
  5962 ms  0x1a2e ret:0x7f56ce196020::7f56ce196020  c0 be 49 ce                                      ..I.
  5969 ms  0x1a2e PK11_Encrypt()
  5969 ms  0x1a2e symkey:0x7f56ce5f0f80
  5976 ms  0x1a2e PK11_Encrypt()
  5976 ms  0x1a2e symkey:0x7f56ce5f0f80
  5978 ms  0x1a2e PK11_Encrypt()
  5978 ms  0x1a2e symkey:0x7f56ce5f0f80
  5981 ms  0x1a2e PK11_Encrypt()
  5981 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  5982 ms  0x1a36 PR_Close()
  5982 ms  0x1a36 fd:0x7f56df39f850
           /* TID 0x1a2e */
  5983 ms  0x1a2e PK11_Encrypt()
  5983 ms  0x1a2e symkey:0x7f56ce5f0f80
  5984 ms  0x1a2e PK11_Encrypt()
  5984 ms  0x1a2e symkey:0x7f56ce5f0f80
  5986 ms  0x1a2e PK11_Encrypt()
  5986 ms  0x1a2e symkey:0x7f56ce5f0f80
  5987 ms  0x1a2e PK11_Encrypt()
  5987 ms  0x1a2e symkey:0x7f56ce5f0f80
  5989 ms  0x1a2e PK11_Encrypt()
  5989 ms  0x1a2e symkey:0x7f56ce5f0f80
  5990 ms  0x1a2e PK11_Encrypt()
  5990 ms  0x1a2e symkey:0x7f56ce5f0f80
  5992 ms  0x1a2e PK11_Encrypt()
  5992 ms  0x1a2e symkey:0x7f56ce5f0f80
  5992 ms  0x1a2e PK11_Derive()
  5992 ms  0x1a2e basekey:0x7f56ce26fb00
  5992 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5992 ms  0x1a2e ret:0x7f56ce26fa80
  5992 ms  0x1a2e PK11_PubDeriveWithKDF()
  5992 ms  0x1a2e seckey:0x7f56ce18f820
  5992 ms     | 0x1a2e EC_ValidatePublicKey()
  5992 ms     | 0x1a2e ret:0x0
  5993 ms  0x1a2e ret:0x7f56ce26fb00
  5993 ms  SECKEY_ECParamsToKeySize()
  5993 ms  0x1a2e ret:0xff
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26fa80
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f800
  5993 ms  0x1a2e PK11_Derive()
  5993 ms  0x1a2e basekey:0x7f56ce26fb00
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f780
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26f780
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26fa80
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26f780
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26fb00
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26f780
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f800
  5993 ms  0x1a2e PK11_Derive()
  5993 ms  0x1a2e basekey:0x7f56ce26f200
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f180
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26fb00
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f780
  5993 ms  0x1a2e PK11_DeriveWithFlags()
  5993 ms  0x1a2e basekey:0x7f56ce26fb00
  5993 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5993 ms  0x1a2e ret:0x7f56ce26f800
  5994 ms  0x1a2e PK11_DeriveWithFlags()
  5994 ms  0x1a2e basekey:0x7f56ce26fb00
  5994 ms     | 0x1a2e PK11_DeriveWithTemplate()
  5994 ms  0x1a2e ret:0x7f56ce26f800
           /* TID 0x1a36 */
  6012 ms  0x1a36 PR_Close()
  6012 ms  0x1a36 fd:0x7f56ce2ba070
  6015 ms  0x1a36 PR_Close()
  6015 ms  0x1a36 fd:0x7f56ce2ba070
           /* TID 0x1a2e */
  6015 ms  0x1a2e PK11_Derive()
  6015 ms  0x1a2e basekey:0x7f56ce26f800
  6015 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6015 ms  0x1a2e ret:0x7f56ce26f200
  6015 ms  0x1a2e PK11_PubDeriveWithKDF()
  6015 ms  0x1a2e seckey:0x7f56ce194020
  6015 ms     | 0x1a2e EC_ValidatePublicKey()
  6015 ms     | 0x1a2e ret:0x0
  6016 ms  0x1a2e ret:0x7f56ce26f800
  6016 ms  SECKEY_ECParamsToKeySize()
  6016 ms  0x1a2e ret:0xff
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce26f200
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce5f0800
  6016 ms  0x1a2e PK11_Derive()
  6016 ms  0x1a2e basekey:0x7f56ce26f800
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce4fa200
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce4fa200
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce26f200
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce4fa200
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce26f800
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce4fa200
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce5f0800
  6016 ms  0x1a2e PK11_Derive()
  6016 ms  0x1a2e basekey:0x7f56ce10be00
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce10aa00
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce26f800
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce4fa200
  6016 ms  0x1a2e PK11_DeriveWithFlags()
  6016 ms  0x1a2e basekey:0x7f56ce26f800
  6016 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6016 ms  0x1a2e ret:0x7f56ce5f0800
           /* TID 0x1a36 */
  6017 ms  0x1a36 PR_Close()
  6017 ms  0x1a36 fd:0x7f56ce2ba130
           /* TID 0x1a2e */
  6021 ms  SECKEY_ECParamsToKeySize()
  6021 ms  0x1a2e ret:0x100
  6021 ms  SECKEY_ECParamsToBasePointOrderLen()
  6021 ms  0x1a2e ret:0x100
  6021 ms  SECKEY_ECParamsToBasePointOrderLen()
  6021 ms  0x1a2e ret:0x100
  6021 ms  0x1a2e EC_ValidatePublicKey()
  6023 ms  0x1a2e ret:0x0
  6025 ms  0x1a2e PK11_DeriveWithFlags()
  6025 ms  0x1a2e basekey:0x7f56ce26f800
  6025 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6025 ms  0x1a2e ret:0x7f56ce5f0800
  6028 ms  0x1a2e PK11_Encrypt()
  6028 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6033 ms  0x1a36 PR_Close()
  6033 ms  0x1a36 fd:0x7f56ce2ba0d0
           /* TID 0x1a89 */
  6033 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6033 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  6033 ms  0x1a2e PK11_Encrypt()
  6033 ms  0x1a2e symkey:0x7f56ce5f0f80
  6033 ms  0x1a2e PK11_Encrypt()
  6033 ms  0x1a2e symkey:0x7f56ce5f0f80
  6033 ms  0x1a2e PK11_Encrypt()
  6033 ms  0x1a2e symkey:0x7f56ce5f0f80
  6034 ms  0x1a2e SSL_AuthCertificateComplete()
  6034 ms  0x1a2e fd:0x7f56df39fa30
  6034 ms  0x1a2e err:0x0
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26f180
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce5f0800
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26f180
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce10be00
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26f180
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce10bb80
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26fa80
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce10bb00
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26fa80
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce10b400
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce10be00
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce10b400
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce10be00
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce26fc00
  6034 ms     | 0x1a2e PK11_DeriveWithFlags()
  6034 ms     | 0x1a2e basekey:0x7f56ce26fa80
  6034 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6034 ms     | 0x1a2e ret:0x7f56ce26f780
  6034 ms     | 0x1a2e PK11_Encrypt()
  6034 ms     | 0x1a2e symkey:0x7f56ce10bb00
  6036 ms     | 0x1a2e PK11_DeriveWithFlags()
  6036 ms     | 0x1a2e basekey:0x7f56ce5f0800
  6037 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6037 ms     | 0x1a2e ret:0x7f56ce26f780
  6037 ms     | 0x1a2e PK11_DeriveWithFlags()
  6037 ms     | 0x1a2e basekey:0x7f56ce5f0800
  6037 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6037 ms     | 0x1a2e ret:0x7f56ce26fc00
  6037 ms     | 0x1a2e PK11_DeriveWithFlags()
  6037 ms     | 0x1a2e basekey:0x7f56ce26f180
  6037 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6037 ms     | 0x1a2e ret:0x7f56ce10bb00
  6037 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6037 ms     | 0x1a2e privk:0x7f56ce191820::7f56ce191820  b0 7f 1d ce                                      ....
  6037 ms     | 0x1a2e privk:0x7f56ce191820::7f56ce191820  e5 e5 e5 e5                                      ....
  6037 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6037 ms     | 0x1a2e privk:0x7f56ce18f820::7f56ce18f820  d0 b8 49 ce                                      ..I.
  6037 ms     | 0x1a2e privk:0x7f56ce18f820::7f56ce18f820  e5 e5 e5 e5                                      ....
  6037 ms  0x1a2e PK11_Encrypt()
  6037 ms  0x1a2e symkey:0x7f56ce5f0f80
  6037 ms  0x1a2e PK11_Encrypt()
  6037 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6040 ms  0x1a36 PR_Close()
  6040 ms  0x1a36 fd:0x7f56ce2ba160
           /* TID 0x1a2e */
  6040 ms  0x1a2e PK11_Encrypt()
  6040 ms  0x1a2e symkey:0x7f56ce26f780
  6041 ms  0x1a2e PK11_Encrypt()
  6041 ms  0x1a2e symkey:0x7f56ce26f780
  6041 ms  0x1a2e PK11_Encrypt()
  6041 ms  0x1a2e symkey:0x7f56ce5f0f80
  6041 ms  0x1a2e PR_Connect()
  6041 ms  0x1a2e fd:0x7f56ce2bad30
  6041 ms  0x1a2e PK11_Encrypt()
  6041 ms  0x1a2e symkey:0x7f56ce5f0f80
  6042 ms  0x1a2e PK11_Encrypt()
  6042 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6043 ms  0x1a36 PR_Close()
  6043 ms  0x1a36 fd:0x7f56ce2baca0
           /* TID 0x1a2e */
  6045 ms  0x1a2e PK11_Encrypt()
  6045 ms  0x1a2e symkey:0x7f56ce5f0f80
  6046 ms  0x1a2e PK11_Encrypt()
  6046 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6047 ms  0x1a36 PR_Close()
  6047 ms  0x1a36 fd:0x7f56ce2ba3d0
  6049 ms  0x1a36 PR_Close()
  6049 ms  0x1a36 fd:0x7f56ce2ba3d0
           /* TID 0x1a2e */
  6053 ms  0x1a2e PK11_Encrypt()
  6053 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6056 ms  0x1a36 PR_Close()
  6056 ms  0x1a36 fd:0x7f56ce2ba160
           /* TID 0x1a2e */
  6057 ms  0x1a2e PK11_Encrypt()
  6057 ms  0x1a2e symkey:0x7f56ce5f0f80
  6059 ms  0x1a2e PK11_Encrypt()
  6059 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6059 ms  0x1a36 PR_Close()
  6059 ms  0x1a36 fd:0x7f56ce2ba280
  6061 ms  0x1a36 PR_Close()
  6061 ms  0x1a36 fd:0x7f56ce2ba280
  6061 ms  0x1a36 PR_Close()
  6061 ms  0x1a36 fd:0x7f56ce2ba280
  6063 ms  0x1a36 PR_Close()
  6063 ms  0x1a36 fd:0x7f56ce2ba280
  6063 ms  0x1a36 PR_Close()
  6063 ms  0x1a36 fd:0x7f56ce2ba160
           /* TID 0x1a2e */
  6064 ms  0x1a2e PK11_Encrypt()
  6064 ms  0x1a2e symkey:0x7f56ce5f0f80
  6066 ms  0x1a2e PK11_Encrypt()
  6066 ms  0x1a2e symkey:0x7f56ce5f0f80
  6067 ms  0x1a2e PK11_Encrypt()
  6067 ms  0x1a2e symkey:0x7f56ce5f0f80
  6070 ms  0x1a2e PK11_Encrypt()
  6070 ms  0x1a2e symkey:0x7f56ce5f0f80
  6070 ms  0x1a2e PK11_Encrypt()
  6070 ms  0x1a2e symkey:0x7f56ce5f0f80
  6070 ms  0x1a2e PK11_DeriveWithFlags()
  6070 ms  0x1a2e basekey:0x7f56ce10bb00
  6070 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6070 ms  0x1a2e ret:0x7f56ce26fb00
  6070 ms  0x1a2e PK11_Encrypt()
  6070 ms  0x1a2e symkey:0x7f56ce26f780
  6072 ms  0x1a2e PK11_Encrypt()
  6072 ms  0x1a2e symkey:0x7f56ce5f0f80
  6072 ms  0x1a2e PK11_Encrypt()
  6072 ms  0x1a2e symkey:0x7f56ce5f0f80
  6072 ms  0x1a2e PK11_Encrypt()
  6072 ms  0x1a2e symkey:0x7f56ce5f0f80
  6072 ms  0x1a2e PK11_Encrypt()
  6072 ms  0x1a2e symkey:0x7f56ce5f0f80
  6076 ms  0x1a2e PK11_Encrypt()
  6076 ms  0x1a2e symkey:0x7f56ce5f0f80
  6077 ms  0x1a2e PK11_Encrypt()
  6077 ms  0x1a2e symkey:0x7f56ce5f0f80
  6077 ms  0x1a2e PK11_Encrypt()
  6077 ms  0x1a2e symkey:0x7f56ce5f0f80
  6077 ms  0x1a2e PK11_Encrypt()
  6077 ms  0x1a2e symkey:0x7f56ce5f0f80
  6078 ms  0x1a2e PK11_Encrypt()
  6078 ms  0x1a2e symkey:0x7f56ce5f0f80
  6088 ms  0x1a2e PK11_Encrypt()
  6088 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6090 ms  0x1a36 PR_Close()
  6090 ms  0x1a36 fd:0x7f56ce06f130
  6091 ms  0x1a36 PR_Close()
  6091 ms  0x1a36 fd:0x7f56ce06f130
  6093 ms  0x1a36 PR_Close()
  6093 ms  0x1a36 fd:0x7f56ce06f130
  6094 ms  0x1a36 PR_Close()
  6094 ms  0x1a36 fd:0x7f56ce06f130
  6095 ms  0x1a36 PR_Close()
  6095 ms  0x1a36 fd:0x7f56ce06f130
  6097 ms  0x1a36 PR_Close()
  6097 ms  0x1a36 fd:0x7f56ce06f130
  6099 ms  0x1a36 PR_Close()
  6099 ms  0x1a36 fd:0x7f56ce06f130
  6102 ms  0x1a36 PR_Close()
  6102 ms  0x1a36 fd:0x7f56ce06f130
  6103 ms  0x1a36 PR_Close()
  6103 ms  0x1a36 fd:0x7f56ce06f130
  6104 ms  0x1a36 PR_Close()
  6104 ms  0x1a36 fd:0x7f56ce06f130
  6105 ms  0x1a36 PR_Close()
  6105 ms  0x1a36 fd:0x7f56ce06f130
           /* TID 0x1a2e */
  6106 ms  0x1a2e PK11_Encrypt()
  6106 ms  0x1a2e symkey:0x7f56ce5f0f80
  6107 ms  0x1a2e PK11_Encrypt()
  6107 ms  0x1a2e symkey:0x7f56ce5f0f80
  6112 ms  0x1a2e PK11_Encrypt()
  6112 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6113 ms  0x1a36 PR_Close()
  6113 ms  0x1a36 fd:0x7f56ce06f2e0
  6114 ms  0x1a36 PR_Close()
  6114 ms  0x1a36 fd:0x7f56ce06f2e0
  6115 ms  0x1a36 PR_Close()
  6115 ms  0x1a36 fd:0x7f56ce06f2e0
  6115 ms  0x1a36 PR_Close()
  6115 ms  0x1a36 fd:0x7f56ce06f2e0
  6116 ms  0x1a36 PR_Close()
  6116 ms  0x1a36 fd:0x7f56ce06f2e0
  6122 ms  0x1a36 PR_Close()
  6122 ms  0x1a36 fd:0x7f56ce06f2e0
  6123 ms  0x1a36 PR_Close()
  6123 ms  0x1a36 fd:0x7f56ce06f2e0
  6124 ms  0x1a36 PR_Close()
  6124 ms  0x1a36 fd:0x7f56ce06f2e0
  6125 ms  0x1a36 PR_Close()
  6125 ms  0x1a36 fd:0x7f56ce06f100
  6125 ms  0x1a36 PR_Close()
  6125 ms  0x1a36 fd:0x7f56ce06f100
  6126 ms  0x1a36 PR_Close()
  6126 ms  0x1a36 fd:0x7f56ce06f100
  6127 ms  0x1a36 PR_Close()
  6127 ms  0x1a36 fd:0x7f56ce06f100
  6128 ms  0x1a36 PR_Close()
  6128 ms  0x1a36 fd:0x7f56ce06f100
  6129 ms  0x1a36 PR_Close()
  6129 ms  0x1a36 fd:0x7f56ce06f100
           /* TID 0x1a2e */
  6129 ms  0x1a2e PK11_Encrypt()
  6129 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6130 ms  0x1a36 PR_Close()
  6130 ms  0x1a36 fd:0x7f56ce06f310
  6131 ms  0x1a36 PR_Close()
  6131 ms  0x1a36 fd:0x7f56ce06f250
  6131 ms  0x1a36 PR_Close()
  6131 ms  0x1a36 fd:0x7f56ce06f1c0
           /* TID 0x1a2e */
  6158 ms  0x1a2e PK11_Encrypt()
  6158 ms  0x1a2e symkey:0x7f56ce5f0f80
  6159 ms  0x1a2e PK11_Encrypt()
  6159 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6160 ms  0x1a36 PR_Close()
  6160 ms  0x1a36 fd:0x7f56ce06f100
  6162 ms  0x1a36 PR_Close()
  6162 ms  0x1a36 fd:0x7f56ce06f070
  6163 ms  0x1a36 PR_Close()
  6163 ms  0x1a36 fd:0x7f56ce06f070
  6172 ms  0x1a36 PR_Close()
  6172 ms  0x1a36 fd:0x7f56ce06f070
  6173 ms  0x1a36 PR_Close()
  6173 ms  0x1a36 fd:0x7f56ce06f070
           /* TID 0x1a2e */
  6174 ms  0x1a2e PK11_Encrypt()
  6174 ms  0x1a2e symkey:0x7f56ce5f0f80
  6174 ms  0x1a2e PK11_Encrypt()
  6174 ms  0x1a2e symkey:0x7f56ce5f0f80
  6175 ms  0x1a2e PK11_Encrypt()
  6175 ms  0x1a2e symkey:0x7f56ce5f0f80
  6175 ms  0x1a2e PK11_Encrypt()
  6175 ms  0x1a2e symkey:0x7f56ce5f0f80
  6175 ms  0x1a2e PK11_Encrypt()
  6175 ms  0x1a2e symkey:0x7f56ce5f0f80
  6175 ms  0x1a2e PK11_Encrypt()
  6175 ms  0x1a2e symkey:0x7f56ce5f0f80
  6176 ms  0x1a2e PK11_Encrypt()
  6176 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a36 */
  6185 ms  0x1a36 PR_Close()
  6185 ms  0x1a36 fd:0x7f56ce06f0d0
  6216 ms  0x1a36 PR_Close()
  6216 ms  0x1a36 fd:0x7f56ce06f0a0
  6218 ms  0x1a36 PR_Close()
  6218 ms  0x1a36 fd:0x7f56ce06f0a0
  6219 ms  0x1a36 PR_Close()
  6219 ms  0x1a36 fd:0x7f56ce06f0a0
  6220 ms  0x1a36 PR_Close()
  6220 ms  0x1a36 fd:0x7f56ce06f0a0
  6221 ms  0x1a36 PR_Close()
  6221 ms  0x1a36 fd:0x7f56ce06f0a0
  6221 ms  0x1a36 PR_Close()
  6221 ms  0x1a36 fd:0x7f56ce06f0a0
  6223 ms  0x1a36 PR_Close()
  6223 ms  0x1a36 fd:0x7f56ce06f0a0
  6223 ms  0x1a36 PR_Close()
  6223 ms  0x1a36 fd:0x7f56ce06f0a0
  6230 ms  0x1a36 PR_Close()
  6230 ms  0x1a36 fd:0x7f56ce06f160
           /* TID 0x1ac1 */
  6230 ms  0x1ac1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6230 ms  0x1ac1 ret:0x0
           /* TID 0x1a2e */
  6237 ms  0x1a2e SSL_AuthCertificateComplete()
  6237 ms  0x1a2e fd:0x7f56e04b21f0
  6237 ms  0x1a2e err:0x0
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fb00
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fa80
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26f180
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26f200
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fc00
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26f200
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fd00
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26fa80
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fd00
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26fa80
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fb80
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26f200
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce4fa200
  6237 ms     | 0x1a2e PK11_Encrypt()
  6237 ms     | 0x1a2e symkey:0x7f56ce26fc00
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26fb00
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce4fa200
  6237 ms     | 0x1a2e PK11_DeriveWithFlags()
  6237 ms     | 0x1a2e basekey:0x7f56ce26fb00
  6237 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6237 ms     | 0x1a2e ret:0x7f56ce26fb80
  6238 ms     | 0x1a2e PK11_DeriveWithFlags()
  6238 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6238 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6238 ms     | 0x1a2e ret:0x7f56ce26fc00
  6238 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6238 ms     | 0x1a2e privk:0x7f56ce196020::7f56ce196020  c0 be 49 ce                                      ..I.
  6238 ms     | 0x1a2e privk:0x7f56ce196020::7f56ce196020  e5 e5 e5 e5                                      ....
  6238 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6238 ms     | 0x1a2e privk:0x7f56ce194020::7f56ce194020  e0 bc 49 ce                                      ..I.
  6238 ms     | 0x1a2e privk:0x7f56ce194020::7f56ce194020  e5 e5 e5 e5                                      ....
  6238 ms  0x1a2e PK11_Encrypt()
  6238 ms  0x1a2e symkey:0x7f56ce4fa200
  6238 ms  0x1a2e PK11_Encrypt()
  6238 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  6249 ms  0x1a36 PR_Close()
  6249 ms  0x1a36 fd:0x7f56ce06f190
  6249 ms  0x1a36 PR_Close()
  6249 ms  0x1a36 fd:0x7f56ce06f190
           /* TID 0x1a2e */
  6263 ms  0x1a2e SSL_ImportFD()
  6263 ms  0x1a2e ret:0x7f56ce2ba520
  6263 ms  0x1a2e SSL_AuthCertificateHook()
  6263 ms  0x1a2e fd:0x7f56ce2ba520
  6263 ms  0x1a2e ret:0x0
  6263 ms  0x1a2e PR_Connect()
  6263 ms  0x1a2e fd:0x7f56ce2ba520
  6275 ms  0x1a2e PK11_DeriveWithFlags()
  6275 ms  0x1a2e basekey:0x7f56ce26fc00
  6275 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6275 ms  0x1a2e ret:0x7f56ce26f800
  6275 ms  0x1a2e PK11_DeriveWithFlags()
  6275 ms  0x1a2e basekey:0x7f56ce26fc00
  6275 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6275 ms  0x1a2e ret:0x7f56ce26f800
  6275 ms  0x1a2e PK11_Encrypt()
  6275 ms  0x1a2e symkey:0x7f56ce4fa200
  6292 ms  0x1a2e PK11_Encrypt()
  6292 ms  0x1a2e symkey:0x7f56ce26f780
  6300 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6300 ms  0x1a2e cx:0x7f56df3c6c88
  6301 ms     | 0x1a2e EC_ValidatePublicKey()
  6301 ms     | 0x1a2e ret:0x0
  6301 ms  0x1a2e ret:0x7f56ce254820::7f56ce254820  70 69 1c ce                                      pi..
  6301 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6301 ms  0x1a2e cx:0x7f56df3c6c88
  6302 ms     | 0x1a2e EC_ValidatePublicKey()
  6304 ms     | 0x1a2e ret:0x0
  6304 ms  0x1a2e ret:0x7f56ce25a020::7f56ce25a020  b0 6a 1c ce                                      .j..
  6358 ms  0x1a2e PK11_Derive()
  6358 ms  0x1a2e basekey:0x7f56ce26f800
  6358 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6358 ms  0x1a2e ret:0x7f56ce26f200
  6358 ms  0x1a2e PK11_PubDeriveWithKDF()
  6358 ms  0x1a2e seckey:0x7f56ce254820
  6358 ms     | 0x1a2e EC_ValidatePublicKey()
  6358 ms     | 0x1a2e ret:0x0
  6359 ms  0x1a2e ret:0x7f56ce26f800
  6359 ms  SECKEY_ECParamsToKeySize()
  6359 ms  0x1a2e ret:0xff
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26f200
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce10aa00
  6359 ms  0x1a2e PK11_Derive()
  6359 ms  0x1a2e basekey:0x7f56ce26f800
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce26fb80
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26fb80
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce26f200
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26fb80
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce26f800
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26fb80
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce10aa00
  6359 ms  0x1a2e PK11_Derive()
  6359 ms  0x1a2e basekey:0x7f56ce26fc80
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce26f900
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26f800
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce26fb80
  6359 ms  0x1a2e PK11_DeriveWithFlags()
  6359 ms  0x1a2e basekey:0x7f56ce26f800
  6359 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6359 ms  0x1a2e ret:0x7f56ce10aa00
  6361 ms  0x1a2e PK11_DeriveWithFlags()
  6361 ms  0x1a2e basekey:0x7f56ce26f800
  6361 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6361 ms  0x1a2e ret:0x7f56ce10aa00
           /* TID 0x1a36 */
  6365 ms  0x1a36 PR_Close()
  6365 ms  0x1a36 fd:0x7f56ce06f3d0
           /* TID 0x1a2e */
  6421 ms  0x1a2e PK11_Encrypt()
  6421 ms  0x1a2e symkey:0x7f56ce4fa200
  6452 ms  0x1a2e PK11_Encrypt()
  6452 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  6505 ms  0x1a36 PR_Close()
  6505 ms  0x1a36 fd:0x7f56ce2ba310
           /* TID 0x1a89 */
  6505 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6505 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  6505 ms  0x1a2e SSL_AuthCertificateComplete()
  6505 ms  0x1a2e fd:0x7f56ce2ba520
  6505 ms  0x1a2e err:0x0
  6505 ms     | 0x1a2e PK11_DeriveWithFlags()
  6505 ms     | 0x1a2e basekey:0x7f56ce26f900
  6505 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6505 ms     | 0x1a2e ret:0x7f56ce10aa00
  6505 ms     | 0x1a2e PK11_DeriveWithFlags()
  6505 ms     | 0x1a2e basekey:0x7f56ce26f900
  6505 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6505 ms     | 0x1a2e ret:0x7f56ce26fc80
  6505 ms     | 0x1a2e PK11_DeriveWithFlags()
  6505 ms     | 0x1a2e basekey:0x7f56ce26f900
  6505 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6505 ms     | 0x1a2e ret:0x7f56ce26fa00
  6505 ms     | 0x1a2e PK11_DeriveWithFlags()
  6505 ms     | 0x1a2e basekey:0x7f56ce26f200
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f880
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce26f200
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f980
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f980
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f300
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce26f200
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26fb80
  6506 ms     | 0x1a2e PK11_Encrypt()
  6506 ms     | 0x1a2e symkey:0x7f56ce26f880
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26fb80
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce10aa00
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f300
  6506 ms     | 0x1a2e PK11_DeriveWithFlags()
  6506 ms     | 0x1a2e basekey:0x7f56ce26f900
  6506 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6506 ms     | 0x1a2e ret:0x7f56ce26f880
  6506 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6506 ms     | 0x1a2e privk:0x7f56ce25a020::7f56ce25a020  b0 6a 1c ce                                      .j..
  6506 ms     | 0x1a2e privk:0x7f56ce25a020::7f56ce25a020  e5 e5 e5 e5                                      ....
  6506 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6506 ms     | 0x1a2e privk:0x7f56ce254820::7f56ce254820  70 69 1c ce                                      pi..
  6506 ms     | 0x1a2e privk:0x7f56ce254820::7f56ce254820  e5 e5 e5 e5                                      ....
  6507 ms  0x1a2e PK11_Encrypt()
  6507 ms  0x1a2e symkey:0x7f56ce26fb80
  6508 ms  0x1a2e PK11_Encrypt()
  6508 ms  0x1a2e symkey:0x7f56ce4fa200
  6526 ms  0x1a2e PK11_Encrypt()
  6526 ms  0x1a2e symkey:0x7f56ce26f680
  6527 ms  0x1a2e PK11_Encrypt()
  6527 ms  0x1a2e symkey:0x7f56ce26f680
  6527 ms  0x1a2e SSL_ImportFD()
  6527 ms  0x1a2e ret:0x7f56ce5ec9d0
  6527 ms  0x1a2e SSL_AuthCertificateHook()
  6527 ms  0x1a2e fd:0x7f56ce5ec9d0
  6527 ms  0x1a2e ret:0x0
  6527 ms  0x1a2e PR_Connect()
  6527 ms  0x1a2e fd:0x7f56ce5ec9d0
  6527 ms  0x1a2e SSL_ImportFD()
  6527 ms  0x1a2e ret:0x7f56df27b490
  6527 ms  0x1a2e SSL_AuthCertificateHook()
  6527 ms  0x1a2e fd:0x7f56df27b490
  6527 ms  0x1a2e ret:0x0
  6527 ms  0x1a2e PR_Connect()
  6527 ms  0x1a2e fd:0x7f56df27b490
  6544 ms  0x1a2e PK11_DeriveWithFlags()
  6544 ms  0x1a2e basekey:0x7f56ce26f880
  6544 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6544 ms  0x1a2e ret:0x7f56ce26f800
  6544 ms  0x1a2e PK11_DeriveWithFlags()
  6544 ms  0x1a2e basekey:0x7f56ce26f880
  6544 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6544 ms  0x1a2e ret:0x7f56ce26f800
  6544 ms  0x1a2e PR_Close()
  6544 ms  0x1a2e fd:0x7f56ce2ba520
  6544 ms     | 0x1a2e PK11_Encrypt()
  6544 ms     | 0x1a2e symkey:0x7f56ce26fb80
  6564 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6564 ms  0x1a2e cx:0x7f56df3c7b28
  6565 ms     | 0x1a2e EC_ValidatePublicKey()
  6565 ms     | 0x1a2e ret:0x0
  6565 ms  0x1a2e ret:0x7f56ce195820::7f56ce195820  10 6f 1c ce                                      .o..
  6565 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6565 ms  0x1a2e cx:0x7f56df3c7b28
  6566 ms     | 0x1a2e EC_ValidatePublicKey()
  6568 ms     | 0x1a2e ret:0x0
  6568 ms  0x1a2e ret:0x7f56ce4c7020::7f56ce4c7020  20 b9 49 ce                                       .I.
  6569 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6569 ms  0x1a2e cx:0x7f56df3c7988
  6570 ms     | 0x1a2e EC_ValidatePublicKey()
  6570 ms     | 0x1a2e ret:0x0
  6570 ms  0x1a2e ret:0x7f56ce4c9820::7f56ce4c9820  c0 b9 49 ce                                      ..I.
  6570 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6570 ms  0x1a2e cx:0x7f56df3c7988
  6571 ms     | 0x1a2e EC_ValidatePublicKey()
  6576 ms     | 0x1a2e ret:0x0
  6576 ms  0x1a2e ret:0x7f56ce4cc020::7f56ce4cc020  d0 bd 49 ce                                      ..I.
           /* TID 0x1a36 */
  6592 ms  0x1a36 PR_Close()
  6592 ms  0x1a36 fd:0x7f56ce2ba520
           /* TID 0x1a2e */
  6605 ms  0x1a2e PK11_Encrypt()
  6605 ms  0x1a2e symkey:0x7f56ce4fa200
  6606 ms  0x1a2e PK11_Derive()
  6606 ms  0x1a2e basekey:0x7f56ce26fa00
  6606 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6606 ms  0x1a2e ret:0x7f56ce26fc80
  6606 ms  0x1a2e PK11_PubDeriveWithKDF()
  6606 ms  0x1a2e seckey:0x7f56ce195820
  6606 ms     | 0x1a2e EC_ValidatePublicKey()
  6606 ms     | 0x1a2e ret:0x0
  6606 ms  0x1a2e ret:0x7f56ce26fa00
  6606 ms  SECKEY_ECParamsToKeySize()
  6606 ms  0x1a2e ret:0xff
  6606 ms  0x1a2e PK11_DeriveWithFlags()
  6606 ms  0x1a2e basekey:0x7f56ce26fc80
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce10aa00
  6607 ms  0x1a2e PK11_Derive()
  6607 ms  0x1a2e basekey:0x7f56ce26fa00
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce26f880
  6607 ms  0x1a2e PK11_DeriveWithFlags()
  6607 ms  0x1a2e basekey:0x7f56ce26f880
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce26fc80
  6607 ms  0x1a2e PK11_DeriveWithFlags()
  6607 ms  0x1a2e basekey:0x7f56ce26f880
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce26fa00
  6607 ms  0x1a2e PK11_DeriveWithFlags()
  6607 ms  0x1a2e basekey:0x7f56ce26f880
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce10aa00
  6607 ms  0x1a2e PK11_Derive()
  6607 ms  0x1a2e basekey:0x7f56ce26f980
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6607 ms  0x1a2e ret:0x7f56ce26fb80
  6607 ms  0x1a2e PK11_DeriveWithFlags()
  6607 ms  0x1a2e basekey:0x7f56ce26fa00
  6607 ms     | 0x1a2e PK11_DeriveWithTemplate()
           /* TID 0x1a36 */
  6608 ms  0x1a36 PR_Close()
  6608 ms  0x1a36 fd:0x7f56ce06f3d0
           /* TID 0x1a2e */
  6608 ms  0x1a2e ret:0x7f56ce26f880
  6608 ms  0x1a2e PK11_DeriveWithFlags()
  6608 ms  0x1a2e basekey:0x7f56ce26fa00
  6608 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6608 ms  0x1a2e ret:0x7f56ce10aa00
  6610 ms  SECKEY_ECParamsToKeySize()
  6610 ms  0x1a2e ret:0x100
  6610 ms  SECKEY_ECParamsToBasePointOrderLen()
  6610 ms  0x1a2e ret:0x100
  6610 ms  SECKEY_ECParamsToBasePointOrderLen()
  6610 ms  0x1a2e ret:0x100
  6610 ms  0x1a2e EC_ValidatePublicKey()
  6619 ms  0x1a2e ret:0x0
  6621 ms  0x1a2e PK11_DeriveWithFlags()
  6621 ms  0x1a2e basekey:0x7f56ce26fa00
  6621 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6621 ms  0x1a2e ret:0x7f56ce10aa00
  6626 ms  0x1a2e PK11_Derive()
  6626 ms  0x1a2e basekey:0x7f56ce10aa00
  6626 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6626 ms  0x1a2e ret:0x7f56ce26f980
  6626 ms  0x1a2e PK11_PubDeriveWithKDF()
  6626 ms  0x1a2e seckey:0x7f56ce4c9820
  6626 ms     | 0x1a2e EC_ValidatePublicKey()
  6626 ms     | 0x1a2e ret:0x0
  6627 ms  0x1a2e ret:0x7f56ce10aa00
  6627 ms  SECKEY_ECParamsToKeySize()
  6627 ms  0x1a2e ret:0xff
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce26f980
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f800
  6627 ms  0x1a2e PK11_Derive()
  6627 ms  0x1a2e basekey:0x7f56ce10aa00
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f200
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce26f200
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f980
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce26f200
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce10aa00
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce26f200
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f800
  6627 ms  0x1a2e PK11_Derive()
  6627 ms  0x1a2e basekey:0x7f56ce26f900
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f300
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce10aa00
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f200
  6627 ms  0x1a2e PK11_DeriveWithFlags()
  6627 ms  0x1a2e basekey:0x7f56ce10aa00
  6627 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6627 ms  0x1a2e ret:0x7f56ce26f800
  6631 ms  SECKEY_ECParamsToKeySize()
  6631 ms  0x1a2e ret:0x100
  6631 ms  SECKEY_ECParamsToBasePointOrderLen()
  6631 ms  0x1a2e ret:0x100
  6631 ms  SECKEY_ECParamsToBasePointOrderLen()
  6631 ms  0x1a2e ret:0x100
  6631 ms  0x1a2e EC_ValidatePublicKey()
  6633 ms  0x1a2e ret:0x0
  6635 ms  0x1a2e PK11_DeriveWithFlags()
  6635 ms  0x1a2e basekey:0x7f56ce10aa00
  6635 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6635 ms  0x1a2e ret:0x7f56ce26f800
  6639 ms  0x1a2e PR_Connect()
  6639 ms  0x1a2e fd:0x7f56ce5ece80
  6641 ms  0x1a2e PK11_Encrypt()
  6641 ms  0x1a2e symkey:0x7f56ce4fa200
  6644 ms  0x1a2e PK11_Encrypt()
  6644 ms  0x1a2e symkey:0x7f56ce4fa200
  6647 ms  0x1a2e PK11_Encrypt()
  6647 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  6652 ms  0x1a36 PR_Close()
  6652 ms  0x1a36 fd:0x7f56ce06f610
           /* TID 0x1ac1 */
  6652 ms  0x1ac1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6652 ms  0x1ac1 ret:0x0
           /* TID 0x1a2e */
  6652 ms  0x1a2e SSL_AuthCertificateComplete()
  6652 ms  0x1a2e fd:0x7f56df27b490
  6652 ms  0x1a2e err:0x0
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fb80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f800
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fb80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f900
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fb80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f400
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f280
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f380
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26f900
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f380
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26f900
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56e0963180
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6652 ms     | 0x1a2e ret:0x7f56ce26f880
  6652 ms     | 0x1a2e PK11_Encrypt()
  6652 ms     | 0x1a2e symkey:0x7f56ce26f280
  6652 ms     | 0x1a2e PK11_DeriveWithFlags()
  6652 ms     | 0x1a2e basekey:0x7f56ce26f800
  6652 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6653 ms     | 0x1a2e ret:0x7f56ce26f880
  6653 ms     | 0x1a2e PK11_DeriveWithFlags()
  6653 ms     | 0x1a2e basekey:0x7f56ce26f800
  6653 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6653 ms     | 0x1a2e ret:0x7f56e0963180
  6653 ms     | 0x1a2e PK11_DeriveWithFlags()
  6653 ms     | 0x1a2e basekey:0x7f56ce26fb80
  6653 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6653 ms     | 0x1a2e ret:0x7f56ce26f280
  6653 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6653 ms     | 0x1a2e privk:0x7f56ce4c7020::7f56ce4c7020  20 b9 49 ce                                       .I.
  6653 ms     | 0x1a2e privk:0x7f56ce4c7020::7f56ce4c7020  e5 e5 e5 e5                                      ....
  6653 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6653 ms     | 0x1a2e privk:0x7f56ce195820::7f56ce195820  10 6f 1c ce                                      .o..
  6653 ms     | 0x1a2e privk:0x7f56ce195820::7f56ce195820  e5 e5 e5 e5                                      ....
           /* TID 0x1a36 */
  6654 ms  0x1a36 PR_Close()
  6654 ms  0x1a36 fd:0x7f56ce2ba640
           /* TID 0x1a2e */
  6654 ms  0x1a2e PK11_Encrypt()
  6654 ms  0x1a2e symkey:0x7f56ce26f880
  6654 ms  0x1a2e PK11_Encrypt()
  6654 ms  0x1a2e symkey:0x7f56ce26f880
  6658 ms  0x1a2e PK11_Encrypt()
  6658 ms  0x1a2e symkey:0x7f56ce4fa200
  6660 ms  0x1a2e PK11_Encrypt()
  6660 ms  0x1a2e symkey:0x7f56ce4fa200
  6664 ms  0x1a2e SSL_ImportFD()
  6664 ms  0x1a2e ret:0x7f56df27bd90
  6664 ms  0x1a2e SSL_AuthCertificateHook()
  6664 ms  0x1a2e fd:0x7f56df27bd90
  6664 ms  0x1a2e ret:0x0
  6664 ms  0x1a2e PR_Connect()
  6664 ms  0x1a2e fd:0x7f56df27bd90
           /* TID 0x1a36 */
  6677 ms  0x1a36 PR_Close()
  6677 ms  0x1a36 fd:0x7f56df27bb80
           /* TID 0x1a89 */
  6677 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6677 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  6677 ms  0x1a2e SSL_AuthCertificateComplete()
  6677 ms  0x1a2e fd:0x7f56ce5ec9d0
  6677 ms  0x1a2e err:0x0
  6677 ms     | 0x1a2e PK11_DeriveWithFlags()
  6677 ms     | 0x1a2e basekey:0x7f56ce26f300
  6677 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6677 ms     | 0x1a2e ret:0x7f56ce26fa00
  6677 ms     | 0x1a2e PK11_DeriveWithFlags()
  6677 ms     | 0x1a2e basekey:0x7f56ce26f300
  6677 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6677 ms     | 0x1a2e ret:0x7f56ce26fc80
  6677 ms     | 0x1a2e PK11_DeriveWithFlags()
  6677 ms     | 0x1a2e basekey:0x7f56ce26f300
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce26fb80
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26f980
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56e0963180
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26f980
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce26f100
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce26f100
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce5f1900
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26f980
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce26f200
  6678 ms     | 0x1a2e PK11_Encrypt()
  6678 ms     | 0x1a2e symkey:0x7f56e0963180
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26fa00
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce26f200
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26fa00
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56ce5f1900
  6678 ms     | 0x1a2e PK11_DeriveWithFlags()
  6678 ms     | 0x1a2e basekey:0x7f56ce26f300
  6678 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6678 ms     | 0x1a2e ret:0x7f56e0963180
  6678 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6678 ms     | 0x1a2e privk:0x7f56ce4cc020::7f56ce4cc020  d0 bd 49 ce                                      ..I.
  6678 ms     | 0x1a2e privk:0x7f56ce4cc020::7f56ce4cc020  e5 e5 e5 e5                                      ....
  6678 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6678 ms     | 0x1a2e privk:0x7f56ce4c9820::7f56ce4c9820  c0 b9 49 ce                                      ..I.
  6678 ms     | 0x1a2e privk:0x7f56ce4c9820::7f56ce4c9820  e5 e5 e5 e5                                      ....
  6678 ms  0x1a2e PK11_Encrypt()
  6678 ms  0x1a2e symkey:0x7f56ce26f200
  6679 ms  0x1a2e PK11_Encrypt()
  6679 ms  0x1a2e symkey:0x7f56ce26f880
  6689 ms  0x1a2e PK11_DeriveWithFlags()
  6689 ms  0x1a2e basekey:0x7f56ce26f280
  6689 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6689 ms  0x1a2e ret:0x7f56ce10aa00
  6689 ms  0x1a2e PK11_Encrypt()
  6689 ms  0x1a2e symkey:0x7f56ce26f880
  6701 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6701 ms  0x1a2e cx:0x7f56df3c7e68
  6702 ms     | 0x1a2e EC_ValidatePublicKey()
  6702 ms     | 0x1a2e ret:0x0
  6702 ms  0x1a2e ret:0x7f56ce4cb820::7f56ce4cb820  c0 b9 49 ce                                      ..I.
  6702 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6702 ms  0x1a2e cx:0x7f56df3c7e68
  6703 ms     | 0x1a2e EC_ValidatePublicKey()
  6704 ms     | 0x1a2e ret:0x0
  6704 ms  0x1a2e ret:0x7f56ce5ad020::7f56ce5ad020  80 bd 49 ce                                      ..I.
  6714 ms  0x1a2e PK11_DeriveWithFlags()
  6714 ms  0x1a2e basekey:0x7f56e0963180
  6714 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6714 ms  0x1a2e ret:0x7f56ce10aa00
  6714 ms  0x1a2e PR_Close()
  6714 ms  0x1a2e fd:0x7f56ce5ec9d0
  6714 ms     | 0x1a2e PK11_Encrypt()
  6714 ms     | 0x1a2e symkey:0x7f56ce26f200
           /* TID 0x1a36 */
  6722 ms  0x1a36 PR_Close()
  6722 ms  0x1a36 fd:0x7f56ce06ff70
           /* TID 0x1a2e */
  6723 ms  0x1a2e PK11_Encrypt()
  6723 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  6730 ms  0x1a36 PR_Close()
  6730 ms  0x1a36 fd:0x7f56ce2ba940
           /* TID 0x1a2e */
  6758 ms  0x1a2e PK11_Derive()
  6758 ms  0x1a2e basekey:0x7f56ce26fb80
  6758 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6758 ms  0x1a2e ret:0x7f56ce26fc80
  6758 ms  0x1a2e PK11_PubDeriveWithKDF()
  6758 ms  0x1a2e seckey:0x7f56ce4cb820
  6758 ms     | 0x1a2e EC_ValidatePublicKey()
  6758 ms     | 0x1a2e ret:0x0
  6758 ms  0x1a2e ret:0x7f56ce26fb80
  6758 ms  SECKEY_ECParamsToKeySize()
  6758 ms  0x1a2e ret:0xff
  6758 ms  0x1a2e PK11_DeriveWithFlags()
  6758 ms  0x1a2e basekey:0x7f56ce26fc80
  6758 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6758 ms  0x1a2e ret:0x7f56ce26fa00
  6758 ms  0x1a2e PK11_Derive()
  6758 ms  0x1a2e basekey:0x7f56ce26fb80
  6758 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6758 ms  0x1a2e ret:0x7f56e0963180
  6758 ms  0x1a2e PK11_DeriveWithFlags()
  6758 ms  0x1a2e basekey:0x7f56e0963180
  6758 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6758 ms  0x1a2e ret:0x7f56ce26fc80
  6758 ms  0x1a2e PK11_DeriveWithFlags()
  6758 ms  0x1a2e basekey:0x7f56e0963180
  6758 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6759 ms  0x1a2e ret:0x7f56ce26fb80
  6759 ms  0x1a2e PK11_DeriveWithFlags()
  6759 ms  0x1a2e basekey:0x7f56e0963180
  6759 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6759 ms  0x1a2e ret:0x7f56ce26fa00
  6759 ms  0x1a2e PK11_Derive()
  6759 ms  0x1a2e basekey:0x7f56ce26f100
  6759 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6759 ms  0x1a2e ret:0x7f56ce26f200
  6759 ms  0x1a2e PK11_DeriveWithFlags()
  6759 ms  0x1a2e basekey:0x7f56ce26fb80
  6759 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6759 ms  0x1a2e ret:0x7f56e0963180
  6759 ms  0x1a2e PK11_DeriveWithFlags()
  6759 ms  0x1a2e basekey:0x7f56ce26fb80
  6759 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6759 ms  0x1a2e ret:0x7f56ce26fa00
  6761 ms  SECKEY_ECParamsToKeySize()
  6761 ms  0x1a2e ret:0x100
  6761 ms  SECKEY_ECParamsToBasePointOrderLen()
  6761 ms  0x1a2e ret:0x100
  6761 ms  SECKEY_ECParamsToBasePointOrderLen()
  6761 ms  0x1a2e ret:0x100
  6761 ms  0x1a2e EC_ValidatePublicKey()
  6763 ms  0x1a2e ret:0x0
  6765 ms  0x1a2e PK11_DeriveWithFlags()
  6765 ms  0x1a2e basekey:0x7f56ce26fb80
  6765 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms  0x1a2e ret:0x7f56ce26fa00
  6765 ms  0x1a2e SSL_AuthCertificateComplete()
  6765 ms  0x1a2e fd:0x7f56df27bd90
  6765 ms  0x1a2e err:0x0
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f200
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26fa00
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f200
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26f100
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f200
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce10aa00
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26f980
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26f300
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f100
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26f300
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f100
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce5f1900
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26fc80
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56e0963180
  6765 ms     | 0x1a2e PK11_Encrypt()
  6765 ms     | 0x1a2e symkey:0x7f56ce26f980
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26fa00
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56e0963180
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26fa00
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce5f1900
  6765 ms     | 0x1a2e PK11_DeriveWithFlags()
  6765 ms     | 0x1a2e basekey:0x7f56ce26f200
  6765 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  6765 ms     | 0x1a2e ret:0x7f56ce26f980
  6766 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6766 ms     | 0x1a2e privk:0x7f56ce5ad020::7f56ce5ad020  80 bd 49 ce                                      ..I.
  6766 ms     | 0x1a2e privk:0x7f56ce5ad020::7f56ce5ad020  e5 e5 e5 e5                                      ....
  6766 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  6766 ms     | 0x1a2e privk:0x7f56ce4cb820::7f56ce4cb820  c0 b9 49 ce                                      ..I.
  6766 ms     | 0x1a2e privk:0x7f56ce4cb820::7f56ce4cb820  e5 e5 e5 e5                                      ....
  6767 ms  0x1a2e PK11_Encrypt()
  6767 ms  0x1a2e symkey:0x7f56e0963180
  6771 ms  0x1a2e PK11_Encrypt()
  6771 ms  0x1a2e symkey:0x7f56e0963180
           /* TID 0x1a36 */
  6773 ms  0x1a36 PR_Close()
  6773 ms  0x1a36 fd:0x7f56df27b9a0
  6775 ms  0x1a36 PR_Close()
  6775 ms  0x1a36 fd:0x7f56df27b880
  6789 ms  0x1a36 PR_Close()
  6789 ms  0x1a36 fd:0x7f56ce5d8d30
           /* TID 0x1a2e */
  6796 ms  0x1a2e PK11_Encrypt()
  6796 ms  0x1a2e symkey:0x7f56ce26f880
  6798 ms  0x1a2e SSL_ImportFD()
  6798 ms  0x1a2e ret:0x7f56df27b910
  6798 ms  0x1a2e SSL_AuthCertificateHook()
  6798 ms  0x1a2e fd:0x7f56df27b910
  6798 ms  0x1a2e ret:0x0
  6798 ms  0x1a2e PR_Connect()
  6798 ms  0x1a2e fd:0x7f56df27b910
  6803 ms  0x1a2e PK11_DeriveWithFlags()
  6803 ms  0x1a2e basekey:0x7f56ce26f980
  6803 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6803 ms  0x1a2e ret:0x7f56ce26fb80
  6803 ms  0x1a2e PK11_DeriveWithFlags()
  6803 ms  0x1a2e basekey:0x7f56ce26f980
  6803 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6803 ms  0x1a2e ret:0x7f56ce26fb80
  6803 ms  0x1a2e PK11_Encrypt()
  6803 ms  0x1a2e symkey:0x7f56e0963180
  6836 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6836 ms  0x1a2e cx:0x7f56ea081e28
  6836 ms     | 0x1a2e EC_ValidatePublicKey()
  6836 ms     | 0x1a2e ret:0x0
  6836 ms  0x1a2e ret:0x7f56ce4cb820::7f56ce4cb820  f0 bb 49 ce                                      ..I.
  6836 ms  0x1a2e SECKEY_CreateECPrivateKey()
  6836 ms  0x1a2e cx:0x7f56ea081e28
  6837 ms     | 0x1a2e EC_ValidatePublicKey()
  6840 ms     | 0x1a2e ret:0x0
  6840 ms  0x1a2e ret:0x7f56ce4db020::7f56ce4db020  b0 75 1d ce                                      .u..
           /* TID 0x1a36 */
  6843 ms  0x1a36 PR_Close()
  6843 ms  0x1a36 fd:0x7f56df27b580
           /* TID 0x1a2e */
  6844 ms  0x1a2e PK11_Encrypt()
  6844 ms  0x1a2e symkey:0x7f56e0963180
  6848 ms  0x1a2e PK11_Encrypt()
  6848 ms  0x1a2e symkey:0x7f56e0963180
  6895 ms  0x1a2e PK11_Derive()
  6895 ms  0x1a2e basekey:0x7f56ce26fb80
  6895 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6895 ms  0x1a2e ret:0x7f56ce26fc80
  6895 ms  0x1a2e PK11_PubDeriveWithKDF()
  6895 ms  0x1a2e seckey:0x7f56ce4cb820
  6895 ms     | 0x1a2e EC_ValidatePublicKey()
  6895 ms     | 0x1a2e ret:0x0
  6896 ms  0x1a2e ret:0x7f56ce26fb80
  6896 ms  SECKEY_ECParamsToKeySize()
  6896 ms  0x1a2e ret:0xff
  6896 ms  0x1a2e PK11_DeriveWithFlags()
  6896 ms  0x1a2e basekey:0x7f56ce26fc80
  6896 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6896 ms  0x1a2e ret:0x7f56ce26f200
  6896 ms  0x1a2e PK11_Derive()
  6896 ms  0x1a2e basekey:0x7f56ce26fb80
  6896 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6896 ms  0x1a2e ret:0x7f56ce5f1900
  6896 ms  0x1a2e PK11_DeriveWithFlags()
  6896 ms  0x1a2e basekey:0x7f56ce5f1900
  6896 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6896 ms  0x1a2e ret:0x7f56ce26fc80
  6896 ms  0x1a2e PK11_DeriveWithFlags()
  6896 ms  0x1a2e basekey:0x7f56ce5f1900
  6896 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6896 ms  0x1a2e ret:0x7f56ce26fb80
  6896 ms  0x1a2e PK11_DeriveWithFlags()
  6896 ms  0x1a2e basekey:0x7f56ce5f1900
  6897 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6897 ms  0x1a2e ret:0x7f56ce26f200
  6897 ms  0x1a2e PK11_Derive()
  6897 ms  0x1a2e basekey:0x7f56ce26f080
  6897 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6898 ms  0x1a2e ret:0x7f56ce10bf00
  6898 ms  0x1a2e PK11_DeriveWithFlags()
  6898 ms  0x1a2e basekey:0x7f56ce26fb80
  6898 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6898 ms  0x1a2e ret:0x7f56ce5f1900
  6898 ms  0x1a2e PK11_DeriveWithFlags()
  6898 ms  0x1a2e basekey:0x7f56ce26fb80
  6898 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6898 ms  0x1a2e ret:0x7f56ce26f200
  6901 ms  SECKEY_ECParamsToKeySize()
  6901 ms  0x1a2e ret:0x100
  6901 ms  SECKEY_ECParamsToBasePointOrderLen()
  6901 ms  0x1a2e ret:0x100
  6901 ms  SECKEY_ECParamsToBasePointOrderLen()
  6901 ms  0x1a2e ret:0x100
  6901 ms  0x1a2e EC_ValidatePublicKey()
  6907 ms  0x1a2e ret:0x0
  6911 ms  0x1a2e PK11_DeriveWithFlags()
  6911 ms  0x1a2e basekey:0x7f56ce26fb80
  6912 ms     | 0x1a2e PK11_DeriveWithTemplate()
  6912 ms  0x1a2e ret:0x7f56ce26f200
           /* TID 0x1a36 */
  6916 ms  0x1a36 PR_Close()
  6916 ms  0x1a36 fd:0x7f56ce5d8bb0
           /* TID 0x1a2e */
  6993 ms  0x1a2e PK11_Encrypt()
  6993 ms  0x1a2e symkey:0x7f56e0963180
           /* TID 0x1a36 */
  6994 ms  0x1a36 PR_Close()
  6994 ms  0x1a36 fd:0x7f56ce2ba520
           /* TID 0x1a2e */
  7023 ms  0x1a2e SSL_ImportFD()
  7023 ms  0x1a2e ret:0x7f56df3ac940
  7023 ms  0x1a2e SSL_AuthCertificateHook()
  7023 ms  0x1a2e fd:0x7f56df3ac940
  7023 ms  0x1a2e ret:0x0
  7024 ms  0x1a2e PK11_Encrypt()
  7024 ms  0x1a2e symkey:0x7f56ce26f880
  7024 ms  0x1a2e PR_Connect()
  7024 ms  0x1a2e fd:0x7f56df3ac940
           /* TID 0x1a36 */
  7055 ms  0x1a36 PR_Close()
  7055 ms  0x1a36 fd:0x7f56ce5d8e80
           /* TID 0x1a89 */
  7055 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7055 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  7056 ms  0x1a2e SSL_AuthCertificateComplete()
  7056 ms  0x1a2e fd:0x7f56df27b910
  7056 ms  0x1a2e err:0x0
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce26f200
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce26f080
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce44a680
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10be80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10bf80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26f080
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10bf80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26f080
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10bc80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce5f1900
  7056 ms     | 0x1a2e PK11_Encrypt()
  7056 ms     | 0x1a2e symkey:0x7f56ce10be80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26f200
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce5f1900
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce26f200
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10bc80
  7056 ms     | 0x1a2e PK11_DeriveWithFlags()
  7056 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7056 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7056 ms     | 0x1a2e ret:0x7f56ce10be80
  7056 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7056 ms     | 0x1a2e privk:0x7f56ce4db020::7f56ce4db020  b0 75 1d ce                                      .u..
  7056 ms     | 0x1a2e privk:0x7f56ce4db020::7f56ce4db020  e5 e5 e5 e5                                      ....
  7056 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7056 ms     | 0x1a2e privk:0x7f56ce4cb820::7f56ce4cb820  f0 bb 49 ce                                      ..I.
  7057 ms     | 0x1a2e privk:0x7f56ce4cb820::7f56ce4cb820  e5 e5 e5 e5                                      ....
  7057 ms  0x1a2e PK11_Encrypt()
  7057 ms  0x1a2e symkey:0x7f56ce5f1900
  7057 ms  0x1a2e PK11_Encrypt()
  7057 ms  0x1a2e symkey:0x7f56ce5f1900
  7061 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7061 ms  0x1a2e cx:0x7f57078a84a8
  7061 ms     | 0x1a2e EC_ValidatePublicKey()
  7061 ms     | 0x1a2e ret:0x0
  7061 ms  0x1a2e ret:0x7f56ce4d7020::7f56ce4d7020  10 ba 49 ce                                      ..I.
  7061 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7061 ms  0x1a2e cx:0x7f57078a84a8
  7062 ms     | 0x1a2e EC_ValidatePublicKey()
  7063 ms     | 0x1a2e ret:0x0
  7063 ms  0x1a2e ret:0x7f56ce5c6820::7f56ce5c6820  30 d8 4a ce                                      0.J.
           /* TID 0x1a36 */
  7067 ms  0x1a36 PR_Close()
  7067 ms  0x1a36 fd:0x7f56df2aa970
           /* TID 0x1a2e */
  7075 ms  0x1a2e SSL_ImportFD()
  7075 ms  0x1a2e ret:0x7f56df3bfd90
  7075 ms  0x1a2e SSL_AuthCertificateHook()
  7075 ms  0x1a2e fd:0x7f56df3bfd90
  7075 ms  0x1a2e ret:0x0
  7075 ms  0x1a2e PR_Connect()
  7075 ms  0x1a2e fd:0x7f56df3bfd90
  7101 ms  0x1a2e PK11_Derive()
  7101 ms  0x1a2e basekey:0x7f56ce26fb80
  7101 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7101 ms  0x1a2e ret:0x7f56ce26fc80
  7101 ms  0x1a2e PK11_PubDeriveWithKDF()
  7101 ms  0x1a2e seckey:0x7f56ce4d7020
  7101 ms     | 0x1a2e EC_ValidatePublicKey()
  7101 ms     | 0x1a2e ret:0x0
  7102 ms  0x1a2e ret:0x7f56ce26fb80
  7102 ms  SECKEY_ECParamsToKeySize()
  7102 ms  0x1a2e ret:0xff
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce26fc80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bf00
  7102 ms  0x1a2e PK11_Derive()
  7102 ms  0x1a2e basekey:0x7f56ce26fb80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bc80
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce10bc80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce26fc80
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce10bc80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce26fb80
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce10bc80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bf00
  7102 ms  0x1a2e PK11_Derive()
  7102 ms  0x1a2e basekey:0x7f56ce10bd80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bc00
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce26fb80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bc80
  7102 ms  0x1a2e PK11_DeriveWithFlags()
  7102 ms  0x1a2e basekey:0x7f56ce26fb80
  7102 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7102 ms  0x1a2e ret:0x7f56ce10bf00
  7103 ms  SECKEY_ECParamsToKeySize()
  7103 ms  0x1a2e ret:0x100
  7103 ms  SECKEY_ECParamsToBasePointOrderLen()
  7103 ms  0x1a2e ret:0x100
  7103 ms  SECKEY_ECParamsToBasePointOrderLen()
  7103 ms  0x1a2e ret:0x100
  7103 ms  0x1a2e EC_ValidatePublicKey()
  7104 ms  0x1a2e ret:0x0
  7106 ms  0x1a2e PK11_DeriveWithFlags()
  7106 ms  0x1a2e basekey:0x7f56ce26fb80
  7106 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms  0x1a2e ret:0x7f56ce10bf00
  7106 ms  0x1a2e SSL_AuthCertificateComplete()
  7106 ms  0x1a2e fd:0x7f56df3ac940
  7106 ms  0x1a2e err:0x0
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce10bc00
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce10bf00
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce10bc00
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce10bd80
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce10bc00
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce10bd00
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce605c80
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce605d00
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7106 ms     | 0x1a2e ret:0x7f56ce605d00
  7106 ms     | 0x1a2e PK11_DeriveWithFlags()
  7106 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7106 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7107 ms     | 0x1a2e ret:0x7f56ce605d80
  7107 ms     | 0x1a2e PK11_DeriveWithFlags()
  7107 ms     | 0x1a2e basekey:0x7f56ce26fc80
  7107 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7107 ms     | 0x1a2e ret:0x7f56ce10bc80
  7107 ms     | 0x1a2e PK11_Encrypt()
  7107 ms     | 0x1a2e symkey:0x7f56ce605c80
  7114 ms     | 0x1a2e PK11_DeriveWithFlags()
  7114 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7115 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7115 ms     | 0x1a2e ret:0x7f56ce10bc80
  7115 ms     | 0x1a2e PK11_DeriveWithFlags()
  7115 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7115 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7115 ms     | 0x1a2e ret:0x7f56ce605d80
  7115 ms     | 0x1a2e PK11_DeriveWithFlags()
  7115 ms     | 0x1a2e basekey:0x7f56ce10bc00
  7115 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7115 ms     | 0x1a2e ret:0x7f56ce605c80
  7115 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7115 ms     | 0x1a2e privk:0x7f56ce5c6820::7f56ce5c6820  30 d8 4a ce                                      0.J.
  7115 ms     | 0x1a2e privk:0x7f56ce5c6820::7f56ce5c6820  e5 e5 e5 e5                                      ....
  7115 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7115 ms     | 0x1a2e privk:0x7f56ce4d7020::7f56ce4d7020  10 ba 49 ce                                      ..I.
  7115 ms     | 0x1a2e privk:0x7f56ce4d7020::7f56ce4d7020  e5 e5 e5 e5                                      ....
  7117 ms  0x1a2e PK11_Encrypt()
  7117 ms  0x1a2e symkey:0x7f56ce10bc80
  7118 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7118 ms  0x1a2e cx:0x7f56ed5820a8
  7118 ms     | 0x1a2e EC_ValidatePublicKey()
  7118 ms     | 0x1a2e ret:0x0
  7118 ms  0x1a2e ret:0x7f56ce5c4020::7f56ce5c4020  40 bc 49 ce                                      @.I.
  7118 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7118 ms  0x1a2e cx:0x7f56ed5820a8
  7119 ms     | 0x1a2e EC_ValidatePublicKey()
  7120 ms     | 0x1a2e ret:0x0
  7120 ms  0x1a2e ret:0x7f56df21f820::7f56df21f820  30 c3 5d ce                                      0.].
  7143 ms  0x1a2e PK11_DeriveWithFlags()
  7143 ms  0x1a2e basekey:0x7f56ce605c80
  7143 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7143 ms  0x1a2e ret:0x7f56ce26fb80
  7143 ms  0x1a2e PR_Close()
  7143 ms  0x1a2e fd:0x7f56df3ac940
  7143 ms     | 0x1a2e PK11_Encrypt()
  7143 ms     | 0x1a2e symkey:0x7f56ce10bc80
  7171 ms  0x1a2e PK11_DeriveWithFlags()
  7171 ms  0x1a2e basekey:0x7f56ce10be80
  7171 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7171 ms  0x1a2e ret:0x7f56ce10bd00
  7171 ms  0x1a2e PK11_DeriveWithFlags()
  7171 ms  0x1a2e basekey:0x7f56ce10be80
  7171 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7171 ms  0x1a2e ret:0x7f56ce10bd00
  7171 ms  0x1a2e PK11_Encrypt()
  7171 ms  0x1a2e symkey:0x7f56ce5f1900
  7182 ms  0x1a2e PK11_Derive()
  7182 ms  0x1a2e basekey:0x7f56ce10bd00
  7182 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7182 ms  0x1a2e ret:0x7f56ce10bd80
  7182 ms  0x1a2e PK11_PubDeriveWithKDF()
  7182 ms  0x1a2e seckey:0x7f56ce5c4020
  7182 ms     | 0x1a2e EC_ValidatePublicKey()
  7182 ms     | 0x1a2e ret:0x0
  7183 ms  0x1a2e ret:0x7f56ce10bd00
  7183 ms  SECKEY_ECParamsToKeySize()
  7183 ms  0x1a2e ret:0xff
  7183 ms  0x1a2e PK11_DeriveWithFlags()
  7183 ms  0x1a2e basekey:0x7f56ce10bd80
  7183 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7183 ms  0x1a2e ret:0x7f56ce10bf00
  7183 ms  0x1a2e PK11_Derive()
  7183 ms  0x1a2e basekey:0x7f56ce10bd00
  7183 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7183 ms  0x1a2e ret:0x7f56ce605c80
  7183 ms  0x1a2e PK11_DeriveWithFlags()
  7183 ms  0x1a2e basekey:0x7f56ce605c80
  7183 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7183 ms  0x1a2e ret:0x7f56ce10bd80
  7183 ms  0x1a2e PK11_DeriveWithFlags()
  7183 ms  0x1a2e basekey:0x7f56ce605c80
  7183 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7184 ms  0x1a2e ret:0x7f56ce10bd00
  7184 ms  0x1a2e PK11_DeriveWithFlags()
  7184 ms  0x1a2e basekey:0x7f56ce605c80
  7184 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7184 ms  0x1a2e ret:0x7f56ce10bf00
  7184 ms  0x1a2e PK11_Derive()
  7184 ms  0x1a2e basekey:0x7f56ce605d00
  7184 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7184 ms  0x1a2e ret:0x7f56ce10bc80
  7184 ms  0x1a2e PK11_DeriveWithFlags()
  7184 ms  0x1a2e basekey:0x7f56ce10bd00
  7184 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7184 ms  0x1a2e ret:0x7f56ce605c80
  7184 ms  0x1a2e PK11_DeriveWithFlags()
  7184 ms  0x1a2e basekey:0x7f56ce10bd00
  7184 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7184 ms  0x1a2e ret:0x7f56ce10bf00
  7187 ms  0x1a2e PK11_DeriveWithFlags()
  7187 ms  0x1a2e basekey:0x7f56ce10bd00
  7187 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7187 ms  0x1a2e ret:0x7f56ce10bf00
           /* TID 0x1a36 */
  7217 ms  0x1a36 PR_Close()
  7217 ms  0x1a36 fd:0x7f56df378c40
           /* TID 0x1a2e */
  7221 ms  0x1a2e PK11_Encrypt()
  7221 ms  0x1a2e symkey:0x7f56ce5f1900
           /* TID 0x1a36 */
  7339 ms  0x1a36 PR_Close()
  7339 ms  0x1a36 fd:0x7f56ce06f250
           /* TID 0x1a89 */
  7339 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7339 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  7340 ms  0x1a2e SSL_AuthCertificateComplete()
  7340 ms  0x1a2e fd:0x7f56df3bfd90
  7340 ms  0x1a2e err:0x0
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce10bf00
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce605d00
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce26fb80
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce26fc80
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce10bc00
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce605d00
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7340 ms     | 0x1a2e ret:0x7f56ce10bc00
  7340 ms     | 0x1a2e PK11_DeriveWithFlags()
  7340 ms     | 0x1a2e basekey:0x7f56ce605d00
  7340 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7341 ms     | 0x1a2e ret:0x7f56ce605d80
  7341 ms     | 0x1a2e PK11_DeriveWithFlags()
  7341 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7341 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7341 ms     | 0x1a2e ret:0x7f56ce605c80
  7341 ms     | 0x1a2e PK11_Encrypt()
  7341 ms     | 0x1a2e symkey:0x7f56ce26fc80
  7349 ms     | 0x1a2e PK11_DeriveWithFlags()
  7349 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7349 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7349 ms     | 0x1a2e ret:0x7f56ce605c80
  7349 ms     | 0x1a2e PK11_DeriveWithFlags()
  7349 ms     | 0x1a2e basekey:0x7f56ce10bf00
  7349 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7349 ms     | 0x1a2e ret:0x7f56ce605d80
  7349 ms     | 0x1a2e PK11_DeriveWithFlags()
  7349 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7349 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7349 ms     | 0x1a2e ret:0x7f56ce26fc80
  7349 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7349 ms     | 0x1a2e privk:0x7f56df21f820::7f56df21f820  30 c3 5d ce                                      0.].
  7349 ms     | 0x1a2e privk:0x7f56df21f820::7f56df21f820  e5 e5 e5 e5                                      ....
  7350 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7350 ms     | 0x1a2e privk:0x7f56ce5c4020::7f56ce5c4020  40 bc 49 ce                                      @.I.
  7350 ms     | 0x1a2e privk:0x7f56ce5c4020::7f56ce5c4020  e5 e5 e5 e5                                      ....
  7351 ms  0x1a2e PK11_Encrypt()
  7351 ms  0x1a2e symkey:0x7f56ce605c80
  7352 ms  0x1a2e PK11_Encrypt()
  7352 ms  0x1a2e symkey:0x7f56ce605c80
  7379 ms  0x1a2e PK11_DeriveWithFlags()
  7379 ms  0x1a2e basekey:0x7f56ce26fc80
  7379 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7379 ms  0x1a2e ret:0x7f56ce10bd00
  7379 ms  0x1a2e PK11_DeriveWithFlags()
  7379 ms  0x1a2e basekey:0x7f56ce26fc80
  7379 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7379 ms  0x1a2e ret:0x7f56ce10bd00
  7379 ms  0x1a2e PK11_Encrypt()
  7379 ms  0x1a2e symkey:0x7f56ce605c80
  7438 ms  0x1a2e PK11_Encrypt()
  7438 ms  0x1a2e symkey:0x7f56ce605c80
  7457 ms  0x1a2e SSL_ImportFD()
  7457 ms  0x1a2e ret:0x7f56df6a8190
  7457 ms  0x1a2e SSL_AuthCertificateHook()
  7457 ms  0x1a2e fd:0x7f56df6a8190
  7457 ms  0x1a2e ret:0x0
  7457 ms  0x1a2e PR_Connect()
  7457 ms  0x1a2e fd:0x7f56df6a8190
  7461 ms  0x1a2e PK11_Encrypt()
  7461 ms  0x1a2e symkey:0x7f56ce4fa200
  7495 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7495 ms  0x1a2e cx:0x7f56ea081c88
  7496 ms     | 0x1a2e EC_ValidatePublicKey()
  7496 ms     | 0x1a2e ret:0x0
  7496 ms  0x1a2e ret:0x7f56df220020::7f56df220020  30 d8 4a ce                                      0.J.
  7496 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7496 ms  0x1a2e cx:0x7f56ea081c88
  7497 ms     | 0x1a2e EC_ValidatePublicKey()
  7500 ms     | 0x1a2e ret:0x0
  7500 ms  0x1a2e ret:0x7f56df2c9820::7f56df2c9820  20 ce 5d ce                                       .].
  7540 ms  0x1a2e PK11_Encrypt()
  7540 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  7542 ms  0x1a36 PR_Close()
  7542 ms  0x1a36 fd:0x7f56df3ac940
           /* TID 0x1a2e */
  7555 ms  0x1a2e PK11_Derive()
  7555 ms  0x1a2e basekey:0x7f56ce10bd00
  7555 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7555 ms  0x1a2e ret:0x7f56ce10bd80
  7555 ms  0x1a2e PK11_PubDeriveWithKDF()
  7555 ms  0x1a2e seckey:0x7f56df220020
  7555 ms     | 0x1a2e EC_ValidatePublicKey()
  7555 ms     | 0x1a2e ret:0x0
  7556 ms  0x1a2e ret:0x7f56ce10bd00
  7556 ms  SECKEY_ECParamsToKeySize()
  7556 ms  0x1a2e ret:0xff
  7556 ms  0x1a2e PK11_DeriveWithFlags()
  7556 ms  0x1a2e basekey:0x7f56ce10bd80
  7556 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7556 ms  0x1a2e ret:0x7f56ce10bc80
  7556 ms  0x1a2e PK11_Derive()
  7556 ms  0x1a2e basekey:0x7f56ce10bd00
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56ce605d80
  7557 ms  0x1a2e PK11_DeriveWithFlags()
  7557 ms  0x1a2e basekey:0x7f56ce605d80
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56ce10bd80
  7557 ms  0x1a2e PK11_DeriveWithFlags()
  7557 ms  0x1a2e basekey:0x7f56ce605d80
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56ce10bd00
  7557 ms  0x1a2e PK11_DeriveWithFlags()
  7557 ms  0x1a2e basekey:0x7f56ce605d80
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56ce10bc80
  7557 ms  0x1a2e PK11_Derive()
  7557 ms  0x1a2e basekey:0x7f56ce604b00
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56df29d200
  7557 ms  0x1a2e PK11_DeriveWithFlags()
  7557 ms  0x1a2e basekey:0x7f56ce10bd00
  7557 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7557 ms  0x1a2e ret:0x7f56ce605d80
  7557 ms  0x1a2e PK11_DeriveWithFlags()
  7557 ms  0x1a2e basekey:0x7f56ce10bd00
  7558 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7558 ms  0x1a2e ret:0x7f56ce10bc80
  7559 ms  SECKEY_ECParamsToKeySize()
  7559 ms  0x1a2e ret:0x100
  7560 ms  SECKEY_ECParamsToBasePointOrderLen()
  7560 ms  0x1a2e ret:0x100
  7560 ms  SECKEY_ECParamsToBasePointOrderLen()
  7560 ms  0x1a2e ret:0x100
  7560 ms  0x1a2e EC_ValidatePublicKey()
  7564 ms  0x1a2e ret:0x0
  7569 ms  0x1a2e PK11_DeriveWithFlags()
  7569 ms  0x1a2e basekey:0x7f56ce10bd00
  7569 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms  0x1a2e ret:0x7f56ce10bc80
  7569 ms  0x1a2e SSL_AuthCertificateComplete()
  7569 ms  0x1a2e fd:0x7f56df6a8190
  7569 ms  0x1a2e err:0x0
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56df29d200
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56ce10bc80
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56df29d200
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56ce604b00
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56df29d200
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56df29d600
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56df29da00
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56df29db00
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56ce604b00
  7569 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7569 ms     | 0x1a2e ret:0x7f56df29db00
  7569 ms     | 0x1a2e PK11_DeriveWithFlags()
  7569 ms     | 0x1a2e basekey:0x7f56ce604b00
  7570 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7570 ms     | 0x1a2e ret:0x7f56df29db80
  7570 ms     | 0x1a2e PK11_DeriveWithFlags()
  7570 ms     | 0x1a2e basekey:0x7f56ce10bd80
  7570 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7570 ms     | 0x1a2e ret:0x7f56ce605d80
  7570 ms     | 0x1a2e PK11_Encrypt()
  7570 ms     | 0x1a2e symkey:0x7f56df29da00
  7571 ms     | 0x1a2e PK11_DeriveWithFlags()
  7571 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7571 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7571 ms     | 0x1a2e ret:0x7f56ce605d80
  7571 ms     | 0x1a2e PK11_DeriveWithFlags()
  7571 ms     | 0x1a2e basekey:0x7f56ce10bc80
  7571 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7571 ms     | 0x1a2e ret:0x7f56df29db80
  7572 ms     | 0x1a2e PK11_DeriveWithFlags()
  7572 ms     | 0x1a2e basekey:0x7f56df29d200
  7572 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7572 ms     | 0x1a2e ret:0x7f56df29da00
  7572 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7572 ms     | 0x1a2e privk:0x7f56df2c9820::7f56df2c9820  20 ce 5d ce                                       .].
  7572 ms     | 0x1a2e privk:0x7f56df2c9820::7f56df2c9820  e5 e5 e5 e5                                      ....
  7572 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7572 ms     | 0x1a2e privk:0x7f56df220020::7f56df220020  30 d8 4a ce                                      0.J.
  7572 ms     | 0x1a2e privk:0x7f56df220020::7f56df220020  e5 e5 e5 e5                                      ....
  7573 ms  0x1a2e PK11_Encrypt()
  7573 ms  0x1a2e symkey:0x7f56ce605d80
  7573 ms  0x1a2e PK11_Encrypt()
  7573 ms  0x1a2e symkey:0x7f56ce605d80
  7612 ms  0x1a2e PK11_DeriveWithFlags()
  7612 ms  0x1a2e basekey:0x7f56df29da00
  7612 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7612 ms  0x1a2e ret:0x7f56ce10bd00
  7612 ms  0x1a2e PK11_DeriveWithFlags()
  7612 ms  0x1a2e basekey:0x7f56df29da00
  7612 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7612 ms  0x1a2e ret:0x7f56ce10bd00
  7612 ms  0x1a2e PK11_Encrypt()
  7612 ms  0x1a2e symkey:0x7f56ce605d80
  7648 ms  0x1a2e PK11_Encrypt()
  7648 ms  0x1a2e symkey:0x7f56ce605d80
           /* TID 0x1a36 */
  7650 ms  0x1a36 PR_Close()
  7650 ms  0x1a36 fd:0x7f56df378c40
           /* TID 0x1a2e */
  7671 ms  0x1a2e PK11_Encrypt()
  7671 ms  0x1a2e symkey:0x7f56ce4fa200
  7713 ms  0x1a2e PK11_Encrypt()
  7713 ms  0x1a2e symkey:0x7f56ce4fa200
           /* TID 0x1a36 */
  7714 ms  0x1a36 PR_Close()
  7714 ms  0x1a36 fd:0x7f56df6a8370
           /* TID 0x1a2e */
  7733 ms  0x1a2e SSL_ImportFD()
  7733 ms  0x1a2e ret:0x7f56df787a00
  7733 ms  0x1a2e SSL_AuthCertificateHook()
  7733 ms  0x1a2e fd:0x7f56df787a00
  7733 ms  0x1a2e ret:0x0
  7733 ms  0x1a2e PR_Connect()
  7733 ms  0x1a2e fd:0x7f56df787a00
  7758 ms  0x1a2e SSL_ImportFD()
  7758 ms  0x1a2e ret:0x7f56df7f6d60
  7758 ms  0x1a2e SSL_AuthCertificateHook()
  7758 ms  0x1a2e fd:0x7f56df7f6d60
  7758 ms  0x1a2e ret:0x0
  7758 ms  0x1a2e PR_Connect()
  7758 ms  0x1a2e fd:0x7f56df7f6d60
  7766 ms  0x1a2e PR_Close()
  7766 ms  0x1a2e fd:0x7f56e0441dc0
           /* TID 0x1a23 */
  7767 ms  0x1a23 EC_ValidatePublicKey()
  7769 ms  0x1a23 ret:0x0
  7769 ms  0x1a23 EC_ValidatePublicKey()
           /* TID 0x1a2e */
  7770 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7770 ms  0x1a2e cx:0x7f56ed582728
           /* TID 0x1a23 */
  7774 ms  0x1a23 ret:0x0
           /* TID 0x1a2e */
  7774 ms     | 0x1a2e EC_ValidatePublicKey()
  7774 ms     | 0x1a2e ret:0x0
  7775 ms  0x1a2e ret:0x7f56df762820::7f56df762820  b0 2f 2b df                                      ./+.
  7775 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7775 ms  0x1a2e cx:0x7f56ed582728
  7775 ms     | 0x1a2e EC_ValidatePublicKey()
  7777 ms     | 0x1a2e ret:0x0
  7777 ms  0x1a2e ret:0x7f56df7b4820::7f56df7b4820  40 77 37 df                                      @w7.
           /* TID 0x1a23 */
  7781 ms  0x1a23 EC_ValidatePublicKey()
  7783 ms  0x1a23 ret:0x0
  7783 ms  0x1a23 EC_ValidatePublicKey()
  7784 ms  0x1a23 ret:0x0
  7784 ms  0x1a23 EC_ValidatePublicKey()
  7785 ms  0x1a23 ret:0x0
  7785 ms  0x1a23 EC_ValidatePublicKey()
  7787 ms  0x1a23 ret:0x0
  7787 ms  0x1a23 EC_ValidatePublicKey()
  7788 ms  0x1a23 ret:0x0
  7788 ms  0x1a23 EC_ValidatePublicKey()
  7790 ms  0x1a23 ret:0x0
  7790 ms  0x1a23 EC_ValidatePublicKey()
  7791 ms  0x1a23 ret:0x0
  7791 ms  0x1a23 EC_ValidatePublicKey()
           /* TID 0x1a2e */
  7794 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7794 ms  0x1a2e cx:0x7f56ed582a68
           /* TID 0x1a23 */
  7799 ms  0x1a23 ret:0x0
           /* TID 0x1a2e */
  7800 ms     | 0x1a2e EC_ValidatePublicKey()
  7800 ms     | 0x1a2e ret:0x0
  7800 ms  0x1a2e ret:0x7f56e040a820::7f56e040a820  90 47 75 df                                      .Gu.
  7800 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7800 ms  0x1a2e cx:0x7f56ed582a68
  7801 ms     | 0x1a2e EC_ValidatePublicKey()
  7802 ms     | 0x1a2e ret:0x0
  7802 ms  0x1a2e ret:0x7f56e0f06020::7f56e0f06020  70 49 75 df                                      pIu.
  7803 ms  0x1a2e PK11_Encrypt()
  7803 ms  0x1a2e symkey:0x7f56ce605d80
  7803 ms  0x1a2e PK11_Encrypt()
  7803 ms  0x1a2e symkey:0x7f56ce10b580
  7803 ms  0x1a2e PK11_Encrypt()
  7803 ms  0x1a2e symkey:0x7f56ce605c80
  7803 ms  0x1a2e PK11_Encrypt()
  7803 ms  0x1a2e symkey:0x7f56ce5f0f80
           /* TID 0x1a7e */
  7803 ms  0x1a7e PR_Close()
  7803 ms  0x1a7e fd:0x7f56ce06f340
  7804 ms  0x1a7e PR_Close()
  7804 ms  0x1a7e fd:0x7f56ce48c5b0
           /* TID 0x1a2e */
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56ce5f1900
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56ce26f880
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56e0963180
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56ce26f780
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56ce4fa200
  7807 ms  0x1a2e PK11_Encrypt()
  7807 ms  0x1a2e symkey:0x7f56ce26f680
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56ce5ece80
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56ce2bad30
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56df378ca0
  7808 ms     | 0x1a2e PK11_Encrypt()
  7808 ms     | 0x1a2e symkey:0x7f56e0c0ed80
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56df378b80
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56df378610
  7808 ms     | 0x1a2e PK11_Encrypt()
  7808 ms     | 0x1a2e symkey:0x7f56e042ba80
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56e0630ca0
  7808 ms  0x1a2e PR_Close()
  7808 ms  0x1a2e fd:0x7f56df27b490
  7808 ms     | 0x1a2e PK11_Encrypt()
  7808 ms     | 0x1a2e symkey:0x7f56ce26f880
  7809 ms  0x1a2e PR_Close()
  7809 ms  0x1a2e fd:0x7f56df6a8190
  7809 ms     | 0x1a2e PK11_Encrypt()
  7809 ms     | 0x1a2e symkey:0x7f56ce605d80
  7809 ms  0x1a2e PR_Close()
  7809 ms  0x1a2e fd:0x7f56e04b21f0
  7809 ms     | 0x1a2e PK11_Encrypt()
  7809 ms     | 0x1a2e symkey:0x7f56ce4fa200
  7809 ms  0x1a2e PR_Close()
  7809 ms  0x1a2e fd:0x7f56df39fa30
  7809 ms     | 0x1a2e PK11_Encrypt()
  7809 ms     | 0x1a2e symkey:0x7f56ce26f780
  7810 ms  0x1a2e PR_Close()
  7810 ms  0x1a2e fd:0x7f56df39ff70
  7810 ms     | 0x1a2e PK11_Encrypt()
  7810 ms     | 0x1a2e symkey:0x7f56ce10b580
  7810 ms  0x1a2e PR_Close()
  7810 ms  0x1a2e fd:0x7f56e04b20a0
  7810 ms     | 0x1a2e PK11_Encrypt()
  7810 ms     | 0x1a2e symkey:0x7f56ce26f680
  7813 ms  0x1a2e PR_Close()
  7813 ms  0x1a2e fd:0x7f56ce5ec580
  7813 ms     | 0x1a2e PK11_Encrypt()
  7813 ms     | 0x1a2e symkey:0x7f56ce5f0f80
  7814 ms  0x1a2e PR_Close()
  7814 ms  0x1a2e fd:0x7f56df3bfd90
  7814 ms     | 0x1a2e PK11_Encrypt()
  7814 ms     | 0x1a2e symkey:0x7f56ce605c80
  7814 ms  0x1a2e PR_Close()
  7814 ms  0x1a2e fd:0x7f56df27b910
  7814 ms     | 0x1a2e PK11_Encrypt()
  7814 ms     | 0x1a2e symkey:0x7f56ce5f1900
  7816 ms  0x1a2e PR_Close()
  7816 ms  0x1a2e fd:0x7f56df27bd90
  7816 ms     | 0x1a2e PK11_Encrypt()
  7816 ms     | 0x1a2e symkey:0x7f56e0963180
  7816 ms  0x1a2e PK11_Derive()
  7816 ms  0x1a2e basekey:0x7f56ce10aa00
  7816 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7816 ms  0x1a2e ret:0x7f56ce26f100
  7816 ms  0x1a2e PK11_PubDeriveWithKDF()
  7816 ms  0x1a2e seckey:0x7f56df762820
  7816 ms     | 0x1a2e EC_ValidatePublicKey()
  7816 ms     | 0x1a2e ret:0x0
  7817 ms  0x1a2e ret:0x7f56ce10aa00
  7817 ms  SECKEY_ECParamsToKeySize()
  7817 ms  0x1a2e ret:0xff
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce26f100
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26fa00
  7817 ms  0x1a2e PK11_Derive()
  7817 ms  0x1a2e basekey:0x7f56ce10aa00
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26f980
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce26f980
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26f100
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce26f980
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce10aa00
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce26f980
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26fa00
  7817 ms  0x1a2e PK11_Derive()
  7817 ms  0x1a2e basekey:0x7f56ce26f300
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56e0963180
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce10aa00
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26f980
  7817 ms  0x1a2e PK11_DeriveWithFlags()
  7817 ms  0x1a2e basekey:0x7f56ce10aa00
  7817 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7817 ms  0x1a2e ret:0x7f56ce26fa00
  7826 ms  SECKEY_ECParamsToKeySize()
  7826 ms  0x1a2e ret:0x100
  7826 ms  SECKEY_ECParamsToBasePointOrderLen()
  7826 ms  0x1a2e ret:0x100
  7826 ms  SECKEY_ECParamsToBasePointOrderLen()
  7826 ms  0x1a2e ret:0x100
  7826 ms  0x1a2e EC_ValidatePublicKey()
  7827 ms  0x1a2e ret:0x0
  7829 ms  0x1a2e PK11_DeriveWithFlags()
  7829 ms  0x1a2e basekey:0x7f56ce10aa00
  7829 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7829 ms  0x1a2e ret:0x7f56ce26fa00
  7829 ms  0x1a2e SSL_ImportFD()
  7829 ms  0x1a2e ret:0x7f56e18adee0
  7829 ms  0x1a2e SSL_AuthCertificateHook()
  7829 ms  0x1a2e fd:0x7f56e18adee0
  7829 ms  0x1a2e ret:0x0
  7829 ms  0x1a2e PR_Connect()
  7829 ms  0x1a2e fd:0x7f56e18adee0
  7831 ms  0x1a2e SSL_ImportFD()
  7831 ms  0x1a2e ret:0x7f56df27b970
  7831 ms  0x1a2e SSL_AuthCertificateHook()
  7831 ms  0x1a2e fd:0x7f56df27b970
  7832 ms  0x1a2e ret:0x0
  7832 ms  0x1a2e PR_Connect()
  7832 ms  0x1a2e fd:0x7f56df27b970
  7834 ms  0x1a2e SSL_ImportFD()
  7834 ms  0x1a2e ret:0x7f56e2683760
  7834 ms  0x1a2e SSL_AuthCertificateHook()
  7834 ms  0x1a2e fd:0x7f56e2683760
  7834 ms  0x1a2e ret:0x0
  7834 ms  0x1a2e PR_Connect()
  7834 ms  0x1a2e fd:0x7f56e2683760
  7836 ms  0x1a2e PR_Connect()
  7836 ms  0x1a2e fd:0x7f56df27bbb0
  7836 ms  0x1a2e SSL_ImportFD()
  7836 ms  0x1a2e ret:0x7f56e2683d30
  7836 ms  0x1a2e SSL_AuthCertificateHook()
  7836 ms  0x1a2e fd:0x7f56e2683d30
  7836 ms  0x1a2e ret:0x0
  7836 ms  0x1a2e PR_Connect()
  7836 ms  0x1a2e fd:0x7f56e2683d30
  7840 ms  0x1a2e PK11_Derive()
  7840 ms  0x1a2e basekey:0x7f56ce26fa00
  7840 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7840 ms  0x1a2e ret:0x7f56ce26f300
  7840 ms  0x1a2e PK11_PubDeriveWithKDF()
  7840 ms  0x1a2e seckey:0x7f56e040a820
  7840 ms     | 0x1a2e EC_ValidatePublicKey()
  7840 ms     | 0x1a2e ret:0x0
  7840 ms  0x1a2e ret:0x7f56ce26fa00
  7840 ms  SECKEY_ECParamsToKeySize()
  7840 ms  0x1a2e ret:0xff
  7840 ms  0x1a2e PK11_DeriveWithFlags()
  7840 ms  0x1a2e basekey:0x7f56ce26f300
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce44a680
  7841 ms  0x1a2e PK11_Derive()
  7841 ms  0x1a2e basekey:0x7f56ce26fa00
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce26f080
  7841 ms  0x1a2e PK11_DeriveWithFlags()
  7841 ms  0x1a2e basekey:0x7f56ce26f080
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce26f300
  7841 ms  0x1a2e PK11_DeriveWithFlags()
  7841 ms  0x1a2e basekey:0x7f56ce26f080
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce26fa00
  7841 ms  0x1a2e PK11_DeriveWithFlags()
  7841 ms  0x1a2e basekey:0x7f56ce26f080
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce44a680
  7841 ms  0x1a2e PK11_Derive()
  7841 ms  0x1a2e basekey:0x7f56ce26f200
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce10be80
  7841 ms  0x1a2e PK11_DeriveWithFlags()
  7841 ms  0x1a2e basekey:0x7f56ce26fa00
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce26f080
  7841 ms  0x1a2e PK11_DeriveWithFlags()
  7841 ms  0x1a2e basekey:0x7f56ce26fa00
  7841 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7841 ms  0x1a2e ret:0x7f56ce44a680
  7842 ms  SECKEY_ECParamsToKeySize()
  7842 ms  0x1a2e ret:0x100
  7842 ms  SECKEY_ECParamsToBasePointOrderLen()
  7842 ms  0x1a2e ret:0x100
  7842 ms  SECKEY_ECParamsToBasePointOrderLen()
  7842 ms  0x1a2e ret:0x100
  7842 ms  0x1a2e EC_ValidatePublicKey()
  7843 ms  0x1a2e ret:0x0
  7846 ms  0x1a2e PK11_DeriveWithFlags()
  7846 ms  0x1a2e basekey:0x7f56ce26fa00
  7846 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7846 ms  0x1a2e ret:0x7f56ce44a680
  7848 ms  0x1a2e PR_Connect()
  7848 ms  0x1a2e fd:0x7f56e2683be0
  7860 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7860 ms  0x1a2e cx:0x7f56df3c48c8
  7861 ms     | 0x1a2e EC_ValidatePublicKey()
  7861 ms     | 0x1a2e ret:0x0
  7861 ms  0x1a2e ret:0x7f56ce5bc020::7f56ce5bc020  30 4d 75 df                                      0Mu.
  7861 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7861 ms  0x1a2e cx:0x7f56df3c48c8
  7862 ms     | 0x1a2e EC_ValidatePublicKey()
  7863 ms     | 0x1a2e ret:0x0
  7863 ms  0x1a2e ret:0x7f56df21e020::7f56df21e020  10 4f 75 df                                      .Ou.
  7867 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7867 ms  0x1a2e cx:0x7f56df3c43e8
  7867 ms     | 0x1a2e EC_ValidatePublicKey()
  7867 ms     | 0x1a2e ret:0x0
  7867 ms  0x1a2e ret:0x7f56df2cf020::7f56df2cf020  00 c1 79 df                                      ..y.
  7867 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7867 ms  0x1a2e cx:0x7f56df3c43e8
  7868 ms     | 0x1a2e EC_ValidatePublicKey()
  7869 ms     | 0x1a2e ret:0x0
  7869 ms  0x1a2e ret:0x7f56df2d1020::7f56df2d1020  e0 c2 79 df                                      ..y.
  7870 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7870 ms  0x1a2e cx:0x7f56df3c4588
  7871 ms     | 0x1a2e EC_ValidatePublicKey()
  7871 ms     | 0x1a2e ret:0x0
  7871 ms  0x1a2e ret:0x7f56df2d4820::7f56df2d4820  e0 c7 79 df                                      ..y.
  7871 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7871 ms  0x1a2e cx:0x7f56df3c4588
  7872 ms     | 0x1a2e EC_ValidatePublicKey()
  7873 ms     | 0x1a2e ret:0x0
  7873 ms  0x1a2e ret:0x7f56df765020::7f56df765020  f0 cb 79 df                                      ..y.
  7874 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7874 ms  0x1a2e cx:0x7f56df3c4f48
  7874 ms     | 0x1a2e EC_ValidatePublicKey()
  7874 ms     | 0x1a2e ret:0x0
  7875 ms  0x1a2e ret:0x7f56df767820::7f56df767820  d0 cd 79 df                                      ..y.
  7875 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7875 ms  0x1a2e cx:0x7f56df3c4f48
  7875 ms     | 0x1a2e EC_ValidatePublicKey()
  7877 ms     | 0x1a2e ret:0x0
  7877 ms  0x1a2e ret:0x7f56df769820::7f56df769820  f0 b1 95 df                                      ....
           /* TID 0x1a89 */
  7890 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1a36 */
  7891 ms  0x1a36 PR_Close()
  7891 ms  0x1a36 fd:0x7f56ce5d8f40
           /* TID 0x1a89 */
  7891 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  7891 ms  0x1a2e SSL_AuthCertificateComplete()
  7891 ms  0x1a2e fd:0x7f56df787a00
  7891 ms  0x1a2e err:0x0
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56e0963180
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce44a680
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56e0963180
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce26f200
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56e0963180
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce10bf80
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce26f100
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce5f1900
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce26f100
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce26fb80
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce26f200
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce26fb80
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce26f200
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce605d00
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce26f100
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce26f980
  7891 ms     | 0x1a2e PK11_Encrypt()
  7891 ms     | 0x1a2e symkey:0x7f56ce5f1900
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce44a680
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce26f980
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56ce44a680
  7891 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7891 ms     | 0x1a2e ret:0x7f56ce605d00
  7891 ms     | 0x1a2e PK11_DeriveWithFlags()
  7891 ms     | 0x1a2e basekey:0x7f56e0963180
  7892 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7892 ms     | 0x1a2e ret:0x7f56ce5f1900
  7892 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7892 ms     | 0x1a2e privk:0x7f56df7b4820::7f56df7b4820  40 77 37 df                                      @w7.
  7892 ms     | 0x1a2e privk:0x7f56df7b4820::7f56df7b4820  e5 e5 e5 e5                                      ....
  7892 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7892 ms     | 0x1a2e privk:0x7f56df762820::7f56df762820  b0 2f 2b df                                      ./+.
  7892 ms     | 0x1a2e privk:0x7f56df762820::7f56df762820  e5 e5 e5 e5                                      ....
  7892 ms  0x1a2e PK11_Encrypt()
  7892 ms  0x1a2e symkey:0x7f56ce26f980
  7892 ms  0x1a2e PK11_Encrypt()
  7892 ms  0x1a2e symkey:0x7f56ce26f980
           /* TID 0x1a89 */
  7893 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7893 ms  0x1a89 ret:0x0
           /* TID 0x1a2e */
  7893 ms  SECKEY_ECParamsToKeySize()
  7893 ms  0x1a2e ret:0xff
  7893 ms  0x1a2e SECKEY_CreateECPrivateKey()
  7893 ms  0x1a2e cx:0x7f56df3c48c8
  7894 ms     | 0x1a2e EC_ValidatePublicKey()
  7894 ms     | 0x1a2e ret:0x0
  7894 ms  0x1a2e ret:0x7f56df76a020::7f56df76a020  00 71 37 df                                      .q7.
  7894 ms  0x1a2e PK11_PubDeriveWithKDF()
  7894 ms  0x1a2e seckey:0x7f56df76a020
  7894 ms     | 0x1a2e EC_ValidatePublicKey()
  7894 ms     | 0x1a2e ret:0x0
  7894 ms  0x1a2e ret:0x7f56ce10aa00
  7894 ms  0x1a2e PK11_DeriveWithFlags()
  7894 ms  0x1a2e basekey:0x7f56ce10aa00
  7895 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7895 ms  0x1a2e ret:0x7f56ce26f100
  7895 ms  0x1a2e PK11_Derive()
  7895 ms  0x1a2e basekey:0x7f56ce26f100
  7895 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7895 ms  0x1a2e ret:0x7f56e0963180
  7895 ms  0x1a2e SECKEY_DestroyPrivateKey()
  7895 ms  0x1a2e privk:0x7f56df76a020::7f56df76a020  00 71 37 df                                      .q7.
  7895 ms  0x1a2e privk:0x7f56df76a020::7f56df76a020  e5 e5 e5 e5                                      ....
  7895 ms  0x1a2e PK11_Encrypt()
  7895 ms  0x1a2e symkey:0x7f56ce5f0e80
  7895 ms  0x1a2e SSL_AuthCertificateComplete()
  7895 ms  0x1a2e fd:0x7f56e2683760
  7895 ms  0x1a2e err:0x0
  7895 ms  0x1a2e PK11_Encrypt()
  7895 ms  0x1a2e symkey:0x7f56ce5f0e80
  7895 ms  0x1a2e PK11_Encrypt()
  7895 ms  0x1a2e symkey:0x7f56ce5f0e80
  7896 ms  0x1a2e PK11_Encrypt()
  7896 ms  0x1a2e symkey:0x7f56ce5f0e80
  7896 ms  0x1a2e PK11_Encrypt()
  7896 ms  0x1a2e symkey:0x7f56ce5f0e80
  7896 ms  0x1a2e PK11_Encrypt()
  7896 ms  0x1a2e symkey:0x7f56ce5f0e80
  7896 ms  0x1a2e PK11_Encrypt()
  7896 ms  0x1a2e symkey:0x7f56ce5f0e80
           /* TID 0x1a36 */
  7907 ms  0x1a36 PR_Close()
  7907 ms  0x1a36 fd:0x7f56e04b2160
           /* TID 0x1ac1 */
  7907 ms  0x1ac1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7907 ms  0x1ac1 ret:0x0
           /* TID 0x1a2e */
  7907 ms  0x1a2e SSL_AuthCertificateComplete()
  7907 ms  0x1a2e fd:0x7f56df7f6d60
  7907 ms  0x1a2e err:0x0
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce10be80
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce10aa00
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce10be80
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce605d00
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce10be80
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce10bf00
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce26f300
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce26fc80
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce26f300
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce10bc00
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce605d00
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce10bc00
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce605d00
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7908 ms     | 0x1a2e ret:0x7f56ce605c80
  7908 ms     | 0x1a2e PK11_DeriveWithFlags()
  7908 ms     | 0x1a2e basekey:0x7f56ce26f300
  7908 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7909 ms     | 0x1a2e ret:0x7f56ce26f080
  7909 ms     | 0x1a2e PK11_Encrypt()
  7909 ms     | 0x1a2e symkey:0x7f56ce26fc80
  7909 ms     | 0x1a2e PK11_DeriveWithFlags()
  7909 ms     | 0x1a2e basekey:0x7f56ce10aa00
  7909 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7909 ms     | 0x1a2e ret:0x7f56ce26f080
  7909 ms     | 0x1a2e PK11_DeriveWithFlags()
  7909 ms     | 0x1a2e basekey:0x7f56ce10aa00
  7909 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7909 ms     | 0x1a2e ret:0x7f56ce605c80
  7909 ms     | 0x1a2e PK11_DeriveWithFlags()
  7909 ms     | 0x1a2e basekey:0x7f56ce10be80
  7909 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  7909 ms     | 0x1a2e ret:0x7f56ce26fc80
  7909 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7909 ms     | 0x1a2e privk:0x7f56e0f06020::7f56e0f06020  70 49 75 df                                      pIu.
  7910 ms     | 0x1a2e privk:0x7f56e0f06020::7f56e0f06020  e5 e5 e5 e5                                      ....
  7910 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  7910 ms     | 0x1a2e privk:0x7f56e040a820::7f56e040a820  90 47 75 df                                      .Gu.
  7910 ms     | 0x1a2e privk:0x7f56e040a820::7f56e040a820  e5 e5 e5 e5                                      ....
  7911 ms  0x1a2e PK11_Encrypt()
  7911 ms  0x1a2e symkey:0x7f56ce26f080
  7911 ms  0x1a2e PK11_Encrypt()
  7911 ms  0x1a2e symkey:0x7f56ce26f080
  7921 ms  0x1a2e SECKEY_DestroyPrivateKey()
  7921 ms  0x1a2e privk:0x7f56df21e020::7f56df21e020  10 4f 75 df                                      .Ou.
  7921 ms  0x1a2e privk:0x7f56df21e020::7f56df21e020  e5 e5 e5 e5                                      ....
  7921 ms  0x1a2e SECKEY_DestroyPrivateKey()
  7921 ms  0x1a2e privk:0x7f56ce5bc020::7f56ce5bc020  30 4d 75 df                                      0Mu.
  7921 ms  0x1a2e privk:0x7f56ce5bc020::7f56ce5bc020  e5 e5 e5 e5                                      ....
  7922 ms  0x1a2e PK11_Encrypt()
  7922 ms  0x1a2e symkey:0x7f56ce5f0e80
  7924 ms  0x1a2e PK11_Derive()
  7924 ms  0x1a2e basekey:0x7f56ce26fa00
  7924 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7924 ms  0x1a2e ret:0x7f56ce26f300
  7924 ms  0x1a2e PK11_PubDeriveWithKDF()
  7924 ms  0x1a2e seckey:0x7f56df2cf020
  7924 ms     | 0x1a2e EC_ValidatePublicKey()
  7924 ms     | 0x1a2e ret:0x0
  7925 ms  0x1a2e ret:0x7f56ce26fa00
  7925 ms  SECKEY_ECParamsToKeySize()
  7925 ms  0x1a2e ret:0xff
  7925 ms  0x1a2e PK11_DeriveWithFlags()
  7925 ms  0x1a2e basekey:0x7f56ce26f300
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce10be80
  7926 ms  0x1a2e PK11_Derive()
  7926 ms  0x1a2e basekey:0x7f56ce26fa00
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce605c80
  7926 ms  0x1a2e PK11_DeriveWithFlags()
  7926 ms  0x1a2e basekey:0x7f56ce605c80
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce26f300
  7926 ms  0x1a2e PK11_DeriveWithFlags()
  7926 ms  0x1a2e basekey:0x7f56ce605c80
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce26fa00
  7926 ms  0x1a2e PK11_DeriveWithFlags()
  7926 ms  0x1a2e basekey:0x7f56ce605c80
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce10be80
  7926 ms  0x1a2e PK11_Derive()
  7926 ms  0x1a2e basekey:0x7f56ce5f0e00
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce5f0d80
  7926 ms  0x1a2e PK11_DeriveWithFlags()
  7926 ms  0x1a2e basekey:0x7f56ce26fa00
  7926 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7926 ms  0x1a2e ret:0x7f56ce605c80
  7926 ms  0x1a2e PK11_DeriveWithFlags()
  7926 ms  0x1a2e basekey:0x7f56ce26fa00
  7927 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7927 ms  0x1a2e ret:0x7f56ce10be80
  7929 ms  SECKEY_ECParamsToKeySize()
  7929 ms  0x1a2e ret:0x100
  7929 ms  SECKEY_ECParamsToBasePointOrderLen()
  7929 ms  0x1a2e ret:0x100
  7929 ms  SECKEY_ECParamsToBasePointOrderLen()
  7929 ms  0x1a2e ret:0x100
  7929 ms  0x1a2e EC_ValidatePublicKey()
  7933 ms  0x1a2e ret:0x0
  7938 ms  0x1a2e PK11_DeriveWithFlags()
  7938 ms  0x1a2e basekey:0x7f56ce26fa00
  7938 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7938 ms  0x1a2e ret:0x7f56ce10be80
  7939 ms  0x1a2e PK11_DeriveWithFlags()
  7939 ms  0x1a2e basekey:0x7f56ce5f1900
  7939 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7939 ms  0x1a2e ret:0x7f56ce10be80
  7939 ms  0x1a2e PK11_Encrypt()
  7939 ms  0x1a2e symkey:0x7f56ce26f980
  7939 ms  0x1a2e PK11_Derive()
  7939 ms  0x1a2e basekey:0x7f56ce10be80
  7939 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7939 ms  0x1a2e ret:0x7f56ce5f0e00
  7939 ms  0x1a2e PK11_PubDeriveWithKDF()
  7939 ms  0x1a2e seckey:0x7f56df2d4820
  7939 ms     | 0x1a2e EC_ValidatePublicKey()
  7939 ms     | 0x1a2e ret:0x0
  7940 ms  0x1a2e ret:0x7f56ce10be80
  7940 ms  SECKEY_ECParamsToKeySize()
  7940 ms  0x1a2e ret:0xff
  7940 ms  0x1a2e PK11_DeriveWithFlags()
  7940 ms  0x1a2e basekey:0x7f56ce5f0e00
  7940 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7940 ms  0x1a2e ret:0x7f56ce26f500
  7940 ms  0x1a2e PK11_Derive()
  7940 ms  0x1a2e basekey:0x7f56ce10be80
  7940 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7940 ms  0x1a2e ret:0x7f56ce26f480
  7940 ms  0x1a2e PK11_DeriveWithFlags()
  7940 ms  0x1a2e basekey:0x7f56ce26f480
  7940 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7940 ms  0x1a2e ret:0x7f56ce5f0e00
  7940 ms  0x1a2e PK11_DeriveWithFlags()
  7940 ms  0x1a2e basekey:0x7f56ce26f480
  7945 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7946 ms  0x1a2e ret:0x7f56ce10be80
  7946 ms  0x1a2e PK11_DeriveWithFlags()
  7946 ms  0x1a2e basekey:0x7f56ce26f480
  7946 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7946 ms  0x1a2e ret:0x7f56ce26f500
  7946 ms  0x1a2e PK11_Derive()
  7946 ms  0x1a2e basekey:0x7f56e0c0ed00
  7946 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7946 ms  0x1a2e ret:0x7f56ce10b000
  7946 ms  0x1a2e PK11_DeriveWithFlags()
  7946 ms  0x1a2e basekey:0x7f56ce10be80
  7946 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7946 ms  0x1a2e ret:0x7f56ce26f480
  7946 ms  0x1a2e PK11_DeriveWithFlags()
  7946 ms  0x1a2e basekey:0x7f56ce10be80
  7946 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7946 ms  0x1a2e ret:0x7f56ce26f500
  7953 ms  0x1a2e PK11_DeriveWithFlags()
  7953 ms  0x1a2e basekey:0x7f56ce10be80
  7953 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7953 ms  0x1a2e ret:0x7f56ce26f500
  7953 ms  0x1a2e PK11_Derive()
  7953 ms  0x1a2e basekey:0x7f56ce26f500
  7953 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7953 ms  0x1a2e ret:0x7f56e0c0ed00
  7953 ms  0x1a2e PK11_PubDeriveWithKDF()
  7953 ms  0x1a2e seckey:0x7f56df767820
  7953 ms     | 0x1a2e EC_ValidatePublicKey()
  7953 ms     | 0x1a2e ret:0x0
  7953 ms  0x1a2e ret:0x7f56ce26f500
  7953 ms  SECKEY_ECParamsToKeySize()
  7953 ms  0x1a2e ret:0xff
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56e0c0ed00
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10bb80
  7954 ms  0x1a2e PK11_Derive()
  7954 ms  0x1a2e basekey:0x7f56ce26f500
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10be00
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce10be00
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56e0c0ed00
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce10be00
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce26f500
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce10be00
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10bb80
  7954 ms  0x1a2e PK11_Derive()
  7954 ms  0x1a2e basekey:0x7f56ce5f0800
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10bb00
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce26f500
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10be00
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce26f500
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10bb80
  7954 ms  0x1a2e PK11_DeriveWithFlags()
  7954 ms  0x1a2e basekey:0x7f56ce26f500
  7954 ms     | 0x1a2e PK11_DeriveWithTemplate()
  7954 ms  0x1a2e ret:0x7f56ce10bb80
  7954 ms  0x1a2e PK11_Encrypt()
  7954 ms  0x1a2e symkey:0x7f56ce26f080
  7955 ms  0x1a2e PR_Connect()
  7955 ms  0x1a2e fd:0x7f56e26cbd60
  7955 ms  0x1a2e PR_Connect()
  7955 ms  0x1a2e fd:0x7f56e424c2e0
  7956 ms  0x1a2e PR_Connect()
  7956 ms  0x1a2e fd:0x7f56e42fd6a0
  8009 ms  0x1a2e PK11_Encrypt()
  8009 ms  0x1a2e symkey:0x7f56ce26f980
  8009 ms  0x1a2e PR_Close()
  8009 ms  0x1a2e fd:0x7f56df787a00
  8009 ms     | 0x1a2e PK11_Encrypt()
  8009 ms     | 0x1a2e symkey:0x7f56ce26f980
           /* TID 0x1a36 */
  8028 ms  0x1a36 PR_Close()
  8028 ms  0x1a36 fd:0x7f56e5141130
           /* TID 0x1a2e */
  8068 ms  0x1a2e PK11_Encrypt()
  8068 ms  0x1a2e symkey:0x7f56ce26f080
  8068 ms  0x1a2e PR_Close()
  8068 ms  0x1a2e fd:0x7f56df7f6d60
  8068 ms     | 0x1a2e PK11_Encrypt()
  8068 ms     | 0x1a2e symkey:0x7f56ce26f080
           /* TID 0x1a36 */
  8139 ms  0x1a36 PR_Close()
  8139 ms  0x1a36 fd:0x7f56ce2baf10
           /* TID 0x1ac1 */
  8139 ms  0x1ac1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8139 ms  0x1ac1 ret:0x0
           /* TID 0x1a2e */
  8140 ms  0x1a2e SSL_AuthCertificateComplete()
  8140 ms  0x1a2e fd:0x7f56df27b970
  8140 ms  0x1a2e err:0x0
  8140 ms     | 0x1a2e PK11_DeriveWithFlags()
  8140 ms     | 0x1a2e basekey:0x7f56ce10b000
  8140 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8140 ms     | 0x1a2e ret:0x7f56ce10bf00
  8140 ms     | 0x1a2e PK11_DeriveWithFlags()
  8140 ms     | 0x1a2e basekey:0x7f56ce10b000
  8140 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8140 ms     | 0x1a2e ret:0x7f56ce605d00
  8140 ms     | 0x1a2e PK11_DeriveWithFlags()
  8140 ms     | 0x1a2e basekey:0x7f56ce10b000
  8140 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8140 ms     | 0x1a2e ret:0x7f56ce10aa00
  8140 ms     | 0x1a2e PK11_DeriveWithFlags()
  8140 ms     | 0x1a2e basekey:0x7f56ce5f0e00
  8140 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8141 ms     | 0x1a2e ret:0x7f56ce26fc80
  8141 ms     | 0x1a2e PK11_DeriveWithFlags()
  8141 ms     | 0x1a2e basekey:0x7f56ce5f0e00
  8141 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8141 ms     | 0x1a2e ret:0x7f56ce10bc00
  8141 ms     | 0x1a2e PK11_DeriveWithFlags()
  8141 ms     | 0x1a2e basekey:0x7f56ce605d00
  8141 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8141 ms     | 0x1a2e ret:0x7f56ce10bc00
  8141 ms     | 0x1a2e PK11_DeriveWithFlags()
  8141 ms     | 0x1a2e basekey:0x7f56ce605d00
  8141 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8141 ms     | 0x1a2e ret:0x7f56ce26f080
  8141 ms     | 0x1a2e PK11_DeriveWithFlags()
  8141 ms     | 0x1a2e basekey:0x7f56ce5f0e00
  8141 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8141 ms     | 0x1a2e ret:0x7f56ce26f480
  8141 ms     | 0x1a2e PK11_Encrypt()
  8141 ms     | 0x1a2e symkey:0x7f56ce26fc80
  8142 ms     | 0x1a2e PK11_DeriveWithFlags()
  8142 ms     | 0x1a2e basekey:0x7f56ce10bf00
  8142 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8142 ms     | 0x1a2e ret:0x7f56ce26f480
  8142 ms     | 0x1a2e PK11_DeriveWithFlags()
  8142 ms     | 0x1a2e basekey:0x7f56ce10bf00
  8142 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8142 ms     | 0x1a2e ret:0x7f56ce26f080
  8142 ms     | 0x1a2e PK11_DeriveWithFlags()
  8142 ms     | 0x1a2e basekey:0x7f56ce10b000
  8142 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8142 ms     | 0x1a2e ret:0x7f56ce26fc80
           /* TID 0x1a36 */
  8143 ms  0x1a36 PR_Close()
  8143 ms  0x1a36 fd:0x7f56df7f6c70
           /* TID 0x1a89 */
  8143 ms  0x1a89 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8144 ms  0x1a89 ret:0x0
           /* TID 0x1a36 */
  8145 ms  0x1a36 PR_Close()
  8145 ms  0x1a36 fd:0x7f56df7f6dc0
           /* TID 0x1ac5 */
  8145 ms  0x1ac5 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8146 ms  0x1ac5 ret:0x0
           /* TID 0x1a2e */
  8149 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8149 ms     | 0x1a2e privk:0x7f56df765020::7f56df765020  f0 cb 79 df                                      ..y.
  8149 ms     | 0x1a2e privk:0x7f56df765020::7f56df765020  e5 e5 e5 e5                                      ....
  8150 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8150 ms     | 0x1a2e privk:0x7f56df2d4820::7f56df2d4820  e0 c7 79 df                                      ..y.
  8150 ms     | 0x1a2e privk:0x7f56df2d4820::7f56df2d4820  e5 e5 e5 e5                                      ....
  8150 ms  0x1a2e PK11_Encrypt()
  8150 ms  0x1a2e symkey:0x7f56ce26f480
  8151 ms  0x1a2e SSL_AuthCertificateComplete()
  8151 ms  0x1a2e fd:0x7f56e18adee0
  8151 ms  0x1a2e err:0x0
  8151 ms     | 0x1a2e PK11_DeriveWithFlags()
  8151 ms     | 0x1a2e basekey:0x7f56ce5f0d80
  8151 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8151 ms     | 0x1a2e ret:0x7f56ce10be80
  8151 ms     | 0x1a2e PK11_DeriveWithFlags()
  8151 ms     | 0x1a2e basekey:0x7f56ce5f0d80
  8151 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8151 ms     | 0x1a2e ret:0x7f56ce5f0e00
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce5f0d80
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce10b000
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce26f300
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce26f080
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce26f300
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce10bf80
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce5f0e00
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce10bf80
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce5f0e00
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce26f200
  8152 ms     | 0x1a2e PK11_DeriveWithFlags()
  8152 ms     | 0x1a2e basekey:0x7f56ce26f300
  8152 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8152 ms     | 0x1a2e ret:0x7f56ce605c80
  8152 ms     | 0x1a2e PK11_Encrypt()
  8152 ms     | 0x1a2e symkey:0x7f56ce26f080
  8154 ms     | 0x1a2e PK11_DeriveWithFlags()
  8154 ms     | 0x1a2e basekey:0x7f56ce10be80
  8154 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8154 ms     | 0x1a2e ret:0x7f56ce605c80
  8154 ms     | 0x1a2e PK11_DeriveWithFlags()
  8154 ms     | 0x1a2e basekey:0x7f56ce10be80
  8154 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8154 ms     | 0x1a2e ret:0x7f56ce26f200
  8154 ms     | 0x1a2e PK11_DeriveWithFlags()
  8154 ms     | 0x1a2e basekey:0x7f56ce5f0d80
  8154 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8154 ms     | 0x1a2e ret:0x7f56ce26f080
  8155 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8155 ms     | 0x1a2e privk:0x7f56df2d1020::7f56df2d1020  e0 c2 79 df                                      ..y.
  8155 ms     | 0x1a2e privk:0x7f56df2d1020::7f56df2d1020  e5 e5 e5 e5                                      ....
  8155 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8155 ms     | 0x1a2e privk:0x7f56df2cf020::7f56df2cf020  00 c1 79 df                                      ..y.
  8155 ms     | 0x1a2e privk:0x7f56df2cf020::7f56df2cf020  e5 e5 e5 e5                                      ....
  8155 ms  0x1a2e SSL_AuthCertificateComplete()
  8155 ms  0x1a2e fd:0x7f56e2683d30
  8155 ms  0x1a2e err:0x0
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56ce10bb00
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce26fa00
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56ce10bb00
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce26f300
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56ce10bb00
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce5f0d80
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56e0c0ed00
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce26f200
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56e0c0ed00
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce44a680
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56ce26f300
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce44a680
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56ce26f300
  8156 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8156 ms     | 0x1a2e ret:0x7f56ce5f1900
  8156 ms     | 0x1a2e PK11_DeriveWithFlags()
  8156 ms     | 0x1a2e basekey:0x7f56e0c0ed00
  8157 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8157 ms     | 0x1a2e ret:0x7f56ce10be00
  8157 ms     | 0x1a2e PK11_Encrypt()
  8157 ms     | 0x1a2e symkey:0x7f56ce26f200
  8162 ms     | 0x1a2e PK11_DeriveWithFlags()
  8162 ms     | 0x1a2e basekey:0x7f56ce26fa00
  8162 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8162 ms     | 0x1a2e ret:0x7f56ce10be00
  8162 ms     | 0x1a2e PK11_DeriveWithFlags()
  8162 ms     | 0x1a2e basekey:0x7f56ce26fa00
  8162 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8162 ms     | 0x1a2e ret:0x7f56ce5f1900
  8162 ms     | 0x1a2e PK11_DeriveWithFlags()
  8162 ms     | 0x1a2e basekey:0x7f56ce10bb00
  8162 ms     |    | 0x1a2e PK11_DeriveWithTemplate()
  8162 ms     | 0x1a2e ret:0x7f56ce26f200
  8162 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8162 ms     | 0x1a2e privk:0x7f56df769820::7f56df769820  f0 b1 95 df                                      ....
  8163 ms     | 0x1a2e privk:0x7f56df769820::7f56df769820  e5 e5 e5 e5                                      ....
  8163 ms     | 0x1a2e SECKEY_DestroyPrivateKey()
  8163 ms     | 0x1a2e privk:0x7f56df767820::7f56df767820  d0 cd 79 df                                      ..y.
  8163 ms     | 0x1a2e privk:0x7f56df767820::7f56df767820  e5 e5 e5 e5                                      ....
  8172 ms  0x1a2e PK11_Encrypt()
  8172 ms  0x1a2e symkey:0x7f56ce605c80
  8173 ms  0x1a2e PK11_Encrypt()
  8173 ms  0x1a2e symkey:0x7f56ce10be00
  8173 ms  0x1a2e PK11_Encrypt()
  8173 ms  0x1a2e symkey:0x7f56ce10be00
  8180 ms  0x1a2e PK11_DeriveWithFlags()
  8180 ms  0x1a2e basekey:0x7f56ce26fc80
  8180 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8180 ms  0x1a2e ret:0x7f56ce26f500
  8180 ms  0x1a2e PK11_DeriveWithFlags()
  8180 ms  0x1a2e basekey:0x7f56ce26fc80
  8180 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8180 ms  0x1a2e ret:0x7f56ce26f500
  8180 ms  0x1a2e PK11_Encrypt()
  8180 ms  0x1a2e symkey:0x7f56ce26f480
  8192 ms  0x1a2e PK11_DeriveWithFlags()
  8192 ms  0x1a2e basekey:0x7f56ce26f080
  8192 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8192 ms  0x1a2e ret:0x7f56ce26f500
  8192 ms  0x1a2e PK11_DeriveWithFlags()
  8192 ms  0x1a2e basekey:0x7f56ce26f080
  8192 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8192 ms  0x1a2e ret:0x7f56ce26f500
  8192 ms  0x1a2e PK11_Encrypt()
  8192 ms  0x1a2e symkey:0x7f56ce605c80
           /* TID 0x1a36 */
  8195 ms  0x1a36 PR_Close()
  8195 ms  0x1a36 fd:0x7f56ce48c5b0
           /* TID 0x1a2e */
  8195 ms  0x1a2e PK11_DeriveWithFlags()
  8195 ms  0x1a2e basekey:0x7f56ce26f200
  8195 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8195 ms  0x1a2e ret:0x7f56ce26f500
  8195 ms  0x1a2e PK11_DeriveWithFlags()
  8195 ms  0x1a2e basekey:0x7f56ce26f200
  8195 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8195 ms  0x1a2e ret:0x7f56ce26f500
  8195 ms  0x1a2e PK11_Encrypt()
  8195 ms  0x1a2e symkey:0x7f56ce10be00
           /* TID 0x1a87 */
  8208 ms  0x1a87 PR_Close()
  8208 ms  0x1a87 fd:0x7f56df7f6e50
  8210 ms  0x1a87 PR_Close()
  8210 ms  0x1a87 fd:0x7f56ce2ba0a0
           /* TID 0x1ac6 */
  8215 ms  0x1ac6 PR_Close()
  8215 ms  0x1ac6 fd:0x7f56e5141c40
  8216 ms  0x1ac6 PR_Close()
  8216 ms  0x1ac6 fd:0x7f56e5141c40
           /* TID 0x1a47 */
  8217 ms  0x1a47 PR_Close()
  8217 ms  0x1a47 fd:0x7f56e5141c70
           /* TID 0x1a3a */
  8219 ms  0x1a3a PR_Close()
  8219 ms  0x1a3a fd:0x7f56e5141ca0
           /* TID 0x1a2e */
  8225 ms  0x1a2e SSL_ImportFD()
  8225 ms  0x1a2e ret:0x7f56e51b6040
  8225 ms  0x1a2e SSL_AuthCertificateHook()
  8225 ms  0x1a2e fd:0x7f56e51b6040
  8225 ms  0x1a2e ret:0x0
  8225 ms  0x1a2e PR_Connect()
  8225 ms  0x1a2e fd:0x7f56e51b6040
  8255 ms  0x1a2e PK11_Encrypt()
  8255 ms  0x1a2e symkey:0x7f56ce10be00
  8269 ms  0x1a2e PK11_Encrypt()
  8269 ms  0x1a2e symkey:0x7f56ce605c80
           /* TID 0x1a47 */
  8270 ms  0x1a47 PR_Close()
  8270 ms  0x1a47 fd:0x7f56e555d520
  8272 ms  0x1a47 PR_Close()
  8272 ms  0x1a47 fd:0x7f56e555d520
           /* TID 0x1a2e */
  8274 ms  0x1a2e PK11_Encrypt()
  8274 ms  0x1a2e symkey:0x7f56ce605c80
  8300 ms  0x1a2e SECKEY_CreateECPrivateKey()
  8300 ms  0x1a2e cx:0x7f56df3c62c8
  8301 ms     | 0x1a2e EC_ValidatePublicKey()
  8301 ms     | 0x1a2e ret:0x0
  8301 ms  0x1a2e ret:0x7f56df768820::7f56df768820  40 c2 79 df                                      @.y.
  8301 ms  0x1a2e SECKEY_CreateECPrivateKey()
  8301 ms  0x1a2e cx:0x7f56df3c62c8
  8302 ms     | 0x1a2e EC_ValidatePublicKey()
  8304 ms     | 0x1a2e ret:0x0
  8304 ms  0x1a2e ret:0x7f56df76c020::7f56df76c020  00 c1 79 df                                      ..y.
  8359 ms  0x1a2e PK11_Encrypt()
  8359 ms  0x1a2e symkey:0x7f56ce605c80
           /* TID 0x1a36 */
  8360 ms  0x1a36 PR_Close()
  8360 ms  0x1a36 fd:0x7f56e5141f70
           /* TID 0x1a2e */
  8381 ms  SECKEY_ECParamsToKeySize()
  8381 ms  0x1a2e ret:0x100
  8381 ms  0x1a2e SECKEY_CreateECPrivateKey()
  8381 ms  0x1a2e cx:0x7f56df3c62c8
  8383 ms     | 0x1a2e EC_ValidatePublicKey()
  8387 ms     | 0x1a2e ret:0x0
  8387 ms  0x1a2e ret:0x7f56e040d820::7f56e040d820  00 b1 95 df                                      ....
  8387 ms  0x1a2e PK11_PubDeriveWithKDF()
  8387 ms  0x1a2e seckey:0x7f56e040d820
  8387 ms     | 0x1a2e EC_ValidatePublicKey()
  8391 ms     | 0x1a2e ret:0x0
           /* TID 0x1ac1 */
  8393 ms  0x1ac1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8393 ms  0x1ac1 ret:0x0
           /* TID 0x1a36 */
  8396 ms  0x1a36 PR_Close()
  8396 ms  0x1a36 fd:0x7f56e26cb040
           /* TID 0x1a2e */
  8401 ms  0x1a2e ret:0x7f56ce26f500
  8401 ms  0x1a2e PK11_DeriveWithFlags()
  8401 ms  0x1a2e basekey:0x7f56ce26f500
  8401 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8401 ms  0x1a2e ret:0x7f56e0c0ed00
  8401 ms  0x1a2e PK11_Derive()
  8401 ms  0x1a2e basekey:0x7f56e0c0ed00
  8401 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8401 ms  0x1a2e ret:0x7f56ce10bb00
  8401 ms  0x1a2e SECKEY_DestroyPrivateKey()
  8401 ms  0x1a2e privk:0x7f56e040d820::7f56e040d820  00 b1 95 df                                      ....
  8401 ms  0x1a2e privk:0x7f56e040d820::7f56e040d820  e5 e5 e5 e5                                      ....
  8402 ms  0x1a2e PK11_Encrypt()
  8402 ms  0x1a2e symkey:0x7f56ce26f580
  8402 ms  0x1a2e SSL_AuthCertificateComplete()
  8402 ms  0x1a2e fd:0x7f56e51b6040
  8402 ms  0x1a2e err:0x0
  8402 ms  0x1a2e PK11_Encrypt()
  8402 ms  0x1a2e symkey:0x7f56ce26f580
  8403 ms  0x1a2e PK11_Encrypt()
  8403 ms  0x1a2e symkey:0x7f56ce26f580
  8403 ms  0x1a2e PK11_Encrypt()
  8403 ms  0x1a2e symkey:0x7f56ce26f580
  8403 ms  0x1a2e PK11_Encrypt()
  8403 ms  0x1a2e symkey:0x7f56ce26f580
  8404 ms  0x1a2e PK11_Encrypt()
  8404 ms  0x1a2e symkey:0x7f56ce26f580
  8405 ms  0x1a2e PK11_Encrypt()
  8405 ms  0x1a2e symkey:0x7f56ce26f580
  8405 ms  0x1a2e PK11_Encrypt()
  8405 ms  0x1a2e symkey:0x7f56ce26f580
  8478 ms  0x1a2e SECKEY_DestroyPrivateKey()
  8478 ms  0x1a2e privk:0x7f56df76c020::7f56df76c020  00 c1 79 df                                      ..y.
  8478 ms  0x1a2e privk:0x7f56df76c020::7f56df76c020  e5 e5 e5 e5                                      ....
  8478 ms  0x1a2e SECKEY_DestroyPrivateKey()
  8478 ms  0x1a2e privk:0x7f56df768820::7f56df768820  40 c2 79 df                                      @.y.
  8478 ms  0x1a2e privk:0x7f56df768820::7f56df768820  e5 e5 e5 e5                                      ....
  8553 ms  0x1a2e PK11_Encrypt()
  8553 ms  0x1a2e symkey:0x7f56ce26f580
           /* TID 0x1a36 */
  8559 ms  0x1a36 PR_Close()
  8559 ms  0x1a36 fd:0x7f56df3ac3d0
           /* TID 0x1a47 */
  8564 ms  0x1a47 PR_Close()
  8564 ms  0x1a47 fd:0x7f56df3bf910
           /* TID 0x1a2e */
  8610 ms  0x1a2e PK11_Encrypt()
  8610 ms  0x1a2e symkey:0x7f56ce5f0e80
  8610 ms  0x1a2e PK11_Encrypt()
  8610 ms  0x1a2e symkey:0x7f56ce5f0e80
  8611 ms  0x1a2e PK11_Encrypt()
  8611 ms  0x1a2e symkey:0x7f56ce5f0e80
  8618 ms  0x1a2e PK11_Encrypt()
  8618 ms  0x1a2e symkey:0x7f56ce5f0e80
  8619 ms  0x1a2e PK11_Encrypt()
  8619 ms  0x1a2e symkey:0x7f56ce5f0e80
  8619 ms  0x1a2e PK11_Encrypt()
  8619 ms  0x1a2e symkey:0x7f56ce5f0e80
  8625 ms  0x1a2e PK11_Encrypt()
  8625 ms  0x1a2e symkey:0x7f56ce5f0e80
  8626 ms  0x1a2e PK11_Encrypt()
  8626 ms  0x1a2e symkey:0x7f56ce5f0e80
  8627 ms  0x1a2e PK11_Encrypt()
  8627 ms  0x1a2e symkey:0x7f56ce5f0e80
  8669 ms  0x1a2e SSL_ImportFD()
  8669 ms  0x1a2e ret:0x7f56e55fc0d0
  8669 ms  0x1a2e SSL_AuthCertificateHook()
  8669 ms  0x1a2e fd:0x7f56e55fc0d0
  8669 ms  0x1a2e ret:0x0
  8669 ms  0x1a2e PR_Connect()
  8669 ms  0x1a2e fd:0x7f56e55fc0d0
  8706 ms  0x1a2e SECKEY_CreateECPrivateKey()
  8706 ms  0x1a2e cx:0x7f56df3c6c88
  8707 ms     | 0x1a2e EC_ValidatePublicKey()
  8707 ms     | 0x1a2e ret:0x0
  8707 ms  0x1a2e ret:0x7f56e040b820::7f56e040b820  20 74 42 e0                                       tB.
  8707 ms  0x1a2e SECKEY_CreateECPrivateKey()
  8707 ms  0x1a2e cx:0x7f56df3c6c88
  8708 ms     | 0x1a2e EC_ValidatePublicKey()
  8712 ms     | 0x1a2e ret:0x0
  8712 ms  0x1a2e ret:0x7f56e040e820::7f56e040e820  e0 72 42 e0                                      .rB.
  8712 ms  0x1a2e PK11_Derive()
  8712 ms  0x1a2e basekey:0x7f56ce5f1900
  8712 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8712 ms  0x1a2e ret:0x7f56ce26f500
  8712 ms  0x1a2e PK11_DeriveWithFlags()
  8712 ms  0x1a2e basekey:0x7f56ce26f500
  8712 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8712 ms  0x1a2e ret:0x7f56ce5f1900
  8712 ms  0x1a2e PK11_DeriveWithFlags()
  8712 ms  0x1a2e basekey:0x7f56ce5f1900
  8712 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8712 ms  0x1a2e ret:0x7f56ce26fb80
           /* TID 0x1a36 */
  8715 ms  0x1a36 PR_Close()
  8715 ms  0x1a36 fd:0x7f56e5141fa0
           /* TID 0x1a47 */
  8718 ms  0x1a47 PR_Close()
  8718 ms  0x1a47 fd:0x7f56e55f6bb0
           /* TID 0x1a2e */
  8749 ms  0x1a2e PK11_PubDeriveWithKDF()
  8749 ms  0x1a2e seckey:0x7f56e040b820
  8750 ms     | 0x1a2e EC_ValidatePublicKey()
  8750 ms     | 0x1a2e ret:0x0
  8750 ms  0x1a2e ret:0x7f56ce26fb80
  8750 ms  SECKEY_ECParamsToKeySize()
  8750 ms  0x1a2e ret:0xff
  8750 ms  0x1a2e PK11_DeriveWithFlags()
  8750 ms  0x1a2e basekey:0x7f56ce26f500
  8750 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8750 ms  0x1a2e ret:0x7f56ce26f980
  8750 ms  0x1a2e PK11_Derive()
  8750 ms  0x1a2e basekey:0x7f56ce26fb80
  8750 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8750 ms  0x1a2e ret:0x7f56ce10bb80
  8750 ms  0x1a2e PK11_DeriveWithFlags()
  8750 ms  0x1a2e basekey:0x7f56ce10bb80
  8750 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8750 ms  0x1a2e ret:0x7f56ce26f500
  8750 ms  0x1a2e PK11_DeriveWithFlags()
  8750 ms  0x1a2e basekey:0x7f56ce10bb80
  8750 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8750 ms  0x1a2e ret:0x7f56ce26fb80
  8750 ms  0x1a2e PK11_DeriveWithFlags()
  8750 ms  0x1a2e basekey:0x7f56ce10bb80
  8750 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f980
  8751 ms  0x1a2e PK11_Derive()
  8751 ms  0x1a2e basekey:0x7f56ce5f0800
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce10b400
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26fb80
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce10bb80
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26fb80
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f980
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26fb80
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f980
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce10b400
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f980
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce10b400
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce5f0800
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce10b400
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f780
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26f500
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26f180
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26f500
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26fa80
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce5f0800
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26fa80
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce5f0800
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26fb00
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26f500
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce10bb80
  8751 ms  0x1a2e PK11_Encrypt()
  8751 ms  0x1a2e symkey:0x7f56ce26f180
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26f980
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce10bb80
  8751 ms  0x1a2e PK11_DeriveWithFlags()
  8751 ms  0x1a2e basekey:0x7f56ce26f980
  8751 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8751 ms  0x1a2e ret:0x7f56ce26fb00
  8752 ms  0x1a2e PK11_DeriveWithFlags()
  8752 ms  0x1a2e basekey:0x7f56ce10b400
  8752 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8752 ms  0x1a2e ret:0x7f56ce26f180
  8752 ms  0x1a2e SECKEY_DestroyPrivateKey()
  8752 ms  0x1a2e privk:0x7f56e040e820::7f56e040e820  e0 72 42 e0                                      .rB.
  8752 ms  0x1a2e privk:0x7f56e040e820::7f56e040e820  e5 e5 e5 e5                                      ....
  8752 ms  0x1a2e SECKEY_DestroyPrivateKey()
  8752 ms  0x1a2e privk:0x7f56e040b820::7f56e040b820  20 74 42 e0                                       tB.
  8753 ms  0x1a2e privk:0x7f56e040b820::7f56e040b820  e5 e5 e5 e5                                      ....
  8753 ms  0x1a2e PK11_Encrypt()
  8753 ms  0x1a2e symkey:0x7f56ce10bb80
  8753 ms  0x1a2e PK11_Encrypt()
  8753 ms  0x1a2e symkey:0x7f56ce10bb80
  8789 ms  0x1a2e PK11_DeriveWithFlags()
  8789 ms  0x1a2e basekey:0x7f56ce26f180
  8790 ms     | 0x1a2e PK11_DeriveWithTemplate()
  8790 ms  0x1a2e ret:0x7f56ce26fb80
  8790 ms  0x1a2e PK11_Encrypt()
  8790 ms  0x1a2e symkey:0x7f56ce10bb80
           /* TID 0x1a36 */
  8801 ms  0x1a36 PR_Close()
  8801 ms  0x1a36 fd:0x7f56e547db80
           /* TID 0x1ac9 */
  8816 ms  0x1ac9 PR_Close()
  8816 ms  0x1ac9 fd:0x7f56e547d340
           /* TID 0x1a36 */
  8833 ms  0x1a36 PR_Close()
  8833 ms  0x1a36 fd:0x7f56df3bf670
  8891 ms  0x1a36 PR_Close()
  8891 ms  0x1a36 fd:0x7f56ce5ec580
           /* TID 0x1ac9 */
  8905 ms  0x1ac9 PR_Close()
  8905 ms  0x1ac9 fd:0x7f56e55f6430
           /* TID 0x1a36 */
  8932 ms  0x1a36 PR_Close()
  8932 ms  0x1a36 fd:0x7f56ce461d90
  8934 ms  0x1a36 PR_Close()
  8934 ms  0x1a36 fd:0x7f56ce461d90
           /* TID 0x1acf */
  8940 ms  0x1acf PR_Close()
  8940 ms  0x1acf fd:0x7f56e55f6bb0
           /* TID 0x1ad4 */
  8945 ms  0x1ad4 PR_Close()
  8945 ms  0x1ad4 fd:0x7f56e55f63d0
           /* TID 0x1acf */
  8950 ms  0x1acf PR_Close()
  8950 ms  0x1acf fd:0x7f56e547d370
           /* TID 0x1a2e */
  9146 ms  0x1a2e PK11_Encrypt()
  9146 ms  0x1a2e symkey:0x7f56ce5f0e80
  9146 ms  0x1a2e PK11_Encrypt()
  9146 ms  0x1a2e symkey:0x7f56ce5f0e80
           /* TID 0x1a23 */
  9476 ms  0x1a23 PR_Close()
  9476 ms  0x1a23 fd:0x7f56e2617ee0
  9476 ms  0x1a23 PR_Close()
  9476 ms  0x1a23 fd:0x7f56df3bf910
  9477 ms  0x1a23 PR_Close()
  9477 ms  0x1a23 fd:0x7f56e0c8a070
  9477 ms  0x1a23 PR_Close()
  9477 ms  0x1a23 fd:0x7f56df3bf910
  9477 ms  0x1a23 PR_Close()
  9477 ms  0x1a23 fd:0x7f56e0c8a070
  9477 ms  0x1a23 PR_Close()
  9477 ms  0x1a23 fd:0x7f56df3bf910
           /* TID 0x1ad4 */
  9484 ms  0x1ad4 PR_Close()
  9484 ms  0x1ad4 fd:0x7f56df3bf910
           /* TID 0x1a36 */
  9490 ms  0x1a36 PR_Close()
  9490 ms  0x1a36 fd:0x7f56e18adfd0
  9491 ms  0x1a36 PR_Close()
  9491 ms  0x1a36 fd:0x7f56e2617ee0
  9491 ms  0x1a36 PR_Close()
  9491 ms  0x1a36 fd:0x7f56e26cb040
  9491 ms  0x1a36 PR_Close()
  9491 ms  0x1a36 fd:0x7f56e5141a60
  9491 ms  0x1a36 PR_Close()
  9491 ms  0x1a36 fd:0x7f56e5141ac0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e18adfd0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e2617ee0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e26cb040
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e5141a60
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e5141ac0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e5141d00
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e51b6880
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e547d370
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e547d700
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e547dac0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55f6400
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55f69a0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55f6a00
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55f6bb0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55f6d60
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55fc070
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55fc1c0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55fc2e0
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55fc340
  9492 ms  0x1a36 PR_Close()
  9492 ms  0x1a36 fd:0x7f56e55fc460
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e55fc4c0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e55fc550
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e55fc5e0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e55fc640
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e55fc790
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5713040
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5713130
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57131f0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5713250
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57132b0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5713340
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57133d0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57134c0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5713550
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57135e0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57139a0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5749040
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5749160
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57491c0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5749220
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5749700
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e57499d0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df040
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df0a0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df2b0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df460
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df4c0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df820
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59df880
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59dfb20
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59dfcd0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e59dfd30
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48070
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a480d0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48130
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48190
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a488e0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48a30
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48a90
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48af0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48b50
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48be0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48c40
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48d00
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48ee0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a48f40
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a82070
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a82220
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a822e0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a826d0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a82850
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a82fa0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a86340
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a86400
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a867c0
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a86850
  9493 ms  0x1a36 PR_Close()
  9493 ms  0x1a36 fd:0x7f56e5a868b0
           /* TID 0x1a23 */
  9515 ms  0x1a23 PR_Close()
  9515 ms  0x1a23 fd:0x7f56e0c8a070
  9515 ms  0x1a23 PR_Close()
  9515 ms  0x1a23 fd:0x7f56e55fc2e0
  9518 ms  0x1a23 PR_Close()
  9518 ms  0x1a23 fd:0x7f56e0c8a070
  9518 ms  0x1a23 PR_Close()
  9518 ms  0x1a23 fd:0x7f56e55fc310
  9519 ms  0x1a23 PR_Close()
  9519 ms  0x1a23 fd:0x7f56ea5c89a0
  9519 ms  0x1a23 PR_Close()
  9519 ms  0x1a23 fd:0x7f56ea5c88b0
  9519 ms  0x1a23 PR_Close()
  9519 ms  0x1a23 fd:0x7f56ea5c8a60
  9521 ms  0x1a23 PR_Close()
  9521 ms  0x1a23 fd:0x7f56e0c8aa90
  9522 ms  0x1a23 PR_Close()
  9522 ms  0x1a23 fd:0x7f56e0c8aa90
  9525 ms  0x1a23 PR_Close()
  9525 ms  0x1a23 fd:0x7f56e0c8a070
  9525 ms  0x1a23 PR_Close()
  9525 ms  0x1a23 fd:0x7f56e51b6370
  9527 ms  0x1a23 PR_Close()
  9527 ms  0x1a23 fd:0x7f56e0c8a070
  9527 ms  0x1a23 PR_Close()
  9527 ms  0x1a23 fd:0x7f56e51b6370
  9535 ms  0x1a23 PR_Close()
  9535 ms  0x1a23 fd:0x7f56e54f7a30
  9536 ms  0x1a23 PR_Close()
  9536 ms  0x1a23 fd:0x7f56e54f7a30
  9543 ms  0x1a23 PR_Close()
  9543 ms  0x1a23 fd:0x7f56e0c8a070
  9543 ms  0x1a23 PR_Close()
  9543 ms  0x1a23 fd:0x7f56e55fc340
  9543 ms  0x1a23 PR_Close()
  9543 ms  0x1a23 fd:0x7f56e0c8a070
  9543 ms  0x1a23 PR_Close()
  9543 ms  0x1a23 fd:0x7f56e55fc340
  9546 ms  0x1a23 PR_Close()
  9546 ms  0x1a23 fd:0x7f56e55fc370
  9547 ms  0x1a23 PR_Close()
  9547 ms  0x1a23 fd:0x7f56e55fc370
  9555 ms  0x1a23 PR_Close()
  9555 ms  0x1a23 fd:0x7f56e55fc790
  9556 ms  0x1a23 PR_Close()
  9556 ms  0x1a23 fd:0x7f56e55fc790
  9558 ms  0x1a23 PR_Close()
  9558 ms  0x1a23 fd:0x7f56e55fcfa0
           /* TID 0x1ad4 */
  9571 ms  0x1ad4 PR_Close()
  9571 ms  0x1ad4 fd:0x7f56e5713130
  9572 ms  0x1ad4 PR_Close()
  9572 ms  0x1ad4 fd:0x7f56e5713130
           /* TID 0x1a23 */
  9573 ms  0x1a23 PR_Close()
  9573 ms  0x1a23 fd:0x7f56e0c8a070
  9573 ms  0x1a23 PR_Close()
  9573 ms  0x1a23 fd:0x7f56e18ad7c0
           /* TID 0x1ad4 */
  9578 ms  0x1ad4 PR_Close()
  9578 ms  0x1ad4 fd:0x7f56e06303d0
  9619 ms  0x1ad4 PR_Close()
  9619 ms  0x1ad4 fd:0x7f56ce2ba460
           /* TID 0x1a2e */
  9621 ms  0x1a2e PK11_Encrypt()
  9621 ms  0x1a2e symkey:0x7f56ce10bb80
           /* TID 0x1a28 */
  9629 ms  0x1a28 PR_Close()
  9629 ms  0x1a28 fd:0x7f56e932ee20
           /* TID 0x1a2e */
  9631 ms  0x1a2e PK11_Encrypt()
  9631 ms  0x1a2e symkey:0x7f56ce10be00
  9632 ms  0x1a2e PK11_Encrypt()
  9632 ms  0x1a2e symkey:0x7f56ce605c80
  9632 ms  0x1a2e PK11_Encrypt()
  9632 ms  0x1a2e symkey:0x7f56ce26f480
  9632 ms  0x1a2e PK11_Encrypt()
  9632 ms  0x1a2e symkey:0x7f56ce26f580
  9632 ms  0x1a2e PK11_Encrypt()
  9632 ms  0x1a2e symkey:0x7f56ce10be00
  9632 ms  0x1a2e PK11_Encrypt()
  9632 ms  0x1a2e symkey:0x7f56ce5f0e80
  9633 ms  0x1a2e PK11_Encrypt()
  9633 ms  0x1a2e symkey:0x7f56ce10bb80
  9633 ms  0x1a2e PR_Close()
  9633 ms  0x1a2e fd:0x7f56e55fc0d0
  9633 ms     | 0x1a2e PK11_Encrypt()
  9633 ms     | 0x1a2e symkey:0x7f56ce10bb80
  9633 ms  0x1a2e PR_Close()
  9633 ms  0x1a2e fd:0x7f56e51b6040
  9633 ms     | 0x1a2e PK11_Encrypt()
  9633 ms     | 0x1a2e symkey:0x7f56ce26f580
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56e26cbd60
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56e2683be0
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56e2683d30
  9634 ms     | 0x1a2e PK11_Encrypt()
  9634 ms     | 0x1a2e symkey:0x7f56ce10be00
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56df27bbb0
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56e2683760
  9634 ms     | 0x1a2e PK11_Encrypt()
  9634 ms     | 0x1a2e symkey:0x7f56ce5f0e80
  9634 ms  0x1a2e PR_Close()
  9634 ms  0x1a2e fd:0x7f56df27b970
  9634 ms     | 0x1a2e PK11_Encrypt()
  9634 ms     | 0x1a2e symkey:0x7f56ce26f480
  9635 ms  0x1a2e PR_Close()
  9635 ms  0x1a2e fd:0x7f56e18adee0
  9635 ms     | 0x1a2e PK11_Encrypt()
  9635 ms     | 0x1a2e symkey:0x7f56ce605c80
  9635 ms  0x1a2e PR_Close()
  9635 ms  0x1a2e fd:0x7f56e424c2e0
  9635 ms  0x1a2e PR_Close()
  9635 ms  0x1a2e fd:0x7f56e42fd6a0
           /* TID 0x1ad4 */
  9636 ms  0x1ad4 PR_Close()
  9636 ms  0x1ad4 fd:0x7f56ce2baf10
           /* TID 0x1a2e */
  9647 ms  0x1a2e PR_Close()
  9647 ms  0x1a2e fd:0x7f56df787160
           /* TID 0x1a7e */
  9648 ms  0x1a7e PR_Close()
  9648 ms  0x1a7e fd:0x7f56ce2ba220
  9648 ms  0x1a7e PR_Close()
  9648 ms  0x1a7e fd:0x7f56ce2ba220
  9648 ms  0x1a7e PR_Close()
  9648 ms  0x1a7e fd:0x7f56ce2ba220
  9648 ms  0x1a7e PR_Close()
  9648 ms  0x1a7e fd:0x7f56ce2ba580
           /* TID 0x1ad4 */
  9650 ms  0x1ad4 PR_Close()
  9650 ms  0x1ad4 fd:0x7f56ce2ba580
           /* TID 0x1a36 */
  9653 ms  0x1a36 PR_Close()
  9653 ms  0x1a36 fd:0x7f56df3aca60
  9653 ms  0x1a36 PR_Close()
  9653 ms  0x1a36 fd:0x7f56df3aca90
           /* TID 0x1a28 */
  9666 ms  0x1a28 PR_Close()
  9666 ms  0x1a28 fd:0x7f56e0630ac0
           /* TID 0x1a23 */
  9669 ms  0x1a23 PR_Close()
  9669 ms  0x1a23 fd:0x7f56e0c8a070
  9669 ms  0x1a23 PR_Close()
  9669 ms  0x1a23 fd:0x7f56ce06f2b0
  9682 ms  0x1a23 PR_Close()
  9682 ms  0x1a23 fd:0x7f56ce06f670
  9682 ms  0x1a23 PR_Close()
  9682 ms  0x1a23 fd:0x7f56ce06fbe0
           /* TID 0x1ad4 */
  9684 ms  0x1ad4 PR_Close()
  9684 ms  0x1ad4 fd:0x7f56ce06fb50
           /* TID 0x1a28 */
  9687 ms  0x1a28 PR_Close()
  9687 ms  0x1a28 fd:0x7f56e5749820
           /* TID 0x1ad4 */
  9687 ms  0x1ad4 PR_Close()
  9687 ms  0x1ad4 fd:0x7f56ce06fa30
           /* TID 0x1a87 */
  9736 ms  0x1a87 PR_Close()
  9736 ms  0x1a87 fd:0x7f56ce06fb50
           /* TID 0x1ad4 */
  9767 ms  0x1ad4 PR_Close()
  9767 ms  0x1ad4 fd:0x7f56ce06f430
  9769 ms  0x1ad4 PR_Close()
  9769 ms  0x1ad4 fd:0x7f56ce06f430
  9777 ms  0x1ad4 PR_Close()
  9777 ms  0x1ad4 fd:0x7f56ce06f790
  9779 ms  0x1ad4 PR_Close()
  9779 ms  0x1ad4 fd:0x7f56ce06f7c0
  9794 ms  0x1ad4 PR_Close()
  9794 ms  0x1ad4 fd:0x7f56ce06fbe0
  9799 ms  0x1ad4 PR_Close()
  9799 ms  0x1ad4 fd:0x7f56ce2ba070
  9807 ms  0x1ad4 PR_Close()
  9807 ms  0x1ad4 fd:0x7f56ce2ba910
  9816 ms  0x1ad4 PR_Close()
  9816 ms  0x1ad4 fd:0x7f56ce2baa60
  9817 ms  0x1ad4 PR_Close()
  9817 ms  0x1ad4 fd:0x7f56ce2baa60
           /* TID 0x1a23 */
  9982 ms  0x1a23 PR_Close()
  9982 ms  0x1a23 fd:0x7f56ce2ba070
  9982 ms  0x1a23 PR_Close()
  9982 ms  0x1a23 fd:0x7f56ce2ba070
  9988 ms  0x1a23 PR_Close()
  9988 ms  0x1a23 fd:0x7f57078da130
  9988 ms  0x1a23 PR_Close()
  9988 ms  0x1a23 fd:0x7f57078da190
Process terminated
