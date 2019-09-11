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
           /* TID 0x1ddb */
    47 ms  0x1ddb PR_Close()
    47 ms  0x1ddb fd:0x7fb2d0a31be0
           /* TID 0x1dd3 */
   192 ms  0x1dd3 SSL_ImportFD()
   192 ms  0x1dd3 ret:0x7fb2dfe38730
   192 ms  0x1dd3 SSL_AuthCertificateHook()
   192 ms  0x1dd3 fd:0x7fb2dfe38730
   192 ms  0x1dd3 ret:0x0
   193 ms  0x1dd3 PR_Connect()
   193 ms  0x1dd3 fd:0x7fb2dfe38730
   219 ms  0x1dd3 SECKEY_CreateECPrivateKey()
   219 ms  0x1dd3 cx:0x7fb2d0a3be28
   220 ms     | 0x1dd3 EC_ValidatePublicKey()
   220 ms     | 0x1dd3 ret:0x0
   220 ms  0x1dd3 ret:0x7fb2d0a1d820::7fb2d0a1d820  60 7a ac d0                                      `z..
   221 ms  0x1dd3 SECKEY_CreateECPrivateKey()
   221 ms  0x1dd3 cx:0x7fb2d0a3be28
   222 ms     | 0x1dd3 EC_ValidatePublicKey()
   226 ms     | 0x1dd3 ret:0x0
   226 ms  0x1dd3 ret:0x7fb2d0a1f820::7fb2d0a1f820  40 7c ac d0                                      @|..
           /* TID 0x1e2c */
   280 ms  0x1e2c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   280 ms  0x1e2c ret:0x0
           /* TID 0x1dd3 */
   280 ms  SECKEY_ECParamsToKeySize()
   281 ms  0x1dd3 ret:0x100
   281 ms  0x1dd3 SECKEY_CreateECPrivateKey()
   281 ms  0x1dd3 cx:0x7fb2d0a3be28
   282 ms     | 0x1dd3 EC_ValidatePublicKey()
   287 ms     | 0x1dd3 ret:0x0
   287 ms  0x1dd3 ret:0x7fb2d0a22820::7fb2d0a22820  c0 7e ac d0                                      .~..
   287 ms  0x1dd3 PK11_PubDeriveWithKDF()
   287 ms  0x1dd3 seckey:0x7fb2d0a22820
   287 ms     | 0x1dd3 EC_ValidatePublicKey()
   291 ms     | 0x1dd3 ret:0x0
   294 ms  0x1dd3 ret:0x7fb2d2743080
   294 ms  0x1dd3 PK11_DeriveWithFlags()
   294 ms  0x1dd3 basekey:0x7fb2d2743080
   295 ms     | 0x1dd3 PK11_DeriveWithTemplate()
   295 ms  0x1dd3 ret:0x7fb2d1735000
   295 ms  0x1dd3 PK11_Derive()
   295 ms  0x1dd3 basekey:0x7fb2d1735000
   295 ms     | 0x1dd3 PK11_DeriveWithTemplate()
   295 ms  0x1dd3 ret:0x7fb2dfe37000
   295 ms  0x1dd3 SECKEY_DestroyPrivateKey()
   295 ms  0x1dd3 privk:0x7fb2d0a22820::7fb2d0a22820  c0 7e ac d0                                      .~..
   295 ms  0x1dd3 privk:0x7fb2d0a22820::7fb2d0a22820  e5 e5 e5 e5                                      ....
   295 ms  0x1dd3 PK11_Encrypt()
   295 ms  0x1dd3 symkey:0x7fb2dfe37500
   296 ms  0x1dd3 SSL_AuthCertificateComplete()
   296 ms  0x1dd3 fd:0x7fb2dfe38730
   296 ms  0x1dd3 err:0x0
   296 ms  0x1dd3 PK11_Encrypt()
   296 ms  0x1dd3 symkey:0x7fb2dfe37500
   347 ms  0x1dd3 SECKEY_DestroyPrivateKey()
   347 ms  0x1dd3 privk:0x7fb2d0a1f820::7fb2d0a1f820  40 7c ac d0                                      @|..
   348 ms  0x1dd3 privk:0x7fb2d0a1f820::7fb2d0a1f820  e5 e5 e5 e5                                      ....
   348 ms  0x1dd3 SECKEY_DestroyPrivateKey()
   348 ms  0x1dd3 privk:0x7fb2d0a1d820::7fb2d0a1d820  60 7a ac d0                                      `z..
   348 ms  0x1dd3 privk:0x7fb2d0a1d820::7fb2d0a1d820  e5 e5 e5 e5                                      ....
   352 ms  0x1dd3 PK11_Encrypt()
   352 ms  0x1dd3 symkey:0x7fb2dfe37500
   381 ms  0x1dd3 PK11_Encrypt()
   381 ms  0x1dd3 symkey:0x7fb2dfe37500
   412 ms  0x1dd3 PK11_Encrypt()
   412 ms  0x1dd3 symkey:0x7fb2dfe37500
   442 ms  0x1dd3 PK11_Encrypt()
   442 ms  0x1dd3 symkey:0x7fb2dfe37500
   557 ms  0x1dd3 PK11_Encrypt()
   557 ms  0x1dd3 symkey:0x7fb2dfe37500
           /* TID 0x1de0 */
   561 ms  0x1de0 PR_Close()
   561 ms  0x1de0 fd:0x7fb2dfe38940
   563 ms  0x1de0 PR_Close()
   563 ms  0x1de0 fd:0x7fb2dfe38940
           /* TID 0x1dd3 */
   590 ms  0x1dd3 PK11_Encrypt()
   590 ms  0x1dd3 symkey:0x7fb2dfe37500
   621 ms  0x1dd3 PK11_Encrypt()
   621 ms  0x1dd3 symkey:0x7fb2dfe37500
           /* TID 0x1e26 */
   651 ms  0x1e26 PR_Close()
   651 ms  0x1e26 fd:0x7fb2d103c100
   651 ms  0x1e26 PR_Close()
   651 ms  0x1e26 fd:0x7fb2d103c160
   651 ms  0x1e26 PR_Close()
   651 ms  0x1e26 fd:0x7fb2d103c100
   651 ms  0x1e26 PR_Close()
   651 ms  0x1e26 fd:0x7fb2d103c160
   651 ms  0x1e26 PR_Close()
   651 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c100
   652 ms  0x1e26 PR_Close()
   652 ms  0x1e26 fd:0x7fb2d103c160
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c100
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c160
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c100
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c160
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c100
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c160
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c100
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c160
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c100
   653 ms  0x1e26 PR_Close()
   653 ms  0x1e26 fd:0x7fb2d103c160
   656 ms  0x1e26 PR_Close()
   656 ms  0x1e26 fd:0x7fb2d103c100
   656 ms  0x1e26 PR_Close()
   656 ms  0x1e26 fd:0x7fb2d103c100
   658 ms  0x1e26 PR_Close()
   658 ms  0x1e26 fd:0x7fb2d103c100
   659 ms  0x1e26 PR_Close()
   659 ms  0x1e26 fd:0x7fb2d103c130
   661 ms  0x1e26 PR_Close()
   661 ms  0x1e26 fd:0x7fb2d103c130
   661 ms  0x1e26 PR_Close()
   661 ms  0x1e26 fd:0x7fb2d103c130
   663 ms  0x1e26 PR_Close()
   663 ms  0x1e26 fd:0x7fb2d103c130
   663 ms  0x1e26 PR_Close()
   663 ms  0x1e26 fd:0x7fb2d103c130
   718 ms  0x1e26 PR_Close()
   718 ms  0x1e26 fd:0x7fb2d103c130
   719 ms  0x1e26 PR_Close()
   719 ms  0x1e26 fd:0x7fb2d103c130
   726 ms  0x1e26 PR_Close()
   726 ms  0x1e26 fd:0x7fb2d103c130
   727 ms  0x1e26 PR_Close()
   727 ms  0x1e26 fd:0x7fb2d103c130
   733 ms  0x1e26 PR_Close()
   733 ms  0x1e26 fd:0x7fb2d103c130
   733 ms  0x1e26 PR_Close()
   733 ms  0x1e26 fd:0x7fb2d103c130
   735 ms  0x1e26 PR_Close()
   735 ms  0x1e26 fd:0x7fb2d103c130
   735 ms  0x1e26 PR_Close()
   735 ms  0x1e26 fd:0x7fb2d103c130
           /* TID 0x1e23 */
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   735 ms  0x1e23 PR_Close()
   735 ms  0x1e23 fd:0x7fb2d103c130
   736 ms  0x1e23 PR_Close()
   736 ms  0x1e23 fd:0x7fb2d103c130
           /* TID 0x1de0 */
   815 ms  0x1de0 PR_Close()
   815 ms  0x1de0 fd:0x7fb2d103c190
  1238 ms  0x1de0 PR_Close()
  1238 ms  0x1de0 fd:0x7fb2d103c1c0
  1241 ms  0x1de0 PR_Close()
  1241 ms  0x1de0 fd:0x7fb2d103c1c0
  2375 ms  0x1de0 PR_Close()
  2375 ms  0x1de0 fd:0x7fb2d103c670
           /* TID 0x1ddb */
  4177 ms  0x1ddb PR_Close()
  4177 ms  0x1ddb fd:0x7fb2d103c670
  4177 ms  0x1ddb PR_Close()
  4177 ms  0x1ddb fd:0x7fb2d103c6d0
  4177 ms  0x1ddb PR_Close()
  4177 ms  0x1ddb fd:0x7fb2d103c730
           /* TID 0x1dd3 */
  5155 ms  0x1dd3 SSL_ImportFD()
  5155 ms  0x1dd3 ret:0x7fb2d1ee2700
  5155 ms  0x1dd3 SSL_AuthCertificateHook()
  5155 ms  0x1dd3 fd:0x7fb2d1ee2700
  5155 ms  0x1dd3 ret:0x0
  5155 ms  0x1dd3 PR_Connect()
  5155 ms  0x1dd3 fd:0x7fb2d1ee2700
  5214 ms  0x1dd3 SECKEY_CreateECPrivateKey()
  5214 ms  0x1dd3 cx:0x7fb2bfd268c8
  5216 ms     | 0x1dd3 EC_ValidatePublicKey()
  5216 ms     | 0x1dd3 ret:0x0
  5216 ms  0x1dd3 ret:0x7fb2bfb1f020::7fb2bfb1f020  80 d8 1a d2                                      ....
  5216 ms  0x1dd3 SECKEY_CreateECPrivateKey()
  5216 ms  0x1dd3 cx:0x7fb2bfd268c8
  5218 ms     | 0x1dd3 EC_ValidatePublicKey()
  5225 ms     | 0x1dd3 ret:0x0
  5225 ms  0x1dd3 ret:0x7fb2bfb21020::7fb2bfb21020  a0 d6 1a d2                                      ....
           /* TID 0x1e2c */
  5295 ms  SECKEY_ECParamsToBasePointOrderLen()
  5295 ms  0x1e2c ret:0x180
  5295 ms  SECKEY_ECParamsToBasePointOrderLen()
  5295 ms  0x1e2c ret:0x180
  5295 ms  0x1e2c EC_ValidatePublicKey()
           /* TID 0x1dd3 */
  5300 ms  SECKEY_ECParamsToKeySize()
  5300 ms  0x1dd3 ret:0x100
  5300 ms  SECKEY_ECParamsToBasePointOrderLen()
  5300 ms  0x1dd3 ret:0x100
  5300 ms  SECKEY_ECParamsToBasePointOrderLen()
  5300 ms  0x1dd3 ret:0x100
           /* TID 0x1e2c */
  5301 ms  0x1e2c ret:0x0
           /* TID 0x1dd3 */
  5301 ms  0x1dd3 EC_ValidatePublicKey()
  5306 ms  0x1dd3 ret:0x0
           /* TID 0x1e2c */
  5318 ms  0x1e2c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5318 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5318 ms     | 0x1e2c ret:0x180
  5318 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5318 ms     | 0x1e2c ret:0x180
  5318 ms     | 0x1e2c EC_ValidatePublicKey()
  5325 ms     | 0x1e2c ret:0x0
           /* TID 0x1dd3 */
  5325 ms  SECKEY_ECParamsToKeySize()
  5325 ms  0x1dd3 ret:0x100
  5325 ms  0x1dd3 SECKEY_CreateECPrivateKey()
  5325 ms  0x1dd3 cx:0x7fb2bfd268c8
  5326 ms     | 0x1dd3 EC_ValidatePublicKey()
  5329 ms     | 0x1dd3 ret:0x0
  5329 ms  0x1dd3 ret:0x7fb2bfb2c820::7fb2bfb2c820  60 10 ca bf                                      `...
  5329 ms  0x1dd3 PK11_PubDeriveWithKDF()
  5329 ms  0x1dd3 seckey:0x7fb2bfb2c820
  5329 ms     | 0x1dd3 EC_ValidatePublicKey()
           /* TID 0x1e2c */
  5335 ms  0x1e2c ret:0x0
           /* TID 0x1dd3 */
  5337 ms     | 0x1dd3 ret:0x0
  5339 ms  0x1dd3 ret:0x7fb2d2743080
  5339 ms  0x1dd3 PK11_DeriveWithFlags()
  5339 ms  0x1dd3 basekey:0x7fb2d2743080
  5339 ms     | 0x1dd3 PK11_DeriveWithTemplate()
  5339 ms  0x1dd3 ret:0x7fb2d21a9b00
  5339 ms  0x1dd3 PK11_Derive()
  5339 ms  0x1dd3 basekey:0x7fb2d21a9b00
  5339 ms     | 0x1dd3 PK11_DeriveWithTemplate()
  5339 ms  0x1dd3 ret:0x7fb2d21a9c00
  5339 ms  0x1dd3 SECKEY_DestroyPrivateKey()
  5339 ms  0x1dd3 privk:0x7fb2bfb2c820::7fb2bfb2c820  60 10 ca bf                                      `...
  5339 ms  0x1dd3 privk:0x7fb2bfb2c820::7fb2bfb2c820  e5 e5 e5 e5                                      ....
  5340 ms  0x1dd3 PK11_Encrypt()
  5340 ms  0x1dd3 symkey:0x7fb2d21aa080
  5340 ms  0x1dd3 SSL_AuthCertificateComplete()
  5340 ms  0x1dd3 fd:0x7fb2d1ee2700
  5340 ms  0x1dd3 err:0x0
  5341 ms  0x1dd3 PK11_Encrypt()
  5341 ms  0x1dd3 symkey:0x7fb2d21aa080
  5399 ms  0x1dd3 SECKEY_DestroyPrivateKey()
  5399 ms  0x1dd3 privk:0x7fb2bfb21020::7fb2bfb21020  a0 d6 1a d2                                      ....
  5399 ms  0x1dd3 privk:0x7fb2bfb21020::7fb2bfb21020  e5 e5 e5 e5                                      ....
  5399 ms  0x1dd3 SECKEY_DestroyPrivateKey()
  5399 ms  0x1dd3 privk:0x7fb2bfb1f020::7fb2bfb1f020  80 d8 1a d2                                      ....
  5399 ms  0x1dd3 privk:0x7fb2bfb1f020::7fb2bfb1f020  e5 e5 e5 e5                                      ....
           /* TID 0x1ddb */
  9398 ms  0x1ddb PR_Close()
  9398 ms  0x1ddb fd:0x7fb2d0a43a00
  9398 ms  0x1ddb PR_Close()
  9398 ms  0x1ddb fd:0x7fb2d0a43a00
           /* TID 0x1dd3 */
 19194 ms  0x1dd3 SSL_ImportFD()
 19194 ms  0x1dd3 ret:0x7fb2d1ec7d60
 19194 ms  0x1dd3 SSL_AuthCertificateHook()
 19194 ms  0x1dd3 fd:0x7fb2d1ec7d60
 19195 ms  0x1dd3 ret:0x0
 19195 ms  0x1dd3 PR_Connect()
 19195 ms  0x1dd3 fd:0x7fb2d1ec7d60
 19407 ms  0x1dd3 SECKEY_CreateECPrivateKey()
 19407 ms  0x1dd3 cx:0x7fb2bfd27908
 19409 ms     | 0x1dd3 EC_ValidatePublicKey()
 19409 ms     | 0x1dd3 ret:0x0
 19410 ms  0x1dd3 ret:0x7fb2d0a0a020::7fb2d0a0a020  d0 2d a3 d0                                      .-..
 19410 ms  0x1dd3 SECKEY_CreateECPrivateKey()
 19410 ms  0x1dd3 cx:0x7fb2bfd27908
 19412 ms     | 0x1dd3 EC_ValidatePublicKey()
 19418 ms     | 0x1dd3 ret:0x0
 19418 ms  0x1dd3 ret:0x7fb2d0a0c020::7fb2d0a0c020  10 2f a3 d0                                      ./..
           /* TID 0x1de0 */
 19486 ms  0x1de0 PR_Close()
 19486 ms  0x1de0 fd:0x7fb2d1ec7c10
 19489 ms  0x1de0 PR_Close()
 19489 ms  0x1de0 fd:0x7fb2d1ec7c10
           /* TID 0x1dd3 */
 19638 ms  SECKEY_ECParamsToKeySize()
 19639 ms  0x1dd3 ret:0x100
 19639 ms  0x1dd3 SECKEY_CreateECPrivateKey()
 19639 ms  0x1dd3 cx:0x7fb2bfd27908
 19641 ms     | 0x1dd3 EC_ValidatePublicKey()
 19647 ms     | 0x1dd3 ret:0x0
 19647 ms  0x1dd3 ret:0x7fb2d0a15820::7fb2d0a15820  10 95 a4 d0                                      ....
 19647 ms  0x1dd3 PK11_PubDeriveWithKDF()
 19647 ms  0x1dd3 seckey:0x7fb2d0a15820
 19647 ms     | 0x1dd3 EC_ValidatePublicKey()
 19653 ms     | 0x1dd3 ret:0x0
 19658 ms  0x1dd3 ret:0x7fb2d2743080
 19658 ms  0x1dd3 PK11_DeriveWithFlags()
 19658 ms  0x1dd3 basekey:0x7fb2d2743080
 19658 ms     | 0x1dd3 PK11_DeriveWithTemplate()
 19658 ms  0x1dd3 ret:0x7fb2d0a46f80
 19658 ms  0x1dd3 PK11_Derive()
 19658 ms  0x1dd3 basekey:0x7fb2d0a46f80
 19658 ms     | 0x1dd3 PK11_DeriveWithTemplate()
 19658 ms  0x1dd3 ret:0x7fb2d0aa0080
 19658 ms  0x1dd3 SECKEY_DestroyPrivateKey()
 19658 ms  0x1dd3 privk:0x7fb2d0a15820::7fb2d0a15820  10 95 a4 d0                                      ....
 19658 ms  0x1dd3 privk:0x7fb2d0a15820::7fb2d0a15820  e5 e5 e5 e5                                      ....
 19659 ms  0x1dd3 PK11_Encrypt()
 19659 ms  0x1dd3 symkey:0x7fb2d0aa0200
           /* TID 0x1ddb */
 19686 ms  0x1ddb PR_Close()
 19686 ms  0x1ddb fd:0x7fb2d1ec7c70
           /* TID 0x1e2c */
 19686 ms  0x1e2c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19687 ms  0x1e2c ret:0x0
           /* TID 0x1dd3 */
 19687 ms  0x1dd3 SSL_AuthCertificateComplete()
 19687 ms  0x1dd3 fd:0x7fb2d1ec7d60
 19687 ms  0x1dd3 err:0x0
 19687 ms  0x1dd3 PK11_Encrypt()
 19687 ms  0x1dd3 symkey:0x7fb2d0aa0200
 19872 ms  0x1dd3 SECKEY_DestroyPrivateKey()
 19872 ms  0x1dd3 privk:0x7fb2d0a0c020::7fb2d0a0c020  10 2f a3 d0                                      ./..
 19872 ms  0x1dd3 privk:0x7fb2d0a0c020::7fb2d0a0c020  e5 e5 e5 e5                                      ....
 19872 ms  0x1dd3 SECKEY_DestroyPrivateKey()
 19872 ms  0x1dd3 privk:0x7fb2d0a0a020::7fb2d0a0a020  d0 2d a3 d0                                      .-..
 19872 ms  0x1dd3 privk:0x7fb2d0a0a020::7fb2d0a0a020  e5 e5 e5 e5                                      ....
 20086 ms  0x1dd3 PK11_Encrypt()
 20086 ms  0x1dd3 symkey:0x7fb2d0aa0200
 20314 ms  0x1dd3 PK11_Encrypt()
 20314 ms  0x1dd3 symkey:0x7fb2d0aa0200
           /* TID 0x1de0 */
 20499 ms  0x1de0 PR_Close()
 20499 ms  0x1de0 fd:0x7fb2d21de310
 20813 ms  0x1de0 PR_Close()
 20813 ms  0x1de0 fd:0x7fb2d0ab19d0
 20816 ms  0x1de0 PR_Close()
 20816 ms  0x1de0 fd:0x7fb2d0ab19d0
 28135 ms  0x1de0 PR_Close()
 28135 ms  0x1de0 fd:0x7fb2d21de700
 28294 ms  0x1de0 PR_Close()
 28294 ms  0x1de0 fd:0x7fb2d21de700
 29374 ms  0x1de0 PR_Close()
 29374 ms  0x1de0 fd:0x7fb2d21de700
 29377 ms  0x1de0 PR_Close()
 29377 ms  0x1de0 fd:0x7fb2d21de700
 57619 ms  0x1de0 PR_Close()
 57619 ms  0x1de0 fd:0x7fb2d1ee2e20
 57623 ms  0x1de0 PR_Close()
 57623 ms  0x1de0 fd:0x7fb2d1ee2e80
 57639 ms  0x1de0 PR_Close()
 57639 ms  0x1de0 fd:0x7fb2d21de880
 57648 ms  0x1de0 PR_Close()
 57648 ms  0x1de0 fd:0x7fb2d21dee20
 58118 ms  0x1de0 PR_Close()
 58118 ms  0x1de0 fd:0x7fb2d1ee2e20
 58184 ms  0x1de0 PR_Close()
 58184 ms  0x1de0 fd:0x7fb2d1ee2e20
           /* TID 0x1dd3 */
 58991 ms  0x1dd3 PR_Connect()
 58991 ms  0x1dd3 fd:0x7fb2d23e3580
 60105 ms  0x1dd3 PR_Close()
 60105 ms  0x1dd3 fd:0x7fb2d1ec7e50
 60106 ms     | 0x1dd3 PK11_Encrypt()
 60106 ms     | 0x1dd3 symkey:0x7fb2d0dd2f00
 61179 ms  0x1dd3 PR_Close()
 61179 ms  0x1dd3 fd:0x7fb2d23fcc10
 61179 ms     | 0x1dd3 PK11_Encrypt()
 61179 ms     | 0x1dd3 symkey:0x7fb2d1734e00
           /* TID 0x1de0 */
 64883 ms  0x1de0 PR_Close()
 64883 ms  0x1de0 fd:0x7fb2d0e89040
 64886 ms  0x1de0 PR_Close()
 64886 ms  0x1de0 fd:0x7fb2d0e89040
           /* TID 0x1deb */
 75902 ms  0x1deb PR_Close()
 75902 ms  0x1deb fd:0x7fb2d1ee2e50
           /* TID 0x1dd3 */
 75975 ms  0x1dd3 PK11_Encrypt()
 75975 ms  0x1dd3 symkey:0x7fb2d21aa080
 75983 ms  0x1dd3 PR_Close()
 75983 ms  0x1dd3 fd:0x7fb2d1785d60
           /* TID 0x1dc8 */
 75985 ms  0x1dc8 EC_ValidatePublicKey()
 75987 ms  0x1dc8 ret:0x0
 75987 ms  0x1dc8 EC_ValidatePublicKey()
 75988 ms  0x1dc8 ret:0x0
 75989 ms  0x1dc8 EC_ValidatePublicKey()
 75991 ms  0x1dc8 ret:0x0
 75991 ms  0x1dc8 EC_ValidatePublicKey()
 75992 ms  0x1dc8 ret:0x0
 75992 ms  0x1dc8 EC_ValidatePublicKey()
 75994 ms  0x1dc8 ret:0x0
 75994 ms  0x1dc8 EC_ValidatePublicKey()
 75995 ms  0x1dc8 ret:0x0
 75995 ms  0x1dc8 EC_ValidatePublicKey()
 75997 ms  0x1dc8 ret:0x0
 75997 ms  0x1dc8 EC_ValidatePublicKey()
 75998 ms  0x1dc8 ret:0x0
 75998 ms  0x1dc8 EC_ValidatePublicKey()
 76000 ms  0x1dc8 ret:0x0
 76000 ms  0x1dc8 EC_ValidatePublicKey()
 76001 ms  0x1dc8 ret:0x0
           /* TID 0x1dd3 */
 76001 ms  0x1dd3 PR_Close()
 76001 ms  0x1dd3 fd:0x7fb2dfe38730
 76001 ms     | 0x1dd3 PK11_Encrypt()
 76001 ms     | 0x1dd3 symkey:0x7fb2dfe37500
 76002 ms  0x1dd3 PR_Close()
 76002 ms  0x1dd3 fd:0x7fb2d23e36a0
 76002 ms  0x1dd3 PR_Close()
 76002 ms  0x1dd3 fd:0x7fb2d1ec7af0
 76002 ms  0x1dd3 PR_Close()
 76002 ms  0x1dd3 fd:0x7fb2d6cf6e80
 76002 ms     | 0x1dd3 PK11_Encrypt()
 76002 ms     | 0x1dd3 symkey:0x7fb2d2743280
 76002 ms  0x1dd3 PR_Close()
 76002 ms  0x1dd3 fd:0x7fb2d23e3580
           /* TID 0x1e21 */
 76003 ms  0x1e21 PR_Close()
 76003 ms  0x1e21 fd:0x7fb2d17856d0
 76003 ms  0x1e21 PR_Close()
 76003 ms  0x1e21 fd:0x7fb2d17856d0
           /* TID 0x1dc8 */
 76006 ms  0x1dc8 PR_Close()
 76006 ms  0x1dc8 fd:0x7fb2d27c6370
 76006 ms  0x1dc8 PR_Close()
 76006 ms  0x1dc8 fd:0x7fb2d0ab1f70
 76007 ms  0x1dc8 PR_Close()
 76007 ms  0x1dc8 fd:0x7fb2d1e28580
 76007 ms  0x1dc8 PR_Close()
 76007 ms  0x1dc8 fd:0x7fb2d0ab1f70
 76007 ms  0x1dc8 PR_Close()
 76007 ms  0x1dc8 fd:0x7fb2d1e28580
 76007 ms  0x1dc8 PR_Close()
 76007 ms  0x1dc8 fd:0x7fb2d0ab1f70
           /* TID 0x1de0 */
 76010 ms  0x1de0 PR_Close()
 76010 ms  0x1de0 fd:0x7fb2d0ab1f70
           /* TID 0x1dc8 */
 76029 ms  0x1dc8 PR_Close()
 76029 ms  0x1dc8 fd:0x7fb2d1e28580
 76029 ms  0x1dc8 PR_Close()
 76029 ms  0x1dc8 fd:0x7fb2d6d43370
 76030 ms  0x1dc8 PR_Close()
 76030 ms  0x1dc8 fd:0x7fb2d1e28580
 76030 ms  0x1dc8 PR_Close()
 76030 ms  0x1dc8 fd:0x7fb2d6d43370
 76031 ms  0x1dc8 PR_Close()
 76031 ms  0x1dc8 fd:0x7fb2dbcc89a0
 76031 ms  0x1dc8 PR_Close()
 76031 ms  0x1dc8 fd:0x7fb2dbcc88b0
 76031 ms  0x1dc8 PR_Close()
 76031 ms  0x1dc8 fd:0x7fb2dbcc8a60
 76033 ms  0x1dc8 PR_Close()
 76033 ms  0x1dc8 fd:0x7fb2d1ec7370
 76034 ms  0x1dc8 PR_Close()
 76034 ms  0x1dc8 fd:0x7fb2d1ec7370
 76036 ms  0x1dc8 PR_Close()
 76036 ms  0x1dc8 fd:0x7fb2d1e28580
 76036 ms  0x1dc8 PR_Close()
 76036 ms  0x1dc8 fd:0x7fb2d5a92dc0
 76037 ms  0x1dc8 PR_Close()
 76037 ms  0x1dc8 fd:0x7fb2d1e28580
 76037 ms  0x1dc8 PR_Close()
 76037 ms  0x1dc8 fd:0x7fb2d5a92dc0
 76039 ms  0x1dc8 PR_Close()
 76039 ms  0x1dc8 fd:0x7fb2d5ab6460
 76041 ms  0x1dc8 PR_Close()
 76041 ms  0x1dc8 fd:0x7fb2d5ab6460
 76043 ms  0x1dc8 PR_Close()
 76043 ms  0x1dc8 fd:0x7fb2d1e28580
 76043 ms  0x1dc8 PR_Close()
 76043 ms  0x1dc8 fd:0x7fb2d6cf69d0
 76044 ms  0x1dc8 PR_Close()
 76044 ms  0x1dc8 fd:0x7fb2d1e28580
 76044 ms  0x1dc8 PR_Close()
 76044 ms  0x1dc8 fd:0x7fb2d6cf69d0
 76046 ms  0x1dc8 PR_Close()
 76046 ms  0x1dc8 fd:0x7fb2d6cf6f40
 76048 ms  0x1dc8 PR_Close()
 76048 ms  0x1dc8 fd:0x7fb2d6cf6f40
 76054 ms  0x1dc8 PR_Close()
 76054 ms  0x1dc8 fd:0x7fb2d6d43610
 76055 ms  0x1dc8 PR_Close()
 76055 ms  0x1dc8 fd:0x7fb2d6d43610
 76057 ms  0x1dc8 PR_Close()
 76057 ms  0x1dc8 fd:0x7fb2d6d43640
 76063 ms  0x1dc8 PR_Close()
 76063 ms  0x1dc8 fd:0x7fb2d1e28580
 76063 ms  0x1dc8 PR_Close()
 76063 ms  0x1dc8 fd:0x7fb2d1074910
           /* TID 0x1dd3 */
 76065 ms  0x1dd3 PK11_Encrypt()
 76065 ms  0x1dd3 symkey:0x7fb2d0aa0200
           /* TID 0x1de0 */
 76069 ms  0x1de0 PR_Close()
 76069 ms  0x1de0 fd:0x7fb2d0ab1f70
 76088 ms  0x1de0 PR_Close()
 76088 ms  0x1de0 fd:0x7fb2d0ab1f70
           /* TID 0x1dd3 */
 76092 ms  0x1dd3 PR_Close()
 76092 ms  0x1dd3 fd:0x7fb2d1ee2700
 76092 ms     | 0x1dd3 PK11_Encrypt()
 76092 ms     | 0x1dd3 symkey:0x7fb2d21aa080
           /* TID 0x1dcd */
 76100 ms  0x1dcd PR_Close()
 76100 ms  0x1dcd fd:0x7fb2dab77d90
 76104 ms  0x1dcd PR_Close()
 76104 ms  0x1dcd fd:0x7fb2d6f2e7c0
           /* TID 0x1de0 */
 76120 ms  0x1de0 PR_Close()
 76120 ms  0x1de0 fd:0x7fb2d1785f10
           /* TID 0x1dc8 */
 76123 ms  0x1dc8 PR_Close()
 76123 ms  0x1dc8 fd:0x7fb2d1785fd0
 76123 ms  0x1dc8 PR_Close()
 76123 ms  0x1dc8 fd:0x7fb2d103cfd0
           /* TID 0x1dd3 */
 76125 ms  0x1dd3 PR_Close()
 76125 ms  0x1dd3 fd:0x7fb2d6cf6f70
 76125 ms  0x1dd3 PR_Close()
 76125 ms  0x1dd3 fd:0x7fb2d1ec7d60
 76125 ms     | 0x1dd3 PK11_Encrypt()
 76125 ms     | 0x1dd3 symkey:0x7fb2d0aa0200
           /* TID 0x1e21 */
 76126 ms  0x1e21 PR_Close()
 76126 ms  0x1e21 fd:0x7fb2d0ab1f70
 76126 ms  0x1e21 PR_Close()
 76126 ms  0x1e21 fd:0x7fb2d0ab1f70
 76126 ms  0x1e21 PR_Close()
 76126 ms  0x1e21 fd:0x7fb2d0ab1f70
 76126 ms  0x1e21 PR_Close()
 76126 ms  0x1e21 fd:0x7fb2d1ec7a60
           /* TID 0x1de0 */
 76127 ms  0x1de0 PR_Close()
 76127 ms  0x1de0 fd:0x7fb2d1ec7a60
           /* TID 0x1ddb */
 76130 ms  0x1ddb PR_Close()
 76130 ms  0x1ddb fd:0x7fb2d23fcd00
 76130 ms  0x1ddb PR_Close()
 76130 ms  0x1ddb fd:0x7fb2d23fcd00
           /* TID 0x1dcd */
 76136 ms  0x1dcd PR_Close()
 76136 ms  0x1dcd fd:0x7fb2d10741c0
           /* TID 0x1dc8 */
 76139 ms  0x1dc8 PR_Close()
 76139 ms  0x1dc8 fd:0x7fb2d1785fd0
 76139 ms  0x1dc8 PR_Close()
 76139 ms  0x1dc8 fd:0x7fb2d1074880
           /* TID 0x1de0 */
 76142 ms  0x1de0 PR_Close()
 76142 ms  0x1de0 fd:0x7fb2d1074970
 76144 ms  0x1de0 PR_Close()
 76144 ms  0x1de0 fd:0x7fb2d1074730
 76160 ms  0x1de0 PR_Close()
 76160 ms  0x1de0 fd:0x7fb2d1074730
 76162 ms  0x1de0 PR_Close()
 76162 ms  0x1de0 fd:0x7fb2d1074730
 76167 ms  0x1de0 PR_Close()
 76167 ms  0x1de0 fd:0x7fb2d1785fd0
           /* TID 0x1dc8 */
 76333 ms  0x1dc8 PR_Close()
 76333 ms  0x1dc8 fd:0x7fb2d0ab17c0
 76333 ms  0x1dc8 PR_Close()
 76333 ms  0x1dc8 fd:0x7fb2d0ab17c0
 76338 ms  0x1dc8 PR_Close()
 76338 ms  0x1dc8 fd:0x7fb2f8fda130
 76339 ms  0x1dc8 PR_Close()
 76339 ms  0x1dc8 fd:0x7fb2f8fda190
Process terminated
