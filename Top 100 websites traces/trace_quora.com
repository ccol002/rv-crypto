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
           /* TID 0x24c2 */
   276 ms  0x24c2 SSL_ImportFD()
   276 ms  0x24c2 ret:0x7f55ac2a0100
   276 ms  0x24c2 SSL_AuthCertificateHook()
   276 ms  0x24c2 fd:0x7f55ac2a0100
   276 ms  0x24c2 ret:0x0
   276 ms  0x24c2 PR_Connect()
   276 ms  0x24c2 fd:0x7f55ac2a0100
   495 ms  0x24c2 SECKEY_CreateECPrivateKey()
   495 ms  0x24c2 cx:0x7f55ac5ae948
   496 ms     | 0x24c2 EC_ValidatePublicKey()
   496 ms     | 0x24c2 ret:0x0
   496 ms  0x24c2 ret:0x7f55ac21d020::7f55ac21d020  a0 5b 5b ac                                      .[[.
   496 ms  0x24c2 SECKEY_CreateECPrivateKey()
   496 ms  0x24c2 cx:0x7f55ac5ae948
   498 ms     | 0x24c2 EC_ValidatePublicKey()
   502 ms     | 0x24c2 ret:0x0
   502 ms  0x24c2 ret:0x7f55ac21f020::7f55ac21f020  80 5d 5b ac                                      .][.
           /* TID 0x2522 */
   523 ms  0x2522 PR_Close()
   523 ms  0x2522 fd:0x7f55ac2a01c0
   526 ms  0x2522 PR_Close()
   526 ms  0x2522 fd:0x7f55ac2a01c0
           /* TID 0x24c2 */
   728 ms  SECKEY_ECParamsToKeySize()
   728 ms  0x24c2 ret:0x100
   728 ms  0x24c2 SECKEY_CreateECPrivateKey()
   728 ms  0x24c2 cx:0x7f55ac5ae948
   730 ms     | 0x24c2 EC_ValidatePublicKey()
   735 ms     | 0x24c2 ret:0x0
   735 ms  0x24c2 ret:0x7f55ac228020::7f55ac228020  e0 37 2b ac                                      .7+.
   735 ms  0x24c2 PK11_PubDeriveWithKDF()
   735 ms  0x24c2 seckey:0x7f55ac228020
   735 ms     | 0x24c2 EC_ValidatePublicKey()
   739 ms     | 0x24c2 ret:0x0
   743 ms  0x24c2 ret:0x7f55ade8d880
   743 ms  0x24c2 PK11_DeriveWithFlags()
   743 ms  0x24c2 basekey:0x7f55ade8d880
   743 ms     | 0x24c2 PK11_DeriveWithTemplate()
   744 ms  0x24c2 ret:0x7f55ade8d800
   744 ms  0x24c2 PK11_Derive()
   744 ms  0x24c2 basekey:0x7f55ade8d800
   744 ms     | 0x24c2 PK11_DeriveWithTemplate()
   744 ms  0x24c2 ret:0x7f55ade8d980
   744 ms  0x24c2 SECKEY_DestroyPrivateKey()
   744 ms  0x24c2 privk:0x7f55ac228020::7f55ac228020  e0 37 2b ac                                      .7+.
   744 ms  0x24c2 privk:0x7f55ac228020::7f55ac228020  e5 e5 e5 e5                                      ....
   744 ms  0x24c2 PK11_Encrypt()
   744 ms  0x24c2 symkey:0x7f55ade8de00
   745 ms  0x24c2 PR_Connect()
   745 ms  0x24c2 fd:0x7f55ac2a0be0
           /* TID 0x2522 */
   763 ms  0x2522 PR_Close()
   763 ms  0x2522 fd:0x7f55ac2a0b80
           /* TID 0x24ca */
   799 ms  0x24ca PR_Close()
   799 ms  0x24ca fd:0x7f55ac2a0ac0
           /* TID 0x251b */
   799 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   799 ms  0x251b ret:0x0
           /* TID 0x24c2 */
   800 ms  0x24c2 SSL_AuthCertificateComplete()
   800 ms  0x24c2 fd:0x7f55ac2a0100
   800 ms  0x24c2 err:0x0
   800 ms  0x24c2 PK11_Encrypt()
   800 ms  0x24c2 symkey:0x7f55ade8de00
   964 ms  0x24c2 SECKEY_DestroyPrivateKey()
   964 ms  0x24c2 privk:0x7f55ac21f020::7f55ac21f020  80 5d 5b ac                                      .][.
   964 ms  0x24c2 privk:0x7f55ac21f020::7f55ac21f020  e5 e5 e5 e5                                      ....
   964 ms  0x24c2 SECKEY_DestroyPrivateKey()
   964 ms  0x24c2 privk:0x7f55ac21d020::7f55ac21d020  a0 5b 5b ac                                      .[[.
   965 ms  0x24c2 privk:0x7f55ac21d020::7f55ac21d020  e5 e5 e5 e5                                      ....
  1191 ms  0x24c2 SSL_ImportFD()
  1191 ms  0x24c2 ret:0x7f55ac2a0d30
  1191 ms  0x24c2 SSL_AuthCertificateHook()
  1191 ms  0x24c2 fd:0x7f55ac2a0d30
  1191 ms  0x24c2 ret:0x0
  1192 ms  0x24c2 PR_Connect()
  1192 ms  0x24c2 fd:0x7f55ac2a0d30
  1218 ms  0x24c2 SECKEY_CreateECPrivateKey()
  1218 ms  0x24c2 cx:0x7f55ac2af588
  1219 ms     | 0x24c2 EC_ValidatePublicKey()
  1220 ms     | 0x24c2 ret:0x0
  1220 ms  0x24c2 ret:0x7f55ac21e820::7f55ac21e820  e0 37 2b ac                                      .7+.
  1220 ms  0x24c2 SECKEY_CreateECPrivateKey()
  1220 ms  0x24c2 cx:0x7f55ac2af588
  1222 ms     | 0x24c2 EC_ValidatePublicKey()
  1227 ms     | 0x24c2 ret:0x0
  1227 ms  0x24c2 ret:0x7f55ac224820::7f55ac224820  a0 36 2b ac                                      .6+.
           /* TID 0x251b */
  1280 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1280 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  1281 ms  SECKEY_ECParamsToKeySize()
  1281 ms  0x24c2 ret:0x100
  1281 ms  0x24c2 SECKEY_CreateECPrivateKey()
  1281 ms  0x24c2 cx:0x7f55ac2af588
  1283 ms     | 0x24c2 EC_ValidatePublicKey()
  1287 ms     | 0x24c2 ret:0x0
  1287 ms  0x24c2 ret:0x7f55ac228020::7f55ac228020  40 3c 2b ac                                      @<+.
  1288 ms  0x24c2 PK11_PubDeriveWithKDF()
  1288 ms  0x24c2 seckey:0x7f55ac228020
  1288 ms     | 0x24c2 EC_ValidatePublicKey()
  1292 ms     | 0x24c2 ret:0x0
  1296 ms  0x24c2 ret:0x7f55ade8d880
  1296 ms  0x24c2 PK11_DeriveWithFlags()
  1296 ms  0x24c2 basekey:0x7f55ade8d880
  1296 ms     | 0x24c2 PK11_DeriveWithTemplate()
  1296 ms  0x24c2 ret:0x7f55ac237980
  1296 ms  0x24c2 PK11_Derive()
  1296 ms  0x24c2 basekey:0x7f55ac237980
  1296 ms     | 0x24c2 PK11_DeriveWithTemplate()
  1296 ms  0x24c2 ret:0x7f55ac2a5000
  1296 ms  0x24c2 SECKEY_DestroyPrivateKey()
  1296 ms  0x24c2 privk:0x7f55ac228020::7f55ac228020  40 3c 2b ac                                      @<+.
  1296 ms  0x24c2 privk:0x7f55ac228020::7f55ac228020  e5 e5 e5 e5                                      ....
  1296 ms  0x24c2 PK11_Encrypt()
  1296 ms  0x24c2 symkey:0x7f55ac2a5500
  1297 ms  0x24c2 SSL_AuthCertificateComplete()
  1297 ms  0x24c2 fd:0x7f55ac2a0d30
  1297 ms  0x24c2 err:0x0
  1297 ms  0x24c2 PK11_Encrypt()
  1297 ms  0x24c2 symkey:0x7f55ac2a5500
  1348 ms  0x24c2 SECKEY_DestroyPrivateKey()
  1348 ms  0x24c2 privk:0x7f55ac224820::7f55ac224820  a0 36 2b ac                                      .6+.
  1349 ms  0x24c2 privk:0x7f55ac224820::7f55ac224820  e5 e5 e5 e5                                      ....
  1349 ms  0x24c2 SECKEY_DestroyPrivateKey()
  1349 ms  0x24c2 privk:0x7f55ac21e820::7f55ac21e820  e0 37 2b ac                                      .7+.
  1349 ms  0x24c2 privk:0x7f55ac21e820::7f55ac21e820  e5 e5 e5 e5                                      ....
  1353 ms  0x24c2 PK11_Encrypt()
  1353 ms  0x24c2 symkey:0x7f55ac2a5500
  1382 ms  0x24c2 PK11_Encrypt()
  1382 ms  0x24c2 symkey:0x7f55ac2a5500
  1413 ms  0x24c2 PK11_Encrypt()
  1413 ms  0x24c2 symkey:0x7f55ac2a5500
  1442 ms  0x24c2 PK11_Encrypt()
  1442 ms  0x24c2 symkey:0x7f55ac2a5500
  1559 ms  0x24c2 PK11_Encrypt()
  1559 ms  0x24c2 symkey:0x7f55ac2a5500
  1591 ms  0x24c2 PK11_Encrypt()
  1591 ms  0x24c2 symkey:0x7f55ac2a5500
  1623 ms  0x24c2 PK11_Encrypt()
  1623 ms  0x24c2 symkey:0x7f55ac2a5500
           /* TID 0x2516 */
  1651 ms  0x2516 PR_Close()
  1651 ms  0x2516 fd:0x7f55ac2a0e20
  1651 ms  0x2516 PR_Close()
  1651 ms  0x2516 fd:0x7f55ac2a0ee0
  1651 ms  0x2516 PR_Close()
  1651 ms  0x2516 fd:0x7f55ac2a0e20
  1651 ms  0x2516 PR_Close()
  1651 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0e20
  1652 ms  0x2516 PR_Close()
  1652 ms  0x2516 fd:0x7f55ac2a0ee0
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0e20
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0ee0
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0e20
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0ee0
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0e20
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0ee0
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0e20
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0ee0
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0e20
  1653 ms  0x2516 PR_Close()
  1653 ms  0x2516 fd:0x7f55ac2a0ee0
  1654 ms  0x2516 PR_Close()
  1654 ms  0x2516 fd:0x7f55ac2a0e20
  1654 ms  0x2516 PR_Close()
  1654 ms  0x2516 fd:0x7f55ac2a0ee0
  1736 ms  0x2516 PR_Close()
  1736 ms  0x2516 fd:0x7f55ac2a0e20
  1737 ms  0x2516 PR_Close()
  1737 ms  0x2516 fd:0x7f55ac2a0e20
  1832 ms  0x2516 PR_Close()
  1832 ms  0x2516 fd:0x7f55ac2a0e20
  1832 ms  0x2516 PR_Close()
  1832 ms  0x2516 fd:0x7f55ac00b3a0
  1877 ms  0x2516 PR_Close()
  1877 ms  0x2516 fd:0x7f55ac00b3a0
  1877 ms  0x2516 PR_Close()
  1877 ms  0x2516 fd:0x7f55ac00b3a0
  1880 ms  0x2516 PR_Close()
  1880 ms  0x2516 fd:0x7f55ac00b3a0
  1880 ms  0x2516 PR_Close()
  1880 ms  0x2516 fd:0x7f55ac00b3a0
  1935 ms  0x2516 PR_Close()
  1935 ms  0x2516 fd:0x7f55ac00b3a0
  1935 ms  0x2516 PR_Close()
  1935 ms  0x2516 fd:0x7f55ac00b3a0
  1943 ms  0x2516 PR_Close()
  1943 ms  0x2516 fd:0x7f55ac00b3a0
  1944 ms  0x2516 PR_Close()
  1944 ms  0x2516 fd:0x7f55ac00b3a0
  1950 ms  0x2516 PR_Close()
  1950 ms  0x2516 fd:0x7f55ac00b3a0
  1950 ms  0x2516 PR_Close()
  1950 ms  0x2516 fd:0x7f55ac00b3a0
  1952 ms  0x2516 PR_Close()
  1952 ms  0x2516 fd:0x7f55ac00b3a0
  1952 ms  0x2516 PR_Close()
  1952 ms  0x2516 fd:0x7f55ac00b3a0
           /* TID 0x2513 */
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1952 ms  0x2513 PR_Close()
  1952 ms  0x2513 fd:0x7f55ac00b3a0
  1953 ms  0x2513 PR_Close()
  1953 ms  0x2513 fd:0x7f55ac00b3a0
  1953 ms  0x2513 PR_Close()
  1953 ms  0x2513 fd:0x7f55ac00b3a0
  1953 ms  0x2513 PR_Close()
  1953 ms  0x2513 fd:0x7f55ac00b3a0
           /* TID 0x2522 */
  2455 ms  0x2522 PR_Close()
  2455 ms  0x2522 fd:0x7f55ac00b3d0
  2457 ms  0x2522 PR_Close()
  2457 ms  0x2522 fd:0x7f55ac00b3d0
  2666 ms  0x2522 PR_Close()
  2666 ms  0x2522 fd:0x7f55ac00b3d0
           /* TID 0x24ca */
  4144 ms  0x24ca PR_Close()
  4144 ms  0x24ca fd:0x7f55ac00b3d0
  4144 ms  0x24ca PR_Close()
  4144 ms  0x24ca fd:0x7f55ac00b430
           /* TID 0x24c2 */
  4543 ms  0x24c2 SSL_ImportFD()
  4543 ms  0x24c2 ret:0x7f55af5933a0
  4543 ms  0x24c2 SSL_AuthCertificateHook()
  4543 ms  0x24c2 fd:0x7f55af5933a0
  4543 ms  0x24c2 ret:0x0
  4543 ms  0x24c2 PR_Connect()
  4543 ms  0x24c2 fd:0x7f55af5933a0
  4692 ms  0x24c2 SECKEY_CreateECPrivateKey()
  4692 ms  0x24c2 cx:0x7f55ac2af8c8
  4695 ms     | 0x24c2 EC_ValidatePublicKey()
  4695 ms     | 0x24c2 ret:0x0
  4695 ms  0x24c2 ret:0x7f55ac794820::7f55ac794820  30 38 3a 9b                                      08:.
  4695 ms  0x24c2 SECKEY_CreateECPrivateKey()
  4695 ms  0x24c2 cx:0x7f55ac2af8c8
  4697 ms     | 0x24c2 EC_ValidatePublicKey()
  4702 ms     | 0x24c2 ret:0x0
  4702 ms  0x24c2 ret:0x7f55b23c7820::7f55b23c7820  b0 3a 3a 9b                                      .::.
  5048 ms  SECKEY_ECParamsToKeySize()
  5049 ms  0x24c2 ret:0x100
  5049 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5049 ms  0x24c2 cx:0x7f55ac2af8c8
  5051 ms     | 0x24c2 EC_ValidatePublicKey()
  5059 ms     | 0x24c2 ret:0x0
  5060 ms  0x24c2 ret:0x7f559b30c820::7f559b30c820  f0 b1 3a 9b                                      ..:.
  5060 ms  0x24c2 PK11_PubDeriveWithKDF()
  5060 ms  0x24c2 seckey:0x7f559b30c820
  5060 ms     | 0x24c2 EC_ValidatePublicKey()
  5065 ms     | 0x24c2 ret:0x0
  5069 ms  0x24c2 ret:0x7f55ade8d880
  5069 ms  0x24c2 PK11_DeriveWithFlags()
  5069 ms  0x24c2 basekey:0x7f55ade8d880
  5069 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5069 ms  0x24c2 ret:0x7f55af597c00
  5070 ms  0x24c2 PK11_Derive()
  5070 ms  0x24c2 basekey:0x7f55af597c00
  5070 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5070 ms  0x24c2 ret:0x7f55af597c80
  5070 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5070 ms  0x24c2 privk:0x7f559b30c820::7f559b30c820  f0 b1 3a 9b                                      ..:.
  5070 ms  0x24c2 privk:0x7f559b30c820::7f559b30c820  e5 e5 e5 e5                                      ....
  5070 ms  0x24c2 PK11_Encrypt()
  5070 ms  0x24c2 symkey:0x7f55af597e00
  5119 ms  0x24c2 PR_Connect()
  5119 ms  0x24c2 fd:0x7f55af5938b0
           /* TID 0x24ca */
  5250 ms  0x24ca PR_Close()
  5250 ms  0x24ca fd:0x7f55af593820
           /* TID 0x251b */
  5250 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5251 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5262 ms  0x24c2 SSL_AuthCertificateComplete()
  5262 ms  0x24c2 fd:0x7f55af5933a0
  5262 ms  0x24c2 err:0x0
  5263 ms     | 0x24c2 SECKEY_DestroyPrivateKey()
  5263 ms     | 0x24c2 privk:0x7f55b23c7820::7f55b23c7820  b0 3a 3a 9b                                      .::.
  5263 ms     | 0x24c2 privk:0x7f55b23c7820::7f55b23c7820  e5 e5 e5 e5                                      ....
  5263 ms     | 0x24c2 SECKEY_DestroyPrivateKey()
  5263 ms     | 0x24c2 privk:0x7f55ac794820::7f55ac794820  30 38 3a 9b                                      08:.
  5264 ms     | 0x24c2 privk:0x7f55ac794820::7f55ac794820  e5 e5 e5 e5                                      ....
  5266 ms  0x24c2 PK11_Encrypt()
  5266 ms  0x24c2 symkey:0x7f55af597e00
           /* TID 0x24d9 */
  5646 ms  0x24d9 PR_Close()
  5646 ms  0x24d9 fd:0x7f55af593ac0
           /* TID 0x24c2 */
  5824 ms  0x24c2 SSL_ImportFD()
  5824 ms  0x24c2 ret:0x7f55ac0d7340
  5824 ms  0x24c2 SSL_AuthCertificateHook()
  5824 ms  0x24c2 fd:0x7f55ac0d7340
  5824 ms  0x24c2 ret:0x0
  5824 ms  0x24c2 PR_Connect()
  5824 ms  0x24c2 fd:0x7f55ac0d7340
  5825 ms  0x24c2 SSL_ImportFD()
  5825 ms  0x24c2 ret:0x7f55ac0d75b0
  5825 ms  0x24c2 SSL_AuthCertificateHook()
  5825 ms  0x24c2 fd:0x7f55ac0d75b0
  5825 ms  0x24c2 ret:0x0
  5825 ms  0x24c2 PR_Connect()
  5825 ms  0x24c2 fd:0x7f55ac0d75b0
  5825 ms  0x24c2 SSL_ImportFD()
  5825 ms  0x24c2 ret:0x7f55ac0d78e0
  5825 ms  0x24c2 SSL_AuthCertificateHook()
  5825 ms  0x24c2 fd:0x7f55ac0d78e0
  5825 ms  0x24c2 ret:0x0
  5825 ms  0x24c2 PR_Connect()
  5825 ms  0x24c2 fd:0x7f55ac0d78e0
  5825 ms  0x24c2 SSL_ImportFD()
  5825 ms  0x24c2 ret:0x7f55ac0d77f0
  5825 ms  0x24c2 SSL_AuthCertificateHook()
  5825 ms  0x24c2 fd:0x7f55ac0d77f0
  5825 ms  0x24c2 ret:0x0
  5825 ms  0x24c2 PR_Connect()
  5825 ms  0x24c2 fd:0x7f55ac0d77f0
  5826 ms  0x24c2 SSL_ImportFD()
  5826 ms  0x24c2 ret:0x7f55ac0d7970
  5826 ms  0x24c2 SSL_AuthCertificateHook()
  5826 ms  0x24c2 fd:0x7f55ac0d7970
  5826 ms  0x24c2 ret:0x0
  5826 ms  0x24c2 PR_Connect()
  5826 ms  0x24c2 fd:0x7f55ac0d7970
  5850 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5850 ms  0x24c2 cx:0x7f55ac2afda8
  5850 ms     | 0x24c2 EC_ValidatePublicKey()
  5850 ms     | 0x24c2 ret:0x0
  5850 ms  0x24c2 ret:0x7f559b1b2020::7f559b1b2020  e0 87 21 9b                                      ..!.
  5851 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5851 ms  0x24c2 cx:0x7f55ac2afda8
  5851 ms     | 0x24c2 EC_ValidatePublicKey()
  5853 ms     | 0x24c2 ret:0x0
  5853 ms  0x24c2 ret:0x7f559b1b4020::7f559b1b4020  c0 89 21 9b                                      ..!.
  5853 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5853 ms  0x24c2 cx:0x7f55ac2aff48
  5853 ms     | 0x24c2 EC_ValidatePublicKey()
  5853 ms     | 0x24c2 ret:0x0
  5853 ms  0x24c2 ret:0x7f559b1b6820::7f559b1b6820  90 8c 21 9b                                      ..!.
  5853 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5853 ms  0x24c2 cx:0x7f55ac2aff48
  5854 ms     | 0x24c2 EC_ValidatePublicKey()
  5855 ms     | 0x24c2 ret:0x0
  5855 ms  0x24c2 ret:0x7f559b1b8820::7f559b1b8820  70 8e 21 9b                                      p.!.
  5857 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5857 ms  0x24c2 cx:0x7f55ac2b0428
  5858 ms     | 0x24c2 EC_ValidatePublicKey()
  5858 ms     | 0x24c2 ret:0x0
  5858 ms  0x24c2 ret:0x7f559b1bb820::7f559b1bb820  60 8a 21 9b                                      `.!.
  5858 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5858 ms  0x24c2 cx:0x7f55ac2b0428
  5858 ms     | 0x24c2 EC_ValidatePublicKey()
  5860 ms     | 0x24c2 ret:0x0
  5860 ms  0x24c2 ret:0x7f559b1bd820::7f559b1bd820  20 3e 3a 9b                                       >:.
  5860 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5860 ms  0x24c2 cx:0x7f55ac2b0288
  5861 ms     | 0x24c2 EC_ValidatePublicKey()
  5861 ms     | 0x24c2 ret:0x0
  5861 ms  0x24c2 ret:0x7f559b1c0020::7f559b1c0020  b0 1f af b2                                      ....
  5861 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5861 ms  0x24c2 cx:0x7f55ac2b0288
  5861 ms     | 0x24c2 EC_ValidatePublicKey()
  5863 ms     | 0x24c2 ret:0x0
  5863 ms  0x24c2 ret:0x7f559b1c2020::7f559b1c2020  f0 71 3c 9b                                      .q<.
  5863 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5863 ms  0x24c2 cx:0x7f55ac2b00e8
  5864 ms     | 0x24c2 EC_ValidatePublicKey()
  5864 ms     | 0x24c2 ret:0x0
  5864 ms  0x24c2 ret:0x7f559b1c4820::7f559b1c4820  30 73 3c 9b                                      0s<.
  5864 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5864 ms  0x24c2 cx:0x7f55ac2b00e8
  5864 ms     | 0x24c2 EC_ValidatePublicKey()
  5866 ms     | 0x24c2 ret:0x0
  5866 ms  0x24c2 ret:0x7f559b1c6820::7f559b1c6820  10 75 3c 9b                                      .u<.
           /* TID 0x251b */
  5883 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5883 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5884 ms  SECKEY_ECParamsToKeySize()
  5884 ms  0x24c2 ret:0xff
  5884 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5884 ms  0x24c2 cx:0x7f55ac2afda8
  5884 ms     | 0x24c2 EC_ValidatePublicKey()
  5884 ms     | 0x24c2 ret:0x0
  5885 ms  0x24c2 ret:0x7f559b28a820::7f559b28a820  80 78 3c 9b                                      .x<.
  5885 ms  0x24c2 PK11_PubDeriveWithKDF()
  5885 ms  0x24c2 seckey:0x7f559b28a820
  5885 ms     | 0x24c2 EC_ValidatePublicKey()
  5885 ms     | 0x24c2 ret:0x0
  5885 ms  0x24c2 ret:0x7f55ade8d880
  5885 ms  0x24c2 PK11_DeriveWithFlags()
  5885 ms  0x24c2 basekey:0x7f55ade8d880
  5885 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5886 ms  0x24c2 ret:0x7f559b1fd700
  5886 ms  0x24c2 PK11_Derive()
  5886 ms  0x24c2 basekey:0x7f559b1fd700
  5886 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5886 ms  0x24c2 ret:0x7f559b1fd880
  5886 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5886 ms  0x24c2 privk:0x7f559b28a820::7f559b28a820  80 78 3c 9b                                      .x<.
  5886 ms  0x24c2 privk:0x7f559b28a820::7f559b28a820  e5 e5 e5 e5                                      ....
  5886 ms  0x24c2 PK11_Encrypt()
  5886 ms  0x24c2 symkey:0x7f559b1fda00
  5886 ms  0x24c2 SSL_AuthCertificateComplete()
  5886 ms  0x24c2 fd:0x7f55ac0d7340
  5886 ms  0x24c2 err:0x0
  5887 ms  0x24c2 PK11_Encrypt()
  5887 ms  0x24c2 symkey:0x7f559b1fda00
  5887 ms  0x24c2 PK11_Encrypt()
  5887 ms  0x24c2 symkey:0x7f559b1fda00
           /* TID 0x251b */
  5888 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5888 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5889 ms  SECKEY_ECParamsToKeySize()
  5889 ms  0x24c2 ret:0xff
  5889 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5889 ms  0x24c2 cx:0x7f55ac2aff48
  5890 ms     | 0x24c2 EC_ValidatePublicKey()
  5890 ms     | 0x24c2 ret:0x0
  5890 ms  0x24c2 ret:0x7f559b28c820::7f559b28c820  60 7a 3c 9b                                      `z<.
  5890 ms  0x24c2 PK11_PubDeriveWithKDF()
  5890 ms  0x24c2 seckey:0x7f559b28c820
  5890 ms     | 0x24c2 EC_ValidatePublicKey()
  5890 ms     | 0x24c2 ret:0x0
  5891 ms  0x24c2 ret:0x7f55ade8d880
  5891 ms  0x24c2 PK11_DeriveWithFlags()
  5891 ms  0x24c2 basekey:0x7f55ade8d880
  5891 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5891 ms  0x24c2 ret:0x7f559b1fdc80
  5891 ms  0x24c2 PK11_Derive()
  5891 ms  0x24c2 basekey:0x7f559b1fdc80
  5891 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5891 ms  0x24c2 ret:0x7f559b1fdd00
  5891 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5891 ms  0x24c2 privk:0x7f559b28c820::7f559b28c820  60 7a 3c 9b                                      `z<.
  5891 ms  0x24c2 privk:0x7f559b28c820::7f559b28c820  e5 e5 e5 e5                                      ....
  5891 ms  0x24c2 PK11_Encrypt()
  5891 ms  0x24c2 symkey:0x7f559b1fde80
  5891 ms  0x24c2 SSL_AuthCertificateComplete()
  5891 ms  0x24c2 fd:0x7f55ac0d75b0
  5891 ms  0x24c2 err:0x0
  5892 ms  0x24c2 PK11_Encrypt()
  5892 ms  0x24c2 symkey:0x7f559b1fde80
  5892 ms  0x24c2 PK11_Encrypt()
  5892 ms  0x24c2 symkey:0x7f559b1fde80
           /* TID 0x251b */
  5893 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5893 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5893 ms  SECKEY_ECParamsToKeySize()
  5893 ms  0x24c2 ret:0xff
  5893 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5893 ms  0x24c2 cx:0x7f55ac2b0428
  5894 ms     | 0x24c2 EC_ValidatePublicKey()
  5894 ms     | 0x24c2 ret:0x0
  5894 ms  0x24c2 ret:0x7f559b28e820::7f559b28e820  00 7b 3c 9b                                      .{<.
  5894 ms  0x24c2 PK11_PubDeriveWithKDF()
  5894 ms  0x24c2 seckey:0x7f559b28e820
  5894 ms     | 0x24c2 EC_ValidatePublicKey()
  5894 ms     | 0x24c2 ret:0x0
  5895 ms  0x24c2 ret:0x7f55ade8d880
  5895 ms  0x24c2 PK11_DeriveWithFlags()
  5895 ms  0x24c2 basekey:0x7f55ade8d880
  5895 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5895 ms  0x24c2 ret:0x7f559b1fe000
  5895 ms  0x24c2 PK11_Derive()
  5895 ms  0x24c2 basekey:0x7f559b1fe000
  5895 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5895 ms  0x24c2 ret:0x7f559b1fe080
  5895 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5895 ms  0x24c2 privk:0x7f559b28e820::7f559b28e820  00 7b 3c 9b                                      .{<.
  5895 ms  0x24c2 privk:0x7f559b28e820::7f559b28e820  e5 e5 e5 e5                                      ....
  5895 ms  0x24c2 PK11_Encrypt()
  5895 ms  0x24c2 symkey:0x7f559b1fe200
           /* TID 0x251b */
  5896 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5896 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5896 ms  SECKEY_ECParamsToKeySize()
  5896 ms  0x24c2 ret:0xff
  5896 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5896 ms  0x24c2 cx:0x7f55ac2b0288
  5897 ms     | 0x24c2 EC_ValidatePublicKey()
  5897 ms     | 0x24c2 ret:0x0
  5897 ms  0x24c2 ret:0x7f559b28f020::7f559b28f020  a0 7b 3c 9b                                      .{<.
  5897 ms  0x24c2 PK11_PubDeriveWithKDF()
  5897 ms  0x24c2 seckey:0x7f559b28f020
  5897 ms     | 0x24c2 EC_ValidatePublicKey()
  5897 ms     | 0x24c2 ret:0x0
  5898 ms  0x24c2 ret:0x7f55ade8d880
  5898 ms  0x24c2 PK11_DeriveWithFlags()
  5898 ms  0x24c2 basekey:0x7f55ade8d880
  5898 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5898 ms  0x24c2 ret:0x7f559b1fe300
  5898 ms  0x24c2 PK11_Derive()
  5898 ms  0x24c2 basekey:0x7f559b1fe300
  5898 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5898 ms  0x24c2 ret:0x7f559b1fe380
  5898 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5898 ms  0x24c2 privk:0x7f559b28f020::7f559b28f020  a0 7b 3c 9b                                      .{<.
  5898 ms  0x24c2 privk:0x7f559b28f020::7f559b28f020  e5 e5 e5 e5                                      ....
  5898 ms  0x24c2 PK11_Encrypt()
  5898 ms  0x24c2 symkey:0x7f559b1fe500
  5898 ms  0x24c2 SSL_AuthCertificateComplete()
  5898 ms  0x24c2 fd:0x7f55ac0d7970
  5898 ms  0x24c2 err:0x0
  5898 ms  0x24c2 SSL_AuthCertificateComplete()
  5898 ms  0x24c2 fd:0x7f55ac0d77f0
  5898 ms  0x24c2 err:0x0
  5898 ms  0x24c2 PK11_Encrypt()
  5898 ms  0x24c2 symkey:0x7f559b1fe200
  5899 ms  0x24c2 PK11_Encrypt()
  5899 ms  0x24c2 symkey:0x7f559b1fe500
           /* TID 0x251b */
  5899 ms  0x251b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5900 ms  0x251b ret:0x0
           /* TID 0x24c2 */
  5900 ms  SECKEY_ECParamsToKeySize()
  5900 ms  0x24c2 ret:0xff
  5900 ms  0x24c2 SECKEY_CreateECPrivateKey()
  5900 ms  0x24c2 cx:0x7f55ac2b00e8
  5900 ms     | 0x24c2 EC_ValidatePublicKey()
  5900 ms     | 0x24c2 ret:0x0
  5900 ms  0x24c2 ret:0x7f559b291820::7f559b291820  40 7c 3c 9b                                      @|<.
  5900 ms  0x24c2 PK11_PubDeriveWithKDF()
  5900 ms  0x24c2 seckey:0x7f559b291820
  5900 ms     | 0x24c2 EC_ValidatePublicKey()
  5900 ms     | 0x24c2 ret:0x0
  5901 ms  0x24c2 ret:0x7f55ade8d880
  5901 ms  0x24c2 PK11_DeriveWithFlags()
  5901 ms  0x24c2 basekey:0x7f55ade8d880
  5901 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5901 ms  0x24c2 ret:0x7f559b1fe600
  5901 ms  0x24c2 PK11_Derive()
  5901 ms  0x24c2 basekey:0x7f559b1fe600
  5901 ms     | 0x24c2 PK11_DeriveWithTemplate()
  5901 ms  0x24c2 ret:0x7f559b1fe680
  5901 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5901 ms  0x24c2 privk:0x7f559b291820::7f559b291820  40 7c 3c 9b                                      @|<.
  5901 ms  0x24c2 privk:0x7f559b291820::7f559b291820  e5 e5 e5 e5                                      ....
  5901 ms  0x24c2 PK11_Encrypt()
  5901 ms  0x24c2 symkey:0x7f559b1fe800
  5902 ms  0x24c2 PK11_Encrypt()
  5902 ms  0x24c2 symkey:0x7f559b1fde80
  5902 ms  0x24c2 SSL_AuthCertificateComplete()
  5902 ms  0x24c2 fd:0x7f55ac0d78e0
  5902 ms  0x24c2 err:0x0
  5902 ms  0x24c2 PK11_Encrypt()
  5902 ms  0x24c2 symkey:0x7f559b1fde80
  5902 ms  0x24c2 PK11_Encrypt()
  5902 ms  0x24c2 symkey:0x7f559b1fe800
  5903 ms  0x24c2 PK11_Encrypt()
  5903 ms  0x24c2 symkey:0x7f559b1fde80
  5912 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5912 ms  0x24c2 privk:0x7f559b1b4020::7f559b1b4020  c0 89 21 9b                                      ..!.
  5912 ms  0x24c2 privk:0x7f559b1b4020::7f559b1b4020  e5 e5 e5 e5                                      ....
  5912 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5912 ms  0x24c2 privk:0x7f559b1b2020::7f559b1b2020  e0 87 21 9b                                      ..!.
  5912 ms  0x24c2 privk:0x7f559b1b2020::7f559b1b2020  e5 e5 e5 e5                                      ....
  5917 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5917 ms  0x24c2 privk:0x7f559b1b8820::7f559b1b8820  70 8e 21 9b                                      p.!.
  5917 ms  0x24c2 privk:0x7f559b1b8820::7f559b1b8820  e5 e5 e5 e5                                      ....
  5918 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5918 ms  0x24c2 privk:0x7f559b1b6820::7f559b1b6820  90 8c 21 9b                                      ..!.
  5918 ms  0x24c2 privk:0x7f559b1b6820::7f559b1b6820  e5 e5 e5 e5                                      ....
  5921 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5921 ms  0x24c2 privk:0x7f559b1bd820::7f559b1bd820  20 3e 3a 9b                                       >:.
  5922 ms  0x24c2 privk:0x7f559b1bd820::7f559b1bd820  e5 e5 e5 e5                                      ....
  5922 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5922 ms  0x24c2 privk:0x7f559b1bb820::7f559b1bb820  60 8a 21 9b                                      `.!.
  5922 ms  0x24c2 privk:0x7f559b1bb820::7f559b1bb820  e5 e5 e5 e5                                      ....
  5922 ms  0x24c2 PR_Close()
  5922 ms  0x24c2 fd:0x7f55ac0d7970
  5922 ms     | 0x24c2 PK11_Encrypt()
  5922 ms     | 0x24c2 symkey:0x7f559b1fe200
  5924 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5924 ms  0x24c2 privk:0x7f559b1c2020::7f559b1c2020  f0 71 3c 9b                                      .q<.
  5924 ms  0x24c2 privk:0x7f559b1c2020::7f559b1c2020  e5 e5 e5 e5                                      ....
  5924 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5924 ms  0x24c2 privk:0x7f559b1c0020::7f559b1c0020  b0 1f af b2                                      ....
  5924 ms  0x24c2 privk:0x7f559b1c0020::7f559b1c0020  e5 e5 e5 e5                                      ....
  5924 ms  0x24c2 PR_Close()
  5924 ms  0x24c2 fd:0x7f55ac0d77f0
  5924 ms     | 0x24c2 PK11_Encrypt()
  5924 ms     | 0x24c2 symkey:0x7f559b1fe500
  5933 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5933 ms  0x24c2 privk:0x7f559b1c6820::7f559b1c6820  10 75 3c 9b                                      .u<.
  5933 ms  0x24c2 privk:0x7f559b1c6820::7f559b1c6820  e5 e5 e5 e5                                      ....
  5933 ms  0x24c2 SECKEY_DestroyPrivateKey()
  5933 ms  0x24c2 privk:0x7f559b1c4820::7f559b1c4820  30 73 3c 9b                                      0s<.
  5933 ms  0x24c2 privk:0x7f559b1c4820::7f559b1c4820  e5 e5 e5 e5                                      ....
  5933 ms  0x24c2 PR_Close()
  5933 ms  0x24c2 fd:0x7f55ac0d78e0
  5933 ms     | 0x24c2 PK11_Encrypt()
  5933 ms     | 0x24c2 symkey:0x7f559b1fe800
  5942 ms  0x24c2 PK11_Encrypt()
  5942 ms  0x24c2 symkey:0x7f559b1fda00
  5944 ms  0x24c2 PK11_Encrypt()
  5944 ms  0x24c2 symkey:0x7f559b1fde80
           /* TID 0x24ca */
  5945 ms  0x24ca PR_Close()
  5945 ms  0x24ca fd:0x7f55ac0d70d0
  6039 ms  0x24ca PR_Close()
  6039 ms  0x24ca fd:0x7f55ac00bdf0
  6045 ms  0x24ca PR_Close()
  6045 ms  0x24ca fd:0x7f55ac00bdf0
  6046 ms  0x24ca PR_Close()
  6046 ms  0x24ca fd:0x7f55ac00bdf0
  6048 ms  0x24ca PR_Close()
  6048 ms  0x24ca fd:0x7f559b175af0
           /* TID 0x24c2 */
  6053 ms  0x24c2 PK11_Encrypt()
  6053 ms  0x24c2 symkey:0x7f559b1fde80
           /* TID 0x24ca */
  6079 ms  0x24ca PR_Close()
  6079 ms  0x24ca fd:0x7f55ac00bdf0
           /* TID 0x24c2 */
  6174 ms  0x24c2 PK11_Encrypt()
  6174 ms  0x24c2 symkey:0x7f559b1fda00
           /* TID 0x24ca */
  6202 ms  0x24ca PR_Close()
  6202 ms  0x24ca fd:0x7f559b1751f0
           /* TID 0x24c2 */
  6207 ms  0x24c2 PK11_Encrypt()
  6207 ms  0x24c2 symkey:0x7f55af597e00
  6271 ms  0x24c2 PR_Close()
  6271 ms  0x24c2 fd:0x7f55ad384d30
           /* TID 0x24b7 */
  6272 ms  0x24b7 EC_ValidatePublicKey()
  6274 ms  0x24b7 ret:0x0
  6274 ms  0x24b7 EC_ValidatePublicKey()
  6275 ms  0x24b7 ret:0x0
  6275 ms  0x24b7 EC_ValidatePublicKey()
  6277 ms  0x24b7 ret:0x0
  6277 ms  0x24b7 EC_ValidatePublicKey()
  6278 ms  0x24b7 ret:0x0
  6278 ms  0x24b7 EC_ValidatePublicKey()
  6279 ms  0x24b7 ret:0x0
  6280 ms  0x24b7 EC_ValidatePublicKey()
  6281 ms  0x24b7 ret:0x0
  6281 ms  0x24b7 EC_ValidatePublicKey()
  6282 ms  0x24b7 ret:0x0
  6282 ms  0x24b7 EC_ValidatePublicKey()
  6294 ms  0x24b7 ret:0x0
  6294 ms  0x24b7 EC_ValidatePublicKey()
  6296 ms  0x24b7 ret:0x0
  6296 ms  0x24b7 EC_ValidatePublicKey()
  6297 ms  0x24b7 ret:0x0
           /* TID 0x24c2 */
  6303 ms  0x24c2 PK11_Encrypt()
  6303 ms  0x24c2 symkey:0x7f559b1fde80
  6304 ms  0x24c2 PK11_Encrypt()
  6304 ms  0x24c2 symkey:0x7f559b1fda00
  6304 ms  0x24c2 PR_Close()
  6304 ms  0x24c2 fd:0x7f55af5938b0
  6304 ms  0x24c2 PR_Close()
  6304 ms  0x24c2 fd:0x7f55ac2a0d30
  6304 ms     | 0x24c2 PK11_Encrypt()
  6304 ms     | 0x24c2 symkey:0x7f55ac2a5500
  6304 ms  0x24c2 PR_Close()
  6304 ms  0x24c2 fd:0x7f55ac2a0be0
  6304 ms  0x24c2 PR_Close()
  6304 ms  0x24c2 fd:0x7f55ac2a0100
  6304 ms     | 0x24c2 PK11_Encrypt()
  6304 ms     | 0x24c2 symkey:0x7f55ade8de00
  6305 ms  0x24c2 PR_Close()
  6305 ms  0x24c2 fd:0x7f55b6281970
  6305 ms  0x24c2 PR_Close()
  6305 ms  0x24c2 fd:0x7f55ac0d7340
  6305 ms     | 0x24c2 PK11_Encrypt()
  6305 ms     | 0x24c2 symkey:0x7f559b1fda00
  6305 ms  0x24c2 PR_Close()
  6305 ms  0x24c2 fd:0x7f55ac0d75b0
  6305 ms     | 0x24c2 PK11_Encrypt()
  6305 ms     | 0x24c2 symkey:0x7f559b1fde80
           /* TID 0x2511 */
  6306 ms  0x2511 PR_Close()
  6306 ms  0x2511 fd:0x7f55ac00be80
  6306 ms  0x2511 PR_Close()
  6306 ms  0x2511 fd:0x7f55ac00be80
           /* TID 0x24b7 */
  6322 ms  0x24b7 PR_Close()
  6322 ms  0x24b7 fd:0x7f55ae7b0ee0
  6322 ms  0x24b7 PR_Close()
  6322 ms  0x24b7 fd:0x7f55ac0d7b80
  6324 ms  0x24b7 PR_Close()
  6324 ms  0x24b7 fd:0x7f55ac0d7cd0
  6324 ms  0x24b7 PR_Close()
  6324 ms  0x24b7 fd:0x7f55ac0d7b80
  6325 ms  0x24b7 PR_Close()
  6325 ms  0x24b7 fd:0x7f55ac0d7cd0
  6325 ms  0x24b7 PR_Close()
  6325 ms  0x24b7 fd:0x7f55ac0d7b80
           /* TID 0x2522 */
  6328 ms  0x2522 PR_Close()
  6328 ms  0x2522 fd:0x7f55ac0d7d90
           /* TID 0x24b7 */
  6345 ms  0x24b7 PR_Close()
  6345 ms  0x24b7 fd:0x7f55ac0d7cd0
  6345 ms  0x24b7 PR_Close()
  6345 ms  0x24b7 fd:0x7f55ac2a0cd0
  6345 ms  0x24b7 PR_Close()
  6345 ms  0x24b7 fd:0x7f55ac0d7cd0
  6346 ms  0x24b7 PR_Close()
  6346 ms  0x24b7 fd:0x7f55ac2a0cd0
  6346 ms  0x24b7 PR_Close()
  6346 ms  0x24b7 fd:0x7f55b73c89a0
  6346 ms  0x24b7 PR_Close()
  6346 ms  0x24b7 fd:0x7f55b73c88b0
  6346 ms  0x24b7 PR_Close()
  6346 ms  0x24b7 fd:0x7f55b73c8a60
  6348 ms  0x24b7 PR_Close()
  6348 ms  0x24b7 fd:0x7f55ac2a0cd0
  6349 ms  0x24b7 PR_Close()
  6349 ms  0x24b7 fd:0x7f55ac2a0cd0
  6351 ms  0x24b7 PR_Close()
  6351 ms  0x24b7 fd:0x7f55ac0d7cd0
  6351 ms  0x24b7 PR_Close()
  6351 ms  0x24b7 fd:0x7f55ac2a0d30
  6352 ms  0x24b7 PR_Close()
  6352 ms  0x24b7 fd:0x7f55ac0d7cd0
  6352 ms  0x24b7 PR_Close()
  6352 ms  0x24b7 fd:0x7f55ac2a0d30
  6355 ms  0x24b7 PR_Close()
  6355 ms  0x24b7 fd:0x7f55ac238880
  6357 ms  0x24b7 PR_Close()
  6357 ms  0x24b7 fd:0x7f55ac238880
  6359 ms  0x24b7 PR_Close()
  6359 ms  0x24b7 fd:0x7f55ac0d7cd0
  6359 ms  0x24b7 PR_Close()
  6359 ms  0x24b7 fd:0x7f55ac275640
  6359 ms  0x24b7 PR_Close()
  6359 ms  0x24b7 fd:0x7f55ac0d7cd0
  6359 ms  0x24b7 PR_Close()
  6359 ms  0x24b7 fd:0x7f55ac275640
  6362 ms  0x24b7 PR_Close()
  6362 ms  0x24b7 fd:0x7f55ac2a0dc0
  6363 ms  0x24b7 PR_Close()
  6363 ms  0x24b7 fd:0x7f55ac2a0dc0
  6369 ms  0x24b7 PR_Close()
  6369 ms  0x24b7 fd:0x7f55ad6fa100
  6370 ms  0x24b7 PR_Close()
  6370 ms  0x24b7 fd:0x7f55ad6fa100
  6372 ms  0x24b7 PR_Close()
  6372 ms  0x24b7 fd:0x7f55ad6fa130
           /* TID 0x24c2 */
  6376 ms  0x24c2 PR_Close()
  6376 ms  0x24c2 fd:0x7f55af5933a0
  6376 ms     | 0x24c2 PK11_Encrypt()
  6376 ms     | 0x24c2 symkey:0x7f55af597e00
           /* TID 0x2522 */
  6381 ms  0x2522 PR_Close()
  6381 ms  0x2522 fd:0x7f559b175220
           /* TID 0x24b7 */
  6382 ms  0x24b7 PR_Close()
  6382 ms  0x24b7 fd:0x7f55ac0d7cd0
  6382 ms  0x24b7 PR_Close()
  6382 ms  0x24b7 fd:0x7f55ad64e7f0
           /* TID 0x2522 */
  6383 ms  0x2522 PR_Close()
  6383 ms  0x2522 fd:0x7f559b175220
  6388 ms  0x2522 PR_Close()
  6388 ms  0x2522 fd:0x7f55ac0d7d90
           /* TID 0x24c2 */
  6395 ms  0x24c2 SSL_ImportFD()
  6395 ms  0x24c2 ret:0x7f55ad6feee0
  6395 ms  0x24c2 SSL_AuthCertificateHook()
  6395 ms  0x24c2 fd:0x7f55ad6feee0
  6395 ms  0x24c2 ret:0x0
  6395 ms  0x24c2 PR_Connect()
  6395 ms  0x24c2 fd:0x7f55ad6feee0
  6395 ms  0x24c2 SSL_ImportFD()
  6395 ms  0x24c2 ret:0x7f55ada341c0
  6395 ms  0x24c2 SSL_AuthCertificateHook()
  6395 ms  0x24c2 fd:0x7f55ada341c0
  6395 ms  0x24c2 ret:0x0
  6395 ms  0x24c2 PR_Connect()
  6395 ms  0x24c2 fd:0x7f55ada341c0
  6395 ms  0x24c2 SSL_ImportFD()
  6395 ms  0x24c2 ret:0x7f55adaef730
  6395 ms  0x24c2 SSL_AuthCertificateHook()
  6395 ms  0x24c2 fd:0x7f55adaef730
  6395 ms  0x24c2 ret:0x0
  6395 ms  0x24c2 PR_Connect()
  6395 ms  0x24c2 fd:0x7f55adaef730
  6396 ms  0x24c2 SSL_ImportFD()
  6396 ms  0x24c2 ret:0x7f55adecd0d0
  6396 ms  0x24c2 SSL_AuthCertificateHook()
  6396 ms  0x24c2 fd:0x7f55adecd0d0
  6396 ms  0x24c2 ret:0x0
  6396 ms  0x24c2 PR_Connect()
  6396 ms  0x24c2 fd:0x7f55adecd0d0
  6396 ms  0x24c2 SSL_ImportFD()
  6396 ms  0x24c2 ret:0x7f55adecd790
  6396 ms  0x24c2 SSL_AuthCertificateHook()
  6396 ms  0x24c2 fd:0x7f55adecd790
  6396 ms  0x24c2 ret:0x0
  6396 ms  0x24c2 PR_Connect()
  6396 ms  0x24c2 fd:0x7f55adecd790
           /* TID 0x2522 */
  6414 ms  0x2522 PR_Close()
  6414 ms  0x2522 fd:0x7f559b1759d0
           /* TID 0x24c2 */
  6420 ms  0x24c2 PR_Close()
  6420 ms  0x24c2 fd:0x7f55ad6feee0
  6420 ms  0x24c2 SECKEY_CreateECPrivateKey()
  6420 ms  0x24c2 cx:0x7f55ac2afa68
  6421 ms     | 0x24c2 EC_ValidatePublicKey()
  6421 ms     | 0x24c2 ret:0x0
  6421 ms  0x24c2 ret:0x7f55b27d5820::7f55b27d5820  70 b4 12 9b                                      p...
  6421 ms  0x24c2 SECKEY_CreateECPrivateKey()
  6421 ms  0x24c2 cx:0x7f55ac2afa68
  6422 ms     | 0x24c2 EC_ValidatePublicKey()
  6423 ms     | 0x24c2 ret:0x0
  6423 ms  0x24c2 ret:0x7f55b27d9820::7f55b27d9820  a0 b6 12 9b                                      ....
  6424 ms  0x24c2 PR_Close()
  6424 ms  0x24c2 fd:0x7f55adecd0d0
  6424 ms  0x24c2 PR_Close()
  6424 ms  0x24c2 fd:0x7f55adaef730
  6424 ms  0x24c2 PR_Close()
  6424 ms  0x24c2 fd:0x7f55ada341c0
  6425 ms     | 0x24c2 SECKEY_DestroyPrivateKey()
  6425 ms     | 0x24c2 privk:0x7f55b27d9820::7f55b27d9820  a0 b6 12 9b                                      ....
  6425 ms     | 0x24c2 privk:0x7f55b27d9820::7f55b27d9820  e5 e5 e5 e5                                      ....
  6425 ms     | 0x24c2 SECKEY_DestroyPrivateKey()
  6425 ms     | 0x24c2 privk:0x7f55b27d5820::7f55b27d5820  70 b4 12 9b                                      p...
  6425 ms     | 0x24c2 privk:0x7f55b27d5820::7f55b27d5820  e5 e5 e5 e5                                      ....
  6425 ms  0x24c2 PR_Close()
  6425 ms  0x24c2 fd:0x7f55adecd790
           /* TID 0x24bc */
  6436 ms  0x24bc PR_Close()
  6436 ms  0x24bc fd:0x7f55b62fcdf0
  6441 ms  0x24bc PR_Close()
  6441 ms  0x24bc fd:0x7f55b2746790
           /* TID 0x24c2 */
  6442 ms  0x24c2 SSL_ImportFD()
  6442 ms  0x24c2 ret:0x7f55ac0d7a90
  6442 ms  0x24c2 SSL_AuthCertificateHook()
  6442 ms  0x24c2 fd:0x7f55ac0d7a90
  6442 ms  0x24c2 ret:0x0
  6442 ms  0x24c2 PR_Connect()
  6442 ms  0x24c2 fd:0x7f55ac0d7a90
           /* TID 0x24b7 */
  6443 ms  0x24b7 PR_Close()
  6443 ms  0x24b7 fd:0x7f55ac0d7cd0
  6443 ms  0x24b7 PR_Close()
  6443 ms  0x24b7 fd:0x7f559b1759d0
           /* TID 0x24c2 */
  6443 ms  0x24c2 PR_Close()
  6443 ms  0x24c2 fd:0x7f55ac0d7a90
           /* TID 0x2522 */
  6450 ms  0x2522 PR_Close()
  6450 ms  0x2522 fd:0x7f559b175a30
           /* TID 0x24c2 */
  6463 ms  0x24c2 PR_Close()
  6463 ms  0x24c2 fd:0x7f55ac70ec70
           /* TID 0x2511 */
  6464 ms  0x2511 PR_Close()
  6464 ms  0x2511 fd:0x7f55ac2a0160
  6464 ms  0x2511 PR_Close()
  6464 ms  0x2511 fd:0x7f559b1759d0
  6464 ms  0x2511 PR_Close()
  6464 ms  0x2511 fd:0x7f559b1759d0
  6464 ms  0x2511 PR_Close()
  6464 ms  0x2511 fd:0x7f559b1759d0
           /* TID 0x2522 */
  6464 ms  0x2522 PR_Close()
  6464 ms  0x2522 fd:0x7f55ac275970
           /* TID 0x24ca */
  6467 ms  0x24ca PR_Close()
  6467 ms  0x24ca fd:0x7f55ad6fa130
  6467 ms  0x24ca PR_Close()
  6467 ms  0x24ca fd:0x7f55ad6fa370
           /* TID 0x24bc */
  6474 ms  0x24bc PR_Close()
  6474 ms  0x24bc fd:0x7f55ac70eca0
           /* TID 0x24b7 */
  6477 ms  0x24b7 PR_Close()
  6477 ms  0x24b7 fd:0x7f55ac0d7b20
  6477 ms  0x24b7 PR_Close()
  6477 ms  0x24b7 fd:0x7f55ad6fa520
           /* TID 0x2522 */
  6479 ms  0x2522 PR_Close()
  6479 ms  0x2522 fd:0x7f55ac275850
  6481 ms  0x2522 PR_Close()
  6481 ms  0x2522 fd:0x7f55ac275850
  6499 ms  0x2522 PR_Close()
  6499 ms  0x2522 fd:0x7f55ac00b640
  6501 ms  0x2522 PR_Close()
  6501 ms  0x2522 fd:0x7f55ac00b640
  6529 ms  0x2522 PR_Close()
  6529 ms  0x2522 fd:0x7f55ac0c4970
  6531 ms  0x2522 PR_Close()
  6531 ms  0x2522 fd:0x7f55ac0c4ca0
  6549 ms  0x2522 PR_Close()
  6549 ms  0x2522 fd:0x7f55ac70eac0
  6556 ms  0x2522 PR_Close()
  6556 ms  0x2522 fd:0x7f55ad6fa520
  6563 ms  0x2522 PR_Close()
  6563 ms  0x2522 fd:0x7f55ad6fe970
  6572 ms  0x2522 PR_Close()
  6572 ms  0x2522 fd:0x7f55ad6fee80
  6574 ms  0x2522 PR_Close()
  6574 ms  0x2522 fd:0x7f55ad6fee80
           /* TID 0x24b7 */
  6731 ms  0x24b7 PR_Close()
  6731 ms  0x24b7 fd:0x7f559b175130
  6732 ms  0x24b7 PR_Close()
  6732 ms  0x24b7 fd:0x7f559b175130
  6739 ms  0x24b7 PR_Close()
  6739 ms  0x24b7 fd:0x7f55d46da130
  6739 ms  0x24b7 PR_Close()
  6739 ms  0x24b7 fd:0x7f55d46da190
Process terminated
