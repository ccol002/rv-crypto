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
  4224 ms  0x2ab6 SSL_ImportFD()
  4225 ms  0x2ab6 ret:0x7efdbe1bc5b0
  4225 ms  0x2ab6 SSL_AuthCertificateHook()
  4225 ms  0x2ab6 fd:0x7efdbe1bc5b0
  4225 ms  0x2ab6 ret:0x0
  4225 ms  0x2ab6 PR_Connect()
  4225 ms  0x2ab6 fd:0x7efdbe1bc5b0
  4251 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  4251 ms  0x2ab6 cx:0x7efdbf67cf48
  4253 ms     | 0x2ab6 EC_ValidatePublicKey()
  4253 ms     | 0x2ab6 ret:0x0
  4253 ms  0x2ab6 ret:0x7efdc4673820::7efdc4673820  a0 a1 42 c4                                      ..B.
  4253 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  4253 ms  0x2ab6 cx:0x7efdbf67cf48
  4256 ms     | 0x2ab6 EC_ValidatePublicKey()
  4261 ms     | 0x2ab6 ret:0x0
  4261 ms  0x2ab6 ret:0x7efdc4675820::7efdc4675820  f0 f1 68 c4                                      ..h.
           /* TID 0x2c2d */
  4315 ms  0x2c2d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4315 ms  0x2c2d ret:0x0
           /* TID 0x2ab6 */
  4316 ms  SECKEY_ECParamsToKeySize()
  4316 ms  0x2ab6 ret:0x100
  4316 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  4316 ms  0x2ab6 cx:0x7efdbf67cf48
  4318 ms     | 0x2ab6 EC_ValidatePublicKey()
  4323 ms     | 0x2ab6 ret:0x0
  4323 ms  0x2ab6 ret:0x7efdc4678820::7efdc4678820  c0 f4 68 c4                                      ..h.
  4323 ms  0x2ab6 PK11_PubDeriveWithKDF()
  4323 ms  0x2ab6 seckey:0x7efdc4678820
  4324 ms     | 0x2ab6 EC_ValidatePublicKey()
  4328 ms     | 0x2ab6 ret:0x0
  4333 ms  0x2ab6 ret:0x7efdbe1d0f00
  4333 ms  0x2ab6 PK11_DeriveWithFlags()
  4333 ms  0x2ab6 basekey:0x7efdbe1d0f00
  4333 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  4333 ms  0x2ab6 ret:0x7efdb5e06d80
  4333 ms  0x2ab6 PK11_Derive()
  4333 ms  0x2ab6 basekey:0x7efdb5e06d80
  4333 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  4334 ms  0x2ab6 ret:0x7efdba6fd680
  4334 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  4334 ms  0x2ab6 privk:0x7efdc4678820::7efdc4678820  c0 f4 68 c4                                      ..h.
  4334 ms  0x2ab6 privk:0x7efdc4678820::7efdc4678820  e5 e5 e5 e5                                      ....
  4334 ms  0x2ab6 PK11_Encrypt()
  4334 ms  0x2ab6 symkey:0x7efdbe408580
  4334 ms  0x2ab6 SSL_AuthCertificateComplete()
  4334 ms  0x2ab6 fd:0x7efdbe1bc5b0
  4334 ms  0x2ab6 err:0x0
  4335 ms  0x2ab6 PK11_Encrypt()
  4335 ms  0x2ab6 symkey:0x7efdbe408580
  4387 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  4387 ms  0x2ab6 privk:0x7efdc4675820::7efdc4675820  f0 f1 68 c4                                      ..h.
  4387 ms  0x2ab6 privk:0x7efdc4675820::7efdc4675820  e5 e5 e5 e5                                      ....
  4387 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  4387 ms  0x2ab6 privk:0x7efdc4673820::7efdc4673820  a0 a1 42 c4                                      ..B.
  4388 ms  0x2ab6 privk:0x7efdc4673820::7efdc4673820  e5 e5 e5 e5                                      ....
           /* TID 0x2cf9 */
  4676 ms  0x2cf9 PR_Close()
  4676 ms  0x2cf9 fd:0x7efdbe1bc4f0
  4678 ms  0x2cf9 PR_Close()
  4678 ms  0x2cf9 fd:0x7efdbe1bc4f0
           /* TID 0x2ab6 */
  6224 ms  0x2ab6 SSL_ImportFD()
  6224 ms  0x2ab6 ret:0x7efdbe1bce20
  6224 ms  0x2ab6 SSL_AuthCertificateHook()
  6224 ms  0x2ab6 fd:0x7efdbe1bce20
  6225 ms  0x2ab6 ret:0x0
  6225 ms  0x2ab6 PR_Connect()
  6225 ms  0x2ab6 fd:0x7efdbe1bce20
  6380 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6380 ms  0x2ab6 cx:0x7efdbf67d288
  6381 ms     | 0x2ab6 EC_ValidatePublicKey()
  6381 ms     | 0x2ab6 ret:0x0
  6382 ms  0x2ab6 ret:0x7efdc4674820::7efdc4674820  50 b6 6c c4                                      P.l.
  6382 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6382 ms  0x2ab6 cx:0x7efdbf67d288
  6384 ms     | 0x2ab6 EC_ValidatePublicKey()
  6395 ms     | 0x2ab6 ret:0x0
  6395 ms  0x2ab6 ret:0x7efdc4677820::7efdc4677820  00 bb 6c c4                                      ..l.
  6552 ms  SECKEY_ECParamsToKeySize()
  6552 ms  0x2ab6 ret:0x100
  6553 ms  0x2ab6 SECKEY_CreateECPrivateKey()
  6553 ms  0x2ab6 cx:0x7efdbf67d288
  6554 ms     | 0x2ab6 EC_ValidatePublicKey()
  6565 ms     | 0x2ab6 ret:0x0
  6566 ms  0x2ab6 ret:0x7efdc467a020::7efdc467a020  40 37 6e c4                                      @7n.
  6566 ms  0x2ab6 PK11_PubDeriveWithKDF()
  6566 ms  0x2ab6 seckey:0x7efdc467a020
  6566 ms     | 0x2ab6 EC_ValidatePublicKey()
  6575 ms     | 0x2ab6 ret:0x0
  6579 ms  0x2ab6 ret:0x7efdbe1d0f00
  6579 ms  0x2ab6 PK11_DeriveWithFlags()
  6579 ms  0x2ab6 basekey:0x7efdbe1d0f00
  6579 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  6579 ms  0x2ab6 ret:0x7efdbe1d0e00
  6579 ms  0x2ab6 PK11_Derive()
  6579 ms  0x2ab6 basekey:0x7efdbe1d0e00
  6579 ms     | 0x2ab6 PK11_DeriveWithTemplate()
  6579 ms  0x2ab6 ret:0x7efdbe15da00
  6579 ms  0x2ab6 SECKEY_DestroyPrivateKey()
  6579 ms  0x2ab6 privk:0x7efdc467a020::7efdc467a020  40 37 6e c4                                      @7n.
  6580 ms  0x2ab6 privk:0x7efdc467a020::7efdc467a020  e5 e5 e5 e5                                      ....
  6580 ms  0x2ab6 PK11_Encrypt()
  6580 ms  0x2ab6 symkey:0x7efdba2fcc80
  6580 ms  0x2ab6 SSL_AuthCertificateComplete()
  6580 ms  0x2ab6 fd:0x7efdbe1bce20
  6580 ms  0x2ab6 err:0xffffe00d
  6580 ms     | 0x2ab6 PK11_Encrypt()
  6580 ms     | 0x2ab6 symkey:0x7efdba2fcc80
  6589 ms  0x2ab6 PR_Close()
  6589 ms  0x2ab6 fd:0x7efdbe1bce20
  6589 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  6589 ms     | 0x2ab6 privk:0x7efdc4677820::7efdc4677820  00 bb 6c c4                                      ..l.
  6589 ms     | 0x2ab6 privk:0x7efdc4677820::7efdc4677820  e5 e5 e5 e5                                      ....
  6589 ms     | 0x2ab6 SECKEY_DestroyPrivateKey()
  6589 ms     | 0x2ab6 privk:0x7efdc4674820::7efdc4674820  50 b6 6c c4                                      P.l.
  6589 ms     | 0x2ab6 privk:0x7efdc4674820::7efdc4674820  e5 e5 e5 e5                                      ....
