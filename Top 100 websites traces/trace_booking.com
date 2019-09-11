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
           /* TID 0x1d1c */
    72 ms  0x1d1c PR_Close()
    72 ms  0x1d1c fd:0x7fcc807b8940
           /* TID 0x1d14 */
   270 ms  0x1d14 SSL_ImportFD()
   270 ms  0x1d14 ret:0x7fcc807c49d0
   270 ms  0x1d14 SSL_AuthCertificateHook()
   270 ms  0x1d14 fd:0x7fcc807c49d0
   270 ms  0x1d14 ret:0x0
   271 ms  0x1d14 PR_Connect()
   271 ms  0x1d14 fd:0x7fcc807c49d0
   478 ms  0x1d14 SECKEY_CreateECPrivateKey()
   478 ms  0x1d14 cx:0x7fcc808e1c08
   480 ms     | 0x1d14 EC_ValidatePublicKey()
   480 ms     | 0x1d14 ret:0x0
   480 ms  0x1d14 ret:0x7fcc80851820::7fcc80851820  90 9c 8b 80                                      ....
   480 ms  0x1d14 SECKEY_CreateECPrivateKey()
   480 ms  0x1d14 cx:0x7fcc808e1c08
   482 ms     | 0x1d14 EC_ValidatePublicKey()
   486 ms     | 0x1d14 ret:0x0
   486 ms  0x1d14 ret:0x7fcc80853820::7fcc80853820  70 9e 8b 80                                      p...
           /* TID 0x1d79 */
   600 ms  0x1d79 PR_Close()
   600 ms  0x1d79 fd:0x7fcc807c4e20
   603 ms  0x1d79 PR_Close()
   603 ms  0x1d79 fd:0x7fcc807c4e20
           /* TID 0x1d14 */
   702 ms  SECKEY_ECParamsToKeySize()
   702 ms  0x1d14 ret:0x100
   702 ms  0x1d14 SECKEY_CreateECPrivateKey()
   702 ms  0x1d14 cx:0x7fcc808e1c08
   704 ms     | 0x1d14 EC_ValidatePublicKey()
   709 ms     | 0x1d14 ret:0x0
   709 ms  0x1d14 ret:0x7fcc8085c820::7fcc8085c820  d0 d8 8f 80                                      ....
   709 ms  0x1d14 PK11_PubDeriveWithKDF()
   709 ms  0x1d14 seckey:0x7fcc8085c820
   709 ms     | 0x1d14 EC_ValidatePublicKey()
   713 ms     | 0x1d14 ret:0x0
   717 ms  0x1d14 ret:0x7fcc8acd5080
   717 ms  0x1d14 PK11_DeriveWithFlags()
   717 ms  0x1d14 basekey:0x7fcc8acd5080
   717 ms     | 0x1d14 PK11_DeriveWithTemplate()
   717 ms  0x1d14 ret:0x7fcc808f1980
   717 ms  0x1d14 PK11_Derive()
   717 ms  0x1d14 basekey:0x7fcc808f1980
   717 ms     | 0x1d14 PK11_DeriveWithTemplate()
   718 ms  0x1d14 ret:0x7fcc808f1a80
   718 ms  0x1d14 SECKEY_DestroyPrivateKey()
   718 ms  0x1d14 privk:0x7fcc8085c820::7fcc8085c820  d0 d8 8f 80                                      ....
   718 ms  0x1d14 privk:0x7fcc8085c820::7fcc8085c820  e5 e5 e5 e5                                      ....
   718 ms  0x1d14 PK11_Encrypt()
   718 ms  0x1d14 symkey:0x7fcc808f1c00
   719 ms  0x1d14 PR_Connect()
   719 ms  0x1d14 fd:0x7fcc6fa1a070
           /* TID 0x1d79 */
   751 ms  0x1d79 PR_Close()
   751 ms  0x1d79 fd:0x7fcc6fa1a100
           /* TID 0x1d1c */
   772 ms  0x1d1c PR_Close()
   772 ms  0x1d1c fd:0x7fcc6fa1a100
           /* TID 0x1d7e */
   773 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   773 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
   774 ms  0x1d14 SSL_AuthCertificateComplete()
   774 ms  0x1d14 fd:0x7fcc807c49d0
   774 ms  0x1d14 err:0x0
   774 ms  0x1d14 PK11_Encrypt()
   774 ms  0x1d14 symkey:0x7fcc808f1c00
   926 ms  0x1d14 SECKEY_DestroyPrivateKey()
   926 ms  0x1d14 privk:0x7fcc80853820::7fcc80853820  70 9e 8b 80                                      p...
   927 ms  0x1d14 privk:0x7fcc80853820::7fcc80853820  e5 e5 e5 e5                                      ....
   927 ms  0x1d14 SECKEY_DestroyPrivateKey()
   927 ms  0x1d14 privk:0x7fcc80851820::7fcc80851820  90 9c 8b 80                                      ....
   927 ms  0x1d14 privk:0x7fcc80851820::7fcc80851820  e5 e5 e5 e5                                      ....
  1141 ms  0x1d14 SSL_ImportFD()
  1141 ms  0x1d14 ret:0x7fcc6fa1a2e0
  1141 ms  0x1d14 SSL_AuthCertificateHook()
  1141 ms  0x1d14 fd:0x7fcc6fa1a2e0
  1141 ms  0x1d14 ret:0x0
  1141 ms  0x1d14 PR_Connect()
  1141 ms  0x1d14 fd:0x7fcc6fa1a2e0
  1167 ms  0x1d14 SECKEY_CreateECPrivateKey()
  1167 ms  0x1d14 cx:0x7fcc808e2908
  1169 ms     | 0x1d14 EC_ValidatePublicKey()
  1169 ms     | 0x1d14 ret:0x0
  1169 ms  0x1d14 ret:0x7fcc80853820::7fcc80853820  70 9e 8b 80                                      p...
  1169 ms  0x1d14 SECKEY_CreateECPrivateKey()
  1169 ms  0x1d14 cx:0x7fcc808e2908
  1171 ms     | 0x1d14 EC_ValidatePublicKey()
  1175 ms     | 0x1d14 ret:0x0
  1175 ms  0x1d14 ret:0x7fcc80859820::7fcc80859820  00 d6 8f 80                                      ....
           /* TID 0x1d7e */
  1227 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1228 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  1228 ms  SECKEY_ECParamsToKeySize()
  1228 ms  0x1d14 ret:0x100
  1228 ms  0x1d14 SECKEY_CreateECPrivateKey()
  1228 ms  0x1d14 cx:0x7fcc808e2908
  1230 ms     | 0x1d14 EC_ValidatePublicKey()
  1233 ms     | 0x1d14 ret:0x0
  1233 ms  0x1d14 ret:0x7fcc8085d020::7fcc8085d020  70 d9 8f 80                                      p...
  1233 ms  0x1d14 PK11_PubDeriveWithKDF()
  1233 ms  0x1d14 seckey:0x7fcc8085d020
  1233 ms     | 0x1d14 EC_ValidatePublicKey()
  1235 ms     | 0x1d14 ret:0x0
  1237 ms  0x1d14 ret:0x7fcc8acd5080
  1237 ms  0x1d14 PK11_DeriveWithFlags()
  1237 ms  0x1d14 basekey:0x7fcc8acd5080
  1237 ms     | 0x1d14 PK11_DeriveWithTemplate()
  1238 ms  0x1d14 ret:0x7fcc8087ff00
  1238 ms  0x1d14 PK11_Derive()
  1238 ms  0x1d14 basekey:0x7fcc8087ff00
  1238 ms     | 0x1d14 PK11_DeriveWithTemplate()
  1238 ms  0x1d14 ret:0x7fcc808f2480
  1238 ms  0x1d14 SECKEY_DestroyPrivateKey()
  1238 ms  0x1d14 privk:0x7fcc8085d020::7fcc8085d020  70 d9 8f 80                                      p...
  1238 ms  0x1d14 privk:0x7fcc8085d020::7fcc8085d020  e5 e5 e5 e5                                      ....
  1238 ms  0x1d14 PK11_Encrypt()
  1238 ms  0x1d14 symkey:0x7fcc808f2980
  1238 ms  0x1d14 SSL_AuthCertificateComplete()
  1238 ms  0x1d14 fd:0x7fcc6fa1a2e0
  1238 ms  0x1d14 err:0x0
  1239 ms  0x1d14 PK11_Encrypt()
  1239 ms  0x1d14 symkey:0x7fcc808f2980
  1289 ms  0x1d14 SECKEY_DestroyPrivateKey()
  1289 ms  0x1d14 privk:0x7fcc80859820::7fcc80859820  00 d6 8f 80                                      ....
  1289 ms  0x1d14 privk:0x7fcc80859820::7fcc80859820  e5 e5 e5 e5                                      ....
  1289 ms  0x1d14 SECKEY_DestroyPrivateKey()
  1289 ms  0x1d14 privk:0x7fcc80853820::7fcc80853820  70 9e 8b 80                                      p...
  1289 ms  0x1d14 privk:0x7fcc80853820::7fcc80853820  e5 e5 e5 e5                                      ....
  1291 ms  0x1d14 PK11_Encrypt()
  1291 ms  0x1d14 symkey:0x7fcc808f2980
  1318 ms  0x1d14 PK11_Encrypt()
  1318 ms  0x1d14 symkey:0x7fcc808f2980
  1346 ms  0x1d14 PK11_Encrypt()
  1346 ms  0x1d14 symkey:0x7fcc808f2980
  1374 ms  0x1d14 PK11_Encrypt()
  1374 ms  0x1d14 symkey:0x7fcc808f2980
  1492 ms  0x1d14 PK11_Encrypt()
  1492 ms  0x1d14 symkey:0x7fcc808f2980
  1523 ms  0x1d14 PK11_Encrypt()
  1523 ms  0x1d14 symkey:0x7fcc808f2980
  1554 ms  0x1d14 PK11_Encrypt()
  1554 ms  0x1d14 symkey:0x7fcc808f2980
           /* TID 0x1d76 */
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1582 ms  0x1d76 PR_Close()
  1582 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a460
  1583 ms  0x1d76 PR_Close()
  1583 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1584 ms  0x1d76 PR_Close()
  1584 ms  0x1d76 fd:0x7fcc6fa1a460
  1584 ms  0x1d76 PR_Close()
  1584 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1584 ms  0x1d76 PR_Close()
  1584 ms  0x1d76 fd:0x7fcc6fa1a460
  1587 ms  0x1d76 PR_Close()
  1587 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1587 ms  0x1d76 PR_Close()
  1587 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1589 ms  0x1d76 PR_Close()
  1589 ms  0x1d76 fd:0x7fcc6fa1a3a0
  1590 ms  0x1d76 PR_Close()
  1590 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1592 ms  0x1d76 PR_Close()
  1592 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1592 ms  0x1d76 PR_Close()
  1592 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1595 ms  0x1d76 PR_Close()
  1595 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1595 ms  0x1d76 PR_Close()
  1595 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1646 ms  0x1d76 PR_Close()
  1646 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1647 ms  0x1d76 PR_Close()
  1647 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1654 ms  0x1d76 PR_Close()
  1654 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1654 ms  0x1d76 PR_Close()
  1654 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1660 ms  0x1d76 PR_Close()
  1660 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1660 ms  0x1d76 PR_Close()
  1660 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1662 ms  0x1d76 PR_Close()
  1662 ms  0x1d76 fd:0x7fcc6fa1a3d0
  1662 ms  0x1d76 PR_Close()
  1662 ms  0x1d76 fd:0x7fcc6fa1a3d0
           /* TID 0x1d73 */
  1662 ms  0x1d73 PR_Close()
  1662 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1662 ms  0x1d73 PR_Close()
  1662 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
  1663 ms  0x1d73 PR_Close()
  1663 ms  0x1d73 fd:0x7fcc6fa1a3d0
           /* TID 0x1d79 */
  2165 ms  0x1d79 PR_Close()
  2165 ms  0x1d79 fd:0x7fcc6fa1a790
  2168 ms  0x1d79 PR_Close()
  2168 ms  0x1d79 fd:0x7fcc6fa1a790
  2708 ms  0x1d79 PR_Close()
  2708 ms  0x1d79 fd:0x7fcc6fa1a790
           /* TID 0x1d1c */
  4164 ms  0x1d1c PR_Close()
  4164 ms  0x1d1c fd:0x7fcc6fa1a790
  4164 ms  0x1d1c PR_Close()
  4164 ms  0x1d1c fd:0x7fcc6fa1a8e0
           /* TID 0x1d14 */
  4554 ms  0x1d14 SSL_ImportFD()
  4554 ms  0x1d14 ret:0x7fcc81cad8b0
  4554 ms  0x1d14 SSL_AuthCertificateHook()
  4554 ms  0x1d14 fd:0x7fcc81cad8b0
  4554 ms  0x1d14 ret:0x0
  4554 ms  0x1d14 PR_Connect()
  4554 ms  0x1d14 fd:0x7fcc81cad8b0
  4611 ms  0x1d14 SECKEY_CreateECPrivateKey()
  4611 ms  0x1d14 cx:0x7fcc808e2c48
  4613 ms     | 0x1d14 EC_ValidatePublicKey()
  4613 ms     | 0x1d14 ret:0x0
  4613 ms  0x1d14 ret:0x7fcc6f803820::7fcc6f803820  90 57 9a 6f                                      .W.o
  4613 ms  0x1d14 SECKEY_CreateECPrivateKey()
  4613 ms  0x1d14 cx:0x7fcc808e2c48
  4615 ms     | 0x1d14 EC_ValidatePublicKey()
  4619 ms     | 0x1d14 ret:0x0
  4619 ms  0x1d14 ret:0x7fcc6f805820::7fcc6f805820  10 5a 9a 6f                                      .Z.o
  4677 ms  0x1d14 PK11_Derive()
  4677 ms  0x1d14 basekey:0x7fcc8acd5080
  4677 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4677 ms  0x1d14 ret:0x7fcc81c91c80
  4677 ms  0x1d14 PK11_PubDeriveWithKDF()
  4677 ms  0x1d14 seckey:0x7fcc6f803820
  4677 ms     | 0x1d14 EC_ValidatePublicKey()
  4677 ms     | 0x1d14 ret:0x0
  4679 ms  0x1d14 ret:0x7fcc8acd5080
  4679 ms  SECKEY_ECParamsToKeySize()
  4679 ms  0x1d14 ret:0xff
  4679 ms  0x1d14 PK11_DeriveWithFlags()
  4679 ms  0x1d14 basekey:0x7fcc81c91c80
  4679 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4679 ms  0x1d14 ret:0x7fcc81c91d00
  4679 ms  0x1d14 PK11_Derive()
  4679 ms  0x1d14 basekey:0x7fcc8acd5080
  4679 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4679 ms  0x1d14 ret:0x7fcc81c91d80
  4679 ms  0x1d14 PK11_DeriveWithFlags()
  4679 ms  0x1d14 basekey:0x7fcc81c91d80
  4679 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc81c91c80
  4680 ms  0x1d14 PK11_DeriveWithFlags()
  4680 ms  0x1d14 basekey:0x7fcc81c91d80
  4680 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc8acd5080
  4680 ms  0x1d14 PK11_DeriveWithFlags()
  4680 ms  0x1d14 basekey:0x7fcc81c91d80
  4680 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc81c91d00
  4680 ms  0x1d14 PK11_Derive()
  4680 ms  0x1d14 basekey:0x7fcc81c91e00
  4680 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc81c91e80
  4680 ms  0x1d14 PK11_DeriveWithFlags()
  4680 ms  0x1d14 basekey:0x7fcc8acd5080
  4680 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc81c91d80
  4680 ms  0x1d14 PK11_DeriveWithFlags()
  4680 ms  0x1d14 basekey:0x7fcc8acd5080
  4680 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4680 ms  0x1d14 ret:0x7fcc81c91d00
  4684 ms  SECKEY_ECParamsToKeySize()
  4684 ms  0x1d14 ret:0x100
  4684 ms  SECKEY_ECParamsToBasePointOrderLen()
  4684 ms  0x1d14 ret:0x100
  4684 ms  SECKEY_ECParamsToBasePointOrderLen()
  4684 ms  0x1d14 ret:0x100
  4684 ms  0x1d14 EC_ValidatePublicKey()
  4689 ms  0x1d14 ret:0x0
  4697 ms  0x1d14 PK11_DeriveWithFlags()
  4697 ms  0x1d14 basekey:0x7fcc8acd5080
  4697 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4697 ms  0x1d14 ret:0x7fcc81c91d00
           /* TID 0x1d1c */
  4724 ms  0x1d1c PR_Close()
  4724 ms  0x1d1c fd:0x7fcc81c56610
           /* TID 0x1d7e */
  4724 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4724 ms  0x1d7e ret:0x0
  4724 ms  SECKEY_ECParamsToBasePointOrderLen()
  4724 ms  0x1d7e ret:0x180
  4724 ms  SECKEY_ECParamsToBasePointOrderLen()
  4724 ms  0x1d7e ret:0x180
  4724 ms  0x1d7e EC_ValidatePublicKey()
  4726 ms  0x1d7e ret:0x0
  4731 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4731 ms     | SECKEY_ECParamsToBasePointOrderLen()
  4731 ms     | 0x1d7e ret:0x180
  4731 ms     | SECKEY_ECParamsToBasePointOrderLen()
  4731 ms     | 0x1d7e ret:0x180
  4731 ms     | 0x1d7e EC_ValidatePublicKey()
  4732 ms     | 0x1d7e ret:0x0
  4735 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  4764 ms  0x1d14 SSL_AuthCertificateComplete()
  4764 ms  0x1d14 fd:0x7fcc81cad8b0
  4764 ms  0x1d14 err:0x0
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91d00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91e00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91880
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91c80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91a00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91c80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91b00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e00
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91b00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e00
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c92080
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91c80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91d80
  4764 ms     | 0x1d14 PK11_Encrypt()
  4764 ms     | 0x1d14 symkey:0x7fcc81c91a00
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91d00
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91d80
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91d00
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c92080
  4764 ms     | 0x1d14 PK11_DeriveWithFlags()
  4764 ms     | 0x1d14 basekey:0x7fcc81c91e80
  4764 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  4764 ms     | 0x1d14 ret:0x7fcc81c91a00
  4764 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  4764 ms     | 0x1d14 privk:0x7fcc6f805820::7fcc6f805820  10 5a 9a 6f                                      .Z.o
  4765 ms     | 0x1d14 privk:0x7fcc6f805820::7fcc6f805820  e5 e5 e5 e5                                      ....
  4765 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  4765 ms     | 0x1d14 privk:0x7fcc6f803820::7fcc6f803820  90 57 9a 6f                                      .W.o
  4765 ms     | 0x1d14 privk:0x7fcc6f803820::7fcc6f803820  e5 e5 e5 e5                                      ....
  4766 ms  0x1d14 PK11_Encrypt()
  4766 ms  0x1d14 symkey:0x7fcc81c91d80
  4821 ms  0x1d14 PK11_DeriveWithFlags()
  4821 ms  0x1d14 basekey:0x7fcc81c91a00
  4821 ms     | 0x1d14 PK11_DeriveWithTemplate()
  4821 ms  0x1d14 ret:0x7fcc8acd5080
           /* TID 0x1d2b */
  4994 ms  0x1d2b PR_Close()
  4994 ms  0x1d2b fd:0x7fcc6f9bd220
           /* TID 0x1d14 */
  5094 ms  0x1d14 SSL_ImportFD()
  5094 ms  0x1d14 ret:0x7fcc6f95c280
  5094 ms  0x1d14 SSL_AuthCertificateHook()
  5094 ms  0x1d14 fd:0x7fcc6f95c280
  5094 ms  0x1d14 ret:0x0
  5094 ms  0x1d14 PR_Connect()
  5094 ms  0x1d14 fd:0x7fcc6f95c280
  5094 ms  0x1d14 SSL_ImportFD()
  5094 ms  0x1d14 ret:0x7fcc6f95c370
  5094 ms  0x1d14 SSL_AuthCertificateHook()
  5094 ms  0x1d14 fd:0x7fcc6f95c370
  5094 ms  0x1d14 ret:0x0
  5094 ms  0x1d14 PR_Connect()
  5094 ms  0x1d14 fd:0x7fcc6f95c370
  5094 ms  0x1d14 SSL_ImportFD()
  5094 ms  0x1d14 ret:0x7fcc6f95cac0
  5094 ms  0x1d14 SSL_AuthCertificateHook()
  5094 ms  0x1d14 fd:0x7fcc6f95cac0
  5094 ms  0x1d14 ret:0x0
  5094 ms  0x1d14 PR_Connect()
  5094 ms  0x1d14 fd:0x7fcc6f95cac0
  5094 ms  0x1d14 SSL_ImportFD()
  5094 ms  0x1d14 ret:0x7fcc6f95caf0
  5094 ms  0x1d14 SSL_AuthCertificateHook()
  5094 ms  0x1d14 fd:0x7fcc6f95caf0
  5094 ms  0x1d14 ret:0x0
  5094 ms  0x1d14 PR_Connect()
  5094 ms  0x1d14 fd:0x7fcc6f95caf0
  5094 ms  0x1d14 SSL_ImportFD()
  5094 ms  0x1d14 ret:0x7fcc6f95ca00
  5094 ms  0x1d14 SSL_AuthCertificateHook()
  5094 ms  0x1d14 fd:0x7fcc6f95ca00
  5095 ms  0x1d14 ret:0x0
  5095 ms  0x1d14 PR_Connect()
  5095 ms  0x1d14 fd:0x7fcc6f95ca00
  5095 ms  0x1d14 SSL_ImportFD()
  5095 ms  0x1d14 ret:0x7fcc6f95ca30
  5095 ms  0x1d14 SSL_AuthCertificateHook()
  5095 ms  0x1d14 fd:0x7fcc6f95ca30
  5095 ms  0x1d14 ret:0x0
  5095 ms  0x1d14 PR_Connect()
  5095 ms  0x1d14 fd:0x7fcc6f95ca30
  5095 ms  0x1d14 SSL_ImportFD()
  5095 ms  0x1d14 ret:0x7fcc6f95ca60
  5095 ms  0x1d14 SSL_AuthCertificateHook()
  5095 ms  0x1d14 fd:0x7fcc6f95ca60
  5095 ms  0x1d14 ret:0x0
  5095 ms  0x1d14 PR_Connect()
  5095 ms  0x1d14 fd:0x7fcc6f95ca60
  5119 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5119 ms  0x1d14 cx:0x7fcc808e3128
  5120 ms     | 0x1d14 EC_ValidatePublicKey()
  5120 ms     | 0x1d14 ret:0x0
  5120 ms  0x1d14 ret:0x7fcc6f7ac020::7fcc6f7ac020  20 39 7d 6f                                       9}o
  5120 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5120 ms  0x1d14 cx:0x7fcc808e3128
  5121 ms     | 0x1d14 EC_ValidatePublicKey()
  5124 ms     | 0x1d14 ret:0x0
  5124 ms  0x1d14 ret:0x7fcc6f7ae020::7fcc6f7ae020  e0 3c 7d 6f                                      .<}o
  5125 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5125 ms  0x1d14 cx:0x7fcc808e32c8
  5126 ms     | 0x1d14 EC_ValidatePublicKey()
  5126 ms     | 0x1d14 ret:0x0
  5126 ms  0x1d14 ret:0x7fcc6f7b0820::7fcc6f7b0820  d0 3d 7d 6f                                      .=}o
  5126 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5126 ms  0x1d14 cx:0x7fcc808e32c8
  5127 ms     | 0x1d14 EC_ValidatePublicKey()
  5129 ms     | 0x1d14 ret:0x0
  5129 ms  0x1d14 ret:0x7fcc6f7b2820::7fcc6f7b2820  b0 3f 7d 6f                                      .?}o
  5130 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5130 ms  0x1d14 cx:0x7fcc808e3ae8
  5131 ms     | 0x1d14 EC_ValidatePublicKey()
  5131 ms     | 0x1d14 ret:0x0
  5131 ms  0x1d14 ret:0x7fcc6f7b5020::7fcc6f7b5020  50 f6 94 6f                                      P..o
  5131 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5131 ms  0x1d14 cx:0x7fcc808e3ae8
  5132 ms     | 0x1d14 EC_ValidatePublicKey()
  5134 ms     | 0x1d14 ret:0x0
  5134 ms  0x1d14 ret:0x7fcc6f7b7020::7fcc6f7b7020  b0 fa 94 6f                                      ...o
  5134 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5134 ms  0x1d14 cx:0x7fcc808e3948
  5135 ms     | 0x1d14 EC_ValidatePublicKey()
  5135 ms     | 0x1d14 ret:0x0
  5135 ms  0x1d14 ret:0x7fcc6f7b9820::7fcc6f7b9820  30 fd 94 6f                                      0..o
  5135 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5135 ms  0x1d14 cx:0x7fcc808e3948
  5136 ms     | 0x1d14 EC_ValidatePublicKey()
  5138 ms     | 0x1d14 ret:0x0
  5138 ms  0x1d14 ret:0x7fcc6f7bb820::7fcc6f7bb820  e0 52 9a 6f                                      .R.o
  5139 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5139 ms  0x1d14 cx:0x7fcc808e37a8
  5140 ms     | 0x1d14 EC_ValidatePublicKey()
  5140 ms     | 0x1d14 ret:0x0
  5140 ms  0x1d14 ret:0x7fcc6f7be020::7fcc6f7be020  60 d0 a9 6f                                      `..o
  5140 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5140 ms  0x1d14 cx:0x7fcc808e37a8
  5141 ms     | 0x1d14 EC_ValidatePublicKey()
  5143 ms     | 0x1d14 ret:0x0
  5143 ms  0x1d14 ret:0x7fcc6faa2820::7fcc6faa2820  40 d2 a9 6f                                      @..o
  5143 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5143 ms  0x1d14 cx:0x7fcc808e3608
  5144 ms     | 0x1d14 EC_ValidatePublicKey()
  5144 ms     | 0x1d14 ret:0x0
  5144 ms  0x1d14 ret:0x7fcc6faa5020::7fcc6faa5020  80 d3 a9 6f                                      ...o
  5144 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5144 ms  0x1d14 cx:0x7fcc808e3608
  5145 ms     | 0x1d14 EC_ValidatePublicKey()
  5147 ms     | 0x1d14 ret:0x0
  5147 ms  0x1d14 ret:0x7fcc6faa7020::7fcc6faa7020  60 d5 a9 6f                                      `..o
  5151 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5151 ms  0x1d14 cx:0x7fcc808e3468
  5152 ms     | 0x1d14 EC_ValidatePublicKey()
  5152 ms     | 0x1d14 ret:0x0
  5152 ms  0x1d14 ret:0x7fcc6faa9820::7fcc6faa9820  a0 d6 a9 6f                                      ...o
  5152 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5152 ms  0x1d14 cx:0x7fcc808e3468
  5153 ms     | 0x1d14 EC_ValidatePublicKey()
  5154 ms     | 0x1d14 ret:0x0
  5154 ms  0x1d14 ret:0x7fcc6faab820::7fcc6faab820  80 d8 a9 6f                                      ...o
           /* TID 0x1d7e */
  5175 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5175 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5175 ms  SECKEY_ECParamsToKeySize()
  5175 ms  0x1d14 ret:0x100
  5175 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5175 ms  0x1d14 cx:0x7fcc808e3128
  5175 ms     | 0x1d14 EC_ValidatePublicKey()
  5177 ms     | 0x1d14 ret:0x0
  5177 ms  0x1d14 ret:0x7fcc6fab1820::7fcc6fab1820  70 de a9 6f                                      p..o
  5177 ms  0x1d14 PK11_PubDeriveWithKDF()
  5177 ms  0x1d14 seckey:0x7fcc6fab1820
  5177 ms     | 0x1d14 EC_ValidatePublicKey()
  5178 ms     | 0x1d14 ret:0x0
  5180 ms  0x1d14 ret:0x7fcc8acd5080
  5180 ms  0x1d14 PK11_DeriveWithFlags()
  5180 ms  0x1d14 basekey:0x7fcc8acd5080
  5180 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5180 ms  0x1d14 ret:0x7fcc81c91c80
  5180 ms  0x1d14 PK11_Derive()
  5180 ms  0x1d14 basekey:0x7fcc81c91c80
  5180 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5180 ms  0x1d14 ret:0x7fcc81c91e80
  5180 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5180 ms  0x1d14 privk:0x7fcc6fab1820::7fcc6fab1820  70 de a9 6f                                      p..o
  5180 ms  0x1d14 privk:0x7fcc6fab1820::7fcc6fab1820  e5 e5 e5 e5                                      ....
  5180 ms  0x1d14 PK11_Encrypt()
  5180 ms  0x1d14 symkey:0x7fcc6f615080
  5181 ms  0x1d14 SSL_AuthCertificateComplete()
  5181 ms  0x1d14 fd:0x7fcc6f95c280
  5181 ms  0x1d14 err:0x0
           /* TID 0x1d7e */
  5181 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5181 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5181 ms  SECKEY_ECParamsToKeySize()
  5181 ms  0x1d14 ret:0x100
  5181 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5181 ms  0x1d14 cx:0x7fcc808e32c8
  5182 ms     | 0x1d14 EC_ValidatePublicKey()
  5183 ms     | 0x1d14 ret:0x0
  5183 ms  0x1d14 ret:0x7fcc6fab2020::7fcc6fab2020  c0 de a9 6f                                      ...o
  5183 ms  0x1d14 PK11_PubDeriveWithKDF()
  5183 ms  0x1d14 seckey:0x7fcc6fab2020
  5183 ms     | 0x1d14 EC_ValidatePublicKey()
  5185 ms     | 0x1d14 ret:0x0
  5186 ms  0x1d14 ret:0x7fcc8acd5080
  5186 ms  0x1d14 PK11_DeriveWithFlags()
  5186 ms  0x1d14 basekey:0x7fcc8acd5080
  5187 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5187 ms  0x1d14 ret:0x7fcc81c92080
  5187 ms  0x1d14 PK11_Derive()
  5187 ms  0x1d14 basekey:0x7fcc81c92080
  5187 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5187 ms  0x1d14 ret:0x7fcc6f615180
  5187 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5187 ms  0x1d14 privk:0x7fcc6fab2020::7fcc6fab2020  c0 de a9 6f                                      ...o
  5187 ms  0x1d14 privk:0x7fcc6fab2020::7fcc6fab2020  e5 e5 e5 e5                                      ....
  5187 ms  0x1d14 PK11_Encrypt()
  5187 ms  0x1d14 symkey:0x7fcc6f615300
  5187 ms  0x1d14 PK11_Encrypt()
  5187 ms  0x1d14 symkey:0x7fcc6f615080
  5188 ms  0x1d14 PK11_Encrypt()
  5188 ms  0x1d14 symkey:0x7fcc6f615080
  5188 ms  0x1d14 SSL_AuthCertificateComplete()
  5188 ms  0x1d14 fd:0x7fcc6f95c370
  5188 ms  0x1d14 err:0x0
  5188 ms  0x1d14 PK11_Encrypt()
  5188 ms  0x1d14 symkey:0x7fcc6f615300
  5188 ms  0x1d14 PK11_Encrypt()
  5188 ms  0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d7e */
  5189 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5189 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5189 ms  SECKEY_ECParamsToKeySize()
  5189 ms  0x1d14 ret:0x100
  5189 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5189 ms  0x1d14 cx:0x7fcc808e3ae8
  5190 ms     | 0x1d14 EC_ValidatePublicKey()
  5191 ms     | 0x1d14 ret:0x0
  5191 ms  0x1d14 ret:0x7fcc6fab5820::7fcc6fab5820  00 91 ae 6f                                      ...o
  5192 ms  0x1d14 PK11_PubDeriveWithKDF()
  5192 ms  0x1d14 seckey:0x7fcc6fab5820
  5192 ms     | 0x1d14 EC_ValidatePublicKey()
  5193 ms     | 0x1d14 ret:0x0
  5195 ms  0x1d14 ret:0x7fcc8acd5080
  5195 ms  0x1d14 PK11_DeriveWithFlags()
  5195 ms  0x1d14 basekey:0x7fcc8acd5080
  5195 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5195 ms  0x1d14 ret:0x7fcc6f615680
  5195 ms  0x1d14 PK11_Derive()
  5195 ms  0x1d14 basekey:0x7fcc6f615680
  5195 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5195 ms  0x1d14 ret:0x7fcc6f615700
  5195 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5195 ms  0x1d14 privk:0x7fcc6fab5820::7fcc6fab5820  00 91 ae 6f                                      ...o
  5195 ms  0x1d14 privk:0x7fcc6fab5820::7fcc6fab5820  e5 e5 e5 e5                                      ....
  5195 ms  0x1d14 PK11_Encrypt()
  5195 ms  0x1d14 symkey:0x7fcc6f615880
  5195 ms  0x1d14 SSL_AuthCertificateComplete()
  5195 ms  0x1d14 fd:0x7fcc6f95ca60
  5195 ms  0x1d14 err:0x0
  5195 ms  0x1d14 PK11_Encrypt()
  5195 ms  0x1d14 symkey:0x7fcc6f615880
  5196 ms  0x1d14 PK11_Encrypt()
  5196 ms  0x1d14 symkey:0x7fcc6f615880
           /* TID 0x1d7e */
  5196 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5196 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5196 ms  SECKEY_ECParamsToKeySize()
  5196 ms  0x1d14 ret:0x100
  5196 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5196 ms  0x1d14 cx:0x7fcc808e3948
  5197 ms     | 0x1d14 EC_ValidatePublicKey()
  5199 ms     | 0x1d14 ret:0x0
  5199 ms  0x1d14 ret:0x7fcc6fab7820::7fcc6fab7820  50 f1 ae 6f                                      P..o
  5199 ms  0x1d14 PK11_PubDeriveWithKDF()
  5199 ms  0x1d14 seckey:0x7fcc6fab7820
  5199 ms     | 0x1d14 EC_ValidatePublicKey()
  5200 ms     | 0x1d14 ret:0x0
  5202 ms  0x1d14 ret:0x7fcc8acd5080
  5202 ms  0x1d14 PK11_DeriveWithFlags()
  5202 ms  0x1d14 basekey:0x7fcc8acd5080
  5202 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5202 ms  0x1d14 ret:0x7fcc6f615a00
  5202 ms  0x1d14 PK11_Derive()
  5202 ms  0x1d14 basekey:0x7fcc6f615a00
  5202 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5202 ms  0x1d14 ret:0x7fcc6f615a80
  5202 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5202 ms  0x1d14 privk:0x7fcc6fab7820::7fcc6fab7820  50 f1 ae 6f                                      P..o
  5202 ms  0x1d14 privk:0x7fcc6fab7820::7fcc6fab7820  e5 e5 e5 e5                                      ....
  5202 ms  0x1d14 PK11_Encrypt()
  5202 ms  0x1d14 symkey:0x7fcc6f615c00
           /* TID 0x1d7e */
  5206 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5206 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5207 ms  SECKEY_ECParamsToKeySize()
  5207 ms  0x1d14 ret:0x100
  5207 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5207 ms  0x1d14 cx:0x7fcc808e37a8
  5207 ms     | 0x1d14 EC_ValidatePublicKey()
  5209 ms     | 0x1d14 ret:0x0
  5209 ms  0x1d14 ret:0x7fcc6fab8020::7fcc6fab8020  a0 f1 ae 6f                                      ...o
  5209 ms  0x1d14 PK11_PubDeriveWithKDF()
  5209 ms  0x1d14 seckey:0x7fcc6fab8020
  5209 ms     | 0x1d14 EC_ValidatePublicKey()
  5210 ms     | 0x1d14 ret:0x0
  5212 ms  0x1d14 ret:0x7fcc8acd5080
  5212 ms  0x1d14 PK11_DeriveWithFlags()
  5212 ms  0x1d14 basekey:0x7fcc8acd5080
  5212 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5212 ms  0x1d14 ret:0x7fcc6f615d00
  5212 ms  0x1d14 PK11_Derive()
  5212 ms  0x1d14 basekey:0x7fcc6f615d00
  5212 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5212 ms  0x1d14 ret:0x7fcc6f615d80
  5212 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5212 ms  0x1d14 privk:0x7fcc6fab8020::7fcc6fab8020  a0 f1 ae 6f                                      ...o
  5212 ms  0x1d14 privk:0x7fcc6fab8020::7fcc6fab8020  e5 e5 e5 e5                                      ....
  5212 ms  0x1d14 PK11_Encrypt()
  5212 ms  0x1d14 symkey:0x7fcc6f615f00
  5212 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5212 ms  0x1d14 privk:0x7fcc6f7ae020::7fcc6f7ae020  e0 3c 7d 6f                                      .<}o
  5212 ms  0x1d14 privk:0x7fcc6f7ae020::7fcc6f7ae020  e5 e5 e5 e5                                      ....
  5212 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5212 ms  0x1d14 privk:0x7fcc6f7ac020::7fcc6f7ac020  20 39 7d 6f                                       9}o
  5212 ms  0x1d14 privk:0x7fcc6f7ac020::7fcc6f7ac020  e5 e5 e5 e5                                      ....
  5213 ms  0x1d14 SSL_AuthCertificateComplete()
  5213 ms  0x1d14 fd:0x7fcc6f95ca30
  5213 ms  0x1d14 err:0x0
  5213 ms  0x1d14 SSL_AuthCertificateComplete()
  5213 ms  0x1d14 fd:0x7fcc6f95ca00
  5213 ms  0x1d14 err:0x0
  5213 ms  0x1d14 PK11_Encrypt()
  5213 ms  0x1d14 symkey:0x7fcc6f615080
  5213 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5213 ms  0x1d14 privk:0x7fcc6f7b2820::7fcc6f7b2820  b0 3f 7d 6f                                      .?}o
  5213 ms  0x1d14 privk:0x7fcc6f7b2820::7fcc6f7b2820  e5 e5 e5 e5                                      ....
  5213 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5213 ms  0x1d14 privk:0x7fcc6f7b0820::7fcc6f7b0820  d0 3d 7d 6f                                      .=}o
  5213 ms  0x1d14 privk:0x7fcc6f7b0820::7fcc6f7b0820  e5 e5 e5 e5                                      ....
  5213 ms  0x1d14 PK11_Encrypt()
  5213 ms  0x1d14 symkey:0x7fcc6f615300
  5214 ms  0x1d14 PK11_Encrypt()
  5214 ms  0x1d14 symkey:0x7fcc6f615c00
  5214 ms  0x1d14 PK11_Encrypt()
  5214 ms  0x1d14 symkey:0x7fcc6f615f00
           /* TID 0x1d7e */
  5215 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5215 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5215 ms  SECKEY_ECParamsToKeySize()
  5215 ms  0x1d14 ret:0x100
  5215 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5215 ms  0x1d14 cx:0x7fcc808e3608
  5216 ms     | 0x1d14 EC_ValidatePublicKey()
  5217 ms     | 0x1d14 ret:0x0
  5217 ms  0x1d14 ret:0x7fcc6f7ae820::7fcc6f7ae820  40 3c 7d 6f                                      @<}o
  5217 ms  0x1d14 PK11_PubDeriveWithKDF()
  5217 ms  0x1d14 seckey:0x7fcc6f7ae820
  5217 ms     | 0x1d14 EC_ValidatePublicKey()
  5219 ms     | 0x1d14 ret:0x0
  5220 ms  0x1d14 ret:0x7fcc8acd5080
  5220 ms  0x1d14 PK11_DeriveWithFlags()
  5220 ms  0x1d14 basekey:0x7fcc8acd5080
  5220 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5220 ms  0x1d14 ret:0x7fcc6f616000
  5220 ms  0x1d14 PK11_Derive()
  5220 ms  0x1d14 basekey:0x7fcc6f616000
  5220 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5220 ms  0x1d14 ret:0x7fcc6f616080
  5220 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5220 ms  0x1d14 privk:0x7fcc6f7ae820::7fcc6f7ae820  40 3c 7d 6f                                      @<}o
  5220 ms  0x1d14 privk:0x7fcc6f7ae820::7fcc6f7ae820  e5 e5 e5 e5                                      ....
  5220 ms  0x1d14 PK11_Encrypt()
  5220 ms  0x1d14 symkey:0x7fcc6f616200
           /* TID 0x1d7e */
  5221 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5221 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  5221 ms  SECKEY_ECParamsToKeySize()
  5221 ms  0x1d14 ret:0x100
  5221 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5221 ms  0x1d14 cx:0x7fcc808e3468
  5222 ms     | 0x1d14 EC_ValidatePublicKey()
  5223 ms     | 0x1d14 ret:0x0
  5223 ms  0x1d14 ret:0x7fcc6f7b0020::7fcc6f7b0020  90 3c 7d 6f                                      .<}o
  5223 ms  0x1d14 PK11_PubDeriveWithKDF()
  5223 ms  0x1d14 seckey:0x7fcc6f7b0020
  5223 ms     | 0x1d14 EC_ValidatePublicKey()
  5225 ms     | 0x1d14 ret:0x0
  5226 ms  0x1d14 ret:0x7fcc8acd5080
  5226 ms  0x1d14 PK11_DeriveWithFlags()
  5226 ms  0x1d14 basekey:0x7fcc8acd5080
  5226 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5226 ms  0x1d14 ret:0x7fcc6f616300
  5226 ms  0x1d14 PK11_Derive()
  5226 ms  0x1d14 basekey:0x7fcc6f616300
  5226 ms     | 0x1d14 PK11_DeriveWithTemplate()
  5226 ms  0x1d14 ret:0x7fcc6f616380
  5226 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5226 ms  0x1d14 privk:0x7fcc6f7b0020::7fcc6f7b0020  90 3c 7d 6f                                      .<}o
  5226 ms  0x1d14 privk:0x7fcc6f7b0020::7fcc6f7b0020  e5 e5 e5 e5                                      ....
  5227 ms  0x1d14 PK11_Encrypt()
  5227 ms  0x1d14 symkey:0x7fcc6f616500
  5227 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5227 ms  0x1d14 privk:0x7fcc6f7b7020::7fcc6f7b7020  b0 fa 94 6f                                      ...o
  5227 ms  0x1d14 privk:0x7fcc6f7b7020::7fcc6f7b7020  e5 e5 e5 e5                                      ....
  5227 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5227 ms  0x1d14 privk:0x7fcc6f7b5020::7fcc6f7b5020  50 f6 94 6f                                      P..o
  5228 ms  0x1d14 privk:0x7fcc6f7b5020::7fcc6f7b5020  e5 e5 e5 e5                                      ....
  5228 ms  0x1d14 PK11_Encrypt()
  5228 ms  0x1d14 symkey:0x7fcc6f615300
  5228 ms  0x1d14 SSL_AuthCertificateComplete()
  5228 ms  0x1d14 fd:0x7fcc6f95caf0
  5228 ms  0x1d14 err:0x0
  5228 ms  0x1d14 SSL_AuthCertificateComplete()
  5228 ms  0x1d14 fd:0x7fcc6f95cac0
  5228 ms  0x1d14 err:0x0
  5228 ms  0x1d14 PK11_Encrypt()
  5228 ms  0x1d14 symkey:0x7fcc6f615880
  5228 ms  0x1d14 PK11_Encrypt()
  5228 ms  0x1d14 symkey:0x7fcc6f615300
  5229 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5229 ms  0x1d14 privk:0x7fcc6f7bb820::7fcc6f7bb820  e0 52 9a 6f                                      .R.o
  5229 ms  0x1d14 privk:0x7fcc6f7bb820::7fcc6f7bb820  e5 e5 e5 e5                                      ....
  5229 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5229 ms  0x1d14 privk:0x7fcc6f7b9820::7fcc6f7b9820  30 fd 94 6f                                      0..o
  5229 ms  0x1d14 privk:0x7fcc6f7b9820::7fcc6f7b9820  e5 e5 e5 e5                                      ....
  5229 ms  0x1d14 PK11_Encrypt()
  5229 ms  0x1d14 symkey:0x7fcc6f616200
  5229 ms  0x1d14 PK11_Encrypt()
  5229 ms  0x1d14 symkey:0x7fcc6f616500
  5229 ms  0x1d14 PR_Close()
  5229 ms  0x1d14 fd:0x7fcc6f95ca30
  5229 ms     | 0x1d14 PK11_Encrypt()
  5229 ms     | 0x1d14 symkey:0x7fcc6f615c00
  5230 ms  0x1d14 PK11_Encrypt()
  5230 ms  0x1d14 symkey:0x7fcc6f615300
  5230 ms  0x1d14 PK11_Encrypt()
  5230 ms  0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d1c */
  5232 ms  0x1d1c PR_Close()
  5232 ms  0x1d1c fd:0x7fcc6f61f1c0
           /* TID 0x1d14 */
  5238 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5238 ms  0x1d14 privk:0x7fcc6faa2820::7fcc6faa2820  40 d2 a9 6f                                      @..o
  5238 ms  0x1d14 privk:0x7fcc6faa2820::7fcc6faa2820  e5 e5 e5 e5                                      ....
  5238 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5238 ms  0x1d14 privk:0x7fcc6f7be020::7fcc6f7be020  60 d0 a9 6f                                      `..o
  5239 ms  0x1d14 privk:0x7fcc6f7be020::7fcc6f7be020  e5 e5 e5 e5                                      ....
  5239 ms  0x1d14 PR_Close()
  5239 ms  0x1d14 fd:0x7fcc6f95ca00
  5239 ms     | 0x1d14 PK11_Encrypt()
  5239 ms     | 0x1d14 symkey:0x7fcc6f615f00
  5246 ms  0x1d14 PR_Close()
  5246 ms  0x1d14 fd:0x7fcc6f95caf0
  5246 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  5246 ms     | 0x1d14 privk:0x7fcc6faa7020::7fcc6faa7020  60 d5 a9 6f                                      `..o
  5246 ms     | 0x1d14 privk:0x7fcc6faa7020::7fcc6faa7020  e5 e5 e5 e5                                      ....
  5246 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  5246 ms     | 0x1d14 privk:0x7fcc6faa5020::7fcc6faa5020  80 d3 a9 6f                                      ...o
  5246 ms     | 0x1d14 privk:0x7fcc6faa5020::7fcc6faa5020  e5 e5 e5 e5                                      ....
           /* TID 0x1d1c */
  5247 ms  0x1d1c PR_Close()
  5247 ms  0x1d1c fd:0x7fcc6f61f1f0
  5253 ms  0x1d1c PR_Close()
  5253 ms  0x1d1c fd:0x7fcc6f61f1f0
           /* TID 0x1d14 */
  5258 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5258 ms  0x1d14 privk:0x7fcc6faab820::7fcc6faab820  80 d8 a9 6f                                      ...o
  5258 ms  0x1d14 privk:0x7fcc6faab820::7fcc6faab820  e5 e5 e5 e5                                      ....
  5259 ms  0x1d14 SECKEY_DestroyPrivateKey()
  5259 ms  0x1d14 privk:0x7fcc6faa9820::7fcc6faa9820  a0 d6 a9 6f                                      ...o
  5259 ms  0x1d14 privk:0x7fcc6faa9820::7fcc6faa9820  e5 e5 e5 e5                                      ....
  5263 ms  0x1d14 PR_Close()
  5263 ms  0x1d14 fd:0x7fcc6f95cac0
  5263 ms     | 0x1d14 PK11_Encrypt()
  5263 ms     | 0x1d14 symkey:0x7fcc6f616500
           /* TID 0x1d1c */
  5270 ms  0x1d1c PR_Close()
  5270 ms  0x1d1c fd:0x7fcc6f61f1f0
  5290 ms  0x1d1c PR_Close()
  5290 ms  0x1d1c fd:0x7fcc6f61f1f0
  5300 ms  0x1d1c PR_Close()
  5300 ms  0x1d1c fd:0x7fcc6f61f1f0
  5315 ms  0x1d1c PR_Close()
  5315 ms  0x1d1c fd:0x7fcc6f61f1f0
           /* TID 0x1d14 */
  5463 ms  0x1d14 PK11_Encrypt()
  5463 ms  0x1d14 symkey:0x7fcc6f615300
  5466 ms  0x1d14 PK11_Encrypt()
  5466 ms  0x1d14 symkey:0x7fcc6f615300
  5472 ms  0x1d14 PK11_Encrypt()
  5472 ms  0x1d14 symkey:0x7fcc6f615300
  5484 ms  0x1d14 PK11_Encrypt()
  5484 ms  0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d1c */
  5492 ms  0x1d1c PR_Close()
  5492 ms  0x1d1c fd:0x7fcc6f61f760
  5514 ms  0x1d1c PR_Close()
  5514 ms  0x1d1c fd:0x7fcc6f61f9d0
  5520 ms  0x1d1c PR_Close()
  5520 ms  0x1d1c fd:0x7fcc6f61f6a0
  5520 ms  0x1d1c PR_Close()
  5520 ms  0x1d1c fd:0x7fcc6f61f8e0
  5520 ms  0x1d1c PR_Close()
  5520 ms  0x1d1c fd:0x7fcc6f61f6a0
           /* TID 0x1d14 */
  5523 ms  0x1d14 PK11_Encrypt()
  5523 ms  0x1d14 symkey:0x7fcc6f615300
  5524 ms  0x1d14 PK11_Encrypt()
  5524 ms  0x1d14 symkey:0x7fcc6f615300
  5524 ms  0x1d14 PK11_Encrypt()
  5524 ms  0x1d14 symkey:0x7fcc6f615300
  5525 ms  0x1d14 PK11_Encrypt()
  5525 ms  0x1d14 symkey:0x7fcc6f615300
  5526 ms  0x1d14 PK11_Encrypt()
  5526 ms  0x1d14 symkey:0x7fcc6f615300
  5527 ms  0x1d14 PK11_Encrypt()
  5527 ms  0x1d14 symkey:0x7fcc6f615300
  5528 ms  0x1d14 PK11_Encrypt()
  5528 ms  0x1d14 symkey:0x7fcc6f615300
  5529 ms  0x1d14 PK11_Encrypt()
  5529 ms  0x1d14 symkey:0x7fcc6f615300
  5530 ms  0x1d14 PK11_Encrypt()
  5530 ms  0x1d14 symkey:0x7fcc6f615300
  5530 ms  0x1d14 PK11_Encrypt()
  5530 ms  0x1d14 symkey:0x7fcc6f615300
  5531 ms  0x1d14 PK11_Encrypt()
  5531 ms  0x1d14 symkey:0x7fcc6f615300
  5532 ms  0x1d14 PK11_Encrypt()
  5532 ms  0x1d14 symkey:0x7fcc6f615300
  5533 ms  0x1d14 PK11_Encrypt()
  5533 ms  0x1d14 symkey:0x7fcc6f615300
  5536 ms  0x1d14 PK11_Encrypt()
  5536 ms  0x1d14 symkey:0x7fcc6f615300
  5538 ms  0x1d14 PK11_Encrypt()
  5538 ms  0x1d14 symkey:0x7fcc6f615300
  5549 ms  0x1d14 PK11_Encrypt()
  5549 ms  0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d1c */
  5552 ms  0x1d1c PR_Close()
  5552 ms  0x1d1c fd:0x7fcc6f61f850
           /* TID 0x1d14 */
  5553 ms  0x1d14 PK11_Encrypt()
  5553 ms  0x1d14 symkey:0x7fcc6f615300
  5553 ms  0x1d14 PK11_Encrypt()
  5553 ms  0x1d14 symkey:0x7fcc6f615300
  5554 ms  0x1d14 PK11_Encrypt()
  5554 ms  0x1d14 symkey:0x7fcc6f615300
  5555 ms  0x1d14 PK11_Encrypt()
  5555 ms  0x1d14 symkey:0x7fcc6f615300
  5556 ms  0x1d14 PK11_Encrypt()
  5556 ms  0x1d14 symkey:0x7fcc6f615300
  5556 ms  0x1d14 PK11_Encrypt()
  5556 ms  0x1d14 symkey:0x7fcc6f615300
  5557 ms  0x1d14 PK11_Encrypt()
  5557 ms  0x1d14 symkey:0x7fcc6f615300
  5557 ms  0x1d14 PK11_Encrypt()
  5557 ms  0x1d14 symkey:0x7fcc6f615300
  5557 ms  0x1d14 PK11_Encrypt()
  5557 ms  0x1d14 symkey:0x7fcc6f615880
  5558 ms  0x1d14 PK11_Encrypt()
  5558 ms  0x1d14 symkey:0x7fcc6f615080
  5558 ms  0x1d14 PK11_Encrypt()
  5558 ms  0x1d14 symkey:0x7fcc6f615880
  5559 ms  0x1d14 PK11_Encrypt()
  5559 ms  0x1d14 symkey:0x7fcc6f615880
  5559 ms  0x1d14 PK11_Encrypt()
  5559 ms  0x1d14 symkey:0x7fcc6f615080
  5559 ms  0x1d14 PK11_Encrypt()
  5559 ms  0x1d14 symkey:0x7fcc6f615880
  5559 ms  0x1d14 PK11_Encrypt()
  5559 ms  0x1d14 symkey:0x7fcc6f615080
           /* TID 0x1d1c */
  5562 ms  0x1d1c PR_Close()
  5562 ms  0x1d1c fd:0x7fcc6f61f850
  5565 ms  0x1d1c PR_Close()
  5565 ms  0x1d1c fd:0x7fcc6f61f850
  5565 ms  0x1d1c PR_Close()
  5565 ms  0x1d1c fd:0x7fcc6f61f9d0
  5565 ms  0x1d1c PR_Close()
  5565 ms  0x1d1c fd:0x7fcc6f61fd30
  5565 ms  0x1d1c PR_Close()
  5565 ms  0x1d1c fd:0x7fcc6f665040
  5565 ms  0x1d1c PR_Close()
  5565 ms  0x1d1c fd:0x7fcc6f61f850
  5566 ms  0x1d1c PR_Close()
  5566 ms  0x1d1c fd:0x7fcc6f61f850
  5567 ms  0x1d1c PR_Close()
  5567 ms  0x1d1c fd:0x7fcc6f61f850
  5568 ms  0x1d1c PR_Close()
  5568 ms  0x1d1c fd:0x7fcc6f61f850
  5573 ms  0x1d1c PR_Close()
  5573 ms  0x1d1c fd:0x7fcc6f61f850
  5574 ms  0x1d1c PR_Close()
  5574 ms  0x1d1c fd:0x7fcc6f61f850
  5578 ms  0x1d1c PR_Close()
  5578 ms  0x1d1c fd:0x7fcc6f61f850
  5579 ms  0x1d1c PR_Close()
  5579 ms  0x1d1c fd:0x7fcc6f61f850
  5582 ms  0x1d1c PR_Close()
  5582 ms  0x1d1c fd:0x7fcc6f61f850
  5585 ms  0x1d1c PR_Close()
  5585 ms  0x1d1c fd:0x7fcc6f61f790
  5600 ms  0x1d1c PR_Close()
  5600 ms  0x1d1c fd:0x7fcc6f61f850
  5604 ms  0x1d1c PR_Close()
  5604 ms  0x1d1c fd:0x7fcc6f61f790
  5605 ms  0x1d1c PR_Close()
  5605 ms  0x1d1c fd:0x7fcc6f61f790
  5605 ms  0x1d1c PR_Close()
  5605 ms  0x1d1c fd:0x7fcc6f61f970
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f61f790
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f61f970
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f61fcd0
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f61fdc0
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f61fee0
  5608 ms  0x1d1c PR_Close()
  5608 ms  0x1d1c fd:0x7fcc6f665040
  5610 ms  0x1d1c PR_Close()
  5610 ms  0x1d1c fd:0x7fcc6f61f790
  5615 ms  0x1d1c PR_Close()
  5615 ms  0x1d1c fd:0x7fcc6f61f790
  5629 ms  0x1d1c PR_Close()
  5629 ms  0x1d1c fd:0x7fcc6f61f790
           /* TID 0x1d14 */
  5631 ms  0x1d14 PK11_Encrypt()
  5631 ms  0x1d14 symkey:0x7fcc6f615300
  5634 ms  0x1d14 PK11_Encrypt()
  5634 ms  0x1d14 symkey:0x7fcc6f615300
  5634 ms  0x1d14 PK11_Encrypt()
  5634 ms  0x1d14 symkey:0x7fcc6f615300
  5640 ms  0x1d14 PK11_Encrypt()
  5640 ms  0x1d14 symkey:0x7fcc6f615300
  5641 ms  0x1d14 PK11_Encrypt()
  5641 ms  0x1d14 symkey:0x7fcc6f615300
  5641 ms  0x1d14 PK11_Encrypt()
  5641 ms  0x1d14 symkey:0x7fcc6f615300
  5641 ms  0x1d14 PK11_Encrypt()
  5641 ms  0x1d14 symkey:0x7fcc6f615300
  5641 ms  0x1d14 PK11_Encrypt()
  5641 ms  0x1d14 symkey:0x7fcc6f615300
  5642 ms  0x1d14 PK11_Encrypt()
  5642 ms  0x1d14 symkey:0x7fcc6f615300
  5642 ms  0x1d14 PK11_Encrypt()
  5642 ms  0x1d14 symkey:0x7fcc6f615300
  5642 ms  0x1d14 PK11_Encrypt()
  5642 ms  0x1d14 symkey:0x7fcc6f615300
  5642 ms  0x1d14 PK11_Encrypt()
  5642 ms  0x1d14 symkey:0x7fcc6f615300
  5643 ms  0x1d14 PK11_Encrypt()
  5643 ms  0x1d14 symkey:0x7fcc6f615300
  5650 ms  0x1d14 PK11_Encrypt()
  5650 ms  0x1d14 symkey:0x7fcc6f615880
           /* TID 0x1d1c */
  5657 ms  0x1d1c PR_Close()
  5657 ms  0x1d1c fd:0x7fcc6f61f850
  5672 ms  0x1d1c PR_Close()
  5672 ms  0x1d1c fd:0x7fcc6f61fd30
  5672 ms  0x1d1c PR_Close()
  5672 ms  0x1d1c fd:0x7fcc6f61fc70
  5674 ms  0x1d1c PR_Close()
  5674 ms  0x1d1c fd:0x7fcc6f61f880
  5675 ms  0x1d1c PR_Close()
  5675 ms  0x1d1c fd:0x7fcc6f61f880
  5676 ms  0x1d1c PR_Close()
  5676 ms  0x1d1c fd:0x7fcc6f61f880
  5678 ms  0x1d1c PR_Close()
  5678 ms  0x1d1c fd:0x7fcc6f61f880
  5682 ms  0x1d1c PR_Close()
  5682 ms  0x1d1c fd:0x7fcc6f61f880
  5683 ms  0x1d1c PR_Close()
  5683 ms  0x1d1c fd:0x7fcc6f61f880
  5684 ms  0x1d1c PR_Close()
  5684 ms  0x1d1c fd:0x7fcc6f61f880
  5686 ms  0x1d1c PR_Close()
  5686 ms  0x1d1c fd:0x7fcc6f61f880
  5693 ms  0x1d1c PR_Close()
  5693 ms  0x1d1c fd:0x7fcc6f61f880
  5694 ms  0x1d1c PR_Close()
  5694 ms  0x1d1c fd:0x7fcc6f61f880
  5695 ms  0x1d1c PR_Close()
  5695 ms  0x1d1c fd:0x7fcc6f61f880
  5696 ms  0x1d1c PR_Close()
  5696 ms  0x1d1c fd:0x7fcc6f61f880
  5704 ms  0x1d1c PR_Close()
  5704 ms  0x1d1c fd:0x7fcc6f61f880
           /* TID 0x1d14 */
  5923 ms  0x1d14 PK11_Encrypt()
  5923 ms  0x1d14 symkey:0x7fcc81c91d80
  5933 ms  0x1d14 SSL_ImportFD()
  5933 ms  0x1d14 ret:0x7fcc6f6651c0
  5933 ms  0x1d14 SSL_AuthCertificateHook()
  5933 ms  0x1d14 fd:0x7fcc6f6651c0
  5933 ms  0x1d14 ret:0x0
  5933 ms  0x1d14 PR_Connect()
  5933 ms  0x1d14 fd:0x7fcc6f6651c0
           /* TID 0x1d1c */
  5986 ms  0x1d1c PR_Close()
  5986 ms  0x1d1c fd:0x7fcc6f61f1c0
           /* TID 0x1d14 */
  5989 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5989 ms  0x1d14 cx:0x7fcc808e3468
  5990 ms     | 0x1d14 EC_ValidatePublicKey()
  5990 ms     | 0x1d14 ret:0x0
  5990 ms  0x1d14 ret:0x7fcc6fab6820::7fcc6fab6820  60 d5 a9 6f                                      `..o
  5990 ms  0x1d14 SECKEY_CreateECPrivateKey()
  5990 ms  0x1d14 cx:0x7fcc808e3468
  5990 ms     | 0x1d14 EC_ValidatePublicKey()
  5992 ms     | 0x1d14 ret:0x0
  5992 ms  0x1d14 ret:0x7fcc6fab8820::7fcc6fab8820  e0 d7 a9 6f                                      ...o
  6009 ms  0x1d14 PK11_Encrypt()
  6009 ms  0x1d14 symkey:0x7fcc81c91d80
  6048 ms  0x1d14 PK11_Derive()
  6048 ms  0x1d14 basekey:0x7fcc6f616380
  6048 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6048 ms  0x1d14 ret:0x7fcc6f616300
  6048 ms  0x1d14 PK11_PubDeriveWithKDF()
  6048 ms  0x1d14 seckey:0x7fcc6fab6820
  6048 ms     | 0x1d14 EC_ValidatePublicKey()
  6048 ms     | 0x1d14 ret:0x0
  6049 ms  0x1d14 ret:0x7fcc6f616380
  6049 ms  SECKEY_ECParamsToKeySize()
  6049 ms  0x1d14 ret:0xff
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616300
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616080
  6049 ms  0x1d14 PK11_Derive()
  6049 ms  0x1d14 basekey:0x7fcc6f616380
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616000
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616000
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616300
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616000
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616380
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616000
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616080
  6049 ms  0x1d14 PK11_Derive()
  6049 ms  0x1d14 basekey:0x7fcc6f615d80
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f615d00
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616380
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616000
  6049 ms  0x1d14 PK11_DeriveWithFlags()
  6049 ms  0x1d14 basekey:0x7fcc6f616380
  6049 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6049 ms  0x1d14 ret:0x7fcc6f616080
           /* TID 0x1d7e */
  6050 ms  SECKEY_ECParamsToBasePointOrderLen()
  6050 ms  0x1d7e ret:0x180
  6050 ms  SECKEY_ECParamsToBasePointOrderLen()
  6050 ms  0x1d7e ret:0x180
  6050 ms  0x1d7e EC_ValidatePublicKey()
  6051 ms  0x1d7e ret:0x0
  6054 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6054 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6054 ms     | 0x1d7e ret:0x180
  6054 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6054 ms     | 0x1d7e ret:0x180
  6054 ms     | 0x1d7e EC_ValidatePublicKey()
  6056 ms     | 0x1d7e ret:0x0
  6059 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  6059 ms  SECKEY_ECParamsToKeySize()
  6059 ms  0x1d14 ret:0x100
  6059 ms  SECKEY_ECParamsToBasePointOrderLen()
  6059 ms  0x1d14 ret:0x100
  6060 ms  SECKEY_ECParamsToBasePointOrderLen()
  6060 ms  0x1d14 ret:0x100
  6060 ms  0x1d14 EC_ValidatePublicKey()
  6061 ms  0x1d14 ret:0x0
  6063 ms  0x1d14 PK11_DeriveWithFlags()
  6063 ms  0x1d14 basekey:0x7fcc6f616380
  6063 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6063 ms  0x1d14 ret:0x7fcc6f616080
  6080 ms  0x1d14 SSL_AuthCertificateComplete()
  6080 ms  0x1d14 fd:0x7fcc6f6651c0
  6080 ms  0x1d14 err:0x0
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc6f616080
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc6f615d80
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc6f615a80
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f616300
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc6f615a00
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f616300
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc8acd5080
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f615d80
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc8acd5080
  6080 ms     | 0x1d14 PK11_DeriveWithFlags()
  6080 ms     | 0x1d14 basekey:0x7fcc6f615d80
  6080 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6080 ms     | 0x1d14 ret:0x7fcc6f616480
  6081 ms     | 0x1d14 PK11_DeriveWithFlags()
  6081 ms     | 0x1d14 basekey:0x7fcc6f616300
  6081 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6081 ms     | 0x1d14 ret:0x7fcc6f616000
  6081 ms     | 0x1d14 PK11_Encrypt()
  6081 ms     | 0x1d14 symkey:0x7fcc6f615a00
  6081 ms     | 0x1d14 PK11_DeriveWithFlags()
  6081 ms     | 0x1d14 basekey:0x7fcc6f616080
  6081 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6081 ms     | 0x1d14 ret:0x7fcc6f616000
  6081 ms     | 0x1d14 PK11_DeriveWithFlags()
  6081 ms     | 0x1d14 basekey:0x7fcc6f616080
  6081 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6081 ms     | 0x1d14 ret:0x7fcc6f616480
  6081 ms     | 0x1d14 PK11_DeriveWithFlags()
  6081 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6081 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6081 ms     | 0x1d14 ret:0x7fcc6f615a00
  6081 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6081 ms     | 0x1d14 privk:0x7fcc6fab8820::7fcc6fab8820  e0 d7 a9 6f                                      ...o
  6081 ms     | 0x1d14 privk:0x7fcc6fab8820::7fcc6fab8820  e5 e5 e5 e5                                      ....
  6081 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6081 ms     | 0x1d14 privk:0x7fcc6fab6820::7fcc6fab6820  60 d5 a9 6f                                      `..o
  6081 ms     | 0x1d14 privk:0x7fcc6fab6820::7fcc6fab6820  e5 e5 e5 e5                                      ....
  6081 ms  0x1d14 PK11_Encrypt()
  6081 ms  0x1d14 symkey:0x7fcc6f616000
  6137 ms  0x1d14 PK11_DeriveWithFlags()
  6137 ms  0x1d14 basekey:0x7fcc6f615a00
  6137 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6137 ms  0x1d14 ret:0x7fcc6f616380
  6188 ms  0x1d14 PK11_Encrypt()
  6188 ms  0x1d14 symkey:0x7fcc6f615300
  6189 ms  0x1d14 PK11_Encrypt()
  6189 ms  0x1d14 symkey:0x7fcc6f615300
  6192 ms  0x1d14 SSL_ImportFD()
  6192 ms  0x1d14 ret:0x7fcc6f665f10
  6192 ms  0x1d14 SSL_AuthCertificateHook()
  6192 ms  0x1d14 fd:0x7fcc6f665f10
  6192 ms  0x1d14 ret:0x0
  6193 ms  0x1d14 PR_Connect()
  6193 ms  0x1d14 fd:0x7fcc6f665f10
  6199 ms  0x1d14 SSL_ImportFD()
  6199 ms  0x1d14 ret:0x7fcc6f927460
  6199 ms  0x1d14 SSL_AuthCertificateHook()
  6199 ms  0x1d14 fd:0x7fcc6f927460
  6199 ms  0x1d14 ret:0x0
  6199 ms  0x1d14 PR_Connect()
  6199 ms  0x1d14 fd:0x7fcc6f927460
  6200 ms  0x1d14 PK11_Encrypt()
  6200 ms  0x1d14 symkey:0x7fcc81c91d80
           /* TID 0x1d1c */
  6217 ms  0x1d1c PR_Close()
  6217 ms  0x1d1c fd:0x7fcc6f61f520
           /* TID 0x1d14 */
  6230 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6230 ms  0x1d14 cx:0x7fcc808e4b28
  6231 ms     | 0x1d14 EC_ValidatePublicKey()
  6231 ms     | 0x1d14 ret:0x0
  6231 ms  0x1d14 ret:0x7fcc6f7a8020::7fcc6f7a8020  10 f5 94 6f                                      ...o
  6231 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6231 ms  0x1d14 cx:0x7fcc808e4b28
  6231 ms     | 0x1d14 EC_ValidatePublicKey()
  6233 ms     | 0x1d14 ret:0x0
  6233 ms  0x1d14 ret:0x7fcc6f81d820::7fcc6f81d820  20 89 96 6f                                       ..o
           /* TID 0x1d1c */
  6244 ms  0x1d1c PR_Close()
  6244 ms  0x1d1c fd:0x7fcc6f61f9a0
           /* TID 0x1d14 */
  6255 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6255 ms  0x1d14 cx:0x7fcc808e4cc8
  6256 ms     | 0x1d14 EC_ValidatePublicKey()
  6256 ms     | 0x1d14 ret:0x0
  6256 ms  0x1d14 ret:0x7fcc6fab6020::7fcc6fab6020  60 8f 96 6f                                      `..o
  6256 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6256 ms  0x1d14 cx:0x7fcc808e4cc8
  6257 ms     | 0x1d14 EC_ValidatePublicKey()
  6258 ms     | 0x1d14 ret:0x0
  6258 ms  0x1d14 ret:0x7fcc6fab8020::7fcc6fab8020  e0 3c 97 6f                                      .<.o
  6289 ms  0x1d14 PK11_Derive()
  6289 ms  0x1d14 basekey:0x7fcc6f616380
  6289 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6289 ms  0x1d14 ret:0x7fcc6f616300
  6289 ms  0x1d14 PK11_PubDeriveWithKDF()
  6289 ms  0x1d14 seckey:0x7fcc6f7a8020
  6289 ms     | 0x1d14 EC_ValidatePublicKey()
  6289 ms     | 0x1d14 ret:0x0
  6291 ms  0x1d14 ret:0x7fcc6f616380
  6291 ms  SECKEY_ECParamsToKeySize()
  6291 ms  0x1d14 ret:0xff
  6291 ms  0x1d14 PK11_DeriveWithFlags()
  6291 ms  0x1d14 basekey:0x7fcc6f616300
  6291 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6291 ms  0x1d14 ret:0x7fcc6f615d00
  6291 ms  0x1d14 PK11_Derive()
  6291 ms  0x1d14 basekey:0x7fcc6f616380
  6291 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6291 ms  0x1d14 ret:0x7fcc6f616480
  6291 ms  0x1d14 PK11_DeriveWithFlags()
  6291 ms  0x1d14 basekey:0x7fcc6f616480
  6291 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6291 ms  0x1d14 ret:0x7fcc6f616300
  6291 ms  0x1d14 PK11_DeriveWithFlags()
  6291 ms  0x1d14 basekey:0x7fcc6f616480
  6291 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6291 ms  0x1d14 ret:0x7fcc6f616380
  6291 ms  0x1d14 PK11_DeriveWithFlags()
  6291 ms  0x1d14 basekey:0x7fcc6f616480
  6292 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6292 ms  0x1d14 ret:0x7fcc6f615d00
  6292 ms  0x1d14 PK11_Derive()
  6292 ms  0x1d14 basekey:0x7fcc6f616580
  6292 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6292 ms  0x1d14 ret:0x7fcc6f616400
  6292 ms  0x1d14 PK11_DeriveWithFlags()
  6292 ms  0x1d14 basekey:0x7fcc6f616380
  6292 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6292 ms  0x1d14 ret:0x7fcc6f616480
  6292 ms  0x1d14 PK11_DeriveWithFlags()
  6292 ms  0x1d14 basekey:0x7fcc6f616380
  6292 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6292 ms  0x1d14 ret:0x7fcc6f615d00
  6306 ms  0x1d14 PK11_DeriveWithFlags()
  6306 ms  0x1d14 basekey:0x7fcc6f616380
  6306 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6306 ms  0x1d14 ret:0x7fcc6f615d00
  6306 ms  0x1d14 PK11_Encrypt()
  6306 ms  0x1d14 symkey:0x7fcc6f615300
  6307 ms  0x1d14 PK11_Encrypt()
  6307 ms  0x1d14 symkey:0x7fcc6f615300
  6310 ms  0x1d14 PR_Connect()
  6310 ms  0x1d14 fd:0x7fcc6f9bd310
           /* TID 0x1d1c */
  6311 ms  0x1d1c PR_Close()
  6311 ms  0x1d1c fd:0x7fcc6f9bdc70
           /* TID 0x1d14 */
  6316 ms  0x1d14 PK11_Derive()
  6316 ms  0x1d14 basekey:0x7fcc6f615d00
  6316 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6316 ms  0x1d14 ret:0x7fcc6f616580
  6316 ms  0x1d14 PK11_PubDeriveWithKDF()
  6316 ms  0x1d14 seckey:0x7fcc6fab6020
  6316 ms     | 0x1d14 EC_ValidatePublicKey()
  6316 ms     | 0x1d14 ret:0x0
  6317 ms  0x1d14 ret:0x7fcc6f615d00
  6317 ms  SECKEY_ECParamsToKeySize()
  6317 ms  0x1d14 ret:0xff
  6317 ms  0x1d14 PK11_DeriveWithFlags()
  6317 ms  0x1d14 basekey:0x7fcc6f616580
  6317 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6317 ms  0x1d14 ret:0x7fcc6f616500
  6317 ms  0x1d14 PK11_Derive()
  6317 ms  0x1d14 basekey:0x7fcc6f615d00
  6317 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6317 ms  0x1d14 ret:0x7fcc6f616180
  6317 ms  0x1d14 PK11_DeriveWithFlags()
  6317 ms  0x1d14 basekey:0x7fcc6f616180
  6317 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6317 ms  0x1d14 ret:0x7fcc6f616580
  6317 ms  0x1d14 PK11_DeriveWithFlags()
  6317 ms  0x1d14 basekey:0x7fcc6f616180
  6317 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6317 ms  0x1d14 ret:0x7fcc6f615d00
  6317 ms  0x1d14 PK11_DeriveWithFlags()
  6317 ms  0x1d14 basekey:0x7fcc6f616180
  6317 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6317 ms  0x1d14 ret:0x7fcc6f616500
  6317 ms  0x1d14 PK11_Derive()
  6317 ms  0x1d14 basekey:0x7fcc6f616280
  6318 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6318 ms  0x1d14 ret:0x7fcc6f616100
  6318 ms  0x1d14 PK11_DeriveWithFlags()
  6318 ms  0x1d14 basekey:0x7fcc6f615d00
  6318 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6318 ms  0x1d14 ret:0x7fcc6f616180
  6318 ms  0x1d14 PK11_DeriveWithFlags()
  6318 ms  0x1d14 basekey:0x7fcc6f615d00
  6318 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6318 ms  0x1d14 ret:0x7fcc6f616500
  6328 ms  SECKEY_ECParamsToKeySize()
  6328 ms  0x1d14 ret:0x100
  6328 ms  SECKEY_ECParamsToBasePointOrderLen()
  6328 ms  0x1d14 ret:0x100
  6328 ms  SECKEY_ECParamsToBasePointOrderLen()
  6328 ms  0x1d14 ret:0x100
  6328 ms  0x1d14 EC_ValidatePublicKey()
  6330 ms  0x1d14 ret:0x0
           /* TID 0x1dba */
  6330 ms  SECKEY_ECParamsToBasePointOrderLen()
  6330 ms  0x1dba ret:0x180
  6330 ms  SECKEY_ECParamsToBasePointOrderLen()
  6330 ms  0x1dba ret:0x180
  6330 ms  0x1dba EC_ValidatePublicKey()
  6332 ms  0x1dba ret:0x0
  6337 ms  0x1dba _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6337 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6337 ms     | 0x1dba ret:0x180
  6338 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6338 ms     | 0x1dba ret:0x180
  6338 ms     | 0x1dba EC_ValidatePublicKey()
  6340 ms     | 0x1dba ret:0x0
           /* TID 0x1d14 */
  6340 ms  0x1d14 PK11_DeriveWithFlags()
  6340 ms  0x1d14 basekey:0x7fcc6f615d00
  6340 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6340 ms  0x1d14 ret:0x7fcc6f616500
           /* TID 0x1dba */
  6345 ms  0x1dba ret:0x0
           /* TID 0x1d14 */
  6350 ms  0x1d14 SSL_AuthCertificateComplete()
  6350 ms  0x1d14 fd:0x7fcc6f927460
  6350 ms  0x1d14 err:0x0
  6350 ms     | 0x1d14 PK11_DeriveWithFlags()
  6350 ms     | 0x1d14 basekey:0x7fcc6f616100
  6350 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6350 ms     | 0x1d14 ret:0x7fcc6f616500
  6350 ms     | 0x1d14 PK11_DeriveWithFlags()
  6350 ms     | 0x1d14 basekey:0x7fcc6f616100
  6350 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6350 ms     | 0x1d14 ret:0x7fcc6f616280
  6350 ms     | 0x1d14 PK11_DeriveWithFlags()
  6350 ms     | 0x1d14 basekey:0x7fcc6f616100
  6350 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6350 ms     | 0x1d14 ret:0x7fcc6f616200
  6350 ms     | 0x1d14 PK11_DeriveWithFlags()
  6350 ms     | 0x1d14 basekey:0x7fcc6f616580
  6350 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615e80
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616580
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615f80
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616280
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615f80
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616280
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615e00
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616580
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f616180
  6351 ms     | 0x1d14 PK11_Encrypt()
  6351 ms     | 0x1d14 symkey:0x7fcc6f615e80
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616500
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f616180
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616500
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615e00
  6351 ms     | 0x1d14 PK11_DeriveWithFlags()
  6351 ms     | 0x1d14 basekey:0x7fcc6f616100
  6351 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6351 ms     | 0x1d14 ret:0x7fcc6f615e80
  6351 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6351 ms     | 0x1d14 privk:0x7fcc6fab8020::7fcc6fab8020  e0 3c 97 6f                                      .<.o
  6351 ms     | 0x1d14 privk:0x7fcc6fab8020::7fcc6fab8020  e5 e5 e5 e5                                      ....
  6351 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6351 ms     | 0x1d14 privk:0x7fcc6fab6020::7fcc6fab6020  60 8f 96 6f                                      `..o
  6351 ms     | 0x1d14 privk:0x7fcc6fab6020::7fcc6fab6020  e5 e5 e5 e5                                      ....
  6351 ms  0x1d14 PK11_Encrypt()
  6351 ms  0x1d14 symkey:0x7fcc6f616180
  6352 ms  0x1d14 PK11_Encrypt()
  6352 ms  0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d1c */
  6354 ms  0x1d1c PR_Close()
  6354 ms  0x1d1c fd:0x7fcc6f95cd90
           /* TID 0x1d14 */
  6407 ms  0x1d14 PK11_DeriveWithFlags()
  6407 ms  0x1d14 basekey:0x7fcc6f615e80
  6407 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6407 ms  0x1d14 ret:0x7fcc6f615d00
           /* TID 0x1d1c */
  6496 ms  0x1d1c PR_Close()
  6496 ms  0x1d1c fd:0x7fcc6f665190
           /* TID 0x1d7e */
  6497 ms  0x1d7e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6497 ms  0x1d7e ret:0x0
           /* TID 0x1d14 */
  6505 ms  0x1d14 SSL_AuthCertificateComplete()
  6505 ms  0x1d14 fd:0x7fcc6f665f10
  6505 ms  0x1d14 err:0x0
  6505 ms     | 0x1d14 PK11_DeriveWithFlags()
  6505 ms     | 0x1d14 basekey:0x7fcc6f616400
  6505 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6505 ms     | 0x1d14 ret:0x7fcc6f615d00
  6505 ms     | 0x1d14 PK11_DeriveWithFlags()
  6505 ms     | 0x1d14 basekey:0x7fcc6f616400
  6505 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f616580
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616400
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f616100
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616300
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615e00
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616300
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615f00
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616580
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615f00
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616580
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615b80
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616300
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f616480
  6506 ms     | 0x1d14 PK11_Encrypt()
  6506 ms     | 0x1d14 symkey:0x7fcc6f615e00
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f616480
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f615d00
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615b80
  6506 ms     | 0x1d14 PK11_DeriveWithFlags()
  6506 ms     | 0x1d14 basekey:0x7fcc6f616400
  6506 ms     |    | 0x1d14 PK11_DeriveWithTemplate()
  6506 ms     | 0x1d14 ret:0x7fcc6f615e00
  6506 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6506 ms     | 0x1d14 privk:0x7fcc6f81d820::7fcc6f81d820  20 89 96 6f                                       ..o
  6506 ms     | 0x1d14 privk:0x7fcc6f81d820::7fcc6f81d820  e5 e5 e5 e5                                      ....
  6507 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  6507 ms     | 0x1d14 privk:0x7fcc6f7a8020::7fcc6f7a8020  10 f5 94 6f                                      ...o
  6507 ms     | 0x1d14 privk:0x7fcc6f7a8020::7fcc6f7a8020  e5 e5 e5 e5                                      ....
  6507 ms  0x1d14 PK11_Encrypt()
  6507 ms  0x1d14 symkey:0x7fcc6f616480
  6507 ms  0x1d14 PK11_Encrypt()
  6507 ms  0x1d14 symkey:0x7fcc6f616480
  6544 ms  0x1d14 PK11_DeriveWithFlags()
  6544 ms  0x1d14 basekey:0x7fcc6f615e00
  6544 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6544 ms  0x1d14 ret:0x7fcc6f616380
  6544 ms  0x1d14 PK11_DeriveWithFlags()
  6544 ms  0x1d14 basekey:0x7fcc6f615e00
  6544 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6544 ms  0x1d14 ret:0x7fcc6f616380
  6544 ms  0x1d14 PK11_Encrypt()
  6544 ms  0x1d14 symkey:0x7fcc6f616480
  6592 ms  0x1d14 PK11_Encrypt()
  6592 ms  0x1d14 symkey:0x7fcc6f616480
           /* TID 0x1d1c */
  6594 ms  0x1d1c PR_Close()
  6594 ms  0x1d1c fd:0x7fcc6f665dc0
           /* TID 0x1d14 */
  6606 ms  0x1d14 PK11_Encrypt()
  6606 ms  0x1d14 symkey:0x7fcc6f616480
  6698 ms  0x1d14 PK11_Encrypt()
  6698 ms  0x1d14 symkey:0x7fcc6f616480
           /* TID 0x1d1c */
  6700 ms  0x1d1c PR_Close()
  6700 ms  0x1d1c fd:0x7fcc6f61fd30
           /* TID 0x1d14 */
  6718 ms  0x1d14 PK11_Encrypt()
  6718 ms  0x1d14 symkey:0x7fcc6f616480
  6813 ms  0x1d14 PK11_Encrypt()
  6813 ms  0x1d14 symkey:0x7fcc6f616480
  6841 ms  0x1d14 SSL_ImportFD()
  6841 ms  0x1d14 ret:0x7fcc6fa1a3d0
  6841 ms  0x1d14 SSL_AuthCertificateHook()
  6841 ms  0x1d14 fd:0x7fcc6fa1a3d0
  6841 ms  0x1d14 ret:0x0
  6841 ms  0x1d14 PR_Connect()
  6841 ms  0x1d14 fd:0x7fcc6fa1a3d0
  6848 ms  0x1d14 PK11_Encrypt()
  6848 ms  0x1d14 symkey:0x7fcc6f615300
  6853 ms  0x1d14 PK11_Encrypt()
  6853 ms  0x1d14 symkey:0x7fcc81c91d80
  6853 ms  0x1d14 SSL_ImportFD()
  6853 ms  0x1d14 ret:0x7fcc807b7160
  6853 ms  0x1d14 SSL_AuthCertificateHook()
  6853 ms  0x1d14 fd:0x7fcc807b7160
  6853 ms  0x1d14 ret:0x0
  6853 ms  0x1d14 PR_Connect()
  6853 ms  0x1d14 fd:0x7fcc807b7160
  6858 ms  0x1d14 PR_Close()
  6858 ms  0x1d14 fd:0x7fcc81780cd0
           /* TID 0x1d09 */
  6860 ms  0x1d09 EC_ValidatePublicKey()
  6862 ms  0x1d09 ret:0x0
  6862 ms  0x1d09 EC_ValidatePublicKey()
  6863 ms  0x1d09 ret:0x0
  6863 ms  0x1d09 EC_ValidatePublicKey()
  6865 ms  0x1d09 ret:0x0
  6865 ms  0x1d09 EC_ValidatePublicKey()
  6866 ms  0x1d09 ret:0x0
  6866 ms  0x1d09 EC_ValidatePublicKey()
  6868 ms  0x1d09 ret:0x0
  6868 ms  0x1d09 EC_ValidatePublicKey()
  6869 ms  0x1d09 ret:0x0
  6869 ms  0x1d09 EC_ValidatePublicKey()
           /* TID 0x1d14 */
  6879 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6879 ms  0x1d14 cx:0x7fcc81703248
           /* TID 0x1d09 */
  6883 ms  0x1d09 ret:0x0
           /* TID 0x1d14 */
  6884 ms     | 0x1d14 EC_ValidatePublicKey()
  6884 ms     | 0x1d14 ret:0x0
  6884 ms  0x1d14 ret:0x7fcc6f810020::7fcc6f810020  e0 72 7d 80                                      .r}.
  6884 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6884 ms  0x1d14 cx:0x7fcc81703248
  6884 ms     | 0x1d14 EC_ValidatePublicKey()
  6886 ms     | 0x1d14 ret:0x0
  6886 ms  0x1d14 ret:0x7fcc6f812820::7fcc6f812820  50 76 7d 80                                      Pv}.
  6886 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6886 ms  0x1d14 cx:0x7fcc808e4e68
  6887 ms     | 0x1d14 EC_ValidatePublicKey()
  6887 ms     | 0x1d14 ret:0x0
  6887 ms  0x1d14 ret:0x7fcc6f818820::7fcc6f818820  20 79 7d 80                                       y}.
  6887 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6887 ms  0x1d14 cx:0x7fcc808e4e68
  6888 ms     | 0x1d14 EC_ValidatePublicKey()
  6889 ms     | 0x1d14 ret:0x0
  6889 ms  0x1d14 ret:0x7fcc6faa3020::7fcc6faa3020  90 7c 7d 80                                      .|}.
           /* TID 0x1d09 */
  6890 ms  0x1d09 EC_ValidatePublicKey()
  6892 ms  0x1d09 ret:0x0
  6892 ms  0x1d09 EC_ValidatePublicKey()
  6893 ms  0x1d09 ret:0x0
  6893 ms  0x1d09 EC_ValidatePublicKey()
  6895 ms  0x1d09 ret:0x0
           /* TID 0x1d14 */
  6900 ms  0x1d14 PK11_Encrypt()
  6900 ms  0x1d14 symkey:0x7fcc6f615300
  6900 ms  0x1d14 PK11_Encrypt()
  6900 ms  0x1d14 symkey:0x7fcc6f615080
  6900 ms  0x1d14 PK11_Encrypt()
  6900 ms  0x1d14 symkey:0x7fcc6f616480
  6900 ms  0x1d14 PK11_Encrypt()
  6900 ms  0x1d14 symkey:0x7fcc6f615880
  6900 ms  0x1d14 PR_Close()
  6900 ms  0x1d14 fd:0x7fcc6f9bd310
  6900 ms  0x1d14 PR_Close()
  6900 ms  0x1d14 fd:0x7fcc6f927460
  6900 ms     | 0x1d14 PK11_Encrypt()
  6900 ms     | 0x1d14 symkey:0x7fcc6f616180
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc6f6651c0
  6901 ms     | 0x1d14 PK11_Encrypt()
  6901 ms     | 0x1d14 symkey:0x7fcc6f616000
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc6fa1a2e0
  6901 ms     | 0x1d14 PK11_Encrypt()
  6901 ms     | 0x1d14 symkey:0x7fcc808f2980
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc6fa1a070
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc807c49d0
  6901 ms     | 0x1d14 PK11_Encrypt()
  6901 ms     | 0x1d14 symkey:0x7fcc808f1c00
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc825ede50
  6901 ms  0x1d14 PR_Close()
  6901 ms  0x1d14 fd:0x7fcc825ed040
  6901 ms     | 0x1d14 PK11_Encrypt()
  6901 ms     | 0x1d14 symkey:0x7fcc8acd5280
  6902 ms  0x1d14 PR_Close()
  6902 ms  0x1d14 fd:0x7fcc81c63a90
  6902 ms     | 0x1d14 PK11_Encrypt()
  6902 ms     | 0x1d14 symkey:0x7fcc833a0f80
  6902 ms  0x1d14 PR_Close()
  6902 ms  0x1d14 fd:0x7fcc6f665f10
  6902 ms     | 0x1d14 PK11_Encrypt()
  6902 ms     | 0x1d14 symkey:0x7fcc6f616480
           /* TID 0x1d71 */
  6903 ms  0x1d71 PR_Close()
  6903 ms  0x1d71 fd:0x7fcc6f665e20
  6903 ms  0x1d71 PR_Close()
  6903 ms  0x1d71 fd:0x7fcc6f665e20
           /* TID 0x1d14 */
  6904 ms  0x1d14 PR_Close()
  6904 ms  0x1d14 fd:0x7fcc6f95ca60
  6904 ms     | 0x1d14 PK11_Encrypt()
  6904 ms     | 0x1d14 symkey:0x7fcc6f615880
  6904 ms  0x1d14 PR_Close()
  6904 ms  0x1d14 fd:0x7fcc6f95c280
  6904 ms     | 0x1d14 PK11_Encrypt()
  6904 ms     | 0x1d14 symkey:0x7fcc6f615080
  6904 ms  0x1d14 PR_Close()
  6904 ms  0x1d14 fd:0x7fcc6f95c370
  6904 ms     | 0x1d14 PK11_Encrypt()
  6904 ms     | 0x1d14 symkey:0x7fcc6f615300
           /* TID 0x1d1c */
  6912 ms  0x1d1c PR_Close()
  6912 ms  0x1d1c fd:0x7fcc6f95c370
           /* TID 0x1d14 */
  6914 ms  SECKEY_ECParamsToKeySize()
  6914 ms  0x1d14 ret:0xff
  6914 ms  0x1d14 SECKEY_CreateECPrivateKey()
  6914 ms  0x1d14 cx:0x7fcc81703248
  6915 ms     | 0x1d14 EC_ValidatePublicKey()
  6915 ms     | 0x1d14 ret:0x0
           /* TID 0x1dba */
  6915 ms  0x1dba _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6915 ms  0x1dba ret:0x0
  6915 ms  0x1dba _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6915 ms  0x1dba ret:0x0
           /* TID 0x1d14 */
  6916 ms  0x1d14 ret:0x7fcc8084b020::7fcc8084b020  50 3b 87 80                                      P;..
  6916 ms  0x1d14 PK11_PubDeriveWithKDF()
  6916 ms  0x1d14 seckey:0x7fcc8084b020
  6916 ms     | 0x1d14 EC_ValidatePublicKey()
  6916 ms     | 0x1d14 ret:0x0
  6917 ms  0x1d14 ret:0x7fcc6f615180
  6917 ms  0x1d14 PK11_DeriveWithFlags()
  6917 ms  0x1d14 basekey:0x7fcc6f615180
  6917 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6917 ms  0x1d14 ret:0x7fcc81c92080
  6917 ms  0x1d14 PK11_Derive()
  6917 ms  0x1d14 basekey:0x7fcc81c92080
  6917 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6917 ms  0x1d14 ret:0x7fcc81c91e80
  6917 ms  0x1d14 SECKEY_DestroyPrivateKey()
  6917 ms  0x1d14 privk:0x7fcc8084b020::7fcc8084b020  50 3b 87 80                                      P;..
  6917 ms  0x1d14 privk:0x7fcc8084b020::7fcc8084b020  e5 e5 e5 e5                                      ....
  6917 ms  0x1d14 PK11_Encrypt()
  6917 ms  0x1d14 symkey:0x7fcc6f615200
  6923 ms  0x1d14 SSL_AuthCertificateComplete()
  6923 ms  0x1d14 fd:0x7fcc807b7160
  6923 ms  0x1d14 err:0x0
  6923 ms  0x1d14 PK11_Encrypt()
  6923 ms  0x1d14 symkey:0x7fcc6f615200
  6923 ms  0x1d14 PK11_Encrypt()
  6923 ms  0x1d14 symkey:0x7fcc6f615200
           /* TID 0x1d09 */
  6937 ms  0x1d09 PR_Close()
  6937 ms  0x1d09 fd:0x7fcc83374fd0
  6937 ms  0x1d09 PR_Close()
  6937 ms  0x1d09 fd:0x7fcc6f665f40
  6941 ms  0x1d09 PR_Close()
  6941 ms  0x1d09 fd:0x7fcc6f665fa0
  6941 ms  0x1d09 PR_Close()
  6941 ms  0x1d09 fd:0x7fcc6f665f40
  6942 ms  0x1d09 PR_Close()
  6942 ms  0x1d09 fd:0x7fcc6f665fa0
  6942 ms  0x1d09 PR_Close()
  6942 ms  0x1d09 fd:0x7fcc6f665f40
           /* TID 0x1d14 */
  6943 ms  0x1d14 SECKEY_DestroyPrivateKey()
  6943 ms  0x1d14 privk:0x7fcc6f812820::7fcc6f812820  50 76 7d 80                                      Pv}.
  6943 ms  0x1d14 privk:0x7fcc6f812820::7fcc6f812820  e5 e5 e5 e5                                      ....
  6943 ms  0x1d14 SECKEY_DestroyPrivateKey()
  6943 ms  0x1d14 privk:0x7fcc6f810020::7fcc6f810020  e0 72 7d 80                                      .r}.
  6943 ms  0x1d14 privk:0x7fcc6f810020::7fcc6f810020  e5 e5 e5 e5                                      ....
  6943 ms  0x1d14 PK11_Derive()
  6943 ms  0x1d14 basekey:0x7fcc6f615180
  6943 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6943 ms  0x1d14 ret:0x7fcc81c91c80
  6943 ms  0x1d14 PK11_PubDeriveWithKDF()
  6943 ms  0x1d14 seckey:0x7fcc6f818820
  6943 ms     | 0x1d14 EC_ValidatePublicKey()
  6943 ms     | 0x1d14 ret:0x0
  6944 ms  0x1d14 ret:0x7fcc6f615180
  6944 ms  SECKEY_ECParamsToKeySize()
  6944 ms  0x1d14 ret:0xff
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc81c91c80
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615700
  6944 ms  0x1d14 PK11_Derive()
  6944 ms  0x1d14 basekey:0x7fcc6f615180
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615680
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc6f615680
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc81c91c80
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc6f615680
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615180
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc6f615680
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615700
  6944 ms  0x1d14 PK11_Derive()
  6944 ms  0x1d14 basekey:0x7fcc6f616100
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f616580
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc6f615180
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615680
  6944 ms  0x1d14 PK11_DeriveWithFlags()
  6944 ms  0x1d14 basekey:0x7fcc6f615180
  6944 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6944 ms  0x1d14 ret:0x7fcc6f615700
  6945 ms  SECKEY_ECParamsToKeySize()
  6945 ms  0x1d14 ret:0x100
  6945 ms  SECKEY_ECParamsToBasePointOrderLen()
  6945 ms  0x1d14 ret:0x100
  6945 ms  SECKEY_ECParamsToBasePointOrderLen()
  6945 ms  0x1d14 ret:0x100
  6945 ms  0x1d14 EC_ValidatePublicKey()
  6947 ms  0x1d14 ret:0x0
  6948 ms  0x1d14 PK11_DeriveWithFlags()
  6948 ms  0x1d14 basekey:0x7fcc6f615180
  6948 ms     | 0x1d14 PK11_DeriveWithTemplate()
  6948 ms  0x1d14 ret:0x7fcc6f615700
           /* TID 0x1d79 */
  6952 ms  0x1d79 PR_Close()
  6952 ms  0x1d79 fd:0x7fcc6f9272b0
           /* TID 0x1d14 */
  6953 ms  0x1d14 PR_Close()
  6953 ms  0x1d14 fd:0x7fcc81cad8b0
  6953 ms     | 0x1d14 PK11_Encrypt()
  6953 ms     | 0x1d14 symkey:0x7fcc81c91d80
           /* TID 0x1d09 */
  6967 ms  0x1d09 PR_Close()
  6967 ms  0x1d09 fd:0x7fcc6f665fa0
  6967 ms  0x1d09 PR_Close()
  6967 ms  0x1d09 fd:0x7fcc807c4970
           /* TID 0x1d14 */
  6968 ms  0x1d14 PK11_Encrypt()
  6968 ms  0x1d14 symkey:0x7fcc6f615200
           /* TID 0x1d09 */
  6969 ms  0x1d09 PR_Close()
  6969 ms  0x1d09 fd:0x7fcc6f665fa0
  6969 ms  0x1d09 PR_Close()
  6969 ms  0x1d09 fd:0x7fcc807c4970
  6970 ms  0x1d09 PR_Close()
  6970 ms  0x1d09 fd:0x7fcc8b9c89a0
  6970 ms  0x1d09 PR_Close()
  6970 ms  0x1d09 fd:0x7fcc8b9c88b0
  6970 ms  0x1d09 PR_Close()
  6970 ms  0x1d09 fd:0x7fcc8b9c8a60
  6972 ms  0x1d09 PR_Close()
  6972 ms  0x1d09 fd:0x7fcc807c49d0
  6973 ms  0x1d09 PR_Close()
  6973 ms  0x1d09 fd:0x7fcc807c49d0
  6975 ms  0x1d09 PR_Close()
  6975 ms  0x1d09 fd:0x7fcc6f665fa0
  6975 ms  0x1d09 PR_Close()
  6975 ms  0x1d09 fd:0x7fcc807c4a60
  6976 ms  0x1d09 PR_Close()
  6976 ms  0x1d09 fd:0x7fcc6f665fa0
  6976 ms  0x1d09 PR_Close()
  6976 ms  0x1d09 fd:0x7fcc807c4a60
  6978 ms  0x1d09 PR_Close()
  6978 ms  0x1d09 fd:0x7fcc807c4af0
  6979 ms  0x1d09 PR_Close()
  6979 ms  0x1d09 fd:0x7fcc807c4af0
  6981 ms  0x1d09 PR_Close()
  6981 ms  0x1d09 fd:0x7fcc6f665fa0
  6981 ms  0x1d09 PR_Close()
  6981 ms  0x1d09 fd:0x7fcc807c4e50
  6982 ms  0x1d09 PR_Close()
  6982 ms  0x1d09 fd:0x7fcc6f665fa0
  6982 ms  0x1d09 PR_Close()
  6982 ms  0x1d09 fd:0x7fcc807c4e50
  6984 ms  0x1d09 PR_Close()
  6984 ms  0x1d09 fd:0x7fcc807c4eb0
  6986 ms  0x1d09 PR_Close()
  6986 ms  0x1d09 fd:0x7fcc807c4eb0
           /* TID 0x1d14 */
  6993 ms  0x1d14 PK11_Encrypt()
  6993 ms  0x1d14 symkey:0x7fcc6f615200
  6993 ms  0x1d14 PR_Close()
  6993 ms  0x1d14 fd:0x7fcc807b7160
  6993 ms     | 0x1d14 PK11_Encrypt()
  6993 ms     | 0x1d14 symkey:0x7fcc6f615200
           /* TID 0x1d09 */
  6995 ms  0x1d09 PR_Close()
  6995 ms  0x1d09 fd:0x7fcc807b71c0
  6996 ms  0x1d09 PR_Close()
  6996 ms  0x1d09 fd:0x7fcc807b71c0
  6998 ms  0x1d09 PR_Close()
  6998 ms  0x1d09 fd:0x7fcc807b71f0
           /* TID 0x1d14 */
  7004 ms  0x1d14 SSL_ImportFD()
  7004 ms  0x1d14 ret:0x7fcc8087d850
  7004 ms  0x1d14 SSL_AuthCertificateHook()
  7004 ms  0x1d14 fd:0x7fcc8087d850
  7004 ms  0x1d14 ret:0x0
  7004 ms  0x1d14 PR_Connect()
  7004 ms  0x1d14 fd:0x7fcc8087d850
           /* TID 0x1d1c */
  7006 ms  0x1d1c PR_Close()
  7006 ms  0x1d1c fd:0x7fcc8087dc40
           /* TID 0x1d79 */
  7007 ms  0x1d79 PR_Close()
  7007 ms  0x1d79 fd:0x7fcc807b7040
  7008 ms  0x1d79 PR_Close()
  7008 ms  0x1d79 fd:0x7fcc807b7040
           /* TID 0x1d09 */
  7009 ms  0x1d09 PR_Close()
  7009 ms  0x1d09 fd:0x7fcc6f665fa0
  7009 ms  0x1d09 PR_Close()
  7009 ms  0x1d09 fd:0x7fcc8087dd60
           /* TID 0x1d79 */
  7014 ms  0x1d79 PR_Close()
  7014 ms  0x1d79 fd:0x7fcc6f9272b0
           /* TID 0x1d1c */
  7019 ms  0x1d1c PR_Close()
  7019 ms  0x1d1c fd:0x7fcc8087df10
           /* TID 0x1d14 */
  7031 ms  0x1d14 PR_Connect()
  7031 ms  0x1d14 fd:0x7fcc81c564f0
  7060 ms  0x1d14 SECKEY_CreateECPrivateKey()
  7060 ms  0x1d14 cx:0x7fcc808e2de8
  7060 ms     | 0x1d14 EC_ValidatePublicKey()
  7060 ms     | 0x1d14 ret:0x0
  7060 ms  0x1d14 ret:0x7fcc80a8e820::7fcc80a8e820  a0 3b 75 6f                                      .;uo
  7060 ms  0x1d14 SECKEY_CreateECPrivateKey()
  7060 ms  0x1d14 cx:0x7fcc808e2de8
  7061 ms     | 0x1d14 EC_ValidatePublicKey()
  7062 ms     | 0x1d14 ret:0x0
  7063 ms  0x1d14 ret:0x7fcc825c3020::7fcc825c3020  80 3d 75 6f                                      .=uo
           /* TID 0x1d79 */
  7063 ms  0x1d79 PR_Close()
  7063 ms  0x1d79 fd:0x7fcc6f61ff40
           /* TID 0x1d14 */
  7070 ms  0x1d14 SSL_ImportFD()
  7070 ms  0x1d14 ret:0x7fcc6f7812b0
  7070 ms  0x1d14 SSL_AuthCertificateHook()
  7070 ms  0x1d14 fd:0x7fcc6f7812b0
  7070 ms  0x1d14 ret:0x0
  7070 ms  0x1d14 PR_Connect()
  7070 ms  0x1d14 fd:0x7fcc6f7812b0
  7071 ms  0x1d14 SSL_ImportFD()
  7071 ms  0x1d14 ret:0x7fcc6f781520
  7071 ms  0x1d14 SSL_AuthCertificateHook()
  7071 ms  0x1d14 fd:0x7fcc6f781520
  7071 ms  0x1d14 ret:0x0
  7071 ms  0x1d14 PR_Connect()
  7071 ms  0x1d14 fd:0x7fcc6f781520
  7071 ms  0x1d14 SSL_ImportFD()
  7071 ms  0x1d14 ret:0x7fcc6f781c10
  7071 ms  0x1d14 SSL_AuthCertificateHook()
  7071 ms  0x1d14 fd:0x7fcc6f781c10
  7071 ms  0x1d14 ret:0x0
  7071 ms  0x1d14 PR_Connect()
  7071 ms  0x1d14 fd:0x7fcc6f781c10
  7073 ms  0x1d14 PR_Close()
  7073 ms  0x1d14 fd:0x7fcc6fa1a3d0
  7073 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  7073 ms     | 0x1d14 privk:0x7fcc6faa3020::7fcc6faa3020  90 7c 7d 80                                      .|}.
  7073 ms     | 0x1d14 privk:0x7fcc6faa3020::7fcc6faa3020  e5 e5 e5 e5                                      ....
  7073 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  7073 ms     | 0x1d14 privk:0x7fcc6f818820::7fcc6f818820  20 79 7d 80                                       y}.
  7073 ms     | 0x1d14 privk:0x7fcc6f818820::7fcc6f818820  e5 e5 e5 e5                                      ....
  7073 ms  0x1d14 PR_Close()
  7073 ms  0x1d14 fd:0x7fcc8087d850
  7074 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  7074 ms     | 0x1d14 privk:0x7fcc825c3020::7fcc825c3020  80 3d 75 6f                                      .=uo
  7074 ms     | 0x1d14 privk:0x7fcc825c3020::7fcc825c3020  e5 e5 e5 e5                                      ....
  7074 ms     | 0x1d14 SECKEY_DestroyPrivateKey()
  7074 ms     | 0x1d14 privk:0x7fcc80a8e820::7fcc80a8e820  a0 3b 75 6f                                      .;uo
  7074 ms     | 0x1d14 privk:0x7fcc80a8e820::7fcc80a8e820  e5 e5 e5 e5                                      ....
           /* TID 0x1d0e */
  7080 ms  0x1d0e PR_Close()
  7080 ms  0x1d0e fd:0x7fcc8a27af70
           /* TID 0x1d14 */
  7082 ms  0x1d14 PR_Close()
  7082 ms  0x1d14 fd:0x7fcc6f7812b0
  7082 ms  0x1d14 PR_Close()
  7082 ms  0x1d14 fd:0x7fcc81c564f0
  7082 ms  0x1d14 PR_Close()
  7082 ms  0x1d14 fd:0x7fcc6f781520
  7082 ms  0x1d14 PR_Close()
  7082 ms  0x1d14 fd:0x7fcc6f781c10
           /* TID 0x1d79 */
  7090 ms  0x1d79 PR_Close()
  7090 ms  0x1d79 fd:0x7fcc6f781100
           /* TID 0x1d09 */
  7104 ms  0x1d09 PR_Close()
  7104 ms  0x1d09 fd:0x7fcc6f665fa0
  7104 ms  0x1d09 PR_Close()
  7104 ms  0x1d09 fd:0x7fcc6f61fb80
           /* TID 0x1d14 */
  7105 ms  0x1d14 PR_Close()
  7105 ms  0x1d14 fd:0x7fcc80fb7b50
           /* TID 0x1d71 */
  7107 ms  0x1d71 PR_Close()
  7107 ms  0x1d71 fd:0x7fcc6f781dc0
  7107 ms  0x1d71 PR_Close()
  7107 ms  0x1d71 fd:0x7fcc6f781dc0
  7108 ms  0x1d71 PR_Close()
  7108 ms  0x1d71 fd:0x7fcc6f781dc0
  7108 ms  0x1d71 PR_Close()
  7108 ms  0x1d71 fd:0x7fcc6f781df0
           /* TID 0x1d79 */
  7108 ms  0x1d79 PR_Close()
  7108 ms  0x1d79 fd:0x7fcc6f781df0
           /* TID 0x1d0e */
  7111 ms  0x1d0e PR_Close()
  7111 ms  0x1d0e fd:0x7fcc8695e910
           /* TID 0x1d1c */
  7115 ms  0x1d1c PR_Close()
  7115 ms  0x1d1c fd:0x7fcc6fa1a340
  7115 ms  0x1d1c PR_Close()
  7115 ms  0x1d1c fd:0x7fcc6fa1a370
           /* TID 0x1d0e */
  7125 ms  0x1d0e PR_Close()
  7125 ms  0x1d0e fd:0x7fcc80fb7ac0
           /* TID 0x1d09 */
  7128 ms  0x1d09 PR_Close()
  7128 ms  0x1d09 fd:0x7fcc6f665fa0
  7128 ms  0x1d09 PR_Close()
  7128 ms  0x1d09 fd:0x7fcc6f9bd310
           /* TID 0x1d79 */
  7130 ms  0x1d79 PR_Close()
  7130 ms  0x1d79 fd:0x7fcc6f9271f0
  7132 ms  0x1d79 PR_Close()
  7132 ms  0x1d79 fd:0x7fcc6f9271f0
  7203 ms  0x1d79 PR_Close()
  7203 ms  0x1d79 fd:0x7fcc6f61f6d0
  7205 ms  0x1d79 PR_Close()
  7205 ms  0x1d79 fd:0x7fcc6f61f6d0
  7224 ms  0x1d79 PR_Close()
  7224 ms  0x1d79 fd:0x7fcc6f61f8e0
  7226 ms  0x1d79 PR_Close()
  7226 ms  0x1d79 fd:0x7fcc6f61f940
  7243 ms  0x1d79 PR_Close()
  7243 ms  0x1d79 fd:0x7fcc6f665250
  7249 ms  0x1d79 PR_Close()
  7249 ms  0x1d79 fd:0x7fcc6f665af0
  7257 ms  0x1d79 PR_Close()
  7257 ms  0x1d79 fd:0x7fcc6f95c100
  7267 ms  0x1d79 PR_Close()
  7267 ms  0x1d79 fd:0x7fcc6f95c9a0
  7269 ms  0x1d79 PR_Close()
  7269 ms  0x1d79 fd:0x7fcc6f95c9a0
           /* TID 0x1d09 */
  7426 ms  0x1d09 PR_Close()
  7426 ms  0x1d09 fd:0x7fcc6f665af0
  7426 ms  0x1d09 PR_Close()
  7426 ms  0x1d09 fd:0x7fcc6f665af0
  7432 ms  0x1d09 PR_Close()
  7432 ms  0x1d09 fd:0x7fcca8dda130
  7433 ms  0x1d09 PR_Close()
  7433 ms  0x1d09 fd:0x7fcca8dda190
Process terminated
