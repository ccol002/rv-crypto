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
           /* TID 0x1c65 */
    17 ms  0x1c65 PR_Close()
    17 ms  0x1c65 fd:0x7f2e0a2d5640
           /* TID 0x1cd1 */
    17 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
    17 ms  0x1cd1 ret:0x0
           /* TID 0x1c5d */
    17 ms  0x1c5d SSL_AuthCertificateComplete()
    17 ms  0x1c5d fd:0x7f2e193939a0
    17 ms  0x1c5d err:0x0
    17 ms  0x1c5d PK11_Encrypt()
    17 ms  0x1c5d symkey:0x7f2e0a5fdb00
    58 ms  0x1c5d SECKEY_DestroyPrivateKey()
    58 ms  0x1c5d privk:0x7f2e0b678820::7f2e0b678820  b0 6a d8 18                                      .j..
    58 ms  0x1c5d privk:0x7f2e0b678820::7f2e0b678820  e5 e5 e5 e5                                      ....
    58 ms  0x1c5d SECKEY_DestroyPrivateKey()
    58 ms  0x1c5d privk:0x7f2e0b668820::7f2e0b668820  30 2d 07 14                                      0-..
    58 ms  0x1c5d privk:0x7f2e0b668820::7f2e0b668820  e5 e5 e5 e5                                      ....
   173 ms  0x1c5d SECKEY_DestroyPrivateKey()
   173 ms  0x1c5d privk:0x7f2e0bf76020::7f2e0bf76020  50 16 5f 0a                                      P._.
   174 ms  0x1c5d privk:0x7f2e0bf76020::7f2e0bf76020  e5 e5 e5 e5                                      ....
   174 ms  0x1c5d SECKEY_DestroyPrivateKey()
   174 ms  0x1c5d privk:0x7f2e0bf6c020::7f2e0bf6c020  70 14 5f 0a                                      p._.
   174 ms  0x1c5d privk:0x7f2e0bf6c020::7f2e0bf6c020  e5 e5 e5 e5                                      ....
   327 ms  0x1c5d SSL_ImportFD()
   327 ms  0x1c5d ret:0x7f2e0a2d57f0
   327 ms  0x1c5d SSL_AuthCertificateHook()
   327 ms  0x1c5d fd:0x7f2e0a2d57f0
   327 ms  0x1c5d ret:0x0
   327 ms  0x1c5d PR_Connect()
   327 ms  0x1c5d fd:0x7f2e0a2d57f0
   353 ms  0x1c5d SECKEY_CreateECPrivateKey()
   353 ms  0x1c5d cx:0x7f2e0a319588
   355 ms     | 0x1c5d EC_ValidatePublicKey()
   355 ms     | 0x1c5d ret:0x0
   355 ms  0x1c5d ret:0x7f2e0a58d820::7f2e0a58d820  90 97 2b 0a                                      ..+.
   355 ms  0x1c5d SECKEY_CreateECPrivateKey()
   355 ms  0x1c5d cx:0x7f2e0a319588
   357 ms     | 0x1c5d EC_ValidatePublicKey()
   361 ms     | 0x1c5d ret:0x0
   361 ms  0x1c5d ret:0x7f2e0a58f820::7f2e0a58f820  20 99 2b 0a                                       .+.
           /* TID 0x1c65 */
   397 ms  0x1c65 PR_Close()
   397 ms  0x1c65 fd:0x7f2e0a2d5700
           /* TID 0x1c5d */
   412 ms  SECKEY_ECParamsToKeySize()
   412 ms  0x1c5d ret:0x100
   413 ms  0x1c5d SECKEY_CreateECPrivateKey()
   413 ms  0x1c5d cx:0x7f2e0a319588
   415 ms     | 0x1c5d EC_ValidatePublicKey()
           /* TID 0x1cb7 */
   416 ms  0x1cb7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x1c5d */
   418 ms     | 0x1c5d ret:0x0
           /* TID 0x1cb7 */
   418 ms  0x1cb7 ret:0x0
           /* TID 0x1c5d */
   421 ms  0x1c5d ret:0x7f2e0a59c020::7f2e0a59c020  b0 4f 37 0a                                      .O7.
   422 ms  0x1c5d PK11_PubDeriveWithKDF()
   422 ms  0x1c5d seckey:0x7f2e0a59c020
   422 ms     | 0x1c5d EC_ValidatePublicKey()
   424 ms     | 0x1c5d ret:0x0
   433 ms  0x1c5d ret:0x7f2e0a836f80
   433 ms  0x1c5d PK11_DeriveWithFlags()
   433 ms  0x1c5d basekey:0x7f2e0a836f80
   434 ms     | 0x1c5d PK11_DeriveWithTemplate()
   434 ms  0x1c5d ret:0x7f2e0a3a3700
   434 ms  0x1c5d PK11_Derive()
   434 ms  0x1c5d basekey:0x7f2e0a3a3700
   434 ms     | 0x1c5d PK11_DeriveWithTemplate()
   434 ms  0x1c5d ret:0x7f2e0a3a3780
   434 ms  0x1c5d SECKEY_DestroyPrivateKey()
   434 ms  0x1c5d privk:0x7f2e0a59c020::7f2e0a59c020  b0 4f 37 0a                                      .O7.
   434 ms  0x1c5d privk:0x7f2e0a59c020::7f2e0a59c020  e5 e5 e5 e5                                      ....
   434 ms  0x1c5d PK11_Encrypt()
   434 ms  0x1c5d symkey:0x7f2e0a3a3900
   434 ms  0x1c5d SSL_AuthCertificateComplete()
   434 ms  0x1c5d fd:0x7f2e0a2d57f0
   434 ms  0x1c5d err:0x0
   434 ms  0x1c5d PK11_Encrypt()
   434 ms  0x1c5d symkey:0x7f2e0a3a3900
   486 ms  0x1c5d SECKEY_DestroyPrivateKey()
   486 ms  0x1c5d privk:0x7f2e0a58f820::7f2e0a58f820  20 99 2b 0a                                       .+.
   486 ms  0x1c5d privk:0x7f2e0a58f820::7f2e0a58f820  e5 e5 e5 e5                                      ....
   486 ms  0x1c5d SECKEY_DestroyPrivateKey()
   486 ms  0x1c5d privk:0x7f2e0a58d820::7f2e0a58d820  90 97 2b 0a                                      ..+.
   486 ms  0x1c5d privk:0x7f2e0a58d820::7f2e0a58d820  e5 e5 e5 e5                                      ....
   489 ms  0x1c5d PK11_Encrypt()
   489 ms  0x1c5d symkey:0x7f2e0a3a3900
   518 ms  0x1c5d PK11_Encrypt()
   518 ms  0x1c5d symkey:0x7f2e0a3a3900
   548 ms  0x1c5d PK11_Encrypt()
   548 ms  0x1c5d symkey:0x7f2e0a3a3900
   577 ms  0x1c5d PK11_Encrypt()
   577 ms  0x1c5d symkey:0x7f2e0a3a3900
   695 ms  0x1c5d PK11_Encrypt()
   695 ms  0x1c5d symkey:0x7f2e0a3a3900
   728 ms  0x1c5d PK11_Encrypt()
   728 ms  0x1c5d symkey:0x7f2e0a3a3900
   759 ms  0x1c5d PK11_Encrypt()
   759 ms  0x1c5d symkey:0x7f2e0a3a3900
           /* TID 0x1cae */
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a2d58e0
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a321280
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a2d58e0
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a321280
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a2d58e0
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a321280
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a2d58e0
   787 ms  0x1cae PR_Close()
   787 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a2d58e0
   788 ms  0x1cae PR_Close()
   788 ms  0x1cae fd:0x7f2e0a321280
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a2d58e0
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a321280
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a2d58e0
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a321280
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a2d58e0
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a321280
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a2d58e0
   789 ms  0x1cae PR_Close()
   789 ms  0x1cae fd:0x7f2e0a321280
   792 ms  0x1cae PR_Close()
   792 ms  0x1cae fd:0x7f2e0a2d58e0
   792 ms  0x1cae PR_Close()
   792 ms  0x1cae fd:0x7f2e0a2d58e0
   794 ms  0x1cae PR_Close()
   794 ms  0x1cae fd:0x7f2e0a2d58e0
   794 ms  0x1cae PR_Close()
   794 ms  0x1cae fd:0x7f2e0a321250
   797 ms  0x1cae PR_Close()
   797 ms  0x1cae fd:0x7f2e0a321250
   797 ms  0x1cae PR_Close()
   797 ms  0x1cae fd:0x7f2e0a321250
   799 ms  0x1cae PR_Close()
   799 ms  0x1cae fd:0x7f2e0a321250
   800 ms  0x1cae PR_Close()
   800 ms  0x1cae fd:0x7f2e0a321250
           /* TID 0x1cbb */
   939 ms  0x1cbb PR_Close()
   939 ms  0x1cbb fd:0x7f2e0a321640
           /* TID 0x1cae */
   985 ms  0x1cae PR_Close()
   985 ms  0x1cae fd:0x7f2e0a321250
   988 ms  0x1cae PR_Close()
   988 ms  0x1cae fd:0x7f2e0a321250
           /* TID 0x1cbb */
  1063 ms  0x1cbb PR_Close()
  1063 ms  0x1cbb fd:0x7f2e0a321640
           /* TID 0x1cae */
  1211 ms  0x1cae PR_Close()
  1211 ms  0x1cae fd:0x7f2e0a321250
  1211 ms  0x1cae PR_Close()
  1211 ms  0x1cae fd:0x7f2e0a321250
  1228 ms  0x1cae PR_Close()
  1228 ms  0x1cae fd:0x7f2e0a321250
  1228 ms  0x1cae PR_Close()
  1228 ms  0x1cae fd:0x7f2e0a321250
  1324 ms  0x1cae PR_Close()
  1324 ms  0x1cae fd:0x7f2e0a321250
  1324 ms  0x1cae PR_Close()
  1324 ms  0x1cae fd:0x7f2e0a321250
           /* TID 0x1cab */
  1324 ms  0x1cab PR_Close()
  1324 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
  1325 ms  0x1cab PR_Close()
  1325 ms  0x1cab fd:0x7f2e0a321250
           /* TID 0x1cbb */
  1705 ms  0x1cbb PR_Close()
  1705 ms  0x1cbb fd:0x7f2e0a321280
  1828 ms  0x1cbb PR_Close()
  1828 ms  0x1cbb fd:0x7f2e0a321280
  1831 ms  0x1cbb PR_Close()
  1831 ms  0x1cbb fd:0x7f2e0a321280
           /* TID 0x1c65 */
  3226 ms  0x1c65 PR_Close()
  3226 ms  0x1c65 fd:0x7f2e0a321250
  3226 ms  0x1c65 PR_Close()
  3226 ms  0x1c65 fd:0x7f2e0a321640
           /* TID 0x1c5d */
  4611 ms  0x1c5d SSL_ImportFD()
  4611 ms  0x1c5d ret:0x7f2df94faa30
  4611 ms  0x1c5d SSL_AuthCertificateHook()
  4611 ms  0x1c5d fd:0x7f2df94faa30
  4611 ms  0x1c5d ret:0x0
  4611 ms  0x1c5d PR_Connect()
  4611 ms  0x1c5d fd:0x7f2df94faa30
  4862 ms  0x1c5d SSL_ImportFD()
  4862 ms  0x1c5d ret:0x7f2df94fabe0
  4862 ms  0x1c5d SSL_AuthCertificateHook()
  4862 ms  0x1c5d fd:0x7f2df94fabe0
  4862 ms  0x1c5d ret:0x0
  4862 ms  0x1c5d PR_Connect()
  4862 ms  0x1c5d fd:0x7f2df94fabe0
  4907 ms  0x1c5d SECKEY_CreateECPrivateKey()
  4907 ms  0x1c5d cx:0x7f2e0a3198c8
  4908 ms     | 0x1c5d EC_ValidatePublicKey()
  4908 ms     | 0x1c5d ret:0x0
  4908 ms  0x1c5d ret:0x7f2df94dd820::7f2df94dd820  20 c9 49 f9                                       .I.
  4908 ms  0x1c5d SECKEY_CreateECPrivateKey()
  4908 ms  0x1c5d cx:0x7f2e0a3198c8
  4909 ms     | 0x1c5d EC_ValidatePublicKey()
  4911 ms     | 0x1c5d ret:0x0
  4911 ms  0x1c5d ret:0x7f2df94df820::7f2df94df820  f0 cb 49 f9                                      ..I.
  5170 ms  0x1c5d SECKEY_CreateECPrivateKey()
  5170 ms  0x1c5d cx:0x7f2e0a319a68
  5170 ms     | 0x1c5d EC_ValidatePublicKey()
  5170 ms     | 0x1c5d ret:0x0
  5170 ms  0x1c5d ret:0x7f2df94e2020::7f2df94e2020  c0 c9 49 f9                                      ..I.
  5170 ms  0x1c5d SECKEY_CreateECPrivateKey()
  5170 ms  0x1c5d cx:0x7f2e0a319a68
  5171 ms     | 0x1c5d EC_ValidatePublicKey()
  5173 ms     | 0x1c5d ret:0x0
  5173 ms  0x1c5d ret:0x7f2df94e4020::7f2df94e4020  c0 ce 49 f9                                      ..I.
  5215 ms  SECKEY_ECParamsToKeySize()
  5215 ms  0x1c5d ret:0x100
  5215 ms  SECKEY_ECParamsToBasePointOrderLen()
  5215 ms  0x1c5d ret:0x100
  5215 ms  SECKEY_ECParamsToBasePointOrderLen()
  5215 ms  0x1c5d ret:0x100
  5216 ms  0x1c5d EC_ValidatePublicKey()
  5218 ms  0x1c5d ret:0x0
  5225 ms  SECKEY_ECParamsToKeySize()
  5225 ms  0x1c5d ret:0xff
  5225 ms  0x1c5d SECKEY_CreateECPrivateKey()
  5225 ms  0x1c5d cx:0x7f2e0a3198c8
  5226 ms     | 0x1c5d EC_ValidatePublicKey()
  5226 ms     | 0x1c5d ret:0x0
  5226 ms  0x1c5d ret:0x7f2df94f1020::7f2df94f1020  80 43 37 0a                                      .C7.
  5226 ms  0x1c5d PK11_PubDeriveWithKDF()
  5226 ms  0x1c5d seckey:0x7f2df94f1020
  5226 ms     | 0x1c5d EC_ValidatePublicKey()
  5226 ms     | 0x1c5d ret:0x0
  5227 ms  0x1c5d ret:0x7f2e0a836f80
  5227 ms  0x1c5d PK11_DeriveWithFlags()
  5227 ms  0x1c5d basekey:0x7f2e0a836f80
  5227 ms     | 0x1c5d PK11_DeriveWithTemplate()
  5227 ms  0x1c5d ret:0x7f2e0b6c9300
  5227 ms  0x1c5d PK11_Derive()
  5227 ms  0x1c5d basekey:0x7f2e0b6c9300
  5227 ms     | 0x1c5d PK11_DeriveWithTemplate()
  5227 ms  0x1c5d ret:0x7f2e0baa2c80
  5227 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5227 ms  0x1c5d privk:0x7f2df94f1020::7f2df94f1020  80 43 37 0a                                      .C7.
  5227 ms  0x1c5d privk:0x7f2df94f1020::7f2df94f1020  e5 e5 e5 e5                                      ....
  5228 ms  0x1c5d PK11_Encrypt()
  5228 ms  0x1c5d symkey:0x7f2e0baa2f00
  5228 ms  0x1c5d PR_Connect()
  5228 ms  0x1c5d fd:0x7f2e0a39d040
           /* TID 0x1cd1 */
  5288 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5288 ms  0x1cd1 ret:0x0
  5288 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5288 ms  0x1cd1 ret:0x0
           /* TID 0x1c65 */
  5290 ms  0x1c65 PR_Close()
  5290 ms  0x1c65 fd:0x7f2e0a2d5e20
           /* TID 0x1c5d */
  5324 ms  0x1c5d SSL_AuthCertificateComplete()
  5324 ms  0x1c5d fd:0x7f2df94faa30
  5324 ms  0x1c5d err:0x0
  5335 ms  0x1c5d PK11_Encrypt()
  5335 ms  0x1c5d symkey:0x7f2e0baa2f00
  5335 ms  0x1c5d PK11_Encrypt()
  5335 ms  0x1c5d symkey:0x7f2e0baa2f00
  5512 ms  SECKEY_ECParamsToKeySize()
  5512 ms  0x1c5d ret:0x100
  5512 ms  SECKEY_ECParamsToBasePointOrderLen()
  5512 ms  0x1c5d ret:0x100
  5512 ms  SECKEY_ECParamsToBasePointOrderLen()
  5512 ms  0x1c5d ret:0x100
  5512 ms  0x1c5d EC_ValidatePublicKey()
  5519 ms  0x1c5d ret:0x0
  5531 ms  SECKEY_ECParamsToKeySize()
  5531 ms  0x1c5d ret:0xff
  5531 ms  0x1c5d SECKEY_CreateECPrivateKey()
  5531 ms  0x1c5d cx:0x7f2e0a319a68
  5532 ms     | 0x1c5d EC_ValidatePublicKey()
  5532 ms     | 0x1c5d ret:0x0
  5532 ms  0x1c5d ret:0x7f2df94f1820::7f2df94f1820  d0 4d 37 0a                                      .M7.
  5532 ms  0x1c5d PK11_PubDeriveWithKDF()
  5532 ms  0x1c5d seckey:0x7f2df94f1820
  5532 ms     | 0x1c5d EC_ValidatePublicKey()
  5532 ms     | 0x1c5d ret:0x0
  5533 ms  0x1c5d ret:0x7f2e0a836f80
  5533 ms  0x1c5d PK11_DeriveWithFlags()
  5533 ms  0x1c5d basekey:0x7f2e0a836f80
  5533 ms     | 0x1c5d PK11_DeriveWithTemplate()
  5534 ms  0x1c5d ret:0x7f2e0baa2d80
  5534 ms  0x1c5d PK11_Derive()
  5534 ms  0x1c5d basekey:0x7f2e0baa2d80
  5534 ms     | 0x1c5d PK11_DeriveWithTemplate()
  5534 ms  0x1c5d ret:0x7f2e0baa3100
  5534 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5534 ms  0x1c5d privk:0x7f2df94f1820::7f2df94f1820  d0 4d 37 0a                                      .M7.
  5534 ms  0x1c5d privk:0x7f2df94f1820::7f2df94f1820  e5 e5 e5 e5                                      ....
  5534 ms  0x1c5d PK11_Encrypt()
  5534 ms  0x1c5d symkey:0x7f2e0baa3480
  5536 ms  0x1c5d SSL_AuthCertificateComplete()
  5536 ms  0x1c5d fd:0x7f2df94fabe0
  5536 ms  0x1c5d err:0x0
  5536 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5536 ms  0x1c5d privk:0x7f2df94df820::7f2df94df820  f0 cb 49 f9                                      ..I.
  5537 ms  0x1c5d privk:0x7f2df94df820::7f2df94df820  e5 e5 e5 e5                                      ....
  5537 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5537 ms  0x1c5d privk:0x7f2df94dd820::7f2df94dd820  20 c9 49 f9                                       .I.
  5537 ms  0x1c5d privk:0x7f2df94dd820::7f2df94dd820  e5 e5 e5 e5                                      ....
  5537 ms  0x1c5d PK11_Encrypt()
  5537 ms  0x1c5d symkey:0x7f2e0baa2f00
  5537 ms  0x1c5d PK11_Encrypt()
  5537 ms  0x1c5d symkey:0x7f2e0baa3480
           /* TID 0x1c74 */
  5826 ms  0x1c74 PR_Close()
  5826 ms  0x1c74 fd:0x7f2e0a2d5b80
           /* TID 0x1c5d */
  5855 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5855 ms  0x1c5d privk:0x7f2df94e4020::7f2df94e4020  c0 ce 49 f9                                      ..I.
  5855 ms  0x1c5d privk:0x7f2df94e4020::7f2df94e4020  e5 e5 e5 e5                                      ....
  5855 ms  0x1c5d SECKEY_DestroyPrivateKey()
  5855 ms  0x1c5d privk:0x7f2df94e2020::7f2df94e2020  c0 c9 49 f9                                      ..I.
  5855 ms  0x1c5d privk:0x7f2df94e2020::7f2df94e2020  e5 e5 e5 e5                                      ....
  5855 ms  0x1c5d PR_Close()
  5855 ms  0x1c5d fd:0x7f2df94fabe0
  5855 ms     | 0x1c5d PK11_Encrypt()
  5855 ms     | 0x1c5d symkey:0x7f2e0baa3480
  6380 ms  0x1c5d SSL_ImportFD()
  6380 ms  0x1c5d ret:0x7f2e0a2d5fd0
  6380 ms  0x1c5d SSL_AuthCertificateHook()
  6380 ms  0x1c5d fd:0x7f2e0a2d5fd0
  6380 ms  0x1c5d ret:0x0
  6380 ms  0x1c5d PR_Connect()
  6380 ms  0x1c5d fd:0x7f2e0a2d5fd0
  6630 ms  0x1c5d SSL_ImportFD()
  6631 ms  0x1c5d ret:0x7f2e0a5f7640
  6631 ms  0x1c5d SSL_AuthCertificateHook()
  6631 ms  0x1c5d fd:0x7f2e0a5f7640
  6631 ms  0x1c5d ret:0x0
  6631 ms  0x1c5d PR_Connect()
  6631 ms  0x1c5d fd:0x7f2e0a5f7640
  6735 ms  0x1c5d SECKEY_CreateECPrivateKey()
  6735 ms  0x1c5d cx:0x7f2e0a319a68
  6737 ms     | 0x1c5d EC_ValidatePublicKey()
  6737 ms     | 0x1c5d ret:0x0
  6737 ms  0x1c5d ret:0x7f2df94e0020::7f2df94e0020  20 94 3a 0a                                       .:.
  6737 ms  0x1c5d SECKEY_CreateECPrivateKey()
  6737 ms  0x1c5d cx:0x7f2e0a319a68
  6739 ms     | 0x1c5d EC_ValidatePublicKey()
  6740 ms     | 0x1c5d ret:0x0
  6740 ms  0x1c5d ret:0x7f2df94e2820::7f2df94e2820  a0 96 3a 0a                                      ..:.
  6982 ms  0x1c5d SECKEY_CreateECPrivateKey()
  6982 ms  0x1c5d cx:0x7f2e0a31aaa8
  6984 ms     | 0x1c5d EC_ValidatePublicKey()
  6984 ms     | 0x1c5d ret:0x0
  6984 ms  0x1c5d ret:0x7f2df94ec820::7f2df94ec820  e0 92 3a 0a                                      ..:.
  6984 ms  0x1c5d SECKEY_CreateECPrivateKey()
  6984 ms  0x1c5d cx:0x7f2e0a31aaa8
  6987 ms     | 0x1c5d EC_ValidatePublicKey()
  6992 ms     | 0x1c5d ret:0x0
  6992 ms  0x1c5d ret:0x7f2df94f5820::7f2df94f5820  20 14 5f 0a                                       ._.
  7159 ms  SECKEY_ECParamsToKeySize()
  7159 ms  0x1c5d ret:0x100
  7159 ms  SECKEY_ECParamsToBasePointOrderLen()
  7159 ms  0x1c5d ret:0x100
  7159 ms  SECKEY_ECParamsToBasePointOrderLen()
  7159 ms  0x1c5d ret:0x100
  7160 ms  0x1c5d EC_ValidatePublicKey()
  7164 ms  0x1c5d ret:0x0
  7171 ms  SECKEY_ECParamsToKeySize()
  7171 ms  0x1c5d ret:0x100
  7171 ms  0x1c5d SECKEY_CreateECPrivateKey()
  7171 ms  0x1c5d cx:0x7f2e0a319a68
  7173 ms     | 0x1c5d EC_ValidatePublicKey()
  7177 ms     | 0x1c5d ret:0x0
  7177 ms  0x1c5d ret:0x7f2e0a58e820::7f2e0a58e820  20 d9 46 0b                                       .F.
  7178 ms  0x1c5d PK11_PubDeriveWithKDF()
  7178 ms  0x1c5d seckey:0x7f2e0a58e820
  7178 ms     | 0x1c5d EC_ValidatePublicKey()
  7182 ms     | 0x1c5d ret:0x0
  7185 ms  0x1c5d ret:0x7f2e0baa3100
  7185 ms  0x1c5d PK11_DeriveWithFlags()
  7185 ms  0x1c5d basekey:0x7f2e0baa3100
  7185 ms     | 0x1c5d PK11_DeriveWithTemplate()
  7185 ms  0x1c5d ret:0x7f2e0baa2d80
  7185 ms  0x1c5d PK11_Derive()
  7185 ms  0x1c5d basekey:0x7f2e0baa2d80
  7185 ms     | 0x1c5d PK11_DeriveWithTemplate()
  7185 ms  0x1c5d ret:0x7f2e0a836f80
  7185 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7185 ms  0x1c5d privk:0x7f2e0a58e820::7f2e0a58e820  20 d9 46 0b                                       .F.
  7185 ms  0x1c5d privk:0x7f2e0a58e820::7f2e0a58e820  e5 e5 e5 e5                                      ....
  7186 ms  0x1c5d PK11_Encrypt()
  7186 ms  0x1c5d symkey:0x7f2e0baa3180
           /* TID 0x1c65 */
  7216 ms  0x1c65 PR_Close()
  7216 ms  0x1c65 fd:0x7f2e0a5f7730
           /* TID 0x1cd1 */
  7217 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7217 ms  0x1cd1 ret:0x0
  7217 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7217 ms  0x1cd1 ret:0x0
           /* TID 0x1c5d */
  7218 ms  0x1c5d SSL_AuthCertificateComplete()
  7218 ms  0x1c5d fd:0x7f2e0a2d5fd0
  7218 ms  0x1c5d err:0x0
  7219 ms  0x1c5d PK11_Encrypt()
  7219 ms  0x1c5d symkey:0x7f2e0baa3180
  7221 ms  0x1c5d PK11_Encrypt()
  7221 ms  0x1c5d symkey:0x7f2e0baa3180
  7394 ms  SECKEY_ECParamsToKeySize()
  7394 ms  0x1c5d ret:0x100
  7394 ms  SECKEY_ECParamsToBasePointOrderLen()
  7394 ms  0x1c5d ret:0x100
  7394 ms  SECKEY_ECParamsToBasePointOrderLen()
  7394 ms  0x1c5d ret:0x100
  7394 ms  0x1c5d EC_ValidatePublicKey()
  7399 ms  0x1c5d ret:0x0
  7404 ms  SECKEY_ECParamsToKeySize()
  7404 ms  0x1c5d ret:0x100
  7404 ms  0x1c5d SECKEY_CreateECPrivateKey()
  7404 ms  0x1c5d cx:0x7f2e0a31aaa8
  7406 ms     | 0x1c5d EC_ValidatePublicKey()
  7410 ms     | 0x1c5d ret:0x0
  7410 ms  0x1c5d ret:0x7f2e0a58f020::7f2e0a58f020  b0 50 60 0b                                      .P`.
  7411 ms  0x1c5d PK11_PubDeriveWithKDF()
  7411 ms  0x1c5d seckey:0x7f2e0a58f020
  7411 ms     | 0x1c5d EC_ValidatePublicKey()
  7415 ms     | 0x1c5d ret:0x0
  7418 ms  0x1c5d ret:0x7f2e0baa3100
  7418 ms  0x1c5d PK11_DeriveWithFlags()
  7418 ms  0x1c5d basekey:0x7f2e0baa3100
  7418 ms     | 0x1c5d PK11_DeriveWithTemplate()
  7418 ms  0x1c5d ret:0x7f2e0a398200
  7418 ms  0x1c5d PK11_Derive()
  7418 ms  0x1c5d basekey:0x7f2e0a398200
  7418 ms     | 0x1c5d PK11_DeriveWithTemplate()
  7418 ms  0x1c5d ret:0x7f2e0a398280
  7418 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7418 ms  0x1c5d privk:0x7f2e0a58f020::7f2e0a58f020  b0 50 60 0b                                      .P`.
  7419 ms  0x1c5d privk:0x7f2e0a58f020::7f2e0a58f020  e5 e5 e5 e5                                      ....
  7419 ms  0x1c5d PK11_Encrypt()
  7419 ms  0x1c5d symkey:0x7f2e0a398400
  7419 ms  0x1c5d SSL_AuthCertificateComplete()
  7419 ms  0x1c5d fd:0x7f2e0a5f7640
  7419 ms  0x1c5d err:0x0
  7419 ms  0x1c5d PK11_Encrypt()
  7419 ms  0x1c5d symkey:0x7f2e0a398400
  7573 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7573 ms  0x1c5d privk:0x7f2df94e2820::7f2df94e2820  a0 96 3a 0a                                      ..:.
  7574 ms  0x1c5d privk:0x7f2df94e2820::7f2df94e2820  e5 e5 e5 e5                                      ....
  7574 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7574 ms  0x1c5d privk:0x7f2df94e0020::7f2df94e0020  20 94 3a 0a                                       .:.
  7574 ms  0x1c5d privk:0x7f2df94e0020::7f2df94e0020  e5 e5 e5 e5                                      ....
  7574 ms  0x1c5d PK11_Encrypt()
  7574 ms  0x1c5d symkey:0x7f2e0baa3180
  7799 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7799 ms  0x1c5d privk:0x7f2df94f5820::7f2df94f5820  20 14 5f 0a                                       ._.
  7800 ms  0x1c5d privk:0x7f2df94f5820::7f2df94f5820  e5 e5 e5 e5                                      ....
  7800 ms  0x1c5d SECKEY_DestroyPrivateKey()
  7800 ms  0x1c5d privk:0x7f2df94ec820::7f2df94ec820  e0 92 3a 0a                                      ..:.
  7800 ms  0x1c5d privk:0x7f2df94ec820::7f2df94ec820  e5 e5 e5 e5                                      ....
  7801 ms  0x1c5d PR_Close()
  7801 ms  0x1c5d fd:0x7f2e0a5f7640
  7801 ms     | 0x1c5d PK11_Encrypt()
  7801 ms     | 0x1c5d symkey:0x7f2e0a398400
           /* TID 0x1c74 */
  8039 ms  0x1c74 PR_Close()
  8039 ms  0x1c74 fd:0x7f2e0a5f7610
           /* TID 0x1c5d */
  8498 ms  0x1c5d SSL_ImportFD()
  8498 ms  0x1c5d ret:0x7f2e0a5f7760
  8499 ms  0x1c5d SSL_AuthCertificateHook()
  8499 ms  0x1c5d fd:0x7f2e0a5f7760
  8499 ms  0x1c5d ret:0x0
  8499 ms  0x1c5d PR_Connect()
  8499 ms  0x1c5d fd:0x7f2e0a5f7760
  8749 ms  0x1c5d SSL_ImportFD()
  8749 ms  0x1c5d ret:0x7f2e0a5f7910
  8749 ms  0x1c5d SSL_AuthCertificateHook()
  8749 ms  0x1c5d fd:0x7f2e0a5f7910
  8749 ms  0x1c5d ret:0x0
  8749 ms  0x1c5d PR_Connect()
  8749 ms  0x1c5d fd:0x7f2e0a5f7910
  8839 ms  0x1c5d SECKEY_CreateECPrivateKey()
  8839 ms  0x1c5d cx:0x7f2e0a31af88
  8839 ms     | 0x1c5d EC_ValidatePublicKey()
  8839 ms     | 0x1c5d ret:0x0
  8839 ms  0x1c5d ret:0x7f2df94e2820::7f2df94e2820  a0 96 3a 0a                                      ..:.
  8839 ms  0x1c5d SECKEY_CreateECPrivateKey()
  8839 ms  0x1c5d cx:0x7f2e0a31af88
  8840 ms     | 0x1c5d EC_ValidatePublicKey()
  8841 ms     | 0x1c5d ret:0x0
  8842 ms  0x1c5d ret:0x7f2df94ec820::7f2df94ec820  a0 8b 60 0a                                      ..`.
  9090 ms  0x1c5d SECKEY_CreateECPrivateKey()
  9090 ms  0x1c5d cx:0x7f2e0a31b128
  9091 ms     | 0x1c5d EC_ValidatePublicKey()
  9091 ms     | 0x1c5d ret:0x0
  9092 ms  0x1c5d ret:0x7f2df94f5820::7f2df94f5820  70 b4 81 0a                                      p...
  9092 ms  0x1c5d SECKEY_CreateECPrivateKey()
  9092 ms  0x1c5d cx:0x7f2e0a31b128
  9094 ms     | 0x1c5d EC_ValidatePublicKey()
  9098 ms     | 0x1c5d ret:0x0
  9098 ms  0x1c5d ret:0x7f2e0a58d820::7f2e0a58d820  50 51 60 0b                                      PQ`.
  9247 ms  SECKEY_ECParamsToKeySize()
  9247 ms  0x1c5d ret:0x100
  9247 ms  SECKEY_ECParamsToBasePointOrderLen()
  9247 ms  0x1c5d ret:0x100
  9247 ms  SECKEY_ECParamsToBasePointOrderLen()
  9247 ms  0x1c5d ret:0x100
  9248 ms  0x1c5d EC_ValidatePublicKey()
  9253 ms  0x1c5d ret:0x0
  9259 ms  SECKEY_ECParamsToKeySize()
  9259 ms  0x1c5d ret:0x100
  9259 ms  0x1c5d SECKEY_CreateECPrivateKey()
  9259 ms  0x1c5d cx:0x7f2e0a31af88
  9261 ms     | 0x1c5d EC_ValidatePublicKey()
  9266 ms     | 0x1c5d ret:0x0
  9266 ms  0x1c5d ret:0x7f2e0a599020::7f2e0a599020  70 59 60 0b                                      pY`.
  9267 ms  0x1c5d PK11_PubDeriveWithKDF()
  9267 ms  0x1c5d seckey:0x7f2e0a599020
  9267 ms     | 0x1c5d EC_ValidatePublicKey()
  9271 ms     | 0x1c5d ret:0x0
  9274 ms  0x1c5d ret:0x7f2e0a398280
  9274 ms  0x1c5d PK11_DeriveWithFlags()
  9274 ms  0x1c5d basekey:0x7f2e0a398280
  9274 ms     | 0x1c5d PK11_DeriveWithTemplate()
  9274 ms  0x1c5d ret:0x7f2e0a398200
  9274 ms  0x1c5d PK11_Derive()
  9274 ms  0x1c5d basekey:0x7f2e0a398200
  9274 ms     | 0x1c5d PK11_DeriveWithTemplate()
  9274 ms  0x1c5d ret:0x7f2e0baa3100
  9274 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9274 ms  0x1c5d privk:0x7f2e0a599020::7f2e0a599020  70 59 60 0b                                      pY`.
  9275 ms  0x1c5d privk:0x7f2e0a599020::7f2e0a599020  e5 e5 e5 e5                                      ....
  9275 ms  0x1c5d PK11_Encrypt()
  9275 ms  0x1c5d symkey:0x7f2e0a398300
           /* TID 0x1c65 */
  9308 ms  0x1c65 PR_Close()
  9308 ms  0x1c65 fd:0x7f2e0a5f7be0
           /* TID 0x1cd1 */
  9309 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9309 ms  0x1cd1 ret:0x0
  9309 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9309 ms  0x1cd1 ret:0x0
           /* TID 0x1c5d */
  9310 ms  0x1c5d SSL_AuthCertificateComplete()
  9310 ms  0x1c5d fd:0x7f2e0a5f7760
  9310 ms  0x1c5d err:0x0
  9311 ms  0x1c5d PK11_Encrypt()
  9311 ms  0x1c5d symkey:0x7f2e0a398300
  9312 ms  0x1c5d PK11_Encrypt()
  9312 ms  0x1c5d symkey:0x7f2e0a398300
           /* TID 0x1c65 */
  9449 ms  0x1c65 PR_Close()
  9449 ms  0x1c65 fd:0x7f2e0a5f78b0
  9450 ms  0x1c65 PR_Close()
  9450 ms  0x1c65 fd:0x7f2e0a5f7d30
  9450 ms  0x1c65 PR_Close()
  9450 ms  0x1c65 fd:0x7f2e0a5f78b0
           /* TID 0x1c5d */
  9495 ms  SECKEY_ECParamsToKeySize()
  9495 ms  0x1c5d ret:0x100
  9495 ms  SECKEY_ECParamsToBasePointOrderLen()
  9495 ms  0x1c5d ret:0x100
  9495 ms  SECKEY_ECParamsToBasePointOrderLen()
  9495 ms  0x1c5d ret:0x100
  9495 ms  0x1c5d EC_ValidatePublicKey()
  9500 ms  0x1c5d ret:0x0
  9508 ms  SECKEY_ECParamsToKeySize()
  9508 ms  0x1c5d ret:0x100
  9509 ms  0x1c5d SECKEY_CreateECPrivateKey()
  9509 ms  0x1c5d cx:0x7f2e0a31b128
  9510 ms     | 0x1c5d EC_ValidatePublicKey()
  9514 ms     | 0x1c5d ret:0x0
  9514 ms  0x1c5d ret:0x7f2e0a599820::7f2e0a599820  d0 58 60 0b                                      .X`.
  9514 ms  0x1c5d PK11_PubDeriveWithKDF()
  9514 ms  0x1c5d seckey:0x7f2e0a599820
  9514 ms     | 0x1c5d EC_ValidatePublicKey()
  9519 ms     | 0x1c5d ret:0x0
  9522 ms  0x1c5d ret:0x7f2e0a398280
  9522 ms  0x1c5d PK11_DeriveWithFlags()
  9522 ms  0x1c5d basekey:0x7f2e0a398280
  9522 ms     | 0x1c5d PK11_DeriveWithTemplate()
  9522 ms  0x1c5d ret:0x7f2e0a399600
  9522 ms  0x1c5d PK11_Derive()
  9522 ms  0x1c5d basekey:0x7f2e0a399600
  9522 ms     | 0x1c5d PK11_DeriveWithTemplate()
  9522 ms  0x1c5d ret:0x7f2e0a399680
  9522 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9522 ms  0x1c5d privk:0x7f2e0a599820::7f2e0a599820  d0 58 60 0b                                      .X`.
  9522 ms  0x1c5d privk:0x7f2e0a599820::7f2e0a599820  e5 e5 e5 e5                                      ....
  9522 ms  0x1c5d PK11_Encrypt()
  9522 ms  0x1c5d symkey:0x7f2e0a399800
  9523 ms  0x1c5d SSL_AuthCertificateComplete()
  9523 ms  0x1c5d fd:0x7f2e0a5f7910
  9523 ms  0x1c5d err:0x0
  9523 ms  0x1c5d PK11_Encrypt()
  9523 ms  0x1c5d symkey:0x7f2e0a399800
  9647 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9647 ms  0x1c5d privk:0x7f2df94ec820::7f2df94ec820  a0 8b 60 0a                                      ..`.
  9647 ms  0x1c5d privk:0x7f2df94ec820::7f2df94ec820  e5 e5 e5 e5                                      ....
  9648 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9648 ms  0x1c5d privk:0x7f2df94e2820::7f2df94e2820  a0 96 3a 0a                                      ..:.
  9648 ms  0x1c5d privk:0x7f2df94e2820::7f2df94e2820  e5 e5 e5 e5                                      ....
  9648 ms  0x1c5d PK11_Encrypt()
  9648 ms  0x1c5d symkey:0x7f2e0a398300
  9894 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9894 ms  0x1c5d privk:0x7f2e0a58d820::7f2e0a58d820  50 51 60 0b                                      PQ`.
  9894 ms  0x1c5d privk:0x7f2e0a58d820::7f2e0a58d820  e5 e5 e5 e5                                      ....
  9895 ms  0x1c5d SECKEY_DestroyPrivateKey()
  9895 ms  0x1c5d privk:0x7f2df94f5820::7f2df94f5820  70 b4 81 0a                                      p...
  9895 ms  0x1c5d privk:0x7f2df94f5820::7f2df94f5820  e5 e5 e5 e5                                      ....
  9895 ms  0x1c5d PR_Close()
  9895 ms  0x1c5d fd:0x7f2e0a5f7910
  9895 ms     | 0x1c5d PK11_Encrypt()
  9895 ms     | 0x1c5d symkey:0x7f2e0a399800
           /* TID 0x1c74 */
 10075 ms  0x1c74 PR_Close()
 10075 ms  0x1c74 fd:0x7f2e0a5f78e0
           /* TID 0x1c5d */
 10082 ms  0x1c5d PK11_Encrypt()
 10082 ms  0x1c5d symkey:0x7f2e0baa2f00
           /* TID 0x1c74 */
 10366 ms  0x1c74 PR_Close()
 10366 ms  0x1c74 fd:0x7f2e0a5f7d60
           /* TID 0x1c5d */
 10371 ms  0x1c5d PK11_Encrypt()
 10371 ms  0x1c5d symkey:0x7f2e0baa2f00
 11068 ms  0x1c5d PR_Connect()
 11068 ms  0x1c5d fd:0x7f2e0a5f7cd0
 11319 ms  0x1c5d PR_Connect()
 11319 ms  0x1c5d fd:0x7f2e0a5f7d30
           /* TID 0x1c65 */
 11668 ms  0x1c65 PR_Close()
 11668 ms  0x1c65 fd:0x7f2e0b62c0d0
           /* TID 0x1c74 */
 11675 ms  0x1c74 PR_Close()
 11675 ms  0x1c74 fd:0x7f2e0b62c100
           /* TID 0x1c5d */
 11940 ms  0x1c5d PR_Connect()
 11940 ms  0x1c5d fd:0x7f2e1055f580
 11941 ms  0x1c5d PR_Connect()
 11941 ms  0x1c5d fd:0x7f2e0b4234f0
 11942 ms  0x1c5d PR_Connect()
 11942 ms  0x1c5d fd:0x7f2e0c4feca0
           /* TID 0x1c65 */
 12090 ms  0x1c65 PR_Close()
 12090 ms  0x1c65 fd:0x7f2e1055faf0
 12101 ms  0x1c65 PR_Close()
 12101 ms  0x1c65 fd:0x7f2e0c4fef10
 12245 ms  0x1c65 PR_Close()
 12245 ms  0x1c65 fd:0x7f2e0a8141c0
 12354 ms  0x1c65 PR_Close()
 12354 ms  0x1c65 fd:0x7f2e0b62cac0
           /* TID 0x1c5d */
 12365 ms  0x1c5d PR_Connect()
 12365 ms  0x1c5d fd:0x7f2e105fc0a0
           /* TID 0x1c65 */
 12367 ms  0x1c65 PR_Close()
 12367 ms  0x1c65 fd:0x7f2e0bcd15e0
           /* TID 0x1c5d */
 12441 ms  0x1c5d PR_Connect()
 12441 ms  0x1c5d fd:0x7f2e105f5a30
           /* TID 0x1c65 */
 12564 ms  0x1c65 PR_Close()
 12564 ms  0x1c65 fd:0x7f2e0bcd15e0
           /* TID 0x1c5d */
 12576 ms  0x1c5d PR_Connect()
 12576 ms  0x1c5d fd:0x7f2e0bfdfd90
 12583 ms  0x1c5d PR_Connect()
 12583 ms  0x1c5d fd:0x7f2e0bfdfdf0
 12651 ms  0x1c5d PR_Connect()
 12651 ms  0x1c5d fd:0x7f2e0c4fe1f0
 12652 ms  0x1c5d PR_Connect()
 12652 ms  0x1c5d fd:0x7f2e0bfdff70
           /* TID 0x1c65 */
 12665 ms  0x1c65 PR_Close()
 12665 ms  0x1c65 fd:0x7f2e0c4fecd0
 12687 ms  0x1c65 PR_Close()
 12687 ms  0x1c65 fd:0x7f2e0bcd1190
 12689 ms  0x1c65 PR_Close()
 12689 ms  0x1c65 fd:0x7f2e0bcd1190
           /* TID 0x1c5d */
 12691 ms  0x1c5d PR_Connect()
 12691 ms  0x1c5d fd:0x7f2e10142eb0
           /* TID 0x1c65 */
 12722 ms  0x1c65 PR_Close()
 12722 ms  0x1c65 fd:0x7f2e0bfdfe20
 12785 ms  0x1c65 PR_Close()
 12785 ms  0x1c65 fd:0x7f2e0b423fa0
 12790 ms  0x1c65 PR_Close()
 12790 ms  0x1c65 fd:0x7f2e0b423fa0
 12857 ms  0x1c65 PR_Close()
 12857 ms  0x1c65 fd:0x7f2e0b423fa0
           /* TID 0x1c5d */
 12962 ms  0x1c5d SSL_ImportFD()
 12963 ms  0x1c5d ret:0x7f2e0c4fef10
 12963 ms  0x1c5d SSL_AuthCertificateHook()
 12963 ms  0x1c5d fd:0x7f2e0c4fef10
 12963 ms  0x1c5d ret:0x0
 12963 ms  0x1c5d PR_Connect()
 12963 ms  0x1c5d fd:0x7f2e0c4fef10
 13008 ms  0x1c5d PR_Connect()
 13008 ms  0x1c5d fd:0x7f2e0d7aa1c0
 13214 ms  0x1c5d SSL_ImportFD()
 13214 ms  0x1c5d ret:0x7f2e105c9550
 13214 ms  0x1c5d SSL_AuthCertificateHook()
 13214 ms  0x1c5d fd:0x7f2e105c9550
 13214 ms  0x1c5d ret:0x0
 13214 ms  0x1c5d PR_Connect()
 13214 ms  0x1c5d fd:0x7f2e105c9550
           /* TID 0x1c65 */
 13229 ms  0x1c65 PR_Close()
 13229 ms  0x1c65 fd:0x7f2e0b423fa0
           /* TID 0x1c5d */
 13316 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13316 ms  0x1c5d cx:0x7f2e0a31b948
 13317 ms     | 0x1c5d EC_ValidatePublicKey()
 13317 ms     | 0x1c5d ret:0x0
 13317 ms  0x1c5d ret:0x7f2e1045e820::7f2e1045e820  20 be c6 0b                                       ...
 13317 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13317 ms  0x1c5d cx:0x7f2e0a31b948
 13319 ms     | 0x1c5d EC_ValidatePublicKey()
 13323 ms     | 0x1c5d ret:0x0
 13323 ms  0x1c5d ret:0x7f2e10462820::7f2e10462820  00 e1 74 0d                                      ..t.
 13420 ms  0x1c5d SSL_ImportFD()
 13420 ms  0x1c5d ret:0x7f2e105fc580
 13421 ms  0x1c5d SSL_AuthCertificateHook()
 13421 ms  0x1c5d fd:0x7f2e105fc580
 13421 ms  0x1c5d ret:0x0
 13421 ms  0x1c5d PR_Connect()
 13421 ms  0x1c5d fd:0x7f2e105fc580
 13562 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13562 ms  0x1c5d cx:0x7f2e0a31bae8
 13564 ms     | 0x1c5d EC_ValidatePublicKey()
 13564 ms     | 0x1c5d ret:0x0
 13564 ms  0x1c5d ret:0x7f2e10467820::7f2e10467820  c0 4e 78 0d                                      .Nx.
 13565 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13565 ms  0x1c5d cx:0x7f2e0a31bae8
 13567 ms     | 0x1c5d EC_ValidatePublicKey()
 13572 ms     | 0x1c5d ret:0x0
 13572 ms  0x1c5d ret:0x7f2e1046d020::7f2e1046d020  a0 0b 16 0f                                      ....
 13625 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13625 ms  0x1c5d cx:0x7f2e0a31bc88
 13628 ms     | 0x1c5d EC_ValidatePublicKey()
 13628 ms     | 0x1c5d ret:0x0
 13628 ms  0x1c5d ret:0x7f2e105b5020::7f2e105b5020  80 0d 16 0f                                      ....
 13628 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13628 ms  0x1c5d cx:0x7f2e0a31bc88
 13630 ms     | 0x1c5d EC_ValidatePublicKey()
 13635 ms     | 0x1c5d ret:0x0
 13635 ms  0x1c5d ret:0x7f2e10867020::7f2e10867020  e0 2c a9 0f                                      .,..
 13738 ms  SECKEY_ECParamsToKeySize()
 13738 ms  0x1c5d ret:0x100
 13738 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13738 ms  0x1c5d cx:0x7f2e0a31b948
 13740 ms     | 0x1c5d EC_ValidatePublicKey()
 13745 ms     | 0x1c5d ret:0x0
 13745 ms  0x1c5d ret:0x7f2e10885020::7f2e10885020  90 fc 54 10                                      ..T.
 13745 ms  0x1c5d PK11_PubDeriveWithKDF()
 13745 ms  0x1c5d seckey:0x7f2e10885020
 13745 ms     | 0x1c5d EC_ValidatePublicKey()
 13751 ms     | 0x1c5d ret:0x0
 13755 ms  0x1c5d ret:0x7f2e0a399680
 13755 ms  0x1c5d PK11_DeriveWithFlags()
 13755 ms  0x1c5d basekey:0x7f2e0a399680
 13755 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13758 ms  0x1c5d ret:0x7f2e0a399600
 13758 ms  0x1c5d PK11_Derive()
 13758 ms  0x1c5d basekey:0x7f2e0a399600
 13758 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13758 ms  0x1c5d ret:0x7f2e0a398280
 13758 ms  0x1c5d SECKEY_DestroyPrivateKey()
 13758 ms  0x1c5d privk:0x7f2e10885020::7f2e10885020  90 fc 54 10                                      ..T.
 13758 ms  0x1c5d privk:0x7f2e10885020::7f2e10885020  e5 e5 e5 e5                                      ....
 13759 ms  0x1c5d PK11_Encrypt()
 13759 ms  0x1c5d symkey:0x7f2e0a399700
           /* TID 0x1c65 */
 13795 ms  0x1c65 PR_Close()
 13795 ms  0x1c65 fd:0x7f2e0d774b50
           /* TID 0x1cd1 */
 13796 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13797 ms  0x1cd1 ret:0x0
 13797 ms  0x1cd1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13797 ms  0x1cd1 ret:0x0
           /* TID 0x1c5d */
 13797 ms  0x1c5d SSL_AuthCertificateComplete()
 13797 ms  0x1c5d fd:0x7f2e0c4fef10
 13797 ms  0x1c5d err:0x0
 13798 ms  0x1c5d PK11_Encrypt()
 13798 ms  0x1c5d symkey:0x7f2e0a399700
 13798 ms  0x1c5d PK11_Encrypt()
 13798 ms  0x1c5d symkey:0x7f2e0a399700
 13848 ms  SECKEY_ECParamsToKeySize()
 13849 ms  0x1c5d ret:0x100
 13849 ms  SECKEY_ECParamsToBasePointOrderLen()
 13849 ms  0x1c5d ret:0x100
 13849 ms  SECKEY_ECParamsToBasePointOrderLen()
 13849 ms  0x1c5d ret:0x100
 13849 ms  0x1c5d EC_ValidatePublicKey()
 13854 ms  0x1c5d ret:0x0
 13862 ms  SECKEY_ECParamsToKeySize()
 13862 ms  0x1c5d ret:0x100
 13862 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13862 ms  0x1c5d cx:0x7f2e0a31bc88
 13863 ms     | 0x1c5d EC_ValidatePublicKey()
 13867 ms     | 0x1c5d ret:0x0
 13868 ms  0x1c5d ret:0x7f2e10885020::7f2e10885020  70 f9 53 10                                      p.S.
 13868 ms  0x1c5d PK11_PubDeriveWithKDF()
 13868 ms  0x1c5d seckey:0x7f2e10885020
 13868 ms     | 0x1c5d EC_ValidatePublicKey()
 13871 ms     | 0x1c5d ret:0x0
 13874 ms  0x1c5d ret:0x7f2e0a399680
 13874 ms  0x1c5d PK11_DeriveWithFlags()
 13874 ms  0x1c5d basekey:0x7f2e0a399680
 13874 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13874 ms  0x1c5d ret:0x7f2e0bc1bd00
 13874 ms  0x1c5d PK11_Derive()
 13874 ms  0x1c5d basekey:0x7f2e0bc1bd00
 13874 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13874 ms  0x1c5d ret:0x7f2e0bc1bd80
 13874 ms  0x1c5d SECKEY_DestroyPrivateKey()
 13874 ms  0x1c5d privk:0x7f2e10885020::7f2e10885020  70 f9 53 10                                      p.S.
 13874 ms  0x1c5d privk:0x7f2e10885020::7f2e10885020  e5 e5 e5 e5                                      ....
 13875 ms  0x1c5d PK11_Encrypt()
 13875 ms  0x1c5d symkey:0x7f2e0bc1bf00
 13875 ms  0x1c5d SSL_AuthCertificateComplete()
 13875 ms  0x1c5d fd:0x7f2e105fc580
 13875 ms  0x1c5d err:0x0
 13876 ms  0x1c5d PK11_Encrypt()
 13876 ms  0x1c5d symkey:0x7f2e0bc1bf00
 13876 ms  0x1c5d PK11_Encrypt()
 13876 ms  0x1c5d symkey:0x7f2e0bc1bf00
 13975 ms  SECKEY_ECParamsToKeySize()
 13976 ms  0x1c5d ret:0x100
 13976 ms  0x1c5d SECKEY_CreateECPrivateKey()
 13976 ms  0x1c5d cx:0x7f2e0a31bae8
 13980 ms     | 0x1c5d EC_ValidatePublicKey()
 13985 ms     | 0x1c5d ret:0x0
 13985 ms  0x1c5d ret:0x7f2e10b80820::7f2e10b80820  30 e8 55 10                                      0.U.
 13985 ms  0x1c5d PK11_PubDeriveWithKDF()
 13985 ms  0x1c5d seckey:0x7f2e10b80820
 13985 ms     | 0x1c5d EC_ValidatePublicKey()
 13990 ms     | 0x1c5d ret:0x0
 13995 ms  0x1c5d ret:0x7f2e0a399680
 13995 ms  0x1c5d PK11_DeriveWithFlags()
 13995 ms  0x1c5d basekey:0x7f2e0a399680
 13995 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13995 ms  0x1c5d ret:0x7f2e0a378d00
 13995 ms  0x1c5d PK11_Derive()
 13995 ms  0x1c5d basekey:0x7f2e0a378d00
 13995 ms     | 0x1c5d PK11_DeriveWithTemplate()
 13995 ms  0x1c5d ret:0x7f2e0bcca900
 13995 ms  0x1c5d SECKEY_DestroyPrivateKey()
 13995 ms  0x1c5d privk:0x7f2e10b80820::7f2e10b80820  30 e8 55 10                                      0.U.
 13995 ms  0x1c5d privk:0x7f2e10b80820::7f2e10b80820  e5 e5 e5 e5                                      ....
 13996 ms  0x1c5d PK11_Encrypt()
 13996 ms  0x1c5d symkey:0x7f2e0bccac00
 13996 ms  0x1c5d SSL_AuthCertificateComplete()
 13996 ms  0x1c5d fd:0x7f2e105c9550
 13996 ms  0x1c5d err:0x0
 13997 ms  0x1c5d PK11_Encrypt()
 13997 ms  0x1c5d symkey:0x7f2e0bccac00
 14080 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14080 ms  0x1c5d privk:0x7f2e10867020::7f2e10867020  e0 2c a9 0f                                      .,..
 14080 ms  0x1c5d privk:0x7f2e10867020::7f2e10867020  e5 e5 e5 e5                                      ....
 14080 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14080 ms  0x1c5d privk:0x7f2e105b5020::7f2e105b5020  80 0d 16 0f                                      ....
 14081 ms  0x1c5d privk:0x7f2e105b5020::7f2e105b5020  e5 e5 e5 e5                                      ....
 14081 ms  0x1c5d PK11_Encrypt()
 14081 ms  0x1c5d symkey:0x7f2e0bc1bf00
 14144 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14144 ms  0x1c5d privk:0x7f2e10462820::7f2e10462820  00 e1 74 0d                                      ..t.
 14144 ms  0x1c5d privk:0x7f2e10462820::7f2e10462820  e5 e5 e5 e5                                      ....
 14144 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14144 ms  0x1c5d privk:0x7f2e1045e820::7f2e1045e820  20 be c6 0b                                       ...
 14144 ms  0x1c5d privk:0x7f2e1045e820::7f2e1045e820  e5 e5 e5 e5                                      ....
 14145 ms  0x1c5d PK11_Encrypt()
 14145 ms  0x1c5d symkey:0x7f2e0a399700
 14218 ms  0x1c5d PR_Connect()
 14218 ms  0x1c5d fd:0x7f2e10815a90
           /* TID 0x1c65 */
 14287 ms  0x1c65 PR_Close()
 14287 ms  0x1c65 fd:0x7f2e0a39dc70
 14311 ms  0x1c65 PR_Close()
 14311 ms  0x1c65 fd:0x7f2e0a39dc70
           /* TID 0x1c5d */
 14348 ms  0x1c5d SSL_ImportFD()
 14348 ms  0x1c5d ret:0x7f2e10887160
 14348 ms  0x1c5d SSL_AuthCertificateHook()
 14348 ms  0x1c5d fd:0x7f2e10887160
 14348 ms  0x1c5d ret:0x0
 14348 ms  0x1c5d PR_Connect()
 14348 ms  0x1c5d fd:0x7f2e10887160
 14363 ms  0x1c5d PR_Connect()
 14363 ms  0x1c5d fd:0x7f2e10887460
 14375 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14375 ms  0x1c5d privk:0x7f2e1046d020::7f2e1046d020  a0 0b 16 0f                                      ....
 14375 ms  0x1c5d privk:0x7f2e1046d020::7f2e1046d020  e5 e5 e5 e5                                      ....
 14375 ms  0x1c5d SECKEY_DestroyPrivateKey()
 14375 ms  0x1c5d privk:0x7f2e10467820::7f2e10467820  c0 4e 78 0d                                      .Nx.
 14376 ms  0x1c5d privk:0x7f2e10467820::7f2e10467820  e5 e5 e5 e5                                      ....
 14376 ms  0x1c5d PR_Close()
 14376 ms  0x1c5d fd:0x7f2e105c9550
 14376 ms     | 0x1c5d PK11_Encrypt()
 14376 ms     | 0x1c5d symkey:0x7f2e0bccac00
           /* TID 0x1c65 */
 14395 ms  0x1c65 PR_Close()
 14395 ms  0x1c65 fd:0x7f2e0c4fea60
           /* TID 0x1c5d */
 14445 ms  0x1c5d PR_Connect()
 14445 ms  0x1c5d fd:0x7f2e108874c0
 14445 ms  0x1c5d PR_Close()
 14445 ms  0x1c5d fd:0x7f2e108874c0
 14445 ms  0x1c5d PR_Connect()
 14445 ms  0x1c5d fd:0x7f2e108874c0
 14445 ms  0x1c5d PR_Close()
 14445 ms  0x1c5d fd:0x7f2e108874c0
           /* TID 0x1c65 */
 14464 ms  0x1c65 PR_Close()
 14464 ms  0x1c65 fd:0x7f2e10815d30
           /* TID 0x1c5d */
 14476 ms  0x1c5d PR_Connect()
 14476 ms  0x1c5d fd:0x7f2e108ff3d0
 14501 ms  0x1c5d PR_Connect()
 14501 ms  0x1c5d fd:0x7f2e105f5e20
 14502 ms  0x1c5d PR_Connect()
 14502 ms  0x1c5d fd:0x7f2e108ff760
 14502 ms  0x1c5d PR_Close()
 14502 ms  0x1c5d fd:0x7f2e105f5e20
 14502 ms  0x1c5d PR_Close()
 14502 ms  0x1c5d fd:0x7f2e108ff760
           /* TID 0x1c65 */
 14530 ms  0x1c65 PR_Close()
 14530 ms  0x1c65 fd:0x7f2e0bfdff10
           /* TID 0x1c5d */
 14599 ms  0x1c5d SSL_ImportFD()
 14599 ms  0x1c5d ret:0x7f2e105f5d90
 14599 ms  0x1c5d SSL_AuthCertificateHook()
 14599 ms  0x1c5d fd:0x7f2e105f5d90
 14599 ms  0x1c5d ret:0x0
 14599 ms  0x1c5d PR_Connect()
 14599 ms  0x1c5d fd:0x7f2e105f5d90
 14614 ms  0x1c5d PR_Connect()
 14614 ms  0x1c5d fd:0x7f2e108ffc70
 14645 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14645 ms  0x1c5d cx:0x7f2e0a31c4a8
 14647 ms     | 0x1c5d EC_ValidatePublicKey()
 14647 ms     | 0x1c5d ret:0x0
 14647 ms  0x1c5d ret:0x7f2e10867020::7f2e10867020  e0 fc 53 10                                      ..S.
 14647 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14647 ms  0x1c5d cx:0x7f2e0a31c4a8
 14650 ms     | 0x1c5d EC_ValidatePublicKey()
 14655 ms     | 0x1c5d ret:0x0
 14655 ms  0x1c5d ret:0x7f2e10885820::7f2e10885820  80 fd 54 10                                      ..T.
 14674 ms  0x1c5d SSL_ImportFD()
 14674 ms  0x1c5d ret:0x7f2e10815fa0
 14674 ms  0x1c5d SSL_AuthCertificateHook()
 14674 ms  0x1c5d fd:0x7f2e10815fa0
 14674 ms  0x1c5d ret:0x0
 14674 ms  0x1c5d PR_Connect()
 14674 ms  0x1c5d fd:0x7f2e10815fa0
 14863 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14863 ms  0x1c5d cx:0x7f2e0a31c648
 14867 ms     | 0x1c5d EC_ValidatePublicKey()
 14867 ms     | 0x1c5d ret:0x0
 14867 ms  0x1c5d ret:0x7f2e10b80020::7f2e10b80020  60 75 5c 10                                      `u\.
 14867 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14867 ms  0x1c5d cx:0x7f2e0a31c648
 14869 ms     | 0x1c5d EC_ValidatePublicKey()
 14874 ms     | 0x1c5d ret:0x0
 14874 ms  0x1c5d ret:0x7f2e10b85820::7f2e10b85820  d0 7d 5c 10                                      .}\.
 14881 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14881 ms  0x1c5d cx:0x7f2e0a31bae8
 14883 ms     | 0x1c5d EC_ValidatePublicKey()
 14883 ms     | 0x1c5d ret:0x0
 14883 ms  0x1c5d ret:0x7f2e10b8c020::7f2e10b8c020  00 11 5e 10                                      ..^.
 14884 ms  0x1c5d SECKEY_CreateECPrivateKey()
 14884 ms  0x1c5d cx:0x7f2e0a31bae8
 14885 ms     | 0x1c5d EC_ValidatePublicKey()
 14890 ms     | 0x1c5d ret:0x0
 14890 ms  0x1c5d ret:0x7f2e10b91020::7f2e10b91020  30 13 5e 10                                      0.^.
 15066 ms  SECKEY_ECParamsToKeySize()
 15066 ms  0x1c5d ret:0x100
 15066 ms  SECKEY_ECParamsToBasePointOrderLen()
 15066 ms  0x1c5d ret:0x100
 15066 ms  SECKEY_ECParamsToBasePointOrderLen()
 15066 ms  0x1c5d ret:0x100
 15066 ms  0x1c5d EC_ValidatePublicKey()
 15072 ms  0x1c5d ret:0x0
 15078 ms  SECKEY_ECParamsToKeySize()
 15078 ms  0x1c5d ret:0x100
 15078 ms  0x1c5d SECKEY_CreateECPrivateKey()
 15078 ms  0x1c5d cx:0x7f2e0a31c648
 15080 ms     | 0x1c5d EC_ValidatePublicKey()
 15084 ms     | 0x1c5d ret:0x0
 15084 ms  0x1c5d ret:0x7f2e10c77020::7f2e10c77020  30 e3 73 10                                      0.s.
 15084 ms  0x1c5d PK11_PubDeriveWithKDF()
 15084 ms  0x1c5d seckey:0x7f2e10c77020
 15084 ms     | 0x1c5d EC_ValidatePublicKey()
           /* TID 0x1c65 */
 15086 ms  0x1c65 PR_Close()
 15086 ms  0x1c65 fd:0x7f2e10a18400
 15086 ms  0x1c65 PR_Close()
 15086 ms  0x1c65 fd:0x7f2e10a189d0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a18400
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a189d0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a18ca0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a18fa0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a45040
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a45100
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a451f0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a456d0
 15088 ms  0x1c65 PR_Close()
 15088 ms  0x1c65 fd:0x7f2e10a45910
           /* TID 0x1c5d */
 15090 ms     | 0x1c5d ret:0x0
 15093 ms  0x1c5d ret:0x7f2e0bcca900
 15093 ms  0x1c5d PK11_DeriveWithFlags()
 15093 ms  0x1c5d basekey:0x7f2e0bcca900
 15093 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15093 ms  0x1c5d ret:0x7f2e0a378d00
 15093 ms  0x1c5d PK11_Derive()
 15093 ms  0x1c5d basekey:0x7f2e0a378d00
 15093 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15093 ms  0x1c5d ret:0x7f2e0a399680
 15094 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15094 ms  0x1c5d privk:0x7f2e10c77020::7f2e10c77020  30 e3 73 10                                      0.s.
 15094 ms  0x1c5d privk:0x7f2e10c77020::7f2e10c77020  e5 e5 e5 e5                                      ....
 15095 ms  0x1c5d PK11_Encrypt()
 15095 ms  0x1c5d symkey:0x7f2e0bcca980
 15097 ms  SECKEY_ECParamsToKeySize()
 15097 ms  0x1c5d ret:0x100
 15097 ms  SECKEY_ECParamsToBasePointOrderLen()
 15097 ms  0x1c5d ret:0x100
 15097 ms  SECKEY_ECParamsToBasePointOrderLen()
 15097 ms  0x1c5d ret:0x100
 15097 ms  0x1c5d EC_ValidatePublicKey()
 15099 ms  0x1c5d ret:0x0
 15102 ms  SECKEY_ECParamsToKeySize()
 15102 ms  0x1c5d ret:0xff
 15102 ms  0x1c5d SECKEY_CreateECPrivateKey()
 15102 ms  0x1c5d cx:0x7f2e0a31c4a8
 15102 ms     | 0x1c5d EC_ValidatePublicKey()
 15102 ms     | 0x1c5d ret:0x0
 15102 ms  0x1c5d ret:0x7f2e10c77820::7f2e10c77820  30 e3 73 10                                      0.s.
 15103 ms  0x1c5d PK11_PubDeriveWithKDF()
 15103 ms  0x1c5d seckey:0x7f2e10c77820
 15103 ms     | 0x1c5d EC_ValidatePublicKey()
 15103 ms     | 0x1c5d ret:0x0
 15103 ms  0x1c5d ret:0x7f2e0bcca900
 15103 ms  0x1c5d PK11_DeriveWithFlags()
 15103 ms  0x1c5d basekey:0x7f2e0bcca900
 15103 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15103 ms  0x1c5d ret:0x7f2e0a378600
 15103 ms  0x1c5d PK11_Derive()
 15103 ms  0x1c5d basekey:0x7f2e0a378600
 15103 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15103 ms  0x1c5d ret:0x7f2e0a3a4480
 15103 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15103 ms  0x1c5d privk:0x7f2e10c77820::7f2e10c77820  30 e3 73 10                                      0.s.
 15104 ms  0x1c5d privk:0x7f2e10c77820::7f2e10c77820  e5 e5 e5 e5                                      ....
 15104 ms  0x1c5d PK11_Encrypt()
 15104 ms  0x1c5d symkey:0x7f2e0c4b3d00
 15104 ms  0x1c5d SSL_AuthCertificateComplete()
 15104 ms  0x1c5d fd:0x7f2e10887160
 15104 ms  0x1c5d err:0x0
 15105 ms  0x1c5d PK11_Encrypt()
 15105 ms  0x1c5d symkey:0x7f2e0c4b3d00
 15105 ms  0x1c5d PK11_Encrypt()
 15105 ms  0x1c5d symkey:0x7f2e0c4b3d00
           /* TID 0x1cb7 */
 15124 ms  0x1cb7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15124 ms  0x1cb7 ret:0x0
 15124 ms  0x1cb7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 15124 ms  0x1cb7 ret:0x0
           /* TID 0x1c65 */
 15125 ms  0x1c65 PR_Close()
 15125 ms  0x1c65 fd:0x7f2e10815d30
           /* TID 0x1c5d */
 15125 ms  0x1c5d SSL_AuthCertificateComplete()
 15125 ms  0x1c5d fd:0x7f2e10815fa0
 15125 ms  0x1c5d err:0x0
 15125 ms  0x1c5d PK11_Encrypt()
 15125 ms  0x1c5d symkey:0x7f2e0bcca980
 15125 ms  0x1c5d PK11_Encrypt()
 15125 ms  0x1c5d symkey:0x7f2e0bcca980
 15199 ms  0x1c5d PK11_Encrypt()
 15199 ms  0x1c5d symkey:0x7f2e0a399700
 15284 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15284 ms  0x1c5d privk:0x7f2e10b85820::7f2e10b85820  d0 7d 5c 10                                      .}\.
 15284 ms  0x1c5d privk:0x7f2e10b85820::7f2e10b85820  e5 e5 e5 e5                                      ....
 15284 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15284 ms  0x1c5d privk:0x7f2e10b80020::7f2e10b80020  60 75 5c 10                                      `u\.
 15285 ms  0x1c5d privk:0x7f2e10b80020::7f2e10b80020  e5 e5 e5 e5                                      ....
 15285 ms  0x1c5d PK11_Encrypt()
 15285 ms  0x1c5d symkey:0x7f2e0bcca980
 15375 ms  0x1c5d PR_Connect()
 15375 ms  0x1c5d fd:0x7f2e10a182b0
 15400 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15400 ms  0x1c5d privk:0x7f2e10885820::7f2e10885820  80 fd 54 10                                      ..T.
 15401 ms  0x1c5d privk:0x7f2e10885820::7f2e10885820  e5 e5 e5 e5                                      ....
 15401 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15401 ms  0x1c5d privk:0x7f2e10867020::7f2e10867020  e0 fc 53 10                                      ..S.
 15401 ms  0x1c5d privk:0x7f2e10867020::7f2e10867020  e5 e5 e5 e5                                      ....
 15402 ms  0x1c5d PK11_Encrypt()
 15402 ms  0x1c5d symkey:0x7f2e0c4b3d00
 15439 ms  SECKEY_ECParamsToKeySize()
 15439 ms  0x1c5d ret:0x100
 15439 ms  SECKEY_ECParamsToBasePointOrderLen()
 15439 ms  0x1c5d ret:0x100
 15439 ms  SECKEY_ECParamsToBasePointOrderLen()
 15439 ms  0x1c5d ret:0x100
 15439 ms  0x1c5d EC_ValidatePublicKey()
 15444 ms  0x1c5d ret:0x0
 15451 ms  SECKEY_ECParamsToKeySize()
 15451 ms  0x1c5d ret:0xff
 15451 ms  0x1c5d SECKEY_CreateECPrivateKey()
 15451 ms  0x1c5d cx:0x7f2e0a31bae8
 15452 ms     | 0x1c5d EC_ValidatePublicKey()
 15452 ms     | 0x1c5d ret:0x0
 15452 ms  0x1c5d ret:0x7f2e10870020::7f2e10870020  40 f7 54 10                                      @.T.
 15452 ms  0x1c5d PK11_PubDeriveWithKDF()
 15452 ms  0x1c5d seckey:0x7f2e10870020
 15452 ms     | 0x1c5d EC_ValidatePublicKey()
 15453 ms     | 0x1c5d ret:0x0
 15454 ms  0x1c5d ret:0x7f2e0bcca900
 15454 ms  0x1c5d PK11_DeriveWithFlags()
 15454 ms  0x1c5d basekey:0x7f2e0bcca900
 15454 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15454 ms  0x1c5d ret:0x7f2e0c4b4280
 15454 ms  0x1c5d PK11_Derive()
 15454 ms  0x1c5d basekey:0x7f2e0c4b4280
 15454 ms     | 0x1c5d PK11_DeriveWithTemplate()
 15454 ms  0x1c5d ret:0x7f2e0c4b4300
 15454 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15454 ms  0x1c5d privk:0x7f2e10870020::7f2e10870020  40 f7 54 10                                      @.T.
 15454 ms  0x1c5d privk:0x7f2e10870020::7f2e10870020  e5 e5 e5 e5                                      ....
 15455 ms  0x1c5d PK11_Encrypt()
 15455 ms  0x1c5d symkey:0x7f2e0c4b4480
 15456 ms  0x1c5d SSL_AuthCertificateComplete()
 15456 ms  0x1c5d fd:0x7f2e105f5d90
 15456 ms  0x1c5d err:0x0
 15456 ms  0x1c5d PK11_Encrypt()
 15456 ms  0x1c5d symkey:0x7f2e0c4b4480
           /* TID 0x1c65 */
 15474 ms  0x1c65 PR_Close()
 15474 ms  0x1c65 fd:0x7f2e10a17040
 15585 ms  0x1c65 PR_Close()
 15585 ms  0x1c65 fd:0x7f2e10a18fd0
 15588 ms  0x1c65 PR_Close()
 15588 ms  0x1c65 fd:0x7f2e10a17040
 15589 ms  0x1c65 PR_Close()
 15589 ms  0x1c65 fd:0x7f2e10a183d0
           /* TID 0x1c5d */
 15625 ms  0x1c5d PR_Connect()
 15625 ms  0x1c5d fd:0x7f2e10a18310
 15737 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15737 ms  0x1c5d privk:0x7f2e10b91020::7f2e10b91020  30 13 5e 10                                      0.^.
 15738 ms  0x1c5d privk:0x7f2e10b91020::7f2e10b91020  e5 e5 e5 e5                                      ....
 15738 ms  0x1c5d SECKEY_DestroyPrivateKey()
 15738 ms  0x1c5d privk:0x7f2e10b8c020::7f2e10b8c020  00 11 5e 10                                      ..^.
 15738 ms  0x1c5d privk:0x7f2e10b8c020::7f2e10b8c020  e5 e5 e5 e5                                      ....
 15738 ms  0x1c5d PR_Close()
 15738 ms  0x1c5d fd:0x7f2e105f5d90
 15739 ms     | 0x1c5d PK11_Encrypt()
 15739 ms     | 0x1c5d symkey:0x7f2e0c4b4480
           /* TID 0x1c65 */
 16024 ms  0x1c65 PR_Close()
 16024 ms  0x1c65 fd:0x7f2e10a17910
 17282 ms  0x1c65 PR_Close()
 17282 ms  0x1c65 fd:0x7f2e108ff910
           /* TID 0x1c5d */
 17460 ms  0x1c5d PR_Close()
 17460 ms  0x1c5d fd:0x7f2e0a5f7d30
 17537 ms  0x1c5d PR_Connect()
 17537 ms  0x1c5d fd:0x7f2e0b423e80
           /* TID 0x1c65 */
 17925 ms  0x1c65 PR_Close()
 17925 ms  0x1c65 fd:0x7f2e0a5f7b80
           /* TID 0x1c5d */
 17964 ms  0x1c5d PR_Close()
 17964 ms  0x1c5d fd:0x7f2e17aa9a00
           /* TID 0x1c52 */
 17967 ms  0x1c52 EC_ValidatePublicKey()
 17968 ms  0x1c52 ret:0x0
 17969 ms  0x1c52 EC_ValidatePublicKey()
 17970 ms  0x1c52 ret:0x0
 17970 ms  0x1c52 EC_ValidatePublicKey()
 17972 ms  0x1c52 ret:0x0
 17972 ms  0x1c52 EC_ValidatePublicKey()
 17974 ms  0x1c52 ret:0x0
 17974 ms  0x1c52 EC_ValidatePublicKey()
 17975 ms  0x1c52 ret:0x0
 17975 ms  0x1c52 EC_ValidatePublicKey()
 17978 ms  0x1c52 ret:0x0
 17978 ms  0x1c52 EC_ValidatePublicKey()
 17979 ms  0x1c52 ret:0x0
 17979 ms  0x1c52 EC_ValidatePublicKey()
 17981 ms  0x1c52 ret:0x0
 17981 ms  0x1c52 EC_ValidatePublicKey()
 17982 ms  0x1c52 ret:0x0
 17982 ms  0x1c52 EC_ValidatePublicKey()
 17984 ms  0x1c52 ret:0x0
           /* TID 0x1c5d */
 17984 ms  0x1c5d PK11_Encrypt()
 17984 ms  0x1c5d symkey:0x7f2e0baa3180
 17984 ms  0x1c5d PK11_Encrypt()
 17984 ms  0x1c5d symkey:0x7f2e0bc1bf00
 17984 ms  0x1c5d PK11_Encrypt()
 17984 ms  0x1c5d symkey:0x7f2e0bcca980
 17985 ms  0x1c5d PK11_Encrypt()
 17985 ms  0x1c5d symkey:0x7f2e0a399700
 17985 ms  0x1c5d PK11_Encrypt()
 17985 ms  0x1c5d symkey:0x7f2e0a398300
 17985 ms  0x1c5d PK11_Encrypt()
 17985 ms  0x1c5d symkey:0x7f2e0baa2f00
 17985 ms  0x1c5d PK11_Encrypt()
 17985 ms  0x1c5d symkey:0x7f2e0c4b3d00
 17985 ms  0x1c5d PR_Close()
 17985 ms  0x1c5d fd:0x7f2e108ffc70
 17985 ms  0x1c5d PR_Close()
 17985 ms  0x1c5d fd:0x7f2e10a18310
 17985 ms  0x1c5d PR_Close()
 17985 ms  0x1c5d fd:0x7f2e108ff3d0
 17985 ms  0x1c5d PR_Close()
 17985 ms  0x1c5d fd:0x7f2e10815a90
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0d7aa1c0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e10142eb0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0c4fe1f0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0bfdff70
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0bfdfdf0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0bfdfd90
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e105f5a30
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e105fc0a0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0b4234f0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0c4feca0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e10a182b0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0a5f7cd0
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0a39d040
 17986 ms  0x1c5d PR_Close()
 17986 ms  0x1c5d fd:0x7f2e0a2d57f0
 17986 ms     | 0x1c5d PK11_Encrypt()
 17986 ms     | 0x1c5d symkey:0x7f2e0a3a3900
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e19342dc0
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e19342970
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e193939a0
 17987 ms     | 0x1c5d PK11_Encrypt()
 17987 ms     | 0x1c5d symkey:0x7f2e0a5fdb00
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e0b423e80
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e19393a00
 17987 ms     | 0x1c5d PK11_Encrypt()
 17987 ms     | 0x1c5d symkey:0x7f2e0b621900
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e19393850
 17987 ms     | 0x1c5d PK11_Encrypt()
 17987 ms     | 0x1c5d symkey:0x7f2e0b468c80
 17987 ms  0x1c5d PR_Close()
 17987 ms  0x1c5d fd:0x7f2e0a5f7760
 17988 ms     | 0x1c5d PK11_Encrypt()
 17988 ms     | 0x1c5d symkey:0x7f2e0a398300
 17988 ms  0x1c5d PR_Close()
 17988 ms  0x1c5d fd:0x7f2e0a2d5fd0
 17988 ms     | 0x1c5d PK11_Encrypt()
 17988 ms     | 0x1c5d symkey:0x7f2e0baa3180
 17988 ms  0x1c5d PR_Close()
 17988 ms  0x1c5d fd:0x7f2e10815fa0
 17988 ms     | 0x1c5d PK11_Encrypt()
 17988 ms     | 0x1c5d symkey:0x7f2e0bcca980
           /* TID 0x1ca9 */
 17988 ms  0x1ca9 PR_Close()
 17988 ms  0x1ca9 fd:0x7f2e0a2d5880
 17988 ms  0x1ca9 PR_Close()
 17988 ms  0x1ca9 fd:0x7f2e0a2d5880
           /* TID 0x1c5d */
 17991 ms  0x1c5d PR_Close()
 17991 ms  0x1c5d fd:0x7f2df94faa30
 17991 ms     | 0x1c5d PK11_Encrypt()
 17991 ms     | 0x1c5d symkey:0x7f2e0baa2f00
 17991 ms  0x1c5d PR_Close()
 17991 ms  0x1c5d fd:0x7f2e0c4fef10
 17991 ms     | 0x1c5d PK11_Encrypt()
 17991 ms     | 0x1c5d symkey:0x7f2e0a399700
 17991 ms  0x1c5d PR_Close()
 17991 ms  0x1c5d fd:0x7f2e10887160
 17991 ms     | 0x1c5d PK11_Encrypt()
 17991 ms     | 0x1c5d symkey:0x7f2e0c4b3d00
 17991 ms  0x1c5d PR_Close()
 17991 ms  0x1c5d fd:0x7f2e105fc580
 17991 ms     | 0x1c5d PK11_Encrypt()
 17991 ms     | 0x1c5d symkey:0x7f2e0bc1bf00
           /* TID 0x1c52 */
 17998 ms  0x1c52 PR_Close()
 17998 ms  0x1c52 fd:0x7f2e0b6ce250
 17998 ms  0x1c52 PR_Close()
 17998 ms  0x1c52 fd:0x7f2e0a39d040
 17999 ms  0x1c52 PR_Close()
 17999 ms  0x1c52 fd:0x7f2e0a39d100
 17999 ms  0x1c52 PR_Close()
 17999 ms  0x1c52 fd:0x7f2e0a39d040
 17999 ms  0x1c52 PR_Close()
 17999 ms  0x1c52 fd:0x7f2e0a39d100
 17999 ms  0x1c52 PR_Close()
 17999 ms  0x1c52 fd:0x7f2e0a39d040
           /* TID 0x1cbb */
 18002 ms  0x1cbb PR_Close()
 18002 ms  0x1cbb fd:0x7f2e0a39d940
           /* TID 0x1c52 */
 18019 ms  0x1c52 PR_Close()
 18019 ms  0x1c52 fd:0x7f2e0a39d100
 18019 ms  0x1c52 PR_Close()
 18019 ms  0x1c52 fd:0x7f2e0bfdfe20
 18020 ms  0x1c52 PR_Close()
 18020 ms  0x1c52 fd:0x7f2e0a39d100
 18020 ms  0x1c52 PR_Close()
 18020 ms  0x1c52 fd:0x7f2e0bfdfe20
 18021 ms  0x1c52 PR_Close()
 18021 ms  0x1c52 fd:0x7f2e154c89a0
 18021 ms  0x1c52 PR_Close()
 18021 ms  0x1c52 fd:0x7f2e154c88b0
 18021 ms  0x1c52 PR_Close()
 18021 ms  0x1c52 fd:0x7f2e154c8a60
 18023 ms  0x1c52 PR_Close()
 18023 ms  0x1c52 fd:0x7f2e0b6ce3d0
 18025 ms  0x1c52 PR_Close()
 18025 ms  0x1c52 fd:0x7f2e0b6ce3d0
           /* TID 0x1c5d */
 18027 ms  0x1c5d PR_Close()
 18027 ms  0x1c5d fd:0x7f2e1055f580
           /* TID 0x1c52 */
 18028 ms  0x1c52 PR_Close()
 18028 ms  0x1c52 fd:0x7f2e0a39d100
 18028 ms  0x1c52 PR_Close()
 18028 ms  0x1c52 fd:0x7f2e0bfdfe20
 18028 ms  0x1c52 PR_Close()
 18028 ms  0x1c52 fd:0x7f2e0a39d100
 18028 ms  0x1c52 PR_Close()
 18028 ms  0x1c52 fd:0x7f2e0bfdfe20
 18032 ms  0x1c52 PR_Close()
 18032 ms  0x1c52 fd:0x7f2e0bfdfe50
 18033 ms  0x1c52 PR_Close()
 18033 ms  0x1c52 fd:0x7f2e0bfdfe50
 18035 ms  0x1c52 PR_Close()
 18035 ms  0x1c52 fd:0x7f2e0a39d100
 18035 ms  0x1c52 PR_Close()
 18035 ms  0x1c52 fd:0x7f2e0bfdfee0
 18040 ms  0x1c52 PR_Close()
 18040 ms  0x1c52 fd:0x7f2e0a39d100
 18040 ms  0x1c52 PR_Close()
 18040 ms  0x1c52 fd:0x7f2e0bfdfee0
 18042 ms  0x1c52 PR_Close()
 18042 ms  0x1c52 fd:0x7f2e0bfdff10
 18044 ms  0x1c52 PR_Close()
 18044 ms  0x1c52 fd:0x7f2e0bfdff10
 18050 ms  0x1c52 PR_Close()
 18050 ms  0x1c52 fd:0x7f2e0c4fea90
 18051 ms  0x1c52 PR_Close()
 18051 ms  0x1c52 fd:0x7f2e0c4fea90
 18054 ms  0x1c52 PR_Close()
 18054 ms  0x1c52 fd:0x7f2e0c4feca0
           /* TID 0x1cbb */
 18059 ms  0x1cbb PR_Close()
 18059 ms  0x1cbb fd:0x7f2df94fa8b0
 18061 ms  0x1cbb PR_Close()
 18061 ms  0x1cbb fd:0x7f2df94fa8b0
           /* TID 0x1c52 */
 18061 ms  0x1c52 PR_Close()
 18061 ms  0x1c52 fd:0x7f2e0a39d100
 18061 ms  0x1c52 PR_Close()
 18061 ms  0x1c52 fd:0x7f2e0a321f10
           /* TID 0x1cbb */
 18067 ms  0x1cbb PR_Close()
 18067 ms  0x1cbb fd:0x7f2e0a39d940
           /* TID 0x1c65 */
 18070 ms  0x1c65 PR_Close()
 18070 ms  0x1c65 fd:0x7f2e0b62cfa0
           /* TID 0x1cbb */
 18093 ms  0x1cbb PR_Close()
 18093 ms  0x1cbb fd:0x7f2e0a2d5fd0
           /* TID 0x1c5d */
 18103 ms  0x1c5d PR_Connect()
 18103 ms  0x1c5d fd:0x7f2e0bcd1a60
 18108 ms  0x1c5d PR_Close()
 18108 ms  0x1c5d fd:0x7f2e0bcd1a60
 18109 ms  0x1c5d PR_Close()
 18109 ms  0x1c5d fd:0x7f2e108874c0
           /* TID 0x1c57 */
 18110 ms  0x1c57 PR_Close()
 18110 ms  0x1c57 fd:0x7f2e140e7e20
           /* TID 0x1c5d */
 18111 ms  0x1c5d PR_Close()
 18111 ms  0x1c5d fd:0x7f2e108ff5b0
           /* TID 0x1cbb */
 18126 ms  0x1cbb PR_Close()
 18126 ms  0x1cbb fd:0x7f2e0b62cf40
           /* TID 0x1c52 */
 18140 ms  0x1c52 PR_Close()
 18140 ms  0x1c52 fd:0x7f2df94fa8b0
 18140 ms  0x1c52 PR_Close()
 18140 ms  0x1c52 fd:0x7f2e0bcd15e0
           /* TID 0x1c5d */
 18145 ms  0x1c5d PR_Close()
 18145 ms  0x1c5d fd:0x7f2e10887460
 18146 ms  0x1c5d PR_Close()
 18146 ms  0x1c5d fd:0x7f2e0f1b7310
           /* TID 0x1ca9 */
 18149 ms  0x1ca9 PR_Close()
 18149 ms  0x1ca9 fd:0x7f2e0bfdf2e0
 18149 ms  0x1ca9 PR_Close()
 18149 ms  0x1ca9 fd:0x7f2e0bfdf2e0
 18149 ms  0x1ca9 PR_Close()
 18149 ms  0x1ca9 fd:0x7f2e0bfdf2e0
 18149 ms  0x1ca9 PR_Close()
 18149 ms  0x1ca9 fd:0x7f2e0bfdf310
           /* TID 0x1cbb */
 18149 ms  0x1cbb PR_Close()
 18149 ms  0x1cbb fd:0x7f2e0b6ce070
           /* TID 0x1c57 */
 18153 ms  0x1c57 PR_Close()
 18153 ms  0x1c57 fd:0x7f2e1073f790
           /* TID 0x1c65 */
 18158 ms  0x1c65 PR_Close()
 18158 ms  0x1c65 fd:0x7f2e0bfdf880
 18158 ms  0x1c65 PR_Close()
 18158 ms  0x1c65 fd:0x7f2e0bfdfa60
           /* TID 0x1c57 */
 18164 ms  0x1c57 PR_Close()
 18164 ms  0x1c57 fd:0x7f2e1073fac0
           /* TID 0x1c52 */
 18166 ms  0x1c52 PR_Close()
 18166 ms  0x1c52 fd:0x7f2df94fa8b0
 18166 ms  0x1c52 PR_Close()
 18166 ms  0x1c52 fd:0x7f2e0a39d580
           /* TID 0x1cbb */
 18168 ms  0x1cbb PR_Close()
 18168 ms  0x1cbb fd:0x7f2e0a39d5b0
 18170 ms  0x1cbb PR_Close()
 18170 ms  0x1cbb fd:0x7f2e0a2d5f10
 18208 ms  0x1cbb PR_Close()
 18208 ms  0x1cbb fd:0x7f2e0a3211f0
 18209 ms  0x1cbb PR_Close()
 18209 ms  0x1cbb fd:0x7f2e0a3211f0
 18231 ms  0x1cbb PR_Close()
 18231 ms  0x1cbb fd:0x7f2e0a321940
 18233 ms  0x1cbb PR_Close()
 18233 ms  0x1cbb fd:0x7f2e0a321e50
 18242 ms  0x1cbb PR_Close()
 18242 ms  0x1cbb fd:0x7f2e0a39d5b0
 18247 ms  0x1cbb PR_Close()
 18247 ms  0x1cbb fd:0x7f2e0a39db50
 18254 ms  0x1cbb PR_Close()
 18254 ms  0x1cbb fd:0x7f2e0a5f7700
 18264 ms  0x1cbb PR_Close()
 18264 ms  0x1cbb fd:0x7f2e0a5f7850
 18266 ms  0x1cbb PR_Close()
 18266 ms  0x1cbb fd:0x7f2e0a5f7850
           /* TID 0x1c52 */
 18682 ms  0x1c52 PR_Close()
 18682 ms  0x1c52 fd:0x7f2df94fa9a0
 18682 ms  0x1c52 PR_Close()
 18682 ms  0x1c52 fd:0x7f2df94fa9a0
 18688 ms  0x1c52 PR_Close()
 18688 ms  0x1c52 fd:0x7f2e327da130
 18688 ms  0x1c52 PR_Close()
 18688 ms  0x1c52 fd:0x7f2e327da190
Process terminated
