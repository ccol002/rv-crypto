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
  1863 ms  0x2ab6 SSL_ImportFD()
  1863 ms  0x2ab6 ret:0x7efdc5ec8df0
  1863 ms  0x2ab6 SSL_AuthCertificateHook()
  1863 ms  0x2ab6 fd:0x7efdc5ec8df0
  1863 ms  0x2ab6 ret:0x0
  1863 ms  0x2ab6 PR_Connect()
  1863 ms  0x2ab6 fd:0x7efdc5ec8df0
  2018 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  2018 ms  0x2ab6 cx:0x7efdbf5860a8
  2019 ms     | 0x2ab6 EC_ValidatePublicKey()
  2019 ms     | 0x2ab6 ret:0x0
  2019 ms  0x2ab6 ret:0x7efdba4a2820::7efdba4a2820  50 7b 6e ba                                      P{n.
  2019 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  2019 ms  0x2ab6 cx:0x7efdbf5860a8
  2022 ms     | 0x2ab6 EC_ValidatePublicKey()
  2026 ms     | 0x2ab6 ret:0x0
  2026 ms  0x2ab6 ret:0x7efdba4a4820::7efdba4a4820  d0 73 a0 bb                                      .s..
  2181 ms  SECKEY_ECParamsToKeySize()
  2181 ms  0x2ab6 ret:0x100
  2181 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  2181 ms  0x2ab6 cx:0x7efdbf5860a8
  2182 ms     | 0x2ab6 EC_ValidatePublicKey()
  2185 ms     | 0x2ab6 ret:0x0
           /* TID 0x2c2d */
  2186 ms  0x2c2d CERT_VerifySignedDataWithPublicKeyInfo()
  2186 ms     | 0x2c2d CERT_VerifySignedDataWithPublicKey()
           /* TID 0x2ab6 */
  2187 ms  0x2ab6 ret:0x7efdba4a7020::7efdba4a7020  90 8c 3f bf                                      ..?.
  2187 ms  0x2ab6 PK11_PubDeriveWithKDF()
  2187 ms  0x2ab6 seckey:0x7efdba4a7020
  2187 ms     | 0x2ab6 EC_ValidatePublicKey()
  2192 ms     | 0x2ab6 ret:0x0
  2195 ms  0x2ab6 ret:0x7efdbe15da00
  2195 ms  0x2ab6 PK11_DeriveWithFlags()
  2195 ms  0x2ab6 basekey:0x7efdbe15da00
  2195 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  2195 ms  0x2ab6 ret:0x7efdbe1d0e00
  2195 ms  0x2ab6 PK11_Derive()
  2195 ms  0x2ab6 basekey:0x7efdbe1d0e00
  2195 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  2195 ms  0x2ab6 ret:0x7efdbe1d0f00
  2195 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  2195 ms  0x2ab6 privk:0x7efdba4a7020::7efdba4a7020  90 8c 3f bf                                      ..?.
  2195 ms  0x2ab6 privk:0x7efdba4a7020::7efdba4a7020  e5 e5 e5 e5                                      ....
  2195 ms  0x2ab6 PK11_Encrypt()
  2195 ms  0x2ab6 symkey:0x7efdba2fcd00
  2198 ms  0x2ab6 SSL_AuthCertificateComplete()
  2198 ms  0x2ab6 fd:0x7efdc5ec8df0
  2198 ms  0x2ab6 err:0xffffc00e
  2198 ms     | 0x2ab6 PK11_Encrypt()
  2198 ms     | 0x2ab6 symkey:0x7efdba2fcd00
  2207 ms  0x2ab6 PR_Close()
  2207 ms  0x2ab6 fd:0x7efdc5ec8df0
  2208 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  2208 ms     | 0x2ab6 privk:0x7efdba4a4820::7efdba4a4820  d0 73 a0 bb                                      .s..
  2209 ms     | 0x2ab6 privk:0x7efdba4a4820::7efdba4a4820  e5 e5 e5 e5                                      ....
  2209 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  2209 ms     | 0x2ab6 privk:0x7efdba4a2820::7efdba4a2820  50 7b 6e ba                                      P{n.
  2209 ms     | 0x2ab6 privk:0x7efdba4a2820::7efdba4a2820  e5 e5 e5 e5                                      ....
