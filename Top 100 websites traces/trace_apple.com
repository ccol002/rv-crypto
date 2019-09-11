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
           /* TID 0x7dc7 */
    18 ms  0x7dc7 SECKEY_DestroyPrivateKey()
    18 ms  0x7dc7 privk:0x7f7d18790020::7f7d18790020  e0 ec b8 1d                                      ....
    18 ms  0x7dc7 privk:0x7f7d18790020::7f7d18790020  e5 e5 e5 e5                                      ....
    19 ms  0x7dc7 SECKEY_DestroyPrivateKey()
    19 ms  0x7dc7 privk:0x7f7d1878e020::7f7d1878e020  00 eb b8 1d                                      ....
    19 ms  0x7dc7 privk:0x7f7d1878e020::7f7d1878e020  e5 e5 e5 e5                                      ....
    33 ms  0x7dc7 SECKEY_DestroyPrivateKey()
    33 ms  0x7dc7 privk:0x7f7d19946020::7f7d19946020  60 ef b8 1d                                      `...
    33 ms  0x7dc7 privk:0x7f7d19946020::7f7d19946020  e5 e5 e5 e5                                      ....
    33 ms  0x7dc7 SECKEY_DestroyPrivateKey()
    33 ms  0x7dc7 privk:0x7f7d18792820::7f7d18792820  80 ed b8 1d                                      ....
    33 ms  0x7dc7 privk:0x7f7d18792820::7f7d18792820  e5 e5 e5 e5                                      ....
           /* TID 0x7dcf */
   233 ms  0x7dcf PR_Close()
   233 ms  0x7dcf fd:0x7f7d182decd0
           /* TID 0x7dc7 */
   375 ms  0x7dc7 SSL_ImportFD()
   375 ms  0x7dc7 ret:0x7f7d18334c10
   375 ms  0x7dc7 SSL_AuthCertificateHook()
   375 ms  0x7dc7 fd:0x7f7d18334c10
   375 ms  0x7dc7 ret:0x0
   375 ms  0x7dc7 PR_Connect()
   375 ms  0x7dc7 fd:0x7f7d18334c10
   401 ms  0x7dc7 SECKEY_CreateECPrivateKey()
   401 ms  0x7dc7 cx:0x7f7d183f88c8
   403 ms     | 0x7dc7 EC_ValidatePublicKey()
   403 ms     | 0x7dc7 ret:0x0
   403 ms  0x7dc7 ret:0x7f7d182d2820::7f7d182d2820  b0 f0 3f 18                                      ..?.
   403 ms  0x7dc7 SECKEY_CreateECPrivateKey()
   403 ms  0x7dc7 cx:0x7f7d183f88c8
   405 ms     | 0x7dc7 EC_ValidatePublicKey()
   407 ms     | 0x7dc7 ret:0x0
   407 ms  0x7dc7 ret:0x7f7d1878d020::7f7d1878d020  90 f2 3f 18                                      ..?.
           /* TID 0x7e2f */
   460 ms  0x7e2f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   460 ms  0x7e2f ret:0x0
           /* TID 0x7dc7 */
   461 ms  SECKEY_ECParamsToKeySize()
   461 ms  0x7dc7 ret:0x100
   461 ms  0x7dc7 SECKEY_CreateECPrivateKey()
   461 ms  0x7dc7 cx:0x7f7d183f88c8
   463 ms     | 0x7dc7 EC_ValidatePublicKey()
   467 ms     | 0x7dc7 ret:0x0
   467 ms  0x7dc7 ret:0x7f7d18790020::7f7d18790020  b0 f5 3f 18                                      ..?.
   467 ms  0x7dc7 PK11_PubDeriveWithKDF()
   467 ms  0x7dc7 seckey:0x7f7d18790020
   467 ms     | 0x7dc7 EC_ValidatePublicKey()
   471 ms     | 0x7dc7 ret:0x0
   475 ms  0x7dc7 ret:0x7f7d18caf300
   475 ms  0x7dc7 PK11_DeriveWithFlags()
   475 ms  0x7dc7 basekey:0x7f7d18caf300
   475 ms     | 0x7dc7 PK11_DeriveWithTemplate()
   475 ms  0x7dc7 ret:0x7f7d18333680
   475 ms  0x7dc7 PK11_Derive()
   475 ms  0x7dc7 basekey:0x7f7d18333680
   475 ms     | 0x7dc7 PK11_DeriveWithTemplate()
   475 ms  0x7dc7 ret:0x7f7d18333700
   475 ms  0x7dc7 SECKEY_DestroyPrivateKey()
   475 ms  0x7dc7 privk:0x7f7d18790020::7f7d18790020  b0 f5 3f 18                                      ..?.
   475 ms  0x7dc7 privk:0x7f7d18790020::7f7d18790020  e5 e5 e5 e5                                      ....
   476 ms  0x7dc7 PK11_Encrypt()
   476 ms  0x7dc7 symkey:0x7f7d18333880
   476 ms  0x7dc7 SSL_AuthCertificateComplete()
   476 ms  0x7dc7 fd:0x7f7d18334c10
   476 ms  0x7dc7 err:0x0
   476 ms  0x7dc7 PK11_Encrypt()
   476 ms  0x7dc7 symkey:0x7f7d18333880
   528 ms  0x7dc7 SECKEY_DestroyPrivateKey()
   528 ms  0x7dc7 privk:0x7f7d1878d020::7f7d1878d020  90 f2 3f 18                                      ..?.
   528 ms  0x7dc7 privk:0x7f7d1878d020::7f7d1878d020  e5 e5 e5 e5                                      ....
   529 ms  0x7dc7 SECKEY_DestroyPrivateKey()
   529 ms  0x7dc7 privk:0x7f7d182d2820::7f7d182d2820  b0 f0 3f 18                                      ..?.
   529 ms  0x7dc7 privk:0x7f7d182d2820::7f7d182d2820  e5 e5 e5 e5                                      ....
   533 ms  0x7dc7 PK11_Encrypt()
   533 ms  0x7dc7 symkey:0x7f7d18333880
   564 ms  0x7dc7 PK11_Encrypt()
   564 ms  0x7dc7 symkey:0x7f7d18333880
   594 ms  0x7dc7 PK11_Encrypt()
   594 ms  0x7dc7 symkey:0x7f7d18333880
   624 ms  0x7dc7 PK11_Encrypt()
   624 ms  0x7dc7 symkey:0x7f7d18333880
   739 ms  0x7dc7 PK11_Encrypt()
   739 ms  0x7dc7 symkey:0x7f7d18333880
           /* TID 0x7e33 */
   760 ms  0x7e33 PR_Close()
   760 ms  0x7e33 fd:0x7f7d07725130
   769 ms  0x7e33 PR_Close()
   769 ms  0x7e33 fd:0x7f7d07725160
   771 ms  0x7e33 PR_Close()
   771 ms  0x7e33 fd:0x7f7d07725160
           /* TID 0x7dc7 */
   773 ms  0x7dc7 PK11_Encrypt()
   773 ms  0x7dc7 symkey:0x7f7d18333880
   804 ms  0x7dc7 PK11_Encrypt()
   804 ms  0x7dc7 symkey:0x7f7d18333880
           /* TID 0x7e24 */
   833 ms  0x7e24 PR_Close()
   833 ms  0x7e24 fd:0x7f7d07725160
   833 ms  0x7e24 PR_Close()
   833 ms  0x7e24 fd:0x7f7d077251c0
   833 ms  0x7e24 PR_Close()
   833 ms  0x7e24 fd:0x7f7d07725160
   833 ms  0x7e24 PR_Close()
   833 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d077251c0
   834 ms  0x7e24 PR_Close()
   834 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d07725160
   835 ms  0x7e24 PR_Close()
   835 ms  0x7e24 fd:0x7f7d077251c0
   839 ms  0x7e24 PR_Close()
   839 ms  0x7e24 fd:0x7f7d07725160
   839 ms  0x7e24 PR_Close()
   839 ms  0x7e24 fd:0x7f7d07725160
   842 ms  0x7e24 PR_Close()
   842 ms  0x7e24 fd:0x7f7d07725160
   842 ms  0x7e24 PR_Close()
   842 ms  0x7e24 fd:0x7f7d07725190
   844 ms  0x7e24 PR_Close()
   844 ms  0x7e24 fd:0x7f7d07725190
   844 ms  0x7e24 PR_Close()
   844 ms  0x7e24 fd:0x7f7d07725190
   847 ms  0x7e24 PR_Close()
   847 ms  0x7e24 fd:0x7f7d07725190
   847 ms  0x7e24 PR_Close()
   847 ms  0x7e24 fd:0x7f7d07725190
   880 ms  0x7e24 PR_Close()
   880 ms  0x7e24 fd:0x7f7d07725190
   881 ms  0x7e24 PR_Close()
   881 ms  0x7e24 fd:0x7f7d07725190
   889 ms  0x7e24 PR_Close()
   889 ms  0x7e24 fd:0x7f7d07725190
   889 ms  0x7e24 PR_Close()
   889 ms  0x7e24 fd:0x7f7d07725190
   896 ms  0x7e24 PR_Close()
   896 ms  0x7e24 fd:0x7f7d07725190
   896 ms  0x7e24 PR_Close()
   896 ms  0x7e24 fd:0x7f7d07725190
   898 ms  0x7e24 PR_Close()
   898 ms  0x7e24 fd:0x7f7d07725190
   898 ms  0x7e24 PR_Close()
   898 ms  0x7e24 fd:0x7f7d07725190
           /* TID 0x7e21 */
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
   899 ms  0x7e21 PR_Close()
   899 ms  0x7e21 fd:0x7f7d07725190
           /* TID 0x7e33 */
  1402 ms  0x7e33 PR_Close()
  1402 ms  0x7e33 fd:0x7f7d077251f0
  1404 ms  0x7e33 PR_Close()
  1404 ms  0x7e33 fd:0x7f7d077251f0
  2812 ms  0x7e33 PR_Close()
  2812 ms  0x7e33 fd:0x7f7d077256a0
           /* TID 0x7dcf */
  4131 ms  0x7dcf PR_Close()
  4131 ms  0x7dcf fd:0x7f7d077256a0
  4131 ms  0x7dcf PR_Close()
  4131 ms  0x7dcf fd:0x7f7d07725700
           /* TID 0x7dc7 */
  4576 ms  0x7dc7 SSL_ImportFD()
  4576 ms  0x7dc7 ret:0x7f7d076f3820
  4576 ms  0x7dc7 SSL_AuthCertificateHook()
  4576 ms  0x7dc7 fd:0x7f7d076f3820
  4576 ms  0x7dc7 ret:0x0
  4576 ms  0x7dc7 PR_Connect()
  4576 ms  0x7dc7 fd:0x7f7d076f3820
  4613 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  4613 ms  0x7dc7 cx:0x7f7d183f95c8
  4614 ms     | 0x7dc7 EC_ValidatePublicKey()
  4614 ms     | 0x7dc7 ret:0x0
  4614 ms  0x7dc7 ret:0x7f7d076a8820::7f7d076a8820  90 17 6d 07                                      ..m.
  4614 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  4614 ms  0x7dc7 cx:0x7f7d183f95c8
  4615 ms     | 0x7dc7 EC_ValidatePublicKey()
  4617 ms     | 0x7dc7 ret:0x0
  4617 ms  0x7dc7 ret:0x7f7d076aa820::7f7d076aa820  10 1a 6d 07                                      ..m.
  4660 ms  SECKEY_ECParamsToKeySize()
  4660 ms  0x7dc7 ret:0x100
  4660 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  4660 ms  0x7dc7 cx:0x7f7d183f95c8
  4662 ms     | 0x7dc7 EC_ValidatePublicKey()
  4667 ms     | 0x7dc7 ret:0x0
  4667 ms  0x7dc7 ret:0x7f7d076b8820::7f7d076b8820  f0 51 54 07                                      .QT.
  4667 ms  0x7dc7 PK11_PubDeriveWithKDF()
  4667 ms  0x7dc7 seckey:0x7f7d076b8820
  4668 ms     | 0x7dc7 EC_ValidatePublicKey()
  4672 ms     | 0x7dc7 ret:0x0
  4677 ms  0x7dc7 ret:0x7f7d18caf300
  4677 ms  0x7dc7 PK11_DeriveWithFlags()
  4677 ms  0x7dc7 basekey:0x7f7d18caf300
  4677 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  4677 ms  0x7dc7 ret:0x7f7d076f7c00
  4677 ms  0x7dc7 PK11_Derive()
  4677 ms  0x7dc7 basekey:0x7f7d076f7c00
  4677 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  4677 ms  0x7dc7 ret:0x7f7d076f7c80
  4677 ms  0x7dc7 SECKEY_DestroyPrivateKey()
  4677 ms  0x7dc7 privk:0x7f7d076b8820::7f7d076b8820  f0 51 54 07                                      .QT.
  4677 ms  0x7dc7 privk:0x7f7d076b8820::7f7d076b8820  e5 e5 e5 e5                                      ....
  4678 ms  0x7dc7 PK11_Encrypt()
  4678 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  4707 ms  0x7dcf PR_Close()
  4707 ms  0x7dcf fd:0x7f7d076f3b80
           /* TID 0x7e64 */
  4707 ms  0x7e64 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4707 ms  0x7e64 ret:0x0
  4708 ms  0x7e64 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4708 ms  0x7e64 ret:0x0
           /* TID 0x7dc7 */
  4722 ms  0x7dc7 SSL_AuthCertificateComplete()
  4722 ms  0x7dc7 fd:0x7f7d076f3820
  4722 ms  0x7dc7 err:0x0
  4723 ms     | 0x7dc7 SECKEY_DestroyPrivateKey()
  4723 ms     | 0x7dc7 privk:0x7f7d076aa820::7f7d076aa820  10 1a 6d 07                                      ..m.
  4723 ms     | 0x7dc7 privk:0x7f7d076aa820::7f7d076aa820  e5 e5 e5 e5                                      ....
  4723 ms     | 0x7dc7 SECKEY_DestroyPrivateKey()
  4723 ms     | 0x7dc7 privk:0x7f7d076a8820::7f7d076a8820  90 17 6d 07                                      ..m.
  4723 ms     | 0x7dc7 privk:0x7f7d076a8820::7f7d076a8820  e5 e5 e5 e5                                      ....
  4724 ms  0x7dc7 PK11_Encrypt()
  4724 ms  0x7dc7 symkey:0x7f7d076f7e00
  4725 ms  0x7dc7 PK11_Encrypt()
  4725 ms  0x7dc7 symkey:0x7f7d076f7e00
  4761 ms  0x7dc7 PK11_Encrypt()
  4761 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  4816 ms  0x7dcf PR_Close()
  4816 ms  0x7dcf fd:0x7f7d194da190
           /* TID 0x7dde */
  4826 ms  0x7dde PR_Close()
  4826 ms  0x7dde fd:0x7f7d19de2040
           /* TID 0x7dc7 */
  4887 ms  0x7dc7 PK11_Encrypt()
  4887 ms  0x7dc7 symkey:0x7f7d076f7e00
  4888 ms  0x7dc7 PK11_Encrypt()
  4888 ms  0x7dc7 symkey:0x7f7d076f7e00
  4888 ms  0x7dc7 PK11_Encrypt()
  4888 ms  0x7dc7 symkey:0x7f7d076f7e00
  4888 ms  0x7dc7 PK11_Encrypt()
  4888 ms  0x7dc7 symkey:0x7f7d076f7e00
  4888 ms  0x7dc7 PK11_Encrypt()
  4888 ms  0x7dc7 symkey:0x7f7d076f7e00
  4889 ms  0x7dc7 PK11_Encrypt()
  4889 ms  0x7dc7 symkey:0x7f7d076f7e00
  4889 ms  0x7dc7 PK11_Encrypt()
  4889 ms  0x7dc7 symkey:0x7f7d076f7e00
  4889 ms  0x7dc7 PK11_Encrypt()
  4889 ms  0x7dc7 symkey:0x7f7d076f7e00
  4889 ms  0x7dc7 PK11_Encrypt()
  4889 ms  0x7dc7 symkey:0x7f7d076f7e00
  4889 ms  0x7dc7 PK11_Encrypt()
  4889 ms  0x7dc7 symkey:0x7f7d076f7e00
  4890 ms  0x7dc7 PK11_Encrypt()
  4890 ms  0x7dc7 symkey:0x7f7d076f7e00
  4890 ms  0x7dc7 PK11_Encrypt()
  4890 ms  0x7dc7 symkey:0x7f7d076f7e00
  4890 ms  0x7dc7 PK11_Encrypt()
  4890 ms  0x7dc7 symkey:0x7f7d076f7e00
  4890 ms  0x7dc7 PK11_Encrypt()
  4890 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  4934 ms  0x7dcf PR_Close()
  4934 ms  0x7dcf fd:0x7f7d0743ab80
  4976 ms  0x7dcf PR_Close()
  4976 ms  0x7dcf fd:0x7f7d0766d250
  4983 ms  0x7dcf PR_Close()
  4983 ms  0x7dcf fd:0x7f7d074df040
  4984 ms  0x7dcf PR_Close()
  4984 ms  0x7dcf fd:0x7f7d0743ae20
  5002 ms  0x7dcf PR_Close()
  5002 ms  0x7dcf fd:0x7f7d0743af70
  5010 ms  0x7dcf PR_Close()
  5010 ms  0x7dcf fd:0x7f7d0743adf0
  5013 ms  0x7dcf PR_Close()
  5013 ms  0x7dcf fd:0x7f7d0743adf0
  5017 ms  0x7dcf PR_Close()
  5017 ms  0x7dcf fd:0x7f7d0743adc0
           /* TID 0x7dc7 */
  5020 ms  0x7dc7 SSL_ImportFD()
  5020 ms  0x7dc7 ret:0x7f7d0743ae80
  5020 ms  0x7dc7 SSL_AuthCertificateHook()
  5020 ms  0x7dc7 fd:0x7f7d0743ae80
  5020 ms  0x7dc7 ret:0x0
  5020 ms  0x7dc7 PR_Connect()
  5020 ms  0x7dc7 fd:0x7f7d0743ae80
           /* TID 0x7dcf */
  5039 ms  0x7dcf PR_Close()
  5039 ms  0x7dcf fd:0x7f7d0743adc0
  5048 ms  0x7dcf PR_Close()
  5048 ms  0x7dcf fd:0x7f7d0743adc0
           /* TID 0x7dc7 */
  5073 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5073 ms  0x7dc7 cx:0x7f7d183f9f88
  5073 ms     | 0x7dc7 EC_ValidatePublicKey()
  5073 ms     | 0x7dc7 ret:0x0
  5073 ms  0x7dc7 ret:0x7f7d07473820::7f7d07473820  40 c2 85 1e                                      @...
  5074 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5074 ms  0x7dc7 cx:0x7f7d183f9f88
  5074 ms     | 0x7dc7 EC_ValidatePublicKey()
  5076 ms     | 0x7dc7 ret:0x0
  5076 ms  0x7dc7 ret:0x7f7d0747b820::7f7d0747b820  c0 59 55 07                                      .YU.
           /* TID 0x7dcf */
  5082 ms  0x7dcf PR_Close()
  5082 ms  0x7dcf fd:0x7f7d0743ad00
  5084 ms  0x7dcf PR_Close()
  5084 ms  0x7dcf fd:0x7f7d0743ad00
  5084 ms  0x7dcf PR_Close()
  5084 ms  0x7dcf fd:0x7f7d0743ad00
  5091 ms  0x7dcf PR_Close()
  5091 ms  0x7dcf fd:0x7f7d0743ad00
           /* TID 0x7dc7 */
  5112 ms  0x7dc7 PK11_Encrypt()
  5112 ms  0x7dc7 symkey:0x7f7d076f7e00
  5114 ms  0x7dc7 PK11_Encrypt()
  5114 ms  0x7dc7 symkey:0x7f7d076f7e00
  5114 ms  0x7dc7 PK11_Encrypt()
  5114 ms  0x7dc7 symkey:0x7f7d076f7e00
  5115 ms  0x7dc7 PK11_Encrypt()
  5115 ms  0x7dc7 symkey:0x7f7d076f7e00
  5116 ms  0x7dc7 PK11_Encrypt()
  5116 ms  0x7dc7 symkey:0x7f7d076f7e00
  5117 ms  0x7dc7 PK11_Encrypt()
  5117 ms  0x7dc7 symkey:0x7f7d076f7e00
  5118 ms  0x7dc7 PK11_Encrypt()
  5118 ms  0x7dc7 symkey:0x7f7d076f7e00
  5119 ms  0x7dc7 PK11_Encrypt()
  5119 ms  0x7dc7 symkey:0x7f7d076f7e00
  5120 ms  0x7dc7 PK11_Encrypt()
  5120 ms  0x7dc7 symkey:0x7f7d076f7e00
  5121 ms  0x7dc7 PK11_Encrypt()
  5121 ms  0x7dc7 symkey:0x7f7d076f7e00
  5126 ms  0x7dc7 PK11_Encrypt()
  5126 ms  0x7dc7 symkey:0x7f7d076f7e00
  5127 ms  0x7dc7 PK11_Encrypt()
  5127 ms  0x7dc7 symkey:0x7f7d076f7e00
  5135 ms  SECKEY_ECParamsToKeySize()
  5135 ms  0x7dc7 ret:0x100
  5135 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5135 ms  0x7dc7 cx:0x7f7d183f9f88
  5136 ms     | 0x7dc7 EC_ValidatePublicKey()
  5137 ms     | 0x7dc7 ret:0x0
  5137 ms  0x7dc7 ret:0x7f7d077c7820::7f7d077c7820  50 26 79 07                                      P&y.
  5138 ms  0x7dc7 PK11_PubDeriveWithKDF()
  5138 ms  0x7dc7 seckey:0x7f7d077c7820
  5138 ms     | 0x7dc7 EC_ValidatePublicKey()
  5139 ms     | 0x7dc7 ret:0x0
  5140 ms  0x7dc7 ret:0x7f7d18caf300
  5140 ms  0x7dc7 PK11_DeriveWithFlags()
  5140 ms  0x7dc7 basekey:0x7f7d18caf300
  5140 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  5140 ms  0x7dc7 ret:0x7f7d077dba00
  5140 ms  0x7dc7 PK11_Derive()
  5140 ms  0x7dc7 basekey:0x7f7d077dba00
  5140 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  5141 ms  0x7dc7 ret:0x7f7d077dba80
  5141 ms  0x7dc7 SECKEY_DestroyPrivateKey()
  5141 ms  0x7dc7 privk:0x7f7d077c7820::7f7d077c7820  50 26 79 07                                      P&y.
  5141 ms  0x7dc7 privk:0x7f7d077c7820::7f7d077c7820  e5 e5 e5 e5                                      ....
  5141 ms  0x7dc7 PK11_Encrypt()
  5141 ms  0x7dc7 symkey:0x7f7d077dbc00
  5148 ms  0x7dc7 PK11_Encrypt()
  5148 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  5152 ms  0x7dcf PR_Close()
  5152 ms  0x7dcf fd:0x7f7d0743adf0
  5165 ms  0x7dcf PR_Close()
  5165 ms  0x7dcf fd:0x7f7d0743adf0
  5167 ms  0x7dcf PR_Close()
  5167 ms  0x7dcf fd:0x7f7d0743adf0
  5169 ms  0x7dcf PR_Close()
  5169 ms  0x7dcf fd:0x7f7d0743adf0
  5169 ms  0x7dcf PR_Close()
  5169 ms  0x7dcf fd:0x7f7d0766d130
  5170 ms  0x7dcf PR_Close()
  5170 ms  0x7dcf fd:0x7f7d0743adf0
  5170 ms  0x7dcf PR_Close()
  5170 ms  0x7dcf fd:0x7f7d0766d130
  5171 ms  0x7dcf PR_Close()
  5171 ms  0x7dcf fd:0x7f7d0743adf0
  5173 ms  0x7dcf PR_Close()
  5173 ms  0x7dcf fd:0x7f7d0743adf0
  5174 ms  0x7dcf PR_Close()
  5174 ms  0x7dcf fd:0x7f7d0743adf0
  5175 ms  0x7dcf PR_Close()
  5175 ms  0x7dcf fd:0x7f7d0743adf0
           /* TID 0x7e2f */
  5175 ms  0x7e2f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5175 ms  0x7e2f ret:0x0
           /* TID 0x7dcf */
  5179 ms  0x7dcf PR_Close()
  5179 ms  0x7dcf fd:0x7f7d0743af70
           /* TID 0x7dc7 */
  5182 ms  0x7dc7 SSL_AuthCertificateComplete()
  5182 ms  0x7dc7 fd:0x7f7d0743ae80
  5182 ms  0x7dc7 err:0x0
  5183 ms  0x7dc7 PK11_Encrypt()
  5183 ms  0x7dc7 symkey:0x7f7d077dbc00
  5183 ms  0x7dc7 PK11_Encrypt()
  5183 ms  0x7dc7 symkey:0x7f7d077dbc00
           /* TID 0x7dcf */
  5200 ms  0x7dcf PR_Close()
  5200 ms  0x7dcf fd:0x7f7d0766dd90
           /* TID 0x7dc7 */
  5213 ms  0x7dc7 SECKEY_DestroyPrivateKey()
  5213 ms  0x7dc7 privk:0x7f7d0747b820::7f7d0747b820  c0 59 55 07                                      .YU.
  5213 ms  0x7dc7 privk:0x7f7d0747b820::7f7d0747b820  e5 e5 e5 e5                                      ....
  5213 ms  0x7dc7 SECKEY_DestroyPrivateKey()
  5213 ms  0x7dc7 privk:0x7f7d07473820::7f7d07473820  40 c2 85 1e                                      @...
  5213 ms  0x7dc7 privk:0x7f7d07473820::7f7d07473820  e5 e5 e5 e5                                      ....
  5213 ms  0x7dc7 PK11_Encrypt()
  5213 ms  0x7dc7 symkey:0x7f7d077dbc00
  5220 ms  0x7dc7 PK11_Encrypt()
  5220 ms  0x7dc7 symkey:0x7f7d076f7e00
  5233 ms  0x7dc7 PK11_Encrypt()
  5233 ms  0x7dc7 symkey:0x7f7d076f7e00
  5234 ms  0x7dc7 PK11_Encrypt()
  5234 ms  0x7dc7 symkey:0x7f7d076f7e00
  5235 ms  0x7dc7 PK11_Encrypt()
  5235 ms  0x7dc7 symkey:0x7f7d076f7e00
  5236 ms  0x7dc7 PK11_Encrypt()
  5236 ms  0x7dc7 symkey:0x7f7d076f7e00
  5237 ms  0x7dc7 PK11_Encrypt()
  5237 ms  0x7dc7 symkey:0x7f7d076f7e00
  5238 ms  0x7dc7 PK11_Encrypt()
  5238 ms  0x7dc7 symkey:0x7f7d076f7e00
  5239 ms  0x7dc7 PK11_Encrypt()
  5239 ms  0x7dc7 symkey:0x7f7d076f7e00
  5240 ms  0x7dc7 PK11_Encrypt()
  5240 ms  0x7dc7 symkey:0x7f7d076f7e00
  5241 ms  0x7dc7 PK11_Encrypt()
  5241 ms  0x7dc7 symkey:0x7f7d076f7e00
  5242 ms  0x7dc7 PK11_Encrypt()
  5242 ms  0x7dc7 symkey:0x7f7d076f7e00
  5242 ms  0x7dc7 PK11_Encrypt()
  5242 ms  0x7dc7 symkey:0x7f7d076f7e00
  5243 ms  0x7dc7 PK11_Encrypt()
  5243 ms  0x7dc7 symkey:0x7f7d076f7e00
  5245 ms  0x7dc7 PK11_Encrypt()
  5245 ms  0x7dc7 symkey:0x7f7d076f7e00
  5259 ms  0x7dc7 PK11_Encrypt()
  5259 ms  0x7dc7 symkey:0x7f7d076f7e00
  5261 ms  0x7dc7 PK11_Encrypt()
  5261 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  5263 ms  0x7dcf PR_Close()
  5263 ms  0x7dcf fd:0x7f7d0767d220
           /* TID 0x7dc7 */
  5263 ms  0x7dc7 PK11_Encrypt()
  5263 ms  0x7dc7 symkey:0x7f7d076f7e00
  5267 ms  0x7dc7 PK11_Encrypt()
  5267 ms  0x7dc7 symkey:0x7f7d076f7e00
  5271 ms  0x7dc7 PK11_Encrypt()
  5271 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  5273 ms  0x7dcf PR_Close()
  5273 ms  0x7dcf fd:0x7f7d0766dee0
  5280 ms  0x7dcf PR_Close()
  5280 ms  0x7dcf fd:0x7f7d0766dee0
  5282 ms  0x7dcf PR_Close()
  5282 ms  0x7dcf fd:0x7f7d0766dee0
  5283 ms  0x7dcf PR_Close()
  5283 ms  0x7dcf fd:0x7f7d0766dee0
  5291 ms  0x7dcf PR_Close()
  5291 ms  0x7dcf fd:0x7f7d0743ae50
  5299 ms  0x7dcf PR_Close()
  5299 ms  0x7dcf fd:0x7f7d0743ae50
  5300 ms  0x7dcf PR_Close()
  5300 ms  0x7dcf fd:0x7f7d0743ae50
  5320 ms  0x7dcf PR_Close()
  5320 ms  0x7dcf fd:0x7f7d0743adc0
  5323 ms  0x7dcf PR_Close()
  5323 ms  0x7dcf fd:0x7f7d0743adc0
  5328 ms  0x7dcf PR_Close()
  5328 ms  0x7dcf fd:0x7f7d0743ae50
  5334 ms  0x7dcf PR_Close()
  5334 ms  0x7dcf fd:0x7f7d0743ae50
  5336 ms  0x7dcf PR_Close()
  5336 ms  0x7dcf fd:0x7f7d0743ae50
  5357 ms  0x7dcf PR_Close()
  5357 ms  0x7dcf fd:0x7f7d077913d0
  5357 ms  0x7dcf PR_Close()
  5357 ms  0x7dcf fd:0x7f7d077913d0
  5359 ms  0x7dcf PR_Close()
  5359 ms  0x7dcf fd:0x7f7d07791220
  5362 ms  0x7dcf PR_Close()
  5362 ms  0x7dcf fd:0x7f7d07791070
  5365 ms  0x7dcf PR_Close()
  5365 ms  0x7dcf fd:0x7f7d07791070
  5368 ms  0x7dcf PR_Close()
  5368 ms  0x7dcf fd:0x7f7d07791070
  5376 ms  0x7dcf PR_Close()
  5376 ms  0x7dcf fd:0x7f7d07791070
           /* TID 0x7dc7 */
  5407 ms  0x7dc7 PK11_Encrypt()
  5407 ms  0x7dc7 symkey:0x7f7d076f7e00
  5504 ms  0x7dc7 SSL_ImportFD()
  5504 ms  0x7dc7 ret:0x7f7d07791370
  5504 ms  0x7dc7 SSL_AuthCertificateHook()
  5504 ms  0x7dc7 fd:0x7f7d07791370
  5504 ms  0x7dc7 ret:0x0
  5504 ms  0x7dc7 PR_Connect()
  5504 ms  0x7dc7 fd:0x7f7d07791370
  5524 ms  0x7dc7 PK11_Encrypt()
  5524 ms  0x7dc7 symkey:0x7f7d076f7e00
  5524 ms  0x7dc7 PK11_Encrypt()
  5524 ms  0x7dc7 symkey:0x7f7d076f7e00
  5562 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5562 ms  0x7dc7 cx:0x7f7d183fa2c8
  5562 ms     | 0x7dc7 EC_ValidatePublicKey()
  5562 ms     | 0x7dc7 ret:0x0
  5562 ms  0x7dc7 ret:0x7f7d077c6820::7f7d077c6820  d0 7d 31 07                                      .}1.
  5562 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5562 ms  0x7dc7 cx:0x7f7d183fa2c8
  5564 ms     | 0x7dc7 EC_ValidatePublicKey()
  5565 ms     | 0x7dc7 ret:0x0
  5566 ms  0x7dc7 ret:0x7f7d077cc020::7f7d077cc020  10 7f 31 07                                      ..1.
  5627 ms  SECKEY_ECParamsToKeySize()
  5628 ms  0x7dc7 ret:0x100
  5628 ms  0x7dc7 SECKEY_CreateECPrivateKey()
  5628 ms  0x7dc7 cx:0x7f7d183fa2c8
  5629 ms     | 0x7dc7 EC_ValidatePublicKey()
  5633 ms     | 0x7dc7 ret:0x0
  5633 ms  0x7dc7 ret:0x7f7d07111020::7f7d07111020  c0 59 66 07                                      .Yf.
  5633 ms  0x7dc7 PK11_PubDeriveWithKDF()
  5633 ms  0x7dc7 seckey:0x7f7d07111020
  5633 ms     | 0x7dc7 EC_ValidatePublicKey()
  5638 ms     | 0x7dc7 ret:0x0
  5642 ms  0x7dc7 ret:0x7f7d18caf300
  5642 ms  0x7dc7 PK11_DeriveWithFlags()
  5642 ms  0x7dc7 basekey:0x7f7d18caf300
  5642 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  5642 ms  0x7dc7 ret:0x7f7d07797e00
  5642 ms  0x7dc7 PK11_Derive()
  5642 ms  0x7dc7 basekey:0x7f7d07797e00
  5642 ms     | 0x7dc7 PK11_DeriveWithTemplate()
  5642 ms  0x7dc7 ret:0x7f7d07798400
  5642 ms  0x7dc7 SECKEY_DestroyPrivateKey()
  5642 ms  0x7dc7 privk:0x7f7d07111020::7f7d07111020  c0 59 66 07                                      .Yf.
  5642 ms  0x7dc7 privk:0x7f7d07111020::7f7d07111020  e5 e5 e5 e5                                      ....
  5642 ms  0x7dc7 PK11_Encrypt()
  5642 ms  0x7dc7 symkey:0x7f7d077dc080
           /* TID 0x7e64 */
  5669 ms  0x7e64 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5669 ms  0x7e64 ret:0x0
           /* TID 0x7dcf */
  5670 ms  0x7dcf PR_Close()
  5670 ms  0x7dcf fd:0x7f7d07791a60
  5682 ms  0x7dcf PR_Close()
  5682 ms  0x7dcf fd:0x7f7d0766df70
  5696 ms  0x7dcf PR_Close()
  5696 ms  0x7dcf fd:0x7f7d0766df70
           /* TID 0x7e64 */
  5696 ms  0x7e64 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5696 ms  0x7e64 ret:0x0
           /* TID 0x7dc7 */
  5702 ms  0x7dc7 SSL_AuthCertificateComplete()
  5702 ms  0x7dc7 fd:0x7f7d07791370
  5702 ms  0x7dc7 err:0x0
  5702 ms     | 0x7dc7 SECKEY_DestroyPrivateKey()
  5702 ms     | 0x7dc7 privk:0x7f7d077cc020::7f7d077cc020  10 7f 31 07                                      ..1.
  5703 ms     | 0x7dc7 privk:0x7f7d077cc020::7f7d077cc020  e5 e5 e5 e5                                      ....
  5703 ms     | 0x7dc7 SECKEY_DestroyPrivateKey()
  5703 ms     | 0x7dc7 privk:0x7f7d077c6820::7f7d077c6820  d0 7d 31 07                                      .}1.
  5703 ms     | 0x7dc7 privk:0x7f7d077c6820::7f7d077c6820  e5 e5 e5 e5                                      ....
  5703 ms  0x7dc7 PK11_Encrypt()
  5703 ms  0x7dc7 symkey:0x7f7d077dc080
  5742 ms  0x7dc7 PK11_Encrypt()
  5742 ms  0x7dc7 symkey:0x7f7d076f7e00
  5753 ms  0x7dc7 PK11_Encrypt()
  5753 ms  0x7dc7 symkey:0x7f7d076f7e00
  5764 ms  0x7dc7 PK11_Encrypt()
  5764 ms  0x7dc7 symkey:0x7f7d077dc080
           /* TID 0x7dcf */
  5781 ms  0x7dcf PR_Close()
  5781 ms  0x7dcf fd:0x7f7d077912e0
  5818 ms  0x7dcf PR_Close()
  5818 ms  0x7dcf fd:0x7f7d0766d6d0
           /* TID 0x7dc7 */
  5828 ms  0x7dc7 PK11_Encrypt()
  5828 ms  0x7dc7 symkey:0x7f7d076f7e00
  5833 ms  0x7dc7 PK11_Encrypt()
  5833 ms  0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7dcf */
  5869 ms  0x7dcf PR_Close()
  5869 ms  0x7dcf fd:0x7f7d077912e0
  5909 ms  0x7dcf PR_Close()
  5909 ms  0x7dcf fd:0x7f7d07791850
           /* TID 0x7dc7 */
  5941 ms  0x7dc7 PR_Close()
  5941 ms  0x7dc7 fd:0x7f7d194dac40
           /* TID 0x7dbc */
  5943 ms  0x7dbc EC_ValidatePublicKey()
  5946 ms  0x7dbc ret:0x0
  5946 ms  0x7dbc EC_ValidatePublicKey()
  5948 ms  0x7dbc ret:0x0
  5948 ms  0x7dbc EC_ValidatePublicKey()
  5949 ms  0x7dbc ret:0x0
  5949 ms  0x7dbc EC_ValidatePublicKey()
  5951 ms  0x7dbc ret:0x0
  5951 ms  0x7dbc EC_ValidatePublicKey()
  5953 ms  0x7dbc ret:0x0
  5953 ms  0x7dbc EC_ValidatePublicKey()
  5956 ms  0x7dbc ret:0x0
  5957 ms  0x7dbc EC_ValidatePublicKey()
  5958 ms  0x7dbc ret:0x0
  5958 ms  0x7dbc EC_ValidatePublicKey()
  5959 ms  0x7dbc ret:0x0
  5959 ms  0x7dbc EC_ValidatePublicKey()
  5961 ms  0x7dbc ret:0x0
  5961 ms  0x7dbc EC_ValidatePublicKey()
  5962 ms  0x7dbc ret:0x0
           /* TID 0x7dc7 */
  5963 ms  0x7dc7 PK11_Encrypt()
  5963 ms  0x7dc7 symkey:0x7f7d077dbc00
  5964 ms  0x7dc7 PK11_Encrypt()
  5964 ms  0x7dc7 symkey:0x7f7d076f7e00
  5964 ms  0x7dc7 PR_Close()
  5964 ms  0x7dc7 fd:0x7f7d18334c10
  5964 ms     | 0x7dc7 PK11_Encrypt()
  5964 ms     | 0x7dc7 symkey:0x7f7d18333880
  5964 ms  0x7dc7 PR_Close()
  5964 ms  0x7dc7 fd:0x7f7d1e6c8df0
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d19d35fd0
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d18741280
  5965 ms     | 0x7dc7 PK11_Encrypt()
  5965 ms     | 0x7dc7 symkey:0x7f7d18caf400
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d18741730
  5965 ms     | 0x7dc7 PK11_Encrypt()
  5965 ms     | 0x7dc7 symkey:0x7f7d19dd8700
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d07791370
  5965 ms     | 0x7dc7 PK11_Encrypt()
  5965 ms     | 0x7dc7 symkey:0x7f7d077dc080
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d0743ae80
  5965 ms     | 0x7dc7 PK11_Encrypt()
  5965 ms     | 0x7dc7 symkey:0x7f7d077dbc00
  5965 ms  0x7dc7 PR_Close()
  5965 ms  0x7dc7 fd:0x7f7d076f3820
  5965 ms     | 0x7dc7 PK11_Encrypt()
  5965 ms     | 0x7dc7 symkey:0x7f7d076f7e00
           /* TID 0x7e1f */
  5966 ms  0x7e1f PR_Close()
  5966 ms  0x7e1f fd:0x7f7d0743ae80
  5966 ms  0x7e1f PR_Close()
  5966 ms  0x7e1f fd:0x7f7d0743ae80
           /* TID 0x7dbc */
  5971 ms  0x7dbc PR_Close()
  5971 ms  0x7dbc fd:0x7f7d1d3b1ac0
  5971 ms  0x7dbc PR_Close()
  5971 ms  0x7dbc fd:0x7f7d18334610
  5972 ms  0x7dbc PR_Close()
  5972 ms  0x7dbc fd:0x7f7d18334760
  5972 ms  0x7dbc PR_Close()
  5972 ms  0x7dbc fd:0x7f7d18334610
  5973 ms  0x7dbc PR_Close()
  5973 ms  0x7dbc fd:0x7f7d18334760
  5973 ms  0x7dbc PR_Close()
  5973 ms  0x7dbc fd:0x7f7d18334610
           /* TID 0x7e33 */
  5976 ms  0x7e33 PR_Close()
  5976 ms  0x7e33 fd:0x7f7d18334ca0
           /* TID 0x7dbc */
  5991 ms  0x7dbc PR_Close()
  5991 ms  0x7dbc fd:0x7f7d18334760
  5991 ms  0x7dbc PR_Close()
  5991 ms  0x7dbc fd:0x7f7d1a938d60
  5992 ms  0x7dbc PR_Close()
  5992 ms  0x7dbc fd:0x7f7d18334760
  5992 ms  0x7dbc PR_Close()
  5992 ms  0x7dbc fd:0x7f7d1a938d60
  5993 ms  0x7dbc PR_Close()
  5993 ms  0x7dbc fd:0x7f7d237c89a0
  5993 ms  0x7dbc PR_Close()
  5993 ms  0x7dbc fd:0x7f7d237c88b0
  5993 ms  0x7dbc PR_Close()
  5993 ms  0x7dbc fd:0x7f7d237c8a60
  5995 ms  0x7dbc PR_Close()
  5995 ms  0x7dbc fd:0x7f7d19af1790
  5996 ms  0x7dbc PR_Close()
  5996 ms  0x7dbc fd:0x7f7d19af1790
  5998 ms  0x7dbc PR_Close()
  5998 ms  0x7dbc fd:0x7f7d18334760
  5998 ms  0x7dbc PR_Close()
  5998 ms  0x7dbc fd:0x7f7d19d777c0
  5999 ms  0x7dbc PR_Close()
  5999 ms  0x7dbc fd:0x7f7d18334760
  5999 ms  0x7dbc PR_Close()
  5999 ms  0x7dbc fd:0x7f7d19d777c0
  6001 ms  0x7dbc PR_Close()
  6001 ms  0x7dbc fd:0x7f7d1a938d60
  6003 ms  0x7dbc PR_Close()
  6003 ms  0x7dbc fd:0x7f7d1a938d60
  6004 ms  0x7dbc PR_Close()
  6004 ms  0x7dbc fd:0x7f7d18334760
  6004 ms  0x7dbc PR_Close()
  6004 ms  0x7dbc fd:0x7f7d1a938dc0
  6005 ms  0x7dbc PR_Close()
  6005 ms  0x7dbc fd:0x7f7d18334760
  6005 ms  0x7dbc PR_Close()
  6005 ms  0x7dbc fd:0x7f7d1a938dc0
  6008 ms  0x7dbc PR_Close()
  6008 ms  0x7dbc fd:0x7f7d1b77b190
  6009 ms  0x7dbc PR_Close()
  6009 ms  0x7dbc fd:0x7f7d1b77b190
  6016 ms  0x7dbc PR_Close()
  6016 ms  0x7dbc fd:0x7f7d1b77be80
  6017 ms  0x7dbc PR_Close()
  6017 ms  0x7dbc fd:0x7f7d1b77be80
  6021 ms  0x7dbc PR_Close()
  6021 ms  0x7dbc fd:0x7f7d1b77bf10
           /* TID 0x7e33 */
  6029 ms  0x7e33 PR_Close()
  6029 ms  0x7e33 fd:0x7f7d076f3670
           /* TID 0x7dbc */
  6030 ms  0x7dbc PR_Close()
  6030 ms  0x7dbc fd:0x7f7d18334760
  6030 ms  0x7dbc PR_Close()
  6030 ms  0x7dbc fd:0x7f7d07725f70
           /* TID 0x7e33 */
  6030 ms  0x7e33 PR_Close()
  6030 ms  0x7e33 fd:0x7f7d076f3670
  6036 ms  0x7e33 PR_Close()
  6036 ms  0x7e33 fd:0x7f7d18334ca0
  6063 ms  0x7e33 PR_Close()
  6063 ms  0x7e33 fd:0x7f7d0743a070
           /* TID 0x7dc1 */
  6076 ms  0x7dc1 PR_Close()
  6076 ms  0x7dc1 fd:0x7f7d2212edf0
  6082 ms  0x7dc1 PR_Close()
  6082 ms  0x7dc1 fd:0x7f7d1e858760
           /* TID 0x7e33 */
  6088 ms  0x7e33 PR_Close()
  6088 ms  0x7e33 fd:0x7f7d077ffca0
           /* TID 0x7dc7 */
  6094 ms  0x7dc7 PR_Close()
  6094 ms  0x7dc7 fd:0x7f7d275b50d0
           /* TID 0x7e1f */
  6095 ms  0x7e1f PR_Close()
  6095 ms  0x7e1f fd:0x7f7d18741790
  6095 ms  0x7e1f PR_Close()
  6095 ms  0x7e1f fd:0x7f7d0743a040
  6095 ms  0x7e1f PR_Close()
  6095 ms  0x7e1f fd:0x7f7d0743a040
  6095 ms  0x7e1f PR_Close()
  6095 ms  0x7e1f fd:0x7f7d0743a040
           /* TID 0x7e33 */
  6096 ms  0x7e33 PR_Close()
  6096 ms  0x7e33 fd:0x7f7d18334ca0
           /* TID 0x7dcf */
  6098 ms  0x7dcf PR_Close()
  6098 ms  0x7dcf fd:0x7f7d194daf70
  6098 ms  0x7dcf PR_Close()
  6098 ms  0x7dcf fd:0x7f7d194dafd0
           /* TID 0x7dc1 */
  6105 ms  0x7dc1 PR_Close()
  6105 ms  0x7dc1 fd:0x7f7d19d772b0
           /* TID 0x7dbc */
  6108 ms  0x7dbc PR_Close()
  6108 ms  0x7dbc fd:0x7f7d18334760
  6108 ms  0x7dbc PR_Close()
  6108 ms  0x7dbc fd:0x7f7d07791b20
           /* TID 0x7e33 */
  6109 ms  0x7e33 PR_Close()
  6109 ms  0x7e33 fd:0x7f7d18334c10
  6112 ms  0x7e33 PR_Close()
  6112 ms  0x7e33 fd:0x7f7d077919d0
  6183 ms  0x7e33 PR_Close()
  6183 ms  0x7e33 fd:0x7f7d075430a0
  6186 ms  0x7e33 PR_Close()
  6186 ms  0x7e33 fd:0x7f7d075430a0
  6192 ms  0x7e33 PR_Close()
  6192 ms  0x7e33 fd:0x7f7d075431c0
  6193 ms  0x7e33 PR_Close()
  6193 ms  0x7e33 fd:0x7f7d075431f0
  6203 ms  0x7e33 PR_Close()
  6203 ms  0x7e33 fd:0x7f7d0766d430
  6209 ms  0x7e33 PR_Close()
  6209 ms  0x7e33 fd:0x7f7d0766de80
  6215 ms  0x7e33 PR_Close()
  6215 ms  0x7e33 fd:0x7f7d07725910
  6228 ms  0x7e33 PR_Close()
  6228 ms  0x7e33 fd:0x7f7d07791130
  6229 ms  0x7e33 PR_Close()
  6229 ms  0x7e33 fd:0x7f7d07791130
           /* TID 0x7dbc */
  6408 ms  0x7dbc PR_Close()
  6408 ms  0x7dbc fd:0x7f7d0743a8b0
  6408 ms  0x7dbc PR_Close()
  6408 ms  0x7dbc fd:0x7f7d0743a8b0
  6423 ms  0x7dbc PR_Close()
  6423 ms  0x7dbc fd:0x7f7d40ada130
  6423 ms  0x7dbc PR_Close()
  6423 ms  0x7dbc fd:0x7f7d40ada190
Process terminated
