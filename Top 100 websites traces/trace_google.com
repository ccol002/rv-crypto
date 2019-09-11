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
           /* TID 0x63b3 */
    54 ms  SECKEY_ECParamsToKeySize()
    54 ms  0x63b3 ret:0x100
    54 ms  0x63b3 SECKEY_CreateECPrivateKey()
    54 ms  0x63b3 cx:0x7f9fdb6513e8
    55 ms     | 0x63b3 EC_ValidatePublicKey()
    57 ms     | 0x63b3 ret:0x0
    58 ms  0x63b3 ret:0x7f9fdae35820::7f9fdae35820  a0 4b fe da                                      .K..
    58 ms  0x63b3 PK11_PubDeriveWithKDF()
    58 ms  0x63b3 seckey:0x7f9fdae35820
    58 ms     | 0x63b3 EC_ValidatePublicKey()
    60 ms     | 0x63b3 ret:0x0
    62 ms  0x63b3 ret:0x7f9fdbe94e00
    62 ms  0x63b3 PK11_DeriveWithFlags()
    62 ms  0x63b3 basekey:0x7f9fdbe94e00
    62 ms     | 0x63b3 PK11_DeriveWithTemplate()
    62 ms  0x63b3 ret:0x7f9fea440500
    62 ms  0x63b3 PK11_Derive()
    62 ms  0x63b3 basekey:0x7f9fea440500
    62 ms     | 0x63b3 PK11_DeriveWithTemplate()
    62 ms  0x63b3 ret:0x7f9fea440580
    62 ms  0x63b3 SECKEY_DestroyPrivateKey()
    62 ms  0x63b3 privk:0x7f9fdae35820::7f9fdae35820  a0 4b fe da                                      .K..
    62 ms  0x63b3 privk:0x7f9fdae35820::7f9fdae35820  e5 e5 e5 e5                                      ....
    62 ms  0x63b3 PK11_Encrypt()
    62 ms  0x63b3 symkey:0x7f9fea440700
    62 ms  0x63b3 PR_Connect()
    62 ms  0x63b3 fd:0x7f9fdafebbe0
           /* TID 0x6423 */
   115 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   116 ms  0x6423 ret:0x0
           /* TID 0x63bb */
   117 ms  0x63bb PR_Close()
   117 ms  0x63bb fd:0x7f9fdafebb20
           /* TID 0x63b3 */
   117 ms  0x63b3 SSL_AuthCertificateComplete()
   117 ms  0x63b3 fd:0x7f9fdc4d9370
   117 ms  0x63b3 err:0x0
   117 ms  0x63b3 PK11_Encrypt()
   117 ms  0x63b3 symkey:0x7f9fea440700
   120 ms  0x63b3 SECKEY_DestroyPrivateKey()
   120 ms  0x63b3 privk:0x7f9fdae2c020::7f9fdae2c020  10 45 fe da                                      .E..
   121 ms  0x63b3 privk:0x7f9fdae2c020::7f9fdae2c020  e5 e5 e5 e5                                      ....
   121 ms  0x63b3 SECKEY_DestroyPrivateKey()
   121 ms  0x63b3 privk:0x7f9fdbed0820::7f9fdbed0820  30 43 fe da                                      0C..
   121 ms  0x63b3 privk:0x7f9fdbed0820::7f9fdbed0820  e5 e5 e5 e5                                      ....
   136 ms  0x63b3 SECKEY_DestroyPrivateKey()
   136 ms  0x63b3 privk:0x7f9fdb4ad820::7f9fdb4ad820  70 d9 1f dc                                      p...
   137 ms  0x63b3 privk:0x7f9fdb4ad820::7f9fdb4ad820  e5 e5 e5 e5                                      ....
   137 ms  0x63b3 SECKEY_DestroyPrivateKey()
   137 ms  0x63b3 privk:0x7f9fdb4ab820::7f9fdb4ab820  b0 5f 65 db                                      ._e.
   137 ms  0x63b3 privk:0x7f9fdb4ab820::7f9fdb4ab820  e5 e5 e5 e5                                      ....
   287 ms  0x63b3 SSL_ImportFD()
   288 ms  0x63b3 ret:0x7f9fdafebf70
   288 ms  0x63b3 SSL_AuthCertificateHook()
   288 ms  0x63b3 fd:0x7f9fdafebf70
   288 ms  0x63b3 ret:0x0
   288 ms  0x63b3 PR_Connect()
   288 ms  0x63b3 fd:0x7f9fdafebf70
   450 ms  0x63b3 SSL_ImportFD()
   450 ms  0x63b3 ret:0x7f9fea43e3d0
   450 ms  0x63b3 SSL_AuthCertificateHook()
   450 ms  0x63b3 fd:0x7f9fea43e3d0
   450 ms  0x63b3 ret:0x0
   450 ms  0x63b3 PR_Connect()
   450 ms  0x63b3 fd:0x7f9fea43e3d0
   475 ms  0x63b3 SECKEY_CreateECPrivateKey()
   475 ms  0x63b3 cx:0x7f9fdc4eba68
   476 ms     | 0x63b3 EC_ValidatePublicKey()
   476 ms     | 0x63b3 ret:0x0
   476 ms  0x63b3 ret:0x7f9fdae33020::7f9fdae33020  10 5f 65 db                                      ._e.
   477 ms  0x63b3 SECKEY_CreateECPrivateKey()
   477 ms  0x63b3 cx:0x7f9fdc4eba68
   478 ms     | 0x63b3 EC_ValidatePublicKey()
   482 ms     | 0x63b3 ret:0x0
   482 ms  0x63b3 ret:0x7f9fdae35820::7f9fdae35820  50 d6 1f dc                                      P...
   495 ms  0x63b3 SECKEY_CreateECPrivateKey()
   495 ms  0x63b3 cx:0x7f9fdafefb28
   496 ms     | 0x63b3 EC_ValidatePublicKey()
   496 ms     | 0x63b3 ret:0x0
   496 ms  0x63b3 ret:0x7f9fdae38020::7f9fdae38020  f0 d6 1f dc                                      ....
   496 ms  0x63b3 SECKEY_CreateECPrivateKey()
   496 ms  0x63b3 cx:0x7f9fdafefb28
   498 ms     | 0x63b3 EC_ValidatePublicKey()
   504 ms     | 0x63b3 ret:0x0
   504 ms  0x63b3 ret:0x7f9fdae3a020::7f9fdae3a020  70 d4 4f ea                                      p.O.
           /* TID 0x6423 */
   534 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   535 ms  0x6423 ret:0x0
           /* TID 0x63b3 */
   535 ms  SECKEY_ECParamsToKeySize()
   535 ms  0x63b3 ret:0x100
   535 ms  0x63b3 SECKEY_CreateECPrivateKey()
   535 ms  0x63b3 cx:0x7f9fdc4eba68
   537 ms     | 0x63b3 EC_ValidatePublicKey()
   540 ms     | 0x63b3 ret:0x0
   540 ms  0x63b3 ret:0x7f9fdae3d020::7f9fdae3d020  e0 32 2b de                                      .2+.
   541 ms  0x63b3 PK11_PubDeriveWithKDF()
   541 ms  0x63b3 seckey:0x7f9fdae3d020
   541 ms     | 0x63b3 EC_ValidatePublicKey()
   545 ms     | 0x63b3 ret:0x0
   548 ms  0x63b3 ret:0x7f9fdbe94e00
   548 ms  0x63b3 PK11_DeriveWithFlags()
   548 ms  0x63b3 basekey:0x7f9fdbe94e00
   548 ms     | 0x63b3 PK11_DeriveWithTemplate()
   548 ms  0x63b3 ret:0x7f9fe6275d80
   548 ms  0x63b3 PK11_Derive()
   548 ms  0x63b3 basekey:0x7f9fe6275d80
   549 ms     | 0x63b3 PK11_DeriveWithTemplate()
   549 ms  0x63b3 ret:0x7f9fe6275e00
   549 ms  0x63b3 SECKEY_DestroyPrivateKey()
   549 ms  0x63b3 privk:0x7f9fdae3d020::7f9fdae3d020  e0 32 2b de                                      .2+.
   549 ms  0x63b3 privk:0x7f9fdae3d020::7f9fdae3d020  e5 e5 e5 e5                                      ....
   549 ms  0x63b3 PK11_Encrypt()
   549 ms  0x63b3 symkey:0x7f9fe6275f80
   549 ms  0x63b3 SSL_AuthCertificateComplete()
   549 ms  0x63b3 fd:0x7f9fea43e3d0
   549 ms  0x63b3 err:0x0
   550 ms  0x63b3 PK11_Encrypt()
   550 ms  0x63b3 symkey:0x7f9fe6275f80
   601 ms  0x63b3 SECKEY_DestroyPrivateKey()
   601 ms  0x63b3 privk:0x7f9fdae35820::7f9fdae35820  50 d6 1f dc                                      P...
   601 ms  0x63b3 privk:0x7f9fdae35820::7f9fdae35820  e5 e5 e5 e5                                      ....
   601 ms  0x63b3 SECKEY_DestroyPrivateKey()
   601 ms  0x63b3 privk:0x7f9fdae33020::7f9fdae33020  10 5f 65 db                                      ._e.
   602 ms  0x63b3 privk:0x7f9fdae33020::7f9fdae33020  e5 e5 e5 e5                                      ....
   605 ms  0x63b3 PK11_Encrypt()
   605 ms  0x63b3 symkey:0x7f9fe6275f80
   635 ms  0x63b3 PK11_Encrypt()
   635 ms  0x63b3 symkey:0x7f9fe6275f80
   664 ms  0x63b3 PK11_Encrypt()
   664 ms  0x63b3 symkey:0x7f9fe6275f80
           /* TID 0x6420 */
   685 ms  0x6420 PR_Close()
   685 ms  0x6420 fd:0x7f9fea43e5e0
   687 ms  0x6420 PR_Close()
   687 ms  0x6420 fd:0x7f9fea43e5e0
           /* TID 0x63b3 */
   695 ms  0x63b3 PK11_Encrypt()
   695 ms  0x63b3 symkey:0x7f9fe6275f80
   718 ms  SECKEY_ECParamsToKeySize()
   718 ms  0x63b3 ret:0x100
   718 ms  0x63b3 SECKEY_CreateECPrivateKey()
   718 ms  0x63b3 cx:0x7f9fdafefb28
   719 ms     | 0x63b3 EC_ValidatePublicKey()
   725 ms     | 0x63b3 ret:0x0
   725 ms  0x63b3 ret:0x7f9fdae41020::7f9fdae41020  80 38 2b de                                      .8+.
   725 ms  0x63b3 PK11_PubDeriveWithKDF()
   725 ms  0x63b3 seckey:0x7f9fdae41020
   725 ms     | 0x63b3 EC_ValidatePublicKey()
   729 ms     | 0x63b3 ret:0x0
   733 ms  0x63b3 ret:0x7f9fdbe94e00
   734 ms  0x63b3 PK11_DeriveWithFlags()
   734 ms  0x63b3 basekey:0x7f9fdbe94e00
   734 ms     | 0x63b3 PK11_DeriveWithTemplate()
   734 ms  0x63b3 ret:0x7f9fea437300
   734 ms  0x63b3 PK11_Derive()
   734 ms  0x63b3 basekey:0x7f9fea437300
   734 ms     | 0x63b3 PK11_DeriveWithTemplate()
   734 ms  0x63b3 ret:0x7f9fea437380
   734 ms  0x63b3 SECKEY_DestroyPrivateKey()
   734 ms  0x63b3 privk:0x7f9fdae41020::7f9fdae41020  80 38 2b de                                      .8+.
   734 ms  0x63b3 privk:0x7f9fdae41020::7f9fdae41020  e5 e5 e5 e5                                      ....
   734 ms  0x63b3 PK11_Encrypt()
   734 ms  0x63b3 symkey:0x7f9fea437500
           /* TID 0x6423 */
   761 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   762 ms  0x6423 ret:0x0
           /* TID 0x63bb */
   762 ms  0x63bb PR_Close()
   762 ms  0x63bb fd:0x7f9fea43e8b0
           /* TID 0x63b3 */
   763 ms  0x63b3 SSL_AuthCertificateComplete()
   763 ms  0x63b3 fd:0x7f9fdafebf70
   763 ms  0x63b3 err:0x0
   763 ms  0x63b3 PK11_Encrypt()
   763 ms  0x63b3 symkey:0x7f9fea437500
           /* TID 0x6420 */
   778 ms  0x6420 PR_Close()
   778 ms  0x6420 fd:0x7f9fea43e910
           /* TID 0x63b3 */
   810 ms  0x63b3 PK11_Encrypt()
   810 ms  0x63b3 symkey:0x7f9fe6275f80
   842 ms  0x63b3 PK11_Encrypt()
   842 ms  0x63b3 symkey:0x7f9fe6275f80
   873 ms  0x63b3 PK11_Encrypt()
   873 ms  0x63b3 symkey:0x7f9fe6275f80
           /* TID 0x6413 */
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e910
   902 ms  0x6413 PR_Close()
   902 ms  0x6413 fd:0x7f9fea43e970
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e910
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e970
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e910
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e970
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e910
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e970
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e910
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e970
   903 ms  0x6413 PR_Close()
   903 ms  0x6413 fd:0x7f9fea43e910
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fea43e970
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fdafebb80
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fea43e940
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fdafebb80
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fea43e940
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fdafebb80
   904 ms  0x6413 PR_Close()
   904 ms  0x6413 fd:0x7f9fea43e940
   908 ms  0x6413 PR_Close()
   908 ms  0x6413 fd:0x7f9fdafebb80
   908 ms  0x6413 PR_Close()
   908 ms  0x6413 fd:0x7f9fea43e910
   910 ms  0x6413 PR_Close()
   910 ms  0x6413 fd:0x7f9fea43e910
   911 ms  0x6413 PR_Close()
   911 ms  0x6413 fd:0x7f9fea43e940
   913 ms  0x6413 PR_Close()
   913 ms  0x6413 fd:0x7f9fea43e940
   913 ms  0x6413 PR_Close()
   913 ms  0x6413 fd:0x7f9fea43e940
   916 ms  0x6413 PR_Close()
   916 ms  0x6413 fd:0x7f9fea43e940
   916 ms  0x6413 PR_Close()
   916 ms  0x6413 fd:0x7f9fea43e940
           /* TID 0x63b3 */
   941 ms  0x63b3 SECKEY_DestroyPrivateKey()
   941 ms  0x63b3 privk:0x7f9fdae3a020::7f9fdae3a020  70 d4 4f ea                                      p.O.
   941 ms  0x63b3 privk:0x7f9fdae3a020::7f9fdae3a020  e5 e5 e5 e5                                      ....
   941 ms  0x63b3 SECKEY_DestroyPrivateKey()
   941 ms  0x63b3 privk:0x7f9fdae38020::7f9fdae38020  f0 d6 1f dc                                      ....
   941 ms  0x63b3 privk:0x7f9fdae38020::7f9fdae38020  e5 e5 e5 e5                                      ....
           /* TID 0x6413 */
   963 ms  0x6413 PR_Close()
   963 ms  0x6413 fd:0x7f9fea43e940
   964 ms  0x6413 PR_Close()
   964 ms  0x6413 fd:0x7f9fdc4d9850
   971 ms  0x6413 PR_Close()
   971 ms  0x6413 fd:0x7f9fdc4d9850
   971 ms  0x6413 PR_Close()
   971 ms  0x6413 fd:0x7f9fdc4d9850
   978 ms  0x6413 PR_Close()
   978 ms  0x6413 fd:0x7f9fdc4d9850
   978 ms  0x6413 PR_Close()
   978 ms  0x6413 fd:0x7f9fdc4d9850
   980 ms  0x6413 PR_Close()
   980 ms  0x6413 fd:0x7f9fdc4d9850
   980 ms  0x6413 PR_Close()
   980 ms  0x6413 fd:0x7f9fdc4d9850
           /* TID 0x6410 */
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
   980 ms  0x6410 PR_Close()
   980 ms  0x6410 fd:0x7f9fdc4d9850
           /* TID 0x63bb */
  1188 ms  0x63bb PR_Close()
  1188 ms  0x63bb fd:0x7f9fdaed6e50
           /* TID 0x6420 */
  1482 ms  0x6420 PR_Close()
  1482 ms  0x6420 fd:0x7f9fdae74370
  1484 ms  0x6420 PR_Close()
  1484 ms  0x6420 fd:0x7f9fdae74370
  2883 ms  0x6420 PR_Close()
  2883 ms  0x6420 fd:0x7f9fdae74850
           /* TID 0x63bb */
  4204 ms  0x63bb PR_Close()
  4204 ms  0x63bb fd:0x7f9fdae74850
           /* TID 0x63b3 */
  4395 ms  0x63b3 SSL_ImportFD()
  4396 ms  0x63b3 ret:0x7f9fdb1ff250
  4396 ms  0x63b3 SSL_AuthCertificateHook()
  4396 ms  0x63b3 fd:0x7f9fdb1ff250
  4396 ms  0x63b3 ret:0x0
  4396 ms  0x63b3 PR_Connect()
  4396 ms  0x63b3 fd:0x7f9fdb1ff250
  4433 ms  0x63b3 SECKEY_CreateECPrivateKey()
  4433 ms  0x63b3 cx:0x7f9fdc4ec908
  4433 ms     | 0x63b3 EC_ValidatePublicKey()
  4433 ms     | 0x63b3 ret:0x0
  4433 ms  0x63b3 ret:0x7f9fdb1d3020::7f9fdb1d3020  d0 88 10 dc                                      ....
  4433 ms  0x63b3 SECKEY_CreateECPrivateKey()
  4433 ms  0x63b3 cx:0x7f9fdc4ec908
  4434 ms     | 0x63b3 EC_ValidatePublicKey()
  4435 ms     | 0x63b3 ret:0x0
  4436 ms  0x63b3 ret:0x7f9fdb1d5020::7f9fdb1d5020  a0 8b 10 dc                                      ....
  4490 ms  0x63b3 PK11_Derive()
  4490 ms  0x63b3 basekey:0x7f9fdbe94e00
  4490 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4490 ms  0x63b3 ret:0x7f9fdc10d700
  4490 ms  0x63b3 PK11_PubDeriveWithKDF()
  4490 ms  0x63b3 seckey:0x7f9fdb1d3020
  4490 ms     | 0x63b3 EC_ValidatePublicKey()
  4490 ms     | 0x63b3 ret:0x0
  4492 ms  0x63b3 ret:0x7f9fdbe94e00
  4492 ms  SECKEY_ECParamsToKeySize()
  4492 ms  0x63b3 ret:0xff
  4492 ms  0x63b3 PK11_DeriveWithFlags()
  4492 ms  0x63b3 basekey:0x7f9fdc10d700
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdc10da00
  4492 ms  0x63b3 PK11_Derive()
  4492 ms  0x63b3 basekey:0x7f9fdbe94e00
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdc10dc00
  4492 ms  0x63b3 PK11_DeriveWithFlags()
  4492 ms  0x63b3 basekey:0x7f9fdc10dc00
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdc10d700
  4492 ms  0x63b3 PK11_DeriveWithFlags()
  4492 ms  0x63b3 basekey:0x7f9fdc10dc00
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdbe94e00
  4492 ms  0x63b3 PK11_DeriveWithFlags()
  4492 ms  0x63b3 basekey:0x7f9fdc10dc00
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdc10da00
  4492 ms  0x63b3 PK11_Derive()
  4492 ms  0x63b3 basekey:0x7f9fdc10dc80
  4492 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4492 ms  0x63b3 ret:0x7f9fdc10dd00
  4492 ms  0x63b3 PK11_DeriveWithFlags()
  4492 ms  0x63b3 basekey:0x7f9fdbe94e00
  4493 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4493 ms  0x63b3 ret:0x7f9fdc10dc00
  4493 ms  0x63b3 PK11_DeriveWithFlags()
  4493 ms  0x63b3 basekey:0x7f9fdbe94e00
  4493 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4493 ms  0x63b3 ret:0x7f9fdc10da00
  4497 ms  SECKEY_ECParamsToKeySize()
  4497 ms  0x63b3 ret:0x100
  4497 ms  SECKEY_ECParamsToBasePointOrderLen()
  4497 ms  0x63b3 ret:0x100
  4497 ms  SECKEY_ECParamsToBasePointOrderLen()
  4497 ms  0x63b3 ret:0x100
  4497 ms  0x63b3 EC_ValidatePublicKey()
  4503 ms  0x63b3 ret:0x0
  4508 ms  0x63b3 PK11_DeriveWithFlags()
  4508 ms  0x63b3 basekey:0x7f9fdbe94e00
  4508 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4508 ms  0x63b3 ret:0x7f9fdc10da00
  4509 ms  0x63b3 PR_Connect()
  4509 ms  0x63b3 fd:0x7f9fdb1fff10
           /* TID 0x63bb */
  4692 ms  0x63bb PR_Close()
  4692 ms  0x63bb fd:0x7f9fdb1ffa60
           /* TID 0x6423 */
  4692 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4693 ms  0x6423 ret:0x0
           /* TID 0x63b3 */
  4707 ms  0x63b3 SSL_AuthCertificateComplete()
  4707 ms  0x63b3 fd:0x7f9fdb1ff250
  4707 ms  0x63b3 err:0x0
  4707 ms     | 0x63b3 PK11_DeriveWithFlags()
  4707 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  4707 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10da00
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  4708 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10dc80
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  4708 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10d800
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10d700
  4708 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10d980
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10d700
  4708 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10da80
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10dc80
  4708 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4708 ms     | 0x63b3 ret:0x7f9fdc10da80
  4708 ms     | 0x63b3 PK11_DeriveWithFlags()
  4708 ms     | 0x63b3 basekey:0x7f9fdc10dc80
  4709 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4709 ms     | 0x63b3 ret:0x7f9fdc10df00
  4709 ms     | 0x63b3 PK11_DeriveWithFlags()
  4709 ms     | 0x63b3 basekey:0x7f9fdc10d700
  4709 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4709 ms     | 0x63b3 ret:0x7f9fdc10dc00
  4709 ms     | 0x63b3 PK11_Encrypt()
  4709 ms     | 0x63b3 symkey:0x7f9fdc10d980
  4710 ms     | 0x63b3 PK11_DeriveWithFlags()
  4710 ms     | 0x63b3 basekey:0x7f9fdc10da00
  4710 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4710 ms     | 0x63b3 ret:0x7f9fdc10dc00
  4710 ms     | 0x63b3 PK11_DeriveWithFlags()
  4710 ms     | 0x63b3 basekey:0x7f9fdc10da00
  4710 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4710 ms     | 0x63b3 ret:0x7f9fdc10df00
  4710 ms     | 0x63b3 PK11_DeriveWithFlags()
  4710 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  4710 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  4713 ms     | 0x63b3 ret:0x7f9fdc10d980
  4713 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  4713 ms     | 0x63b3 privk:0x7f9fdb1d5020::7f9fdb1d5020  a0 8b 10 dc                                      ....
  4713 ms     | 0x63b3 privk:0x7f9fdb1d5020::7f9fdb1d5020  e5 e5 e5 e5                                      ....
  4714 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  4714 ms     | 0x63b3 privk:0x7f9fdb1d3020::7f9fdb1d3020  d0 88 10 dc                                      ....
  4714 ms     | 0x63b3 privk:0x7f9fdb1d3020::7f9fdb1d3020  e5 e5 e5 e5                                      ....
  4716 ms  0x63b3 PK11_Encrypt()
  4716 ms  0x63b3 symkey:0x7f9fdc10dc00
  4717 ms  0x63b3 PK11_Encrypt()
  4717 ms  0x63b3 symkey:0x7f9fdc10dc00
  4824 ms  0x63b3 PK11_DeriveWithFlags()
  4824 ms  0x63b3 basekey:0x7f9fdc10d980
  4824 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4824 ms  0x63b3 ret:0x7f9fdbe94e00
  4824 ms  0x63b3 PK11_DeriveWithFlags()
  4824 ms  0x63b3 basekey:0x7f9fdc10d980
  4824 ms     | 0x63b3 PK11_DeriveWithTemplate()
  4824 ms  0x63b3 ret:0x7f9fdbe94e00
  4824 ms  0x63b3 PK11_Encrypt()
  4824 ms  0x63b3 symkey:0x7f9fdc10dc00
           /* TID 0x63cc */
  4925 ms  0x63cc PR_Close()
  4925 ms  0x63cc fd:0x7f9fdc1132e0
           /* TID 0x63b3 */
  4963 ms  0x63b3 PK11_Encrypt()
  4963 ms  0x63b3 symkey:0x7f9fdc10dc00
           /* TID 0x63bb */
  4994 ms  0x63bb PR_Close()
  4994 ms  0x63bb fd:0x7f9fe59e5d00
           /* TID 0x63b3 */
  5016 ms  0x63b3 PK11_Encrypt()
  5016 ms  0x63b3 symkey:0x7f9fdc10dc00
  5016 ms  0x63b3 PK11_Encrypt()
  5016 ms  0x63b3 symkey:0x7f9fdc10dc00
  5018 ms  0x63b3 PK11_Encrypt()
  5018 ms  0x63b3 symkey:0x7f9fdc10dc00
  5025 ms  0x63b3 PK11_Encrypt()
  5025 ms  0x63b3 symkey:0x7f9fdc10dc00
  5029 ms  0x63b3 SSL_ImportFD()
  5029 ms  0x63b3 ret:0x7f9fc9ff0e20
  5029 ms  0x63b3 SSL_AuthCertificateHook()
  5029 ms  0x63b3 fd:0x7f9fc9ff0e20
  5029 ms  0x63b3 ret:0x0
  5029 ms  0x63b3 PR_Connect()
  5029 ms  0x63b3 fd:0x7f9fc9ff0e20
  5031 ms  0x63b3 SSL_ImportFD()
  5032 ms  0x63b3 ret:0x7f9fdafe6f70
  5032 ms  0x63b3 SSL_AuthCertificateHook()
  5032 ms  0x63b3 fd:0x7f9fdafe6f70
  5032 ms  0x63b3 ret:0x0
  5032 ms  0x63b3 PR_Connect()
  5032 ms  0x63b3 fd:0x7f9fdafe6f70
  5038 ms  0x63b3 PK11_Encrypt()
  5038 ms  0x63b3 symkey:0x7f9fdc10dc00
  5038 ms  0x63b3 PK11_Encrypt()
  5038 ms  0x63b3 symkey:0x7f9fdc10dc00
  5047 ms  0x63b3 PK11_Encrypt()
  5047 ms  0x63b3 symkey:0x7f9fdc10dc00
  5054 ms  0x63b3 PK11_Encrypt()
  5054 ms  0x63b3 symkey:0x7f9fdc10dc00
           /* TID 0x63bb */
  5055 ms  0x63bb PR_Close()
  5055 ms  0x63bb fd:0x7f9fc9ff03d0
           /* TID 0x63b3 */
  5067 ms  0x63b3 PK11_Encrypt()
  5067 ms  0x63b3 symkey:0x7f9fdc10dc00
  5067 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5067 ms  0x63b3 cx:0x7f9fdc4ed2c8
  5068 ms     | 0x63b3 EC_ValidatePublicKey()
  5068 ms     | 0x63b3 ret:0x0
  5068 ms  0x63b3 ret:0x7f9fca01e020::7f9fca01e020  40 5c ff c9                                      @\..
  5068 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5068 ms  0x63b3 cx:0x7f9fdc4ed2c8
  5068 ms     | 0x63b3 EC_ValidatePublicKey()
  5070 ms     | 0x63b3 ret:0x0
  5070 ms  0x63b3 ret:0x7f9fca020020::7f9fca020020  10 5f ff c9                                      ._..
  5071 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5071 ms  0x63b3 cx:0x7f9fdc4ed468
  5072 ms     | 0x63b3 EC_ValidatePublicKey()
  5072 ms     | 0x63b3 ret:0x0
  5072 ms  0x63b3 ret:0x7f9fdb1df020::7f9fdb1df020  00 41 0a ca                                      .A..
  5072 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5072 ms  0x63b3 cx:0x7f9fdc4ed468
  5073 ms     | 0x63b3 EC_ValidatePublicKey()
  5076 ms     | 0x63b3 ret:0x0
  5076 ms  0x63b3 ret:0x7f9fca0ad020::7f9fca0ad020  20 44 0a ca                                       D..
  5078 ms  0x63b3 SSL_ImportFD()
  5078 ms  0x63b3 ret:0x7f9fc9ff0c40
  5078 ms  0x63b3 SSL_AuthCertificateHook()
  5078 ms  0x63b3 fd:0x7f9fc9ff0c40
  5078 ms  0x63b3 ret:0x0
  5079 ms  0x63b3 PR_Connect()
  5079 ms  0x63b3 fd:0x7f9fc9ff0c40
  5116 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5116 ms  0x63b3 cx:0x7f9fdc4ed608
  5117 ms     | 0x63b3 EC_ValidatePublicKey()
  5117 ms     | 0x63b3 ret:0x0
  5117 ms  0x63b3 ret:0x7f9fca0b0020::7f9fca0b0020  f0 46 0a ca                                      .F..
  5117 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5117 ms  0x63b3 cx:0x7f9fdc4ed608
  5118 ms     | 0x63b3 EC_ValidatePublicKey()
  5119 ms     | 0x63b3 ret:0x0
  5119 ms  0x63b3 ret:0x7f9fca0b2020::7f9fca0b2020  d0 48 0a ca                                      .H..
  5124 ms  0x63b3 PK11_Derive()
  5124 ms  0x63b3 basekey:0x7f9fdbe94e00
  5124 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5124 ms  0x63b3 ret:0x7f9fdc10d700
  5124 ms  0x63b3 PK11_PubDeriveWithKDF()
  5124 ms  0x63b3 seckey:0x7f9fca01e020
  5124 ms     | 0x63b3 EC_ValidatePublicKey()
  5124 ms     | 0x63b3 ret:0x0
  5124 ms  0x63b3 ret:0x7f9fdbe94e00
  5124 ms  SECKEY_ECParamsToKeySize()
  5124 ms  0x63b3 ret:0xff
  5124 ms  0x63b3 PK11_DeriveWithFlags()
  5124 ms  0x63b3 basekey:0x7f9fdc10d700
  5124 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5124 ms  0x63b3 ret:0x7f9fdc10dd00
  5124 ms  0x63b3 PK11_Derive()
  5124 ms  0x63b3 basekey:0x7f9fdbe94e00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdc10df00
  5125 ms  0x63b3 PK11_DeriveWithFlags()
  5125 ms  0x63b3 basekey:0x7f9fdc10df00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdc10d700
  5125 ms  0x63b3 PK11_DeriveWithFlags()
  5125 ms  0x63b3 basekey:0x7f9fdc10df00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdbe94e00
  5125 ms  0x63b3 PK11_DeriveWithFlags()
  5125 ms  0x63b3 basekey:0x7f9fdc10df00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdc10dd00
  5125 ms  0x63b3 PK11_Derive()
  5125 ms  0x63b3 basekey:0x7f9fca082580
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fca082600
  5125 ms  0x63b3 PK11_DeriveWithFlags()
  5125 ms  0x63b3 basekey:0x7f9fdbe94e00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdc10df00
  5125 ms  0x63b3 PK11_DeriveWithFlags()
  5125 ms  0x63b3 basekey:0x7f9fdbe94e00
  5125 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5125 ms  0x63b3 ret:0x7f9fdc10dd00
  5127 ms  SECKEY_ECParamsToKeySize()
  5127 ms  0x63b3 ret:0x100
  5127 ms  SECKEY_ECParamsToBasePointOrderLen()
  5127 ms  0x63b3 ret:0x100
  5127 ms  SECKEY_ECParamsToBasePointOrderLen()
  5127 ms  0x63b3 ret:0x100
  5127 ms  0x63b3 EC_ValidatePublicKey()
  5129 ms  0x63b3 ret:0x0
  5131 ms  0x63b3 PK11_DeriveWithFlags()
  5131 ms  0x63b3 basekey:0x7f9fdbe94e00
  5131 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5131 ms  0x63b3 ret:0x7f9fdc10dd00
  5133 ms  0x63b3 PK11_Derive()
  5133 ms  0x63b3 basekey:0x7f9fdc10dd00
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082580
  5133 ms  0x63b3 PK11_PubDeriveWithKDF()
  5133 ms  0x63b3 seckey:0x7f9fdb1df020
  5133 ms     | 0x63b3 EC_ValidatePublicKey()
  5133 ms     | 0x63b3 ret:0x0
  5133 ms  0x63b3 ret:0x7f9fdc10dd00
  5133 ms  SECKEY_ECParamsToKeySize()
  5133 ms  0x63b3 ret:0xff
  5133 ms  0x63b3 PK11_DeriveWithFlags()
  5133 ms  0x63b3 basekey:0x7f9fca082580
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082680
  5133 ms  0x63b3 PK11_Derive()
  5133 ms  0x63b3 basekey:0x7f9fdc10dd00
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082780
  5133 ms  0x63b3 PK11_DeriveWithFlags()
  5133 ms  0x63b3 basekey:0x7f9fca082780
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082580
  5133 ms  0x63b3 PK11_DeriveWithFlags()
  5133 ms  0x63b3 basekey:0x7f9fca082780
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fdc10dd00
  5133 ms  0x63b3 PK11_DeriveWithFlags()
  5133 ms  0x63b3 basekey:0x7f9fca082780
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082680
  5133 ms  0x63b3 PK11_Derive()
  5133 ms  0x63b3 basekey:0x7f9fca082b80
  5133 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5133 ms  0x63b3 ret:0x7f9fca082c00
  5133 ms  0x63b3 PK11_DeriveWithFlags()
  5133 ms  0x63b3 basekey:0x7f9fdc10dd00
  5134 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5134 ms  0x63b3 ret:0x7f9fca082780
  5134 ms  0x63b3 PK11_DeriveWithFlags()
  5134 ms  0x63b3 basekey:0x7f9fdc10dd00
  5134 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5134 ms  0x63b3 ret:0x7f9fca082680
  5134 ms  SECKEY_ECParamsToKeySize()
  5134 ms  0x63b3 ret:0x100
  5134 ms  SECKEY_ECParamsToBasePointOrderLen()
  5134 ms  0x63b3 ret:0x100
  5134 ms  SECKEY_ECParamsToBasePointOrderLen()
  5134 ms  0x63b3 ret:0x100
  5134 ms  0x63b3 EC_ValidatePublicKey()
  5135 ms  0x63b3 ret:0x0
  5137 ms  0x63b3 PK11_DeriveWithFlags()
  5137 ms  0x63b3 basekey:0x7f9fdc10dd00
  5137 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5137 ms  0x63b3 ret:0x7f9fca082680
  5140 ms  0x63b3 PR_Connect()
  5140 ms  0x63b3 fd:0x7f9fca0925e0
           /* TID 0x63bb */
  5153 ms  0x63bb PR_Close()
  5153 ms  0x63bb fd:0x7f9fca092520
  5165 ms  0x63bb PR_Close()
  5165 ms  0x63bb fd:0x7f9fc9ff0670
  5166 ms  0x63bb PR_Close()
  5166 ms  0x63bb fd:0x7f9fc9ff0640
  5167 ms  0x63bb PR_Close()
  5167 ms  0x63bb fd:0x7f9fc9ff0670
  5168 ms  0x63bb PR_Close()
  5168 ms  0x63bb fd:0x7f9fc9ff0640
           /* TID 0x63b3 */
  5169 ms  0x63b3 PK11_Encrypt()
  5169 ms  0x63b3 symkey:0x7f9fdc10dc00
  5173 ms  0x63b3 PK11_Derive()
  5173 ms  0x63b3 basekey:0x7f9fca082680
  5173 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5173 ms  0x63b3 ret:0x7f9fca082b80
  5173 ms  0x63b3 PK11_PubDeriveWithKDF()
  5173 ms  0x63b3 seckey:0x7f9fca0b0020
  5173 ms     | 0x63b3 EC_ValidatePublicKey()
  5173 ms     | 0x63b3 ret:0x0
  5174 ms  0x63b3 ret:0x7f9fca082680
  5174 ms  SECKEY_ECParamsToKeySize()
  5174 ms  0x63b3 ret:0xff
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fca082b80
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fc9fade80
  5174 ms  0x63b3 PK11_Derive()
  5174 ms  0x63b3 basekey:0x7f9fca082680
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fc9fdcc80
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fc9fdcc80
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fca082b80
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fc9fdcc80
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fca082680
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fc9fdcc80
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fc9fade80
  5174 ms  0x63b3 PK11_Derive()
  5174 ms  0x63b3 basekey:0x7f9fca081180
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fca081580
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fca082680
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fc9fdcc80
  5174 ms  0x63b3 PK11_DeriveWithFlags()
  5174 ms  0x63b3 basekey:0x7f9fca082680
  5174 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5174 ms  0x63b3 ret:0x7f9fc9fade80
  5184 ms  SECKEY_ECParamsToKeySize()
  5184 ms  0x63b3 ret:0x100
  5184 ms  SECKEY_ECParamsToBasePointOrderLen()
  5184 ms  0x63b3 ret:0x100
  5184 ms  SECKEY_ECParamsToBasePointOrderLen()
  5184 ms  0x63b3 ret:0x100
  5184 ms  0x63b3 EC_ValidatePublicKey()
  5185 ms  0x63b3 ret:0x0
  5187 ms  0x63b3 PK11_DeriveWithFlags()
  5187 ms  0x63b3 basekey:0x7f9fca082680
  5187 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5187 ms  0x63b3 ret:0x7f9fc9fade80
           /* TID 0x63bb */
  5189 ms  0x63bb PR_Close()
  5189 ms  0x63bb fd:0x7f9fca092070
           /* TID 0x63b3 */
  5190 ms  0x63b3 PR_Connect()
  5190 ms  0x63b3 fd:0x7f9fca092520
  5234 ms  0x63b3 PK11_Encrypt()
  5234 ms  0x63b3 symkey:0x7f9fdc10dc00
  5234 ms  0x63b3 PK11_Encrypt()
  5234 ms  0x63b3 symkey:0x7f9fdc10dc00
  5267 ms  0x63b3 PK11_Encrypt()
  5267 ms  0x63b3 symkey:0x7f9fdc10dc00
  5271 ms  0x63b3 SSL_ImportFD()
  5271 ms  0x63b3 ret:0x7f9fca092af0
  5271 ms  0x63b3 SSL_AuthCertificateHook()
  5271 ms  0x63b3 fd:0x7f9fca092af0
  5271 ms  0x63b3 ret:0x0
  5271 ms  0x63b3 PR_Connect()
  5271 ms  0x63b3 fd:0x7f9fca092af0
           /* TID 0x63bb */
  5275 ms  0x63bb PR_Close()
  5275 ms  0x63bb fd:0x7f9fca092460
           /* TID 0x6423 */
  5275 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5275 ms  0x6423 ret:0x0
           /* TID 0x63b3 */
  5275 ms  0x63b3 SSL_AuthCertificateComplete()
  5275 ms  0x63b3 fd:0x7f9fc9ff0e20
  5275 ms  0x63b3 err:0x0
  5275 ms     | 0x63b3 PK11_DeriveWithFlags()
  5275 ms     | 0x63b3 basekey:0x7f9fca082600
  5275 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9fade80
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fca082600
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fca081180
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fca082600
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0a880
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fdc10d700
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fdc10d700
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0a980
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fca081180
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0a980
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fca081180
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0aa00
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fdc10d700
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fdc10df00
  5276 ms     | 0x63b3 PK11_Encrypt()
  5276 ms     | 0x63b3 symkey:0x7f9fc9e0a900
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fc9fade80
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fdc10df00
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fc9fade80
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0aa00
  5276 ms     | 0x63b3 PK11_DeriveWithFlags()
  5276 ms     | 0x63b3 basekey:0x7f9fca082600
  5276 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5276 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5276 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5276 ms     | 0x63b3 privk:0x7f9fca020020::7f9fca020020  10 5f ff c9                                      ._..
  5276 ms     | 0x63b3 privk:0x7f9fca020020::7f9fca020020  e5 e5 e5 e5                                      ....
  5276 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5276 ms     | 0x63b3 privk:0x7f9fca01e020::7f9fca01e020  40 5c ff c9                                      @\..
  5276 ms     | 0x63b3 privk:0x7f9fca01e020::7f9fca01e020  e5 e5 e5 e5                                      ....
  5277 ms  0x63b3 PK11_Encrypt()
  5277 ms  0x63b3 symkey:0x7f9fdc10df00
  5277 ms  0x63b3 PK11_Encrypt()
  5277 ms  0x63b3 symkey:0x7f9fdc10df00
  5302 ms  0x63b3 PK11_Encrypt()
  5302 ms  0x63b3 symkey:0x7f9fdc10dc00
           /* TID 0x63bb */
  5304 ms  0x63bb PR_Close()
  5304 ms  0x63bb fd:0x7f9fca0926d0
           /* TID 0x63b3 */
  5309 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5309 ms  0x63b3 cx:0x7f9fdc4edc88
  5311 ms     | 0x63b3 EC_ValidatePublicKey()
  5311 ms     | 0x63b3 ret:0x0
  5311 ms  0x63b3 ret:0x7f9fca01f020::7f9fca01f020  e0 87 e0 c9                                      ....
  5312 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5312 ms  0x63b3 cx:0x7f9fdc4edc88
  5313 ms     | 0x63b3 EC_ValidatePublicKey()
  5318 ms     | 0x63b3 ret:0x0
  5318 ms  0x63b3 ret:0x7f9fca0b7020::7f9fca0b7020  80 8d e0 c9                                      ....
  5318 ms  0x63b3 PK11_DeriveWithFlags()
  5318 ms  0x63b3 basekey:0x7f9fc9e0a900
  5318 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5318 ms  0x63b3 ret:0x7f9fdbe94e00
  5319 ms  0x63b3 PK11_DeriveWithFlags()
  5319 ms  0x63b3 basekey:0x7f9fc9e0a900
  5319 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5319 ms  0x63b3 ret:0x7f9fdbe94e00
  5319 ms  0x63b3 PK11_Encrypt()
  5319 ms  0x63b3 symkey:0x7f9fdc10df00
           /* TID 0x63bb */
  5327 ms  0x63bb PR_Close()
  5327 ms  0x63bb fd:0x7f9fc9ff0a90
  5334 ms  0x63bb PR_Close()
  5334 ms  0x63bb fd:0x7f9fc9ff0a90
           /* TID 0x6455 */
  5334 ms  0x6455 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5334 ms  0x6455 ret:0x0
           /* TID 0x63b3 */
  5335 ms  0x63b3 SSL_AuthCertificateComplete()
  5335 ms  0x63b3 fd:0x7f9fdafe6f70
  5335 ms  0x63b3 err:0x0
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082c00
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fdbe94e00
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082c00
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fdc10d700
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082c00
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fca082600
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082580
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fc9e0aa00
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082580
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fc9e0a380
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fdc10d700
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fc9e0a380
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fdc10d700
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fc9e0ad00
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fca082580
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fca082780
  5335 ms     | 0x63b3 PK11_Encrypt()
  5335 ms     | 0x63b3 symkey:0x7f9fc9e0aa00
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fdbe94e00
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5335 ms     | 0x63b3 ret:0x7f9fca082780
  5335 ms     | 0x63b3 PK11_DeriveWithFlags()
  5335 ms     | 0x63b3 basekey:0x7f9fdbe94e00
  5335 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5336 ms     | 0x63b3 ret:0x7f9fc9e0ad00
  5336 ms     | 0x63b3 PK11_DeriveWithFlags()
  5336 ms     | 0x63b3 basekey:0x7f9fca082c00
  5336 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5336 ms     | 0x63b3 ret:0x7f9fc9e0aa00
  5336 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5336 ms     | 0x63b3 privk:0x7f9fca0ad020::7f9fca0ad020  20 44 0a ca                                       D..
  5336 ms     | 0x63b3 privk:0x7f9fca0ad020::7f9fca0ad020  e5 e5 e5 e5                                      ....
  5336 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5336 ms     | 0x63b3 privk:0x7f9fdb1df020::7f9fdb1df020  00 41 0a ca                                      .A..
  5336 ms     | 0x63b3 privk:0x7f9fdb1df020::7f9fdb1df020  e5 e5 e5 e5                                      ....
  5336 ms  0x63b3 PK11_Encrypt()
  5336 ms  0x63b3 symkey:0x7f9fca082780
  5336 ms  0x63b3 PK11_Encrypt()
  5336 ms  0x63b3 symkey:0x7f9fca082780
  5356 ms  0x63b3 PK11_Encrypt()
  5356 ms  0x63b3 symkey:0x7f9fdc10df00
           /* TID 0x63bb */
  5357 ms  0x63bb PR_Close()
  5357 ms  0x63bb fd:0x7f9fca0924c0
           /* TID 0x63b3 */
  5363 ms  0x63b3 SSL_ImportFD()
  5364 ms  0x63b3 ret:0x7f9fca092a60
  5364 ms  0x63b3 SSL_AuthCertificateHook()
  5364 ms  0x63b3 fd:0x7f9fca092a60
  5364 ms  0x63b3 ret:0x0
  5364 ms  0x63b3 PR_Connect()
  5364 ms  0x63b3 fd:0x7f9fca092a60
  5366 ms  0x63b3 PK11_Encrypt()
  5366 ms  0x63b3 symkey:0x7f9fdc10dc00
  5366 ms  0x63b3 PK11_Encrypt()
  5366 ms  0x63b3 symkey:0x7f9fdc10dc00
  5372 ms  0x63b3 PK11_Derive()
  5372 ms  0x63b3 basekey:0x7f9fdc10dd00
  5372 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5372 ms  0x63b3 ret:0x7f9fca082580
  5372 ms  0x63b3 PK11_PubDeriveWithKDF()
  5372 ms  0x63b3 seckey:0x7f9fca01f020
  5372 ms     | 0x63b3 EC_ValidatePublicKey()
  5372 ms     | 0x63b3 ret:0x0
  5373 ms  0x63b3 ret:0x7f9fdc10dd00
  5373 ms  SECKEY_ECParamsToKeySize()
  5373 ms  0x63b3 ret:0xff
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fca082580
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fca082c00
  5373 ms  0x63b3 PK11_Derive()
  5373 ms  0x63b3 basekey:0x7f9fdc10dd00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fc9e0ad00
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fc9e0ad00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fca082580
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fc9e0ad00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fdc10dd00
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fc9e0ad00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fca082c00
  5373 ms  0x63b3 PK11_Derive()
  5373 ms  0x63b3 basekey:0x7f9fc9e0a280
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fc9e0ae80
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fdc10dd00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fc9e0ad00
  5373 ms  0x63b3 PK11_DeriveWithFlags()
  5373 ms  0x63b3 basekey:0x7f9fdc10dd00
  5373 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5373 ms  0x63b3 ret:0x7f9fca082c00
  5374 ms  SECKEY_ECParamsToKeySize()
  5374 ms  0x63b3 ret:0x100
  5374 ms  SECKEY_ECParamsToBasePointOrderLen()
  5374 ms  0x63b3 ret:0x100
  5374 ms  SECKEY_ECParamsToBasePointOrderLen()
  5374 ms  0x63b3 ret:0x100
  5374 ms  0x63b3 EC_ValidatePublicKey()
  5375 ms  0x63b3 ret:0x0
  5377 ms  0x63b3 PK11_DeriveWithFlags()
  5377 ms  0x63b3 basekey:0x7f9fdc10dd00
  5377 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5377 ms  0x63b3 ret:0x7f9fca082c00
  5377 ms  0x63b3 SSL_AuthCertificateComplete()
  5377 ms  0x63b3 fd:0x7f9fca092af0
  5377 ms  0x63b3 err:0x0
  5377 ms     | 0x63b3 PK11_DeriveWithFlags()
  5377 ms     | 0x63b3 basekey:0x7f9fc9e0ae80
  5377 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5377 ms     | 0x63b3 ret:0x7f9fca082c00
  5377 ms     | 0x63b3 PK11_DeriveWithFlags()
  5377 ms     | 0x63b3 basekey:0x7f9fc9e0ae80
  5377 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5377 ms     | 0x63b3 ret:0x7f9fc9e0a280
  5377 ms     | 0x63b3 PK11_DeriveWithFlags()
  5377 ms     | 0x63b3 basekey:0x7f9fc9e0ae80
  5377 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5377 ms     | 0x63b3 ret:0x7f9fc9e0b480
  5377 ms     | 0x63b3 PK11_DeriveWithFlags()
  5377 ms     | 0x63b3 basekey:0x7f9fca082580
  5377 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5378 ms     | 0x63b3 ret:0x7f9fc9e0b500
  5378 ms     | 0x63b3 PK11_DeriveWithFlags()
  5378 ms     | 0x63b3 basekey:0x7f9fca082580
  5378 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5378 ms     | 0x63b3 ret:0x7f9fc9e0b580
  5378 ms     | 0x63b3 PK11_DeriveWithFlags()
  5378 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5378 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5378 ms     | 0x63b3 ret:0x7f9fc9e0b580
  5378 ms     | 0x63b3 PK11_DeriveWithFlags()
  5378 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5378 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5378 ms     | 0x63b3 ret:0x7f9fc9e0b600
  5378 ms     | 0x63b3 PK11_DeriveWithFlags()
  5378 ms     | 0x63b3 basekey:0x7f9fca082580
  5378 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5378 ms     | 0x63b3 ret:0x7f9fc9e0ad00
  5378 ms     | 0x63b3 PK11_Encrypt()
  5378 ms     | 0x63b3 symkey:0x7f9fc9e0b500
  5381 ms     | 0x63b3 PK11_DeriveWithFlags()
  5381 ms     | 0x63b3 basekey:0x7f9fca082c00
  5381 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5381 ms     | 0x63b3 ret:0x7f9fc9e0ad00
  5381 ms     | 0x63b3 PK11_DeriveWithFlags()
  5381 ms     | 0x63b3 basekey:0x7f9fca082c00
  5381 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5381 ms     | 0x63b3 ret:0x7f9fc9e0b600
  5381 ms     | 0x63b3 PK11_DeriveWithFlags()
  5381 ms     | 0x63b3 basekey:0x7f9fc9e0ae80
  5381 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5381 ms     | 0x63b3 ret:0x7f9fc9e0b500
  5381 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5381 ms     | 0x63b3 privk:0x7f9fca0b7020::7f9fca0b7020  80 8d e0 c9                                      ....
  5381 ms     | 0x63b3 privk:0x7f9fca0b7020::7f9fca0b7020  e5 e5 e5 e5                                      ....
  5381 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5381 ms     | 0x63b3 privk:0x7f9fca01f020::7f9fca01f020  e0 87 e0 c9                                      ....
  5382 ms     | 0x63b3 privk:0x7f9fca01f020::7f9fca01f020  e5 e5 e5 e5                                      ....
  5382 ms  0x63b3 PK11_DeriveWithFlags()
  5382 ms  0x63b3 basekey:0x7f9fc9e0aa00
  5382 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5382 ms  0x63b3 ret:0x7f9fdc10dd00
  5382 ms  0x63b3 PK11_DeriveWithFlags()
  5382 ms  0x63b3 basekey:0x7f9fc9e0aa00
  5382 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5382 ms  0x63b3 ret:0x7f9fdc10dd00
  5382 ms  0x63b3 PK11_Encrypt()
  5382 ms  0x63b3 symkey:0x7f9fca082780
           /* TID 0x6456 */
  5382 ms  0x6456 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5382 ms  0x6456 ret:0x0
           /* TID 0x63bb */
  5383 ms  0x63bb PR_Close()
  5383 ms  0x63bb fd:0x7f9fca0920a0
           /* TID 0x63b3 */
  5383 ms  0x63b3 PK11_Encrypt()
  5383 ms  0x63b3 symkey:0x7f9fc9e0ad00
  5384 ms  0x63b3 SSL_AuthCertificateComplete()
  5384 ms  0x63b3 fd:0x7f9fc9ff0c40
  5384 ms  0x63b3 err:0x0
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca081580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fdc10dd00
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca081580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fca082580
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca081580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0ae80
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca082b80
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b600
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca082b80
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b680
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca082580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b680
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca082580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b780
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca082b80
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9fdcc80
  5384 ms     | 0x63b3 PK11_Encrypt()
  5384 ms     | 0x63b3 symkey:0x7f9fc9e0b600
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9fdcc80
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fdc10dd00
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b780
  5384 ms     | 0x63b3 PK11_DeriveWithFlags()
  5384 ms     | 0x63b3 basekey:0x7f9fca081580
  5384 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5384 ms     | 0x63b3 ret:0x7f9fc9e0b600
  5384 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5384 ms     | 0x63b3 privk:0x7f9fca0b2020::7f9fca0b2020  d0 48 0a ca                                      .H..
  5384 ms     | 0x63b3 privk:0x7f9fca0b2020::7f9fca0b2020  e5 e5 e5 e5                                      ....
  5385 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5385 ms     | 0x63b3 privk:0x7f9fca0b0020::7f9fca0b0020  f0 46 0a ca                                      .F..
  5385 ms     | 0x63b3 privk:0x7f9fca0b0020::7f9fca0b0020  e5 e5 e5 e5                                      ....
  5385 ms  0x63b3 PK11_Encrypt()
  5385 ms  0x63b3 symkey:0x7f9fca082780
  5385 ms  0x63b3 PK11_Encrypt()
  5385 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5385 ms  0x63b3 PK11_Encrypt()
  5385 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5401 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5401 ms  0x63b3 cx:0x7f9fdc4ed7a8
  5402 ms     | 0x63b3 EC_ValidatePublicKey()
  5402 ms     | 0x63b3 ret:0x0
  5402 ms  0x63b3 ret:0x7f9fca0af820::7f9fca0af820  b0 85 e0 c9                                      ....
  5402 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5402 ms  0x63b3 cx:0x7f9fdc4ed7a8
  5402 ms     | 0x63b3 EC_ValidatePublicKey()
  5404 ms     | 0x63b3 ret:0x0
  5404 ms  0x63b3 ret:0x7f9fca0b1820::7f9fca0b1820  30 8d e0 c9                                      0...
           /* TID 0x63bb */
  5413 ms  0x63bb PR_Close()
  5413 ms  0x63bb fd:0x7f9fc9ff0be0
           /* TID 0x63b3 */
  5414 ms  0x63b3 PK11_Encrypt()
  5414 ms  0x63b3 symkey:0x7f9fca082780
  5416 ms  0x63b3 PK11_DeriveWithFlags()
  5416 ms  0x63b3 basekey:0x7f9fc9e0b500
  5416 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5416 ms  0x63b3 ret:0x7f9fca082680
  5416 ms  0x63b3 PK11_DeriveWithFlags()
  5416 ms  0x63b3 basekey:0x7f9fc9e0b500
  5416 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5416 ms  0x63b3 ret:0x7f9fca082680
  5416 ms  0x63b3 PR_Close()
  5416 ms  0x63b3 fd:0x7f9fca092af0
  5416 ms     | 0x63b3 PK11_Encrypt()
  5416 ms     | 0x63b3 symkey:0x7f9fc9e0ad00
  5422 ms  0x63b3 PK11_DeriveWithFlags()
  5422 ms  0x63b3 basekey:0x7f9fc9e0b600
  5422 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5422 ms  0x63b3 ret:0x7f9fc9e0b480
  5422 ms  0x63b3 PK11_DeriveWithFlags()
  5422 ms  0x63b3 basekey:0x7f9fc9e0b600
  5422 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5422 ms  0x63b3 ret:0x7f9fc9e0b480
  5422 ms  0x63b3 PK11_Encrypt()
  5422 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5460 ms  0x63b3 PK11_Derive()
  5460 ms  0x63b3 basekey:0x7f9fc9e0b480
  5460 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5460 ms  0x63b3 ret:0x7f9fc9e0a280
  5460 ms  0x63b3 PK11_PubDeriveWithKDF()
  5460 ms  0x63b3 seckey:0x7f9fca0af820
  5460 ms     | 0x63b3 EC_ValidatePublicKey()
  5460 ms     | 0x63b3 ret:0x0
  5461 ms  0x63b3 ret:0x7f9fc9e0b480
  5461 ms  SECKEY_ECParamsToKeySize()
  5461 ms  0x63b3 ret:0xff
  5461 ms  0x63b3 PK11_DeriveWithFlags()
  5461 ms  0x63b3 basekey:0x7f9fc9e0a280
  5461 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5461 ms  0x63b3 ret:0x7f9fca082c00
  5462 ms  0x63b3 PK11_Derive()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b480
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fc9e0b500
  5462 ms  0x63b3 PK11_DeriveWithFlags()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b500
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fc9e0a280
  5462 ms  0x63b3 PK11_DeriveWithFlags()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b500
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fc9e0b480
  5462 ms  0x63b3 PK11_DeriveWithFlags()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b500
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fca082c00
  5462 ms  0x63b3 PK11_Derive()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b580
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fc9e0ad00
  5462 ms  0x63b3 PK11_DeriveWithFlags()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b480
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fc9e0b500
  5462 ms  0x63b3 PK11_DeriveWithFlags()
  5462 ms  0x63b3 basekey:0x7f9fc9e0b480
  5462 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5462 ms  0x63b3 ret:0x7f9fca082c00
  5470 ms  0x63b3 PK11_DeriveWithFlags()
  5470 ms  0x63b3 basekey:0x7f9fc9e0b480
  5470 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5470 ms  0x63b3 ret:0x7f9fca082c00
           /* TID 0x63bb */
  5473 ms  0x63bb PR_Close()
  5473 ms  0x63bb fd:0x7f9fca092bb0
           /* TID 0x63b3 */
  5475 ms  0x63b3 PK11_Encrypt()
  5475 ms  0x63b3 symkey:0x7f9fdc10dc00
  5495 ms  0x63b3 PK11_Encrypt()
  5495 ms  0x63b3 symkey:0x7f9fc9fdcc80
           /* TID 0x63bb */
  5498 ms  0x63bb PR_Close()
  5498 ms  0x63bb fd:0x7f9fc9ff0430
           /* TID 0x63b3 */
  5520 ms  0x63b3 SSL_ImportFD()
  5520 ms  0x63b3 ret:0x7f9fca092f40
  5520 ms  0x63b3 SSL_AuthCertificateHook()
  5520 ms  0x63b3 fd:0x7f9fca092f40
  5520 ms  0x63b3 ret:0x0
  5521 ms  0x63b3 PK11_Encrypt()
  5521 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5522 ms  0x63b3 PR_Connect()
  5522 ms  0x63b3 fd:0x7f9fca092f40
  5560 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5560 ms  0x63b3 cx:0x7f9fdc4edfc8
  5560 ms     | 0x63b3 EC_ValidatePublicKey()
  5560 ms     | 0x63b3 ret:0x0
  5560 ms  0x63b3 ret:0x7f9fca0c0820::7f9fca0c0820  c0 59 ff c9                                      .Y..
  5560 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5560 ms  0x63b3 cx:0x7f9fdc4edfc8
  5561 ms     | 0x63b3 EC_ValidatePublicKey()
  5562 ms     | 0x63b3 ret:0x0
  5562 ms  0x63b3 ret:0x7f9fca0c3820::7f9fca0c3820  e0 5c ff c9                                      .\..
           /* TID 0x63bb */
  5615 ms  0x63bb PR_Close()
  5615 ms  0x63bb fd:0x7f9fca092af0
           /* TID 0x63b3 */
  5616 ms  0x63b3 PK11_Encrypt()
  5616 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5617 ms  0x63b3 PK11_Derive()
  5617 ms  0x63b3 basekey:0x7f9fca082c00
  5617 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5617 ms  0x63b3 ret:0x7f9fc9e0b580
  5617 ms  0x63b3 PK11_PubDeriveWithKDF()
  5617 ms  0x63b3 seckey:0x7f9fca0c0820
  5617 ms     | 0x63b3 EC_ValidatePublicKey()
  5617 ms     | 0x63b3 ret:0x0
  5619 ms  0x63b3 ret:0x7f9fca082c00
  5619 ms  SECKEY_ECParamsToKeySize()
  5619 ms  0x63b3 ret:0xff
  5619 ms  0x63b3 PK11_DeriveWithFlags()
  5619 ms  0x63b3 basekey:0x7f9fc9e0b580
  5619 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5619 ms  0x63b3 ret:0x7f9fca082680
  5619 ms  0x63b3 PK11_Derive()
  5619 ms  0x63b3 basekey:0x7f9fca082c00
  5619 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5619 ms  0x63b3 ret:0x7f9fca082b80
  5619 ms  0x63b3 PK11_DeriveWithFlags()
  5619 ms  0x63b3 basekey:0x7f9fca082b80
  5619 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5619 ms  0x63b3 ret:0x7f9fc9e0b580
  5620 ms  0x63b3 PK11_DeriveWithFlags()
  5620 ms  0x63b3 basekey:0x7f9fca082b80
  5620 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5620 ms  0x63b3 ret:0x7f9fca082c00
  5620 ms  0x63b3 PK11_DeriveWithFlags()
  5620 ms  0x63b3 basekey:0x7f9fca082b80
  5620 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5620 ms  0x63b3 ret:0x7f9fca082680
  5620 ms  0x63b3 PK11_Derive()
  5620 ms  0x63b3 basekey:0x7f9fca081580
  5620 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5620 ms  0x63b3 ret:0x7f9fc9e0b780
  5620 ms  0x63b3 PK11_DeriveWithFlags()
  5620 ms  0x63b3 basekey:0x7f9fca082c00
  5620 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5620 ms  0x63b3 ret:0x7f9fca082b80
  5620 ms  0x63b3 PK11_DeriveWithFlags()
  5620 ms  0x63b3 basekey:0x7f9fca082c00
  5620 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5620 ms  0x63b3 ret:0x7f9fca082680
  5645 ms  0x63b3 PK11_DeriveWithFlags()
  5645 ms  0x63b3 basekey:0x7f9fca082c00
  5645 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5645 ms  0x63b3 ret:0x7f9fca082680
  5662 ms  0x63b3 PK11_Encrypt()
  5662 ms  0x63b3 symkey:0x7f9fdc10dc00
  5662 ms  0x63b3 PK11_Encrypt()
  5662 ms  0x63b3 symkey:0x7f9fdc10dc00
  5666 ms  0x63b3 SSL_ImportFD()
  5666 ms  0x63b3 ret:0x7f9fe1487d60
  5666 ms  0x63b3 SSL_AuthCertificateHook()
  5666 ms  0x63b3 fd:0x7f9fe1487d60
  5666 ms  0x63b3 ret:0x0
  5666 ms  0x63b3 PR_Connect()
  5666 ms  0x63b3 fd:0x7f9fe1487d60
  5670 ms  0x63b3 PR_Close()
  5670 ms  0x63b3 fd:0x7f9feaef70d0
           /* TID 0x63a8 */
  5671 ms  0x63a8 EC_ValidatePublicKey()
  5672 ms  0x63a8 ret:0x0
  5672 ms  0x63a8 EC_ValidatePublicKey()
  5677 ms  0x63a8 ret:0x0
  5677 ms  0x63a8 EC_ValidatePublicKey()
  5679 ms  0x63a8 ret:0x0
  5679 ms  0x63a8 EC_ValidatePublicKey()
  5680 ms  0x63a8 ret:0x0
  5680 ms  0x63a8 EC_ValidatePublicKey()
  5682 ms  0x63a8 ret:0x0
  5682 ms  0x63a8 EC_ValidatePublicKey()
  5683 ms  0x63a8 ret:0x0
  5683 ms  0x63a8 EC_ValidatePublicKey()
  5685 ms  0x63a8 ret:0x0
  5685 ms  0x63a8 EC_ValidatePublicKey()
  5686 ms  0x63a8 ret:0x0
  5686 ms  0x63a8 EC_ValidatePublicKey()
  5688 ms  0x63a8 ret:0x0
  5688 ms  0x63a8 EC_ValidatePublicKey()
  5689 ms  0x63a8 ret:0x0
           /* TID 0x63b3 */
  5689 ms  0x63b3 PK11_Encrypt()
  5689 ms  0x63b3 symkey:0x7f9fca082780
  5689 ms  0x63b3 PK11_Encrypt()
  5689 ms  0x63b3 symkey:0x7f9fc9fdcc80
  5690 ms  0x63b3 PK11_Encrypt()
  5690 ms  0x63b3 symkey:0x7f9fdc10df00
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fca092520
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fea43e3d0
  5690 ms     | 0x63b3 PK11_Encrypt()
  5690 ms     | 0x63b3 symkey:0x7f9fe6275f80
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fdafebf70
  5690 ms     | 0x63b3 PK11_Encrypt()
  5690 ms     | 0x63b3 symkey:0x7f9fea437500
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fdafebbe0
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fdc13dbb0
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fdc4d9370
  5690 ms     | 0x63b3 PK11_Encrypt()
  5690 ms     | 0x63b3 symkey:0x7f9fea440700
  5690 ms  0x63b3 PR_Close()
  5690 ms  0x63b3 fd:0x7f9fdb668280
  5690 ms     | 0x63b3 PK11_Encrypt()
  5690 ms     | 0x63b3 symkey:0x7f9fea43fe00
  5691 ms  0x63b3 PR_Close()
  5691 ms  0x63b3 fd:0x7f9fdc4d9970
  5691 ms     | 0x63b3 PK11_Encrypt()
  5691 ms     | 0x63b3 symkey:0x7f9fdbe95280
  5691 ms  0x63b3 PR_Close()
  5691 ms  0x63b3 fd:0x7f9fc9ff0c40
  5691 ms     | 0x63b3 PK11_Encrypt()
  5691 ms     | 0x63b3 symkey:0x7f9fc9fdcc80
  5691 ms  0x63b3 PR_Close()
  5691 ms  0x63b3 fd:0x7f9fdafe6f70
  5691 ms     | 0x63b3 PK11_Encrypt()
  5691 ms     | 0x63b3 symkey:0x7f9fca082780
  5691 ms  0x63b3 PR_Close()
  5691 ms  0x63b3 fd:0x7f9fc9ff0e20
  5691 ms     | 0x63b3 PK11_Encrypt()
  5691 ms     | 0x63b3 symkey:0x7f9fdc10df00
           /* TID 0x640e */
  5692 ms  0x640e PR_Close()
  5692 ms  0x640e fd:0x7f9fc9eb3280
  5692 ms  0x640e PR_Close()
  5692 ms  0x640e fd:0x7f9fc9eb3280
           /* TID 0x63a8 */
  5697 ms  0x63a8 PR_Close()
  5697 ms  0x63a8 fd:0x7f9fdc46a340
  5697 ms  0x63a8 PR_Close()
  5697 ms  0x63a8 fd:0x7f9fc9eb3730
  5698 ms  0x63a8 PR_Close()
  5698 ms  0x63a8 fd:0x7f9fc9eb3790
  5698 ms  0x63a8 PR_Close()
  5698 ms  0x63a8 fd:0x7f9fc9eb3730
  5699 ms  0x63a8 PR_Close()
  5699 ms  0x63a8 fd:0x7f9fc9eb3790
  5699 ms  0x63a8 PR_Close()
  5699 ms  0x63a8 fd:0x7f9fc9eb3730
           /* TID 0x6420 */
  5701 ms  0x6420 PR_Close()
  5701 ms  0x6420 fd:0x7f9fc9eb37f0
           /* TID 0x63b3 */
  5703 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5703 ms  0x63b3 cx:0x7f9fdc4ee4a8
  5704 ms     | 0x63b3 EC_ValidatePublicKey()
  5704 ms     | 0x63b3 ret:0x0
  5704 ms  0x63b3 ret:0x7f9fc9ed1820::7f9fc9ed1820  00 26 ef c9                                      .&..
  5704 ms  0x63b3 SECKEY_CreateECPrivateKey()
  5704 ms  0x63b3 cx:0x7f9fdc4ee4a8
  5704 ms     | 0x63b3 EC_ValidatePublicKey()
  5706 ms     | 0x63b3 ret:0x0
  5706 ms  0x63b3 ret:0x7f9fc9ed3820::7f9fc9ed3820  e0 27 ef c9                                      .'..
  5719 ms  0x63b3 PK11_Encrypt()
  5719 ms  0x63b3 symkey:0x7f9fdc10dc00
  5719 ms  0x63b3 PR_Close()
  5719 ms  0x63b3 fd:0x7f9fdb1ff250
  5719 ms     | 0x63b3 PK11_Encrypt()
  5719 ms     | 0x63b3 symkey:0x7f9fdc10dc00
           /* TID 0x63a8 */
  5723 ms  0x63a8 PR_Close()
  5723 ms  0x63a8 fd:0x7f9fc9eb3790
  5723 ms  0x63a8 PR_Close()
  5723 ms  0x63a8 fd:0x7f9fc9eb3fa0
  5724 ms  0x63a8 PR_Close()
  5724 ms  0x63a8 fd:0x7f9fc9eb3790
  5724 ms  0x63a8 PR_Close()
  5724 ms  0x63a8 fd:0x7f9fc9eb3fa0
  5724 ms  0x63a8 PR_Close()
  5724 ms  0x63a8 fd:0x7f9fe62cdb20
  5724 ms  0x63a8 PR_Close()
  5724 ms  0x63a8 fd:0x7f9fe62cda30
  5724 ms  0x63a8 PR_Close()
  5724 ms  0x63a8 fd:0x7f9fe62cdbe0
           /* TID 0x63b3 */
  5725 ms  0x63b3 PR_Close()
  5725 ms  0x63b3 fd:0x7f9fdb1fff10
           /* TID 0x63a8 */
  5727 ms  0x63a8 PR_Close()
  5727 ms  0x63a8 fd:0x7f9fc9eb3fd0
  5728 ms  0x63a8 PR_Close()
  5728 ms  0x63a8 fd:0x7f9fc9eb3fd0
  5731 ms  0x63a8 PR_Close()
  5731 ms  0x63a8 fd:0x7f9fc9eb3790
  5731 ms  0x63a8 PR_Close()
  5731 ms  0x63a8 fd:0x7f9fc9ff0490
  5731 ms  0x63a8 PR_Close()
  5731 ms  0x63a8 fd:0x7f9fc9eb3790
  5731 ms  0x63a8 PR_Close()
  5731 ms  0x63a8 fd:0x7f9fc9ff0490
  5734 ms  0x63a8 PR_Close()
  5734 ms  0x63a8 fd:0x7f9fc9ff05b0
  5735 ms  0x63a8 PR_Close()
  5735 ms  0x63a8 fd:0x7f9fc9ff05b0
  5737 ms  0x63a8 PR_Close()
  5737 ms  0x63a8 fd:0x7f9fc9eb3790
  5737 ms  0x63a8 PR_Close()
  5737 ms  0x63a8 fd:0x7f9fc9ff0670
  5737 ms  0x63a8 PR_Close()
  5737 ms  0x63a8 fd:0x7f9fc9eb3790
  5737 ms  0x63a8 PR_Close()
  5737 ms  0x63a8 fd:0x7f9fc9ff0670
  5740 ms  0x63a8 PR_Close()
  5740 ms  0x63a8 fd:0x7f9fc9ff0a60
  5741 ms  0x63a8 PR_Close()
  5741 ms  0x63a8 fd:0x7f9fc9ff0a60
  5747 ms  0x63a8 PR_Close()
  5747 ms  0x63a8 fd:0x7f9fc9ff0e50
  5748 ms  0x63a8 PR_Close()
  5748 ms  0x63a8 fd:0x7f9fc9ff0e50
  5750 ms  0x63a8 PR_Close()
  5750 ms  0x63a8 fd:0x7f9fc9ff0e80
           /* TID 0x6420 */
  5755 ms  0x6420 PR_Close()
  5755 ms  0x6420 fd:0x7f9fc9ff0f10
  5756 ms  0x6420 PR_Close()
  5756 ms  0x6420 fd:0x7f9fc9ff0f10
           /* TID 0x63a8 */
  5756 ms  0x63a8 PR_Close()
  5756 ms  0x63a8 fd:0x7f9fc9eb3790
  5756 ms  0x63a8 PR_Close()
  5756 ms  0x63a8 fd:0x7f9fca092100
           /* TID 0x63b3 */
  5759 ms  0x63b3 PK11_Derive()
  5759 ms  0x63b3 basekey:0x7f9fdc10d800
  5759 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5759 ms  0x63b3 ret:0x7f9fdc10dc80
  5759 ms  0x63b3 PK11_PubDeriveWithKDF()
  5759 ms  0x63b3 seckey:0x7f9fc9ed1820
  5759 ms     | 0x63b3 EC_ValidatePublicKey()
  5759 ms     | 0x63b3 ret:0x0
  5760 ms  0x63b3 ret:0x7f9fdc10d800
  5760 ms  SECKEY_ECParamsToKeySize()
  5760 ms  0x63b3 ret:0xff
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10dc80
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10da00
  5760 ms  0x63b3 PK11_Derive()
  5760 ms  0x63b3 basekey:0x7f9fdc10d800
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10d980
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10d980
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10dc80
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10d980
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10d800
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10d980
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10da00
  5760 ms  0x63b3 PK11_Derive()
  5760 ms  0x63b3 basekey:0x7f9fdc10da80
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10dc00
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10d800
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10d980
  5760 ms  0x63b3 PK11_DeriveWithFlags()
  5760 ms  0x63b3 basekey:0x7f9fdc10d800
  5760 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5760 ms  0x63b3 ret:0x7f9fdc10da00
  5762 ms  SECKEY_ECParamsToKeySize()
  5762 ms  0x63b3 ret:0x100
  5762 ms  SECKEY_ECParamsToBasePointOrderLen()
  5762 ms  0x63b3 ret:0x100
  5762 ms  SECKEY_ECParamsToBasePointOrderLen()
  5762 ms  0x63b3 ret:0x100
  5762 ms  0x63b3 EC_ValidatePublicKey()
  5764 ms  0x63b3 ret:0x0
  5766 ms  0x63b3 PK11_DeriveWithFlags()
  5766 ms  0x63b3 basekey:0x7f9fdc10d800
  5766 ms     | 0x63b3 PK11_DeriveWithTemplate()
  5766 ms  0x63b3 ret:0x7f9fdc10da00
           /* TID 0x6420 */
  5768 ms  0x6420 PR_Close()
  5768 ms  0x6420 fd:0x7f9fc9eb3070
           /* TID 0x63bb */
  5771 ms  0x63bb PR_Close()
  5771 ms  0x63bb fd:0x7f9fdafeba60
  5772 ms  0x63bb PR_Close()
  5772 ms  0x63bb fd:0x7f9fc9eb3dc0
           /* TID 0x6455 */
  5772 ms  0x6455 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5772 ms  0x6455 ret:0x0
           /* TID 0x63b3 */
  5772 ms  0x63b3 SSL_AuthCertificateComplete()
  5772 ms  0x63b3 fd:0x7f9fca092a60
  5772 ms  0x63b3 err:0x0
  5772 ms     | 0x63b3 PK11_DeriveWithFlags()
  5772 ms     | 0x63b3 basekey:0x7f9fc9e0ad00
  5772 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5772 ms     | 0x63b3 ret:0x7f9fdc10da00
  5772 ms     | 0x63b3 PK11_DeriveWithFlags()
  5772 ms     | 0x63b3 basekey:0x7f9fc9e0ad00
  5772 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5772 ms     | 0x63b3 ret:0x7f9fdc10da80
  5772 ms     | 0x63b3 PK11_DeriveWithFlags()
  5772 ms     | 0x63b3 basekey:0x7f9fc9e0ad00
  5772 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5772 ms     | 0x63b3 ret:0x7f9fc9e0a880
  5772 ms     | 0x63b3 PK11_DeriveWithFlags()
  5772 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5773 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5773 ms     | 0x63b3 ret:0x7f9fca081180
  5773 ms     | 0x63b3 PK11_DeriveWithFlags()
  5773 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5773 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5773 ms     | 0x63b3 ret:0x7f9fc9fade80
  5773 ms     | 0x63b3 PK11_DeriveWithFlags()
  5773 ms     | 0x63b3 basekey:0x7f9fdc10da80
  5773 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5773 ms     | 0x63b3 ret:0x7f9fc9fade80
  5773 ms     | 0x63b3 PK11_DeriveWithFlags()
  5773 ms     | 0x63b3 basekey:0x7f9fdc10da80
  5773 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5773 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5773 ms     | 0x63b3 PK11_DeriveWithFlags()
  5773 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5773 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5773 ms     | 0x63b3 ret:0x7f9fc9e0b500
  5773 ms     | 0x63b3 PK11_Encrypt()
  5773 ms     | 0x63b3 symkey:0x7f9fca081180
  5777 ms     | 0x63b3 PK11_DeriveWithFlags()
  5777 ms     | 0x63b3 basekey:0x7f9fdc10da00
  5777 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5777 ms     | 0x63b3 ret:0x7f9fc9e0b500
  5777 ms     | 0x63b3 PK11_DeriveWithFlags()
  5777 ms     | 0x63b3 basekey:0x7f9fdc10da00
  5777 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5777 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5777 ms     | 0x63b3 PK11_DeriveWithFlags()
  5777 ms     | 0x63b3 basekey:0x7f9fc9e0ad00
  5777 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5777 ms     | 0x63b3 ret:0x7f9fca081180
  5777 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5777 ms     | 0x63b3 privk:0x7f9fca0b1820::7f9fca0b1820  30 8d e0 c9                                      0...
  5777 ms     | 0x63b3 privk:0x7f9fca0b1820::7f9fca0b1820  e5 e5 e5 e5                                      ....
  5777 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5777 ms     | 0x63b3 privk:0x7f9fca0af820::7f9fca0af820  b0 85 e0 c9                                      ....
  5777 ms     | 0x63b3 privk:0x7f9fca0af820::7f9fca0af820  e5 e5 e5 e5                                      ....
  5777 ms  0x63b3 PK11_Encrypt()
  5777 ms  0x63b3 symkey:0x7f9fc9e0b500
  5777 ms  0x63b3 PK11_Encrypt()
  5777 ms  0x63b3 symkey:0x7f9fc9e0b500
  5789 ms  0x63b3 PR_Close()
  5789 ms  0x63b3 fd:0x7f9fca0925e0
           /* TID 0x6420 */
  5797 ms  0x6420 PR_Close()
  5797 ms  0x6420 fd:0x7f9fc9eb3070
           /* TID 0x63bb */
  5802 ms  0x63bb PR_Close()
  5802 ms  0x63bb fd:0x7f9fc9eb3cd0
           /* TID 0x6423 */
  5802 ms  0x6423 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5802 ms  0x6423 ret:0x0
           /* TID 0x63b3 */
  5802 ms  0x63b3 SSL_AuthCertificateComplete()
  5802 ms  0x63b3 fd:0x7f9fca092f40
  5802 ms  0x63b3 err:0x0
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b780
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0b480
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b780
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0a280
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b780
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0ad00
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b580
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b580
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0a980
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fc9e0a980
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0a280
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fdc10df00
  5802 ms     | 0x63b3 PK11_DeriveWithFlags()
  5802 ms     | 0x63b3 basekey:0x7f9fc9e0b580
  5802 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5802 ms     | 0x63b3 ret:0x7f9fca082b80
  5802 ms     | 0x63b3 PK11_Encrypt()
  5802 ms     | 0x63b3 symkey:0x7f9fc9e0a900
  5803 ms     | 0x63b3 PK11_DeriveWithFlags()
  5803 ms     | 0x63b3 basekey:0x7f9fc9e0b480
  5803 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5803 ms     | 0x63b3 ret:0x7f9fca082b80
  5803 ms     | 0x63b3 PK11_DeriveWithFlags()
  5803 ms     | 0x63b3 basekey:0x7f9fc9e0b480
  5803 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5803 ms     | 0x63b3 ret:0x7f9fdc10df00
  5803 ms     | 0x63b3 PK11_DeriveWithFlags()
  5803 ms     | 0x63b3 basekey:0x7f9fc9e0b780
  5803 ms     |    | 0x63b3 PK11_DeriveWithTemplate()
  5803 ms     | 0x63b3 ret:0x7f9fc9e0a900
  5803 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5803 ms     | 0x63b3 privk:0x7f9fca0c3820::7f9fca0c3820  e0 5c ff c9                                      .\..
  5803 ms     | 0x63b3 privk:0x7f9fca0c3820::7f9fca0c3820  e5 e5 e5 e5                                      ....
  5803 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5803 ms     | 0x63b3 privk:0x7f9fca0c0820::7f9fca0c0820  c0 59 ff c9                                      .Y..
  5803 ms     | 0x63b3 privk:0x7f9fca0c0820::7f9fca0c0820  e5 e5 e5 e5                                      ....
  5803 ms  0x63b3 PK11_Encrypt()
  5803 ms  0x63b3 symkey:0x7f9fca082b80
  5804 ms  0x63b3 PK11_Encrypt()
  5804 ms  0x63b3 symkey:0x7f9fca082b80
  5804 ms  0x63b3 PR_Close()
  5804 ms  0x63b3 fd:0x7f9fca092f40
  5804 ms     | 0x63b3 PK11_Encrypt()
  5804 ms     | 0x63b3 symkey:0x7f9fca082b80
  5806 ms  0x63b3 PR_Connect()
  5806 ms  0x63b3 fd:0x7f9fca092070
  5806 ms  0x63b3 PK11_Encrypt()
  5806 ms  0x63b3 symkey:0x7f9fc9e0b500
  5806 ms  0x63b3 PK11_Encrypt()
  5806 ms  0x63b3 symkey:0x7f9fc9e0b500
  5806 ms  0x63b3 PR_Close()
  5806 ms  0x63b3 fd:0x7f9fca092a60
  5806 ms     | 0x63b3 PK11_Encrypt()
  5806 ms     | 0x63b3 symkey:0x7f9fc9e0b500
           /* TID 0x63ad */
  5812 ms  0x63ad PR_Close()
  5812 ms  0x63ad fd:0x7f9fe4df8df0
           /* TID 0x63b3 */
  5812 ms  0x63b3 PR_Close()
  5812 ms  0x63b3 fd:0x7f9fe1487d60
  5812 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5812 ms     | 0x63b3 privk:0x7f9fc9ed3820::7f9fc9ed3820  e0 27 ef c9                                      .'..
  5812 ms     | 0x63b3 privk:0x7f9fc9ed3820::7f9fc9ed3820  e5 e5 e5 e5                                      ....
  5813 ms     | 0x63b3 SECKEY_DestroyPrivateKey()
  5813 ms     | 0x63b3 privk:0x7f9fc9ed1820::7f9fc9ed1820  00 26 ef c9                                      .&..
  5813 ms     | 0x63b3 privk:0x7f9fc9ed1820::7f9fc9ed1820  e5 e5 e5 e5                                      ....
  5814 ms  0x63b3 PR_Close()
  5814 ms  0x63b3 fd:0x7f9fca092070
           /* TID 0x6420 */
  5824 ms  0x6420 PR_Close()
  5824 ms  0x6420 fd:0x7f9fc9eb33d0
           /* TID 0x63ad */
  5830 ms  0x63ad PR_Close()
  5830 ms  0x63ad fd:0x7f9fe1243820
           /* TID 0x63b3 */
  5832 ms  0x63b3 PR_Close()
  5832 ms  0x63b3 fd:0x7f9fdc6195e0
           /* TID 0x640e */
  5833 ms  0x640e PR_Close()
  5833 ms  0x640e fd:0x7f9fca092430
  5833 ms  0x640e PR_Close()
  5833 ms  0x640e fd:0x7f9fc9eb30d0
  5833 ms  0x640e PR_Close()
  5833 ms  0x640e fd:0x7f9fc9eb30d0
  5833 ms  0x640e PR_Close()
  5833 ms  0x640e fd:0x7f9fc9eb30d0
           /* TID 0x6420 */
  5837 ms  0x6420 PR_Close()
  5837 ms  0x6420 fd:0x7f9fc9ff06a0
           /* TID 0x63bb */
  5840 ms  0x63bb PR_Close()
  5840 ms  0x63bb fd:0x7f9fca092f40
  5840 ms  0x63bb PR_Close()
  5840 ms  0x63bb fd:0x7f9fca092f70
           /* TID 0x63ad */
  5847 ms  0x63ad PR_Close()
  5847 ms  0x63ad fd:0x7f9fde2a5d00
           /* TID 0x63a8 */
  5850 ms  0x63a8 PR_Close()
  5850 ms  0x63a8 fd:0x7f9fc9eb3790
  5850 ms  0x63a8 PR_Close()
  5850 ms  0x63a8 fd:0x7f9fdafe6c70
           /* TID 0x6420 */
  5851 ms  0x6420 PR_Close()
  5851 ms  0x6420 fd:0x7f9fdafe6cd0
  5854 ms  0x6420 PR_Close()
  5854 ms  0x6420 fd:0x7f9fdafe6850
  5872 ms  0x6420 PR_Close()
  5872 ms  0x6420 fd:0x7f9fc9ff0610
  5874 ms  0x6420 PR_Close()
  5874 ms  0x6420 fd:0x7f9fc9ff0610
  5890 ms  0x6420 PR_Close()
  5890 ms  0x6420 fd:0x7f9fc9ff0cd0
  5890 ms  0x6420 PR_Close()
  5890 ms  0x6420 fd:0x7f9fc9ff0d60
  5896 ms  0x6420 PR_Close()
  5896 ms  0x6420 fd:0x7f9fca092eb0
  5901 ms  0x6420 PR_Close()
  5901 ms  0x6420 fd:0x7f9fdafe6940
  5906 ms  0x6420 PR_Close()
  5906 ms  0x6420 fd:0x7f9fdafe6d60
  5915 ms  0x6420 PR_Close()
  5915 ms  0x6420 fd:0x7f9fdafebc10
  5917 ms  0x6420 PR_Close()
  5917 ms  0x6420 fd:0x7f9fdafebc10
           /* TID 0x63a8 */
  6073 ms  0x63a8 PR_Close()
  6073 ms  0x63a8 fd:0x7f9fc9ff01c0
  6074 ms  0x63a8 PR_Close()
  6074 ms  0x63a8 fd:0x7f9fc9ff01c0
  6085 ms  0x63a8 PR_Close()
  6085 ms  0x63a8 fd:0x7fa0035da130
  6085 ms  0x63a8 PR_Close()
  6085 ms  0x63a8 fd:0x7fa0035da190
Process terminated
