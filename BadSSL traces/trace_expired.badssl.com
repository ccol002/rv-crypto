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
  4840 ms  0x2ab6 PR_Close()
  4840 ms  0x2ab6 fd:0x7efdba481430
  4840 ms  0x2ab6 PR_Close()
  4840 ms  0x2ab6 fd:0x7efdba4813a0
  6135 ms  0x2ab6 SSL_ImportFD()
  6135 ms  0x2ab6 ret:0x7efdb875d640
  6135 ms  0x2ab6 SSL_AuthCertificateHook()
  6135 ms  0x2ab6 fd:0x7efdb875d640
  6135 ms  0x2ab6 ret:0x0
  6135 ms  0x2ab6 PR_Connect()
  6135 ms  0x2ab6 fd:0x7efdb875d640
  6295 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6295 ms  0x2ab6 cx:0x7efdb8717aa8
  6297 ms     | 0x2ab6 EC_ValidatePublicKey()
  6297 ms     | 0x2ab6 ret:0x0
  6297 ms  0x2ab6 ret:0x7efdba798820::7efdba798820  80 6d 4d b8                                      .mM.
  6297 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6297 ms  0x2ab6 cx:0x7efdb8717aa8
  6301 ms     | 0x2ab6 EC_ValidatePublicKey()
  6305 ms     | 0x2ab6 ret:0x0
  6306 ms  0x2ab6 ret:0x7efdba79a820::7efdba79a820  50 f6 45 ba                                      P.E.
  6470 ms  SECKEY_ECParamsToKeySize()
  6470 ms  0x2ab6 ret:0x100
  6470 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6470 ms  0x2ab6 cx:0x7efdb8717aa8
  6472 ms     | 0x2ab6 EC_ValidatePublicKey()
  6482 ms     | 0x2ab6 ret:0x0
  6487 ms  0x2ab6 ret:0x7efdba7a7820::7efdba7a7820  70 8e 55 ba                                      p.U.
  6488 ms  0x2ab6 PK11_PubDeriveWithKDF()
  6488 ms  0x2ab6 seckey:0x7efdba7a7820
  6488 ms     | 0x2ab6 EC_ValidatePublicKey()
  6491 ms     | 0x2ab6 ret:0x0
  6496 ms  0x2ab6 ret:0x7efdb5e06c80
  6496 ms  0x2ab6 PK11_DeriveWithFlags()
  6496 ms  0x2ab6 basekey:0x7efdb5e06c80
  6496 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  6496 ms  0x2ab6 ret:0x7efdbe409180
  6496 ms  0x2ab6 PK11_Derive()
  6496 ms  0x2ab6 basekey:0x7efdbe409180
  6496 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  6496 ms  0x2ab6 ret:0x7efdb5e06e00
  6496 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  6496 ms  0x2ab6 privk:0x7efdba7a7820::7efdba7a7820  70 8e 55 ba                                      p.U.
  6497 ms  0x2ab6 privk:0x7efdba7a7820::7efdba7a7820  e5 e5 e5 e5                                      ....
  6497 ms  0x2ab6 PK11_Encrypt()
  6497 ms  0x2ab6 symkey:0x7efdbe4ea180
  6497 ms  0x2ab6 SSL_AuthCertificateComplete()
  6497 ms  0x2ab6 fd:0x7efdb875d640
  6497 ms  0x2ab6 err:0xffffe00b
  6497 ms     | 0x2ab6 PK11_Encrypt()
  6497 ms     | 0x2ab6 symkey:0x7efdbe4ea180
  6504 ms  0x2ab6 PR_Close()
  6504 ms  0x2ab6 fd:0x7efdb875d640
  6504 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  6504 ms     | 0x2ab6 privk:0x7efdba79a820::7efdba79a820  50 f6 45 ba                                      P.E.
  6504 ms     | 0x2ab6 privk:0x7efdba79a820::7efdba79a820  e5 e5 e5 e5                                      ....
  6504 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  6504 ms     | 0x2ab6 privk:0x7efdba798820::7efdba798820  80 6d 4d b8                                      .mM.
6504 ms | 0x2ab6 privk:0x7efdba798820::7efdba798820 e5 e5 e5 e5 ....
