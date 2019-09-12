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
xmlExpExpDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libxml2.so.2.9.4/xmlExpExpDerive.js"
xmlExpStringDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libxml2.so.2.9.4/xmlExpStringDerive.js"
PK11_PubDeriveWithKDF: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDeriveWithKDF.js"
PK11_DeriveWithFlags: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlags.js"
PK11_PubDerive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_PubDerive.js"
PK11_Derive: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Derive.js"
PK11_DeriveWithFlagsPerm: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithFlagsPerm.js"
PK11_DeriveWithTemplate: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_DeriveWithTemplate.js"
vaDeriveImage: Loaded handler at "/home/blockio/binrv/__handlers__/libva.so.2.100.0/vaDeriveImage.js"
PK11_Encrypt: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/PK11_Encrypt.js"
PR_Send: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Send.js"
PR_Close: Loaded handler at "/home/blockio/binrv/__handlers__/libnspr4.so/PR_Close.js"
EC_ValidatePublicKey: Loaded handler at "/home/blockio/binrv/__handlers__/libfreeblpriv3.so/EC_ValidatePublicKey.js"
SECKEY_ECParamsToBasePointOrderLen: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToBasePointOrderLen.js"
SECKEY_ECParamsToKeySize: Loaded handler at "/home/blockio/binrv/__handlers__/libnss3.so/SECKEY_ECParamsToKeySize.js"
Started tracing 27 functions. Press Ctrl+C to stop.
           /* TID 0x2ab6 */
  1284 ms  0x2ab6 SSL_ImportFD()
  1284 ms  0x2ab6 ret:0x7efdc9278fa0
  1284 ms  0x2ab6 SSL_AuthCertificateHook()
  1284 ms  0x2ab6 fd:0x7efdc9278fa0
  1284 ms  0x2ab6 ret:0x0
  1284 ms  0x2ab6 PR_Connect()
  1284 ms  0x2ab6 fd:0x7efdc9278fa0
  1435 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1435 ms  0x2ab6 cx:0x7efdbf588ae8
  1437 ms     | 0x2ab6 EC_ValidatePublicKey()
  1437 ms     | 0x2ab6 ret:0x0
  1437 ms  0x2ab6 ret:0x7efdc92c3020::7efdc92c3020  30 a8 c6 c4                                      0...
  1437 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1437 ms  0x2ab6 cx:0x7efdbf588ae8
  1439 ms     | 0x2ab6 EC_ValidatePublicKey()
  1442 ms     | 0x2ab6 ret:0x0
  1442 ms  0x2ab6 ret:0x7efdcc299820::7efdcc299820  60 d5 26 c5                                      `.&.
  1596 ms  SECKEY_ECParamsToKeySize()
  1596 ms  0x2ab6 ret:0x100
  1596 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1596 ms  0x2ab6 cx:0x7efdbf588ae8
  1598 ms     | 0x2ab6 EC_ValidatePublicKey()
  1602 ms     | 0x2ab6 ret:0x0
  1605 ms  0x2ab6 ret:0x7efdcc29f020::7efdcc29f020  40 7c 38 c5                                      @|8.
  1605 ms  0x2ab6 PK11_PubDeriveWithKDF()
  1605 ms  0x2ab6 seckey:0x7efdcc29f020
  1605 ms     | 0x2ab6 EC_ValidatePublicKey()
  1610 ms     | 0x2ab6 ret:0x0
  1613 ms  0x2ab6 ret:0x7efdbe1d0f00
  1613 ms  0x2ab6 PK11_DeriveWithFlags()
  1613 ms  0x2ab6 basekey:0x7efdbe1d0f00
  1613 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1613 ms  0x2ab6 ret:0x7efdbe1d0e00
  1613 ms  0x2ab6 PK11_Derive()
  1613 ms  0x2ab6 basekey:0x7efdbe1d0e00
  1613 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1613 ms  0x2ab6 ret:0x7efdbe15da00
  1613 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  1613 ms  0x2ab6 privk:0x7efdcc29f020::7efdcc29f020  40 7c 38 c5                                      @|8.
  1613 ms  0x2ab6 privk:0x7efdcc29f020::7efdcc29f020  e5 e5 e5 e5                                      ....
  1616 ms  0x2ab6 PK11_Encrypt()
  1616 ms  0x2ab6 symkey:0x7efdba2fcc00
  1616 ms  0x2ab6 SSL_AuthCertificateComplete()
  1616 ms  0x2ab6 fd:0x7efdc9278fa0
  1616 ms  0x2ab6 err:0xffffe00d
  1616 ms     | 0x2ab6 PK11_Encrypt()
  1616 ms     | 0x2ab6 symkey:0x7efdba2fcc00
  1624 ms  0x2ab6 PR_Close()
  1624 ms  0x2ab6 fd:0x7efdc9278fa0
  1624 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1624 ms     | 0x2ab6 privk:0x7efdcc299820::7efdcc299820  60 d5 26 c5                                      `.&.
  1624 ms     | 0x2ab6 privk:0x7efdcc299820::7efdcc299820  e5 e5 e5 e5                                      ....
  1625 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1625 ms     | 0x2ab6 privk:0x7efdc92c3020::7efdc92c3020  30 a8 c6 c4                                      0...
  1625 ms     | 0x2ab6 privk:0x7efdc92c3020::7efdc92c3020  e5 e5 e5 e5                                      ....
