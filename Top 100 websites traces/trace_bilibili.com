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
           /* TID 0xc72 */
    43 ms  0xc72 SECKEY_DestroyPrivateKey()
    43 ms  0xc72 privk:0x7fa37d4b5020::7fa37d4b5020  60 8f 76 7d                                      `.v}
    43 ms  0xc72 privk:0x7fa37d4b5020::7fa37d4b5020  e5 e5 e5 e5                                      ....
    44 ms  0xc72 SECKEY_DestroyPrivateKey()
    44 ms  0xc72 privk:0x7fa37d4b3020::7fa37d4b3020  b0 8a 76 7d                                      ..v}
    44 ms  0xc72 privk:0x7fa37d4b3020::7fa37d4b3020  e5 e5 e5 e5                                      ....
           /* TID 0xc7a */
   271 ms  0xc7a PR_Close()
   271 ms  0xc7a fd:0x7fa37d3e4af0
           /* TID 0xc72 */
   356 ms  0xc72 SSL_ImportFD()
   356 ms  0xc72 ret:0x7fa36c793580
   356 ms  0xc72 SSL_AuthCertificateHook()
   356 ms  0xc72 fd:0x7fa36c793580
   356 ms  0xc72 ret:0x0
   356 ms  0xc72 PR_Connect()
   356 ms  0xc72 fd:0x7fa36c793580
   574 ms  0xc72 SECKEY_CreateECPrivateKey()
   574 ms  0xc72 cx:0x7fa37d3e7ae8
   576 ms     | 0xc72 EC_ValidatePublicKey()
   576 ms     | 0xc72 ret:0x0
   576 ms  0xc72 ret:0x7fa36c768820::7fa36c768820  40 cc 7c 6c                                      @.|l
   576 ms  0xc72 SECKEY_CreateECPrivateKey()
   576 ms  0xc72 cx:0x7fa37d3e7ae8
   579 ms     | 0xc72 EC_ValidatePublicKey()
   583 ms     | 0xc72 ret:0x0
   583 ms  0xc72 ret:0x7fa36c76a820::7fa36c76a820  80 cd 7c 6c                                      ..|l
           /* TID 0xcd8 */
   749 ms  0xcd8 PR_Close()
   749 ms  0xcd8 fd:0x7fa36c793ee0
   787 ms  0xcd8 PR_Close()
   787 ms  0xcd8 fd:0x7fa36c793ee0
   790 ms  0xcd8 PR_Close()
   790 ms  0xcd8 fd:0x7fa36c793ee0
           /* TID 0xc72 */
   806 ms  SECKEY_ECParamsToKeySize()
   807 ms  0xc72 ret:0x100
   807 ms  0xc72 SECKEY_CreateECPrivateKey()
   807 ms  0xc72 cx:0x7fa37d3e7ae8
   810 ms     | 0xc72 EC_ValidatePublicKey()
   814 ms     | 0xc72 ret:0x0
   814 ms  0xc72 ret:0x7fa36c774020::7fa36c774020  d0 98 40 6c                                      ..@l
   814 ms  0xc72 PK11_PubDeriveWithKDF()
   814 ms  0xc72 seckey:0x7fa36c774020
   814 ms     | 0xc72 EC_ValidatePublicKey()
   818 ms     | 0xc72 ret:0x0
   822 ms  0xc72 ret:0x7fa37e7b6300
   822 ms  0xc72 PK11_DeriveWithFlags()
   822 ms  0xc72 basekey:0x7fa37e7b6300
   822 ms     | 0xc72 PK11_DeriveWithTemplate()
   822 ms  0xc72 ret:0x7fa36c7f8a00
   822 ms  0xc72 PK11_Derive()
   822 ms  0xc72 basekey:0x7fa36c7f8a00
   822 ms     | 0xc72 PK11_DeriveWithTemplate()
   822 ms  0xc72 ret:0x7fa36c7f8b00
   822 ms  0xc72 SECKEY_DestroyPrivateKey()
   822 ms  0xc72 privk:0x7fa36c774020::7fa36c774020  d0 98 40 6c                                      ..@l
   823 ms  0xc72 privk:0x7fa36c774020::7fa36c774020  e5 e5 e5 e5                                      ....
   823 ms  0xc72 PK11_Encrypt()
   823 ms  0xc72 symkey:0x7fa36c7f8c80
   824 ms  0xc72 PR_Connect()
   824 ms  0xc72 fd:0x7fa36c420070
           /* TID 0xcdb */
   876 ms  0xcdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   876 ms  0xcdb ret:0x0
           /* TID 0xc7a */
   877 ms  0xc7a PR_Close()
   877 ms  0xc7a fd:0x7fa36c4200a0
           /* TID 0xc72 */
   877 ms  0xc72 SSL_AuthCertificateComplete()
   877 ms  0xc72 fd:0x7fa36c793580
   877 ms  0xc72 err:0x0
   877 ms  0xc72 PK11_Encrypt()
   877 ms  0xc72 symkey:0x7fa36c7f8c80
  1041 ms  0xc72 SECKEY_DestroyPrivateKey()
  1041 ms  0xc72 privk:0x7fa36c76a820::7fa36c76a820  80 cd 7c 6c                                      ..|l
  1042 ms  0xc72 privk:0x7fa36c76a820::7fa36c76a820  e5 e5 e5 e5                                      ....
  1042 ms  0xc72 SECKEY_DestroyPrivateKey()
  1042 ms  0xc72 privk:0x7fa36c768820::7fa36c768820  40 cc 7c 6c                                      @.|l
  1042 ms  0xc72 privk:0x7fa36c768820::7fa36c768820  e5 e5 e5 e5                                      ....
  1266 ms  0xc72 SSL_ImportFD()
  1266 ms  0xc72 ret:0x7fa36c420220
  1266 ms  0xc72 SSL_AuthCertificateHook()
  1266 ms  0xc72 fd:0x7fa36c420220
  1266 ms  0xc72 ret:0x0
  1266 ms  0xc72 PR_Connect()
  1266 ms  0xc72 fd:0x7fa36c420220
  1292 ms  0xc72 SECKEY_CreateECPrivateKey()
  1292 ms  0xc72 cx:0x7fa36c405728
  1294 ms     | 0xc72 EC_ValidatePublicKey()
  1294 ms     | 0xc72 ret:0x0
  1294 ms  0xc72 ret:0x7fa36c769820::7fa36c769820  80 98 40 6c                                      ..@l
  1295 ms  0xc72 SECKEY_CreateECPrivateKey()
  1295 ms  0xc72 cx:0x7fa36c405728
  1297 ms     | 0xc72 EC_ValidatePublicKey()
  1301 ms     | 0xc72 ret:0x0
  1301 ms  0xc72 ret:0x7fa36c770020::7fa36c770020  40 97 40 6c                                      @.@l
           /* TID 0xcdb */
  1354 ms  0xcdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1355 ms  0xcdb ret:0x0
           /* TID 0xc72 */
  1356 ms  SECKEY_ECParamsToKeySize()
  1356 ms  0xc72 ret:0x100
  1356 ms  0xc72 SECKEY_CreateECPrivateKey()
  1356 ms  0xc72 cx:0x7fa36c405728
  1358 ms     | 0xc72 EC_ValidatePublicKey()
  1362 ms     | 0xc72 ret:0x0
  1362 ms  0xc72 ret:0x7fa36c773820::7fa36c773820  e0 9c 40 6c                                      ..@l
  1363 ms  0xc72 PK11_PubDeriveWithKDF()
  1363 ms  0xc72 seckey:0x7fa36c773820
  1363 ms     | 0xc72 EC_ValidatePublicKey()
  1367 ms     | 0xc72 ret:0x0
  1371 ms  0xc72 ret:0x7fa37e7b6300
  1371 ms  0xc72 PK11_DeriveWithFlags()
  1371 ms  0xc72 basekey:0x7fa37e7b6300
  1371 ms     | 0xc72 PK11_DeriveWithTemplate()
  1371 ms  0xc72 ret:0x7fa36c7f9900
  1371 ms  0xc72 PK11_Derive()
  1371 ms  0xc72 basekey:0x7fa36c7f9900
  1371 ms     | 0xc72 PK11_DeriveWithTemplate()
  1371 ms  0xc72 ret:0x7fa36c7f9980
  1371 ms  0xc72 SECKEY_DestroyPrivateKey()
  1371 ms  0xc72 privk:0x7fa36c773820::7fa36c773820  e0 9c 40 6c                                      ..@l
  1372 ms  0xc72 privk:0x7fa36c773820::7fa36c773820  e5 e5 e5 e5                                      ....
  1372 ms  0xc72 PK11_Encrypt()
  1372 ms  0xc72 symkey:0x7fa36c7f9b00
  1372 ms  0xc72 SSL_AuthCertificateComplete()
  1372 ms  0xc72 fd:0x7fa36c420220
  1372 ms  0xc72 err:0x0
  1373 ms  0xc72 PK11_Encrypt()
  1373 ms  0xc72 symkey:0x7fa36c7f9b00
  1424 ms  0xc72 SECKEY_DestroyPrivateKey()
  1424 ms  0xc72 privk:0x7fa36c770020::7fa36c770020  40 97 40 6c                                      @.@l
  1424 ms  0xc72 privk:0x7fa36c770020::7fa36c770020  e5 e5 e5 e5                                      ....
  1425 ms  0xc72 SECKEY_DestroyPrivateKey()
  1425 ms  0xc72 privk:0x7fa36c769820::7fa36c769820  80 98 40 6c                                      ..@l
  1425 ms  0xc72 privk:0x7fa36c769820::7fa36c769820  e5 e5 e5 e5                                      ....
  1429 ms  0xc72 PK11_Encrypt()
  1429 ms  0xc72 symkey:0x7fa36c7f9b00
  1459 ms  0xc72 PK11_Encrypt()
  1459 ms  0xc72 symkey:0x7fa36c7f9b00
  1490 ms  0xc72 PK11_Encrypt()
  1490 ms  0xc72 symkey:0x7fa36c7f9b00
  1521 ms  0xc72 PK11_Encrypt()
  1521 ms  0xc72 symkey:0x7fa36c7f9b00
  1638 ms  0xc72 PK11_Encrypt()
  1638 ms  0xc72 symkey:0x7fa36c7f9b00
  1670 ms  0xc72 PK11_Encrypt()
  1670 ms  0xc72 symkey:0x7fa36c7f9b00
  1701 ms  0xc72 PK11_Encrypt()
  1701 ms  0xc72 symkey:0x7fa36c7f9b00
           /* TID 0xcc5 */
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420400
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420460
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420400
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420460
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420400
  1729 ms  0xcc5 PR_Close()
  1729 ms  0xcc5 fd:0x7fa36c420460
  1730 ms  0xcc5 PR_Close()
  1730 ms  0xcc5 fd:0x7fa36c420400
  1730 ms  0xcc5 PR_Close()
  1730 ms  0xcc5 fd:0x7fa36c420460
  1730 ms  0xcc5 PR_Close()
  1730 ms  0xcc5 fd:0x7fa36c420400
  1730 ms  0xcc5 PR_Close()
  1730 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420460
  1731 ms  0xcc5 PR_Close()
  1731 ms  0xcc5 fd:0x7fa36c420400
  1732 ms  0xcc5 PR_Close()
  1732 ms  0xcc5 fd:0x7fa36c420460
  1732 ms  0xcc5 PR_Close()
  1732 ms  0xcc5 fd:0x7fa36c420400
  1732 ms  0xcc5 PR_Close()
  1732 ms  0xcc5 fd:0x7fa36c420460
  1732 ms  0xcc5 PR_Close()
  1732 ms  0xcc5 fd:0x7fa36c420400
  1732 ms  0xcc5 PR_Close()
  1732 ms  0xcc5 fd:0x7fa36c420460
  1735 ms  0xcc5 PR_Close()
  1735 ms  0xcc5 fd:0x7fa36c420400
  1735 ms  0xcc5 PR_Close()
  1735 ms  0xcc5 fd:0x7fa36c4203d0
  1737 ms  0xcc5 PR_Close()
  1737 ms  0xcc5 fd:0x7fa36c4203d0
  1737 ms  0xcc5 PR_Close()
  1737 ms  0xcc5 fd:0x7fa36c420400
  1739 ms  0xcc5 PR_Close()
  1739 ms  0xcc5 fd:0x7fa36c420400
  1740 ms  0xcc5 PR_Close()
  1740 ms  0xcc5 fd:0x7fa36c420400
  1742 ms  0xcc5 PR_Close()
  1742 ms  0xcc5 fd:0x7fa36c420400
  1742 ms  0xcc5 PR_Close()
  1742 ms  0xcc5 fd:0x7fa36c420400
  1795 ms  0xcc5 PR_Close()
  1795 ms  0xcc5 fd:0x7fa36c420400
  1796 ms  0xcc5 PR_Close()
  1796 ms  0xcc5 fd:0x7fa36c420400
  1803 ms  0xcc5 PR_Close()
  1803 ms  0xcc5 fd:0x7fa36c420400
  1803 ms  0xcc5 PR_Close()
  1803 ms  0xcc5 fd:0x7fa36c420400
  1810 ms  0xcc5 PR_Close()
  1810 ms  0xcc5 fd:0x7fa36c420400
  1810 ms  0xcc5 PR_Close()
  1810 ms  0xcc5 fd:0x7fa36c420400
  1811 ms  0xcc5 PR_Close()
  1811 ms  0xcc5 fd:0x7fa36c420400
  1811 ms  0xcc5 PR_Close()
  1811 ms  0xcc5 fd:0x7fa36c420400
           /* TID 0xcc2 */
  1811 ms  0xcc2 PR_Close()
  1811 ms  0xcc2 fd:0x7fa36c420400
  1811 ms  0xcc2 PR_Close()
  1811 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
  1812 ms  0xcc2 PR_Close()
  1812 ms  0xcc2 fd:0x7fa36c420400
           /* TID 0xcd8 */
  2315 ms  0xcd8 PR_Close()
  2315 ms  0xcd8 fd:0x7fa36c420310
  2318 ms  0xcd8 PR_Close()
  2318 ms  0xcd8 fd:0x7fa36c420310
  2824 ms  0xcd8 PR_Close()
  2824 ms  0xcd8 fd:0x7fa36c420340
           /* TID 0xc7a */
  4152 ms  0xc7a PR_Close()
  4152 ms  0xc7a fd:0x7fa36c420340
  4152 ms  0xc7a PR_Close()
  4152 ms  0xc7a fd:0x7fa36c420430
           /* TID 0xc72 */
  4841 ms  0xc72 SSL_ImportFD()
  4841 ms  0xc72 ret:0x7fa38067f880
  4841 ms  0xc72 SSL_AuthCertificateHook()
  4841 ms  0xc72 fd:0x7fa38067f880
  4841 ms  0xc72 ret:0x0
  4841 ms  0xc72 PR_Connect()
  4841 ms  0xc72 fd:0x7fa38067f880
  4883 ms  0xc72 SECKEY_CreateECPrivateKey()
  4883 ms  0xc72 cx:0x7fa36c405a68
  4885 ms     | 0xc72 EC_ValidatePublicKey()
  4885 ms     | 0xc72 ret:0x0
  4885 ms  0xc72 ret:0x7fa36c39d020::7fa36c39d020  d0 58 21 6c                                      .X!l
  4885 ms  0xc72 SECKEY_CreateECPrivateKey()
  4885 ms  0xc72 cx:0x7fa36c405a68
  4888 ms     | 0xc72 EC_ValidatePublicKey()
  4893 ms     | 0xc72 ret:0x0
  4893 ms  0xc72 ret:0x7fa36c39f020::7fa36c39f020  b0 5a 21 6c                                      .Z!l
  4943 ms  SECKEY_ECParamsToKeySize()
  4943 ms  0xc72 ret:0x100
  4943 ms  0xc72 SECKEY_CreateECPrivateKey()
  4943 ms  0xc72 cx:0x7fa36c405a68
  4946 ms     | 0xc72 EC_ValidatePublicKey()
  4951 ms     | 0xc72 ret:0x0
  4951 ms  0xc72 ret:0x7fa36c3ac020::7fa36c3ac020  e0 62 22 6c                                      .b"l
  4951 ms  0xc72 PK11_PubDeriveWithKDF()
  4951 ms  0xc72 seckey:0x7fa36c3ac020
  4951 ms     | 0xc72 EC_ValidatePublicKey()
  4956 ms     | 0xc72 ret:0x0
  4960 ms  0xc72 ret:0x7fa37e7b6300
  4960 ms  0xc72 PK11_DeriveWithFlags()
  4960 ms  0xc72 basekey:0x7fa37e7b6300
  4960 ms     | 0xc72 PK11_DeriveWithTemplate()
  4960 ms  0xc72 ret:0x7fa380680f80
  4960 ms  0xc72 PK11_Derive()
  4960 ms  0xc72 basekey:0x7fa380680f80
  4960 ms     | 0xc72 PK11_DeriveWithTemplate()
  4960 ms  0xc72 ret:0x7fa380681000
  4960 ms  0xc72 SECKEY_DestroyPrivateKey()
  4960 ms  0xc72 privk:0x7fa36c3ac020::7fa36c3ac020  e0 62 22 6c                                      .b"l
  4960 ms  0xc72 privk:0x7fa36c3ac020::7fa36c3ac020  e5 e5 e5 e5                                      ....
  4961 ms  0xc72 PK11_Encrypt()
  4961 ms  0xc72 symkey:0x7fa380681180
  4962 ms  0xc72 PR_Connect()
  4962 ms  0xc72 fd:0x7fa38067fd00
           /* TID 0xc7a */
  5017 ms  0xc7a PR_Close()
  5017 ms  0xc7a fd:0x7fa37da1a280
           /* TID 0xcdb */
  5018 ms  0xcdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5019 ms  0xcdb ret:0x0
  5019 ms  0xcdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5019 ms  0xcdb ret:0x0
           /* TID 0xc72 */
  5040 ms  0xc72 SSL_AuthCertificateComplete()
  5040 ms  0xc72 fd:0x7fa38067f880
  5040 ms  0xc72 err:0x0
  5041 ms     | 0xc72 SECKEY_DestroyPrivateKey()
  5041 ms     | 0xc72 privk:0x7fa36c39f020::7fa36c39f020  b0 5a 21 6c                                      .Z!l
  5041 ms     | 0xc72 privk:0x7fa36c39f020::7fa36c39f020  e5 e5 e5 e5                                      ....
  5041 ms     | 0xc72 SECKEY_DestroyPrivateKey()
  5041 ms     | 0xc72 privk:0x7fa36c39d020::7fa36c39d020  d0 58 21 6c                                      .X!l
  5041 ms     | 0xc72 privk:0x7fa36c39d020::7fa36c39d020  e5 e5 e5 e5                                      ....
  5041 ms  0xc72 PK11_Encrypt()
  5041 ms  0xc72 symkey:0x7fa380681180
           /* TID 0xc89 */
  5298 ms  0xc89 PR_Close()
  5298 ms  0xc89 fd:0x7fa383808ca0
           /* TID 0xc7a */
  5360 ms  0xc7a PR_Close()
  5360 ms  0xc7a fd:0x7fa36c154fd0
           /* TID 0xc72 */
  6323 ms  0xc72 SSL_ImportFD()
  6323 ms  0xc72 ret:0x7fa36c169790
  6323 ms  0xc72 SSL_AuthCertificateHook()
  6323 ms  0xc72 fd:0x7fa36c169790
  6323 ms  0xc72 ret:0x0
  6323 ms  0xc72 PR_Connect()
  6323 ms  0xc72 fd:0x7fa36c169790
  6392 ms  0xc72 SECKEY_CreateECPrivateKey()
  6392 ms  0xc72 cx:0x7fa36c405f48
  6393 ms     | 0xc72 EC_ValidatePublicKey()
  6393 ms     | 0xc72 ret:0x0
  6393 ms  0xc72 ret:0x7fa36c347020::7fa36c347020  90 a7 1e 6c                                      ...l
  6394 ms  0xc72 SECKEY_CreateECPrivateKey()
  6394 ms  0xc72 cx:0x7fa36c405f48
  6396 ms     | 0xc72 EC_ValidatePublicKey()
  6402 ms     | 0xc72 ret:0x0
  6402 ms  0xc72 ret:0x7fa36c34b020::7fa36c34b020  20 a4 1e 6c                                       ..l
  6475 ms  SECKEY_ECParamsToKeySize()
  6475 ms  0xc72 ret:0xff
  6475 ms  0xc72 SECKEY_CreateECPrivateKey()
  6475 ms  0xc72 cx:0x7fa36c405f48
  6477 ms     | 0xc72 EC_ValidatePublicKey()
  6477 ms     | 0xc72 ret:0x0
  6477 ms  0xc72 ret:0x7fa36c44b020::7fa36c44b020  90 ec 32 6c                                      ..2l
  6477 ms  0xc72 PK11_PubDeriveWithKDF()
  6477 ms  0xc72 seckey:0x7fa36c44b020
  6477 ms     | 0xc72 EC_ValidatePublicKey()
  6477 ms     | 0xc72 ret:0x0
  6486 ms  0xc72 ret:0x7fa37e7b6300
  6486 ms  0xc72 PK11_DeriveWithFlags()
  6486 ms  0xc72 basekey:0x7fa37e7b6300
  6486 ms     | 0xc72 PK11_DeriveWithTemplate()
  6486 ms  0xc72 ret:0x7fa36c1e8b80
  6486 ms  0xc72 PK11_Derive()
  6486 ms  0xc72 basekey:0x7fa36c1e8b80
  6486 ms     | 0xc72 PK11_DeriveWithTemplate()
  6486 ms  0xc72 ret:0x7fa36c1e8c00
  6486 ms  0xc72 SECKEY_DestroyPrivateKey()
  6486 ms  0xc72 privk:0x7fa36c44b020::7fa36c44b020  90 ec 32 6c                                      ..2l
  6487 ms  0xc72 privk:0x7fa36c44b020::7fa36c44b020  e5 e5 e5 e5                                      ....
  6487 ms  0xc72 PK11_Encrypt()
  6487 ms  0xc72 symkey:0x7fa36c1e8d80
  6639 ms  0xc72 SSL_ImportFD()
  6639 ms  0xc72 ret:0x7fa36c1b25e0
  6639 ms  0xc72 SSL_AuthCertificateHook()
  6639 ms  0xc72 fd:0x7fa36c1b25e0
  6639 ms  0xc72 ret:0x0
  6640 ms  0xc72 PR_Connect()
  6640 ms  0xc72 fd:0x7fa36c1b25e0
  6640 ms  0xc72 SSL_ImportFD()
  6640 ms  0xc72 ret:0x7fa36c1b26a0
  6640 ms  0xc72 SSL_AuthCertificateHook()
  6640 ms  0xc72 fd:0x7fa36c1b26a0
  6640 ms  0xc72 ret:0x0
  6640 ms  0xc72 PR_Connect()
  6640 ms  0xc72 fd:0x7fa36c1b26a0
  6640 ms  0xc72 SSL_ImportFD()
  6640 ms  0xc72 ret:0x7fa36c169f10
  6641 ms  0xc72 SSL_AuthCertificateHook()
  6641 ms  0xc72 fd:0x7fa36c169f10
  6641 ms  0xc72 ret:0x0
  6641 ms  0xc72 PR_Connect()
  6641 ms  0xc72 fd:0x7fa36c169f10
  6651 ms  0xc72 SSL_ImportFD()
  6651 ms  0xc72 ret:0x7fa36c169cd0
  6651 ms  0xc72 SSL_AuthCertificateHook()
  6651 ms  0xc72 fd:0x7fa36c169cd0
  6651 ms  0xc72 ret:0x0
  6651 ms  0xc72 PR_Connect()
  6651 ms  0xc72 fd:0x7fa36c169cd0
  6651 ms  0xc72 SSL_ImportFD()
  6651 ms  0xc72 ret:0x7fa36c169fd0
  6651 ms  0xc72 SSL_AuthCertificateHook()
  6651 ms  0xc72 fd:0x7fa36c169fd0
  6652 ms  0xc72 ret:0x0
  6652 ms  0xc72 PR_Connect()
  6652 ms  0xc72 fd:0x7fa36c169fd0
  6652 ms  0xc72 SSL_ImportFD()
  6652 ms  0xc72 ret:0x7fa36c1b2400
  6652 ms  0xc72 SSL_AuthCertificateHook()
  6652 ms  0xc72 fd:0x7fa36c1b2400
  6652 ms  0xc72 ret:0x0
  6652 ms  0xc72 PR_Connect()
  6652 ms  0xc72 fd:0x7fa36c1b2400
  6653 ms  0xc72 PR_Connect()
  6653 ms  0xc72 fd:0x7fa36c169ca0
  6708 ms  0xc72 SECKEY_CreateECPrivateKey()
  6708 ms  0xc72 cx:0x7fa36c406768
  6708 ms     | 0xc72 EC_ValidatePublicKey()
  6709 ms     | 0xc72 ret:0x0
  6709 ms  0xc72 ret:0x7fa36c446820::7fa36c446820  40 02 75 6c                                      @.ul
  6709 ms  0xc72 SECKEY_CreateECPrivateKey()
  6709 ms  0xc72 cx:0x7fa36c406768
  6710 ms     | 0xc72 EC_ValidatePublicKey()
  6712 ms     | 0xc72 ret:0x0
  6712 ms  0xc72 ret:0x7fa36c44b020::7fa36c44b020  f0 06 75 6c                                      ..ul
  6713 ms  0xc72 SECKEY_CreateECPrivateKey()
  6713 ms  0xc72 cx:0x7fa36c4065c8
  6714 ms     | 0xc72 EC_ValidatePublicKey()
  6714 ms     | 0xc72 ret:0x0
  6714 ms  0xc72 ret:0x7fa36c44e020::7fa36c44e020  40 07 75 6c                                      @.ul
  6714 ms  0xc72 SECKEY_CreateECPrivateKey()
  6714 ms  0xc72 cx:0x7fa36c4065c8
  6715 ms     | 0xc72 EC_ValidatePublicKey()
  6718 ms     | 0xc72 ret:0x0
  6718 ms  0xc72 ret:0x7fa36c450020::7fa36c450020  50 0b 75 6c                                      P.ul
  6718 ms  0xc72 SECKEY_CreateECPrivateKey()
  6718 ms  0xc72 cx:0x7fa36c406908
  6719 ms     | 0xc72 EC_ValidatePublicKey()
  6719 ms     | 0xc72 ret:0x0
  6719 ms  0xc72 ret:0x7fa36c452820::7fa36c452820  d0 0d 75 6c                                      ..ul
  6720 ms  0xc72 SECKEY_CreateECPrivateKey()
  6720 ms  0xc72 cx:0x7fa36c406908
  6721 ms     | 0xc72 EC_ValidatePublicKey()
  6723 ms     | 0xc72 ret:0x0
  6723 ms  0xc72 ret:0x7fa36c454820::7fa36c454820  a0 a1 78 6c                                      ..xl
  6724 ms  0xc72 SECKEY_CreateECPrivateKey()
  6724 ms  0xc72 cx:0x7fa36c406de8
  6724 ms     | 0xc72 EC_ValidatePublicKey()
  6724 ms     | 0xc72 ret:0x0
  6724 ms  0xc72 ret:0x7fa36c457020::7fa36c457020  80 a3 78 6c                                      ..xl
  6725 ms  0xc72 SECKEY_CreateECPrivateKey()
  6725 ms  0xc72 cx:0x7fa36c406de8
  6725 ms     | 0xc72 EC_ValidatePublicKey()
  6727 ms     | 0xc72 ret:0x0
  6727 ms  0xc72 ret:0x7fa36c459020::7fa36c459020  70 a9 78 6c                                      p.xl
  6728 ms  0xc72 SECKEY_CreateECPrivateKey()
  6728 ms  0xc72 cx:0x7fa36c406c48
  6728 ms     | 0xc72 EC_ValidatePublicKey()
  6728 ms     | 0xc72 ret:0x0
  6728 ms  0xc72 ret:0x7fa36c45b820::7fa36c45b820  50 ab 78 6c                                      P.xl
  6728 ms  0xc72 SECKEY_CreateECPrivateKey()
  6728 ms  0xc72 cx:0x7fa36c406c48
  6729 ms     | 0xc72 EC_ValidatePublicKey()
  6731 ms     | 0xc72 ret:0x0
  6731 ms  0xc72 ret:0x7fa36c45d820::7fa36c45d820  10 af 78 6c                                      ..xl
  6731 ms  0xc72 SECKEY_CreateECPrivateKey()
  6731 ms  0xc72 cx:0x7fa36c406aa8
  6732 ms     | 0xc72 EC_ValidatePublicKey()
  6732 ms     | 0xc72 ret:0x0
  6732 ms  0xc72 ret:0x7fa36c460020::7fa36c460020  a0 c1 7c 6c                                      ..|l
  6732 ms  0xc72 SECKEY_CreateECPrivateKey()
  6732 ms  0xc72 cx:0x7fa36c406aa8
  6733 ms     | 0xc72 EC_ValidatePublicKey()
  6734 ms     | 0xc72 ret:0x0
  6734 ms  0xc72 ret:0x7fa36c462020::7fa36c462020  80 c3 7c 6c                                      ..|l
           /* TID 0xcdb */
  6750 ms  0xcdb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6750 ms  0xcdb ret:0x0
           /* TID 0xc7a */
  6751 ms  0xc7a PR_Close()
  6751 ms  0xc7a fd:0x7fa36c1693d0
           /* TID 0xc72 */
  6783 ms  SECKEY_ECParamsToKeySize()
  6783 ms  0xc72 ret:0xff
  6783 ms  0xc72 SECKEY_CreateECPrivateKey()
  6783 ms  0xc72 cx:0x7fa36c406768
  6784 ms     | 0xc72 EC_ValidatePublicKey()
  6784 ms     | 0xc72 ret:0x0
  6784 ms  0xc72 ret:0x7fa36c75e820::7fa36c75e820  00 d6 3d 7d                                      ..=}
  6784 ms  0xc72 PK11_PubDeriveWithKDF()
  6784 ms  0xc72 seckey:0x7fa36c75e820
  6784 ms     | 0xc72 EC_ValidatePublicKey()
  6784 ms     | 0xc72 ret:0x0
  6784 ms  0xc72 ret:0x7fa37e7b6300
  6784 ms  0xc72 PK11_DeriveWithFlags()
  6784 ms  0xc72 basekey:0x7fa37e7b6300
  6784 ms     | 0xc72 PK11_DeriveWithTemplate()
  6784 ms  0xc72 ret:0x7fa36c1e8f80
  6784 ms  0xc72 PK11_Derive()
  6784 ms  0xc72 basekey:0x7fa36c1e8f80
  6784 ms     | 0xc72 PK11_DeriveWithTemplate()
  6785 ms  0xc72 ret:0x7fa36c4fe780
  6785 ms  0xc72 SECKEY_DestroyPrivateKey()
  6785 ms  0xc72 privk:0x7fa36c75e820::7fa36c75e820  00 d6 3d 7d                                      ..=}
  6785 ms  0xc72 privk:0x7fa36c75e820::7fa36c75e820  e5 e5 e5 e5                                      ....
  6785 ms  0xc72 PK11_Encrypt()
  6785 ms  0xc72 symkey:0x7fa383158700
  7789 ms  SECKEY_ECParamsToKeySize()
  7789 ms  0xc72 ret:0xff
  7790 ms  0xc72 SECKEY_CreateECPrivateKey()
  7790 ms  0xc72 cx:0x7fa36c406908
  7791 ms     | 0xc72 EC_ValidatePublicKey()
  7791 ms     | 0xc72 ret:0x0
  7791 ms  0xc72 ret:0x7fa36c762020::7fa36c762020  00 01 75 6c                                      ..ul
  7792 ms  0xc72 PK11_PubDeriveWithKDF()
  7792 ms  0xc72 seckey:0x7fa36c762020
  7792 ms     | 0xc72 EC_ValidatePublicKey()
  7792 ms     | 0xc72 ret:0x0
  7793 ms  0xc72 ret:0x7fa37e7b6300
  7793 ms  0xc72 PK11_DeriveWithFlags()
  7793 ms  0xc72 basekey:0x7fa37e7b6300
  7793 ms     | 0xc72 PK11_DeriveWithTemplate()
  7793 ms  0xc72 ret:0x7fa36c1b4700
  7794 ms  0xc72 PK11_Derive()
  7794 ms  0xc72 basekey:0x7fa36c1b4700
  7794 ms     | 0xc72 PK11_DeriveWithTemplate()
  7794 ms  0xc72 ret:0x7fa36c1e7880
  7794 ms  0xc72 SECKEY_DestroyPrivateKey()
  7794 ms  0xc72 privk:0x7fa36c762020::7fa36c762020  00 01 75 6c                                      ..ul
  7794 ms  0xc72 privk:0x7fa36c762020::7fa36c762020  e5 e5 e5 e5                                      ....
  7794 ms  0xc72 PK11_Encrypt()
  7794 ms  0xc72 symkey:0x7fa36c1e7a80
  7801 ms  SECKEY_ECParamsToKeySize()
  7801 ms  0xc72 ret:0xff
  7801 ms  0xc72 SECKEY_CreateECPrivateKey()
  7801 ms  0xc72 cx:0x7fa36c4065c8
  7803 ms     | 0xc72 EC_ValidatePublicKey()
  7803 ms     | 0xc72 ret:0x0
  7803 ms  0xc72 ret:0x7fa36c463820::7fa36c463820  a0 01 75 6c                                      ..ul
  7803 ms  0xc72 PK11_PubDeriveWithKDF()
  7803 ms  0xc72 seckey:0x7fa36c463820
  7803 ms     | 0xc72 EC_ValidatePublicKey()
  7803 ms     | 0xc72 ret:0x0
  7804 ms  0xc72 ret:0x7fa37e7b6300
  7805 ms  0xc72 PK11_DeriveWithFlags()
  7805 ms  0xc72 basekey:0x7fa37e7b6300
  7805 ms     | 0xc72 PK11_DeriveWithTemplate()
  7805 ms  0xc72 ret:0x7fa36c1b3d00
  7805 ms  0xc72 PK11_Derive()
  7805 ms  0xc72 basekey:0x7fa36c1b3d00
  7805 ms     | 0xc72 PK11_DeriveWithTemplate()
  7805 ms  0xc72 ret:0x7fa36c1e7b80
  7805 ms  0xc72 SECKEY_DestroyPrivateKey()
  7805 ms  0xc72 privk:0x7fa36c463820::7fa36c463820  a0 01 75 6c                                      ..ul
  7805 ms  0xc72 privk:0x7fa36c463820::7fa36c463820  e5 e5 e5 e5                                      ....
  7806 ms  0xc72 PK11_Encrypt()
  7806 ms  0xc72 symkey:0x7fa36c1e7d00
  7806 ms  0xc72 SSL_AuthCertificateComplete()
  7806 ms  0xc72 fd:0x7fa36c169790
  7806 ms  0xc72 err:0x0
  7806 ms     | 0xc72 SECKEY_DestroyPrivateKey()
  7806 ms     | 0xc72 privk:0x7fa36c34b020::7fa36c34b020  20 a4 1e 6c                                       ..l
  7807 ms     | 0xc72 privk:0x7fa36c34b020::7fa36c34b020  e5 e5 e5 e5                                      ....
  7807 ms     | 0xc72 SECKEY_DestroyPrivateKey()
  7807 ms     | 0xc72 privk:0x7fa36c347020::7fa36c347020  90 a7 1e 6c                                      ...l
  7807 ms     | 0xc72 privk:0x7fa36c347020::7fa36c347020  e5 e5 e5 e5                                      ....
  7807 ms  0xc72 SSL_AuthCertificateComplete()
  7807 ms  0xc72 fd:0x7fa36c1b26a0
  7807 ms  0xc72 err:0x0
  7807 ms  0xc72 SSL_AuthCertificateComplete()
  7807 ms  0xc72 fd:0x7fa36c169f10
  7807 ms  0xc72 err:0x0
  7807 ms  0xc72 SSL_AuthCertificateComplete()
  7807 ms  0xc72 fd:0x7fa36c1b25e0
  7807 ms  0xc72 err:0x0
  7809 ms  0xc72 PK11_Encrypt()
  7809 ms  0xc72 symkey:0x7fa36c1e8d80
  7809 ms  0xc72 PK11_Encrypt()
  7809 ms  0xc72 symkey:0x7fa36c1e8d80
  7812 ms  SECKEY_ECParamsToKeySize()
  7812 ms  0xc72 ret:0xff
  7812 ms  0xc72 SECKEY_CreateECPrivateKey()
  7812 ms  0xc72 cx:0x7fa36c406de8
  7813 ms     | 0xc72 EC_ValidatePublicKey()
  7813 ms     | 0xc72 ret:0x0
  7814 ms  0xc72 ret:0x7fa36c448820::7fa36c448820  50 96 40 6c                                      P.@l
  7814 ms  0xc72 PK11_PubDeriveWithKDF()
  7814 ms  0xc72 seckey:0x7fa36c448820
  7814 ms     | 0xc72 EC_ValidatePublicKey()
  7814 ms     | 0xc72 ret:0x0
  7815 ms  0xc72 ret:0x7fa37e7b6300
  7815 ms  0xc72 PK11_DeriveWithFlags()
  7815 ms  0xc72 basekey:0x7fa37e7b6300
  7815 ms     | 0xc72 PK11_DeriveWithTemplate()
  7815 ms  0xc72 ret:0x7fa36c1e8080
  7815 ms  0xc72 PK11_Derive()
  7815 ms  0xc72 basekey:0x7fa36c1e8080
  7815 ms     | 0xc72 PK11_DeriveWithTemplate()
  7816 ms  0xc72 ret:0x7fa36c1e8100
  7816 ms  0xc72 SECKEY_DestroyPrivateKey()
  7816 ms  0xc72 privk:0x7fa36c448820::7fa36c448820  50 96 40 6c                                      P.@l
  7816 ms  0xc72 privk:0x7fa36c448820::7fa36c448820  e5 e5 e5 e5                                      ....
  7816 ms  0xc72 PK11_Encrypt()
  7816 ms  0xc72 symkey:0x7fa36c437280
  7818 ms  SECKEY_ECParamsToKeySize()
  7818 ms  0xc72 ret:0xff
  7818 ms  0xc72 SECKEY_CreateECPrivateKey()
  7818 ms  0xc72 cx:0x7fa36c406c48
  7819 ms     | 0xc72 EC_ValidatePublicKey()
  7819 ms     | 0xc72 ret:0x0
  7819 ms  0xc72 ret:0x7fa36c451020::7fa36c451020  00 01 75 6c                                      ..ul
  7819 ms  0xc72 PK11_PubDeriveWithKDF()
  7819 ms  0xc72 seckey:0x7fa36c451020
  7819 ms     | 0xc72 EC_ValidatePublicKey()
  7819 ms     | 0xc72 ret:0x0
  7820 ms  0xc72 ret:0x7fa37e7b6300
  7820 ms  0xc72 PK11_DeriveWithFlags()
  7820 ms  0xc72 basekey:0x7fa37e7b6300
  7820 ms     | 0xc72 PK11_DeriveWithTemplate()
  7820 ms  0xc72 ret:0x7fa36c438380
  7820 ms  0xc72 PK11_Derive()
  7820 ms  0xc72 basekey:0x7fa36c438380
  7820 ms     | 0xc72 PK11_DeriveWithTemplate()
  7820 ms  0xc72 ret:0x7fa36c4fec00
  7820 ms  0xc72 SECKEY_DestroyPrivateKey()
  7820 ms  0xc72 privk:0x7fa36c451020::7fa36c451020  00 01 75 6c                                      ..ul
  7821 ms  0xc72 privk:0x7fa36c451020::7fa36c451020  e5 e5 e5 e5                                      ....
  7821 ms  0xc72 PK11_Encrypt()
  7821 ms  0xc72 symkey:0x7fa36c74e180
  7822 ms  SECKEY_ECParamsToKeySize()
  7822 ms  0xc72 ret:0xff
  7822 ms  0xc72 SECKEY_CreateECPrivateKey()
  7822 ms  0xc72 cx:0x7fa36c406aa8
  7823 ms     | 0xc72 EC_ValidatePublicKey()
  7823 ms     | 0xc72 ret:0x0
  7823 ms  0xc72 ret:0x7fa36c45e820::7fa36c45e820  e0 02 75 6c                                      ..ul
  7823 ms  0xc72 PK11_PubDeriveWithKDF()
  7823 ms  0xc72 seckey:0x7fa36c45e820
  7823 ms     | 0xc72 EC_ValidatePublicKey()
  7823 ms     | 0xc72 ret:0x0
  7824 ms  0xc72 ret:0x7fa37e7b6300
  7824 ms  0xc72 PK11_DeriveWithFlags()
  7824 ms  0xc72 basekey:0x7fa37e7b6300
  7824 ms     | 0xc72 PK11_DeriveWithTemplate()
  7824 ms  0xc72 ret:0x7fa36c74e280
  7824 ms  0xc72 PK11_Derive()
  7824 ms  0xc72 basekey:0x7fa36c74e280
  7824 ms     | 0xc72 PK11_DeriveWithTemplate()
  7824 ms  0xc72 ret:0x7fa36c74e300
  7824 ms  0xc72 SECKEY_DestroyPrivateKey()
  7824 ms  0xc72 privk:0x7fa36c45e820::7fa36c45e820  e0 02 75 6c                                      ..ul
  7825 ms  0xc72 privk:0x7fa36c45e820::7fa36c45e820  e5 e5 e5 e5                                      ....
  7825 ms  0xc72 PK11_Encrypt()
  7825 ms  0xc72 symkey:0x7fa36c74e480
  7827 ms  0xc72 PK11_Encrypt()
  7827 ms  0xc72 symkey:0x7fa36c1e7a80
  7827 ms  0xc72 PK11_Encrypt()
  7827 ms  0xc72 symkey:0x7fa383158700
  7828 ms  0xc72 PK11_Encrypt()
  7828 ms  0xc72 symkey:0x7fa36c1e7d00
  7828 ms  0xc72 SSL_AuthCertificateComplete()
  7828 ms  0xc72 fd:0x7fa36c1b2400
  7828 ms  0xc72 err:0x0
  7828 ms  0xc72 SSL_AuthCertificateComplete()
  7828 ms  0xc72 fd:0x7fa36c169fd0
  7828 ms  0xc72 err:0x0
  7828 ms  0xc72 SSL_AuthCertificateComplete()
  7828 ms  0xc72 fd:0x7fa36c169cd0
  7828 ms  0xc72 err:0x0
  7828 ms  0xc72 PK11_Encrypt()
  7828 ms  0xc72 symkey:0x7fa36c1e8d80
  7829 ms  0xc72 PK11_Encrypt()
  7829 ms  0xc72 symkey:0x7fa36c437280
  7829 ms  0xc72 PK11_Encrypt()
  7829 ms  0xc72 symkey:0x7fa36c74e180
  7830 ms  0xc72 PK11_Encrypt()
  7830 ms  0xc72 symkey:0x7fa36c74e480
  7830 ms  0xc72 SECKEY_DestroyPrivateKey()
  7830 ms  0xc72 privk:0x7fa36c44b020::7fa36c44b020  f0 06 75 6c                                      ..ul
  7830 ms  0xc72 privk:0x7fa36c44b020::7fa36c44b020  e5 e5 e5 e5                                      ....
  7830 ms  0xc72 SECKEY_DestroyPrivateKey()
  7830 ms  0xc72 privk:0x7fa36c446820::7fa36c446820  40 02 75 6c                                      @.ul
  7830 ms  0xc72 privk:0x7fa36c446820::7fa36c446820  e5 e5 e5 e5                                      ....
  7863 ms  0xc72 SECKEY_DestroyPrivateKey()
  7863 ms  0xc72 privk:0x7fa36c454820::7fa36c454820  a0 a1 78 6c                                      ..xl
  7863 ms  0xc72 privk:0x7fa36c454820::7fa36c454820  e5 e5 e5 e5                                      ....
  7863 ms  0xc72 SECKEY_DestroyPrivateKey()
  7863 ms  0xc72 privk:0x7fa36c452820::7fa36c452820  d0 0d 75 6c                                      ..ul
  7863 ms  0xc72 privk:0x7fa36c452820::7fa36c452820  e5 e5 e5 e5                                      ....
  7874 ms  0xc72 SECKEY_DestroyPrivateKey()
  7874 ms  0xc72 privk:0x7fa36c450020::7fa36c450020  50 0b 75 6c                                      P.ul
  7874 ms  0xc72 privk:0x7fa36c450020::7fa36c450020  e5 e5 e5 e5                                      ....
  7874 ms  0xc72 SECKEY_DestroyPrivateKey()
  7874 ms  0xc72 privk:0x7fa36c44e020::7fa36c44e020  40 07 75 6c                                      @.ul
  7874 ms  0xc72 privk:0x7fa36c44e020::7fa36c44e020  e5 e5 e5 e5                                      ....
  7884 ms  0xc72 SECKEY_DestroyPrivateKey()
  7884 ms  0xc72 privk:0x7fa36c459020::7fa36c459020  70 a9 78 6c                                      p.xl
  7884 ms  0xc72 privk:0x7fa36c459020::7fa36c459020  e5 e5 e5 e5                                      ....
  7884 ms  0xc72 SECKEY_DestroyPrivateKey()
  7884 ms  0xc72 privk:0x7fa36c457020::7fa36c457020  80 a3 78 6c                                      ..xl
  7884 ms  0xc72 privk:0x7fa36c457020::7fa36c457020  e5 e5 e5 e5                                      ....
  7889 ms  0xc72 SECKEY_DestroyPrivateKey()
  7889 ms  0xc72 privk:0x7fa36c45d820::7fa36c45d820  10 af 78 6c                                      ..xl
  7889 ms  0xc72 privk:0x7fa36c45d820::7fa36c45d820  e5 e5 e5 e5                                      ....
  7889 ms  0xc72 SECKEY_DestroyPrivateKey()
  7889 ms  0xc72 privk:0x7fa36c45b820::7fa36c45b820  50 ab 78 6c                                      P.xl
  7889 ms  0xc72 privk:0x7fa36c45b820::7fa36c45b820  e5 e5 e5 e5                                      ....
  7893 ms  0xc72 SECKEY_DestroyPrivateKey()
  7893 ms  0xc72 privk:0x7fa36c462020::7fa36c462020  80 c3 7c 6c                                      ..|l
  7893 ms  0xc72 privk:0x7fa36c462020::7fa36c462020  e5 e5 e5 e5                                      ....
  7893 ms  0xc72 SECKEY_DestroyPrivateKey()
  7893 ms  0xc72 privk:0x7fa36c460020::7fa36c460020  a0 c1 7c 6c                                      ..|l
  7893 ms  0xc72 privk:0x7fa36c460020::7fa36c460020  e5 e5 e5 e5                                      ....
           /* TID 0xc7a */
  7945 ms  0xc7a PR_Close()
  7945 ms  0xc7a fd:0x7fa36c78d250
           /* TID 0xc72 */
  7952 ms  0xc72 PK11_Encrypt()
  7952 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  7956 ms  0xc7a PR_Close()
  7956 ms  0xc7a fd:0x7fa36c78d2b0
  7959 ms  0xc7a PR_Close()
  7959 ms  0xc7a fd:0x7fa36c32f8b0
  7964 ms  0xc7a PR_Close()
  7964 ms  0xc7a fd:0x7fa36c169520
           /* TID 0xc72 */
  7986 ms  0xc72 PK11_Encrypt()
  7986 ms  0xc72 symkey:0x7fa36c1e8d80
  7988 ms  0xc72 PK11_Encrypt()
  7988 ms  0xc72 symkey:0x7fa36c1e8d80
  7990 ms  0xc72 PK11_Encrypt()
  7990 ms  0xc72 symkey:0x7fa36c1e8d80
  7997 ms  0xc72 SSL_ImportFD()
  7997 ms  0xc72 ret:0x7fa36c7933d0
  7997 ms  0xc72 SSL_AuthCertificateHook()
  7997 ms  0xc72 fd:0x7fa36c7933d0
  7997 ms  0xc72 ret:0x0
  7998 ms  0xc72 PK11_Encrypt()
  7998 ms  0xc72 symkey:0x7fa36c1e8d80
  7998 ms  0xc72 PK11_Encrypt()
  7998 ms  0xc72 symkey:0x7fa36c1e8d80
  7998 ms  0xc72 PK11_Encrypt()
  7998 ms  0xc72 symkey:0x7fa36c1e8d80
  7998 ms  0xc72 PK11_Encrypt()
  7998 ms  0xc72 symkey:0x7fa36c1e8d80
  7999 ms  0xc72 PK11_Encrypt()
  7999 ms  0xc72 symkey:0x7fa36c1e8d80
  7999 ms  0xc72 PK11_Encrypt()
  7999 ms  0xc72 symkey:0x7fa36c1e8d80
  7999 ms  0xc72 PK11_Encrypt()
  7999 ms  0xc72 symkey:0x7fa36c1e8d80
  7999 ms  0xc72 PK11_Encrypt()
  7999 ms  0xc72 symkey:0x7fa36c1e8d80
  7999 ms  0xc72 PR_Connect()
  7999 ms  0xc72 fd:0x7fa36c7933d0
  7999 ms  0xc72 SSL_ImportFD()
  7999 ms  0xc72 ret:0x7fa36c169070
  7999 ms  0xc72 SSL_AuthCertificateHook()
  7999 ms  0xc72 fd:0x7fa36c169070
  7999 ms  0xc72 ret:0x0
  7999 ms  0xc72 PR_Connect()
  7999 ms  0xc72 fd:0x7fa36c169070
  7999 ms  0xc72 SSL_ImportFD()
  7999 ms  0xc72 ret:0x7fa36c1b2430
  7999 ms  0xc72 SSL_AuthCertificateHook()
  7999 ms  0xc72 fd:0x7fa36c1b2430
  7999 ms  0xc72 ret:0x0
  7999 ms  0xc72 PR_Connect()
  7999 ms  0xc72 fd:0x7fa36c1b2430
  7999 ms  0xc72 SSL_ImportFD()
  7999 ms  0xc72 ret:0x7fa36c793220
  7999 ms  0xc72 SSL_AuthCertificateHook()
  7999 ms  0xc72 fd:0x7fa36c793220
  7999 ms  0xc72 ret:0x0
  7999 ms  0xc72 PR_Connect()
  7999 ms  0xc72 fd:0x7fa36c793220
  8000 ms  0xc72 SSL_ImportFD()
  8000 ms  0xc72 ret:0x7fa36c78df70
  8000 ms  0xc72 SSL_AuthCertificateHook()
  8000 ms  0xc72 fd:0x7fa36c78df70
  8000 ms  0xc72 ret:0x0
  8000 ms  0xc72 PR_Connect()
  8000 ms  0xc72 fd:0x7fa36c78df70
  8000 ms  0xc72 SSL_ImportFD()
  8000 ms  0xc72 ret:0x7fa36c793040
  8000 ms  0xc72 SSL_AuthCertificateHook()
  8000 ms  0xc72 fd:0x7fa36c793040
  8000 ms  0xc72 ret:0x0
  8000 ms  0xc72 PR_Connect()
  8000 ms  0xc72 fd:0x7fa36c793040
  8000 ms  0xc72 SSL_ImportFD()
  8000 ms  0xc72 ret:0x7fa36c7930d0
  8000 ms  0xc72 SSL_AuthCertificateHook()
  8000 ms  0xc72 fd:0x7fa36c7930d0
  8000 ms  0xc72 ret:0x0
  8001 ms  0xc72 PK11_Encrypt()
  8001 ms  0xc72 symkey:0x7fa36c1e8d80
  8001 ms  0xc72 PK11_Encrypt()
  8001 ms  0xc72 symkey:0x7fa36c1e8d80
  8002 ms  0xc72 PK11_Encrypt()
  8002 ms  0xc72 symkey:0x7fa36c1e8d80
  8002 ms  0xc72 PR_Connect()
  8002 ms  0xc72 fd:0x7fa36c7930d0
  8002 ms  0xc72 SSL_ImportFD()
  8002 ms  0xc72 ret:0x7fa36c1b27c0
  8002 ms  0xc72 SSL_AuthCertificateHook()
  8002 ms  0xc72 fd:0x7fa36c1b27c0
  8002 ms  0xc72 ret:0x0
  8002 ms  0xc72 PR_Connect()
  8002 ms  0xc72 fd:0x7fa36c1b27c0
  8002 ms  0xc72 SSL_ImportFD()
  8002 ms  0xc72 ret:0x7fa36c7931f0
  8002 ms  0xc72 SSL_AuthCertificateHook()
  8002 ms  0xc72 fd:0x7fa36c7931f0
  8002 ms  0xc72 ret:0x0
  8002 ms  0xc72 PR_Connect()
  8002 ms  0xc72 fd:0x7fa36c7931f0
  8002 ms  0xc72 SSL_ImportFD()
  8002 ms  0xc72 ret:0x7fa36c7932b0
  8002 ms  0xc72 SSL_AuthCertificateHook()
  8002 ms  0xc72 fd:0x7fa36c7932b0
  8002 ms  0xc72 ret:0x0
  8002 ms  0xc72 PR_Connect()
  8002 ms  0xc72 fd:0x7fa36c7932b0
  8002 ms  0xc72 PK11_Encrypt()
  8002 ms  0xc72 symkey:0x7fa36c1e8d80
  8002 ms  0xc72 PK11_Encrypt()
  8002 ms  0xc72 symkey:0x7fa36c1e8d80
  8002 ms  0xc72 PK11_Encrypt()
  8002 ms  0xc72 symkey:0x7fa36c1e8d80
  8003 ms  0xc72 PK11_Encrypt()
  8003 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  8006 ms  0xc7a PR_Close()
  8006 ms  0xc7a fd:0x7fa36c78db50
           /* TID 0xc72 */
  8007 ms  0xc72 PK11_Encrypt()
  8007 ms  0xc72 symkey:0x7fa36c1e8d80
  8008 ms  0xc72 PK11_Encrypt()
  8008 ms  0xc72 symkey:0x7fa36c1e8d80
  8009 ms  0xc72 PK11_Encrypt()
  8009 ms  0xc72 symkey:0x7fa36c1e8d80
  8011 ms  0xc72 SSL_ImportFD()
  8011 ms  0xc72 ret:0x7fa37d3f9580
  8011 ms  0xc72 SSL_AuthCertificateHook()
  8011 ms  0xc72 fd:0x7fa37d3f9580
  8011 ms  0xc72 ret:0x0
  8011 ms  0xc72 PK11_Encrypt()
  8011 ms  0xc72 symkey:0x7fa36c1e8d80
  8012 ms  0xc72 PR_Connect()
  8012 ms  0xc72 fd:0x7fa37d3f9580
           /* TID 0xc7a */
  8021 ms  0xc7a PR_Close()
  8021 ms  0xc7a fd:0x7fa36c154dc0
  8024 ms  0xc7a PR_Close()
  8024 ms  0xc7a fd:0x7fa36c154dc0
           /* TID 0xc72 */
  8047 ms  0xc72 PK11_Encrypt()
  8047 ms  0xc72 symkey:0x7fa36c1e8d80
  8048 ms  0xc72 PK11_Encrypt()
  8048 ms  0xc72 symkey:0x7fa36c1e8d80
  8052 ms  0xc72 PK11_Encrypt()
  8052 ms  0xc72 symkey:0x7fa36c1e8d80
  8057 ms  0xc72 PK11_Encrypt()
  8057 ms  0xc72 symkey:0x7fa36c1e8d80
  8058 ms  0xc72 PK11_Encrypt()
  8058 ms  0xc72 symkey:0x7fa36c1e8d80
  8058 ms  0xc72 PK11_Encrypt()
  8058 ms  0xc72 symkey:0x7fa36c1e8d80
  8066 ms  0xc72 SECKEY_CreateECPrivateKey()
  8066 ms  0xc72 cx:0x7fa36c408308
  8067 ms     | 0xc72 EC_ValidatePublicKey()
  8067 ms     | 0xc72 ret:0x0
  8067 ms  0xc72 ret:0x7fa36c75d020::7fa36c75d020  f0 0b 75 6c                                      ..ul
  8067 ms  0xc72 SECKEY_CreateECPrivateKey()
  8067 ms  0xc72 cx:0x7fa36c408308
  8068 ms     | 0xc72 EC_ValidatePublicKey()
  8070 ms     | 0xc72 ret:0x0
  8070 ms  0xc72 ret:0x7fa36c761020::7fa36c761020  80 08 75 6c                                      ..ul
  8072 ms  0xc72 SECKEY_CreateECPrivateKey()
  8072 ms  0xc72 cx:0x7fa36c408168
  8073 ms     | 0xc72 EC_ValidatePublicKey()
  8073 ms     | 0xc72 ret:0x0
  8073 ms  0xc72 ret:0x7fa36c766820::7fa36c766820  70 0e 75 6c                                      p.ul
  8073 ms  0xc72 SECKEY_CreateECPrivateKey()
  8073 ms  0xc72 cx:0x7fa36c408168
  8073 ms     | 0xc72 EC_ValidatePublicKey()
  8075 ms     | 0xc72 ret:0x0
  8075 ms  0xc72 ret:0x7fa36c769820::7fa36c769820  b0 a0 78 6c                                      ..xl
  8077 ms  0xc72 SECKEY_CreateECPrivateKey()
  8077 ms  0xc72 cx:0x7fa36c407fc8
  8077 ms     | 0xc72 EC_ValidatePublicKey()
  8077 ms     | 0xc72 ret:0x0
  8077 ms  0xc72 ret:0x7fa36c772820::7fa36c772820  f0 a1 78 6c                                      ..xl
  8077 ms  0xc72 SECKEY_CreateECPrivateKey()
  8077 ms  0xc72 cx:0x7fa36c407fc8
  8078 ms     | 0xc72 EC_ValidatePublicKey()
  8079 ms     | 0xc72 ret:0x0
  8079 ms  0xc72 ret:0x7fa36c778820::7fa36c778820  20 a4 78 6c                                       .xl
           /* TID 0xc7a */
  8084 ms  0xc7a PR_Close()
  8084 ms  0xc7a fd:0x7fa36c78d7f0
           /* TID 0xc72 */
  8085 ms  0xc72 SECKEY_CreateECPrivateKey()
  8085 ms  0xc72 cx:0x7fa36c4084a8
  8085 ms     | 0xc72 EC_ValidatePublicKey()
  8085 ms     | 0xc72 ret:0x0
  8086 ms  0xc72 ret:0x7fa37d340820::7fa37d340820  60 a5 78 6c                                      `.xl
  8086 ms  0xc72 SECKEY_CreateECPrivateKey()
  8086 ms  0xc72 cx:0x7fa36c4084a8
  8086 ms     | 0xc72 EC_ValidatePublicKey()
  8090 ms     | 0xc72 ret:0x0
  8090 ms  0xc72 ret:0x7fa37d4b3020::7fa37d4b3020  90 a7 78 6c                                      ..xl
           /* TID 0xc7a */
  8092 ms  0xc7a PR_Close()
  8092 ms  0xc7a fd:0x7fa36c78d9d0
           /* TID 0xc72 */
  8092 ms  0xc72 SECKEY_CreateECPrivateKey()
  8092 ms  0xc72 cx:0x7fa36c408e68
  8093 ms     | 0xc72 EC_ValidatePublicKey()
  8093 ms     | 0xc72 ret:0x0
  8093 ms  0xc72 ret:0x7fa37e7ce820::7fa37e7ce820  80 a8 78 6c                                      ..xl
  8093 ms  0xc72 SECKEY_CreateECPrivateKey()
  8093 ms  0xc72 cx:0x7fa36c408e68
  8097 ms     | 0xc72 EC_ValidatePublicKey()
  8099 ms     | 0xc72 ret:0x0
  8099 ms  0xc72 ret:0x7fa37e7d1820::7fa37e7d1820  60 aa 78 6c                                      `.xl
  8100 ms  0xc72 SECKEY_CreateECPrivateKey()
  8100 ms  0xc72 cx:0x7fa36c408cc8
  8101 ms     | 0xc72 EC_ValidatePublicKey()
  8101 ms     | 0xc72 ret:0x0
  8101 ms  0xc72 ret:0x7fa37e7e5820::7fa37e7e5820  80 ad 78 6c                                      ..xl
  8101 ms  0xc72 SECKEY_CreateECPrivateKey()
  8101 ms  0xc72 cx:0x7fa36c408cc8
  8101 ms     | 0xc72 EC_ValidatePublicKey()
  8103 ms     | 0xc72 ret:0x0
  8103 ms  0xc72 ret:0x7fa3822ad020::7fa3822ad020  b0 af 78 6c                                      ..xl
  8109 ms  0xc72 SECKEY_CreateECPrivateKey()
  8109 ms  0xc72 cx:0x7fa36c408b28
  8110 ms     | 0xc72 EC_ValidatePublicKey()
  8110 ms     | 0xc72 ret:0x0
  8110 ms  0xc72 ret:0x7fa3835b2020::7fa3835b2020  50 c1 7c 6c                                      P.|l
  8110 ms  0xc72 SECKEY_CreateECPrivateKey()
  8110 ms  0xc72 cx:0x7fa36c408b28
  8110 ms     | 0xc72 EC_ValidatePublicKey()
  8112 ms     | 0xc72 ret:0x0
  8112 ms  0xc72 ret:0x7fa383703020::7fa383703020  30 c3 7c 6c                                      0.|l
  8117 ms  0xc72 SECKEY_CreateECPrivateKey()
  8117 ms  0xc72 cx:0x7fa36c408988
  8117 ms     | 0xc72 EC_ValidatePublicKey()
  8117 ms     | 0xc72 ret:0x0
  8117 ms  0xc72 ret:0x7fa383706020::7fa383706020  a0 d1 3d 7d                                      ..=}
  8117 ms  0xc72 SECKEY_CreateECPrivateKey()
  8117 ms  0xc72 cx:0x7fa36c408988
  8118 ms     | 0xc72 EC_ValidatePublicKey()
  8119 ms     | 0xc72 ret:0x0
  8119 ms  0xc72 ret:0x7fa38370b820::7fa38370b820  10 d5 3d 7d                                      ..=}
  8128 ms  0xc72 SECKEY_CreateECPrivateKey()
  8128 ms  0xc72 cx:0x7fa36c4087e8
  8128 ms     | 0xc72 EC_ValidatePublicKey()
  8128 ms     | 0xc72 ret:0x0
  8128 ms  0xc72 ret:0x7fa383710020::7fa383710020  c0 d9 3d 7d                                      ..=}
  8129 ms  0xc72 SECKEY_CreateECPrivateKey()
  8129 ms  0xc72 cx:0x7fa36c4087e8
  8129 ms     | 0xc72 EC_ValidatePublicKey()
  8140 ms     | 0xc72 ret:0x0
  8140 ms  0xc72 ret:0x7fa3838cc020::7fa3838cc020  f0 db 3d 7d                                      ..=}
  8142 ms  0xc72 SECKEY_CreateECPrivateKey()
  8142 ms  0xc72 cx:0x7fa36c408648
  8143 ms     | 0xc72 EC_ValidatePublicKey()
  8143 ms     | 0xc72 ret:0x0
  8143 ms  0xc72 ret:0x7fa3838d2020::7fa3838d2020  30 dd 3d 7d                                      0.=}
  8143 ms  0xc72 SECKEY_CreateECPrivateKey()
  8143 ms  0xc72 cx:0x7fa36c408648
  8143 ms     | 0xc72 EC_ValidatePublicKey()
  8145 ms     | 0xc72 ret:0x0
  8145 ms  0xc72 ret:0x7fa3838d6020::7fa3838d6020  60 df 3d 7d                                      `.=}
  8145 ms  0xc72 SECKEY_CreateECPrivateKey()
  8145 ms  0xc72 cx:0x7fa37d3e8b28
  8146 ms     | 0xc72 EC_ValidatePublicKey()
  8146 ms     | 0xc72 ret:0x0
  8146 ms  0xc72 ret:0x7fa3838dc820::7fa3838dc820  f0 81 76 7d                                      ..v}
  8146 ms  0xc72 SECKEY_CreateECPrivateKey()
  8146 ms  0xc72 cx:0x7fa37d3e8b28
  8146 ms     | 0xc72 EC_ValidatePublicKey()
  8148 ms     | 0xc72 ret:0x0
  8148 ms  0xc72 ret:0x7fa3838e2020::7fa3838e2020  20 89 76 7d                                       .v}
           /* TID 0xc7a */
  8149 ms  0xc7a PR_Close()
  8149 ms  0xc7a fd:0x7fa36c78da90
  8153 ms  0xc7a PR_Close()
  8153 ms  0xc7a fd:0x7fa36c32f790
           /* TID 0xc72 */
  8155 ms  SECKEY_ECParamsToKeySize()
  8155 ms  0xc72 ret:0xff
  8155 ms  0xc72 SECKEY_CreateECPrivateKey()
  8155 ms  0xc72 cx:0x7fa36c408308
  8156 ms     | 0xc72 EC_ValidatePublicKey()
  8156 ms     | 0xc72 ret:0x0
  8156 ms  0xc72 ret:0x7fa3838e8020::7fa3838e8020  c0 89 76 7d                                      ..v}
  8156 ms  0xc72 PK11_PubDeriveWithKDF()
  8156 ms  0xc72 seckey:0x7fa3838e8020
  8156 ms     | 0xc72 EC_ValidatePublicKey()
  8156 ms     | 0xc72 ret:0x0
  8156 ms  0xc72 ret:0x7fa37e7b6300
  8156 ms  0xc72 PK11_DeriveWithFlags()
  8156 ms  0xc72 basekey:0x7fa37e7b6300
  8156 ms     | 0xc72 PK11_DeriveWithTemplate()
  8156 ms  0xc72 ret:0x7fa36c1e7600
  8156 ms  0xc72 PK11_Derive()
  8156 ms  0xc72 basekey:0x7fa36c1e7600
  8156 ms     | 0xc72 PK11_DeriveWithTemplate()
  8156 ms  0xc72 ret:0x7fa36c1e7800
  8156 ms  0xc72 SECKEY_DestroyPrivateKey()
  8156 ms  0xc72 privk:0x7fa3838e8020::7fa3838e8020  c0 89 76 7d                                      ..v}
  8156 ms  0xc72 privk:0x7fa3838e8020::7fa3838e8020  e5 e5 e5 e5                                      ....
  8157 ms  0xc72 PK11_Encrypt()
  8157 ms  0xc72 symkey:0x7fa36c7fd000
  8162 ms  SECKEY_ECParamsToKeySize()
  8162 ms  0xc72 ret:0xff
  8162 ms  0xc72 SECKEY_CreateECPrivateKey()
  8162 ms  0xc72 cx:0x7fa36c408168
  8163 ms     | 0xc72 EC_ValidatePublicKey()
  8163 ms     | 0xc72 ret:0x0
  8163 ms  0xc72 ret:0x7fa383c93020::7fa383c93020  70 89 76 7d                                      p.v}
  8163 ms  0xc72 PK11_PubDeriveWithKDF()
  8163 ms  0xc72 seckey:0x7fa383c93020
  8163 ms     | 0xc72 EC_ValidatePublicKey()
  8163 ms     | 0xc72 ret:0x0
  8163 ms  0xc72 ret:0x7fa37e7b6300
  8163 ms  0xc72 PK11_DeriveWithFlags()
  8163 ms  0xc72 basekey:0x7fa37e7b6300
  8164 ms     | 0xc72 PK11_DeriveWithTemplate()
  8164 ms  0xc72 ret:0x7fa36c74e680
  8164 ms  0xc72 PK11_Derive()
  8164 ms  0xc72 basekey:0x7fa36c74e680
  8164 ms     | 0xc72 PK11_DeriveWithTemplate()
  8164 ms  0xc72 ret:0x7fa36c74f580
  8164 ms  0xc72 SECKEY_DestroyPrivateKey()
  8164 ms  0xc72 privk:0x7fa383c93020::7fa383c93020  70 89 76 7d                                      p.v}
  8164 ms  0xc72 privk:0x7fa383c93020::7fa383c93020  e5 e5 e5 e5                                      ....
  8164 ms  0xc72 PK11_Encrypt()
  8164 ms  0xc72 symkey:0x7fa36c7fd300
  8168 ms  0xc72 SSL_AuthCertificateComplete()
  8168 ms  0xc72 fd:0x7fa36c1b2430
  8168 ms  0xc72 err:0x0
  8168 ms  0xc72 SSL_AuthCertificateComplete()
  8168 ms  0xc72 fd:0x7fa36c169070
  8168 ms  0xc72 err:0x0
  8170 ms  SECKEY_ECParamsToKeySize()
  8170 ms  0xc72 ret:0xff
  8170 ms  0xc72 SECKEY_CreateECPrivateKey()
  8170 ms  0xc72 cx:0x7fa36c4084a8
  8171 ms     | 0xc72 EC_ValidatePublicKey()
  8171 ms     | 0xc72 ret:0x0
  8171 ms  0xc72 ret:0x7fa383c94020::7fa383c94020  90 8c 76 7d                                      ..v}
  8171 ms  0xc72 PK11_PubDeriveWithKDF()
  8171 ms  0xc72 seckey:0x7fa383c94020
  8171 ms     | 0xc72 EC_ValidatePublicKey()
  8171 ms     | 0xc72 ret:0x0
  8171 ms  0xc72 ret:0x7fa37e7b6300
  8171 ms  0xc72 PK11_DeriveWithFlags()
  8171 ms  0xc72 basekey:0x7fa37e7b6300
  8171 ms     | 0xc72 PK11_DeriveWithTemplate()
  8171 ms  0xc72 ret:0x7fa36c7fd700
  8171 ms  0xc72 PK11_Derive()
  8171 ms  0xc72 basekey:0x7fa36c7fd700
  8171 ms     | 0xc72 PK11_DeriveWithTemplate()
  8172 ms  0xc72 ret:0x7fa36c7fde00
  8172 ms  0xc72 SECKEY_DestroyPrivateKey()
  8172 ms  0xc72 privk:0x7fa383c94020::7fa383c94020  90 8c 76 7d                                      ..v}
  8172 ms  0xc72 privk:0x7fa383c94020::7fa383c94020  e5 e5 e5 e5                                      ....
  8172 ms  0xc72 PK11_Encrypt()
  8172 ms  0xc72 symkey:0x7fa37d1f3480
  8173 ms  SECKEY_ECParamsToKeySize()
  8173 ms  0xc72 ret:0xff
  8173 ms  0xc72 SECKEY_CreateECPrivateKey()
  8173 ms  0xc72 cx:0x7fa36c407fc8
  8173 ms     | 0xc72 EC_ValidatePublicKey()
  8173 ms     | 0xc72 ret:0x0
  8173 ms  0xc72 ret:0x7fa383c94820::7fa383c94820  30 8d 76 7d                                      0.v}
  8173 ms  0xc72 PK11_PubDeriveWithKDF()
  8173 ms  0xc72 seckey:0x7fa383c94820
  8173 ms     | 0xc72 EC_ValidatePublicKey()
  8173 ms     | 0xc72 ret:0x0
  8174 ms  0xc72 ret:0x7fa37e7b6300
  8174 ms  0xc72 PK11_DeriveWithFlags()
  8174 ms  0xc72 basekey:0x7fa37e7b6300
  8174 ms     | 0xc72 PK11_DeriveWithTemplate()
  8174 ms  0xc72 ret:0x7fa37d1f4d00
  8174 ms  0xc72 PK11_Derive()
  8174 ms  0xc72 basekey:0x7fa37d1f4d00
  8174 ms     | 0xc72 PK11_DeriveWithTemplate()
  8174 ms  0xc72 ret:0x7fa37d1f4d80
  8174 ms  0xc72 SECKEY_DestroyPrivateKey()
  8174 ms  0xc72 privk:0x7fa383c94820::7fa383c94820  30 8d 76 7d                                      0.v}
  8174 ms  0xc72 privk:0x7fa383c94820::7fa383c94820  e5 e5 e5 e5                                      ....
  8174 ms  0xc72 PK11_Encrypt()
  8174 ms  0xc72 symkey:0x7fa37d3ee080
  8177 ms  0xc72 SSL_AuthCertificateComplete()
  8177 ms  0xc72 fd:0x7fa36c793220
  8177 ms  0xc72 err:0x0
  8178 ms  0xc72 SSL_AuthCertificateComplete()
  8178 ms  0xc72 fd:0x7fa36c7933d0
  8178 ms  0xc72 err:0x0
  8182 ms  SECKEY_ECParamsToKeySize()
  8182 ms  0xc72 ret:0xff
  8182 ms  0xc72 SECKEY_CreateECPrivateKey()
  8182 ms  0xc72 cx:0x7fa36c408e68
  8183 ms     | 0xc72 EC_ValidatePublicKey()
  8183 ms     | 0xc72 ret:0x0
  8183 ms  0xc72 ret:0x7fa383c95020::7fa383c95020  f0 c1 e0 7d                                      ...}
  8183 ms  0xc72 PK11_PubDeriveWithKDF()
  8183 ms  0xc72 seckey:0x7fa383c95020
  8183 ms     | 0xc72 EC_ValidatePublicKey()
  8183 ms     | 0xc72 ret:0x0
  8183 ms  0xc72 ret:0x7fa37e7b6300
  8183 ms  0xc72 PK11_DeriveWithFlags()
  8183 ms  0xc72 basekey:0x7fa37e7b6300
  8183 ms     | 0xc72 PK11_DeriveWithTemplate()
  8183 ms  0xc72 ret:0x7fa36c787d80
  8183 ms  0xc72 PK11_Derive()
  8183 ms  0xc72 basekey:0x7fa36c787d80
  8183 ms     | 0xc72 PK11_DeriveWithTemplate()
  8183 ms  0xc72 ret:0x7fa37d3ee200
  8183 ms  0xc72 SECKEY_DestroyPrivateKey()
  8183 ms  0xc72 privk:0x7fa383c95020::7fa383c95020  f0 c1 e0 7d                                      ...}
  8183 ms  0xc72 privk:0x7fa383c95020::7fa383c95020  e5 e5 e5 e5                                      ....
  8183 ms  0xc72 PK11_Encrypt()
  8183 ms  0xc72 symkey:0x7fa37d3ee380
  8184 ms  SECKEY_ECParamsToKeySize()
  8184 ms  0xc72 ret:0xff
  8184 ms  0xc72 SECKEY_CreateECPrivateKey()
  8184 ms  0xc72 cx:0x7fa36c408cc8
  8185 ms     | 0xc72 EC_ValidatePublicKey()
  8185 ms     | 0xc72 ret:0x0
  8185 ms  0xc72 ret:0x7fa383c95820::7fa383c95820  90 c2 e0 7d                                      ...}
  8185 ms  0xc72 PK11_PubDeriveWithKDF()
  8185 ms  0xc72 seckey:0x7fa383c95820
  8185 ms     | 0xc72 EC_ValidatePublicKey()
  8185 ms     | 0xc72 ret:0x0
  8185 ms  0xc72 ret:0x7fa37e7b6300
  8185 ms  0xc72 PK11_DeriveWithFlags()
  8185 ms  0xc72 basekey:0x7fa37e7b6300
  8185 ms     | 0xc72 PK11_DeriveWithTemplate()
  8185 ms  0xc72 ret:0x7fa37d3ee480
  8185 ms  0xc72 PK11_Derive()
  8185 ms  0xc72 basekey:0x7fa37d3ee480
  8185 ms     | 0xc72 PK11_DeriveWithTemplate()
  8185 ms  0xc72 ret:0x7fa37d3ee500
  8185 ms  0xc72 SECKEY_DestroyPrivateKey()
  8185 ms  0xc72 privk:0x7fa383c95820::7fa383c95820  90 c2 e0 7d                                      ...}
  8185 ms  0xc72 privk:0x7fa383c95820::7fa383c95820  e5 e5 e5 e5                                      ....
  8186 ms  0xc72 PK11_Encrypt()
  8186 ms  0xc72 symkey:0x7fa37d3ee700
  8186 ms  0xc72 SSL_AuthCertificateComplete()
  8186 ms  0xc72 fd:0x7fa36c7932b0
  8186 ms  0xc72 err:0x0
  8186 ms  0xc72 SSL_AuthCertificateComplete()
  8186 ms  0xc72 fd:0x7fa36c7931f0
  8186 ms  0xc72 err:0x0
  8187 ms  SECKEY_ECParamsToKeySize()
  8187 ms  0xc72 ret:0xff
  8187 ms  0xc72 SECKEY_CreateECPrivateKey()
  8187 ms  0xc72 cx:0x7fa36c408b28
  8187 ms     | 0xc72 EC_ValidatePublicKey()
  8187 ms     | 0xc72 ret:0x0
  8187 ms  0xc72 ret:0x7fa383c96020::7fa383c96020  d0 c8 e0 7d                                      ...}
  8187 ms  0xc72 PK11_PubDeriveWithKDF()
  8187 ms  0xc72 seckey:0x7fa383c96020
  8187 ms     | 0xc72 EC_ValidatePublicKey()
  8187 ms     | 0xc72 ret:0x0
  8188 ms  0xc72 ret:0x7fa37e7b6300
  8188 ms  0xc72 PK11_DeriveWithFlags()
  8188 ms  0xc72 basekey:0x7fa37e7b6300
  8188 ms     | 0xc72 PK11_DeriveWithTemplate()
  8188 ms  0xc72 ret:0x7fa37d3eee00
  8188 ms  0xc72 PK11_Derive()
  8188 ms  0xc72 basekey:0x7fa37d3eee00
  8188 ms     | 0xc72 PK11_DeriveWithTemplate()
  8188 ms  0xc72 ret:0x7fa37d3eee80
  8188 ms  0xc72 SECKEY_DestroyPrivateKey()
  8188 ms  0xc72 privk:0x7fa383c96020::7fa383c96020  d0 c8 e0 7d                                      ...}
  8188 ms  0xc72 privk:0x7fa383c96020::7fa383c96020  e5 e5 e5 e5                                      ....
  8188 ms  0xc72 PK11_Encrypt()
  8188 ms  0xc72 symkey:0x7fa37d3ef500
  8198 ms  0xc72 SSL_AuthCertificateComplete()
  8198 ms  0xc72 fd:0x7fa36c1b27c0
  8198 ms  0xc72 err:0x0
  8199 ms  SECKEY_ECParamsToKeySize()
  8199 ms  0xc72 ret:0xff
  8199 ms  0xc72 SECKEY_CreateECPrivateKey()
  8199 ms  0xc72 cx:0x7fa36c408988
  8200 ms     | 0xc72 EC_ValidatePublicKey()
  8200 ms     | 0xc72 ret:0x0
  8200 ms  0xc72 ret:0x7fa383c96820::7fa383c96820  c0 c9 e0 7d                                      ...}
  8200 ms  0xc72 PK11_PubDeriveWithKDF()
  8200 ms  0xc72 seckey:0x7fa383c96820
  8200 ms     | 0xc72 EC_ValidatePublicKey()
  8200 ms     | 0xc72 ret:0x0
  8200 ms  0xc72 ret:0x7fa37e7b6300
  8200 ms  0xc72 PK11_DeriveWithFlags()
  8200 ms  0xc72 basekey:0x7fa37e7b6300
  8200 ms     | 0xc72 PK11_DeriveWithTemplate()
  8200 ms  0xc72 ret:0x7fa37d3f7100
  8200 ms  0xc72 PK11_Derive()
  8200 ms  0xc72 basekey:0x7fa37d3f7100
  8200 ms     | 0xc72 PK11_DeriveWithTemplate()
  8200 ms  0xc72 ret:0x7fa37d3f7180
  8200 ms  0xc72 SECKEY_DestroyPrivateKey()
  8200 ms  0xc72 privk:0x7fa383c96820::7fa383c96820  c0 c9 e0 7d                                      ...}
  8200 ms  0xc72 privk:0x7fa383c96820::7fa383c96820  e5 e5 e5 e5                                      ....
  8201 ms  0xc72 PK11_Encrypt()
  8201 ms  0xc72 symkey:0x7fa37d3f7300
  8201 ms  0xc72 SSL_AuthCertificateComplete()
  8201 ms  0xc72 fd:0x7fa36c7930d0
  8201 ms  0xc72 err:0x0
  8210 ms  SECKEY_ECParamsToKeySize()
  8210 ms  0xc72 ret:0xff
  8210 ms  0xc72 SECKEY_CreateECPrivateKey()
  8210 ms  0xc72 cx:0x7fa36c4087e8
  8210 ms     | 0xc72 EC_ValidatePublicKey()
  8210 ms     | 0xc72 ret:0x0
  8211 ms  0xc72 ret:0x7fa383ca3020::7fa383ca3020  f0 cb e0 7d                                      ...}
  8211 ms  0xc72 PK11_PubDeriveWithKDF()
  8211 ms  0xc72 seckey:0x7fa383ca3020
  8211 ms     | 0xc72 EC_ValidatePublicKey()
  8211 ms     | 0xc72 ret:0x0
  8211 ms  0xc72 ret:0x7fa37e7b6300
  8211 ms  0xc72 PK11_DeriveWithFlags()
  8211 ms  0xc72 basekey:0x7fa37e7b6300
  8211 ms     | 0xc72 PK11_DeriveWithTemplate()
  8211 ms  0xc72 ret:0x7fa37d3f8b80
  8211 ms  0xc72 PK11_Derive()
  8211 ms  0xc72 basekey:0x7fa37d3f8b80
  8211 ms     | 0xc72 PK11_DeriveWithTemplate()
  8211 ms  0xc72 ret:0x7fa37d3f8c00
  8211 ms  0xc72 SECKEY_DestroyPrivateKey()
  8211 ms  0xc72 privk:0x7fa383ca3020::7fa383ca3020  f0 cb e0 7d                                      ...}
  8211 ms  0xc72 privk:0x7fa383ca3020::7fa383ca3020  e5 e5 e5 e5                                      ....
  8211 ms  0xc72 PK11_Encrypt()
  8211 ms  0xc72 symkey:0x7fa37d3f8d80
  8212 ms  0xc72 SSL_AuthCertificateComplete()
  8212 ms  0xc72 fd:0x7fa36c793040
  8212 ms  0xc72 err:0x0
  8218 ms  SECKEY_ECParamsToKeySize()
  8218 ms  0xc72 ret:0xff
  8218 ms  0xc72 SECKEY_CreateECPrivateKey()
  8218 ms  0xc72 cx:0x7fa36c408648
  8218 ms     | 0xc72 EC_ValidatePublicKey()
  8218 ms     | 0xc72 ret:0x0
  8218 ms  0xc72 ret:0x7fa383ca3820::7fa383ca3820  30 cd e0 7d                                      0..}
  8218 ms  0xc72 PK11_PubDeriveWithKDF()
  8218 ms  0xc72 seckey:0x7fa383ca3820
  8218 ms     | 0xc72 EC_ValidatePublicKey()
  8218 ms     | 0xc72 ret:0x0
  8219 ms  0xc72 ret:0x7fa37e7b6300
  8219 ms  0xc72 PK11_DeriveWithFlags()
  8219 ms  0xc72 basekey:0x7fa37e7b6300
  8219 ms     | 0xc72 PK11_DeriveWithTemplate()
  8219 ms  0xc72 ret:0x7fa37d3f8f80
  8219 ms  0xc72 PK11_Derive()
  8219 ms  0xc72 basekey:0x7fa37d3f8f80
  8219 ms     | 0xc72 PK11_DeriveWithTemplate()
  8219 ms  0xc72 ret:0x7fa37de38100
  8219 ms  0xc72 SECKEY_DestroyPrivateKey()
  8219 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  30 cd e0 7d                                      0..}
  8219 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  e5 e5 e5 e5                                      ....
  8219 ms  0xc72 PK11_Encrypt()
  8219 ms  0xc72 symkey:0x7fa37de38300
  8222 ms  SECKEY_ECParamsToKeySize()
  8223 ms  0xc72 ret:0xff
  8223 ms  0xc72 SECKEY_CreateECPrivateKey()
  8223 ms  0xc72 cx:0x7fa37d3e8b28
  8223 ms     | 0xc72 EC_ValidatePublicKey()
  8223 ms     | 0xc72 ret:0x0
  8223 ms  0xc72 ret:0x7fa383ca3820::7fa383ca3820  d0 cd e0 7d                                      ...}
  8223 ms  0xc72 PK11_PubDeriveWithKDF()
  8223 ms  0xc72 seckey:0x7fa383ca3820
  8223 ms     | 0xc72 EC_ValidatePublicKey()
  8223 ms     | 0xc72 ret:0x0
  8224 ms  0xc72 ret:0x7fa37e7b6300
  8224 ms  0xc72 PK11_DeriveWithFlags()
  8224 ms  0xc72 basekey:0x7fa37e7b6300
  8224 ms     | 0xc72 PK11_DeriveWithTemplate()
  8224 ms  0xc72 ret:0x7fa37de38400
  8224 ms  0xc72 PK11_Derive()
  8224 ms  0xc72 basekey:0x7fa37de38400
  8224 ms     | 0xc72 PK11_DeriveWithTemplate()
  8224 ms  0xc72 ret:0x7fa37de38480
  8224 ms  0xc72 SECKEY_DestroyPrivateKey()
  8224 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  d0 cd e0 7d                                      ...}
  8224 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  e5 e5 e5 e5                                      ....
  8231 ms  0xc72 PK11_Encrypt()
  8231 ms  0xc72 symkey:0x7fa37de38e00
  8231 ms  0xc72 SSL_AuthCertificateComplete()
  8231 ms  0xc72 fd:0x7fa36c78df70
  8231 ms  0xc72 err:0x0
  8232 ms  0xc72 SSL_AuthCertificateComplete()
  8232 ms  0xc72 fd:0x7fa37d3f9580
  8232 ms  0xc72 err:0x0
  8233 ms  0xc72 SECKEY_DestroyPrivateKey()
  8233 ms  0xc72 privk:0x7fa36c761020::7fa36c761020  80 08 75 6c                                      ..ul
  8233 ms  0xc72 privk:0x7fa36c761020::7fa36c761020  e5 e5 e5 e5                                      ....
  8233 ms  0xc72 SECKEY_DestroyPrivateKey()
  8233 ms  0xc72 privk:0x7fa36c75d020::7fa36c75d020  f0 0b 75 6c                                      ..ul
  8233 ms  0xc72 privk:0x7fa36c75d020::7fa36c75d020  e5 e5 e5 e5                                      ....
  8233 ms  0xc72 SECKEY_DestroyPrivateKey()
  8233 ms  0xc72 privk:0x7fa36c769820::7fa36c769820  b0 a0 78 6c                                      ..xl
  8233 ms  0xc72 privk:0x7fa36c769820::7fa36c769820  e5 e5 e5 e5                                      ....
  8233 ms  0xc72 SECKEY_DestroyPrivateKey()
  8233 ms  0xc72 privk:0x7fa36c766820::7fa36c766820  70 0e 75 6c                                      p.ul
  8233 ms  0xc72 privk:0x7fa36c766820::7fa36c766820  e5 e5 e5 e5                                      ....
  8239 ms  0xc72 SECKEY_DestroyPrivateKey()
  8239 ms  0xc72 privk:0x7fa37d4b3020::7fa37d4b3020  90 a7 78 6c                                      ..xl
  8240 ms  0xc72 privk:0x7fa37d4b3020::7fa37d4b3020  e5 e5 e5 e5                                      ....
  8240 ms  0xc72 SECKEY_DestroyPrivateKey()
  8240 ms  0xc72 privk:0x7fa37d340820::7fa37d340820  60 a5 78 6c                                      `.xl
  8240 ms  0xc72 privk:0x7fa37d340820::7fa37d340820  e5 e5 e5 e5                                      ....
  8242 ms  0xc72 SECKEY_DestroyPrivateKey()
  8242 ms  0xc72 privk:0x7fa36c778820::7fa36c778820  20 a4 78 6c                                       .xl
  8242 ms  0xc72 privk:0x7fa36c778820::7fa36c778820  e5 e5 e5 e5                                      ....
  8242 ms  0xc72 SECKEY_DestroyPrivateKey()
  8242 ms  0xc72 privk:0x7fa36c772820::7fa36c772820  f0 a1 78 6c                                      ..xl
  8242 ms  0xc72 privk:0x7fa36c772820::7fa36c772820  e5 e5 e5 e5                                      ....
  8251 ms  0xc72 SECKEY_DestroyPrivateKey()
  8251 ms  0xc72 privk:0x7fa37e7d1820::7fa37e7d1820  60 aa 78 6c                                      `.xl
  8251 ms  0xc72 privk:0x7fa37e7d1820::7fa37e7d1820  e5 e5 e5 e5                                      ....
  8251 ms  0xc72 SECKEY_DestroyPrivateKey()
  8251 ms  0xc72 privk:0x7fa37e7ce820::7fa37e7ce820  80 a8 78 6c                                      ..xl
  8251 ms  0xc72 privk:0x7fa37e7ce820::7fa37e7ce820  e5 e5 e5 e5                                      ....
  8253 ms  0xc72 SECKEY_DestroyPrivateKey()
  8253 ms  0xc72 privk:0x7fa3822ad020::7fa3822ad020  b0 af 78 6c                                      ..xl
  8253 ms  0xc72 privk:0x7fa3822ad020::7fa3822ad020  e5 e5 e5 e5                                      ....
  8253 ms  0xc72 SECKEY_DestroyPrivateKey()
  8253 ms  0xc72 privk:0x7fa37e7e5820::7fa37e7e5820  80 ad 78 6c                                      ..xl
  8253 ms  0xc72 privk:0x7fa37e7e5820::7fa37e7e5820  e5 e5 e5 e5                                      ....
  8256 ms  0xc72 SECKEY_DestroyPrivateKey()
  8256 ms  0xc72 privk:0x7fa383703020::7fa383703020  30 c3 7c 6c                                      0.|l
  8256 ms  0xc72 privk:0x7fa383703020::7fa383703020  e5 e5 e5 e5                                      ....
  8256 ms  0xc72 SECKEY_DestroyPrivateKey()
  8256 ms  0xc72 privk:0x7fa3835b2020::7fa3835b2020  50 c1 7c 6c                                      P.|l
  8256 ms  0xc72 privk:0x7fa3835b2020::7fa3835b2020  e5 e5 e5 e5                                      ....
  8268 ms  0xc72 SECKEY_DestroyPrivateKey()
  8268 ms  0xc72 privk:0x7fa38370b820::7fa38370b820  10 d5 3d 7d                                      ..=}
  8268 ms  0xc72 privk:0x7fa38370b820::7fa38370b820  e5 e5 e5 e5                                      ....
  8268 ms  0xc72 SECKEY_DestroyPrivateKey()
  8268 ms  0xc72 privk:0x7fa383706020::7fa383706020  a0 d1 3d 7d                                      ..=}
  8268 ms  0xc72 privk:0x7fa383706020::7fa383706020  e5 e5 e5 e5                                      ....
  8279 ms  0xc72 SECKEY_DestroyPrivateKey()
  8279 ms  0xc72 privk:0x7fa3838cc020::7fa3838cc020  f0 db 3d 7d                                      ..=}
  8279 ms  0xc72 privk:0x7fa3838cc020::7fa3838cc020  e5 e5 e5 e5                                      ....
  8279 ms  0xc72 SECKEY_DestroyPrivateKey()
  8279 ms  0xc72 privk:0x7fa383710020::7fa383710020  c0 d9 3d 7d                                      ..=}
  8279 ms  0xc72 privk:0x7fa383710020::7fa383710020  e5 e5 e5 e5                                      ....
  8287 ms  0xc72 SECKEY_DestroyPrivateKey()
  8287 ms  0xc72 privk:0x7fa3838d6020::7fa3838d6020  60 df 3d 7d                                      `.=}
  8287 ms  0xc72 privk:0x7fa3838d6020::7fa3838d6020  e5 e5 e5 e5                                      ....
  8287 ms  0xc72 SECKEY_DestroyPrivateKey()
  8287 ms  0xc72 privk:0x7fa3838d2020::7fa3838d2020  30 dd 3d 7d                                      0.=}
  8287 ms  0xc72 privk:0x7fa3838d2020::7fa3838d2020  e5 e5 e5 e5                                      ....
           /* TID 0xc7a */
  8290 ms  0xc7a PR_Close()
  8290 ms  0xc7a fd:0x7fa36c1690a0
  8290 ms  0xc7a PR_Close()
  8290 ms  0xc7a fd:0x7fa37d3e4dc0
           /* TID 0xc72 */
  8299 ms  0xc72 SECKEY_DestroyPrivateKey()
  8299 ms  0xc72 privk:0x7fa3838e2020::7fa3838e2020  20 89 76 7d                                       .v}
  8299 ms  0xc72 privk:0x7fa3838e2020::7fa3838e2020  e5 e5 e5 e5                                      ....
  8299 ms  0xc72 SECKEY_DestroyPrivateKey()
  8299 ms  0xc72 privk:0x7fa3838dc820::7fa3838dc820  f0 81 76 7d                                      ..v}
  8299 ms  0xc72 privk:0x7fa3838dc820::7fa3838dc820  e5 e5 e5 e5                                      ....
           /* TID 0xc7a */
  8333 ms  0xc7a PR_Close()
  8333 ms  0xc7a fd:0x7fa36c1b24f0
  8343 ms  0xc7a PR_Close()
  8343 ms  0xc7a fd:0x7fa36c1b24f0
  8344 ms  0xc7a PR_Close()
  8344 ms  0xc7a fd:0x7fa36c1b24f0
  8345 ms  0xc7a PR_Close()
  8345 ms  0xc7a fd:0x7fa36c1b2130
  8346 ms  0xc7a PR_Close()
  8346 ms  0xc7a fd:0x7fa36c154e50
  8346 ms  0xc7a PR_Close()
  8346 ms  0xc7a fd:0x7fa36c154e50
  8346 ms  0xc7a PR_Close()
  8346 ms  0xc7a fd:0x7fa36c154e50
  8347 ms  0xc7a PR_Close()
  8347 ms  0xc7a fd:0x7fa36c154e50
  8347 ms  0xc7a PR_Close()
  8347 ms  0xc7a fd:0x7fa36c154be0
  8347 ms  0xc7a PR_Close()
  8347 ms  0xc7a fd:0x7fa36c154be0
  8348 ms  0xc7a PR_Close()
  8348 ms  0xc7a fd:0x7fa36c154be0
  8348 ms  0xc7a PR_Close()
  8348 ms  0xc7a fd:0x7fa36c154be0
  8348 ms  0xc7a PR_Close()
  8348 ms  0xc7a fd:0x7fa36c154be0
  8349 ms  0xc7a PR_Close()
  8349 ms  0xc7a fd:0x7fa36c154be0
  8349 ms  0xc7a PR_Close()
  8349 ms  0xc7a fd:0x7fa36c154be0
           /* TID 0xc72 */
  8399 ms  0xc72 SSL_ImportFD()
  8399 ms  0xc72 ret:0x7fa37d3f9790
  8399 ms  0xc72 SSL_AuthCertificateHook()
  8399 ms  0xc72 fd:0x7fa37d3f9790
  8399 ms  0xc72 ret:0x0
  8400 ms  0xc72 PR_Connect()
  8400 ms  0xc72 fd:0x7fa37d3f9790
           /* TID 0xc7a */
  8401 ms  0xc7a PR_Close()
  8401 ms  0xc7a fd:0x7fa36c1b2d90
           /* TID 0xc72 */
  8406 ms  0xc72 PK11_Encrypt()
  8406 ms  0xc72 symkey:0x7fa380681180
           /* TID 0xc7a */
  8409 ms  0xc7a PR_Close()
  8409 ms  0xc7a fd:0x7fa36c154d60
  8409 ms  0xc7a PR_Close()
  8409 ms  0xc7a fd:0x7fa36c32fd60
  8412 ms  0xc7a PR_Close()
  8412 ms  0xc7a fd:0x7fa36c154d00
  8412 ms  0xc7a PR_Close()
  8412 ms  0xc7a fd:0x7fa36c154d00
  8413 ms  0xc7a PR_Close()
  8413 ms  0xc7a fd:0x7fa36c154d00
  8414 ms  0xc7a PR_Close()
  8414 ms  0xc7a fd:0x7fa36c154d00
  8417 ms  0xc7a PR_Close()
  8417 ms  0xc7a fd:0x7fa36c154d00
           /* TID 0xc72 */
  8418 ms  0xc72 SSL_ImportFD()
  8418 ms  0xc72 ret:0x7fa36c32f7f0
  8418 ms  0xc72 SSL_AuthCertificateHook()
  8418 ms  0xc72 fd:0x7fa36c32f7f0
  8418 ms  0xc72 ret:0x0
  8418 ms  0xc72 PR_Connect()
  8418 ms  0xc72 fd:0x7fa36c32f7f0
  8443 ms  0xc72 PK11_Encrypt()
  8443 ms  0xc72 symkey:0x7fa36c1e8d80
  8448 ms  0xc72 PK11_Encrypt()
  8448 ms  0xc72 symkey:0x7fa380681180
           /* TID 0xc7a */
  8448 ms  0xc7a PR_Close()
  8448 ms  0xc7a fd:0x7fa36c169430
  8454 ms  0xc7a PR_Close()
  8454 ms  0xc7a fd:0x7fa37e76c7c0
           /* TID 0xc72 */
  8459 ms  0xc72 SECKEY_CreateECPrivateKey()
  8459 ms  0xc72 cx:0x7fa38b73b288
  8460 ms     | 0xc72 EC_ValidatePublicKey()
  8460 ms     | 0xc72 ret:0x0
  8460 ms  0xc72 ret:0x7fa36c76f820::7fa36c76f820  80 08 75 6c                                      ..ul
  8460 ms  0xc72 SECKEY_CreateECPrivateKey()
  8460 ms  0xc72 cx:0x7fa38b73b288
  8460 ms     | 0xc72 EC_ValidatePublicKey()
  8462 ms     | 0xc72 ret:0x0
  8462 ms  0xc72 ret:0x7fa36c777820::7fa36c777820  b0 0a 75 6c                                      ..ul
  8464 ms  0xc72 SECKEY_CreateECPrivateKey()
  8464 ms  0xc72 cx:0x7fa38b73b0e8
  8464 ms     | 0xc72 EC_ValidatePublicKey()
  8464 ms     | 0xc72 ret:0x0
  8464 ms  0xc72 ret:0x7fa37d340020::7fa37d340020  f0 0b 75 6c                                      ..ul
  8464 ms  0xc72 SECKEY_CreateECPrivateKey()
  8464 ms  0xc72 cx:0x7fa38b73b0e8
  8465 ms     | 0xc72 EC_ValidatePublicKey()
  8466 ms     | 0xc72 ret:0x0
  8466 ms  0xc72 ret:0x7fa37d4b2820::7fa37d4b2820  70 0e 75 6c                                      p.ul
  8490 ms  0xc72 PK11_Encrypt()
  8490 ms  0xc72 symkey:0x7fa36c1e8d80
  8491 ms  0xc72 PK11_Encrypt()
  8491 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  8492 ms  0xc7a PR_Close()
  8492 ms  0xc7a fd:0x7fa36c154d30
           /* TID 0xc72 */
  8503 ms  0xc72 PK11_Derive()
  8503 ms  0xc72 basekey:0x7fa36c182780
  8503 ms     | 0xc72 PK11_DeriveWithTemplate()
  8503 ms  0xc72 ret:0x7fa37e7b6300
  8503 ms  0xc72 PK11_Encrypt()
  8503 ms  0xc72 symkey:0x7fa37e8c5380
  8504 ms  0xc72 SECKEY_DestroyPrivateKey()
  8504 ms  0xc72 privk:0x7fa36c777820::7fa36c777820  b0 0a 75 6c                                      ..ul
  8504 ms  0xc72 privk:0x7fa36c777820::7fa36c777820  e5 e5 e5 e5                                      ....
  8504 ms  0xc72 SECKEY_DestroyPrivateKey()
  8504 ms  0xc72 privk:0x7fa36c76f820::7fa36c76f820  80 08 75 6c                                      ..ul
  8504 ms  0xc72 privk:0x7fa36c76f820::7fa36c76f820  e5 e5 e5 e5                                      ....
  8534 ms  SECKEY_ECParamsToKeySize()
  8534 ms  0xc72 ret:0xff
  8534 ms  0xc72 SECKEY_CreateECPrivateKey()
  8534 ms  0xc72 cx:0x7fa38b73b0e8
  8535 ms     | 0xc72 EC_ValidatePublicKey()
  8535 ms     | 0xc72 ret:0x0
  8535 ms  0xc72 ret:0x7fa36c777820::7fa36c777820  c0 09 75 6c                                      ..ul
  8535 ms  0xc72 PK11_PubDeriveWithKDF()
  8535 ms  0xc72 seckey:0x7fa36c777820
  8535 ms     | 0xc72 EC_ValidatePublicKey()
  8535 ms     | 0xc72 ret:0x0
  8535 ms  0xc72 ret:0x7fa37eca6b00
  8535 ms  0xc72 PK11_DeriveWithFlags()
  8535 ms  0xc72 basekey:0x7fa37eca6b00
  8535 ms     | 0xc72 PK11_DeriveWithTemplate()
  8535 ms  0xc72 ret:0x7fa37eca6b80
  8535 ms  0xc72 PK11_Derive()
  8535 ms  0xc72 basekey:0x7fa37eca6b80
  8535 ms     | 0xc72 PK11_DeriveWithTemplate()
  8535 ms  0xc72 ret:0x7fa37eca6c80
  8535 ms  0xc72 SECKEY_DestroyPrivateKey()
  8535 ms  0xc72 privk:0x7fa36c777820::7fa36c777820  c0 09 75 6c                                      ..ul
  8536 ms  0xc72 privk:0x7fa36c777820::7fa36c777820  e5 e5 e5 e5                                      ....
  8536 ms  0xc72 PK11_Encrypt()
  8536 ms  0xc72 symkey:0x7fa37eca7000
  8536 ms  0xc72 SSL_AuthCertificateComplete()
  8536 ms  0xc72 fd:0x7fa37d3f9790
  8536 ms  0xc72 err:0x0
  8537 ms  0xc72 PK11_Encrypt()
  8537 ms  0xc72 symkey:0x7fa37eca7000
  8537 ms  0xc72 PK11_Encrypt()
  8537 ms  0xc72 symkey:0x7fa37eca7000
           /* TID 0xc7a */
  8579 ms  0xc7a PR_Close()
  8579 ms  0xc7a fd:0x7fa36c1b2af0
           /* TID 0xc72 */
  8599 ms  0xc72 SECKEY_DestroyPrivateKey()
  8599 ms  0xc72 privk:0x7fa37d4b2820::7fa37d4b2820  70 0e 75 6c                                      p.ul
  8599 ms  0xc72 privk:0x7fa37d4b2820::7fa37d4b2820  e5 e5 e5 e5                                      ....
  8600 ms  0xc72 SECKEY_DestroyPrivateKey()
  8600 ms  0xc72 privk:0x7fa37d340020::7fa37d340020  f0 0b 75 6c                                      ..ul
  8600 ms  0xc72 privk:0x7fa37d340020::7fa37d340020  e5 e5 e5 e5                                      ....
  8600 ms  0xc72 PK11_Encrypt()
  8600 ms  0xc72 symkey:0x7fa37eca7000
  8638 ms  0xc72 PK11_Encrypt()
  8638 ms  0xc72 symkey:0x7fa36c1e8d80
  8642 ms  0xc72 PK11_Encrypt()
  8642 ms  0xc72 symkey:0x7fa36c1e8d80
  8643 ms  0xc72 PK11_Encrypt()
  8643 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  8646 ms  0xc7a PR_Close()
  8646 ms  0xc7a fd:0x7fa36c78db80
  8646 ms  0xc7a PR_Close()
  8646 ms  0xc7a fd:0x7fa37e76ca90
           /* TID 0xc72 */
  8655 ms  0xc72 PK11_Encrypt()
  8655 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  8708 ms  0xc7a PR_Close()
  8708 ms  0xc7a fd:0x7fa36c32fb50
  8776 ms  0xc7a PR_Close()
  8776 ms  0xc7a fd:0x7fa36c32fb50
           /* TID 0xc72 */
  8868 ms  0xc72 SSL_ImportFD()
  8868 ms  0xc72 ret:0x7fa37de99250
  8868 ms  0xc72 SSL_AuthCertificateHook()
  8868 ms  0xc72 fd:0x7fa37de99250
  8868 ms  0xc72 ret:0x0
  8868 ms  0xc72 PR_Connect()
  8868 ms  0xc72 fd:0x7fa37de99250
  8869 ms  0xc72 SSL_ImportFD()
  8869 ms  0xc72 ret:0x7fa36c154fa0
  8869 ms  0xc72 SSL_AuthCertificateHook()
  8869 ms  0xc72 fd:0x7fa36c154fa0
  8869 ms  0xc72 ret:0x0
  8869 ms  0xc72 PR_Connect()
  8869 ms  0xc72 fd:0x7fa36c154fa0
  8869 ms  0xc72 SSL_ImportFD()
  8869 ms  0xc72 ret:0x7fa36c1b24f0
  8869 ms  0xc72 SSL_AuthCertificateHook()
  8869 ms  0xc72 fd:0x7fa36c1b24f0
  8869 ms  0xc72 ret:0x0
  8869 ms  0xc72 PR_Connect()
  8869 ms  0xc72 fd:0x7fa36c1b24f0
  8869 ms  0xc72 SSL_ImportFD()
  8869 ms  0xc72 ret:0x7fa36c1b2af0
  8869 ms  0xc72 SSL_AuthCertificateHook()
  8869 ms  0xc72 fd:0x7fa36c1b2af0
  8869 ms  0xc72 ret:0x0
  8869 ms  0xc72 PR_Connect()
  8869 ms  0xc72 fd:0x7fa36c1b2af0
  8872 ms  0xc72 SSL_ImportFD()
  8872 ms  0xc72 ret:0x7fa36c32f6d0
  8872 ms  0xc72 SSL_AuthCertificateHook()
  8872 ms  0xc72 fd:0x7fa36c32f6d0
  8872 ms  0xc72 ret:0x0
  8872 ms  0xc72 PR_Connect()
  8872 ms  0xc72 fd:0x7fa36c32f6d0
  8872 ms  0xc72 SSL_ImportFD()
  8872 ms  0xc72 ret:0x7fa36c32f730
  8872 ms  0xc72 SSL_AuthCertificateHook()
  8872 ms  0xc72 fd:0x7fa36c32f730
  8872 ms  0xc72 ret:0x0
  8872 ms  0xc72 PR_Connect()
  8872 ms  0xc72 fd:0x7fa36c32f730
  8873 ms  0xc72 SSL_ImportFD()
  8873 ms  0xc72 ret:0x7fa37d3f9670
  8873 ms  0xc72 SSL_AuthCertificateHook()
  8873 ms  0xc72 fd:0x7fa37d3f9670
  8873 ms  0xc72 ret:0x0
  8873 ms  0xc72 PR_Connect()
  8873 ms  0xc72 fd:0x7fa37d3f9670
  8873 ms  0xc72 SSL_ImportFD()
  8873 ms  0xc72 ret:0x7fa37d3f9730
  8873 ms  0xc72 SSL_AuthCertificateHook()
  8873 ms  0xc72 fd:0x7fa37d3f9730
  8873 ms  0xc72 ret:0x0
  8873 ms  0xc72 PR_Connect()
  8873 ms  0xc72 fd:0x7fa37d3f9730
  8873 ms  0xc72 SSL_ImportFD()
  8873 ms  0xc72 ret:0x7fa37d3f9e80
  8873 ms  0xc72 SSL_AuthCertificateHook()
  8873 ms  0xc72 fd:0x7fa37d3f9e80
  8873 ms  0xc72 ret:0x0
  8873 ms  0xc72 PR_Connect()
  8873 ms  0xc72 fd:0x7fa37d3f9e80
  8874 ms  0xc72 SSL_ImportFD()
  8874 ms  0xc72 ret:0x7fa37d3f9fd0
  8874 ms  0xc72 SSL_AuthCertificateHook()
  8874 ms  0xc72 fd:0x7fa37d3f9fd0
  8874 ms  0xc72 ret:0x0
  8874 ms  0xc72 PR_Connect()
  8874 ms  0xc72 fd:0x7fa37d3f9fd0
  8874 ms  0xc72 SSL_ImportFD()
  8874 ms  0xc72 ret:0x7fa37de1d310
  8874 ms  0xc72 SSL_AuthCertificateHook()
  8874 ms  0xc72 fd:0x7fa37de1d310
  8874 ms  0xc72 ret:0x0
  8874 ms  0xc72 PR_Connect()
  8874 ms  0xc72 fd:0x7fa37de1d310
  8874 ms  0xc72 SSL_ImportFD()
  8874 ms  0xc72 ret:0x7fa37de1d460
  8874 ms  0xc72 SSL_AuthCertificateHook()
  8874 ms  0xc72 fd:0x7fa37de1d460
  8874 ms  0xc72 ret:0x0
  8876 ms  0xc72 PR_Connect()
  8876 ms  0xc72 fd:0x7fa37de1d460
  8876 ms  0xc72 SSL_ImportFD()
  8876 ms  0xc72 ret:0x7fa37de1d850
  8876 ms  0xc72 SSL_AuthCertificateHook()
  8876 ms  0xc72 fd:0x7fa37de1d850
  8876 ms  0xc72 ret:0x0
  8876 ms  0xc72 PR_Connect()
  8876 ms  0xc72 fd:0x7fa37de1d850
  8876 ms  0xc72 SSL_ImportFD()
  8876 ms  0xc72 ret:0x7fa37de1de50
  8876 ms  0xc72 SSL_AuthCertificateHook()
  8876 ms  0xc72 fd:0x7fa37de1de50
  8876 ms  0xc72 ret:0x0
  8876 ms  0xc72 PR_Connect()
  8876 ms  0xc72 fd:0x7fa37de1de50
  8877 ms  0xc72 SSL_ImportFD()
  8877 ms  0xc72 ret:0x7fa37de71040
  8877 ms  0xc72 SSL_AuthCertificateHook()
  8877 ms  0xc72 fd:0x7fa37de71040
  8877 ms  0xc72 ret:0x0
  8877 ms  0xc72 PR_Connect()
  8877 ms  0xc72 fd:0x7fa37de71040
  8877 ms  0xc72 SSL_ImportFD()
  8877 ms  0xc72 ret:0x7fa37de716a0
  8877 ms  0xc72 SSL_AuthCertificateHook()
  8877 ms  0xc72 fd:0x7fa37de716a0
  8877 ms  0xc72 ret:0x0
  8877 ms  0xc72 PR_Connect()
  8877 ms  0xc72 fd:0x7fa37de716a0
  8877 ms  0xc72 SSL_ImportFD()
  8877 ms  0xc72 ret:0x7fa37de71a60
  8877 ms  0xc72 SSL_AuthCertificateHook()
  8877 ms  0xc72 fd:0x7fa37de71a60
  8877 ms  0xc72 ret:0x0
  8878 ms  0xc72 PR_Connect()
  8878 ms  0xc72 fd:0x7fa37de71a60
  8878 ms  0xc72 SSL_ImportFD()
  8878 ms  0xc72 ret:0x7fa37de71d90
  8878 ms  0xc72 SSL_AuthCertificateHook()
  8878 ms  0xc72 fd:0x7fa37de71d90
  8878 ms  0xc72 ret:0x0
  8878 ms  0xc72 PR_Connect()
  8878 ms  0xc72 fd:0x7fa37de71d90
           /* TID 0xc7a */
  8889 ms  0xc7a PR_Close()
  8889 ms  0xc7a fd:0x7fa37d3f9d90
           /* TID 0xc72 */
  8892 ms  0xc72 PK11_Encrypt()
  8892 ms  0xc72 symkey:0x7fa37eca7000
  8910 ms  0xc72 SECKEY_CreateECPrivateKey()
  8910 ms  0xc72 cx:0x7fa38b73bf88
  8911 ms     | 0xc72 EC_ValidatePublicKey()
  8911 ms     | 0xc72 ret:0x0
  8911 ms  0xc72 ret:0x7fa37e7e5820::7fa37e7e5820  30 dd 3d 7d                                      0.=}
  8911 ms  0xc72 SECKEY_CreateECPrivateKey()
  8911 ms  0xc72 cx:0x7fa38b73bf88
  8912 ms     | 0xc72 EC_ValidatePublicKey()
           /* TID 0xc7a */
  8915 ms  0xc7a PR_Close()
  8915 ms  0xc7a fd:0x7fa37e76c7f0
  8915 ms  0xc7a PR_Close()
  8915 ms  0xc7a fd:0x7fa37ecc54c0
           /* TID 0xc72 */
  8926 ms     | 0xc72 ret:0x0
  8928 ms  0xc72 ret:0x7fa3822ad020::7fa3822ad020  70 0e 75 6c                                      p.ul
  8930 ms  0xc72 SECKEY_CreateECPrivateKey()
  8930 ms  0xc72 cx:0x7fa38b73db28
  8931 ms     | 0xc72 EC_ValidatePublicKey()
  8931 ms     | 0xc72 ret:0x0
  8931 ms  0xc72 ret:0x7fa3835b9020::7fa3835b9020  f0 d1 3d 7d                                      ..=}
  8931 ms  0xc72 SECKEY_CreateECPrivateKey()
  8931 ms  0xc72 cx:0x7fa38b73db28
  8932 ms     | 0xc72 EC_ValidatePublicKey()
  8933 ms     | 0xc72 ret:0x0
  8933 ms  0xc72 ret:0x7fa383703820::7fa383703820  30 d8 3d 7d                                      0.=}
  8945 ms  0xc72 SECKEY_CreateECPrivateKey()
  8945 ms  0xc72 cx:0x7fa38b73d988
  8946 ms     | 0xc72 EC_ValidatePublicKey()
  8946 ms     | 0xc72 ret:0x0
  8946 ms  0xc72 ret:0x7fa383707020::7fa383707020  c0 d9 3d 7d                                      ..=}
  8946 ms  0xc72 SECKEY_CreateECPrivateKey()
  8946 ms  0xc72 cx:0x7fa38b73d988
  8947 ms     | 0xc72 EC_ValidatePublicKey()
  8948 ms     | 0xc72 ret:0x0
  8948 ms  0xc72 ret:0x7fa38370f020::7fa38370f020  10 df 3d 7d                                      ..=}
  8948 ms  0xc72 SECKEY_CreateECPrivateKey()
  8948 ms  0xc72 cx:0x7fa38b73d7e8
  8949 ms     | 0xc72 EC_ValidatePublicKey()
  8949 ms     | 0xc72 ret:0x0
  8949 ms  0xc72 ret:0x7fa3838cb820::7fa3838cb820  60 80 76 7d                                      `.v}
  8949 ms  0xc72 SECKEY_CreateECPrivateKey()
  8949 ms  0xc72 cx:0x7fa38b73d7e8
  8950 ms     | 0xc72 EC_ValidatePublicKey()
  8951 ms     | 0xc72 ret:0x0
  8951 ms  0xc72 ret:0x7fa3838d1820::7fa3838d1820  80 88 76 7d                                      ..v}
  8954 ms  0xc72 SECKEY_CreateECPrivateKey()
  8954 ms  0xc72 cx:0x7fa38b73d648
  8954 ms     | 0xc72 EC_ValidatePublicKey()
  8954 ms     | 0xc72 ret:0x0
  8954 ms  0xc72 ret:0x7fa3838d6020::7fa3838d6020  f0 c1 e0 7d                                      ...}
  8954 ms  0xc72 SECKEY_CreateECPrivateKey()
  8954 ms  0xc72 cx:0x7fa38b73d648
  8955 ms     | 0xc72 EC_ValidatePublicKey()
  8956 ms     | 0xc72 ret:0x0
  8956 ms  0xc72 ret:0x7fa3838dc820::7fa3838dc820  50 cb e0 7d                                      P..}
  8957 ms  0xc72 SECKEY_CreateECPrivateKey()
  8957 ms  0xc72 cx:0x7fa38b73d4a8
  8957 ms     | 0xc72 EC_ValidatePublicKey()
  8957 ms     | 0xc72 ret:0x0
  8957 ms  0xc72 ret:0x7fa383ca0820::7fa383ca0820  d0 cd e0 7d                                      ...}
  8957 ms  0xc72 SECKEY_CreateECPrivateKey()
  8957 ms  0xc72 cx:0x7fa38b73d4a8
  8958 ms     | 0xc72 EC_ValidatePublicKey()
  8959 ms     | 0xc72 ret:0x0
  8959 ms  0xc72 ret:0x7fa383ca3820::7fa383ca3820  b0 cf e0 7d                                      ...}
  8960 ms  0xc72 SECKEY_CreateECPrivateKey()
  8960 ms  0xc72 cx:0x7fa38b73d308
  8960 ms     | 0xc72 EC_ValidatePublicKey()
  8960 ms     | 0xc72 ret:0x0
  8960 ms  0xc72 ret:0x7fa383ca6020::7fa383ca6020  f0 21 71 7e                                      .!q~
  8960 ms  0xc72 SECKEY_CreateECPrivateKey()
  8960 ms  0xc72 cx:0x7fa38b73d308
  8961 ms     | 0xc72 EC_ValidatePublicKey()
  8962 ms     | 0xc72 ret:0x0
  8962 ms  0xc72 ret:0x7fa383ca8020::7fa383ca8020  00 26 71 7e                                      .&q~
  8962 ms  0xc72 SECKEY_CreateECPrivateKey()
  8962 ms  0xc72 cx:0x7fa38b73d168
  8963 ms     | 0xc72 EC_ValidatePublicKey()
  8963 ms     | 0xc72 ret:0x0
  8963 ms  0xc72 ret:0x7fa383caa820::7fa383caa820  90 27 71 7e                                      .'q~
  8963 ms  0xc72 SECKEY_CreateECPrivateKey()
  8963 ms  0xc72 cx:0x7fa38b73d168
  8964 ms     | 0xc72 EC_ValidatePublicKey()
  8965 ms     | 0xc72 ret:0x0
  8965 ms  0xc72 ret:0x7fa383cac820::7fa383cac820  f0 2b 71 7e                                      .+q~
  8965 ms  0xc72 SECKEY_CreateECPrivateKey()
  8965 ms  0xc72 cx:0x7fa38b73cfc8
  8966 ms     | 0xc72 EC_ValidatePublicKey()
  8966 ms     | 0xc72 ret:0x0
  8966 ms  0xc72 ret:0x7fa383cb1020::7fa383cb1020  20 2e 71 7e                                       .q~
  8966 ms  0xc72 SECKEY_CreateECPrivateKey()
  8966 ms  0xc72 cx:0x7fa38b73cfc8
  8966 ms     | 0xc72 EC_ValidatePublicKey()
  8971 ms     | 0xc72 ret:0x0
  8971 ms  0xc72 ret:0x7fa383cbf020::7fa383cbf020  b0 0a 75 6c                                      ..ul
  8971 ms  0xc72 SECKEY_CreateECPrivateKey()
  8971 ms  0xc72 cx:0x7fa38b73ce28
  8972 ms     | 0xc72 EC_ValidatePublicKey()
  8972 ms     | 0xc72 ret:0x0
  8972 ms  0xc72 ret:0x7fa383cc5820::7fa383cc5820  30 f3 7a 7e                                      0.z~
  8972 ms  0xc72 SECKEY_CreateECPrivateKey()
  8972 ms  0xc72 cx:0x7fa38b73ce28
  8972 ms     | 0xc72 EC_ValidatePublicKey()
  8974 ms     | 0xc72 ret:0x0
  8974 ms  0xc72 ret:0x7fa383ccc820::7fa383ccc820  a0 f6 7a 7e                                      ..z~
  8974 ms  0xc72 SECKEY_CreateECPrivateKey()
  8974 ms  0xc72 cx:0x7fa38b73cc88
  8975 ms     | 0xc72 EC_ValidatePublicKey()
  8975 ms     | 0xc72 ret:0x0
  8975 ms  0xc72 ret:0x7fa383ccf820::7fa383ccf820  c0 f9 7a 7e                                      ..z~
  8975 ms  0xc72 SECKEY_CreateECPrivateKey()
  8975 ms  0xc72 cx:0x7fa38b73cc88
  8975 ms     | 0xc72 EC_ValidatePublicKey()
  8979 ms     | 0xc72 ret:0x0
  8979 ms  0xc72 ret:0x7fa383cd3820::7fa383cd3820  f0 fb 7a 7e                                      ..z~
  8980 ms  0xc72 SECKEY_CreateECPrivateKey()
  8980 ms  0xc72 cx:0x7fa38b73cae8
  8980 ms     | 0xc72 EC_ValidatePublicKey()
  8980 ms     | 0xc72 ret:0x0
  8980 ms  0xc72 ret:0x7fa383cd8020::7fa383cd8020  80 fd 7a 7e                                      ..z~
  8980 ms  0xc72 SECKEY_CreateECPrivateKey()
  8980 ms  0xc72 cx:0x7fa38b73cae8
  8981 ms     | 0xc72 EC_ValidatePublicKey()
  8982 ms     | 0xc72 ret:0x0
  8982 ms  0xc72 ret:0x7fa386460820::7fa386460820  b0 ff 7a 7e                                      ..z~
  8983 ms  0xc72 SECKEY_CreateECPrivateKey()
  8983 ms  0xc72 cx:0x7fa38b73c948
  8983 ms     | 0xc72 EC_ValidatePublicKey()
  8983 ms     | 0xc72 ret:0x0
  8983 ms  0xc72 ret:0x7fa386465820::7fa386465820  40 e2 7b 7e                                      @.{~
  8983 ms  0xc72 SECKEY_CreateECPrivateKey()
  8983 ms  0xc72 cx:0x7fa38b73c948
  8984 ms     | 0xc72 EC_ValidatePublicKey()
  8985 ms     | 0xc72 ret:0x0
  8985 ms  0xc72 ret:0x7fa38646a020::7fa38646a020  20 e4 7b 7e                                       .{~
  8987 ms  0xc72 SECKEY_CreateECPrivateKey()
  8987 ms  0xc72 cx:0x7fa38b73c7a8
  8988 ms     | 0xc72 EC_ValidatePublicKey()
  8988 ms     | 0xc72 ret:0x0
  8988 ms  0xc72 ret:0x7fa38653c820::7fa38653c820  b0 e5 7b 7e                                      ..{~
  8988 ms  0xc72 SECKEY_CreateECPrivateKey()
  8988 ms  0xc72 cx:0x7fa38b73c7a8
  8988 ms     | 0xc72 EC_ValidatePublicKey()
  8990 ms     | 0xc72 ret:0x0
  8990 ms  0xc72 ret:0x7fa38653e820::7fa38653e820  e0 c2 8b 7e                                      ...~
  8990 ms  0xc72 SECKEY_CreateECPrivateKey()
  8990 ms  0xc72 cx:0x7fa38b73c608
  8991 ms     | 0xc72 EC_ValidatePublicKey()
  8991 ms     | 0xc72 ret:0x0
  8991 ms  0xc72 ret:0x7fa386542020::7fa386542020  f0 cb 8b 7e                                      ...~
  8991 ms  0xc72 SECKEY_CreateECPrivateKey()
  8991 ms  0xc72 cx:0x7fa38b73c608
  8991 ms     | 0xc72 EC_ValidatePublicKey()
  8993 ms     | 0xc72 ret:0x0
  8993 ms  0xc72 ret:0x7fa3876d8820::7fa3876d8820  d0 cd 8b 7e                                      ...~
  8993 ms  0xc72 SECKEY_CreateECPrivateKey()
  8993 ms  0xc72 cx:0x7fa38b73c468
  8994 ms     | 0xc72 EC_ValidatePublicKey()
  8994 ms     | 0xc72 ret:0x0
  8994 ms  0xc72 ret:0x7fa3876db020::7fa3876db020  60 cf 8b 7e                                      `..~
  8994 ms  0xc72 SECKEY_CreateECPrivateKey()
  8994 ms  0xc72 cx:0x7fa38b73c468
  8994 ms     | 0xc72 EC_ValidatePublicKey()
  8996 ms     | 0xc72 ret:0x0
  8996 ms  0xc72 ret:0x7fa3876dd020::7fa3876dd020  30 83 c0 7e                                      0..~
  8996 ms  0xc72 SECKEY_CreateECPrivateKey()
  8996 ms  0xc72 cx:0x7fa38b73c2c8
  8999 ms     | 0xc72 EC_ValidatePublicKey()
  8999 ms     | 0xc72 ret:0x0
  8999 ms  0xc72 ret:0x7fa3876e4820::7fa3876e4820  b0 85 c0 7e                                      ...~
  8999 ms  0xc72 SECKEY_CreateECPrivateKey()
  8999 ms  0xc72 cx:0x7fa38b73c2c8
  9000 ms     | 0xc72 EC_ValidatePublicKey()
  9001 ms     | 0xc72 ret:0x0
  9001 ms  0xc72 ret:0x7fa3876e8820::7fa3876e8820  20 89 c0 7e                                       ..~
  9001 ms  0xc72 SECKEY_CreateECPrivateKey()
  9001 ms  0xc72 cx:0x7fa38b73c128
  9002 ms     | 0xc72 EC_ValidatePublicKey()
  9002 ms     | 0xc72 ret:0x0
  9002 ms  0xc72 ret:0x7fa3876eb820::7fa3876eb820  60 8a c0 7e                                      `..~
  9002 ms  0xc72 SECKEY_CreateECPrivateKey()
  9002 ms  0xc72 cx:0x7fa38b73c128
  9003 ms     | 0xc72 EC_ValidatePublicKey()
  9005 ms     | 0xc72 ret:0x0
  9005 ms  0xc72 ret:0x7fa3876ef020::7fa3876ef020  40 8c c0 7e                                      @..~
  9005 ms  0xc72 PK11_Encrypt()
  9005 ms  0xc72 symkey:0x7fa37eca7000
  9005 ms  0xc72 PK11_Encrypt()
  9005 ms  0xc72 symkey:0x7fa37eca7000
  9005 ms  0xc72 PK11_Encrypt()
  9005 ms  0xc72 symkey:0x7fa37eca7000
  9006 ms  SECKEY_ECParamsToKeySize()
  9006 ms  0xc72 ret:0x100
  9006 ms  0xc72 SECKEY_CreateECPrivateKey()
  9006 ms  0xc72 cx:0x7fa38b73db28
  9007 ms     | 0xc72 EC_ValidatePublicKey()
  9009 ms     | 0xc72 ret:0x0
  9009 ms  0xc72 ret:0x7fa387785020::7fa387785020  10 8f c0 7e                                      ...~
  9009 ms  0xc72 PK11_PubDeriveWithKDF()
  9009 ms  0xc72 seckey:0x7fa387785020
  9009 ms     | 0xc72 EC_ValidatePublicKey()
  9010 ms     | 0xc72 ret:0x0
  9012 ms  0xc72 ret:0x7fa37eca6b00
  9012 ms  0xc72 PK11_DeriveWithFlags()
  9012 ms  0xc72 basekey:0x7fa37eca6b00
  9012 ms     | 0xc72 PK11_DeriveWithTemplate()
  9012 ms  0xc72 ret:0x7fa37f3ad480
  9012 ms  0xc72 PK11_Derive()
  9012 ms  0xc72 basekey:0x7fa37f3ad480
  9012 ms     | 0xc72 PK11_DeriveWithTemplate()
  9012 ms  0xc72 ret:0x7fa37f3ad500
  9012 ms  0xc72 SECKEY_DestroyPrivateKey()
  9012 ms  0xc72 privk:0x7fa387785020::7fa387785020  10 8f c0 7e                                      ...~
  9012 ms  0xc72 privk:0x7fa387785020::7fa387785020  e5 e5 e5 e5                                      ....
  9012 ms  0xc72 PK11_Encrypt()
  9012 ms  0xc72 symkey:0x7fa37f3adb00
  9013 ms  SECKEY_ECParamsToKeySize()
  9013 ms  0xc72 ret:0x100
  9013 ms  0xc72 SECKEY_CreateECPrivateKey()
  9013 ms  0xc72 cx:0x7fa38b73d988
  9013 ms     | 0xc72 EC_ValidatePublicKey()
  9015 ms     | 0xc72 ret:0x0
  9015 ms  0xc72 ret:0x7fa387785820::7fa387785820  b0 8f c0 7e                                      ...~
  9015 ms  0xc72 PK11_PubDeriveWithKDF()
  9015 ms  0xc72 seckey:0x7fa387785820
  9015 ms     | 0xc72 EC_ValidatePublicKey()
  9017 ms     | 0xc72 ret:0x0
  9018 ms  0xc72 ret:0x7fa37eca6b00
  9018 ms  0xc72 PK11_DeriveWithFlags()
  9018 ms  0xc72 basekey:0x7fa37eca6b00
  9018 ms     | 0xc72 PK11_DeriveWithTemplate()
  9018 ms  0xc72 ret:0x7fa37f3ccc80
  9018 ms  0xc72 PK11_Derive()
  9018 ms  0xc72 basekey:0x7fa37f3ccc80
  9018 ms     | 0xc72 PK11_DeriveWithTemplate()
  9018 ms  0xc72 ret:0x7fa37f3ccd00
  9018 ms  0xc72 SECKEY_DestroyPrivateKey()
  9018 ms  0xc72 privk:0x7fa387785820::7fa387785820  b0 8f c0 7e                                      ...~
  9018 ms  0xc72 privk:0x7fa387785820::7fa387785820  e5 e5 e5 e5                                      ....
  9018 ms  0xc72 PK11_Encrypt()
  9018 ms  0xc72 symkey:0x7fa37f3ccf80
  9019 ms  SECKEY_ECParamsToKeySize()
  9019 ms  0xc72 ret:0x100
  9019 ms  0xc72 SECKEY_CreateECPrivateKey()
  9019 ms  0xc72 cx:0x7fa38b73d7e8
  9020 ms     | 0xc72 EC_ValidatePublicKey()
  9021 ms     | 0xc72 ret:0x0
  9021 ms  0xc72 ret:0x7fa387786020::7fa387786020  b0 20 cd 7e                                      . .~
  9022 ms  0xc72 PK11_PubDeriveWithKDF()
  9022 ms  0xc72 seckey:0x7fa387786020
  9022 ms     | 0xc72 EC_ValidatePublicKey()
  9023 ms     | 0xc72 ret:0x0
  9025 ms  0xc72 ret:0x7fa37eca6b00
  9025 ms  0xc72 PK11_DeriveWithFlags()
  9025 ms  0xc72 basekey:0x7fa37eca6b00
  9025 ms     | 0xc72 PK11_DeriveWithTemplate()
  9025 ms  0xc72 ret:0x7fa37f3cd180
  9025 ms  0xc72 PK11_Derive()
  9025 ms  0xc72 basekey:0x7fa37f3cd180
  9025 ms     | 0xc72 PK11_DeriveWithTemplate()
  9025 ms  0xc72 ret:0x7fa37f3cd300
  9025 ms  0xc72 SECKEY_DestroyPrivateKey()
  9025 ms  0xc72 privk:0x7fa387786020::7fa387786020  b0 20 cd 7e                                      . .~
  9025 ms  0xc72 privk:0x7fa387786020::7fa387786020  e5 e5 e5 e5                                      ....
  9025 ms  0xc72 PK11_Encrypt()
  9025 ms  0xc72 symkey:0x7fa37f3cd900
  9026 ms  SECKEY_ECParamsToKeySize()
  9026 ms  0xc72 ret:0x100
  9026 ms  0xc72 SECKEY_CreateECPrivateKey()
  9026 ms  0xc72 cx:0x7fa38b73d648
  9026 ms     | 0xc72 EC_ValidatePublicKey()
  9028 ms     | 0xc72 ret:0x0
  9028 ms  0xc72 ret:0x7fa387787820::7fa387787820  f0 2b cd 7e                                      .+.~
  9028 ms  0xc72 PK11_PubDeriveWithKDF()
  9028 ms  0xc72 seckey:0x7fa387787820
  9028 ms     | 0xc72 EC_ValidatePublicKey()
  9029 ms     | 0xc72 ret:0x0
  9031 ms  0xc72 ret:0x7fa37eca6b00
  9031 ms  0xc72 PK11_DeriveWithFlags()
  9031 ms  0xc72 basekey:0x7fa37eca6b00
  9031 ms     | 0xc72 PK11_DeriveWithTemplate()
  9031 ms  0xc72 ret:0x7fa37f3cdc00
  9031 ms  0xc72 PK11_Derive()
  9031 ms  0xc72 basekey:0x7fa37f3cdc00
  9031 ms     | 0xc72 PK11_DeriveWithTemplate()
  9031 ms  0xc72 ret:0x7fa37f879280
  9031 ms  0xc72 SECKEY_DestroyPrivateKey()
  9031 ms  0xc72 privk:0x7fa387787820::7fa387787820  f0 2b cd 7e                                      .+.~
  9031 ms  0xc72 privk:0x7fa387787820::7fa387787820  e5 e5 e5 e5                                      ....
  9031 ms  0xc72 PK11_Encrypt()
  9031 ms  0xc72 symkey:0x7fa37f879a00
  9036 ms  SECKEY_ECParamsToKeySize()
  9036 ms  0xc72 ret:0x100
  9037 ms  0xc72 SECKEY_CreateECPrivateKey()
  9037 ms  0xc72 cx:0x7fa38b73d4a8
  9037 ms     | 0xc72 EC_ValidatePublicKey()
  9039 ms     | 0xc72 ret:0x0
  9039 ms  0xc72 ret:0x7fa387788020::7fa387788020  e0 2c cd 7e                                      .,.~
  9039 ms  0xc72 PK11_PubDeriveWithKDF()
  9039 ms  0xc72 seckey:0x7fa387788020
  9039 ms     | 0xc72 EC_ValidatePublicKey()
  9040 ms     | 0xc72 ret:0x0
  9042 ms  0xc72 ret:0x7fa37eca6b00
  9042 ms  0xc72 PK11_DeriveWithFlags()
  9042 ms  0xc72 basekey:0x7fa37eca6b00
  9042 ms     | 0xc72 PK11_DeriveWithTemplate()
  9042 ms  0xc72 ret:0x7fa37f879b00
  9042 ms  0xc72 PK11_Derive()
  9042 ms  0xc72 basekey:0x7fa37f879b00
  9042 ms     | 0xc72 PK11_DeriveWithTemplate()
  9042 ms  0xc72 ret:0x7fa37f879d00
  9042 ms  0xc72 SECKEY_DestroyPrivateKey()
  9042 ms  0xc72 privk:0x7fa387788020::7fa387788020  e0 2c cd 7e                                      .,.~
  9042 ms  0xc72 privk:0x7fa387788020::7fa387788020  e5 e5 e5 e5                                      ....
  9042 ms  0xc72 PK11_Encrypt()
  9042 ms  0xc72 symkey:0x7fa37f87a000
  9043 ms  SECKEY_ECParamsToKeySize()
  9043 ms  0xc72 ret:0x100
  9043 ms  0xc72 SECKEY_CreateECPrivateKey()
  9043 ms  0xc72 cx:0x7fa38b73d308
  9043 ms     | 0xc72 EC_ValidatePublicKey()
  9045 ms     | 0xc72 ret:0x0
  9045 ms  0xc72 ret:0x7fa387788820::7fa387788820  80 2d cd 7e                                      .-.~
  9045 ms  0xc72 PK11_PubDeriveWithKDF()
  9045 ms  0xc72 seckey:0x7fa387788820
  9045 ms     | 0xc72 EC_ValidatePublicKey()
  9046 ms     | 0xc72 ret:0x0
  9048 ms  0xc72 ret:0x7fa37eca6b00
  9048 ms  0xc72 PK11_DeriveWithFlags()
  9048 ms  0xc72 basekey:0x7fa37eca6b00
  9048 ms     | 0xc72 PK11_DeriveWithTemplate()
  9048 ms  0xc72 ret:0x7fa37f8c9080
  9048 ms  0xc72 PK11_Derive()
  9048 ms  0xc72 basekey:0x7fa37f8c9080
  9048 ms     | 0xc72 PK11_DeriveWithTemplate()
  9048 ms  0xc72 ret:0x7fa37f8c9180
  9048 ms  0xc72 SECKEY_DestroyPrivateKey()
  9048 ms  0xc72 privk:0x7fa387788820::7fa387788820  80 2d cd 7e                                      .-.~
  9048 ms  0xc72 privk:0x7fa387788820::7fa387788820  e5 e5 e5 e5                                      ....
  9048 ms  0xc72 PK11_Encrypt()
  9048 ms  0xc72 symkey:0x7fa37f8ca580
  9050 ms  SECKEY_ECParamsToKeySize()
  9050 ms  0xc72 ret:0x100
  9050 ms  0xc72 SECKEY_CreateECPrivateKey()
  9050 ms  0xc72 cx:0x7fa38b73bf88
  9051 ms     | 0xc72 EC_ValidatePublicKey()
  9052 ms     | 0xc72 ret:0x0
  9052 ms  0xc72 ret:0x7fa3877d5020::7fa3877d5020  f0 e1 e1 7e                                      ...~
  9052 ms  0xc72 PK11_PubDeriveWithKDF()
  9052 ms  0xc72 seckey:0x7fa3877d5020
  9052 ms     | 0xc72 EC_ValidatePublicKey()
  9054 ms     | 0xc72 ret:0x0
  9056 ms  0xc72 ret:0x7fa37eca6b00
  9056 ms  0xc72 PK11_DeriveWithFlags()
  9056 ms  0xc72 basekey:0x7fa37eca6b00
  9056 ms     | 0xc72 PK11_DeriveWithTemplate()
  9056 ms  0xc72 ret:0x7fa37f8f7200
  9056 ms  0xc72 PK11_Derive()
  9056 ms  0xc72 basekey:0x7fa37f8f7200
  9056 ms     | 0xc72 PK11_DeriveWithTemplate()
  9056 ms  0xc72 ret:0x7fa37f8f7280
  9056 ms  0xc72 SECKEY_DestroyPrivateKey()
  9056 ms  0xc72 privk:0x7fa3877d5020::7fa3877d5020  f0 e1 e1 7e                                      ...~
  9056 ms  0xc72 privk:0x7fa3877d5020::7fa3877d5020  e5 e5 e5 e5                                      ....
  9056 ms  0xc72 PK11_Encrypt()
  9056 ms  0xc72 symkey:0x7fa37f8f7e00
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de71d90
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de71a60
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de716a0
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de71040
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de1de50
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 SSL_AuthCertificateComplete()
  9056 ms  0xc72 fd:0x7fa37de1d850
  9056 ms  0xc72 err:0x0
  9056 ms  0xc72 PK11_Encrypt()
  9056 ms  0xc72 symkey:0x7fa37eca7000
  9057 ms  0xc72 PK11_Encrypt()
  9057 ms  0xc72 symkey:0x7fa37f3adb00
  9057 ms  0xc72 PK11_Encrypt()
  9057 ms  0xc72 symkey:0x7fa37f3ccf80
  9058 ms  0xc72 PK11_Encrypt()
  9058 ms  0xc72 symkey:0x7fa37f3cd900
  9058 ms  0xc72 PK11_Encrypt()
  9058 ms  0xc72 symkey:0x7fa37f879a00
  9058 ms  0xc72 PK11_Encrypt()
  9058 ms  0xc72 symkey:0x7fa37f87a000
  9058 ms  0xc72 PK11_Encrypt()
  9058 ms  0xc72 symkey:0x7fa37f8ca580
  9059 ms  SECKEY_ECParamsToKeySize()
  9059 ms  0xc72 ret:0x100
  9059 ms  0xc72 SECKEY_CreateECPrivateKey()
  9059 ms  0xc72 cx:0x7fa38b73d168
  9060 ms     | 0xc72 EC_ValidatePublicKey()
  9061 ms     | 0xc72 ret:0x0
  9061 ms  0xc72 ret:0x7fa3877da820::7fa3877da820  90 e2 e1 7e                                      ...~
  9061 ms  0xc72 PK11_PubDeriveWithKDF()
  9061 ms  0xc72 seckey:0x7fa3877da820
  9061 ms     | 0xc72 EC_ValidatePublicKey()
  9063 ms     | 0xc72 ret:0x0
  9064 ms  0xc72 ret:0x7fa37eca6b00
  9064 ms  0xc72 PK11_DeriveWithFlags()
  9064 ms  0xc72 basekey:0x7fa37eca6b00
  9064 ms     | 0xc72 PK11_DeriveWithTemplate()
  9064 ms  0xc72 ret:0x7fa38064ba80
  9064 ms  0xc72 PK11_Derive()
  9064 ms  0xc72 basekey:0x7fa38064ba80
  9064 ms     | 0xc72 PK11_DeriveWithTemplate()
  9064 ms  0xc72 ret:0x7fa38064bb00
  9064 ms  0xc72 SECKEY_DestroyPrivateKey()
  9064 ms  0xc72 privk:0x7fa3877da820::7fa3877da820  90 e2 e1 7e                                      ...~
  9064 ms  0xc72 privk:0x7fa3877da820::7fa3877da820  e5 e5 e5 e5                                      ....
  9064 ms  0xc72 PK11_Encrypt()
  9064 ms  0xc72 symkey:0x7fa38064c080
  9065 ms  SECKEY_ECParamsToKeySize()
  9065 ms  0xc72 ret:0x100
  9065 ms  0xc72 SECKEY_CreateECPrivateKey()
  9065 ms  0xc72 cx:0x7fa38b73cfc8
  9066 ms     | 0xc72 EC_ValidatePublicKey()
  9067 ms     | 0xc72 ret:0x0
  9067 ms  0xc72 ret:0x7fa3880b3820::7fa3880b3820  30 e3 e1 7e                                      0..~
  9067 ms  0xc72 PK11_PubDeriveWithKDF()
  9067 ms  0xc72 seckey:0x7fa3880b3820
  9067 ms     | 0xc72 EC_ValidatePublicKey()
  9069 ms     | 0xc72 ret:0x0
  9070 ms  0xc72 ret:0x7fa37eca6b00
  9070 ms  0xc72 PK11_DeriveWithFlags()
  9070 ms  0xc72 basekey:0x7fa37eca6b00
  9070 ms     | 0xc72 PK11_DeriveWithTemplate()
  9070 ms  0xc72 ret:0x7fa38064c400
  9070 ms  0xc72 PK11_Derive()
  9070 ms  0xc72 basekey:0x7fa38064c400
  9070 ms     | 0xc72 PK11_DeriveWithTemplate()
  9070 ms  0xc72 ret:0x7fa38064c600
  9070 ms  0xc72 SECKEY_DestroyPrivateKey()
  9070 ms  0xc72 privk:0x7fa3880b3820::7fa3880b3820  30 e3 e1 7e                                      0..~
  9070 ms  0xc72 privk:0x7fa3880b3820::7fa3880b3820  e5 e5 e5 e5                                      ....
  9070 ms  0xc72 PK11_Encrypt()
  9070 ms  0xc72 symkey:0x7fa38064cc80
  9073 ms  SECKEY_ECParamsToKeySize()
  9073 ms  0xc72 ret:0x100
  9073 ms  0xc72 SECKEY_CreateECPrivateKey()
  9073 ms  0xc72 cx:0x7fa38b73ce28
  9074 ms     | 0xc72 EC_ValidatePublicKey()
  9075 ms     | 0xc72 ret:0x0
  9075 ms  0xc72 ret:0x7fa3880b4020::7fa3880b4020  20 e4 e1 7e                                       ..~
  9075 ms  0xc72 PK11_PubDeriveWithKDF()
  9075 ms  0xc72 seckey:0x7fa3880b4020
  9075 ms     | 0xc72 EC_ValidatePublicKey()
  9077 ms     | 0xc72 ret:0x0
  9078 ms  0xc72 ret:0x7fa37eca6b00
  9078 ms  0xc72 PK11_DeriveWithFlags()
  9078 ms  0xc72 basekey:0x7fa37eca6b00
  9078 ms     | 0xc72 PK11_DeriveWithTemplate()
  9078 ms  0xc72 ret:0x7fa38064ce00
  9078 ms  0xc72 PK11_Derive()
  9078 ms  0xc72 basekey:0x7fa38064ce00
  9078 ms     | 0xc72 PK11_DeriveWithTemplate()
  9078 ms  0xc72 ret:0x7fa38064cf80
  9078 ms  0xc72 SECKEY_DestroyPrivateKey()
  9078 ms  0xc72 privk:0x7fa3880b4020::7fa3880b4020  20 e4 e1 7e                                       ..~
  9078 ms  0xc72 privk:0x7fa3880b4020::7fa3880b4020  e5 e5 e5 e5                                      ....
  9079 ms  0xc72 PK11_Encrypt()
  9079 ms  0xc72 symkey:0x7fa380668200
  9079 ms  SECKEY_ECParamsToKeySize()
  9079 ms  0xc72 ret:0x100
  9079 ms  0xc72 SECKEY_CreateECPrivateKey()
  9079 ms  0xc72 cx:0x7fa38b73cc88
  9080 ms     | 0xc72 EC_ValidatePublicKey()
  9081 ms     | 0xc72 ret:0x0
  9081 ms  0xc72 ret:0x7fa3880b4820::7fa3880b4820  c0 e4 e1 7e                                      ...~
  9081 ms  0xc72 PK11_PubDeriveWithKDF()
  9081 ms  0xc72 seckey:0x7fa3880b4820
  9081 ms     | 0xc72 EC_ValidatePublicKey()
  9083 ms     | 0xc72 ret:0x0
  9084 ms  0xc72 ret:0x7fa37eca6b00
  9084 ms  0xc72 PK11_DeriveWithFlags()
  9084 ms  0xc72 basekey:0x7fa37eca6b00
  9084 ms     | 0xc72 PK11_DeriveWithTemplate()
  9085 ms  0xc72 ret:0x7fa380668380
  9085 ms  0xc72 PK11_Derive()
  9085 ms  0xc72 basekey:0x7fa380668380
  9085 ms     | 0xc72 PK11_DeriveWithTemplate()
  9085 ms  0xc72 ret:0x7fa380668400
  9085 ms  0xc72 SECKEY_DestroyPrivateKey()
  9085 ms  0xc72 privk:0x7fa3880b4820::7fa3880b4820  c0 e4 e1 7e                                      ...~
  9085 ms  0xc72 privk:0x7fa3880b4820::7fa3880b4820  e5 e5 e5 e5                                      ....
  9085 ms  0xc72 PK11_Encrypt()
  9085 ms  0xc72 symkey:0x7fa380668680
  9086 ms  SECKEY_ECParamsToKeySize()
  9086 ms  0xc72 ret:0x100
  9086 ms  0xc72 SECKEY_CreateECPrivateKey()
  9086 ms  0xc72 cx:0x7fa38b73cae8
  9086 ms     | 0xc72 EC_ValidatePublicKey()
  9094 ms     | 0xc72 ret:0x0
  9095 ms  0xc72 ret:0x7fa3880b5020::7fa3880b5020  00 e6 e1 7e                                      ...~
  9095 ms  0xc72 PK11_PubDeriveWithKDF()
  9095 ms  0xc72 seckey:0x7fa3880b5020
  9095 ms     | 0xc72 EC_ValidatePublicKey()
  9096 ms     | 0xc72 ret:0x0
  9098 ms  0xc72 ret:0x7fa37eca6b00
  9098 ms  0xc72 PK11_DeriveWithFlags()
  9098 ms  0xc72 basekey:0x7fa37eca6b00
  9098 ms     | 0xc72 PK11_DeriveWithTemplate()
  9098 ms  0xc72 ret:0x7fa36c33b880
  9098 ms  0xc72 PK11_Derive()
  9098 ms  0xc72 basekey:0x7fa36c33b880
  9098 ms     | 0xc72 PK11_DeriveWithTemplate()
  9098 ms  0xc72 ret:0x7fa380668a00
  9098 ms  0xc72 SECKEY_DestroyPrivateKey()
  9098 ms  0xc72 privk:0x7fa3880b5020::7fa3880b5020  00 e6 e1 7e                                      ...~
  9098 ms  0xc72 privk:0x7fa3880b5020::7fa3880b5020  e5 e5 e5 e5                                      ....
  9098 ms  0xc72 PK11_Encrypt()
  9098 ms  0xc72 symkey:0x7fa380669200
  9099 ms  SECKEY_ECParamsToKeySize()
  9099 ms  0xc72 ret:0x100
  9099 ms  0xc72 SECKEY_CreateECPrivateKey()
  9099 ms  0xc72 cx:0x7fa38b73c948
  9099 ms     | 0xc72 EC_ValidatePublicKey()
  9101 ms     | 0xc72 ret:0x0
  9101 ms  0xc72 ret:0x7fa3880b5820::7fa3880b5820  f0 e6 e1 7e                                      ...~
  9101 ms  0xc72 PK11_PubDeriveWithKDF()
  9101 ms  0xc72 seckey:0x7fa3880b5820
  9101 ms     | 0xc72 EC_ValidatePublicKey()
  9102 ms     | 0xc72 ret:0x0
  9104 ms  0xc72 ret:0x7fa37eca6b00
  9104 ms  0xc72 PK11_DeriveWithFlags()
  9104 ms  0xc72 basekey:0x7fa37eca6b00
  9104 ms     | 0xc72 PK11_DeriveWithTemplate()
  9104 ms  0xc72 ret:0x7fa380669580
  9104 ms  0xc72 PK11_Derive()
  9104 ms  0xc72 basekey:0x7fa380669580
  9104 ms     | 0xc72 PK11_DeriveWithTemplate()
  9104 ms  0xc72 ret:0x7fa380669600
  9104 ms  0xc72 SECKEY_DestroyPrivateKey()
  9104 ms  0xc72 privk:0x7fa3880b5820::7fa3880b5820  f0 e6 e1 7e                                      ...~
  9104 ms  0xc72 privk:0x7fa3880b5820::7fa3880b5820  e5 e5 e5 e5                                      ....
  9104 ms  0xc72 PK11_Encrypt()
  9104 ms  0xc72 symkey:0x7fa380669980
  9107 ms  SECKEY_ECParamsToKeySize()
  9107 ms  0xc72 ret:0x100
  9107 ms  0xc72 SECKEY_CreateECPrivateKey()
  9107 ms  0xc72 cx:0x7fa38b73c7a8
  9107 ms     | 0xc72 EC_ValidatePublicKey()
  9109 ms     | 0xc72 ret:0x0
  9109 ms  0xc72 ret:0x7fa3880b6020::7fa3880b6020  e0 e7 e1 7e                                      ...~
  9109 ms  0xc72 PK11_PubDeriveWithKDF()
  9109 ms  0xc72 seckey:0x7fa3880b6020
  9109 ms     | 0xc72 EC_ValidatePublicKey()
  9110 ms     | 0xc72 ret:0x0
  9112 ms  0xc72 ret:0x7fa37eca6b00
  9112 ms  0xc72 PK11_DeriveWithFlags()
  9112 ms  0xc72 basekey:0x7fa37eca6b00
  9112 ms     | 0xc72 PK11_DeriveWithTemplate()
  9112 ms  0xc72 ret:0x7fa380669c00
  9112 ms  0xc72 PK11_Derive()
  9112 ms  0xc72 basekey:0x7fa380669c00
  9112 ms     | 0xc72 PK11_DeriveWithTemplate()
  9112 ms  0xc72 ret:0x7fa380669d80
  9112 ms  0xc72 SECKEY_DestroyPrivateKey()
  9112 ms  0xc72 privk:0x7fa3880b6020::7fa3880b6020  e0 e7 e1 7e                                      ...~
  9112 ms  0xc72 privk:0x7fa3880b6020::7fa3880b6020  e5 e5 e5 e5                                      ....
  9112 ms  0xc72 PK11_Encrypt()
  9112 ms  0xc72 symkey:0x7fa380680980
  9113 ms  SECKEY_ECParamsToKeySize()
  9113 ms  0xc72 ret:0x100
  9113 ms  0xc72 SECKEY_CreateECPrivateKey()
  9113 ms  0xc72 cx:0x7fa38b73c608
  9113 ms     | 0xc72 EC_ValidatePublicKey()
  9115 ms     | 0xc72 ret:0x0
  9115 ms  0xc72 ret:0x7fa3880b6820::7fa3880b6820  70 e9 e1 7e                                      p..~
  9115 ms  0xc72 PK11_PubDeriveWithKDF()
  9115 ms  0xc72 seckey:0x7fa3880b6820
  9115 ms     | 0xc72 EC_ValidatePublicKey()
  9116 ms     | 0xc72 ret:0x0
  9118 ms  0xc72 ret:0x7fa37eca6b00
  9118 ms  0xc72 PK11_DeriveWithFlags()
  9118 ms  0xc72 basekey:0x7fa37eca6b00
  9118 ms     | 0xc72 PK11_DeriveWithTemplate()
  9118 ms  0xc72 ret:0x7fa380680f00
  9118 ms  0xc72 PK11_Derive()
  9118 ms  0xc72 basekey:0x7fa380680f00
  9118 ms     | 0xc72 PK11_DeriveWithTemplate()
  9118 ms  0xc72 ret:0x7fa380681280
  9118 ms  0xc72 SECKEY_DestroyPrivateKey()
  9118 ms  0xc72 privk:0x7fa3880b6820::7fa3880b6820  70 e9 e1 7e                                      p..~
  9118 ms  0xc72 privk:0x7fa3880b6820::7fa3880b6820  e5 e5 e5 e5                                      ....
  9118 ms  0xc72 PK11_Encrypt()
  9118 ms  0xc72 symkey:0x7fa380681580
  9119 ms  SECKEY_ECParamsToKeySize()
  9119 ms  0xc72 ret:0x100
  9119 ms  0xc72 SECKEY_CreateECPrivateKey()
  9119 ms  0xc72 cx:0x7fa38b73c468
  9120 ms     | 0xc72 EC_ValidatePublicKey()
  9121 ms     | 0xc72 ret:0x0
  9121 ms  0xc72 ret:0x7fa3880b7020::7fa3880b7020  60 ea e1 7e                                      `..~
  9121 ms  0xc72 PK11_PubDeriveWithKDF()
  9121 ms  0xc72 seckey:0x7fa3880b7020
  9121 ms     | 0xc72 EC_ValidatePublicKey()
  9123 ms     | 0xc72 ret:0x0
  9124 ms  0xc72 ret:0x7fa37eca6b00
  9124 ms  0xc72 PK11_DeriveWithFlags()
  9124 ms  0xc72 basekey:0x7fa37eca6b00
  9124 ms     | 0xc72 PK11_DeriveWithTemplate()
  9124 ms  0xc72 ret:0x7fa380687100
  9124 ms  0xc72 PK11_Derive()
  9124 ms  0xc72 basekey:0x7fa380687100
  9124 ms     | 0xc72 PK11_DeriveWithTemplate()
  9124 ms  0xc72 ret:0x7fa380687180
  9124 ms  0xc72 SECKEY_DestroyPrivateKey()
  9124 ms  0xc72 privk:0x7fa3880b7020::7fa3880b7020  60 ea e1 7e                                      `..~
  9124 ms  0xc72 privk:0x7fa3880b7020::7fa3880b7020  e5 e5 e5 e5                                      ....
  9124 ms  0xc72 PK11_Encrypt()
  9124 ms  0xc72 symkey:0x7fa380687300
  9126 ms  SECKEY_ECParamsToKeySize()
  9126 ms  0xc72 ret:0x100
  9126 ms  0xc72 SECKEY_CreateECPrivateKey()
  9126 ms  0xc72 cx:0x7fa38b73c2c8
  9126 ms     | 0xc72 EC_ValidatePublicKey()
  9128 ms     | 0xc72 ret:0x0
  9128 ms  0xc72 ret:0x7fa3880b7820::7fa3880b7820  f0 eb e1 7e                                      ...~
  9128 ms  0xc72 PK11_PubDeriveWithKDF()
  9128 ms  0xc72 seckey:0x7fa3880b7820
  9128 ms     | 0xc72 EC_ValidatePublicKey()
  9129 ms     | 0xc72 ret:0x0
  9131 ms  0xc72 ret:0x7fa37eca6b00
  9131 ms  0xc72 PK11_DeriveWithFlags()
  9131 ms  0xc72 basekey:0x7fa37eca6b00
  9131 ms     | 0xc72 PK11_DeriveWithTemplate()
  9131 ms  0xc72 ret:0x7fa380687400
  9131 ms  0xc72 PK11_Derive()
  9131 ms  0xc72 basekey:0x7fa380687400
  9131 ms     | 0xc72 PK11_DeriveWithTemplate()
  9131 ms  0xc72 ret:0x7fa380687480
  9131 ms  0xc72 SECKEY_DestroyPrivateKey()
  9131 ms  0xc72 privk:0x7fa3880b7820::7fa3880b7820  f0 eb e1 7e                                      ...~
  9131 ms  0xc72 privk:0x7fa3880b7820::7fa3880b7820  e5 e5 e5 e5                                      ....
  9131 ms  0xc72 PK11_Encrypt()
  9131 ms  0xc72 symkey:0x7fa380687600
  9132 ms  SECKEY_ECParamsToKeySize()
  9132 ms  0xc72 ret:0x100
  9132 ms  0xc72 SECKEY_CreateECPrivateKey()
  9132 ms  0xc72 cx:0x7fa38b73c128
  9133 ms     | 0xc72 EC_ValidatePublicKey()
  9134 ms     | 0xc72 ret:0x0
  9134 ms  0xc72 ret:0x7fa3880ba020::7fa3880ba020  b0 ef e1 7e                                      ...~
  9134 ms  0xc72 PK11_PubDeriveWithKDF()
  9134 ms  0xc72 seckey:0x7fa3880ba020
  9134 ms     | 0xc72 EC_ValidatePublicKey()
  9136 ms     | 0xc72 ret:0x0
  9137 ms  0xc72 ret:0x7fa37eca6b00
  9137 ms  0xc72 PK11_DeriveWithFlags()
  9137 ms  0xc72 basekey:0x7fa37eca6b00
  9137 ms     | 0xc72 PK11_DeriveWithTemplate()
  9137 ms  0xc72 ret:0x7fa380688080
  9137 ms  0xc72 PK11_Derive()
  9137 ms  0xc72 basekey:0x7fa380688080
  9137 ms     | 0xc72 PK11_DeriveWithTemplate()
  9137 ms  0xc72 ret:0x7fa380688100
  9137 ms  0xc72 SECKEY_DestroyPrivateKey()
  9137 ms  0xc72 privk:0x7fa3880ba020::7fa3880ba020  b0 ef e1 7e                                      ...~
  9138 ms  0xc72 privk:0x7fa3880ba020::7fa3880ba020  e5 e5 e5 e5                                      ....
  9138 ms  0xc72 PK11_Encrypt()
  9138 ms  0xc72 symkey:0x7fa380688380
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37de1d460
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37de1d310
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37d3f9fd0
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37d3f9e80
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37d3f9730
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa37d3f9670
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa36c32f730
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa36c32f6d0
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa36c1b2af0
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SSL_AuthCertificateComplete()
  9138 ms  0xc72 fd:0x7fa36c1b24f0
  9138 ms  0xc72 err:0x0
  9138 ms  0xc72 SECKEY_DestroyPrivateKey()
  9138 ms  0xc72 privk:0x7fa383703820::7fa383703820  30 d8 3d 7d                                      0.=}
  9138 ms  0xc72 privk:0x7fa383703820::7fa383703820  e5 e5 e5 e5                                      ....
  9138 ms  0xc72 SECKEY_DestroyPrivateKey()
  9138 ms  0xc72 privk:0x7fa3835b9020::7fa3835b9020  f0 d1 3d 7d                                      ..=}
  9138 ms  0xc72 privk:0x7fa3835b9020::7fa3835b9020  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa38370f020::7fa38370f020  10 df 3d 7d                                      ..=}
  9139 ms  0xc72 privk:0x7fa38370f020::7fa38370f020  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa383707020::7fa383707020  c0 d9 3d 7d                                      ..=}
  9139 ms  0xc72 privk:0x7fa383707020::7fa383707020  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa3838d1820::7fa3838d1820  80 88 76 7d                                      ..v}
  9139 ms  0xc72 privk:0x7fa3838d1820::7fa3838d1820  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa3838cb820::7fa3838cb820  60 80 76 7d                                      `.v}
  9139 ms  0xc72 privk:0x7fa3838cb820::7fa3838cb820  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa3838dc820::7fa3838dc820  50 cb e0 7d                                      P..}
  9139 ms  0xc72 privk:0x7fa3838dc820::7fa3838dc820  e5 e5 e5 e5                                      ....
  9139 ms  0xc72 SECKEY_DestroyPrivateKey()
  9139 ms  0xc72 privk:0x7fa3838d6020::7fa3838d6020  f0 c1 e0 7d                                      ...}
  9140 ms  0xc72 privk:0x7fa3838d6020::7fa3838d6020  e5 e5 e5 e5                                      ....
  9140 ms  0xc72 SECKEY_DestroyPrivateKey()
  9140 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  b0 cf e0 7d                                      ...}
  9140 ms  0xc72 privk:0x7fa383ca3820::7fa383ca3820  e5 e5 e5 e5                                      ....
  9140 ms  0xc72 SECKEY_DestroyPrivateKey()
  9140 ms  0xc72 privk:0x7fa383ca0820::7fa383ca0820  d0 cd e0 7d                                      ...}
  9140 ms  0xc72 privk:0x7fa383ca0820::7fa383ca0820  e5 e5 e5 e5                                      ....
  9140 ms  0xc72 SECKEY_DestroyPrivateKey()
  9140 ms  0xc72 privk:0x7fa383ca8020::7fa383ca8020  00 26 71 7e                                      .&q~
  9140 ms  0xc72 privk:0x7fa383ca8020::7fa383ca8020  e5 e5 e5 e5                                      ....
  9140 ms  0xc72 SECKEY_DestroyPrivateKey()
  9140 ms  0xc72 privk:0x7fa383ca6020::7fa383ca6020  f0 21 71 7e                                      .!q~
  9140 ms  0xc72 privk:0x7fa383ca6020::7fa383ca6020  e5 e5 e5 e5                                      ....
  9140 ms  0xc72 PK11_Encrypt()
  9140 ms  0xc72 symkey:0x7fa38064c080
  9141 ms  0xc72 PK11_Encrypt()
  9141 ms  0xc72 symkey:0x7fa38064cc80
  9141 ms  0xc72 PK11_Encrypt()
  9141 ms  0xc72 symkey:0x7fa380668200
  9141 ms  0xc72 PK11_Encrypt()
  9141 ms  0xc72 symkey:0x7fa380668680
  9141 ms  0xc72 PK11_Encrypt()
  9141 ms  0xc72 symkey:0x7fa380669200
  9142 ms  0xc72 PK11_Encrypt()
  9142 ms  0xc72 symkey:0x7fa380669980
  9142 ms  0xc72 PK11_Encrypt()
  9142 ms  0xc72 symkey:0x7fa380680980
  9142 ms  0xc72 PK11_Encrypt()
  9142 ms  0xc72 symkey:0x7fa380681580
  9143 ms  0xc72 PK11_Encrypt()
  9143 ms  0xc72 symkey:0x7fa380687300
  9143 ms  0xc72 PK11_Encrypt()
  9143 ms  0xc72 symkey:0x7fa380687600
  9143 ms  0xc72 SECKEY_DestroyPrivateKey()
  9143 ms  0xc72 privk:0x7fa383cac820::7fa383cac820  f0 2b 71 7e                                      .+q~
  9143 ms  0xc72 privk:0x7fa383cac820::7fa383cac820  e5 e5 e5 e5                                      ....
  9143 ms  0xc72 SECKEY_DestroyPrivateKey()
  9143 ms  0xc72 privk:0x7fa383caa820::7fa383caa820  90 27 71 7e                                      .'q~
  9143 ms  0xc72 privk:0x7fa383caa820::7fa383caa820  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383cbf020::7fa383cbf020  b0 0a 75 6c                                      ..ul
  9144 ms  0xc72 privk:0x7fa383cbf020::7fa383cbf020  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383cb1020::7fa383cb1020  20 2e 71 7e                                       .q~
  9144 ms  0xc72 privk:0x7fa383cb1020::7fa383cb1020  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383ccc820::7fa383ccc820  a0 f6 7a 7e                                      ..z~
  9144 ms  0xc72 privk:0x7fa383ccc820::7fa383ccc820  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383cc5820::7fa383cc5820  30 f3 7a 7e                                      0.z~
  9144 ms  0xc72 privk:0x7fa383cc5820::7fa383cc5820  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383cd3820::7fa383cd3820  f0 fb 7a 7e                                      ..z~
  9144 ms  0xc72 privk:0x7fa383cd3820::7fa383cd3820  e5 e5 e5 e5                                      ....
  9144 ms  0xc72 SECKEY_DestroyPrivateKey()
  9144 ms  0xc72 privk:0x7fa383ccf820::7fa383ccf820  c0 f9 7a 7e                                      ..z~
  9144 ms  0xc72 privk:0x7fa383ccf820::7fa383ccf820  e5 e5 e5 e5                                      ....
  9145 ms  0xc72 SECKEY_DestroyPrivateKey()
  9145 ms  0xc72 privk:0x7fa386460820::7fa386460820  b0 ff 7a 7e                                      ..z~
  9145 ms  0xc72 privk:0x7fa386460820::7fa386460820  e5 e5 e5 e5                                      ....
  9145 ms  0xc72 SECKEY_DestroyPrivateKey()
  9145 ms  0xc72 privk:0x7fa383cd8020::7fa383cd8020  80 fd 7a 7e                                      ..z~
  9145 ms  0xc72 privk:0x7fa383cd8020::7fa383cd8020  e5 e5 e5 e5                                      ....
  9145 ms  0xc72 PR_Connect()
  9145 ms  0xc72 fd:0x7fa37f856be0
  9151 ms  0xc72 SECKEY_DestroyPrivateKey()
  9151 ms  0xc72 privk:0x7fa38646a020::7fa38646a020  20 e4 7b 7e                                       .{~
  9152 ms  0xc72 privk:0x7fa38646a020::7fa38646a020  e5 e5 e5 e5                                      ....
  9152 ms  0xc72 SECKEY_DestroyPrivateKey()
  9152 ms  0xc72 privk:0x7fa386465820::7fa386465820  40 e2 7b 7e                                      @.{~
  9152 ms  0xc72 privk:0x7fa386465820::7fa386465820  e5 e5 e5 e5                                      ....
  9152 ms  0xc72 PR_Connect()
  9152 ms  0xc72 fd:0x7fa37f3a5fd0
  9153 ms  0xc72 SECKEY_DestroyPrivateKey()
  9153 ms  0xc72 privk:0x7fa38653e820::7fa38653e820  e0 c2 8b 7e                                      ...~
  9153 ms  0xc72 privk:0x7fa38653e820::7fa38653e820  e5 e5 e5 e5                                      ....
  9153 ms  0xc72 SECKEY_DestroyPrivateKey()
  9153 ms  0xc72 privk:0x7fa38653c820::7fa38653c820  b0 e5 7b 7e                                      ..{~
  9154 ms  0xc72 privk:0x7fa38653c820::7fa38653c820  e5 e5 e5 e5                                      ....
  9159 ms  0xc72 SECKEY_DestroyPrivateKey()
  9159 ms  0xc72 privk:0x7fa3876d8820::7fa3876d8820  d0 cd 8b 7e                                      ...~
  9160 ms  0xc72 privk:0x7fa3876d8820::7fa3876d8820  e5 e5 e5 e5                                      ....
  9160 ms  0xc72 SECKEY_DestroyPrivateKey()
  9160 ms  0xc72 privk:0x7fa386542020::7fa386542020  f0 cb 8b 7e                                      ...~
  9160 ms  0xc72 privk:0x7fa386542020::7fa386542020  e5 e5 e5 e5                                      ....
  9166 ms  0xc72 SECKEY_DestroyPrivateKey()
  9166 ms  0xc72 privk:0x7fa3876dd020::7fa3876dd020  30 83 c0 7e                                      0..~
  9166 ms  0xc72 privk:0x7fa3876dd020::7fa3876dd020  e5 e5 e5 e5                                      ....
  9166 ms  0xc72 SECKEY_DestroyPrivateKey()
  9166 ms  0xc72 privk:0x7fa3876db020::7fa3876db020  60 cf 8b 7e                                      `..~
  9166 ms  0xc72 privk:0x7fa3876db020::7fa3876db020  e5 e5 e5 e5                                      ....
  9173 ms  0xc72 SECKEY_DestroyPrivateKey()
  9173 ms  0xc72 privk:0x7fa3876e8820::7fa3876e8820  20 89 c0 7e                                       ..~
  9173 ms  0xc72 privk:0x7fa3876e8820::7fa3876e8820  e5 e5 e5 e5                                      ....
  9173 ms  0xc72 SECKEY_DestroyPrivateKey()
  9173 ms  0xc72 privk:0x7fa3876e4820::7fa3876e4820  b0 85 c0 7e                                      ...~
  9173 ms  0xc72 privk:0x7fa3876e4820::7fa3876e4820  e5 e5 e5 e5                                      ....
           /* TID 0xc7a */
  9183 ms  0xc7a PR_Close()
  9183 ms  0xc7a fd:0x7fa37d3f9d90
           /* TID 0xd0d */
  9203 ms  0xd0d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9204 ms  0xd0d ret:0x0
           /* TID 0xc7a */
  9204 ms  0xc7a PR_Close()
  9204 ms  0xc7a fd:0x7fa37d3f9d90
           /* TID 0xd0e */
  9226 ms  0xd0e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9227 ms  0xd0e ret:0x0
           /* TID 0xc7a */
  9228 ms  0xc7a PR_Close()
  9228 ms  0xc7a fd:0x7fa37d3f9d90
  9252 ms  0xc7a PR_Close()
  9252 ms  0xc7a fd:0x7fa37d3f9d90
           /* TID 0xc72 */
  9258 ms  0xc72 PK11_Encrypt()
  9258 ms  0xc72 symkey:0x7fa37f3adb00
  9259 ms  0xc72 SSL_ImportFD()
  9259 ms  0xc72 ret:0x7fa38068dd30
  9259 ms  0xc72 SSL_AuthCertificateHook()
  9259 ms  0xc72 fd:0x7fa38068dd30
  9259 ms  0xc72 ret:0x0
  9259 ms  0xc72 PR_Connect()
  9259 ms  0xc72 fd:0x7fa38068dd30
  9263 ms  0xc72 PK11_Encrypt()
  9263 ms  0xc72 symkey:0x7fa37f3ccf80
  9264 ms  0xc72 SSL_ImportFD()
  9264 ms  0xc72 ret:0x7fa38315bfa0
  9264 ms  0xc72 SSL_AuthCertificateHook()
  9264 ms  0xc72 fd:0x7fa38315bfa0
  9264 ms  0xc72 ret:0x0
  9264 ms  0xc72 PR_Connect()
  9264 ms  0xc72 fd:0x7fa38315bfa0
  9268 ms  0xc72 PK11_Encrypt()
  9268 ms  0xc72 symkey:0x7fa37f3cd900
  9269 ms  0xc72 SSL_ImportFD()
  9269 ms  0xc72 ret:0x7fa383432430
  9269 ms  0xc72 SSL_AuthCertificateHook()
  9269 ms  0xc72 fd:0x7fa383432430
  9269 ms  0xc72 ret:0x0
  9269 ms  0xc72 PR_Connect()
  9269 ms  0xc72 fd:0x7fa383432430
  9285 ms  0xc72 PK11_Encrypt()
  9285 ms  0xc72 symkey:0x7fa37f879a00
  9285 ms  0xc72 SSL_ImportFD()
  9285 ms  0xc72 ret:0x7fa38315bdc0
  9285 ms  0xc72 SSL_AuthCertificateHook()
  9285 ms  0xc72 fd:0x7fa38315bdc0
  9285 ms  0xc72 ret:0x0
  9285 ms  0xc72 PR_Connect()
  9285 ms  0xc72 fd:0x7fa38315bdc0
  9295 ms  0xc72 SSL_ImportFD()
  9295 ms  0xc72 ret:0x7fa37de1db50
  9295 ms  0xc72 SSL_AuthCertificateHook()
  9295 ms  0xc72 fd:0x7fa37de1db50
  9295 ms  0xc72 ret:0x0
  9295 ms  0xc72 PR_Connect()
  9295 ms  0xc72 fd:0x7fa37de1db50
  9296 ms  0xc72 SSL_ImportFD()
  9296 ms  0xc72 ret:0x7fa37eef83a0
  9296 ms  0xc72 SSL_AuthCertificateHook()
  9296 ms  0xc72 fd:0x7fa37eef83a0
  9296 ms  0xc72 ret:0x0
  9296 ms  0xc72 PR_Connect()
  9296 ms  0xc72 fd:0x7fa37eef83a0
  9301 ms  0xc72 SECKEY_CreateECPrivateKey()
  9301 ms  0xc72 cx:0x7fa383741de8
  9303 ms     | 0xc72 EC_ValidatePublicKey()
  9303 ms     | 0xc72 ret:0x0
  9303 ms  0xc72 ret:0x7fa3835b9020::7fa3835b9020  b0 0f 75 6c                                      ..ul
  9303 ms  0xc72 SECKEY_CreateECPrivateKey()
  9303 ms  0xc72 cx:0x7fa383741de8
  9305 ms     | 0xc72 EC_ValidatePublicKey()
  9314 ms     | 0xc72 ret:0x0
  9314 ms  0xc72 ret:0x7fa383703820::7fa383703820  30 d8 3d 7d                                      0.=}
  9315 ms  0xc72 SECKEY_CreateECPrivateKey()
  9315 ms  0xc72 cx:0x7fa383741f88
  9316 ms     | 0xc72 EC_ValidatePublicKey()
  9316 ms     | 0xc72 ret:0x0
  9316 ms  0xc72 ret:0x7fa383708820::7fa383708820  50 db 3d 7d                                      P.=}
  9316 ms  0xc72 SECKEY_CreateECPrivateKey()
  9316 ms  0xc72 cx:0x7fa383741f88
  9317 ms     | 0xc72 EC_ValidatePublicKey()
  9320 ms     | 0xc72 ret:0x0
  9320 ms  0xc72 ret:0x7fa38370f820::7fa38370f820  60 80 76 7d                                      `.v}
  9321 ms  0xc72 SECKEY_CreateECPrivateKey()
  9321 ms  0xc72 cx:0x7fa383742128
  9322 ms     | 0xc72 EC_ValidatePublicKey()
  9322 ms     | 0xc72 ret:0x0
  9322 ms  0xc72 ret:0x7fa3838cc820::7fa3838cc820  d0 83 76 7d                                      ..v}
  9322 ms  0xc72 SECKEY_CreateECPrivateKey()
  9322 ms  0xc72 cx:0x7fa383742128
  9323 ms     | 0xc72 EC_ValidatePublicKey()
  9325 ms     | 0xc72 ret:0x0
  9325 ms  0xc72 ret:0x7fa3838d5020::7fa3838d5020  50 c1 e0 7d                                      P..}
  9327 ms  0xc72 SECKEY_CreateECPrivateKey()
  9327 ms  0xc72 cx:0x7fa3837422c8
  9327 ms     | 0xc72 EC_ValidatePublicKey()
  9327 ms     | 0xc72 ret:0x0
  9327 ms  0xc72 ret:0x7fa3838dc020::7fa3838dc020  70 c9 e0 7d                                      p..}
  9327 ms  0xc72 SECKEY_CreateECPrivateKey()
  9327 ms  0xc72 cx:0x7fa3837422c8
  9328 ms     | 0xc72 EC_ValidatePublicKey()
  9330 ms     | 0xc72 ret:0x0
  9330 ms  0xc72 ret:0x7fa3838e2020::7fa3838e2020  80 cd e0 7d                                      ...}
  9336 ms  0xc72 SECKEY_CreateECPrivateKey()
  9336 ms  0xc72 cx:0x7fa383742468
  9337 ms     | 0xc72 EC_ValidatePublicKey()
  9337 ms     | 0xc72 ret:0x0
  9337 ms  0xc72 ret:0x7fa383ca3820::7fa383ca3820  c0 ce e0 7d                                      ...}
  9337 ms  0xc72 SECKEY_CreateECPrivateKey()
  9337 ms  0xc72 cx:0x7fa383742468
  9338 ms     | 0xc72 EC_ValidatePublicKey()
  9339 ms     | 0xc72 ret:0x0
  9339 ms  0xc72 ret:0x7fa383ca6020::7fa383ca6020  00 21 71 7e                                      .!q~
  9340 ms  0xc72 SECKEY_CreateECPrivateKey()
  9340 ms  0xc72 cx:0x7fa383742608
  9340 ms     | 0xc72 EC_ValidatePublicKey()
  9340 ms     | 0xc72 ret:0x0
  9340 ms  0xc72 ret:0x7fa383ca8820::7fa383ca8820  d0 23 71 7e                                      .#q~
  9340 ms  0xc72 SECKEY_CreateECPrivateKey()
  9340 ms  0xc72 cx:0x7fa383742608
  9341 ms     | 0xc72 EC_ValidatePublicKey()
  9342 ms     | 0xc72 ret:0x0
  9342 ms  0xc72 ret:0x7fa383cab020::7fa383cab020  40 27 71 7e                                      @'q~
           /* TID 0xc7a */
  9347 ms  0xc7a PR_Close()
  9347 ms  0xc7a fd:0x7fa37ec762e0
           /* TID 0xc72 */
  9352 ms  0xc72 PK11_Encrypt()
  9352 ms  0xc72 symkey:0x7fa36c1e8d80
  9353 ms  0xc72 PK11_Encrypt()
  9353 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  9354 ms  0xc7a PR_Close()
  9354 ms  0xc7a fd:0x7fa37ec768e0
  9356 ms  0xc7a PR_Close()
  9356 ms  0xc7a fd:0x7fa37ec768e0
           /* TID 0xc72 */
  9357 ms  SECKEY_ECParamsToKeySize()
  9357 ms  0xc72 ret:0x100
  9357 ms  0xc72 SECKEY_CreateECPrivateKey()
  9357 ms  0xc72 cx:0x7fa383741de8
  9358 ms     | 0xc72 EC_ValidatePublicKey()
  9361 ms     | 0xc72 ret:0x0
  9361 ms  0xc72 ret:0x7fa383cbf820::7fa383cbf820  10 2f 71 7e                                      ./q~
  9361 ms  0xc72 PK11_PubDeriveWithKDF()
  9361 ms  0xc72 seckey:0x7fa383cbf820
  9361 ms     | 0xc72 EC_ValidatePublicKey()
  9369 ms     | 0xc72 ret:0x0
  9371 ms  0xc72 ret:0x7fa37eca6b00
  9371 ms  0xc72 PK11_DeriveWithFlags()
  9371 ms  0xc72 basekey:0x7fa37eca6b00
  9371 ms     | 0xc72 PK11_DeriveWithTemplate()
  9371 ms  0xc72 ret:0x7fa380688b80
  9371 ms  0xc72 PK11_Derive()
  9371 ms  0xc72 basekey:0x7fa380688b80
  9371 ms     | 0xc72 PK11_DeriveWithTemplate()
  9371 ms  0xc72 ret:0x7fa380688c80
  9371 ms  0xc72 SECKEY_DestroyPrivateKey()
  9371 ms  0xc72 privk:0x7fa383cbf820::7fa383cbf820  10 2f 71 7e                                      ./q~
  9371 ms  0xc72 privk:0x7fa383cbf820::7fa383cbf820  e5 e5 e5 e5                                      ....
  9371 ms  0xc72 PK11_Encrypt()
  9371 ms  0xc72 symkey:0x7fa380694080
  9374 ms  0xc72 PK11_Encrypt()
  9374 ms  0xc72 symkey:0x7fa36c1e8d80
  9375 ms  0xc72 PK11_Encrypt()
  9375 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  9376 ms  0xc7a PR_Close()
  9376 ms  0xc7a fd:0x7fa36c154c70
  9377 ms  0xc7a PR_Close()
  9377 ms  0xc7a fd:0x7fa36c154c70
  9378 ms  0xc7a PR_Close()
  9378 ms  0xc7a fd:0x7fa36c154c70
  9384 ms  0xc7a PR_Close()
  9384 ms  0xc7a fd:0x7fa36c154c70
  9385 ms  0xc7a PR_Close()
  9385 ms  0xc7a fd:0x7fa36c154c70
  9386 ms  0xc7a PR_Close()
  9386 ms  0xc7a fd:0x7fa36c154c70
           /* TID 0xc72 */
  9386 ms  SECKEY_ECParamsToKeySize()
  9386 ms  0xc72 ret:0x100
  9386 ms  0xc72 SECKEY_CreateECPrivateKey()
  9386 ms  0xc72 cx:0x7fa383741f88
  9387 ms     | 0xc72 EC_ValidatePublicKey()
  9388 ms     | 0xc72 ret:0x0
  9388 ms  0xc72 ret:0x7fa383ccc820::7fa383ccc820  50 2b 71 7e                                      P+q~
  9388 ms  0xc72 PK11_PubDeriveWithKDF()
  9388 ms  0xc72 seckey:0x7fa383ccc820
  9388 ms     | 0xc72 EC_ValidatePublicKey()
  9390 ms     | 0xc72 ret:0x0
  9391 ms  0xc72 ret:0x7fa37eca6b00
  9391 ms  0xc72 PK11_DeriveWithFlags()
  9391 ms  0xc72 basekey:0x7fa37eca6b00
  9391 ms     | 0xc72 PK11_DeriveWithTemplate()
  9391 ms  0xc72 ret:0x7fa37e713a80
  9391 ms  0xc72 PK11_Derive()
  9391 ms  0xc72 basekey:0x7fa37e713a80
  9391 ms     | 0xc72 PK11_DeriveWithTemplate()
  9391 ms  0xc72 ret:0x7fa37f3ad400
  9391 ms  0xc72 SECKEY_DestroyPrivateKey()
  9391 ms  0xc72 privk:0x7fa383ccc820::7fa383ccc820  50 2b 71 7e                                      P+q~
  9391 ms  0xc72 privk:0x7fa383ccc820::7fa383ccc820  e5 e5 e5 e5                                      ....
  9391 ms  0xc72 PK11_Encrypt()
  9391 ms  0xc72 symkey:0x7fa380694400
  9398 ms  SECKEY_ECParamsToKeySize()
  9398 ms  0xc72 ret:0x100
  9398 ms  0xc72 SECKEY_CreateECPrivateKey()
  9398 ms  0xc72 cx:0x7fa383742128
  9398 ms     | 0xc72 EC_ValidatePublicKey()
  9400 ms     | 0xc72 ret:0x0
  9400 ms  0xc72 ret:0x7fa383cd2020::7fa383cd2020  30 f3 7a 7e                                      0.z~
  9400 ms  0xc72 PK11_PubDeriveWithKDF()
  9400 ms  0xc72 seckey:0x7fa383cd2020
  9400 ms     | 0xc72 EC_ValidatePublicKey()
  9401 ms     | 0xc72 ret:0x0
  9403 ms  0xc72 ret:0x7fa37eca6b00
  9403 ms  0xc72 PK11_DeriveWithFlags()
  9403 ms  0xc72 basekey:0x7fa37eca6b00
  9403 ms     | 0xc72 PK11_DeriveWithTemplate()
  9403 ms  0xc72 ret:0x7fa380694500
  9403 ms  0xc72 PK11_Derive()
  9403 ms  0xc72 basekey:0x7fa380694500
  9403 ms     | 0xc72 PK11_DeriveWithTemplate()
  9403 ms  0xc72 ret:0x7fa380694580
  9403 ms  0xc72 SECKEY_DestroyPrivateKey()
  9403 ms  0xc72 privk:0x7fa383cd2020::7fa383cd2020  30 f3 7a 7e                                      0.z~
  9403 ms  0xc72 privk:0x7fa383cd2020::7fa383cd2020  e5 e5 e5 e5                                      ....
  9403 ms  0xc72 PK11_Encrypt()
  9403 ms  0xc72 symkey:0x7fa380694700
  9408 ms  SECKEY_ECParamsToKeySize()
  9408 ms  0xc72 ret:0x100
  9408 ms  0xc72 SECKEY_CreateECPrivateKey()
  9408 ms  0xc72 cx:0x7fa3837422c8
  9408 ms     | 0xc72 EC_ValidatePublicKey()
  9410 ms     | 0xc72 ret:0x0
  9410 ms  0xc72 ret:0x7fa383cd3820::7fa383cd3820  a0 f6 7a 7e                                      ..z~
  9410 ms  0xc72 PK11_PubDeriveWithKDF()
  9410 ms  0xc72 seckey:0x7fa383cd3820
  9410 ms     | 0xc72 EC_ValidatePublicKey()
  9411 ms     | 0xc72 ret:0x0
  9413 ms  0xc72 ret:0x7fa37eca6b00
  9413 ms  0xc72 PK11_DeriveWithFlags()
  9413 ms  0xc72 basekey:0x7fa37eca6b00
  9413 ms     | 0xc72 PK11_DeriveWithTemplate()
  9413 ms  0xc72 ret:0x7fa380694800
  9413 ms  0xc72 PK11_Derive()
  9413 ms  0xc72 basekey:0x7fa380694800
  9413 ms     | 0xc72 PK11_DeriveWithTemplate()
  9413 ms  0xc72 ret:0x7fa380694880
  9413 ms  0xc72 SECKEY_DestroyPrivateKey()
  9413 ms  0xc72 privk:0x7fa383cd3820::7fa383cd3820  a0 f6 7a 7e                                      ..z~
  9413 ms  0xc72 privk:0x7fa383cd3820::7fa383cd3820  e5 e5 e5 e5                                      ....
  9413 ms  0xc72 PK11_Encrypt()
  9413 ms  0xc72 symkey:0x7fa380694a00
           /* TID 0xc7a */
  9423 ms  0xc7a PR_Close()
  9423 ms  0xc7a fd:0x7fa37e76c280
           /* TID 0xc72 */
  9424 ms  SECKEY_ECParamsToKeySize()
  9424 ms  0xc72 ret:0x100
  9424 ms  0xc72 SECKEY_CreateECPrivateKey()
  9424 ms  0xc72 cx:0x7fa383742468
  9424 ms     | 0xc72 EC_ValidatePublicKey()
  9426 ms     | 0xc72 ret:0x0
  9426 ms  0xc72 ret:0x7fa383cd5020::7fa383cd5020  c0 f4 7a 7e                                      ..z~
  9426 ms  0xc72 PK11_PubDeriveWithKDF()
  9426 ms  0xc72 seckey:0x7fa383cd5020
  9426 ms     | 0xc72 EC_ValidatePublicKey()
  9427 ms     | 0xc72 ret:0x0
  9433 ms  0xc72 ret:0x7fa37eca6b00
  9433 ms  0xc72 PK11_DeriveWithFlags()
  9433 ms  0xc72 basekey:0x7fa37eca6b00
  9433 ms     | 0xc72 PK11_DeriveWithTemplate()
  9433 ms  0xc72 ret:0x7fa37ecae980
  9433 ms  0xc72 PK11_Derive()
  9433 ms  0xc72 basekey:0x7fa37ecae980
  9433 ms     | 0xc72 PK11_DeriveWithTemplate()
  9433 ms  0xc72 ret:0x7fa380694b00
  9433 ms  0xc72 SECKEY_DestroyPrivateKey()
  9433 ms  0xc72 privk:0x7fa383cd5020::7fa383cd5020  c0 f4 7a 7e                                      ..z~
  9433 ms  0xc72 privk:0x7fa383cd5020::7fa383cd5020  e5 e5 e5 e5                                      ....
  9433 ms  0xc72 PK11_Encrypt()
  9433 ms  0xc72 symkey:0x7fa380694c80
  9434 ms  SECKEY_ECParamsToKeySize()
  9434 ms  0xc72 ret:0x100
  9434 ms  0xc72 SECKEY_CreateECPrivateKey()
  9434 ms  0xc72 cx:0x7fa383742608
  9434 ms     | 0xc72 EC_ValidatePublicKey()
  9436 ms     | 0xc72 ret:0x0
  9436 ms  0xc72 ret:0x7fa383cd8020::7fa383cd8020  40 f7 7a 7e                                      @.z~
  9436 ms  0xc72 PK11_PubDeriveWithKDF()
  9436 ms  0xc72 seckey:0x7fa383cd8020
  9436 ms     | 0xc72 EC_ValidatePublicKey()
  9442 ms     | 0xc72 ret:0x0
  9444 ms  0xc72 ret:0x7fa37eca6b00
  9444 ms  0xc72 PK11_DeriveWithFlags()
  9444 ms  0xc72 basekey:0x7fa37eca6b00
  9444 ms     | 0xc72 PK11_DeriveWithTemplate()
  9444 ms  0xc72 ret:0x7fa380694d80
  9444 ms  0xc72 PK11_Derive()
  9444 ms  0xc72 basekey:0x7fa380694d80
  9444 ms     | 0xc72 PK11_DeriveWithTemplate()
  9444 ms  0xc72 ret:0x7fa380695000
  9444 ms  0xc72 SECKEY_DestroyPrivateKey()
  9444 ms  0xc72 privk:0x7fa383cd8020::7fa383cd8020  40 f7 7a 7e                                      @.z~
  9444 ms  0xc72 privk:0x7fa383cd8020::7fa383cd8020  e5 e5 e5 e5                                      ....
  9444 ms  0xc72 PK11_Encrypt()
  9444 ms  0xc72 symkey:0x7fa380695180
  9448 ms  0xc72 PK11_Encrypt()
  9448 ms  0xc72 symkey:0x7fa380681580
           /* TID 0xc7a */
  9456 ms  0xc7a PR_Close()
  9456 ms  0xc7a fd:0x7fa36c169250
           /* TID 0xc72 */
  9462 ms  0xc72 PK11_Encrypt()
  9462 ms  0xc72 symkey:0x7fa36c1e8d80
  9466 ms  0xc72 PK11_Encrypt()
  9466 ms  0xc72 symkey:0x7fa37eca7000
  9469 ms  0xc72 PK11_Encrypt()
  9469 ms  0xc72 symkey:0x7fa36c1e8d80
  9472 ms  0xc72 PK11_Encrypt()
  9472 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  9479 ms  0xc7a PR_Close()
  9479 ms  0xc7a fd:0x7fa37de71a00
  9479 ms  0xc7a PR_Close()
  9479 ms  0xc7a fd:0x7fa3835fc070
  9479 ms  0xc7a PR_Close()
  9479 ms  0xc7a fd:0x7fa3835fc430
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa37de71a00
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc070
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc430
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc4f0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc550
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc5e0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc670
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fc6d0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3835fce50
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783910
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783970
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3837839d0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783a90
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783af0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783b80
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783c40
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783d00
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783e80
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383783f10
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383808040
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383808160
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa3838081f0
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383808400
  9480 ms  0xc7a PR_Close()
  9480 ms  0xc7a fd:0x7fa383808700
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa383808940
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa3838089d0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa383808c70
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a040
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a130
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a1f0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a250
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a2b0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a340
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a3d0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a4c0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a550
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a5e0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa38382a9a0
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa3838be040
  9481 ms  0xc7a PR_Close()
  9481 ms  0xc7a fd:0x7fa3838be1f0
           /* TID 0xc72 */
  9483 ms  0xc72 PK11_Encrypt()
  9483 ms  0xc72 symkey:0x7fa37f8ca580
           /* TID 0xc7a */
  9521 ms  0xc7a PR_Close()
  9521 ms  0xc7a fd:0x7fa37e76c6d0
           /* TID 0xc72 */
  9524 ms  0xc72 PK11_Encrypt()
  9524 ms  0xc72 symkey:0x7fa37eca7000
  9524 ms  0xc72 PK11_Encrypt()
  9524 ms  0xc72 symkey:0x7fa37eca7000
           /* TID 0xc7a */
  9556 ms  0xc7a PR_Close()
  9556 ms  0xc7a fd:0x7fa3834f8f40
  9630 ms  0xc7a PR_Close()
  9630 ms  0xc7a fd:0x7fa37d3f9130
  9633 ms  0xc7a PR_Close()
  9633 ms  0xc7a fd:0x7fa3834f8f40
  9633 ms  0xc7a PR_Close()
  9633 ms  0xc7a fd:0x7fa3835fc130
  9633 ms  0xc7a PR_Close()
  9633 ms  0xc7a fd:0x7fa3835fc250
  9633 ms  0xc7a PR_Close()
  9633 ms  0xc7a fd:0x7fa3835fc5e0
  9633 ms  0xc7a PR_Close()
  9633 ms  0xc7a fd:0x7fa3835fc850
  9659 ms  0xc7a PR_Close()
  9659 ms  0xc7a fd:0x7fa38315b550
           /* TID 0xc72 */
  9693 ms  0xc72 PK11_Encrypt()
  9693 ms  0xc72 symkey:0x7fa36c1e8d80
  9694 ms  0xc72 PK11_Encrypt()
  9694 ms  0xc72 symkey:0x7fa36c1e8d80
  9696 ms  0xc72 PK11_Encrypt()
  9696 ms  0xc72 symkey:0x7fa36c1e8d80
  9698 ms  0xc72 PK11_Encrypt()
  9698 ms  0xc72 symkey:0x7fa36c1e8d80
  9699 ms  0xc72 PK11_Encrypt()
  9699 ms  0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  9701 ms  0xc7a PR_Close()
  9701 ms  0xc7a fd:0x7fa3835fc0a0
           /* TID 0xc72 */
  9705 ms  0xc72 PR_Close()
  9705 ms  0xc72 fd:0x7fa37e76c790
           /* TID 0xc67 */
  9707 ms  0xc67 EC_ValidatePublicKey()
  9709 ms  0xc67 ret:0x0
  9709 ms  0xc67 EC_ValidatePublicKey()
  9710 ms  0xc67 ret:0x0
  9710 ms  0xc67 EC_ValidatePublicKey()
  9712 ms  0xc67 ret:0x0
  9712 ms  0xc67 EC_ValidatePublicKey()
  9713 ms  0xc67 ret:0x0
  9713 ms  0xc67 EC_ValidatePublicKey()
  9714 ms  0xc67 ret:0x0
  9714 ms  0xc67 EC_ValidatePublicKey()
  9716 ms  0xc67 ret:0x0
  9716 ms  0xc67 EC_ValidatePublicKey()
  9717 ms  0xc67 ret:0x0
  9717 ms  0xc67 EC_ValidatePublicKey()
  9739 ms  0xc67 ret:0x0
  9739 ms  0xc67 EC_ValidatePublicKey()
  9741 ms  0xc67 ret:0x0
  9741 ms  0xc67 EC_ValidatePublicKey()
  9742 ms  0xc67 ret:0x0
           /* TID 0xc72 */
  9742 ms  0xc72 PR_Close()
  9742 ms  0xc72 fd:0x7fa37f3a5fd0
  9743 ms  0xc72 PR_Close()
  9743 ms  0xc72 fd:0x7fa37f856be0
  9743 ms  0xc72 PR_Close()
  9743 ms  0xc72 fd:0x7fa36c1b24f0
  9743 ms     | 0xc72 PK11_Encrypt()
  9743 ms     | 0xc72 symkey:0x7fa380687600
  9743 ms  0xc72 PR_Close()
  9743 ms  0xc72 fd:0x7fa36c1b2af0
  9743 ms     | 0xc72 PK11_Encrypt()
  9743 ms     | 0xc72 symkey:0x7fa380687300
  9744 ms  0xc72 PR_Close()
  9744 ms  0xc72 fd:0x7fa36c32f6d0
  9744 ms     | 0xc72 PK11_Encrypt()
  9744 ms     | 0xc72 symkey:0x7fa380681580
  9744 ms  0xc72 PR_Close()
  9744 ms  0xc72 fd:0x7fa36c32f730
  9744 ms     | 0xc72 PK11_Encrypt()
  9744 ms     | 0xc72 symkey:0x7fa380680980
  9744 ms  0xc72 PR_Close()
  9744 ms  0xc72 fd:0x7fa37d3f9670
  9744 ms     | 0xc72 PK11_Encrypt()
  9744 ms     | 0xc72 symkey:0x7fa380669980
  9744 ms  0xc72 PR_Close()
  9744 ms  0xc72 fd:0x7fa37d3f9730
  9744 ms     | 0xc72 PK11_Encrypt()
  9744 ms     | 0xc72 symkey:0x7fa380669200
  9746 ms  0xc72 PR_Close()
  9746 ms  0xc72 fd:0x7fa37d3f9e80
  9746 ms     | 0xc72 PK11_Encrypt()
  9746 ms     | 0xc72 symkey:0x7fa380668680
  9746 ms  0xc72 PR_Close()
  9746 ms  0xc72 fd:0x7fa37d3f9fd0
  9746 ms     | 0xc72 PK11_Encrypt()
  9746 ms     | 0xc72 symkey:0x7fa380668200
  9747 ms  0xc72 PR_Close()
  9747 ms  0xc72 fd:0x7fa37de1d310
  9747 ms     | 0xc72 PK11_Encrypt()
  9747 ms     | 0xc72 symkey:0x7fa38064cc80
  9747 ms  0xc72 PR_Close()
  9747 ms  0xc72 fd:0x7fa37de1d460
  9747 ms     | 0xc72 PK11_Encrypt()
  9747 ms     | 0xc72 symkey:0x7fa38064c080
  9747 ms  0xc72 PR_Close()
  9747 ms  0xc72 fd:0x7fa37de1d850
  9747 ms     | 0xc72 PK11_Encrypt()
  9747 ms     | 0xc72 symkey:0x7fa37f8ca580
  9747 ms  0xc72 PR_Close()
  9747 ms  0xc72 fd:0x7fa37de1de50
  9747 ms     | 0xc72 PK11_Encrypt()
  9747 ms     | 0xc72 symkey:0x7fa37f87a000
  9747 ms  0xc72 PR_Close()
  9747 ms  0xc72 fd:0x7fa37de71040
  9747 ms     | 0xc72 PK11_Encrypt()
  9747 ms     | 0xc72 symkey:0x7fa37f879a00
  9748 ms  0xc72 PR_Close()
  9748 ms  0xc72 fd:0x7fa37de716a0
  9748 ms     | 0xc72 PK11_Encrypt()
  9748 ms     | 0xc72 symkey:0x7fa37f3cd900
  9748 ms  0xc72 PR_Close()
  9748 ms  0xc72 fd:0x7fa37de71a60
  9748 ms     | 0xc72 PK11_Encrypt()
  9748 ms     | 0xc72 symkey:0x7fa37f3ccf80
  9748 ms  0xc72 PR_Close()
  9748 ms  0xc72 fd:0x7fa37de71d90
  9748 ms     | 0xc72 PK11_Encrypt()
  9748 ms     | 0xc72 symkey:0x7fa37f3adb00
  9748 ms  0xc72 PR_Close()
  9748 ms  0xc72 fd:0x7fa36c32f7f0
  9748 ms     | 0xc72 PK11_Encrypt()
  9748 ms     | 0xc72 symkey:0x7fa37e8c5380
           /* TID 0xcc0 */
  9748 ms  0xcc0 PR_Close()
  9748 ms  0xcc0 fd:0x7fa36c169430
  9748 ms  0xcc0 PR_Close()
  9748 ms  0xcc0 fd:0x7fa36c169430
           /* TID 0xc72 */
  9750 ms  0xc72 PR_Close()
  9750 ms  0xc72 fd:0x7fa36c169ca0
  9750 ms  0xc72 PR_Close()
  9750 ms  0xc72 fd:0x7fa36c1b25e0
  9750 ms     | 0xc72 PK11_Encrypt()
  9750 ms     | 0xc72 symkey:0x7fa36c1e7d00
  9750 ms  0xc72 PR_Close()
  9750 ms  0xc72 fd:0x7fa36c1b26a0
  9750 ms     | 0xc72 PK11_Encrypt()
  9750 ms     | 0xc72 symkey:0x7fa383158700
  9751 ms  0xc72 PR_Close()
  9751 ms  0xc72 fd:0x7fa36c169f10
  9751 ms     | 0xc72 PK11_Encrypt()
  9751 ms     | 0xc72 symkey:0x7fa36c1e7a80
  9751 ms  0xc72 PR_Close()
  9751 ms  0xc72 fd:0x7fa36c169cd0
  9751 ms     | 0xc72 PK11_Encrypt()
  9751 ms     | 0xc72 symkey:0x7fa36c74e480
  9751 ms  0xc72 PR_Close()
  9751 ms  0xc72 fd:0x7fa36c169fd0
  9751 ms     | 0xc72 PK11_Encrypt()
  9751 ms     | 0xc72 symkey:0x7fa36c74e180
  9751 ms  0xc72 PR_Close()
  9751 ms  0xc72 fd:0x7fa36c1b2400
  9751 ms     | 0xc72 PK11_Encrypt()
  9751 ms     | 0xc72 symkey:0x7fa36c437280
  9751 ms  0xc72 PR_Close()
  9751 ms  0xc72 fd:0x7fa38067fd00
  9752 ms  0xc72 PR_Close()
  9752 ms  0xc72 fd:0x7fa38067f880
  9752 ms     | 0xc72 PK11_Encrypt()
  9752 ms     | 0xc72 symkey:0x7fa380681180
  9757 ms  0xc72 PR_Close()
  9757 ms  0xc72 fd:0x7fa36c420220
  9757 ms     | 0xc72 PK11_Encrypt()
  9757 ms     | 0xc72 symkey:0x7fa36c7f9b00
  9757 ms  0xc72 PR_Close()
  9757 ms  0xc72 fd:0x7fa36c420070
  9757 ms  0xc72 PR_Close()
  9757 ms  0xc72 fd:0x7fa36c793580
  9757 ms     | 0xc72 PK11_Encrypt()
  9757 ms     | 0xc72 symkey:0x7fa36c7f8c80
  9758 ms  0xc72 PR_Close()
  9758 ms  0xc72 fd:0x7fa3870d0d00
  9758 ms  0xc72 PR_Close()
  9758 ms  0xc72 fd:0x7fa3870d0250
  9758 ms     | 0xc72 PK11_Encrypt()
  9758 ms     | 0xc72 symkey:0x7fa37e7b6500
  9758 ms  0xc72 PR_Close()
  9758 ms  0xc72 fd:0x7fa37f856b80
  9758 ms     | 0xc72 PK11_Encrypt()
  9758 ms     | 0xc72 symkey:0x7fa37d1f3e00
  9758 ms  0xc72 PR_Close()
  9758 ms  0xc72 fd:0x7fa37d3f9580
  9758 ms     | 0xc72 PK11_Encrypt()
  9758 ms     | 0xc72 symkey:0x7fa37de38e00
  9758 ms  0xc72 PR_Close()
  9758 ms  0xc72 fd:0x7fa36c78df70
  9758 ms     | 0xc72 PK11_Encrypt()
  9758 ms     | 0xc72 symkey:0x7fa37de38300
  9759 ms  0xc72 PR_Close()
  9759 ms  0xc72 fd:0x7fa36c793040
  9759 ms     | 0xc72 PK11_Encrypt()
  9759 ms     | 0xc72 symkey:0x7fa37d3f8d80
  9759 ms  0xc72 PR_Close()
  9759 ms  0xc72 fd:0x7fa36c7930d0
  9759 ms     | 0xc72 PK11_Encrypt()
  9759 ms     | 0xc72 symkey:0x7fa37d3f7300
  9759 ms  0xc72 PR_Close()
  9759 ms  0xc72 fd:0x7fa36c1b27c0
  9759 ms     | 0xc72 PK11_Encrypt()
  9759 ms     | 0xc72 symkey:0x7fa37d3ef500
  9759 ms  0xc72 PR_Close()
  9759 ms  0xc72 fd:0x7fa36c7931f0
  9759 ms     | 0xc72 PK11_Encrypt()
  9759 ms     | 0xc72 symkey:0x7fa37d3ee700
  9759 ms  0xc72 PR_Close()
  9759 ms  0xc72 fd:0x7fa36c7932b0
  9759 ms     | 0xc72 PK11_Encrypt()
  9759 ms     | 0xc72 symkey:0x7fa37d3ee380
  9760 ms  0xc72 PR_Close()
  9760 ms  0xc72 fd:0x7fa36c7933d0
  9760 ms     | 0xc72 PK11_Encrypt()
  9760 ms     | 0xc72 symkey:0x7fa37d3ee080
  9760 ms  0xc72 PR_Close()
  9760 ms  0xc72 fd:0x7fa36c793220
  9760 ms     | 0xc72 PK11_Encrypt()
  9760 ms     | 0xc72 symkey:0x7fa37d1f3480
  9760 ms  0xc72 PR_Close()
  9760 ms  0xc72 fd:0x7fa36c1b2430
  9760 ms     | 0xc72 PK11_Encrypt()
  9760 ms     | 0xc72 symkey:0x7fa36c7fd000
  9769 ms  0xc72 PR_Close()
  9769 ms  0xc72 fd:0x7fa36c169070
  9769 ms     | 0xc72 PK11_Encrypt()
  9769 ms     | 0xc72 symkey:0x7fa36c7fd300
  9770 ms  0xc72 SSL_ImportFD()
  9770 ms  0xc72 ret:0x7fa36c169370
  9770 ms  0xc72 SSL_AuthCertificateHook()
  9770 ms  0xc72 fd:0x7fa36c169370
  9770 ms  0xc72 ret:0x0
  9770 ms  0xc72 PR_Connect()
  9770 ms  0xc72 fd:0x7fa36c169370
           /* TID 0xc7a */
  9771 ms  0xc7a PR_Close()
  9771 ms  0xc7a fd:0x7fa36c169070
           /* TID 0xc72 */
  9782 ms  0xc72 SSL_ImportFD()
  9782 ms  0xc72 ret:0x7fa36c24d6d0
  9782 ms  0xc72 SSL_AuthCertificateHook()
  9782 ms  0xc72 fd:0x7fa36c24d6d0
  9782 ms  0xc72 ret:0x0
  9782 ms  0xc72 PR_Connect()
  9782 ms  0xc72 fd:0x7fa36c24d6d0
           /* TID 0xc7a */
  9784 ms  0xc7a PR_Close()
  9784 ms  0xc7a fd:0x7fa36c32f430
           /* TID 0xc67 */
  9792 ms  0xc67 PR_Close()
  9792 ms  0xc67 fd:0x7fa37de1d8b0
  9792 ms  0xc67 PR_Close()
  9792 ms  0xc67 fd:0x7fa36c32f670
  9793 ms  0xc67 PR_Close()
  9793 ms  0xc67 fd:0x7fa36c32f790
  9793 ms  0xc67 PR_Close()
  9793 ms  0xc67 fd:0x7fa36c32f670
  9793 ms  0xc67 PR_Close()
  9793 ms  0xc67 fd:0x7fa36c32f790
  9793 ms  0xc67 PR_Close()
  9793 ms  0xc67 fd:0x7fa36c32f670
           /* TID 0xcd8 */
  9802 ms  0xcd8 PR_Close()
  9802 ms  0xcd8 fd:0x7fa36c32f670
           /* TID 0xc67 */
  9827 ms  0xc67 PR_Close()
  9827 ms  0xc67 fd:0x7fa36c32f790
  9827 ms  0xc67 PR_Close()
  9827 ms  0xc67 fd:0x7fa36c78dfd0
  9830 ms  0xc67 PR_Close()
  9830 ms  0xc67 fd:0x7fa36c32f790
  9830 ms  0xc67 PR_Close()
  9830 ms  0xc67 fd:0x7fa36c78dfd0
  9831 ms  0xc67 PR_Close()
  9831 ms  0xc67 fd:0x7fa3884c89a0
  9831 ms  0xc67 PR_Close()
  9831 ms  0xc67 fd:0x7fa3884c88b0
  9831 ms  0xc67 PR_Close()
  9831 ms  0xc67 fd:0x7fa3884c8a60
  9835 ms  0xc67 PR_Close()
  9835 ms  0xc67 fd:0x7fa36c793040
  9836 ms  0xc67 PR_Close()
  9836 ms  0xc67 fd:0x7fa36c793040
           /* TID 0xc72 */
  9838 ms  0xc72 SECKEY_CreateECPrivateKey()
  9838 ms  0xc72 cx:0x7fa36c405588
  9838 ms     | 0xc72 EC_ValidatePublicKey()
  9838 ms     | 0xc72 ret:0x0
  9838 ms  0xc72 ret:0x7fa36c44c820::7fa36c44c820  40 1c eb 7e                                      @..~
  9838 ms  0xc72 SECKEY_CreateECPrivateKey()
  9838 ms  0xc72 cx:0x7fa36c405588
  9839 ms     | 0xc72 EC_ValidatePublicKey()
  9840 ms     | 0xc72 ret:0x0
  9840 ms  0xc72 ret:0x7fa36c462820::7fa36c462820  b0 e0 ef 7e                                      ...~
           /* TID 0xc67 */
  9842 ms  0xc67 PR_Close()
  9842 ms  0xc67 fd:0x7fa36c32f790
  9842 ms  0xc67 PR_Close()
  9842 ms  0xc67 fd:0x7fa36c7930a0
  9843 ms  0xc67 PR_Close()
  9843 ms  0xc67 fd:0x7fa36c1691c0
  9843 ms  0xc67 PR_Close()
  9843 ms  0xc67 fd:0x7fa36c169070
           /* TID 0xc72 */
  9846 ms  0xc72 SECKEY_CreateECPrivateKey()
  9846 ms  0xc72 cx:0x7fa36c405728
  9846 ms     | 0xc72 EC_ValidatePublicKey()
  9846 ms     | 0xc72 ret:0x0
  9846 ms  0xc72 ret:0x7fa36c76a820::7fa36c76a820  a0 86 c0 7e                                      ...~
  9846 ms  0xc72 SECKEY_CreateECPrivateKey()
  9846 ms  0xc72 cx:0x7fa36c405728
  9847 ms     | 0xc72 EC_ValidatePublicKey()
  9848 ms     | 0xc72 ret:0x0
  9848 ms  0xc72 ret:0x7fa36c76c820::7fa36c76c820  80 88 c0 7e                                      ...~
           /* TID 0xc67 */
  9851 ms  0xc67 PR_Close()
  9851 ms  0xc67 fd:0x7fa36c1b2ee0
  9853 ms  0xc67 PR_Close()
  9853 ms  0xc67 fd:0x7fa36c1b2ee0
  9855 ms  0xc67 PR_Close()
  9855 ms  0xc67 fd:0x7fa36c1691c0
  9855 ms  0xc67 PR_Close()
  9855 ms  0xc67 fd:0x7fa36c793160
           /* TID 0xc72 */
  9855 ms  0xc72 PK11_Encrypt()
  9855 ms  0xc72 symkey:0x7fa37eca7000
  9858 ms  0xc72 PR_Close()
  9858 ms  0xc72 fd:0x7fa37d3f9790
  9858 ms     | 0xc72 PK11_Encrypt()
  9858 ms     | 0xc72 symkey:0x7fa37eca7000
           /* TID 0xc67 */
  9859 ms  0xc67 PR_Close()
  9859 ms  0xc67 fd:0x7fa36c1691c0
  9859 ms  0xc67 PR_Close()
  9859 ms  0xc67 fd:0x7fa36c1692e0
  9862 ms  0xc67 PR_Close()
  9862 ms  0xc67 fd:0x7fa36c32f160
  9863 ms  0xc67 PR_Close()
  9863 ms  0xc67 fd:0x7fa36c32f160
  9874 ms  0xc67 PR_Close()
  9874 ms  0xc67 fd:0x7fa36c793190
  9875 ms  0xc67 PR_Close()
  9875 ms  0xc67 fd:0x7fa36c793190
  9877 ms  0xc67 PR_Close()
  9877 ms  0xc67 fd:0x7fa36c7931f0
           /* TID 0xcd8 */
  9884 ms  0xcd8 PR_Close()
  9884 ms  0xcd8 fd:0x7fa36c78daf0
           /* TID 0xc67 */
  9886 ms  0xc67 PR_Close()
  9886 ms  0xc67 fd:0x7fa36c1691c0
           /* TID 0xcd8 */
  9886 ms  0xcd8 PR_Close()
  9886 ms  0xcd8 fd:0x7fa36c78daf0
           /* TID 0xc67 */
  9886 ms  0xc67 PR_Close()
  9886 ms  0xc67 fd:0x7fa36c78dd90
           /* TID 0xcd8 */
  9888 ms  0xcd8 PR_Close()
  9888 ms  0xcd8 fd:0x7fa36c78dc10
           /* TID 0xc7a */
  9893 ms  0xc7a PR_Close()
  9893 ms  0xc7a fd:0x7fa37d3e4a90
  9894 ms  0xc7a PR_Close()
  9894 ms  0xc7a fd:0x7fa37d3e4a90
           /* TID 0xc72 */
  9896 ms  0xc72 PK11_Encrypt()
  9896 ms  0xc72 symkey:0x7fa36c1e8d80
  9896 ms  0xc72 PR_Close()
  9896 ms  0xc72 fd:0x7fa36c169790
  9896 ms     | 0xc72 PK11_Encrypt()
  9896 ms     | 0xc72 symkey:0x7fa36c1e8d80
           /* TID 0xc7a */
  9897 ms  0xc7a PR_Close()
  9897 ms  0xc7a fd:0x7fa36c1547c0
  9898 ms  0xc7a PR_Close()
  9898 ms  0xc7a fd:0x7fa36c1547c0
  9901 ms  0xc7a PR_Close()
  9901 ms  0xc7a fd:0x7fa37e76ce20
           /* TID 0xcd8 */
  9934 ms  0xcd8 PR_Close()
  9934 ms  0xcd8 fd:0x7fa36c1544f0
           /* TID 0xc6c */
  9944 ms  0xc6c PR_Close()
  9944 ms  0xc6c fd:0x7fa3870fcdf0
           /* TID 0xcd8 */
  9946 ms  0xcd8 PR_Close()
  9946 ms  0xcd8 fd:0x7fa36c154af0
           /* TID 0xc67 */
  9958 ms  0xc67 PR_Close()
  9958 ms  0xc67 fd:0x7fa36c1691c0
  9958 ms  0xc67 PR_Close()
  9958 ms  0xc67 fd:0x7fa36c154100
           /* TID 0xc6c */
  9959 ms  0xc6c PR_Close()
  9959 ms  0xc6c fd:0x7fa383808820
           /* TID 0xc72 */
 11235 ms  SECKEY_ECParamsToKeySize()
 11235 ms  0xc72 ret:0xff
 11235 ms  0xc72 SECKEY_CreateECPrivateKey()
 11235 ms  0xc72 cx:0x7fa36c405588
 11236 ms     | 0xc72 EC_ValidatePublicKey()
 11236 ms     | 0xc72 ret:0x0
 11236 ms  0xc72 ret:0x7fa36c773020::7fa36c773020  b0 ea 32 6c                                      ..2l
 11236 ms  0xc72 PK11_PubDeriveWithKDF()
 11236 ms  0xc72 seckey:0x7fa36c773020
 11236 ms     | 0xc72 EC_ValidatePublicKey()
 11236 ms     | 0xc72 ret:0x0
 11237 ms  0xc72 ret:0x7fa36c1e8c00
 11237 ms  0xc72 PK11_DeriveWithFlags()
 11237 ms  0xc72 basekey:0x7fa36c1e8c00
 11237 ms     | 0xc72 PK11_DeriveWithTemplate()
 11237 ms  0xc72 ret:0x7fa36c1e8b80
 11237 ms  0xc72 PK11_Derive()
 11237 ms  0xc72 basekey:0x7fa36c1e8b80
 11237 ms     | 0xc72 PK11_DeriveWithTemplate()
 11237 ms  0xc72 ret:0x7fa37eca6c80
 11237 ms  0xc72 SECKEY_DestroyPrivateKey()
 11237 ms  0xc72 privk:0x7fa36c773020::7fa36c773020  b0 ea 32 6c                                      ..2l
 11237 ms  0xc72 privk:0x7fa36c773020::7fa36c773020  e5 e5 e5 e5                                      ....
 11237 ms  0xc72 PK11_Encrypt()
 11237 ms  0xc72 symkey:0x7fa36c1e8c80
 11240 ms  0xc72 SSL_AuthCertificateComplete()
 11240 ms  0xc72 fd:0x7fa38068dd30
 11240 ms  0xc72 err:0x0
 11240 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11240 ms     | 0xc72 privk:0x7fa383703820::7fa383703820  30 d8 3d 7d                                      0.=}
 11240 ms     | 0xc72 privk:0x7fa383703820::7fa383703820  e5 e5 e5 e5                                      ....
 11240 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11240 ms     | 0xc72 privk:0x7fa3835b9020::7fa3835b9020  b0 0f 75 6c                                      ..ul
 11241 ms     | 0xc72 privk:0x7fa3835b9020::7fa3835b9020  e5 e5 e5 e5                                      ....
 11241 ms  0xc72 SSL_AuthCertificateComplete()
 11241 ms  0xc72 fd:0x7fa38315bdc0
 11241 ms  0xc72 err:0x0
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa3838e2020::7fa3838e2020  80 cd e0 7d                                      ...}
 11241 ms     | 0xc72 privk:0x7fa3838e2020::7fa3838e2020  e5 e5 e5 e5                                      ....
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa3838dc020::7fa3838dc020  70 c9 e0 7d                                      p..}
 11241 ms     | 0xc72 privk:0x7fa3838dc020::7fa3838dc020  e5 e5 e5 e5                                      ....
 11241 ms  0xc72 SSL_AuthCertificateComplete()
 11241 ms  0xc72 fd:0x7fa37de1db50
 11241 ms  0xc72 err:0x0
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa383ca6020::7fa383ca6020  00 21 71 7e                                      .!q~
 11241 ms     | 0xc72 privk:0x7fa383ca6020::7fa383ca6020  e5 e5 e5 e5                                      ....
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa383ca3820::7fa383ca3820  c0 ce e0 7d                                      ...}
 11241 ms     | 0xc72 privk:0x7fa383ca3820::7fa383ca3820  e5 e5 e5 e5                                      ....
 11241 ms  0xc72 SSL_AuthCertificateComplete()
 11241 ms  0xc72 fd:0x7fa37eef83a0
 11241 ms  0xc72 err:0x0
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa383cab020::7fa383cab020  40 27 71 7e                                      @'q~
 11241 ms     | 0xc72 privk:0x7fa383cab020::7fa383cab020  e5 e5 e5 e5                                      ....
 11241 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11241 ms     | 0xc72 privk:0x7fa383ca8820::7fa383ca8820  d0 23 71 7e                                      .#q~
 11241 ms     | 0xc72 privk:0x7fa383ca8820::7fa383ca8820  e5 e5 e5 e5                                      ....
 11241 ms  0xc72 SSL_AuthCertificateComplete()
 11241 ms  0xc72 fd:0x7fa38315bfa0
 11241 ms  0xc72 err:0x0
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa38370f820::7fa38370f820  60 80 76 7d                                      `.v}
 11242 ms     | 0xc72 privk:0x7fa38370f820::7fa38370f820  e5 e5 e5 e5                                      ....
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa383708820::7fa383708820  50 db 3d 7d                                      P.=}
 11242 ms     | 0xc72 privk:0x7fa383708820::7fa383708820  e5 e5 e5 e5                                      ....
 11242 ms  0xc72 SSL_AuthCertificateComplete()
 11242 ms  0xc72 fd:0x7fa383432430
 11242 ms  0xc72 err:0x0
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa3838d5020::7fa3838d5020  50 c1 e0 7d                                      P..}
 11242 ms     | 0xc72 privk:0x7fa3838d5020::7fa3838d5020  e5 e5 e5 e5                                      ....
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa3838cc820::7fa3838cc820  d0 83 76 7d                                      ..v}
 11242 ms     | 0xc72 privk:0x7fa3838cc820::7fa3838cc820  e5 e5 e5 e5                                      ....
 11242 ms  0xc72 PR_Close()
 11242 ms  0xc72 fd:0x7fa36c169370
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa36c462820::7fa36c462820  b0 e0 ef 7e                                      ...~
 11242 ms     | 0xc72 privk:0x7fa36c462820::7fa36c462820  e5 e5 e5 e5                                      ....
 11242 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11242 ms     | 0xc72 privk:0x7fa36c44c820::7fa36c44c820  40 1c eb 7e                                      @..~
 11242 ms     | 0xc72 privk:0x7fa36c44c820::7fa36c44c820  e5 e5 e5 e5                                      ....
 11243 ms  0xc72 PR_Close()
 11243 ms  0xc72 fd:0x7fa36c24d6d0
 11243 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11243 ms     | 0xc72 privk:0x7fa36c76c820::7fa36c76c820  80 88 c0 7e                                      ...~
 11243 ms     | 0xc72 privk:0x7fa36c76c820::7fa36c76c820  e5 e5 e5 e5                                      ....
 11243 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11243 ms     | 0xc72 privk:0x7fa36c76a820::7fa36c76a820  a0 86 c0 7e                                      ...~
 11243 ms     | 0xc72 privk:0x7fa36c76a820::7fa36c76a820  e5 e5 e5 e5                                      ....
 11243 ms  0xc72 PR_Close()
 11243 ms  0xc72 fd:0x7fa37de1db50
 11243 ms     | 0xc72 PK11_Encrypt()
 11243 ms     | 0xc72 symkey:0x7fa380694c80
 11243 ms  0xc72 PR_Close()
 11243 ms  0xc72 fd:0x7fa38315bdc0
 11243 ms     | 0xc72 PK11_Encrypt()
 11243 ms     | 0xc72 symkey:0x7fa380694a00
 11243 ms  0xc72 PR_Close()
 11243 ms  0xc72 fd:0x7fa37de99250
 11243 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11243 ms     | 0xc72 privk:0x7fa3822ad020::7fa3822ad020  70 0e 75 6c                                      p.ul
 11244 ms     | 0xc72 privk:0x7fa3822ad020::7fa3822ad020  e5 e5 e5 e5                                      ....
 11244 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11244 ms     | 0xc72 privk:0x7fa37e7e5820::7fa37e7e5820  30 dd 3d 7d                                      0.=}
 11244 ms     | 0xc72 privk:0x7fa37e7e5820::7fa37e7e5820  e5 e5 e5 e5                                      ....
 11244 ms  0xc72 PR_Close()
 11244 ms  0xc72 fd:0x7fa36c154fa0
 11244 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11244 ms     | 0xc72 privk:0x7fa3876ef020::7fa3876ef020  40 8c c0 7e                                      @..~
 11244 ms     | 0xc72 privk:0x7fa3876ef020::7fa3876ef020  e5 e5 e5 e5                                      ....
 11244 ms     | 0xc72 SECKEY_DestroyPrivateKey()
 11244 ms     | 0xc72 privk:0x7fa3876eb820::7fa3876eb820  60 8a c0 7e                                      `..~
 11244 ms     | 0xc72 privk:0x7fa3876eb820::7fa3876eb820  e5 e5 e5 e5                                      ....
 11244 ms  0xc72 PR_Close()
 11244 ms  0xc72 fd:0x7fa383432430
 11244 ms     | 0xc72 PK11_Encrypt()
 11244 ms     | 0xc72 symkey:0x7fa380694700
 11246 ms  0xc72 PR_Close()
 11246 ms  0xc72 fd:0x7fa38315bfa0
 11246 ms     | 0xc72 PK11_Encrypt()
 11246 ms     | 0xc72 symkey:0x7fa380694400
 11246 ms  0xc72 PR_Close()
 11246 ms  0xc72 fd:0x7fa37eef83a0
 11246 ms     | 0xc72 PK11_Encrypt()
 11246 ms     | 0xc72 symkey:0x7fa380695180
 11246 ms  0xc72 PR_Close()
 11246 ms  0xc72 fd:0x7fa38068dd30
 11246 ms     | 0xc72 PK11_Encrypt()
 11246 ms     | 0xc72 symkey:0x7fa380694080
 11246 ms  0xc72 PR_Close()
 11246 ms  0xc72 fd:0x7fa37de1ddf0
           /* TID 0xcc0 */
 11247 ms  0xcc0 PR_Close()
 11247 ms  0xcc0 fd:0x7fa36c154e20
 11247 ms  0xcc0 PR_Close()
 11247 ms  0xcc0 fd:0x7fa36c154040
 11247 ms  0xcc0 PR_Close()
 11247 ms  0xcc0 fd:0x7fa36c154040
 11248 ms  0xcc0 PR_Close()
 11248 ms  0xcc0 fd:0x7fa36c154040
           /* TID 0xcd8 */
 11248 ms  0xcd8 PR_Close()
 11248 ms  0xcd8 fd:0x7fa36c154ac0
           /* TID 0xc7a */
 11251 ms  0xc7a PR_Close()
 11251 ms  0xc7a fd:0x7fa36c1b2880
 11251 ms  0xc7a PR_Close()
 11251 ms  0xc7a fd:0x7fa36c1b2970
           /* TID 0xc6c */
 11258 ms  0xc6c PR_Close()
 11258 ms  0xc6c fd:0x7fa37f3a55e0
           /* TID 0xc67 */
 11260 ms  0xc67 PR_Close()
 11260 ms  0xc67 fd:0x7fa36c154a60
 11260 ms  0xc67 PR_Close()
 11260 ms  0xc67 fd:0x7fa36c32f100
           /* TID 0xcd8 */
 11262 ms  0xcd8 PR_Close()
 11262 ms  0xcd8 fd:0x7fa36c32f190
 11264 ms  0xcd8 PR_Close()
 11264 ms  0xcd8 fd:0x7fa36c24da00
 11283 ms  0xcd8 PR_Close()
 11283 ms  0xcd8 fd:0x7fa36c154d00
 11285 ms  0xcd8 PR_Close()
 11285 ms  0xcd8 fd:0x7fa36c154d00
 11292 ms  0xcd8 PR_Close()
 11292 ms  0xcd8 fd:0x7fa36c1692b0
 11293 ms  0xcd8 PR_Close()
 11293 ms  0xcd8 fd:0x7fa36c169d30
 11302 ms  0xcd8 PR_Close()
 11302 ms  0xcd8 fd:0x7fa36c1b2490
 11307 ms  0xcd8 PR_Close()
 11307 ms  0xcd8 fd:0x7fa36c24d040
 11313 ms  0xcd8 PR_Close()
 11313 ms  0xcd8 fd:0x7fa36c24da00
 11322 ms  0xcd8 PR_Close()
 11322 ms  0xcd8 fd:0x7fa36c32f0a0
 11324 ms  0xcd8 PR_Close()
 11324 ms  0xcd8 fd:0x7fa36c32f0a0
           /* TID 0xc67 */
 14357 ms  0xc67 PR_Close()
 14357 ms  0xc67 fd:0x7fa36c154130
 14358 ms  0xc67 PR_Close()
 14358 ms  0xc67 fd:0x7fa36c154130
 14363 ms  0xc67 PR_Close()
 14363 ms  0xc67 fd:0x7fa3a58da130
 14363 ms  0xc67 PR_Close()
 14363 ms  0xc67 fd:0x7fa3a58da190
Process terminated
