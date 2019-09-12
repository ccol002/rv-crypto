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
  1401 ms  0x2ab6 PR_Close()
  1401 ms  0x2ab6 fd:0x7efdc4d86700
  1401 ms     | 0x2ab6 PK11_Encrypt()
  1401 ms     | 0x2ab6 symkey:0x7efdbe408580
  3308 ms  0x2ab6 SSL_ImportFD()
  3308 ms  0x2ab6 ret:0x7efdbf66b7f0
  3308 ms  0x2ab6 SSL_AuthCertificateHook()
  3308 ms  0x2ab6 fd:0x7efdbf66b7f0
  3308 ms  0x2ab6 ret:0x0
  3308 ms  0x2ab6 PR_Connect()
  3308 ms  0x2ab6 fd:0x7efdbf66b7f0
  3466 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  3466 ms  0x2ab6 cx:0x7efdbf67c8c8
  3468 ms     | 0x2ab6 EC_ValidatePublicKey()
  3468 ms     | 0x2ab6 ret:0x0
  3468 ms  0x2ab6 ret:0x7efdcc29a020::7efdcc29a020  00 cb 91 c2                                      ....
  3468 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  3468 ms  0x2ab6 cx:0x7efdbf67c8c8
  3471 ms     | 0x2ab6 EC_ValidatePublicKey()
  3478 ms     | 0x2ab6 ret:0x0
  3478 ms  0x2ab6 ret:0x7efdcc2a1820::7efdcc2a1820  90 a7 57 c4                                      ..W.
  3637 ms  SECKEY_ECParamsToKeySize()
  3637 ms  0x2ab6 ret:0x100
  3637 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  3637 ms  0x2ab6 cx:0x7efdbf67c8c8
  3638 ms     | 0x2ab6 EC_ValidatePublicKey()
  3640 ms     | 0x2ab6 ret:0x0
  3640 ms  0x2ab6 ret:0x7efdcc2a6820::7efdcc2a6820  10 5a 58 c4                                      .ZX.
  3640 ms  0x2ab6 PK11_PubDeriveWithKDF()
  3640 ms  0x2ab6 seckey:0x7efdcc2a6820
  3641 ms     | 0x2ab6 EC_ValidatePublicKey()
  3645 ms     | 0x2ab6 ret:0x0
  3648 ms  0x2ab6 ret:0x7efdba6fd680
  3648 ms  0x2ab6 PK11_DeriveWithFlags()
  3648 ms  0x2ab6 basekey:0x7efdba6fd680
  3648 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  3648 ms  0x2ab6 ret:0x7efdb5e06d80
  3648 ms  0x2ab6 PK11_Derive()
  3648 ms  0x2ab6 basekey:0x7efdb5e06d80
  3648 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  3648 ms  0x2ab6 ret:0x7efdbe1d0f00
  3648 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  3648 ms  0x2ab6 privk:0x7efdcc2a6820::7efdcc2a6820  10 5a 58 c4                                      .ZX.
  3649 ms  0x2ab6 privk:0x7efdcc2a6820::7efdcc2a6820  e5 e5 e5 e5                                      ....
  3649 ms  0x2ab6 PK11_Encrypt()
  3649 ms  0x2ab6 symkey:0x7efdbe408200
  3649 ms  0x2ab6 SSL_AuthCertificateComplete()
  3649 ms  0x2ab6 fd:0x7efdbf66b7f0
  3649 ms  0x2ab6 err:0xffffe00d
  3649 ms     | 0x2ab6 PK11_Encrypt()
  3649 ms     | 0x2ab6 symkey:0x7efdbe408200
  3657 ms  0x2ab6 PR_Close()
  3657 ms  0x2ab6 fd:0x7efdbf66b7f0
  3658 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  3658 ms     | 0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  90 a7 57 c4                                      ..W.
  3658 ms     | 0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  e5 e5 e5 e5                                      ....
  3658 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  3658 ms     | 0x2ab6 privk:0x7efdcc29a020::7efdcc29a020  00 cb 91 c2                                      ....
  3658 ms     | 0x2ab6 privk:0x7efdcc29a020::7efdcc29a020  e5 e5 e5 e5                                      ....
