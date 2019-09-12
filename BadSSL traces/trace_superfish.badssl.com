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
   784 ms  0x2ab6 SSL_ImportFD()
   784 ms  0x2ab6 ret:0x7efdbb5c3790
   784 ms  0x2ab6 SSL_AuthCertificateHook()
   784 ms  0x2ab6 fd:0x7efdbb5c3790
   784 ms  0x2ab6 ret:0x0
   784 ms  0x2ab6 PR_Connect()
   784 ms  0x2ab6 fd:0x7efdbb5c3790
   939 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   939 ms  0x2ab6 cx:0x7efdbf589b28
   940 ms     | 0x2ab6 EC_ValidatePublicKey()
   940 ms     | 0x2ab6 ret:0x0
   940 ms  0x2ab6 ret:0x7efdc44c3020::7efdc44c3020  e0 e7 dd c4                                      ....
   940 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   940 ms  0x2ab6 cx:0x7efdbf589b28
   941 ms     | 0x2ab6 EC_ValidatePublicKey()
   944 ms     | 0x2ab6 ret:0x0
   944 ms  0x2ab6 ret:0x7efdc44c5020::7efdc44c5020  00 eb dd c4                                      ....
  1100 ms  SECKEY_ECParamsToKeySize()
  1100 ms  0x2ab6 ret:0x100
  1100 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1100 ms  0x2ab6 cx:0x7efdbf589b28
  1103 ms     | 0x2ab6 EC_ValidatePublicKey()
  1106 ms     | 0x2ab6 ret:0x0
  1109 ms  0x2ab6 ret:0x7efdc44c7820::7efdc44c7820  b0 a0 bf c6                                      ....
  1109 ms  0x2ab6 PK11_PubDeriveWithKDF()
  1109 ms  0x2ab6 seckey:0x7efdc44c7820
  1111 ms     | 0x2ab6 EC_ValidatePublicKey()
  1113 ms     | 0x2ab6 ret:0x0
  1115 ms  0x2ab6 ret:0x7efdbe1d0f80
  1115 ms  0x2ab6 PK11_DeriveWithFlags()
  1115 ms  0x2ab6 basekey:0x7efdbe1d0f80
  1115 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1115 ms  0x2ab6 ret:0x7efdbe409a80
  1115 ms  0x2ab6 PK11_Derive()
  1115 ms  0x2ab6 basekey:0x7efdbe409a80
  1115 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1115 ms  0x2ab6 ret:0x7efdbe15da00
  1116 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  1116 ms  0x2ab6 privk:0x7efdc44c7820::7efdc44c7820  b0 a0 bf c6                                      ....
  1116 ms  0x2ab6 privk:0x7efdc44c7820::7efdc44c7820  e5 e5 e5 e5                                      ....
  1116 ms  0x2ab6 PK11_Encrypt()
  1116 ms  0x2ab6 symkey:0x7efdbe4eaa00
  1118 ms  0x2ab6 SSL_AuthCertificateComplete()
  1118 ms  0x2ab6 fd:0x7efdbb5c3790
  1118 ms  0x2ab6 err:0xffffe00d
  1118 ms     | 0x2ab6 PK11_Encrypt()
  1118 ms     | 0x2ab6 symkey:0x7efdbe4eaa00
  1128 ms  0x2ab6 PR_Close()
  1128 ms  0x2ab6 fd:0x7efdbb5c3790
  1128 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1128 ms     | 0x2ab6 privk:0x7efdc44c5020::7efdc44c5020  00 eb dd c4                                      ....
  1129 ms     | 0x2ab6 privk:0x7efdc44c5020::7efdc44c5020  e5 e5 e5 e5                                      ....
  1129 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1129 ms     | 0x2ab6 privk:0x7efdc44c3020::7efdc44c3020  e0 e7 dd c4                                      ....
  1129 ms     | 0x2ab6 privk:0x7efdc44c3020::7efdc44c3020  e5 e5 e5 e5                                      ....
