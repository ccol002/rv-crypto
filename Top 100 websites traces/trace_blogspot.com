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
           /* TID 0x71a4 */
    16 ms  0x71a4 PR_Close()
    16 ms  0x71a4 fd:0x7f8cbd4f7f40
    16 ms     | 0x71a4 PK11_Encrypt()
    16 ms     | 0x71a4 symkey:0x7f8cbd8ec880
           /* TID 0x71ac */
    17 ms  0x71ac PR_Close()
    17 ms  0x71ac fd:0x7f8cbba5a0a0
           /* TID 0x71a4 */
   271 ms  0x71a4 SSL_ImportFD()
   271 ms  0x71a4 ret:0x7f8cbbbc1220
   271 ms  0x71a4 SSL_AuthCertificateHook()
   271 ms  0x71a4 fd:0x7f8cbbbc1220
   271 ms  0x71a4 ret:0x0
   271 ms  0x71a4 PR_Connect()
   271 ms  0x71a4 fd:0x7f8cbbbc1220
   478 ms  0x71a4 SECKEY_CreateECPrivateKey()
   478 ms  0x71a4 cx:0x7f8cbbcddb28
   480 ms     | 0x71a4 EC_ValidatePublicKey()
   480 ms     | 0x71a4 ret:0x0
   480 ms  0x71a4 ret:0x7f8cbbb53020::7f8cbbb53020  30 8d ea bb                                      0...
   480 ms  0x71a4 SECKEY_CreateECPrivateKey()
   480 ms  0x71a4 cx:0x7f8cbbcddb28
   483 ms     | 0x71a4 EC_ValidatePublicKey()
   487 ms     | 0x71a4 ret:0x0
   487 ms  0x71a4 ret:0x7f8cbbb55020::7f8cbbb55020  70 8e ea bb                                      p...
           /* TID 0x7214 */
   532 ms  0x7214 PR_Close()
   532 ms  0x7214 fd:0x7f8cbbbc1160
   534 ms  0x7214 PR_Close()
   534 ms  0x7214 fd:0x7f8cbbbc1160
           /* TID 0x71a4 */
   702 ms  SECKEY_ECParamsToKeySize()
   703 ms  0x71a4 ret:0x100
   703 ms  0x71a4 SECKEY_CreateECPrivateKey()
   703 ms  0x71a4 cx:0x7f8cbbcddb28
   704 ms     | 0x71a4 EC_ValidatePublicKey()
   709 ms     | 0x71a4 ret:0x0
   709 ms  0x71a4 ret:0x7f8cbbb5e020::7f8cbbb5e020  70 79 be bb                                      py..
   709 ms  0x71a4 PK11_PubDeriveWithKDF()
   709 ms  0x71a4 seckey:0x7f8cbbb5e020
   709 ms     | 0x71a4 EC_ValidatePublicKey()
   714 ms     | 0x71a4 ret:0x0
   718 ms  0x71a4 ret:0x7f8cbd8ec800
   718 ms  0x71a4 PK11_DeriveWithFlags()
   718 ms  0x71a4 basekey:0x7f8cbd8ec800
   718 ms     | 0x71a4 PK11_DeriveWithTemplate()
   718 ms  0x71a4 ret:0x7f8cbd8ec780
   718 ms  0x71a4 PK11_Derive()
   718 ms  0x71a4 basekey:0x7f8cbd8ec780
   718 ms     | 0x71a4 PK11_DeriveWithTemplate()
   718 ms  0x71a4 ret:0x7f8cbd8ec900
   718 ms  0x71a4 SECKEY_DestroyPrivateKey()
   718 ms  0x71a4 privk:0x7f8cbbb5e020::7f8cbbb5e020  70 79 be bb                                      py..
   718 ms  0x71a4 privk:0x7f8cbbb5e020::7f8cbbb5e020  e5 e5 e5 e5                                      ....
   719 ms  0x71a4 PK11_Encrypt()
   719 ms  0x71a4 symkey:0x7f8cbd8ec700
   720 ms  0x71a4 PR_Connect()
   720 ms  0x71a4 fd:0x7f8cbbbc1ca0
           /* TID 0x7214 */
   753 ms  0x7214 PR_Close()
   753 ms  0x7214 fd:0x7f8cbbbc1c10
           /* TID 0x71ac */
   774 ms  0x71ac PR_Close()
   774 ms  0x71ac fd:0x7f8cbbbc1c10
           /* TID 0x7209 */
   774 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   774 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
   775 ms  0x71a4 SSL_AuthCertificateComplete()
   775 ms  0x71a4 fd:0x7f8cbbbc1220
   775 ms  0x71a4 err:0x0
   775 ms  0x71a4 PK11_Encrypt()
   775 ms  0x71a4 symkey:0x7f8cbd8ec700
   926 ms  0x71a4 SECKEY_DestroyPrivateKey()
   926 ms  0x71a4 privk:0x7f8cbbb55020::7f8cbbb55020  70 8e ea bb                                      p...
   927 ms  0x71a4 privk:0x7f8cbbb55020::7f8cbbb55020  e5 e5 e5 e5                                      ....
   927 ms  0x71a4 SECKEY_DestroyPrivateKey()
   927 ms  0x71a4 privk:0x7f8cbbb53020::7f8cbbb53020  30 8d ea bb                                      0...
   927 ms  0x71a4 privk:0x7f8cbbb53020::7f8cbbb53020  e5 e5 e5 e5                                      ....
  1142 ms  0x71a4 SSL_ImportFD()
  1142 ms  0x71a4 ret:0x7f8cbbbc1fa0
  1142 ms  0x71a4 SSL_AuthCertificateHook()
  1142 ms  0x71a4 fd:0x7f8cbbbc1fa0
  1142 ms  0x71a4 ret:0x0
  1142 ms  0x71a4 PR_Connect()
  1142 ms  0x71a4 fd:0x7f8cbbbc1fa0
  1168 ms  0x71a4 SECKEY_CreateECPrivateKey()
  1168 ms  0x71a4 cx:0x7f8cbbbd05c8
  1170 ms     | 0x71a4 EC_ValidatePublicKey()
  1170 ms     | 0x71a4 ret:0x0
  1170 ms  0x71a4 ret:0x7f8cbbb54820::7f8cbbb54820  70 79 be bb                                      py..
  1170 ms  0x71a4 SECKEY_CreateECPrivateKey()
  1170 ms  0x71a4 cx:0x7f8cbbbd05c8
  1172 ms     | 0x71a4 EC_ValidatePublicKey()
  1175 ms     | 0x71a4 ret:0x0
  1175 ms  0x71a4 ret:0x7f8cbbb5a820::7f8cbbb5a820  30 78 be bb                                      0x..
           /* TID 0x7209 */
  1227 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1228 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  1228 ms  SECKEY_ECParamsToKeySize()
  1228 ms  0x71a4 ret:0x100
  1228 ms  0x71a4 SECKEY_CreateECPrivateKey()
  1228 ms  0x71a4 cx:0x7f8cbbbd05c8
  1230 ms     | 0x71a4 EC_ValidatePublicKey()
  1233 ms     | 0x71a4 ret:0x0
  1233 ms  0x71a4 ret:0x7f8cbbb5e020::7f8cbbb5e020  d0 7d be bb                                      .}..
  1234 ms  0x71a4 PK11_PubDeriveWithKDF()
  1234 ms  0x71a4 seckey:0x7f8cbbb5e020
  1234 ms     | 0x71a4 EC_ValidatePublicKey()
  1237 ms     | 0x71a4 ret:0x0
  1241 ms  0x71a4 ret:0x7f8cbd8ec800
  1241 ms  0x71a4 PK11_DeriveWithFlags()
  1241 ms  0x71a4 basekey:0x7f8cbd8ec800
  1241 ms     | 0x71a4 PK11_DeriveWithTemplate()
  1241 ms  0x71a4 ret:0x7f8cbbb6ca00
  1241 ms  0x71a4 PK11_Derive()
  1241 ms  0x71a4 basekey:0x7f8cbbb6ca00
  1241 ms     | 0x71a4 PK11_DeriveWithTemplate()
  1241 ms  0x71a4 ret:0x7f8cbbbdd080
  1241 ms  0x71a4 SECKEY_DestroyPrivateKey()
  1241 ms  0x71a4 privk:0x7f8cbbb5e020::7f8cbbb5e020  d0 7d be bb                                      .}..
  1242 ms  0x71a4 privk:0x7f8cbbb5e020::7f8cbbb5e020  e5 e5 e5 e5                                      ....
  1242 ms  0x71a4 PK11_Encrypt()
  1242 ms  0x71a4 symkey:0x7f8cbbbdd580
  1242 ms  0x71a4 SSL_AuthCertificateComplete()
  1242 ms  0x71a4 fd:0x7f8cbbbc1fa0
  1242 ms  0x71a4 err:0x0
  1242 ms  0x71a4 PK11_Encrypt()
  1242 ms  0x71a4 symkey:0x7f8cbbbdd580
  1293 ms  0x71a4 SECKEY_DestroyPrivateKey()
  1293 ms  0x71a4 privk:0x7f8cbbb5a820::7f8cbbb5a820  30 78 be bb                                      0x..
  1294 ms  0x71a4 privk:0x7f8cbbb5a820::7f8cbbb5a820  e5 e5 e5 e5                                      ....
  1294 ms  0x71a4 SECKEY_DestroyPrivateKey()
  1294 ms  0x71a4 privk:0x7f8cbbb54820::7f8cbbb54820  70 79 be bb                                      py..
  1294 ms  0x71a4 privk:0x7f8cbbb54820::7f8cbbb54820  e5 e5 e5 e5                                      ....
  1298 ms  0x71a4 PK11_Encrypt()
  1298 ms  0x71a4 symkey:0x7f8cbbbdd580
  1328 ms  0x71a4 PK11_Encrypt()
  1328 ms  0x71a4 symkey:0x7f8cbbbdd580
  1358 ms  0x71a4 PK11_Encrypt()
  1358 ms  0x71a4 symkey:0x7f8cbbbdd580
  1390 ms  0x71a4 PK11_Encrypt()
  1390 ms  0x71a4 symkey:0x7f8cbbbdd580
  1508 ms  0x71a4 PK11_Encrypt()
  1508 ms  0x71a4 symkey:0x7f8cbbbdd580
  1540 ms  0x71a4 PK11_Encrypt()
  1540 ms  0x71a4 symkey:0x7f8cbbbdd580
  1571 ms  0x71a4 PK11_Encrypt()
  1571 ms  0x71a4 symkey:0x7f8cbbbdd580
           /* TID 0x7202 */
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1e80
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1f10
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1e80
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1f10
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1e80
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1f10
  1600 ms  0x7202 PR_Close()
  1600 ms  0x7202 fd:0x7f8cbbbc1e80
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1f10
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1e80
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1f10
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1e80
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1f10
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1e80
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1f10
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1e80
  1601 ms  0x7202 PR_Close()
  1601 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1f10
  1602 ms  0x7202 PR_Close()
  1602 ms  0x7202 fd:0x7f8cbbbc1e80
  1603 ms  0x7202 PR_Close()
  1603 ms  0x7202 fd:0x7f8cbbbc1f10
  1606 ms  0x7202 PR_Close()
  1606 ms  0x7202 fd:0x7f8cbbbc1e80
  1606 ms  0x7202 PR_Close()
  1606 ms  0x7202 fd:0x7f8cbbbc1e20
  1609 ms  0x7202 PR_Close()
  1609 ms  0x7202 fd:0x7f8cbbbc1e20
  1609 ms  0x7202 PR_Close()
  1609 ms  0x7202 fd:0x7f8cbbbc1e80
  1612 ms  0x7202 PR_Close()
  1612 ms  0x7202 fd:0x7f8cbbbc1e80
  1612 ms  0x7202 PR_Close()
  1612 ms  0x7202 fd:0x7f8cbbbc1e80
  1615 ms  0x7202 PR_Close()
  1615 ms  0x7202 fd:0x7f8cbbbc1e80
  1615 ms  0x7202 PR_Close()
  1615 ms  0x7202 fd:0x7f8cbbbc1e80
  1669 ms  0x7202 PR_Close()
  1669 ms  0x7202 fd:0x7f8cbbbc1e80
  1670 ms  0x7202 PR_Close()
  1670 ms  0x7202 fd:0x7f8cbbbc1e80
  1677 ms  0x7202 PR_Close()
  1677 ms  0x7202 fd:0x7f8cbbbc1e80
  1677 ms  0x7202 PR_Close()
  1677 ms  0x7202 fd:0x7f8cbbbc1e80
  1684 ms  0x7202 PR_Close()
  1684 ms  0x7202 fd:0x7f8cbbbc1e80
  1684 ms  0x7202 PR_Close()
  1684 ms  0x7202 fd:0x7f8cbbbc1e80
  1686 ms  0x7202 PR_Close()
  1686 ms  0x7202 fd:0x7f8cbbbc1e80
  1686 ms  0x7202 PR_Close()
  1686 ms  0x7202 fd:0x7f8cbbbc1e80
           /* TID 0x71ff */
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1686 ms  0x71ff PR_Close()
  1686 ms  0x71ff fd:0x7f8cbbbc1e80
  1687 ms  0x71ff PR_Close()
  1687 ms  0x71ff fd:0x7f8cbbbc1e80
           /* TID 0x7214 */
  2189 ms  0x7214 PR_Close()
  2189 ms  0x7214 fd:0x7f8cbbbd52e0
  2192 ms  0x7214 PR_Close()
  2192 ms  0x7214 fd:0x7f8cbbbd52e0
  2833 ms  0x7214 PR_Close()
  2833 ms  0x7214 fd:0x7f8cbbbd52e0
           /* TID 0x71ac */
  4149 ms  0x71ac PR_Close()
  4149 ms  0x71ac fd:0x7f8cbbbd52e0
  4150 ms  0x71ac PR_Close()
  4150 ms  0x71ac fd:0x7f8cbbbd5430
  4150 ms  0x71ac PR_Close()
  4150 ms  0x71ac fd:0x7f8cbbbd5490
           /* TID 0x71a4 */
  4638 ms  0x71a4 SSL_ImportFD()
  4638 ms  0x71a4 ret:0x7f8caaae86a0
  4638 ms  0x71a4 SSL_AuthCertificateHook()
  4638 ms  0x71a4 fd:0x7f8caaae86a0
  4638 ms  0x71a4 ret:0x0
  4638 ms  0x71a4 PR_Connect()
  4638 ms  0x71a4 fd:0x7f8caaae86a0
  4676 ms  0x71a4 SECKEY_CreateECPrivateKey()
  4676 ms  0x71a4 cx:0x7f8cbbbd0908
  4678 ms     | 0x71a4 EC_ValidatePublicKey()
  4678 ms     | 0x71a4 ret:0x0
  4678 ms  0x71a4 ret:0x7f8caaa99020::7f8caaa99020  80 a8 d8 bc                                      ....
  4679 ms  0x71a4 SECKEY_CreateECPrivateKey()
  4679 ms  0x71a4 cx:0x7f8cbbbd0908
  4681 ms     | 0x71a4 EC_ValidatePublicKey()
  4687 ms     | 0x71a4 ret:0x0
  4687 ms  0x71a4 ret:0x7f8caaa9b020::7f8caaa9b020  60 a5 d8 bc                                      `...
  4741 ms  0x71a4 PK11_Derive()
  4741 ms  0x71a4 basekey:0x7f8cbd8ec800
  4742 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4742 ms  0x71a4 ret:0x7f8caaaeb280
  4742 ms  0x71a4 PK11_PubDeriveWithKDF()
  4742 ms  0x71a4 seckey:0x7f8caaa99020
  4742 ms     | 0x71a4 EC_ValidatePublicKey()
  4742 ms     | 0x71a4 ret:0x0
  4744 ms  0x71a4 ret:0x7f8cbd8ec800
  4744 ms  SECKEY_ECParamsToKeySize()
  4744 ms  0x71a4 ret:0xff
  4744 ms  0x71a4 PK11_DeriveWithFlags()
  4744 ms  0x71a4 basekey:0x7f8caaaeb280
  4744 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4744 ms  0x71a4 ret:0x7f8caaaeb380
  4744 ms  0x71a4 PK11_Derive()
  4744 ms  0x71a4 basekey:0x7f8cbd8ec800
  4744 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4744 ms  0x71a4 ret:0x7f8caaaeb400
  4745 ms  0x71a4 PK11_DeriveWithFlags()
  4745 ms  0x71a4 basekey:0x7f8caaaeb400
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8caaaeb280
  4745 ms  0x71a4 PK11_DeriveWithFlags()
  4745 ms  0x71a4 basekey:0x7f8caaaeb400
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8cbd8ec800
  4745 ms  0x71a4 PK11_DeriveWithFlags()
  4745 ms  0x71a4 basekey:0x7f8caaaeb400
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8caaaeb380
  4745 ms  0x71a4 PK11_Derive()
  4745 ms  0x71a4 basekey:0x7f8caaaeb580
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8caaaeb680
  4745 ms  0x71a4 PK11_DeriveWithFlags()
  4745 ms  0x71a4 basekey:0x7f8cbd8ec800
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8caaaeb400
  4745 ms  0x71a4 PK11_DeriveWithFlags()
  4745 ms  0x71a4 basekey:0x7f8cbd8ec800
  4745 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4745 ms  0x71a4 ret:0x7f8caaaeb380
  4750 ms  SECKEY_ECParamsToKeySize()
  4750 ms  0x71a4 ret:0x100
  4751 ms  SECKEY_ECParamsToBasePointOrderLen()
  4751 ms  0x71a4 ret:0x100
  4751 ms  SECKEY_ECParamsToBasePointOrderLen()
  4751 ms  0x71a4 ret:0x100
  4751 ms  0x71a4 EC_ValidatePublicKey()
  4756 ms  0x71a4 ret:0x0
  4762 ms  0x71a4 PK11_DeriveWithFlags()
  4762 ms  0x71a4 basekey:0x7f8cbd8ec800
  4762 ms     | 0x71a4 PK11_DeriveWithTemplate()
  4762 ms  0x71a4 ret:0x7f8caaaeb380
  4763 ms  0x71a4 PR_Connect()
  4763 ms  0x71a4 fd:0x7f8caaae8b50
           /* TID 0x71ac */
  4953 ms  0x71ac PR_Close()
  4953 ms  0x71ac fd:0x7f8caaae8a90
           /* TID 0x7209 */
  4953 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4954 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  4970 ms  0x71a4 SSL_AuthCertificateComplete()
  4970 ms  0x71a4 fd:0x7f8caaae86a0
  4970 ms  0x71a4 err:0x0
  4970 ms     | 0x71a4 PK11_DeriveWithFlags()
  4970 ms     | 0x71a4 basekey:0x7f8caaaeb680
  4970 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4970 ms     | 0x71a4 ret:0x7f8caaaeb380
  4970 ms     | 0x71a4 PK11_DeriveWithFlags()
  4970 ms     | 0x71a4 basekey:0x7f8caaaeb680
  4970 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4970 ms     | 0x71a4 ret:0x7f8caaaeb580
  4970 ms     | 0x71a4 PK11_DeriveWithFlags()
  4970 ms     | 0x71a4 basekey:0x7f8caaaeb680
  4970 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4970 ms     | 0x71a4 ret:0x7f8caaaecd80
  4970 ms     | 0x71a4 PK11_DeriveWithFlags()
  4970 ms     | 0x71a4 basekey:0x7f8caaaeb280
  4971 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4971 ms     | 0x71a4 ret:0x7f8caaaece00
  4971 ms     | 0x71a4 PK11_DeriveWithFlags()
  4971 ms     | 0x71a4 basekey:0x7f8caaaeb280
  4971 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4971 ms     | 0x71a4 ret:0x7f8caaaece80
  4971 ms     | 0x71a4 PK11_DeriveWithFlags()
  4971 ms     | 0x71a4 basekey:0x7f8caaaeb580
  4971 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4971 ms     | 0x71a4 ret:0x7f8caaaece80
  4971 ms     | 0x71a4 PK11_DeriveWithFlags()
  4971 ms     | 0x71a4 basekey:0x7f8caaaeb580
  4971 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4971 ms     | 0x71a4 ret:0x7f8caaaecf00
  4971 ms     | 0x71a4 PK11_DeriveWithFlags()
  4971 ms     | 0x71a4 basekey:0x7f8caaaeb280
  4971 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4971 ms     | 0x71a4 ret:0x7f8caaaeb400
  4971 ms     | 0x71a4 PK11_Encrypt()
  4971 ms     | 0x71a4 symkey:0x7f8caaaece00
  4972 ms     | 0x71a4 PK11_DeriveWithFlags()
  4972 ms     | 0x71a4 basekey:0x7f8caaaeb380
  4972 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4972 ms     | 0x71a4 ret:0x7f8caaaeb400
  4972 ms     | 0x71a4 PK11_DeriveWithFlags()
  4972 ms     | 0x71a4 basekey:0x7f8caaaeb380
  4972 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4972 ms     | 0x71a4 ret:0x7f8caaaecf00
  4972 ms     | 0x71a4 PK11_DeriveWithFlags()
  4972 ms     | 0x71a4 basekey:0x7f8caaaeb680
  4972 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  4972 ms     | 0x71a4 ret:0x7f8caaaece00
  4972 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  4972 ms     | 0x71a4 privk:0x7f8caaa9b020::7f8caaa9b020  60 a5 d8 bc                                      `...
  4973 ms     | 0x71a4 privk:0x7f8caaa9b020::7f8caaa9b020  e5 e5 e5 e5                                      ....
  4973 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  4973 ms     | 0x71a4 privk:0x7f8caaa99020::7f8caaa99020  80 a8 d8 bc                                      ....
  4973 ms     | 0x71a4 privk:0x7f8caaa99020::7f8caaa99020  e5 e5 e5 e5                                      ....
  4976 ms  0x71a4 PK11_Encrypt()
  4976 ms  0x71a4 symkey:0x7f8caaaeb400
  4978 ms  0x71a4 PK11_Encrypt()
  4978 ms  0x71a4 symkey:0x7f8caaaeb400
  5010 ms  0x71a4 PK11_DeriveWithFlags()
  5010 ms  0x71a4 basekey:0x7f8caaaece00
  5010 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5010 ms  0x71a4 ret:0x7f8cbd8ec800
  5010 ms  0x71a4 PK11_DeriveWithFlags()
  5010 ms  0x71a4 basekey:0x7f8caaaece00
  5010 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5010 ms  0x71a4 ret:0x7f8cbd8ec800
  5010 ms  0x71a4 PK11_Encrypt()
  5010 ms  0x71a4 symkey:0x7f8caaaeb400
  5765 ms  0x71a4 PK11_Encrypt()
  5765 ms  0x71a4 symkey:0x7f8caaaeb400
           /* TID 0x71bb */
  5772 ms  0x71bb PR_Close()
  5772 ms  0x71bb fd:0x7f8cbbbd5fa0
           /* TID 0x71a4 */
  5834 ms  0x71a4 SSL_ImportFD()
  5834 ms  0x71a4 ret:0x7f8cbcfe15e0
  5834 ms  0x71a4 SSL_AuthCertificateHook()
  5834 ms  0x71a4 fd:0x7f8cbcfe15e0
  5834 ms  0x71a4 ret:0x0
  5835 ms  0x71a4 PR_Connect()
  5835 ms  0x71a4 fd:0x7f8cbcfe15e0
  5873 ms  0x71a4 SECKEY_CreateECPrivateKey()
  5873 ms  0x71a4 cx:0x7f8cbbbd0f88
  5875 ms     | 0x71a4 EC_ValidatePublicKey()
  5875 ms     | 0x71a4 ret:0x0
  5875 ms  0x71a4 ret:0x7f8caaaa9820::7f8caaaa9820  f0 a1 d8 bc                                      ....
  5875 ms  0x71a4 SECKEY_CreateECPrivateKey()
  5875 ms  0x71a4 cx:0x7f8cbbbd0f88
  5877 ms     | 0x71a4 EC_ValidatePublicKey()
  5883 ms     | 0x71a4 ret:0x0
  5883 ms  0x71a4 ret:0x7f8caaaab820::7f8caaaab820  50 8b af aa                                      P...
  5939 ms  0x71a4 PK11_Derive()
  5939 ms  0x71a4 basekey:0x7f8cbd8ec800
  5939 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5939 ms  0x71a4 ret:0x7f8caaaeb280
  5939 ms  0x71a4 PK11_PubDeriveWithKDF()
  5939 ms  0x71a4 seckey:0x7f8caaaa9820
  5939 ms     | 0x71a4 EC_ValidatePublicKey()
  5939 ms     | 0x71a4 ret:0x0
  5941 ms  0x71a4 ret:0x7f8cbd8ec800
  5941 ms  SECKEY_ECParamsToKeySize()
  5941 ms  0x71a4 ret:0xff
  5941 ms  0x71a4 PK11_DeriveWithFlags()
  5941 ms  0x71a4 basekey:0x7f8caaaeb280
  5941 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5941 ms  0x71a4 ret:0x7f8caaaeb680
  5941 ms  0x71a4 PK11_Derive()
  5941 ms  0x71a4 basekey:0x7f8cbd8ec800
  5941 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5941 ms  0x71a4 ret:0x7f8caaaecf00
  5942 ms  0x71a4 PK11_DeriveWithFlags()
  5942 ms  0x71a4 basekey:0x7f8caaaecf00
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8caaaeb280
  5942 ms  0x71a4 PK11_DeriveWithFlags()
  5942 ms  0x71a4 basekey:0x7f8caaaecf00
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8cbd8ec800
  5942 ms  0x71a4 PK11_DeriveWithFlags()
  5942 ms  0x71a4 basekey:0x7f8caaaecf00
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8caaaeb680
  5942 ms  0x71a4 PK11_Derive()
  5942 ms  0x71a4 basekey:0x7f8caaa0d180
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8caaa0d200
  5942 ms  0x71a4 PK11_DeriveWithFlags()
  5942 ms  0x71a4 basekey:0x7f8cbd8ec800
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8caaaecf00
  5942 ms  0x71a4 PK11_DeriveWithFlags()
  5942 ms  0x71a4 basekey:0x7f8cbd8ec800
  5942 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5942 ms  0x71a4 ret:0x7f8caaaeb680
  5947 ms  0x71a4 PK11_DeriveWithFlags()
  5947 ms  0x71a4 basekey:0x7f8cbd8ec800
  5947 ms     | 0x71a4 PK11_DeriveWithTemplate()
  5947 ms  0x71a4 ret:0x7f8caaaeb680
           /* TID 0x71ac */
  6093 ms  0x71ac PR_Close()
  6093 ms  0x71ac fd:0x7f8caaae8d90
           /* TID 0x7209 */
  6093 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6094 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  6094 ms  0x71a4 SSL_AuthCertificateComplete()
  6094 ms  0x71a4 fd:0x7f8cbcfe15e0
  6094 ms  0x71a4 err:0x0
  6094 ms     | 0x71a4 PK11_DeriveWithFlags()
  6094 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6094 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6094 ms     | 0x71a4 ret:0x7f8caaaeb680
  6094 ms     | 0x71a4 PK11_DeriveWithFlags()
  6094 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6094 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6094 ms     | 0x71a4 ret:0x7f8caaa0d180
  6094 ms     | 0x71a4 PK11_DeriveWithFlags()
  6094 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6094 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaa0d600
  6095 ms     | 0x71a4 PK11_DeriveWithFlags()
  6095 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6095 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaa0d680
  6095 ms     | 0x71a4 PK11_DeriveWithFlags()
  6095 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6095 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaa0d700
  6095 ms     | 0x71a4 PK11_DeriveWithFlags()
  6095 ms     | 0x71a4 basekey:0x7f8caaa0d180
  6095 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaa0d700
  6095 ms     | 0x71a4 PK11_DeriveWithFlags()
  6095 ms     | 0x71a4 basekey:0x7f8caaa0d180
  6095 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaa0d780
  6095 ms     | 0x71a4 PK11_DeriveWithFlags()
  6095 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6095 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6095 ms     | 0x71a4 ret:0x7f8caaaecf00
  6095 ms     | 0x71a4 PK11_Encrypt()
  6095 ms     | 0x71a4 symkey:0x7f8caaa0d680
  6097 ms     | 0x71a4 PK11_DeriveWithFlags()
  6097 ms     | 0x71a4 basekey:0x7f8caaaeb680
  6097 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6097 ms     | 0x71a4 ret:0x7f8caaaecf00
  6097 ms     | 0x71a4 PK11_DeriveWithFlags()
  6097 ms     | 0x71a4 basekey:0x7f8caaaeb680
  6097 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6097 ms     | 0x71a4 ret:0x7f8caaa0d780
  6097 ms     | 0x71a4 PK11_DeriveWithFlags()
  6097 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6097 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6097 ms     | 0x71a4 ret:0x7f8caaa0d680
  6097 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  6097 ms     | 0x71a4 privk:0x7f8caaaab820::7f8caaaab820  50 8b af aa                                      P...
  6097 ms     | 0x71a4 privk:0x7f8caaaab820::7f8caaaab820  e5 e5 e5 e5                                      ....
  6098 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  6098 ms     | 0x71a4 privk:0x7f8caaaa9820::7f8caaaa9820  f0 a1 d8 bc                                      ....
  6098 ms     | 0x71a4 privk:0x7f8caaaa9820::7f8caaaa9820  e5 e5 e5 e5                                      ....
  6100 ms  0x71a4 PK11_Encrypt()
  6100 ms  0x71a4 symkey:0x7f8caaaecf00
  6100 ms  0x71a4 PK11_Encrypt()
  6100 ms  0x71a4 symkey:0x7f8caaaecf00
  6134 ms  0x71a4 PK11_DeriveWithFlags()
  6134 ms  0x71a4 basekey:0x7f8caaa0d680
  6134 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6134 ms  0x71a4 ret:0x7f8cbd8ec800
  6134 ms  0x71a4 PK11_DeriveWithFlags()
  6134 ms  0x71a4 basekey:0x7f8caaa0d680
  6134 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6134 ms  0x71a4 ret:0x7f8cbd8ec800
  6135 ms  0x71a4 PK11_Encrypt()
  6135 ms  0x71a4 symkey:0x7f8caaaecf00
  6286 ms  0x71a4 PK11_Encrypt()
  6286 ms  0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71bb */
  6290 ms  0x71bb PR_Close()
  6290 ms  0x71bb fd:0x7f8cbcfe1910
           /* TID 0x71a4 */
  6320 ms  0x71a4 SSL_ImportFD()
  6321 ms  0x71a4 ret:0x7f8cbcfe1d60
  6321 ms  0x71a4 SSL_AuthCertificateHook()
  6321 ms  0x71a4 fd:0x7f8cbcfe1d60
  6321 ms  0x71a4 ret:0x0
  6321 ms  0x71a4 PR_Connect()
  6321 ms  0x71a4 fd:0x7f8cbcfe1d60
  6358 ms  0x71a4 SECKEY_CreateECPrivateKey()
  6358 ms  0x71a4 cx:0x7f8cbbbd1608
  6359 ms     | 0x71a4 EC_ValidatePublicKey()
  6359 ms     | 0x71a4 ret:0x0
  6359 ms  0x71a4 ret:0x7f8caaaaa820::7f8caaaaa820  b0 f5 a7 aa                                      ....
  6359 ms  0x71a4 SECKEY_CreateECPrivateKey()
  6359 ms  0x71a4 cx:0x7f8cbbbd1608
  6360 ms     | 0x71a4 EC_ValidatePublicKey()
  6361 ms     | 0x71a4 ret:0x0
  6361 ms  0x71a4 ret:0x7f8caaab0820::7f8caaab0820  e0 f7 a7 aa                                      ....
  6416 ms  0x71a4 PK11_Derive()
  6416 ms  0x71a4 basekey:0x7f8cbd8ec800
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaaeb280
  6417 ms  0x71a4 PK11_PubDeriveWithKDF()
  6417 ms  0x71a4 seckey:0x7f8caaaaa820
  6417 ms     | 0x71a4 EC_ValidatePublicKey()
  6417 ms     | 0x71a4 ret:0x0
  6417 ms  0x71a4 ret:0x7f8cbd8ec800
  6417 ms  SECKEY_ECParamsToKeySize()
  6417 ms  0x71a4 ret:0xff
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8caaaeb280
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d200
  6417 ms  0x71a4 PK11_Derive()
  6417 ms  0x71a4 basekey:0x7f8cbd8ec800
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d780
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8caaa0d780
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaaeb280
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8caaa0d780
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8cbd8ec800
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8caaa0d780
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d200
  6417 ms  0x71a4 PK11_Derive()
  6417 ms  0x71a4 basekey:0x7f8caaa0c900
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d500
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8cbd8ec800
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d780
  6417 ms  0x71a4 PK11_DeriveWithFlags()
  6417 ms  0x71a4 basekey:0x7f8cbd8ec800
  6417 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6417 ms  0x71a4 ret:0x7f8caaa0d200
  6418 ms  0x71a4 PK11_DeriveWithFlags()
  6418 ms  0x71a4 basekey:0x7f8cbd8ec800
  6418 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6418 ms  0x71a4 ret:0x7f8caaa0d200
           /* TID 0x71ac */
  6564 ms  0x71ac PR_Close()
  6564 ms  0x71ac fd:0x7f8cbba5aa90
           /* TID 0x7209 */
  6564 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6564 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  6565 ms  0x71a4 SSL_AuthCertificateComplete()
  6565 ms  0x71a4 fd:0x7f8cbcfe1d60
  6565 ms  0x71a4 err:0x0
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaa0d500
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0d200
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaa0d500
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0c900
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaa0d500
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0c580
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0c880
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0dd00
  6565 ms     | 0x71a4 PK11_DeriveWithFlags()
  6565 ms     | 0x71a4 basekey:0x7f8caaa0c900
  6565 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6565 ms     | 0x71a4 ret:0x7f8caaa0dd00
  6566 ms     | 0x71a4 PK11_DeriveWithFlags()
  6566 ms     | 0x71a4 basekey:0x7f8caaa0c900
  6566 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6566 ms     | 0x71a4 ret:0x7f8caaa0df00
  6566 ms     | 0x71a4 PK11_DeriveWithFlags()
  6566 ms     | 0x71a4 basekey:0x7f8caaaeb280
  6566 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6566 ms     | 0x71a4 ret:0x7f8caaa0d780
  6566 ms     | 0x71a4 PK11_Encrypt()
  6566 ms     | 0x71a4 symkey:0x7f8caaa0c880
  6566 ms     | 0x71a4 PK11_DeriveWithFlags()
  6566 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6566 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6566 ms     | 0x71a4 ret:0x7f8caaa0d780
  6566 ms     | 0x71a4 PK11_DeriveWithFlags()
  6566 ms     | 0x71a4 basekey:0x7f8caaa0d200
  6566 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6566 ms     | 0x71a4 ret:0x7f8caaa0df00
  6567 ms     | 0x71a4 PK11_DeriveWithFlags()
  6567 ms     | 0x71a4 basekey:0x7f8caaa0d500
  6567 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  6567 ms     | 0x71a4 ret:0x7f8caaa0c880
  6567 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  6567 ms     | 0x71a4 privk:0x7f8caaab0820::7f8caaab0820  e0 f7 a7 aa                                      ....
  6567 ms     | 0x71a4 privk:0x7f8caaab0820::7f8caaab0820  e5 e5 e5 e5                                      ....
  6567 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  6567 ms     | 0x71a4 privk:0x7f8caaaaa820::7f8caaaaa820  b0 f5 a7 aa                                      ....
  6567 ms     | 0x71a4 privk:0x7f8caaaaa820::7f8caaaaa820  e5 e5 e5 e5                                      ....
  6572 ms  0x71a4 PK11_Encrypt()
  6572 ms  0x71a4 symkey:0x7f8caaa0d780
  6572 ms  0x71a4 PK11_Encrypt()
  6572 ms  0x71a4 symkey:0x7f8caaa0d780
  6604 ms  0x71a4 PK11_DeriveWithFlags()
  6604 ms  0x71a4 basekey:0x7f8caaa0c880
  6604 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6605 ms  0x71a4 ret:0x7f8cbd8ec800
  6605 ms  0x71a4 PK11_DeriveWithFlags()
  6605 ms  0x71a4 basekey:0x7f8caaa0c880
  6605 ms     | 0x71a4 PK11_DeriveWithTemplate()
  6605 ms  0x71a4 ret:0x7f8cbd8ec800
  6605 ms  0x71a4 PK11_Encrypt()
  6605 ms  0x71a4 symkey:0x7f8caaa0d780
  6677 ms  0x71a4 PK11_Encrypt()
  6677 ms  0x71a4 symkey:0x7f8caaa0d780
           /* TID 0x71bb */
  6688 ms  0x71bb PR_Close()
  6688 ms  0x71bb fd:0x7f8cbbb662e0
           /* TID 0x71a4 */
  6695 ms  0x71a4 PK11_Encrypt()
  6695 ms  0x71a4 symkey:0x7f8caaaecf00
  6898 ms  0x71a4 PK11_Encrypt()
  6898 ms  0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71bb */
  6901 ms  0x71bb PR_Close()
  6901 ms  0x71bb fd:0x7f8cbbb665b0
           /* TID 0x71a4 */
  6908 ms  0x71a4 PK11_Encrypt()
  6908 ms  0x71a4 symkey:0x7f8caaaecf00
  7026 ms  0x71a4 PK11_Encrypt()
  7026 ms  0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71ac */
  7028 ms  0x71ac PR_Close()
  7028 ms  0x71ac fd:0x7f8cbbb66670
           /* TID 0x71bb */
  7035 ms  0x71bb PR_Close()
  7035 ms  0x71bb fd:0x7f8cbbb666d0
           /* TID 0x71a4 */
  7124 ms  0x71a4 PK11_Encrypt()
  7124 ms  0x71a4 symkey:0x7f8caaaecf00
  7124 ms  0x71a4 SSL_ImportFD()
  7124 ms  0x71a4 ret:0x7f8cc1b44ca0
  7124 ms  0x71a4 SSL_AuthCertificateHook()
  7124 ms  0x71a4 fd:0x7f8cc1b44ca0
  7124 ms  0x71a4 ret:0x0
  7124 ms  0x71a4 PR_Connect()
  7124 ms  0x71a4 fd:0x7f8cc1b44ca0
  7127 ms  0x71a4 SSL_ImportFD()
  7127 ms  0x71a4 ret:0x7f8cc1e4cd00
  7127 ms  0x71a4 SSL_AuthCertificateHook()
  7127 ms  0x71a4 fd:0x7f8cc1e4cd00
  7127 ms  0x71a4 ret:0x0
  7127 ms  0x71a4 PR_Connect()
  7127 ms  0x71a4 fd:0x7f8cc1e4cd00
  7127 ms  0x71a4 PK11_Encrypt()
  7127 ms  0x71a4 symkey:0x7f8caaaecf00
  7161 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7161 ms  0x71a4 cx:0x7f8cbbbd1c88
  7162 ms     | 0x71a4 EC_ValidatePublicKey()
  7162 ms     | 0x71a4 ret:0x0
  7162 ms  0x71a4 ret:0x7f8cc1817820::7f8cc1817820  b0 2f 4c bd                                      ./L.
  7162 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7162 ms  0x71a4 cx:0x7f8cbbbd1c88
  7163 ms     | 0x71a4 EC_ValidatePublicKey()
  7164 ms     | 0x71a4 ret:0x0
  7164 ms  0x71a4 ret:0x7f8cc199b020::7f8cc199b020  80 dd 8e bd                                      ....
  7165 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7165 ms  0x71a4 cx:0x7f8cbbbd1e28
  7165 ms     | 0x71a4 EC_ValidatePublicKey()
  7165 ms     | 0x71a4 ret:0x0
  7165 ms  0x71a4 ret:0x7f8cc1c04820::7f8cc1c04820  f0 56 43 bd                                      .VC.
  7165 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7165 ms  0x71a4 cx:0x7f8cbbbd1e28
  7166 ms     | 0x71a4 EC_ValidatePublicKey()
  7167 ms     | 0x71a4 ret:0x0
  7167 ms  0x71a4 ret:0x7f8cc1c0a020::7f8cc1c0a020  00 51 de bd                                      .Q..
  7209 ms  0x71a4 PK11_Encrypt()
  7209 ms  0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71ac */
  7210 ms  0x71ac PR_Close()
  7210 ms  0x71ac fd:0x7f8cbba5a3d0
           /* TID 0x71a4 */
  7218 ms  0x71a4 PK11_Derive()
  7218 ms  0x71a4 basekey:0x7f8cbd8ec800
  7218 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7218 ms  0x71a4 ret:0x7f8caaaeb280
  7218 ms  0x71a4 PK11_PubDeriveWithKDF()
  7218 ms  0x71a4 seckey:0x7f8cc1817820
  7218 ms     | 0x71a4 EC_ValidatePublicKey()
  7218 ms     | 0x71a4 ret:0x0
  7219 ms  0x71a4 ret:0x7f8cbd8ec800
  7219 ms  SECKEY_ECParamsToKeySize()
  7219 ms  0x71a4 ret:0xff
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8caaaeb280
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaa0d500
  7219 ms  0x71a4 PK11_Derive()
  7219 ms  0x71a4 basekey:0x7f8cbd8ec800
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaa0df00
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8caaa0df00
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaaeb280
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8caaa0df00
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8cbd8ec800
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8caaa0df00
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaa0d500
  7219 ms  0x71a4 PK11_Derive()
  7219 ms  0x71a4 basekey:0x7f8cbbb6b100
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8cbbb6b180
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8cbd8ec800
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaa0df00
  7219 ms  0x71a4 PK11_DeriveWithFlags()
  7219 ms  0x71a4 basekey:0x7f8cbd8ec800
  7219 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7219 ms  0x71a4 ret:0x7f8caaa0d500
  7221 ms  SECKEY_ECParamsToKeySize()
  7221 ms  0x71a4 ret:0x100
  7221 ms  SECKEY_ECParamsToBasePointOrderLen()
  7221 ms  0x71a4 ret:0x100
  7221 ms  SECKEY_ECParamsToBasePointOrderLen()
  7221 ms  0x71a4 ret:0x100
  7221 ms  0x71a4 EC_ValidatePublicKey()
  7223 ms  0x71a4 ret:0x0
  7225 ms  0x71a4 PK11_DeriveWithFlags()
  7225 ms  0x71a4 basekey:0x7f8cbd8ec800
  7225 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7225 ms  0x71a4 ret:0x7f8caaa0d500
  7225 ms  0x71a4 PK11_Derive()
  7225 ms  0x71a4 basekey:0x7f8caaa0d500
  7225 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7225 ms  0x71a4 ret:0x7f8cbbb6b100
  7225 ms  0x71a4 PK11_PubDeriveWithKDF()
  7225 ms  0x71a4 seckey:0x7f8cc1c04820
  7225 ms     | 0x71a4 EC_ValidatePublicKey()
  7225 ms     | 0x71a4 ret:0x0
  7225 ms  0x71a4 ret:0x7f8caaa0d500
  7225 ms  SECKEY_ECParamsToKeySize()
  7225 ms  0x71a4 ret:0xff
  7225 ms  0x71a4 PK11_DeriveWithFlags()
  7225 ms  0x71a4 basekey:0x7f8cbbb6b100
  7225 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7225 ms  0x71a4 ret:0x7f8cbbce3180
  7225 ms  0x71a4 PK11_Derive()
  7225 ms  0x71a4 basekey:0x7f8caaa0d500
  7225 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7225 ms  0x71a4 ret:0x7f8cbbce3200
  7225 ms  0x71a4 PK11_DeriveWithFlags()
  7225 ms  0x71a4 basekey:0x7f8cbbce3200
  7225 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8cbbb6b100
  7226 ms  0x71a4 PK11_DeriveWithFlags()
  7226 ms  0x71a4 basekey:0x7f8cbbce3200
  7226 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8caaa0d500
  7226 ms  0x71a4 PK11_DeriveWithFlags()
  7226 ms  0x71a4 basekey:0x7f8cbbce3200
  7226 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8cbbce3180
  7226 ms  0x71a4 PK11_Derive()
  7226 ms  0x71a4 basekey:0x7f8cbbce3700
  7226 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8cbbce3780
  7226 ms  0x71a4 PK11_DeriveWithFlags()
  7226 ms  0x71a4 basekey:0x7f8caaa0d500
  7226 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8cbbce3200
  7226 ms  0x71a4 PK11_DeriveWithFlags()
  7226 ms  0x71a4 basekey:0x7f8caaa0d500
  7226 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7226 ms  0x71a4 ret:0x7f8cbbce3180
  7226 ms  SECKEY_ECParamsToKeySize()
  7226 ms  0x71a4 ret:0x100
  7226 ms  SECKEY_ECParamsToBasePointOrderLen()
  7226 ms  0x71a4 ret:0x100
  7226 ms  SECKEY_ECParamsToBasePointOrderLen()
  7226 ms  0x71a4 ret:0x100
  7226 ms  0x71a4 EC_ValidatePublicKey()
  7228 ms  0x71a4 ret:0x0
  7230 ms  0x71a4 PK11_DeriveWithFlags()
  7230 ms  0x71a4 basekey:0x7f8caaa0d500
  7230 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7230 ms  0x71a4 ret:0x7f8cbbce3180
  7231 ms  0x71a4 PR_Connect()
  7231 ms  0x71a4 fd:0x7f8cbbb66eb0
           /* TID 0x71ac */
  7246 ms  0x71ac PR_Close()
  7246 ms  0x71ac fd:0x7f8cbbb66850
  7376 ms  0x71ac PR_Close()
  7376 ms  0x71ac fd:0x7f8cbba5a9d0
           /* TID 0x7209 */
  7376 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7377 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  7377 ms  0x71a4 SSL_AuthCertificateComplete()
  7377 ms  0x71a4 fd:0x7f8cc1b44ca0
  7377 ms  0x71a4 err:0x0
  7378 ms     | 0x71a4 PK11_DeriveWithFlags()
  7378 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7378 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7378 ms     | 0x71a4 ret:0x7f8cbbce3180
  7378 ms     | 0x71a4 PK11_DeriveWithFlags()
  7378 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7378 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7378 ms     | 0x71a4 ret:0x7f8cbbce3700
  7378 ms     | 0x71a4 PK11_DeriveWithFlags()
  7378 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7378 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7378 ms     | 0x71a4 ret:0x7f8cbbce3d00
  7378 ms     | 0x71a4 PK11_DeriveWithFlags()
  7378 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7378 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7378 ms     | 0x71a4 ret:0x7f8cbbce3d80
  7378 ms     | 0x71a4 PK11_DeriveWithFlags()
  7378 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7378 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7378 ms     | 0x71a4 ret:0x7f8cbbce3e00
  7379 ms     | 0x71a4 PK11_DeriveWithFlags()
  7379 ms     | 0x71a4 basekey:0x7f8cbbce3700
  7379 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7379 ms     | 0x71a4 ret:0x7f8cbbce3e00
  7379 ms     | 0x71a4 PK11_DeriveWithFlags()
  7379 ms     | 0x71a4 basekey:0x7f8cbbce3700
  7379 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7379 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7379 ms     | 0x71a4 PK11_DeriveWithFlags()
  7379 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7379 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7379 ms     | 0x71a4 ret:0x7f8caaa0df00
  7379 ms     | 0x71a4 PK11_Encrypt()
  7379 ms     | 0x71a4 symkey:0x7f8cbbce3d80
  7379 ms     | 0x71a4 PK11_DeriveWithFlags()
  7379 ms     | 0x71a4 basekey:0x7f8cbbce3180
  7379 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7380 ms     | 0x71a4 ret:0x7f8caaa0df00
  7380 ms     | 0x71a4 PK11_DeriveWithFlags()
  7380 ms     | 0x71a4 basekey:0x7f8cbbce3180
  7380 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7380 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7380 ms     | 0x71a4 PK11_DeriveWithFlags()
  7380 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7380 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7380 ms     | 0x71a4 ret:0x7f8cbbce3d80
  7380 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7380 ms     | 0x71a4 privk:0x7f8cc199b020::7f8cc199b020  80 dd 8e bd                                      ....
  7381 ms     | 0x71a4 privk:0x7f8cc199b020::7f8cc199b020  e5 e5 e5 e5                                      ....
  7381 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7381 ms     | 0x71a4 privk:0x7f8cc1817820::7f8cc1817820  b0 2f 4c bd                                      ./L.
  7381 ms     | 0x71a4 privk:0x7f8cc1817820::7f8cc1817820  e5 e5 e5 e5                                      ....
  7382 ms  0x71a4 PK11_Encrypt()
  7382 ms  0x71a4 symkey:0x7f8caaa0df00
  7383 ms  0x71a4 PK11_Encrypt()
  7383 ms  0x71a4 symkey:0x7f8caaa0df00
           /* TID 0x71ac */
  7415 ms  0x71ac PR_Close()
  7415 ms  0x71ac fd:0x7f8cbbb66880
           /* TID 0x724d */
  7415 ms  0x724d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7415 ms  0x724d ret:0x0
           /* TID 0x71a4 */
  7416 ms  0x71a4 SSL_AuthCertificateComplete()
  7416 ms  0x71a4 fd:0x7f8cc1e4cd00
  7416 ms  0x71a4 err:0x0
  7416 ms     | 0x71a4 PK11_DeriveWithFlags()
  7416 ms     | 0x71a4 basekey:0x7f8cbbce3780
  7416 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7416 ms     | 0x71a4 ret:0x7f8cbd8ec800
  7416 ms     | 0x71a4 PK11_DeriveWithFlags()
  7416 ms     | 0x71a4 basekey:0x7f8cbbce3780
  7416 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7416 ms     | 0x71a4 ret:0x7f8caaaeb280
  7416 ms     | 0x71a4 PK11_DeriveWithFlags()
  7416 ms     | 0x71a4 basekey:0x7f8cbbce3780
  7416 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7416 ms     | 0x71a4 ret:0x7f8cbbb6b180
  7416 ms     | 0x71a4 PK11_DeriveWithFlags()
  7416 ms     | 0x71a4 basekey:0x7f8cbbb6b100
  7416 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7416 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7416 ms     | 0x71a4 PK11_DeriveWithFlags()
  7416 ms     | 0x71a4 basekey:0x7f8cbbb6b100
  7417 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7417 ms     | 0x71a4 ret:0x7f8cbbce3a80
  7417 ms     | 0x71a4 PK11_DeriveWithFlags()
  7417 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7417 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7417 ms     | 0x71a4 ret:0x7f8cbbce3a80
  7417 ms     | 0x71a4 PK11_DeriveWithFlags()
  7417 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7417 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7417 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7417 ms     | 0x71a4 PK11_DeriveWithFlags()
  7417 ms     | 0x71a4 basekey:0x7f8cbbb6b100
  7417 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7417 ms     | 0x71a4 ret:0x7f8cbbce3200
  7417 ms     | 0x71a4 PK11_Encrypt()
  7417 ms     | 0x71a4 symkey:0x7f8cbbce3e80
  7418 ms     | 0x71a4 PK11_DeriveWithFlags()
  7418 ms     | 0x71a4 basekey:0x7f8cbd8ec800
  7418 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7418 ms     | 0x71a4 ret:0x7f8cbbce3200
  7418 ms     | 0x71a4 PK11_DeriveWithFlags()
  7418 ms     | 0x71a4 basekey:0x7f8cbd8ec800
  7418 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7418 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7418 ms     | 0x71a4 PK11_DeriveWithFlags()
  7418 ms     | 0x71a4 basekey:0x7f8cbbce3780
  7418 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7418 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7419 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7419 ms     | 0x71a4 privk:0x7f8cc1c0a020::7f8cc1c0a020  00 51 de bd                                      .Q..
  7419 ms     | 0x71a4 privk:0x7f8cc1c0a020::7f8cc1c0a020  e5 e5 e5 e5                                      ....
  7419 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7419 ms     | 0x71a4 privk:0x7f8cc1c04820::7f8cc1c04820  f0 56 43 bd                                      .VC.
  7419 ms     | 0x71a4 privk:0x7f8cc1c04820::7f8cc1c04820  e5 e5 e5 e5                                      ....
  7420 ms  0x71a4 PK11_DeriveWithFlags()
  7420 ms  0x71a4 basekey:0x7f8cbbce3d80
  7420 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7420 ms  0x71a4 ret:0x7f8caaa0d500
  7420 ms  0x71a4 PK11_DeriveWithFlags()
  7420 ms  0x71a4 basekey:0x7f8cbbce3d80
  7420 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7420 ms  0x71a4 ret:0x7f8caaa0d500
  7420 ms  0x71a4 PK11_Encrypt()
  7420 ms  0x71a4 symkey:0x7f8caaa0df00
  7424 ms  0x71a4 PK11_Encrypt()
  7424 ms  0x71a4 symkey:0x7f8cbbce3200
  7426 ms  0x71a4 PK11_Encrypt()
  7426 ms  0x71a4 symkey:0x7f8caaa0df00
  7456 ms  0x71a4 PK11_DeriveWithFlags()
  7456 ms  0x71a4 basekey:0x7f8cbbce3e80
  7456 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7456 ms  0x71a4 ret:0x7f8caaa0d500
  7456 ms  0x71a4 PK11_DeriveWithFlags()
  7456 ms  0x71a4 basekey:0x7f8cbbce3e80
  7456 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7456 ms  0x71a4 ret:0x7f8caaa0d500
  7456 ms  0x71a4 PR_Close()
  7456 ms  0x71a4 fd:0x7f8cc1e4cd00
  7456 ms     | 0x71a4 PK11_Encrypt()
  7456 ms     | 0x71a4 symkey:0x7f8cbbce3200
  7477 ms  0x71a4 PK11_Encrypt()
  7477 ms  0x71a4 symkey:0x7f8caaa0df00
  7478 ms  0x71a4 SSL_ImportFD()
  7478 ms  0x71a4 ret:0x7f8cbcd385b0
  7478 ms  0x71a4 SSL_AuthCertificateHook()
  7478 ms  0x71a4 fd:0x7f8cbcd385b0
  7478 ms  0x71a4 ret:0x0
  7478 ms  0x71a4 PR_Connect()
  7478 ms  0x71a4 fd:0x7f8cbcd385b0
  7478 ms  0x71a4 SSL_ImportFD()
  7478 ms  0x71a4 ret:0x7f8cbbb66880
  7478 ms  0x71a4 SSL_AuthCertificateHook()
  7478 ms  0x71a4 fd:0x7f8cbbb66880
  7478 ms  0x71a4 ret:0x0
  7478 ms  0x71a4 PR_Connect()
  7478 ms  0x71a4 fd:0x7f8cbbb66880
  7479 ms  0x71a4 SSL_ImportFD()
  7479 ms  0x71a4 ret:0x7f8cbcd386a0
  7479 ms  0x71a4 SSL_AuthCertificateHook()
  7479 ms  0x71a4 fd:0x7f8cbcd386a0
  7479 ms  0x71a4 ret:0x0
  7479 ms  0x71a4 PR_Connect()
  7479 ms  0x71a4 fd:0x7f8cbcd386a0
  7479 ms  0x71a4 SSL_ImportFD()
  7479 ms  0x71a4 ret:0x7f8cbcd386d0
  7479 ms  0x71a4 SSL_AuthCertificateHook()
  7479 ms  0x71a4 fd:0x7f8cbcd386d0
  7479 ms  0x71a4 ret:0x0
  7479 ms  0x71a4 PR_Connect()
  7479 ms  0x71a4 fd:0x7f8cbcd386d0
  7480 ms  0x71a4 SSL_ImportFD()
  7480 ms  0x71a4 ret:0x7f8cbbeebac0
  7480 ms  0x71a4 SSL_AuthCertificateHook()
  7480 ms  0x71a4 fd:0x7f8cbbeebac0
  7480 ms  0x71a4 ret:0x0
  7480 ms  0x71a4 PR_Connect()
  7480 ms  0x71a4 fd:0x7f8cbbeebac0
  7480 ms  0x71a4 SSL_ImportFD()
  7480 ms  0x71a4 ret:0x7f8cbbeebdf0
  7480 ms  0x71a4 SSL_AuthCertificateHook()
  7480 ms  0x71a4 fd:0x7f8cbbeebdf0
  7480 ms  0x71a4 ret:0x0
  7480 ms  0x71a4 PR_Connect()
  7480 ms  0x71a4 fd:0x7f8cbbeebdf0
           /* TID 0x71ac */
  7484 ms  0x71ac PR_Close()
  7484 ms  0x71ac fd:0x7f8cbd1d3a90
           /* TID 0x71a4 */
  7497 ms  0x71a4 SSL_ImportFD()
  7497 ms  0x71a4 ret:0x7f8cbd4f7640
  7497 ms  0x71a4 SSL_AuthCertificateHook()
  7497 ms  0x71a4 fd:0x7f8cbd4f7640
  7497 ms  0x71a4 ret:0x0
  7497 ms  0x71a4 PR_Connect()
  7497 ms  0x71a4 fd:0x7f8cbd4f7640
           /* TID 0x71ac */
  7500 ms  0x71ac PR_Close()
  7500 ms  0x71ac fd:0x7f8cbd4f7e80
           /* TID 0x71a4 */
  7515 ms  0x71a4 PK11_Encrypt()
  7515 ms  0x71a4 symkey:0x7f8caaaecf00
  7516 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7516 ms  0x71a4 cx:0x7f8cbbbd1e28
  7518 ms     | 0x71a4 EC_ValidatePublicKey()
  7518 ms     | 0x71a4 ret:0x0
  7518 ms  0x71a4 ret:0x7f8cc1813020::7f8cc1813020  b0 f5 cf bb                                      ....
  7518 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7518 ms  0x71a4 cx:0x7f8cbbbd1e28
  7519 ms     | 0x71a4 EC_ValidatePublicKey()
  7521 ms     | 0x71a4 ret:0x0
  7521 ms  0x71a4 ret:0x7f8cc181b820::7f8cc181b820  80 f8 cf bb                                      ....
  7523 ms  0x71a4 PK11_Encrypt()
  7523 ms  0x71a4 symkey:0x7f8caaaecf00
  7524 ms  0x71a4 PK11_Encrypt()
  7524 ms  0x71a4 symkey:0x7f8caaaecf00
  7524 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7524 ms  0x71a4 cx:0x7f8cbbbd2b28
  7525 ms     | 0x71a4 EC_ValidatePublicKey()
  7525 ms     | 0x71a4 ret:0x0
  7525 ms  0x71a4 ret:0x7f8cc1c10020::7f8cc1c10020  10 1f 44 bd                                      ..D.
  7525 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7525 ms  0x71a4 cx:0x7f8cbbbd2b28
  7526 ms     | 0x71a4 EC_ValidatePublicKey()
  7527 ms     | 0x71a4 ret:0x0
  7527 ms  0x71a4 ret:0x7f8cc1f1d820::7f8cc1f1d820  60 da 8e bd                                      `...
  7534 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7534 ms  0x71a4 cx:0x7f8cbbbd2988
  7534 ms     | 0x71a4 EC_ValidatePublicKey()
  7534 ms     | 0x71a4 ret:0x0
  7534 ms  0x71a4 ret:0x7f8cc1f24820::7f8cc1f24820  00 51 de bd                                      .Q..
  7534 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7534 ms  0x71a4 cx:0x7f8cbbbd2988
  7542 ms     | 0x71a4 EC_ValidatePublicKey()
  7543 ms     | 0x71a4 ret:0x0
  7543 ms  0x71a4 ret:0x7f8cc1f2a020::7f8cc1f2a020  c0 59 de bd                                      .Y..
  7544 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7544 ms  0x71a4 cx:0x7f8cbbbd27e8
  7544 ms     | 0x71a4 EC_ValidatePublicKey()
  7544 ms     | 0x71a4 ret:0x0
  7544 ms  0x71a4 ret:0x7f8cc1f33020::7f8cc1f33020  e0 5c de bd                                      .\..
  7544 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7544 ms  0x71a4 cx:0x7f8cbbbd27e8
  7545 ms     | 0x71a4 EC_ValidatePublicKey()
  7546 ms     | 0x71a4 ret:0x0
  7546 ms  0x71a4 ret:0x7f8cc1f35020::7f8cc1f35020  d0 8d b5 be                                      ....
  7548 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7548 ms  0x71a4 cx:0x7f8cbbbd2648
  7548 ms     | 0x71a4 EC_ValidatePublicKey()
  7548 ms     | 0x71a4 ret:0x0
  7548 ms  0x71a4 ret:0x7f8cc1f3a820::7f8cc1f3a820  50 61 b8 be                                      Pa..
  7548 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7548 ms  0x71a4 cx:0x7f8cbbbd2648
  7549 ms     | 0x71a4 EC_ValidatePublicKey()
  7550 ms     | 0x71a4 ret:0x0
  7550 ms  0x71a4 ret:0x7f8cc207a020::7f8cc207a020  d0 63 b8 be                                      .c..
  7553 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7553 ms  0x71a4 cx:0x7f8cbbbd2308
  7554 ms     | 0x71a4 EC_ValidatePublicKey()
  7554 ms     | 0x71a4 ret:0x0
  7554 ms  0x71a4 ret:0x7f8cc207c820::7f8cc207c820  10 65 b8 be                                      .e..
  7554 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7554 ms  0x71a4 cx:0x7f8cbbbd2308
  7554 ms     | 0x71a4 EC_ValidatePublicKey()
  7556 ms     | 0x71a4 ret:0x0
  7556 ms  0x71a4 ret:0x7f8cc207e820::7f8cc207e820  10 55 55 c0                                      .UU.
  7562 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7562 ms  0x71a4 cx:0x7f8cbbbd2cc8
  7562 ms     | 0x71a4 EC_ValidatePublicKey()
  7563 ms     | 0x71a4 ret:0x0
  7563 ms  0x71a4 ret:0x7f8cc2081020::7f8cc2081020  20 d4 ed c0                                       ...
  7563 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7563 ms  0x71a4 cx:0x7f8cbbbd2cc8
  7563 ms     | 0x71a4 EC_ValidatePublicKey()
  7565 ms     | 0x71a4 ret:0x0
  7565 ms  0x71a4 ret:0x7f8cc2084820::7f8cc2084820  80 dd ed c0                                      ....
  7565 ms  0x71a4 SSL_ImportFD()
  7565 ms  0x71a4 ret:0x7f8cbeb7b790
  7565 ms  0x71a4 SSL_AuthCertificateHook()
  7565 ms  0x71a4 fd:0x7f8cbeb7b790
  7565 ms  0x71a4 ret:0x0
  7566 ms  0x71a4 PR_Connect()
  7566 ms  0x71a4 fd:0x7f8cbeb7b790
  7569 ms  0x71a4 SSL_ImportFD()
  7569 ms  0x71a4 ret:0x7f8cbbeebf10
  7569 ms  0x71a4 SSL_AuthCertificateHook()
  7569 ms  0x71a4 fd:0x7f8cbbeebf10
  7569 ms  0x71a4 ret:0x0
  7569 ms  0x71a4 PR_Connect()
  7569 ms  0x71a4 fd:0x7f8cbbeebf10
  7570 ms  0x71a4 SSL_ImportFD()
  7570 ms  0x71a4 ret:0x7f8cbeb7b730
  7570 ms  0x71a4 SSL_AuthCertificateHook()
  7570 ms  0x71a4 fd:0x7f8cbeb7b730
  7570 ms  0x71a4 ret:0x0
  7570 ms  0x71a4 PR_Connect()
  7570 ms  0x71a4 fd:0x7f8cbeb7b730
  7575 ms  0x71a4 PK11_Derive()
  7575 ms  0x71a4 basekey:0x7f8cbbb6b180
  7575 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8caaaeb280
  7576 ms  0x71a4 PK11_PubDeriveWithKDF()
  7576 ms  0x71a4 seckey:0x7f8cc1813020
  7576 ms     | 0x71a4 EC_ValidatePublicKey()
  7576 ms     | 0x71a4 ret:0x0
  7576 ms  0x71a4 ret:0x7f8cbbb6b180
  7576 ms  SECKEY_ECParamsToKeySize()
  7576 ms  0x71a4 ret:0xff
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8caaaeb280
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbd8ec800
  7576 ms  0x71a4 PK11_Derive()
  7576 ms  0x71a4 basekey:0x7f8cbbb6b180
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbbce3e80
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8cbbce3e80
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8caaaeb280
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8cbbce3e80
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbbb6b180
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8cbbce3e80
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbd8ec800
  7576 ms  0x71a4 PK11_Derive()
  7576 ms  0x71a4 basekey:0x7f8cbbce3a80
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbbce3200
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8cbbb6b180
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbbce3e80
  7576 ms  0x71a4 PK11_DeriveWithFlags()
  7576 ms  0x71a4 basekey:0x7f8cbbb6b180
  7576 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7576 ms  0x71a4 ret:0x7f8cbd8ec800
  7578 ms  SECKEY_ECParamsToKeySize()
  7578 ms  0x71a4 ret:0x100
  7578 ms  SECKEY_ECParamsToBasePointOrderLen()
  7578 ms  0x71a4 ret:0x100
  7578 ms  SECKEY_ECParamsToBasePointOrderLen()
  7578 ms  0x71a4 ret:0x100
  7578 ms  0x71a4 EC_ValidatePublicKey()
  7580 ms  0x71a4 ret:0x0
  7582 ms  0x71a4 PK11_DeriveWithFlags()
  7582 ms  0x71a4 basekey:0x7f8cbbb6b180
  7582 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7582 ms  0x71a4 ret:0x7f8cbd8ec800
  7582 ms  0x71a4 SSL_AuthCertificateComplete()
  7582 ms  0x71a4 fd:0x7f8cbcd385b0
  7582 ms  0x71a4 err:0x0
  7582 ms     | 0x71a4 PK11_DeriveWithFlags()
  7582 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7582 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7582 ms     | 0x71a4 ret:0x7f8cbd8ec800
  7582 ms     | 0x71a4 PK11_DeriveWithFlags()
  7582 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7582 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7582 ms     | 0x71a4 ret:0x7f8cbbce3a80
  7582 ms     | 0x71a4 PK11_DeriveWithFlags()
  7582 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7582 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7582 ms     | 0x71a4 ret:0x7f8caaa0d500
  7582 ms     | 0x71a4 PK11_DeriveWithFlags()
  7582 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbb6b100
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3780
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8cbbce3a80
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3780
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8cbbce3a80
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7583 ms     | 0x71a4 PK11_Encrypt()
  7583 ms     | 0x71a4 symkey:0x7f8cbbb6b100
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8cbd8ec800
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3e80
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8cbd8ec800
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7583 ms     | 0x71a4 PK11_DeriveWithFlags()
  7583 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7583 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7583 ms     | 0x71a4 ret:0x7f8cbbb6b100
  7583 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7583 ms     | 0x71a4 privk:0x7f8cc181b820::7f8cc181b820  80 f8 cf bb                                      ....
  7583 ms     | 0x71a4 privk:0x7f8cc181b820::7f8cc181b820  e5 e5 e5 e5                                      ....
  7583 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7583 ms     | 0x71a4 privk:0x7f8cc1813020::7f8cc1813020  b0 f5 cf bb                                      ....
  7583 ms     | 0x71a4 privk:0x7f8cc1813020::7f8cc1813020  e5 e5 e5 e5                                      ....
  7584 ms  0x71a4 PK11_Derive()
  7584 ms  0x71a4 basekey:0x7f8cbbb6b180
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8caaaeb280
  7584 ms  0x71a4 PK11_PubDeriveWithKDF()
  7584 ms  0x71a4 seckey:0x7f8cc1c10020
  7584 ms     | 0x71a4 EC_ValidatePublicKey()
  7584 ms     | 0x71a4 ret:0x0
  7584 ms  0x71a4 ret:0x7f8cbbb6b180
  7584 ms  SECKEY_ECParamsToKeySize()
  7584 ms  0x71a4 ret:0xff
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8caaaeb280
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbce3200
  7584 ms  0x71a4 PK11_Derive()
  7584 ms  0x71a4 basekey:0x7f8cbbb6b180
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbce3c80
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8cbbce3c80
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8caaaeb280
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8cbbce3c80
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbb6b180
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8cbbce3c80
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbce3200
  7584 ms  0x71a4 PK11_Derive()
  7584 ms  0x71a4 basekey:0x7f8cbebb1680
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbebb1700
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8cbbb6b180
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbce3c80
  7584 ms  0x71a4 PK11_DeriveWithFlags()
  7584 ms  0x71a4 basekey:0x7f8cbbb6b180
  7584 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7584 ms  0x71a4 ret:0x7f8cbbce3200
  7588 ms  SECKEY_ECParamsToKeySize()
  7588 ms  0x71a4 ret:0x100
  7588 ms  SECKEY_ECParamsToBasePointOrderLen()
  7588 ms  0x71a4 ret:0x100
  7588 ms  SECKEY_ECParamsToBasePointOrderLen()
  7588 ms  0x71a4 ret:0x100
  7588 ms  0x71a4 EC_ValidatePublicKey()
  7589 ms  0x71a4 ret:0x0
  7591 ms  0x71a4 PK11_DeriveWithFlags()
  7591 ms  0x71a4 basekey:0x7f8cbbb6b180
  7591 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7591 ms  0x71a4 ret:0x7f8cbbce3200
  7597 ms  0x71a4 PK11_Encrypt()
  7597 ms  0x71a4 symkey:0x7f8cbbce3e80
  7597 ms  0x71a4 PK11_Encrypt()
  7597 ms  0x71a4 symkey:0x7f8cbbce3e80
  7597 ms  0x71a4 SSL_AuthCertificateComplete()
  7597 ms  0x71a4 fd:0x7f8cbbeebdf0
  7597 ms  0x71a4 err:0x0
  7597 ms     | 0x71a4 PK11_DeriveWithFlags()
  7597 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7597 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7597 ms     | 0x71a4 ret:0x7f8cbbce3200
  7597 ms     | 0x71a4 PK11_DeriveWithFlags()
  7597 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7597 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7597 ms     | 0x71a4 ret:0x7f8cbebb1680
  7597 ms     | 0x71a4 PK11_DeriveWithFlags()
  7597 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7597 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7597 ms     | 0x71a4 ret:0x7f8cbebb2900
  7597 ms     | 0x71a4 PK11_DeriveWithFlags()
  7597 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7597 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7597 ms     | 0x71a4 ret:0x7f8cbebb2980
  7597 ms     | 0x71a4 PK11_DeriveWithFlags()
  7597 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7597 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbebb2a00
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8cbebb1680
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbebb2a00
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8cbebb1680
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbebb2a80
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7598 ms     | 0x71a4 PK11_Encrypt()
  7598 ms     | 0x71a4 symkey:0x7f8cbebb2980
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbbce3c80
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8cbbce3200
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbebb2a80
  7598 ms     | 0x71a4 PK11_DeriveWithFlags()
  7598 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7598 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7598 ms     | 0x71a4 ret:0x7f8cbebb2980
  7598 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7598 ms     | 0x71a4 privk:0x7f8cc1f1d820::7f8cc1f1d820  60 da 8e bd                                      `...
  7598 ms     | 0x71a4 privk:0x7f8cc1f1d820::7f8cc1f1d820  e5 e5 e5 e5                                      ....
  7598 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7598 ms     | 0x71a4 privk:0x7f8cc1c10020::7f8cc1c10020  10 1f 44 bd                                      ..D.
  7598 ms     | 0x71a4 privk:0x7f8cc1c10020::7f8cc1c10020  e5 e5 e5 e5                                      ....
  7598 ms  0x71a4 PK11_Encrypt()
  7598 ms  0x71a4 symkey:0x7f8cbbce3e80
  7600 ms  0x71a4 PK11_Encrypt()
  7600 ms  0x71a4 symkey:0x7f8cbbce3e80
  7601 ms  0x71a4 PK11_Encrypt()
  7601 ms  0x71a4 symkey:0x7f8cbbce3e80
  7601 ms  0x71a4 PK11_Encrypt()
  7601 ms  0x71a4 symkey:0x7f8cbbce3e80
  7601 ms  0x71a4 PK11_Encrypt()
  7601 ms  0x71a4 symkey:0x7f8cbbce3e80
  7601 ms  0x71a4 PK11_Encrypt()
  7601 ms  0x71a4 symkey:0x7f8cbbce3e80
  7602 ms  0x71a4 PK11_Encrypt()
  7602 ms  0x71a4 symkey:0x7f8cbbce3e80
  7602 ms  0x71a4 PK11_Encrypt()
  7602 ms  0x71a4 symkey:0x7f8cbbce3e80
  7604 ms  0x71a4 PK11_Encrypt()
  7604 ms  0x71a4 symkey:0x7f8cbbce3e80
  7605 ms  0x71a4 PK11_Encrypt()
  7605 ms  0x71a4 symkey:0x7f8cbbce3e80
  7605 ms  0x71a4 PK11_Encrypt()
  7605 ms  0x71a4 symkey:0x7f8cbbce3e80
  7605 ms  0x71a4 PK11_Encrypt()
  7605 ms  0x71a4 symkey:0x7f8cbbce3e80
  7605 ms  0x71a4 PK11_Encrypt()
  7605 ms  0x71a4 symkey:0x7f8cbbce3e80
  7606 ms  0x71a4 PK11_Encrypt()
  7606 ms  0x71a4 symkey:0x7f8cbbce3e80
  7606 ms  0x71a4 PK11_Encrypt()
  7606 ms  0x71a4 symkey:0x7f8cbbce3e80
  7606 ms  0x71a4 PK11_Encrypt()
  7606 ms  0x71a4 symkey:0x7f8cbbce3e80
  7606 ms  0x71a4 PK11_Encrypt()
  7606 ms  0x71a4 symkey:0x7f8cbbce3e80
  7607 ms  0x71a4 PK11_Encrypt()
  7607 ms  0x71a4 symkey:0x7f8cbbce3e80
  7607 ms  0x71a4 PK11_Encrypt()
  7607 ms  0x71a4 symkey:0x7f8cbbce3e80
  7608 ms  0x71a4 PK11_Encrypt()
  7608 ms  0x71a4 symkey:0x7f8cbbce3e80
  7609 ms  0x71a4 PK11_Encrypt()
  7609 ms  0x71a4 symkey:0x7f8cbbce3e80
  7609 ms  0x71a4 PK11_Encrypt()
  7609 ms  0x71a4 symkey:0x7f8cbbce3e80
  7611 ms  0x71a4 PK11_Encrypt()
  7611 ms  0x71a4 symkey:0x7f8cbbce3c80
  7612 ms  0x71a4 PK11_Derive()
  7612 ms  0x71a4 basekey:0x7f8cbbb6b180
  7612 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7612 ms  0x71a4 ret:0x7f8caaaeb280
  7612 ms  0x71a4 PK11_PubDeriveWithKDF()
  7612 ms  0x71a4 seckey:0x7f8cc1f24820
  7612 ms     | 0x71a4 EC_ValidatePublicKey()
  7612 ms     | 0x71a4 ret:0x0
  7613 ms  0x71a4 ret:0x7f8cbbb6b180
  7613 ms  SECKEY_ECParamsToKeySize()
  7613 ms  0x71a4 ret:0xff
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8caaaeb280
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb1700
  7614 ms  0x71a4 PK11_Derive()
  7614 ms  0x71a4 basekey:0x7f8cbbb6b180
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb2a80
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8cbebb2a80
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8caaaeb280
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8cbebb2a80
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbbb6b180
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8cbebb2a80
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb1700
  7614 ms  0x71a4 PK11_Derive()
  7614 ms  0x71a4 basekey:0x7f8cbd1e0600
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb2f80
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8cbbb6b180
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb2a80
  7614 ms  0x71a4 PK11_DeriveWithFlags()
  7614 ms  0x71a4 basekey:0x7f8cbbb6b180
  7614 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7614 ms  0x71a4 ret:0x7f8cbebb1700
  7615 ms  SECKEY_ECParamsToKeySize()
  7615 ms  0x71a4 ret:0x100
  7615 ms  SECKEY_ECParamsToBasePointOrderLen()
  7615 ms  0x71a4 ret:0x100
  7615 ms  SECKEY_ECParamsToBasePointOrderLen()
  7615 ms  0x71a4 ret:0x100
  7615 ms  0x71a4 EC_ValidatePublicKey()
  7629 ms  0x71a4 ret:0x0
  7631 ms  0x71a4 PK11_DeriveWithFlags()
  7631 ms  0x71a4 basekey:0x7f8cbbb6b180
  7631 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7631 ms  0x71a4 ret:0x7f8cbebb1700
  7631 ms  0x71a4 PK11_Derive()
  7631 ms  0x71a4 basekey:0x7f8cbebb1700
  7631 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7631 ms  0x71a4 ret:0x7f8cbd1e0600
  7631 ms  0x71a4 PK11_PubDeriveWithKDF()
  7631 ms  0x71a4 seckey:0x7f8cc1f33020
  7631 ms     | 0x71a4 EC_ValidatePublicKey()
  7631 ms     | 0x71a4 ret:0x0
  7636 ms  0x71a4 ret:0x7f8cbebb1700
  7636 ms  SECKEY_ECParamsToKeySize()
  7636 ms  0x71a4 ret:0xff
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8cbd1e0600
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaa0d880
  7636 ms  0x71a4 PK11_Derive()
  7636 ms  0x71a4 basekey:0x7f8cbebb1700
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaa0dd80
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8caaa0dd80
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8cbd1e0600
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8caaa0dd80
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8cbebb1700
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8caaa0dd80
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaa0d880
  7636 ms  0x71a4 PK11_Derive()
  7636 ms  0x71a4 basekey:0x7f8caaaff580
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaafff80
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8cbebb1700
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaa0dd80
  7636 ms  0x71a4 PK11_DeriveWithFlags()
  7636 ms  0x71a4 basekey:0x7f8cbebb1700
  7636 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7636 ms  0x71a4 ret:0x7f8caaa0d880
  7639 ms  SECKEY_ECParamsToKeySize()
  7639 ms  0x71a4 ret:0x100
  7639 ms  SECKEY_ECParamsToBasePointOrderLen()
  7639 ms  0x71a4 ret:0x100
  7639 ms  SECKEY_ECParamsToBasePointOrderLen()
  7639 ms  0x71a4 ret:0x100
  7639 ms  0x71a4 EC_ValidatePublicKey()
  7640 ms  0x71a4 ret:0x0
  7645 ms  0x71a4 PK11_DeriveWithFlags()
  7645 ms  0x71a4 basekey:0x7f8cbebb1700
  7645 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7645 ms  0x71a4 ret:0x7f8caaa0d880
  7646 ms  0x71a4 PK11_Derive()
  7646 ms  0x71a4 basekey:0x7f8caaa0d880
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8caaaff580
  7646 ms  0x71a4 PK11_PubDeriveWithKDF()
  7646 ms  0x71a4 seckey:0x7f8cc1f3a820
  7646 ms     | 0x71a4 EC_ValidatePublicKey()
  7646 ms     | 0x71a4 ret:0x0
  7646 ms  0x71a4 ret:0x7f8caaa0d880
  7646 ms  SECKEY_ECParamsToKeySize()
  7646 ms  0x71a4 ret:0xff
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8caaaff580
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8ad00
  7646 ms  0x71a4 PK11_Derive()
  7646 ms  0x71a4 basekey:0x7f8caaa0d880
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8ad80
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8cc5f8ad80
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8caaaff580
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8cc5f8ad80
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8caaa0d880
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8cc5f8ad80
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8ad00
  7646 ms  0x71a4 PK11_Derive()
  7646 ms  0x71a4 basekey:0x7f8cc5f8ae00
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8af80
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8caaa0d880
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8ad80
  7646 ms  0x71a4 PK11_DeriveWithFlags()
  7646 ms  0x71a4 basekey:0x7f8caaa0d880
  7646 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7646 ms  0x71a4 ret:0x7f8cc5f8ad00
  7651 ms  SECKEY_ECParamsToKeySize()
  7651 ms  0x71a4 ret:0x100
  7651 ms  SECKEY_ECParamsToBasePointOrderLen()
  7651 ms  0x71a4 ret:0x100
  7651 ms  SECKEY_ECParamsToBasePointOrderLen()
  7651 ms  0x71a4 ret:0x100
  7651 ms  0x71a4 EC_ValidatePublicKey()
  7652 ms  0x71a4 ret:0x0
  7658 ms  0x71a4 PK11_DeriveWithFlags()
  7658 ms  0x71a4 basekey:0x7f8caaa0d880
  7658 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7658 ms  0x71a4 ret:0x7f8cc5f8ad00
  7658 ms  0x71a4 PK11_Derive()
  7658 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7658 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7658 ms  0x71a4 ret:0x7f8cc5f8ae00
  7658 ms  0x71a4 PK11_PubDeriveWithKDF()
  7658 ms  0x71a4 seckey:0x7f8cc207c820
  7658 ms     | 0x71a4 EC_ValidatePublicKey()
  7658 ms     | 0x71a4 ret:0x0
  7660 ms  0x71a4 ret:0x7f8cc5f8ad00
  7660 ms  SECKEY_ECParamsToKeySize()
  7660 ms  0x71a4 ret:0xff
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc5f8ae00
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc1e84e00
  7660 ms  0x71a4 PK11_Derive()
  7660 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc6bc2c80
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc6bc2c80
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc5f8ae00
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc6bc2c80
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc5f8ad00
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc6bc2c80
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc1e84e00
  7660 ms  0x71a4 PK11_Derive()
  7660 ms  0x71a4 basekey:0x7f8cc6bc2d00
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc6bc2f00
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc6bc2c80
  7660 ms  0x71a4 PK11_DeriveWithFlags()
  7660 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7660 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7660 ms  0x71a4 ret:0x7f8cc1e84e00
  7663 ms  SECKEY_ECParamsToKeySize()
  7663 ms  0x71a4 ret:0x100
  7663 ms  SECKEY_ECParamsToBasePointOrderLen()
  7663 ms  0x71a4 ret:0x100
  7663 ms  SECKEY_ECParamsToBasePointOrderLen()
  7663 ms  0x71a4 ret:0x100
  7663 ms  0x71a4 EC_ValidatePublicKey()
  7666 ms  0x71a4 ret:0x0
  7668 ms  0x71a4 PK11_DeriveWithFlags()
  7668 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7668 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7668 ms  0x71a4 ret:0x7f8cc1e84e00
  7668 ms  0x71a4 PK11_Encrypt()
  7668 ms  0x71a4 symkey:0x7f8cbbce3e80
  7670 ms  0x71a4 PK11_Encrypt()
  7670 ms  0x71a4 symkey:0x7f8cbbce3e80
  7671 ms  0x71a4 PK11_DeriveWithFlags()
  7671 ms  0x71a4 basekey:0x7f8cbbb6b100
  7671 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7671 ms  0x71a4 ret:0x7f8cc1e84e00
  7671 ms  0x71a4 PK11_DeriveWithFlags()
  7671 ms  0x71a4 basekey:0x7f8cbbb6b100
  7671 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7671 ms  0x71a4 ret:0x7f8cc1e84e00
  7671 ms  0x71a4 PK11_Encrypt()
  7671 ms  0x71a4 symkey:0x7f8cbbce3e80
  7672 ms  0x71a4 SSL_AuthCertificateComplete()
  7672 ms  0x71a4 fd:0x7f8cbbeebac0
  7672 ms  0x71a4 err:0x0
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc1e84e00
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc6bc2d00
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc8b0c980
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc8b0ca00
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc8b0ca80
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc8b0ca80
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7672 ms     | 0x71a4 ret:0x7f8cc8b0cb00
  7672 ms     | 0x71a4 PK11_DeriveWithFlags()
  7672 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7672 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7674 ms     | 0x71a4 ret:0x7f8cbebb2a80
  7674 ms     | 0x71a4 PK11_Encrypt()
  7674 ms     | 0x71a4 symkey:0x7f8cc8b0ca00
  7674 ms     | 0x71a4 PK11_DeriveWithFlags()
  7674 ms     | 0x71a4 basekey:0x7f8cc1e84e00
  7674 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7674 ms     | 0x71a4 ret:0x7f8cbebb2a80
  7674 ms     | 0x71a4 PK11_DeriveWithFlags()
  7674 ms     | 0x71a4 basekey:0x7f8cc1e84e00
  7674 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7674 ms     | 0x71a4 ret:0x7f8cc8b0cb00
  7674 ms     | 0x71a4 PK11_DeriveWithFlags()
  7674 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  7674 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7674 ms     | 0x71a4 ret:0x7f8cc8b0ca00
  7674 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7674 ms     | 0x71a4 privk:0x7f8cc1f2a020::7f8cc1f2a020  c0 59 de bd                                      .Y..
  7674 ms     | 0x71a4 privk:0x7f8cc1f2a020::7f8cc1f2a020  e5 e5 e5 e5                                      ....
  7674 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7674 ms     | 0x71a4 privk:0x7f8cc1f24820::7f8cc1f24820  00 51 de bd                                      .Q..
  7674 ms     | 0x71a4 privk:0x7f8cc1f24820::7f8cc1f24820  e5 e5 e5 e5                                      ....
  7675 ms  0x71a4 SSL_AuthCertificateComplete()
  7675 ms  0x71a4 fd:0x7f8cbcd386d0
  7675 ms  0x71a4 err:0x0
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8caaafff80
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cbbb6b180
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8caaafff80
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8caaaeb280
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8caaafff80
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cbebb2f80
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cc8b0cb00
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cc8b0cb80
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cc8b0cb80
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8caaaeb280
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  7675 ms     | 0x71a4 PK11_DeriveWithFlags()
  7675 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  7675 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7675 ms     | 0x71a4 ret:0x7f8caaa0dd80
  7675 ms     | 0x71a4 PK11_Encrypt()
  7675 ms     | 0x71a4 symkey:0x7f8cc8b0cb00
  7676 ms     | 0x71a4 PK11_DeriveWithFlags()
  7676 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7676 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7676 ms     | 0x71a4 ret:0x7f8caaa0dd80
  7676 ms     | 0x71a4 PK11_DeriveWithFlags()
  7676 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  7676 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7676 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  7676 ms     | 0x71a4 PK11_DeriveWithFlags()
  7676 ms     | 0x71a4 basekey:0x7f8caaafff80
  7676 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7676 ms     | 0x71a4 ret:0x7f8cc8b0cb00
  7676 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7676 ms     | 0x71a4 privk:0x7f8cc1f35020::7f8cc1f35020  d0 8d b5 be                                      ....
  7676 ms     | 0x71a4 privk:0x7f8cc1f35020::7f8cc1f35020  e5 e5 e5 e5                                      ....
  7677 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7677 ms     | 0x71a4 privk:0x7f8cc1f33020::7f8cc1f33020  e0 5c de bd                                      .\..
  7677 ms     | 0x71a4 privk:0x7f8cc1f33020::7f8cc1f33020  e5 e5 e5 e5                                      ....
  7677 ms  0x71a4 SSL_AuthCertificateComplete()
  7677 ms  0x71a4 fd:0x7f8cbcd386a0
  7677 ms  0x71a4 err:0x0
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cc5f8af80
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cbebb1700
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cc5f8af80
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cbd1e0600
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cc5f8af80
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8caaafff80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8caaaff580
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8caaaff580
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cc80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cc80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8caaaff580
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc5f8ad80
  7677 ms     | 0x71a4 PK11_Encrypt()
  7677 ms     | 0x71a4 symkey:0x7f8cc8b0cc00
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc5f8ad80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7677 ms     | 0x71a4 PK11_DeriveWithFlags()
  7677 ms     | 0x71a4 basekey:0x7f8cc5f8af80
  7677 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7677 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  7677 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7677 ms     | 0x71a4 privk:0x7f8cc207a020::7f8cc207a020  d0 63 b8 be                                      .c..
  7678 ms     | 0x71a4 privk:0x7f8cc207a020::7f8cc207a020  e5 e5 e5 e5                                      ....
  7678 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7678 ms     | 0x71a4 privk:0x7f8cc1f3a820::7f8cc1f3a820  50 61 b8 be                                      Pa..
  7678 ms     | 0x71a4 privk:0x7f8cc1f3a820::7f8cc1f3a820  e5 e5 e5 e5                                      ....
  7678 ms  0x71a4 SSL_AuthCertificateComplete()
  7678 ms  0x71a4 fd:0x7f8cbbb66880
  7678 ms  0x71a4 err:0x0
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc6bc2f00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8caaa0d880
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc6bc2f00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8caaaff580
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc6bc2f00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc5f8af80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0ce80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8caaaff580
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0ce80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8caaaff580
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0cf00
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  7678 ms     | 0x71a4 PK11_Encrypt()
  7678 ms     | 0x71a4 symkey:0x7f8cc8b0cd80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8caaa0d880
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8caaa0d880
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0cf00
  7678 ms     | 0x71a4 PK11_DeriveWithFlags()
  7678 ms     | 0x71a4 basekey:0x7f8cc6bc2f00
  7678 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7678 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7678 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7678 ms     | 0x71a4 privk:0x7f8cc207e820::7f8cc207e820  10 55 55 c0                                      .UU.
  7679 ms     | 0x71a4 privk:0x7f8cc207e820::7f8cc207e820  e5 e5 e5 e5                                      ....
  7679 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7679 ms     | 0x71a4 privk:0x7f8cc207c820::7f8cc207c820  10 65 b8 be                                      .e..
  7679 ms     | 0x71a4 privk:0x7f8cc207c820::7f8cc207c820  e5 e5 e5 e5                                      ....
           /* TID 0x71ac */
  7691 ms  0x71ac PR_Close()
  7691 ms  0x71ac fd:0x7f8cbcdec130
           /* TID 0x71a4 */
  7691 ms  0x71a4 PK11_Encrypt()
  7691 ms  0x71a4 symkey:0x7f8cbbce3e80
           /* TID 0x71ac */
  7693 ms  0x71ac PR_Close()
  7693 ms  0x71ac fd:0x7f8cbcfe1e50
           /* TID 0x71a4 */
  7695 ms  0x71a4 PK11_Encrypt()
  7695 ms  0x71a4 symkey:0x7f8caaaecf00
  7700 ms  0x71a4 PK11_Encrypt()
  7700 ms  0x71a4 symkey:0x7f8cbbce3e80
  7700 ms  0x71a4 SSL_ImportFD()
  7700 ms  0x71a4 ret:0x7f8cbd4f7310
  7700 ms  0x71a4 SSL_AuthCertificateHook()
  7700 ms  0x71a4 fd:0x7f8cbd4f7310
  7700 ms  0x71a4 ret:0x0
  7700 ms  0x71a4 PR_Connect()
  7700 ms  0x71a4 fd:0x7f8cbd4f7310
           /* TID 0x71ac */
  7701 ms  0x71ac PR_Close()
  7701 ms  0x71ac fd:0x7f8cbd8ffbb0
  7702 ms  0x71ac PR_Close()
  7702 ms  0x71ac fd:0x7f8cbd4f7280
           /* TID 0x71a4 */
  7702 ms  0x71a4 PK11_DeriveWithFlags()
  7702 ms  0x71a4 basekey:0x7f8cbebb2980
  7702 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7702 ms  0x71a4 ret:0x7f8cc5f8ad00
  7702 ms  0x71a4 PK11_DeriveWithFlags()
  7702 ms  0x71a4 basekey:0x7f8cbebb2980
  7702 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7702 ms  0x71a4 ret:0x7f8cc5f8ad00
  7702 ms  0x71a4 PK11_Encrypt()
  7702 ms  0x71a4 symkey:0x7f8cbebb2a80
  7703 ms  0x71a4 PK11_Encrypt()
  7703 ms  0x71a4 symkey:0x7f8caaa0dd80
  7703 ms  0x71a4 PK11_Encrypt()
  7703 ms  0x71a4 symkey:0x7f8cc5f8ad80
  7703 ms  0x71a4 PK11_Encrypt()
  7703 ms  0x71a4 symkey:0x7f8cc6bc2c80
  7706 ms  0x71a4 PK11_Derive()
  7706 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7706 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7706 ms  0x71a4 ret:0x7f8cc5f8ae00
  7706 ms  0x71a4 PK11_PubDeriveWithKDF()
  7706 ms  0x71a4 seckey:0x7f8cc2081020
  7706 ms     | 0x71a4 EC_ValidatePublicKey()
  7706 ms     | 0x71a4 ret:0x0
  7706 ms  0x71a4 ret:0x7f8cc5f8ad00
  7706 ms  SECKEY_ECParamsToKeySize()
  7706 ms  0x71a4 ret:0xff
  7706 ms  0x71a4 PK11_DeriveWithFlags()
  7706 ms  0x71a4 basekey:0x7f8cc5f8ae00
  7706 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7706 ms  0x71a4 ret:0x7f8cc6bc2f00
  7706 ms  0x71a4 PK11_Derive()
  7706 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7706 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7706 ms  0x71a4 ret:0x7f8cc8b0cf00
  7706 ms  0x71a4 PK11_DeriveWithFlags()
  7706 ms  0x71a4 basekey:0x7f8cc8b0cf00
  7706 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc5f8ae00
  7707 ms  0x71a4 PK11_DeriveWithFlags()
  7707 ms  0x71a4 basekey:0x7f8cc8b0cf00
  7707 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc5f8ad00
  7707 ms  0x71a4 PK11_DeriveWithFlags()
  7707 ms  0x71a4 basekey:0x7f8cc8b0cf00
  7707 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc6bc2f00
  7707 ms  0x71a4 PK11_Derive()
  7707 ms  0x71a4 basekey:0x7f8cc5c46980
  7707 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc8b0cd00
  7707 ms  0x71a4 PK11_DeriveWithFlags()
  7707 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7707 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc8b0cf00
  7707 ms  0x71a4 PK11_DeriveWithFlags()
  7707 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7707 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7707 ms  0x71a4 ret:0x7f8cc6bc2f00
  7711 ms  0x71a4 PK11_DeriveWithFlags()
  7711 ms  0x71a4 basekey:0x7f8cc5f8ad00
  7711 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7711 ms  0x71a4 ret:0x7f8cc6bc2f00
  7712 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7712 ms  0x71a4 cx:0x7f8cbeb9f8c8
  7712 ms     | 0x71a4 EC_ValidatePublicKey()
  7712 ms     | 0x71a4 ret:0x0
  7712 ms  0x71a4 ret:0x7f8cc2079020::7f8cc2079020  b0 5f de bd                                      ._..
  7713 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7713 ms  0x71a4 cx:0x7f8cbeb9f8c8
  7714 ms     | 0x71a4 EC_ValidatePublicKey()
  7716 ms     | 0x71a4 ret:0x0
  7716 ms  0x71a4 ret:0x7f8cc207b820::7f8cc207b820  c0 3e 89 c1                                      .>..
  7718 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7718 ms  0x71a4 cx:0x7f8cbeb9f728
  7719 ms     | 0x71a4 EC_ValidatePublicKey()
  7719 ms     | 0x71a4 ret:0x0
  7719 ms  0x71a4 ret:0x7f8cc207e020::7f8cc207e020  70 3e 92 c1                                      p>..
  7719 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7719 ms  0x71a4 cx:0x7f8cbeb9f728
  7720 ms     | 0x71a4 EC_ValidatePublicKey()
  7721 ms     | 0x71a4 ret:0x0
  7721 ms  0x71a4 ret:0x7f8cc2094020::7f8cc2094020  80 bd 93 c1                                      ....
  7722 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7722 ms  0x71a4 cx:0x7f8cbbbd2e68
  7722 ms     | 0x71a4 EC_ValidatePublicKey()
  7722 ms     | 0x71a4 ret:0x0
  7722 ms  0x71a4 ret:0x7f8cc49d8020::7f8cc49d8020  00 8b 9e c1                                      ....
  7722 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7722 ms  0x71a4 cx:0x7f8cbbbd2e68
  7723 ms     | 0x71a4 EC_ValidatePublicKey()
  7724 ms     | 0x71a4 ret:0x0
  7724 ms  0x71a4 ret:0x7f8cc49dd020::7f8cc49dd020  b0 80 b0 c1                                      ....
  7728 ms  0x71a4 PR_Close()
  7728 ms  0x71a4 fd:0x7f8cbbeebdf0
  7728 ms     | 0x71a4 PK11_Encrypt()
  7728 ms     | 0x71a4 symkey:0x7f8cbbce3c80
  7728 ms  0x71a4 PK11_Encrypt()
  7728 ms  0x71a4 symkey:0x7f8cbbce3e80
  7729 ms  0x71a4 PK11_Encrypt()
  7729 ms  0x71a4 symkey:0x7f8cbbce3e80
  7729 ms  0x71a4 PK11_Encrypt()
  7729 ms  0x71a4 symkey:0x7f8cbbce3e80
           /* TID 0x71ac */
  7736 ms  0x71ac PR_Close()
  7736 ms  0x71ac fd:0x7f8cbbeeb670
           /* TID 0x71a4 */
  7738 ms  0x71a4 PK11_DeriveWithFlags()
  7738 ms  0x71a4 basekey:0x7f8cc8b0ca00
  7738 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0ca00
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cb00
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cb00
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cc00
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cc00
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cd80
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_DeriveWithFlags()
  7739 ms  0x71a4 basekey:0x7f8cc8b0cd80
  7739 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7739 ms  0x71a4 ret:0x7f8cbebb2900
  7739 ms  0x71a4 PK11_Encrypt()
  7739 ms  0x71a4 symkey:0x7f8cbbce3e80
  7739 ms  0x71a4 PR_Close()
  7739 ms  0x71a4 fd:0x7f8cbbb66880
  7739 ms     | 0x71a4 PK11_Encrypt()
  7739 ms     | 0x71a4 symkey:0x7f8cc6bc2c80
  7739 ms  0x71a4 PR_Close()
  7739 ms  0x71a4 fd:0x7f8cbcd386a0
  7739 ms     | 0x71a4 PK11_Encrypt()
  7739 ms     | 0x71a4 symkey:0x7f8cc5f8ad80
  7740 ms  0x71a4 PR_Close()
  7740 ms  0x71a4 fd:0x7f8cbcd386d0
  7740 ms     | 0x71a4 PK11_Encrypt()
  7740 ms     | 0x71a4 symkey:0x7f8caaa0dd80
  7740 ms  0x71a4 PR_Close()
  7740 ms  0x71a4 fd:0x7f8cbbeebac0
  7740 ms     | 0x71a4 PK11_Encrypt()
  7740 ms     | 0x71a4 symkey:0x7f8cbebb2a80
  7740 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7740 ms  0x71a4 cx:0x7f8cbeb9fa68
  7750 ms     | 0x71a4 EC_ValidatePublicKey()
  7750 ms     | 0x71a4 ret:0x0
  7750 ms  0x71a4 ret:0x7f8cc1c0a020::7f8cc1c0a020  e0 f7 cf bb                                      ....
  7750 ms  0x71a4 SECKEY_CreateECPrivateKey()
  7750 ms  0x71a4 cx:0x7f8cbeb9fa68
  7751 ms     | 0x71a4 EC_ValidatePublicKey()
  7753 ms     | 0x71a4 ret:0x0
  7753 ms  0x71a4 ret:0x7f8cc1f23020::7f8cc1f23020  40 82 b0 c1                                      @...
  7753 ms  0x71a4 PK11_Encrypt()
  7753 ms  0x71a4 symkey:0x7f8cbbce3e80
  7755 ms  0x71a4 PK11_Encrypt()
  7755 ms  0x71a4 symkey:0x7f8cbbce3e80
  7755 ms  0x71a4 PK11_Encrypt()
  7755 ms  0x71a4 symkey:0x7f8cbbce3e80
  7755 ms  0x71a4 PK11_Encrypt()
  7755 ms  0x71a4 symkey:0x7f8cbbce3e80
  7756 ms  0x71a4 PK11_Encrypt()
  7756 ms  0x71a4 symkey:0x7f8cbbce3e80
  7756 ms  0x71a4 PK11_Encrypt()
  7756 ms  0x71a4 symkey:0x7f8cbbce3e80
  7757 ms  0x71a4 PK11_Encrypt()
  7757 ms  0x71a4 symkey:0x7f8cbbce3e80
  7757 ms  0x71a4 PK11_Encrypt()
  7757 ms  0x71a4 symkey:0x7f8cbbce3e80
  7765 ms  0x71a4 PK11_Encrypt()
  7765 ms  0x71a4 symkey:0x7f8cbbce3e80
  7766 ms  0x71a4 PK11_Encrypt()
  7766 ms  0x71a4 symkey:0x7f8cbbce3e80
  7766 ms  0x71a4 PK11_Encrypt()
  7766 ms  0x71a4 symkey:0x7f8cbbce3e80
  7767 ms  0x71a4 PK11_Encrypt()
  7767 ms  0x71a4 symkey:0x7f8cbbce3e80
  7770 ms  0x71a4 PK11_Derive()
  7770 ms  0x71a4 basekey:0x7f8cc8b0c980
  7770 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7770 ms  0x71a4 ret:0x7f8cc6bc2d00
  7770 ms  0x71a4 PK11_PubDeriveWithKDF()
  7770 ms  0x71a4 seckey:0x7f8cc2079020
  7770 ms     | 0x71a4 EC_ValidatePublicKey()
  7770 ms     | 0x71a4 ret:0x0
  7771 ms  0x71a4 ret:0x7f8cc8b0c980
  7771 ms  SECKEY_ECParamsToKeySize()
  7771 ms  0x71a4 ret:0xff
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc6bc2d00
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc1e84e00
  7771 ms  0x71a4 PK11_Derive()
  7771 ms  0x71a4 basekey:0x7f8cc8b0c980
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc8b0ca00
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc8b0ca00
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc6bc2d00
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc8b0ca00
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc8b0c980
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc8b0ca00
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc1e84e00
  7771 ms  0x71a4 PK11_Derive()
  7771 ms  0x71a4 basekey:0x7f8cc8b0ca80
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cbebb2a80
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc8b0c980
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc8b0ca00
  7771 ms  0x71a4 PK11_DeriveWithFlags()
  7771 ms  0x71a4 basekey:0x7f8cc8b0c980
  7771 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7771 ms  0x71a4 ret:0x7f8cc1e84e00
  7774 ms  SECKEY_ECParamsToKeySize()
  7774 ms  0x71a4 ret:0x100
  7774 ms  SECKEY_ECParamsToBasePointOrderLen()
  7774 ms  0x71a4 ret:0x100
  7774 ms  SECKEY_ECParamsToBasePointOrderLen()
  7774 ms  0x71a4 ret:0x100
  7774 ms  0x71a4 EC_ValidatePublicKey()
  7777 ms  0x71a4 ret:0x0
  7780 ms  0x71a4 PK11_DeriveWithFlags()
  7780 ms  0x71a4 basekey:0x7f8cc8b0c980
  7780 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7780 ms  0x71a4 ret:0x7f8cc1e84e00
  7781 ms  0x71a4 PK11_Derive()
  7781 ms  0x71a4 basekey:0x7f8cc1e84e00
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7781 ms  0x71a4 ret:0x7f8cc8b0ca80
  7781 ms  0x71a4 PK11_PubDeriveWithKDF()
  7781 ms  0x71a4 seckey:0x7f8cc207e020
  7781 ms     | 0x71a4 EC_ValidatePublicKey()
  7781 ms     | 0x71a4 ret:0x0
  7781 ms  0x71a4 ret:0x7f8cc1e84e00
  7781 ms  SECKEY_ECParamsToKeySize()
  7781 ms  0x71a4 ret:0xff
  7781 ms  0x71a4 PK11_DeriveWithFlags()
  7781 ms  0x71a4 basekey:0x7f8cc8b0ca80
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7781 ms  0x71a4 ret:0x7f8cbebb2f80
  7781 ms  0x71a4 PK11_Derive()
  7781 ms  0x71a4 basekey:0x7f8cc1e84e00
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7781 ms  0x71a4 ret:0x7f8caaaeb280
  7781 ms  0x71a4 PK11_DeriveWithFlags()
  7781 ms  0x71a4 basekey:0x7f8caaaeb280
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7781 ms  0x71a4 ret:0x7f8cc8b0ca80
  7781 ms  0x71a4 PK11_DeriveWithFlags()
  7781 ms  0x71a4 basekey:0x7f8caaaeb280
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7781 ms  0x71a4 ret:0x7f8cc1e84e00
  7781 ms  0x71a4 PK11_DeriveWithFlags()
  7781 ms  0x71a4 basekey:0x7f8caaaeb280
  7781 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7782 ms  0x71a4 ret:0x7f8cbebb2f80
  7782 ms  0x71a4 PK11_Derive()
  7782 ms  0x71a4 basekey:0x7f8cbbb6b180
  7782 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7782 ms  0x71a4 ret:0x7f8cc8b0cb00
  7782 ms  0x71a4 PK11_DeriveWithFlags()
  7782 ms  0x71a4 basekey:0x7f8cc1e84e00
  7782 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7782 ms  0x71a4 ret:0x7f8caaaeb280
  7782 ms  0x71a4 PK11_DeriveWithFlags()
  7782 ms  0x71a4 basekey:0x7f8cc1e84e00
  7782 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7782 ms  0x71a4 ret:0x7f8cbebb2f80
  7782 ms  SECKEY_ECParamsToKeySize()
  7782 ms  0x71a4 ret:0x100
  7782 ms  SECKEY_ECParamsToBasePointOrderLen()
  7782 ms  0x71a4 ret:0x100
  7782 ms  SECKEY_ECParamsToBasePointOrderLen()
  7782 ms  0x71a4 ret:0x100
  7782 ms  0x71a4 EC_ValidatePublicKey()
  7783 ms  0x71a4 ret:0x0
  7786 ms  0x71a4 PK11_DeriveWithFlags()
  7786 ms  0x71a4 basekey:0x7f8cc1e84e00
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cbebb2f80
  7786 ms  0x71a4 PK11_Derive()
  7786 ms  0x71a4 basekey:0x7f8cbebb2f80
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cbbb6b180
  7786 ms  0x71a4 PK11_PubDeriveWithKDF()
  7786 ms  0x71a4 seckey:0x7f8cc49d8020
  7786 ms     | 0x71a4 EC_ValidatePublicKey()
  7786 ms     | 0x71a4 ret:0x0
  7786 ms  0x71a4 ret:0x7f8cbebb2f80
  7786 ms  SECKEY_ECParamsToKeySize()
  7786 ms  0x71a4 ret:0xff
  7786 ms  0x71a4 PK11_DeriveWithFlags()
  7786 ms  0x71a4 basekey:0x7f8cbbb6b180
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cc8b0cb80
  7786 ms  0x71a4 PK11_Derive()
  7786 ms  0x71a4 basekey:0x7f8cbebb2f80
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8caaa0dd80
  7786 ms  0x71a4 PK11_DeriveWithFlags()
  7786 ms  0x71a4 basekey:0x7f8caaa0dd80
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cbbb6b180
  7786 ms  0x71a4 PK11_DeriveWithFlags()
  7786 ms  0x71a4 basekey:0x7f8caaa0dd80
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cbebb2f80
  7786 ms  0x71a4 PK11_DeriveWithFlags()
  7786 ms  0x71a4 basekey:0x7f8caaa0dd80
  7786 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7786 ms  0x71a4 ret:0x7f8cc8b0cb80
  7787 ms  0x71a4 PK11_Derive()
  7787 ms  0x71a4 basekey:0x7f8caaafff80
  7787 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7787 ms  0x71a4 ret:0x7f8cbd1e0600
  7787 ms  0x71a4 PK11_DeriveWithFlags()
  7787 ms  0x71a4 basekey:0x7f8cbebb2f80
  7787 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7787 ms  0x71a4 ret:0x7f8caaa0dd80
  7787 ms  0x71a4 PK11_DeriveWithFlags()
  7787 ms  0x71a4 basekey:0x7f8cbebb2f80
  7787 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7787 ms  0x71a4 ret:0x7f8cc8b0cb80
  7788 ms  SECKEY_ECParamsToKeySize()
  7788 ms  0x71a4 ret:0x100
  7788 ms  SECKEY_ECParamsToBasePointOrderLen()
  7788 ms  0x71a4 ret:0x100
  7788 ms  SECKEY_ECParamsToBasePointOrderLen()
  7788 ms  0x71a4 ret:0x100
  7788 ms  0x71a4 EC_ValidatePublicKey()
  7789 ms  0x71a4 ret:0x0
  7795 ms  0x71a4 PK11_DeriveWithFlags()
  7795 ms  0x71a4 basekey:0x7f8cbebb2f80
  7795 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7795 ms  0x71a4 ret:0x7f8cc8b0cb80
           /* TID 0x71ac */
  7796 ms  0x71ac PR_Close()
  7796 ms  0x71ac fd:0x7f8cbbeeb310
           /* TID 0x71a4 */
  7816 ms  0x71a4 PK11_Derive()
  7816 ms  0x71a4 basekey:0x7f8cc8b0cb80
           /* TID 0x71ac */
  7818 ms  0x71ac PR_Close()
  7818 ms  0x71ac fd:0x7f8cbbeeb310
           /* TID 0x71a4 */
  7818 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7818 ms  0x71a4 ret:0x7f8caaafff80
  7818 ms  0x71a4 PK11_PubDeriveWithKDF()
  7818 ms  0x71a4 seckey:0x7f8cc1c0a020
  7818 ms     | 0x71a4 EC_ValidatePublicKey()
  7818 ms     | 0x71a4 ret:0x0
  7818 ms  0x71a4 ret:0x7f8cc8b0cb80
  7818 ms  SECKEY_ECParamsToKeySize()
  7818 ms  0x71a4 ret:0xff
  7818 ms  0x71a4 PK11_DeriveWithFlags()
  7818 ms  0x71a4 basekey:0x7f8caaafff80
  7818 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7818 ms  0x71a4 ret:0x7f8cbebb1700
  7818 ms  0x71a4 PK11_Derive()
  7818 ms  0x71a4 basekey:0x7f8cc8b0cb80
  7818 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cc8b0cc00
  7819 ms  0x71a4 PK11_DeriveWithFlags()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cc00
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8caaafff80
  7819 ms  0x71a4 PK11_DeriveWithFlags()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cc00
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cc8b0cb80
  7819 ms  0x71a4 PK11_DeriveWithFlags()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cc00
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cbebb1700
  7819 ms  0x71a4 PK11_Derive()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cc80
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cc5f8ad80
  7819 ms  0x71a4 PK11_DeriveWithFlags()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cb80
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cc8b0cc00
  7819 ms  0x71a4 PK11_DeriveWithFlags()
  7819 ms  0x71a4 basekey:0x7f8cc8b0cb80
  7819 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7819 ms  0x71a4 ret:0x7f8cbebb1700
  7820 ms  SECKEY_ECParamsToKeySize()
  7820 ms  0x71a4 ret:0x100
  7820 ms  SECKEY_ECParamsToBasePointOrderLen()
  7820 ms  0x71a4 ret:0x100
  7820 ms  SECKEY_ECParamsToBasePointOrderLen()
  7820 ms  0x71a4 ret:0x100
  7820 ms  0x71a4 EC_ValidatePublicKey()
  7822 ms  0x71a4 ret:0x0
  7825 ms  0x71a4 PK11_DeriveWithFlags()
  7825 ms  0x71a4 basekey:0x7f8cc8b0cb80
  7825 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7825 ms  0x71a4 ret:0x7f8cbebb1700
           /* TID 0x71ac */
  7829 ms  0x71ac PR_Close()
  7829 ms  0x71ac fd:0x7f8cbbbd5700
  7834 ms  0x71ac PR_Close()
  7834 ms  0x71ac fd:0x7f8cbbbd54c0
           /* TID 0x71a4 */
  7835 ms  0x71a4 PR_Connect()
  7835 ms  0x71a4 fd:0x7f8cbbbd5700
  7835 ms  0x71a4 PR_Connect()
  7835 ms  0x71a4 fd:0x7f8cbeb7ba00
           /* TID 0x71ac */
  7840 ms  0x71ac PR_Close()
  7840 ms  0x71ac fd:0x7f8cbbbd54c0
  7845 ms  0x71ac PR_Close()
  7845 ms  0x71ac fd:0x7f8cbbbc1040
           /* TID 0x71a4 */
  7846 ms  0x71a4 PR_Connect()
  7846 ms  0x71a4 fd:0x7f8cbd1d3790
  7848 ms  0x71a4 PK11_Encrypt()
  7848 ms  0x71a4 symkey:0x7f8cbbce3e80
           /* TID 0x71ac */
  7849 ms  0x71ac PR_Close()
  7849 ms  0x71ac fd:0x7f8cbbbc1040
  7850 ms  0x71ac PR_Close()
  7850 ms  0x71ac fd:0x7f8cbbbc1040
  7852 ms  0x71ac PR_Close()
  7852 ms  0x71ac fd:0x7f8cbbbc1040
  7861 ms  0x71ac PR_Close()
  7861 ms  0x71ac fd:0x7f8cbbbc1040
  7866 ms  0x71ac PR_Close()
  7866 ms  0x71ac fd:0x7f8cbebb3d30
  7870 ms  0x71ac PR_Close()
  7870 ms  0x71ac fd:0x7f8cbd1d3700
  7874 ms  0x71ac PR_Close()
  7874 ms  0x71ac fd:0x7f8cc0547a30
  7877 ms  0x71ac PR_Close()
  7877 ms  0x71ac fd:0x7f8cbbeebac0
  7881 ms  0x71ac PR_Close()
  7881 ms  0x71ac fd:0x7f8cbbeebac0
  7885 ms  0x71ac PR_Close()
  7885 ms  0x71ac fd:0x7f8cbbeebac0
  7887 ms  0x71ac PR_Close()
  7887 ms  0x71ac fd:0x7f8cbbeebac0
  7888 ms  0x71ac PR_Close()
  7888 ms  0x71ac fd:0x7f8cbbeebac0
  7889 ms  0x71ac PR_Close()
  7889 ms  0x71ac fd:0x7f8cbbeebac0
  7890 ms  0x71ac PR_Close()
  7890 ms  0x71ac fd:0x7f8cbbeebac0
  7894 ms  0x71ac PR_Close()
  7894 ms  0x71ac fd:0x7f8cbbeebac0
  7896 ms  0x71ac PR_Close()
  7896 ms  0x71ac fd:0x7f8cbd1d3730
           /* TID 0x7209 */
  7896 ms  0x7209 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7896 ms  0x7209 ret:0x0
           /* TID 0x71a4 */
  7896 ms  0x71a4 SSL_AuthCertificateComplete()
  7896 ms  0x71a4 fd:0x7f8cbd4f7640
  7896 ms  0x71a4 err:0x0
  7896 ms     | 0x71a4 PK11_DeriveWithFlags()
  7896 ms     | 0x71a4 basekey:0x7f8cc8b0cd00
  7896 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7896 ms     | 0x71a4 ret:0x7f8cbebb1700
  7896 ms     | 0x71a4 PK11_DeriveWithFlags()
  7896 ms     | 0x71a4 basekey:0x7f8cc8b0cd00
  7896 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7896 ms     | 0x71a4 ret:0x7f8cc8b0cc80
  7896 ms     | 0x71a4 PK11_DeriveWithFlags()
  7896 ms     | 0x71a4 basekey:0x7f8cc8b0cd00
  7896 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7896 ms     | 0x71a4 ret:0x7f8cc5f8af80
  7896 ms     | 0x71a4 PK11_DeriveWithFlags()
  7896 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8caaaff580
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8caaa0d880
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cc8b0cc80
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8caaa0d880
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cc8b0cc80
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8cc8b0cf00
  7897 ms     | 0x71a4 PK11_Encrypt()
  7897 ms     | 0x71a4 symkey:0x7f8caaaff580
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8cc8b0cf00
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cbebb1700
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7897 ms     | 0x71a4 PK11_DeriveWithFlags()
  7897 ms     | 0x71a4 basekey:0x7f8cc8b0cd00
  7897 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7897 ms     | 0x71a4 ret:0x7f8caaaff580
  7897 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7897 ms     | 0x71a4 privk:0x7f8cc2084820::7f8cc2084820  80 dd ed c0                                      ....
  7897 ms     | 0x71a4 privk:0x7f8cc2084820::7f8cc2084820  e5 e5 e5 e5                                      ....
  7897 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7897 ms     | 0x71a4 privk:0x7f8cc2081020::7f8cc2081020  20 d4 ed c0                                       ...
  7897 ms     | 0x71a4 privk:0x7f8cc2081020::7f8cc2081020  e5 e5 e5 e5                                      ....
  7898 ms  0x71a4 PK11_Encrypt()
  7898 ms  0x71a4 symkey:0x7f8cc8b0cf00
  7898 ms  0x71a4 PK11_Encrypt()
  7898 ms  0x71a4 symkey:0x7f8cc8b0cf00
           /* TID 0x71ac */
  7902 ms  0x71ac PR_Close()
  7902 ms  0x71ac fd:0x7f8cbd4f7970
  7904 ms  0x71ac PR_Close()
  7904 ms  0x71ac fd:0x7f8cbd4f7970
  7905 ms  0x71ac PR_Close()
  7905 ms  0x71ac fd:0x7f8cbd4f7970
  7907 ms  0x71ac PR_Close()
  7907 ms  0x71ac fd:0x7f8cbbcd99d0
  7908 ms  0x71ac PR_Close()
  7908 ms  0x71ac fd:0x7f8cbbcd99d0
  7909 ms  0x71ac PR_Close()
  7909 ms  0x71ac fd:0x7f8cbbcd99d0
  7910 ms  0x71ac PR_Close()
  7910 ms  0x71ac fd:0x7f8cbbcd99d0
  7914 ms  0x71ac PR_Close()
  7914 ms  0x71ac fd:0x7f8cbbcd99d0
  7917 ms  0x71ac PR_Close()
  7917 ms  0x71ac fd:0x7f8cbbcd99d0
  7918 ms  0x71ac PR_Close()
  7918 ms  0x71ac fd:0x7f8cbbcd99d0
  7920 ms  0x71ac PR_Close()
  7920 ms  0x71ac fd:0x7f8cbbcd99d0
  7925 ms  0x71ac PR_Close()
  7925 ms  0x71ac fd:0x7f8cbbcd99d0
  7926 ms  0x71ac PR_Close()
  7926 ms  0x71ac fd:0x7f8cbbcd99d0
  7931 ms  0x71ac PR_Close()
  7931 ms  0x71ac fd:0x7f8cbbcd99d0
           /* TID 0x71a4 */
  7934 ms  0x71a4 PK11_DeriveWithFlags()
  7934 ms  0x71a4 basekey:0x7f8caaaff580
  7934 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7935 ms  0x71a4 ret:0x7f8cc5f8ad00
  7935 ms  0x71a4 PK11_DeriveWithFlags()
  7935 ms  0x71a4 basekey:0x7f8caaaff580
  7935 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7935 ms  0x71a4 ret:0x7f8cc5f8ad00
  7935 ms  0x71a4 PK11_Encrypt()
  7935 ms  0x71a4 symkey:0x7f8cc8b0cf00
           /* TID 0x71ac */
  7935 ms  0x71ac PR_Close()
  7935 ms  0x71ac fd:0x7f8cbbb66d90
  7937 ms  0x71ac PR_Close()
  7937 ms  0x71ac fd:0x7f8cbbb66d90
  7938 ms  0x71ac PR_Close()
  7938 ms  0x71ac fd:0x7f8cbbb66d90
  7939 ms  0x71ac PR_Close()
  7939 ms  0x71ac fd:0x7f8cbbb66d90
  7941 ms  0x71ac PR_Close()
  7941 ms  0x71ac fd:0x7f8cbbb66d90
  7947 ms  0x71ac PR_Close()
  7947 ms  0x71ac fd:0x7f8cc0547a30
           /* TID 0x724d */
  7947 ms  0x724d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7947 ms  0x724d ret:0x0
           /* TID 0x71a4 */
  7947 ms  0x71a4 SSL_AuthCertificateComplete()
  7947 ms  0x71a4 fd:0x7f8cbeb7b730
  7947 ms  0x71a4 err:0x0
  7947 ms     | 0x71a4 PK11_DeriveWithFlags()
  7947 ms     | 0x71a4 basekey:0x7f8cbebb2a80
  7947 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7947 ms     | 0x71a4 ret:0x7f8cc5f8ad00
  7947 ms     | 0x71a4 PK11_DeriveWithFlags()
  7947 ms     | 0x71a4 basekey:0x7f8cbebb2a80
  7947 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7947 ms     | 0x71a4 ret:0x7f8cc5f8ae00
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cbebb2a80
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0cd00
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0ce80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0ce80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc5f8ae00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0ca00
  7948 ms     | 0x71a4 PK11_Encrypt()
  7948 ms     | 0x71a4 symkey:0x7f8cc8b0cd80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc5f8ad00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0ca00
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cc5f8ad00
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  7948 ms     | 0x71a4 PK11_DeriveWithFlags()
  7948 ms     | 0x71a4 basekey:0x7f8cbebb2a80
  7948 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  7948 ms     | 0x71a4 ret:0x7f8cc8b0cd80
  7948 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7948 ms     | 0x71a4 privk:0x7f8cc207b820::7f8cc207b820  c0 3e 89 c1                                      .>..
  7949 ms     | 0x71a4 privk:0x7f8cc207b820::7f8cc207b820  e5 e5 e5 e5                                      ....
  7949 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  7949 ms     | 0x71a4 privk:0x7f8cc2079020::7f8cc2079020  b0 5f de bd                                      ._..
  7949 ms     | 0x71a4 privk:0x7f8cc2079020::7f8cc2079020  e5 e5 e5 e5                                      ....
  7950 ms  0x71a4 PK11_Encrypt()
  7950 ms  0x71a4 symkey:0x7f8cc8b0ca00
  7950 ms  0x71a4 PK11_Encrypt()
  7950 ms  0x71a4 symkey:0x7f8cc8b0ca00
  7983 ms  0x71a4 PK11_Encrypt()
  7983 ms  0x71a4 symkey:0x7f8cc8b0cf00
           /* TID 0x71ac */
  7983 ms  0x71ac PR_Close()
  7983 ms  0x71ac fd:0x7f8cbbbc1040
           /* TID 0x71a4 */
  7986 ms  0x71a4 PK11_DeriveWithFlags()
  7986 ms  0x71a4 basekey:0x7f8cc8b0cd80
  7986 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7986 ms  0x71a4 ret:0x7f8cc8b0c980
  7986 ms  0x71a4 PK11_DeriveWithFlags()
  7986 ms  0x71a4 basekey:0x7f8cc8b0cd80
  7986 ms     | 0x71a4 PK11_DeriveWithTemplate()
  7986 ms  0x71a4 ret:0x7f8cc8b0c980
  7986 ms  0x71a4 PK11_Encrypt()
  7986 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8015 ms  0x71a4 PK11_Encrypt()
  8015 ms  0x71a4 symkey:0x7f8cc8b0cf00
           /* TID 0x71ac */
  8019 ms  0x71ac PR_Close()
  8019 ms  0x71ac fd:0x7f8cbbcd9a00
           /* TID 0x7251 */
  8019 ms  0x7251 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8019 ms  0x7251 ret:0x0
           /* TID 0x71a4 */
  8020 ms  0x71a4 SSL_AuthCertificateComplete()
  8020 ms  0x71a4 fd:0x7f8cbbeebf10
  8020 ms  0x71a4 err:0x0
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0cb00
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cc8b0c980
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0cb00
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cc6bc2d00
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0cb00
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cbebb2a80
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0ca80
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0ca80
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cbebb2900
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cbebb2900
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc6bc2d00
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8cbebb1680
  8020 ms     | 0x71a4 PK11_DeriveWithFlags()
  8020 ms     | 0x71a4 basekey:0x7f8cc8b0ca80
  8020 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8020 ms     | 0x71a4 ret:0x7f8caaaeb280
  8020 ms     | 0x71a4 PK11_Encrypt()
  8020 ms     | 0x71a4 symkey:0x7f8cc6bc2c80
           /* TID 0x7252 */
  8021 ms  0x7252 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8021 ms  0x7252 ret:0x0
           /* TID 0x71ac */
  8021 ms  0x71ac PR_Close()
  8021 ms  0x71ac fd:0x7f8cbd1d3160
           /* TID 0x71a4 */
  8021 ms     | 0x71a4 PK11_DeriveWithFlags()
  8021 ms     | 0x71a4 basekey:0x7f8cc8b0c980
  8021 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8021 ms     | 0x71a4 ret:0x7f8caaaeb280
  8021 ms     | 0x71a4 PK11_DeriveWithFlags()
  8021 ms     | 0x71a4 basekey:0x7f8cc8b0c980
  8021 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8021 ms     | 0x71a4 ret:0x7f8cbebb1680
  8021 ms     | 0x71a4 PK11_DeriveWithFlags()
  8021 ms     | 0x71a4 basekey:0x7f8cc8b0cb00
  8021 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8021 ms     | 0x71a4 ret:0x7f8cc6bc2c80
  8021 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8021 ms     | 0x71a4 privk:0x7f8cc2094020::7f8cc2094020  80 bd 93 c1                                      ....
  8021 ms     | 0x71a4 privk:0x7f8cc2094020::7f8cc2094020  e5 e5 e5 e5                                      ....
  8021 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8021 ms     | 0x71a4 privk:0x7f8cc207e020::7f8cc207e020  70 3e 92 c1                                      p>..
  8021 ms     | 0x71a4 privk:0x7f8cc207e020::7f8cc207e020  e5 e5 e5 e5                                      ....
  8022 ms  0x71a4 PK11_Encrypt()
  8022 ms  0x71a4 symkey:0x7f8caaaeb280
  8022 ms  0x71a4 SSL_AuthCertificateComplete()
  8022 ms  0x71a4 fd:0x7f8cbeb7b790
  8022 ms  0x71a4 err:0x0
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cc1e84e00
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cc8b0ca80
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cc8b0cb00
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cbebb1680
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cbbce3200
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cc8b0ca80
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cbbce3200
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cc8b0ca80
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cbebb2980
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8caaa0dd80
  8022 ms     | 0x71a4 PK11_Encrypt()
  8022 ms     | 0x71a4 symkey:0x7f8cbebb1680
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cc1e84e00
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8caaa0dd80
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cc1e84e00
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8022 ms     | 0x71a4 ret:0x7f8cbebb2980
  8022 ms     | 0x71a4 PK11_DeriveWithFlags()
  8022 ms     | 0x71a4 basekey:0x7f8cbd1e0600
  8022 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8023 ms     | 0x71a4 ret:0x7f8cbebb1680
  8023 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8023 ms     | 0x71a4 privk:0x7f8cc49dd020::7f8cc49dd020  b0 80 b0 c1                                      ....
  8023 ms     | 0x71a4 privk:0x7f8cc49dd020::7f8cc49dd020  e5 e5 e5 e5                                      ....
  8023 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8023 ms     | 0x71a4 privk:0x7f8cc49d8020::7f8cc49d8020  00 8b 9e c1                                      ....
  8023 ms     | 0x71a4 privk:0x7f8cc49d8020::7f8cc49d8020  e5 e5 e5 e5                                      ....
  8023 ms  0x71a4 PK11_Encrypt()
  8023 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8023 ms  0x71a4 PK11_Encrypt()
  8023 ms  0x71a4 symkey:0x7f8caaa0dd80
           /* TID 0x7253 */
  8024 ms  0x7253 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8024 ms  0x7253 ret:0x0
           /* TID 0x71ac */
  8024 ms  0x71ac PR_Close()
  8024 ms  0x71ac fd:0x7f8cbc0db670
           /* TID 0x71a4 */
  8025 ms  0x71a4 PK11_Encrypt()
  8025 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8026 ms  0x71a4 SSL_AuthCertificateComplete()
  8026 ms  0x71a4 fd:0x7f8cbd4f7310
  8026 ms  0x71a4 err:0x0
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cc5f8ad80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbebb2f80
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cc5f8ad80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbbb6b180
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cc5f8ad80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbd1e0600
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8caaafff80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbebb2980
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8caaafff80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbebb2a00
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbebb2a00
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cbbb6b180
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbbce3c80
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8caaafff80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  8026 ms     | 0x71a4 PK11_Encrypt()
  8026 ms     | 0x71a4 symkey:0x7f8cbebb2980
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cc8b0cc00
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cbebb2f80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbbce3c80
  8026 ms     | 0x71a4 PK11_DeriveWithFlags()
  8026 ms     | 0x71a4 basekey:0x7f8cc5f8ad80
  8026 ms     |    | 0x71a4 PK11_DeriveWithTemplate()
  8026 ms     | 0x71a4 ret:0x7f8cbebb2980
  8026 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8026 ms     | 0x71a4 privk:0x7f8cc1f23020::7f8cc1f23020  40 82 b0 c1                                      @...
  8026 ms     | 0x71a4 privk:0x7f8cc1f23020::7f8cc1f23020  e5 e5 e5 e5                                      ....
  8026 ms     | 0x71a4 SECKEY_DestroyPrivateKey()
  8026 ms     | 0x71a4 privk:0x7f8cc1c0a020::7f8cc1c0a020  e0 f7 cf bb                                      ....
  8026 ms     | 0x71a4 privk:0x7f8cc1c0a020::7f8cc1c0a020  e5 e5 e5 e5                                      ....
  8030 ms  0x71a4 PK11_Encrypt()
  8030 ms  0x71a4 symkey:0x7f8cc8b0cc00
  8033 ms  0x71a4 PK11_Encrypt()
  8033 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8038 ms  0x71ac PR_Close()
  8038 ms  0x71ac fd:0x7f8cbbb66d90
           /* TID 0x71a4 */
  8040 ms  0x71a4 PK11_Encrypt()
  8040 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8058 ms  0x71a4 PK11_DeriveWithFlags()
  8058 ms  0x71a4 basekey:0x7f8cc6bc2c80
  8058 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8058 ms  0x71a4 ret:0x7f8cc8b0cb80
  8058 ms  0x71a4 PK11_DeriveWithFlags()
  8058 ms  0x71a4 basekey:0x7f8cc6bc2c80
  8058 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8058 ms  0x71a4 ret:0x7f8cc8b0cb80
  8058 ms  0x71a4 PR_Close()
  8058 ms  0x71a4 fd:0x7f8cbbeebf10
  8058 ms     | 0x71a4 PK11_Encrypt()
  8058 ms     | 0x71a4 symkey:0x7f8caaaeb280
  8061 ms  0x71a4 PK11_DeriveWithFlags()
  8061 ms  0x71a4 basekey:0x7f8cbebb1680
  8061 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8061 ms  0x71a4 ret:0x7f8cbebb2a80
  8061 ms  0x71a4 PK11_DeriveWithFlags()
  8061 ms  0x71a4 basekey:0x7f8cbebb1680
  8061 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8061 ms  0x71a4 ret:0x7f8cbebb2a80
  8061 ms  0x71a4 PR_Close()
  8061 ms  0x71a4 fd:0x7f8cbeb7b790
  8061 ms     | 0x71a4 PK11_Encrypt()
  8061 ms     | 0x71a4 symkey:0x7f8caaa0dd80
  8064 ms  0x71a4 PK11_DeriveWithFlags()
  8064 ms  0x71a4 basekey:0x7f8cbebb2980
  8064 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8064 ms  0x71a4 ret:0x7f8cc8b0cb00
  8064 ms  0x71a4 PK11_DeriveWithFlags()
  8064 ms  0x71a4 basekey:0x7f8cbebb2980
  8064 ms     | 0x71a4 PK11_DeriveWithTemplate()
  8064 ms  0x71a4 ret:0x7f8cc8b0cb00
  8064 ms  0x71a4 PR_Close()
  8064 ms  0x71a4 fd:0x7f8cbd4f7310
  8064 ms     | 0x71a4 PK11_Encrypt()
  8064 ms     | 0x71a4 symkey:0x7f8cc8b0cc00
           /* TID 0x71ac */
  8076 ms  0x71ac PR_Close()
  8076 ms  0x71ac fd:0x7f8cbbeeb250
           /* TID 0x71a4 */
  8104 ms  0x71a4 PK11_Encrypt()
  8104 ms  0x71a4 symkey:0x7f8cc8b0cf00
  8109 ms  0x71a4 PK11_Encrypt()
  8109 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8110 ms  0x71ac PR_Close()
  8110 ms  0x71ac fd:0x7f8cbbb66820
  8118 ms  0x71ac PR_Close()
  8118 ms  0x71ac fd:0x7f8cbbeeba60
           /* TID 0x71a4 */
  8118 ms  0x71a4 PK11_Encrypt()
  8118 ms  0x71a4 symkey:0x7f8caaaecf00
  8119 ms  0x71a4 PK11_Encrypt()
  8119 ms  0x71a4 symkey:0x7f8caaaecf00
  8125 ms  0x71a4 PK11_Encrypt()
  8125 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8201 ms  0x71a4 PK11_Encrypt()
  8201 ms  0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71ac */
  8201 ms  0x71ac PR_Close()
  8201 ms  0x71ac fd:0x7f8cbbeeb4c0
           /* TID 0x71a4 */
  8229 ms  0x71a4 PK11_Encrypt()
  8229 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8231 ms  0x71ac PR_Close()
  8231 ms  0x71ac fd:0x7f8cbbbd5eb0
  8236 ms  0x71ac PR_Close()
  8236 ms  0x71ac fd:0x7f8cbbbd5eb0
           /* TID 0x71a4 */
  8241 ms  0x71a4 PK11_Encrypt()
  8241 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8349 ms  0x71a4 PK11_Encrypt()
  8349 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8350 ms  0x71ac PR_Close()
  8350 ms  0x71ac fd:0x7f8cbc0db670
           /* TID 0x71a4 */
  8359 ms  0x71a4 PK11_Encrypt()
  8359 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8468 ms  0x71a4 PK11_Encrypt()
  8468 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8470 ms  0x71ac PR_Close()
  8470 ms  0x71ac fd:0x7f8cbbb66370
           /* TID 0x71a4 */
  8478 ms  0x71a4 PK11_Encrypt()
  8478 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8585 ms  0x71a4 PK11_Encrypt()
  8585 ms  0x71a4 symkey:0x7f8cc8b0ca00
           /* TID 0x71ac */
  8586 ms  0x71ac PR_Close()
  8586 ms  0x71ac fd:0x7f8cbbbd5a30
           /* TID 0x71a4 */
  8595 ms  0x71a4 PR_Close()
  8595 ms  0x71a4 fd:0x7f8cbca91e80
           /* TID 0x7199 */
  8596 ms  0x7199 EC_ValidatePublicKey()
  8598 ms  0x7199 ret:0x0
  8598 ms  0x7199 EC_ValidatePublicKey()
  8599 ms  0x7199 ret:0x0
  8599 ms  0x7199 EC_ValidatePublicKey()
  8601 ms  0x7199 ret:0x0
  8601 ms  0x7199 EC_ValidatePublicKey()
  8605 ms  0x7199 ret:0x0
  8605 ms  0x7199 EC_ValidatePublicKey()
  8606 ms  0x7199 ret:0x0
  8606 ms  0x7199 EC_ValidatePublicKey()
  8608 ms  0x7199 ret:0x0
  8608 ms  0x7199 EC_ValidatePublicKey()
  8609 ms  0x7199 ret:0x0
  8609 ms  0x7199 EC_ValidatePublicKey()
  8611 ms  0x7199 ret:0x0
  8611 ms  0x7199 EC_ValidatePublicKey()
  8616 ms  0x7199 ret:0x0
  8616 ms  0x7199 EC_ValidatePublicKey()
  8617 ms  0x7199 ret:0x0
           /* TID 0x71a4 */
  8617 ms  0x71a4 PK11_Encrypt()
  8617 ms  0x71a4 symkey:0x7f8caaaeb400
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8cc8b0cf00
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8caaa0d780
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8cc8b0ca00
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8cbbce3e80
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8caaa0df00
  8618 ms  0x71a4 PK11_Encrypt()
  8618 ms  0x71a4 symkey:0x7f8caaaecf00
  8618 ms  0x71a4 PR_Close()
  8618 ms  0x71a4 fd:0x7f8cbbbd5700
  8618 ms  0x71a4 PR_Close()
  8618 ms  0x71a4 fd:0x7f8cbd1d3790
  8618 ms  0x71a4 PR_Close()
  8618 ms  0x71a4 fd:0x7f8cbeb7ba00
  8618 ms  0x71a4 PR_Close()
  8618 ms  0x71a4 fd:0x7f8cbbb66eb0
  8618 ms  0x71a4 PR_Close()
  8618 ms  0x71a4 fd:0x7f8caaae8b50
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8cbbbc1fa0
  8619 ms     | 0x71a4 PK11_Encrypt()
  8619 ms     | 0x71a4 symkey:0x7f8cbbbdd580
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8cbbbc1ca0
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8cbbbc1220
  8619 ms     | 0x71a4 PK11_Encrypt()
  8619 ms     | 0x71a4 symkey:0x7f8cbd8ec700
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8cbc0dbaf0
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8cbeb7b730
  8619 ms     | 0x71a4 PK11_Encrypt()
  8619 ms     | 0x71a4 symkey:0x7f8cc8b0ca00
  8619 ms  0x71a4 PR_Close()
  8619 ms  0x71a4 fd:0x7f8caaae86a0
  8619 ms     | 0x71a4 PK11_Encrypt()
  8619 ms     | 0x71a4 symkey:0x7f8caaaeb400
  8620 ms  0x71a4 PR_Close()
  8620 ms  0x71a4 fd:0x7f8cbd4f7640
  8620 ms     | 0x71a4 PK11_Encrypt()
  8620 ms     | 0x71a4 symkey:0x7f8cc8b0cf00
  8620 ms  0x71a4 PR_Close()
  8620 ms  0x71a4 fd:0x7f8cc1b44ca0
  8620 ms     | 0x71a4 PK11_Encrypt()
  8620 ms     | 0x71a4 symkey:0x7f8caaa0df00
  8620 ms  0x71a4 PR_Close()
  8620 ms  0x71a4 fd:0x7f8cbcfe1d60
  8620 ms     | 0x71a4 PK11_Encrypt()
  8620 ms     | 0x71a4 symkey:0x7f8caaa0d780
  8620 ms  0x71a4 PR_Close()
  8620 ms  0x71a4 fd:0x7f8cbcd385b0
  8620 ms     | 0x71a4 PK11_Encrypt()
  8620 ms     | 0x71a4 symkey:0x7f8cbbce3e80
  8621 ms  0x71a4 PR_Close()
  8621 ms  0x71a4 fd:0x7f8cbcfe15e0
  8621 ms     | 0x71a4 PK11_Encrypt()
  8621 ms     | 0x71a4 symkey:0x7f8caaaecf00
           /* TID 0x71fd */
  8621 ms  0x71fd PR_Close()
  8621 ms  0x71fd fd:0x7f8caaae84c0
  8621 ms  0x71fd PR_Close()
  8621 ms  0x71fd fd:0x7f8caaae84c0
           /* TID 0x7199 */
  8624 ms  0x7199 PR_Close()
  8624 ms  0x7199 fd:0x7f8cc0591ac0
  8624 ms  0x7199 PR_Close()
  8624 ms  0x7199 fd:0x7f8caaae8b50
  8624 ms  0x7199 PR_Close()
  8624 ms  0x7199 fd:0x7f8caaae8e80
  8624 ms  0x7199 PR_Close()
  8624 ms  0x7199 fd:0x7f8caaae8b50
  8626 ms  0x7199 PR_Close()
  8626 ms  0x7199 fd:0x7f8caaae8e80
  8626 ms  0x7199 PR_Close()
  8626 ms  0x7199 fd:0x7f8caaae8b50
           /* TID 0x7214 */
  8629 ms  0x7214 PR_Close()
  8629 ms  0x7214 fd:0x7f8caaae8b50
           /* TID 0x7199 */
  8649 ms  0x7199 PR_Close()
  8649 ms  0x7199 fd:0x7f8caaae8e80
  8649 ms  0x7199 PR_Close()
  8649 ms  0x7199 fd:0x7f8cbbeebee0
  8650 ms  0x7199 PR_Close()
  8650 ms  0x7199 fd:0x7f8caaae8e80
  8650 ms  0x7199 PR_Close()
  8650 ms  0x7199 fd:0x7f8cbbeebee0
  8651 ms  0x7199 PR_Close()
  8651 ms  0x7199 fd:0x7f8cc6bc89a0
  8651 ms  0x7199 PR_Close()
  8651 ms  0x7199 fd:0x7f8cc6bc88b0
  8651 ms  0x7199 PR_Close()
  8651 ms  0x7199 fd:0x7f8cc6bc8a60
  8653 ms  0x7199 PR_Close()
  8653 ms  0x7199 fd:0x7f8cbbeebee0
  8654 ms  0x7199 PR_Close()
  8654 ms  0x7199 fd:0x7f8cbbeebee0
  8657 ms  0x7199 PR_Close()
  8657 ms  0x7199 fd:0x7f8caaae8e80
  8657 ms  0x7199 PR_Close()
  8657 ms  0x7199 fd:0x7f8cbc0db2e0
  8658 ms  0x7199 PR_Close()
  8658 ms  0x7199 fd:0x7f8caaae8e80
  8658 ms  0x7199 PR_Close()
  8658 ms  0x7199 fd:0x7f8cbc0db2e0
  8661 ms  0x7199 PR_Close()
  8661 ms  0x7199 fd:0x7f8cbc0dbaf0
  8662 ms  0x7199 PR_Close()
  8662 ms  0x7199 fd:0x7f8cbc0dbaf0
  8664 ms  0x7199 PR_Close()
  8664 ms  0x7199 fd:0x7f8caaae8e80
  8664 ms  0x7199 PR_Close()
  8664 ms  0x7199 fd:0x7f8cbca91ee0
  8665 ms  0x7199 PR_Close()
  8665 ms  0x7199 fd:0x7f8caaae8e80
  8665 ms  0x7199 PR_Close()
  8665 ms  0x7199 fd:0x7f8cbca91ee0
  8667 ms  0x7199 PR_Close()
  8667 ms  0x7199 fd:0x7f8cbcd385b0
  8668 ms  0x7199 PR_Close()
  8668 ms  0x7199 fd:0x7f8cbcd385b0
  8675 ms  0x7199 PR_Close()
  8675 ms  0x7199 fd:0x7f8cbcdecf40
  8676 ms  0x7199 PR_Close()
  8676 ms  0x7199 fd:0x7f8cbcdecf40
  8678 ms  0x7199 PR_Close()
  8678 ms  0x7199 fd:0x7f8cbcfe11f0
           /* TID 0x7214 */
  8684 ms  0x7214 PR_Close()
  8684 ms  0x7214 fd:0x7f8caaae8610
           /* TID 0x7199 */
  8685 ms  0x7199 PR_Close()
  8685 ms  0x7199 fd:0x7f8caaae8e80
  8685 ms  0x7199 PR_Close()
  8685 ms  0x7199 fd:0x7f8cbcd6c6d0
           /* TID 0x7214 */
  8685 ms  0x7214 PR_Close()
  8685 ms  0x7214 fd:0x7f8caaae8610
  8690 ms  0x7214 PR_Close()
  8690 ms  0x7214 fd:0x7f8caaae8b50
  8713 ms  0x7214 PR_Close()
  8713 ms  0x7214 fd:0x7f8caaae8b50
           /* TID 0x719e */
  8723 ms  0x719e PR_Close()
  8723 ms  0x719e fd:0x7f8cc545adf0
  8726 ms  0x719e PR_Close()
  8726 ms  0x719e fd:0x7f8cc1b447f0
           /* TID 0x7214 */
  8732 ms  0x7214 PR_Close()
  8732 ms  0x7214 fd:0x7f8cbbbc12b0
           /* TID 0x7199 */
  8743 ms  0x7199 PR_Close()
  8743 ms  0x7199 fd:0x7f8caaae8e80
  8743 ms  0x7199 PR_Close()
  8743 ms  0x7199 fd:0x7f8cbbbc12b0
           /* TID 0x71a4 */
  8743 ms  0x71a4 PR_Close()
  8743 ms  0x71a4 fd:0x7f8cc1e746a0
           /* TID 0x71fd */
  8744 ms  0x71fd PR_Close()
  8744 ms  0x71fd fd:0x7f8cbcd6c760
  8744 ms  0x71fd PR_Close()
  8744 ms  0x71fd fd:0x7f8caaae87f0
  8744 ms  0x71fd PR_Close()
  8744 ms  0x71fd fd:0x7f8caaae87f0
  8744 ms  0x71fd PR_Close()
  8744 ms  0x71fd fd:0x7f8caaae87f0
           /* TID 0x7214 */
  8744 ms  0x7214 PR_Close()
  8744 ms  0x7214 fd:0x7f8cbbb66dc0
           /* TID 0x71ac */
  8747 ms  0x71ac PR_Close()
  8747 ms  0x71ac fd:0x7f8cbcd6cfa0
  8747 ms  0x71ac PR_Close()
  8747 ms  0x71ac fd:0x7f8cbcdec070
           /* TID 0x719e */
  8753 ms  0x719e PR_Close()
  8753 ms  0x719e fd:0x7f8cc1e746d0
           /* TID 0x7199 */
  8755 ms  0x7199 PR_Close()
  8755 ms  0x7199 fd:0x7f8caaae8e80
  8755 ms  0x7199 PR_Close()
  8755 ms  0x7199 fd:0x7f8cbba5a400
           /* TID 0x7214 */
  8757 ms  0x7214 PR_Close()
  8757 ms  0x7214 fd:0x7f8cbba5a430
  8759 ms  0x7214 PR_Close()
  8759 ms  0x7214 fd:0x7f8caaae8a60
  8850 ms  0x7214 PR_Close()
  8850 ms  0x7214 fd:0x7f8cbba5a430
  8871 ms  0x7214 PR_Close()
  8871 ms  0x7214 fd:0x7f8cbba5a430
  8875 ms  0x7214 PR_Close()
  8875 ms  0x7214 fd:0x7f8cbba5a850
  8876 ms  0x7214 PR_Close()
  8876 ms  0x7214 fd:0x7f8cbba5a880
  8888 ms  0x7214 PR_Close()
  8888 ms  0x7214 fd:0x7f8cbba5afa0
  8895 ms  0x7214 PR_Close()
  8895 ms  0x7214 fd:0x7f8cbbcd9eb0
  8904 ms  0x7214 PR_Close()
  8904 ms  0x7214 fd:0x7f8cbbeeb8e0
  8914 ms  0x7214 PR_Close()
  8914 ms  0x7214 fd:0x7f8cbbeebe80
  8916 ms  0x7214 PR_Close()
  8916 ms  0x7214 fd:0x7f8cbbeebe80
           /* TID 0x7199 */
  9072 ms  0x7199 PR_Close()
  9072 ms  0x7199 fd:0x7f8caaae8580
  9072 ms  0x7199 PR_Close()
  9072 ms  0x7199 fd:0x7f8caaae8580
  9078 ms  0x7199 PR_Close()
  9078 ms  0x7199 fd:0x7f8ce3eda130
  9078 ms  0x7199 PR_Close()
  9078 ms  0x7199 fd:0x7f8ce3eda190
Process terminated
