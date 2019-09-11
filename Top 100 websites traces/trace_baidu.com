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
           /* TID 0x65d8 */
   106 ms  0x65d8 PR_Close()
   106 ms  0x65d8 fd:0x7f04430e5790
           /* TID 0x65d0 */
   284 ms  0x65d0 SSL_ImportFD()
   284 ms  0x65d0 ret:0x7f04430f0370
   284 ms  0x65d0 SSL_AuthCertificateHook()
   284 ms  0x65d0 fd:0x7f04430f0370
   284 ms  0x65d0 ret:0x0
   285 ms  0x65d0 PR_Connect()
   285 ms  0x65d0 fd:0x7f04430f0370
   503 ms  0x65d0 SECKEY_CreateECPrivateKey()
   503 ms  0x65d0 cx:0x7f04430e8ae8
   505 ms     | 0x65d0 EC_ValidatePublicKey()
   506 ms     | 0x65d0 ret:0x0
   506 ms  0x65d0 ret:0x7f043235f020::7f043235f020  40 7c 3c 32                                      @|<2
   506 ms  0x65d0 SECKEY_CreateECPrivateKey()
   506 ms  0x65d0 cx:0x7f04430e8ae8
   508 ms     | 0x65d0 EC_ValidatePublicKey()
   513 ms     | 0x65d0 ret:0x0
   513 ms  0x65d0 ret:0x7f0432361020::7f0432361020  20 7e 3c 32                                       ~<2
           /* TID 0x6636 */
   642 ms  0x6636 PR_Close()
   642 ms  0x6636 fd:0x7f04430f0ca0
   645 ms  0x6636 PR_Close()
   645 ms  0x6636 fd:0x7f04430f0ca0
           /* TID 0x65d0 */
   737 ms  SECKEY_ECParamsToKeySize()
   737 ms  0x65d0 ret:0x100
   737 ms  0x65d0 SECKEY_CreateECPrivateKey()
   737 ms  0x65d0 cx:0x7f04430e8ae8
   739 ms     | 0x65d0 EC_ValidatePublicKey()
   742 ms     | 0x65d0 ret:0x0
   742 ms  0x65d0 ret:0x7f043236a020::7f043236a020  80 c8 00 32                                      ...2
   743 ms  0x65d0 PK11_PubDeriveWithKDF()
   743 ms  0x65d0 seckey:0x7f043236a020
   743 ms     | 0x65d0 EC_ValidatePublicKey()
   746 ms     | 0x65d0 ret:0x0
   750 ms  0x65d0 ret:0x7f0444ae8680
   750 ms  0x65d0 PK11_DeriveWithFlags()
   750 ms  0x65d0 basekey:0x7f0444ae8680
   750 ms     | 0x65d0 PK11_DeriveWithTemplate()
   750 ms  0x65d0 ret:0x7f04323fba80
   750 ms  0x65d0 PK11_Derive()
   750 ms  0x65d0 basekey:0x7f04323fba80
   750 ms     | 0x65d0 PK11_DeriveWithTemplate()
   751 ms  0x65d0 ret:0x7f04323fbb80
   751 ms  0x65d0 SECKEY_DestroyPrivateKey()
   751 ms  0x65d0 privk:0x7f043236a020::7f043236a020  80 c8 00 32                                      ...2
   751 ms  0x65d0 privk:0x7f043236a020::7f043236a020  e5 e5 e5 e5                                      ....
   751 ms  0x65d0 PK11_Encrypt()
   751 ms  0x65d0 symkey:0x7f04323fbd00
   752 ms  0x65d0 PR_Connect()
   752 ms  0x65d0 fd:0x7f04430f0df0
           /* TID 0x6636 */
   760 ms  0x6636 PR_Close()
   760 ms  0x6636 fd:0x7f04430f0d90
           /* TID 0x65d8 */
   805 ms  0x65d8 PR_Close()
   805 ms  0x65d8 fd:0x7f04430f0cd0
           /* TID 0x6629 */
   806 ms  0x6629 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   806 ms  0x6629 ret:0x0
           /* TID 0x65d0 */
   806 ms  0x65d0 SSL_AuthCertificateComplete()
   806 ms  0x65d0 fd:0x7f04430f0370
   806 ms  0x65d0 err:0x0
   806 ms  0x65d0 PK11_Encrypt()
   806 ms  0x65d0 symkey:0x7f04323fbd00
   970 ms  0x65d0 SECKEY_DestroyPrivateKey()
   970 ms  0x65d0 privk:0x7f0432361020::7f0432361020  20 7e 3c 32                                       ~<2
   970 ms  0x65d0 privk:0x7f0432361020::7f0432361020  e5 e5 e5 e5                                      ....
   971 ms  0x65d0 SECKEY_DestroyPrivateKey()
   971 ms  0x65d0 privk:0x7f043235f020::7f043235f020  40 7c 3c 32                                      @|<2
   971 ms  0x65d0 privk:0x7f043235f020::7f043235f020  e5 e5 e5 e5                                      ....
  1197 ms  0x65d0 SSL_ImportFD()
  1197 ms  0x65d0 ret:0x7f04430f0f40
  1197 ms  0x65d0 SSL_AuthCertificateHook()
  1197 ms  0x65d0 fd:0x7f04430f0f40
  1197 ms  0x65d0 ret:0x0
  1197 ms  0x65d0 PR_Connect()
  1197 ms  0x65d0 fd:0x7f04430f0f40
  1222 ms  0x65d0 SECKEY_CreateECPrivateKey()
  1222 ms  0x65d0 cx:0x7f0432008728
  1223 ms     | 0x65d0 EC_ValidatePublicKey()
  1223 ms     | 0x65d0 ret:0x0
  1223 ms  0x65d0 ret:0x7f0432360820::7f0432360820  80 c8 00 32                                      ...2
  1223 ms  0x65d0 SECKEY_CreateECPrivateKey()
  1223 ms  0x65d0 cx:0x7f0432008728
  1224 ms     | 0x65d0 EC_ValidatePublicKey()
  1226 ms     | 0x65d0 ret:0x0
  1226 ms  0x65d0 ret:0x7f0432366820::7f0432366820  60 ca 00 32                                      `..2
           /* TID 0x6629 */
  1279 ms  0x6629 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1280 ms  0x6629 ret:0x0
           /* TID 0x65d0 */
  1280 ms  SECKEY_ECParamsToKeySize()
  1280 ms  0x65d0 ret:0x100
  1280 ms  0x65d0 SECKEY_CreateECPrivateKey()
  1280 ms  0x65d0 cx:0x7f0432008728
  1282 ms     | 0x65d0 EC_ValidatePublicKey()
  1287 ms     | 0x65d0 ret:0x0
  1287 ms  0x65d0 ret:0x7f043236a020::7f043236a020  e0 cc 00 32                                      ...2
  1287 ms  0x65d0 PK11_PubDeriveWithKDF()
  1287 ms  0x65d0 seckey:0x7f043236a020
  1287 ms     | 0x65d0 EC_ValidatePublicKey()
  1292 ms     | 0x65d0 ret:0x0
  1296 ms  0x65d0 ret:0x7f0444ae8680
  1296 ms  0x65d0 PK11_DeriveWithFlags()
  1296 ms  0x65d0 basekey:0x7f0444ae8680
  1296 ms     | 0x65d0 PK11_DeriveWithTemplate()
  1296 ms  0x65d0 ret:0x7f043238db80
  1296 ms  0x65d0 PK11_Derive()
  1296 ms  0x65d0 basekey:0x7f043238db80
  1296 ms     | 0x65d0 PK11_DeriveWithTemplate()
  1296 ms  0x65d0 ret:0x7f04323fc580
  1296 ms  0x65d0 SECKEY_DestroyPrivateKey()
  1296 ms  0x65d0 privk:0x7f043236a020::7f043236a020  e0 cc 00 32                                      ...2
  1297 ms  0x65d0 privk:0x7f043236a020::7f043236a020  e5 e5 e5 e5                                      ....
  1297 ms  0x65d0 PK11_Encrypt()
  1297 ms  0x65d0 symkey:0x7f04323fca80
  1297 ms  0x65d0 SSL_AuthCertificateComplete()
  1297 ms  0x65d0 fd:0x7f04430f0f40
  1297 ms  0x65d0 err:0x0
  1297 ms  0x65d0 PK11_Encrypt()
  1297 ms  0x65d0 symkey:0x7f04323fca80
  1349 ms  0x65d0 SECKEY_DestroyPrivateKey()
  1349 ms  0x65d0 privk:0x7f0432366820::7f0432366820  60 ca 00 32                                      `..2
  1350 ms  0x65d0 privk:0x7f0432366820::7f0432366820  e5 e5 e5 e5                                      ....
  1350 ms  0x65d0 SECKEY_DestroyPrivateKey()
  1350 ms  0x65d0 privk:0x7f0432360820::7f0432360820  80 c8 00 32                                      ...2
  1350 ms  0x65d0 privk:0x7f0432360820::7f0432360820  e5 e5 e5 e5                                      ....
  1354 ms  0x65d0 PK11_Encrypt()
  1354 ms  0x65d0 symkey:0x7f04323fca80
  1385 ms  0x65d0 PK11_Encrypt()
  1385 ms  0x65d0 symkey:0x7f04323fca80
  1416 ms  0x65d0 PK11_Encrypt()
  1416 ms  0x65d0 symkey:0x7f04323fca80
  1446 ms  0x65d0 PK11_Encrypt()
  1446 ms  0x65d0 symkey:0x7f04323fca80
  1559 ms  0x65d0 PK11_Encrypt()
  1559 ms  0x65d0 symkey:0x7f04323fca80
  1591 ms  0x65d0 PK11_Encrypt()
  1591 ms  0x65d0 symkey:0x7f04323fca80
  1623 ms  0x65d0 PK11_Encrypt()
  1623 ms  0x65d0 symkey:0x7f04323fca80
           /* TID 0x6623 */
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f04320071c0
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f0432007280
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f04320071c0
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f0432007280
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f04320071c0
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f0432007280
  1652 ms  0x6623 PR_Close()
  1652 ms  0x6623 fd:0x7f04320071c0
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f0432007280
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f04320071c0
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f0432007280
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f04320071c0
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f0432007280
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f04320071c0
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f0432007280
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f04320071c0
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f0432007280
  1653 ms  0x6623 PR_Close()
  1653 ms  0x6623 fd:0x7f04320071c0
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f0432007280
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f04320071c0
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f0432007280
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f04320071c0
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f0432007280
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f04320071c0
  1654 ms  0x6623 PR_Close()
  1654 ms  0x6623 fd:0x7f0432007280
  1655 ms  0x6623 PR_Close()
  1655 ms  0x6623 fd:0x7f04320071c0
  1655 ms  0x6623 PR_Close()
  1655 ms  0x6623 fd:0x7f0432007280
  1655 ms  0x6623 PR_Close()
  1655 ms  0x6623 fd:0x7f04320071c0
  1655 ms  0x6623 PR_Close()
  1655 ms  0x6623 fd:0x7f0432007280
  1658 ms  0x6623 PR_Close()
  1658 ms  0x6623 fd:0x7f04320071c0
  1658 ms  0x6623 PR_Close()
  1658 ms  0x6623 fd:0x7f0432007220
  1661 ms  0x6623 PR_Close()
  1661 ms  0x6623 fd:0x7f0432007220
  1662 ms  0x6623 PR_Close()
  1662 ms  0x6623 fd:0x7f0432007250
  1664 ms  0x6623 PR_Close()
  1664 ms  0x6623 fd:0x7f0432007250
  1665 ms  0x6623 PR_Close()
  1665 ms  0x6623 fd:0x7f0432007250
  1668 ms  0x6623 PR_Close()
  1668 ms  0x6623 fd:0x7f0432007250
  1668 ms  0x6623 PR_Close()
  1668 ms  0x6623 fd:0x7f0432007250
  1721 ms  0x6623 PR_Close()
  1721 ms  0x6623 fd:0x7f0432007250
  1722 ms  0x6623 PR_Close()
  1722 ms  0x6623 fd:0x7f0432007250
  1729 ms  0x6623 PR_Close()
  1729 ms  0x6623 fd:0x7f0432007250
  1729 ms  0x6623 PR_Close()
  1729 ms  0x6623 fd:0x7f0432007250
  1735 ms  0x6623 PR_Close()
  1735 ms  0x6623 fd:0x7f0432007250
  1735 ms  0x6623 PR_Close()
  1735 ms  0x6623 fd:0x7f0432007250
  1737 ms  0x6623 PR_Close()
  1737 ms  0x6623 fd:0x7f0432007250
  1737 ms  0x6623 PR_Close()
  1737 ms  0x6623 fd:0x7f0432007250
           /* TID 0x6620 */
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1737 ms  0x6620 PR_Close()
  1737 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
  1738 ms  0x6620 PR_Close()
  1738 ms  0x6620 fd:0x7f0432007250
           /* TID 0x6636 */
  2240 ms  0x6636 PR_Close()
  2240 ms  0x6636 fd:0x7f04320075b0
  2244 ms  0x6636 PR_Close()
  2244 ms  0x6636 fd:0x7f04320075b0
  2809 ms  0x6636 PR_Close()
  2809 ms  0x6636 fd:0x7f04320075b0
           /* TID 0x65d8 */
  4182 ms  0x65d8 PR_Close()
  4182 ms  0x65d8 fd:0x7f04320075b0
  4183 ms  0x65d8 PR_Close()
  4183 ms  0x65d8 fd:0x7f0432007700
           /* TID 0x65d0 */
  4424 ms  0x65d0 SSL_ImportFD()
  4424 ms  0x65d0 ret:0x7f0431fe0730
  4424 ms  0x65d0 SSL_AuthCertificateHook()
  4424 ms  0x65d0 fd:0x7f0431fe0730
  4424 ms  0x65d0 ret:0x0
  4424 ms  0x65d0 PR_Connect()
  4424 ms  0x65d0 fd:0x7f0431fe0730
  4624 ms  0x65d0 SECKEY_CreateECPrivateKey()
  4624 ms  0x65d0 cx:0x7f0432008a68
  4626 ms     | 0x65d0 EC_ValidatePublicKey()
  4626 ms     | 0x65d0 ret:0x0
  4627 ms  0x65d0 ret:0x7f0431e03020::7f0431e03020  10 1a 3a 44                                      ..:D
  4627 ms  0x65d0 SECKEY_CreateECPrivateKey()
  4627 ms  0x65d0 cx:0x7f0432008a68
  4629 ms     | 0x65d0 EC_ValidatePublicKey()
  4634 ms     | 0x65d0 ret:0x0
  4634 ms  0x65d0 ret:0x7f0431e05020::7f0431e05020  90 1c 3a 44                                      ..:D
  4838 ms  SECKEY_ECParamsToKeySize()
  4838 ms  0x65d0 ret:0x100
  4838 ms  0x65d0 SECKEY_CreateECPrivateKey()
  4838 ms  0x65d0 cx:0x7f0432008a68
  4840 ms     | 0x65d0 EC_ValidatePublicKey()
  4844 ms     | 0x65d0 ret:0x0
  4844 ms  0x65d0 ret:0x7f0431e10820::7f0431e10820  90 92 fb 31                                      ...1
  4844 ms  0x65d0 PK11_PubDeriveWithKDF()
  4844 ms  0x65d0 seckey:0x7f0431e10820
  4844 ms     | 0x65d0 EC_ValidatePublicKey()
  4851 ms     | 0x65d0 ret:0x0
  4855 ms  0x65d0 ret:0x7f0444ae8680
  4855 ms  0x65d0 PK11_DeriveWithFlags()
  4855 ms  0x65d0 basekey:0x7f0444ae8680
  4855 ms     | 0x65d0 PK11_DeriveWithTemplate()
  4855 ms  0x65d0 ret:0x7f0431fe5100
  4855 ms  0x65d0 PK11_Derive()
  4855 ms  0x65d0 basekey:0x7f0431fe5100
  4855 ms     | 0x65d0 PK11_DeriveWithTemplate()
  4855 ms  0x65d0 ret:0x7f0431fe5180
  4855 ms  0x65d0 SECKEY_DestroyPrivateKey()
  4855 ms  0x65d0 privk:0x7f0431e10820::7f0431e10820  90 92 fb 31                                      ...1
  4855 ms  0x65d0 privk:0x7f0431e10820::7f0431e10820  e5 e5 e5 e5                                      ....
  4856 ms  0x65d0 PK11_Encrypt()
  4856 ms  0x65d0 symkey:0x7f0431fe5300
  4876 ms  0x65d0 PR_Connect()
  4876 ms  0x65d0 fd:0x7f0431fe0d00
           /* TID 0x6629 */
  4930 ms  0x6629 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4930 ms  0x6629 ret:0x0
  4930 ms  0x6629 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4931 ms  0x6629 ret:0x0
           /* TID 0x65d8 */
  4934 ms  0x65d8 PR_Close()
  4934 ms  0x65d8 fd:0x7f0431fe0c40
           /* TID 0x65d0 */
  4945 ms  0x65d0 SSL_AuthCertificateComplete()
  4945 ms  0x65d0 fd:0x7f0431fe0730
  4945 ms  0x65d0 err:0x0
  4946 ms  0x65d0 PK11_Encrypt()
  4946 ms  0x65d0 symkey:0x7f0431fe5300
  5056 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5056 ms  0x65d0 privk:0x7f0431e05020::7f0431e05020  90 1c 3a 44                                      ..:D
  5057 ms  0x65d0 privk:0x7f0431e05020::7f0431e05020  e5 e5 e5 e5                                      ....
  5057 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5057 ms  0x65d0 privk:0x7f0431e03020::7f0431e03020  10 1a 3a 44                                      ..:D
  5057 ms  0x65d0 privk:0x7f0431e03020::7f0431e03020  e5 e5 e5 e5                                      ....
           /* TID 0x65e7 */
  5444 ms  0x65e7 PR_Close()
  5444 ms  0x65e7 fd:0x7f0443988130
           /* TID 0x65d0 */
  5515 ms  0x65d0 SSL_ImportFD()
  5515 ms  0x65d0 ret:0x7f043239afd0
  5515 ms  0x65d0 SSL_AuthCertificateHook()
  5515 ms  0x65d0 fd:0x7f043239afd0
  5515 ms  0x65d0 ret:0x0
  5515 ms  0x65d0 PR_Connect()
  5515 ms  0x65d0 fd:0x7f043239afd0
  5515 ms  0x65d0 SSL_ImportFD()
  5515 ms  0x65d0 ret:0x7f04491c9910
  5515 ms  0x65d0 SSL_AuthCertificateHook()
  5515 ms  0x65d0 fd:0x7f04491c9910
  5515 ms  0x65d0 ret:0x0
  5515 ms  0x65d0 PR_Connect()
  5515 ms  0x65d0 fd:0x7f04491c9910
  5515 ms  0x65d0 SSL_ImportFD()
  5516 ms  0x65d0 ret:0x7f04320520a0
  5516 ms  0x65d0 SSL_AuthCertificateHook()
  5516 ms  0x65d0 fd:0x7f04320520a0
  5516 ms  0x65d0 ret:0x0
  5516 ms  0x65d0 PR_Connect()
  5516 ms  0x65d0 fd:0x7f04320520a0
  5516 ms  0x65d0 SSL_ImportFD()
  5516 ms  0x65d0 ret:0x7f04320522e0
  5516 ms  0x65d0 SSL_AuthCertificateHook()
  5516 ms  0x65d0 fd:0x7f04320522e0
  5516 ms  0x65d0 ret:0x0
  5516 ms  0x65d0 PR_Connect()
  5516 ms  0x65d0 fd:0x7f04320522e0
  5703 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5703 ms  0x65d0 cx:0x7f0432008f48
  5704 ms     | 0x65d0 EC_ValidatePublicKey()
  5704 ms     | 0x65d0 ret:0x0
  5704 ms  0x65d0 ret:0x7f0431dcb820::7f0431dcb820  30 3d 06 32                                      0=.2
  5704 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5704 ms  0x65d0 cx:0x7f0432008f48
  5704 ms     | 0x65d0 EC_ValidatePublicKey()
  5706 ms     | 0x65d0 ret:0x0
  5706 ms  0x65d0 ret:0x7f0431dcd820::7f0431dcd820  50 3b 06 32                                      P;.2
  5707 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5707 ms  0x65d0 cx:0x7f04320090e8
  5707 ms     | 0x65d0 EC_ValidatePublicKey()
  5707 ms     | 0x65d0 ret:0x0
  5707 ms  0x65d0 ret:0x7f0431dd0020::7f0431dd0020  b0 3f 06 32                                      .?.2
  5707 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5707 ms  0x65d0 cx:0x7f04320090e8
  5708 ms     | 0x65d0 EC_ValidatePublicKey()
  5709 ms     | 0x65d0 ret:0x0
  5709 ms  0x65d0 ret:0x7f0431dd2020::7f0431dd2020  f0 b1 f0 31                                      ...1
  5710 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5710 ms  0x65d0 cx:0x7f0432009428
  5710 ms     | 0x65d0 EC_ValidatePublicKey()
  5710 ms     | 0x65d0 ret:0x0
  5710 ms  0x65d0 ret:0x7f0431dd4820::7f0431dd4820  30 b3 f0 31                                      0..1
  5710 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5710 ms  0x65d0 cx:0x7f0432009428
  5711 ms     | 0x65d0 EC_ValidatePublicKey()
  5712 ms     | 0x65d0 ret:0x0
  5712 ms  0x65d0 ret:0x7f0431dd6820::7f0431dd6820  10 b5 f0 31                                      ...1
  5713 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5713 ms  0x65d0 cx:0x7f0432009288
  5713 ms     | 0x65d0 EC_ValidatePublicKey()
  5713 ms     | 0x65d0 ret:0x0
  5713 ms  0x65d0 ret:0x7f0431e11820::7f0431e11820  50 b6 f0 31                                      P..1
  5713 ms  0x65d0 SECKEY_CreateECPrivateKey()
  5713 ms  0x65d0 cx:0x7f0432009288
  5714 ms     | 0x65d0 EC_ValidatePublicKey()
  5715 ms     | 0x65d0 ret:0x0
  5715 ms  0x65d0 ret:0x7f0431f21020::7f0431f21020  30 b8 f0 31                                      0..1
           /* TID 0x65d8 */
  5824 ms  0x65d8 PR_Close()
  5824 ms  0x65d8 fd:0x7f0431fe0820
           /* TID 0x65d0 */
  5895 ms  0x65d0 PK11_Derive()
  5895 ms  0x65d0 basekey:0x7f0431fe5a00
  5895 ms     | 0x65d0 PK11_DeriveWithTemplate()
  5895 ms  0x65d0 ret:0x7f0444ae8680
  5895 ms  0x65d0 PK11_Encrypt()
  5895 ms  0x65d0 symkey:0x7f04320ba280
  5897 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5897 ms  0x65d0 privk:0x7f0431dcd820::7f0431dcd820  50 3b 06 32                                      P;.2
  5901 ms  0x65d0 privk:0x7f0431dcd820::7f0431dcd820  e5 e5 e5 e5                                      ....
  5901 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5901 ms  0x65d0 privk:0x7f0431dcb820::7f0431dcb820  30 3d 06 32                                      0=.2
  5901 ms  0x65d0 privk:0x7f0431dcb820::7f0431dcb820  e5 e5 e5 e5                                      ....
  5902 ms  0x65d0 PK11_Encrypt()
  5902 ms  0x65d0 symkey:0x7f04320ba280
  5903 ms  0x65d0 PK11_Derive()
  5903 ms  0x65d0 basekey:0x7f04320ba580
  5903 ms     | 0x65d0 PK11_DeriveWithTemplate()
  5903 ms  0x65d0 ret:0x7f04320ba500
  5903 ms  0x65d0 PK11_Encrypt()
  5903 ms  0x65d0 symkey:0x7f04320ba700
  5905 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5905 ms  0x65d0 privk:0x7f0431dd2020::7f0431dd2020  f0 b1 f0 31                                      ...1
  5906 ms  0x65d0 privk:0x7f0431dd2020::7f0431dd2020  e5 e5 e5 e5                                      ....
  5906 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5906 ms  0x65d0 privk:0x7f0431dd0020::7f0431dd0020  b0 3f 06 32                                      .?.2
  5906 ms  0x65d0 privk:0x7f0431dd0020::7f0431dd0020  e5 e5 e5 e5                                      ....
  5907 ms  0x65d0 PK11_Encrypt()
  5907 ms  0x65d0 symkey:0x7f04320ba700
  5908 ms  0x65d0 PK11_Derive()
  5908 ms  0x65d0 basekey:0x7f04320ba880
  5908 ms     | 0x65d0 PK11_DeriveWithTemplate()
  5908 ms  0x65d0 ret:0x7f04320ba800
  5908 ms  0x65d0 PK11_Encrypt()
  5908 ms  0x65d0 symkey:0x7f04320baa00
  5911 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5911 ms  0x65d0 privk:0x7f0431dd6820::7f0431dd6820  10 b5 f0 31                                      ...1
  5912 ms  0x65d0 privk:0x7f0431dd6820::7f0431dd6820  e5 e5 e5 e5                                      ....
  5912 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5912 ms  0x65d0 privk:0x7f0431dd4820::7f0431dd4820  30 b3 f0 31                                      0..1
  5912 ms  0x65d0 privk:0x7f0431dd4820::7f0431dd4820  e5 e5 e5 e5                                      ....
  5912 ms  0x65d0 PK11_Derive()
  5912 ms  0x65d0 basekey:0x7f04320bab80
  5912 ms     | 0x65d0 PK11_DeriveWithTemplate()
  5913 ms  0x65d0 ret:0x7f04320bab00
  5913 ms  0x65d0 PK11_Encrypt()
  5913 ms  0x65d0 symkey:0x7f04320bad00
  5914 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5914 ms  0x65d0 privk:0x7f0431f21020::7f0431f21020  30 b8 f0 31                                      0..1
  5915 ms  0x65d0 privk:0x7f0431f21020::7f0431f21020  e5 e5 e5 e5                                      ....
  5915 ms  0x65d0 SECKEY_DestroyPrivateKey()
  5915 ms  0x65d0 privk:0x7f0431e11820::7f0431e11820  50 b6 f0 31                                      P..1
  5915 ms  0x65d0 privk:0x7f0431e11820::7f0431e11820  e5 e5 e5 e5                                      ....
  5916 ms  0x65d0 PK11_Encrypt()
  5916 ms  0x65d0 symkey:0x7f04320baa00
  5917 ms  0x65d0 PK11_Encrypt()
  5917 ms  0x65d0 symkey:0x7f04320bad00
           /* TID 0x65d8 */
  6435 ms  0x65d8 PR_Close()
  6435 ms  0x65d8 fd:0x7f043239a340
  6440 ms  0x65d8 PR_Close()
  6440 ms  0x65d8 fd:0x7f043239a340
  6461 ms  0x65d8 PR_Close()
  6461 ms  0x65d8 fd:0x7f0431d87bb0
  6463 ms  0x65d8 PR_Close()
  6463 ms  0x65d8 fd:0x7f0431d87bb0
           /* TID 0x65d0 */
  6614 ms  0x65d0 SSL_ImportFD()
  6614 ms  0x65d0 ret:0x7f043239a730
  6614 ms  0x65d0 SSL_AuthCertificateHook()
  6614 ms  0x65d0 fd:0x7f043239a730
  6614 ms  0x65d0 ret:0x0
  6614 ms  0x65d0 PR_Connect()
  6614 ms  0x65d0 fd:0x7f043239a730
  6615 ms  0x65d0 SSL_ImportFD()
  6615 ms  0x65d0 ret:0x7f043239a790
  6615 ms  0x65d0 SSL_AuthCertificateHook()
  6615 ms  0x65d0 fd:0x7f043239a790
  6615 ms  0x65d0 ret:0x0
  6615 ms  0x65d0 PR_Connect()
  6615 ms  0x65d0 fd:0x7f043239a790
  6615 ms  0x65d0 SSL_ImportFD()
  6615 ms  0x65d0 ret:0x7f0432052cd0
  6615 ms  0x65d0 SSL_AuthCertificateHook()
  6615 ms  0x65d0 fd:0x7f0432052cd0
  6615 ms  0x65d0 ret:0x0
  6615 ms  0x65d0 PR_Connect()
  6615 ms  0x65d0 fd:0x7f0432052cd0
  6865 ms  0x65d0 SSL_ImportFD()
  6865 ms  0x65d0 ret:0x7f0431e26f40
  6865 ms  0x65d0 SSL_AuthCertificateHook()
  6865 ms  0x65d0 fd:0x7f0431e26f40
  6865 ms  0x65d0 ret:0x0
  6865 ms  0x65d0 PR_Connect()
  6865 ms  0x65d0 fd:0x7f0431e26f40
  6865 ms  0x65d0 SSL_ImportFD()
  6865 ms  0x65d0 ret:0x7f0431e26be0
  6865 ms  0x65d0 SSL_AuthCertificateHook()
  6865 ms  0x65d0 fd:0x7f0431e26be0
  6865 ms  0x65d0 ret:0x0
  6865 ms  0x65d0 PR_Connect()
  6865 ms  0x65d0 fd:0x7f0431e26be0
  6865 ms  0x65d0 SSL_ImportFD()
  6865 ms  0x65d0 ret:0x7f04320529d0
  6865 ms  0x65d0 SSL_AuthCertificateHook()
  6865 ms  0x65d0 fd:0x7f04320529d0
  6866 ms  0x65d0 ret:0x0
  6866 ms  0x65d0 PR_Connect()
  6866 ms  0x65d0 fd:0x7f04320529d0
  6902 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6902 ms  0x65d0 cx:0x7f0432009aa8
  6903 ms     | 0x65d0 EC_ValidatePublicKey()
  6903 ms     | 0x65d0 ret:0x0
  6903 ms  0x65d0 ret:0x7f0431dbe820::7f0431dbe820  00 16 ed 31                                      ...1
  6904 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6904 ms  0x65d0 cx:0x7f0432009aa8
  6909 ms     | 0x65d0 EC_ValidatePublicKey()
  6913 ms     | 0x65d0 ret:0x0
  6913 ms  0x65d0 ret:0x7f0431dc2820::7f0431dc2820  00 1b ed 31                                      ...1
  6917 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6917 ms  0x65d0 cx:0x7f0432009de8
  6919 ms     | 0x65d0 EC_ValidatePublicKey()
  6919 ms     | 0x65d0 ret:0x0
  6919 ms  0x65d0 ret:0x7f0431dcc820::7f0431dcc820  20 1e ed 31                                       ..1
  6919 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6919 ms  0x65d0 cx:0x7f0432009de8
  6921 ms     | 0x65d0 EC_ValidatePublicKey()
  6928 ms     | 0x65d0 ret:0x0
  6928 ms  0x65d0 ret:0x7f0431dcf020::7f0431dcf020  b0 6f ed 31                                      .o.1
  6929 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6929 ms  0x65d0 cx:0x7f0432009c48
  6930 ms     | 0x65d0 EC_ValidatePublicKey()
  6930 ms     | 0x65d0 ret:0x0
  6930 ms  0x65d0 ret:0x7f0431dd1820::7f0431dd1820  90 b2 f0 31                                      ...1
  6931 ms  0x65d0 SECKEY_CreateECPrivateKey()
  6931 ms  0x65d0 cx:0x7f0432009c48
  6932 ms     | 0x65d0 EC_ValidatePublicKey()
  6936 ms     | 0x65d0 ret:0x0
  6936 ms  0x65d0 ret:0x7f0431dd4020::7f0431dd4020  70 b4 f0 31                                      p..1
  7149 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7149 ms  0x65d0 cx:0x7f043200a2c8
  7151 ms     | 0x65d0 EC_ValidatePublicKey()
  7151 ms     | 0x65d0 ret:0x0
  7151 ms  0x65d0 ret:0x7f0431dd6820::7f0431dd6820  00 b6 f0 31                                      ...1
  7152 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7152 ms  0x65d0 cx:0x7f043200a2c8
  7154 ms     | 0x65d0 EC_ValidatePublicKey()
  7159 ms     | 0x65d0 ret:0x0
  7159 ms  0x65d0 ret:0x7f0431e02820::7f0431e02820  70 b9 f0 31                                      p..1
  7161 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7161 ms  0x65d0 cx:0x7f043200a128
  7162 ms     | 0x65d0 EC_ValidatePublicKey()
  7162 ms     | 0x65d0 ret:0x0
  7162 ms  0x65d0 ret:0x7f0431e19020::7f0431e19020  b0 ba f0 31                                      ...1
  7163 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7163 ms  0x65d0 cx:0x7f043200a128
  7165 ms     | 0x65d0 EC_ValidatePublicKey()
  7170 ms     | 0x65d0 ret:0x0
  7170 ms  0x65d0 ret:0x7f0431e1f820::7f0431e1f820  90 bc f0 31                                      ...1
  7171 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7171 ms  0x65d0 cx:0x7f0432009f88
  7173 ms     | 0x65d0 EC_ValidatePublicKey()
  7173 ms     | 0x65d0 ret:0x0
  7173 ms  0x65d0 ret:0x7f0431f23820::7f0431f23820  d0 bd f0 31                                      ...1
  7173 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7173 ms  0x65d0 cx:0x7f0432009f88
  7175 ms     | 0x65d0 EC_ValidatePublicKey()
  7179 ms     | 0x65d0 ret:0x0
  7179 ms  0x65d0 ret:0x7f0431f25820::7f0431f25820  b0 bf f0 31                                      ...1
  7205 ms  SECKEY_ECParamsToKeySize()
  7205 ms  0x65d0 ret:0xff
  7205 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7205 ms  0x65d0 cx:0x7f0432009aa8
  7206 ms     | 0x65d0 EC_ValidatePublicKey()
  7206 ms     | 0x65d0 ret:0x0
  7206 ms  0x65d0 ret:0x7f0431f28820::7f0431f28820  80 98 fb 31                                      ...1
  7206 ms  0x65d0 PK11_PubDeriveWithKDF()
  7206 ms  0x65d0 seckey:0x7f0431f28820
  7206 ms     | 0x65d0 EC_ValidatePublicKey()
  7206 ms     | 0x65d0 ret:0x0
  7207 ms  0x65d0 ret:0x7f0431df1480
  7207 ms  0x65d0 PK11_DeriveWithFlags()
  7207 ms  0x65d0 basekey:0x7f0431df1480
  7207 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7207 ms  0x65d0 ret:0x7f0431df1500
  7207 ms  0x65d0 PK11_Derive()
  7207 ms  0x65d0 basekey:0x7f0431df1500
  7207 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7208 ms  0x65d0 ret:0x7f0431df1580
  7208 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7208 ms  0x65d0 privk:0x7f0431f28820::7f0431f28820  80 98 fb 31                                      ...1
  7208 ms  0x65d0 privk:0x7f0431f28820::7f0431f28820  e5 e5 e5 e5                                      ....
  7208 ms  0x65d0 PK11_Encrypt()
  7208 ms  0x65d0 symkey:0x7f0431df1a00
  7208 ms  0x65d0 SSL_AuthCertificateComplete()
  7208 ms  0x65d0 fd:0x7f043239a730
  7208 ms  0x65d0 err:0x0
  7210 ms  0x65d0 PK11_Encrypt()
  7210 ms  0x65d0 symkey:0x7f0431df1a00
  7210 ms  0x65d0 PK11_Encrypt()
  7210 ms  0x65d0 symkey:0x7f0431df1a00
  7222 ms  SECKEY_ECParamsToKeySize()
  7222 ms  0x65d0 ret:0xff
  7222 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7222 ms  0x65d0 cx:0x7f0432009de8
  7223 ms     | 0x65d0 EC_ValidatePublicKey()
  7223 ms     | 0x65d0 ret:0x0
  7223 ms  0x65d0 ret:0x7f0431f2a820::7f0431f2a820  90 cc 00 32                                      ...2
  7223 ms  0x65d0 PK11_PubDeriveWithKDF()
  7223 ms  0x65d0 seckey:0x7f0431f2a820
  7223 ms     | 0x65d0 EC_ValidatePublicKey()
  7223 ms     | 0x65d0 ret:0x0
  7224 ms  0x65d0 ret:0x7f0431df1480
  7224 ms  0x65d0 PK11_DeriveWithFlags()
  7224 ms  0x65d0 basekey:0x7f0431df1480
  7225 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7225 ms  0x65d0 ret:0x7f0431df1d80
  7225 ms  0x65d0 PK11_Derive()
  7225 ms  0x65d0 basekey:0x7f0431df1d80
  7225 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7225 ms  0x65d0 ret:0x7f0431df1e00
  7225 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7225 ms  0x65d0 privk:0x7f0431f2a820::7f0431f2a820  90 cc 00 32                                      ...2
  7225 ms  0x65d0 privk:0x7f0431f2a820::7f0431f2a820  e5 e5 e5 e5                                      ....
  7225 ms  0x65d0 PK11_Encrypt()
  7225 ms  0x65d0 symkey:0x7f0431df2080
  7225 ms  0x65d0 SSL_AuthCertificateComplete()
  7225 ms  0x65d0 fd:0x7f0432052cd0
  7225 ms  0x65d0 err:0x0
  7226 ms  0x65d0 PK11_Encrypt()
  7226 ms  0x65d0 symkey:0x7f0431df2080
  7227 ms  0x65d0 PK11_Encrypt()
  7227 ms  0x65d0 symkey:0x7f0431df1a00
  7233 ms  SECKEY_ECParamsToKeySize()
  7233 ms  0x65d0 ret:0xff
  7233 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7233 ms  0x65d0 cx:0x7f0432009c48
  7234 ms     | 0x65d0 EC_ValidatePublicKey()
  7234 ms     | 0x65d0 ret:0x0
  7234 ms  0x65d0 ret:0x7f0431f2c820::7f0431f2c820  b0 c5 00 32                                      ...2
  7235 ms  0x65d0 PK11_PubDeriveWithKDF()
  7235 ms  0x65d0 seckey:0x7f0431f2c820
  7235 ms     | 0x65d0 EC_ValidatePublicKey()
  7235 ms     | 0x65d0 ret:0x0
  7236 ms  0x65d0 ret:0x7f0431df1480
  7236 ms  0x65d0 PK11_DeriveWithFlags()
  7236 ms  0x65d0 basekey:0x7f0431df1480
  7236 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7236 ms  0x65d0 ret:0x7f0431d8ca00
  7236 ms  0x65d0 PK11_Derive()
  7236 ms  0x65d0 basekey:0x7f0431d8ca00
  7236 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7236 ms  0x65d0 ret:0x7f0431d8cd00
  7236 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7236 ms  0x65d0 privk:0x7f0431f2c820::7f0431f2c820  b0 c5 00 32                                      ...2
  7236 ms  0x65d0 privk:0x7f0431f2c820::7f0431f2c820  e5 e5 e5 e5                                      ....
  7236 ms  0x65d0 PK11_Encrypt()
  7236 ms  0x65d0 symkey:0x7f0431df2200
  7237 ms  0x65d0 SSL_AuthCertificateComplete()
  7237 ms  0x65d0 fd:0x7f043239a790
  7237 ms  0x65d0 err:0x0
  7237 ms  0x65d0 PK11_Encrypt()
  7237 ms  0x65d0 symkey:0x7f0431df2200
  7238 ms  0x65d0 PK11_Encrypt()
  7238 ms  0x65d0 symkey:0x7f0431df1a00
  7446 ms  SECKEY_ECParamsToKeySize()
  7446 ms  0x65d0 ret:0xff
  7446 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7446 ms  0x65d0 cx:0x7f043200a2c8
  7448 ms     | 0x65d0 EC_ValidatePublicKey()
  7448 ms     | 0x65d0 ret:0x0
  7448 ms  0x65d0 ret:0x7f0431f2f020::7f0431f2f020  80 3d 06 32                                      .=.2
  7448 ms  0x65d0 PK11_PubDeriveWithKDF()
  7448 ms  0x65d0 seckey:0x7f0431f2f020
  7448 ms     | 0x65d0 EC_ValidatePublicKey()
  7448 ms     | 0x65d0 ret:0x0
  7452 ms  0x65d0 ret:0x7f0431df1480
  7452 ms  0x65d0 PK11_DeriveWithFlags()
  7452 ms  0x65d0 basekey:0x7f0431df1480
  7452 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7452 ms  0x65d0 ret:0x7f0431df2a00
  7452 ms  0x65d0 PK11_Derive()
  7452 ms  0x65d0 basekey:0x7f0431df2a00
  7452 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7453 ms  0x65d0 ret:0x7f0431df2b80
  7453 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7453 ms  0x65d0 privk:0x7f0431f2f020::7f0431f2f020  80 3d 06 32                                      .=.2
  7453 ms  0x65d0 privk:0x7f0431f2f020::7f0431f2f020  e5 e5 e5 e5                                      ....
  7453 ms  0x65d0 PK11_Encrypt()
  7453 ms  0x65d0 symkey:0x7f0431ef8b80
  7454 ms  0x65d0 SSL_AuthCertificateComplete()
  7454 ms  0x65d0 fd:0x7f04320529d0
  7454 ms  0x65d0 err:0x0
  7459 ms  0x65d0 PK11_Encrypt()
  7459 ms  0x65d0 symkey:0x7f0431ef8b80
  7463 ms  SECKEY_ECParamsToKeySize()
  7463 ms  0x65d0 ret:0xff
  7463 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7463 ms  0x65d0 cx:0x7f043200a128
  7464 ms     | 0x65d0 EC_ValidatePublicKey()
  7464 ms     | 0x65d0 ret:0x0
  7464 ms  0x65d0 ret:0x7f0431f30020::7f0431f30020  20 3e 06 32                                       >.2
  7465 ms  0x65d0 PK11_PubDeriveWithKDF()
  7465 ms  0x65d0 seckey:0x7f0431f30020
  7465 ms     | 0x65d0 EC_ValidatePublicKey()
  7465 ms     | 0x65d0 ret:0x0
  7467 ms  0x65d0 ret:0x7f0431df1480
  7467 ms  0x65d0 PK11_DeriveWithFlags()
  7467 ms  0x65d0 basekey:0x7f0431df1480
  7468 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7468 ms  0x65d0 ret:0x7f0431fe4e00
  7468 ms  0x65d0 PK11_Derive()
  7468 ms  0x65d0 basekey:0x7f0431fe4e00
  7468 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7468 ms  0x65d0 ret:0x7f0431fe5400
  7468 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7468 ms  0x65d0 privk:0x7f0431f30020::7f0431f30020  20 3e 06 32                                       >.2
  7468 ms  0x65d0 privk:0x7f0431f30020::7f0431f30020  e5 e5 e5 e5                                      ....
  7469 ms  0x65d0 PK11_Encrypt()
  7469 ms  0x65d0 symkey:0x7f0431fe5a80
  7469 ms  0x65d0 SSL_AuthCertificateComplete()
  7469 ms  0x65d0 fd:0x7f0431e26be0
  7469 ms  0x65d0 err:0x0
  7469 ms  0x65d0 PK11_Encrypt()
  7469 ms  0x65d0 symkey:0x7f0431fe5a80
  7470 ms  SECKEY_ECParamsToKeySize()
  7470 ms  0x65d0 ret:0xff
  7470 ms  0x65d0 SECKEY_CreateECPrivateKey()
  7470 ms  0x65d0 cx:0x7f0432009f88
  7471 ms     | 0x65d0 EC_ValidatePublicKey()
  7471 ms     | 0x65d0 ret:0x0
  7471 ms  0x65d0 ret:0x7f0431f31820::7f0431f31820  c0 3e 06 32                                      .>.2
  7471 ms  0x65d0 PK11_PubDeriveWithKDF()
  7471 ms  0x65d0 seckey:0x7f0431f31820
  7471 ms     | 0x65d0 EC_ValidatePublicKey()
  7471 ms     | 0x65d0 ret:0x0
  7471 ms  0x65d0 ret:0x7f0431df1480
  7471 ms  0x65d0 PK11_DeriveWithFlags()
  7471 ms  0x65d0 basekey:0x7f0431df1480
  7471 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7471 ms  0x65d0 ret:0x7f0431fe5c00
  7471 ms  0x65d0 PK11_Derive()
  7471 ms  0x65d0 basekey:0x7f0431fe5c00
  7471 ms     | 0x65d0 PK11_DeriveWithTemplate()
  7471 ms  0x65d0 ret:0x7f0431fe5f80
  7471 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7471 ms  0x65d0 privk:0x7f0431f31820::7f0431f31820  c0 3e 06 32                                      .>.2
  7471 ms  0x65d0 privk:0x7f0431f31820::7f0431f31820  e5 e5 e5 e5                                      ....
  7472 ms  0x65d0 PK11_Encrypt()
  7472 ms  0x65d0 symkey:0x7f0431ffe200
  7472 ms  0x65d0 SSL_AuthCertificateComplete()
  7472 ms  0x65d0 fd:0x7f0431e26f40
  7472 ms  0x65d0 err:0x0
  7472 ms  0x65d0 PK11_Encrypt()
  7472 ms  0x65d0 symkey:0x7f0431ffe200
  7495 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7495 ms  0x65d0 privk:0x7f0431dc2820::7f0431dc2820  00 1b ed 31                                      ...1
  7496 ms  0x65d0 privk:0x7f0431dc2820::7f0431dc2820  e5 e5 e5 e5                                      ....
  7496 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7496 ms  0x65d0 privk:0x7f0431dbe820::7f0431dbe820  00 16 ed 31                                      ...1
  7496 ms  0x65d0 privk:0x7f0431dbe820::7f0431dbe820  e5 e5 e5 e5                                      ....
  7496 ms  0x65d0 PK11_Encrypt()
  7496 ms  0x65d0 symkey:0x7f0431df1a00
  7515 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7515 ms  0x65d0 privk:0x7f0431dcf020::7f0431dcf020  b0 6f ed 31                                      .o.1
  7515 ms  0x65d0 privk:0x7f0431dcf020::7f0431dcf020  e5 e5 e5 e5                                      ....
  7515 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7515 ms  0x65d0 privk:0x7f0431dcc820::7f0431dcc820  20 1e ed 31                                       ..1
  7516 ms  0x65d0 privk:0x7f0431dcc820::7f0431dcc820  e5 e5 e5 e5                                      ....
  7516 ms  0x65d0 PR_Close()
  7516 ms  0x65d0 fd:0x7f0432052cd0
  7516 ms     | 0x65d0 PK11_Encrypt()
  7516 ms     | 0x65d0 symkey:0x7f0431df2080
  7528 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7528 ms  0x65d0 privk:0x7f0431dd4020::7f0431dd4020  70 b4 f0 31                                      p..1
  7529 ms  0x65d0 privk:0x7f0431dd4020::7f0431dd4020  e5 e5 e5 e5                                      ....
  7529 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7529 ms  0x65d0 privk:0x7f0431dd1820::7f0431dd1820  90 b2 f0 31                                      ...1
  7529 ms  0x65d0 privk:0x7f0431dd1820::7f0431dd1820  e5 e5 e5 e5                                      ....
  7529 ms  0x65d0 PR_Close()
  7529 ms  0x65d0 fd:0x7f043239a790
  7529 ms     | 0x65d0 PK11_Encrypt()
  7529 ms     | 0x65d0 symkey:0x7f0431df2200
  7737 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7737 ms  0x65d0 privk:0x7f0431e02820::7f0431e02820  70 b9 f0 31                                      p..1
  7738 ms  0x65d0 privk:0x7f0431e02820::7f0431e02820  e5 e5 e5 e5                                      ....
  7738 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7738 ms  0x65d0 privk:0x7f0431dd6820::7f0431dd6820  00 b6 f0 31                                      ...1
  7738 ms  0x65d0 privk:0x7f0431dd6820::7f0431dd6820  e5 e5 e5 e5                                      ....
  7739 ms  0x65d0 PR_Close()
  7739 ms  0x65d0 fd:0x7f04320529d0
  7739 ms     | 0x65d0 PK11_Encrypt()
  7739 ms     | 0x65d0 symkey:0x7f0431ef8b80
  7758 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7758 ms  0x65d0 privk:0x7f0431e1f820::7f0431e1f820  90 bc f0 31                                      ...1
  7758 ms  0x65d0 privk:0x7f0431e1f820::7f0431e1f820  e5 e5 e5 e5                                      ....
  7759 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7759 ms  0x65d0 privk:0x7f0431e19020::7f0431e19020  b0 ba f0 31                                      ...1
  7759 ms  0x65d0 privk:0x7f0431e19020::7f0431e19020  e5 e5 e5 e5                                      ....
  7759 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7759 ms  0x65d0 privk:0x7f0431f25820::7f0431f25820  b0 bf f0 31                                      ...1
  7760 ms  0x65d0 privk:0x7f0431f25820::7f0431f25820  e5 e5 e5 e5                                      ....
  7760 ms  0x65d0 SECKEY_DestroyPrivateKey()
  7760 ms  0x65d0 privk:0x7f0431f23820::7f0431f23820  d0 bd f0 31                                      ...1
  7761 ms  0x65d0 privk:0x7f0431f23820::7f0431f23820  e5 e5 e5 e5                                      ....
  7761 ms  0x65d0 PR_Close()
  7761 ms  0x65d0 fd:0x7f0431e26f40
  7761 ms     | 0x65d0 PK11_Encrypt()
  7761 ms     | 0x65d0 symkey:0x7f0431ffe200
  7763 ms  0x65d0 PR_Close()
  7763 ms  0x65d0 fd:0x7f0431e26be0
  7763 ms     | 0x65d0 PK11_Encrypt()
  7763 ms     | 0x65d0 symkey:0x7f0431fe5a80
           /* TID 0x65d8 */
  7789 ms  0x65d8 PR_Close()
  7789 ms  0x65d8 fd:0x7f0431e26f10
  8362 ms  0x65d8 PR_Close()
  8362 ms  0x65d8 fd:0x7f0431e26f10
           /* TID 0x65d0 */
  8381 ms  0x65d0 PK11_Encrypt()
  8381 ms  0x65d0 symkey:0x7f0431df1a00
  8384 ms  0x65d0 PK11_Encrypt()
  8384 ms  0x65d0 symkey:0x7f0431df1a00
           /* TID 0x65d8 */
  8647 ms  0x65d8 PR_Close()
  8647 ms  0x65d8 fd:0x7f0432387fa0
  9415 ms  0x65d8 PR_Close()
  9415 ms  0x65d8 fd:0x7f0431fe0f70
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f0431fe0f70
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f04320074c0
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f0432387fa0
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f043239a310
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f043239a370
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f043239a4c0
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f043239a6a0
  9416 ms  0x65d8 PR_Close()
  9416 ms  0x65d8 fd:0x7f043239a790
  9537 ms  0x65d8 PR_Close()
  9537 ms  0x65d8 fd:0x7f0431d87c70
  9547 ms  0x65d8 PR_Close()
  9547 ms  0x65d8 fd:0x7f0431d87c70
           /* TID 0x65d0 */
  9580 ms  0x65d0 PK11_Encrypt()
  9580 ms  0x65d0 symkey:0x7f0431df1a00
  9598 ms  0x65d0 PK11_Encrypt()
  9598 ms  0x65d0 symkey:0x7f0431df1a00
  9605 ms  0x65d0 PK11_Encrypt()
  9605 ms  0x65d0 symkey:0x7f0431df1a00
  9622 ms  0x65d0 PK11_Encrypt()
  9622 ms  0x65d0 symkey:0x7f0431df1a00
  9707 ms  0x65d0 SSL_ImportFD()
  9707 ms  0x65d0 ret:0x7f043239aeb0
  9707 ms  0x65d0 SSL_AuthCertificateHook()
  9707 ms  0x65d0 fd:0x7f043239aeb0
  9707 ms  0x65d0 ret:0x0
  9707 ms  0x65d0 PR_Connect()
  9707 ms  0x65d0 fd:0x7f043239aeb0
           /* TID 0x65d8 */
  9869 ms  0x65d8 PR_Close()
  9869 ms  0x65d8 fd:0x7f0431e26f10
           /* TID 0x65d0 */
  9891 ms  0x65d0 SECKEY_CreateECPrivateKey()
  9891 ms  0x65d0 cx:0x7f043200a2c8
  9892 ms     | 0x65d0 EC_ValidatePublicKey()
  9892 ms     | 0x65d0 ret:0x0
  9892 ms  0x65d0 ret:0x7f0431dcf820::7f0431dcf820  70 be f0 31                                      p..1
  9892 ms  0x65d0 SECKEY_CreateECPrivateKey()
  9892 ms  0x65d0 cx:0x7f043200a2c8
  9893 ms     | 0x65d0 EC_ValidatePublicKey()
  9894 ms     | 0x65d0 ret:0x0
  9894 ms  0x65d0 ret:0x7f0431dd1820::7f0431dd1820  60 c5 00 32                                      `..2
 10083 ms  SECKEY_ECParamsToKeySize()
 10083 ms  0x65d0 ret:0x100
 10083 ms  0x65d0 SECKEY_CreateECPrivateKey()
 10083 ms  0x65d0 cx:0x7f043200a2c8
 10085 ms     | 0x65d0 EC_ValidatePublicKey()
 10090 ms     | 0x65d0 ret:0x0
 10090 ms  0x65d0 ret:0x7f0431dd5020::7f0431dd5020  d0 38 06 32                                      .8.2
 10090 ms  0x65d0 PK11_PubDeriveWithKDF()
 10090 ms  0x65d0 seckey:0x7f0431dd5020
 10090 ms     | 0x65d0 EC_ValidatePublicKey()
 10100 ms     | 0x65d0 ret:0x0
 10103 ms  0x65d0 ret:0x7f0431fe5400
 10103 ms  0x65d0 PK11_DeriveWithFlags()
 10103 ms  0x65d0 basekey:0x7f0431fe5400
 10103 ms     | 0x65d0 PK11_DeriveWithTemplate()
 10104 ms  0x65d0 ret:0x7f0431fe4e00
 10104 ms  0x65d0 PK11_Derive()
 10104 ms  0x65d0 basekey:0x7f0431fe4e00
 10104 ms     | 0x65d0 PK11_DeriveWithTemplate()
 10104 ms  0x65d0 ret:0x7f0431fe5f80
 10104 ms  0x65d0 SECKEY_DestroyPrivateKey()
 10104 ms  0x65d0 privk:0x7f0431dd5020::7f0431dd5020  d0 38 06 32                                      .8.2
 10104 ms  0x65d0 privk:0x7f0431dd5020::7f0431dd5020  e5 e5 e5 e5                                      ....
 10104 ms  0x65d0 PK11_Encrypt()
 10104 ms  0x65d0 symkey:0x7f0431fe5800
 10105 ms  0x65d0 SSL_AuthCertificateComplete()
 10105 ms  0x65d0 fd:0x7f043239aeb0
 10105 ms  0x65d0 err:0x0
 10106 ms  0x65d0 PK11_Encrypt()
 10106 ms  0x65d0 symkey:0x7f0431fe5800
           /* TID 0x65d8 */
 10162 ms  0x65d8 PR_Close()
 10162 ms  0x65d8 fd:0x7f043239a370
 10177 ms  0x65d8 PR_Close()
 10177 ms  0x65d8 fd:0x7f043239a310
 10179 ms  0x65d8 PR_Close()
 10179 ms  0x65d8 fd:0x7f0432387fa0
           /* TID 0x65d0 */
 10182 ms  0x65d0 PK11_Encrypt()
 10182 ms  0x65d0 symkey:0x7f0431df1a00
 10193 ms  0x65d0 PK11_Encrypt()
 10193 ms  0x65d0 symkey:0x7f0431df1a00
 10289 ms  0x65d0 SECKEY_DestroyPrivateKey()
 10289 ms  0x65d0 privk:0x7f0431dd1820::7f0431dd1820  60 c5 00 32                                      `..2
 10289 ms  0x65d0 privk:0x7f0431dd1820::7f0431dd1820  e5 e5 e5 e5                                      ....
 10290 ms  0x65d0 SECKEY_DestroyPrivateKey()
 10290 ms  0x65d0 privk:0x7f0431dcf820::7f0431dcf820  70 be f0 31                                      p..1
 10290 ms  0x65d0 privk:0x7f0431dcf820::7f0431dcf820  e5 e5 e5 e5                                      ....
           /* TID 0x65d8 */
 10472 ms  0x65d8 PR_Close()
 10472 ms  0x65d8 fd:0x7f04320072b0
           /* TID 0x65d0 */
 10482 ms  0x65d0 PK11_Encrypt()
 10482 ms  0x65d0 symkey:0x7f0431df1a00
           /* TID 0x65d8 */
 10671 ms  0x65d8 PR_Close()
 10671 ms  0x65d8 fd:0x7f043239ae80
 10764 ms  0x65d8 PR_Close()
 10764 ms  0x65d8 fd:0x7f0432387fd0
           /* TID 0x65d0 */
 10789 ms  0x65d0 PK11_Encrypt()
 10789 ms  0x65d0 symkey:0x7f0431fe5300
 10989 ms  0x65d0 PK11_Encrypt()
 10989 ms  0x65d0 symkey:0x7f04320ba280
           /* TID 0x65d8 */
 11049 ms  0x65d8 PR_Close()
 11049 ms  0x65d8 fd:0x7f043239ae50
           /* TID 0x65d0 */
 11067 ms  0x65d0 PR_Close()
 11067 ms  0x65d0 fd:0x7f0443988cd0
           /* TID 0x65c5 */
 11074 ms  0x65c5 EC_ValidatePublicKey()
 11078 ms  0x65c5 ret:0x0
 11078 ms  0x65c5 EC_ValidatePublicKey()
 11081 ms  0x65c5 ret:0x0
 11081 ms  0x65c5 EC_ValidatePublicKey()
 11084 ms  0x65c5 ret:0x0
 11084 ms  0x65c5 EC_ValidatePublicKey()
 11086 ms  0x65c5 ret:0x0
 11086 ms  0x65c5 EC_ValidatePublicKey()
 11091 ms  0x65c5 ret:0x0
 11091 ms  0x65c5 EC_ValidatePublicKey()
 11093 ms  0x65c5 ret:0x0
 11093 ms  0x65c5 EC_ValidatePublicKey()
 11096 ms  0x65c5 ret:0x0
 11096 ms  0x65c5 EC_ValidatePublicKey()
 11097 ms  0x65c5 ret:0x0
 11097 ms  0x65c5 EC_ValidatePublicKey()
 11099 ms  0x65c5 ret:0x0
 11099 ms  0x65c5 EC_ValidatePublicKey()
 11101 ms  0x65c5 ret:0x0
           /* TID 0x65d0 */
 11101 ms  0x65d0 PK11_Encrypt()
 11101 ms  0x65d0 symkey:0x7f0431df1a00
 11102 ms  0x65d0 PR_Close()
 11102 ms  0x65d0 fd:0x7f04320522e0
 11103 ms     | 0x65d0 PK11_Encrypt()
 11103 ms     | 0x65d0 symkey:0x7f04320baa00
 11103 ms  0x65d0 PR_Close()
 11103 ms  0x65d0 fd:0x7f04320520a0
 11103 ms     | 0x65d0 PK11_Encrypt()
 11103 ms     | 0x65d0 symkey:0x7f04320bad00
 11103 ms  0x65d0 PR_Close()
 11103 ms  0x65d0 fd:0x7f04491c9910
 11103 ms     | 0x65d0 PK11_Encrypt()
 11103 ms     | 0x65d0 symkey:0x7f04320ba700
 11103 ms  0x65d0 PR_Close()
 11103 ms  0x65d0 fd:0x7f0431fe0d00
 11103 ms  0x65d0 PR_Close()
 11103 ms  0x65d0 fd:0x7f04430f0f40
 11103 ms     | 0x65d0 PK11_Encrypt()
 11103 ms     | 0x65d0 symkey:0x7f04323fca80
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f04430f0df0
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f04430f0370
 11104 ms     | 0x65d0 PK11_Encrypt()
 11104 ms     | 0x65d0 symkey:0x7f04323fbd00
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f0447d63b20
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f04434d4df0
 11104 ms     | 0x65d0 PK11_Encrypt()
 11104 ms     | 0x65d0 symkey:0x7f0444ae8780
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f043239aeb0
 11104 ms     | 0x65d0 PK11_Encrypt()
 11104 ms     | 0x65d0 symkey:0x7f0431fe5800
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f04463842b0
 11104 ms     | 0x65d0 PK11_Encrypt()
 11104 ms     | 0x65d0 symkey:0x7f0442e9e380
 11104 ms  0x65d0 PR_Close()
 11104 ms  0x65d0 fd:0x7f043239a730
 11104 ms     | 0x65d0 PK11_Encrypt()
 11104 ms     | 0x65d0 symkey:0x7f0431df1a00
           /* TID 0x661e */
 11105 ms  0x661e PR_Close()
 11105 ms  0x661e fd:0x7f0431e26790
 11105 ms  0x661e PR_Close()
 11105 ms  0x661e fd:0x7f0431e26790
           /* TID 0x65c5 */
 11108 ms  0x65c5 PR_Close()
 11108 ms  0x65c5 fd:0x7f04443fd6a0
 11108 ms  0x65c5 PR_Close()
 11108 ms  0x65c5 fd:0x7f0432007100
 11109 ms  0x65c5 PR_Close()
 11109 ms  0x65c5 fd:0x7f0432007160
 11109 ms  0x65c5 PR_Close()
 11109 ms  0x65c5 fd:0x7f0432007100
 11109 ms  0x65c5 PR_Close()
 11109 ms  0x65c5 fd:0x7f0432007160
 11109 ms  0x65c5 PR_Close()
 11109 ms  0x65c5 fd:0x7f0432007100
           /* TID 0x6636 */
 11112 ms  0x6636 PR_Close()
 11112 ms  0x6636 fd:0x7f0432007100
           /* TID 0x65c5 */
 11128 ms  0x65c5 PR_Close()
 11128 ms  0x65c5 fd:0x7f0432007160
 11128 ms  0x65c5 PR_Close()
 11128 ms  0x65c5 fd:0x7f04430f00a0
 11129 ms  0x65c5 PR_Close()
 11129 ms  0x65c5 fd:0x7f0432007160
 11129 ms  0x65c5 PR_Close()
 11129 ms  0x65c5 fd:0x7f04430f00a0
 11130 ms  0x65c5 PR_Close()
 11130 ms  0x65c5 fd:0x7f044e0c89a0
 11130 ms  0x65c5 PR_Close()
 11130 ms  0x65c5 fd:0x7f044e0c88b0
 11130 ms  0x65c5 PR_Close()
 11130 ms  0x65c5 fd:0x7f044e0c8a60
 11132 ms  0x65c5 PR_Close()
 11132 ms  0x65c5 fd:0x7f04430f00a0
 11133 ms  0x65c5 PR_Close()
 11133 ms  0x65c5 fd:0x7f04430f00a0
 11135 ms  0x65c5 PR_Close()
 11135 ms  0x65c5 fd:0x7f0432007160
 11135 ms  0x65c5 PR_Close()
 11135 ms  0x65c5 fd:0x7f04430f0100
 11136 ms  0x65c5 PR_Close()
 11136 ms  0x65c5 fd:0x7f0432007160
 11136 ms  0x65c5 PR_Close()
 11136 ms  0x65c5 fd:0x7f04430f0100
 11138 ms  0x65c5 PR_Close()
 11138 ms  0x65c5 fd:0x7f04430f0130
 11140 ms  0x65c5 PR_Close()
 11140 ms  0x65c5 fd:0x7f04430f0130
 11141 ms  0x65c5 PR_Close()
 11141 ms  0x65c5 fd:0x7f0432007160
 11141 ms  0x65c5 PR_Close()
 11141 ms  0x65c5 fd:0x7f04430f0190
 11142 ms  0x65c5 PR_Close()
 11142 ms  0x65c5 fd:0x7f0432007160
 11142 ms  0x65c5 PR_Close()
 11142 ms  0x65c5 fd:0x7f04430f0190
 11144 ms  0x65c5 PR_Close()
 11144 ms  0x65c5 fd:0x7f04430f01c0
           /* TID 0x65d0 */
 11145 ms  0x65d0 PR_Close()
 11145 ms  0x65d0 fd:0x7f0431fe0730
 11145 ms     | 0x65d0 PK11_Encrypt()
 11145 ms     | 0x65d0 symkey:0x7f0431fe5300
           /* TID 0x65c5 */
 11147 ms  0x65c5 PR_Close()
 11147 ms  0x65c5 fd:0x7f0431fe0520
 11152 ms  0x65c5 PR_Close()
 11152 ms  0x65c5 fd:0x7f04430f0370
 11153 ms  0x65c5 PR_Close()
 11153 ms  0x65c5 fd:0x7f04430f0370
 11158 ms  0x65c5 PR_Close()
 11158 ms  0x65c5 fd:0x7f04430f03d0
           /* TID 0x6636 */
 11164 ms  0x6636 PR_Close()
 11164 ms  0x6636 fd:0x7f0431d87be0
 11165 ms  0x6636 PR_Close()
 11165 ms  0x6636 fd:0x7f0431d87be0
           /* TID 0x65c5 */
 11165 ms  0x65c5 PR_Close()
 11165 ms  0x65c5 fd:0x7f0432007160
 11166 ms  0x65c5 PR_Close()
 11166 ms  0x65c5 fd:0x7f04430f0f10
           /* TID 0x6636 */
 11172 ms  0x6636 PR_Close()
 11172 ms  0x6636 fd:0x7f0432007100
 11192 ms  0x6636 PR_Close()
 11192 ms  0x6636 fd:0x7f0431d87130
           /* TID 0x65d0 */
 11196 ms  0x65d0 PR_Close()
 11196 ms  0x65d0 fd:0x7f043239afd0
 11196 ms     | 0x65d0 PK11_Encrypt()
 11196 ms     | 0x65d0 symkey:0x7f04320ba280
           /* TID 0x65ca */
 11204 ms  0x65ca PR_Close()
 11204 ms  0x65ca fd:0x7f044cd2fe20
           /* TID 0x65d8 */
 11219 ms  0x65d8 PR_Close()
 11219 ms  0x65d8 fd:0x7f0431d87040
           /* TID 0x65ca */
 11219 ms  0x65ca PR_Close()
 11219 ms  0x65ca fd:0x7f0449358790
           /* TID 0x6636 */
 11225 ms  0x6636 PR_Close()
 11225 ms  0x6636 fd:0x7f0431d87190
           /* TID 0x65c5 */
 11243 ms  0x65c5 PR_Close()
 11243 ms  0x65c5 fd:0x7f0431d87be0
 11243 ms  0x65c5 PR_Close()
 11243 ms  0x65c5 fd:0x7f0431d87190
           /* TID 0x65d0 */
 11243 ms  0x65d0 PR_Close()
 11243 ms  0x65d0 fd:0x7f04434d4850
           /* TID 0x661e */
 11244 ms  0x661e PR_Close()
 11244 ms  0x661e fd:0x7f0431d87b80
 11244 ms  0x661e PR_Close()
 11244 ms  0x661e fd:0x7f0431d87040
 11244 ms  0x661e PR_Close()
 11244 ms  0x661e fd:0x7f0431d87040
 11244 ms  0x661e PR_Close()
 11244 ms  0x661e fd:0x7f0431d87040
           /* TID 0x6636 */
 11250 ms  0x6636 PR_Close()
 11250 ms  0x6636 fd:0x7f0431d87ac0
           /* TID 0x65d8 */
 11255 ms  0x65d8 PR_Close()
 11255 ms  0x65d8 fd:0x7f0432007a30
 11255 ms  0x65d8 PR_Close()
 11255 ms  0x65d8 fd:0x7f0432007dc0
           /* TID 0x65ca */
 11262 ms  0x65ca PR_Close()
 11262 ms  0x65ca fd:0x7f0447d63310
           /* TID 0x65c5 */
 11270 ms  0x65c5 PR_Close()
 11270 ms  0x65c5 fd:0x7f0431d87700
 11270 ms  0x65c5 PR_Close()
 11270 ms  0x65c5 fd:0x7f0432007eb0
           /* TID 0x6636 */
 11273 ms  0x6636 PR_Close()
 11273 ms  0x6636 fd:0x7f0431fe0be0
 11276 ms  0x6636 PR_Close()
 11276 ms  0x6636 fd:0x7f0431fe0bb0
 11304 ms  0x6636 PR_Close()
 11304 ms  0x6636 fd:0x7f0431e260d0
 11305 ms  0x6636 PR_Close()
 11305 ms  0x6636 fd:0x7f0431e260d0
 11327 ms  0x6636 PR_Close()
 11327 ms  0x6636 fd:0x7f0431e26c40
 11328 ms  0x6636 PR_Close()
 11328 ms  0x6636 fd:0x7f0431e26c70
 11342 ms  0x6636 PR_Close()
 11342 ms  0x6636 fd:0x7f0432007250
 11353 ms  0x6636 PR_Close()
 11353 ms  0x6636 fd:0x7f0432052610
 11360 ms  0x6636 PR_Close()
 11360 ms  0x6636 fd:0x7f043239a2e0
 11375 ms  0x6636 PR_Close()
 11375 ms  0x6636 fd:0x7f043239ab50
 11378 ms  0x6636 PR_Close()
 11378 ms  0x6636 fd:0x7f043239ab50
           /* TID 0x65c5 */
 11546 ms  0x65c5 PR_Close()
 11546 ms  0x65c5 fd:0x7f0431e267c0
 11546 ms  0x65c5 PR_Close()
 11546 ms  0x65c5 fd:0x7f0431e267c0
 11551 ms  0x65c5 PR_Close()
 11551 ms  0x65c5 fd:0x7f046b3da130
 11551 ms  0x65c5 PR_Close()
 11551 ms  0x65c5 fd:0x7f046b3da190
Process terminated
