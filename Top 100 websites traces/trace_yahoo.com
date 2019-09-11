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
           /* TID 0x69a5 */
   136 ms  0x69a5 PR_Close()
   136 ms  0x69a5 fd:0x7fd2c64e5820
           /* TID 0x699d */
   314 ms  0x699d SSL_ImportFD()
   314 ms  0x699d ret:0x7fd2d540b400
   314 ms  0x699d SSL_AuthCertificateHook()
   314 ms  0x699d fd:0x7fd2d540b400
   314 ms  0x699d ret:0x0
   314 ms  0x699d PR_Connect()
   314 ms  0x699d fd:0x7fd2d540b400
   533 ms  0x699d SECKEY_CreateECPrivateKey()
   533 ms  0x699d cx:0x7fd2c64e8c88
   535 ms     | 0x699d EC_ValidatePublicKey()
   535 ms     | 0x699d ret:0x0
   535 ms  0x699d ret:0x7fd2b595f820::7fd2b595f820  50 9b 9d b5                                      P...
   535 ms  0x699d SECKEY_CreateECPrivateKey()
   535 ms  0x699d cx:0x7fd2c64e8c88
   537 ms     | 0x699d EC_ValidatePublicKey()
   542 ms     | 0x699d ret:0x0
   542 ms  0x699d ret:0x7fd2b5961820::7fd2b5961820  10 9a 9d b5                                      ....
           /* TID 0x69fc */
   670 ms  0x69fc PR_Close()
   670 ms  0x69fc fd:0x7fd2d540b340
   673 ms  0x69fc PR_Close()
   673 ms  0x69fc fd:0x7fd2d540b340
           /* TID 0x699d */
   769 ms  SECKEY_ECParamsToKeySize()
   769 ms  0x699d ret:0x100
   769 ms  0x699d SECKEY_CreateECPrivateKey()
   769 ms  0x699d cx:0x7fd2c64e8c88
   769 ms     | 0x699d EC_ValidatePublicKey()
   771 ms     | 0x699d ret:0x0
   771 ms  0x699d ret:0x7fd2b596a820::7fd2b596a820  90 b7 60 b5                                      ..`.
   771 ms  0x699d PK11_PubDeriveWithKDF()
   771 ms  0x699d seckey:0x7fd2b596a820
   771 ms     | 0x699d EC_ValidatePublicKey()
   772 ms     | 0x699d ret:0x0
   774 ms  0x699d ret:0x7fd2c80c4b80
   774 ms  0x699d PK11_DeriveWithFlags()
   774 ms  0x699d basekey:0x7fd2c80c4b80
   774 ms     | 0x699d PK11_DeriveWithTemplate()
   774 ms  0x699d ret:0x7fd2b59f9b00
   774 ms  0x699d PK11_Derive()
   774 ms  0x699d basekey:0x7fd2b59f9b00
   774 ms     | 0x699d PK11_DeriveWithTemplate()
   774 ms  0x699d ret:0x7fd2b59f9c00
   774 ms  0x699d SECKEY_DestroyPrivateKey()
   774 ms  0x699d privk:0x7fd2b596a820::7fd2b596a820  90 b7 60 b5                                      ..`.
   774 ms  0x699d privk:0x7fd2b596a820::7fd2b596a820  e5 e5 e5 e5                                      ....
   774 ms  0x699d PK11_Encrypt()
   774 ms  0x699d symkey:0x7fd2b59f9d80
   775 ms  0x699d PR_Connect()
   775 ms  0x699d fd:0x7fd2d540be80
           /* TID 0x69fc */
   790 ms  0x69fc PR_Close()
   790 ms  0x69fc fd:0x7fd2d540be20
           /* TID 0x69a5 */
   827 ms  0x69a5 PR_Close()
   827 ms  0x69a5 fd:0x7fd2b5626040
           /* TID 0x69f6 */
   827 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   828 ms  0x69f6 ret:0x0
           /* TID 0x699d */
   828 ms  0x699d SSL_AuthCertificateComplete()
   828 ms  0x699d fd:0x7fd2d540b400
   828 ms  0x699d err:0x0
   828 ms  0x699d PK11_Encrypt()
   828 ms  0x699d symkey:0x7fd2b59f9d80
   993 ms  0x699d SECKEY_DestroyPrivateKey()
   993 ms  0x699d privk:0x7fd2b5961820::7fd2b5961820  10 9a 9d b5                                      ....
   994 ms  0x699d privk:0x7fd2b5961820::7fd2b5961820  e5 e5 e5 e5                                      ....
   994 ms  0x699d SECKEY_DestroyPrivateKey()
   994 ms  0x699d privk:0x7fd2b595f820::7fd2b595f820  50 9b 9d b5                                      P...
   994 ms  0x699d privk:0x7fd2b595f820::7fd2b595f820  e5 e5 e5 e5                                      ....
  1218 ms  0x699d SSL_ImportFD()
  1218 ms  0x699d ret:0x7fd2b5626370
  1218 ms  0x699d SSL_AuthCertificateHook()
  1218 ms  0x699d fd:0x7fd2b5626370
  1218 ms  0x699d ret:0x0
  1218 ms  0x699d PR_Connect()
  1218 ms  0x699d fd:0x7fd2b5626370
  1244 ms  0x699d SECKEY_CreateECPrivateKey()
  1244 ms  0x699d cx:0x7fd2b56078c8
  1245 ms     | 0x699d EC_ValidatePublicKey()
  1245 ms     | 0x699d ret:0x0
  1245 ms  0x699d ret:0x7fd2b5961020::7fd2b5961020  90 b7 60 b5                                      ..`.
  1245 ms  0x699d SECKEY_CreateECPrivateKey()
  1245 ms  0x699d cx:0x7fd2b56078c8
  1249 ms     | 0x699d EC_ValidatePublicKey()
  1255 ms     | 0x699d ret:0x0
  1255 ms  0x699d ret:0x7fd2b5967020::7fd2b5967020  d0 b8 60 b5                                      ..`.
           /* TID 0x69f6 */
  1308 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1308 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  1309 ms  SECKEY_ECParamsToKeySize()
  1309 ms  0x699d ret:0x100
  1309 ms  0x699d SECKEY_CreateECPrivateKey()
  1309 ms  0x699d cx:0x7fd2b56078c8
  1310 ms     | 0x699d EC_ValidatePublicKey()
  1314 ms     | 0x699d ret:0x0
  1314 ms  0x699d ret:0x7fd2b596a820::7fd2b596a820  f0 bb 60 b5                                      ..`.
  1314 ms  0x699d PK11_PubDeriveWithKDF()
  1314 ms  0x699d seckey:0x7fd2b596a820
  1314 ms     | 0x699d EC_ValidatePublicKey()
  1319 ms     | 0x699d ret:0x0
  1324 ms  0x699d ret:0x7fd2c80c4b80
  1324 ms  0x699d PK11_DeriveWithFlags()
  1324 ms  0x699d basekey:0x7fd2c80c4b80
  1324 ms     | 0x699d PK11_DeriveWithTemplate()
  1324 ms  0x699d ret:0x7fd2b598dc00
  1324 ms  0x699d PK11_Derive()
  1324 ms  0x699d basekey:0x7fd2b598dc00
  1324 ms     | 0x699d PK11_DeriveWithTemplate()
  1324 ms  0x699d ret:0x7fd2b59fa600
  1324 ms  0x699d SECKEY_DestroyPrivateKey()
  1324 ms  0x699d privk:0x7fd2b596a820::7fd2b596a820  f0 bb 60 b5                                      ..`.
  1324 ms  0x699d privk:0x7fd2b596a820::7fd2b596a820  e5 e5 e5 e5                                      ....
  1324 ms  0x699d PK11_Encrypt()
  1324 ms  0x699d symkey:0x7fd2b59fab00
  1325 ms  0x699d SSL_AuthCertificateComplete()
  1325 ms  0x699d fd:0x7fd2b5626370
  1325 ms  0x699d err:0x0
  1325 ms  0x699d PK11_Encrypt()
  1325 ms  0x699d symkey:0x7fd2b59fab00
  1376 ms  0x699d SECKEY_DestroyPrivateKey()
  1376 ms  0x699d privk:0x7fd2b5967020::7fd2b5967020  d0 b8 60 b5                                      ..`.
  1376 ms  0x699d privk:0x7fd2b5967020::7fd2b5967020  e5 e5 e5 e5                                      ....
  1376 ms  0x699d SECKEY_DestroyPrivateKey()
  1376 ms  0x699d privk:0x7fd2b5961020::7fd2b5961020  90 b7 60 b5                                      ..`.
  1377 ms  0x699d privk:0x7fd2b5961020::7fd2b5961020  e5 e5 e5 e5                                      ....
  1380 ms  0x699d PK11_Encrypt()
  1380 ms  0x699d symkey:0x7fd2b59fab00
  1410 ms  0x699d PK11_Encrypt()
  1410 ms  0x699d symkey:0x7fd2b59fab00
  1440 ms  0x699d PK11_Encrypt()
  1440 ms  0x699d symkey:0x7fd2b59fab00
  1471 ms  0x699d PK11_Encrypt()
  1471 ms  0x699d symkey:0x7fd2b59fab00
  1587 ms  0x699d PK11_Encrypt()
  1587 ms  0x699d symkey:0x7fd2b59fab00
  1620 ms  0x699d PK11_Encrypt()
  1620 ms  0x699d symkey:0x7fd2b59fab00
  1652 ms  0x699d PK11_Encrypt()
  1652 ms  0x699d symkey:0x7fd2b59fab00
           /* TID 0x69f0 */
  1680 ms  0x69f0 PR_Close()
  1680 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626190
  1681 ms  0x69f0 PR_Close()
  1681 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626190
  1682 ms  0x69f0 PR_Close()
  1682 ms  0x69f0 fd:0x7fd2b5626280
  1683 ms  0x69f0 PR_Close()
  1683 ms  0x69f0 fd:0x7fd2b5626190
  1683 ms  0x69f0 PR_Close()
  1683 ms  0x69f0 fd:0x7fd2b5626280
  1683 ms  0x69f0 PR_Close()
  1683 ms  0x69f0 fd:0x7fd2b5626190
  1683 ms  0x69f0 PR_Close()
  1683 ms  0x69f0 fd:0x7fd2b5626280
  1686 ms  0x69f0 PR_Close()
  1686 ms  0x69f0 fd:0x7fd2b5626190
  1686 ms  0x69f0 PR_Close()
  1686 ms  0x69f0 fd:0x7fd2b5626160
  1688 ms  0x69f0 PR_Close()
  1688 ms  0x69f0 fd:0x7fd2b5626160
  1689 ms  0x69f0 PR_Close()
  1689 ms  0x69f0 fd:0x7fd2b5626190
  1691 ms  0x69f0 PR_Close()
  1691 ms  0x69f0 fd:0x7fd2b5626190
  1691 ms  0x69f0 PR_Close()
  1691 ms  0x69f0 fd:0x7fd2b5626190
  1694 ms  0x69f0 PR_Close()
  1694 ms  0x69f0 fd:0x7fd2b5626190
  1694 ms  0x69f0 PR_Close()
  1694 ms  0x69f0 fd:0x7fd2b5626190
  1748 ms  0x69f0 PR_Close()
  1748 ms  0x69f0 fd:0x7fd2b5626190
  1748 ms  0x69f0 PR_Close()
  1748 ms  0x69f0 fd:0x7fd2b5626190
  1755 ms  0x69f0 PR_Close()
  1755 ms  0x69f0 fd:0x7fd2b5626190
  1756 ms  0x69f0 PR_Close()
  1756 ms  0x69f0 fd:0x7fd2b5626190
  1761 ms  0x69f0 PR_Close()
  1761 ms  0x69f0 fd:0x7fd2b5626190
  1762 ms  0x69f0 PR_Close()
  1762 ms  0x69f0 fd:0x7fd2b5626190
  1763 ms  0x69f0 PR_Close()
  1763 ms  0x69f0 fd:0x7fd2b5626190
  1763 ms  0x69f0 PR_Close()
  1763 ms  0x69f0 fd:0x7fd2b5626190
           /* TID 0x69ed */
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
  1764 ms  0x69ed PR_Close()
  1764 ms  0x69ed fd:0x7fd2b5626190
           /* TID 0x69fc */
  2267 ms  0x69fc PR_Close()
  2267 ms  0x69fc fd:0x7fd2b56266d0
  2270 ms  0x69fc PR_Close()
  2270 ms  0x69fc fd:0x7fd2b56266d0
  2941 ms  0x69fc PR_Close()
  2941 ms  0x69fc fd:0x7fd2b56266d0
           /* TID 0x69a5 */
  4217 ms  0x69a5 PR_Close()
  4217 ms  0x69a5 fd:0x7fd2b56266d0
  4217 ms  0x69a5 PR_Close()
  4217 ms  0x69a5 fd:0x7fd2b5626820
  4218 ms  0x69a5 PR_Close()
  4218 ms  0x69a5 fd:0x7fd2b5626880
           /* TID 0x699d */
  4461 ms  0x699d SSL_ImportFD()
  4461 ms  0x699d ret:0x7fd2b55e4880
  4461 ms  0x699d SSL_AuthCertificateHook()
  4461 ms  0x699d fd:0x7fd2b55e4880
  4461 ms  0x699d ret:0x0
  4461 ms  0x699d PR_Connect()
  4461 ms  0x699d fd:0x7fd2b55e4880
  4518 ms  0x699d SECKEY_CreateECPrivateKey()
  4518 ms  0x699d cx:0x7fd2b5607c08
  4519 ms     | 0x699d EC_ValidatePublicKey()
  4519 ms     | 0x699d ret:0x0
  4519 ms  0x699d ret:0x7fd2cc520820::7fd2cc520820  50 e6 9a c7                                      P...
  4519 ms  0x699d SECKEY_CreateECPrivateKey()
  4519 ms  0x699d cx:0x7fd2b5607c08
  4520 ms     | 0x699d EC_ValidatePublicKey()
  4523 ms     | 0x699d ret:0x0
  4523 ms  0x699d ret:0x7fd2b5403020::7fd2b5403020  d0 e8 9a c7                                      ....
           /* TID 0x69f6 */
  4585 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4586 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  4588 ms  SECKEY_ECParamsToKeySize()
  4588 ms  0x699d ret:0x100
  4588 ms  0x699d SECKEY_CreateECPrivateKey()
  4588 ms  0x699d cx:0x7fd2b5607c08
  4591 ms     | 0x699d EC_ValidatePublicKey()
  4597 ms     | 0x699d ret:0x0
  4598 ms  0x699d ret:0x7fd2b540a020::7fd2b540a020  e0 ec 9a c7                                      ....
  4598 ms  0x699d PK11_PubDeriveWithKDF()
  4598 ms  0x699d seckey:0x7fd2b540a020
  4598 ms     | 0x699d EC_ValidatePublicKey()
  4602 ms     | 0x699d ret:0x0
  4605 ms  0x699d ret:0x7fd2c80c4b80
  4605 ms  0x699d PK11_DeriveWithFlags()
  4605 ms  0x699d basekey:0x7fd2c80c4b80
  4605 ms     | 0x699d PK11_DeriveWithTemplate()
  4605 ms  0x699d ret:0x7fd2b55e9100
  4605 ms  0x699d PK11_Derive()
  4605 ms  0x699d basekey:0x7fd2b55e9100
  4605 ms     | 0x699d PK11_DeriveWithTemplate()
  4606 ms  0x699d ret:0x7fd2b55e9180
  4606 ms  0x699d SECKEY_DestroyPrivateKey()
  4606 ms  0x699d privk:0x7fd2b540a020::7fd2b540a020  e0 ec 9a c7                                      ....
  4606 ms  0x699d privk:0x7fd2b540a020::7fd2b540a020  e5 e5 e5 e5                                      ....
  4606 ms  0x699d PK11_Encrypt()
  4606 ms  0x699d symkey:0x7fd2b55e9300
  4609 ms  0x699d SSL_AuthCertificateComplete()
  4609 ms  0x699d fd:0x7fd2b55e4880
  4609 ms  0x699d err:0x0
  4611 ms  0x699d PK11_Encrypt()
  4611 ms  0x699d symkey:0x7fd2b55e9300
  4611 ms  0x699d PK11_Encrypt()
  4611 ms  0x699d symkey:0x7fd2b55e9300
  4664 ms  0x699d SECKEY_DestroyPrivateKey()
  4664 ms  0x699d privk:0x7fd2b5403020::7fd2b5403020  d0 e8 9a c7                                      ....
  4664 ms  0x699d privk:0x7fd2b5403020::7fd2b5403020  e5 e5 e5 e5                                      ....
  4664 ms  0x699d SECKEY_DestroyPrivateKey()
  4664 ms  0x699d privk:0x7fd2cc520820::7fd2cc520820  50 e6 9a c7                                      P...
  4664 ms  0x699d privk:0x7fd2cc520820::7fd2cc520820  e5 e5 e5 e5                                      ....
  4664 ms  0x699d PK11_Encrypt()
  4664 ms  0x699d symkey:0x7fd2b55e9300
           /* TID 0x69b4 */
  4734 ms  0x69b4 PR_Close()
  4734 ms  0x69b4 fd:0x7fd2c79504f0
           /* TID 0x699d */
  4842 ms  0x699d SSL_ImportFD()
  4842 ms  0x699d ret:0x7fd2c79b3790
  4842 ms  0x699d SSL_AuthCertificateHook()
  4842 ms  0x699d fd:0x7fd2c79b3790
  4842 ms  0x699d ret:0x0
  4843 ms  0x699d PR_Connect()
  4843 ms  0x699d fd:0x7fd2c79b3790
  4901 ms  0x699d SECKEY_CreateECPrivateKey()
  4901 ms  0x699d cx:0x7fd2b56080e8
  4902 ms     | 0x699d EC_ValidatePublicKey()
  4903 ms     | 0x699d ret:0x0
  4903 ms  0x699d ret:0x7fd2b5415020::7fd2b5415020  30 9d 5c b5                                      0.\.
  4903 ms  0x699d SECKEY_CreateECPrivateKey()
  4903 ms  0x699d cx:0x7fd2b56080e8
  4905 ms     | 0x699d EC_ValidatePublicKey()
  4911 ms     | 0x699d ret:0x0
  4911 ms  0x699d ret:0x7fd2b5417020::7fd2b5417020  a0 9b 5c b5                                      ..\.
  4977 ms  SECKEY_ECParamsToKeySize()
  4977 ms  0x699d ret:0x100
  4978 ms  0x699d SECKEY_CreateECPrivateKey()
  4978 ms  0x699d cx:0x7fd2b56080e8
  4980 ms     | 0x699d EC_ValidatePublicKey()
  4985 ms     | 0x699d ret:0x0
  4985 ms  0x699d ret:0x7fd2b541f020::7fd2b541f020  30 ed 9a c7                                      0...
  4985 ms  0x699d PK11_PubDeriveWithKDF()
  4985 ms  0x699d seckey:0x7fd2b541f020
  4985 ms     | 0x699d EC_ValidatePublicKey()
  4990 ms     | 0x699d ret:0x0
  4994 ms  0x699d ret:0x7fd2c80c4b80
  4994 ms  0x699d PK11_DeriveWithFlags()
  4994 ms  0x699d basekey:0x7fd2c80c4b80
  4994 ms     | 0x699d PK11_DeriveWithTemplate()
  4994 ms  0x699d ret:0x7fd2c799dd80
  4994 ms  0x699d PK11_Derive()
  4994 ms  0x699d basekey:0x7fd2c799dd80
  4994 ms     | 0x699d PK11_DeriveWithTemplate()
  4994 ms  0x699d ret:0x7fd2c799df00
  4994 ms  0x699d SECKEY_DestroyPrivateKey()
  4994 ms  0x699d privk:0x7fd2b541f020::7fd2b541f020  30 ed 9a c7                                      0...
  4995 ms  0x699d privk:0x7fd2b541f020::7fd2b541f020  e5 e5 e5 e5                                      ....
  4995 ms  0x699d PK11_Encrypt()
  4995 ms  0x699d symkey:0x7fd2c799e080
           /* TID 0x69a5 */
  5023 ms  0x69a5 PR_Close()
  5023 ms  0x69a5 fd:0x7fd2c79b33a0
           /* TID 0x69f6 */
  5023 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5024 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  5024 ms  0x699d SSL_AuthCertificateComplete()
  5024 ms  0x699d fd:0x7fd2c79b3790
  5024 ms  0x699d err:0x0
  5025 ms  0x699d PK11_Encrypt()
  5025 ms  0x699d symkey:0x7fd2c799e080
  5056 ms  0x699d SECKEY_DestroyPrivateKey()
  5056 ms  0x699d privk:0x7fd2b5417020::7fd2b5417020  a0 9b 5c b5                                      ..\.
  5056 ms  0x699d privk:0x7fd2b5417020::7fd2b5417020  e5 e5 e5 e5                                      ....
  5056 ms  0x699d SECKEY_DestroyPrivateKey()
  5056 ms  0x699d privk:0x7fd2b5415020::7fd2b5415020  30 9d 5c b5                                      0.\.
  5056 ms  0x699d privk:0x7fd2b5415020::7fd2b5415020  e5 e5 e5 e5                                      ....
           /* TID 0x69b4 */
  5132 ms  0x69b4 PR_Close()
  5132 ms  0x69b4 fd:0x7fd2c79b3940
           /* TID 0x699d */
  5143 ms  0x699d SSL_ImportFD()
  5143 ms  0x699d ret:0x7fd2c79b3cd0
  5143 ms  0x699d SSL_AuthCertificateHook()
  5143 ms  0x699d fd:0x7fd2c79b3cd0
  5143 ms  0x699d ret:0x0
  5144 ms  0x699d PR_Connect()
  5144 ms  0x699d fd:0x7fd2c79b3cd0
  5202 ms  0x699d SECKEY_CreateECPrivateKey()
  5202 ms  0x699d cx:0x7fd2b5608428
  5204 ms     | 0x699d EC_ValidatePublicKey()
  5204 ms     | 0x699d ret:0x0
  5204 ms  0x699d ret:0x7fd2b5416020::7fd2b5416020  50 e6 9a c7                                      P...
  5208 ms  0x699d SECKEY_CreateECPrivateKey()
  5208 ms  0x699d cx:0x7fd2b5608428
  5210 ms     | 0x699d EC_ValidatePublicKey()
  5215 ms     | 0x699d ret:0x0
  5215 ms  0x699d ret:0x7fd2b541b820::7fd2b541b820  80 e8 9a c7                                      ....
  5282 ms  SECKEY_ECParamsToKeySize()
  5282 ms  0x699d ret:0x100
  5282 ms  0x699d SECKEY_CreateECPrivateKey()
  5282 ms  0x699d cx:0x7fd2b5608428
  5284 ms     | 0x699d EC_ValidatePublicKey()
  5289 ms     | 0x699d ret:0x0
  5289 ms  0x699d ret:0x7fd2cc520820::7fd2cc520820  90 52 57 b5                                      .RW.
  5290 ms  0x699d PK11_PubDeriveWithKDF()
  5290 ms  0x699d seckey:0x7fd2cc520820
  5290 ms     | 0x699d EC_ValidatePublicKey()
  5294 ms     | 0x699d ret:0x0
  5298 ms  0x699d ret:0x7fd2c80c4b80
  5299 ms  0x699d PK11_DeriveWithFlags()
  5299 ms  0x699d basekey:0x7fd2c80c4b80
  5299 ms     | 0x699d PK11_DeriveWithTemplate()
  5299 ms  0x699d ret:0x7fd2c799ea00
  5299 ms  0x699d PK11_Derive()
  5299 ms  0x699d basekey:0x7fd2c799ea00
  5299 ms     | 0x699d PK11_DeriveWithTemplate()
  5299 ms  0x699d ret:0x7fd2c799ea80
  5299 ms  0x699d SECKEY_DestroyPrivateKey()
  5299 ms  0x699d privk:0x7fd2cc520820::7fd2cc520820  90 52 57 b5                                      .RW.
  5299 ms  0x699d privk:0x7fd2cc520820::7fd2cc520820  e5 e5 e5 e5                                      ....
  5300 ms  0x699d PK11_Encrypt()
  5300 ms  0x699d symkey:0x7fd2c799ec00
           /* TID 0x69a5 */
  5328 ms  0x69a5 PR_Close()
  5328 ms  0x69a5 fd:0x7fd2b55e4fd0
           /* TID 0x69f6 */
  5328 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5328 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  5329 ms  0x699d SSL_AuthCertificateComplete()
  5329 ms  0x699d fd:0x7fd2c79b3cd0
  5329 ms  0x699d err:0x0
  5329 ms  0x699d PK11_Encrypt()
  5329 ms  0x699d symkey:0x7fd2c799ec00
  5361 ms  0x699d SECKEY_DestroyPrivateKey()
  5361 ms  0x699d privk:0x7fd2b541b820::7fd2b541b820  80 e8 9a c7                                      ....
  5361 ms  0x699d privk:0x7fd2b541b820::7fd2b541b820  e5 e5 e5 e5                                      ....
  5362 ms  0x699d SECKEY_DestroyPrivateKey()
  5362 ms  0x699d privk:0x7fd2b5416020::7fd2b5416020  50 e6 9a c7                                      P...
  5362 ms  0x699d privk:0x7fd2b5416020::7fd2b5416020  e5 e5 e5 e5                                      ....
           /* TID 0x69b4 */
  5457 ms  0x69b4 PR_Close()
  5457 ms  0x69b4 fd:0x7fd2c79b3ca0
           /* TID 0x699d */
  5550 ms  0x699d SSL_ImportFD()
  5550 ms  0x699d ret:0x7fd2b52caf10
  5550 ms  0x699d SSL_AuthCertificateHook()
  5550 ms  0x699d fd:0x7fd2b52caf10
  5550 ms  0x699d ret:0x0
  5550 ms  0x699d PR_Connect()
  5550 ms  0x699d fd:0x7fd2b52caf10
  5550 ms  0x699d SSL_ImportFD()
  5550 ms  0x699d ret:0x7fd2b52cafa0
  5550 ms  0x699d SSL_AuthCertificateHook()
  5550 ms  0x699d fd:0x7fd2b52cafa0
  5550 ms  0x699d ret:0x0
  5550 ms  0x699d PR_Connect()
  5550 ms  0x699d fd:0x7fd2b52cafa0
  5575 ms  0x699d SECKEY_CreateECPrivateKey()
  5575 ms  0x699d cx:0x7fd2b5608aa8
  5576 ms     | 0x699d EC_ValidatePublicKey()
  5576 ms     | 0x699d ret:0x0
  5576 ms  0x699d ret:0x7fd2b52c2820::7fd2b52c2820  30 d3 9a c7                                      0...
  5576 ms  0x699d SECKEY_CreateECPrivateKey()
  5576 ms  0x699d cx:0x7fd2b5608aa8
  5577 ms     | 0x699d EC_ValidatePublicKey()
  5578 ms     | 0x699d ret:0x0
  5578 ms  0x699d ret:0x7fd2b52c5020::7fd2b52c5020  10 d5 9a c7                                      ....
  5579 ms  0x699d SECKEY_CreateECPrivateKey()
  5579 ms  0x699d cx:0x7fd2b5608908
  5580 ms     | 0x699d EC_ValidatePublicKey()
  5580 ms     | 0x699d ret:0x0
  5580 ms  0x699d ret:0x7fd2b52c7820::7fd2b52c7820  60 d5 9a c7                                      `...
  5580 ms  0x699d SECKEY_CreateECPrivateKey()
  5580 ms  0x699d cx:0x7fd2b5608908
  5581 ms     | 0x699d EC_ValidatePublicKey()
  5582 ms     | 0x699d ret:0x0
  5582 ms  0x699d ret:0x7fd2b52c9820::7fd2b52c9820  40 d7 9a c7                                      @...
  5604 ms  0x699d PK11_Derive()
  5604 ms  0x699d basekey:0x7fd2c80c4b80
  5604 ms     | 0x699d PK11_DeriveWithTemplate()
  5604 ms  0x699d ret:0x7fd2c9787200
  5604 ms  0x699d PK11_PubDeriveWithKDF()
  5604 ms  0x699d seckey:0x7fd2b52c2820
  5604 ms     | 0x699d EC_ValidatePublicKey()
  5604 ms     | 0x699d ret:0x0
  5605 ms  0x699d ret:0x7fd2c80c4b80
  5605 ms  SECKEY_ECParamsToKeySize()
  5605 ms  0x699d ret:0xff
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2c9787200
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2c9787280
  5605 ms  0x699d PK11_Derive()
  5605 ms  0x699d basekey:0x7fd2c80c4b80
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2b5309080
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2b5309080
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2c9787200
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2b5309080
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2c80c4b80
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2b5309080
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2c9787280
  5605 ms  0x699d PK11_Derive()
  5605 ms  0x699d basekey:0x7fd2b5309100
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2b5309180
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2c80c4b80
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5605 ms  0x699d ret:0x7fd2b5309080
  5605 ms  0x699d PK11_DeriveWithFlags()
  5605 ms  0x699d basekey:0x7fd2c80c4b80
  5605 ms     | 0x699d PK11_DeriveWithTemplate()
  5606 ms  0x699d ret:0x7fd2c9787280
           /* TID 0x69f6 */
  5607 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5607 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  5607 ms  SECKEY_ECParamsToKeySize()
  5607 ms  0x699d ret:0x100
  5607 ms  SECKEY_ECParamsToBasePointOrderLen()
  5607 ms  0x699d ret:0x100
  5607 ms  SECKEY_ECParamsToBasePointOrderLen()
  5607 ms  0x699d ret:0x100
  5607 ms  0x699d EC_ValidatePublicKey()
  5610 ms  0x699d ret:0x0
  5612 ms  0x699d PK11_DeriveWithFlags()
  5612 ms  0x699d basekey:0x7fd2c80c4b80
  5612 ms     | 0x699d PK11_DeriveWithTemplate()
  5612 ms  0x699d ret:0x7fd2c9787280
  5612 ms  0x699d SSL_AuthCertificateComplete()
  5612 ms  0x699d fd:0x7fd2b52cafa0
  5612 ms  0x699d err:0x0
  5612 ms     | 0x699d PK11_DeriveWithFlags()
  5612 ms     | 0x699d basekey:0x7fd2b5309180
  5612 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5612 ms     | 0x699d ret:0x7fd2c9787280
  5612 ms     | 0x699d PK11_DeriveWithFlags()
  5612 ms     | 0x699d basekey:0x7fd2b5309180
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309100
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2b5309180
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309580
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2c9787200
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309600
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2c9787200
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309680
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2b5309100
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309680
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2b5309100
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309700
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2c9787200
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309080
  5613 ms     | 0x699d PK11_Encrypt()
  5613 ms     | 0x699d symkey:0x7fd2b5309600
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2c9787280
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309080
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2c9787280
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309700
  5613 ms     | 0x699d PK11_DeriveWithFlags()
  5613 ms     | 0x699d basekey:0x7fd2b5309180
  5613 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5613 ms     | 0x699d ret:0x7fd2b5309600
  5613 ms     | 0x699d SECKEY_DestroyPrivateKey()
  5613 ms     | 0x699d privk:0x7fd2b52c5020::7fd2b52c5020  10 d5 9a c7                                      ....
  5613 ms     | 0x699d privk:0x7fd2b52c5020::7fd2b52c5020  e5 e5 e5 e5                                      ....
  5614 ms     | 0x699d SECKEY_DestroyPrivateKey()
  5614 ms     | 0x699d privk:0x7fd2b52c2820::7fd2b52c2820  30 d3 9a c7                                      0...
  5614 ms     | 0x699d privk:0x7fd2b52c2820::7fd2b52c2820  e5 e5 e5 e5                                      ....
  5614 ms  0x699d PK11_Encrypt()
  5614 ms  0x699d symkey:0x7fd2b5309080
  5614 ms  0x699d PK11_Encrypt()
  5614 ms  0x699d symkey:0x7fd2b5309080
  5615 ms  0x699d PK11_Derive()
  5615 ms  0x699d basekey:0x7fd2c80c4b80
  5615 ms     | 0x699d PK11_DeriveWithTemplate()
  5617 ms  0x699d ret:0x7fd2c9787200
  5617 ms  0x699d PK11_PubDeriveWithKDF()
  5617 ms  0x699d seckey:0x7fd2b52c7820
  5618 ms     | 0x699d EC_ValidatePublicKey()
  5618 ms     | 0x699d ret:0x0
  5618 ms  0x699d ret:0x7fd2c80c4b80
  5618 ms  SECKEY_ECParamsToKeySize()
  5618 ms  0x699d ret:0xff
  5618 ms  0x699d PK11_DeriveWithFlags()
  5618 ms  0x699d basekey:0x7fd2c9787200
  5618 ms     | 0x699d PK11_DeriveWithTemplate()
  5618 ms  0x699d ret:0x7fd2b5309180
  5618 ms  0x699d PK11_Derive()
  5618 ms  0x699d basekey:0x7fd2c80c4b80
  5618 ms     | 0x699d PK11_DeriveWithTemplate()
  5618 ms  0x699d ret:0x7fd2b5309700
  5618 ms  0x699d PK11_DeriveWithFlags()
  5618 ms  0x699d basekey:0x7fd2b5309700
  5618 ms     | 0x699d PK11_DeriveWithTemplate()
  5618 ms  0x699d ret:0x7fd2c9787200
  5618 ms  0x699d PK11_DeriveWithFlags()
  5618 ms  0x699d basekey:0x7fd2b5309700
  5618 ms     | 0x699d PK11_DeriveWithTemplate()
  5618 ms  0x699d ret:0x7fd2c80c4b80
  5618 ms  0x699d PK11_DeriveWithFlags()
  5618 ms  0x699d basekey:0x7fd2b5309700
  5618 ms     | 0x699d PK11_DeriveWithTemplate()
  5618 ms  0x699d ret:0x7fd2b5309180
  5618 ms  0x699d PK11_Derive()
  5618 ms  0x699d basekey:0x7fd2b5309d80
  5619 ms     | 0x699d PK11_DeriveWithTemplate()
  5619 ms  0x699d ret:0x7fd2b5309e00
  5619 ms  0x699d PK11_DeriveWithFlags()
  5619 ms  0x699d basekey:0x7fd2c80c4b80
  5619 ms     | 0x699d PK11_DeriveWithTemplate()
  5619 ms  0x699d ret:0x7fd2b5309700
  5619 ms  0x699d PK11_DeriveWithFlags()
  5619 ms  0x699d basekey:0x7fd2c80c4b80
  5619 ms     | 0x699d PK11_DeriveWithTemplate()
  5619 ms  0x699d ret:0x7fd2b5309180
           /* TID 0x69f6 */
  5620 ms  0x69f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5620 ms  0x69f6 ret:0x0
           /* TID 0x699d */
  5620 ms  SECKEY_ECParamsToKeySize()
  5620 ms  0x699d ret:0x100
  5620 ms  SECKEY_ECParamsToBasePointOrderLen()
  5620 ms  0x699d ret:0x100
  5620 ms  SECKEY_ECParamsToBasePointOrderLen()
  5620 ms  0x699d ret:0x100
  5620 ms  0x699d EC_ValidatePublicKey()
  5622 ms  0x699d ret:0x0
  5625 ms  0x699d PK11_DeriveWithFlags()
  5625 ms  0x699d basekey:0x7fd2c80c4b80
  5625 ms     | 0x699d PK11_DeriveWithTemplate()
  5625 ms  0x699d ret:0x7fd2b5309180
  5625 ms  0x699d SSL_AuthCertificateComplete()
  5625 ms  0x699d fd:0x7fd2b52caf10
  5625 ms  0x699d err:0x0
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2b5309e00
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b5309180
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2b5309e00
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b5309d80
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2b5309e00
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b530a180
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2c9787200
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b530a200
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2c9787200
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b530a280
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2b5309d80
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b530a280
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2b5309d80
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b530a300
  5625 ms     | 0x699d PK11_DeriveWithFlags()
  5625 ms     | 0x699d basekey:0x7fd2c9787200
  5625 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5625 ms     | 0x699d ret:0x7fd2b5309700
  5625 ms     | 0x699d PK11_Encrypt()
  5625 ms     | 0x699d symkey:0x7fd2b530a200
  5626 ms     | 0x699d PK11_DeriveWithFlags()
  5626 ms     | 0x699d basekey:0x7fd2b5309180
  5626 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5626 ms     | 0x699d ret:0x7fd2b5309700
  5626 ms     | 0x699d PK11_DeriveWithFlags()
  5626 ms     | 0x699d basekey:0x7fd2b5309180
  5626 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5626 ms     | 0x699d ret:0x7fd2b530a300
  5626 ms     | 0x699d PK11_DeriveWithFlags()
  5626 ms     | 0x699d basekey:0x7fd2b5309e00
  5626 ms     |    | 0x699d PK11_DeriveWithTemplate()
  5626 ms     | 0x699d ret:0x7fd2b530a200
  5626 ms     | 0x699d SECKEY_DestroyPrivateKey()
  5626 ms     | 0x699d privk:0x7fd2b52c9820::7fd2b52c9820  40 d7 9a c7                                      @...
  5626 ms     | 0x699d privk:0x7fd2b52c9820::7fd2b52c9820  e5 e5 e5 e5                                      ....
  5626 ms     | 0x699d SECKEY_DestroyPrivateKey()
  5626 ms     | 0x699d privk:0x7fd2b52c7820::7fd2b52c7820  60 d5 9a c7                                      `...
  5626 ms     | 0x699d privk:0x7fd2b52c7820::7fd2b52c7820  e5 e5 e5 e5                                      ....
  5627 ms  0x699d PK11_Encrypt()
  5627 ms  0x699d symkey:0x7fd2b5309700
  5627 ms  0x699d PK11_Encrypt()
  5627 ms  0x699d symkey:0x7fd2b5309080
  5639 ms  0x699d PK11_DeriveWithFlags()
  5639 ms  0x699d basekey:0x7fd2b5309600
  5639 ms     | 0x699d PK11_DeriveWithTemplate()
  5639 ms  0x699d ret:0x7fd2c80c4b80
  5639 ms  0x699d PK11_DeriveWithFlags()
  5639 ms  0x699d basekey:0x7fd2b5309600
  5639 ms     | 0x699d PK11_DeriveWithTemplate()
  5639 ms  0x699d ret:0x7fd2c80c4b80
  5639 ms  0x699d PK11_Encrypt()
  5639 ms  0x699d symkey:0x7fd2b5309080
  5651 ms  0x699d PK11_DeriveWithFlags()
  5651 ms  0x699d basekey:0x7fd2b530a200
  5651 ms     | 0x699d PK11_DeriveWithTemplate()
  5651 ms  0x699d ret:0x7fd2c80c4b80
  5651 ms  0x699d PK11_DeriveWithFlags()
  5651 ms  0x699d basekey:0x7fd2b530a200
  5651 ms     | 0x699d PK11_DeriveWithTemplate()
  5651 ms  0x699d ret:0x7fd2c80c4b80
  5652 ms  0x699d PR_Close()
  5652 ms  0x699d fd:0x7fd2b52caf10
  5652 ms     | 0x699d PK11_Encrypt()
  5652 ms     | 0x699d symkey:0x7fd2b5309700
           /* TID 0x69a5 */
  5667 ms  0x69a5 PR_Close()
  5667 ms  0x69a5 fd:0x7fd2b52caf10
  5693 ms  0x69a5 PR_Close()
  5693 ms  0x69a5 fd:0x7fd2b52ca6d0
           /* TID 0x699d */
  5706 ms  0x699d PK11_Encrypt()
  5706 ms  0x699d symkey:0x7fd2b5309080
           /* TID 0x69a5 */
  5759 ms  0x69a5 PR_Close()
  5759 ms  0x69a5 fd:0x7fd2b52567f0
           /* TID 0x699d */
  5759 ms  0x699d PK11_Encrypt()
  5759 ms  0x699d symkey:0x7fd2b5309080
  5768 ms  0x699d PR_Close()
  5768 ms  0x699d fd:0x7fd2c758fca0
           /* TID 0x6992 */
  5770 ms  0x6992 EC_ValidatePublicKey()
  5771 ms  0x6992 ret:0x0
  5771 ms  0x6992 EC_ValidatePublicKey()
  5773 ms  0x6992 ret:0x0
  5773 ms  0x6992 EC_ValidatePublicKey()
  5774 ms  0x6992 ret:0x0
  5774 ms  0x6992 EC_ValidatePublicKey()
  5776 ms  0x6992 ret:0x0
  5776 ms  0x6992 EC_ValidatePublicKey()
  5777 ms  0x6992 ret:0x0
  5777 ms  0x6992 EC_ValidatePublicKey()
  5780 ms  0x6992 ret:0x0
  5780 ms  0x6992 EC_ValidatePublicKey()
  5782 ms  0x6992 ret:0x0
  5782 ms  0x6992 EC_ValidatePublicKey()
  5783 ms  0x6992 ret:0x0
  5783 ms  0x6992 EC_ValidatePublicKey()
  5784 ms  0x6992 ret:0x0
  5784 ms  0x6992 EC_ValidatePublicKey()
  5786 ms  0x6992 ret:0x0
           /* TID 0x699d */
  5786 ms  0x699d PK11_Encrypt()
  5786 ms  0x699d symkey:0x7fd2b55e9300
  5801 ms  0x699d PR_Close()
  5801 ms  0x699d fd:0x7fd2c79b3cd0
  5801 ms     | 0x699d PK11_Encrypt()
  5801 ms     | 0x699d symkey:0x7fd2c799ec00
  5801 ms  0x699d PR_Close()
  5801 ms  0x699d fd:0x7fd2c79b3790
  5801 ms     | 0x699d PK11_Encrypt()
  5801 ms     | 0x699d symkey:0x7fd2c799e080
  5801 ms  0x699d PR_Close()
  5801 ms  0x699d fd:0x7fd2b5626370
  5801 ms     | 0x699d PK11_Encrypt()
  5801 ms     | 0x699d symkey:0x7fd2b59fab00
  5801 ms  0x699d PR_Close()
  5801 ms  0x699d fd:0x7fd2d540be80
  5801 ms  0x699d PR_Close()
  5801 ms  0x699d fd:0x7fd2d540b400
  5801 ms     | 0x699d PK11_Encrypt()
  5801 ms     | 0x699d symkey:0x7fd2b59f9d80
  5802 ms  0x699d PR_Close()
  5802 ms  0x699d fd:0x7fd2c758fd00
  5802 ms  0x699d PR_Close()
  5802 ms  0x699d fd:0x7fd2c78f74f0
  5802 ms     | 0x699d PK11_Encrypt()
  5802 ms     | 0x699d symkey:0x7fd2c80c4d80
  5802 ms  0x699d PR_Close()
  5802 ms  0x699d fd:0x7fd2c7df0fa0
  5802 ms     | 0x699d PK11_Encrypt()
  5802 ms     | 0x699d symkey:0x7fd2c6376180
  5802 ms  0x699d PR_Close()
  5802 ms  0x699d fd:0x7fd2b55e4880
  5802 ms     | 0x699d PK11_Encrypt()
  5802 ms     | 0x699d symkey:0x7fd2b55e9300
           /* TID 0x69eb */
  5803 ms  0x69eb PR_Close()
  5803 ms  0x69eb fd:0x7fd2b55e4760
  5803 ms  0x69eb PR_Close()
  5803 ms  0x69eb fd:0x7fd2b55e4760
           /* TID 0x6992 */
  5808 ms  0x6992 PR_Close()
  5808 ms  0x6992 fd:0x7fd2c97737c0
  5808 ms  0x6992 PR_Close()
  5808 ms  0x6992 fd:0x7fd2b5626310
  5809 ms  0x6992 PR_Close()
  5809 ms  0x6992 fd:0x7fd2b56263d0
  5809 ms  0x6992 PR_Close()
  5809 ms  0x6992 fd:0x7fd2b5626310
  5810 ms  0x6992 PR_Close()
  5810 ms  0x6992 fd:0x7fd2b56263d0
  5810 ms  0x6992 PR_Close()
  5810 ms  0x6992 fd:0x7fd2b5626310
           /* TID 0x69fc */
  5815 ms  0x69fc PR_Close()
  5815 ms  0x69fc fd:0x7fd2b5626490
           /* TID 0x6992 */
  5839 ms  0x6992 PR_Close()
  5839 ms  0x6992 fd:0x7fd2b56263d0
  5839 ms  0x6992 PR_Close()
  5839 ms  0x6992 fd:0x7fd2b5994070
  5840 ms  0x6992 PR_Close()
  5840 ms  0x6992 fd:0x7fd2b56263d0
  5840 ms  0x6992 PR_Close()
  5840 ms  0x6992 fd:0x7fd2b5994070
  5840 ms  0x6992 PR_Close()
  5840 ms  0x6992 fd:0x7fd2d15c89a0
  5841 ms  0x6992 PR_Close()
  5841 ms  0x6992 fd:0x7fd2d15c88b0
  5841 ms  0x6992 PR_Close()
  5841 ms  0x6992 fd:0x7fd2d15c8a60
  5843 ms  0x6992 PR_Close()
  5843 ms  0x6992 fd:0x7fd2b5994070
  5844 ms  0x6992 PR_Close()
  5844 ms  0x6992 fd:0x7fd2b5994070
  5846 ms  0x6992 PR_Close()
  5846 ms  0x6992 fd:0x7fd2b56263d0
  5846 ms  0x6992 PR_Close()
  5846 ms  0x6992 fd:0x7fd2c6ad6f70
  5847 ms  0x6992 PR_Close()
  5847 ms  0x6992 fd:0x7fd2b56263d0
  5847 ms  0x6992 PR_Close()
  5847 ms  0x6992 fd:0x7fd2c6ad6f70
  5859 ms  0x6992 PR_Close()
  5859 ms  0x6992 fd:0x7fd2c6aff190
  5860 ms  0x6992 PR_Close()
  5860 ms  0x6992 fd:0x7fd2c6aff190
  5862 ms  0x6992 PR_Close()
  5862 ms  0x6992 fd:0x7fd2b56263d0
  5862 ms  0x6992 PR_Close()
  5862 ms  0x6992 fd:0x7fd2c6aff7c0
  5863 ms  0x6992 PR_Close()
  5863 ms  0x6992 fd:0x7fd2b56263d0
  5863 ms  0x6992 PR_Close()
  5863 ms  0x6992 fd:0x7fd2c6aff7c0
  5865 ms  0x6992 PR_Close()
  5865 ms  0x6992 fd:0x7fd2c6aff820
  5867 ms  0x6992 PR_Close()
  5867 ms  0x6992 fd:0x7fd2c6aff820
  5874 ms  0x6992 PR_Close()
  5874 ms  0x6992 fd:0x7fd2c78f71c0
  5875 ms  0x6992 PR_Close()
  5875 ms  0x6992 fd:0x7fd2c78f71c0
  5877 ms  0x6992 PR_Close()
  5877 ms  0x6992 fd:0x7fd2c78f7340
           /* TID 0x69fc */
  5887 ms  0x69fc PR_Close()
  5887 ms  0x69fc fd:0x7fd2b55e48e0
  5888 ms  0x69fc PR_Close()
  5888 ms  0x69fc fd:0x7fd2b55e48e0
           /* TID 0x6992 */
  5892 ms  0x6992 PR_Close()
  5892 ms  0x6992 fd:0x7fd2b56263d0
  5892 ms  0x6992 PR_Close()
  5892 ms  0x6992 fd:0x7fd2b55e4eb0
           /* TID 0x69fc */
  5897 ms  0x69fc PR_Close()
  5897 ms  0x69fc fd:0x7fd2b5626490
  5916 ms  0x69fc PR_Close()
  5916 ms  0x69fc fd:0x7fd2b52561f0
           /* TID 0x699d */
  5920 ms  0x699d PK11_Encrypt()
  5920 ms  0x699d symkey:0x7fd2b5309080
  5920 ms  0x699d PK11_Encrypt()
  5920 ms  0x699d symkey:0x7fd2b5309080
  5921 ms  0x699d PR_Close()
  5921 ms  0x699d fd:0x7fd2b52cafa0
  5921 ms     | 0x699d PK11_Encrypt()
  5921 ms     | 0x699d symkey:0x7fd2b5309080
           /* TID 0x6997 */
  5928 ms  0x6997 PR_Close()
  5928 ms  0x6997 fd:0x7fd2d01e2e80
  5932 ms  0x6997 PR_Close()
  5932 ms  0x6997 fd:0x7fd2cc9468e0
           /* TID 0x69fc */
  5939 ms  0x69fc PR_Close()
  5939 ms  0x69fc fd:0x7fd2b5256280
           /* TID 0x699d */
  5941 ms  0x699d PR_Close()
  5941 ms  0x699d fd:0x7fd2c6ad6b50
           /* TID 0x69eb */
  5942 ms  0x69eb PR_Close()
  5942 ms  0x69eb fd:0x7fd2b5626fa0
  5942 ms  0x69eb PR_Close()
  5942 ms  0x69eb fd:0x7fd2b5626fa0
  5942 ms  0x69eb PR_Close()
  5942 ms  0x69eb fd:0x7fd2b5626fa0
  5942 ms  0x69eb PR_Close()
  5942 ms  0x69eb fd:0x7fd2b56eb040
           /* TID 0x69fc */
  5942 ms  0x69fc PR_Close()
  5942 ms  0x69fc fd:0x7fd2b56eb040
           /* TID 0x69a5 */
  5945 ms  0x69a5 PR_Close()
  5945 ms  0x69a5 fd:0x7fd2c6ad6610
  5945 ms  0x69a5 PR_Close()
  5945 ms  0x69a5 fd:0x7fd2c6ad6640
           /* TID 0x6997 */
  5951 ms  0x6997 PR_Close()
  5951 ms  0x6997 fd:0x7fd2c6aff700
           /* TID 0x6992 */
  5953 ms  0x6992 PR_Close()
  5953 ms  0x6992 fd:0x7fd2b56263d0
  5953 ms  0x6992 PR_Close()
  5953 ms  0x6992 fd:0x7fd2c6aff6a0
           /* TID 0x69fc */
  5955 ms  0x69fc PR_Close()
  5955 ms  0x69fc fd:0x7fd2c6aff730
  5957 ms  0x69fc PR_Close()
  5957 ms  0x69fc fd:0x7fd2b5994eb0
  5982 ms  0x69fc PR_Close()
  5982 ms  0x69fc fd:0x7fd2b52caaf0
  5985 ms  0x69fc PR_Close()
  5985 ms  0x69fc fd:0x7fd2b52caaf0
  5996 ms  0x69fc PR_Close()
  5996 ms  0x69fc fd:0x7fd2b5626a30
  5996 ms  0x69fc PR_Close()
  5996 ms  0x69fc fd:0x7fd2b56ebd00
  6002 ms  0x69fc PR_Close()
  6002 ms  0x69fc fd:0x7fd2b5994fd0
  6006 ms  0x69fc PR_Close()
  6006 ms  0x69fc fd:0x7fd2c6aff9a0
  6011 ms  0x69fc PR_Close()
  6011 ms  0x69fc fd:0x7fd2c6affd00
  6019 ms  0x69fc PR_Close()
  6019 ms  0x69fc fd:0x7fd2c758f190
  6021 ms  0x69fc PR_Close()
  6021 ms  0x69fc fd:0x7fd2c758f190
           /* TID 0x6992 */
  6179 ms  0x6992 PR_Close()
  6179 ms  0x6992 fd:0x7fd2b5256820
  6179 ms  0x6992 PR_Close()
  6179 ms  0x6992 fd:0x7fd2b5256820
  6190 ms  0x6992 PR_Close()
  6190 ms  0x6992 fd:0x7fd2ee9da130
  6190 ms  0x6992 PR_Close()
  6190 ms  0x6992 fd:0x7fd2ee9da190
Process terminated
