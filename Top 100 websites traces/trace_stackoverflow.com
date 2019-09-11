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
           /* TID 0x814 */
    87 ms  0x814 PR_Close()
    87 ms  0x814 fd:0x7fca9e4a1130
           /* TID 0x804 */
   300 ms  0x804 SSL_ImportFD()
   300 ms  0x804 ret:0x7fca9e4a7cd0
   300 ms  0x804 SSL_AuthCertificateHook()
   300 ms  0x804 fd:0x7fca9e4a7cd0
   300 ms  0x804 ret:0x0
   300 ms  0x804 PR_Connect()
   300 ms  0x804 fd:0x7fca9e4a7cd0
   508 ms  0x804 SECKEY_CreateECPrivateKey()
   508 ms  0x804 cx:0x7fca9e0f2248
   510 ms     | 0x804 EC_ValidatePublicKey()
   510 ms     | 0x804 ret:0x0
   510 ms  0x804 ret:0x7fca9e056820::7fca9e056820  b0 4f 52 9f                                      .OR.
   510 ms  0x804 SECKEY_CreateECPrivateKey()
   510 ms  0x804 cx:0x7fca9e0f2248
   512 ms     | 0x804 EC_ValidatePublicKey()
   516 ms     | 0x804 ret:0x0
   516 ms  0x804 ret:0x7fca9e058820::7fca9e058820  f0 f1 0f 9e                                      ....
           /* TID 0x880 */
   618 ms  0x880 PR_Close()
   618 ms  0x880 fd:0x7fca9e4a7c10
   622 ms  0x880 PR_Close()
   622 ms  0x880 fd:0x7fca9e4a7c10
           /* TID 0x804 */
   731 ms  SECKEY_ECParamsToKeySize()
   731 ms  0x804 ret:0x100
   731 ms  0x804 SECKEY_CreateECPrivateKey()
   731 ms  0x804 cx:0x7fca9e0f2248
   732 ms     | 0x804 EC_ValidatePublicKey()
   733 ms     | 0x804 ret:0x0
   733 ms  0x804 ret:0x7fca9e061820::7fca9e061820  30 f8 0f 9e                                      0...
   734 ms  0x804 PK11_PubDeriveWithKDF()
   734 ms  0x804 seckey:0x7fca9e061820
   734 ms     | 0x804 EC_ValidatePublicKey()
   735 ms     | 0x804 ret:0x0
   736 ms  0x804 ret:0x7fca9fdd6b80
   736 ms  0x804 PK11_DeriveWithFlags()
   736 ms  0x804 basekey:0x7fca9fdd6b80
   736 ms     | 0x804 PK11_DeriveWithTemplate()
   736 ms  0x804 ret:0x7fca9e0f7c00
   736 ms  0x804 PK11_Derive()
   736 ms  0x804 basekey:0x7fca9e0f7c00
   736 ms     | 0x804 PK11_DeriveWithTemplate()
   737 ms  0x804 ret:0x7fca9e0f7d00
   737 ms  0x804 SECKEY_DestroyPrivateKey()
   737 ms  0x804 privk:0x7fca9e061820::7fca9e061820  30 f8 0f 9e                                      0...
   737 ms  0x804 privk:0x7fca9e061820::7fca9e061820  e5 e5 e5 e5                                      ....
   737 ms  0x804 PK11_Encrypt()
   737 ms  0x804 symkey:0x7fca9e0f7e80
   737 ms  0x804 PR_Connect()
   737 ms  0x804 fd:0x7fca9e4a7f10
           /* TID 0x880 */
   782 ms  0x880 PR_Close()
   782 ms  0x880 fd:0x7fca9e4a7e80
           /* TID 0x814 */
   790 ms  0x814 PR_Close()
   790 ms  0x814 fd:0x7fca9e4a7e80
           /* TID 0x876 */
   790 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   790 ms  0x876 ret:0x0
           /* TID 0x804 */
   791 ms  0x804 SSL_AuthCertificateComplete()
   791 ms  0x804 fd:0x7fca9e4a7cd0
   791 ms  0x804 err:0x0
   791 ms  0x804 PK11_Encrypt()
   791 ms  0x804 symkey:0x7fca9e0f7e80
   946 ms  0x804 SECKEY_DestroyPrivateKey()
   946 ms  0x804 privk:0x7fca9e058820::7fca9e058820  f0 f1 0f 9e                                      ....
   946 ms  0x804 privk:0x7fca9e058820::7fca9e058820  e5 e5 e5 e5                                      ....
   947 ms  0x804 SECKEY_DestroyPrivateKey()
   947 ms  0x804 privk:0x7fca9e056820::7fca9e056820  b0 4f 52 9f                                      .OR.
   947 ms  0x804 privk:0x7fca9e056820::7fca9e056820  e5 e5 e5 e5                                      ....
  1160 ms  0x804 SSL_ImportFD()
  1160 ms  0x804 ret:0x7fca8d4300a0
  1160 ms  0x804 SSL_AuthCertificateHook()
  1160 ms  0x804 fd:0x7fca8d4300a0
  1160 ms  0x804 ret:0x0
  1160 ms  0x804 PR_Connect()
  1160 ms  0x804 fd:0x7fca8d4300a0
  1187 ms  0x804 SECKEY_CreateECPrivateKey()
  1187 ms  0x804 cx:0x7fca9e0f2588
  1188 ms     | 0x804 EC_ValidatePublicKey()
  1188 ms     | 0x804 ret:0x0
  1188 ms  0x804 ret:0x7fca9e057820::7fca9e057820  50 f6 0f 9e                                      P...
  1188 ms  0x804 SECKEY_CreateECPrivateKey()
  1188 ms  0x804 cx:0x7fca9e0f2588
  1190 ms     | 0x804 EC_ValidatePublicKey()
  1194 ms     | 0x804 ret:0x0
  1194 ms  0x804 ret:0x7fca9e05d820::7fca9e05d820  90 f7 0f 9e                                      ....
           /* TID 0x876 */
  1246 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1246 ms  0x876 ret:0x0
           /* TID 0x804 */
  1247 ms  SECKEY_ECParamsToKeySize()
  1247 ms  0x804 ret:0x100
  1247 ms  0x804 SECKEY_CreateECPrivateKey()
  1247 ms  0x804 cx:0x7fca9e0f2588
  1248 ms     | 0x804 EC_ValidatePublicKey()
  1250 ms     | 0x804 ret:0x0
  1250 ms  0x804 ret:0x7fca9e061020::7fca9e061020  b0 fa 0f 9e                                      ....
  1251 ms  0x804 PK11_PubDeriveWithKDF()
  1251 ms  0x804 seckey:0x7fca9e061020
  1251 ms     | 0x804 EC_ValidatePublicKey()
  1252 ms     | 0x804 ret:0x0
  1253 ms  0x804 ret:0x7fca9fdd6b80
  1254 ms  0x804 PK11_DeriveWithFlags()
  1254 ms  0x804 basekey:0x7fca9fdd6b80
  1254 ms     | 0x804 PK11_DeriveWithTemplate()
  1254 ms  0x804 ret:0x7fca9e0f7380
  1254 ms  0x804 PK11_Derive()
  1254 ms  0x804 basekey:0x7fca9e0f7380
  1254 ms     | 0x804 PK11_DeriveWithTemplate()
  1254 ms  0x804 ret:0x7fca9e0f8700
  1254 ms  0x804 SECKEY_DestroyPrivateKey()
  1254 ms  0x804 privk:0x7fca9e061020::7fca9e061020  b0 fa 0f 9e                                      ....
  1254 ms  0x804 privk:0x7fca9e061020::7fca9e061020  e5 e5 e5 e5                                      ....
  1254 ms  0x804 PK11_Encrypt()
  1254 ms  0x804 symkey:0x7fca9e0f8c00
  1254 ms  0x804 SSL_AuthCertificateComplete()
  1254 ms  0x804 fd:0x7fca8d4300a0
  1254 ms  0x804 err:0x0
  1254 ms  0x804 PK11_Encrypt()
  1254 ms  0x804 symkey:0x7fca9e0f8c00
  1305 ms  0x804 SECKEY_DestroyPrivateKey()
  1305 ms  0x804 privk:0x7fca9e05d820::7fca9e05d820  90 f7 0f 9e                                      ....
  1305 ms  0x804 privk:0x7fca9e05d820::7fca9e05d820  e5 e5 e5 e5                                      ....
  1305 ms  0x804 SECKEY_DestroyPrivateKey()
  1305 ms  0x804 privk:0x7fca9e057820::7fca9e057820  50 f6 0f 9e                                      P...
  1306 ms  0x804 privk:0x7fca9e057820::7fca9e057820  e5 e5 e5 e5                                      ....
  1309 ms  0x804 PK11_Encrypt()
  1309 ms  0x804 symkey:0x7fca9e0f8c00
  1338 ms  0x804 PK11_Encrypt()
  1338 ms  0x804 symkey:0x7fca9e0f8c00
  1367 ms  0x804 PK11_Encrypt()
  1367 ms  0x804 symkey:0x7fca9e0f8c00
  1395 ms  0x804 PK11_Encrypt()
  1395 ms  0x804 symkey:0x7fca9e0f8c00
  1509 ms  0x804 PK11_Encrypt()
  1509 ms  0x804 symkey:0x7fca9e0f8c00
  1539 ms  0x804 PK11_Encrypt()
  1539 ms  0x804 symkey:0x7fca9e0f8c00
  1569 ms  0x804 PK11_Encrypt()
  1569 ms  0x804 symkey:0x7fca9e0f8c00
           /* TID 0x86f */
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430640
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430790
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430640
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430790
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430640
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430790
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430640
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430790
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430640
  1597 ms  0x86f PR_Close()
  1597 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430640
  1598 ms  0x86f PR_Close()
  1598 ms  0x86f fd:0x7fca8d430790
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430640
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430790
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430640
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430790
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430640
  1599 ms  0x86f PR_Close()
  1599 ms  0x86f fd:0x7fca8d430790
  1602 ms  0x86f PR_Close()
  1602 ms  0x86f fd:0x7fca8d430640
  1602 ms  0x86f PR_Close()
  1602 ms  0x86f fd:0x7fca8d430640
  1604 ms  0x86f PR_Close()
  1604 ms  0x86f fd:0x7fca8d430640
  1604 ms  0x86f PR_Close()
  1604 ms  0x86f fd:0x7fca8d430760
  1606 ms  0x86f PR_Close()
  1606 ms  0x86f fd:0x7fca8d430760
  1606 ms  0x86f PR_Close()
  1606 ms  0x86f fd:0x7fca8d430760
  1609 ms  0x86f PR_Close()
  1609 ms  0x86f fd:0x7fca8d430760
  1609 ms  0x86f PR_Close()
  1609 ms  0x86f fd:0x7fca8d430760
  1666 ms  0x86f PR_Close()
  1666 ms  0x86f fd:0x7fca8d430760
  1667 ms  0x86f PR_Close()
  1667 ms  0x86f fd:0x7fca8d430760
  1674 ms  0x86f PR_Close()
  1674 ms  0x86f fd:0x7fca8d430760
  1674 ms  0x86f PR_Close()
  1674 ms  0x86f fd:0x7fca8d430760
  1680 ms  0x86f PR_Close()
  1680 ms  0x86f fd:0x7fca8d430760
  1681 ms  0x86f PR_Close()
  1681 ms  0x86f fd:0x7fca8d430760
  1682 ms  0x86f PR_Close()
  1682 ms  0x86f fd:0x7fca8d430760
  1682 ms  0x86f PR_Close()
  1682 ms  0x86f fd:0x7fca8d430760
           /* TID 0x86c */
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
  1683 ms  0x86c PR_Close()
  1683 ms  0x86c fd:0x7fca8d430760
           /* TID 0x880 */
  2185 ms  0x880 PR_Close()
  2185 ms  0x880 fd:0x7fca8d430190
  2188 ms  0x880 PR_Close()
  2188 ms  0x880 fd:0x7fca8d430190
  2481 ms  0x880 PR_Close()
  2481 ms  0x880 fd:0x7fca8d430280
           /* TID 0x814 */
  4186 ms  0x814 PR_Close()
  4186 ms  0x814 fd:0x7fca8d430280
  4186 ms  0x814 PR_Close()
  4186 ms  0x814 fd:0x7fca8d430790
  4186 ms  0x814 PR_Close()
  4186 ms  0x814 fd:0x7fca8d4307f0
           /* TID 0x804 */
  4590 ms  0x804 SSL_ImportFD()
  4590 ms  0x804 ret:0x7fcaa15946a0
  4590 ms  0x804 SSL_AuthCertificateHook()
  4590 ms  0x804 fd:0x7fcaa15946a0
  4590 ms  0x804 ret:0x0
  4590 ms  0x804 PR_Connect()
  4590 ms  0x804 fd:0x7fcaa15946a0
  4616 ms  0x804 SECKEY_CreateECPrivateKey()
  4616 ms  0x804 cx:0x7fca9e0f28c8
  4617 ms     | 0x804 EC_ValidatePublicKey()
  4617 ms     | 0x804 ret:0x0
  4617 ms  0x804 ret:0x7fca8d20b020::7fca8d20b020  80 b8 63 9f                                      ..c.
  4618 ms  0x804 SECKEY_CreateECPrivateKey()
  4618 ms  0x804 cx:0x7fca9e0f28c8
  4619 ms     | 0x804 EC_ValidatePublicKey()
  4624 ms     | 0x804 ret:0x0
  4624 ms  0x804 ret:0x7fca8d20d020::7fca8d20d020  b0 b5 63 9f                                      ..c.
           /* TID 0x876 */
  4656 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4656 ms  0x876 ret:0x0
           /* TID 0x804 */
  4659 ms  SECKEY_ECParamsToKeySize()
  4659 ms  0x804 ret:0xff
  4659 ms  0x804 SECKEY_CreateECPrivateKey()
  4659 ms  0x804 cx:0x7fca9e0f28c8
  4660 ms     | 0x804 EC_ValidatePublicKey()
  4660 ms     | 0x804 ret:0x0
  4660 ms  0x804 ret:0x7fca8d219820::7fca8d219820  50 f1 2f 8d                                      P./.
  4660 ms  0x804 PK11_PubDeriveWithKDF()
  4660 ms  0x804 seckey:0x7fca8d219820
  4661 ms     | 0x804 EC_ValidatePublicKey()
  4661 ms     | 0x804 ret:0x0
  4662 ms  0x804 ret:0x7fca9fdd6b80
  4663 ms  0x804 PK11_DeriveWithFlags()
  4663 ms  0x804 basekey:0x7fca9fdd6b80
  4663 ms     | 0x804 PK11_DeriveWithTemplate()
  4663 ms  0x804 ret:0x7fcaa1599580
  4663 ms  0x804 PK11_Derive()
  4663 ms  0x804 basekey:0x7fcaa1599580
  4663 ms     | 0x804 PK11_DeriveWithTemplate()
  4663 ms  0x804 ret:0x7fcaa1599600
  4663 ms  0x804 SECKEY_DestroyPrivateKey()
  4663 ms  0x804 privk:0x7fca8d219820::7fca8d219820  50 f1 2f 8d                                      P./.
  4663 ms  0x804 privk:0x7fca8d219820::7fca8d219820  e5 e5 e5 e5                                      ....
  4664 ms  0x804 PK11_Encrypt()
  4664 ms  0x804 symkey:0x7fcaa1599780
  4668 ms  0x804 SSL_AuthCertificateComplete()
  4668 ms  0x804 fd:0x7fcaa15946a0
  4668 ms  0x804 err:0x0
  4669 ms  0x804 PK11_Encrypt()
  4669 ms  0x804 symkey:0x7fcaa1599780
  4669 ms  0x804 PK11_Encrypt()
  4669 ms  0x804 symkey:0x7fcaa1599780
  4690 ms  0x804 SECKEY_DestroyPrivateKey()
  4690 ms  0x804 privk:0x7fca8d20d020::7fca8d20d020  b0 b5 63 9f                                      ..c.
  4691 ms  0x804 privk:0x7fca8d20d020::7fca8d20d020  e5 e5 e5 e5                                      ....
  4691 ms  0x804 SECKEY_DestroyPrivateKey()
  4691 ms  0x804 privk:0x7fca8d20b020::7fca8d20b020  80 b8 63 9f                                      ..c.
  4691 ms  0x804 privk:0x7fca8d20b020::7fca8d20b020  e5 e5 e5 e5                                      ....
  4715 ms  0x804 PK11_Encrypt()
  4715 ms  0x804 symkey:0x7fcaa1599780
           /* TID 0x823 */
  4827 ms  0x823 PR_Close()
  4827 ms  0x823 fd:0x7fcaa43f7580
           /* TID 0x804 */
  4838 ms  0x804 SSL_ImportFD()
  4838 ms  0x804 ret:0x7fca8d3ac7c0
  4838 ms  0x804 SSL_AuthCertificateHook()
  4838 ms  0x804 fd:0x7fca8d3ac7c0
  4838 ms  0x804 ret:0x0
  4838 ms  0x804 PK11_Encrypt()
  4838 ms  0x804 symkey:0x7fcaa1599780
  4839 ms  0x804 PR_Connect()
  4839 ms  0x804 fd:0x7fca8d3ac7c0
  4864 ms  0x804 SECKEY_CreateECPrivateKey()
  4864 ms  0x804 cx:0x7fca9e0f2f48
  4864 ms     | 0x804 EC_ValidatePublicKey()
  4864 ms     | 0x804 ret:0x0
  4864 ms  0x804 ret:0x7fca8d21c020::7fca8d21c020  40 d7 22 8d                                      @.".
  4864 ms  0x804 SECKEY_CreateECPrivateKey()
  4864 ms  0x804 cx:0x7fca9e0f2f48
  4865 ms     | 0x804 EC_ValidatePublicKey()
  4867 ms     | 0x804 ret:0x0
  4867 ms  0x804 ret:0x7fca8d21e020::7fca8d21e020  00 db 22 8d                                      ..".
           /* TID 0x876 */
  4895 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4895 ms  0x876 ret:0x0
           /* TID 0x804 */
  4895 ms  SECKEY_ECParamsToKeySize()
  4895 ms  0x804 ret:0xff
  4895 ms  0x804 SECKEY_CreateECPrivateKey()
  4895 ms  0x804 cx:0x7fca9e0f2f48
  4896 ms     | 0x804 EC_ValidatePublicKey()
  4896 ms     | 0x804 ret:0x0
  4896 ms  0x804 ret:0x7fca8d221020::7fca8d221020  e0 dc 22 8d                                      ..".
  4896 ms  0x804 PK11_PubDeriveWithKDF()
  4896 ms  0x804 seckey:0x7fca8d221020
  4896 ms     | 0x804 EC_ValidatePublicKey()
  4896 ms     | 0x804 ret:0x0
  4897 ms  0x804 ret:0x7fca9fdd6b80
  4897 ms  0x804 PK11_DeriveWithFlags()
  4897 ms  0x804 basekey:0x7fca9fdd6b80
  4897 ms     | 0x804 PK11_DeriveWithTemplate()
  4897 ms  0x804 ret:0x7fca8d2d9780
  4897 ms  0x804 PK11_Derive()
  4897 ms  0x804 basekey:0x7fca8d2d9780
  4897 ms     | 0x804 PK11_DeriveWithTemplate()
  4897 ms  0x804 ret:0x7fca8d2d9880
  4897 ms  0x804 SECKEY_DestroyPrivateKey()
  4897 ms  0x804 privk:0x7fca8d221020::7fca8d221020  e0 dc 22 8d                                      ..".
  4897 ms  0x804 privk:0x7fca8d221020::7fca8d221020  e5 e5 e5 e5                                      ....
  4897 ms  0x804 PK11_Encrypt()
  4897 ms  0x804 symkey:0x7fca8d2d9a00
  4897 ms  0x804 SSL_AuthCertificateComplete()
  4897 ms  0x804 fd:0x7fca8d3ac7c0
  4897 ms  0x804 err:0x0
  4897 ms  0x804 PK11_Encrypt()
  4897 ms  0x804 symkey:0x7fca8d2d9a00
  4923 ms  0x804 SECKEY_DestroyPrivateKey()
  4923 ms  0x804 privk:0x7fca8d21e020::7fca8d21e020  00 db 22 8d                                      ..".
  4923 ms  0x804 privk:0x7fca8d21e020::7fca8d21e020  e5 e5 e5 e5                                      ....
  4923 ms  0x804 SECKEY_DestroyPrivateKey()
  4923 ms  0x804 privk:0x7fca8d21c020::7fca8d21c020  40 d7 22 8d                                      @.".
  4923 ms  0x804 privk:0x7fca8d21c020::7fca8d21c020  e5 e5 e5 e5                                      ....
  4923 ms  0x804 PR_Close()
  4923 ms  0x804 fd:0x7fca8d3ac7c0
  4923 ms     | 0x804 PK11_Encrypt()
  4923 ms     | 0x804 symkey:0x7fca8d2d9a00
           /* TID 0x823 */
  4987 ms  0x823 PR_Close()
  4987 ms  0x823 fd:0x7fca8d3ac880
           /* TID 0x804 */
  5063 ms  0x804 SSL_ImportFD()
  5063 ms  0x804 ret:0x7fca8d4c0d60
  5063 ms  0x804 SSL_AuthCertificateHook()
  5063 ms  0x804 fd:0x7fca8d4c0d60
  5063 ms  0x804 ret:0x0
  5063 ms  0x804 PR_Connect()
  5063 ms  0x804 fd:0x7fca8d4c0d60
           /* TID 0x814 */
  5086 ms  0x814 PR_Close()
  5086 ms  0x814 fd:0x7fca8d14b6d0
           /* TID 0x804 */
  5100 ms  0x804 SECKEY_CreateECPrivateKey()
  5100 ms  0x804 cx:0x7fca9e0f3428
  5101 ms     | 0x804 EC_ValidatePublicKey()
  5101 ms     | 0x804 ret:0x0
  5101 ms  0x804 ret:0x7fca8d4e1020::7fca8d4e1020  80 43 18 8d                                      .C..
  5101 ms  0x804 SECKEY_CreateECPrivateKey()
  5101 ms  0x804 cx:0x7fca9e0f3428
  5101 ms     | 0x804 EC_ValidatePublicKey()
  5103 ms     | 0x804 ret:0x0
  5103 ms  0x804 ret:0x7fca8d4e3020::7fca8d4e3020  00 46 18 8d                                      .F..
  5158 ms  0x804 PK11_Derive()
  5158 ms  0x804 basekey:0x7fca8d2d9880
  5158 ms     | 0x804 PK11_DeriveWithTemplate()
  5158 ms  0x804 ret:0x7fca8d2d9780
  5158 ms  0x804 PK11_PubDeriveWithKDF()
  5158 ms  0x804 seckey:0x7fca8d4e1020
  5158 ms     | 0x804 EC_ValidatePublicKey()
  5158 ms     | 0x804 ret:0x0
  5159 ms  0x804 ret:0x7fca8d2d9880
  5159 ms  SECKEY_ECParamsToKeySize()
  5159 ms  0x804 ret:0xff
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9780
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca9fdd6b80
  5159 ms  0x804 PK11_Derive()
  5159 ms  0x804 basekey:0x7fca8d2d9880
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca8d2d9980
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9980
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca8d2d9780
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9980
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca8d2d9880
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9980
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca9fdd6b80
  5159 ms  0x804 PK11_Derive()
  5159 ms  0x804 basekey:0x7fca8d2d9a80
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca8d2d9900
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9880
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca8d2d9980
  5159 ms  0x804 PK11_DeriveWithFlags()
  5159 ms  0x804 basekey:0x7fca8d2d9880
  5159 ms     | 0x804 PK11_DeriveWithTemplate()
  5159 ms  0x804 ret:0x7fca9fdd6b80
  5163 ms  SECKEY_ECParamsToKeySize()
  5163 ms  0x804 ret:0x100
  5163 ms  SECKEY_ECParamsToBasePointOrderLen()
  5163 ms  0x804 ret:0x100
  5163 ms  SECKEY_ECParamsToBasePointOrderLen()
  5163 ms  0x804 ret:0x100
  5163 ms  0x804 EC_ValidatePublicKey()
  5165 ms  0x804 ret:0x0
  5167 ms  0x804 PK11_DeriveWithFlags()
  5167 ms  0x804 basekey:0x7fca8d2d9880
  5168 ms     | 0x804 PK11_DeriveWithTemplate()
  5168 ms  0x804 ret:0x7fca9fdd6b80
  5168 ms  0x804 PR_Connect()
  5168 ms  0x804 fd:0x7fca8d14bdc0
  5188 ms  0x804 SSL_ImportFD()
  5188 ms  0x804 ret:0x7fca8d14beb0
  5188 ms  0x804 SSL_AuthCertificateHook()
  5188 ms  0x804 fd:0x7fca8d14beb0
  5188 ms  0x804 ret:0x0
  5189 ms  0x804 PK11_Encrypt()
  5189 ms  0x804 symkey:0x7fcaa1599780
  5190 ms  0x804 PK11_Encrypt()
  5190 ms  0x804 symkey:0x7fcaa1599780
  5190 ms  0x804 PR_Connect()
  5190 ms  0x804 fd:0x7fca8d14beb0
  5191 ms  0x804 SSL_ImportFD()
  5191 ms  0x804 ret:0x7fca8d14bd60
  5191 ms  0x804 SSL_AuthCertificateHook()
  5191 ms  0x804 fd:0x7fca8d14bd60
  5191 ms  0x804 ret:0x0
  5191 ms  0x804 PR_Connect()
  5191 ms  0x804 fd:0x7fca8d14bd60
  5191 ms  0x804 SSL_ImportFD()
  5191 ms  0x804 ret:0x7fca8d14be50
  5191 ms  0x804 SSL_AuthCertificateHook()
  5191 ms  0x804 fd:0x7fca8d14be50
  5191 ms  0x804 ret:0x0
  5192 ms  0x804 PR_Connect()
  5192 ms  0x804 fd:0x7fca8d14be50
  5192 ms  0x804 PK11_Encrypt()
  5192 ms  0x804 symkey:0x7fcaa1599780
           /* TID 0x814 */
  5219 ms  0x814 PR_Close()
  5219 ms  0x814 fd:0x7fca8d14bca0
           /* TID 0x804 */
  5221 ms  0x804 SECKEY_CreateECPrivateKey()
  5221 ms  0x804 cx:0x7fca9e0f3aa8
  5223 ms     | 0x804 EC_ValidatePublicKey()
  5223 ms     | 0x804 ret:0x0
  5223 ms  0x804 ret:0x7fca8d196020::7fca8d196020  30 4d 18 8d                                      0M..
  5223 ms  0x804 SECKEY_CreateECPrivateKey()
  5223 ms  0x804 cx:0x7fca9e0f3aa8
  5224 ms     | 0x804 EC_ValidatePublicKey()
  5228 ms     | 0x804 ret:0x0
  5228 ms  0x804 ret:0x7fca8d198020::7fca8d198020  10 4f 18 8d                                      .O..
  5229 ms  0x804 SECKEY_CreateECPrivateKey()
  5229 ms  0x804 cx:0x7fca9e0f3908
  5230 ms     | 0x804 EC_ValidatePublicKey()
  5230 ms     | 0x804 ret:0x0
  5230 ms  0x804 ret:0x7fca8d19a820::7fca8d19a820  80 d8 22 8d                                      ..".
  5230 ms  0x804 SECKEY_CreateECPrivateKey()
  5230 ms  0x804 cx:0x7fca9e0f3908
  5232 ms     | 0x804 EC_ValidatePublicKey()
  5235 ms     | 0x804 ret:0x0
  5235 ms  0x804 ret:0x7fca8d19c820::7fca8d19c820  a0 81 09 9e                                      ....
  5236 ms  0x804 SECKEY_CreateECPrivateKey()
  5236 ms  0x804 cx:0x7fca9e0f3768
  5237 ms     | 0x804 EC_ValidatePublicKey()
  5237 ms     | 0x804 ret:0x0
  5237 ms  0x804 ret:0x7fca8d19f020::7fca8d19f020  20 b9 63 9f                                       .c.
  5237 ms  0x804 SECKEY_CreateECPrivateKey()
  5237 ms  0x804 cx:0x7fca9e0f3768
  5239 ms     | 0x804 EC_ValidatePublicKey()
  5243 ms     | 0x804 ret:0x0
  5243 ms  0x804 ret:0x7fca8d1a1020::7fca8d1a1020  f0 81 06 8d                                      ....
           /* TID 0x814 */
  5249 ms  0x814 PR_Close()
  5249 ms  0x814 fd:0x7fca8d4c0430
           /* TID 0x804 */
  5258 ms  SECKEY_ECParamsToKeySize()
  5258 ms  0x804 ret:0xff
  5258 ms  0x804 SECKEY_CreateECPrivateKey()
  5258 ms  0x804 cx:0x7fca9e0f3aa8
  5259 ms     | 0x804 EC_ValidatePublicKey()
  5259 ms     | 0x804 ret:0x0
  5259 ms  0x804 ret:0x7fca8d1a5820::7fca8d1a5820  b0 85 06 8d                                      ....
  5259 ms  0x804 PK11_PubDeriveWithKDF()
  5259 ms  0x804 seckey:0x7fca8d1a5820
  5259 ms     | 0x804 EC_ValidatePublicKey()
  5259 ms     | 0x804 ret:0x0
  5260 ms  0x804 ret:0x7fca9fdd6b80
  5260 ms  0x804 PK11_DeriveWithFlags()
  5260 ms  0x804 basekey:0x7fca9fdd6b80
  5260 ms     | 0x804 PK11_DeriveWithTemplate()
  5260 ms  0x804 ret:0x7fca8d2d9a80
  5260 ms  0x804 PK11_Derive()
  5260 ms  0x804 basekey:0x7fca8d2d9a80
  5260 ms     | 0x804 PK11_DeriveWithTemplate()
  5260 ms  0x804 ret:0x7fca8d2d9a00
  5260 ms  0x804 SECKEY_DestroyPrivateKey()
  5260 ms  0x804 privk:0x7fca8d1a5820::7fca8d1a5820  b0 85 06 8d                                      ....
  5260 ms  0x804 privk:0x7fca8d1a5820::7fca8d1a5820  e5 e5 e5 e5                                      ....
  5260 ms  0x804 PK11_Encrypt()
  5260 ms  0x804 symkey:0x7fca8d1aba00
           /* TID 0x8cc */
  5262 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5262 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5263 ms  0x804 SSL_AuthCertificateComplete()
  5263 ms  0x804 fd:0x7fca8d14be50
  5263 ms  0x804 err:0x0
  5263 ms  0x804 PK11_Encrypt()
  5263 ms  0x804 symkey:0x7fca8d1aba00
           /* TID 0x8cc */
  5264 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5264 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5264 ms  SECKEY_ECParamsToKeySize()
  5264 ms  0x804 ret:0xff
  5264 ms  0x804 SECKEY_CreateECPrivateKey()
  5264 ms  0x804 cx:0x7fca9e0f3908
  5265 ms     | 0x804 EC_ValidatePublicKey()
  5265 ms     | 0x804 ret:0x0
  5265 ms  0x804 ret:0x7fca8d1a8020::7fca8d1a8020  80 8d 06 8d                                      ....
  5265 ms  0x804 PK11_PubDeriveWithKDF()
  5265 ms  0x804 seckey:0x7fca8d1a8020
  5265 ms     | 0x804 EC_ValidatePublicKey()
  5265 ms     | 0x804 ret:0x0
  5265 ms  0x804 ret:0x7fca9fdd6b80
  5265 ms  0x804 PK11_DeriveWithFlags()
  5265 ms  0x804 basekey:0x7fca9fdd6b80
  5265 ms     | 0x804 PK11_DeriveWithTemplate()
  5265 ms  0x804 ret:0x7fca8d1ab800
  5265 ms  0x804 PK11_Derive()
  5265 ms  0x804 basekey:0x7fca8d1ab800
  5265 ms     | 0x804 PK11_DeriveWithTemplate()
  5266 ms  0x804 ret:0x7fca8d1abc00
  5266 ms  0x804 SECKEY_DestroyPrivateKey()
  5266 ms  0x804 privk:0x7fca8d1a8020::7fca8d1a8020  80 8d 06 8d                                      ....
  5266 ms  0x804 privk:0x7fca8d1a8020::7fca8d1a8020  e5 e5 e5 e5                                      ....
  5266 ms  0x804 PK11_Encrypt()
  5266 ms  0x804 symkey:0x7fca8d1abd80
  5266 ms  0x804 SSL_AuthCertificateComplete()
  5266 ms  0x804 fd:0x7fca8d14bd60
  5266 ms  0x804 err:0x0
           /* TID 0x814 */
  5268 ms  0x814 PR_Close()
  5268 ms  0x814 fd:0x7fca8d4c0fd0
           /* TID 0x804 */
  5274 ms  0x804 PK11_Encrypt()
  5274 ms  0x804 symkey:0x7fca8d1abd80
  5275 ms  SECKEY_ECParamsToKeySize()
  5275 ms  0x804 ret:0xff
  5275 ms  0x804 SECKEY_CreateECPrivateKey()
  5275 ms  0x804 cx:0x7fca9e0f3768
  5275 ms     | 0x804 EC_ValidatePublicKey()
  5275 ms     | 0x804 ret:0x0
  5275 ms  0x804 ret:0x7fca8d1a9820::7fca8d1a9820  d0 8d 06 8d                                      ....
  5275 ms  0x804 PK11_PubDeriveWithKDF()
  5275 ms  0x804 seckey:0x7fca8d1a9820
  5275 ms     | 0x804 EC_ValidatePublicKey()
  5275 ms     | 0x804 ret:0x0
  5276 ms  0x804 ret:0x7fca9fdd6b80
  5276 ms  0x804 PK11_DeriveWithFlags()
  5276 ms  0x804 basekey:0x7fca9fdd6b80
  5276 ms     | 0x804 PK11_DeriveWithTemplate()
  5276 ms  0x804 ret:0x7fca8d1abe80
  5276 ms  0x804 PK11_Derive()
  5276 ms  0x804 basekey:0x7fca8d1abe80
  5276 ms     | 0x804 PK11_DeriveWithTemplate()
  5276 ms  0x804 ret:0x7fca8d1abf00
  5276 ms  0x804 SECKEY_DestroyPrivateKey()
  5276 ms  0x804 privk:0x7fca8d1a9820::7fca8d1a9820  d0 8d 06 8d                                      ....
  5276 ms  0x804 privk:0x7fca8d1a9820::7fca8d1a9820  e5 e5 e5 e5                                      ....
  5276 ms  0x804 PK11_Encrypt()
  5276 ms  0x804 symkey:0x7fca8d1ac080
           /* TID 0x8cc */
  5278 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5278 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5281 ms  0x804 SSL_AuthCertificateComplete()
  5281 ms  0x804 fd:0x7fca8d14beb0
  5281 ms  0x804 err:0x0
  5281 ms  0x804 PK11_Encrypt()
  5281 ms  0x804 symkey:0x7fca8d1ac080
  5286 ms  0x804 SECKEY_DestroyPrivateKey()
  5286 ms  0x804 privk:0x7fca8d198020::7fca8d198020  10 4f 18 8d                                      .O..
  5286 ms  0x804 privk:0x7fca8d198020::7fca8d198020  e5 e5 e5 e5                                      ....
  5286 ms  0x804 SECKEY_DestroyPrivateKey()
  5286 ms  0x804 privk:0x7fca8d196020::7fca8d196020  30 4d 18 8d                                      0M..
  5286 ms  0x804 privk:0x7fca8d196020::7fca8d196020  e5 e5 e5 e5                                      ....
  5286 ms  0x804 PR_Close()
  5286 ms  0x804 fd:0x7fca8d14be50
  5286 ms     | 0x804 PK11_Encrypt()
  5286 ms     | 0x804 symkey:0x7fca8d1aba00
  5291 ms  0x804 SECKEY_DestroyPrivateKey()
  5291 ms  0x804 privk:0x7fca8d19c820::7fca8d19c820  a0 81 09 9e                                      ....
  5292 ms  0x804 privk:0x7fca8d19c820::7fca8d19c820  e5 e5 e5 e5                                      ....
  5292 ms  0x804 SECKEY_DestroyPrivateKey()
  5292 ms  0x804 privk:0x7fca8d19a820::7fca8d19a820  80 d8 22 8d                                      ..".
  5292 ms  0x804 privk:0x7fca8d19a820::7fca8d19a820  e5 e5 e5 e5                                      ....
  5292 ms  0x804 PR_Close()
  5292 ms  0x804 fd:0x7fca8d14bd60
  5292 ms     | 0x804 PK11_Encrypt()
  5292 ms     | 0x804 symkey:0x7fca8d1abd80
  5303 ms  0x804 SECKEY_DestroyPrivateKey()
  5303 ms  0x804 privk:0x7fca8d1a1020::7fca8d1a1020  f0 81 06 8d                                      ....
  5304 ms  0x804 privk:0x7fca8d1a1020::7fca8d1a1020  e5 e5 e5 e5                                      ....
  5304 ms  0x804 SECKEY_DestroyPrivateKey()
  5304 ms  0x804 privk:0x7fca8d19f020::7fca8d19f020  20 b9 63 9f                                       .c.
  5304 ms  0x804 privk:0x7fca8d19f020::7fca8d19f020  e5 e5 e5 e5                                      ....
  5304 ms  0x804 PR_Close()
  5304 ms  0x804 fd:0x7fca8d14beb0
  5304 ms     | 0x804 PK11_Encrypt()
  5304 ms     | 0x804 symkey:0x7fca8d1ac080
           /* TID 0x814 */
  5349 ms  0x814 PR_Close()
  5349 ms  0x814 fd:0x7fca8d14b160
           /* TID 0x876 */
  5349 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5349 ms  0x876 ret:0x0
           /* TID 0x804 */
  5356 ms  0x804 SSL_AuthCertificateComplete()
  5356 ms  0x804 fd:0x7fca8d4c0d60
  5356 ms  0x804 err:0x0
  5356 ms     | 0x804 PK11_DeriveWithFlags()
  5356 ms     | 0x804 basekey:0x7fca8d2d9900
  5356 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5356 ms     | 0x804 ret:0x7fca8d1abf00
  5356 ms     | 0x804 PK11_DeriveWithFlags()
  5356 ms     | 0x804 basekey:0x7fca8d2d9900
  5356 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5356 ms     | 0x804 ret:0x7fca8d1abe80
  5356 ms     | 0x804 PK11_DeriveWithFlags()
  5356 ms     | 0x804 basekey:0x7fca8d2d9900
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d1abc00
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d2d9780
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d1ab800
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d2d9780
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9a00
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d1abe80
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9a00
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d1abe80
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9a80
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d2d9780
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9980
  5357 ms     | 0x804 PK11_Encrypt()
  5357 ms     | 0x804 symkey:0x7fca8d1ab800
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d1abf00
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9980
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d1abf00
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d2d9a80
  5357 ms     | 0x804 PK11_DeriveWithFlags()
  5357 ms     | 0x804 basekey:0x7fca8d2d9900
  5357 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5357 ms     | 0x804 ret:0x7fca8d1ab800
  5357 ms     | 0x804 SECKEY_DestroyPrivateKey()
  5357 ms     | 0x804 privk:0x7fca8d4e3020::7fca8d4e3020  00 46 18 8d                                      .F..
  5357 ms     | 0x804 privk:0x7fca8d4e3020::7fca8d4e3020  e5 e5 e5 e5                                      ....
  5357 ms     | 0x804 SECKEY_DestroyPrivateKey()
  5357 ms     | 0x804 privk:0x7fca8d4e1020::7fca8d4e1020  80 43 18 8d                                      .C..
  5358 ms     | 0x804 privk:0x7fca8d4e1020::7fca8d4e1020  e5 e5 e5 e5                                      ....
  5358 ms  0x804 PK11_Encrypt()
  5358 ms  0x804 symkey:0x7fca8d2d9980
  5358 ms  0x804 PK11_Encrypt()
  5358 ms  0x804 symkey:0x7fca8d2d9980
  5395 ms  0x804 PK11_DeriveWithFlags()
  5395 ms  0x804 basekey:0x7fca8d1ab800
  5395 ms     | 0x804 PK11_DeriveWithTemplate()
  5395 ms  0x804 ret:0x7fca8d2d9880
  5395 ms  0x804 PK11_DeriveWithFlags()
  5395 ms  0x804 basekey:0x7fca8d1ab800
  5395 ms     | 0x804 PK11_DeriveWithTemplate()
  5395 ms  0x804 ret:0x7fca8d2d9880
  5396 ms  0x804 PK11_Encrypt()
  5396 ms  0x804 symkey:0x7fca8d2d9980
  5474 ms  0x804 PK11_Encrypt()
  5474 ms  0x804 symkey:0x7fca8d2d9980
  5474 ms  0x804 SSL_ImportFD()
  5474 ms  0x804 ret:0x7fca8d4c0370
  5474 ms  0x804 SSL_AuthCertificateHook()
  5474 ms  0x804 fd:0x7fca8d4c0370
  5474 ms  0x804 ret:0x0
  5474 ms  0x804 PR_Connect()
  5474 ms  0x804 fd:0x7fca8d4c0370
  5474 ms  0x804 SSL_ImportFD()
  5474 ms  0x804 ret:0x7fca8d14bfa0
  5474 ms  0x804 SSL_AuthCertificateHook()
  5474 ms  0x804 fd:0x7fca8d14bfa0
  5474 ms  0x804 ret:0x0
  5474 ms  0x804 PR_Connect()
  5474 ms  0x804 fd:0x7fca8d14bfa0
  5474 ms  0x804 SSL_ImportFD()
  5474 ms  0x804 ret:0x7fca8d4c07f0
  5474 ms  0x804 SSL_AuthCertificateHook()
  5474 ms  0x804 fd:0x7fca8d4c07f0
  5474 ms  0x804 ret:0x0
  5474 ms  0x804 PR_Connect()
  5474 ms  0x804 fd:0x7fca8d4c07f0
  5475 ms  0x804 SSL_ImportFD()
  5475 ms  0x804 ret:0x7fca8d4c08b0
  5475 ms  0x804 SSL_AuthCertificateHook()
  5475 ms  0x804 fd:0x7fca8d4c08b0
  5475 ms  0x804 ret:0x0
  5475 ms  0x804 PR_Connect()
  5475 ms  0x804 fd:0x7fca8d4c08b0
  5475 ms  0x804 SSL_ImportFD()
  5475 ms  0x804 ret:0x7fca8d3ac9d0
  5475 ms  0x804 SSL_AuthCertificateHook()
  5475 ms  0x804 fd:0x7fca8d3ac9d0
  5475 ms  0x804 ret:0x0
  5475 ms  0x804 PR_Connect()
  5475 ms  0x804 fd:0x7fca8d3ac9d0
  5475 ms  0x804 SSL_ImportFD()
  5475 ms  0x804 ret:0x7fca8d4c00a0
  5475 ms  0x804 SSL_AuthCertificateHook()
  5475 ms  0x804 fd:0x7fca8d4c00a0
  5475 ms  0x804 ret:0x0
  5475 ms  0x804 PR_Connect()
  5475 ms  0x804 fd:0x7fca8d4c00a0
           /* TID 0x814 */
  5476 ms  0x814 PR_Close()
  5476 ms  0x814 fd:0x7fca8d043100
           /* TID 0x804 */
  5500 ms  0x804 SECKEY_CreateECPrivateKey()
  5500 ms  0x804 cx:0x7fca9e0f3908
  5500 ms     | 0x804 EC_ValidatePublicKey()
  5500 ms     | 0x804 ret:0x0
  5500 ms  0x804 ret:0x7fca8d195020::7fca8d195020  60 8f 06 8d                                      `...
  5500 ms  0x804 SECKEY_CreateECPrivateKey()
  5500 ms  0x804 cx:0x7fca9e0f3908
  5501 ms     | 0x804 EC_ValidatePublicKey()
  5502 ms     | 0x804 ret:0x0
  5502 ms  0x804 ret:0x7fca8d197020::7fca8d197020  50 41 18 8d                                      PA..
  5503 ms  0x804 SECKEY_CreateECPrivateKey()
  5503 ms  0x804 cx:0x7fca9e0f35c8
  5503 ms     | 0x804 EC_ValidatePublicKey()
  5503 ms     | 0x804 ret:0x0
  5507 ms  0x804 ret:0x7fca8d199820::7fca8d199820  e0 42 18 8d                                      .B..
  5507 ms  0x804 SECKEY_CreateECPrivateKey()
  5507 ms  0x804 cx:0x7fca9e0f35c8
  5507 ms     | 0x804 EC_ValidatePublicKey()
  5509 ms     | 0x804 ret:0x0
  5509 ms  0x804 ret:0x7fca8d19b820::7fca8d19b820  e0 8c 06 8d                                      ....
  5510 ms  0x804 SECKEY_CreateECPrivateKey()
  5510 ms  0x804 cx:0x7fca9e0f42c8
  5510 ms     | 0x804 EC_ValidatePublicKey()
  5510 ms     | 0x804 ret:0x0
  5510 ms  0x804 ret:0x7fca8d19e020::7fca8d19e020  d0 43 18 8d                                      .C..
  5510 ms  0x804 SECKEY_CreateECPrivateKey()
  5510 ms  0x804 cx:0x7fca9e0f42c8
  5511 ms     | 0x804 EC_ValidatePublicKey()
  5512 ms     | 0x804 ret:0x0
  5512 ms  0x804 ret:0x7fca8d1a0020::7fca8d1a0020  b0 45 18 8d                                      .E..
  5520 ms  0x804 SECKEY_CreateECPrivateKey()
  5520 ms  0x804 cx:0x7fca9e0f4128
  5521 ms     | 0x804 EC_ValidatePublicKey()
  5521 ms     | 0x804 ret:0x0
  5521 ms  0x804 ret:0x7fca8d1a5020::7fca8d1a5020  70 49 18 8d                                      pI..
  5521 ms  0x804 SECKEY_CreateECPrivateKey()
  5521 ms  0x804 cx:0x7fca9e0f4128
  5522 ms     | 0x804 EC_ValidatePublicKey()
  5523 ms     | 0x804 ret:0x0
  5523 ms  0x804 ret:0x7fca8d1a8020::7fca8d1a8020  90 4c 18 8d                                      .L..
  5523 ms  0x804 SECKEY_CreateECPrivateKey()
  5523 ms  0x804 cx:0x7fca9e0f3aa8
  5524 ms     | 0x804 EC_ValidatePublicKey()
  5524 ms     | 0x804 ret:0x0
  5524 ms  0x804 ret:0x7fca8d1aa820::7fca8d1aa820  d0 4d 18 8d                                      .M..
  5524 ms  0x804 SECKEY_CreateECPrivateKey()
  5524 ms  0x804 cx:0x7fca9e0f3aa8
  5525 ms     | 0x804 EC_ValidatePublicKey()
  5526 ms     | 0x804 ret:0x0
  5526 ms  0x804 ret:0x7fca8d4e0020::7fca8d4e0020  b0 4f 18 8d                                      .O..
  5532 ms  0x804 PK11_Encrypt()
  5532 ms  0x804 symkey:0x7fcaa1599780
  5532 ms  0x804 SECKEY_CreateECPrivateKey()
  5532 ms  0x804 cx:0x7fca9e0f4468
  5533 ms     | 0x804 EC_ValidatePublicKey()
  5533 ms     | 0x804 ret:0x0
  5533 ms  0x804 ret:0x7fca9fd12020::7fca9fd12020  f0 31 4c 8d                                      .1L.
  5533 ms  0x804 SECKEY_CreateECPrivateKey()
  5533 ms  0x804 cx:0x7fca9e0f4468
  5534 ms     | 0x804 EC_ValidatePublicKey()
  5535 ms     | 0x804 ret:0x0
  5535 ms  0x804 ret:0x7fca8d0be820::7fca8d0be820  70 3e 4c 8d                                      p>L.
           /* TID 0x8cc */
  5551 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5551 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5552 ms  SECKEY_ECParamsToKeySize()
  5552 ms  0x804 ret:0xff
  5552 ms  0x804 SECKEY_CreateECPrivateKey()
  5552 ms  0x804 cx:0x7fca9e0f3908
  5552 ms     | 0x804 EC_ValidatePublicKey()
  5552 ms     | 0x804 ret:0x0
  5552 ms  0x804 ret:0x7fca8d0c7820::7fca8d0c7820  b0 b0 0b 8d                                      ....
  5552 ms  0x804 PK11_PubDeriveWithKDF()
  5552 ms  0x804 seckey:0x7fca8d0c7820
  5552 ms     | 0x804 EC_ValidatePublicKey()
  5552 ms     | 0x804 ret:0x0
  5553 ms  0x804 ret:0x7fca8d2d9880
  5553 ms  0x804 PK11_DeriveWithFlags()
  5553 ms  0x804 basekey:0x7fca8d2d9880
  5553 ms     | 0x804 PK11_DeriveWithTemplate()
  5553 ms  0x804 ret:0x7fca8d2d9780
  5553 ms  0x804 PK11_Derive()
  5553 ms  0x804 basekey:0x7fca8d2d9780
  5553 ms     | 0x804 PK11_DeriveWithTemplate()
  5553 ms  0x804 ret:0x7fca8d2d9900
  5553 ms  0x804 SECKEY_DestroyPrivateKey()
  5553 ms  0x804 privk:0x7fca8d0c7820::7fca8d0c7820  b0 b0 0b 8d                                      ....
  5553 ms  0x804 privk:0x7fca8d0c7820::7fca8d0c7820  e5 e5 e5 e5                                      ....
  5553 ms  0x804 PK11_Encrypt()
  5553 ms  0x804 symkey:0x7fca8d1abf80
  5553 ms  0x804 SSL_AuthCertificateComplete()
  5553 ms  0x804 fd:0x7fca8d14bfa0
  5553 ms  0x804 err:0x0
           /* TID 0x8d3 */
  5554 ms  0x8d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5554 ms  0x8d3 ret:0x0
           /* TID 0x804 */
  5554 ms  SECKEY_ECParamsToKeySize()
  5554 ms  0x804 ret:0xff
  5554 ms  0x804 SECKEY_CreateECPrivateKey()
  5554 ms  0x804 cx:0x7fca9e0f42c8
  5555 ms     | 0x804 EC_ValidatePublicKey()
  5555 ms     | 0x804 ret:0x0
  5555 ms  0x804 ret:0x7fca8d0c8820::7fca8d0c8820  90 a2 0e 8d                                      ....
  5555 ms  0x804 PK11_PubDeriveWithKDF()
  5555 ms  0x804 seckey:0x7fca8d0c8820
  5555 ms     | 0x804 EC_ValidatePublicKey()
  5555 ms     | 0x804 ret:0x0
  5555 ms  0x804 ret:0x7fca8d2d9880
  5555 ms  0x804 PK11_DeriveWithFlags()
  5555 ms  0x804 basekey:0x7fca8d2d9880
  5555 ms     | 0x804 PK11_DeriveWithTemplate()
  5555 ms  0x804 ret:0x7fca8d2d9a80
  5555 ms  0x804 PK11_Derive()
  5555 ms  0x804 basekey:0x7fca8d2d9a80
  5555 ms     | 0x804 PK11_DeriveWithTemplate()
  5555 ms  0x804 ret:0x7fca9fdd6b80
  5555 ms  0x804 SECKEY_DestroyPrivateKey()
  5555 ms  0x804 privk:0x7fca8d0c8820::7fca8d0c8820  90 a2 0e 8d                                      ....
  5555 ms  0x804 privk:0x7fca8d0c8820::7fca8d0c8820  e5 e5 e5 e5                                      ....
  5556 ms  0x804 PK11_Encrypt()
  5556 ms  0x804 symkey:0x7fca8d1abc80
  5556 ms  0x804 PK11_Encrypt()
  5556 ms  0x804 symkey:0x7fca8d1abf80
  5556 ms  0x804 PK11_Encrypt()
  5556 ms  0x804 symkey:0x7fca8d1abf80
           /* TID 0x876 */
  5557 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5557 ms  0x876 ret:0x0
           /* TID 0x804 */
  5557 ms  SECKEY_ECParamsToKeySize()
  5557 ms  0x804 ret:0xff
  5557 ms  0x804 SECKEY_CreateECPrivateKey()
  5557 ms  0x804 cx:0x7fca9e0f35c8
  5558 ms     | 0x804 EC_ValidatePublicKey()
  5558 ms     | 0x804 ret:0x0
  5558 ms  0x804 ret:0x7fca8d0cb020::7fca8d0cb020  30 a3 0e 8d                                      0...
  5558 ms  0x804 PK11_PubDeriveWithKDF()
  5558 ms  0x804 seckey:0x7fca8d0cb020
  5558 ms     | 0x804 EC_ValidatePublicKey()
  5558 ms     | 0x804 ret:0x0
  5558 ms  0x804 ret:0x7fca8d2d9880
  5558 ms  0x804 PK11_DeriveWithFlags()
  5558 ms  0x804 basekey:0x7fca8d2d9880
  5558 ms     | 0x804 PK11_DeriveWithTemplate()
  5558 ms  0x804 ret:0x7fca8d1ab980
  5558 ms  0x804 PK11_Derive()
  5558 ms  0x804 basekey:0x7fca8d1ab980
  5558 ms     | 0x804 PK11_DeriveWithTemplate()
  5558 ms  0x804 ret:0x7fca8d1aba80
  5558 ms  0x804 SECKEY_DestroyPrivateKey()
  5558 ms  0x804 privk:0x7fca8d0cb020::7fca8d0cb020  30 a3 0e 8d                                      0...
  5558 ms  0x804 privk:0x7fca8d0cb020::7fca8d0cb020  e5 e5 e5 e5                                      ....
  5559 ms  0x804 PK11_Encrypt()
  5559 ms  0x804 symkey:0x7fca8d4f7e80
  5559 ms  0x804 SSL_AuthCertificateComplete()
  5559 ms  0x804 fd:0x7fca8d3ac9d0
  5559 ms  0x804 err:0x0
  5559 ms  0x804 PK11_Encrypt()
  5559 ms  0x804 symkey:0x7fca8d1abf80
  5559 ms  0x804 PK11_Encrypt()
  5559 ms  0x804 symkey:0x7fca8d1abf80
  5559 ms  0x804 SSL_AuthCertificateComplete()
  5559 ms  0x804 fd:0x7fca8d4c0370
  5559 ms  0x804 err:0x0
           /* TID 0x814 */
  5560 ms  0x814 PR_Close()
  5560 ms  0x814 fd:0x7fca8d043430
           /* TID 0x804 */
  5560 ms  0x804 PK11_Encrypt()
  5560 ms  0x804 symkey:0x7fca8d1abc80
           /* TID 0x8cc */
  5561 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5561 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5561 ms  SECKEY_ECParamsToKeySize()
  5561 ms  0x804 ret:0xff
  5561 ms  0x804 SECKEY_CreateECPrivateKey()
  5561 ms  0x804 cx:0x7fca9e0f4128
  5562 ms     | 0x804 EC_ValidatePublicKey()
  5562 ms     | 0x804 ret:0x0
  5562 ms  0x804 ret:0x7fca8d0cf020::7fca8d0cf020  d0 a3 0e 8d                                      ....
  5562 ms  0x804 PK11_PubDeriveWithKDF()
  5562 ms  0x804 seckey:0x7fca8d0cf020
  5562 ms     | 0x804 EC_ValidatePublicKey()
  5562 ms     | 0x804 ret:0x0
  5562 ms  0x804 ret:0x7fca8d2d9880
  5562 ms  0x804 PK11_DeriveWithFlags()
  5562 ms  0x804 basekey:0x7fca8d2d9880
  5562 ms     | 0x804 PK11_DeriveWithTemplate()
  5562 ms  0x804 ret:0x7fca8d1acc80
  5562 ms  0x804 PK11_Derive()
  5562 ms  0x804 basekey:0x7fca8d1acc80
  5562 ms     | 0x804 PK11_DeriveWithTemplate()
  5562 ms  0x804 ret:0x7fca9e09eb00
  5562 ms  0x804 SECKEY_DestroyPrivateKey()
  5562 ms  0x804 privk:0x7fca8d0cf020::7fca8d0cf020  d0 a3 0e 8d                                      ....
  5563 ms  0x804 privk:0x7fca8d0cf020::7fca8d0cf020  e5 e5 e5 e5                                      ....
  5563 ms  0x804 PK11_Encrypt()
  5563 ms  0x804 symkey:0x7fca9e742280
           /* TID 0x8d3 */
  5563 ms  0x8d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5563 ms  0x8d3 ret:0x0
           /* TID 0x804 */
  5563 ms  SECKEY_ECParamsToKeySize()
  5563 ms  0x804 ret:0xff
  5563 ms  0x804 SECKEY_CreateECPrivateKey()
  5563 ms  0x804 cx:0x7fca9e0f3aa8
  5564 ms     | 0x804 EC_ValidatePublicKey()
  5564 ms     | 0x804 ret:0x0
  5564 ms  0x804 ret:0x7fca8d0d0020::7fca8d0d0020  70 a4 0e 8d                                      p...
  5564 ms  0x804 PK11_PubDeriveWithKDF()
  5564 ms  0x804 seckey:0x7fca8d0d0020
  5564 ms     | 0x804 EC_ValidatePublicKey()
  5564 ms     | 0x804 ret:0x0
  5564 ms  0x804 ret:0x7fca8d2d9880
  5565 ms  0x804 PK11_DeriveWithFlags()
  5565 ms  0x804 basekey:0x7fca8d2d9880
  5565 ms     | 0x804 PK11_DeriveWithTemplate()
  5565 ms  0x804 ret:0x7fcaa1598c00
  5565 ms  0x804 PK11_Derive()
  5565 ms  0x804 basekey:0x7fcaa1598c00
  5565 ms     | 0x804 PK11_DeriveWithTemplate()
  5565 ms  0x804 ret:0x7fcaa81ec880
  5565 ms  0x804 SECKEY_DestroyPrivateKey()
  5565 ms  0x804 privk:0x7fca8d0d0020::7fca8d0d0020  70 a4 0e 8d                                      p...
  5565 ms  0x804 privk:0x7fca8d0d0020::7fca8d0d0020  e5 e5 e5 e5                                      ....
  5565 ms  0x804 PK11_Encrypt()
  5565 ms  0x804 symkey:0x7fca8cf49180
  5565 ms  0x804 PK11_Encrypt()
  5565 ms  0x804 symkey:0x7fca8d1abf80
  5567 ms  0x804 PK11_Encrypt()
  5567 ms  0x804 symkey:0x7fca8d4f7e80
  5567 ms  0x804 SSL_AuthCertificateComplete()
  5567 ms  0x804 fd:0x7fca8d4c08b0
  5567 ms  0x804 err:0x0
  5567 ms  0x804 SSL_AuthCertificateComplete()
  5567 ms  0x804 fd:0x7fca8d4c07f0
  5567 ms  0x804 err:0x0
  5567 ms  0x804 PK11_Encrypt()
  5567 ms  0x804 symkey:0x7fca8d1abf80
           /* TID 0x876 */
  5570 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5571 ms  0x876 ret:0x0
           /* TID 0x804 */
  5571 ms  SECKEY_ECParamsToKeySize()
  5571 ms  0x804 ret:0xff
  5571 ms  0x804 SECKEY_CreateECPrivateKey()
  5571 ms  0x804 cx:0x7fca9e0f4468
  5571 ms     | 0x804 EC_ValidatePublicKey()
  5571 ms     | 0x804 ret:0x0
  5571 ms  0x804 ret:0x7fca8d0d3020::7fca8d0d3020  60 a5 0e 8d                                      `...
  5571 ms  0x804 PK11_PubDeriveWithKDF()
  5571 ms  0x804 seckey:0x7fca8d0d3020
  5571 ms     | 0x804 EC_ValidatePublicKey()
  5571 ms     | 0x804 ret:0x0
  5572 ms  0x804 ret:0x7fca8d2d9880
  5572 ms  0x804 PK11_DeriveWithFlags()
  5572 ms  0x804 basekey:0x7fca8d2d9880
  5572 ms     | 0x804 PK11_DeriveWithTemplate()
  5572 ms  0x804 ret:0x7fca8cf49400
  5572 ms  0x804 PK11_Derive()
  5572 ms  0x804 basekey:0x7fca8cf49400
  5572 ms     | 0x804 PK11_DeriveWithTemplate()
  5572 ms  0x804 ret:0x7fca8cf49480
  5572 ms  0x804 SECKEY_DestroyPrivateKey()
  5572 ms  0x804 privk:0x7fca8d0d3020::7fca8d0d3020  60 a5 0e 8d                                      `...
  5572 ms  0x804 privk:0x7fca8d0d3020::7fca8d0d3020  e5 e5 e5 e5                                      ....
  5572 ms  0x804 PK11_Encrypt()
  5572 ms  0x804 symkey:0x7fca8cf49800
  5572 ms  0x804 PK11_Encrypt()
  5572 ms  0x804 symkey:0x7fca9e742280
  5573 ms  0x804 PK11_Encrypt()
  5573 ms  0x804 symkey:0x7fca8cf49180
  5573 ms  0x804 PK11_Encrypt()
  5573 ms  0x804 symkey:0x7fca8d1abf80
  5573 ms  0x804 SSL_AuthCertificateComplete()
  5573 ms  0x804 fd:0x7fca8d4c00a0
  5573 ms  0x804 err:0x0
  5573 ms  0x804 PK11_Encrypt()
  5573 ms  0x804 symkey:0x7fca8d1abf80
  5574 ms  0x804 PK11_Encrypt()
  5574 ms  0x804 symkey:0x7fca8cf49800
  5575 ms  0x804 PK11_Encrypt()
  5575 ms  0x804 symkey:0x7fca8d1abf80
  5575 ms  0x804 PK11_Encrypt()
  5575 ms  0x804 symkey:0x7fcaa1599780
  5576 ms  0x804 PK11_Encrypt()
  5576 ms  0x804 symkey:0x7fca8d1abf80
  5577 ms  0x804 PK11_Encrypt()
  5577 ms  0x804 symkey:0x7fcaa1599780
  5579 ms  0x804 SECKEY_DestroyPrivateKey()
  5579 ms  0x804 privk:0x7fca8d197020::7fca8d197020  50 41 18 8d                                      PA..
  5579 ms  0x804 privk:0x7fca8d197020::7fca8d197020  e5 e5 e5 e5                                      ....
  5579 ms  0x804 SECKEY_DestroyPrivateKey()
  5579 ms  0x804 privk:0x7fca8d195020::7fca8d195020  60 8f 06 8d                                      `...
  5579 ms  0x804 privk:0x7fca8d195020::7fca8d195020  e5 e5 e5 e5                                      ....
  5579 ms  0x804 PK11_Encrypt()
  5579 ms  0x804 symkey:0x7fca8d1abf80
  5581 ms  0x804 SECKEY_DestroyPrivateKey()
  5581 ms  0x804 privk:0x7fca8d1a0020::7fca8d1a0020  b0 45 18 8d                                      .E..
  5581 ms  0x804 privk:0x7fca8d1a0020::7fca8d1a0020  e5 e5 e5 e5                                      ....
  5581 ms  0x804 SECKEY_DestroyPrivateKey()
  5581 ms  0x804 privk:0x7fca8d19e020::7fca8d19e020  d0 43 18 8d                                      .C..
  5581 ms  0x804 privk:0x7fca8d19e020::7fca8d19e020  e5 e5 e5 e5                                      ....
  5581 ms  0x804 PR_Close()
  5581 ms  0x804 fd:0x7fca8d3ac9d0
  5581 ms     | 0x804 PK11_Encrypt()
  5581 ms     | 0x804 symkey:0x7fca8d1abc80
  5585 ms  0x804 SECKEY_DestroyPrivateKey()
  5585 ms  0x804 privk:0x7fca8d19b820::7fca8d19b820  e0 8c 06 8d                                      ....
  5588 ms  0x804 privk:0x7fca8d19b820::7fca8d19b820  e5 e5 e5 e5                                      ....
  5588 ms  0x804 SECKEY_DestroyPrivateKey()
  5588 ms  0x804 privk:0x7fca8d199820::7fca8d199820  e0 42 18 8d                                      .B..
  5588 ms  0x804 privk:0x7fca8d199820::7fca8d199820  e5 e5 e5 e5                                      ....
  5588 ms  0x804 PR_Close()
  5588 ms  0x804 fd:0x7fca8d4c0370
  5588 ms     | 0x804 PK11_Encrypt()
  5588 ms     | 0x804 symkey:0x7fca8d4f7e80
  5589 ms  0x804 SECKEY_DestroyPrivateKey()
  5589 ms  0x804 privk:0x7fca8d1a8020::7fca8d1a8020  90 4c 18 8d                                      .L..
  5589 ms  0x804 privk:0x7fca8d1a8020::7fca8d1a8020  e5 e5 e5 e5                                      ....
  5589 ms  0x804 SECKEY_DestroyPrivateKey()
  5589 ms  0x804 privk:0x7fca8d1a5020::7fca8d1a5020  70 49 18 8d                                      pI..
  5589 ms  0x804 privk:0x7fca8d1a5020::7fca8d1a5020  e5 e5 e5 e5                                      ....
  5589 ms  0x804 PR_Close()
  5589 ms  0x804 fd:0x7fca8d4c08b0
  5589 ms     | 0x804 PK11_Encrypt()
  5589 ms     | 0x804 symkey:0x7fca9e742280
  5590 ms  0x804 SECKEY_DestroyPrivateKey()
  5590 ms  0x804 privk:0x7fca8d4e0020::7fca8d4e0020  b0 4f 18 8d                                      .O..
  5590 ms  0x804 privk:0x7fca8d4e0020::7fca8d4e0020  e5 e5 e5 e5                                      ....
  5590 ms  0x804 SECKEY_DestroyPrivateKey()
  5590 ms  0x804 privk:0x7fca8d1aa820::7fca8d1aa820  d0 4d 18 8d                                      .M..
  5590 ms  0x804 privk:0x7fca8d1aa820::7fca8d1aa820  e5 e5 e5 e5                                      ....
  5590 ms  0x804 PR_Close()
  5590 ms  0x804 fd:0x7fca8d4c07f0
  5590 ms     | 0x804 PK11_Encrypt()
  5590 ms     | 0x804 symkey:0x7fca8cf49180
  5591 ms  0x804 PK11_Encrypt()
  5591 ms  0x804 symkey:0x7fcaa1599780
  5598 ms  0x804 SECKEY_DestroyPrivateKey()
  5598 ms  0x804 privk:0x7fca8d0be820::7fca8d0be820  70 3e 4c 8d                                      p>L.
  5598 ms  0x804 privk:0x7fca8d0be820::7fca8d0be820  e5 e5 e5 e5                                      ....
  5598 ms  0x804 SECKEY_DestroyPrivateKey()
  5598 ms  0x804 privk:0x7fca9fd12020::7fca9fd12020  f0 31 4c 8d                                      .1L.
  5598 ms  0x804 privk:0x7fca9fd12020::7fca9fd12020  e5 e5 e5 e5                                      ....
  5598 ms  0x804 PR_Close()
  5598 ms  0x804 fd:0x7fca8d4c00a0
  5598 ms     | 0x804 PK11_Encrypt()
  5598 ms     | 0x804 symkey:0x7fca8cf49800
           /* TID 0x814 */
  5602 ms  0x814 PR_Close()
  5602 ms  0x814 fd:0x7fca8d043040
  5628 ms  0x814 PR_Close()
  5628 ms  0x814 fd:0x7fca8d043070
  5629 ms  0x814 PR_Close()
  5629 ms  0x814 fd:0x7fca8d043070
  5632 ms  0x814 PR_Close()
  5632 ms  0x814 fd:0x7fca8d0431c0
  5645 ms  0x814 PR_Close()
  5645 ms  0x814 fd:0x7fca8d0431f0
  5646 ms  0x814 PR_Close()
  5646 ms  0x814 fd:0x7fca8d0431f0
  5649 ms  0x814 PR_Close()
  5649 ms  0x814 fd:0x7fca8d0431f0
  5650 ms  0x814 PR_Close()
  5650 ms  0x814 fd:0x7fca8d0431f0
  5651 ms  0x814 PR_Close()
  5651 ms  0x814 fd:0x7fca8d0431f0
           /* TID 0x804 */
  5654 ms  0x804 PK11_Encrypt()
  5654 ms  0x804 symkey:0x7fcaa1599780
           /* TID 0x814 */
  5682 ms  0x814 PR_Close()
  5682 ms  0x814 fd:0x7fca8d14b100
  5683 ms  0x814 PR_Close()
  5683 ms  0x814 fd:0x7fca8d043f70
  5683 ms  0x814 PR_Close()
  5683 ms  0x814 fd:0x7fca8d14b670
  5695 ms  0x814 PR_Close()
  5695 ms  0x814 fd:0x7fca8d0430d0
           /* TID 0x804 */
  5695 ms  0x804 PK11_Encrypt()
  5695 ms  0x804 symkey:0x7fcaa1599780
           /* TID 0x814 */
  5722 ms  0x814 PR_Close()
  5722 ms  0x814 fd:0x7fca8d0432e0
           /* TID 0x804 */
  5723 ms  0x804 PK11_Encrypt()
  5723 ms  0x804 symkey:0x7fcaa1599780
  5724 ms  0x804 PK11_Encrypt()
  5724 ms  0x804 symkey:0x7fcaa1599780
  5724 ms  0x804 SSL_ImportFD()
  5724 ms  0x804 ret:0x7fca8d4c0e50
  5724 ms  0x804 SSL_AuthCertificateHook()
  5724 ms  0x804 fd:0x7fca8d4c0e50
  5724 ms  0x804 ret:0x0
  5724 ms  0x804 PR_Connect()
  5724 ms  0x804 fd:0x7fca8d4c0e50
  5724 ms  0x804 SSL_ImportFD()
  5724 ms  0x804 ret:0x7fca8d4c02e0
  5724 ms  0x804 SSL_AuthCertificateHook()
  5724 ms  0x804 fd:0x7fca8d4c02e0
  5724 ms  0x804 ret:0x0
  5724 ms  0x804 PR_Connect()
  5724 ms  0x804 fd:0x7fca8d4c02e0
  5724 ms  0x804 SSL_ImportFD()
  5724 ms  0x804 ret:0x7fca9f57f160
  5724 ms  0x804 SSL_AuthCertificateHook()
  5724 ms  0x804 fd:0x7fca9f57f160
  5724 ms  0x804 ret:0x0
  5724 ms  0x804 PR_Connect()
  5724 ms  0x804 fd:0x7fca9f57f160
  5724 ms  0x804 SSL_ImportFD()
  5724 ms  0x804 ret:0x7fca9f64f730
  5724 ms  0x804 SSL_AuthCertificateHook()
  5724 ms  0x804 fd:0x7fca9f64f730
  5724 ms  0x804 ret:0x0
  5724 ms  0x804 PR_Connect()
  5724 ms  0x804 fd:0x7fca9f64f730
  5738 ms  0x804 PK11_Encrypt()
  5738 ms  0x804 symkey:0x7fcaa1599780
  5738 ms  0x804 PK11_Encrypt()
  5738 ms  0x804 symkey:0x7fcaa1599780
           /* TID 0x814 */
  5750 ms  0x814 PR_Close()
  5750 ms  0x814 fd:0x7fca8d14bf10
           /* TID 0x804 */
  5761 ms  0x804 SECKEY_CreateECPrivateKey()
  5761 ms  0x804 cx:0x7fca9e0f35c8
  5762 ms     | 0x804 EC_ValidatePublicKey()
  5762 ms     | 0x804 ret:0x0
  5762 ms  0x804 ret:0x7fca8d0cd020::7fca8d0cd020  40 22 14 8d                                      @"..
  5762 ms  0x804 SECKEY_CreateECPrivateKey()
  5762 ms  0x804 cx:0x7fca9e0f35c8
  5762 ms     | 0x804 EC_ValidatePublicKey()
  5764 ms     | 0x804 ret:0x0
  5764 ms  0x804 ret:0x7fca8d0cf020::7fca8d0cf020  70 24 14 8d                                      p$..
  5765 ms  0x804 SECKEY_CreateECPrivateKey()
  5765 ms  0x804 cx:0x7fca9e0f3aa8
  5765 ms     | 0x804 EC_ValidatePublicKey()
  5765 ms     | 0x804 ret:0x0
  5765 ms  0x804 ret:0x7fca8d0d2020::7fca8d0d2020  10 25 14 8d                                      .%..
  5765 ms  0x804 SECKEY_CreateECPrivateKey()
  5765 ms  0x804 cx:0x7fca9e0f3aa8
  5766 ms     | 0x804 EC_ValidatePublicKey()
  5771 ms     | 0x804 ret:0x0
  5771 ms  0x804 ret:0x7fca8d0d4020::7fca8d0d4020  40 42 18 8d                                      @B..
  5771 ms  0x804 SECKEY_CreateECPrivateKey()
  5771 ms  0x804 cx:0x7fca9e0f4128
  5772 ms     | 0x804 EC_ValidatePublicKey()
  5772 ms     | 0x804 ret:0x0
  5772 ms  0x804 ret:0x7fca8d0d7020::7fca8d0d7020  80 43 18 8d                                      .C..
  5772 ms  0x804 SECKEY_CreateECPrivateKey()
  5772 ms  0x804 cx:0x7fca9e0f4128
  5773 ms     | 0x804 EC_ValidatePublicKey()
  5790 ms     | 0x804 ret:0x0
  5790 ms  0x804 ret:0x7fca8d0d9020::7fca8d0d9020  90 a2 0e 8d                                      ....
           /* TID 0x814 */
  5791 ms  0x814 PR_Close()
  5791 ms  0x814 fd:0x7fca8d14bf10
           /* TID 0x804 */
  5791 ms  0x804 SECKEY_CreateECPrivateKey()
  5791 ms  0x804 cx:0x7fca9e0f42c8
  5792 ms     | 0x804 EC_ValidatePublicKey()
  5792 ms     | 0x804 ret:0x0
  5792 ms  0x804 ret:0x7fca8d0db820::7fca8d0db820  d0 a8 0e 8d                                      ....
  5792 ms  0x804 SECKEY_CreateECPrivateKey()
  5792 ms  0x804 cx:0x7fca9e0f42c8
  5792 ms     | 0x804 EC_ValidatePublicKey()
  5794 ms     | 0x804 ret:0x0
  5794 ms  0x804 ret:0x7fca8d192820::7fca8d192820  80 48 18 8d                                      .H..
  5818 ms  0x804 PK11_Derive()
  5818 ms  0x804 basekey:0x7fca8cf49480
  5818 ms     | 0x804 PK11_DeriveWithTemplate()
  5818 ms  0x804 ret:0x7fca8cf49400
  5818 ms  0x804 PK11_PubDeriveWithKDF()
  5818 ms  0x804 seckey:0x7fca8d0cd020
  5818 ms     | 0x804 EC_ValidatePublicKey()
  5818 ms     | 0x804 ret:0x0
  5818 ms  0x804 ret:0x7fca8cf49480
  5818 ms  SECKEY_ECParamsToKeySize()
  5818 ms  0x804 ret:0xff
  5818 ms  0x804 PK11_DeriveWithFlags()
  5818 ms  0x804 basekey:0x7fca8cf49400
  5818 ms     | 0x804 PK11_DeriveWithTemplate()
  5818 ms  0x804 ret:0x7fcaa81ec880
  5818 ms  0x804 PK11_Derive()
  5818 ms  0x804 basekey:0x7fca8cf49480
  5818 ms     | 0x804 PK11_DeriveWithTemplate()
  5818 ms  0x804 ret:0x7fcaa1598c00
  5819 ms  0x804 PK11_DeriveWithFlags()
  5819 ms  0x804 basekey:0x7fcaa1598c00
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fca8cf49400
  5819 ms  0x804 PK11_DeriveWithFlags()
  5819 ms  0x804 basekey:0x7fcaa1598c00
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fca8cf49480
  5819 ms  0x804 PK11_DeriveWithFlags()
  5819 ms  0x804 basekey:0x7fcaa1598c00
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fcaa81ec880
  5819 ms  0x804 PK11_Derive()
  5819 ms  0x804 basekey:0x7fca9e09eb00
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fca8d1acc80
  5819 ms  0x804 PK11_DeriveWithFlags()
  5819 ms  0x804 basekey:0x7fca8cf49480
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fcaa1598c00
  5819 ms  0x804 PK11_DeriveWithFlags()
  5819 ms  0x804 basekey:0x7fca8cf49480
  5819 ms     | 0x804 PK11_DeriveWithTemplate()
  5819 ms  0x804 ret:0x7fcaa81ec880
  5820 ms  SECKEY_ECParamsToKeySize()
  5820 ms  0x804 ret:0x100
  5820 ms  SECKEY_ECParamsToBasePointOrderLen()
  5820 ms  0x804 ret:0x100
  5820 ms  SECKEY_ECParamsToBasePointOrderLen()
  5820 ms  0x804 ret:0x100
  5820 ms  0x804 EC_ValidatePublicKey()
  5822 ms  0x804 ret:0x0
  5824 ms  0x804 PK11_DeriveWithFlags()
  5824 ms  0x804 basekey:0x7fca8cf49480
  5824 ms     | 0x804 PK11_DeriveWithTemplate()
  5824 ms  0x804 ret:0x7fcaa81ec880
  5826 ms  0x804 PK11_Derive()
  5826 ms  0x804 basekey:0x7fcaa81ec880
  5826 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca9e09eb00
  5827 ms  0x804 PK11_PubDeriveWithKDF()
  5827 ms  0x804 seckey:0x7fca8d0d2020
  5827 ms     | 0x804 EC_ValidatePublicKey()
  5827 ms     | 0x804 ret:0x0
  5827 ms  0x804 ret:0x7fcaa81ec880
  5827 ms  SECKEY_ECParamsToKeySize()
  5827 ms  0x804 ret:0xff
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fca9e09eb00
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d1aba80
  5827 ms  0x804 PK11_Derive()
  5827 ms  0x804 basekey:0x7fcaa81ec880
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d1ab980
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fca8d1ab980
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca9e09eb00
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fca8d1ab980
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fcaa81ec880
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fca8d1ab980
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d1aba80
  5827 ms  0x804 PK11_Derive()
  5827 ms  0x804 basekey:0x7fca9fdd6b80
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d2d9a80
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fcaa81ec880
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d1ab980
  5827 ms  0x804 PK11_DeriveWithFlags()
  5827 ms  0x804 basekey:0x7fcaa81ec880
  5827 ms     | 0x804 PK11_DeriveWithTemplate()
  5827 ms  0x804 ret:0x7fca8d1aba80
  5830 ms  0x804 PK11_DeriveWithFlags()
  5830 ms  0x804 basekey:0x7fcaa81ec880
  5830 ms     | 0x804 PK11_DeriveWithTemplate()
  5830 ms  0x804 ret:0x7fca8d1aba80
  5830 ms  0x804 PR_Connect()
  5830 ms  0x804 fd:0x7fca8cf5f160
  5837 ms  SECKEY_ECParamsToKeySize()
  5837 ms  0x804 ret:0x100
  5837 ms  0x804 SECKEY_CreateECPrivateKey()
  5837 ms  0x804 cx:0x7fca9e0f4128
  5837 ms     | 0x804 EC_ValidatePublicKey()
  5839 ms     | 0x804 ret:0x0
  5839 ms  0x804 ret:0x7fca8d1a8820::7fca8d1a8820  b0 10 f8 8c                                      ....
  5839 ms  0x804 PK11_PubDeriveWithKDF()
  5839 ms  0x804 seckey:0x7fca8d1a8820
  5839 ms     | 0x804 EC_ValidatePublicKey()
  5840 ms     | 0x804 ret:0x0
  5849 ms  0x804 ret:0x7fca8d1aba80
  5849 ms  0x804 PK11_DeriveWithFlags()
  5849 ms  0x804 basekey:0x7fca8d1aba80
  5849 ms     | 0x804 PK11_DeriveWithTemplate()
  5849 ms  0x804 ret:0x7fca9fdd6b80
  5849 ms  0x804 PK11_Derive()
  5849 ms  0x804 basekey:0x7fca9fdd6b80
  5849 ms     | 0x804 PK11_DeriveWithTemplate()
  5849 ms  0x804 ret:0x7fca8d2d9880
  5849 ms  0x804 SECKEY_DestroyPrivateKey()
  5849 ms  0x804 privk:0x7fca8d1a8820::7fca8d1a8820  b0 10 f8 8c                                      ....
  5849 ms  0x804 privk:0x7fca8d1a8820::7fca8d1a8820  e5 e5 e5 e5                                      ....
  5849 ms  0x804 PK11_Encrypt()
  5849 ms  0x804 symkey:0x7fca8cf49500
           /* TID 0x8d6 */
  5866 ms  0x8d6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5867 ms  0x8d6 ret:0x0
           /* TID 0x804 */
  5879 ms  0x804 SSL_AuthCertificateComplete()
  5879 ms  0x804 fd:0x7fca9f64f730
  5879 ms  0x804 err:0x0
           /* TID 0x814 */
  5883 ms  0x814 PR_Close()
  5883 ms  0x814 fd:0x7fca8cffedc0
           /* TID 0x876 */
  5883 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5884 ms  0x876 ret:0x0
           /* TID 0x804 */
  5890 ms  0x804 SSL_AuthCertificateComplete()
  5890 ms  0x804 fd:0x7fca9f57f160
  5890 ms  0x804 err:0x0
  5890 ms  0x804 PK11_Encrypt()
  5890 ms  0x804 symkey:0x7fca8cf49500
  5892 ms  0x804 SECKEY_DestroyPrivateKey()
  5892 ms  0x804 privk:0x7fca8d0d9020::7fca8d0d9020  90 a2 0e 8d                                      ....
  5892 ms  0x804 privk:0x7fca8d0d9020::7fca8d0d9020  e5 e5 e5 e5                                      ....
  5892 ms  0x804 SECKEY_DestroyPrivateKey()
  5892 ms  0x804 privk:0x7fca8d0d7020::7fca8d0d7020  80 43 18 8d                                      .C..
  5892 ms  0x804 privk:0x7fca8d0d7020::7fca8d0d7020  e5 e5 e5 e5                                      ....
  5915 ms  SECKEY_ECParamsToKeySize()
  5915 ms  0x804 ret:0x100
  5915 ms  0x804 SECKEY_CreateECPrivateKey()
  5915 ms  0x804 cx:0x7fca9e0f42c8
  5916 ms     | 0x804 EC_ValidatePublicKey()
  5917 ms     | 0x804 ret:0x0
  5917 ms  0x804 ret:0x7fca8cc0e820::7fca8cc0e820  a0 1b f8 8c                                      ....
  5917 ms  0x804 PK11_PubDeriveWithKDF()
  5917 ms  0x804 seckey:0x7fca8cc0e820
  5917 ms     | 0x804 EC_ValidatePublicKey()
  5919 ms     | 0x804 ret:0x0
  5920 ms  0x804 ret:0x7fca8d1aba80
  5920 ms  0x804 PK11_DeriveWithFlags()
  5920 ms  0x804 basekey:0x7fca8d1aba80
  5920 ms     | 0x804 PK11_DeriveWithTemplate()
  5920 ms  0x804 ret:0x7fca8cf49100
  5920 ms  0x804 PK11_Derive()
  5920 ms  0x804 basekey:0x7fca8cf49100
  5920 ms     | 0x804 PK11_DeriveWithTemplate()
  5925 ms  0x804 ret:0x7fca8cf49200
  5925 ms  0x804 SECKEY_DestroyPrivateKey()
  5925 ms  0x804 privk:0x7fca8cc0e820::7fca8cc0e820  a0 1b f8 8c                                      ....
  5925 ms  0x804 privk:0x7fca8cc0e820::7fca8cc0e820  e5 e5 e5 e5                                      ....
  5925 ms  0x804 PK11_Encrypt()
  5925 ms  0x804 symkey:0x7fca9e09ee00
  5925 ms  0x804 PK11_Encrypt()
  5925 ms  0x804 symkey:0x7fca9e09ee00
           /* TID 0x814 */
  5937 ms  0x814 PR_Close()
  5937 ms  0x814 fd:0x7fca8cc48100
  5970 ms  0x814 PR_Close()
  5970 ms  0x814 fd:0x7fca8cc480d0
           /* TID 0x8cc */
  5971 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5971 ms  0x8cc ret:0x0
           /* TID 0x804 */
  5971 ms  0x804 SSL_AuthCertificateComplete()
  5971 ms  0x804 fd:0x7fca8d4c0e50
  5971 ms  0x804 err:0x0
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8d1acc80
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca8d1aba80
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8d1acc80
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca9e09ec00
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8d1acc80
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca9e742280
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8cf49400
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca8d1aba00
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8cf49400
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca8d4f7f00
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca9e09ec00
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca8d4f7f00
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca9e09ec00
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fca8d1ab500
  5971 ms     | 0x804 PK11_DeriveWithFlags()
  5971 ms     | 0x804 basekey:0x7fca8cf49400
  5971 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5971 ms     | 0x804 ret:0x7fcaa1598c00
  5971 ms     | 0x804 PK11_Encrypt()
  5971 ms     | 0x804 symkey:0x7fca8d1aba00
  5972 ms     | 0x804 PK11_DeriveWithFlags()
  5972 ms     | 0x804 basekey:0x7fca8d1aba80
  5972 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5972 ms     | 0x804 ret:0x7fcaa1598c00
  5972 ms     | 0x804 PK11_DeriveWithFlags()
  5972 ms     | 0x804 basekey:0x7fca8d1aba80
  5972 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5972 ms     | 0x804 ret:0x7fca8d1ab500
  5972 ms     | 0x804 PK11_DeriveWithFlags()
  5972 ms     | 0x804 basekey:0x7fca8d1acc80
  5972 ms     |    | 0x804 PK11_DeriveWithTemplate()
  5972 ms     | 0x804 ret:0x7fca8d1aba00
  5972 ms     | 0x804 SECKEY_DestroyPrivateKey()
  5972 ms     | 0x804 privk:0x7fca8d0cf020::7fca8d0cf020  70 24 14 8d                                      p$..
  5972 ms     | 0x804 privk:0x7fca8d0cf020::7fca8d0cf020  e5 e5 e5 e5                                      ....
  5972 ms     | 0x804 SECKEY_DestroyPrivateKey()
  5972 ms     | 0x804 privk:0x7fca8d0cd020::7fca8d0cd020  40 22 14 8d                                      @"..
  5972 ms     | 0x804 privk:0x7fca8d0cd020::7fca8d0cd020  e5 e5 e5 e5                                      ....
  5972 ms  0x804 PK11_Encrypt()
  5972 ms  0x804 symkey:0x7fcaa1598c00
  5972 ms  0x804 PK11_Encrypt()
  5972 ms  0x804 symkey:0x7fcaa1598c00
  5986 ms  0x804 SECKEY_DestroyPrivateKey()
  5986 ms  0x804 privk:0x7fca8d192820::7fca8d192820  80 48 18 8d                                      .H..
  5986 ms  0x804 privk:0x7fca8d192820::7fca8d192820  e5 e5 e5 e5                                      ....
  5986 ms  0x804 SECKEY_DestroyPrivateKey()
  5986 ms  0x804 privk:0x7fca8d0db820::7fca8d0db820  d0 a8 0e 8d                                      ....
  5986 ms  0x804 privk:0x7fca8d0db820::7fca8d0db820  e5 e5 e5 e5                                      ....
  5994 ms  0x804 SSL_ImportFD()
  5994 ms  0x804 ret:0x7fca8cc48520
  5994 ms  0x804 SSL_AuthCertificateHook()
  5994 ms  0x804 fd:0x7fca8cc48520
  5994 ms  0x804 ret:0x0
  5994 ms  0x804 PR_Connect()
  5994 ms  0x804 fd:0x7fca8cc48520
  6009 ms  0x804 PK11_DeriveWithFlags()
  6009 ms  0x804 basekey:0x7fca8d1aba00
  6009 ms     | 0x804 PK11_DeriveWithTemplate()
  6009 ms  0x804 ret:0x7fca8cf49480
  6009 ms  0x804 PK11_DeriveWithFlags()
  6009 ms  0x804 basekey:0x7fca8d1aba00
  6009 ms     | 0x804 PK11_DeriveWithTemplate()
  6009 ms  0x804 ret:0x7fca8cf49480
  6009 ms  0x804 PK11_Encrypt()
  6009 ms  0x804 symkey:0x7fcaa1598c00
           /* TID 0x814 */
  6011 ms  0x814 PR_Close()
  6011 ms  0x814 fd:0x7fca8cc48310
           /* TID 0x8d3 */
  6011 ms  0x8d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6011 ms  0x8d3 ret:0x0
           /* TID 0x804 */
  6011 ms  0x804 SSL_AuthCertificateComplete()
  6011 ms  0x804 fd:0x7fca8d4c02e0
  6011 ms  0x804 err:0x0
  6011 ms     | 0x804 PK11_DeriveWithFlags()
  6011 ms     | 0x804 basekey:0x7fca8d2d9a80
  6011 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6011 ms     | 0x804 ret:0x7fca8cf49480
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8d2d9a80
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8cf49400
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8d2d9a80
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1acc80
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca9e09eb00
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1ab500
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca9e09eb00
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d4f7e80
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8cf49400
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d4f7e80
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8cf49400
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1abe00
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca9e09eb00
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1ab980
  6012 ms     | 0x804 PK11_Encrypt()
  6012 ms     | 0x804 symkey:0x7fca8d1ab500
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8cf49480
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1ab980
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8cf49480
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1abe00
  6012 ms     | 0x804 PK11_DeriveWithFlags()
  6012 ms     | 0x804 basekey:0x7fca8d2d9a80
  6012 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6012 ms     | 0x804 ret:0x7fca8d1ab500
  6012 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6012 ms     | 0x804 privk:0x7fca8d0d4020::7fca8d0d4020  40 42 18 8d                                      @B..
  6012 ms     | 0x804 privk:0x7fca8d0d4020::7fca8d0d4020  e5 e5 e5 e5                                      ....
  6012 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6012 ms     | 0x804 privk:0x7fca8d0d2020::7fca8d0d2020  10 25 14 8d                                      .%..
  6013 ms     | 0x804 privk:0x7fca8d0d2020::7fca8d0d2020  e5 e5 e5 e5                                      ....
  6013 ms  0x804 PK11_Encrypt()
  6013 ms  0x804 symkey:0x7fca8d1ab980
  6013 ms  0x804 PK11_Encrypt()
  6013 ms  0x804 symkey:0x7fca8d1ab980
  6020 ms  0x804 SECKEY_CreateECPrivateKey()
  6020 ms  0x804 cx:0x7fca9e0f57e8
  6020 ms     | 0x804 EC_ValidatePublicKey()
  6020 ms     | 0x804 ret:0x0
  6020 ms  0x804 ret:0x7fca8cc14820::7fca8cc14820  10 8f 06 8d                                      ....
  6020 ms  0x804 SECKEY_CreateECPrivateKey()
  6020 ms  0x804 cx:0x7fca9e0f57e8
  6025 ms     | 0x804 EC_ValidatePublicKey()
  6026 ms     | 0x804 ret:0x0
  6026 ms  0x804 ret:0x7fca8cc16820::7fca8cc16820  60 aa 0e 8d                                      `...
           /* TID 0x814 */
  6049 ms  0x814 PR_Close()
  6049 ms  0x814 fd:0x7fca8cc48400
           /* TID 0x804 */
  6050 ms  0x804 PK11_DeriveWithFlags()
  6050 ms  0x804 basekey:0x7fca8d1ab500
  6050 ms     | 0x804 PK11_DeriveWithTemplate()
  6051 ms  0x804 ret:0x7fcaa81ec880
  6051 ms  0x804 PK11_DeriveWithFlags()
  6051 ms  0x804 basekey:0x7fca8d1ab500
  6051 ms     | 0x804 PK11_DeriveWithTemplate()
  6051 ms  0x804 ret:0x7fcaa81ec880
  6051 ms  0x804 PK11_Encrypt()
  6051 ms  0x804 symkey:0x7fca8d1ab980
  6052 ms  0x804 PK11_Encrypt()
  6052 ms  0x804 symkey:0x7fca9e09ee00
           /* TID 0x8d6 */
  6078 ms  0x8d6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6078 ms  0x8d6 ret:0x0
           /* TID 0x804 */
  6078 ms  SECKEY_ECParamsToKeySize()
  6078 ms  0x804 ret:0x100
  6078 ms  0x804 SECKEY_CreateECPrivateKey()
  6078 ms  0x804 cx:0x7fca9e0f57e8
  6079 ms     | 0x804 EC_ValidatePublicKey()
  6080 ms     | 0x804 ret:0x0
  6080 ms  0x804 ret:0x7fca8cc1a020::7fca8cc1a020  00 21 14 8d                                      .!..
  6080 ms  0x804 PK11_PubDeriveWithKDF()
  6080 ms  0x804 seckey:0x7fca8cc1a020
  6080 ms     | 0x804 EC_ValidatePublicKey()
  6082 ms     | 0x804 ret:0x0
  6083 ms  0x804 ret:0x7fcaa81ec880
  6083 ms  0x804 PK11_DeriveWithFlags()
  6083 ms  0x804 basekey:0x7fcaa81ec880
  6084 ms     | 0x804 PK11_DeriveWithTemplate()
  6084 ms  0x804 ret:0x7fca9e09eb00
  6084 ms  0x804 PK11_Derive()
  6084 ms  0x804 basekey:0x7fca9e09eb00
  6084 ms     | 0x804 PK11_DeriveWithTemplate()
  6084 ms  0x804 ret:0x7fca8d2d9a80
  6084 ms  0x804 SECKEY_DestroyPrivateKey()
  6084 ms  0x804 privk:0x7fca8cc1a020::7fca8cc1a020  00 21 14 8d                                      .!..
  6084 ms  0x804 privk:0x7fca8cc1a020::7fca8cc1a020  e5 e5 e5 e5                                      ....
  6084 ms  0x804 PK11_Encrypt()
  6084 ms  0x804 symkey:0x7fca8d1abc80
  6084 ms  0x804 SSL_AuthCertificateComplete()
  6084 ms  0x804 fd:0x7fca8cc48520
  6084 ms  0x804 err:0x0
  6085 ms  0x804 PK11_Encrypt()
  6085 ms  0x804 symkey:0x7fca8d1abc80
  6085 ms  0x804 PK11_Encrypt()
  6085 ms  0x804 symkey:0x7fca8d1abc80
  6100 ms  0x804 PK11_Encrypt()
  6100 ms  0x804 symkey:0x7fca8d1ab980
  6102 ms  0x804 PK11_Encrypt()
  6102 ms  0x804 symkey:0x7fcaa1598c00
           /* TID 0x814 */
  6105 ms  0x814 PR_Close()
  6105 ms  0x814 fd:0x7fca8cc48490
           /* TID 0x804 */
  6110 ms  0x804 SECKEY_DestroyPrivateKey()
  6110 ms  0x804 privk:0x7fca8cc16820::7fca8cc16820  60 aa 0e 8d                                      `...
  6110 ms  0x804 privk:0x7fca8cc16820::7fca8cc16820  e5 e5 e5 e5                                      ....
  6110 ms  0x804 SECKEY_DestroyPrivateKey()
  6110 ms  0x804 privk:0x7fca8cc14820::7fca8cc14820  10 8f 06 8d                                      ....
  6110 ms  0x804 privk:0x7fca8cc14820::7fca8cc14820  e5 e5 e5 e5                                      ....
  6110 ms  0x804 PK11_Encrypt()
  6110 ms  0x804 symkey:0x7fca8d1abc80
           /* TID 0x814 */
  6119 ms  0x814 PR_Close()
  6119 ms  0x814 fd:0x7fca8cc484f0
  6136 ms  0x814 PR_Close()
  6136 ms  0x814 fd:0x7fca8cc489d0
           /* TID 0x804 */
  6150 ms  0x804 SSL_ImportFD()
  6150 ms  0x804 ret:0x7fca8cc48cd0
  6150 ms  0x804 SSL_AuthCertificateHook()
  6150 ms  0x804 fd:0x7fca8cc48cd0
  6150 ms  0x804 ret:0x0
  6150 ms  0x804 PR_Connect()
  6150 ms  0x804 fd:0x7fca8cc48cd0
  6188 ms  0x804 SECKEY_CreateECPrivateKey()
  6188 ms  0x804 cx:0x7fca9e0f5b28
  6188 ms     | 0x804 EC_ValidatePublicKey()
  6188 ms     | 0x804 ret:0x0
  6188 ms  0x804 ret:0x7fca8cc19820::7fca8cc19820  50 8b 06 8d                                      P...
  6189 ms  0x804 SECKEY_CreateECPrivateKey()
  6189 ms  0x804 cx:0x7fca9e0f5b28
  6189 ms     | 0x804 EC_ValidatePublicKey()
  6191 ms     | 0x804 ret:0x0
  6191 ms  0x804 ret:0x7fca8cc1b820::7fca8cc1b820  a0 ab 0e 8d                                      ....
  6246 ms  0x804 PK11_Derive()
  6246 ms  0x804 basekey:0x7fcaa81ec880
  6246 ms     | 0x804 PK11_DeriveWithTemplate()
  6246 ms  0x804 ret:0x7fca8d1abe00
  6246 ms  0x804 PK11_PubDeriveWithKDF()
  6246 ms  0x804 seckey:0x7fca8cc19820
  6246 ms     | 0x804 EC_ValidatePublicKey()
  6246 ms     | 0x804 ret:0x0
  6247 ms  0x804 ret:0x7fcaa81ec880
  6247 ms  SECKEY_ECParamsToKeySize()
  6247 ms  0x804 ret:0xff
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fca8d1abe00
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf49e00
  6247 ms  0x804 PK11_Derive()
  6247 ms  0x804 basekey:0x7fcaa81ec880
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf49e80
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fca8cf49e80
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8d1abe00
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fca8cf49e80
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fcaa81ec880
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fca8cf49e80
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf49e00
  6247 ms  0x804 PK11_Derive()
  6247 ms  0x804 basekey:0x7fca8cf4a100
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf4aa00
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fcaa81ec880
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf49e80
  6247 ms  0x804 PK11_DeriveWithFlags()
  6247 ms  0x804 basekey:0x7fcaa81ec880
  6247 ms     | 0x804 PK11_DeriveWithTemplate()
  6247 ms  0x804 ret:0x7fca8cf49e00
  6250 ms  0x804 PK11_DeriveWithFlags()
  6250 ms  0x804 basekey:0x7fcaa81ec880
  6250 ms     | 0x804 PK11_DeriveWithTemplate()
  6250 ms  0x804 ret:0x7fca8cf49e00
  6265 ms  0x804 PK11_Encrypt()
  6265 ms  0x804 symkey:0x7fca9e09ee00
  6266 ms  0x804 SSL_ImportFD()
  6267 ms  0x804 ret:0x7fca8cc6e2e0
  6267 ms  0x804 SSL_AuthCertificateHook()
  6267 ms  0x804 fd:0x7fca8cc6e2e0
  6267 ms  0x804 ret:0x0
  6268 ms  0x804 PR_Connect()
  6268 ms  0x804 fd:0x7fca8cc6e2e0
  6270 ms  0x804 SSL_ImportFD()
  6270 ms  0x804 ret:0x7fca8cc48d90
  6270 ms  0x804 SSL_AuthCertificateHook()
  6270 ms  0x804 fd:0x7fca8cc48d90
  6270 ms  0x804 ret:0x0
  6270 ms  0x804 PR_Connect()
  6270 ms  0x804 fd:0x7fca8cc48d90
  6271 ms  0x804 SSL_ImportFD()
  6271 ms  0x804 ret:0x7fca8cc6e1c0
  6271 ms  0x804 SSL_AuthCertificateHook()
  6271 ms  0x804 fd:0x7fca8cc6e1c0
  6271 ms  0x804 ret:0x0
  6271 ms  0x804 PR_Connect()
  6271 ms  0x804 fd:0x7fca8cc6e1c0
  6306 ms  0x804 SECKEY_CreateECPrivateKey()
  6306 ms  0x804 cx:0x7fca9e0f5e68
  6308 ms     | 0x804 EC_ValidatePublicKey()
  6308 ms     | 0x804 ret:0x0
  6308 ms  0x804 ret:0x7fca8d0be020::7fca8d0be020  10 25 14 8d                                      .%..
  6308 ms  0x804 SECKEY_CreateECPrivateKey()
  6308 ms  0x804 cx:0x7fca9e0f5e68
  6310 ms     | 0x804 EC_ValidatePublicKey()
  6315 ms     | 0x804 ret:0x0
  6315 ms  0x804 ret:0x7fca8d0c6020::7fca8d0c6020  60 2f 14 8d                                      `/..
  6317 ms  0x804 SECKEY_CreateECPrivateKey()
  6317 ms  0x804 cx:0x7fcac67a72c8
  6318 ms     | 0x804 EC_ValidatePublicKey()
  6318 ms     | 0x804 ret:0x0
  6318 ms  0x804 ret:0x7fca8d0cb820::7fca8d0cb820  50 41 18 8d                                      PA..
  6318 ms  0x804 SECKEY_CreateECPrivateKey()
  6318 ms  0x804 cx:0x7fcac67a72c8
  6320 ms     | 0x804 EC_ValidatePublicKey()
  6323 ms     | 0x804 ret:0x0
  6323 ms  0x804 ret:0x7fca8d0cd820::7fca8d0cd820  80 43 18 8d                                      .C..
  6324 ms  0x804 SECKEY_CreateECPrivateKey()
  6324 ms  0x804 cx:0x7fcaa87c02c8
  6325 ms     | 0x804 EC_ValidatePublicKey()
  6325 ms     | 0x804 ret:0x0
  6325 ms  0x804 ret:0x7fca8d0d0820::7fca8d0d0820  60 45 18 8d                                      `E..
  6325 ms  0x804 SECKEY_CreateECPrivateKey()
  6325 ms  0x804 cx:0x7fcaa87c02c8
  6326 ms     | 0x804 EC_ValidatePublicKey()
  6330 ms     | 0x804 ret:0x0
  6330 ms  0x804 ret:0x7fca8d0d2820::7fca8d0d2820  90 a7 0e 8d                                      ....
  6368 ms  SECKEY_ECParamsToKeySize()
  6368 ms  0x804 ret:0x100
  6368 ms  0x804 SECKEY_CreateECPrivateKey()
  6368 ms  0x804 cx:0x7fcac67a72c8
  6369 ms     | 0x804 EC_ValidatePublicKey()
  6371 ms     | 0x804 ret:0x0
  6371 ms  0x804 ret:0x7fca8d0d6020::7fca8d0d6020  e0 92 49 8d                                      ..I.
  6372 ms  0x804 PK11_PubDeriveWithKDF()
  6372 ms  0x804 seckey:0x7fca8d0d6020
  6372 ms     | 0x804 EC_ValidatePublicKey()
  6374 ms     | 0x804 ret:0x0
  6376 ms  0x804 ret:0x7fca8cf49e00
  6376 ms  0x804 PK11_DeriveWithFlags()
  6376 ms  0x804 basekey:0x7fca8cf49e00
  6376 ms     | 0x804 PK11_DeriveWithTemplate()
  6376 ms  0x804 ret:0x7fca8cf4a100
  6376 ms  0x804 PK11_Derive()
  6376 ms  0x804 basekey:0x7fca8cf4a100
  6376 ms     | 0x804 PK11_DeriveWithTemplate()
  6376 ms  0x804 ret:0x7fca8d03eb00
  6376 ms  0x804 SECKEY_DestroyPrivateKey()
  6376 ms  0x804 privk:0x7fca8d0d6020::7fca8d0d6020  e0 92 49 8d                                      ..I.
  6376 ms  0x804 privk:0x7fca8d0d6020::7fca8d0d6020  e5 e5 e5 e5                                      ....
  6376 ms  0x804 PK11_Encrypt()
  6376 ms  0x804 symkey:0x7fca8d03f800
  6376 ms  0x804 SSL_AuthCertificateComplete()
  6376 ms  0x804 fd:0x7fca8cc6e1c0
  6376 ms  0x804 err:0x0
  6377 ms  0x804 PK11_Encrypt()
  6377 ms  0x804 symkey:0x7fca8d03f800
  6377 ms  0x804 PK11_Derive()
  6377 ms  0x804 basekey:0x7fca8cf49e00
  6377 ms     | 0x804 PK11_DeriveWithTemplate()
  6377 ms  0x804 ret:0x7fca8cc97580
  6377 ms  0x804 PK11_PubDeriveWithKDF()
  6377 ms  0x804 seckey:0x7fca8d0be020
  6377 ms     | 0x804 EC_ValidatePublicKey()
  6377 ms     | 0x804 ret:0x0
  6378 ms  0x804 ret:0x7fca8cf49e00
  6378 ms  SECKEY_ECParamsToKeySize()
  6378 ms  0x804 ret:0xff
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8cc97580
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8cc97600
  6378 ms  0x804 PK11_Derive()
  6378 ms  0x804 basekey:0x7fca8cf49e00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8d03fa00
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8d03fa00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8cc97580
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8d03fa00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8cf49e00
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8d03fa00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8cc97600
  6378 ms  0x804 PK11_Derive()
  6378 ms  0x804 basekey:0x7fca8d03fa80
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8d03fb00
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8cf49e00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8d03fa00
  6378 ms  0x804 PK11_DeriveWithFlags()
  6378 ms  0x804 basekey:0x7fca8cf49e00
  6378 ms     | 0x804 PK11_DeriveWithTemplate()
  6378 ms  0x804 ret:0x7fca8cc97600
  6380 ms  SECKEY_ECParamsToKeySize()
  6380 ms  0x804 ret:0x100
  6380 ms  SECKEY_ECParamsToBasePointOrderLen()
  6380 ms  0x804 ret:0x100
  6380 ms  SECKEY_ECParamsToBasePointOrderLen()
  6380 ms  0x804 ret:0x100
  6380 ms  0x804 EC_ValidatePublicKey()
  6382 ms  0x804 ret:0x0
  6384 ms  0x804 PK11_DeriveWithFlags()
  6384 ms  0x804 basekey:0x7fca8cf49e00
  6384 ms     | 0x804 PK11_DeriveWithTemplate()
  6384 ms  0x804 ret:0x7fca8cc97600
  6385 ms  0x804 PK11_Derive()
  6385 ms  0x804 basekey:0x7fca8cc97600
  6385 ms     | 0x804 PK11_DeriveWithTemplate()
  6385 ms  0x804 ret:0x7fca8d03fa80
  6385 ms  0x804 PK11_PubDeriveWithKDF()
  6385 ms  0x804 seckey:0x7fca8d0d0820
  6385 ms     | 0x804 EC_ValidatePublicKey()
  6385 ms     | 0x804 ret:0x0
  6386 ms  0x804 ret:0x7fca8cc97600
  6386 ms  SECKEY_ECParamsToKeySize()
  6386 ms  0x804 ret:0xff
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8d03fa80
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fe00
  6386 ms  0x804 PK11_Derive()
  6386 ms  0x804 basekey:0x7fca8cc97600
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fe80
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8d03fe80
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fa80
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8d03fe80
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8cc97600
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8d03fe80
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fe00
  6386 ms  0x804 PK11_Derive()
  6386 ms  0x804 basekey:0x7fca8d03ff00
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03ff80
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8cc97600
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fe80
  6386 ms  0x804 PK11_DeriveWithFlags()
  6386 ms  0x804 basekey:0x7fca8cc97600
  6386 ms     | 0x804 PK11_DeriveWithTemplate()
  6386 ms  0x804 ret:0x7fca8d03fe00
  6387 ms  SECKEY_ECParamsToKeySize()
  6387 ms  0x804 ret:0x100
  6387 ms  SECKEY_ECParamsToBasePointOrderLen()
  6387 ms  0x804 ret:0x100
  6387 ms  SECKEY_ECParamsToBasePointOrderLen()
  6387 ms  0x804 ret:0x100
  6387 ms  0x804 EC_ValidatePublicKey()
  6389 ms  0x804 ret:0x0
  6391 ms  0x804 PK11_DeriveWithFlags()
  6391 ms  0x804 basekey:0x7fca8cc97600
  6391 ms     | 0x804 PK11_DeriveWithTemplate()
  6391 ms  0x804 ret:0x7fca8d03fe00
  6391 ms  0x804 SSL_AuthCertificateComplete()
  6391 ms  0x804 fd:0x7fca8cc48d90
  6391 ms  0x804 err:0x0
  6391 ms     | 0x804 PK11_DeriveWithFlags()
  6391 ms     | 0x804 basekey:0x7fca8d03ff80
  6391 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6391 ms     | 0x804 ret:0x7fca8d03fe00
  6391 ms     | 0x804 PK11_DeriveWithFlags()
  6391 ms     | 0x804 basekey:0x7fca8d03ff80
  6391 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6391 ms     | 0x804 ret:0x7fca8d03ff00
  6391 ms     | 0x804 PK11_DeriveWithFlags()
  6391 ms     | 0x804 basekey:0x7fca8d03ff80
  6391 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6391 ms     | 0x804 ret:0x7fca8d119100
  6391 ms     | 0x804 PK11_DeriveWithFlags()
  6391 ms     | 0x804 basekey:0x7fca8d03fa80
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119200
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03fa80
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119280
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03ff00
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119280
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03ff00
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119300
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03fa80
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d03fe80
  6392 ms     | 0x804 PK11_Encrypt()
  6392 ms     | 0x804 symkey:0x7fca8d119200
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03fe00
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d03fe80
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03fe00
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119300
  6392 ms     | 0x804 PK11_DeriveWithFlags()
  6392 ms     | 0x804 basekey:0x7fca8d03ff80
  6392 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6392 ms     | 0x804 ret:0x7fca8d119200
  6392 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6392 ms     | 0x804 privk:0x7fca8d0d2820::7fca8d0d2820  90 a7 0e 8d                                      ....
  6392 ms     | 0x804 privk:0x7fca8d0d2820::7fca8d0d2820  e5 e5 e5 e5                                      ....
  6392 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6392 ms     | 0x804 privk:0x7fca8d0d0820::7fca8d0d0820  60 45 18 8d                                      `E..
  6392 ms     | 0x804 privk:0x7fca8d0d0820::7fca8d0d0820  e5 e5 e5 e5                                      ....
  6393 ms  0x804 PK11_Encrypt()
  6393 ms  0x804 symkey:0x7fca8d03fe80
  6393 ms  0x804 PK11_Encrypt()
  6393 ms  0x804 symkey:0x7fca8d03fe80
           /* TID 0x876 */
  6394 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6394 ms  0x876 ret:0x0
           /* TID 0x814 */
  6394 ms  0x814 PR_Close()
  6394 ms  0x814 fd:0x7fca8cc6e550
           /* TID 0x804 */
  6395 ms  0x804 SSL_AuthCertificateComplete()
  6395 ms  0x804 fd:0x7fca8cc48cd0
  6395 ms  0x804 err:0x0
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cf4aa00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8cc97600
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cf4aa00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03fa80
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cf4aa00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03ff80
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8d1abe00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d119300
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8d1abe00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03e300
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8d03fa80
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03e300
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8d03fa80
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03e380
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8d1abe00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8cf49e80
  6395 ms     | 0x804 PK11_Encrypt()
  6395 ms     | 0x804 symkey:0x7fca8d119300
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cc97600
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8cf49e80
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cc97600
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d03e380
  6395 ms     | 0x804 PK11_DeriveWithFlags()
  6395 ms     | 0x804 basekey:0x7fca8cf4aa00
  6395 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6395 ms     | 0x804 ret:0x7fca8d119300
  6395 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6395 ms     | 0x804 privk:0x7fca8cc1b820::7fca8cc1b820  a0 ab 0e 8d                                      ....
  6395 ms     | 0x804 privk:0x7fca8cc1b820::7fca8cc1b820  e5 e5 e5 e5                                      ....
  6395 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6395 ms     | 0x804 privk:0x7fca8cc19820::7fca8cc19820  50 8b 06 8d                                      P...
  6396 ms     | 0x804 privk:0x7fca8cc19820::7fca8cc19820  e5 e5 e5 e5                                      ....
  6396 ms  0x804 PK11_Encrypt()
  6396 ms  0x804 symkey:0x7fca8cf49e80
  6396 ms  0x804 PK11_Encrypt()
  6396 ms  0x804 symkey:0x7fca8cf49e80
  6424 ms  0x804 SECKEY_DestroyPrivateKey()
  6424 ms  0x804 privk:0x7fca8d0cd820::7fca8d0cd820  80 43 18 8d                                      .C..
  6424 ms  0x804 privk:0x7fca8d0cd820::7fca8d0cd820  e5 e5 e5 e5                                      ....
  6424 ms  0x804 SECKEY_DestroyPrivateKey()
  6424 ms  0x804 privk:0x7fca8d0cb820::7fca8d0cb820  50 41 18 8d                                      PA..
  6424 ms  0x804 privk:0x7fca8d0cb820::7fca8d0cb820  e5 e5 e5 e5                                      ....
  6431 ms  0x804 PK11_DeriveWithFlags()
  6431 ms  0x804 basekey:0x7fca8d119200
  6431 ms     | 0x804 PK11_DeriveWithTemplate()
  6431 ms  0x804 ret:0x7fcaa81ec880
  6431 ms  0x804 PK11_DeriveWithFlags()
  6431 ms  0x804 basekey:0x7fca8d119200
  6431 ms     | 0x804 PK11_DeriveWithTemplate()
  6431 ms  0x804 ret:0x7fcaa81ec880
  6431 ms  0x804 PK11_Encrypt()
  6431 ms  0x804 symkey:0x7fca8d03fe80
  6433 ms  0x804 PK11_DeriveWithFlags()
  6433 ms  0x804 basekey:0x7fca8d119300
  6433 ms     | 0x804 PK11_DeriveWithTemplate()
  6433 ms  0x804 ret:0x7fcaa81ec880
  6433 ms  0x804 PK11_DeriveWithFlags()
  6433 ms  0x804 basekey:0x7fca8d119300
  6433 ms     | 0x804 PK11_DeriveWithTemplate()
  6433 ms  0x804 ret:0x7fcaa81ec880
  6434 ms  0x804 PK11_Encrypt()
  6434 ms  0x804 symkey:0x7fca8cf49e80
  6490 ms  0x804 PK11_Encrypt()
  6490 ms  0x804 symkey:0x7fca8cf49e80
           /* TID 0x814 */
  6528 ms  0x814 PR_Close()
  6528 ms  0x814 fd:0x7fca8cc6e400
           /* TID 0x8d3 */
  6528 ms  0x8d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6528 ms  0x8d3 ret:0x0
           /* TID 0x804 */
  6528 ms  0x804 SSL_AuthCertificateComplete()
  6528 ms  0x804 fd:0x7fca8cc6e2e0
  6528 ms  0x804 err:0x0
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d03fb00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fcaa81ec880
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d03fb00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d1abe00
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d03fb00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8cf4aa00
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8cc97580
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d03e380
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8cc97580
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d11ac80
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d1abe00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d11ac80
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d1abe00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d11ad00
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8cc97580
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d03fa00
  6529 ms     | 0x804 PK11_Encrypt()
  6529 ms     | 0x804 symkey:0x7fca8d03e380
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fcaa81ec880
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d03fa00
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fcaa81ec880
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d11ad00
  6529 ms     | 0x804 PK11_DeriveWithFlags()
  6529 ms     | 0x804 basekey:0x7fca8d03fb00
  6529 ms     |    | 0x804 PK11_DeriveWithTemplate()
  6529 ms     | 0x804 ret:0x7fca8d03e380
  6529 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6529 ms     | 0x804 privk:0x7fca8d0c6020::7fca8d0c6020  60 2f 14 8d                                      `/..
  6529 ms     | 0x804 privk:0x7fca8d0c6020::7fca8d0c6020  e5 e5 e5 e5                                      ....
  6529 ms     | 0x804 SECKEY_DestroyPrivateKey()
  6529 ms     | 0x804 privk:0x7fca8d0be020::7fca8d0be020  10 25 14 8d                                      .%..
  6529 ms     | 0x804 privk:0x7fca8d0be020::7fca8d0be020  e5 e5 e5 e5                                      ....
  6530 ms  0x804 PK11_Encrypt()
  6530 ms  0x804 symkey:0x7fca8d03fa00
  6530 ms  0x804 PK11_Encrypt()
  6530 ms  0x804 symkey:0x7fca8d03fa00
  6566 ms  0x804 PK11_Encrypt()
  6566 ms  0x804 symkey:0x7fca8d03fe80
  6566 ms  0x804 PK11_DeriveWithFlags()
  6566 ms  0x804 basekey:0x7fca8d03e380
  6567 ms     | 0x804 PK11_DeriveWithTemplate()
  6567 ms  0x804 ret:0x7fca8cf49e00
  6567 ms  0x804 PK11_DeriveWithFlags()
  6567 ms  0x804 basekey:0x7fca8d03e380
  6567 ms     | 0x804 PK11_DeriveWithTemplate()
  6567 ms  0x804 ret:0x7fca8cf49e00
  6567 ms  0x804 PK11_Encrypt()
  6567 ms  0x804 symkey:0x7fca8d03fa00
           /* TID 0x814 */
  6567 ms  0x814 PR_Close()
  6567 ms  0x814 fd:0x7fca8cc48d00
           /* TID 0x804 */
  6617 ms  0x804 PK11_Encrypt()
  6617 ms  0x804 symkey:0x7fca8d03fe80
  6625 ms  0x804 PK11_Encrypt()
  6625 ms  0x804 symkey:0x7fca8d03fa00
  6721 ms  0x804 PK11_Encrypt()
  6721 ms  0x804 symkey:0x7fca8d03fe80
  6731 ms  0x804 PK11_Encrypt()
  6731 ms  0x804 symkey:0x7fca8d1ab980
  6731 ms  0x804 PK11_Encrypt()
  6731 ms  0x804 symkey:0x7fca8d1ab980
  6735 ms  0x804 PK11_Encrypt()
  6735 ms  0x804 symkey:0x7fca8d03fe80
           /* TID 0x814 */
  6738 ms  0x814 PR_Close()
  6738 ms  0x814 fd:0x7fca8cc6e610
           /* TID 0x804 */
  6812 ms  0x804 PK11_Encrypt()
  6812 ms  0x804 symkey:0x7fca8d03fe80
           /* TID 0x814 */
  6814 ms  0x814 PR_Close()
  6814 ms  0x814 fd:0x7fca8cc48a30
           /* TID 0x804 */
  6821 ms  0x804 PK11_Encrypt()
  6821 ms  0x804 symkey:0x7fca8d1ab980
           /* TID 0x814 */
  6855 ms  0x814 PR_Close()
  6855 ms  0x814 fd:0x7fca8cf5ff40
           /* TID 0x804 */
  6910 ms  0x804 SSL_ImportFD()
  6910 ms  0x804 ret:0x7fca8d0430a0
  6910 ms  0x804 SSL_AuthCertificateHook()
  6910 ms  0x804 fd:0x7fca8d0430a0
  6910 ms  0x804 ret:0x0
  6911 ms  0x804 PK11_Encrypt()
  6911 ms  0x804 symkey:0x7fcaa1599780
  6911 ms  0x804 PR_Connect()
  6911 ms  0x804 fd:0x7fca8d0430a0
  6937 ms  0x804 SECKEY_CreateECPrivateKey()
  6937 ms  0x804 cx:0x7fcaa81900a8
  6937 ms     | 0x804 EC_ValidatePublicKey()
  6937 ms     | 0x804 ret:0x0
  6937 ms  0x804 ret:0x7fca8d0cc020::7fca8d0cc020  50 41 18 8d                                      PA..
  6937 ms  0x804 SECKEY_CreateECPrivateKey()
  6937 ms  0x804 cx:0x7fcaa81900a8
  6938 ms     | 0x804 EC_ValidatePublicKey()
  6940 ms     | 0x804 ret:0x0
  6941 ms  0x804 ret:0x7fca8d0cf820::7fca8d0cf820  e0 22 14 8d                                      ."..
  6955 ms  0x804 SSL_ImportFD()
  6955 ms  0x804 ret:0x7fca8cf5ffa0
  6956 ms  0x804 SSL_AuthCertificateHook()
  6956 ms  0x804 fd:0x7fca8cf5ffa0
  6956 ms  0x804 ret:0x0
  6956 ms  0x804 PR_Connect()
  6956 ms  0x804 fd:0x7fca8cf5ffa0
  6956 ms  0x804 SSL_ImportFD()
  6956 ms  0x804 ret:0x7fca8cf5f910
  6956 ms  0x804 SSL_AuthCertificateHook()
  6956 ms  0x804 fd:0x7fca8cf5f910
  6957 ms  0x804 ret:0x0
  6957 ms  0x804 PR_Connect()
  6957 ms  0x804 fd:0x7fca8cf5f910
  6957 ms  0x804 SSL_ImportFD()
  6957 ms  0x804 ret:0x7fca8cf5fa60
  6957 ms  0x804 SSL_AuthCertificateHook()
  6957 ms  0x804 fd:0x7fca8cf5fa60
  6957 ms  0x804 ret:0x0
  6958 ms  0x804 PR_Connect()
  6958 ms  0x804 fd:0x7fca8cf5fa60
           /* TID 0x8cc */
  6970 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6970 ms  0x8cc ret:0x0
           /* TID 0x804 */
  6970 ms  SECKEY_ECParamsToKeySize()
  6970 ms  0x804 ret:0xff
  6970 ms  0x804 SECKEY_CreateECPrivateKey()
  6970 ms  0x804 cx:0x7fcaa81900a8
  6972 ms     | 0x804 EC_ValidatePublicKey()
  6972 ms     | 0x804 ret:0x0
  6972 ms  0x804 ret:0x7fca8d0d2820::7fca8d0d2820  e0 47 18 8d                                      .G..
  6972 ms  0x804 PK11_PubDeriveWithKDF()
  6972 ms  0x804 seckey:0x7fca8d0d2820
  6972 ms     | 0x804 EC_ValidatePublicKey()
  6972 ms     | 0x804 ret:0x0
  6973 ms  0x804 ret:0x7fca8cf49e00
  6973 ms  0x804 PK11_DeriveWithFlags()
  6973 ms  0x804 basekey:0x7fca8cf49e00
  6973 ms     | 0x804 PK11_DeriveWithTemplate()
  6973 ms  0x804 ret:0x7fca8cc97580
  6973 ms  0x804 PK11_Derive()
  6973 ms  0x804 basekey:0x7fca8cc97580
  6973 ms     | 0x804 PK11_DeriveWithTemplate()
  6973 ms  0x804 ret:0x7fca8d03fb00
  6973 ms  0x804 SECKEY_DestroyPrivateKey()
  6973 ms  0x804 privk:0x7fca8d0d2820::7fca8d0d2820  e0 47 18 8d                                      .G..
  6974 ms  0x804 privk:0x7fca8d0d2820::7fca8d0d2820  e5 e5 e5 e5                                      ....
  6974 ms  0x804 PK11_Encrypt()
  6974 ms  0x804 symkey:0x7fca8d244680
  6975 ms  0x804 SSL_AuthCertificateComplete()
  6975 ms  0x804 fd:0x7fca8d0430a0
  6975 ms  0x804 err:0x0
  6975 ms  0x804 PK11_Encrypt()
  6975 ms  0x804 symkey:0x7fca8d244680
  6994 ms  0x804 SECKEY_CreateECPrivateKey()
  6994 ms  0x804 cx:0x7fcaa8190da8
  6996 ms     | 0x804 EC_ValidatePublicKey()
  6996 ms     | 0x804 ret:0x0
  6996 ms  0x804 ret:0x7fca8d0d8020::7fca8d0d8020  00 46 18 8d                                      .F..
  6996 ms  0x804 SECKEY_CreateECPrivateKey()
  6996 ms  0x804 cx:0x7fcaa8190da8
  6997 ms     | 0x804 EC_ValidatePublicKey()
  7001 ms     | 0x804 ret:0x0
  7001 ms  0x804 ret:0x7fca8d0dc020::7fca8d0dc020  e0 4c 18 8d                                      .L..
  7002 ms  0x804 SECKEY_DestroyPrivateKey()
  7002 ms  0x804 privk:0x7fca8d0cf820::7fca8d0cf820  e0 22 14 8d                                      ."..
  7002 ms  0x804 privk:0x7fca8d0cf820::7fca8d0cf820  e5 e5 e5 e5                                      ....
  7003 ms  0x804 SECKEY_DestroyPrivateKey()
  7003 ms  0x804 privk:0x7fca8d0cc020::7fca8d0cc020  50 41 18 8d                                      PA..
  7003 ms  0x804 privk:0x7fca8d0cc020::7fca8d0cc020  e5 e5 e5 e5                                      ....
  7003 ms  0x804 PR_Close()
  7003 ms  0x804 fd:0x7fca8d0430a0
  7004 ms     | 0x804 PK11_Encrypt()
  7004 ms     | 0x804 symkey:0x7fca8d244680
  7005 ms  0x804 SECKEY_CreateECPrivateKey()
  7005 ms  0x804 cx:0x7fcaa8191288
  7006 ms     | 0x804 EC_ValidatePublicKey()
  7006 ms     | 0x804 ret:0x0
  7006 ms  0x804 ret:0x7fca8d0cb820::7fca8d0cb820  b0 40 18 8d                                      .@..
  7006 ms  0x804 SECKEY_CreateECPrivateKey()
  7006 ms  0x804 cx:0x7fcaa8191288
  7007 ms     | 0x804 EC_ValidatePublicKey()
  7011 ms     | 0x804 ret:0x0
  7011 ms  0x804 ret:0x7fca8d0cd820::7fca8d0cd820  30 43 18 8d                                      0C..
  7012 ms  0x804 SECKEY_CreateECPrivateKey()
  7012 ms  0x804 cx:0x7fcaa81910e8
  7013 ms     | 0x804 EC_ValidatePublicKey()
  7013 ms     | 0x804 ret:0x0
  7013 ms  0x804 ret:0x7fca8d0d9820::7fca8d0d9820  e0 92 49 8d                                      ..I.
  7013 ms  0x804 SECKEY_CreateECPrivateKey()
  7013 ms  0x804 cx:0x7fcaa81910e8
  7015 ms     | 0x804 EC_ValidatePublicKey()
  7018 ms     | 0x804 ret:0x0
  7018 ms  0x804 ret:0x7fca8d197020::7fca8d197020  60 30 4c 8d                                      `0L.
  7057 ms  0x804 PK11_Derive()
  7057 ms  0x804 basekey:0x7fca8d03fb00
  7057 ms     | 0x804 PK11_DeriveWithTemplate()
  7057 ms  0x804 ret:0x7fca8cc97580
  7057 ms  0x804 PK11_PubDeriveWithKDF()
  7057 ms  0x804 seckey:0x7fca8d0d8020
  7057 ms     | 0x804 EC_ValidatePublicKey()
  7057 ms     | 0x804 ret:0x0
  7058 ms  0x804 ret:0x7fca8d03fb00
  7058 ms  SECKEY_ECParamsToKeySize()
  7058 ms  0x804 ret:0xff
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8cc97580
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8cf49e00
  7058 ms  0x804 PK11_Derive()
  7058 ms  0x804 basekey:0x7fca8d03fb00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8d11ad00
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8d11ad00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8cc97580
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8d11ad00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8d03fb00
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8d11ad00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8cf49e00
  7058 ms  0x804 PK11_Derive()
  7058 ms  0x804 basekey:0x7fca8d244500
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8d244700
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8d03fb00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8d11ad00
  7058 ms  0x804 PK11_DeriveWithFlags()
  7058 ms  0x804 basekey:0x7fca8d03fb00
  7058 ms     | 0x804 PK11_DeriveWithTemplate()
  7058 ms  0x804 ret:0x7fca8cf49e00
  7060 ms  0x804 PK11_DeriveWithFlags()
  7060 ms  0x804 basekey:0x7fca8d03fb00
  7060 ms     | 0x804 PK11_DeriveWithTemplate()
  7060 ms  0x804 ret:0x7fca8cf49e00
           /* TID 0x814 */
  7064 ms  0x814 PR_Close()
  7064 ms  0x814 fd:0x7fca8cf5ff40
           /* TID 0x804 */
  7069 ms  0x804 PK11_Encrypt()
  7069 ms  0x804 symkey:0x7fcaa1599780
  7070 ms  0x804 PK11_Encrypt()
  7070 ms  0x804 symkey:0x7fca8d03fe80
  7072 ms  0x804 PK11_Derive()
  7072 ms  0x804 basekey:0x7fca8cf49e00
  7072 ms     | 0x804 PK11_DeriveWithTemplate()
  7072 ms  0x804 ret:0x7fca8d244500
  7072 ms  0x804 PK11_PubDeriveWithKDF()
  7072 ms  0x804 seckey:0x7fca8d0cb820
  7072 ms     | 0x804 EC_ValidatePublicKey()
  7072 ms     | 0x804 ret:0x0
  7073 ms  0x804 ret:0x7fca8cf49e00
  7073 ms  SECKEY_ECParamsToKeySize()
  7073 ms  0x804 ret:0xff
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8d244500
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244380
  7073 ms  0x804 PK11_Derive()
  7073 ms  0x804 basekey:0x7fca8cf49e00
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244680
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8d244680
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244500
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8d244680
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8cf49e00
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8d244680
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244380
  7073 ms  0x804 PK11_Derive()
  7073 ms  0x804 basekey:0x7fca8d402300
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d402380
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8cf49e00
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244680
  7073 ms  0x804 PK11_DeriveWithFlags()
  7073 ms  0x804 basekey:0x7fca8cf49e00
  7073 ms     | 0x804 PK11_DeriveWithTemplate()
  7073 ms  0x804 ret:0x7fca8d244380
  7076 ms  0x804 PK11_DeriveWithFlags()
  7076 ms  0x804 basekey:0x7fca8cf49e00
  7076 ms     | 0x804 PK11_DeriveWithTemplate()
  7076 ms  0x804 ret:0x7fca8d244380
  7077 ms  0x804 PK11_Encrypt()
  7077 ms  0x804 symkey:0x7fcaa1599780
  7078 ms  0x804 PK11_Derive()
  7078 ms  0x804 basekey:0x7fca8d244380
  7078 ms     | 0x804 PK11_DeriveWithTemplate()
  7078 ms  0x804 ret:0x7fca8d402300
  7078 ms  0x804 PK11_PubDeriveWithKDF()
  7078 ms  0x804 seckey:0x7fca8d0d9820
  7078 ms     | 0x804 EC_ValidatePublicKey()
  7078 ms     | 0x804 ret:0x0
  7078 ms  0x804 ret:0x7fca8d244380
  7078 ms  SECKEY_ECParamsToKeySize()
  7079 ms  0x804 ret:0xff
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d402300
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402700
  7079 ms  0x804 PK11_Derive()
  7079 ms  0x804 basekey:0x7fca8d244380
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402780
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d402780
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402300
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d402780
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d244380
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d402780
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402700
  7079 ms  0x804 PK11_Derive()
  7079 ms  0x804 basekey:0x7fca8d402900
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402980
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d244380
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402780
  7079 ms  0x804 PK11_DeriveWithFlags()
  7079 ms  0x804 basekey:0x7fca8d244380
  7079 ms     | 0x804 PK11_DeriveWithTemplate()
  7079 ms  0x804 ret:0x7fca8d402700
  7085 ms  0x804 PK11_DeriveWithFlags()
  7085 ms  0x804 basekey:0x7fca8d244380
  7085 ms     | 0x804 PK11_DeriveWithTemplate()
  7085 ms  0x804 ret:0x7fca8d402700
  7085 ms  0x804 SSL_ImportFD()
  7085 ms  0x804 ret:0x7fca8d3ac8b0
  7085 ms  0x804 SSL_AuthCertificateHook()
  7085 ms  0x804 fd:0x7fca8d3ac8b0
  7085 ms  0x804 ret:0x0
  7085 ms  0x804 PR_Connect()
  7085 ms  0x804 fd:0x7fca8d3ac8b0
  7086 ms  0x804 PR_Connect()
  7086 ms  0x804 fd:0x7fca8d3ac250
  7123 ms  0x804 SECKEY_CreateECPrivateKey()
  7123 ms  0x804 cx:0x7fcaa8191768
  7124 ms     | 0x804 EC_ValidatePublicKey()
  7124 ms     | 0x804 ret:0x0
  7124 ms  0x804 ret:0x7fca8d4c9020::7fca8d4c9020  00 f6 49 9e                                      ..I.
  7124 ms  0x804 SECKEY_CreateECPrivateKey()
  7124 ms  0x804 cx:0x7fcaa8191768
  7125 ms     | 0x804 EC_ValidatePublicKey()
  7126 ms     | 0x804 ret:0x0
  7126 ms  0x804 ret:0x7fca8d4cd020::7fca8d4cd020  80 f8 49 9e                                      ..I.
           /* TID 0x814 */
  7139 ms  0x814 PR_Close()
  7139 ms  0x814 fd:0x7fca8d14b3d0
  7141 ms  0x814 PR_Close()
  7141 ms  0x814 fd:0x7fca8d0430a0
  7156 ms  0x814 PR_Close()
  7156 ms  0x814 fd:0x7fca8cf5ff70
           /* TID 0x804 */
  7157 ms  0x804 PK11_Encrypt()
  7157 ms  0x804 symkey:0x7fca8d03fe80
  7181 ms  0x804 PK11_Derive()
  7181 ms  0x804 basekey:0x7fca8d402700
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7182 ms  0x804 ret:0x7fca8d402900
  7182 ms  0x804 PK11_PubDeriveWithKDF()
  7182 ms  0x804 seckey:0x7fca8d4c9020
  7182 ms     | 0x804 EC_ValidatePublicKey()
  7182 ms     | 0x804 ret:0x0
  7182 ms  0x804 ret:0x7fca8d402700
  7182 ms  SECKEY_ECParamsToKeySize()
  7182 ms  0x804 ret:0xff
  7182 ms  0x804 PK11_DeriveWithFlags()
  7182 ms  0x804 basekey:0x7fca8d402900
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7182 ms  0x804 ret:0x7fca8d350e00
  7182 ms  0x804 PK11_Derive()
  7182 ms  0x804 basekey:0x7fca8d402700
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7182 ms  0x804 ret:0x7fca8d402080
  7182 ms  0x804 PK11_DeriveWithFlags()
  7182 ms  0x804 basekey:0x7fca8d402080
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7182 ms  0x804 ret:0x7fca8d402900
  7182 ms  0x804 PK11_DeriveWithFlags()
  7182 ms  0x804 basekey:0x7fca8d402080
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7182 ms  0x804 ret:0x7fca8d402700
  7182 ms  0x804 PK11_DeriveWithFlags()
  7182 ms  0x804 basekey:0x7fca8d402080
  7182 ms     | 0x804 PK11_DeriveWithTemplate()
  7183 ms  0x804 ret:0x7fca8d350e00
  7183 ms  0x804 PK11_Derive()
  7183 ms  0x804 basekey:0x7fca8d243b00
  7183 ms     | 0x804 PK11_DeriveWithTemplate()
  7183 ms  0x804 ret:0x7fca8d403980
  7183 ms  0x804 PK11_DeriveWithFlags()
  7183 ms  0x804 basekey:0x7fca8d402700
  7183 ms     | 0x804 PK11_DeriveWithTemplate()
  7183 ms  0x804 ret:0x7fca8d402080
  7183 ms  0x804 PK11_DeriveWithFlags()
  7183 ms  0x804 basekey:0x7fca8d402700
  7183 ms     | 0x804 PK11_DeriveWithTemplate()
  7183 ms  0x804 ret:0x7fca8d350e00
  7184 ms  0x804 PK11_DeriveWithFlags()
  7184 ms  0x804 basekey:0x7fca8d402700
  7184 ms     | 0x804 PK11_DeriveWithTemplate()
  7184 ms  0x804 ret:0x7fca8d350e00
  7184 ms  0x804 PR_Connect()
  7184 ms  0x804 fd:0x7fca8d430520
           /* TID 0x814 */
  7201 ms  0x814 PR_Close()
  7201 ms  0x814 fd:0x7fca8cc6e520
  7204 ms  0x814 PR_Close()
  7204 ms  0x814 fd:0x7fca8cc6e520
           /* TID 0x8d6 */
  7204 ms  0x8d6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7204 ms  0x8d6 ret:0x0
           /* TID 0x804 */
  7204 ms  0x804 SSL_AuthCertificateComplete()
  7204 ms  0x804 fd:0x7fca8cf5ffa0
  7204 ms  0x804 err:0x0
  7204 ms     | 0x804 PK11_DeriveWithFlags()
  7204 ms     | 0x804 basekey:0x7fca8d244700
  7204 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7204 ms     | 0x804 ret:0x7fca8d350e00
  7204 ms     | 0x804 PK11_DeriveWithFlags()
  7204 ms     | 0x804 basekey:0x7fca8d244700
  7204 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7204 ms     | 0x804 ret:0x7fca8d243b00
  7204 ms     | 0x804 PK11_DeriveWithFlags()
  7204 ms     | 0x804 basekey:0x7fca8d244700
  7204 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7204 ms     | 0x804 ret:0x7fca8d44b180
  7204 ms     | 0x804 PK11_DeriveWithFlags()
  7204 ms     | 0x804 basekey:0x7fca8cc97580
  7204 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7204 ms     | 0x804 ret:0x7fca8d44b280
  7204 ms     | 0x804 PK11_DeriveWithFlags()
  7204 ms     | 0x804 basekey:0x7fca8cc97580
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d44b300
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8d243b00
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d44b300
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8d243b00
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d44b380
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8cc97580
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d11ad00
  7205 ms     | 0x804 PK11_Encrypt()
  7205 ms     | 0x804 symkey:0x7fca8d44b280
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8d350e00
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d11ad00
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8d350e00
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d44b380
  7205 ms     | 0x804 PK11_DeriveWithFlags()
  7205 ms     | 0x804 basekey:0x7fca8d244700
  7205 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7205 ms     | 0x804 ret:0x7fca8d44b280
  7205 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7205 ms     | 0x804 privk:0x7fca8d0dc020::7fca8d0dc020  e0 4c 18 8d                                      .L..
  7205 ms     | 0x804 privk:0x7fca8d0dc020::7fca8d0dc020  e5 e5 e5 e5                                      ....
  7205 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7205 ms     | 0x804 privk:0x7fca8d0d8020::7fca8d0d8020  00 46 18 8d                                      .F..
  7205 ms     | 0x804 privk:0x7fca8d0d8020::7fca8d0d8020  e5 e5 e5 e5                                      ....
  7206 ms  0x804 PK11_Encrypt()
  7206 ms  0x804 symkey:0x7fca8d11ad00
  7206 ms  0x804 PK11_Encrypt()
  7206 ms  0x804 symkey:0x7fca8d11ad00
           /* TID 0x814 */
  7223 ms  0x814 PR_Close()
  7223 ms  0x814 fd:0x7fca8d0430a0
           /* TID 0x876 */
  7223 ms  0x876 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7223 ms  0x876 ret:0x0
           /* TID 0x804 */
  7223 ms  0x804 SSL_AuthCertificateComplete()
  7223 ms  0x804 fd:0x7fca8cf5fa60
  7223 ms  0x804 err:0x0
  7223 ms     | 0x804 PK11_DeriveWithFlags()
  7223 ms     | 0x804 basekey:0x7fca8d402380
  7223 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7223 ms     | 0x804 ret:0x7fca8d03fb00
  7223 ms     | 0x804 PK11_DeriveWithFlags()
  7223 ms     | 0x804 basekey:0x7fca8d402380
  7223 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7223 ms     | 0x804 ret:0x7fca8cc97580
  7223 ms     | 0x804 PK11_DeriveWithFlags()
  7223 ms     | 0x804 basekey:0x7fca8d402380
  7223 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7223 ms     | 0x804 ret:0x7fca8d244700
  7223 ms     | 0x804 PK11_DeriveWithFlags()
  7223 ms     | 0x804 basekey:0x7fca8d244500
  7223 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d44b380
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8d244500
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d2d9b00
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8cc97580
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d2d9b00
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8cc97580
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d402400
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8d244500
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d244680
  7224 ms     | 0x804 PK11_Encrypt()
  7224 ms     | 0x804 symkey:0x7fca8d44b380
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8d03fb00
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d244680
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8d03fb00
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d402400
  7224 ms     | 0x804 PK11_DeriveWithFlags()
  7224 ms     | 0x804 basekey:0x7fca8d402380
  7224 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7224 ms     | 0x804 ret:0x7fca8d44b380
  7224 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7224 ms     | 0x804 privk:0x7fca8d0cd820::7fca8d0cd820  30 43 18 8d                                      0C..
  7224 ms     | 0x804 privk:0x7fca8d0cd820::7fca8d0cd820  e5 e5 e5 e5                                      ....
  7224 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7224 ms     | 0x804 privk:0x7fca8d0cb820::7fca8d0cb820  b0 40 18 8d                                      .@..
  7224 ms     | 0x804 privk:0x7fca8d0cb820::7fca8d0cb820  e5 e5 e5 e5                                      ....
  7225 ms  0x804 PK11_Encrypt()
  7225 ms  0x804 symkey:0x7fca8d244680
  7225 ms  0x804 PK11_Encrypt()
  7225 ms  0x804 symkey:0x7fca8d11ad00
  7243 ms  0x804 PK11_DeriveWithFlags()
  7243 ms  0x804 basekey:0x7fca8d44b280
  7243 ms     | 0x804 PK11_DeriveWithTemplate()
  7243 ms  0x804 ret:0x7fca8cf49e00
  7243 ms  0x804 PK11_DeriveWithFlags()
  7243 ms  0x804 basekey:0x7fca8d44b280
  7243 ms     | 0x804 PK11_DeriveWithTemplate()
  7243 ms  0x804 ret:0x7fca8cf49e00
  7243 ms  0x804 PK11_Encrypt()
  7243 ms  0x804 symkey:0x7fca8d11ad00
  7262 ms  0x804 PK11_DeriveWithFlags()
  7262 ms  0x804 basekey:0x7fca8d44b380
  7262 ms     | 0x804 PK11_DeriveWithTemplate()
  7262 ms  0x804 ret:0x7fca8cf49e00
  7262 ms  0x804 PK11_DeriveWithFlags()
  7262 ms  0x804 basekey:0x7fca8d44b380
  7262 ms     | 0x804 PK11_DeriveWithTemplate()
  7262 ms  0x804 ret:0x7fca8cf49e00
  7262 ms  0x804 PR_Close()
  7262 ms  0x804 fd:0x7fca8cf5fa60
  7262 ms     | 0x804 PK11_Encrypt()
  7262 ms     | 0x804 symkey:0x7fca8d244680
           /* TID 0x8d3 */
  7270 ms  0x8d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7271 ms  0x8d3 ret:0x0
           /* TID 0x814 */
  7271 ms  0x814 PR_Close()
  7271 ms  0x814 fd:0x7fca8cc48b80
           /* TID 0x804 */
  7271 ms  0x804 SSL_AuthCertificateComplete()
  7271 ms  0x804 fd:0x7fca8cf5f910
  7271 ms  0x804 err:0x0
  7271 ms     | 0x804 PK11_DeriveWithFlags()
  7271 ms     | 0x804 basekey:0x7fca8d402980
  7271 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7271 ms     | 0x804 ret:0x7fca8d244700
  7271 ms     | 0x804 PK11_DeriveWithFlags()
  7271 ms     | 0x804 basekey:0x7fca8d402980
  7271 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7271 ms     | 0x804 ret:0x7fca8cc97580
  7271 ms     | 0x804 PK11_DeriveWithFlags()
  7271 ms     | 0x804 basekey:0x7fca8d402980
  7271 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7271 ms     | 0x804 ret:0x7fca8d03fb00
  7271 ms     | 0x804 PK11_DeriveWithFlags()
  7271 ms     | 0x804 basekey:0x7fca8d402300
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d44b380
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8d402300
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d2d9b00
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8cc97580
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d2d9b00
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8cc97580
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d244680
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8d402300
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d402780
  7272 ms     | 0x804 PK11_Encrypt()
  7272 ms     | 0x804 symkey:0x7fca8d44b380
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8d244700
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d402780
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8d244700
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d244680
  7272 ms     | 0x804 PK11_DeriveWithFlags()
  7272 ms     | 0x804 basekey:0x7fca8d402980
  7272 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7272 ms     | 0x804 ret:0x7fca8d44b380
  7272 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7272 ms     | 0x804 privk:0x7fca8d197020::7fca8d197020  60 30 4c 8d                                      `0L.
  7272 ms     | 0x804 privk:0x7fca8d197020::7fca8d197020  e5 e5 e5 e5                                      ....
  7272 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7272 ms     | 0x804 privk:0x7fca8d0d9820::7fca8d0d9820  e0 92 49 8d                                      ..I.
  7273 ms     | 0x804 privk:0x7fca8d0d9820::7fca8d0d9820  e5 e5 e5 e5                                      ....
  7273 ms  0x804 PK11_Encrypt()
  7273 ms  0x804 symkey:0x7fca8d402780
  7273 ms  0x804 PK11_Encrypt()
  7273 ms  0x804 symkey:0x7fca8d11ad00
  7311 ms  0x804 PK11_DeriveWithFlags()
  7311 ms  0x804 basekey:0x7fca8d44b380
  7311 ms     | 0x804 PK11_DeriveWithTemplate()
  7311 ms  0x804 ret:0x7fca8d244380
  7311 ms  0x804 PK11_DeriveWithFlags()
  7311 ms  0x804 basekey:0x7fca8d44b380
  7311 ms     | 0x804 PK11_DeriveWithTemplate()
  7311 ms  0x804 ret:0x7fca8d244380
  7311 ms  0x804 PR_Close()
  7311 ms  0x804 fd:0x7fca8cf5f910
  7311 ms     | 0x804 PK11_Encrypt()
  7311 ms     | 0x804 symkey:0x7fca8d402780
           /* TID 0x814 */
  7326 ms  0x814 PR_Close()
  7326 ms  0x814 fd:0x7fca8cf5f910
           /* TID 0x804 */
  7337 ms  0x804 PK11_Encrypt()
  7337 ms  0x804 symkey:0x7fca8d11ad00
           /* TID 0x814 */
  7342 ms  0x814 PR_Close()
  7342 ms  0x814 fd:0x7fca8cf5f910
  7350 ms  0x814 PR_Close()
  7350 ms  0x814 fd:0x7fca8cf5f2e0
           /* TID 0x8cc */
  7350 ms  0x8cc _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7350 ms  0x8cc ret:0x0
           /* TID 0x804 */
  7350 ms  0x804 SSL_AuthCertificateComplete()
  7350 ms  0x804 fd:0x7fca8d3ac8b0
  7350 ms  0x804 err:0x0
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8d403980
  7350 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7350 ms     | 0x804 ret:0x7fca8d03fb00
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8d403980
  7350 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7350 ms     | 0x804 ret:0x7fca8cc97580
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8d403980
  7350 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7350 ms     | 0x804 ret:0x7fca8d244700
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8d402900
  7350 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7350 ms     | 0x804 ret:0x7fca8d44b380
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8d402900
  7350 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7350 ms     | 0x804 ret:0x7fca8d2d9b00
  7350 ms     | 0x804 PK11_DeriveWithFlags()
  7350 ms     | 0x804 basekey:0x7fca8cc97580
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d2d9b00
  7351 ms     | 0x804 PK11_DeriveWithFlags()
  7351 ms     | 0x804 basekey:0x7fca8cc97580
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d402780
  7351 ms     | 0x804 PK11_DeriveWithFlags()
  7351 ms     | 0x804 basekey:0x7fca8d402900
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d402080
  7351 ms     | 0x804 PK11_Encrypt()
  7351 ms     | 0x804 symkey:0x7fca8d44b380
  7351 ms     | 0x804 PK11_DeriveWithFlags()
  7351 ms     | 0x804 basekey:0x7fca8d03fb00
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d402080
  7351 ms     | 0x804 PK11_DeriveWithFlags()
  7351 ms     | 0x804 basekey:0x7fca8d03fb00
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d402780
  7351 ms     | 0x804 PK11_DeriveWithFlags()
  7351 ms     | 0x804 basekey:0x7fca8d403980
  7351 ms     |    | 0x804 PK11_DeriveWithTemplate()
  7351 ms     | 0x804 ret:0x7fca8d44b380
  7351 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7351 ms     | 0x804 privk:0x7fca8d4cd020::7fca8d4cd020  80 f8 49 9e                                      ..I.
  7352 ms     | 0x804 privk:0x7fca8d4cd020::7fca8d4cd020  e5 e5 e5 e5                                      ....
  7352 ms     | 0x804 SECKEY_DestroyPrivateKey()
  7352 ms     | 0x804 privk:0x7fca8d4c9020::7fca8d4c9020  00 f6 49 9e                                      ..I.
  7352 ms     | 0x804 privk:0x7fca8d4c9020::7fca8d4c9020  e5 e5 e5 e5                                      ....
  7356 ms  0x804 PK11_Encrypt()
  7356 ms  0x804 symkey:0x7fca8d402080
  7356 ms  0x804 PK11_Encrypt()
  7356 ms  0x804 symkey:0x7fca8d402080
           /* TID 0x814 */
  7373 ms  0x814 PR_Close()
  7373 ms  0x814 fd:0x7fca8cf5fac0
           /* TID 0x804 */
  7389 ms  0x804 PK11_DeriveWithFlags()
  7389 ms  0x804 basekey:0x7fca8d44b380
  7389 ms     | 0x804 PK11_DeriveWithTemplate()
  7389 ms  0x804 ret:0x7fca8d402700
  7389 ms  0x804 PK11_DeriveWithFlags()
  7389 ms  0x804 basekey:0x7fca8d44b380
  7389 ms     | 0x804 PK11_DeriveWithTemplate()
  7389 ms  0x804 ret:0x7fca8d402700
  7389 ms  0x804 PK11_Encrypt()
  7389 ms  0x804 symkey:0x7fca8d402080
  7418 ms  0x804 PK11_Encrypt()
  7418 ms  0x804 symkey:0x7fca8d402080
  7420 ms  0x804 PK11_Encrypt()
  7420 ms  0x804 symkey:0x7fca8d402080
  7441 ms  0x804 PK11_Encrypt()
  7441 ms  0x804 symkey:0x7fca8d402080
           /* TID 0x814 */
  7478 ms  0x814 PR_Close()
  7478 ms  0x814 fd:0x7fca8cf5fa60
           /* TID 0x804 */
  7489 ms  0x804 PR_Close()
  7489 ms  0x804 fd:0x7fca9f57fd60
           /* TID 0x7f8 */
  7490 ms  0x7f8 EC_ValidatePublicKey()
  7495 ms  0x7f8 ret:0x0
  7495 ms  0x7f8 EC_ValidatePublicKey()
  7497 ms  0x7f8 ret:0x0
  7497 ms  0x7f8 EC_ValidatePublicKey()
  7498 ms  0x7f8 ret:0x0
  7498 ms  0x7f8 EC_ValidatePublicKey()
  7499 ms  0x7f8 ret:0x0
  7499 ms  0x7f8 EC_ValidatePublicKey()
  7507 ms  0x7f8 ret:0x0
  7507 ms  0x7f8 EC_ValidatePublicKey()
  7509 ms  0x7f8 ret:0x0
  7509 ms  0x7f8 EC_ValidatePublicKey()
  7510 ms  0x7f8 ret:0x0
  7510 ms  0x7f8 EC_ValidatePublicKey()
  7512 ms  0x7f8 ret:0x0
  7512 ms  0x7f8 EC_ValidatePublicKey()
  7514 ms  0x7f8 ret:0x0
  7514 ms  0x7f8 EC_ValidatePublicKey()
  7515 ms  0x7f8 ret:0x0
           /* TID 0x804 */
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fca8d03fa00
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fcaa1599780
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fca8cf49e80
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fcaa1598c00
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fca8d1ab980
  7516 ms  0x804 PK11_Encrypt()
  7516 ms  0x804 symkey:0x7fca8d2d9980
  7517 ms  0x804 PK11_Encrypt()
  7517 ms  0x804 symkey:0x7fca8d1abc80
  7517 ms  0x804 PK11_Encrypt()
  7517 ms  0x804 symkey:0x7fca8d11ad00
  7517 ms  0x804 PK11_Encrypt()
  7517 ms  0x804 symkey:0x7fca8d402080
  7517 ms  0x804 PK11_Encrypt()
  7517 ms  0x804 symkey:0x7fca8d03fe80
  7517 ms  0x804 PK11_Encrypt()
  7517 ms  0x804 symkey:0x7fca8d1abf80
  7517 ms  0x804 PR_Close()
  7517 ms  0x804 fd:0x7fca8d3ac250
  7517 ms  0x804 PR_Close()
  7517 ms  0x804 fd:0x7fca8d430520
  7518 ms  0x804 PR_Close()
  7518 ms  0x804 fd:0x7fca8cc6e1c0
  7518 ms     | 0x804 PK11_Encrypt()
  7518 ms     | 0x804 symkey:0x7fca8d03f800
  7518 ms  0x804 PR_Close()
  7518 ms  0x804 fd:0x7fca8cf5f160
  7518 ms  0x804 PR_Close()
  7518 ms  0x804 fd:0x7fca9f57f160
  7518 ms     | 0x804 PK11_Encrypt()
  7518 ms     | 0x804 symkey:0x7fca8cf49500
  7518 ms  0x804 PR_Close()
  7518 ms  0x804 fd:0x7fca9f64f730
  7518 ms     | 0x804 PK11_Encrypt()
  7518 ms     | 0x804 symkey:0x7fca9e09ee00
  7519 ms  0x804 PR_Close()
  7519 ms  0x804 fd:0x7fca8d14bdc0
  7519 ms  0x804 PR_Close()
  7519 ms  0x804 fd:0x7fca8d4300a0
  7519 ms     | 0x804 PK11_Encrypt()
  7519 ms     | 0x804 symkey:0x7fca9e0f8c00
  7519 ms  0x804 PR_Close()
  7519 ms  0x804 fd:0x7fca9e4a7f10
  7519 ms  0x804 PR_Close()
  7519 ms  0x804 fd:0x7fca9e4a7cd0
  7519 ms     | 0x804 PK11_Encrypt()
  7519 ms     | 0x804 symkey:0x7fca9e0f7e80
           /* TID 0x86a */
  7519 ms  0x86a PR_Close()
  7519 ms  0x86a fd:0x7fca8cc486a0
  7519 ms  0x86a PR_Close()
  7519 ms  0x86a fd:0x7fca8cc486a0
           /* TID 0x804 */
  7522 ms  0x804 PR_Close()
  7522 ms  0x804 fd:0x7fcaa3174c40
  7522 ms  0x804 PR_Close()
  7522 ms  0x804 fd:0x7fca9e713ac0
  7522 ms     | 0x804 PK11_Encrypt()
  7522 ms     | 0x804 symkey:0x7fca9fdd6d80
  7523 ms  0x804 PR_Close()
  7523 ms  0x804 fd:0x7fca9fdd8280
  7523 ms     | 0x804 PK11_Encrypt()
  7523 ms     | 0x804 symkey:0x7fca9e540c80
  7523 ms  0x804 PR_Close()
  7523 ms  0x804 fd:0x7fca8d14bfa0
  7523 ms     | 0x804 PK11_Encrypt()
  7523 ms     | 0x804 symkey:0x7fca8d1abf80
  7523 ms  0x804 PR_Close()
  7523 ms  0x804 fd:0x7fca8cc48cd0
  7523 ms     | 0x804 PK11_Encrypt()
  7523 ms     | 0x804 symkey:0x7fca8cf49e80
  7524 ms  0x804 PR_Close()
  7524 ms  0x804 fd:0x7fca8d4c0d60
  7524 ms     | 0x804 PK11_Encrypt()
  7524 ms     | 0x804 symkey:0x7fca8d2d9980
  7524 ms  0x804 PR_Close()
  7524 ms  0x804 fd:0x7fcaa15946a0
  7524 ms     | 0x804 PK11_Encrypt()
  7524 ms     | 0x804 symkey:0x7fcaa1599780
  7524 ms  0x804 PR_Close()
  7524 ms  0x804 fd:0x7fca8cc48520
  7524 ms     | 0x804 PK11_Encrypt()
  7524 ms     | 0x804 symkey:0x7fca8d1abc80
  7525 ms  0x804 PR_Close()
  7525 ms  0x804 fd:0x7fca8cc6e2e0
  7525 ms     | 0x804 PK11_Encrypt()
  7525 ms     | 0x804 symkey:0x7fca8d03fa00
  7525 ms  0x804 PR_Close()
  7525 ms  0x804 fd:0x7fca8d4c0e50
  7525 ms     | 0x804 PK11_Encrypt()
  7525 ms     | 0x804 symkey:0x7fcaa1598c00
  7525 ms  0x804 PR_Close()
  7525 ms  0x804 fd:0x7fca8d4c02e0
  7525 ms     | 0x804 PK11_Encrypt()
  7525 ms     | 0x804 symkey:0x7fca8d1ab980
  7525 ms  0x804 PR_Close()
  7525 ms  0x804 fd:0x7fca8cc48d90
  7525 ms     | 0x804 PK11_Encrypt()
  7525 ms     | 0x804 symkey:0x7fca8d03fe80
  7526 ms  0x804 PR_Close()
  7526 ms  0x804 fd:0x7fca8d3ac8b0
  7526 ms     | 0x804 PK11_Encrypt()
  7526 ms     | 0x804 symkey:0x7fca8d402080
  7526 ms  0x804 PR_Close()
  7526 ms  0x804 fd:0x7fca8cf5ffa0
  7526 ms     | 0x804 PK11_Encrypt()
  7526 ms     | 0x804 symkey:0x7fca8d11ad00
           /* TID 0x7f8 */
  7527 ms  0x7f8 PR_Close()
  7527 ms  0x7f8 fd:0x7fca9fb3c790
  7527 ms  0x7f8 PR_Close()
  7527 ms  0x7f8 fd:0x7fca8cc48550
  7528 ms  0x7f8 PR_Close()
  7528 ms  0x7f8 fd:0x7fca8cc485b0
  7528 ms  0x7f8 PR_Close()
  7528 ms  0x7f8 fd:0x7fca8cc48550
  7529 ms  0x7f8 PR_Close()
  7529 ms  0x7f8 fd:0x7fca8cc485b0
  7529 ms  0x7f8 PR_Close()
  7529 ms  0x7f8 fd:0x7fca8cc48550
           /* TID 0x880 */
  7532 ms  0x880 PR_Close()
  7532 ms  0x880 fd:0x7fca8cc48550
           /* TID 0x7f8 */
  7549 ms  0x7f8 PR_Close()
  7549 ms  0x7f8 fd:0x7fca8cc485b0
  7549 ms  0x7f8 PR_Close()
  7549 ms  0x7f8 fd:0x7fca8d043100
  7550 ms  0x7f8 PR_Close()
  7550 ms  0x7f8 fd:0x7fca8cc485b0
  7550 ms  0x7f8 PR_Close()
  7550 ms  0x7f8 fd:0x7fca8d043100
  7551 ms  0x7f8 PR_Close()
  7551 ms  0x7f8 fd:0x7fcaa93c89a0
  7551 ms  0x7f8 PR_Close()
  7551 ms  0x7f8 fd:0x7fcaa93c88b0
  7551 ms  0x7f8 PR_Close()
  7551 ms  0x7f8 fd:0x7fcaa93c8a60
  7553 ms  0x7f8 PR_Close()
  7553 ms  0x7f8 fd:0x7fca8d043160
  7555 ms  0x7f8 PR_Close()
  7555 ms  0x7f8 fd:0x7fca8d043160
  7557 ms  0x7f8 PR_Close()
  7557 ms  0x7f8 fd:0x7fca8cc485b0
  7557 ms  0x7f8 PR_Close()
  7557 ms  0x7f8 fd:0x7fca8d043220
  7563 ms  0x7f8 PR_Close()
  7563 ms  0x7f8 fd:0x7fca8cc485b0
  7563 ms  0x7f8 PR_Close()
  7563 ms  0x7f8 fd:0x7fca8d043220
  7565 ms  0x7f8 PR_Close()
  7565 ms  0x7f8 fd:0x7fca8d043370
  7567 ms  0x7f8 PR_Close()
  7567 ms  0x7f8 fd:0x7fca8d043370
  7569 ms  0x7f8 PR_Close()
  7569 ms  0x7f8 fd:0x7fca8cc485b0
  7569 ms  0x7f8 PR_Close()
  7569 ms  0x7f8 fd:0x7fca8d0434c0
  7570 ms  0x7f8 PR_Close()
  7570 ms  0x7f8 fd:0x7fca8cc485b0
  7570 ms  0x7f8 PR_Close()
  7570 ms  0x7f8 fd:0x7fca8d0434c0
  7572 ms  0x7f8 PR_Close()
  7572 ms  0x7f8 fd:0x7fca8d0434f0
  7573 ms  0x7f8 PR_Close()
  7573 ms  0x7f8 fd:0x7fca8d0434f0
  7580 ms  0x7f8 PR_Close()
  7580 ms  0x7f8 fd:0x7fca8d14b820
  7581 ms  0x7f8 PR_Close()
  7581 ms  0x7f8 fd:0x7fca8d14b820
  7583 ms  0x7f8 PR_Close()
  7583 ms  0x7f8 fd:0x7fca8d14b9d0
           /* TID 0x880 */
  7589 ms  0x880 PR_Close()
  7589 ms  0x880 fd:0x7fca8cc48130
           /* TID 0x7f8 */
  7590 ms  0x7f8 PR_Close()
  7590 ms  0x7f8 fd:0x7fca8cc485b0
  7590 ms  0x7f8 PR_Close()
  7590 ms  0x7f8 fd:0x7fca8cc6e1f0
           /* TID 0x8d8 */
  7599 ms  0x8d8 PR_Close()
  7599 ms  0x8d8 fd:0x7fca8d3ac9a0
  7626 ms  0x8d8 PR_Close()
  7626 ms  0x8d8 fd:0x7fca8cf5f490
           /* TID 0x7fd */
  7632 ms  0x7fd PR_Close()
  7632 ms  0x7fd fd:0x7fcaa8155e20
           /* TID 0x804 */
  7639 ms  0x804 SSL_ImportFD()
  7639 ms  0x804 ret:0x7fca8d043040
  7639 ms  0x804 SSL_AuthCertificateHook()
  7639 ms  0x804 fd:0x7fca8d043040
  7639 ms  0x804 ret:0x0
  7639 ms  0x804 PR_Connect()
  7639 ms  0x804 fd:0x7fca8d043040
  7639 ms  0x804 PR_Close()
  7639 ms  0x804 fd:0x7fca8d043040
           /* TID 0x8d8 */
  7651 ms  0x8d8 PR_Close()
  7651 ms  0x8d8 fd:0x7fca8cf5fa60
           /* TID 0x7f8 */
  7660 ms  0x7f8 PR_Close()
  7660 ms  0x7f8 fd:0x7fca8cc485b0
  7660 ms  0x7f8 PR_Close()
  7660 ms  0x7f8 fd:0x7fca8cf5fa60
           /* TID 0x804 */
  7660 ms  0x804 PR_Close()
  7660 ms  0x804 fd:0x7fca9e7134c0
           /* TID 0x86a */
  7662 ms  0x86a PR_Close()
  7662 ms  0x86a fd:0x7fca8cf5f5b0
  7662 ms  0x86a PR_Close()
  7662 ms  0x86a fd:0x7fca8cf5fb80
  7662 ms  0x86a PR_Close()
  7662 ms  0x86a fd:0x7fca8cc48520
  7662 ms  0x86a PR_Close()
  7662 ms  0x86a fd:0x7fca8cc48520
           /* TID 0x8d8 */
  7662 ms  0x8d8 PR_Close()
  7662 ms  0x8d8 fd:0x7fca8cf5f850
           /* TID 0x814 */
  7668 ms  0x814 PR_Close()
  7668 ms  0x814 fd:0x7fca8d4c0640
  7669 ms  0x814 PR_Close()
  7669 ms  0x814 fd:0x7fca8d4c0670
           /* TID 0x7fd */
  7678 ms  0x7fd PR_Close()
  7678 ms  0x7fd fd:0x7fcaa4708820
  7678 ms  0x7fd PR_Close()
  7678 ms  0x7fd fd:0x7fca9f64f5b0
           /* TID 0x7f8 */
  7683 ms  0x7f8 PR_Close()
  7683 ms  0x7f8 fd:0x7fca8cc485b0
  7683 ms  0x7f8 PR_Close()
  7683 ms  0x7f8 fd:0x7fca8cf5fcd0
           /* TID 0x8d8 */
  7684 ms  0x8d8 PR_Close()
  7684 ms  0x8d8 fd:0x7fca8d14bb80
  7688 ms  0x8d8 PR_Close()
  7688 ms  0x8d8 fd:0x7fca8cf5fc40
           /* TID 0x880 */
  7793 ms  0x880 PR_Close()
  7793 ms  0x880 fd:0x7fca8cc48130
           /* TID 0x8d8 */
  7867 ms  0x8d8 PR_Close()
  7867 ms  0x8d8 fd:0x7fca8cc48730
  7869 ms  0x8d8 PR_Close()
  7869 ms  0x8d8 fd:0x7fca8cc48730
  7876 ms  0x8d8 PR_Close()
  7876 ms  0x8d8 fd:0x7fca8cc6e3a0
  7878 ms  0x8d8 PR_Close()
  7878 ms  0x8d8 fd:0x7fca8cc6ee50
  7896 ms  0x8d8 PR_Close()
  7896 ms  0x8d8 fd:0x7fca8cf5faf0
  7903 ms  0x8d8 PR_Close()
  7903 ms  0x8d8 fd:0x7fca8d043850
  7910 ms  0x8d8 PR_Close()
  7910 ms  0x8d8 fd:0x7fca8d14bbe0
  7921 ms  0x8d8 PR_Close()
  7921 ms  0x8d8 fd:0x7fca8d14bf40
  7923 ms  0x8d8 PR_Close()
  7923 ms  0x8d8 fd:0x7fca8d14bf40
           /* TID 0x7f8 */
  8104 ms  0x7f8 PR_Close()
  8104 ms  0x7f8 fd:0x7fca8cc6e0d0
  8105 ms  0x7f8 PR_Close()
  8105 ms  0x7f8 fd:0x7fca8cc6e0d0
  8111 ms  0x7f8 PR_Close()
  8111 ms  0x7f8 fd:0x7fcac67da130
  8111 ms  0x7f8 PR_Close()
  8111 ms  0x7f8 fd:0x7fcac67da190
Process terminated
