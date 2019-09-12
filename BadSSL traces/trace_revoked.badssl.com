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
  1114 ms  0x2ab6 SSL_ImportFD()
  1114 ms  0x2ab6 ret:0x7efdc5299940
  1114 ms  0x2ab6 SSL_AuthCertificateHook()
  1114 ms  0x2ab6 fd:0x7efdc5299940
  1114 ms  0x2ab6 ret:0x0
  1114 ms  0x2ab6 PR_Connect()
  1114 ms  0x2ab6 fd:0x7efdc5299940
  1269 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1269 ms  0x2ab6 cx:0x7efdbf588e28
  1270 ms     | 0x2ab6 EC_ValidatePublicKey()
  1270 ms     | 0x2ab6 ret:0x0
  1270 ms  0x2ab6 ret:0x7efdb851c820::7efdb851c820  e0 97 b1 c6                                      ....
  1270 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1270 ms  0x2ab6 cx:0x7efdbf588e28
  1272 ms     | 0x2ab6 EC_ValidatePublicKey()
  1277 ms     | 0x2ab6 ret:0x0
  1278 ms  0x2ab6 ret:0x7efdb851f020::7efdb851f020  d0 7d a4 c6                                      .}..
  1435 ms  SECKEY_ECParamsToKeySize()
  1435 ms  0x2ab6 ret:0x100
  1435 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1435 ms  0x2ab6 cx:0x7efdbf588e28
  1436 ms     | 0x2ab6 EC_ValidatePublicKey()
  1440 ms     | 0x2ab6 ret:0x0
  1448 ms  0x2ab6 ret:0x7efdb8521820::7efdb8521820  d0 a3 24 cc                                      ..$.
  1448 ms  0x2ab6 PK11_PubDeriveWithKDF()
  1448 ms  0x2ab6 seckey:0x7efdb8521820
  1448 ms     | 0x2ab6 EC_ValidatePublicKey()
  1452 ms     | 0x2ab6 ret:0x0
  1456 ms  0x2ab6 ret:0x7efdbe1d0f00
  1456 ms  0x2ab6 PK11_DeriveWithFlags()
  1456 ms  0x2ab6 basekey:0x7efdbe1d0f00
  1456 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1456 ms  0x2ab6 ret:0x7efdbe1d0e00
  1456 ms  0x2ab6 PK11_Derive()
  1456 ms  0x2ab6 basekey:0x7efdbe1d0e00
  1456 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1456 ms  0x2ab6 ret:0x7efdbe15da00
  1456 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  1456 ms  0x2ab6 privk:0x7efdb8521820::7efdb8521820  d0 a3 24 cc                                      ..$.
  1456 ms  0x2ab6 privk:0x7efdb8521820::7efdb8521820  e5 e5 e5 e5                                      ....
  1456 ms  0x2ab6 PK11_Encrypt()
  1456 ms  0x2ab6 symkey:0x7efdba2fcc80
  1459 ms  0x2ab6 SSL_AuthCertificateComplete()
  1459 ms  0x2ab6 fd:0x7efdc5299940
  1459 ms  0x2ab6 err:0xffffe00c
  1459 ms     | 0x2ab6 PK11_Encrypt()
  1459 ms     | 0x2ab6 symkey:0x7efdba2fcc80
  1468 ms  0x2ab6 PR_Close()
  1468 ms  0x2ab6 fd:0x7efdc5299940
  1470 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1470 ms     | 0x2ab6 privk:0x7efdb851f020::7efdb851f020  d0 7d a4 c6                                      .}..
  1470 ms     | 0x2ab6 privk:0x7efdb851f020::7efdb851f020  e5 e5 e5 e5                                      ....
  1470 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1470 ms     | 0x2ab6 privk:0x7efdb851c820::7efdb851c820  e0 97 b1 c6                                      ....
  1470 ms     | 0x2ab6 privk:0x7efdb851c820::7efdb851c820  e5 e5 e5 e5                                      ....
