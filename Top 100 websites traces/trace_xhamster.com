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
           /* TID 0x1396 */
   101 ms  0x1396 PR_Close()
   101 ms  0x1396 fd:0x7fdecbaeb850
           /* TID 0x138e */
   318 ms  0x138e SSL_ImportFD()
   318 ms  0x138e ret:0x7fdecb7a8370
   318 ms  0x138e SSL_AuthCertificateHook()
   318 ms  0x138e fd:0x7fdecb7a8370
   318 ms  0x138e ret:0x0
   318 ms  0x138e PR_Connect()
   318 ms  0x138e fd:0x7fdecb7a8370
   525 ms  0x138e SECKEY_CreateECPrivateKey()
   525 ms  0x138e cx:0x7fdecbaeee28
   527 ms     | 0x138e EC_ValidatePublicKey()
   527 ms     | 0x138e ret:0x0
   527 ms  0x138e ret:0x7fdebac5a020::7fdebac5a020  e0 bc cc ba                                      ....
   527 ms  0x138e SECKEY_CreateECPrivateKey()
   527 ms  0x138e cx:0x7fdecbaeee28
   530 ms     | 0x138e EC_ValidatePublicKey()
   535 ms     | 0x138e ret:0x0
   535 ms  0x138e ret:0x7fdebac5c020::7fdebac5c020  20 be cc ba                                       ...
           /* TID 0x13f3 */
   637 ms  0x13f3 PR_Close()
   637 ms  0x13f3 fd:0x7fdecb7a8ca0
   640 ms  0x13f3 PR_Close()
   640 ms  0x13f3 fd:0x7fdecb7a8ca0
           /* TID 0x138e */
   750 ms  SECKEY_ECParamsToKeySize()
   750 ms  0x138e ret:0x100
   750 ms  0x138e SECKEY_CreateECPrivateKey()
   750 ms  0x138e cx:0x7fdecbaeee28
   752 ms     | 0x138e EC_ValidatePublicKey()
   756 ms     | 0x138e ret:0x0
   756 ms  0x138e ret:0x7fdebac65020::7fdebac65020  20 09 91 ba                                       ...
   756 ms  0x138e PK11_PubDeriveWithKDF()
   756 ms  0x138e seckey:0x7fdebac65020
   756 ms     | 0x138e EC_ValidatePublicKey()
   760 ms     | 0x138e ret:0x0
   764 ms  0x138e ret:0x7fdecd113500
   764 ms  0x138e PK11_DeriveWithFlags()
   764 ms  0x138e basekey:0x7fdecd113500
   764 ms     | 0x138e PK11_DeriveWithTemplate()
   764 ms  0x138e ret:0x7fdeba902a80
   764 ms  0x138e PK11_Derive()
   764 ms  0x138e basekey:0x7fdeba902a80
   764 ms     | 0x138e PK11_DeriveWithTemplate()
   764 ms  0x138e ret:0x7fdeba902b80
   764 ms  0x138e SECKEY_DestroyPrivateKey()
   764 ms  0x138e privk:0x7fdebac65020::7fdebac65020  20 09 91 ba                                       ...
   765 ms  0x138e privk:0x7fdebac65020::7fdebac65020  e5 e5 e5 e5                                      ....
   765 ms  0x138e PK11_Encrypt()
   765 ms  0x138e symkey:0x7fdeba902d00
   767 ms  0x138e PR_Connect()
   767 ms  0x138e fd:0x7fdecb7a8df0
           /* TID 0x13f3 */
   796 ms  0x13f3 PR_Close()
   796 ms  0x13f3 fd:0x7fdecb7a8d60
           /* TID 0x1396 */
   821 ms  0x1396 PR_Close()
   821 ms  0x1396 fd:0x7fdecb7a8d60
           /* TID 0x13eb */
   821 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   822 ms  0x13eb ret:0x0
           /* TID 0x138e */
   822 ms  0x138e SSL_AuthCertificateComplete()
   822 ms  0x138e fd:0x7fdecb7a8370
   822 ms  0x138e err:0x0
   822 ms  0x138e PK11_Encrypt()
   822 ms  0x138e symkey:0x7fdeba902d00
   973 ms  0x138e SECKEY_DestroyPrivateKey()
   973 ms  0x138e privk:0x7fdebac5c020::7fdebac5c020  20 be cc ba                                       ...
   973 ms  0x138e privk:0x7fdebac5c020::7fdebac5c020  e5 e5 e5 e5                                      ....
   973 ms  0x138e SECKEY_DestroyPrivateKey()
   973 ms  0x138e privk:0x7fdebac5a020::7fdebac5a020  e0 bc cc ba                                      ....
   973 ms  0x138e privk:0x7fdebac5a020::7fdebac5a020  e5 e5 e5 e5                                      ....
  1186 ms  0x138e SSL_ImportFD()
  1186 ms  0x138e ret:0x7fdeba926100
  1186 ms  0x138e SSL_AuthCertificateHook()
  1186 ms  0x138e fd:0x7fdeba926100
  1187 ms  0x138e ret:0x0
  1187 ms  0x138e PR_Connect()
  1187 ms  0x138e fd:0x7fdeba926100
  1213 ms  0x138e SECKEY_CreateECPrivateKey()
  1213 ms  0x138e cx:0x7fdeba90ca68
  1214 ms     | 0x138e EC_ValidatePublicKey()
  1214 ms     | 0x138e ret:0x0
  1214 ms  0x138e ret:0x7fdebac5b020::7fdebac5b020  20 09 91 ba                                       ...
  1215 ms  0x138e SECKEY_CreateECPrivateKey()
  1215 ms  0x138e cx:0x7fdeba90ca68
  1216 ms     | 0x138e EC_ValidatePublicKey()
  1221 ms     | 0x138e ret:0x0
  1221 ms  0x138e ret:0x7fdebac61020::7fdebac61020  e0 07 91 ba                                      ....
           /* TID 0x13eb */
  1273 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1273 ms  0x13eb ret:0x0
           /* TID 0x138e */
  1273 ms  SECKEY_ECParamsToKeySize()
  1273 ms  0x138e ret:0x100
  1273 ms  0x138e SECKEY_CreateECPrivateKey()
  1273 ms  0x138e cx:0x7fdeba90ca68
  1275 ms     | 0x138e EC_ValidatePublicKey()
  1278 ms     | 0x138e ret:0x0
  1278 ms  0x138e ret:0x7fdebac64820::7fdebac64820  80 0d 91 ba                                      ....
  1278 ms  0x138e PK11_PubDeriveWithKDF()
  1278 ms  0x138e seckey:0x7fdebac64820
  1278 ms     | 0x138e EC_ValidatePublicKey()
  1279 ms     | 0x138e ret:0x0
  1281 ms  0x138e ret:0x7fdecd113500
  1281 ms  0x138e PK11_DeriveWithFlags()
  1281 ms  0x138e basekey:0x7fdecd113500
  1281 ms     | 0x138e PK11_DeriveWithTemplate()
  1281 ms  0x138e ret:0x7fdeba903480
  1281 ms  0x138e PK11_Derive()
  1281 ms  0x138e basekey:0x7fdeba903480
  1281 ms     | 0x138e PK11_DeriveWithTemplate()
  1281 ms  0x138e ret:0x7fdeba903680
  1281 ms  0x138e SECKEY_DestroyPrivateKey()
  1281 ms  0x138e privk:0x7fdebac64820::7fdebac64820  80 0d 91 ba                                      ....
  1281 ms  0x138e privk:0x7fdebac64820::7fdebac64820  e5 e5 e5 e5                                      ....
  1281 ms  0x138e PK11_Encrypt()
  1281 ms  0x138e symkey:0x7fdeba903b80
  1281 ms  0x138e SSL_AuthCertificateComplete()
  1281 ms  0x138e fd:0x7fdeba926100
  1281 ms  0x138e err:0x0
  1281 ms  0x138e PK11_Encrypt()
  1281 ms  0x138e symkey:0x7fdeba903b80
  1332 ms  0x138e SECKEY_DestroyPrivateKey()
  1332 ms  0x138e privk:0x7fdebac61020::7fdebac61020  e0 07 91 ba                                      ....
  1333 ms  0x138e privk:0x7fdebac61020::7fdebac61020  e5 e5 e5 e5                                      ....
  1333 ms  0x138e SECKEY_DestroyPrivateKey()
  1333 ms  0x138e privk:0x7fdebac5b020::7fdebac5b020  20 09 91 ba                                       ...
  1333 ms  0x138e privk:0x7fdebac5b020::7fdebac5b020  e5 e5 e5 e5                                      ....
  1336 ms  0x138e PK11_Encrypt()
  1336 ms  0x138e symkey:0x7fdeba903b80
  1365 ms  0x138e PK11_Encrypt()
  1365 ms  0x138e symkey:0x7fdeba903b80
  1397 ms  0x138e PK11_Encrypt()
  1397 ms  0x138e symkey:0x7fdeba903b80
  1427 ms  0x138e PK11_Encrypt()
  1427 ms  0x138e symkey:0x7fdeba903b80
  1556 ms  0x138e PK11_Encrypt()
  1556 ms  0x138e symkey:0x7fdeba903b80
  1589 ms  0x138e PK11_Encrypt()
  1589 ms  0x138e symkey:0x7fdeba903b80
  1630 ms  0x138e PK11_Encrypt()
  1630 ms  0x138e symkey:0x7fdeba903b80
           /* TID 0x13e5 */
  1660 ms  0x13e5 PR_Close()
  1660 ms  0x13e5 fd:0x7fdeba9262b0
  1660 ms  0x13e5 PR_Close()
  1660 ms  0x13e5 fd:0x7fdeba926310
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba9262b0
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba926310
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba9262b0
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba926310
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba9262b0
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba926310
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba9262b0
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba926310
  1661 ms  0x13e5 PR_Close()
  1661 ms  0x13e5 fd:0x7fdeba9262b0
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba926310
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba9262b0
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba926310
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba9262b0
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba926310
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba9262b0
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba926310
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba9262b0
  1662 ms  0x13e5 PR_Close()
  1662 ms  0x13e5 fd:0x7fdeba926310
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba9262b0
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba926310
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba9262b0
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba926310
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba9262b0
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba926310
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba9262b0
  1663 ms  0x13e5 PR_Close()
  1663 ms  0x13e5 fd:0x7fdeba926310
  1667 ms  0x13e5 PR_Close()
  1667 ms  0x13e5 fd:0x7fdeba9262b0
  1667 ms  0x13e5 PR_Close()
  1667 ms  0x13e5 fd:0x7fdeba9262b0
  1671 ms  0x13e5 PR_Close()
  1671 ms  0x13e5 fd:0x7fdeba9262b0
  1671 ms  0x13e5 PR_Close()
  1671 ms  0x13e5 fd:0x7fdeba9262e0
  1674 ms  0x13e5 PR_Close()
  1674 ms  0x13e5 fd:0x7fdeba9262e0
  1675 ms  0x13e5 PR_Close()
  1675 ms  0x13e5 fd:0x7fdeba9262e0
  1677 ms  0x13e5 PR_Close()
  1677 ms  0x13e5 fd:0x7fdeba9262e0
  1677 ms  0x13e5 PR_Close()
  1677 ms  0x13e5 fd:0x7fdeba9262e0
  1744 ms  0x13e5 PR_Close()
  1744 ms  0x13e5 fd:0x7fdeba9262e0
  1745 ms  0x13e5 PR_Close()
  1745 ms  0x13e5 fd:0x7fdeba9262e0
  1752 ms  0x13e5 PR_Close()
  1752 ms  0x13e5 fd:0x7fdeba9262e0
  1753 ms  0x13e5 PR_Close()
  1753 ms  0x13e5 fd:0x7fdeba9262e0
  1759 ms  0x13e5 PR_Close()
  1759 ms  0x13e5 fd:0x7fdeba9262e0
  1760 ms  0x13e5 PR_Close()
  1760 ms  0x13e5 fd:0x7fdeba9262e0
  1761 ms  0x13e5 PR_Close()
  1761 ms  0x13e5 fd:0x7fdeba9262e0
  1762 ms  0x13e5 PR_Close()
  1762 ms  0x13e5 fd:0x7fdeba9262e0
           /* TID 0x13e2 */
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
  1762 ms  0x13e2 PR_Close()
  1762 ms  0x13e2 fd:0x7fdeba9262e0
           /* TID 0x13f3 */
  2264 ms  0x13f3 PR_Close()
  2264 ms  0x13f3 fd:0x7fdeba926640
  2267 ms  0x13f3 PR_Close()
  2267 ms  0x13f3 fd:0x7fdeba926640
  2813 ms  0x13f3 PR_Close()
  2813 ms  0x13f3 fd:0x7fdeba926640
           /* TID 0x1396 */
  4196 ms  0x1396 PR_Close()
  4196 ms  0x1396 fd:0x7fdeba926640
  4196 ms  0x1396 PR_Close()
  4196 ms  0x1396 fd:0x7fdeba926790
           /* TID 0x138e */
  4571 ms  0x138e SSL_ImportFD()
  4571 ms  0x138e ret:0x7fdeba8df790
  4571 ms  0x138e SSL_AuthCertificateHook()
  4571 ms  0x138e fd:0x7fdeba8df790
  4571 ms  0x138e ret:0x0
  4571 ms  0x138e PR_Connect()
  4571 ms  0x138e fd:0x7fdeba8df790
  4619 ms  0x138e SECKEY_CreateECPrivateKey()
  4619 ms  0x138e cx:0x7fdeba90cda8
  4621 ms     | 0x138e EC_ValidatePublicKey()
  4621 ms     | 0x138e ret:0x0
  4621 ms  0x138e ret:0x7fdeba89b020::7fdeba89b020  20 39 8c ba                                       9..
  4621 ms  0x138e SECKEY_CreateECPrivateKey()
  4621 ms  0x138e cx:0x7fdeba90cda8
  4623 ms     | 0x138e EC_ValidatePublicKey()
  4626 ms     | 0x138e ret:0x0
  4626 ms  0x138e ret:0x7fdeba89d020::7fdeba89d020  a0 3b 8c ba                                      .;..
  4680 ms  SECKEY_ECParamsToKeySize()
  4680 ms  0x138e ret:0x100
  4680 ms  0x138e SECKEY_CreateECPrivateKey()
  4680 ms  0x138e cx:0x7fdeba90cda8
  4681 ms     | 0x138e EC_ValidatePublicKey()
  4685 ms     | 0x138e ret:0x0
  4685 ms  0x138e ret:0x7fdeba8ae820::7fdeba8ae820  b0 45 71 ba                                      .Eq.
  4685 ms  0x138e PK11_PubDeriveWithKDF()
  4685 ms  0x138e seckey:0x7fdeba8ae820
  4685 ms     | 0x138e EC_ValidatePublicKey()
  4690 ms     | 0x138e ret:0x0
  4693 ms  0x138e ret:0x7fdecd113500
  4693 ms  0x138e PK11_DeriveWithFlags()
  4693 ms  0x138e basekey:0x7fdecd113500
  4693 ms     | 0x138e PK11_DeriveWithTemplate()
  4693 ms  0x138e ret:0x7fdeba8e4300
  4693 ms  0x138e PK11_Derive()
  4693 ms  0x138e basekey:0x7fdeba8e4300
  4693 ms     | 0x138e PK11_DeriveWithTemplate()
  4694 ms  0x138e ret:0x7fdeba8e4380
  4694 ms  0x138e SECKEY_DestroyPrivateKey()
  4694 ms  0x138e privk:0x7fdeba8ae820::7fdeba8ae820  b0 45 71 ba                                      .Eq.
  4694 ms  0x138e privk:0x7fdeba8ae820::7fdeba8ae820  e5 e5 e5 e5                                      ....
  4694 ms  0x138e PK11_Encrypt()
  4694 ms  0x138e symkey:0x7fdeba8e4500
  4695 ms  0x138e PR_Connect()
  4695 ms  0x138e fd:0x7fdeba8dfca0
           /* TID 0x13eb */
  4780 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4780 ms  0x13eb ret:0x0
           /* TID 0x1396 */
  4783 ms  0x1396 PR_Close()
  4783 ms  0x1396 fd:0x7fdeba8dfc40
           /* TID 0x138e */
  4805 ms  0x138e SSL_AuthCertificateComplete()
  4805 ms  0x138e fd:0x7fdeba8df790
  4805 ms  0x138e err:0x0
  4806 ms     | 0x138e SECKEY_DestroyPrivateKey()
  4806 ms     | 0x138e privk:0x7fdeba89d020::7fdeba89d020  a0 3b 8c ba                                      .;..
  4806 ms     | 0x138e privk:0x7fdeba89d020::7fdeba89d020  e5 e5 e5 e5                                      ....
  4806 ms     | 0x138e SECKEY_DestroyPrivateKey()
  4806 ms     | 0x138e privk:0x7fdeba89b020::7fdeba89b020  20 39 8c ba                                       9..
  4806 ms     | 0x138e privk:0x7fdeba89b020::7fdeba89b020  e5 e5 e5 e5                                      ....
  4807 ms  0x138e PK11_Encrypt()
  4807 ms  0x138e symkey:0x7fdeba8e4500
  4807 ms  0x138e PK11_Encrypt()
  4807 ms  0x138e symkey:0x7fdeba8e4500
  4808 ms  0x138e PK11_Encrypt()
  4808 ms  0x138e symkey:0x7fdeba8e4500
           /* TID 0x13a5 */
  4932 ms  0x13a5 PR_Close()
  4932 ms  0x13a5 fd:0x7fdeba8c4130
           /* TID 0x138e */
  4970 ms  0x138e SSL_ImportFD()
  4970 ms  0x138e ret:0x7fdeba8c4940
  4970 ms  0x138e SSL_AuthCertificateHook()
  4970 ms  0x138e fd:0x7fdeba8c4940
  4970 ms  0x138e ret:0x0
  4971 ms  0x138e PK11_Encrypt()
  4971 ms  0x138e symkey:0x7fdeba8e4500
  4972 ms  0x138e PR_Connect()
  4972 ms  0x138e fd:0x7fdeba8c4940
  5020 ms  0x138e SECKEY_CreateECPrivateKey()
  5020 ms  0x138e cx:0x7fdeba90d428
  5021 ms     | 0x138e EC_ValidatePublicKey()
  5021 ms     | 0x138e ret:0x0
  5022 ms  0x138e ret:0x7fdeba8b2020::7fdeba8b2020  50 36 8c ba                                      P6..
  5022 ms  0x138e SECKEY_CreateECPrivateKey()
  5022 ms  0x138e cx:0x7fdeba90d428
  5024 ms     | 0x138e EC_ValidatePublicKey()
  5029 ms     | 0x138e ret:0x0
  5029 ms  0x138e ret:0x7fdebac59820::7fdebac59820  10 3a 8c ba                                      .:..
  5081 ms  SECKEY_ECParamsToKeySize()
  5081 ms  0x138e ret:0x100
  5082 ms  0x138e SECKEY_CreateECPrivateKey()
  5082 ms  0x138e cx:0x7fdeba90d428
  5083 ms     | 0x138e EC_ValidatePublicKey()
  5089 ms     | 0x138e ret:0x0
  5089 ms  0x138e ret:0x7fdeba94d820::7fdeba94d820  b0 3f 8c ba                                      .?..
  5089 ms  0x138e PK11_PubDeriveWithKDF()
  5089 ms  0x138e seckey:0x7fdeba94d820
  5089 ms     | 0x138e EC_ValidatePublicKey()
  5094 ms     | 0x138e ret:0x0
  5098 ms  0x138e ret:0x7fdecd113500
  5098 ms  0x138e PK11_DeriveWithFlags()
  5098 ms  0x138e basekey:0x7fdecd113500
  5098 ms     | 0x138e PK11_DeriveWithTemplate()
  5098 ms  0x138e ret:0x7fdeba752a00
  5098 ms  0x138e PK11_Derive()
  5098 ms  0x138e basekey:0x7fdeba752a00
  5098 ms     | 0x138e PK11_DeriveWithTemplate()
  5098 ms  0x138e ret:0x7fdeba752a80
  5098 ms  0x138e SECKEY_DestroyPrivateKey()
  5098 ms  0x138e privk:0x7fdeba94d820::7fdeba94d820  b0 3f 8c ba                                      .?..
  5099 ms  0x138e privk:0x7fdeba94d820::7fdeba94d820  e5 e5 e5 e5                                      ....
  5099 ms  0x138e PK11_Encrypt()
  5099 ms  0x138e symkey:0x7fdeba752c00
  5099 ms  0x138e SSL_AuthCertificateComplete()
  5099 ms  0x138e fd:0x7fdeba8c4940
  5099 ms  0x138e err:0x0
  5099 ms  0x138e PK11_Encrypt()
  5099 ms  0x138e symkey:0x7fdeba752c00
           /* TID 0x13a5 */
  5109 ms  0x13a5 PR_Close()
  5109 ms  0x13a5 fd:0x7fdeba8c4c40
           /* TID 0x138e */
  5146 ms  0x138e SECKEY_DestroyPrivateKey()
  5146 ms  0x138e privk:0x7fdebac59820::7fdebac59820  10 3a 8c ba                                      .:..
  5147 ms  0x138e privk:0x7fdebac59820::7fdebac59820  e5 e5 e5 e5                                      ....
  5147 ms  0x138e SECKEY_DestroyPrivateKey()
  5147 ms  0x138e privk:0x7fdeba8b2020::7fdeba8b2020  50 36 8c ba                                      P6..
  5147 ms  0x138e privk:0x7fdeba8b2020::7fdeba8b2020  e5 e5 e5 e5                                      ....
  5147 ms  0x138e PR_Close()
  5147 ms  0x138e fd:0x7fdeba8c4940
  5147 ms     | 0x138e PK11_Encrypt()
  5147 ms     | 0x138e symkey:0x7fdeba752c00
           /* TID 0x1396 */
  5175 ms  0x1396 PR_Close()
  5175 ms  0x1396 fd:0x7fdeba5ce370
           /* TID 0x138e */
  5202 ms  0x138e SSL_ImportFD()
  5202 ms  0x138e ret:0x7fdeba5cec40
  5202 ms  0x138e SSL_AuthCertificateHook()
  5202 ms  0x138e fd:0x7fdeba5cec40
  5202 ms  0x138e ret:0x0
  5202 ms  0x138e PR_Connect()
  5202 ms  0x138e fd:0x7fdeba5cec40
  5240 ms  0x138e SECKEY_CreateECPrivateKey()
  5240 ms  0x138e cx:0x7fdeba90d428
  5241 ms     | 0x138e EC_ValidatePublicKey()
  5241 ms     | 0x138e ret:0x0
  5241 ms  0x138e ret:0x7fdeba607820::7fdeba607820  80 a8 66 ba                                      ..f.
  5241 ms  0x138e SECKEY_CreateECPrivateKey()
  5241 ms  0x138e cx:0x7fdeba90d428
  5243 ms     | 0x138e EC_ValidatePublicKey()
  5246 ms     | 0x138e ret:0x0
  5246 ms  0x138e ret:0x7fdeba609820::7fdeba609820  30 63 68 ba                                      0ch.
  5289 ms  0x138e SSL_ImportFD()
  5289 ms  0x138e ret:0x7fdeba5da910
  5289 ms  0x138e SSL_AuthCertificateHook()
  5289 ms  0x138e fd:0x7fdeba5da910
  5289 ms  0x138e ret:0x0
  5289 ms  0x138e PR_Connect()
  5289 ms  0x138e fd:0x7fdeba5da910
  5289 ms  0x138e SSL_ImportFD()
  5289 ms  0x138e ret:0x7fdeba5da9a0
  5289 ms  0x138e SSL_AuthCertificateHook()
  5289 ms  0x138e fd:0x7fdeba5da9a0
  5289 ms  0x138e ret:0x0
  5289 ms  0x138e PR_Connect()
  5289 ms  0x138e fd:0x7fdeba5da9a0
  5289 ms  0x138e SSL_ImportFD()
  5289 ms  0x138e ret:0x7fdeba5da430
  5289 ms  0x138e SSL_AuthCertificateHook()
  5289 ms  0x138e fd:0x7fdeba5da430
  5289 ms  0x138e ret:0x0
  5289 ms  0x138e PR_Connect()
  5289 ms  0x138e fd:0x7fdeba5da430
  5289 ms  0x138e SSL_ImportFD()
  5289 ms  0x138e ret:0x7fdeba5da460
  5289 ms  0x138e SSL_AuthCertificateHook()
  5289 ms  0x138e fd:0x7fdeba5da460
  5289 ms  0x138e ret:0x0
  5289 ms  0x138e PR_Connect()
  5289 ms  0x138e fd:0x7fdeba5da460
  5289 ms  0x138e SSL_ImportFD()
  5290 ms  0x138e ret:0x7fdeba5da520
  5290 ms  0x138e SSL_AuthCertificateHook()
  5290 ms  0x138e fd:0x7fdeba5da520
  5290 ms  0x138e ret:0x0
  5290 ms  0x138e PR_Connect()
  5290 ms  0x138e fd:0x7fdeba5da520
  5290 ms  0x138e SSL_ImportFD()
  5290 ms  0x138e ret:0x7fdeba5da5e0
  5290 ms  0x138e SSL_AuthCertificateHook()
  5290 ms  0x138e fd:0x7fdeba5da5e0
  5290 ms  0x138e ret:0x0
  5290 ms  0x138e PR_Connect()
  5290 ms  0x138e fd:0x7fdeba5da5e0
  5290 ms  0x138e SSL_ImportFD()
  5290 ms  0x138e ret:0x7fdeba5da640
  5290 ms  0x138e SSL_AuthCertificateHook()
  5290 ms  0x138e fd:0x7fdeba5da640
  5290 ms  0x138e ret:0x0
  5290 ms  0x138e PR_Connect()
  5290 ms  0x138e fd:0x7fdeba5da640
  5300 ms  0x138e PK11_Derive()
  5300 ms  0x138e basekey:0x7fdeba752a80
  5300 ms     | 0x138e PK11_DeriveWithTemplate()
  5300 ms  0x138e ret:0x7fdeba752a00
  5300 ms  0x138e PK11_PubDeriveWithKDF()
  5300 ms  0x138e seckey:0x7fdeba607820
  5300 ms     | 0x138e EC_ValidatePublicKey()
  5300 ms     | 0x138e ret:0x0
  5301 ms  0x138e ret:0x7fdeba752a80
  5301 ms  SECKEY_ECParamsToKeySize()
  5301 ms  0x138e ret:0xff
  5301 ms  0x138e PK11_DeriveWithFlags()
  5301 ms  0x138e basekey:0x7fdeba752a00
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdecd113500
  5302 ms  0x138e PK11_Derive()
  5302 ms  0x138e basekey:0x7fdeba752a80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdeba752b80
  5302 ms  0x138e PK11_DeriveWithFlags()
  5302 ms  0x138e basekey:0x7fdeba752b80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdeba752a00
  5302 ms  0x138e PK11_DeriveWithFlags()
  5302 ms  0x138e basekey:0x7fdeba752b80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdeba752a80
  5302 ms  0x138e PK11_DeriveWithFlags()
  5302 ms  0x138e basekey:0x7fdeba752b80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdecd113500
  5302 ms  0x138e PK11_Derive()
  5302 ms  0x138e basekey:0x7fdeba752c80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdeba752b00
  5302 ms  0x138e PK11_DeriveWithFlags()
  5302 ms  0x138e basekey:0x7fdeba752a80
  5302 ms     | 0x138e PK11_DeriveWithTemplate()
  5302 ms  0x138e ret:0x7fdeba752b80
  5302 ms  0x138e PK11_DeriveWithFlags()
  5302 ms  0x138e basekey:0x7fdeba752a80
  5303 ms     | 0x138e PK11_DeriveWithTemplate()
  5303 ms  0x138e ret:0x7fdecd113500
  5307 ms  SECKEY_ECParamsToKeySize()
  5307 ms  0x138e ret:0x100
  5307 ms  SECKEY_ECParamsToBasePointOrderLen()
  5307 ms  0x138e ret:0x100
  5307 ms  SECKEY_ECParamsToBasePointOrderLen()
  5307 ms  0x138e ret:0x100
  5307 ms  0x138e EC_ValidatePublicKey()
  5311 ms  0x138e ret:0x0
  5317 ms  0x138e PK11_DeriveWithFlags()
  5317 ms  0x138e basekey:0x7fdeba752a80
  5317 ms     | 0x138e PK11_DeriveWithTemplate()
  5317 ms  0x138e ret:0x7fdecd113500
  5319 ms  0x138e SECKEY_CreateECPrivateKey()
  5319 ms  0x138e cx:0x7fdeba90e608
  5320 ms     | 0x138e EC_ValidatePublicKey()
  5320 ms     | 0x138e ret:0x0
  5320 ms  0x138e ret:0x7fdeba616820::7fdeba616820  b0 8a 9a ba                                      ....
  5320 ms  0x138e SECKEY_CreateECPrivateKey()
  5320 ms  0x138e cx:0x7fdeba90e608
  5322 ms     | 0x138e EC_ValidatePublicKey()
  5325 ms     | 0x138e ret:0x0
  5325 ms  0x138e ret:0x7fdeba618820::7fdeba618820  d0 8d 9a ba                                      ....
  5326 ms  0x138e SECKEY_CreateECPrivateKey()
  5326 ms  0x138e cx:0x7fdeba90e468
  5327 ms     | 0x138e EC_ValidatePublicKey()
  5327 ms     | 0x138e ret:0x0
  5327 ms  0x138e ret:0x7fdeba61b020::7fdeba61b020  00 51 51 cc                                      .QQ.
  5327 ms  0x138e SECKEY_CreateECPrivateKey()
  5327 ms  0x138e cx:0x7fdeba90e468
  5328 ms     | 0x138e EC_ValidatePublicKey()
  5331 ms     | 0x138e ret:0x0
  5331 ms  0x138e ret:0x7fdeba61d020::7fdeba61d020  f0 f1 48 ba                                      ..H.
  5331 ms  0x138e SECKEY_CreateECPrivateKey()
  5331 ms  0x138e cx:0x7fdeba90e2c8
  5332 ms     | 0x138e EC_ValidatePublicKey()
  5332 ms     | 0x138e ret:0x0
  5332 ms  0x138e ret:0x7fdeba61f820::7fdeba61f820  30 f3 48 ba                                      0.H.
  5332 ms  0x138e SECKEY_CreateECPrivateKey()
  5332 ms  0x138e cx:0x7fdeba90e2c8
  5333 ms     | 0x138e EC_ValidatePublicKey()
  5335 ms     | 0x138e ret:0x0
  5335 ms  0x138e ret:0x7fdeba621820::7fdeba621820  10 f5 48 ba                                      ..H.
  5336 ms  0x138e SECKEY_CreateECPrivateKey()
  5336 ms  0x138e cx:0x7fdeba90e128
  5336 ms     | 0x138e EC_ValidatePublicKey()
  5336 ms     | 0x138e ret:0x0
  5337 ms  0x138e ret:0x7fdeba49f820::7fdeba49f820  50 f6 48 ba                                      P.H.
  5337 ms  0x138e SECKEY_CreateECPrivateKey()
  5337 ms  0x138e cx:0x7fdeba90e128
  5337 ms     | 0x138e EC_ValidatePublicKey()
  5339 ms     | 0x138e ret:0x0
  5339 ms  0x138e ret:0x7fdeba4a1820::7fdeba4a1820  30 f8 48 ba                                      0.H.
  5344 ms  0x138e SECKEY_CreateECPrivateKey()
  5344 ms  0x138e cx:0x7fdeba90dde8
  5344 ms     | 0x138e EC_ValidatePublicKey()
  5344 ms     | 0x138e ret:0x0
  5344 ms  0x138e ret:0x7fdeba4a4020::7fdeba4a4020  70 f9 48 ba                                      p.H.
  5344 ms  0x138e SECKEY_CreateECPrivateKey()
  5344 ms  0x138e cx:0x7fdeba90dde8
  5345 ms     | 0x138e EC_ValidatePublicKey()
  5347 ms     | 0x138e ret:0x0
  5347 ms  0x138e ret:0x7fdeba4a6020::7fdeba4a6020  50 fb 48 ba                                      P.H.
  5347 ms  0x138e SECKEY_CreateECPrivateKey()
  5347 ms  0x138e cx:0x7fdeba90dc48
  5348 ms     | 0x138e EC_ValidatePublicKey()
  5348 ms     | 0x138e ret:0x0
  5348 ms  0x138e ret:0x7fdeba4a8820::7fdeba4a8820  90 fc 48 ba                                      ..H.
  5348 ms  0x138e SECKEY_CreateECPrivateKey()
  5348 ms  0x138e cx:0x7fdeba90dc48
  5348 ms     | 0x138e EC_ValidatePublicKey()
  5350 ms     | 0x138e ret:0x0
  5350 ms  0x138e ret:0x7fdeba4aa820::7fdeba4aa820  70 fe 48 ba                                      p.H.
  5350 ms  0x138e SECKEY_CreateECPrivateKey()
  5350 ms  0x138e cx:0x7fdeba90d908
  5351 ms     | 0x138e EC_ValidatePublicKey()
  5351 ms     | 0x138e ret:0x0
  5351 ms  0x138e ret:0x7fdeba4ad020::7fdeba4ad020  b0 ff 48 ba                                      ..H.
  5351 ms  0x138e SECKEY_CreateECPrivateKey()
  5351 ms  0x138e cx:0x7fdeba90d908
  5351 ms     | 0x138e EC_ValidatePublicKey()
  5353 ms     | 0x138e ret:0x0
  5353 ms  0x138e ret:0x7fdeba4af020::7fdeba4af020  f0 01 4e ba                                      ..N.
  5353 ms  0x138e PR_Connect()
  5353 ms  0x138e fd:0x7fdeba5da700
  5354 ms  SECKEY_ECParamsToKeySize()
  5354 ms  0x138e ret:0x100
  5354 ms  SECKEY_ECParamsToBasePointOrderLen()
  5354 ms  0x138e ret:0x100
  5354 ms  SECKEY_ECParamsToBasePointOrderLen()
  5354 ms  0x138e ret:0x100
  5354 ms  0x138e EC_ValidatePublicKey()
  5356 ms  0x138e ret:0x0
           /* TID 0x1428 */
  5358 ms  SECKEY_ECParamsToBasePointOrderLen()
  5358 ms  0x1428 ret:0x180
  5358 ms  SECKEY_ECParamsToBasePointOrderLen()
  5358 ms  0x1428 ret:0x180
  5358 ms  0x1428 EC_ValidatePublicKey()
  5359 ms  0x1428 ret:0x0
           /* TID 0x138e */
  5361 ms  SECKEY_ECParamsToKeySize()
  5361 ms  0x138e ret:0xff
  5361 ms  0x138e SECKEY_CreateECPrivateKey()
  5361 ms  0x138e cx:0x7fdeba90e608
  5361 ms     | 0x138e EC_ValidatePublicKey()
  5361 ms     | 0x138e ret:0x0
  5362 ms  0x138e ret:0x7fdeba10b020::7fdeba10b020  40 07 4e ba                                      @.N.
  5362 ms  0x138e PK11_PubDeriveWithKDF()
  5362 ms  0x138e seckey:0x7fdeba10b020
  5362 ms     | 0x138e EC_ValidatePublicKey()
  5362 ms     | 0x138e ret:0x0
  5362 ms  0x138e ret:0x7fdecd113500
  5362 ms  0x138e PK11_DeriveWithFlags()
  5362 ms  0x138e basekey:0x7fdecd113500
  5362 ms     | 0x138e PK11_DeriveWithTemplate()
  5362 ms  0x138e ret:0x7fdeba752c80
  5362 ms  0x138e PK11_Derive()
  5362 ms  0x138e basekey:0x7fdeba752c80
  5362 ms     | 0x138e PK11_DeriveWithTemplate()
  5362 ms  0x138e ret:0x7fdeba752c00
  5362 ms  0x138e SECKEY_DestroyPrivateKey()
  5362 ms  0x138e privk:0x7fdeba10b020::7fdeba10b020  40 07 4e ba                                      @.N.
  5364 ms  0x138e privk:0x7fdeba10b020::7fdeba10b020  e5 e5 e5 e5                                      ....
  5364 ms  0x138e PK11_Encrypt()
  5364 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1428 */
  5366 ms  SECKEY_ECParamsToBasePointOrderLen()
  5366 ms  0x1428 ret:0x100
  5366 ms  SECKEY_ECParamsToBasePointOrderLen()
  5366 ms  0x1428 ret:0x100
  5366 ms  0x1428 EC_ValidatePublicKey()
  5367 ms  0x1428 ret:0x0
           /* TID 0x138e */
  5368 ms  SECKEY_ECParamsToKeySize()
  5368 ms  0x138e ret:0x100
  5368 ms  SECKEY_ECParamsToBasePointOrderLen()
  5368 ms  0x138e ret:0x100
  5368 ms  SECKEY_ECParamsToBasePointOrderLen()
  5368 ms  0x138e ret:0x100
  5368 ms  0x138e EC_ValidatePublicKey()
  5370 ms  0x138e ret:0x0
  5372 ms  SECKEY_ECParamsToKeySize()
  5372 ms  0x138e ret:0xff
  5372 ms  0x138e SECKEY_CreateECPrivateKey()
  5372 ms  0x138e cx:0x7fdeba90e468
  5372 ms     | 0x138e EC_ValidatePublicKey()
  5372 ms     | 0x138e ret:0x0
  5372 ms  0x138e ret:0x7fdeba13a020::7fdeba13a020  10 0f 4e ba                                      ..N.
  5372 ms  0x138e PK11_PubDeriveWithKDF()
  5372 ms  0x138e seckey:0x7fdeba13a020
  5372 ms     | 0x138e EC_ValidatePublicKey()
  5372 ms     | 0x138e ret:0x0
  5373 ms  0x138e ret:0x7fdecd113500
  5373 ms  0x138e PK11_DeriveWithFlags()
  5373 ms  0x138e basekey:0x7fdecd113500
  5373 ms     | 0x138e PK11_DeriveWithTemplate()
  5373 ms  0x138e ret:0x7fdeba12a300
  5373 ms  0x138e PK11_Derive()
  5373 ms  0x138e basekey:0x7fdeba12a300
  5373 ms     | 0x138e PK11_DeriveWithTemplate()
  5373 ms  0x138e ret:0x7fdeba12a380
  5373 ms  0x138e SECKEY_DestroyPrivateKey()
  5373 ms  0x138e privk:0x7fdeba13a020::7fdeba13a020  10 0f 4e ba                                      ..N.
  5373 ms  0x138e privk:0x7fdeba13a020::7fdeba13a020  e5 e5 e5 e5                                      ....
  5373 ms  0x138e PK11_Encrypt()
  5373 ms  0x138e symkey:0x7fdeba12a500
           /* TID 0x1429 */
  5374 ms  SECKEY_ECParamsToBasePointOrderLen()
  5374 ms  0x1429 ret:0x180
  5374 ms  SECKEY_ECParamsToBasePointOrderLen()
  5374 ms  0x1429 ret:0x180
  5374 ms  0x1429 EC_ValidatePublicKey()
  5376 ms  0x1429 ret:0x0
           /* TID 0x1428 */
  5378 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5378 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5378 ms     | 0x1428 ret:0x100
  5378 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5378 ms     | 0x1428 ret:0x100
  5379 ms     | 0x1428 EC_ValidatePublicKey()
           /* TID 0x138e */
  5381 ms  SECKEY_ECParamsToKeySize()
  5381 ms  0x138e ret:0x100
  5381 ms  SECKEY_ECParamsToBasePointOrderLen()
  5381 ms  0x138e ret:0x100
  5381 ms  SECKEY_ECParamsToBasePointOrderLen()
  5381 ms  0x138e ret:0x100
           /* TID 0x1428 */
  5382 ms     | 0x1428 ret:0x0
  5384 ms  0x1428 ret:0x0
           /* TID 0x138e */
  5385 ms  0x138e EC_ValidatePublicKey()
  5386 ms  0x138e ret:0x0
  5388 ms  SECKEY_ECParamsToKeySize()
  5388 ms  0x138e ret:0xff
  5388 ms  0x138e SECKEY_CreateECPrivateKey()
  5388 ms  0x138e cx:0x7fdeba90e2c8
  5388 ms     | 0x138e EC_ValidatePublicKey()
  5388 ms     | 0x138e ret:0x0
  5388 ms  0x138e ret:0x7fdeba13e820::7fdeba13e820  40 72 4f ba                                      @rO.
  5389 ms  0x138e PK11_PubDeriveWithKDF()
  5389 ms  0x138e seckey:0x7fdeba13e820
  5389 ms     | 0x138e EC_ValidatePublicKey()
  5389 ms     | 0x138e ret:0x0
           /* TID 0x1429 */
  5389 ms  SECKEY_ECParamsToBasePointOrderLen()
  5389 ms  0x1429 ret:0x100
  5389 ms  SECKEY_ECParamsToBasePointOrderLen()
  5389 ms  0x1429 ret:0x100
  5389 ms  0x1429 EC_ValidatePublicKey()
  5391 ms  0x1429 ret:0x0
  5393 ms  0x1429 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5393 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5393 ms     | 0x1429 ret:0x100
  5393 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5393 ms     | 0x1429 ret:0x100
  5393 ms     | 0x1429 EC_ValidatePublicKey()
  5394 ms     | 0x1429 ret:0x0
  5396 ms  0x1429 ret:0x0
           /* TID 0x138e */
  5396 ms  0x138e ret:0x7fdecd113500
  5396 ms  0x138e PK11_DeriveWithFlags()
  5396 ms  0x138e basekey:0x7fdecd113500
  5396 ms     | 0x138e PK11_DeriveWithTemplate()
  5396 ms  0x138e ret:0x7fdeba12ab00
  5396 ms  0x138e PK11_Derive()
  5396 ms  0x138e basekey:0x7fdeba12ab00
  5396 ms     | 0x138e PK11_DeriveWithTemplate()
  5396 ms  0x138e ret:0x7fdeba12ab80
  5396 ms  0x138e SECKEY_DestroyPrivateKey()
  5396 ms  0x138e privk:0x7fdeba13e820::7fdeba13e820  40 72 4f ba                                      @rO.
  5396 ms  0x138e privk:0x7fdeba13e820::7fdeba13e820  e5 e5 e5 e5                                      ....
  5396 ms  0x138e PK11_Encrypt()
  5396 ms  0x138e symkey:0x7fdeba12ad00
  5401 ms  SECKEY_ECParamsToKeySize()
  5401 ms  0x138e ret:0x100
  5401 ms  SECKEY_ECParamsToBasePointOrderLen()
  5401 ms  0x138e ret:0x100
  5401 ms  SECKEY_ECParamsToBasePointOrderLen()
  5401 ms  0x138e ret:0x100
  5401 ms  0x138e EC_ValidatePublicKey()
  5403 ms  0x138e ret:0x0
  5406 ms  SECKEY_ECParamsToKeySize()
  5406 ms  0x138e ret:0xff
  5406 ms  0x138e SECKEY_CreateECPrivateKey()
  5406 ms  0x138e cx:0x7fdeba90e128
  5406 ms     | 0x138e EC_ValidatePublicKey()
  5406 ms     | 0x138e ret:0x0
  5406 ms  0x138e ret:0x7fdeba13e820::7fdeba13e820  00 0b 4e ba                                      ..N.
  5407 ms  0x138e PK11_PubDeriveWithKDF()
  5407 ms  0x138e seckey:0x7fdeba13e820
  5407 ms     | 0x138e EC_ValidatePublicKey()
  5407 ms     | 0x138e ret:0x0
  5407 ms  0x138e ret:0x7fdecd113500
  5407 ms  0x138e PK11_DeriveWithFlags()
  5407 ms  0x138e basekey:0x7fdecd113500
  5407 ms     | 0x138e PK11_DeriveWithTemplate()
  5407 ms  0x138e ret:0x7fdeba12a600
  5407 ms  0x138e PK11_Derive()
  5407 ms  0x138e basekey:0x7fdeba12a600
  5407 ms     | 0x138e PK11_DeriveWithTemplate()
  5407 ms  0x138e ret:0x7fdeba12a680
  5407 ms  0x138e SECKEY_DestroyPrivateKey()
  5407 ms  0x138e privk:0x7fdeba13e820::7fdeba13e820  00 0b 4e ba                                      ..N.
  5407 ms  0x138e privk:0x7fdeba13e820::7fdeba13e820  e5 e5 e5 e5                                      ....
  5407 ms  0x138e PK11_Encrypt()
  5407 ms  0x138e symkey:0x7fdeba12a800
  5408 ms  SECKEY_ECParamsToKeySize()
  5408 ms  0x138e ret:0x100
  5408 ms  SECKEY_ECParamsToBasePointOrderLen()
  5408 ms  0x138e ret:0x100
  5408 ms  SECKEY_ECParamsToBasePointOrderLen()
  5408 ms  0x138e ret:0x100
  5408 ms  0x138e EC_ValidatePublicKey()
  5409 ms  0x138e ret:0x0
  5411 ms  SECKEY_ECParamsToKeySize()
  5411 ms  0x138e ret:0xff
  5411 ms  0x138e SECKEY_CreateECPrivateKey()
  5411 ms  0x138e cx:0x7fdeba90dde8
  5411 ms     | 0x138e EC_ValidatePublicKey()
  5411 ms     | 0x138e ret:0x0
  5411 ms  0x138e ret:0x7fdeba141020::7fdeba141020  40 72 4f ba                                      @rO.
  5411 ms  0x138e PK11_PubDeriveWithKDF()
  5411 ms  0x138e seckey:0x7fdeba141020
  5411 ms     | 0x138e EC_ValidatePublicKey()
  5412 ms     | 0x138e ret:0x0
  5412 ms  0x138e ret:0x7fdecd113500
  5412 ms  0x138e PK11_DeriveWithFlags()
  5412 ms  0x138e basekey:0x7fdecd113500
  5412 ms     | 0x138e PK11_DeriveWithTemplate()
  5412 ms  0x138e ret:0x7fdeba12a900
  5412 ms  0x138e PK11_Derive()
  5412 ms  0x138e basekey:0x7fdeba12a900
  5412 ms     | 0x138e PK11_DeriveWithTemplate()
  5412 ms  0x138e ret:0x7fdeba12a980
  5412 ms  0x138e SECKEY_DestroyPrivateKey()
  5412 ms  0x138e privk:0x7fdeba141020::7fdeba141020  40 72 4f ba                                      @rO.
  5412 ms  0x138e privk:0x7fdeba141020::7fdeba141020  e5 e5 e5 e5                                      ....
  5412 ms  0x138e PK11_Encrypt()
  5412 ms  0x138e symkey:0x7fdeba12ae00
  5412 ms  SECKEY_ECParamsToKeySize()
  5412 ms  0x138e ret:0x100
  5412 ms  SECKEY_ECParamsToBasePointOrderLen()
  5412 ms  0x138e ret:0x100
  5412 ms  SECKEY_ECParamsToBasePointOrderLen()
  5412 ms  0x138e ret:0x100
  5413 ms  0x138e EC_ValidatePublicKey()
  5414 ms  0x138e ret:0x0
  5416 ms  SECKEY_ECParamsToKeySize()
  5416 ms  0x138e ret:0xff
  5416 ms  0x138e SECKEY_CreateECPrivateKey()
  5416 ms  0x138e cx:0x7fdeba90dc48
  5416 ms     | 0x138e EC_ValidatePublicKey()
  5416 ms     | 0x138e ret:0x0
  5416 ms  0x138e ret:0x7fdeba142820::7fdeba142820  e0 72 4f ba                                      .rO.
  5416 ms  0x138e PK11_PubDeriveWithKDF()
  5416 ms  0x138e seckey:0x7fdeba142820
  5416 ms     | 0x138e EC_ValidatePublicKey()
  5416 ms     | 0x138e ret:0x0
  5417 ms  0x138e ret:0x7fdecd113500
  5417 ms  0x138e PK11_DeriveWithFlags()
  5417 ms  0x138e basekey:0x7fdecd113500
  5417 ms     | 0x138e PK11_DeriveWithTemplate()
  5417 ms  0x138e ret:0x7fdeba12af00
  5417 ms  0x138e PK11_Derive()
  5417 ms  0x138e basekey:0x7fdeba12af00
  5417 ms     | 0x138e PK11_DeriveWithTemplate()
  5417 ms  0x138e ret:0x7fdeba12af80
  5417 ms  0x138e SECKEY_DestroyPrivateKey()
  5417 ms  0x138e privk:0x7fdeba142820::7fdeba142820  e0 72 4f ba                                      .rO.
  5417 ms  0x138e privk:0x7fdeba142820::7fdeba142820  e5 e5 e5 e5                                      ....
  5417 ms  0x138e PK11_Encrypt()
  5417 ms  0x138e symkey:0x7fdeba12b100
  5417 ms  SECKEY_ECParamsToKeySize()
  5417 ms  0x138e ret:0x100
  5418 ms  SECKEY_ECParamsToBasePointOrderLen()
  5418 ms  0x138e ret:0x100
  5418 ms  SECKEY_ECParamsToBasePointOrderLen()
  5418 ms  0x138e ret:0x100
  5418 ms  0x138e EC_ValidatePublicKey()
  5419 ms  0x138e ret:0x0
  5421 ms  SECKEY_ECParamsToKeySize()
  5421 ms  0x138e ret:0xff
  5421 ms  0x138e SECKEY_CreateECPrivateKey()
  5421 ms  0x138e cx:0x7fdeba90d908
  5421 ms     | 0x138e EC_ValidatePublicKey()
  5421 ms     | 0x138e ret:0x0
  5421 ms  0x138e ret:0x7fdeba144020::7fdeba144020  d0 73 4f ba                                      .sO.
  5421 ms  0x138e PK11_PubDeriveWithKDF()
  5421 ms  0x138e seckey:0x7fdeba144020
  5421 ms     | 0x138e EC_ValidatePublicKey()
  5421 ms     | 0x138e ret:0x0
  5422 ms  0x138e ret:0x7fdecd113500
  5422 ms  0x138e PK11_DeriveWithFlags()
  5422 ms  0x138e basekey:0x7fdecd113500
  5422 ms     | 0x138e PK11_DeriveWithTemplate()
  5422 ms  0x138e ret:0x7fdeba12b200
  5422 ms  0x138e PK11_Derive()
  5422 ms  0x138e basekey:0x7fdeba12b200
  5422 ms     | 0x138e PK11_DeriveWithTemplate()
  5422 ms  0x138e ret:0x7fdeba12b280
  5422 ms  0x138e SECKEY_DestroyPrivateKey()
  5422 ms  0x138e privk:0x7fdeba144020::7fdeba144020  d0 73 4f ba                                      .sO.
  5422 ms  0x138e privk:0x7fdeba144020::7fdeba144020  e5 e5 e5 e5                                      ....
  5422 ms  0x138e PK11_Encrypt()
  5422 ms  0x138e symkey:0x7fdeba12b400
           /* TID 0x1396 */
  5568 ms  0x1396 PR_Close()
  5568 ms  0x1396 fd:0x7fdeba5cefd0
           /* TID 0x13eb */
  5568 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5569 ms  0x13eb ret:0x0
           /* TID 0x142a */
  6391 ms  SECKEY_ECParamsToBasePointOrderLen()
  6395 ms  0x142a ret:0x180
  6395 ms  SECKEY_ECParamsToBasePointOrderLen()
  6395 ms  0x142a ret:0x180
  6395 ms  0x142a EC_ValidatePublicKey()
           /* TID 0x1428 */
  6397 ms  SECKEY_ECParamsToBasePointOrderLen()
           /* TID 0x138e */
  6397 ms  0x138e SSL_AuthCertificateComplete()
  6397 ms  0x138e fd:0x7fdeba5da640
  6397 ms  0x138e err:0x0
  6397 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6397 ms     | 0x138e privk:0x7fdeba618820::7fdeba618820  d0 8d 9a ba                                      ....
           /* TID 0x1428 */
  6397 ms  0x1428 ret:0x180
  6397 ms  SECKEY_ECParamsToBasePointOrderLen()
  6397 ms  0x1428 ret:0x180
           /* TID 0x142a */
  6403 ms  0x142a ret:0x0
           /* TID 0x138e */
  6403 ms     | 0x138e privk:0x7fdeba618820::7fdeba618820  e5 e5 e5 e5                                      ....
  6403 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6403 ms     | 0x138e privk:0x7fdeba616820::7fdeba616820  b0 8a 9a ba                                      ....
  6403 ms     | 0x138e privk:0x7fdeba616820::7fdeba616820  e5 e5 e5 e5                                      ....
  6404 ms  0x138e PK11_Encrypt()
  6404 ms  0x138e symkey:0x7fdeba12a180
  6404 ms  0x138e PK11_Encrypt()
  6404 ms  0x138e symkey:0x7fdeba12a180
  6405 ms  0x138e PK11_Encrypt()
  6405 ms  0x138e symkey:0x7fdeba12a180
  6405 ms  0x138e PK11_Encrypt()
  6405 ms  0x138e symkey:0x7fdeba12a180
  6405 ms  0x138e PK11_Encrypt()
  6405 ms  0x138e symkey:0x7fdeba12a180
  6406 ms  0x138e PK11_Encrypt()
  6406 ms  0x138e symkey:0x7fdeba12a180
  6406 ms  0x138e PK11_Encrypt()
  6406 ms  0x138e symkey:0x7fdeba12a180
  6407 ms  0x138e PK11_Encrypt()
  6407 ms  0x138e symkey:0x7fdeba12a180
  6407 ms  0x138e PK11_Encrypt()
  6407 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1428 */
  6407 ms  0x1428 EC_ValidatePublicKey()
  6411 ms  0x1428 ret:0x0
           /* TID 0x142a */
  6422 ms  SECKEY_ECParamsToBasePointOrderLen()
  6422 ms  0x142a ret:0x100
  6422 ms  SECKEY_ECParamsToBasePointOrderLen()
  6422 ms  0x142a ret:0x100
  6422 ms  0x142a EC_ValidatePublicKey()
  6425 ms  0x142a ret:0x0
           /* TID 0x1428 */
  6435 ms  SECKEY_ECParamsToBasePointOrderLen()
  6435 ms  0x1428 ret:0x100
  6435 ms  SECKEY_ECParamsToBasePointOrderLen()
  6435 ms  0x1428 ret:0x100
  6435 ms  0x1428 EC_ValidatePublicKey()
  6436 ms  0x1428 ret:0x0
  6439 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6439 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6439 ms     | 0x1428 ret:0x100
  6439 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6439 ms     | 0x1428 ret:0x100
  6439 ms     | 0x1428 EC_ValidatePublicKey()
  6440 ms     | 0x1428 ret:0x0
  6442 ms  0x1428 ret:0x0
           /* TID 0x142a */
  6442 ms  0x142a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6442 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6442 ms     | 0x142a ret:0x100
  6442 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6442 ms     | 0x142a ret:0x100
  6442 ms     | 0x142a EC_ValidatePublicKey()
  6444 ms     | 0x142a ret:0x0
  6446 ms  0x142a ret:0x0
           /* TID 0x138e */
  6446 ms  0x138e SSL_AuthCertificateComplete()
  6446 ms  0x138e fd:0x7fdeba5da430
  6446 ms  0x138e err:0x0
  6446 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6446 ms     | 0x138e privk:0x7fdeba4a6020::7fdeba4a6020  50 fb 48 ba                                      P.H.
  6446 ms     | 0x138e privk:0x7fdeba4a6020::7fdeba4a6020  e5 e5 e5 e5                                      ....
  6446 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6446 ms     | 0x138e privk:0x7fdeba4a4020::7fdeba4a4020  70 f9 48 ba                                      p.H.
  6446 ms     | 0x138e privk:0x7fdeba4a4020::7fdeba4a4020  e5 e5 e5 e5                                      ....
  6446 ms  0x138e PK11_Encrypt()
  6446 ms  0x138e symkey:0x7fdeba12ae00
  6449 ms  0x138e PK11_Encrypt()
  6449 ms  0x138e symkey:0x7fdeba12a180
  6450 ms  0x138e PR_Close()
  6450 ms  0x138e fd:0x7fdeba5da430
  6450 ms     | 0x138e PK11_Encrypt()
  6450 ms     | 0x138e symkey:0x7fdeba12ae00
  6450 ms  0x138e SSL_AuthCertificateComplete()
  6450 ms  0x138e fd:0x7fdeba5da520
  6450 ms  0x138e err:0x0
  6450 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6450 ms     | 0x138e privk:0x7fdeba621820::7fdeba621820  10 f5 48 ba                                      ..H.
  6450 ms     | 0x138e privk:0x7fdeba621820::7fdeba621820  e5 e5 e5 e5                                      ....
  6450 ms     | 0x138e SECKEY_DestroyPrivateKey()
  6450 ms     | 0x138e privk:0x7fdeba61f820::7fdeba61f820  30 f3 48 ba                                      0.H.
  6450 ms     | 0x138e privk:0x7fdeba61f820::7fdeba61f820  e5 e5 e5 e5                                      ....
  6451 ms  0x138e PK11_Encrypt()
  6451 ms  0x138e symkey:0x7fdeba12ad00
  6451 ms  0x138e PK11_Encrypt()
  6451 ms  0x138e symkey:0x7fdeba12a180
  6451 ms  0x138e PR_Close()
  6451 ms  0x138e fd:0x7fdeba5da520
  6451 ms     | 0x138e PK11_Encrypt()
  6451 ms     | 0x138e symkey:0x7fdeba12ad00
           /* TID 0x1396 */
  6460 ms  0x1396 PR_Close()
  6460 ms  0x1396 fd:0x7fdeba5934f0
  6460 ms  0x1396 PR_Close()
  6460 ms  0x1396 fd:0x7fdeba5dae50
  6465 ms  0x1396 PR_Close()
  6465 ms  0x1396 fd:0x7fdeba5934f0
  6466 ms  0x1396 PR_Close()
  6466 ms  0x1396 fd:0x7fdeba593670
  6468 ms  0x1396 PR_Close()
  6468 ms  0x1396 fd:0x7fdeba593490
  6469 ms  0x1396 PR_Close()
  6469 ms  0x1396 fd:0x7fdeba593430
  6471 ms  0x1396 PR_Close()
  6471 ms  0x1396 fd:0x7fdeba593550
  6490 ms  0x1396 PR_Close()
  6490 ms  0x1396 fd:0x7fdeba593430
  6494 ms  0x1396 PR_Close()
  6494 ms  0x1396 fd:0x7fdeba5933a0
           /* TID 0x1428 */
  8401 ms  SECKEY_ECParamsToBasePointOrderLen()
  8402 ms  0x1428 ret:0x180
  8402 ms  SECKEY_ECParamsToBasePointOrderLen()
  8402 ms  0x1428 ret:0x180
  8403 ms  0x1428 EC_ValidatePublicKey()
  8407 ms  0x1428 ret:0x0
           /* TID 0x142a */
  8408 ms  SECKEY_ECParamsToBasePointOrderLen()
  8408 ms  0x142a ret:0x180
  8408 ms  SECKEY_ECParamsToBasePointOrderLen()
  8408 ms  0x142a ret:0x180
  8408 ms  0x142a EC_ValidatePublicKey()
  8412 ms  0x142a ret:0x0
           /* TID 0x138e */
  8414 ms  0x138e SSL_AuthCertificateComplete()
  8414 ms  0x138e fd:0x7fdeba5da5e0
  8414 ms  0x138e err:0x0
  8414 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8414 ms     | 0x138e privk:0x7fdeba61d020::7fdeba61d020  f0 f1 48 ba                                      ..H.
  8414 ms     | 0x138e privk:0x7fdeba61d020::7fdeba61d020  e5 e5 e5 e5                                      ....
  8414 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8414 ms     | 0x138e privk:0x7fdeba61b020::7fdeba61b020  00 51 51 cc                                      .QQ.
  8414 ms     | 0x138e privk:0x7fdeba61b020::7fdeba61b020  e5 e5 e5 e5                                      ....
  8415 ms  0x138e SSL_AuthCertificateComplete()
  8415 ms  0x138e fd:0x7fdeba5cec40
  8415 ms  0x138e err:0x0
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba752b00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdeba12ab80
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba752b00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdeba12ab00
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba752b00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdeba12a980
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba752a00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdeba12a900
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba752a00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdecd113500
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba12ab00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdecd113500
  8415 ms     | 0x138e PK11_DeriveWithFlags()
  8415 ms     | 0x138e basekey:0x7fdeba12ab00
  8415 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8415 ms     | 0x138e ret:0x7fdeba12ac80
  8416 ms     | 0x138e PK11_DeriveWithFlags()
  8416 ms     | 0x138e basekey:0x7fdeba752a00
  8416 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8416 ms     | 0x138e ret:0x7fdeba752b80
  8416 ms     | 0x138e PK11_Encrypt()
  8416 ms     | 0x138e symkey:0x7fdeba12a900
           /* TID 0x142b */
  8416 ms  SECKEY_ECParamsToBasePointOrderLen()
  8416 ms  0x142b ret:0x180
  8416 ms  SECKEY_ECParamsToBasePointOrderLen()
  8416 ms  0x142b ret:0x180
  8416 ms  0x142b EC_ValidatePublicKey()
           /* TID 0x138e */
  8418 ms     | 0x138e PK11_DeriveWithFlags()
  8418 ms     | 0x138e basekey:0x7fdeba12ab80
  8418 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8418 ms     | 0x138e ret:0x7fdeba752b80
  8418 ms     | 0x138e PK11_DeriveWithFlags()
  8418 ms     | 0x138e basekey:0x7fdeba12ab80
  8418 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8418 ms     | 0x138e ret:0x7fdeba12ac80
           /* TID 0x142b */
  8421 ms  0x142b ret:0x0
           /* TID 0x138e */
  8421 ms     | 0x138e PK11_DeriveWithFlags()
  8421 ms     | 0x138e basekey:0x7fdeba752b00
  8421 ms     |    | 0x138e PK11_DeriveWithTemplate()
  8421 ms     | 0x138e ret:0x7fdeba12a900
  8421 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8421 ms     | 0x138e privk:0x7fdeba609820::7fdeba609820  30 63 68 ba                                      0ch.
  8421 ms     | 0x138e privk:0x7fdeba609820::7fdeba609820  e5 e5 e5 e5                                      ....
  8422 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8422 ms     | 0x138e privk:0x7fdeba607820::7fdeba607820  80 a8 66 ba                                      ..f.
  8422 ms     | 0x138e privk:0x7fdeba607820::7fdeba607820  e5 e5 e5 e5                                      ....
  8422 ms  0x138e PK11_Encrypt()
  8422 ms  0x138e symkey:0x7fdeba752b80
  8424 ms  0x138e PK11_Encrypt()
  8424 ms  0x138e symkey:0x7fdeba752b80
  8425 ms  0x138e PK11_Encrypt()
  8425 ms  0x138e symkey:0x7fdeba12a500
  8425 ms  0x138e PK11_Encrypt()
  8425 ms  0x138e symkey:0x7fdeba12a180
  8426 ms  0x138e PR_Close()
  8426 ms  0x138e fd:0x7fdeba5da5e0
  8426 ms     | 0x138e PK11_Encrypt()
  8426 ms     | 0x138e symkey:0x7fdeba12a500
           /* TID 0x142b */
  8440 ms  SECKEY_ECParamsToBasePointOrderLen()
  8440 ms  0x142b ret:0x100
  8440 ms  SECKEY_ECParamsToBasePointOrderLen()
  8440 ms  0x142b ret:0x100
  8440 ms  0x142b EC_ValidatePublicKey()
  8442 ms  0x142b ret:0x0
  8445 ms  0x142b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8445 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8445 ms     | 0x142b ret:0x100
  8445 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8445 ms     | 0x142b ret:0x100
  8445 ms     | 0x142b EC_ValidatePublicKey()
  8449 ms     | 0x142b ret:0x0
           /* TID 0x1428 */
  8449 ms  SECKEY_ECParamsToBasePointOrderLen()
  8449 ms  0x1428 ret:0x100
  8449 ms  SECKEY_ECParamsToBasePointOrderLen()
  8449 ms  0x1428 ret:0x100
  8449 ms  0x1428 EC_ValidatePublicKey()
  8451 ms  0x1428 ret:0x0
           /* TID 0x142a */
  8451 ms  SECKEY_ECParamsToBasePointOrderLen()
  8451 ms  0x142a ret:0x100
  8451 ms  SECKEY_ECParamsToBasePointOrderLen()
  8451 ms  0x142a ret:0x100
  8451 ms  0x142a EC_ValidatePublicKey()
  8453 ms  0x142a ret:0x0
           /* TID 0x138e */
  8454 ms  0x138e PK11_DeriveWithFlags()
  8454 ms  0x138e basekey:0x7fdeba12a900
  8454 ms     | 0x138e PK11_DeriveWithTemplate()
  8454 ms  0x138e ret:0x7fdeba12a380
  8454 ms  0x138e PK11_DeriveWithFlags()
  8454 ms  0x138e basekey:0x7fdeba12a900
  8454 ms     | 0x138e PK11_DeriveWithTemplate()
  8454 ms  0x138e ret:0x7fdeba12a380
  8454 ms  0x138e PK11_Encrypt()
  8454 ms  0x138e symkey:0x7fdeba752b80
           /* TID 0x142a */
  8459 ms  0x142a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8459 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8459 ms     | 0x142a ret:0x100
  8459 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8459 ms     | 0x142a ret:0x100
  8459 ms     | 0x142a EC_ValidatePublicKey()
  8461 ms     | 0x142a ret:0x0
  8463 ms  0x142a ret:0x0
           /* TID 0x1428 */
  8465 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8465 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8465 ms     | 0x1428 ret:0x100
  8465 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8465 ms     | 0x1428 ret:0x100
  8465 ms     | 0x1428 EC_ValidatePublicKey()
  8469 ms     | 0x1428 ret:0x0
           /* TID 0x142b */
  8471 ms  0x142b ret:0x0
           /* TID 0x1428 */
  8471 ms  0x1428 ret:0x0
           /* TID 0x138e */
  8471 ms  0x138e SSL_AuthCertificateComplete()
  8471 ms  0x138e fd:0x7fdeba5da910
  8471 ms  0x138e err:0x0
  8471 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8471 ms     | 0x138e privk:0x7fdeba4af020::7fdeba4af020  f0 01 4e ba                                      ..N.
  8471 ms     | 0x138e privk:0x7fdeba4af020::7fdeba4af020  e5 e5 e5 e5                                      ....
  8471 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8471 ms     | 0x138e privk:0x7fdeba4ad020::7fdeba4ad020  b0 ff 48 ba                                      ..H.
  8471 ms     | 0x138e privk:0x7fdeba4ad020::7fdeba4ad020  e5 e5 e5 e5                                      ....
  8472 ms  0x138e PK11_Encrypt()
  8472 ms  0x138e symkey:0x7fdeba12b400
  8472 ms  0x138e PK11_Encrypt()
  8472 ms  0x138e symkey:0x7fdeba12b400
  8472 ms  0x138e PK11_Encrypt()
  8472 ms  0x138e symkey:0x7fdeba12b400
  8473 ms  0x138e SSL_AuthCertificateComplete()
  8473 ms  0x138e fd:0x7fdeba5da460
  8473 ms  0x138e err:0x0
  8474 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8474 ms     | 0x138e privk:0x7fdeba4a1820::7fdeba4a1820  30 f8 48 ba                                      0.H.
  8474 ms     | 0x138e privk:0x7fdeba4a1820::7fdeba4a1820  e5 e5 e5 e5                                      ....
  8474 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8474 ms     | 0x138e privk:0x7fdeba49f820::7fdeba49f820  50 f6 48 ba                                      P.H.
  8474 ms     | 0x138e privk:0x7fdeba49f820::7fdeba49f820  e5 e5 e5 e5                                      ....
  8474 ms  0x138e PK11_Encrypt()
  8474 ms  0x138e symkey:0x7fdeba12a800
  8474 ms  0x138e PK11_Encrypt()
  8474 ms  0x138e symkey:0x7fdeba12a180
  8476 ms  0x138e PR_Close()
  8476 ms  0x138e fd:0x7fdeba5da460
  8476 ms     | 0x138e PK11_Encrypt()
  8476 ms     | 0x138e symkey:0x7fdeba12a800
  8476 ms  0x138e SSL_AuthCertificateComplete()
  8476 ms  0x138e fd:0x7fdeba5da9a0
  8476 ms  0x138e err:0x0
  8476 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8476 ms     | 0x138e privk:0x7fdeba4aa820::7fdeba4aa820  70 fe 48 ba                                      p.H.
  8476 ms     | 0x138e privk:0x7fdeba4aa820::7fdeba4aa820  e5 e5 e5 e5                                      ....
  8476 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8476 ms     | 0x138e privk:0x7fdeba4a8820::7fdeba4a8820  90 fc 48 ba                                      ..H.
  8476 ms     | 0x138e privk:0x7fdeba4a8820::7fdeba4a8820  e5 e5 e5 e5                                      ....
  8477 ms  0x138e PK11_Encrypt()
  8477 ms  0x138e symkey:0x7fdeba12b100
  8477 ms  0x138e PK11_Encrypt()
  8477 ms  0x138e symkey:0x7fdeba12a180
  8477 ms  0x138e PR_Close()
  8477 ms  0x138e fd:0x7fdeba5da9a0
  8477 ms     | 0x138e PK11_Encrypt()
  8477 ms     | 0x138e symkey:0x7fdeba12b100
           /* TID 0x1396 */
  8499 ms  0x1396 PR_Close()
  8499 ms  0x1396 fd:0x7fdeba593c70
  8507 ms  0x1396 PR_Close()
  8507 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8514 ms  0x138e PK11_Encrypt()
  8514 ms  0x138e symkey:0x7fdeba752b80
           /* TID 0x1396 */
  8515 ms  0x1396 PR_Close()
  8515 ms  0x1396 fd:0x7fdeba5ce8e0
           /* TID 0x138e */
  8517 ms  0x138e SSL_ImportFD()
  8517 ms  0x138e ret:0x7fdeba5dad60
  8517 ms  0x138e SSL_AuthCertificateHook()
  8517 ms  0x138e fd:0x7fdeba5dad60
  8517 ms  0x138e ret:0x0
  8517 ms  SECKEY_ECParamsToBasePointOrderLen()
  8517 ms  0x138e ret:0x180
  8517 ms  SECKEY_ECParamsToBasePointOrderLen()
  8517 ms  0x138e ret:0x180
  8517 ms  0x138e EC_ValidatePublicKey()
  8519 ms  0x138e ret:0x0
  8522 ms  SECKEY_ECParamsToBasePointOrderLen()
  8522 ms  0x138e ret:0x100
  8522 ms  SECKEY_ECParamsToBasePointOrderLen()
  8522 ms  0x138e ret:0x100
  8523 ms  0x138e EC_ValidatePublicKey()
  8524 ms  0x138e ret:0x0
  8526 ms  0x138e PK11_Encrypt()
  8526 ms  0x138e symkey:0x7fdeba12a180
  8527 ms  0x138e PK11_Encrypt()
  8527 ms  0x138e symkey:0x7fdeba12a180
  8527 ms  0x138e PK11_Encrypt()
  8527 ms  0x138e symkey:0x7fdeba12a180
  8528 ms  0x138e PK11_Encrypt()
  8528 ms  0x138e symkey:0x7fdeba12a180
  8528 ms  0x138e PK11_Encrypt()
  8528 ms  0x138e symkey:0x7fdeba12a180
  8529 ms  0x138e PK11_Encrypt()
  8529 ms  0x138e symkey:0x7fdeba12a180
  8529 ms  0x138e PK11_Encrypt()
  8529 ms  0x138e symkey:0x7fdeba12a180
  8529 ms  0x138e PK11_Encrypt()
  8529 ms  0x138e symkey:0x7fdeba12a180
  8530 ms  0x138e PK11_Encrypt()
  8530 ms  0x138e symkey:0x7fdeba12a180
  8530 ms  0x138e PK11_Encrypt()
  8530 ms  0x138e symkey:0x7fdeba12a180
  8530 ms  0x138e PK11_Encrypt()
  8530 ms  0x138e symkey:0x7fdeba12a180
  8530 ms  0x138e PK11_Encrypt()
  8530 ms  0x138e symkey:0x7fdeba12a180
  8531 ms  0x138e PK11_Encrypt()
  8531 ms  0x138e symkey:0x7fdeba12a180
  8531 ms  0x138e PK11_Encrypt()
  8531 ms  0x138e symkey:0x7fdeba12a180
  8531 ms  0x138e PK11_Encrypt()
  8531 ms  0x138e symkey:0x7fdeba12a180
  8532 ms  0x138e PK11_Encrypt()
  8532 ms  0x138e symkey:0x7fdeba12a180
  8532 ms  0x138e PK11_Encrypt()
  8532 ms  0x138e symkey:0x7fdeba12a180
  8532 ms  0x138e PK11_Encrypt()
  8532 ms  0x138e symkey:0x7fdeba12a180
  8532 ms  0x138e PK11_Encrypt()
  8532 ms  0x138e symkey:0x7fdeba12a180
  8533 ms  0x138e PK11_Encrypt()
  8533 ms  0x138e symkey:0x7fdeba12a180
  8533 ms  0x138e PK11_Encrypt()
  8533 ms  0x138e symkey:0x7fdeba12a180
  8533 ms  0x138e PK11_Encrypt()
  8533 ms  0x138e symkey:0x7fdeba12a180
  8533 ms  0x138e PK11_Encrypt()
  8533 ms  0x138e symkey:0x7fdeba12a180
  8534 ms  0x138e PK11_Encrypt()
  8534 ms  0x138e symkey:0x7fdeba12a180
  8534 ms  0x138e PK11_Encrypt()
  8534 ms  0x138e symkey:0x7fdeba12a180
  8534 ms  0x138e PK11_Encrypt()
  8534 ms  0x138e symkey:0x7fdeba12a180
  8535 ms  0x138e PK11_Encrypt()
  8535 ms  0x138e symkey:0x7fdeba12a180
  8535 ms  0x138e PK11_Encrypt()
  8535 ms  0x138e symkey:0x7fdeba12a180
  8535 ms  0x138e PK11_Encrypt()
  8535 ms  0x138e symkey:0x7fdeba12a180
  8535 ms  0x138e PK11_Encrypt()
  8535 ms  0x138e symkey:0x7fdeba12a180
  8536 ms  0x138e PK11_Encrypt()
  8536 ms  0x138e symkey:0x7fdeba12a180
  8536 ms  0x138e PK11_Encrypt()
  8536 ms  0x138e symkey:0x7fdeba12a180
  8536 ms  0x138e PK11_Encrypt()
  8536 ms  0x138e symkey:0x7fdeba12a180
  8536 ms  0x138e PK11_Encrypt()
  8536 ms  0x138e symkey:0x7fdeba12a180
  8537 ms  0x138e PK11_Encrypt()
  8537 ms  0x138e symkey:0x7fdeba12a180
  8537 ms  0x138e PK11_Encrypt()
  8537 ms  0x138e symkey:0x7fdeba12a180
  8537 ms  0x138e PK11_Encrypt()
  8537 ms  0x138e symkey:0x7fdeba12a180
  8537 ms  0x138e PK11_Encrypt()
  8537 ms  0x138e symkey:0x7fdeba12a180
  8538 ms  0x138e PK11_Encrypt()
  8538 ms  0x138e symkey:0x7fdeba12a180
  8538 ms  0x138e PK11_Encrypt()
  8538 ms  0x138e symkey:0x7fdeba12a180
  8538 ms  0x138e PK11_Encrypt()
  8538 ms  0x138e symkey:0x7fdeba12a180
  8538 ms  0x138e PK11_Encrypt()
  8538 ms  0x138e symkey:0x7fdeba12a180
  8539 ms  0x138e PK11_Encrypt()
  8539 ms  0x138e symkey:0x7fdeba12a180
  8539 ms  0x138e PR_Connect()
  8539 ms  0x138e fd:0x7fdeba5dad60
  8539 ms  0x138e SSL_ImportFD()
  8539 ms  0x138e ret:0x7fdeba593c70
  8539 ms  0x138e SSL_AuthCertificateHook()
  8539 ms  0x138e fd:0x7fdeba593c70
  8539 ms  0x138e ret:0x0
  8539 ms  0x138e PR_Connect()
  8539 ms  0x138e fd:0x7fdeba593c70
  8540 ms  0x138e SSL_ImportFD()
  8540 ms  0x138e ret:0x7fdeba5dac70
  8540 ms  0x138e SSL_AuthCertificateHook()
  8540 ms  0x138e fd:0x7fdeba5dac70
  8540 ms  0x138e ret:0x0
  8540 ms  0x138e PR_Connect()
  8540 ms  0x138e fd:0x7fdeba5dac70
  8540 ms  0x138e SSL_ImportFD()
  8540 ms  0x138e ret:0x7fdeba5daf10
  8540 ms  0x138e SSL_AuthCertificateHook()
  8540 ms  0x138e fd:0x7fdeba5daf10
  8540 ms  0x138e ret:0x0
  8540 ms  0x138e PR_Connect()
  8540 ms  0x138e fd:0x7fdeba5daf10
  8540 ms  0x138e SSL_ImportFD()
  8540 ms  0x138e ret:0x7fdeba5da460
  8540 ms  0x138e SSL_AuthCertificateHook()
  8540 ms  0x138e fd:0x7fdeba5da460
  8540 ms  0x138e ret:0x0
  8540 ms  0x138e PR_Connect()
  8540 ms  0x138e fd:0x7fdeba5da460
  8541 ms  0x138e SSL_ImportFD()
  8541 ms  0x138e ret:0x7fdeba5da9a0
  8541 ms  0x138e SSL_AuthCertificateHook()
  8541 ms  0x138e fd:0x7fdeba5da9a0
  8541 ms  0x138e ret:0x0
  8541 ms  0x138e PR_Connect()
  8541 ms  0x138e fd:0x7fdeba5da9a0
           /* TID 0x1396 */
  8543 ms  0x1396 PR_Close()
  8543 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8550 ms  0x138e PK11_Encrypt()
  8550 ms  0x138e symkey:0x7fdeba12a180
  8551 ms  0x138e PK11_Encrypt()
  8551 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8566 ms  0x1396 PR_Close()
  8566 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8567 ms  0x138e PK11_Encrypt()
  8567 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8569 ms  0x1396 PR_Close()
  8569 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8570 ms  0x138e PK11_Encrypt()
  8570 ms  0x138e symkey:0x7fdeba12a180
  8570 ms  0x138e PK11_Encrypt()
  8570 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8571 ms  0x1396 PR_Close()
  8571 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8572 ms  0x138e SECKEY_CreateECPrivateKey()
  8572 ms  0x138e cx:0x7fdeba90fcc8
  8572 ms     | 0x138e EC_ValidatePublicKey()
  8572 ms     | 0x138e ret:0x0
  8572 ms  0x138e ret:0x7fdeba4b9820::7fdeba4b9820  00 f6 48 ba                                      ..H.
  8574 ms  0x138e SECKEY_CreateECPrivateKey()
  8574 ms  0x138e cx:0x7fdeba90fcc8
  8574 ms     | 0x138e EC_ValidatePublicKey()
  8576 ms     | 0x138e ret:0x0
  8576 ms  0x138e ret:0x7fdeba4bd820::7fdeba4bd820  e0 f7 48 ba                                      ..H.
  8579 ms  0x138e SECKEY_CreateECPrivateKey()
  8579 ms  0x138e cx:0x7fdeba90fb28
  8582 ms     | 0x138e EC_ValidatePublicKey()
  8582 ms     | 0x138e ret:0x0
  8582 ms  0x138e ret:0x7fdeba53e820::7fdeba53e820  c0 f9 48 ba                                      ..H.
  8582 ms  0x138e SECKEY_CreateECPrivateKey()
  8582 ms  0x138e cx:0x7fdeba90fb28
  8582 ms     | 0x138e EC_ValidatePublicKey()
  8584 ms     | 0x138e ret:0x0
  8584 ms  0x138e ret:0x7fdeba606820::7fdeba606820  e0 fc 48 ba                                      ..H.
  8593 ms  0x138e SECKEY_CreateECPrivateKey()
  8593 ms  0x138e cx:0x7fdeba90f988
  8594 ms     | 0x138e EC_ValidatePublicKey()
  8594 ms     | 0x138e ret:0x0
  8594 ms  0x138e ret:0x7fdeba609820::7fdeba609820  b0 ff 48 ba                                      ..H.
  8594 ms  0x138e SECKEY_CreateECPrivateKey()
  8594 ms  0x138e cx:0x7fdeba90f988
  8594 ms     | 0x138e EC_ValidatePublicKey()
  8596 ms     | 0x138e ret:0x0
  8596 ms  0x138e ret:0x7fdeba611820::7fdeba611820  a0 0b 4e ba                                      ..N.
  8596 ms  0x138e SECKEY_CreateECPrivateKey()
  8596 ms  0x138e cx:0x7fdeba90f7e8
  8597 ms     | 0x138e EC_ValidatePublicKey()
  8597 ms     | 0x138e ret:0x0
  8597 ms  0x138e ret:0x7fdeba616820::7fdeba616820  10 0f 4e ba                                      ..N.
  8597 ms  0x138e SECKEY_CreateECPrivateKey()
  8597 ms  0x138e cx:0x7fdeba90f7e8
  8598 ms     | 0x138e EC_ValidatePublicKey()
  8599 ms     | 0x138e ret:0x0
  8599 ms  0x138e ret:0x7fdeba618820::7fdeba618820  70 74 4f ba                                      ptO.
  8603 ms  0x138e SECKEY_CreateECPrivateKey()
  8603 ms  0x138e cx:0x7fdeba90e128
  8604 ms     | 0x138e EC_ValidatePublicKey()
  8604 ms     | 0x138e ret:0x0
  8604 ms  0x138e ret:0x7fdeba61c020::7fdeba61c020  a0 d1 5a ba                                      ..Z.
  8604 ms  0x138e SECKEY_CreateECPrivateKey()
  8604 ms  0x138e cx:0x7fdeba90e128
  8607 ms     | 0x138e EC_ValidatePublicKey()
  8617 ms     | 0x138e ret:0x0
  8617 ms  0x138e ret:0x7fdeba61f020::7fdeba61f020  d0 d3 5a ba                                      ..Z.
  8619 ms  0x138e SECKEY_CreateECPrivateKey()
  8619 ms  0x138e cx:0x7fdeba90dc48
  8620 ms     | 0x138e EC_ValidatePublicKey()
  8620 ms     | 0x138e ret:0x0
  8620 ms  0x138e ret:0x7fdeba621820::7fdeba621820  10 d5 5a ba                                      ..Z.
  8620 ms  0x138e SECKEY_CreateECPrivateKey()
  8620 ms  0x138e cx:0x7fdeba90dc48
  8620 ms     | 0x138e EC_ValidatePublicKey()
  8622 ms     | 0x138e ret:0x0
  8622 ms  0x138e ret:0x7fdeba896820::7fdeba896820  70 d9 5a ba                                      p.Z.
  8622 ms  0x138e PK11_Encrypt()
  8622 ms  0x138e symkey:0x7fdeba12a180
  8623 ms  0x138e PK11_Encrypt()
  8623 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8625 ms  0x1396 PR_Close()
  8625 ms  0x1396 fd:0x7fdeba5935b0
           /* TID 0x1429 */
  8625 ms  SECKEY_ECParamsToBasePointOrderLen()
  8625 ms  0x1429 ret:0x180
  8625 ms  SECKEY_ECParamsToBasePointOrderLen()
  8625 ms  0x1429 ret:0x180
  8625 ms  0x1429 EC_ValidatePublicKey()
  8627 ms  0x1429 ret:0x0
           /* TID 0x138e */
  8629 ms  SECKEY_ECParamsToKeySize()
  8629 ms  0x138e ret:0x100
  8629 ms  SECKEY_ECParamsToBasePointOrderLen()
  8629 ms  0x138e ret:0x100
  8629 ms  SECKEY_ECParamsToBasePointOrderLen()
  8629 ms  0x138e ret:0x100
  8629 ms  0x138e EC_ValidatePublicKey()
  8632 ms  0x138e ret:0x0
  8634 ms  SECKEY_ECParamsToKeySize()
  8634 ms  0x138e ret:0xff
  8634 ms  0x138e SECKEY_CreateECPrivateKey()
  8634 ms  0x138e cx:0x7fdeba90fcc8
  8635 ms     | 0x138e EC_ValidatePublicKey()
  8635 ms     | 0x138e ret:0x0
  8635 ms  0x138e ret:0x7fdeba988820::7fdeba988820  00 e1 65 ba                                      ..e.
  8635 ms  0x138e PK11_PubDeriveWithKDF()
  8635 ms  0x138e seckey:0x7fdeba988820
  8635 ms     | 0x138e EC_ValidatePublicKey()
  8635 ms     | 0x138e ret:0x0
  8635 ms  0x138e ret:0x7fdeba12af80
  8635 ms  0x138e PK11_DeriveWithFlags()
  8635 ms  0x138e basekey:0x7fdeba12af80
  8635 ms     | 0x138e PK11_DeriveWithTemplate()
  8635 ms  0x138e ret:0x7fdeba12af00
  8635 ms  0x138e PK11_Derive()
  8635 ms  0x138e basekey:0x7fdeba12af00
  8635 ms     | 0x138e PK11_DeriveWithTemplate()
  8635 ms  0x138e ret:0x7fdeba12a680
  8635 ms  0x138e SECKEY_DestroyPrivateKey()
  8635 ms  0x138e privk:0x7fdeba988820::7fdeba988820  00 e1 65 ba                                      ..e.
  8635 ms  0x138e privk:0x7fdeba988820::7fdeba988820  e5 e5 e5 e5                                      ....
  8636 ms  0x138e PK11_Encrypt()
  8636 ms  0x138e symkey:0x7fdeba12b000
           /* TID 0x1429 */
  8639 ms  SECKEY_ECParamsToBasePointOrderLen()
  8639 ms  0x1429 ret:0x100
  8639 ms  SECKEY_ECParamsToBasePointOrderLen()
  8639 ms  0x1429 ret:0x100
  8639 ms  0x1429 EC_ValidatePublicKey()
  8641 ms  0x1429 ret:0x0
  8643 ms  0x1429 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8643 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8643 ms     | 0x1429 ret:0x100
  8643 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8643 ms     | 0x1429 ret:0x100
  8643 ms     | 0x1429 EC_ValidatePublicKey()
           /* TID 0x138e */
  8649 ms  SECKEY_ECParamsToKeySize()
  8649 ms  0x138e ret:0x100
  8649 ms  SECKEY_ECParamsToBasePointOrderLen()
  8649 ms  0x138e ret:0x100
  8649 ms  SECKEY_ECParamsToBasePointOrderLen()
  8649 ms  0x138e ret:0x100
           /* TID 0x1429 */
  8650 ms     | 0x1429 ret:0x0
           /* TID 0x13eb */
  8650 ms  SECKEY_ECParamsToBasePointOrderLen()
  8650 ms  0x13eb ret:0x180
  8650 ms  SECKEY_ECParamsToBasePointOrderLen()
  8650 ms  0x13eb ret:0x180
  8650 ms  0x13eb EC_ValidatePublicKey()
  8652 ms  0x13eb ret:0x0
           /* TID 0x138e */
  8652 ms  0x138e EC_ValidatePublicKey()
  8654 ms  0x138e ret:0x0
  8656 ms  SECKEY_ECParamsToKeySize()
  8656 ms  0x138e ret:0xff
  8656 ms  0x138e SECKEY_CreateECPrivateKey()
  8656 ms  0x138e cx:0x7fdeba90fb28
  8656 ms     | 0x138e EC_ValidatePublicKey()
  8656 ms     | 0x138e ret:0x0
  8656 ms  0x138e ret:0x7fdeba990820::7fdeba990820  50 e6 65 ba                                      P.e.
  8656 ms  0x138e PK11_PubDeriveWithKDF()
  8656 ms  0x138e seckey:0x7fdeba990820
  8656 ms     | 0x138e EC_ValidatePublicKey()
  8656 ms     | 0x138e ret:0x0
  8657 ms  0x138e ret:0x7fdeba12af80
  8657 ms  0x138e PK11_DeriveWithFlags()
  8657 ms  0x138e basekey:0x7fdeba12af80
  8657 ms     | 0x138e PK11_DeriveWithTemplate()
  8657 ms  0x138e ret:0x7fdeba12a600
  8657 ms  0x138e PK11_Derive()
  8657 ms  0x138e basekey:0x7fdeba12a600
  8657 ms     | 0x138e PK11_DeriveWithTemplate()
  8657 ms  0x138e ret:0x7fdeba12a380
  8657 ms  0x138e SECKEY_DestroyPrivateKey()
  8657 ms  0x138e privk:0x7fdeba990820::7fdeba990820  50 e6 65 ba                                      P.e.
  8657 ms  0x138e privk:0x7fdeba990820::7fdeba990820  e5 e5 e5 e5                                      ....
  8657 ms  0x138e PK11_Encrypt()
  8657 ms  0x138e symkey:0x7fdeba12a700
           /* TID 0x13eb */
  8660 ms  SECKEY_ECParamsToBasePointOrderLen()
  8660 ms  0x13eb ret:0x100
  8660 ms  SECKEY_ECParamsToBasePointOrderLen()
  8660 ms  0x13eb ret:0x100
  8660 ms  0x13eb EC_ValidatePublicKey()
           /* TID 0x138e */
  8668 ms  0x138e PK11_Encrypt()
  8668 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8669 ms  0x1396 PR_Close()
  8669 ms  0x1396 fd:0x7fdeba5937c0
           /* TID 0x13eb */
  8671 ms  0x13eb ret:0x0
           /* TID 0x1429 */
  8671 ms  0x1429 ret:0x0
           /* TID 0x142b */
  8671 ms  SECKEY_ECParamsToBasePointOrderLen()
  8671 ms  0x142b ret:0x180
  8671 ms  SECKEY_ECParamsToBasePointOrderLen()
  8671 ms  0x142b ret:0x180
  8671 ms  0x142b EC_ValidatePublicKey()
  8673 ms  0x142b ret:0x0
           /* TID 0x138e */
  8679 ms  SECKEY_ECParamsToKeySize()
  8679 ms  0x138e ret:0x100
  8679 ms  SECKEY_ECParamsToBasePointOrderLen()
  8679 ms  0x138e ret:0x100
  8679 ms  SECKEY_ECParamsToBasePointOrderLen()
  8679 ms  0x138e ret:0x100
  8679 ms  0x138e EC_ValidatePublicKey()
  8681 ms  0x138e ret:0x0
           /* TID 0x13eb */
  8684 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8684 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8684 ms     | 0x13eb ret:0x100
  8684 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8684 ms     | 0x13eb ret:0x100
  8684 ms     | 0x13eb EC_ValidatePublicKey()
  8686 ms     | 0x13eb ret:0x0
           /* TID 0x142b */
  8688 ms  SECKEY_ECParamsToBasePointOrderLen()
  8688 ms  0x142b ret:0x100
  8688 ms  SECKEY_ECParamsToBasePointOrderLen()
  8688 ms  0x142b ret:0x100
  8688 ms  0x142b EC_ValidatePublicKey()
  8690 ms  0x142b ret:0x0
  8692 ms  0x142b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8692 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8692 ms     | 0x142b ret:0x100
  8692 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8692 ms     | 0x142b ret:0x100
  8692 ms     | 0x142b EC_ValidatePublicKey()
  8698 ms     | 0x142b ret:0x0
           /* TID 0x138e */
  8699 ms  SECKEY_ECParamsToKeySize()
  8699 ms  0x138e ret:0xff
  8699 ms  0x138e SECKEY_CreateECPrivateKey()
  8699 ms  0x138e cx:0x7fdeba90f988
  8699 ms     | 0x138e EC_ValidatePublicKey()
  8699 ms     | 0x138e ret:0x0
  8699 ms  0x138e ret:0x7fdeba98e020::7fdeba98e020  a0 e6 65 ba                                      ..e.
  8699 ms  0x138e PK11_PubDeriveWithKDF()
  8699 ms  0x138e seckey:0x7fdeba98e020
  8699 ms     | 0x138e EC_ValidatePublicKey()
  8699 ms     | 0x138e ret:0x0
  8700 ms  0x138e ret:0x7fdeba12af80
  8700 ms  0x138e PK11_DeriveWithFlags()
  8700 ms  0x138e basekey:0x7fdeba12af80
  8700 ms     | 0x138e PK11_DeriveWithTemplate()
  8700 ms  0x138e ret:0x7fdeba12a300
  8700 ms  0x138e PK11_Derive()
  8700 ms  0x138e basekey:0x7fdeba12a300
  8700 ms     | 0x138e PK11_DeriveWithTemplate()
  8700 ms  0x138e ret:0x7fdeba752a80
  8700 ms  0x138e SECKEY_DestroyPrivateKey()
  8700 ms  0x138e privk:0x7fdeba98e020::7fdeba98e020  a0 e6 65 ba                                      ..e.
  8700 ms  0x138e privk:0x7fdeba98e020::7fdeba98e020  e5 e5 e5 e5                                      ....
  8700 ms  0x138e PK11_Encrypt()
  8700 ms  0x138e symkey:0x7fdeba12a400
           /* TID 0x1428 */
  8701 ms  SECKEY_ECParamsToBasePointOrderLen()
  8701 ms  0x1428 ret:0x180
  8701 ms  SECKEY_ECParamsToBasePointOrderLen()
  8701 ms  0x1428 ret:0x180
  8701 ms  0x1428 EC_ValidatePublicKey()
  8702 ms  0x1428 ret:0x0
  8705 ms  SECKEY_ECParamsToBasePointOrderLen()
  8705 ms  0x1428 ret:0x100
  8705 ms  SECKEY_ECParamsToBasePointOrderLen()
  8705 ms  0x1428 ret:0x100
  8705 ms  0x1428 EC_ValidatePublicKey()
  8707 ms  0x1428 ret:0x0
           /* TID 0x138e */
  8708 ms  SECKEY_ECParamsToKeySize()
  8708 ms  0x138e ret:0x100
  8708 ms  SECKEY_ECParamsToBasePointOrderLen()
  8708 ms  0x138e ret:0x100
  8708 ms  SECKEY_ECParamsToBasePointOrderLen()
  8708 ms  0x138e ret:0x100
  8708 ms  0x138e EC_ValidatePublicKey()
  8710 ms  0x138e ret:0x0
           /* TID 0x13eb */
  8710 ms  0x13eb ret:0x0
           /* TID 0x142b */
  8712 ms  0x142b ret:0x0
           /* TID 0x138e */
  8715 ms  SECKEY_ECParamsToKeySize()
  8715 ms  0x138e ret:0xff
  8715 ms  0x138e SECKEY_CreateECPrivateKey()
  8715 ms  0x138e cx:0x7fdeba90f7e8
  8716 ms     | 0x138e EC_ValidatePublicKey()
  8716 ms     | 0x138e ret:0x0
  8716 ms  0x138e ret:0x7fdeba8af020::7fdeba8af020  b0 ba 5f ba                                      .._.
  8716 ms  0x138e PK11_PubDeriveWithKDF()
  8716 ms  0x138e seckey:0x7fdeba8af020
  8716 ms     | 0x138e EC_ValidatePublicKey()
  8716 ms     | 0x138e ret:0x0
  8716 ms  0x138e ret:0x7fdeba12af80
  8716 ms  0x138e PK11_DeriveWithFlags()
  8716 ms  0x138e basekey:0x7fdeba12af80
  8716 ms     | 0x138e PK11_DeriveWithTemplate()
  8716 ms  0x138e ret:0x7fdeba752a00
  8716 ms  0x138e PK11_Derive()
  8716 ms  0x138e basekey:0x7fdeba752a00
  8716 ms     | 0x138e PK11_DeriveWithTemplate()
  8716 ms  0x138e ret:0x7fdeba752b00
  8716 ms  0x138e SECKEY_DestroyPrivateKey()
  8716 ms  0x138e privk:0x7fdeba8af020::7fdeba8af020  b0 ba 5f ba                                      .._.
  8716 ms  0x138e privk:0x7fdeba8af020::7fdeba8af020  e5 e5 e5 e5                                      ....
  8716 ms  0x138e PK11_Encrypt()
  8716 ms  0x138e symkey:0x7fdeba12ad00
           /* TID 0x1428 */
  8725 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8725 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8725 ms     | 0x1428 ret:0x100
  8725 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8725 ms     | 0x1428 ret:0x100
  8725 ms     | 0x1428 EC_ValidatePublicKey()
           /* TID 0x138e */
  8726 ms  SECKEY_ECParamsToKeySize()
  8726 ms  0x138e ret:0x100
  8726 ms  SECKEY_ECParamsToBasePointOrderLen()
  8726 ms  0x138e ret:0x100
  8726 ms  SECKEY_ECParamsToBasePointOrderLen()
  8726 ms  0x138e ret:0x100
           /* TID 0x1428 */
  8728 ms     | 0x1428 ret:0x0
           /* TID 0x1429 */
  8728 ms  SECKEY_ECParamsToBasePointOrderLen()
  8728 ms  0x1429 ret:0x180
  8728 ms  SECKEY_ECParamsToBasePointOrderLen()
  8728 ms  0x1429 ret:0x180
  8728 ms  0x1429 EC_ValidatePublicKey()
  8730 ms  0x1429 ret:0x0
  8732 ms  SECKEY_ECParamsToBasePointOrderLen()
  8733 ms  0x1429 ret:0x100
  8733 ms  SECKEY_ECParamsToBasePointOrderLen()
  8733 ms  0x1429 ret:0x100
  8733 ms  0x1429 EC_ValidatePublicKey()
  8734 ms  0x1429 ret:0x0
  8736 ms  0x1429 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8736 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8736 ms     | 0x1429 ret:0x100
  8736 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8736 ms     | 0x1429 ret:0x100
  8736 ms     | 0x1429 EC_ValidatePublicKey()
  8752 ms     | 0x1429 ret:0x0
           /* TID 0x138e */
  8752 ms  0x138e EC_ValidatePublicKey()
  8754 ms  0x138e ret:0x0
           /* TID 0x1428 */
  8754 ms  0x1428 ret:0x0
           /* TID 0x138e */
  8756 ms  SECKEY_ECParamsToKeySize()
  8756 ms  0x138e ret:0xff
  8756 ms  0x138e SECKEY_CreateECPrivateKey()
  8756 ms  0x138e cx:0x7fdeba90e128
  8756 ms     | 0x138e EC_ValidatePublicKey()
  8756 ms     | 0x138e ret:0x0
  8756 ms  0x138e ret:0x7fdeba8af020::7fdeba8af020  90 e2 65 ba                                      ..e.
  8756 ms  0x138e PK11_PubDeriveWithKDF()
  8756 ms  0x138e seckey:0x7fdeba8af020
  8757 ms     | 0x138e EC_ValidatePublicKey()
  8757 ms     | 0x138e ret:0x0
  8757 ms  0x138e ret:0x7fdeba12af80
  8757 ms  0x138e PK11_DeriveWithFlags()
  8757 ms  0x138e basekey:0x7fdeba12af80
  8757 ms     | 0x138e PK11_DeriveWithTemplate()
  8757 ms  0x138e ret:0x7fdeba12ac80
  8757 ms  0x138e PK11_Derive()
  8757 ms  0x138e basekey:0x7fdeba12ac80
  8757 ms     | 0x138e PK11_DeriveWithTemplate()
  8757 ms  0x138e ret:0x7fdeba12ae80
  8757 ms  0x138e SECKEY_DestroyPrivateKey()
  8757 ms  0x138e privk:0x7fdeba8af020::7fdeba8af020  90 e2 65 ba                                      ..e.
  8757 ms  0x138e privk:0x7fdeba8af020::7fdeba8af020  e5 e5 e5 e5                                      ....
  8757 ms  0x138e PK11_Encrypt()
  8757 ms  0x138e symkey:0x7fdeba91ea00
           /* TID 0x1429 */
  8760 ms  0x1429 ret:0x0
           /* TID 0x13eb */
  8763 ms  SECKEY_ECParamsToBasePointOrderLen()
  8763 ms  0x13eb ret:0x180
  8763 ms  SECKEY_ECParamsToBasePointOrderLen()
  8763 ms  0x13eb ret:0x180
  8763 ms  0x13eb EC_ValidatePublicKey()
  8765 ms  0x13eb ret:0x0
           /* TID 0x138e */
  8767 ms  SECKEY_ECParamsToKeySize()
  8767 ms  0x138e ret:0x100
  8767 ms  SECKEY_ECParamsToBasePointOrderLen()
  8767 ms  0x138e ret:0x100
  8767 ms  SECKEY_ECParamsToBasePointOrderLen()
  8767 ms  0x138e ret:0x100
  8767 ms  0x138e EC_ValidatePublicKey()
  8771 ms  0x138e ret:0x0
           /* TID 0x13eb */
  8773 ms  SECKEY_ECParamsToBasePointOrderLen()
  8773 ms  0x13eb ret:0x100
  8773 ms  SECKEY_ECParamsToBasePointOrderLen()
  8773 ms  0x13eb ret:0x100
  8773 ms  0x13eb EC_ValidatePublicKey()
  8775 ms  0x13eb ret:0x0
  8777 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8777 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8777 ms     | 0x13eb ret:0x100
  8777 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8777 ms     | 0x13eb ret:0x100
  8777 ms     | 0x13eb EC_ValidatePublicKey()
  8789 ms     | 0x13eb ret:0x0
           /* TID 0x138e */
  8789 ms  SECKEY_ECParamsToKeySize()
  8789 ms  0x138e ret:0xff
  8789 ms  0x138e SECKEY_CreateECPrivateKey()
  8789 ms  0x138e cx:0x7fdeba90dc48
  8789 ms     | 0x138e EC_ValidatePublicKey()
  8789 ms     | 0x138e ret:0x0
  8789 ms  0x138e ret:0x7fdeba98d020::7fdeba98d020  e0 a2 66 ba                                      ..f.
  8789 ms  0x138e PK11_PubDeriveWithKDF()
  8789 ms  0x138e seckey:0x7fdeba98d020
  8789 ms     | 0x138e EC_ValidatePublicKey()
  8789 ms     | 0x138e ret:0x0
  8790 ms  0x138e ret:0x7fdeba12af80
  8790 ms  0x138e PK11_DeriveWithFlags()
  8790 ms  0x138e basekey:0x7fdeba12af80
  8790 ms     | 0x138e PK11_DeriveWithTemplate()
  8790 ms  0x138e ret:0x7fdeba91f880
  8790 ms  0x138e PK11_Derive()
  8790 ms  0x138e basekey:0x7fdeba91f880
  8790 ms     | 0x138e PK11_DeriveWithTemplate()
  8790 ms  0x138e ret:0x7fdeba9cb900
  8790 ms  0x138e SECKEY_DestroyPrivateKey()
  8790 ms  0x138e privk:0x7fdeba98d020::7fdeba98d020  e0 a2 66 ba                                      ..f.
  8790 ms  0x138e privk:0x7fdeba98d020::7fdeba98d020  e5 e5 e5 e5                                      ....
  8790 ms  0x138e PK11_Encrypt()
  8790 ms  0x138e symkey:0x7fdebac6c100
  8790 ms  0x138e SSL_AuthCertificateComplete()
  8790 ms  0x138e fd:0x7fdeba5da9a0
  8790 ms  0x138e err:0x0
  8791 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8791 ms     | 0x138e privk:0x7fdeba4bd820::7fdeba4bd820  e0 f7 48 ba                                      ..H.
  8791 ms     | 0x138e privk:0x7fdeba4bd820::7fdeba4bd820  e5 e5 e5 e5                                      ....
  8791 ms     | 0x138e SECKEY_DestroyPrivateKey()
  8791 ms     | 0x138e privk:0x7fdeba4b9820::7fdeba4b9820  00 f6 48 ba                                      ..H.
  8791 ms     | 0x138e privk:0x7fdeba4b9820::7fdeba4b9820  e5 e5 e5 e5                                      ....
  8791 ms  0x138e SSL_AuthCertificateComplete()
  8791 ms  0x138e fd:0x7fdeba5da460
  8791 ms  0x138e err:0x0
  8791 ms  0x138e SSL_AuthCertificateComplete()
  8791 ms  0x138e fd:0x7fdeba5daf10
  8791 ms  0x138e err:0x0
  8791 ms  0x138e PK11_Encrypt()
  8791 ms  0x138e symkey:0x7fdeba12a180
  8791 ms  0x138e SSL_AuthCertificateComplete()
  8791 ms  0x138e fd:0x7fdeba5dac70
  8791 ms  0x138e err:0x0
  8792 ms  0x138e SSL_AuthCertificateComplete()
  8792 ms  0x138e fd:0x7fdeba593c70
  8792 ms  0x138e err:0x0
           /* TID 0x1396 */
  8793 ms  0x1396 PR_Close()
  8793 ms  0x1396 fd:0x7fdeba5937f0
           /* TID 0x138e */
  8793 ms  0x138e SSL_ImportFD()
  8793 ms  0x138e ret:0x7fdeba8c48e0
  8793 ms  0x138e SSL_AuthCertificateHook()
  8793 ms  0x138e fd:0x7fdeba8c48e0
  8793 ms  0x138e ret:0x0
  8794 ms  0x138e PK11_Encrypt()
  8794 ms  0x138e symkey:0x7fdeba8e4500
           /* TID 0x13eb */
  8796 ms  0x13eb ret:0x0
           /* TID 0x138e */
  8796 ms  0x138e PR_Connect()
  8796 ms  0x138e fd:0x7fdeba8c48e0
  8796 ms  0x138e SSL_ImportFD()
  8796 ms  0x138e ret:0x7fdeba668d60
  8796 ms  0x138e SSL_AuthCertificateHook()
  8796 ms  0x138e fd:0x7fdeba668d60
  8796 ms  0x138e ret:0x0
  8797 ms  0x138e PR_Connect()
  8797 ms  0x138e fd:0x7fdeba668d60
  8797 ms  0x138e PK11_Encrypt()
  8797 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8798 ms  0x1396 PR_Close()
  8798 ms  0x1396 fd:0x7fdeba5937f0
           /* TID 0x138e */
  8799 ms  0x138e PK11_Encrypt()
  8799 ms  0x138e symkey:0x7fdeba12b000
  8799 ms  0x138e PK11_Encrypt()
  8799 ms  0x138e symkey:0x7fdeba12a700
  8799 ms  0x138e PK11_Encrypt()
  8799 ms  0x138e symkey:0x7fdeba12a400
  8799 ms  0x138e PK11_Encrypt()
  8799 ms  0x138e symkey:0x7fdeba12ad00
  8800 ms  0x138e PK11_Encrypt()
  8800 ms  0x138e symkey:0x7fdeba91ea00
  8800 ms  0x138e SSL_AuthCertificateComplete()
  8800 ms  0x138e fd:0x7fdeba5dad60
  8800 ms  0x138e err:0x0
           /* TID 0x1396 */
  8801 ms  0x1396 PR_Close()
  8801 ms  0x1396 fd:0x7fdeba5937f0
           /* TID 0x138e */
  8801 ms  0x138e SSL_ImportFD()
  8801 ms  0x138e ret:0x7fdeba593880
  8801 ms  0x138e SSL_AuthCertificateHook()
  8801 ms  0x138e fd:0x7fdeba593880
  8801 ms  0x138e ret:0x0
  8804 ms  0x138e PR_Connect()
  8804 ms  0x138e fd:0x7fdeba593880
  8808 ms  0x138e SSL_ImportFD()
  8808 ms  0x138e ret:0x7fdeba593940
  8808 ms  0x138e SSL_AuthCertificateHook()
  8808 ms  0x138e fd:0x7fdeba593940
  8808 ms  0x138e ret:0x0
  8809 ms  0x138e PR_Connect()
  8809 ms  0x138e fd:0x7fdeba593940
  8809 ms  0x138e PK11_Encrypt()
  8809 ms  0x138e symkey:0x7fdeba12a180
  8809 ms  0x138e PK11_Encrypt()
  8809 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8811 ms  0x1396 PR_Close()
  8811 ms  0x1396 fd:0x7fdeba5937f0
           /* TID 0x138e */
  8811 ms  0x138e SECKEY_DestroyPrivateKey()
  8811 ms  0x138e privk:0x7fdeba606820::7fdeba606820  e0 fc 48 ba                                      ..H.
  8811 ms  0x138e privk:0x7fdeba606820::7fdeba606820  e5 e5 e5 e5                                      ....
  8811 ms  0x138e SECKEY_DestroyPrivateKey()
  8811 ms  0x138e privk:0x7fdeba53e820::7fdeba53e820  c0 f9 48 ba                                      ..H.
  8811 ms  0x138e privk:0x7fdeba53e820::7fdeba53e820  e5 e5 e5 e5                                      ....
  8811 ms  0x138e SECKEY_DestroyPrivateKey()
  8811 ms  0x138e privk:0x7fdeba611820::7fdeba611820  a0 0b 4e ba                                      ..N.
  8811 ms  0x138e privk:0x7fdeba611820::7fdeba611820  e5 e5 e5 e5                                      ....
  8811 ms  0x138e SECKEY_DestroyPrivateKey()
  8811 ms  0x138e privk:0x7fdeba609820::7fdeba609820  b0 ff 48 ba                                      ..H.
  8811 ms  0x138e privk:0x7fdeba609820::7fdeba609820  e5 e5 e5 e5                                      ....
  8812 ms  0x138e SECKEY_DestroyPrivateKey()
  8812 ms  0x138e privk:0x7fdeba618820::7fdeba618820  70 74 4f ba                                      ptO.
  8812 ms  0x138e privk:0x7fdeba618820::7fdeba618820  e5 e5 e5 e5                                      ....
  8812 ms  0x138e SECKEY_DestroyPrivateKey()
  8812 ms  0x138e privk:0x7fdeba616820::7fdeba616820  10 0f 4e ba                                      ..N.
  8812 ms  0x138e privk:0x7fdeba616820::7fdeba616820  e5 e5 e5 e5                                      ....
  8812 ms  0x138e SECKEY_DestroyPrivateKey()
  8812 ms  0x138e privk:0x7fdeba61f020::7fdeba61f020  d0 d3 5a ba                                      ..Z.
  8812 ms  0x138e privk:0x7fdeba61f020::7fdeba61f020  e5 e5 e5 e5                                      ....
  8812 ms  0x138e SECKEY_DestroyPrivateKey()
  8812 ms  0x138e privk:0x7fdeba61c020::7fdeba61c020  a0 d1 5a ba                                      ..Z.
  8812 ms  0x138e privk:0x7fdeba61c020::7fdeba61c020  e5 e5 e5 e5                                      ....
  8812 ms  0x138e PK11_Encrypt()
  8812 ms  0x138e symkey:0x7fdebac6c100
  8813 ms  0x138e PR_Close()
  8813 ms  0x138e fd:0x7fdeba593c70
  8813 ms     | 0x138e PK11_Encrypt()
  8813 ms     | 0x138e symkey:0x7fdeba91ea00
  8813 ms  0x138e PR_Close()
  8813 ms  0x138e fd:0x7fdeba5dac70
  8813 ms     | 0x138e PK11_Encrypt()
  8813 ms     | 0x138e symkey:0x7fdeba12ad00
  8813 ms  0x138e PR_Close()
  8813 ms  0x138e fd:0x7fdeba5daf10
  8813 ms     | 0x138e PK11_Encrypt()
  8813 ms     | 0x138e symkey:0x7fdeba12a400
  8813 ms  0x138e PR_Close()
  8813 ms  0x138e fd:0x7fdeba5da460
  8813 ms     | 0x138e PK11_Encrypt()
  8813 ms     | 0x138e symkey:0x7fdeba12a700
  8813 ms  0x138e PR_Close()
  8813 ms  0x138e fd:0x7fdeba5da9a0
  8813 ms     | 0x138e PK11_Encrypt()
  8813 ms     | 0x138e symkey:0x7fdeba12b000
           /* TID 0x1396 */
  8817 ms  0x1396 PR_Close()
  8817 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8817 ms  0x138e PK11_Encrypt()
  8817 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8818 ms  0x1396 PR_Close()
  8818 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8818 ms  0x138e SECKEY_DestroyPrivateKey()
  8818 ms  0x138e privk:0x7fdeba896820::7fdeba896820  70 d9 5a ba                                      p.Z.
  8818 ms  0x138e privk:0x7fdeba896820::7fdeba896820  e5 e5 e5 e5                                      ....
  8818 ms  0x138e SECKEY_DestroyPrivateKey()
  8818 ms  0x138e privk:0x7fdeba621820::7fdeba621820  10 d5 5a ba                                      ..Z.
  8818 ms  0x138e privk:0x7fdeba621820::7fdeba621820  e5 e5 e5 e5                                      ....
  8819 ms  0x138e PR_Close()
  8819 ms  0x138e fd:0x7fdeba5dad60
  8819 ms     | 0x138e PK11_Encrypt()
  8819 ms     | 0x138e symkey:0x7fdebac6c100
  8819 ms  0x138e PK11_Encrypt()
  8819 ms  0x138e symkey:0x7fdeba12a180
  8822 ms  0x138e PK11_Encrypt()
  8822 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8823 ms  0x1396 PR_Close()
  8823 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8823 ms  0x138e PK11_Encrypt()
  8823 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8825 ms  0x1396 PR_Close()
  8825 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8825 ms  0x138e PK11_Encrypt()
  8825 ms  0x138e symkey:0x7fdeba12a180
  8825 ms  0x138e PK11_Encrypt()
  8825 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8827 ms  0x1396 PR_Close()
  8827 ms  0x1396 fd:0x7fdeba593310
           /* TID 0x138e */
  8827 ms  0x138e SECKEY_CreateECPrivateKey()
  8827 ms  0x138e cx:0x7fdeba4bfc08
  8827 ms     | 0x138e EC_ValidatePublicKey()
  8827 ms     | 0x138e ret:0x0
  8827 ms  0x138e ret:0x7fdeba140820::7fdeba140820  00 f6 48 ba                                      ..H.
  8827 ms  0x138e SECKEY_CreateECPrivateKey()
  8827 ms  0x138e cx:0x7fdeba4bfc08
  8828 ms     | 0x138e EC_ValidatePublicKey()
  8837 ms     | 0x138e ret:0x0
  8837 ms  0x138e ret:0x7fdeba147020::7fdeba147020  e0 f7 48 ba                                      ..H.
  8837 ms  0x138e PK11_Encrypt()
  8837 ms  0x138e symkey:0x7fdeba12a180
  8837 ms  0x138e PK11_Encrypt()
  8837 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8839 ms  0x1396 PR_Close()
  8839 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8839 ms  0x138e PK11_Encrypt()
  8839 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8840 ms  0x1396 PR_Close()
  8840 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8840 ms  0x138e PK11_Encrypt()
  8840 ms  0x138e symkey:0x7fdeba12a180
  8840 ms  0x138e PK11_Encrypt()
  8840 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8841 ms  0x1396 PR_Close()
  8841 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8841 ms  0x138e PK11_Encrypt()
  8841 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8842 ms  0x1396 PR_Close()
  8842 ms  0x1396 fd:0x7fdeba5933d0
  8844 ms  0x1396 PR_Close()
  8844 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8844 ms  0x138e PK11_Encrypt()
  8844 ms  0x138e symkey:0x7fdeba12a180
  8844 ms  0x138e PK11_Encrypt()
  8844 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8845 ms  0x1396 PR_Close()
  8845 ms  0x1396 fd:0x7fdeba5933d0
           /* TID 0x138e */
  8845 ms  0x138e SECKEY_CreateECPrivateKey()
  8845 ms  0x138e cx:0x7fdeba4bfda8
  8846 ms     | 0x138e EC_ValidatePublicKey()
  8846 ms     | 0x138e ret:0x0
  8846 ms  0x138e ret:0x7fdeba148020::7fdeba148020  c0 f9 48 ba                                      ..H.
  8846 ms  0x138e SECKEY_CreateECPrivateKey()
  8846 ms  0x138e cx:0x7fdeba4bfda8
  8846 ms     | 0x138e EC_ValidatePublicKey()
  8848 ms     | 0x138e ret:0x0
  8848 ms  0x138e ret:0x7fdeba14a820::7fdeba14a820  e0 fc 48 ba                                      ..H.
  8852 ms  0x138e PK11_Encrypt()
  8852 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8854 ms  0x1396 PR_Close()
  8854 ms  0x1396 fd:0x7fdeba593820
  8855 ms  0x1396 PR_Close()
  8855 ms  0x1396 fd:0x7fdeba593820
           /* TID 0x138e */
  8855 ms  0x138e SECKEY_CreateECPrivateKey()
  8855 ms  0x138e cx:0x7fdeba4bfa68
  8855 ms     | 0x138e EC_ValidatePublicKey()
  8855 ms     | 0x138e ret:0x0
  8855 ms  0x138e ret:0x7fdeba4b9820::7fdeba4b9820  b0 ff 48 ba                                      ..H.
  8856 ms  0x138e SECKEY_CreateECPrivateKey()
  8856 ms  0x138e cx:0x7fdeba4bfa68
  8856 ms     | 0x138e EC_ValidatePublicKey()
  8869 ms     | 0x138e ret:0x0
  8869 ms  0x138e ret:0x7fdeba4bd820::7fdeba4bd820  a0 0b 4e ba                                      ..N.
  8870 ms  0x138e SECKEY_CreateECPrivateKey()
  8870 ms  0x138e cx:0x7fdeba4bff48
  8870 ms     | 0x138e EC_ValidatePublicKey()
  8870 ms     | 0x138e ret:0x0
  8870 ms  0x138e ret:0x7fdeba53e820::7fdeba53e820  10 0f 4e ba                                      ..N.
  8870 ms  0x138e SECKEY_CreateECPrivateKey()
  8870 ms  0x138e cx:0x7fdeba4bff48
  8871 ms     | 0x138e EC_ValidatePublicKey()
  8872 ms     | 0x138e ret:0x0
  8872 ms  0x138e ret:0x7fdeba605820::7fdeba605820  70 74 4f ba                                      ptO.
           /* TID 0x1396 */
  8874 ms  0x1396 PR_Close()
  8874 ms  0x1396 fd:0x7fdeba593730
           /* TID 0x142b */
  8874 ms  SECKEY_ECParamsToBasePointOrderLen()
  8874 ms  0x142b ret:0x180
  8874 ms  SECKEY_ECParamsToBasePointOrderLen()
  8874 ms  0x142b ret:0x180
  8874 ms  0x142b EC_ValidatePublicKey()
  8876 ms  0x142b ret:0x0
           /* TID 0x138e */
  8878 ms  SECKEY_ECParamsToKeySize()
  8878 ms  0x138e ret:0x100
  8878 ms  SECKEY_ECParamsToBasePointOrderLen()
  8878 ms  0x138e ret:0x100
  8878 ms  SECKEY_ECParamsToBasePointOrderLen()
  8878 ms  0x138e ret:0x100
  8878 ms  0x138e EC_ValidatePublicKey()
  8880 ms  0x138e ret:0x0
  8882 ms  SECKEY_ECParamsToKeySize()
  8882 ms  0x138e ret:0xff
  8882 ms  0x138e SECKEY_CreateECPrivateKey()
  8882 ms  0x138e cx:0x7fdeba4bfc08
  8882 ms     | 0x138e EC_ValidatePublicKey()
  8882 ms     | 0x138e ret:0x0
  8882 ms  0x138e ret:0x7fdeba617820::7fdeba617820  60 d5 5a ba                                      `.Z.
  8883 ms  0x138e PK11_PubDeriveWithKDF()
  8883 ms  0x138e seckey:0x7fdeba617820
  8883 ms     | 0x138e EC_ValidatePublicKey()
  8883 ms     | 0x138e ret:0x0
  8883 ms  0x138e ret:0x7fdeba9cb900
  8883 ms  0x138e PK11_DeriveWithFlags()
  8883 ms  0x138e basekey:0x7fdeba9cb900
  8883 ms     | 0x138e PK11_DeriveWithTemplate()
  8883 ms  0x138e ret:0x7fdeba91f880
  8883 ms  0x138e PK11_Derive()
  8883 ms  0x138e basekey:0x7fdeba91f880
  8883 ms     | 0x138e PK11_DeriveWithTemplate()
  8883 ms  0x138e ret:0x7fdeba12a680
  8883 ms  0x138e SECKEY_DestroyPrivateKey()
  8883 ms  0x138e privk:0x7fdeba617820::7fdeba617820  60 d5 5a ba                                      `.Z.
  8883 ms  0x138e privk:0x7fdeba617820::7fdeba617820  e5 e5 e5 e5                                      ....
  8883 ms  0x138e PK11_Encrypt()
  8883 ms  0x138e symkey:0x7fdeba9cc280
           /* TID 0x142b */
  8885 ms  SECKEY_ECParamsToBasePointOrderLen()
  8885 ms  0x142b ret:0x100
  8885 ms  SECKEY_ECParamsToBasePointOrderLen()
  8885 ms  0x142b ret:0x100
  8885 ms  0x142b EC_ValidatePublicKey()
  8887 ms  0x142b ret:0x0
  8899 ms  0x142b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8899 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8899 ms     | 0x142b ret:0x100
  8899 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8899 ms     | 0x142b ret:0x100
  8899 ms     | 0x142b EC_ValidatePublicKey()
  8900 ms     | 0x142b ret:0x0
           /* TID 0x1396 */
  8903 ms  0x1396 PR_Close()
  8903 ms  0x1396 fd:0x7fdeba593790
           /* TID 0x138e */
  8903 ms  0x138e PK11_Derive()
  8903 ms  0x138e basekey:0x7fdeba9cb900
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12af00
  8904 ms  0x138e PK11_PubDeriveWithKDF()
  8904 ms  0x138e seckey:0x7fdeba148020
  8904 ms     | 0x138e EC_ValidatePublicKey()
  8904 ms     | 0x138e ret:0x0
  8904 ms  0x138e ret:0x7fdeba9cb900
  8904 ms  SECKEY_ECParamsToKeySize()
  8904 ms  0x138e ret:0xff
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba12af00
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12a380
  8904 ms  0x138e PK11_Derive()
  8904 ms  0x138e basekey:0x7fdeba9cb900
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12a600
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba12a600
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12af00
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba12a600
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba9cb900
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba12a600
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12a380
  8904 ms  0x138e PK11_Derive()
  8904 ms  0x138e basekey:0x7fdeba752a80
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12a300
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba9cb900
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8904 ms  0x138e ret:0x7fdeba12a600
  8904 ms  0x138e PK11_DeriveWithFlags()
  8904 ms  0x138e basekey:0x7fdeba9cb900
  8904 ms     | 0x138e PK11_DeriveWithTemplate()
  8905 ms  0x138e ret:0x7fdeba12a380
  8906 ms  SECKEY_ECParamsToKeySize()
  8906 ms  0x138e ret:0x100
  8906 ms  SECKEY_ECParamsToBasePointOrderLen()
  8906 ms  0x138e ret:0x100
  8906 ms  SECKEY_ECParamsToBasePointOrderLen()
  8906 ms  0x138e ret:0x100
  8906 ms  0x138e EC_ValidatePublicKey()
  8907 ms  0x138e ret:0x0
           /* TID 0x142b */
  8909 ms  0x142b ret:0x0
           /* TID 0x138e */
  8910 ms  0x138e PK11_DeriveWithFlags()
  8910 ms  0x138e basekey:0x7fdeba9cb900
  8911 ms     | 0x138e PK11_DeriveWithTemplate()
  8911 ms  0x138e ret:0x7fdeba12a380
  8918 ms  0x138e SSL_AuthCertificateComplete()
  8918 ms  0x138e fd:0x7fdeba668d60
  8918 ms  0x138e err:0x0
           /* TID 0x1396 */
  8919 ms  0x1396 PR_Close()
  8919 ms  0x1396 fd:0x7fdeba593910
           /* TID 0x138e */
  8920 ms  0x138e SECKEY_DestroyPrivateKey()
  8920 ms  0x138e privk:0x7fdeba147020::7fdeba147020  e0 f7 48 ba                                      ..H.
  8920 ms  0x138e privk:0x7fdeba147020::7fdeba147020  e5 e5 e5 e5                                      ....
  8920 ms  0x138e SECKEY_DestroyPrivateKey()
  8920 ms  0x138e privk:0x7fdeba140820::7fdeba140820  00 f6 48 ba                                      ..H.
  8920 ms  0x138e privk:0x7fdeba140820::7fdeba140820  e5 e5 e5 e5                                      ....
  8920 ms  0x138e PK11_Encrypt()
  8920 ms  0x138e symkey:0x7fdeba9cc280
  8924 ms  0x138e PK11_Encrypt()
  8924 ms  0x138e symkey:0x7fdeba9cc280
  8925 ms  SECKEY_ECParamsToKeySize()
  8925 ms  0x138e ret:0x100
  8925 ms  0x138e SECKEY_CreateECPrivateKey()
  8925 ms  0x138e cx:0x7fdeba4bfa68
  8925 ms     | 0x138e EC_ValidatePublicKey()
  8927 ms     | 0x138e ret:0x0
  8927 ms  0x138e ret:0x7fdeba146020::7fdeba146020  90 f7 48 ba                                      ..H.
  8927 ms  0x138e PK11_PubDeriveWithKDF()
  8927 ms  0x138e seckey:0x7fdeba146020
  8927 ms     | 0x138e EC_ValidatePublicKey()
  8929 ms     | 0x138e ret:0x0
  8930 ms  0x138e ret:0x7fdeba12a380
  8930 ms  0x138e PK11_DeriveWithFlags()
  8930 ms  0x138e basekey:0x7fdeba12a380
  8930 ms     | 0x138e PK11_DeriveWithTemplate()
  8930 ms  0x138e ret:0x7fdeba752a80
  8930 ms  0x138e PK11_Derive()
  8930 ms  0x138e basekey:0x7fdeba752a80
  8930 ms     | 0x138e PK11_DeriveWithTemplate()
  8930 ms  0x138e ret:0x7fdeba752b00
  8930 ms  0x138e SECKEY_DestroyPrivateKey()
  8930 ms  0x138e privk:0x7fdeba146020::7fdeba146020  90 f7 48 ba                                      ..H.
  8931 ms  0x138e privk:0x7fdeba146020::7fdeba146020  e5 e5 e5 e5                                      ....
  8931 ms  0x138e PK11_Encrypt()
  8931 ms  0x138e symkey:0x7fdeba12b080
  8931 ms  0x138e SSL_AuthCertificateComplete()
  8931 ms  0x138e fd:0x7fdeba8c48e0
  8931 ms  0x138e err:0x0
           /* TID 0x1396 */
  8939 ms  0x1396 PR_Close()
  8939 ms  0x1396 fd:0x7fdeba593760
           /* TID 0x138e */
  8939 ms  0x138e PK11_Encrypt()
  8939 ms  0x138e symkey:0x7fdeba9cc280
           /* TID 0x1396 */
  8940 ms  0x1396 PR_Close()
  8940 ms  0x1396 fd:0x7fdeba593760
           /* TID 0x138e */
  8940 ms  0x138e PK11_Encrypt()
  8940 ms  0x138e symkey:0x7fdeba12b080
  8940 ms  0x138e PK11_Derive()
  8940 ms  0x138e basekey:0x7fdeba12a380
  8940 ms     | 0x138e PK11_DeriveWithTemplate()
  8940 ms  0x138e ret:0x7fdeba752a00
  8940 ms  0x138e PK11_PubDeriveWithKDF()
  8940 ms  0x138e seckey:0x7fdeba53e820
  8940 ms     | 0x138e EC_ValidatePublicKey()
  8940 ms     | 0x138e ret:0x0
  8941 ms  0x138e ret:0x7fdeba12a380
  8941 ms  SECKEY_ECParamsToKeySize()
  8941 ms  0x138e ret:0xff
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba752a00
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12ae80
  8941 ms  0x138e PK11_Derive()
  8941 ms  0x138e basekey:0x7fdeba12a380
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12ac80
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba12ac80
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba752a00
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba12ac80
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12a380
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba12ac80
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12ae80
  8941 ms  0x138e PK11_Derive()
  8941 ms  0x138e basekey:0x7fdeba12af80
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12a880
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba12a380
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12ac80
  8941 ms  0x138e PK11_DeriveWithFlags()
  8941 ms  0x138e basekey:0x7fdeba12a380
  8941 ms     | 0x138e PK11_DeriveWithTemplate()
  8941 ms  0x138e ret:0x7fdeba12ae80
  8942 ms  SECKEY_ECParamsToKeySize()
  8942 ms  0x138e ret:0x100
  8942 ms  SECKEY_ECParamsToBasePointOrderLen()
  8942 ms  0x138e ret:0x100
  8942 ms  SECKEY_ECParamsToBasePointOrderLen()
  8942 ms  0x138e ret:0x100
  8942 ms  0x138e EC_ValidatePublicKey()
  8944 ms  0x138e ret:0x0
  8946 ms  0x138e PK11_DeriveWithFlags()
  8946 ms  0x138e basekey:0x7fdeba12a380
  8946 ms     | 0x138e PK11_DeriveWithTemplate()
  8946 ms  0x138e ret:0x7fdeba12ae80
           /* TID 0x1396 */
  8955 ms  0x1396 PR_Close()
  8955 ms  0x1396 fd:0x7fdeba593c70
  8955 ms  0x1396 PR_Close()
  8955 ms  0x1396 fd:0x7fdeba593c70
  8956 ms  0x1396 PR_Close()
  8956 ms  0x1396 fd:0x7fdeba593bb0
           /* TID 0x138e */
  8956 ms  0x138e PR_Connect()
  8956 ms  0x138e fd:0x7fdeba593c70
  8957 ms  0x138e PK11_Encrypt()
  8957 ms  0x138e symkey:0x7fdeba12a180
           /* TID 0x1396 */
  8958 ms  0x1396 PR_Close()
  8958 ms  0x1396 fd:0x7fdeba593b80
  8960 ms  0x1396 PR_Close()
  8960 ms  0x1396 fd:0x7fdeba593b80
  8960 ms  0x1396 PR_Close()
  8960 ms  0x1396 fd:0x7fdeba593b80
  8960 ms  0x1396 PR_Close()
  8960 ms  0x1396 fd:0x7fdeba593b80
  8961 ms  0x1396 PR_Close()
  8961 ms  0x1396 fd:0x7fdeba593b80
  8965 ms  0x1396 PR_Close()
  8965 ms  0x1396 fd:0x7fdeba593b80
  8965 ms  0x1396 PR_Close()
  8965 ms  0x1396 fd:0x7fdeba593b80
  8966 ms  0x1396 PR_Close()
  8966 ms  0x1396 fd:0x7fdeba593b80
  8967 ms  0x1396 PR_Close()
  8967 ms  0x1396 fd:0x7fdeba593b80
  8968 ms  0x1396 PR_Close()
  8968 ms  0x1396 fd:0x7fdeba593b80
  8968 ms  0x1396 PR_Close()
  8968 ms  0x1396 fd:0x7fdeba593b80
  8969 ms  0x1396 PR_Close()
  8969 ms  0x1396 fd:0x7fdeba593b80
  8970 ms  0x1396 PR_Close()
  8970 ms  0x1396 fd:0x7fdeba593b80
  8970 ms  0x1396 PR_Close()
  8970 ms  0x1396 fd:0x7fdeba593b80
  8971 ms  0x1396 PR_Close()
  8971 ms  0x1396 fd:0x7fdeba5dac40
  8972 ms  0x1396 PR_Close()
  8972 ms  0x1396 fd:0x7fdeba5dad30
  8972 ms  0x1396 PR_Close()
  8972 ms  0x1396 fd:0x7fdeba593dc0
  8973 ms  0x1396 PR_Close()
  8973 ms  0x1396 fd:0x7fdeba593f10
  8974 ms  0x1396 PR_Close()
  8974 ms  0x1396 fd:0x7fdeba63d4c0
  8974 ms  0x1396 PR_Close()
  8974 ms  0x1396 fd:0x7fdeba63d520
  8975 ms  0x1396 PR_Close()
  8975 ms  0x1396 fd:0x7fdeba63df70
  8976 ms  0x1396 PR_Close()
  8976 ms  0x1396 fd:0x7fdeba5ce040
           /* TID 0x138e */
  8980 ms  0x138e SECKEY_DestroyPrivateKey()
  8980 ms  0x138e privk:0x7fdeba4bd820::7fdeba4bd820  a0 0b 4e ba                                      ..N.
  8980 ms  0x138e privk:0x7fdeba4bd820::7fdeba4bd820  e5 e5 e5 e5                                      ....
  8980 ms  0x138e SECKEY_DestroyPrivateKey()
  8980 ms  0x138e privk:0x7fdeba4b9820::7fdeba4b9820  b0 ff 48 ba                                      ..H.
  8980 ms  0x138e privk:0x7fdeba4b9820::7fdeba4b9820  e5 e5 e5 e5                                      ....
  8980 ms  0x138e PR_Close()
  8980 ms  0x138e fd:0x7fdeba8c48e0
  8980 ms     | 0x138e PK11_Encrypt()
  8980 ms     | 0x138e symkey:0x7fdeba12b080
           /* TID 0x1396 */
  8982 ms  0x1396 PR_Close()
  8982 ms  0x1396 fd:0x7fdeba593820
  8982 ms  0x1396 PR_Close()
  8982 ms  0x1396 fd:0x7fdeba5ce8b0
  8983 ms  0x1396 PR_Close()
  8983 ms  0x1396 fd:0x7fdeba5ce0d0
  8986 ms  0x1396 PR_Close()
  8986 ms  0x1396 fd:0x7fdeba5939a0
  8993 ms  0x1396 PR_Close()
  8993 ms  0x1396 fd:0x7fdeba5939a0
  8995 ms  0x1396 PR_Close()
  8995 ms  0x1396 fd:0x7fdeba5939a0
  8995 ms  0x1396 PR_Close()
  8995 ms  0x1396 fd:0x7fdeba5939a0
  8996 ms  0x1396 PR_Close()
  8996 ms  0x1396 fd:0x7fdeba5939a0
  8997 ms  0x1396 PR_Close()
  8997 ms  0x1396 fd:0x7fdeba5939a0
  8997 ms  0x1396 PR_Close()
  8997 ms  0x1396 fd:0x7fdeba5939a0
  8998 ms  0x1396 PR_Close()
  8998 ms  0x1396 fd:0x7fdeba5939a0
  8999 ms  0x1396 PR_Close()
  8999 ms  0x1396 fd:0x7fdeba5939a0
  9000 ms  0x1396 PR_Close()
  9000 ms  0x1396 fd:0x7fdeba5939a0
  9001 ms  0x1396 PR_Close()
  9001 ms  0x1396 fd:0x7fdeba5939a0
  9001 ms  0x1396 PR_Close()
  9001 ms  0x1396 fd:0x7fdeba5939a0
  9002 ms  0x1396 PR_Close()
  9002 ms  0x1396 fd:0x7fdeba5939a0
  9003 ms  0x1396 PR_Close()
  9003 ms  0x1396 fd:0x7fdeba5939a0
  9003 ms  0x1396 PR_Close()
  9003 ms  0x1396 fd:0x7fdeba5939a0
  9004 ms  0x1396 PR_Close()
  9004 ms  0x1396 fd:0x7fdeba5939a0
  9005 ms  0x1396 PR_Close()
  9005 ms  0x1396 fd:0x7fdeba5939a0
  9006 ms  0x1396 PR_Close()
  9006 ms  0x1396 fd:0x7fdeba593ca0
  9008 ms  0x1396 PR_Close()
  9008 ms  0x1396 fd:0x7fdeba593970
           /* TID 0x13a5 */
  9044 ms  0x13a5 PR_Close()
  9044 ms  0x13a5 fd:0x7fdeba5ce3d0
           /* TID 0x138e */
  9055 ms  0x138e SSL_ImportFD()
  9056 ms  0x138e ret:0x7fdeba63d100
  9056 ms  0x138e SSL_AuthCertificateHook()
  9056 ms  0x138e fd:0x7fdeba63d100
  9056 ms  0x138e ret:0x0
  9056 ms  0x138e PR_Connect()
  9056 ms  0x138e fd:0x7fdeba63d100
           /* TID 0x1396 */
  9062 ms  0x1396 PR_Close()
  9062 ms  0x1396 fd:0x7fdeba5da3a0
           /* TID 0x1428 */
  9062 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9062 ms  0x1428 ret:0x0
           /* TID 0x138e */
  9062 ms  0x138e SSL_AuthCertificateComplete()
  9062 ms  0x138e fd:0x7fdeba593880
  9062 ms  0x138e err:0x0
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba12a300
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9062 ms     | 0x138e ret:0x7fdeba752b00
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba12a300
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9062 ms     | 0x138e ret:0x7fdeba752a80
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba12a300
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9062 ms     | 0x138e ret:0x7fdeba12ae80
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba12af00
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9062 ms     | 0x138e ret:0x7fdeba12af80
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba12af00
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9062 ms     | 0x138e ret:0x7fdeba12b100
  9062 ms     | 0x138e PK11_DeriveWithFlags()
  9062 ms     | 0x138e basekey:0x7fdeba752a80
  9062 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12b100
  9063 ms     | 0x138e PK11_DeriveWithFlags()
  9063 ms     | 0x138e basekey:0x7fdeba752a80
  9063 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12b000
  9063 ms     | 0x138e PK11_DeriveWithFlags()
  9063 ms     | 0x138e basekey:0x7fdeba12af00
  9063 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12a600
  9063 ms     | 0x138e PK11_Encrypt()
  9063 ms     | 0x138e symkey:0x7fdeba12af80
  9063 ms     | 0x138e PK11_DeriveWithFlags()
  9063 ms     | 0x138e basekey:0x7fdeba752b00
  9063 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12a600
  9063 ms     | 0x138e PK11_DeriveWithFlags()
  9063 ms     | 0x138e basekey:0x7fdeba752b00
  9063 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12b000
  9063 ms     | 0x138e PK11_DeriveWithFlags()
  9063 ms     | 0x138e basekey:0x7fdeba12a300
  9063 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9063 ms     | 0x138e ret:0x7fdeba12af80
  9063 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9063 ms     | 0x138e privk:0x7fdeba14a820::7fdeba14a820  e0 fc 48 ba                                      ..H.
  9063 ms     | 0x138e privk:0x7fdeba14a820::7fdeba14a820  e5 e5 e5 e5                                      ....
  9063 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9063 ms     | 0x138e privk:0x7fdeba148020::7fdeba148020  c0 f9 48 ba                                      ..H.
  9063 ms     | 0x138e privk:0x7fdeba148020::7fdeba148020  e5 e5 e5 e5                                      ....
  9063 ms  0x138e PK11_Encrypt()
  9063 ms  0x138e symkey:0x7fdeba12a600
  9063 ms  0x138e PK11_Encrypt()
  9063 ms  0x138e symkey:0x7fdeba12a600
  9100 ms  0x138e PK11_DeriveWithFlags()
  9100 ms  0x138e basekey:0x7fdeba12af80
  9100 ms     | 0x138e PK11_DeriveWithTemplate()
  9100 ms  0x138e ret:0x7fdeba9cb900
  9100 ms  0x138e PK11_DeriveWithFlags()
  9100 ms  0x138e basekey:0x7fdeba12af80
  9100 ms     | 0x138e PK11_DeriveWithTemplate()
  9100 ms  0x138e ret:0x7fdeba9cb900
  9100 ms  0x138e PK11_Encrypt()
  9100 ms  0x138e symkey:0x7fdeba12a600
  9103 ms  0x138e SECKEY_CreateECPrivateKey()
  9103 ms  0x138e cx:0x7fdeba4bfa68
  9104 ms     | 0x138e EC_ValidatePublicKey()
  9104 ms     | 0x138e ret:0x0
  9104 ms  0x138e ret:0x7fdeba149020::7fdeba149020  a0 fb 48 ba                                      ..H.
  9104 ms  0x138e SECKEY_CreateECPrivateKey()
  9104 ms  0x138e cx:0x7fdeba4bfa68
  9104 ms     | 0x138e EC_ValidatePublicKey()
  9106 ms     | 0x138e ret:0x0
  9106 ms  0x138e ret:0x7fdeba14b820::7fdeba14b820  20 d9 5a ba                                       .Z.
           /* TID 0x1396 */
  9140 ms  0x1396 PR_Close()
  9140 ms  0x1396 fd:0x7fdeba5da460
           /* TID 0x13eb */
  9140 ms  0x13eb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9140 ms  0x13eb ret:0x0
           /* TID 0x138e */
  9140 ms  0x138e SSL_AuthCertificateComplete()
  9140 ms  0x138e fd:0x7fdeba593940
  9140 ms  0x138e err:0x0
  9140 ms     | 0x138e PK11_DeriveWithFlags()
  9140 ms     | 0x138e basekey:0x7fdeba12a880
  9140 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9140 ms     | 0x138e ret:0x7fdeba9cb900
  9140 ms     | 0x138e PK11_DeriveWithFlags()
  9140 ms     | 0x138e basekey:0x7fdeba12a880
  9140 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9140 ms     | 0x138e ret:0x7fdeba12af00
  9140 ms     | 0x138e PK11_DeriveWithFlags()
  9140 ms     | 0x138e basekey:0x7fdeba12a880
  9140 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9140 ms     | 0x138e ret:0x7fdeba12a300
  9140 ms     | 0x138e PK11_DeriveWithFlags()
  9140 ms     | 0x138e basekey:0x7fdeba752a00
  9140 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9140 ms     | 0x138e ret:0x7fdeba12b000
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba752a00
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12b180
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba12af00
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12b180
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba12af00
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12b080
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba752a00
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12ac80
  9141 ms     | 0x138e PK11_Encrypt()
  9141 ms     | 0x138e symkey:0x7fdeba12b000
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba9cb900
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12ac80
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba9cb900
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12b080
  9141 ms     | 0x138e PK11_DeriveWithFlags()
  9141 ms     | 0x138e basekey:0x7fdeba12a880
  9141 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9141 ms     | 0x138e ret:0x7fdeba12b000
  9141 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9141 ms     | 0x138e privk:0x7fdeba605820::7fdeba605820  70 74 4f ba                                      ptO.
  9141 ms     | 0x138e privk:0x7fdeba605820::7fdeba605820  e5 e5 e5 e5                                      ....
  9141 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9141 ms     | 0x138e privk:0x7fdeba53e820::7fdeba53e820  10 0f 4e ba                                      ..N.
  9141 ms     | 0x138e privk:0x7fdeba53e820::7fdeba53e820  e5 e5 e5 e5                                      ....
  9142 ms  0x138e PK11_Encrypt()
  9142 ms  0x138e symkey:0x7fdeba12ac80
  9142 ms  0x138e PK11_Encrypt()
  9142 ms  0x138e symkey:0x7fdeba12a600
  9148 ms  0x138e PK11_Encrypt()
  9148 ms  0x138e symkey:0x7fdeba12a600
           /* TID 0x1396 */
  9149 ms  0x1396 PR_Close()
  9149 ms  0x1396 fd:0x7fdeba5ceb80
           /* TID 0x138e */
  9158 ms  SECKEY_ECParamsToKeySize()
  9158 ms  0x138e ret:0x100
  9158 ms  0x138e SECKEY_CreateECPrivateKey()
  9158 ms  0x138e cx:0x7fdeba4bfa68
  9159 ms     | 0x138e EC_ValidatePublicKey()
  9160 ms     | 0x138e ret:0x0
  9160 ms  0x138e ret:0x7fdeba4a3020::7fdeba4a3020  20 e9 65 ba                                       .e.
  9160 ms  0x138e PK11_PubDeriveWithKDF()
  9160 ms  0x138e seckey:0x7fdeba4a3020
  9160 ms     | 0x138e EC_ValidatePublicKey()
  9162 ms     | 0x138e ret:0x0
  9163 ms  0x138e ret:0x7fdeba12a380
  9163 ms  0x138e PK11_DeriveWithFlags()
  9163 ms  0x138e basekey:0x7fdeba12a380
  9163 ms     | 0x138e PK11_DeriveWithTemplate()
  9163 ms  0x138e ret:0x7fdeba752a00
  9163 ms  0x138e PK11_Derive()
  9163 ms  0x138e basekey:0x7fdeba752a00
  9163 ms     | 0x138e PK11_DeriveWithTemplate()
  9163 ms  0x138e ret:0x7fdeba12a880
  9163 ms  0x138e SECKEY_DestroyPrivateKey()
  9163 ms  0x138e privk:0x7fdeba4a3020::7fdeba4a3020  20 e9 65 ba                                       .e.
  9164 ms  0x138e privk:0x7fdeba4a3020::7fdeba4a3020  e5 e5 e5 e5                                      ....
  9164 ms  0x138e PK11_Encrypt()
  9164 ms  0x138e symkey:0x7fdeba12a700
  9179 ms  0x138e PK11_DeriveWithFlags()
  9179 ms  0x138e basekey:0x7fdeba12b000
  9179 ms     | 0x138e PK11_DeriveWithTemplate()
  9179 ms  0x138e ret:0x7fdeba12a380
  9179 ms  0x138e PK11_DeriveWithFlags()
  9179 ms  0x138e basekey:0x7fdeba12b000
  9179 ms     | 0x138e PK11_DeriveWithTemplate()
  9179 ms  0x138e ret:0x7fdeba12a380
  9179 ms  0x138e PR_Close()
  9179 ms  0x138e fd:0x7fdeba593940
  9179 ms     | 0x138e PK11_Encrypt()
  9179 ms     | 0x138e symkey:0x7fdeba12ac80
  9206 ms  0x138e PR_Connect()
  9206 ms  0x138e fd:0x7fdeba593a00
  9263 ms  0x138e PK11_Encrypt()
  9263 ms  0x138e symkey:0x7fdeba12a600
           /* TID 0x1396 */
  9264 ms  0x1396 PR_Close()
  9264 ms  0x1396 fd:0x7fdeba593760
           /* TID 0x138e */
  9265 ms  0x138e PK11_Encrypt()
  9265 ms  0x138e symkey:0x7fdeba12a600
           /* TID 0x13e9 */
  9286 ms  0x13e9 PR_Close()
  9286 ms  0x13e9 fd:0x7fdeba668a30
  9305 ms  0x13e9 PR_Close()
  9305 ms  0x13e9 fd:0x7fdeba668a30
           /* TID 0x1396 */
  9332 ms  0x1396 PR_Close()
  9332 ms  0x1396 fd:0x7fdeba668ac0
           /* TID 0x142b */
  9332 ms  0x142b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9333 ms  0x142b ret:0x0
           /* TID 0x138e */
  9339 ms  0x138e SSL_AuthCertificateComplete()
  9339 ms  0x138e fd:0x7fdeba63d100
  9339 ms  0x138e err:0x0
  9339 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9339 ms     | 0x138e privk:0x7fdeba14b820::7fdeba14b820  20 d9 5a ba                                       .Z.
  9339 ms     | 0x138e privk:0x7fdeba14b820::7fdeba14b820  e5 e5 e5 e5                                      ....
  9339 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9339 ms     | 0x138e privk:0x7fdeba149020::7fdeba149020  a0 fb 48 ba                                      ..H.
  9339 ms     | 0x138e privk:0x7fdeba149020::7fdeba149020  e5 e5 e5 e5                                      ....
  9340 ms  0x138e PK11_Encrypt()
  9340 ms  0x138e symkey:0x7fdeba12a700
  9385 ms  0x138e PK11_Encrypt()
  9385 ms  0x138e symkey:0x7fdeba12a600
           /* TID 0x1396 */
  9387 ms  0x1396 PR_Close()
  9387 ms  0x1396 fd:0x7fdeba5da460
           /* TID 0x138e */
  9398 ms  0x138e PR_Close()
  9398 ms  0x138e fd:0x7fdeba63d100
  9398 ms     | 0x138e PK11_Encrypt()
  9398 ms     | 0x138e symkey:0x7fdeba12a700
           /* TID 0x1396 */
  9401 ms  0x1396 PR_Close()
  9401 ms  0x1396 fd:0x7fdeba593790
           /* TID 0x138e */
  9403 ms  0x138e PK11_Encrypt()
  9403 ms  0x138e symkey:0x7fdeba12a180
  9404 ms  0x138e PK11_Encrypt()
  9404 ms  0x138e symkey:0x7fdeba12a180
  9404 ms  0x138e SSL_ImportFD()
  9404 ms  0x138e ret:0x7fdeba8c4b50
  9404 ms  0x138e SSL_AuthCertificateHook()
  9404 ms  0x138e fd:0x7fdeba8c4b50
  9404 ms  0x138e ret:0x0
  9405 ms  0x138e PR_Connect()
  9405 ms  0x138e fd:0x7fdeba8c4b50
  9405 ms  0x138e SSL_ImportFD()
  9405 ms  0x138e ret:0x7fdeba926520
  9405 ms  0x138e SSL_AuthCertificateHook()
  9405 ms  0x138e fd:0x7fdeba926520
  9405 ms  0x138e ret:0x0
  9405 ms  0x138e PR_Connect()
  9405 ms  0x138e fd:0x7fdeba926520
           /* TID 0x1396 */
  9432 ms  0x1396 PR_Close()
  9432 ms  0x1396 fd:0x7fdeba593790
  9443 ms  0x1396 PR_Close()
  9443 ms  0x1396 fd:0x7fdeba9b60d0
  9443 ms  0x1396 PR_Close()
  9443 ms  0x1396 fd:0x7fdeba9b6160
           /* TID 0x138e */
  9444 ms  0x138e SECKEY_CreateECPrivateKey()
  9444 ms  0x138e cx:0x7fdeba4c05c8
  9444 ms     | 0x138e EC_ValidatePublicKey()
  9444 ms     | 0x138e ret:0x0
  9444 ms  0x138e ret:0x7fdeba149820::7fdeba149820  20 a9 66 ba                                       .f.
  9444 ms  0x138e SECKEY_CreateECPrivateKey()
  9444 ms  0x138e cx:0x7fdeba4c05c8
           /* TID 0x1396 */
  9445 ms  0x1396 PR_Close()
  9445 ms  0x1396 fd:0x7fdeba9b61c0
  9445 ms  0x1396 PR_Close()
  9445 ms  0x1396 fd:0x7fdeba9b6250
  9445 ms  0x1396 PR_Close()
  9445 ms  0x1396 fd:0x7fdeba9b62b0
           /* TID 0x138e */
  9446 ms     | 0x138e EC_ValidatePublicKey()
  9447 ms     | 0x138e ret:0x0
  9447 ms  0x138e ret:0x7fdeba151820::7fdeba151820  50 d6 5a ba                                      P.Z.
           /* TID 0x1396 */
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba8c4cd0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6100
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6190
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6220
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6280
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b62e0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b63a0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6430
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6490
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b64f0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6550
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b65b0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6670
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6700
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6820
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b69d0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6a30
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6b80
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6d30
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6d90
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9b6e80
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd0d0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd190
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd340
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba8c48e0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd3a0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd490
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd6a0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd700
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd7f0
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd850
  9448 ms  0x1396 PR_Close()
  9448 ms  0x1396 fd:0x7fdeba9cd8e0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cd970
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cd9d0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cda60
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdaf0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdb50
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdbe0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdc70
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdcd0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdd30
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdd90
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cddf0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cde50
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdeb0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdf10
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdf70
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdeba9cdfd0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac900a0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90100
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac901c0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90220
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90340
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac903a0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90400
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90460
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac904c0
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90520
  9449 ms  0x1396 PR_Close()
  9449 ms  0x1396 fd:0x7fdebac90580
           /* TID 0x138e */
  9452 ms  0x138e SECKEY_CreateECPrivateKey()
  9452 ms  0x138e cx:0x7fdeba4bff48
  9453 ms     | 0x138e EC_ValidatePublicKey()
  9453 ms     | 0x138e ret:0x0
  9453 ms  0x138e ret:0x7fdeba4a2820::7fdeba4a2820  80 58 66 ba                                      .Xf.
  9453 ms  0x138e SECKEY_CreateECPrivateKey()
  9453 ms  0x138e cx:0x7fdeba4bff48
  9453 ms     | 0x138e EC_ValidatePublicKey()
  9455 ms     | 0x138e ret:0x0
  9455 ms  0x138e ret:0x7fdeba4a7020::7fdeba4a7020  b0 5a 66 ba                                      .Zf.
           /* TID 0x1396 */
  9464 ms  0x1396 PR_Close()
  9464 ms  0x1396 fd:0x7fdeba593d30
           /* TID 0x138e */
  9503 ms  0x138e PK11_Derive()
  9503 ms  0x138e basekey:0x7fdeba12a880
  9503 ms     | 0x138e PK11_DeriveWithTemplate()
  9503 ms  0x138e ret:0x7fdeba752a00
  9503 ms  0x138e PK11_PubDeriveWithKDF()
  9503 ms  0x138e seckey:0x7fdeba149820
  9503 ms     | 0x138e EC_ValidatePublicKey()
  9503 ms     | 0x138e ret:0x0
  9504 ms  0x138e ret:0x7fdeba12a880
  9504 ms  SECKEY_ECParamsToKeySize()
  9504 ms  0x138e ret:0xff
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba752a00
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12a300
  9504 ms  0x138e PK11_Derive()
  9504 ms  0x138e basekey:0x7fdeba12a880
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12af00
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba12af00
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba752a00
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba12af00
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12a880
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba12af00
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12a300
  9504 ms  0x138e PK11_Derive()
  9504 ms  0x138e basekey:0x7fdeba9cb900
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12b000
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba12a880
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12af00
  9504 ms  0x138e PK11_DeriveWithFlags()
  9504 ms  0x138e basekey:0x7fdeba12a880
  9504 ms     | 0x138e PK11_DeriveWithTemplate()
  9504 ms  0x138e ret:0x7fdeba12a300
  9507 ms  0x138e PK11_DeriveWithFlags()
  9507 ms  0x138e basekey:0x7fdeba12a880
  9507 ms     | 0x138e PK11_DeriveWithTemplate()
  9507 ms  0x138e ret:0x7fdeba12a300
  9514 ms  SECKEY_ECParamsToKeySize()
  9514 ms  0x138e ret:0xff
  9514 ms  0x138e SECKEY_CreateECPrivateKey()
  9514 ms  0x138e cx:0x7fdeba4bff48
  9514 ms     | 0x138e EC_ValidatePublicKey()
  9514 ms     | 0x138e ret:0x0
  9514 ms  0x138e ret:0x7fdeba53b020::7fdeba53b020  90 a2 66 ba                                      ..f.
  9514 ms  0x138e PK11_PubDeriveWithKDF()
  9514 ms  0x138e seckey:0x7fdeba53b020
  9514 ms     | 0x138e EC_ValidatePublicKey()
  9514 ms     | 0x138e ret:0x0
  9515 ms  0x138e ret:0x7fdeba12a300
  9515 ms  0x138e PK11_DeriveWithFlags()
  9515 ms  0x138e basekey:0x7fdeba12a300
  9515 ms     | 0x138e PK11_DeriveWithTemplate()
  9515 ms  0x138e ret:0x7fdeba9cb900
  9515 ms  0x138e PK11_Derive()
  9515 ms  0x138e basekey:0x7fdeba9cb900
  9515 ms     | 0x138e PK11_DeriveWithTemplate()
  9515 ms  0x138e ret:0x7fdeba12b180
  9515 ms  0x138e SECKEY_DestroyPrivateKey()
  9515 ms  0x138e privk:0x7fdeba53b020::7fdeba53b020  90 a2 66 ba                                      ..f.
  9515 ms  0x138e privk:0x7fdeba53b020::7fdeba53b020  e5 e5 e5 e5                                      ....
  9516 ms  0x138e PK11_Encrypt()
  9516 ms  0x138e symkey:0x7fdeba12a800
           /* TID 0x1396 */
  9582 ms  0x1396 PR_Close()
  9582 ms  0x1396 fd:0x7fdeba9b6220
           /* TID 0x1428 */
  9583 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9583 ms  0x1428 ret:0x0
           /* TID 0x138e */
  9584 ms  0x138e SSL_AuthCertificateComplete()
  9584 ms  0x138e fd:0x7fdeba8c4b50
  9584 ms  0x138e err:0x0
  9584 ms  0x138e SECKEY_DestroyPrivateKey()
  9584 ms  0x138e privk:0x7fdeba4a7020::7fdeba4a7020  b0 5a 66 ba                                      .Zf.
  9585 ms  0x138e privk:0x7fdeba4a7020::7fdeba4a7020  e5 e5 e5 e5                                      ....
  9585 ms  0x138e SECKEY_DestroyPrivateKey()
  9585 ms  0x138e privk:0x7fdeba4a2820::7fdeba4a2820  80 58 66 ba                                      .Xf.
  9585 ms  0x138e privk:0x7fdeba4a2820::7fdeba4a2820  e5 e5 e5 e5                                      ....
  9586 ms  0x138e PK11_Encrypt()
  9586 ms  0x138e symkey:0x7fdeba12a800
  9587 ms  0x138e PK11_Encrypt()
  9587 ms  0x138e symkey:0x7fdeba12a800
  9589 ms  0x138e PK11_Encrypt()
  9589 ms  0x138e symkey:0x7fdeba12a800
           /* TID 0x1396 */
  9652 ms  0x1396 PR_Close()
  9652 ms  0x1396 fd:0x7fdeba8c4820
           /* TID 0x1429 */
  9652 ms  0x1429 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9652 ms  0x1429 ret:0x0
           /* TID 0x138e */
  9653 ms  0x138e SSL_AuthCertificateComplete()
  9653 ms  0x138e fd:0x7fdeba926520
  9653 ms  0x138e err:0x0
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba12b000
  9653 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9653 ms     | 0x138e ret:0x7fdeba12a300
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba12b000
  9653 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9653 ms     | 0x138e ret:0x7fdeba12ac80
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba12b000
  9653 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9653 ms     | 0x138e ret:0x7fdeba12a380
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba752a00
  9653 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9653 ms     | 0x138e ret:0x7fdeba12b080
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba752a00
  9653 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9653 ms     | 0x138e ret:0x7fdeba12a500
  9653 ms     | 0x138e PK11_DeriveWithFlags()
  9653 ms     | 0x138e basekey:0x7fdeba12ac80
  9654 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9654 ms     | 0x138e ret:0x7fdeba12a500
  9654 ms     | 0x138e PK11_DeriveWithFlags()
  9654 ms     | 0x138e basekey:0x7fdeba12ac80
  9654 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9654 ms     | 0x138e ret:0x7fdeba12a480
  9654 ms     | 0x138e PK11_DeriveWithFlags()
  9654 ms     | 0x138e basekey:0x7fdeba752a00
  9654 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9654 ms     | 0x138e ret:0x7fdeba12af00
  9654 ms     | 0x138e PK11_Encrypt()
  9654 ms     | 0x138e symkey:0x7fdeba12b080
  9655 ms     | 0x138e PK11_DeriveWithFlags()
  9655 ms     | 0x138e basekey:0x7fdeba12a300
  9655 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9655 ms     | 0x138e ret:0x7fdeba12af00
  9655 ms     | 0x138e PK11_DeriveWithFlags()
  9655 ms     | 0x138e basekey:0x7fdeba12a300
  9655 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9655 ms     | 0x138e ret:0x7fdeba12a480
  9655 ms     | 0x138e PK11_DeriveWithFlags()
  9655 ms     | 0x138e basekey:0x7fdeba12b000
  9655 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9655 ms     | 0x138e ret:0x7fdeba12b080
  9655 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9655 ms     | 0x138e privk:0x7fdeba151820::7fdeba151820  50 d6 5a ba                                      P.Z.
  9655 ms     | 0x138e privk:0x7fdeba151820::7fdeba151820  e5 e5 e5 e5                                      ....
  9656 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9656 ms     | 0x138e privk:0x7fdeba149820::7fdeba149820  20 a9 66 ba                                       .f.
  9656 ms     | 0x138e privk:0x7fdeba149820::7fdeba149820  e5 e5 e5 e5                                      ....
  9657 ms  0x138e PK11_Encrypt()
  9657 ms  0x138e symkey:0x7fdeba12af00
  9657 ms  0x138e PK11_Encrypt()
  9657 ms  0x138e symkey:0x7fdeba12af00
  9693 ms  0x138e PK11_DeriveWithFlags()
  9693 ms  0x138e basekey:0x7fdeba12b080
  9693 ms     | 0x138e PK11_DeriveWithTemplate()
  9693 ms  0x138e ret:0x7fdeba12a880
  9693 ms  0x138e PK11_DeriveWithFlags()
  9693 ms  0x138e basekey:0x7fdeba12b080
  9693 ms     | 0x138e PK11_DeriveWithTemplate()
  9693 ms  0x138e ret:0x7fdeba12a880
  9693 ms  0x138e PK11_Encrypt()
  9693 ms  0x138e symkey:0x7fdeba12af00
           /* TID 0x1396 */
  9738 ms  0x1396 PR_Close()
  9738 ms  0x1396 fd:0x7fdeba9b6670
           /* TID 0x138e */
  9741 ms  0x138e PK11_Encrypt()
  9741 ms  0x138e symkey:0x7fdeba12af00
           /* TID 0x1396 */
  9742 ms  0x1396 PR_Close()
  9742 ms  0x1396 fd:0x7fdeba9b6340
           /* TID 0x138e */
  9764 ms  0x138e SSL_ImportFD()
  9765 ms  0x138e ret:0x7fdeba9b6d00
  9765 ms  0x138e SSL_AuthCertificateHook()
  9765 ms  0x138e fd:0x7fdeba9b6d00
  9765 ms  0x138e ret:0x0
  9766 ms  0x138e PR_Connect()
  9766 ms  0x138e fd:0x7fdeba9b6d00
  9804 ms  0x138e SECKEY_CreateECPrivateKey()
  9804 ms  0x138e cx:0x7fdeba4c0c48
  9806 ms     | 0x138e EC_ValidatePublicKey()
  9806 ms     | 0x138e ret:0x0
  9806 ms  0x138e ret:0x7fdeba4a4820::7fdeba4a4820  c0 59 66 ba                                      .Yf.
  9806 ms  0x138e SECKEY_CreateECPrivateKey()
  9806 ms  0x138e cx:0x7fdeba4c0c48
  9810 ms     | 0x138e EC_ValidatePublicKey()
  9813 ms     | 0x138e ret:0x0
  9813 ms  0x138e ret:0x7fdeba4a7020::7fdeba4a7020  f0 5b 66 ba                                      .[f.
  9868 ms  0x138e PK11_Derive()
  9868 ms  0x138e basekey:0x7fdeba12a880
  9868 ms     | 0x138e PK11_DeriveWithTemplate()
  9868 ms  0x138e ret:0x7fdeba752a00
  9868 ms  0x138e PK11_PubDeriveWithKDF()
  9868 ms  0x138e seckey:0x7fdeba4a4820
  9868 ms     | 0x138e EC_ValidatePublicKey()
  9868 ms     | 0x138e ret:0x0
  9870 ms  0x138e ret:0x7fdeba12a880
  9870 ms  SECKEY_ECParamsToKeySize()
  9870 ms  0x138e ret:0xff
  9870 ms  0x138e PK11_DeriveWithFlags()
  9870 ms  0x138e basekey:0x7fdeba752a00
  9870 ms     | 0x138e PK11_DeriveWithTemplate()
  9870 ms  0x138e ret:0x7fdeba12b000
  9870 ms  0x138e PK11_Derive()
  9870 ms  0x138e basekey:0x7fdeba12a880
  9870 ms     | 0x138e PK11_DeriveWithTemplate()
  9870 ms  0x138e ret:0x7fdeba12a480
  9870 ms  0x138e PK11_DeriveWithFlags()
  9870 ms  0x138e basekey:0x7fdeba12a480
  9870 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba752a00
  9871 ms  0x138e PK11_DeriveWithFlags()
  9871 ms  0x138e basekey:0x7fdeba12a480
  9871 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba12a880
  9871 ms  0x138e PK11_DeriveWithFlags()
  9871 ms  0x138e basekey:0x7fdeba12a480
  9871 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba12b000
  9871 ms  0x138e PK11_Derive()
  9871 ms  0x138e basekey:0x7fdeba12a400
  9871 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba12ac00
  9871 ms  0x138e PK11_DeriveWithFlags()
  9871 ms  0x138e basekey:0x7fdeba12a880
  9871 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba12a480
  9871 ms  0x138e PK11_DeriveWithFlags()
  9871 ms  0x138e basekey:0x7fdeba12a880
  9871 ms     | 0x138e PK11_DeriveWithTemplate()
  9871 ms  0x138e ret:0x7fdeba12b000
  9873 ms  SECKEY_ECParamsToKeySize()
  9873 ms  0x138e ret:0x100
  9873 ms  SECKEY_ECParamsToBasePointOrderLen()
  9873 ms  0x138e ret:0x100
  9873 ms  SECKEY_ECParamsToBasePointOrderLen()
  9873 ms  0x138e ret:0x100
  9873 ms  0x138e EC_ValidatePublicKey()
  9879 ms  0x138e ret:0x0
  9884 ms  0x138e PK11_DeriveWithFlags()
  9884 ms  0x138e basekey:0x7fdeba12a880
  9884 ms     | 0x138e PK11_DeriveWithTemplate()
  9884 ms  0x138e ret:0x7fdeba12b000
  9884 ms  0x138e SSL_AuthCertificateComplete()
  9884 ms  0x138e fd:0x7fdeba9b6d00
  9884 ms  0x138e err:0x0
  9884 ms     | 0x138e PK11_DeriveWithFlags()
  9884 ms     | 0x138e basekey:0x7fdeba12ac00
  9884 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9884 ms     | 0x138e ret:0x7fdeba12b000
  9884 ms     | 0x138e PK11_DeriveWithFlags()
  9884 ms     | 0x138e basekey:0x7fdeba12ac00
  9884 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9884 ms     | 0x138e ret:0x7fdeba12a400
  9884 ms     | 0x138e PK11_DeriveWithFlags()
  9884 ms     | 0x138e basekey:0x7fdeba12ac00
  9884 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12aa80
  9885 ms     | 0x138e PK11_DeriveWithFlags()
  9885 ms     | 0x138e basekey:0x7fdeba752a00
  9885 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12ad80
  9885 ms     | 0x138e PK11_DeriveWithFlags()
  9885 ms     | 0x138e basekey:0x7fdeba752a00
  9885 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12ad00
  9885 ms     | 0x138e PK11_DeriveWithFlags()
  9885 ms     | 0x138e basekey:0x7fdeba12a400
  9885 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12ad00
  9885 ms     | 0x138e PK11_DeriveWithFlags()
  9885 ms     | 0x138e basekey:0x7fdeba12a400
  9885 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12ae00
  9885 ms     | 0x138e PK11_DeriveWithFlags()
  9885 ms     | 0x138e basekey:0x7fdeba752a00
  9885 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9885 ms     | 0x138e ret:0x7fdeba12a480
  9885 ms     | 0x138e PK11_Encrypt()
  9885 ms     | 0x138e symkey:0x7fdeba12ad80
  9886 ms     | 0x138e PK11_DeriveWithFlags()
  9886 ms     | 0x138e basekey:0x7fdeba12b000
  9886 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9886 ms     | 0x138e ret:0x7fdeba12a480
  9886 ms     | 0x138e PK11_DeriveWithFlags()
  9886 ms     | 0x138e basekey:0x7fdeba12b000
  9886 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9886 ms     | 0x138e ret:0x7fdeba12ae00
  9886 ms     | 0x138e PK11_DeriveWithFlags()
  9886 ms     | 0x138e basekey:0x7fdeba12ac00
  9886 ms     |    | 0x138e PK11_DeriveWithTemplate()
  9886 ms     | 0x138e ret:0x7fdeba12ad80
  9886 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9886 ms     | 0x138e privk:0x7fdeba4a7020::7fdeba4a7020  f0 5b 66 ba                                      .[f.
  9886 ms     | 0x138e privk:0x7fdeba4a7020::7fdeba4a7020  e5 e5 e5 e5                                      ....
  9887 ms     | 0x138e SECKEY_DestroyPrivateKey()
  9887 ms     | 0x138e privk:0x7fdeba4a4820::7fdeba4a4820  c0 59 66 ba                                      .Yf.
  9887 ms     | 0x138e privk:0x7fdeba4a4820::7fdeba4a4820  e5 e5 e5 e5                                      ....
  9887 ms  0x138e PK11_Encrypt()
  9887 ms  0x138e symkey:0x7fdeba12a480
  9888 ms  0x138e PK11_Encrypt()
  9888 ms  0x138e symkey:0x7fdeba12a480
  9888 ms  0x138e PK11_Encrypt()
  9888 ms  0x138e symkey:0x7fdeba12a480
  9926 ms  0x138e PK11_DeriveWithFlags()
  9926 ms  0x138e basekey:0x7fdeba12ad80
  9926 ms     | 0x138e PK11_DeriveWithTemplate()
  9926 ms  0x138e ret:0x7fdeba12a880
  9927 ms  0x138e PK11_DeriveWithFlags()
  9927 ms  0x138e basekey:0x7fdeba12ad80
  9927 ms     | 0x138e PK11_DeriveWithTemplate()
  9927 ms  0x138e ret:0x7fdeba12a880
  9927 ms  0x138e PK11_Encrypt()
  9927 ms  0x138e symkey:0x7fdeba12a480
  9987 ms  0x138e PK11_Encrypt()
  9987 ms  0x138e symkey:0x7fdeba12a480
  9993 ms  0x138e SSL_ImportFD()
  9993 ms  0x138e ret:0x7fdeba9cd460
  9993 ms  0x138e SSL_AuthCertificateHook()
  9993 ms  0x138e fd:0x7fdeba9cd460
  9993 ms  0x138e ret:0x0
  9994 ms  0x138e PR_Connect()
  9994 ms  0x138e fd:0x7fdeba9cd460
           /* TID 0x1396 */
  9996 ms  0x1396 PR_Close()
  9996 ms  0x1396 fd:0x7fdeba9cd850
           /* TID 0x138e */
 10032 ms  0x138e SECKEY_CreateECPrivateKey()
 10032 ms  0x138e cx:0x7fdeba4c1128
 10032 ms     | 0x138e EC_ValidatePublicKey()
 10032 ms     | 0x138e ret:0x0
 10032 ms  0x138e ret:0x7fdeba4a6820::7fdeba4a6820  f0 5b 66 ba                                      .[f.
 10032 ms  0x138e SECKEY_CreateECPrivateKey()
 10032 ms  0x138e cx:0x7fdeba4c1128
 10033 ms     | 0x138e EC_ValidatePublicKey()
 10034 ms     | 0x138e ret:0x0
 10035 ms  0x138e ret:0x7fdeba4bb020::7fdeba4bb020  f0 a1 66 ba                                      ..f.
 10057 ms  0x138e SSL_ImportFD()
 10057 ms  0x138e ret:0x7fdeba9cda90
 10057 ms  0x138e SSL_AuthCertificateHook()
 10057 ms  0x138e fd:0x7fdeba9cda90
 10057 ms  0x138e ret:0x0
 10058 ms  0x138e PR_Connect()
 10058 ms  0x138e fd:0x7fdeba9cda90
 10090 ms  0x138e PK11_Derive()
 10090 ms  0x138e basekey:0x7fdeba12a880
 10090 ms     | 0x138e PK11_DeriveWithTemplate()
 10090 ms  0x138e ret:0x7fdeba752a00
 10090 ms  0x138e PK11_PubDeriveWithKDF()
 10090 ms  0x138e seckey:0x7fdeba4a6820
 10090 ms     | 0x138e EC_ValidatePublicKey()
 10090 ms     | 0x138e ret:0x0
 10090 ms  0x138e ret:0x7fdeba12a880
 10090 ms  SECKEY_ECParamsToKeySize()
 10090 ms  0x138e ret:0xff
 10090 ms  0x138e PK11_DeriveWithFlags()
 10090 ms  0x138e basekey:0x7fdeba752a00
 10090 ms     | 0x138e PK11_DeriveWithTemplate()
 10090 ms  0x138e ret:0x7fdeba12ac00
 10091 ms  0x138e PK11_Derive()
 10091 ms  0x138e basekey:0x7fdeba12a880
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12ae00
 10091 ms  0x138e PK11_DeriveWithFlags()
 10091 ms  0x138e basekey:0x7fdeba12ae00
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba752a00
 10091 ms  0x138e PK11_DeriveWithFlags()
 10091 ms  0x138e basekey:0x7fdeba12ae00
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12a880
 10091 ms  0x138e PK11_DeriveWithFlags()
 10091 ms  0x138e basekey:0x7fdeba12ae00
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12ac00
 10091 ms  0x138e PK11_Derive()
 10091 ms  0x138e basekey:0x7fdeba91ec00
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12aa00
 10091 ms  0x138e PK11_DeriveWithFlags()
 10091 ms  0x138e basekey:0x7fdeba12a880
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12ae00
 10091 ms  0x138e PK11_DeriveWithFlags()
 10091 ms  0x138e basekey:0x7fdeba12a880
 10091 ms     | 0x138e PK11_DeriveWithTemplate()
 10091 ms  0x138e ret:0x7fdeba12ac00
 10092 ms  0x138e PK11_DeriveWithFlags()
 10092 ms  0x138e basekey:0x7fdeba12a880
 10092 ms     | 0x138e PK11_DeriveWithTemplate()
 10092 ms  0x138e ret:0x7fdeba12ac00
 10106 ms  0x138e SECKEY_CreateECPrivateKey()
 10106 ms  0x138e cx:0x7fdeba4c1468
 10107 ms     | 0x138e EC_ValidatePublicKey()
 10107 ms     | 0x138e ret:0x0
 10107 ms  0x138e ret:0x7fdeba617820::7fdeba617820  d0 a8 66 ba                                      ..f.
 10107 ms  0x138e SECKEY_CreateECPrivateKey()
 10107 ms  0x138e cx:0x7fdeba4c1468
 10108 ms     | 0x138e EC_ValidatePublicKey()
 10109 ms     | 0x138e ret:0x0
 10109 ms  0x138e ret:0x7fdeba619820::7fdeba619820  b0 aa 66 ba                                      ..f.
 10112 ms  0x138e SSL_ImportFD()
 10112 ms  0x138e ret:0x7fdeba9cde20
 10112 ms  0x138e SSL_AuthCertificateHook()
 10112 ms  0x138e fd:0x7fdeba9cde20
 10112 ms  0x138e ret:0x0
 10113 ms  0x138e PR_Connect()
 10113 ms  0x138e fd:0x7fdeba9cde20
 10159 ms  0x138e SECKEY_CreateECPrivateKey()
 10159 ms  0x138e cx:0x7fdeba4c17a8
 10161 ms     | 0x138e EC_ValidatePublicKey()
 10161 ms     | 0x138e ret:0x0
 10161 ms  0x138e ret:0x7fdeba61d020::7fdeba61d020  40 ac 66 ba                                      @.f.
 10161 ms  0x138e SECKEY_CreateECPrivateKey()
 10161 ms  0x138e cx:0x7fdeba4c17a8
 10168 ms     | 0x138e EC_ValidatePublicKey()
 10172 ms     | 0x138e ret:0x0
 10173 ms  0x138e ret:0x7fdeba61f820::7fdeba61f820  d0 ad 66 ba                                      ..f.
 10176 ms  SECKEY_ECParamsToKeySize()
 10176 ms  0x138e ret:0xff
 10176 ms  0x138e SECKEY_CreateECPrivateKey()
 10176 ms  0x138e cx:0x7fdeba4c1468
 10177 ms     | 0x138e EC_ValidatePublicKey()
 10178 ms     | 0x138e ret:0x0
 10178 ms  0x138e ret:0x7fdeba97f820::7fdeba97f820  20 64 68 ba                                       dh.
 10178 ms  0x138e PK11_PubDeriveWithKDF()
 10178 ms  0x138e seckey:0x7fdeba97f820
 10178 ms     | 0x138e EC_ValidatePublicKey()
 10178 ms     | 0x138e ret:0x0
 10179 ms  0x138e ret:0x7fdeba12ac00
 10179 ms  0x138e PK11_DeriveWithFlags()
 10179 ms  0x138e basekey:0x7fdeba12ac00
 10179 ms     | 0x138e PK11_DeriveWithTemplate()
 10179 ms  0x138e ret:0x7fdeba91ec00
 10179 ms  0x138e PK11_Derive()
 10179 ms  0x138e basekey:0x7fdeba91ec00
 10179 ms     | 0x138e PK11_DeriveWithTemplate()
 10179 ms  0x138e ret:0x7fdeba91ea00
 10180 ms  0x138e SECKEY_DestroyPrivateKey()
 10180 ms  0x138e privk:0x7fdeba97f820::7fdeba97f820  20 64 68 ba                                       dh.
 10180 ms  0x138e privk:0x7fdeba97f820::7fdeba97f820  e5 e5 e5 e5                                      ....
 10180 ms  0x138e PK11_Encrypt()
 10180 ms  0x138e symkey:0x7fdeba9cce00
 10226 ms  SECKEY_ECParamsToKeySize()
 10226 ms  0x138e ret:0xff
 10226 ms  0x138e SECKEY_CreateECPrivateKey()
 10226 ms  0x138e cx:0x7fdeba4c17a8
 10227 ms     | 0x138e EC_ValidatePublicKey()
 10227 ms     | 0x138e ret:0x0
 10227 ms  0x138e ret:0x7fdeba990820::7fdeba990820  70 69 68 ba                                      pih.
 10228 ms  0x138e PK11_PubDeriveWithKDF()
 10228 ms  0x138e seckey:0x7fdeba990820
 10228 ms     | 0x138e EC_ValidatePublicKey()
 10228 ms     | 0x138e ret:0x0
 10229 ms  0x138e ret:0x7fdeba12ac00
 10229 ms  0x138e PK11_DeriveWithFlags()
 10229 ms  0x138e basekey:0x7fdeba12ac00
 10229 ms     | 0x138e PK11_DeriveWithTemplate()
 10229 ms  0x138e ret:0x7fdecbaf5180
 10229 ms  0x138e PK11_Derive()
 10229 ms  0x138e basekey:0x7fdecbaf5180
 10229 ms     | 0x138e PK11_DeriveWithTemplate()
 10229 ms  0x138e ret:0x7fdecbaf5200
 10229 ms  0x138e SECKEY_DestroyPrivateKey()
 10229 ms  0x138e privk:0x7fdeba990820::7fdeba990820  70 69 68 ba                                      pih.
 10230 ms  0x138e privk:0x7fdeba990820::7fdeba990820  e5 e5 e5 e5                                      ....
 10230 ms  0x138e PK11_Encrypt()
 10230 ms  0x138e symkey:0x7fdecbaf5380
 10234 ms  0x138e PR_Connect()
 10234 ms  0x138e fd:0x7fdebac901c0
           /* TID 0x1396 */
 10237 ms  0x1396 PR_Close()
 10237 ms  0x1396 fd:0x7fdeba9cda60
           /* TID 0x142b */
 10237 ms  0x142b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10238 ms  0x142b ret:0x0
           /* TID 0x138e */
 10238 ms  0x138e SSL_AuthCertificateComplete()
 10238 ms  0x138e fd:0x7fdeba9cd460
 10238 ms  0x138e err:0x0
 10238 ms     | 0x138e PK11_DeriveWithFlags()
 10238 ms     | 0x138e basekey:0x7fdeba12aa00
 10238 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10238 ms     | 0x138e ret:0x7fdeba12ac00
 10238 ms     | 0x138e PK11_DeriveWithFlags()
 10238 ms     | 0x138e basekey:0x7fdeba12aa00
 10238 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10238 ms     | 0x138e ret:0x7fdeba689800
 10238 ms     | 0x138e PK11_DeriveWithFlags()
 10238 ms     | 0x138e basekey:0x7fdeba12aa00
 10238 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdeba689900
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba752a00
 10239 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdeba752600
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba752a00
 10239 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdecbaf5500
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba689800
 10239 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdecbaf5500
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba689800
 10239 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdecbaf5580
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba752a00
 10239 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10239 ms     | 0x138e ret:0x7fdeba12ae00
 10239 ms     | 0x138e PK11_Encrypt()
 10239 ms     | 0x138e symkey:0x7fdeba752600
 10239 ms     | 0x138e PK11_DeriveWithFlags()
 10239 ms     | 0x138e basekey:0x7fdeba12ac00
 10240 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10240 ms     | 0x138e ret:0x7fdeba12ae00
 10240 ms     | 0x138e PK11_DeriveWithFlags()
 10240 ms     | 0x138e basekey:0x7fdeba12ac00
 10240 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10240 ms     | 0x138e ret:0x7fdecbaf5580
 10240 ms     | 0x138e PK11_DeriveWithFlags()
 10240 ms     | 0x138e basekey:0x7fdeba12aa00
 10240 ms     |    | 0x138e PK11_DeriveWithTemplate()
 10240 ms     | 0x138e ret:0x7fdeba752600
 10240 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10240 ms     | 0x138e privk:0x7fdeba4bb020::7fdeba4bb020  f0 a1 66 ba                                      ..f.
 10240 ms     | 0x138e privk:0x7fdeba4bb020::7fdeba4bb020  e5 e5 e5 e5                                      ....
 10240 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10240 ms     | 0x138e privk:0x7fdeba4a6820::7fdeba4a6820  f0 5b 66 ba                                      .[f.
 10241 ms     | 0x138e privk:0x7fdeba4a6820::7fdeba4a6820  e5 e5 e5 e5                                      ....
 10241 ms  0x138e PK11_Encrypt()
 10241 ms  0x138e symkey:0x7fdeba12ae00
 10241 ms  0x138e PK11_Encrypt()
 10241 ms  0x138e symkey:0x7fdeba12ae00
 10242 ms  0x138e PK11_Encrypt()
 10242 ms  0x138e symkey:0x7fdeba12ae00
           /* TID 0x1396 */
 10246 ms  0x1396 PR_Close()
 10246 ms  0x1396 fd:0x7fdeba9cd730
           /* TID 0x1428 */
 10246 ms  0x1428 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10246 ms  0x1428 ret:0x0
           /* TID 0x138e */
 10248 ms  0x138e SSL_AuthCertificateComplete()
 10248 ms  0x138e fd:0x7fdeba9cda90
 10248 ms  0x138e err:0x0
 10248 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10248 ms     | 0x138e privk:0x7fdeba619820::7fdeba619820  b0 aa 66 ba                                      ..f.
 10248 ms     | 0x138e privk:0x7fdeba619820::7fdeba619820  e5 e5 e5 e5                                      ....
 10248 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10248 ms     | 0x138e privk:0x7fdeba617820::7fdeba617820  d0 a8 66 ba                                      ..f.
 10248 ms     | 0x138e privk:0x7fdeba617820::7fdeba617820  e5 e5 e5 e5                                      ....
 10249 ms  0x138e PK11_Encrypt()
 10249 ms  0x138e symkey:0x7fdeba9cce00
 10249 ms  0x138e PK11_Encrypt()
 10249 ms  0x138e symkey:0x7fdeba9cce00
 10250 ms  0x138e PK11_Encrypt()
 10250 ms  0x138e symkey:0x7fdeba9cce00
 10280 ms  0x138e PK11_DeriveWithFlags()
 10280 ms  0x138e basekey:0x7fdeba752600
 10280 ms     | 0x138e PK11_DeriveWithTemplate()
 10281 ms  0x138e ret:0x7fdeba12a880
 10281 ms  0x138e PK11_DeriveWithFlags()
 10281 ms  0x138e basekey:0x7fdeba752600
 10281 ms     | 0x138e PK11_DeriveWithTemplate()
 10281 ms  0x138e ret:0x7fdeba12a880
 10281 ms  0x138e PK11_Encrypt()
 10281 ms  0x138e symkey:0x7fdeba12ae00
           /* TID 0x1396 */
 10313 ms  0x1396 PR_Close()
 10313 ms  0x1396 fd:0x7fdeba9cdd90
           /* TID 0x1429 */
 10314 ms  0x1429 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10314 ms  0x1429 ret:0x0
           /* TID 0x138e */
 10314 ms  0x138e SSL_AuthCertificateComplete()
 10314 ms  0x138e fd:0x7fdeba9cde20
 10314 ms  0x138e err:0x0
 10314 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10314 ms     | 0x138e privk:0x7fdeba61f820::7fdeba61f820  d0 ad 66 ba                                      ..f.
 10315 ms     | 0x138e privk:0x7fdeba61f820::7fdeba61f820  e5 e5 e5 e5                                      ....
 10315 ms     | 0x138e SECKEY_DestroyPrivateKey()
 10315 ms     | 0x138e privk:0x7fdeba61d020::7fdeba61d020  40 ac 66 ba                                      @.f.
 10315 ms     | 0x138e privk:0x7fdeba61d020::7fdeba61d020  e5 e5 e5 e5                                      ....
 10318 ms  0x138e PK11_Encrypt()
 10318 ms  0x138e symkey:0x7fdecbaf5380
 10318 ms  0x138e PK11_Encrypt()
 10318 ms  0x138e symkey:0x7fdecbaf5380
 10319 ms  0x138e PK11_Encrypt()
 10319 ms  0x138e symkey:0x7fdecbaf5380
 10349 ms  0x138e PK11_Encrypt()
 10349 ms  0x138e symkey:0x7fdeba12ae00
           /* TID 0x1396 */
 10370 ms  0x1396 PR_Close()
 10370 ms  0x1396 fd:0x7fdeba9b6e50
 10529 ms  0x1396 PR_Close()
 10529 ms  0x1396 fd:0x7fdebac90bb0
           /* TID 0x138e */
 10575 ms  0x138e PR_Close()
 10575 ms  0x138e fd:0x7fdecc584d60
           /* TID 0x1383 */
 10576 ms  0x1383 EC_ValidatePublicKey()
 10582 ms  0x1383 ret:0x0
 10582 ms  0x1383 EC_ValidatePublicKey()
 10583 ms  0x1383 ret:0x0
 10583 ms  0x1383 EC_ValidatePublicKey()
 10585 ms  0x1383 ret:0x0
 10585 ms  0x1383 EC_ValidatePublicKey()
 10586 ms  0x1383 ret:0x0
 10586 ms  0x1383 EC_ValidatePublicKey()
 10592 ms  0x1383 ret:0x0
 10592 ms  0x1383 EC_ValidatePublicKey()
 10593 ms  0x1383 ret:0x0
 10593 ms  0x1383 EC_ValidatePublicKey()
 10595 ms  0x1383 ret:0x0
 10595 ms  0x1383 EC_ValidatePublicKey()
 10596 ms  0x1383 ret:0x0
 10596 ms  0x1383 EC_ValidatePublicKey()
 10599 ms  0x1383 ret:0x0
 10599 ms  0x1383 EC_ValidatePublicKey()
 10600 ms  0x1383 ret:0x0
           /* TID 0x138e */
 10601 ms  0x138e PK11_Encrypt()
 10601 ms  0x138e symkey:0x7fdeba12a800
 10601 ms  0x138e PK11_Encrypt()
 10601 ms  0x138e symkey:0x7fdeba12a600
 10601 ms  0x138e PK11_Encrypt()
 10601 ms  0x138e symkey:0x7fdeba752b80
 10601 ms  0x138e PK11_Encrypt()
 10601 ms  0x138e symkey:0x7fdeba9cce00
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdecbaf5380
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba12a480
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba12b400
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba12af00
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba12ae00
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba8e4500
 10602 ms  0x138e PK11_Encrypt()
 10602 ms  0x138e symkey:0x7fdeba12a180
 10603 ms  0x138e PK11_Encrypt()
 10603 ms  0x138e symkey:0x7fdeba9cc280
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdeba593a00
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdeba593c70
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdeba5da700
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdeba8dfca0
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdeba926100
 10603 ms     | 0x138e PK11_Encrypt()
 10603 ms     | 0x138e symkey:0x7fdeba903b80
 10603 ms  0x138e PR_Close()
 10603 ms  0x138e fd:0x7fdecb7a8df0
 10604 ms  0x138e PR_Close()
 10604 ms  0x138e fd:0x7fdecb7a8370
 10604 ms     | 0x138e PK11_Encrypt()
 10604 ms     | 0x138e symkey:0x7fdeba902d00
 10607 ms  0x138e PR_Close()
 10607 ms  0x138e fd:0x7fded9fe8a30
 10607 ms  0x138e PR_Close()
 10607 ms  0x138e fd:0x7fdecbc0bc10
 10607 ms     | 0x138e PK11_Encrypt()
 10607 ms     | 0x138e symkey:0x7fdecd113600
 10607 ms  0x138e PR_Close()
 10607 ms  0x138e fd:0x7fdebac901c0
 10607 ms  0x138e PR_Close()
 10607 ms  0x138e fd:0x7fded5c9dbb0
 10607 ms     | 0x138e PK11_Encrypt()
 10607 ms     | 0x138e symkey:0x7fdecb7a1580
           /* TID 0x13e0 */
 10608 ms  0x13e0 PR_Close()
 10608 ms  0x13e0 fd:0x7fdeba5ce6a0
 10608 ms  0x13e0 PR_Close()
 10608 ms  0x13e0 fd:0x7fdeba5ce6a0
           /* TID 0x138e */
 10611 ms  0x138e PR_Close()
 10611 ms  0x138e fd:0x7fdeba9cd460
 10611 ms     | 0x138e PK11_Encrypt()
 10611 ms     | 0x138e symkey:0x7fdeba12ae00
 10612 ms  0x138e PR_Close()
 10612 ms  0x138e fd:0x7fdeba5da640
 10612 ms     | 0x138e PK11_Encrypt()
 10612 ms     | 0x138e symkey:0x7fdeba12a180
 10612 ms  0x138e PR_Close()
 10612 ms  0x138e fd:0x7fdeba5cec40
 10612 ms     | 0x138e PK11_Encrypt()
 10612 ms     | 0x138e symkey:0x7fdeba752b80
 10612 ms  0x138e PR_Close()
 10612 ms  0x138e fd:0x7fdeba9b6d00
 10612 ms     | 0x138e PK11_Encrypt()
 10612 ms     | 0x138e symkey:0x7fdeba12a480
 10613 ms  0x138e PR_Close()
 10613 ms  0x138e fd:0x7fdeba8df790
 10613 ms     | 0x138e PK11_Encrypt()
 10613 ms     | 0x138e symkey:0x7fdeba8e4500
 10613 ms  0x138e PR_Close()
 10613 ms  0x138e fd:0x7fdeba926520
 10613 ms     | 0x138e PK11_Encrypt()
 10613 ms     | 0x138e symkey:0x7fdeba12af00
 10613 ms  0x138e PR_Close()
 10613 ms  0x138e fd:0x7fdeba8c4b50
 10613 ms     | 0x138e PK11_Encrypt()
 10613 ms     | 0x138e symkey:0x7fdeba12a800
 10614 ms  0x138e PR_Close()
 10614 ms  0x138e fd:0x7fdeba9cde20
 10614 ms     | 0x138e PK11_Encrypt()
 10614 ms     | 0x138e symkey:0x7fdecbaf5380
 10614 ms  0x138e PR_Close()
 10614 ms  0x138e fd:0x7fdeba9cda90
 10614 ms     | 0x138e PK11_Encrypt()
 10614 ms     | 0x138e symkey:0x7fdeba9cce00
 10614 ms  0x138e PR_Close()
 10614 ms  0x138e fd:0x7fdeba668d60
 10614 ms     | 0x138e PK11_Encrypt()
 10614 ms     | 0x138e symkey:0x7fdeba9cc280
 10614 ms  0x138e PR_Close()
 10614 ms  0x138e fd:0x7fdeba593880
 10615 ms     | 0x138e PK11_Encrypt()
 10615 ms     | 0x138e symkey:0x7fdeba12a600
 10615 ms  0x138e PR_Close()
 10615 ms  0x138e fd:0x7fdeba5da910
 10615 ms     | 0x138e PK11_Encrypt()
 10615 ms     | 0x138e symkey:0x7fdeba12b400
           /* TID 0x1383 */
 10616 ms  0x1383 PR_Close()
 10616 ms  0x1383 fd:0x7fdeceb1c0a0
 10616 ms  0x1383 PR_Close()
 10616 ms  0x1383 fd:0x7fdeba5937c0
 10617 ms  0x1383 PR_Close()
 10617 ms  0x1383 fd:0x7fdeba593880
 10617 ms  0x1383 PR_Close()
 10617 ms  0x1383 fd:0x7fdeba5937c0
 10617 ms  0x1383 PR_Close()
 10617 ms  0x1383 fd:0x7fdeba593880
 10617 ms  0x1383 PR_Close()
 10617 ms  0x1383 fd:0x7fdeba5937c0
           /* TID 0x13f3 */
 10620 ms  0x13f3 PR_Close()
 10620 ms  0x13f3 fd:0x7fdeba5937c0
           /* TID 0x1383 */
 10637 ms  0x1383 PR_Close()
 10637 ms  0x1383 fd:0x7fdeba593880
 10637 ms  0x1383 PR_Close()
 10637 ms  0x1383 fd:0x7fdeba668d60
 10638 ms  0x1383 PR_Close()
 10638 ms  0x1383 fd:0x7fdeba593880
 10638 ms  0x1383 PR_Close()
 10638 ms  0x1383 fd:0x7fdeba668d60
 10639 ms  0x1383 PR_Close()
 10639 ms  0x1383 fd:0x7fded69c89a0
 10639 ms  0x1383 PR_Close()
 10639 ms  0x1383 fd:0x7fded69c88b0
 10639 ms  0x1383 PR_Close()
 10639 ms  0x1383 fd:0x7fded69c8a60
 10641 ms  0x1383 PR_Close()
 10641 ms  0x1383 fd:0x7fdeba668fd0
 10643 ms  0x1383 PR_Close()
 10643 ms  0x1383 fd:0x7fdeba668fd0
 10649 ms  0x1383 PR_Close()
 10649 ms  0x1383 fd:0x7fdeba593880
 10649 ms  0x1383 PR_Close()
 10649 ms  0x1383 fd:0x7fdeba6885b0
 10650 ms  0x1383 PR_Close()
 10650 ms  0x1383 fd:0x7fdeba593880
 10651 ms  0x1383 PR_Close()
 10651 ms  0x1383 fd:0x7fdeba6885b0
 10653 ms  0x1383 PR_Close()
 10653 ms  0x1383 fd:0x7fdeba688910
 10654 ms  0x1383 PR_Close()
 10654 ms  0x1383 fd:0x7fdeba688910
 10656 ms  0x1383 PR_Close()
 10656 ms  0x1383 fd:0x7fdeba593880
 10656 ms  0x1383 PR_Close()
 10656 ms  0x1383 fd:0x7fdeba688a00
 10657 ms  0x1383 PR_Close()
 10657 ms  0x1383 fd:0x7fdeba593880
 10657 ms  0x1383 PR_Close()
 10657 ms  0x1383 fd:0x7fdeba688a00
 10659 ms  0x1383 PR_Close()
 10659 ms  0x1383 fd:0x7fdeba8c44f0
 10661 ms  0x1383 PR_Close()
 10661 ms  0x1383 fd:0x7fdeba8c44f0
 10669 ms  0x1383 PR_Close()
 10669 ms  0x1383 fd:0x7fdeba8df5b0
 10670 ms  0x1383 PR_Close()
 10670 ms  0x1383 fd:0x7fdeba8df5b0
 10672 ms  0x1383 PR_Close()
 10672 ms  0x1383 fd:0x7fdeba8df6d0
           /* TID 0x13f3 */
 10678 ms  0x13f3 PR_Close()
 10678 ms  0x13f3 fd:0x7fdeba5ce790
           /* TID 0x1383 */
 10680 ms  0x1383 PR_Close()
 10680 ms  0x1383 fd:0x7fdeba593880
 10680 ms  0x1383 PR_Close()
 10680 ms  0x1383 fd:0x7fdeba63d2e0
           /* TID 0x13f3 */
 10680 ms  0x13f3 PR_Close()
 10680 ms  0x13f3 fd:0x7fdeba5ce790
 10686 ms  0x13f3 PR_Close()
 10686 ms  0x13f3 fd:0x7fdeba5937c0
 10710 ms  0x13f3 PR_Close()
 10710 ms  0x13f3 fd:0x7fdeba593490
           /* TID 0x1388 */
 10719 ms  0x1388 PR_Close()
 10719 ms  0x1388 fd:0x7fded531ef10
           /* TID 0x13e9 */
 10722 ms  0x13e9 PR_Close()
 10722 ms  0x13e9 fd:0x7fdeba5cea60
           /* TID 0x13f3 */
 10728 ms  0x13f3 PR_Close()
 10728 ms  0x13f3 fd:0x7fdeba5ce970
           /* TID 0x1383 */
 10738 ms  0x1383 PR_Close()
 10738 ms  0x1383 fd:0x7fdeba593880
 10738 ms  0x1383 PR_Close()
 10738 ms  0x1383 fd:0x7fdeba5cea60
           /* TID 0x1388 */
 10741 ms  0x1388 PR_Close()
 10741 ms  0x1388 fd:0x7fded1b34910
           /* TID 0x138e */
 10745 ms  0x138e PR_Close()
 10745 ms  0x138e fd:0x7fdecbc0b850
           /* TID 0x13e0 */
 10746 ms  0x13e0 PR_Close()
 10746 ms  0x13e0 fd:0x7fdeba5cea60
 10746 ms  0x13e0 PR_Close()
 10746 ms  0x13e0 fd:0x7fdeba5cea60
 10746 ms  0x13e0 PR_Close()
 10746 ms  0x13e0 fd:0x7fdeba5cea60
 10746 ms  0x13e0 PR_Close()
 10746 ms  0x13e0 fd:0x7fdeba668100
           /* TID 0x13f3 */
 10747 ms  0x13f3 PR_Close()
 10747 ms  0x13f3 fd:0x7fdeba668100
           /* TID 0x1396 */
 10750 ms  0x1396 PR_Close()
 10750 ms  0x1396 fd:0x7fdeba668f10
 10750 ms  0x1396 PR_Close()
 10750 ms  0x1396 fd:0x7fdeba668f40
           /* TID 0x1388 */
 10755 ms  0x1388 PR_Close()
 10755 ms  0x1388 fd:0x7fdecd3d94c0
           /* TID 0x1383 */
 10758 ms  0x1383 PR_Close()
 10758 ms  0x1383 fd:0x7fdeba593880
 10758 ms  0x1383 PR_Close()
 10758 ms  0x1383 fd:0x7fdeba668940
           /* TID 0x13f3 */
 10760 ms  0x13f3 PR_Close()
 10760 ms  0x13f3 fd:0x7fdeba5ce4f0
 10762 ms  0x13f3 PR_Close()
 10762 ms  0x13f3 fd:0x7fdeba532c70
           /* TID 0x1396 */
 10808 ms  0x1396 PR_Close()
 10808 ms  0x1396 fd:0x7fdeba926040
 10808 ms  0x1396 PR_Close()
 10808 ms  0x1396 fd:0x7fdeba9260a0
           /* TID 0x13f3 */
 10835 ms  0x13f3 PR_Close()
 10835 ms  0x13f3 fd:0x7fdeba532c70
 10837 ms  0x13f3 PR_Close()
 10837 ms  0x13f3 fd:0x7fdeba532c70
 10862 ms  0x13f3 PR_Close()
 10862 ms  0x13f3 fd:0x7fdeba532d90
 10865 ms  0x13f3 PR_Close()
 10865 ms  0x13f3 fd:0x7fdeba532dc0
 10887 ms  0x13f3 PR_Close()
 10887 ms  0x13f3 fd:0x7fdeba5ce5e0
 10895 ms  0x13f3 PR_Close()
 10895 ms  0x13f3 fd:0x7fdeba5cedf0
 10902 ms  0x13f3 PR_Close()
 10902 ms  0x13f3 fd:0x7fdeba5da4c0
 10912 ms  0x13f3 PR_Close()
 10912 ms  0x13f3 fd:0x7fdeba5da820
 10915 ms  0x13f3 PR_Close()
 10915 ms  0x13f3 fd:0x7fdeba5da820
           /* TID 0x1383 */
 11071 ms  0x1383 PR_Close()
 11071 ms  0x1383 fd:0x7fdeba532070
 11071 ms  0x1383 PR_Close()
 11071 ms  0x1383 fd:0x7fdeba532070
 11077 ms  0x1383 PR_Close()
 11077 ms  0x1383 fd:0x7fdef3cda130
 11077 ms  0x1383 PR_Close()
 11077 ms  0x1383 fd:0x7fdef3cda190
Process terminated
