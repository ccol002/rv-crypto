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
           /* TID 0x6b03 */
    68 ms  0x6b03 SECKEY_DestroyPrivateKey()
    68 ms  0x6b03 privk:0x7f6f5227f820::7f6f5227f820  60 6f 47 57                                      `oGW
    68 ms  0x6b03 privk:0x7f6f5227f820::7f6f5227f820  e5 e5 e5 e5                                      ....
    68 ms  0x6b03 SECKEY_DestroyPrivateKey()
    68 ms  0x6b03 privk:0x7f6f5227a020::7f6f5227a020  f0 6b 47 57                                      .kGW
    68 ms  0x6b03 privk:0x7f6f5227a020::7f6f5227a020  e5 e5 e5 e5                                      ....
           /* TID 0x6b0b */
   292 ms  0x6b0b PR_Close()
   292 ms  0x6b0b fd:0x7f6f524f7940
           /* TID 0x6b03 */
   397 ms  0x6b03 SSL_ImportFD()
   397 ms  0x6b03 ret:0x7f6f525324f0
   397 ms  0x6b03 SSL_AuthCertificateHook()
   397 ms  0x6b03 fd:0x7f6f525324f0
   397 ms  0x6b03 ret:0x0
   397 ms  0x6b03 PR_Connect()
   397 ms  0x6b03 fd:0x7f6f525324f0
   614 ms  0x6b03 SECKEY_CreateECPrivateKey()
   614 ms  0x6b03 cx:0x7f6f525f90a8
   616 ms     | 0x6b03 EC_ValidatePublicKey()
   616 ms     | 0x6b03 ret:0x0
   616 ms  0x6b03 ret:0x7f6f5256f020::7f6f5256f020  90 3c 5e 52                                      .<^R
   616 ms  0x6b03 SECKEY_CreateECPrivateKey()
   616 ms  0x6b03 cx:0x7f6f525f90a8
   618 ms     | 0x6b03 EC_ValidatePublicKey()
   622 ms     | 0x6b03 ret:0x0
   622 ms  0x6b03 ret:0x7f6f52571020::7f6f52571020  50 3b 5e 52                                      P;^R
           /* TID 0x6b7f */
   783 ms  0x6b7f PR_Close()
   783 ms  0x6b7f fd:0x7f6f52532df0
   830 ms  0x6b7f PR_Close()
   830 ms  0x6b7f fd:0x7f6f52532df0
   834 ms  0x6b7f PR_Close()
   834 ms  0x6b7f fd:0x7f6f52532df0
           /* TID 0x6b03 */
   845 ms  SECKEY_ECParamsToKeySize()
   845 ms  0x6b03 ret:0x100
   845 ms  0x6b03 SECKEY_CreateECPrivateKey()
   845 ms  0x6b03 cx:0x7f6f525f90a8
   847 ms     | 0x6b03 EC_ValidatePublicKey()
   851 ms     | 0x6b03 ret:0x0
   851 ms  0x6b03 ret:0x7f6f5257a020::7f6f5257a020  e0 f7 61 41                                      ..aA
   851 ms  0x6b03 PK11_PubDeriveWithKDF()
   851 ms  0x6b03 seckey:0x7f6f5257a020
   851 ms     | 0x6b03 EC_ValidatePublicKey()
   857 ms     | 0x6b03 ret:0x0
   861 ms  0x6b03 ret:0x7f6f53854c00
   861 ms  0x6b03 PK11_DeriveWithFlags()
   861 ms  0x6b03 basekey:0x7f6f53854c00
   861 ms     | 0x6b03 PK11_DeriveWithTemplate()
   861 ms  0x6b03 ret:0x7f6f41614a80
   861 ms  0x6b03 PK11_Derive()
   861 ms  0x6b03 basekey:0x7f6f41614a80
   861 ms     | 0x6b03 PK11_DeriveWithTemplate()
   861 ms  0x6b03 ret:0x7f6f41614b80
   861 ms  0x6b03 SECKEY_DestroyPrivateKey()
   861 ms  0x6b03 privk:0x7f6f5257a020::7f6f5257a020  e0 f7 61 41                                      ..aA
   861 ms  0x6b03 privk:0x7f6f5257a020::7f6f5257a020  e5 e5 e5 e5                                      ....
   861 ms  0x6b03 PK11_Encrypt()
   861 ms  0x6b03 symkey:0x7f6f41614d00
   862 ms  0x6b03 PR_Connect()
   862 ms  0x6b03 fd:0x7f6f41642070
           /* TID 0x6b81 */
   915 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   916 ms  0x6b81 ret:0x0
           /* TID 0x6b0b */
   917 ms  0x6b0b PR_Close()
   917 ms  0x6b0b fd:0x7f6f416420a0
           /* TID 0x6b03 */
   917 ms  0x6b03 SSL_AuthCertificateComplete()
   917 ms  0x6b03 fd:0x7f6f525324f0
   917 ms  0x6b03 err:0x0
   917 ms  0x6b03 PK11_Encrypt()
   917 ms  0x6b03 symkey:0x7f6f41614d00
  1085 ms  0x6b03 SECKEY_DestroyPrivateKey()
  1085 ms  0x6b03 privk:0x7f6f52571020::7f6f52571020  50 3b 5e 52                                      P;^R
  1086 ms  0x6b03 privk:0x7f6f52571020::7f6f52571020  e5 e5 e5 e5                                      ....
  1086 ms  0x6b03 SECKEY_DestroyPrivateKey()
  1086 ms  0x6b03 privk:0x7f6f5256f020::7f6f5256f020  90 3c 5e 52                                      .<^R
  1086 ms  0x6b03 privk:0x7f6f5256f020::7f6f5256f020  e5 e5 e5 e5                                      ....
  1362 ms  0x6b03 SSL_ImportFD()
  1362 ms  0x6b03 ret:0x7f6f416422b0
  1362 ms  0x6b03 SSL_AuthCertificateHook()
  1362 ms  0x6b03 fd:0x7f6f416422b0
  1362 ms  0x6b03 ret:0x0
  1363 ms  0x6b03 PR_Connect()
  1363 ms  0x6b03 fd:0x7f6f416422b0
  1389 ms  0x6b03 SECKEY_CreateECPrivateKey()
  1389 ms  0x6b03 cx:0x7f6f525faaa8
  1390 ms     | 0x6b03 EC_ValidatePublicKey()
  1390 ms     | 0x6b03 ret:0x0
  1390 ms  0x6b03 ret:0x7f6f52570020::7f6f52570020  d0 f8 61 41                                      ..aA
  1391 ms  0x6b03 SECKEY_CreateECPrivateKey()
  1391 ms  0x6b03 cx:0x7f6f525faaa8
  1393 ms     | 0x6b03 EC_ValidatePublicKey()
  1398 ms     | 0x6b03 ret:0x0
  1398 ms  0x6b03 ret:0x7f6f52576020::7f6f52576020  10 fa 61 41                                      ..aA
           /* TID 0x6b81 */
  1451 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1452 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  1452 ms  SECKEY_ECParamsToKeySize()
  1452 ms  0x6b03 ret:0x100
  1452 ms  0x6b03 SECKEY_CreateECPrivateKey()
  1452 ms  0x6b03 cx:0x7f6f525faaa8
  1454 ms     | 0x6b03 EC_ValidatePublicKey()
  1459 ms     | 0x6b03 ret:0x0
  1459 ms  0x6b03 ret:0x7f6f52579820::7f6f52579820  30 fd 61 41                                      0.aA
  1459 ms  0x6b03 PK11_PubDeriveWithKDF()
  1459 ms  0x6b03 seckey:0x7f6f52579820
  1459 ms     | 0x6b03 EC_ValidatePublicKey()
  1464 ms     | 0x6b03 ret:0x0
  1468 ms  0x6b03 ret:0x7f6f53854c00
  1468 ms  0x6b03 PK11_DeriveWithFlags()
  1468 ms  0x6b03 basekey:0x7f6f53854c00
  1468 ms     | 0x6b03 PK11_DeriveWithTemplate()
  1468 ms  0x6b03 ret:0x7f6f41615980
  1468 ms  0x6b03 PK11_Derive()
  1468 ms  0x6b03 basekey:0x7f6f41615980
  1468 ms     | 0x6b03 PK11_DeriveWithTemplate()
  1468 ms  0x6b03 ret:0x7f6f41615a00
  1468 ms  0x6b03 SECKEY_DestroyPrivateKey()
  1468 ms  0x6b03 privk:0x7f6f52579820::7f6f52579820  30 fd 61 41                                      0.aA
  1468 ms  0x6b03 privk:0x7f6f52579820::7f6f52579820  e5 e5 e5 e5                                      ....
  1469 ms  0x6b03 PK11_Encrypt()
  1469 ms  0x6b03 symkey:0x7f6f41615b80
  1469 ms  0x6b03 SSL_AuthCertificateComplete()
  1469 ms  0x6b03 fd:0x7f6f416422b0
  1469 ms  0x6b03 err:0x0
  1469 ms  0x6b03 PK11_Encrypt()
  1469 ms  0x6b03 symkey:0x7f6f41615b80
  1521 ms  0x6b03 SECKEY_DestroyPrivateKey()
  1521 ms  0x6b03 privk:0x7f6f52576020::7f6f52576020  10 fa 61 41                                      ..aA
  1521 ms  0x6b03 privk:0x7f6f52576020::7f6f52576020  e5 e5 e5 e5                                      ....
  1521 ms  0x6b03 SECKEY_DestroyPrivateKey()
  1521 ms  0x6b03 privk:0x7f6f52570020::7f6f52570020  d0 f8 61 41                                      ..aA
  1522 ms  0x6b03 privk:0x7f6f52570020::7f6f52570020  e5 e5 e5 e5                                      ....
  1525 ms  0x6b03 PK11_Encrypt()
  1525 ms  0x6b03 symkey:0x7f6f41615b80
  1556 ms  0x6b03 PK11_Encrypt()
  1556 ms  0x6b03 symkey:0x7f6f41615b80
  1585 ms  0x6b03 PK11_Encrypt()
  1585 ms  0x6b03 symkey:0x7f6f41615b80
  1614 ms  0x6b03 PK11_Encrypt()
  1614 ms  0x6b03 symkey:0x7f6f41615b80
  1729 ms  0x6b03 PK11_Encrypt()
  1729 ms  0x6b03 symkey:0x7f6f41615b80
  1761 ms  0x6b03 PK11_Encrypt()
  1761 ms  0x6b03 symkey:0x7f6f41615b80
  1792 ms  0x6b03 PK11_Encrypt()
  1792 ms  0x6b03 symkey:0x7f6f41615b80
           /* TID 0x6b6c */
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642370
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642430
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642370
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642430
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642370
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642430
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642370
  1819 ms  0x6b6c PR_Close()
  1819 ms  0x6b6c fd:0x7f6f41642430
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642370
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642430
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642370
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642430
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642370
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642430
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642370
  1820 ms  0x6b6c PR_Close()
  1820 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642430
  1821 ms  0x6b6c PR_Close()
  1821 ms  0x6b6c fd:0x7f6f41642370
  1822 ms  0x6b6c PR_Close()
  1822 ms  0x6b6c fd:0x7f6f41642430
  1873 ms  0x6b6c PR_Close()
  1873 ms  0x6b6c fd:0x7f6f416421f0
  1874 ms  0x6b6c PR_Close()
  1874 ms  0x6b6c fd:0x7f6f41642370
  1877 ms  0x6b6c PR_Close()
  1877 ms  0x6b6c fd:0x7f6f41642370
  1877 ms  0x6b6c PR_Close()
  1877 ms  0x6b6c fd:0x7f6f416423a0
  1879 ms  0x6b6c PR_Close()
  1879 ms  0x6b6c fd:0x7f6f416423a0
  1880 ms  0x6b6c PR_Close()
  1880 ms  0x6b6c fd:0x7f6f416423a0
  1882 ms  0x6b6c PR_Close()
  1882 ms  0x6b6c fd:0x7f6f416423a0
  1882 ms  0x6b6c PR_Close()
  1882 ms  0x6b6c fd:0x7f6f416423a0
  1925 ms  0x6b6c PR_Close()
  1925 ms  0x6b6c fd:0x7f6f416423a0
  1926 ms  0x6b6c PR_Close()
  1926 ms  0x6b6c fd:0x7f6f416423a0
  1933 ms  0x6b6c PR_Close()
  1933 ms  0x6b6c fd:0x7f6f416423a0
  1933 ms  0x6b6c PR_Close()
  1933 ms  0x6b6c fd:0x7f6f416423a0
  1939 ms  0x6b6c PR_Close()
  1939 ms  0x6b6c fd:0x7f6f416423a0
  1940 ms  0x6b6c PR_Close()
  1940 ms  0x6b6c fd:0x7f6f416423a0
  1942 ms  0x6b6c PR_Close()
  1942 ms  0x6b6c fd:0x7f6f416423a0
  1942 ms  0x6b6c PR_Close()
  1942 ms  0x6b6c fd:0x7f6f416423a0
           /* TID 0x6b69 */
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
  1942 ms  0x6b69 PR_Close()
  1942 ms  0x6b69 fd:0x7f6f416423a0
           /* TID 0x6b7f */
  2445 ms  0x6b7f PR_Close()
  2445 ms  0x6b7f fd:0x7f6f41642280
  2449 ms  0x6b7f PR_Close()
  2449 ms  0x6b7f fd:0x7f6f41642280
  2923 ms  0x6b7f PR_Close()
  2923 ms  0x6b7f fd:0x7f6f416422e0
           /* TID 0x6b0b */
  4188 ms  0x6b0b PR_Close()
  4188 ms  0x6b0b fd:0x7f6f416422e0
  4188 ms  0x6b0b PR_Close()
  4188 ms  0x6b0b fd:0x7f6f416427f0
           /* TID 0x6b03 */
  4489 ms  0x6b03 SSL_ImportFD()
  4489 ms  0x6b03 ret:0x7f6f551ae7f0
  4489 ms  0x6b03 SSL_AuthCertificateHook()
  4489 ms  0x6b03 fd:0x7f6f551ae7f0
  4489 ms  0x6b03 ret:0x0
  4489 ms  0x6b03 PR_Connect()
  4489 ms  0x6b03 fd:0x7f6f551ae7f0
  4531 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4531 ms  0x6b03 cx:0x7f6f525fade8
  4533 ms     | 0x6b03 EC_ValidatePublicKey()
  4533 ms     | 0x6b03 ret:0x0
  4533 ms  0x6b03 ret:0x7f6f41416820::7f6f41416820  90 67 43 41                                      .gCA
  4533 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4533 ms  0x6b03 cx:0x7f6f525fade8
  4535 ms     | 0x6b03 EC_ValidatePublicKey()
  4540 ms     | 0x6b03 ret:0x0
  4540 ms  0x6b03 ret:0x7f6f41418820::7f6f41418820  10 6a 43 41                                      .jCA
  4586 ms  SECKEY_ECParamsToKeySize()
  4587 ms  0x6b03 ret:0x100
  4587 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4587 ms  0x6b03 cx:0x7f6f525fade8
  4588 ms     | 0x6b03 EC_ValidatePublicKey()
  4592 ms     | 0x6b03 ret:0x0
  4592 ms  0x6b03 ret:0x7f6f41425020::7f6f41425020  f0 d1 43 41                                      ..CA
  4593 ms  0x6b03 PK11_PubDeriveWithKDF()
  4593 ms  0x6b03 seckey:0x7f6f41425020
  4593 ms     | 0x6b03 EC_ValidatePublicKey()
  4596 ms     | 0x6b03 ret:0x0
  4600 ms  0x6b03 ret:0x7f6f53854c00
  4600 ms  0x6b03 PK11_DeriveWithFlags()
  4600 ms  0x6b03 basekey:0x7f6f53854c00
  4600 ms     | 0x6b03 PK11_DeriveWithTemplate()
  4600 ms  0x6b03 ret:0x7f6f551b0000
  4600 ms  0x6b03 PK11_Derive()
  4600 ms  0x6b03 basekey:0x7f6f551b0000
  4600 ms     | 0x6b03 PK11_DeriveWithTemplate()
  4600 ms  0x6b03 ret:0x7f6f551b0080
  4600 ms  0x6b03 SECKEY_DestroyPrivateKey()
  4600 ms  0x6b03 privk:0x7f6f41425020::7f6f41425020  f0 d1 43 41                                      ..CA
  4601 ms  0x6b03 privk:0x7f6f41425020::7f6f41425020  e5 e5 e5 e5                                      ....
  4601 ms  0x6b03 PK11_Encrypt()
  4601 ms  0x6b03 symkey:0x7f6f551b0200
           /* TID 0x6b81 */
  4629 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4629 ms  0x6b81 ret:0x0
           /* TID 0x6b0b */
  4632 ms  0x6b0b PR_Close()
  4632 ms  0x6b0b fd:0x7f6f551aec40
           /* TID 0x6b03 */
  4688 ms  0x6b03 SSL_AuthCertificateComplete()
  4688 ms  0x6b03 fd:0x7f6f551ae7f0
  4688 ms  0x6b03 err:0x0
  4688 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  4688 ms     | 0x6b03 privk:0x7f6f41418820::7f6f41418820  10 6a 43 41                                      .jCA
  4689 ms     | 0x6b03 privk:0x7f6f41418820::7f6f41418820  e5 e5 e5 e5                                      ....
  4689 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  4689 ms     | 0x6b03 privk:0x7f6f41416820::7f6f41416820  90 67 43 41                                      .gCA
  4690 ms     | 0x6b03 privk:0x7f6f41416820::7f6f41416820  e5 e5 e5 e5                                      ....
  4692 ms  0x6b03 PK11_Encrypt()
  4692 ms  0x6b03 symkey:0x7f6f551b0200
  4692 ms  0x6b03 PK11_Encrypt()
  4692 ms  0x6b03 symkey:0x7f6f551b0200
  4693 ms  0x6b03 PK11_Encrypt()
  4693 ms  0x6b03 symkey:0x7f6f551b0200
           /* TID 0x6b1a */
  4896 ms  0x6b1a PR_Close()
  4896 ms  0x6b1a fd:0x7f6f414481c0
           /* TID 0x6b03 */
  4901 ms  0x6b03 SSL_ImportFD()
  4901 ms  0x6b03 ret:0x7f6f41448940
  4901 ms  0x6b03 SSL_AuthCertificateHook()
  4901 ms  0x6b03 fd:0x7f6f41448940
  4901 ms  0x6b03 ret:0x0
  4902 ms  0x6b03 PK11_Encrypt()
  4902 ms  0x6b03 symkey:0x7f6f551b0200
  4902 ms  0x6b03 PR_Connect()
  4902 ms  0x6b03 fd:0x7f6f41448940
  4943 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4943 ms  0x6b03 cx:0x7f6f525fb128
  4944 ms     | 0x6b03 EC_ValidatePublicKey()
  4944 ms     | 0x6b03 ret:0x0
  4944 ms  0x6b03 ret:0x7f6f41428020::7f6f41428020  30 58 5a 41                                      0XZA
  4944 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4944 ms  0x6b03 cx:0x7f6f525fb128
  4946 ms     | 0x6b03 EC_ValidatePublicKey()
  4950 ms     | 0x6b03 ret:0x0
  4950 ms  0x6b03 ret:0x7f6f4142a020::7f6f4142a020  b0 5a 5a 41                                      .ZZA
  4993 ms  SECKEY_ECParamsToKeySize()
  4994 ms  0x6b03 ret:0x100
  4994 ms  0x6b03 SECKEY_CreateECPrivateKey()
  4994 ms  0x6b03 cx:0x7f6f525fb128
  4995 ms     | 0x6b03 EC_ValidatePublicKey()
  4999 ms     | 0x6b03 ret:0x0
  4999 ms  0x6b03 ret:0x7f6f4142d020::7f6f4142d020  80 5d 5a 41                                      .]ZA
  4999 ms  0x6b03 PK11_PubDeriveWithKDF()
  4999 ms  0x6b03 seckey:0x7f6f4142d020
  4999 ms     | 0x6b03 EC_ValidatePublicKey()
  5004 ms     | 0x6b03 ret:0x0
  5008 ms  0x6b03 ret:0x7f6f53854c00
  5008 ms  0x6b03 PK11_DeriveWithFlags()
  5008 ms  0x6b03 basekey:0x7f6f53854c00
  5008 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5008 ms  0x6b03 ret:0x7f6f415e8600
  5008 ms  0x6b03 PK11_Derive()
  5008 ms  0x6b03 basekey:0x7f6f415e8600
  5008 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5009 ms  0x6b03 ret:0x7f6f415e8680
  5009 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5009 ms  0x6b03 privk:0x7f6f4142d020::7f6f4142d020  80 5d 5a 41                                      .]ZA
  5009 ms  0x6b03 privk:0x7f6f4142d020::7f6f4142d020  e5 e5 e5 e5                                      ....
  5009 ms  0x6b03 PK11_Encrypt()
  5009 ms  0x6b03 symkey:0x7f6f415e8800
  5009 ms  0x6b03 SSL_AuthCertificateComplete()
  5009 ms  0x6b03 fd:0x7f6f41448940
  5009 ms  0x6b03 err:0x0
  5010 ms  0x6b03 PK11_Encrypt()
  5010 ms  0x6b03 symkey:0x7f6f415e8800
  5051 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5051 ms  0x6b03 privk:0x7f6f4142a020::7f6f4142a020  b0 5a 5a 41                                      .ZZA
  5052 ms  0x6b03 privk:0x7f6f4142a020::7f6f4142a020  e5 e5 e5 e5                                      ....
  5052 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5052 ms  0x6b03 privk:0x7f6f41428020::7f6f41428020  30 58 5a 41                                      0XZA
  5052 ms  0x6b03 privk:0x7f6f41428020::7f6f41428020  e5 e5 e5 e5                                      ....
  5055 ms  0x6b03 PR_Close()
  5055 ms  0x6b03 fd:0x7f6f41448940
  5055 ms     | 0x6b03 PK11_Encrypt()
  5055 ms     | 0x6b03 symkey:0x7f6f415e8800
           /* TID 0x6b1a */
  5095 ms  0x6b1a PR_Close()
  5095 ms  0x6b1a fd:0x7f6f41448b50
           /* TID 0x6b03 */
  5168 ms  0x6b03 PK11_Encrypt()
  5168 ms  0x6b03 symkey:0x7f6f551b0200
  5230 ms  0x6b03 SSL_ImportFD()
  5230 ms  0x6b03 ret:0x7f6f41448880
  5230 ms  0x6b03 SSL_AuthCertificateHook()
  5230 ms  0x6b03 fd:0x7f6f41448880
  5230 ms  0x6b03 ret:0x0
  5230 ms  0x6b03 PR_Connect()
  5230 ms  0x6b03 fd:0x7f6f41448880
  5230 ms  0x6b03 SSL_ImportFD()
  5230 ms  0x6b03 ret:0x7f6f414488b0
  5230 ms  0x6b03 SSL_AuthCertificateHook()
  5230 ms  0x6b03 fd:0x7f6f414488b0
  5230 ms  0x6b03 ret:0x0
  5230 ms  0x6b03 PR_Connect()
  5230 ms  0x6b03 fd:0x7f6f414488b0
  5230 ms  0x6b03 SSL_ImportFD()
  5230 ms  0x6b03 ret:0x7f6f4124a790
  5230 ms  0x6b03 SSL_AuthCertificateHook()
  5230 ms  0x6b03 fd:0x7f6f4124a790
  5230 ms  0x6b03 ret:0x0
  5230 ms  0x6b03 PR_Connect()
  5230 ms  0x6b03 fd:0x7f6f4124a790
  5230 ms  0x6b03 SSL_ImportFD()
  5230 ms  0x6b03 ret:0x7f6f4124afa0
  5230 ms  0x6b03 SSL_AuthCertificateHook()
  5230 ms  0x6b03 fd:0x7f6f4124afa0
  5230 ms  0x6b03 ret:0x0
  5230 ms  0x6b03 PR_Connect()
  5230 ms  0x6b03 fd:0x7f6f4124afa0
  5256 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5256 ms  0x6b03 cx:0x7f6f525fbc88
  5257 ms     | 0x6b03 EC_ValidatePublicKey()
  5257 ms     | 0x6b03 ret:0x0
  5257 ms  0x6b03 ret:0x7f6f4126f820::7f6f4126f820  30 9d 6d 41                                      0.mA
  5257 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5257 ms  0x6b03 cx:0x7f6f525fbc88
  5261 ms     | 0x6b03 EC_ValidatePublicKey()
  5265 ms     | 0x6b03 ret:0x0
  5265 ms  0x6b03 ret:0x7f6f41271820::7f6f41271820  80 9d 6d 41                                      ..mA
  5266 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5266 ms  0x6b03 cx:0x7f6f525fbae8
  5268 ms     | 0x6b03 EC_ValidatePublicKey()
  5268 ms     | 0x6b03 ret:0x0
  5268 ms  0x6b03 ret:0x7f6f41274020::7f6f41274020  c0 9e 6d 41                                      ..mA
  5268 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5268 ms  0x6b03 cx:0x7f6f525fbae8
  5270 ms     | 0x6b03 EC_ValidatePublicKey()
  5273 ms     | 0x6b03 ret:0x0
  5274 ms  0x6b03 ret:0x7f6f41276020::7f6f41276020  70 9e 6f 41                                      p.oA
  5274 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5274 ms  0x6b03 cx:0x7f6f525fb948
  5276 ms     | 0x6b03 EC_ValidatePublicKey()
  5276 ms     | 0x6b03 ret:0x0
  5276 ms  0x6b03 ret:0x7f6f41278820::7f6f41278820  b0 c0 2f 41                                      ../A
  5276 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5276 ms  0x6b03 cx:0x7f6f525fb948
  5277 ms     | 0x6b03 EC_ValidatePublicKey()
  5281 ms     | 0x6b03 ret:0x0
  5281 ms  0x6b03 ret:0x7f6f4127a820::7f6f4127a820  90 c2 2f 41                                      ../A
  5286 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5286 ms  0x6b03 cx:0x7f6f525fb7a8
  5287 ms     | 0x6b03 EC_ValidatePublicKey()
  5287 ms     | 0x6b03 ret:0x0
  5287 ms  0x6b03 ret:0x7f6f41424820::7f6f41424820  d0 c3 2f 41                                      ../A
  5287 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5287 ms  0x6b03 cx:0x7f6f525fb7a8
  5288 ms     | 0x6b03 EC_ValidatePublicKey()
  5291 ms     | 0x6b03 ret:0x0
  5291 ms  0x6b03 ret:0x7f6f4130f820::7f6f4130f820  b0 c5 2f 41                                      ../A
  5292 ms  0x6b03 PK11_Derive()
  5292 ms  0x6b03 basekey:0x7f6f415e8680
  5292 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5292 ms  0x6b03 ret:0x7f6f415e8600
  5292 ms  0x6b03 PK11_PubDeriveWithKDF()
  5292 ms  0x6b03 seckey:0x7f6f41271820
  5292 ms     | 0x6b03 EC_ValidatePublicKey()
  5295 ms     | 0x6b03 ret:0x0
  5297 ms  0x6b03 ret:0x7f6f415e8680
  5297 ms  SECKEY_ECParamsToKeySize()
  5297 ms  0x6b03 ret:0x100
  5297 ms  0x6b03 PK11_DeriveWithFlags()
  5297 ms  0x6b03 basekey:0x7f6f415e8600
  5297 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5297 ms  0x6b03 ret:0x7f6f53854c00
  5297 ms  0x6b03 PK11_Derive()
  5297 ms  0x6b03 basekey:0x7f6f415e8680
  5297 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5297 ms  0x6b03 ret:0x7f6f415e8780
  5297 ms  0x6b03 PK11_DeriveWithFlags()
  5297 ms  0x6b03 basekey:0x7f6f415e8780
  5297 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5297 ms  0x6b03 ret:0x7f6f415e8600
  5297 ms  0x6b03 PK11_DeriveWithFlags()
  5297 ms  0x6b03 basekey:0x7f6f415e8780
  5297 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5298 ms  0x6b03 ret:0x7f6f415e8680
  5298 ms  0x6b03 PK11_DeriveWithFlags()
  5298 ms  0x6b03 basekey:0x7f6f415e8780
  5298 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5298 ms  0x6b03 ret:0x7f6f53854c00
  5298 ms  0x6b03 PK11_Derive()
  5298 ms  0x6b03 basekey:0x7f6f415e8880
  5298 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5298 ms  0x6b03 ret:0x7f6f415e8700
  5298 ms  0x6b03 PK11_DeriveWithFlags()
  5298 ms  0x6b03 basekey:0x7f6f415e8680
  5298 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5298 ms  0x6b03 ret:0x7f6f415e8780
  5298 ms  0x6b03 PK11_DeriveWithFlags()
  5298 ms  0x6b03 basekey:0x7f6f415e8680
  5298 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5298 ms  0x6b03 ret:0x7f6f53854c00
           /* TID 0x6b81 */
  5299 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5299 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  5299 ms  0x6b03 PK11_DeriveWithFlags()
  5299 ms  0x6b03 basekey:0x7f6f415e8680
  5299 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5299 ms  0x6b03 ret:0x7f6f53854c00
  5299 ms  0x6b03 SSL_AuthCertificateComplete()
  5299 ms  0x6b03 fd:0x7f6f4124afa0
  5299 ms  0x6b03 err:0x0
  5299 ms     | 0x6b03 PK11_DeriveWithFlags()
  5299 ms     | 0x6b03 basekey:0x7f6f415e8700
  5299 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5299 ms     | 0x6b03 ret:0x7f6f53854c00
  5299 ms     | 0x6b03 PK11_DeriveWithFlags()
  5299 ms     | 0x6b03 basekey:0x7f6f415e8700
  5299 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5299 ms     | 0x6b03 ret:0x7f6f415e8880
  5299 ms     | 0x6b03 PK11_DeriveWithFlags()
  5299 ms     | 0x6b03 basekey:0x7f6f415e8700
  5299 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5299 ms     | 0x6b03 ret:0x7f6f415e8800
  5299 ms     | 0x6b03 PK11_DeriveWithFlags()
  5299 ms     | 0x6b03 basekey:0x7f6f415e8600
  5299 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5299 ms     | 0x6b03 ret:0x7f6f41289500
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f415e8600
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f41289600
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f415e8880
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f41289600
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f415e8880
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f41289680
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f415e8600
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f415e8780
  5300 ms     | 0x6b03 PK11_Encrypt()
  5300 ms     | 0x6b03 symkey:0x7f6f41289500
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f53854c00
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f415e8780
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f53854c00
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f41289680
  5300 ms     | 0x6b03 PK11_DeriveWithFlags()
  5300 ms     | 0x6b03 basekey:0x7f6f415e8700
  5300 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5300 ms     | 0x6b03 ret:0x7f6f41289500
  5301 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5301 ms     | 0x6b03 privk:0x7f6f41271820::7f6f41271820  80 9d 6d 41                                      ..mA
  5301 ms     | 0x6b03 privk:0x7f6f41271820::7f6f41271820  e5 e5 e5 e5                                      ....
  5301 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5301 ms     | 0x6b03 privk:0x7f6f4126f820::7f6f4126f820  30 9d 6d 41                                      0.mA
  5301 ms     | 0x6b03 privk:0x7f6f4126f820::7f6f4126f820  e5 e5 e5 e5                                      ....
  5301 ms  0x6b03 PK11_Encrypt()
  5301 ms  0x6b03 symkey:0x7f6f415e8780
  5301 ms  0x6b03 PK11_Encrypt()
  5301 ms  0x6b03 symkey:0x7f6f415e8780
  5302 ms  0x6b03 PK11_Derive()
  5302 ms  0x6b03 basekey:0x7f6f415e8680
  5302 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5302 ms  0x6b03 ret:0x7f6f415e8600
  5302 ms  0x6b03 PK11_PubDeriveWithKDF()
  5302 ms  0x6b03 seckey:0x7f6f41276020
  5302 ms     | 0x6b03 EC_ValidatePublicKey()
  5304 ms     | 0x6b03 ret:0x0
  5305 ms  0x6b03 ret:0x7f6f415e8680
  5306 ms  SECKEY_ECParamsToKeySize()
  5306 ms  0x6b03 ret:0x100
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f415e8600
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f415e8700
  5306 ms  0x6b03 PK11_Derive()
  5306 ms  0x6b03 basekey:0x7f6f415e8680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f41289680
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f41289680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f415e8600
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f41289680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f415e8680
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f41289680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f415e8700
  5306 ms  0x6b03 PK11_Derive()
  5306 ms  0x6b03 basekey:0x7f6f41289800
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f41289880
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f415e8680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f41289680
  5306 ms  0x6b03 PK11_DeriveWithFlags()
  5306 ms  0x6b03 basekey:0x7f6f415e8680
  5306 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5306 ms  0x6b03 ret:0x7f6f415e8700
           /* TID 0x6b81 */
  5307 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5307 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  5307 ms  0x6b03 PK11_DeriveWithFlags()
  5307 ms  0x6b03 basekey:0x7f6f415e8680
  5307 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms  0x6b03 ret:0x7f6f415e8700
  5307 ms  0x6b03 SSL_AuthCertificateComplete()
  5307 ms  0x6b03 fd:0x7f6f4124a790
  5307 ms  0x6b03 err:0x0
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f41289880
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f415e8700
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f41289880
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289800
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f41289880
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289900
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f415e8600
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289980
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f415e8600
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289a00
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f41289800
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289a00
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f41289800
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289a80
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f415e8600
  5307 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5307 ms     | 0x6b03 ret:0x7f6f41289680
  5307 ms     | 0x6b03 PK11_Encrypt()
  5307 ms     | 0x6b03 symkey:0x7f6f41289980
  5307 ms     | 0x6b03 PK11_DeriveWithFlags()
  5307 ms     | 0x6b03 basekey:0x7f6f415e8700
  5308 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5308 ms     | 0x6b03 ret:0x7f6f41289680
  5308 ms     | 0x6b03 PK11_DeriveWithFlags()
  5308 ms     | 0x6b03 basekey:0x7f6f415e8700
  5308 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5308 ms     | 0x6b03 ret:0x7f6f41289a80
  5308 ms     | 0x6b03 PK11_DeriveWithFlags()
  5308 ms     | 0x6b03 basekey:0x7f6f41289880
  5308 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5308 ms     | 0x6b03 ret:0x7f6f41289980
  5308 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5308 ms     | 0x6b03 privk:0x7f6f41276020::7f6f41276020  70 9e 6f 41                                      p.oA
  5308 ms     | 0x6b03 privk:0x7f6f41276020::7f6f41276020  e5 e5 e5 e5                                      ....
  5308 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5308 ms     | 0x6b03 privk:0x7f6f41274020::7f6f41274020  c0 9e 6d 41                                      ..mA
  5308 ms     | 0x6b03 privk:0x7f6f41274020::7f6f41274020  e5 e5 e5 e5                                      ....
  5308 ms  0x6b03 PK11_Encrypt()
  5308 ms  0x6b03 symkey:0x7f6f41289680
  5308 ms  0x6b03 PK11_Derive()
  5308 ms  0x6b03 basekey:0x7f6f415e8680
  5308 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5308 ms  0x6b03 ret:0x7f6f415e8600
  5309 ms  0x6b03 PK11_PubDeriveWithKDF()
  5309 ms  0x6b03 seckey:0x7f6f4127a820
  5309 ms     | 0x6b03 EC_ValidatePublicKey()
  5310 ms     | 0x6b03 ret:0x0
  5312 ms  0x6b03 ret:0x7f6f415e8680
  5312 ms  SECKEY_ECParamsToKeySize()
  5312 ms  0x6b03 ret:0x100
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f415e8600
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289880
  5312 ms  0x6b03 PK11_Derive()
  5312 ms  0x6b03 basekey:0x7f6f415e8680
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289a80
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f41289a80
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f415e8600
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f41289a80
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f415e8680
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f41289a80
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289880
  5312 ms  0x6b03 PK11_Derive()
  5312 ms  0x6b03 basekey:0x7f6f41289b00
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289b80
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f415e8680
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289a80
  5312 ms  0x6b03 PK11_DeriveWithFlags()
  5312 ms  0x6b03 basekey:0x7f6f415e8680
  5312 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5312 ms  0x6b03 ret:0x7f6f41289880
           /* TID 0x6b81 */
  5313 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5313 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  5313 ms  0x6b03 PK11_DeriveWithFlags()
  5313 ms  0x6b03 basekey:0x7f6f415e8680
  5313 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5313 ms  0x6b03 ret:0x7f6f41289880
  5313 ms  0x6b03 PK11_Encrypt()
  5313 ms  0x6b03 symkey:0x7f6f415e8780
  5313 ms  0x6b03 SSL_AuthCertificateComplete()
  5313 ms  0x6b03 fd:0x7f6f414488b0
  5313 ms  0x6b03 err:0x0
  5313 ms     | 0x6b03 PK11_DeriveWithFlags()
  5313 ms     | 0x6b03 basekey:0x7f6f41289b80
  5313 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5313 ms     | 0x6b03 ret:0x7f6f41289880
  5313 ms     | 0x6b03 PK11_DeriveWithFlags()
  5313 ms     | 0x6b03 basekey:0x7f6f41289b80
  5313 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5313 ms     | 0x6b03 ret:0x7f6f41289b00
  5313 ms     | 0x6b03 PK11_DeriveWithFlags()
  5313 ms     | 0x6b03 basekey:0x7f6f41289b80
  5313 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5313 ms     | 0x6b03 ret:0x7f6f41289c00
  5313 ms     | 0x6b03 PK11_DeriveWithFlags()
  5313 ms     | 0x6b03 basekey:0x7f6f415e8600
  5313 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5313 ms     | 0x6b03 ret:0x7f6f41289c80
  5313 ms     | 0x6b03 PK11_DeriveWithFlags()
  5313 ms     | 0x6b03 basekey:0x7f6f415e8600
  5313 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289d00
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f41289b00
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289d00
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f41289b00
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289d80
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f415e8600
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289a80
  5314 ms     | 0x6b03 PK11_Encrypt()
  5314 ms     | 0x6b03 symkey:0x7f6f41289c80
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f41289880
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289a80
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f41289880
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289d80
  5314 ms     | 0x6b03 PK11_DeriveWithFlags()
  5314 ms     | 0x6b03 basekey:0x7f6f41289b80
  5314 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5314 ms     | 0x6b03 ret:0x7f6f41289c80
  5314 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5314 ms     | 0x6b03 privk:0x7f6f4127a820::7f6f4127a820  90 c2 2f 41                                      ../A
  5314 ms     | 0x6b03 privk:0x7f6f4127a820::7f6f4127a820  e5 e5 e5 e5                                      ....
  5314 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5314 ms     | 0x6b03 privk:0x7f6f41278820::7f6f41278820  b0 c0 2f 41                                      ../A
  5314 ms     | 0x6b03 privk:0x7f6f41278820::7f6f41278820  e5 e5 e5 e5                                      ....
  5314 ms  0x6b03 PK11_Encrypt()
  5314 ms  0x6b03 symkey:0x7f6f41289a80
  5315 ms  0x6b03 PK11_Encrypt()
  5315 ms  0x6b03 symkey:0x7f6f415e8780
  5318 ms  0x6b03 PK11_Derive()
  5318 ms  0x6b03 basekey:0x7f6f415e8680
  5318 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5318 ms  0x6b03 ret:0x7f6f415e8600
  5318 ms  0x6b03 PK11_PubDeriveWithKDF()
  5318 ms  0x6b03 seckey:0x7f6f4130f820
  5318 ms     | 0x6b03 EC_ValidatePublicKey()
  5319 ms     | 0x6b03 ret:0x0
  5321 ms  0x6b03 ret:0x7f6f415e8680
  5321 ms  SECKEY_ECParamsToKeySize()
  5321 ms  0x6b03 ret:0x100
  5321 ms  0x6b03 PK11_DeriveWithFlags()
  5321 ms  0x6b03 basekey:0x7f6f415e8600
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f41289b80
  5321 ms  0x6b03 PK11_Derive()
  5321 ms  0x6b03 basekey:0x7f6f415e8680
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f41289d80
  5321 ms  0x6b03 PK11_DeriveWithFlags()
  5321 ms  0x6b03 basekey:0x7f6f41289d80
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f415e8600
  5321 ms  0x6b03 PK11_DeriveWithFlags()
  5321 ms  0x6b03 basekey:0x7f6f41289d80
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f415e8680
  5321 ms  0x6b03 PK11_DeriveWithFlags()
  5321 ms  0x6b03 basekey:0x7f6f41289d80
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f41289b80
  5321 ms  0x6b03 PK11_Derive()
  5321 ms  0x6b03 basekey:0x7f6f41289e00
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5321 ms  0x6b03 ret:0x7f6f41289e80
  5321 ms  0x6b03 PK11_DeriveWithFlags()
  5321 ms  0x6b03 basekey:0x7f6f415e8680
  5321 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5322 ms  0x6b03 ret:0x7f6f41289d80
  5322 ms  0x6b03 PK11_DeriveWithFlags()
  5322 ms  0x6b03 basekey:0x7f6f415e8680
  5322 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5322 ms  0x6b03 ret:0x7f6f41289b80
           /* TID 0x6b81 */
  5322 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5322 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  5323 ms  0x6b03 PK11_DeriveWithFlags()
  5323 ms  0x6b03 basekey:0x7f6f415e8680
  5323 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms  0x6b03 ret:0x7f6f41289b80
  5323 ms  0x6b03 SSL_AuthCertificateComplete()
  5323 ms  0x6b03 fd:0x7f6f41448880
  5323 ms  0x6b03 err:0x0
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41289b80
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41289e00
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41289f80
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f415e8600
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f52508f80
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f415e8600
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f5b47c100
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e00
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f5b47c100
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e00
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41381080
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f415e8600
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41289d80
  5323 ms     | 0x6b03 PK11_Encrypt()
  5323 ms     | 0x6b03 symkey:0x7f6f52508f80
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289b80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41289d80
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289b80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f41381080
  5323 ms     | 0x6b03 PK11_DeriveWithFlags()
  5323 ms     | 0x6b03 basekey:0x7f6f41289e80
  5323 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  5323 ms     | 0x6b03 ret:0x7f6f52508f80
  5323 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5323 ms     | 0x6b03 privk:0x7f6f4130f820::7f6f4130f820  b0 c5 2f 41                                      ../A
  5323 ms     | 0x6b03 privk:0x7f6f4130f820::7f6f4130f820  e5 e5 e5 e5                                      ....
  5323 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5323 ms     | 0x6b03 privk:0x7f6f41424820::7f6f41424820  d0 c3 2f 41                                      ../A
  5324 ms     | 0x6b03 privk:0x7f6f41424820::7f6f41424820  e5 e5 e5 e5                                      ....
  5327 ms  0x6b03 PK11_DeriveWithFlags()
  5327 ms  0x6b03 basekey:0x7f6f41289500
  5327 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5327 ms  0x6b03 ret:0x7f6f415e8680
  5327 ms  0x6b03 PK11_DeriveWithFlags()
  5327 ms  0x6b03 basekey:0x7f6f41289500
  5328 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5328 ms  0x6b03 ret:0x7f6f415e8680
  5328 ms  0x6b03 PK11_Encrypt()
  5328 ms  0x6b03 symkey:0x7f6f41289d80
  5328 ms  0x6b03 PK11_Encrypt()
  5328 ms  0x6b03 symkey:0x7f6f415e8780
  5328 ms  0x6b03 PK11_Encrypt()
  5328 ms  0x6b03 symkey:0x7f6f415e8780
  5334 ms  0x6b03 PK11_DeriveWithFlags()
  5334 ms  0x6b03 basekey:0x7f6f41289980
  5334 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5334 ms  0x6b03 ret:0x7f6f415e8680
  5334 ms  0x6b03 PK11_DeriveWithFlags()
  5334 ms  0x6b03 basekey:0x7f6f41289980
  5334 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5334 ms  0x6b03 ret:0x7f6f415e8680
  5334 ms  0x6b03 PR_Close()
  5334 ms  0x6b03 fd:0x7f6f4124a790
  5334 ms     | 0x6b03 PK11_Encrypt()
  5334 ms     | 0x6b03 symkey:0x7f6f41289680
  5346 ms  0x6b03 PK11_DeriveWithFlags()
  5346 ms  0x6b03 basekey:0x7f6f41289c80
  5346 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5346 ms  0x6b03 ret:0x7f6f41289900
  5346 ms  0x6b03 PK11_DeriveWithFlags()
  5346 ms  0x6b03 basekey:0x7f6f41289c80
  5346 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5346 ms  0x6b03 ret:0x7f6f41289900
  5346 ms  0x6b03 PR_Close()
  5346 ms  0x6b03 fd:0x7f6f414488b0
  5346 ms     | 0x6b03 PK11_Encrypt()
  5346 ms     | 0x6b03 symkey:0x7f6f41289a80
  5349 ms  0x6b03 PK11_DeriveWithFlags()
  5349 ms  0x6b03 basekey:0x7f6f52508f80
  5349 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5349 ms  0x6b03 ret:0x7f6f41289c00
  5349 ms  0x6b03 PK11_DeriveWithFlags()
  5349 ms  0x6b03 basekey:0x7f6f52508f80
  5349 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5349 ms  0x6b03 ret:0x7f6f41289c00
  5349 ms  0x6b03 PR_Close()
  5349 ms  0x6b03 fd:0x7f6f41448880
  5349 ms     | 0x6b03 PK11_Encrypt()
  5349 ms     | 0x6b03 symkey:0x7f6f41289d80
           /* TID 0x6b0b */
  5353 ms  0x6b0b PR_Close()
  5353 ms  0x6b0b fd:0x7f6f412496a0
  5404 ms  0x6b0b PR_Close()
  5404 ms  0x6b0b fd:0x7f6f41249280
  5407 ms  0x6b0b PR_Close()
  5407 ms  0x6b0b fd:0x7f6f41249280
  5427 ms  0x6b0b PR_Close()
  5427 ms  0x6b0b fd:0x7f6f41249250
           /* TID 0x6b03 */
  5452 ms  0x6b03 PK11_Encrypt()
  5452 ms  0x6b03 symkey:0x7f6f551b0200
  5476 ms  0x6b03 PK11_Encrypt()
  5476 ms  0x6b03 symkey:0x7f6f415e8780
           /* TID 0x6b0b */
  5504 ms  0x6b0b PR_Close()
  5504 ms  0x6b0b fd:0x7f6f412496d0
           /* TID 0x6b03 */
  5589 ms  0x6b03 PK11_Encrypt()
  5589 ms  0x6b03 symkey:0x7f6f415e8780
  5590 ms  0x6b03 PK11_Encrypt()
  5590 ms  0x6b03 symkey:0x7f6f415e8780
           /* TID 0x6b0b */
  5644 ms  0x6b0b PR_Close()
  5644 ms  0x6b0b fd:0x7f6f412496a0
  5646 ms  0x6b0b PR_Close()
  5646 ms  0x6b0b fd:0x7f6f412e01c0
           /* TID 0x6b03 */
  5647 ms  0x6b03 PK11_Encrypt()
  5647 ms  0x6b03 symkey:0x7f6f415e8780
  5647 ms  0x6b03 PK11_Encrypt()
  5647 ms  0x6b03 symkey:0x7f6f415e8780
           /* TID 0x6b0b */
  5674 ms  0x6b0b PR_Close()
  5674 ms  0x6b0b fd:0x7f6f4124afd0
  5700 ms  0x6b0b PR_Close()
  5700 ms  0x6b0b fd:0x7f6f4124a7f0
           /* TID 0x6b03 */
  5804 ms  0x6b03 SSL_ImportFD()
  5804 ms  0x6b03 ret:0x7f6f412e0dc0
  5804 ms  0x6b03 SSL_AuthCertificateHook()
  5804 ms  0x6b03 fd:0x7f6f412e0dc0
  5804 ms  0x6b03 ret:0x0
  5804 ms  0x6b03 PR_Connect()
  5804 ms  0x6b03 fd:0x7f6f412e0dc0
  5815 ms  0x6b03 SSL_ImportFD()
  5815 ms  0x6b03 ret:0x7f6f53143bb0
  5815 ms  0x6b03 SSL_AuthCertificateHook()
  5815 ms  0x6b03 fd:0x7f6f53143bb0
  5815 ms  0x6b03 ret:0x0
  5815 ms  0x6b03 PR_Connect()
  5815 ms  0x6b03 fd:0x7f6f53143bb0
  5845 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5845 ms  0x6b03 cx:0x7f6f525fb7a8
  5845 ms     | 0x6b03 EC_ValidatePublicKey()
  5845 ms     | 0x6b03 ret:0x0
  5845 ms  0x6b03 ret:0x7f6f4127b020::7f6f4127b020  d0 9d 6d 41                                      ..mA
  5846 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5846 ms  0x6b03 cx:0x7f6f525fb7a8
  5846 ms     | 0x6b03 EC_ValidatePublicKey()
  5848 ms     | 0x6b03 ret:0x0
  5848 ms  0x6b03 ret:0x7f6f4130e820::7f6f4130e820  90 9c 6f 41                                      ..oA
  5856 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5856 ms  0x6b03 cx:0x7f6f525fbfc8
  5857 ms     | 0x6b03 EC_ValidatePublicKey()
  5857 ms     | 0x6b03 ret:0x0
  5857 ms  0x6b03 ret:0x7f6f41314820::7f6f41314820  70 9e 6f 41                                      p.oA
  5857 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5857 ms  0x6b03 cx:0x7f6f525fbfc8
  5858 ms     | 0x6b03 EC_ValidatePublicKey()
  5859 ms     | 0x6b03 ret:0x0
  5859 ms  0x6b03 ret:0x7f6f41316820::7f6f41316820  c0 0e 84 5c                                      ...\
  5892 ms  SECKEY_ECParamsToKeySize()
  5892 ms  0x6b03 ret:0x100
  5892 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5892 ms  0x6b03 cx:0x7f6f525fb7a8
  5892 ms     | 0x6b03 EC_ValidatePublicKey()
  5894 ms     | 0x6b03 ret:0x0
  5894 ms  0x6b03 ret:0x7f6f4131f020::7f6f4131f020  00 16 6d 5f                                      ..m_
  5894 ms  0x6b03 PK11_PubDeriveWithKDF()
  5894 ms  0x6b03 seckey:0x7f6f4131f020
  5894 ms     | 0x6b03 EC_ValidatePublicKey()
  5896 ms     | 0x6b03 ret:0x0
  5897 ms  0x6b03 ret:0x7f6f41289f80
  5897 ms  0x6b03 PK11_DeriveWithFlags()
  5897 ms  0x6b03 basekey:0x7f6f41289f80
  5897 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5897 ms  0x6b03 ret:0x7f6f41289e00
  5897 ms  0x6b03 PK11_Derive()
  5897 ms  0x6b03 basekey:0x7f6f41289e00
  5897 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5897 ms  0x6b03 ret:0x7f6f41289b80
  5897 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5897 ms  0x6b03 privk:0x7f6f4131f020::7f6f4131f020  00 16 6d 5f                                      ..m_
  5897 ms  0x6b03 privk:0x7f6f4131f020::7f6f4131f020  e5 e5 e5 e5                                      ....
  5897 ms  0x6b03 PK11_Encrypt()
  5897 ms  0x6b03 symkey:0x7f6f41371b00
  5903 ms  SECKEY_ECParamsToKeySize()
  5903 ms  0x6b03 ret:0x100
  5903 ms  0x6b03 SECKEY_CreateECPrivateKey()
  5903 ms  0x6b03 cx:0x7f6f525fbfc8
  5903 ms     | 0x6b03 EC_ValidatePublicKey()
  5905 ms     | 0x6b03 ret:0x0
  5905 ms  0x6b03 ret:0x7f6f41324820::7f6f41324820  e0 17 6d 5f                                      ..m_
  5905 ms  0x6b03 PK11_PubDeriveWithKDF()
  5905 ms  0x6b03 seckey:0x7f6f41324820
  5905 ms     | 0x6b03 EC_ValidatePublicKey()
  5907 ms     | 0x6b03 ret:0x0
  5909 ms  0x6b03 ret:0x7f6f41289f80
  5909 ms  0x6b03 PK11_DeriveWithFlags()
  5909 ms  0x6b03 basekey:0x7f6f41289f80
  5909 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5909 ms  0x6b03 ret:0x7f6f52508f80
  5909 ms  0x6b03 PK11_Derive()
  5909 ms  0x6b03 basekey:0x7f6f52508f80
  5909 ms     | 0x6b03 PK11_DeriveWithTemplate()
  5909 ms  0x6b03 ret:0x7f6f5b47c100
  5909 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5909 ms  0x6b03 privk:0x7f6f41324820::7f6f41324820  e0 17 6d 5f                                      ..m_
  5909 ms  0x6b03 privk:0x7f6f41324820::7f6f41324820  e5 e5 e5 e5                                      ....
  5909 ms  0x6b03 PK11_Encrypt()
  5909 ms  0x6b03 symkey:0x7f6f41381900
  5911 ms  0x6b03 PR_Connect()
  5911 ms  0x6b03 fd:0x7f6f413ca940
           /* TID 0x6b81 */
  5924 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5924 ms  0x6b81 ret:0x0
           /* TID 0x6b0b */
  5925 ms  0x6b0b PR_Close()
  5925 ms  0x6b0b fd:0x7f6f413ca7f0
           /* TID 0x6b03 */
  5925 ms  0x6b03 SSL_AuthCertificateComplete()
  5925 ms  0x6b03 fd:0x7f6f412e0dc0
  5925 ms  0x6b03 err:0x0
  5925 ms  0x6b03 PK11_Encrypt()
  5925 ms  0x6b03 symkey:0x7f6f41371b00
  5925 ms  0x6b03 PK11_Encrypt()
  5925 ms  0x6b03 symkey:0x7f6f41371b00
  5939 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5939 ms  0x6b03 privk:0x7f6f4130e820::7f6f4130e820  90 9c 6f 41                                      ..oA
  5940 ms  0x6b03 privk:0x7f6f4130e820::7f6f4130e820  e5 e5 e5 e5                                      ....
  5940 ms  0x6b03 SECKEY_DestroyPrivateKey()
  5940 ms  0x6b03 privk:0x7f6f4127b020::7f6f4127b020  d0 9d 6d 41                                      ..mA
  5940 ms  0x6b03 privk:0x7f6f4127b020::7f6f4127b020  e5 e5 e5 e5                                      ....
  5940 ms  0x6b03 PK11_Encrypt()
  5940 ms  0x6b03 symkey:0x7f6f41371b00
           /* TID 0x6bb3 */
  5951 ms  0x6bb3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5951 ms  0x6bb3 ret:0x0
           /* TID 0x6b0b */
  5952 ms  0x6b0b PR_Close()
  5952 ms  0x6b0b fd:0x7f6f412e0ee0
           /* TID 0x6b03 */
  5952 ms  0x6b03 SSL_AuthCertificateComplete()
  5952 ms  0x6b03 fd:0x7f6f53143bb0
  5952 ms  0x6b03 err:0x0
  5952 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5952 ms     | 0x6b03 privk:0x7f6f41316820::7f6f41316820  c0 0e 84 5c                                      ...\
  5952 ms     | 0x6b03 privk:0x7f6f41316820::7f6f41316820  e5 e5 e5 e5                                      ....
  5952 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  5952 ms     | 0x6b03 privk:0x7f6f41314820::7f6f41314820  70 9e 6f 41                                      p.oA
  5952 ms     | 0x6b03 privk:0x7f6f41314820::7f6f41314820  e5 e5 e5 e5                                      ....
  5953 ms  0x6b03 PK11_Encrypt()
  5953 ms  0x6b03 symkey:0x7f6f41381900
  5953 ms  0x6b03 PK11_Encrypt()
  5953 ms  0x6b03 symkey:0x7f6f41381900
  5953 ms  0x6b03 PK11_Encrypt()
  5953 ms  0x6b03 symkey:0x7f6f41381900
  6019 ms  0x6b03 SSL_ImportFD()
  6021 ms  0x6b03 ret:0x7f6f413caac0
  6021 ms  0x6b03 SSL_AuthCertificateHook()
  6021 ms  0x6b03 fd:0x7f6f413caac0
  6021 ms  0x6b03 ret:0x0
  6021 ms  0x6b03 PR_Connect()
  6021 ms  0x6b03 fd:0x7f6f413caac0
  6060 ms  0x6b03 SECKEY_CreateECPrivateKey()
  6060 ms  0x6b03 cx:0x7f6f525fc7e8
  6063 ms     | 0x6b03 EC_ValidatePublicKey()
  6063 ms     | 0x6b03 ret:0x0
  6064 ms  0x6b03 ret:0x7f6f4130e820::7f6f4130e820  60 9f 6d 41                                      `.mA
  6064 ms  0x6b03 SECKEY_CreateECPrivateKey()
  6064 ms  0x6b03 cx:0x7f6f525fc7e8
  6066 ms     | 0x6b03 EC_ValidatePublicKey()
  6071 ms     | 0x6b03 ret:0x0
  6071 ms  0x6b03 ret:0x7f6f41314820::7f6f41314820  80 e3 74 58                                      ..tX
           /* TID 0x6b0b */
  6101 ms  0x6b0b PR_Close()
  6101 ms  0x6b0b fd:0x7f6f413cac10
           /* TID 0x6b03 */
  6126 ms  0x6b03 PK11_Derive()
  6126 ms  0x6b03 basekey:0x7f6f41289f80
  6127 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6127 ms  0x6b03 ret:0x7f6f41289d80
  6127 ms  0x6b03 PK11_PubDeriveWithKDF()
  6127 ms  0x6b03 seckey:0x7f6f4130e820
  6127 ms     | 0x6b03 EC_ValidatePublicKey()
  6127 ms     | 0x6b03 ret:0x0
  6128 ms  0x6b03 ret:0x7f6f41289f80
  6128 ms  SECKEY_ECParamsToKeySize()
  6128 ms  0x6b03 ret:0xff
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289d80
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289c00
  6128 ms  0x6b03 PK11_Derive()
  6128 ms  0x6b03 basekey:0x7f6f41289f80
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289b00
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289b00
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289d80
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289b00
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289f80
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289b00
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289c00
  6128 ms  0x6b03 PK11_Derive()
  6128 ms  0x6b03 basekey:0x7f6f41289880
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289c80
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289f80
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289b00
  6128 ms  0x6b03 PK11_DeriveWithFlags()
  6128 ms  0x6b03 basekey:0x7f6f41289f80
  6128 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6128 ms  0x6b03 ret:0x7f6f41289c00
  6132 ms  0x6b03 PK11_DeriveWithFlags()
  6132 ms  0x6b03 basekey:0x7f6f41289f80
  6132 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6132 ms  0x6b03 ret:0x7f6f41289c00
  6132 ms  0x6b03 PR_Connect()
  6132 ms  0x6b03 fd:0x7f6f413f55e0
           /* TID 0x6b0b */
  6333 ms  0x6b0b PR_Close()
  6333 ms  0x6b0b fd:0x7f6f4117a1f0
           /* TID 0x6b81 */
  6333 ms  0x6b81 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6333 ms  0x6b81 ret:0x0
           /* TID 0x6b03 */
  6347 ms  0x6b03 SSL_AuthCertificateComplete()
  6347 ms  0x6b03 fd:0x7f6f413caac0
  6347 ms  0x6b03 err:0x0
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289c80
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6347 ms     | 0x6b03 ret:0x7f6f41289c00
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289c80
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6347 ms     | 0x6b03 ret:0x7f6f41289880
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289c80
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6347 ms     | 0x6b03 ret:0x7f6f41289d00
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289d80
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6347 ms     | 0x6b03 ret:0x7f6f41289a80
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289d80
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6347 ms     | 0x6b03 ret:0x7f6f41289900
  6347 ms     | 0x6b03 PK11_DeriveWithFlags()
  6347 ms     | 0x6b03 basekey:0x7f6f41289880
  6347 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6348 ms     | 0x6b03 ret:0x7f6f41289900
  6348 ms     | 0x6b03 PK11_DeriveWithFlags()
  6348 ms     | 0x6b03 basekey:0x7f6f41289880
  6348 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6348 ms     | 0x6b03 ret:0x7f6f41289800
  6348 ms     | 0x6b03 PK11_DeriveWithFlags()
  6348 ms     | 0x6b03 basekey:0x7f6f41289d80
  6348 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6348 ms     | 0x6b03 ret:0x7f6f41289b00
  6348 ms     | 0x6b03 PK11_Encrypt()
  6348 ms     | 0x6b03 symkey:0x7f6f41289a80
  6349 ms     | 0x6b03 PK11_DeriveWithFlags()
  6349 ms     | 0x6b03 basekey:0x7f6f41289c00
  6349 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6349 ms     | 0x6b03 ret:0x7f6f41289b00
  6349 ms     | 0x6b03 PK11_DeriveWithFlags()
  6349 ms     | 0x6b03 basekey:0x7f6f41289c00
  6349 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6349 ms     | 0x6b03 ret:0x7f6f41289800
  6349 ms     | 0x6b03 PK11_DeriveWithFlags()
  6349 ms     | 0x6b03 basekey:0x7f6f41289c80
  6349 ms     |    | 0x6b03 PK11_DeriveWithTemplate()
  6349 ms     | 0x6b03 ret:0x7f6f41289a80
  6349 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  6349 ms     | 0x6b03 privk:0x7f6f41314820::7f6f41314820  80 e3 74 58                                      ..tX
  6349 ms     | 0x6b03 privk:0x7f6f41314820::7f6f41314820  e5 e5 e5 e5                                      ....
  6350 ms     | 0x6b03 SECKEY_DestroyPrivateKey()
  6350 ms     | 0x6b03 privk:0x7f6f4130e820::7f6f4130e820  60 9f 6d 41                                      `.mA
  6350 ms     | 0x6b03 privk:0x7f6f4130e820::7f6f4130e820  e5 e5 e5 e5                                      ....
  6352 ms  0x6b03 PK11_Encrypt()
  6352 ms  0x6b03 symkey:0x7f6f41289b00
  6352 ms  0x6b03 PK11_Encrypt()
  6352 ms  0x6b03 symkey:0x7f6f41289b00
  6386 ms  0x6b03 PK11_DeriveWithFlags()
  6386 ms  0x6b03 basekey:0x7f6f41289a80
  6386 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6386 ms  0x6b03 ret:0x7f6f41289f80
  6386 ms  0x6b03 PK11_DeriveWithFlags()
  6386 ms  0x6b03 basekey:0x7f6f41289a80
  6386 ms     | 0x6b03 PK11_DeriveWithTemplate()
  6386 ms  0x6b03 ret:0x7f6f41289f80
  6386 ms  0x6b03 PK11_Encrypt()
  6386 ms  0x6b03 symkey:0x7f6f41289b00
  6435 ms  0x6b03 PK11_Encrypt()
  6435 ms  0x6b03 symkey:0x7f6f41289b00
           /* TID 0x6b0b */
  6436 ms  0x6b0b PR_Close()
  6436 ms  0x6b0b fd:0x7f6f4117a4c0
           /* TID 0x6b03 */
  6450 ms  0x6b03 PK11_Encrypt()
  6450 ms  0x6b03 symkey:0x7f6f41289b00
  6556 ms  0x6b03 PK11_Encrypt()
  6556 ms  0x6b03 symkey:0x7f6f41289b00
  6565 ms  0x6b03 PR_Close()
  6565 ms  0x6b03 fd:0x7f6f538b1670
           /* TID 0x6af8 */
  6567 ms  0x6af8 EC_ValidatePublicKey()
  6568 ms  0x6af8 ret:0x0
  6568 ms  0x6af8 EC_ValidatePublicKey()
  6569 ms  0x6af8 ret:0x0
  6569 ms  0x6af8 EC_ValidatePublicKey()
  6571 ms  0x6af8 ret:0x0
  6571 ms  0x6af8 EC_ValidatePublicKey()
  6573 ms  0x6af8 ret:0x0
  6573 ms  0x6af8 EC_ValidatePublicKey()
  6574 ms  0x6af8 ret:0x0
  6574 ms  0x6af8 EC_ValidatePublicKey()
  6576 ms  0x6af8 ret:0x0
  6576 ms  0x6af8 EC_ValidatePublicKey()
  6577 ms  0x6af8 ret:0x0
  6577 ms  0x6af8 EC_ValidatePublicKey()
  6578 ms  0x6af8 ret:0x0
  6578 ms  0x6af8 EC_ValidatePublicKey()
  6580 ms  0x6af8 ret:0x0
  6580 ms  0x6af8 EC_ValidatePublicKey()
  6581 ms  0x6af8 ret:0x0
           /* TID 0x6b03 */
  6582 ms  0x6b03 PK11_Encrypt()
  6582 ms  0x6b03 symkey:0x7f6f41381900
  6582 ms  0x6b03 PK11_Encrypt()
  6582 ms  0x6b03 symkey:0x7f6f551b0200
  6582 ms  0x6b03 PK11_Encrypt()
  6582 ms  0x6b03 symkey:0x7f6f415e8780
  6582 ms  0x6b03 PK11_Encrypt()
  6582 ms  0x6b03 symkey:0x7f6f41289b00
  6582 ms  0x6b03 PK11_Encrypt()
  6582 ms  0x6b03 symkey:0x7f6f41371b00
  6582 ms  0x6b03 PR_Close()
  6582 ms  0x6b03 fd:0x7f6f413ca940
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f416422b0
  6583 ms     | 0x6b03 PK11_Encrypt()
  6583 ms     | 0x6b03 symkey:0x7f6f41615b80
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f41642070
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f525324f0
  6583 ms     | 0x6b03 PK11_Encrypt()
  6583 ms     | 0x6b03 symkey:0x7f6f41614d00
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f53cf0e50
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f53cf0880
  6583 ms     | 0x6b03 PK11_Encrypt()
  6583 ms     | 0x6b03 symkey:0x7f6f538b8480
  6583 ms  0x6b03 PR_Close()
  6583 ms  0x6b03 fd:0x7f6f413f55e0
  6584 ms  0x6b03 PR_Close()
  6584 ms  0x6b03 fd:0x7f6f53cf0040
  6584 ms     | 0x6b03 PK11_Encrypt()
  6584 ms     | 0x6b03 symkey:0x7f6f574c9c80
  6584 ms  0x6b03 PR_Close()
  6584 ms  0x6b03 fd:0x7f6f412e0dc0
  6584 ms     | 0x6b03 PK11_Encrypt()
  6584 ms     | 0x6b03 symkey:0x7f6f41371b00
  6584 ms  0x6b03 PR_Close()
  6584 ms  0x6b03 fd:0x7f6f4124afa0
  6584 ms     | 0x6b03 PK11_Encrypt()
  6584 ms     | 0x6b03 symkey:0x7f6f415e8780
  6584 ms  0x6b03 PR_Close()
  6584 ms  0x6b03 fd:0x7f6f551ae7f0
  6584 ms     | 0x6b03 PK11_Encrypt()
  6584 ms     | 0x6b03 symkey:0x7f6f551b0200
  6584 ms  0x6b03 PR_Close()
  6584 ms  0x6b03 fd:0x7f6f413caac0
  6585 ms     | 0x6b03 PK11_Encrypt()
  6585 ms     | 0x6b03 symkey:0x7f6f41289b00
  6585 ms  0x6b03 PR_Close()
  6585 ms  0x6b03 fd:0x7f6f53143bb0
  6585 ms     | 0x6b03 PK11_Encrypt()
  6585 ms     | 0x6b03 symkey:0x7f6f41381900
           /* TID 0x6b67 */
  6585 ms  0x6b67 PR_Close()
  6585 ms  0x6b67 fd:0x7f6f4117afa0
  6585 ms  0x6b67 PR_Close()
  6585 ms  0x6b67 fd:0x7f6f4117afa0
           /* TID 0x6af8 */
  6595 ms  0x6af8 PR_Close()
  6595 ms  0x6af8 fd:0x7f6f53143760
  6595 ms  0x6af8 PR_Close()
  6595 ms  0x6af8 fd:0x7f6f412e0970
  6596 ms  0x6af8 PR_Close()
  6596 ms  0x6af8 fd:0x7f6f412e09d0
  6596 ms  0x6af8 PR_Close()
  6596 ms  0x6af8 fd:0x7f6f412e0970
  6597 ms  0x6af8 PR_Close()
  6597 ms  0x6af8 fd:0x7f6f412e09d0
  6597 ms  0x6af8 PR_Close()
  6597 ms  0x6af8 fd:0x7f6f412e0970
           /* TID 0x6b7f */
  6601 ms  0x6b7f PR_Close()
  6601 ms  0x6b7f fd:0x7f6f412e0970
           /* TID 0x6af8 */
  6619 ms  0x6af8 PR_Close()
  6619 ms  0x6af8 fd:0x7f6f412e09d0
  6619 ms  0x6af8 PR_Close()
  6619 ms  0x6af8 fd:0x7f6f413caee0
  6620 ms  0x6af8 PR_Close()
  6620 ms  0x6af8 fd:0x7f6f412e09d0
  6620 ms  0x6af8 PR_Close()
  6620 ms  0x6af8 fd:0x7f6f413caee0
  6621 ms  0x6af8 PR_Close()
  6621 ms  0x6af8 fd:0x7f6f5d6c89a0
  6621 ms  0x6af8 PR_Close()
  6621 ms  0x6af8 fd:0x7f6f5d6c88b0
  6621 ms  0x6af8 PR_Close()
  6621 ms  0x6af8 fd:0x7f6f5d6c8a60
  6623 ms  0x6af8 PR_Close()
  6623 ms  0x6af8 fd:0x7f6f413caf40
  6625 ms  0x6af8 PR_Close()
  6625 ms  0x6af8 fd:0x7f6f413caf40
  6627 ms  0x6af8 PR_Close()
  6627 ms  0x6af8 fd:0x7f6f412e09d0
  6627 ms  0x6af8 PR_Close()
  6627 ms  0x6af8 fd:0x7f6f413cafa0
  6628 ms  0x6af8 PR_Close()
  6628 ms  0x6af8 fd:0x7f6f412e09d0
  6628 ms  0x6af8 PR_Close()
  6628 ms  0x6af8 fd:0x7f6f413cafa0
  6630 ms  0x6af8 PR_Close()
  6630 ms  0x6af8 fd:0x7f6f413f55b0
  6631 ms  0x6af8 PR_Close()
  6631 ms  0x6af8 fd:0x7f6f413f55b0
  6633 ms  0x6af8 PR_Close()
  6633 ms  0x6af8 fd:0x7f6f412e09d0
  6633 ms  0x6af8 PR_Close()
  6633 ms  0x6af8 fd:0x7f6f413f5700
  6634 ms  0x6af8 PR_Close()
  6634 ms  0x6af8 fd:0x7f6f412e09d0
  6634 ms  0x6af8 PR_Close()
  6634 ms  0x6af8 fd:0x7f6f413f5700
  6636 ms  0x6af8 PR_Close()
  6636 ms  0x6af8 fd:0x7f6f413f58e0
  6637 ms  0x6af8 PR_Close()
  6637 ms  0x6af8 fd:0x7f6f413f58e0
  6643 ms  0x6af8 PR_Close()
  6643 ms  0x6af8 fd:0x7f6f41642070
  6644 ms  0x6af8 PR_Close()
  6644 ms  0x6af8 fd:0x7f6f41642070
  6646 ms  0x6af8 PR_Close()
  6646 ms  0x6af8 fd:0x7f6f416420a0
           /* TID 0x6b7f */
  6651 ms  0x6b7f PR_Close()
  6651 ms  0x6b7f fd:0x7f6f4124a550
           /* TID 0x6af8 */
  6655 ms  0x6af8 PR_Close()
  6655 ms  0x6af8 fd:0x7f6f412e09d0
  6655 ms  0x6af8 PR_Close()
  6655 ms  0x6af8 fd:0x7f6f413ca550
           /* TID 0x6b7f */
  6656 ms  0x6b7f PR_Close()
  6656 ms  0x6b7f fd:0x7f6f4124a550
  6662 ms  0x6b7f PR_Close()
  6662 ms  0x6b7f fd:0x7f6f412e0970
  6685 ms  0x6b7f PR_Close()
  6685 ms  0x6b7f fd:0x7f6f4117aeb0
           /* TID 0x6b03 */
  6693 ms  0x6b03 SSL_ImportFD()
  6693 ms  0x6b03 ret:0x7f6f41249e20
  6693 ms  0x6b03 SSL_AuthCertificateHook()
  6693 ms  0x6b03 fd:0x7f6f41249e20
  6693 ms  0x6b03 ret:0x0
  6693 ms  0x6b03 PR_Connect()
  6693 ms  0x6b03 fd:0x7f6f41249e20
           /* TID 0x6afd */
  6694 ms  0x6afd PR_Close()
  6694 ms  0x6afd fd:0x7f6f5bf4ee80
           /* TID 0x6b03 */
  6695 ms  0x6b03 PR_Close()
  6695 ms  0x6b03 fd:0x7f6f41249e20
           /* TID 0x6b7f */
  6702 ms  0x6b7f PR_Close()
  6702 ms  0x6b7f fd:0x7f6f41249100
           /* TID 0x6afd */
  6715 ms  0x6afd PR_Close()
  6715 ms  0x6afd fd:0x7f6f58748790
           /* TID 0x6af8 */
  6715 ms  0x6af8 PR_Close()
  6715 ms  0x6af8 fd:0x7f6f412e09d0
  6715 ms  0x6af8 PR_Close()
  6715 ms  0x6af8 fd:0x7f6f41249e20
           /* TID 0x6b03 */
  6716 ms  0x6b03 PR_Close()
  6716 ms  0x6b03 fd:0x7f6f52929d00
           /* TID 0x6b67 */
  6716 ms  0x6b67 PR_Close()
  6716 ms  0x6b67 fd:0x7f6f4124a1f0
  6716 ms  0x6b67 PR_Close()
  6716 ms  0x6b67 fd:0x7f6f4124a1f0
  6716 ms  0x6b67 PR_Close()
  6716 ms  0x6b67 fd:0x7f6f4124a1f0
  6716 ms  0x6b67 PR_Close()
  6716 ms  0x6b67 fd:0x7f6f4124a220
           /* TID 0x6b7f */
  6717 ms  0x6b7f PR_Close()
  6717 ms  0x6b7f fd:0x7f6f4124a220
           /* TID 0x6b0b */
  6720 ms  0x6b0b PR_Close()
  6720 ms  0x6b0b fd:0x7f6f4169a2b0
  6720 ms  0x6b0b PR_Close()
  6720 ms  0x6b0b fd:0x7f6f4169a2e0
           /* TID 0x6afd */
  6726 ms  0x6afd PR_Close()
  6726 ms  0x6afd fd:0x7f6f53cf01f0
           /* TID 0x6af8 */
  6728 ms  0x6af8 PR_Close()
  6728 ms  0x6af8 fd:0x7f6f4124a040
  6728 ms  0x6af8 PR_Close()
  6728 ms  0x6af8 fd:0x7f6f414485b0
           /* TID 0x6b7f */
  6730 ms  0x6b7f PR_Close()
  6730 ms  0x6b7f fd:0x7f6f4124a6d0
  6732 ms  0x6b7f PR_Close()
  6732 ms  0x6b7f fd:0x7f6f4124a6d0
  6764 ms  0x6b7f PR_Close()
  6764 ms  0x6b7f fd:0x7f6f412496d0
  6765 ms  0x6b7f PR_Close()
  6765 ms  0x6b7f fd:0x7f6f412496d0
  6799 ms  0x6b7f PR_Close()
  6799 ms  0x6b7f fd:0x7f6f412e0040
  6802 ms  0x6b7f PR_Close()
  6802 ms  0x6b7f fd:0x7f6f412e0370
  6823 ms  0x6b7f PR_Close()
  6823 ms  0x6b7f fd:0x7f6f413f54c0
  6830 ms  0x6b7f PR_Close()
  6830 ms  0x6b7f fd:0x7f6f413f5dc0
  6837 ms  0x6b7f PR_Close()
  6837 ms  0x6b7f fd:0x7f6f414483d0
  6847 ms  0x6b7f PR_Close()
  6847 ms  0x6b7f fd:0x7f6f41448580
  6848 ms  0x6b7f PR_Close()
  6848 ms  0x6b7f fd:0x7f6f41448580
           /* TID 0x6af8 */
  7005 ms  0x6af8 PR_Close()
  7005 ms  0x6af8 fd:0x7f6f41249a00
  7005 ms  0x6af8 PR_Close()
  7005 ms  0x6af8 fd:0x7f6f41249a00
  7012 ms  0x6af8 PR_Close()
  7012 ms  0x6af8 fd:0x7f6f7aada130
  7012 ms  0x6af8 PR_Close()
  7012 ms  0x6af8 fd:0x7f6f7aada190
Process terminated
