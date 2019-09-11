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
           /* TID 0x6730 */
    27 ms  0x6730 SSL_ImportFD()
    27 ms  0x6730 ret:0x7f87d08e6b50
    27 ms  0x6730 SSL_AuthCertificateHook()
    27 ms  0x6730 fd:0x7f87d08e6b50
    27 ms  0x6730 ret:0x0
    28 ms  0x6730 PR_Connect()
    28 ms  0x6730 fd:0x7f87d08e6b50
    53 ms  0x6730 SECKEY_CreateECPrivateKey()
    53 ms  0x6730 cx:0x7f87d08e5b28
    55 ms     | 0x6730 EC_ValidatePublicKey()
    55 ms     | 0x6730 ret:0x0
    55 ms  0x6730 ret:0x7f87d0870820::7f87d0870820  b0 df 8b d0                                      ....
    55 ms  0x6730 SECKEY_CreateECPrivateKey()
    55 ms  0x6730 cx:0x7f87d08e5b28
    56 ms     | 0x6730 EC_ValidatePublicKey()
    60 ms     | 0x6730 ret:0x0
    61 ms  0x6730 ret:0x7f87d0872820::7f87d0872820  20 de 8b d0                                       ...
           /* TID 0x6791 */
   113 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   114 ms  0x6791 ret:0x0
           /* TID 0x6730 */
   114 ms  SECKEY_ECParamsToKeySize()
   114 ms  0x6730 ret:0x100
   114 ms  0x6730 SECKEY_CreateECPrivateKey()
   114 ms  0x6730 cx:0x7f87d08e5b28
   116 ms     | 0x6730 EC_ValidatePublicKey()
   120 ms     | 0x6730 ret:0x0
   120 ms  0x6730 ret:0x7f87d0875820::7f87d0875820  70 24 aa d0                                      p$..
   120 ms  0x6730 PK11_PubDeriveWithKDF()
   120 ms  0x6730 seckey:0x7f87d0875820
   120 ms     | 0x6730 EC_ValidatePublicKey()
   124 ms     | 0x6730 ret:0x0
   127 ms  0x6730 ret:0x7f87f8d17580
   127 ms  0x6730 PK11_DeriveWithFlags()
   127 ms  0x6730 basekey:0x7f87f8d17580
   127 ms     | 0x6730 PK11_DeriveWithTemplate()
   127 ms  0x6730 ret:0x7f87e06f0880
   127 ms  0x6730 PK11_Derive()
   127 ms  0x6730 basekey:0x7f87e06f0880
   128 ms     | 0x6730 PK11_DeriveWithTemplate()
   128 ms  0x6730 ret:0x7f87d2109480
   128 ms  0x6730 SECKEY_DestroyPrivateKey()
   128 ms  0x6730 privk:0x7f87d0875820::7f87d0875820  70 24 aa d0                                      p$..
   128 ms  0x6730 privk:0x7f87d0875820::7f87d0875820  e5 e5 e5 e5                                      ....
   128 ms  0x6730 PK11_Encrypt()
   128 ms  0x6730 symkey:0x7f87f8d17900
   128 ms  0x6730 SSL_AuthCertificateComplete()
   128 ms  0x6730 fd:0x7f87d08e6b50
   128 ms  0x6730 err:0x0
   129 ms  0x6730 PK11_Encrypt()
   129 ms  0x6730 symkey:0x7f87f8d17900
   180 ms  0x6730 SECKEY_DestroyPrivateKey()
   180 ms  0x6730 privk:0x7f87d0872820::7f87d0872820  20 de 8b d0                                       ...
   181 ms  0x6730 privk:0x7f87d0872820::7f87d0872820  e5 e5 e5 e5                                      ....
   181 ms  0x6730 SECKEY_DestroyPrivateKey()
   181 ms  0x6730 privk:0x7f87d0870820::7f87d0870820  b0 df 8b d0                                      ....
   181 ms  0x6730 privk:0x7f87d0870820::7f87d0870820  e5 e5 e5 e5                                      ....
   188 ms  0x6730 PK11_Encrypt()
   188 ms  0x6730 symkey:0x7f87f8d17900
   217 ms  0x6730 PK11_Encrypt()
   217 ms  0x6730 symkey:0x7f87f8d17900
   247 ms  0x6730 PK11_Encrypt()
   247 ms  0x6730 symkey:0x7f87f8d17900
   276 ms  0x6730 PK11_Encrypt()
   276 ms  0x6730 symkey:0x7f87f8d17900
   392 ms  0x6730 PK11_Encrypt()
   392 ms  0x6730 symkey:0x7f87f8d17900
           /* TID 0x679e */
   423 ms  0x679e PR_Close()
   423 ms  0x679e fd:0x7f87d08e6d00
   425 ms  0x679e PR_Close()
   425 ms  0x679e fd:0x7f87d08e6d00
           /* TID 0x6730 */
   427 ms  0x6730 PK11_Encrypt()
   427 ms  0x6730 symkey:0x7f87f8d17900
   461 ms  0x6730 PK11_Encrypt()
   461 ms  0x6730 symkey:0x7f87f8d17900
           /* TID 0x678c */
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d08e6fd0
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d162b700
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d08e6fd0
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d162b700
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d08e6fd0
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d162b700
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d08e6fd0
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d162b700
   489 ms  0x678c PR_Close()
   489 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d08e6fd0
   490 ms  0x678c PR_Close()
   490 ms  0x678c fd:0x7f87d162b700
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d08e6fd0
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d162b700
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d08e6fd0
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d162b700
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d08e6fd0
   491 ms  0x678c PR_Close()
   491 ms  0x678c fd:0x7f87d162b700
   494 ms  0x678c PR_Close()
   494 ms  0x678c fd:0x7f87d08e6fd0
   494 ms  0x678c PR_Close()
   494 ms  0x678c fd:0x7f87d08e6fd0
   497 ms  0x678c PR_Close()
   497 ms  0x678c fd:0x7f87d08e6fd0
   497 ms  0x678c PR_Close()
   497 ms  0x678c fd:0x7f87d0c50d00
   500 ms  0x678c PR_Close()
   500 ms  0x678c fd:0x7f87d0c50d00
   500 ms  0x678c PR_Close()
   500 ms  0x678c fd:0x7f87d0c50d00
   502 ms  0x678c PR_Close()
   502 ms  0x678c fd:0x7f87d0c50d00
   503 ms  0x678c PR_Close()
   503 ms  0x678c fd:0x7f87d0c50d00
   547 ms  0x678c PR_Close()
   547 ms  0x678c fd:0x7f87d0c50d00
   548 ms  0x678c PR_Close()
   548 ms  0x678c fd:0x7f87d0c50d00
   555 ms  0x678c PR_Close()
   555 ms  0x678c fd:0x7f87d0c50d00
   555 ms  0x678c PR_Close()
   555 ms  0x678c fd:0x7f87d0c50d00
   562 ms  0x678c PR_Close()
   562 ms  0x678c fd:0x7f87d0c50d00
   562 ms  0x678c PR_Close()
   562 ms  0x678c fd:0x7f87d0c50d00
   564 ms  0x678c PR_Close()
   564 ms  0x678c fd:0x7f87d0c50d00
   564 ms  0x678c PR_Close()
   564 ms  0x678c fd:0x7f87d0c50d00
           /* TID 0x6789 */
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
   565 ms  0x6789 PR_Close()
   565 ms  0x6789 fd:0x7f87d0c50d00
           /* TID 0x679e */
   602 ms  0x679e PR_Close()
   602 ms  0x679e fd:0x7f87d08e6b20
  1068 ms  0x679e PR_Close()
  1068 ms  0x679e fd:0x7f87d0c0e040
  1081 ms  0x679e PR_Close()
  1081 ms  0x679e fd:0x7f87d0c0e040
  2410 ms  0x679e PR_Close()
  2410 ms  0x679e fd:0x7f87d0c0e520
           /* TID 0x6738 */
  3999 ms  0x6738 PR_Close()
  3999 ms  0x6738 fd:0x7f87d0c0e550
  3999 ms  0x6738 PR_Close()
  3999 ms  0x6738 fd:0x7f87d0c0e5b0
  3999 ms  0x6738 PR_Close()
  3999 ms  0x6738 fd:0x7f87d0c0e610
           /* TID 0x6730 */
  4447 ms  0x6730 SSL_ImportFD()
  4447 ms  0x6730 ret:0x7f87d3b9d4f0
  4447 ms  0x6730 SSL_AuthCertificateHook()
  4447 ms  0x6730 fd:0x7f87d3b9d4f0
  4447 ms  0x6730 ret:0x0
  4447 ms  0x6730 PR_Connect()
  4447 ms  0x6730 fd:0x7f87d3b9d4f0
  4485 ms  0x6730 SECKEY_CreateECPrivateKey()
  4485 ms  0x6730 cx:0x7f87d08ea8c8
  4486 ms     | 0x6730 EC_ValidatePublicKey()
  4486 ms     | 0x6730 ret:0x0
  4486 ms  0x6730 ret:0x7f87bf902820::7f87bf902820  00 06 9b bf                                      ....
  4487 ms  0x6730 SECKEY_CreateECPrivateKey()
  4487 ms  0x6730 cx:0x7f87d08ea8c8
  4489 ms     | 0x6730 EC_ValidatePublicKey()
  4494 ms     | 0x6730 ret:0x0
  4495 ms  0x6730 ret:0x7f87bf904820::7f87bf904820  20 04 9b bf                                       ...
           /* TID 0x6791 */
  4534 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4535 ms  0x6791 ret:0x0
           /* TID 0x6730 */
  4536 ms  SECKEY_ECParamsToKeySize()
  4536 ms  0x6730 ret:0x100
  4536 ms  0x6730 SECKEY_CreateECPrivateKey()
  4536 ms  0x6730 cx:0x7f87d08ea8c8
  4538 ms     | 0x6730 EC_ValidatePublicKey()
  4544 ms     | 0x6730 ret:0x0
  4544 ms  0x6730 ret:0x7f87bf90a020::7f87bf90a020  90 0c 9b bf                                      ....
  4545 ms  0x6730 PK11_PubDeriveWithKDF()
  4545 ms  0x6730 seckey:0x7f87bf90a020
  4545 ms     | 0x6730 EC_ValidatePublicKey()
  4549 ms     | 0x6730 ret:0x0
  4553 ms  0x6730 ret:0x7f87f8d17580
  4553 ms  0x6730 PK11_DeriveWithFlags()
  4553 ms  0x6730 basekey:0x7f87f8d17580
  4553 ms     | 0x6730 PK11_DeriveWithTemplate()
  4554 ms  0x6730 ret:0x7f87d3ba1b80
  4554 ms  0x6730 PK11_Derive()
  4554 ms  0x6730 basekey:0x7f87d3ba1b80
  4554 ms     | 0x6730 PK11_DeriveWithTemplate()
  4554 ms  0x6730 ret:0x7f87d3ba1c00
  4554 ms  0x6730 SECKEY_DestroyPrivateKey()
  4554 ms  0x6730 privk:0x7f87bf90a020::7f87bf90a020  90 0c 9b bf                                      ....
  4554 ms  0x6730 privk:0x7f87bf90a020::7f87bf90a020  e5 e5 e5 e5                                      ....
  4554 ms  0x6730 PK11_Encrypt()
  4554 ms  0x6730 symkey:0x7f87d3ba1d80
  4554 ms  0x6730 SSL_AuthCertificateComplete()
  4554 ms  0x6730 fd:0x7f87d3b9d4f0
  4554 ms  0x6730 err:0x0
  4556 ms  0x6730 PK11_Encrypt()
  4556 ms  0x6730 symkey:0x7f87d3ba1d80
  4556 ms  0x6730 PK11_Encrypt()
  4556 ms  0x6730 symkey:0x7f87d3ba1d80
  4592 ms  0x6730 SECKEY_DestroyPrivateKey()
  4592 ms  0x6730 privk:0x7f87bf904820::7f87bf904820  20 04 9b bf                                       ...
  4592 ms  0x6730 privk:0x7f87bf904820::7f87bf904820  e5 e5 e5 e5                                      ....
  4593 ms  0x6730 SECKEY_DestroyPrivateKey()
  4593 ms  0x6730 privk:0x7f87bf902820::7f87bf902820  00 06 9b bf                                      ....
  4593 ms  0x6730 privk:0x7f87bf902820::7f87bf902820  e5 e5 e5 e5                                      ....
  4628 ms  0x6730 PK11_Encrypt()
  4628 ms  0x6730 symkey:0x7f87d3ba1d80
           /* TID 0x6747 */
  4637 ms  0x6747 PR_Close()
  4637 ms  0x6747 fd:0x7f87d3b9da90
           /* TID 0x6738 */
  4684 ms  0x6738 PR_Close()
  4684 ms  0x6738 fd:0x7f87bf768820
           /* TID 0x6730 */
  5273 ms  0x6730 SSL_ImportFD()
  5273 ms  0x6730 ret:0x7f87bfa815b0
  5273 ms  0x6730 SSL_AuthCertificateHook()
  5273 ms  0x6730 fd:0x7f87bfa815b0
  5273 ms  0x6730 ret:0x0
  5273 ms  0x6730 PR_Connect()
  5273 ms  0x6730 fd:0x7f87bfa815b0
  5523 ms  0x6730 SSL_ImportFD()
  5523 ms  0x6730 ret:0x7f87bfa81c40
  5523 ms  0x6730 SSL_AuthCertificateHook()
  5523 ms  0x6730 fd:0x7f87bfa81c40
  5523 ms  0x6730 ret:0x0
  5523 ms  0x6730 PR_Connect()
  5523 ms  0x6730 fd:0x7f87bfa81c40
  5603 ms  0x6730 SECKEY_CreateECPrivateKey()
  5603 ms  0x6730 cx:0x7f87d08eb0e8
  5608 ms     | 0x6730 EC_ValidatePublicKey()
  5608 ms     | 0x6730 ret:0x0
  5608 ms  0x6730 ret:0x7f87bfacc020::7f87bfacc020  60 bf ae bf                                      `...
  5609 ms  0x6730 SECKEY_CreateECPrivateKey()
  5609 ms  0x6730 cx:0x7f87d08eb0e8
  5611 ms     | 0x6730 EC_ValidatePublicKey()
  5627 ms     | 0x6730 ret:0x0
  5627 ms  0x6730 ret:0x7f87bf920020::7f87bf920020  a0 41 7c bf                                      .A|.
  5641 ms  0x6730 SSL_ImportFD()
  5641 ms  0x6730 ret:0x7f87bfa81820
  5641 ms  0x6730 SSL_AuthCertificateHook()
  5641 ms  0x6730 fd:0x7f87bfa81820
  5641 ms  0x6730 ret:0x0
  5641 ms  0x6730 PR_Connect()
  5641 ms  0x6730 fd:0x7f87bfa81820
  5650 ms  0x6730 SSL_ImportFD()
  5650 ms  0x6730 ret:0x7f87bfa81130
  5650 ms  0x6730 SSL_AuthCertificateHook()
  5650 ms  0x6730 fd:0x7f87bfa81130
  5650 ms  0x6730 ret:0x0
  5650 ms  0x6730 PR_Connect()
  5650 ms  0x6730 fd:0x7f87bfa81130
  5651 ms  0x6730 SSL_ImportFD()
  5651 ms  0x6730 ret:0x7f87bfa81190
  5651 ms  0x6730 SSL_AuthCertificateHook()
  5651 ms  0x6730 fd:0x7f87bfa81190
  5651 ms  0x6730 ret:0x0
  5651 ms  0x6730 PR_Connect()
  5651 ms  0x6730 fd:0x7f87bfa81190
  5651 ms  0x6730 SSL_ImportFD()
  5651 ms  0x6730 ret:0x7f87bfa81550
  5651 ms  0x6730 SSL_AuthCertificateHook()
  5651 ms  0x6730 fd:0x7f87bfa81550
  5651 ms  0x6730 ret:0x0
  5651 ms  0x6730 PR_Connect()
  5651 ms  0x6730 fd:0x7f87bfa81550
  5651 ms  0x6730 SSL_ImportFD()
  5651 ms  0x6730 ret:0x7f87bfa81610
  5651 ms  0x6730 SSL_AuthCertificateHook()
  5651 ms  0x6730 fd:0x7f87bfa81610
  5651 ms  0x6730 ret:0x0
  5652 ms  0x6730 PR_Connect()
  5652 ms  0x6730 fd:0x7f87bfa81610
  5652 ms  0x6730 SSL_ImportFD()
  5652 ms  0x6730 ret:0x7f87bfa81640
  5652 ms  0x6730 SSL_AuthCertificateHook()
  5652 ms  0x6730 fd:0x7f87bfa81640
  5652 ms  0x6730 ret:0x0
  5652 ms  0x6730 PR_Connect()
  5652 ms  0x6730 fd:0x7f87bfa81640
  5652 ms  0x6730 SSL_ImportFD()
  5652 ms  0x6730 ret:0x7f87bfa81700
  5652 ms  0x6730 SSL_AuthCertificateHook()
  5652 ms  0x6730 fd:0x7f87bfa81700
  5652 ms  0x6730 ret:0x0
  5652 ms  0x6730 PR_Connect()
  5652 ms  0x6730 fd:0x7f87bfa81700
  5652 ms  0x6730 SSL_ImportFD()
  5652 ms  0x6730 ret:0x7f87bfa81730
  5652 ms  0x6730 SSL_AuthCertificateHook()
  5652 ms  0x6730 fd:0x7f87bfa81730
  5653 ms  0x6730 ret:0x0
  5653 ms  0x6730 PR_Connect()
  5653 ms  0x6730 fd:0x7f87bfa81730
  5690 ms  0x6730 SECKEY_CreateECPrivateKey()
  5690 ms  0x6730 cx:0x7f87d08ec128
  5690 ms     | 0x6730 EC_ValidatePublicKey()
  5690 ms     | 0x6730 ret:0x0
  5690 ms  0x6730 ret:0x7f87bfad0020::7f87bfad0020  a0 46 7c bf                                      .F|.
  5690 ms  0x6730 SECKEY_CreateECPrivateKey()
  5690 ms  0x6730 cx:0x7f87d08ec128
  5691 ms     | 0x6730 EC_ValidatePublicKey()
  5692 ms     | 0x6730 ret:0x0
  5693 ms  0x6730 ret:0x7f87bfad2020::7f87bfad2020  80 48 7c bf                                      .H|.
           /* TID 0x6791 */
  5731 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5731 ms  0x6791 ret:0x0
           /* TID 0x6730 */
  5732 ms  0x6730 SSL_AuthCertificateComplete()
  5732 ms  0x6730 fd:0x7f87bfa81730
  5732 ms  0x6730 err:0x0
  5767 ms  SECKEY_ECParamsToKeySize()
  5767 ms  0x6730 ret:0x100
  5767 ms  0x6730 SECKEY_CreateECPrivateKey()
  5767 ms  0x6730 cx:0x7f87d08ec128
  5769 ms     | 0x6730 EC_ValidatePublicKey()
  5775 ms     | 0x6730 ret:0x0
  5775 ms  0x6730 ret:0x7f87bfad7820::7f87bfad7820  90 4c 7c bf                                      .L|.
  5776 ms  0x6730 PK11_PubDeriveWithKDF()
  5776 ms  0x6730 seckey:0x7f87bfad7820
  5776 ms     | 0x6730 EC_ValidatePublicKey()
  5780 ms     | 0x6730 ret:0x0
  5784 ms  0x6730 ret:0x7f87f8d17580
  5784 ms  0x6730 PK11_DeriveWithFlags()
  5784 ms  0x6730 basekey:0x7f87f8d17580
  5784 ms     | 0x6730 PK11_DeriveWithTemplate()
  5784 ms  0x6730 ret:0x7f87bf79fd00
  5784 ms  0x6730 PK11_Derive()
  5784 ms  0x6730 basekey:0x7f87bf79fd00
  5784 ms     | 0x6730 PK11_DeriveWithTemplate()
  5784 ms  0x6730 ret:0x7f87bf79fd80
  5784 ms  0x6730 SECKEY_DestroyPrivateKey()
  5784 ms  0x6730 privk:0x7f87bfad7820::7f87bfad7820  90 4c 7c bf                                      .L|.
  5785 ms  0x6730 privk:0x7f87bfad7820::7f87bfad7820  e5 e5 e5 e5                                      ....
  5785 ms  0x6730 PK11_Encrypt()
  5785 ms  0x6730 symkey:0x7f87bf79ff00
  5789 ms  0x6730 PK11_Encrypt()
  5789 ms  0x6730 symkey:0x7f87bf79ff00
  5791 ms  0x6730 PK11_Encrypt()
  5791 ms  0x6730 symkey:0x7f87bf79ff00
  5825 ms  0x6730 SECKEY_DestroyPrivateKey()
  5825 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  80 48 7c bf                                      .H|.
  5825 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e5 e5 e5 e5                                      ....
  5825 ms  0x6730 SECKEY_DestroyPrivateKey()
  5825 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  a0 46 7c bf                                      .F|.
  5825 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  e5 e5 e5 e5                                      ....
  5845 ms  0x6730 SECKEY_CreateECPrivateKey()
  5845 ms  0x6730 cx:0x7f87d08eb288
  5845 ms     | 0x6730 EC_ValidatePublicKey()
  5845 ms     | 0x6730 ret:0x0
  5845 ms  0x6730 ret:0x7f87bfad0020::7f87bfad0020  00 46 7c bf                                      .F|.
  5845 ms  0x6730 SECKEY_CreateECPrivateKey()
  5845 ms  0x6730 cx:0x7f87d08eb288
  5846 ms     | 0x6730 EC_ValidatePublicKey()
  5847 ms     | 0x6730 ret:0x0
  5847 ms  0x6730 ret:0x7f87bfad2020::7f87bfad2020  e0 47 7c bf                                      .G|.
  5862 ms  0x6730 PK11_Encrypt()
  5862 ms  0x6730 symkey:0x7f87bf79ff00
  5891 ms  0x6730 SSL_ImportFD()
  5891 ms  0x6730 ret:0x7f87bfaeafd0
  5891 ms  0x6730 SSL_AuthCertificateHook()
  5891 ms  0x6730 fd:0x7f87bfaeafd0
  5891 ms  0x6730 ret:0x0
  5891 ms  0x6730 PR_Connect()
  5891 ms  0x6730 fd:0x7f87bfaeafd0
           /* TID 0x6738 */
  5897 ms  0x6738 PR_Close()
  5897 ms  0x6738 fd:0x7f87bf768400
           /* TID 0x6730 */
  5901 ms  0x6730 SSL_ImportFD()
  5901 ms  0x6730 ret:0x7f87bf768790
  5901 ms  0x6730 SSL_AuthCertificateHook()
  5901 ms  0x6730 fd:0x7f87bf768790
  5901 ms  0x6730 ret:0x0
  5901 ms  0x6730 PR_Connect()
  5901 ms  0x6730 fd:0x7f87bf768790
  5901 ms  0x6730 SSL_ImportFD()
  5901 ms  0x6730 ret:0x7f87d07f4c40
  5901 ms  0x6730 SSL_AuthCertificateHook()
  5901 ms  0x6730 fd:0x7f87d07f4c40
  5901 ms  0x6730 ret:0x0
  5901 ms  0x6730 PR_Connect()
  5901 ms  0x6730 fd:0x7f87d07f4c40
  5902 ms  0x6730 SSL_ImportFD()
  5902 ms  0x6730 ret:0x7f87d0aaff40
  5902 ms  0x6730 SSL_AuthCertificateHook()
  5902 ms  0x6730 fd:0x7f87d0aaff40
  5902 ms  0x6730 ret:0x0
  5902 ms  0x6730 PR_Connect()
  5902 ms  0x6730 fd:0x7f87d0aaff40
  5902 ms  0x6730 SSL_ImportFD()
  5903 ms  0x6730 ret:0x7f87d07f4dc0
  5903 ms  0x6730 SSL_AuthCertificateHook()
  5903 ms  0x6730 fd:0x7f87d07f4dc0
  5904 ms  0x6730 ret:0x0
  5904 ms  0x6730 PR_Connect()
  5904 ms  0x6730 fd:0x7f87d07f4dc0
  5905 ms  0x6730 SSL_ImportFD()
  5905 ms  0x6730 ret:0x7f87d0c0eb80
  5905 ms  0x6730 SSL_AuthCertificateHook()
  5905 ms  0x6730 fd:0x7f87d0c0eb80
  5905 ms  0x6730 ret:0x0
  5905 ms  0x6730 PR_Connect()
  5905 ms  0x6730 fd:0x7f87d0c0eb80
  5905 ms  0x6730 SSL_ImportFD()
  5905 ms  0x6730 ret:0x7f87d0c0ef70
  5905 ms  0x6730 SSL_AuthCertificateHook()
  5905 ms  0x6730 fd:0x7f87d0c0ef70
  5905 ms  0x6730 ret:0x0
  5905 ms  0x6730 PR_Connect()
  5905 ms  0x6730 fd:0x7f87d0c0ef70
  5964 ms  SECKEY_ECParamsToKeySize()
  5964 ms  0x6730 ret:0x100
  5964 ms  0x6730 SECKEY_CreateECPrivateKey()
  5964 ms  0x6730 cx:0x7f87d08eb0e8
  5966 ms     | 0x6730 EC_ValidatePublicKey()
  5969 ms     | 0x6730 ret:0x0
  5969 ms  0x6730 ret:0x7f87bfad8820::7f87bfad8820  00 3b 60 bf                                      .;`.
  5970 ms  0x6730 PK11_PubDeriveWithKDF()
  5970 ms  0x6730 seckey:0x7f87bfad8820
  5970 ms     | 0x6730 EC_ValidatePublicKey()
  5986 ms     | 0x6730 ret:0x0
  5988 ms  0x6730 ret:0x7f87f8d17580
  5988 ms  0x6730 PK11_DeriveWithFlags()
  5988 ms  0x6730 basekey:0x7f87f8d17580
  5988 ms     | 0x6730 PK11_DeriveWithTemplate()
  5988 ms  0x6730 ret:0x7f87bf7e9700
  5988 ms  0x6730 PK11_Derive()
  5988 ms  0x6730 basekey:0x7f87bf7e9700
  5988 ms     | 0x6730 PK11_DeriveWithTemplate()
  5988 ms  0x6730 ret:0x7f87bf7e9800
  5988 ms  0x6730 SECKEY_DestroyPrivateKey()
  5988 ms  0x6730 privk:0x7f87bfad8820::7f87bfad8820  00 3b 60 bf                                      .;`.
  5989 ms  0x6730 privk:0x7f87bfad8820::7f87bfad8820  e5 e5 e5 e5                                      ....
  5989 ms  0x6730 PK11_Encrypt()
  5989 ms  0x6730 symkey:0x7f87bf7e9980
  5992 ms  0x6730 SECKEY_CreateECPrivateKey()
  5992 ms  0x6730 cx:0x7f87d08ebf88
  5992 ms     | 0x6730 EC_ValidatePublicKey()
  5992 ms     | 0x6730 ret:0x0
  5992 ms  0x6730 ret:0x7f87bfad7820::7f87bfad7820  60 3f 60 bf                                      `?`.
  5992 ms  0x6730 SECKEY_CreateECPrivateKey()
  5992 ms  0x6730 cx:0x7f87d08ebf88
  5993 ms     | 0x6730 EC_ValidatePublicKey()
  5994 ms     | 0x6730 ret:0x0
  5994 ms  0x6730 ret:0x7f87bfadb020::7f87bfadb020  b0 9f 76 bf                                      ..v.
  5997 ms  0x6730 SECKEY_CreateECPrivateKey()
  5997 ms  0x6730 cx:0x7f87d08ebde8
  5997 ms     | 0x6730 EC_ValidatePublicKey()
  5997 ms     | 0x6730 ret:0x0
  5997 ms  0x6730 ret:0x7f87bfade020::7f87bfade020  60 3a 60 bf                                      `:`.
  5997 ms  0x6730 SECKEY_CreateECPrivateKey()
  5997 ms  0x6730 cx:0x7f87d08ebde8
  5998 ms     | 0x6730 EC_ValidatePublicKey()
  6001 ms     | 0x6730 ret:0x0
  6001 ms  0x6730 ret:0x7f87bfae0020::7f87bfae0020  40 42 7c bf                                      @B|.
  6003 ms  0x6730 SECKEY_CreateECPrivateKey()
  6003 ms  0x6730 cx:0x7f87d08ebc48
  6003 ms     | 0x6730 EC_ValidatePublicKey()
  6003 ms     | 0x6730 ret:0x0
  6004 ms  0x6730 ret:0x7f87bfae2820::7f87bfae2820  20 44 7c bf                                       D|.
  6004 ms  0x6730 SECKEY_CreateECPrivateKey()
  6004 ms  0x6730 cx:0x7f87d08ebc48
  6006 ms     | 0x6730 EC_ValidatePublicKey()
  6008 ms     | 0x6730 ret:0x0
  6008 ms  0x6730 ret:0x7f87bfae4820::7f87bfae4820  50 4b 7c bf                                      PK|.
  6009 ms  0x6730 SECKEY_CreateECPrivateKey()
  6009 ms  0x6730 cx:0x7f87d08ebaa8
  6010 ms     | 0x6730 EC_ValidatePublicKey()
  6010 ms     | 0x6730 ret:0x0
  6010 ms  0x6730 ret:0x7f87d0875820::7f87d0875820  90 4c 7c bf                                      .L|.
  6010 ms  0x6730 SECKEY_CreateECPrivateKey()
  6010 ms  0x6730 cx:0x7f87d08ebaa8
  6011 ms     | 0x6730 EC_ValidatePublicKey()
  6017 ms     | 0x6730 ret:0x0
  6017 ms  0x6730 ret:0x7f87d0b77820::7f87d0b77820  70 4e 7c bf                                      pN|.
  6021 ms  0x6730 SECKEY_CreateECPrivateKey()
  6021 ms  0x6730 cx:0x7f87d08eb908
  6022 ms     | 0x6730 EC_ValidatePublicKey()
  6022 ms     | 0x6730 ret:0x0
  6022 ms  0x6730 ret:0x7f87d1dcf020::7f87d1dcf020  b0 4f 7c bf                                      .O|.
  6022 ms  0x6730 SECKEY_CreateECPrivateKey()
  6022 ms  0x6730 cx:0x7f87d08eb908
  6024 ms     | 0x6730 EC_ValidatePublicKey()
  6026 ms     | 0x6730 ret:0x0
  6027 ms  0x6730 ret:0x7f87d1de4020::7f87d1de4020  d0 1d 81 bf                                      ....
  6027 ms  0x6730 SECKEY_CreateECPrivateKey()
  6027 ms  0x6730 cx:0x7f87d08eb768
  6028 ms     | 0x6730 EC_ValidatePublicKey()
  6028 ms     | 0x6730 ret:0x0
  6028 ms  0x6730 ret:0x7f87d6903020::7f87d6903020  50 c6 86 bf                                      P...
  6028 ms  0x6730 SECKEY_CreateECPrivateKey()
  6028 ms  0x6730 cx:0x7f87d08eb768
  6028 ms     | 0x6730 EC_ValidatePublicKey()
  6030 ms     | 0x6730 ret:0x0
  6030 ms  0x6730 ret:0x7f87d6907020::7f87d6907020  30 c8 86 bf                                      0...
  6031 ms  0x6730 SECKEY_CreateECPrivateKey()
  6031 ms  0x6730 cx:0x7f87d08eb428
  6031 ms     | 0x6730 EC_ValidatePublicKey()
  6031 ms     | 0x6730 ret:0x0
  6031 ms  0x6730 ret:0x7f87d690b820::7f87d690b820  70 c9 86 bf                                      p...
  6031 ms  0x6730 SECKEY_CreateECPrivateKey()
  6031 ms  0x6730 cx:0x7f87d08eb428
  6032 ms     | 0x6730 EC_ValidatePublicKey()
  6041 ms     | 0x6730 ret:0x0
  6041 ms  0x6730 ret:0x7f87d6910020::7f87d6910020  c0 39 88 bf                                      .9..
  6043 ms  0x6730 PR_Connect()
  6043 ms  0x6730 fd:0x7f87d168fd60
           /* TID 0x6738 */
  6096 ms  0x6738 PR_Close()
  6096 ms  0x6738 fd:0x7f87bfaeaee0
           /* TID 0x6791 */
  6097 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6097 ms  0x6791 ret:0x0
  6097 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6097 ms  0x6791 ret:0x0
           /* TID 0x6730 */
  6105 ms  0x6730 SSL_AuthCertificateComplete()
  6105 ms  0x6730 fd:0x7f87bfa815b0
  6105 ms  0x6730 err:0x0
  6105 ms  0x6730 PK11_Encrypt()
  6105 ms  0x6730 symkey:0x7f87bf7e9980
  6105 ms  0x6730 PK11_Encrypt()
  6105 ms  0x6730 symkey:0x7f87bf7e9980
  6172 ms  SECKEY_ECParamsToKeySize()
  6172 ms  0x6730 ret:0x100
  6172 ms  0x6730 SECKEY_CreateECPrivateKey()
  6172 ms  0x6730 cx:0x7f87d08eb288
  6174 ms     | 0x6730 EC_ValidatePublicKey()
  6178 ms     | 0x6730 ret:0x0
  6178 ms  0x6730 ret:0x7f87d6916820::7f87d6916820  20 ae 8c bf                                       ...
  6178 ms  0x6730 PK11_PubDeriveWithKDF()
  6178 ms  0x6730 seckey:0x7f87d6916820
  6178 ms     | 0x6730 EC_ValidatePublicKey()
  6182 ms     | 0x6730 ret:0x0
  6190 ms  0x6730 ret:0x7f87f8d17580
  6190 ms  0x6730 PK11_DeriveWithFlags()
  6190 ms  0x6730 basekey:0x7f87f8d17580
  6190 ms     | 0x6730 PK11_DeriveWithTemplate()
  6190 ms  0x6730 ret:0x7f87bf7e9780
  6190 ms  0x6730 PK11_Derive()
  6190 ms  0x6730 basekey:0x7f87bf7e9780
  6190 ms     | 0x6730 PK11_DeriveWithTemplate()
  6190 ms  0x6730 ret:0x7f87bf7e9d00
  6190 ms  0x6730 SECKEY_DestroyPrivateKey()
  6190 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  20 ae 8c bf                                       ...
  6190 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  e5 e5 e5 e5                                      ....
  6191 ms  0x6730 PK11_Encrypt()
  6191 ms  0x6730 symkey:0x7f87bf7e9e80
  6195 ms  0x6730 SSL_AuthCertificateComplete()
  6195 ms  0x6730 fd:0x7f87bfa81c40
  6195 ms  0x6730 err:0x0
  6198 ms  0x6730 PK11_Encrypt()
  6198 ms  0x6730 symkey:0x7f87bf7e9e80
  6225 ms  0x6730 SECKEY_CreateECPrivateKey()
  6225 ms  0x6730 cx:0x7f87d08ec7a8
  6226 ms     | 0x6730 EC_ValidatePublicKey()
  6226 ms     | 0x6730 ret:0x0
  6226 ms  0x6730 ret:0x7f87d086f820::7f87d086f820  60 a0 8a bf                                      `...
  6226 ms  0x6730 SECKEY_CreateECPrivateKey()
  6226 ms  0x6730 cx:0x7f87d08ec7a8
  6227 ms     | 0x6730 EC_ValidatePublicKey()
  6231 ms     | 0x6730 ret:0x0
  6231 ms  0x6730 ret:0x7f87d0872020::7f87d0872020  d0 03 9b bf                                      ....
  6231 ms  0x6730 SECKEY_CreateECPrivateKey()
  6231 ms  0x6730 cx:0x7f87d08ed168
  6232 ms     | 0x6730 EC_ValidatePublicKey()
  6232 ms     | 0x6730 ret:0x0
  6232 ms  0x6730 ret:0x7f87d1dd5020::7f87d1dd5020  d0 0d 9b bf                                      ....
  6232 ms  0x6730 SECKEY_CreateECPrivateKey()
  6232 ms  0x6730 cx:0x7f87d08ed168
  6233 ms     | 0x6730 EC_ValidatePublicKey()
  6237 ms     | 0x6730 ret:0x0
  6237 ms  0x6730 ret:0x7f87d28b5820::7f87d28b5820  00 b1 ae bf                                      ....
  6238 ms  0x6730 SECKEY_CreateECPrivateKey()
  6238 ms  0x6730 cx:0x7f87d08ec948
  6238 ms     | 0x6730 EC_ValidatePublicKey()
  6238 ms     | 0x6730 ret:0x0
  6238 ms  0x6730 ret:0x7f87d28b9820::7f87d28b9820  c0 b9 ae bf                                      ....
  6238 ms  0x6730 SECKEY_CreateECPrivateKey()
  6238 ms  0x6730 cx:0x7f87d08ec948
  6239 ms     | 0x6730 EC_ValidatePublicKey()
  6241 ms     | 0x6730 ret:0x0
  6241 ms  0x6730 ret:0x7f87d559b820::7f87d559b820  90 bc ae bf                                      ....
  6243 ms  0x6730 SECKEY_CreateECPrivateKey()
  6243 ms  0x6730 cx:0x7f87d08ecae8
  6244 ms     | 0x6730 EC_ValidatePublicKey()
  6244 ms     | 0x6730 ret:0x0
  6244 ms  0x6730 ret:0x7f87d6919820::7f87d6919820  d0 28 aa d0                                      .(..
  6244 ms  0x6730 SECKEY_CreateECPrivateKey()
  6244 ms  0x6730 cx:0x7f87d08ecae8
  6244 ms     | 0x6730 EC_ValidatePublicKey()
  6246 ms     | 0x6730 ret:0x0
  6246 ms  0x6730 ret:0x7f87d691d820::7f87d691d820  30 38 b2 d0                                      08..
  6246 ms  0x6730 SECKEY_CreateECPrivateKey()
  6246 ms  0x6730 cx:0x7f87d08ecfc8
  6247 ms     | 0x6730 EC_ValidatePublicKey()
  6247 ms     | 0x6730 ret:0x0
  6247 ms  0x6730 ret:0x7f87d69a1820::7f87d69a1820  d0 3d b2 d0                                      .=..
  6247 ms  0x6730 SECKEY_CreateECPrivateKey()
  6247 ms  0x6730 cx:0x7f87d08ecfc8
  6248 ms     | 0x6730 EC_ValidatePublicKey()
  6249 ms     | 0x6730 ret:0x0
  6249 ms  0x6730 ret:0x7f87d69a7020::7f87d69a7020  e0 b2 c9 d0                                      ....
  6249 ms  0x6730 SECKEY_CreateECPrivateKey()
  6249 ms  0x6730 cx:0x7f87d08ece28
  6250 ms     | 0x6730 EC_ValidatePublicKey()
  6250 ms     | 0x6730 ret:0x0
  6250 ms  0x6730 ret:0x7f87d69bd820::7f87d69bd820  c0 b4 c9 d0                                      ....
  6250 ms  0x6730 SECKEY_CreateECPrivateKey()
  6250 ms  0x6730 cx:0x7f87d08ece28
  6250 ms     | 0x6730 EC_ValidatePublicKey()
  6252 ms     | 0x6730 ret:0x0
  6252 ms  0x6730 ret:0x7f87d6aa7020::7f87d6aa7020  40 b7 c9 d0                                      @...
  6252 ms  0x6730 SECKEY_CreateECPrivateKey()
  6252 ms  0x6730 cx:0x7f87d08ecc88
  6253 ms     | 0x6730 EC_ValidatePublicKey()
  6253 ms     | 0x6730 ret:0x0
  6253 ms  0x6730 ret:0x7f87d6d05020::7f87d6d05020  80 b8 c9 d0                                      ....
  6253 ms  0x6730 SECKEY_CreateECPrivateKey()
  6253 ms  0x6730 cx:0x7f87d08ecc88
  6253 ms     | 0x6730 EC_ValidatePublicKey()
  6255 ms     | 0x6730 ret:0x0
  6255 ms  0x6730 ret:0x7f87d6d07020::7f87d6d07020  60 ba c9 d0                                      `...
  6320 ms  0x6730 SECKEY_DestroyPrivateKey()
  6320 ms  0x6730 privk:0x7f87bf920020::7f87bf920020  a0 41 7c bf                                      .A|.
  6320 ms  0x6730 privk:0x7f87bf920020::7f87bf920020  e5 e5 e5 e5                                      ....
  6320 ms  0x6730 SECKEY_DestroyPrivateKey()
  6320 ms  0x6730 privk:0x7f87bfacc020::7f87bfacc020  60 bf ae bf                                      `...
  6320 ms  0x6730 privk:0x7f87bfacc020::7f87bfacc020  e5 e5 e5 e5                                      ....
  6320 ms  0x6730 PK11_Encrypt()
  6320 ms  0x6730 symkey:0x7f87bf7e9980
  6324 ms  SECKEY_ECParamsToKeySize()
  6324 ms  0x6730 ret:0x100
  6324 ms  0x6730 SECKEY_CreateECPrivateKey()
  6324 ms  0x6730 cx:0x7f87d08ebf88
  6325 ms     | 0x6730 EC_ValidatePublicKey()
  6328 ms     | 0x6730 ret:0x0
  6328 ms  0x6730 ret:0x7f87d6d15020::7f87d6d15020  60 e5 ff d0                                      `...
  6328 ms  0x6730 PK11_PubDeriveWithKDF()
  6328 ms  0x6730 seckey:0x7f87d6d15020
  6328 ms     | 0x6730 EC_ValidatePublicKey()
  6331 ms     | 0x6730 ret:0x0
  6334 ms  0x6730 ret:0x7f87f8d17580
  6334 ms  0x6730 PK11_DeriveWithFlags()
  6334 ms  0x6730 basekey:0x7f87f8d17580
  6334 ms     | 0x6730 PK11_DeriveWithTemplate()
  6334 ms  0x6730 ret:0x7f87bf7ea580
  6334 ms  0x6730 PK11_Derive()
  6334 ms  0x6730 basekey:0x7f87bf7ea580
  6335 ms     | 0x6730 PK11_DeriveWithTemplate()
  6335 ms  0x6730 ret:0x7f87bf7ea600
  6335 ms  0x6730 SECKEY_DestroyPrivateKey()
  6335 ms  0x6730 privk:0x7f87d6d15020::7f87d6d15020  60 e5 ff d0                                      `...
  6335 ms  0x6730 privk:0x7f87d6d15020::7f87d6d15020  e5 e5 e5 e5                                      ....
  6335 ms  0x6730 PK11_Encrypt()
  6335 ms  0x6730 symkey:0x7f87bf7ea780
  6336 ms  SECKEY_ECParamsToKeySize()
  6336 ms  0x6730 ret:0x100
  6336 ms  0x6730 SECKEY_CreateECPrivateKey()
  6336 ms  0x6730 cx:0x7f87d08ebde8
  6337 ms     | 0x6730 EC_ValidatePublicKey()
  6340 ms     | 0x6730 ret:0x0
  6340 ms  0x6730 ret:0x7f87d7083820::7f87d7083820  50 e6 ff d0                                      P...
  6340 ms  0x6730 PK11_PubDeriveWithKDF()
  6340 ms  0x6730 seckey:0x7f87d7083820
  6340 ms     | 0x6730 EC_ValidatePublicKey()
  6346 ms     | 0x6730 ret:0x0
  6349 ms  0x6730 ret:0x7f87f8d17580
  6349 ms  0x6730 PK11_DeriveWithFlags()
  6349 ms  0x6730 basekey:0x7f87f8d17580
  6349 ms     | 0x6730 PK11_DeriveWithTemplate()
  6349 ms  0x6730 ret:0x7f87bf7ead00
  6349 ms  0x6730 PK11_Derive()
  6349 ms  0x6730 basekey:0x7f87bf7ead00
  6349 ms     | 0x6730 PK11_DeriveWithTemplate()
  6349 ms  0x6730 ret:0x7f87bf7ead80
  6349 ms  0x6730 SECKEY_DestroyPrivateKey()
  6349 ms  0x6730 privk:0x7f87d7083820::7f87d7083820  50 e6 ff d0                                      P...
  6349 ms  0x6730 privk:0x7f87d7083820::7f87d7083820  e5 e5 e5 e5                                      ....
  6350 ms  0x6730 PK11_Encrypt()
  6350 ms  0x6730 symkey:0x7f87bf7eaf00
  6350 ms  SECKEY_ECParamsToKeySize()
  6351 ms  0x6730 ret:0x100
  6351 ms  0x6730 SECKEY_CreateECPrivateKey()
  6351 ms  0x6730 cx:0x7f87d08ebc48
  6352 ms     | 0x6730 EC_ValidatePublicKey()
  6354 ms     | 0x6730 ret:0x0
  6355 ms  0x6730 ret:0x7f87d7090020::7f87d7090020  10 d5 61 d1                                      ..a.
  6355 ms  0x6730 PK11_PubDeriveWithKDF()
  6355 ms  0x6730 seckey:0x7f87d7090020
  6355 ms     | 0x6730 EC_ValidatePublicKey()
  6358 ms     | 0x6730 ret:0x0
  6361 ms  0x6730 ret:0x7f87f8d17580
  6361 ms  0x6730 PK11_DeriveWithFlags()
  6361 ms  0x6730 basekey:0x7f87f8d17580
  6361 ms     | 0x6730 PK11_DeriveWithTemplate()
  6361 ms  0x6730 ret:0x7f87bf888480
  6361 ms  0x6730 PK11_Derive()
  6361 ms  0x6730 basekey:0x7f87bf888480
  6361 ms     | 0x6730 PK11_DeriveWithTemplate()
  6361 ms  0x6730 ret:0x7f87bf888a00
  6361 ms  0x6730 SECKEY_DestroyPrivateKey()
  6361 ms  0x6730 privk:0x7f87d7090020::7f87d7090020  10 d5 61 d1                                      ..a.
  6361 ms  0x6730 privk:0x7f87d7090020::7f87d7090020  e5 e5 e5 e5                                      ....
  6361 ms  0x6730 PK11_Encrypt()
  6361 ms  0x6730 symkey:0x7f87bf8db100
  6362 ms  SECKEY_ECParamsToKeySize()
  6362 ms  0x6730 ret:0x100
  6362 ms  0x6730 SECKEY_CreateECPrivateKey()
  6362 ms  0x6730 cx:0x7f87d08ebaa8
  6363 ms     | 0x6730 EC_ValidatePublicKey()
  6365 ms     | 0x6730 ret:0x0
  6365 ms  0x6730 ret:0x7f87d7098020::7f87d7098020  30 c3 d3 d1                                      0...
  6365 ms  0x6730 PK11_PubDeriveWithKDF()
  6365 ms  0x6730 seckey:0x7f87d7098020
  6365 ms     | 0x6730 EC_ValidatePublicKey()
  6366 ms     | 0x6730 ret:0x0
  6368 ms  0x6730 ret:0x7f87f8d17580
  6368 ms  0x6730 PK11_DeriveWithFlags()
  6368 ms  0x6730 basekey:0x7f87f8d17580
  6368 ms     | 0x6730 PK11_DeriveWithTemplate()
  6368 ms  0x6730 ret:0x7f87bf8f4a00
  6368 ms  0x6730 PK11_Derive()
  6368 ms  0x6730 basekey:0x7f87bf8f4a00
  6368 ms     | 0x6730 PK11_DeriveWithTemplate()
  6368 ms  0x6730 ret:0x7f87bf8f4b00
  6368 ms  0x6730 SECKEY_DestroyPrivateKey()
  6368 ms  0x6730 privk:0x7f87d7098020::7f87d7098020  30 c3 d3 d1                                      0...
  6368 ms  0x6730 privk:0x7f87d7098020::7f87d7098020  e5 e5 e5 e5                                      ....
  6368 ms  0x6730 PK11_Encrypt()
  6368 ms  0x6730 symkey:0x7f87bfabef80
  6370 ms  SECKEY_ECParamsToKeySize()
  6370 ms  0x6730 ret:0x100
  6370 ms  0x6730 SECKEY_CreateECPrivateKey()
  6370 ms  0x6730 cx:0x7f87d08eb908
  6371 ms     | 0x6730 EC_ValidatePublicKey()
  6372 ms     | 0x6730 ret:0x0
  6372 ms  0x6730 ret:0x7f87d717f820::7f87d717f820  e0 c7 d3 d1                                      ....
  6372 ms  0x6730 PK11_PubDeriveWithKDF()
  6372 ms  0x6730 seckey:0x7f87d717f820
  6372 ms     | 0x6730 EC_ValidatePublicKey()
  6377 ms     | 0x6730 ret:0x0
  6380 ms  0x6730 ret:0x7f87f8d17580
  6380 ms  0x6730 PK11_DeriveWithFlags()
  6380 ms  0x6730 basekey:0x7f87f8d17580
  6380 ms     | 0x6730 PK11_DeriveWithTemplate()
  6380 ms  0x6730 ret:0x7f87d07f8100
  6380 ms  0x6730 PK11_Derive()
  6380 ms  0x6730 basekey:0x7f87d07f8100
  6380 ms     | 0x6730 PK11_DeriveWithTemplate()
  6380 ms  0x6730 ret:0x7f87d07f8180
  6380 ms  0x6730 SECKEY_DestroyPrivateKey()
  6380 ms  0x6730 privk:0x7f87d717f820::7f87d717f820  e0 c7 d3 d1                                      ....
  6380 ms  0x6730 privk:0x7f87d717f820::7f87d717f820  e5 e5 e5 e5                                      ....
  6380 ms  0x6730 PK11_Encrypt()
  6380 ms  0x6730 symkey:0x7f87d07f8300
  6380 ms  SECKEY_ECParamsToKeySize()
  6380 ms  0x6730 ret:0x100
  6380 ms  0x6730 SECKEY_CreateECPrivateKey()
  6380 ms  0x6730 cx:0x7f87d08eb768
  6381 ms     | 0x6730 EC_ValidatePublicKey()
  6382 ms     | 0x6730 ret:0x0
  6382 ms  0x6730 ret:0x7f87d7184020::7f87d7184020  c0 ce d3 d1                                      ....
  6382 ms  0x6730 PK11_PubDeriveWithKDF()
  6382 ms  0x6730 seckey:0x7f87d7184020
  6382 ms     | 0x6730 EC_ValidatePublicKey()
  6384 ms     | 0x6730 ret:0x0
  6385 ms  0x6730 ret:0x7f87f8d17580
  6385 ms  0x6730 PK11_DeriveWithFlags()
  6385 ms  0x6730 basekey:0x7f87f8d17580
  6385 ms     | 0x6730 PK11_DeriveWithTemplate()
  6385 ms  0x6730 ret:0x7f87d07f8400
  6385 ms  0x6730 PK11_Derive()
  6385 ms  0x6730 basekey:0x7f87d07f8400
  6385 ms     | 0x6730 PK11_DeriveWithTemplate()
  6385 ms  0x6730 ret:0x7f87d07f8480
  6385 ms  0x6730 SECKEY_DestroyPrivateKey()
  6385 ms  0x6730 privk:0x7f87d7184020::7f87d7184020  c0 ce d3 d1                                      ....
  6385 ms  0x6730 privk:0x7f87d7184020::7f87d7184020  e5 e5 e5 e5                                      ....
  6386 ms  0x6730 PK11_Encrypt()
  6386 ms  0x6730 symkey:0x7f87d07f8a00
           /* TID 0x6738 */
  6386 ms  0x6738 PR_Close()
  6386 ms  0x6738 fd:0x7f87d0c0e640
           /* TID 0x6791 */
  6386 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6387 ms  0x6791 ret:0x0
  6387 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6387 ms  0x6791 ret:0x0
           /* TID 0x6730 */
  6388 ms  0x6730 SSL_AuthCertificateComplete()
  6388 ms  0x6730 fd:0x7f87bfa81700
  6388 ms  0x6730 err:0x0
  6388 ms  0x6730 SSL_AuthCertificateComplete()
  6388 ms  0x6730 fd:0x7f87bfa81130
  6388 ms  0x6730 err:0x0
  6388 ms  0x6730 PK11_Encrypt()
  6388 ms  0x6730 symkey:0x7f87bf7ea780
  6388 ms  0x6730 PK11_Encrypt()
  6388 ms  0x6730 symkey:0x7f87bf7ea780
  6389 ms  0x6730 PK11_Encrypt()
  6389 ms  0x6730 symkey:0x7f87d07f8a00
  6389 ms  0x6730 PK11_Encrypt()
  6389 ms  0x6730 symkey:0x7f87d07f8a00
  6390 ms  SECKEY_ECParamsToKeySize()
  6390 ms  0x6730 ret:0x100
  6390 ms  0x6730 SECKEY_CreateECPrivateKey()
  6390 ms  0x6730 cx:0x7f87d08eb428
  6391 ms     | 0x6730 EC_ValidatePublicKey()
  6392 ms     | 0x6730 ret:0x0
  6392 ms  0x6730 ret:0x7f87d718c020::7f87d718c020  30 28 db d1                                      0(..
  6393 ms  0x6730 PK11_PubDeriveWithKDF()
  6393 ms  0x6730 seckey:0x7f87d718c020
  6393 ms     | 0x6730 EC_ValidatePublicKey()
  6394 ms     | 0x6730 ret:0x0
  6395 ms  0x6730 ret:0x7f87f8d17580
  6395 ms  0x6730 PK11_DeriveWithFlags()
  6395 ms  0x6730 basekey:0x7f87f8d17580
  6395 ms     | 0x6730 PK11_DeriveWithTemplate()
  6395 ms  0x6730 ret:0x7f87d08ee180
  6395 ms  0x6730 PK11_Derive()
  6395 ms  0x6730 basekey:0x7f87d08ee180
  6396 ms     | 0x6730 PK11_DeriveWithTemplate()
  6396 ms  0x6730 ret:0x7f87d08ee200
  6396 ms  0x6730 SECKEY_DestroyPrivateKey()
  6396 ms  0x6730 privk:0x7f87d718c020::7f87d718c020  30 28 db d1                                      0(..
  6396 ms  0x6730 privk:0x7f87d718c020::7f87d718c020  e5 e5 e5 e5                                      ....
  6396 ms  0x6730 PK11_Encrypt()
  6396 ms  0x6730 symkey:0x7f87d08ee380
  6396 ms  0x6730 PR_Connect()
  6396 ms  0x6730 fd:0x7f87d0c50250
  6396 ms  0x6730 PK11_Encrypt()
  6396 ms  0x6730 symkey:0x7f87bf7ea780
  6397 ms  0x6730 PK11_Encrypt()
  6397 ms  0x6730 symkey:0x7f87bf7ea780
  6397 ms  0x6730 PK11_Encrypt()
  6397 ms  0x6730 symkey:0x7f87bf7ea780
  6397 ms  0x6730 PK11_Encrypt()
  6397 ms  0x6730 symkey:0x7f87bf7ea780
  6397 ms  0x6730 PK11_Encrypt()
  6397 ms  0x6730 symkey:0x7f87bf7ea780
  6398 ms  0x6730 PK11_Encrypt()
  6398 ms  0x6730 symkey:0x7f87bf7ea780
  6398 ms  0x6730 PR_Connect()
  6398 ms  0x6730 fd:0x7f87bfaea760
  6398 ms  0x6730 PK11_Encrypt()
  6398 ms  0x6730 symkey:0x7f87bf7ea780
  6399 ms  0x6730 PK11_Encrypt()
  6399 ms  0x6730 symkey:0x7f87bf7ea780
  6399 ms  0x6730 PR_Connect()
  6399 ms  0x6730 fd:0x7f87bfaea820
  6399 ms  0x6730 PR_Connect()
  6399 ms  0x6730 fd:0x7f87bfaea7c0
  6399 ms  0x6730 PK11_Encrypt()
  6399 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x67dd */
  6414 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6414 ms  0x67dd ret:0x0
  6414 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6414 ms  0x67dd ret:0x0
           /* TID 0x6738 */
  6414 ms  0x6738 PR_Close()
  6414 ms  0x6738 fd:0x7f87bfabb4f0
           /* TID 0x6730 */
  6414 ms  0x6730 SSL_AuthCertificateComplete()
  6414 ms  0x6730 fd:0x7f87bfa81640
  6414 ms  0x6730 err:0x0
  6415 ms  0x6730 PK11_Encrypt()
  6415 ms  0x6730 symkey:0x7f87bf7eaf00
  6415 ms  0x6730 PK11_Encrypt()
  6415 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  6441 ms  0x6738 PR_Close()
  6441 ms  0x6738 fd:0x7f87bf88e640
           /* TID 0x67de */
  6442 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6442 ms  0x67de ret:0x0
  6442 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6442 ms  0x67de ret:0x0
           /* TID 0x6730 */
  6443 ms  0x6730 SSL_AuthCertificateComplete()
  6443 ms  0x6730 fd:0x7f87bfa81610
  6443 ms  0x6730 err:0x0
  6443 ms  0x6730 PK11_Encrypt()
  6443 ms  0x6730 symkey:0x7f87bf8db100
  6444 ms  0x6730 PK11_Encrypt()
  6444 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  6449 ms  0x6738 PR_Close()
  6449 ms  0x6738 fd:0x7f87d07f4a90
           /* TID 0x67df */
  6450 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6450 ms  0x67df ret:0x0
  6450 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6451 ms  0x67df ret:0x0
           /* TID 0x6730 */
  6451 ms  0x6730 SSL_AuthCertificateComplete()
  6451 ms  0x6730 fd:0x7f87bfa81550
  6451 ms  0x6730 err:0x0
           /* TID 0x6738 */
  6452 ms  0x6738 PR_Close()
  6452 ms  0x6738 fd:0x7f87d07f92b0
           /* TID 0x67e0 */
  6453 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6453 ms  0x67e0 ret:0x0
  6453 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6453 ms  0x67e0 ret:0x0
           /* TID 0x6738 */
  6453 ms  0x6738 PR_Close()
  6453 ms  0x6738 fd:0x7f87d0aafca0
           /* TID 0x6791 */
  6454 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6454 ms  0x6791 ret:0x0
  6454 ms  0x6791 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6454 ms  0x6791 ret:0x0
           /* TID 0x6730 */
  6455 ms  0x6730 PK11_Encrypt()
  6455 ms  0x6730 symkey:0x7f87bfabef80
  6455 ms  0x6730 SSL_AuthCertificateComplete()
  6455 ms  0x6730 fd:0x7f87bfa81190
  6455 ms  0x6730 err:0x0
  6455 ms  0x6730 SSL_AuthCertificateComplete()
  6455 ms  0x6730 fd:0x7f87bfa81820
  6455 ms  0x6730 err:0x0
  6455 ms  0x6730 PK11_Encrypt()
  6455 ms  0x6730 symkey:0x7f87bf7ea780
  6456 ms  0x6730 PK11_Encrypt()
  6456 ms  0x6730 symkey:0x7f87d07f8300
  6456 ms  0x6730 PK11_Encrypt()
  6456 ms  0x6730 symkey:0x7f87d08ee380
  6456 ms  0x6730 PK11_Encrypt()
  6456 ms  0x6730 symkey:0x7f87d08ee380
  6457 ms  0x6730 PK11_Encrypt()
  6457 ms  0x6730 symkey:0x7f87bf7ea780
  6462 ms  0x6730 SSL_ImportFD()
  6462 ms  0x6730 ret:0x7f87d0c50a00
  6462 ms  0x6730 SSL_AuthCertificateHook()
  6462 ms  0x6730 fd:0x7f87d0c50a00
  6462 ms  0x6730 ret:0x0
  6463 ms  0x6730 PK11_Encrypt()
  6463 ms  0x6730 symkey:0x7f87d3ba1d80
  6464 ms  0x6730 PK11_Encrypt()
  6464 ms  0x6730 symkey:0x7f87d3ba1d80
  6464 ms  0x6730 PK11_Encrypt()
  6464 ms  0x6730 symkey:0x7f87d3ba1d80
  6464 ms  0x6730 PK11_Encrypt()
  6464 ms  0x6730 symkey:0x7f87d3ba1d80
  6465 ms  0x6730 PR_Connect()
  6465 ms  0x6730 fd:0x7f87d0c50a00
  6465 ms  0x6730 SSL_ImportFD()
  6465 ms  0x6730 ret:0x7f87bfa816d0
  6465 ms  0x6730 SSL_AuthCertificateHook()
  6465 ms  0x6730 fd:0x7f87bfa816d0
  6465 ms  0x6730 ret:0x0
  6465 ms  0x6730 PR_Connect()
  6465 ms  0x6730 fd:0x7f87bfa816d0
  6465 ms  0x6730 SSL_ImportFD()
  6465 ms  0x6730 ret:0x7f87d0aafe20
  6465 ms  0x6730 SSL_AuthCertificateHook()
  6465 ms  0x6730 fd:0x7f87d0aafe20
  6465 ms  0x6730 ret:0x0
  6466 ms  0x6730 PR_Connect()
  6466 ms  0x6730 fd:0x7f87d0aafe20
  6466 ms  0x6730 SSL_ImportFD()
  6466 ms  0x6730 ret:0x7f87d0c0e940
  6466 ms  0x6730 SSL_AuthCertificateHook()
  6466 ms  0x6730 fd:0x7f87d0c0e940
  6466 ms  0x6730 ret:0x0
  6466 ms  0x6730 PR_Connect()
  6466 ms  0x6730 fd:0x7f87d0c0e940
  6466 ms  0x6730 SSL_ImportFD()
  6466 ms  0x6730 ret:0x7f87d0c50160
  6466 ms  0x6730 SSL_AuthCertificateHook()
  6466 ms  0x6730 fd:0x7f87d0c50160
  6466 ms  0x6730 ret:0x0
  6466 ms  0x6730 PR_Connect()
  6466 ms  0x6730 fd:0x7f87d0c50160
  6467 ms  0x6730 SSL_ImportFD()
  6467 ms  0x6730 ret:0x7f87d0c505e0
  6467 ms  0x6730 SSL_AuthCertificateHook()
  6467 ms  0x6730 fd:0x7f87d0c505e0
  6467 ms  0x6730 ret:0x0
  6467 ms  0x6730 PK11_Encrypt()
  6467 ms  0x6730 symkey:0x7f87d3ba1d80
  6468 ms  0x6730 PK11_Encrypt()
  6468 ms  0x6730 symkey:0x7f87d3ba1d80
  6468 ms  0x6730 PK11_Encrypt()
  6468 ms  0x6730 symkey:0x7f87d3ba1d80
  6468 ms  0x6730 PK11_Encrypt()
  6468 ms  0x6730 symkey:0x7f87d3ba1d80
  6469 ms  0x6730 PK11_Encrypt()
  6469 ms  0x6730 symkey:0x7f87d3ba1d80
  6469 ms  0x6730 PR_Connect()
  6469 ms  0x6730 fd:0x7f87d0c505e0
  6469 ms  0x6730 SSL_ImportFD()
  6469 ms  0x6730 ret:0x7f87bfabb040
  6469 ms  0x6730 SSL_AuthCertificateHook()
  6469 ms  0x6730 fd:0x7f87bfabb040
  6469 ms  0x6730 ret:0x0
  6469 ms  0x6730 PR_Connect()
  6469 ms  0x6730 fd:0x7f87bfabb040
  6469 ms  0x6730 SSL_ImportFD()
  6469 ms  0x6730 ret:0x7f87d0c50730
  6469 ms  0x6730 SSL_AuthCertificateHook()
  6469 ms  0x6730 fd:0x7f87d0c50730
  6469 ms  0x6730 ret:0x0
  6470 ms  0x6730 PR_Connect()
  6470 ms  0x6730 fd:0x7f87d0c50730
  6470 ms  0x6730 SSL_ImportFD()
  6470 ms  0x6730 ret:0x7f87d0c50850
  6470 ms  0x6730 SSL_AuthCertificateHook()
  6470 ms  0x6730 fd:0x7f87d0c50850
  6470 ms  0x6730 ret:0x0
  6470 ms  0x6730 PR_Connect()
  6470 ms  0x6730 fd:0x7f87d0c50850
  6470 ms  0x6730 SSL_ImportFD()
  6470 ms  0x6730 ret:0x7f87d0c508e0
  6470 ms  0x6730 SSL_AuthCertificateHook()
  6470 ms  0x6730 fd:0x7f87d0c508e0
  6470 ms  0x6730 ret:0x0
  6470 ms  0x6730 PR_Connect()
  6470 ms  0x6730 fd:0x7f87d0c508e0
  6470 ms  0x6730 PK11_Encrypt()
  6470 ms  0x6730 symkey:0x7f87d3ba1d80
  6471 ms  0x6730 PK11_Encrypt()
  6471 ms  0x6730 symkey:0x7f87d3ba1d80
  6472 ms  0x6730 PK11_Encrypt()
  6472 ms  0x6730 symkey:0x7f87d3ba1d80
  6472 ms  0x6730 PK11_Encrypt()
  6472 ms  0x6730 symkey:0x7f87d3ba1d80
  6473 ms  0x6730 PK11_Encrypt()
  6473 ms  0x6730 symkey:0x7f87d3ba1d80
  6505 ms  0x6730 SECKEY_CreateECPrivateKey()
  6505 ms  0x6730 cx:0x7f87d6fc5da8
  6506 ms     | 0x6730 EC_ValidatePublicKey()
  6506 ms     | 0x6730 ret:0x0
  6506 ms  0x6730 ret:0x7f87d7197020::7f87d7197020  a0 d6 61 d1                                      ..a.
  6506 ms  0x6730 SECKEY_CreateECPrivateKey()
  6506 ms  0x6730 cx:0x7f87d6fc5da8
  6507 ms     | 0x6730 EC_ValidatePublicKey()
  6509 ms     | 0x6730 ret:0x0
  6509 ms  0x6730 ret:0x7f87d719a820::7f87d719a820  90 c2 d3 d1                                      ....
           /* TID 0x6738 */
  6510 ms  0x6738 PR_Close()
  6510 ms  0x6738 fd:0x7f87bf768130
           /* TID 0x6730 */
  6511 ms  0x6730 SECKEY_CreateECPrivateKey()
  6511 ms  0x6730 cx:0x7f87d6fc6428
  6512 ms     | 0x6730 EC_ValidatePublicKey()
  6512 ms     | 0x6730 ret:0x0
  6512 ms  0x6730 ret:0x7f87d719d820::7f87d719d820  80 c3 d3 d1                                      ....
  6512 ms  0x6730 SECKEY_CreateECPrivateKey()
  6512 ms  0x6730 cx:0x7f87d6fc6428
  6512 ms     | 0x6730 EC_ValidatePublicKey()
  6514 ms     | 0x6730 ret:0x0
  6514 ms  0x6730 ret:0x7f87d9ac1020::7f87d9ac1020  a0 c6 d3 d1                                      ....
  6515 ms  0x6730 SECKEY_CreateECPrivateKey()
  6515 ms  0x6730 cx:0x7f87d6fc6288
  6515 ms     | 0x6730 EC_ValidatePublicKey()
  6515 ms     | 0x6730 ret:0x0
  6516 ms  0x6730 ret:0x7f87d9ac7020::7f87d9ac7020  c0 c9 d3 d1                                      ....
  6516 ms  0x6730 SECKEY_CreateECPrivateKey()
  6516 ms  0x6730 cx:0x7f87d6fc6288
  6516 ms     | 0x6730 EC_ValidatePublicKey()
  6518 ms     | 0x6730 ret:0x0
  6518 ms  0x6730 ret:0x7f87d9aca020::7f87d9aca020  10 cf d3 d1                                      ....
  6535 ms  0x6730 SECKEY_CreateECPrivateKey()
  6535 ms  0x6730 cx:0x7f87d6fc60e8
  6536 ms     | 0x6730 EC_ValidatePublicKey()
  6536 ms     | 0x6730 ret:0x0
  6536 ms  0x6730 ret:0x7f87d9ace020::7f87d9ace020  70 d4 61 d1                                      p.a.
  6536 ms  0x6730 SECKEY_CreateECPrivateKey()
  6536 ms  0x6730 cx:0x7f87d6fc60e8
  6536 ms     | 0x6730 EC_ValidatePublicKey()
  6538 ms     | 0x6730 ret:0x0
  6538 ms  0x6730 ret:0x7f87d9ad1820::7f87d9ad1820  00 21 db d1                                      .!..
  6538 ms  0x6730 SECKEY_CreateECPrivateKey()
  6538 ms  0x6730 cx:0x7f87d6fc5f48
  6539 ms     | 0x6730 EC_ValidatePublicKey()
  6539 ms     | 0x6730 ret:0x0
  6539 ms  0x6730 ret:0x7f87d9ad4020::7f87d9ad4020  e0 27 db d1                                      .'..
  6539 ms  0x6730 SECKEY_CreateECPrivateKey()
  6539 ms  0x6730 cx:0x7f87d6fc5f48
  6539 ms     | 0x6730 EC_ValidatePublicKey()
  6541 ms     | 0x6730 ret:0x0
  6541 ms  0x6730 ret:0x7f87da5b6820::7f87da5b6820  00 2b db d1                                      .+..
  6550 ms  0x6730 SECKEY_DestroyPrivateKey()
  6550 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e0 47 7c bf                                      .G|.
  6550 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e5 e5 e5 e5                                      ....
  6550 ms  0x6730 SECKEY_DestroyPrivateKey()
  6550 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  00 46 7c bf                                      .F|.
  6550 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  e5 e5 e5 e5                                      ....
  6550 ms  0x6730 SECKEY_CreateECPrivateKey()
  6550 ms  0x6730 cx:0x7f87d6fc6c48
  6551 ms     | 0x6730 EC_ValidatePublicKey()
  6551 ms     | 0x6730 ret:0x0
  6551 ms  0x6730 ret:0x7f87bfad0020::7f87bfad0020  00 46 7c bf                                      .F|.
  6551 ms  0x6730 SECKEY_CreateECPrivateKey()
  6551 ms  0x6730 cx:0x7f87d6fc6c48
  6552 ms     | 0x6730 EC_ValidatePublicKey()
  6553 ms     | 0x6730 ret:0x0
  6553 ms  0x6730 ret:0x7f87bfad2020::7f87bfad2020  e0 47 7c bf                                      .G|.
  6561 ms  0x6730 SECKEY_CreateECPrivateKey()
  6561 ms  0x6730 cx:0x7f87d6fc6aa8
  6562 ms     | 0x6730 EC_ValidatePublicKey()
  6562 ms     | 0x6730 ret:0x0
  6562 ms  0x6730 ret:0x7f87da5ba020::7f87da5ba020  60 60 df d1                                      ``..
  6562 ms  0x6730 SECKEY_CreateECPrivateKey()
  6562 ms  0x6730 cx:0x7f87d6fc6aa8
  6563 ms     | 0x6730 EC_ValidatePublicKey()
  6564 ms     | 0x6730 ret:0x0
  6565 ms  0x6730 ret:0x7f87da5bf020::7f87da5bf020  d0 63 df d1                                      .c..
  6569 ms  0x6730 SECKEY_CreateECPrivateKey()
  6569 ms  0x6730 cx:0x7f87d6fc6908
  6569 ms     | 0x6730 EC_ValidatePublicKey()
  6569 ms     | 0x6730 ret:0x0
  6569 ms  0x6730 ret:0x7f87da5c2020::7f87da5c2020  a0 66 df d1                                      .f..
  6570 ms  0x6730 SECKEY_CreateECPrivateKey()
  6570 ms  0x6730 cx:0x7f87d6fc6908
  6570 ms     | 0x6730 EC_ValidatePublicKey()
  6572 ms     | 0x6730 ret:0x0
  6572 ms  0x6730 ret:0x7f87da5c5820::7f87da5c5820  70 69 df d1                                      pi..
  6579 ms  0x6730 SECKEY_CreateECPrivateKey()
  6579 ms  0x6730 cx:0x7f87d6fc6768
  6580 ms     | 0x6730 EC_ValidatePublicKey()
  6580 ms     | 0x6730 ret:0x0
  6580 ms  0x6730 ret:0x7f87da5c9020::7f87da5c9020  b0 6a df d1                                      .j..
  6580 ms  0x6730 SECKEY_CreateECPrivateKey()
  6580 ms  0x6730 cx:0x7f87d6fc6768
  6581 ms     | 0x6730 EC_ValidatePublicKey()
  6582 ms     | 0x6730 ret:0x0
  6582 ms  0x6730 ret:0x7f87da5cc020::7f87da5cc020  20 6e df d1                                       n..
  6583 ms  0x6730 SECKEY_CreateECPrivateKey()
  6583 ms  0x6730 cx:0x7f87d6fc65c8
  6583 ms     | 0x6730 EC_ValidatePublicKey()
  6583 ms     | 0x6730 ret:0x0
  6584 ms  0x6730 ret:0x7f87da5d2820::7f87da5d2820  b0 90 13 d2                                      ....
  6584 ms  0x6730 SECKEY_CreateECPrivateKey()
  6584 ms  0x6730 cx:0x7f87d6fc65c8
  6584 ms     | 0x6730 EC_ValidatePublicKey()
  6588 ms     | 0x6730 ret:0x0
  6588 ms  0x6730 ret:0x7f87dabe1820::7f87dabe1820  90 92 13 d2                                      ....
           /* TID 0x67dd */
  6597 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6597 ms  0x67dd ret:0x0
           /* TID 0x6730 */
  6597 ms  SECKEY_ECParamsToKeySize()
  6597 ms  0x6730 ret:0x100
  6597 ms  0x6730 SECKEY_CreateECPrivateKey()
  6597 ms  0x6730 cx:0x7f87d6fc5da8
  6598 ms     | 0x6730 EC_ValidatePublicKey()
  6599 ms     | 0x6730 ret:0x0
  6599 ms  0x6730 ret:0x7f87dabe8020::7f87dabe8020  60 95 13 d2                                      `...
  6600 ms  0x6730 PK11_PubDeriveWithKDF()
  6600 ms  0x6730 seckey:0x7f87dabe8020
  6600 ms     | 0x6730 EC_ValidatePublicKey()
  6604 ms     | 0x6730 ret:0x0
  6606 ms  0x6730 ret:0x7f87f8d17580
  6606 ms  0x6730 PK11_DeriveWithFlags()
  6606 ms  0x6730 basekey:0x7f87f8d17580
  6606 ms     | 0x6730 PK11_DeriveWithTemplate()
  6606 ms  0x6730 ret:0x7f87d08ef300
  6606 ms  0x6730 PK11_Derive()
  6606 ms  0x6730 basekey:0x7f87d08ef300
  6606 ms     | 0x6730 PK11_DeriveWithTemplate()
  6606 ms  0x6730 ret:0x7f87d08ef600
  6606 ms  0x6730 SECKEY_DestroyPrivateKey()
  6606 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  60 95 13 d2                                      `...
  6606 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  e5 e5 e5 e5                                      ....
  6607 ms  0x6730 PK11_Encrypt()
  6607 ms  0x6730 symkey:0x7f87d08f6180
  6607 ms  0x6730 PR_Close()
  6607 ms  0x6730 fd:0x7f87bfa81c40
  6607 ms     | 0x6730 PK11_Encrypt()
  6607 ms     | 0x6730 symkey:0x7f87bf7e9e80
  6607 ms  0x6730 SSL_AuthCertificateComplete()
  6607 ms  0x6730 fd:0x7f87d0c50a00
  6607 ms  0x6730 err:0x0
           /* TID 0x6738 */
  6631 ms  0x6738 PR_Close()
  6631 ms  0x6738 fd:0x7f87bfa813a0
           /* TID 0x6730 */
  6632 ms  0x6730 PK11_Encrypt()
  6632 ms  0x6730 symkey:0x7f87d08f6180
  6634 ms  SECKEY_ECParamsToKeySize()
  6634 ms  0x6730 ret:0x100
  6634 ms  0x6730 SECKEY_CreateECPrivateKey()
  6634 ms  0x6730 cx:0x7f87d08ec7a8
  6634 ms     | 0x6730 EC_ValidatePublicKey()
  6639 ms     | 0x6730 ret:0x0
  6639 ms  0x6730 ret:0x7f87dabe8020::7f87dabe8020  10 95 13 d2                                      ....
  6642 ms  0x6730 PK11_PubDeriveWithKDF()
  6642 ms  0x6730 seckey:0x7f87dabe8020
  6642 ms     | 0x6730 EC_ValidatePublicKey()
  6645 ms     | 0x6730 ret:0x0
  6646 ms  0x6730 ret:0x7f87bf7e9d00
  6646 ms  0x6730 PK11_DeriveWithFlags()
  6646 ms  0x6730 basekey:0x7f87bf7e9d00
  6646 ms     | 0x6730 PK11_DeriveWithTemplate()
  6646 ms  0x6730 ret:0x7f87bf7e9780
  6646 ms  0x6730 PK11_Derive()
  6646 ms  0x6730 basekey:0x7f87bf7e9780
  6651 ms     | 0x6730 PK11_DeriveWithTemplate()
  6651 ms  0x6730 ret:0x7f87f8d17580
  6651 ms  0x6730 SECKEY_DestroyPrivateKey()
  6651 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  10 95 13 d2                                      ....
  6651 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  e5 e5 e5 e5                                      ....
  6652 ms  0x6730 PK11_Encrypt()
  6652 ms  0x6730 symkey:0x7f87bf7e9d80
  6652 ms  SECKEY_ECParamsToKeySize()
  6652 ms  0x6730 ret:0x100
  6652 ms  0x6730 SECKEY_CreateECPrivateKey()
  6652 ms  0x6730 cx:0x7f87d08ec948
  6653 ms     | 0x6730 EC_ValidatePublicKey()
  6655 ms     | 0x6730 ret:0x0
  6655 ms  0x6730 ret:0x7f87dabea020::7f87dabea020  b0 95 13 d2                                      ....
  6655 ms  0x6730 PK11_PubDeriveWithKDF()
  6655 ms  0x6730 seckey:0x7f87dabea020
  6655 ms     | 0x6730 EC_ValidatePublicKey()
  6656 ms     | 0x6730 ret:0x0
  6658 ms  0x6730 ret:0x7f87bf7e9d00
  6658 ms  0x6730 PK11_DeriveWithFlags()
  6658 ms  0x6730 basekey:0x7f87bf7e9d00
  6658 ms     | 0x6730 PK11_DeriveWithTemplate()
  6658 ms  0x6730 ret:0x7f87d08f6380
  6658 ms  0x6730 PK11_Derive()
  6658 ms  0x6730 basekey:0x7f87d08f6380
  6658 ms     | 0x6730 PK11_DeriveWithTemplate()
  6658 ms  0x6730 ret:0x7f87d08f6600
  6658 ms  0x6730 SECKEY_DestroyPrivateKey()
  6658 ms  0x6730 privk:0x7f87dabea020::7f87dabea020  b0 95 13 d2                                      ....
  6658 ms  0x6730 privk:0x7f87dabea020::7f87dabea020  e5 e5 e5 e5                                      ....
  6658 ms  0x6730 PK11_Encrypt()
  6658 ms  0x6730 symkey:0x7f87d08f6980
  6670 ms  SECKEY_ECParamsToKeySize()
  6670 ms  0x6730 ret:0x100
  6670 ms  0x6730 SECKEY_CreateECPrivateKey()
  6670 ms  0x6730 cx:0x7f87d08ecae8
  6670 ms     | 0x6730 EC_ValidatePublicKey()
  6672 ms     | 0x6730 ret:0x0
  6672 ms  0x6730 ret:0x7f87dabea820::7f87dabea820  50 96 13 d2                                      P...
  6672 ms  0x6730 PK11_PubDeriveWithKDF()
  6672 ms  0x6730 seckey:0x7f87dabea820
  6672 ms     | 0x6730 EC_ValidatePublicKey()
  6674 ms     | 0x6730 ret:0x0
  6678 ms  0x6730 ret:0x7f87bf7e9d00
  6678 ms  0x6730 PK11_DeriveWithFlags()
  6678 ms  0x6730 basekey:0x7f87bf7e9d00
  6678 ms     | 0x6730 PK11_DeriveWithTemplate()
  6678 ms  0x6730 ret:0x7f87bfabfe80
  6678 ms  0x6730 PK11_Derive()
  6678 ms  0x6730 basekey:0x7f87bfabfe80
  6678 ms     | 0x6730 PK11_DeriveWithTemplate()
  6678 ms  0x6730 ret:0x7f87d08f6a80
  6678 ms  0x6730 SECKEY_DestroyPrivateKey()
  6678 ms  0x6730 privk:0x7f87dabea820::7f87dabea820  50 96 13 d2                                      P...
  6678 ms  0x6730 privk:0x7f87dabea820::7f87dabea820  e5 e5 e5 e5                                      ....
  6679 ms  0x6730 PK11_Encrypt()
  6679 ms  0x6730 symkey:0x7f87d08f6d00
  6688 ms  SECKEY_ECParamsToKeySize()
  6688 ms  0x6730 ret:0x100
  6688 ms  0x6730 SECKEY_CreateECPrivateKey()
  6688 ms  0x6730 cx:0x7f87d08ed168
  6688 ms     | 0x6730 EC_ValidatePublicKey()
  6694 ms     | 0x6730 ret:0x0
  6694 ms  0x6730 ret:0x7f87dabec020::7f87dabec020  f0 96 13 d2                                      ....
  6694 ms  0x6730 PK11_PubDeriveWithKDF()
  6694 ms  0x6730 seckey:0x7f87dabec020
  6694 ms     | 0x6730 EC_ValidatePublicKey()
  6696 ms     | 0x6730 ret:0x0
  6697 ms  0x6730 ret:0x7f87bf7e9d00
  6697 ms  0x6730 PK11_DeriveWithFlags()
  6697 ms  0x6730 basekey:0x7f87bf7e9d00
  6697 ms     | 0x6730 PK11_DeriveWithTemplate()
  6697 ms  0x6730 ret:0x7f87d08f6e00
  6697 ms  0x6730 PK11_Derive()
  6697 ms  0x6730 basekey:0x7f87d08f6e00
  6697 ms     | 0x6730 PK11_DeriveWithTemplate()
  6697 ms  0x6730 ret:0x7f87d08f6f80
  6697 ms  0x6730 SECKEY_DestroyPrivateKey()
  6697 ms  0x6730 privk:0x7f87dabec020::7f87dabec020  f0 96 13 d2                                      ....
  6697 ms  0x6730 privk:0x7f87dabec020::7f87dabec020  e5 e5 e5 e5                                      ....
  6697 ms  0x6730 PK11_Encrypt()
  6697 ms  0x6730 symkey:0x7f87d0a95a80
  6704 ms  SECKEY_ECParamsToKeySize()
  6704 ms  0x6730 ret:0x100
  6704 ms  0x6730 SECKEY_CreateECPrivateKey()
  6704 ms  0x6730 cx:0x7f87d08ecfc8
  6705 ms     | 0x6730 EC_ValidatePublicKey()
  6710 ms     | 0x6730 ret:0x0
  6710 ms  0x6730 ret:0x7f87dabec820::7f87dabec820  90 97 13 d2                                      ....
  6711 ms  0x6730 PK11_PubDeriveWithKDF()
  6711 ms  0x6730 seckey:0x7f87dabec820
  6711 ms     | 0x6730 EC_ValidatePublicKey()
  6712 ms     | 0x6730 ret:0x0
  6717 ms  0x6730 ret:0x7f87bf7e9d00
  6717 ms  0x6730 PK11_DeriveWithFlags()
  6717 ms  0x6730 basekey:0x7f87bf7e9d00
  6717 ms     | 0x6730 PK11_DeriveWithTemplate()
  6717 ms  0x6730 ret:0x7f87d0a95c00
  6717 ms  0x6730 PK11_Derive()
  6717 ms  0x6730 basekey:0x7f87d0a95c00
  6717 ms     | 0x6730 PK11_DeriveWithTemplate()
  6717 ms  0x6730 ret:0x7f87d0a95c80
  6717 ms  0x6730 SECKEY_DestroyPrivateKey()
  6717 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  90 97 13 d2                                      ....
  6717 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  e5 e5 e5 e5                                      ....
  6717 ms  0x6730 PK11_Encrypt()
  6717 ms  0x6730 symkey:0x7f87d0a96080
  6718 ms  SECKEY_ECParamsToKeySize()
  6718 ms  0x6730 ret:0x100
  6718 ms  0x6730 SECKEY_CreateECPrivateKey()
  6718 ms  0x6730 cx:0x7f87d08ece28
  6719 ms     | 0x6730 EC_ValidatePublicKey()
  6720 ms     | 0x6730 ret:0x0
  6720 ms  0x6730 ret:0x7f87dabef020::7f87dabef020  30 98 13 d2                                      0...
  6720 ms  0x6730 PK11_PubDeriveWithKDF()
  6720 ms  0x6730 seckey:0x7f87dabef020
  6720 ms     | 0x6730 EC_ValidatePublicKey()
  6722 ms     | 0x6730 ret:0x0
  6725 ms  0x6730 ret:0x7f87bf7e9d00
  6725 ms  0x6730 PK11_DeriveWithFlags()
  6725 ms  0x6730 basekey:0x7f87bf7e9d00
  6725 ms     | 0x6730 PK11_DeriveWithTemplate()
  6725 ms  0x6730 ret:0x7f87d0a96a80
  6725 ms  0x6730 PK11_Derive()
  6725 ms  0x6730 basekey:0x7f87d0a96a80
  6725 ms     | 0x6730 PK11_DeriveWithTemplate()
  6725 ms  0x6730 ret:0x7f87d0a96c80
  6725 ms  0x6730 SECKEY_DestroyPrivateKey()
  6725 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  30 98 13 d2                                      0...
  6725 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  e5 e5 e5 e5                                      ....
  6725 ms  0x6730 PK11_Encrypt()
  6725 ms  0x6730 symkey:0x7f87d0c4bd80
  6726 ms  SECKEY_ECParamsToKeySize()
  6726 ms  0x6730 ret:0x100
  6726 ms  0x6730 SECKEY_CreateECPrivateKey()
  6726 ms  0x6730 cx:0x7f87d08ecc88
  6727 ms     | 0x6730 EC_ValidatePublicKey()
  6728 ms     | 0x6730 ret:0x0
  6728 ms  0x6730 ret:0x7f87dabef820::7f87dabef820  d0 98 13 d2                                      ....
  6729 ms  0x6730 PK11_PubDeriveWithKDF()
  6729 ms  0x6730 seckey:0x7f87dabef820
  6729 ms     | 0x6730 EC_ValidatePublicKey()
  6730 ms     | 0x6730 ret:0x0
  6732 ms  0x6730 ret:0x7f87bf7e9d00
  6732 ms  0x6730 PK11_DeriveWithFlags()
  6732 ms  0x6730 basekey:0x7f87bf7e9d00
  6732 ms     | 0x6730 PK11_DeriveWithTemplate()
  6732 ms  0x6730 ret:0x7f87d0c4c000
  6732 ms  0x6730 PK11_Derive()
  6732 ms  0x6730 basekey:0x7f87d0c4c000
  6732 ms     | 0x6730 PK11_DeriveWithTemplate()
  6732 ms  0x6730 ret:0x7f87d0c54400
  6732 ms  0x6730 SECKEY_DestroyPrivateKey()
  6732 ms  0x6730 privk:0x7f87dabef820::7f87dabef820  d0 98 13 d2                                      ....
  6732 ms  0x6730 privk:0x7f87dabef820::7f87dabef820  e5 e5 e5 e5                                      ....
  6732 ms  0x6730 PK11_Encrypt()
  6732 ms  0x6730 symkey:0x7f87d0c54580
           /* TID 0x67dd */
  6733 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6733 ms  0x67dd ret:0x0
           /* TID 0x6730 */
  6733 ms  SECKEY_ECParamsToKeySize()
  6733 ms  0x6730 ret:0x100
  6733 ms  0x6730 SECKEY_CreateECPrivateKey()
  6733 ms  0x6730 cx:0x7f87d6fc6c48
  6734 ms     | 0x6730 EC_ValidatePublicKey()
  6736 ms     | 0x6730 ret:0x0
  6736 ms  0x6730 ret:0x7f87dac81020::7f87dac81020  70 99 13 d2                                      p...
  6736 ms  0x6730 PK11_PubDeriveWithKDF()
  6736 ms  0x6730 seckey:0x7f87dac81020
  6736 ms     | 0x6730 EC_ValidatePublicKey()
  6738 ms     | 0x6730 ret:0x0
  6739 ms  0x6730 ret:0x7f87bf7e9d00
  6739 ms  0x6730 PK11_DeriveWithFlags()
  6739 ms  0x6730 basekey:0x7f87bf7e9d00
  6739 ms     | 0x6730 PK11_DeriveWithTemplate()
  6739 ms  0x6730 ret:0x7f87d0c54880
  6739 ms  0x6730 PK11_Derive()
  6739 ms  0x6730 basekey:0x7f87d0c54880
  6739 ms     | 0x6730 PK11_DeriveWithTemplate()
  6739 ms  0x6730 ret:0x7f87d0c54900
  6739 ms  0x6730 SECKEY_DestroyPrivateKey()
  6739 ms  0x6730 privk:0x7f87dac81020::7f87dac81020  70 99 13 d2                                      p...
  6739 ms  0x6730 privk:0x7f87dac81020::7f87dac81020  e5 e5 e5 e5                                      ....
  6740 ms  0x6730 PK11_Encrypt()
  6740 ms  0x6730 symkey:0x7f87d0c54a80
           /* TID 0x67de */
  6745 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6745 ms  0x67de ret:0x0
           /* TID 0x6730 */
  6745 ms  SECKEY_ECParamsToKeySize()
  6745 ms  0x6730 ret:0x100
  6745 ms  0x6730 SECKEY_CreateECPrivateKey()
  6745 ms  0x6730 cx:0x7f87d6fc6aa8
  6746 ms     | 0x6730 EC_ValidatePublicKey()
  6748 ms     | 0x6730 ret:0x0
  6748 ms  0x6730 ret:0x7f87dac81820::7f87dac81820  10 9a 13 d2                                      ....
  6748 ms  0x6730 PK11_PubDeriveWithKDF()
  6748 ms  0x6730 seckey:0x7f87dac81820
  6748 ms     | 0x6730 EC_ValidatePublicKey()
  6749 ms     | 0x6730 ret:0x0
  6751 ms  0x6730 ret:0x7f87bf7e9d00
  6751 ms  0x6730 PK11_DeriveWithFlags()
  6751 ms  0x6730 basekey:0x7f87bf7e9d00
  6751 ms     | 0x6730 PK11_DeriveWithTemplate()
  6751 ms  0x6730 ret:0x7f87d0c54b80
  6751 ms  0x6730 PK11_Derive()
  6751 ms  0x6730 basekey:0x7f87d0c54b80
  6751 ms     | 0x6730 PK11_DeriveWithTemplate()
  6751 ms  0x6730 ret:0x7f87d0c54d80
  6751 ms  0x6730 SECKEY_DestroyPrivateKey()
  6751 ms  0x6730 privk:0x7f87dac81820::7f87dac81820  10 9a 13 d2                                      ....
  6751 ms  0x6730 privk:0x7f87dac81820::7f87dac81820  e5 e5 e5 e5                                      ....
  6751 ms  0x6730 PK11_Encrypt()
  6751 ms  0x6730 symkey:0x7f87d0c6bb80
           /* TID 0x67df */
  6753 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6753 ms  0x67df ret:0x0
           /* TID 0x6730 */
  6753 ms  SECKEY_ECParamsToKeySize()
  6753 ms  0x6730 ret:0x100
  6753 ms  0x6730 SECKEY_CreateECPrivateKey()
  6753 ms  0x6730 cx:0x7f87d6fc6428
  6754 ms     | 0x6730 EC_ValidatePublicKey()
  6755 ms     | 0x6730 ret:0x0
  6755 ms  0x6730 ret:0x7f87dac82020::7f87dac82020  b0 9a 13 d2                                      ....
  6756 ms  0x6730 PK11_PubDeriveWithKDF()
  6756 ms  0x6730 seckey:0x7f87dac82020
  6756 ms     | 0x6730 EC_ValidatePublicKey()
  6757 ms     | 0x6730 ret:0x0
  6758 ms  0x6730 ret:0x7f87bf7e9d00
  6758 ms  0x6730 PK11_DeriveWithFlags()
  6758 ms  0x6730 basekey:0x7f87bf7e9d00
  6758 ms     | 0x6730 PK11_DeriveWithTemplate()
  6758 ms  0x6730 ret:0x7f87d0c6bf80
  6758 ms  0x6730 PK11_Derive()
  6758 ms  0x6730 basekey:0x7f87d0c6bf80
  6758 ms     | 0x6730 PK11_DeriveWithTemplate()
  6759 ms  0x6730 ret:0x7f87d0fb0180
  6759 ms  0x6730 SECKEY_DestroyPrivateKey()
  6759 ms  0x6730 privk:0x7f87dac82020::7f87dac82020  b0 9a 13 d2                                      ....
  6759 ms  0x6730 privk:0x7f87dac82020::7f87dac82020  e5 e5 e5 e5                                      ....
  6759 ms  0x6730 PK11_Encrypt()
  6759 ms  0x6730 symkey:0x7f87d0fb0400
           /* TID 0x67e0 */
  6760 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6761 ms  0x67e0 ret:0x0
           /* TID 0x6730 */
  6761 ms  SECKEY_ECParamsToKeySize()
  6761 ms  0x6730 ret:0x100
  6761 ms  0x6730 SECKEY_CreateECPrivateKey()
  6761 ms  0x6730 cx:0x7f87d6fc6288
  6761 ms     | 0x6730 EC_ValidatePublicKey()
  6763 ms     | 0x6730 ret:0x0
  6763 ms  0x6730 ret:0x7f87dac82820::7f87dac82820  50 9b 13 d2                                      P...
  6763 ms  0x6730 PK11_PubDeriveWithKDF()
  6763 ms  0x6730 seckey:0x7f87dac82820
  6763 ms     | 0x6730 EC_ValidatePublicKey()
  6765 ms     | 0x6730 ret:0x0
  6766 ms  0x6730 ret:0x7f87bf7e9d00
  6766 ms  0x6730 PK11_DeriveWithFlags()
  6766 ms  0x6730 basekey:0x7f87bf7e9d00
  6766 ms     | 0x6730 PK11_DeriveWithTemplate()
  6767 ms  0x6730 ret:0x7f87d0fb0700
  6767 ms  0x6730 PK11_Derive()
  6767 ms  0x6730 basekey:0x7f87d0fb0700
  6767 ms     | 0x6730 PK11_DeriveWithTemplate()
  6767 ms  0x6730 ret:0x7f87d0fb0c00
  6767 ms  0x6730 SECKEY_DestroyPrivateKey()
  6767 ms  0x6730 privk:0x7f87dac82820::7f87dac82820  50 9b 13 d2                                      P...
  6767 ms  0x6730 privk:0x7f87dac82820::7f87dac82820  e5 e5 e5 e5                                      ....
  6767 ms  0x6730 PK11_Encrypt()
  6767 ms  0x6730 symkey:0x7f87d0fb1080
           /* TID 0x67dd */
  6768 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6768 ms  0x67dd ret:0x0
           /* TID 0x6730 */
  6768 ms  SECKEY_ECParamsToKeySize()
  6768 ms  0x6730 ret:0x100
  6768 ms  0x6730 SECKEY_CreateECPrivateKey()
  6768 ms  0x6730 cx:0x7f87d6fc60e8
  6769 ms     | 0x6730 EC_ValidatePublicKey()
  6772 ms     | 0x6730 ret:0x0
  6772 ms  0x6730 ret:0x7f87dac83820::7f87dac83820  f0 9b 13 d2                                      ....
  6772 ms  0x6730 PK11_PubDeriveWithKDF()
  6772 ms  0x6730 seckey:0x7f87dac83820
  6772 ms     | 0x6730 EC_ValidatePublicKey()
  6774 ms     | 0x6730 ret:0x0
  6775 ms  0x6730 ret:0x7f87bf7e9d00
  6775 ms  0x6730 PK11_DeriveWithFlags()
  6775 ms  0x6730 basekey:0x7f87bf7e9d00
  6775 ms     | 0x6730 PK11_DeriveWithTemplate()
  6775 ms  0x6730 ret:0x7f87d0fb1480
  6775 ms  0x6730 PK11_Derive()
  6775 ms  0x6730 basekey:0x7f87d0fb1480
  6775 ms     | 0x6730 PK11_DeriveWithTemplate()
  6775 ms  0x6730 ret:0x7f87d0fb1580
  6775 ms  0x6730 SECKEY_DestroyPrivateKey()
  6775 ms  0x6730 privk:0x7f87dac83820::7f87dac83820  f0 9b 13 d2                                      ....
  6775 ms  0x6730 privk:0x7f87dac83820::7f87dac83820  e5 e5 e5 e5                                      ....
  6776 ms  0x6730 PK11_Encrypt()
  6776 ms  0x6730 symkey:0x7f87d0fb1980
           /* TID 0x67de */
  6777 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6777 ms  0x67de ret:0x0
           /* TID 0x6730 */
  6777 ms  SECKEY_ECParamsToKeySize()
  6777 ms  0x6730 ret:0x100
  6777 ms  0x6730 SECKEY_CreateECPrivateKey()
  6777 ms  0x6730 cx:0x7f87d6fc5f48
  6778 ms     | 0x6730 EC_ValidatePublicKey()
  6779 ms     | 0x6730 ret:0x0
  6779 ms  0x6730 ret:0x7f87dac84020::7f87dac84020  90 9c 13 d2                                      ....
  6779 ms  0x6730 PK11_PubDeriveWithKDF()
  6779 ms  0x6730 seckey:0x7f87dac84020
  6779 ms     | 0x6730 EC_ValidatePublicKey()
  6781 ms     | 0x6730 ret:0x0
  6783 ms  0x6730 ret:0x7f87bf7e9d00
  6783 ms  0x6730 PK11_DeriveWithFlags()
  6783 ms  0x6730 basekey:0x7f87bf7e9d00
  6783 ms     | 0x6730 PK11_DeriveWithTemplate()
  6783 ms  0x6730 ret:0x7f87d0fb1a80
  6783 ms  0x6730 PK11_Derive()
  6783 ms  0x6730 basekey:0x7f87d0fb1a80
  6783 ms     | 0x6730 PK11_DeriveWithTemplate()
  6785 ms  0x6730 ret:0x7f87d0fb1b00
  6785 ms  0x6730 SECKEY_DestroyPrivateKey()
  6785 ms  0x6730 privk:0x7f87dac84020::7f87dac84020  90 9c 13 d2                                      ....
  6785 ms  0x6730 privk:0x7f87dac84020::7f87dac84020  e5 e5 e5 e5                                      ....
  6785 ms  0x6730 PK11_Encrypt()
  6785 ms  0x6730 symkey:0x7f87d0fb1c80
  6786 ms  0x6730 SECKEY_DestroyPrivateKey()
  6786 ms  0x6730 privk:0x7f87d6910020::7f87d6910020  c0 39 88 bf                                      .9..
  6786 ms  0x6730 privk:0x7f87d6910020::7f87d6910020  e5 e5 e5 e5                                      ....
  6786 ms  0x6730 SECKEY_DestroyPrivateKey()
  6786 ms  0x6730 privk:0x7f87d690b820::7f87d690b820  70 c9 86 bf                                      p...
  6786 ms  0x6730 privk:0x7f87d690b820::7f87d690b820  e5 e5 e5 e5                                      ....
  6786 ms  0x6730 SECKEY_DestroyPrivateKey()
  6786 ms  0x6730 privk:0x7f87d6907020::7f87d6907020  30 c8 86 bf                                      0...
  6786 ms  0x6730 privk:0x7f87d6907020::7f87d6907020  e5 e5 e5 e5                                      ....
  6786 ms  0x6730 SECKEY_DestroyPrivateKey()
  6786 ms  0x6730 privk:0x7f87d6903020::7f87d6903020  50 c6 86 bf                                      P...
  6786 ms  0x6730 privk:0x7f87d6903020::7f87d6903020  e5 e5 e5 e5                                      ....
  6786 ms  0x6730 SECKEY_DestroyPrivateKey()
  6786 ms  0x6730 privk:0x7f87bfadb020::7f87bfadb020  b0 9f 76 bf                                      ..v.
  6786 ms  0x6730 privk:0x7f87bfadb020::7f87bfadb020  e5 e5 e5 e5                                      ....
  6787 ms  0x6730 SECKEY_DestroyPrivateKey()
  6787 ms  0x6730 privk:0x7f87bfad7820::7f87bfad7820  60 3f 60 bf                                      `?`.
  6787 ms  0x6730 privk:0x7f87bfad7820::7f87bfad7820  e5 e5 e5 e5                                      ....
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87bfaeafd0
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87bf768790
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d07f4c40
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c0ef70
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c0eb80
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d07f4dc0
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0aaff40
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c508e0
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c50850
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c50160
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0c0e940
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87d0aafe20
  6787 ms  0x6730 err:0x0
  6787 ms  0x6730 SSL_AuthCertificateComplete()
  6787 ms  0x6730 fd:0x7f87bfa816d0
  6787 ms  0x6730 err:0x0
           /* TID 0x6738 */
  6788 ms  0x6738 PR_Close()
  6788 ms  0x6738 fd:0x7f87bf768190
  6791 ms  0x6738 PR_Close()
  6791 ms  0x6738 fd:0x7f87bfa81d30
           /* TID 0x6730 */
  6791 ms  0x6730 PK11_Encrypt()
  6791 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  6793 ms  0x6738 PR_Close()
  6793 ms  0x6738 fd:0x7f87bfaea0a0
           /* TID 0x6730 */
  6795 ms  0x6730 PK11_Encrypt()
  6795 ms  0x6730 symkey:0x7f87d07f8a00
  6795 ms  0x6730 PK11_Encrypt()
  6795 ms  0x6730 symkey:0x7f87d08ee380
           /* TID 0x6738 */
  6801 ms  0x6738 PR_Close()
  6801 ms  0x6738 fd:0x7f87bf7680a0
  6806 ms  0x6738 PR_Close()
  6806 ms  0x6738 fd:0x7f87bf7680a0
           /* TID 0x6730 */
  6807 ms  0x6730 SECKEY_DestroyPrivateKey()
  6807 ms  0x6730 privk:0x7f87d719a820::7f87d719a820  90 c2 d3 d1                                      ....
  6807 ms  0x6730 privk:0x7f87d719a820::7f87d719a820  e5 e5 e5 e5                                      ....
  6807 ms  0x6730 SECKEY_DestroyPrivateKey()
  6807 ms  0x6730 privk:0x7f87d7197020::7f87d7197020  a0 d6 61 d1                                      ..a.
  6807 ms  0x6730 privk:0x7f87d7197020::7f87d7197020  e5 e5 e5 e5                                      ....
  6807 ms  0x6730 SECKEY_DestroyPrivateKey()
  6807 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  40 42 7c bf                                      @B|.
  6807 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  e5 e5 e5 e5                                      ....
  6807 ms  0x6730 SECKEY_DestroyPrivateKey()
  6807 ms  0x6730 privk:0x7f87bfade020::7f87bfade020  60 3a 60 bf                                      `:`.
  6807 ms  0x6730 privk:0x7f87bfade020::7f87bfade020  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87bfae4820::7f87bfae4820  50 4b 7c bf                                      PK|.
  6808 ms  0x6730 privk:0x7f87bfae4820::7f87bfae4820  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87bfae2820::7f87bfae2820  20 44 7c bf                                       D|.
  6808 ms  0x6730 privk:0x7f87bfae2820::7f87bfae2820  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87d0b77820::7f87d0b77820  70 4e 7c bf                                      pN|.
  6808 ms  0x6730 privk:0x7f87d0b77820::7f87d0b77820  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87d0875820::7f87d0875820  90 4c 7c bf                                      .L|.
  6808 ms  0x6730 privk:0x7f87d0875820::7f87d0875820  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87d1de4020::7f87d1de4020  d0 1d 81 bf                                      ....
  6808 ms  0x6730 privk:0x7f87d1de4020::7f87d1de4020  e5 e5 e5 e5                                      ....
  6808 ms  0x6730 SECKEY_DestroyPrivateKey()
  6808 ms  0x6730 privk:0x7f87d1dcf020::7f87d1dcf020  b0 4f 7c bf                                      .O|.
  6808 ms  0x6730 privk:0x7f87d1dcf020::7f87d1dcf020  e5 e5 e5 e5                                      ....
           /* TID 0x6738 */
  6810 ms  0x6738 PR_Close()
  6810 ms  0x6738 fd:0x7f87bf7680a0
  6813 ms  0x6738 PR_Close()
  6813 ms  0x6738 fd:0x7f87bf7680a0
  6814 ms  0x6738 PR_Close()
  6814 ms  0x6738 fd:0x7f87bfaea2b0
  6816 ms  0x6738 PR_Close()
  6816 ms  0x6738 fd:0x7f87bf7680d0
  6818 ms  0x6738 PR_Close()
  6818 ms  0x6738 fd:0x7f87bf7680d0
           /* TID 0x6730 */
  6820 ms  0x6730 PK11_Encrypt()
  6820 ms  0x6730 symkey:0x7f87bf7e9d80
  6822 ms  0x6730 PK11_Encrypt()
  6822 ms  0x6730 symkey:0x7f87d08f6980
  6823 ms  0x6730 PK11_Encrypt()
  6823 ms  0x6730 symkey:0x7f87d08f6d00
  6824 ms  0x6730 PK11_Encrypt()
  6824 ms  0x6730 symkey:0x7f87d0a95a80
  6824 ms  0x6730 PK11_Encrypt()
  6824 ms  0x6730 symkey:0x7f87d0a96080
  6824 ms  0x6730 PK11_Encrypt()
  6824 ms  0x6730 symkey:0x7f87d0c4bd80
  6824 ms  0x6730 PK11_Encrypt()
  6824 ms  0x6730 symkey:0x7f87d0c54580
  6825 ms  0x6730 PK11_Encrypt()
  6825 ms  0x6730 symkey:0x7f87d0c54a80
  6825 ms  0x6730 PK11_Encrypt()
  6825 ms  0x6730 symkey:0x7f87d0c6bb80
           /* TID 0x67df */
  6826 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6826 ms  0x67df ret:0x0
           /* TID 0x6730 */
  6826 ms  SECKEY_ECParamsToKeySize()
  6826 ms  0x6730 ret:0x100
  6826 ms  0x6730 SECKEY_CreateECPrivateKey()
  6826 ms  0x6730 cx:0x7f87d6fc6908
  6826 ms     | 0x6730 EC_ValidatePublicKey()
  6828 ms     | 0x6730 ret:0x0
  6828 ms  0x6730 ret:0x7f87bfae3020::7f87bfae3020  20 3e 60 bf                                       >`.
  6828 ms  0x6730 PK11_PubDeriveWithKDF()
  6828 ms  0x6730 seckey:0x7f87bfae3020
  6828 ms     | 0x6730 EC_ValidatePublicKey()
  6830 ms     | 0x6730 ret:0x0
  6831 ms  0x6730 ret:0x7f87bf7e9d00
  6831 ms  0x6730 PK11_DeriveWithFlags()
  6831 ms  0x6730 basekey:0x7f87bf7e9d00
  6831 ms     | 0x6730 PK11_DeriveWithTemplate()
  6831 ms  0x6730 ret:0x7f87bfabf380
  6831 ms  0x6730 PK11_Derive()
  6831 ms  0x6730 basekey:0x7f87bfabf380
  6831 ms     | 0x6730 PK11_DeriveWithTemplate()
  6831 ms  0x6730 ret:0x7f87d08eff00
  6832 ms  0x6730 SECKEY_DestroyPrivateKey()
  6832 ms  0x6730 privk:0x7f87bfae3020::7f87bfae3020  20 3e 60 bf                                       >`.
  6832 ms  0x6730 privk:0x7f87bfae3020::7f87bfae3020  e5 e5 e5 e5                                      ....
  6832 ms  0x6730 PK11_Encrypt()
  6832 ms  0x6730 symkey:0x7f87d1624c80
           /* TID 0x67e0 */
  6833 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6833 ms  0x67e0 ret:0x0
           /* TID 0x6730 */
  6833 ms  SECKEY_ECParamsToKeySize()
  6833 ms  0x6730 ret:0x100
  6833 ms  0x6730 SECKEY_CreateECPrivateKey()
  6833 ms  0x6730 cx:0x7f87d6fc6768
  6833 ms     | 0x6730 EC_ValidatePublicKey()
  6836 ms     | 0x6730 ret:0x0
  6836 ms  0x6730 ret:0x7f87bfae4020::7f87bfae4020  e0 92 76 bf                                      ..v.
  6836 ms  0x6730 PK11_PubDeriveWithKDF()
  6836 ms  0x6730 seckey:0x7f87bfae4020
  6836 ms     | 0x6730 EC_ValidatePublicKey()
  6838 ms     | 0x6730 ret:0x0
  6839 ms  0x6730 ret:0x7f87bf7e9d00
  6839 ms  0x6730 PK11_DeriveWithFlags()
  6839 ms  0x6730 basekey:0x7f87bf7e9d00
  6839 ms     | 0x6730 PK11_DeriveWithTemplate()
  6839 ms  0x6730 ret:0x7f87d1624f80
  6839 ms  0x6730 PK11_Derive()
  6839 ms  0x6730 basekey:0x7f87d1624f80
  6839 ms     | 0x6730 PK11_DeriveWithTemplate()
  6839 ms  0x6730 ret:0x7f87d1625a00
  6839 ms  0x6730 SECKEY_DestroyPrivateKey()
  6839 ms  0x6730 privk:0x7f87bfae4020::7f87bfae4020  e0 92 76 bf                                      ..v.
  6839 ms  0x6730 privk:0x7f87bfae4020::7f87bfae4020  e5 e5 e5 e5                                      ....
  6839 ms  0x6730 PK11_Encrypt()
  6839 ms  0x6730 symkey:0x7f87d16df200
           /* TID 0x67dd */
  6841 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6841 ms  0x67dd ret:0x0
           /* TID 0x6730 */
  6841 ms  SECKEY_ECParamsToKeySize()
  6841 ms  0x6730 ret:0x100
  6841 ms  0x6730 SECKEY_CreateECPrivateKey()
  6841 ms  0x6730 cx:0x7f87d6fc65c8
  6842 ms     | 0x6730 EC_ValidatePublicKey()
  6844 ms     | 0x6730 ret:0x0
  6844 ms  0x6730 ret:0x7f87bfae5020::7f87bfae5020  b0 9f 76 bf                                      ..v.
  6844 ms  0x6730 PK11_PubDeriveWithKDF()
  6844 ms  0x6730 seckey:0x7f87bfae5020
  6844 ms     | 0x6730 EC_ValidatePublicKey()
  6846 ms     | 0x6730 ret:0x0
  6847 ms  0x6730 ret:0x7f87bf7e9d00
  6847 ms  0x6730 PK11_DeriveWithFlags()
  6847 ms  0x6730 basekey:0x7f87bf7e9d00
  6847 ms     | 0x6730 PK11_DeriveWithTemplate()
  6847 ms  0x6730 ret:0x7f87d1d48100
  6847 ms  0x6730 PK11_Derive()
  6847 ms  0x6730 basekey:0x7f87d1d48100
  6847 ms     | 0x6730 PK11_DeriveWithTemplate()
  6847 ms  0x6730 ret:0x7f87d1d48200
  6847 ms  0x6730 SECKEY_DestroyPrivateKey()
  6847 ms  0x6730 privk:0x7f87bfae5020::7f87bfae5020  b0 9f 76 bf                                      ..v.
  6848 ms  0x6730 privk:0x7f87bfae5020::7f87bfae5020  e5 e5 e5 e5                                      ....
  6848 ms  0x6730 PK11_Encrypt()
  6848 ms  0x6730 symkey:0x7f87d1d48600
  6848 ms  0x6730 PK11_Encrypt()
  6848 ms  0x6730 symkey:0x7f87d0fb0400
  6848 ms  0x6730 PK11_Encrypt()
  6848 ms  0x6730 symkey:0x7f87d0fb1080
  6848 ms  0x6730 PK11_Encrypt()
  6848 ms  0x6730 symkey:0x7f87d0fb1980
  6849 ms  0x6730 PK11_Encrypt()
  6849 ms  0x6730 symkey:0x7f87d0fb1c80
  6849 ms  0x6730 PR_Close()
  6849 ms  0x6730 fd:0x7f87bfa81190
  6849 ms     | 0x6730 PK11_Encrypt()
  6849 ms     | 0x6730 symkey:0x7f87d07f8300
  6849 ms  0x6730 PR_Close()
  6849 ms  0x6730 fd:0x7f87bfa81550
  6849 ms     | 0x6730 PK11_Encrypt()
  6849 ms     | 0x6730 symkey:0x7f87bfabef80
  6849 ms  0x6730 PR_Close()
  6849 ms  0x6730 fd:0x7f87bfa81610
  6849 ms     | 0x6730 PK11_Encrypt()
  6849 ms     | 0x6730 symkey:0x7f87bf8db100
  6849 ms  0x6730 PR_Close()
  6849 ms  0x6730 fd:0x7f87bfa81640
  6849 ms     | 0x6730 PK11_Encrypt()
  6849 ms     | 0x6730 symkey:0x7f87bf7eaf00
  6850 ms  0x6730 PR_Close()
  6850 ms  0x6730 fd:0x7f87d0c50a00
  6850 ms     | 0x6730 PK11_Encrypt()
  6850 ms     | 0x6730 symkey:0x7f87d08f6180
  6850 ms  0x6730 SSL_AuthCertificateComplete()
  6850 ms  0x6730 fd:0x7f87d0c50730
  6850 ms  0x6730 err:0x0
  6850 ms  0x6730 SSL_AuthCertificateComplete()
  6850 ms  0x6730 fd:0x7f87bfabb040
  6850 ms  0x6730 err:0x0
  6850 ms  0x6730 SSL_AuthCertificateComplete()
  6850 ms  0x6730 fd:0x7f87d0c505e0
  6850 ms  0x6730 err:0x0
           /* TID 0x6738 */
  6858 ms  0x6738 PR_Close()
  6858 ms  0x6738 fd:0x7f87bf768100
  6863 ms  0x6738 PR_Close()
  6863 ms  0x6738 fd:0x7f87bf768100
  6866 ms  0x6738 PR_Close()
  6866 ms  0x6738 fd:0x7f87bf768100
  6868 ms  0x6738 PR_Close()
  6868 ms  0x6738 fd:0x7f87bf768100
           /* TID 0x6730 */
  6869 ms  0x6730 PK11_Encrypt()
  6869 ms  0x6730 symkey:0x7f87d1d48600
  6869 ms  0x6730 SECKEY_DestroyPrivateKey()
  6869 ms  0x6730 privk:0x7f87d9ac1020::7f87d9ac1020  a0 c6 d3 d1                                      ....
  6869 ms  0x6730 privk:0x7f87d9ac1020::7f87d9ac1020  e5 e5 e5 e5                                      ....
  6869 ms  0x6730 SECKEY_DestroyPrivateKey()
  6869 ms  0x6730 privk:0x7f87d719d820::7f87d719d820  80 c3 d3 d1                                      ....
  6869 ms  0x6730 privk:0x7f87d719d820::7f87d719d820  e5 e5 e5 e5                                      ....
  6869 ms  0x6730 SECKEY_DestroyPrivateKey()
  6869 ms  0x6730 privk:0x7f87d9aca020::7f87d9aca020  10 cf d3 d1                                      ....
  6870 ms  0x6730 privk:0x7f87d9aca020::7f87d9aca020  e5 e5 e5 e5                                      ....
  6870 ms  0x6730 SECKEY_DestroyPrivateKey()
  6870 ms  0x6730 privk:0x7f87d9ac7020::7f87d9ac7020  c0 c9 d3 d1                                      ....
  6870 ms  0x6730 privk:0x7f87d9ac7020::7f87d9ac7020  e5 e5 e5 e5                                      ....
  6870 ms  0x6730 SECKEY_DestroyPrivateKey()
  6870 ms  0x6730 privk:0x7f87d9ad1820::7f87d9ad1820  00 21 db d1                                      .!..
  6870 ms  0x6730 privk:0x7f87d9ad1820::7f87d9ad1820  e5 e5 e5 e5                                      ....
  6870 ms  0x6730 SECKEY_DestroyPrivateKey()
  6870 ms  0x6730 privk:0x7f87d9ace020::7f87d9ace020  70 d4 61 d1                                      p.a.
  6870 ms  0x6730 privk:0x7f87d9ace020::7f87d9ace020  e5 e5 e5 e5                                      ....
  6870 ms  0x6730 SECKEY_DestroyPrivateKey()
  6870 ms  0x6730 privk:0x7f87da5b6820::7f87da5b6820  00 2b db d1                                      .+..
  6870 ms  0x6730 privk:0x7f87da5b6820::7f87da5b6820  e5 e5 e5 e5                                      ....
  6870 ms  0x6730 SECKEY_DestroyPrivateKey()
  6870 ms  0x6730 privk:0x7f87d9ad4020::7f87d9ad4020  e0 27 db d1                                      .'..
  6870 ms  0x6730 privk:0x7f87d9ad4020::7f87d9ad4020  e5 e5 e5 e5                                      ....
  6871 ms  0x6730 SECKEY_DestroyPrivateKey()
  6871 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e0 47 7c bf                                      .G|.
  6871 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e5 e5 e5 e5                                      ....
  6871 ms  0x6730 SECKEY_DestroyPrivateKey()
  6871 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  00 46 7c bf                                      .F|.
  6871 ms  0x6730 privk:0x7f87bfad0020::7f87bfad0020  e5 e5 e5 e5                                      ....
  6871 ms  0x6730 SECKEY_DestroyPrivateKey()
  6871 ms  0x6730 privk:0x7f87da5bf020::7f87da5bf020  d0 63 df d1                                      .c..
  6871 ms  0x6730 privk:0x7f87da5bf020::7f87da5bf020  e5 e5 e5 e5                                      ....
  6871 ms  0x6730 SECKEY_DestroyPrivateKey()
  6871 ms  0x6730 privk:0x7f87da5ba020::7f87da5ba020  60 60 df d1                                      ``..
  6871 ms  0x6730 privk:0x7f87da5ba020::7f87da5ba020  e5 e5 e5 e5                                      ....
  6872 ms  0x6730 PK11_Encrypt()
  6872 ms  0x6730 symkey:0x7f87d1624c80
  6874 ms  0x6730 PK11_Encrypt()
  6874 ms  0x6730 symkey:0x7f87d16df200
  6874 ms  0x6730 PR_Close()
  6874 ms  0x6730 fd:0x7f87d0c50850
  6874 ms     | 0x6730 PK11_Encrypt()
  6874 ms     | 0x6730 symkey:0x7f87d0c6bb80
  6874 ms  0x6730 PR_Close()
  6874 ms  0x6730 fd:0x7f87d0c508e0
  6874 ms     | 0x6730 PK11_Encrypt()
  6874 ms     | 0x6730 symkey:0x7f87d0c54a80
  6874 ms  0x6730 PR_Close()
  6874 ms  0x6730 fd:0x7f87bfa816d0
  6874 ms     | 0x6730 PK11_Encrypt()
  6874 ms     | 0x6730 symkey:0x7f87d0fb1c80
  6874 ms  0x6730 PR_Close()
  6874 ms  0x6730 fd:0x7f87d0aafe20
  6874 ms     | 0x6730 PK11_Encrypt()
  6874 ms     | 0x6730 symkey:0x7f87d0fb1980
  6874 ms  0x6730 PR_Close()
  6874 ms  0x6730 fd:0x7f87d0c0e940
  6875 ms     | 0x6730 PK11_Encrypt()
  6875 ms     | 0x6730 symkey:0x7f87d0fb1080
  6875 ms  0x6730 PR_Close()
  6875 ms  0x6730 fd:0x7f87d0c50160
  6875 ms     | 0x6730 PK11_Encrypt()
  6875 ms     | 0x6730 symkey:0x7f87d0fb0400
           /* TID 0x6738 */
  6879 ms  0x6738 PR_Close()
  6879 ms  0x6738 fd:0x7f87bf768100
           /* TID 0x6730 */
  6880 ms  0x6730 SECKEY_DestroyPrivateKey()
  6880 ms  0x6730 privk:0x7f87da5c5820::7f87da5c5820  70 69 df d1                                      pi..
  6880 ms  0x6730 privk:0x7f87da5c5820::7f87da5c5820  e5 e5 e5 e5                                      ....
  6881 ms  0x6730 SECKEY_DestroyPrivateKey()
  6881 ms  0x6730 privk:0x7f87da5c2020::7f87da5c2020  a0 66 df d1                                      .f..
  6881 ms  0x6730 privk:0x7f87da5c2020::7f87da5c2020  e5 e5 e5 e5                                      ....
  6881 ms  0x6730 SECKEY_DestroyPrivateKey()
  6881 ms  0x6730 privk:0x7f87da5cc020::7f87da5cc020  20 6e df d1                                       n..
  6881 ms  0x6730 privk:0x7f87da5cc020::7f87da5cc020  e5 e5 e5 e5                                      ....
  6881 ms  0x6730 SECKEY_DestroyPrivateKey()
  6881 ms  0x6730 privk:0x7f87da5c9020::7f87da5c9020  b0 6a df d1                                      .j..
  6881 ms  0x6730 privk:0x7f87da5c9020::7f87da5c9020  e5 e5 e5 e5                                      ....
  6881 ms  0x6730 PR_Close()
  6881 ms  0x6730 fd:0x7f87bfabb040
  6881 ms     | 0x6730 PK11_Encrypt()
  6881 ms     | 0x6730 symkey:0x7f87d16df200
  6881 ms  0x6730 PR_Close()
  6881 ms  0x6730 fd:0x7f87d0c50730
  6881 ms     | 0x6730 PK11_Encrypt()
  6881 ms     | 0x6730 symkey:0x7f87d1624c80
  6886 ms  0x6730 SECKEY_DestroyPrivateKey()
  6886 ms  0x6730 privk:0x7f87dabe1820::7f87dabe1820  90 92 13 d2                                      ....
  6886 ms  0x6730 privk:0x7f87dabe1820::7f87dabe1820  e5 e5 e5 e5                                      ....
  6886 ms  0x6730 SECKEY_DestroyPrivateKey()
  6886 ms  0x6730 privk:0x7f87da5d2820::7f87da5d2820  b0 90 13 d2                                      ....
  6886 ms  0x6730 privk:0x7f87da5d2820::7f87da5d2820  e5 e5 e5 e5                                      ....
  6886 ms  0x6730 PR_Close()
  6886 ms  0x6730 fd:0x7f87d0c505e0
  6886 ms     | 0x6730 PK11_Encrypt()
  6886 ms     | 0x6730 symkey:0x7f87d1d48600
  6986 ms  0x6730 SECKEY_DestroyPrivateKey()
  6986 ms  0x6730 privk:0x7f87d0872020::7f87d0872020  d0 03 9b bf                                      ....
  6986 ms  0x6730 privk:0x7f87d0872020::7f87d0872020  e5 e5 e5 e5                                      ....
  6986 ms  0x6730 SECKEY_DestroyPrivateKey()
  6986 ms  0x6730 privk:0x7f87d086f820::7f87d086f820  60 a0 8a bf                                      `...
  6986 ms  0x6730 privk:0x7f87d086f820::7f87d086f820  e5 e5 e5 e5                                      ....
  6986 ms  0x6730 PR_Close()
  6986 ms  0x6730 fd:0x7f87bfaeafd0
  6986 ms     | 0x6730 PK11_Encrypt()
  6986 ms     | 0x6730 symkey:0x7f87bf7e9d80
  6993 ms  0x6730 SECKEY_DestroyPrivateKey()
  6993 ms  0x6730 privk:0x7f87d559b820::7f87d559b820  90 bc ae bf                                      ....
  6993 ms  0x6730 privk:0x7f87d559b820::7f87d559b820  e5 e5 e5 e5                                      ....
  6993 ms  0x6730 SECKEY_DestroyPrivateKey()
  6993 ms  0x6730 privk:0x7f87d28b9820::7f87d28b9820  c0 b9 ae bf                                      ....
  6993 ms  0x6730 privk:0x7f87d28b9820::7f87d28b9820  e5 e5 e5 e5                                      ....
  6993 ms  0x6730 PR_Close()
  6993 ms  0x6730 fd:0x7f87bf768790
  6993 ms     | 0x6730 PK11_Encrypt()
  6993 ms     | 0x6730 symkey:0x7f87d08f6980
  7013 ms  0x6730 SECKEY_DestroyPrivateKey()
  7013 ms  0x6730 privk:0x7f87d691d820::7f87d691d820  30 38 b2 d0                                      08..
  7013 ms  0x6730 privk:0x7f87d691d820::7f87d691d820  e5 e5 e5 e5                                      ....
  7013 ms  0x6730 SECKEY_DestroyPrivateKey()
  7013 ms  0x6730 privk:0x7f87d6919820::7f87d6919820  d0 28 aa d0                                      .(..
  7013 ms  0x6730 privk:0x7f87d6919820::7f87d6919820  e5 e5 e5 e5                                      ....
  7013 ms  0x6730 PR_Close()
  7013 ms  0x6730 fd:0x7f87d07f4c40
  7013 ms     | 0x6730 PK11_Encrypt()
  7013 ms     | 0x6730 symkey:0x7f87d08f6d00
  7019 ms  0x6730 SECKEY_DestroyPrivateKey()
  7019 ms  0x6730 privk:0x7f87d28b5820::7f87d28b5820  00 b1 ae bf                                      ....
  7019 ms  0x6730 privk:0x7f87d28b5820::7f87d28b5820  e5 e5 e5 e5                                      ....
  7019 ms  0x6730 SECKEY_DestroyPrivateKey()
  7019 ms  0x6730 privk:0x7f87d1dd5020::7f87d1dd5020  d0 0d 9b bf                                      ....
  7020 ms  0x6730 privk:0x7f87d1dd5020::7f87d1dd5020  e5 e5 e5 e5                                      ....
  7020 ms  0x6730 PR_Close()
  7020 ms  0x6730 fd:0x7f87d0c0ef70
  7020 ms     | 0x6730 PK11_Encrypt()
  7020 ms     | 0x6730 symkey:0x7f87d0a95a80
  7048 ms  0x6730 SECKEY_DestroyPrivateKey()
  7048 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  e0 b2 c9 d0                                      ....
           /* TID 0x6738 */
  7052 ms  0x6738 PR_Close()
  7052 ms  0x6738 fd:0x7f87bf768100
           /* TID 0x6730 */
  7052 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  e5 e5 e5 e5                                      ....
  7052 ms  0x6730 SECKEY_DestroyPrivateKey()
  7052 ms  0x6730 privk:0x7f87d69a1820::7f87d69a1820  d0 3d b2 d0                                      .=..
  7052 ms  0x6730 privk:0x7f87d69a1820::7f87d69a1820  e5 e5 e5 e5                                      ....
  7053 ms  0x6730 PR_Close()
  7053 ms  0x6730 fd:0x7f87d0c0eb80
  7053 ms     | 0x6730 PK11_Encrypt()
  7053 ms     | 0x6730 symkey:0x7f87d0a96080
  7054 ms  0x6730 SECKEY_DestroyPrivateKey()
  7054 ms  0x6730 privk:0x7f87d6aa7020::7f87d6aa7020  40 b7 c9 d0                                      @...
  7054 ms  0x6730 privk:0x7f87d6aa7020::7f87d6aa7020  e5 e5 e5 e5                                      ....
  7054 ms  0x6730 SECKEY_DestroyPrivateKey()
  7054 ms  0x6730 privk:0x7f87d69bd820::7f87d69bd820  c0 b4 c9 d0                                      ....
  7054 ms  0x6730 privk:0x7f87d69bd820::7f87d69bd820  e5 e5 e5 e5                                      ....
  7054 ms  0x6730 PR_Close()
  7054 ms  0x6730 fd:0x7f87d07f4dc0
  7054 ms     | 0x6730 PK11_Encrypt()
  7054 ms     | 0x6730 symkey:0x7f87d0c4bd80
  7066 ms  0x6730 SECKEY_DestroyPrivateKey()
  7066 ms  0x6730 privk:0x7f87d6d07020::7f87d6d07020  60 ba c9 d0                                      `...
  7066 ms  0x6730 privk:0x7f87d6d07020::7f87d6d07020  e5 e5 e5 e5                                      ....
  7066 ms  0x6730 SECKEY_DestroyPrivateKey()
  7066 ms  0x6730 privk:0x7f87d6d05020::7f87d6d05020  80 b8 c9 d0                                      ....
  7066 ms  0x6730 privk:0x7f87d6d05020::7f87d6d05020  e5 e5 e5 e5                                      ....
  7067 ms  0x6730 PR_Close()
  7067 ms  0x6730 fd:0x7f87d0aaff40
  7067 ms     | 0x6730 PK11_Encrypt()
  7067 ms     | 0x6730 symkey:0x7f87d0c54580
           /* TID 0x6738 */
  7070 ms  0x6738 PR_Close()
  7070 ms  0x6738 fd:0x7f87bf768130
  7110 ms  0x6738 PR_Close()
  7110 ms  0x6738 fd:0x7f87bf768130
  7113 ms  0x6738 PR_Close()
  7113 ms  0x6738 fd:0x7f87bf768250
  7119 ms  0x6738 PR_Close()
  7119 ms  0x6738 fd:0x7f87bf768070
  7120 ms  0x6738 PR_Close()
  7120 ms  0x6738 fd:0x7f87bf768070
  7121 ms  0x6738 PR_Close()
  7121 ms  0x6738 fd:0x7f87bf768070
  7122 ms  0x6738 PR_Close()
  7122 ms  0x6738 fd:0x7f87bf768070
  7131 ms  0x6738 PR_Close()
  7131 ms  0x6738 fd:0x7f87bf768070
  7133 ms  0x6738 PR_Close()
  7133 ms  0x6738 fd:0x7f87bf768070
  7134 ms  0x6738 PR_Close()
  7134 ms  0x6738 fd:0x7f87bf768070
  7135 ms  0x6738 PR_Close()
  7135 ms  0x6738 fd:0x7f87bf7687f0
  7139 ms  0x6738 PR_Close()
  7139 ms  0x6738 fd:0x7f87bf7687c0
           /* TID 0x6730 */
  7164 ms  0x6730 PK11_Encrypt()
  7164 ms  0x6730 symkey:0x7f87bf7ea780
  7212 ms  0x6730 PK11_Encrypt()
  7212 ms  0x6730 symkey:0x7f87bf7ea780
  7219 ms  0x6730 PK11_Encrypt()
  7219 ms  0x6730 symkey:0x7f87bf7ea780
  7229 ms  0x6730 PK11_Encrypt()
  7229 ms  0x6730 symkey:0x7f87bf7ea780
  7232 ms  0x6730 PK11_Encrypt()
  7232 ms  0x6730 symkey:0x7f87bf7ea780
  7234 ms  0x6730 PK11_Encrypt()
  7234 ms  0x6730 symkey:0x7f87bf7ea780
  7235 ms  0x6730 PK11_Encrypt()
  7235 ms  0x6730 symkey:0x7f87bf7ea780
  7270 ms  0x6730 PK11_Encrypt()
  7270 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  7433 ms  0x6738 PR_Close()
  7433 ms  0x6738 fd:0x7f87bf768460
           /* TID 0x6730 */
  7478 ms  0x6730 PK11_Encrypt()
  7478 ms  0x6730 symkey:0x7f87bf7ea780
  7537 ms  0x6730 PK11_Encrypt()
  7537 ms  0x6730 symkey:0x7f87bf7ea780
  7538 ms  0x6730 PK11_Encrypt()
  7538 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  7636 ms  0x6738 PR_Close()
  7636 ms  0x6738 fd:0x7f87bf768130
  7636 ms  0x6738 PR_Close()
  7636 ms  0x6738 fd:0x7f87bf768730
  7637 ms  0x6738 PR_Close()
  7637 ms  0x6738 fd:0x7f87bf768130
  7637 ms  0x6738 PR_Close()
  7637 ms  0x6738 fd:0x7f87bf768130
  7637 ms  0x6738 PR_Close()
  7637 ms  0x6738 fd:0x7f87bf768130
  7638 ms  0x6738 PR_Close()
  7638 ms  0x6738 fd:0x7f87bf768130
  7639 ms  0x6738 PR_Close()
  7639 ms  0x6738 fd:0x7f87bf768130
  7639 ms  0x6738 PR_Close()
  7639 ms  0x6738 fd:0x7f87bf768130
           /* TID 0x6730 */
  7682 ms  0x6730 SSL_ImportFD()
  7682 ms  0x6730 ret:0x7f87bf768730
  7682 ms  0x6730 SSL_AuthCertificateHook()
  7682 ms  0x6730 fd:0x7f87bf768730
  7682 ms  0x6730 ret:0x0
  7682 ms  0x6730 PR_Connect()
  7682 ms  0x6730 fd:0x7f87bf768730
  7683 ms  0x6730 SSL_ImportFD()
  7683 ms  0x6730 ret:0x7f87bfa81ac0
  7683 ms  0x6730 SSL_AuthCertificateHook()
  7683 ms  0x6730 fd:0x7f87bfa81ac0
  7683 ms  0x6730 ret:0x0
  7683 ms  0x6730 PR_Connect()
  7683 ms  0x6730 fd:0x7f87bfa81ac0
  7683 ms  0x6730 SSL_ImportFD()
  7683 ms  0x6730 ret:0x7f87bf768220
  7683 ms  0x6730 SSL_AuthCertificateHook()
  7683 ms  0x6730 fd:0x7f87bf768220
  7683 ms  0x6730 ret:0x0
  7683 ms  0x6730 PR_Connect()
  7683 ms  0x6730 fd:0x7f87bf768220
  7684 ms  0x6730 SSL_ImportFD()
  7684 ms  0x6730 ret:0x7f87bfa818b0
  7684 ms  0x6730 SSL_AuthCertificateHook()
  7684 ms  0x6730 fd:0x7f87bfa818b0
  7684 ms  0x6730 ret:0x0
  7684 ms  0x6730 PR_Connect()
  7684 ms  0x6730 fd:0x7f87bfa818b0
  7758 ms  0x6730 SSL_ImportFD()
  7759 ms  0x6730 ret:0x7f87d3b3e340
  7759 ms  0x6730 SSL_AuthCertificateHook()
  7759 ms  0x6730 fd:0x7f87d3b3e340
  7759 ms  0x6730 ret:0x0
  7759 ms  0x6730 PR_Connect()
  7759 ms  0x6730 fd:0x7f87d3b3e340
  7842 ms  0x6730 SECKEY_CreateECPrivateKey()
  7842 ms  0x6730 cx:0x7f87d08ec948
  7844 ms     | 0x6730 EC_ValidatePublicKey()
  7844 ms     | 0x6730 ret:0x0
  7844 ms  0x6730 ret:0x7f87bfad2020::7f87bfad2020  a0 46 7c bf                                      .F|.
  7845 ms  0x6730 SECKEY_CreateECPrivateKey()
  7845 ms  0x6730 cx:0x7f87d08ec948
  7847 ms     | 0x6730 EC_ValidatePublicKey()
  7852 ms     | 0x6730 ret:0x0
  7852 ms  0x6730 ret:0x7f87d0876020::7f87d0876020  d0 3d b2 d0                                      .=..
  7933 ms  0x6730 SSL_ImportFD()
  7933 ms  0x6730 ret:0x7f87d3b69b80
  7933 ms  0x6730 SSL_AuthCertificateHook()
  7933 ms  0x6730 fd:0x7f87d3b69b80
  7933 ms  0x6730 ret:0x0
  7933 ms  0x6730 PR_Connect()
  7933 ms  0x6730 fd:0x7f87d3b69b80
  7934 ms  0x6730 SSL_ImportFD()
  7934 ms  0x6730 ret:0x7f87d3b9daf0
  7934 ms  0x6730 SSL_AuthCertificateHook()
  7934 ms  0x6730 fd:0x7f87d3b9daf0
  7934 ms  0x6730 ret:0x0
  7934 ms  0x6730 PR_Connect()
  7934 ms  0x6730 fd:0x7f87d3b9daf0
  7934 ms  0x6730 SSL_ImportFD()
  7934 ms  0x6730 ret:0x7f87d3b9d400
  7934 ms  0x6730 SSL_AuthCertificateHook()
  7934 ms  0x6730 fd:0x7f87d3b9d400
  7935 ms  0x6730 ret:0x0
  7935 ms  0x6730 PR_Connect()
  7935 ms  0x6730 fd:0x7f87d3b9d400
  7935 ms  0x6730 SSL_ImportFD()
  7935 ms  0x6730 ret:0x7f87d3b9dc10
  7935 ms  0x6730 SSL_AuthCertificateHook()
  7935 ms  0x6730 fd:0x7f87d3b9dc10
  7935 ms  0x6730 ret:0x0
  7935 ms  0x6730 PR_Connect()
  7935 ms  0x6730 fd:0x7f87d3b9dc10
           /* TID 0x67de */
  7941 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7941 ms  0x67de ret:0x0
           /* TID 0x6730 */
  7942 ms  SECKEY_ECParamsToKeySize()
  7942 ms  0x6730 ret:0x100
  7942 ms  0x6730 SECKEY_CreateECPrivateKey()
  7942 ms  0x6730 cx:0x7f87d08ec948
  7944 ms     | 0x6730 EC_ValidatePublicKey()
  7949 ms     | 0x6730 ret:0x0
  7949 ms  0x6730 ret:0x7f87d6910020::7f87d6910020  c0 b4 c9 d0                                      ....
  7949 ms  0x6730 PK11_PubDeriveWithKDF()
  7949 ms  0x6730 seckey:0x7f87d6910020
  7949 ms     | 0x6730 EC_ValidatePublicKey()
  7954 ms     | 0x6730 ret:0x0
  7959 ms  0x6730 ret:0x7f87d0c54400
  7959 ms  0x6730 PK11_DeriveWithFlags()
  7959 ms  0x6730 basekey:0x7f87d0c54400
  7959 ms     | 0x6730 PK11_DeriveWithTemplate()
  7959 ms  0x6730 ret:0x7f87d0c4c000
  7959 ms  0x6730 PK11_Derive()
  7959 ms  0x6730 basekey:0x7f87d0c4c000
  7959 ms     | 0x6730 PK11_DeriveWithTemplate()
  7959 ms  0x6730 ret:0x7f87d0a96c80
  7959 ms  0x6730 SECKEY_DestroyPrivateKey()
  7959 ms  0x6730 privk:0x7f87d6910020::7f87d6910020  c0 b4 c9 d0                                      ....
  7959 ms  0x6730 privk:0x7f87d6910020::7f87d6910020  e5 e5 e5 e5                                      ....
  7960 ms  0x6730 PK11_Encrypt()
  7960 ms  0x6730 symkey:0x7f87d0c54480
  7960 ms  0x6730 SSL_AuthCertificateComplete()
  7960 ms  0x6730 fd:0x7f87d3b3e340
  7960 ms  0x6730 err:0x0
           /* TID 0x6738 */
  7962 ms  0x6738 PR_Close()
  7962 ms  0x6738 fd:0x7f87bfaea0a0
           /* TID 0x6730 */
  7967 ms  0x6730 PK11_Encrypt()
  7967 ms  0x6730 symkey:0x7f87d0c54480
  7968 ms  0x6730 SSL_ImportFD()
  7968 ms  0x6730 ret:0x7f87bfaea1f0
  7968 ms  0x6730 SSL_AuthCertificateHook()
  7968 ms  0x6730 fd:0x7f87bfaea1f0
  7968 ms  0x6730 ret:0x0
  7969 ms  0x6730 PK11_Encrypt()
  7969 ms  0x6730 symkey:0x7f87bf7e9980
  7971 ms  0x6730 PK11_Encrypt()
  7971 ms  0x6730 symkey:0x7f87bf7e9980
  7972 ms  0x6730 PR_Connect()
  7972 ms  0x6730 fd:0x7f87bfaea1f0
  7972 ms  0x6730 SSL_ImportFD()
  7973 ms  0x6730 ret:0x7f87d2dc4610
  7973 ms  0x6730 SSL_AuthCertificateHook()
  7973 ms  0x6730 fd:0x7f87d2dc4610
  7973 ms  0x6730 ret:0x0
  7973 ms  0x6730 PR_Connect()
  7973 ms  0x6730 fd:0x7f87d2dc4610
  7973 ms  0x6730 SSL_ImportFD()
  7973 ms  0x6730 ret:0x7f87d5ebca90
  7973 ms  0x6730 SSL_AuthCertificateHook()
  7973 ms  0x6730 fd:0x7f87d5ebca90
  7973 ms  0x6730 ret:0x0
  7973 ms  0x6730 PR_Connect()
  7973 ms  0x6730 fd:0x7f87d5ebca90
  7973 ms  0x6730 PK11_Encrypt()
  7973 ms  0x6730 symkey:0x7f87bf7e9980
           /* TID 0x6738 */
  7975 ms  0x6738 PR_Close()
  7975 ms  0x6738 fd:0x7f87bfaea0a0
           /* TID 0x6730 */
  7978 ms  0x6730 SECKEY_CreateECPrivateKey()
  7978 ms  0x6730 cx:0x7f87d08ec7a8
  7978 ms     | 0x6730 EC_ValidatePublicKey()
  7978 ms     | 0x6730 ret:0x0
  7978 ms  0x6730 ret:0x7f87d6910820::7f87d6910820  60 cf 86 bf                                      `...
  7979 ms  0x6730 SECKEY_CreateECPrivateKey()
  7979 ms  0x6730 cx:0x7f87d08ec7a8
  7979 ms     | 0x6730 EC_ValidatePublicKey()
  7981 ms     | 0x6730 ret:0x0
  7981 ms  0x6730 ret:0x7f87d6916820::7f87d6916820  d0 b3 c9 d0                                      ....
  7982 ms  0x6730 SECKEY_CreateECPrivateKey()
  7982 ms  0x6730 cx:0x7f87d08ebde8
  7983 ms     | 0x6730 EC_ValidatePublicKey()
  7983 ms     | 0x6730 ret:0x0
  7983 ms  0x6730 ret:0x7f87d691d020::7f87d691d020  f0 b6 c9 d0                                      ....
  7983 ms  0x6730 SECKEY_CreateECPrivateKey()
  7983 ms  0x6730 cx:0x7f87d08ebde8
  7984 ms     | 0x6730 EC_ValidatePublicKey()
  7985 ms     | 0x6730 ret:0x0
  7985 ms  0x6730 ret:0x7f87d6921020::7f87d6921020  d0 b8 c9 d0                                      ....
  7991 ms  0x6730 SECKEY_CreateECPrivateKey()
  7991 ms  0x6730 cx:0x7f87d08ebc48
  7992 ms     | 0x6730 EC_ValidatePublicKey()
  7992 ms     | 0x6730 ret:0x0
  7992 ms  0x6730 ret:0x7f87d69a7020::7f87d69a7020  f0 bb c9 d0                                      ....
  7992 ms  0x6730 SECKEY_CreateECPrivateKey()
  7992 ms  0x6730 cx:0x7f87d08ebc48
  7993 ms     | 0x6730 EC_ValidatePublicKey()
  7995 ms     | 0x6730 ret:0x0
  7995 ms  0x6730 ret:0x7f87d69ba820::7f87d69ba820  50 e1 ff d0                                      P...
  7995 ms  0x6730 PK11_Encrypt()
  7995 ms  0x6730 symkey:0x7f87bf7ea780
           /* TID 0x6738 */
  7997 ms  0x6738 PR_Close()
  7997 ms  0x6738 fd:0x7f87bf768790
           /* TID 0x6730 */
  8002 ms  0x6730 SSL_ImportFD()
  8002 ms  0x6730 ret:0x7f87d0c50070
  8002 ms  0x6730 SSL_AuthCertificateHook()
  8002 ms  0x6730 fd:0x7f87d0c50070
  8002 ms  0x6730 ret:0x0
  8002 ms  0x6730 PR_Connect()
  8002 ms  0x6730 fd:0x7f87d0c50070
  8008 ms  0x6730 SECKEY_CreateECPrivateKey()
  8008 ms  0x6730 cx:0x7f87d08ebaa8
  8009 ms     | 0x6730 EC_ValidatePublicKey()
  8009 ms     | 0x6730 ret:0x0
  8009 ms  0x6730 ret:0x7f87d69bd820::7f87d69bd820  90 e2 ff d0                                      ....
  8009 ms  0x6730 SECKEY_CreateECPrivateKey()
  8009 ms  0x6730 cx:0x7f87d08ebaa8
  8009 ms     | 0x6730 EC_ValidatePublicKey()
  8011 ms     | 0x6730 ret:0x0
  8011 ms  0x6730 ret:0x7f87d69c0820::7f87d69c0820  40 e7 ff d0                                      @...
  8015 ms  0x6730 SSL_ImportFD()
  8015 ms  0x6730 ret:0x7f87d0c50190
  8015 ms  0x6730 SSL_AuthCertificateHook()
  8015 ms  0x6730 fd:0x7f87d0c50190
  8015 ms  0x6730 ret:0x0
  8015 ms  0x6730 PR_Connect()
  8015 ms  0x6730 fd:0x7f87d0c50190
  8032 ms  0x6730 SSL_ImportFD()
  8032 ms  0x6730 ret:0x7f87d0c50400
  8032 ms  0x6730 SSL_AuthCertificateHook()
  8032 ms  0x6730 fd:0x7f87d0c50400
  8032 ms  0x6730 ret:0x0
  8032 ms  0x6730 PR_Connect()
  8032 ms  0x6730 fd:0x7f87d0c50400
  8053 ms  0x6730 SECKEY_DestroyPrivateKey()
  8053 ms  0x6730 privk:0x7f87d0876020::7f87d0876020  d0 3d b2 d0                                      .=..
  8053 ms  0x6730 privk:0x7f87d0876020::7f87d0876020  e5 e5 e5 e5                                      ....
  8053 ms  0x6730 SECKEY_DestroyPrivateKey()
  8053 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  a0 46 7c bf                                      .F|.
  8053 ms  0x6730 privk:0x7f87bfad2020::7f87bfad2020  e5 e5 e5 e5                                      ....
  8190 ms  0x6730 SSL_ImportFD()
  8192 ms  0x6730 ret:0x7f87d3b691f0
  8192 ms  0x6730 SSL_AuthCertificateHook()
  8192 ms  0x6730 fd:0x7f87d3b691f0
  8192 ms  0x6730 ret:0x0
  8192 ms  0x6730 PR_Connect()
  8192 ms  0x6730 fd:0x7f87d3b691f0
  8208 ms  0x6730 SECKEY_CreateECPrivateKey()
  8208 ms  0x6730 cx:0x7f87d08ed168
  8209 ms     | 0x6730 EC_ValidatePublicKey()
  8210 ms     | 0x6730 ret:0x0
  8210 ms  0x6730 ret:0x7f87bfae0820::7f87bfae0820  50 31 b2 d0                                      P1..
  8210 ms  0x6730 SECKEY_CreateECPrivateKey()
  8210 ms  0x6730 cx:0x7f87d08ed168
  8211 ms     | 0x6730 EC_ValidatePublicKey()
  8218 ms     | 0x6730 ret:0x0
  8218 ms  0x6730 ret:0x7f87d28b9020::7f87d28b9020  60 ea ff d0                                      `...
  8223 ms  0x6730 SSL_ImportFD()
  8223 ms  0x6730 ret:0x7f87d69568e0
  8223 ms  0x6730 SSL_AuthCertificateHook()
  8223 ms  0x6730 fd:0x7f87d69568e0
  8223 ms  0x6730 ret:0x0
  8223 ms  0x6730 PR_Connect()
  8223 ms  0x6730 fd:0x7f87d69568e0
  8223 ms  0x6730 SSL_ImportFD()
  8223 ms  0x6730 ret:0x7f87d6a12310
  8223 ms  0x6730 SSL_AuthCertificateHook()
  8223 ms  0x6730 fd:0x7f87d6a12310
  8223 ms  0x6730 ret:0x0
  8223 ms  0x6730 PR_Connect()
  8223 ms  0x6730 fd:0x7f87d6a12310
  8223 ms  0x6730 SSL_ImportFD()
  8223 ms  0x6730 ret:0x7f87d6a120d0
  8223 ms  0x6730 SSL_AuthCertificateHook()
  8223 ms  0x6730 fd:0x7f87d6a120d0
  8224 ms  0x6730 ret:0x0
  8224 ms  0x6730 PR_Connect()
  8224 ms  0x6730 fd:0x7f87d6a120d0
  8253 ms  SECKEY_ECParamsToKeySize()
  8253 ms  0x6730 ret:0x100
  8253 ms  0x6730 SECKEY_CreateECPrivateKey()
  8253 ms  0x6730 cx:0x7f87d08ebde8
  8255 ms     | 0x6730 EC_ValidatePublicKey()
  8259 ms     | 0x6730 ret:0x0
  8259 ms  0x6730 ret:0x7f87d708a020::7f87d708a020  90 d7 61 d1                                      ..a.
  8260 ms  0x6730 PK11_PubDeriveWithKDF()
  8260 ms  0x6730 seckey:0x7f87d708a020
  8260 ms     | 0x6730 EC_ValidatePublicKey()
  8263 ms     | 0x6730 ret:0x0
  8267 ms  0x6730 ret:0x7f87d0c54400
  8267 ms  0x6730 PK11_DeriveWithFlags()
  8267 ms  0x6730 basekey:0x7f87d0c54400
  8267 ms     | 0x6730 PK11_DeriveWithTemplate()
  8267 ms  0x6730 ret:0x7f87d0a96a80
  8267 ms  0x6730 PK11_Derive()
  8267 ms  0x6730 basekey:0x7f87d0a96a80
  8267 ms     | 0x6730 PK11_DeriveWithTemplate()
  8267 ms  0x6730 ret:0x7f87d0a95c80
  8267 ms  0x6730 SECKEY_DestroyPrivateKey()
  8267 ms  0x6730 privk:0x7f87d708a020::7f87d708a020  90 d7 61 d1                                      ..a.
  8267 ms  0x6730 privk:0x7f87d708a020::7f87d708a020  e5 e5 e5 e5                                      ....
  8267 ms  0x6730 PK11_Encrypt()
  8267 ms  0x6730 symkey:0x7f87d0a96f00
  8270 ms  SECKEY_ECParamsToKeySize()
  8270 ms  0x6730 ret:0x100
  8270 ms  0x6730 SECKEY_CreateECPrivateKey()
  8270 ms  0x6730 cx:0x7f87d08ec7a8
  8272 ms     | 0x6730 EC_ValidatePublicKey()
  8274 ms     | 0x6730 ret:0x0
  8274 ms  0x6730 ret:0x7f87d7097020::7f87d7097020  d0 c3 d3 d1                                      ....
  8274 ms  0x6730 PK11_PubDeriveWithKDF()
  8274 ms  0x6730 seckey:0x7f87d7097020
  8274 ms     | 0x6730 EC_ValidatePublicKey()
  8276 ms     | 0x6730 ret:0x0
  8278 ms  0x6730 ret:0x7f87d0c54400
  8278 ms  0x6730 PK11_DeriveWithFlags()
  8278 ms  0x6730 basekey:0x7f87d0c54400
  8278 ms     | 0x6730 PK11_DeriveWithTemplate()
  8278 ms  0x6730 ret:0x7f87d0a95c00
  8278 ms  0x6730 PK11_Derive()
  8278 ms  0x6730 basekey:0x7f87d0a95c00
  8278 ms     | 0x6730 PK11_DeriveWithTemplate()
  8278 ms  0x6730 ret:0x7f87d08f6f80
  8278 ms  0x6730 SECKEY_DestroyPrivateKey()
  8278 ms  0x6730 privk:0x7f87d7097020::7f87d7097020  d0 c3 d3 d1                                      ....
  8278 ms  0x6730 privk:0x7f87d7097020::7f87d7097020  e5 e5 e5 e5                                      ....
  8278 ms  0x6730 PK11_Encrypt()
  8278 ms  0x6730 symkey:0x7f87d0a95d00
  8280 ms  SECKEY_ECParamsToKeySize()
  8280 ms  0x6730 ret:0x100
  8280 ms  0x6730 SECKEY_CreateECPrivateKey()
  8280 ms  0x6730 cx:0x7f87d08ebc48
  8280 ms     | 0x6730 EC_ValidatePublicKey()
  8282 ms     | 0x6730 ret:0x0
  8282 ms  0x6730 ret:0x7f87d7188020::7f87d7188020  c0 c9 d3 d1                                      ....
  8282 ms  0x6730 PK11_PubDeriveWithKDF()
  8282 ms  0x6730 seckey:0x7f87d7188020
  8282 ms     | 0x6730 EC_ValidatePublicKey()
  8284 ms     | 0x6730 ret:0x0
  8286 ms  0x6730 ret:0x7f87d0c54400
  8286 ms  0x6730 PK11_DeriveWithFlags()
  8286 ms  0x6730 basekey:0x7f87d0c54400
  8286 ms     | 0x6730 PK11_DeriveWithTemplate()
  8286 ms  0x6730 ret:0x7f87d08f6e00
  8286 ms  0x6730 PK11_Derive()
  8286 ms  0x6730 basekey:0x7f87d08f6e00
  8286 ms     | 0x6730 PK11_DeriveWithTemplate()
  8286 ms  0x6730 ret:0x7f87d08f6a80
  8286 ms  0x6730 SECKEY_DestroyPrivateKey()
  8286 ms  0x6730 privk:0x7f87d7188020::7f87d7188020  c0 c9 d3 d1                                      ....
  8286 ms  0x6730 privk:0x7f87d7188020::7f87d7188020  e5 e5 e5 e5                                      ....
  8286 ms  0x6730 PK11_Encrypt()
  8286 ms  0x6730 symkey:0x7f87d0a95880
  8287 ms  0x6730 SECKEY_CreateECPrivateKey()
  8287 ms  0x6730 cx:0x7f87d08ecae8
  8288 ms     | 0x6730 EC_ValidatePublicKey()
  8288 ms     | 0x6730 ret:0x0
  8288 ms  0x6730 ret:0x7f87d7188020::7f87d7188020  90 c7 d3 d1                                      ....
  8288 ms  0x6730 SECKEY_CreateECPrivateKey()
  8288 ms  0x6730 cx:0x7f87d08ecae8
  8288 ms     | 0x6730 EC_ValidatePublicKey()
  8290 ms     | 0x6730 ret:0x0
  8290 ms  0x6730 ret:0x7f87d718a820::7f87d718a820  40 cc d3 d1                                      @...
  8290 ms  0x6730 SECKEY_CreateECPrivateKey()
  8290 ms  0x6730 cx:0x7f87d08ece28
  8290 ms     | 0x6730 EC_ValidatePublicKey()
  8290 ms     | 0x6730 ret:0x0
  8290 ms  0x6730 ret:0x7f87d718d020::7f87d718d020  60 20 db d1                                      ` ..
  8291 ms  0x6730 SECKEY_CreateECPrivateKey()
  8291 ms  0x6730 cx:0x7f87d08ece28
  8291 ms     | 0x6730 EC_ValidatePublicKey()
  8293 ms     | 0x6730 ret:0x0
  8293 ms  0x6730 ret:0x7f87d718f020::7f87d718f020  e0 27 db d1                                      .'..
  8293 ms  0x6730 SECKEY_CreateECPrivateKey()
  8293 ms  0x6730 cx:0x7f87d08ecfc8
  8294 ms     | 0x6730 EC_ValidatePublicKey()
  8294 ms     | 0x6730 ret:0x0
  8294 ms  0x6730 ret:0x7f87d7191820::7f87d7191820  b0 2a db d1                                      .*..
  8294 ms  0x6730 SECKEY_CreateECPrivateKey()
  8294 ms  0x6730 cx:0x7f87d08ecfc8
  8294 ms     | 0x6730 EC_ValidatePublicKey()
  8296 ms     | 0x6730 ret:0x0
  8296 ms  0x6730 ret:0x7f87d7193820::7f87d7193820  b0 60 df d1                                      .`..
  8296 ms  0x6730 SSL_ImportFD()
  8296 ms  0x6730 ret:0x7f87d6a128e0
  8296 ms  0x6730 SSL_AuthCertificateHook()
  8296 ms  0x6730 fd:0x7f87d6a128e0
  8296 ms  0x6730 ret:0x0
  8296 ms  0x6730 PR_Connect()
  8296 ms  0x6730 fd:0x7f87d6a128e0
  8296 ms  0x6730 SSL_ImportFD()
  8296 ms  0x6730 ret:0x7f87d6a12af0
  8296 ms  0x6730 SSL_AuthCertificateHook()
  8296 ms  0x6730 fd:0x7f87d6a12af0
  8296 ms  0x6730 ret:0x0
  8296 ms  0x6730 PR_Connect()
  8296 ms  0x6730 fd:0x7f87d6a12af0
           /* TID 0x67df */
  8297 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8297 ms  0x67df ret:0x0
  8297 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8297 ms  0x67df ret:0x0
           /* TID 0x6738 */
  8297 ms  0x6738 PR_Close()
  8297 ms  0x6738 fd:0x7f87d3b9d8e0
           /* TID 0x6730 */
  8297 ms  0x6730 SSL_ImportFD()
  8297 ms  0x6730 ret:0x7f87d6a127f0
  8297 ms  0x6730 SSL_AuthCertificateHook()
  8297 ms  0x6730 fd:0x7f87d6a127f0
  8298 ms  0x6730 ret:0x0
  8298 ms  0x6730 PR_Connect()
  8298 ms  0x6730 fd:0x7f87d6a127f0
  8298 ms  0x6730 SSL_AuthCertificateComplete()
  8298 ms  0x6730 fd:0x7f87bf768220
  8298 ms  0x6730 err:0x0
  8298 ms  0x6730 PK11_Encrypt()
  8298 ms  0x6730 symkey:0x7f87d0a96f00
  8298 ms  0x6730 PK11_Encrypt()
  8298 ms  0x6730 symkey:0x7f87d0a96f00
  8299 ms  0x6730 SECKEY_CreateECPrivateKey()
  8299 ms  0x6730 cx:0x7f87d6fc5f48
  8299 ms     | 0x6730 EC_ValidatePublicKey()
  8299 ms     | 0x6730 ret:0x0
  8299 ms  0x6730 ret:0x7f87d7196020::7f87d7196020  70 d4 61 d1                                      p.a.
  8299 ms  0x6730 SECKEY_CreateECPrivateKey()
  8299 ms  0x6730 cx:0x7f87d6fc5f48
  8300 ms     | 0x6730 EC_ValidatePublicKey()
  8301 ms     | 0x6730 ret:0x0
  8301 ms  0x6730 ret:0x7f87d7198020::7f87d7198020  80 63 df d1                                      .c..
           /* TID 0x6738 */
  8304 ms  0x6738 PR_Close()
  8304 ms  0x6738 fd:0x7f87d2193bb0
           /* TID 0x6730 */
  8305 ms  0x6730 SECKEY_CreateECPrivateKey()
  8305 ms  0x6730 cx:0x7f87d6fc60e8
  8309 ms     | 0x6730 EC_ValidatePublicKey()
  8309 ms     | 0x6730 ret:0x0
  8309 ms  0x6730 ret:0x7f87d719d020::7f87d719d020  70 64 df d1                                      pd..
  8310 ms  0x6730 SECKEY_CreateECPrivateKey()
  8310 ms  0x6730 cx:0x7f87d6fc60e8
  8310 ms     | 0x6730 EC_ValidatePublicKey()
  8312 ms     | 0x6730 ret:0x0
  8312 ms  0x6730 ret:0x7f87d9ac0820::7f87d9ac0820  80 68 df d1                                      .h..
           /* TID 0x67e0 */
  8313 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8313 ms  0x67e0 ret:0x0
  8313 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8313 ms  0x67e0 ret:0x0
           /* TID 0x6738 */
  8313 ms  0x6738 PR_Close()
  8313 ms  0x6738 fd:0x7f87d2dc4670
           /* TID 0x6730 */
  8314 ms  0x6730 SSL_AuthCertificateComplete()
  8314 ms  0x6730 fd:0x7f87bfa818b0
  8314 ms  0x6730 err:0x0
           /* TID 0x67dd */
  8314 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8314 ms  0x67dd ret:0x0
  8314 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8314 ms  0x67dd ret:0x0
           /* TID 0x6738 */
  8315 ms  0x6738 PR_Close()
  8315 ms  0x6738 fd:0x7f87d2dc4670
           /* TID 0x6730 */
  8315 ms  0x6730 PK11_Encrypt()
  8315 ms  0x6730 symkey:0x7f87d0a95d00
  8315 ms  0x6730 SECKEY_CreateECPrivateKey()
  8315 ms  0x6730 cx:0x7f87d6fc5da8
  8316 ms     | 0x6730 EC_ValidatePublicKey()
  8316 ms     | 0x6730 ret:0x0
  8316 ms  0x6730 ret:0x7f87d7097020::7f87d7097020  c0 de 61 d1                                      ..a.
  8316 ms  0x6730 SECKEY_CreateECPrivateKey()
  8316 ms  0x6730 cx:0x7f87d6fc5da8
  8316 ms     | 0x6730 EC_ValidatePublicKey()
  8318 ms     | 0x6730 ret:0x0
  8318 ms  0x6730 ret:0x7f87d9ac5820::7f87d9ac5820  20 c4 d3 d1                                       ...
  8318 ms  0x6730 SSL_AuthCertificateComplete()
  8318 ms  0x6730 fd:0x7f87bfa81ac0
  8318 ms  0x6730 err:0x0
  8318 ms  0x6730 PK11_Encrypt()
  8318 ms  0x6730 symkey:0x7f87d0a96f00
  8319 ms  0x6730 PK11_Encrypt()
  8319 ms  0x6730 symkey:0x7f87d0a95880
  8320 ms  0x6730 PK11_Encrypt()
  8320 ms  0x6730 symkey:0x7f87d0a96f00
           /* TID 0x6738 */
  8321 ms  0x6738 PR_Close()
  8321 ms  0x6738 fd:0x7f87d2dc4a30
           /* TID 0x6730 */
  8332 ms  SECKEY_ECParamsToKeySize()
  8332 ms  0x6730 ret:0x100
  8332 ms  0x6730 SECKEY_CreateECPrivateKey()
  8332 ms  0x6730 cx:0x7f87d08ebaa8
  8332 ms     | 0x6730 EC_ValidatePublicKey()
  8334 ms     | 0x6730 ret:0x0
  8334 ms  0x6730 ret:0x7f87da5ba820::7f87da5ba820  90 92 13 d2                                      ....
  8334 ms  0x6730 PK11_PubDeriveWithKDF()
  8334 ms  0x6730 seckey:0x7f87da5ba820
  8334 ms     | 0x6730 EC_ValidatePublicKey()
  8336 ms     | 0x6730 ret:0x0
  8337 ms  0x6730 ret:0x7f87d0c54400
  8337 ms  0x6730 PK11_DeriveWithFlags()
  8337 ms  0x6730 basekey:0x7f87d0c54400
  8337 ms     | 0x6730 PK11_DeriveWithTemplate()
  8337 ms  0x6730 ret:0x7f87bfabfe80
  8337 ms  0x6730 PK11_Derive()
  8337 ms  0x6730 basekey:0x7f87bfabfe80
  8337 ms     | 0x6730 PK11_DeriveWithTemplate()
  8337 ms  0x6730 ret:0x7f87d08f6600
  8337 ms  0x6730 SECKEY_DestroyPrivateKey()
  8337 ms  0x6730 privk:0x7f87da5ba820::7f87da5ba820  90 92 13 d2                                      ....
  8337 ms  0x6730 privk:0x7f87da5ba820::7f87da5ba820  e5 e5 e5 e5                                      ....
  8338 ms  0x6730 PK11_Encrypt()
  8338 ms  0x6730 symkey:0x7f87d08f6b00
  8338 ms  0x6730 PR_Connect()
  8338 ms  0x6730 fd:0x7f87d6a68d90
  8367 ms  0x6730 SECKEY_CreateECPrivateKey()
  8367 ms  0x6730 cx:0x7f87d6fc6c48
  8368 ms     | 0x6730 EC_ValidatePublicKey()
  8368 ms     | 0x6730 ret:0x0
  8368 ms  0x6730 ret:0x7f87da5ba820::7f87da5ba820  f0 91 13 d2                                      ....
  8368 ms  0x6730 SECKEY_CreateECPrivateKey()
  8368 ms  0x6730 cx:0x7f87d6fc6c48
  8368 ms     | 0x6730 EC_ValidatePublicKey()
  8370 ms     | 0x6730 ret:0x0
  8370 ms  0x6730 ret:0x7f87da5bf820::7f87da5bf820  20 94 13 d2                                       ...
  8373 ms  0x6730 SECKEY_CreateECPrivateKey()
  8373 ms  0x6730 cx:0x7f87d6fc6908
  8374 ms     | 0x6730 EC_ValidatePublicKey()
  8374 ms     | 0x6730 ret:0x0
  8374 ms  0x6730 ret:0x7f87da5c2820::7f87da5c2820  60 95 13 d2                                      `...
  8374 ms  0x6730 SECKEY_CreateECPrivateKey()
  8374 ms  0x6730 cx:0x7f87d6fc6908
  8375 ms     | 0x6730 EC_ValidatePublicKey()
  8376 ms     | 0x6730 ret:0x0
  8376 ms  0x6730 ret:0x7f87da5c6020::7f87da5c6020  40 97 13 d2                                      @...
  8443 ms  0x6730 SSL_ImportFD()
  8443 ms  0x6730 ret:0x7f87d65f08e0
  8443 ms  0x6730 SSL_AuthCertificateHook()
  8443 ms  0x6730 fd:0x7f87d65f08e0
  8443 ms  0x6730 ret:0x0
  8443 ms  0x6730 PR_Connect()
  8443 ms  0x6730 fd:0x7f87d65f08e0
           /* TID 0x67de */
  8470 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8472 ms  0x67de ret:0x0
           /* TID 0x6738 */
  8474 ms  0x6738 PR_Close()
  8474 ms  0x6738 fd:0x7f87d0aaff10
           /* TID 0x6730 */
  8481 ms  0x6730 SSL_AuthCertificateComplete()
  8481 ms  0x6730 fd:0x7f87bf768730
  8481 ms  0x6730 err:0x0
  8482 ms  0x6730 PK11_Encrypt()
  8482 ms  0x6730 symkey:0x7f87d08f6b00
  8495 ms  SECKEY_ECParamsToKeySize()
  8495 ms  0x6730 ret:0x100
  8495 ms  0x6730 SECKEY_CreateECPrivateKey()
  8495 ms  0x6730 cx:0x7f87d08ed168
  8496 ms     | 0x6730 EC_ValidatePublicKey()
  8498 ms     | 0x6730 ret:0x0
  8498 ms  0x6730 ret:0x7f87da5c6820::7f87da5c6820  20 99 13 d2                                       ...
  8498 ms  0x6730 PK11_PubDeriveWithKDF()
  8498 ms  0x6730 seckey:0x7f87da5c6820
  8499 ms     | 0x6730 EC_ValidatePublicKey()
  8501 ms     | 0x6730 ret:0x0
  8504 ms  0x6730 ret:0x7f87d0c54400
  8504 ms  0x6730 PK11_DeriveWithFlags()
  8504 ms  0x6730 basekey:0x7f87d0c54400
  8504 ms     | 0x6730 PK11_DeriveWithTemplate()
  8504 ms  0x6730 ret:0x7f87d08f6380
  8504 ms  0x6730 PK11_Derive()
  8504 ms  0x6730 basekey:0x7f87d08f6380
  8504 ms     | 0x6730 PK11_DeriveWithTemplate()
  8504 ms  0x6730 ret:0x7f87f8d17580
  8504 ms  0x6730 SECKEY_DestroyPrivateKey()
  8504 ms  0x6730 privk:0x7f87da5c6820::7f87da5c6820  20 99 13 d2                                       ...
  8504 ms  0x6730 privk:0x7f87da5c6820::7f87da5c6820  e5 e5 e5 e5                                      ....
  8504 ms  0x6730 PK11_Encrypt()
  8504 ms  0x6730 symkey:0x7f87d08f6680
  8504 ms  0x6730 SSL_AuthCertificateComplete()
  8504 ms  0x6730 fd:0x7f87d3b9dc10
  8504 ms  0x6730 err:0x0
  8504 ms  0x6730 PK11_Encrypt()
  8504 ms  0x6730 symkey:0x7f87d08f6680
  8531 ms  0x6730 SECKEY_DestroyPrivateKey()
  8531 ms  0x6730 privk:0x7f87d6921020::7f87d6921020  d0 b8 c9 d0                                      ....
  8531 ms  0x6730 privk:0x7f87d6921020::7f87d6921020  e5 e5 e5 e5                                      ....
  8531 ms  0x6730 SECKEY_DestroyPrivateKey()
  8531 ms  0x6730 privk:0x7f87d691d020::7f87d691d020  f0 b6 c9 d0                                      ....
  8531 ms  0x6730 privk:0x7f87d691d020::7f87d691d020  e5 e5 e5 e5                                      ....
  8531 ms  0x6730 PK11_Encrypt()
  8531 ms  0x6730 symkey:0x7f87d0a96f00
  8544 ms  0x6730 SECKEY_CreateECPrivateKey()
  8544 ms  0x6730 cx:0x7f87d6fc7c88
  8545 ms     | 0x6730 EC_ValidatePublicKey()
  8545 ms     | 0x6730 ret:0x0
  8548 ms  0x6730 ret:0x7f87d691d020::7f87d691d020  f0 b6 c9 d0                                      ....
  8548 ms  0x6730 SECKEY_CreateECPrivateKey()
  8548 ms  0x6730 cx:0x7f87d6fc7c88
  8549 ms     | 0x6730 EC_ValidatePublicKey()
  8553 ms     | 0x6730 ret:0x0
  8553 ms  0x6730 ret:0x7f87d6921020::7f87d6921020  d0 b8 c9 d0                                      ....
  8554 ms  0x6730 SECKEY_DestroyPrivateKey()
  8554 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  d0 b3 c9 d0                                      ....
  8554 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  e5 e5 e5 e5                                      ....
  8554 ms  0x6730 SECKEY_DestroyPrivateKey()
  8554 ms  0x6730 privk:0x7f87d6910820::7f87d6910820  60 cf 86 bf                                      `...
  8554 ms  0x6730 privk:0x7f87d6910820::7f87d6910820  e5 e5 e5 e5                                      ....
  8555 ms  0x6730 SECKEY_DestroyPrivateKey()
  8555 ms  0x6730 privk:0x7f87d69ba820::7f87d69ba820  50 e1 ff d0                                      P...
  8555 ms  0x6730 privk:0x7f87d69ba820::7f87d69ba820  e5 e5 e5 e5                                      ....
  8555 ms  0x6730 SECKEY_DestroyPrivateKey()
  8555 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  f0 bb c9 d0                                      ....
  8555 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  e5 e5 e5 e5                                      ....
  8555 ms  0x6730 SECKEY_CreateECPrivateKey()
  8555 ms  0x6730 cx:0x7f87d6fc7e28
  8556 ms     | 0x6730 EC_ValidatePublicKey()
  8556 ms     | 0x6730 ret:0x0
  8556 ms  0x6730 ret:0x7f87d6910820::7f87d6910820  70 ce 86 bf                                      p...
  8556 ms  0x6730 SECKEY_CreateECPrivateKey()
  8556 ms  0x6730 cx:0x7f87d6fc7e28
  8558 ms     | 0x6730 EC_ValidatePublicKey()
  8561 ms     | 0x6730 ret:0x0
  8561 ms  0x6730 ret:0x7f87d6916820::7f87d6916820  80 b3 c9 d0                                      ....
  8562 ms  0x6730 PR_Close()
  8562 ms  0x6730 fd:0x7f87bfa81ac0
  8562 ms     | 0x6730 PK11_Encrypt()
  8562 ms     | 0x6730 symkey:0x7f87d0a95880
  8562 ms  0x6730 PR_Close()
  8562 ms  0x6730 fd:0x7f87bfa818b0
  8562 ms     | 0x6730 PK11_Encrypt()
  8562 ms     | 0x6730 symkey:0x7f87d0a95d00
           /* TID 0x6738 */
  8565 ms  0x6738 PR_Close()
  8565 ms  0x6738 fd:0x7f87bfa816d0
           /* TID 0x6730 */
  8568 ms  0x6730 SECKEY_CreateECPrivateKey()
  8568 ms  0x6730 cx:0x7f87d6fc8308
  8569 ms     | 0x6730 EC_ValidatePublicKey()
  8569 ms     | 0x6730 ret:0x0
  8569 ms  0x6730 ret:0x7f87d69a7020::7f87d69a7020  d0 b3 c9 d0                                      ....
  8569 ms  0x6730 SECKEY_CreateECPrivateKey()
  8569 ms  0x6730 cx:0x7f87d6fc8308
  8570 ms     | 0x6730 EC_ValidatePublicKey()
  8576 ms     | 0x6730 ret:0x0
  8576 ms  0x6730 ret:0x7f87d69ba820::7f87d69ba820  d0 e3 cd d0                                      ....
  8576 ms  0x6730 SECKEY_CreateECPrivateKey()
  8576 ms  0x6730 cx:0x7f87d6fc8168
  8577 ms     | 0x6730 EC_ValidatePublicKey()
  8577 ms     | 0x6730 ret:0x0
  8577 ms  0x6730 ret:0x7f87d7091020::7f87d7091020  c0 fe ff d0                                      ....
  8577 ms  0x6730 SECKEY_CreateECPrivateKey()
  8577 ms  0x6730 cx:0x7f87d6fc8168
  8578 ms     | 0x6730 EC_ValidatePublicKey()
  8580 ms     | 0x6730 ret:0x0
  8580 ms  0x6730 ret:0x7f87da5c8820::7f87da5c8820  40 c2 19 d2                                      @...
  8580 ms  0x6730 SECKEY_CreateECPrivateKey()
  8580 ms  0x6730 cx:0x7f87d6fc8cc8
  8581 ms     | 0x6730 EC_ValidatePublicKey()
  8581 ms     | 0x6730 ret:0x0
  8581 ms  0x6730 ret:0x7f87da5cc020::7f87da5cc020  b0 c5 19 d2                                      ....
  8581 ms  0x6730 SECKEY_CreateECPrivateKey()
  8581 ms  0x6730 cx:0x7f87d6fc8cc8
  8581 ms     | 0x6730 EC_ValidatePublicKey()
  8583 ms     | 0x6730 ret:0x0
  8583 ms  0x6730 ret:0x7f87da5d2020::7f87da5d2020  60 cf 19 d2                                      `...
  8596 ms  SECKEY_ECParamsToKeySize()
  8596 ms  0x6730 ret:0x100
  8596 ms  0x6730 SECKEY_CreateECPrivateKey()
  8596 ms  0x6730 cx:0x7f87d08ecae8
  8597 ms     | 0x6730 EC_ValidatePublicKey()
  8603 ms     | 0x6730 ret:0x0
  8603 ms  0x6730 ret:0x7f87dabe2020::7f87dabe2020  00 5b 1e d2                                      .[..
  8603 ms  0x6730 PK11_PubDeriveWithKDF()
  8603 ms  0x6730 seckey:0x7f87dabe2020
  8603 ms     | 0x6730 EC_ValidatePublicKey()
  8605 ms     | 0x6730 ret:0x0
  8608 ms  0x6730 ret:0x7f87d08f6f80
  8608 ms  0x6730 PK11_DeriveWithFlags()
  8608 ms  0x6730 basekey:0x7f87d08f6f80
  8608 ms     | 0x6730 PK11_DeriveWithTemplate()
  8608 ms  0x6730 ret:0x7f87d0a95c00
  8608 ms  0x6730 PK11_Derive()
  8608 ms  0x6730 basekey:0x7f87d0a95c00
  8608 ms     | 0x6730 PK11_DeriveWithTemplate()
  8608 ms  0x6730 ret:0x7f87d08f6a80
  8608 ms  0x6730 SECKEY_DestroyPrivateKey()
  8608 ms  0x6730 privk:0x7f87dabe2020::7f87dabe2020  00 5b 1e d2                                      .[..
  8608 ms  0x6730 privk:0x7f87dabe2020::7f87dabe2020  e5 e5 e5 e5                                      ....
  8608 ms  0x6730 PK11_Encrypt()
  8608 ms  0x6730 symkey:0x7f87d0a95d80
  8608 ms  0x6730 SSL_AuthCertificateComplete()
  8608 ms  0x6730 fd:0x7f87d3b69b80
  8608 ms  0x6730 err:0x0
  8622 ms  SECKEY_ECParamsToKeySize()
  8622 ms  0x6730 ret:0x100
  8622 ms  0x6730 SECKEY_CreateECPrivateKey()
  8622 ms  0x6730 cx:0x7f87d08ece28
  8622 ms     | 0x6730 EC_ValidatePublicKey()
  8625 ms     | 0x6730 ret:0x0
  8625 ms  0x6730 ret:0x7f87dabe3020::7f87dabe3020  a0 5b 1e d2                                      .[..
  8625 ms  0x6730 PK11_PubDeriveWithKDF()
  8625 ms  0x6730 seckey:0x7f87dabe3020
  8625 ms     | 0x6730 EC_ValidatePublicKey()
  8626 ms     | 0x6730 ret:0x0
  8628 ms  0x6730 ret:0x7f87d08f6f80
  8628 ms  0x6730 PK11_DeriveWithFlags()
  8628 ms  0x6730 basekey:0x7f87d08f6f80
  8628 ms     | 0x6730 PK11_DeriveWithTemplate()
  8628 ms  0x6730 ret:0x7f87d08f6e00
  8628 ms  0x6730 PK11_Derive()
  8628 ms  0x6730 basekey:0x7f87d08f6e00
  8628 ms     | 0x6730 PK11_DeriveWithTemplate()
  8629 ms  0x6730 ret:0x7f87d0c54400
  8629 ms  0x6730 SECKEY_DestroyPrivateKey()
  8629 ms  0x6730 privk:0x7f87dabe3020::7f87dabe3020  a0 5b 1e d2                                      .[..
  8629 ms  0x6730 privk:0x7f87dabe3020::7f87dabe3020  e5 e5 e5 e5                                      ....
  8629 ms  0x6730 PK11_Encrypt()
  8629 ms  0x6730 symkey:0x7f87d0a95980
  8629 ms  0x6730 SSL_AuthCertificateComplete()
  8629 ms  0x6730 fd:0x7f87d3b9daf0
  8629 ms  0x6730 err:0x0
           /* TID 0x6738 */
  8631 ms  0x6738 PR_Close()
  8631 ms  0x6738 fd:0x7f87d0c507c0
           /* TID 0x6730 */
  8634 ms  0x6730 PK11_Encrypt()
  8634 ms  0x6730 symkey:0x7f87d0a95980
  8635 ms  SECKEY_ECParamsToKeySize()
  8635 ms  0x6730 ret:0x100
  8635 ms  0x6730 SECKEY_CreateECPrivateKey()
  8635 ms  0x6730 cx:0x7f87d6fc5f48
  8636 ms     | 0x6730 EC_ValidatePublicKey()
  8637 ms     | 0x6730 ret:0x0
  8637 ms  0x6730 ret:0x7f87dabef020::7f87dabef020  80 73 44 d2                                      .sD.
  8638 ms  0x6730 PK11_PubDeriveWithKDF()
  8638 ms  0x6730 seckey:0x7f87dabef020
  8638 ms     | 0x6730 EC_ValidatePublicKey()
  8640 ms     | 0x6730 ret:0x0
  8642 ms  0x6730 ret:0x7f87d08f6f80
  8642 ms  0x6730 PK11_DeriveWithFlags()
  8642 ms  0x6730 basekey:0x7f87d08f6f80
  8642 ms     | 0x6730 PK11_DeriveWithTemplate()
  8642 ms  0x6730 ret:0x7f87bf7e9780
  8642 ms  0x6730 PK11_Derive()
  8642 ms  0x6730 basekey:0x7f87bf7e9780
  8642 ms     | 0x6730 PK11_DeriveWithTemplate()
  8642 ms  0x6730 ret:0x7f87d1d48200
  8642 ms  0x6730 SECKEY_DestroyPrivateKey()
  8642 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  80 73 44 d2                                      .sD.
  8642 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  e5 e5 e5 e5                                      ....
  8642 ms  0x6730 PK11_Encrypt()
  8642 ms  0x6730 symkey:0x7f87bf7e9e00
           /* TID 0x6738 */
  8644 ms  0x6738 PR_Close()
  8644 ms  0x6738 fd:0x7f87d2193850
           /* TID 0x6730 */
  8649 ms  0x6730 SECKEY_DestroyPrivateKey()
  8649 ms  0x6730 privk:0x7f87d69c0820::7f87d69c0820  40 e7 ff d0                                      @...
  8649 ms  0x6730 privk:0x7f87d69c0820::7f87d69c0820  e5 e5 e5 e5                                      ....
  8649 ms  0x6730 SECKEY_DestroyPrivateKey()
  8649 ms  0x6730 privk:0x7f87d69bd820::7f87d69bd820  90 e2 ff d0                                      ....
  8649 ms  0x6730 privk:0x7f87d69bd820::7f87d69bd820  e5 e5 e5 e5                                      ....
  8650 ms  SECKEY_ECParamsToKeySize()
  8650 ms  0x6730 ret:0x100
  8650 ms  0x6730 SECKEY_CreateECPrivateKey()
  8650 ms  0x6730 cx:0x7f87d08ecfc8
  8651 ms     | 0x6730 EC_ValidatePublicKey()
  8652 ms     | 0x6730 ret:0x0
  8652 ms  0x6730 ret:0x7f87d69be020::7f87d69be020  c0 e4 ff d0                                      ....
  8652 ms  0x6730 PK11_PubDeriveWithKDF()
  8652 ms  0x6730 seckey:0x7f87d69be020
  8652 ms     | 0x6730 EC_ValidatePublicKey()
  8658 ms     | 0x6730 ret:0x0
  8660 ms  0x6730 ret:0x7f87d08f6f80
  8660 ms  0x6730 PK11_DeriveWithFlags()
  8660 ms  0x6730 basekey:0x7f87d08f6f80
  8660 ms     | 0x6730 PK11_DeriveWithTemplate()
  8660 ms  0x6730 ret:0x7f87d1d48100
  8660 ms  0x6730 PK11_Derive()
  8660 ms  0x6730 basekey:0x7f87d1d48100
  8660 ms     | 0x6730 PK11_DeriveWithTemplate()
  8660 ms  0x6730 ret:0x7f87d08eff00
  8660 ms  0x6730 SECKEY_DestroyPrivateKey()
  8660 ms  0x6730 privk:0x7f87d69be020::7f87d69be020  c0 e4 ff d0                                      ....
  8660 ms  0x6730 privk:0x7f87d69be020::7f87d69be020  e5 e5 e5 e5                                      ....
  8660 ms  0x6730 PK11_Encrypt()
  8660 ms  0x6730 symkey:0x7f87d1d48280
  8663 ms  SECKEY_ECParamsToKeySize()
  8663 ms  0x6730 ret:0x100
  8663 ms  0x6730 SECKEY_CreateECPrivateKey()
  8663 ms  0x6730 cx:0x7f87d6fc60e8
  8664 ms     | 0x6730 EC_ValidatePublicKey()
  8665 ms     | 0x6730 ret:0x0
  8665 ms  0x6730 ret:0x7f87dabee820::7f87dabee820  20 74 44 d2                                       tD.
  8665 ms  0x6730 PK11_PubDeriveWithKDF()
  8665 ms  0x6730 seckey:0x7f87dabee820
  8665 ms     | 0x6730 EC_ValidatePublicKey()
  8667 ms     | 0x6730 ret:0x0
  8669 ms  0x6730 ret:0x7f87d08f6f80
  8669 ms  0x6730 PK11_DeriveWithFlags()
  8669 ms  0x6730 basekey:0x7f87d08f6f80
  8669 ms     | 0x6730 PK11_DeriveWithTemplate()
  8669 ms  0x6730 ret:0x7f87bfabf380
  8669 ms  0x6730 PK11_Derive()
  8669 ms  0x6730 basekey:0x7f87bfabf380
  8669 ms     | 0x6730 PK11_DeriveWithTemplate()
  8669 ms  0x6730 ret:0x7f87d1625a00
  8669 ms  0x6730 SECKEY_DestroyPrivateKey()
  8669 ms  0x6730 privk:0x7f87dabee820::7f87dabee820  20 74 44 d2                                       tD.
  8669 ms  0x6730 privk:0x7f87dabee820::7f87dabee820  e5 e5 e5 e5                                      ....
  8669 ms  0x6730 PK11_Encrypt()
  8669 ms  0x6730 symkey:0x7f87d08eff80
  8669 ms  0x6730 SSL_AuthCertificateComplete()
  8669 ms  0x6730 fd:0x7f87d3b9d400
  8669 ms  0x6730 err:0x0
           /* TID 0x67de */
  8670 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8670 ms  0x67de ret:0x0
  8670 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8670 ms  0x67de ret:0x0
           /* TID 0x6738 */
  8671 ms  0x6738 PR_Close()
  8671 ms  0x6738 fd:0x7f87d3b69250
           /* TID 0x6730 */
  8671 ms  0x6730 PK11_Encrypt()
  8671 ms  0x6730 symkey:0x7f87d1d48280
  8672 ms  SECKEY_ECParamsToKeySize()
  8672 ms  0x6730 ret:0x100
  8672 ms  0x6730 SECKEY_CreateECPrivateKey()
  8672 ms  0x6730 cx:0x7f87d6fc5da8
  8673 ms     | 0x6730 EC_ValidatePublicKey()
  8674 ms     | 0x6730 ret:0x0
  8674 ms  0x6730 ret:0x7f87dabec820::7f87dabec820  40 72 44 d2                                      @rD.
  8674 ms  0x6730 PK11_PubDeriveWithKDF()
  8674 ms  0x6730 seckey:0x7f87dabec820
  8674 ms     | 0x6730 EC_ValidatePublicKey()
  8676 ms     | 0x6730 ret:0x0
  8677 ms  0x6730 ret:0x7f87d08f6f80
  8677 ms  0x6730 PK11_DeriveWithFlags()
  8677 ms  0x6730 basekey:0x7f87d08f6f80
  8677 ms     | 0x6730 PK11_DeriveWithTemplate()
  8677 ms  0x6730 ret:0x7f87d1624f80
  8677 ms  0x6730 PK11_Derive()
  8677 ms  0x6730 basekey:0x7f87d1624f80
  8677 ms     | 0x6730 PK11_DeriveWithTemplate()
  8677 ms  0x6730 ret:0x7f87d0fb0180
  8677 ms  0x6730 SECKEY_DestroyPrivateKey()
  8677 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  40 72 44 d2                                      @rD.
  8677 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  e5 e5 e5 e5                                      ....
  8677 ms  0x6730 PK11_Encrypt()
  8677 ms  0x6730 symkey:0x7f87d1625a80
  8678 ms  0x6730 SECKEY_CreateECPrivateKey()
  8678 ms  0x6730 cx:0x7f87d6fc8b28
  8679 ms     | 0x6730 EC_ValidatePublicKey()
  8679 ms     | 0x6730 ret:0x0
  8679 ms  0x6730 ret:0x7f87dabec820::7f87dabec820  d0 5d 1e d2                                      .]..
  8679 ms  0x6730 SECKEY_CreateECPrivateKey()
  8679 ms  0x6730 cx:0x7f87d6fc8b28
  8679 ms     | 0x6730 EC_ValidatePublicKey()
  8681 ms     | 0x6730 ret:0x0
  8681 ms  0x6730 ret:0x7f87dabf0820::7f87dabf0820  20 74 44 d2                                       tD.
  8681 ms  0x6730 SSL_AuthCertificateComplete()
  8681 ms  0x6730 fd:0x7f87d2dc4610
  8681 ms  0x6730 err:0x0
  8681 ms  0x6730 SSL_AuthCertificateComplete()
  8681 ms  0x6730 fd:0x7f87bfaea1f0
  8681 ms  0x6730 err:0x0
  8681 ms  0x6730 PK11_Encrypt()
  8681 ms  0x6730 symkey:0x7f87bf7e9e00
  8682 ms  0x6730 PK11_Encrypt()
  8682 ms  0x6730 symkey:0x7f87d1625a80
           /* TID 0x6738 */
  8695 ms  0x6738 PR_Close()
  8695 ms  0x6738 fd:0x7f87d6a121c0
           /* TID 0x67e0 */
  8696 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8696 ms  0x67e0 ret:0x0
  8696 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8696 ms  0x67e0 ret:0x0
           /* TID 0x6730 */
  8696 ms  0x6730 SSL_AuthCertificateComplete()
  8696 ms  0x6730 fd:0x7f87d5ebca90
  8696 ms  0x6730 err:0x0
  8696 ms  0x6730 PK11_Encrypt()
  8696 ms  0x6730 symkey:0x7f87d08eff80
           /* TID 0x6738 */
  8737 ms  0x6738 PR_Close()
  8737 ms  0x6738 fd:0x7f87d6a12850
           /* TID 0x67df */
  8737 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8738 ms  0x67df ret:0x0
  8738 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8738 ms  0x67df ret:0x0
           /* TID 0x6730 */
  8738 ms  0x6730 SSL_AuthCertificateComplete()
  8738 ms  0x6730 fd:0x7f87d0c50400
  8738 ms  0x6730 err:0x0
  8746 ms  SECKEY_ECParamsToKeySize()
  8746 ms  0x6730 ret:0x100
  8746 ms  0x6730 SECKEY_CreateECPrivateKey()
  8746 ms  0x6730 cx:0x7f87d6fc6908
  8748 ms     | 0x6730 EC_ValidatePublicKey()
  8753 ms     | 0x6730 ret:0x0
  8753 ms  0x6730 ret:0x7f87dac8f020::7f87dac8f020  30 f8 4c d2                                      0.L.
  8753 ms  0x6730 PK11_PubDeriveWithKDF()
  8753 ms  0x6730 seckey:0x7f87dac8f020
  8753 ms     | 0x6730 EC_ValidatePublicKey()
  8757 ms     | 0x6730 ret:0x0
  8761 ms  0x6730 ret:0x7f87d08f6f80
  8761 ms  0x6730 PK11_DeriveWithFlags()
  8761 ms  0x6730 basekey:0x7f87d08f6f80
  8761 ms     | 0x6730 PK11_DeriveWithTemplate()
  8761 ms  0x6730 ret:0x7f87d0c6bf80
  8761 ms  0x6730 PK11_Derive()
  8761 ms  0x6730 basekey:0x7f87d0c6bf80
  8761 ms     | 0x6730 PK11_DeriveWithTemplate()
  8761 ms  0x6730 ret:0x7f87d0fb0c00
  8761 ms  0x6730 SECKEY_DestroyPrivateKey()
  8761 ms  0x6730 privk:0x7f87dac8f020::7f87dac8f020  30 f8 4c d2                                      0.L.
  8762 ms  0x6730 privk:0x7f87dac8f020::7f87dac8f020  e5 e5 e5 e5                                      ....
  8762 ms  0x6730 PK11_Encrypt()
  8762 ms  0x6730 symkey:0x7f87d0fb0200
  8779 ms  0x6730 SECKEY_DestroyPrivateKey()
  8779 ms  0x6730 privk:0x7f87d28b9020::7f87d28b9020  60 ea ff d0                                      `...
  8779 ms  0x6730 privk:0x7f87d28b9020::7f87d28b9020  e5 e5 e5 e5                                      ....
  8779 ms  0x6730 SECKEY_DestroyPrivateKey()
  8779 ms  0x6730 privk:0x7f87bfae0820::7f87bfae0820  50 31 b2 d0                                      P1..
  8779 ms  0x6730 privk:0x7f87bfae0820::7f87bfae0820  e5 e5 e5 e5                                      ....
  8779 ms  0x6730 PR_Close()
  8779 ms  0x6730 fd:0x7f87d3b9dc10
  8779 ms     | 0x6730 PK11_Encrypt()
  8779 ms     | 0x6730 symkey:0x7f87d08f6680
           /* TID 0x6738 */
  8792 ms  0x6738 PR_Close()
  8792 ms  0x6738 fd:0x7f87bfaea4c0
           /* TID 0x67de */
  8792 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8792 ms  0x67de ret:0x0
  8792 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8792 ms  0x67de ret:0x0
           /* TID 0x6730 */
  8793 ms  0x6730 SSL_AuthCertificateComplete()
  8793 ms  0x6730 fd:0x7f87d0c50190
  8793 ms  0x6730 err:0x0
  8793 ms  0x6730 PK11_Encrypt()
  8793 ms  0x6730 symkey:0x7f87d0fb0200
  8794 ms  0x6730 PK11_Encrypt()
  8794 ms  0x6730 symkey:0x7f87d0fb0200
  8795 ms  0x6730 SECKEY_CreateECPrivateKey()
  8795 ms  0x6730 cx:0x7f87d6fc8e68
  8796 ms     | 0x6730 EC_ValidatePublicKey()
  8796 ms     | 0x6730 ret:0x0
  8796 ms  0x6730 ret:0x7f87d28b9020::7f87d28b9020  d0 3d b2 d0                                      .=..
  8796 ms  0x6730 SECKEY_CreateECPrivateKey()
  8796 ms  0x6730 cx:0x7f87d6fc8e68
  8797 ms     | 0x6730 EC_ValidatePublicKey()
  8801 ms     | 0x6730 ret:0x0
  8801 ms  0x6730 ret:0x7f87da5b6020::7f87da5b6020  00 91 13 d2                                      ....
           /* TID 0x6738 */
  8838 ms  0x6738 PR_Close()
  8838 ms  0x6738 fd:0x7f87d3b9dc10
           /* TID 0x6730 */
  8864 ms  0x6730 SSL_AuthCertificateComplete()
  8864 ms  0x6730 fd:0x7f87d6a127f0
  8864 ms  0x6730 err:0x0
  8885 ms  SECKEY_ECParamsToKeySize()
  8885 ms  0x6730 ret:0x100
  8885 ms  0x6730 SECKEY_CreateECPrivateKey()
  8885 ms  0x6730 cx:0x7f87d6fc7e28
  8893 ms     | 0x6730 EC_ValidatePublicKey()
  8897 ms     | 0x6730 ret:0x0
  8905 ms  0x6730 ret:0x7f87dac8d820::7f87dac8d820  40 f7 4c d2                                      @.L.
  8905 ms  0x6730 PK11_PubDeriveWithKDF()
  8905 ms  0x6730 seckey:0x7f87dac8d820
  8905 ms     | 0x6730 EC_ValidatePublicKey()
  8908 ms     | 0x6730 ret:0x0
  8910 ms  0x6730 ret:0x7f87f8d17580
  8910 ms  0x6730 PK11_DeriveWithFlags()
  8910 ms  0x6730 basekey:0x7f87f8d17580
  8911 ms     | 0x6730 PK11_DeriveWithTemplate()
  8911 ms  0x6730 ret:0x7f87d08f6380
  8911 ms  0x6730 PK11_Derive()
  8911 ms  0x6730 basekey:0x7f87d08f6380
  8911 ms     | 0x6730 PK11_DeriveWithTemplate()
  8911 ms  0x6730 ret:0x7f87d08f6f80
  8911 ms  0x6730 SECKEY_DestroyPrivateKey()
  8911 ms  0x6730 privk:0x7f87dac8d820::7f87dac8d820  40 f7 4c d2                                      @.L.
  8911 ms  0x6730 privk:0x7f87dac8d820::7f87dac8d820  e5 e5 e5 e5                                      ....
  8919 ms  0x6730 PK11_Encrypt()
  8919 ms  0x6730 symkey:0x7f87d08f6700
  8919 ms  0x6730 SSL_AuthCertificateComplete()
  8919 ms  0x6730 fd:0x7f87d69568e0
  8919 ms  0x6730 err:0x0
  8921 ms  SECKEY_ECParamsToKeySize()
  8921 ms  0x6730 ret:0x100
  8921 ms  0x6730 SECKEY_CreateECPrivateKey()
  8921 ms  0x6730 cx:0x7f87d6fc7c88
  8922 ms     | 0x6730 EC_ValidatePublicKey()
  8928 ms     | 0x6730 ret:0x0
  8928 ms  0x6730 ret:0x7f87dac93820::7f87dac93820  40 47 4f d2                                      @GO.
  8928 ms  0x6730 PK11_PubDeriveWithKDF()
  8928 ms  0x6730 seckey:0x7f87dac93820
  8928 ms     | 0x6730 EC_ValidatePublicKey()
  8930 ms     | 0x6730 ret:0x0
  8931 ms  0x6730 ret:0x7f87f8d17580
  8931 ms  0x6730 PK11_DeriveWithFlags()
  8931 ms  0x6730 basekey:0x7f87f8d17580
  8931 ms     | 0x6730 PK11_DeriveWithTemplate()
  8931 ms  0x6730 ret:0x7f87d0fb0700
  8931 ms  0x6730 PK11_Derive()
  8931 ms  0x6730 basekey:0x7f87d0fb0700
  8931 ms     | 0x6730 PK11_DeriveWithTemplate()
  8931 ms  0x6730 ret:0x7f87d0fb1580
  8931 ms  0x6730 SECKEY_DestroyPrivateKey()
  8931 ms  0x6730 privk:0x7f87dac93820::7f87dac93820  40 47 4f d2                                      @GO.
  8931 ms  0x6730 privk:0x7f87dac93820::7f87dac93820  e5 e5 e5 e5                                      ....
  8931 ms  0x6730 PK11_Encrypt()
  8931 ms  0x6730 symkey:0x7f87d0fb0c80
  8935 ms  0x6730 PK11_Encrypt()
  8935 ms  0x6730 symkey:0x7f87d08f6700
  8936 ms  SECKEY_ECParamsToKeySize()
  8936 ms  0x6730 ret:0x100
  8936 ms  0x6730 SECKEY_CreateECPrivateKey()
  8936 ms  0x6730 cx:0x7f87d6fc8308
  8937 ms     | 0x6730 EC_ValidatePublicKey()
  8942 ms     | 0x6730 ret:0x0
  8942 ms  0x6730 ret:0x7f87db50c020::7f87db50c020  00 4b 4f d2                                      .KO.
  8942 ms  0x6730 PK11_PubDeriveWithKDF()
  8942 ms  0x6730 seckey:0x7f87db50c020
  8942 ms     | 0x6730 EC_ValidatePublicKey()
  8944 ms     | 0x6730 ret:0x0
  8945 ms  0x6730 ret:0x7f87f8d17580
  8945 ms  0x6730 PK11_DeriveWithFlags()
  8945 ms  0x6730 basekey:0x7f87f8d17580
  8945 ms     | 0x6730 PK11_DeriveWithTemplate()
  8945 ms  0x6730 ret:0x7f87d0fb1480
  8945 ms  0x6730 PK11_Derive()
  8945 ms  0x6730 basekey:0x7f87d0fb1480
  8946 ms     | 0x6730 PK11_DeriveWithTemplate()
  8946 ms  0x6730 ret:0x7f87d0fb1b00
  8946 ms  0x6730 SECKEY_DestroyPrivateKey()
  8946 ms  0x6730 privk:0x7f87db50c020::7f87db50c020  00 4b 4f d2                                      .KO.
  8946 ms  0x6730 privk:0x7f87db50c020::7f87db50c020  e5 e5 e5 e5                                      ....
  8946 ms  0x6730 PK11_Encrypt()
  8946 ms  0x6730 symkey:0x7f87d0fb1700
  8949 ms  SECKEY_ECParamsToKeySize()
  8949 ms  0x6730 ret:0x100
  8949 ms  0x6730 SECKEY_CreateECPrivateKey()
  8949 ms  0x6730 cx:0x7f87d6fc8168
  8950 ms     | 0x6730 EC_ValidatePublicKey()
  8951 ms     | 0x6730 ret:0x0
  8951 ms  0x6730 ret:0x7f87db50c820::7f87db50c820  a0 4b 4f d2                                      .KO.
  8951 ms  0x6730 PK11_PubDeriveWithKDF()
  8951 ms  0x6730 seckey:0x7f87db50c820
  8952 ms     | 0x6730 EC_ValidatePublicKey()
  8953 ms     | 0x6730 ret:0x0
  8955 ms  0x6730 ret:0x7f87f8d17580
  8955 ms  0x6730 PK11_DeriveWithFlags()
  8955 ms  0x6730 basekey:0x7f87f8d17580
  8955 ms     | 0x6730 PK11_DeriveWithTemplate()
  8955 ms  0x6730 ret:0x7f87d0fb1a80
  8955 ms  0x6730 PK11_Derive()
  8955 ms  0x6730 basekey:0x7f87d0fb1a80
  8955 ms     | 0x6730 PK11_DeriveWithTemplate()
  8955 ms  0x6730 ret:0x7f87d0c54900
  8955 ms  0x6730 SECKEY_DestroyPrivateKey()
  8955 ms  0x6730 privk:0x7f87db50c820::7f87db50c820  a0 4b 4f d2                                      .KO.
  8955 ms  0x6730 privk:0x7f87db50c820::7f87db50c820  e5 e5 e5 e5                                      ....
  8955 ms  0x6730 PK11_Encrypt()
  8955 ms  0x6730 symkey:0x7f87d0fb1b80
  8961 ms  0x6730 SSL_AuthCertificateComplete()
  8961 ms  0x6730 fd:0x7f87d6a120d0
  8961 ms  0x6730 err:0x0
  8961 ms  0x6730 SSL_AuthCertificateComplete()
  8961 ms  0x6730 fd:0x7f87d6a12310
  8961 ms  0x6730 err:0x0
  8961 ms  0x6730 SECKEY_DestroyPrivateKey()
  8961 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  40 cc d3 d1                                      @...
  8961 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  e5 e5 e5 e5                                      ....
  8961 ms  0x6730 SECKEY_DestroyPrivateKey()
  8961 ms  0x6730 privk:0x7f87d7188020::7f87d7188020  90 c7 d3 d1                                      ....
  8961 ms  0x6730 privk:0x7f87d7188020::7f87d7188020  e5 e5 e5 e5                                      ....
  8962 ms  0x6730 SECKEY_DestroyPrivateKey()
  8962 ms  0x6730 privk:0x7f87d718f020::7f87d718f020  e0 27 db d1                                      .'..
  8962 ms  0x6730 privk:0x7f87d718f020::7f87d718f020  e5 e5 e5 e5                                      ....
  8962 ms  0x6730 SECKEY_DestroyPrivateKey()
  8962 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  60 20 db d1                                      ` ..
  8962 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  e5 e5 e5 e5                                      ....
  8962 ms  0x6730 PK11_Encrypt()
  8962 ms  0x6730 symkey:0x7f87d0fb1700
  8962 ms  0x6730 PK11_Encrypt()
  8962 ms  0x6730 symkey:0x7f87d0fb1b80
  8962 ms  0x6730 PR_Close()
  8962 ms  0x6730 fd:0x7f87d3b9daf0
  8963 ms     | 0x6730 PK11_Encrypt()
  8963 ms     | 0x6730 symkey:0x7f87d0a95980
  8967 ms  0x6730 SECKEY_DestroyPrivateKey()
  8967 ms  0x6730 privk:0x7f87d7198020::7f87d7198020  80 63 df d1                                      .c..
  8967 ms  0x6730 privk:0x7f87d7198020::7f87d7198020  e5 e5 e5 e5                                      ....
  8967 ms  0x6730 SECKEY_DestroyPrivateKey()
  8967 ms  0x6730 privk:0x7f87d7196020::7f87d7196020  70 d4 61 d1                                      p.a.
  8967 ms  0x6730 privk:0x7f87d7196020::7f87d7196020  e5 e5 e5 e5                                      ....
  8967 ms  0x6730 PR_Close()
  8967 ms  0x6730 fd:0x7f87d2dc4610
  8967 ms     | 0x6730 PK11_Encrypt()
  8967 ms     | 0x6730 symkey:0x7f87bf7e9e00
           /* TID 0x6738 */
  8978 ms  0x6738 PR_Close()
  8978 ms  0x6738 fd:0x7f87d0aaf190
  8988 ms  0x6738 PR_Close()
  8988 ms  0x6738 fd:0x7f87d0aafcd0
           /* TID 0x67df */
  8988 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8988 ms  0x67df ret:0x0
           /* TID 0x6730 */
  8989 ms  0x6730 SSL_AuthCertificateComplete()
  8989 ms  0x6730 fd:0x7f87d3b691f0
  8989 ms  0x6730 err:0x0
  8989 ms  0x6730 PK11_Encrypt()
  8989 ms  0x6730 symkey:0x7f87d0fb0c80
  8996 ms  0x6730 SECKEY_DestroyPrivateKey()
  8996 ms  0x6730 privk:0x7f87d9ac0820::7f87d9ac0820  80 68 df d1                                      .h..
  8996 ms  0x6730 privk:0x7f87d9ac0820::7f87d9ac0820  e5 e5 e5 e5                                      ....
  8996 ms  0x6730 SECKEY_DestroyPrivateKey()
  8996 ms  0x6730 privk:0x7f87d719d020::7f87d719d020  70 64 df d1                                      pd..
  8996 ms  0x6730 privk:0x7f87d719d020::7f87d719d020  e5 e5 e5 e5                                      ....
  8996 ms  0x6730 PR_Close()
  8996 ms  0x6730 fd:0x7f87d5ebca90
  8996 ms     | 0x6730 PK11_Encrypt()
  8996 ms     | 0x6730 symkey:0x7f87d08eff80
  8997 ms  0x6730 SECKEY_DestroyPrivateKey()
  8997 ms  0x6730 privk:0x7f87d7193820::7f87d7193820  b0 60 df d1                                      .`..
  8997 ms  0x6730 privk:0x7f87d7193820::7f87d7193820  e5 e5 e5 e5                                      ....
  8997 ms  0x6730 SECKEY_DestroyPrivateKey()
  8997 ms  0x6730 privk:0x7f87d7191820::7f87d7191820  b0 2a db d1                                      .*..
  8997 ms  0x6730 privk:0x7f87d7191820::7f87d7191820  e5 e5 e5 e5                                      ....
  8997 ms  0x6730 PR_Close()
  8997 ms  0x6730 fd:0x7f87d3b9d400
  8997 ms     | 0x6730 PK11_Encrypt()
  8997 ms     | 0x6730 symkey:0x7f87d1d48280
  9012 ms  0x6730 SECKEY_DestroyPrivateKey()
  9012 ms  0x6730 privk:0x7f87d9ac5820::7f87d9ac5820  20 c4 d3 d1                                       ...
  9012 ms  0x6730 privk:0x7f87d9ac5820::7f87d9ac5820  e5 e5 e5 e5                                      ....
  9012 ms  0x6730 SECKEY_DestroyPrivateKey()
  9012 ms  0x6730 privk:0x7f87d7097020::7f87d7097020  c0 de 61 d1                                      ..a.
  9012 ms  0x6730 privk:0x7f87d7097020::7f87d7097020  e5 e5 e5 e5                                      ....
  9012 ms  0x6730 PR_Close()
  9012 ms  0x6730 fd:0x7f87bfaea1f0
  9012 ms     | 0x6730 PK11_Encrypt()
  9012 ms     | 0x6730 symkey:0x7f87d1625a80
  9037 ms  SECKEY_ECParamsToKeySize()
  9037 ms  0x6730 ret:0x100
  9037 ms  0x6730 SECKEY_CreateECPrivateKey()
  9037 ms  0x6730 cx:0x7f87d6fc8b28
  9038 ms     | 0x6730 EC_ValidatePublicKey()
  9043 ms     | 0x6730 ret:0x0
  9043 ms  0x6730 ret:0x7f87d69bc820::7f87d69bc820  70 d4 61 d1                                      p.a.
  9043 ms  0x6730 PK11_PubDeriveWithKDF()
  9043 ms  0x6730 seckey:0x7f87d69bc820
  9043 ms     | 0x6730 EC_ValidatePublicKey()
  9045 ms     | 0x6730 ret:0x0
  9047 ms  0x6730 ret:0x7f87d0fb0180
  9047 ms  0x6730 PK11_DeriveWithFlags()
  9047 ms  0x6730 basekey:0x7f87d0fb0180
  9047 ms     | 0x6730 PK11_DeriveWithTemplate()
  9047 ms  0x6730 ret:0x7f87d1624f80
  9047 ms  0x6730 PK11_Derive()
  9047 ms  0x6730 basekey:0x7f87d1624f80
  9047 ms     | 0x6730 PK11_DeriveWithTemplate()
  9047 ms  0x6730 ret:0x7f87d08eff00
  9047 ms  0x6730 SECKEY_DestroyPrivateKey()
  9047 ms  0x6730 privk:0x7f87d69bc820::7f87d69bc820  70 d4 61 d1                                      p.a.
  9047 ms  0x6730 privk:0x7f87d69bc820::7f87d69bc820  e5 e5 e5 e5                                      ....
  9047 ms  0x6730 PK11_Encrypt()
  9047 ms  0x6730 symkey:0x7f87d1625f00
  9051 ms  0x6730 SSL_AuthCertificateComplete()
  9051 ms  0x6730 fd:0x7f87d6a12af0
  9051 ms  0x6730 err:0x0
  9051 ms  0x6730 PK11_Encrypt()
  9051 ms  0x6730 symkey:0x7f87d1625f00
  9051 ms  SECKEY_ECParamsToKeySize()
  9051 ms  0x6730 ret:0x100
  9051 ms  0x6730 SECKEY_CreateECPrivateKey()
  9051 ms  0x6730 cx:0x7f87d6fc6c48
  9052 ms     | 0x6730 EC_ValidatePublicKey()
  9053 ms     | 0x6730 ret:0x0
  9053 ms  0x6730 ret:0x7f87d6d10020::7f87d6d10020  70 d4 61 d1                                      p.a.
  9053 ms  0x6730 PK11_PubDeriveWithKDF()
  9053 ms  0x6730 seckey:0x7f87d6d10020
  9053 ms     | 0x6730 EC_ValidatePublicKey()
  9055 ms     | 0x6730 ret:0x0
  9060 ms  0x6730 ret:0x7f87d0fb0180
  9060 ms  0x6730 PK11_DeriveWithFlags()
  9060 ms  0x6730 basekey:0x7f87d0fb0180
  9061 ms     | 0x6730 PK11_DeriveWithTemplate()
  9061 ms  0x6730 ret:0x7f87d1d48100
  9061 ms  0x6730 PK11_Derive()
  9061 ms  0x6730 basekey:0x7f87d1d48100
  9061 ms     | 0x6730 PK11_DeriveWithTemplate()
  9061 ms  0x6730 ret:0x7f87d1625a00
  9061 ms  0x6730 SECKEY_DestroyPrivateKey()
  9061 ms  0x6730 privk:0x7f87d6d10020::7f87d6d10020  70 d4 61 d1                                      p.a.
  9061 ms  0x6730 privk:0x7f87d6d10020::7f87d6d10020  e5 e5 e5 e5                                      ....
  9061 ms  0x6730 PK11_Encrypt()
  9061 ms  0x6730 symkey:0x7f87d1d48580
  9065 ms  0x6730 PK11_Encrypt()
  9065 ms  0x6730 symkey:0x7f87d1d48580
  9120 ms  0x6730 SECKEY_DestroyPrivateKey()
  9120 ms  0x6730 privk:0x7f87da5c6020::7f87da5c6020  40 97 13 d2                                      @...
  9120 ms  0x6730 privk:0x7f87da5c6020::7f87da5c6020  e5 e5 e5 e5                                      ....
  9120 ms  0x6730 SECKEY_DestroyPrivateKey()
  9120 ms  0x6730 privk:0x7f87da5c2820::7f87da5c2820  60 95 13 d2                                      `...
  9121 ms  0x6730 privk:0x7f87da5c2820::7f87da5c2820  e5 e5 e5 e5                                      ....
  9121 ms  0x6730 PK11_Encrypt()
  9121 ms  0x6730 symkey:0x7f87d0fb0200
  9136 ms  SECKEY_ECParamsToKeySize()
  9137 ms  0x6730 ret:0x100
  9137 ms  0x6730 SECKEY_CreateECPrivateKey()
  9137 ms  0x6730 cx:0x7f87d6fc8cc8
  9137 ms     | 0x6730 EC_ValidatePublicKey()
  9139 ms     | 0x6730 ret:0x0
  9139 ms  0x6730 ret:0x7f87d708a820::7f87d708a820  60 d5 61 d1                                      `.a.
  9139 ms  0x6730 PK11_PubDeriveWithKDF()
  9139 ms  0x6730 seckey:0x7f87d708a820
  9139 ms     | 0x6730 EC_ValidatePublicKey()
  9140 ms     | 0x6730 ret:0x0
  9142 ms  0x6730 ret:0x7f87d0fb0180
  9142 ms  0x6730 PK11_DeriveWithFlags()
  9142 ms  0x6730 basekey:0x7f87d0fb0180
  9142 ms     | 0x6730 PK11_DeriveWithTemplate()
  9142 ms  0x6730 ret:0x7f87bfabf380
  9142 ms  0x6730 PK11_Derive()
  9142 ms  0x6730 basekey:0x7f87bfabf380
  9142 ms     | 0x6730 PK11_DeriveWithTemplate()
  9142 ms  0x6730 ret:0x7f87d1d48200
  9142 ms  0x6730 SECKEY_DestroyPrivateKey()
  9142 ms  0x6730 privk:0x7f87d708a820::7f87d708a820  60 d5 61 d1                                      `.a.
  9142 ms  0x6730 privk:0x7f87d708a820::7f87d708a820  e5 e5 e5 e5                                      ....
  9142 ms  0x6730 PK11_Encrypt()
  9142 ms  0x6730 symkey:0x7f87d08f6480
  9155 ms  SECKEY_ECParamsToKeySize()
  9155 ms  0x6730 ret:0x100
  9155 ms  0x6730 SECKEY_CreateECPrivateKey()
  9155 ms  0x6730 cx:0x7f87d6fc8e68
  9155 ms     | 0x6730 EC_ValidatePublicKey()
  9157 ms     | 0x6730 ret:0x0
  9157 ms  0x6730 ret:0x7f87d7096820::7f87d7096820  40 c2 d3 d1                                      @...
  9157 ms  0x6730 PK11_PubDeriveWithKDF()
  9157 ms  0x6730 seckey:0x7f87d7096820
  9157 ms     | 0x6730 EC_ValidatePublicKey()
  9158 ms     | 0x6730 ret:0x0
  9160 ms  0x6730 ret:0x7f87d0fb0180
  9160 ms  0x6730 PK11_DeriveWithFlags()
  9160 ms  0x6730 basekey:0x7f87d0fb0180
  9160 ms     | 0x6730 PK11_DeriveWithTemplate()
  9160 ms  0x6730 ret:0x7f87bf7e9780
  9160 ms  0x6730 PK11_Derive()
  9160 ms  0x6730 basekey:0x7f87bf7e9780
  9160 ms     | 0x6730 PK11_DeriveWithTemplate()
  9160 ms  0x6730 ret:0x7f87d0c54400
  9160 ms  0x6730 SECKEY_DestroyPrivateKey()
  9160 ms  0x6730 privk:0x7f87d7096820::7f87d7096820  40 c2 d3 d1                                      @...
  9160 ms  0x6730 privk:0x7f87d7096820::7f87d7096820  e5 e5 e5 e5                                      ....
  9160 ms  0x6730 PK11_Encrypt()
  9160 ms  0x6730 symkey:0x7f87bf7e9f00
  9167 ms  0x6730 SSL_AuthCertificateComplete()
  9167 ms  0x6730 fd:0x7f87d65f08e0
  9167 ms  0x6730 err:0x0
  9241 ms  0x6730 SECKEY_DestroyPrivateKey()
  9241 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  80 b3 c9 d0                                      ....
  9241 ms  0x6730 privk:0x7f87d6916820::7f87d6916820  e5 e5 e5 e5                                      ....
  9241 ms  0x6730 SECKEY_DestroyPrivateKey()
  9241 ms  0x6730 privk:0x7f87d6910820::7f87d6910820  70 ce 86 bf                                      p...
  9242 ms  0x6730 privk:0x7f87d6910820::7f87d6910820  e5 e5 e5 e5                                      ....
  9242 ms  0x6730 PR_Close()
  9242 ms  0x6730 fd:0x7f87d69568e0
  9242 ms     | 0x6730 PK11_Encrypt()
  9242 ms     | 0x6730 symkey:0x7f87d08f6700
  9280 ms  0x6730 SECKEY_DestroyPrivateKey()
  9280 ms  0x6730 privk:0x7f87d69ba820::7f87d69ba820  d0 e3 cd d0                                      ....
  9280 ms  0x6730 privk:0x7f87d69ba820::7f87d69ba820  e5 e5 e5 e5                                      ....
  9280 ms  0x6730 SECKEY_DestroyPrivateKey()
  9280 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  d0 b3 c9 d0                                      ....
  9280 ms  0x6730 privk:0x7f87d69a7020::7f87d69a7020  e5 e5 e5 e5                                      ....
  9281 ms  0x6730 PR_Close()
  9281 ms  0x6730 fd:0x7f87d6a120d0
  9281 ms     | 0x6730 PK11_Encrypt()
  9281 ms     | 0x6730 symkey:0x7f87d0fb1700
  9289 ms  0x6730 SECKEY_DestroyPrivateKey()
  9289 ms  0x6730 privk:0x7f87d6921020::7f87d6921020  d0 b8 c9 d0                                      ....
  9289 ms  0x6730 privk:0x7f87d6921020::7f87d6921020  e5 e5 e5 e5                                      ....
  9289 ms  0x6730 SECKEY_DestroyPrivateKey()
  9289 ms  0x6730 privk:0x7f87d691d020::7f87d691d020  f0 b6 c9 d0                                      ....
  9290 ms  0x6730 privk:0x7f87d691d020::7f87d691d020  e5 e5 e5 e5                                      ....
  9291 ms  0x6730 SECKEY_DestroyPrivateKey()
  9291 ms  0x6730 privk:0x7f87da5c8820::7f87da5c8820  40 c2 19 d2                                      @...
  9292 ms  0x6730 privk:0x7f87da5c8820::7f87da5c8820  e5 e5 e5 e5                                      ....
  9292 ms  0x6730 SECKEY_DestroyPrivateKey()
  9292 ms  0x6730 privk:0x7f87d7091020::7f87d7091020  c0 fe ff d0                                      ....
  9292 ms  0x6730 privk:0x7f87d7091020::7f87d7091020  e5 e5 e5 e5                                      ....
  9292 ms  0x6730 PR_Close()
  9292 ms  0x6730 fd:0x7f87d6a12310
  9292 ms     | 0x6730 PK11_Encrypt()
  9292 ms     | 0x6730 symkey:0x7f87d0fb1b80
           /* TID 0x6738 */
  9372 ms  0x6738 PR_Close()
  9372 ms  0x6738 fd:0x7f87bfa816d0
  9372 ms  0x6738 PR_Close()
  9372 ms  0x6738 fd:0x7f87bfa81ac0
  9387 ms  0x6738 PR_Close()
  9387 ms  0x6738 fd:0x7f87bfa816d0
  9387 ms  0x6738 PR_Close()
  9387 ms  0x6738 fd:0x7f87bfa81ac0
  9387 ms  0x6738 PR_Close()
  9387 ms  0x6738 fd:0x7f87d0c0e940
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d28fe670
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d2dc45b0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d2dc4670
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d2dc49a0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b3e1c0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b69250
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b69340
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b9d400
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b9d8e0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3b9df10
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3bffb50
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3bffca0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3bffd00
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d3bfff10
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d55b3190
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d55b31f0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d55b3250
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d5ebc910
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d5ebca90
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563070
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563190
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563670
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563820
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563ac0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6563b20
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d65f0910
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d69568e0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6956ca0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6956eb0
  9388 ms  0x6738 PR_Close()
  9388 ms  0x6738 fd:0x7f87d6a12040
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a120a0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12100
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12310
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12370
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a123d0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12430
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12490
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a124f0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a125b0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a12a60
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6a68bb0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6adb970
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6adbcd0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6c13040
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe160
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe220
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe280
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe2e0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe370
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe430
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe4f0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe5b0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe7f0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6dfe9d0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e310
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e3a0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e400
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e460
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e5e0
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1e820
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1ea60
  9389 ms  0x6738 PR_Close()
  9389 ms  0x6738 fd:0x7f87d6f1ed30
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f1ee50
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b100
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b190
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b1f0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b790
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b7f0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4b9a0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4ba60
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bac0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bb20
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bbb0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bc10
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bcd0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bd30
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bf10
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f4bfa0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f84190
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f842b0
  9390 ms  0x6738 PR_Close()
  9390 ms  0x6738 fd:0x7f87d6f846a0
           /* TID 0x6730 */
  9396 ms  0x6730 SECKEY_DestroyPrivateKey()
  9396 ms  0x6730 privk:0x7f87dabf0820::7f87dabf0820  20 74 44 d2                                       tD.
  9396 ms  0x6730 privk:0x7f87dabf0820::7f87dabf0820  e5 e5 e5 e5                                      ....
  9396 ms  0x6730 SECKEY_DestroyPrivateKey()
  9396 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  d0 5d 1e d2                                      .]..
  9396 ms  0x6730 privk:0x7f87dabec820::7f87dabec820  e5 e5 e5 e5                                      ....
  9396 ms  0x6730 PR_Close()
  9396 ms  0x6730 fd:0x7f87d6a12af0
  9396 ms     | 0x6730 PK11_Encrypt()
  9396 ms     | 0x6730 symkey:0x7f87d1625f00
  9397 ms  0x6730 SECKEY_DestroyPrivateKey()
  9397 ms  0x6730 privk:0x7f87da5bf820::7f87da5bf820  20 94 13 d2                                       ...
  9397 ms  0x6730 privk:0x7f87da5bf820::7f87da5bf820  e5 e5 e5 e5                                      ....
  9397 ms  0x6730 SECKEY_DestroyPrivateKey()
  9397 ms  0x6730 privk:0x7f87da5ba820::7f87da5ba820  f0 91 13 d2                                      ....
  9397 ms  0x6730 privk:0x7f87da5ba820::7f87da5ba820  e5 e5 e5 e5                                      ....
  9418 ms  0x6730 SECKEY_DestroyPrivateKey()
  9418 ms  0x6730 privk:0x7f87da5d2020::7f87da5d2020  60 cf 19 d2                                      `...
  9418 ms  0x6730 privk:0x7f87da5d2020::7f87da5d2020  e5 e5 e5 e5                                      ....
  9419 ms  0x6730 SECKEY_DestroyPrivateKey()
  9419 ms  0x6730 privk:0x7f87da5cc020::7f87da5cc020  b0 c5 19 d2                                      ....
  9419 ms  0x6730 privk:0x7f87da5cc020::7f87da5cc020  e5 e5 e5 e5                                      ....
           /* TID 0x6738 */
  9479 ms  0x6738 PR_Close()
  9479 ms  0x6738 fd:0x7f87bfa816d0
           /* TID 0x6730 */
  9510 ms  0x6730 SECKEY_DestroyPrivateKey()
  9510 ms  0x6730 privk:0x7f87da5b6020::7f87da5b6020  00 91 13 d2                                      ....
  9510 ms  0x6730 privk:0x7f87da5b6020::7f87da5b6020  e5 e5 e5 e5                                      ....
  9510 ms  0x6730 SECKEY_DestroyPrivateKey()
  9510 ms  0x6730 privk:0x7f87d28b9020::7f87d28b9020  d0 3d b2 d0                                      .=..
  9511 ms  0x6730 privk:0x7f87d28b9020::7f87d28b9020  e5 e5 e5 e5                                      ....
  9670 ms  0x6730 PK11_Encrypt()
  9670 ms  0x6730 symkey:0x7f87d07f8a00
  9681 ms  0x6730 PK11_Encrypt()
  9681 ms  0x6730 symkey:0x7f87d07f8a00
  9693 ms  0x6730 PK11_Encrypt()
  9693 ms  0x6730 symkey:0x7f87d07f8a00
  9696 ms  0x6730 PK11_Encrypt()
  9696 ms  0x6730 symkey:0x7f87d07f8a00
           /* TID 0x6738 */
  9757 ms  0x6738 PR_Close()
  9757 ms  0x6738 fd:0x7f87d0c503a0
  9847 ms  0x6738 PR_Close()
  9847 ms  0x6738 fd:0x7f87d0c50850
           /* TID 0x6730 */
  9872 ms  0x6730 PK11_Encrypt()
  9872 ms  0x6730 symkey:0x7f87d3ba1d80
  9882 ms  0x6730 PK11_Encrypt()
  9882 ms  0x6730 symkey:0x7f87d3ba1d80
  9883 ms  0x6730 PK11_Encrypt()
  9883 ms  0x6730 symkey:0x7f87d3ba1d80
           /* TID 0x6738 */
  9914 ms  0x6738 PR_Close()
  9914 ms  0x6738 fd:0x7f87bfa81ac0
  9954 ms  0x6738 PR_Close()
  9954 ms  0x6738 fd:0x7f87bfa81ac0
  9997 ms  0x6738 PR_Close()
  9997 ms  0x6738 fd:0x7f87bfa81ac0
 10153 ms  0x6738 PR_Close()
 10153 ms  0x6738 fd:0x7f87d07f9550
           /* TID 0x6730 */
 10196 ms  0x6730 SSL_ImportFD()
 10196 ms  0x6730 ret:0x7f87d2dc47f0
 10196 ms  0x6730 SSL_AuthCertificateHook()
 10196 ms  0x6730 fd:0x7f87d2dc47f0
 10196 ms  0x6730 ret:0x0
 10196 ms  0x6730 PR_Connect()
 10196 ms  0x6730 fd:0x7f87d2dc47f0
 10196 ms  0x6730 SSL_ImportFD()
 10196 ms  0x6730 ret:0x7f87d3b3e370
 10196 ms  0x6730 SSL_AuthCertificateHook()
 10196 ms  0x6730 fd:0x7f87d3b3e370
 10196 ms  0x6730 ret:0x0
 10196 ms  0x6730 PR_Connect()
 10196 ms  0x6730 fd:0x7f87d3b3e370
 10200 ms  0x6730 SSL_ImportFD()
 10200 ms  0x6730 ret:0x7f87d3bffd00
 10200 ms  0x6730 SSL_AuthCertificateHook()
 10200 ms  0x6730 fd:0x7f87d3bffd00
 10200 ms  0x6730 ret:0x0
 10200 ms  0x6730 PR_Connect()
 10200 ms  0x6730 fd:0x7f87d3bffd00
 10200 ms  0x6730 SSL_ImportFD()
 10200 ms  0x6730 ret:0x7f87d6a12a00
 10200 ms  0x6730 SSL_AuthCertificateHook()
 10200 ms  0x6730 fd:0x7f87d6a12a00
 10200 ms  0x6730 ret:0x0
 10200 ms  0x6730 PR_Connect()
 10200 ms  0x6730 fd:0x7f87d6a12a00
 10200 ms  0x6730 SSL_ImportFD()
 10200 ms  0x6730 ret:0x7f87d0c50970
 10200 ms  0x6730 SSL_AuthCertificateHook()
 10200 ms  0x6730 fd:0x7f87d0c50970
 10200 ms  0x6730 ret:0x0
 10200 ms  0x6730 PR_Connect()
 10200 ms  0x6730 fd:0x7f87d0c50970
           /* TID 0x6738 */
 10328 ms  0x6738 PR_Close()
 10328 ms  0x6738 fd:0x7f87bfaea340
 10331 ms  0x6738 PR_Close()
 10331 ms  0x6738 fd:0x7f87bfaea340
 10338 ms  0x6738 PR_Close()
 10338 ms  0x6738 fd:0x7f87bfaea340
           /* TID 0x6730 */
 10353 ms  0x6730 SSL_ImportFD()
 10353 ms  0x6730 ret:0x7f87d0c503a0
 10353 ms  0x6730 SSL_AuthCertificateHook()
 10353 ms  0x6730 fd:0x7f87d0c503a0
 10353 ms  0x6730 ret:0x0
 10353 ms  0x6730 PR_Connect()
 10353 ms  0x6730 fd:0x7f87d0c503a0
 10447 ms  0x6730 SSL_ImportFD()
 10447 ms  0x6730 ret:0x7f87d3bffe20
 10447 ms  0x6730 SSL_AuthCertificateHook()
 10447 ms  0x6730 fd:0x7f87d3bffe20
 10447 ms  0x6730 ret:0x0
 10447 ms  0x6730 PR_Connect()
 10447 ms  0x6730 fd:0x7f87d3bffe20
 10447 ms  0x6730 SSL_ImportFD()
 10448 ms  0x6730 ret:0x7f87d0c0e940
 10448 ms  0x6730 SSL_AuthCertificateHook()
 10448 ms  0x6730 fd:0x7f87d0c0e940
 10448 ms  0x6730 ret:0x0
 10448 ms  0x6730 PR_Connect()
 10448 ms  0x6730 fd:0x7f87d0c0e940
 10450 ms  0x6730 SSL_ImportFD()
 10450 ms  0x6730 ret:0x7f87d6dfe5b0
 10450 ms  0x6730 SSL_AuthCertificateHook()
 10450 ms  0x6730 fd:0x7f87d6dfe5b0
 10451 ms  0x6730 ret:0x0
 10451 ms  0x6730 PR_Connect()
 10451 ms  0x6730 fd:0x7f87d6dfe5b0
 10451 ms  0x6730 SSL_ImportFD()
 10451 ms  0x6730 ret:0x7f87d6dfe430
 10451 ms  0x6730 SSL_AuthCertificateHook()
 10451 ms  0x6730 fd:0x7f87d6dfe430
 10451 ms  0x6730 ret:0x0
 10451 ms  0x6730 PR_Connect()
 10451 ms  0x6730 fd:0x7f87d6dfe430
 10451 ms  0x6730 SSL_ImportFD()
 10451 ms  0x6730 ret:0x7f87d6dfe7f0
 10451 ms  0x6730 SSL_AuthCertificateHook()
 10451 ms  0x6730 fd:0x7f87d6dfe7f0
 10451 ms  0x6730 ret:0x0
 10452 ms  0x6730 PR_Connect()
 10452 ms  0x6730 fd:0x7f87d6dfe7f0
 10524 ms  0x6730 SECKEY_CreateECPrivateKey()
 10524 ms  0x6730 cx:0x7f87d6fc7e28
 10526 ms     | 0x6730 EC_ValidatePublicKey()
 10526 ms     | 0x6730 ret:0x0
 10526 ms  0x6730 ret:0x7f87d559b020::7f87d559b020  00 e1 cd d0                                      ....
 10526 ms  0x6730 SECKEY_CreateECPrivateKey()
 10526 ms  0x6730 cx:0x7f87d6fc7e28
 10529 ms     | 0x6730 EC_ValidatePublicKey()
 10535 ms     | 0x6730 ret:0x0
 10535 ms  0x6730 ret:0x7f87d6919820::7f87d6919820  a0 b1 c9 d0                                      ....
 10538 ms  0x6730 SECKEY_CreateECPrivateKey()
 10538 ms  0x6730 cx:0x7f87d6fc5f48
 10539 ms     | 0x6730 EC_ValidatePublicKey()
 10539 ms     | 0x6730 ret:0x0
 10539 ms  0x6730 ret:0x7f87d691e020::7f87d691e020  60 ea ff d0                                      `...
 10539 ms  0x6730 SECKEY_CreateECPrivateKey()
 10539 ms  0x6730 cx:0x7f87d6fc5f48
 10541 ms     | 0x6730 EC_ValidatePublicKey()
 10546 ms     | 0x6730 ret:0x0
 10546 ms  0x6730 ret:0x7f87d69a6020::7f87d69a6020  10 d5 61 d1                                      ..a.
 10547 ms  0x6730 SECKEY_CreateECPrivateKey()
 10547 ms  0x6730 cx:0x7f87d6fc5da8
 10548 ms     | 0x6730 EC_ValidatePublicKey()
 10548 ms     | 0x6730 ret:0x0
 10548 ms  0x6730 ret:0x7f87d69b0020::7f87d69b0020  f0 d6 61 d1                                      ..a.
 10548 ms  0x6730 SECKEY_CreateECPrivateKey()
 10548 ms  0x6730 cx:0x7f87d6fc5da8
 10549 ms     | 0x6730 EC_ValidatePublicKey()
 10552 ms     | 0x6730 ret:0x0
 10552 ms  0x6730 ret:0x7f87d6d10020::7f87d6d10020  e0 c2 d3 d1                                      ....
 10552 ms  0x6730 SECKEY_CreateECPrivateKey()
 10552 ms  0x6730 cx:0x7f87d6fc8308
 10553 ms     | 0x6730 EC_ValidatePublicKey()
 10553 ms     | 0x6730 ret:0x0
 10553 ms  0x6730 ret:0x7f87d7091020::7f87d7091020  a0 c6 d3 d1                                      ....
 10553 ms  0x6730 SECKEY_CreateECPrivateKey()
 10553 ms  0x6730 cx:0x7f87d6fc8308
 10554 ms     | 0x6730 EC_ValidatePublicKey()
 10556 ms     | 0x6730 ret:0x0
 10556 ms  0x6730 ret:0x7f87d7097820::7f87d7097820  a0 cb d3 d1                                      ....
 10557 ms  0x6730 SECKEY_CreateECPrivateKey()
 10557 ms  0x6730 cx:0x7f87d6fc8168
 10558 ms     | 0x6730 EC_ValidatePublicKey()
 10558 ms     | 0x6730 ret:0x0
 10558 ms  0x6730 ret:0x7f87d7188820::7f87d7188820  c0 ce d3 d1                                      ....
 10558 ms  0x6730 SECKEY_CreateECPrivateKey()
 10558 ms  0x6730 cx:0x7f87d6fc8168
 10559 ms     | 0x6730 EC_ValidatePublicKey()
 10561 ms     | 0x6730 ret:0x0
 10561 ms  0x6730 ret:0x7f87d718b020::7f87d718b020  40 22 db d1                                      @"..
 10565 ms  0x6730 SECKEY_CreateECPrivateKey()
 10565 ms  0x6730 cx:0x7f87d6fc8b28
 10565 ms     | 0x6730 EC_ValidatePublicKey()
 10565 ms     | 0x6730 ret:0x0
 10565 ms  0x6730 ret:0x7f87d718e020::7f87d718e020  20 29 db d1                                       )..
 10566 ms  0x6730 SECKEY_CreateECPrivateKey()
 10566 ms  0x6730 cx:0x7f87d6fc8b28
 10566 ms     | 0x6730 EC_ValidatePublicKey()
 10568 ms     | 0x6730 ret:0x0
 10568 ms  0x6730 ret:0x7f87d7190020::7f87d7190020  30 2d db d1                                      0-..
           /* TID 0x6738 */
 10721 ms  0x6738 PR_Close()
 10721 ms  0x6738 fd:0x7f87d6563070
           /* TID 0x6730 */
 10776 ms  0x6730 SECKEY_CreateECPrivateKey()
 10776 ms  0x6730 cx:0x7f87dad6caa8
 10778 ms     | 0x6730 EC_ValidatePublicKey()
 10778 ms     | 0x6730 ret:0x0
 10779 ms  0x6730 ret:0x7f87d719b020::7f87d719b020  e0 5c 1e d2                                      .\..
 10779 ms  0x6730 SECKEY_CreateECPrivateKey()
 10779 ms  0x6730 cx:0x7f87dad6caa8
 10781 ms     | 0x6730 EC_ValidatePublicKey()
 10787 ms     | 0x6730 ret:0x0
 10787 ms  0x6730 ret:0x7f87d9a2f020::7f87d9a2f020  d0 78 44 d2                                      .xD.
 10793 ms  SECKEY_ECParamsToKeySize()
 10793 ms  0x6730 ret:0xff
 10793 ms  0x6730 SECKEY_CreateECPrivateKey()
 10793 ms  0x6730 cx:0x7f87d6fc8b28
 10794 ms     | 0x6730 EC_ValidatePublicKey()
 10794 ms     | 0x6730 ret:0x0
 10794 ms  0x6730 ret:0x7f87da5b7820::7f87da5b7820  90 47 4f d2                                      .GO.
 10795 ms  0x6730 PK11_PubDeriveWithKDF()
 10795 ms  0x6730 seckey:0x7f87da5b7820
 10795 ms     | 0x6730 EC_ValidatePublicKey()
 10795 ms     | 0x6730 ret:0x0
 10796 ms  0x6730 ret:0x7f87d08eff00
 10796 ms  0x6730 PK11_DeriveWithFlags()
 10796 ms  0x6730 basekey:0x7f87d08eff00
 10796 ms     | 0x6730 PK11_DeriveWithTemplate()
 10796 ms  0x6730 ret:0x7f87d1624f80
 10796 ms  0x6730 PK11_Derive()
 10796 ms  0x6730 basekey:0x7f87d1624f80
 10796 ms     | 0x6730 PK11_DeriveWithTemplate()
 10796 ms  0x6730 ret:0x7f87d0c54900
 10796 ms  0x6730 SECKEY_DestroyPrivateKey()
 10796 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  90 47 4f d2                                      .GO.
 10797 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  e5 e5 e5 e5                                      ....
 10797 ms  0x6730 PK11_Encrypt()
 10797 ms  0x6730 symkey:0x7f87d16df380
 10798 ms  0x6730 SECKEY_CreateECPrivateKey()
 10798 ms  0x6730 cx:0x7f87dad6c428
 10799 ms     | 0x6730 EC_ValidatePublicKey()
 10799 ms     | 0x6730 ret:0x0
 10799 ms  0x6730 ret:0x7f87da5b7820::7f87da5b7820  40 47 4f d2                                      @GO.
 10800 ms  0x6730 SECKEY_CreateECPrivateKey()
 10800 ms  0x6730 cx:0x7f87dad6c428
 10801 ms     | 0x6730 EC_ValidatePublicKey()
 10804 ms     | 0x6730 ret:0x0
 10804 ms  0x6730 ret:0x7f87da5bb020::7f87da5bb020  40 4c 4f d2                                      @LO.
 10804 ms  0x6730 SECKEY_CreateECPrivateKey()
 10804 ms  0x6730 cx:0x7f87dad6bda8
 10805 ms     | 0x6730 EC_ValidatePublicKey()
 10805 ms     | 0x6730 ret:0x0
 10805 ms  0x6730 ret:0x7f87da5c1020::7f87da5c1020  d0 4d 4f d2                                      .MO.
 10805 ms  0x6730 SECKEY_CreateECPrivateKey()
 10805 ms  0x6730 cx:0x7f87dad6bda8
 10806 ms     | 0x6730 EC_ValidatePublicKey()
 10809 ms     | 0x6730 ret:0x0
 10809 ms  0x6730 ret:0x7f87da5c5020::7f87da5c5020  b0 4f 4f d2                                      .OO.
 10809 ms  0x6730 SECKEY_CreateECPrivateKey()
 10809 ms  0x6730 cx:0x7f87dad6c908
 10810 ms     | 0x6730 EC_ValidatePublicKey()
 10810 ms     | 0x6730 ret:0x0
 10810 ms  0x6730 ret:0x7f87da5c9820::7f87da5c9820  40 f2 4f d2                                      @.O.
 10810 ms  0x6730 SECKEY_CreateECPrivateKey()
 10810 ms  0x6730 cx:0x7f87dad6c908
 10811 ms     | 0x6730 EC_ValidatePublicKey()
 10813 ms     | 0x6730 ret:0x0
 10813 ms  0x6730 ret:0x7f87da5cc820::7f87da5cc820  20 f4 4f d2                                       .O.
 10814 ms  0x6730 SECKEY_CreateECPrivateKey()
 10814 ms  0x6730 cx:0x7f87dad6c768
 10814 ms     | 0x6730 EC_ValidatePublicKey()
 10814 ms     | 0x6730 ret:0x0
 10814 ms  0x6730 ret:0x7f87dabdf020::7f87dabdf020  60 f5 4f d2                                      `.O.
 10814 ms  0x6730 SECKEY_CreateECPrivateKey()
 10814 ms  0x6730 cx:0x7f87dad6c768
 10815 ms     | 0x6730 EC_ValidatePublicKey()
 10817 ms     | 0x6730 ret:0x0
 10817 ms  0x6730 ret:0x7f87dabe8020::7f87dabe8020  40 f7 4f d2                                      @.O.
 10862 ms  SECKEY_ECParamsToKeySize()
 10862 ms  0x6730 ret:0x100
 10862 ms  0x6730 SECKEY_CreateECPrivateKey()
 10862 ms  0x6730 cx:0x7f87d6fc7e28
 10863 ms     | 0x6730 EC_ValidatePublicKey()
 10864 ms     | 0x6730 ret:0x0
 10865 ms  0x6730 ret:0x7f87dabef020::7f87dabef020  b0 fa 4f d2                                      ..O.
 10865 ms  0x6730 PK11_PubDeriveWithKDF()
 10865 ms  0x6730 seckey:0x7f87dabef020
 10865 ms     | 0x6730 EC_ValidatePublicKey()
 10866 ms     | 0x6730 ret:0x0
 10867 ms  0x6730 ret:0x7f87d08eff00
 10867 ms  0x6730 PK11_DeriveWithFlags()
 10867 ms  0x6730 basekey:0x7f87d08eff00
 10868 ms     | 0x6730 PK11_DeriveWithTemplate()
 10868 ms  0x6730 ret:0x7f87d0fb1a80
 10868 ms  0x6730 PK11_Derive()
 10868 ms  0x6730 basekey:0x7f87d0fb1a80
 10868 ms     | 0x6730 PK11_DeriveWithTemplate()
 10868 ms  0x6730 ret:0x7f87d0fb1b00
 10868 ms  0x6730 SECKEY_DestroyPrivateKey()
 10868 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  b0 fa 4f d2                                      ..O.
 10868 ms  0x6730 privk:0x7f87dabef020::7f87dabef020  e5 e5 e5 e5                                      ....
 10868 ms  0x6730 PK11_Encrypt()
 10868 ms  0x6730 symkey:0x7f87d0fb1c00
 10868 ms  0x6730 SSL_AuthCertificateComplete()
 10868 ms  0x6730 fd:0x7f87d3bffd00
 10868 ms  0x6730 err:0x0
 10869 ms  0x6730 PK11_Encrypt()
 10869 ms  0x6730 symkey:0x7f87d0fb1c00
 10869 ms  0x6730 PK11_Encrypt()
 10869 ms  0x6730 symkey:0x7f87d0fb1c00
           /* TID 0x67dd */
 10875 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10875 ms  0x67dd ret:0x0
           /* TID 0x6738 */
 10875 ms  0x6738 PR_Close()
 10875 ms  0x6738 fd:0x7f87d6f89ac0
           /* TID 0x6730 */
 10875 ms  0x6730 SSL_AuthCertificateComplete()
 10875 ms  0x6730 fd:0x7f87d0c503a0
 10875 ms  0x6730 err:0x0
 10875 ms  0x6730 PK11_Encrypt()
 10875 ms  0x6730 symkey:0x7f87d16df380
 10884 ms  SECKEY_ECParamsToKeySize()
 10884 ms  0x6730 ret:0x100
 10884 ms  0x6730 SECKEY_CreateECPrivateKey()
 10884 ms  0x6730 cx:0x7f87d6fc5f48
 10885 ms     | 0x6730 EC_ValidatePublicKey()
 10887 ms     | 0x6730 ret:0x0
 10887 ms  0x6730 ret:0x7f87d9ad4020::7f87d9ad4020  10 fa 4f d2                                      ..O.
 10887 ms  0x6730 PK11_PubDeriveWithKDF()
 10887 ms  0x6730 seckey:0x7f87d9ad4020
 10887 ms     | 0x6730 EC_ValidatePublicKey()
 10890 ms     | 0x6730 ret:0x0
 10891 ms  0x6730 ret:0x7f87d08eff00
 10891 ms  0x6730 PK11_DeriveWithFlags()
 10891 ms  0x6730 basekey:0x7f87d08eff00
 10891 ms     | 0x6730 PK11_DeriveWithTemplate()
 10891 ms  0x6730 ret:0x7f87d0fb1480
 10891 ms  0x6730 PK11_Derive()
 10891 ms  0x6730 basekey:0x7f87d0fb1480
 10891 ms     | 0x6730 PK11_DeriveWithTemplate()
 10891 ms  0x6730 ret:0x7f87d08f6f80
 10891 ms  0x6730 SECKEY_DestroyPrivateKey()
 10891 ms  0x6730 privk:0x7f87d9ad4020::7f87d9ad4020  10 fa 4f d2                                      ..O.
 10891 ms  0x6730 privk:0x7f87d9ad4020::7f87d9ad4020  e5 e5 e5 e5                                      ....
 10892 ms  0x6730 PK11_Encrypt()
 10892 ms  0x6730 symkey:0x7f87d0fb1800
 10892 ms  0x6730 SSL_AuthCertificateComplete()
 10892 ms  0x6730 fd:0x7f87d3b3e370
 10892 ms  0x6730 err:0x0
 10892 ms  0x6730 PK11_Encrypt()
 10892 ms  0x6730 symkey:0x7f87d0fb1800
 10893 ms  0x6730 PK11_Encrypt()
 10893 ms  0x6730 symkey:0x7f87d0fb1800
 10894 ms  SECKEY_ECParamsToKeySize()
 10894 ms  0x6730 ret:0x100
 10894 ms  0x6730 SECKEY_CreateECPrivateKey()
 10894 ms  0x6730 cx:0x7f87d6fc5da8
 10895 ms     | 0x6730 EC_ValidatePublicKey()
 10897 ms     | 0x6730 ret:0x0
 10897 ms  0x6730 ret:0x7f87dac93820::7f87dac93820  d0 fd 4f d2                                      ..O.
 10897 ms  0x6730 PK11_PubDeriveWithKDF()
 10897 ms  0x6730 seckey:0x7f87dac93820
 10897 ms     | 0x6730 EC_ValidatePublicKey()
 10898 ms     | 0x6730 ret:0x0
 10900 ms  0x6730 ret:0x7f87d08eff00
 10900 ms  0x6730 PK11_DeriveWithFlags()
 10900 ms  0x6730 basekey:0x7f87d08eff00
 10900 ms     | 0x6730 PK11_DeriveWithTemplate()
 10900 ms  0x6730 ret:0x7f87d08f6380
 10900 ms  0x6730 PK11_Derive()
 10900 ms  0x6730 basekey:0x7f87d08f6380
 10900 ms     | 0x6730 PK11_DeriveWithTemplate()
 10900 ms  0x6730 ret:0x7f87d0fb0180
 10900 ms  0x6730 SECKEY_DestroyPrivateKey()
 10900 ms  0x6730 privk:0x7f87dac93820::7f87dac93820  d0 fd 4f d2                                      ..O.
 10900 ms  0x6730 privk:0x7f87dac93820::7f87dac93820  e5 e5 e5 e5                                      ....
 10900 ms  0x6730 PK11_Encrypt()
 10900 ms  0x6730 symkey:0x7f87d08f6a00
 10901 ms  SECKEY_ECParamsToKeySize()
 10901 ms  0x6730 ret:0x100
 10901 ms  0x6730 SECKEY_CreateECPrivateKey()
 10901 ms  0x6730 cx:0x7f87d6fc8308
 10902 ms     | 0x6730 EC_ValidatePublicKey()
 10904 ms     | 0x6730 ret:0x0
 10904 ms  0x6730 ret:0x7f87d28c9020::7f87d28c9020  b0 ca 19 d2                                      ....
 10904 ms  0x6730 PK11_PubDeriveWithKDF()
 10904 ms  0x6730 seckey:0x7f87d28c9020
 10904 ms     | 0x6730 EC_ValidatePublicKey()
 10905 ms     | 0x6730 ret:0x0
 10907 ms  0x6730 ret:0x7f87d08eff00
 10907 ms  0x6730 PK11_DeriveWithFlags()
 10907 ms  0x6730 basekey:0x7f87d08eff00
 10907 ms     | 0x6730 PK11_DeriveWithTemplate()
 10907 ms  0x6730 ret:0x7f87d08f6e00
 10907 ms  0x6730 PK11_Derive()
 10907 ms  0x6730 basekey:0x7f87d08f6e00
 10907 ms     | 0x6730 PK11_DeriveWithTemplate()
 10907 ms  0x6730 ret:0x7f87f8d17580
 10907 ms  0x6730 SECKEY_DestroyPrivateKey()
 10907 ms  0x6730 privk:0x7f87d28c9020::7f87d28c9020  b0 ca 19 d2                                      ....
 10907 ms  0x6730 privk:0x7f87d28c9020::7f87d28c9020  e5 e5 e5 e5                                      ....
 10907 ms  0x6730 PK11_Encrypt()
 10907 ms  0x6730 symkey:0x7f87d0a95b00
 10908 ms  0x6730 SSL_AuthCertificateComplete()
 10908 ms  0x6730 fd:0x7f87d0c50970
 10908 ms  0x6730 err:0x0
 10908 ms  0x6730 PK11_Encrypt()
 10908 ms  0x6730 symkey:0x7f87d0a95b00
 10909 ms  SECKEY_ECParamsToKeySize()
 10909 ms  0x6730 ret:0x100
 10909 ms  0x6730 SECKEY_CreateECPrivateKey()
 10909 ms  0x6730 cx:0x7f87d6fc8168
 10909 ms     | 0x6730 EC_ValidatePublicKey()
 10911 ms     | 0x6730 ret:0x0
 10911 ms  0x6730 ret:0x7f87d717f820::7f87d717f820  50 cb 19 d2                                      P...
 10911 ms  0x6730 PK11_PubDeriveWithKDF()
 10911 ms  0x6730 seckey:0x7f87d717f820
 10911 ms     | 0x6730 EC_ValidatePublicKey()
 10917 ms     | 0x6730 ret:0x0
 10918 ms  0x6730 ret:0x7f87d08eff00
 10918 ms  0x6730 PK11_DeriveWithFlags()
 10918 ms  0x6730 basekey:0x7f87d08eff00
 10918 ms     | 0x6730 PK11_DeriveWithTemplate()
 10918 ms  0x6730 ret:0x7f87d0c54880
 10918 ms  0x6730 PK11_Derive()
 10918 ms  0x6730 basekey:0x7f87d0c54880
 10918 ms     | 0x6730 PK11_DeriveWithTemplate()
 10918 ms  0x6730 ret:0x7f87d0c54d80
 10918 ms  0x6730 SECKEY_DestroyPrivateKey()
 10918 ms  0x6730 privk:0x7f87d717f820::7f87d717f820  50 cb 19 d2                                      P...
 10918 ms  0x6730 privk:0x7f87d717f820::7f87d717f820  e5 e5 e5 e5                                      ....
 10923 ms  0x6730 PK11_Encrypt()
 10923 ms  0x6730 symkey:0x7f87d0c54980
 10924 ms  0x6730 PK11_Encrypt()
 10924 ms  0x6730 symkey:0x7f87d0fb1c00
 10924 ms  0x6730 SSL_AuthCertificateComplete()
 10924 ms  0x6730 fd:0x7f87d6a12a00
 10924 ms  0x6730 err:0x0
 10924 ms  0x6730 PK11_Encrypt()
 10924 ms  0x6730 symkey:0x7f87d0c54980
 10925 ms  0x6730 PK11_Encrypt()
 10925 ms  0x6730 symkey:0x7f87d0fb1c00
           /* TID 0x6738 */
 10934 ms  0x6738 PR_Close()
 10934 ms  0x6738 fd:0x7f87d2135460
           /* TID 0x67de */
 10935 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10935 ms  0x67de ret:0x0
 10935 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10935 ms  0x67de ret:0x0
           /* TID 0x6730 */
 10935 ms  0x6730 SSL_AuthCertificateComplete()
 10935 ms  0x6730 fd:0x7f87d2dc47f0
 10935 ms  0x6730 err:0x0
 10935 ms  0x6730 PK11_Encrypt()
 10935 ms  0x6730 symkey:0x7f87d08f6a00
 10936 ms  0x6730 PK11_Encrypt()
 10936 ms  0x6730 symkey:0x7f87d08f6a00
 11006 ms  0x6730 SECKEY_DestroyPrivateKey()
 11006 ms  0x6730 privk:0x7f87d7190020::7f87d7190020  30 2d db d1                                      0-..
 11006 ms  0x6730 privk:0x7f87d7190020::7f87d7190020  e5 e5 e5 e5                                      ....
 11006 ms  0x6730 SECKEY_DestroyPrivateKey()
 11006 ms  0x6730 privk:0x7f87d718e020::7f87d718e020  20 29 db d1                                       )..
 11006 ms  0x6730 privk:0x7f87d718e020::7f87d718e020  e5 e5 e5 e5                                      ....
 11113 ms  SECKEY_ECParamsToKeySize()
 11113 ms  0x6730 ret:0x100
 11113 ms  0x6730 SECKEY_CreateECPrivateKey()
 11113 ms  0x6730 cx:0x7f87dad6caa8
 11114 ms     | 0x6730 EC_ValidatePublicKey()
 11117 ms     | 0x6730 ret:0x0
 11121 ms  0x6730 ret:0x7f87d718f020::7f87d718f020  c0 3e 60 bf                                      .>`.
 11122 ms  0x6730 PK11_PubDeriveWithKDF()
 11122 ms  0x6730 seckey:0x7f87d718f020
 11122 ms     | 0x6730 EC_ValidatePublicKey()
 11124 ms     | 0x6730 ret:0x0
 11126 ms  0x6730 ret:0x7f87d08eff00
 11126 ms  0x6730 PK11_DeriveWithFlags()
 11126 ms  0x6730 basekey:0x7f87d08eff00
 11126 ms     | 0x6730 PK11_DeriveWithTemplate()
 11126 ms  0x6730 ret:0x7f87d0c54b80
 11126 ms  0x6730 PK11_Derive()
 11126 ms  0x6730 basekey:0x7f87d0c54b80
 11126 ms     | 0x6730 PK11_DeriveWithTemplate()
 11126 ms  0x6730 ret:0x7f87d08ef600
 11126 ms  0x6730 SECKEY_DestroyPrivateKey()
 11126 ms  0x6730 privk:0x7f87d718f020::7f87d718f020  c0 3e 60 bf                                      .>`.
 11126 ms  0x6730 privk:0x7f87d718f020::7f87d718f020  e5 e5 e5 e5                                      ....
 11126 ms  0x6730 PK11_Encrypt()
 11126 ms  0x6730 symkey:0x7f87d0c54e00
 11127 ms  0x6730 SSL_AuthCertificateComplete()
 11127 ms  0x6730 fd:0x7f87d6dfe7f0
 11127 ms  0x6730 err:0x0
 11127 ms  0x6730 PK11_Encrypt()
 11127 ms  0x6730 symkey:0x7f87d0c54e00
 11142 ms  SECKEY_ECParamsToKeySize()
 11142 ms  0x6730 ret:0x100
 11142 ms  0x6730 SECKEY_CreateECPrivateKey()
 11142 ms  0x6730 cx:0x7f87dad6c428
 11144 ms     | 0x6730 EC_ValidatePublicKey()
 11147 ms     | 0x6730 ret:0x0
 11147 ms  0x6730 ret:0x7f87bf81a020::7f87bf81a020  90 bc c9 d0                                      ....
 11147 ms  0x6730 PK11_PubDeriveWithKDF()
 11147 ms  0x6730 seckey:0x7f87bf81a020
 11147 ms     | 0x6730 EC_ValidatePublicKey()
 11150 ms     | 0x6730 ret:0x0
 11152 ms  0x6730 ret:0x7f87d08eff00
 11152 ms  0x6730 PK11_DeriveWithFlags()
 11152 ms  0x6730 basekey:0x7f87d08eff00
 11152 ms     | 0x6730 PK11_DeriveWithTemplate()
 11152 ms  0x6730 ret:0x7f87d08ef300
 11152 ms  0x6730 PK11_Derive()
 11152 ms  0x6730 basekey:0x7f87d08ef300
 11152 ms     | 0x6730 PK11_DeriveWithTemplate()
 11152 ms  0x6730 ret:0x7f87bf7ead80
 11153 ms  0x6730 SECKEY_DestroyPrivateKey()
 11153 ms  0x6730 privk:0x7f87bf81a020::7f87bf81a020  90 bc c9 d0                                      ....
 11153 ms  0x6730 privk:0x7f87bf81a020::7f87bf81a020  e5 e5 e5 e5                                      ....
 11153 ms  0x6730 PK11_Encrypt()
 11153 ms  0x6730 symkey:0x7f87d08efd80
 11153 ms  0x6730 SSL_AuthCertificateComplete()
 11153 ms  0x6730 fd:0x7f87d0c0e940
 11153 ms  0x6730 err:0x0
 11154 ms  0x6730 PK11_Encrypt()
 11154 ms  0x6730 symkey:0x7f87d08efd80
 11155 ms  SECKEY_ECParamsToKeySize()
 11155 ms  0x6730 ret:0x100
 11155 ms  0x6730 SECKEY_CreateECPrivateKey()
 11155 ms  0x6730 cx:0x7f87dad6bda8
 11156 ms     | 0x6730 EC_ValidatePublicKey()
 11157 ms     | 0x6730 ret:0x0
 11157 ms  0x6730 ret:0x7f87bf81c020::7f87bf81c020  80 d3 61 d1                                      ..a.
 11158 ms  0x6730 PK11_PubDeriveWithKDF()
 11158 ms  0x6730 seckey:0x7f87bf81c020
 11158 ms     | 0x6730 EC_ValidatePublicKey()
 11160 ms     | 0x6730 ret:0x0
 11162 ms  0x6730 ret:0x7f87d08eff00
 11162 ms  0x6730 PK11_DeriveWithFlags()
 11162 ms  0x6730 basekey:0x7f87d08eff00
 11162 ms     | 0x6730 PK11_DeriveWithTemplate()
 11162 ms  0x6730 ret:0x7f87bf7ead00
 11162 ms  0x6730 PK11_Derive()
 11162 ms  0x6730 basekey:0x7f87bf7ead00
 11162 ms     | 0x6730 PK11_DeriveWithTemplate()
 11162 ms  0x6730 ret:0x7f87bf888a00
 11162 ms  0x6730 SECKEY_DestroyPrivateKey()
 11162 ms  0x6730 privk:0x7f87bf81c020::7f87bf81c020  80 d3 61 d1                                      ..a.
 11162 ms  0x6730 privk:0x7f87bf81c020::7f87bf81c020  e5 e5 e5 e5                                      ....
 11162 ms  0x6730 PK11_Encrypt()
 11162 ms  0x6730 symkey:0x7f87bf7eae00
 11163 ms  SECKEY_ECParamsToKeySize()
 11163 ms  0x6730 ret:0x100
 11163 ms  0x6730 SECKEY_CreateECPrivateKey()
 11163 ms  0x6730 cx:0x7f87dad6c908
 11164 ms     | 0x6730 EC_ValidatePublicKey()
 11165 ms     | 0x6730 ret:0x0
 11165 ms  0x6730 ret:0x7f87bf81d020::7f87bf81d020  60 df 61 d1                                      `.a.
 11165 ms  0x6730 PK11_PubDeriveWithKDF()
 11165 ms  0x6730 seckey:0x7f87bf81d020
 11165 ms     | 0x6730 EC_ValidatePublicKey()
 11169 ms     | 0x6730 ret:0x0
 11171 ms  0x6730 ret:0x7f87d08eff00
 11171 ms  0x6730 PK11_DeriveWithFlags()
 11171 ms  0x6730 basekey:0x7f87d08eff00
 11171 ms     | 0x6730 PK11_DeriveWithTemplate()
 11171 ms  0x6730 ret:0x7f87bf888480
 11171 ms  0x6730 PK11_Derive()
 11171 ms  0x6730 basekey:0x7f87bf888480
 11171 ms     | 0x6730 PK11_DeriveWithTemplate()
 11171 ms  0x6730 ret:0x7f87bf8f4b00
 11171 ms  0x6730 SECKEY_DestroyPrivateKey()
 11171 ms  0x6730 privk:0x7f87bf81d020::7f87bf81d020  60 df 61 d1                                      `.a.
 11171 ms  0x6730 privk:0x7f87bf81d020::7f87bf81d020  e5 e5 e5 e5                                      ....
 11171 ms  0x6730 PK11_Encrypt()
 11171 ms  0x6730 symkey:0x7f87bf888f00
 11172 ms  SECKEY_ECParamsToKeySize()
 11172 ms  0x6730 ret:0x100
 11172 ms  0x6730 SECKEY_CreateECPrivateKey()
 11172 ms  0x6730 cx:0x7f87dad6c768
 11173 ms     | 0x6730 EC_ValidatePublicKey()
 11175 ms     | 0x6730 ret:0x0
 11175 ms  0x6730 ret:0x7f87bf81e020::7f87bf81e020  d0 c3 d3 d1                                      ....
 11175 ms  0x6730 PK11_PubDeriveWithKDF()
 11175 ms  0x6730 seckey:0x7f87bf81e020
 11175 ms     | 0x6730 EC_ValidatePublicKey()
 11176 ms     | 0x6730 ret:0x0
 11178 ms  0x6730 ret:0x7f87d08eff00
 11178 ms  0x6730 PK11_DeriveWithFlags()
 11178 ms  0x6730 basekey:0x7f87d08eff00
 11178 ms     | 0x6730 PK11_DeriveWithTemplate()
 11178 ms  0x6730 ret:0x7f87bf8f4a00
 11178 ms  0x6730 PK11_Derive()
 11178 ms  0x6730 basekey:0x7f87bf8f4a00
 11178 ms     | 0x6730 PK11_DeriveWithTemplate()
 11178 ms  0x6730 ret:0x7f87d07f8180
 11178 ms  0x6730 SECKEY_DestroyPrivateKey()
 11178 ms  0x6730 privk:0x7f87bf81e020::7f87bf81e020  d0 c3 d3 d1                                      ....
 11178 ms  0x6730 privk:0x7f87bf81e020::7f87bf81e020  e5 e5 e5 e5                                      ....
 11178 ms  0x6730 PK11_Encrypt()
 11178 ms  0x6730 symkey:0x7f87bf8f4c80
 11178 ms  0x6730 SSL_AuthCertificateComplete()
 11178 ms  0x6730 fd:0x7f87d3bffe20
 11178 ms  0x6730 err:0x0
 11178 ms  0x6730 SSL_AuthCertificateComplete()
 11178 ms  0x6730 fd:0x7f87d6dfe430
 11178 ms  0x6730 err:0x0
 11178 ms  0x6730 SSL_AuthCertificateComplete()
 11178 ms  0x6730 fd:0x7f87d6dfe5b0
 11178 ms  0x6730 err:0x0
 11179 ms  0x6730 PK11_Encrypt()
 11179 ms  0x6730 symkey:0x7f87bf7eae00
 11179 ms  0x6730 PK11_Encrypt()
 11179 ms  0x6730 symkey:0x7f87bf888f00
 11179 ms  0x6730 PK11_Encrypt()
 11179 ms  0x6730 symkey:0x7f87bf8f4c80
 11192 ms  0x6730 SECKEY_DestroyPrivateKey()
 11192 ms  0x6730 privk:0x7f87d6919820::7f87d6919820  a0 b1 c9 d0                                      ....
 11192 ms  0x6730 privk:0x7f87d6919820::7f87d6919820  e5 e5 e5 e5                                      ....
 11192 ms  0x6730 SECKEY_DestroyPrivateKey()
 11192 ms  0x6730 privk:0x7f87d559b020::7f87d559b020  00 e1 cd d0                                      ....
 11192 ms  0x6730 privk:0x7f87d559b020::7f87d559b020  e5 e5 e5 e5                                      ....
 11193 ms  0x6730 PK11_Encrypt()
 11193 ms  0x6730 symkey:0x7f87d0fb1c00
 11226 ms  0x6730 SECKEY_DestroyPrivateKey()
 11226 ms  0x6730 privk:0x7f87d69a6020::7f87d69a6020  10 d5 61 d1                                      ..a.
 11227 ms  0x6730 privk:0x7f87d69a6020::7f87d69a6020  e5 e5 e5 e5                                      ....
 11227 ms  0x6730 SECKEY_DestroyPrivateKey()
 11227 ms  0x6730 privk:0x7f87d691e020::7f87d691e020  60 ea ff d0                                      `...
 11227 ms  0x6730 privk:0x7f87d691e020::7f87d691e020  e5 e5 e5 e5                                      ....
 11227 ms  0x6730 PK11_Encrypt()
 11227 ms  0x6730 symkey:0x7f87d0fb1800
           /* TID 0x6738 */
 11231 ms  0x6738 PR_Close()
 11231 ms  0x6738 fd:0x7f87bf768550
           /* TID 0x6730 */
 11235 ms  0x6730 SECKEY_DestroyPrivateKey()
 11235 ms  0x6730 privk:0x7f87d6d10020::7f87d6d10020  e0 c2 d3 d1                                      ....
 11235 ms  0x6730 privk:0x7f87d6d10020::7f87d6d10020  e5 e5 e5 e5                                      ....
 11235 ms  0x6730 SECKEY_DestroyPrivateKey()
 11235 ms  0x6730 privk:0x7f87d69b0020::7f87d69b0020  f0 d6 61 d1                                      ..a.
 11236 ms  0x6730 privk:0x7f87d69b0020::7f87d69b0020  e5 e5 e5 e5                                      ....
 11236 ms  0x6730 PK11_Encrypt()
 11236 ms  0x6730 symkey:0x7f87d08f6a00
 11237 ms  0x6730 SECKEY_DestroyPrivateKey()
 11237 ms  0x6730 privk:0x7f87d7097820::7f87d7097820  a0 cb d3 d1                                      ....
 11238 ms  0x6730 privk:0x7f87d7097820::7f87d7097820  e5 e5 e5 e5                                      ....
 11238 ms  0x6730 SECKEY_DestroyPrivateKey()
 11238 ms  0x6730 privk:0x7f87d7091020::7f87d7091020  a0 c6 d3 d1                                      ....
 11244 ms  0x6730 privk:0x7f87d7091020::7f87d7091020  e5 e5 e5 e5                                      ....
 11244 ms  0x6730 PR_Close()
 11244 ms  0x6730 fd:0x7f87d0c50970
 11244 ms     | 0x6730 PK11_Encrypt()
 11244 ms     | 0x6730 symkey:0x7f87d0a95b00
 11254 ms  0x6730 SECKEY_DestroyPrivateKey()
 11254 ms  0x6730 privk:0x7f87d718b020::7f87d718b020  40 22 db d1                                      @"..
 11254 ms  0x6730 privk:0x7f87d718b020::7f87d718b020  e5 e5 e5 e5                                      ....
 11254 ms  0x6730 SECKEY_DestroyPrivateKey()
 11254 ms  0x6730 privk:0x7f87d7188820::7f87d7188820  c0 ce d3 d1                                      ....
 11256 ms  0x6730 privk:0x7f87d7188820::7f87d7188820  e5 e5 e5 e5                                      ....
 11256 ms  0x6730 PR_Close()
 11256 ms  0x6730 fd:0x7f87d6a12a00
 11256 ms     | 0x6730 PK11_Encrypt()
 11256 ms     | 0x6730 symkey:0x7f87d0c54980
 11424 ms  0x6730 PR_Connect()
 11424 ms  0x6730 fd:0x7f87bfabb400
 11452 ms  0x6730 SECKEY_DestroyPrivateKey()
 11452 ms  0x6730 privk:0x7f87d9a2f020::7f87d9a2f020  d0 78 44 d2                                      .xD.
 11452 ms  0x6730 privk:0x7f87d9a2f020::7f87d9a2f020  e5 e5 e5 e5                                      ....
 11452 ms  0x6730 SECKEY_DestroyPrivateKey()
 11452 ms  0x6730 privk:0x7f87d719b020::7f87d719b020  e0 5c 1e d2                                      .\..
 11454 ms  0x6730 privk:0x7f87d719b020::7f87d719b020  e5 e5 e5 e5                                      ....
 11454 ms  0x6730 PR_Close()
 11454 ms  0x6730 fd:0x7f87d6dfe7f0
 11454 ms     | 0x6730 PK11_Encrypt()
 11454 ms     | 0x6730 symkey:0x7f87d0c54e00
 11487 ms  0x6730 SECKEY_DestroyPrivateKey()
 11487 ms  0x6730 privk:0x7f87da5bb020::7f87da5bb020  40 4c 4f d2                                      @LO.
 11488 ms  0x6730 privk:0x7f87da5bb020::7f87da5bb020  e5 e5 e5 e5                                      ....
 11488 ms  0x6730 SECKEY_DestroyPrivateKey()
 11488 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  40 47 4f d2                                      @GO.
 11488 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  e5 e5 e5 e5                                      ....
 11489 ms  0x6730 PR_Close()
 11489 ms  0x6730 fd:0x7f87d0c0e940
 11489 ms     | 0x6730 PK11_Encrypt()
 11489 ms     | 0x6730 symkey:0x7f87d08efd80
 11496 ms  0x6730 SECKEY_DestroyPrivateKey()
 11496 ms  0x6730 privk:0x7f87da5c5020::7f87da5c5020  b0 4f 4f d2                                      .OO.
 11496 ms  0x6730 privk:0x7f87da5c5020::7f87da5c5020  e5 e5 e5 e5                                      ....
 11497 ms  0x6730 SECKEY_DestroyPrivateKey()
 11497 ms  0x6730 privk:0x7f87da5c1020::7f87da5c1020  d0 4d 4f d2                                      .MO.
 11497 ms  0x6730 privk:0x7f87da5c1020::7f87da5c1020  e5 e5 e5 e5                                      ....
 11497 ms  0x6730 PR_Close()
 11497 ms  0x6730 fd:0x7f87d3bffe20
 11502 ms     | 0x6730 PK11_Encrypt()
 11502 ms     | 0x6730 symkey:0x7f87bf7eae00
 11504 ms  0x6730 SECKEY_DestroyPrivateKey()
 11504 ms  0x6730 privk:0x7f87da5cc820::7f87da5cc820  20 f4 4f d2                                       .O.
 11504 ms  0x6730 privk:0x7f87da5cc820::7f87da5cc820  e5 e5 e5 e5                                      ....
 11504 ms  0x6730 SECKEY_DestroyPrivateKey()
 11504 ms  0x6730 privk:0x7f87da5c9820::7f87da5c9820  40 f2 4f d2                                      @.O.
 11505 ms  0x6730 privk:0x7f87da5c9820::7f87da5c9820  e5 e5 e5 e5                                      ....
 11505 ms  0x6730 PR_Close()
 11505 ms  0x6730 fd:0x7f87d6dfe430
 11505 ms     | 0x6730 PK11_Encrypt()
 11505 ms     | 0x6730 symkey:0x7f87bf888f00
 11506 ms  0x6730 SECKEY_DestroyPrivateKey()
 11506 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  40 f7 4f d2                                      @.O.
 11507 ms  0x6730 privk:0x7f87dabe8020::7f87dabe8020  e5 e5 e5 e5                                      ....
 11507 ms  0x6730 SECKEY_DestroyPrivateKey()
 11507 ms  0x6730 privk:0x7f87dabdf020::7f87dabdf020  60 f5 4f d2                                      `.O.
 11508 ms  0x6730 privk:0x7f87dabdf020::7f87dabdf020  e5 e5 e5 e5                                      ....
 11508 ms  0x6730 PR_Close()
 11508 ms  0x6730 fd:0x7f87d6dfe5b0
 11508 ms     | 0x6730 PK11_Encrypt()
 11508 ms     | 0x6730 symkey:0x7f87bf8f4c80
           /* TID 0x6738 */
 11519 ms  0x6738 PR_Close()
 11519 ms  0x6738 fd:0x7f87bf7684c0
 11566 ms  0x6738 PR_Close()
 11566 ms  0x6738 fd:0x7f87bf7684c0
 11580 ms  0x6738 PR_Close()
 11580 ms  0x6738 fd:0x7f87bf7684c0
 11841 ms  0x6738 PR_Close()
 11841 ms  0x6738 fd:0x7f87bf88e370
           /* TID 0x6730 */
 11856 ms  0x6730 SSL_ImportFD()
 11856 ms  0x6730 ret:0x7f87d0c0e790
 11856 ms  0x6730 SSL_AuthCertificateHook()
 11856 ms  0x6730 fd:0x7f87d0c0e790
 11856 ms  0x6730 ret:0x0
 11856 ms  0x6730 PR_Connect()
 11856 ms  0x6730 fd:0x7f87d0c0e790
 12110 ms  0x6730 SSL_ImportFD()
 12111 ms  0x6730 ret:0x7f87d0c50820
 12111 ms  0x6730 SSL_AuthCertificateHook()
 12111 ms  0x6730 fd:0x7f87d0c50820
 12111 ms  0x6730 ret:0x0
 12111 ms  0x6730 PR_Connect()
 12111 ms  0x6730 fd:0x7f87d0c50820
           /* TID 0x6738 */
 12171 ms  0x6738 PR_Close()
 12171 ms  0x6738 fd:0x7f87bf7685e0
           /* TID 0x6730 */
 12180 ms  0x6730 PR_Close()
 12180 ms  0x6730 fd:0x7f87bfaea820
 12208 ms  0x6730 SECKEY_CreateECPrivateKey()
 12208 ms  0x6730 cx:0x7f87d6fc8168
 12209 ms     | 0x6730 EC_ValidatePublicKey()
 12209 ms     | 0x6730 ret:0x0
 12209 ms  0x6730 ret:0x7f87bf909820::7f87bf909820  10 ba c9 d0                                      ....
 12209 ms  0x6730 SECKEY_CreateECPrivateKey()
 12209 ms  0x6730 cx:0x7f87d6fc8168
 12210 ms     | 0x6730 EC_ValidatePublicKey()
 12213 ms     | 0x6730 ret:0x0
 12213 ms  0x6730 ret:0x7f87bf90d020::7f87bf90d020  50 e1 ff d0                                      P...
 12463 ms  0x6730 SECKEY_CreateECPrivateKey()
 12463 ms  0x6730 cx:0x7f87d6fc8308
 12463 ms     | 0x6730 EC_ValidatePublicKey()
 12463 ms     | 0x6730 ret:0x0
 12463 ms  0x6730 ret:0x7f87bf910020::7f87bf910020  70 e9 ff d0                                      p...
 12463 ms  0x6730 SECKEY_CreateECPrivateKey()
 12463 ms  0x6730 cx:0x7f87d6fc8308
 12464 ms     | 0x6730 EC_ValidatePublicKey()
 12465 ms     | 0x6730 ret:0x0
 12465 ms  0x6730 ret:0x7f87bf912020::7f87bf912020  f0 d1 61 d1                                      ..a.
 12567 ms  SECKEY_ECParamsToKeySize()
 12567 ms  0x6730 ret:0x100
 12567 ms  0x6730 SECKEY_CreateECPrivateKey()
 12567 ms  0x6730 cx:0x7f87d6fc8168
 12568 ms     | 0x6730 EC_ValidatePublicKey()
 12570 ms     | 0x6730 ret:0x0
 12570 ms  0x6730 ret:0x7f87bfaca820::7f87bfaca820  90 d7 61 d1                                      ..a.
 12571 ms  0x6730 PK11_PubDeriveWithKDF()
 12571 ms  0x6730 seckey:0x7f87bfaca820
 12571 ms     | 0x6730 EC_ValidatePublicKey()
 12576 ms     | 0x6730 ret:0x0
 12579 ms  0x6730 ret:0x7f87d07f8180
 12579 ms  0x6730 PK11_DeriveWithFlags()
 12579 ms  0x6730 basekey:0x7f87d07f8180
 12579 ms     | 0x6730 PK11_DeriveWithTemplate()
 12579 ms  0x6730 ret:0x7f87bf8f4a00
 12579 ms  0x6730 PK11_Derive()
 12579 ms  0x6730 basekey:0x7f87bf8f4a00
 12579 ms     | 0x6730 PK11_DeriveWithTemplate()
 12579 ms  0x6730 ret:0x7f87bf8f4b00
 12579 ms  0x6730 SECKEY_DestroyPrivateKey()
 12579 ms  0x6730 privk:0x7f87bfaca820::7f87bfaca820  90 d7 61 d1                                      ..a.
 12579 ms  0x6730 privk:0x7f87bfaca820::7f87bfaca820  e5 e5 e5 e5                                      ....
 12579 ms  0x6730 PK11_Encrypt()
 12579 ms  0x6730 symkey:0x7f87bf8f4e80
 12580 ms  0x6730 SSL_AuthCertificateComplete()
 12580 ms  0x6730 fd:0x7f87d0c0e790
 12580 ms  0x6730 err:0x0
 12581 ms  0x6730 PK11_Encrypt()
 12581 ms  0x6730 symkey:0x7f87bf8f4e80
 12824 ms  SECKEY_ECParamsToKeySize()
 12826 ms  0x6730 ret:0x100
 12826 ms  0x6730 SECKEY_CreateECPrivateKey()
 12826 ms  0x6730 cx:0x7f87d6fc8308
 12828 ms     | 0x6730 EC_ValidatePublicKey()
 12833 ms     | 0x6730 ret:0x0
 12833 ms  0x6730 ret:0x7f87bfacd820::7f87bfacd820  30 c3 d3 d1                                      0...
 12833 ms  0x6730 PK11_PubDeriveWithKDF()
 12833 ms  0x6730 seckey:0x7f87bfacd820
 12833 ms     | 0x6730 EC_ValidatePublicKey()
 12836 ms     | 0x6730 ret:0x0
 12840 ms  0x6730 ret:0x7f87d07f8180
 12840 ms  0x6730 PK11_DeriveWithFlags()
 12840 ms  0x6730 basekey:0x7f87d07f8180
 12840 ms     | 0x6730 PK11_DeriveWithTemplate()
 12840 ms  0x6730 ret:0x7f87bf888480
 12840 ms  0x6730 PK11_Derive()
 12840 ms  0x6730 basekey:0x7f87bf888480
 12840 ms     | 0x6730 PK11_DeriveWithTemplate()
 12840 ms  0x6730 ret:0x7f87bf888a00
 12840 ms  0x6730 SECKEY_DestroyPrivateKey()
 12840 ms  0x6730 privk:0x7f87bfacd820::7f87bfacd820  30 c3 d3 d1                                      0...
 12840 ms  0x6730 privk:0x7f87bfacd820::7f87bfacd820  e5 e5 e5 e5                                      ....
 12840 ms  0x6730 PK11_Encrypt()
 12840 ms  0x6730 symkey:0x7f87bf8db080
 12841 ms  0x6730 SSL_AuthCertificateComplete()
 12841 ms  0x6730 fd:0x7f87d0c50820
 12841 ms  0x6730 err:0x0
 12859 ms  0x6730 PR_Close()
 12859 ms  0x6730 fd:0x7f87bfabb400
 12931 ms  0x6730 SECKEY_DestroyPrivateKey()
 12931 ms  0x6730 privk:0x7f87bf90d020::7f87bf90d020  50 e1 ff d0                                      P...
 12931 ms  0x6730 privk:0x7f87bf90d020::7f87bf90d020  e5 e5 e5 e5                                      ....
 12931 ms  0x6730 SECKEY_DestroyPrivateKey()
 12931 ms  0x6730 privk:0x7f87bf909820::7f87bf909820  10 ba c9 d0                                      ....
 12931 ms  0x6730 privk:0x7f87bf909820::7f87bf909820  e5 e5 e5 e5                                      ....
 13192 ms  0x6730 SECKEY_DestroyPrivateKey()
 13192 ms  0x6730 privk:0x7f87bf912020::7f87bf912020  f0 d1 61 d1                                      ..a.
 13193 ms  0x6730 privk:0x7f87bf912020::7f87bf912020  e5 e5 e5 e5                                      ....
 13193 ms  0x6730 SECKEY_DestroyPrivateKey()
 13193 ms  0x6730 privk:0x7f87bf910020::7f87bf910020  70 e9 ff d0                                      p...
 13193 ms  0x6730 privk:0x7f87bf910020::7f87bf910020  e5 e5 e5 e5                                      ....
           /* TID 0x6738 */
 13295 ms  0x6738 PR_Close()
 13295 ms  0x6738 fd:0x7f87bfabb0a0
           /* TID 0x6730 */
 13526 ms  0x6730 SSL_ImportFD()
 13527 ms  0x6730 ret:0x7f87d0c501f0
 13527 ms  0x6730 SSL_AuthCertificateHook()
 13527 ms  0x6730 fd:0x7f87d0c501f0
 13527 ms  0x6730 ret:0x0
 13529 ms  0x6730 PK11_Encrypt()
 13529 ms  0x6730 symkey:0x7f87bf7e9980
 13530 ms  0x6730 PR_Connect()
 13530 ms  0x6730 fd:0x7f87d0c501f0
 13783 ms  0x6730 SSL_ImportFD()
 13783 ms  0x6730 ret:0x7f87d1fe8d00
 13783 ms  0x6730 SSL_AuthCertificateHook()
 13783 ms  0x6730 fd:0x7f87d1fe8d00
 13783 ms  0x6730 ret:0x0
 13783 ms  0x6730 PR_Connect()
 13783 ms  0x6730 fd:0x7f87d1fe8d00
 13864 ms  0x6730 SECKEY_CreateECPrivateKey()
 13864 ms  0x6730 cx:0x7f87dad6caa8
 13866 ms     | 0x6730 EC_ValidatePublicKey()
 13866 ms     | 0x6730 ret:0x0
 13866 ms  0x6730 ret:0x7f87bf909820::7f87bf909820  60 1f 81 bf                                      `...
 13866 ms  0x6730 SECKEY_CreateECPrivateKey()
 13866 ms  0x6730 cx:0x7f87dad6caa8
 13868 ms     | 0x6730 EC_ValidatePublicKey()
           /* TID 0x6738 */
 13873 ms  0x6738 PR_Close()
 13873 ms  0x6738 fd:0x7f87d07f9550
           /* TID 0x6730 */
 13886 ms     | 0x6730 ret:0x0
 13886 ms  0x6730 ret:0x7f87bf90d020::7f87bf90d020  00 46 7c bf                                      .F|.
 14118 ms  0x6730 SECKEY_CreateECPrivateKey()
 14118 ms  0x6730 cx:0x7f87dad6dc88
 14121 ms     | 0x6730 EC_ValidatePublicKey()
 14121 ms     | 0x6730 ret:0x0
 14121 ms  0x6730 ret:0x7f87bf910820::7f87bf910820  80 38 b2 d0                                      .8..
 14121 ms  0x6730 SECKEY_CreateECPrivateKey()
 14121 ms  0x6730 cx:0x7f87dad6dc88
 14124 ms     | 0x6730 EC_ValidatePublicKey()
 14130 ms     | 0x6730 ret:0x0
 14130 ms  0x6730 ret:0x7f87bf91b820::7f87bf91b820  10 ba c9 d0                                      ....
 14181 ms  0x6730 PR_Close()
 14181 ms  0x6730 fd:0x7f87d65f08e0
 14181 ms     | 0x6730 PK11_Encrypt()
 14181 ms     | 0x6730 symkey:0x7f87bf7e9f00
 14182 ms  0x6730 PR_Close()
 14182 ms  0x6730 fd:0x7f87d6a127f0
 14182 ms     | 0x6730 PK11_Encrypt()
 14182 ms     | 0x6730 symkey:0x7f87d08f6480
 14183 ms  0x6730 PR_Close()
 14183 ms  0x6730 fd:0x7f87d3b69b80
 14184 ms     | 0x6730 PK11_Encrypt()
 14184 ms     | 0x6730 symkey:0x7f87d0a95d80
 14228 ms  SECKEY_ECParamsToKeySize()
 14228 ms  0x6730 ret:0x100
 14228 ms  0x6730 SECKEY_CreateECPrivateKey()
 14228 ms  0x6730 cx:0x7f87dad6caa8
 14230 ms     | 0x6730 EC_ValidatePublicKey()
 14240 ms     | 0x6730 ret:0x0
 14240 ms  0x6730 ret:0x7f87bfae6820::7f87bfae6820  f0 e6 ff d0                                      ....
 14240 ms  0x6730 PK11_PubDeriveWithKDF()
 14240 ms  0x6730 seckey:0x7f87bfae6820
 14240 ms     | 0x6730 EC_ValidatePublicKey()
 14245 ms     | 0x6730 ret:0x0
 14248 ms  0x6730 ret:0x7f87d08f6a80
 14248 ms  0x6730 PK11_DeriveWithFlags()
 14248 ms  0x6730 basekey:0x7f87d08f6a80
 14248 ms     | 0x6730 PK11_DeriveWithTemplate()
 14249 ms  0x6730 ret:0x7f87d0a95c00
 14249 ms  0x6730 PK11_Derive()
 14249 ms  0x6730 basekey:0x7f87d0a95c00
 14249 ms     | 0x6730 PK11_DeriveWithTemplate()
 14249 ms  0x6730 ret:0x7f87d1d48200
 14249 ms  0x6730 SECKEY_DestroyPrivateKey()
 14249 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  f0 e6 ff d0                                      ....
 14249 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  e5 e5 e5 e5                                      ....
 14249 ms  0x6730 PK11_Encrypt()
 14249 ms  0x6730 symkey:0x7f87d0a96200
           /* TID 0x67de */
 14277 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14277 ms  0x67de ret:0x0
 14277 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14277 ms  0x67de ret:0x0
           /* TID 0x6738 */
 14278 ms  0x6738 PR_Close()
 14278 ms  0x6738 fd:0x7f87d0c0ebb0
           /* TID 0x6730 */
 14278 ms  0x6730 SSL_AuthCertificateComplete()
 14278 ms  0x6730 fd:0x7f87d0c501f0
 14278 ms  0x6730 err:0x0
 14278 ms  0x6730 PK11_Encrypt()
 14278 ms  0x6730 symkey:0x7f87d0a96200
 14472 ms  SECKEY_ECParamsToKeySize()
 14472 ms  0x6730 ret:0x100
 14477 ms  0x6730 SECKEY_CreateECPrivateKey()
 14477 ms  0x6730 cx:0x7f87dad6dc88
           /* TID 0x6738 */
 14484 ms  0x6738 PR_Close()
 14484 ms  0x6738 fd:0x7f87d2193a90
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2193a90
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2193cd0
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2193d30
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2193df0
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2135730
 14486 ms  0x6738 PR_Close()
 14486 ms  0x6738 fd:0x7f87d2193e50
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d2193fa0
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe220
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe430
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe610
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe760
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe7f0
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fe940
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28fea30
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28feac0
 14487 ms  0x6738 PR_Close()
 14487 ms  0x6738 fd:0x7f87d28feb20
 14490 ms  0x6738 PR_Close()
 14490 ms  0x6738 fd:0x7f87d28feb80
 14490 ms  0x6738 PR_Close()
 14490 ms  0x6738 fd:0x7f87d28febe0
           /* TID 0x6730 */
 14490 ms     | 0x6730 EC_ValidatePublicKey()
 14493 ms     | 0x6730 ret:0x0
 14493 ms  0x6730 ret:0x7f87bfae6820::7f87bfae6820  d0 e3 ff d0                                      ....
 14493 ms  0x6730 PK11_PubDeriveWithKDF()
 14493 ms  0x6730 seckey:0x7f87bfae6820
 14493 ms     | 0x6730 EC_ValidatePublicKey()
 14501 ms     | 0x6730 ret:0x0
 14503 ms  0x6730 ret:0x7f87d08f6a80
 14503 ms  0x6730 PK11_DeriveWithFlags()
 14503 ms  0x6730 basekey:0x7f87d08f6a80
 14503 ms     | 0x6730 PK11_DeriveWithTemplate()
 14503 ms  0x6730 ret:0x7f87bfabf380
 14503 ms  0x6730 PK11_Derive()
 14503 ms  0x6730 basekey:0x7f87bfabf380
 14503 ms     | 0x6730 PK11_DeriveWithTemplate()
 14503 ms  0x6730 ret:0x7f87d0c54400
 14503 ms  0x6730 SECKEY_DestroyPrivateKey()
 14503 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  d0 e3 ff d0                                      ....
 14503 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  e5 e5 e5 e5                                      ....
 14504 ms  0x6730 PK11_Encrypt()
 14504 ms  0x6730 symkey:0x7f87d1624d80
 14505 ms  0x6730 SSL_AuthCertificateComplete()
 14505 ms  0x6730 fd:0x7f87d1fe8d00
 14505 ms  0x6730 err:0x0
 14505 ms  0x6730 PK11_Encrypt()
 14505 ms  0x6730 symkey:0x7f87d1624d80
 14584 ms  0x6730 SECKEY_DestroyPrivateKey()
 14584 ms  0x6730 privk:0x7f87bf90d020::7f87bf90d020  00 46 7c bf                                      .F|.
 14585 ms  0x6730 privk:0x7f87bf90d020::7f87bf90d020  e5 e5 e5 e5                                      ....
 14585 ms  0x6730 SECKEY_DestroyPrivateKey()
 14585 ms  0x6730 privk:0x7f87bf909820::7f87bf909820  60 1f 81 bf                                      `...
 14585 ms  0x6730 privk:0x7f87bf909820::7f87bf909820  e5 e5 e5 e5                                      ....
 14585 ms  0x6730 PR_Close()
 14585 ms  0x6730 fd:0x7f87d0c501f0
 14585 ms     | 0x6730 PK11_Encrypt()
 14585 ms     | 0x6730 symkey:0x7f87d0a96200
 14840 ms  0x6730 SECKEY_DestroyPrivateKey()
 14840 ms  0x6730 privk:0x7f87bf91b820::7f87bf91b820  10 ba c9 d0                                      ....
 14841 ms  0x6730 privk:0x7f87bf91b820::7f87bf91b820  e5 e5 e5 e5                                      ....
 14841 ms  0x6730 SECKEY_DestroyPrivateKey()
 14841 ms  0x6730 privk:0x7f87bf910820::7f87bf910820  80 38 b2 d0                                      .8..
 14841 ms  0x6730 privk:0x7f87bf910820::7f87bf910820  e5 e5 e5 e5                                      ....
 14841 ms  0x6730 PR_Close()
 14841 ms  0x6730 fd:0x7f87d1fe8d00
 14841 ms     | 0x6730 PK11_Encrypt()
 14841 ms     | 0x6730 symkey:0x7f87d1624d80
 17092 ms  0x6730 PR_Connect()
 17092 ms  0x6730 fd:0x7f87d3b69eb0
 17092 ms  0x6730 PR_Close()
 17092 ms  0x6730 fd:0x7f87d3b69eb0
 17093 ms  0x6730 PR_Connect()
 17093 ms  0x6730 fd:0x7f87d3b69eb0
 17093 ms  0x6730 PR_Close()
 17093 ms  0x6730 fd:0x7f87d3b69eb0
 17288 ms  0x6730 SSL_ImportFD()
 17288 ms  0x6730 ret:0x7f87d3b9d7f0
 17288 ms  0x6730 SSL_AuthCertificateHook()
 17288 ms  0x6730 fd:0x7f87d3b9d7f0
 17288 ms  0x6730 ret:0x0
 17288 ms  0x6730 PR_Connect()
 17288 ms  0x6730 fd:0x7f87d3b9d7f0
 17539 ms  0x6730 SSL_ImportFD()
 17539 ms  0x6730 ret:0x7f87d55b75b0
 17539 ms  0x6730 SSL_AuthCertificateHook()
 17539 ms  0x6730 fd:0x7f87d55b75b0
 17539 ms  0x6730 ret:0x0
 17539 ms  0x6730 PR_Connect()
 17539 ms  0x6730 fd:0x7f87d55b75b0
 17623 ms  0x6730 SECKEY_CreateECPrivateKey()
 17623 ms  0x6730 cx:0x7f87d6fc8e68
 17625 ms     | 0x6730 EC_ValidatePublicKey()
 17625 ms     | 0x6730 ret:0x0
 17625 ms  0x6730 ret:0x7f87bfad9020::7f87bfad9020  90 e7 ff d0                                      ....
 17626 ms  0x6730 SECKEY_CreateECPrivateKey()
 17626 ms  0x6730 cx:0x7f87d6fc8e68
 17627 ms     | 0x6730 EC_ValidatePublicKey()
 17633 ms     | 0x6730 ret:0x0
 17633 ms  0x6730 ret:0x7f87bfae6820::7f87bfae6820  a0 e1 ff d0                                      ....
 17758 ms  0x6730 SSL_ImportFD()
 17758 ms  0x6730 ret:0x7f87d6a68700
 17758 ms  0x6730 SSL_AuthCertificateHook()
 17758 ms  0x6730 fd:0x7f87d6a68700
 17758 ms  0x6730 ret:0x0
 17758 ms  0x6730 PR_Connect()
 17758 ms  0x6730 fd:0x7f87d6a68700
 17860 ms  0x6730 SECKEY_CreateECPrivateKey()
 17860 ms  0x6730 cx:0x7f87dad6caa8
 17861 ms     | 0x6730 EC_ValidatePublicKey()
 17861 ms     | 0x6730 ret:0x0
 17861 ms  0x6730 ret:0x7f87d0870820::7f87d0870820  70 d4 61 d1                                      p.a.
 17861 ms  0x6730 SECKEY_CreateECPrivateKey()
 17861 ms  0x6730 cx:0x7f87dad6caa8
 17862 ms     | 0x6730 EC_ValidatePublicKey()
 17863 ms     | 0x6730 ret:0x0
 17863 ms  0x6730 ret:0x7f87d087a820::7f87d087a820  00 c1 d3 d1                                      ....
 17966 ms  SECKEY_ECParamsToKeySize()
 17966 ms  0x6730 ret:0x100
 17966 ms  0x6730 SECKEY_CreateECPrivateKey()
 17966 ms  0x6730 cx:0x7f87d6fc8e68
 17967 ms     | 0x6730 EC_ValidatePublicKey()
 17971 ms     | 0x6730 ret:0x0
 17971 ms  0x6730 ret:0x7f87d28cc020::7f87d28cc020  40 cc d3 d1                                      @...
 17971 ms  0x6730 PK11_PubDeriveWithKDF()
 17971 ms  0x6730 seckey:0x7f87d28cc020
 17971 ms     | 0x6730 EC_ValidatePublicKey()
 17977 ms     | 0x6730 ret:0x0
 17981 ms  0x6730 ret:0x7f87d0c54400
 17981 ms  0x6730 PK11_DeriveWithFlags()
 17981 ms  0x6730 basekey:0x7f87d0c54400
 17981 ms     | 0x6730 PK11_DeriveWithTemplate()
 17981 ms  0x6730 ret:0x7f87bfabf380
 17981 ms  0x6730 PK11_Derive()
 17981 ms  0x6730 basekey:0x7f87bfabf380
 17981 ms     | 0x6730 PK11_DeriveWithTemplate()
 17981 ms  0x6730 ret:0x7f87d1d48200
 17981 ms  0x6730 SECKEY_DestroyPrivateKey()
 17981 ms  0x6730 privk:0x7f87d28cc020::7f87d28cc020  40 cc d3 d1                                      @...
 17981 ms  0x6730 privk:0x7f87d28cc020::7f87d28cc020  e5 e5 e5 e5                                      ....
 17981 ms  0x6730 PK11_Encrypt()
 17981 ms  0x6730 symkey:0x7f87d1624c80
           /* TID 0x67df */
 18008 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18008 ms  0x67df ret:0x0
 18008 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18008 ms  0x67df ret:0x0
           /* TID 0x6738 */
 18009 ms  0x6738 PR_Close()
 18009 ms  0x6738 fd:0x7f87d6a688b0
           /* TID 0x6730 */
 18009 ms  0x6730 SSL_AuthCertificateComplete()
 18009 ms  0x6730 fd:0x7f87d3b9d7f0
 18009 ms  0x6730 err:0x0
 18009 ms  0x6730 PK11_Encrypt()
 18009 ms  0x6730 symkey:0x7f87d1624c80
 18010 ms  0x6730 PK11_Encrypt()
 18010 ms  0x6730 symkey:0x7f87d1624c80
 18010 ms  0x6730 SSL_ImportFD()
 18010 ms  0x6730 ret:0x7f87d6dfe130
 18010 ms  0x6730 SSL_AuthCertificateHook()
 18010 ms  0x6730 fd:0x7f87d6dfe130
 18010 ms  0x6730 ret:0x0
 18010 ms  0x6730 PR_Connect()
 18010 ms  0x6730 fd:0x7f87d6dfe130
 18133 ms  0x6730 SECKEY_CreateECPrivateKey()
 18133 ms  0x6730 cx:0x7f87dad6dc88
 18134 ms     | 0x6730 EC_ValidatePublicKey()
 18134 ms     | 0x6730 ret:0x0
 18134 ms  0x6730 ret:0x7f87d28cc020::7f87d28cc020  f0 c6 86 bf                                      ....
 18135 ms  0x6730 SECKEY_CreateECPrivateKey()
 18135 ms  0x6730 cx:0x7f87dad6dc88
 18135 ms     | 0x6730 EC_ValidatePublicKey()
 18137 ms     | 0x6730 ret:0x0
 18137 ms  0x6730 ret:0x7f87d559a820::7f87d559a820  a0 cb d3 d1                                      ....
 18182 ms  0x6730 PR_Close()
 18182 ms  0x6730 fd:0x7f87d0c50820
 18182 ms     | 0x6730 PK11_Encrypt()
 18182 ms     | 0x6730 symkey:0x7f87bf8db080
 18197 ms  SECKEY_ECParamsToKeySize()
 18198 ms  0x6730 ret:0x100
 18198 ms  0x6730 SECKEY_CreateECPrivateKey()
 18198 ms  0x6730 cx:0x7f87dad6caa8
 18200 ms     | 0x6730 EC_ValidatePublicKey()
 18204 ms     | 0x6730 ret:0x0
 18205 ms  0x6730 ret:0x7f87d690c820::7f87d690c820  90 27 db d1                                      .'..
 18205 ms  0x6730 PK11_PubDeriveWithKDF()
 18205 ms  0x6730 seckey:0x7f87d690c820
 18205 ms     | 0x6730 EC_ValidatePublicKey()
 18209 ms     | 0x6730 ret:0x0
 18213 ms  0x6730 ret:0x7f87bf888a00
 18213 ms  0x6730 PK11_DeriveWithFlags()
 18213 ms  0x6730 basekey:0x7f87bf888a00
 18213 ms     | 0x6730 PK11_DeriveWithTemplate()
 18213 ms  0x6730 ret:0x7f87bf888480
 18214 ms  0x6730 PK11_Derive()
 18214 ms  0x6730 basekey:0x7f87bf888480
 18214 ms     | 0x6730 PK11_DeriveWithTemplate()
 18214 ms  0x6730 ret:0x7f87d0c54400
 18214 ms  0x6730 SECKEY_DestroyPrivateKey()
 18214 ms  0x6730 privk:0x7f87d690c820::7f87d690c820  90 27 db d1                                      .'..
 18214 ms  0x6730 privk:0x7f87d690c820::7f87d690c820  e5 e5 e5 e5                                      ....
 18214 ms  0x6730 PK11_Encrypt()
 18214 ms  0x6730 symkey:0x7f87bf8db180
 18214 ms  0x6730 SSL_AuthCertificateComplete()
 18214 ms  0x6730 fd:0x7f87d55b75b0
 18214 ms  0x6730 err:0x0
 18215 ms  0x6730 PK11_Encrypt()
 18215 ms  0x6730 symkey:0x7f87bf8db180
 18320 ms  0x6730 SECKEY_DestroyPrivateKey()
 18320 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  a0 e1 ff d0                                      ....
 18320 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  e5 e5 e5 e5                                      ....
 18321 ms  0x6730 SECKEY_DestroyPrivateKey()
 18321 ms  0x6730 privk:0x7f87bfad9020::7f87bfad9020  90 e7 ff d0                                      ....
 18321 ms  0x6730 privk:0x7f87bfad9020::7f87bfad9020  e5 e5 e5 e5                                      ....
 18321 ms  0x6730 PK11_Encrypt()
 18321 ms  0x6730 symkey:0x7f87d1624c80
 18361 ms  0x6730 SECKEY_CreateECPrivateKey()
 18361 ms  0x6730 cx:0x7f87dad6dfc8
 18362 ms     | 0x6730 EC_ValidatePublicKey()
 18362 ms     | 0x6730 ret:0x0
 18362 ms  0x6730 ret:0x7f87bfad9020::7f87bfad9020  b0 e5 ff d0                                      ....
 18362 ms  0x6730 SECKEY_CreateECPrivateKey()
 18362 ms  0x6730 cx:0x7f87dad6dfc8
 18363 ms     | 0x6730 EC_ValidatePublicKey()
 18366 ms     | 0x6730 ret:0x0
 18366 ms  0x6730 ret:0x7f87bfae6820::7f87bfae6820  60 ea ff d0                                      `...
 18519 ms  SECKEY_ECParamsToKeySize()
 18519 ms  0x6730 ret:0x100
 18519 ms  0x6730 SECKEY_CreateECPrivateKey()
 18519 ms  0x6730 cx:0x7f87dad6dc88
 18520 ms     | 0x6730 EC_ValidatePublicKey()
 18522 ms     | 0x6730 ret:0x0
 18522 ms  0x6730 ret:0x7f87d69a2020::7f87d69a2020  70 64 df d1                                      pd..
 18522 ms  0x6730 PK11_PubDeriveWithKDF()
 18522 ms  0x6730 seckey:0x7f87d69a2020
 18522 ms     | 0x6730 EC_ValidatePublicKey()
 18524 ms     | 0x6730 ret:0x0
 18526 ms  0x6730 ret:0x7f87bf888a00
 18526 ms  0x6730 PK11_DeriveWithFlags()
 18526 ms  0x6730 basekey:0x7f87bf888a00
 18526 ms     | 0x6730 PK11_DeriveWithTemplate()
 18526 ms  0x6730 ret:0x7f87d0a95c00
 18526 ms  0x6730 PK11_Derive()
 18526 ms  0x6730 basekey:0x7f87d0a95c00
 18526 ms     | 0x6730 PK11_DeriveWithTemplate()
 18526 ms  0x6730 ret:0x7f87d08f6a80
 18526 ms  0x6730 SECKEY_DestroyPrivateKey()
 18526 ms  0x6730 privk:0x7f87d69a2020::7f87d69a2020  70 64 df d1                                      pd..
 18527 ms  0x6730 privk:0x7f87d69a2020::7f87d69a2020  e5 e5 e5 e5                                      ....
 18527 ms  0x6730 PK11_Encrypt()
 18527 ms  0x6730 symkey:0x7f87d0a96080
 18566 ms  0x6730 SECKEY_DestroyPrivateKey()
 18566 ms  0x6730 privk:0x7f87d087a820::7f87d087a820  00 c1 d3 d1                                      ....
 18566 ms  0x6730 privk:0x7f87d087a820::7f87d087a820  e5 e5 e5 e5                                      ....
 18566 ms  0x6730 SECKEY_DestroyPrivateKey()
 18566 ms  0x6730 privk:0x7f87d0870820::7f87d0870820  70 d4 61 d1                                      p.a.
 18566 ms  0x6730 privk:0x7f87d0870820::7f87d0870820  e5 e5 e5 e5                                      ....
 18566 ms  0x6730 PR_Close()
 18566 ms  0x6730 fd:0x7f87d55b75b0
 18566 ms     | 0x6730 PK11_Encrypt()
 18566 ms     | 0x6730 symkey:0x7f87bf8db180
           /* TID 0x6738 */
 18588 ms  0x6738 PR_Close()
 18588 ms  0x6738 fd:0x7f87d0c50820
           /* TID 0x67de */
 18589 ms  0x67de _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 18589 ms  0x67de ret:0x0
           /* TID 0x6730 */
 18589 ms  0x6730 SSL_AuthCertificateComplete()
 18589 ms  0x6730 fd:0x7f87d6a68700
 18589 ms  0x6730 err:0x0
 18590 ms  0x6730 PK11_Encrypt()
 18590 ms  0x6730 symkey:0x7f87d0a96080
           /* TID 0x6738 */
 18678 ms  0x6738 PR_Close()
 18678 ms  0x6738 fd:0x7f87d07f9550
           /* TID 0x6730 */
 18720 ms  SECKEY_ECParamsToKeySize()
 18720 ms  0x6730 ret:0x100
 18720 ms  0x6730 SECKEY_CreateECPrivateKey()
 18720 ms  0x6730 cx:0x7f87dad6dfc8
 18721 ms     | 0x6730 EC_ValidatePublicKey()
 18723 ms     | 0x6730 ret:0x0
 18723 ms  0x6730 ret:0x7f87d0870020::7f87d0870020  c0 ce d3 d1                                      ....
 18723 ms  0x6730 PK11_PubDeriveWithKDF()
 18723 ms  0x6730 seckey:0x7f87d0870020
 18723 ms     | 0x6730 EC_ValidatePublicKey()
 18726 ms     | 0x6730 ret:0x0
 18728 ms  0x6730 ret:0x7f87d0c54400
 18728 ms  0x6730 PK11_DeriveWithFlags()
 18728 ms  0x6730 basekey:0x7f87d0c54400
 18728 ms     | 0x6730 PK11_DeriveWithTemplate()
 18728 ms  0x6730 ret:0x7f87bf888480
 18728 ms  0x6730 PK11_Derive()
 18728 ms  0x6730 basekey:0x7f87bf888480
 18728 ms     | 0x6730 PK11_DeriveWithTemplate()
 18728 ms  0x6730 ret:0x7f87bf888a00
 18728 ms  0x6730 SECKEY_DestroyPrivateKey()
 18728 ms  0x6730 privk:0x7f87d0870020::7f87d0870020  c0 ce d3 d1                                      ....
 18728 ms  0x6730 privk:0x7f87d0870020::7f87d0870020  e5 e5 e5 e5                                      ....
 18728 ms  0x6730 PK11_Encrypt()
 18728 ms  0x6730 symkey:0x7f87bf8db100
 18731 ms  0x6730 SSL_AuthCertificateComplete()
 18731 ms  0x6730 fd:0x7f87d6dfe130
 18731 ms  0x6730 err:0x0
 18842 ms  0x6730 SSL_ImportFD()
 18842 ms  0x6730 ret:0x7f87d7006310
 18842 ms  0x6730 SSL_AuthCertificateHook()
 18842 ms  0x6730 fd:0x7f87d7006310
 18842 ms  0x6730 ret:0x0
 18842 ms  0x6730 PR_Connect()
 18842 ms  0x6730 fd:0x7f87d7006310
 18903 ms  0x6730 SECKEY_DestroyPrivateKey()
 18903 ms  0x6730 privk:0x7f87d559a820::7f87d559a820  a0 cb d3 d1                                      ....
 18903 ms  0x6730 privk:0x7f87d559a820::7f87d559a820  e5 e5 e5 e5                                      ....
 18904 ms  0x6730 SECKEY_DestroyPrivateKey()
 18904 ms  0x6730 privk:0x7f87d28cc020::7f87d28cc020  f0 c6 86 bf                                      ....
 18904 ms  0x6730 privk:0x7f87d28cc020::7f87d28cc020  e5 e5 e5 e5                                      ....
 19060 ms  0x6730 SECKEY_CreateECPrivateKey()
 19060 ms  0x6730 cx:0x7f87dad6e308
 19060 ms     | 0x6730 EC_ValidatePublicKey()
 19060 ms     | 0x6730 ret:0x0
 19060 ms  0x6730 ret:0x7f87d28cb020::7f87d28cb020  c0 de 61 d1                                      ..a.
 19060 ms  0x6730 SECKEY_CreateECPrivateKey()
 19060 ms  0x6730 cx:0x7f87dad6e308
 19061 ms     | 0x6730 EC_ValidatePublicKey()
 19063 ms     | 0x6730 ret:0x0
 19063 ms  0x6730 ret:0x7f87d28d0820::7f87d28d0820  e0 2c db d1                                      .,..
 19078 ms  0x6730 SECKEY_DestroyPrivateKey()
 19078 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  60 ea ff d0                                      `...
 19078 ms  0x6730 privk:0x7f87bfae6820::7f87bfae6820  e5 e5 e5 e5                                      ....
 19078 ms  0x6730 SECKEY_DestroyPrivateKey()
 19078 ms  0x6730 privk:0x7f87bfad9020::7f87bfad9020  b0 e5 ff d0                                      ....
 19078 ms  0x6730 privk:0x7f87bfad9020::7f87bfad9020  e5 e5 e5 e5                                      ....
           /* TID 0x679e */
 19269 ms  0x679e PR_Close()
 19269 ms  0x679e fd:0x7f87d6adb940
 19270 ms  0x679e PR_Close()
 19270 ms  0x679e fd:0x7f87d6adb940
           /* TID 0x6738 */
 19281 ms  0x6738 PR_Close()
 19281 ms  0x6738 fd:0x7f87d6dfe280
           /* TID 0x6730 */
 19291 ms  SECKEY_ECParamsToKeySize()
 19291 ms  0x6730 ret:0x100
 19291 ms  0x6730 SECKEY_CreateECPrivateKey()
 19291 ms  0x6730 cx:0x7f87dad6e308
 19297 ms     | 0x6730 EC_ValidatePublicKey()
 19300 ms     | 0x6730 ret:0x0
 19301 ms  0x6730 ret:0x7f87d718d020::7f87d718d020  00 6b df d1                                      .k..
 19301 ms  0x6730 PK11_PubDeriveWithKDF()
 19301 ms  0x6730 seckey:0x7f87d718d020
 19301 ms     | 0x6730 EC_ValidatePublicKey()
 19312 ms     | 0x6730 ret:0x0
 19314 ms  0x6730 ret:0x7f87d0c54400
 19314 ms  0x6730 PK11_DeriveWithFlags()
 19314 ms  0x6730 basekey:0x7f87d0c54400
 19314 ms     | 0x6730 PK11_DeriveWithTemplate()
 19314 ms  0x6730 ret:0x7f87bf7e9780
 19314 ms  0x6730 PK11_Derive()
 19314 ms  0x6730 basekey:0x7f87bf7e9780
 19314 ms     | 0x6730 PK11_DeriveWithTemplate()
 19314 ms  0x6730 ret:0x7f87d07f8180
 19314 ms  0x6730 SECKEY_DestroyPrivateKey()
 19314 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  00 6b df d1                                      .k..
 19314 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  e5 e5 e5 e5                                      ....
 19314 ms  0x6730 PK11_Encrypt()
 19314 ms  0x6730 symkey:0x7f87bf7e9e80
           /* TID 0x67df */
 19341 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19341 ms  0x67df ret:0x0
           /* TID 0x6738 */
 19341 ms  0x6738 PR_Close()
 19341 ms  0x6738 fd:0x7f87d70062e0
           /* TID 0x6730 */
 19341 ms  0x6730 SSL_AuthCertificateComplete()
 19341 ms  0x6730 fd:0x7f87d7006310
 19341 ms  0x6730 err:0x0
 19341 ms  0x6730 PK11_Encrypt()
 19341 ms  0x6730 symkey:0x7f87bf7e9e80
 19451 ms  0x6730 SSL_ImportFD()
 19451 ms  0x6730 ret:0x7f87d6dfe430
 19451 ms  0x6730 SSL_AuthCertificateHook()
 19451 ms  0x6730 fd:0x7f87d6dfe430
 19451 ms  0x6730 ret:0x0
 19452 ms  0x6730 PR_Connect()
 19452 ms  0x6730 fd:0x7f87d6dfe430
 19453 ms  0x6730 SSL_ImportFD()
 19453 ms  0x6730 ret:0x7f87d6adb940
 19453 ms  0x6730 SSL_AuthCertificateHook()
 19453 ms  0x6730 fd:0x7f87d6adb940
 19453 ms  0x6730 ret:0x0
 19453 ms  0x6730 PR_Connect()
 19453 ms  0x6730 fd:0x7f87d6adb940
 19532 ms  0x6730 SECKEY_DestroyPrivateKey()
 19532 ms  0x6730 privk:0x7f87d28d0820::7f87d28d0820  e0 2c db d1                                      .,..
 19536 ms  0x6730 privk:0x7f87d28d0820::7f87d28d0820  e5 e5 e5 e5                                      ....
 19536 ms  0x6730 SECKEY_DestroyPrivateKey()
 19536 ms  0x6730 privk:0x7f87d28cb020::7f87d28cb020  c0 de 61 d1                                      ..a.
 19536 ms  0x6730 privk:0x7f87d28cb020::7f87d28cb020  e5 e5 e5 e5                                      ....
 19655 ms  0x6730 SECKEY_CreateECPrivateKey()
 19655 ms  0x6730 cx:0x7f87dad6e648
 19657 ms     | 0x6730 EC_ValidatePublicKey()
 19657 ms     | 0x6730 ret:0x0
 19657 ms  0x6730 ret:0x7f87d28cb020::7f87d28cb020  a0 d6 61 d1                                      ..a.
 19657 ms  0x6730 SECKEY_CreateECPrivateKey()
 19657 ms  0x6730 cx:0x7f87dad6e648
 19658 ms     | 0x6730 EC_ValidatePublicKey()
 19666 ms     | 0x6730 ret:0x0
 19666 ms  0x6730 ret:0x7f87d28d0820::7f87d28d0820  50 cb d3 d1                                      P...
 19668 ms  0x6730 SECKEY_CreateECPrivateKey()
 19668 ms  0x6730 cx:0x7f87dad6e7e8
 19669 ms     | 0x6730 EC_ValidatePublicKey()
 19669 ms     | 0x6730 ret:0x0
 19669 ms  0x6730 ret:0x7f87d718a820::7f87d718a820  30 2d db d1                                      0-..
 19670 ms  0x6730 SECKEY_CreateECPrivateKey()
 19670 ms  0x6730 cx:0x7f87dad6e7e8
 19674 ms     | 0x6730 EC_ValidatePublicKey()
 19683 ms     | 0x6730 ret:0x0
 19683 ms  0x6730 ret:0x7f87d718e020::7f87d718e020  c0 64 df d1                                      .d..
 19750 ms  0x6730 PK11_Encrypt()
 19750 ms  0x6730 symkey:0x7f87bf7e9e80
 19873 ms  SECKEY_ECParamsToKeySize()
 19873 ms  0x6730 ret:0x100
 19873 ms  0x6730 SECKEY_CreateECPrivateKey()
 19873 ms  0x6730 cx:0x7f87dad6e648
 19874 ms     | 0x6730 EC_ValidatePublicKey()
 19881 ms     | 0x6730 ret:0x0
 19881 ms  0x6730 ret:0x7f87d7194020::7f87d7194020  c0 c9 19 d2                                      ....
 19881 ms  0x6730 PK11_PubDeriveWithKDF()
 19881 ms  0x6730 seckey:0x7f87d7194020
 19881 ms     | 0x6730 EC_ValidatePublicKey()
 19886 ms     | 0x6730 ret:0x0
 19893 ms  0x6730 ret:0x7f87d0c54400
 19893 ms  0x6730 PK11_DeriveWithFlags()
 19893 ms  0x6730 basekey:0x7f87d0c54400
 19893 ms     | 0x6730 PK11_DeriveWithTemplate()
 19893 ms  0x6730 ret:0x7f87bf7ead00
 19893 ms  0x6730 PK11_Derive()
 19893 ms  0x6730 basekey:0x7f87bf7ead00
 19893 ms     | 0x6730 PK11_DeriveWithTemplate()
 19893 ms  0x6730 ret:0x7f87bf7ead80
 19893 ms  0x6730 SECKEY_DestroyPrivateKey()
 19893 ms  0x6730 privk:0x7f87d7194020::7f87d7194020  c0 c9 19 d2                                      ....
 19893 ms  0x6730 privk:0x7f87d7194020::7f87d7194020  e5 e5 e5 e5                                      ....
 19893 ms  0x6730 PK11_Encrypt()
 19893 ms  0x6730 symkey:0x7f87bf7eae80
 19894 ms  0x6730 SSL_AuthCertificateComplete()
 19894 ms  0x6730 fd:0x7f87d6dfe430
 19894 ms  0x6730 err:0x0
 19895 ms  0x6730 PK11_Encrypt()
 19895 ms  0x6730 symkey:0x7f87bf7eae80
 19896 ms  SECKEY_ECParamsToKeySize()
 19896 ms  0x6730 ret:0x100
 19896 ms  0x6730 SECKEY_CreateECPrivateKey()
 19896 ms  0x6730 cx:0x7f87dad6e7e8
 19897 ms     | 0x6730 EC_ValidatePublicKey()
 19900 ms     | 0x6730 ret:0x0
 19900 ms  0x6730 ret:0x7f87d7194820::7f87d7194820  b0 ca 19 d2                                      ....
 19900 ms  0x6730 PK11_PubDeriveWithKDF()
 19900 ms  0x6730 seckey:0x7f87d7194820
 19900 ms     | 0x6730 EC_ValidatePublicKey()
 19902 ms     | 0x6730 ret:0x0
 19907 ms  0x6730 ret:0x7f87d0c54400
 19907 ms  0x6730 PK11_DeriveWithFlags()
 19907 ms  0x6730 basekey:0x7f87d0c54400
 19907 ms     | 0x6730 PK11_DeriveWithTemplate()
 19907 ms  0x6730 ret:0x7f87d08ef300
 19907 ms  0x6730 PK11_Derive()
 19907 ms  0x6730 basekey:0x7f87d08ef300
 19907 ms     | 0x6730 PK11_DeriveWithTemplate()
 19908 ms  0x6730 ret:0x7f87d08ef600
 19908 ms  0x6730 SECKEY_DestroyPrivateKey()
 19908 ms  0x6730 privk:0x7f87d7194820::7f87d7194820  b0 ca 19 d2                                      ....
 19908 ms  0x6730 privk:0x7f87d7194820::7f87d7194820  e5 e5 e5 e5                                      ....
 19908 ms  0x6730 PK11_Encrypt()
 19908 ms  0x6730 symkey:0x7f87d08f6080
 19908 ms  0x6730 SSL_AuthCertificateComplete()
 19908 ms  0x6730 fd:0x7f87d6adb940
 19908 ms  0x6730 err:0x0
 19908 ms  0x6730 PK11_Encrypt()
 19908 ms  0x6730 symkey:0x7f87d08f6080
 19976 ms  0x6730 PK11_Encrypt()
 19976 ms  0x6730 symkey:0x7f87bf7e9e80
 20097 ms  0x6730 SECKEY_DestroyPrivateKey()
 20097 ms  0x6730 privk:0x7f87d28d0820::7f87d28d0820  50 cb d3 d1                                      P...
 20097 ms  0x6730 privk:0x7f87d28d0820::7f87d28d0820  e5 e5 e5 e5                                      ....
 20098 ms  0x6730 SECKEY_DestroyPrivateKey()
 20098 ms  0x6730 privk:0x7f87d28cb020::7f87d28cb020  a0 d6 61 d1                                      ..a.
 20098 ms  0x6730 privk:0x7f87d28cb020::7f87d28cb020  e5 e5 e5 e5                                      ....
 20111 ms  0x6730 SECKEY_DestroyPrivateKey()
 20111 ms  0x6730 privk:0x7f87d718e020::7f87d718e020  c0 64 df d1                                      .d..
 20112 ms  0x6730 privk:0x7f87d718e020::7f87d718e020  e5 e5 e5 e5                                      ....
 20112 ms  0x6730 SECKEY_DestroyPrivateKey()
 20112 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  30 2d db d1                                      0-..
 20112 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  e5 e5 e5 e5                                      ....
           /* TID 0x679e */
 20289 ms  0x679e PR_Close()
 20289 ms  0x679e fd:0x7f87d707fd00
 20476 ms  0x679e PR_Close()
 20476 ms  0x679e fd:0x7f87d3b690a0
 20479 ms  0x679e PR_Close()
 20479 ms  0x679e fd:0x7f87d3b690a0
           /* TID 0x6730 */
 20615 ms  0x6730 SSL_ImportFD()
 20615 ms  0x6730 ret:0x7f87d7006580
 20616 ms  0x6730 SSL_AuthCertificateHook()
 20616 ms  0x6730 fd:0x7f87d7006580
 20616 ms  0x6730 ret:0x0
 20616 ms  0x6730 PR_Connect()
 20616 ms  0x6730 fd:0x7f87d7006580
 20639 ms  0x6730 SSL_ImportFD()
 20639 ms  0x6730 ret:0x7f87d7006640
 20639 ms  0x6730 SSL_AuthCertificateHook()
 20639 ms  0x6730 fd:0x7f87d7006640
 20639 ms  0x6730 ret:0x0
 20640 ms  0x6730 PR_Connect()
 20640 ms  0x6730 fd:0x7f87d7006640
 20866 ms  0x6730 SSL_ImportFD()
 20866 ms  0x6730 ret:0x7f87d7006790
 20866 ms  0x6730 SSL_AuthCertificateHook()
 20866 ms  0x6730 fd:0x7f87d7006790
 20866 ms  0x6730 ret:0x0
 20867 ms  0x6730 PR_Connect()
 20867 ms  0x6730 fd:0x7f87d7006790
 20891 ms  0x6730 SSL_ImportFD()
 20891 ms  0x6730 ret:0x7f87d70e4b80
 20891 ms  0x6730 SSL_AuthCertificateHook()
 20891 ms  0x6730 fd:0x7f87d70e4b80
 20891 ms  0x6730 ret:0x0
 20891 ms  0x6730 PR_Connect()
 20891 ms  0x6730 fd:0x7f87d70e4b80
 20928 ms  0x6730 SECKEY_CreateECPrivateKey()
 20928 ms  0x6730 cx:0x7f87dad6ee68
 20930 ms     | 0x6730 EC_ValidatePublicKey()
 20930 ms     | 0x6730 ret:0x0
 20930 ms  0x6730 ret:0x7f87bf90f820::7f87bf90f820  30 c3 19 d2                                      0...
 20930 ms  0x6730 SECKEY_CreateECPrivateKey()
 20930 ms  0x6730 cx:0x7f87dad6ee68
 20932 ms     | 0x6730 EC_ValidatePublicKey()
 20938 ms     | 0x6730 ret:0x0
 20938 ms  0x6730 ret:0x7f87d28cf820::7f87d28cf820  50 71 44 d2                                      PqD.
 20951 ms  0x6730 SECKEY_CreateECPrivateKey()
 20951 ms  0x6730 cx:0x7f87db54a948
 20953 ms     | 0x6730 EC_ValidatePublicKey()
 20953 ms     | 0x6730 ret:0x0
 20953 ms  0x6730 ret:0x7f87d718a820::7f87d718a820  80 73 44 d2                                      .sD.
 20953 ms  0x6730 SECKEY_CreateECPrivateKey()
 20953 ms  0x6730 cx:0x7f87db54a948
 20955 ms     | 0x6730 EC_ValidatePublicKey()
 20959 ms     | 0x6730 ret:0x0
 20959 ms  0x6730 ret:0x7f87d718d020::7f87d718d020  c0 79 44 d2                                      .yD.
 21200 ms  0x6730 SECKEY_CreateECPrivateKey()
 21200 ms  0x6730 cx:0x7f87db54ae28
 21201 ms     | 0x6730 EC_ValidatePublicKey()
 21201 ms     | 0x6730 ret:0x0
 21201 ms  0x6730 ret:0x7f87d7196020::7f87d7196020  00 7b 44 d2                                      .{D.
 21201 ms  0x6730 SECKEY_CreateECPrivateKey()
 21201 ms  0x6730 cx:0x7f87db54ae28
 21201 ms     | 0x6730 EC_ValidatePublicKey()
 21203 ms     | 0x6730 ret:0x0
 21203 ms  0x6730 ret:0x7f87d7198820::7f87d7198820  60 7f 44 d2                                      `.D.
 21253 ms  SECKEY_ECParamsToKeySize()
 21253 ms  0x6730 ret:0x100
 21253 ms  0x6730 SECKEY_CreateECPrivateKey()
 21253 ms  0x6730 cx:0x7f87dad6ee68
 21254 ms     | 0x6730 EC_ValidatePublicKey()
 21255 ms     | 0x6730 ret:0x0
 21255 ms  0x6730 ret:0x7f87da5bf020::7f87da5bf020  a0 fb 4c d2                                      ..L.
 21255 ms  0x6730 PK11_PubDeriveWithKDF()
 21255 ms  0x6730 seckey:0x7f87da5bf020
 21255 ms     | 0x6730 EC_ValidatePublicKey()
 21257 ms     | 0x6730 ret:0x0
 21259 ms  0x6730 ret:0x7f87d0c54400
 21259 ms  0x6730 PK11_DeriveWithFlags()
 21259 ms  0x6730 basekey:0x7f87d0c54400
 21259 ms     | 0x6730 PK11_DeriveWithTemplate()
 21259 ms  0x6730 ret:0x7f87d0c54b80
 21259 ms  0x6730 PK11_Derive()
 21259 ms  0x6730 basekey:0x7f87d0c54b80
 21259 ms     | 0x6730 PK11_DeriveWithTemplate()
 21259 ms  0x6730 ret:0x7f87d0c54d80
 21259 ms  0x6730 SECKEY_DestroyPrivateKey()
 21259 ms  0x6730 privk:0x7f87da5bf020::7f87da5bf020  a0 fb 4c d2                                      ..L.
 21259 ms  0x6730 privk:0x7f87da5bf020::7f87da5bf020  e5 e5 e5 e5                                      ....
 21259 ms  0x6730 PK11_Encrypt()
 21259 ms  0x6730 symkey:0x7f87d0c54f00
 21271 ms  SECKEY_ECParamsToKeySize()
 21271 ms  0x6730 ret:0x100
 21271 ms  0x6730 SECKEY_CreateECPrivateKey()
 21271 ms  0x6730 cx:0x7f87db54a948
 21272 ms     | 0x6730 EC_ValidatePublicKey()
 21274 ms     | 0x6730 ret:0x0
 21274 ms  0x6730 ret:0x7f87da5cb020::7f87da5cb020  60 ff 4c d2                                      `.L.
 21274 ms  0x6730 PK11_PubDeriveWithKDF()
 21274 ms  0x6730 seckey:0x7f87da5cb020
 21274 ms     | 0x6730 EC_ValidatePublicKey()
 21275 ms     | 0x6730 ret:0x0
 21277 ms  0x6730 ret:0x7f87d0c54400
 21277 ms  0x6730 PK11_DeriveWithFlags()
 21277 ms  0x6730 basekey:0x7f87d0c54400
 21277 ms     | 0x6730 PK11_DeriveWithTemplate()
 21277 ms  0x6730 ret:0x7f87d0c54880
 21277 ms  0x6730 PK11_Derive()
 21277 ms  0x6730 basekey:0x7f87d0c54880
 21277 ms     | 0x6730 PK11_DeriveWithTemplate()
 21277 ms  0x6730 ret:0x7f87f8d17580
 21277 ms  0x6730 SECKEY_DestroyPrivateKey()
 21277 ms  0x6730 privk:0x7f87da5cb020::7f87da5cb020  60 ff 4c d2                                      `.L.
 21277 ms  0x6730 privk:0x7f87da5cb020::7f87da5cb020  e5 e5 e5 e5                                      ....
 21277 ms  0x6730 PK11_Encrypt()
 21277 ms  0x6730 symkey:0x7f87d0c54a00
 21297 ms  0x6730 PR_Connect()
 21297 ms  0x6730 fd:0x7f87d7102100
           /* TID 0x67df */
 21364 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21365 ms  0x67df ret:0x0
           /* TID 0x6738 */
 21365 ms  0x6738 PR_Close()
 21365 ms  0x6738 fd:0x7f87d70fd580
           /* TID 0x6730 */
 21366 ms  0x6730 SSL_AuthCertificateComplete()
 21366 ms  0x6730 fd:0x7f87d7006640
 21366 ms  0x6730 err:0x0
 21367 ms  0x6730 PK11_Encrypt()
 21367 ms  0x6730 symkey:0x7f87d0c54a00
           /* TID 0x6738 */
 21396 ms  0x6738 PR_Close()
 21396 ms  0x6738 fd:0x7f87d3b69370
           /* TID 0x67e0 */
 21396 ms  0x67e0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 21396 ms  0x67e0 ret:0x0
           /* TID 0x6730 */
 21417 ms  0x6730 SSL_AuthCertificateComplete()
 21417 ms  0x6730 fd:0x7f87d7006580
 21417 ms  0x6730 err:0x0
 21417 ms  0x6730 PK11_Encrypt()
 21417 ms  0x6730 symkey:0x7f87d0c54f00
 21519 ms  SECKEY_ECParamsToKeySize()
 21519 ms  0x6730 ret:0x100
 21519 ms  0x6730 SECKEY_CreateECPrivateKey()
 21519 ms  0x6730 cx:0x7f87db54ae28
 21521 ms     | 0x6730 EC_ValidatePublicKey()
 21525 ms     | 0x6730 ret:0x0
 21526 ms  0x6730 ret:0x7f87da5c2820::7f87da5c2820  30 fd 4c d2                                      0.L.
 21526 ms  0x6730 PK11_PubDeriveWithKDF()
 21526 ms  0x6730 seckey:0x7f87da5c2820
 21526 ms     | 0x6730 EC_ValidatePublicKey()
 21531 ms     | 0x6730 ret:0x0
 21539 ms  0x6730 ret:0x7f87d0c54400
 21539 ms  0x6730 PK11_DeriveWithFlags()
 21539 ms  0x6730 basekey:0x7f87d0c54400
 21539 ms     | 0x6730 PK11_DeriveWithTemplate()
 21540 ms  0x6730 ret:0x7f87d08f6e00
 21540 ms  0x6730 PK11_Derive()
 21540 ms  0x6730 basekey:0x7f87d08f6e00
 21540 ms     | 0x6730 PK11_DeriveWithTemplate()
 21540 ms  0x6730 ret:0x7f87d08eff00
 21540 ms  0x6730 SECKEY_DestroyPrivateKey()
 21540 ms  0x6730 privk:0x7f87da5c2820::7f87da5c2820  30 fd 4c d2                                      0.L.
 21540 ms  0x6730 privk:0x7f87da5c2820::7f87da5c2820  e5 e5 e5 e5                                      ....
 21540 ms  0x6730 PK11_Encrypt()
 21540 ms  0x6730 symkey:0x7f87d0a95a80
 21540 ms  0x6730 SSL_AuthCertificateComplete()
 21540 ms  0x6730 fd:0x7f87d70e4b80
 21540 ms  0x6730 err:0x0
 21550 ms  0x6730 SECKEY_DestroyPrivateKey()
 21550 ms  0x6730 privk:0x7f87d28cf820::7f87d28cf820  50 71 44 d2                                      PqD.
 21550 ms  0x6730 privk:0x7f87d28cf820::7f87d28cf820  e5 e5 e5 e5                                      ....
 21550 ms  0x6730 SECKEY_DestroyPrivateKey()
 21550 ms  0x6730 privk:0x7f87bf90f820::7f87bf90f820  30 c3 19 d2                                      0...
 21551 ms  0x6730 privk:0x7f87bf90f820::7f87bf90f820  e5 e5 e5 e5                                      ....
 21589 ms  0x6730 SECKEY_DestroyPrivateKey()
 21589 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  c0 79 44 d2                                      .yD.
 21589 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  e5 e5 e5 e5                                      ....
 21589 ms  0x6730 SECKEY_DestroyPrivateKey()
 21589 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  80 73 44 d2                                      .sD.
 21590 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  e5 e5 e5 e5                                      ....
 21856 ms  0x6730 SECKEY_DestroyPrivateKey()
 21856 ms  0x6730 privk:0x7f87d7198820::7f87d7198820  60 7f 44 d2                                      `.D.
 21857 ms  0x6730 privk:0x7f87d7198820::7f87d7198820  e5 e5 e5 e5                                      ....
 21857 ms  0x6730 SECKEY_DestroyPrivateKey()
 21857 ms  0x6730 privk:0x7f87d7196020::7f87d7196020  00 7b 44 d2                                      .{D.
 21857 ms  0x6730 privk:0x7f87d7196020::7f87d7196020  e5 e5 e5 e5                                      ....
 21869 ms  0x6730 PK11_Encrypt()
 21869 ms  0x6730 symkey:0x7f87bf7eae80
           /* TID 0x6738 */
 22074 ms  0x6738 PR_Close()
 22074 ms  0x6738 fd:0x7f87d71025b0
 22101 ms  0x6738 PR_Close()
 22101 ms  0x6738 fd:0x7f87d707fa90
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d707fa90
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d71020d0
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d71024f0
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d71025b0
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d71028b0
 22102 ms  0x6738 PR_Close()
 22102 ms  0x6738 fd:0x7f87d7102dc0
 22103 ms  0x6738 PR_Close()
 22103 ms  0x6738 fd:0x7f87d7102e80
 22103 ms  0x6738 PR_Close()
 22103 ms  0x6738 fd:0x7f87d7110040
 22103 ms  0x6738 PR_Close()
 22103 ms  0x6738 fd:0x7f87d71100a0
           /* TID 0x6730 */
 22388 ms  0x6730 SSL_ImportFD()
 22388 ms  0x6730 ret:0x7f87d7102370
 22388 ms  0x6730 SSL_AuthCertificateHook()
 22388 ms  0x6730 fd:0x7f87d7102370
 22389 ms  0x6730 ret:0x0
 22389 ms  0x6730 PR_Connect()
 22389 ms  0x6730 fd:0x7f87d7102370
 22482 ms  0x6730 SSL_ImportFD()
 22482 ms  0x6730 ret:0x7f87d71024f0
 22482 ms  0x6730 SSL_AuthCertificateHook()
 22482 ms  0x6730 fd:0x7f87d71024f0
 22482 ms  0x6730 ret:0x0
 22482 ms  0x6730 PR_Connect()
 22482 ms  0x6730 fd:0x7f87d71024f0
 22483 ms  0x6730 SSL_ImportFD()
 22483 ms  0x6730 ret:0x7f87d7102730
 22483 ms  0x6730 SSL_AuthCertificateHook()
 22483 ms  0x6730 fd:0x7f87d7102730
 22483 ms  0x6730 ret:0x0
 22483 ms  0x6730 PR_Connect()
 22483 ms  0x6730 fd:0x7f87d7102730
 22495 ms  0x6730 SSL_ImportFD()
 22495 ms  0x6730 ret:0x7f87d7110340
 22495 ms  0x6730 SSL_AuthCertificateHook()
 22495 ms  0x6730 fd:0x7f87d7110340
 22495 ms  0x6730 ret:0x0
 22495 ms  0x6730 PR_Connect()
 22495 ms  0x6730 fd:0x7f87d7110340
 22495 ms  0x6730 SSL_ImportFD()
 22495 ms  0x6730 ret:0x7f87d71ed700
 22495 ms  0x6730 SSL_AuthCertificateHook()
 22495 ms  0x6730 fd:0x7f87d71ed700
 22495 ms  0x6730 ret:0x0
 22495 ms  0x6730 PR_Connect()
 22495 ms  0x6730 fd:0x7f87d71ed700
 22496 ms  0x6730 SSL_ImportFD()
 22496 ms  0x6730 ret:0x7f87bfaea280
 22496 ms  0x6730 SSL_AuthCertificateHook()
 22496 ms  0x6730 fd:0x7f87bfaea280
 22496 ms  0x6730 ret:0x0
 22496 ms  0x6730 PR_Connect()
 22496 ms  0x6730 fd:0x7f87bfaea280
 22496 ms  0x6730 SSL_ImportFD()
 22496 ms  0x6730 ret:0x7f87bfaea850
 22496 ms  0x6730 SSL_AuthCertificateHook()
 22496 ms  0x6730 fd:0x7f87bfaea850
 22496 ms  0x6730 ret:0x0
 22496 ms  0x6730 PR_Connect()
 22496 ms  0x6730 fd:0x7f87bfaea850
 22496 ms  0x6730 SSL_ImportFD()
 22496 ms  0x6730 ret:0x7f87d70e4850
 22496 ms  0x6730 SSL_AuthCertificateHook()
 22496 ms  0x6730 fd:0x7f87d70e4850
 22496 ms  0x6730 ret:0x0
 22496 ms  0x6730 PR_Connect()
 22496 ms  0x6730 fd:0x7f87d70e4850
 22497 ms  0x6730 SSL_ImportFD()
 22497 ms  0x6730 ret:0x7f87d7110220
 22497 ms  0x6730 SSL_AuthCertificateHook()
 22497 ms  0x6730 fd:0x7f87d7110220
 22497 ms  0x6730 ret:0x0
 22497 ms  0x6730 PR_Connect()
 22497 ms  0x6730 fd:0x7f87d7110220
 22639 ms  0x6730 SSL_ImportFD()
 22639 ms  0x6730 ret:0x7f87d07f4640
 22639 ms  0x6730 SSL_AuthCertificateHook()
 22639 ms  0x6730 fd:0x7f87d07f4640
 22639 ms  0x6730 ret:0x0
 22640 ms  0x6730 PR_Connect()
 22640 ms  0x6730 fd:0x7f87d07f4640
 22711 ms  0x6730 SECKEY_CreateECPrivateKey()
 22711 ms  0x6730 cx:0x7f87d0b06588
 22713 ms     | 0x6730 EC_ValidatePublicKey()
 22713 ms     | 0x6730 ret:0x0
 22713 ms  0x6730 ret:0x7f87bfadd020::7f87bfadd020  20 74 44 d2                                       tD.
 22713 ms  0x6730 SECKEY_CreateECPrivateKey()
 22713 ms  0x6730 cx:0x7f87d0b06588
 22716 ms     | 0x6730 EC_ValidatePublicKey()
 22720 ms     | 0x6730 ret:0x0
 22720 ms  0x6730 ret:0x7f87d28cf020::7f87d28cf020  50 7b 44 d2                                      P{D.
 22734 ms  0x6730 SSL_ImportFD()
 22734 ms  0x6730 ret:0x7f87d0c50be0
 22734 ms  0x6730 SSL_AuthCertificateHook()
 22734 ms  0x6730 fd:0x7f87d0c50be0
 22734 ms  0x6730 ret:0x0
 22734 ms  0x6730 PR_Connect()
 22734 ms  0x6730 fd:0x7f87d0c50be0
 22735 ms  0x6730 SSL_ImportFD()
 22735 ms  0x6730 ret:0x7f87d1df5460
 22735 ms  0x6730 SSL_AuthCertificateHook()
 22735 ms  0x6730 fd:0x7f87d1df5460
 22735 ms  0x6730 ret:0x0
 22735 ms  0x6730 PR_Connect()
 22735 ms  0x6730 fd:0x7f87d1df5460
 22746 ms  0x6730 SECKEY_CreateECPrivateKey()
 22746 ms  0x6730 cx:0x7f87d0b068c8
 22748 ms     | 0x6730 EC_ValidatePublicKey()
 22748 ms     | 0x6730 ret:0x0
 22748 ms  0x6730 ret:0x7f87d718a820::7f87d718a820  60 7f 44 d2                                      `.D.
 22748 ms  0x6730 SECKEY_CreateECPrivateKey()
 22748 ms  0x6730 cx:0x7f87d0b068c8
 22750 ms     | 0x6730 EC_ValidatePublicKey()
 22754 ms     | 0x6730 ret:0x0
 22754 ms  0x6730 ret:0x7f87d718d020::7f87d718d020  40 fc 4c d2                                      @.L.
 22755 ms  0x6730 SSL_ImportFD()
 22755 ms  0x6730 ret:0x7f87d7102d60
 22755 ms  0x6730 SSL_AuthCertificateHook()
 22755 ms  0x6730 fd:0x7f87d7102d60
 22755 ms  0x6730 ret:0x0
 22755 ms  0x6730 PR_Connect()
 22755 ms  0x6730 fd:0x7f87d7102d60
 22755 ms  0x6730 SSL_ImportFD()
 22755 ms  0x6730 ret:0x7f87d71025b0
 22755 ms  0x6730 SSL_AuthCertificateHook()
 22755 ms  0x6730 fd:0x7f87d71025b0
 22755 ms  0x6730 ret:0x0
 22756 ms  0x6730 PR_Connect()
 22756 ms  0x6730 fd:0x7f87d71025b0
 22756 ms  0x6730 SSL_ImportFD()
 22756 ms  0x6730 ret:0x7f87bfaea490
 22756 ms  0x6730 SSL_AuthCertificateHook()
 22756 ms  0x6730 fd:0x7f87bfaea490
 22756 ms  0x6730 ret:0x0
 22756 ms  0x6730 PR_Connect()
 22756 ms  0x6730 fd:0x7f87bfaea490
 22756 ms  0x6730 SSL_ImportFD()
 22756 ms  0x6730 ret:0x7f87d71026a0
 22756 ms  0x6730 SSL_AuthCertificateHook()
 22756 ms  0x6730 fd:0x7f87d71026a0
 22756 ms  0x6730 ret:0x0
 22756 ms  0x6730 PR_Connect()
 22756 ms  0x6730 fd:0x7f87d71026a0
 22757 ms  0x6730 SSL_ImportFD()
 22757 ms  0x6730 ret:0x7f87d2193040
 22757 ms  0x6730 SSL_AuthCertificateHook()
 22757 ms  0x6730 fd:0x7f87d2193040
 22757 ms  0x6730 ret:0x0
 22757 ms  0x6730 PR_Connect()
 22757 ms  0x6730 fd:0x7f87d2193040
 22757 ms  0x6730 SSL_ImportFD()
 22757 ms  0x6730 ret:0x7f87d2193640
 22757 ms  0x6730 SSL_AuthCertificateHook()
 22757 ms  0x6730 fd:0x7f87d2193640
 22757 ms  0x6730 ret:0x0
 22757 ms  0x6730 PR_Connect()
 22757 ms  0x6730 fd:0x7f87d2193640
 22773 ms  0x6730 SECKEY_CreateECPrivateKey()
 22773 ms  0x6730 cx:0x7f87d0b06c08
 22776 ms     | 0x6730 EC_ValidatePublicKey()
 22776 ms     | 0x6730 ret:0x0
 22776 ms  0x6730 ret:0x7f87d7197020::7f87d7197020  c0 fe 4c d2                                      ..L.
 22777 ms  0x6730 SECKEY_CreateECPrivateKey()
 22777 ms  0x6730 cx:0x7f87d0b06c08
 22778 ms     | 0x6730 EC_ValidatePublicKey()
 22780 ms     | 0x6730 ret:0x0
 22780 ms  0x6730 ret:0x7f87da5b7820::7f87da5b7820  40 47 4f d2                                      @GO.
 22806 ms  0x6730 SECKEY_CreateECPrivateKey()
 22806 ms  0x6730 cx:0x7f87d0b06728
 22807 ms     | 0x6730 EC_ValidatePublicKey()
 22807 ms     | 0x6730 ret:0x0
 22807 ms  0x6730 ret:0x7f87da5c3020::7f87da5c3020  a0 4b 4f d2                                      .KO.
 22807 ms  0x6730 SECKEY_CreateECPrivateKey()
 22807 ms  0x6730 cx:0x7f87d0b06728
 22808 ms     | 0x6730 EC_ValidatePublicKey()
 22809 ms     | 0x6730 ret:0x0
 22810 ms  0x6730 ret:0x7f87da5c9020::7f87da5c9020  d0 4d 4f d2                                      .MO.
 22820 ms  0x6730 SECKEY_CreateECPrivateKey()
 22820 ms  0x6730 cx:0x7f87d0b06a68
 22821 ms     | 0x6730 EC_ValidatePublicKey()
 22821 ms     | 0x6730 ret:0x0
 22821 ms  0x6730 ret:0x7f87da5cc820::7f87da5cc820  10 4f 4f d2                                      .OO.
 22821 ms  0x6730 SECKEY_CreateECPrivateKey()
 22821 ms  0x6730 cx:0x7f87d0b06a68
 22822 ms     | 0x6730 EC_ValidatePublicKey()
 22825 ms     | 0x6730 ret:0x0
 22825 ms  0x6730 ret:0x7f87da5d2820::7f87da5d2820  f0 f1 4f d2                                      ..O.
 22826 ms  0x6730 SECKEY_CreateECPrivateKey()
 22826 ms  0x6730 cx:0x7f87d0b07288
 22826 ms     | 0x6730 EC_ValidatePublicKey()
 22826 ms     | 0x6730 ret:0x0
 22827 ms  0x6730 ret:0x7f87dabe6820::7f87dabe6820  30 f3 4f d2                                      0.O.
 22827 ms  0x6730 SECKEY_CreateECPrivateKey()
 22827 ms  0x6730 cx:0x7f87d0b07288
 22827 ms     | 0x6730 EC_ValidatePublicKey()
 22829 ms     | 0x6730 ret:0x0
 22829 ms  0x6730 ret:0x7f87dabeb820::7f87dabeb820  10 f5 4f d2                                      ..O.
 22830 ms  0x6730 SECKEY_CreateECPrivateKey()
 22830 ms  0x6730 cx:0x7f87d0b070e8
 22831 ms     | 0x6730 EC_ValidatePublicKey()
 22831 ms     | 0x6730 ret:0x0
 22831 ms  0x6730 ret:0x7f87dac89020::7f87dac89020  50 f6 4f d2                                      P.O.
 22831 ms  0x6730 SECKEY_CreateECPrivateKey()
 22831 ms  0x6730 cx:0x7f87d0b070e8
 22832 ms     | 0x6730 EC_ValidatePublicKey()
 22834 ms     | 0x6730 ret:0x0
 22834 ms  0x6730 ret:0x7f87dac90820::7f87dac90820  80 f8 4f d2                                      ..O.
 22834 ms  0x6730 SECKEY_CreateECPrivateKey()
 22834 ms  0x6730 cx:0x7f87d0b06da8
 22835 ms     | 0x6730 EC_ValidatePublicKey()
 22835 ms     | 0x6730 ret:0x0
 22835 ms  0x6730 ret:0x7f87dac93020::7f87dac93020  10 fa 4f d2                                      ..O.
 22835 ms  0x6730 SECKEY_CreateECPrivateKey()
 22835 ms  0x6730 cx:0x7f87d0b06da8
 22836 ms     | 0x6730 EC_ValidatePublicKey()
 22838 ms     | 0x6730 ret:0x0
 22838 ms  0x6730 ret:0x7f87db50c020::7f87db50c020  f0 fb 4f d2                                      ..O.
 22839 ms  0x6730 SECKEY_CreateECPrivateKey()
 22839 ms  0x6730 cx:0x7f87d0b06f48
 22839 ms     | 0x6730 EC_ValidatePublicKey()
 22839 ms     | 0x6730 ret:0x0
 22839 ms  0x6730 ret:0x7f87db510820::7f87db510820  30 fd 4f d2                                      0.O.
 22839 ms  0x6730 SECKEY_CreateECPrivateKey()
 22839 ms  0x6730 cx:0x7f87d0b06f48
 22840 ms     | 0x6730 EC_ValidatePublicKey()
 22842 ms     | 0x6730 ret:0x0
 22842 ms  0x6730 ret:0x7f87db517020::7f87db517020  10 ff 4f d2                                      ..O.
 22842 ms  0x6730 PR_Close()
 22842 ms  0x6730 fd:0x7f87d7006580
 22842 ms     | 0x6730 PK11_Encrypt()
 22842 ms     | 0x6730 symkey:0x7f87d0c54f00
 22963 ms  0x6730 SECKEY_CreateECPrivateKey()
 22963 ms  0x6730 cx:0x7f87d0b07428
 22965 ms     | 0x6730 EC_ValidatePublicKey()
 22965 ms     | 0x6730 ret:0x0
 22965 ms  0x6730 ret:0x7f87db51a820::7f87db51a820  60 80 dc d2                                      `...
 22965 ms  0x6730 SECKEY_CreateECPrivateKey()
 22965 ms  0x6730 cx:0x7f87d0b07428
 22967 ms     | 0x6730 EC_ValidatePublicKey()
 22971 ms     | 0x6730 ret:0x0
 22971 ms  0x6730 ret:0x7f87db51f020::7f87db51f020  a0 86 dc d2                                      ....
 22998 ms  0x6730 SECKEY_CreateECPrivateKey()
 22998 ms  0x6730 cx:0x7f87d0b07908
 22999 ms     | 0x6730 EC_ValidatePublicKey()
 22999 ms     | 0x6730 ret:0x0
 22999 ms  0x6730 ret:0x7f87db521820::7f87db521820  20 89 dc d2                                       ...
 23000 ms  0x6730 SECKEY_CreateECPrivateKey()
 23000 ms  0x6730 cx:0x7f87d0b07908
 23001 ms     | 0x6730 EC_ValidatePublicKey()
 23005 ms     | 0x6730 ret:0x0
 23005 ms  0x6730 ret:0x7f87db523820::7f87db523820  a0 8b dc d2                                      ....
 23026 ms  SECKEY_ECParamsToKeySize()
 23026 ms  0x6730 ret:0x100
 23026 ms  0x6730 SECKEY_CreateECPrivateKey()
 23026 ms  0x6730 cx:0x7f87d0b068c8
 23028 ms     | 0x6730 EC_ValidatePublicKey()
 23032 ms     | 0x6730 ret:0x0
 23033 ms  0x6730 ret:0x7f87db528820::7f87db528820  60 8f dc d2                                      `...
 23033 ms  0x6730 PK11_PubDeriveWithKDF()
 23033 ms  0x6730 seckey:0x7f87db528820
 23033 ms     | 0x6730 EC_ValidatePublicKey()
 23037 ms     | 0x6730 ret:0x0
 23040 ms  0x6730 ret:0x7f87d0c54d80
 23040 ms  0x6730 PK11_DeriveWithFlags()
 23040 ms  0x6730 basekey:0x7f87d0c54d80
 23040 ms     | 0x6730 PK11_DeriveWithTemplate()
 23040 ms  0x6730 ret:0x7f87d0c54b80
 23040 ms  0x6730 PK11_Derive()
 23040 ms  0x6730 basekey:0x7f87d0c54b80
 23040 ms     | 0x6730 PK11_DeriveWithTemplate()
 23041 ms  0x6730 ret:0x7f87d0c54400
 23041 ms  0x6730 SECKEY_DestroyPrivateKey()
 23041 ms  0x6730 privk:0x7f87db528820::7f87db528820  60 8f dc d2                                      `...
 23041 ms  0x6730 privk:0x7f87db528820::7f87db528820  e5 e5 e5 e5                                      ....
 23041 ms  0x6730 SSL_AuthCertificateComplete()
 23041 ms  0x6730 fd:0x7f87d7102730
 23041 ms  0x6730 err:0x0
 23042 ms  0x6730 SECKEY_CreateECPrivateKey()
 23042 ms  0x6730 cx:0x7f87d0b07de8
 23043 ms     | 0x6730 EC_ValidatePublicKey()
 23043 ms     | 0x6730 ret:0x0
 23044 ms  0x6730 ret:0x7f87db529820::7f87db529820  b0 8f dc d2                                      ....
 23044 ms  0x6730 SECKEY_CreateECPrivateKey()
 23044 ms  0x6730 cx:0x7f87d0b07de8
 23045 ms     | 0x6730 EC_ValidatePublicKey()
 23047 ms     | 0x6730 ret:0x0
 23047 ms  0x6730 ret:0x7f87db5b9020::7f87db5b9020  50 71 b6 d3                                      Pq..
 23048 ms  0x6730 SECKEY_CreateECPrivateKey()
 23048 ms  0x6730 cx:0x7f87d0b08468
 23049 ms     | 0x6730 EC_ValidatePublicKey()
 23049 ms     | 0x6730 ret:0x0
 23049 ms  0x6730 ret:0x7f87db5bb820::7f87db5bb820  90 72 b6 d3                                      .r..
 23049 ms  0x6730 SECKEY_CreateECPrivateKey()
 23049 ms  0x6730 cx:0x7f87d0b08468
 23050 ms     | 0x6730 EC_ValidatePublicKey()
 23052 ms     | 0x6730 ret:0x0
 23052 ms  0x6730 ret:0x7f87db5bd820::7f87db5bd820  70 74 b6 d3                                      pt..
 23054 ms  SECKEY_ECParamsToKeySize()
 23054 ms  0x6730 ret:0x100
 23054 ms  0x6730 SECKEY_CreateECPrivateKey()
 23054 ms  0x6730 cx:0x7f87d0b06588
 23056 ms     | 0x6730 EC_ValidatePublicKey()
 23058 ms     | 0x6730 ret:0x0
 23058 ms  0x6730 ret:0x7f87dba7e820::7f87dba7e820  b0 7f b6 d3                                      ....
 23058 ms  0x6730 PK11_PubDeriveWithKDF()
 23058 ms  0x6730 seckey:0x7f87dba7e820
 23058 ms     | 0x6730 EC_ValidatePublicKey()
 23060 ms     | 0x6730 ret:0x0
 23061 ms  0x6730 ret:0x7f87d0c54d80
 23061 ms  0x6730 PK11_DeriveWithFlags()
 23061 ms  0x6730 basekey:0x7f87d0c54d80
 23061 ms     | 0x6730 PK11_DeriveWithTemplate()
 23061 ms  0x6730 ret:0x7f87d07f8100
 23061 ms  0x6730 PK11_Derive()
 23061 ms  0x6730 basekey:0x7f87d07f8100
 23061 ms     | 0x6730 PK11_DeriveWithTemplate()
 23061 ms  0x6730 ret:0x7f87bf7e9d00
 23061 ms  0x6730 SECKEY_DestroyPrivateKey()
 23061 ms  0x6730 privk:0x7f87dba7e820::7f87dba7e820  b0 7f b6 d3                                      ....
 23062 ms  0x6730 privk:0x7f87dba7e820::7f87dba7e820  e5 e5 e5 e5                                      ....
 23062 ms  0x6730 PK11_Encrypt()
 23062 ms  0x6730 symkey:0x7f87d07f8200
 23063 ms  SECKEY_ECParamsToKeySize()
 23063 ms  0x6730 ret:0x100
 23063 ms  0x6730 SECKEY_CreateECPrivateKey()
 23063 ms  0x6730 cx:0x7f87d0b06c08
 23064 ms     | 0x6730 EC_ValidatePublicKey()
 23066 ms     | 0x6730 ret:0x0
 23066 ms  0x6730 ret:0x7f87dba83820::7f87dba83820  b0 60 b7 d3                                      .`..
 23066 ms  0x6730 PK11_PubDeriveWithKDF()
 23066 ms  0x6730 seckey:0x7f87dba83820
 23066 ms     | 0x6730 EC_ValidatePublicKey()
 23068 ms     | 0x6730 ret:0x0
 23069 ms  0x6730 ret:0x7f87d0c54d80
 23069 ms  0x6730 PK11_DeriveWithFlags()
 23069 ms  0x6730 basekey:0x7f87d0c54d80
 23069 ms     | 0x6730 PK11_DeriveWithTemplate()
 23069 ms  0x6730 ret:0x7f87d1d9fb00
 23069 ms  0x6730 PK11_Derive()
 23069 ms  0x6730 basekey:0x7f87d1d9fb00
 23069 ms     | 0x6730 PK11_DeriveWithTemplate()
 23069 ms  0x6730 ret:0x7f87d1d9fb80
 23069 ms  0x6730 SECKEY_DestroyPrivateKey()
 23069 ms  0x6730 privk:0x7f87dba83820::7f87dba83820  b0 60 b7 d3                                      .`..
 23069 ms  0x6730 privk:0x7f87dba83820::7f87dba83820  e5 e5 e5 e5                                      ....
 23070 ms  0x6730 PK11_Encrypt()
 23070 ms  0x6730 symkey:0x7f87d1f7e100
 23070 ms  0x6730 SSL_AuthCertificateComplete()
 23070 ms  0x6730 fd:0x7f87d71ed700
 23070 ms  0x6730 err:0x0
 23071 ms  0x6730 PK11_Encrypt()
 23071 ms  0x6730 symkey:0x7f87d1f7e100
 23071 ms  0x6730 PK11_Encrypt()
 23071 ms  0x6730 symkey:0x7f87d1f7e100
 23071 ms  0x6730 PR_Close()
 23071 ms  0x6730 fd:0x7f87bfaea490
 23071 ms  0x6730 PR_Close()
 23071 ms  0x6730 fd:0x7f87d71026a0
 23071 ms  0x6730 PR_Close()
 23071 ms  0x6730 fd:0x7f87d2193040
 23071 ms  0x6730 PR_Close()
 23071 ms  0x6730 fd:0x7f87d7102d60
 23071 ms  0x6730 PK11_Encrypt()
 23071 ms  0x6730 symkey:0x7f87d1f7e100
 23071 ms  0x6730 PK11_Encrypt()
 23071 ms  0x6730 symkey:0x7f87d1f7e100
 23072 ms  0x6730 PK11_Encrypt()
 23072 ms  0x6730 symkey:0x7f87d1f7e100
 23072 ms  0x6730 PK11_Encrypt()
 23072 ms  0x6730 symkey:0x7f87d1f7e100
 23073 ms  0x6730 PK11_Encrypt()
 23073 ms  0x6730 symkey:0x7f87d1f7e100
 23073 ms  0x6730 PK11_Encrypt()
 23073 ms  0x6730 symkey:0x7f87d1f7e100
 23073 ms  0x6730 PK11_Encrypt()
 23073 ms  0x6730 symkey:0x7f87d1f7e100
 23073 ms  0x6730 PK11_Encrypt()
 23073 ms  0x6730 symkey:0x7f87d1f7e100
 23074 ms  0x6730 PK11_Encrypt()
 23074 ms  0x6730 symkey:0x7f87d1f7e100
 23074 ms  0x6730 PK11_Encrypt()
 23074 ms  0x6730 symkey:0x7f87d1f7e100
 23074 ms  0x6730 PK11_Encrypt()
 23074 ms  0x6730 symkey:0x7f87d1f7e100
 23075 ms  0x6730 PK11_Encrypt()
 23075 ms  0x6730 symkey:0x7f87d1f7e100
 23075 ms  0x6730 PK11_Encrypt()
 23075 ms  0x6730 symkey:0x7f87d1f7e100
 23075 ms  0x6730 PK11_Encrypt()
 23075 ms  0x6730 symkey:0x7f87d1f7e100
 23075 ms  0x6730 PK11_Encrypt()
 23075 ms  0x6730 symkey:0x7f87d1f7e100
 23076 ms  0x6730 PK11_Encrypt()
 23076 ms  0x6730 symkey:0x7f87d1f7e100
 23076 ms  0x6730 PK11_Encrypt()
 23076 ms  0x6730 symkey:0x7f87d1f7e100
 23076 ms  0x6730 PK11_Encrypt()
 23076 ms  0x6730 symkey:0x7f87d1f7e100
 23081 ms  0x6730 PK11_Encrypt()
 23081 ms  0x6730 symkey:0x7f87d1f7e100
 23081 ms  0x6730 PK11_Encrypt()
 23081 ms  0x6730 symkey:0x7f87d1f7e100
 23082 ms  0x6730 PK11_Encrypt()
 23082 ms  0x6730 symkey:0x7f87d1f7e100
 23082 ms  0x6730 PK11_Encrypt()
 23082 ms  0x6730 symkey:0x7f87d1f7e100
 23083 ms  0x6730 PK11_Encrypt()
 23083 ms  0x6730 symkey:0x7f87d1f7e100
 23083 ms  0x6730 PK11_Encrypt()
 23083 ms  0x6730 symkey:0x7f87d1f7e100
 23083 ms  0x6730 SECKEY_CreateECPrivateKey()
 23083 ms  0x6730 cx:0x7f87d0b075c8
 23084 ms     | 0x6730 EC_ValidatePublicKey()
 23084 ms     | 0x6730 ret:0x0
 23084 ms  0x6730 ret:0x7f87d0b3b820::7f87d0b3b820  60 7f b6 d3                                      `...
 23084 ms  0x6730 SECKEY_CreateECPrivateKey()
 23084 ms  0x6730 cx:0x7f87d0b075c8
 23085 ms     | 0x6730 EC_ValidatePublicKey()
 23086 ms     | 0x6730 ret:0x0
 23086 ms  0x6730 ret:0x7f87d0b3d820::7f87d0b3d820  80 6d b7 d3                                      .m..
 23086 ms  0x6730 PK11_Encrypt()
 23086 ms  0x6730 symkey:0x7f87d1f7e100
 23087 ms  0x6730 PK11_Encrypt()
 23087 ms  0x6730 symkey:0x7f87d1f7e100
 23087 ms  0x6730 PK11_Encrypt()
 23087 ms  0x6730 symkey:0x7f87d1f7e100
 23087 ms  0x6730 PK11_Encrypt()
 23087 ms  0x6730 symkey:0x7f87d1f7e100
 23087 ms  0x6730 PK11_Encrypt()
 23087 ms  0x6730 symkey:0x7f87d1f7e100
 23088 ms  0x6730 PK11_Encrypt()
 23088 ms  0x6730 symkey:0x7f87d1f7e100
 23088 ms  0x6730 PK11_Encrypt()
 23088 ms  0x6730 symkey:0x7f87d1f7e100
 23088 ms  0x6730 PK11_Encrypt()
 23088 ms  0x6730 symkey:0x7f87d1f7e100
           /* TID 0x67df */
 23089 ms  0x67df _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 23089 ms  0x67df ret:0x0
           /* TID 0x6738 */
 23090 ms  0x6738 PR_Close()
 23090 ms  0x6738 fd:0x7f87d07f4280
           /* TID 0x6730 */
 23090 ms  0x6730 PK11_Encrypt()
 23090 ms  0x6730 symkey:0x7f87d1f7e100
 23091 ms  0x6730 PK11_Encrypt()
 23091 ms  0x6730 symkey:0x7f87d1f7e100
 23091 ms  0x6730 PK11_Encrypt()
 23091 ms  0x6730 symkey:0x7f87d1f7e100
 23091 ms  0x6730 PK11_Encrypt()
 23091 ms  0x6730 symkey:0x7f87d1f7e100
 23096 ms  0x6730 SSL_AuthCertificateComplete()
 23096 ms  0x6730 fd:0x7f87d7102370
 23096 ms  0x6730 err:0x0
 23096 ms  0x6730 PK11_Encrypt()
 23096 ms  0x6730 symkey:0x7f87d07f8200
 23144 ms  SECKEY_ECParamsToKeySize()
 23145 ms  0x6730 ret:0x100
 23145 ms  0x6730 SECKEY_CreateECPrivateKey()
 23145 ms  0x6730 cx:0x7f87d0b06728
 23145 ms     | 0x6730 EC_ValidatePublicKey()
 23148 ms     | 0x6730 ret:0x0
 23148 ms  0x6730 ret:0x7f87d0b41820::7f87d0b41820  10 6f b7 d3                                      .o..
 23148 ms  0x6730 PK11_PubDeriveWithKDF()
 23148 ms  0x6730 seckey:0x7f87d0b41820
 23148 ms     | 0x6730 EC_ValidatePublicKey()
 23149 ms     | 0x6730 ret:0x0
 23151 ms  0x6730 ret:0x7f87d0c54d80
 23151 ms  0x6730 PK11_DeriveWithFlags()
 23151 ms  0x6730 basekey:0x7f87d0c54d80
 23151 ms     | 0x6730 PK11_DeriveWithTemplate()
 23151 ms  0x6730 ret:0x7f87d1d9f800
 23151 ms  0x6730 PK11_Derive()
 23151 ms  0x6730 basekey:0x7f87d1d9f800
 23151 ms     | 0x6730 PK11_DeriveWithTemplate()
 23151 ms  0x6730 ret:0x7f87d1d9f900
 23151 ms  0x6730 SECKEY_DestroyPrivateKey()
 23151 ms  0x6730 privk:0x7f87d0b41820::7f87d0b41820  10 6f b7 d3                                      .o..
 23151 ms  0x6730 privk:0x7f87d0b41820::7f87d0b41820  e5 e5 e5 e5                                      ....
 23151 ms  0x6730 PK11_Encrypt()
 23151 ms  0x6730 symkey:0x7f87d1fe2c00
 23151 ms  0x6730 SSL_AuthCertificateComplete()
 23151 ms  0x6730 fd:0x7f87d71024f0
 23151 ms  0x6730 err:0x0
 23152 ms  0x6730 PK11_Encrypt()
 23152 ms  0x6730 symkey:0x7f87d1fe2c00
 23152 ms  0x6730 PK11_Encrypt()
 23152 ms  0x6730 symkey:0x7f87d1fe2c00
 23164 ms  SECKEY_ECParamsToKeySize()
 23164 ms  0x6730 ret:0x100
 23164 ms  0x6730 SECKEY_CreateECPrivateKey()
 23164 ms  0x6730 cx:0x7f87d0b07288
 23165 ms     | 0x6730 EC_ValidatePublicKey()
 23166 ms     | 0x6730 ret:0x0
 23166 ms  0x6730 ret:0x7f87d0b44020::7f87d0b44020  b0 6f b7 d3                                      .o..
 23166 ms  0x6730 PK11_PubDeriveWithKDF()
 23166 ms  0x6730 seckey:0x7f87d0b44020
 23166 ms     | 0x6730 EC_ValidatePublicKey()
 23168 ms     | 0x6730 ret:0x0
 23169 ms  0x6730 ret:0x7f87d0c54d80
 23169 ms  0x6730 PK11_DeriveWithFlags()
 23169 ms  0x6730 basekey:0x7f87d0c54d80
 23169 ms     | 0x6730 PK11_DeriveWithTemplate()
 23169 ms  0x6730 ret:0x7f87d1fe3800
 23169 ms  0x6730 PK11_Derive()
 23169 ms  0x6730 basekey:0x7f87d1fe3800
 23169 ms     | 0x6730 PK11_DeriveWithTemplate()
 23169 ms  0x6730 ret:0x7f87d1fe3880
 23169 ms  0x6730 SECKEY_DestroyPrivateKey()
 23169 ms  0x6730 privk:0x7f87d0b44020::7f87d0b44020  b0 6f b7 d3                                      .o..
 23169 ms  0x6730 privk:0x7f87d0b44020::7f87d0b44020  e5 e5 e5 e5                                      ....
 23170 ms  0x6730 PK11_Encrypt()
 23170 ms  0x6730 symkey:0x7f87d210a000
 23170 ms  0x6730 SSL_AuthCertificateComplete()
 23170 ms  0x6730 fd:0x7f87d7110220
 23170 ms  0x6730 err:0x0
 23170 ms  0x6730 PK11_Encrypt()
 23170 ms  0x6730 symkey:0x7f87d210a000
 23170 ms  0x6730 PK11_Encrypt()
 23170 ms  0x6730 symkey:0x7f87d1f7e100
 23177 ms  SECKEY_ECParamsToKeySize()
 23177 ms  0x6730 ret:0x100
 23177 ms  0x6730 SECKEY_CreateECPrivateKey()
 23177 ms  0x6730 cx:0x7f87d0b070e8
 23178 ms     | 0x6730 EC_ValidatePublicKey()
 23179 ms     | 0x6730 ret:0x0
 23179 ms  0x6730 ret:0x7f87d0b46820::7f87d0b46820  d0 13 56 d5                                      ..V.
 23179 ms  0x6730 PK11_PubDeriveWithKDF()
 23179 ms  0x6730 seckey:0x7f87d0b46820
 23180 ms     | 0x6730 EC_ValidatePublicKey()
 23181 ms     | 0x6730 ret:0x0
 23183 ms  0x6730 ret:0x7f87d0c54d80
 23183 ms  0x6730 PK11_DeriveWithFlags()
 23183 ms  0x6730 basekey:0x7f87d0c54d80
 23183 ms     | 0x6730 PK11_DeriveWithTemplate()
 23183 ms  0x6730 ret:0x7f87d1d9ea80
 23183 ms  0x6730 PK11_Derive()
 23183 ms  0x6730 basekey:0x7f87d1d9ea80
 23183 ms     | 0x6730 PK11_DeriveWithTemplate()
 23183 ms  0x6730 ret:0x7f87d210a100
 23183 ms  0x6730 SECKEY_DestroyPrivateKey()
 23183 ms  0x6730 privk:0x7f87d0b46820::7f87d0b46820  d0 13 56 d5                                      ..V.
 23183 ms  0x6730 privk:0x7f87d0b46820::7f87d0b46820  e5 e5 e5 e5                                      ....
 23183 ms  0x6730 PK11_Encrypt()
 23183 ms  0x6730 symkey:0x7f87d210a280
 23183 ms  0x6730 SSL_AuthCertificateComplete()
 23183 ms  0x6730 fd:0x7f87d70e4850
 23183 ms  0x6730 err:0x0
 23183 ms  0x6730 PK11_Encrypt()
 23183 ms  0x6730 symkey:0x7f87d210a280
 23184 ms  SECKEY_ECParamsToKeySize()
 23184 ms  0x6730 ret:0x100
 23184 ms  0x6730 SECKEY_CreateECPrivateKey()
 23184 ms  0x6730 cx:0x7f87d0b06da8
 23185 ms     | 0x6730 EC_ValidatePublicKey()
 23187 ms     | 0x6730 ret:0x0
 23187 ms  0x6730 ret:0x7f87d0b48820::7f87d0b48820  10 1a 56 d5                                      ..V.
 23187 ms  0x6730 PK11_PubDeriveWithKDF()
 23187 ms  0x6730 seckey:0x7f87d0b48820
 23187 ms     | 0x6730 EC_ValidatePublicKey()
 23188 ms     | 0x6730 ret:0x0
 23190 ms  0x6730 ret:0x7f87d0c54d80
 23190 ms  0x6730 PK11_DeriveWithFlags()
 23190 ms  0x6730 basekey:0x7f87d0c54d80
 23190 ms     | 0x6730 PK11_DeriveWithTemplate()
 23190 ms  0x6730 ret:0x7f87d210a380
 23190 ms  0x6730 PK11_Derive()
 23190 ms  0x6730 basekey:0x7f87d210a380
 23190 ms     | 0x6730 PK11_DeriveWithTemplate()
 23190 ms  0x6730 ret:0x7f87d210a500
 23190 ms  0x6730 SECKEY_DestroyPrivateKey()
 23190 ms  0x6730 privk:0x7f87d0b48820::7f87d0b48820  10 1a 56 d5                                      ..V.
 23190 ms  0x6730 privk:0x7f87d0b48820::7f87d0b48820  e5 e5 e5 e5                                      ....
 23190 ms  0x6730 PK11_Encrypt()
 23190 ms  0x6730 symkey:0x7f87d210a680
 23191 ms  0x6730 PK11_Encrypt()
 23191 ms  0x6730 symkey:0x7f87d1f7e100
 23191 ms  0x6730 SSL_AuthCertificateComplete()
 23191 ms  0x6730 fd:0x7f87bfaea280
 23191 ms  0x6730 err:0x0
 23191 ms  0x6730 PK11_Encrypt()
 23191 ms  0x6730 symkey:0x7f87d210a680
 23192 ms  SECKEY_ECParamsToKeySize()
 23192 ms  0x6730 ret:0x100
 23192 ms  0x6730 SECKEY_CreateECPrivateKey()
 23192 ms  0x6730 cx:0x7f87d0b06a68
 23193 ms     | 0x6730 EC_ValidatePublicKey()
 23194 ms     | 0x6730 ret:0x0
 23194 ms  0x6730 ret:0x7f87d0b4b020::7f87d0b4b020  d0 1d 56 d5                                      ..V.
 23194 ms  0x6730 PK11_PubDeriveWithKDF()
 23194 ms  0x6730 seckey:0x7f87d0b4b020
 23194 ms     | 0x6730 EC_ValidatePublicKey()
 23199 ms     | 0x6730 ret:0x0
 23201 ms  0x6730 ret:0x7f87d0c54d80
 23201 ms  0x6730 PK11_DeriveWithFlags()
 23201 ms  0x6730 basekey:0x7f87d0c54d80
 23201 ms     | 0x6730 PK11_DeriveWithTemplate()
 23201 ms  0x6730 ret:0x7f87d210a780
 23201 ms  0x6730 PK11_Derive()
 23201 ms  0x6730 basekey:0x7f87d210a780
 23201 ms     | 0x6730 PK11_DeriveWithTemplate()
 23201 ms  0x6730 ret:0x7f87d210a800
 23201 ms  0x6730 SECKEY_DestroyPrivateKey()
 23201 ms  0x6730 privk:0x7f87d0b4b020::7f87d0b4b020  d0 1d 56 d5                                      ..V.
 23201 ms  0x6730 privk:0x7f87d0b4b020::7f87d0b4b020  e5 e5 e5 e5                                      ....
 23201 ms  0x6730 PK11_Encrypt()
 23201 ms  0x6730 symkey:0x7f87d210a980
 23202 ms  0x6730 PK11_Encrypt()
 23202 ms  0x6730 symkey:0x7f87d1f7e100
 23202 ms  0x6730 SSL_AuthCertificateComplete()
 23202 ms  0x6730 fd:0x7f87d7110340
 23202 ms  0x6730 err:0x0
 23203 ms  SECKEY_ECParamsToKeySize()
 23203 ms  0x6730 ret:0x100
 23203 ms  0x6730 SECKEY_CreateECPrivateKey()
 23203 ms  0x6730 cx:0x7f87d0b06f48
 23203 ms     | 0x6730 EC_ValidatePublicKey()
 23205 ms     | 0x6730 ret:0x0
 23205 ms  0x6730 ret:0x7f87d0b4c820::7f87d0b4c820  00 db e7 d5                                      ....
 23205 ms  0x6730 PK11_PubDeriveWithKDF()
 23205 ms  0x6730 seckey:0x7f87d0b4c820
 23205 ms     | 0x6730 EC_ValidatePublicKey()
 23207 ms     | 0x6730 ret:0x0
 23208 ms  0x6730 ret:0x7f87d0c54d80
 23208 ms  0x6730 PK11_DeriveWithFlags()
 23208 ms  0x6730 basekey:0x7f87d0c54d80
 23208 ms     | 0x6730 PK11_DeriveWithTemplate()
 23208 ms  0x6730 ret:0x7f87d210aa80
 23208 ms  0x6730 PK11_Derive()
 23208 ms  0x6730 basekey:0x7f87d210aa80
 23208 ms     | 0x6730 PK11_DeriveWithTemplate()
 23208 ms  0x6730 ret:0x7f87d210ab00
 23208 ms  0x6730 SECKEY_DestroyPrivateKey()
 23208 ms  0x6730 privk:0x7f87d0b4c820::7f87d0b4c820  00 db e7 d5                                      ....
 23208 ms  0x6730 privk:0x7f87d0b4c820::7f87d0b4c820  e5 e5 e5 e5                                      ....
 23208 ms  0x6730 PK11_Encrypt()
 23208 ms  0x6730 symkey:0x7f87d210ac80
 23209 ms  0x6730 PK11_Encrypt()
 23209 ms  0x6730 symkey:0x7f87d210a980
 23209 ms  0x6730 SSL_AuthCertificateComplete()
 23209 ms  0x6730 fd:0x7f87bfaea850
 23209 ms  0x6730 err:0x0
 23209 ms  0x6730 PK11_Encrypt()
 23209 ms  0x6730 symkey:0x7f87d1f7e100
 23210 ms  0x6730 PK11_Encrypt()
 23210 ms  0x6730 symkey:0x7f87d210ac80
 23210 ms  0x6730 PK11_Encrypt()
 23210 ms  0x6730 symkey:0x7f87d1f7e100
 23273 ms  SECKEY_ECParamsToKeySize()
 23273 ms  0x6730 ret:0x100
 23273 ms  0x6730 SECKEY_CreateECPrivateKey()
 23273 ms  0x6730 cx:0x7f87d0b07908
 23275 ms     | 0x6730 EC_ValidatePublicKey()
 23276 ms     | 0x6730 ret:0x0
 23277 ms  0x6730 ret:0x7f87d0b50820::7f87d0b50820  10 df e7 d5                                      ....
 23277 ms  0x6730 PK11_PubDeriveWithKDF()
 23277 ms  0x6730 seckey:0x7f87d0b50820
 23277 ms     | 0x6730 EC_ValidatePublicKey()
 23279 ms     | 0x6730 ret:0x0
 23281 ms  0x6730 ret:0x7f87d0c54d80
 23281 ms  0x6730 PK11_DeriveWithFlags()
 23281 ms  0x6730 basekey:0x7f87d0c54d80
 23281 ms     | 0x6730 PK11_DeriveWithTemplate()
 23281 ms  0x6730 ret:0x7f87d1fe2900
 23281 ms  0x6730 PK11_Derive()
 23281 ms  0x6730 basekey:0x7f87d1fe2900
 23281 ms     | 0x6730 PK11_DeriveWithTemplate()
 23281 ms  0x6730 ret:0x7f87d210ad80
 23281 ms  0x6730 SECKEY_DestroyPrivateKey()
 23281 ms  0x6730 privk:0x7f87d0b50820::7f87d0b50820  10 df e7 d5                                      ....
 23281 ms  0x6730 privk:0x7f87d0b50820::7f87d0b50820  e5 e5 e5 e5                                      ....
 23282 ms  0x6730 SSL_AuthCertificateComplete()
 23282 ms  0x6730 fd:0x7f87d1df5460
 23282 ms  0x6730 err:0x0
 23295 ms  SECKEY_ECParamsToKeySize()
 23295 ms  0x6730 ret:0x100
 23295 ms  0x6730 SECKEY_CreateECPrivateKey()
 23295 ms  0x6730 cx:0x7f87d0b07428
 23296 ms     | 0x6730 EC_ValidatePublicKey()
 23298 ms     | 0x6730 ret:0x0
 23298 ms  0x6730 ret:0x7f87d0b51820::7f87d0b51820  a0 61 55 d6                                      .aU.
 23298 ms  0x6730 PK11_PubDeriveWithKDF()
 23298 ms  0x6730 seckey:0x7f87d0b51820
 23298 ms     | 0x6730 EC_ValidatePublicKey()
 23300 ms     | 0x6730 ret:0x0
 23302 ms  0x6730 ret:0x7f87d0c54d80
 23302 ms  0x6730 PK11_DeriveWithFlags()
 23302 ms  0x6730 basekey:0x7f87d0c54d80
 23302 ms     | 0x6730 PK11_DeriveWithTemplate()
 23303 ms  0x6730 ret:0x7f87d215e080
 23303 ms  0x6730 PK11_Derive()
 23303 ms  0x6730 basekey:0x7f87d215e080
 23303 ms     | 0x6730 PK11_DeriveWithTemplate()
 23303 ms  0x6730 ret:0x7f87d215e300
 23303 ms  0x6730 SECKEY_DestroyPrivateKey()
 23303 ms  0x6730 privk:0x7f87d0b51820::7f87d0b51820  a0 61 55 d6                                      .aU.
 23303 ms  0x6730 privk:0x7f87d0b51820::7f87d0b51820  e5 e5 e5 e5                                      ....
 23303 ms  0x6730 PK11_Encrypt()
 23303 ms  0x6730 symkey:0x7f87d215e680
 23303 ms  0x6730 SSL_AuthCertificateComplete()
 23303 ms  0x6730 fd:0x7f87d07f4640
 23303 ms  0x6730 err:0x0
 23305 ms  0x6730 SECKEY_DestroyPrivateKey()
 23305 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  40 fc 4c d2                                      @.L.
 23305 ms  0x6730 privk:0x7f87d718d020::7f87d718d020  e5 e5 e5 e5                                      ....
 23305 ms  0x6730 SECKEY_DestroyPrivateKey()
 23305 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  60 7f 44 d2                                      `.D.
 23305 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  e5 e5 e5 e5                                      ....
 23320 ms  SECKEY_ECParamsToKeySize()
 23320 ms  0x6730 ret:0x100
 23320 ms  0x6730 SECKEY_CreateECPrivateKey()
 23320 ms  0x6730 cx:0x7f87d0b07de8
 23321 ms     | 0x6730 EC_ValidatePublicKey()
 23323 ms     | 0x6730 ret:0x0
 23323 ms  0x6730 ret:0x7f87d0b52820::7f87d0b52820  d0 13 56 d5                                      ..V.
 23324 ms  0x6730 PK11_PubDeriveWithKDF()
 23324 ms  0x6730 seckey:0x7f87d0b52820
 23324 ms     | 0x6730 EC_ValidatePublicKey()
 23328 ms     | 0x6730 ret:0x0
 23330 ms  0x6730 ret:0x7f87d0c54d80
 23330 ms  0x6730 PK11_DeriveWithFlags()
 23330 ms  0x6730 basekey:0x7f87d0c54d80
 23330 ms     | 0x6730 PK11_DeriveWithTemplate()
 23330 ms  0x6730 ret:0x7f87d215ea80
 23330 ms  0x6730 PK11_Derive()
 23330 ms  0x6730 basekey:0x7f87d215ea80
 23330 ms     | 0x6730 PK11_DeriveWithTemplate()
 23331 ms  0x6730 ret:0x7f87d215eb00
 23331 ms  0x6730 SECKEY_DestroyPrivateKey()
 23331 ms  0x6730 privk:0x7f87d0b52820::7f87d0b52820  d0 13 56 d5                                      ..V.
 23331 ms  0x6730 privk:0x7f87d0b52820::7f87d0b52820  e5 e5 e5 e5                                      ....
 23331 ms  0x6730 PK11_Encrypt()
 23331 ms  0x6730 symkey:0x7f87d21a9380
 23331 ms  0x6730 SSL_AuthCertificateComplete()
 23331 ms  0x6730 fd:0x7f87d71025b0
 23331 ms  0x6730 err:0x0
 23331 ms  0x6730 PK11_Encrypt()
 23331 ms  0x6730 symkey:0x7f87d21a9380
 23333 ms  SECKEY_ECParamsToKeySize()
 23333 ms  0x6730 ret:0x100
 23333 ms  0x6730 SECKEY_CreateECPrivateKey()
 23333 ms  0x6730 cx:0x7f87d0b08468
 23334 ms     | 0x6730 EC_ValidatePublicKey()
 23336 ms     | 0x6730 ret:0x0
 23336 ms  0x6730 ret:0x7f87d718a820::7f87d718a820  90 02 5c d5                                      ..\.
 23336 ms  0x6730 PK11_PubDeriveWithKDF()
 23336 ms  0x6730 seckey:0x7f87d718a820
 23336 ms     | 0x6730 EC_ValidatePublicKey()
 23338 ms     | 0x6730 ret:0x0
 23340 ms  0x6730 ret:0x7f87d0c54d80
 23340 ms  0x6730 PK11_DeriveWithFlags()
 23340 ms  0x6730 basekey:0x7f87d0c54d80
 23340 ms     | 0x6730 PK11_DeriveWithTemplate()
 23340 ms  0x6730 ret:0x7f87d21a9780
 23340 ms  0x6730 PK11_Derive()
 23340 ms  0x6730 basekey:0x7f87d21a9780
 23340 ms     | 0x6730 PK11_DeriveWithTemplate()
 23340 ms  0x6730 ret:0x7f87d21a9a00
 23340 ms  0x6730 SECKEY_DestroyPrivateKey()
 23340 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  90 02 5c d5                                      ..\.
 23340 ms  0x6730 privk:0x7f87d718a820::7f87d718a820  e5 e5 e5 e5                                      ....
 23340 ms  0x6730 PK11_Encrypt()
 23340 ms  0x6730 symkey:0x7f87d21aa100
 23341 ms  0x6730 SSL_AuthCertificateComplete()
 23341 ms  0x6730 fd:0x7f87d2193640
 23341 ms  0x6730 err:0x0
 23341 ms  0x6730 PK11_Encrypt()
 23341 ms  0x6730 symkey:0x7f87d21aa100
 23347 ms  0x6730 SECKEY_DestroyPrivateKey()
 23347 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  40 47 4f d2                                      @GO.
 23347 ms  0x6730 privk:0x7f87da5b7820::7f87da5b7820  e5 e5 e5 e5                                      ....
 23347 ms  0x6730 SECKEY_DestroyPrivateKey()
 23347 ms  0x6730 privk:0x7f87d7197020::7f87d7197020  c0 fe 4c d2                                      ..L.
 23347 ms  0x6730 privk:0x7f87d7197020::7f87d7197020  e5 e5 e5 e5                                      ....
 23347 ms  0x6730 PK11_Encrypt()
 23347 ms  0x6730 symkey:0x7f87d1f7e100
           /* TID 0x6738 */
 23352 ms  0x6738 PR_Close()
 23352 ms  0x6738 fd:0x7f87d2135490
 23352 ms  0x6738 PR_Close()
 23352 ms  0x6738 fd:0x7f87bfaea5b0
 23354 ms  0x6738 PR_Close()
 23354 ms  0x6738 fd:0x7f87bfaea5b0
 23356 ms  0x6738 PR_Close()
 23356 ms  0x6738 fd:0x7f87d07f49d0
           /* TID 0x6730 */
 23378 ms  0x6730 SECKEY_DestroyPrivateKey()
 23378 ms  0x6730 privk:0x7f87d28cf020::7f87d28cf020  50 7b 44 d2                                      P{D.
 23378 ms  0x6730 privk:0x7f87d28cf020::7f87d28cf020  e5 e5 e5 e5                                      ....
 23378 ms  0x6730 SECKEY_DestroyPrivateKey()
 23378 ms  0x6730 privk:0x7f87bfadd020::7f87bfadd020  20 74 44 d2                                       tD.
 23380 ms  0x6730 privk:0x7f87bfadd020::7f87bfadd020  e5 e5 e5 e5                                      ....
 23424 ms  SECKEY_ECParamsToKeySize()
 23424 ms  0x6730 ret:0x100
 23424 ms  0x6730 SECKEY_CreateECPrivateKey()
 23424 ms  0x6730 cx:0x7f87d0b075c8
 23425 ms     | 0x6730 EC_ValidatePublicKey()
 23428 ms     | 0x6730 ret:0x0
 23428 ms  0x6730 ret:0x7f87d0b3e820::7f87d0b3e820  20 74 44 d2                                       tD.
 23428 ms  0x6730 PK11_PubDeriveWithKDF()
 23428 ms  0x6730 seckey:0x7f87d0b3e820
 23428 ms     | 0x6730 EC_ValidatePublicKey()
 23431 ms     | 0x6730 ret:0x0
 23435 ms  0x6730 ret:0x7f87d0c54d80
 23435 ms  0x6730 PK11_DeriveWithFlags()
 23435 ms  0x6730 basekey:0x7f87d0c54d80
 23435 ms     | 0x6730 PK11_DeriveWithTemplate()
 23435 ms  0x6730 ret:0x7f87d1625580
 23435 ms  0x6730 PK11_Derive()
 23435 ms  0x6730 basekey:0x7f87d1625580
 23435 ms     | 0x6730 PK11_DeriveWithTemplate()
 23436 ms  0x6730 ret:0x7f87d1625680
 23436 ms  0x6730 SECKEY_DestroyPrivateKey()
 23436 ms  0x6730 privk:0x7f87d0b3e820::7f87d0b3e820  20 74 44 d2                                       tD.
 23436 ms  0x6730 privk:0x7f87d0b3e820::7f87d0b3e820  e5 e5 e5 e5                                      ....
 23436 ms  0x6730 PK11_Encrypt()
 23436 ms  0x6730 symkey:0x7f87d21aaa80
 23436 ms  0x6730 SSL_AuthCertificateComplete()
 23436 ms  0x6730 fd:0x7f87d0c50be0
 23436 ms  0x6730 err:0x0
 23438 ms  0x6730 PK11_Encrypt()
 23438 ms  0x6730 symkey:0x7f87d21aaa80
 23439 ms  0x6730 PR_Close()
 23439 ms  0x6730 fd:0x7f87d6dfe130
 23439 ms     | 0x6730 PK11_Encrypt()
 23439 ms     | 0x6730 symkey:0x7f87bf8db100
 23474 ms  0x6730 SECKEY_DestroyPrivateKey()
 23474 ms  0x6730 privk:0x7f87da5c9020::7f87da5c9020  d0 4d 4f d2                                      .MO.
 23475 ms  0x6730 privk:0x7f87da5c9020::7f87da5c9020  e5 e5 e5 e5                                      ....
 23475 ms  0x6730 SECKEY_DestroyPrivateKey()
 23475 ms  0x6730 privk:0x7f87da5c3020::7f87da5c3020  a0 4b 4f d2                                      .KO.
 23475 ms  0x6730 privk:0x7f87da5c3020::7f87da5c3020  e5 e5 e5 e5                                      ....
 23475 ms  0x6730 PK11_Encrypt()
 23475 ms  0x6730 symkey:0x7f87d1fe2c00
 23494 ms  0x6730 SECKEY_DestroyPrivateKey()
 23494 ms  0x6730 privk:0x7f87dabeb820::7f87dabeb820  10 f5 4f d2                                      ..O.
 23495 ms  0x6730 privk:0x7f87dabeb820::7f87dabeb820  e5 e5 e5 e5                                      ....
 23495 ms  0x6730 SECKEY_DestroyPrivateKey()
 23495 ms  0x6730 privk:0x7f87dabe6820::7f87dabe6820  30 f3 4f d2                                      0.O.
 23495 ms  0x6730 privk:0x7f87dabe6820::7f87dabe6820  e5 e5 e5 e5                                      ....
 23495 ms  0x6730 PR_Close()
 23495 ms  0x6730 fd:0x7f87d7110220
 23495 ms     | 0x6730 PK11_Encrypt()
 23495 ms     | 0x6730 symkey:0x7f87d210a000
 23519 ms  0x6730 SECKEY_DestroyPrivateKey()
 23519 ms  0x6730 privk:0x7f87dac90820::7f87dac90820  80 f8 4f d2                                      ..O.
 23519 ms  0x6730 privk:0x7f87dac90820::7f87dac90820  e5 e5 e5 e5                                      ....
 23519 ms  0x6730 SECKEY_DestroyPrivateKey()
 23519 ms  0x6730 privk:0x7f87dac89020::7f87dac89020  50 f6 4f d2                                      P.O.
 23520 ms  0x6730 privk:0x7f87dac89020::7f87dac89020  e5 e5 e5 e5                                      ....
 23520 ms  0x6730 PR_Close()
 23520 ms  0x6730 fd:0x7f87d70e4850
 23520 ms     | 0x6730 PK11_Encrypt()
 23520 ms     | 0x6730 symkey:0x7f87d210a280
 23525 ms  0x6730 SECKEY_DestroyPrivateKey()
 23525 ms  0x6730 privk:0x7f87db50c020::7f87db50c020  f0 fb 4f d2                                      ..O.
 23525 ms  0x6730 privk:0x7f87db50c020::7f87db50c020  e5 e5 e5 e5                                      ....
 23525 ms  0x6730 SECKEY_DestroyPrivateKey()
 23525 ms  0x6730 privk:0x7f87dac93020::7f87dac93020  10 fa 4f d2                                      ..O.
 23525 ms  0x6730 privk:0x7f87dac93020::7f87dac93020  e5 e5 e5 e5                                      ....
 23526 ms  0x6730 PR_Close()
 23526 ms  0x6730 fd:0x7f87bfaea280
 23526 ms     | 0x6730 PK11_Encrypt()
 23526 ms     | 0x6730 symkey:0x7f87d210a680
 23527 ms  0x6730 SECKEY_DestroyPrivateKey()
 23527 ms  0x6730 privk:0x7f87da5d2820::7f87da5d2820  f0 f1 4f d2                                      ..O.
 23527 ms  0x6730 privk:0x7f87da5d2820::7f87da5d2820  e5 e5 e5 e5                                      ....
 23527 ms  0x6730 SECKEY_DestroyPrivateKey()
 23527 ms  0x6730 privk:0x7f87da5cc820::7f87da5cc820  10 4f 4f d2                                      .OO.
 23527 ms  0x6730 privk:0x7f87da5cc820::7f87da5cc820  e5 e5 e5 e5                                      ....
 23528 ms  0x6730 PR_Close()
 23528 ms  0x6730 fd:0x7f87d7110340
 23528 ms     | 0x6730 PK11_Encrypt()
 23528 ms     | 0x6730 symkey:0x7f87d210a980
 23549 ms  0x6730 SECKEY_DestroyPrivateKey()
 23549 ms  0x6730 privk:0x7f87db523820::7f87db523820  a0 8b dc d2                                      ....
 23549 ms  0x6730 privk:0x7f87db523820::7f87db523820  e5 e5 e5 e5                                      ....
 23550 ms  0x6730 SECKEY_DestroyPrivateKey()
 23550 ms  0x6730 privk:0x7f87db521820::7f87db521820  20 89 dc d2                                       ...
 23550 ms  0x6730 privk:0x7f87db521820::7f87db521820  e5 e5 e5 e5                                      ....
 23552 ms  0x6730 SECKEY_DestroyPrivateKey()
 23552 ms  0x6730 privk:0x7f87db517020::7f87db517020  10 ff 4f d2                                      ..O.
 23552 ms  0x6730 privk:0x7f87db517020::7f87db517020  e5 e5 e5 e5                                      ....
 23552 ms  0x6730 SECKEY_DestroyPrivateKey()
 23552 ms  0x6730 privk:0x7f87db510820::7f87db510820  30 fd 4f d2                                      0.O.
 23552 ms  0x6730 privk:0x7f87db510820::7f87db510820  e5 e5 e5 e5                                      ....
 23553 ms  0x6730 PR_Close()
 23553 ms  0x6730 fd:0x7f87bfaea850
 23553 ms     | 0x6730 PK11_Encrypt()
 23553 ms     | 0x6730 symkey:0x7f87d210ac80
           /* TID 0x6738 */
 23572 ms  0x6738 PR_Close()
 23572 ms  0x6738 fd:0x7f87bfabb490
           /* TID 0x6730 */
 23574 ms  0x6730 PR_Close()
 23574 ms  0x6730 fd:0x7f87d7102730
 23602 ms  0x6730 SECKEY_DestroyPrivateKey()
 23602 ms  0x6730 privk:0x7f87db5b9020::7f87db5b9020  50 71 b6 d3                                      Pq..
 23603 ms  0x6730 privk:0x7f87db5b9020::7f87db5b9020  e5 e5 e5 e5                                      ....
 23603 ms  0x6730 SECKEY_DestroyPrivateKey()
 23603 ms  0x6730 privk:0x7f87db529820::7f87db529820  b0 8f dc d2                                      ....
 23603 ms  0x6730 privk:0x7f87db529820::7f87db529820  e5 e5 e5 e5                                      ....
 23604 ms  0x6730 PR_Close()
 23604 ms  0x6730 fd:0x7f87d71025b0
 23604 ms     | 0x6730 PK11_Encrypt()
 23604 ms     | 0x6730 symkey:0x7f87d21a9380
 23613 ms  0x6730 SECKEY_DestroyPrivateKey()
 23613 ms  0x6730 privk:0x7f87db51f020::7f87db51f020  a0 86 dc d2                                      ....
 23614 ms  0x6730 privk:0x7f87db51f020::7f87db51f020  e5 e5 e5 e5                                      ....
 23614 ms  0x6730 SECKEY_DestroyPrivateKey()
 23614 ms  0x6730 privk:0x7f87db51a820::7f87db51a820  60 80 dc d2                                      `...
 23614 ms  0x6730 privk:0x7f87db51a820::7f87db51a820  e5 e5 e5 e5                                      ....
 23618 ms  0x6730 SECKEY_DestroyPrivateKey()
 23618 ms  0x6730 privk:0x7f87db5bd820::7f87db5bd820  70 74 b6 d3                                      pt..
 23619 ms  0x6730 privk:0x7f87db5bd820::7f87db5bd820  e5 e5 e5 e5                                      ....
 23619 ms  0x6730 SECKEY_DestroyPrivateKey()
 23619 ms  0x6730 privk:0x7f87db5bb820::7f87db5bb820  90 72 b6 d3                                      .r..
 23620 ms  0x6730 privk:0x7f87db5bb820::7f87db5bb820  e5 e5 e5 e5                                      ....
 23620 ms  0x6730 PR_Close()
 23620 ms  0x6730 fd:0x7f87d2193640
 23620 ms     | 0x6730 PK11_Encrypt()
 23620 ms     | 0x6730 symkey:0x7f87d21aa100
           /* TID 0x6738 */
 23625 ms  0x6738 PR_Close()
 23625 ms  0x6738 fd:0x7f87bfabb490
 23639 ms  0x6738 PR_Close()
 23639 ms  0x6738 fd:0x7f87bfabb490
 23642 ms  0x6738 PR_Close()
 23642 ms  0x6738 fd:0x7f87bfabb490
 23644 ms  0x6738 PR_Close()
 23644 ms  0x6738 fd:0x7f87bfabb490
 23647 ms  0x6738 PR_Close()
 23647 ms  0x6738 fd:0x7f87bfabb490
 23649 ms  0x6738 PR_Close()
 23649 ms  0x6738 fd:0x7f87bfabb490
 23650 ms  0x6738 PR_Close()
 23650 ms  0x6738 fd:0x7f87bfabb490
 23652 ms  0x6738 PR_Close()
 23652 ms  0x6738 fd:0x7f87bfabb490
 23654 ms  0x6738 PR_Close()
 23654 ms  0x6738 fd:0x7f87bfabb490
 23657 ms  0x6738 PR_Close()
 23657 ms  0x6738 fd:0x7f87bfabb490
 23659 ms  0x6738 PR_Close()
 23659 ms  0x6738 fd:0x7f87bfabb490
 23660 ms  0x6738 PR_Close()
 23660 ms  0x6738 fd:0x7f87bfabb490
 23661 ms  0x6738 PR_Close()
 23661 ms  0x6738 fd:0x7f87bfabb490
 23662 ms  0x6738 PR_Close()
 23662 ms  0x6738 fd:0x7f87bfabb490
 23664 ms  0x6738 PR_Close()
 23664 ms  0x6738 fd:0x7f87bfabb490
 23665 ms  0x6738 PR_Close()
 23665 ms  0x6738 fd:0x7f87bfabb490
 23666 ms  0x6738 PR_Close()
 23666 ms  0x6738 fd:0x7f87bfabb490
 23667 ms  0x6738 PR_Close()
 23667 ms  0x6738 fd:0x7f87bfabb490
 23668 ms  0x6738 PR_Close()
 23668 ms  0x6738 fd:0x7f87bfabb490
 23669 ms  0x6738 PR_Close()
 23669 ms  0x6738 fd:0x7f87bfabb490
 23670 ms  0x6738 PR_Close()
 23670 ms  0x6738 fd:0x7f87bfabb490
 23671 ms  0x6738 PR_Close()
 23671 ms  0x6738 fd:0x7f87bfabb490
 23672 ms  0x6738 PR_Close()
 23672 ms  0x6738 fd:0x7f87bfabb490
 23673 ms  0x6738 PR_Close()
 23673 ms  0x6738 fd:0x7f87bfabb490
 23674 ms  0x6738 PR_Close()
 23674 ms  0x6738 fd:0x7f87bfabb490
 23675 ms  0x6738 PR_Close()
 23675 ms  0x6738 fd:0x7f87bfabb490
 23676 ms  0x6738 PR_Close()
 23676 ms  0x6738 fd:0x7f87bfabb490
 23677 ms  0x6738 PR_Close()
 23677 ms  0x6738 fd:0x7f87bfabb490
 23678 ms  0x6738 PR_Close()
 23678 ms  0x6738 fd:0x7f87bfabb490
 23679 ms  0x6738 PR_Close()
 23679 ms  0x6738 fd:0x7f87bfabb490
 23681 ms  0x6738 PR_Close()
 23681 ms  0x6738 fd:0x7f87bfabb490
 23682 ms  0x6738 PR_Close()
 23682 ms  0x6738 fd:0x7f87bfabb490
 23682 ms  0x6738 PR_Close()
 23682 ms  0x6738 fd:0x7f87bfabb490
 23684 ms  0x6738 PR_Close()
 23684 ms  0x6738 fd:0x7f87bfabb490
 23685 ms  0x6738 PR_Close()
 23685 ms  0x6738 fd:0x7f87bfabb490
 23686 ms  0x6738 PR_Close()
 23686 ms  0x6738 fd:0x7f87bfabb490
 23687 ms  0x6738 PR_Close()
 23687 ms  0x6738 fd:0x7f87bfabb490
 23689 ms  0x6738 PR_Close()
 23689 ms  0x6738 fd:0x7f87bfaea850
 23690 ms  0x6738 PR_Close()
 23690 ms  0x6738 fd:0x7f87bfaea580
           /* TID 0x6730 */
 23697 ms  0x6730 PK11_Encrypt()
 23697 ms  0x6730 symkey:0x7f87d0c54a00
 23771 ms  0x6730 SECKEY_DestroyPrivateKey()
 23771 ms  0x6730 privk:0x7f87d0b3d820::7f87d0b3d820  80 6d b7 d3                                      .m..
 23771 ms  0x6730 privk:0x7f87d0b3d820::7f87d0b3d820  e5 e5 e5 e5                                      ....
 23771 ms  0x6730 SECKEY_DestroyPrivateKey()
 23771 ms  0x6730 privk:0x7f87d0b3b820::7f87d0b3b820  60 7f b6 d3                                      `...
 23772 ms  0x6730 privk:0x7f87d0b3b820::7f87d0b3b820  e5 e5 e5 e5                                      ....
 23772 ms  0x6730 PR_Close()
 23772 ms  0x6730 fd:0x7f87d0c50be0
 23772 ms     | 0x6730 PK11_Encrypt()
 23772 ms     | 0x6730 symkey:0x7f87d21aaa80
           /* TID 0x6738 */
 23805 ms  0x6738 PR_Close()
 23805 ms  0x6738 fd:0x7f87bfaea1c0
           /* TID 0x6730 */
 24107 ms  0x6730 PK11_Encrypt()
 24107 ms  0x6730 symkey:0x7f87bf7ea780
 24211 ms  0x6730 SECKEY_CreateECPrivateKey()
 24211 ms  0x6730 cx:0x7f87db54ac88
 24213 ms     | 0x6730 EC_ValidatePublicKey()
 24213 ms     | 0x6730 ret:0x0
 24213 ms  0x6730 ret:0x7f87bfae0020::7f87bfae0020  80 c8 86 bf                                      ....
 24214 ms  0x6730 SECKEY_CreateECPrivateKey()
 24214 ms  0x6730 cx:0x7f87db54ac88
 24216 ms     | 0x6730 EC_ValidatePublicKey()
 24221 ms     | 0x6730 ret:0x0
 24221 ms  0x6730 ret:0x7f87d0b35820::7f87d0b35820  a0 cb 86 bf                                      ....
           /* TID 0x6738 */
 24437 ms  0x6738 PR_Close()
 24437 ms  0x6738 fd:0x7f87bfaea280
           /* TID 0x6730 */
 24514 ms  0x6730 PK11_Derive()
 24514 ms  0x6730 basekey:0x7f87d1625580
 24514 ms     | 0x6730 PK11_DeriveWithTemplate()
 24514 ms  0x6730 ret:0x7f87d1625680
 24514 ms  0x6730 PK11_Encrypt()
 24514 ms  0x6730 symkey:0x7f87d21aa500
 24519 ms  0x6730 SECKEY_DestroyPrivateKey()
 24519 ms  0x6730 privk:0x7f87d0b35820::7f87d0b35820  a0 cb 86 bf                                      ....
 24519 ms  0x6730 privk:0x7f87d0b35820::7f87d0b35820  e5 e5 e5 e5                                      ....
 24519 ms  0x6730 SECKEY_DestroyPrivateKey()
 24519 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  80 c8 86 bf                                      ....
 24519 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  e5 e5 e5 e5                                      ....
 24696 ms  0x6730 PR_Close()
 24696 ms  0x6730 fd:0x7f87d7102370
 24696 ms     | 0x6730 PK11_Encrypt()
 24696 ms     | 0x6730 symkey:0x7f87d07f8200
 25057 ms  0x6730 SSL_ImportFD()
 25057 ms  0x6730 ret:0x7f87bfaea5e0
 25057 ms  0x6730 SSL_AuthCertificateHook()
 25057 ms  0x6730 fd:0x7f87bfaea5e0
 25057 ms  0x6730 ret:0x0
 25057 ms  0x6730 PR_Connect()
 25057 ms  0x6730 fd:0x7f87bfaea5e0
 25307 ms  0x6730 SSL_ImportFD()
 25308 ms  0x6730 ret:0x7f87d07f4760
 25308 ms  0x6730 SSL_AuthCertificateHook()
 25308 ms  0x6730 fd:0x7f87d07f4760
 25308 ms  0x6730 ret:0x0
 25308 ms  0x6730 PR_Connect()
 25308 ms  0x6730 fd:0x7f87d07f4760
 25435 ms  0x6730 SECKEY_CreateECPrivateKey()
 25435 ms  0x6730 cx:0x7f87d0b06a68
 25437 ms     | 0x6730 EC_ValidatePublicKey()
 25437 ms     | 0x6730 ret:0x0
 25437 ms  0x6730 ret:0x7f87d0b34020::7f87d0b34020  80 cd 86 bf                                      ....
 25437 ms  0x6730 SECKEY_CreateECPrivateKey()
 25437 ms  0x6730 cx:0x7f87d0b06a68
 25445 ms     | 0x6730 EC_ValidatePublicKey()
 25449 ms     | 0x6730 ret:0x0
 25449 ms  0x6730 ret:0x7f87d0b37020::7f87d0b37020  90 07 9b bf                                      ....
 25502 ms  0x6730 PR_Close()
 25502 ms  0x6730 fd:0x7f87d7006790
 25503 ms     | 0x6730 PK11_Encrypt()
 25503 ms     | 0x6730 symkey:0x7f87d21aa500
 25627 ms  0x6730 SECKEY_CreateECPrivateKey()
 25627 ms  0x6730 cx:0x7f87d0b06da8
 25629 ms     | 0x6730 EC_ValidatePublicKey()
 25629 ms     | 0x6730 ret:0x0
 25629 ms  0x6730 ret:0x7f87d0b37820::7f87d0b37820  30 0d 9b bf                                      0...
 25629 ms  0x6730 SECKEY_CreateECPrivateKey()
 25629 ms  0x6730 cx:0x7f87d0b06da8
 25631 ms     | 0x6730 EC_ValidatePublicKey()
 25635 ms     | 0x6730 ret:0x0
 25635 ms  0x6730 ret:0x7f87d0b3a020::7f87d0b3a020  90 d2 ab bf                                      ....
 25831 ms  SECKEY_ECParamsToKeySize()
 25832 ms  0x6730 ret:0x100
 25832 ms  0x6730 SECKEY_CreateECPrivateKey()
 25832 ms  0x6730 cx:0x7f87d0b06a68
 25833 ms     | 0x6730 EC_ValidatePublicKey()
 25838 ms     | 0x6730 ret:0x0
 25838 ms  0x6730 ret:0x7f87d0b42820::7f87d0b42820  50 d6 ab bf                                      P...
 25838 ms  0x6730 PK11_PubDeriveWithKDF()
 25838 ms  0x6730 seckey:0x7f87d0b42820
 25838 ms     | 0x6730 EC_ValidatePublicKey()
 25843 ms     | 0x6730 ret:0x0
 25847 ms  0x6730 ret:0x7f87d1625680
 25847 ms  0x6730 PK11_DeriveWithFlags()
 25847 ms  0x6730 basekey:0x7f87d1625680
 25847 ms     | 0x6730 PK11_DeriveWithTemplate()
 25847 ms  0x6730 ret:0x7f87d1625580
 25847 ms  0x6730 PK11_Derive()
 25847 ms  0x6730 basekey:0x7f87d1625580
 25847 ms     | 0x6730 PK11_DeriveWithTemplate()
 25847 ms  0x6730 ret:0x7f87bf7e9d00
 25847 ms  0x6730 SECKEY_DestroyPrivateKey()
 25847 ms  0x6730 privk:0x7f87d0b42820::7f87d0b42820  50 d6 ab bf                                      P...
 25848 ms  0x6730 privk:0x7f87d0b42820::7f87d0b42820  e5 e5 e5 e5                                      ....
 25848 ms  0x6730 PK11_Encrypt()
 25848 ms  0x6730 symkey:0x7f87d21aa900
 25850 ms  0x6730 SSL_AuthCertificateComplete()
 25850 ms  0x6730 fd:0x7f87bfaea5e0
 25850 ms  0x6730 err:0x0
 25851 ms  0x6730 PK11_Encrypt()
 25851 ms  0x6730 symkey:0x7f87d21aa900
 26216 ms  0x6730 SECKEY_DestroyPrivateKey()
 26216 ms  0x6730 privk:0x7f87d0b37020::7f87d0b37020  90 07 9b bf                                      ....
 26217 ms  0x6730 privk:0x7f87d0b37020::7f87d0b37020  e5 e5 e5 e5                                      ....
 26217 ms  0x6730 SECKEY_DestroyPrivateKey()
 26217 ms  0x6730 privk:0x7f87d0b34020::7f87d0b34020  80 cd 86 bf                                      ....
 26217 ms  0x6730 privk:0x7f87d0b34020::7f87d0b34020  e5 e5 e5 e5                                      ....
 26451 ms  0x6730 PR_Close()
 26451 ms  0x6730 fd:0x7f87d70e4b80
 26451 ms     | 0x6730 PK11_Encrypt()
 26451 ms     | 0x6730 symkey:0x7f87d0a95a80
 26600 ms  0x6730 SSL_ImportFD()
 26600 ms  0x6730 ret:0x7f87d07f4a90
 26600 ms  0x6730 SSL_AuthCertificateHook()
 26600 ms  0x6730 fd:0x7f87d07f4a90
 26600 ms  0x6730 ret:0x0
 26600 ms  0x6730 PR_Connect()
 26600 ms  0x6730 fd:0x7f87d07f4a90
           /* TID 0x6738 */
 26613 ms  0x6738 PR_Close()
 26613 ms  0x6738 fd:0x7f87d07f42b0
           /* TID 0x6730 */
 26855 ms  0x6730 SSL_ImportFD()
 26855 ms  0x6730 ret:0x7f87d07f4e50
 26855 ms  0x6730 SSL_AuthCertificateHook()
 26855 ms  0x6730 fd:0x7f87d07f4e50
 26855 ms  0x6730 ret:0x0
 26855 ms  0x6730 PR_Connect()
 26855 ms  0x6730 fd:0x7f87d07f4e50
 26863 ms  0x6730 SECKEY_CreateECPrivateKey()
 26863 ms  0x6730 cx:0x7f87d0b070e8
 26865 ms     | 0x6730 EC_ValidatePublicKey()
 26865 ms     | 0x6730 ret:0x0
 26865 ms  0x6730 ret:0x7f87bfae0020::7f87bfae0020  10 d5 ab bf                                      ....
 26865 ms  0x6730 SECKEY_CreateECPrivateKey()
 26865 ms  0x6730 cx:0x7f87d0b070e8
 26869 ms     | 0x6730 EC_ValidatePublicKey()
 26877 ms     | 0x6730 ret:0x0
 26878 ms  0x6730 ret:0x7f87d0b36020::7f87d0b36020  30 d8 ab bf                                      0...
 27129 ms  0x6730 SECKEY_CreateECPrivateKey()
 27129 ms  0x6730 cx:0x7f87d0b075c8
 27130 ms     | 0x6730 EC_ValidatePublicKey()
 27130 ms     | 0x6730 ret:0x0
 27130 ms  0x6730 ret:0x7f87d0b42820::7f87d0b42820  40 dc ab bf                                      @...
 27130 ms  0x6730 SECKEY_CreateECPrivateKey()
 27130 ms  0x6730 cx:0x7f87d0b075c8
 27132 ms     | 0x6730 EC_ValidatePublicKey()
 27139 ms     | 0x6730 ret:0x0
 27139 ms  0x6730 ret:0x7f87d0b44820::7f87d0b44820  a0 b1 ae bf                                      ....
 27146 ms  SECKEY_ECParamsToKeySize()
 27146 ms  0x6730 ret:0x100
 27147 ms  0x6730 SECKEY_CreateECPrivateKey()
 27147 ms  0x6730 cx:0x7f87d0b070e8
 27148 ms     | 0x6730 EC_ValidatePublicKey()
 27151 ms     | 0x6730 ret:0x0
 27151 ms  0x6730 ret:0x7f87d0b4d020::7f87d0b4d020  50 c6 d3 d1                                      P...
 27151 ms  0x6730 PK11_PubDeriveWithKDF()
 27151 ms  0x6730 seckey:0x7f87d0b4d020
 27151 ms     | 0x6730 EC_ValidatePublicKey()
 27156 ms     | 0x6730 ret:0x0
 27158 ms  0x6730 ret:0x7f87d08eff00
 27158 ms  0x6730 PK11_DeriveWithFlags()
 27158 ms  0x6730 basekey:0x7f87d08eff00
 27158 ms     | 0x6730 PK11_DeriveWithTemplate()
 27158 ms  0x6730 ret:0x7f87d08f6e00
 27158 ms  0x6730 PK11_Derive()
 27158 ms  0x6730 basekey:0x7f87d08f6e00
 27158 ms     | 0x6730 PK11_DeriveWithTemplate()
 27158 ms  0x6730 ret:0x7f87d1625680
 27158 ms  0x6730 SECKEY_DestroyPrivateKey()
 27158 ms  0x6730 privk:0x7f87d0b4d020::7f87d0b4d020  50 c6 d3 d1                                      P...
 27159 ms  0x6730 privk:0x7f87d0b4d020::7f87d0b4d020  e5 e5 e5 e5                                      ....
 27159 ms  0x6730 PK11_Encrypt()
 27159 ms  0x6730 symkey:0x7f87d0a95880
           /* TID 0x6738 */
 27187 ms  0x6738 PR_Close()
 27187 ms  0x6738 fd:0x7f87d0c50c70
           /* TID 0x67dd */
 27188 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 27188 ms  0x67dd ret:0x0
 27188 ms  0x67dd _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 27188 ms  0x67dd ret:0x0
           /* TID 0x6730 */
 27188 ms  0x6730 SSL_AuthCertificateComplete()
 27188 ms  0x6730 fd:0x7f87d07f4a90
 27188 ms  0x6730 err:0x0
 27189 ms  0x6730 PK11_Encrypt()
 27189 ms  0x6730 symkey:0x7f87d0a95880
 27189 ms  0x6730 PK11_Encrypt()
 27189 ms  0x6730 symkey:0x7f87d0a95880
 27416 ms  SECKEY_ECParamsToKeySize()
 27416 ms  0x6730 ret:0x100
 27416 ms  0x6730 SECKEY_CreateECPrivateKey()
 27416 ms  0x6730 cx:0x7f87d0b075c8
 27418 ms     | 0x6730 EC_ValidatePublicKey()
 27423 ms     | 0x6730 ret:0x0
 27423 ms  0x6730 ret:0x7f87d0b4d820::7f87d0b4d820  90 d7 61 d1                                      ..a.
 27424 ms  0x6730 PK11_PubDeriveWithKDF()
 27424 ms  0x6730 seckey:0x7f87d0b4d820
 27424 ms     | 0x6730 EC_ValidatePublicKey()
 27427 ms     | 0x6730 ret:0x0
 27432 ms  0x6730 ret:0x7f87d08eff00
 27432 ms  0x6730 PK11_DeriveWithFlags()
 27432 ms  0x6730 basekey:0x7f87d08eff00
 27432 ms     | 0x6730 PK11_DeriveWithTemplate()
 27432 ms  0x6730 ret:0x7f87d07f8100
 27432 ms  0x6730 PK11_Derive()
 27432 ms  0x6730 basekey:0x7f87d07f8100
 27432 ms     | 0x6730 PK11_DeriveWithTemplate()
 27432 ms  0x6730 ret:0x7f87d21a9a00
 27432 ms  0x6730 SECKEY_DestroyPrivateKey()
 27432 ms  0x6730 privk:0x7f87d0b4d820::7f87d0b4d820  90 d7 61 d1                                      ..a.
 27432 ms  0x6730 privk:0x7f87d0b4d820::7f87d0b4d820  e5 e5 e5 e5                                      ....
 27433 ms  0x6730 PK11_Encrypt()
 27433 ms  0x6730 symkey:0x7f87d07f8280
 27433 ms  0x6730 SSL_AuthCertificateComplete()
 27433 ms  0x6730 fd:0x7f87d07f4e50
 27433 ms  0x6730 err:0x0
 27434 ms  0x6730 SECKEY_DestroyPrivateKey()
 27434 ms  0x6730 privk:0x7f87d0b36020::7f87d0b36020  30 d8 ab bf                                      0...
 27434 ms  0x6730 privk:0x7f87d0b36020::7f87d0b36020  e5 e5 e5 e5                                      ....
 27434 ms  0x6730 SECKEY_DestroyPrivateKey()
 27434 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  10 d5 ab bf                                      ....
 27434 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  e5 e5 e5 e5                                      ....
 27434 ms  0x6730 PK11_Encrypt()
 27434 ms  0x6730 symkey:0x7f87d0a95880
 27435 ms  0x6730 PK11_Encrypt()
 27435 ms  0x6730 symkey:0x7f87d07f8280
 27624 ms  SECKEY_ECParamsToKeySize()
 27624 ms  0x6730 ret:0x100
 27624 ms  0x6730 SECKEY_CreateECPrivateKey()
 27624 ms  0x6730 cx:0x7f87d0b06da8
 27626 ms     | 0x6730 EC_ValidatePublicKey()
 27630 ms     | 0x6730 ret:0x0
 27630 ms  0x6730 ret:0x7f87d0b34820::7f87d0b34820  90 d7 ab bf                                      ....
 27632 ms  0x6730 PK11_PubDeriveWithKDF()
 27632 ms  0x6730 seckey:0x7f87d0b34820
 27632 ms     | 0x6730 EC_ValidatePublicKey()
 27636 ms     | 0x6730 ret:0x0
 27640 ms  0x6730 ret:0x7f87d08eff00
 27640 ms  0x6730 PK11_DeriveWithFlags()
 27640 ms  0x6730 basekey:0x7f87d08eff00
 27640 ms     | 0x6730 PK11_DeriveWithTemplate()
 27641 ms  0x6730 ret:0x7f87d21a9780
 27641 ms  0x6730 PK11_Derive()
 27641 ms  0x6730 basekey:0x7f87d21a9780
 27641 ms     | 0x6730 PK11_DeriveWithTemplate()
 27641 ms  0x6730 ret:0x7f87d215eb00
 27641 ms  0x6730 SECKEY_DestroyPrivateKey()
 27641 ms  0x6730 privk:0x7f87d0b34820::7f87d0b34820  90 d7 ab bf                                      ....
 27641 ms  0x6730 privk:0x7f87d0b34820::7f87d0b34820  e5 e5 e5 e5                                      ....
 27641 ms  0x6730 PK11_Encrypt()
 27641 ms  0x6730 symkey:0x7f87d21a9e00
 27642 ms  0x6730 SSL_AuthCertificateComplete()
 27642 ms  0x6730 fd:0x7f87d07f4760
 27642 ms  0x6730 err:0x0
           /* TID 0x6738 */
 27691 ms  0x6738 PR_Close()
 27691 ms  0x6738 fd:0x7f87bf768550
           /* TID 0x6730 */
 27707 ms  0x6730 SECKEY_DestroyPrivateKey()
 27707 ms  0x6730 privk:0x7f87d0b44820::7f87d0b44820  a0 b1 ae bf                                      ....
 27707 ms  0x6730 privk:0x7f87d0b44820::7f87d0b44820  e5 e5 e5 e5                                      ....
 27707 ms  0x6730 SECKEY_DestroyPrivateKey()
 27707 ms  0x6730 privk:0x7f87d0b42820::7f87d0b42820  40 dc ab bf                                      @...
 27708 ms  0x6730 privk:0x7f87d0b42820::7f87d0b42820  e5 e5 e5 e5                                      ....
 27708 ms  0x6730 PR_Close()
 27708 ms  0x6730 fd:0x7f87d07f4e50
 27708 ms     | 0x6730 PK11_Encrypt()
 27708 ms     | 0x6730 symkey:0x7f87d07f8280
 27961 ms  0x6730 SECKEY_DestroyPrivateKey()
 27961 ms  0x6730 privk:0x7f87d0b3a020::7f87d0b3a020  90 d2 ab bf                                      ....
 27962 ms  0x6730 privk:0x7f87d0b3a020::7f87d0b3a020  e5 e5 e5 e5                                      ....
 27962 ms  0x6730 SECKEY_DestroyPrivateKey()
 27962 ms  0x6730 privk:0x7f87d0b37820::7f87d0b37820  30 0d 9b bf                                      0...
 27962 ms  0x6730 privk:0x7f87d0b37820::7f87d0b37820  e5 e5 e5 e5                                      ....
           /* TID 0x679e */
 28200 ms  0x679e PR_Close()
 28200 ms  0x679e fd:0x7f87bfaea430
 28203 ms  0x679e PR_Close()
 28203 ms  0x679e fd:0x7f87bfaea430
           /* TID 0x6738 */
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87bfaea430
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d07f4e50
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d0c50b80
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1673220
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1673f10
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d168f370
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5250
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5520
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df55b0
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5640
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5730
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5910
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5a30
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5bb0
 28357 ms  0x6738 PR_Close()
 28357 ms  0x6738 fd:0x7f87d1df5dc0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe80a0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8160
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe82b0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe83d0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8670
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8730
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8850
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8940
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8a00
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8b20
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d1fe8fa0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2135190
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d21353a0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2135490
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2135610
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2135b20
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d21930a0
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2193130
 28358 ms  0x6738 PR_Close()
 28358 ms  0x6738 fd:0x7f87d2193190
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d21931f0
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d21932b0
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d2193310
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d21936a0
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d21937f0
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d21938e0
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d3b69250
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d3b69400
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d6dfe160
 28359 ms  0x6738 PR_Close()
 28359 ms  0x6738 fd:0x7f87d6dfe220
           /* TID 0x6730 */
 28452 ms  0x6730 PR_Close()
 28452 ms  0x6730 fd:0x7f87d1df5460
 28453 ms  0x6730 PR_Close()
 28453 ms  0x6730 fd:0x7f87d07f4640
 28454 ms     | 0x6730 PK11_Encrypt()
 28454 ms     | 0x6730 symkey:0x7f87d215e680
           /* TID 0x679e */
 29129 ms  0x679e PR_Close()
 29129 ms  0x679e fd:0x7f87bfaea430
 29131 ms  0x679e PR_Close()
 29131 ms  0x679e fd:0x7f87bfaea430
           /* TID 0x6730 */
 29756 ms  0x6730 PR_Close()
 29756 ms  0x6730 fd:0x7f87d0c50400
 29757 ms     | 0x6730 PK11_Encrypt()
 29757 ms     | 0x6730 symkey:0x7f87d1d48580
 31221 ms  0x6730 PR_Close()
 31221 ms  0x6730 fd:0x7f87d0c503a0
 31221 ms     | 0x6730 PK11_Encrypt()
 31221 ms     | 0x6730 symkey:0x7f87d16df380
 31453 ms  0x6730 PR_Close()
 31453 ms  0x6730 fd:0x7f87d07f4760
 31453 ms     | 0x6730 PK11_Encrypt()
 31453 ms     | 0x6730 symkey:0x7f87d21a9e00
 34699 ms  0x6730 PR_Close()
 34699 ms  0x6730 fd:0x7f87d7006640
 34699 ms     | 0x6730 PK11_Encrypt()
 34699 ms     | 0x6730 symkey:0x7f87d0c54a00
 45899 ms  0x6730 PK11_Encrypt()
 45899 ms  0x6730 symkey:0x7f87bf79ff00
 45900 ms  0x6730 PR_Close()
 45900 ms  0x6730 fd:0x7f87bfa81730
 45900 ms     | 0x6730 PK11_Encrypt()
 45900 ms     | 0x6730 symkey:0x7f87bf79ff00
 49956 ms  0x6730 PK11_Encrypt()
 49956 ms  0x6730 symkey:0x7f87d3ba1d80
 49957 ms  0x6730 PR_Close()
 49957 ms  0x6730 fd:0x7f87d3b9d4f0
 49957 ms     | 0x6730 PK11_Encrypt()
 49957 ms     | 0x6730 symkey:0x7f87d3ba1d80
           /* TID 0x679e */
 57678 ms  0x679e PR_Close()
 57678 ms  0x679e fd:0x7f87bfaeae80
 57682 ms  0x679e PR_Close()
 57682 ms  0x679e fd:0x7f87bfaeaeb0
 57699 ms  0x679e PR_Close()
 57699 ms  0x679e fd:0x7f87d07f4ca0
 57708 ms  0x679e PR_Close()
 57708 ms  0x679e fd:0x7f87d0aaf1f0
 58177 ms  0x679e PR_Close()
 58177 ms  0x679e fd:0x7f87bfaea940
 58181 ms  0x679e PR_Close()
 58181 ms  0x679e fd:0x7f87bfaea940
           /* TID 0x6730 */
 58709 ms  0x6730 PR_Connect()
 58709 ms  0x6730 fd:0x7f87d162b130
 60765 ms  0x6730 PR_Close()
 60765 ms  0x6730 fd:0x7f87d162b7f0
 60765 ms     | 0x6730 PK11_Encrypt()
 60765 ms     | 0x6730 symkey:0x7f87df0a1280
           /* TID 0x679e */
 64861 ms  0x679e PR_Close()
 64861 ms  0x679e fd:0x7f87d07f40d0
 64909 ms  0x679e PR_Close()
 64909 ms  0x679e fd:0x7f87d07f40d0
           /* TID 0x6730 */
 65542 ms  0x6730 PK11_Encrypt()
 65542 ms  0x6730 symkey:0x7f87d08ee380
 67543 ms  0x6730 PK11_Encrypt()
 67543 ms  0x6730 symkey:0x7f87d0fb0200
 68544 ms  0x6730 PK11_Encrypt()
 68544 ms  0x6730 symkey:0x7f87d07f8a00
 68544 ms  0x6730 PK11_Encrypt()
 68544 ms  0x6730 symkey:0x7f87d0a96f00
 68975 ms  0x6730 PR_Close()
 68975 ms  0x6730 fd:0x7f87bf768730
 68975 ms     | 0x6730 PK11_Encrypt()
 68975 ms     | 0x6730 symkey:0x7f87d08f6b00
 70546 ms  0x6730 PK11_Encrypt()
 70546 ms  0x6730 symkey:0x7f87d0fb1800
 70547 ms  0x6730 PK11_Encrypt()
 70547 ms  0x6730 symkey:0x7f87d0fb1c00
 70547 ms  0x6730 PK11_Encrypt()
 70547 ms  0x6730 symkey:0x7f87d08f6a00
 71138 ms  0x6730 PR_Close()
 71138 ms  0x6730 fd:0x7f87d3b69eb0
 72549 ms  0x6730 PK11_Encrypt()
 72549 ms  0x6730 symkey:0x7f87bf7e9980
 77551 ms  0x6730 PK11_Encrypt()
 77551 ms  0x6730 symkey:0x7f87d1624c80
 82554 ms  0x6730 PK11_Encrypt()
 82554 ms  0x6730 symkey:0x7f87d1fe2c00
 82555 ms  0x6730 PK11_Encrypt()
 82555 ms  0x6730 symkey:0x7f87d1f7e100
 82555 ms  0x6730 PK11_Encrypt()
 82555 ms  0x6730 symkey:0x7f87bf7ea780
 84655 ms  0x6730 PR_Close()
 84655 ms  0x6730 fd:0x7f87d3b691f0
 84655 ms     | 0x6730 PK11_Encrypt()
 84655 ms     | 0x6730 symkey:0x7f87d0fb0c80
 86557 ms  0x6730 PK11_Encrypt()
 86557 ms  0x6730 symkey:0x7f87d0a95880
 88285 ms  0x6730 PR_Close()
 88285 ms  0x6730 fd:0x7f87d0c0e790
 88286 ms     | 0x6730 PK11_Encrypt()
 88286 ms     | 0x6730 symkey:0x7f87bf8f4e80
 94276 ms  0x6730 PR_Close()
 94276 ms  0x6730 fd:0x7f87d6a68700
 94276 ms     | 0x6730 PK11_Encrypt()
 94276 ms     | 0x6730 symkey:0x7f87d0a96080
 95314 ms  0x6730 PR_Close()
 95314 ms  0x6730 fd:0x7f87d6adb940
 95314 ms     | 0x6730 PK11_Encrypt()
 95314 ms     | 0x6730 symkey:0x7f87d08f6080
 97074 ms  0x6730 PR_Close()
 97074 ms  0x6730 fd:0x7f87d6dfe430
 97074 ms     | 0x6730 PK11_Encrypt()
 97074 ms     | 0x6730 symkey:0x7f87bf7eae80
 98564 ms  0x6730 PR_Close()
 98564 ms  0x6730 fd:0x7f87d6a128e0
 98564 ms  0x6730 PR_Close()
 98564 ms  0x6730 fd:0x7f87d0c50070
 98582 ms  0x6730 PR_Close()
 98582 ms  0x6730 fd:0x7f87d1673be0
           /* TID 0x6725 */
 98590 ms  0x6725 EC_ValidatePublicKey()
 98594 ms  0x6725 ret:0x0
 98595 ms  0x6725 EC_ValidatePublicKey()
 98598 ms  0x6725 ret:0x0
 98598 ms  0x6725 EC_ValidatePublicKey()
 98601 ms  0x6725 ret:0x0
 98601 ms  0x6725 EC_ValidatePublicKey()
 98603 ms  0x6725 ret:0x0
 98604 ms  0x6725 EC_ValidatePublicKey()
 98606 ms  0x6725 ret:0x0
 98606 ms  0x6725 EC_ValidatePublicKey()
 98608 ms  0x6725 ret:0x0
 98608 ms  0x6725 EC_ValidatePublicKey()
 98610 ms  0x6725 ret:0x0
 98610 ms  0x6725 EC_ValidatePublicKey()
 98612 ms  0x6725 ret:0x0
 98612 ms  0x6725 EC_ValidatePublicKey()
 98614 ms  0x6725 ret:0x0
 98614 ms  0x6725 EC_ValidatePublicKey()
 98616 ms  0x6725 ret:0x0
           /* TID 0x6730 */
 98616 ms  0x6730 PK11_Encrypt()
 98616 ms  0x6730 symkey:0x7f87d08ee380
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d0fb0200
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d1fe2c00
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d0fb1800
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d1f7e100
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d0a95880
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d07f8a00
 98618 ms  0x6730 PK11_Encrypt()
 98618 ms  0x6730 symkey:0x7f87d1624c80
 98619 ms  0x6730 PK11_Encrypt()
 98619 ms  0x6730 symkey:0x7f87bf7e9980
 98619 ms  0x6730 PK11_Encrypt()
 98619 ms  0x6730 symkey:0x7f87d0fb1c00
 98619 ms  0x6730 PK11_Encrypt()
 98619 ms  0x6730 symkey:0x7f87bf7ea780
 98619 ms  0x6730 PK11_Encrypt()
 98619 ms  0x6730 symkey:0x7f87d08f6a00
 98619 ms  0x6730 PK11_Encrypt()
 98619 ms  0x6730 symkey:0x7f87d0a96f00
 98619 ms  0x6730 PR_Close()
 98619 ms  0x6730 fd:0x7f87d3b3e340
 98619 ms     | 0x6730 PK11_Encrypt()
 98619 ms     | 0x6730 symkey:0x7f87d0c54480
 98619 ms  0x6730 PR_Close()
 98619 ms  0x6730 fd:0x7f87d6a68d90
 98619 ms  0x6730 PR_Close()
 98619 ms  0x6730 fd:0x7f87bfaea5e0
 98619 ms     | 0x6730 PK11_Encrypt()
 98619 ms     | 0x6730 symkey:0x7f87d21aa900
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87bfaea760
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d0c50250
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87bfaea7c0
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d168fd60
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d7102100
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d08e6b50
 98620 ms     | 0x6730 PK11_Encrypt()
 98620 ms     | 0x6730 symkey:0x7f87f8d17900
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d3bffb20
 98620 ms  0x6730 PR_Close()
 98620 ms  0x6730 fd:0x7f87d0aaf850
 98621 ms     | 0x6730 PK11_Encrypt()
 98621 ms     | 0x6730 symkey:0x7f87d2109680
 98621 ms  0x6730 PR_Close()
 98621 ms  0x6730 fd:0x7f87d162b130
 98621 ms  0x6730 PR_Close()
 98621 ms  0x6730 fd:0x7f87d07f40a0
           /* TID 0x6787 */
 98621 ms  0x6787 PR_Close()
 98621 ms  0x6787 fd:0x7f87bfa815e0
 98621 ms  0x6787 PR_Close()
 98621 ms  0x6787 fd:0x7f87bfa815e0
           /* TID 0x6730 */
 98624 ms  0x6730 PR_Close()
 98624 ms  0x6730 fd:0x7f87d3b9d7f0
 98624 ms     | 0x6730 PK11_Encrypt()
 98624 ms     | 0x6730 symkey:0x7f87d1624c80
 98624 ms  0x6730 PR_Close()
 98624 ms  0x6730 fd:0x7f87d3bffd00
 98624 ms     | 0x6730 PK11_Encrypt()
 98624 ms     | 0x6730 symkey:0x7f87d0fb1c00
 98625 ms  0x6730 PR_Close()
 98625 ms  0x6730 fd:0x7f87d3b3e370
 98625 ms     | 0x6730 PK11_Encrypt()
 98625 ms     | 0x6730 symkey:0x7f87d0fb1800
 98625 ms  0x6730 PR_Close()
 98625 ms  0x6730 fd:0x7f87bfa81700
 98625 ms     | 0x6730 PK11_Encrypt()
 98625 ms     | 0x6730 symkey:0x7f87bf7ea780
 98625 ms  0x6730 PR_Close()
 98625 ms  0x6730 fd:0x7f87d07f4a90
 98625 ms     | 0x6730 PK11_Encrypt()
 98625 ms     | 0x6730 symkey:0x7f87d0a95880
 98625 ms  0x6730 PR_Close()
 98625 ms  0x6730 fd:0x7f87d0c50190
 98625 ms     | 0x6730 PK11_Encrypt()
 98625 ms     | 0x6730 symkey:0x7f87d0fb0200
 98626 ms  0x6730 PR_Close()
 98626 ms  0x6730 fd:0x7f87bfa815b0
 98626 ms     | 0x6730 PK11_Encrypt()
 98626 ms     | 0x6730 symkey:0x7f87bf7e9980
 98626 ms  0x6730 PR_Close()
 98626 ms  0x6730 fd:0x7f87bf768220
 98626 ms     | 0x6730 PK11_Encrypt()
 98626 ms     | 0x6730 symkey:0x7f87d0a96f00
 98626 ms  0x6730 PR_Close()
 98626 ms  0x6730 fd:0x7f87d71ed700
 98626 ms     | 0x6730 PK11_Encrypt()
 98626 ms     | 0x6730 symkey:0x7f87d1f7e100
 98626 ms  0x6730 PR_Close()
 98626 ms  0x6730 fd:0x7f87bfa81820
 98626 ms     | 0x6730 PK11_Encrypt()
 98626 ms     | 0x6730 symkey:0x7f87d08ee380
 98626 ms  0x6730 PR_Close()
 98626 ms  0x6730 fd:0x7f87bfa81130
 98626 ms     | 0x6730 PK11_Encrypt()
 98626 ms     | 0x6730 symkey:0x7f87d07f8a00
 98629 ms  0x6730 PR_Close()
 98629 ms  0x6730 fd:0x7f87d2dc47f0
 98629 ms     | 0x6730 PK11_Encrypt()
 98629 ms     | 0x6730 symkey:0x7f87d08f6a00
 98630 ms  0x6730 PR_Close()
 98630 ms  0x6730 fd:0x7f87d71024f0
 98630 ms     | 0x6730 PK11_Encrypt()
 98630 ms     | 0x6730 symkey:0x7f87d1fe2c00
 98631 ms  0x6730 SSL_ImportFD()
 98631 ms  0x6730 ret:0x7f87bfa81880
 98631 ms  0x6730 SSL_AuthCertificateHook()
 98631 ms  0x6730 fd:0x7f87bfa81880
 98631 ms  0x6730 ret:0x0
 98631 ms  0x6730 PR_Connect()
 98631 ms  0x6730 fd:0x7f87bfa81880
 98882 ms  0x6730 SSL_ImportFD()
 98882 ms  0x6730 ret:0x7f87bfaea4c0
 98882 ms  0x6730 SSL_AuthCertificateHook()
 98882 ms  0x6730 fd:0x7f87bfaea4c0
 98882 ms  0x6730 ret:0x0
 98882 ms  0x6730 PR_Connect()
 98882 ms  0x6730 fd:0x7f87bfaea4c0
 99018 ms  0x6730 SECKEY_CreateECPrivateKey()
 99018 ms  0x6730 cx:0x7f87d08eaa68
 99020 ms     | 0x6730 EC_ValidatePublicKey()
 99020 ms     | 0x6730 ret:0x0
 99020 ms  0x6730 ret:0x7f87bface020::7f87bface020  a0 db ab bf                                      ....
 99020 ms  0x6730 SECKEY_CreateECPrivateKey()
 99020 ms  0x6730 cx:0x7f87d08eaa68
 99022 ms     | 0x6730 EC_ValidatePublicKey()
 99027 ms     | 0x6730 ret:0x0
 99027 ms  0x6730 ret:0x7f87bfad0820::7f87bfad0820  40 07 9b bf                                      @...
           /* TID 0x67fd */
 99086 ms  0x67fd PR_Close()
 99086 ms  0x67fd fd:0x7f87bfa81130
 99090 ms  0x67fd PR_Close()
 99090 ms  0x67fd fd:0x7f87bfa81130
           /* TID 0x6730 */
 99242 ms  0x6730 SECKEY_CreateECPrivateKey()
 99242 ms  0x6730 cx:0x7f87d08eb288
 99244 ms     | 0x6730 EC_ValidatePublicKey()
 99244 ms     | 0x6730 ret:0x0
 99245 ms  0x6730 ret:0x7f87bfad3820::7f87bfad3820  00 b1 ae bf                                      ....
 99245 ms  0x6730 SECKEY_CreateECPrivateKey()
 99245 ms  0x6730 cx:0x7f87d08eb288
 99247 ms     | 0x6730 EC_ValidatePublicKey()
 99252 ms     | 0x6730 ret:0x0
 99252 ms  0x6730 ret:0x7f87bfad5820::7f87bfad5820  60 b5 ae bf                                      `...
 99423 ms  SECKEY_ECParamsToKeySize()
 99423 ms  0x6730 ret:0x100
 99423 ms  0x6730 SECKEY_CreateECPrivateKey()
 99423 ms  0x6730 cx:0x7f87d08eaa68
 99425 ms     | 0x6730 EC_ValidatePublicKey()
 99430 ms     | 0x6730 ret:0x0
 99430 ms  0x6730 ret:0x7f87bfadf020::7f87bfadf020  60 30 b2 d0                                      `0..
 99431 ms  0x6730 PK11_PubDeriveWithKDF()
 99431 ms  0x6730 seckey:0x7f87bfadf020
 99431 ms     | 0x6730 EC_ValidatePublicKey()
 99440 ms     | 0x6730 ret:0x0
 99445 ms  0x6730 ret:0x7f87d1d9f900
 99445 ms  0x6730 PK11_DeriveWithFlags()
 99445 ms  0x6730 basekey:0x7f87d1d9f900
 99445 ms     | 0x6730 PK11_DeriveWithTemplate()
 99445 ms  0x6730 ret:0x7f87d1d9f800
 99445 ms  0x6730 PK11_Derive()
 99445 ms  0x6730 basekey:0x7f87d1d9f800
 99445 ms     | 0x6730 PK11_DeriveWithTemplate()
 99445 ms  0x6730 ret:0x7f87d0fb0180
 99445 ms  0x6730 SECKEY_DestroyPrivateKey()
 99445 ms  0x6730 privk:0x7f87bfadf020::7f87bfadf020  60 30 b2 d0                                      `0..
 99446 ms  0x6730 privk:0x7f87bfadf020::7f87bfadf020  e5 e5 e5 e5                                      ....
 99446 ms  0x6730 PK11_Encrypt()
 99446 ms  0x6730 symkey:0x7f87d1d9fa00
 99447 ms  0x6730 PR_Connect()
 99447 ms  0x6730 fd:0x7f87bfaea9a0
           /* TID 0x67ff */
 99502 ms  0x67ff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 99502 ms  0x67ff ret:0x0
           /* TID 0x6738 */
 99503 ms  0x6738 PR_Close()
 99503 ms  0x6738 fd:0x7f87bfaea8e0
           /* TID 0x6730 */
 99504 ms  0x6730 SSL_AuthCertificateComplete()
 99504 ms  0x6730 fd:0x7f87bfa81880
 99504 ms  0x6730 err:0x0
 99504 ms  0x6730 PK11_Encrypt()
 99504 ms  0x6730 symkey:0x7f87d1d9fa00
 99618 ms  SECKEY_ECParamsToKeySize()
 99618 ms  0x6730 ret:0x100
 99618 ms  0x6730 SECKEY_CreateECPrivateKey()
 99618 ms  0x6730 cx:0x7f87d08eb288
 99620 ms     | 0x6730 EC_ValidatePublicKey()
 99625 ms     | 0x6730 ret:0x0
 99625 ms  0x6730 ret:0x7f87bfae0020::7f87bfae0020  70 34 b2 d0                                      p4..
 99625 ms  0x6730 PK11_PubDeriveWithKDF()
 99625 ms  0x6730 seckey:0x7f87bfae0020
 99625 ms     | 0x6730 EC_ValidatePublicKey()
 99630 ms     | 0x6730 ret:0x0
 99639 ms  0x6730 ret:0x7f87d1d9f900
 99639 ms  0x6730 PK11_DeriveWithFlags()
 99639 ms  0x6730 basekey:0x7f87d1d9f900
 99639 ms     | 0x6730 PK11_DeriveWithTemplate()
 99639 ms  0x6730 ret:0x7f87d08f6380
 99639 ms  0x6730 PK11_Derive()
 99639 ms  0x6730 basekey:0x7f87d08f6380
 99639 ms     | 0x6730 PK11_DeriveWithTemplate()
 99639 ms  0x6730 ret:0x7f87d07f8480
 99639 ms  0x6730 SECKEY_DestroyPrivateKey()
 99639 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  70 34 b2 d0                                      p4..
 99640 ms  0x6730 privk:0x7f87bfae0020::7f87bfae0020  e5 e5 e5 e5                                      ....
 99640 ms  0x6730 PK11_Encrypt()
 99640 ms  0x6730 symkey:0x7f87d08f6980
 99640 ms  0x6730 SSL_AuthCertificateComplete()
 99640 ms  0x6730 fd:0x7f87bfaea4c0
 99640 ms  0x6730 err:0x0
 99833 ms  0x6730 SECKEY_DestroyPrivateKey()
 99833 ms  0x6730 privk:0x7f87bfad0820::7f87bfad0820  40 07 9b bf                                      @...
 99833 ms  0x6730 privk:0x7f87bfad0820::7f87bfad0820  e5 e5 e5 e5                                      ....
 99833 ms  0x6730 SECKEY_DestroyPrivateKey()
 99833 ms  0x6730 privk:0x7f87bface020::7f87bface020  a0 db ab bf                                      ....
 99834 ms  0x6730 privk:0x7f87bface020::7f87bface020  e5 e5 e5 e5                                      ....
100000 ms  0x6730 SECKEY_DestroyPrivateKey()
100000 ms  0x6730 privk:0x7f87bfad5820::7f87bfad5820  60 b5 ae bf                                      `...
100000 ms  0x6730 privk:0x7f87bfad5820::7f87bfad5820  e5 e5 e5 e5                                      ....
100000 ms  0x6730 SECKEY_DestroyPrivateKey()
100000 ms  0x6730 privk:0x7f87bfad3820::7f87bfad3820  00 b1 ae bf                                      ....
100001 ms  0x6730 privk:0x7f87bfad3820::7f87bfad3820  e5 e5 e5 e5                                      ....
           /* TID 0x6738 */
100222 ms  0x6738 PR_Close()
100222 ms  0x6738 fd:0x7f87bfaead60
100223 ms  0x6738 PR_Close()
100223 ms  0x6738 fd:0x7f87bfa81e50
           /* TID 0x6725 */
100226 ms  0x6725 PR_Close()
100226 ms  0x6725 fd:0x7f87d2dc4a90
100227 ms  0x6725 PR_Close()
100227 ms  0x6725 fd:0x7f87d07f40a0
100227 ms  0x6725 PR_Close()
100227 ms  0x6725 fd:0x7f87d07f4100
100227 ms  0x6725 PR_Close()
100227 ms  0x6725 fd:0x7f87d07f40a0
100228 ms  0x6725 PR_Close()
100228 ms  0x6725 fd:0x7f87d07f4100
100228 ms  0x6725 PR_Close()
100228 ms  0x6725 fd:0x7f87d07f40a0
           /* TID 0x67fd */
100230 ms  0x67fd PR_Close()
100230 ms  0x67fd fd:0x7f87d07f40a0
           /* TID 0x6725 */
100246 ms  0x6725 PR_Close()
100246 ms  0x6725 fd:0x7f87d07f4100
100246 ms  0x6725 PR_Close()
100246 ms  0x6725 fd:0x7f87d0c0e820
100247 ms  0x6725 PR_Close()
100247 ms  0x6725 fd:0x7f87d07f4100
100247 ms  0x6725 PR_Close()
100247 ms  0x6725 fd:0x7f87d0c0e820
100247 ms  0x6725 PR_Close()
100247 ms  0x6725 fd:0x7f87dbac89a0
100247 ms  0x6725 PR_Close()
100247 ms  0x6725 fd:0x7f87dbac88b0
100247 ms  0x6725 PR_Close()
100247 ms  0x6725 fd:0x7f87dbac8a60
100249 ms  0x6725 PR_Close()
100249 ms  0x6725 fd:0x7f87d0aaf820
100251 ms  0x6725 PR_Close()
100251 ms  0x6725 fd:0x7f87d0aaf820
100253 ms  0x6725 PR_Close()
100253 ms  0x6725 fd:0x7f87d07f4100
100253 ms  0x6725 PR_Close()
100253 ms  0x6725 fd:0x7f87d0c0e850
100253 ms  0x6725 PR_Close()
100253 ms  0x6725 fd:0x7f87d07f4100
100253 ms  0x6725 PR_Close()
100253 ms  0x6725 fd:0x7f87d07f4c10
100256 ms  0x6725 PR_Close()
100256 ms  0x6725 fd:0x7f87d0c0e850
100257 ms  0x6725 PR_Close()
100257 ms  0x6725 fd:0x7f87d0c0e850
100259 ms  0x6725 PR_Close()
100259 ms  0x6725 fd:0x7f87d07f4100
100259 ms  0x6725 PR_Close()
100259 ms  0x6725 fd:0x7f87d0c0e8e0
100259 ms  0x6725 PR_Close()
100259 ms  0x6725 fd:0x7f87d07f4100
100259 ms  0x6725 PR_Close()
100259 ms  0x6725 fd:0x7f87d0c0e8e0
100262 ms  0x6725 PR_Close()
100262 ms  0x6725 fd:0x7f87d0c0e940
100263 ms  0x6725 PR_Close()
100263 ms  0x6725 fd:0x7f87d0c0e940
100269 ms  0x6725 PR_Close()
100269 ms  0x6725 fd:0x7f87d0c0efa0
100270 ms  0x6725 PR_Close()
100270 ms  0x6725 fd:0x7f87d0c0efa0
100272 ms  0x6725 PR_Close()
100272 ms  0x6725 fd:0x7f87d0c50040
100278 ms  0x6725 PR_Close()
100278 ms  0x6725 fd:0x7f87d07f4100
100278 ms  0x6725 PR_Close()
100278 ms  0x6725 fd:0x7f87d0c500d0
           /* TID 0x6730 */
100281 ms  0x6730 PK11_Encrypt()
100281 ms  0x6730 symkey:0x7f87bf7e9e80
           /* TID 0x67fd */
100285 ms  0x67fd PR_Close()
100285 ms  0x67fd fd:0x7f87d07f40a0
100307 ms  0x67fd PR_Close()
100307 ms  0x67fd fd:0x7f87bf768a60
           /* TID 0x672a */
100317 ms  0x672a PR_Close()
100317 ms  0x672a fd:0x7f87da52fe20
           /* TID 0x6730 */
100319 ms  0x6730 PR_Close()
100319 ms  0x6730 fd:0x7f87bfaea9a0
100319 ms  0x6730 PR_Close()
100319 ms  0x6730 fd:0x7f87bfa81880
100319 ms     | 0x6730 PK11_Encrypt()
100319 ms     | 0x6730 symkey:0x7f87d1d9fa00
100320 ms  0x6730 PR_Close()
100320 ms  0x6730 fd:0x7f87bfaea4c0
100320 ms     | 0x6730 PK11_Encrypt()
100320 ms     | 0x6730 symkey:0x7f87d08f6980
           /* TID 0x67fd */
100336 ms  0x67fd PR_Close()
100336 ms  0x67fd fd:0x7f87bf768310
           /* TID 0x672a */
100344 ms  0x672a PR_Close()
100344 ms  0x672a fd:0x7f87d6c13820
           /* TID 0x6725 */
100344 ms  0x6725 PR_Close()
100344 ms  0x6725 fd:0x7f87d07f4100
100345 ms  0x6725 PR_Close()
100345 ms  0x6725 fd:0x7f87bf768310
           /* TID 0x6730 */
100346 ms  0x6730 PR_Close()
100346 ms  0x6730 fd:0x7f87d7006310
100346 ms     | 0x6730 PK11_Encrypt()
100346 ms     | 0x6730 symkey:0x7f87bf7e9e80
100347 ms  0x6730 PR_Close()
100347 ms  0x6730 fd:0x7f87d162bc40
           /* TID 0x6787 */
100348 ms  0x6787 PR_Close()
100348 ms  0x6787 fd:0x7f87bfa81820
100349 ms  0x6787 PR_Close()
100349 ms  0x6787 fd:0x7f87bf768130
100349 ms  0x6787 PR_Close()
100349 ms  0x6787 fd:0x7f87bf768130
100349 ms  0x6787 PR_Close()
100349 ms  0x6787 fd:0x7f87bf768130
           /* TID 0x67fd */
100349 ms  0x67fd PR_Close()
100349 ms  0x67fd fd:0x7f87bf88efa0
           /* TID 0x6738 */
100351 ms  0x6738 PR_Close()
100351 ms  0x6738 fd:0x7f87bfabb250
100352 ms  0x6738 PR_Close()
100352 ms  0x6738 fd:0x7f87bfabb250
           /* TID 0x672a */
100359 ms  0x672a PR_Close()
100359 ms  0x672a fd:0x7f87d162bbb0
           /* TID 0x6725 */
100361 ms  0x6725 PR_Close()
100361 ms  0x6725 fd:0x7f87bf88ee20
100361 ms  0x6725 PR_Close()
100361 ms  0x6725 fd:0x7f87bfabb490
           /* TID 0x67fd */
100363 ms  0x67fd PR_Close()
100363 ms  0x67fd fd:0x7f87bf88edf0
100366 ms  0x67fd PR_Close()
100366 ms  0x67fd fd:0x7f87bf88e880
100379 ms  0x67fd PR_Close()
100379 ms  0x67fd fd:0x7f87bf768700
100381 ms  0x67fd PR_Close()
100381 ms  0x67fd fd:0x7f87bf768700
100388 ms  0x67fd PR_Close()
100388 ms  0x67fd fd:0x7f87bf88e8b0
           /* TID 0x6725 */
100558 ms  0x6725 PR_Close()
100558 ms  0x6725 fd:0x7f87bf768a30
100558 ms  0x6725 PR_Close()
100558 ms  0x6725 fd:0x7f87bf768a30
100563 ms  0x6725 PR_Close()
100563 ms  0x6725 fd:0x7f87f8dda130
100563 ms  0x6725 PR_Close()
100563 ms  0x6725 fd:0x7f87f8dda190
Process terminated
