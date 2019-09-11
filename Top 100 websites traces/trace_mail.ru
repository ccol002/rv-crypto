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
           /* TID 0x7984 */
    20 ms  SECKEY_ECParamsToKeySize()
    20 ms  0x7984 ret:0x100
    20 ms  0x7984 SECKEY_CreateECPrivateKey()
    20 ms  0x7984 cx:0x7ff795384f48
    20 ms     | 0x7984 EC_ValidatePublicKey()
    22 ms     | 0x7984 ret:0x0
    22 ms  0x7984 ret:0x7ff77612d020::7ff77612d020  70 64 df 86                                      pd..
    22 ms  0x7984 PK11_PubDeriveWithKDF()
    22 ms  0x7984 seckey:0x7ff77612d020
    22 ms     | 0x7984 EC_ValidatePublicKey()
    24 ms     | 0x7984 ret:0x0
    25 ms  0x7984 ret:0x7ff786e5d680
    25 ms  0x7984 PK11_DeriveWithFlags()
    25 ms  0x7984 basekey:0x7ff786e5d680
    25 ms     | 0x7984 PK11_DeriveWithTemplate()
    25 ms  0x7984 ret:0x7ff786ef1980
    25 ms  0x7984 PK11_Derive()
    25 ms  0x7984 basekey:0x7ff786ef1980
    25 ms     | 0x7984 PK11_DeriveWithTemplate()
    25 ms  0x7984 ret:0x7ff786ef1a00
    25 ms  0x7984 SECKEY_DestroyPrivateKey()
    25 ms  0x7984 privk:0x7ff77612d020::7ff77612d020  70 64 df 86                                      pd..
    25 ms  0x7984 privk:0x7ff77612d020::7ff77612d020  e5 e5 e5 e5                                      ....
    25 ms  0x7984 PK11_Encrypt()
    25 ms  0x7984 symkey:0x7ff786ef1b80
    27 ms  0x7984 PR_Connect()
    27 ms  0x7984 fd:0x7ff786de5700
           /* TID 0x79ec */
    53 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
    53 ms  0x79ec ret:0x0
           /* TID 0x798c */
    53 ms  0x798c PR_Close()
    53 ms  0x798c fd:0x7ff786de5400
           /* TID 0x7984 */
    53 ms  0x7984 SSL_AuthCertificateComplete()
    53 ms  0x7984 fd:0x7ff7872b4a90
    53 ms  0x7984 err:0x0
    53 ms  0x7984 PK11_Encrypt()
    53 ms  0x7984 symkey:0x7ff786e5d700
           /* TID 0x798c */
    83 ms  0x798c PR_Close()
    83 ms  0x798c fd:0x7ff786de5550
           /* TID 0x7a01 */
    83 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
    83 ms  0x7a01 ret:0x0
           /* TID 0x7984 */
    84 ms  0x7984 SSL_AuthCertificateComplete()
    84 ms  0x7984 fd:0x7ff7872b4e50
    84 ms  0x7984 err:0x0
    84 ms  0x7984 PK11_Encrypt()
    84 ms  0x7984 symkey:0x7ff786ef1b80
   196 ms  0x7984 SECKEY_DestroyPrivateKey()
   196 ms  0x7984 privk:0x7ff78729a020::7ff78729a020  70 09 95 96                                      p...
   196 ms  0x7984 privk:0x7ff78729a020::7ff78729a020  e5 e5 e5 e5                                      ....
   196 ms  0x7984 SECKEY_DestroyPrivateKey()
   196 ms  0x7984 privk:0x7ff787298020::7ff787298020  20 04 fb 95                                       ...
   196 ms  0x7984 privk:0x7ff787298020::7ff787298020  e5 e5 e5 e5                                      ....
   233 ms  0x7984 SECKEY_DestroyPrivateKey()
   233 ms  0x7984 privk:0x7ff78729f020::7ff78729f020  20 c4 ba 95                                       ...
   233 ms  0x7984 privk:0x7ff78729f020::7ff78729f020  e5 e5 e5 e5                                      ....
   234 ms  0x7984 SECKEY_DestroyPrivateKey()
   234 ms  0x7984 privk:0x7ff78729d020::7ff78729d020  40 c2 ba 95                                      @...
   234 ms  0x7984 privk:0x7ff78729d020::7ff78729d020  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
   445 ms  0x798c PR_Close()
   445 ms  0x798c fd:0x7ff786de5880
           /* TID 0x7984 */
   508 ms  0x7984 SSL_ImportFD()
   508 ms  0x7984 ret:0x7ff78b9591c0
   508 ms  0x7984 SSL_AuthCertificateHook()
   508 ms  0x7984 fd:0x7ff78b9591c0
   508 ms  0x7984 ret:0x0
   508 ms  0x7984 PR_Connect()
   508 ms  0x7984 fd:0x7ff78b9591c0
   534 ms  0x7984 SECKEY_CreateECPrivateKey()
   534 ms  0x7984 cx:0x7ff786de7768
   534 ms     | 0x7984 EC_ValidatePublicKey()
   534 ms     | 0x7984 ret:0x0
   534 ms  0x7984 ret:0x7ff77613f820::7ff77613f820  10 a5 95 8b                                      ....
   535 ms  0x7984 SECKEY_CreateECPrivateKey()
   535 ms  0x7984 cx:0x7ff786de7768
   535 ms     | 0x7984 EC_ValidatePublicKey()
   536 ms     | 0x7984 ret:0x0
   537 ms  0x7984 ret:0x7ff776141820::7ff776141820  f0 a6 95 8b                                      ....
           /* TID 0x79ec */
   589 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   589 ms  0x79ec ret:0x0
           /* TID 0x7984 */
   590 ms  SECKEY_ECParamsToKeySize()
   590 ms  0x7984 ret:0x100
   590 ms  0x7984 SECKEY_CreateECPrivateKey()
   590 ms  0x7984 cx:0x7ff786de7768
   591 ms     | 0x7984 EC_ValidatePublicKey()
   596 ms     | 0x7984 ret:0x0
   596 ms  0x7984 ret:0x7ff787297820::7ff787297820  70 a9 95 8b                                      p...
   596 ms  0x7984 PK11_PubDeriveWithKDF()
   596 ms  0x7984 seckey:0x7ff787297820
   596 ms     | 0x7984 EC_ValidatePublicKey()
   600 ms     | 0x7984 ret:0x0
   605 ms  0x7984 ret:0x7ff786e5d680
   605 ms  0x7984 PK11_DeriveWithFlags()
   605 ms  0x7984 basekey:0x7ff786e5d680
   605 ms     | 0x7984 PK11_DeriveWithTemplate()
   605 ms  0x7984 ret:0x7ff7761a9700
   605 ms  0x7984 PK11_Derive()
   605 ms  0x7984 basekey:0x7ff7761a9700
   605 ms     | 0x7984 PK11_DeriveWithTemplate()
   605 ms  0x7984 ret:0x7ff7761a9780
   605 ms  0x7984 SECKEY_DestroyPrivateKey()
   605 ms  0x7984 privk:0x7ff787297820::7ff787297820  70 a9 95 8b                                      p...
   605 ms  0x7984 privk:0x7ff787297820::7ff787297820  e5 e5 e5 e5                                      ....
   605 ms  0x7984 PK11_Encrypt()
   605 ms  0x7984 symkey:0x7ff7761a9900
   606 ms  0x7984 SSL_AuthCertificateComplete()
   606 ms  0x7984 fd:0x7ff78b9591c0
   606 ms  0x7984 err:0x0
   606 ms  0x7984 PK11_Encrypt()
   606 ms  0x7984 symkey:0x7ff7761a9900
   657 ms  0x7984 SECKEY_DestroyPrivateKey()
   657 ms  0x7984 privk:0x7ff776141820::7ff776141820  f0 a6 95 8b                                      ....
   658 ms  0x7984 privk:0x7ff776141820::7ff776141820  e5 e5 e5 e5                                      ....
   658 ms  0x7984 SECKEY_DestroyPrivateKey()
   658 ms  0x7984 privk:0x7ff77613f820::7ff77613f820  10 a5 95 8b                                      ....
   658 ms  0x7984 privk:0x7ff77613f820::7ff77613f820  e5 e5 e5 e5                                      ....
   662 ms  0x7984 PK11_Encrypt()
   662 ms  0x7984 symkey:0x7ff7761a9900
   693 ms  0x7984 PK11_Encrypt()
   693 ms  0x7984 symkey:0x7ff7761a9900
   724 ms  0x7984 PK11_Encrypt()
   724 ms  0x7984 symkey:0x7ff7761a9900
   754 ms  0x7984 PK11_Encrypt()
   754 ms  0x7984 symkey:0x7ff7761a9900
   870 ms  0x7984 PK11_Encrypt()
   870 ms  0x7984 symkey:0x7ff7761a9900
   903 ms  0x7984 PK11_Encrypt()
   903 ms  0x7984 symkey:0x7ff7761a9900
   935 ms  0x7984 PK11_Encrypt()
   935 ms  0x7984 symkey:0x7ff7761a9900
           /* TID 0x79e0 */
   963 ms  0x79e0 PR_Close()
   963 ms  0x79e0 fd:0x7ff78b9592b0
   963 ms  0x79e0 PR_Close()
   963 ms  0x79e0 fd:0x7ff78b959370
   963 ms  0x79e0 PR_Close()
   963 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b9592b0
   964 ms  0x79e0 PR_Close()
   964 ms  0x79e0 fd:0x7ff78b959370
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b9592b0
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b959370
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b9592b0
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b959370
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b9592b0
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b959370
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b9592b0
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b959370
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b9592b0
   965 ms  0x79e0 PR_Close()
   965 ms  0x79e0 fd:0x7ff78b959370
   966 ms  0x79e0 PR_Close()
   966 ms  0x79e0 fd:0x7ff78b9592b0
   966 ms  0x79e0 PR_Close()
   966 ms  0x79e0 fd:0x7ff78b959370
   966 ms  0x79e0 PR_Close()
   966 ms  0x79e0 fd:0x7ff78b9592b0
   966 ms  0x79e0 PR_Close()
   966 ms  0x79e0 fd:0x7ff78b959370
   969 ms  0x79e0 PR_Close()
   969 ms  0x79e0 fd:0x7ff78b9592b0
   970 ms  0x79e0 PR_Close()
   970 ms  0x79e0 fd:0x7ff78b959280
   973 ms  0x79e0 PR_Close()
   973 ms  0x79e0 fd:0x7ff78b959280
   973 ms  0x79e0 PR_Close()
   973 ms  0x79e0 fd:0x7ff78b9592b0
   976 ms  0x79e0 PR_Close()
   976 ms  0x79e0 fd:0x7ff78b9592b0
   976 ms  0x79e0 PR_Close()
   976 ms  0x79e0 fd:0x7ff78b9592b0
   979 ms  0x79e0 PR_Close()
   979 ms  0x79e0 fd:0x7ff78b9592b0
   979 ms  0x79e0 PR_Close()
   979 ms  0x79e0 fd:0x7ff78b9592b0
           /* TID 0x799e */
   983 ms  0x799e PR_Close()
   983 ms  0x799e fd:0x7ff78b9592b0
   985 ms  0x799e PR_Close()
   985 ms  0x799e fd:0x7ff78b9592b0
           /* TID 0x79e0 */
  1033 ms  0x79e0 PR_Close()
  1033 ms  0x79e0 fd:0x7ff7761a28b0
  1033 ms  0x79e0 PR_Close()
  1033 ms  0x79e0 fd:0x7ff7761a28b0
  1040 ms  0x79e0 PR_Close()
  1040 ms  0x79e0 fd:0x7ff7761a28b0
  1041 ms  0x79e0 PR_Close()
  1041 ms  0x79e0 fd:0x7ff7761a28b0
  1047 ms  0x79e0 PR_Close()
  1047 ms  0x79e0 fd:0x7ff7761a28b0
  1047 ms  0x79e0 PR_Close()
  1047 ms  0x79e0 fd:0x7ff7761a28b0
  1049 ms  0x79e0 PR_Close()
  1049 ms  0x79e0 fd:0x7ff7761a28b0
  1049 ms  0x79e0 PR_Close()
  1049 ms  0x79e0 fd:0x7ff7761a28b0
           /* TID 0x79dd */
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
  1049 ms  0x79dd PR_Close()
  1049 ms  0x79dd fd:0x7ff7761a28b0
           /* TID 0x799e */
  1552 ms  0x799e PR_Close()
  1552 ms  0x799e fd:0x7ff787220160
  1555 ms  0x799e PR_Close()
  1555 ms  0x799e fd:0x7ff787220160
  2060 ms  0x799e PR_Close()
  2060 ms  0x799e fd:0x7ff787220160
           /* TID 0x798c */
  3357 ms  0x798c PR_Close()
  3357 ms  0x798c fd:0x7ff787220160
  3357 ms  0x798c PR_Close()
  3357 ms  0x798c fd:0x7ff78b9592b0
           /* TID 0x7984 */
  4572 ms  0x7984 SSL_ImportFD()
  4572 ms  0x7984 ret:0x7ff7880b99d0
  4572 ms  0x7984 SSL_AuthCertificateHook()
  4572 ms  0x7984 fd:0x7ff7880b99d0
  4572 ms  0x7984 ret:0x0
  4572 ms  0x7984 PR_Connect()
  4572 ms  0x7984 fd:0x7ff7880b99d0
  4651 ms  0x7984 SECKEY_CreateECPrivateKey()
  4651 ms  0x7984 cx:0x7ff786de7aa8
  4653 ms     | 0x7984 EC_ValidatePublicKey()
  4653 ms     | 0x7984 ret:0x0
  4654 ms  0x7984 ret:0x7ff790de5820::7ff790de5820  90 c7 dd 75                                      ...u
  4654 ms  0x7984 SECKEY_CreateECPrivateKey()
  4654 ms  0x7984 cx:0x7ff786de7aa8
  4656 ms     | 0x7984 EC_ValidatePublicKey()
  4661 ms     | 0x7984 ret:0x0
  4661 ms  0x7984 ret:0x7ff775c04020::7ff775c04020  10 ca dd 75                                      ...u
  4748 ms  SECKEY_ECParamsToKeySize()
  4750 ms  0x7984 ret:0x100
  4750 ms  0x7984 SECKEY_CreateECPrivateKey()
  4750 ms  0x7984 cx:0x7ff786de7aa8
  4753 ms     | 0x7984 EC_ValidatePublicKey()
  4758 ms     | 0x7984 ret:0x0
  4758 ms  0x7984 ret:0x7ff775c0e020::7ff775c0e020  00 51 de 75                                      .Q.u
  4758 ms  0x7984 PK11_PubDeriveWithKDF()
  4758 ms  0x7984 seckey:0x7ff775c0e020
  4758 ms     | 0x7984 EC_ValidatePublicKey()
  4764 ms     | 0x7984 ret:0x0
  4768 ms  0x7984 ret:0x7ff786e5d680
  4768 ms  0x7984 PK11_DeriveWithFlags()
  4768 ms  0x7984 basekey:0x7ff786e5d680
  4768 ms     | 0x7984 PK11_DeriveWithTemplate()
  4768 ms  0x7984 ret:0x7ff789d94c00
  4768 ms  0x7984 PK11_Derive()
  4768 ms  0x7984 basekey:0x7ff789d94c00
  4769 ms     | 0x7984 PK11_DeriveWithTemplate()
  4769 ms  0x7984 ret:0x7ff789d94c80
  4769 ms  0x7984 SECKEY_DestroyPrivateKey()
  4769 ms  0x7984 privk:0x7ff775c0e020::7ff775c0e020  00 51 de 75                                      .Q.u
  4769 ms  0x7984 privk:0x7ff775c0e020::7ff775c0e020  e5 e5 e5 e5                                      ....
  4769 ms  0x7984 PK11_Encrypt()
  4769 ms  0x7984 symkey:0x7ff789d94e00
  4804 ms  0x7984 PR_Connect()
  4804 ms  0x7984 fd:0x7ff7880b9d60
           /* TID 0x798c */
  4859 ms  0x798c PR_Close()
  4859 ms  0x798c fd:0x7ff7880b9cd0
           /* TID 0x7a01 */
  4859 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4860 ms  0x7a01 ret:0x0
           /* TID 0x7984 */
  4872 ms  0x7984 SSL_AuthCertificateComplete()
  4872 ms  0x7984 fd:0x7ff7880b99d0
  4872 ms  0x7984 err:0x0
  4872 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  4872 ms     | 0x7984 privk:0x7ff775c04020::7ff775c04020  10 ca dd 75                                      ...u
  4872 ms     | 0x7984 privk:0x7ff775c04020::7ff775c04020  e5 e5 e5 e5                                      ....
  4873 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  4873 ms     | 0x7984 privk:0x7ff790de5820::7ff790de5820  90 c7 dd 75                                      ...u
  4873 ms     | 0x7984 privk:0x7ff790de5820::7ff790de5820  e5 e5 e5 e5                                      ....
  4875 ms  0x7984 PK11_Encrypt()
  4875 ms  0x7984 symkey:0x7ff789d94e00
  4954 ms  0x7984 PR_Close()
  4954 ms  0x7984 fd:0x7ff7880b99d0
  4954 ms     | 0x7984 PK11_Encrypt()
  4954 ms     | 0x7984 symkey:0x7ff789d94e00
           /* TID 0x799b */
  4962 ms  0x799b PR_Close()
  4962 ms  0x799b fd:0x7ff7880b99d0
           /* TID 0x7984 */
  5021 ms  0x7984 SSL_ImportFD()
  5021 ms  0x7984 ret:0x7ff775daf3a0
  5021 ms  0x7984 SSL_AuthCertificateHook()
  5021 ms  0x7984 fd:0x7ff775daf3a0
  5021 ms  0x7984 ret:0x0
  5021 ms  0x7984 PR_Connect()
  5021 ms  0x7984 fd:0x7ff775daf3a0
  5091 ms  0x7984 SECKEY_CreateECPrivateKey()
  5091 ms  0x7984 cx:0x7ff786de7de8
  5093 ms     | 0x7984 EC_ValidatePublicKey()
  5093 ms     | 0x7984 ret:0x0
  5093 ms  0x7984 ret:0x7ff775c0f820::7ff775c0f820  50 e6 cf 75                                      P..u
  5093 ms  0x7984 SECKEY_CreateECPrivateKey()
  5093 ms  0x7984 cx:0x7ff786de7de8
  5097 ms     | 0x7984 EC_ValidatePublicKey()
  5102 ms     | 0x7984 ret:0x0
  5102 ms  0x7984 ret:0x7ff775c11820::7ff775c11820  70 e9 cf 75                                      p..u
  5177 ms  SECKEY_ECParamsToKeySize()
  5177 ms  0x7984 ret:0x100
  5177 ms  0x7984 SECKEY_CreateECPrivateKey()
  5177 ms  0x7984 cx:0x7ff786de7de8
  5179 ms     | 0x7984 EC_ValidatePublicKey()
  5184 ms     | 0x7984 ret:0x0
  5184 ms  0x7984 ret:0x7ff775c19020::7ff775c19020  b0 ef cf 75                                      ...u
  5185 ms  0x7984 PK11_PubDeriveWithKDF()
  5185 ms  0x7984 seckey:0x7ff775c19020
  5185 ms     | 0x7984 EC_ValidatePublicKey()
  5189 ms     | 0x7984 ret:0x0
  5193 ms  0x7984 ret:0x7ff789d94c80
  5193 ms  0x7984 PK11_DeriveWithFlags()
  5193 ms  0x7984 basekey:0x7ff789d94c80
  5193 ms     | 0x7984 PK11_DeriveWithTemplate()
  5193 ms  0x7984 ret:0x7ff789d94c00
  5193 ms  0x7984 PK11_Derive()
  5193 ms  0x7984 basekey:0x7ff789d94c00
  5193 ms     | 0x7984 PK11_DeriveWithTemplate()
  5194 ms  0x7984 ret:0x7ff786e5d680
  5194 ms  0x7984 SECKEY_DestroyPrivateKey()
  5194 ms  0x7984 privk:0x7ff775c19020::7ff775c19020  b0 ef cf 75                                      ...u
  5194 ms  0x7984 privk:0x7ff775c19020::7ff775c19020  e5 e5 e5 e5                                      ....
  5194 ms  0x7984 PK11_Encrypt()
  5194 ms  0x7984 symkey:0x7ff789d94d00
           /* TID 0x79ec */
  5222 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5222 ms  0x79ec ret:0x0
           /* TID 0x798c */
  5223 ms  0x798c PR_Close()
  5223 ms  0x798c fd:0x7ff775daf580
           /* TID 0x7984 */
  5223 ms  0x7984 SSL_AuthCertificateComplete()
  5223 ms  0x7984 fd:0x7ff775daf3a0
  5223 ms  0x7984 err:0x0
  5224 ms  0x7984 PK11_Encrypt()
  5224 ms  0x7984 symkey:0x7ff789d94d00
  5264 ms  0x7984 SECKEY_DestroyPrivateKey()
  5264 ms  0x7984 privk:0x7ff775c11820::7ff775c11820  70 e9 cf 75                                      p..u
  5264 ms  0x7984 privk:0x7ff775c11820::7ff775c11820  e5 e5 e5 e5                                      ....
  5265 ms  0x7984 SECKEY_DestroyPrivateKey()
  5265 ms  0x7984 privk:0x7ff775c0f820::7ff775c0f820  50 e6 cf 75                                      P..u
  5265 ms  0x7984 privk:0x7ff775c0f820::7ff775c0f820  e5 e5 e5 e5                                      ....
           /* TID 0x799b */
  5472 ms  0x799b PR_Close()
  5472 ms  0x799b fd:0x7ff775dafa30
           /* TID 0x7979 */
  5474 ms  0x7979 PR_Close()
  5474 ms  0x7979 fd:0x7ff775dafc40
           /* TID 0x7984 */
  5709 ms  0x7984 SSL_ImportFD()
  5709 ms  0x7984 ret:0x7ff775e86cd0
  5709 ms  0x7984 SSL_AuthCertificateHook()
  5709 ms  0x7984 fd:0x7ff775e86cd0
  5709 ms  0x7984 ret:0x0
  5709 ms  0x7984 PR_Connect()
  5709 ms  0x7984 fd:0x7ff775e86cd0
  5709 ms  0x7984 SSL_ImportFD()
  5709 ms  0x7984 ret:0x7ff775e86d60
  5709 ms  0x7984 SSL_AuthCertificateHook()
  5709 ms  0x7984 fd:0x7ff775e86d60
  5709 ms  0x7984 ret:0x0
  5712 ms  0x7984 PR_Connect()
  5712 ms  0x7984 fd:0x7ff775e86d60
  5714 ms  0x7984 SSL_ImportFD()
  5714 ms  0x7984 ret:0x7ff775daf250
  5714 ms  0x7984 SSL_AuthCertificateHook()
  5714 ms  0x7984 fd:0x7ff775daf250
  5714 ms  0x7984 ret:0x0
  5714 ms  0x7984 PR_Connect()
  5714 ms  0x7984 fd:0x7ff775daf250
  5715 ms  0x7984 SSL_ImportFD()
  5715 ms  0x7984 ret:0x7ff775e86730
  5715 ms  0x7984 SSL_AuthCertificateHook()
  5715 ms  0x7984 fd:0x7ff775e86730
  5715 ms  0x7984 ret:0x0
  5715 ms  0x7984 PR_Connect()
  5715 ms  0x7984 fd:0x7ff775e86730
  5715 ms  0x7984 SSL_ImportFD()
  5716 ms  0x7984 ret:0x7ff775e86be0
  5716 ms  0x7984 SSL_AuthCertificateHook()
  5716 ms  0x7984 fd:0x7ff775e86be0
  5716 ms  0x7984 ret:0x0
  5716 ms  0x7984 PR_Connect()
  5716 ms  0x7984 fd:0x7ff775e86be0
  5716 ms  0x7984 SSL_ImportFD()
  5716 ms  0x7984 ret:0x7ff775e86c70
  5716 ms  0x7984 SSL_AuthCertificateHook()
  5716 ms  0x7984 fd:0x7ff775e86c70
  5716 ms  0x7984 ret:0x0
  5716 ms  0x7984 PR_Connect()
  5716 ms  0x7984 fd:0x7ff775e86c70
  5779 ms  0x7984 SECKEY_CreateECPrivateKey()
  5779 ms  0x7984 cx:0x7ff786de8608
  5780 ms     | 0x7984 EC_ValidatePublicKey()
  5780 ms     | 0x7984 ret:0x0
  5780 ms  0x7984 ret:0x7ff776126020::7ff776126020  00 c6 dd 75                                      ...u
  5780 ms  0x7984 SECKEY_CreateECPrivateKey()
  5780 ms  0x7984 cx:0x7ff786de8608
  5781 ms     | 0x7984 EC_ValidatePublicKey()
  5787 ms     | 0x7984 ret:0x0
  5787 ms  0x7984 ret:0x7ff776131020::7ff776131020  50 c6 dd 75                                      P..u
  5788 ms  0x7984 SECKEY_CreateECPrivateKey()
  5788 ms  0x7984 cx:0x7ff786de8e28
  5789 ms     | 0x7984 EC_ValidatePublicKey()
  5789 ms     | 0x7984 ret:0x0
  5789 ms  0x7984 ret:0x7ff77613d820::7ff77613d820  80 18 18 76                                      ...v
  5789 ms  0x7984 SECKEY_CreateECPrivateKey()
  5789 ms  0x7984 cx:0x7ff786de8e28
  5790 ms     | 0x7984 EC_ValidatePublicKey()
  5792 ms     | 0x7984 ret:0x0
  5792 ms  0x7984 ret:0x7ff776140020::7ff776140020  d0 18 1a 76                                      ...v
  5793 ms  0x7984 SECKEY_CreateECPrivateKey()
  5793 ms  0x7984 cx:0x7ff786de87a8
  5794 ms     | 0x7984 EC_ValidatePublicKey()
  5794 ms     | 0x7984 ret:0x0
  5794 ms  0x7984 ret:0x7ff786e8a820::7ff786e8a820  30 1d 1a 76                                      0..v
  5794 ms  0x7984 SECKEY_CreateECPrivateKey()
  5794 ms  0x7984 cx:0x7ff786de87a8
  5794 ms     | 0x7984 EC_ValidatePublicKey()
  5797 ms     | 0x7984 ret:0x0
  5797 ms  0x7984 ret:0x7ff787a0a820::7ff787a0a820  40 67 df 86                                      @g..
  5797 ms  0x7984 SECKEY_CreateECPrivateKey()
  5797 ms  0x7984 cx:0x7ff786de8c88
  5798 ms     | 0x7984 EC_ValidatePublicKey()
  5798 ms     | 0x7984 ret:0x0
  5798 ms  0x7984 ret:0x7ff78c838820::7ff78c838820  30 23 22 87                                      0#".
  5798 ms  0x7984 SECKEY_CreateECPrivateKey()
  5798 ms  0x7984 cx:0x7ff786de8c88
  5799 ms     | 0x7984 EC_ValidatePublicKey()
  5801 ms     | 0x7984 ret:0x0
  5801 ms  0x7984 ret:0x7ff78ca05820::7ff78ca05820  90 2c 22 87                                      .,".
  5801 ms  0x7984 SECKEY_CreateECPrivateKey()
  5801 ms  0x7984 cx:0x7ff786de8ae8
  5802 ms     | 0x7984 EC_ValidatePublicKey()
  5802 ms     | 0x7984 ret:0x0
  5802 ms  0x7984 ret:0x7ff78ca0a820::7ff78ca0a820  60 90 a2 87                                      `...
  5802 ms  0x7984 SECKEY_CreateECPrivateKey()
  5802 ms  0x7984 cx:0x7ff786de8ae8
  5802 ms     | 0x7984 EC_ValidatePublicKey()
  5804 ms     | 0x7984 ret:0x0
  5804 ms  0x7984 ret:0x7ff78ca10020::7ff78ca10020  00 81 a4 87                                      ....
  5804 ms  0x7984 SECKEY_CreateECPrivateKey()
  5804 ms  0x7984 cx:0x7ff786de8948
  5805 ms     | 0x7984 EC_ValidatePublicKey()
  5805 ms     | 0x7984 ret:0x0
  5805 ms  0x7984 ret:0x7ff78ca16820::7ff78ca16820  b0 8f a4 87                                      ....
  5805 ms  0x7984 SECKEY_CreateECPrivateKey()
  5805 ms  0x7984 cx:0x7ff786de8948
  5806 ms     | 0x7984 EC_ValidatePublicKey()
  5807 ms     | 0x7984 ret:0x0
  5807 ms  0x7984 ret:0x7ff78ca1a820::7ff78ca1a820  d0 a8 f5 87                                      ....
  5860 ms  SECKEY_ECParamsToKeySize()
  5860 ms  0x7984 ret:0x100
  5861 ms  0x7984 SECKEY_CreateECPrivateKey()
  5861 ms  0x7984 cx:0x7ff786de8608
  5861 ms     | 0x7984 EC_ValidatePublicKey()
  5864 ms     | 0x7984 ret:0x0
  5864 ms  0x7984 ret:0x7ff78ce05820::7ff78ce05820  e0 42 3c 88                                      .B<.
  5864 ms  0x7984 PK11_PubDeriveWithKDF()
  5864 ms  0x7984 seckey:0x7ff78ce05820
  5864 ms     | 0x7984 EC_ValidatePublicKey()
  5866 ms     | 0x7984 ret:0x0
  5868 ms  0x7984 ret:0x7ff789d94c80
  5868 ms  0x7984 PK11_DeriveWithFlags()
  5868 ms  0x7984 basekey:0x7ff789d94c80
  5868 ms     | 0x7984 PK11_DeriveWithTemplate()
  5868 ms  0x7984 ret:0x7ff775e1e580
  5868 ms  0x7984 PK11_Derive()
  5868 ms  0x7984 basekey:0x7ff775e1e580
  5868 ms     | 0x7984 PK11_DeriveWithTemplate()
  5868 ms  0x7984 ret:0x7ff775e1e700
  5868 ms  0x7984 SECKEY_DestroyPrivateKey()
  5868 ms  0x7984 privk:0x7ff78ce05820::7ff78ce05820  e0 42 3c 88                                      .B<.
  5868 ms  0x7984 privk:0x7ff78ce05820::7ff78ce05820  e5 e5 e5 e5                                      ....
  5868 ms  0x7984 PK11_Encrypt()
  5868 ms  0x7984 symkey:0x7ff775e1e900
  5870 ms  SECKEY_ECParamsToKeySize()
  5870 ms  0x7984 ret:0x100
  5870 ms  0x7984 SECKEY_CreateECPrivateKey()
  5870 ms  0x7984 cx:0x7ff786de8e28
  5871 ms     | 0x7984 EC_ValidatePublicKey()
  5873 ms     | 0x7984 ret:0x0
  5873 ms  0x7984 ret:0x7ff78ce09020::7ff78ce09020  10 4a 3c 88                                      .J<.
  5873 ms  0x7984 PK11_PubDeriveWithKDF()
  5873 ms  0x7984 seckey:0x7ff78ce09020
  5873 ms     | 0x7984 EC_ValidatePublicKey()
  5875 ms     | 0x7984 ret:0x0
  5877 ms  0x7984 ret:0x7ff789d94c80
  5877 ms  0x7984 PK11_DeriveWithFlags()
  5877 ms  0x7984 basekey:0x7ff789d94c80
  5877 ms     | 0x7984 PK11_DeriveWithTemplate()
  5877 ms  0x7984 ret:0x7ff775e1ef80
  5877 ms  0x7984 PK11_Derive()
  5877 ms  0x7984 basekey:0x7ff775e1ef80
  5877 ms     | 0x7984 PK11_DeriveWithTemplate()
  5877 ms  0x7984 ret:0x7ff775e1f000
  5877 ms  0x7984 SECKEY_DestroyPrivateKey()
  5877 ms  0x7984 privk:0x7ff78ce09020::7ff78ce09020  10 4a 3c 88                                      .J<.
  5877 ms  0x7984 privk:0x7ff78ce09020::7ff78ce09020  e5 e5 e5 e5                                      ....
  5877 ms  0x7984 PK11_Encrypt()
  5877 ms  0x7984 symkey:0x7ff775e1f400
  5878 ms  SECKEY_ECParamsToKeySize()
  5878 ms  0x7984 ret:0x100
  5878 ms  0x7984 SECKEY_CreateECPrivateKey()
  5878 ms  0x7984 cx:0x7ff786de87a8
  5879 ms     | 0x7984 EC_ValidatePublicKey()
  5881 ms     | 0x7984 ret:0x0
  5881 ms  0x7984 ret:0x7ff78ce0f820::7ff78ce0f820  40 4c 3c 88                                      @L<.
  5881 ms  0x7984 PK11_PubDeriveWithKDF()
  5881 ms  0x7984 seckey:0x7ff78ce0f820
  5881 ms     | 0x7984 EC_ValidatePublicKey()
  5884 ms     | 0x7984 ret:0x0
  5886 ms  0x7984 ret:0x7ff789d94c80
  5886 ms  0x7984 PK11_DeriveWithFlags()
  5886 ms  0x7984 basekey:0x7ff789d94c80
  5886 ms     | 0x7984 PK11_DeriveWithTemplate()
  5886 ms  0x7984 ret:0x7ff775e1f880
  5886 ms  0x7984 PK11_Derive()
  5886 ms  0x7984 basekey:0x7ff775e1f880
  5886 ms     | 0x7984 PK11_DeriveWithTemplate()
  5886 ms  0x7984 ret:0x7ff775e1f900
  5886 ms  0x7984 SECKEY_DestroyPrivateKey()
  5886 ms  0x7984 privk:0x7ff78ce0f820::7ff78ce0f820  40 4c 3c 88                                      @L<.
  5887 ms  0x7984 privk:0x7ff78ce0f820::7ff78ce0f820  e5 e5 e5 e5                                      ....
  5887 ms  0x7984 PK11_Encrypt()
  5887 ms  0x7984 symkey:0x7ff776182180
  5887 ms  SECKEY_ECParamsToKeySize()
  5887 ms  0x7984 ret:0x100
  5887 ms  0x7984 SECKEY_CreateECPrivateKey()
  5887 ms  0x7984 cx:0x7ff786de8c88
  5888 ms     | 0x7984 EC_ValidatePublicKey()
  5890 ms     | 0x7984 ret:0x0
  5890 ms  0x7984 ret:0x7ff78d11d820::7ff78d11d820  40 47 5b 88                                      @G[.
  5890 ms  0x7984 PK11_PubDeriveWithKDF()
  5890 ms  0x7984 seckey:0x7ff78d11d820
  5890 ms     | 0x7984 EC_ValidatePublicKey()
  5891 ms     | 0x7984 ret:0x0
  5894 ms  0x7984 ret:0x7ff789d94c80
  5894 ms  0x7984 PK11_DeriveWithFlags()
  5894 ms  0x7984 basekey:0x7ff789d94c80
  5894 ms     | 0x7984 PK11_DeriveWithTemplate()
  5894 ms  0x7984 ret:0x7ff7761a8100
  5894 ms  0x7984 PK11_Derive()
  5894 ms  0x7984 basekey:0x7ff7761a8100
  5894 ms     | 0x7984 PK11_DeriveWithTemplate()
  5894 ms  0x7984 ret:0x7ff7761a8180
  5894 ms  0x7984 SECKEY_DestroyPrivateKey()
  5894 ms  0x7984 privk:0x7ff78d11d820::7ff78d11d820  40 47 5b 88                                      @G[.
  5894 ms  0x7984 privk:0x7ff78d11d820::7ff78d11d820  e5 e5 e5 e5                                      ....
  5894 ms  0x7984 PK11_Encrypt()
  5894 ms  0x7984 symkey:0x7ff7761a8300
  5895 ms  SECKEY_ECParamsToKeySize()
  5895 ms  0x7984 ret:0x100
  5895 ms  0x7984 SECKEY_CreateECPrivateKey()
  5895 ms  0x7984 cx:0x7ff786de8ae8
  5895 ms     | 0x7984 EC_ValidatePublicKey()
  5897 ms     | 0x7984 ret:0x0
  5897 ms  0x7984 ret:0x7ff78d124020::7ff78d124020  40 a2 d4 89                                      @...
  5897 ms  0x7984 PK11_PubDeriveWithKDF()
  5897 ms  0x7984 seckey:0x7ff78d124020
  5897 ms     | 0x7984 EC_ValidatePublicKey()
  5898 ms     | 0x7984 ret:0x0
  5900 ms  0x7984 ret:0x7ff789d94c80
  5900 ms  0x7984 PK11_DeriveWithFlags()
  5900 ms  0x7984 basekey:0x7ff789d94c80
  5900 ms     | 0x7984 PK11_DeriveWithTemplate()
  5900 ms  0x7984 ret:0x7ff7761a8600
  5900 ms  0x7984 PK11_Derive()
  5900 ms  0x7984 basekey:0x7ff7761a8600
  5900 ms     | 0x7984 PK11_DeriveWithTemplate()
  5900 ms  0x7984 ret:0x7ff7761a8680
  5900 ms  0x7984 SECKEY_DestroyPrivateKey()
  5900 ms  0x7984 privk:0x7ff78d124020::7ff78d124020  40 a2 d4 89                                      @...
  5900 ms  0x7984 privk:0x7ff78d124020::7ff78d124020  e5 e5 e5 e5                                      ....
  5900 ms  0x7984 PK11_Encrypt()
  5900 ms  0x7984 symkey:0x7ff7761a8800
  5901 ms  SECKEY_ECParamsToKeySize()
  5901 ms  0x7984 ret:0x100
  5901 ms  0x7984 SECKEY_CreateECPrivateKey()
  5901 ms  0x7984 cx:0x7ff786de8948
  5902 ms     | 0x7984 EC_ValidatePublicKey()
  5903 ms     | 0x7984 ret:0x0
  5903 ms  0x7984 ret:0x7ff78d12d020::7ff78d12d020  60 2a d5 89                                      `*..
  5903 ms  0x7984 PK11_PubDeriveWithKDF()
  5903 ms  0x7984 seckey:0x7ff78d12d020
  5903 ms     | 0x7984 EC_ValidatePublicKey()
  5905 ms     | 0x7984 ret:0x0
  5906 ms  0x7984 ret:0x7ff789d94c80
  5906 ms  0x7984 PK11_DeriveWithFlags()
  5906 ms  0x7984 basekey:0x7ff789d94c80
  5906 ms     | 0x7984 PK11_DeriveWithTemplate()
  5906 ms  0x7984 ret:0x7ff7761a9300
  5906 ms  0x7984 PK11_Derive()
  5906 ms  0x7984 basekey:0x7ff7761a9300
  5906 ms     | 0x7984 PK11_DeriveWithTemplate()
  5906 ms  0x7984 ret:0x7ff7761a9a00
  5906 ms  0x7984 SECKEY_DestroyPrivateKey()
  5906 ms  0x7984 privk:0x7ff78d12d020::7ff78d12d020  60 2a d5 89                                      `*..
  5906 ms  0x7984 privk:0x7ff78d12d020::7ff78d12d020  e5 e5 e5 e5                                      ....
  5906 ms  0x7984 PK11_Encrypt()
  5906 ms  0x7984 symkey:0x7ff7761a9e00
           /* TID 0x798c */
  5907 ms  0x798c PR_Close()
  5907 ms  0x798c fd:0x7ff7761a2730
           /* TID 0x7a01 */
  5907 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5907 ms  0x7a01 ret:0x0
           /* TID 0x7984 */
  5908 ms  0x7984 SSL_AuthCertificateComplete()
  5908 ms  0x7984 fd:0x7ff775e86cd0
  5908 ms  0x7984 err:0x0
  5908 ms  0x7984 SSL_AuthCertificateComplete()
  5908 ms  0x7984 fd:0x7ff775daf250
  5908 ms  0x7984 err:0x0
  5908 ms  0x7984 PK11_Encrypt()
  5908 ms  0x7984 symkey:0x7ff7761a9e00
  5909 ms  0x7984 PK11_Encrypt()
  5909 ms  0x7984 symkey:0x7ff775e1e900
  5909 ms  0x7984 PR_Connect()
  5909 ms  0x7984 fd:0x7ff776148cd0
  5909 ms  0x7984 PR_Connect()
  5909 ms  0x7984 fd:0x7ff7761a26d0
  5909 ms  0x7984 PR_Connect()
  5909 ms  0x7984 fd:0x7ff7761a27f0
  5910 ms  0x7984 PR_Connect()
  5910 ms  0x7984 fd:0x7ff7761a2790
           /* TID 0x798c */
  5935 ms  0x798c PR_Close()
  5935 ms  0x798c fd:0x7ff7761480a0
           /* TID 0x79ec */
  5935 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5935 ms  0x79ec ret:0x0
           /* TID 0x7984 */
  5936 ms  0x7984 SSL_AuthCertificateComplete()
  5936 ms  0x7984 fd:0x7ff775e86c70
  5936 ms  0x7984 err:0x0
  5936 ms  0x7984 PK11_Encrypt()
  5936 ms  0x7984 symkey:0x7ff775e1f400
  5937 ms  0x7984 SECKEY_DestroyPrivateKey()
  5937 ms  0x7984 privk:0x7ff776131020::7ff776131020  50 c6 dd 75                                      P..u
  5937 ms  0x7984 privk:0x7ff776131020::7ff776131020  e5 e5 e5 e5                                      ....
  5938 ms  0x7984 SECKEY_DestroyPrivateKey()
  5938 ms  0x7984 privk:0x7ff776126020::7ff776126020  00 c6 dd 75                                      ...u
  5938 ms  0x7984 privk:0x7ff776126020::7ff776126020  e5 e5 e5 e5                                      ....
  5947 ms  0x7984 SECKEY_DestroyPrivateKey()
  5947 ms  0x7984 privk:0x7ff776140020::7ff776140020  d0 18 1a 76                                      ...v
  5947 ms  0x7984 privk:0x7ff776140020::7ff776140020  e5 e5 e5 e5                                      ....
  5947 ms  0x7984 SECKEY_DestroyPrivateKey()
  5947 ms  0x7984 privk:0x7ff77613d820::7ff77613d820  80 18 18 76                                      ...v
  5947 ms  0x7984 privk:0x7ff77613d820::7ff77613d820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  5962 ms  0x798c PR_Close()
  5962 ms  0x798c fd:0x7ff775daf5b0
           /* TID 0x7a1e */
  5963 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5963 ms  0x7a1e ret:0x0
           /* TID 0x7984 */
  5963 ms  0x7984 SSL_AuthCertificateComplete()
  5963 ms  0x7984 fd:0x7ff775e86d60
  5963 ms  0x7984 err:0x0
  5963 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  5963 ms     | 0x7984 privk:0x7ff787a0a820::7ff787a0a820  40 67 df 86                                      @g..
  5963 ms     | 0x7984 privk:0x7ff787a0a820::7ff787a0a820  e5 e5 e5 e5                                      ....
  5963 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  5963 ms     | 0x7984 privk:0x7ff786e8a820::7ff786e8a820  30 1d 1a 76                                      0..v
  5963 ms     | 0x7984 privk:0x7ff786e8a820::7ff786e8a820  e5 e5 e5 e5                                      ....
  5964 ms  0x7984 PK11_Encrypt()
  5964 ms  0x7984 symkey:0x7ff776182180
           /* TID 0x798c */
  5965 ms  0x798c PR_Close()
  5965 ms  0x798c fd:0x7ff775e86f40
           /* TID 0x7a1f */
  5965 ms  0x7a1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5965 ms  0x7a1f ret:0x0
           /* TID 0x7984 */
  5966 ms  0x7984 SSL_AuthCertificateComplete()
  5966 ms  0x7984 fd:0x7ff775e86be0
  5966 ms  0x7984 err:0x0
  5966 ms  0x7984 PK11_Encrypt()
  5966 ms  0x7984 symkey:0x7ff7761a8300
           /* TID 0x798c */
  5966 ms  0x798c PR_Close()
  5966 ms  0x798c fd:0x7ff7761a2340
           /* TID 0x7a20 */
  5966 ms  0x7a20 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5966 ms  0x7a20 ret:0x0
           /* TID 0x7984 */
  5967 ms  0x7984 SSL_AuthCertificateComplete()
  5967 ms  0x7984 fd:0x7ff775e86730
  5967 ms  0x7984 err:0x0
  5967 ms  0x7984 PK11_Encrypt()
  5967 ms  0x7984 symkey:0x7ff7761a8800
  5976 ms  0x7984 SECKEY_DestroyPrivateKey()
  5976 ms  0x7984 privk:0x7ff78ca05820::7ff78ca05820  90 2c 22 87                                      .,".
  5976 ms  0x7984 privk:0x7ff78ca05820::7ff78ca05820  e5 e5 e5 e5                                      ....
  5976 ms  0x7984 SECKEY_DestroyPrivateKey()
  5976 ms  0x7984 privk:0x7ff78c838820::7ff78c838820  30 23 22 87                                      0#".
  5976 ms  0x7984 privk:0x7ff78c838820::7ff78c838820  e5 e5 e5 e5                                      ....
  5980 ms  0x7984 SECKEY_DestroyPrivateKey()
  5980 ms  0x7984 privk:0x7ff78ca10020::7ff78ca10020  00 81 a4 87                                      ....
  5980 ms  0x7984 privk:0x7ff78ca10020::7ff78ca10020  e5 e5 e5 e5                                      ....
  5980 ms  0x7984 SECKEY_DestroyPrivateKey()
  5980 ms  0x7984 privk:0x7ff78ca0a820::7ff78ca0a820  60 90 a2 87                                      `...
  5980 ms  0x7984 privk:0x7ff78ca0a820::7ff78ca0a820  e5 e5 e5 e5                                      ....
  5982 ms  0x7984 SECKEY_DestroyPrivateKey()
  5982 ms  0x7984 privk:0x7ff78ca1a820::7ff78ca1a820  d0 a8 f5 87                                      ....
  5982 ms  0x7984 privk:0x7ff78ca1a820::7ff78ca1a820  e5 e5 e5 e5                                      ....
  5982 ms  0x7984 SECKEY_DestroyPrivateKey()
  5982 ms  0x7984 privk:0x7ff78ca16820::7ff78ca16820  b0 8f a4 87                                      ....
  5982 ms  0x7984 privk:0x7ff78ca16820::7ff78ca16820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6019 ms  0x798c PR_Close()
  6019 ms  0x798c fd:0x7ff775e860d0
           /* TID 0x7984 */
  6019 ms  0x7984 PK11_Encrypt()
  6019 ms  0x7984 symkey:0x7ff775e1f400
           /* TID 0x798c */
  6058 ms  0x798c PR_Close()
  6058 ms  0x798c fd:0x7ff775e865e0
           /* TID 0x7984 */
  6062 ms  0x7984 PK11_Encrypt()
  6062 ms  0x7984 symkey:0x7ff7761a8300
           /* TID 0x798c */
  6065 ms  0x798c PR_Close()
  6065 ms  0x798c fd:0x7ff775e86220
  6068 ms  0x798c PR_Close()
  6068 ms  0x798c fd:0x7ff775e86400
  6086 ms  0x798c PR_Close()
  6086 ms  0x798c fd:0x7ff7761484f0
  6092 ms  0x798c PR_Close()
  6092 ms  0x798c fd:0x7ff7761484f0
           /* TID 0x7984 */
  6103 ms  0x7984 SSL_ImportFD()
  6103 ms  0x7984 ret:0x7ff7761a2040
  6104 ms  0x7984 SSL_AuthCertificateHook()
  6104 ms  0x7984 fd:0x7ff7761a2040
  6104 ms  0x7984 ret:0x0
  6104 ms  0x7984 PR_Connect()
  6104 ms  0x7984 fd:0x7ff7761a2040
           /* TID 0x798c */
  6105 ms  0x798c PR_Close()
  6105 ms  0x798c fd:0x7ff7761a2940
           /* TID 0x7984 */
  6105 ms  0x7984 SSL_ImportFD()
  6105 ms  0x7984 ret:0x7ff775dafac0
  6105 ms  0x7984 SSL_AuthCertificateHook()
  6105 ms  0x7984 fd:0x7ff775dafac0
  6105 ms  0x7984 ret:0x0
  6105 ms  0x7984 PR_Connect()
  6105 ms  0x7984 fd:0x7ff775dafac0
  6105 ms  0x7984 SSL_ImportFD()
  6105 ms  0x7984 ret:0x7ff7761a20a0
  6105 ms  0x7984 SSL_AuthCertificateHook()
  6105 ms  0x7984 fd:0x7ff7761a20a0
  6105 ms  0x7984 ret:0x0
  6105 ms  0x7984 PR_Connect()
  6105 ms  0x7984 fd:0x7ff7761a20a0
  6105 ms  0x7984 SSL_ImportFD()
  6105 ms  0x7984 ret:0x7ff7761a2100
  6105 ms  0x7984 SSL_AuthCertificateHook()
  6105 ms  0x7984 fd:0x7ff7761a2100
  6105 ms  0x7984 ret:0x0
  6105 ms  0x7984 PR_Connect()
  6105 ms  0x7984 fd:0x7ff7761a2100
  6105 ms  0x7984 SSL_ImportFD()
  6105 ms  0x7984 ret:0x7ff7761487c0
  6105 ms  0x7984 SSL_AuthCertificateHook()
  6105 ms  0x7984 fd:0x7ff7761487c0
  6105 ms  0x7984 ret:0x0
  6105 ms  0x7984 PR_Connect()
  6105 ms  0x7984 fd:0x7ff7761487c0
  6124 ms  0x7984 SSL_ImportFD()
  6125 ms  0x7984 ret:0x7ff786de59a0
  6125 ms  0x7984 SSL_AuthCertificateHook()
  6125 ms  0x7984 fd:0x7ff786de59a0
  6125 ms  0x7984 ret:0x0
  6125 ms  0x7984 PR_Connect()
  6125 ms  0x7984 fd:0x7ff786de59a0
           /* TID 0x798c */
  6151 ms  0x798c PR_Close()
  6151 ms  0x798c fd:0x7ff7872b4940
           /* TID 0x7984 */
  6161 ms  0x7984 SSL_ImportFD()
  6161 ms  0x7984 ret:0x7ff7880e1df0
  6161 ms  0x7984 SSL_AuthCertificateHook()
  6161 ms  0x7984 fd:0x7ff7880e1df0
  6161 ms  0x7984 ret:0x0
  6161 ms  0x7984 PR_Connect()
  6161 ms  0x7984 fd:0x7ff7880e1df0
  6167 ms  0x7984 SSL_ImportFD()
  6167 ms  0x7984 ret:0x7ff7883fb760
  6167 ms  0x7984 SSL_AuthCertificateHook()
  6167 ms  0x7984 fd:0x7ff7883fb760
  6167 ms  0x7984 ret:0x0
  6167 ms  0x7984 PR_Connect()
  6167 ms  0x7984 fd:0x7ff7883fb760
  6172 ms  0x7984 SECKEY_CreateECPrivateKey()
  6172 ms  0x7984 cx:0x7ff786de9988
  6172 ms     | 0x7984 EC_ValidatePublicKey()
  6172 ms     | 0x7984 ret:0x0
  6172 ms  0x7984 ret:0x7ff78ca06020::7ff78ca06020  e0 92 a2 87                                      ....
  6172 ms  0x7984 SECKEY_CreateECPrivateKey()
  6172 ms  0x7984 cx:0x7ff786de9988
  6173 ms     | 0x7984 EC_ValidatePublicKey()
  6174 ms     | 0x7984 ret:0x0
  6174 ms  0x7984 ret:0x7ff78ca0b020::7ff78ca0b020  30 9d a2 87                                      0...
  6184 ms  0x7984 SECKEY_CreateECPrivateKey()
  6184 ms  0x7984 cx:0x7ff7914de648
  6185 ms     | 0x7984 EC_ValidatePublicKey()
  6185 ms     | 0x7984 ret:0x0
  6185 ms  0x7984 ret:0x7ff78ca14020::7ff78ca14020  e0 82 a4 87                                      ....
  6185 ms  0x7984 SECKEY_CreateECPrivateKey()
  6185 ms  0x7984 cx:0x7ff7914de648
  6186 ms     | 0x7984 EC_ValidatePublicKey()
  6187 ms     | 0x7984 ret:0x0
  6187 ms  0x7984 ret:0x7ff78ca18020::7ff78ca18020  f0 86 a4 87                                      ....
  6190 ms  0x7984 SECKEY_CreateECPrivateKey()
  6190 ms  0x7984 cx:0x7ff786de9e68
  6190 ms     | 0x7984 EC_ValidatePublicKey()
  6190 ms     | 0x7984 ret:0x0
  6190 ms  0x7984 ret:0x7ff78ce03820::7ff78ce03820  60 a0 f5 87                                      `...
  6190 ms  0x7984 SECKEY_CreateECPrivateKey()
  6190 ms  0x7984 cx:0x7ff786de9e68
  6191 ms     | 0x7984 EC_ValidatePublicKey()
  6193 ms     | 0x7984 ret:0x0
  6193 ms  0x7984 ret:0x7ff78ce08020::7ff78ce08020  60 a5 f5 87                                      `...
  6197 ms  0x7984 SECKEY_CreateECPrivateKey()
  6197 ms  0x7984 cx:0x7ff786de9cc8
  6198 ms     | 0x7984 EC_ValidatePublicKey()
  6198 ms     | 0x7984 ret:0x0
  6198 ms  0x7984 ret:0x7ff78ce14820::7ff78ce14820  70 04 ff 87                                      p...
  6198 ms  0x7984 SECKEY_CreateECPrivateKey()
  6198 ms  0x7984 cx:0x7ff786de9cc8
  6198 ms     | 0x7984 EC_ValidatePublicKey()
  6200 ms     | 0x7984 ret:0x0
  6200 ms  0x7984 ret:0x7ff78d11e820::7ff78d11e820  90 0c ff 87                                      ....
  6200 ms  0x7984 SECKEY_CreateECPrivateKey()
  6200 ms  0x7984 cx:0x7ff786de9b28
  6201 ms     | 0x7984 EC_ValidatePublicKey()
  6201 ms     | 0x7984 ret:0x0
  6201 ms  0x7984 ret:0x7ff78d128820::7ff78d128820  50 b1 0e 88                                      P...
  6201 ms  0x7984 SECKEY_CreateECPrivateKey()
  6201 ms  0x7984 cx:0x7ff786de9b28
  6205 ms     | 0x7984 EC_ValidatePublicKey()
  6206 ms     | 0x7984 ret:0x0
  6206 ms  0x7984 ret:0x7ff78d12d020::7ff78d12d020  70 e9 32 88                                      p.2.
  6209 ms  0x7984 SECKEY_CreateECPrivateKey()
  6209 ms  0x7984 cx:0x7ff795385288
  6210 ms     | 0x7984 EC_ValidatePublicKey()
  6210 ms     | 0x7984 ret:0x0
  6210 ms  0x7984 ret:0x7ff78d135020::7ff78d135020  80 43 3c 88                                      .C<.
  6210 ms  0x7984 SECKEY_CreateECPrivateKey()
  6210 ms  0x7984 cx:0x7ff795385288
  6211 ms     | 0x7984 EC_ValidatePublicKey()
  6214 ms     | 0x7984 ret:0x0
  6214 ms  0x7984 ret:0x7ff78d136820::7ff78d136820  f0 01 5a 88                                      ..Z.
  6217 ms  0x7984 SSL_ImportFD()
  6217 ms  0x7984 ret:0x7ff7872b4760
  6218 ms  0x7984 SSL_AuthCertificateHook()
  6218 ms  0x7984 fd:0x7ff7872b4760
  6218 ms  0x7984 ret:0x0
  6218 ms  0x7984 PR_Connect()
  6218 ms  0x7984 fd:0x7ff7872b4760
  6218 ms  0x7984 SSL_ImportFD()
  6218 ms  0x7984 ret:0x7ff786de5940
  6218 ms  0x7984 SSL_AuthCertificateHook()
  6218 ms  0x7984 fd:0x7ff786de5940
  6218 ms  0x7984 ret:0x0
  6218 ms  0x7984 PR_Connect()
  6218 ms  0x7984 fd:0x7ff786de5940
  6220 ms  0x7984 SSL_ImportFD()
  6220 ms  0x7984 ret:0x7ff7872b40d0
  6220 ms  0x7984 SSL_AuthCertificateHook()
  6220 ms  0x7984 fd:0x7ff7872b40d0
  6220 ms  0x7984 ret:0x0
  6221 ms  0x7984 PR_Connect()
  6221 ms  0x7984 fd:0x7ff7872b40d0
  6237 ms  0x7984 SSL_ImportFD()
  6237 ms  0x7984 ret:0x7ff788f49c10
  6237 ms  0x7984 SSL_AuthCertificateHook()
  6237 ms  0x7984 fd:0x7ff788f49c10
  6237 ms  0x7984 ret:0x0
  6237 ms  0x7984 PR_Connect()
  6237 ms  0x7984 fd:0x7ff788f49c10
  6241 ms  0x7984 PK11_Encrypt()
  6241 ms  0x7984 symkey:0x7ff789d94d00
  6242 ms  0x7984 SECKEY_CreateECPrivateKey()
  6242 ms  0x7984 cx:0x7ff795385428
  6242 ms     | 0x7984 EC_ValidatePublicKey()
  6242 ms     | 0x7984 ret:0x0
  6242 ms  0x7984 ret:0x7ff78d281820::7ff78d281820  40 12 d5 89                                      @...
  6242 ms  0x7984 SECKEY_CreateECPrivateKey()
  6242 ms  0x7984 cx:0x7ff795385428
  6243 ms     | 0x7984 EC_ValidatePublicKey()
  6245 ms     | 0x7984 ret:0x0
  6245 ms  0x7984 ret:0x7ff78d283820::7ff78d283820  70 14 d5 89                                      p...
  6248 ms  SECKEY_ECParamsToKeySize()
  6248 ms  0x7984 ret:0x100
  6248 ms  SECKEY_ECParamsToBasePointOrderLen()
  6248 ms  0x7984 ret:0x100
  6248 ms  SECKEY_ECParamsToBasePointOrderLen()
  6248 ms  0x7984 ret:0x100
  6248 ms  0x7984 EC_ValidatePublicKey()
  6250 ms  0x7984 ret:0x0
  6255 ms  SECKEY_ECParamsToKeySize()
  6255 ms  0x7984 ret:0x100
  6255 ms  0x7984 SECKEY_CreateECPrivateKey()
  6255 ms  0x7984 cx:0x7ff786de9988
  6256 ms     | 0x7984 EC_ValidatePublicKey()
  6257 ms     | 0x7984 ret:0x0
  6257 ms  0x7984 ret:0x7ff78d291820::7ff78d291820  b0 f0 95 8b                                      ....
  6257 ms  0x7984 PK11_PubDeriveWithKDF()
  6257 ms  0x7984 seckey:0x7ff78d291820
  6257 ms     | 0x7984 EC_ValidatePublicKey()
  6259 ms     | 0x7984 ret:0x0
  6260 ms  0x7984 ret:0x7ff789d94c80
  6260 ms  0x7984 PK11_DeriveWithFlags()
  6260 ms  0x7984 basekey:0x7ff789d94c80
  6260 ms     | 0x7984 PK11_DeriveWithTemplate()
  6260 ms  0x7984 ret:0x7ff78724a700
  6260 ms  0x7984 PK11_Derive()
  6260 ms  0x7984 basekey:0x7ff78724a700
  6260 ms     | 0x7984 PK11_DeriveWithTemplate()
  6260 ms  0x7984 ret:0x7ff78724a780
  6260 ms  0x7984 SECKEY_DestroyPrivateKey()
  6260 ms  0x7984 privk:0x7ff78d291820::7ff78d291820  b0 f0 95 8b                                      ....
  6260 ms  0x7984 privk:0x7ff78d291820::7ff78d291820  e5 e5 e5 e5                                      ....
  6260 ms  0x7984 PK11_Encrypt()
  6260 ms  0x7984 symkey:0x7ff78724ad80
  6273 ms  SECKEY_ECParamsToKeySize()
  6273 ms  0x7984 ret:0x100
  6273 ms  SECKEY_ECParamsToBasePointOrderLen()
  6273 ms  0x7984 ret:0x100
  6273 ms  SECKEY_ECParamsToBasePointOrderLen()
  6273 ms  0x7984 ret:0x100
  6273 ms  0x7984 EC_ValidatePublicKey()
  6276 ms  0x7984 ret:0x0
  6278 ms  SECKEY_ECParamsToKeySize()
  6278 ms  0x7984 ret:0x100
  6278 ms  0x7984 SECKEY_CreateECPrivateKey()
  6278 ms  0x7984 cx:0x7ff7914de648
  6279 ms     | 0x7984 EC_ValidatePublicKey()
  6280 ms     | 0x7984 ret:0x0
  6280 ms  0x7984 ret:0x7ff78d295820::7ff78d295820  b0 df a4 8c                                      ....
  6280 ms  0x7984 PK11_PubDeriveWithKDF()
  6280 ms  0x7984 seckey:0x7ff78d295820
  6280 ms     | 0x7984 EC_ValidatePublicKey()
  6288 ms     | 0x7984 ret:0x0
  6293 ms  0x7984 ret:0x7ff789d94c80
  6293 ms  0x7984 PK11_DeriveWithFlags()
  6293 ms  0x7984 basekey:0x7ff789d94c80
  6293 ms     | 0x7984 PK11_DeriveWithTemplate()
  6293 ms  0x7984 ret:0x7ff787f58880
  6293 ms  0x7984 PK11_Derive()
  6293 ms  0x7984 basekey:0x7ff787f58880
  6293 ms     | 0x7984 PK11_DeriveWithTemplate()
  6293 ms  0x7984 ret:0x7ff787f58c00
  6293 ms  0x7984 SECKEY_DestroyPrivateKey()
  6293 ms  0x7984 privk:0x7ff78d295820::7ff78d295820  b0 df a4 8c                                      ....
  6293 ms  0x7984 privk:0x7ff78d295820::7ff78d295820  e5 e5 e5 e5                                      ....
  6294 ms  0x7984 PK11_Encrypt()
  6294 ms  0x7984 symkey:0x7ff787f58d80
  6294 ms  0x7984 SSL_ImportFD()
  6294 ms  0x7984 ret:0x7ff789dbd1c0
  6294 ms  0x7984 SSL_AuthCertificateHook()
  6294 ms  0x7984 fd:0x7ff789dbd1c0
  6294 ms  0x7984 ret:0x0
  6294 ms  0x7984 PR_Connect()
  6294 ms  0x7984 fd:0x7ff789dbd1c0
  6297 ms  SECKEY_ECParamsToKeySize()
  6297 ms  0x7984 ret:0x100
  6297 ms  SECKEY_ECParamsToBasePointOrderLen()
  6297 ms  0x7984 ret:0x100
  6297 ms  SECKEY_ECParamsToBasePointOrderLen()
  6297 ms  0x7984 ret:0x100
  6297 ms  0x7984 EC_ValidatePublicKey()
  6298 ms  0x7984 ret:0x0
  6302 ms  SECKEY_ECParamsToKeySize()
  6302 ms  0x7984 ret:0x100
  6302 ms  0x7984 SECKEY_CreateECPrivateKey()
  6302 ms  0x7984 cx:0x7ff786de9e68
  6303 ms     | 0x7984 EC_ValidatePublicKey()
  6304 ms     | 0x7984 ret:0x0
  6304 ms  0x7984 ret:0x7ff78d299020::7ff78d299020  10 3f a9 8c                                      .?..
  6304 ms  0x7984 PK11_PubDeriveWithKDF()
  6304 ms  0x7984 seckey:0x7ff78d299020
  6304 ms     | 0x7984 EC_ValidatePublicKey()
  6306 ms     | 0x7984 ret:0x0
  6307 ms  0x7984 ret:0x7ff789d94c80
  6307 ms  0x7984 PK11_DeriveWithFlags()
  6307 ms  0x7984 basekey:0x7ff789d94c80
  6307 ms     | 0x7984 PK11_DeriveWithTemplate()
  6307 ms  0x7984 ret:0x7ff787f9a280
  6307 ms  0x7984 PK11_Derive()
  6307 ms  0x7984 basekey:0x7ff787f9a280
  6307 ms     | 0x7984 PK11_DeriveWithTemplate()
  6307 ms  0x7984 ret:0x7ff787f9a380
  6307 ms  0x7984 SECKEY_DestroyPrivateKey()
  6307 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  10 3f a9 8c                                      .?..
  6307 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  e5 e5 e5 e5                                      ....
  6307 ms  0x7984 PK11_Encrypt()
  6307 ms  0x7984 symkey:0x7ff787f9a500
  6320 ms  SECKEY_ECParamsToKeySize()
  6320 ms  0x7984 ret:0x100
  6320 ms  0x7984 SECKEY_CreateECPrivateKey()
  6320 ms  0x7984 cx:0x7ff786de9cc8
  6321 ms     | 0x7984 EC_ValidatePublicKey()
  6322 ms     | 0x7984 ret:0x0
  6322 ms  0x7984 ret:0x7ff78fa78820::7ff78fa78820  90 32 b2 8c                                      .2..
  6322 ms  0x7984 PK11_PubDeriveWithKDF()
  6322 ms  0x7984 seckey:0x7ff78fa78820
  6322 ms     | 0x7984 EC_ValidatePublicKey()
  6324 ms     | 0x7984 ret:0x0
  6334 ms  0x7984 ret:0x7ff789d94c80
  6334 ms  0x7984 PK11_DeriveWithFlags()
  6334 ms  0x7984 basekey:0x7ff789d94c80
  6334 ms     | 0x7984 PK11_DeriveWithTemplate()
  6334 ms  0x7984 ret:0x7ff78800ba80
  6334 ms  0x7984 PK11_Derive()
  6334 ms  0x7984 basekey:0x7ff78800ba80
  6334 ms     | 0x7984 PK11_DeriveWithTemplate()
  6334 ms  0x7984 ret:0x7ff78800c100
  6334 ms  0x7984 SECKEY_DestroyPrivateKey()
  6334 ms  0x7984 privk:0x7ff78fa78820::7ff78fa78820  90 32 b2 8c                                      .2..
  6334 ms  0x7984 privk:0x7ff78fa78820::7ff78fa78820  e5 e5 e5 e5                                      ....
  6334 ms  0x7984 PK11_Encrypt()
  6334 ms  0x7984 symkey:0x7ff78800c280
  6338 ms  SECKEY_ECParamsToKeySize()
  6338 ms  0x7984 ret:0x100
  6338 ms  SECKEY_ECParamsToBasePointOrderLen()
  6338 ms  0x7984 ret:0x100
  6338 ms  SECKEY_ECParamsToBasePointOrderLen()
  6338 ms  0x7984 ret:0x100
  6338 ms  0x7984 EC_ValidatePublicKey()
  6340 ms  0x7984 ret:0x0
  6344 ms  SECKEY_ECParamsToKeySize()
  6344 ms  0x7984 ret:0x100
  6344 ms  0x7984 SECKEY_CreateECPrivateKey()
  6344 ms  0x7984 cx:0x7ff786de9b28
  6345 ms     | 0x7984 EC_ValidatePublicKey()
  6346 ms     | 0x7984 ret:0x0
  6346 ms  0x7984 ret:0x7ff78fb38020::7ff78fb38020  a0 41 be 8c                                      .A..
  6347 ms  0x7984 PK11_PubDeriveWithKDF()
  6347 ms  0x7984 seckey:0x7ff78fb38020
  6347 ms     | 0x7984 EC_ValidatePublicKey()
  6348 ms     | 0x7984 ret:0x0
  6349 ms  0x7984 ret:0x7ff789d94c80
  6349 ms  0x7984 PK11_DeriveWithFlags()
  6349 ms  0x7984 basekey:0x7ff789d94c80
  6349 ms     | 0x7984 PK11_DeriveWithTemplate()
  6349 ms  0x7984 ret:0x7ff7880bf900
  6349 ms  0x7984 PK11_Derive()
  6349 ms  0x7984 basekey:0x7ff7880bf900
  6349 ms     | 0x7984 PK11_DeriveWithTemplate()
  6349 ms  0x7984 ret:0x7ff7880bf980
  6349 ms  0x7984 SECKEY_DestroyPrivateKey()
  6349 ms  0x7984 privk:0x7ff78fb38020::7ff78fb38020  a0 41 be 8c                                      .A..
  6350 ms  0x7984 privk:0x7ff78fb38020::7ff78fb38020  e5 e5 e5 e5                                      ....
  6350 ms  0x7984 PK11_Encrypt()
  6350 ms  0x7984 symkey:0x7ff7880bfc80
  6357 ms  SECKEY_ECParamsToKeySize()
  6357 ms  0x7984 ret:0x100
  6357 ms  SECKEY_ECParamsToBasePointOrderLen()
  6357 ms  0x7984 ret:0x100
  6357 ms  SECKEY_ECParamsToBasePointOrderLen()
  6357 ms  0x7984 ret:0x100
  6357 ms  0x7984 EC_ValidatePublicKey()
  6358 ms  0x7984 ret:0x0
  6360 ms  SECKEY_ECParamsToKeySize()
  6360 ms  0x7984 ret:0x100
  6360 ms  0x7984 SECKEY_CreateECPrivateKey()
  6360 ms  0x7984 cx:0x7ff795385288
  6361 ms     | 0x7984 EC_ValidatePublicKey()
  6372 ms     | 0x7984 ret:0x0
  6372 ms  0x7984 ret:0x7ff78fb39820::7ff78fb39820  50 4b be 8c                                      PK..
  6372 ms  0x7984 PK11_PubDeriveWithKDF()
  6372 ms  0x7984 seckey:0x7ff78fb39820
  6373 ms     | 0x7984 EC_ValidatePublicKey()
  6374 ms     | 0x7984 ret:0x0
  6375 ms  0x7984 ret:0x7ff789d94c80
  6375 ms  0x7984 PK11_DeriveWithFlags()
  6375 ms  0x7984 basekey:0x7ff789d94c80
  6375 ms     | 0x7984 PK11_DeriveWithTemplate()
  6375 ms  0x7984 ret:0x7ff7880c0a80
  6375 ms  0x7984 PK11_Derive()
  6375 ms  0x7984 basekey:0x7ff7880c0a80
  6375 ms     | 0x7984 PK11_DeriveWithTemplate()
  6376 ms  0x7984 ret:0x7ff7880c0c00
  6376 ms  0x7984 SECKEY_DestroyPrivateKey()
  6376 ms  0x7984 privk:0x7ff78fb39820::7ff78fb39820  50 4b be 8c                                      PK..
  6376 ms  0x7984 privk:0x7ff78fb39820::7ff78fb39820  e5 e5 e5 e5                                      ....
  6376 ms  0x7984 PK11_Encrypt()
  6376 ms  0x7984 symkey:0x7ff788363080
  6386 ms  0x7984 SECKEY_CreateECPrivateKey()
  6386 ms  0x7984 cx:0x7ff7af0a84a8
  6386 ms     | 0x7984 EC_ValidatePublicKey()
  6386 ms     | 0x7984 ret:0x0
  6386 ms  0x7984 ret:0x7ff79080a020::7ff79080a020  50 a1 d0 8c                                      P...
  6386 ms  0x7984 SECKEY_CreateECPrivateKey()
  6386 ms  0x7984 cx:0x7ff7af0a84a8
  6387 ms     | 0x7984 EC_ValidatePublicKey()
  6396 ms     | 0x7984 ret:0x0
  6396 ms  0x7984 ret:0x7ff79080c020::7ff79080c020  b0 a5 d0 8c                                      ....
  6396 ms  0x7984 PK11_Encrypt()
  6396 ms  0x7984 symkey:0x7ff775e1e900
           /* TID 0x798c */
  6397 ms  0x798c PR_Close()
  6397 ms  0x798c fd:0x7ff7872b4fd0
           /* TID 0x7984 */
  6399 ms  SECKEY_ECParamsToKeySize()
  6399 ms  0x7984 ret:0x100
  6399 ms  SECKEY_ECParamsToBasePointOrderLen()
  6399 ms  0x7984 ret:0x100
  6399 ms  SECKEY_ECParamsToBasePointOrderLen()
  6399 ms  0x7984 ret:0x100
  6399 ms  0x7984 EC_ValidatePublicKey()
  6400 ms  0x7984 ret:0x0
  6407 ms  SECKEY_ECParamsToKeySize()
  6407 ms  0x7984 ret:0x100
  6407 ms  0x7984 SECKEY_CreateECPrivateKey()
  6407 ms  0x7984 cx:0x7ff795385428
  6408 ms     | 0x7984 EC_ValidatePublicKey()
  6409 ms     | 0x7984 ret:0x0
  6409 ms  0x7984 ret:0x7ff790810020::7ff790810020  90 ac d0 8c                                      ....
  6409 ms  0x7984 PK11_PubDeriveWithKDF()
  6409 ms  0x7984 seckey:0x7ff790810020
  6409 ms     | 0x7984 EC_ValidatePublicKey()
  6410 ms     | 0x7984 ret:0x0
  6422 ms  0x7984 ret:0x7ff789d94c80
  6422 ms  0x7984 PK11_DeriveWithFlags()
  6422 ms  0x7984 basekey:0x7ff789d94c80
  6422 ms     | 0x7984 PK11_DeriveWithTemplate()
  6422 ms  0x7984 ret:0x7ff7761f0c00
  6422 ms  0x7984 PK11_Derive()
  6422 ms  0x7984 basekey:0x7ff7761f0c00
  6422 ms     | 0x7984 PK11_DeriveWithTemplate()
  6422 ms  0x7984 ret:0x7ff788393900
  6422 ms  0x7984 SECKEY_DestroyPrivateKey()
  6422 ms  0x7984 privk:0x7ff790810020::7ff790810020  90 ac d0 8c                                      ....
  6422 ms  0x7984 privk:0x7ff790810020::7ff790810020  e5 e5 e5 e5                                      ....
  6422 ms  0x7984 PK11_Encrypt()
  6422 ms  0x7984 symkey:0x7ff788394100
  6426 ms  0x7984 SECKEY_CreateECPrivateKey()
  6426 ms  0x7984 cx:0x7ff794e560a8
  6426 ms     | 0x7984 EC_ValidatePublicKey()
  6426 ms     | 0x7984 ret:0x0
  6426 ms  0x7984 ret:0x7ff790810020::7ff790810020  30 a8 d0 8c                                      0...
  6426 ms  0x7984 SECKEY_CreateECPrivateKey()
  6426 ms  0x7984 cx:0x7ff794e560a8
  6427 ms     | 0x7984 EC_ValidatePublicKey()
  6428 ms     | 0x7984 ret:0x0
  6428 ms  0x7984 ret:0x7ff790813020::7ff790813020  b0 a0 d4 8c                                      ....
  6429 ms  0x7984 SECKEY_CreateECPrivateKey()
  6429 ms  0x7984 cx:0x7ff794e56da8
  6429 ms     | 0x7984 EC_ValidatePublicKey()
  6430 ms     | 0x7984 ret:0x0
  6430 ms  0x7984 ret:0x7ff79081a020::7ff79081a020  90 ac d4 8c                                      ....
  6430 ms  0x7984 SECKEY_CreateECPrivateKey()
  6430 ms  0x7984 cx:0x7ff794e56da8
  6430 ms     | 0x7984 EC_ValidatePublicKey()
  6436 ms     | 0x7984 ret:0x0
  6436 ms  0x7984 ret:0x7ff79081e820::7ff79081e820  b0 5f 18 76                                      ._.v
  6438 ms  0x7984 PR_Connect()
  6438 ms  0x7984 fd:0x7ff786de5be0
  6438 ms  0x7984 SSL_ImportFD()
  6438 ms  0x7984 ret:0x7ff7883fb640
  6438 ms  0x7984 SSL_AuthCertificateHook()
  6438 ms  0x7984 fd:0x7ff7883fb640
  6438 ms  0x7984 ret:0x0
  6438 ms  0x7984 PR_Connect()
  6438 ms  0x7984 fd:0x7ff7883fb640
  6440 ms  0x7984 SSL_ImportFD()
  6440 ms  0x7984 ret:0x7ff78c862850
  6440 ms  0x7984 SSL_AuthCertificateHook()
  6440 ms  0x7984 fd:0x7ff78c862850
  6440 ms  0x7984 ret:0x0
  6440 ms  0x7984 PR_Connect()
  6440 ms  0x7984 fd:0x7ff78c862850
  6440 ms  0x7984 SSL_ImportFD()
  6440 ms  0x7984 ret:0x7ff78b932fd0
  6440 ms  0x7984 SSL_AuthCertificateHook()
  6440 ms  0x7984 fd:0x7ff78b932fd0
  6440 ms  0x7984 ret:0x0
  6440 ms  0x7984 PR_Connect()
  6440 ms  0x7984 fd:0x7ff78b932fd0
  6441 ms  0x7984 SECKEY_CreateECPrivateKey()
  6441 ms  0x7984 cx:0x7ff794e56c08
  6441 ms     | 0x7984 EC_ValidatePublicKey()
  6441 ms     | 0x7984 ret:0x0
  6441 ms  0x7984 ret:0x7ff790823820::7ff790823820  90 12 df 8c                                      ....
  6441 ms  0x7984 SECKEY_CreateECPrivateKey()
  6441 ms  0x7984 cx:0x7ff794e56c08
  6442 ms     | 0x7984 EC_ValidatePublicKey()
  6443 ms     | 0x7984 ret:0x0
  6443 ms  0x7984 ret:0x7ff790bc8820::7ff790bc8820  c0 14 df 8c                                      ....
  6454 ms  0x7984 SECKEY_CreateECPrivateKey()
  6454 ms  0x7984 cx:0x7ff794e56f48
  6455 ms     | 0x7984 EC_ValidatePublicKey()
  6455 ms     | 0x7984 ret:0x0
  6455 ms  0x7984 ret:0x7ff790bce820::7ff790bce820  80 23 00 8d                                      .#..
  6455 ms  0x7984 SECKEY_CreateECPrivateKey()
  6455 ms  0x7984 cx:0x7ff794e56f48
  6455 ms     | 0x7984 EC_ValidatePublicKey()
  6457 ms     | 0x7984 ret:0x0
  6457 ms  0x7984 ret:0x7ff790bd0820::7ff790bd0820  40 7c 02 8d                                      @|..
  6460 ms  0x7984 SECKEY_CreateECPrivateKey()
  6460 ms  0x7984 cx:0x7ff794e570e8
  6461 ms     | 0x7984 EC_ValidatePublicKey()
  6461 ms     | 0x7984 ret:0x0
  6461 ms  0x7984 ret:0x7ff790bd3020::7ff790bd3020  80 7d 02 8d                                      .}..
  6461 ms  0x7984 SECKEY_CreateECPrivateKey()
  6461 ms  0x7984 cx:0x7ff794e570e8
  6461 ms     | 0x7984 EC_ValidatePublicKey()
  6468 ms     | 0x7984 ret:0x0
  6468 ms  0x7984 ret:0x7ff790bd5020::7ff790bd5020  50 e1 04 8d                                      P...
  6471 ms  0x7984 PR_Connect()
  6471 ms  0x7984 fd:0x7ff7883fb400
  6472 ms  0x7984 SSL_ImportFD()
  6472 ms  0x7984 ret:0x7ff789dbdc70
  6472 ms  0x7984 SSL_AuthCertificateHook()
  6472 ms  0x7984 fd:0x7ff789dbdc70
  6472 ms  0x7984 ret:0x0
  6472 ms  0x7984 PR_Connect()
  6472 ms  0x7984 fd:0x7ff789dbdc70
  6472 ms  0x7984 SSL_ImportFD()
  6472 ms  0x7984 ret:0x7ff78b959040
  6472 ms  0x7984 SSL_AuthCertificateHook()
  6472 ms  0x7984 fd:0x7ff78b959040
  6472 ms  0x7984 ret:0x0
  6472 ms  0x7984 PR_Connect()
  6472 ms  0x7984 fd:0x7ff78b959040
  6472 ms  0x7984 SSL_ImportFD()
  6472 ms  0x7984 ret:0x7ff789d3ebb0
  6472 ms  0x7984 SSL_AuthCertificateHook()
  6472 ms  0x7984 fd:0x7ff789d3ebb0
  6472 ms  0x7984 ret:0x0
  6472 ms  0x7984 PR_Connect()
  6472 ms  0x7984 fd:0x7ff789d3ebb0
  6473 ms  0x7984 PR_Connect()
  6473 ms  0x7984 fd:0x7ff78cbdf970
  6473 ms  0x7984 SSL_ImportFD()
  6473 ms  0x7984 ret:0x7ff789dbdbe0
  6473 ms  0x7984 SSL_AuthCertificateHook()
  6473 ms  0x7984 fd:0x7ff789dbdbe0
  6473 ms  0x7984 ret:0x0
  6473 ms  0x7984 PR_Connect()
  6473 ms  0x7984 fd:0x7ff789dbdbe0
  6474 ms  0x7984 SSL_ImportFD()
  6474 ms  0x7984 ret:0x7ff789d7b4f0
  6474 ms  0x7984 SSL_AuthCertificateHook()
  6474 ms  0x7984 fd:0x7ff789d7b4f0
  6474 ms  0x7984 ret:0x0
  6474 ms  0x7984 PR_Connect()
  6474 ms  0x7984 fd:0x7ff789d7b4f0
  6474 ms  0x7984 SSL_ImportFD()
  6474 ms  0x7984 ret:0x7ff78c8625e0
  6474 ms  0x7984 SSL_AuthCertificateHook()
  6474 ms  0x7984 fd:0x7ff78c8625e0
  6474 ms  0x7984 ret:0x0
  6474 ms  0x7984 PR_Connect()
  6474 ms  0x7984 fd:0x7ff78c8625e0
  6474 ms  0x7984 SSL_ImportFD()
  6474 ms  0x7984 ret:0x7ff78cbeb580
  6474 ms  0x7984 SSL_AuthCertificateHook()
  6474 ms  0x7984 fd:0x7ff78cbeb580
  6474 ms  0x7984 ret:0x0
  6474 ms  0x7984 PR_Connect()
  6474 ms  0x7984 fd:0x7ff78cbeb580
  6475 ms  0x7984 SSL_ImportFD()
  6475 ms  0x7984 ret:0x7ff78b9b4fd0
  6475 ms  0x7984 SSL_AuthCertificateHook()
  6475 ms  0x7984 fd:0x7ff78b9b4fd0
  6475 ms  0x7984 ret:0x0
  6475 ms  0x7984 PR_Connect()
  6475 ms  0x7984 fd:0x7ff78b9b4fd0
  6475 ms  0x7984 SSL_ImportFD()
  6475 ms  0x7984 ret:0x7ff78cbf2040
  6475 ms  0x7984 SSL_AuthCertificateHook()
  6475 ms  0x7984 fd:0x7ff78cbf2040
  6475 ms  0x7984 ret:0x0
  6475 ms  0x7984 PR_Connect()
  6475 ms  0x7984 fd:0x7ff78cbf2040
  6475 ms  0x7984 SSL_ImportFD()
  6475 ms  0x7984 ret:0x7ff78c862c70
  6475 ms  0x7984 SSL_AuthCertificateHook()
  6475 ms  0x7984 fd:0x7ff78c862c70
  6475 ms  0x7984 ret:0x0
  6476 ms  0x7984 PR_Connect()
  6476 ms  0x7984 fd:0x7ff78c862c70
  6476 ms  0x7984 SSL_ImportFD()
  6476 ms  0x7984 ret:0x7ff78cbf2400
  6476 ms  0x7984 SSL_AuthCertificateHook()
  6476 ms  0x7984 fd:0x7ff78cbf2400
  6476 ms  0x7984 ret:0x0
  6477 ms  0x7984 PR_Connect()
  6477 ms  0x7984 fd:0x7ff78cbf2400
  6477 ms  0x7984 SSL_ImportFD()
  6477 ms  0x7984 ret:0x7ff78cbebd60
  6477 ms  0x7984 SSL_AuthCertificateHook()
  6477 ms  0x7984 fd:0x7ff78cbebd60
  6477 ms  0x7984 ret:0x0
  6477 ms  0x7984 PR_Connect()
  6477 ms  0x7984 fd:0x7ff78cbebd60
  6478 ms  SECKEY_ECParamsToKeySize()
  6478 ms  0x7984 ret:0x100
  6478 ms  0x7984 SECKEY_CreateECPrivateKey()
  6478 ms  0x7984 cx:0x7ff7af0a84a8
  6478 ms     | 0x7984 EC_ValidatePublicKey()
  6480 ms     | 0x7984 ret:0x0
  6480 ms  0x7984 ret:0x7ff790bd8020::7ff790bd8020  c0 5e 06 8d                                      .^..
  6480 ms  0x7984 PK11_PubDeriveWithKDF()
  6480 ms  0x7984 seckey:0x7ff790bd8020
  6480 ms     | 0x7984 EC_ValidatePublicKey()
  6494 ms     | 0x7984 ret:0x0
  6496 ms  0x7984 ret:0x7ff789d94c80
  6496 ms  0x7984 PK11_DeriveWithFlags()
  6496 ms  0x7984 basekey:0x7ff789d94c80
  6496 ms     | 0x7984 PK11_DeriveWithTemplate()
  6496 ms  0x7984 ret:0x7ff788ab4700
  6496 ms  0x7984 PK11_Derive()
  6496 ms  0x7984 basekey:0x7ff788ab4700
  6496 ms     | 0x7984 PK11_DeriveWithTemplate()
  6496 ms  0x7984 ret:0x7ff788ab4f80
  6496 ms  0x7984 SECKEY_DestroyPrivateKey()
  6496 ms  0x7984 privk:0x7ff790bd8020::7ff790bd8020  c0 5e 06 8d                                      .^..
  6496 ms  0x7984 privk:0x7ff790bd8020::7ff790bd8020  e5 e5 e5 e5                                      ....
  6496 ms  0x7984 PK11_Encrypt()
  6496 ms  0x7984 symkey:0x7ff788af4b00
  6503 ms  SECKEY_ECParamsToKeySize()
  6503 ms  0x7984 ret:0x100
  6503 ms  0x7984 SECKEY_CreateECPrivateKey()
  6503 ms  0x7984 cx:0x7ff794e560a8
  6504 ms     | 0x7984 EC_ValidatePublicKey()
  6508 ms     | 0x7984 ret:0x0
  6508 ms  0x7984 ret:0x7ff790bd9020::7ff790bd9020  b0 da 08 8d                                      ....
  6508 ms  0x7984 PK11_PubDeriveWithKDF()
  6508 ms  0x7984 seckey:0x7ff790bd9020
  6508 ms     | 0x7984 EC_ValidatePublicKey()
  6510 ms     | 0x7984 ret:0x0
  6511 ms  0x7984 ret:0x7ff789d94c80
  6511 ms  0x7984 PK11_DeriveWithFlags()
  6511 ms  0x7984 basekey:0x7ff789d94c80
  6511 ms     | 0x7984 PK11_DeriveWithTemplate()
  6511 ms  0x7984 ret:0x7ff788af5000
  6511 ms  0x7984 PK11_Derive()
  6511 ms  0x7984 basekey:0x7ff788af5000
  6511 ms     | 0x7984 PK11_DeriveWithTemplate()
  6511 ms  0x7984 ret:0x7ff788af5180
  6511 ms  0x7984 SECKEY_DestroyPrivateKey()
  6511 ms  0x7984 privk:0x7ff790bd9020::7ff790bd9020  b0 da 08 8d                                      ....
  6511 ms  0x7984 privk:0x7ff790bd9020::7ff790bd9020  e5 e5 e5 e5                                      ....
  6515 ms  0x7984 PK11_Encrypt()
  6515 ms  0x7984 symkey:0x7ff788f0a180
           /* TID 0x798c */
  6516 ms  0x798c PR_Close()
  6516 ms  0x798c fd:0x7ff789d7b220
           /* TID 0x7a01 */
  6516 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6517 ms  0x7a01 ret:0x0
  6517 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6517 ms  0x7a01 ret:0x0
           /* TID 0x7984 */
  6518 ms  SECKEY_ECParamsToKeySize()
  6518 ms  0x7984 ret:0x100
  6518 ms  SECKEY_ECParamsToBasePointOrderLen()
  6518 ms  0x7984 ret:0x100
  6518 ms  SECKEY_ECParamsToBasePointOrderLen()
  6518 ms  0x7984 ret:0x100
  6518 ms  0x7984 EC_ValidatePublicKey()
  6520 ms  0x7984 ret:0x0
  6523 ms  SECKEY_ECParamsToKeySize()
  6523 ms  0x7984 ret:0x100
  6523 ms  0x7984 SECKEY_CreateECPrivateKey()
  6523 ms  0x7984 cx:0x7ff794e56da8
  6523 ms     | 0x7984 EC_ValidatePublicKey()
  6525 ms     | 0x7984 ret:0x0
  6525 ms  0x7984 ret:0x7ff790bdd820::7ff790bdd820  e0 3c 0d 8d                                      .<..
  6525 ms  0x7984 PK11_PubDeriveWithKDF()
  6525 ms  0x7984 seckey:0x7ff790bdd820
  6525 ms     | 0x7984 EC_ValidatePublicKey()
  6526 ms     | 0x7984 ret:0x0
  6528 ms  0x7984 ret:0x7ff789d94c80
  6528 ms  0x7984 PK11_DeriveWithFlags()
  6528 ms  0x7984 basekey:0x7ff789d94c80
  6528 ms     | 0x7984 PK11_DeriveWithTemplate()
  6528 ms  0x7984 ret:0x7ff78724a680
  6528 ms  0x7984 PK11_Derive()
  6528 ms  0x7984 basekey:0x7ff78724a680
  6528 ms     | 0x7984 PK11_DeriveWithTemplate()
  6528 ms  0x7984 ret:0x7ff7885ecd00
  6528 ms  0x7984 SECKEY_DestroyPrivateKey()
  6528 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  e0 3c 0d 8d                                      .<..
  6528 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  e5 e5 e5 e5                                      ....
  6528 ms  0x7984 PK11_Encrypt()
  6528 ms  0x7984 symkey:0x7ff788ff8880
  6531 ms  SECKEY_ECParamsToKeySize()
  6531 ms  0x7984 ret:0x100
  6531 ms  0x7984 SECKEY_CreateECPrivateKey()
  6531 ms  0x7984 cx:0x7ff794e56c08
  6531 ms     | 0x7984 EC_ValidatePublicKey()
  6533 ms     | 0x7984 ret:0x0
  6533 ms  0x7984 ret:0x7ff790bdf020::7ff790bdf020  e0 3c 0d 8d                                      .<..
  6533 ms  0x7984 PK11_PubDeriveWithKDF()
  6533 ms  0x7984 seckey:0x7ff790bdf020
  6533 ms     | 0x7984 EC_ValidatePublicKey()
  6537 ms     | 0x7984 ret:0x0
  6538 ms  0x7984 ret:0x7ff789d94c80
  6538 ms  0x7984 PK11_DeriveWithFlags()
  6538 ms  0x7984 basekey:0x7ff789d94c80
  6538 ms     | 0x7984 PK11_DeriveWithTemplate()
  6538 ms  0x7984 ret:0x7ff788f0a400
  6538 ms  0x7984 PK11_Derive()
  6538 ms  0x7984 basekey:0x7ff788f0a400
  6538 ms     | 0x7984 PK11_DeriveWithTemplate()
  6538 ms  0x7984 ret:0x7ff788fcb880
  6538 ms  0x7984 SECKEY_DestroyPrivateKey()
  6538 ms  0x7984 privk:0x7ff790bdf020::7ff790bdf020  e0 3c 0d 8d                                      .<..
  6539 ms  0x7984 privk:0x7ff790bdf020::7ff790bdf020  e5 e5 e5 e5                                      ....
  6539 ms  0x7984 PK11_Encrypt()
  6539 ms  0x7984 symkey:0x7ff788fcbf80
  6539 ms  0x7984 SECKEY_CreateECPrivateKey()
  6539 ms  0x7984 cx:0x7ff794e57aa8
  6540 ms     | 0x7984 EC_ValidatePublicKey()
  6540 ms     | 0x7984 ret:0x0
  6540 ms  0x7984 ret:0x7ff790bdd820::7ff790bdd820  50 3b 0d 8d                                      P;..
  6540 ms  0x7984 SECKEY_CreateECPrivateKey()
  6540 ms  0x7984 cx:0x7ff794e57aa8
  6541 ms     | 0x7984 EC_ValidatePublicKey()
  6542 ms     | 0x7984 ret:0x0
  6542 ms  0x7984 ret:0x7ff790be1820::7ff790be1820  20 84 0f 8d                                       ...
  6543 ms  0x7984 SSL_AuthCertificateComplete()
  6543 ms  0x7984 fd:0x7ff7761a2040
  6543 ms  0x7984 err:0x0
  6543 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6543 ms     | 0x7984 privk:0x7ff78ca0b020::7ff78ca0b020  30 9d a2 87                                      0...
  6543 ms     | 0x7984 privk:0x7ff78ca0b020::7ff78ca0b020  e5 e5 e5 e5                                      ....
  6543 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6543 ms     | 0x7984 privk:0x7ff78ca06020::7ff78ca06020  e0 92 a2 87                                      ....
  6543 ms     | 0x7984 privk:0x7ff78ca06020::7ff78ca06020  e5 e5 e5 e5                                      ....
  6543 ms  0x7984 SSL_AuthCertificateComplete()
  6543 ms  0x7984 fd:0x7ff786de59a0
  6543 ms  0x7984 err:0x0
  6543 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6543 ms     | 0x7984 privk:0x7ff78d136820::7ff78d136820  f0 01 5a 88                                      ..Z.
  6543 ms     | 0x7984 privk:0x7ff78d136820::7ff78d136820  e5 e5 e5 e5                                      ....
  6543 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6543 ms     | 0x7984 privk:0x7ff78d135020::7ff78d135020  80 43 3c 88                                      .C<.
  6544 ms     | 0x7984 privk:0x7ff78d135020::7ff78d135020  e5 e5 e5 e5                                      ....
  6544 ms  0x7984 SSL_AuthCertificateComplete()
  6544 ms  0x7984 fd:0x7ff7880e1df0
  6544 ms  0x7984 err:0x0
  6544 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6544 ms     | 0x7984 privk:0x7ff78d283820::7ff78d283820  70 14 d5 89                                      p...
  6544 ms     | 0x7984 privk:0x7ff78d283820::7ff78d283820  e5 e5 e5 e5                                      ....
  6544 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6544 ms     | 0x7984 privk:0x7ff78d281820::7ff78d281820  40 12 d5 89                                      @...
  6544 ms     | 0x7984 privk:0x7ff78d281820::7ff78d281820  e5 e5 e5 e5                                      ....
  6546 ms  0x7984 PK11_Encrypt()
  6546 ms  0x7984 symkey:0x7ff78724ad80
  6548 ms  0x7984 PK11_Encrypt()
  6548 ms  0x7984 symkey:0x7ff788363080
  6549 ms  0x7984 PK11_Encrypt()
  6549 ms  0x7984 symkey:0x7ff788394100
  6549 ms  SECKEY_ECParamsToKeySize()
  6549 ms  0x7984 ret:0x100
  6549 ms  0x7984 SECKEY_CreateECPrivateKey()
  6549 ms  0x7984 cx:0x7ff794e56f48
  6550 ms     | 0x7984 EC_ValidatePublicKey()
  6551 ms     | 0x7984 ret:0x0
  6551 ms  0x7984 ret:0x7ff78ca0a020::7ff78ca0a020  f0 4b 3c 88                                      .K<.
  6551 ms  0x7984 PK11_PubDeriveWithKDF()
  6551 ms  0x7984 seckey:0x7ff78ca0a020
  6551 ms     | 0x7984 EC_ValidatePublicKey()
  6553 ms     | 0x7984 ret:0x0
  6555 ms  0x7984 ret:0x7ff789d94c80
  6555 ms  0x7984 PK11_DeriveWithFlags()
  6555 ms  0x7984 basekey:0x7ff789d94c80
  6555 ms     | 0x7984 PK11_DeriveWithTemplate()
  6555 ms  0x7984 ret:0x7ff789d4c180
  6555 ms  0x7984 PK11_Derive()
  6555 ms  0x7984 basekey:0x7ff789d4c180
  6555 ms     | 0x7984 PK11_DeriveWithTemplate()
  6555 ms  0x7984 ret:0x7ff789d4cb80
  6555 ms  0x7984 SECKEY_DestroyPrivateKey()
  6555 ms  0x7984 privk:0x7ff78ca0a020::7ff78ca0a020  f0 4b 3c 88                                      .K<.
  6555 ms  0x7984 privk:0x7ff78ca0a020::7ff78ca0a020  e5 e5 e5 e5                                      ....
  6555 ms  0x7984 PK11_Encrypt()
  6555 ms  0x7984 symkey:0x7ff789d4d400
  6555 ms  0x7984 SECKEY_CreateECPrivateKey()
  6555 ms  0x7984 cx:0x7ff794e57c48
  6556 ms     | 0x7984 EC_ValidatePublicKey()
  6556 ms     | 0x7984 ret:0x0
  6556 ms  0x7984 ret:0x7ff78ca0a020::7ff78ca0a020  80 48 3c 88                                      .H<.
  6556 ms  0x7984 SECKEY_CreateECPrivateKey()
  6556 ms  0x7984 cx:0x7ff794e57c48
  6557 ms     | 0x7984 EC_ValidatePublicKey()
  6558 ms     | 0x7984 ret:0x0
  6558 ms  0x7984 ret:0x7ff78d12e820::7ff78d12e820  30 a8 aa 88                                      0...
  6564 ms  0x7984 SECKEY_CreateECPrivateKey()
  6564 ms  0x7984 cx:0x7ff794e57428
  6564 ms     | 0x7984 EC_ValidatePublicKey()
  6564 ms     | 0x7984 ret:0x0
  6564 ms  0x7984 ret:0x7ff78d136820::7ff78d136820  50 11 d5 89                                      P...
  6564 ms  0x7984 SECKEY_CreateECPrivateKey()
  6564 ms  0x7984 cx:0x7ff794e57428
  6565 ms     | 0x7984 EC_ValidatePublicKey()
  6566 ms     | 0x7984 ret:0x0
  6566 ms  0x7984 ret:0x7ff78d281820::7ff78d281820  90 a7 d0 8c                                      ....
           /* TID 0x79ec */
  6567 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6567 ms  0x79ec ret:0x0
  6567 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6567 ms  0x79ec ret:0x0
           /* TID 0x798c */
  6568 ms  0x798c PR_Close()
  6568 ms  0x798c fd:0x7ff7872b4fd0
           /* TID 0x7984 */
  6569 ms  0x7984 SSL_ImportFD()
  6569 ms  0x7984 ret:0x7ff78d073a60
  6569 ms  0x7984 SSL_AuthCertificateHook()
  6569 ms  0x7984 fd:0x7ff78d073a60
  6569 ms  0x7984 ret:0x0
  6569 ms  0x7984 PR_Connect()
  6569 ms  0x7984 fd:0x7ff78d073a60
  6570 ms  0x7984 SSL_AuthCertificateComplete()
  6570 ms  0x7984 fd:0x7ff7761487c0
  6570 ms  0x7984 err:0x0
  6570 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6570 ms     | 0x7984 privk:0x7ff78ca18020::7ff78ca18020  f0 86 a4 87                                      ....
  6570 ms     | 0x7984 privk:0x7ff78ca18020::7ff78ca18020  e5 e5 e5 e5                                      ....
  6570 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6570 ms     | 0x7984 privk:0x7ff78ca14020::7ff78ca14020  e0 82 a4 87                                      ....
  6570 ms     | 0x7984 privk:0x7ff78ca14020::7ff78ca14020  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6571 ms  0x798c PR_Close()
  6571 ms  0x798c fd:0x7ff7872b4fd0
           /* TID 0x7a01 */
  6571 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6571 ms  0x7a01 ret:0x0
           /* TID 0x7984 */
  6572 ms  0x7984 PK11_Encrypt()
  6572 ms  0x7984 symkey:0x7ff787f58d80
  6573 ms  SECKEY_ECParamsToKeySize()
  6573 ms  0x7984 ret:0x100
  6573 ms  0x7984 SECKEY_CreateECPrivateKey()
  6573 ms  0x7984 cx:0x7ff794e570e8
  6574 ms     | 0x7984 EC_ValidatePublicKey()
  6575 ms     | 0x7984 ret:0x0
  6575 ms  0x7984 ret:0x7ff78ca16820::7ff78ca16820  60 5a 83 8c                                      `Z..
  6575 ms  0x7984 PK11_PubDeriveWithKDF()
  6575 ms  0x7984 seckey:0x7ff78ca16820
  6575 ms     | 0x7984 EC_ValidatePublicKey()
  6577 ms     | 0x7984 ret:0x0
  6578 ms  0x7984 ret:0x7ff789d94c80
  6578 ms  0x7984 PK11_DeriveWithFlags()
  6578 ms  0x7984 basekey:0x7ff789d94c80
  6578 ms     | 0x7984 PK11_DeriveWithTemplate()
  6579 ms  0x7984 ret:0x7ff78724a080
  6579 ms  0x7984 PK11_Derive()
  6579 ms  0x7984 basekey:0x7ff78724a080
  6579 ms     | 0x7984 PK11_DeriveWithTemplate()
  6579 ms  0x7984 ret:0x7ff7885ece80
  6579 ms  0x7984 SECKEY_DestroyPrivateKey()
  6579 ms  0x7984 privk:0x7ff78ca16820::7ff78ca16820  60 5a 83 8c                                      `Z..
  6579 ms  0x7984 privk:0x7ff78ca16820::7ff78ca16820  e5 e5 e5 e5                                      ....
  6579 ms  0x7984 PK11_Encrypt()
  6579 ms  0x7984 symkey:0x7ff789d4d700
  6580 ms  0x7984 SECKEY_CreateECPrivateKey()
  6580 ms  0x7984 cx:0x7ff794e58608
  6581 ms     | 0x7984 EC_ValidatePublicKey()
  6581 ms     | 0x7984 ret:0x0
  6581 ms  0x7984 ret:0x7ff78ca16820::7ff78ca16820  a0 eb 32 88                                      ..2.
  6581 ms  0x7984 SECKEY_CreateECPrivateKey()
  6581 ms  0x7984 cx:0x7ff794e58608
  6582 ms     | 0x7984 EC_ValidatePublicKey()
  6583 ms     | 0x7984 ret:0x0
  6583 ms  0x7984 ret:0x7ff78d283820::7ff78d283820  40 52 06 8d                                      @R..
  6584 ms  0x7984 SECKEY_CreateECPrivateKey()
  6584 ms  0x7984 cx:0x7ff794e58468
  6584 ms     | 0x7984 EC_ValidatePublicKey()
  6584 ms     | 0x7984 ret:0x0
  6584 ms  0x7984 ret:0x7ff790bd1820::7ff790bd1820  80 3d 0d 8d                                      .=..
  6584 ms  0x7984 SECKEY_CreateECPrivateKey()
  6584 ms  0x7984 cx:0x7ff794e58468
  6585 ms     | 0x7984 EC_ValidatePublicKey()
  6586 ms     | 0x7984 ret:0x0
  6586 ms  0x7984 ret:0x7ff790bdb820::7ff790bdb820  30 ad 10 8d                                      0...
  6587 ms  0x7984 SECKEY_CreateECPrivateKey()
  6587 ms  0x7984 cx:0x7ff794e57de8
  6587 ms     | 0x7984 EC_ValidatePublicKey()
  6587 ms     | 0x7984 ret:0x0
  6587 ms  0x7984 ret:0x7ff790de0820::7ff790de0820  40 1c 11 8d                                      @...
  6587 ms  0x7984 SECKEY_CreateECPrivateKey()
  6587 ms  0x7984 cx:0x7ff794e57de8
  6588 ms     | 0x7984 EC_ValidatePublicKey()
  6589 ms     | 0x7984 ret:0x0
  6589 ms  0x7984 ret:0x7ff790ded020::7ff790ded020  60 bf 13 8d                                      `...
           /* TID 0x798c */
  6590 ms  0x798c PR_Close()
  6590 ms  0x798c fd:0x7ff786de5c70
           /* TID 0x7a1e */
  6590 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6590 ms  0x7a1e ret:0x0
  6590 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6591 ms  0x7a1e ret:0x0
           /* TID 0x7984 */
  6591 ms  0x7984 SECKEY_CreateECPrivateKey()
  6591 ms  0x7984 cx:0x7ff794e58ae8
  6592 ms     | 0x7984 EC_ValidatePublicKey()
  6592 ms     | 0x7984 ret:0x0
  6592 ms  0x7984 ret:0x7ff78d295820::7ff78d295820  40 3c a9 8c                                      @<..
  6592 ms  0x7984 SECKEY_CreateECPrivateKey()
  6592 ms  0x7984 cx:0x7ff794e58ae8
  6592 ms     | 0x7984 EC_ValidatePublicKey()
  6594 ms     | 0x7984 ret:0x0
  6594 ms  0x7984 ret:0x7ff79107e020::7ff79107e020  10 fa 13 8d                                      ....
  6594 ms  0x7984 SSL_AuthCertificateComplete()
  6594 ms  0x7984 fd:0x7ff7883fb760
  6594 ms  0x7984 err:0x0
  6594 ms  0x7984 SSL_AuthCertificateComplete()
  6594 ms  0x7984 fd:0x7ff7872b40d0
  6594 ms  0x7984 err:0x0
  6594 ms  0x7984 SSL_AuthCertificateComplete()
  6594 ms  0x7984 fd:0x7ff786de5940
  6594 ms  0x7984 err:0x0
  6595 ms  0x7984 SSL_AuthCertificateComplete()
  6595 ms  0x7984 fd:0x7ff788f49c10
  6595 ms  0x7984 err:0x0
  6595 ms  0x7984 SSL_AuthCertificateComplete()
  6595 ms  0x7984 fd:0x7ff789dbd1c0
  6595 ms  0x7984 err:0x0
  6595 ms  0x7984 SSL_AuthCertificateComplete()
  6595 ms  0x7984 fd:0x7ff7761a2100
  6595 ms  0x7984 err:0x0
  6595 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6595 ms     | 0x7984 privk:0x7ff78ce08020::7ff78ce08020  60 a5 f5 87                                      `...
  6595 ms     | 0x7984 privk:0x7ff78ce08020::7ff78ce08020  e5 e5 e5 e5                                      ....
  6595 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6595 ms     | 0x7984 privk:0x7ff78ce03820::7ff78ce03820  60 a0 f5 87                                      `...
  6595 ms     | 0x7984 privk:0x7ff78ce03820::7ff78ce03820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6596 ms  0x798c PR_Close()
  6596 ms  0x798c fd:0x7ff7761a2e20
           /* TID 0x7a1f */
  6596 ms  0x7a1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6596 ms  0x7a1f ret:0x0
           /* TID 0x7984 */
  6596 ms  0x7984 PK11_Encrypt()
  6596 ms  0x7984 symkey:0x7ff787f9a500
  6598 ms  0x7984 PK11_Encrypt()
  6598 ms  0x7984 symkey:0x7ff788af4b00
  6598 ms  0x7984 PK11_Encrypt()
  6598 ms  0x7984 symkey:0x7ff788fcbf80
  6598 ms  0x7984 PK11_Encrypt()
  6598 ms  0x7984 symkey:0x7ff788ff8880
  6599 ms  0x7984 PK11_Encrypt()
  6599 ms  0x7984 symkey:0x7ff789d4d400
  6599 ms  0x7984 PK11_Encrypt()
  6599 ms  0x7984 symkey:0x7ff789d4d700
  6599 ms  0x7984 SECKEY_CreateECPrivateKey()
  6599 ms  0x7984 cx:0x7ff794e587a8
  6600 ms     | 0x7984 EC_ValidatePublicKey()
  6600 ms     | 0x7984 ret:0x0
  6600 ms  0x7984 ret:0x7ff78ce04020::7ff78ce04020  b0 a0 f5 87                                      ....
  6600 ms  0x7984 SECKEY_CreateECPrivateKey()
  6600 ms  0x7984 cx:0x7ff794e587a8
  6600 ms     | 0x7984 EC_ValidatePublicKey()
  6602 ms     | 0x7984 ret:0x0
  6602 ms  0x7984 ret:0x7ff78d29d020::7ff78d29d020  10 7f ae 8c                                      ....
  6602 ms  0x7984 SECKEY_CreateECPrivateKey()
  6602 ms  0x7984 cx:0x7ff794e58e28
  6603 ms     | 0x7984 EC_ValidatePublicKey()
  6603 ms     | 0x7984 ret:0x0
  6603 ms  0x7984 ret:0x7ff79107e820::7ff79107e820  c0 de b0 8c                                      ....
  6603 ms  0x7984 SECKEY_CreateECPrivateKey()
  6603 ms  0x7984 cx:0x7ff794e58e28
  6603 ms     | 0x7984 EC_ValidatePublicKey()
  6605 ms     | 0x7984 ret:0x0
  6605 ms  0x7984 ret:0x7ff7919b0020::7ff7919b0020  30 d3 1b 8d                                      0...
  6605 ms  0x7984 SECKEY_CreateECPrivateKey()
  6605 ms  0x7984 cx:0x7ff794e58c88
  6606 ms     | 0x7984 EC_ValidatePublicKey()
  6606 ms     | 0x7984 ret:0x0
  6606 ms  0x7984 ret:0x7ff7919b5020::7ff7919b5020  30 dd 1b 8d                                      0...
  6606 ms  0x7984 SECKEY_CreateECPrivateKey()
  6606 ms  0x7984 cx:0x7ff794e58c88
  6606 ms     | 0x7984 EC_ValidatePublicKey()
  6608 ms     | 0x7984 ret:0x0
  6608 ms  0x7984 ret:0x7ff7919b7820::7ff7919b7820  80 18 1d 8d                                      ....
  6608 ms  0x7984 SECKEY_CreateECPrivateKey()
  6608 ms  0x7984 cx:0x7ff794e58948
  6609 ms     | 0x7984 EC_ValidatePublicKey()
  6609 ms     | 0x7984 ret:0x0
  6609 ms  0x7984 ret:0x7ff7919ba020::7ff7919ba020  d0 2d 1f 8d                                      .-..
  6609 ms  0x7984 SECKEY_CreateECPrivateKey()
  6609 ms  0x7984 cx:0x7ff794e58948
  6610 ms     | 0x7984 EC_ValidatePublicKey()
  6611 ms     | 0x7984 ret:0x0
  6611 ms  0x7984 ret:0x7ff7919c2820::7ff7919c2820  00 96 22 8d                                      ..".
  6611 ms  0x7984 SECKEY_CreateECPrivateKey()
  6611 ms  0x7984 cx:0x7ff794e594a8
  6612 ms     | 0x7984 EC_ValidatePublicKey()
  6612 ms     | 0x7984 ret:0x0
  6612 ms  0x7984 ret:0x7ff791a2a820::7ff791a2a820  b0 9a 22 8d                                      ..".
  6612 ms  0x7984 SECKEY_CreateECPrivateKey()
  6612 ms  0x7984 cx:0x7ff794e594a8
  6612 ms     | 0x7984 EC_ValidatePublicKey()
  6615 ms     | 0x7984 ret:0x0
  6615 ms  0x7984 ret:0x7ff791a2e820::7ff791a2e820  50 a1 a3 8f                                      P...
  6620 ms  0x7984 SECKEY_CreateECPrivateKey()
  6620 ms  0x7984 cx:0x7ff794e59308
  6621 ms     | 0x7984 EC_ValidatePublicKey()
  6621 ms     | 0x7984 ret:0x0
  6621 ms  0x7984 ret:0x7ff791a38820::7ff791a38820  d0 83 ad 8f                                      ....
  6621 ms  0x7984 SECKEY_CreateECPrivateKey()
  6621 ms  0x7984 cx:0x7ff794e59308
  6621 ms     | 0x7984 EC_ValidatePublicKey()
  6623 ms     | 0x7984 ret:0x0
  6623 ms  0x7984 ret:0x7ff791a3b820::7ff791a3b820  20 89 ad 8f                                       ...
  6624 ms  0x7984 SECKEY_CreateECPrivateKey()
  6624 ms  0x7984 cx:0x7ff794e59168
  6625 ms     | 0x7984 EC_ValidatePublicKey()
  6625 ms     | 0x7984 ret:0x0
  6625 ms  0x7984 ret:0x7ff791a3e020::7ff791a3e020  80 43 af 8f                                      .C..
  6625 ms  0x7984 SECKEY_CreateECPrivateKey()
  6625 ms  0x7984 cx:0x7ff794e59168
  6625 ms     | 0x7984 EC_ValidatePublicKey()
  6627 ms     | 0x7984 ret:0x0
  6627 ms  0x7984 ret:0x7ff791a40020::7ff791a40020  60 4a af 8f                                      `J..
  6627 ms  0x7984 SECKEY_CreateECPrivateKey()
  6627 ms  0x7984 cx:0x7ff794e58fc8
  6628 ms     | 0x7984 EC_ValidatePublicKey()
  6628 ms     | 0x7984 ret:0x0
  6628 ms  0x7984 ret:0x7ff791a42820::7ff791a42820  80 4d af 8f                                      .M..
  6628 ms  0x7984 SECKEY_CreateECPrivateKey()
  6628 ms  0x7984 cx:0x7ff794e58fc8
  6628 ms     | 0x7984 EC_ValidatePublicKey()
  6630 ms     | 0x7984 ret:0x0
  6630 ms  0x7984 ret:0x7ff791a44820::7ff791a44820  d0 ad af 8f                                      ....
  6632 ms  0x7984 SSL_AuthCertificateComplete()
  6632 ms  0x7984 fd:0x7ff7761a20a0
  6632 ms  0x7984 err:0x0
  6632 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6632 ms     | 0x7984 privk:0x7ff78d11e820::7ff78d11e820  90 0c ff 87                                      ....
  6632 ms     | 0x7984 privk:0x7ff78d11e820::7ff78d11e820  e5 e5 e5 e5                                      ....
  6633 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6633 ms     | 0x7984 privk:0x7ff78ce14820::7ff78ce14820  70 04 ff 87                                      p...
  6633 ms     | 0x7984 privk:0x7ff78ce14820::7ff78ce14820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6634 ms  0x798c PR_Close()
  6634 ms  0x798c fd:0x7ff7761a26a0
           /* TID 0x7984 */
  6640 ms  0x7984 PK11_Encrypt()
  6640 ms  0x7984 symkey:0x7ff78800c280
           /* TID 0x798c */
  6642 ms  0x798c PR_Close()
  6642 ms  0x798c fd:0x7ff775dafaf0
           /* TID 0x7984 */
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff79080c020::7ff79080c020  b0 a5 d0 8c                                      ....
  6645 ms  0x7984 privk:0x7ff79080c020::7ff79080c020  e5 e5 e5 e5                                      ....
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff79080a020::7ff79080a020  50 a1 d0 8c                                      P...
  6645 ms  0x7984 privk:0x7ff79080a020::7ff79080a020  e5 e5 e5 e5                                      ....
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff790bc8820::7ff790bc8820  c0 14 df 8c                                      ....
  6645 ms  0x7984 privk:0x7ff790bc8820::7ff790bc8820  e5 e5 e5 e5                                      ....
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff790823820::7ff790823820  90 12 df 8c                                      ....
  6645 ms  0x7984 privk:0x7ff790823820::7ff790823820  e5 e5 e5 e5                                      ....
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff79081e820::7ff79081e820  b0 5f 18 76                                      ._.v
  6645 ms  0x7984 privk:0x7ff79081e820::7ff79081e820  e5 e5 e5 e5                                      ....
  6645 ms  0x7984 SECKEY_DestroyPrivateKey()
  6645 ms  0x7984 privk:0x7ff79081a020::7ff79081a020  90 ac d4 8c                                      ....
  6646 ms  0x7984 privk:0x7ff79081a020::7ff79081a020  e5 e5 e5 e5                                      ....
  6646 ms  SECKEY_ECParamsToKeySize()
  6646 ms  0x7984 ret:0x100
  6646 ms  0x7984 SECKEY_CreateECPrivateKey()
  6646 ms  0x7984 cx:0x7ff794e57aa8
  6647 ms     | 0x7984 EC_ValidatePublicKey()
  6655 ms     | 0x7984 ret:0x0
  6655 ms  0x7984 ret:0x7ff78d11e020::7ff78d11e020  00 66 df 86                                      .f..
  6655 ms  0x7984 PK11_PubDeriveWithKDF()
  6655 ms  0x7984 seckey:0x7ff78d11e020
  6655 ms     | 0x7984 EC_ValidatePublicKey()
  6657 ms     | 0x7984 ret:0x0
  6662 ms  0x7984 ret:0x7ff789d94c80
  6662 ms  0x7984 PK11_DeriveWithFlags()
  6662 ms  0x7984 basekey:0x7ff789d94c80
  6662 ms     | 0x7984 PK11_DeriveWithTemplate()
  6662 ms  0x7984 ret:0x7ff77619d080
  6662 ms  0x7984 PK11_Derive()
  6662 ms  0x7984 basekey:0x7ff77619d080
  6662 ms     | 0x7984 PK11_DeriveWithTemplate()
  6662 ms  0x7984 ret:0x7ff787fd6380
  6662 ms  0x7984 SECKEY_DestroyPrivateKey()
  6662 ms  0x7984 privk:0x7ff78d11e020::7ff78d11e020  00 66 df 86                                      .f..
  6662 ms  0x7984 privk:0x7ff78d11e020::7ff78d11e020  e5 e5 e5 e5                                      ....
  6663 ms  0x7984 PK11_Encrypt()
  6663 ms  0x7984 symkey:0x7ff789d4d880
  6668 ms  0x7984 PK11_Encrypt()
  6668 ms  0x7984 symkey:0x7ff78724ad80
  6668 ms  0x7984 PK11_Encrypt()
  6668 ms  0x7984 symkey:0x7ff788363080
  6668 ms  0x7984 PK11_Encrypt()
  6668 ms  0x7984 symkey:0x7ff788394100
  6669 ms  0x7984 SSL_AuthCertificateComplete()
  6669 ms  0x7984 fd:0x7ff78c862850
  6669 ms  0x7984 err:0x0
           /* TID 0x798c */
  6670 ms  0x798c PR_Close()
  6670 ms  0x798c fd:0x7ff7761a2580
           /* TID 0x7984 */
  6671 ms  0x7984 SECKEY_DestroyPrivateKey()
  6671 ms  0x7984 privk:0x7ff790bd0820::7ff790bd0820  40 7c 02 8d                                      @|..
  6671 ms  0x7984 privk:0x7ff790bd0820::7ff790bd0820  e5 e5 e5 e5                                      ....
  6671 ms  0x7984 SECKEY_DestroyPrivateKey()
  6671 ms  0x7984 privk:0x7ff790bce820::7ff790bce820  80 23 00 8d                                      .#..
  6671 ms  0x7984 privk:0x7ff790bce820::7ff790bce820  e5 e5 e5 e5                                      ....
  6671 ms  0x7984 SECKEY_DestroyPrivateKey()
  6671 ms  0x7984 privk:0x7ff790bd5020::7ff790bd5020  50 e1 04 8d                                      P...
  6671 ms  0x7984 privk:0x7ff790bd5020::7ff790bd5020  e5 e5 e5 e5                                      ....
  6671 ms  0x7984 SECKEY_DestroyPrivateKey()
  6671 ms  0x7984 privk:0x7ff790bd3020::7ff790bd3020  80 7d 02 8d                                      .}..
  6671 ms  0x7984 privk:0x7ff790bd3020::7ff790bd3020  e5 e5 e5 e5                                      ....
  6675 ms  SECKEY_ECParamsToKeySize()
  6675 ms  0x7984 ret:0x100
  6675 ms  0x7984 SECKEY_CreateECPrivateKey()
  6675 ms  0x7984 cx:0x7ff794e57c48
  6675 ms     | 0x7984 EC_ValidatePublicKey()
  6677 ms     | 0x7984 ret:0x0
  6677 ms  0x7984 ret:0x7ff78d135020::7ff78d135020  b0 5f 18 76                                      ._.v
  6677 ms  0x7984 PK11_PubDeriveWithKDF()
  6677 ms  0x7984 seckey:0x7ff78d135020
  6677 ms     | 0x7984 EC_ValidatePublicKey()
  6681 ms     | 0x7984 ret:0x0
  6682 ms  0x7984 ret:0x7ff789d94c80
  6682 ms  0x7984 PK11_DeriveWithFlags()
  6682 ms  0x7984 basekey:0x7ff789d94c80
  6682 ms     | 0x7984 PK11_DeriveWithTemplate()
  6682 ms  0x7984 ret:0x7ff776183980
  6687 ms  0x7984 PK11_Derive()
  6687 ms  0x7984 basekey:0x7ff776183980
  6687 ms     | 0x7984 PK11_DeriveWithTemplate()
  6687 ms  0x7984 ret:0x7ff789d6e100
  6687 ms  0x7984 SECKEY_DestroyPrivateKey()
  6687 ms  0x7984 privk:0x7ff78d135020::7ff78d135020  b0 5f 18 76                                      ._.v
  6688 ms  0x7984 privk:0x7ff78d135020::7ff78d135020  e5 e5 e5 e5                                      ....
  6688 ms  0x7984 PK11_Encrypt()
  6688 ms  0x7984 symkey:0x7ff789d6f180
  6688 ms  0x7984 PK11_Encrypt()
  6688 ms  0x7984 symkey:0x7ff789d4d880
  6688 ms  0x7984 PK11_Encrypt()
  6688 ms  0x7984 symkey:0x7ff789d4d880
  6689 ms  SECKEY_ECParamsToKeySize()
  6689 ms  0x7984 ret:0x100
  6689 ms  SECKEY_ECParamsToBasePointOrderLen()
  6689 ms  0x7984 ret:0x100
  6689 ms  SECKEY_ECParamsToBasePointOrderLen()
  6689 ms  0x7984 ret:0x100
  6689 ms  0x7984 EC_ValidatePublicKey()
  6691 ms  0x7984 ret:0x0
  6693 ms  SECKEY_ECParamsToKeySize()
  6693 ms  0x7984 ret:0x100
  6693 ms  0x7984 SECKEY_CreateECPrivateKey()
  6693 ms  0x7984 cx:0x7ff794e57428
  6693 ms     | 0x7984 EC_ValidatePublicKey()
  6702 ms     | 0x7984 ret:0x0
  6703 ms  0x7984 ret:0x7ff79080c020::7ff79080c020  20 a9 f5 87                                       ...
  6703 ms  0x7984 PK11_PubDeriveWithKDF()
  6703 ms  0x7984 seckey:0x7ff79080c020
  6703 ms     | 0x7984 EC_ValidatePublicKey()
  6704 ms     | 0x7984 ret:0x0
  6706 ms  0x7984 ret:0x7ff789d94c80
  6706 ms  0x7984 PK11_DeriveWithFlags()
  6706 ms  0x7984 basekey:0x7ff789d94c80
  6706 ms     | 0x7984 PK11_DeriveWithTemplate()
  6706 ms  0x7984 ret:0x7ff789d6e380
  6706 ms  0x7984 PK11_Derive()
  6706 ms  0x7984 basekey:0x7ff789d6e380
  6706 ms     | 0x7984 PK11_DeriveWithTemplate()
  6706 ms  0x7984 ret:0x7ff789d6ea00
  6706 ms  0x7984 SECKEY_DestroyPrivateKey()
  6706 ms  0x7984 privk:0x7ff79080c020::7ff79080c020  20 a9 f5 87                                       ...
  6706 ms  0x7984 privk:0x7ff79080c020::7ff79080c020  e5 e5 e5 e5                                      ....
  6706 ms  0x7984 PK11_Encrypt()
  6706 ms  0x7984 symkey:0x7ff789d82480
           /* TID 0x798c */
  6708 ms  0x798c PR_Close()
  6708 ms  0x798c fd:0x7ff78b9af190
           /* TID 0x7a28 */
  6709 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6709 ms  0x7a28 ret:0x0
  6709 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6709 ms  0x7a28 ret:0x0
           /* TID 0x7984 */
  6710 ms  SECKEY_ECParamsToKeySize()
  6712 ms  0x7984 ret:0x100
  6712 ms  0x7984 SECKEY_CreateECPrivateKey()
  6712 ms  0x7984 cx:0x7ff794e58608
  6713 ms     | 0x7984 EC_ValidatePublicKey()
  6714 ms     | 0x7984 ret:0x0
  6714 ms  0x7984 ret:0x7ff79081b820::7ff79081b820  b0 ef b4 8c                                      ....
  6714 ms  0x7984 PK11_PubDeriveWithKDF()
  6714 ms  0x7984 seckey:0x7ff79081b820
  6714 ms     | 0x7984 EC_ValidatePublicKey()
  6716 ms     | 0x7984 ret:0x0
  6717 ms  0x7984 ret:0x7ff789d94c80
  6717 ms  0x7984 PK11_DeriveWithFlags()
  6717 ms  0x7984 basekey:0x7ff789d94c80
  6717 ms     | 0x7984 PK11_DeriveWithTemplate()
  6717 ms  0x7984 ret:0x7ff789d82700
  6717 ms  0x7984 PK11_Derive()
  6717 ms  0x7984 basekey:0x7ff789d82700
  6717 ms     | 0x7984 PK11_DeriveWithTemplate()
  6717 ms  0x7984 ret:0x7ff789d82780
  6717 ms  0x7984 SECKEY_DestroyPrivateKey()
  6717 ms  0x7984 privk:0x7ff79081b820::7ff79081b820  b0 ef b4 8c                                      ....
  6717 ms  0x7984 privk:0x7ff79081b820::7ff79081b820  e5 e5 e5 e5                                      ....
  6717 ms  0x7984 PK11_Encrypt()
  6717 ms  0x7984 symkey:0x7ff789d82900
  6727 ms  SECKEY_ECParamsToKeySize()
  6727 ms  0x7984 ret:0x100
  6727 ms  0x7984 SECKEY_CreateECPrivateKey()
  6727 ms  0x7984 cx:0x7ff794e58468
  6728 ms     | 0x7984 EC_ValidatePublicKey()
  6729 ms     | 0x7984 ret:0x0
  6729 ms  0x7984 ret:0x7ff790bc7020::7ff790bc7020  20 a4 d0 8c                                       ...
  6729 ms  0x7984 PK11_PubDeriveWithKDF()
  6729 ms  0x7984 seckey:0x7ff790bc7020
  6729 ms     | 0x7984 EC_ValidatePublicKey()
  6731 ms     | 0x7984 ret:0x0
  6742 ms  0x7984 ret:0x7ff789d94c80
  6745 ms  0x7984 PK11_DeriveWithFlags()
  6745 ms  0x7984 basekey:0x7ff789d94c80
  6745 ms     | 0x7984 PK11_DeriveWithTemplate()
  6745 ms  0x7984 ret:0x7ff776182a00
  6745 ms  0x7984 PK11_Derive()
  6745 ms  0x7984 basekey:0x7ff776182a00
  6745 ms     | 0x7984 PK11_DeriveWithTemplate()
  6745 ms  0x7984 ret:0x7ff789d82b00
  6745 ms  0x7984 SECKEY_DestroyPrivateKey()
  6745 ms  0x7984 privk:0x7ff790bc7020::7ff790bc7020  20 a4 d0 8c                                       ...
  6745 ms  0x7984 privk:0x7ff790bc7020::7ff790bc7020  e5 e5 e5 e5                                      ....
  6745 ms  0x7984 PK11_Encrypt()
  6745 ms  0x7984 symkey:0x7ff789d82e80
  6748 ms  SECKEY_ECParamsToKeySize()
  6748 ms  0x7984 ret:0x100
  6748 ms  0x7984 SECKEY_CreateECPrivateKey()
  6748 ms  0x7984 cx:0x7ff794e57de8
  6748 ms     | 0x7984 EC_ValidatePublicKey()
  6750 ms     | 0x7984 ret:0x0
  6750 ms  0x7984 ret:0x7ff790bd1020::7ff790bd1020  90 12 df 8c                                      ....
  6750 ms  0x7984 PK11_PubDeriveWithKDF()
  6750 ms  0x7984 seckey:0x7ff790bd1020
  6750 ms     | 0x7984 EC_ValidatePublicKey()
  6752 ms     | 0x7984 ret:0x0
  6753 ms  0x7984 ret:0x7ff789d94c80
  6753 ms  0x7984 PK11_DeriveWithFlags()
  6753 ms  0x7984 basekey:0x7ff789d94c80
  6753 ms     | 0x7984 PK11_DeriveWithTemplate()
  6753 ms  0x7984 ret:0x7ff789d83300
  6753 ms  0x7984 PK11_Derive()
  6753 ms  0x7984 basekey:0x7ff789d83300
  6753 ms     | 0x7984 PK11_DeriveWithTemplate()
  6753 ms  0x7984 ret:0x7ff789d83380
  6753 ms  0x7984 SECKEY_DestroyPrivateKey()
  6753 ms  0x7984 privk:0x7ff790bd1020::7ff790bd1020  90 12 df 8c                                      ....
  6753 ms  0x7984 privk:0x7ff790bd1020::7ff790bd1020  e5 e5 e5 e5                                      ....
  6753 ms  0x7984 PK11_Encrypt()
  6753 ms  0x7984 symkey:0x7ff789d83500
  6754 ms  SECKEY_ECParamsToKeySize()
  6754 ms  0x7984 ret:0x100
  6754 ms  0x7984 SECKEY_CreateECPrivateKey()
  6754 ms  0x7984 cx:0x7ff794e58ae8
  6755 ms     | 0x7984 EC_ValidatePublicKey()
  6756 ms     | 0x7984 ret:0x0
  6756 ms  0x7984 ret:0x7ff790bd2820::7ff790bd2820  30 13 df 8c                                      0...
  6756 ms  0x7984 PK11_PubDeriveWithKDF()
  6756 ms  0x7984 seckey:0x7ff790bd2820
  6756 ms     | 0x7984 EC_ValidatePublicKey()
  6758 ms     | 0x7984 ret:0x0
  6759 ms  0x7984 ret:0x7ff789d94c80
  6759 ms  0x7984 PK11_DeriveWithFlags()
  6759 ms  0x7984 basekey:0x7ff789d94c80
  6759 ms     | 0x7984 PK11_DeriveWithTemplate()
  6759 ms  0x7984 ret:0x7ff789d83600
  6759 ms  0x7984 PK11_Derive()
  6759 ms  0x7984 basekey:0x7ff789d83600
  6759 ms     | 0x7984 PK11_DeriveWithTemplate()
  6759 ms  0x7984 ret:0x7ff789d83680
  6759 ms  0x7984 SECKEY_DestroyPrivateKey()
  6759 ms  0x7984 privk:0x7ff790bd2820::7ff790bd2820  30 13 df 8c                                      0...
  6759 ms  0x7984 privk:0x7ff790bd2820::7ff790bd2820  e5 e5 e5 e5                                      ....
  6760 ms  0x7984 PK11_Encrypt()
  6760 ms  0x7984 symkey:0x7ff789d83800
  6761 ms  0x7984 PR_Close()
  6761 ms  0x7984 fd:0x7ff78d073a60
  6762 ms  0x7984 SECKEY_DestroyPrivateKey()
  6762 ms  0x7984 privk:0x7ff790be1820::7ff790be1820  20 84 0f 8d                                       ...
  6762 ms  0x7984 privk:0x7ff790be1820::7ff790be1820  e5 e5 e5 e5                                      ....
  6762 ms  0x7984 SECKEY_DestroyPrivateKey()
  6762 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  50 3b 0d 8d                                      P;..
  6762 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  e5 e5 e5 e5                                      ....
  6762 ms  0x7984 PK11_Encrypt()
  6762 ms  0x7984 symkey:0x7ff789d4d880
  6762 ms  0x7984 SSL_AuthCertificateComplete()
  6762 ms  0x7984 fd:0x7ff78b932fd0
  6762 ms  0x7984 err:0x0
  6763 ms  0x7984 SSL_AuthCertificateComplete()
  6763 ms  0x7984 fd:0x7ff7883fb640
  6763 ms  0x7984 err:0x0
  6763 ms  0x7984 SSL_AuthCertificateComplete()
  6763 ms  0x7984 fd:0x7ff775dafac0
  6763 ms  0x7984 err:0x0
  6763 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6763 ms     | 0x7984 privk:0x7ff78d12d020::7ff78d12d020  70 e9 32 88                                      p.2.
  6763 ms     | 0x7984 privk:0x7ff78d12d020::7ff78d12d020  e5 e5 e5 e5                                      ....
  6763 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6763 ms     | 0x7984 privk:0x7ff78d128820::7ff78d128820  50 b1 0e 88                                      P...
  6763 ms     | 0x7984 privk:0x7ff78d128820::7ff78d128820  e5 e5 e5 e5                                      ....
  6763 ms  0x7984 PK11_Encrypt()
  6763 ms  0x7984 symkey:0x7ff788ff8880
  6764 ms  0x7984 SSL_AuthCertificateComplete()
  6764 ms  0x7984 fd:0x7ff78c8625e0
  6764 ms  0x7984 err:0x0
  6764 ms  0x7984 PK11_Encrypt()
  6764 ms  0x7984 symkey:0x7ff789d4d880
  6764 ms  0x7984 SSL_ImportFD()
  6764 ms  0x7984 ret:0x7ff7880e1b20
  6764 ms  0x7984 SSL_AuthCertificateHook()
  6764 ms  0x7984 fd:0x7ff7880e1b20
  6764 ms  0x7984 ret:0x0
  6764 ms  0x7984 PR_Connect()
  6764 ms  0x7984 fd:0x7ff7880e1b20
  6765 ms  0x7984 SSL_ImportFD()
  6765 ms  0x7984 ret:0x7ff789d7baf0
  6765 ms  0x7984 SSL_AuthCertificateHook()
  6765 ms  0x7984 fd:0x7ff789d7baf0
  6765 ms  0x7984 ret:0x0
  6765 ms  0x7984 PR_Connect()
  6765 ms  0x7984 fd:0x7ff789d7baf0
           /* TID 0x798c */
  6766 ms  0x798c PR_Close()
  6766 ms  0x798c fd:0x7ff776148610
  6768 ms  0x798c PR_Close()
  6768 ms  0x798c fd:0x7ff775e86130
           /* TID 0x7984 */
  6769 ms  0x7984 PK11_Encrypt()
  6769 ms  0x7984 symkey:0x7ff7880bfc80
           /* TID 0x798c */
  6770 ms  0x798c PR_Close()
  6770 ms  0x798c fd:0x7ff775e86130
  6771 ms  0x798c PR_Close()
  6771 ms  0x798c fd:0x7ff775e86130
  6774 ms  0x798c PR_Close()
  6774 ms  0x798c fd:0x7ff775e86130
  6775 ms  0x798c PR_Close()
  6775 ms  0x798c fd:0x7ff775e86130
  6778 ms  0x798c PR_Close()
  6778 ms  0x798c fd:0x7ff786de5ca0
           /* TID 0x7984 */
  6778 ms  0x7984 PK11_Encrypt()
  6778 ms  0x7984 symkey:0x7ff789d6f180
  6781 ms  0x7984 PK11_Encrypt()
  6781 ms  0x7984 symkey:0x7ff789d82480
  6781 ms  0x7984 PK11_Derive()
  6781 ms  0x7984 basekey:0x7ff77619d480
  6781 ms     | 0x7984 PK11_DeriveWithTemplate()
  6781 ms  0x7984 ret:0x7ff789d94c80
  6781 ms  0x7984 PK11_Encrypt()
  6781 ms  0x7984 symkey:0x7ff789d85100
  6782 ms  0x7984 SECKEY_DestroyPrivateKey()
  6782 ms  0x7984 privk:0x7ff78d29d020::7ff78d29d020  10 7f ae 8c                                      ....
  6782 ms  0x7984 privk:0x7ff78d29d020::7ff78d29d020  e5 e5 e5 e5                                      ....
  6782 ms  0x7984 SECKEY_DestroyPrivateKey()
  6782 ms  0x7984 privk:0x7ff78ce04020::7ff78ce04020  b0 a0 f5 87                                      ....
  6782 ms  0x7984 privk:0x7ff78ce04020::7ff78ce04020  e5 e5 e5 e5                                      ....
  6784 ms  SECKEY_ECParamsToKeySize()
  6784 ms  0x7984 ret:0x100
  6784 ms  0x7984 SECKEY_CreateECPrivateKey()
  6784 ms  0x7984 cx:0x7ff794e58e28
  6784 ms     | 0x7984 EC_ValidatePublicKey()
  6786 ms     | 0x7984 ret:0x0
  6786 ms  0x7984 ret:0x7ff78ce06020::7ff78ce06020  90 22 22 87                                      ."".
  6786 ms  0x7984 PK11_PubDeriveWithKDF()
  6786 ms  0x7984 seckey:0x7ff78ce06020
  6786 ms     | 0x7984 EC_ValidatePublicKey()
  6790 ms     | 0x7984 ret:0x0
  6792 ms  0x7984 ret:0x7ff77619d400
  6792 ms  0x7984 PK11_DeriveWithFlags()
  6792 ms  0x7984 basekey:0x7ff77619d400
  6792 ms     | 0x7984 PK11_DeriveWithTemplate()
  6792 ms  0x7984 ret:0x7ff776183d80
  6792 ms  0x7984 PK11_Derive()
  6792 ms  0x7984 basekey:0x7ff776183d80
  6792 ms     | 0x7984 PK11_DeriveWithTemplate()
  6792 ms  0x7984 ret:0x7ff77619c500
  6792 ms  0x7984 SECKEY_DestroyPrivateKey()
  6792 ms  0x7984 privk:0x7ff78ce06020::7ff78ce06020  90 22 22 87                                      ."".
  6792 ms  0x7984 privk:0x7ff78ce06020::7ff78ce06020  e5 e5 e5 e5                                      ....
  6792 ms  0x7984 PK11_Encrypt()
  6792 ms  0x7984 symkey:0x7ff77619d700
  6797 ms  SECKEY_ECParamsToKeySize()
  6797 ms  0x7984 ret:0x100
  6797 ms  0x7984 SECKEY_CreateECPrivateKey()
  6797 ms  0x7984 cx:0x7ff794e58c88
  6797 ms     | 0x7984 EC_ValidatePublicKey()
  6802 ms     | 0x7984 ret:0x0
  6802 ms  0x7984 ret:0x7ff78d128820::7ff78d128820  d0 a3 f5 87                                      ....
  6802 ms  0x7984 PK11_PubDeriveWithKDF()
  6802 ms  0x7984 seckey:0x7ff78d128820
  6802 ms     | 0x7984 EC_ValidatePublicKey()
  6803 ms     | 0x7984 ret:0x0
  6805 ms  0x7984 ret:0x7ff77619d400
  6805 ms  0x7984 PK11_DeriveWithFlags()
  6805 ms  0x7984 basekey:0x7ff77619d400
  6805 ms     | 0x7984 PK11_DeriveWithTemplate()
  6805 ms  0x7984 ret:0x7ff789d83980
  6805 ms  0x7984 PK11_Derive()
  6805 ms  0x7984 basekey:0x7ff789d83980
  6805 ms     | 0x7984 PK11_DeriveWithTemplate()
  6805 ms  0x7984 ret:0x7ff789d83c00
  6805 ms  0x7984 SECKEY_DestroyPrivateKey()
  6805 ms  0x7984 privk:0x7ff78d128820::7ff78d128820  d0 a3 f5 87                                      ....
  6805 ms  0x7984 privk:0x7ff78d128820::7ff78d128820  e5 e5 e5 e5                                      ....
  6805 ms  0x7984 PK11_Encrypt()
  6805 ms  0x7984 symkey:0x7ff789d85480
  6806 ms  0x7984 PK11_Encrypt()
  6806 ms  0x7984 symkey:0x7ff789d83800
  6806 ms  0x7984 PK11_Derive()
  6806 ms  0x7984 basekey:0x7ff789d85580
  6806 ms     | 0x7984 PK11_DeriveWithTemplate()
  6806 ms  0x7984 ret:0x7ff77619d400
  6806 ms  0x7984 PK11_Encrypt()
  6806 ms  0x7984 symkey:0x7ff789d85700
  6807 ms  0x7984 SECKEY_DestroyPrivateKey()
  6807 ms  0x7984 privk:0x7ff7919c2820::7ff7919c2820  00 96 22 8d                                      ..".
  6807 ms  0x7984 privk:0x7ff7919c2820::7ff7919c2820  e5 e5 e5 e5                                      ....
  6807 ms  0x7984 SECKEY_DestroyPrivateKey()
  6807 ms  0x7984 privk:0x7ff7919ba020::7ff7919ba020  d0 2d 1f 8d                                      .-..
  6807 ms  0x7984 privk:0x7ff7919ba020::7ff7919ba020  e5 e5 e5 e5                                      ....
  6808 ms  SECKEY_ECParamsToKeySize()
  6808 ms  0x7984 ret:0x100
  6808 ms  0x7984 SECKEY_CreateECPrivateKey()
  6808 ms  0x7984 cx:0x7ff794e594a8
  6809 ms     | 0x7984 EC_ValidatePublicKey()
  6810 ms     | 0x7984 ret:0x0
  6810 ms  0x7984 ret:0x7ff790bd2820::7ff790bd2820  20 4e 5b 88                                       N[.
  6810 ms  0x7984 PK11_PubDeriveWithKDF()
  6810 ms  0x7984 seckey:0x7ff790bd2820
  6810 ms     | 0x7984 EC_ValidatePublicKey()
  6812 ms     | 0x7984 ret:0x0
  6813 ms  0x7984 ret:0x7ff789d86080
  6813 ms  0x7984 PK11_DeriveWithFlags()
  6813 ms  0x7984 basekey:0x7ff789d86080
  6813 ms     | 0x7984 PK11_DeriveWithTemplate()
  6813 ms  0x7984 ret:0x7ff789d86100
  6813 ms  0x7984 PK11_Derive()
  6813 ms  0x7984 basekey:0x7ff789d86100
  6813 ms     | 0x7984 PK11_DeriveWithTemplate()
  6813 ms  0x7984 ret:0x7ff789d86180
  6813 ms  0x7984 SECKEY_DestroyPrivateKey()
  6813 ms  0x7984 privk:0x7ff790bd2820::7ff790bd2820  20 4e 5b 88                                       N[.
  6813 ms  0x7984 privk:0x7ff790bd2820::7ff790bd2820  e5 e5 e5 e5                                      ....
  6813 ms  0x7984 PK11_Encrypt()
  6813 ms  0x7984 symkey:0x7ff789d86600
  6814 ms  SECKEY_ECParamsToKeySize()
  6814 ms  0x7984 ret:0x100
  6814 ms  0x7984 SECKEY_CreateECPrivateKey()
  6814 ms  0x7984 cx:0x7ff794e59308
  6816 ms     | 0x7984 EC_ValidatePublicKey()
  6817 ms     | 0x7984 ret:0x0
  6817 ms  0x7984 ret:0x7ff790bd4020::7ff790bd4020  e0 a2 aa 88                                      ....
  6817 ms  0x7984 PK11_PubDeriveWithKDF()
  6817 ms  0x7984 seckey:0x7ff790bd4020
  6817 ms     | 0x7984 EC_ValidatePublicKey()
  6819 ms     | 0x7984 ret:0x0
  6820 ms  0x7984 ret:0x7ff789d86080
  6820 ms  0x7984 PK11_DeriveWithFlags()
  6820 ms  0x7984 basekey:0x7ff789d86080
  6820 ms     | 0x7984 PK11_DeriveWithTemplate()
  6820 ms  0x7984 ret:0x7ff789d85080
  6820 ms  0x7984 PK11_Derive()
  6820 ms  0x7984 basekey:0x7ff789d85080
  6820 ms     | 0x7984 PK11_DeriveWithTemplate()
  6820 ms  0x7984 ret:0x7ff789d85280
  6820 ms  0x7984 SECKEY_DestroyPrivateKey()
  6820 ms  0x7984 privk:0x7ff790bd4020::7ff790bd4020  e0 a2 aa 88                                      ....
  6820 ms  0x7984 privk:0x7ff790bd4020::7ff790bd4020  e5 e5 e5 e5                                      ....
  6820 ms  0x7984 PK11_Encrypt()
  6820 ms  0x7984 symkey:0x7ff789d86f80
  6821 ms  SECKEY_ECParamsToKeySize()
  6821 ms  0x7984 ret:0x100
  6821 ms  0x7984 SECKEY_CreateECPrivateKey()
  6821 ms  0x7984 cx:0x7ff794e59168
  6821 ms     | 0x7984 EC_ValidatePublicKey()
  6823 ms     | 0x7984 ret:0x0
  6823 ms  0x7984 ret:0x7ff790bd9020::7ff790bd9020  00 11 df 8c                                      ....
  6823 ms  0x7984 PK11_PubDeriveWithKDF()
  6823 ms  0x7984 seckey:0x7ff790bd9020
  6823 ms     | 0x7984 EC_ValidatePublicKey()
  6824 ms     | 0x7984 ret:0x0
  6826 ms  0x7984 ret:0x7ff789d86080
  6826 ms  0x7984 PK11_DeriveWithFlags()
  6826 ms  0x7984 basekey:0x7ff789d86080
  6826 ms     | 0x7984 PK11_DeriveWithTemplate()
  6826 ms  0x7984 ret:0x7ff789d94980
  6826 ms  0x7984 PK11_Derive()
  6826 ms  0x7984 basekey:0x7ff789d94980
  6826 ms     | 0x7984 PK11_DeriveWithTemplate()
  6826 ms  0x7984 ret:0x7ff789d94a80
  6826 ms  0x7984 SECKEY_DestroyPrivateKey()
  6826 ms  0x7984 privk:0x7ff790bd9020::7ff790bd9020  00 11 df 8c                                      ....
  6826 ms  0x7984 privk:0x7ff790bd9020::7ff790bd9020  e5 e5 e5 e5                                      ....
  6826 ms  0x7984 PK11_Encrypt()
  6826 ms  0x7984 symkey:0x7ff789d95080
  6826 ms  SECKEY_ECParamsToKeySize()
  6826 ms  0x7984 ret:0x100
  6826 ms  0x7984 SECKEY_CreateECPrivateKey()
  6826 ms  0x7984 cx:0x7ff794e58fc8
  6827 ms     | 0x7984 EC_ValidatePublicKey()
  6829 ms     | 0x7984 ret:0x0
  6829 ms  0x7984 ret:0x7ff790bde820::7ff790bde820  40 12 df 8c                                      @...
  6829 ms  0x7984 PK11_PubDeriveWithKDF()
  6829 ms  0x7984 seckey:0x7ff790bde820
  6829 ms     | 0x7984 EC_ValidatePublicKey()
  6830 ms     | 0x7984 ret:0x0
  6833 ms  0x7984 ret:0x7ff789d86080
  6833 ms  0x7984 PK11_DeriveWithFlags()
  6833 ms  0x7984 basekey:0x7ff789d86080
  6833 ms     | 0x7984 PK11_DeriveWithTemplate()
  6833 ms  0x7984 ret:0x7ff789d86c80
  6833 ms  0x7984 PK11_Derive()
  6833 ms  0x7984 basekey:0x7ff789d86c80
  6833 ms     | 0x7984 PK11_DeriveWithTemplate()
  6833 ms  0x7984 ret:0x7ff789d86e80
  6833 ms  0x7984 SECKEY_DestroyPrivateKey()
  6833 ms  0x7984 privk:0x7ff790bde820::7ff790bde820  40 12 df 8c                                      @...
  6833 ms  0x7984 privk:0x7ff790bde820::7ff790bde820  e5 e5 e5 e5                                      ....
  6834 ms  0x7984 PK11_Encrypt()
  6834 ms  0x7984 symkey:0x7ff789d9db80
  6834 ms  0x7984 PK11_Encrypt()
  6834 ms  0x7984 symkey:0x7ff78800c280
  6834 ms  0x7984 PK11_Encrypt()
  6834 ms  0x7984 symkey:0x7ff78724ad80
  6834 ms  0x7984 PK11_Encrypt()
  6834 ms  0x7984 symkey:0x7ff788363080
  6835 ms  0x7984 PK11_Encrypt()
  6835 ms  0x7984 symkey:0x7ff788394100
  6835 ms  0x7984 PK11_Encrypt()
  6835 ms  0x7984 symkey:0x7ff788af4b00
  6835 ms  0x7984 PK11_Encrypt()
  6835 ms  0x7984 symkey:0x7ff788fcbf80
  6836 ms  0x7984 PK11_Encrypt()
  6836 ms  0x7984 symkey:0x7ff789d4d880
  6836 ms  0x7984 SSL_AuthCertificateComplete()
  6836 ms  0x7984 fd:0x7ff78b9b4fd0
  6836 ms  0x7984 err:0x0
  6836 ms  0x7984 SSL_AuthCertificateComplete()
  6836 ms  0x7984 fd:0x7ff78cbeb580
  6836 ms  0x7984 err:0x0
           /* TID 0x798c */
  6837 ms  0x798c PR_Close()
  6837 ms  0x798c fd:0x7ff7872b4a00
           /* TID 0x7984 */
  6841 ms  0x7984 SSL_ImportFD()
  6841 ms  0x7984 ret:0x7ff7885a22e0
  6842 ms  0x7984 SSL_AuthCertificateHook()
  6842 ms  0x7984 fd:0x7ff7885a22e0
  6842 ms  0x7984 ret:0x0
  6842 ms  0x7984 PR_Connect()
  6842 ms  0x7984 fd:0x7ff7885a22e0
  6842 ms  0x7984 SSL_ImportFD()
  6842 ms  0x7984 ret:0x7ff78cbf2460
  6842 ms  0x7984 SSL_AuthCertificateHook()
  6842 ms  0x7984 fd:0x7ff78cbf2460
  6842 ms  0x7984 ret:0x0
  6842 ms  0x7984 PR_Connect()
  6842 ms  0x7984 fd:0x7ff78cbf2460
           /* TID 0x7a01 */
  6843 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6843 ms  0x7a01 ret:0x0
           /* TID 0x798c */
  6844 ms  0x798c PR_Close()
  6844 ms  0x798c fd:0x7ff776148610
           /* TID 0x7a1e */
  6845 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6845 ms  0x7a1e ret:0x0
           /* TID 0x798c */
  6846 ms  0x798c PR_Close()
  6846 ms  0x798c fd:0x7ff78d0bc9a0
           /* TID 0x79ec */
  6846 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6846 ms  0x79ec ret:0x0
           /* TID 0x798c */
  6846 ms  0x798c PR_Close()
  6846 ms  0x798c fd:0x7ff78d0bc9a0
           /* TID 0x7a1f */
  6846 ms  0x7a1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6847 ms  0x7a1f ret:0x0
           /* TID 0x798c */
  6847 ms  0x798c PR_Close()
  6847 ms  0x798c fd:0x7ff78d083160
           /* TID 0x7984 */
  6848 ms  0x7984 SECKEY_DestroyPrivateKey()
  6848 ms  0x7984 privk:0x7ff78d12e820::7ff78d12e820  30 a8 aa 88                                      0...
  6848 ms  0x7984 privk:0x7ff78d12e820::7ff78d12e820  e5 e5 e5 e5                                      ....
  6848 ms  0x7984 SECKEY_DestroyPrivateKey()
  6848 ms  0x7984 privk:0x7ff78ca0a020::7ff78ca0a020  80 48 3c 88                                      .H<.
  6848 ms  0x7984 privk:0x7ff78ca0a020::7ff78ca0a020  e5 e5 e5 e5                                      ....
  6849 ms  0x7984 SECKEY_DestroyPrivateKey()
  6849 ms  0x7984 privk:0x7ff78d281820::7ff78d281820  90 a7 d0 8c                                      ....
  6849 ms  0x7984 privk:0x7ff78d281820::7ff78d281820  e5 e5 e5 e5                                      ....
  6849 ms  0x7984 SECKEY_DestroyPrivateKey()
  6849 ms  0x7984 privk:0x7ff78d136820::7ff78d136820  50 11 d5 89                                      P...
  6849 ms  0x7984 privk:0x7ff78d136820::7ff78d136820  e5 e5 e5 e5                                      ....
  6849 ms  0x7984 PK11_Encrypt()
  6849 ms  0x7984 symkey:0x7ff789d85100
  6859 ms  0x7984 PK11_Encrypt()
  6859 ms  0x7984 symkey:0x7ff77619d700
  6859 ms  0x7984 PK11_Encrypt()
  6859 ms  0x7984 symkey:0x7ff789d85480
  6859 ms  0x7984 SECKEY_DestroyPrivateKey()
  6859 ms  0x7984 privk:0x7ff79107e020::7ff79107e020  10 fa 13 8d                                      ....
  6859 ms  0x7984 privk:0x7ff79107e020::7ff79107e020  e5 e5 e5 e5                                      ....
  6860 ms  0x7984 SECKEY_DestroyPrivateKey()
  6860 ms  0x7984 privk:0x7ff78d295820::7ff78d295820  40 3c a9 8c                                      @<..
  6860 ms  0x7984 privk:0x7ff78d295820::7ff78d295820  e5 e5 e5 e5                                      ....
  6860 ms  0x7984 PK11_Encrypt()
  6860 ms  0x7984 symkey:0x7ff789d85700
  6860 ms  0x7984 PR_Close()
  6860 ms  0x7984 fd:0x7ff78b932fd0
  6860 ms     | 0x7984 PK11_Encrypt()
  6860 ms     | 0x7984 symkey:0x7ff789d6f180
  6860 ms  0x7984 SSL_AuthCertificateComplete()
  6860 ms  0x7984 fd:0x7ff789d3ebb0
  6860 ms  0x7984 err:0x0
  6860 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6860 ms     | 0x7984 privk:0x7ff78d283820::7ff78d283820  40 52 06 8d                                      @R..
  6861 ms     | 0x7984 privk:0x7ff78d283820::7ff78d283820  e5 e5 e5 e5                                      ....
  6861 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6861 ms     | 0x7984 privk:0x7ff78ca16820::7ff78ca16820  a0 eb 32 88                                      ..2.
  6861 ms     | 0x7984 privk:0x7ff78ca16820::7ff78ca16820  e5 e5 e5 e5                                      ....
  6861 ms  0x7984 SSL_AuthCertificateComplete()
  6861 ms  0x7984 fd:0x7ff78cbf2400
  6861 ms  0x7984 err:0x0
  6864 ms  0x7984 SSL_AuthCertificateComplete()
  6864 ms  0x7984 fd:0x7ff78b959040
  6864 ms  0x7984 err:0x0
  6864 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6864 ms     | 0x7984 privk:0x7ff790bdb820::7ff790bdb820  30 ad 10 8d                                      0...
  6864 ms     | 0x7984 privk:0x7ff790bdb820::7ff790bdb820  e5 e5 e5 e5                                      ....
  6864 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6864 ms     | 0x7984 privk:0x7ff790bd1820::7ff790bd1820  80 3d 0d 8d                                      .=..
  6864 ms     | 0x7984 privk:0x7ff790bd1820::7ff790bd1820  e5 e5 e5 e5                                      ....
  6864 ms  0x7984 SSL_AuthCertificateComplete()
  6864 ms  0x7984 fd:0x7ff78cbf2040
  6864 ms  0x7984 err:0x0
  6864 ms  0x7984 SSL_AuthCertificateComplete()
  6864 ms  0x7984 fd:0x7ff7872b4760
  6864 ms  0x7984 err:0x0
  6864 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6864 ms     | 0x7984 privk:0x7ff790813020::7ff790813020  b0 a0 d4 8c                                      ....
  6864 ms     | 0x7984 privk:0x7ff790813020::7ff790813020  e5 e5 e5 e5                                      ....
  6864 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6864 ms     | 0x7984 privk:0x7ff790810020::7ff790810020  30 a8 d0 8c                                      0...
  6864 ms     | 0x7984 privk:0x7ff790810020::7ff790810020  e5 e5 e5 e5                                      ....
  6864 ms  0x7984 SSL_AuthCertificateComplete()
  6864 ms  0x7984 fd:0x7ff789dbdc70
  6864 ms  0x7984 err:0x0
  6864 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6864 ms     | 0x7984 privk:0x7ff790ded020::7ff790ded020  60 bf 13 8d                                      `...
  6865 ms     | 0x7984 privk:0x7ff790ded020::7ff790ded020  e5 e5 e5 e5                                      ....
  6865 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  6865 ms     | 0x7984 privk:0x7ff790de0820::7ff790de0820  40 1c 11 8d                                      @...
  6865 ms     | 0x7984 privk:0x7ff790de0820::7ff790de0820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6865 ms  0x798c PR_Close()
  6865 ms  0x798c fd:0x7ff776148610
           /* TID 0x7a28 */
  6865 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6866 ms  0x7a28 ret:0x0
           /* TID 0x7984 */
  6866 ms  0x7984 PK11_Encrypt()
  6866 ms  0x7984 symkey:0x7ff788f0a180
  6867 ms  0x7984 PK11_Encrypt()
  6867 ms  0x7984 symkey:0x7ff789d82900
  6867 ms  0x7984 PK11_Encrypt()
  6867 ms  0x7984 symkey:0x7ff789d82900
  6868 ms  0x7984 PK11_Encrypt()
  6868 ms  0x7984 symkey:0x7ff789d82e80
  6869 ms  0x7984 PK11_Encrypt()
  6869 ms  0x7984 symkey:0x7ff789d83500
  6869 ms  0x7984 PK11_Encrypt()
  6869 ms  0x7984 symkey:0x7ff789d83500
  6870 ms  0x7984 PK11_Encrypt()
  6870 ms  0x7984 symkey:0x7ff789d86f80
  6870 ms  0x7984 PK11_Encrypt()
  6870 ms  0x7984 symkey:0x7ff789d9db80
  6870 ms  0x7984 SECKEY_CreateECPrivateKey()
  6870 ms  0x7984 cx:0x7ff78fbf0aa8
  6871 ms     | 0x7984 EC_ValidatePublicKey()
  6871 ms     | 0x7984 ret:0x0
  6871 ms  0x7984 ret:0x7ff78ca17820::7ff78ca17820  10 1a 1a 76                                      ...v
  6871 ms  0x7984 SECKEY_CreateECPrivateKey()
  6871 ms  0x7984 cx:0x7ff78fbf0aa8
  6872 ms     | 0x7984 EC_ValidatePublicKey()
  6873 ms     | 0x7984 ret:0x0
  6873 ms  0x7984 ret:0x7ff78d11f020::7ff78d11f020  00 a1 f5 87                                      ....
  6874 ms  0x7984 PR_Close()
  6874 ms  0x7984 fd:0x7ff7885a22e0
  6874 ms  0x7984 PK11_Encrypt()
  6874 ms  0x7984 symkey:0x7ff789d83500
  6875 ms  0x7984 SSL_AuthCertificateComplete()
  6875 ms  0x7984 fd:0x7ff78cbebd60
  6875 ms  0x7984 err:0x0
  6875 ms  0x7984 PK11_Encrypt()
  6875 ms  0x7984 symkey:0x7ff7880bfc80
  6875 ms  0x7984 PK11_Encrypt()
  6875 ms  0x7984 symkey:0x7ff789d82900
  6875 ms  0x7984 PK11_Encrypt()
  6875 ms  0x7984 symkey:0x7ff789d82900
  6875 ms  0x7984 PK11_Encrypt()
  6875 ms  0x7984 symkey:0x7ff789d83500
  6876 ms  0x7984 SECKEY_DestroyPrivateKey()
  6876 ms  0x7984 privk:0x7ff7919b0020::7ff7919b0020  30 d3 1b 8d                                      0...
  6876 ms  0x7984 privk:0x7ff7919b0020::7ff7919b0020  e5 e5 e5 e5                                      ....
  6876 ms  0x7984 SECKEY_DestroyPrivateKey()
  6876 ms  0x7984 privk:0x7ff79107e820::7ff79107e820  c0 de b0 8c                                      ....
  6876 ms  0x7984 privk:0x7ff79107e820::7ff79107e820  e5 e5 e5 e5                                      ....
  6877 ms  0x7984 PK11_Encrypt()
  6877 ms  0x7984 symkey:0x7ff789d86600
  6877 ms  0x7984 SECKEY_CreateECPrivateKey()
  6877 ms  0x7984 cx:0x7ff78fbf0c48
  6878 ms     | 0x7984 EC_ValidatePublicKey()
  6878 ms     | 0x7984 ret:0x0
  6878 ms  0x7984 ret:0x7ff78d12d820::7ff78d12d820  60 b5 0e 88                                      `...
  6878 ms  0x7984 SECKEY_CreateECPrivateKey()
  6878 ms  0x7984 cx:0x7ff78fbf0c48
  6878 ms     | 0x7984 EC_ValidatePublicKey()
  6880 ms     | 0x7984 ret:0x0
  6880 ms  0x7984 ret:0x7ff78d136020::7ff78d136020  d0 48 3c 88                                      .H<.
  6880 ms  0x7984 PR_Close()
  6880 ms  0x7984 fd:0x7ff78b959040
  6880 ms     | 0x7984 PK11_Encrypt()
  6880 ms     | 0x7984 symkey:0x7ff789d82e80
  6880 ms  0x7984 PK11_Encrypt()
  6880 ms  0x7984 symkey:0x7ff789d83500
  6884 ms  0x7984 SECKEY_DestroyPrivateKey()
  6884 ms  0x7984 privk:0x7ff7919b7820::7ff7919b7820  80 18 1d 8d                                      ....
  6884 ms  0x7984 privk:0x7ff7919b7820::7ff7919b7820  e5 e5 e5 e5                                      ....
  6885 ms  0x7984 SECKEY_DestroyPrivateKey()
  6885 ms  0x7984 privk:0x7ff7919b5020::7ff7919b5020  30 dd 1b 8d                                      0...
  6885 ms  0x7984 privk:0x7ff7919b5020::7ff7919b5020  e5 e5 e5 e5                                      ....
           /* TID 0x7a01 */
  6889 ms  0x7a01 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6890 ms  0x7a01 ret:0x0
           /* TID 0x798c */
  6890 ms  0x798c PR_Close()
  6890 ms  0x798c fd:0x7ff775daffd0
           /* TID 0x7984 */
  6890 ms  0x7984 SSL_AuthCertificateComplete()
  6890 ms  0x7984 fd:0x7ff78c862c70
  6890 ms  0x7984 err:0x0
  6891 ms  0x7984 SECKEY_DestroyPrivateKey()
  6891 ms  0x7984 privk:0x7ff791a2e820::7ff791a2e820  50 a1 a3 8f                                      P...
  6891 ms  0x7984 privk:0x7ff791a2e820::7ff791a2e820  e5 e5 e5 e5                                      ....
  6891 ms  0x7984 SECKEY_DestroyPrivateKey()
  6891 ms  0x7984 privk:0x7ff791a2a820::7ff791a2a820  b0 9a 22 8d                                      ..".
  6891 ms  0x7984 privk:0x7ff791a2a820::7ff791a2a820  e5 e5 e5 e5                                      ....
  6891 ms  0x7984 PK11_Encrypt()
  6891 ms  0x7984 symkey:0x7ff789d95080
  6891 ms  0x7984 PR_Close()
  6891 ms  0x7984 fd:0x7ff78cbebd60
  6891 ms     | 0x7984 PK11_Encrypt()
  6891 ms     | 0x7984 symkey:0x7ff789d86600
  6892 ms  0x7984 PK11_Encrypt()
  6892 ms  0x7984 symkey:0x7ff789d83500
           /* TID 0x798c */
  6895 ms  0x798c PR_Close()
  6895 ms  0x798c fd:0x7ff775daffd0
  6898 ms  0x798c PR_Close()
  6898 ms  0x798c fd:0x7ff775daffd0
           /* TID 0x7984 */
  6902 ms  0x7984 SECKEY_DestroyPrivateKey()
  6902 ms  0x7984 privk:0x7ff791a3b820::7ff791a3b820  20 89 ad 8f                                       ...
  6902 ms  0x7984 privk:0x7ff791a3b820::7ff791a3b820  e5 e5 e5 e5                                      ....
  6902 ms  0x7984 SECKEY_DestroyPrivateKey()
  6902 ms  0x7984 privk:0x7ff791a38820::7ff791a38820  d0 83 ad 8f                                      ....
  6902 ms  0x7984 privk:0x7ff791a38820::7ff791a38820  e5 e5 e5 e5                                      ....
  6904 ms  0x7984 PK11_Encrypt()
  6904 ms  0x7984 symkey:0x7ff78724ad80
  6908 ms  0x7984 SECKEY_DestroyPrivateKey()
  6908 ms  0x7984 privk:0x7ff791a40020::7ff791a40020  60 4a af 8f                                      `J..
  6908 ms  0x7984 privk:0x7ff791a40020::7ff791a40020  e5 e5 e5 e5                                      ....
  6908 ms  0x7984 SECKEY_DestroyPrivateKey()
  6908 ms  0x7984 privk:0x7ff791a3e020::7ff791a3e020  80 43 af 8f                                      .C..
  6908 ms  0x7984 privk:0x7ff791a3e020::7ff791a3e020  e5 e5 e5 e5                                      ....
  6908 ms  0x7984 PR_Close()
  6908 ms  0x7984 fd:0x7ff78c862c70
  6908 ms     | 0x7984 PK11_Encrypt()
  6908 ms     | 0x7984 symkey:0x7ff789d95080
           /* TID 0x798c */
  6921 ms  0x798c PR_Close()
  6921 ms  0x798c fd:0x7ff787220f40
           /* TID 0x7984 */
  6922 ms  0x7984 SECKEY_DestroyPrivateKey()
  6922 ms  0x7984 privk:0x7ff791a44820::7ff791a44820  d0 ad af 8f                                      ....
  6922 ms  0x7984 privk:0x7ff791a44820::7ff791a44820  e5 e5 e5 e5                                      ....
  6922 ms  0x7984 SECKEY_DestroyPrivateKey()
  6922 ms  0x7984 privk:0x7ff791a42820::7ff791a42820  80 4d af 8f                                      .M..
  6922 ms  0x7984 privk:0x7ff791a42820::7ff791a42820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  6923 ms  0x798c PR_Close()
  6923 ms  0x798c fd:0x7ff7885a2730
  6924 ms  0x798c PR_Close()
  6924 ms  0x798c fd:0x7ff7883fbd30
           /* TID 0x7984 */
  6924 ms  0x7984 PK11_Encrypt()
  6924 ms  0x7984 symkey:0x7ff789d82480
  6924 ms  0x7984 PK11_Encrypt()
  6924 ms  0x7984 symkey:0x7ff78800c280
  6925 ms  0x7984 PK11_Encrypt()
  6925 ms  0x7984 symkey:0x7ff788363080
  6925 ms  0x7984 PK11_Encrypt()
  6925 ms  0x7984 symkey:0x7ff788af4b00
  6925 ms  0x7984 PK11_Encrypt()
  6925 ms  0x7984 symkey:0x7ff788fcbf80
  6926 ms  0x7984 SECKEY_CreateECPrivateKey()
  6926 ms  0x7984 cx:0x7ff78fbf1128
  6927 ms     | 0x7984 EC_ValidatePublicKey()
  6927 ms     | 0x7984 ret:0x0
  6927 ms  0x7984 ret:0x7ff78d281020::7ff78d281020  d0 23 22 87                                      .#".
  6927 ms  0x7984 SECKEY_CreateECPrivateKey()
  6927 ms  0x7984 cx:0x7ff78fbf1128
  6928 ms     | 0x7984 EC_ValidatePublicKey()
  6929 ms     | 0x7984 ret:0x0
  6929 ms  0x7984 ret:0x7ff78d28b820::7ff78d28b820  70 9e a2 87                                      p...
  6934 ms  0x7984 PK11_Encrypt()
  6934 ms  0x7984 symkey:0x7ff788394100
           /* TID 0x798c */
  6936 ms  0x798c PR_Close()
  6936 ms  0x798c fd:0x7ff7883fb5e0
           /* TID 0x7984 */
  6936 ms  0x7984 PK11_Encrypt()
  6936 ms  0x7984 symkey:0x7ff788f0a180
           /* TID 0x798c */
  6944 ms  0x798c PR_Close()
  6944 ms  0x798c fd:0x7ff7883fbe50
           /* TID 0x7984 */
  6951 ms  0x7984 PK11_Derive()
  6951 ms  0x7984 basekey:0x7ff789d94980
  6951 ms     | 0x7984 PK11_DeriveWithTemplate()
  6951 ms  0x7984 ret:0x7ff789d94a80
  6951 ms  0x7984 PK11_Encrypt()
  6951 ms  0x7984 symkey:0x7ff789d94f00
  6952 ms  0x7984 SECKEY_DestroyPrivateKey()
  6952 ms  0x7984 privk:0x7ff78d11f020::7ff78d11f020  00 a1 f5 87                                      ....
  6952 ms  0x7984 privk:0x7ff78d11f020::7ff78d11f020  e5 e5 e5 e5                                      ....
  6952 ms  0x7984 SECKEY_DestroyPrivateKey()
  6952 ms  0x7984 privk:0x7ff78ca17820::7ff78ca17820  10 1a 1a 76                                      ...v
  6952 ms  0x7984 privk:0x7ff78ca17820::7ff78ca17820  e5 e5 e5 e5                                      ....
  6952 ms  0x7984 PK11_Encrypt()
  6952 ms  0x7984 symkey:0x7ff789d94f00
           /* TID 0x798c */
  6962 ms  0x798c PR_Close()
  6962 ms  0x798c fd:0x7ff786de58e0
           /* TID 0x7984 */
  6963 ms  SECKEY_ECParamsToKeySize()
  6963 ms  0x7984 ret:0x100
  6963 ms  0x7984 SECKEY_CreateECPrivateKey()
  6963 ms  0x7984 cx:0x7ff78fbf0c48
  6963 ms     | 0x7984 EC_ValidatePublicKey()
  6965 ms     | 0x7984 ret:0x0
  6965 ms  0x7984 ret:0x7ff78ce13020::7ff78ce13020  f0 86 a4 87                                      ....
  6965 ms  0x7984 PK11_PubDeriveWithKDF()
  6965 ms  0x7984 seckey:0x7ff78ce13020
  6965 ms     | 0x7984 EC_ValidatePublicKey()
  6969 ms     | 0x7984 ret:0x0
  6970 ms  0x7984 ret:0x7ff789d86180
  6970 ms  0x7984 PK11_DeriveWithFlags()
  6970 ms  0x7984 basekey:0x7ff789d86180
  6970 ms     | 0x7984 PK11_DeriveWithTemplate()
  6970 ms  0x7984 ret:0x7ff789d86100
  6970 ms  0x7984 PK11_Derive()
  6970 ms  0x7984 basekey:0x7ff789d86100
  6971 ms     | 0x7984 PK11_DeriveWithTemplate()
  6971 ms  0x7984 ret:0x7ff789d82b00
  6971 ms  0x7984 SECKEY_DestroyPrivateKey()
  6971 ms  0x7984 privk:0x7ff78ce13020::7ff78ce13020  f0 86 a4 87                                      ....
  6971 ms  0x7984 privk:0x7ff78ce13020::7ff78ce13020  e5 e5 e5 e5                                      ....
  6971 ms  0x7984 PK11_Encrypt()
  6971 ms  0x7984 symkey:0x7ff789d86380
  6973 ms  0x7984 SSL_AuthCertificateComplete()
  6973 ms  0x7984 fd:0x7ff789d7baf0
  6973 ms  0x7984 err:0x0
           /* TID 0x798c */
  6974 ms  0x798c PR_Close()
  6974 ms  0x798c fd:0x7ff7885a24c0
           /* TID 0x7984 */
  6976 ms  0x7984 PK11_Encrypt()
  6976 ms  0x7984 symkey:0x7ff789d86380
           /* TID 0x798c */
  6982 ms  0x798c PR_Close()
  6982 ms  0x798c fd:0x7ff7885a24c0
  6993 ms  0x798c PR_Close()
  6993 ms  0x798c fd:0x7ff7885a24c0
           /* TID 0x7984 */
  6994 ms  0x7984 PK11_Encrypt()
  6994 ms  0x7984 symkey:0x7ff789d9db80
           /* TID 0x798c */
  7006 ms  0x798c PR_Close()
  7006 ms  0x798c fd:0x7ff7875ee190
  7009 ms  0x798c PR_Close()
  7009 ms  0x798c fd:0x7ff7761a2d00
           /* TID 0x7984 */
  7017 ms  SECKEY_ECParamsToKeySize()
  7017 ms  0x7984 ret:0x100
  7017 ms  0x7984 SECKEY_CreateECPrivateKey()
  7017 ms  0x7984 cx:0x7ff78fbf1128
  7017 ms     | 0x7984 EC_ValidatePublicKey()
  7019 ms     | 0x7984 ret:0x0
  7019 ms  0x7984 ret:0x7ff78d290020::7ff78d290020  60 bf 0e 88                                      `...
  7019 ms  0x7984 PK11_PubDeriveWithKDF()
  7019 ms  0x7984 seckey:0x7ff78d290020
  7019 ms     | 0x7984 EC_ValidatePublicKey()
  7020 ms     | 0x7984 ret:0x0
  7029 ms  0x7984 ret:0x7ff789d86180
  7029 ms  0x7984 PK11_DeriveWithFlags()
  7029 ms  0x7984 basekey:0x7ff789d86180
  7029 ms     | 0x7984 PK11_DeriveWithTemplate()
  7029 ms  0x7984 ret:0x7ff776182a00
  7029 ms  0x7984 PK11_Derive()
  7029 ms  0x7984 basekey:0x7ff776182a00
  7029 ms     | 0x7984 PK11_DeriveWithTemplate()
  7029 ms  0x7984 ret:0x7ff789d6e100
  7029 ms  0x7984 SECKEY_DestroyPrivateKey()
  7029 ms  0x7984 privk:0x7ff78d290020::7ff78d290020  60 bf 0e 88                                      `...
  7029 ms  0x7984 privk:0x7ff78d290020::7ff78d290020  e5 e5 e5 e5                                      ....
  7029 ms  0x7984 PK11_Encrypt()
  7029 ms  0x7984 symkey:0x7ff789d82c80
           /* TID 0x798c */
  7034 ms  0x798c PR_Close()
  7034 ms  0x798c fd:0x7ff7761a2d00
           /* TID 0x7984 */
  7042 ms  0x7984 SSL_ImportFD()
  7042 ms  0x7984 ret:0x7ff7885a24c0
  7042 ms  0x7984 SSL_AuthCertificateHook()
  7042 ms  0x7984 fd:0x7ff7885a24c0
  7042 ms  0x7984 ret:0x0
  7042 ms  0x7984 PR_Connect()
  7042 ms  0x7984 fd:0x7ff7885a24c0
           /* TID 0x798c */
  7046 ms  0x798c PR_Close()
  7046 ms  0x798c fd:0x7ff775daf7c0
           /* TID 0x7984 */
  7051 ms  0x7984 SECKEY_DestroyPrivateKey()
  7051 ms  0x7984 privk:0x7ff78d136020::7ff78d136020  d0 48 3c 88                                      .H<.
  7051 ms  0x7984 privk:0x7ff78d136020::7ff78d136020  e5 e5 e5 e5                                      ....
  7051 ms  0x7984 SECKEY_DestroyPrivateKey()
  7051 ms  0x7984 privk:0x7ff78d12d820::7ff78d12d820  60 b5 0e 88                                      `...
  7052 ms  0x7984 privk:0x7ff78d12d820::7ff78d12d820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  7059 ms  0x798c PR_Close()
  7059 ms  0x798c fd:0x7ff7875ee190
           /* TID 0x79ec */
  7060 ms  0x79ec _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7060 ms  0x79ec ret:0x0
           /* TID 0x7984 */
  7060 ms  0x7984 SSL_AuthCertificateComplete()
  7060 ms  0x7984 fd:0x7ff78cbf2460
  7060 ms  0x7984 err:0x0
  7060 ms  0x7984 PK11_Encrypt()
  7060 ms  0x7984 symkey:0x7ff789d82c80
           /* TID 0x798c */
  7073 ms  0x798c PR_Close()
  7073 ms  0x798c fd:0x7ff786de5d60
           /* TID 0x7984 */
  7080 ms  0x7984 SECKEY_CreateECPrivateKey()
  7080 ms  0x7984 cx:0x7ff78fbf1468
  7080 ms     | 0x7984 EC_ValidatePublicKey()
  7080 ms     | 0x7984 ret:0x0
  7081 ms  0x7984 ret:0x7ff78d122020::7ff78d122020  40 57 5f 87                                      @W_.
  7081 ms  0x7984 SECKEY_CreateECPrivateKey()
  7081 ms  0x7984 cx:0x7ff78fbf1468
  7081 ms     | 0x7984 EC_ValidatePublicKey()
  7083 ms     | 0x7984 ret:0x0
  7083 ms  0x7984 ret:0x7ff78d136020::7ff78d136020  70 6e df 86                                      pn..
           /* TID 0x798c */
  7087 ms  0x798c PR_Close()
  7087 ms  0x798c fd:0x7ff7883fbaf0
  7088 ms  0x798c PR_Close()
  7088 ms  0x798c fd:0x7ff7883fbaf0
           /* TID 0x7984 */
  7114 ms  0x7984 SECKEY_DestroyPrivateKey()
  7114 ms  0x7984 privk:0x7ff78d28b820::7ff78d28b820  70 9e a2 87                                      p...
  7114 ms  0x7984 privk:0x7ff78d28b820::7ff78d28b820  e5 e5 e5 e5                                      ....
  7114 ms  0x7984 SECKEY_DestroyPrivateKey()
  7114 ms  0x7984 privk:0x7ff78d281020::7ff78d281020  d0 23 22 87                                      .#".
  7114 ms  0x7984 privk:0x7ff78d281020::7ff78d281020  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  7134 ms  0x798c PR_Close()
  7134 ms  0x798c fd:0x7ff7883fbaf0
           /* TID 0x7984 */
  7137 ms  0x7984 PK11_Derive()
  7137 ms  0x7984 basekey:0x7ff789d86180
  7137 ms     | 0x7984 PK11_DeriveWithTemplate()
  7137 ms  0x7984 ret:0x7ff776183980
  7137 ms  0x7984 PK11_PubDeriveWithKDF()
  7137 ms  0x7984 seckey:0x7ff78d122020
  7137 ms     | 0x7984 EC_ValidatePublicKey()
  7137 ms     | 0x7984 ret:0x0
  7137 ms  0x7984 ret:0x7ff789d86180
  7137 ms  SECKEY_ECParamsToKeySize()
  7137 ms  0x7984 ret:0xff
  7137 ms  0x7984 PK11_DeriveWithFlags()
  7137 ms  0x7984 basekey:0x7ff776183980
  7137 ms     | 0x7984 PK11_DeriveWithTemplate()
  7137 ms  0x7984 ret:0x7ff789d86080
  7137 ms  0x7984 PK11_Derive()
  7137 ms  0x7984 basekey:0x7ff789d86180
  7137 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d6f100
  7138 ms  0x7984 PK11_DeriveWithFlags()
  7138 ms  0x7984 basekey:0x7ff789d6f100
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff776183980
  7138 ms  0x7984 PK11_DeriveWithFlags()
  7138 ms  0x7984 basekey:0x7ff789d6f100
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d86180
  7138 ms  0x7984 PK11_DeriveWithFlags()
  7138 ms  0x7984 basekey:0x7ff789d6f100
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d86080
  7138 ms  0x7984 PK11_Derive()
  7138 ms  0x7984 basekey:0x7ff789d6f380
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d6e180
  7138 ms  0x7984 PK11_DeriveWithFlags()
  7138 ms  0x7984 basekey:0x7ff789d86180
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d6f100
  7138 ms  0x7984 PK11_DeriveWithFlags()
  7138 ms  0x7984 basekey:0x7ff789d86180
  7138 ms     | 0x7984 PK11_DeriveWithTemplate()
  7138 ms  0x7984 ret:0x7ff789d86080
  7141 ms  SECKEY_ECParamsToKeySize()
  7141 ms  0x7984 ret:0x100
  7141 ms  SECKEY_ECParamsToBasePointOrderLen()
  7141 ms  0x7984 ret:0x100
  7141 ms  SECKEY_ECParamsToBasePointOrderLen()
  7141 ms  0x7984 ret:0x100
  7141 ms  0x7984 EC_ValidatePublicKey()
  7143 ms  0x7984 ret:0x0
  7145 ms  0x7984 PK11_DeriveWithFlags()
  7145 ms  0x7984 basekey:0x7ff789d86180
  7145 ms     | 0x7984 PK11_DeriveWithTemplate()
  7145 ms  0x7984 ret:0x7ff789d86080
           /* TID 0x798c */
  7146 ms  0x798c PR_Close()
  7146 ms  0x798c fd:0x7ff78b9322e0
           /* TID 0x7984 */
  7147 ms  0x7984 PR_Connect()
  7147 ms  0x7984 fd:0x7ff78c8ec460
  7236 ms  0x7984 SSL_ImportFD()
  7236 ms  0x7984 ret:0x7ff78c862100
  7236 ms  0x7984 SSL_AuthCertificateHook()
  7236 ms  0x7984 fd:0x7ff78c862100
  7236 ms  0x7984 ret:0x0
  7236 ms  0x7984 PR_Connect()
  7236 ms  0x7984 fd:0x7ff78c862100
           /* TID 0x798c */
  7248 ms  0x798c PR_Close()
  7248 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  7255 ms  0x7984 PK11_Encrypt()
  7255 ms  0x7984 symkey:0x7ff7880bfc80
  7305 ms  0x7984 SSL_ImportFD()
  7305 ms  0x7984 ret:0x7ff78d0fe0d0
  7305 ms  0x7984 SSL_AuthCertificateHook()
  7305 ms  0x7984 fd:0x7ff78d0fe0d0
  7305 ms  0x7984 ret:0x0
  7305 ms  0x7984 PR_Connect()
  7305 ms  0x7984 fd:0x7ff78d0fe0d0
  7315 ms  0x7984 SECKEY_CreateECPrivateKey()
  7315 ms  0x7984 cx:0x7ff78fbf17a8
  7315 ms     | 0x7984 EC_ValidatePublicKey()
  7315 ms     | 0x7984 ret:0x0
  7315 ms  0x7984 ret:0x7ff790bca820::7ff790bca820  c0 39 a9 8c                                      .9..
  7315 ms  0x7984 SECKEY_CreateECPrivateKey()
  7315 ms  0x7984 cx:0x7ff78fbf17a8
  7316 ms     | 0x7984 EC_ValidatePublicKey()
  7317 ms     | 0x7984 ret:0x0
  7317 ms  0x7984 ret:0x7ff790bd1820::7ff790bd1820  e0 3c a9 8c                                      .<..
           /* TID 0x798c */
  7328 ms  0x798c PR_Close()
  7328 ms  0x798c fd:0x7ff78b959160
           /* TID 0x7a1f */
  7328 ms  0x7a1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7329 ms  0x7a1f ret:0x0
           /* TID 0x7984 */
  7330 ms  0x7984 SSL_ImportFD()
  7330 ms  0x7984 ret:0x7ff78d114250
  7330 ms  0x7984 SSL_AuthCertificateHook()
  7330 ms  0x7984 fd:0x7ff78d114250
  7330 ms  0x7984 ret:0x0
  7330 ms  0x7984 PR_Connect()
  7330 ms  0x7984 fd:0x7ff78d114250
  7330 ms  0x7984 SSL_ImportFD()
  7330 ms  0x7984 ret:0x7ff78cb3f310
  7330 ms  0x7984 SSL_AuthCertificateHook()
  7330 ms  0x7984 fd:0x7ff78cb3f310
  7331 ms  0x7984 ret:0x0
  7331 ms  0x7984 PR_Connect()
  7331 ms  0x7984 fd:0x7ff78cb3f310
  7331 ms  0x7984 SSL_ImportFD()
  7331 ms  0x7984 ret:0x7ff78d0fe700
  7331 ms  0x7984 SSL_AuthCertificateHook()
  7331 ms  0x7984 fd:0x7ff78d0fe700
  7331 ms  0x7984 ret:0x0
  7331 ms  0x7984 PR_Connect()
  7331 ms  0x7984 fd:0x7ff78d0fe700
  7331 ms  0x7984 SSL_ImportFD()
  7331 ms  0x7984 ret:0x7ff78d0fec10
  7331 ms  0x7984 SSL_AuthCertificateHook()
  7331 ms  0x7984 fd:0x7ff78d0fec10
  7331 ms  0x7984 ret:0x0
  7331 ms  0x7984 PR_Connect()
  7331 ms  0x7984 fd:0x7ff78d0fec10
  7331 ms  0x7984 SSL_ImportFD()
  7331 ms  0x7984 ret:0x7ff78d0fed00
  7331 ms  0x7984 SSL_AuthCertificateHook()
  7331 ms  0x7984 fd:0x7ff78d0fed00
  7331 ms  0x7984 ret:0x0
  7331 ms  0x7984 PR_Connect()
  7331 ms  0x7984 fd:0x7ff78d0fed00
  7331 ms  0x7984 SSL_ImportFD()
  7331 ms  0x7984 ret:0x7ff78d0fed90
  7331 ms  0x7984 SSL_AuthCertificateHook()
  7331 ms  0x7984 fd:0x7ff78d0fed90
  7331 ms  0x7984 ret:0x0
  7331 ms  0x7984 PR_Connect()
  7331 ms  0x7984 fd:0x7ff78d0fed90
  7337 ms  0x7984 SSL_AuthCertificateComplete()
  7337 ms  0x7984 fd:0x7ff7885a24c0
  7337 ms  0x7984 err:0x0
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff789d6e180
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff789d86080
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff789d6e180
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff789d6f380
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff789d6e180
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff789d6f180
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff776183980
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff787fd5f80
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff776183980
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff78b95d180
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff789d6f380
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff78b95d180
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff789d6f380
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff78b95d980
  7337 ms     | 0x7984 PK11_DeriveWithFlags()
  7337 ms     | 0x7984 basekey:0x7ff776183980
  7337 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7337 ms     | 0x7984 ret:0x7ff789d6f100
  7337 ms     | 0x7984 PK11_Encrypt()
  7337 ms     | 0x7984 symkey:0x7ff787fd5f80
  7338 ms     | 0x7984 PK11_DeriveWithFlags()
  7338 ms     | 0x7984 basekey:0x7ff789d86080
  7338 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7338 ms     | 0x7984 ret:0x7ff789d6f100
  7338 ms     | 0x7984 PK11_DeriveWithFlags()
  7338 ms     | 0x7984 basekey:0x7ff789d86080
  7338 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7338 ms     | 0x7984 ret:0x7ff78b95d980
  7338 ms     | 0x7984 PK11_DeriveWithFlags()
  7338 ms     | 0x7984 basekey:0x7ff789d6e180
  7338 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7338 ms     | 0x7984 ret:0x7ff787fd5f80
  7338 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7338 ms     | 0x7984 privk:0x7ff78d136020::7ff78d136020  70 6e df 86                                      pn..
  7338 ms     | 0x7984 privk:0x7ff78d136020::7ff78d136020  e5 e5 e5 e5                                      ....
  7338 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7338 ms     | 0x7984 privk:0x7ff78d122020::7ff78d122020  40 57 5f 87                                      @W_.
  7338 ms     | 0x7984 privk:0x7ff78d122020::7ff78d122020  e5 e5 e5 e5                                      ....
  7339 ms  0x7984 PK11_Encrypt()
  7339 ms  0x7984 symkey:0x7ff789d6f100
  7339 ms  0x7984 PK11_Encrypt()
  7339 ms  0x7984 symkey:0x7ff789d6f100
  7352 ms  0x7984 SSL_ImportFD()
  7352 ms  0x7984 ret:0x7ff78cb3f5b0
  7352 ms  0x7984 SSL_AuthCertificateHook()
  7352 ms  0x7984 fd:0x7ff78cb3f5b0
  7352 ms  0x7984 ret:0x0
  7352 ms  0x7984 PR_Connect()
  7352 ms  0x7984 fd:0x7ff78cb3f5b0
  7373 ms  0x7984 SECKEY_CreateECPrivateKey()
  7373 ms  0x7984 cx:0x7ff78fbf1948
  7374 ms     | 0x7984 EC_ValidatePublicKey()
  7374 ms     | 0x7984 ret:0x0
  7374 ms  0x7984 ret:0x7ff78d134820::7ff78d134820  40 57 5f 87                                      @W_.
  7374 ms  0x7984 SECKEY_CreateECPrivateKey()
  7374 ms  0x7984 cx:0x7ff78fbf1948
  7375 ms     | 0x7984 EC_ValidatePublicKey()
  7376 ms     | 0x7984 ret:0x0
  7376 ms  0x7984 ret:0x7ff78d299020::7ff78d299020  90 22 22 87                                      ."".
  7377 ms  0x7984 PK11_DeriveWithFlags()
  7377 ms  0x7984 basekey:0x7ff787fd5f80
  7377 ms     | 0x7984 PK11_DeriveWithTemplate()
  7377 ms  0x7984 ret:0x7ff789d86180
  7377 ms  0x7984 PK11_DeriveWithFlags()
  7377 ms  0x7984 basekey:0x7ff787fd5f80
  7377 ms     | 0x7984 PK11_DeriveWithTemplate()
  7377 ms  0x7984 ret:0x7ff789d86180
  7377 ms  0x7984 PK11_Encrypt()
  7377 ms  0x7984 symkey:0x7ff789d6f100
  7398 ms  SECKEY_ECParamsToKeySize()
  7398 ms  0x7984 ret:0xff
  7398 ms  0x7984 SECKEY_CreateECPrivateKey()
  7398 ms  0x7984 cx:0x7ff78fbf17a8
  7398 ms     | 0x7984 EC_ValidatePublicKey()
  7398 ms     | 0x7984 ret:0x0
  7398 ms  0x7984 ret:0x7ff790bdd820::7ff790bdd820  d0 3d a9 8c                                      .=..
  7400 ms  0x7984 PK11_PubDeriveWithKDF()
  7400 ms  0x7984 seckey:0x7ff790bdd820
  7400 ms     | 0x7984 EC_ValidatePublicKey()
  7400 ms     | 0x7984 ret:0x0
  7400 ms  0x7984 ret:0x7ff789d86180
  7400 ms  0x7984 PK11_DeriveWithFlags()
  7400 ms  0x7984 basekey:0x7ff789d86180
  7400 ms     | 0x7984 PK11_DeriveWithTemplate()
  7400 ms  0x7984 ret:0x7ff776183980
  7400 ms  0x7984 PK11_Derive()
  7400 ms  0x7984 basekey:0x7ff776183980
  7400 ms     | 0x7984 PK11_DeriveWithTemplate()
  7400 ms  0x7984 ret:0x7ff789d6e180
  7400 ms  0x7984 SECKEY_DestroyPrivateKey()
  7400 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  d0 3d a9 8c                                      .=..
  7400 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  e5 e5 e5 e5                                      ....
  7400 ms  0x7984 PK11_Encrypt()
  7400 ms  0x7984 symkey:0x7ff78ce6e780
  7401 ms  0x7984 SECKEY_CreateECPrivateKey()
  7401 ms  0x7984 cx:0x7ff78fbf2308
  7402 ms     | 0x7984 EC_ValidatePublicKey()
  7402 ms     | 0x7984 ret:0x0
  7402 ms  0x7984 ret:0x7ff790bdd820::7ff790bdd820  80 3d a9 8c                                      .=..
  7402 ms  0x7984 SECKEY_CreateECPrivateKey()
  7402 ms  0x7984 cx:0x7ff78fbf2308
  7402 ms     | 0x7984 EC_ValidatePublicKey()
  7404 ms     | 0x7984 ret:0x0
  7404 ms  0x7984 ret:0x7ff790be4820::7ff790be4820  00 41 b1 8c                                      .A..
  7417 ms  0x7984 SECKEY_CreateECPrivateKey()
  7417 ms  0x7984 cx:0x7ff78fbf1fc8
  7417 ms     | 0x7984 EC_ValidatePublicKey()
  7417 ms     | 0x7984 ret:0x0
  7417 ms  0x7984 ret:0x7ff790ded020::7ff790ded020  00 41 be 8c                                      .A..
  7417 ms  0x7984 SECKEY_CreateECPrivateKey()
  7417 ms  0x7984 cx:0x7ff78fbf1fc8
  7418 ms     | 0x7984 EC_ValidatePublicKey()
  7419 ms     | 0x7984 ret:0x0
  7419 ms  0x7984 ret:0x7ff79107d020::7ff79107d020  20 49 be 8c                                       I..
  7425 ms  0x7984 SECKEY_CreateECPrivateKey()
  7425 ms  0x7984 cx:0x7ff78fbf1e28
  7425 ms     | 0x7984 EC_ValidatePublicKey()
  7425 ms     | 0x7984 ret:0x0
  7425 ms  0x7984 ret:0x7ff7914b3020::7ff7914b3020  20 3e b2 8c                                       >..
  7425 ms  0x7984 SECKEY_CreateECPrivateKey()
  7425 ms  0x7984 cx:0x7ff78fbf1e28
  7426 ms     | 0x7984 EC_ValidatePublicKey()
  7429 ms     | 0x7984 ret:0x0
  7436 ms  0x7984 ret:0x7ff7919b2020::7ff7919b2020  d0 93 a2 87                                      ....
  7436 ms  0x7984 PK11_Encrypt()
  7436 ms  0x7984 symkey:0x7ff789d83500
           /* TID 0x7a28 */
  7437 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7437 ms  0x7a28 ret:0x0
           /* TID 0x798c */
  7437 ms  0x798c PR_Close()
  7437 ms  0x798c fd:0x7ff789d7bd90
           /* TID 0x7984 */
  7438 ms  0x7984 SSL_AuthCertificateComplete()
  7438 ms  0x7984 fd:0x7ff78c862100
  7438 ms  0x7984 err:0x0
  7439 ms  0x7984 PK11_Encrypt()
  7439 ms  0x7984 symkey:0x7ff78ce6e780
  7439 ms  0x7984 PK11_Encrypt()
  7439 ms  0x7984 symkey:0x7ff78ce6e780
  7439 ms  0x7984 SECKEY_CreateECPrivateKey()
  7439 ms  0x7984 cx:0x7ff78fbf24a8
  7439 ms     | 0x7984 EC_ValidatePublicKey()
  7440 ms     | 0x7984 ret:0x0
  7440 ms  0x7984 ret:0x7ff7919b6020::7ff7919b6020  40 a7 d0 8c                                      @...
  7440 ms  0x7984 SECKEY_CreateECPrivateKey()
  7440 ms  0x7984 cx:0x7ff78fbf24a8
  7440 ms     | 0x7984 EC_ValidatePublicKey()
  7442 ms     | 0x7984 ret:0x0
  7442 ms  0x7984 ret:0x7ff7919b8820::7ff7919b8820  c0 ae d0 8c                                      ....
  7447 ms  0x7984 SECKEY_CreateECPrivateKey()
  7447 ms  0x7984 cx:0x7ff78fbf2168
  7447 ms     | 0x7984 EC_ValidatePublicKey()
  7447 ms     | 0x7984 ret:0x0
  7447 ms  0x7984 ret:0x7ff7919bf820::7ff7919bf820  f0 11 df 8c                                      ....
  7448 ms  0x7984 SECKEY_CreateECPrivateKey()
  7448 ms  0x7984 cx:0x7ff78fbf2168
  7448 ms     | 0x7984 EC_ValidatePublicKey()
  7450 ms     | 0x7984 ret:0x0
  7450 ms  0x7984 ret:0x7ff791a29820::7ff791a29820  d0 13 df 8c                                      ....
  7454 ms  0x7984 SECKEY_CreateECPrivateKey()
  7454 ms  0x7984 cx:0x7ff78fbf1ae8
  7454 ms     | 0x7984 EC_ValidatePublicKey()
  7454 ms     | 0x7984 ret:0x0
  7454 ms  0x7984 ret:0x7ff791a2e820::7ff791a2e820  a0 16 df 8c                                      ....
  7454 ms  0x7984 SECKEY_CreateECPrivateKey()
  7454 ms  0x7984 cx:0x7ff78fbf1ae8
  7455 ms     | 0x7984 EC_ValidatePublicKey()
  7456 ms     | 0x7984 ret:0x0
  7456 ms  0x7984 ret:0x7ff791a38020::7ff791a38020  b0 90 ed 8c                                      ....
  7457 ms  0x7984 SECKEY_CreateECPrivateKey()
  7457 ms  0x7984 cx:0x7ff78fbf2648
  7457 ms     | 0x7984 EC_ValidatePublicKey()
  7457 ms     | 0x7984 ret:0x0
  7457 ms  0x7984 ret:0x7ff791a3b820::7ff791a3b820  60 9a ed 8c                                      `...
  7457 ms  0x7984 SECKEY_CreateECPrivateKey()
  7457 ms  0x7984 cx:0x7ff78fbf2648
  7458 ms     | 0x7984 EC_ValidatePublicKey()
  7459 ms     | 0x7984 ret:0x0
  7459 ms  0x7984 ret:0x7ff791a3d820::7ff791a3d820  f0 7b 02 8d                                      .{..
  7461 ms  0x7984 PK11_Encrypt()
  7461 ms  0x7984 symkey:0x7ff789d83500
  7461 ms  0x7984 PK11_Encrypt()
  7461 ms  0x7984 symkey:0x7ff789d83500
  7463 ms  SECKEY_ECParamsToKeySize()
  7463 ms  0x7984 ret:0x100
  7463 ms  0x7984 SECKEY_CreateECPrivateKey()
  7463 ms  0x7984 cx:0x7ff78fbf1948
  7463 ms     | 0x7984 EC_ValidatePublicKey()
  7465 ms     | 0x7984 ret:0x0
  7465 ms  0x7984 ret:0x7ff791a41820::7ff791a41820  90 e2 04 8d                                      ....
  7465 ms  0x7984 PK11_PubDeriveWithKDF()
  7465 ms  0x7984 seckey:0x7ff791a41820
  7465 ms     | 0x7984 EC_ValidatePublicKey()
  7467 ms     | 0x7984 ret:0x0
  7468 ms  0x7984 ret:0x7ff789d86180
  7468 ms  0x7984 PK11_DeriveWithFlags()
  7468 ms  0x7984 basekey:0x7ff789d86180
  7468 ms     | 0x7984 PK11_DeriveWithTemplate()
  7468 ms  0x7984 ret:0x7ff78b95d980
  7468 ms  0x7984 PK11_Derive()
  7468 ms  0x7984 basekey:0x7ff78b95d980
  7468 ms     | 0x7984 PK11_DeriveWithTemplate()
  7468 ms  0x7984 ret:0x7ff78d082280
  7468 ms  0x7984 SECKEY_DestroyPrivateKey()
  7468 ms  0x7984 privk:0x7ff791a41820::7ff791a41820  90 e2 04 8d                                      ....
  7468 ms  0x7984 privk:0x7ff791a41820::7ff791a41820  e5 e5 e5 e5                                      ....
  7468 ms  0x7984 PK11_Encrypt()
  7468 ms  0x7984 symkey:0x7ff78d082480
  7471 ms  0x7984 SSL_AuthCertificateComplete()
  7471 ms  0x7984 fd:0x7ff78d0fe0d0
  7471 ms  0x7984 err:0x0
  7472 ms  0x7984 PK11_Encrypt()
  7472 ms  0x7984 symkey:0x7ff78d082480
  7475 ms  SECKEY_ECParamsToKeySize()
  7475 ms  0x7984 ret:0x100
  7475 ms  0x7984 SECKEY_CreateECPrivateKey()
  7475 ms  0x7984 cx:0x7ff78fbf2308
  7476 ms     | 0x7984 EC_ValidatePublicKey()
  7477 ms     | 0x7984 ret:0x0
  7477 ms  0x7984 ret:0x7ff791a42020::7ff791a42020  f0 0b 08 8d                                      ....
  7477 ms  0x7984 PK11_PubDeriveWithKDF()
  7477 ms  0x7984 seckey:0x7ff791a42020
  7477 ms     | 0x7984 EC_ValidatePublicKey()
  7479 ms     | 0x7984 ret:0x0
  7480 ms  0x7984 ret:0x7ff789d86180
  7480 ms  0x7984 PK11_DeriveWithFlags()
  7480 ms  0x7984 basekey:0x7ff789d86180
  7480 ms     | 0x7984 PK11_DeriveWithTemplate()
  7480 ms  0x7984 ret:0x7ff78ce6eb80
  7480 ms  0x7984 PK11_Derive()
  7480 ms  0x7984 basekey:0x7ff78ce6eb80
  7480 ms     | 0x7984 PK11_DeriveWithTemplate()
  7480 ms  0x7984 ret:0x7ff78d040600
  7480 ms  0x7984 SECKEY_DestroyPrivateKey()
  7480 ms  0x7984 privk:0x7ff791a42020::7ff791a42020  f0 0b 08 8d                                      ....
  7480 ms  0x7984 privk:0x7ff791a42020::7ff791a42020  e5 e5 e5 e5                                      ....
  7481 ms  0x7984 PK11_Encrypt()
  7481 ms  0x7984 symkey:0x7ff78d0b8c00
  7483 ms  0x7984 SSL_AuthCertificateComplete()
  7483 ms  0x7984 fd:0x7ff78d0fed00
  7483 ms  0x7984 err:0x0
           /* TID 0x798c */
  7484 ms  0x798c PR_Close()
  7484 ms  0x798c fd:0x7ff787f9d700
           /* TID 0x7984 */
  7488 ms  0x7984 PK11_Encrypt()
  7488 ms  0x7984 symkey:0x7ff789d6f100
  7489 ms  0x7984 SECKEY_DestroyPrivateKey()
  7489 ms  0x7984 privk:0x7ff790bd1820::7ff790bd1820  e0 3c a9 8c                                      .<..
  7489 ms  0x7984 privk:0x7ff790bd1820::7ff790bd1820  e5 e5 e5 e5                                      ....
  7489 ms  0x7984 SECKEY_DestroyPrivateKey()
  7489 ms  0x7984 privk:0x7ff790bca820::7ff790bca820  c0 39 a9 8c                                      .9..
  7489 ms  0x7984 privk:0x7ff790bca820::7ff790bca820  e5 e5 e5 e5                                      ....
  7489 ms  0x7984 PK11_Encrypt()
  7489 ms  0x7984 symkey:0x7ff78ce6e780
  7495 ms  0x7984 PK11_Encrypt()
  7495 ms  0x7984 symkey:0x7ff78d0b8c00
  7496 ms  SECKEY_ECParamsToKeySize()
  7496 ms  0x7984 ret:0x100
  7496 ms  0x7984 SECKEY_CreateECPrivateKey()
  7496 ms  0x7984 cx:0x7ff78fbf1fc8
  7497 ms     | 0x7984 EC_ValidatePublicKey()
  7498 ms     | 0x7984 ret:0x0
  7498 ms  0x7984 ret:0x7ff790bcd820::7ff790bcd820  a0 3b a9 8c                                      .;..
  7498 ms  0x7984 PK11_PubDeriveWithKDF()
  7498 ms  0x7984 seckey:0x7ff790bcd820
  7498 ms     | 0x7984 EC_ValidatePublicKey()
  7499 ms     | 0x7984 ret:0x0
  7501 ms  0x7984 ret:0x7ff789d86180
  7501 ms  0x7984 PK11_DeriveWithFlags()
  7501 ms  0x7984 basekey:0x7ff789d86180
  7501 ms     | 0x7984 PK11_DeriveWithTemplate()
  7501 ms  0x7984 ret:0x7ff78d0b8800
  7501 ms  0x7984 PK11_Derive()
  7501 ms  0x7984 basekey:0x7ff78d0b8800
  7501 ms     | 0x7984 PK11_DeriveWithTemplate()
  7501 ms  0x7984 ret:0x7ff78d0b8980
  7501 ms  0x7984 SECKEY_DestroyPrivateKey()
  7501 ms  0x7984 privk:0x7ff790bcd820::7ff790bcd820  a0 3b a9 8c                                      .;..
  7501 ms  0x7984 privk:0x7ff790bcd820::7ff790bcd820  e5 e5 e5 e5                                      ....
  7501 ms  0x7984 PK11_Encrypt()
  7501 ms  0x7984 symkey:0x7ff78d0b9000
  7507 ms  0x7984 SSL_AuthCertificateComplete()
  7507 ms  0x7984 fd:0x7ff78d0fe700
  7507 ms  0x7984 err:0x0
  7509 ms  0x7984 PK11_Encrypt()
  7509 ms  0x7984 symkey:0x7ff78d0b9000
  7510 ms  SECKEY_ECParamsToKeySize()
  7510 ms  0x7984 ret:0x100
  7510 ms  0x7984 SECKEY_CreateECPrivateKey()
  7510 ms  0x7984 cx:0x7ff78fbf1e28
  7511 ms     | 0x7984 EC_ValidatePublicKey()
  7519 ms     | 0x7984 ret:0x0
  7519 ms  0x7984 ret:0x7ff791a3e020::7ff791a3e020  30 d8 08 8d                                      0...
  7519 ms  0x7984 PK11_PubDeriveWithKDF()
  7519 ms  0x7984 seckey:0x7ff791a3e020
  7519 ms     | 0x7984 EC_ValidatePublicKey()
  7520 ms     | 0x7984 ret:0x0
  7522 ms  0x7984 ret:0x7ff789d86180
  7522 ms  0x7984 PK11_DeriveWithFlags()
  7522 ms  0x7984 basekey:0x7ff789d86180
  7522 ms     | 0x7984 PK11_DeriveWithTemplate()
  7522 ms  0x7984 ret:0x7ff78d082200
  7522 ms  0x7984 PK11_Derive()
  7522 ms  0x7984 basekey:0x7ff78d082200
  7522 ms     | 0x7984 PK11_DeriveWithTemplate()
  7522 ms  0x7984 ret:0x7ff78d0b9100
  7522 ms  0x7984 SECKEY_DestroyPrivateKey()
  7522 ms  0x7984 privk:0x7ff791a3e020::7ff791a3e020  30 d8 08 8d                                      0...
  7522 ms  0x7984 privk:0x7ff791a3e020::7ff791a3e020  e5 e5 e5 e5                                      ....
  7523 ms  0x7984 PK11_Encrypt()
  7523 ms  0x7984 symkey:0x7ff78d0e3980
  7524 ms  0x7984 SSL_AuthCertificateComplete()
  7524 ms  0x7984 fd:0x7ff78cb3f310
  7524 ms  0x7984 err:0x0
  7525 ms  SECKEY_ECParamsToKeySize()
  7525 ms  0x7984 ret:0x100
  7525 ms  0x7984 SECKEY_CreateECPrivateKey()
  7525 ms  0x7984 cx:0x7ff78fbf24a8
  7526 ms     | 0x7984 EC_ValidatePublicKey()
  7527 ms     | 0x7984 ret:0x0
  7527 ms  0x7984 ret:0x7ff791a40820::7ff791a40820  80 38 0d 8d                                      .8..
  7527 ms  0x7984 PK11_PubDeriveWithKDF()
  7527 ms  0x7984 seckey:0x7ff791a40820
  7527 ms     | 0x7984 EC_ValidatePublicKey()
  7529 ms     | 0x7984 ret:0x0
  7530 ms  0x7984 ret:0x7ff789d86180
  7530 ms  0x7984 PK11_DeriveWithFlags()
  7530 ms  0x7984 basekey:0x7ff789d86180
  7530 ms     | 0x7984 PK11_DeriveWithTemplate()
  7530 ms  0x7984 ret:0x7ff78d0e3480
  7530 ms  0x7984 PK11_Derive()
  7530 ms  0x7984 basekey:0x7ff78d0e3480
  7530 ms     | 0x7984 PK11_DeriveWithTemplate()
  7530 ms  0x7984 ret:0x7ff78d0e3a80
  7530 ms  0x7984 SECKEY_DestroyPrivateKey()
  7530 ms  0x7984 privk:0x7ff791a40820::7ff791a40820  80 38 0d 8d                                      .8..
  7530 ms  0x7984 privk:0x7ff791a40820::7ff791a40820  e5 e5 e5 e5                                      ....
  7531 ms  0x7984 PK11_Encrypt()
  7531 ms  0x7984 symkey:0x7ff78d0e3d00
  7541 ms  0x7984 PK11_Encrypt()
  7541 ms  0x7984 symkey:0x7ff78d0e3980
  7542 ms  0x7984 SSL_AuthCertificateComplete()
  7542 ms  0x7984 fd:0x7ff78d0fed90
  7542 ms  0x7984 err:0x0
  7546 ms  0x7984 SECKEY_DestroyPrivateKey()
  7546 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  90 22 22 87                                      ."".
  7546 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  e5 e5 e5 e5                                      ....
  7546 ms  0x7984 SECKEY_DestroyPrivateKey()
  7546 ms  0x7984 privk:0x7ff78d134820::7ff78d134820  40 57 5f 87                                      @W_.
  7546 ms  0x7984 privk:0x7ff78d134820::7ff78d134820  e5 e5 e5 e5                                      ....
  7547 ms  0x7984 PK11_Encrypt()
  7547 ms  0x7984 symkey:0x7ff78d0e3d00
  7550 ms  SECKEY_ECParamsToKeySize()
  7550 ms  0x7984 ret:0x100
  7550 ms  0x7984 SECKEY_CreateECPrivateKey()
  7550 ms  0x7984 cx:0x7ff78fbf2168
  7551 ms     | 0x7984 EC_ValidatePublicKey()
  7554 ms     | 0x7984 ret:0x0
  7554 ms  0x7984 ret:0x7ff78d136020::7ff78d136020  f0 0b 08 8d                                      ....
  7554 ms  0x7984 PK11_PubDeriveWithKDF()
  7554 ms  0x7984 seckey:0x7ff78d136020
  7554 ms     | 0x7984 EC_ValidatePublicKey()
  7556 ms     | 0x7984 ret:0x0
  7567 ms  0x7984 ret:0x7ff789d86180
  7567 ms  0x7984 PK11_DeriveWithFlags()
  7567 ms  0x7984 basekey:0x7ff789d86180
  7567 ms     | 0x7984 PK11_DeriveWithTemplate()
  7567 ms  0x7984 ret:0x7ff788394380
  7567 ms  0x7984 PK11_Derive()
  7567 ms  0x7984 basekey:0x7ff788394380
  7567 ms     | 0x7984 PK11_DeriveWithTemplate()
  7567 ms  0x7984 ret:0x7ff78d0f2000
  7567 ms  0x7984 SECKEY_DestroyPrivateKey()
  7567 ms  0x7984 privk:0x7ff78d136020::7ff78d136020  f0 0b 08 8d                                      ....
  7567 ms  0x7984 privk:0x7ff78d136020::7ff78d136020  e5 e5 e5 e5                                      ....
  7567 ms  0x7984 PK11_Encrypt()
  7567 ms  0x7984 symkey:0x7ff78d1c6e00
  7570 ms  SECKEY_ECParamsToKeySize()
  7570 ms  0x7984 ret:0x100
  7570 ms  0x7984 SECKEY_CreateECPrivateKey()
  7570 ms  0x7984 cx:0x7ff78fbf1ae8
  7570 ms     | 0x7984 EC_ValidatePublicKey()
  7574 ms     | 0x7984 ret:0x0
  7575 ms  0x7984 ret:0x7ff78d299020::7ff78d299020  30 d8 08 8d                                      0...
  7575 ms  0x7984 PK11_PubDeriveWithKDF()
  7575 ms  0x7984 seckey:0x7ff78d299020
  7575 ms     | 0x7984 EC_ValidatePublicKey()
  7576 ms     | 0x7984 ret:0x0
  7577 ms  0x7984 ret:0x7ff789d86180
  7578 ms  0x7984 PK11_DeriveWithFlags()
  7578 ms  0x7984 basekey:0x7ff789d86180
  7578 ms     | 0x7984 PK11_DeriveWithTemplate()
  7578 ms  0x7984 ret:0x7ff78cebf280
  7578 ms  0x7984 PK11_Derive()
  7578 ms  0x7984 basekey:0x7ff78cebf280
  7578 ms     | 0x7984 PK11_DeriveWithTemplate()
  7578 ms  0x7984 ret:0x7ff78d040800
  7578 ms  0x7984 SECKEY_DestroyPrivateKey()
  7578 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  30 d8 08 8d                                      0...
  7578 ms  0x7984 privk:0x7ff78d299020::7ff78d299020  e5 e5 e5 e5                                      ....
  7578 ms  0x7984 PK11_Encrypt()
  7578 ms  0x7984 symkey:0x7ff78d23a680
  7587 ms  SECKEY_ECParamsToKeySize()
  7587 ms  0x7984 ret:0x100
  7587 ms  0x7984 SECKEY_CreateECPrivateKey()
  7587 ms  0x7984 cx:0x7ff78fbf2648
  7588 ms     | 0x7984 EC_ValidatePublicKey()
  7589 ms     | 0x7984 ret:0x0
  7589 ms  0x7984 ret:0x7ff791a44820::7ff791a44820  e0 ac 10 8d                                      ....
  7590 ms  0x7984 PK11_PubDeriveWithKDF()
  7590 ms  0x7984 seckey:0x7ff791a44820
  7590 ms     | 0x7984 EC_ValidatePublicKey()
  7591 ms     | 0x7984 ret:0x0
  7594 ms  0x7984 ret:0x7ff789d86180
  7594 ms  0x7984 PK11_DeriveWithFlags()
  7594 ms  0x7984 basekey:0x7ff789d86180
  7594 ms     | 0x7984 PK11_DeriveWithTemplate()
  7595 ms  0x7984 ret:0x7ff78fa7d780
  7595 ms  0x7984 PK11_Derive()
  7595 ms  0x7984 basekey:0x7ff78fa7d780
  7595 ms     | 0x7984 PK11_DeriveWithTemplate()
  7595 ms  0x7984 ret:0x7ff78fa7d880
  7595 ms  0x7984 SECKEY_DestroyPrivateKey()
  7595 ms  0x7984 privk:0x7ff791a44820::7ff791a44820  e0 ac 10 8d                                      ....
  7595 ms  0x7984 privk:0x7ff791a44820::7ff791a44820  e5 e5 e5 e5                                      ....
  7595 ms  0x7984 PK11_Encrypt()
  7595 ms  0x7984 symkey:0x7ff78fae0e00
  7602 ms  0x7984 SSL_AuthCertificateComplete()
  7602 ms  0x7984 fd:0x7ff78d0fec10
  7602 ms  0x7984 err:0x0
  7602 ms  0x7984 SSL_AuthCertificateComplete()
  7602 ms  0x7984 fd:0x7ff78d114250
  7602 ms  0x7984 err:0x0
  7604 ms  0x7984 SECKEY_DestroyPrivateKey()
  7604 ms  0x7984 privk:0x7ff790be4820::7ff790be4820  00 41 b1 8c                                      .A..
  7604 ms  0x7984 privk:0x7ff790be4820::7ff790be4820  e5 e5 e5 e5                                      ....
  7604 ms  0x7984 SECKEY_DestroyPrivateKey()
  7604 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  80 3d a9 8c                                      .=..
  7604 ms  0x7984 privk:0x7ff790bdd820::7ff790bdd820  e5 e5 e5 e5                                      ....
  7608 ms  0x7984 PK11_Encrypt()
  7608 ms  0x7984 symkey:0x7ff78d1c6e00
  7609 ms  0x7984 SECKEY_DestroyPrivateKey()
  7609 ms  0x7984 privk:0x7ff79107d020::7ff79107d020  20 49 be 8c                                       I..
  7609 ms  0x7984 privk:0x7ff79107d020::7ff79107d020  e5 e5 e5 e5                                      ....
  7609 ms  0x7984 SECKEY_DestroyPrivateKey()
  7609 ms  0x7984 privk:0x7ff790ded020::7ff790ded020  00 41 be 8c                                      .A..
  7609 ms  0x7984 privk:0x7ff790ded020::7ff790ded020  e5 e5 e5 e5                                      ....
  7609 ms  0x7984 SECKEY_DestroyPrivateKey()
  7609 ms  0x7984 privk:0x7ff7919b2020::7ff7919b2020  d0 93 a2 87                                      ....
  7609 ms  0x7984 privk:0x7ff7919b2020::7ff7919b2020  e5 e5 e5 e5                                      ....
  7609 ms  0x7984 SECKEY_DestroyPrivateKey()
  7609 ms  0x7984 privk:0x7ff7914b3020::7ff7914b3020  20 3e b2 8c                                       >..
  7609 ms  0x7984 privk:0x7ff7914b3020::7ff7914b3020  e5 e5 e5 e5                                      ....
  7610 ms  0x7984 PK11_Encrypt()
  7610 ms  0x7984 symkey:0x7ff78d23a680
  7610 ms  0x7984 SSL_ImportFD()
  7610 ms  0x7984 ret:0x7ff78b932910
  7610 ms  0x7984 SSL_AuthCertificateHook()
  7610 ms  0x7984 fd:0x7ff78b932910
  7610 ms  0x7984 ret:0x0
  7611 ms  0x7984 PR_Connect()
  7611 ms  0x7984 fd:0x7ff78b932910
  7611 ms  0x7984 SSL_ImportFD()
  7612 ms  0x7984 ret:0x7ff78d1eeac0
  7612 ms  0x7984 SSL_AuthCertificateHook()
  7612 ms  0x7984 fd:0x7ff78d1eeac0
  7612 ms  0x7984 ret:0x0
  7612 ms  0x7984 PK11_Encrypt()
  7612 ms  0x7984 symkey:0x7ff789d6f100
  7613 ms  0x7984 PR_Connect()
  7613 ms  0x7984 fd:0x7ff78d1eeac0
  7613 ms  0x7984 SECKEY_DestroyPrivateKey()
  7613 ms  0x7984 privk:0x7ff7919b8820::7ff7919b8820  c0 ae d0 8c                                      ....
  7613 ms  0x7984 privk:0x7ff7919b8820::7ff7919b8820  e5 e5 e5 e5                                      ....
  7613 ms  0x7984 SECKEY_DestroyPrivateKey()
  7613 ms  0x7984 privk:0x7ff7919b6020::7ff7919b6020  40 a7 d0 8c                                      @...
  7613 ms  0x7984 privk:0x7ff7919b6020::7ff7919b6020  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  7621 ms  0x798c PR_Close()
  7621 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  7623 ms  0x7984 PK11_Encrypt()
  7623 ms  0x7984 symkey:0x7ff789d6f100
  7623 ms  0x7984 PK11_Encrypt()
  7623 ms  0x7984 symkey:0x7ff789d6f100
  7624 ms  0x7984 SSL_ImportFD()
  7624 ms  0x7984 ret:0x7ff78d19feb0
  7624 ms  0x7984 SSL_AuthCertificateHook()
  7624 ms  0x7984 fd:0x7ff78d19feb0
  7624 ms  0x7984 ret:0x0
  7625 ms  0x7984 PR_Connect()
  7625 ms  0x7984 fd:0x7ff78d19feb0
           /* TID 0x7a28 */
  7630 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7630 ms  0x7a28 ret:0x0
           /* TID 0x798c */
  7631 ms  0x798c PR_Close()
  7631 ms  0x798c fd:0x7ff78cb3f580
           /* TID 0x7984 */
  7631 ms  0x7984 SSL_AuthCertificateComplete()
  7631 ms  0x7984 fd:0x7ff78cb3f5b0
  7631 ms  0x7984 err:0x0
  7631 ms  0x7984 PK11_Encrypt()
  7631 ms  0x7984 symkey:0x7ff78fae0e00
           /* TID 0x798c */
  7640 ms  0x798c PR_Close()
  7640 ms  0x798c fd:0x7ff78cb3f580
           /* TID 0x7984 */
  7640 ms  0x7984 PK11_Encrypt()
  7640 ms  0x7984 symkey:0x7ff78d0b9000
  7650 ms  0x7984 SECKEY_DestroyPrivateKey()
  7650 ms  0x7984 privk:0x7ff791a29820::7ff791a29820  d0 13 df 8c                                      ....
  7650 ms  0x7984 privk:0x7ff791a29820::7ff791a29820  e5 e5 e5 e5                                      ....
  7650 ms  0x7984 SECKEY_DestroyPrivateKey()
  7650 ms  0x7984 privk:0x7ff7919bf820::7ff7919bf820  f0 11 df 8c                                      ....
  7650 ms  0x7984 privk:0x7ff7919bf820::7ff7919bf820  e5 e5 e5 e5                                      ....
  7654 ms  0x7984 SECKEY_CreateECPrivateKey()
  7654 ms  0x7984 cx:0x7ff794e59168
  7655 ms     | 0x7984 EC_ValidatePublicKey()
  7655 ms     | 0x7984 ret:0x0
  7655 ms  0x7984 ret:0x7ff790bdf820::7ff790bdf820  80 3d a9 8c                                      .=..
  7655 ms  0x7984 SECKEY_CreateECPrivateKey()
  7655 ms  0x7984 cx:0x7ff794e59168
  7655 ms     | 0x7984 EC_ValidatePublicKey()
  7657 ms     | 0x7984 ret:0x0
  7657 ms  0x7984 ret:0x7ff790be4820::7ff790be4820  f0 d6 b0 8c                                      ....
           /* TID 0x798c */
  7662 ms  0x798c PR_Close()
  7662 ms  0x798c fd:0x7ff78cbeb730
           /* TID 0x7984 */
  7662 ms  0x7984 PK11_Encrypt()
  7662 ms  0x7984 symkey:0x7ff789d6f100
  7663 ms  0x7984 SECKEY_DestroyPrivateKey()
  7663 ms  0x7984 privk:0x7ff791a38020::7ff791a38020  b0 90 ed 8c                                      ....
  7663 ms  0x7984 privk:0x7ff791a38020::7ff791a38020  e5 e5 e5 e5                                      ....
  7663 ms  0x7984 SECKEY_DestroyPrivateKey()
  7663 ms  0x7984 privk:0x7ff791a2e820::7ff791a2e820  a0 16 df 8c                                      ....
  7663 ms  0x7984 privk:0x7ff791a2e820::7ff791a2e820  e5 e5 e5 e5                                      ....
  7663 ms  0x7984 SECKEY_CreateECPrivateKey()
  7663 ms  0x7984 cx:0x7ff794e594a8
  7663 ms     | 0x7984 EC_ValidatePublicKey()
  7663 ms     | 0x7984 ret:0x0
  7663 ms  0x7984 ret:0x7ff790dee020::7ff790dee020  00 41 b1 8c                                      .A..
  7664 ms  0x7984 SECKEY_CreateECPrivateKey()
  7664 ms  0x7984 cx:0x7ff794e594a8
  7664 ms     | 0x7984 EC_ValidatePublicKey()
  7666 ms     | 0x7984 ret:0x0
  7666 ms  0x7984 ret:0x7ff79107e020::7ff79107e020  90 e2 bd 8c                                      ....
  7672 ms  0x7984 SECKEY_CreateECPrivateKey()
  7672 ms  0x7984 cx:0x7ff794e59cc8
  7672 ms     | 0x7984 EC_ValidatePublicKey()
  7672 ms     | 0x7984 ret:0x0
  7672 ms  0x7984 ret:0x7ff7919b2020::7ff7919b2020  f0 41 be 8c                                      .A..
  7672 ms  0x7984 SECKEY_CreateECPrivateKey()
  7672 ms  0x7984 cx:0x7ff794e59cc8
  7673 ms     | 0x7984 EC_ValidatePublicKey()
  7675 ms     | 0x7984 ret:0x0
  7675 ms  0x7984 ret:0x7ff7919b6820::7ff7919b6820  c0 a4 d0 8c                                      ....
  7675 ms  0x7984 SECKEY_DestroyPrivateKey()
  7675 ms  0x7984 privk:0x7ff791a3d820::7ff791a3d820  f0 7b 02 8d                                      .{..
  7675 ms  0x7984 privk:0x7ff791a3d820::7ff791a3d820  e5 e5 e5 e5                                      ....
  7675 ms  0x7984 SECKEY_DestroyPrivateKey()
  7675 ms  0x7984 privk:0x7ff791a3b820::7ff791a3b820  60 9a ed 8c                                      `...
  7675 ms  0x7984 privk:0x7ff791a3b820::7ff791a3b820  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  7689 ms  0x798c PR_Close()
  7689 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  7689 ms  0x7984 PK11_Encrypt()
  7689 ms  0x7984 symkey:0x7ff78d0b8c00
           /* TID 0x798c */
  7690 ms  0x798c PR_Close()
  7690 ms  0x798c fd:0x7ff789d7bdc0
  7695 ms  0x798c PR_Close()
  7695 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  7695 ms  0x7984 PK11_Encrypt()
  7695 ms  0x7984 symkey:0x7ff78d0e3d00
           /* TID 0x798c */
  7710 ms  0x798c PR_Close()
  7710 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  7711 ms  0x7984 PK11_Encrypt()
  7711 ms  0x7984 symkey:0x7ff78d0b9000
  7713 ms  0x7984 PK11_Derive()
  7713 ms  0x7984 basekey:0x7ff789d86180
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff78cab4f80
  7713 ms  0x7984 PK11_PubDeriveWithKDF()
  7713 ms  0x7984 seckey:0x7ff790bdf820
  7713 ms     | 0x7984 EC_ValidatePublicKey()
  7713 ms     | 0x7984 ret:0x0
  7713 ms  0x7984 ret:0x7ff789d86180
  7713 ms  SECKEY_ECParamsToKeySize()
  7713 ms  0x7984 ret:0xff
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff78cab4f80
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff78fb3ab00
  7713 ms  0x7984 PK11_Derive()
  7713 ms  0x7984 basekey:0x7ff789d86180
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff790a12200
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff790a12200
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff78cab4f80
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff790a12200
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff789d86180
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff790a12200
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff78fb3ab00
  7713 ms  0x7984 PK11_Derive()
  7713 ms  0x7984 basekey:0x7ff790a12700
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff790a12a00
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff789d86180
  7713 ms     | 0x7984 PK11_DeriveWithTemplate()
  7713 ms  0x7984 ret:0x7ff790a12200
  7713 ms  0x7984 PK11_DeriveWithFlags()
  7713 ms  0x7984 basekey:0x7ff789d86180
  7714 ms     | 0x7984 PK11_DeriveWithTemplate()
  7714 ms  0x7984 ret:0x7ff78fb3ab00
  7715 ms  0x7984 PK11_DeriveWithFlags()
  7715 ms  0x7984 basekey:0x7ff789d86180
  7715 ms     | 0x7984 PK11_DeriveWithTemplate()
  7715 ms  0x7984 ret:0x7ff78fb3ab00
  7719 ms  0x7984 PK11_Derive()
  7719 ms  0x7984 basekey:0x7ff78fb3ab00
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a12700
  7720 ms  0x7984 PK11_PubDeriveWithKDF()
  7720 ms  0x7984 seckey:0x7ff790dee020
  7720 ms     | 0x7984 EC_ValidatePublicKey()
  7720 ms     | 0x7984 ret:0x0
  7720 ms  0x7984 ret:0x7ff78fb3ab00
  7720 ms  SECKEY_ECParamsToKeySize()
  7720 ms  0x7984 ret:0xff
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff790a12700
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a28600
  7720 ms  0x7984 PK11_Derive()
  7720 ms  0x7984 basekey:0x7ff78fb3ab00
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a28700
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff790a28700
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a12700
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff790a28700
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff78fb3ab00
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff790a28700
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a28600
  7720 ms  0x7984 PK11_Derive()
  7720 ms  0x7984 basekey:0x7ff790a28780
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a28800
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff78fb3ab00
  7720 ms     | 0x7984 PK11_DeriveWithTemplate()
  7720 ms  0x7984 ret:0x7ff790a28700
  7720 ms  0x7984 PK11_DeriveWithFlags()
  7720 ms  0x7984 basekey:0x7ff78fb3ab00
  7721 ms     | 0x7984 PK11_DeriveWithTemplate()
  7721 ms  0x7984 ret:0x7ff790a28600
  7723 ms  SECKEY_ECParamsToKeySize()
  7723 ms  0x7984 ret:0x100
  7723 ms  SECKEY_ECParamsToBasePointOrderLen()
  7723 ms  0x7984 ret:0x100
  7723 ms  SECKEY_ECParamsToBasePointOrderLen()
  7723 ms  0x7984 ret:0x100
  7723 ms  0x7984 EC_ValidatePublicKey()
  7724 ms  0x7984 ret:0x0
  7738 ms  0x7984 PK11_DeriveWithFlags()
  7738 ms  0x7984 basekey:0x7ff78fb3ab00
  7739 ms     | 0x7984 PK11_DeriveWithTemplate()
  7739 ms  0x7984 ret:0x7ff790a28600
  7739 ms  0x7984 SSL_AuthCertificateComplete()
  7739 ms  0x7984 fd:0x7ff78d1eeac0
  7739 ms  0x7984 err:0x0
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28800
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a28600
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28800
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a28780
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28800
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff7885ed000
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a12700
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff78cab3a00
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a12700
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff78fa3d800
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28780
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff78fa3d800
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28780
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a12b00
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a12700
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a28700
  7739 ms     | 0x7984 PK11_Encrypt()
  7739 ms     | 0x7984 symkey:0x7ff78cab3a00
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28600
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a28700
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28600
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff790a12b00
  7739 ms     | 0x7984 PK11_DeriveWithFlags()
  7739 ms     | 0x7984 basekey:0x7ff790a28800
  7739 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7739 ms     | 0x7984 ret:0x7ff78cab3a00
  7739 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7739 ms     | 0x7984 privk:0x7ff79107e020::7ff79107e020  90 e2 bd 8c                                      ....
  7739 ms     | 0x7984 privk:0x7ff79107e020::7ff79107e020  e5 e5 e5 e5                                      ....
  7740 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7740 ms     | 0x7984 privk:0x7ff790dee020::7ff790dee020  00 41 b1 8c                                      .A..
  7740 ms     | 0x7984 privk:0x7ff790dee020::7ff790dee020  e5 e5 e5 e5                                      ....
           /* TID 0x798c */
  7755 ms  0x798c PR_Close()
  7755 ms  0x798c fd:0x7ff78cbf2100
  7756 ms  0x798c PR_Close()
  7756 ms  0x798c fd:0x7ff78cbdfbe0
  7757 ms  0x798c PR_Close()
  7757 ms  0x798c fd:0x7ff78cbdfbe0
           /* TID 0x7984 */
  7758 ms  0x7984 PK11_Encrypt()
  7758 ms  0x7984 symkey:0x7ff790a28700
  7758 ms  0x7984 PK11_Derive()
  7758 ms  0x7984 basekey:0x7ff78fb3ab00
  7758 ms     | 0x7984 PK11_DeriveWithTemplate()
  7758 ms  0x7984 ret:0x7ff790a12700
  7758 ms  0x7984 PK11_PubDeriveWithKDF()
  7758 ms  0x7984 seckey:0x7ff7919b2020
  7758 ms     | 0x7984 EC_ValidatePublicKey()
  7758 ms     | 0x7984 ret:0x0
  7759 ms  0x7984 ret:0x7ff78fb3ab00
  7759 ms  SECKEY_ECParamsToKeySize()
  7759 ms  0x7984 ret:0xff
  7759 ms  0x7984 PK11_DeriveWithFlags()
  7759 ms  0x7984 basekey:0x7ff790a12700
  7759 ms     | 0x7984 PK11_DeriveWithTemplate()
  7759 ms  0x7984 ret:0x7ff790a28800
  7759 ms  0x7984 PK11_Derive()
  7759 ms  0x7984 basekey:0x7ff78fb3ab00
  7759 ms     | 0x7984 PK11_DeriveWithTemplate()
  7759 ms  0x7984 ret:0x7ff790a12b00
  7759 ms  0x7984 PK11_DeriveWithFlags()
  7759 ms  0x7984 basekey:0x7ff790a12b00
  7759 ms     | 0x7984 PK11_DeriveWithTemplate()
  7759 ms  0x7984 ret:0x7ff790a12700
  7759 ms  0x7984 PK11_DeriveWithFlags()
  7759 ms  0x7984 basekey:0x7ff790a12b00
  7759 ms     | 0x7984 PK11_DeriveWithTemplate()
  7759 ms  0x7984 ret:0x7ff78fb3ab00
  7759 ms  0x7984 PK11_DeriveWithFlags()
  7759 ms  0x7984 basekey:0x7ff790a12b00
  7759 ms     | 0x7984 PK11_DeriveWithTemplate()
  7759 ms  0x7984 ret:0x7ff790a28800
  7759 ms  0x7984 PK11_Derive()
  7759 ms  0x7984 basekey:0x7ff790a28900
  7760 ms     | 0x7984 PK11_DeriveWithTemplate()
  7760 ms  0x7984 ret:0x7ff790a28980
  7760 ms  0x7984 PK11_DeriveWithFlags()
  7760 ms  0x7984 basekey:0x7ff78fb3ab00
  7760 ms     | 0x7984 PK11_DeriveWithTemplate()
  7760 ms  0x7984 ret:0x7ff790a12b00
  7760 ms  0x7984 PK11_DeriveWithFlags()
  7760 ms  0x7984 basekey:0x7ff78fb3ab00
  7760 ms     | 0x7984 PK11_DeriveWithTemplate()
  7760 ms  0x7984 ret:0x7ff790a28800
  7767 ms  SECKEY_ECParamsToKeySize()
  7768 ms  0x7984 ret:0x100
  7768 ms  SECKEY_ECParamsToBasePointOrderLen()
  7768 ms  0x7984 ret:0x100
  7768 ms  SECKEY_ECParamsToBasePointOrderLen()
  7768 ms  0x7984 ret:0x100
  7768 ms  0x7984 EC_ValidatePublicKey()
  7770 ms  0x7984 ret:0x0
  7783 ms  0x7984 PK11_DeriveWithFlags()
  7783 ms  0x7984 basekey:0x7ff78fb3ab00
  7783 ms     | 0x7984 PK11_DeriveWithTemplate()
  7783 ms  0x7984 ret:0x7ff790a28800
  7783 ms  0x7984 PK11_Encrypt()
  7783 ms  0x7984 symkey:0x7ff78d1c6e00
  7783 ms  0x7984 PK11_Encrypt()
  7783 ms  0x7984 symkey:0x7ff78d0e3980
           /* TID 0x798c */
  7784 ms  0x798c PR_Close()
  7784 ms  0x798c fd:0x7ff78ceca3a0
           /* TID 0x7984 */
  7792 ms  0x7984 PK11_Encrypt()
  7792 ms  0x7984 symkey:0x7ff789d6f100
           /* TID 0x798c */
  7793 ms  0x798c PR_Close()
  7793 ms  0x798c fd:0x7ff78ceca3a0
  7794 ms  0x798c PR_Close()
  7794 ms  0x798c fd:0x7ff78ceca3a0
  7794 ms  0x798c PR_Close()
  7794 ms  0x798c fd:0x7ff78ceca3a0
  7795 ms  0x798c PR_Close()
  7795 ms  0x798c fd:0x7ff78ceca3a0
           /* TID 0x7984 */
  7795 ms  0x7984 PK11_DeriveWithFlags()
  7795 ms  0x7984 basekey:0x7ff78cab3a00
  7795 ms     | 0x7984 PK11_DeriveWithTemplate()
  7795 ms  0x7984 ret:0x7ff790a28800
  7795 ms  0x7984 PK11_DeriveWithFlags()
  7795 ms  0x7984 basekey:0x7ff78cab3a00
  7795 ms     | 0x7984 PK11_DeriveWithTemplate()
  7795 ms  0x7984 ret:0x7ff790a28800
  7795 ms  0x7984 PR_Close()
  7795 ms  0x7984 fd:0x7ff78d1eeac0
  7795 ms     | 0x7984 PK11_Encrypt()
  7795 ms     | 0x7984 symkey:0x7ff790a28700
  7796 ms  0x7984 PR_Connect()
  7796 ms  0x7984 fd:0x7ff78cbeb730
  7837 ms  0x7984 PK11_Encrypt()
  7837 ms  0x7984 symkey:0x7ff789d6f100
           /* TID 0x798c */
  7850 ms  0x798c PR_Close()
  7850 ms  0x798c fd:0x7ff78d1ee820
  7852 ms  0x798c PR_Close()
  7852 ms  0x798c fd:0x7ff78d0e5220
  7859 ms  0x798c PR_Close()
  7859 ms  0x798c fd:0x7ff78d0e51f0
           /* TID 0x7a1e */
  7859 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7859 ms  0x7a1e ret:0x0
           /* TID 0x7984 */
  7859 ms  0x7984 SSL_AuthCertificateComplete()
  7859 ms  0x7984 fd:0x7ff78b932910
  7859 ms  0x7984 err:0x0
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff790a12a00
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff7885ed000
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff790a12a00
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff790a28780
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff790a12a00
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff790a28600
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff78cab4f80
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff78cab3a00
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff78cab4f80
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff78fa3d800
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff790a28780
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff78fa3d800
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff790a28780
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff790a28700
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff78cab4f80
  7859 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7859 ms     | 0x7984 ret:0x7ff790a12200
  7859 ms     | 0x7984 PK11_Encrypt()
  7859 ms     | 0x7984 symkey:0x7ff78cab3a00
  7859 ms     | 0x7984 PK11_DeriveWithFlags()
  7859 ms     | 0x7984 basekey:0x7ff7885ed000
  7860 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7860 ms     | 0x7984 ret:0x7ff790a12200
  7860 ms     | 0x7984 PK11_DeriveWithFlags()
  7860 ms     | 0x7984 basekey:0x7ff7885ed000
  7860 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7860 ms     | 0x7984 ret:0x7ff790a28700
  7860 ms     | 0x7984 PK11_DeriveWithFlags()
  7860 ms     | 0x7984 basekey:0x7ff790a12a00
  7860 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7860 ms     | 0x7984 ret:0x7ff78cab3a00
  7860 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7860 ms     | 0x7984 privk:0x7ff790be4820::7ff790be4820  f0 d6 b0 8c                                      ....
  7860 ms     | 0x7984 privk:0x7ff790be4820::7ff790be4820  e5 e5 e5 e5                                      ....
  7860 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7860 ms     | 0x7984 privk:0x7ff790bdf820::7ff790bdf820  80 3d a9 8c                                      .=..
  7860 ms     | 0x7984 privk:0x7ff790bdf820::7ff790bdf820  e5 e5 e5 e5                                      ....
  7860 ms  0x7984 PK11_Encrypt()
  7860 ms  0x7984 symkey:0x7ff790a12200
  7860 ms  0x7984 PK11_Encrypt()
  7860 ms  0x7984 symkey:0x7ff790a12200
           /* TID 0x798c */
  7865 ms  0x798c PR_Close()
  7865 ms  0x798c fd:0x7ff78d0e59a0
           /* TID 0x7984 */
  7865 ms  0x7984 PK11_Encrypt()
  7865 ms  0x7984 symkey:0x7ff775e1e900
  7866 ms  0x7984 PK11_Encrypt()
  7866 ms  0x7984 symkey:0x7ff776182180
  7866 ms  0x7984 SSL_ImportFD()
  7866 ms  0x7984 ret:0x7ff78d210190
  7866 ms  0x7984 SSL_AuthCertificateHook()
  7866 ms  0x7984 fd:0x7ff78d210190
  7866 ms  0x7984 ret:0x0
  7866 ms  0x7984 PR_Connect()
  7866 ms  0x7984 fd:0x7ff78d210190
  7866 ms  0x7984 SSL_ImportFD()
  7866 ms  0x7984 ret:0x7ff78d1eec70
  7866 ms  0x7984 SSL_AuthCertificateHook()
  7866 ms  0x7984 fd:0x7ff78d1eec70
  7866 ms  0x7984 ret:0x0
  7866 ms  0x7984 PR_Connect()
  7866 ms  0x7984 fd:0x7ff78d1eec70
  7897 ms  0x7984 PK11_DeriveWithFlags()
  7897 ms  0x7984 basekey:0x7ff78cab3a00
  7898 ms     | 0x7984 PK11_DeriveWithTemplate()
  7898 ms  0x7984 ret:0x7ff789d86180
  7898 ms  0x7984 PK11_DeriveWithFlags()
  7898 ms  0x7984 basekey:0x7ff78cab3a00
  7898 ms     | 0x7984 PK11_DeriveWithTemplate()
  7898 ms  0x7984 ret:0x7ff789d86180
  7898 ms  0x7984 PK11_Encrypt()
  7898 ms  0x7984 symkey:0x7ff790a12200
  7927 ms  0x7984 PK11_Encrypt()
  7927 ms  0x7984 symkey:0x7ff78724ad80
  7934 ms  0x7984 SECKEY_CreateECPrivateKey()
  7934 ms  0x7984 cx:0x7ff776188728
  7935 ms     | 0x7984 EC_ValidatePublicKey()
  7935 ms     | 0x7984 ret:0x0
  7935 ms  0x7984 ret:0x7ff790be2020::7ff790be2020  c0 ae d0 8c                                      ....
  7935 ms  0x7984 SECKEY_CreateECPrivateKey()
  7935 ms  0x7984 cx:0x7ff776188728
  7936 ms     | 0x7984 EC_ValidatePublicKey()
  7937 ms     | 0x7984 ret:0x0
  7937 ms  0x7984 ret:0x7ff7919b9820::7ff7919b9820  00 11 df 8c                                      ....
  7940 ms  0x7984 SSL_ImportFD()
  7940 ms  0x7984 ret:0x7ff78d235c70
  7940 ms  0x7984 SSL_AuthCertificateHook()
  7940 ms  0x7984 fd:0x7ff78d235c70
  7940 ms  0x7984 ret:0x0
  7941 ms  0x7984 PK11_Encrypt()
  7941 ms  0x7984 symkey:0x7ff789d6f100
  7942 ms  0x7984 PR_Connect()
  7942 ms  0x7984 fd:0x7ff78d235c70
  7957 ms  0x7984 PK11_Encrypt()
  7957 ms  0x7984 symkey:0x7ff790a12200
  7960 ms  0x7984 SECKEY_CreateECPrivateKey()
  7960 ms  0x7984 cx:0x7ff776188248
  7960 ms     | 0x7984 EC_ValidatePublicKey()
  7960 ms     | 0x7984 ret:0x0
  7960 ms  0x7984 ret:0x7ff791a2f020::7ff791a2f020  40 12 df 8c                                      @...
  7960 ms  0x7984 SECKEY_CreateECPrivateKey()
  7960 ms  0x7984 cx:0x7ff776188248
  7961 ms     | 0x7984 EC_ValidatePublicKey()
  7962 ms     | 0x7984 ret:0x0
  7963 ms  0x7984 ret:0x7ff791a38820::7ff791a38820  c0 14 df 8c                                      ....
           /* TID 0x7a1f */
  7977 ms  0x7a1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7977 ms  0x7a1f ret:0x0
           /* TID 0x798c */
  7977 ms  0x798c PR_Close()
  7977 ms  0x798c fd:0x7ff78d0fee80
           /* TID 0x7984 */
  7977 ms  0x7984 SSL_AuthCertificateComplete()
  7977 ms  0x7984 fd:0x7ff78d19feb0
  7977 ms  0x7984 err:0x0
  7977 ms     | 0x7984 PK11_DeriveWithFlags()
  7977 ms     | 0x7984 basekey:0x7ff790a28980
  7977 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7977 ms     | 0x7984 ret:0x7ff789d86180
  7977 ms     | 0x7984 PK11_DeriveWithFlags()
  7977 ms     | 0x7984 basekey:0x7ff790a28980
  7977 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff78cab4f80
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff790a28980
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a12a00
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff790a12700
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28700
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff790a12700
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28800
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff78cab4f80
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28800
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff78cab4f80
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28900
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff790a12700
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a12b00
  7978 ms     | 0x7984 PK11_Encrypt()
  7978 ms     | 0x7984 symkey:0x7ff790a28700
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff789d86180
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a12b00
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff789d86180
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28900
  7978 ms     | 0x7984 PK11_DeriveWithFlags()
  7978 ms     | 0x7984 basekey:0x7ff790a28980
  7978 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  7978 ms     | 0x7984 ret:0x7ff790a28700
  7978 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7978 ms     | 0x7984 privk:0x7ff7919b6820::7ff7919b6820  c0 a4 d0 8c                                      ....
  7978 ms     | 0x7984 privk:0x7ff7919b6820::7ff7919b6820  e5 e5 e5 e5                                      ....
  7978 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  7978 ms     | 0x7984 privk:0x7ff7919b2020::7ff7919b2020  f0 41 be 8c                                      .A..
  7978 ms     | 0x7984 privk:0x7ff7919b2020::7ff7919b2020  e5 e5 e5 e5                                      ....
  7979 ms  0x7984 PK11_Encrypt()
  7979 ms  0x7984 symkey:0x7ff790a12b00
  7980 ms  0x7984 PK11_Encrypt()
  7980 ms  0x7984 symkey:0x7ff790a12b00
  7980 ms  0x7984 SECKEY_CreateECPrivateKey()
  7980 ms  0x7984 cx:0x7ff7761880a8
  7981 ms     | 0x7984 EC_ValidatePublicKey()
  7981 ms     | 0x7984 ret:0x0
  7981 ms  0x7984 ret:0x7ff7919b6020::7ff7919b6020  c0 de b0 8c                                      ....
  7981 ms  0x7984 SECKEY_CreateECPrivateKey()
  7981 ms  0x7984 cx:0x7ff7761880a8
  7981 ms     | 0x7984 EC_ValidatePublicKey()
  7983 ms     | 0x7984 ret:0x0
  7983 ms  0x7984 ret:0x7ff791a2d820::7ff791a2d820  50 41 be 8c                                      PA..
           /* TID 0x798c */
  8005 ms  0x798c PR_Close()
  8005 ms  0x798c fd:0x7ff789d7bdc0
  8007 ms  0x798c PR_Close()
  8007 ms  0x798c fd:0x7ff789d7bdc0
           /* TID 0x7984 */
  8013 ms  SECKEY_ECParamsToKeySize()
  8013 ms  0x7984 ret:0x100
  8013 ms  SECKEY_ECParamsToBasePointOrderLen()
  8013 ms  0x7984 ret:0x100
  8013 ms  SECKEY_ECParamsToBasePointOrderLen()
  8013 ms  0x7984 ret:0x100
  8013 ms  0x7984 EC_ValidatePublicKey()
  8015 ms  0x7984 ret:0x0
           /* TID 0x7a28 */
  8016 ms  SECKEY_ECParamsToBasePointOrderLen()
  8016 ms  0x7a28 ret:0x180
  8016 ms  SECKEY_ECParamsToBasePointOrderLen()
  8016 ms  0x7a28 ret:0x180
  8016 ms  0x7a28 EC_ValidatePublicKey()
  8018 ms  0x7a28 ret:0x0
           /* TID 0x7984 */
  8023 ms  SECKEY_ECParamsToKeySize()
  8023 ms  0x7984 ret:0x100
  8023 ms  0x7984 SECKEY_CreateECPrivateKey()
  8023 ms  0x7984 cx:0x7ff776188728
  8023 ms     | 0x7984 EC_ValidatePublicKey()
  8025 ms     | 0x7984 ret:0x0
  8025 ms  0x7984 ret:0x7ff791d96020::7ff791d96020  80 78 02 8d                                      .x..
  8025 ms  0x7984 PK11_PubDeriveWithKDF()
  8025 ms  0x7984 seckey:0x7ff791d96020
  8025 ms     | 0x7984 EC_ValidatePublicKey()
  8026 ms     | 0x7984 ret:0x0
  8028 ms  0x7984 ret:0x7ff78fb3ab00
  8028 ms  0x7984 PK11_DeriveWithFlags()
  8028 ms  0x7984 basekey:0x7ff78fb3ab00
  8028 ms     | 0x7984 PK11_DeriveWithTemplate()
  8028 ms  0x7984 ret:0x7ff790a12700
  8028 ms  0x7984 PK11_Derive()
  8028 ms  0x7984 basekey:0x7ff790a12700
  8028 ms     | 0x7984 PK11_DeriveWithTemplate()
  8028 ms  0x7984 ret:0x7ff790a28980
  8028 ms  0x7984 SECKEY_DestroyPrivateKey()
  8028 ms  0x7984 privk:0x7ff791d96020::7ff791d96020  80 78 02 8d                                      .x..
  8028 ms  0x7984 privk:0x7ff791d96020::7ff791d96020  e5 e5 e5 e5                                      ....
  8028 ms  0x7984 PK11_Encrypt()
  8028 ms  0x7984 symkey:0x7ff789dbaf80
           /* TID 0x7a28 */
  8029 ms  SECKEY_ECParamsToBasePointOrderLen()
  8029 ms  0x7a28 ret:0x100
  8029 ms  SECKEY_ECParamsToBasePointOrderLen()
  8029 ms  0x7a28 ret:0x100
  8029 ms  0x7a28 EC_ValidatePublicKey()
  8031 ms  0x7a28 ret:0x0
  8038 ms  0x7a28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8038 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8038 ms     | 0x7a28 ret:0x100
  8038 ms     | SECKEY_ECParamsToBasePointOrderLen()
  8038 ms     | 0x7a28 ret:0x100
  8038 ms     | 0x7a28 EC_ValidatePublicKey()
  8039 ms     | 0x7a28 ret:0x0
  8041 ms  0x7a28 ret:0x0
           /* TID 0x7984 */
  8046 ms  0x7984 PK11_Encrypt()
  8046 ms  0x7984 symkey:0x7ff789d6f100
  8047 ms  0x7984 PK11_DeriveWithFlags()
  8047 ms  0x7984 basekey:0x7ff790a28700
           /* TID 0x798c */
  8051 ms  0x798c PR_Close()
  8051 ms  0x798c fd:0x7ff78d242880
           /* TID 0x7984 */
  8051 ms     | 0x7984 PK11_DeriveWithTemplate()
  8051 ms  0x7984 ret:0x7ff78fb3ab00
  8051 ms  0x7984 PK11_DeriveWithFlags()
  8051 ms  0x7984 basekey:0x7ff790a28700
  8051 ms     | 0x7984 PK11_DeriveWithTemplate()
  8051 ms  0x7984 ret:0x7ff78fb3ab00
  8051 ms  0x7984 PK11_Encrypt()
  8051 ms  0x7984 symkey:0x7ff790a12b00
  8051 ms  0x7984 PK11_Derive()
  8051 ms  0x7984 basekey:0x7ff78fb3ab00
  8051 ms     | 0x7984 PK11_DeriveWithTemplate()
  8051 ms  0x7984 ret:0x7ff790a28900
  8051 ms  0x7984 PK11_PubDeriveWithKDF()
  8051 ms  0x7984 seckey:0x7ff7919b6020
  8051 ms     | 0x7984 EC_ValidatePublicKey()
  8051 ms     | 0x7984 ret:0x0
  8052 ms  0x7984 ret:0x7ff78fb3ab00
  8052 ms  SECKEY_ECParamsToKeySize()
  8052 ms  0x7984 ret:0xff
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff790a28900
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff776199900
  8052 ms  0x7984 PK11_Derive()
  8052 ms  0x7984 basekey:0x7ff78fb3ab00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff78cab3c00
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff78cab3c00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff790a28900
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff78cab3c00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff78fb3ab00
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff78cab3c00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff776199900
  8052 ms  0x7984 PK11_Derive()
  8052 ms  0x7984 basekey:0x7ff78cab4100
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff78cb5a380
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff78fb3ab00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff78cab3c00
  8052 ms  0x7984 PK11_DeriveWithFlags()
  8052 ms  0x7984 basekey:0x7ff78fb3ab00
  8052 ms     | 0x7984 PK11_DeriveWithTemplate()
  8052 ms  0x7984 ret:0x7ff776199900
  8053 ms  SECKEY_ECParamsToKeySize()
  8053 ms  0x7984 ret:0x100
  8054 ms  SECKEY_ECParamsToBasePointOrderLen()
  8054 ms  0x7984 ret:0x100
  8054 ms  SECKEY_ECParamsToBasePointOrderLen()
  8054 ms  0x7984 ret:0x100
  8054 ms  0x7984 EC_ValidatePublicKey()
  8055 ms  0x7984 ret:0x0
  8060 ms  0x7984 PK11_DeriveWithFlags()
  8060 ms  0x7984 basekey:0x7ff78fb3ab00
  8060 ms     | 0x7984 PK11_DeriveWithTemplate()
  8060 ms  0x7984 ret:0x7ff776199900
  8060 ms  0x7984 SSL_AuthCertificateComplete()
  8060 ms  0x7984 fd:0x7ff78d235c70
  8060 ms  0x7984 err:0x0
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff78cb5a380
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff776199900
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff78cb5a380
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78cab4100
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff78cb5a380
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff789d6f980
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff790a28900
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78b9f4100
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff790a28900
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78cbe2400
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff78cab4100
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78cbe2400
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff78cab4100
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78cbe2780
  8060 ms     | 0x7984 PK11_DeriveWithFlags()
  8060 ms     | 0x7984 basekey:0x7ff790a28900
  8060 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8060 ms     | 0x7984 ret:0x7ff78cab3c00
  8060 ms     | 0x7984 PK11_Encrypt()
  8060 ms     | 0x7984 symkey:0x7ff78b9f4100
  8069 ms     | 0x7984 PK11_DeriveWithFlags()
  8069 ms     | 0x7984 basekey:0x7ff776199900
  8069 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8069 ms     | 0x7984 ret:0x7ff78cab3c00
  8069 ms     | 0x7984 PK11_DeriveWithFlags()
  8069 ms     | 0x7984 basekey:0x7ff776199900
  8069 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8069 ms     | 0x7984 ret:0x7ff78cbe2780
  8069 ms     | 0x7984 PK11_DeriveWithFlags()
  8069 ms     | 0x7984 basekey:0x7ff78cb5a380
  8069 ms     |    | 0x7984 PK11_DeriveWithTemplate()
  8069 ms     | 0x7984 ret:0x7ff78b9f4100
  8069 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  8069 ms     | 0x7984 privk:0x7ff791a2d820::7ff791a2d820  50 41 be 8c                                      PA..
  8069 ms     | 0x7984 privk:0x7ff791a2d820::7ff791a2d820  e5 e5 e5 e5                                      ....
  8069 ms     | 0x7984 SECKEY_DestroyPrivateKey()
  8069 ms     | 0x7984 privk:0x7ff7919b6020::7ff7919b6020  c0 de b0 8c                                      ....
  8069 ms     | 0x7984 privk:0x7ff7919b6020::7ff7919b6020  e5 e5 e5 e5                                      ....
  9075 ms  0x7984 PK11_DeriveWithFlags()
  9075 ms  0x7984 basekey:0x7ff78fb3ab00
  9076 ms     | 0x7984 PK11_DeriveWithTemplate()
  9076 ms  0x7984 ret:0x7ff790a28900
  9076 ms  0x7984 PK11_Derive()
  9076 ms  0x7984 basekey:0x7ff790a28900
  9076 ms     | 0x7984 PK11_DeriveWithTemplate()
  9077 ms  0x7984 ret:0x7ff78cb5a380
  9077 ms  0x7984 PK11_Encrypt()
  9077 ms  0x7984 symkey:0x7ff78cab3c00
  9078 ms  0x7984 SSL_AuthCertificateComplete()
  9078 ms  0x7984 fd:0x7ff78d1eec70
  9078 ms  0x7984 err:0x0
  9083 ms  0x7984 PK11_Encrypt()
  9083 ms  0x7984 symkey:0x7ff790a12b00
  9086 ms  0x7984 PK11_Encrypt()
  9086 ms  0x7984 symkey:0x7ff789d6f100
  9087 ms  0x7984 PK11_Encrypt()
  9087 ms  0x7984 symkey:0x7ff789dbaf80
  9091 ms  0x7984 PK11_DeriveWithFlags()
  9091 ms  0x7984 basekey:0x7ff78b9f4100
  9091 ms     | 0x7984 PK11_DeriveWithTemplate()
  9091 ms  0x7984 ret:0x7ff78fb3ab00
  9091 ms  0x7984 PK11_DeriveWithFlags()
  9091 ms  0x7984 basekey:0x7ff78b9f4100
  9091 ms     | 0x7984 PK11_DeriveWithTemplate()
  9091 ms  0x7984 ret:0x7ff78fb3ab00
  9091 ms  0x7984 PR_Close()
  9091 ms  0x7984 fd:0x7ff78d235c70
  9091 ms     | 0x7984 PK11_Encrypt()
  9091 ms     | 0x7984 symkey:0x7ff78cab3c00
  9092 ms  0x7984 PR_Close()
  9092 ms  0x7984 fd:0x7ff78cbf2040
  9092 ms     | 0x7984 PK11_Encrypt()
  9092 ms     | 0x7984 symkey:0x7ff789d9db80
  9092 ms  0x7984 PR_Close()
  9092 ms  0x7984 fd:0x7ff7872b4760
  9092 ms     | 0x7984 PK11_Encrypt()
  9092 ms     | 0x7984 symkey:0x7ff788f0a180
  9093 ms  0x7984 PR_Close()
  9093 ms  0x7984 fd:0x7ff786de5940
  9093 ms     | 0x7984 PK11_Encrypt()
  9093 ms     | 0x7984 symkey:0x7ff788fcbf80
  9093 ms  0x7984 PR_Close()
  9093 ms  0x7984 fd:0x7ff7883fb760
  9093 ms     | 0x7984 PK11_Encrypt()
  9093 ms     | 0x7984 symkey:0x7ff788af4b00
  9094 ms  0x7984 PR_Close()
  9094 ms  0x7984 fd:0x7ff7761a20a0
  9094 ms     | 0x7984 PK11_Encrypt()
  9094 ms     | 0x7984 symkey:0x7ff78800c280
  9094 ms  0x7984 SECKEY_DestroyPrivateKey()
  9094 ms  0x7984 privk:0x7ff7919b9820::7ff7919b9820  00 11 df 8c                                      ....
  9097 ms  0x7984 privk:0x7ff7919b9820::7ff7919b9820  e5 e5 e5 e5                                      ....
  9097 ms  0x7984 SECKEY_DestroyPrivateKey()
  9097 ms  0x7984 privk:0x7ff790be2020::7ff790be2020  c0 ae d0 8c                                      ....
  9098 ms  0x7984 privk:0x7ff790be2020::7ff790be2020  e5 e5 e5 e5                                      ....
  9100 ms  0x7984 PK11_Encrypt()
  9100 ms  0x7984 symkey:0x7ff789d82480
           /* TID 0x798c */
  9107 ms  0x798c PR_Close()
  9107 ms  0x798c fd:0x7ff7761a2cd0
           /* TID 0x7a1e */
  9107 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9107 ms  0x7a1e ret:0x0
  9107 ms  0x7a1e _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9108 ms  0x7a1e ret:0x0
           /* TID 0x7984 */
  9114 ms  0x7984 SSL_AuthCertificateComplete()
  9114 ms  0x7984 fd:0x7ff78d210190
  9114 ms  0x7984 err:0x0
  9132 ms  0x7984 PR_Close()
  9132 ms  0x7984 fd:0x7ff789d7baf0
  9132 ms     | 0x7984 PK11_Encrypt()
  9132 ms     | 0x7984 symkey:0x7ff789d86380
  9147 ms  0x7984 PR_Close()
  9147 ms  0x7984 fd:0x7ff7880e1b20
  9147 ms     | 0x7984 PK11_Encrypt()
  9147 ms     | 0x7984 symkey:0x7ff789d94f00
  9163 ms  0x7984 PK11_Encrypt()
  9163 ms  0x7984 symkey:0x7ff789dbaf80
  9175 ms  0x7984 SECKEY_DestroyPrivateKey()
  9175 ms  0x7984 privk:0x7ff791a38820::7ff791a38820  c0 14 df 8c                                      ....
  9175 ms  0x7984 privk:0x7ff791a38820::7ff791a38820  e5 e5 e5 e5                                      ....
  9175 ms  0x7984 SECKEY_DestroyPrivateKey()
  9175 ms  0x7984 privk:0x7ff791a2f020::7ff791a2f020  40 12 df 8c                                      @...
  9175 ms  0x7984 privk:0x7ff791a2f020::7ff791a2f020  e5 e5 e5 e5                                      ....
  9193 ms  0x7984 PK11_Encrypt()
  9193 ms  0x7984 symkey:0x7ff789d85100
  9197 ms  0x7984 SSL_ImportFD()
  9197 ms  0x7984 ret:0x7ff7883fbc10
  9197 ms  0x7984 SSL_AuthCertificateHook()
  9197 ms  0x7984 fd:0x7ff7883fbc10
  9197 ms  0x7984 ret:0x0
  9197 ms  0x7984 PR_Connect()
  9197 ms  0x7984 fd:0x7ff7883fbc10
           /* TID 0x798c */
  9236 ms  0x798c PR_Close()
  9236 ms  0x798c fd:0x7ff7880e1b20
           /* TID 0x7984 */
  9276 ms  0x7984 SECKEY_CreateECPrivateKey()
  9276 ms  0x7984 cx:0x7ff7761880a8
  9277 ms     | 0x7984 EC_ValidatePublicKey()
  9277 ms     | 0x7984 ret:0x0
  9277 ms  0x7984 ret:0x7ff78fb39020::7ff78fb39020  60 a5 d4 8c                                      `...
  9277 ms  0x7984 SECKEY_CreateECPrivateKey()
  9277 ms  0x7984 cx:0x7ff7761880a8
  9279 ms     | 0x7984 EC_ValidatePublicKey()
  9288 ms     | 0x7984 ret:0x0
  9288 ms  0x7984 ret:0x7ff790bd4020::7ff790bd4020  a0 11 df 8c                                      ....
  9367 ms  0x7984 PK11_Derive()
  9367 ms  0x7984 basekey:0x7ff789d94980
  9367 ms     | 0x7984 PK11_DeriveWithTemplate()
  9367 ms  0x7984 ret:0x7ff789d94a80
  9368 ms  0x7984 PK11_Encrypt()
  9368 ms  0x7984 symkey:0x7ff789d95000
  9369 ms  0x7984 SECKEY_DestroyPrivateKey()
  9369 ms  0x7984 privk:0x7ff790bd4020::7ff790bd4020  a0 11 df 8c                                      ....
  9370 ms  0x7984 privk:0x7ff790bd4020::7ff790bd4020  e5 e5 e5 e5                                      ....
  9370 ms  0x7984 SECKEY_DestroyPrivateKey()
  9370 ms  0x7984 privk:0x7ff78fb39020::7ff78fb39020  60 a5 d4 8c                                      `...
  9370 ms  0x7984 privk:0x7ff78fb39020::7ff78fb39020  e5 e5 e5 e5                                      ....
  9371 ms  0x7984 PK11_Encrypt()
  9371 ms  0x7984 symkey:0x7ff789d95000
           /* TID 0x798c */
  9522 ms  0x798c PR_Close()
  9522 ms  0x798c fd:0x7ff7761a2ca0
  9522 ms  0x798c PR_Close()
  9522 ms  0x798c fd:0x7ff787ffc340
  9522 ms  0x798c PR_Close()
  9522 ms  0x798c fd:0x7ff7883fb880
  9522 ms  0x798c PR_Close()
  9522 ms  0x798c fd:0x7ff7885a2ca0
  9523 ms  0x798c PR_Close()
  9523 ms  0x798c fd:0x7ff78cb3f3a0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff7761a2ca0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff787ffc340
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff7883fb880
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff7885a2ca0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78cb3f3a0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78cbdf2b0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78cbf2040
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78cd4ba60
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78ceca1f0
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78ceca400
  9524 ms  0x798c PR_Close()
  9524 ms  0x798c fd:0x7ff78d0836d0
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d0bc5b0
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d0bc790
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d0e5400
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d0fef10
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d1eeeb0
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d210220
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d216d00
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d235a30
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d235c70
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d235e20
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d235f40
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d235fa0
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d242e50
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d2f2730
  9525 ms  0x798c PR_Close()
  9525 ms  0x798c fd:0x7ff78d2f2e20
  9566 ms  0x798c PR_Close()
  9566 ms  0x798c fd:0x7ff776148f40
           /* TID 0x7984 */
  9586 ms  0x7984 PK11_Encrypt()
  9586 ms  0x7984 symkey:0x7ff789d95000
  9588 ms  0x7984 SSL_ImportFD()
  9588 ms  0x7984 ret:0x7ff78ceca400
  9588 ms  0x7984 SSL_AuthCertificateHook()
  9588 ms  0x7984 fd:0x7ff78ceca400
  9588 ms  0x7984 ret:0x0
  9588 ms  0x7984 PR_Connect()
  9588 ms  0x7984 fd:0x7ff78ceca400
  9672 ms  0x7984 SECKEY_CreateECPrivateKey()
  9672 ms  0x7984 cx:0x7ff7761883e8
  9673 ms     | 0x7984 EC_ValidatePublicKey()
  9673 ms     | 0x7984 ret:0x0
  9674 ms  0x7984 ret:0x7ff79080e820::7ff79080e820  80 f3 d4 8c                                      ....
  9674 ms  0x7984 SECKEY_CreateECPrivateKey()
  9674 ms  0x7984 cx:0x7ff7761883e8
  9675 ms     | 0x7984 EC_ValidatePublicKey()
  9679 ms     | 0x7984 ret:0x0
  9679 ms  0x7984 ret:0x7ff790bdd020::7ff790bdd020  30 13 df 8c                                      0...
  9763 ms  0x7984 PK11_Derive()
  9763 ms  0x7984 basekey:0x7ff789d86100
  9763 ms     | 0x7984 PK11_DeriveWithTemplate()
  9763 ms  0x7984 ret:0x7ff789d82b00
  9764 ms  0x7984 PK11_Encrypt()
  9764 ms  0x7984 symkey:0x7ff789d86480
  9765 ms  0x7984 SECKEY_DestroyPrivateKey()
  9765 ms  0x7984 privk:0x7ff790bdd020::7ff790bdd020  30 13 df 8c                                      0...
  9766 ms  0x7984 privk:0x7ff790bdd020::7ff790bdd020  e5 e5 e5 e5                                      ....
  9766 ms  0x7984 SECKEY_DestroyPrivateKey()
  9766 ms  0x7984 privk:0x7ff79080e820::7ff79080e820  80 f3 d4 8c                                      ....
  9766 ms  0x7984 privk:0x7ff79080e820::7ff79080e820  e5 e5 e5 e5                                      ....
  9767 ms  0x7984 PK11_Encrypt()
  9767 ms  0x7984 symkey:0x7ff789d86480
           /* TID 0x798c */
  9828 ms  0x798c PR_Close()
  9828 ms  0x798c fd:0x7ff7761a2ca0
  9972 ms  0x798c PR_Close()
  9972 ms  0x798c fd:0x7ff776148f40
           /* TID 0x7984 */
  9997 ms  0x7984 PK11_Encrypt()
  9997 ms  0x7984 symkey:0x7ff789d95000
 10006 ms  0x7984 PK11_Encrypt()
 10006 ms  0x7984 symkey:0x7ff789d83500
 10008 ms  0x7984 PK11_Encrypt()
 10008 ms  0x7984 symkey:0x7ff789d83500
 10010 ms  0x7984 PK11_Encrypt()
 10010 ms  0x7984 symkey:0x7ff788ff8880
 10014 ms  0x7984 PR_Close()
 10014 ms  0x7984 fd:0x7ff7875ee100
           /* TID 0x7979 */
 10018 ms  0x7979 EC_ValidatePublicKey()
 10020 ms  0x7979 ret:0x0
 10020 ms  0x7979 EC_ValidatePublicKey()
 10021 ms  0x7979 ret:0x0
 10021 ms  0x7979 EC_ValidatePublicKey()
 10027 ms  0x7979 ret:0x0
 10027 ms  0x7979 EC_ValidatePublicKey()
 10028 ms  0x7979 ret:0x0
 10028 ms  0x7979 EC_ValidatePublicKey()
 10030 ms  0x7979 ret:0x0
 10030 ms  0x7979 EC_ValidatePublicKey()
 10031 ms  0x7979 ret:0x0
 10031 ms  0x7979 EC_ValidatePublicKey()
 10038 ms  0x7979 ret:0x0
 10038 ms  0x7979 EC_ValidatePublicKey()
 10039 ms  0x7979 ret:0x0
 10039 ms  0x7979 EC_ValidatePublicKey()
 10041 ms  0x7979 ret:0x0
 10041 ms  0x7979 EC_ValidatePublicKey()
 10044 ms  0x7979 ret:0x0
           /* TID 0x7984 */
 10045 ms  0x7984 PK11_Encrypt()
 10045 ms  0x7984 symkey:0x7ff790a12200
 10045 ms  0x7984 PK11_Encrypt()
 10045 ms  0x7984 symkey:0x7ff789d4d880
 10045 ms  0x7984 PK11_Encrypt()
 10045 ms  0x7984 symkey:0x7ff78ce6e780
 10046 ms  0x7984 PK11_Encrypt()
 10046 ms  0x7984 symkey:0x7ff789d82900
 10046 ms  0x7984 PK11_Encrypt()
 10046 ms  0x7984 symkey:0x7ff790a12b00
 10046 ms  0x7984 PK11_Encrypt()
 10046 ms  0x7984 symkey:0x7ff789d6f100
 10046 ms  0x7984 PR_Close()
 10046 ms  0x7984 fd:0x7ff78cb3f310
 10046 ms     | 0x7984 PK11_Encrypt()
 10046 ms     | 0x7984 symkey:0x7ff78d0e3980
 10046 ms  0x7984 PR_Close()
 10046 ms  0x7984 fd:0x7ff78d0fe700
 10046 ms     | 0x7984 PK11_Encrypt()
 10046 ms     | 0x7984 symkey:0x7ff78d0b9000
 10047 ms  0x7984 PR_Close()
 10047 ms  0x7984 fd:0x7ff78d0fec10
 10047 ms     | 0x7984 PK11_Encrypt()
 10047 ms     | 0x7984 symkey:0x7ff78d1c6e00
 10047 ms  0x7984 PR_Close()
 10047 ms  0x7984 fd:0x7ff78d0fed00
 10047 ms     | 0x7984 PK11_Encrypt()
 10047 ms     | 0x7984 symkey:0x7ff78d0b8c00
 10047 ms  0x7984 PR_Close()
 10047 ms  0x7984 fd:0x7ff78d0fed90
 10047 ms     | 0x7984 PK11_Encrypt()
 10047 ms     | 0x7984 symkey:0x7ff78d0e3d00
 10047 ms  0x7984 PR_Close()
 10047 ms  0x7984 fd:0x7ff78d0fe0d0
 10048 ms     | 0x7984 PK11_Encrypt()
 10048 ms     | 0x7984 symkey:0x7ff78d082480
 10048 ms  0x7984 PR_Close()
 10048 ms  0x7984 fd:0x7ff78c8ec460
 10048 ms  0x7984 PR_Close()
 10048 ms  0x7984 fd:0x7ff78d210190
 10048 ms  0x7984 PR_Close()
 10048 ms  0x7984 fd:0x7ff78cbf2400
 10048 ms     | 0x7984 PK11_Encrypt()
 10048 ms     | 0x7984 symkey:0x7ff789d86f80
 10048 ms  0x7984 PR_Close()
 10048 ms  0x7984 fd:0x7ff78cb3f5b0
 10049 ms     | 0x7984 PK11_Encrypt()
 10049 ms     | 0x7984 symkey:0x7ff78fae0e00
 10049 ms  0x7984 PR_Close()
 10049 ms  0x7984 fd:0x7ff789d7b4f0
 10049 ms     | 0x7984 PK11_Encrypt()
 10049 ms     | 0x7984 symkey:0x7ff789d85700
 10049 ms  0x7984 PR_Close()
 10049 ms  0x7984 fd:0x7ff78c8625e0
 10049 ms     | 0x7984 PK11_Encrypt()
 10049 ms     | 0x7984 symkey:0x7ff789d83800
 10049 ms  0x7984 PR_Close()
 10049 ms  0x7984 fd:0x7ff78cbeb580
 10049 ms     | 0x7984 PK11_Encrypt()
 10049 ms     | 0x7984 symkey:0x7ff789d85480
 10049 ms  0x7984 PR_Close()
 10049 ms  0x7984 fd:0x7ff78b9b4fd0
 10049 ms     | 0x7984 PK11_Encrypt()
 10049 ms     | 0x7984 symkey:0x7ff77619d700
 10049 ms  0x7984 PR_Close()
 10049 ms  0x7984 fd:0x7ff78cbdf970
 10050 ms  0x7984 PR_Close()
 10050 ms  0x7984 fd:0x7ff789dbdbe0
 10050 ms     | 0x7984 PK11_Encrypt()
 10050 ms     | 0x7984 symkey:0x7ff789d85100
 10050 ms  0x7984 PR_Close()
 10050 ms  0x7984 fd:0x7ff7883fb400
 10050 ms  0x7984 PR_Close()
 10050 ms  0x7984 fd:0x7ff78d114250
 10050 ms     | 0x7984 PK11_Encrypt()
 10050 ms     | 0x7984 symkey:0x7ff78d23a680
 10050 ms  0x7984 PR_Close()
 10050 ms  0x7984 fd:0x7ff786de5be0
           /* TID 0x79db */
 10050 ms  0x79db PR_Close()
 10050 ms  0x79db fd:0x7ff7761a2d00
 10051 ms  0x79db PR_Close()
 10051 ms  0x79db fd:0x7ff7761a2d00
           /* TID 0x7984 */
 10055 ms  0x7984 PR_Close()
 10055 ms  0x7984 fd:0x7ff7883fb640
 10055 ms     | 0x7984 PK11_Encrypt()
 10055 ms     | 0x7984 symkey:0x7ff789d82480
 10055 ms  0x7984 PR_Close()
 10055 ms  0x7984 fd:0x7ff78cbf2460
 10055 ms     | 0x7984 PK11_Encrypt()
 10055 ms     | 0x7984 symkey:0x7ff789d82c80
 10055 ms  0x7984 PR_Close()
 10055 ms  0x7984 fd:0x7ff789dbd1c0
 10055 ms     | 0x7984 PK11_Encrypt()
 10055 ms     | 0x7984 symkey:0x7ff789d4d700
 10055 ms  0x7984 PR_Close()
 10055 ms  0x7984 fd:0x7ff788f49c10
 10055 ms     | 0x7984 PK11_Encrypt()
 10055 ms     | 0x7984 symkey:0x7ff789d4d400
 10056 ms  0x7984 PR_Close()
 10056 ms  0x7984 fd:0x7ff78d1eec70
 10056 ms     | 0x7984 PK11_Encrypt()
 10056 ms     | 0x7984 symkey:0x7ff789dbaf80
 10056 ms  0x7984 PR_Close()
 10056 ms  0x7984 fd:0x7ff78cbeb730
 10056 ms  0x7984 PR_Close()
 10056 ms  0x7984 fd:0x7ff7880e1df0
 10056 ms     | 0x7984 PK11_Encrypt()
 10056 ms     | 0x7984 symkey:0x7ff788394100
 10057 ms  0x7984 PR_Close()
 10057 ms  0x7984 fd:0x7ff786de59a0
 10057 ms     | 0x7984 PK11_Encrypt()
 10057 ms     | 0x7984 symkey:0x7ff788363080
 10062 ms  0x7984 PR_Close()
 10062 ms  0x7984 fd:0x7ff7761a2040
 10062 ms     | 0x7984 PK11_Encrypt()
 10062 ms     | 0x7984 symkey:0x7ff78724ad80
 10062 ms  0x7984 PR_Close()
 10062 ms  0x7984 fd:0x7ff775dafac0
 10062 ms     | 0x7984 PK11_Encrypt()
 10062 ms     | 0x7984 symkey:0x7ff7880bfc80
 10065 ms  0x7984 PR_Close()
 10065 ms  0x7984 fd:0x7ff7761a2100
 10065 ms     | 0x7984 PK11_Encrypt()
 10065 ms     | 0x7984 symkey:0x7ff787f9a500
 10067 ms  0x7984 PR_Close()
 10067 ms  0x7984 fd:0x7ff7761487c0
 10067 ms     | 0x7984 PK11_Encrypt()
 10067 ms     | 0x7984 symkey:0x7ff787f58d80
 10067 ms  0x7984 PR_Close()
 10067 ms  0x7984 fd:0x7ff7761a27f0
 10067 ms  0x7984 PR_Close()
 10067 ms  0x7984 fd:0x7ff7761a2790
 10067 ms  0x7984 PR_Close()
 10067 ms  0x7984 fd:0x7ff776148cd0
 10068 ms  0x7984 PR_Close()
 10068 ms  0x7984 fd:0x7ff7761a26d0
 10068 ms  0x7984 PR_Close()
 10068 ms  0x7984 fd:0x7ff775e86cd0
 10068 ms     | 0x7984 PK11_Encrypt()
 10068 ms     | 0x7984 symkey:0x7ff775e1e900
 10068 ms  0x7984 PR_Close()
 10068 ms  0x7984 fd:0x7ff775e86d60
 10068 ms     | 0x7984 PK11_Encrypt()
 10068 ms     | 0x7984 symkey:0x7ff776182180
 10068 ms  0x7984 PR_Close()
 10068 ms  0x7984 fd:0x7ff775daf250
 10068 ms     | 0x7984 PK11_Encrypt()
 10068 ms     | 0x7984 symkey:0x7ff7761a9e00
 10069 ms  0x7984 PR_Close()
 10069 ms  0x7984 fd:0x7ff775e86730
 10069 ms     | 0x7984 PK11_Encrypt()
 10069 ms     | 0x7984 symkey:0x7ff7761a8800
 10069 ms  0x7984 PR_Close()
 10069 ms  0x7984 fd:0x7ff775e86be0
 10069 ms     | 0x7984 PK11_Encrypt()
 10069 ms     | 0x7984 symkey:0x7ff7761a8300
 10069 ms  0x7984 PR_Close()
 10069 ms  0x7984 fd:0x7ff775e86c70
 10069 ms     | 0x7984 PK11_Encrypt()
 10069 ms     | 0x7984 symkey:0x7ff775e1f400
 10069 ms  0x7984 PR_Close()
 10069 ms  0x7984 fd:0x7ff775daf3a0
 10070 ms     | 0x7984 PK11_Encrypt()
 10070 ms     | 0x7984 symkey:0x7ff789d94d00
 10070 ms  0x7984 PR_Close()
 10070 ms  0x7984 fd:0x7ff7880b9d60
 10070 ms  0x7984 PR_Close()
 10070 ms  0x7984 fd:0x7ff78b9591c0
 10070 ms     | 0x7984 PK11_Encrypt()
 10070 ms     | 0x7984 symkey:0x7ff7761a9900
 10070 ms  0x7984 PR_Close()
 10070 ms  0x7984 fd:0x7ff786de5700
           /* TID 0x7979 */
 10071 ms  0x7979 PR_Close()
 10071 ms  0x7979 fd:0x7ff787f9dd60
 10071 ms  0x7979 PR_Close()
 10071 ms  0x7979 fd:0x7ff775daf430
 10072 ms  0x7979 PR_Close()
 10072 ms  0x7979 fd:0x7ff775dafac0
 10072 ms  0x7979 PR_Close()
 10072 ms  0x7979 fd:0x7ff775daf430
 10072 ms  0x7979 PR_Close()
 10072 ms  0x7979 fd:0x7ff775dafac0
 10072 ms  0x7979 PR_Close()
 10072 ms  0x7979 fd:0x7ff775daf430
           /* TID 0x7984 */
 10074 ms  0x7984 PR_Close()
 10074 ms  0x7984 fd:0x7ff786de54c0
 10077 ms  0x7984 PR_Close()
 10077 ms  0x7984 fd:0x7ff7872b4e50
 10077 ms     | 0x7984 PK11_Encrypt()
 10077 ms     | 0x7984 symkey:0x7ff786ef1b80
 10077 ms  0x7984 PR_Close()
 10077 ms  0x7984 fd:0x7ff7872b4a90
 10077 ms     | 0x7984 PK11_Encrypt()
 10077 ms     | 0x7984 symkey:0x7ff786e5d700
 10077 ms  0x7984 PR_Close()
 10077 ms  0x7984 fd:0x7ff78ceca400
 10077 ms     | 0x7984 PK11_Encrypt()
 10077 ms     | 0x7984 symkey:0x7ff789d86480
 10078 ms  0x7984 PR_Close()
 10078 ms  0x7984 fd:0x7ff7872b4b20
 10078 ms     | 0x7984 PK11_Encrypt()
 10078 ms     | 0x7984 symkey:0x7ff787f59900
 10078 ms  0x7984 PR_Close()
 10078 ms  0x7984 fd:0x7ff78d19feb0
 10078 ms     | 0x7984 PK11_Encrypt()
 10078 ms     | 0x7984 symkey:0x7ff790a12b00
           /* TID 0x799e */
 10080 ms  0x799e PR_Close()
 10080 ms  0x799e fd:0x7ff775daf430
           /* TID 0x7984 */
 10081 ms  0x7984 PR_Close()
 10081 ms  0x7984 fd:0x7ff78c862850
 10081 ms     | 0x7984 PK11_Encrypt()
 10081 ms     | 0x7984 symkey:0x7ff789d4d880
 10081 ms  0x7984 PR_Close()
 10081 ms  0x7984 fd:0x7ff789d3ebb0
 10081 ms     | 0x7984 PK11_Encrypt()
 10081 ms     | 0x7984 symkey:0x7ff789d82900
 10081 ms  0x7984 PR_Close()
 10081 ms  0x7984 fd:0x7ff78b932910
 10082 ms     | 0x7984 PK11_Encrypt()
 10082 ms     | 0x7984 symkey:0x7ff790a12200
 10082 ms  0x7984 PR_Close()
 10082 ms  0x7984 fd:0x7ff7885a24c0
 10082 ms     | 0x7984 PK11_Encrypt()
 10082 ms     | 0x7984 symkey:0x7ff789d6f100
 10084 ms  0x7984 PR_Close()
 10084 ms  0x7984 fd:0x7ff78c862100
 10084 ms     | 0x7984 PK11_Encrypt()
 10084 ms     | 0x7984 symkey:0x7ff78ce6e780
 10085 ms  0x7984 PR_Close()
 10085 ms  0x7984 fd:0x7ff7872b40d0
 10085 ms     | 0x7984 PK11_Encrypt()
 10085 ms     | 0x7984 symkey:0x7ff788ff8880
           /* TID 0x7979 */
 10109 ms  0x7979 PR_Close()
 10109 ms  0x7979 fd:0x7ff775dafac0
 10109 ms  0x7979 PR_Close()
 10109 ms  0x7979 fd:0x7ff776148340
 10110 ms  0x7979 PR_Close()
 10110 ms  0x7979 fd:0x7ff775dafac0
 10110 ms  0x7979 PR_Close()
 10110 ms  0x7979 fd:0x7ff776148340
 10110 ms  0x7979 PR_Close()
 10110 ms  0x7979 fd:0x7ff791dc89a0
 10110 ms  0x7979 PR_Close()
 10110 ms  0x7979 fd:0x7ff791dc88b0
 10110 ms  0x7979 PR_Close()
 10110 ms  0x7979 fd:0x7ff791dc8a60
 10115 ms  0x7979 PR_Close()
 10115 ms  0x7979 fd:0x7ff7761483a0
 10116 ms  0x7979 PR_Close()
 10116 ms  0x7979 fd:0x7ff7761483a0
 10119 ms  0x7979 PR_Close()
 10119 ms  0x7979 fd:0x7ff775dafac0
 10119 ms  0x7979 PR_Close()
 10119 ms  0x7979 fd:0x7ff776148610
 10120 ms  0x7979 PR_Close()
 10120 ms  0x7979 fd:0x7ff775dafac0
 10120 ms  0x7979 PR_Close()
 10120 ms  0x7979 fd:0x7ff776148610
 10122 ms  0x7979 PR_Close()
 10122 ms  0x7979 fd:0x7ff776148790
 10124 ms  0x7979 PR_Close()
 10124 ms  0x7979 fd:0x7ff776148790
 10125 ms  0x7979 PR_Close()
 10125 ms  0x7979 fd:0x7ff775dafac0
 10125 ms  0x7979 PR_Close()
 10125 ms  0x7979 fd:0x7ff776148b80
 10126 ms  0x7979 PR_Close()
 10126 ms  0x7979 fd:0x7ff775dafac0
 10127 ms  0x7979 PR_Close()
 10127 ms  0x7979 fd:0x7ff776148b80
 10132 ms  0x7979 PR_Close()
 10132 ms  0x7979 fd:0x7ff775e86be0
 10133 ms  0x7979 PR_Close()
 10133 ms  0x7979 fd:0x7ff775e86be0
 10140 ms  0x7979 PR_Close()
 10140 ms  0x7979 fd:0x7ff7761a23d0
 10141 ms  0x7979 PR_Close()
 10141 ms  0x7979 fd:0x7ff7761a23d0
           /* TID 0x7984 */
 10143 ms  0x7984 PK11_Encrypt()
 10143 ms  0x7984 symkey:0x7ff789d83500
 10143 ms  0x7984 PR_Close()
 10143 ms  0x7984 fd:0x7ff789dbdc70
 10144 ms     | 0x7984 PK11_Encrypt()
 10144 ms     | 0x7984 symkey:0x7ff789d83500
           /* TID 0x7979 */
 10147 ms  0x7979 PR_Close()
 10147 ms  0x7979 fd:0x7ff7761a2430
           /* TID 0x7984 */
 10153 ms  0x7984 PR_Close()
 10153 ms  0x7984 fd:0x7ff7883fbc10
 10153 ms     | 0x7984 PK11_Encrypt()
 10153 ms     | 0x7984 symkey:0x7ff789d95000
           /* TID 0x799e */
 10155 ms  0x799e PR_Close()
 10155 ms  0x799e fd:0x7ff7761a26d0
           /* TID 0x7979 */
 10156 ms  0x7979 PR_Close()
 10156 ms  0x7979 fd:0x7ff775dafac0
 10156 ms  0x7979 PR_Close()
 10156 ms  0x7979 fd:0x7ff7761a2880
           /* TID 0x799e */
 10157 ms  0x799e PR_Close()
 10157 ms  0x799e fd:0x7ff7761a26d0
 10167 ms  0x799e PR_Close()
 10167 ms  0x799e fd:0x7ff775daf430
           /* TID 0x798c */
 10176 ms  0x798c PR_Close()
 10176 ms  0x798c fd:0x7ff786de58b0
           /* TID 0x799e */
 10198 ms  0x799e PR_Close()
 10198 ms  0x799e fd:0x7ff775daf430
           /* TID 0x7984 */
 10204 ms  0x7984 SSL_ImportFD()
 10204 ms  0x7984 ret:0x7ff7761a2a90
 10204 ms  0x7984 SSL_AuthCertificateHook()
 10204 ms  0x7984 fd:0x7ff7761a2a90
 10204 ms  0x7984 ret:0x0
 10204 ms  0x7984 PR_Connect()
 10204 ms  0x7984 fd:0x7ff7761a2a90
 10205 ms  0x7984 SSL_ImportFD()
 10205 ms  0x7984 ret:0x7ff786de55b0
 10205 ms  0x7984 SSL_AuthCertificateHook()
 10205 ms  0x7984 fd:0x7ff786de55b0
 10205 ms  0x7984 ret:0x0
 10205 ms  0x7984 PR_Connect()
 10205 ms  0x7984 fd:0x7ff786de55b0
           /* TID 0x797e */
 10213 ms  0x797e PR_Close()
 10213 ms  0x797e fd:0x7ff7908f8dc0
           /* TID 0x7984 */
 10214 ms  0x7984 SSL_ImportFD()
 10214 ms  0x7984 ret:0x7ff7872b4cd0
 10214 ms  0x7984 SSL_AuthCertificateHook()
 10214 ms  0x7984 fd:0x7ff7872b4cd0
 10214 ms  0x7984 ret:0x0
 10214 ms  0x7984 PR_Connect()
 10214 ms  0x7984 fd:0x7ff7872b4cd0
 10214 ms  0x7984 SSL_ImportFD()
 10214 ms  0x7984 ret:0x7ff7875ee4f0
 10214 ms  0x7984 SSL_AuthCertificateHook()
 10214 ms  0x7984 fd:0x7ff7875ee4f0
 10214 ms  0x7984 ret:0x0
 10214 ms  0x7984 PR_Connect()
 10214 ms  0x7984 fd:0x7ff7875ee4f0
 10216 ms  0x7984 PR_Close()
 10216 ms  0x7984 fd:0x7ff7872b4cd0
 10216 ms  0x7984 PR_Close()
 10216 ms  0x7984 fd:0x7ff7875ee4f0
 10216 ms  0x7984 PR_Close()
 10216 ms  0x7984 fd:0x7ff786de55b0
 10221 ms  0x7984 PR_Close()
 10221 ms  0x7984 fd:0x7ff7761a2a90
           /* TID 0x799e */
 10231 ms  0x799e PR_Close()
 10231 ms  0x799e fd:0x7ff775e86100
           /* TID 0x7979 */
 10234 ms  0x7979 PR_Close()
 10234 ms  0x7979 fd:0x7ff775dafac0
 10234 ms  0x7979 PR_Close()
 10234 ms  0x7979 fd:0x7ff775e86100
           /* TID 0x797e */
 10238 ms  0x797e PR_Close()
 10238 ms  0x797e fd:0x7ff78cd4b7f0
           /* TID 0x7984 */
 10242 ms  0x7984 PR_Close()
 10242 ms  0x7984 fd:0x7ff795f44760
           /* TID 0x79db */
 10243 ms  0x79db PR_Close()
 10243 ms  0x79db fd:0x7ff776148be0
 10243 ms  0x79db PR_Close()
 10243 ms  0x79db fd:0x7ff776148be0
 10243 ms  0x79db PR_Close()
 10243 ms  0x79db fd:0x7ff776148be0
 10243 ms  0x79db PR_Close()
 10243 ms  0x79db fd:0x7ff776148d60
           /* TID 0x799e */
 10244 ms  0x799e PR_Close()
 10244 ms  0x799e fd:0x7ff776148d60
           /* TID 0x798c */
 10247 ms  0x798c PR_Close()
 10247 ms  0x798c fd:0x7ff787220940
 10247 ms  0x798c PR_Close()
 10247 ms  0x798c fd:0x7ff787220f40
           /* TID 0x797e */
 10252 ms  0x797e PR_Close()
 10252 ms  0x797e fd:0x7ff787220550
           /* TID 0x7979 */
 10254 ms  0x7979 PR_Close()
 10254 ms  0x7979 fd:0x7ff775dafac0
 10255 ms  0x7979 PR_Close()
 10255 ms  0x7979 fd:0x7ff7872204f0
           /* TID 0x799e */
 10256 ms  0x799e PR_Close()
 10256 ms  0x799e fd:0x7ff787220520
 10258 ms  0x799e PR_Close()
 10258 ms  0x799e fd:0x7ff775daf130
 10284 ms  0x799e PR_Close()
 10284 ms  0x799e fd:0x7ff775daf190
 10286 ms  0x799e PR_Close()
 10286 ms  0x799e fd:0x7ff775daf190
 10289 ms  0x799e PR_Close()
 10289 ms  0x799e fd:0x7ff775daf850
 10290 ms  0x799e PR_Close()
 10290 ms  0x799e fd:0x7ff775daf8e0
 10299 ms  0x799e PR_Close()
 10299 ms  0x799e fd:0x7ff775e86880
 10303 ms  0x799e PR_Close()
 10303 ms  0x799e fd:0x7ff7761a24f0
 10309 ms  0x799e PR_Close()
 10309 ms  0x799e fd:0x7ff786de5820
 10318 ms  0x799e PR_Close()
 10318 ms  0x799e fd:0x7ff786de5cd0
 10319 ms  0x799e PR_Close()
 10319 ms  0x799e fd:0x7ff786de5cd0
           /* TID 0x7979 */
 10474 ms  0x7979 PR_Close()
 10474 ms  0x7979 fd:0x7ff775daf280
 10474 ms  0x7979 PR_Close()
 10474 ms  0x7979 fd:0x7ff775daf280
 10480 ms  0x7979 PR_Close()
 10480 ms  0x7979 fd:0x7ff7af0da130
 10480 ms  0x7979 PR_Close()
 10480 ms  0x7979 fd:0x7ff7af0da190
Process terminated
