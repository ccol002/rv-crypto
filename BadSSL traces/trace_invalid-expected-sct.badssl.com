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
   836 ms  0x2ab6 SSL_ImportFD()
   836 ms  0x2ab6 ret:0x7efdbff07970
   837 ms  0x2ab6 SSL_AuthCertificateHook()
   837 ms  0x2ab6 fd:0x7efdbff07970
   837 ms  0x2ab6 ret:0x0
   837 ms  0x2ab6 PR_Connect()
   837 ms  0x2ab6 fd:0x7efdbff07970
   995 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   995 ms  0x2ab6 cx:0x7efdbf5897e8
   996 ms     | 0x2ab6 EC_ValidatePublicKey()
   996 ms     | 0x2ab6 ret:0x0
   996 ms  0x2ab6 ret:0x7efdc92c3020::7efdc92c3020  a0 5b 69 ba                                      .[i.
   997 ms  0x2ab6 SECKEY_CreateECPrivateKey()
   997 ms  0x2ab6 cx:0x7efdbf5897e8
   998 ms     | 0x2ab6 EC_ValidatePublicKey()
  1001 ms     | 0x2ab6 ret:0x0
  1001 ms  0x2ab6 ret:0x7efdcc299820::7efdcc299820  80 73 c6 bb                                      .s..
  1161 ms  SECKEY_ECParamsToKeySize()
  1161 ms  0x2ab6 ret:0x100
  1161 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  1161 ms  0x2ab6 cx:0x7efdbf5897e8
  1162 ms     | 0x2ab6 EC_ValidatePublicKey()
  1165 ms     | 0x2ab6 ret:0x0
  1167 ms  0x2ab6 ret:0x7efdcc2a1820::7efdcc2a1820  d0 b8 52 bf                                      ..R.
  1167 ms  0x2ab6 PK11_PubDeriveWithKDF()
  1167 ms  0x2ab6 seckey:0x7efdcc2a1820
  1167 ms     | 0x2ab6 EC_ValidatePublicKey()
  1169 ms     | 0x2ab6 ret:0x0
  1171 ms  0x2ab6 ret:0x7efdbe15da00
  1171 ms  0x2ab6 PK11_DeriveWithFlags()
  1171 ms  0x2ab6 basekey:0x7efdbe15da00
  1171 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1171 ms  0x2ab6 ret:0x7efdbe409a80
  1171 ms  0x2ab6 PK11_Derive()
  1171 ms  0x2ab6 basekey:0x7efdbe409a80
  1171 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  1171 ms  0x2ab6 ret:0x7efdbe1d0f80
  1171 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  1171 ms  0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  d0 b8 52 bf                                      ..R.
  1171 ms  0x2ab6 privk:0x7efdcc2a1820::7efdcc2a1820  e5 e5 e5 e5                                      ....
  1172 ms  0x2ab6 PK11_Encrypt()
  1172 ms  0x2ab6 symkey:0x7efdbe4eab80
  1173 ms  0x2ab6 SSL_AuthCertificateComplete()
  1173 ms  0x2ab6 fd:0x7efdbff07970
  1173 ms  0x2ab6 err:0xffffc00d
  1173 ms     | 0x2ab6 PK11_Encrypt()
  1173 ms     | 0x2ab6 symkey:0x7efdbe4eab80
  1182 ms  0x2ab6 PR_Close()
  1182 ms  0x2ab6 fd:0x7efdbff07970
  1184 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1184 ms     | 0x2ab6 privk:0x7efdcc299820::7efdcc299820  80 73 c6 bb                                      .s..
  1184 ms     | 0x2ab6 privk:0x7efdcc299820::7efdcc299820  e5 e5 e5 e5                                      ....
  1184 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  1184 ms     | 0x2ab6 privk:0x7efdc92c3020::7efdc92c3020  a0 5b 69 ba                                      .[i.
  1184 ms     | 0x2ab6 privk:0x7efdc92c3020::7efdc92c3020  e5 e5 e5 e5                                      ....
