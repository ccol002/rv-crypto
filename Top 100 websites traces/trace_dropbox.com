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
           /* TID 0x1974 */
    56 ms  0x1974 SECKEY_DestroyPrivateKey()
    56 ms  0x1974 privk:0x7f8cf906e820::7f8cf906e820  60 a5 30 06                                      `.0.
    56 ms  0x1974 privk:0x7f8cf906e820::7f8cf906e820  e5 e5 e5 e5                                      ....
    56 ms  0x1974 SECKEY_DestroyPrivateKey()
    56 ms  0x1974 privk:0x7f8cf906c820::7f8cf906c820  90 d7 37 fa                                      ..7.
    56 ms  0x1974 privk:0x7f8cf906c820::7f8cf906c820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
   260 ms  0x197c PR_Close()
   260 ms  0x197c fd:0x7f8cf9512940
           /* TID 0x1974 */
   321 ms  0x1974 SSL_ImportFD()
   321 ms  0x1974 ret:0x7f8cf951c4f0
   321 ms  0x1974 SSL_AuthCertificateHook()
   321 ms  0x1974 fd:0x7f8cf951c4f0
   321 ms  0x1974 ret:0x0
   321 ms  0x1974 PR_Connect()
   321 ms  0x1974 fd:0x7f8cf951c4f0
   534 ms  0x1974 SECKEY_CreateECPrivateKey()
   534 ms  0x1974 cx:0x7f8cf9515ae8
   536 ms     | 0x1974 EC_ValidatePublicKey()
   536 ms     | 0x1974 ret:0x0
   536 ms  0x1974 ret:0x7f8cf94e4020::7f8cf94e4020  c0 7e 5a f9                                      .~Z.
   536 ms  0x1974 SECKEY_CreateECPrivateKey()
   536 ms  0x1974 cx:0x7f8cf9515ae8
   539 ms     | 0x1974 EC_ValidatePublicKey()
   544 ms     | 0x1974 ret:0x0
   544 ms  0x1974 ret:0x7f8cf94e6020::7f8cf94e6020  60 10 41 e8                                      `.A.
   764 ms  SECKEY_ECParamsToKeySize()
   764 ms  0x1974 ret:0x100
   764 ms  0x1974 SECKEY_CreateECPrivateKey()
   764 ms  0x1974 cx:0x7f8cf9515ae8
   764 ms     | 0x1974 EC_ValidatePublicKey()
   766 ms     | 0x1974 ret:0x0
   766 ms  0x1974 ret:0x7f8ce842d020::7f8ce842d020  00 1b 41 e8                                      ..A.
   766 ms  0x1974 PK11_PubDeriveWithKDF()
   766 ms  0x1974 seckey:0x7f8ce842d020
   766 ms     | 0x1974 EC_ValidatePublicKey()
   767 ms     | 0x1974 ret:0x0
   769 ms  0x1974 ret:0x7f8cfa8fc600
   769 ms  0x1974 PK11_DeriveWithFlags()
   769 ms  0x1974 basekey:0x7f8cfa8fc600
   769 ms     | 0x1974 PK11_DeriveWithTemplate()
   769 ms  0x1974 ret:0x7f8ce8407a00
   769 ms  0x1974 PK11_Derive()
   769 ms  0x1974 basekey:0x7f8ce8407a00
   769 ms     | 0x1974 PK11_DeriveWithTemplate()
   769 ms  0x1974 ret:0x7f8ce8407a80
   769 ms  0x1974 SECKEY_DestroyPrivateKey()
   769 ms  0x1974 privk:0x7f8ce842d020::7f8ce842d020  00 1b 41 e8                                      ..A.
   769 ms  0x1974 privk:0x7f8ce842d020::7f8ce842d020  e5 e5 e5 e5                                      ....
   769 ms  0x1974 PK11_Encrypt()
   769 ms  0x1974 symkey:0x7f8ce8407c00
   770 ms  0x1974 PR_Connect()
   770 ms  0x1974 fd:0x7f8ce8450070
           /* TID 0x19d5 */
   796 ms  0x19d5 PR_Close()
   796 ms  0x19d5 fd:0x7f8ce84500a0
   800 ms  0x19d5 PR_Close()
   800 ms  0x19d5 fd:0x7f8ce8450100
   802 ms  0x19d5 PR_Close()
   802 ms  0x19d5 fd:0x7f8ce8450100
           /* TID 0x197c */
   824 ms  0x197c PR_Close()
   824 ms  0x197c fd:0x7f8ce8450100
           /* TID 0x19d3 */
   824 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   825 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
   825 ms  0x1974 SSL_AuthCertificateComplete()
   825 ms  0x1974 fd:0x7f8cf951c4f0
   825 ms  0x1974 err:0x0
   825 ms  0x1974 PK11_Encrypt()
   825 ms  0x1974 symkey:0x7f8ce8407c00
   982 ms  0x1974 SECKEY_DestroyPrivateKey()
   982 ms  0x1974 privk:0x7f8cf94e6020::7f8cf94e6020  60 10 41 e8                                      `.A.
   983 ms  0x1974 privk:0x7f8cf94e6020::7f8cf94e6020  e5 e5 e5 e5                                      ....
   983 ms  0x1974 SECKEY_DestroyPrivateKey()
   983 ms  0x1974 privk:0x7f8cf94e4020::7f8cf94e4020  c0 7e 5a f9                                      .~Z.
   983 ms  0x1974 privk:0x7f8cf94e4020::7f8cf94e4020  e5 e5 e5 e5                                      ....
  1290 ms  0x1974 SSL_ImportFD()
  1290 ms  0x1974 ret:0x7f8ce84502b0
  1290 ms  0x1974 SSL_AuthCertificateHook()
  1290 ms  0x1974 fd:0x7f8ce84502b0
  1290 ms  0x1974 ret:0x0
  1290 ms  0x1974 PR_Connect()
  1290 ms  0x1974 fd:0x7f8ce84502b0
  1317 ms  0x1974 SECKEY_CreateECPrivateKey()
  1317 ms  0x1974 cx:0x7f8ce8413728
  1319 ms     | 0x1974 EC_ValidatePublicKey()
  1319 ms     | 0x1974 ret:0x0
  1319 ms  0x1974 ret:0x7f8cf94e5820::7f8cf94e5820  b0 1a 41 e8                                      ..A.
  1319 ms  0x1974 SECKEY_CreateECPrivateKey()
  1319 ms  0x1974 cx:0x7f8ce8413728
  1321 ms     | 0x1974 EC_ValidatePublicKey()
  1326 ms     | 0x1974 ret:0x0
  1326 ms  0x1974 ret:0x7f8cf94eb820::7f8cf94eb820  90 1c 41 e8                                      ..A.
           /* TID 0x19d3 */
  1380 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1380 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  1381 ms  SECKEY_ECParamsToKeySize()
  1381 ms  0x1974 ret:0x100
  1381 ms  0x1974 SECKEY_CreateECPrivateKey()
  1381 ms  0x1974 cx:0x7f8ce8413728
  1383 ms     | 0x1974 EC_ValidatePublicKey()
  1388 ms     | 0x1974 ret:0x0
  1388 ms  0x1974 ret:0x7f8ce845b020::7f8ce845b020  10 1f 41 e8                                      ..A.
  1388 ms  0x1974 PK11_PubDeriveWithKDF()
  1388 ms  0x1974 seckey:0x7f8ce845b020
  1388 ms     | 0x1974 EC_ValidatePublicKey()
  1393 ms     | 0x1974 ret:0x0
  1397 ms  0x1974 ret:0x7f8cfa8fc600
  1397 ms  0x1974 PK11_DeriveWithFlags()
  1397 ms  0x1974 basekey:0x7f8cfa8fc600
  1397 ms     | 0x1974 PK11_DeriveWithTemplate()
  1397 ms  0x1974 ret:0x7f8ce8408880
  1397 ms  0x1974 PK11_Derive()
  1397 ms  0x1974 basekey:0x7f8ce8408880
  1397 ms     | 0x1974 PK11_DeriveWithTemplate()
  1397 ms  0x1974 ret:0x7f8ce8408900
  1397 ms  0x1974 SECKEY_DestroyPrivateKey()
  1397 ms  0x1974 privk:0x7f8ce845b020::7f8ce845b020  10 1f 41 e8                                      ..A.
  1398 ms  0x1974 privk:0x7f8ce845b020::7f8ce845b020  e5 e5 e5 e5                                      ....
  1398 ms  0x1974 PK11_Encrypt()
  1398 ms  0x1974 symkey:0x7f8ce8408a80
  1398 ms  0x1974 SSL_AuthCertificateComplete()
  1398 ms  0x1974 fd:0x7f8ce84502b0
  1398 ms  0x1974 err:0x0
  1399 ms  0x1974 PK11_Encrypt()
  1399 ms  0x1974 symkey:0x7f8ce8408a80
  1450 ms  0x1974 SECKEY_DestroyPrivateKey()
  1450 ms  0x1974 privk:0x7f8cf94eb820::7f8cf94eb820  90 1c 41 e8                                      ..A.
  1451 ms  0x1974 privk:0x7f8cf94eb820::7f8cf94eb820  e5 e5 e5 e5                                      ....
  1451 ms  0x1974 SECKEY_DestroyPrivateKey()
  1451 ms  0x1974 privk:0x7f8cf94e5820::7f8cf94e5820  b0 1a 41 e8                                      ..A.
  1451 ms  0x1974 privk:0x7f8cf94e5820::7f8cf94e5820  e5 e5 e5 e5                                      ....
  1455 ms  0x1974 PK11_Encrypt()
  1455 ms  0x1974 symkey:0x7f8ce8408a80
  1489 ms  0x1974 PK11_Encrypt()
  1489 ms  0x1974 symkey:0x7f8ce8408a80
  1520 ms  0x1974 PK11_Encrypt()
  1520 ms  0x1974 symkey:0x7f8ce8408a80
  1551 ms  0x1974 PK11_Encrypt()
  1551 ms  0x1974 symkey:0x7f8ce8408a80
  1666 ms  0x1974 PK11_Encrypt()
  1666 ms  0x1974 symkey:0x7f8ce8408a80
  1699 ms  0x1974 PK11_Encrypt()
  1699 ms  0x1974 symkey:0x7f8ce8408a80
  1730 ms  0x1974 PK11_Encrypt()
  1730 ms  0x1974 symkey:0x7f8ce8408a80
           /* TID 0x19c8 */
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450430
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450490
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450430
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450490
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450430
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450490
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450430
  1758 ms  0x19c8 PR_Close()
  1758 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450430
  1759 ms  0x19c8 PR_Close()
  1759 ms  0x19c8 fd:0x7f8ce8450490
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450430
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450490
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450430
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450490
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450430
  1760 ms  0x19c8 PR_Close()
  1760 ms  0x19c8 fd:0x7f8ce8450490
  1762 ms  0x19c8 PR_Close()
  1762 ms  0x19c8 fd:0x7f8ce8450430
  1762 ms  0x19c8 PR_Close()
  1762 ms  0x19c8 fd:0x7f8ce84503a0
  1764 ms  0x19c8 PR_Close()
  1764 ms  0x19c8 fd:0x7f8ce84503a0
  1765 ms  0x19c8 PR_Close()
  1765 ms  0x19c8 fd:0x7f8ce8450430
  1767 ms  0x19c8 PR_Close()
  1767 ms  0x19c8 fd:0x7f8ce8450430
  1767 ms  0x19c8 PR_Close()
  1767 ms  0x19c8 fd:0x7f8ce8450430
  1814 ms  0x19c8 PR_Close()
  1814 ms  0x19c8 fd:0x7f8ce8450430
  1815 ms  0x19c8 PR_Close()
  1815 ms  0x19c8 fd:0x7f8ce8450430
  1873 ms  0x19c8 PR_Close()
  1873 ms  0x19c8 fd:0x7f8ce8450430
  1874 ms  0x19c8 PR_Close()
  1874 ms  0x19c8 fd:0x7f8ce8450430
  1881 ms  0x19c8 PR_Close()
  1881 ms  0x19c8 fd:0x7f8ce8450430
  1881 ms  0x19c8 PR_Close()
  1881 ms  0x19c8 fd:0x7f8ce8450430
  1887 ms  0x19c8 PR_Close()
  1887 ms  0x19c8 fd:0x7f8ce8450430
  1887 ms  0x19c8 PR_Close()
  1887 ms  0x19c8 fd:0x7f8ce8450430
  1889 ms  0x19c8 PR_Close()
  1889 ms  0x19c8 fd:0x7f8ce8450430
  1889 ms  0x19c8 PR_Close()
  1889 ms  0x19c8 fd:0x7f8ce8450430
           /* TID 0x19c5 */
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1889 ms  0x19c5 PR_Close()
  1889 ms  0x19c5 fd:0x7f8ce8450430
  1890 ms  0x19c5 PR_Close()
  1890 ms  0x19c5 fd:0x7f8ce8450430
  1890 ms  0x19c5 PR_Close()
  1890 ms  0x19c5 fd:0x7f8ce8450430
  1890 ms  0x19c5 PR_Close()
  1890 ms  0x19c5 fd:0x7f8ce8450430
  1890 ms  0x19c5 PR_Close()
  1890 ms  0x19c5 fd:0x7f8ce8450430
  1890 ms  0x19c5 PR_Close()
  1890 ms  0x19c5 fd:0x7f8ce8450430
           /* TID 0x19d5 */
  2393 ms  0x19d5 PR_Close()
  2393 ms  0x19d5 fd:0x7f8ce84502e0
  2396 ms  0x19d5 PR_Close()
  2396 ms  0x19d5 fd:0x7f8ce84502e0
  2688 ms  0x19d5 PR_Close()
  2688 ms  0x19d5 fd:0x7f8ce8450370
           /* TID 0x197c */
  4186 ms  0x197c PR_Close()
  4186 ms  0x197c fd:0x7f8ce8450370
  4187 ms  0x197c PR_Close()
  4187 ms  0x197c fd:0x7f8ce8450460
           /* TID 0x1974 */
  4411 ms  0x1974 SSL_ImportFD()
  4411 ms  0x1974 ret:0x7f8cfa6ce790
  4411 ms  0x1974 SSL_AuthCertificateHook()
  4411 ms  0x1974 fd:0x7f8cfa6ce790
  4411 ms  0x1974 ret:0x0
  4411 ms  0x1974 PR_Connect()
  4411 ms  0x1974 fd:0x7f8cfa6ce790
  4437 ms  0x1974 SECKEY_CreateECPrivateKey()
  4437 ms  0x1974 cx:0x7f8ce8413a68
  4439 ms     | 0x1974 EC_ValidatePublicKey()
  4439 ms     | 0x1974 ret:0x0
  4439 ms  0x1974 ret:0x7f8ce83dd820::7f8ce83dd820  20 89 69 fc                                       .i.
  4439 ms  0x1974 SECKEY_CreateECPrivateKey()
  4439 ms  0x1974 cx:0x7f8ce8413a68
  4441 ms     | 0x1974 EC_ValidatePublicKey()
  4445 ms     | 0x1974 ret:0x0
  4445 ms  0x1974 ret:0x7f8ce83df820::7f8ce83df820  a0 8b 69 fc                                      ..i.
  4477 ms  SECKEY_ECParamsToKeySize()
  4478 ms  0x1974 ret:0xff
  4478 ms  0x1974 SECKEY_CreateECPrivateKey()
  4478 ms  0x1974 cx:0x7f8ce8413a68
  4479 ms     | 0x1974 EC_ValidatePublicKey()
  4479 ms     | 0x1974 ret:0x0
  4479 ms  0x1974 ret:0x7f8ce83ec020::7f8ce83ec020  30 13 3a e8                                      0.:.
  4479 ms  0x1974 PK11_PubDeriveWithKDF()
  4479 ms  0x1974 seckey:0x7f8ce83ec020
  4479 ms     | 0x1974 EC_ValidatePublicKey()
  4479 ms     | 0x1974 ret:0x0
  4480 ms  0x1974 ret:0x7f8cfa8fc600
  4481 ms  0x1974 PK11_DeriveWithFlags()
  4481 ms  0x1974 basekey:0x7f8cfa8fc600
  4481 ms     | 0x1974 PK11_DeriveWithTemplate()
  4481 ms  0x1974 ret:0x7f8cfc694e80
  4481 ms  0x1974 PK11_Derive()
  4481 ms  0x1974 basekey:0x7f8cfc694e80
  4481 ms     | 0x1974 PK11_DeriveWithTemplate()
  4481 ms  0x1974 ret:0x7f8cfc694f00
  4481 ms  0x1974 SECKEY_DestroyPrivateKey()
  4481 ms  0x1974 privk:0x7f8ce83ec020::7f8ce83ec020  30 13 3a e8                                      0.:.
  4481 ms  0x1974 privk:0x7f8ce83ec020::7f8ce83ec020  e5 e5 e5 e5                                      ....
  4481 ms  0x1974 PK11_Encrypt()
  4481 ms  0x1974 symkey:0x7f8cfc695080
           /* TID 0x19d3 */
  4509 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4509 ms  0x19d3 ret:0x0
           /* TID 0x197c */
  4511 ms  0x197c PR_Close()
  4511 ms  0x197c fd:0x7f8cfa6cec40
  4539 ms  0x197c PR_Close()
  4539 ms  0x197c fd:0x7f8cfa6cec40
           /* TID 0x19d3 */
  4540 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4540 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  4554 ms  0x1974 SSL_AuthCertificateComplete()
  4554 ms  0x1974 fd:0x7f8cfa6ce790
  4554 ms  0x1974 err:0x0
  4554 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  4554 ms     | 0x1974 privk:0x7f8ce83df820::7f8ce83df820  a0 8b 69 fc                                      ..i.
  4554 ms     | 0x1974 privk:0x7f8ce83df820::7f8ce83df820  e5 e5 e5 e5                                      ....
  4555 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  4555 ms     | 0x1974 privk:0x7f8ce83dd820::7f8ce83dd820  20 89 69 fc                                       .i.
  4555 ms     | 0x1974 privk:0x7f8ce83dd820::7f8ce83dd820  e5 e5 e5 e5                                      ....
  4556 ms  0x1974 PK11_Encrypt()
  4556 ms  0x1974 symkey:0x7f8cfc695080
  4556 ms  0x1974 PK11_Encrypt()
  4556 ms  0x1974 symkey:0x7f8cfc695080
  4557 ms  0x1974 PK11_Encrypt()
  4557 ms  0x1974 symkey:0x7f8cfc695080
           /* TID 0x198b */
  4951 ms  0x198b PR_Close()
  4951 ms  0x198b fd:0x7f8ce83be280
           /* TID 0x1969 */
  4953 ms  0x1969 PR_Close()
  4953 ms  0x1969 fd:0x7f8ce83be6a0
           /* TID 0x1974 */
  5022 ms  0x1974 PK11_Encrypt()
  5022 ms  0x1974 symkey:0x7f8cfc695080
  5023 ms  0x1974 SSL_ImportFD()
  5023 ms  0x1974 ret:0x7f8ce821a0a0
  5023 ms  0x1974 SSL_AuthCertificateHook()
  5023 ms  0x1974 fd:0x7f8ce821a0a0
  5023 ms  0x1974 ret:0x0
  5023 ms  0x1974 PR_Connect()
  5023 ms  0x1974 fd:0x7f8ce821a0a0
  5023 ms  0x1974 PK11_Encrypt()
  5023 ms  0x1974 symkey:0x7f8cfc695080
  5023 ms  0x1974 SSL_ImportFD()
  5023 ms  0x1974 ret:0x7f8ce821a430
  5024 ms  0x1974 SSL_AuthCertificateHook()
  5024 ms  0x1974 fd:0x7f8ce821a430
  5024 ms  0x1974 ret:0x0
  5024 ms  0x1974 PR_Connect()
  5024 ms  0x1974 fd:0x7f8ce821a430
  5024 ms  0x1974 SSL_ImportFD()
  5024 ms  0x1974 ret:0x7f8ce821a670
  5024 ms  0x1974 SSL_AuthCertificateHook()
  5024 ms  0x1974 fd:0x7f8ce821a670
  5024 ms  0x1974 ret:0x0
  5024 ms  0x1974 PR_Connect()
  5024 ms  0x1974 fd:0x7f8ce821a670
  5048 ms  0x1974 SECKEY_CreateECPrivateKey()
  5048 ms  0x1974 cx:0x7f8ce8414428
  5049 ms     | 0x1974 EC_ValidatePublicKey()
  5049 ms     | 0x1974 ret:0x0
  5049 ms  0x1974 ret:0x7f8ce83ed820::7f8ce83ed820  c0 5e 1c e8                                      .^..
  5049 ms  0x1974 SECKEY_CreateECPrivateKey()
  5049 ms  0x1974 cx:0x7f8ce8414428
  5049 ms     | 0x1974 EC_ValidatePublicKey()
  5051 ms     | 0x1974 ret:0x0
  5051 ms  0x1974 ret:0x7f8cf94eb820::7f8cf94eb820  b0 9f 32 e8                                      ..2.
  5052 ms  0x1974 SECKEY_CreateECPrivateKey()
  5052 ms  0x1974 cx:0x7f8ce84145c8
  5053 ms     | 0x1974 EC_ValidatePublicKey()
  5053 ms     | 0x1974 ret:0x0
  5053 ms  0x1974 ret:0x7f8ce8293820::7f8ce8293820  b0 d0 37 fa                                      ..7.
  5053 ms  0x1974 SECKEY_CreateECPrivateKey()
  5053 ms  0x1974 cx:0x7f8ce84145c8
  5054 ms     | 0x1974 EC_ValidatePublicKey()
  5056 ms     | 0x1974 ret:0x0
  5056 ms  0x1974 ret:0x7f8ce8295820::7f8ce8295820  50 11 26 e8                                      P.&.
  5057 ms  0x1974 SECKEY_CreateECPrivateKey()
  5057 ms  0x1974 cx:0x7f8ce8414768
  5057 ms     | 0x1974 EC_ValidatePublicKey()
  5057 ms     | 0x1974 ret:0x0
  5057 ms  0x1974 ret:0x7f8ce8298820::7f8ce8298820  e0 12 26 e8                                      ..&.
  5057 ms  0x1974 SECKEY_CreateECPrivateKey()
  5057 ms  0x1974 cx:0x7f8ce8414768
  5058 ms     | 0x1974 EC_ValidatePublicKey()
  5059 ms     | 0x1974 ret:0x0
  5059 ms  0x1974 ret:0x7f8ce829a820::7f8ce829a820  c0 14 26 e8                                      ..&.
  5066 ms  0x1974 SSL_ImportFD()
  5066 ms  0x1974 ret:0x7f8ce821a5e0
  5066 ms  0x1974 SSL_AuthCertificateHook()
  5066 ms  0x1974 fd:0x7f8ce821a5e0
  5066 ms  0x1974 ret:0x0
  5066 ms  0x1974 PR_Connect()
  5066 ms  0x1974 fd:0x7f8ce821a5e0
           /* TID 0x19d3 */
  5085 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5085 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  5086 ms  SECKEY_ECParamsToKeySize()
  5086 ms  0x1974 ret:0xff
  5086 ms  0x1974 SECKEY_CreateECPrivateKey()
  5086 ms  0x1974 cx:0x7f8ce8414428
  5088 ms     | 0x1974 EC_ValidatePublicKey()
  5088 ms     | 0x1974 ret:0x0
  5088 ms  0x1974 ret:0x7f8ce82a5820::7f8ce82a5820  50 1b 26 e8                                      P.&.
  5088 ms  0x1974 PK11_PubDeriveWithKDF()
  5088 ms  0x1974 seckey:0x7f8ce82a5820
  5088 ms     | 0x1974 EC_ValidatePublicKey()
  5088 ms     | 0x1974 ret:0x0
  5088 ms  0x1974 ret:0x7f8cfa8fc600
  5088 ms  0x1974 PK11_DeriveWithFlags()
  5088 ms  0x1974 basekey:0x7f8cfa8fc600
  5089 ms     | 0x1974 PK11_DeriveWithTemplate()
  5089 ms  0x1974 ret:0x7f8ce8337380
  5089 ms  0x1974 PK11_Derive()
  5089 ms  0x1974 basekey:0x7f8ce8337380
  5089 ms     | 0x1974 PK11_DeriveWithTemplate()
  5089 ms  0x1974 ret:0x7f8ce8337400
  5089 ms  0x1974 SECKEY_DestroyPrivateKey()
  5089 ms  0x1974 privk:0x7f8ce82a5820::7f8ce82a5820  50 1b 26 e8                                      P.&.
  5089 ms  0x1974 privk:0x7f8ce82a5820::7f8ce82a5820  e5 e5 e5 e5                                      ....
  5089 ms  0x1974 PK11_Encrypt()
  5089 ms  0x1974 symkey:0x7f8ce8337580
  5090 ms  SECKEY_ECParamsToKeySize()
  5090 ms  0x1974 ret:0xff
  5090 ms  0x1974 SECKEY_CreateECPrivateKey()
  5090 ms  0x1974 cx:0x7f8ce8414768
  5090 ms     | 0x1974 EC_ValidatePublicKey()
  5090 ms     | 0x1974 ret:0x0
  5090 ms  0x1974 ret:0x7f8ce82a7820::7f8ce82a7820  40 1c 26 e8                                      @.&.
  5091 ms  0x1974 PK11_PubDeriveWithKDF()
  5091 ms  0x1974 seckey:0x7f8ce82a7820
  5091 ms     | 0x1974 EC_ValidatePublicKey()
  5091 ms     | 0x1974 ret:0x0
  5092 ms  0x1974 ret:0x7f8cfa8fc600
  5092 ms  0x1974 PK11_DeriveWithFlags()
  5092 ms  0x1974 basekey:0x7f8cfa8fc600
  5092 ms     | 0x1974 PK11_DeriveWithTemplate()
  5092 ms  0x1974 ret:0x7f8ce82f7d00
  5092 ms  0x1974 PK11_Derive()
  5092 ms  0x1974 basekey:0x7f8ce82f7d00
  5092 ms     | 0x1974 PK11_DeriveWithTemplate()
  5092 ms  0x1974 ret:0x7f8ce82f7d80
  5092 ms  0x1974 SECKEY_DestroyPrivateKey()
  5092 ms  0x1974 privk:0x7f8ce82a7820::7f8ce82a7820  40 1c 26 e8                                      @.&.
  5092 ms  0x1974 privk:0x7f8ce82a7820::7f8ce82a7820  e5 e5 e5 e5                                      ....
  5092 ms  0x1974 PK11_Encrypt()
  5092 ms  0x1974 symkey:0x7f8ce82f7f80
  5092 ms  0x1974 SSL_AuthCertificateComplete()
  5092 ms  0x1974 fd:0x7f8ce821a0a0
  5092 ms  0x1974 err:0x0
           /* TID 0x19d3 */
  5092 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5092 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  5093 ms  0x1974 PK11_Encrypt()
  5093 ms  0x1974 symkey:0x7f8ce8337580
  5093 ms  0x1974 PK11_Encrypt()
  5093 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x19d3 */
  5093 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5094 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  5094 ms  SECKEY_ECParamsToKeySize()
  5094 ms  0x1974 ret:0xff
  5094 ms  0x1974 SECKEY_CreateECPrivateKey()
  5094 ms  0x1974 cx:0x7f8ce84145c8
  5094 ms     | 0x1974 EC_ValidatePublicKey()
  5094 ms     | 0x1974 ret:0x0
  5094 ms  0x1974 ret:0x7f8ce82a7020::7f8ce82a7020  b0 1a 26 e8                                      ..&.
  5094 ms  0x1974 PK11_PubDeriveWithKDF()
  5094 ms  0x1974 seckey:0x7f8ce82a7020
  5094 ms     | 0x1974 EC_ValidatePublicKey()
  5094 ms     | 0x1974 ret:0x0
  5095 ms  0x1974 ret:0x7f8cfa8fc600
  5095 ms  0x1974 PK11_DeriveWithFlags()
  5095 ms  0x1974 basekey:0x7f8cfa8fc600
  5095 ms     | 0x1974 PK11_DeriveWithTemplate()
  5095 ms  0x1974 ret:0x7f8ce8337180
  5095 ms  0x1974 PK11_Derive()
  5095 ms  0x1974 basekey:0x7f8ce8337180
  5095 ms     | 0x1974 PK11_DeriveWithTemplate()
  5095 ms  0x1974 ret:0x7f8ce8337200
  5095 ms  0x1974 SECKEY_DestroyPrivateKey()
  5095 ms  0x1974 privk:0x7f8ce82a7020::7f8ce82a7020  b0 1a 26 e8                                      ..&.
  5095 ms  0x1974 privk:0x7f8ce82a7020::7f8ce82a7020  e5 e5 e5 e5                                      ....
  5095 ms  0x1974 PK11_Encrypt()
  5095 ms  0x1974 symkey:0x7f8ce8337680
  5095 ms  0x1974 SSL_AuthCertificateComplete()
  5095 ms  0x1974 fd:0x7f8ce821a670
  5095 ms  0x1974 err:0x0
  5095 ms  0x1974 SSL_AuthCertificateComplete()
  5095 ms  0x1974 fd:0x7f8ce821a430
  5095 ms  0x1974 err:0x0
  5096 ms  0x1974 PK11_Encrypt()
  5096 ms  0x1974 symkey:0x7f8ce8337680
  5096 ms  0x1974 PK11_Encrypt()
  5096 ms  0x1974 symkey:0x7f8ce82f7f80
  5096 ms  0x1974 SECKEY_CreateECPrivateKey()
  5096 ms  0x1974 cx:0x7f8ce8414908
  5096 ms     | 0x1974 EC_ValidatePublicKey()
  5096 ms     | 0x1974 ret:0x0
  5097 ms  0x1974 ret:0x7f8ce82a9020::7f8ce82a9020  b0 1a 26 e8                                      ..&.
  5097 ms  0x1974 SECKEY_CreateECPrivateKey()
  5097 ms  0x1974 cx:0x7f8ce8414908
  5097 ms     | 0x1974 EC_ValidatePublicKey()
  5099 ms     | 0x1974 ret:0x0
  5099 ms  0x1974 ret:0x7f8ce82ab020::7f8ce82ab020  e0 1c 26 e8                                      ..&.
  5099 ms  0x1974 PK11_Encrypt()
  5099 ms  0x1974 symkey:0x7f8ce8337580
  5099 ms  0x1974 PK11_Encrypt()
  5099 ms  0x1974 symkey:0x7f8ce8337580
  5115 ms  0x1974 SECKEY_DestroyPrivateKey()
  5115 ms  0x1974 privk:0x7f8cf94eb820::7f8cf94eb820  b0 9f 32 e8                                      ..2.
  5115 ms  0x1974 privk:0x7f8cf94eb820::7f8cf94eb820  e5 e5 e5 e5                                      ....
  5115 ms  0x1974 SECKEY_DestroyPrivateKey()
  5115 ms  0x1974 privk:0x7f8ce83ed820::7f8ce83ed820  c0 5e 1c e8                                      .^..
  5115 ms  0x1974 privk:0x7f8ce83ed820::7f8ce83ed820  e5 e5 e5 e5                                      ....
  5116 ms  0x1974 PK11_Encrypt()
  5116 ms  0x1974 symkey:0x7f8ce8337580
  5118 ms  0x1974 SECKEY_DestroyPrivateKey()
  5118 ms  0x1974 privk:0x7f8ce829a820::7f8ce829a820  c0 14 26 e8                                      ..&.
  5118 ms  0x1974 privk:0x7f8ce829a820::7f8ce829a820  e5 e5 e5 e5                                      ....
  5118 ms  0x1974 SECKEY_DestroyPrivateKey()
  5118 ms  0x1974 privk:0x7f8ce8298820::7f8ce8298820  e0 12 26 e8                                      ..&.
  5118 ms  0x1974 privk:0x7f8ce8298820::7f8ce8298820  e5 e5 e5 e5                                      ....
  5119 ms  0x1974 PR_Close()
  5119 ms  0x1974 fd:0x7f8ce821a670
  5119 ms     | 0x1974 PK11_Encrypt()
  5119 ms     | 0x1974 symkey:0x7f8ce82f7f80
  5121 ms  0x1974 SECKEY_DestroyPrivateKey()
  5121 ms  0x1974 privk:0x7f8ce8295820::7f8ce8295820  50 11 26 e8                                      P.&.
  5121 ms  0x1974 privk:0x7f8ce8295820::7f8ce8295820  e5 e5 e5 e5                                      ....
  5121 ms  0x1974 SECKEY_DestroyPrivateKey()
  5121 ms  0x1974 privk:0x7f8ce8293820::7f8ce8293820  b0 d0 37 fa                                      ..7.
  5121 ms  0x1974 privk:0x7f8ce8293820::7f8ce8293820  e5 e5 e5 e5                                      ....
  5121 ms  0x1974 PR_Close()
  5121 ms  0x1974 fd:0x7f8ce821a430
  5121 ms     | 0x1974 PK11_Encrypt()
  5121 ms     | 0x1974 symkey:0x7f8ce8337680
  5127 ms  SECKEY_ECParamsToKeySize()
  5127 ms  0x1974 ret:0xff
  5127 ms  0x1974 SECKEY_CreateECPrivateKey()
  5127 ms  0x1974 cx:0x7f8ce8414908
  5128 ms     | 0x1974 EC_ValidatePublicKey()
  5128 ms     | 0x1974 ret:0x0
  5128 ms  0x1974 ret:0x7f8ce8294820::7f8ce8294820  b0 10 26 e8                                      ..&.
  5128 ms  0x1974 PK11_PubDeriveWithKDF()
  5128 ms  0x1974 seckey:0x7f8ce8294820
  5128 ms     | 0x1974 EC_ValidatePublicKey()
  5128 ms     | 0x1974 ret:0x0
  5128 ms  0x1974 ret:0x7f8ce8337200
  5128 ms  0x1974 PK11_DeriveWithFlags()
  5128 ms  0x1974 basekey:0x7f8ce8337200
  5128 ms     | 0x1974 PK11_DeriveWithTemplate()
  5128 ms  0x1974 ret:0x7f8ce8337180
  5128 ms  0x1974 PK11_Derive()
  5128 ms  0x1974 basekey:0x7f8ce8337180
  5128 ms     | 0x1974 PK11_DeriveWithTemplate()
  5128 ms  0x1974 ret:0x7f8ce82f7d80
  5128 ms  0x1974 SECKEY_DestroyPrivateKey()
  5128 ms  0x1974 privk:0x7f8ce8294820::7f8ce8294820  b0 10 26 e8                                      ..&.
  5128 ms  0x1974 privk:0x7f8ce8294820::7f8ce8294820  e5 e5 e5 e5                                      ....
  5128 ms  0x1974 PK11_Encrypt()
  5128 ms  0x1974 symkey:0x7f8ce8337280
  5129 ms  0x1974 SSL_AuthCertificateComplete()
  5129 ms  0x1974 fd:0x7f8ce821a5e0
  5129 ms  0x1974 err:0x0
  5129 ms  0x1974 PK11_Encrypt()
  5129 ms  0x1974 symkey:0x7f8ce8337280
  5129 ms  0x1974 PK11_Encrypt()
  5129 ms  0x1974 symkey:0x7f8ce8337280
  5154 ms  0x1974 SECKEY_DestroyPrivateKey()
  5154 ms  0x1974 privk:0x7f8ce82ab020::7f8ce82ab020  e0 1c 26 e8                                      ..&.
  5154 ms  0x1974 privk:0x7f8ce82ab020::7f8ce82ab020  e5 e5 e5 e5                                      ....
  5155 ms  0x1974 SECKEY_DestroyPrivateKey()
  5155 ms  0x1974 privk:0x7f8ce82a9020::7f8ce82a9020  b0 1a 26 e8                                      ..&.
  5155 ms  0x1974 privk:0x7f8ce82a9020::7f8ce82a9020  e5 e5 e5 e5                                      ....
  5155 ms  0x1974 PK11_Encrypt()
  5155 ms  0x1974 symkey:0x7f8ce8337280
           /* TID 0x197c */
  5168 ms  0x197c PR_Close()
  5168 ms  0x197c fd:0x7f8ce821a4f0
  5177 ms  0x197c PR_Close()
  5177 ms  0x197c fd:0x7f8ce821a4f0
  5179 ms  0x197c PR_Close()
  5179 ms  0x197c fd:0x7f8ce81eb4c0
  5180 ms  0x197c PR_Close()
  5180 ms  0x197c fd:0x7f8ce81eb4c0
           /* TID 0x1974 */
  5185 ms  0x1974 PK11_Encrypt()
  5185 ms  0x1974 symkey:0x7f8ce8337580
  5187 ms  0x1974 PK11_Encrypt()
  5187 ms  0x1974 symkey:0x7f8ce8337580
  5211 ms  0x1974 PK11_Encrypt()
  5211 ms  0x1974 symkey:0x7f8ce8337580
  5212 ms  0x1974 PK11_Encrypt()
  5212 ms  0x1974 symkey:0x7f8ce8337580
  5213 ms  0x1974 PK11_Encrypt()
  5213 ms  0x1974 symkey:0x7f8ce8337580
  5214 ms  0x1974 PK11_Encrypt()
  5214 ms  0x1974 symkey:0x7f8ce8337580
  5215 ms  0x1974 PK11_Encrypt()
  5215 ms  0x1974 symkey:0x7f8ce8337580
  5216 ms  0x1974 PK11_Encrypt()
  5216 ms  0x1974 symkey:0x7f8ce8337580
  5217 ms  0x1974 PK11_Encrypt()
  5217 ms  0x1974 symkey:0x7f8ce8337580
  5218 ms  0x1974 PK11_Encrypt()
  5218 ms  0x1974 symkey:0x7f8ce8337580
  5219 ms  0x1974 PK11_Encrypt()
  5219 ms  0x1974 symkey:0x7f8ce8337580
  5219 ms  0x1974 PK11_Encrypt()
  5219 ms  0x1974 symkey:0x7f8ce8337580
  5221 ms  0x1974 PK11_Encrypt()
  5221 ms  0x1974 symkey:0x7f8ce8337580
  5225 ms  0x1974 PK11_Encrypt()
  5225 ms  0x1974 symkey:0x7f8ce8337580
  5226 ms  0x1974 PK11_Encrypt()
  5226 ms  0x1974 symkey:0x7f8ce8337580
  5227 ms  0x1974 PK11_Encrypt()
  5227 ms  0x1974 symkey:0x7f8ce8337580
  5229 ms  0x1974 PK11_Encrypt()
  5229 ms  0x1974 symkey:0x7f8ce8337580
  5230 ms  0x1974 PK11_Encrypt()
  5230 ms  0x1974 symkey:0x7f8ce8337580
  5231 ms  0x1974 PK11_Encrypt()
  5231 ms  0x1974 symkey:0x7f8ce8337580
  5232 ms  0x1974 PK11_Encrypt()
  5232 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5233 ms  0x197c PR_Close()
  5233 ms  0x197c fd:0x7f8ce7f13430
           /* TID 0x1974 */
  5233 ms  0x1974 PK11_Encrypt()
  5233 ms  0x1974 symkey:0x7f8ce8337580
  5233 ms  0x1974 PK11_Encrypt()
  5233 ms  0x1974 symkey:0x7f8ce8337580
  5234 ms  0x1974 PK11_Encrypt()
  5234 ms  0x1974 symkey:0x7f8ce8337580
  5234 ms  0x1974 PK11_Encrypt()
  5234 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5247 ms  0x197c PR_Close()
  5247 ms  0x197c fd:0x7f8ce7f13100
  5255 ms  0x197c PR_Close()
  5255 ms  0x197c fd:0x7f8ce7f13100
  5258 ms  0x197c PR_Close()
  5258 ms  0x197c fd:0x7f8ce7f13100
  5260 ms  0x197c PR_Close()
  5260 ms  0x197c fd:0x7f8ce7f13100
  5262 ms  0x197c PR_Close()
  5262 ms  0x197c fd:0x7f8ce7f13100
  5267 ms  0x197c PR_Close()
  5267 ms  0x197c fd:0x7f8ce7f13100
  5269 ms  0x197c PR_Close()
  5269 ms  0x197c fd:0x7f8ce7f13100
  5277 ms  0x197c PR_Close()
  5277 ms  0x197c fd:0x7f8ce7f13100
  5277 ms  0x197c PR_Close()
  5277 ms  0x197c fd:0x7f8ce7f133d0
  5277 ms  0x197c PR_Close()
  5277 ms  0x197c fd:0x7f8ce7f135e0
  5277 ms  0x197c PR_Close()
  5277 ms  0x197c fd:0x7f8ce7f13100
  5279 ms  0x197c PR_Close()
  5279 ms  0x197c fd:0x7f8ce7f13100
  5280 ms  0x197c PR_Close()
  5280 ms  0x197c fd:0x7f8ce7f13100
  5281 ms  0x197c PR_Close()
  5281 ms  0x197c fd:0x7f8ce7f13100
  5282 ms  0x197c PR_Close()
  5282 ms  0x197c fd:0x7f8ce7f13100
  5283 ms  0x197c PR_Close()
  5283 ms  0x197c fd:0x7f8ce7f13100
  5284 ms  0x197c PR_Close()
  5284 ms  0x197c fd:0x7f8ce7f130a0
  5284 ms  0x197c PR_Close()
  5284 ms  0x197c fd:0x7f8ce7f130a0
  5288 ms  0x197c PR_Close()
  5288 ms  0x197c fd:0x7f8ce7f132e0
  5289 ms  0x197c PR_Close()
  5289 ms  0x197c fd:0x7f8ce7f13520
  5290 ms  0x197c PR_Close()
  5290 ms  0x197c fd:0x7f8ce7f13280
  5291 ms  0x197c PR_Close()
  5291 ms  0x197c fd:0x7f8ce7f13280
  5291 ms  0x197c PR_Close()
  5291 ms  0x197c fd:0x7f8ce7f13280
  5296 ms  0x197c PR_Close()
  5296 ms  0x197c fd:0x7f8ce7f13280
  5296 ms  0x197c PR_Close()
  5296 ms  0x197c fd:0x7f8ce7f13160
  5320 ms  0x197c PR_Close()
  5320 ms  0x197c fd:0x7f8ce7f13070
           /* TID 0x1974 */
  5330 ms  0x1974 PK11_Encrypt()
  5330 ms  0x1974 symkey:0x7f8cfc695080
  5335 ms  0x1974 PK11_Encrypt()
  5335 ms  0x1974 symkey:0x7f8cfc695080
  5336 ms  0x1974 PK11_Encrypt()
  5336 ms  0x1974 symkey:0x7f8cfc695080
  5336 ms  0x1974 PK11_Encrypt()
  5336 ms  0x1974 symkey:0x7f8cfc695080
  5337 ms  0x1974 PK11_Encrypt()
  5337 ms  0x1974 symkey:0x7f8cfc695080
  5337 ms  0x1974 PK11_Encrypt()
  5337 ms  0x1974 symkey:0x7f8cfc695080
  5338 ms  0x1974 PK11_Encrypt()
  5338 ms  0x1974 symkey:0x7f8cfc695080
  5338 ms  0x1974 PK11_Encrypt()
  5338 ms  0x1974 symkey:0x7f8cfc695080
  5338 ms  0x1974 PK11_Encrypt()
  5338 ms  0x1974 symkey:0x7f8cfc695080
  5339 ms  0x1974 PK11_Encrypt()
  5339 ms  0x1974 symkey:0x7f8cfc695080
  5339 ms  0x1974 PK11_Encrypt()
  5339 ms  0x1974 symkey:0x7f8cfc695080
  5340 ms  0x1974 PK11_Encrypt()
  5340 ms  0x1974 symkey:0x7f8cfc695080
  5340 ms  0x1974 PK11_Encrypt()
  5340 ms  0x1974 symkey:0x7f8cfc695080
  5340 ms  0x1974 PK11_Encrypt()
  5340 ms  0x1974 symkey:0x7f8cfc695080
  5341 ms  0x1974 PK11_Encrypt()
  5341 ms  0x1974 symkey:0x7f8cfc695080
  5341 ms  0x1974 PK11_Encrypt()
  5341 ms  0x1974 symkey:0x7f8cfc695080
  5342 ms  0x1974 PK11_Encrypt()
  5342 ms  0x1974 symkey:0x7f8cfc695080
  5342 ms  0x1974 PK11_Encrypt()
  5342 ms  0x1974 symkey:0x7f8cfc695080
  5342 ms  0x1974 PK11_Encrypt()
  5342 ms  0x1974 symkey:0x7f8cfc695080
  5343 ms  0x1974 PK11_Encrypt()
  5343 ms  0x1974 symkey:0x7f8cfc695080
  5343 ms  0x1974 PK11_Encrypt()
  5343 ms  0x1974 symkey:0x7f8cfc695080
  5344 ms  0x1974 PK11_Encrypt()
  5344 ms  0x1974 symkey:0x7f8cfc695080
  5344 ms  0x1974 PK11_Encrypt()
  5344 ms  0x1974 symkey:0x7f8cfc695080
  5345 ms  0x1974 PK11_Encrypt()
  5345 ms  0x1974 symkey:0x7f8cfc695080
  5346 ms  0x1974 PK11_Encrypt()
  5346 ms  0x1974 symkey:0x7f8cfc695080
  5346 ms  0x1974 PK11_Encrypt()
  5346 ms  0x1974 symkey:0x7f8cfc695080
  5347 ms  0x1974 PK11_Encrypt()
  5347 ms  0x1974 symkey:0x7f8cfc695080
  5347 ms  0x1974 PK11_Encrypt()
  5347 ms  0x1974 symkey:0x7f8cfc695080
  5347 ms  0x1974 PK11_Encrypt()
  5347 ms  0x1974 symkey:0x7f8cfc695080
  5348 ms  0x1974 PK11_Encrypt()
  5348 ms  0x1974 symkey:0x7f8cfc695080
  5348 ms  0x1974 PK11_Encrypt()
  5348 ms  0x1974 symkey:0x7f8cfc695080
  5362 ms  0x1974 PK11_Encrypt()
  5362 ms  0x1974 symkey:0x7f8ce8337580
  5372 ms  0x1974 PK11_Encrypt()
  5372 ms  0x1974 symkey:0x7f8ce8337580
  5376 ms  0x1974 PK11_Encrypt()
  5376 ms  0x1974 symkey:0x7f8ce8337580
  5377 ms  0x1974 PK11_Encrypt()
  5377 ms  0x1974 symkey:0x7f8ce8337580
  5378 ms  0x1974 PK11_Encrypt()
  5378 ms  0x1974 symkey:0x7f8ce8337580
  5379 ms  0x1974 PK11_Encrypt()
  5379 ms  0x1974 symkey:0x7f8ce8337580
  5380 ms  0x1974 PK11_Encrypt()
  5380 ms  0x1974 symkey:0x7f8ce8337580
  5382 ms  0x1974 PK11_Encrypt()
  5382 ms  0x1974 symkey:0x7f8ce8337580
  5383 ms  0x1974 PK11_Encrypt()
  5383 ms  0x1974 symkey:0x7f8ce8337580
  5384 ms  0x1974 PK11_Encrypt()
  5384 ms  0x1974 symkey:0x7f8ce8337580
  5385 ms  0x1974 PK11_Encrypt()
  5385 ms  0x1974 symkey:0x7f8ce8337580
  5386 ms  0x1974 PK11_Encrypt()
  5386 ms  0x1974 symkey:0x7f8ce8337580
  5387 ms  0x1974 PK11_Encrypt()
  5387 ms  0x1974 symkey:0x7f8ce8337580
  5388 ms  0x1974 PK11_Encrypt()
  5388 ms  0x1974 symkey:0x7f8ce8337580
  5390 ms  0x1974 PK11_Encrypt()
  5390 ms  0x1974 symkey:0x7f8ce8337580
  5391 ms  0x1974 PK11_Encrypt()
  5391 ms  0x1974 symkey:0x7f8ce8337580
  5392 ms  0x1974 PK11_Encrypt()
  5392 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5393 ms  0x197c PR_Close()
  5393 ms  0x197c fd:0x7f8ce7f13a60
           /* TID 0x1974 */
  5394 ms  0x1974 PK11_Encrypt()
  5394 ms  0x1974 symkey:0x7f8ce8337580
  5395 ms  0x1974 PK11_Encrypt()
  5395 ms  0x1974 symkey:0x7f8ce8337580
  5396 ms  0x1974 PK11_Encrypt()
  5396 ms  0x1974 symkey:0x7f8ce8337580
  5397 ms  0x1974 PK11_Encrypt()
  5397 ms  0x1974 symkey:0x7f8ce8337580
  5398 ms  0x1974 PK11_Encrypt()
  5398 ms  0x1974 symkey:0x7f8ce8337580
  5399 ms  0x1974 PK11_Encrypt()
  5399 ms  0x1974 symkey:0x7f8ce8337580
  5401 ms  0x1974 PK11_Encrypt()
  5401 ms  0x1974 symkey:0x7f8ce8337580
  5402 ms  0x1974 PK11_Encrypt()
  5402 ms  0x1974 symkey:0x7f8ce8337580
  5403 ms  0x1974 PK11_Encrypt()
  5403 ms  0x1974 symkey:0x7f8ce8337580
  5407 ms  0x1974 PK11_Encrypt()
  5407 ms  0x1974 symkey:0x7f8ce8337580
  5408 ms  0x1974 PK11_Encrypt()
  5408 ms  0x1974 symkey:0x7f8ce8337580
  5410 ms  0x1974 PK11_Encrypt()
  5410 ms  0x1974 symkey:0x7f8ce8337580
  5413 ms  0x1974 PK11_Encrypt()
  5413 ms  0x1974 symkey:0x7f8ce8337580
  5414 ms  0x1974 PK11_Encrypt()
  5414 ms  0x1974 symkey:0x7f8ce8337580
  5415 ms  0x1974 PK11_Encrypt()
  5415 ms  0x1974 symkey:0x7f8ce8337580
  5415 ms  0x1974 PK11_Encrypt()
  5415 ms  0x1974 symkey:0x7f8ce8337580
  5416 ms  0x1974 PK11_Encrypt()
  5416 ms  0x1974 symkey:0x7f8ce8337580
  5416 ms  0x1974 PK11_Encrypt()
  5416 ms  0x1974 symkey:0x7f8ce8337580
  5416 ms  0x1974 PK11_Encrypt()
  5416 ms  0x1974 symkey:0x7f8ce8337580
  5417 ms  0x1974 PK11_Encrypt()
  5417 ms  0x1974 symkey:0x7f8ce8337580
  5418 ms  0x1974 PK11_Encrypt()
  5418 ms  0x1974 symkey:0x7f8ce8337580
  5419 ms  0x1974 PK11_Encrypt()
  5419 ms  0x1974 symkey:0x7f8ce8337580
  5420 ms  0x1974 PK11_Encrypt()
  5420 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5424 ms  0x197c PR_Close()
  5424 ms  0x197c fd:0x7f8ce7e82c40
  5429 ms  0x197c PR_Close()
  5429 ms  0x197c fd:0x7f8ce7ee1220
  5430 ms  0x197c PR_Close()
  5430 ms  0x197c fd:0x7f8ce7ee1220
  5430 ms  0x197c PR_Close()
  5430 ms  0x197c fd:0x7f8ce7ee1220
  5432 ms  0x197c PR_Close()
  5432 ms  0x197c fd:0x7f8ce7e824f0
  5434 ms  0x197c PR_Close()
  5434 ms  0x197c fd:0x7f8ce7ee1490
  5434 ms  0x197c PR_Close()
  5434 ms  0x197c fd:0x7f8ce7ee1490
  5435 ms  0x197c PR_Close()
  5435 ms  0x197c fd:0x7f8ce7ee1490
  5435 ms  0x197c PR_Close()
  5435 ms  0x197c fd:0x7f8ce7ee1490
  5436 ms  0x197c PR_Close()
  5436 ms  0x197c fd:0x7f8ce7ee1490
  5438 ms  0x197c PR_Close()
  5438 ms  0x197c fd:0x7f8ce7ee11f0
  5446 ms  0x197c PR_Close()
  5446 ms  0x197c fd:0x7f8ce7e82d00
  5447 ms  0x197c PR_Close()
  5447 ms  0x197c fd:0x7f8ce7e82d00
  5448 ms  0x197c PR_Close()
  5448 ms  0x197c fd:0x7f8ce7e82d00
  5449 ms  0x197c PR_Close()
  5449 ms  0x197c fd:0x7f8ce7e82d00
  5450 ms  0x197c PR_Close()
  5450 ms  0x197c fd:0x7f8ce7ee1af0
           /* TID 0x1974 */
  5451 ms  0x1974 PK11_Encrypt()
  5451 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5452 ms  0x197c PR_Close()
  5452 ms  0x197c fd:0x7f8ce7ee1490
  5453 ms  0x197c PR_Close()
  5453 ms  0x197c fd:0x7f8ce7e822b0
  5453 ms  0x197c PR_Close()
  5453 ms  0x197c fd:0x7f8ce7e82220
  5454 ms  0x197c PR_Close()
  5454 ms  0x197c fd:0x7f8ce7e82070
  5455 ms  0x197c PR_Close()
  5455 ms  0x197c fd:0x7f8ce7e82070
  5456 ms  0x197c PR_Close()
  5456 ms  0x197c fd:0x7f8ce7e82070
  5457 ms  0x197c PR_Close()
  5457 ms  0x197c fd:0x7f8ce7e82070
  5458 ms  0x197c PR_Close()
  5458 ms  0x197c fd:0x7f8ce7e82070
  5459 ms  0x197c PR_Close()
  5459 ms  0x197c fd:0x7f8ce7e82070
  5460 ms  0x197c PR_Close()
  5460 ms  0x197c fd:0x7f8ce7e82040
  5461 ms  0x197c PR_Close()
  5461 ms  0x197c fd:0x7f8ce7e82040
  5461 ms  0x197c PR_Close()
  5461 ms  0x197c fd:0x7f8ce7e82040
  5462 ms  0x197c PR_Close()
  5462 ms  0x197c fd:0x7f8ce7e82040
  5463 ms  0x197c PR_Close()
  5463 ms  0x197c fd:0x7f8ce7e82040
  5468 ms  0x197c PR_Close()
  5468 ms  0x197c fd:0x7f8ce7e82040
  5468 ms  0x197c PR_Close()
  5468 ms  0x197c fd:0x7f8ce7e82040
           /* TID 0x1974 */
  5469 ms  0x1974 PK11_Encrypt()
  5469 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5471 ms  0x197c PR_Close()
  5471 ms  0x197c fd:0x7f8ce7e822b0
  5471 ms  0x197c PR_Close()
  5471 ms  0x197c fd:0x7f8ce7e822b0
  5472 ms  0x197c PR_Close()
  5472 ms  0x197c fd:0x7f8ce7e82220
           /* TID 0x1974 */
  5472 ms  0x1974 PK11_Encrypt()
  5472 ms  0x1974 symkey:0x7f8ce8337580
  5473 ms  0x1974 PK11_Encrypt()
  5473 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5475 ms  0x197c PR_Close()
  5475 ms  0x197c fd:0x7f8ce7e82850
           /* TID 0x1974 */
  5475 ms  0x1974 PK11_Encrypt()
  5475 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5486 ms  0x197c PR_Close()
  5486 ms  0x197c fd:0x7f8ce7e82310
  5487 ms  0x197c PR_Close()
  5487 ms  0x197c fd:0x7f8ce7e82310
           /* TID 0x1974 */
  5487 ms  0x1974 PK11_Encrypt()
  5487 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5490 ms  0x197c PR_Close()
  5490 ms  0x197c fd:0x7f8ce7e82a60
           /* TID 0x1974 */
  5490 ms  0x1974 PK11_Encrypt()
  5490 ms  0x1974 symkey:0x7f8ce8337580
  5491 ms  0x1974 PK11_Encrypt()
  5491 ms  0x1974 symkey:0x7f8ce8337580
  5491 ms  0x1974 PK11_Encrypt()
  5491 ms  0x1974 symkey:0x7f8ce8337580
  5492 ms  0x1974 PK11_Encrypt()
  5492 ms  0x1974 symkey:0x7f8ce8337580
  5492 ms  0x1974 PK11_Encrypt()
  5492 ms  0x1974 symkey:0x7f8ce8337580
  5493 ms  0x1974 PK11_Encrypt()
  5493 ms  0x1974 symkey:0x7f8ce8337580
  5493 ms  0x1974 PK11_Encrypt()
  5493 ms  0x1974 symkey:0x7f8ce8337580
  5494 ms  0x1974 PK11_Encrypt()
  5494 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5500 ms  0x197c PR_Close()
  5500 ms  0x197c fd:0x7f8ce7e82190
  5502 ms  0x197c PR_Close()
  5502 ms  0x197c fd:0x7f8ce7e82ac0
           /* TID 0x1974 */
  5502 ms  0x1974 PK11_Encrypt()
  5502 ms  0x1974 symkey:0x7f8ce8337580
  5506 ms  0x1974 PK11_Encrypt()
  5506 ms  0x1974 symkey:0x7f8ce8337580
  5506 ms  0x1974 PK11_Encrypt()
  5506 ms  0x1974 symkey:0x7f8ce8337580
  5508 ms  0x1974 PK11_Encrypt()
  5508 ms  0x1974 symkey:0x7f8ce8337580
  5509 ms  0x1974 PK11_Encrypt()
  5509 ms  0x1974 symkey:0x7f8ce8337580
  5514 ms  0x1974 PK11_Encrypt()
  5514 ms  0x1974 symkey:0x7f8ce8337580
  5516 ms  0x1974 PK11_Encrypt()
  5516 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5529 ms  0x197c PR_Close()
  5529 ms  0x197c fd:0x7f8ce7e82940
  5531 ms  0x197c PR_Close()
  5531 ms  0x197c fd:0x7f8ce7e822b0
  5531 ms  0x197c PR_Close()
  5531 ms  0x197c fd:0x7f8ce7e82790
  5531 ms  0x197c PR_Close()
  5531 ms  0x197c fd:0x7f8ce7e82af0
  5531 ms  0x197c PR_Close()
  5531 ms  0x197c fd:0x7f8ce7ee1430
  5532 ms  0x197c PR_Close()
  5532 ms  0x197c fd:0x7f8ce7e822b0
  5533 ms  0x197c PR_Close()
  5533 ms  0x197c fd:0x7f8ce7e822b0
  5533 ms  0x197c PR_Close()
  5533 ms  0x197c fd:0x7f8ce7e82100
  5534 ms  0x197c PR_Close()
  5534 ms  0x197c fd:0x7f8ce7e82100
  5534 ms  0x197c PR_Close()
  5534 ms  0x197c fd:0x7f8ce7e82100
  5535 ms  0x197c PR_Close()
  5535 ms  0x197c fd:0x7f8ce7e82040
  5536 ms  0x197c PR_Close()
  5536 ms  0x197c fd:0x7f8ce7e82040
  5537 ms  0x197c PR_Close()
  5537 ms  0x197c fd:0x7f8ce7e82040
  5549 ms  0x197c PR_Close()
  5549 ms  0x197c fd:0x7f8ce7e82040
  5554 ms  0x197c PR_Close()
  5554 ms  0x197c fd:0x7f8ce7e82040
  5555 ms  0x197c PR_Close()
  5555 ms  0x197c fd:0x7f8ce7e82040
  5556 ms  0x197c PR_Close()
  5556 ms  0x197c fd:0x7f8ce7e82040
  5559 ms  0x197c PR_Close()
  5559 ms  0x197c fd:0x7f8ce7e82040
  5561 ms  0x197c PR_Close()
  5561 ms  0x197c fd:0x7f8ce7e82040
  5561 ms  0x197c PR_Close()
  5561 ms  0x197c fd:0x7f8ce7e82310
  5563 ms  0x197c PR_Close()
  5563 ms  0x197c fd:0x7f8ce7e82040
  5565 ms  0x197c PR_Close()
  5565 ms  0x197c fd:0x7f8ce7e82040
  5565 ms  0x197c PR_Close()
  5565 ms  0x197c fd:0x7f8ce7e82040
  5566 ms  0x197c PR_Close()
  5566 ms  0x197c fd:0x7f8ce7e82040
  5567 ms  0x197c PR_Close()
  5567 ms  0x197c fd:0x7f8ce7e82040
  5567 ms  0x197c PR_Close()
  5567 ms  0x197c fd:0x7f8ce7e82040
  5569 ms  0x197c PR_Close()
  5569 ms  0x197c fd:0x7f8ce7e82040
  5570 ms  0x197c PR_Close()
  5570 ms  0x197c fd:0x7f8ce7e82040
  5571 ms  0x197c PR_Close()
  5571 ms  0x197c fd:0x7f8ce7e82040
  5572 ms  0x197c PR_Close()
  5572 ms  0x197c fd:0x7f8ce7e82040
  5574 ms  0x197c PR_Close()
  5574 ms  0x197c fd:0x7f8ce7e82040
  5592 ms  0x197c PR_Close()
  5592 ms  0x197c fd:0x7f8ce7e821f0
           /* TID 0x1974 */
  5593 ms  0x1974 PK11_Encrypt()
  5593 ms  0x1974 symkey:0x7f8ce8337580
  5593 ms  0x1974 PK11_Encrypt()
  5593 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5622 ms  0x197c PR_Close()
  5622 ms  0x197c fd:0x7f8ce7e82040
  5650 ms  0x197c PR_Close()
  5650 ms  0x197c fd:0x7f8ce7e82040
           /* TID 0x1974 */
  5832 ms  0x1974 PK11_Encrypt()
  5832 ms  0x1974 symkey:0x7f8cfc695080
  5832 ms  0x1974 PK11_Encrypt()
  5832 ms  0x1974 symkey:0x7f8cfc695080
  5840 ms  0x1974 PK11_Encrypt()
  5840 ms  0x1974 symkey:0x7f8ce8337580
  5841 ms  0x1974 PK11_Encrypt()
  5841 ms  0x1974 symkey:0x7f8ce8337580
  5842 ms  0x1974 PK11_Encrypt()
  5842 ms  0x1974 symkey:0x7f8ce8337580
  5843 ms  0x1974 PK11_Encrypt()
  5843 ms  0x1974 symkey:0x7f8ce8337580
  5846 ms  0x1974 PK11_Encrypt()
  5846 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5871 ms  0x197c PR_Close()
  5871 ms  0x197c fd:0x7f8ce7e826d0
           /* TID 0x1974 */
  5882 ms  0x1974 SSL_ImportFD()
  5882 ms  0x1974 ret:0x7f8ce7e82af0
  5882 ms  0x1974 SSL_AuthCertificateHook()
  5882 ms  0x1974 fd:0x7f8ce7e82af0
  5882 ms  0x1974 ret:0x0
  5882 ms  0x1974 PR_Connect()
  5882 ms  0x1974 fd:0x7f8ce7e82af0
           /* TID 0x197c */
  5901 ms  0x197c PR_Close()
  5901 ms  0x197c fd:0x7f8ce7e82100
  5902 ms  0x197c PR_Close()
  5902 ms  0x197c fd:0x7f8ce7e82100
  5903 ms  0x197c PR_Close()
  5903 ms  0x197c fd:0x7f8ce7e82100
  5903 ms  0x197c PR_Close()
  5903 ms  0x197c fd:0x7f8ce7e82100
           /* TID 0x1974 */
  5908 ms  0x1974 SECKEY_CreateECPrivateKey()
  5908 ms  0x1974 cx:0x7f8ce8414768
  5908 ms     | 0x1974 EC_ValidatePublicKey()
  5908 ms     | 0x1974 ret:0x0
  5908 ms  0x1974 ret:0x7f8ce7f62820::7f8ce7f62820  40 77 e5 e7                                      @w..
  5908 ms  0x1974 SECKEY_CreateECPrivateKey()
  5908 ms  0x1974 cx:0x7f8ce8414768
  5909 ms     | 0x1974 EC_ValidatePublicKey()
  5910 ms     | 0x1974 ret:0x0
  5910 ms  0x1974 ret:0x7f8ce7f71820::7f8ce7f71820  a0 7b e5 e7                                      .{..
  5923 ms  0x1974 PK11_Encrypt()
  5923 ms  0x1974 symkey:0x7f8ce8337580
  5926 ms  0x1974 PK11_Encrypt()
  5926 ms  0x1974 symkey:0x7f8ce8337580
  5942 ms  0x1974 PK11_Encrypt()
  5942 ms  0x1974 symkey:0x7f8ce8337580
  5943 ms  0x1974 PK11_Encrypt()
  5943 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  5953 ms  0x197c PR_Close()
  5953 ms  0x197c fd:0x7f8ce7e823d0
           /* TID 0x1974 */
  5960 ms  0x1974 PK11_Encrypt()
  5960 ms  0x1974 symkey:0x7f8ce8337580
  5961 ms  SECKEY_ECParamsToKeySize()
  5961 ms  0x1974 ret:0x100
  5961 ms  0x1974 SECKEY_CreateECPrivateKey()
  5961 ms  0x1974 cx:0x7f8ce8414768
  5961 ms     | 0x1974 EC_ValidatePublicKey()
  5963 ms     | 0x1974 ret:0x0
  5963 ms  0x1974 ret:0x7f8ce7c89820::7f8ce7c89820  20 54 1c e8                                       T..
  5963 ms  0x1974 PK11_PubDeriveWithKDF()
  5963 ms  0x1974 seckey:0x7f8ce7c89820
  5963 ms     | 0x1974 EC_ValidatePublicKey()
  5964 ms     | 0x1974 ret:0x0
  5966 ms  0x1974 ret:0x7f8ce8337200
  5966 ms  0x1974 PK11_DeriveWithFlags()
  5966 ms  0x1974 basekey:0x7f8ce8337200
  5966 ms     | 0x1974 PK11_DeriveWithTemplate()
  5966 ms  0x1974 ret:0x7f8ce82f7d00
  5966 ms  0x1974 PK11_Derive()
  5966 ms  0x1974 basekey:0x7f8ce82f7d00
  5966 ms     | 0x1974 PK11_DeriveWithTemplate()
  5966 ms  0x1974 ret:0x7f8cfa8fc600
  5966 ms  0x1974 SECKEY_DestroyPrivateKey()
  5966 ms  0x1974 privk:0x7f8ce7c89820::7f8ce7c89820  20 54 1c e8                                       T..
  5966 ms  0x1974 privk:0x7f8ce7c89820::7f8ce7c89820  e5 e5 e5 e5                                      ....
  5966 ms  0x1974 PK11_Encrypt()
  5966 ms  0x1974 symkey:0x7f8ce82f7e00
           /* TID 0x1a09 */
  5966 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5967 ms  0x1a09 ret:0x0
           /* TID 0x1974 */
  5970 ms  0x1974 SSL_AuthCertificateComplete()
  5970 ms  0x1974 fd:0x7f8ce7e82af0
  5970 ms  0x1974 err:0x0
  5970 ms  0x1974 PK11_Encrypt()
  5970 ms  0x1974 symkey:0x7f8ce82f7e00
           /* TID 0x197c */
  5983 ms  0x197c PR_Close()
  5983 ms  0x197c fd:0x7f8ce7ee1730
  5984 ms  0x197c PR_Close()
  5984 ms  0x197c fd:0x7f8ce7ee1340
  5985 ms  0x197c PR_Close()
  5985 ms  0x197c fd:0x7f8ce7ee1340
           /* TID 0x1974 */
  5991 ms  0x1974 SSL_ImportFD()
  5991 ms  0x1974 ret:0x7f8ce7f131c0
  5991 ms  0x1974 SSL_AuthCertificateHook()
  5991 ms  0x1974 fd:0x7f8ce7f131c0
  5991 ms  0x1974 ret:0x0
  5991 ms  0x1974 PR_Connect()
  5991 ms  0x1974 fd:0x7f8ce7f131c0
  5993 ms  0x1974 PK11_Encrypt()
  5993 ms  0x1974 symkey:0x7f8ce8337580
  5999 ms  0x1974 PK11_Encrypt()
  5999 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x197c */
  6014 ms  0x197c PR_Close()
  6014 ms  0x197c fd:0x7f8ce7ee1eb0
           /* TID 0x1974 */
  6017 ms  0x1974 SECKEY_DestroyPrivateKey()
  6017 ms  0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  a0 7b e5 e7                                      .{..
  6017 ms  0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  e5 e5 e5 e5                                      ....
  6017 ms  0x1974 SECKEY_DestroyPrivateKey()
  6017 ms  0x1974 privk:0x7f8ce7f62820::7f8ce7f62820  40 77 e5 e7                                      @w..
  6017 ms  0x1974 privk:0x7f8ce7f62820::7f8ce7f62820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  6019 ms  0x197c PR_Close()
  6019 ms  0x197c fd:0x7f8ce7ee1430
           /* TID 0x1974 */
  6029 ms  0x1974 SECKEY_CreateECPrivateKey()
  6029 ms  0x1974 cx:0x7f8ce8415128
  6029 ms     | 0x1974 EC_ValidatePublicKey()
  6029 ms     | 0x1974 ret:0x0
  6029 ms  0x1974 ret:0x7f8ce7f62820::7f8ce7f62820  f0 76 e5 e7                                      .v..
  6029 ms  0x1974 SECKEY_CreateECPrivateKey()
  6029 ms  0x1974 cx:0x7f8ce8415128
  6030 ms     | 0x1974 EC_ValidatePublicKey()
  6031 ms     | 0x1974 ret:0x0
  6031 ms  0x1974 ret:0x7f8ce7f71820::7f8ce7f71820  70 79 e5 e7                                      py..
  6036 ms  0x1974 SSL_ImportFD()
  6036 ms  0x1974 ret:0x7f8ce7f135e0
  6036 ms  0x1974 SSL_AuthCertificateHook()
  6036 ms  0x1974 fd:0x7f8ce7f135e0
  6036 ms  0x1974 ret:0x0
  6036 ms  0x1974 PR_Connect()
  6036 ms  0x1974 fd:0x7f8ce7f135e0
           /* TID 0x197c */
  6045 ms  0x197c PR_Close()
  6045 ms  0x197c fd:0x7f8ce7ee1fd0
  6046 ms  0x197c PR_Close()
  6046 ms  0x197c fd:0x7f8ce7ee1fd0
           /* TID 0x1974 */
  6074 ms  0x1974 SECKEY_CreateECPrivateKey()
  6074 ms  0x1974 cx:0x7f8ce84152c8
  6074 ms     | 0x1974 EC_ValidatePublicKey()
  6074 ms     | 0x1974 ret:0x0
  6074 ms  0x1974 ret:0x7f8ce7cc2020::7f8ce7cc2020  90 57 1c e8                                      .W..
  6074 ms  0x1974 SECKEY_CreateECPrivateKey()
  6074 ms  0x1974 cx:0x7f8ce84152c8
  6075 ms     | 0x1974 EC_ValidatePublicKey()
  6076 ms     | 0x1974 ret:0x0
  6076 ms  0x1974 ret:0x7f8ce7cc4020::7f8ce7cc4020  b0 10 26 e8                                      ..&.
  6085 ms  0x1974 PK11_Derive()
  6085 ms  0x1974 basekey:0x7f8ce8337200
  6085 ms     | 0x1974 PK11_DeriveWithTemplate()
  6085 ms  0x1974 ret:0x7f8ce7c96680
  6085 ms  0x1974 PK11_PubDeriveWithKDF()
  6085 ms  0x1974 seckey:0x7f8ce7f62820
  6085 ms     | 0x1974 EC_ValidatePublicKey()
  6085 ms     | 0x1974 ret:0x0
  6086 ms  0x1974 ret:0x7f8ce8337200
  6086 ms  SECKEY_ECParamsToKeySize()
  6086 ms  0x1974 ret:0xff
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce7c96680
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96900
  6086 ms  0x1974 PK11_Derive()
  6086 ms  0x1974 basekey:0x7f8ce8337200
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96980
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce7c96980
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96680
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce7c96980
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce8337200
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce7c96980
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96900
  6086 ms  0x1974 PK11_Derive()
  6086 ms  0x1974 basekey:0x7f8ce7c96b00
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96b80
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce8337200
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96980
  6086 ms  0x1974 PK11_DeriveWithFlags()
  6086 ms  0x1974 basekey:0x7f8ce8337200
  6086 ms     | 0x1974 PK11_DeriveWithTemplate()
  6086 ms  0x1974 ret:0x7f8ce7c96900
  6088 ms  SECKEY_ECParamsToKeySize()
  6088 ms  0x1974 ret:0x100
  6088 ms  SECKEY_ECParamsToBasePointOrderLen()
  6088 ms  0x1974 ret:0x100
  6088 ms  SECKEY_ECParamsToBasePointOrderLen()
  6088 ms  0x1974 ret:0x100
  6088 ms  0x1974 EC_ValidatePublicKey()
  6089 ms  0x1974 ret:0x0
  6091 ms  0x1974 PK11_DeriveWithFlags()
  6091 ms  0x1974 basekey:0x7f8ce8337200
  6091 ms     | 0x1974 PK11_DeriveWithTemplate()
  6091 ms  0x1974 ret:0x7f8ce7c96900
  6131 ms  0x1974 PK11_Derive()
  6131 ms  0x1974 basekey:0x7f8ce7c96900
  6131 ms     | 0x1974 PK11_DeriveWithTemplate()
  6131 ms  0x1974 ret:0x7f8ce7c96b00
  6132 ms  0x1974 PK11_PubDeriveWithKDF()
  6132 ms  0x1974 seckey:0x7f8ce7cc2020
  6132 ms     | 0x1974 EC_ValidatePublicKey()
  6132 ms     | 0x1974 ret:0x0
  6132 ms  0x1974 ret:0x7f8ce7c96900
  6132 ms  SECKEY_ECParamsToKeySize()
  6132 ms  0x1974 ret:0xff
  6132 ms  0x1974 PK11_DeriveWithFlags()
  6132 ms  0x1974 basekey:0x7f8ce7c96b00
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c96780
  6132 ms  0x1974 PK11_Derive()
  6132 ms  0x1974 basekey:0x7f8ce7c96900
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c97000
  6132 ms  0x1974 PK11_DeriveWithFlags()
  6132 ms  0x1974 basekey:0x7f8ce7c97000
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c96b00
  6132 ms  0x1974 PK11_DeriveWithFlags()
  6132 ms  0x1974 basekey:0x7f8ce7c97000
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c96900
  6132 ms  0x1974 PK11_DeriveWithFlags()
  6132 ms  0x1974 basekey:0x7f8ce7c97000
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c96780
  6132 ms  0x1974 PK11_Derive()
  6132 ms  0x1974 basekey:0x7f8ce7c97080
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6132 ms  0x1974 ret:0x7f8ce7c97100
  6132 ms  0x1974 PK11_DeriveWithFlags()
  6132 ms  0x1974 basekey:0x7f8ce7c96900
  6132 ms     | 0x1974 PK11_DeriveWithTemplate()
  6133 ms  0x1974 ret:0x7f8ce7c97000
  6133 ms  0x1974 PK11_DeriveWithFlags()
  6133 ms  0x1974 basekey:0x7f8ce7c96900
  6133 ms     | 0x1974 PK11_DeriveWithTemplate()
  6133 ms  0x1974 ret:0x7f8ce7c96780
  6135 ms  0x1974 PK11_DeriveWithFlags()
  6135 ms  0x1974 basekey:0x7f8ce7c96900
  6135 ms     | 0x1974 PK11_DeriveWithTemplate()
  6135 ms  0x1974 ret:0x7f8ce7c96780
  6140 ms  0x1974 PR_Connect()
  6140 ms  0x1974 fd:0x7f8ce8339c40
  6140 ms  0x1974 PR_Connect()
  6140 ms  0x1974 fd:0x7f8ce821adf0
  6205 ms  0x1974 SSL_ImportFD()
  6205 ms  0x1974 ret:0x7f8ce81ebfd0
  6205 ms  0x1974 SSL_AuthCertificateHook()
  6205 ms  0x1974 fd:0x7f8ce81ebfd0
  6205 ms  0x1974 ret:0x0
  6206 ms  0x1974 PR_Connect()
  6206 ms  0x1974 fd:0x7f8ce81ebfd0
  6232 ms  0x1974 SECKEY_CreateECPrivateKey()
  6232 ms  0x1974 cx:0x7f8ce84157a8
  6234 ms     | 0x1974 EC_ValidatePublicKey()
  6234 ms     | 0x1974 ret:0x0
  6234 ms  0x1974 ret:0x7f8ce7cd5020::7f8ce7cd5020  b0 d0 37 fa                                      ..7.
  6234 ms  0x1974 SECKEY_CreateECPrivateKey()
  6234 ms  0x1974 cx:0x7f8ce84157a8
  6236 ms     | 0x1974 EC_ValidatePublicKey()
  6240 ms     | 0x1974 ret:0x0
  6241 ms  0x1974 ret:0x7f8ce7cd7020::7f8ce7cd7020  e0 2c 62 03                                      .,b.
  6292 ms  SECKEY_ECParamsToKeySize()
  6292 ms  0x1974 ret:0x100
  6292 ms  0x1974 SECKEY_CreateECPrivateKey()
  6292 ms  0x1974 cx:0x7f8ce84157a8
  6293 ms     | 0x1974 EC_ValidatePublicKey()
  6295 ms     | 0x1974 ret:0x0
  6295 ms  0x1974 ret:0x7f8ce81d1820::7f8ce81d1820  b0 ea 81 e7                                      ....
  6295 ms  0x1974 PK11_PubDeriveWithKDF()
  6295 ms  0x1974 seckey:0x7f8ce81d1820
  6295 ms     | 0x1974 EC_ValidatePublicKey()
  6297 ms     | 0x1974 ret:0x0
           /* TID 0x1a0c */
  6299 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6299 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
  6299 ms  0x1974 ret:0x7f8ce7c96780
  6299 ms  0x1974 PK11_DeriveWithFlags()
  6299 ms  0x1974 basekey:0x7f8ce7c96780
  6299 ms     | 0x1974 PK11_DeriveWithTemplate()
  6299 ms  0x1974 ret:0x7f8ce7c97080
  6299 ms  0x1974 PK11_Derive()
  6299 ms  0x1974 basekey:0x7f8ce7c97080
  6299 ms     | 0x1974 PK11_DeriveWithTemplate()
  6299 ms  0x1974 ret:0x7f8ce7c97780
  6299 ms  0x1974 SECKEY_DestroyPrivateKey()
  6299 ms  0x1974 privk:0x7f8ce81d1820::7f8ce81d1820  b0 ea 81 e7                                      ....
  6300 ms  0x1974 privk:0x7f8ce81d1820::7f8ce81d1820  e5 e5 e5 e5                                      ....
  6300 ms  0x1974 PK11_Encrypt()
  6300 ms  0x1974 symkey:0x7f8ce7deda00
  6304 ms  0x1974 SSL_AuthCertificateComplete()
  6304 ms  0x1974 fd:0x7f8ce81ebfd0
  6304 ms  0x1974 err:0x0
  6304 ms  0x1974 PK11_Encrypt()
  6304 ms  0x1974 symkey:0x7f8ce7deda00
  6304 ms  0x1974 PK11_Encrypt()
  6304 ms  0x1974 symkey:0x7f8ce7deda00
           /* TID 0x197c */
  6322 ms  0x197c PR_Close()
  6322 ms  0x197c fd:0x7f8ce7cff1f0
           /* TID 0x1a09 */
  6323 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6323 ms  0x1a09 ret:0x0
           /* TID 0x19d3 */
  6325 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6325 ms  0x19d3 ret:0x0
           /* TID 0x197c */
  6325 ms  0x197c PR_Close()
  6325 ms  0x197c fd:0x7f8ce7cff2e0
           /* TID 0x1974 */
  6326 ms  0x1974 SECKEY_DestroyPrivateKey()
  6326 ms  0x1974 privk:0x7f8ce7cd7020::7f8ce7cd7020  e0 2c 62 03                                      .,b.
  6326 ms  0x1974 privk:0x7f8ce7cd7020::7f8ce7cd7020  e5 e5 e5 e5                                      ....
  6326 ms  0x1974 SECKEY_DestroyPrivateKey()
  6326 ms  0x1974 privk:0x7f8ce7cd5020::7f8ce7cd5020  b0 d0 37 fa                                      ..7.
  6326 ms  0x1974 privk:0x7f8ce7cd5020::7f8ce7cd5020  e5 e5 e5 e5                                      ....
  6326 ms  0x1974 PK11_Encrypt()
  6326 ms  0x1974 symkey:0x7f8ce7deda00
           /* TID 0x197c */
  6354 ms  0x197c PR_Close()
  6354 ms  0x197c fd:0x7f8ce7cff340
           /* TID 0x1974 */
  6362 ms  0x1974 PK11_Encrypt()
  6362 ms  0x1974 symkey:0x7f8ce7deda00
           /* TID 0x197c */
  6456 ms  0x197c PR_Close()
  6456 ms  0x197c fd:0x7f8ce7cff400
           /* TID 0x1974 */
  7329 ms  0x1974 SSL_AuthCertificateComplete()
  7329 ms  0x1974 fd:0x7f8ce7f135e0
  7329 ms  0x1974 err:0x0
  7329 ms     | 0x1974 PK11_DeriveWithFlags()
  7329 ms     | 0x1974 basekey:0x7f8ce7c97100
  7329 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7329 ms     | 0x1974 ret:0x7f8ce7c96780
  7329 ms     | 0x1974 PK11_DeriveWithFlags()
  7329 ms     | 0x1974 basekey:0x7f8ce7c97100
  7329 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7329 ms     | 0x1974 ret:0x7f8ce7c96300
  7329 ms     | 0x1974 PK11_DeriveWithFlags()
  7329 ms     | 0x1974 basekey:0x7f8ce7c97100
  7329 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7329 ms     | 0x1974 ret:0x7f8ce7c96480
  7329 ms     | 0x1974 PK11_DeriveWithFlags()
  7329 ms     | 0x1974 basekey:0x7f8ce7c96b00
  7329 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7329 ms     | 0x1974 ret:0x7f8ce7c96880
  7329 ms     | 0x1974 PK11_DeriveWithFlags()
  7329 ms     | 0x1974 basekey:0x7f8ce7c96b00
  7330 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7330 ms     | 0x1974 ret:0x7f8ce7d26080
  7330 ms     | 0x1974 PK11_DeriveWithFlags()
  7330 ms     | 0x1974 basekey:0x7f8ce7c96300
  7330 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7330 ms     | 0x1974 ret:0x7f8ce7d26080
  7330 ms     | 0x1974 PK11_DeriveWithFlags()
  7330 ms     | 0x1974 basekey:0x7f8ce7c96300
  7330 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7330 ms     | 0x1974 ret:0x7f8ce7d26100
  7330 ms     | 0x1974 PK11_DeriveWithFlags()
  7330 ms     | 0x1974 basekey:0x7f8ce7c96b00
  7330 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7330 ms     | 0x1974 ret:0x7f8ce7c97000
  7330 ms     | 0x1974 PK11_Encrypt()
  7330 ms     | 0x1974 symkey:0x7f8ce7c96880
  7330 ms     | 0x1974 PK11_DeriveWithFlags()
  7330 ms     | 0x1974 basekey:0x7f8ce7c96780
  7331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7331 ms     | 0x1974 ret:0x7f8ce7c97000
  7331 ms     | 0x1974 PK11_DeriveWithFlags()
  7331 ms     | 0x1974 basekey:0x7f8ce7c96780
  7331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7331 ms     | 0x1974 ret:0x7f8ce7d26100
  7331 ms     | 0x1974 PK11_DeriveWithFlags()
  7331 ms     | 0x1974 basekey:0x7f8ce7c97100
  7331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7331 ms     | 0x1974 ret:0x7f8ce7c96880
  7333 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7333 ms     | 0x1974 privk:0x7f8ce7cc4020::7f8ce7cc4020  b0 10 26 e8                                      ..&.
  7333 ms     | 0x1974 privk:0x7f8ce7cc4020::7f8ce7cc4020  e5 e5 e5 e5                                      ....
  7334 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7334 ms     | 0x1974 privk:0x7f8ce7cc2020::7f8ce7cc2020  90 57 1c e8                                      .W..
  7334 ms     | 0x1974 privk:0x7f8ce7cc2020::7f8ce7cc2020  e5 e5 e5 e5                                      ....
  7336 ms  0x1974 PK11_Encrypt()
  7336 ms  0x1974 symkey:0x7f8ce7c97000
  7340 ms  0x1974 PK11_Encrypt()
  7340 ms  0x1974 symkey:0x7f8ce7c97000
  7351 ms  0x1974 SSL_AuthCertificateComplete()
  7351 ms  0x1974 fd:0x7f8ce7f131c0
  7351 ms  0x1974 err:0x0
  7351 ms     | 0x1974 PK11_DeriveWithFlags()
  7351 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7351 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7351 ms     | 0x1974 ret:0x7f8ce7c96900
  7351 ms     | 0x1974 PK11_DeriveWithFlags()
  7351 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7351 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7351 ms     | 0x1974 ret:0x7f8ce7c96b00
  7351 ms     | 0x1974 PK11_DeriveWithFlags()
  7351 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7351 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7351 ms     | 0x1974 ret:0x7f8ce7c97100
  7351 ms     | 0x1974 PK11_DeriveWithFlags()
  7351 ms     | 0x1974 basekey:0x7f8ce7c96680
  7351 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7351 ms     | 0x1974 ret:0x7f8ce7d26100
  7351 ms     | 0x1974 PK11_DeriveWithFlags()
  7351 ms     | 0x1974 basekey:0x7f8ce7c96680
  7351 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7352 ms     | 0x1974 ret:0x7f8ce7c96380
  7352 ms     | 0x1974 PK11_DeriveWithFlags()
  7352 ms     | 0x1974 basekey:0x7f8ce7c96b00
  7352 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7352 ms     | 0x1974 ret:0x7f8ce7c96380
  7352 ms     | 0x1974 PK11_DeriveWithFlags()
  7352 ms     | 0x1974 basekey:0x7f8ce7c96b00
  7352 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7352 ms     | 0x1974 ret:0x7f8ce7c96a00
  7352 ms     | 0x1974 PK11_DeriveWithFlags()
  7352 ms     | 0x1974 basekey:0x7f8ce7c96680
  7352 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7352 ms     | 0x1974 ret:0x7f8ce7c96980
  7352 ms     | 0x1974 PK11_Encrypt()
  7352 ms     | 0x1974 symkey:0x7f8ce7d26100
  7352 ms     | 0x1974 PK11_DeriveWithFlags()
  7352 ms     | 0x1974 basekey:0x7f8ce7c96900
  7352 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7352 ms     | 0x1974 ret:0x7f8ce7c96980
  7353 ms     | 0x1974 PK11_DeriveWithFlags()
  7353 ms     | 0x1974 basekey:0x7f8ce7c96900
  7353 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7353 ms     | 0x1974 ret:0x7f8ce7c96a00
  7353 ms     | 0x1974 PK11_DeriveWithFlags()
  7353 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7353 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7353 ms     | 0x1974 ret:0x7f8ce7d26100
  7353 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7353 ms     | 0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  70 79 e5 e7                                      py..
  7354 ms     | 0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  e5 e5 e5 e5                                      ....
  7355 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7355 ms     | 0x1974 privk:0x7f8ce7f62820::7f8ce7f62820  f0 76 e5 e7                                      .v..
  7355 ms     | 0x1974 privk:0x7f8ce7f62820::7f8ce7f62820  e5 e5 e5 e5                                      ....
  7356 ms  0x1974 PK11_Encrypt()
  7356 ms  0x1974 symkey:0x7f8ce7c96980
  7356 ms  0x1974 PK11_Encrypt()
  7356 ms  0x1974 symkey:0x7f8ce7c96980
  7368 ms  0x1974 PK11_DeriveWithFlags()
  7368 ms  0x1974 basekey:0x7f8ce7c96880
  7368 ms     | 0x1974 PK11_DeriveWithTemplate()
  7369 ms  0x1974 ret:0x7f8ce8337200
  7369 ms  0x1974 PK11_DeriveWithFlags()
  7369 ms  0x1974 basekey:0x7f8ce7c96880
  7369 ms     | 0x1974 PK11_DeriveWithTemplate()
  7369 ms  0x1974 ret:0x7f8ce8337200
  7369 ms  0x1974 PK11_Encrypt()
  7369 ms  0x1974 symkey:0x7f8ce7c97000
  7466 ms  0x1974 PK11_Encrypt()
  7466 ms  0x1974 symkey:0x7f8ce7c97000
           /* TID 0x197c */
  7468 ms  0x197c PR_Close()
  7468 ms  0x197c fd:0x7f8ce7e824c0
           /* TID 0x1974 */
  7468 ms  0x1974 PK11_DeriveWithFlags()
  7468 ms  0x1974 basekey:0x7f8ce7d26100
  7468 ms     | 0x1974 PK11_DeriveWithTemplate()
  7468 ms  0x1974 ret:0x7f8ce8337200
  7468 ms  0x1974 PK11_DeriveWithFlags()
  7468 ms  0x1974 basekey:0x7f8ce7d26100
  7468 ms     | 0x1974 PK11_DeriveWithTemplate()
  7468 ms  0x1974 ret:0x7f8ce8337200
  7468 ms  0x1974 PK11_Encrypt()
  7468 ms  0x1974 symkey:0x7f8ce7c96980
  7487 ms  0x1974 PK11_Encrypt()
  7487 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  7488 ms  0x197c PR_Close()
  7488 ms  0x197c fd:0x7f8ce7e82550
           /* TID 0x1974 */
  7512 ms  0x1974 SSL_ImportFD()
  7512 ms  0x1974 ret:0x7f8ce7f13550
  7512 ms  0x1974 SSL_AuthCertificateHook()
  7512 ms  0x1974 fd:0x7f8ce7f13550
  7512 ms  0x1974 ret:0x0
  7512 ms  0x1974 PR_Connect()
  7512 ms  0x1974 fd:0x7f8ce7f13550
  7512 ms  0x1974 SSL_ImportFD()
  7512 ms  0x1974 ret:0x7f8ce7f13850
  7512 ms  0x1974 SSL_AuthCertificateHook()
  7512 ms  0x1974 fd:0x7f8ce7f13850
  7512 ms  0x1974 ret:0x0
  7512 ms  0x1974 PR_Connect()
  7512 ms  0x1974 fd:0x7f8ce7f13850
  7512 ms  0x1974 SSL_ImportFD()
  7512 ms  0x1974 ret:0x7f8ce7ee1c40
  7512 ms  0x1974 SSL_AuthCertificateHook()
  7512 ms  0x1974 fd:0x7f8ce7ee1c40
  7512 ms  0x1974 ret:0x0
  7512 ms  0x1974 PR_Connect()
  7512 ms  0x1974 fd:0x7f8ce7ee1c40
  7513 ms  0x1974 SSL_ImportFD()
  7513 ms  0x1974 ret:0x7f8ce7ee1d60
  7513 ms  0x1974 SSL_AuthCertificateHook()
  7513 ms  0x1974 fd:0x7f8ce7ee1d60
  7513 ms  0x1974 ret:0x0
  7513 ms  0x1974 PR_Connect()
  7513 ms  0x1974 fd:0x7f8ce7ee1d60
  7513 ms  0x1974 SSL_ImportFD()
  7513 ms  0x1974 ret:0x7f8ce7ee1f40
  7513 ms  0x1974 SSL_AuthCertificateHook()
  7513 ms  0x1974 fd:0x7f8ce7ee1f40
  7513 ms  0x1974 ret:0x0
  7513 ms  0x1974 PR_Connect()
  7513 ms  0x1974 fd:0x7f8ce7ee1f40
  7541 ms  0x1974 SSL_ImportFD()
  7541 ms  0x1974 ret:0x7f8ce8339b50
  7541 ms  0x1974 SSL_AuthCertificateHook()
  7541 ms  0x1974 fd:0x7f8ce8339b50
  7541 ms  0x1974 ret:0x0
  7541 ms  0x1974 PR_Connect()
  7541 ms  0x1974 fd:0x7f8ce8339b50
  7550 ms  0x1974 SECKEY_CreateECPrivateKey()
  7550 ms  0x1974 cx:0x7f8ce8415468
  7550 ms     | 0x1974 EC_ValidatePublicKey()
  7550 ms     | 0x1974 ret:0x0
  7550 ms  0x1974 ret:0x7f8ce7dcc820::7f8ce7dcc820  50 11 26 e8                                      P.&.
  7550 ms  0x1974 SECKEY_CreateECPrivateKey()
  7550 ms  0x1974 cx:0x7f8ce8415468
  7551 ms     | 0x1974 EC_ValidatePublicKey()
  7552 ms     | 0x1974 ret:0x0
  7552 ms  0x1974 ret:0x7f8ce7dce820::7f8ce7dce820  c0 14 26 e8                                      ..&.
  7555 ms  0x1974 SECKEY_CreateECPrivateKey()
  7555 ms  0x1974 cx:0x7f8ce8416cc8
  7556 ms     | 0x1974 EC_ValidatePublicKey()
  7556 ms     | 0x1974 ret:0x0
  7556 ms  0x1974 ret:0x7f8ce7dd1820::7f8ce7dd1820  40 1c 26 e8                                      @.&.
  7556 ms  0x1974 SECKEY_CreateECPrivateKey()
  7556 ms  0x1974 cx:0x7f8ce8416cc8
  7556 ms     | 0x1974 EC_ValidatePublicKey()
  7561 ms     | 0x1974 ret:0x0
  7561 ms  0x1974 ret:0x7f8ce7dd3820::7f8ce7dd3820  70 59 1c e8                                      pY..
  7561 ms  0x1974 SECKEY_CreateECPrivateKey()
  7561 ms  0x1974 cx:0x7f8ce8416b28
  7562 ms     | 0x1974 EC_ValidatePublicKey()
  7562 ms     | 0x1974 ret:0x0
  7562 ms  0x1974 ret:0x7f8ce7dd6020::7f8ce7dd6020  d0 48 20 e8                                      .H .
  7562 ms  0x1974 SECKEY_CreateECPrivateKey()
  7562 ms  0x1974 cx:0x7f8ce8416b28
  7562 ms     | 0x1974 EC_ValidatePublicKey()
  7564 ms     | 0x1974 ret:0x0
  7564 ms  0x1974 ret:0x7f8ce7dd8020::7f8ce7dd8020  10 1f 26 e8                                      ..&.
  7566 ms  0x1974 SECKEY_CreateECPrivateKey()
  7566 ms  0x1974 cx:0x7f8cf9516b28
  7567 ms     | 0x1974 EC_ValidatePublicKey()
  7567 ms     | 0x1974 ret:0x0
  7567 ms  0x1974 ret:0x7f8ce7ddb820::7f8ce7ddb820  b0 10 36 e8                                      ..6.
  7567 ms  0x1974 SECKEY_CreateECPrivateKey()
  7567 ms  0x1974 cx:0x7f8cf9516b28
  7569 ms     | 0x1974 EC_ValidatePublicKey()
  7571 ms     | 0x1974 ret:0x0
  7571 ms  0x1974 ret:0x7f8ce7dde820::7f8ce7dde820  d0 1d 36 e8                                      ..6.
  7571 ms  0x1974 SECKEY_CreateECPrivateKey()
  7571 ms  0x1974 cx:0x7f8ce8416e68
  7572 ms     | 0x1974 EC_ValidatePublicKey()
  7572 ms     | 0x1974 ret:0x0
  7572 ms  0x1974 ret:0x7f8ce7de2020::7f8ce7de2020  b0 b5 37 e8                                      ..7.
  7572 ms  0x1974 SECKEY_CreateECPrivateKey()
  7572 ms  0x1974 cx:0x7f8ce8416e68
  7572 ms     | 0x1974 EC_ValidatePublicKey()
  7579 ms     | 0x1974 ret:0x0
  7579 ms  0x1974 ret:0x7f8ce7e9f020::7f8ce7e9f020  10 75 50 f9                                      .uP.
  7582 ms  0x1974 SECKEY_CreateECPrivateKey()
  7582 ms  0x1974 cx:0x7f8d036e8468
  7583 ms     | 0x1974 EC_ValidatePublicKey()
  7583 ms     | 0x1974 ret:0x0
  7583 ms  0x1974 ret:0x7f8ce7ea1020::7f8ce7ea1020  d0 78 50 f9                                      .xP.
  7583 ms  0x1974 SECKEY_CreateECPrivateKey()
  7583 ms  0x1974 cx:0x7f8d036e8468
  7584 ms     | 0x1974 EC_ValidatePublicKey()
  7586 ms     | 0x1974 ret:0x0
  7586 ms  0x1974 ret:0x7f8ce7ea3020::7f8ce7ea3020  a0 7b 50 f9                                      .{P.
  7586 ms  0x1974 SSL_ImportFD()
  7586 ms  0x1974 ret:0x7f8cf951c1c0
  7586 ms  0x1974 SSL_AuthCertificateHook()
  7586 ms  0x1974 fd:0x7f8cf951c1c0
  7586 ms  0x1974 ret:0x0
  7586 ms  0x1974 PR_Connect()
  7586 ms  0x1974 fd:0x7f8cf951c1c0
  7586 ms  0x1974 SSL_ImportFD()
  7587 ms  0x1974 ret:0x7f8ce821abb0
  7587 ms  0x1974 SSL_AuthCertificateHook()
  7587 ms  0x1974 fd:0x7f8ce821abb0
  7587 ms  0x1974 ret:0x0
  7587 ms  0x1974 PR_Connect()
  7587 ms  0x1974 fd:0x7f8ce821abb0
  7587 ms  0x1974 SSL_ImportFD()
  7587 ms  0x1974 ret:0x7f8ce8339400
  7587 ms  0x1974 SSL_AuthCertificateHook()
  7587 ms  0x1974 fd:0x7f8ce8339400
  7587 ms  0x1974 ret:0x0
  7587 ms  0x1974 PR_Connect()
  7587 ms  0x1974 fd:0x7f8ce8339400
  7587 ms  0x1974 SSL_ImportFD()
  7587 ms  0x1974 ret:0x7f8cf951c130
  7587 ms  0x1974 SSL_AuthCertificateHook()
  7587 ms  0x1974 fd:0x7f8cf951c130
  7587 ms  0x1974 ret:0x0
  7587 ms  0x1974 PR_Connect()
  7587 ms  0x1974 fd:0x7f8cf951c130
  7588 ms  0x1974 SSL_ImportFD()
  7588 ms  0x1974 ret:0x7f8cf9512d00
  7588 ms  0x1974 SSL_AuthCertificateHook()
  7588 ms  0x1974 fd:0x7f8cf9512d00
  7588 ms  0x1974 ret:0x0
  7588 ms  0x1974 PR_Connect()
  7588 ms  0x1974 fd:0x7f8cf9512d00
  7588 ms  0x1974 SSL_ImportFD()
  7588 ms  0x1974 ret:0x7f8cf9595160
  7588 ms  0x1974 SSL_AuthCertificateHook()
  7588 ms  0x1974 fd:0x7f8cf9595160
  7588 ms  0x1974 ret:0x0
  7588 ms  0x1974 PR_Connect()
  7588 ms  0x1974 fd:0x7f8cf9595160
  7589 ms  0x1974 SSL_ImportFD()
  7589 ms  0x1974 ret:0x7f8cf951c160
  7589 ms  0x1974 SSL_AuthCertificateHook()
  7589 ms  0x1974 fd:0x7f8cf951c160
  7589 ms  0x1974 ret:0x0
  7589 ms  0x1974 PR_Connect()
  7589 ms  0x1974 fd:0x7f8cf951c160
  7589 ms  0x1974 SSL_ImportFD()
  7589 ms  0x1974 ret:0x7f8ce81ebe80
  7589 ms  0x1974 SSL_AuthCertificateHook()
  7589 ms  0x1974 fd:0x7f8ce81ebe80
  7589 ms  0x1974 ret:0x0
  7589 ms  0x1974 PR_Connect()
  7589 ms  0x1974 fd:0x7f8ce81ebe80
  7607 ms  0x1974 PK11_Derive()
  7607 ms  0x1974 basekey:0x7f8ce8337200
  7607 ms     | 0x1974 PK11_DeriveWithTemplate()
  7607 ms  0x1974 ret:0x7f8ce7c96680
  7607 ms  0x1974 PK11_PubDeriveWithKDF()
  7607 ms  0x1974 seckey:0x7f8ce7dcc820
  7607 ms     | 0x1974 EC_ValidatePublicKey()
  7607 ms     | 0x1974 ret:0x0
  7608 ms  0x1974 ret:0x7f8ce8337200
  7608 ms  SECKEY_ECParamsToKeySize()
  7608 ms  0x1974 ret:0xff
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce7c96680
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96b80
  7608 ms  0x1974 PK11_Derive()
  7608 ms  0x1974 basekey:0x7f8ce8337200
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96a00
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce7c96a00
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96680
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce7c96a00
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce8337200
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce7c96a00
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96b80
  7608 ms  0x1974 PK11_Derive()
  7608 ms  0x1974 basekey:0x7f8ce7d99480
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7dec280
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce8337200
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96a00
  7608 ms  0x1974 PK11_DeriveWithFlags()
  7608 ms  0x1974 basekey:0x7f8ce8337200
  7608 ms     | 0x1974 PK11_DeriveWithTemplate()
  7608 ms  0x1974 ret:0x7f8ce7c96b80
  7609 ms  0x1974 PK11_DeriveWithFlags()
  7609 ms  0x1974 basekey:0x7f8ce8337200
  7609 ms     | 0x1974 PK11_DeriveWithTemplate()
  7609 ms  0x1974 ret:0x7f8ce7c96b80
  7612 ms  0x1974 SECKEY_CreateECPrivateKey()
  7612 ms  0x1974 cx:0x7f8ce7e0f248
  7612 ms     | 0x1974 EC_ValidatePublicKey()
  7612 ms     | 0x1974 ret:0x0
  7612 ms  0x1974 ret:0x7f8ce7eaa820::7f8ce7eaa820  a0 c1 54 f9                                      ..T.
  7612 ms  0x1974 SECKEY_CreateECPrivateKey()
  7612 ms  0x1974 cx:0x7f8ce7e0f248
  7613 ms     | 0x1974 EC_ValidatePublicKey()
  7615 ms     | 0x1974 ret:0x0
  7615 ms  0x1974 ret:0x7f8ce7eac820::7f8ce7eac820  d0 c3 54 f9                                      ..T.
  7616 ms  0x1974 SECKEY_CreateECPrivateKey()
  7616 ms  0x1974 cx:0x7f8ce7e0fa68
  7616 ms     | 0x1974 EC_ValidatePublicKey()
  7616 ms     | 0x1974 ret:0x0
  7616 ms  0x1974 ret:0x7f8ce7eaf020::7f8ce7eaf020  60 c5 54 f9                                      `.T.
  7616 ms  0x1974 SECKEY_CreateECPrivateKey()
  7616 ms  0x1974 cx:0x7f8ce7e0fa68
  7617 ms     | 0x1974 EC_ValidatePublicKey()
  7618 ms     | 0x1974 ret:0x0
  7618 ms  0x1974 ret:0x7f8ce7eb1020::7f8ce7eb1020  e0 c7 54 f9                                      ..T.
  7619 ms  0x1974 SECKEY_CreateECPrivateKey()
  7619 ms  0x1974 cx:0x7f8ce7e10428
  7619 ms     | 0x1974 EC_ValidatePublicKey()
  7619 ms     | 0x1974 ret:0x0
  7619 ms  0x1974 ret:0x7f8ce7eb3820::7f8ce7eb3820  20 c9 54 f9                                       .T.
  7619 ms  0x1974 SECKEY_CreateECPrivateKey()
  7619 ms  0x1974 cx:0x7f8ce7e10428
  7620 ms     | 0x1974 EC_ValidatePublicKey()
  7621 ms     | 0x1974 ret:0x0
  7621 ms  0x1974 ret:0x7f8ce7eb5820::7f8ce7eb5820  50 cb 54 f9                                      P.T.
  7622 ms  0x1974 PK11_Derive()
  7622 ms  0x1974 basekey:0x7f8ce7c96b80
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7d99480
  7622 ms  0x1974 PK11_PubDeriveWithKDF()
  7622 ms  0x1974 seckey:0x7f8ce7dd1820
  7622 ms     | 0x1974 EC_ValidatePublicKey()
  7622 ms     | 0x1974 ret:0x0
  7622 ms  0x1974 ret:0x7f8ce7c96b80
  7622 ms  SECKEY_ECParamsToKeySize()
  7622 ms  0x1974 ret:0xff
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7d99480
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec600
  7622 ms  0x1974 PK11_Derive()
  7622 ms  0x1974 basekey:0x7f8ce7c96b80
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec680
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7dec680
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7d99480
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7dec680
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7c96b80
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7dec680
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec600
  7622 ms  0x1974 PK11_Derive()
  7622 ms  0x1974 basekey:0x7f8ce7dec700
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec780
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7c96b80
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec680
  7622 ms  0x1974 PK11_DeriveWithFlags()
  7622 ms  0x1974 basekey:0x7f8ce7c96b80
  7622 ms     | 0x1974 PK11_DeriveWithTemplate()
  7622 ms  0x1974 ret:0x7f8ce7dec600
  7623 ms  0x1974 PK11_DeriveWithFlags()
  7623 ms  0x1974 basekey:0x7f8ce7c96b80
  7623 ms     | 0x1974 PK11_DeriveWithTemplate()
  7623 ms  0x1974 ret:0x7f8ce7dec600
  7624 ms  0x1974 PK11_Derive()
  7624 ms  0x1974 basekey:0x7f8ce7dec600
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7dec700
  7624 ms  0x1974 PK11_PubDeriveWithKDF()
  7624 ms  0x1974 seckey:0x7f8ce7dd6020
  7624 ms     | 0x1974 EC_ValidatePublicKey()
  7624 ms     | 0x1974 ret:0x0
  7624 ms  0x1974 ret:0x7f8ce7dec600
  7624 ms  SECKEY_ECParamsToKeySize()
  7624 ms  0x1974 ret:0xff
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7dec700
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7deca00
  7624 ms  0x1974 PK11_Derive()
  7624 ms  0x1974 basekey:0x7f8ce7dec600
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7deca80
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7deca80
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7dec700
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7deca80
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7dec600
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7deca80
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7deca00
  7624 ms  0x1974 PK11_Derive()
  7624 ms  0x1974 basekey:0x7f8ce7decb00
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7decb80
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7dec600
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7624 ms  0x1974 ret:0x7f8ce7deca80
  7624 ms  0x1974 PK11_DeriveWithFlags()
  7624 ms  0x1974 basekey:0x7f8ce7dec600
  7624 ms     | 0x1974 PK11_DeriveWithTemplate()
  7625 ms  0x1974 ret:0x7f8ce7deca00
  7626 ms  0x1974 PK11_DeriveWithFlags()
  7626 ms  0x1974 basekey:0x7f8ce7dec600
  7626 ms     | 0x1974 PK11_DeriveWithTemplate()
  7626 ms  0x1974 ret:0x7f8ce7deca00
  7626 ms  0x1974 PK11_Derive()
  7626 ms  0x1974 basekey:0x7f8ce7deca00
  7626 ms     | 0x1974 PK11_DeriveWithTemplate()
  7626 ms  0x1974 ret:0x7f8ce7decb00
  7626 ms  0x1974 PK11_PubDeriveWithKDF()
  7626 ms  0x1974 seckey:0x7f8ce7ddb820
  7626 ms     | 0x1974 EC_ValidatePublicKey()
  7626 ms     | 0x1974 ret:0x0
  7627 ms  0x1974 ret:0x7f8ce7deca00
  7627 ms  SECKEY_ECParamsToKeySize()
  7627 ms  0x1974 ret:0xff
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7decb00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece00
  7627 ms  0x1974 PK11_Derive()
  7627 ms  0x1974 basekey:0x7f8ce7deca00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece80
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7dece80
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7decb00
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7dece80
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7deca00
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7dece80
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece00
  7627 ms  0x1974 PK11_Derive()
  7627 ms  0x1974 basekey:0x7f8ce7decf00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7decf80
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7deca00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece80
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7deca00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece00
  7627 ms  0x1974 PK11_DeriveWithFlags()
  7627 ms  0x1974 basekey:0x7f8ce7deca00
  7627 ms     | 0x1974 PK11_DeriveWithTemplate()
  7627 ms  0x1974 ret:0x7f8ce7dece00
  7627 ms  0x1974 SECKEY_CreateECPrivateKey()
  7627 ms  0x1974 cx:0x7f8ce7e100e8
  7628 ms     | 0x1974 EC_ValidatePublicKey()
  7628 ms     | 0x1974 ret:0x0
  7628 ms  0x1974 ret:0x7f8ce7f63020::7f8ce7f63020  40 97 58 f9                                      @.X.
  7628 ms  0x1974 SECKEY_CreateECPrivateKey()
  7628 ms  0x1974 cx:0x7f8ce7e100e8
  7628 ms     | 0x1974 EC_ValidatePublicKey()
  7630 ms     | 0x1974 ret:0x0
  7630 ms  0x1974 ret:0x7f8ce7f65020::7f8ce7f65020  70 99 58 f9                                      p.X.
  7631 ms  0x1974 SECKEY_CreateECPrivateKey()
  7631 ms  0x1974 cx:0x7f8ce7e0fda8
  7631 ms     | 0x1974 EC_ValidatePublicKey()
  7631 ms     | 0x1974 ret:0x0
  7631 ms  0x1974 ret:0x7f8ce7f68020::7f8ce7f68020  c0 94 58 f9                                      ..X.
  7631 ms  0x1974 SECKEY_CreateECPrivateKey()
  7631 ms  0x1974 cx:0x7f8ce7e0fda8
  7632 ms     | 0x1974 EC_ValidatePublicKey()
  7633 ms     | 0x1974 ret:0x0
  7634 ms  0x1974 ret:0x7f8ce7f6a820::7f8ce7f6a820  00 9b 58 f9                                      ..X.
  7635 ms  0x1974 SECKEY_CreateECPrivateKey()
  7635 ms  0x1974 cx:0x7f8ce7e0fc08
  7635 ms     | 0x1974 EC_ValidatePublicKey()
  7635 ms     | 0x1974 ret:0x0
  7635 ms  0x1974 ret:0x7f8ce7f6f820::7f8ce7f6f820  00 71 5a f9                                      .qZ.
  7635 ms  0x1974 SECKEY_CreateECPrivateKey()
  7635 ms  0x1974 cx:0x7f8ce7e0fc08
  7636 ms     | 0x1974 EC_ValidatePublicKey()
  7638 ms     | 0x1974 ret:0x0
  7638 ms  0x1974 ret:0x7f8ce7f71820::7f8ce7f71820  e0 72 5a f9                                      .rZ.
  7638 ms  0x1974 PK11_Derive()
  7638 ms  0x1974 basekey:0x7f8ce7dece00
  7638 ms     | 0x1974 PK11_DeriveWithTemplate()
  7638 ms  0x1974 ret:0x7f8ce7decf00
  7638 ms  0x1974 PK11_PubDeriveWithKDF()
  7638 ms  0x1974 seckey:0x7f8ce7de2020
  7638 ms     | 0x1974 EC_ValidatePublicKey()
  7638 ms     | 0x1974 ret:0x0
  7638 ms  0x1974 ret:0x7f8ce7dece00
  7638 ms  SECKEY_ECParamsToKeySize()
  7638 ms  0x1974 ret:0xff
  7638 ms  0x1974 PK11_DeriveWithFlags()
  7638 ms  0x1974 basekey:0x7f8ce7decf00
  7638 ms     | 0x1974 PK11_DeriveWithTemplate()
  7638 ms  0x1974 ret:0x7f8ce7ded200
  7638 ms  0x1974 PK11_Derive()
  7638 ms  0x1974 basekey:0x7f8ce7dece00
  7638 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded280
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7ded280
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7decf00
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7ded280
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7dece00
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7ded280
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded200
  7639 ms  0x1974 PK11_Derive()
  7639 ms  0x1974 basekey:0x7f8ce7ded300
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded380
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7dece00
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded280
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7dece00
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded200
  7639 ms  0x1974 PK11_DeriveWithFlags()
  7639 ms  0x1974 basekey:0x7f8ce7dece00
  7639 ms     | 0x1974 PK11_DeriveWithTemplate()
  7639 ms  0x1974 ret:0x7f8ce7ded200
  7639 ms  0x1974 PR_Connect()
  7639 ms  0x1974 fd:0x7f8cfa32e400
  7639 ms  0x1974 PR_Connect()
  7639 ms  0x1974 fd:0x7f8cfa32e220
  7640 ms  0x1974 SECKEY_CreateECPrivateKey()
  7640 ms  0x1974 cx:0x7f8ce7e10288
  7640 ms     | 0x1974 EC_ValidatePublicKey()
  7640 ms     | 0x1974 ret:0x0
  7640 ms  0x1974 ret:0x7f8ce7f77820::7f8ce7f77820  00 76 5a f9                                      .vZ.
  7640 ms  0x1974 SECKEY_CreateECPrivateKey()
  7640 ms  0x1974 cx:0x7f8ce7e10288
  7641 ms     | 0x1974 EC_ValidatePublicKey()
  7643 ms     | 0x1974 ret:0x0
  7643 ms  0x1974 ret:0x7f8ce7f7a820::7f8ce7f7a820  60 75 32 fa                                      `u2.
  7643 ms  0x1974 PK11_Derive()
  7643 ms  0x1974 basekey:0x7f8ce7ded200
  7643 ms     | 0x1974 PK11_DeriveWithTemplate()
  7643 ms  0x1974 ret:0x7f8ce7ded300
  7643 ms  0x1974 PK11_PubDeriveWithKDF()
  7643 ms  0x1974 seckey:0x7f8ce7ea1020
  7643 ms     | 0x1974 EC_ValidatePublicKey()
  7643 ms     | 0x1974 ret:0x0
  7644 ms  0x1974 ret:0x7f8ce7ded200
  7644 ms  SECKEY_ECParamsToKeySize()
  7644 ms  0x1974 ret:0xff
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded300
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded400
  7644 ms  0x1974 PK11_Derive()
  7644 ms  0x1974 basekey:0x7f8ce7ded200
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded480
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded480
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded300
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded480
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded200
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded480
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded400
  7644 ms  0x1974 PK11_Derive()
  7644 ms  0x1974 basekey:0x7f8ce7ded500
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded580
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded200
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded480
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded200
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded400
  7644 ms  0x1974 PK11_DeriveWithFlags()
  7644 ms  0x1974 basekey:0x7f8ce7ded200
  7644 ms     | 0x1974 PK11_DeriveWithTemplate()
  7644 ms  0x1974 ret:0x7f8ce7ded400
  7644 ms  0x1974 PK11_Derive()
  7644 ms  0x1974 basekey:0x7f8ce7ded400
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded500
  7645 ms  0x1974 PK11_PubDeriveWithKDF()
  7645 ms  0x1974 seckey:0x7f8ce7eaa820
  7645 ms     | 0x1974 EC_ValidatePublicKey()
  7645 ms     | 0x1974 ret:0x0
  7645 ms  0x1974 ret:0x7f8ce7ded400
  7645 ms  SECKEY_ECParamsToKeySize()
  7645 ms  0x1974 ret:0xff
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded500
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded680
  7645 ms  0x1974 PK11_Derive()
  7645 ms  0x1974 basekey:0x7f8ce7ded400
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded700
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded700
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded500
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded700
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded400
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded700
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded680
  7645 ms  0x1974 PK11_Derive()
  7645 ms  0x1974 basekey:0x7f8ce7ded800
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7dedb00
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded400
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded700
  7645 ms  0x1974 PK11_DeriveWithFlags()
  7645 ms  0x1974 basekey:0x7f8ce7ded400
  7645 ms     | 0x1974 PK11_DeriveWithTemplate()
  7645 ms  0x1974 ret:0x7f8ce7ded680
  7646 ms  SECKEY_ECParamsToKeySize()
  7646 ms  0x1974 ret:0x100
  7646 ms  SECKEY_ECParamsToBasePointOrderLen()
  7646 ms  0x1974 ret:0x100
  7646 ms  SECKEY_ECParamsToBasePointOrderLen()
  7646 ms  0x1974 ret:0x100
  7646 ms  0x1974 EC_ValidatePublicKey()
  7648 ms  0x1974 ret:0x0
  7651 ms  0x1974 PK11_DeriveWithFlags()
  7651 ms  0x1974 basekey:0x7f8ce7ded400
  7651 ms     | 0x1974 PK11_DeriveWithTemplate()
  7651 ms  0x1974 ret:0x7f8ce7ded680
  7651 ms  0x1974 PK11_Derive()
  7651 ms  0x1974 basekey:0x7f8ce7ded680
  7651 ms     | 0x1974 PK11_DeriveWithTemplate()
  7651 ms  0x1974 ret:0x7f8ce7ded800
  7651 ms  0x1974 PK11_PubDeriveWithKDF()
  7651 ms  0x1974 seckey:0x7f8ce7eaf020
  7651 ms     | 0x1974 EC_ValidatePublicKey()
  7651 ms     | 0x1974 ret:0x0
  7652 ms  0x1974 ret:0x7f8ce7ded680
  7652 ms  SECKEY_ECParamsToKeySize()
  7652 ms  0x1974 ret:0xff
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7ded800
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd100
  7652 ms  0x1974 PK11_Derive()
  7652 ms  0x1974 basekey:0x7f8ce7ded680
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd180
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7dfd180
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7ded800
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7dfd180
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7ded680
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7dfd180
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd100
  7652 ms  0x1974 PK11_Derive()
  7652 ms  0x1974 basekey:0x7f8ce7dfd200
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd280
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7ded680
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd180
  7652 ms  0x1974 PK11_DeriveWithFlags()
  7652 ms  0x1974 basekey:0x7f8ce7ded680
  7652 ms     | 0x1974 PK11_DeriveWithTemplate()
  7652 ms  0x1974 ret:0x7f8ce7dfd100
  7652 ms  SECKEY_ECParamsToKeySize()
  7652 ms  0x1974 ret:0x100
  7652 ms  SECKEY_ECParamsToBasePointOrderLen()
  7652 ms  0x1974 ret:0x100
  7652 ms  SECKEY_ECParamsToBasePointOrderLen()
  7652 ms  0x1974 ret:0x100
  7652 ms  0x1974 EC_ValidatePublicKey()
  7654 ms  0x1974 ret:0x0
  7656 ms  0x1974 PK11_DeriveWithFlags()
  7656 ms  0x1974 basekey:0x7f8ce7ded680
  7656 ms     | 0x1974 PK11_DeriveWithTemplate()
  7656 ms  0x1974 ret:0x7f8ce7dfd100
  7656 ms  SECKEY_ECParamsToKeySize()
  7656 ms  0x1974 ret:0xff
  7656 ms  0x1974 SECKEY_CreateECPrivateKey()
  7656 ms  0x1974 cx:0x7f8ce7e10428
  7656 ms     | 0x1974 EC_ValidatePublicKey()
  7656 ms     | 0x1974 ret:0x0
  7656 ms  0x1974 ret:0x7f8ce81de820::7f8ce81de820  00 86 32 fa                                      ..2.
  7656 ms  0x1974 PK11_PubDeriveWithKDF()
  7656 ms  0x1974 seckey:0x7f8ce81de820
  7656 ms     | 0x1974 EC_ValidatePublicKey()
  7656 ms     | 0x1974 ret:0x0
  7657 ms  0x1974 ret:0x7f8ce7dfd100
  7657 ms  0x1974 PK11_DeriveWithFlags()
  7657 ms  0x1974 basekey:0x7f8ce7dfd100
  7657 ms     | 0x1974 PK11_DeriveWithTemplate()
  7657 ms  0x1974 ret:0x7f8ce7dfd200
  7657 ms  0x1974 PK11_Derive()
  7657 ms  0x1974 basekey:0x7f8ce7dfd200
  7657 ms     | 0x1974 PK11_DeriveWithTemplate()
  7657 ms  0x1974 ret:0x7f8ce7dfd380
  7657 ms  0x1974 SECKEY_DestroyPrivateKey()
  7657 ms  0x1974 privk:0x7f8ce81de820::7f8ce81de820  00 86 32 fa                                      ..2.
  7657 ms  0x1974 privk:0x7f8ce81de820::7f8ce81de820  e5 e5 e5 e5                                      ....
  7657 ms  0x1974 PK11_Encrypt()
  7657 ms  0x1974 symkey:0x7f8ce7dfd500
  7668 ms  SECKEY_ECParamsToKeySize()
  7668 ms  0x1974 ret:0x100
  7668 ms  0x1974 SECKEY_CreateECPrivateKey()
  7668 ms  0x1974 cx:0x7f8ce7e100e8
  7669 ms     | 0x1974 EC_ValidatePublicKey()
  7670 ms     | 0x1974 ret:0x0
  7670 ms  0x1974 ret:0x7f8ce8294820::7f8ce8294820  70 89 32 fa                                      p.2.
  7670 ms  0x1974 PK11_PubDeriveWithKDF()
  7670 ms  0x1974 seckey:0x7f8ce8294820
  7670 ms     | 0x1974 EC_ValidatePublicKey()
  7672 ms     | 0x1974 ret:0x0
  7673 ms  0x1974 ret:0x7f8ce7dfd100
  7673 ms  0x1974 PK11_DeriveWithFlags()
  7673 ms  0x1974 basekey:0x7f8ce7dfd100
  7673 ms     | 0x1974 PK11_DeriveWithTemplate()
  7673 ms  0x1974 ret:0x7f8ce7dfd680
  7673 ms  0x1974 PK11_Derive()
  7673 ms  0x1974 basekey:0x7f8ce7dfd680
  7673 ms     | 0x1974 PK11_DeriveWithTemplate()
  7673 ms  0x1974 ret:0x7f8ce7dfd700
  7673 ms  0x1974 SECKEY_DestroyPrivateKey()
  7673 ms  0x1974 privk:0x7f8ce8294820::7f8ce8294820  70 89 32 fa                                      p.2.
  7674 ms  0x1974 privk:0x7f8ce8294820::7f8ce8294820  e5 e5 e5 e5                                      ....
  7674 ms  0x1974 PK11_Encrypt()
  7674 ms  0x1974 symkey:0x7f8ce7dfd880
  7674 ms  0x1974 SECKEY_CreateECPrivateKey()
  7674 ms  0x1974 cx:0x7f8ce7e0ff48
  7675 ms     | 0x1974 EC_ValidatePublicKey()
  7675 ms     | 0x1974 ret:0x0
  7675 ms  0x1974 ret:0x7f8ce8294820::7f8ce8294820  80 88 32 fa                                      ..2.
  7675 ms  0x1974 SECKEY_CreateECPrivateKey()
  7675 ms  0x1974 cx:0x7f8ce7e0ff48
  7675 ms     | 0x1974 EC_ValidatePublicKey()
  7677 ms     | 0x1974 ret:0x0
  7677 ms  0x1974 ret:0x7f8ce8297820::7f8ce8297820  60 8a 32 fa                                      `.2.
  7677 ms  0x1974 PR_Connect()
  7677 ms  0x1974 fd:0x7f8cfa636bb0
  7687 ms  0x1974 PK11_Derive()
  7687 ms  0x1974 basekey:0x7f8ce7dfd100
  7687 ms     | 0x1974 PK11_DeriveWithTemplate()
  7687 ms  0x1974 ret:0x7f8ce7d4ad00
  7687 ms  0x1974 PK11_PubDeriveWithKDF()
  7687 ms  0x1974 seckey:0x7f8ce7f68020
  7687 ms     | 0x1974 EC_ValidatePublicKey()
  7687 ms     | 0x1974 ret:0x0
  7688 ms  0x1974 ret:0x7f8ce7dfd100
  7688 ms  SECKEY_ECParamsToKeySize()
  7688 ms  0x1974 ret:0xff
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7d4ad00
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfd600
  7688 ms  0x1974 PK11_Derive()
  7688 ms  0x1974 basekey:0x7f8ce7dfd100
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfda00
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7dfda00
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7d4ad00
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7dfda00
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfd100
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7dfda00
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfd600
  7688 ms  0x1974 PK11_Derive()
  7688 ms  0x1974 basekey:0x7f8ce7dfda80
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfdb00
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7dfd100
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfda00
  7688 ms  0x1974 PK11_DeriveWithFlags()
  7688 ms  0x1974 basekey:0x7f8ce7dfd100
  7688 ms     | 0x1974 PK11_DeriveWithTemplate()
  7688 ms  0x1974 ret:0x7f8ce7dfd600
  7690 ms  SECKEY_ECParamsToKeySize()
  7690 ms  0x1974 ret:0x100
  7690 ms  SECKEY_ECParamsToBasePointOrderLen()
  7690 ms  0x1974 ret:0x100
  7690 ms  SECKEY_ECParamsToBasePointOrderLen()
  7690 ms  0x1974 ret:0x100
  7690 ms  0x1974 EC_ValidatePublicKey()
  7691 ms  0x1974 ret:0x0
  7693 ms  0x1974 PK11_DeriveWithFlags()
  7693 ms  0x1974 basekey:0x7f8ce7dfd100
  7693 ms     | 0x1974 PK11_DeriveWithTemplate()
  7693 ms  0x1974 ret:0x7f8ce7dfd600
  7693 ms  0x1974 PK11_Derive()
  7693 ms  0x1974 basekey:0x7f8ce7dfd600
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfda80
  7694 ms  0x1974 PK11_PubDeriveWithKDF()
  7694 ms  0x1974 seckey:0x7f8ce7f6f820
  7694 ms     | 0x1974 EC_ValidatePublicKey()
  7694 ms     | 0x1974 ret:0x0
  7694 ms  0x1974 ret:0x7f8ce7dfd600
  7694 ms  SECKEY_ECParamsToKeySize()
  7694 ms  0x1974 ret:0xff
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfda80
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfdc00
  7694 ms  0x1974 PK11_Derive()
  7694 ms  0x1974 basekey:0x7f8ce7dfd600
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfdc80
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfdc80
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfda80
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfdc80
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfd600
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfdc80
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfdc00
  7694 ms  0x1974 PK11_Derive()
  7694 ms  0x1974 basekey:0x7f8ce7dfdd80
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfde00
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfd600
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfdc80
  7694 ms  0x1974 PK11_DeriveWithFlags()
  7694 ms  0x1974 basekey:0x7f8ce7dfd600
  7694 ms     | 0x1974 PK11_DeriveWithTemplate()
  7694 ms  0x1974 ret:0x7f8ce7dfdc00
  7695 ms  0x1974 PK11_DeriveWithFlags()
  7695 ms  0x1974 basekey:0x7f8ce7dfd600
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfdc00
  7695 ms  0x1974 PK11_Derive()
  7695 ms  0x1974 basekey:0x7f8ce7dfdc00
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfdd80
  7695 ms  0x1974 PK11_PubDeriveWithKDF()
  7695 ms  0x1974 seckey:0x7f8ce7f77820
  7695 ms     | 0x1974 EC_ValidatePublicKey()
  7695 ms     | 0x1974 ret:0x0
  7695 ms  0x1974 ret:0x7f8ce7dfdc00
  7695 ms  SECKEY_ECParamsToKeySize()
  7695 ms  0x1974 ret:0xff
  7695 ms  0x1974 PK11_DeriveWithFlags()
  7695 ms  0x1974 basekey:0x7f8ce7dfdd80
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfde80
  7695 ms  0x1974 PK11_Derive()
  7695 ms  0x1974 basekey:0x7f8ce7dfdc00
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfdf00
  7695 ms  0x1974 PK11_DeriveWithFlags()
  7695 ms  0x1974 basekey:0x7f8ce7dfdf00
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfdd80
  7695 ms  0x1974 PK11_DeriveWithFlags()
  7695 ms  0x1974 basekey:0x7f8ce7dfdf00
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfdc00
  7695 ms  0x1974 PK11_DeriveWithFlags()
  7695 ms  0x1974 basekey:0x7f8ce7dfdf00
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7695 ms  0x1974 ret:0x7f8ce7dfde80
  7695 ms  0x1974 PK11_Derive()
  7695 ms  0x1974 basekey:0x7f8ce7dfdf80
  7695 ms     | 0x1974 PK11_DeriveWithTemplate()
  7696 ms  0x1974 ret:0x7f8ce7dfe000
  7696 ms  0x1974 PK11_DeriveWithFlags()
  7696 ms  0x1974 basekey:0x7f8ce7dfdc00
  7696 ms     | 0x1974 PK11_DeriveWithTemplate()
  7696 ms  0x1974 ret:0x7f8ce7dfdf00
  7696 ms  0x1974 PK11_DeriveWithFlags()
  7696 ms  0x1974 basekey:0x7f8ce7dfdc00
  7696 ms     | 0x1974 PK11_DeriveWithTemplate()
  7696 ms  0x1974 ret:0x7f8ce7dfde80
  7696 ms  SECKEY_ECParamsToKeySize()
  7696 ms  0x1974 ret:0x100
  7696 ms  SECKEY_ECParamsToBasePointOrderLen()
  7696 ms  0x1974 ret:0x100
  7696 ms  SECKEY_ECParamsToBasePointOrderLen()
  7696 ms  0x1974 ret:0x100
  7696 ms  0x1974 EC_ValidatePublicKey()
  7697 ms  0x1974 ret:0x0
  7699 ms  0x1974 PK11_DeriveWithFlags()
  7699 ms  0x1974 basekey:0x7f8ce7dfdc00
  7699 ms     | 0x1974 PK11_DeriveWithTemplate()
  7699 ms  0x1974 ret:0x7f8ce7dfde80
  7738 ms  SECKEY_ECParamsToKeySize()
  7738 ms  0x1974 ret:0x100
  7738 ms  0x1974 SECKEY_CreateECPrivateKey()
  7738 ms  0x1974 cx:0x7f8ce7e0ff48
  7738 ms     | 0x1974 EC_ValidatePublicKey()
  7740 ms     | 0x1974 ret:0x0
  7740 ms  0x1974 ret:0x7f8ce82af020::7f8ce82af020  40 1c 33 fa                                      @.3.
  7740 ms  0x1974 PK11_PubDeriveWithKDF()
  7740 ms  0x1974 seckey:0x7f8ce82af020
  7740 ms     | 0x1974 EC_ValidatePublicKey()
  7741 ms     | 0x1974 ret:0x0
  7743 ms  0x1974 ret:0x7f8ce7dfde80
  7743 ms  0x1974 PK11_DeriveWithFlags()
  7743 ms  0x1974 basekey:0x7f8ce7dfde80
  7743 ms     | 0x1974 PK11_DeriveWithTemplate()
  7743 ms  0x1974 ret:0x7f8ce7dfdf80
  7743 ms  0x1974 PK11_Derive()
  7743 ms  0x1974 basekey:0x7f8ce7dfdf80
  7743 ms     | 0x1974 PK11_DeriveWithTemplate()
  7743 ms  0x1974 ret:0x7f8ce7dfe280
  7743 ms  0x1974 SECKEY_DestroyPrivateKey()
  7743 ms  0x1974 privk:0x7f8ce82af020::7f8ce82af020  40 1c 33 fa                                      @.3.
  7743 ms  0x1974 privk:0x7f8ce82af020::7f8ce82af020  e5 e5 e5 e5                                      ....
  7743 ms  0x1974 PK11_Encrypt()
  7743 ms  0x1974 symkey:0x7f8ce7dfe400
           /* TID 0x197c */
  7753 ms  0x197c PR_Close()
  7753 ms  0x197c fd:0x7f8cfa32e910
           /* TID 0x1a0c */
  7754 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7754 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
  7755 ms  0x1974 SSL_AuthCertificateComplete()
  7755 ms  0x1974 fd:0x7f8ce7f13550
  7755 ms  0x1974 err:0x0
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec280
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfde80
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec280
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dec500
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec280
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe680
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7c96680
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe700
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7c96680
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe780
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec500
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe780
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec500
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe800
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7c96680
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7c96a00
  7755 ms     | 0x1974 PK11_Encrypt()
  7755 ms     | 0x1974 symkey:0x7f8ce7dfe700
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dfde80
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7c96a00
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dfde80
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe800
  7755 ms     | 0x1974 PK11_DeriveWithFlags()
  7755 ms     | 0x1974 basekey:0x7f8ce7dec280
  7755 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7755 ms     | 0x1974 ret:0x7f8ce7dfe700
  7756 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7756 ms     | 0x1974 privk:0x7f8ce7dce820::7f8ce7dce820  c0 14 26 e8                                      ..&.
  7756 ms     | 0x1974 privk:0x7f8ce7dce820::7f8ce7dce820  e5 e5 e5 e5                                      ....
  7756 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7756 ms     | 0x1974 privk:0x7f8ce7dcc820::7f8ce7dcc820  50 11 26 e8                                      P.&.
  7756 ms     | 0x1974 privk:0x7f8ce7dcc820::7f8ce7dcc820  e5 e5 e5 e5                                      ....
  7757 ms  0x1974 PK11_Encrypt()
  7757 ms  0x1974 symkey:0x7f8ce7c96a00
  7757 ms  0x1974 PK11_Encrypt()
  7757 ms  0x1974 symkey:0x7f8ce7c96a00
           /* TID 0x1a09 */
  7770 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7770 ms  0x1a09 ret:0x0
  7770 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7770 ms  0x1a09 ret:0x0
  7771 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7771 ms  0x1a09 ret:0x0
  7771 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7772 ms  0x1a09 ret:0x0
  7772 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7772 ms  0x1a09 ret:0x0
           /* TID 0x197c */
  7773 ms  0x197c PR_Close()
  7773 ms  0x197c fd:0x7f8ce7f13a60
           /* TID 0x1974 */
  7773 ms  0x1974 SSL_AuthCertificateComplete()
  7773 ms  0x1974 fd:0x7f8ce7ee1c40
  7773 ms  0x1974 err:0x0
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7dec780
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce8337200
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7dec780
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce7c96680
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7dec780
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce7dec280
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7d99480
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce7dfe800
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7d99480
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce7dec980
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7c96680
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7773 ms     | 0x1974 ret:0x7f8ce7dec980
  7773 ms     | 0x1974 PK11_DeriveWithFlags()
  7773 ms     | 0x1974 basekey:0x7f8ce7c96680
  7773 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7d99480
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7dec680
  7774 ms     | 0x1974 PK11_Encrypt()
  7774 ms     | 0x1974 symkey:0x7f8ce7dfe800
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce8337200
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7dec680
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce8337200
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7dec780
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7dfe800
  7774 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7774 ms     | 0x1974 privk:0x7f8ce7dd3820::7f8ce7dd3820  70 59 1c e8                                      pY..
  7774 ms     | 0x1974 privk:0x7f8ce7dd3820::7f8ce7dd3820  e5 e5 e5 e5                                      ....
  7774 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7774 ms     | 0x1974 privk:0x7f8ce7dd1820::7f8ce7dd1820  40 1c 26 e8                                      @.&.
  7774 ms     | 0x1974 privk:0x7f8ce7dd1820::7f8ce7dd1820  e5 e5 e5 e5                                      ....
  7774 ms  0x1974 SSL_AuthCertificateComplete()
  7774 ms  0x1974 fd:0x7f8cf951c1c0
  7774 ms  0x1974 err:0x0
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7dedb00
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7c96b80
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7dedb00
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7d99480
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7dedb00
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7dec780
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7ded500
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7ded500
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7e40080
  7774 ms     | 0x1974 PK11_DeriveWithFlags()
  7774 ms     | 0x1974 basekey:0x7f8ce7d99480
  7774 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7774 ms     | 0x1974 ret:0x7f8ce7e40080
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7d99480
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e40100
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7ded500
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7ded700
  7775 ms     | 0x1974 PK11_Encrypt()
  7775 ms     | 0x1974 symkey:0x7f8ce7e3fc80
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7ded700
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7c96b80
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e40100
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7dedb00
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7775 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7775 ms     | 0x1974 privk:0x7f8ce7eac820::7f8ce7eac820  d0 c3 54 f9                                      ..T.
  7775 ms     | 0x1974 privk:0x7f8ce7eac820::7f8ce7eac820  e5 e5 e5 e5                                      ....
  7775 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7775 ms     | 0x1974 privk:0x7f8ce7eaa820::7f8ce7eaa820  a0 c1 54 f9                                      ..T.
  7775 ms     | 0x1974 privk:0x7f8ce7eaa820::7f8ce7eaa820  e5 e5 e5 e5                                      ....
  7775 ms  0x1974 SSL_AuthCertificateComplete()
  7775 ms  0x1974 fd:0x7f8ce821abb0
  7775 ms  0x1974 err:0x0
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7dfd280
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7ded400
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7dfd280
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7ded500
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7dfd280
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7dedb00
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7ded800
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e40100
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7ded800
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e40180
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7ded500
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7775 ms     | 0x1974 ret:0x7f8ce7e40180
  7775 ms     | 0x1974 PK11_DeriveWithFlags()
  7775 ms     | 0x1974 basekey:0x7f8ce7ded500
  7775 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7776 ms     | 0x1974 ret:0x7f8ce7e40200
  7776 ms     | 0x1974 PK11_DeriveWithFlags()
  7776 ms     | 0x1974 basekey:0x7f8ce7ded800
  7776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7776 ms     | 0x1974 ret:0x7f8ce7dfd180
  7776 ms     | 0x1974 PK11_Encrypt()
  7776 ms     | 0x1974 symkey:0x7f8ce7e40100
  7776 ms     | 0x1974 PK11_DeriveWithFlags()
  7776 ms     | 0x1974 basekey:0x7f8ce7ded400
  7776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7776 ms     | 0x1974 ret:0x7f8ce7dfd180
  7776 ms     | 0x1974 PK11_DeriveWithFlags()
  7776 ms     | 0x1974 basekey:0x7f8ce7ded400
  7776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7776 ms     | 0x1974 ret:0x7f8ce7e40200
  7776 ms     | 0x1974 PK11_DeriveWithFlags()
  7776 ms     | 0x1974 basekey:0x7f8ce7dfd280
  7776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7776 ms     | 0x1974 ret:0x7f8ce7e40100
  7776 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7776 ms     | 0x1974 privk:0x7f8ce7eb1020::7f8ce7eb1020  e0 c7 54 f9                                      ..T.
  7776 ms     | 0x1974 privk:0x7f8ce7eb1020::7f8ce7eb1020  e5 e5 e5 e5                                      ....
  7776 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7776 ms     | 0x1974 privk:0x7f8ce7eaf020::7f8ce7eaf020  60 c5 54 f9                                      `.T.
  7776 ms     | 0x1974 privk:0x7f8ce7eaf020::7f8ce7eaf020  e5 e5 e5 e5                                      ....
  7776 ms  0x1974 SSL_AuthCertificateComplete()
  7776 ms  0x1974 fd:0x7f8ce81ebe80
  7776 ms  0x1974 err:0x0
  7776 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7776 ms     | 0x1974 privk:0x7f8ce7eb5820::7f8ce7eb5820  50 cb 54 f9                                      P.T.
  7776 ms     | 0x1974 privk:0x7f8ce7eb5820::7f8ce7eb5820  e5 e5 e5 e5                                      ....
  7776 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7776 ms     | 0x1974 privk:0x7f8ce7eb3820::7f8ce7eb3820  20 c9 54 f9                                       .T.
  7776 ms     | 0x1974 privk:0x7f8ce7eb3820::7f8ce7eb3820  e5 e5 e5 e5                                      ....
  7776 ms  0x1974 SSL_AuthCertificateComplete()
  7776 ms  0x1974 fd:0x7f8cf9595160
  7776 ms  0x1974 err:0x0
  7776 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7776 ms     | 0x1974 privk:0x7f8ce7f65020::7f8ce7f65020  70 99 58 f9                                      p.X.
  7777 ms     | 0x1974 privk:0x7f8ce7f65020::7f8ce7f65020  e5 e5 e5 e5                                      ....
  7777 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7777 ms     | 0x1974 privk:0x7f8ce7f63020::7f8ce7f63020  40 97 58 f9                                      @.X.
  7777 ms     | 0x1974 privk:0x7f8ce7f63020::7f8ce7f63020  e5 e5 e5 e5                                      ....
  7777 ms  0x1974 PK11_Encrypt()
  7777 ms  0x1974 symkey:0x7f8ce7dec680
  7777 ms  0x1974 PK11_Encrypt()
  7777 ms  0x1974 symkey:0x7f8ce7dfd880
  7778 ms  0x1974 PK11_Encrypt()
  7778 ms  0x1974 symkey:0x7f8ce7dfd180
  7778 ms  0x1974 PK11_Encrypt()
  7778 ms  0x1974 symkey:0x7f8ce7dfd180
  7778 ms  0x1974 PK11_Encrypt()
  7778 ms  0x1974 symkey:0x7f8ce7ded700
  7779 ms  0x1974 PK11_Encrypt()
  7779 ms  0x1974 symkey:0x7f8ce7dfd500
  7779 ms  0x1974 PK11_Encrypt()
  7779 ms  0x1974 symkey:0x7f8ce7dfd500
  7780 ms  0x1974 PK11_Encrypt()
  7780 ms  0x1974 symkey:0x7f8ce7c96a00
  7780 ms  0x1974 PK11_Encrypt()
  7780 ms  0x1974 symkey:0x7f8ce7dfd180
  7793 ms  0x1974 PK11_DeriveWithFlags()
  7793 ms  0x1974 basekey:0x7f8ce7dfe700
  7793 ms     | 0x1974 PK11_DeriveWithTemplate()
  7793 ms  0x1974 ret:0x7f8ce7ded680
  7793 ms  0x1974 PK11_DeriveWithFlags()
  7793 ms  0x1974 basekey:0x7f8ce7dfe700
  7793 ms     | 0x1974 PK11_DeriveWithTemplate()
  7793 ms  0x1974 ret:0x7f8ce7ded680
  7793 ms  0x1974 PK11_Encrypt()
  7793 ms  0x1974 symkey:0x7f8ce7c96a00
  7800 ms  0x1974 PK11_DeriveWithFlags()
  7800 ms  0x1974 basekey:0x7f8ce7e3fc80
  7800 ms     | 0x1974 PK11_DeriveWithTemplate()
  7800 ms  0x1974 ret:0x7f8ce7ded680
  7800 ms  0x1974 PK11_DeriveWithFlags()
  7800 ms  0x1974 basekey:0x7f8ce7e3fc80
  7800 ms     | 0x1974 PK11_DeriveWithTemplate()
  7800 ms  0x1974 ret:0x7f8ce7ded680
  7801 ms  0x1974 PR_Close()
  7801 ms  0x1974 fd:0x7f8cf951c1c0
  7801 ms     | 0x1974 PK11_Encrypt()
  7801 ms     | 0x1974 symkey:0x7f8ce7ded700
  7801 ms  0x1974 PK11_DeriveWithFlags()
  7801 ms  0x1974 basekey:0x7f8ce7e40100
  7801 ms     | 0x1974 PK11_DeriveWithTemplate()
  7801 ms  0x1974 ret:0x7f8ce7dec780
  7801 ms  0x1974 PK11_DeriveWithFlags()
  7801 ms  0x1974 basekey:0x7f8ce7e40100
  7801 ms     | 0x1974 PK11_DeriveWithTemplate()
  7801 ms  0x1974 ret:0x7f8ce7dec780
  7801 ms  0x1974 PK11_Encrypt()
  7801 ms  0x1974 symkey:0x7f8ce7dfd180
  7804 ms  0x1974 PK11_Encrypt()
  7804 ms  0x1974 symkey:0x7f8ce7dfd500
  7812 ms  0x1974 PK11_DeriveWithFlags()
  7812 ms  0x1974 basekey:0x7f8ce7dfe800
  7812 ms     | 0x1974 PK11_DeriveWithTemplate()
  7812 ms  0x1974 ret:0x7f8ce7dec780
  7812 ms  0x1974 PK11_DeriveWithFlags()
  7812 ms  0x1974 basekey:0x7f8ce7dfe800
  7812 ms     | 0x1974 PK11_DeriveWithTemplate()
  7812 ms  0x1974 ret:0x7f8ce7dec780
  7812 ms  0x1974 PR_Close()
  7812 ms  0x1974 fd:0x7f8ce7ee1c40
  7812 ms     | 0x1974 PK11_Encrypt()
  7812 ms     | 0x1974 symkey:0x7f8ce7dec680
           /* TID 0x197c */
  7819 ms  0x197c PR_Close()
  7819 ms  0x197c fd:0x7f8ce7ee1850
  7824 ms  0x197c PR_Close()
  7824 ms  0x197c fd:0x7f8ce7f130a0
           /* TID 0x1a13 */
  7825 ms  0x1a13 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7825 ms  0x1a13 ret:0x0
  7826 ms  SECKEY_ECParamsToBasePointOrderLen()
  7826 ms  0x1a13 ret:0x180
  7826 ms  SECKEY_ECParamsToBasePointOrderLen()
  7826 ms  0x1a13 ret:0x180
  7826 ms  0x1a13 EC_ValidatePublicKey()
  7828 ms  0x1a13 ret:0x0
           /* TID 0x197c */
  7830 ms  0x197c PR_Close()
  7830 ms  0x197c fd:0x7f8ce7ee1850
           /* TID 0x19d3 */
  7830 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7830 ms  0x19d3 ret:0x0
  7831 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7831 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  7831 ms  0x1974 SSL_AuthCertificateComplete()
  7831 ms  0x1974 fd:0x7f8ce7ee1f40
  7831 ms  0x1974 err:0x0
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decf80
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dec280
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decf80
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7c96680
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decf80
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce8337200
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decb00
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dfe800
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decb00
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dec980
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7c96680
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dec980
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7c96680
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dec680
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7decb00
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dece80
  7831 ms     | 0x1974 PK11_Encrypt()
  7831 ms     | 0x1974 symkey:0x7f8ce7dfe800
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7dec280
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7831 ms     | 0x1974 ret:0x7f8ce7dece80
  7831 ms     | 0x1974 PK11_DeriveWithFlags()
  7831 ms     | 0x1974 basekey:0x7f8ce7dec280
  7831 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7832 ms     | 0x1974 ret:0x7f8ce7dec680
  7832 ms     | 0x1974 PK11_DeriveWithFlags()
  7832 ms     | 0x1974 basekey:0x7f8ce7decf80
  7832 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7832 ms     | 0x1974 ret:0x7f8ce7dfe800
  7832 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7832 ms     | 0x1974 privk:0x7f8ce7dde820::7f8ce7dde820  d0 1d 36 e8                                      ..6.
  7832 ms     | 0x1974 privk:0x7f8ce7dde820::7f8ce7dde820  e5 e5 e5 e5                                      ....
  7832 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7832 ms     | 0x1974 privk:0x7f8ce7ddb820::7f8ce7ddb820  b0 10 36 e8                                      ..6.
  7832 ms     | 0x1974 privk:0x7f8ce7ddb820::7f8ce7ddb820  e5 e5 e5 e5                                      ....
  7832 ms  0x1974 SSL_AuthCertificateComplete()
  7832 ms  0x1974 fd:0x7f8ce8339400
  7832 ms  0x1974 err:0x0
  7832 ms     | 0x1974 PK11_DeriveWithFlags()
  7832 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7832 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7deca00
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7decb00
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7decf80
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7dec680
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7dec780
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7decb00
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7dec780
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7decb00
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7d99480
  7834 ms     | 0x1974 PK11_DeriveWithFlags()
  7834 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7834 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7834 ms     | 0x1974 ret:0x7f8ce7dfdc80
  7835 ms     | 0x1974 PK11_Encrypt()
  7835 ms     | 0x1974 symkey:0x7f8ce7dec680
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7deca00
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7dfdc80
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7deca00
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7d99480
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7dec680
  7835 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7835 ms     | 0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  e0 72 5a f9                                      .rZ.
  7835 ms     | 0x1974 privk:0x7f8ce7f71820::7f8ce7f71820  e5 e5 e5 e5                                      ....
  7835 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7835 ms     | 0x1974 privk:0x7f8ce7f6f820::7f8ce7f6f820  00 71 5a f9                                      .qZ.
  7835 ms     | 0x1974 privk:0x7f8ce7f6f820::7f8ce7f6f820  e5 e5 e5 e5                                      ....
  7835 ms  0x1974 SSL_AuthCertificateComplete()
  7835 ms  0x1974 fd:0x7f8ce7f13850
  7835 ms  0x1974 err:0x0
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7decb80
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7dfd600
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7decb80
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7dfda80
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7decb80
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7dfde00
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dec700
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7d99480
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dec700
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7c96b80
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7c96b80
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7835 ms     | 0x1974 PK11_DeriveWithFlags()
  7835 ms     | 0x1974 basekey:0x7f8ce7dec700
  7835 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7835 ms     | 0x1974 ret:0x7f8ce7deca80
  7835 ms     | 0x1974 PK11_Encrypt()
  7835 ms     | 0x1974 symkey:0x7f8ce7d99480
  7836 ms     | 0x1974 PK11_DeriveWithFlags()
  7836 ms     | 0x1974 basekey:0x7f8ce7dfd600
  7836 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7836 ms     | 0x1974 ret:0x7f8ce7deca80
  7836 ms     | 0x1974 PK11_DeriveWithFlags()
  7836 ms     | 0x1974 basekey:0x7f8ce7dfd600
  7836 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7836 ms     | 0x1974 ret:0x7f8ce7e3fc80
  7836 ms     | 0x1974 PK11_DeriveWithFlags()
  7836 ms     | 0x1974 basekey:0x7f8ce7decb80
  7836 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7836 ms     | 0x1974 ret:0x7f8ce7d99480
  7836 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7836 ms     | 0x1974 privk:0x7f8ce7dd8020::7f8ce7dd8020  10 1f 26 e8                                      ..&.
  7836 ms     | 0x1974 privk:0x7f8ce7dd8020::7f8ce7dd8020  e5 e5 e5 e5                                      ....
  7836 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7836 ms     | 0x1974 privk:0x7f8ce7dd6020::7f8ce7dd6020  d0 48 20 e8                                      .H .
  7836 ms     | 0x1974 privk:0x7f8ce7dd6020::7f8ce7dd6020  e5 e5 e5 e5                                      ....
  7836 ms  0x1974 SSL_AuthCertificateComplete()
  7836 ms  0x1974 fd:0x7f8cf9512d00
  7836 ms  0x1974 err:0x0
  7836 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7836 ms     | 0x1974 privk:0x7f8ce8297820::7f8ce8297820  60 8a 32 fa                                      `.2.
  7836 ms     | 0x1974 privk:0x7f8ce8297820::7f8ce8297820  e5 e5 e5 e5                                      ....
  7836 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7836 ms     | 0x1974 privk:0x7f8ce8294820::7f8ce8294820  80 88 32 fa                                      ..2.
  7836 ms     | 0x1974 privk:0x7f8ce8294820::7f8ce8294820  e5 e5 e5 e5                                      ....
  7837 ms  0x1974 PK11_Encrypt()
  7837 ms  0x1974 symkey:0x7f8ce7dece80
  7837 ms  0x1974 PK11_Encrypt()
  7837 ms  0x1974 symkey:0x7f8ce7deca80
  7837 ms  0x1974 PK11_Encrypt()
  7837 ms  0x1974 symkey:0x7f8ce7dfe400
  7837 ms  0x1974 PK11_Encrypt()
  7837 ms  0x1974 symkey:0x7f8ce7dfe400
  7838 ms  0x1974 PK11_Encrypt()
  7838 ms  0x1974 symkey:0x7f8ce7dfdc80
           /* TID 0x197c */
  7844 ms  0x197c PR_Close()
  7844 ms  0x197c fd:0x7f8ce7ee18b0
           /* TID 0x1974 */
  7851 ms  0x1974 PK11_Encrypt()
  7851 ms  0x1974 symkey:0x7f8ce7c96a00
  7855 ms  0x1974 PK11_Encrypt()
  7855 ms  0x1974 symkey:0x7f8ce7c96a00
  7859 ms  0x1974 PK11_Encrypt()
  7859 ms  0x1974 symkey:0x7f8ce7c96a00
  7860 ms  0x1974 SSL_ImportFD()
  7860 ms  0x1974 ret:0x7f8cf9595910
  7860 ms  0x1974 SSL_AuthCertificateHook()
  7860 ms  0x1974 fd:0x7f8cf9595910
  7860 ms  0x1974 ret:0x0
  7860 ms  0x1974 PR_Connect()
  7860 ms  0x1974 fd:0x7f8cf9595910
           /* TID 0x197c */
  7862 ms  0x197c PR_Close()
  7862 ms  0x197c fd:0x7f8ce7e825e0
  7864 ms  0x197c PR_Close()
  7864 ms  0x197c fd:0x7f8ce7e825e0
           /* TID 0x1974 */
  7864 ms  0x1974 PK11_Encrypt()
  7864 ms  0x1974 symkey:0x7f8ce7c96a00
  7865 ms  0x1974 PK11_Encrypt()
  7865 ms  0x1974 symkey:0x7f8ce7c96a00
  7867 ms  0x1974 PK11_Encrypt()
  7867 ms  0x1974 symkey:0x7f8ce7c96a00
  7868 ms  0x1974 PR_Close()
  7868 ms  0x1974 fd:0x7f8ce7ee1d60
  7868 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7868 ms     | 0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  10 75 50 f9                                      .uP.
  7868 ms     | 0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  e5 e5 e5 e5                                      ....
  7868 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7868 ms     | 0x1974 privk:0x7f8ce7de2020::7f8ce7de2020  b0 b5 37 e8                                      ..7.
  7868 ms     | 0x1974 privk:0x7f8ce7de2020::7f8ce7de2020  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  7870 ms  0x197c PR_Close()
  7870 ms  0x197c fd:0x7f8ce7ee1d60
           /* TID 0x1a14 */
  7870 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7870 ms  0x1a14 ret:0x0
           /* TID 0x1974 */
  7872 ms  0x1974 PK11_DeriveWithFlags()
  7872 ms  0x1974 basekey:0x7f8ce7dfe800
  7872 ms     | 0x1974 PK11_DeriveWithTemplate()
  7872 ms  0x1974 ret:0x7f8ce7dece00
  7872 ms  0x1974 PK11_DeriveWithFlags()
  7872 ms  0x1974 basekey:0x7f8ce7dfe800
  7872 ms     | 0x1974 PK11_DeriveWithTemplate()
  7872 ms  0x1974 ret:0x7f8ce7dece00
  7872 ms  0x1974 PR_Close()
  7872 ms  0x1974 fd:0x7f8ce7ee1f40
  7872 ms     | 0x1974 PK11_Encrypt()
  7872 ms     | 0x1974 symkey:0x7f8ce7dece80
           /* TID 0x197c */
  7873 ms  0x197c PR_Close()
  7873 ms  0x197c fd:0x7f8ce7ee1280
           /* TID 0x1a13 */
  7873 ms  0x1a13 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7873 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7873 ms     | 0x1a13 ret:0x180
  7873 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7873 ms     | 0x1a13 ret:0x180
  7873 ms     | 0x1a13 EC_ValidatePublicKey()
  7875 ms     | 0x1a13 ret:0x0
           /* TID 0x1974 */
  7878 ms  0x1974 PK11_DeriveWithFlags()
  7878 ms  0x1974 basekey:0x7f8ce7d99480
  7878 ms     | 0x1974 PK11_DeriveWithTemplate()
  7878 ms  0x1974 ret:0x7f8ce8337200
  7878 ms  0x1974 PK11_DeriveWithFlags()
  7878 ms  0x1974 basekey:0x7f8ce7d99480
  7878 ms     | 0x1974 PK11_DeriveWithTemplate()
  7878 ms  0x1974 ret:0x7f8ce8337200
  7878 ms  0x1974 PK11_DeriveWithFlags()
  7878 ms  0x1974 basekey:0x7f8ce7dec680
  7878 ms     | 0x1974 PK11_DeriveWithTemplate()
  7878 ms  0x1974 ret:0x7f8ce8337200
  7878 ms  0x1974 PK11_DeriveWithFlags()
  7878 ms  0x1974 basekey:0x7f8ce7dec680
  7878 ms     | 0x1974 PK11_DeriveWithTemplate()
  7878 ms  0x1974 ret:0x7f8ce8337200
  7878 ms  0x1974 PR_Close()
  7878 ms  0x1974 fd:0x7f8ce8339400
  7878 ms     | 0x1974 PK11_Encrypt()
  7878 ms     | 0x1974 symkey:0x7f8ce7dfdc80
  7878 ms  0x1974 PR_Close()
  7878 ms  0x1974 fd:0x7f8ce7f13850
  7878 ms     | 0x1974 PK11_Encrypt()
  7878 ms     | 0x1974 symkey:0x7f8ce7deca80
           /* TID 0x1a13 */
  7881 ms  0x1a13 ret:0x0
           /* TID 0x1974 */
  7888 ms  0x1974 SSL_AuthCertificateComplete()
  7888 ms  0x1974 fd:0x7f8cf951c160
  7888 ms  0x1974 err:0x0
  7888 ms     | 0x1974 PK11_DeriveWithFlags()
  7888 ms     | 0x1974 basekey:0x7f8ce7dfe000
  7888 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7888 ms     | 0x1974 ret:0x7f8ce7dfde00
  7888 ms     | 0x1974 PK11_DeriveWithFlags()
  7888 ms     | 0x1974 basekey:0x7f8ce7dfe000
  7888 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7888 ms     | 0x1974 ret:0x7f8ce7dfda80
  7888 ms     | 0x1974 PK11_DeriveWithFlags()
  7888 ms     | 0x1974 basekey:0x7f8ce7dfe000
  7888 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7888 ms     | 0x1974 ret:0x7f8ce7dfd600
  7888 ms     | 0x1974 PK11_DeriveWithFlags()
  7888 ms     | 0x1974 basekey:0x7f8ce7dfdd80
  7888 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7888 ms     | 0x1974 ret:0x7f8ce7d99480
  7888 ms     | 0x1974 PK11_DeriveWithFlags()
  7888 ms     | 0x1974 basekey:0x7f8ce7dfdd80
  7888 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7888 ms     | 0x1974 ret:0x7f8ce7c96b80
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7c96b80
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfda80
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7deca80
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfdd80
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7dfdf00
  7889 ms     | 0x1974 PK11_Encrypt()
  7889 ms     | 0x1974 symkey:0x7f8ce7d99480
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7dfdf00
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfde00
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7deca80
  7889 ms     | 0x1974 PK11_DeriveWithFlags()
  7889 ms     | 0x1974 basekey:0x7f8ce7dfe000
  7889 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7889 ms     | 0x1974 ret:0x7f8ce7d99480
  7889 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7889 ms     | 0x1974 privk:0x7f8ce7f7a820::7f8ce7f7a820  60 75 32 fa                                      `u2.
  7889 ms     | 0x1974 privk:0x7f8ce7f7a820::7f8ce7f7a820  e5 e5 e5 e5                                      ....
  7889 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7889 ms     | 0x1974 privk:0x7f8ce7f77820::7f8ce7f77820  00 76 5a f9                                      .vZ.
  7889 ms     | 0x1974 privk:0x7f8ce7f77820::7f8ce7f77820  e5 e5 e5 e5                                      ....
  7890 ms  0x1974 PK11_Encrypt()
  7890 ms  0x1974 symkey:0x7f8ce7dfdf00
  7890 ms  0x1974 PK11_Encrypt()
  7890 ms  0x1974 symkey:0x7f8ce7dfdf00
  7897 ms  0x1974 PK11_Encrypt()
  7897 ms  0x1974 symkey:0x7f8ce7dfe400
           /* TID 0x197c */
  7899 ms  0x197c PR_Close()
  7899 ms  0x197c fd:0x7f8ce7ee1d60
           /* TID 0x1a0c */
  7899 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7900 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
  7900 ms  0x1974 SSL_AuthCertificateComplete()
  7900 ms  0x1974 fd:0x7f8ce8339b50
  7900 ms  0x1974 err:0x0
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded580
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7dfdc00
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded580
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7dfdd80
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded580
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7dfe000
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded300
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7deca80
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded300
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7decf80
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7dfdd80
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7decf80
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7dfdd80
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7decb00
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded300
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7ded480
  7900 ms     | 0x1974 PK11_Encrypt()
  7900 ms     | 0x1974 symkey:0x7f8ce7deca80
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7dfdc00
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7ded480
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7dfdc00
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7decb00
  7900 ms     | 0x1974 PK11_DeriveWithFlags()
  7900 ms     | 0x1974 basekey:0x7f8ce7ded580
  7900 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7900 ms     | 0x1974 ret:0x7f8ce7deca80
  7900 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7900 ms     | 0x1974 privk:0x7f8ce7ea3020::7f8ce7ea3020  a0 7b 50 f9                                      .{P.
  7900 ms     | 0x1974 privk:0x7f8ce7ea3020::7f8ce7ea3020  e5 e5 e5 e5                                      ....
  7901 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7901 ms     | 0x1974 privk:0x7f8ce7ea1020::7f8ce7ea1020  d0 78 50 f9                                      .xP.
  7901 ms     | 0x1974 privk:0x7f8ce7ea1020::7f8ce7ea1020  e5 e5 e5 e5                                      ....
  7901 ms  0x1974 PK11_Encrypt()
  7901 ms  0x1974 symkey:0x7f8ce7ded480
  7901 ms  0x1974 PK11_Encrypt()
  7901 ms  0x1974 symkey:0x7f8ce7ded480
  7906 ms  0x1974 SSL_ImportFD()
  7906 ms  0x1974 ret:0x7f8ce7f13d90
  7906 ms  0x1974 SSL_AuthCertificateHook()
  7906 ms  0x1974 fd:0x7f8ce7f13d90
  7906 ms  0x1974 ret:0x0
  7906 ms  0x1974 PR_Connect()
  7906 ms  0x1974 fd:0x7f8ce7f13d90
           /* TID 0x197c */
  7920 ms  0x197c PR_Close()
  7920 ms  0x197c fd:0x7f8ce7f13850
           /* TID 0x1a09 */
  7920 ms  0x1a09 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7920 ms  0x1a09 ret:0x0
           /* TID 0x1974 */
  7921 ms  0x1974 SSL_AuthCertificateComplete()
  7921 ms  0x1974 fd:0x7f8cf951c130
  7921 ms  0x1974 err:0x0
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7dfdb00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7ded200
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7dfdb00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7ded300
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7dfdb00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7ded580
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7d4ad00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7decb00
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7d4ad00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7deca00
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7ded300
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7deca00
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7ded300
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7dec680
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7d4ad00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7dfda00
  7921 ms     | 0x1974 PK11_Encrypt()
  7921 ms     | 0x1974 symkey:0x7f8ce7decb00
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7ded200
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7dfda00
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7ded200
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7dec680
  7921 ms     | 0x1974 PK11_DeriveWithFlags()
  7921 ms     | 0x1974 basekey:0x7f8ce7dfdb00
  7921 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  7921 ms     | 0x1974 ret:0x7f8ce7decb00
  7921 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7921 ms     | 0x1974 privk:0x7f8ce7f6a820::7f8ce7f6a820  00 9b 58 f9                                      ..X.
  7921 ms     | 0x1974 privk:0x7f8ce7f6a820::7f8ce7f6a820  e5 e5 e5 e5                                      ....
  7922 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  7922 ms     | 0x1974 privk:0x7f8ce7f68020::7f8ce7f68020  c0 94 58 f9                                      ..X.
  7922 ms     | 0x1974 privk:0x7f8ce7f68020::7f8ce7f68020  e5 e5 e5 e5                                      ....
  7922 ms  0x1974 PK11_Encrypt()
  7922 ms  0x1974 symkey:0x7f8ce7dfda00
  7922 ms  0x1974 PK11_Encrypt()
  7922 ms  0x1974 symkey:0x7f8ce7dfda00
  7933 ms  0x1974 PK11_Encrypt()
  7933 ms  0x1974 symkey:0x7f8ce7c96a00
           /* TID 0x197c */
  7933 ms  0x197c PR_Close()
  7933 ms  0x197c fd:0x7f8ce7e82a60
           /* TID 0x1974 */
  7939 ms  0x1974 PK11_DeriveWithFlags()
  7939 ms  0x1974 basekey:0x7f8ce7deca80
  7939 ms     | 0x1974 PK11_DeriveWithTemplate()
  7939 ms  0x1974 ret:0x7f8ce7dfd100
  7939 ms  0x1974 PK11_DeriveWithFlags()
  7939 ms  0x1974 basekey:0x7f8ce7deca80
  7939 ms     | 0x1974 PK11_DeriveWithTemplate()
  7939 ms  0x1974 ret:0x7f8ce7dfd100
  7939 ms  0x1974 PK11_Encrypt()
  7939 ms  0x1974 symkey:0x7f8ce7ded480
  7940 ms  0x1974 PK11_DeriveWithFlags()
  7940 ms  0x1974 basekey:0x7f8ce7d99480
  7940 ms     | 0x1974 PK11_DeriveWithTemplate()
  7940 ms  0x1974 ret:0x7f8ce7dfd100
  7940 ms  0x1974 PK11_DeriveWithFlags()
  7940 ms  0x1974 basekey:0x7f8ce7d99480
  7940 ms     | 0x1974 PK11_DeriveWithTemplate()
  7940 ms  0x1974 ret:0x7f8ce7dfd100
  7948 ms  0x1974 SECKEY_CreateECPrivateKey()
  7948 ms  0x1974 cx:0x7f8ce7e0fc08
  7948 ms     | 0x1974 EC_ValidatePublicKey()
  7948 ms     | 0x1974 ret:0x0
  7948 ms  0x1974 ret:0x7f8ce7de3020::7f8ce7de3020  00 11 26 e8                                      ..&.
  7948 ms  0x1974 SECKEY_CreateECPrivateKey()
  7948 ms  0x1974 cx:0x7f8ce7e0fc08
  7949 ms     | 0x1974 EC_ValidatePublicKey()
  7950 ms     | 0x1974 ret:0x0
  7950 ms  0x1974 ret:0x7f8ce7e9f020::7f8ce7e9f020  d0 1d 26 e8                                      ..&.
           /* TID 0x197c */
  7962 ms  0x197c PR_Close()
  7962 ms  0x197c fd:0x7f8ce7e82bb0
           /* TID 0x1974 */
  7962 ms  0x1974 PK11_DeriveWithFlags()
  7962 ms  0x1974 basekey:0x7f8ce7decb00
  7962 ms     | 0x1974 PK11_DeriveWithTemplate()
  7962 ms  0x1974 ret:0x7f8ce7dfd100
  7962 ms  0x1974 PK11_DeriveWithFlags()
  7962 ms  0x1974 basekey:0x7f8ce7decb00
  7962 ms     | 0x1974 PK11_DeriveWithTemplate()
  7962 ms  0x1974 ret:0x7f8ce7dfd100
  7962 ms  0x1974 PK11_Encrypt()
  7962 ms  0x1974 symkey:0x7f8ce7dfda00
  7975 ms  0x1974 PK11_Encrypt()
  7975 ms  0x1974 symkey:0x7f8ce7dfe400
  7976 ms  0x1974 PK11_Encrypt()
  7976 ms  0x1974 symkey:0x7f8ce7dfe400
  7977 ms  0x1974 PK11_Encrypt()
  7977 ms  0x1974 symkey:0x7f8ce7dfe400
  7978 ms  0x1974 PK11_Encrypt()
  7978 ms  0x1974 symkey:0x7f8ce7dfe400
  7979 ms  0x1974 PK11_Encrypt()
  7979 ms  0x1974 symkey:0x7f8ce7dfe400
  7981 ms  0x1974 PK11_Encrypt()
  7981 ms  0x1974 symkey:0x7f8ce7dfe400
  7982 ms  0x1974 PK11_Encrypt()
  7982 ms  0x1974 symkey:0x7f8ce7dfe400
  7983 ms  0x1974 PK11_Encrypt()
  7983 ms  0x1974 symkey:0x7f8ce7dfe400
  7984 ms  0x1974 PK11_Encrypt()
  7984 ms  0x1974 symkey:0x7f8ce7dfe400
  7985 ms  0x1974 PK11_Encrypt()
  7985 ms  0x1974 symkey:0x7f8ce7dfe400
  7986 ms  0x1974 PK11_Encrypt()
  7986 ms  0x1974 symkey:0x7f8ce7dfe400
  7987 ms  0x1974 PK11_Encrypt()
  7987 ms  0x1974 symkey:0x7f8ce7dfe400
  7991 ms  0x1974 PK11_Encrypt()
  7991 ms  0x1974 symkey:0x7f8ce7dfdf00
  7993 ms  SECKEY_ECParamsToKeySize()
  7993 ms  0x1974 ret:0x100
  7993 ms  0x1974 SECKEY_CreateECPrivateKey()
  7993 ms  0x1974 cx:0x7f8ce7e0fc08
  7993 ms     | 0x1974 EC_ValidatePublicKey()
  7995 ms     | 0x1974 ret:0x0
  7995 ms  0x1974 ret:0x7f8ce7eb9820::7f8ce7eb9820  60 7a 50 f9                                      `zP.
  7995 ms  0x1974 PK11_PubDeriveWithKDF()
  7995 ms  0x1974 seckey:0x7f8ce7eb9820
  7995 ms     | 0x1974 EC_ValidatePublicKey()
  7997 ms     | 0x1974 ret:0x0
  7999 ms  0x1974 ret:0x7f8ce7dfd100
  7999 ms  0x1974 PK11_DeriveWithFlags()
  7999 ms  0x1974 basekey:0x7f8ce7dfd100
  7999 ms     | 0x1974 PK11_DeriveWithTemplate()
  7999 ms  0x1974 ret:0x7f8ce7d4ad00
  7999 ms  0x1974 PK11_Derive()
  7999 ms  0x1974 basekey:0x7f8ce7d4ad00
  7999 ms     | 0x1974 PK11_DeriveWithTemplate()
  8000 ms  0x1974 ret:0x7f8ce7dfdb00
  8000 ms  0x1974 SECKEY_DestroyPrivateKey()
  8000 ms  0x1974 privk:0x7f8ce7eb9820::7f8ce7eb9820  60 7a 50 f9                                      `zP.
  8000 ms  0x1974 privk:0x7f8ce7eb9820::7f8ce7eb9820  e5 e5 e5 e5                                      ....
  8000 ms  0x1974 PK11_Encrypt()
  8000 ms  0x1974 symkey:0x7f8ce7f2f780
           /* TID 0x197c */
  8001 ms  0x197c PR_Close()
  8001 ms  0x197c fd:0x7f8cf9512a60
  8006 ms  0x197c PR_Close()
  8006 ms  0x197c fd:0x7f8ce8339ac0
           /* TID 0x1974 */
  8009 ms  0x1974 PK11_Encrypt()
  8009 ms  0x1974 symkey:0x7f8ce7ded480
  8014 ms  0x1974 SSL_ImportFD()
  8014 ms  0x1974 ret:0x7f8cfa646eb0
  8014 ms  0x1974 SSL_AuthCertificateHook()
  8014 ms  0x1974 fd:0x7f8cfa646eb0
  8014 ms  0x1974 ret:0x0
  8014 ms  0x1974 PR_Connect()
  8014 ms  0x1974 fd:0x7f8cfa646eb0
           /* TID 0x197c */
  8026 ms  0x197c PR_Close()
  8026 ms  0x197c fd:0x7f8cfa6468b0
           /* TID 0x19d3 */
  8026 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8026 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  8027 ms  0x1974 SSL_AuthCertificateComplete()
  8027 ms  0x1974 fd:0x7f8ce7f13d90
  8027 ms  0x1974 err:0x0
  8027 ms  0x1974 PK11_Encrypt()
  8027 ms  0x1974 symkey:0x7f8ce7f2f780
  8027 ms  0x1974 PK11_Encrypt()
  8027 ms  0x1974 symkey:0x7f8ce7f2f780
  8041 ms  0x1974 SECKEY_DestroyPrivateKey()
  8041 ms  0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  d0 1d 26 e8                                      ..&.
  8042 ms  0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  e5 e5 e5 e5                                      ....
  8042 ms  0x1974 SECKEY_DestroyPrivateKey()
  8042 ms  0x1974 privk:0x7f8ce7de3020::7f8ce7de3020  00 11 26 e8                                      ..&.
  8042 ms  0x1974 privk:0x7f8ce7de3020::7f8ce7de3020  e5 e5 e5 e5                                      ....
  8042 ms  0x1974 PK11_Encrypt()
  8042 ms  0x1974 symkey:0x7f8ce7f2f780
  8053 ms  0x1974 SECKEY_CreateECPrivateKey()
  8053 ms  0x1974 cx:0x7f8ce7e11948
  8053 ms     | 0x1974 EC_ValidatePublicKey()
  8053 ms     | 0x1974 ret:0x0
  8053 ms  0x1974 ret:0x7f8ce7de3020::7f8ce7de3020  00 11 26 e8                                      ..&.
  8054 ms  0x1974 SECKEY_CreateECPrivateKey()
  8054 ms  0x1974 cx:0x7f8ce7e11948
  8054 ms     | 0x1974 EC_ValidatePublicKey()
  8056 ms     | 0x1974 ret:0x0
  8056 ms  0x1974 ret:0x7f8ce7e9f020::7f8ce7e9f020  d0 1d 26 e8                                      ..&.
           /* TID 0x197c */
  8076 ms  0x197c PR_Close()
  8076 ms  0x197c fd:0x7f8ce7cff580
           /* TID 0x1974 */
  8083 ms  0x1974 PK11_Encrypt()
  8083 ms  0x1974 symkey:0x7f8ce7dfda00
  8106 ms  0x1974 PK11_Encrypt()
  8106 ms  0x1974 symkey:0x7f8ce7c96980
  8110 ms  0x1974 PK11_Derive()
  8110 ms  0x1974 basekey:0x7f8ce7dfd100
  8110 ms     | 0x1974 PK11_DeriveWithTemplate()
  8110 ms  0x1974 ret:0x7f8ce7dec680
  8110 ms  0x1974 PK11_PubDeriveWithKDF()
  8110 ms  0x1974 seckey:0x7f8ce7de3020
  8110 ms     | 0x1974 EC_ValidatePublicKey()
  8110 ms     | 0x1974 ret:0x0
  8110 ms  0x1974 ret:0x7f8ce7dfd100
  8110 ms  SECKEY_ECParamsToKeySize()
  8110 ms  0x1974 ret:0xff
  8110 ms  0x1974 PK11_DeriveWithFlags()
  8110 ms  0x1974 basekey:0x7f8ce7dec680
  8110 ms     | 0x1974 PK11_DeriveWithTemplate()
  8110 ms  0x1974 ret:0x7f8ce7dec780
  8110 ms  0x1974 PK11_Derive()
  8110 ms  0x1974 basekey:0x7f8ce7dfd100
  8110 ms     | 0x1974 PK11_DeriveWithTemplate()
  8110 ms  0x1974 ret:0x7f8ce7dfdc80
  8110 ms  0x1974 PK11_DeriveWithFlags()
  8110 ms  0x1974 basekey:0x7f8ce7dfdc80
  8110 ms     | 0x1974 PK11_DeriveWithTemplate()
  8110 ms  0x1974 ret:0x7f8ce7dec680
  8110 ms  0x1974 PK11_DeriveWithFlags()
  8110 ms  0x1974 basekey:0x7f8ce7dfdc80
  8110 ms     | 0x1974 PK11_DeriveWithTemplate()
  8110 ms  0x1974 ret:0x7f8ce7dfd100
  8110 ms  0x1974 PK11_DeriveWithFlags()
  8110 ms  0x1974 basekey:0x7f8ce7dfdc80
  8111 ms     | 0x1974 PK11_DeriveWithTemplate()
  8111 ms  0x1974 ret:0x7f8ce7dec780
  8111 ms  0x1974 PK11_Derive()
  8111 ms  0x1974 basekey:0x7f8ce8337200
  8111 ms     | 0x1974 PK11_DeriveWithTemplate()
  8111 ms  0x1974 ret:0x7f8ce7c96680
  8111 ms  0x1974 PK11_DeriveWithFlags()
  8111 ms  0x1974 basekey:0x7f8ce7dfd100
  8111 ms     | 0x1974 PK11_DeriveWithTemplate()
  8111 ms  0x1974 ret:0x7f8ce7dfdc80
  8111 ms  0x1974 PK11_DeriveWithFlags()
  8111 ms  0x1974 basekey:0x7f8ce7dfd100
  8111 ms     | 0x1974 PK11_DeriveWithTemplate()
  8111 ms  0x1974 ret:0x7f8ce7dec780
  8112 ms  SECKEY_ECParamsToKeySize()
  8112 ms  0x1974 ret:0x100
  8112 ms  SECKEY_ECParamsToBasePointOrderLen()
  8112 ms  0x1974 ret:0x100
  8112 ms  SECKEY_ECParamsToBasePointOrderLen()
  8112 ms  0x1974 ret:0x100
  8112 ms  0x1974 EC_ValidatePublicKey()
  8114 ms  0x1974 ret:0x0
  8116 ms  0x1974 PK11_DeriveWithFlags()
  8116 ms  0x1974 basekey:0x7f8ce7dfd100
  8116 ms     | 0x1974 PK11_DeriveWithTemplate()
  8116 ms  0x1974 ret:0x7f8ce7dec780
           /* TID 0x197c */
  8121 ms  0x197c PR_Close()
  8121 ms  0x197c fd:0x7f8ce7cff580
           /* TID 0x1974 */
  8121 ms  0x1974 SSL_ImportFD()
  8121 ms  0x1974 ret:0x7f8ce821ae80
  8121 ms  0x1974 SSL_AuthCertificateHook()
  8121 ms  0x1974 fd:0x7f8ce821ae80
  8121 ms  0x1974 ret:0x0
  8121 ms  0x1974 PR_Connect()
  8121 ms  0x1974 fd:0x7f8ce821ae80
  8121 ms  0x1974 SSL_AuthCertificateComplete()
  8121 ms  0x1974 fd:0x7f8cfa646eb0
  8121 ms  0x1974 err:0x0
  8121 ms     | 0x1974 PK11_DeriveWithFlags()
  8121 ms     | 0x1974 basekey:0x7f8ce7c96680
  8121 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8121 ms     | 0x1974 ret:0x7f8ce7dec780
  8121 ms     | 0x1974 PK11_DeriveWithFlags()
  8121 ms     | 0x1974 basekey:0x7f8ce7c96680
  8121 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce8337200
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7c96680
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dec280
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7dec680
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dfe800
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7dec680
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dec980
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce8337200
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dec980
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce8337200
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dece80
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7dec680
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dfdc80
  8122 ms     | 0x1974 PK11_Encrypt()
  8122 ms     | 0x1974 symkey:0x7f8ce7dfe800
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7dec780
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dfdc80
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7dec780
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dece80
  8122 ms     | 0x1974 PK11_DeriveWithFlags()
  8122 ms     | 0x1974 basekey:0x7f8ce7c96680
  8122 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8122 ms     | 0x1974 ret:0x7f8ce7dfe800
  8122 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8122 ms     | 0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  d0 1d 26 e8                                      ..&.
  8122 ms     | 0x1974 privk:0x7f8ce7e9f020::7f8ce7e9f020  e5 e5 e5 e5                                      ....
  8122 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8122 ms     | 0x1974 privk:0x7f8ce7de3020::7f8ce7de3020  00 11 26 e8                                      ..&.
  8122 ms     | 0x1974 privk:0x7f8ce7de3020::7f8ce7de3020  e5 e5 e5 e5                                      ....
  8123 ms  0x1974 PK11_Encrypt()
  8123 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  8124 ms  0x197c PR_Close()
  8124 ms  0x197c fd:0x7f8ce7cff580
  8125 ms  0x197c PR_Close()
  8125 ms  0x197c fd:0x7f8ce7cff580
           /* TID 0x1974 */
  8130 ms  0x1974 PK11_Encrypt()
  8130 ms  0x1974 symkey:0x7f8ce7dfdc80
  8130 ms  0x1974 PK11_Encrypt()
  8130 ms  0x1974 symkey:0x7f8ce7dfdc80
  8131 ms  0x1974 PK11_Encrypt()
  8131 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  8132 ms  0x197c PR_Close()
  8132 ms  0x197c fd:0x7f8ce7cff580
  8134 ms  0x197c PR_Close()
  8134 ms  0x197c fd:0x7f8ce7cff580
  8135 ms  0x197c PR_Close()
  8135 ms  0x197c fd:0x7f8ce7cff580
           /* TID 0x1974 */
  8135 ms  0x1974 SECKEY_CreateECPrivateKey()
  8135 ms  0x1974 cx:0x7f8ce7e10908
  8135 ms     | 0x1974 EC_ValidatePublicKey()
  8135 ms     | 0x1974 ret:0x0
  8135 ms  0x1974 ret:0x7f8ce7ea2820::7f8ce7ea2820  00 11 26 e8                                      ..&.
  8136 ms  0x1974 SECKEY_CreateECPrivateKey()
  8136 ms  0x1974 cx:0x7f8ce7e10908
  8136 ms     | 0x1974 EC_ValidatePublicKey()
  8142 ms     | 0x1974 ret:0x0
  8142 ms  0x1974 ret:0x7f8ce7ebd820::7f8ce7ebd820  10 9f 32 e8                                      ..2.
           /* TID 0x197c */
  8144 ms  0x197c PR_Close()
  8144 ms  0x197c fd:0x7f8cf951c190
           /* TID 0x1974 */
  8144 ms  0x1974 PK11_Encrypt()
  8144 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  8146 ms  0x197c PR_Close()
  8146 ms  0x197c fd:0x7f8cf951c190
  8147 ms  0x197c PR_Close()
  8147 ms  0x197c fd:0x7f8cf951c190
  8147 ms  0x197c PR_Close()
  8147 ms  0x197c fd:0x7f8cf951c190
  8149 ms  0x197c PR_Close()
  8149 ms  0x197c fd:0x7f8cf951c190
           /* TID 0x1974 */
  8160 ms  0x1974 PK11_DeriveWithFlags()
  8160 ms  0x1974 basekey:0x7f8ce7dfe800
  8160 ms     | 0x1974 PK11_DeriveWithTemplate()
  8160 ms  0x1974 ret:0x7f8ce7dfd100
  8160 ms  0x1974 PK11_DeriveWithFlags()
  8160 ms  0x1974 basekey:0x7f8ce7dfe800
  8160 ms     | 0x1974 PK11_DeriveWithTemplate()
  8160 ms  0x1974 ret:0x7f8ce7dfd100
  8160 ms  0x1974 PK11_Encrypt()
  8160 ms  0x1974 symkey:0x7f8ce7dfdc80
  8160 ms  0x1974 PK11_Encrypt()
  8160 ms  0x1974 symkey:0x7f8ce7c97000
           /* TID 0x197c */
  8178 ms  0x197c PR_Close()
  8178 ms  0x197c fd:0x7f8ce81ebe20
           /* TID 0x1974 */
  8179 ms  0x1974 PK11_Encrypt()
  8179 ms  0x1974 symkey:0x7f8ce7f2f780
  8182 ms  0x1974 PK11_Encrypt()
  8182 ms  0x1974 symkey:0x7f8ce7c96980
  8186 ms  0x1974 PK11_Encrypt()
  8186 ms  0x1974 symkey:0x7f8ce7dfda00
           /* TID 0x197c */
  8187 ms  0x197c PR_Close()
  8187 ms  0x197c fd:0x7f8cfab7a0a0
           /* TID 0x1974 */
  8192 ms  0x1974 PK11_Encrypt()
  8192 ms  0x1974 symkey:0x7f8ce7dfe400
           /* TID 0x197c */
  8215 ms  0x197c PR_Close()
  8215 ms  0x197c fd:0x7f8cfab7a130
           /* TID 0x1974 */
  8225 ms  0x1974 PK11_Encrypt()
  8225 ms  0x1974 symkey:0x7f8ce7dfda00
           /* TID 0x197c */
  8227 ms  0x197c PR_Close()
  8227 ms  0x197c fd:0x7f8cfab7a160
           /* TID 0x1974 */
  8229 ms  0x1974 PK11_Encrypt()
  8229 ms  0x1974 symkey:0x7f8ce7c97000
           /* TID 0x197c */
  8229 ms  0x197c PR_Close()
  8229 ms  0x197c fd:0x7f8cf9595eb0
           /* TID 0x1974 */
  8242 ms  0x1974 PK11_Encrypt()
  8242 ms  0x1974 symkey:0x7f8ce7dfda00
           /* TID 0x197c */
  8244 ms  0x197c PR_Close()
  8244 ms  0x197c fd:0x7f8cfa32e370
           /* TID 0x1974 */
  8244 ms  0x1974 PK11_Encrypt()
  8244 ms  0x1974 symkey:0x7f8ce7dfda00
           /* TID 0x197c */
  8252 ms  0x197c PR_Close()
  8252 ms  0x197c fd:0x7f8cf9595eb0
           /* TID 0x1974 */
  8279 ms  0x1974 PK11_Encrypt()
  8279 ms  0x1974 symkey:0x7f8ce7c96980
  8295 ms  0x1974 PK11_Encrypt()
  8295 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  8345 ms  0x197c PR_Close()
  8345 ms  0x197c fd:0x7f8cfa6466d0
  8346 ms  0x197c PR_Close()
  8346 ms  0x197c fd:0x7f8cfa873d00
           /* TID 0x1974 */
  8354 ms  0x1974 PK11_Encrypt()
  8354 ms  0x1974 symkey:0x7f8ce7c96980
  8358 ms  0x1974 PK11_Encrypt()
  8358 ms  0x1974 symkey:0x7f8ce7dfdc80
           /* TID 0x197c */
  8359 ms  0x197c PR_Close()
  8359 ms  0x197c fd:0x7f8cfa873d00
           /* TID 0x1974 */
  8365 ms  0x1974 SECKEY_CreateECPrivateKey()
  8365 ms  0x1974 cx:0x7f8ce7e11c88
  8366 ms     | 0x1974 EC_ValidatePublicKey()
  8366 ms     | 0x1974 ret:0x0
  8366 ms  0x1974 ret:0x7f8ce7f70820::7f8ce7f70820  b0 1f 36 e8                                      ..6.
  8366 ms  0x1974 SECKEY_CreateECPrivateKey()
  8366 ms  0x1974 cx:0x7f8ce7e11c88
  8366 ms     | 0x1974 EC_ValidatePublicKey()
  8368 ms     | 0x1974 ret:0x0
  8368 ms  0x1974 ret:0x7f8ce7f73020::7f8ce7f73020  a0 11 3a e8                                      ..:.
  8377 ms  0x1974 PK11_Encrypt()
  8377 ms  0x1974 symkey:0x7f8ce7c96980
  8387 ms  0x1974 PK11_Encrypt()
  8387 ms  0x1974 symkey:0x7f8ce7c96980
  8397 ms  0x1974 PK11_Encrypt()
  8397 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  8400 ms  0x197c PR_Close()
  8400 ms  0x197c fd:0x7f8cf97257f0
           /* TID 0x1974 */
  8400 ms  0x1974 PK11_Encrypt()
  8400 ms  0x1974 symkey:0x7f8ce7c96980
  8412 ms  SECKEY_ECParamsToKeySize()
  8412 ms  0x1974 ret:0x100
  8412 ms  0x1974 SECKEY_CreateECPrivateKey()
  8412 ms  0x1974 cx:0x7f8ce7e10908
  8413 ms     | 0x1974 EC_ValidatePublicKey()
  8414 ms     | 0x1974 ret:0x0
  8414 ms  0x1974 ret:0x7f8ce8297820::7f8ce8297820  50 c1 54 f9                                      P.T.
  8414 ms  0x1974 PK11_PubDeriveWithKDF()
  8414 ms  0x1974 seckey:0x7f8ce8297820
  8414 ms     | 0x1974 EC_ValidatePublicKey()
  8416 ms     | 0x1974 ret:0x0
  8417 ms  0x1974 ret:0x7f8ce7dfd100
  8417 ms  0x1974 PK11_DeriveWithFlags()
  8417 ms  0x1974 basekey:0x7f8ce7dfd100
  8417 ms     | 0x1974 PK11_DeriveWithTemplate()
  8417 ms  0x1974 ret:0x7f8ce7dec680
  8417 ms  0x1974 PK11_Derive()
  8417 ms  0x1974 basekey:0x7f8ce7dec680
  8417 ms     | 0x1974 PK11_DeriveWithTemplate()
  8417 ms  0x1974 ret:0x7f8ce7c96680
  8417 ms  0x1974 SECKEY_DestroyPrivateKey()
  8417 ms  0x1974 privk:0x7f8ce8297820::7f8ce8297820  50 c1 54 f9                                      P.T.
  8417 ms  0x1974 privk:0x7f8ce8297820::7f8ce8297820  e5 e5 e5 e5                                      ....
  8417 ms  0x1974 PK11_Encrypt()
  8417 ms  0x1974 symkey:0x7f8ce843a580
           /* TID 0x197c */
  8429 ms  0x197c PR_Close()
  8429 ms  0x197c fd:0x7f8cfb882d60
           /* TID 0x1974 */
  8431 ms  0x1974 SSL_ImportFD()
  8431 ms  0x1974 ret:0x7f8cfc63e880
  8431 ms  0x1974 SSL_AuthCertificateHook()
  8431 ms  0x1974 fd:0x7f8cfc63e880
  8431 ms  0x1974 ret:0x0
  8431 ms  0x1974 PR_Connect()
  8431 ms  0x1974 fd:0x7f8cfc63e880
  8432 ms  0x1974 SSL_ImportFD()
  8432 ms  0x1974 ret:0x7f8cfab7aaf0
  8432 ms  0x1974 SSL_AuthCertificateHook()
  8432 ms  0x1974 fd:0x7f8cfab7aaf0
  8432 ms  0x1974 ret:0x0
  8432 ms  0x1974 PR_Connect()
  8432 ms  0x1974 fd:0x7f8cfab7aaf0
  8432 ms  0x1974 SSL_ImportFD()
  8432 ms  0x1974 ret:0x7f8cfc63efa0
  8432 ms  0x1974 SSL_AuthCertificateHook()
  8432 ms  0x1974 fd:0x7f8cfc63efa0
  8432 ms  0x1974 ret:0x0
  8432 ms  0x1974 PR_Connect()
  8432 ms  0x1974 fd:0x7f8cfc63efa0
  8432 ms  0x1974 SSL_ImportFD()
  8432 ms  0x1974 ret:0x7f8cfabfd310
  8432 ms  0x1974 SSL_AuthCertificateHook()
  8432 ms  0x1974 fd:0x7f8cfabfd310
  8432 ms  0x1974 ret:0x0
  8432 ms  0x1974 PR_Connect()
  8432 ms  0x1974 fd:0x7f8cfabfd310
  8433 ms  0x1974 SSL_ImportFD()
  8433 ms  0x1974 ret:0x7f8cfabfd8e0
  8433 ms  0x1974 SSL_AuthCertificateHook()
  8433 ms  0x1974 fd:0x7f8cfabfd8e0
  8433 ms  0x1974 ret:0x0
  8433 ms  0x1974 PR_Connect()
  8433 ms  0x1974 fd:0x7f8cfabfd8e0
  8433 ms  0x1974 SSL_ImportFD()
  8433 ms  0x1974 ret:0x7f8cfabfda60
  8434 ms  0x1974 SSL_AuthCertificateHook()
  8434 ms  0x1974 fd:0x7f8cfabfda60
  8434 ms  0x1974 ret:0x0
  8434 ms  0x1974 PR_Connect()
  8434 ms  0x1974 fd:0x7f8cfabfda60
  8434 ms  0x1974 SSL_ImportFD()
  8434 ms  0x1974 ret:0x7f8cfabfdbe0
  8434 ms  0x1974 SSL_AuthCertificateHook()
  8434 ms  0x1974 fd:0x7f8cfabfdbe0
  8434 ms  0x1974 ret:0x0
  8434 ms  0x1974 PR_Connect()
  8434 ms  0x1974 fd:0x7f8cfabfdbe0
  8434 ms  0x1974 SSL_ImportFD()
  8434 ms  0x1974 ret:0x7f8cfabfde20
  8434 ms  0x1974 SSL_AuthCertificateHook()
  8434 ms  0x1974 fd:0x7f8cfabfde20
  8434 ms  0x1974 ret:0x0
  8434 ms  0x1974 PR_Connect()
  8434 ms  0x1974 fd:0x7f8cfabfde20
  8435 ms  0x1974 SSL_ImportFD()
  8435 ms  0x1974 ret:0x7f8cfabfdfa0
  8435 ms  0x1974 SSL_AuthCertificateHook()
  8435 ms  0x1974 fd:0x7f8cfabfdfa0
  8435 ms  0x1974 ret:0x0
  8435 ms  0x1974 PR_Connect()
  8435 ms  0x1974 fd:0x7f8cfabfdfa0
  8435 ms  0x1974 SSL_ImportFD()
  8435 ms  0x1974 ret:0x7f8cfaefa250
  8435 ms  0x1974 SSL_AuthCertificateHook()
  8435 ms  0x1974 fd:0x7f8cfaefa250
  8435 ms  0x1974 ret:0x0
  8435 ms  0x1974 PR_Connect()
  8435 ms  0x1974 fd:0x7f8cfaefa250
  8435 ms  0x1974 SSL_ImportFD()
  8435 ms  0x1974 ret:0x7f8cfaefa430
  8435 ms  0x1974 SSL_AuthCertificateHook()
  8435 ms  0x1974 fd:0x7f8cfaefa430
  8435 ms  0x1974 ret:0x0
  8435 ms  0x1974 PR_Connect()
  8435 ms  0x1974 fd:0x7f8cfaefa430
  8435 ms  0x1974 SSL_ImportFD()
  8435 ms  0x1974 ret:0x7f8cfaefa580
  8435 ms  0x1974 SSL_AuthCertificateHook()
  8435 ms  0x1974 fd:0x7f8cfaefa580
  8435 ms  0x1974 ret:0x0
  8436 ms  0x1974 PR_Connect()
  8436 ms  0x1974 fd:0x7f8cfaefa580
  8436 ms  0x1974 SSL_ImportFD()
  8436 ms  0x1974 ret:0x7f8cfaefabe0
  8436 ms  0x1974 SSL_AuthCertificateHook()
  8436 ms  0x1974 fd:0x7f8cfaefabe0
  8436 ms  0x1974 ret:0x0
  8436 ms  0x1974 PR_Connect()
  8436 ms  0x1974 fd:0x7f8cfaefabe0
  8436 ms  0x1974 SSL_ImportFD()
  8436 ms  0x1974 ret:0x7f8cfaefad90
  8436 ms  0x1974 SSL_AuthCertificateHook()
  8436 ms  0x1974 fd:0x7f8cfaefad90
  8436 ms  0x1974 ret:0x0
  8436 ms  0x1974 PR_Connect()
  8436 ms  0x1974 fd:0x7f8cfaefad90
  8436 ms  0x1974 SSL_ImportFD()
  8436 ms  0x1974 ret:0x7f8cfb3f1850
  8436 ms  0x1974 SSL_AuthCertificateHook()
  8436 ms  0x1974 fd:0x7f8cfb3f1850
  8436 ms  0x1974 ret:0x0
  8436 ms  0x1974 PR_Connect()
  8436 ms  0x1974 fd:0x7f8cfb3f1850
  8437 ms  0x1974 SSL_ImportFD()
  8437 ms  0x1974 ret:0x7f8cfb882700
  8437 ms  0x1974 SSL_AuthCertificateHook()
  8437 ms  0x1974 fd:0x7f8cfb882700
  8437 ms  0x1974 ret:0x0
  8437 ms  0x1974 PR_Connect()
  8437 ms  0x1974 fd:0x7f8cfb882700
           /* TID 0x197c */
  8452 ms  0x197c PR_Close()
  8452 ms  0x197c fd:0x7f8cfa32e370
  8454 ms  0x197c PR_Close()
  8454 ms  0x197c fd:0x7f8cff5fc1f0
  8456 ms  0x197c PR_Close()
  8456 ms  0x197c fd:0x7f8cff5fc2e0
           /* TID 0x1974 */
  8462 ms  0x1974 SECKEY_CreateECPrivateKey()
  8462 ms  0x1974 cx:0x7f8d036e8c88
  8463 ms     | 0x1974 EC_ValidatePublicKey()
  8463 ms     | 0x1974 ret:0x0
  8463 ms  0x1974 ret:0x7f8ce82b0820::7f8ce82b0820  70 99 58 f9                                      p.X.
  8463 ms  0x1974 SECKEY_CreateECPrivateKey()
  8463 ms  0x1974 cx:0x7f8d036e8c88
  8463 ms     | 0x1974 EC_ValidatePublicKey()
  8465 ms     | 0x1974 ret:0x0
  8465 ms  0x1974 ret:0x7f8ce83d4020::7f8ce83d4020  90 9c 58 f9                                      ..X.
  8468 ms  0x1974 SECKEY_CreateECPrivateKey()
  8468 ms  0x1974 cx:0x7f8ce7e11fc8
  8468 ms     | 0x1974 EC_ValidatePublicKey()
  8468 ms     | 0x1974 ret:0x0
  8468 ms  0x1974 ret:0x7f8ce83d9020::7f8ce83d9020  60 70 5a f9                                      `pZ.
  8468 ms  0x1974 SECKEY_CreateECPrivateKey()
  8468 ms  0x1974 cx:0x7f8ce7e11fc8
  8469 ms     | 0x1974 EC_ValidatePublicKey()
  8470 ms     | 0x1974 ret:0x0
  8470 ms  0x1974 ret:0x7f8ce83dd020::7f8ce83dd020  40 72 5a f9                                      @rZ.
  8476 ms  0x1974 SECKEY_CreateECPrivateKey()
  8476 ms  0x1974 cx:0x7f8d036ba0a8
  8476 ms     | 0x1974 EC_ValidatePublicKey()
  8476 ms     | 0x1974 ret:0x0
  8476 ms  0x1974 ret:0x7f8ce83ea820::7f8ce83ea820  e0 72 5a f9                                      .rZ.
  8476 ms  0x1974 SECKEY_CreateECPrivateKey()
  8476 ms  0x1974 cx:0x7f8d036ba0a8
  8477 ms     | 0x1974 EC_ValidatePublicKey()
  8478 ms     | 0x1974 ret:0x0
  8478 ms  0x1974 ret:0x7f8ce83ed820::7f8ce83ed820  10 75 5a f9                                      .uZ.
  8480 ms  0x1974 SECKEY_CreateECPrivateKey()
  8480 ms  0x1974 cx:0x7f8cf9516b28
  8480 ms     | 0x1974 EC_ValidatePublicKey()
  8480 ms     | 0x1974 ret:0x0
  8480 ms  0x1974 ret:0x7f8cf906c020::7f8cf906c020  90 77 5a f9                                      .wZ.
  8480 ms  0x1974 SECKEY_CreateECPrivateKey()
  8480 ms  0x1974 cx:0x7f8cf9516b28
  8481 ms     | 0x1974 EC_ValidatePublicKey()
  8482 ms     | 0x1974 ret:0x0
  8482 ms  0x1974 ret:0x7f8cf906e820::7f8cf906e820  90 7c 32 fa                                      .|2.
  8488 ms  0x1974 SECKEY_CreateECPrivateKey()
  8488 ms  0x1974 cx:0x7f8ce8416e68
  8488 ms     | 0x1974 EC_ValidatePublicKey()
  8488 ms     | 0x1974 ret:0x0
  8488 ms  0x1974 ret:0x7f8cf94d4820::7f8cf94d4820  a0 81 32 fa                                      ..2.
  8488 ms  0x1974 SECKEY_CreateECPrivateKey()
  8488 ms  0x1974 cx:0x7f8ce8416e68
  8489 ms     | 0x1974 EC_ValidatePublicKey()
  8491 ms     | 0x1974 ret:0x0
  8491 ms  0x1974 ret:0x7f8cf94d6820::7f8cf94d6820  a0 86 32 fa                                      ..2.
  8491 ms  0x1974 SECKEY_CreateECPrivateKey()
  8491 ms  0x1974 cx:0x7f8ce8416b28
  8492 ms     | 0x1974 EC_ValidatePublicKey()
  8492 ms     | 0x1974 ret:0x0
  8492 ms  0x1974 ret:0x7f8cf94da020::7f8cf94da020  20 89 32 fa                                       .2.
  8492 ms  0x1974 SECKEY_CreateECPrivateKey()
  8492 ms  0x1974 cx:0x7f8ce8416b28
  8492 ms     | 0x1974 EC_ValidatePublicKey()
  8494 ms     | 0x1974 ret:0x0
  8494 ms  0x1974 ret:0x7f8cf94dc820::7f8cf94dc820  30 8d 32 fa                                      0.2.
  8502 ms  0x1974 SECKEY_CreateECPrivateKey()
  8502 ms  0x1974 cx:0x7f8ce7e12e68
  8502 ms     | 0x1974 EC_ValidatePublicKey()
  8503 ms     | 0x1974 ret:0x0
  8503 ms  0x1974 ret:0x7f8cf94e3020::7f8cf94e3020  80 13 33 fa                                      ..3.
  8503 ms  0x1974 SECKEY_CreateECPrivateKey()
  8503 ms  0x1974 cx:0x7f8ce7e12e68
  8503 ms     | 0x1974 EC_ValidatePublicKey()
  8505 ms     | 0x1974 ret:0x0
  8505 ms  0x1974 ret:0x7f8cf94e5820::7f8cf94e5820  00 16 33 fa                                      ..3.
  8507 ms  0x1974 SECKEY_CreateECPrivateKey()
  8507 ms  0x1974 cx:0x7f8ce7e12cc8
  8508 ms     | 0x1974 EC_ValidatePublicKey()
  8508 ms     | 0x1974 ret:0x0
  8508 ms  0x1974 ret:0x7f8cf94ed820::7f8cf94ed820  90 1c 33 fa                                      ..3.
  8508 ms  0x1974 SECKEY_CreateECPrivateKey()
  8508 ms  0x1974 cx:0x7f8ce7e12cc8
  8509 ms     | 0x1974 EC_ValidatePublicKey()
  8510 ms     | 0x1974 ret:0x0
  8510 ms  0x1974 ret:0x7f8cfa653820::7f8cfa653820  60 1f 33 fa                                      `.3.
  8513 ms  0x1974 SECKEY_CreateECPrivateKey()
  8513 ms  0x1974 cx:0x7f8ce7e12b28
  8514 ms     | 0x1974 EC_ValidatePublicKey()
  8514 ms     | 0x1974 ret:0x0
  8514 ms  0x1974 ret:0x7f8cfae31020::7f8cfae31020  e0 d2 37 fa                                      ..7.
  8514 ms  0x1974 SECKEY_CreateECPrivateKey()
  8514 ms  0x1974 cx:0x7f8ce7e12b28
  8514 ms     | 0x1974 EC_ValidatePublicKey()
  8516 ms     | 0x1974 ret:0x0
  8516 ms  0x1974 ret:0x7f8cfae38020::7f8cfae38020  40 b2 64 fa                                      @.d.
  8526 ms  0x1974 SECKEY_CreateECPrivateKey()
  8526 ms  0x1974 cx:0x7f8ce7e12988
  8526 ms     | 0x1974 EC_ValidatePublicKey()
  8526 ms     | 0x1974 ret:0x0
  8526 ms  0x1974 ret:0x7f8cfe0a2820::7f8cfe0a2820  80 b3 64 fa                                      ..d.
  8527 ms  0x1974 SECKEY_CreateECPrivateKey()
  8527 ms  0x1974 cx:0x7f8ce7e12988
  8527 ms     | 0x1974 EC_ValidatePublicKey()
  8529 ms     | 0x1974 ret:0x0
  8529 ms  0x1974 ret:0x7f8cfe0ad820::7f8cfe0ad820  b0 b5 64 fa                                      ..d.
  8530 ms  0x1974 SECKEY_CreateECPrivateKey()
  8530 ms  0x1974 cx:0x7f8ce7e127e8
  8530 ms     | 0x1974 EC_ValidatePublicKey()
  8530 ms     | 0x1974 ret:0x0
  8530 ms  0x1974 ret:0x7f8cff404020::7f8cff404020  60 ba 64 fa                                      `.d.
  8530 ms  0x1974 SECKEY_CreateECPrivateKey()
  8530 ms  0x1974 cx:0x7f8ce7e127e8
  8531 ms     | 0x1974 EC_ValidatePublicKey()
  8532 ms     | 0x1974 ret:0x0
  8532 ms  0x1974 ret:0x7f8cff409020::7f8cff409020  e0 bc 64 fa                                      ..d.
  8535 ms  0x1974 SECKEY_CreateECPrivateKey()
  8535 ms  0x1974 cx:0x7f8ce7e12648
  8536 ms     | 0x1974 EC_ValidatePublicKey()
  8536 ms     | 0x1974 ret:0x0
  8536 ms  0x1974 ret:0x7f8cff40d820::7f8cff40d820  20 be 64 fa                                       .d.
  8536 ms  0x1974 SECKEY_CreateECPrivateKey()
  8536 ms  0x1974 cx:0x7f8ce7e12648
  8537 ms     | 0x1974 EC_ValidatePublicKey()
  8544 ms     | 0x1974 ret:0x0
  8544 ms  0x1974 ret:0x7f8cff412820::7f8cff412820  20 14 6e fa                                       .n.
  8546 ms  0x1974 PK11_Derive()
  8546 ms  0x1974 basekey:0x7f8ce7dfd100
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dece80
  8546 ms  0x1974 PK11_PubDeriveWithKDF()
  8546 ms  0x1974 seckey:0x7f8ce83ea820
  8546 ms     | 0x1974 EC_ValidatePublicKey()
  8546 ms     | 0x1974 ret:0x0
  8546 ms  0x1974 ret:0x7f8ce7dfd100
  8546 ms  SECKEY_ECParamsToKeySize()
  8546 ms  0x1974 ret:0xff
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7dece80
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dece00
  8546 ms  0x1974 PK11_Derive()
  8546 ms  0x1974 basekey:0x7f8ce7dfd100
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7decf00
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7decf00
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dece80
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7decf00
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dfd100
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7decf00
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dece00
  8546 ms  0x1974 PK11_Derive()
  8546 ms  0x1974 basekey:0x7f8ce7ded380
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7ded280
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7dfd100
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7decf00
  8546 ms  0x1974 PK11_DeriveWithFlags()
  8546 ms  0x1974 basekey:0x7f8ce7dfd100
  8546 ms     | 0x1974 PK11_DeriveWithTemplate()
  8546 ms  0x1974 ret:0x7f8ce7dece00
  8547 ms  0x1974 PK11_DeriveWithFlags()
  8547 ms  0x1974 basekey:0x7f8ce7dfd100
  8547 ms     | 0x1974 PK11_DeriveWithTemplate()
  8547 ms  0x1974 ret:0x7f8ce7dece00
           /* TID 0x19d3 */
  8549 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8549 ms  0x19d3 ret:0x0
  8549 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8549 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  8550 ms  SECKEY_ECParamsToKeySize()
  8550 ms  0x1974 ret:0xff
  8550 ms  0x1974 SECKEY_CreateECPrivateKey()
  8550 ms  0x1974 cx:0x7f8d036e8c88
  8550 ms     | 0x1974 EC_ValidatePublicKey()
  8550 ms     | 0x1974 ret:0x0
  8550 ms  0x1974 ret:0x7f8cff86e820::7f8cff86e820  70 1e 6e fa                                      p.n.
  8550 ms  0x1974 PK11_PubDeriveWithKDF()
  8550 ms  0x1974 seckey:0x7f8cff86e820
  8550 ms     | 0x1974 EC_ValidatePublicKey()
  8550 ms     | 0x1974 ret:0x0
  8551 ms  0x1974 ret:0x7f8ce7dece00
  8551 ms  0x1974 PK11_DeriveWithFlags()
  8551 ms  0x1974 basekey:0x7f8ce7dece00
  8551 ms     | 0x1974 PK11_DeriveWithTemplate()
  8552 ms  0x1974 ret:0x7f8ce7ded380
  8552 ms  0x1974 PK11_Derive()
  8552 ms  0x1974 basekey:0x7f8ce7ded380
  8553 ms     | 0x1974 PK11_DeriveWithTemplate()
  8553 ms  0x1974 ret:0x7f8ce7dec600
  8553 ms  0x1974 SECKEY_DestroyPrivateKey()
  8553 ms  0x1974 privk:0x7f8cff86e820::7f8cff86e820  70 1e 6e fa                                      p.n.
  8553 ms  0x1974 privk:0x7f8cff86e820::7f8cff86e820  e5 e5 e5 e5                                      ....
  8553 ms  0x1974 PK11_Encrypt()
  8553 ms  0x1974 symkey:0x7f8cf9571f80
           /* TID 0x1a14 */
  8562 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8562 ms  0x1a14 ret:0x0
           /* TID 0x1974 */
  8563 ms  SECKEY_ECParamsToKeySize()
  8563 ms  0x1974 ret:0x100
  8563 ms  0x1974 SECKEY_CreateECPrivateKey()
  8563 ms  0x1974 cx:0x7f8cf9516b28
  8563 ms     | 0x1974 EC_ValidatePublicKey()
  8570 ms     | 0x1974 ret:0x0
  8570 ms  0x1974 ret:0x7f8cff873020::7f8cff873020  60 80 87 fa                                      `...
  8570 ms  0x1974 PK11_PubDeriveWithKDF()
  8570 ms  0x1974 seckey:0x7f8cff873020
  8570 ms     | 0x1974 EC_ValidatePublicKey()
  8571 ms     | 0x1974 ret:0x0
  8573 ms  0x1974 ret:0x7f8ce7dece00
  8573 ms  0x1974 PK11_DeriveWithFlags()
  8573 ms  0x1974 basekey:0x7f8ce7dece00
  8573 ms     | 0x1974 PK11_DeriveWithTemplate()
  8573 ms  0x1974 ret:0x7f8ce7dec700
  8573 ms  0x1974 PK11_Derive()
  8573 ms  0x1974 basekey:0x7f8ce7dec700
  8573 ms     | 0x1974 PK11_DeriveWithTemplate()
  8573 ms  0x1974 ret:0x7f8ce7decb80
  8573 ms  0x1974 SECKEY_DestroyPrivateKey()
  8573 ms  0x1974 privk:0x7f8cff873020::7f8cff873020  60 80 87 fa                                      `...
  8573 ms  0x1974 privk:0x7f8cff873020::7f8cff873020  e5 e5 e5 e5                                      ....
  8573 ms  0x1974 PK11_Encrypt()
  8573 ms  0x1974 symkey:0x7f8cf9571b00
           /* TID 0x1a0c */
  8580 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8580 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
  8580 ms  SECKEY_ECParamsToKeySize()
  8580 ms  0x1974 ret:0x100
  8580 ms  0x1974 SECKEY_CreateECPrivateKey()
  8580 ms  0x1974 cx:0x7f8ce8416e68
  8581 ms     | 0x1974 EC_ValidatePublicKey()
  8582 ms     | 0x1974 ret:0x0
  8582 ms  0x1974 ret:0x7f8cffd80820::7f8cffd80820  e0 82 87 fa                                      ....
  8582 ms  0x1974 PK11_PubDeriveWithKDF()
  8582 ms  0x1974 seckey:0x7f8cffd80820
  8582 ms     | 0x1974 EC_ValidatePublicKey()
  8596 ms     | 0x1974 ret:0x0
  8598 ms  0x1974 ret:0x7f8ce7dece00
  8598 ms  0x1974 PK11_DeriveWithFlags()
  8598 ms  0x1974 basekey:0x7f8ce7dece00
  8598 ms     | 0x1974 PK11_DeriveWithTemplate()
  8598 ms  0x1974 ret:0x7f8ce7e3fc80
  8598 ms  0x1974 PK11_Derive()
  8598 ms  0x1974 basekey:0x7f8ce7e3fc80
  8598 ms     | 0x1974 PK11_DeriveWithTemplate()
  8598 ms  0x1974 ret:0x7f8ce7e40080
  8598 ms  0x1974 SECKEY_DestroyPrivateKey()
  8598 ms  0x1974 privk:0x7f8cffd80820::7f8cffd80820  e0 82 87 fa                                      ....
  8598 ms  0x1974 privk:0x7f8cffd80820::7f8cffd80820  e5 e5 e5 e5                                      ....
  8598 ms  0x1974 PK11_Encrypt()
  8598 ms  0x1974 symkey:0x7f8cf9571e00
  8599 ms  0x1974 PK11_Derive()
  8599 ms  0x1974 basekey:0x7f8ce7dece00
  8599 ms     | 0x1974 PK11_DeriveWithTemplate()
  8599 ms  0x1974 ret:0x7f8ce7ded700
  8599 ms  0x1974 PK11_PubDeriveWithKDF()
  8599 ms  0x1974 seckey:0x7f8ce83d9020
  8599 ms     | 0x1974 EC_ValidatePublicKey()
  8599 ms     | 0x1974 ret:0x0
  8599 ms  0x1974 ret:0x7f8ce7dece00
  8599 ms  SECKEY_ECParamsToKeySize()
  8599 ms  0x1974 ret:0xff
  8599 ms  0x1974 PK11_DeriveWithFlags()
  8599 ms  0x1974 basekey:0x7f8ce7ded700
  8599 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded680
  8600 ms  0x1974 PK11_Derive()
  8600 ms  0x1974 basekey:0x7f8ce7dece00
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded800
  8600 ms  0x1974 PK11_DeriveWithFlags()
  8600 ms  0x1974 basekey:0x7f8ce7ded800
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded700
  8600 ms  0x1974 PK11_DeriveWithFlags()
  8600 ms  0x1974 basekey:0x7f8ce7ded800
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7dece00
  8600 ms  0x1974 PK11_DeriveWithFlags()
  8600 ms  0x1974 basekey:0x7f8ce7ded800
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded680
  8600 ms  0x1974 PK11_Derive()
  8600 ms  0x1974 basekey:0x7f8ce7dfd280
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7e40200
  8600 ms  0x1974 PK11_DeriveWithFlags()
  8600 ms  0x1974 basekey:0x7f8ce7dece00
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded800
  8600 ms  0x1974 PK11_DeriveWithFlags()
  8600 ms  0x1974 basekey:0x7f8ce7dece00
  8600 ms     | 0x1974 PK11_DeriveWithTemplate()
  8600 ms  0x1974 ret:0x7f8ce7ded680
  8601 ms  SECKEY_ECParamsToKeySize()
  8601 ms  0x1974 ret:0x100
  8601 ms  SECKEY_ECParamsToBasePointOrderLen()
  8601 ms  0x1974 ret:0x100
  8601 ms  SECKEY_ECParamsToBasePointOrderLen()
  8601 ms  0x1974 ret:0x100
  8601 ms  0x1974 EC_ValidatePublicKey()
  8602 ms  0x1974 ret:0x0
  8604 ms  0x1974 PK11_DeriveWithFlags()
  8604 ms  0x1974 basekey:0x7f8ce7dece00
  8604 ms     | 0x1974 PK11_DeriveWithTemplate()
  8604 ms  0x1974 ret:0x7f8ce7ded680
  8606 ms  0x1974 SSL_AuthCertificateComplete()
  8606 ms  0x1974 fd:0x7f8cfb882700
  8606 ms  0x1974 err:0x0
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7ded280
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8ce7ded680
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7ded280
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8ce7dfd280
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7ded280
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8cf9572380
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7dece80
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8cf9572400
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7dece80
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8cf9572480
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7dfd280
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8cf9572480
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7dfd280
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8cf9572500
  8606 ms     | 0x1974 PK11_DeriveWithFlags()
  8606 ms     | 0x1974 basekey:0x7f8ce7dece80
  8606 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8606 ms     | 0x1974 ret:0x7f8ce7decf00
  8606 ms     | 0x1974 PK11_Encrypt()
  8606 ms     | 0x1974 symkey:0x7f8cf9572400
  8608 ms     | 0x1974 PK11_DeriveWithFlags()
  8608 ms     | 0x1974 basekey:0x7f8ce7ded680
  8608 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8608 ms     | 0x1974 ret:0x7f8ce7decf00
  8608 ms     | 0x1974 PK11_DeriveWithFlags()
  8608 ms     | 0x1974 basekey:0x7f8ce7ded680
  8608 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8608 ms     | 0x1974 ret:0x7f8cf9572500
  8608 ms     | 0x1974 PK11_DeriveWithFlags()
  8608 ms     | 0x1974 basekey:0x7f8ce7ded280
  8608 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8608 ms     | 0x1974 ret:0x7f8cf9572400
  8608 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8608 ms     | 0x1974 privk:0x7f8ce83ed820::7f8ce83ed820  10 75 5a f9                                      .uZ.
  8608 ms     | 0x1974 privk:0x7f8ce83ed820::7f8ce83ed820  e5 e5 e5 e5                                      ....
  8608 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8608 ms     | 0x1974 privk:0x7f8ce83ea820::7f8ce83ea820  e0 72 5a f9                                      .rZ.
  8608 ms     | 0x1974 privk:0x7f8ce83ea820::7f8ce83ea820  e5 e5 e5 e5                                      ....
  8608 ms  0x1974 SSL_AuthCertificateComplete()
  8608 ms  0x1974 fd:0x7f8cfaefad90
  8608 ms  0x1974 err:0x0
  8608 ms  0x1974 SSL_AuthCertificateComplete()
  8608 ms  0x1974 fd:0x7f8cfaefabe0
  8608 ms  0x1974 err:0x0
  8608 ms  0x1974 SSL_AuthCertificateComplete()
  8608 ms  0x1974 fd:0x7f8cfaefa580
  8608 ms  0x1974 err:0x0
  8622 ms  0x1974 PK11_Encrypt()
  8622 ms  0x1974 symkey:0x7f8ce7decf00
  8622 ms  0x1974 PK11_Encrypt()
  8622 ms  0x1974 symkey:0x7f8ce7decf00
  8623 ms  0x1974 SECKEY_CreateECPrivateKey()
  8623 ms  0x1974 cx:0x7f8d217a84a8
  8623 ms     | 0x1974 EC_ValidatePublicKey()
  8623 ms     | 0x1974 ret:0x0
  8623 ms  0x1974 ret:0x7f8ce83ed020::7f8ce83ed020  e0 72 5a f9                                      .rZ.
  8623 ms  0x1974 SECKEY_CreateECPrivateKey()
  8623 ms  0x1974 cx:0x7f8d217a84a8
  8624 ms     | 0x1974 EC_ValidatePublicKey()
  8625 ms     | 0x1974 ret:0x0
  8625 ms  0x1974 ret:0x7f8cffd89020::7f8cffd89020  10 75 5a f9                                      .uZ.
  8626 ms  0x1974 PK11_Encrypt()
  8626 ms  0x1974 symkey:0x7f8cf9571f80
  8626 ms  0x1974 SECKEY_DestroyPrivateKey()
  8626 ms  0x1974 privk:0x7f8cf906e820::7f8cf906e820  90 7c 32 fa                                      .|2.
  8626 ms  0x1974 privk:0x7f8cf906e820::7f8cf906e820  e5 e5 e5 e5                                      ....
  8626 ms  0x1974 SECKEY_DestroyPrivateKey()
  8626 ms  0x1974 privk:0x7f8cf906c020::7f8cf906c020  90 77 5a f9                                      .wZ.
  8626 ms  0x1974 privk:0x7f8cf906c020::7f8cf906c020  e5 e5 e5 e5                                      ....
  8626 ms  0x1974 PK11_Encrypt()
  8626 ms  0x1974 symkey:0x7f8cf9571b00
  8626 ms  0x1974 PK11_Encrypt()
  8626 ms  0x1974 symkey:0x7f8cf9571b00
  8627 ms  0x1974 PK11_Encrypt()
  8627 ms  0x1974 symkey:0x7f8cf9571e00
  8627 ms  0x1974 SECKEY_CreateECPrivateKey()
  8627 ms  0x1974 cx:0x7f8ce8416cc8
  8628 ms     | 0x1974 EC_ValidatePublicKey()
  8628 ms     | 0x1974 ret:0x0
  8628 ms  0x1974 ret:0x7f8cf906c820::7f8cf906c820  90 77 5a f9                                      .wZ.
  8628 ms  0x1974 SECKEY_CreateECPrivateKey()
  8628 ms  0x1974 cx:0x7f8ce8416cc8
  8628 ms     | 0x1974 EC_ValidatePublicKey()
  8630 ms     | 0x1974 ret:0x0
  8630 ms  0x1974 ret:0x7f8cffd8b820::7f8cffd8b820  90 7c 32 fa                                      .|2.
  8630 ms  0x1974 PK11_Derive()
  8630 ms  0x1974 basekey:0x7f8ce7dfd100
  8630 ms     | 0x1974 PK11_DeriveWithTemplate()
  8630 ms  0x1974 ret:0x7f8ce7dece80
  8630 ms  0x1974 PK11_PubDeriveWithKDF()
  8630 ms  0x1974 seckey:0x7f8cf94da020
  8630 ms     | 0x1974 EC_ValidatePublicKey()
  8630 ms     | 0x1974 ret:0x0
  8630 ms  0x1974 ret:0x7f8ce7dfd100
  8630 ms  SECKEY_ECParamsToKeySize()
  8630 ms  0x1974 ret:0xff
  8630 ms  0x1974 PK11_DeriveWithFlags()
  8630 ms  0x1974 basekey:0x7f8ce7dece80
  8630 ms     | 0x1974 PK11_DeriveWithTemplate()
  8630 ms  0x1974 ret:0x7f8ce7ded280
  8630 ms  0x1974 PK11_Derive()
  8630 ms  0x1974 basekey:0x7f8ce7dfd100
  8630 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8cf9572500
  8631 ms  0x1974 PK11_DeriveWithFlags()
  8631 ms  0x1974 basekey:0x7f8cf9572500
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8ce7dece80
  8631 ms  0x1974 PK11_DeriveWithFlags()
  8631 ms  0x1974 basekey:0x7f8cf9572500
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8ce7dfd100
  8631 ms  0x1974 PK11_DeriveWithFlags()
  8631 ms  0x1974 basekey:0x7f8cf9572500
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8ce7ded280
  8631 ms  0x1974 PK11_Derive()
  8631 ms  0x1974 basekey:0x7f8cf9572780
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8cf9572800
  8631 ms  0x1974 PK11_DeriveWithFlags()
  8631 ms  0x1974 basekey:0x7f8ce7dfd100
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8cf9572500
  8631 ms  0x1974 PK11_DeriveWithFlags()
  8631 ms  0x1974 basekey:0x7f8ce7dfd100
  8631 ms     | 0x1974 PK11_DeriveWithTemplate()
  8631 ms  0x1974 ret:0x7f8ce7ded280
  8632 ms  SECKEY_ECParamsToKeySize()
  8632 ms  0x1974 ret:0x100
  8632 ms  SECKEY_ECParamsToBasePointOrderLen()
  8632 ms  0x1974 ret:0x100
  8632 ms  SECKEY_ECParamsToBasePointOrderLen()
  8632 ms  0x1974 ret:0x100
  8632 ms  0x1974 EC_ValidatePublicKey()
  8634 ms  0x1974 ret:0x0
  8645 ms  0x1974 PK11_DeriveWithFlags()
  8645 ms  0x1974 basekey:0x7f8ce7dfd100
  8645 ms     | 0x1974 PK11_DeriveWithTemplate()
  8645 ms  0x1974 ret:0x7f8ce7ded280
  8645 ms  0x1974 PK11_Derive()
  8645 ms  0x1974 basekey:0x7f8ce7ded280
  8645 ms     | 0x1974 PK11_DeriveWithTemplate()
  8645 ms  0x1974 ret:0x7f8cf9572780
  8645 ms  0x1974 PK11_PubDeriveWithKDF()
  8645 ms  0x1974 seckey:0x7f8cf94e3020
  8645 ms     | 0x1974 EC_ValidatePublicKey()
  8645 ms     | 0x1974 ret:0x0
  8645 ms  0x1974 ret:0x7f8ce7ded280
  8645 ms  SECKEY_ECParamsToKeySize()
  8645 ms  0x1974 ret:0xff
  8645 ms  0x1974 PK11_DeriveWithFlags()
  8645 ms  0x1974 basekey:0x7f8cf9572780
  8645 ms     | 0x1974 PK11_DeriveWithTemplate()
  8645 ms  0x1974 ret:0x7f8cf9572680
  8645 ms  0x1974 PK11_Derive()
  8645 ms  0x1974 basekey:0x7f8ce7ded280
  8645 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572d00
  8646 ms  0x1974 PK11_DeriveWithFlags()
  8646 ms  0x1974 basekey:0x7f8cf9572d00
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572780
  8646 ms  0x1974 PK11_DeriveWithFlags()
  8646 ms  0x1974 basekey:0x7f8cf9572d00
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8ce7ded280
  8646 ms  0x1974 PK11_DeriveWithFlags()
  8646 ms  0x1974 basekey:0x7f8cf9572d00
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572680
  8646 ms  0x1974 PK11_Derive()
  8646 ms  0x1974 basekey:0x7f8cf9572d80
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572e00
  8646 ms  0x1974 PK11_DeriveWithFlags()
  8646 ms  0x1974 basekey:0x7f8ce7ded280
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572d00
  8646 ms  0x1974 PK11_DeriveWithFlags()
  8646 ms  0x1974 basekey:0x7f8ce7ded280
  8646 ms     | 0x1974 PK11_DeriveWithTemplate()
  8646 ms  0x1974 ret:0x7f8cf9572680
  8647 ms  SECKEY_ECParamsToKeySize()
  8647 ms  0x1974 ret:0x100
  8647 ms  SECKEY_ECParamsToBasePointOrderLen()
  8647 ms  0x1974 ret:0x100
  8647 ms  SECKEY_ECParamsToBasePointOrderLen()
  8647 ms  0x1974 ret:0x100
  8647 ms  0x1974 EC_ValidatePublicKey()
  8648 ms  0x1974 ret:0x0
  8650 ms  0x1974 PK11_DeriveWithFlags()
  8650 ms  0x1974 basekey:0x7f8ce7ded280
  8650 ms     | 0x1974 PK11_DeriveWithTemplate()
  8650 ms  0x1974 ret:0x7f8cf9572680
  8650 ms  0x1974 PK11_Derive()
  8650 ms  0x1974 basekey:0x7f8cf9572680
  8650 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf9572d80
  8651 ms  0x1974 PK11_PubDeriveWithKDF()
  8651 ms  0x1974 seckey:0x7f8cf94ed820
  8651 ms     | 0x1974 EC_ValidatePublicKey()
  8651 ms     | 0x1974 ret:0x0
  8651 ms  0x1974 ret:0x7f8cf9572680
  8651 ms  SECKEY_ECParamsToKeySize()
  8651 ms  0x1974 ret:0xff
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf9572d80
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a100
  8651 ms  0x1974 PK11_Derive()
  8651 ms  0x1974 basekey:0x7f8cf9572680
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a180
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf958a180
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf9572d80
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf958a180
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf9572680
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf958a180
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a100
  8651 ms  0x1974 PK11_Derive()
  8651 ms  0x1974 basekey:0x7f8cf958a200
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a280
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf9572680
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a180
  8651 ms  0x1974 PK11_DeriveWithFlags()
  8651 ms  0x1974 basekey:0x7f8cf9572680
  8651 ms     | 0x1974 PK11_DeriveWithTemplate()
  8651 ms  0x1974 ret:0x7f8cf958a100
  8658 ms  SECKEY_ECParamsToKeySize()
  8658 ms  0x1974 ret:0x100
  8658 ms  SECKEY_ECParamsToBasePointOrderLen()
  8658 ms  0x1974 ret:0x100
  8658 ms  SECKEY_ECParamsToBasePointOrderLen()
  8658 ms  0x1974 ret:0x100
  8658 ms  0x1974 EC_ValidatePublicKey()
  8659 ms  0x1974 ret:0x0
  8661 ms  0x1974 PK11_DeriveWithFlags()
  8661 ms  0x1974 basekey:0x7f8cf9572680
  8661 ms     | 0x1974 PK11_DeriveWithTemplate()
  8661 ms  0x1974 ret:0x7f8cf958a100
  8661 ms  0x1974 PK11_Derive()
  8661 ms  0x1974 basekey:0x7f8cf958a100
  8661 ms     | 0x1974 PK11_DeriveWithTemplate()
  8661 ms  0x1974 ret:0x7f8cf958a200
  8661 ms  0x1974 PK11_PubDeriveWithKDF()
  8661 ms  0x1974 seckey:0x7f8cfae31020
  8661 ms     | 0x1974 EC_ValidatePublicKey()
  8661 ms     | 0x1974 ret:0x0
  8662 ms  0x1974 ret:0x7f8cf958a100
  8662 ms  SECKEY_ECParamsToKeySize()
  8662 ms  0x1974 ret:0xff
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a200
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a300
  8662 ms  0x1974 PK11_Derive()
  8662 ms  0x1974 basekey:0x7f8cf958a100
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a380
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a380
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a200
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a380
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a100
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a380
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a300
  8662 ms  0x1974 PK11_Derive()
  8662 ms  0x1974 basekey:0x7f8cf958a400
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a480
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a100
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a380
  8662 ms  0x1974 PK11_DeriveWithFlags()
  8662 ms  0x1974 basekey:0x7f8cf958a100
  8662 ms     | 0x1974 PK11_DeriveWithTemplate()
  8662 ms  0x1974 ret:0x7f8cf958a300
  8662 ms  SECKEY_ECParamsToKeySize()
  8662 ms  0x1974 ret:0x100
  8662 ms  SECKEY_ECParamsToBasePointOrderLen()
  8662 ms  0x1974 ret:0x100
  8662 ms  SECKEY_ECParamsToBasePointOrderLen()
  8662 ms  0x1974 ret:0x100
  8662 ms  0x1974 EC_ValidatePublicKey()
  8664 ms  0x1974 ret:0x0
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a100
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a300
  8670 ms  0x1974 PK11_Derive()
  8670 ms  0x1974 basekey:0x7f8cf958a300
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a400
  8670 ms  0x1974 PK11_PubDeriveWithKDF()
  8670 ms  0x1974 seckey:0x7f8cfe0a2820
  8670 ms     | 0x1974 EC_ValidatePublicKey()
  8670 ms     | 0x1974 ret:0x0
  8670 ms  0x1974 ret:0x7f8cf958a300
  8670 ms  SECKEY_ECParamsToKeySize()
  8670 ms  0x1974 ret:0xff
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a400
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a700
  8670 ms  0x1974 PK11_Derive()
  8670 ms  0x1974 basekey:0x7f8cf958a300
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a780
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a780
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a400
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a780
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a300
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a780
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a700
  8670 ms  0x1974 PK11_Derive()
  8670 ms  0x1974 basekey:0x7f8cf958a800
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a880
  8670 ms  0x1974 PK11_DeriveWithFlags()
  8670 ms  0x1974 basekey:0x7f8cf958a300
  8670 ms     | 0x1974 PK11_DeriveWithTemplate()
  8670 ms  0x1974 ret:0x7f8cf958a780
  8671 ms  0x1974 PK11_DeriveWithFlags()
  8671 ms  0x1974 basekey:0x7f8cf958a300
  8671 ms     | 0x1974 PK11_DeriveWithTemplate()
  8671 ms  0x1974 ret:0x7f8cf958a700
  8671 ms  SECKEY_ECParamsToKeySize()
  8671 ms  0x1974 ret:0x100
  8671 ms  SECKEY_ECParamsToBasePointOrderLen()
  8671 ms  0x1974 ret:0x100
  8671 ms  SECKEY_ECParamsToBasePointOrderLen()
  8671 ms  0x1974 ret:0x100
  8671 ms  0x1974 EC_ValidatePublicKey()
  8672 ms  0x1974 ret:0x0
  8685 ms  0x1974 PK11_DeriveWithFlags()
  8685 ms  0x1974 basekey:0x7f8cf958a300
  8690 ms     | 0x1974 PK11_DeriveWithTemplate()
  8690 ms  0x1974 ret:0x7f8cf958a700
  8690 ms  0x1974 PK11_Derive()
  8690 ms  0x1974 basekey:0x7f8cf958a700
  8690 ms     | 0x1974 PK11_DeriveWithTemplate()
  8690 ms  0x1974 ret:0x7f8cf958a800
  8690 ms  0x1974 PK11_PubDeriveWithKDF()
  8690 ms  0x1974 seckey:0x7f8cff404020
  8690 ms     | 0x1974 EC_ValidatePublicKey()
  8690 ms     | 0x1974 ret:0x0
  8691 ms  0x1974 ret:0x7f8cf958a700
  8691 ms  SECKEY_ECParamsToKeySize()
  8691 ms  0x1974 ret:0xff
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a800
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a500
  8691 ms  0x1974 PK11_Derive()
  8691 ms  0x1974 basekey:0x7f8cf958a700
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a980
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a980
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a800
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a980
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a700
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a980
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a500
  8691 ms  0x1974 PK11_Derive()
  8691 ms  0x1974 basekey:0x7f8cf958aa00
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958aa80
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a700
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a980
  8691 ms  0x1974 PK11_DeriveWithFlags()
  8691 ms  0x1974 basekey:0x7f8cf958a700
  8691 ms     | 0x1974 PK11_DeriveWithTemplate()
  8691 ms  0x1974 ret:0x7f8cf958a500
  8691 ms  SECKEY_ECParamsToKeySize()
  8691 ms  0x1974 ret:0x100
  8691 ms  SECKEY_ECParamsToBasePointOrderLen()
  8691 ms  0x1974 ret:0x100
  8691 ms  SECKEY_ECParamsToBasePointOrderLen()
  8691 ms  0x1974 ret:0x100
  8691 ms  0x1974 EC_ValidatePublicKey()
  8693 ms  0x1974 ret:0x0
  8695 ms  0x1974 PK11_DeriveWithFlags()
  8695 ms  0x1974 basekey:0x7f8cf958a700
  8695 ms     | 0x1974 PK11_DeriveWithTemplate()
  8695 ms  0x1974 ret:0x7f8cf958a500
  8695 ms  SECKEY_ECParamsToKeySize()
  8695 ms  0x1974 ret:0x100
  8695 ms  0x1974 SECKEY_CreateECPrivateKey()
  8695 ms  0x1974 cx:0x7f8ce7e12648
  8696 ms     | 0x1974 EC_ValidatePublicKey()
  8697 ms     | 0x1974 ret:0x0
  8697 ms  0x1974 ret:0x7f8cffdb2820::7f8cffdb2820  10 e5 ef fa                                      ....
  8708 ms  0x1974 PK11_PubDeriveWithKDF()
  8708 ms  0x1974 seckey:0x7f8cffdb2820
  8708 ms     | 0x1974 EC_ValidatePublicKey()
  8709 ms     | 0x1974 ret:0x0
  8710 ms  0x1974 ret:0x7f8cf958a500
  8711 ms  0x1974 PK11_DeriveWithFlags()
  8711 ms  0x1974 basekey:0x7f8cf958a500
  8711 ms     | 0x1974 PK11_DeriveWithTemplate()
  8711 ms  0x1974 ret:0x7f8cf958aa00
  8711 ms  0x1974 PK11_Derive()
  8711 ms  0x1974 basekey:0x7f8cf958aa00
  8711 ms     | 0x1974 PK11_DeriveWithTemplate()
  8711 ms  0x1974 ret:0x7f8cf958a900
  8711 ms  0x1974 SECKEY_DestroyPrivateKey()
  8711 ms  0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  10 e5 ef fa                                      ....
  8711 ms  0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  e5 e5 e5 e5                                      ....
  8711 ms  0x1974 PK11_Encrypt()
  8711 ms  0x1974 symkey:0x7f8cf958af00
  8711 ms  0x1974 SECKEY_CreateECPrivateKey()
  8711 ms  0x1974 cx:0x7f8ce7e124a8
  8712 ms     | 0x1974 EC_ValidatePublicKey()
  8712 ms     | 0x1974 ret:0x0
  8712 ms  0x1974 ret:0x7f8cffdb2820::7f8cffdb2820  20 e4 ef fa                                       ...
  8712 ms  0x1974 SECKEY_CreateECPrivateKey()
  8712 ms  0x1974 cx:0x7f8ce7e124a8
  8712 ms     | 0x1974 EC_ValidatePublicKey()
  8714 ms     | 0x1974 ret:0x0
  8714 ms  0x1974 ret:0x7f8cffdb4820::7f8cffdb4820  50 e6 ef fa                                      P...
  8715 ms  0x1974 SECKEY_CreateECPrivateKey()
  8715 ms  0x1974 cx:0x7f8ce7e12308
  8715 ms     | 0x1974 EC_ValidatePublicKey()
  8715 ms     | 0x1974 ret:0x0
  8715 ms  0x1974 ret:0x7f8cffdbf020::7f8cffdbf020  c0 ee ef fa                                      ....
  8715 ms  0x1974 SECKEY_CreateECPrivateKey()
  8715 ms  0x1974 cx:0x7f8ce7e12308
  8716 ms     | 0x1974 EC_ValidatePublicKey()
  8717 ms     | 0x1974 ret:0x0
  8717 ms  0x1974 ret:0x7f8cffdc1020::7f8cffdc1020  40 22 3a fb                                      @":.
           /* TID 0x19cd */
  8721 ms  0x19cd PR_Close()
  8721 ms  0x19cd fd:0x7f8cff8e29a0
           /* TID 0x1974 */
  8721 ms  0x1974 PK11_DeriveWithFlags()
  8721 ms  0x1974 basekey:0x7f8cf9572400
  8721 ms     | 0x1974 PK11_DeriveWithTemplate()
  8721 ms  0x1974 ret:0x7f8cf958a500
  8721 ms  0x1974 PK11_DeriveWithFlags()
  8721 ms  0x1974 basekey:0x7f8cf9572400
  8721 ms     | 0x1974 PK11_DeriveWithTemplate()
  8721 ms  0x1974 ret:0x7f8cf958a500
           /* TID 0x19cd */
  8722 ms  0x19cd PR_Close()
  8722 ms  0x19cd fd:0x7f8cff8e29a0
           /* TID 0x1974 */
  8724 ms  0x1974 PK11_Encrypt()
  8724 ms  0x1974 symkey:0x7f8ce7decf00
           /* TID 0x197c */
  8728 ms  0x197c PR_Close()
  8728 ms  0x197c fd:0x7f8cf9595b50
           /* TID 0x1974 */
  8729 ms  0x1974 PK11_Encrypt()
  8729 ms  0x1974 symkey:0x7f8cf9571b00
           /* TID 0x197c */
  8731 ms  0x197c PR_Close()
  8731 ms  0x197c fd:0x7f8cffa4a070
           /* TID 0x1974 */
  8732 ms  0x1974 SSL_ImportFD()
  8732 ms  0x1974 ret:0x7f8cffa4a070
  8732 ms  0x1974 SSL_AuthCertificateHook()
  8732 ms  0x1974 fd:0x7f8cffa4a070
  8732 ms  0x1974 ret:0x0
  8741 ms  0x1974 PR_Connect()
  8741 ms  0x1974 fd:0x7f8cffa4a070
           /* TID 0x197c */
  8742 ms  0x197c PR_Close()
  8742 ms  0x197c fd:0x7f8cfa646190
           /* TID 0x19d3 */
  8742 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8742 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
  8743 ms  0x1974 PK11_Encrypt()
  8743 ms  0x1974 symkey:0x7f8ce7decf00
  8744 ms  SECKEY_ECParamsToKeySize()
  8744 ms  0x1974 ret:0x100
  8744 ms  0x1974 SECKEY_CreateECPrivateKey()
  8744 ms  0x1974 cx:0x7f8d217a84a8
  8744 ms     | 0x1974 EC_ValidatePublicKey()
  8746 ms     | 0x1974 ret:0x0
  8746 ms  0x1974 ret:0x7f8cffdc7020::7f8cffdc7020  90 97 3e fb                                      ..>.
  8746 ms  0x1974 PK11_PubDeriveWithKDF()
  8746 ms  0x1974 seckey:0x7f8cffdc7020
  8746 ms     | 0x1974 EC_ValidatePublicKey()
  8747 ms     | 0x1974 ret:0x0
  8753 ms  0x1974 ret:0x7f8cf958a500
  8753 ms  0x1974 PK11_DeriveWithFlags()
  8753 ms  0x1974 basekey:0x7f8cf958a500
  8753 ms     | 0x1974 PK11_DeriveWithTemplate()
  8753 ms  0x1974 ret:0x7f8cf958b380
  8753 ms  0x1974 PK11_Derive()
  8753 ms  0x1974 basekey:0x7f8cf958b380
  8753 ms     | 0x1974 PK11_DeriveWithTemplate()
  8753 ms  0x1974 ret:0x7f8cf9596200
  8753 ms  0x1974 SECKEY_DestroyPrivateKey()
  8753 ms  0x1974 privk:0x7f8cffdc7020::7f8cffdc7020  90 97 3e fb                                      ..>.
  8753 ms  0x1974 privk:0x7f8cffdc7020::7f8cffdc7020  e5 e5 e5 e5                                      ....
  8753 ms  0x1974 PK11_Encrypt()
  8753 ms  0x1974 symkey:0x7f8cf9596500
  8754 ms  0x1974 SECKEY_DestroyPrivateKey()
  8754 ms  0x1974 privk:0x7f8ce83d4020::7f8ce83d4020  90 9c 58 f9                                      ..X.
  8754 ms  0x1974 privk:0x7f8ce83d4020::7f8ce83d4020  e5 e5 e5 e5                                      ....
  8754 ms  0x1974 SECKEY_DestroyPrivateKey()
  8754 ms  0x1974 privk:0x7f8ce82b0820::7f8ce82b0820  70 99 58 f9                                      p.X.
  8754 ms  0x1974 privk:0x7f8ce82b0820::7f8ce82b0820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  8755 ms  0x197c PR_Close()
  8755 ms  0x197c fd:0x7f8cfa8730d0
           /* TID 0x1974 */
  8755 ms  0x1974 SECKEY_DestroyPrivateKey()
  8755 ms  0x1974 privk:0x7f8cf94d6820::7f8cf94d6820  a0 86 32 fa                                      ..2.
  8755 ms  0x1974 privk:0x7f8cf94d6820::7f8cf94d6820  e5 e5 e5 e5                                      ....
  8755 ms  0x1974 SECKEY_DestroyPrivateKey()
  8755 ms  0x1974 privk:0x7f8cf94d4820::7f8cf94d4820  a0 81 32 fa                                      ..2.
  8755 ms  0x1974 privk:0x7f8cf94d4820::7f8cf94d4820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  8756 ms  0x197c PR_Close()
  8756 ms  0x197c fd:0x7f8cf9725910
           /* TID 0x1974 */
  8756 ms  SECKEY_ECParamsToKeySize()
  8756 ms  0x1974 ret:0x100
  8756 ms  0x1974 SECKEY_CreateECPrivateKey()
  8756 ms  0x1974 cx:0x7f8ce8416cc8
  8757 ms     | 0x1974 EC_ValidatePublicKey()
  8759 ms     | 0x1974 ret:0x0
  8759 ms  0x1974 ret:0x7f8cf94d5820::7f8cf94d5820  00 9b 58 f9                                      ..X.
  8759 ms  0x1974 PK11_PubDeriveWithKDF()
  8759 ms  0x1974 seckey:0x7f8cf94d5820
  8759 ms     | 0x1974 EC_ValidatePublicKey()
  8760 ms     | 0x1974 ret:0x0
  8762 ms  0x1974 ret:0x7f8cf958a500
  8762 ms  0x1974 PK11_DeriveWithFlags()
  8762 ms  0x1974 basekey:0x7f8cf958a500
  8762 ms     | 0x1974 PK11_DeriveWithTemplate()
  8762 ms  0x1974 ret:0x7f8cf9596880
  8762 ms  0x1974 PK11_Derive()
  8762 ms  0x1974 basekey:0x7f8cf9596880
  8762 ms     | 0x1974 PK11_DeriveWithTemplate()
  8762 ms  0x1974 ret:0x7f8cf9596980
  8762 ms  0x1974 SECKEY_DestroyPrivateKey()
  8762 ms  0x1974 privk:0x7f8cf94d5820::7f8cf94d5820  00 9b 58 f9                                      ..X.
  8762 ms  0x1974 privk:0x7f8cf94d5820::7f8cf94d5820  e5 e5 e5 e5                                      ....
  8762 ms  0x1974 PK11_Encrypt()
  8762 ms  0x1974 symkey:0x7f8cf9596b00
  8776 ms  0x1974 SSL_AuthCertificateComplete()
  8776 ms  0x1974 fd:0x7f8cfc63e880
  8776 ms  0x1974 err:0x0
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7e40200
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf958a500
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7e40200
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9572300
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7e40200
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597180
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7ded700
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597480
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7ded700
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597580
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8cf9572300
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597580
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8cf9572300
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597600
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7ded700
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8ce7ded800
  8776 ms     | 0x1974 PK11_Encrypt()
  8776 ms     | 0x1974 symkey:0x7f8cf9597480
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8cf958a500
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8ce7ded800
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8cf958a500
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597600
  8776 ms     | 0x1974 PK11_DeriveWithFlags()
  8776 ms     | 0x1974 basekey:0x7f8ce7e40200
  8776 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8776 ms     | 0x1974 ret:0x7f8cf9597480
  8777 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8777 ms     | 0x1974 privk:0x7f8ce83dd020::7f8ce83dd020  40 72 5a f9                                      @rZ.
  8777 ms     | 0x1974 privk:0x7f8ce83dd020::7f8ce83dd020  e5 e5 e5 e5                                      ....
  8777 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8777 ms     | 0x1974 privk:0x7f8ce83d9020::7f8ce83d9020  60 70 5a f9                                      `pZ.
  8777 ms     | 0x1974 privk:0x7f8ce83d9020::7f8ce83d9020  e5 e5 e5 e5                                      ....
  8777 ms  SECKEY_ECParamsToKeySize()
  8777 ms  0x1974 ret:0x100
  8777 ms  0x1974 SECKEY_CreateECPrivateKey()
  8777 ms  0x1974 cx:0x7f8ce7e124a8
  8778 ms     | 0x1974 EC_ValidatePublicKey()
  8780 ms     | 0x1974 ret:0x0
  8780 ms  0x1974 ret:0x7f8ce83dc820::7f8ce83dc820  90 9c 58 f9                                      ..X.
  8780 ms  0x1974 PK11_PubDeriveWithKDF()
  8780 ms  0x1974 seckey:0x7f8ce83dc820
  8780 ms     | 0x1974 EC_ValidatePublicKey()
  8781 ms     | 0x1974 ret:0x0
  8783 ms  0x1974 ret:0x7f8ce7dece00
  8783 ms  0x1974 PK11_DeriveWithFlags()
  8783 ms  0x1974 basekey:0x7f8ce7dece00
  8783 ms     | 0x1974 PK11_DeriveWithTemplate()
  8783 ms  0x1974 ret:0x7f8ce7ded700
  8783 ms  0x1974 PK11_Derive()
  8783 ms  0x1974 basekey:0x7f8ce7ded700
  8783 ms     | 0x1974 PK11_DeriveWithTemplate()
  8783 ms  0x1974 ret:0x7f8ce7e40200
  8783 ms  0x1974 SECKEY_DestroyPrivateKey()
  8783 ms  0x1974 privk:0x7f8ce83dc820::7f8ce83dc820  90 9c 58 f9                                      ..X.
  8783 ms  0x1974 privk:0x7f8ce83dc820::7f8ce83dc820  e5 e5 e5 e5                                      ....
  8783 ms  0x1974 PK11_Encrypt()
  8783 ms  0x1974 symkey:0x7f8cf95d6a80
  8784 ms  SECKEY_ECParamsToKeySize()
  8784 ms  0x1974 ret:0xff
  8784 ms  0x1974 SECKEY_CreateECPrivateKey()
  8784 ms  0x1974 cx:0x7f8ce7e12308
  8785 ms     | 0x1974 EC_ValidatePublicKey()
  8785 ms     | 0x1974 ret:0x0
  8785 ms  0x1974 ret:0x7f8cffdc3820::7f8cffdc3820  b0 9f 58 f9                                      ..X.
  8785 ms  0x1974 PK11_PubDeriveWithKDF()
  8785 ms  0x1974 seckey:0x7f8cffdc3820
  8785 ms     | 0x1974 EC_ValidatePublicKey()
  8785 ms     | 0x1974 ret:0x0
  8785 ms  0x1974 ret:0x7f8ce7dece00
  8785 ms  0x1974 PK11_DeriveWithFlags()
  8785 ms  0x1974 basekey:0x7f8ce7dece00
  8785 ms     | 0x1974 PK11_DeriveWithTemplate()
  8785 ms  0x1974 ret:0x7f8cf9597600
  8785 ms  0x1974 PK11_Derive()
  8785 ms  0x1974 basekey:0x7f8cf9597600
  8785 ms     | 0x1974 PK11_DeriveWithTemplate()
  8785 ms  0x1974 ret:0x7f8cfa3a4480
  8785 ms  0x1974 SECKEY_DestroyPrivateKey()
  8785 ms  0x1974 privk:0x7f8cffdc3820::7f8cffdc3820  b0 9f 58 f9                                      ..X.
  8786 ms  0x1974 privk:0x7f8cffdc3820::7f8cffdc3820  e5 e5 e5 e5                                      ....
  8786 ms  0x1974 PK11_Encrypt()
  8786 ms  0x1974 symkey:0x7f8cfa3a4780
  8799 ms  0x1974 PK11_Encrypt()
  8799 ms  0x1974 symkey:0x7f8ce7ded800
  8799 ms  0x1974 PK11_Encrypt()
  8799 ms  0x1974 symkey:0x7f8ce7ded800
  8800 ms  0x1974 SECKEY_CreateECPrivateKey()
  8800 ms  0x1974 cx:0x7f8d036ba588
  8800 ms     | 0x1974 EC_ValidatePublicKey()
  8800 ms     | 0x1974 ret:0x0
  8800 ms  0x1974 ret:0x7f8cffdc6820::7f8cffdc6820  60 9f 58 f9                                      `.X.
  8801 ms  0x1974 SECKEY_CreateECPrivateKey()
  8801 ms  0x1974 cx:0x7f8d036ba588
  8801 ms     | 0x1974 EC_ValidatePublicKey()
  8802 ms     | 0x1974 ret:0x0
  8802 ms  0x1974 ret:0x7f8cffdca020::7f8cffdca020  a0 71 5a f9                                      .qZ.
  8813 ms  0x1974 PK11_Encrypt()
  8813 ms  0x1974 symkey:0x7f8ce7ded800
  8857 ms  0x1974 PK11_Derive()
  8857 ms  0x1974 basekey:0x7f8ce7dece00
  8857 ms     | 0x1974 PK11_DeriveWithTemplate()
  8857 ms  0x1974 ret:0x7f8cfa3a5c80
  8857 ms  0x1974 PK11_PubDeriveWithKDF()
  8857 ms  0x1974 seckey:0x7f8cffdc6820
  8857 ms     | 0x1974 EC_ValidatePublicKey()
  8857 ms     | 0x1974 ret:0x0
  8858 ms  0x1974 ret:0x7f8ce7dece00
  8858 ms  SECKEY_ECParamsToKeySize()
  8858 ms  0x1974 ret:0xff
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8cfa3a5c80
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5d80
  8858 ms  0x1974 PK11_Derive()
  8858 ms  0x1974 basekey:0x7f8ce7dece00
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5e80
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8cfa3a5e80
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5c80
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8cfa3a5e80
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8ce7dece00
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8cfa3a5e80
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5d80
  8858 ms  0x1974 PK11_Derive()
  8858 ms  0x1974 basekey:0x7f8cfa3a5f00
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5f80
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8ce7dece00
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5e80
  8858 ms  0x1974 PK11_DeriveWithFlags()
  8858 ms  0x1974 basekey:0x7f8ce7dece00
  8858 ms     | 0x1974 PK11_DeriveWithTemplate()
  8858 ms  0x1974 ret:0x7f8cfa3a5d80
  8859 ms  0x1974 PK11_DeriveWithFlags()
  8859 ms  0x1974 basekey:0x7f8ce7dece00
  8859 ms     | 0x1974 PK11_DeriveWithTemplate()
  8859 ms  0x1974 ret:0x7f8cfa3a5d80
           /* TID 0x197c */
  8866 ms  0x197c PR_Close()
  8866 ms  0x197c fd:0x7f8cfab7a070
           /* TID 0x1a14 */
  8866 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8866 ms  0x1a14 ret:0x0
           /* TID 0x1974 */
  8866 ms  0x1974 SSL_AuthCertificateComplete()
  8866 ms  0x1974 fd:0x7f8cfaefa250
  8866 ms  0x1974 err:0x0
  8866 ms     | 0x1974 PK11_DeriveWithFlags()
  8866 ms     | 0x1974 basekey:0x7f8cf9572800
  8866 ms     |    | 0x1974 PK11_DeriveWithTemplate()
           /* TID 0x1a0c */
  8867 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1a18 */
  8867 ms  0x1a18 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1a0c */
  8868 ms  0x1a0c ret:0x0
           /* TID 0x1a18 */
  8869 ms  0x1a18 ret:0x0
  8869 ms  0x1a18 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8869 ms  0x1a18 ret:0x0
  8870 ms  0x1a18 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8870 ms  0x1a18 ret:0x0
           /* TID 0x1974 */
  8871 ms     | 0x1974 ret:0x7f8cfa3a5d80
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cf9572800
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cfa3a5f00
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cf9572800
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cf958a600
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8ce7dece80
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cf958a680
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8ce7dece80
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cfa3cdf80
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cfa3a5f00
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cfa3cdf80
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cfa3a5f00
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cfa3ce800
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8ce7dece80
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cf9572500
  8871 ms     | 0x1974 PK11_Encrypt()
  8871 ms     | 0x1974 symkey:0x7f8cf958a680
           /* TID 0x197c */
  8871 ms  0x197c PR_Close()
  8871 ms  0x197c fd:0x7f8cff726790
  8871 ms  0x197c PR_Close()
  8871 ms  0x197c fd:0x7f8cffa4abe0
           /* TID 0x1974 */
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cfa3a5d80
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8871 ms     | 0x1974 ret:0x7f8cf9572500
  8871 ms     | 0x1974 PK11_DeriveWithFlags()
  8871 ms     | 0x1974 basekey:0x7f8cfa3a5d80
  8871 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8cfa3ce800
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf9572800
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8cf958a680
  8872 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8872 ms     | 0x1974 privk:0x7f8cf94dc820::7f8cf94dc820  30 8d 32 fa                                      0.2.
  8872 ms     | 0x1974 privk:0x7f8cf94dc820::7f8cf94dc820  e5 e5 e5 e5                                      ....
  8872 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8872 ms     | 0x1974 privk:0x7f8cf94da020::7f8cf94da020  20 89 32 fa                                       .2.
  8872 ms     | 0x1974 privk:0x7f8cf94da020::7f8cf94da020  e5 e5 e5 e5                                      ....
  8872 ms  0x1974 PK11_Encrypt()
  8872 ms  0x1974 symkey:0x7f8cf9572500
  8872 ms  0x1974 PK11_Encrypt()
  8872 ms  0x1974 symkey:0x7f8cf9572500
  8872 ms  0x1974 SSL_AuthCertificateComplete()
  8872 ms  0x1974 fd:0x7f8cfabfda60
  8872 ms  0x1974 err:0x0
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf958a880
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8ce7dfd100
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf958a880
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8ce7dece80
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf958a880
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8cf9572800
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf958a400
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8872 ms     | 0x1974 ret:0x7f8cfa3ce800
  8872 ms     | 0x1974 PK11_DeriveWithFlags()
  8872 ms     | 0x1974 basekey:0x7f8cf958a400
  8872 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8873 ms     | 0x1974 ret:0x7f8cfa3ce900
  8873 ms     | 0x1974 PK11_DeriveWithFlags()
  8873 ms     | 0x1974 basekey:0x7f8ce7dece80
  8873 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8873 ms     | 0x1974 ret:0x7f8cfa3ce900
  8873 ms     | 0x1974 PK11_DeriveWithFlags()
  8873 ms     | 0x1974 basekey:0x7f8ce7dece80
  8873 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8873 ms     | 0x1974 ret:0x7f8cfa3cea80
  8873 ms     | 0x1974 PK11_DeriveWithFlags()
  8873 ms     | 0x1974 basekey:0x7f8cf958a400
  8873 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8873 ms     | 0x1974 ret:0x7f8cf958a780
  8873 ms     | 0x1974 PK11_Encrypt()
  8873 ms     | 0x1974 symkey:0x7f8cfa3ce800
  8874 ms     | 0x1974 PK11_DeriveWithFlags()
  8874 ms     | 0x1974 basekey:0x7f8ce7dfd100
  8874 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8874 ms     | 0x1974 ret:0x7f8cf958a780
  8874 ms     | 0x1974 PK11_DeriveWithFlags()
  8874 ms     | 0x1974 basekey:0x7f8ce7dfd100
  8874 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8874 ms     | 0x1974 ret:0x7f8cfa3cea80
  8874 ms     | 0x1974 PK11_DeriveWithFlags()
  8874 ms     | 0x1974 basekey:0x7f8cf958a880
  8874 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8874 ms     | 0x1974 ret:0x7f8cfa3ce800
  8874 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8874 ms     | 0x1974 privk:0x7f8cfe0ad820::7f8cfe0ad820  b0 b5 64 fa                                      ..d.
  8874 ms     | 0x1974 privk:0x7f8cfe0ad820::7f8cfe0ad820  e5 e5 e5 e5                                      ....
  8874 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8874 ms     | 0x1974 privk:0x7f8cfe0a2820::7f8cfe0a2820  80 b3 64 fa                                      ..d.
  8874 ms     | 0x1974 privk:0x7f8cfe0a2820::7f8cfe0a2820  e5 e5 e5 e5                                      ....
  8875 ms  0x1974 SSL_AuthCertificateComplete()
  8875 ms  0x1974 fd:0x7f8cfabfd8e0
  8875 ms  0x1974 err:0x0
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958aa80
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf958a300
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958aa80
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf958a400
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958aa80
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf958a880
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958a800
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cfa3cea80
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958a800
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf9572b80
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958a400
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf9572b80
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958a400
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cfa649100
  8875 ms     | 0x1974 PK11_DeriveWithFlags()
  8875 ms     | 0x1974 basekey:0x7f8cf958a800
  8875 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8875 ms     | 0x1974 ret:0x7f8cf958a980
  8875 ms     | 0x1974 PK11_Encrypt()
  8875 ms     | 0x1974 symkey:0x7f8cfa3cea80
  8885 ms     | 0x1974 PK11_DeriveWithFlags()
  8885 ms     | 0x1974 basekey:0x7f8cf958a300
  8885 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8885 ms     | 0x1974 ret:0x7f8cf958a980
  8885 ms     | 0x1974 PK11_DeriveWithFlags()
  8885 ms     | 0x1974 basekey:0x7f8cf958a300
  8885 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8885 ms     | 0x1974 ret:0x7f8cfa649100
  8885 ms     | 0x1974 PK11_DeriveWithFlags()
  8885 ms     | 0x1974 basekey:0x7f8cf958aa80
  8885 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8885 ms     | 0x1974 ret:0x7f8cfa3cea80
  8885 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8885 ms     | 0x1974 privk:0x7f8cff409020::7f8cff409020  e0 bc 64 fa                                      ..d.
  8885 ms     | 0x1974 privk:0x7f8cff409020::7f8cff409020  e5 e5 e5 e5                                      ....
  8886 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8886 ms     | 0x1974 privk:0x7f8cff404020::7f8cff404020  60 ba 64 fa                                      `.d.
  8886 ms     | 0x1974 privk:0x7f8cff404020::7f8cff404020  e5 e5 e5 e5                                      ....
  8886 ms  0x1974 SSL_AuthCertificateComplete()
  8886 ms  0x1974 fd:0x7f8cfabfdfa0
  8886 ms  0x1974 err:0x0
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572e00
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cf958a700
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572e00
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cf958a800
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572e00
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cf958aa80
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572780
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649100
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572780
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649180
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf958a800
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649180
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf958a800
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649200
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572780
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cf9572d00
  8886 ms     | 0x1974 PK11_Encrypt()
  8886 ms     | 0x1974 symkey:0x7f8cfa649100
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf958a700
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cf9572d00
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf958a700
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649200
  8886 ms     | 0x1974 PK11_DeriveWithFlags()
  8886 ms     | 0x1974 basekey:0x7f8cf9572e00
  8886 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8886 ms     | 0x1974 ret:0x7f8cfa649100
  8886 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8886 ms     | 0x1974 privk:0x7f8cf94e5820::7f8cf94e5820  00 16 33 fa                                      ..3.
  8887 ms     | 0x1974 privk:0x7f8cf94e5820::7f8cf94e5820  e5 e5 e5 e5                                      ....
  8887 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8887 ms     | 0x1974 privk:0x7f8cf94e3020::7f8cf94e3020  80 13 33 fa                                      ..3.
  8887 ms     | 0x1974 privk:0x7f8cf94e3020::7f8cf94e3020  e5 e5 e5 e5                                      ....
  8887 ms  0x1974 SSL_AuthCertificateComplete()
  8887 ms  0x1974 fd:0x7f8cfabfde20
  8887 ms  0x1974 err:0x0
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf958a280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8ce7ded280
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf958a280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cf9572780
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf958a280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cf9572e00
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf9572d80
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649200
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf9572d80
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649300
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf9572780
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649300
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf9572780
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649380
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf9572d80
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cf958a180
  8887 ms     | 0x1974 PK11_Encrypt()
  8887 ms     | 0x1974 symkey:0x7f8cfa649200
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8ce7ded280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cf958a180
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8ce7ded280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649380
  8887 ms     | 0x1974 PK11_DeriveWithFlags()
  8887 ms     | 0x1974 basekey:0x7f8cf958a280
  8887 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8887 ms     | 0x1974 ret:0x7f8cfa649200
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cfa653820::7f8cfa653820  60 1f 33 fa                                      `.3.
  8888 ms     | 0x1974 privk:0x7f8cfa653820::7f8cfa653820  e5 e5 e5 e5                                      ....
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cf94ed820::7f8cf94ed820  90 1c 33 fa                                      ..3.
  8888 ms     | 0x1974 privk:0x7f8cf94ed820::7f8cf94ed820  e5 e5 e5 e5                                      ....
  8888 ms  0x1974 SSL_AuthCertificateComplete()
  8888 ms  0x1974 fd:0x7f8cfaefa430
  8888 ms  0x1974 err:0x0
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cffd8b820::7f8cffd8b820  90 7c 32 fa                                      .|2.
  8888 ms     | 0x1974 privk:0x7f8cffd8b820::7f8cffd8b820  e5 e5 e5 e5                                      ....
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cf906c820::7f8cf906c820  90 77 5a f9                                      .wZ.
  8888 ms     | 0x1974 privk:0x7f8cf906c820::7f8cf906c820  e5 e5 e5 e5                                      ....
  8888 ms  0x1974 SSL_AuthCertificateComplete()
  8888 ms  0x1974 fd:0x7f8cfc63efa0
  8888 ms  0x1974 err:0x0
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cffdb4820::7f8cffdb4820  50 e6 ef fa                                      P...
  8888 ms     | 0x1974 privk:0x7f8cffdb4820::7f8cffdb4820  e5 e5 e5 e5                                      ....
  8888 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8888 ms     | 0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  20 e4 ef fa                                       ...
  8888 ms     | 0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  8889 ms  0x197c PR_Close()
  8889 ms  0x197c fd:0x7f8ce83be850
           /* TID 0x1974 */
  8890 ms  0x1974 PK11_Encrypt()
  8890 ms  0x1974 symkey:0x7f8cf9596b00
  8890 ms  0x1974 PK11_Encrypt()
  8890 ms  0x1974 symkey:0x7f8cf9596b00
  8891 ms  0x1974 PK11_Encrypt()
  8891 ms  0x1974 symkey:0x7f8cf9572d00
  8891 ms  0x1974 PK11_Encrypt()
  8891 ms  0x1974 symkey:0x7f8cf958a180
  8891 ms  0x1974 PK11_Encrypt()
  8891 ms  0x1974 symkey:0x7f8cf958a780
  8892 ms  0x1974 PK11_Encrypt()
  8892 ms  0x1974 symkey:0x7f8cf958a980
  8892 ms  0x1974 PK11_Encrypt()
  8892 ms  0x1974 symkey:0x7f8cf95d6a80
  8892 ms  0x1974 PK11_Encrypt()
  8892 ms  0x1974 symkey:0x7f8cf9572500
  8893 ms  0x1974 PK11_Encrypt()
  8893 ms  0x1974 symkey:0x7f8cf9572500
  8893 ms  0x1974 PK11_Encrypt()
  8893 ms  0x1974 symkey:0x7f8cf9572500
  8893 ms  0x1974 PK11_Encrypt()
  8893 ms  0x1974 symkey:0x7f8cf9596b00
  8893 ms  0x1974 PK11_Encrypt()
  8893 ms  0x1974 symkey:0x7f8cf9596b00
  8894 ms  0x1974 PR_Close()
  8894 ms  0x1974 fd:0x7f8cfc63efa0
  8894 ms     | 0x1974 PK11_Encrypt()
  8894 ms     | 0x1974 symkey:0x7f8cf95d6a80
  8894 ms  0x1974 PR_Connect()
  8894 ms  0x1974 fd:0x7f8cfa873730
  8894 ms  0x1974 PR_Connect()
  8894 ms  0x1974 fd:0x7f8cfe0b4460
  8894 ms  0x1974 PK11_Encrypt()
  8894 ms  0x1974 symkey:0x7f8cf9572500
  8910 ms  0x1974 PK11_DeriveWithFlags()
  8910 ms  0x1974 basekey:0x7f8cf958a680
  8910 ms     | 0x1974 PK11_DeriveWithTemplate()
  8910 ms  0x1974 ret:0x7f8ce7e40200
  8910 ms  0x1974 PK11_DeriveWithFlags()
  8910 ms  0x1974 basekey:0x7f8cf958a680
  8910 ms     | 0x1974 PK11_DeriveWithTemplate()
  8910 ms  0x1974 ret:0x7f8ce7e40200
  8910 ms  0x1974 PK11_Encrypt()
  8910 ms  0x1974 symkey:0x7f8cf9572500
  8913 ms  0x1974 PK11_DeriveWithFlags()
  8913 ms  0x1974 basekey:0x7f8cfa3ce800
  8913 ms     | 0x1974 PK11_DeriveWithTemplate()
  8913 ms  0x1974 ret:0x7f8ce7e40200
  8913 ms  0x1974 PK11_DeriveWithFlags()
  8913 ms  0x1974 basekey:0x7f8cfa3ce800
  8913 ms     | 0x1974 PK11_DeriveWithTemplate()
  8913 ms  0x1974 ret:0x7f8ce7e40200
  8913 ms  0x1974 PK11_DeriveWithFlags()
  8913 ms  0x1974 basekey:0x7f8cfa3cea80
  8913 ms     | 0x1974 PK11_DeriveWithTemplate()
  8913 ms  0x1974 ret:0x7f8ce7e40200
  8913 ms  0x1974 PK11_DeriveWithFlags()
  8913 ms  0x1974 basekey:0x7f8cfa3cea80
  8913 ms     | 0x1974 PK11_DeriveWithTemplate()
  8913 ms  0x1974 ret:0x7f8ce7e40200
  8913 ms  0x1974 PR_Close()
  8913 ms  0x1974 fd:0x7f8cfabfd8e0
  8913 ms     | 0x1974 PK11_Encrypt()
  8913 ms     | 0x1974 symkey:0x7f8cf958a980
  8914 ms  0x1974 PR_Close()
  8914 ms  0x1974 fd:0x7f8cfabfda60
  8914 ms     | 0x1974 PK11_Encrypt()
  8914 ms     | 0x1974 symkey:0x7f8cf958a780
           /* TID 0x1a14 */
  8915 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8916 ms  0x1a14 ret:0x0
           /* TID 0x197c */
  8916 ms  0x197c PR_Close()
  8916 ms  0x197c fd:0x7f8ce7e825e0
           /* TID 0x1974 */
  8917 ms  0x1974 SSL_AuthCertificateComplete()
  8917 ms  0x1974 fd:0x7f8cfabfd310
  8917 ms  0x1974 err:0x0
  8917 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8917 ms     | 0x1974 privk:0x7f8cff412820::7f8cff412820  20 14 6e fa                                       .n.
  8917 ms     | 0x1974 privk:0x7f8cff412820::7f8cff412820  e5 e5 e5 e5                                      ....
  8917 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8917 ms     | 0x1974 privk:0x7f8cff40d820::7f8cff40d820  20 be 64 fa                                       .d.
  8917 ms     | 0x1974 privk:0x7f8cff40d820::7f8cff40d820  e5 e5 e5 e5                                      ....
  8918 ms  0x1974 PK11_Encrypt()
  8918 ms  0x1974 symkey:0x7f8cf958af00
  8918 ms  0x1974 PK11_Encrypt()
  8918 ms  0x1974 symkey:0x7f8cf958af00
  8919 ms  0x1974 PK11_Encrypt()
  8919 ms  0x1974 symkey:0x7f8cf958af00
           /* TID 0x19d3 */
  8925 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8925 ms  0x19d3 ret:0x0
           /* TID 0x197c */
  8925 ms  0x197c PR_Close()
  8925 ms  0x197c fd:0x7f8ce7e825e0
           /* TID 0x1974 */
  8925 ms  0x1974 PK11_DeriveWithFlags()
  8925 ms  0x1974 basekey:0x7f8cfa649100
  8925 ms     | 0x1974 PK11_DeriveWithTemplate()
  8925 ms  0x1974 ret:0x7f8cf9572800
  8925 ms  0x1974 PK11_DeriveWithFlags()
  8925 ms  0x1974 basekey:0x7f8cfa649100
  8925 ms     | 0x1974 PK11_DeriveWithTemplate()
  8925 ms  0x1974 ret:0x7f8cf9572800
  8928 ms  0x1974 PR_Close()
  8928 ms  0x1974 fd:0x7f8cfabfdfa0
  8928 ms     | 0x1974 PK11_Encrypt()
  8928 ms     | 0x1974 symkey:0x7f8cf9572d00
  8928 ms  0x1974 SSL_AuthCertificateComplete()
  8928 ms  0x1974 fd:0x7f8cfabfdbe0
  8928 ms  0x1974 err:0x0
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a480
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf958aa80
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a480
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf958a800
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a480
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf958a700
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a200
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cfa649100
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a200
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cfa649180
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a800
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cfa649180
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a800
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf9572d00
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958a200
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf958a380
  8928 ms     | 0x1974 PK11_Encrypt()
  8928 ms     | 0x1974 symkey:0x7f8cfa649100
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958aa80
  8928 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8928 ms     | 0x1974 ret:0x7f8cf958a380
  8928 ms     | 0x1974 PK11_DeriveWithFlags()
  8928 ms     | 0x1974 basekey:0x7f8cf958aa80
  8929 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8929 ms     | 0x1974 ret:0x7f8cf9572d00
  8929 ms     | 0x1974 PK11_DeriveWithFlags()
  8929 ms     | 0x1974 basekey:0x7f8cf958a480
  8929 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  8929 ms     | 0x1974 ret:0x7f8cfa649100
  8929 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8929 ms     | 0x1974 privk:0x7f8cfae38020::7f8cfae38020  40 b2 64 fa                                      @.d.
  8929 ms     | 0x1974 privk:0x7f8cfae38020::7f8cfae38020  e5 e5 e5 e5                                      ....
  8929 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8929 ms     | 0x1974 privk:0x7f8cfae31020::7f8cfae31020  e0 d2 37 fa                                      ..7.
  8929 ms     | 0x1974 privk:0x7f8cfae31020::7f8cfae31020  e5 e5 e5 e5                                      ....
  8929 ms  0x1974 PK11_DeriveWithFlags()
  8929 ms  0x1974 basekey:0x7f8cfa649200
  8929 ms     | 0x1974 PK11_DeriveWithTemplate()
  8929 ms  0x1974 ret:0x7f8cf958a100
  8929 ms  0x1974 PK11_DeriveWithFlags()
  8929 ms  0x1974 basekey:0x7f8cfa649200
  8929 ms     | 0x1974 PK11_DeriveWithTemplate()
  8929 ms  0x1974 ret:0x7f8cf958a100
  8929 ms  0x1974 PK11_Encrypt()
  8929 ms  0x1974 symkey:0x7f8cf958a380
  8930 ms  0x1974 PR_Close()
  8930 ms  0x1974 fd:0x7f8cfabfde20
  8930 ms     | 0x1974 PK11_Encrypt()
  8930 ms     | 0x1974 symkey:0x7f8cf958a180
  8931 ms  0x1974 PK11_Encrypt()
  8931 ms  0x1974 symkey:0x7f8cf9572500
           /* TID 0x197c */
  8943 ms  0x197c PR_Close()
  8943 ms  0x197c fd:0x7f8ce7e825e0
           /* TID 0x1a0c */
  8943 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8943 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
  8943 ms  0x1974 SSL_AuthCertificateComplete()
  8943 ms  0x1974 fd:0x7f8cfb3f1850
  8943 ms  0x1974 err:0x0
  8944 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8944 ms     | 0x1974 privk:0x7f8cffd89020::7f8cffd89020  10 75 5a f9                                      .uZ.
  8944 ms     | 0x1974 privk:0x7f8cffd89020::7f8cffd89020  e5 e5 e5 e5                                      ....
  8944 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8944 ms     | 0x1974 privk:0x7f8ce83ed020::7f8ce83ed020  e0 72 5a f9                                      .rZ.
  8944 ms     | 0x1974 privk:0x7f8ce83ed020::7f8ce83ed020  e5 e5 e5 e5                                      ....
  8944 ms  0x1974 PK11_Encrypt()
  8944 ms  0x1974 symkey:0x7f8cf9596500
  8944 ms  0x1974 PK11_Encrypt()
  8944 ms  0x1974 symkey:0x7f8cf958af00
  8944 ms  0x1974 PR_Close()
  8944 ms  0x1974 fd:0x7f8cfb3f1850
  8944 ms     | 0x1974 PK11_Encrypt()
  8944 ms     | 0x1974 symkey:0x7f8cf9596500
           /* TID 0x197c */
  8955 ms  0x197c PR_Close()
  8955 ms  0x197c fd:0x7f8cfabfda90
           /* TID 0x1a18 */
  8955 ms  0x1a18 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8956 ms  0x1a18 ret:0x0
           /* TID 0x1974 */
  8956 ms  0x1974 PK11_Encrypt()
  8956 ms  0x1974 symkey:0x7f8cf9572500
  8956 ms  0x1974 SSL_AuthCertificateComplete()
  8956 ms  0x1974 fd:0x7f8cfab7aaf0
  8956 ms  0x1974 err:0x0
  8956 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8956 ms     | 0x1974 privk:0x7f8cffdc1020::7f8cffdc1020  40 22 3a fb                                      @":.
  8956 ms     | 0x1974 privk:0x7f8cffdc1020::7f8cffdc1020  e5 e5 e5 e5                                      ....
  8956 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  8956 ms     | 0x1974 privk:0x7f8cffdbf020::7f8cffdbf020  c0 ee ef fa                                      ....
  8956 ms     | 0x1974 privk:0x7f8cffdbf020::7f8cffdbf020  e5 e5 e5 e5                                      ....
  8956 ms  0x1974 PK11_Encrypt()
  8956 ms  0x1974 symkey:0x7f8cfa3a4780
  8956 ms  0x1974 PK11_Encrypt()
  8956 ms  0x1974 symkey:0x7f8cfa3a4780
  8957 ms  0x1974 PK11_Encrypt()
  8957 ms  0x1974 symkey:0x7f8cfa3a4780
           /* TID 0x197c */
  8958 ms  0x197c PR_Close()
  8958 ms  0x197c fd:0x7f8ce7ee1a30
  8958 ms  0x197c PR_Close()
  8958 ms  0x197c fd:0x7f8cfabfdd30
  8958 ms  0x197c PR_Close()
  8958 ms  0x197c fd:0x7f8cfabfdfa0
           /* TID 0x1974 */
  8966 ms  0x1974 PK11_DeriveWithFlags()
  8966 ms  0x1974 basekey:0x7f8cfa649100
  8966 ms     | 0x1974 PK11_DeriveWithTemplate()
  8966 ms  0x1974 ret:0x7f8cf9596200
  8966 ms  0x1974 PK11_DeriveWithFlags()
  8966 ms  0x1974 basekey:0x7f8cfa649100
  8966 ms     | 0x1974 PK11_DeriveWithTemplate()
  8966 ms  0x1974 ret:0x7f8cf9596200
  8966 ms  0x1974 PR_Close()
  8966 ms  0x1974 fd:0x7f8cfabfdbe0
  8966 ms     | 0x1974 PK11_Encrypt()
  8966 ms     | 0x1974 symkey:0x7f8cf958a380
           /* TID 0x197c */
  8970 ms  0x197c PR_Close()
  8970 ms  0x197c fd:0x7f8ce7f130a0
  8972 ms  0x197c PR_Close()
  8972 ms  0x197c fd:0x7f8ce7ee14f0
  9013 ms  0x197c PR_Close()
  9013 ms  0x197c fd:0x7f8ce7ee14f0
  9013 ms  0x197c PR_Close()
  9013 ms  0x197c fd:0x7f8cf95d4880
  9015 ms  0x197c PR_Close()
  9015 ms  0x197c fd:0x7f8ce7ee14f0
  9061 ms  0x197c PR_Close()
  9061 ms  0x197c fd:0x7f8ce7ee14f0
           /* TID 0x1a14 */
  9061 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9061 ms  0x1a14 ret:0x0
           /* TID 0x1974 */
  9061 ms  0x1974 SSL_AuthCertificateComplete()
  9061 ms  0x1974 fd:0x7f8cffa4a070
  9061 ms  0x1974 err:0x0
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cfa3a5f80
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cf958a700
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cfa3a5f80
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cf958a800
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cfa3a5f80
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cf958aa80
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cfa3a5c80
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cfa649100
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cfa3a5c80
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cfa649180
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cf958a800
  9061 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9061 ms     | 0x1974 ret:0x7f8cfa649180
  9061 ms     | 0x1974 PK11_DeriveWithFlags()
  9061 ms     | 0x1974 basekey:0x7f8cf958a800
  9062 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9062 ms     | 0x1974 ret:0x7f8cf958a380
  9062 ms     | 0x1974 PK11_DeriveWithFlags()
  9062 ms     | 0x1974 basekey:0x7f8cfa3a5c80
  9062 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9062 ms     | 0x1974 ret:0x7f8cfa3a5e80
  9062 ms     | 0x1974 PK11_Encrypt()
  9062 ms     | 0x1974 symkey:0x7f8cfa649100
  9062 ms     | 0x1974 PK11_DeriveWithFlags()
  9062 ms     | 0x1974 basekey:0x7f8cf958a700
  9062 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9062 ms     | 0x1974 ret:0x7f8cfa3a5e80
  9062 ms     | 0x1974 PK11_DeriveWithFlags()
  9062 ms     | 0x1974 basekey:0x7f8cf958a700
  9062 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9062 ms     | 0x1974 ret:0x7f8cf958a380
  9062 ms     | 0x1974 PK11_DeriveWithFlags()
  9062 ms     | 0x1974 basekey:0x7f8cfa3a5f80
  9062 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9062 ms     | 0x1974 ret:0x7f8cfa649100
  9062 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9062 ms     | 0x1974 privk:0x7f8cffdca020::7f8cffdca020  a0 71 5a f9                                      .qZ.
  9062 ms     | 0x1974 privk:0x7f8cffdca020::7f8cffdca020  e5 e5 e5 e5                                      ....
  9062 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9062 ms     | 0x1974 privk:0x7f8cffdc6820::7f8cffdc6820  60 9f 58 f9                                      `.X.
  9062 ms     | 0x1974 privk:0x7f8cffdc6820::7f8cffdc6820  e5 e5 e5 e5                                      ....
  9062 ms  0x1974 PK11_Encrypt()
  9062 ms  0x1974 symkey:0x7f8cfa3a5e80
  9063 ms  0x1974 PK11_Encrypt()
  9063 ms  0x1974 symkey:0x7f8cfa3a5e80
           /* TID 0x197c */
  9098 ms  0x197c PR_Close()
  9098 ms  0x197c fd:0x7f8cfaefa0d0
           /* TID 0x1974 */
  9100 ms  0x1974 PK11_DeriveWithFlags()
  9100 ms  0x1974 basekey:0x7f8cfa649100
  9100 ms     | 0x1974 PK11_DeriveWithTemplate()
  9100 ms  0x1974 ret:0x7f8ce7dece00
  9100 ms  0x1974 PK11_DeriveWithFlags()
  9100 ms  0x1974 basekey:0x7f8cfa649100
  9100 ms     | 0x1974 PK11_DeriveWithTemplate()
  9100 ms  0x1974 ret:0x7f8ce7dece00
  9100 ms  0x1974 PK11_Encrypt()
  9100 ms  0x1974 symkey:0x7f8cfa3a5e80
           /* TID 0x197c */
  9109 ms  0x197c PR_Close()
  9109 ms  0x197c fd:0x7f8cfaefa190
           /* TID 0x1974 */
  9122 ms  SECKEY_ECParamsToKeySize()
  9122 ms  0x1974 ret:0x100
  9122 ms  0x1974 SECKEY_CreateECPrivateKey()
  9122 ms  0x1974 cx:0x7f8ce7e11c88
  9123 ms     | 0x1974 EC_ValidatePublicKey()
  9124 ms     | 0x1974 ret:0x0
  9124 ms  0x1974 ret:0x7f8cf94d6020::7f8cf94d6020  e0 cc 54 f9                                      ..T.
  9124 ms  0x1974 PK11_PubDeriveWithKDF()
  9124 ms  0x1974 seckey:0x7f8cf94d6020
  9124 ms     | 0x1974 EC_ValidatePublicKey()
  9126 ms     | 0x1974 ret:0x0
  9127 ms  0x1974 ret:0x7f8ce7dece00
  9127 ms  0x1974 PK11_DeriveWithFlags()
  9127 ms  0x1974 basekey:0x7f8ce7dece00
  9127 ms     | 0x1974 PK11_DeriveWithTemplate()
  9127 ms  0x1974 ret:0x7f8cfa3a5c80
  9127 ms  0x1974 PK11_Derive()
  9127 ms  0x1974 basekey:0x7f8cfa3a5c80
  9127 ms     | 0x1974 PK11_DeriveWithTemplate()
  9127 ms  0x1974 ret:0x7f8cfa3a5f80
  9127 ms  0x1974 SECKEY_DestroyPrivateKey()
  9127 ms  0x1974 privk:0x7f8cf94d6020::7f8cf94d6020  e0 cc 54 f9                                      ..T.
  9127 ms  0x1974 privk:0x7f8cf94d6020::7f8cf94d6020  e5 e5 e5 e5                                      ....
  9127 ms  0x1974 PK11_Encrypt()
  9127 ms  0x1974 symkey:0x7f8cf9596400
           /* TID 0x197c */
  9146 ms  0x197c PR_Close()
  9146 ms  0x197c fd:0x7f8cfaefa460
           /* TID 0x1974 */
  9152 ms  0x1974 PK11_Encrypt()
  9152 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  9161 ms  0x197c PR_Close()
  9161 ms  0x197c fd:0x7f8cff063190
           /* TID 0x1974 */
  9180 ms  0x1974 PK11_Encrypt()
  9180 ms  0x1974 symkey:0x7f8cf9572500
  9180 ms  0x1974 PK11_Encrypt()
  9180 ms  0x1974 symkey:0x7f8ce7c96a00
  9180 ms  0x1974 PK11_Encrypt()
  9180 ms  0x1974 symkey:0x7f8cf9572500
  9188 ms  0x1974 PK11_Encrypt()
  9188 ms  0x1974 symkey:0x7f8ce7c96980
  9191 ms  0x1974 SSL_ImportFD()
  9191 ms  0x1974 ret:0x7f8cff063fd0
  9191 ms  0x1974 SSL_AuthCertificateHook()
  9191 ms  0x1974 fd:0x7f8cff063fd0
  9191 ms  0x1974 ret:0x0
  9191 ms  0x1974 PR_Connect()
  9191 ms  0x1974 fd:0x7f8cff063fd0
  9192 ms  0x1974 PK11_Encrypt()
  9192 ms  0x1974 symkey:0x7f8ce7c96980
  9193 ms  0x1974 SSL_ImportFD()
  9193 ms  0x1974 ret:0x7f8cff72e220
  9193 ms  0x1974 SSL_AuthCertificateHook()
  9193 ms  0x1974 fd:0x7f8cff72e220
  9193 ms  0x1974 ret:0x0
  9193 ms  0x1974 PR_Connect()
  9193 ms  0x1974 fd:0x7f8cff72e220
  9195 ms  0x1974 PK11_Encrypt()
  9195 ms  0x1974 symkey:0x7f8ce7c96980
  9196 ms  0x1974 SSL_ImportFD()
  9196 ms  0x1974 ret:0x7f8cffa4aee0
  9196 ms  0x1974 SSL_AuthCertificateHook()
  9196 ms  0x1974 fd:0x7f8cffa4aee0
  9196 ms  0x1974 ret:0x0
  9196 ms  0x1974 PR_Connect()
  9196 ms  0x1974 fd:0x7f8cffa4aee0
  9212 ms  0x1974 PK11_Encrypt()
  9212 ms  0x1974 symkey:0x7f8ce7c96980
  9216 ms  0x1974 PK11_Encrypt()
  9216 ms  0x1974 symkey:0x7f8ce7c96980
  9218 ms  0x1974 SSL_ImportFD()
  9218 ms  0x1974 ret:0x7f8cffa75a60
  9218 ms  0x1974 SSL_AuthCertificateHook()
  9218 ms  0x1974 fd:0x7f8cffa75a60
  9218 ms  0x1974 ret:0x0
  9218 ms  0x1974 PR_Connect()
  9218 ms  0x1974 fd:0x7f8cffa75a60
  9220 ms  0x1974 PK11_Encrypt()
  9220 ms  0x1974 symkey:0x7f8ce7c96980
  9223 ms  0x1974 SSL_ImportFD()
  9223 ms  0x1974 ret:0x7f8cffabd640
  9223 ms  0x1974 SSL_AuthCertificateHook()
  9223 ms  0x1974 fd:0x7f8cffabd640
  9223 ms  0x1974 ret:0x0
  9223 ms  0x1974 PR_Connect()
  9223 ms  0x1974 fd:0x7f8cffabd640
  9227 ms  0x1974 PK11_Encrypt()
  9227 ms  0x1974 symkey:0x7f8ce7c96980
  9228 ms  0x1974 SECKEY_CreateECPrivateKey()
  9228 ms  0x1974 cx:0x7f8ce7e12e68
  9229 ms     | 0x1974 EC_ValidatePublicKey()
  9229 ms     | 0x1974 ret:0x0
  9229 ms  0x1974 ret:0x7f8cff007820::7f8cff007820  30 8d 32 fa                                      0.2.
  9229 ms  0x1974 SECKEY_CreateECPrivateKey()
  9229 ms  0x1974 cx:0x7f8ce7e12e68
  9229 ms     | 0x1974 EC_ValidatePublicKey()
  9233 ms     | 0x1974 ret:0x0
  9233 ms  0x1974 ret:0x7f8cff404820::7f8cff404820  70 14 33 fa                                      p.3.
  9235 ms  0x1974 SECKEY_CreateECPrivateKey()
  9235 ms  0x1974 cx:0x7f8d036baf48
  9235 ms     | 0x1974 EC_ValidatePublicKey()
  9235 ms     | 0x1974 ret:0x0
  9235 ms  0x1974 ret:0x7f8cff40c020::7f8cff40c020  a0 16 33 fa                                      ..3.
  9235 ms  0x1974 SECKEY_CreateECPrivateKey()
  9235 ms  0x1974 cx:0x7f8d036baf48
  9236 ms     | 0x1974 EC_ValidatePublicKey()
  9238 ms     | 0x1974 ret:0x0
  9238 ms  0x1974 ret:0x7f8cff411020::7f8cff411020  80 1d 33 fa                                      ..3.
           /* TID 0x197c */
  9247 ms  0x197c PR_Close()
  9247 ms  0x197c fd:0x7f8ce7f130a0
           /* TID 0x1974 */
  9247 ms  0x1974 PK11_Encrypt()
  9247 ms  0x1974 symkey:0x7f8ce7c96a00
           /* TID 0x197c */
  9248 ms  0x197c PR_Close()
  9248 ms  0x197c fd:0x7f8ce7f130a0
           /* TID 0x1974 */
  9248 ms  0x1974 PK11_Encrypt()
  9248 ms  0x1974 symkey:0x7f8cf9572500
  9249 ms  0x1974 SECKEY_CreateECPrivateKey()
  9249 ms  0x1974 cx:0x7f8d036bb0e8
  9249 ms     | 0x1974 EC_ValidatePublicKey()
  9249 ms     | 0x1974 ret:0x0
  9249 ms  0x1974 ret:0x7f8cffd83820::7f8cffd83820  00 71 5a f9                                      .qZ.
  9249 ms  0x1974 SECKEY_CreateECPrivateKey()
  9249 ms  0x1974 cx:0x7f8d036bb0e8
  9250 ms     | 0x1974 EC_ValidatePublicKey()
  9251 ms     | 0x1974 ret:0x0
  9251 ms  0x1974 ret:0x7f8cffd88820::7f8cffd88820  50 d1 37 fa                                      P.7.
  9257 ms  0x1974 SSL_ImportFD()
  9257 ms  0x1974 ret:0x7f8cff0636a0
  9257 ms  0x1974 SSL_AuthCertificateHook()
  9257 ms  0x1974 fd:0x7f8cff0636a0
  9257 ms  0x1974 ret:0x0
  9257 ms  0x1974 PR_Connect()
  9257 ms  0x1974 fd:0x7f8cff0636a0
  9257 ms  0x1974 SECKEY_CreateECPrivateKey()
  9257 ms  0x1974 cx:0x7f8d036bb288
  9258 ms     | 0x1974 EC_ValidatePublicKey()
  9258 ms     | 0x1974 ret:0x0
  9258 ms  0x1974 ret:0x7f8cffd8f020::7f8cffd8f020  00 d6 37 fa                                      ..7.
  9258 ms  0x1974 SECKEY_CreateECPrivateKey()
  9258 ms  0x1974 cx:0x7f8d036bb288
  9258 ms     | 0x1974 EC_ValidatePublicKey()
  9260 ms     | 0x1974 ret:0x0
  9260 ms  0x1974 ret:0x7f8cffd91820::7f8cffd91820  e0 b2 64 fa                                      ..d.
  9266 ms  0x1974 SSL_ImportFD()
  9266 ms  0x1974 ret:0x7f8cffa759a0
  9266 ms  0x1974 SSL_AuthCertificateHook()
  9266 ms  0x1974 fd:0x7f8cffa759a0
  9266 ms  0x1974 ret:0x0
  9266 ms  0x1974 PR_Connect()
  9266 ms  0x1974 fd:0x7f8cffa759a0
  9266 ms  0x1974 SSL_ImportFD()
  9266 ms  0x1974 ret:0x7f8cff063100
  9266 ms  0x1974 SSL_AuthCertificateHook()
  9266 ms  0x1974 fd:0x7f8cff063100
  9266 ms  0x1974 ret:0x0
  9266 ms  0x1974 PR_Connect()
  9266 ms  0x1974 fd:0x7f8cff063100
  9267 ms  0x1974 SECKEY_CreateECPrivateKey()
  9267 ms  0x1974 cx:0x7f8d036bb5c8
  9267 ms     | 0x1974 EC_ValidatePublicKey()
  9267 ms     | 0x1974 ret:0x0
  9267 ms  0x1974 ret:0x7f8cffd95820::7f8cffd95820  70 b4 64 fa                                      p.d.
  9267 ms  0x1974 SECKEY_CreateECPrivateKey()
  9267 ms  0x1974 cx:0x7f8d036bb5c8
  9268 ms     | 0x1974 EC_ValidatePublicKey()
  9270 ms     | 0x1974 ret:0x0
  9270 ms  0x1974 ret:0x7f8cffd97020::7f8cffd97020  c0 b9 64 fa                                      ..d.
  9271 ms  0x1974 PR_Connect()
  9271 ms  0x1974 fd:0x7f8cffa84fa0
  9271 ms  0x1974 PR_Connect()
  9271 ms  0x1974 fd:0x7f8cfaefa3a0
  9287 ms  0x1974 PK11_Encrypt()
  9287 ms  0x1974 symkey:0x7f8ce7c96980
  9289 ms  0x1974 PK11_Derive()
  9289 ms  0x1974 basekey:0x7f8ce7dece00
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8cf958a380
  9289 ms  0x1974 PK11_PubDeriveWithKDF()
  9289 ms  0x1974 seckey:0x7f8cff007820
  9289 ms     | 0x1974 EC_ValidatePublicKey()
  9289 ms     | 0x1974 ret:0x0
  9289 ms  0x1974 ret:0x7f8ce7dece00
  9289 ms  SECKEY_ECParamsToKeySize()
  9289 ms  0x1974 ret:0xff
  9289 ms  0x1974 PK11_DeriveWithFlags()
  9289 ms  0x1974 basekey:0x7f8cf958a380
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8cf9596200
  9289 ms  0x1974 PK11_Derive()
  9289 ms  0x1974 basekey:0x7f8ce7dece00
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8cf958b380
  9289 ms  0x1974 PK11_DeriveWithFlags()
  9289 ms  0x1974 basekey:0x7f8cf958b380
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8cf958a380
  9289 ms  0x1974 PK11_DeriveWithFlags()
  9289 ms  0x1974 basekey:0x7f8cf958b380
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8ce7dece00
  9289 ms  0x1974 PK11_DeriveWithFlags()
  9289 ms  0x1974 basekey:0x7f8cf958b380
  9289 ms     | 0x1974 PK11_DeriveWithTemplate()
  9289 ms  0x1974 ret:0x7f8cf9596200
  9290 ms  0x1974 PK11_Derive()
  9290 ms  0x1974 basekey:0x7f8cf9572e00
  9290 ms     | 0x1974 PK11_DeriveWithTemplate()
  9290 ms  0x1974 ret:0x7f8cf9572780
  9290 ms  0x1974 PK11_DeriveWithFlags()
  9290 ms  0x1974 basekey:0x7f8ce7dece00
  9290 ms     | 0x1974 PK11_DeriveWithTemplate()
  9290 ms  0x1974 ret:0x7f8cf958b380
  9290 ms  0x1974 PK11_DeriveWithFlags()
  9290 ms  0x1974 basekey:0x7f8ce7dece00
  9290 ms     | 0x1974 PK11_DeriveWithTemplate()
  9290 ms  0x1974 ret:0x7f8cf9596200
  9291 ms  0x1974 PK11_DeriveWithFlags()
  9291 ms  0x1974 basekey:0x7f8ce7dece00
  9291 ms     | 0x1974 PK11_DeriveWithTemplate()
  9291 ms  0x1974 ret:0x7f8cf9596200
  9291 ms  0x1974 SSL_AuthCertificateComplete()
  9291 ms  0x1974 fd:0x7f8cff063fd0
  9291 ms  0x1974 err:0x0
  9291 ms     | 0x1974 PK11_DeriveWithFlags()
  9291 ms     | 0x1974 basekey:0x7f8cf9572780
  9291 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9291 ms     | 0x1974 ret:0x7f8cf9596200
  9291 ms     | 0x1974 PK11_DeriveWithFlags()
  9291 ms     | 0x1974 basekey:0x7f8cf9572780
  9291 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9291 ms     | 0x1974 ret:0x7f8cf9572e00
  9291 ms     | 0x1974 PK11_DeriveWithFlags()
  9291 ms     | 0x1974 basekey:0x7f8cf9572780
  9291 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9291 ms     | 0x1974 ret:0x7f8ce7ded280
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf958a380
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cfa649200
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf958a380
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cfa649300
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf9572e00
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cfa649300
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf9572e00
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cf958a180
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf958a380
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cf958b380
  9292 ms     | 0x1974 PK11_Encrypt()
  9292 ms     | 0x1974 symkey:0x7f8cfa649200
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf9596200
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cf958b380
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf9596200
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cf958a180
  9292 ms     | 0x1974 PK11_DeriveWithFlags()
  9292 ms     | 0x1974 basekey:0x7f8cf9572780
  9292 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9292 ms     | 0x1974 ret:0x7f8cfa649200
  9292 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9292 ms     | 0x1974 privk:0x7f8cff404820::7f8cff404820  70 14 33 fa                                      p.3.
  9292 ms     | 0x1974 privk:0x7f8cff404820::7f8cff404820  e5 e5 e5 e5                                      ....
  9292 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9292 ms     | 0x1974 privk:0x7f8cff007820::7f8cff007820  30 8d 32 fa                                      0.2.
  9292 ms     | 0x1974 privk:0x7f8cff007820::7f8cff007820  e5 e5 e5 e5                                      ....
           /* TID 0x197c */
  9295 ms  0x197c PR_Close()
  9295 ms  0x197c fd:0x7f8cff0639d0
           /* TID 0x1974 */
  9295 ms  0x1974 PK11_Encrypt()
  9295 ms  0x1974 symkey:0x7f8cfa3a5e80
  9296 ms  0x1974 PK11_Encrypt()
  9296 ms  0x1974 symkey:0x7f8cf958b380
  9296 ms  0x1974 PK11_Encrypt()
  9296 ms  0x1974 symkey:0x7f8cf958b380
  9296 ms  0x1974 PK11_Derive()
  9296 ms  0x1974 basekey:0x7f8ce7dece00
  9296 ms     | 0x1974 PK11_DeriveWithTemplate()
  9296 ms  0x1974 ret:0x7f8cf958a380
  9296 ms  0x1974 PK11_PubDeriveWithKDF()
  9296 ms  0x1974 seckey:0x7f8cff40c020
  9296 ms     | 0x1974 EC_ValidatePublicKey()
  9296 ms     | 0x1974 ret:0x0
  9296 ms  0x1974 ret:0x7f8ce7dece00
  9296 ms  SECKEY_ECParamsToKeySize()
  9296 ms  0x1974 ret:0xff
  9296 ms  0x1974 PK11_DeriveWithFlags()
  9296 ms  0x1974 basekey:0x7f8cf958a380
  9296 ms     | 0x1974 PK11_DeriveWithTemplate()
  9296 ms  0x1974 ret:0x7f8cf9572780
  9296 ms  0x1974 PK11_Derive()
  9296 ms  0x1974 basekey:0x7f8ce7dece00
  9296 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf958a180
  9297 ms  0x1974 PK11_DeriveWithFlags()
  9297 ms  0x1974 basekey:0x7f8cf958a180
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf958a380
  9297 ms  0x1974 PK11_DeriveWithFlags()
  9297 ms  0x1974 basekey:0x7f8cf958a180
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8ce7dece00
  9297 ms  0x1974 PK11_DeriveWithFlags()
  9297 ms  0x1974 basekey:0x7f8cf958a180
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf9572780
  9297 ms  0x1974 PK11_Derive()
  9297 ms  0x1974 basekey:0x7f8cf958a100
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf958a200
  9297 ms  0x1974 PK11_DeriveWithFlags()
  9297 ms  0x1974 basekey:0x7f8ce7dece00
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf958a180
  9297 ms  0x1974 PK11_DeriveWithFlags()
  9297 ms  0x1974 basekey:0x7f8ce7dece00
  9297 ms     | 0x1974 PK11_DeriveWithTemplate()
  9297 ms  0x1974 ret:0x7f8cf9572780
  9306 ms  0x1974 PK11_DeriveWithFlags()
  9306 ms  0x1974 basekey:0x7f8ce7dece00
  9306 ms     | 0x1974 PK11_DeriveWithTemplate()
  9306 ms  0x1974 ret:0x7f8cf9572780
  9306 ms  0x1974 PR_Close()
  9306 ms  0x1974 fd:0x7f8cff0636a0
  9306 ms  0x1974 PK11_Encrypt()
  9306 ms  0x1974 symkey:0x7f8cf958b380
  9307 ms  0x1974 SSL_AuthCertificateComplete()
  9307 ms  0x1974 fd:0x7f8cff72e220
  9307 ms  0x1974 err:0x0
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a200
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf9572780
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a200
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf958a100
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a200
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf958a480
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a380
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf9572d00
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a380
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf9572800
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a100
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf9572800
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a100
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8ce7dece80
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a380
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf958a180
  9307 ms     | 0x1974 PK11_Encrypt()
  9307 ms     | 0x1974 symkey:0x7f8cf9572d00
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf9572780
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8cf958a180
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf9572780
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9307 ms     | 0x1974 ret:0x7f8ce7dece80
  9307 ms     | 0x1974 PK11_DeriveWithFlags()
  9307 ms     | 0x1974 basekey:0x7f8cf958a200
  9307 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9308 ms     | 0x1974 ret:0x7f8cf9572d00
  9308 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9308 ms     | 0x1974 privk:0x7f8cff411020::7f8cff411020  80 1d 33 fa                                      ..3.
  9308 ms     | 0x1974 privk:0x7f8cff411020::7f8cff411020  e5 e5 e5 e5                                      ....
  9308 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9308 ms     | 0x1974 privk:0x7f8cff40c020::7f8cff40c020  a0 16 33 fa                                      ..3.
  9308 ms     | 0x1974 privk:0x7f8cff40c020::7f8cff40c020  e5 e5 e5 e5                                      ....
  9308 ms  0x1974 PK11_Encrypt()
  9308 ms  0x1974 symkey:0x7f8cf958a180
  9308 ms  0x1974 PK11_Derive()
  9308 ms  0x1974 basekey:0x7f8ce7dece00
  9308 ms     | 0x1974 PK11_DeriveWithTemplate()
  9308 ms  0x1974 ret:0x7f8cf958a380
  9308 ms  0x1974 PK11_PubDeriveWithKDF()
  9308 ms  0x1974 seckey:0x7f8cffd83820
  9308 ms     | 0x1974 EC_ValidatePublicKey()
  9308 ms     | 0x1974 ret:0x0
  9309 ms  0x1974 ret:0x7f8ce7dece00
  9309 ms  SECKEY_ECParamsToKeySize()
  9309 ms  0x1974 ret:0xff
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8cf958a380
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8cf958a200
  9309 ms  0x1974 PK11_Derive()
  9309 ms  0x1974 basekey:0x7f8ce7dece00
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8ce7dece80
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8ce7dece80
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8cf958a380
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8ce7dece80
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8ce7dece00
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8ce7dece80
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8cf958a200
  9309 ms  0x1974 PK11_Derive()
  9309 ms  0x1974 basekey:0x7f8ce7dfd100
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8cfa3ce800
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8ce7dece00
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8ce7dece80
  9309 ms  0x1974 PK11_DeriveWithFlags()
  9309 ms  0x1974 basekey:0x7f8ce7dece00
  9309 ms     | 0x1974 PK11_DeriveWithTemplate()
  9309 ms  0x1974 ret:0x7f8cf958a200
  9310 ms  0x1974 PK11_DeriveWithFlags()
  9310 ms  0x1974 basekey:0x7f8ce7dece00
  9310 ms     | 0x1974 PK11_DeriveWithTemplate()
  9310 ms  0x1974 ret:0x7f8cf958a200
  9310 ms  0x1974 SECKEY_CreateECPrivateKey()
  9310 ms  0x1974 cx:0x7f8d036bcae8
  9310 ms     | 0x1974 EC_ValidatePublicKey()
  9310 ms     | 0x1974 ret:0x0
  9311 ms  0x1974 ret:0x7f8cff409020::7f8cff409020  60 8a 32 fa                                      `.2.
  9311 ms  0x1974 SECKEY_CreateECPrivateKey()
  9311 ms  0x1974 cx:0x7f8d036bcae8
  9311 ms     | 0x1974 EC_ValidatePublicKey()
  9313 ms     | 0x1974 ret:0x0
  9313 ms  0x1974 ret:0x7f8cff40d020::7f8cff40d020  80 13 33 fa                                      ..3.
  9313 ms  0x1974 SECKEY_CreateECPrivateKey()
  9313 ms  0x1974 cx:0x7f8d036bc7a8
  9313 ms     | 0x1974 EC_ValidatePublicKey()
  9313 ms     | 0x1974 ret:0x0
  9313 ms  0x1974 ret:0x7f8cffd97820::7f8cffd97820  10 15 33 fa                                      ..3.
  9313 ms  0x1974 SECKEY_CreateECPrivateKey()
  9313 ms  0x1974 cx:0x7f8d036bc7a8
  9314 ms     | 0x1974 EC_ValidatePublicKey()
  9315 ms     | 0x1974 ret:0x0
  9315 ms  0x1974 ret:0x7f8cffdb2820::7f8cffdb2820  e0 1c 33 fa                                      ..3.
  9318 ms  0x1974 PK11_Encrypt()
  9318 ms  0x1974 symkey:0x7f8cf958b380
  9319 ms  0x1974 SSL_AuthCertificateComplete()
  9319 ms  0x1974 fd:0x7f8cffa4aee0
  9319 ms  0x1974 err:0x0
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a200
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8ce7dfd100
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cfa3ce900
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cf958a380
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a780
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cf958a380
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a880
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8ce7dfd100
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a880
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8ce7dfd100
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a400
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cf958a380
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8ce7dece80
  9319 ms     | 0x1974 PK11_Encrypt()
  9319 ms     | 0x1974 symkey:0x7f8cf958a780
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cf958a200
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8ce7dece80
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cf958a200
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a400
  9319 ms     | 0x1974 PK11_DeriveWithFlags()
  9319 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9319 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9319 ms     | 0x1974 ret:0x7f8cf958a780
  9319 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9319 ms     | 0x1974 privk:0x7f8cffd88820::7f8cffd88820  50 d1 37 fa                                      P.7.
  9319 ms     | 0x1974 privk:0x7f8cffd88820::7f8cffd88820  e5 e5 e5 e5                                      ....
  9320 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9320 ms     | 0x1974 privk:0x7f8cffd83820::7f8cffd83820  00 71 5a f9                                      .qZ.
  9320 ms     | 0x1974 privk:0x7f8cffd83820::7f8cffd83820  e5 e5 e5 e5                                      ....
  9322 ms  0x1974 PK11_Encrypt()
  9322 ms  0x1974 symkey:0x7f8ce7dece80
  9322 ms  0x1974 PK11_Derive()
  9322 ms  0x1974 basekey:0x7f8ce7dece00
  9322 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cf958a380
  9323 ms  0x1974 PK11_PubDeriveWithKDF()
  9323 ms  0x1974 seckey:0x7f8cffd8f020
  9323 ms     | 0x1974 EC_ValidatePublicKey()
  9323 ms     | 0x1974 ret:0x0
  9323 ms  0x1974 ret:0x7f8ce7dece00
  9323 ms  SECKEY_ECParamsToKeySize()
  9323 ms  0x1974 ret:0xff
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8cf958a380
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cfa3ce800
  9323 ms  0x1974 PK11_Derive()
  9323 ms  0x1974 basekey:0x7f8ce7dece00
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cf958a400
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8cf958a400
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cf958a380
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8cf958a400
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8ce7dece00
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8cf958a400
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cfa3ce800
  9323 ms  0x1974 PK11_Derive()
  9323 ms  0x1974 basekey:0x7f8cf958a300
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cfa3cea80
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8ce7dece00
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cf958a400
  9323 ms  0x1974 PK11_DeriveWithFlags()
  9323 ms  0x1974 basekey:0x7f8ce7dece00
  9323 ms     | 0x1974 PK11_DeriveWithTemplate()
  9323 ms  0x1974 ret:0x7f8cfa3ce800
  9329 ms  0x1974 PK11_DeriveWithFlags()
  9329 ms  0x1974 basekey:0x7f8ce7dece00
  9329 ms     | 0x1974 PK11_DeriveWithTemplate()
  9329 ms  0x1974 ret:0x7f8cfa3ce800
  9331 ms  0x1974 PK11_Encrypt()
  9331 ms  0x1974 symkey:0x7f8cf958b380
  9331 ms  0x1974 SSL_AuthCertificateComplete()
  9331 ms  0x1974 fd:0x7f8cffa75a60
  9331 ms  0x1974 err:0x0
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cfa3ce800
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cf958a300
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cf9572b80
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cf958a380
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cf958a980
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cf958a380
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8ce7e40200
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cf958a300
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8ce7e40200
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cf958a300
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8ce7ded700
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cf958a380
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cf958a400
  9331 ms     | 0x1974 PK11_Encrypt()
  9331 ms     | 0x1974 symkey:0x7f8cf958a980
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8cf958a400
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3ce800
  9331 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9331 ms     | 0x1974 ret:0x7f8ce7ded700
  9331 ms     | 0x1974 PK11_DeriveWithFlags()
  9331 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9332 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9332 ms     | 0x1974 ret:0x7f8cf958a980
  9332 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9332 ms     | 0x1974 privk:0x7f8cffd91820::7f8cffd91820  e0 b2 64 fa                                      ..d.
  9332 ms     | 0x1974 privk:0x7f8cffd91820::7f8cffd91820  e5 e5 e5 e5                                      ....
  9332 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9332 ms     | 0x1974 privk:0x7f8cffd8f020::7f8cffd8f020  00 d6 37 fa                                      ..7.
  9332 ms     | 0x1974 privk:0x7f8cffd8f020::7f8cffd8f020  e5 e5 e5 e5                                      ....
  9348 ms  0x1974 PK11_Encrypt()
  9348 ms  0x1974 symkey:0x7f8cf958a400
  9349 ms  0x1974 PK11_Derive()
  9349 ms  0x1974 basekey:0x7f8ce7dece00
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8cf958a380
  9349 ms  0x1974 PK11_PubDeriveWithKDF()
  9349 ms  0x1974 seckey:0x7f8cffd95820
  9349 ms     | 0x1974 EC_ValidatePublicKey()
  9349 ms     | 0x1974 ret:0x0
  9349 ms  0x1974 ret:0x7f8ce7dece00
  9349 ms  SECKEY_ECParamsToKeySize()
  9349 ms  0x1974 ret:0xff
  9349 ms  0x1974 PK11_DeriveWithFlags()
  9349 ms  0x1974 basekey:0x7f8cf958a380
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8cfa3cea80
  9349 ms  0x1974 PK11_Derive()
  9349 ms  0x1974 basekey:0x7f8ce7dece00
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8ce7ded700
  9349 ms  0x1974 PK11_DeriveWithFlags()
  9349 ms  0x1974 basekey:0x7f8ce7ded700
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8cf958a380
  9349 ms  0x1974 PK11_DeriveWithFlags()
  9349 ms  0x1974 basekey:0x7f8ce7ded700
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8ce7dece00
  9349 ms  0x1974 PK11_DeriveWithFlags()
  9349 ms  0x1974 basekey:0x7f8ce7ded700
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9349 ms  0x1974 ret:0x7f8cfa3cea80
  9349 ms  0x1974 PK11_Derive()
  9349 ms  0x1974 basekey:0x7f8cf9572680
  9349 ms     | 0x1974 PK11_DeriveWithTemplate()
  9350 ms  0x1974 ret:0x7f8cf9572d80
  9350 ms  0x1974 PK11_DeriveWithFlags()
  9350 ms  0x1974 basekey:0x7f8ce7dece00
  9350 ms     | 0x1974 PK11_DeriveWithTemplate()
  9350 ms  0x1974 ret:0x7f8ce7ded700
  9350 ms  0x1974 PK11_DeriveWithFlags()
  9350 ms  0x1974 basekey:0x7f8ce7dece00
  9350 ms     | 0x1974 PK11_DeriveWithTemplate()
  9350 ms  0x1974 ret:0x7f8cfa3cea80
  9354 ms  0x1974 PK11_DeriveWithFlags()
  9354 ms  0x1974 basekey:0x7f8ce7dece00
  9354 ms     | 0x1974 PK11_DeriveWithTemplate()
  9354 ms  0x1974 ret:0x7f8cfa3cea80
           /* TID 0x1a14 */
  9355 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9355 ms  0x1a14 ret:0x0
  9355 ms  0x1a14 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9356 ms  0x1a14 ret:0x0
           /* TID 0x1974 */
  9357 ms  SECKEY_ECParamsToKeySize()
  9357 ms  0x1974 ret:0xff
  9357 ms  0x1974 SECKEY_CreateECPrivateKey()
  9357 ms  0x1974 cx:0x7f8d036bcae8
  9358 ms     | 0x1974 EC_ValidatePublicKey()
  9358 ms     | 0x1974 ret:0x0
  9358 ms  0x1974 ret:0x7f8cffdc6820::7f8cffdc6820  90 b2 64 fa                                      ..d.
  9358 ms  0x1974 PK11_PubDeriveWithKDF()
  9358 ms  0x1974 seckey:0x7f8cffdc6820
  9358 ms     | 0x1974 EC_ValidatePublicKey()
  9358 ms     | 0x1974 ret:0x0
  9359 ms  0x1974 ret:0x7f8cfa3cea80
  9359 ms  0x1974 PK11_DeriveWithFlags()
  9359 ms  0x1974 basekey:0x7f8cfa3cea80
  9359 ms     | 0x1974 PK11_DeriveWithTemplate()
  9359 ms  0x1974 ret:0x7f8cf9572680
  9359 ms  0x1974 PK11_Derive()
  9359 ms  0x1974 basekey:0x7f8cf9572680
  9359 ms     | 0x1974 PK11_DeriveWithTemplate()
  9359 ms  0x1974 ret:0x7f8cf958a280
  9359 ms  0x1974 SECKEY_DestroyPrivateKey()
  9359 ms  0x1974 privk:0x7f8cffdc6820::7f8cffdc6820  90 b2 64 fa                                      ..d.
  9359 ms  0x1974 privk:0x7f8cffdc6820::7f8cffdc6820  e5 e5 e5 e5                                      ....
  9360 ms  0x1974 PK11_Encrypt()
  9360 ms  0x1974 symkey:0x7f8cf9597900
  9362 ms  SECKEY_ECParamsToKeySize()
  9362 ms  0x1974 ret:0xff
  9362 ms  0x1974 SECKEY_CreateECPrivateKey()
  9362 ms  0x1974 cx:0x7f8d036bc7a8
  9363 ms     | 0x1974 EC_ValidatePublicKey()
  9363 ms     | 0x1974 ret:0x0
  9363 ms  0x1974 ret:0x7f8cffdc9820::7f8cffdc9820  00 d6 37 fa                                      ..7.
  9363 ms  0x1974 PK11_PubDeriveWithKDF()
  9363 ms  0x1974 seckey:0x7f8cffdc9820
  9363 ms     | 0x1974 EC_ValidatePublicKey()
  9363 ms     | 0x1974 ret:0x0
  9364 ms  0x1974 ret:0x7f8cfa3cea80
  9364 ms  0x1974 PK11_DeriveWithFlags()
  9364 ms  0x1974 basekey:0x7f8cfa3cea80
  9364 ms     | 0x1974 PK11_DeriveWithTemplate()
  9364 ms  0x1974 ret:0x7f8cfa649380
  9364 ms  0x1974 PK11_Derive()
  9364 ms  0x1974 basekey:0x7f8cfa649380
  9364 ms     | 0x1974 PK11_DeriveWithTemplate()
  9364 ms  0x1974 ret:0x7f8cfaefb700
  9364 ms  0x1974 SECKEY_DestroyPrivateKey()
  9364 ms  0x1974 privk:0x7f8cffdc9820::7f8cffdc9820  00 d6 37 fa                                      ..7.
  9364 ms  0x1974 privk:0x7f8cffdc9820::7f8cffdc9820  e5 e5 e5 e5                                      ....
  9364 ms  0x1974 PK11_Encrypt()
  9364 ms  0x1974 symkey:0x7f8cfaefcb80
  9364 ms  0x1974 PK11_DeriveWithFlags()
  9364 ms  0x1974 basekey:0x7f8cfa649200
  9364 ms     | 0x1974 PK11_DeriveWithTemplate()
  9364 ms  0x1974 ret:0x7f8cfa3cea80
  9364 ms  0x1974 PK11_DeriveWithFlags()
  9364 ms  0x1974 basekey:0x7f8cfa649200
  9364 ms     | 0x1974 PK11_DeriveWithTemplate()
  9365 ms  0x1974 ret:0x7f8cfa3cea80
  9365 ms  0x1974 PK11_Encrypt()
  9365 ms  0x1974 symkey:0x7f8cf958b380
  9370 ms  0x1974 SSL_AuthCertificateComplete()
  9370 ms  0x1974 fd:0x7f8cffabd640
  9370 ms  0x1974 err:0x0
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf9572d80
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfa3cea80
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf9572d80
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfaefcf00
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf9572d80
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfaefcf80
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf958a380
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfb3b4a80
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf958a380
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfb3b4b00
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cfaefcf00
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfb3b4b00
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cfaefcf00
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8cfb3b4b80
  9370 ms     | 0x1974 PK11_DeriveWithFlags()
  9370 ms     | 0x1974 basekey:0x7f8cf958a380
  9370 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9370 ms     | 0x1974 ret:0x7f8ce7ded700
  9370 ms     | 0x1974 PK11_Encrypt()
  9370 ms     | 0x1974 symkey:0x7f8cfb3b4a80
  9376 ms     | 0x1974 PK11_DeriveWithFlags()
  9376 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9376 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9376 ms     | 0x1974 ret:0x7f8ce7ded700
  9376 ms     | 0x1974 PK11_DeriveWithFlags()
  9376 ms     | 0x1974 basekey:0x7f8cfa3cea80
  9376 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9376 ms     | 0x1974 ret:0x7f8cfb3b4b80
  9376 ms     | 0x1974 PK11_DeriveWithFlags()
  9376 ms     | 0x1974 basekey:0x7f8cf9572d80
  9376 ms     |    | 0x1974 PK11_DeriveWithTemplate()
  9376 ms     | 0x1974 ret:0x7f8cfb3b4a80
  9376 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9376 ms     | 0x1974 privk:0x7f8cffd97020::7f8cffd97020  c0 b9 64 fa                                      ..d.
  9376 ms     | 0x1974 privk:0x7f8cffd97020::7f8cffd97020  e5 e5 e5 e5                                      ....
  9376 ms     | 0x1974 SECKEY_DestroyPrivateKey()
  9376 ms     | 0x1974 privk:0x7f8cffd95820::7f8cffd95820  70 b4 64 fa                                      p.d.
  9376 ms     | 0x1974 privk:0x7f8cffd95820::7f8cffd95820  e5 e5 e5 e5                                      ....
  9376 ms  0x1974 PK11_Encrypt()
  9376 ms  0x1974 symkey:0x7f8cf958b380
  9377 ms  0x1974 PK11_Encrypt()
  9377 ms  0x1974 symkey:0x7f8ce7ded700
  9378 ms  0x1974 PK11_Encrypt()
  9378 ms  0x1974 symkey:0x7f8cf958b380
  9381 ms  0x1974 PK11_Encrypt()
  9381 ms  0x1974 symkey:0x7f8cf958b380
  9382 ms  0x1974 PK11_Encrypt()
  9382 ms  0x1974 symkey:0x7f8cf9571b00
           /* TID 0x197c */
  9410 ms  0x197c PR_Close()
  9410 ms  0x197c fd:0x7f8cff063c40
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafb340
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafb490
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafb730
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafb820
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbb50
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbd30
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbdc0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbeb0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbf10
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffafbf70
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffc15100
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffc15280
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffc152e0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffc15340
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffc15730
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca0280
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca02e0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca07f0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca0880
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca08e0
  9413 ms  0x197c PR_Close()
  9413 ms  0x197c fd:0x7f8cffca0940
  9415 ms  0x197c PR_Close()
  9415 ms  0x197c fd:0x7f8cff063c40
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafb340
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafb490
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafb730
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafb820
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbb50
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbd30
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbdc0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbeb0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbf10
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffafbf70
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffc15100
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffc15280
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffc152e0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffc15340
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffc15730
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0280
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca02e0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca07f0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0880
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca08e0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0940
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca09a0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0a00
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0a60
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0ac0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0b20
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0c70
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0d30
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0e50
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0ee0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffca0f40
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce61f0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6790
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce67f0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6850
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce68b0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6910
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6ac0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6b20
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6c10
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6ca0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6e20
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffce6ee0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcfe0d0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcfe520
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcfe9a0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcfef40
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff130
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff340
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff3a0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff400
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff490
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff5e0
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcff850
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcffd30
  9416 ms  0x197c PR_Close()
  9416 ms  0x197c fd:0x7f8cffcffe50
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd020a0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02100
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02370
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd024c0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02520
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02580
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02610
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02670
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd026d0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02790
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02880
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02d60
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02df0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd02ee0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd16070
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd160d0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd161c0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd16220
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd16280
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd16340
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd163d0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd1cd30
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd1cd90
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33340
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33970
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33a00
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33a60
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33af0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33b50
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33c10
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33ca0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33e50
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33ee0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffd33fa0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea1f0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea2b0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea310
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea370
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea3d0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea430
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea490
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea4f0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea580
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea5e0
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea640
  9417 ms  0x197c PR_Close()
  9417 ms  0x197c fd:0x7f8cffdea730
           /* TID 0x1974 */
  9421 ms  0x1974 PK11_DeriveWithFlags()
  9421 ms  0x1974 basekey:0x7f8cf9572d00
  9421 ms     | 0x1974 PK11_DeriveWithTemplate()
  9421 ms  0x1974 ret:0x7f8ce7dece00
  9421 ms  0x1974 PK11_DeriveWithFlags()
  9421 ms  0x1974 basekey:0x7f8cf9572d00
  9421 ms     | 0x1974 PK11_DeriveWithTemplate()
  9421 ms  0x1974 ret:0x7f8ce7dece00
  9421 ms  0x1974 PR_Close()
  9421 ms  0x1974 fd:0x7f8cff72e220
  9421 ms     | 0x1974 PK11_Encrypt()
  9421 ms     | 0x1974 symkey:0x7f8cf958a180
  9424 ms  0x1974 PK11_Encrypt()
  9424 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x197c */
  9427 ms  0x197c PR_Close()
  9427 ms  0x197c fd:0x7f8cff0ec0a0
           /* TID 0x1974 */
  9433 ms  0x1974 PK11_DeriveWithFlags()
  9433 ms  0x1974 basekey:0x7f8cf958a780
  9433 ms     | 0x1974 PK11_DeriveWithTemplate()
  9434 ms  0x1974 ret:0x7f8cf958a480
  9434 ms  0x1974 PK11_DeriveWithFlags()
  9434 ms  0x1974 basekey:0x7f8cf958a780
  9434 ms     | 0x1974 PK11_DeriveWithTemplate()
  9434 ms  0x1974 ret:0x7f8cf958a480
  9434 ms  0x1974 PR_Close()
  9434 ms  0x1974 fd:0x7f8cffa4aee0
  9434 ms     | 0x1974 PK11_Encrypt()
  9434 ms     | 0x1974 symkey:0x7f8ce7dece80
  9446 ms  0x1974 PK11_DeriveWithFlags()
  9446 ms  0x1974 basekey:0x7f8cf958a980
  9446 ms     | 0x1974 PK11_DeriveWithTemplate()
  9446 ms  0x1974 ret:0x7f8cfa3ce900
  9446 ms  0x1974 PK11_DeriveWithFlags()
  9446 ms  0x1974 basekey:0x7f8cf958a980
  9446 ms     | 0x1974 PK11_DeriveWithTemplate()
  9446 ms  0x1974 ret:0x7f8cfa3ce900
  9447 ms  0x1974 PR_Close()
  9447 ms  0x1974 fd:0x7f8cffa75a60
  9447 ms     | 0x1974 PK11_Encrypt()
  9447 ms     | 0x1974 symkey:0x7f8cf958a400
           /* TID 0x197c */
  9457 ms  0x197c PR_Close()
  9457 ms  0x197c fd:0x7f8cff8e23a0
           /* TID 0x1974 */
  9482 ms  0x1974 PK11_Encrypt()
  9482 ms  0x1974 symkey:0x7f8ce7c96980
  9483 ms  0x1974 PK11_Encrypt()
  9483 ms  0x1974 symkey:0x7f8cf958b380
  9484 ms  0x1974 PK11_DeriveWithFlags()
  9484 ms  0x1974 basekey:0x7f8cfb3b4a80
  9484 ms     | 0x1974 PK11_DeriveWithTemplate()
  9484 ms  0x1974 ret:0x7f8cf9572b80
  9484 ms  0x1974 PK11_DeriveWithFlags()
  9484 ms  0x1974 basekey:0x7f8cfb3b4a80
  9485 ms     | 0x1974 PK11_DeriveWithTemplate()
  9485 ms  0x1974 ret:0x7f8cf9572b80
  9485 ms  0x1974 PR_Close()
  9485 ms  0x1974 fd:0x7f8cffabd640
  9485 ms     | 0x1974 PK11_Encrypt()
  9485 ms     | 0x1974 symkey:0x7f8ce7ded700
           /* TID 0x197c */
  9496 ms  0x197c PR_Close()
  9496 ms  0x197c fd:0x7f8cfab7a790
  9498 ms  0x197c PR_Close()
  9498 ms  0x197c fd:0x7f8cffa4abe0
           /* TID 0x1974 */
  9502 ms  0x1974 PK11_Encrypt()
  9502 ms  0x1974 symkey:0x7f8ce7c96980
  9503 ms  0x1974 PK11_Encrypt()
  9503 ms  0x1974 symkey:0x7f8cf958b380
  9528 ms  0x1974 PR_Connect()
  9528 ms  0x1974 fd:0x7f8cffa75880
  9528 ms  0x1974 PR_Connect()
  9528 ms  0x1974 fd:0x7f8cffa4afa0
           /* TID 0x197c */
  9607 ms  0x197c PR_Close()
  9607 ms  0x197c fd:0x7f8cfab7a160
           /* TID 0x1974 */
  9621 ms  0x1974 PK11_Encrypt()
  9621 ms  0x1974 symkey:0x7f8cf958b380
  9624 ms  0x1974 PK11_Encrypt()
  9624 ms  0x1974 symkey:0x7f8ce7c96980
  9789 ms  0x1974 PK11_Encrypt()
  9789 ms  0x1974 symkey:0x7f8ce7c96980
  9790 ms  0x1974 PK11_Encrypt()
  9790 ms  0x1974 symkey:0x7f8cf958b380
           /* TID 0x197c */
  9803 ms  0x197c PR_Close()
  9803 ms  0x197c fd:0x7f8cffaf20a0
  9805 ms  0x197c PR_Close()
  9805 ms  0x197c fd:0x7f8cffaf23d0
           /* TID 0x1974 */
  9820 ms  0x1974 SSL_ImportFD()
  9820 ms  0x1974 ret:0x7f8cffabd670
  9820 ms  0x1974 SSL_AuthCertificateHook()
  9820 ms  0x1974 fd:0x7f8cffabd670
  9820 ms  0x1974 ret:0x0
  9820 ms  0x1974 PR_Connect()
  9820 ms  0x1974 fd:0x7f8cffabd670
  9852 ms  0x1974 PK11_Encrypt()
  9852 ms  0x1974 symkey:0x7f8ce7c96980
  9854 ms  0x1974 PK11_Encrypt()
  9854 ms  0x1974 symkey:0x7f8cf958b380
           /* TID 0x197c */
  9860 ms  0x197c PR_Close()
  9860 ms  0x197c fd:0x7f8cffa4af40
  9867 ms  0x197c PR_Close()
  9867 ms  0x197c fd:0x7f8cffa4af40
           /* TID 0x1974 */
  9876 ms  0x1974 SECKEY_CreateECPrivateKey()
  9876 ms  0x1974 cx:0x7f8d036bb5c8
  9877 ms     | 0x1974 EC_ValidatePublicKey()
  9877 ms     | 0x1974 ret:0x0
  9877 ms  0x1974 ret:0x7f8cffd92820::7f8cffd92820  30 cd 54 f9                                      0.T.
  9877 ms  0x1974 SECKEY_CreateECPrivateKey()
  9877 ms  0x1974 cx:0x7f8d036bb5c8
  9878 ms     | 0x1974 EC_ValidatePublicKey()
  9879 ms     | 0x1974 ret:0x0
  9879 ms  0x1974 ret:0x7f8cffd97020::7f8cffd97020  60 75 32 fa                                      `u2.
           /* TID 0x197c */
  9989 ms  0x197c PR_Close()
  9989 ms  0x197c fd:0x7f8cffafb340
 10192 ms  0x197c PR_Close()
 10192 ms  0x197c fd:0x7f8cffdea3d0
 10201 ms  0x197c PR_Close()
 10201 ms  0x197c fd:0x7f8cffdea400
 10205 ms  0x197c PR_Close()
 10205 ms  0x197c fd:0x7f8cffdea400
 10209 ms  0x197c PR_Close()
 10209 ms  0x197c fd:0x7f8cffdea400
           /* TID 0x1a0c */
 10364 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1a13 */
 10370 ms  0x1a13 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10370 ms  0x1a13 ret:0x0
 10370 ms  0x1a13 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10371 ms  0x1a13 ret:0x0
           /* TID 0x19d3 */
 10373 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10373 ms  0x19d3 ret:0x0
 10373 ms  0x19d3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10373 ms  0x19d3 ret:0x0
           /* TID 0x1974 */
 10374 ms  0x1974 PK11_DeriveWithFlags()
 10374 ms  0x1974 basekey:0x7f8cfaefcf80
 10374 ms     | 0x1974 PK11_DeriveWithTemplate()
 10374 ms  0x1974 ret:0x7f8cfaefcf00
 10374 ms  0x1974 PK11_Derive()
 10374 ms  0x1974 basekey:0x7f8cfaefcf00
 10374 ms     | 0x1974 PK11_DeriveWithTemplate()
 10374 ms  0x1974 ret:0x7f8cfa3cea80
 10377 ms  0x1974 PK11_Encrypt()
 10377 ms  0x1974 symkey:0x7f8cfc695080
 10378 ms  0x1974 PK11_Encrypt()
 10378 ms  0x1974 symkey:0x7f8cfc695080
 10379 ms  0x1974 PK11_Encrypt()
 10379 ms  0x1974 symkey:0x7f8cfc695080
           /* TID 0x1a0c */
 10381 ms  0x1a0c ret:0x0
 10381 ms  0x1a0c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10381 ms  0x1a0c ret:0x0
           /* TID 0x1974 */
 10382 ms  0x1974 PK11_Encrypt()
 10382 ms  0x1974 symkey:0x7f8cfc695080
 10384 ms  0x1974 PK11_Encrypt()
 10384 ms  0x1974 symkey:0x7f8cfc695080
 10384 ms  0x1974 PK11_Encrypt()
 10384 ms  0x1974 symkey:0x7f8cfc695080
 10386 ms  0x1974 PK11_Encrypt()
 10386 ms  0x1974 symkey:0x7f8cfc695080
 10386 ms  0x1974 PK11_Encrypt()
 10386 ms  0x1974 symkey:0x7f8cfc695080
 10387 ms  0x1974 PK11_Encrypt()
 10387 ms  0x1974 symkey:0x7f8cfc695080
 10388 ms  0x1974 PK11_Encrypt()
 10388 ms  0x1974 symkey:0x7f8cfc695080
 10388 ms  0x1974 PK11_Encrypt()
 10388 ms  0x1974 symkey:0x7f8cfc695080
 10389 ms  0x1974 PK11_Encrypt()
 10389 ms  0x1974 symkey:0x7f8cfc695080
 10389 ms  0x1974 PK11_Encrypt()
 10389 ms  0x1974 symkey:0x7f8cfc695080
 10389 ms  0x1974 PK11_Encrypt()
 10389 ms  0x1974 symkey:0x7f8cfc695080
 10391 ms  0x1974 PK11_Encrypt()
 10391 ms  0x1974 symkey:0x7f8cfc695080
 10391 ms  0x1974 PK11_Encrypt()
 10391 ms  0x1974 symkey:0x7f8cfc695080
 10392 ms  0x1974 PK11_Encrypt()
 10392 ms  0x1974 symkey:0x7f8ce7c96980
 10392 ms  0x1974 PK11_Encrypt()
 10392 ms  0x1974 symkey:0x7f8ce7c96980
 10393 ms  0x1974 PK11_Encrypt()
 10393 ms  0x1974 symkey:0x7f8cfc695080
 10393 ms  0x1974 PK11_Encrypt()
 10393 ms  0x1974 symkey:0x7f8ce8337580
 10395 ms  0x1974 PK11_Encrypt()
 10395 ms  0x1974 symkey:0x7f8ce8337580
 10396 ms  0x1974 PK11_Encrypt()
 10396 ms  0x1974 symkey:0x7f8ce8337580
 10396 ms  0x1974 PK11_Encrypt()
 10396 ms  0x1974 symkey:0x7f8ce7decf00
 10396 ms  0x1974 PK11_Encrypt()
 10396 ms  0x1974 symkey:0x7f8cf9571f80
 10397 ms  0x1974 PK11_Encrypt()
 10397 ms  0x1974 symkey:0x7f8ce7ded800
 10397 ms  0x1974 PK11_Encrypt()
 10397 ms  0x1974 symkey:0x7f8cf9572500
 10398 ms  0x1974 PK11_Encrypt()
 10398 ms  0x1974 symkey:0x7f8cfa3a4780
 10398 ms  0x1974 PK11_Encrypt()
 10398 ms  0x1974 symkey:0x7f8ce8337580
 10400 ms  0x1974 PK11_Encrypt()
 10400 ms  0x1974 symkey:0x7f8ce8337580
 10400 ms  0x1974 PK11_Encrypt()
 10400 ms  0x1974 symkey:0x7f8ce8337580
 10400 ms  0x1974 PK11_Encrypt()
 10400 ms  0x1974 symkey:0x7f8ce7c96980
 10401 ms  0x1974 SSL_AuthCertificateComplete()
 10401 ms  0x1974 fd:0x7f8cff063100
 10401 ms  0x1974 err:0x0
 10401 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10401 ms     | 0x1974 privk:0x7f8cff40d020::7f8cff40d020  80 13 33 fa                                      ..3.
 10401 ms     | 0x1974 privk:0x7f8cff40d020::7f8cff40d020  e5 e5 e5 e5                                      ....
 10401 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10401 ms     | 0x1974 privk:0x7f8cff409020::7f8cff409020  60 8a 32 fa                                      `.2.
 10401 ms     | 0x1974 privk:0x7f8cff409020::7f8cff409020  e5 e5 e5 e5                                      ....
 10401 ms  0x1974 PK11_Encrypt()
 10401 ms  0x1974 symkey:0x7f8cfc695080
 10401 ms  0x1974 PK11_Encrypt()
 10401 ms  0x1974 symkey:0x7f8cfc695080
 10402 ms  0x1974 PK11_Encrypt()
 10402 ms  0x1974 symkey:0x7f8ce7c96980
 10402 ms  0x1974 PK11_Encrypt()
 10402 ms  0x1974 symkey:0x7f8ce7c96980
 10402 ms  0x1974 PK11_Encrypt()
 10402 ms  0x1974 symkey:0x7f8cf9597900
 10403 ms  0x1974 PK11_Encrypt()
 10403 ms  0x1974 symkey:0x7f8cf9597900
 10403 ms  0x1974 SSL_AuthCertificateComplete()
 10403 ms  0x1974 fd:0x7f8cffa759a0
 10403 ms  0x1974 err:0x0
 10403 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10403 ms     | 0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  e0 1c 33 fa                                      ..3.
 10403 ms     | 0x1974 privk:0x7f8cffdb2820::7f8cffdb2820  e5 e5 e5 e5                                      ....
 10403 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10403 ms     | 0x1974 privk:0x7f8cffd97820::7f8cffd97820  10 15 33 fa                                      ..3.
 10403 ms     | 0x1974 privk:0x7f8cffd97820::7f8cffd97820  e5 e5 e5 e5                                      ....
           /* TID 0x1969 */
 10411 ms  0x1969 EC_ValidatePublicKey()
 10412 ms  0x1969 ret:0x0
 10412 ms  0x1969 EC_ValidatePublicKey()
           /* TID 0x1974 */
 10414 ms  0x1974 PK11_Encrypt()
 10414 ms  0x1974 symkey:0x7f8cf9597900
 10420 ms  0x1974 PR_Close()
 10420 ms  0x1974 fd:0x7f8cfab7a490
 10420 ms  0x1974 PK11_Encrypt()
 10420 ms  0x1974 symkey:0x7f8cfc695080
 10420 ms  0x1974 PK11_Encrypt()
 10420 ms  0x1974 symkey:0x7f8cfc695080
 10420 ms  0x1974 PK11_Encrypt()
 10420 ms  0x1974 symkey:0x7f8cfc695080
 10420 ms  0x1974 PK11_Encrypt()
 10420 ms  0x1974 symkey:0x7f8cfc695080
 10420 ms  0x1974 PK11_Encrypt()
 10420 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8cfc695080
 10421 ms  0x1974 PK11_Encrypt()
 10421 ms  0x1974 symkey:0x7f8ce8337580
           /* TID 0x1969 */
 10423 ms  0x1969 ret:0x0
 10423 ms  0x1969 EC_ValidatePublicKey()
 10425 ms  0x1969 ret:0x0
 10425 ms  0x1969 EC_ValidatePublicKey()
 10426 ms  0x1969 ret:0x0
 10426 ms  0x1969 EC_ValidatePublicKey()
           /* TID 0x1974 */
 10429 ms  0x1974 PK11_Encrypt()
 10429 ms  0x1974 symkey:0x7f8ce8337580
 10429 ms  0x1974 PK11_Encrypt()
 10429 ms  0x1974 symkey:0x7f8cfaefcb80
 10429 ms  0x1974 PR_Connect()
 10429 ms  0x1974 fd:0x7f8ce821aaf0
 10429 ms  0x1974 PK11_Encrypt()
 10429 ms  0x1974 symkey:0x7f8cf9597900
 10430 ms  0x1974 PK11_Encrypt()
 10430 ms  0x1974 symkey:0x7f8ce8337580
 10430 ms  0x1974 PR_Close()
 10430 ms  0x1974 fd:0x7f8cffa759a0
 10430 ms     | 0x1974 PK11_Encrypt()
 10430 ms     | 0x1974 symkey:0x7f8cfaefcb80
           /* TID 0x1969 */
 10430 ms  0x1969 ret:0x0
           /* TID 0x1974 */
 10430 ms  0x1974 PK11_Encrypt()
 10430 ms  0x1974 symkey:0x7f8cfc695080
 10430 ms  0x1974 PK11_Encrypt()
 10430 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
 10431 ms  0x1974 PK11_Encrypt()
 10431 ms  0x1974 symkey:0x7f8cfc695080
           /* TID 0x1969 */
 10431 ms  0x1969 EC_ValidatePublicKey()
 10432 ms  0x1969 ret:0x0
 10432 ms  0x1969 EC_ValidatePublicKey()
           /* TID 0x1974 */
 10434 ms  0x1974 PK11_Encrypt()
 10434 ms  0x1974 symkey:0x7f8ce7decf00
           /* TID 0x1969 */
 10435 ms  0x1969 ret:0x0
 10435 ms  0x1969 EC_ValidatePublicKey()
 10437 ms  0x1969 ret:0x0
 10437 ms  0x1969 EC_ValidatePublicKey()
 10438 ms  0x1969 ret:0x0
 10438 ms  0x1969 EC_ValidatePublicKey()
 10440 ms  0x1969 ret:0x0
           /* TID 0x1974 */
 10440 ms  0x1974 PK11_Encrypt()
 10440 ms  0x1974 symkey:0x7f8cf958b380
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8ce8337280
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8ce7ded480
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8ce7dfdf00
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8cf958af00
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8cfa3a5e80
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8ce7dfe400
 10441 ms  0x1974 PK11_Encrypt()
 10441 ms  0x1974 symkey:0x7f8ce7deda00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7dfda00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8cf9596b00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7c96a00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7f2f780
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7dfd500
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7decf00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8cf9571b00
 10442 ms  0x1974 PK11_Encrypt()
 10442 ms  0x1974 symkey:0x7f8ce7dfdc80
 10443 ms  0x1974 PK11_Encrypt()
 10443 ms  0x1974 symkey:0x7f8ce7dfd180
 10443 ms  0x1974 PK11_Encrypt()
 10443 ms  0x1974 symkey:0x7f8ce7c97000
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cffa75880
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cffa4afa0
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cffa84fa0
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cfaefa3a0
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cfa873730
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cfe0b4460
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cfaefa580
 10443 ms     | 0x1974 PK11_Encrypt()
 10443 ms     | 0x1974 symkey:0x7f8cf9571e00
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cfa636bb0
 10443 ms  0x1974 PR_Close()
 10443 ms  0x1974 fd:0x7f8cf9595160
 10443 ms     | 0x1974 PK11_Encrypt()
 10443 ms     | 0x1974 symkey:0x7f8ce7dfd880
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8cfa32e220
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8cfa32e400
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8ce8339c40
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8ce821adf0
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8ce7e82af0
 10444 ms     | 0x1974 PK11_Encrypt()
 10444 ms     | 0x1974 symkey:0x7f8ce82f7e00
 10444 ms  0x1974 PR_Close()
 10444 ms  0x1974 fd:0x7f8ce84502b0
 10444 ms     | 0x1974 PK11_Encrypt()
 10444 ms     | 0x1974 symkey:0x7f8ce8408a80
 10445 ms  0x1974 PR_Close()
 10445 ms  0x1974 fd:0x7f8ce8450070
 10445 ms  0x1974 PR_Close()
 10445 ms  0x1974 fd:0x7f8cf951c4f0
 10445 ms     | 0x1974 PK11_Encrypt()
 10445 ms     | 0x1974 symkey:0x7f8ce8407c00
 10445 ms  0x1974 PR_Close()
 10445 ms  0x1974 fd:0x7f8cfa636fd0
 10445 ms  0x1974 PR_Close()
 10445 ms  0x1974 fd:0x7f8cfa636700
 10445 ms     | 0x1974 PK11_Encrypt()
 10445 ms     | 0x1974 symkey:0x7f8cfa8fc680
 10445 ms  0x1974 PR_Close()
 10445 ms  0x1974 fd:0x7f8cf9725cd0
 10445 ms     | 0x1974 PK11_Encrypt()
 10445 ms     | 0x1974 symkey:0x7f8cfa3ce200
 10446 ms  0x1974 PR_Close()
 10446 ms  0x1974 fd:0x7f8cfa646eb0
 10446 ms     | 0x1974 PK11_Encrypt()
 10446 ms     | 0x1974 symkey:0x7f8ce7dfdc80
           /* TID 0x19c3 */
 10447 ms  0x19c3 PR_Close()
 10447 ms  0x19c3 fd:0x7f8ce821adf0
 10447 ms  0x19c3 PR_Close()
 10447 ms  0x19c3 fd:0x7f8ce821adf0
           /* TID 0x1974 */
 10450 ms  0x1974 PR_Close()
 10450 ms  0x1974 fd:0x7f8ce7f13d90
 10450 ms     | 0x1974 PK11_Encrypt()
 10450 ms     | 0x1974 symkey:0x7f8ce7f2f780
 10450 ms  0x1974 PR_Close()
 10450 ms  0x1974 fd:0x7f8ce821abb0
 10450 ms     | 0x1974 PK11_Encrypt()
 10450 ms     | 0x1974 symkey:0x7f8ce7dfd180
 10451 ms  0x1974 PR_Close()
 10451 ms  0x1974 fd:0x7f8ce81ebe80
 10451 ms     | 0x1974 PK11_Encrypt()
 10451 ms     | 0x1974 symkey:0x7f8ce7dfd500
 10451 ms  0x1974 PR_Close()
 10451 ms  0x1974 fd:0x7f8cf951c130
 10451 ms     | 0x1974 PK11_Encrypt()
 10451 ms     | 0x1974 symkey:0x7f8ce7dfda00
 10451 ms  0x1974 PR_Close()
 10451 ms  0x1974 fd:0x7f8cf9512d00
 10451 ms     | 0x1974 PK11_Encrypt()
 10451 ms     | 0x1974 symkey:0x7f8ce7dfe400
 10451 ms  0x1974 PR_Close()
 10451 ms  0x1974 fd:0x7f8ce8339b50
 10451 ms     | 0x1974 PK11_Encrypt()
 10451 ms     | 0x1974 symkey:0x7f8ce7ded480
 10452 ms  0x1974 PR_Close()
 10452 ms  0x1974 fd:0x7f8ce7f13550
 10452 ms     | 0x1974 PK11_Encrypt()
 10452 ms     | 0x1974 symkey:0x7f8ce7c96a00
 10453 ms  0x1974 PR_Close()
 10453 ms  0x1974 fd:0x7f8cf951c160
 10453 ms     | 0x1974 PK11_Encrypt()
 10453 ms     | 0x1974 symkey:0x7f8ce7dfdf00
 10453 ms  0x1974 PR_Close()
 10453 ms  0x1974 fd:0x7f8cfabfd310
 10453 ms     | 0x1974 PK11_Encrypt()
 10453 ms     | 0x1974 symkey:0x7f8cf958af00
 10453 ms  0x1974 PR_Close()
 10453 ms  0x1974 fd:0x7f8ce81ebfd0
 10453 ms     | 0x1974 PK11_Encrypt()
 10453 ms     | 0x1974 symkey:0x7f8ce7deda00
 10454 ms  0x1974 PR_Close()
 10454 ms  0x1974 fd:0x7f8ce7f135e0
 10454 ms     | 0x1974 PK11_Encrypt()
 10454 ms     | 0x1974 symkey:0x7f8ce7c97000
 10454 ms  0x1974 PR_Close()
 10454 ms  0x1974 fd:0x7f8cfaefa430
 10454 ms     | 0x1974 PK11_Encrypt()
 10454 ms     | 0x1974 symkey:0x7f8cf9596b00
 10454 ms  0x1974 PR_Close()
 10454 ms  0x1974 fd:0x7f8ce821a5e0
 10454 ms     | 0x1974 PK11_Encrypt()
 10454 ms     | 0x1974 symkey:0x7f8ce8337280
 10455 ms  0x1974 PR_Close()
 10455 ms  0x1974 fd:0x7f8cff063fd0
 10455 ms     | 0x1974 PK11_Encrypt()
 10455 ms     | 0x1974 symkey:0x7f8cf958b380
 10455 ms  0x1974 PR_Close()
 10455 ms  0x1974 fd:0x7f8cfaefabe0
 10455 ms     | 0x1974 PK11_Encrypt()
 10455 ms     | 0x1974 symkey:0x7f8cf9571b00
 10455 ms  0x1974 PR_Close()
 10455 ms  0x1974 fd:0x7f8cffa4a070
 10455 ms     | 0x1974 PK11_Encrypt()
 10455 ms     | 0x1974 symkey:0x7f8cfa3a5e80
 10455 ms  0x1974 PR_Close()
 10455 ms  0x1974 fd:0x7f8cfb882700
 10455 ms     | 0x1974 PK11_Encrypt()
 10455 ms     | 0x1974 symkey:0x7f8ce7decf00
           /* TID 0x1969 */
 10456 ms  0x1969 PR_Close()
 10456 ms  0x1969 fd:0x7f8cfa32eac0
 10456 ms  0x1969 PR_Close()
 10456 ms  0x1969 fd:0x7f8ce7ee1fd0
 10457 ms  0x1969 PR_Close()
 10457 ms  0x1969 fd:0x7f8ce7cff070
 10457 ms  0x1969 PR_Close()
 10457 ms  0x1969 fd:0x7f8ce7e82220
 10458 ms  0x1969 PR_Close()
 10458 ms  0x1969 fd:0x7f8ce7cff070
 10458 ms  0x1969 PR_Close()
 10458 ms  0x1969 fd:0x7f8ce7e82220
           /* TID 0x19d5 */
 10461 ms  0x19d5 PR_Close()
 10461 ms  0x19d5 fd:0x7f8ce7e82220
           /* TID 0x1974 */
 10464 ms  0x1974 PK11_Encrypt()
 10464 ms  0x1974 symkey:0x7f8cfc695080
 10464 ms  0x1974 PK11_Encrypt()
 10464 ms  0x1974 symkey:0x7f8cfc695080
 10475 ms  0x1974 PR_Close()
 10475 ms  0x1974 fd:0x7f8cfaefad90
 10475 ms     | 0x1974 PK11_Encrypt()
 10475 ms     | 0x1974 symkey:0x7f8cf9571f80
 10478 ms  0x1974 PK11_Encrypt()
 10478 ms  0x1974 symkey:0x7f8ce7ded800
 10479 ms  0x1974 PR_Close()
 10479 ms  0x1974 fd:0x7f8cfc63e880
 10479 ms     | 0x1974 PK11_Encrypt()
 10479 ms     | 0x1974 symkey:0x7f8ce7ded800
 10486 ms  0x1974 PK11_Encrypt()
 10486 ms  0x1974 symkey:0x7f8ce8337580
 10486 ms  0x1974 PR_Close()
 10486 ms  0x1974 fd:0x7f8ce821a0a0
 10486 ms     | 0x1974 PK11_Encrypt()
 10486 ms     | 0x1974 symkey:0x7f8ce8337580
           /* TID 0x1969 */
 10497 ms  0x1969 PR_Close()
 10497 ms  0x1969 fd:0x7f8ce7cff070
 10497 ms  0x1969 PR_Close()
 10497 ms  0x1969 fd:0x7f8ce821a1f0
           /* TID 0x1974 */
 10497 ms  0x1974 PK11_Encrypt()
 10497 ms  0x1974 symkey:0x7f8cfc695080
 10498 ms  0x1974 PK11_Encrypt()
 10498 ms  0x1974 symkey:0x7f8cfc695080
 10498 ms  0x1974 PK11_Encrypt()
 10498 ms  0x1974 symkey:0x7f8cfc695080
           /* TID 0x1969 */
 10499 ms  0x1969 PR_Close()
 10499 ms  0x1969 fd:0x7f8ce7cff070
 10499 ms  0x1969 PR_Close()
 10499 ms  0x1969 fd:0x7f8ce821a1f0
 10501 ms  0x1969 PR_Close()
 10501 ms  0x1969 fd:0x7f8d044c89a0
 10501 ms  0x1969 PR_Close()
 10501 ms  0x1969 fd:0x7f8d044c88b0
 10501 ms  0x1969 PR_Close()
 10501 ms  0x1969 fd:0x7f8d044c8a60
 10504 ms  0x1969 PR_Close()
 10504 ms  0x1969 fd:0x7f8ce821a370
 10505 ms  0x1969 PR_Close()
 10505 ms  0x1969 fd:0x7f8ce821a370
           /* TID 0x1974 */
 10507 ms  0x1974 PK11_Encrypt()
 10507 ms  0x1974 symkey:0x7f8cf9572500
 10507 ms  0x1974 PR_Close()
 10507 ms  0x1974 fd:0x7f8cfaefa250
 10507 ms     | 0x1974 PK11_Encrypt()
 10507 ms     | 0x1974 symkey:0x7f8cf9572500
 10508 ms  0x1974 PK11_Encrypt()
 10508 ms  0x1974 symkey:0x7f8ce7c96980
           /* TID 0x1969 */
 10509 ms  0x1969 PR_Close()
 10509 ms  0x1969 fd:0x7f8ce7cff070
 10509 ms  0x1969 PR_Close()
 10509 ms  0x1969 fd:0x7f8ce821a430
 10510 ms  0x1969 PR_Close()
 10510 ms  0x1969 fd:0x7f8ce7cff070
 10510 ms  0x1969 PR_Close()
 10510 ms  0x1969 fd:0x7f8ce821a430
 10513 ms  0x1969 PR_Close()
 10513 ms  0x1969 fd:0x7f8ce821a5e0
 10514 ms  0x1969 PR_Close()
 10514 ms  0x1969 fd:0x7f8ce821a5e0
           /* TID 0x1974 */
 10517 ms  0x1974 PK11_Encrypt()
 10517 ms  0x1974 symkey:0x7f8cf9597900
 10517 ms  0x1974 PR_Close()
 10517 ms  0x1974 fd:0x7f8cff063100
 10517 ms     | 0x1974 PK11_Encrypt()
 10517 ms     | 0x1974 symkey:0x7f8cf9597900
           /* TID 0x1969 */
 10518 ms  0x1969 PR_Close()
 10518 ms  0x1969 fd:0x7f8ce7cff070
 10518 ms  0x1969 PR_Close()
 10518 ms  0x1969 fd:0x7f8ce821a700
 10519 ms  0x1969 PR_Close()
 10519 ms  0x1969 fd:0x7f8ce7cff070
 10519 ms  0x1969 PR_Close()
 10519 ms  0x1969 fd:0x7f8ce821a700
 10521 ms  0x1969 PR_Close()
 10521 ms  0x1969 fd:0x7f8ce821a790
 10523 ms  0x1969 PR_Close()
 10523 ms  0x1969 fd:0x7f8ce821a790
           /* TID 0x1974 */
 10534 ms  0x1974 PK11_Encrypt()
 10534 ms  0x1974 symkey:0x7f8ce7c96980
 10535 ms  0x1974 PR_Close()
 10535 ms  0x1974 fd:0x7f8ce7f131c0
 10535 ms     | 0x1974 PK11_Encrypt()
 10535 ms     | 0x1974 symkey:0x7f8ce7c96980
           /* TID 0x1969 */
 10536 ms  0x1969 PR_Close()
 10536 ms  0x1969 fd:0x7f8ce7e824c0
 10537 ms  0x1969 PR_Close()
 10537 ms  0x1969 fd:0x7f8ce7e824c0
 10540 ms  0x1969 PR_Close()
 10540 ms  0x1969 fd:0x7f8ce7ee1e20
           /* TID 0x197c */
 10546 ms  0x197c PR_Close()
 10546 ms  0x197c fd:0x7f8ce7ee1280
 10551 ms  0x197c PR_Close()
 10551 ms  0x197c fd:0x7f8ce7f131c0
           /* TID 0x1974 */
 10553 ms  0x1974 PK11_Encrypt()
 10553 ms  0x1974 symkey:0x7f8cfa3a4780
 10553 ms  0x1974 PR_Close()
 10553 ms  0x1974 fd:0x7f8cfab7aaf0
 10553 ms     | 0x1974 PK11_Encrypt()
 10553 ms     | 0x1974 symkey:0x7f8cfa3a4780
           /* TID 0x197c */
 10553 ms  0x197c PR_Close()
 10553 ms  0x197c fd:0x7f8ce7f13370
           /* TID 0x19d5 */
 10572 ms  0x19d5 PR_Close()
 10572 ms  0x19d5 fd:0x7f8ce7ee1c10
 10574 ms  0x19d5 PR_Close()
 10574 ms  0x19d5 fd:0x7f8ce7ee1c10
           /* TID 0x1969 */
 10574 ms  0x1969 PR_Close()
 10574 ms  0x1969 fd:0x7f8ce7cff070
 10574 ms  0x1969 PR_Close()
 10574 ms  0x1969 fd:0x7f8ce8339760
           /* TID 0x19d5 */
 10589 ms  0x19d5 PR_Close()
 10589 ms  0x19d5 fd:0x7f8ce7e82220
           /* TID 0x197c */
 10590 ms  0x197c PR_Close()
 10590 ms  0x197c fd:0x7f8ce83be7f0
 10591 ms  0x197c PR_Close()
 10591 ms  0x197c fd:0x7f8ce83be7f0
 10592 ms  0x197c PR_Close()
 10592 ms  0x197c fd:0x7f8ce83be7f0
 10592 ms  0x197c PR_Close()
 10592 ms  0x197c fd:0x7f8ce83be7f0
 10594 ms  0x197c PR_Close()
 10594 ms  0x197c fd:0x7f8ce83be7f0
 10597 ms  0x197c PR_Close()
 10597 ms  0x197c fd:0x7f8ce83be7f0
 10603 ms  0x197c PR_Close()
 10603 ms  0x197c fd:0x7f8ce8450ee0
 10604 ms  0x197c PR_Close()
 10604 ms  0x197c fd:0x7f8ce8450ee0
 10606 ms  0x197c PR_Close()
 10606 ms  0x197c fd:0x7f8cf951c070
 10608 ms  0x197c PR_Close()
 10608 ms  0x197c fd:0x7f8cf951ca60
           /* TID 0x19d5 */
 10646 ms  0x19d5 PR_Close()
 10646 ms  0x19d5 fd:0x7f8ce7e82220
           /* TID 0x1974 */
 10655 ms  0x1974 SSL_ImportFD()
 10655 ms  0x1974 ret:0x7f8ce83bc280
 10655 ms  0x1974 SSL_AuthCertificateHook()
 10655 ms  0x1974 fd:0x7f8ce83bc280
 10655 ms  0x1974 ret:0x0
 10655 ms  0x1974 PR_Connect()
 10655 ms  0x1974 fd:0x7f8ce83bc280
           /* TID 0x196e */
 10667 ms  0x196e PR_Close()
 10667 ms  0x196e fd:0x7f8d032dedc0
           /* TID 0x1969 */
 10669 ms  0x1969 PR_Close()
 10669 ms  0x1969 fd:0x7f8ce7cff070
 10669 ms  0x1969 PR_Close()
 10669 ms  0x1969 fd:0x7f8ce7e82220
           /* TID 0x1974 */
 10670 ms  0x1974 PK11_Encrypt()
 10670 ms  0x1974 symkey:0x7f8cfc695080
 10671 ms  0x1974 PR_Close()
 10671 ms  0x1974 fd:0x7f8ce83bc280
 10671 ms  0x1974 PR_Close()
 10671 ms  0x1974 fd:0x7f8ce821aaf0
 10671 ms  0x1974 PR_Close()
 10671 ms  0x1974 fd:0x7f8cf9595910
 10671 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10671 ms     | 0x1974 privk:0x7f8ce7ebd820::7f8ce7ebd820  10 9f 32 e8                                      ..2.
 10671 ms     | 0x1974 privk:0x7f8ce7ebd820::7f8ce7ebd820  e5 e5 e5 e5                                      ....
 10671 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10671 ms     | 0x1974 privk:0x7f8ce7ea2820::7f8ce7ea2820  00 11 26 e8                                      ..&.
 10671 ms     | 0x1974 privk:0x7f8ce7ea2820::7f8ce7ea2820  e5 e5 e5 e5                                      ....
 10671 ms  0x1974 PR_Close()
 10671 ms  0x1974 fd:0x7f8cfa6ce790
 10671 ms     | 0x1974 PK11_Encrypt()
 10671 ms     | 0x1974 symkey:0x7f8cfc695080
 10671 ms  0x1974 PR_Close()
 10671 ms  0x1974 fd:0x7f8ce821ae80
 10672 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10672 ms     | 0x1974 privk:0x7f8ce7f73020::7f8ce7f73020  a0 11 3a e8                                      ..:.
 10672 ms     | 0x1974 privk:0x7f8ce7f73020::7f8ce7f73020  e5 e5 e5 e5                                      ....
 10672 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10672 ms     | 0x1974 privk:0x7f8ce7f70820::7f8ce7f70820  b0 1f 36 e8                                      ..6.
 10672 ms     | 0x1974 privk:0x7f8ce7f70820::7f8ce7f70820  e5 e5 e5 e5                                      ....
 10672 ms  0x1974 PR_Close()
 10672 ms  0x1974 fd:0x7f8cffabd670
 10672 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10672 ms     | 0x1974 privk:0x7f8cffd97020::7f8cffd97020  60 75 32 fa                                      `u2.
 10672 ms     | 0x1974 privk:0x7f8cffd97020::7f8cffd97020  e5 e5 e5 e5                                      ....
 10672 ms     | 0x1974 SECKEY_DestroyPrivateKey()
 10672 ms     | 0x1974 privk:0x7f8cffd92820::7f8cffd92820  30 cd 54 f9                                      0.T.
 10672 ms     | 0x1974 privk:0x7f8cffd92820::7f8cffd92820  e5 e5 e5 e5                                      ....
           /* TID 0x19d5 */
 10675 ms  0x19d5 PR_Close()
 10675 ms  0x19d5 fd:0x7f8ce7cff580
           /* TID 0x1974 */
 10681 ms  0x1974 PR_Close()
 10681 ms  0x1974 fd:0x7f8cf9725520
           /* TID 0x19cd */
 10695 ms  0x19cd PR_Close()
 10695 ms  0x19cd fd:0x7f8ce83bc340
           /* TID 0x196e */
 10719 ms  0x196e PR_Close()
 10719 ms  0x196e fd:0x7f8cff72e820
           /* TID 0x19c3 */
 12394 ms  0x19c3 PR_Close()
 12394 ms  0x19c3 fd:0x7f8ce7e82be0
 12395 ms  0x19c3 PR_Close()
 12395 ms  0x19c3 fd:0x7f8ce7cff160
 12395 ms  0x19c3 PR_Close()
 12395 ms  0x19c3 fd:0x7f8ce7cff160
 12395 ms  0x19c3 PR_Close()
 12395 ms  0x19c3 fd:0x7f8ce7cff160
           /* TID 0x19d5 */
 12396 ms  0x19d5 PR_Close()
 12396 ms  0x19d5 fd:0x7f8ce7cff250
           /* TID 0x197c */
 12400 ms  0x197c PR_Close()
 12400 ms  0x197c fd:0x7f8ce7f13c70
 12400 ms  0x197c PR_Close()
 12400 ms  0x197c fd:0x7f8ce81ebfa0
           /* TID 0x196e */
 12407 ms  0x196e PR_Close()
 12407 ms  0x196e fd:0x7f8cfa6365b0
           /* TID 0x1969 */
 12409 ms  0x1969 PR_Close()
 12409 ms  0x1969 fd:0x7f8ce7cff070
 12409 ms  0x1969 PR_Close()
 12409 ms  0x1969 fd:0x7f8ce83bc460
           /* TID 0x19d5 */
 12411 ms  0x19d5 PR_Close()
 12411 ms  0x19d5 fd:0x7f8ce81ebb50
 12413 ms  0x19d5 PR_Close()
 12413 ms  0x19d5 fd:0x7f8ce81eb4c0
 12537 ms  0x19d5 PR_Close()
 12537 ms  0x19d5 fd:0x7f8ce7e820d0
 12539 ms  0x19d5 PR_Close()
 12539 ms  0x19d5 fd:0x7f8ce7e820d0
 12547 ms  0x19d5 PR_Close()
 12547 ms  0x19d5 fd:0x7f8ce7e822b0
 12550 ms  0x19d5 PR_Close()
 12550 ms  0x19d5 fd:0x7f8ce7e82310
 12568 ms  0x19d5 PR_Close()
 12568 ms  0x19d5 fd:0x7f8ce7e828e0
 12575 ms  0x19d5 PR_Close()
 12575 ms  0x19d5 fd:0x7f8ce7e82e50
 12582 ms  0x19d5 PR_Close()
 12582 ms  0x19d5 fd:0x7f8ce7ee1250
 12593 ms  0x19d5 PR_Close()
 12593 ms  0x19d5 fd:0x7f8ce7ee13a0
 12594 ms  0x19d5 PR_Close()
 12594 ms  0x19d5 fd:0x7f8ce7ee13a0
           /* TID 0x1969 */
 12752 ms  0x1969 PR_Close()
 12752 ms  0x1969 fd:0x7f8ce7e824c0
 12752 ms  0x1969 PR_Close()
 12752 ms  0x1969 fd:0x7f8ce7e824c0
 12758 ms  0x1969 PR_Close()
 12758 ms  0x1969 fd:0x7f8d217da130
 12758 ms  0x1969 PR_Close()
 12758 ms  0x1969 fd:0x7f8d217da190
Process terminated
