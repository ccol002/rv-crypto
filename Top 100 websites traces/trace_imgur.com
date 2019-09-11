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
           /* TID 0x10b8 */
    19 ms  0x10b8 PR_Close()
    19 ms  0x10b8 fd:0x7fe0f6bd8700
           /* TID 0x10b0 */
   229 ms  0x10b0 SSL_ImportFD()
   229 ms  0x10b0 ret:0x7fe0f6be42e0
   229 ms  0x10b0 SSL_AuthCertificateHook()
   229 ms  0x10b0 fd:0x7fe0f6be42e0
   229 ms  0x10b0 ret:0x0
   229 ms  0x10b0 PR_Connect()
   229 ms  0x10b0 fd:0x7fe0f6be42e0
   437 ms  0x10b0 SECKEY_CreateECPrivateKey()
   437 ms  0x10b0 cx:0x7fe0f6bdbae8
   438 ms     | 0x10b0 EC_ValidatePublicKey()
   438 ms     | 0x10b0 ret:0x0
   439 ms  0x10b0 ret:0x7fe0e5e53020::7fe0e5e53020  20 3e be f6                                       >..
   439 ms  0x10b0 SECKEY_CreateECPrivateKey()
   439 ms  0x10b0 cx:0x7fe0f6bdbae8
   441 ms     | 0x10b0 EC_ValidatePublicKey()
   445 ms     | 0x10b0 ret:0x0
   445 ms  0x10b0 ret:0x7fe0e5e55020::7fe0e5e55020  60 3f be f6                                      `?..
           /* TID 0x110e */
   536 ms  0x110e PR_Close()
   536 ms  0x110e fd:0x7fe0e5e79880
   540 ms  0x110e PR_Close()
   540 ms  0x110e fd:0x7fe0e5e79880
           /* TID 0x10b0 */
   656 ms  SECKEY_ECParamsToKeySize()
   656 ms  0x10b0 ret:0x100
   656 ms  0x10b0 SECKEY_CreateECPrivateKey()
   656 ms  0x10b0 cx:0x7fe0f6bdbae8
   657 ms     | 0x10b0 EC_ValidatePublicKey()
   658 ms     | 0x10b0 ret:0x0
   658 ms  0x10b0 ret:0x7fe0e5e5e020::7fe0e5e5e020  60 7a ef e5                                      `z..
   658 ms  0x10b0 PK11_PubDeriveWithKDF()
   658 ms  0x10b0 seckey:0x7fe0e5e5e020
   658 ms     | 0x10b0 EC_ValidatePublicKey()
   660 ms     | 0x10b0 ret:0x0
   662 ms  0x10b0 ret:0x7fe0f86e0b00
   662 ms  0x10b0 PK11_DeriveWithFlags()
   662 ms  0x10b0 basekey:0x7fe0f86e0b00
   662 ms     | 0x10b0 PK11_DeriveWithTemplate()
   662 ms  0x10b0 ret:0x7fe0e5eec900
   662 ms  0x10b0 PK11_Derive()
   662 ms  0x10b0 basekey:0x7fe0e5eec900
   662 ms     | 0x10b0 PK11_DeriveWithTemplate()
   662 ms  0x10b0 ret:0x7fe0e5eeca00
   662 ms  0x10b0 SECKEY_DestroyPrivateKey()
   662 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  60 7a ef e5                                      `z..
   662 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  e5 e5 e5 e5                                      ....
   662 ms  0x10b0 PK11_Encrypt()
   662 ms  0x10b0 symkey:0x7fe0e5eecb80
   662 ms  0x10b0 PR_Connect()
   662 ms  0x10b0 fd:0x7fe0f6be4d90
           /* TID 0x110e */
   711 ms  0x110e PR_Close()
   711 ms  0x110e fd:0x7fe0f6be4ca0
           /* TID 0x10b8 */
   714 ms  0x10b8 PR_Close()
   714 ms  0x10b8 fd:0x7fe0f6be4ca0
           /* TID 0x1108 */
   714 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   714 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
   715 ms  0x10b0 SSL_AuthCertificateComplete()
   715 ms  0x10b0 fd:0x7fe0f6be42e0
   715 ms  0x10b0 err:0x0
   715 ms  0x10b0 PK11_Encrypt()
   715 ms  0x10b0 symkey:0x7fe0e5eecb80
   870 ms  0x10b0 SECKEY_DestroyPrivateKey()
   870 ms  0x10b0 privk:0x7fe0e5e55020::7fe0e5e55020  60 3f be f6                                      `?..
   870 ms  0x10b0 privk:0x7fe0e5e55020::7fe0e5e55020  e5 e5 e5 e5                                      ....
   870 ms  0x10b0 SECKEY_DestroyPrivateKey()
   870 ms  0x10b0 privk:0x7fe0e5e53020::7fe0e5e53020  20 3e be f6                                       >..
   870 ms  0x10b0 privk:0x7fe0e5e53020::7fe0e5e53020  e5 e5 e5 e5                                      ....
  1085 ms  0x10b0 SSL_ImportFD()
  1085 ms  0x10b0 ret:0x7fe0f6be4ee0
  1085 ms  0x10b0 SSL_AuthCertificateHook()
  1085 ms  0x10b0 fd:0x7fe0f6be4ee0
  1085 ms  0x10b0 ret:0x0
  1085 ms  0x10b0 PR_Connect()
  1085 ms  0x10b0 fd:0x7fe0f6be4ee0
  1111 ms  0x10b0 SECKEY_CreateECPrivateKey()
  1111 ms  0x10b0 cx:0x7fe0e5ef88c8
  1112 ms     | 0x10b0 EC_ValidatePublicKey()
  1112 ms     | 0x10b0 ret:0x0
  1112 ms  0x10b0 ret:0x7fe0e5e54820::7fe0e5e54820  60 7a ef e5                                      `z..
  1113 ms  0x10b0 SECKEY_CreateECPrivateKey()
  1113 ms  0x10b0 cx:0x7fe0e5ef88c8
  1114 ms     | 0x10b0 EC_ValidatePublicKey()
  1118 ms     | 0x10b0 ret:0x0
  1118 ms  0x10b0 ret:0x7fe0e5e5a820::7fe0e5e5a820  40 7c ef e5                                      @|..
           /* TID 0x1108 */
  1170 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1171 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  1171 ms  SECKEY_ECParamsToKeySize()
  1171 ms  0x10b0 ret:0x100
  1171 ms  0x10b0 SECKEY_CreateECPrivateKey()
  1171 ms  0x10b0 cx:0x7fe0e5ef88c8
  1173 ms     | 0x10b0 EC_ValidatePublicKey()
  1176 ms     | 0x10b0 ret:0x0
  1176 ms  0x10b0 ret:0x7fe0e5e5e020::7fe0e5e5e020  c0 7e ef e5                                      .~..
  1176 ms  0x10b0 PK11_PubDeriveWithKDF()
  1176 ms  0x10b0 seckey:0x7fe0e5e5e020
  1177 ms     | 0x10b0 EC_ValidatePublicKey()
  1181 ms     | 0x10b0 ret:0x0
  1185 ms  0x10b0 ret:0x7fe0f86e0b00
  1185 ms  0x10b0 PK11_DeriveWithFlags()
  1185 ms  0x10b0 basekey:0x7fe0f86e0b00
  1185 ms     | 0x10b0 PK11_DeriveWithTemplate()
  1185 ms  0x10b0 ret:0x7fe0e5e7fa00
  1185 ms  0x10b0 PK11_Derive()
  1185 ms  0x10b0 basekey:0x7fe0e5e7fa00
  1185 ms     | 0x10b0 PK11_DeriveWithTemplate()
  1185 ms  0x10b0 ret:0x7fe0e5eed400
  1185 ms  0x10b0 SECKEY_DestroyPrivateKey()
  1185 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  c0 7e ef e5                                      .~..
  1186 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  e5 e5 e5 e5                                      ....
  1186 ms  0x10b0 PK11_Encrypt()
  1186 ms  0x10b0 symkey:0x7fe0e5eed900
  1186 ms  0x10b0 SSL_AuthCertificateComplete()
  1186 ms  0x10b0 fd:0x7fe0f6be4ee0
  1186 ms  0x10b0 err:0x0
  1187 ms  0x10b0 PK11_Encrypt()
  1187 ms  0x10b0 symkey:0x7fe0e5eed900
  1237 ms  0x10b0 SECKEY_DestroyPrivateKey()
  1237 ms  0x10b0 privk:0x7fe0e5e5a820::7fe0e5e5a820  40 7c ef e5                                      @|..
  1238 ms  0x10b0 privk:0x7fe0e5e5a820::7fe0e5e5a820  e5 e5 e5 e5                                      ....
  1238 ms  0x10b0 SECKEY_DestroyPrivateKey()
  1238 ms  0x10b0 privk:0x7fe0e5e54820::7fe0e5e54820  60 7a ef e5                                      `z..
  1238 ms  0x10b0 privk:0x7fe0e5e54820::7fe0e5e54820  e5 e5 e5 e5                                      ....
  1241 ms  0x10b0 PK11_Encrypt()
  1241 ms  0x10b0 symkey:0x7fe0e5eed900
  1270 ms  0x10b0 PK11_Encrypt()
  1270 ms  0x10b0 symkey:0x7fe0e5eed900
  1299 ms  0x10b0 PK11_Encrypt()
  1299 ms  0x10b0 symkey:0x7fe0e5eed900
  1329 ms  0x10b0 PK11_Encrypt()
  1329 ms  0x10b0 symkey:0x7fe0e5eed900
  1444 ms  0x10b0 PK11_Encrypt()
  1444 ms  0x10b0 symkey:0x7fe0e5eed900
  1476 ms  0x10b0 PK11_Encrypt()
  1476 ms  0x10b0 symkey:0x7fe0e5eed900
  1509 ms  0x10b0 PK11_Encrypt()
  1509 ms  0x10b0 symkey:0x7fe0e5eed900
           /* TID 0x1101 */
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a220
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a280
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a220
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a280
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a220
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a280
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a220
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a280
  1540 ms  0x1101 PR_Close()
  1540 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a220
  1541 ms  0x1101 PR_Close()
  1541 ms  0x1101 fd:0x7fe0e5b0a280
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a220
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a280
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a220
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a280
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a220
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a280
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a220
  1542 ms  0x1101 PR_Close()
  1542 ms  0x1101 fd:0x7fe0e5b0a280
  1545 ms  0x1101 PR_Close()
  1545 ms  0x1101 fd:0x7fe0e5b0a220
  1546 ms  0x1101 PR_Close()
  1546 ms  0x1101 fd:0x7fe0e5b0a1f0
  1549 ms  0x1101 PR_Close()
  1549 ms  0x1101 fd:0x7fe0e5b0a1f0
  1549 ms  0x1101 PR_Close()
  1549 ms  0x1101 fd:0x7fe0e5b0a220
  1551 ms  0x1101 PR_Close()
  1551 ms  0x1101 fd:0x7fe0e5b0a220
  1552 ms  0x1101 PR_Close()
  1552 ms  0x1101 fd:0x7fe0e5b0a220
  1554 ms  0x1101 PR_Close()
  1554 ms  0x1101 fd:0x7fe0e5b0a220
  1554 ms  0x1101 PR_Close()
  1554 ms  0x1101 fd:0x7fe0e5b0a220
  1601 ms  0x1101 PR_Close()
  1601 ms  0x1101 fd:0x7fe0e5b0a220
  1602 ms  0x1101 PR_Close()
  1602 ms  0x1101 fd:0x7fe0e5b0a220
  1609 ms  0x1101 PR_Close()
  1609 ms  0x1101 fd:0x7fe0e5b0a220
  1609 ms  0x1101 PR_Close()
  1609 ms  0x1101 fd:0x7fe0e5b0a220
  1615 ms  0x1101 PR_Close()
  1615 ms  0x1101 fd:0x7fe0e5b0a220
  1615 ms  0x1101 PR_Close()
  1615 ms  0x1101 fd:0x7fe0e5b0a220
  1617 ms  0x1101 PR_Close()
  1617 ms  0x1101 fd:0x7fe0e5b0a220
  1617 ms  0x1101 PR_Close()
  1617 ms  0x1101 fd:0x7fe0e5b0a220
           /* TID 0x10fe */
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
  1618 ms  0x10fe PR_Close()
  1618 ms  0x10fe fd:0x7fe0e5b0a220
           /* TID 0x110e */
  2121 ms  0x110e PR_Close()
  2121 ms  0x110e fd:0x7fe0e5b0a580
  2123 ms  0x110e PR_Close()
  2123 ms  0x110e fd:0x7fe0e5b0a580
  2473 ms  0x110e PR_Close()
  2473 ms  0x110e fd:0x7fe0e5b0a580
           /* TID 0x10b8 */
  4114 ms  0x10b8 PR_Close()
  4114 ms  0x10b8 fd:0x7fe0e5b0a580
  4114 ms  0x10b8 PR_Close()
  4114 ms  0x10b8 fd:0x7fe0e5b0a6d0
           /* TID 0x10b0 */
  4454 ms  0x10b0 SSL_ImportFD()
  4454 ms  0x10b0 ret:0x7fe0e5ae0760
  4454 ms  0x10b0 SSL_AuthCertificateHook()
  4454 ms  0x10b0 fd:0x7fe0e5ae0760
  4454 ms  0x10b0 ret:0x0
  4454 ms  0x10b0 PR_Connect()
  4454 ms  0x10b0 fd:0x7fe0e5ae0760
  4480 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4480 ms  0x10b0 cx:0x7fe0e5ef8c08
  4480 ms     | 0x10b0 EC_ValidatePublicKey()
  4480 ms     | 0x10b0 ret:0x0
  4480 ms  0x10b0 ret:0x7fe0e5902820::7fe0e5902820  80 68 ae e5                                      .h..
  4481 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4481 ms  0x10b0 cx:0x7fe0e5ef8c08
  4482 ms     | 0x10b0 EC_ValidatePublicKey()
  4484 ms     | 0x10b0 ret:0x0
  4484 ms  0x10b0 ret:0x7fe0e5904820::7fe0e5904820  00 6b ae e5                                      .k..
           /* TID 0x1108 */
  4515 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4515 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  4516 ms  SECKEY_ECParamsToKeySize()
  4516 ms  0x10b0 ret:0xff
  4516 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4516 ms  0x10b0 cx:0x7fe0e5ef8c08
  4517 ms     | 0x10b0 EC_ValidatePublicKey()
  4517 ms     | 0x10b0 ret:0x0
  4517 ms  0x10b0 ret:0x7fe0e590b020::7fe0e590b020  d0 6d ae e5                                      .m..
  4518 ms  0x10b0 PK11_PubDeriveWithKDF()
  4518 ms  0x10b0 seckey:0x7fe0e590b020
  4518 ms     | 0x10b0 EC_ValidatePublicKey()
  4518 ms     | 0x10b0 ret:0x0
  4519 ms  0x10b0 ret:0x7fe0f86e0b00
  4519 ms  0x10b0 PK11_DeriveWithFlags()
  4519 ms  0x10b0 basekey:0x7fe0f86e0b00
  4519 ms     | 0x10b0 PK11_DeriveWithTemplate()
  4519 ms  0x10b0 ret:0x7fe0e5ae4a80
  4519 ms  0x10b0 PK11_Derive()
  4519 ms  0x10b0 basekey:0x7fe0e5ae4a80
  4519 ms     | 0x10b0 PK11_DeriveWithTemplate()
  4520 ms  0x10b0 ret:0x7fe0e5ae4b00
  4520 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4520 ms  0x10b0 privk:0x7fe0e590b020::7fe0e590b020  d0 6d ae e5                                      .m..
  4520 ms  0x10b0 privk:0x7fe0e590b020::7fe0e590b020  e5 e5 e5 e5                                      ....
  4520 ms  0x10b0 PK11_Encrypt()
  4520 ms  0x10b0 symkey:0x7fe0e5ae4c80
  4520 ms  0x10b0 SSL_AuthCertificateComplete()
  4520 ms  0x10b0 fd:0x7fe0e5ae0760
  4520 ms  0x10b0 err:0x0
  4521 ms  0x10b0 PK11_Encrypt()
  4521 ms  0x10b0 symkey:0x7fe0e5ae4c80
  4522 ms  0x10b0 PK11_Encrypt()
  4522 ms  0x10b0 symkey:0x7fe0e5ae4c80
  4547 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4547 ms  0x10b0 privk:0x7fe0e5904820::7fe0e5904820  00 6b ae e5                                      .k..
  4547 ms  0x10b0 privk:0x7fe0e5904820::7fe0e5904820  e5 e5 e5 e5                                      ....
  4547 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4547 ms  0x10b0 privk:0x7fe0e5902820::7fe0e5902820  80 68 ae e5                                      .h..
  4547 ms  0x10b0 privk:0x7fe0e5902820::7fe0e5902820  e5 e5 e5 e5                                      ....
  4571 ms  0x10b0 PK11_Encrypt()
  4571 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10c7 */
  4577 ms  0x10c7 PR_Close()
  4577 ms  0x10c7 fd:0x7fe0e5ae0be0
           /* TID 0x10b0 */
  4626 ms  0x10b0 SSL_ImportFD()
  4627 ms  0x10b0 ret:0x7fe0e5a1e400
  4627 ms  0x10b0 SSL_AuthCertificateHook()
  4627 ms  0x10b0 fd:0x7fe0e5a1e400
  4627 ms  0x10b0 ret:0x0
  4627 ms  0x10b0 PR_Connect()
  4627 ms  0x10b0 fd:0x7fe0e5a1e400
  4684 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4684 ms  0x10b0 cx:0x7fe0e5ef9288
  4686 ms     | 0x10b0 EC_ValidatePublicKey()
  4686 ms     | 0x10b0 ret:0x0
  4686 ms  0x10b0 ret:0x7fe0e5910020::7fe0e5910020  90 b7 ab e5                                      ....
  4686 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4686 ms  0x10b0 cx:0x7fe0e5ef9288
  4689 ms     | 0x10b0 EC_ValidatePublicKey()
  4694 ms     | 0x10b0 ret:0x0
  4694 ms  0x10b0 ret:0x7fe0e5912020::7fe0e5912020  70 b9 ab e5                                      p...
           /* TID 0x1108 */
  4757 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4757 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  4758 ms  SECKEY_ECParamsToKeySize()
  4758 ms  0x10b0 ret:0xff
  4758 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4758 ms  0x10b0 cx:0x7fe0e5ef9288
  4763 ms     | 0x10b0 EC_ValidatePublicKey()
  4763 ms     | 0x10b0 ret:0x0
  4763 ms  0x10b0 ret:0x7fe0e5915020::7fe0e5915020  a0 bb ab e5                                      ....
  4763 ms  0x10b0 PK11_PubDeriveWithKDF()
  4763 ms  0x10b0 seckey:0x7fe0e5915020
  4763 ms     | 0x10b0 EC_ValidatePublicKey()
  4763 ms     | 0x10b0 ret:0x0
  4764 ms  0x10b0 ret:0x7fe0f86e0b00
  4765 ms  0x10b0 PK11_DeriveWithFlags()
  4765 ms  0x10b0 basekey:0x7fe0f86e0b00
  4765 ms     | 0x10b0 PK11_DeriveWithTemplate()
  4765 ms  0x10b0 ret:0x7fe0e5ae4600
  4765 ms  0x10b0 PK11_Derive()
  4765 ms  0x10b0 basekey:0x7fe0e5ae4600
  4765 ms     | 0x10b0 PK11_DeriveWithTemplate()
  4765 ms  0x10b0 ret:0x7fe0e5ae4680
  4765 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4765 ms  0x10b0 privk:0x7fe0e5915020::7fe0e5915020  a0 bb ab e5                                      ....
  4765 ms  0x10b0 privk:0x7fe0e5915020::7fe0e5915020  e5 e5 e5 e5                                      ....
  4766 ms  0x10b0 PK11_Encrypt()
  4766 ms  0x10b0 symkey:0x7fe0e5ae5c00
  4766 ms  0x10b0 SSL_AuthCertificateComplete()
  4766 ms  0x10b0 fd:0x7fe0e5a1e400
  4766 ms  0x10b0 err:0x0
  4767 ms  0x10b0 PK11_Encrypt()
  4767 ms  0x10b0 symkey:0x7fe0e5ae5c00
  4768 ms  0x10b0 PK11_Encrypt()
  4768 ms  0x10b0 symkey:0x7fe0e5ae5c00
  4823 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4823 ms  0x10b0 privk:0x7fe0e5912020::7fe0e5912020  70 b9 ab e5                                      p...
  4824 ms  0x10b0 privk:0x7fe0e5912020::7fe0e5912020  e5 e5 e5 e5                                      ....
  4824 ms  0x10b0 SECKEY_DestroyPrivateKey()
  4824 ms  0x10b0 privk:0x7fe0e5910020::7fe0e5910020  90 b7 ab e5                                      ....
  4824 ms  0x10b0 privk:0x7fe0e5910020::7fe0e5910020  e5 e5 e5 e5                                      ....
  4880 ms  0x10b0 PK11_Encrypt()
  4880 ms  0x10b0 symkey:0x7fe0e5ae5c00
           /* TID 0x10b8 */
  4888 ms  0x10b8 PR_Close()
  4888 ms  0x10b8 fd:0x7fe0e5a1e640
           /* TID 0x10c7 */
  4899 ms  0x10c7 PR_Close()
  4899 ms  0x10c7 fd:0x7fe0e5a1e670
           /* TID 0x10b0 */
  4961 ms  0x10b0 SSL_ImportFD()
  4961 ms  0x10b0 ret:0x7fe0e58b60a0
  4961 ms  0x10b0 SSL_AuthCertificateHook()
  4961 ms  0x10b0 fd:0x7fe0e58b60a0
  4961 ms  0x10b0 ret:0x0
  4962 ms  0x10b0 PK11_Encrypt()
  4962 ms  0x10b0 symkey:0x7fe0e5ae4c80
  4962 ms  0x10b0 PR_Connect()
  4962 ms  0x10b0 fd:0x7fe0e58b60a0
  4962 ms  0x10b0 SSL_ImportFD()
  4962 ms  0x10b0 ret:0x7fe0e58b62e0
  4962 ms  0x10b0 SSL_AuthCertificateHook()
  4962 ms  0x10b0 fd:0x7fe0e58b62e0
  4962 ms  0x10b0 ret:0x0
  4962 ms  0x10b0 PR_Connect()
  4962 ms  0x10b0 fd:0x7fe0e58b62e0
  4962 ms  0x10b0 PK11_Encrypt()
  4962 ms  0x10b0 symkey:0x7fe0e5ae4c80
  4963 ms  0x10b0 SSL_ImportFD()
  4964 ms  0x10b0 ret:0x7fe0e58b64f0
  4964 ms  0x10b0 SSL_AuthCertificateHook()
  4964 ms  0x10b0 fd:0x7fe0e58b64f0
  4964 ms  0x10b0 ret:0x0
  4964 ms  0x10b0 PR_Connect()
  4964 ms  0x10b0 fd:0x7fe0e58b64f0
  4987 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4987 ms  0x10b0 cx:0x7fe0e5ef9768
  4988 ms     | 0x10b0 EC_ValidatePublicKey()
  4988 ms     | 0x10b0 ret:0x0
  4988 ms  0x10b0 ret:0x7fe0e581f820::7fe0e581f820  90 67 b8 e5                                      .g..
  4988 ms  0x10b0 SECKEY_CreateECPrivateKey()
  4988 ms  0x10b0 cx:0x7fe0e5ef9768
  4989 ms     | 0x10b0 EC_ValidatePublicKey()
  4990 ms     | 0x10b0 ret:0x0
  4990 ms  0x10b0 ret:0x7fe0e5821820::7fe0e5821820  c0 69 b8 e5                                      .i..
           /* TID 0x10b8 */
  4993 ms  0x10b8 PR_Close()
  4993 ms  0x10b8 fd:0x7fe0e58b6bb0
           /* TID 0x10b0 */
  5000 ms  0x10b0 SECKEY_CreateECPrivateKey()
  5000 ms  0x10b0 cx:0x7fe0e5ef9aa8
  5000 ms     | 0x10b0 EC_ValidatePublicKey()
  5000 ms     | 0x10b0 ret:0x0
  5000 ms  0x10b0 ret:0x7fe0e5823820::7fe0e5823820  60 6a b8 e5                                      `j..
  5000 ms  0x10b0 SECKEY_CreateECPrivateKey()
  5000 ms  0x10b0 cx:0x7fe0e5ef9aa8
  5001 ms     | 0x10b0 EC_ValidatePublicKey()
  5002 ms     | 0x10b0 ret:0x0
  5003 ms  0x10b0 ret:0x7fe0e5825820::7fe0e5825820  f0 76 84 e5                                      .v..
  5003 ms  0x10b0 SECKEY_CreateECPrivateKey()
  5003 ms  0x10b0 cx:0x7fe0e5ef9c48
  5003 ms     | 0x10b0 EC_ValidatePublicKey()
  5003 ms     | 0x10b0 ret:0x0
  5003 ms  0x10b0 ret:0x7fe0e5828020::7fe0e5828020  e0 6c b8 e5                                      .l..
  5003 ms  0x10b0 SECKEY_CreateECPrivateKey()
  5003 ms  0x10b0 cx:0x7fe0e5ef9c48
  5004 ms     | 0x10b0 EC_ValidatePublicKey()
  5006 ms     | 0x10b0 ret:0x0
  5006 ms  0x10b0 ret:0x7fe0e582a020::7fe0e582a020  10 6f b8 e5                                      .o..
  5018 ms  SECKEY_ECParamsToKeySize()
  5019 ms  0x10b0 ret:0xff
  5019 ms  0x10b0 SECKEY_CreateECPrivateKey()
  5019 ms  0x10b0 cx:0x7fe0e5ef9768
  5019 ms     | 0x10b0 EC_ValidatePublicKey()
  5019 ms     | 0x10b0 ret:0x0
  5019 ms  0x10b0 ret:0x7fe0e582e820::7fe0e582e820  d0 93 bc e5                                      ....
  5019 ms  0x10b0 PK11_PubDeriveWithKDF()
  5019 ms  0x10b0 seckey:0x7fe0e582e820
  5019 ms     | 0x10b0 EC_ValidatePublicKey()
  5019 ms     | 0x10b0 ret:0x0
           /* TID 0x1108 */
  5020 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5020 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  5020 ms  0x10b0 ret:0x7fe0f86e0b00
  5020 ms  0x10b0 PK11_DeriveWithFlags()
  5020 ms  0x10b0 basekey:0x7fe0f86e0b00
  5020 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5020 ms  0x10b0 ret:0x7fe0e5852400
  5020 ms  0x10b0 PK11_Derive()
  5020 ms  0x10b0 basekey:0x7fe0e5852400
  5020 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5020 ms  0x10b0 ret:0x7fe0e5852480
  5020 ms  0x10b0 SECKEY_DestroyPrivateKey()
  5020 ms  0x10b0 privk:0x7fe0e582e820::7fe0e582e820  d0 93 bc e5                                      ....
  5020 ms  0x10b0 privk:0x7fe0e582e820::7fe0e582e820  e5 e5 e5 e5                                      ....
  5020 ms  0x10b0 PK11_Encrypt()
  5020 ms  0x10b0 symkey:0x7fe0e5852680
  5021 ms  0x10b0 SSL_AuthCertificateComplete()
  5021 ms  0x10b0 fd:0x7fe0e58b60a0
  5021 ms  0x10b0 err:0x0
  5021 ms  0x10b0 PK11_Encrypt()
  5021 ms  0x10b0 symkey:0x7fe0e5852680
  5047 ms  0x10b0 SECKEY_DestroyPrivateKey()
  5047 ms  0x10b0 privk:0x7fe0e5821820::7fe0e5821820  c0 69 b8 e5                                      .i..
  5047 ms  0x10b0 privk:0x7fe0e5821820::7fe0e5821820  e5 e5 e5 e5                                      ....
  5047 ms  0x10b0 SECKEY_DestroyPrivateKey()
  5047 ms  0x10b0 privk:0x7fe0e581f820::7fe0e581f820  90 67 b8 e5                                      .g..
  5047 ms  0x10b0 privk:0x7fe0e581f820::7fe0e581f820  e5 e5 e5 e5                                      ....
  5047 ms  0x10b0 PR_Close()
  5047 ms  0x10b0 fd:0x7fe0e58b60a0
  5047 ms     | 0x10b0 PK11_Encrypt()
  5047 ms     | 0x10b0 symkey:0x7fe0e5852680
  5057 ms  0x10b0 PK11_Derive()
  5057 ms  0x10b0 basekey:0x7fe0e5852480
  5057 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5057 ms  0x10b0 ret:0x7fe0e5852400
  5057 ms  0x10b0 PK11_PubDeriveWithKDF()
  5057 ms  0x10b0 seckey:0x7fe0e5823820
  5057 ms     | 0x10b0 EC_ValidatePublicKey()
  5057 ms     | 0x10b0 ret:0x0
  5059 ms  0x10b0 ret:0x7fe0e5852480
  5059 ms  SECKEY_ECParamsToKeySize()
  5059 ms  0x10b0 ret:0xff
  5059 ms  0x10b0 PK11_DeriveWithFlags()
  5059 ms  0x10b0 basekey:0x7fe0e5852400
  5059 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5059 ms  0x10b0 ret:0x7fe0f86e0b00
  5059 ms  0x10b0 PK11_Derive()
  5059 ms  0x10b0 basekey:0x7fe0e5852480
  5059 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5059 ms  0x10b0 ret:0x7fe0e5852600
  5059 ms  0x10b0 PK11_DeriveWithFlags()
  5059 ms  0x10b0 basekey:0x7fe0e5852600
  5059 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5059 ms  0x10b0 ret:0x7fe0e5852400
  5059 ms  0x10b0 PK11_DeriveWithFlags()
  5059 ms  0x10b0 basekey:0x7fe0e5852600
  5059 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5059 ms  0x10b0 ret:0x7fe0e5852480
  5059 ms  0x10b0 PK11_DeriveWithFlags()
  5059 ms  0x10b0 basekey:0x7fe0e5852600
  5059 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5059 ms  0x10b0 ret:0x7fe0f86e0b00
  5060 ms  0x10b0 PK11_Derive()
  5060 ms  0x10b0 basekey:0x7fe0e5852700
  5060 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5060 ms  0x10b0 ret:0x7fe0e5852500
  5060 ms  0x10b0 PK11_DeriveWithFlags()
  5060 ms  0x10b0 basekey:0x7fe0e5852480
  5060 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5060 ms  0x10b0 ret:0x7fe0e5852600
  5060 ms  0x10b0 PK11_DeriveWithFlags()
  5060 ms  0x10b0 basekey:0x7fe0e5852480
  5060 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5060 ms  0x10b0 ret:0x7fe0f86e0b00
  5065 ms  0x10b0 PK11_DeriveWithFlags()
  5065 ms  0x10b0 basekey:0x7fe0e5852480
  5065 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5065 ms  0x10b0 ret:0x7fe0f86e0b00
  5080 ms  0x10b0 PK11_Derive()
  5080 ms  0x10b0 basekey:0x7fe0f86e0b00
  5080 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5080 ms  0x10b0 ret:0x7fe0e5852700
  5080 ms  0x10b0 PK11_PubDeriveWithKDF()
  5080 ms  0x10b0 seckey:0x7fe0e5828020
  5080 ms     | 0x10b0 EC_ValidatePublicKey()
  5080 ms     | 0x10b0 ret:0x0
  5081 ms  0x10b0 ret:0x7fe0f86e0b00
  5081 ms  SECKEY_ECParamsToKeySize()
  5081 ms  0x10b0 ret:0xff
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0e5852700
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5852680
  5081 ms  0x10b0 PK11_Derive()
  5081 ms  0x10b0 basekey:0x7fe0f86e0b00
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5853300
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0e5853300
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5852700
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0e5853300
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0f86e0b00
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0e5853300
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5852680
  5081 ms  0x10b0 PK11_Derive()
  5081 ms  0x10b0 basekey:0x7fe0e5853380
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5853400
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0f86e0b00
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5853300
  5081 ms  0x10b0 PK11_DeriveWithFlags()
  5081 ms  0x10b0 basekey:0x7fe0f86e0b00
  5081 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5081 ms  0x10b0 ret:0x7fe0e5852680
  5082 ms  0x10b0 PK11_DeriveWithFlags()
  5082 ms  0x10b0 basekey:0x7fe0f86e0b00
  5082 ms     | 0x10b0 PK11_DeriveWithTemplate()
  5082 ms  0x10b0 ret:0x7fe0e5852680
  5082 ms  0x10b0 PR_Connect()
  5082 ms  0x10b0 fd:0x7fe0e5a1e610
  5083 ms  0x10b0 PR_Connect()
  5083 ms  0x10b0 fd:0x7fe0e5ebbf10
           /* TID 0x10b8 */
  5120 ms  0x10b8 PR_Close()
  5120 ms  0x10b8 fd:0x7fe0e5ebb7c0
  5272 ms  0x10b8 PR_Close()
  5272 ms  0x10b8 fd:0x7fe0e58b6070
           /* TID 0x1108 */
  5272 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5272 ms  0x1108 ret:0x0
           /* TID 0x1145 */
  5273 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5273 ms  0x1145 ret:0x0
           /* TID 0x10b8 */
  5274 ms  0x10b8 PR_Close()
  5274 ms  0x10b8 fd:0x7fe0e5a1e310
           /* TID 0x10b0 */
  5329 ms  0x10b0 SSL_ImportFD()
  5329 ms  0x10b0 ret:0x7fe0e5be0820
  5329 ms  0x10b0 SSL_AuthCertificateHook()
  5329 ms  0x10b0 fd:0x7fe0e5be0820
  5329 ms  0x10b0 ret:0x0
  7278 ms  0x10b0 PK11_Encrypt()
  7278 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7280 ms  0x10b0 PR_Connect()
  7280 ms  0x10b0 fd:0x7fe0e5be0820
  7280 ms  0x10b0 PK11_Encrypt()
  7280 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7281 ms  0x10b0 PK11_Encrypt()
  7281 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7281 ms  0x10b0 PK11_Encrypt()
  7281 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7281 ms  0x10b0 PK11_Encrypt()
  7281 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7282 ms  0x10b0 PK11_Encrypt()
  7282 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7286 ms  0x10b0 PK11_Encrypt()
  7286 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7286 ms  0x10b0 PK11_Encrypt()
  7286 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7287 ms  0x10b0 PK11_Encrypt()
  7287 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7287 ms  0x10b0 SSL_AuthCertificateComplete()
  7287 ms  0x10b0 fd:0x7fe0e58b64f0
  7287 ms  0x10b0 err:0x0
  7287 ms     | 0x10b0 PK11_DeriveWithFlags()
  7287 ms     | 0x10b0 basekey:0x7fe0e5853400
  7287 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7287 ms     | 0x10b0 ret:0x7fe0e5852680
  7287 ms     | 0x10b0 PK11_DeriveWithFlags()
  7287 ms     | 0x10b0 basekey:0x7fe0e5853400
  7287 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7287 ms     | 0x10b0 ret:0x7fe0e5853380
  7287 ms     | 0x10b0 PK11_DeriveWithFlags()
  7287 ms     | 0x10b0 basekey:0x7fe0e5853400
  7287 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7287 ms     | 0x10b0 ret:0x7fe0e5779000
  7287 ms     | 0x10b0 PK11_DeriveWithFlags()
  7287 ms     | 0x10b0 basekey:0x7fe0e5852700
  7287 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7287 ms     | 0x10b0 ret:0x7fe0e5779080
  7287 ms     | 0x10b0 PK11_DeriveWithFlags()
  7287 ms     | 0x10b0 basekey:0x7fe0e5852700
  7287 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5779100
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5853380
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5779100
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5853380
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5779180
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5852700
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5853300
  7288 ms     | 0x10b0 PK11_Encrypt()
  7288 ms     | 0x10b0 symkey:0x7fe0e5779080
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5852680
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5853300
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5852680
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7288 ms     | 0x10b0 ret:0x7fe0e5779180
  7288 ms     | 0x10b0 PK11_DeriveWithFlags()
  7288 ms     | 0x10b0 basekey:0x7fe0e5853400
  7288 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7289 ms     | 0x10b0 ret:0x7fe0e5779080
  7289 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  7289 ms     | 0x10b0 privk:0x7fe0e582a020::7fe0e582a020  10 6f b8 e5                                      .o..
  7289 ms     | 0x10b0 privk:0x7fe0e582a020::7fe0e582a020  e5 e5 e5 e5                                      ....
  7289 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  7289 ms     | 0x10b0 privk:0x7fe0e5828020::7fe0e5828020  e0 6c b8 e5                                      .l..
  7289 ms     | 0x10b0 privk:0x7fe0e5828020::7fe0e5828020  e5 e5 e5 e5                                      ....
  7289 ms  0x10b0 SSL_AuthCertificateComplete()
  7289 ms  0x10b0 fd:0x7fe0e58b62e0
  7289 ms  0x10b0 err:0x0
  7289 ms     | 0x10b0 PK11_DeriveWithFlags()
  7289 ms     | 0x10b0 basekey:0x7fe0e5852500
  7289 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7290 ms     | 0x10b0 ret:0x7fe0f86e0b00
  7290 ms     | 0x10b0 PK11_DeriveWithFlags()
  7290 ms     | 0x10b0 basekey:0x7fe0e5852500
  7290 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7290 ms     | 0x10b0 ret:0x7fe0e5852700
  7290 ms     | 0x10b0 PK11_DeriveWithFlags()
  7290 ms     | 0x10b0 basekey:0x7fe0e5852500
  7290 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7290 ms     | 0x10b0 ret:0x7fe0e5853400
  7290 ms     | 0x10b0 PK11_DeriveWithFlags()
  7290 ms     | 0x10b0 basekey:0x7fe0e5852400
  7290 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7290 ms     | 0x10b0 ret:0x7fe0e5779180
  7290 ms     | 0x10b0 PK11_DeriveWithFlags()
  7290 ms     | 0x10b0 basekey:0x7fe0e5852400
  7290 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7293 ms     | 0x10b0 ret:0x7fe0e5779200
  7293 ms     | 0x10b0 PK11_DeriveWithFlags()
  7293 ms     | 0x10b0 basekey:0x7fe0e5852700
  7293 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7293 ms     | 0x10b0 ret:0x7fe0e5779200
  7293 ms     | 0x10b0 PK11_DeriveWithFlags()
  7293 ms     | 0x10b0 basekey:0x7fe0e5852700
  7293 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7293 ms     | 0x10b0 ret:0x7fe0e5779280
  7293 ms     | 0x10b0 PK11_DeriveWithFlags()
  7293 ms     | 0x10b0 basekey:0x7fe0e5852400
  7293 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7293 ms     | 0x10b0 ret:0x7fe0e5852600
  7293 ms     | 0x10b0 PK11_Encrypt()
  7293 ms     | 0x10b0 symkey:0x7fe0e5779180
  7294 ms     | 0x10b0 PK11_DeriveWithFlags()
  7294 ms     | 0x10b0 basekey:0x7fe0f86e0b00
  7294 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7294 ms     | 0x10b0 ret:0x7fe0e5852600
  7294 ms     | 0x10b0 PK11_DeriveWithFlags()
  7294 ms     | 0x10b0 basekey:0x7fe0f86e0b00
  7294 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7294 ms     | 0x10b0 ret:0x7fe0e5779280
  7294 ms     | 0x10b0 PK11_DeriveWithFlags()
  7294 ms     | 0x10b0 basekey:0x7fe0e5852500
  7294 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  7294 ms     | 0x10b0 ret:0x7fe0e5779180
  7294 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  7294 ms     | 0x10b0 privk:0x7fe0e5825820::7fe0e5825820  f0 76 84 e5                                      .v..
  7294 ms     | 0x10b0 privk:0x7fe0e5825820::7fe0e5825820  e5 e5 e5 e5                                      ....
  7294 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  7294 ms     | 0x10b0 privk:0x7fe0e5823820::7fe0e5823820  60 6a b8 e5                                      `j..
  7295 ms     | 0x10b0 privk:0x7fe0e5823820::7fe0e5823820  e5 e5 e5 e5                                      ....
  7295 ms  0x10b0 PK11_Encrypt()
  7295 ms  0x10b0 symkey:0x7fe0e5853300
  7296 ms  0x10b0 PK11_Encrypt()
  7296 ms  0x10b0 symkey:0x7fe0e5853300
  7297 ms  0x10b0 PK11_Encrypt()
  7297 ms  0x10b0 symkey:0x7fe0e5852600
  7297 ms  0x10b0 SSL_ImportFD()
  7297 ms  0x10b0 ret:0x7fe0e58b63d0
  7297 ms  0x10b0 SSL_AuthCertificateHook()
  7297 ms  0x10b0 fd:0x7fe0e58b63d0
  7297 ms  0x10b0 ret:0x0
  7297 ms  0x10b0 PR_Connect()
  7297 ms  0x10b0 fd:0x7fe0e58b63d0
  7298 ms  0x10b0 PK11_Encrypt()
  7298 ms  0x10b0 symkey:0x7fe0e5853300
  7299 ms  0x10b0 PK11_Encrypt()
  7299 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7300 ms  0x10b0 PK11_Encrypt()
  7300 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7300 ms  0x10b0 PK11_Encrypt()
  7300 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7300 ms  0x10b0 SSL_ImportFD()
  7301 ms  0x10b0 ret:0x7fe0e5b0a490
  7301 ms  0x10b0 SSL_AuthCertificateHook()
  7301 ms  0x10b0 fd:0x7fe0e5b0a490
  7301 ms  0x10b0 ret:0x0
  7301 ms  0x10b0 PR_Connect()
  7301 ms  0x10b0 fd:0x7fe0e5b0a490
  7301 ms  0x10b0 PK11_Encrypt()
  7301 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7306 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7306 ms  0x10b0 cx:0x7fe0e5efa128
  7308 ms     | 0x10b0 EC_ValidatePublicKey()
  7308 ms     | 0x10b0 ret:0x0
  7308 ms  0x10b0 ret:0x7fe0e576c820::7fe0e576c820  30 b3 ab e5                                      0...
  7308 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7308 ms  0x10b0 cx:0x7fe0e5efa128
  7309 ms     | 0x10b0 EC_ValidatePublicKey()
  7312 ms     | 0x10b0 ret:0x0
  7312 ms  0x10b0 ret:0x7fe0e576e820::7fe0e576e820  30 bd ab e5                                      0...
           /* TID 0x10b8 */
  7313 ms  0x10b8 PR_Close()
  7313 ms  0x10b8 fd:0x7fe0e5a1e820
           /* TID 0x10b0 */
  7326 ms  0x10b0 PK11_DeriveWithFlags()
  7326 ms  0x10b0 basekey:0x7fe0e5779080
  7326 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7326 ms  0x10b0 ret:0x7fe0e5852480
  7326 ms  0x10b0 PK11_DeriveWithFlags()
  7326 ms  0x10b0 basekey:0x7fe0e5779080
  7326 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7326 ms  0x10b0 ret:0x7fe0e5852480
  7326 ms  0x10b0 PK11_Encrypt()
  7326 ms  0x10b0 symkey:0x7fe0e5853300
  7327 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7327 ms  0x10b0 cx:0x7fe0e5efac88
  7340 ms     | 0x10b0 EC_ValidatePublicKey()
  7340 ms     | 0x10b0 ret:0x0
  7340 ms  0x10b0 ret:0x7fe0e5770020::7fe0e5770020  a0 16 af e5                                      ....
  7340 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7340 ms  0x10b0 cx:0x7fe0e5efac88
  7342 ms     | 0x10b0 EC_ValidatePublicKey()
  7345 ms     | 0x10b0 ret:0x0
  7345 ms  0x10b0 ret:0x7fe0e5772020::7fe0e5772020  10 1f af e5                                      ....
           /* TID 0x10b8 */
  7351 ms  0x10b8 PR_Close()
  7351 ms  0x10b8 fd:0x7fe0e5b0a2b0
           /* TID 0x10b0 */
  7355 ms  0x10b0 PK11_DeriveWithFlags()
  7355 ms  0x10b0 basekey:0x7fe0e5779180
  7355 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7355 ms  0x10b0 ret:0x7fe0e5852480
  7355 ms  0x10b0 PK11_DeriveWithFlags()
  7355 ms  0x10b0 basekey:0x7fe0e5779180
  7355 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7355 ms  0x10b0 ret:0x7fe0e5852480
           /* TID 0x1145 */
  7356 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7356 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  7357 ms  SECKEY_ECParamsToKeySize()
  7357 ms  0x10b0 ret:0xff
  7357 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7357 ms  0x10b0 cx:0x7fe0e5efa128
  7357 ms     | 0x10b0 EC_ValidatePublicKey()
  7357 ms     | 0x10b0 ret:0x0
  7357 ms  0x10b0 ret:0x7fe0e5773820::7fe0e5773820  40 7c b4 e5                                      @|..
  7358 ms  0x10b0 PK11_PubDeriveWithKDF()
  7358 ms  0x10b0 seckey:0x7fe0e5773820
  7358 ms     | 0x10b0 EC_ValidatePublicKey()
  7358 ms     | 0x10b0 ret:0x0
  7358 ms  0x10b0 ret:0x7fe0e5852480
  7358 ms  0x10b0 PK11_DeriveWithFlags()
  7358 ms  0x10b0 basekey:0x7fe0e5852480
  7358 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7359 ms  0x10b0 ret:0x7fe0e5852400
  7359 ms  0x10b0 PK11_Derive()
  7359 ms  0x10b0 basekey:0x7fe0e5852400
  7359 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7359 ms  0x10b0 ret:0x7fe0e5852500
  7359 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7359 ms  0x10b0 privk:0x7fe0e5773820::7fe0e5773820  40 7c b4 e5                                      @|..
  7359 ms  0x10b0 privk:0x7fe0e5773820::7fe0e5773820  e5 e5 e5 e5                                      ....
  7359 ms  0x10b0 PK11_Encrypt()
  7359 ms  0x10b0 symkey:0x7fe0e5779b80
  7360 ms  0x10b0 PR_Close()
  7360 ms  0x10b0 fd:0x7fe0e58b62e0
  7360 ms     | 0x10b0 PK11_Encrypt()
  7360 ms     | 0x10b0 symkey:0x7fe0e5852600
  7360 ms  0x10b0 SSL_AuthCertificateComplete()
  7360 ms  0x10b0 fd:0x7fe0e5be0820
  7360 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  7362 ms  0x10b8 PR_Close()
  7362 ms  0x10b8 fd:0x7fe0e571f0a0
           /* TID 0x10b0 */
  7364 ms  0x10b0 PK11_Encrypt()
  7364 ms  0x10b0 symkey:0x7fe0e5779b80
           /* TID 0x10b8 */
  7366 ms  0x10b8 PR_Close()
  7366 ms  0x10b8 fd:0x7fe0e571f0a0
  7369 ms  0x10b8 PR_Close()
  7369 ms  0x10b8 fd:0x7fe0e571f0a0
  7372 ms  0x10b8 PR_Close()
  7372 ms  0x10b8 fd:0x7fe0e571f0a0
  7373 ms  0x10b8 PR_Close()
  7373 ms  0x10b8 fd:0x7fe0e571f0a0
  7374 ms  0x10b8 PR_Close()
  7374 ms  0x10b8 fd:0x7fe0e571f0a0
  7375 ms  0x10b8 PR_Close()
  7375 ms  0x10b8 fd:0x7fe0e571f0a0
           /* TID 0x1108 */
  7377 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7377 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  7377 ms  SECKEY_ECParamsToKeySize()
  7377 ms  0x10b0 ret:0xff
  7377 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7377 ms  0x10b0 cx:0x7fe0e5efac88
  7378 ms     | 0x10b0 EC_ValidatePublicKey()
  7378 ms     | 0x10b0 ret:0x0
  7378 ms  0x10b0 ret:0x7fe0e5765820::7fe0e5765820  e0 72 b4 e5                                      .r..
  7378 ms  0x10b0 PK11_PubDeriveWithKDF()
  7378 ms  0x10b0 seckey:0x7fe0e5765820
  7378 ms     | 0x10b0 EC_ValidatePublicKey()
  7378 ms     | 0x10b0 ret:0x0
  7378 ms  0x10b0 ret:0x7fe0e5853400
  7378 ms  0x10b0 PK11_DeriveWithFlags()
  7378 ms  0x10b0 basekey:0x7fe0e5853400
  7378 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7378 ms  0x10b0 ret:0x7fe0e5852700
  7378 ms  0x10b0 PK11_Derive()
  7378 ms  0x10b0 basekey:0x7fe0e5852700
  7378 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7378 ms  0x10b0 ret:0x7fe0f86e0b00
  7378 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7378 ms  0x10b0 privk:0x7fe0e5765820::7fe0e5765820  e0 72 b4 e5                                      .r..
  7379 ms  0x10b0 privk:0x7fe0e5765820::7fe0e5765820  e5 e5 e5 e5                                      ....
  7379 ms  0x10b0 PK11_Encrypt()
  7379 ms  0x10b0 symkey:0x7fe0e5809180
           /* TID 0x10b8 */
  7379 ms  0x10b8 PR_Close()
  7379 ms  0x10b8 fd:0x7fe0e5be0a00
  7382 ms  0x10b8 PR_Close()
  7382 ms  0x10b8 fd:0x7fe0e5be0a00
  7385 ms  0x10b8 PR_Close()
  7385 ms  0x10b8 fd:0x7fe0e5be0a00
           /* TID 0x10b0 */
  7385 ms  0x10b0 SSL_AuthCertificateComplete()
  7385 ms  0x10b0 fd:0x7fe0e5b0a490
  7385 ms  0x10b0 err:0x0
  7388 ms  0x10b0 PK11_Encrypt()
  7388 ms  0x10b0 symkey:0x7fe0e5809180
  7388 ms  0x10b0 PK11_Encrypt()
  7388 ms  0x10b0 symkey:0x7fe0e5809180
  7388 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7388 ms  0x10b0 privk:0x7fe0e576e820::7fe0e576e820  30 bd ab e5                                      0...
  7388 ms  0x10b0 privk:0x7fe0e576e820::7fe0e576e820  e5 e5 e5 e5                                      ....
  7388 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7388 ms  0x10b0 privk:0x7fe0e576c820::7fe0e576c820  30 b3 ab e5                                      0...
  7388 ms  0x10b0 privk:0x7fe0e576c820::7fe0e576c820  e5 e5 e5 e5                                      ....
  7388 ms  0x10b0 PR_Close()
  7388 ms  0x10b0 fd:0x7fe0e5be0820
  7388 ms     | 0x10b0 PK11_Encrypt()
  7388 ms     | 0x10b0 symkey:0x7fe0e5779b80
           /* TID 0x10b8 */
  7389 ms  0x10b8 PR_Close()
  7389 ms  0x10b8 fd:0x7fe0e571fac0
           /* TID 0x10b0 */
  7398 ms  0x10b0 PK11_Encrypt()
  7398 ms  0x10b0 symkey:0x7fe0e5853300
           /* TID 0x10b8 */
  7399 ms  0x10b8 PR_Close()
  7399 ms  0x10b8 fd:0x7fe0e571f5b0
           /* TID 0x10b0 */
  7404 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7404 ms  0x10b0 privk:0x7fe0e5772020::7fe0e5772020  10 1f af e5                                      ....
  7405 ms  0x10b0 privk:0x7fe0e5772020::7fe0e5772020  e5 e5 e5 e5                                      ....
  7405 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7405 ms  0x10b0 privk:0x7fe0e5770020::7fe0e5770020  a0 16 af e5                                      ....
  7405 ms  0x10b0 privk:0x7fe0e5770020::7fe0e5770020  e5 e5 e5 e5                                      ....
  7429 ms  0x10b0 PK11_Encrypt()
  7429 ms  0x10b0 symkey:0x7fe0e5809180
           /* TID 0x10b8 */
  7431 ms  0x10b8 PR_Close()
  7431 ms  0x10b8 fd:0x7fe0e571fac0
  7435 ms  0x10b8 PR_Close()
  7435 ms  0x10b8 fd:0x7fe0e571fac0
           /* TID 0x10b0 */
  7462 ms  0x10b0 PK11_Encrypt()
  7462 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7465 ms  0x10b0 PK11_Encrypt()
  7465 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7466 ms  0x10b0 PK11_Encrypt()
  7466 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7470 ms  0x10b0 PK11_Encrypt()
  7470 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7477 ms  0x10b0 PK11_Encrypt()
  7477 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7488 ms  0x10b0 PK11_Encrypt()
  7488 ms  0x10b0 symkey:0x7fe0e5809180
           /* TID 0x10b8 */
  7489 ms  0x10b8 PR_Close()
  7489 ms  0x10b8 fd:0x7fe0e58b6340
           /* TID 0x10b0 */
  7498 ms  0x10b0 PK11_Encrypt()
  7498 ms  0x10b0 symkey:0x7fe0e5809180
  7501 ms  0x10b0 PK11_Encrypt()
  7501 ms  0x10b0 symkey:0x7fe0e5809180
  7504 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7504 ms  0x10b0 cx:0x7fe0e5efaae8
  7505 ms     | 0x10b0 EC_ValidatePublicKey()
  7505 ms     | 0x10b0 ret:0x0
  7505 ms  0x10b0 ret:0x7fe0e576f020::7fe0e576f020  40 1c af e5                                      @...
  7505 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7505 ms  0x10b0 cx:0x7fe0e5efaae8
  7505 ms     | 0x10b0 EC_ValidatePublicKey()
  7507 ms     | 0x10b0 ret:0x0
  7507 ms  0x10b0 ret:0x7fe0e5771020::7fe0e5771020  c0 1e af e5                                      ....
  7508 ms  0x10b0 PK11_Encrypt()
  7508 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  7517 ms  0x10b8 PR_Close()
  7517 ms  0x10b8 fd:0x7fe0e58b6400
  7517 ms  0x10b8 PR_Close()
  7517 ms  0x10b8 fd:0x7fe0e5b0a9d0
  7517 ms  0x10b8 PR_Close()
  7517 ms  0x10b8 fd:0x7fe0e5be0790
  7517 ms  0x10b8 PR_Close()
  7517 ms  0x10b8 fd:0x7fe0e5be0a90
           /* TID 0x10b0 */
  7537 ms  0x10b0 PK11_Encrypt()
  7537 ms  0x10b0 symkey:0x7fe0e5809180
           /* TID 0x10b8 */
  7542 ms  0x10b8 PR_Close()
  7542 ms  0x10b8 fd:0x7fe0e5b0a790
           /* TID 0x10b0 */
  7547 ms  0x10b0 PK11_Encrypt()
  7547 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7548 ms  0x10b0 PK11_Encrypt()
  7548 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  7574 ms  0x10b8 PR_Close()
  7574 ms  0x10b8 fd:0x7fe0e571f5b0
  7596 ms  0x10b8 PR_Close()
  7596 ms  0x10b8 fd:0x7fe0e5be08b0
  7600 ms  0x10b8 PR_Close()
  7600 ms  0x10b8 fd:0x7fe0e5be0790
           /* TID 0x10b0 */
  7659 ms  0x10b0 SSL_ImportFD()
  7659 ms  0x10b0 ret:0x7fe0e5be0d60
  7659 ms  0x10b0 SSL_AuthCertificateHook()
  7659 ms  0x10b0 fd:0x7fe0e5be0d60
  7659 ms  0x10b0 ret:0x0
  7659 ms  0x10b0 PR_Connect()
  7659 ms  0x10b0 fd:0x7fe0e5be0d60
  7664 ms  0x10b0 PK11_Encrypt()
  7664 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7675 ms  0x10b0 PK11_Encrypt()
  7675 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7684 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7684 ms  0x10b0 cx:0x7fe0e5efa128
  7685 ms     | 0x10b0 EC_ValidatePublicKey()
  7685 ms     | 0x10b0 ret:0x0
  7685 ms  0x10b0 ret:0x7fe0e5822020::7fe0e5822020  40 9c bc e5                                      @...
  7685 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7685 ms  0x10b0 cx:0x7fe0e5efa128
  7685 ms     | 0x10b0 EC_ValidatePublicKey()
  7687 ms     | 0x10b0 ret:0x0
  7687 ms  0x10b0 ret:0x7fe0e5824020::7fe0e5824020  20 9e bc e5                                       ...
           /* TID 0x10b8 */
  7691 ms  0x10b8 PR_Close()
  7691 ms  0x10b8 fd:0x7fe0e5bef100
           /* TID 0x10b0 */
  7716 ms  SECKEY_ECParamsToKeySize()
  7716 ms  0x10b0 ret:0x100
  7716 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7716 ms  0x10b0 cx:0x7fe0e5efaae8
  7716 ms     | 0x10b0 EC_ValidatePublicKey()
  7718 ms     | 0x10b0 ret:0x0
  7718 ms  0x10b0 ret:0x7fe0e5917820::7fe0e5917820  c0 04 bd e5                                      ....
  7718 ms  0x10b0 PK11_PubDeriveWithKDF()
  7718 ms  0x10b0 seckey:0x7fe0e5917820
  7718 ms     | 0x10b0 EC_ValidatePublicKey()
  7719 ms     | 0x10b0 ret:0x0
  7724 ms  0x10b0 ret:0x7fe0e5852500
  7724 ms  0x10b0 PK11_DeriveWithFlags()
  7724 ms  0x10b0 basekey:0x7fe0e5852500
  7724 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7724 ms  0x10b0 ret:0x7fe0e5852400
  7724 ms  0x10b0 PK11_Derive()
  7724 ms  0x10b0 basekey:0x7fe0e5852400
  7724 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7724 ms  0x10b0 ret:0x7fe0e5853400
  7724 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7724 ms  0x10b0 privk:0x7fe0e5917820::7fe0e5917820  c0 04 bd e5                                      ....
  7724 ms  0x10b0 privk:0x7fe0e5917820::7fe0e5917820  e5 e5 e5 e5                                      ....
  7724 ms  0x10b0 PK11_Encrypt()
  7724 ms  0x10b0 symkey:0x7fe0e5779a80
           /* TID 0x10b8 */
  7726 ms  0x10b8 PR_Close()
  7726 ms  0x10b8 fd:0x7fe0e5be0c40
           /* TID 0x10b0 */
  7727 ms  0x10b0 PR_Connect()
  7727 ms  0x10b0 fd:0x7fe0e5e79160
           /* TID 0x1108 */
  7738 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7738 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  7740 ms  SECKEY_ECParamsToKeySize()
  7740 ms  0x10b0 ret:0x100
  7740 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7740 ms  0x10b0 cx:0x7fe0e5efa128
  7740 ms     | 0x10b0 EC_ValidatePublicKey()
  7742 ms     | 0x10b0 ret:0x0
  7742 ms  0x10b0 ret:0x7fe0e5e62820::7fe0e5e62820  00 56 e7 e5                                      .V..
  7742 ms  0x10b0 PK11_PubDeriveWithKDF()
  7742 ms  0x10b0 seckey:0x7fe0e5e62820
  7742 ms     | 0x10b0 EC_ValidatePublicKey()
  7747 ms     | 0x10b0 ret:0x0
  7748 ms  0x10b0 ret:0x7fe0e5852500
  7748 ms  0x10b0 PK11_DeriveWithFlags()
  7748 ms  0x10b0 basekey:0x7fe0e5852500
  7748 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7748 ms  0x10b0 ret:0x7fe0e5779180
  7748 ms  0x10b0 PK11_Derive()
  7748 ms  0x10b0 basekey:0x7fe0e5779180
  7748 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7748 ms  0x10b0 ret:0x7fe0e5779200
  7748 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7748 ms  0x10b0 privk:0x7fe0e5e62820::7fe0e5e62820  00 56 e7 e5                                      .V..
  7748 ms  0x10b0 privk:0x7fe0e5e62820::7fe0e5e62820  e5 e5 e5 e5                                      ....
  7749 ms  0x10b0 PK11_Encrypt()
  7749 ms  0x10b0 symkey:0x7fe0e5e72680
  7749 ms  0x10b0 SSL_AuthCertificateComplete()
  7749 ms  0x10b0 fd:0x7fe0e5be0d60
  7749 ms  0x10b0 err:0x0
  7749 ms  0x10b0 PK11_Encrypt()
  7749 ms  0x10b0 symkey:0x7fe0e5e72680
  7749 ms  0x10b0 PK11_Encrypt()
  7749 ms  0x10b0 symkey:0x7fe0e5e72680
           /* TID 0x10b8 */
  7777 ms  0x10b8 PR_Close()
  7777 ms  0x10b8 fd:0x7fe0e5be08e0
           /* TID 0x10b0 */
  7778 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7778 ms  0x10b0 privk:0x7fe0e5824020::7fe0e5824020  20 9e bc e5                                       ...
  7778 ms  0x10b0 privk:0x7fe0e5824020::7fe0e5824020  e5 e5 e5 e5                                      ....
  7778 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7778 ms  0x10b0 privk:0x7fe0e5822020::7fe0e5822020  40 9c bc e5                                      @...
  7778 ms  0x10b0 privk:0x7fe0e5822020::7fe0e5822020  e5 e5 e5 e5                                      ....
  7778 ms  0x10b0 PK11_Encrypt()
  7778 ms  0x10b0 symkey:0x7fe0e5e72680
  7779 ms  0x10b0 PK11_Encrypt()
  7779 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  7806 ms  0x10b8 PR_Close()
  7806 ms  0x10b8 fd:0x7fe0e5be0940
  7820 ms  0x10b8 PR_Close()
  7820 ms  0x10b8 fd:0x7fe0e5befd60
  7828 ms  0x10b8 PR_Close()
  7828 ms  0x10b8 fd:0x7fe0e5befd60
           /* TID 0x1145 */
  7828 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7828 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  7835 ms  0x10b0 SSL_AuthCertificateComplete()
  7835 ms  0x10b0 fd:0x7fe0e58b63d0
  7835 ms  0x10b0 err:0x0
  7835 ms  0x10b0 PK11_Encrypt()
  7835 ms  0x10b0 symkey:0x7fe0e5779a80
  7835 ms  0x10b0 PK11_Encrypt()
  7835 ms  0x10b0 symkey:0x7fe0e5779a80
  7836 ms  0x10b0 PK11_Encrypt()
  7836 ms  0x10b0 symkey:0x7fe0e5779a80
  7877 ms  0x10b0 SSL_ImportFD()
  7877 ms  0x10b0 ret:0x7fe0e5e79eb0
  7877 ms  0x10b0 SSL_AuthCertificateHook()
  7877 ms  0x10b0 fd:0x7fe0e5e79eb0
  7877 ms  0x10b0 ret:0x0
  7878 ms  0x10b0 PK11_Encrypt()
  7878 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7878 ms  0x10b0 PK11_Encrypt()
  7878 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7878 ms  0x10b0 PK11_Encrypt()
  7878 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7879 ms  0x10b0 PK11_Encrypt()
  7879 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7880 ms  0x10b0 PK11_Encrypt()
  7880 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7880 ms  0x10b0 PK11_Encrypt()
  7880 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7880 ms  0x10b0 PR_Connect()
  7880 ms  0x10b0 fd:0x7fe0e5e79eb0
  7881 ms  0x10b0 SSL_ImportFD()
  7881 ms  0x10b0 ret:0x7fe0e5e79310
  7881 ms  0x10b0 SSL_AuthCertificateHook()
  7881 ms  0x10b0 fd:0x7fe0e5e79310
  7881 ms  0x10b0 ret:0x0
  7881 ms  0x10b0 PR_Connect()
  7881 ms  0x10b0 fd:0x7fe0e5e79310
  7881 ms  0x10b0 SSL_ImportFD()
  7881 ms  0x10b0 ret:0x7fe0e5e796a0
  7881 ms  0x10b0 SSL_AuthCertificateHook()
  7881 ms  0x10b0 fd:0x7fe0e5e796a0
  7881 ms  0x10b0 ret:0x0
  7881 ms  0x10b0 PR_Connect()
  7881 ms  0x10b0 fd:0x7fe0e5e796a0
  7881 ms  0x10b0 SSL_ImportFD()
  7881 ms  0x10b0 ret:0x7fe0e5e79730
  7881 ms  0x10b0 SSL_AuthCertificateHook()
  7881 ms  0x10b0 fd:0x7fe0e5e79730
  7881 ms  0x10b0 ret:0x0
  7881 ms  0x10b0 PR_Connect()
  7881 ms  0x10b0 fd:0x7fe0e5e79730
  7881 ms  0x10b0 SSL_ImportFD()
  7881 ms  0x10b0 ret:0x7fe0e5e79940
  7881 ms  0x10b0 SSL_AuthCertificateHook()
  7881 ms  0x10b0 fd:0x7fe0e5e79940
  7881 ms  0x10b0 ret:0x0
  7882 ms  0x10b0 PR_Connect()
  7882 ms  0x10b0 fd:0x7fe0e5e79940
  7882 ms  0x10b0 SSL_ImportFD()
  7882 ms  0x10b0 ret:0x7fe0e5e79c10
  7882 ms  0x10b0 SSL_AuthCertificateHook()
  7882 ms  0x10b0 fd:0x7fe0e5e79c10
  7882 ms  0x10b0 ret:0x0
  7882 ms  0x10b0 PR_Connect()
  7882 ms  0x10b0 fd:0x7fe0e5e79c10
  7882 ms  0x10b0 PK11_Encrypt()
  7882 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7882 ms  0x10b0 PK11_Encrypt()
  7882 ms  0x10b0 symkey:0x7fe0e5ae4c80
  7885 ms  0x10b0 PK11_Encrypt()
  7885 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  7905 ms  0x10b8 PR_Close()
  7905 ms  0x10b8 fd:0x7fe0e5e79070
           /* TID 0x10b0 */
  7906 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7906 ms  0x10b0 cx:0x7fe0e5efb4a8
  7906 ms     | 0x10b0 EC_ValidatePublicKey()
  7906 ms     | 0x10b0 ret:0x0
  7906 ms  0x10b0 ret:0x7fe0f6b4d820::7fe0f6b4d820  80 53 e7 e5                                      .S..
  7906 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7906 ms  0x10b0 cx:0x7fe0e5efb4a8
  7907 ms     | 0x10b0 EC_ValidatePublicKey()
  7909 ms     | 0x10b0 ret:0x0
  7909 ms  0x10b0 ret:0x7fe0f6b50020::7fe0f6b50020  60 55 e7 e5                                      `U..
  7910 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7910 ms  0x10b0 cx:0x7fe0e5efbb28
  7911 ms     | 0x10b0 EC_ValidatePublicKey()
  7911 ms     | 0x10b0 ret:0x0
  7911 ms  0x10b0 ret:0x7fe0f7dd4020::7fe0f7dd4020  f0 56 e7 e5                                      .V..
  7911 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7911 ms  0x10b0 cx:0x7fe0e5efbb28
  7911 ms     | 0x10b0 EC_ValidatePublicKey()
  7913 ms     | 0x10b0 ret:0x0
  7913 ms  0x10b0 ret:0x7fe0f7dde020::7fe0f7dde020  20 59 e7 e5                                       Y..
  7916 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7916 ms  0x10b0 cx:0x7fe0e5efb988
  7916 ms     | 0x10b0 EC_ValidatePublicKey()
  7916 ms     | 0x10b0 ret:0x0
  7916 ms  0x10b0 ret:0x7fe0f8be8020::7fe0f8be8020  60 5a e7 e5                                      `Z..
  7916 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7916 ms  0x10b0 cx:0x7fe0e5efb988
  7917 ms     | 0x10b0 EC_ValidatePublicKey()
  7918 ms     | 0x10b0 ret:0x0
  7918 ms  0x10b0 ret:0x7fe0f8bf5820::7fe0f8bf5820  e0 5c e7 e5                                      .\..
  7924 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7924 ms  0x10b0 cx:0x7fe0e5efb7e8
  7925 ms     | 0x10b0 EC_ValidatePublicKey()
  7925 ms     | 0x10b0 ret:0x0
  7925 ms  0x10b0 ret:0x7fe0fb9ce820::7fe0fb9ce820  60 5f e7 e5                                      `_..
  7925 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7925 ms  0x10b0 cx:0x7fe0e5efb7e8
  7926 ms     | 0x10b0 EC_ValidatePublicKey()
  7927 ms     | 0x10b0 ret:0x0
  7927 ms  0x10b0 ret:0x7fe0fc157820::7fe0fc157820  b0 9f 99 f6                                      ....
  7928 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7928 ms  0x10b0 cx:0x7fe0e5efb648
  7928 ms     | 0x10b0 EC_ValidatePublicKey()
  7928 ms     | 0x10b0 ret:0x0
  7928 ms  0x10b0 ret:0x7fe0fcbd4820::7fe0fcbd4820  a0 21 bd f6                                      .!..
  7928 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7928 ms  0x10b0 cx:0x7fe0e5efb648
  7929 ms     | 0x10b0 EC_ValidatePublicKey()
  7933 ms     | 0x10b0 ret:0x0
  7934 ms  0x10b0 ret:0x7fe0fcf04820::7fe0fcf04820  d0 23 bd f6                                      .#..
  7934 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7934 ms  0x10b0 cx:0x7fe0e5efb308
  7934 ms     | 0x10b0 EC_ValidatePublicKey()
  7934 ms     | 0x10b0 ret:0x0
  7934 ms  0x10b0 ret:0x7fe0fcf0a820::7fe0fcf0a820  60 25 bd f6                                      `%..
  7934 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7934 ms  0x10b0 cx:0x7fe0e5efb308
  7935 ms     | 0x10b0 EC_ValidatePublicKey()
  7939 ms     | 0x10b0 ret:0x0
  7939 ms  0x10b0 ret:0x7fe0fcf0e820::7fe0fcf0e820  40 27 bd f6                                      @'..
           /* TID 0x10b8 */
  7942 ms  0x10b8 PR_Close()
  7942 ms  0x10b8 fd:0x7fe0e5e797f0
  7945 ms  0x10b8 PR_Close()
  7945 ms  0x10b8 fd:0x7fe0e5b0a460
           /* TID 0x10b0 */
  7945 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7945 ms  0x10b0 privk:0x7fe0e5771020::7fe0e5771020  c0 1e af e5                                      ....
  7945 ms  0x10b0 privk:0x7fe0e5771020::7fe0e5771020  e5 e5 e5 e5                                      ....
  7945 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7945 ms  0x10b0 privk:0x7fe0e576f020::7fe0e576f020  40 1c af e5                                      @...
  7945 ms  0x10b0 privk:0x7fe0e576f020::7fe0e576f020  e5 e5 e5 e5                                      ....
  7946 ms  0x10b0 PK11_Encrypt()
  7946 ms  0x10b0 symkey:0x7fe0e5779a80
           /* TID 0x1108 */
  7946 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7946 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  7947 ms  SECKEY_ECParamsToKeySize()
  7947 ms  0x10b0 ret:0xff
  7947 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7947 ms  0x10b0 cx:0x7fe0e5efb4a8
  7947 ms     | 0x10b0 EC_ValidatePublicKey()
  7947 ms     | 0x10b0 ret:0x0
  7947 ms  0x10b0 ret:0x7fe0e576f020::7fe0e576f020  40 1c af e5                                      @...
  7947 ms  0x10b0 PK11_PubDeriveWithKDF()
  7947 ms  0x10b0 seckey:0x7fe0e576f020
  7947 ms     | 0x10b0 EC_ValidatePublicKey()
  7947 ms     | 0x10b0 ret:0x0
  7948 ms  0x10b0 ret:0x7fe0e5852500
  7948 ms  0x10b0 PK11_DeriveWithFlags()
  7948 ms  0x10b0 basekey:0x7fe0e5852500
  7948 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7948 ms  0x10b0 ret:0x7fe0e5852600
  7948 ms  0x10b0 PK11_Derive()
  7948 ms  0x10b0 basekey:0x7fe0e5852600
  7948 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7948 ms  0x10b0 ret:0x7fe0e5852480
  7948 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7948 ms  0x10b0 privk:0x7fe0e576f020::7fe0e576f020  40 1c af e5                                      @...
  7948 ms  0x10b0 privk:0x7fe0e576f020::7fe0e576f020  e5 e5 e5 e5                                      ....
  7948 ms  0x10b0 PK11_Encrypt()
  7948 ms  0x10b0 symkey:0x7fe0f6705980
  7955 ms  0x10b0 SSL_AuthCertificateComplete()
  7955 ms  0x10b0 fd:0x7fe0e5e79310
  7955 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  7957 ms  0x10b8 PR_Close()
  7957 ms  0x10b8 fd:0x7fe0e5be0b20
           /* TID 0x10b0 */
  7958 ms  0x10b0 SSL_ImportFD()
  7958 ms  0x10b0 ret:0x7fe0e5e797f0
  7958 ms  0x10b0 SSL_AuthCertificateHook()
  7958 ms  0x10b0 fd:0x7fe0e5e797f0
  7958 ms  0x10b0 ret:0x0
  7958 ms  0x10b0 PK11_Encrypt()
  7958 ms  0x10b0 symkey:0x7fe0e5e72680
  7966 ms  0x10b0 PR_Connect()
  7966 ms  0x10b0 fd:0x7fe0e5e797f0
           /* TID 0x10b8 */
  7967 ms  0x10b8 PR_Close()
  7967 ms  0x10b8 fd:0x7fe0e5be0250
  7968 ms  0x10b8 PR_Close()
  7968 ms  0x10b8 fd:0x7fe0e5be0250
  7969 ms  0x10b8 PR_Close()
  7969 ms  0x10b8 fd:0x7fe0e5be0250
  7969 ms  0x10b8 PR_Close()
  7969 ms  0x10b8 fd:0x7fe0e5be0250
  7970 ms  0x10b8 PR_Close()
  7970 ms  0x10b8 fd:0x7fe0e5be0250
  7970 ms  0x10b8 PR_Close()
  7970 ms  0x10b8 fd:0x7fe0e5be0250
           /* TID 0x1145 */
  7971 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7971 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  7971 ms  SECKEY_ECParamsToKeySize()
  7971 ms  0x10b0 ret:0xff
  7971 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7971 ms  0x10b0 cx:0x7fe0e5efbb28
  7972 ms     | 0x10b0 EC_ValidatePublicKey()
  7972 ms     | 0x10b0 ret:0x0
  7972 ms  0x10b0 ret:0x7fe0e5770820::7fe0e5770820  80 1d af e5                                      ....
  7972 ms  0x10b0 PK11_PubDeriveWithKDF()
  7972 ms  0x10b0 seckey:0x7fe0e5770820
  7972 ms     | 0x10b0 EC_ValidatePublicKey()
  7972 ms     | 0x10b0 ret:0x0
  7972 ms  0x10b0 ret:0x7fe0e5852500
  7972 ms  0x10b0 PK11_DeriveWithFlags()
  7972 ms  0x10b0 basekey:0x7fe0e5852500
  7972 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7972 ms  0x10b0 ret:0x7fe0e5779280
  7972 ms  0x10b0 PK11_Derive()
  7972 ms  0x10b0 basekey:0x7fe0e5779280
  7972 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7972 ms  0x10b0 ret:0x7fe0e5e7e800
  7972 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7972 ms  0x10b0 privk:0x7fe0e5770820::7fe0e5770820  80 1d af e5                                      ....
  7972 ms  0x10b0 privk:0x7fe0e5770820::7fe0e5770820  e5 e5 e5 e5                                      ....
  7972 ms  0x10b0 PK11_Encrypt()
  7972 ms  0x10b0 symkey:0x7fe0f6704500
           /* TID 0x1108 */
  7973 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7974 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  7974 ms  SECKEY_ECParamsToKeySize()
  7974 ms  0x10b0 ret:0xff
  7974 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7974 ms  0x10b0 cx:0x7fe0e5efb988
  7974 ms     | 0x10b0 EC_ValidatePublicKey()
  7974 ms     | 0x10b0 ret:0x0
  7974 ms  0x10b0 ret:0x7fe0e5e5c020::7fe0e5e5c020  70 1e af e5                                      p...
  7974 ms  0x10b0 PK11_PubDeriveWithKDF()
  7974 ms  0x10b0 seckey:0x7fe0e5e5c020
  7974 ms     | 0x10b0 EC_ValidatePublicKey()
  7974 ms     | 0x10b0 ret:0x0
  7975 ms  0x10b0 ret:0x7fe0e5852500
  7975 ms  0x10b0 PK11_DeriveWithFlags()
  7975 ms  0x10b0 basekey:0x7fe0e5852500
  7975 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7975 ms  0x10b0 ret:0x7fe0f6705b00
  7975 ms  0x10b0 PK11_Derive()
  7975 ms  0x10b0 basekey:0x7fe0f6705b00
  7975 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7975 ms  0x10b0 ret:0x7fe0f6705c00
  7975 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7975 ms  0x10b0 privk:0x7fe0e5e5c020::7fe0e5e5c020  70 1e af e5                                      p...
  7975 ms  0x10b0 privk:0x7fe0e5e5c020::7fe0e5e5c020  e5 e5 e5 e5                                      ....
  7975 ms  0x10b0 PK11_Encrypt()
  7975 ms  0x10b0 symkey:0x7fe0f699a080
           /* TID 0x1145 */
  7976 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7976 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  7976 ms  SECKEY_ECParamsToKeySize()
  7976 ms  0x10b0 ret:0xff
  7976 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7976 ms  0x10b0 cx:0x7fe0e5efb7e8
  7976 ms     | 0x10b0 EC_ValidatePublicKey()
  7976 ms     | 0x10b0 ret:0x0
  7976 ms  0x10b0 ret:0x7fe0e5e62020::7fe0e5e62020  40 97 bc e5                                      @...
  7976 ms  0x10b0 PK11_PubDeriveWithKDF()
  7976 ms  0x10b0 seckey:0x7fe0e5e62020
  7977 ms     | 0x10b0 EC_ValidatePublicKey()
  7977 ms     | 0x10b0 ret:0x0
  7977 ms  0x10b0 ret:0x7fe0e5852500
  7977 ms  0x10b0 PK11_DeriveWithFlags()
  7977 ms  0x10b0 basekey:0x7fe0e5852500
  7977 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7977 ms  0x10b0 ret:0x7fe0f6bf6280
  7977 ms  0x10b0 PK11_Derive()
  7977 ms  0x10b0 basekey:0x7fe0f6bf6280
  7977 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7977 ms  0x10b0 ret:0x7fe0f6bf6380
  7977 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7977 ms  0x10b0 privk:0x7fe0e5e62020::7fe0e5e62020  40 97 bc e5                                      @...
  7977 ms  0x10b0 privk:0x7fe0e5e62020::7fe0e5e62020  e5 e5 e5 e5                                      ....
  7977 ms  0x10b0 PK11_Encrypt()
  7977 ms  0x10b0 symkey:0x7fe0f6bf6680
           /* TID 0x1108 */
  7978 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7978 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  7978 ms  SECKEY_ECParamsToKeySize()
  7978 ms  0x10b0 ret:0xff
  7978 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7978 ms  0x10b0 cx:0x7fe0e5efb648
  7979 ms     | 0x10b0 EC_ValidatePublicKey()
  7979 ms     | 0x10b0 ret:0x0
  7979 ms  0x10b0 ret:0x7fe0e5e63020::7fe0e5e63020  40 9c bc e5                                      @...
  7979 ms  0x10b0 PK11_PubDeriveWithKDF()
  7979 ms  0x10b0 seckey:0x7fe0e5e63020
  7979 ms     | 0x10b0 EC_ValidatePublicKey()
  7979 ms     | 0x10b0 ret:0x0
  7979 ms  0x10b0 ret:0x7fe0e5852500
  7979 ms  0x10b0 PK11_DeriveWithFlags()
  7979 ms  0x10b0 basekey:0x7fe0e5852500
  7979 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7979 ms  0x10b0 ret:0x7fe0f6bf6780
  7979 ms  0x10b0 PK11_Derive()
  7979 ms  0x10b0 basekey:0x7fe0f6bf6780
  7979 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7979 ms  0x10b0 ret:0x7fe0f6bf6800
  7979 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7979 ms  0x10b0 privk:0x7fe0e5e63020::7fe0e5e63020  40 9c bc e5                                      @...
  7979 ms  0x10b0 privk:0x7fe0e5e63020::7fe0e5e63020  e5 e5 e5 e5                                      ....
  7980 ms  0x10b0 PK11_Encrypt()
  7980 ms  0x10b0 symkey:0x7fe0f6bf6980
  7980 ms  0x10b0 PK11_Encrypt()
  7980 ms  0x10b0 symkey:0x7fe0f6705980
           /* TID 0x1145 */
  7980 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7980 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  7981 ms  SECKEY_ECParamsToKeySize()
  7981 ms  0x10b0 ret:0xff
  7981 ms  0x10b0 SECKEY_CreateECPrivateKey()
  7981 ms  0x10b0 cx:0x7fe0e5efb308
  7981 ms     | 0x10b0 EC_ValidatePublicKey()
  7981 ms     | 0x10b0 ret:0x0
  7981 ms  0x10b0 ret:0x7fe0f6b51020::7fe0f6b51020  e0 9c bc e5                                      ....
  7981 ms  0x10b0 PK11_PubDeriveWithKDF()
  7981 ms  0x10b0 seckey:0x7fe0f6b51020
  7981 ms     | 0x10b0 EC_ValidatePublicKey()
  7981 ms     | 0x10b0 ret:0x0
  7982 ms  0x10b0 ret:0x7fe0e5852500
  7982 ms  0x10b0 PK11_DeriveWithFlags()
  7982 ms  0x10b0 basekey:0x7fe0e5852500
  7982 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7982 ms  0x10b0 ret:0x7fe0f6bf6b00
  7982 ms  0x10b0 PK11_Derive()
  7982 ms  0x10b0 basekey:0x7fe0f6bf6b00
  7982 ms     | 0x10b0 PK11_DeriveWithTemplate()
  7982 ms  0x10b0 ret:0x7fe0f6bf6b80
  7982 ms  0x10b0 SECKEY_DestroyPrivateKey()
  7982 ms  0x10b0 privk:0x7fe0f6b51020::7fe0f6b51020  e0 9c bc e5                                      ....
  7982 ms  0x10b0 privk:0x7fe0f6b51020::7fe0f6b51020  e5 e5 e5 e5                                      ....
  7982 ms  0x10b0 PK11_Encrypt()
  7982 ms  0x10b0 symkey:0x7fe0f6bf6d00
  7982 ms  0x10b0 SSL_AuthCertificateComplete()
  7982 ms  0x10b0 fd:0x7fe0e5e79c10
  7982 ms  0x10b0 err:0x0
  7989 ms  0x10b0 SSL_AuthCertificateComplete()
  7989 ms  0x10b0 fd:0x7fe0e5e79940
  7989 ms  0x10b0 err:0x0
  7989 ms  0x10b0 SSL_AuthCertificateComplete()
  7989 ms  0x10b0 fd:0x7fe0e5e79730
  7989 ms  0x10b0 err:0x0
  7989 ms  0x10b0 SSL_AuthCertificateComplete()
  7989 ms  0x10b0 fd:0x7fe0e5e796a0
  7989 ms  0x10b0 err:0x0
  7990 ms  0x10b0 SSL_AuthCertificateComplete()
  7990 ms  0x10b0 fd:0x7fe0e5e79eb0
  7990 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  7991 ms  0x10b8 PR_Close()
  7991 ms  0x10b8 fd:0x7fe0e5befb20
           /* TID 0x10b0 */
  7991 ms  0x10b0 PK11_Encrypt()
  7991 ms  0x10b0 symkey:0x7fe0f6704500
  7999 ms  0x10b0 PK11_Encrypt()
  7999 ms  0x10b0 symkey:0x7fe0f699a080
  7999 ms  0x10b0 PK11_Encrypt()
  7999 ms  0x10b0 symkey:0x7fe0f6bf6680
  8000 ms  0x10b0 PK11_Encrypt()
  8000 ms  0x10b0 symkey:0x7fe0f6bf6980
  8000 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8000 ms  0x10b0 privk:0x7fe0f6b50020::7fe0f6b50020  60 55 e7 e5                                      `U..
  8000 ms  0x10b0 privk:0x7fe0f6b50020::7fe0f6b50020  e5 e5 e5 e5                                      ....
  8000 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8000 ms  0x10b0 privk:0x7fe0f6b4d820::7fe0f6b4d820  80 53 e7 e5                                      .S..
  8000 ms  0x10b0 privk:0x7fe0f6b4d820::7fe0f6b4d820  e5 e5 e5 e5                                      ....
  8000 ms  0x10b0 PK11_Encrypt()
  8000 ms  0x10b0 symkey:0x7fe0f6bf6d00
  8000 ms  0x10b0 PR_Close()
  8000 ms  0x10b0 fd:0x7fe0e5e79310
  8000 ms     | 0x10b0 PK11_Encrypt()
  8000 ms     | 0x10b0 symkey:0x7fe0f6705980
  8001 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8001 ms  0x10b0 privk:0x7fe0f7dde020::7fe0f7dde020  20 59 e7 e5                                       Y..
  8001 ms  0x10b0 privk:0x7fe0f7dde020::7fe0f7dde020  e5 e5 e5 e5                                      ....
  8001 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8001 ms  0x10b0 privk:0x7fe0f7dd4020::7fe0f7dd4020  f0 56 e7 e5                                      .V..
  8001 ms  0x10b0 privk:0x7fe0f7dd4020::7fe0f7dd4020  e5 e5 e5 e5                                      ....
  8001 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8001 ms  0x10b0 privk:0x7fe0f8bf5820::7fe0f8bf5820  e0 5c e7 e5                                      .\..
  8002 ms  0x10b0 privk:0x7fe0f8bf5820::7fe0f8bf5820  e5 e5 e5 e5                                      ....
  8002 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8002 ms  0x10b0 privk:0x7fe0f8be8020::7fe0f8be8020  60 5a e7 e5                                      `Z..
  8002 ms  0x10b0 privk:0x7fe0f8be8020::7fe0f8be8020  e5 e5 e5 e5                                      ....
  8002 ms  0x10b0 PR_Close()
  8002 ms  0x10b0 fd:0x7fe0e5e79940
  8002 ms     | 0x10b0 PK11_Encrypt()
  8002 ms     | 0x10b0 symkey:0x7fe0f699a080
  8002 ms  0x10b0 PR_Close()
  8002 ms  0x10b0 fd:0x7fe0e5e79c10
  8002 ms     | 0x10b0 PK11_Encrypt()
  8002 ms     | 0x10b0 symkey:0x7fe0f6704500
  8002 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8002 ms  0x10b0 cx:0x7fe0e5efbe68
  8003 ms     | 0x10b0 EC_ValidatePublicKey()
  8003 ms     | 0x10b0 ret:0x0
  8003 ms  0x10b0 ret:0x7fe0e576e020::7fe0e576e020  70 14 af e5                                      p...
  8003 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8003 ms  0x10b0 cx:0x7fe0e5efbe68
  8004 ms     | 0x10b0 EC_ValidatePublicKey()
  8005 ms     | 0x10b0 ret:0x0
  8005 ms  0x10b0 ret:0x7fe0e5e5e020::7fe0e5e5e020  90 9c bc e5                                      ....
  8005 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8005 ms  0x10b0 privk:0x7fe0fc157820::7fe0fc157820  b0 9f 99 f6                                      ....
  8006 ms  0x10b0 privk:0x7fe0fc157820::7fe0fc157820  e5 e5 e5 e5                                      ....
  8006 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8006 ms  0x10b0 privk:0x7fe0fb9ce820::7fe0fb9ce820  60 5f e7 e5                                      `_..
  8006 ms  0x10b0 privk:0x7fe0fb9ce820::7fe0fb9ce820  e5 e5 e5 e5                                      ....
  8006 ms  0x10b0 PR_Close()
  8006 ms  0x10b0 fd:0x7fe0e5e79730
  8006 ms     | 0x10b0 PK11_Encrypt()
  8006 ms     | 0x10b0 symkey:0x7fe0f6bf6680
  8008 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8008 ms  0x10b0 privk:0x7fe0fcf0e820::7fe0fcf0e820  40 27 bd f6                                      @'..
  8008 ms  0x10b0 privk:0x7fe0fcf0e820::7fe0fcf0e820  e5 e5 e5 e5                                      ....
  8008 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8008 ms  0x10b0 privk:0x7fe0fcf0a820::7fe0fcf0a820  60 25 bd f6                                      `%..
  8008 ms  0x10b0 privk:0x7fe0fcf0a820::7fe0fcf0a820  e5 e5 e5 e5                                      ....
  8008 ms  0x10b0 PR_Close()
  8008 ms  0x10b0 fd:0x7fe0e5e79eb0
  8008 ms     | 0x10b0 PK11_Encrypt()
  8008 ms     | 0x10b0 symkey:0x7fe0f6bf6d00
  8010 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8010 ms  0x10b0 privk:0x7fe0fcf04820::7fe0fcf04820  d0 23 bd f6                                      .#..
  8010 ms  0x10b0 privk:0x7fe0fcf04820::7fe0fcf04820  e5 e5 e5 e5                                      ....
  8010 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8010 ms  0x10b0 privk:0x7fe0fcbd4820::7fe0fcbd4820  a0 21 bd f6                                      .!..
  8010 ms  0x10b0 privk:0x7fe0fcbd4820::7fe0fcbd4820  e5 e5 e5 e5                                      ....
  8010 ms  0x10b0 PR_Close()
  8010 ms  0x10b0 fd:0x7fe0e5e796a0
  8010 ms     | 0x10b0 PK11_Encrypt()
  8010 ms     | 0x10b0 symkey:0x7fe0f6bf6980
  8056 ms  SECKEY_ECParamsToKeySize()
  8056 ms  0x10b0 ret:0x100
  8056 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8056 ms  0x10b0 cx:0x7fe0e5efbe68
  8057 ms     | 0x10b0 EC_ValidatePublicKey()
  8058 ms     | 0x10b0 ret:0x0
  8058 ms  0x10b0 ret:0x7fe0e5e62020::7fe0e5e62020  20 9e bc e5                                       ...
  8058 ms  0x10b0 PK11_PubDeriveWithKDF()
  8058 ms  0x10b0 seckey:0x7fe0e5e62020
  8058 ms     | 0x10b0 EC_ValidatePublicKey()
           /* TID 0x1108 */
  8060 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8060 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  8070 ms     | 0x10b0 ret:0x0
  8071 ms  0x10b0 ret:0x7fe0f6bf6800
  8071 ms  0x10b0 PK11_DeriveWithFlags()
  8071 ms  0x10b0 basekey:0x7fe0f6bf6800
  8071 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8072 ms  0x10b0 ret:0x7fe0f6bf6780
  8072 ms  0x10b0 PK11_Derive()
  8072 ms  0x10b0 basekey:0x7fe0f6bf6780
  8072 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8072 ms  0x10b0 ret:0x7fe0f6bf6b80
  8072 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8072 ms  0x10b0 privk:0x7fe0e5e62020::7fe0e5e62020  20 9e bc e5                                       ...
  8072 ms  0x10b0 privk:0x7fe0e5e62020::7fe0e5e62020  e5 e5 e5 e5                                      ....
  8072 ms  0x10b0 PK11_Encrypt()
  8072 ms  0x10b0 symkey:0x7fe0f6bf6880
  8072 ms  0x10b0 SSL_AuthCertificateComplete()
  8072 ms  0x10b0 fd:0x7fe0e5e797f0
  8072 ms  0x10b0 err:0x0
  8072 ms  0x10b0 PK11_Encrypt()
  8072 ms  0x10b0 symkey:0x7fe0f6bf6880
  8073 ms  0x10b0 SSL_ImportFD()
  8073 ms  0x10b0 ret:0x7fe0e5e79d00
  8073 ms  0x10b0 SSL_AuthCertificateHook()
  8073 ms  0x10b0 fd:0x7fe0e5e79d00
  8073 ms  0x10b0 ret:0x0
  8073 ms  0x10b0 PR_Connect()
  8073 ms  0x10b0 fd:0x7fe0e5e79d00
  8073 ms  0x10b0 SSL_ImportFD()
  8073 ms  0x10b0 ret:0x7fe0e5e79790
  8073 ms  0x10b0 SSL_AuthCertificateHook()
  8073 ms  0x10b0 fd:0x7fe0e5e79790
  8073 ms  0x10b0 ret:0x0
  8073 ms  0x10b0 PR_Connect()
  8073 ms  0x10b0 fd:0x7fe0e5e79790
  8074 ms  0x10b0 SSL_ImportFD()
  8074 ms  0x10b0 ret:0x7fe0e5e79d90
  8074 ms  0x10b0 SSL_AuthCertificateHook()
  8074 ms  0x10b0 fd:0x7fe0e5e79d90
  8074 ms  0x10b0 ret:0x0
  8074 ms  0x10b0 PR_Connect()
  8074 ms  0x10b0 fd:0x7fe0e5e79d90
  8074 ms  0x10b0 SSL_ImportFD()
  8074 ms  0x10b0 ret:0x7fe0e5e79df0
  8074 ms  0x10b0 SSL_AuthCertificateHook()
  8074 ms  0x10b0 fd:0x7fe0e5e79df0
  8074 ms  0x10b0 ret:0x0
  8074 ms  0x10b0 PR_Connect()
  8074 ms  0x10b0 fd:0x7fe0e5e79df0
           /* TID 0x10b8 */
  8091 ms  0x10b8 PR_Close()
  8091 ms  0x10b8 fd:0x7fe0f67063d0
           /* TID 0x10b0 */
  8098 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8098 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  90 9c bc e5                                      ....
  8098 ms  0x10b0 privk:0x7fe0e5e5e020::7fe0e5e5e020  e5 e5 e5 e5                                      ....
  8098 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8098 ms  0x10b0 privk:0x7fe0e576e020::7fe0e576e020  70 14 af e5                                      p...
  8098 ms  0x10b0 privk:0x7fe0e576e020::7fe0e576e020  e5 e5 e5 e5                                      ....
  8099 ms  0x10b0 PR_Close()
  8099 ms  0x10b0 fd:0x7fe0e5e797f0
  8099 ms     | 0x10b0 PK11_Encrypt()
  8099 ms     | 0x10b0 symkey:0x7fe0f6bf6880
  8103 ms  0x10b0 PK11_Encrypt()
  8103 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8105 ms  0x10b0 PK11_Encrypt()
  8105 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8106 ms  0x10b0 PK11_Encrypt()
  8106 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8110 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8110 ms  0x10b0 cx:0x7fe0e5efb988
  8111 ms     | 0x10b0 EC_ValidatePublicKey()
  8111 ms     | 0x10b0 ret:0x0
  8111 ms  0x10b0 ret:0x7fe0e5770820::7fe0e5770820  60 9f bc e5                                      `...
  8111 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8111 ms  0x10b0 cx:0x7fe0e5efb988
  8112 ms     | 0x10b0 EC_ValidatePublicKey()
  8113 ms     | 0x10b0 ret:0x0
  8113 ms  0x10b0 ret:0x7fe0f6b4b020::7fe0f6b4b020  20 54 e7 e5                                       T..
  8113 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8113 ms  0x10b0 cx:0x7fe0e5efb4a8
  8114 ms     | 0x10b0 EC_ValidatePublicKey()
  8114 ms     | 0x10b0 ret:0x0
  8114 ms  0x10b0 ret:0x7fe0f6b4f020::7fe0f6b4f020  50 56 e7 e5                                      PV..
  8114 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8114 ms  0x10b0 cx:0x7fe0e5efb4a8
  8114 ms     | 0x10b0 EC_ValidatePublicKey()
  8119 ms     | 0x10b0 ret:0x0
  8119 ms  0x10b0 ret:0x7fe0f7dd3820::7fe0f7dd3820  90 97 bc e5                                      ....
  8123 ms  0x10b0 PK11_Encrypt()
  8123 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8123 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8123 ms  0x10b0 cx:0x7fe0e5efb648
  8124 ms     | 0x10b0 EC_ValidatePublicKey()
  8124 ms     | 0x10b0 ret:0x0
  8124 ms  0x10b0 ret:0x7fe0f8be5020::7fe0f8be5020  20 59 e7 e5                                       Y..
  8124 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8124 ms  0x10b0 cx:0x7fe0e5efb648
  8124 ms     | 0x10b0 EC_ValidatePublicKey()
  8126 ms     | 0x10b0 ret:0x0
  8126 ms  0x10b0 ret:0x7fe0f8be8020::7fe0f8be8020  00 5b e7 e5                                      .[..
  8129 ms  0x10b0 PK11_Encrypt()
  8129 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8130 ms  0x10b0 PK11_Encrypt()
  8130 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8134 ms  0x10b0 PK11_Encrypt()
  8134 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8139 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8139 ms  0x10b0 cx:0x7fe0e5efb7e8
  8139 ms     | 0x10b0 EC_ValidatePublicKey()
  8139 ms     | 0x10b0 ret:0x0
  8140 ms  0x10b0 ret:0x7fe0fb9d9020::7fe0fb9d9020  90 77 ef e5                                      .w..
  8140 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8140 ms  0x10b0 cx:0x7fe0e5efb7e8
  8140 ms     | 0x10b0 EC_ValidatePublicKey()
  8142 ms     | 0x10b0 ret:0x0
  8142 ms  0x10b0 ret:0x7fe0fcbd3820::7fe0fcbd3820  b0 20 bd f6                                      . ..
           /* TID 0x10b8 */
  8146 ms  0x10b8 PR_Close()
  8146 ms  0x10b8 fd:0x7fe0e5befb20
           /* TID 0x10b0 */
  8147 ms  0x10b0 PK11_Encrypt()
  8147 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8151 ms  0x10b0 PK11_Derive()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b80
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6780
  8151 ms  0x10b0 PK11_PubDeriveWithKDF()
  8151 ms  0x10b0 seckey:0x7fe0e5770820
  8151 ms     | 0x10b0 EC_ValidatePublicKey()
  8151 ms     | 0x10b0 ret:0x0
  8151 ms  0x10b0 ret:0x7fe0f6bf6b80
  8151 ms  SECKEY_ECParamsToKeySize()
  8151 ms  0x10b0 ret:0xff
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6780
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6800
  8151 ms  0x10b0 PK11_Derive()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b80
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6b00
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b00
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6780
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b00
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6b80
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b00
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6800
  8151 ms  0x10b0 PK11_Derive()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6380
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6280
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b80
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6b00
  8151 ms  0x10b0 PK11_DeriveWithFlags()
  8151 ms  0x10b0 basekey:0x7fe0f6bf6b80
  8151 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8151 ms  0x10b0 ret:0x7fe0f6bf6800
  8153 ms  SECKEY_ECParamsToKeySize()
  8153 ms  0x10b0 ret:0x100
  8153 ms  SECKEY_ECParamsToBasePointOrderLen()
  8153 ms  0x10b0 ret:0x100
  8153 ms  SECKEY_ECParamsToBasePointOrderLen()
  8153 ms  0x10b0 ret:0x100
  8153 ms  0x10b0 EC_ValidatePublicKey()
  8154 ms  0x10b0 ret:0x0
  8161 ms  0x10b0 PK11_DeriveWithFlags()
  8161 ms  0x10b0 basekey:0x7fe0f6bf6b80
  8161 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8161 ms  0x10b0 ret:0x7fe0f6bf6800
  8161 ms  0x10b0 PK11_Encrypt()
  8161 ms  0x10b0 symkey:0x7fe0e5ae4c80
  8165 ms  0x10b0 SSL_ImportFD()
  8166 ms  0x10b0 ret:0x7fe0f6706910
  8166 ms  0x10b0 SSL_AuthCertificateHook()
  8166 ms  0x10b0 fd:0x7fe0f6706910
  8166 ms  0x10b0 ret:0x0
  8166 ms  0x10b0 PR_Connect()
  8166 ms  0x10b0 fd:0x7fe0f6706910
           /* TID 0x10b8 */
  8170 ms  0x10b8 PR_Close()
  8170 ms  0x10b8 fd:0x7fe0e5a1e310
  8170 ms  0x10b8 PR_Close()
  8170 ms  0x10b8 fd:0x7fe0f6706ac0
  8170 ms  0x10b8 PR_Close()
  8170 ms  0x10b8 fd:0x7fe0f6706cd0
  8171 ms  0x10b8 PR_Close()
  8171 ms  0x10b8 fd:0x7fe0e5e79f10
           /* TID 0x10b0 */
  8172 ms  SECKEY_ECParamsToKeySize()
  8172 ms  0x10b0 ret:0x100
  8172 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8172 ms  0x10b0 cx:0x7fe0e5efb648
  8172 ms     | 0x10b0 EC_ValidatePublicKey()
  8174 ms     | 0x10b0 ret:0x0
  8174 ms  0x10b0 ret:0x7fe0fcfdd820::7fe0fcfdd820  a0 2b bd f6                                      .+..
  8174 ms  0x10b0 PK11_PubDeriveWithKDF()
  8174 ms  0x10b0 seckey:0x7fe0fcfdd820
  8174 ms     | 0x10b0 EC_ValidatePublicKey()
  8180 ms     | 0x10b0 ret:0x0
  8187 ms  0x10b0 ret:0x7fe0f6bf6800
  8187 ms  0x10b0 PK11_DeriveWithFlags()
  8187 ms  0x10b0 basekey:0x7fe0f6bf6800
  8187 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8187 ms  0x10b0 ret:0x7fe0f6bf6380
  8187 ms  0x10b0 PK11_Derive()
  8187 ms  0x10b0 basekey:0x7fe0f6bf6380
  8187 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8187 ms  0x10b0 ret:0x7fe0e5e7e800
  8187 ms  0x10b0 SECKEY_DestroyPrivateKey()
  8187 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  a0 2b bd f6                                      .+..
  8187 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  e5 e5 e5 e5                                      ....
  8187 ms  0x10b0 PK11_Encrypt()
  8187 ms  0x10b0 symkey:0x7fe0f6bf6900
  8188 ms  0x10b0 PK11_Encrypt()
  8188 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  8189 ms  0x10b8 PR_Close()
  8189 ms  0x10b8 fd:0x7fe0e5e79970
           /* TID 0x10b0 */
  8189 ms  0x10b0 SSL_ImportFD()
  8189 ms  0x10b0 ret:0x7fe0f67065b0
  8189 ms  0x10b0 SSL_AuthCertificateHook()
  8189 ms  0x10b0 fd:0x7fe0f67065b0
  8189 ms  0x10b0 ret:0x0
  8189 ms  0x10b0 PR_Connect()
  8189 ms  0x10b0 fd:0x7fe0f67065b0
  8189 ms  0x10b0 SSL_ImportFD()
  8190 ms  0x10b0 ret:0x7fe0f6bd8970
  8190 ms  0x10b0 SSL_AuthCertificateHook()
  8190 ms  0x10b0 fd:0x7fe0f6bd8970
  8190 ms  0x10b0 ret:0x0
  8190 ms  0x10b0 PR_Connect()
  8190 ms  0x10b0 fd:0x7fe0f6bd8970
           /* TID 0x10b8 */
  8190 ms  0x10b8 PR_Close()
  8190 ms  0x10b8 fd:0x7fe0e5e79970
           /* TID 0x10b0 */
  8191 ms  0x10b0 PK11_Derive()
  8191 ms  0x10b0 basekey:0x7fe0f6bf6800
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0e5779280
  8191 ms  0x10b0 PK11_PubDeriveWithKDF()
  8191 ms  0x10b0 seckey:0x7fe0f6b4f020
  8191 ms     | 0x10b0 EC_ValidatePublicKey()
  8191 ms     | 0x10b0 ret:0x0
  8191 ms  0x10b0 ret:0x7fe0f6bf6800
  8191 ms  SECKEY_ECParamsToKeySize()
  8191 ms  0x10b0 ret:0xff
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0e5779280
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6705c00
  8191 ms  0x10b0 PK11_Derive()
  8191 ms  0x10b0 basekey:0x7fe0f6bf6800
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6705b00
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0f6705b00
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0e5779280
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0f6705b00
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6bf6800
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0f6705b00
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6705c00
  8191 ms  0x10b0 PK11_Derive()
  8191 ms  0x10b0 basekey:0x7fe0e5852480
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0e5852600
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0f6bf6800
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6705b00
  8191 ms  0x10b0 PK11_DeriveWithFlags()
  8191 ms  0x10b0 basekey:0x7fe0f6bf6800
  8191 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8191 ms  0x10b0 ret:0x7fe0f6705c00
  8195 ms  0x10b0 PK11_DeriveWithFlags()
  8195 ms  0x10b0 basekey:0x7fe0f6bf6800
  8195 ms     | 0x10b0 PK11_DeriveWithTemplate()
  8195 ms  0x10b0 ret:0x7fe0f6705c00
  8195 ms  0x10b0 PR_Connect()
  8195 ms  0x10b0 fd:0x7fe0f6bd8c70
  8195 ms  0x10b0 PK11_Encrypt()
  8195 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  8196 ms  0x10b8 PR_Close()
  8196 ms  0x10b8 fd:0x7fe0e5e79c40
  8197 ms  0x10b8 PR_Close()
  8197 ms  0x10b8 fd:0x7fe0e5e797f0
           /* TID 0x1145 */
  8197 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8197 ms  0x1145 ret:0x0
           /* TID 0x10b8 */
  8199 ms  0x10b8 PR_Close()
  8199 ms  0x10b8 fd:0x7fe0e5e79c40
           /* TID 0x10b0 */
  8202 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8202 ms  0x10b0 cx:0x7fe0e5efbe68
  8203 ms     | 0x10b0 EC_ValidatePublicKey()
  8203 ms     | 0x10b0 ret:0x0
  8203 ms  0x10b0 ret:0x7fe0fcfdd820::7fe0fcfdd820  20 24 bd f6                                       $..
  8204 ms  0x10b0 SECKEY_CreateECPrivateKey()
  8204 ms  0x10b0 cx:0x7fe0e5efbe68
  8204 ms     | 0x10b0 EC_ValidatePublicKey()
  8206 ms     | 0x10b0 ret:0x0
  8206 ms  0x10b0 ret:0x7fe0fcfe6020::7fe0fcfe6020  00 2b bd f6                                      .+..
  8208 ms  0x10b0 PK11_Encrypt()
  8208 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9203 ms  SECKEY_ECParamsToKeySize()
  9203 ms  0x10b0 ret:0x100
  9203 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9203 ms  0x10b0 cx:0x7fe0e5efb7e8
  9204 ms     | 0x10b0 EC_ValidatePublicKey()
  9208 ms     | 0x10b0 ret:0x0
  9208 ms  0x10b0 ret:0x7fe0fd394020::7fe0fd394020  b0 25 d3 f7                                      .%..
  9208 ms  0x10b0 PK11_PubDeriveWithKDF()
  9208 ms  0x10b0 seckey:0x7fe0fd394020
  9208 ms     | 0x10b0 EC_ValidatePublicKey()
           /* TID 0x114a */
  9212 ms  0x114a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9212 ms  0x114a ret:0x0
           /* TID 0x10b0 */
  9220 ms     | 0x10b0 ret:0x0
  9225 ms  0x10b0 ret:0x7fe0f6705c00
  9225 ms  0x10b0 PK11_DeriveWithFlags()
  9225 ms  0x10b0 basekey:0x7fe0f6705c00
  9225 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9226 ms  0x10b0 ret:0x7fe0e5852480
  9226 ms  0x10b0 PK11_Derive()
  9226 ms  0x10b0 basekey:0x7fe0e5852480
  9226 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9228 ms  0x10b0 ret:0x7fe0e5852500
  9228 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9228 ms  0x10b0 privk:0x7fe0fd394020::7fe0fd394020  b0 25 d3 f7                                      .%..
  9228 ms  0x10b0 privk:0x7fe0fd394020::7fe0fd394020  e5 e5 e5 e5                                      ....
  9228 ms  0x10b0 PK11_Encrypt()
  9228 ms  0x10b0 symkey:0x7fe0f6bf6c00
  9229 ms  0x10b0 PK11_Encrypt()
  9229 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9230 ms  0x10b0 PK11_Encrypt()
  9230 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9230 ms  0x10b0 PK11_Encrypt()
  9230 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9231 ms  0x10b0 PK11_Encrypt()
  9231 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9231 ms  0x10b0 PK11_Encrypt()
  9231 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9232 ms  0x10b0 PK11_Encrypt()
  9232 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9232 ms  0x10b0 PK11_Encrypt()
  9232 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9233 ms  0x10b0 PK11_Encrypt()
  9233 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9233 ms  0x10b0 PK11_Encrypt()
  9233 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9234 ms  0x10b0 PK11_Encrypt()
  9234 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9235 ms  0x10b0 PK11_Encrypt()
  9235 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9235 ms  0x10b0 PK11_Encrypt()
  9235 ms  0x10b0 symkey:0x7fe0e5779a80
  9235 ms  0x10b0 PK11_Encrypt()
  9235 ms  0x10b0 symkey:0x7fe0e5779a80
  9236 ms  0x10b0 PK11_Encrypt()
  9236 ms  0x10b0 symkey:0x7fe0e5e72680
  9236 ms  0x10b0 PK11_Encrypt()
  9236 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9237 ms  0x10b0 SSL_AuthCertificateComplete()
  9237 ms  0x10b0 fd:0x7fe0e5e79d00
  9237 ms  0x10b0 err:0x0
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5852600
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6705c00
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5852600
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6bf6600
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5852600
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6bf6700
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5779280
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6bf6480
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5779280
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6bf6680
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0f6bf6600
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6bf6680
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0f6bf6600
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0e5ebca00
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0e5779280
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6705b00
  9237 ms     | 0x10b0 PK11_Encrypt()
  9237 ms     | 0x10b0 symkey:0x7fe0f6bf6480
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0f6705c00
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9237 ms     | 0x10b0 ret:0x7fe0f6705b00
  9237 ms     | 0x10b0 PK11_DeriveWithFlags()
  9237 ms     | 0x10b0 basekey:0x7fe0f6705c00
  9237 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0e5ebca00
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0e5852600
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0f6bf6480
  9238 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9238 ms     | 0x10b0 privk:0x7fe0f7dd3820::7fe0f7dd3820  90 97 bc e5                                      ....
  9238 ms     | 0x10b0 privk:0x7fe0f7dd3820::7fe0f7dd3820  e5 e5 e5 e5                                      ....
  9238 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9238 ms     | 0x10b0 privk:0x7fe0f6b4f020::7fe0f6b4f020  50 56 e7 e5                                      PV..
  9238 ms     | 0x10b0 privk:0x7fe0f6b4f020::7fe0f6b4f020  e5 e5 e5 e5                                      ....
  9238 ms  0x10b0 SSL_AuthCertificateComplete()
  9238 ms  0x10b0 fd:0x7fe0e5e79df0
  9238 ms  0x10b0 err:0x0
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0f6bf6280
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0f6bf6800
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0f6bf6280
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0e5779280
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0f6bf6280
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0e5852600
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0f6bf6780
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0e5ebca00
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0f6bf6780
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0f6704880
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0e5779280
  9238 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9238 ms     | 0x10b0 ret:0x7fe0f6704880
  9238 ms     | 0x10b0 PK11_DeriveWithFlags()
  9238 ms     | 0x10b0 basekey:0x7fe0e5779280
  9239 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9239 ms     | 0x10b0 ret:0x7fe0e5e7ed00
  9239 ms     | 0x10b0 PK11_DeriveWithFlags()
  9239 ms     | 0x10b0 basekey:0x7fe0f6bf6780
  9239 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9239 ms     | 0x10b0 ret:0x7fe0f6bf6b00
  9239 ms     | 0x10b0 PK11_Encrypt()
  9239 ms     | 0x10b0 symkey:0x7fe0e5ebca00
  9239 ms     | 0x10b0 PK11_DeriveWithFlags()
  9239 ms     | 0x10b0 basekey:0x7fe0f6bf6800
  9239 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9239 ms     | 0x10b0 ret:0x7fe0f6bf6b00
  9239 ms     | 0x10b0 PK11_DeriveWithFlags()
  9239 ms     | 0x10b0 basekey:0x7fe0f6bf6800
  9239 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9239 ms     | 0x10b0 ret:0x7fe0e5e7ed00
  9239 ms     | 0x10b0 PK11_DeriveWithFlags()
  9239 ms     | 0x10b0 basekey:0x7fe0f6bf6280
  9239 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
  9239 ms     | 0x10b0 ret:0x7fe0e5ebca00
  9239 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9239 ms     | 0x10b0 privk:0x7fe0f6b4b020::7fe0f6b4b020  20 54 e7 e5                                       T..
  9239 ms     | 0x10b0 privk:0x7fe0f6b4b020::7fe0f6b4b020  e5 e5 e5 e5                                      ....
  9239 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9239 ms     | 0x10b0 privk:0x7fe0e5770820::7fe0e5770820  60 9f bc e5                                      `...
  9239 ms     | 0x10b0 privk:0x7fe0e5770820::7fe0e5770820  e5 e5 e5 e5                                      ....
  9239 ms  0x10b0 SSL_AuthCertificateComplete()
  9239 ms  0x10b0 fd:0x7fe0e5e79d90
  9239 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  9246 ms  0x10b8 PR_Close()
  9246 ms  0x10b8 fd:0x7fe0e5ebb7f0
           /* TID 0x1108 */
  9247 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9247 ms  0x1108 ret:0x0
           /* TID 0x10b8 */
  9248 ms  0x10b8 PR_Close()
  9248 ms  0x10b8 fd:0x7fe0e5ebb7f0
           /* TID 0x10b0 */
  9248 ms  0x10b0 PK11_Encrypt()
  9248 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9252 ms  0x10b0 PK11_Encrypt()
  9252 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9253 ms  0x10b8 PR_Close()
  9253 ms  0x10b8 fd:0x7fe0e5ebb7f0
           /* TID 0x10b0 */
  9254 ms  0x10b0 PK11_Encrypt()
  9254 ms  0x10b0 symkey:0x7fe0f6705b00
  9258 ms  0x10b0 PK11_Encrypt()
  9258 ms  0x10b0 symkey:0x7fe0f6705b00
  9259 ms  0x10b0 PK11_Encrypt()
  9259 ms  0x10b0 symkey:0x7fe0f6bf6b00
  9259 ms  0x10b0 PK11_Encrypt()
  9259 ms  0x10b0 symkey:0x7fe0f6bf6b00
  9260 ms  0x10b0 PK11_Encrypt()
  9260 ms  0x10b0 symkey:0x7fe0f6bf6c00
           /* TID 0x1145 */
  9262 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9262 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  9262 ms  SECKEY_ECParamsToKeySize()
  9262 ms  0x10b0 ret:0x100
  9262 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9262 ms  0x10b0 cx:0x7fe0e5efbe68
  9267 ms     | 0x10b0 EC_ValidatePublicKey()
  9268 ms     | 0x10b0 ret:0x0
  9268 ms  0x10b0 ret:0x7fe0fcfd6820::7fe0fcfd6820  60 55 e7 e5                                      `U..
  9268 ms  0x10b0 PK11_PubDeriveWithKDF()
  9268 ms  0x10b0 seckey:0x7fe0fcfd6820
  9268 ms     | 0x10b0 EC_ValidatePublicKey()
  9270 ms     | 0x10b0 ret:0x0
  9277 ms  0x10b0 ret:0x7fe0f6bf6b80
  9277 ms  0x10b0 PK11_DeriveWithFlags()
  9277 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9277 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9278 ms  0x10b0 ret:0x7fe0f6bf6780
  9278 ms  0x10b0 PK11_Derive()
  9278 ms  0x10b0 basekey:0x7fe0f6bf6780
  9278 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9278 ms  0x10b0 ret:0x7fe0f6bf6280
  9278 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9278 ms  0x10b0 privk:0x7fe0fcfd6820::7fe0fcfd6820  60 55 e7 e5                                      `U..
  9278 ms  0x10b0 privk:0x7fe0fcfd6820::7fe0fcfd6820  e5 e5 e5 e5                                      ....
  9278 ms  0x10b0 PK11_Encrypt()
  9278 ms  0x10b0 symkey:0x7fe0f699a680
  9280 ms  0x10b0 SSL_AuthCertificateComplete()
  9280 ms  0x10b0 fd:0x7fe0e5e79790
  9280 ms  0x10b0 err:0x0
  9280 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9280 ms     | 0x10b0 privk:0x7fe0f8be8020::7fe0f8be8020  00 5b e7 e5                                      .[..
  9281 ms     | 0x10b0 privk:0x7fe0f8be8020::7fe0f8be8020  e5 e5 e5 e5                                      ....
  9281 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9281 ms     | 0x10b0 privk:0x7fe0f8be5020::7fe0f8be5020  20 59 e7 e5                                       Y..
  9281 ms     | 0x10b0 privk:0x7fe0f8be5020::7fe0f8be5020  e5 e5 e5 e5                                      ....
  9281 ms  0x10b0 PK11_DeriveWithFlags()
  9281 ms  0x10b0 basekey:0x7fe0e5ebca00
  9281 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9281 ms  0x10b0 ret:0x7fe0f6bf6b80
  9281 ms  0x10b0 PK11_DeriveWithFlags()
  9281 ms  0x10b0 basekey:0x7fe0f6bf6480
  9281 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9281 ms  0x10b0 ret:0x7fe0f6bf6b80
  9281 ms  0x10b0 PK11_DeriveWithFlags()
  9281 ms  0x10b0 basekey:0x7fe0f6bf6480
  9281 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9281 ms  0x10b0 ret:0x7fe0f6bf6b80
  9281 ms  0x10b0 SSL_AuthCertificateComplete()
  9281 ms  0x10b0 fd:0x7fe0f6706910
  9281 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  9287 ms  0x10b8 PR_Close()
  9287 ms  0x10b8 fd:0x7fe0e5e796a0
  9288 ms  0x10b8 PR_Close()
  9288 ms  0x10b8 fd:0x7fe0e5be09a0
           /* TID 0x10b0 */
  9288 ms  0x10b0 PK11_Encrypt()
  9288 ms  0x10b0 symkey:0x7fe0f6705b00
  9288 ms  0x10b0 PK11_Encrypt()
  9288 ms  0x10b0 symkey:0x7fe0f6bf6b00
  9288 ms  0x10b0 SSL_ImportFD()
  9288 ms  0x10b0 ret:0x7fe0e5e796a0
  9288 ms  0x10b0 SSL_AuthCertificateHook()
  9288 ms  0x10b0 fd:0x7fe0e5e796a0
  9288 ms  0x10b0 ret:0x0
  9288 ms  0x10b0 PR_Connect()
  9288 ms  0x10b0 fd:0x7fe0e5e796a0
  9289 ms  0x10b0 SSL_ImportFD()
  9289 ms  0x10b0 ret:0x7fe0f6be4eb0
  9289 ms  0x10b0 SSL_AuthCertificateHook()
  9289 ms  0x10b0 fd:0x7fe0f6be4eb0
  9289 ms  0x10b0 ret:0x0
  9289 ms  0x10b0 PR_Connect()
  9289 ms  0x10b0 fd:0x7fe0f6be4eb0
  9289 ms  0x10b0 SSL_ImportFD()
  9289 ms  0x10b0 ret:0x7fe0f6bd88b0
  9289 ms  0x10b0 SSL_AuthCertificateHook()
  9289 ms  0x10b0 fd:0x7fe0f6bd88b0
  9289 ms  0x10b0 ret:0x0
  9289 ms  0x10b0 PR_Connect()
  9289 ms  0x10b0 fd:0x7fe0f6bd88b0
  9289 ms  0x10b0 PR_Connect()
  9289 ms  0x10b0 fd:0x7fe0f6bd8df0
  9289 ms  0x10b0 PK11_Encrypt()
  9289 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9289 ms  0x10b0 PK11_Encrypt()
  9289 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9291 ms  0x10b8 PR_Close()
  9291 ms  0x10b8 fd:0x7fe0e5be09a0
           /* TID 0x10b0 */
  9291 ms  0x10b0 PK11_Encrypt()
  9291 ms  0x10b0 symkey:0x7fe0f6bf6900
  9292 ms  0x10b0 PK11_Encrypt()
  9292 ms  0x10b0 symkey:0x7fe0f699a680
  9293 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9293 ms  0x10b0 cx:0x7fe100d168c8
  9293 ms     | 0x10b0 EC_ValidatePublicKey()
  9293 ms     | 0x10b0 ret:0x0
  9293 ms  0x10b0 ret:0x7fe0f7ddc020::7fe0f7ddc020  60 0f bd e5                                      `...
  9293 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9293 ms  0x10b0 cx:0x7fe100d168c8
  9294 ms     | 0x10b0 EC_ValidatePublicKey()
  9301 ms     | 0x10b0 ret:0x0
  9301 ms  0x10b0 ret:0x7fe0f8be6820::7fe0f8be6820  60 55 e7 e5                                      `U..
  9304 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9304 ms  0x10b0 cx:0x7fe100d16728
  9304 ms     | 0x10b0 EC_ValidatePublicKey()
  9304 ms     | 0x10b0 ret:0x0
  9304 ms  0x10b0 ret:0x7fe0fcfd4020::7fe0fcfd4020  f0 56 e7 e5                                      .V..
  9304 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9304 ms  0x10b0 cx:0x7fe100d16728
  9305 ms     | 0x10b0 EC_ValidatePublicKey()
  9306 ms     | 0x10b0 ret:0x0
  9306 ms  0x10b0 ret:0x7fe0fcfe6820::7fe0fcfe6820  70 59 e7 e5                                      pY..
  9307 ms  0x10b0 PK11_Encrypt()
  9307 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9327 ms  0x10b8 PR_Close()
  9327 ms  0x10b8 fd:0x7fe0f6706a60
           /* TID 0x10b0 */
  9327 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9327 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  b0 20 bd f6                                      . ..
  9327 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  e5 e5 e5 e5                                      ....
  9327 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9327 ms  0x10b0 privk:0x7fe0fb9d9020::7fe0fb9d9020  90 77 ef e5                                      .w..
  9327 ms  0x10b0 privk:0x7fe0fb9d9020::7fe0fb9d9020  e5 e5 e5 e5                                      ....
  9330 ms  0x10b0 PK11_Encrypt()
  9330 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9330 ms  0x10b0 PK11_Encrypt()
  9330 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9330 ms  0x10b0 PK11_Encrypt()
  9330 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9331 ms  0x10b8 PR_Close()
  9331 ms  0x10b8 fd:0x7fe0f6706100
  9332 ms  0x10b8 PR_Close()
  9332 ms  0x10b8 fd:0x7fe0f6706100
  9332 ms  0x10b8 PR_Close()
  9332 ms  0x10b8 fd:0x7fe0f6706100
  9333 ms  0x10b8 PR_Close()
  9333 ms  0x10b8 fd:0x7fe0f6706100
  9333 ms  0x10b8 PR_Close()
  9333 ms  0x10b8 fd:0x7fe0f6706100
  9334 ms  0x10b8 PR_Close()
  9334 ms  0x10b8 fd:0x7fe0f6706100
  9334 ms  0x10b8 PR_Close()
  9334 ms  0x10b8 fd:0x7fe0f6706100
  9335 ms  0x10b8 PR_Close()
  9335 ms  0x10b8 fd:0x7fe0f6706100
           /* TID 0x10b0 */
  9336 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9336 ms  0x10b0 privk:0x7fe0fcfe6020::7fe0fcfe6020  00 2b bd f6                                      .+..
  9336 ms  0x10b0 privk:0x7fe0fcfe6020::7fe0fcfe6020  e5 e5 e5 e5                                      ....
  9336 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9336 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  20 24 bd f6                                       $..
  9336 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  e5 e5 e5 e5                                      ....
           /* TID 0x10b8 */
  9337 ms  0x10b8 PR_Close()
  9337 ms  0x10b8 fd:0x7fe0f6706100
  9337 ms  0x10b8 PR_Close()
  9337 ms  0x10b8 fd:0x7fe0f6706100
           /* TID 0x10b0 */
  9338 ms  0x10b0 PK11_Encrypt()
  9338 ms  0x10b0 symkey:0x7fe0f6705b00
  9338 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9338 ms  0x10b0 cx:0x7fe100d17908
  9339 ms     | 0x10b0 EC_ValidatePublicKey()
  9339 ms     | 0x10b0 ret:0x0
  9339 ms  0x10b0 ret:0x7fe0fcbc6820::7fe0fcbc6820  70 34 be f6                                      p4..
  9339 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9339 ms  0x10b0 cx:0x7fe100d17908
  9340 ms     | 0x10b0 EC_ValidatePublicKey()
           /* TID 0x10b8 */
  9340 ms  0x10b8 PR_Close()
  9340 ms  0x10b8 fd:0x7fe0f6706100
  9344 ms  0x10b8 PR_Close()
  9344 ms  0x10b8 fd:0x7fe0e5be06a0
  9346 ms  0x10b8 PR_Close()
  9346 ms  0x10b8 fd:0x7fe0e5be06a0
  9347 ms  0x10b8 PR_Close()
  9347 ms  0x10b8 fd:0x7fe0e5be06a0
  9349 ms  0x10b8 PR_Close()
  9349 ms  0x10b8 fd:0x7fe0f6bd8fa0
           /* TID 0x10b0 */
  9349 ms     | 0x10b0 ret:0x0
  9350 ms  0x10b0 ret:0x7fe0fb9ce820::7fe0fb9ce820  a0 01 bd e5                                      ....
  9354 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9354 ms  0x10b0 cx:0x7fe100d17768
  9355 ms     | 0x10b0 EC_ValidatePublicKey()
  9355 ms     | 0x10b0 ret:0x0
  9355 ms  0x10b0 ret:0x7fe0fcfe5820::7fe0fcfe5820  f0 5b e7 e5                                      .[..
  9355 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9355 ms  0x10b0 cx:0x7fe100d17768
  9355 ms     | 0x10b0 EC_ValidatePublicKey()
  9357 ms     | 0x10b0 ret:0x0
  9357 ms  0x10b0 ret:0x7fe0fd390820::7fe0fd390820  b0 5f e7 e5                                      ._..
  9357 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9357 ms  0x10b0 cx:0x7fe100d16248
  9358 ms     | 0x10b0 EC_ValidatePublicKey()
  9358 ms     | 0x10b0 ret:0x0
  9358 ms  0x10b0 ret:0x7fe0fd396020::7fe0fd396020  60 9f 99 f6                                      `...
  9358 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9358 ms  0x10b0 cx:0x7fe100d16248
  9358 ms     | 0x10b0 EC_ValidatePublicKey()
  9362 ms     | 0x10b0 ret:0x0
  9362 ms  0x10b0 ret:0x7fe0fd398020::7fe0fd398020  d0 28 bd f6                                      .(..
           /* TID 0x10b8 */
  9371 ms  0x10b8 PR_Close()
  9371 ms  0x10b8 fd:0x7fe0f67068e0
  9372 ms  0x10b8 PR_Close()
  9372 ms  0x10b8 fd:0x7fe0f67068e0
  9374 ms  0x10b8 PR_Close()
  9374 ms  0x10b8 fd:0x7fe0e5be0df0
           /* TID 0x10b0 */
  9376 ms  SECKEY_ECParamsToKeySize()
  9376 ms  0x10b0 ret:0x100
  9376 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9376 ms  0x10b0 cx:0x7fe100d168c8
  9377 ms     | 0x10b0 EC_ValidatePublicKey()
  9378 ms     | 0x10b0 ret:0x0
  9378 ms  0x10b0 ret:0x7fe0ffcaf020::7fe0ffcaf020  80 33 be f6                                      .3..
  9378 ms  0x10b0 PK11_PubDeriveWithKDF()
  9378 ms  0x10b0 seckey:0x7fe0ffcaf020
  9378 ms     | 0x10b0 EC_ValidatePublicKey()
  9388 ms     | 0x10b0 ret:0x0
  9398 ms  0x10b0 ret:0x7fe0f6bf6b80
  9398 ms  0x10b0 PK11_DeriveWithFlags()
  9398 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9398 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9398 ms  0x10b0 ret:0x7fe0e5e7ed00
  9398 ms  0x10b0 PK11_Derive()
  9398 ms  0x10b0 basekey:0x7fe0e5e7ed00
  9398 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9398 ms  0x10b0 ret:0x7fe0f699a080
  9398 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9398 ms  0x10b0 privk:0x7fe0ffcaf020::7fe0ffcaf020  80 33 be f6                                      .3..
  9398 ms  0x10b0 privk:0x7fe0ffcaf020::7fe0ffcaf020  e5 e5 e5 e5                                      ....
  9398 ms  0x10b0 PK11_Encrypt()
  9398 ms  0x10b0 symkey:0x7fe0e5853180
           /* TID 0x1108 */
  9405 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9405 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  9405 ms  SECKEY_ECParamsToKeySize()
  9405 ms  0x10b0 ret:0x100
  9405 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9405 ms  0x10b0 cx:0x7fe100d16728
  9405 ms     | 0x10b0 EC_ValidatePublicKey()
  9407 ms     | 0x10b0 ret:0x0
  9407 ms  0x10b0 ret:0x7fe0ffcb0020::7fe0ffcb0020  60 50 bf f6                                      `P..
  9407 ms  0x10b0 PK11_PubDeriveWithKDF()
  9407 ms  0x10b0 seckey:0x7fe0ffcb0020
  9407 ms     | 0x10b0 EC_ValidatePublicKey()
  9408 ms     | 0x10b0 ret:0x0
  9425 ms  0x10b0 ret:0x7fe0f6bf6b80
  9425 ms  0x10b0 PK11_DeriveWithFlags()
  9425 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9425 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9425 ms  0x10b0 ret:0x7fe0f824ec80
  9425 ms  0x10b0 PK11_Derive()
  9425 ms  0x10b0 basekey:0x7fe0f824ec80
  9425 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9425 ms  0x10b0 ret:0x7fe0f82ec400
  9425 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9425 ms  0x10b0 privk:0x7fe0ffcb0020::7fe0ffcb0020  60 50 bf f6                                      `P..
  9426 ms  0x10b0 privk:0x7fe0ffcb0020::7fe0ffcb0020  e5 e5 e5 e5                                      ....
  9426 ms  0x10b0 PK11_Encrypt()
  9426 ms  0x10b0 symkey:0x7fe0f8fcd380
           /* TID 0x10b8 */
  9426 ms  0x10b8 PR_Close()
  9426 ms  0x10b8 fd:0x7fe0f7588f40
  9427 ms  0x10b8 PR_Close()
  9427 ms  0x10b8 fd:0x7fe0f7d4a400
  9427 ms  0x10b8 PR_Close()
  9427 ms  0x10b8 fd:0x7fe0f7d4a820
  9427 ms  0x10b8 PR_Close()
  9427 ms  0x10b8 fd:0x7fe0f7d4a8b0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7588f40
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4a400
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4a820
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4a8b0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4aa30
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4aa90
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4ab50
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4abb0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f7d4ae50
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284070
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284430
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284580
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284640
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284730
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284af0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8284b50
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8baf0a0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f8f3aeb0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d3e040
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d3ed60
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d3ee50
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e220
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e2b0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e520
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e640
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e760
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e8b0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e940
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7e9d0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7ea30
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7ea90
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7eb20
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7ebb0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7ef40
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9d7efd0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba070
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba0d0
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba130
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba190
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba310
  9428 ms  0x10b8 PR_Close()
  9428 ms  0x10b8 fd:0x7fe0f9dba9a0
  9429 ms  0x10b8 PR_Close()
  9429 ms  0x10b8 fd:0x7fe0f9dbaac0
  9429 ms  0x10b8 PR_Close()
  9429 ms  0x10b8 fd:0x7fe0f9dbab20
  9429 ms  0x10b8 PR_Close()
  9429 ms  0x10b8 fd:0x7fe0f9dbac70
  9429 ms  0x10b8 PR_Close()
  9429 ms  0x10b8 fd:0x7fe0f9dbad90
  9429 ms  0x10b8 PR_Close()
  9429 ms  0x10b8 fd:0x7fe0f9dbadf0
           /* TID 0x10b0 */
  9444 ms  0x10b0 SSL_AuthCertificateComplete()
  9444 ms  0x10b0 fd:0x7fe0f67065b0
  9444 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  9450 ms  0x10b8 PR_Close()
  9450 ms  0x10b8 fd:0x7fe0f6fd7e50
  9451 ms  0x10b8 PR_Close()
  9451 ms  0x10b8 fd:0x7fe0f6bd8e50
           /* TID 0x10b0 */
  9451 ms  0x10b0 PK11_Encrypt()
  9451 ms  0x10b0 symkey:0x7fe0f8fcd380
  9452 ms  SECKEY_ECParamsToKeySize()
  9452 ms  0x10b0 ret:0x100
  9452 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9452 ms  0x10b0 cx:0x7fe100d17908
  9453 ms     | 0x10b0 EC_ValidatePublicKey()
  9454 ms     | 0x10b0 ret:0x0
  9454 ms  0x10b0 ret:0x7fe0ffcb4020::7fe0ffcb4020  80 53 bf f6                                      .S..
  9454 ms  0x10b0 PK11_PubDeriveWithKDF()
  9454 ms  0x10b0 seckey:0x7fe0ffcb4020
  9455 ms     | 0x10b0 EC_ValidatePublicKey()
  9456 ms     | 0x10b0 ret:0x0
  9457 ms  0x10b0 ret:0x7fe0f6bf6b80
  9457 ms  0x10b0 PK11_DeriveWithFlags()
  9457 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9457 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9457 ms  0x10b0 ret:0x7fe0f8fbf300
  9457 ms  0x10b0 PK11_Derive()
  9457 ms  0x10b0 basekey:0x7fe0f8fbf300
  9457 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9458 ms  0x10b0 ret:0x7fe0f8fcd800
  9458 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9458 ms  0x10b0 privk:0x7fe0ffcb4020::7fe0ffcb4020  80 53 bf f6                                      .S..
  9458 ms  0x10b0 privk:0x7fe0ffcb4020::7fe0ffcb4020  e5 e5 e5 e5                                      ....
  9458 ms  0x10b0 PK11_Encrypt()
  9458 ms  0x10b0 symkey:0x7fe0f8fcde80
           /* TID 0x1108 */
  9463 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9464 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  9464 ms  SECKEY_ECParamsToKeySize()
  9464 ms  0x10b0 ret:0x100
  9464 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9464 ms  0x10b0 cx:0x7fe100d17768
  9464 ms     | 0x10b0 EC_ValidatePublicKey()
  9470 ms     | 0x10b0 ret:0x0
  9470 ms  0x10b0 ret:0x7fe0ffcb4820::7fe0ffcb4820  70 54 bf f6                                      pT..
  9470 ms  0x10b0 PK11_PubDeriveWithKDF()
  9470 ms  0x10b0 seckey:0x7fe0ffcb4820
  9470 ms     | 0x10b0 EC_ValidatePublicKey()
  9472 ms     | 0x10b0 ret:0x0
  9473 ms  0x10b0 ret:0x7fe0f6bf6b80
  9473 ms  0x10b0 PK11_DeriveWithFlags()
  9473 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9473 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9473 ms  0x10b0 ret:0x7fe0f8269600
  9473 ms  0x10b0 PK11_Derive()
  9473 ms  0x10b0 basekey:0x7fe0f8269600
  9473 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9473 ms  0x10b0 ret:0x7fe0f82a9300
  9473 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9473 ms  0x10b0 privk:0x7fe0ffcb4820::7fe0ffcb4820  70 54 bf f6                                      pT..
  9474 ms  0x10b0 privk:0x7fe0ffcb4820::7fe0ffcb4820  e5 e5 e5 e5                                      ....
  9474 ms  0x10b0 PK11_Encrypt()
  9474 ms  0x10b0 symkey:0x7fe0f8fce480
           /* TID 0x1108 */
  9492 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9492 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  9492 ms  SECKEY_ECParamsToKeySize()
  9492 ms  0x10b0 ret:0x100
  9492 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9492 ms  0x10b0 cx:0x7fe100d16248
  9493 ms     | 0x10b0 EC_ValidatePublicKey()
  9494 ms     | 0x10b0 ret:0x0
  9494 ms  0x10b0 ret:0x7fe0ffcb5020::7fe0ffcb5020  00 21 d3 f7                                      .!..
  9494 ms  0x10b0 PK11_PubDeriveWithKDF()
  9494 ms  0x10b0 seckey:0x7fe0ffcb5020
  9494 ms     | 0x10b0 EC_ValidatePublicKey()
  9496 ms     | 0x10b0 ret:0x0
  9497 ms  0x10b0 ret:0x7fe0f6bf6b80
  9497 ms  0x10b0 PK11_DeriveWithFlags()
  9497 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9497 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9497 ms  0x10b0 ret:0x7fe0f86e0f00
  9497 ms  0x10b0 PK11_Derive()
  9497 ms  0x10b0 basekey:0x7fe0f86e0f00
  9497 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9497 ms  0x10b0 ret:0x7fe0f8bde700
  9497 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9497 ms  0x10b0 privk:0x7fe0ffcb5020::7fe0ffcb5020  00 21 d3 f7                                      .!..
  9497 ms  0x10b0 privk:0x7fe0ffcb5020::7fe0ffcb5020  e5 e5 e5 e5                                      ....
  9498 ms  0x10b0 PK11_Encrypt()
  9498 ms  0x10b0 symkey:0x7fe0f8fce680
  9510 ms  0x10b0 SSL_ImportFD()
  9510 ms  0x10b0 ret:0x7fe0f7588f70
  9510 ms  0x10b0 SSL_AuthCertificateHook()
  9510 ms  0x10b0 fd:0x7fe0f7588f70
  9510 ms  0x10b0 ret:0x0
  9510 ms  0x10b0 PR_Connect()
  9510 ms  0x10b0 fd:0x7fe0f7588f70
  9510 ms  0x10b0 SSL_AuthCertificateComplete()
  9510 ms  0x10b0 fd:0x7fe0f6be4eb0
  9510 ms  0x10b0 err:0x0
  9510 ms  0x10b0 SSL_AuthCertificateComplete()
  9510 ms  0x10b0 fd:0x7fe0e5e796a0
  9510 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  9528 ms  0x10b8 PR_Close()
  9528 ms  0x10b8 fd:0x7fe0f82842e0
           /* TID 0x10b0 */
  9528 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9528 ms  0x10b0 privk:0x7fe0fcfe6820::7fe0fcfe6820  70 59 e7 e5                                      pY..
  9529 ms  0x10b0 privk:0x7fe0fcfe6820::7fe0fcfe6820  e5 e5 e5 e5                                      ....
  9529 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9529 ms  0x10b0 privk:0x7fe0fcfd4020::7fe0fcfd4020  f0 56 e7 e5                                      .V..
  9529 ms  0x10b0 privk:0x7fe0fcfd4020::7fe0fcfd4020  e5 e5 e5 e5                                      ....
  9529 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9529 ms  0x10b0 privk:0x7fe0fd398020::7fe0fd398020  d0 28 bd f6                                      .(..
  9529 ms  0x10b0 privk:0x7fe0fd398020::7fe0fd398020  e5 e5 e5 e5                                      ....
  9529 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9529 ms  0x10b0 privk:0x7fe0fd396020::7fe0fd396020  60 9f 99 f6                                      `...
  9529 ms  0x10b0 privk:0x7fe0fd396020::7fe0fd396020  e5 e5 e5 e5                                      ....
  9535 ms  0x10b0 PK11_Encrypt()
  9535 ms  0x10b0 symkey:0x7fe0f8fce680
  9536 ms  0x10b0 PK11_Encrypt()
  9536 ms  0x10b0 symkey:0x7fe0f8fce680
  9536 ms  0x10b0 PR_Connect()
  9536 ms  0x10b0 fd:0x7fe0f6bd8b80
  9536 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9536 ms  0x10b0 privk:0x7fe0fd390820::7fe0fd390820  b0 5f e7 e5                                      ._..
  9536 ms  0x10b0 privk:0x7fe0fd390820::7fe0fd390820  e5 e5 e5 e5                                      ....
  9536 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9536 ms  0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  f0 5b e7 e5                                      .[..
  9536 ms  0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  e5 e5 e5 e5                                      ....
           /* TID 0x10b8 */
  9549 ms  0x10b8 PR_Close()
  9549 ms  0x10b8 fd:0x7fe0f7503c10
           /* TID 0x10b0 */
  9549 ms  0x10b0 PK11_Encrypt()
  9549 ms  0x10b0 symkey:0x7fe0f8fce680
  9550 ms  0x10b0 PK11_Encrypt()
  9550 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9550 ms  0x10b0 PR_Connect()
  9550 ms  0x10b0 fd:0x7fe0f6fd7fa0
  9550 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9550 ms  0x10b0 cx:0x7fe100d182c8
  9551 ms     | 0x10b0 EC_ValidatePublicKey()
  9551 ms     | 0x10b0 ret:0x0
  9551 ms  0x10b0 ret:0x7fe0fcfd7820::7fe0fcfd7820  a0 56 e7 e5                                      .V..
  9551 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9551 ms  0x10b0 cx:0x7fe100d182c8
  9551 ms     | 0x10b0 EC_ValidatePublicKey()
  9553 ms     | 0x10b0 ret:0x0
  9553 ms  0x10b0 ret:0x7fe0fcfe5820::7fe0fcfe5820  20 59 e7 e5                                       Y..
           /* TID 0x10b8 */
  9559 ms  0x10b8 PR_Close()
  9559 ms  0x10b8 fd:0x7fe0f6be4e50
           /* TID 0x10b0 */
  9578 ms  0x10b0 PK11_Encrypt()
  9578 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9582 ms  0x10b8 PR_Close()
  9582 ms  0x10b8 fd:0x7fe0e5befb80
           /* TID 0x10b0 */
  9585 ms  0x10b0 PK11_Encrypt()
  9585 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9587 ms  0x10b8 PR_Close()
  9587 ms  0x10b8 fd:0x7fe0f6706790
           /* TID 0x10b0 */
  9602 ms  0x10b0 PK11_Encrypt()
  9602 ms  0x10b0 symkey:0x7fe0e5ae4c80
  9604 ms  SECKEY_ECParamsToKeySize()
  9604 ms  0x10b0 ret:0x100
  9604 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9604 ms  0x10b0 cx:0x7fe100d182c8
  9604 ms     | 0x10b0 EC_ValidatePublicKey()
  9606 ms     | 0x10b0 ret:0x0
  9606 ms  0x10b0 ret:0x7fe0ffcb4020::7fe0ffcb4020  40 77 ef e5                                      @w..
  9606 ms  0x10b0 PK11_PubDeriveWithKDF()
  9606 ms  0x10b0 seckey:0x7fe0ffcb4020
  9606 ms     | 0x10b0 EC_ValidatePublicKey()
  9607 ms     | 0x10b0 ret:0x0
  9609 ms  0x10b0 ret:0x7fe0f6bf6b80
  9609 ms  0x10b0 PK11_DeriveWithFlags()
  9609 ms  0x10b0 basekey:0x7fe0f6bf6b80
  9609 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9609 ms  0x10b0 ret:0x7fe0f9d70800
  9609 ms  0x10b0 PK11_Derive()
  9609 ms  0x10b0 basekey:0x7fe0f9d70800
  9609 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9609 ms  0x10b0 ret:0x7fe0f9d70e00
  9609 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9609 ms  0x10b0 privk:0x7fe0ffcb4020::7fe0ffcb4020  40 77 ef e5                                      @w..
  9609 ms  0x10b0 privk:0x7fe0ffcb4020::7fe0ffcb4020  e5 e5 e5 e5                                      ....
  9609 ms  0x10b0 PK11_Encrypt()
  9609 ms  0x10b0 symkey:0x7fe0f9d96200
           /* TID 0x1108 */
  9610 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9610 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  9613 ms  0x10b0 SSL_AuthCertificateComplete()
  9613 ms  0x10b0 fd:0x7fe0f7588f70
  9613 ms  0x10b0 err:0x0
  9617 ms  0x10b0 PK11_Encrypt()
  9617 ms  0x10b0 symkey:0x7fe0f9d96200
  9618 ms  0x10b0 PK11_Encrypt()
  9618 ms  0x10b0 symkey:0x7fe0f9d96200
  9619 ms  0x10b0 PK11_Encrypt()
  9619 ms  0x10b0 symkey:0x7fe0e5ae4c80
           /* TID 0x10b8 */
  9634 ms  0x10b8 PR_Close()
  9634 ms  0x10b8 fd:0x7fe0f7503910
           /* TID 0x1145 */
  9634 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9634 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  9636 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9636 ms  0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  20 59 e7 e5                                       Y..
  9636 ms  0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  e5 e5 e5 e5                                      ....
  9636 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9636 ms  0x10b0 privk:0x7fe0fcfd7820::7fe0fcfd7820  a0 56 e7 e5                                      .V..
  9636 ms  0x10b0 privk:0x7fe0fcfd7820::7fe0fcfd7820  e5 e5 e5 e5                                      ....
  9636 ms  0x10b0 PK11_Encrypt()
  9636 ms  0x10b0 symkey:0x7fe0f9d96200
  9642 ms  0x10b0 SSL_AuthCertificateComplete()
  9642 ms  0x10b0 fd:0x7fe0f6bd88b0
  9642 ms  0x10b0 err:0x0
  9642 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9642 ms     | 0x10b0 privk:0x7fe0fb9ce820::7fe0fb9ce820  a0 01 bd e5                                      ....
  9642 ms     | 0x10b0 privk:0x7fe0fb9ce820::7fe0fb9ce820  e5 e5 e5 e5                                      ....
  9642 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9642 ms     | 0x10b0 privk:0x7fe0fcbc6820::7fe0fcbc6820  70 34 be f6                                      p4..
  9642 ms     | 0x10b0 privk:0x7fe0fcbc6820::7fe0fcbc6820  e5 e5 e5 e5                                      ....
  9642 ms  0x10b0 PK11_Encrypt()
  9642 ms  0x10b0 symkey:0x7fe0f8fcde80
  9643 ms  0x10b0 PK11_Encrypt()
  9643 ms  0x10b0 symkey:0x7fe0f8fcde80
           /* TID 0x10b8 */
  9666 ms  0x10b8 PR_Close()
  9666 ms  0x10b8 fd:0x7fe0e5befe20
  9738 ms  0x10b8 PR_Close()
  9738 ms  0x10b8 fd:0x7fe0f7d4aee0
  9740 ms  0x10b8 PR_Close()
  9740 ms  0x10b8 fd:0x7fe0f8284520
  9741 ms  0x10b8 PR_Close()
  9741 ms  0x10b8 fd:0x7fe0e5befe20
           /* TID 0x10b0 */
  9760 ms  0x10b0 PK11_Encrypt()
  9760 ms  0x10b0 symkey:0x7fe0f6705b00
  9760 ms  0x10b0 PK11_Encrypt()
  9760 ms  0x10b0 symkey:0x7fe0f6bf6b00
  9760 ms  0x10b0 SSL_ImportFD()
  9760 ms  0x10b0 ret:0x7fe0f7d4aac0
  9760 ms  0x10b0 SSL_AuthCertificateHook()
  9760 ms  0x10b0 fd:0x7fe0f7d4aac0
  9760 ms  0x10b0 ret:0x0
  9760 ms  0x10b0 PR_Connect()
  9760 ms  0x10b0 fd:0x7fe0f7d4aac0
           /* TID 0x10b8 */
  9766 ms  0x10b8 PR_Close()
  9766 ms  0x10b8 fd:0x7fe0f6bd8f70
           /* TID 0x114a */
  9767 ms  0x114a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9767 ms  0x114a ret:0x0
           /* TID 0x10b0 */
  9767 ms  0x10b0 SSL_AuthCertificateComplete()
  9767 ms  0x10b0 fd:0x7fe0f6bd8970
  9767 ms  0x10b0 err:0x0
  9767 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9767 ms     | 0x10b0 privk:0x7fe0f8be6820::7fe0f8be6820  60 55 e7 e5                                      `U..
  9767 ms     | 0x10b0 privk:0x7fe0f8be6820::7fe0f8be6820  e5 e5 e5 e5                                      ....
  9767 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
  9767 ms     | 0x10b0 privk:0x7fe0f7ddc020::7fe0f7ddc020  60 0f bd e5                                      `...
  9767 ms     | 0x10b0 privk:0x7fe0f7ddc020::7fe0f7ddc020  e5 e5 e5 e5                                      ....
  9767 ms  0x10b0 PK11_Encrypt()
  9767 ms  0x10b0 symkey:0x7fe0e5853180
  9768 ms  0x10b0 PK11_Encrypt()
  9768 ms  0x10b0 symkey:0x7fe0f6bf6c00
  9768 ms  0x10b0 PK11_Encrypt()
  9768 ms  0x10b0 symkey:0x7fe0f8fcde80
  9769 ms  0x10b0 PR_Close()
  9769 ms  0x10b0 fd:0x7fe0f6bd8970
  9769 ms     | 0x10b0 PK11_Encrypt()
  9769 ms     | 0x10b0 symkey:0x7fe0e5853180
  9786 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9786 ms  0x10b0 cx:0x7fe100d18608
  9786 ms     | 0x10b0 EC_ValidatePublicKey()
  9786 ms     | 0x10b0 ret:0x0
  9786 ms  0x10b0 ret:0x7fe0fcbd3820::7fe0fcbd3820  b0 30 be f6                                      .0..
  9786 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9786 ms  0x10b0 cx:0x7fe100d18608
  9787 ms     | 0x10b0 EC_ValidatePublicKey()
  9788 ms     | 0x10b0 ret:0x0
  9788 ms  0x10b0 ret:0x7fe0fcfdd820::7fe0fcfdd820  70 54 bf f6                                      pT..
  9815 ms  0x10b0 PK11_Encrypt()
  9815 ms  0x10b0 symkey:0x7fe0f6705b00
  9838 ms  SECKEY_ECParamsToKeySize()
  9838 ms  0x10b0 ret:0x100
  9839 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9839 ms  0x10b0 cx:0x7fe100d18608
  9839 ms     | 0x10b0 EC_ValidatePublicKey()
  9841 ms     | 0x10b0 ret:0x0
           /* TID 0x1108 */
  9841 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9841 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
  9842 ms  0x10b0 ret:0x7fe0fd3a6820::7fe0fd3a6820  60 8f 27 f8                                      `.'.
  9842 ms  0x10b0 PK11_PubDeriveWithKDF()
  9842 ms  0x10b0 seckey:0x7fe0fd3a6820
  9842 ms     | 0x10b0 EC_ValidatePublicKey()
  9847 ms     | 0x10b0 ret:0x0
  9848 ms  0x10b0 ret:0x7fe0f699a080
  9849 ms  0x10b0 PK11_DeriveWithFlags()
  9849 ms  0x10b0 basekey:0x7fe0f699a080
  9849 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9849 ms  0x10b0 ret:0x7fe0e5e7ed00
  9849 ms  0x10b0 PK11_Derive()
  9849 ms  0x10b0 basekey:0x7fe0e5e7ed00
  9849 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9849 ms  0x10b0 ret:0x7fe0f6bf6b80
  9849 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9849 ms  0x10b0 privk:0x7fe0fd3a6820::7fe0fd3a6820  60 8f 27 f8                                      `.'.
  9849 ms  0x10b0 privk:0x7fe0fd3a6820::7fe0fd3a6820  e5 e5 e5 e5                                      ....
  9849 ms  0x10b0 PK11_Encrypt()
  9849 ms  0x10b0 symkey:0x7fe0f6705780
  9851 ms  0x10b0 SSL_AuthCertificateComplete()
  9851 ms  0x10b0 fd:0x7fe0f7d4aac0
  9851 ms  0x10b0 err:0x0
           /* TID 0x10b8 */
  9852 ms  0x10b8 PR_Close()
  9852 ms  0x10b8 fd:0x7fe0f6be4e50
           /* TID 0x10b0 */
  9869 ms  0x10b0 PK11_Encrypt()
  9869 ms  0x10b0 symkey:0x7fe0f6705780
  9872 ms  0x10b0 PK11_Encrypt()
  9872 ms  0x10b0 symkey:0x7fe0f6705780
  9873 ms  0x10b0 SSL_ImportFD()
  9873 ms  0x10b0 ret:0x7fe0f7d4aee0
  9873 ms  0x10b0 SSL_AuthCertificateHook()
  9873 ms  0x10b0 fd:0x7fe0f7d4aee0
  9873 ms  0x10b0 ret:0x0
  9873 ms  0x10b0 PR_Connect()
  9873 ms  0x10b0 fd:0x7fe0f7d4aee0
  9874 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9874 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  70 54 bf f6                                      pT..
  9875 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  e5 e5 e5 e5                                      ....
  9875 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9875 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  b0 30 be f6                                      .0..
  9875 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  e5 e5 e5 e5                                      ....
  9875 ms  0x10b0 PK11_Encrypt()
  9875 ms  0x10b0 symkey:0x7fe0f6705780
  9899 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9899 ms  0x10b0 cx:0x7fe100d187a8
  9899 ms     | 0x10b0 EC_ValidatePublicKey()
  9899 ms     | 0x10b0 ret:0x0
  9899 ms  0x10b0 ret:0x7fe0fcbd3820::7fe0fcbd3820  80 53 bf f6                                      .S..
  9899 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9899 ms  0x10b0 cx:0x7fe100d187a8
  9900 ms     | 0x10b0 EC_ValidatePublicKey()
  9901 ms     | 0x10b0 ret:0x0
  9903 ms  0x10b0 ret:0x7fe0fcfdd820::7fe0fcfdd820  60 5f e7 e5                                      `_..
           /* TID 0x10b8 */
  9905 ms  0x10b8 PR_Close()
  9905 ms  0x10b8 fd:0x7fe0f6bd8a90
  9935 ms  0x10b8 PR_Close()
  9935 ms  0x10b8 fd:0x7fe0f7d4aa60
           /* TID 0x10b0 */
  9953 ms  SECKEY_ECParamsToKeySize()
  9953 ms  0x10b0 ret:0x100
  9953 ms  0x10b0 SECKEY_CreateECPrivateKey()
  9953 ms  0x10b0 cx:0x7fe100d187a8
  9954 ms     | 0x10b0 EC_ValidatePublicKey()
  9955 ms     | 0x10b0 ret:0x0
  9955 ms  0x10b0 ret:0x7fe0ffcab020::7fe0ffcab020  60 e0 2e f8                                      `...
  9956 ms  0x10b0 PK11_PubDeriveWithKDF()
  9956 ms  0x10b0 seckey:0x7fe0ffcab020
  9956 ms     | 0x10b0 EC_ValidatePublicKey()
  9957 ms     | 0x10b0 ret:0x0
  9958 ms  0x10b0 ret:0x7fe0f699a080
  9958 ms  0x10b0 PK11_DeriveWithFlags()
  9958 ms  0x10b0 basekey:0x7fe0f699a080
  9958 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9959 ms  0x10b0 ret:0x7fe0f6d6b680
  9959 ms  0x10b0 PK11_Derive()
  9959 ms  0x10b0 basekey:0x7fe0f6d6b680
  9959 ms     | 0x10b0 PK11_DeriveWithTemplate()
  9959 ms  0x10b0 ret:0x7fe0f8bc5e00
  9959 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9959 ms  0x10b0 privk:0x7fe0ffcab020::7fe0ffcab020  60 e0 2e f8                                      `...
  9959 ms  0x10b0 privk:0x7fe0ffcab020::7fe0ffcab020  e5 e5 e5 e5                                      ....
  9959 ms  0x10b0 PK11_Encrypt()
  9959 ms  0x10b0 symkey:0x7fe0f9d70780
           /* TID 0x1145 */
  9960 ms  0x1145 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9960 ms  0x1145 ret:0x0
           /* TID 0x10b0 */
  9972 ms  0x10b0 SSL_AuthCertificateComplete()
  9972 ms  0x10b0 fd:0x7fe0f7d4aee0
  9972 ms  0x10b0 err:0x0
  9972 ms  0x10b0 PK11_Encrypt()
  9972 ms  0x10b0 symkey:0x7fe0f9d70780
  9972 ms  0x10b0 PK11_Encrypt()
  9972 ms  0x10b0 symkey:0x7fe0f9d70780
  9982 ms  0x10b0 PK11_Encrypt()
  9982 ms  0x10b0 symkey:0x7fe0f6bf6b00
  9985 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9985 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  60 5f e7 e5                                      `_..
  9985 ms  0x10b0 privk:0x7fe0fcfdd820::7fe0fcfdd820  e5 e5 e5 e5                                      ....
  9985 ms  0x10b0 SECKEY_DestroyPrivateKey()
  9985 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  80 53 bf f6                                      .S..
  9985 ms  0x10b0 privk:0x7fe0fcbd3820::7fe0fcbd3820  e5 e5 e5 e5                                      ....
  9985 ms  0x10b0 PK11_Encrypt()
  9985 ms  0x10b0 symkey:0x7fe0f9d70780
 10011 ms  0x10b0 PK11_Encrypt()
 10011 ms  0x10b0 symkey:0x7fe0f8fcde80
           /* TID 0x10b8 */
 10020 ms  0x10b8 PR_Close()
 10020 ms  0x10b8 fd:0x7fe0f6bd8a90
 10055 ms  0x10b8 PR_Close()
 10055 ms  0x10b8 fd:0x7fe0f8284580
           /* TID 0x10b0 */
 10122 ms  0x10b0 SSL_ImportFD()
 10122 ms  0x10b0 ret:0x7fe0f9d7e940
 10122 ms  0x10b0 SSL_AuthCertificateHook()
 10122 ms  0x10b0 fd:0x7fe0f9d7e940
 10122 ms  0x10b0 ret:0x0
 10122 ms  0x10b0 PR_Connect()
 10122 ms  0x10b0 fd:0x7fe0f9d7e940
 10122 ms  0x10b0 SSL_ImportFD()
 10122 ms  0x10b0 ret:0x7fe0f6bd8ee0
 10123 ms  0x10b0 SSL_AuthCertificateHook()
 10123 ms  0x10b0 fd:0x7fe0f6bd8ee0
 10123 ms  0x10b0 ret:0x0
 10123 ms  0x10b0 PR_Connect()
 10123 ms  0x10b0 fd:0x7fe0f6bd8ee0
 10159 ms  0x10b0 SECKEY_CreateECPrivateKey()
 10159 ms  0x10b0 cx:0x7fe100d18ae8
 10159 ms     | 0x10b0 EC_ValidatePublicKey()
 10159 ms     | 0x10b0 ret:0x0
 10159 ms  0x10b0 ret:0x7fe0fcfe5820::7fe0fcfe5820  d0 8d 27 f8                                      ..'.
 10160 ms  0x10b0 SECKEY_CreateECPrivateKey()
 10160 ms  0x10b0 cx:0x7fe100d18ae8
 10160 ms     | 0x10b0 EC_ValidatePublicKey()
 10162 ms     | 0x10b0 ret:0x0
 10162 ms  0x10b0 ret:0x7fe0ffcac020::7fe0ffcac020  50 e1 2e f8                                      P...
 10171 ms  0x10b0 SECKEY_CreateECPrivateKey()
 10171 ms  0x10b0 cx:0x7fe100d18c88
 10171 ms     | 0x10b0 EC_ValidatePublicKey()
 10171 ms     | 0x10b0 ret:0x0
 10171 ms  0x10b0 ret:0x7fe0ffcb5820::7fe0ffcb5820  40 e2 2e f8                                      @...
 10171 ms  0x10b0 SECKEY_CreateECPrivateKey()
 10171 ms  0x10b0 cx:0x7fe100d18c88
 10174 ms     | 0x10b0 EC_ValidatePublicKey()
 10175 ms     | 0x10b0 ret:0x0
 10175 ms  0x10b0 ret:0x7fe0ffcb9820::7fe0ffcb9820  00 eb 2e f8                                      ....
 10200 ms  0x10b0 PK11_Derive()
 10200 ms  0x10b0 basekey:0x7fe0f699a080
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f9d96c80
 10200 ms  0x10b0 PK11_PubDeriveWithKDF()
 10200 ms  0x10b0 seckey:0x7fe0fcfe5820
 10200 ms     | 0x10b0 EC_ValidatePublicKey()
 10200 ms     | 0x10b0 ret:0x0
 10200 ms  0x10b0 ret:0x7fe0f699a080
 10200 ms  SECKEY_ECParamsToKeySize()
 10200 ms  0x10b0 ret:0xff
 10200 ms  0x10b0 PK11_DeriveWithFlags()
 10200 ms  0x10b0 basekey:0x7fe0f9d96c80
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f9d97c80
 10200 ms  0x10b0 PK11_Derive()
 10200 ms  0x10b0 basekey:0x7fe0f699a080
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f9d97e00
 10200 ms  0x10b0 PK11_DeriveWithFlags()
 10200 ms  0x10b0 basekey:0x7fe0f9d97e00
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f9d96c80
 10200 ms  0x10b0 PK11_DeriveWithFlags()
 10200 ms  0x10b0 basekey:0x7fe0f9d97e00
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f699a080
 10200 ms  0x10b0 PK11_DeriveWithFlags()
 10200 ms  0x10b0 basekey:0x7fe0f9d97e00
 10200 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10200 ms  0x10b0 ret:0x7fe0f9d97c80
 10200 ms  0x10b0 PK11_Derive()
 10200 ms  0x10b0 basekey:0x7fe0f9db8500
 10201 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10201 ms  0x10b0 ret:0x7fe0f9db8580
 10201 ms  0x10b0 PK11_DeriveWithFlags()
 10201 ms  0x10b0 basekey:0x7fe0f699a080
 10201 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10201 ms  0x10b0 ret:0x7fe0f9d97e00
 10201 ms  0x10b0 PK11_DeriveWithFlags()
 10201 ms  0x10b0 basekey:0x7fe0f699a080
 10201 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10201 ms  0x10b0 ret:0x7fe0f9d97c80
 10201 ms  SECKEY_ECParamsToKeySize()
 10201 ms  0x10b0 ret:0x100
 10201 ms  SECKEY_ECParamsToBasePointOrderLen()
 10201 ms  0x10b0 ret:0x100
 10201 ms  SECKEY_ECParamsToBasePointOrderLen()
 10201 ms  0x10b0 ret:0x100
 10201 ms  0x10b0 EC_ValidatePublicKey()
 10203 ms  0x10b0 ret:0x0
 10205 ms  0x10b0 PK11_DeriveWithFlags()
 10205 ms  0x10b0 basekey:0x7fe0f699a080
 10205 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms  0x10b0 ret:0x7fe0f9d97c80
 10205 ms  0x10b0 SSL_AuthCertificateComplete()
 10205 ms  0x10b0 fd:0x7fe0f9d7e940
 10205 ms  0x10b0 err:0x0
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9db8580
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9d97c80
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9db8580
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8500
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9db8580
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8600
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9d96c80
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8680
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9d96c80
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8700
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9db8500
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8700
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9db8500
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9db8780
 10205 ms     | 0x10b0 PK11_DeriveWithFlags()
 10205 ms     | 0x10b0 basekey:0x7fe0f9d96c80
 10205 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10205 ms     | 0x10b0 ret:0x7fe0f9d97e00
 10205 ms     | 0x10b0 PK11_Encrypt()
 10205 ms     | 0x10b0 symkey:0x7fe0f9db8680
 10207 ms     | 0x10b0 PK11_DeriveWithFlags()
 10207 ms     | 0x10b0 basekey:0x7fe0f9d97c80
 10207 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10207 ms     | 0x10b0 ret:0x7fe0f9d97e00
 10207 ms     | 0x10b0 PK11_DeriveWithFlags()
 10207 ms     | 0x10b0 basekey:0x7fe0f9d97c80
 10207 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10207 ms     | 0x10b0 ret:0x7fe0f9db8780
 10207 ms     | 0x10b0 PK11_DeriveWithFlags()
 10207 ms     | 0x10b0 basekey:0x7fe0f9db8580
 10207 ms     |    | 0x10b0 PK11_DeriveWithTemplate()
 10207 ms     | 0x10b0 ret:0x7fe0f9db8680
 10207 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
 10207 ms     | 0x10b0 privk:0x7fe0ffcac020::7fe0ffcac020  50 e1 2e f8                                      P...
 10207 ms     | 0x10b0 privk:0x7fe0ffcac020::7fe0ffcac020  e5 e5 e5 e5                                      ....
 10207 ms     | 0x10b0 SECKEY_DestroyPrivateKey()
 10207 ms     | 0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  d0 8d 27 f8                                      ..'.
 10208 ms     | 0x10b0 privk:0x7fe0fcfe5820::7fe0fcfe5820  e5 e5 e5 e5                                      ....
 10208 ms  0x10b0 PK11_Encrypt()
 10208 ms  0x10b0 symkey:0x7fe0f9d97e00
 10209 ms  0x10b0 PK11_Encrypt()
 10209 ms  0x10b0 symkey:0x7fe0f9d97e00
           /* TID 0x1108 */
 10225 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10225 ms  0x1108 ret:0x0
 10225 ms  0x1108 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10225 ms  0x1108 ret:0x0
           /* TID 0x10b0 */
 10226 ms  SECKEY_ECParamsToKeySize()
 10226 ms  0x10b0 ret:0x100
 10226 ms  SECKEY_ECParamsToBasePointOrderLen()
 10226 ms  0x10b0 ret:0x100
 10226 ms  SECKEY_ECParamsToBasePointOrderLen()
 10226 ms  0x10b0 ret:0x100
 10226 ms  0x10b0 EC_ValidatePublicKey()
 10230 ms  0x10b0 ret:0x0
 10233 ms  SECKEY_ECParamsToKeySize()
 10233 ms  0x10b0 ret:0x100
 10233 ms  0x10b0 SECKEY_CreateECPrivateKey()
 10233 ms  0x10b0 cx:0x7fe100d18c88
 10234 ms     | 0x10b0 EC_ValidatePublicKey()
 10235 ms     | 0x10b0 ret:0x0
 10235 ms  0x10b0 ret:0x7fe0ffcc3820::7fe0ffcc3820  00 b6 6c f8                                      ..l.
 10235 ms  0x10b0 PK11_PubDeriveWithKDF()
 10235 ms  0x10b0 seckey:0x7fe0ffcc3820
 10235 ms     | 0x10b0 EC_ValidatePublicKey()
 10237 ms     | 0x10b0 ret:0x0
 10238 ms  0x10b0 ret:0x7fe0f699a080
 10238 ms  0x10b0 PK11_DeriveWithFlags()
 10238 ms  0x10b0 basekey:0x7fe0f699a080
 10238 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10238 ms  0x10b0 ret:0x7fe0f9d96c80
 10238 ms  0x10b0 PK11_Derive()
 10238 ms  0x10b0 basekey:0x7fe0f9d96c80
 10238 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10238 ms  0x10b0 ret:0x7fe0f9db8580
 10238 ms  0x10b0 SECKEY_DestroyPrivateKey()
 10238 ms  0x10b0 privk:0x7fe0ffcc3820::7fe0ffcc3820  00 b6 6c f8                                      ..l.
 10238 ms  0x10b0 privk:0x7fe0ffcc3820::7fe0ffcc3820  e5 e5 e5 e5                                      ....
 10238 ms  0x10b0 PK11_Encrypt()
 10238 ms  0x10b0 symkey:0x7fe0f9db8a00
 10240 ms  0x10b0 SSL_AuthCertificateComplete()
 10240 ms  0x10b0 fd:0x7fe0f6bd8ee0
 10240 ms  0x10b0 err:0x0
 10241 ms  0x10b0 PK11_Encrypt()
 10241 ms  0x10b0 symkey:0x7fe0f9db8a00
 10242 ms  0x10b0 PK11_DeriveWithFlags()
 10242 ms  0x10b0 basekey:0x7fe0f9db8680
 10242 ms     | 0x10b0 PK11_DeriveWithTemplate()
 10242 ms  0x10b0 ret:0x7fe0f699a080
 10242 ms  0x10b0 PK11_Encrypt()
 10242 ms  0x10b0 symkey:0x7fe0f9d97e00
           /* TID 0x10b8 */
 10285 ms  0x10b8 PR_Close()
 10285 ms  0x10b8 fd:0x7fe0f7d4ab80
           /* TID 0x10b0 */
 10287 ms  0x10b0 SECKEY_DestroyPrivateKey()
 10287 ms  0x10b0 privk:0x7fe0ffcb9820::7fe0ffcb9820  00 eb 2e f8                                      ....
 10288 ms  0x10b0 privk:0x7fe0ffcb9820::7fe0ffcb9820  e5 e5 e5 e5                                      ....
 10288 ms  0x10b0 SECKEY_DestroyPrivateKey()
 10288 ms  0x10b0 privk:0x7fe0ffcb5820::7fe0ffcb5820  40 e2 2e f8                                      @...
 10288 ms  0x10b0 privk:0x7fe0ffcb5820::7fe0ffcb5820  e5 e5 e5 e5                                      ....
 10383 ms  0x10b0 PK11_Encrypt()
 10383 ms  0x10b0 symkey:0x7fe0f8fce680
           /* TID 0x10b8 */
 10411 ms  0x10b8 PR_Close()
 10411 ms  0x10b8 fd:0x7fe0e58b6c10
 10430 ms  0x10b8 PR_Close()
 10430 ms  0x10b8 fd:0x7fe0e58b6c10
           /* TID 0x10b0 */
 10506 ms  0x10b0 PK11_Encrypt()
 10506 ms  0x10b0 symkey:0x7fe0f9db8a00
 10536 ms  0x10b0 PR_Close()
 10536 ms  0x10b0 fd:0x7fe0f7588eb0
           /* TID 0x10a5 */
 10538 ms  0x10a5 EC_ValidatePublicKey()
 10539 ms  0x10a5 ret:0x0
 10539 ms  0x10a5 EC_ValidatePublicKey()
 10542 ms  0x10a5 ret:0x0
 10542 ms  0x10a5 EC_ValidatePublicKey()
 10544 ms  0x10a5 ret:0x0
 10544 ms  0x10a5 EC_ValidatePublicKey()
 10545 ms  0x10a5 ret:0x0
 10545 ms  0x10a5 EC_ValidatePublicKey()
 10547 ms  0x10a5 ret:0x0
 10547 ms  0x10a5 EC_ValidatePublicKey()
 10548 ms  0x10a5 ret:0x0
 10548 ms  0x10a5 EC_ValidatePublicKey()
 10564 ms  0x10a5 ret:0x0
 10564 ms  0x10a5 EC_ValidatePublicKey()
 10565 ms  0x10a5 ret:0x0
 10566 ms  0x10a5 EC_ValidatePublicKey()
 10567 ms  0x10a5 ret:0x0
 10567 ms  0x10a5 EC_ValidatePublicKey()
 10568 ms  0x10a5 ret:0x0
           /* TID 0x10b0 */
 10569 ms  0x10b0 PK11_Encrypt()
 10569 ms  0x10b0 symkey:0x7fe0f9d97e00
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0f8fce680
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0f6bf6b00
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0f6705b00
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0e5779a80
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0e5ae4c80
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0e5853300
 10571 ms  0x10b0 PK11_Encrypt()
 10571 ms  0x10b0 symkey:0x7fe0f9d96200
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0f6705780
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0f9d70780
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0e5809180
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0e5e72680
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0e5ae5c00
 10572 ms  0x10b0 PK11_Encrypt()
 10572 ms  0x10b0 symkey:0x7fe0f8fcde80
 10572 ms  0x10b0 PR_Close()
 10572 ms  0x10b0 fd:0x7fe0f6bd8ee0
 10572 ms     | 0x10b0 PK11_Encrypt()
 10572 ms     | 0x10b0 symkey:0x7fe0f9db8a00
 10572 ms  0x10b0 PR_Close()
 10572 ms  0x10b0 fd:0x7fe0f6fd7fa0
 10572 ms  0x10b0 PR_Close()
 10572 ms  0x10b0 fd:0x7fe0f6bd8b80
 10572 ms  0x10b0 PR_Close()
 10572 ms  0x10b0 fd:0x7fe0f6be4eb0
 10572 ms     | 0x10b0 PK11_Encrypt()
 10572 ms     | 0x10b0 symkey:0x7fe0f8fce480
 10573 ms  0x10b0 PR_Close()
 10573 ms  0x10b0 fd:0x7fe0f6bd8df0
 10573 ms  0x10b0 PR_Close()
 10573 ms  0x10b0 fd:0x7fe0f6bd8c70
 10573 ms  0x10b0 PR_Close()
 10573 ms  0x10b0 fd:0x7fe0f67065b0
 10573 ms     | 0x10b0 PK11_Encrypt()
 10573 ms     | 0x10b0 symkey:0x7fe0f8fcd380
 10573 ms  0x10b0 PR_Close()
 10573 ms  0x10b0 fd:0x7fe0f6706910
 10573 ms     | 0x10b0 PK11_Encrypt()
 10573 ms     | 0x10b0 symkey:0x7fe0f699a680
 10573 ms  0x10b0 PR_Close()
 10573 ms  0x10b0 fd:0x7fe0e5e79790
 10573 ms     | 0x10b0 PK11_Encrypt()
 10573 ms     | 0x10b0 symkey:0x7fe0f6bf6900
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0e5e79d90
 10574 ms     | 0x10b0 PK11_Encrypt()
 10574 ms     | 0x10b0 symkey:0x7fe0f6bf6c00
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0e5e79160
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0e5ebbf10
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0e5a1e610
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0f6be4ee0
 10574 ms     | 0x10b0 PK11_Encrypt()
 10574 ms     | 0x10b0 symkey:0x7fe0e5eed900
 10574 ms  0x10b0 PR_Close()
 10574 ms  0x10b0 fd:0x7fe0f6be4d90
           /* TID 0x10fc */
 10574 ms  0x10fc PR_Close()
 10574 ms  0x10fc fd:0x7fe0e5a1e310
 10574 ms  0x10fc PR_Close()
 10574 ms  0x10fc fd:0x7fe0e5a1e310
           /* TID 0x10b0 */
 10576 ms  0x10b0 PR_Close()
 10576 ms  0x10b0 fd:0x7fe0f6be42e0
 10576 ms     | 0x10b0 PK11_Encrypt()
 10576 ms     | 0x10b0 symkey:0x7fe0e5eecb80
 10577 ms  0x10b0 PR_Close()
 10577 ms  0x10b0 fd:0x7fe0fcffbb80
 10581 ms  0x10b0 PR_Close()
 10581 ms  0x10b0 fd:0x7fe0f7503b50
 10581 ms     | 0x10b0 PK11_Encrypt()
 10581 ms     | 0x10b0 symkey:0x7fe0f86e0b80
 10581 ms  0x10b0 PR_Close()
 10581 ms  0x10b0 fd:0x7fe0e5be0d60
 10581 ms     | 0x10b0 PK11_Encrypt()
 10581 ms     | 0x10b0 symkey:0x7fe0e5e72680
 10582 ms  0x10b0 PR_Close()
 10582 ms  0x10b0 fd:0x7fe0e58b63d0
 10582 ms     | 0x10b0 PK11_Encrypt()
 10582 ms     | 0x10b0 symkey:0x7fe0e5779a80
 10582 ms  0x10b0 PR_Close()
 10582 ms  0x10b0 fd:0x7fe0f7d4aac0
 10582 ms     | 0x10b0 PK11_Encrypt()
 10582 ms     | 0x10b0 symkey:0x7fe0f6705780
 10582 ms  0x10b0 PR_Close()
 10582 ms  0x10b0 fd:0x7fe0f6bd88b0
 10582 ms     | 0x10b0 PK11_Encrypt()
 10582 ms     | 0x10b0 symkey:0x7fe0f8fcde80
 10584 ms  0x10b0 PR_Close()
 10584 ms  0x10b0 fd:0x7fe0e5b0a490
 10584 ms     | 0x10b0 PK11_Encrypt()
 10584 ms     | 0x10b0 symkey:0x7fe0e5809180
 10584 ms  0x10b0 PR_Close()
 10584 ms  0x10b0 fd:0x7fe0e58b64f0
 10584 ms     | 0x10b0 PK11_Encrypt()
 10584 ms     | 0x10b0 symkey:0x7fe0e5853300
 10584 ms  0x10b0 PR_Close()
 10584 ms  0x10b0 fd:0x7fe0e5a1e400
 10584 ms     | 0x10b0 PK11_Encrypt()
 10584 ms     | 0x10b0 symkey:0x7fe0e5ae5c00
 10585 ms  0x10b0 PR_Close()
 10585 ms  0x10b0 fd:0x7fe0e5ae0760
 10585 ms     | 0x10b0 PK11_Encrypt()
 10585 ms     | 0x10b0 symkey:0x7fe0e5ae4c80
 10585 ms  0x10b0 PR_Close()
 10585 ms  0x10b0 fd:0x7fe0f7588f70
 10585 ms     | 0x10b0 PK11_Encrypt()
 10585 ms     | 0x10b0 symkey:0x7fe0f9d96200
 10585 ms  0x10b0 PR_Close()
 10585 ms  0x10b0 fd:0x7fe0e5e796a0
 10585 ms     | 0x10b0 PK11_Encrypt()
 10585 ms     | 0x10b0 symkey:0x7fe0f8fce680
 10585 ms  0x10b0 PR_Close()
 10585 ms  0x10b0 fd:0x7fe0e5e79df0
 10585 ms     | 0x10b0 PK11_Encrypt()
 10585 ms     | 0x10b0 symkey:0x7fe0f6bf6b00
 10586 ms  0x10b0 PR_Close()
 10586 ms  0x10b0 fd:0x7fe0e5e79d00
 10586 ms     | 0x10b0 PK11_Encrypt()
 10586 ms     | 0x10b0 symkey:0x7fe0f6705b00
 10586 ms  0x10b0 PR_Close()
 10586 ms  0x10b0 fd:0x7fe0f9d7e940
 10586 ms     | 0x10b0 PK11_Encrypt()
 10586 ms     | 0x10b0 symkey:0x7fe0f9d97e00
 10586 ms  0x10b0 PR_Close()
 10586 ms  0x10b0 fd:0x7fe0f7d4aee0
 10586 ms     | 0x10b0 PK11_Encrypt()
 10586 ms     | 0x10b0 symkey:0x7fe0f9d70780
 10590 ms  0x10b0 PR_Connect()
 10590 ms  0x10b0 fd:0x7fe0e58b6610
 10590 ms  0x10b0 PR_Close()
 10590 ms  0x10b0 fd:0x7fe0e58b6610
 10591 ms  0x10b0 PR_Connect()
 10591 ms  0x10b0 fd:0x7fe0e58b6640
 10592 ms  0x10b0 PR_Close()
 10592 ms  0x10b0 fd:0x7fe0e58b6640
 10592 ms  0x10b0 PR_Close()
 10592 ms  0x10b0 fd:0x7fe0e5a1e460
           /* TID 0x10a5 */
 10593 ms  0x10a5 PR_Close()
 10593 ms  0x10a5 fd:0x7fe0f75035e0
 10593 ms  0x10a5 PR_Close()
 10593 ms  0x10a5 fd:0x7fe0e5a1e400
 10594 ms  0x10a5 PR_Close()
 10594 ms  0x10a5 fd:0x7fe0e5a1e490
 10594 ms  0x10a5 PR_Close()
 10594 ms  0x10a5 fd:0x7fe0e5a1e400
 10594 ms  0x10a5 PR_Close()
 10594 ms  0x10a5 fd:0x7fe0e5a1e490
 10594 ms  0x10a5 PR_Close()
 10594 ms  0x10a5 fd:0x7fe0e5a1e400
           /* TID 0x110e */
 10601 ms  0x110e PR_Close()
 10601 ms  0x110e fd:0x7fe0e5a1e400
           /* TID 0x10a5 */
 10628 ms  0x10a5 PR_Close()
 10628 ms  0x10a5 fd:0x7fe0e5a1e490
 10628 ms  0x10a5 PR_Close()
 10628 ms  0x10a5 fd:0x7fe0e5e79a00
 10631 ms  0x10a5 PR_Close()
 10631 ms  0x10a5 fd:0x7fe0e5a1e490
 10631 ms  0x10a5 PR_Close()
 10631 ms  0x10a5 fd:0x7fe0e5e79a00
 10631 ms  0x10a5 PR_Close()
 10631 ms  0x10a5 fd:0x7fe101bc89a0
 10632 ms  0x10a5 PR_Close()
 10632 ms  0x10a5 fd:0x7fe101bc88b0
 10632 ms  0x10a5 PR_Close()
 10632 ms  0x10a5 fd:0x7fe101bc8a60
 10634 ms  0x10a5 PR_Close()
 10634 ms  0x10a5 fd:0x7fe0e5e79a00
 10635 ms  0x10a5 PR_Close()
 10635 ms  0x10a5 fd:0x7fe0e5e79a00
 10637 ms  0x10a5 PR_Close()
 10637 ms  0x10a5 fd:0x7fe0e5a1e490
 10637 ms  0x10a5 PR_Close()
 10637 ms  0x10a5 fd:0x7fe0e5e79a60
 10638 ms  0x10a5 PR_Close()
 10638 ms  0x10a5 fd:0x7fe0e5a1e490
 10638 ms  0x10a5 PR_Close()
 10638 ms  0x10a5 fd:0x7fe0e5e79a60
 10642 ms  0x10a5 PR_Close()
 10642 ms  0x10a5 fd:0x7fe0e5bef970
 10644 ms  0x10a5 PR_Close()
 10644 ms  0x10a5 fd:0x7fe0e5bef970
 10645 ms  0x10a5 PR_Close()
 10645 ms  0x10a5 fd:0x7fe0e5a1e490
 10646 ms  0x10a5 PR_Close()
 10646 ms  0x10a5 fd:0x7fe0e5e79cd0
 10646 ms  0x10a5 PR_Close()
 10646 ms  0x10a5 fd:0x7fe0e5a1e490
 10646 ms  0x10a5 PR_Close()
 10646 ms  0x10a5 fd:0x7fe0e5e79cd0
 10649 ms  0x10a5 PR_Close()
 10649 ms  0x10a5 fd:0x7fe0e5e79d00
 10652 ms  0x10a5 PR_Close()
 10652 ms  0x10a5 fd:0x7fe0e5e79d00
 10658 ms  0x10a5 PR_Close()
 10658 ms  0x10a5 fd:0x7fe0e5ebb8b0
 10659 ms  0x10a5 PR_Close()
 10659 ms  0x10a5 fd:0x7fe0e5ebb8b0
 10663 ms  0x10a5 PR_Close()
 10663 ms  0x10a5 fd:0x7fe0e5ebb910
           /* TID 0x110e */
 10669 ms  0x110e PR_Close()
 10669 ms  0x110e fd:0x7fe0e58b6490
 10672 ms  0x110e PR_Close()
 10672 ms  0x110e fd:0x7fe0e58b6490
           /* TID 0x10a5 */
 10672 ms  0x10a5 PR_Close()
 10672 ms  0x10a5 fd:0x7fe0e5a1e490
 10672 ms  0x10a5 PR_Close()
 10672 ms  0x10a5 fd:0x7fe0e5a1e1c0
           /* TID 0x110e */
 10678 ms  0x110e PR_Close()
 10678 ms  0x110e fd:0x7fe0e5a1e400
 10708 ms  0x110e PR_Close()
 10708 ms  0x110e fd:0x7fe0e571f250
           /* TID 0x10b0 */
 10713 ms  0x10b0 SSL_ImportFD()
 10713 ms  0x10b0 ret:0x7fe0e5886a30
 10713 ms  0x10b0 SSL_AuthCertificateHook()
 10713 ms  0x10b0 fd:0x7fe0e5886a30
 10714 ms  0x10b0 ret:0x0
 10714 ms  0x10b0 PR_Connect()
 10714 ms  0x10b0 fd:0x7fe0e5886a30
 10714 ms  0x10b0 SSL_ImportFD()
 10714 ms  0x10b0 ret:0x7fe0e5886c70
 10714 ms  0x10b0 SSL_AuthCertificateHook()
 10714 ms  0x10b0 fd:0x7fe0e5886c70
 10714 ms  0x10b0 ret:0x0
 10714 ms  0x10b0 PR_Connect()
 10714 ms  0x10b0 fd:0x7fe0e5886c70
 10714 ms  0x10b0 SSL_ImportFD()
 10714 ms  0x10b0 ret:0x7fe0e5886eb0
 10714 ms  0x10b0 SSL_AuthCertificateHook()
 10714 ms  0x10b0 fd:0x7fe0e5886eb0
 10714 ms  0x10b0 ret:0x0
 10714 ms  0x10b0 PR_Connect()
 10714 ms  0x10b0 fd:0x7fe0e5886eb0
 10715 ms  0x10b0 PR_Close()
 10715 ms  0x10b0 fd:0x7fe0e5886a30
           /* TID 0x10aa */
 10728 ms  0x10aa PR_Close()
 10728 ms  0x10aa fd:0x7fe1007fedf0
           /* TID 0x10b0 */
 10728 ms  0x10b0 PR_Close()
 10728 ms  0x10b0 fd:0x7fe0e5886c70
 10728 ms  0x10b0 PR_Close()
 10728 ms  0x10b0 fd:0x7fe0e5886eb0
           /* TID 0x10a5 */
 10729 ms  0x10a5 PR_Close()
 10729 ms  0x10a5 fd:0x7fe0e58b6490
 10729 ms  0x10a5 PR_Close()
 10729 ms  0x10a5 fd:0x7fe0e571f130
           /* TID 0x110e */
 10740 ms  0x110e PR_Close()
 10740 ms  0x110e fd:0x7fe0e5886310
           /* TID 0x10aa */
 10747 ms  0x10aa PR_Close()
 10747 ms  0x10aa fd:0x7fe0fd086820
           /* TID 0x10b0 */
 10750 ms  0x10b0 PR_Close()
 10750 ms  0x10b0 fd:0x7fe0fd28f3d0
           /* TID 0x10fc */
 10751 ms  0x10fc PR_Close()
 10751 ms  0x10fc fd:0x7fe0e58b6ac0
 10751 ms  0x10fc PR_Close()
 10751 ms  0x10fc fd:0x7fe0e58b6ac0
 10751 ms  0x10fc PR_Close()
 10751 ms  0x10fc fd:0x7fe0e58b6c40
 10752 ms  0x10fc PR_Close()
 10752 ms  0x10fc fd:0x7fe0e571f130
           /* TID 0x110e */
 10752 ms  0x110e PR_Close()
 10752 ms  0x110e fd:0x7fe0e58b6b20
           /* TID 0x10b8 */
 10758 ms  0x10b8 PR_Close()
 10758 ms  0x10b8 fd:0x7fe0e5be0040
 10758 ms  0x10b8 PR_Close()
 10758 ms  0x10b8 fd:0x7fe0e5be00d0
           /* TID 0x10aa */
 10766 ms  0x10aa PR_Close()
 10766 ms  0x10aa fd:0x7fe0fcffb220
           /* TID 0x10a5 */
 10770 ms  0x10a5 PR_Close()
 10770 ms  0x10a5 fd:0x7fe0e58862b0
 10770 ms  0x10a5 PR_Close()
 10770 ms  0x10a5 fd:0x7fe0e58b6d60
           /* TID 0x110e */
 10772 ms  0x110e PR_Close()
 10772 ms  0x110e fd:0x7fe0e58b6e50
 10774 ms  0x110e PR_Close()
 10774 ms  0x110e fd:0x7fe0e5886be0
 10823 ms  0x110e PR_Close()
 10823 ms  0x110e fd:0x7fe0e5886a60
 10824 ms  0x110e PR_Close()
 10824 ms  0x110e fd:0x7fe0e5886a60
 10828 ms  0x110e PR_Close()
 10828 ms  0x110e fd:0x7fe0e58b6370
 10829 ms  0x110e PR_Close()
 10829 ms  0x110e fd:0x7fe0e58b6400
 10837 ms  0x110e PR_Close()
 10837 ms  0x110e fd:0x7fe0e5a1e2b0
 10842 ms  0x110e PR_Close()
 10842 ms  0x110e fd:0x7fe0e5ae0e80
 10848 ms  0x110e PR_Close()
 10848 ms  0x110e fd:0x7fe0e5b0afd0
 10857 ms  0x110e PR_Close()
 10857 ms  0x110e fd:0x7fe0e5be0520
 10859 ms  0x110e PR_Close()
 10859 ms  0x110e fd:0x7fe0e5be0520
           /* TID 0x10a5 */
 11016 ms  0x10a5 PR_Close()
 11016 ms  0x10a5 fd:0x7fe0e571f550
 11016 ms  0x10a5 PR_Close()
 11016 ms  0x10a5 fd:0x7fe0e571f550
 11022 ms  0x10a5 PR_Close()
 11022 ms  0x10a5 fd:0x7fe11eeda130
 11022 ms  0x10a5 PR_Close()
 11022 ms  0x10a5 fd:0x7fe11eeda190
Process terminated
