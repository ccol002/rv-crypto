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
           /* TID 0x7771 */
    65 ms  0x7771 PR_Close()
    65 ms  0x7771 fd:0x7f0e64d1c820
           /* TID 0x7769 */
   316 ms  0x7769 SSL_ImportFD()
   316 ms  0x7769 ret:0x7f0e64d27430
   316 ms  0x7769 SSL_AuthCertificateHook()
   316 ms  0x7769 fd:0x7f0e64d27430
   316 ms  0x7769 ret:0x0
   316 ms  0x7769 PR_Connect()
   316 ms  0x7769 fd:0x7f0e64d27430
   534 ms  0x7769 SECKEY_CreateECPrivateKey()
   534 ms  0x7769 cx:0x7f0e64d1fae8
   536 ms     | 0x7769 EC_ValidatePublicKey()
   536 ms     | 0x7769 ret:0x0
   536 ms  0x7769 ret:0x7f0e651b8020::7f0e651b8020  40 dc dd 64                                      @..d
   536 ms  0x7769 SECKEY_CreateECPrivateKey()
   536 ms  0x7769 cx:0x7f0e64d1fae8
   538 ms     | 0x7769 EC_ValidatePublicKey()
   542 ms     | 0x7769 ret:0x0
   542 ms  0x7769 ret:0x7f0e651ba020::7f0e651ba020  20 de dd 64                                       ..d
           /* TID 0x77cd */
   587 ms  0x77cd PR_Close()
   587 ms  0x77cd fd:0x7f0e64d27d60
   590 ms  0x77cd PR_Close()
   590 ms  0x77cd fd:0x7f0e64d27d60
   763 ms  0x77cd PR_Close()
   763 ms  0x77cd fd:0x7f0e64d27df0
           /* TID 0x7769 */
   765 ms  SECKEY_ECParamsToKeySize()
   765 ms  0x7769 ret:0x100
   765 ms  0x7769 SECKEY_CreateECPrivateKey()
   765 ms  0x7769 cx:0x7f0e64d1fae8
   766 ms     | 0x7769 EC_ValidatePublicKey()
   767 ms     | 0x7769 ret:0x0
   767 ms  0x7769 ret:0x7f0e5422d820::7f0e5422d820  80 08 22 54                                      .."T
   767 ms  0x7769 PK11_PubDeriveWithKDF()
   767 ms  0x7769 seckey:0x7f0e5422d820
   767 ms     | 0x7769 EC_ValidatePublicKey()
   769 ms     | 0x7769 ret:0x0
   770 ms  0x7769 ret:0x7f0e66efd980
   770 ms  0x7769 PK11_DeriveWithFlags()
   770 ms  0x7769 basekey:0x7f0e66efd980
   770 ms     | 0x7769 PK11_DeriveWithTemplate()
   770 ms  0x7769 ret:0x7f0e64dfdc00
   770 ms  0x7769 PK11_Derive()
   770 ms  0x7769 basekey:0x7f0e64dfdc00
   770 ms     | 0x7769 PK11_DeriveWithTemplate()
   771 ms  0x7769 ret:0x7f0e64dfdd00
   771 ms  0x7769 SECKEY_DestroyPrivateKey()
   771 ms  0x7769 privk:0x7f0e5422d820::7f0e5422d820  80 08 22 54                                      .."T
   771 ms  0x7769 privk:0x7f0e5422d820::7f0e5422d820  e5 e5 e5 e5                                      ....
   771 ms  0x7769 PK11_Encrypt()
   771 ms  0x7769 symkey:0x7f0e64dfde80
   771 ms  0x7769 PR_Connect()
   771 ms  0x7769 fd:0x7f0e64d27f10
           /* TID 0x77c2 */
   823 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   824 ms  0x77c2 ret:0x0
           /* TID 0x7771 */
   824 ms  0x7771 PR_Close()
   824 ms  0x7771 fd:0x7f0e5425b040
           /* TID 0x7769 */
   825 ms  0x7769 SSL_AuthCertificateComplete()
   825 ms  0x7769 fd:0x7f0e64d27430
   825 ms  0x7769 err:0x0
   825 ms  0x7769 PK11_Encrypt()
   825 ms  0x7769 symkey:0x7f0e64dfde80
   989 ms  0x7769 SECKEY_DestroyPrivateKey()
   989 ms  0x7769 privk:0x7f0e651ba020::7f0e651ba020  20 de dd 64                                       ..d
   990 ms  0x7769 privk:0x7f0e651ba020::7f0e651ba020  e5 e5 e5 e5                                      ....
   991 ms  0x7769 SECKEY_DestroyPrivateKey()
   991 ms  0x7769 privk:0x7f0e651b8020::7f0e651b8020  40 dc dd 64                                      @..d
   991 ms  0x7769 privk:0x7f0e651b8020::7f0e651b8020  e5 e5 e5 e5                                      ....
  1219 ms  0x7769 SSL_ImportFD()
  1219 ms  0x7769 ret:0x7f0e5425b220
  1219 ms  0x7769 SSL_AuthCertificateHook()
  1219 ms  0x7769 fd:0x7f0e5425b220
  1219 ms  0x7769 ret:0x0
  1219 ms  0x7769 PR_Connect()
  1219 ms  0x7769 fd:0x7f0e5425b220
  1245 ms  0x7769 SECKEY_CreateECPrivateKey()
  1245 ms  0x7769 cx:0x7f0e5421c728
  1246 ms     | 0x7769 EC_ValidatePublicKey()
  1246 ms     | 0x7769 ret:0x0
  1246 ms  0x7769 ret:0x7f0e5422c020::7f0e5422c020  80 08 22 54                                      .."T
  1246 ms  0x7769 SECKEY_CreateECPrivateKey()
  1246 ms  0x7769 cx:0x7f0e5421c728
  1248 ms     | 0x7769 EC_ValidatePublicKey()
  1252 ms     | 0x7769 ret:0x0
  1252 ms  0x7769 ret:0x7f0e5422e020::7f0e5422e020  60 0a 22 54                                      `."T
           /* TID 0x77c2 */
  1305 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1305 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  1306 ms  SECKEY_ECParamsToKeySize()
  1306 ms  0x7769 ret:0x100
  1306 ms  0x7769 SECKEY_CreateECPrivateKey()
  1306 ms  0x7769 cx:0x7f0e5421c728
  1308 ms     | 0x7769 EC_ValidatePublicKey()
  1311 ms     | 0x7769 ret:0x0
  1312 ms  0x7769 ret:0x7f0e54231020::7f0e54231020  e0 0c 22 54                                      .."T
  1312 ms  0x7769 PK11_PubDeriveWithKDF()
  1312 ms  0x7769 seckey:0x7f0e54231020
  1312 ms     | 0x7769 EC_ValidatePublicKey()
  1316 ms     | 0x7769 ret:0x0
  1320 ms  0x7769 ret:0x7f0e66efd980
  1320 ms  0x7769 PK11_DeriveWithFlags()
  1320 ms  0x7769 basekey:0x7f0e66efd980
  1320 ms     | 0x7769 PK11_DeriveWithTemplate()
  1320 ms  0x7769 ret:0x7f0e64da2d00
  1320 ms  0x7769 PK11_Derive()
  1320 ms  0x7769 basekey:0x7f0e64da2d00
  1320 ms     | 0x7769 PK11_DeriveWithTemplate()
  1320 ms  0x7769 ret:0x7f0e64dfe700
  1321 ms  0x7769 SECKEY_DestroyPrivateKey()
  1321 ms  0x7769 privk:0x7f0e54231020::7f0e54231020  e0 0c 22 54                                      .."T
  1321 ms  0x7769 privk:0x7f0e54231020::7f0e54231020  e5 e5 e5 e5                                      ....
  1321 ms  0x7769 PK11_Encrypt()
  1321 ms  0x7769 symkey:0x7f0e64dfec00
  1322 ms  0x7769 SSL_AuthCertificateComplete()
  1322 ms  0x7769 fd:0x7f0e5425b220
  1322 ms  0x7769 err:0x0
  1322 ms  0x7769 PK11_Encrypt()
  1322 ms  0x7769 symkey:0x7f0e64dfec00
  1374 ms  0x7769 SECKEY_DestroyPrivateKey()
  1374 ms  0x7769 privk:0x7f0e5422e020::7f0e5422e020  60 0a 22 54                                      `."T
  1374 ms  0x7769 privk:0x7f0e5422e020::7f0e5422e020  e5 e5 e5 e5                                      ....
  1374 ms  0x7769 SECKEY_DestroyPrivateKey()
  1374 ms  0x7769 privk:0x7f0e5422c020::7f0e5422c020  80 08 22 54                                      .."T
  1374 ms  0x7769 privk:0x7f0e5422c020::7f0e5422c020  e5 e5 e5 e5                                      ....
  1377 ms  0x7769 PK11_Encrypt()
  1377 ms  0x7769 symkey:0x7f0e64dfec00
  1407 ms  0x7769 PK11_Encrypt()
  1407 ms  0x7769 symkey:0x7f0e64dfec00
  1437 ms  0x7769 PK11_Encrypt()
  1437 ms  0x7769 symkey:0x7f0e64dfec00
  1466 ms  0x7769 PK11_Encrypt()
  1466 ms  0x7769 symkey:0x7f0e64dfec00
  1583 ms  0x7769 PK11_Encrypt()
  1583 ms  0x7769 symkey:0x7f0e64dfec00
  1616 ms  0x7769 PK11_Encrypt()
  1616 ms  0x7769 symkey:0x7f0e64dfec00
  1648 ms  0x7769 PK11_Encrypt()
  1648 ms  0x7769 symkey:0x7f0e64dfec00
           /* TID 0x77bc */
  1676 ms  0x77bc PR_Close()
  1676 ms  0x77bc fd:0x7f0e5425b310
  1676 ms  0x77bc PR_Close()
  1676 ms  0x77bc fd:0x7f0e5425b3d0
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b310
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b3d0
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b310
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b3d0
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b310
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b3d0
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b310
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b3d0
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b310
  1677 ms  0x77bc PR_Close()
  1677 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b310
  1678 ms  0x77bc PR_Close()
  1678 ms  0x77bc fd:0x7f0e5425b3d0
  1679 ms  0x77bc PR_Close()
  1679 ms  0x77bc fd:0x7f0e5425b310
  1679 ms  0x77bc PR_Close()
  1679 ms  0x77bc fd:0x7f0e5425b3d0
  1679 ms  0x77bc PR_Close()
  1679 ms  0x77bc fd:0x7f0e5425b310
  1679 ms  0x77bc PR_Close()
  1679 ms  0x77bc fd:0x7f0e5425b3d0
  1682 ms  0x77bc PR_Close()
  1682 ms  0x77bc fd:0x7f0e5425b310
  1682 ms  0x77bc PR_Close()
  1682 ms  0x77bc fd:0x7f0e5425b2e0
  1685 ms  0x77bc PR_Close()
  1685 ms  0x77bc fd:0x7f0e5425b2e0
  1686 ms  0x77bc PR_Close()
  1686 ms  0x77bc fd:0x7f0e5425b310
  1688 ms  0x77bc PR_Close()
  1688 ms  0x77bc fd:0x7f0e5425b310
  1688 ms  0x77bc PR_Close()
  1688 ms  0x77bc fd:0x7f0e5425b310
  1690 ms  0x77bc PR_Close()
  1690 ms  0x77bc fd:0x7f0e5425b310
  1691 ms  0x77bc PR_Close()
  1691 ms  0x77bc fd:0x7f0e5425b310
  1745 ms  0x77bc PR_Close()
  1745 ms  0x77bc fd:0x7f0e5425b310
  1747 ms  0x77bc PR_Close()
  1747 ms  0x77bc fd:0x7f0e5425b310
  1760 ms  0x77bc PR_Close()
  1760 ms  0x77bc fd:0x7f0e5425b310
  1760 ms  0x77bc PR_Close()
  1760 ms  0x77bc fd:0x7f0e5425b310
  1773 ms  0x77bc PR_Close()
  1773 ms  0x77bc fd:0x7f0e5425b310
  1773 ms  0x77bc PR_Close()
  1773 ms  0x77bc fd:0x7f0e5425b310
  1776 ms  0x77bc PR_Close()
  1776 ms  0x77bc fd:0x7f0e5425b310
  1776 ms  0x77bc PR_Close()
  1776 ms  0x77bc fd:0x7f0e5425b310
           /* TID 0x77b9 */
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
  1776 ms  0x77b9 PR_Close()
  1776 ms  0x77b9 fd:0x7f0e5425b310
           /* TID 0x77cd */
  2279 ms  0x77cd PR_Close()
  2279 ms  0x77cd fd:0x7f0e5425b160
  2282 ms  0x77cd PR_Close()
  2282 ms  0x77cd fd:0x7f0e5425b160
  2683 ms  0x77cd PR_Close()
  2683 ms  0x77cd fd:0x7f0e5425b190
           /* TID 0x7771 */
  4163 ms  0x7771 PR_Close()
  4163 ms  0x7771 fd:0x7f0e5425b190
  4163 ms  0x7771 PR_Close()
  4163 ms  0x7771 fd:0x7f0e5425b3a0
  4163 ms  0x7771 PR_Close()
  4163 ms  0x7771 fd:0x7f0e5425b880
           /* TID 0x7769 */
  4384 ms  0x7769 SSL_ImportFD()
  4384 ms  0x7769 ret:0x7f0e665ea5b0
  4384 ms  0x7769 SSL_AuthCertificateHook()
  4384 ms  0x7769 fd:0x7f0e665ea5b0
  4384 ms  0x7769 ret:0x0
  4384 ms  0x7769 PR_Connect()
  4384 ms  0x7769 fd:0x7f0e665ea5b0
  4432 ms  0x7769 SECKEY_CreateECPrivateKey()
  4432 ms  0x7769 cx:0x7f0e5421ca68
  4432 ms     | 0x7769 EC_ValidatePublicKey()
  4433 ms     | 0x7769 ret:0x0
  4433 ms  0x7769 ret:0x7f0e5423d020::7f0e5423d020  f0 16 8f 66                                      ...f
  4433 ms  0x7769 SECKEY_CreateECPrivateKey()
  4433 ms  0x7769 cx:0x7f0e5421ca68
  4434 ms     | 0x7769 EC_ValidatePublicKey()
  4436 ms     | 0x7769 ret:0x0
  4437 ms  0x7769 ret:0x7f0e5423f020::7f0e5423f020  20 14 8f 66                                       ..f
  4488 ms  SECKEY_ECParamsToKeySize()
  4488 ms  0x7769 ret:0xff
  4488 ms  0x7769 SECKEY_CreateECPrivateKey()
  4488 ms  0x7769 cx:0x7f0e5421ca68
  4489 ms     | 0x7769 EC_ValidatePublicKey()
  4489 ms     | 0x7769 ret:0x0
  4489 ms  0x7769 ret:0x7f0e651b6820::7f0e651b6820  70 1e 8f 66                                      p..f
  4489 ms  0x7769 PK11_PubDeriveWithKDF()
  4489 ms  0x7769 seckey:0x7f0e651b6820
  4489 ms     | 0x7769 EC_ValidatePublicKey()
  4489 ms     | 0x7769 ret:0x0
  4489 ms  0x7769 ret:0x7f0e66efd980
  4489 ms  0x7769 PK11_DeriveWithFlags()
  4489 ms  0x7769 basekey:0x7f0e66efd980
  4489 ms     | 0x7769 PK11_DeriveWithTemplate()
  4489 ms  0x7769 ret:0x7f0e668e2100
  4489 ms  0x7769 PK11_Derive()
  4489 ms  0x7769 basekey:0x7f0e668e2100
  4489 ms     | 0x7769 PK11_DeriveWithTemplate()
  4489 ms  0x7769 ret:0x7f0e668e2180
  4489 ms  0x7769 SECKEY_DestroyPrivateKey()
  4489 ms  0x7769 privk:0x7f0e651b6820::7f0e651b6820  70 1e 8f 66                                      p..f
  4490 ms  0x7769 privk:0x7f0e651b6820::7f0e651b6820  e5 e5 e5 e5                                      ....
  4490 ms  0x7769 PK11_Encrypt()
  4490 ms  0x7769 symkey:0x7f0e668e2300
           /* TID 0x7771 */
  4516 ms  0x7771 PR_Close()
  4516 ms  0x7771 fd:0x7f0e665ea8b0
           /* TID 0x77c2 */
  4516 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4516 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  4516 ms  0x7769 SSL_AuthCertificateComplete()
  4516 ms  0x7769 fd:0x7f0e665ea5b0
  4516 ms  0x7769 err:0x0
  4517 ms  0x7769 PK11_Encrypt()
  4517 ms  0x7769 symkey:0x7f0e668e2300
  4517 ms  0x7769 PK11_Encrypt()
  4517 ms  0x7769 symkey:0x7f0e668e2300
  4538 ms  0x7769 SECKEY_DestroyPrivateKey()
  4538 ms  0x7769 privk:0x7f0e5423f020::7f0e5423f020  20 14 8f 66                                       ..f
  4538 ms  0x7769 privk:0x7f0e5423f020::7f0e5423f020  e5 e5 e5 e5                                      ....
  4541 ms  0x7769 SECKEY_DestroyPrivateKey()
  4541 ms  0x7769 privk:0x7f0e5423d020::7f0e5423d020  f0 16 8f 66                                      ...f
  4542 ms  0x7769 privk:0x7f0e5423d020::7f0e5423d020  e5 e5 e5 e5                                      ....
  4542 ms  0x7769 PK11_Encrypt()
  4542 ms  0x7769 symkey:0x7f0e668e2300
           /* TID 0x7780 */
  4788 ms  0x7780 PR_Close()
  4788 ms  0x7780 fd:0x7f0e665eacd0
           /* TID 0x775e */
  4797 ms  0x775e PR_Close()
  4797 ms  0x775e fd:0x7f0e5411a160
           /* TID 0x7769 */
  4949 ms  0x7769 SSL_ImportFD()
  4949 ms  0x7769 ret:0x7f0e54030430
  4949 ms  0x7769 SSL_AuthCertificateHook()
  4949 ms  0x7769 fd:0x7f0e54030430
  4950 ms  0x7769 ret:0x0
  4950 ms  0x7769 PR_Connect()
  4950 ms  0x7769 fd:0x7f0e54030430
  4950 ms  0x7769 SSL_ImportFD()
  4950 ms  0x7769 ret:0x7f0e54030460
  4950 ms  0x7769 SSL_AuthCertificateHook()
  4950 ms  0x7769 fd:0x7f0e54030460
  4950 ms  0x7769 ret:0x0
  4950 ms  0x7769 PR_Connect()
  4950 ms  0x7769 fd:0x7f0e54030460
  4950 ms  0x7769 SSL_ImportFD()
  4950 ms  0x7769 ret:0x7f0e54030370
  4950 ms  0x7769 SSL_AuthCertificateHook()
  4950 ms  0x7769 fd:0x7f0e54030370
  4950 ms  0x7769 ret:0x0
  4950 ms  0x7769 PR_Connect()
  4950 ms  0x7769 fd:0x7f0e54030370
  4986 ms  0x7769 SECKEY_CreateECPrivateKey()
  4986 ms  0x7769 cx:0x7f0e5421d5c8
  4987 ms     | 0x7769 EC_ValidatePublicKey()
  4987 ms     | 0x7769 ret:0x0
  4987 ms  0x7769 ret:0x7f0e53fd9020::7f0e53fd9020  f0 01 fc 53                                      ...S
  4987 ms  0x7769 SECKEY_CreateECPrivateKey()
  4987 ms  0x7769 cx:0x7f0e5421d5c8
  4988 ms     | 0x7769 EC_ValidatePublicKey()
  4991 ms     | 0x7769 ret:0x0
  4991 ms  0x7769 ret:0x7f0e53fdb020::7f0e53fdb020  c0 04 fc 53                                      ...S
  4991 ms  0x7769 SECKEY_CreateECPrivateKey()
  4991 ms  0x7769 cx:0x7f0e5421d288
  4992 ms     | 0x7769 EC_ValidatePublicKey()
  4992 ms     | 0x7769 ret:0x0
  4992 ms  0x7769 ret:0x7f0e53fdd820::7f0e53fdd820  50 06 fc 53                                      P..S
  4992 ms  0x7769 SECKEY_CreateECPrivateKey()
  4992 ms  0x7769 cx:0x7f0e5421d288
  4993 ms     | 0x7769 EC_ValidatePublicKey()
  4996 ms     | 0x7769 ret:0x0
  4996 ms  0x7769 ret:0x7f0e53fdf820::7f0e53fdf820  40 67 fb 53                                      @g.S
  4997 ms  0x7769 SECKEY_CreateECPrivateKey()
  4997 ms  0x7769 cx:0x7f0e5421d428
  4998 ms     | 0x7769 EC_ValidatePublicKey()
  4998 ms     | 0x7769 ret:0x0
  4998 ms  0x7769 ret:0x7f0e53fe2020::7f0e53fe2020  30 08 fc 53                                      0..S
  4998 ms  0x7769 SECKEY_CreateECPrivateKey()
  4998 ms  0x7769 cx:0x7f0e5421d428
  4999 ms     | 0x7769 EC_ValidatePublicKey()
  5001 ms     | 0x7769 ret:0x0
  5001 ms  0x7769 ret:0x7f0e54236820::7f0e54236820  10 0a fc 53                                      ...S
           /* TID 0x77c2 */
  5031 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5031 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  5031 ms  SECKEY_ECParamsToKeySize()
  5031 ms  0x7769 ret:0x100
  5032 ms  0x7769 SECKEY_CreateECPrivateKey()
  5032 ms  0x7769 cx:0x7f0e5421d5c8
  5033 ms     | 0x7769 EC_ValidatePublicKey()
  5037 ms     | 0x7769 ret:0x0
  5037 ms  0x7769 ret:0x7f0e5409c020::7f0e5409c020  60 40 08 54                                      `@.T
  5037 ms  0x7769 PK11_PubDeriveWithKDF()
  5037 ms  0x7769 seckey:0x7f0e5409c020
  5038 ms     | 0x7769 EC_ValidatePublicKey()
  5043 ms     | 0x7769 ret:0x0
  5047 ms  0x7769 ret:0x7f0e66efd980
  5047 ms  0x7769 PK11_DeriveWithFlags()
  5047 ms  0x7769 basekey:0x7f0e66efd980
  5047 ms     | 0x7769 PK11_DeriveWithTemplate()
  5047 ms  0x7769 ret:0x7f0e6e2dc500
  5047 ms  0x7769 PK11_Derive()
  5047 ms  0x7769 basekey:0x7f0e6e2dc500
  5047 ms     | 0x7769 PK11_DeriveWithTemplate()
  5047 ms  0x7769 ret:0x7f0e6ff64700
  5047 ms  0x7769 SECKEY_DestroyPrivateKey()
  5047 ms  0x7769 privk:0x7f0e5409c020::7f0e5409c020  60 40 08 54                                      `@.T
  5048 ms  0x7769 privk:0x7f0e5409c020::7f0e5409c020  e5 e5 e5 e5                                      ....
  5048 ms  0x7769 PK11_Encrypt()
  5048 ms  0x7769 symkey:0x7f0e540c5100
  5048 ms  0x7769 SSL_AuthCertificateComplete()
  5048 ms  0x7769 fd:0x7f0e54030370
  5048 ms  0x7769 err:0x0
  5051 ms  0x7769 PK11_Encrypt()
  5051 ms  0x7769 symkey:0x7f0e540c5100
           /* TID 0x77c2 */
  5054 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5054 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  5055 ms  SECKEY_ECParamsToKeySize()
  5055 ms  0x7769 ret:0x100
  5055 ms  0x7769 SECKEY_CreateECPrivateKey()
  5055 ms  0x7769 cx:0x7f0e5421d428
  5056 ms     | 0x7769 EC_ValidatePublicKey()
  5059 ms     | 0x7769 ret:0x0
  5059 ms  0x7769 ret:0x7f0e5409d020::7f0e5409d020  30 43 08 54                                      0C.T
  5060 ms  0x7769 PK11_PubDeriveWithKDF()
  5060 ms  0x7769 seckey:0x7f0e5409d020
  5060 ms     | 0x7769 EC_ValidatePublicKey()
  5062 ms     | 0x7769 ret:0x0
  5067 ms  0x7769 ret:0x7f0e66efd980
  5067 ms  0x7769 PK11_DeriveWithFlags()
  5067 ms  0x7769 basekey:0x7f0e66efd980
  5067 ms     | 0x7769 PK11_DeriveWithTemplate()
  5067 ms  0x7769 ret:0x7f0e53ffe200
  5067 ms  0x7769 PK11_Derive()
  5067 ms  0x7769 basekey:0x7f0e53ffe200
  5067 ms     | 0x7769 PK11_DeriveWithTemplate()
  5067 ms  0x7769 ret:0x7f0e53ffee80
  5067 ms  0x7769 SECKEY_DestroyPrivateKey()
  5067 ms  0x7769 privk:0x7f0e5409d020::7f0e5409d020  30 43 08 54                                      0C.T
  5067 ms  0x7769 privk:0x7f0e5409d020::7f0e5409d020  e5 e5 e5 e5                                      ....
  5067 ms  0x7769 PK11_Encrypt()
  5067 ms  0x7769 symkey:0x7f0e540c5480
           /* TID 0x77c2 */
  5068 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5068 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  5068 ms  SECKEY_ECParamsToKeySize()
  5069 ms  0x7769 ret:0x100
  5069 ms  0x7769 SECKEY_CreateECPrivateKey()
  5069 ms  0x7769 cx:0x7f0e5421d288
  5069 ms     | 0x7769 EC_ValidatePublicKey()
  5071 ms     | 0x7769 ret:0x0
  5071 ms  0x7769 ret:0x7f0e5409d820::7f0e5409d820  f0 41 08 54                                      .A.T
  5072 ms  0x7769 PK11_PubDeriveWithKDF()
  5072 ms  0x7769 seckey:0x7f0e5409d820
  5072 ms     | 0x7769 EC_ValidatePublicKey()
  5074 ms     | 0x7769 ret:0x0
  5075 ms  0x7769 ret:0x7f0e66efd980
  5075 ms  0x7769 PK11_DeriveWithFlags()
  5075 ms  0x7769 basekey:0x7f0e66efd980
  5075 ms     | 0x7769 PK11_DeriveWithTemplate()
  5075 ms  0x7769 ret:0x7f0e540c5580
  5075 ms  0x7769 PK11_Derive()
  5075 ms  0x7769 basekey:0x7f0e540c5580
  5075 ms     | 0x7769 PK11_DeriveWithTemplate()
  5076 ms  0x7769 ret:0x7f0e540c5600
  5076 ms  0x7769 SECKEY_DestroyPrivateKey()
  5076 ms  0x7769 privk:0x7f0e5409d820::7f0e5409d820  f0 41 08 54                                      .A.T
  5076 ms  0x7769 privk:0x7f0e5409d820::7f0e5409d820  e5 e5 e5 e5                                      ....
  5076 ms  0x7769 PK11_Encrypt()
  5076 ms  0x7769 symkey:0x7f0e540c5780
  5076 ms  0x7769 SSL_AuthCertificateComplete()
  5076 ms  0x7769 fd:0x7f0e54030460
  5076 ms  0x7769 err:0x0
  5076 ms  0x7769 SSL_AuthCertificateComplete()
  5076 ms  0x7769 fd:0x7f0e54030430
  5076 ms  0x7769 err:0x0
  5076 ms  0x7769 PK11_Encrypt()
  5076 ms  0x7769 symkey:0x7f0e540c5480
  5077 ms  0x7769 PK11_Encrypt()
  5077 ms  0x7769 symkey:0x7f0e540c5780
  5085 ms  0x7769 SECKEY_DestroyPrivateKey()
  5085 ms  0x7769 privk:0x7f0e53fdb020::7f0e53fdb020  c0 04 fc 53                                      ...S
  5085 ms  0x7769 privk:0x7f0e53fdb020::7f0e53fdb020  e5 e5 e5 e5                                      ....
  5085 ms  0x7769 SECKEY_DestroyPrivateKey()
  5085 ms  0x7769 privk:0x7f0e53fd9020::7f0e53fd9020  f0 01 fc 53                                      ...S
  5085 ms  0x7769 privk:0x7f0e53fd9020::7f0e53fd9020  e5 e5 e5 e5                                      ....
  5104 ms  0x7769 SECKEY_DestroyPrivateKey()
  5104 ms  0x7769 privk:0x7f0e54236820::7f0e54236820  10 0a fc 53                                      ...S
  5104 ms  0x7769 privk:0x7f0e54236820::7f0e54236820  e5 e5 e5 e5                                      ....
  5104 ms  0x7769 SECKEY_DestroyPrivateKey()
  5104 ms  0x7769 privk:0x7f0e53fe2020::7f0e53fe2020  30 08 fc 53                                      0..S
  5104 ms  0x7769 privk:0x7f0e53fe2020::7f0e53fe2020  e5 e5 e5 e5                                      ....
  5113 ms  0x7769 SECKEY_DestroyPrivateKey()
  5113 ms  0x7769 privk:0x7f0e53fdf820::7f0e53fdf820  40 67 fb 53                                      @g.S
  5113 ms  0x7769 privk:0x7f0e53fdf820::7f0e53fdf820  e5 e5 e5 e5                                      ....
  5113 ms  0x7769 SECKEY_DestroyPrivateKey()
  5113 ms  0x7769 privk:0x7f0e53fdd820::7f0e53fdd820  50 06 fc 53                                      P..S
  5113 ms  0x7769 privk:0x7f0e53fdd820::7f0e53fdd820  e5 e5 e5 e5                                      ....
           /* TID 0x7771 */
  5123 ms  0x7771 PR_Close()
  5123 ms  0x7771 fd:0x7f0e53f96cd0
  5144 ms  0x7771 PR_Close()
  5144 ms  0x7771 fd:0x7f0e53f96ca0
  5155 ms  0x7771 PR_Close()
  5155 ms  0x7771 fd:0x7f0e53f96cd0
           /* TID 0x7769 */
  5192 ms  0x7769 PK11_Encrypt()
  5192 ms  0x7769 symkey:0x7f0e540c5480
  5202 ms  0x7769 PK11_Encrypt()
  5202 ms  0x7769 symkey:0x7f0e540c5100
  5204 ms  0x7769 PK11_Encrypt()
  5204 ms  0x7769 symkey:0x7f0e540c5780
           /* TID 0x7771 */
  5229 ms  0x7771 PR_Close()
  5229 ms  0x7771 fd:0x7f0e54030a60
  5276 ms  0x7771 PR_Close()
  5276 ms  0x7771 fd:0x7f0e665d5b80
  5368 ms  0x7771 PR_Close()
  5368 ms  0x7771 fd:0x7f0e54030e80
           /* TID 0x7769 */
  5398 ms  0x7769 SSL_ImportFD()
  5398 ms  0x7769 ret:0x7f0e76074ee0
  5398 ms  0x7769 SSL_AuthCertificateHook()
  5398 ms  0x7769 fd:0x7f0e76074ee0
  5398 ms  0x7769 ret:0x0
  5398 ms  0x7769 PR_Connect()
  5398 ms  0x7769 fd:0x7f0e76074ee0
  5399 ms  0x7769 PR_Close()
  5399 ms  0x7769 fd:0x7f0e66080d60
           /* TID 0x775e */
  5401 ms  0x775e EC_ValidatePublicKey()
  5404 ms  0x775e ret:0x0
  5404 ms  0x775e EC_ValidatePublicKey()
  5406 ms  0x775e ret:0x0
  5406 ms  0x775e EC_ValidatePublicKey()
  5407 ms  0x775e ret:0x0
  5407 ms  0x775e EC_ValidatePublicKey()
  5409 ms  0x775e ret:0x0
  5409 ms  0x775e EC_ValidatePublicKey()
  5410 ms  0x775e ret:0x0
  5410 ms  0x775e EC_ValidatePublicKey()
  5411 ms  0x775e ret:0x0
  5411 ms  0x775e EC_ValidatePublicKey()
  5413 ms  0x775e ret:0x0
  5413 ms  0x775e EC_ValidatePublicKey()
           /* TID 0x7769 */
  5423 ms  0x7769 SECKEY_CreateECPrivateKey()
  5423 ms  0x7769 cx:0x7f0e5421dc48
           /* TID 0x775e */
  5428 ms  0x775e ret:0x0
           /* TID 0x7769 */
  5429 ms     | 0x7769 EC_ValidatePublicKey()
  5429 ms     | 0x7769 ret:0x0
  5429 ms  0x7769 ret:0x7f0e540a3820::7f0e540a3820  50 4b 08 54                                      PK.T
  5429 ms  0x7769 SECKEY_CreateECPrivateKey()
  5429 ms  0x7769 cx:0x7f0e5421dc48
  5429 ms     | 0x7769 EC_ValidatePublicKey()
  5431 ms     | 0x7769 ret:0x0
  5431 ms  0x7769 ret:0x7f0e540a5820::7f0e540a5820  d0 4d 08 54                                      .M.T
           /* TID 0x775e */
  5433 ms  0x775e EC_ValidatePublicKey()
  5435 ms  0x775e ret:0x0
  5435 ms  0x775e EC_ValidatePublicKey()
  5436 ms  0x775e ret:0x0
           /* TID 0x7769 */
  5439 ms  0x7769 PK11_Encrypt()
  5439 ms  0x7769 symkey:0x7f0e668e2300
  5439 ms  0x7769 PR_Close()
  5439 ms  0x7769 fd:0x7f0e54030430
  5439 ms     | 0x7769 PK11_Encrypt()
  5439 ms     | 0x7769 symkey:0x7f0e540c5780
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e54030460
  5440 ms     | 0x7769 PK11_Encrypt()
  5440 ms     | 0x7769 symkey:0x7f0e540c5480
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e54030370
  5440 ms     | 0x7769 PK11_Encrypt()
  5440 ms     | 0x7769 symkey:0x7f0e540c5100
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e5425b220
  5440 ms     | 0x7769 PK11_Encrypt()
  5440 ms     | 0x7769 symkey:0x7f0e64dfec00
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e64d27f10
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e64d27430
  5440 ms     | 0x7769 PK11_Encrypt()
  5440 ms     | 0x7769 symkey:0x7f0e64dfde80
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e651c0dc0
  5440 ms  0x7769 PR_Close()
  5440 ms  0x7769 fd:0x7f0e656ffb80
  5441 ms     | 0x7769 PK11_Encrypt()
  5441 ms     | 0x7769 symkey:0x7f0e66efdb80
  5441 ms  0x7769 PR_Close()
  5441 ms  0x7769 fd:0x7f0e665d5c70
  5441 ms     | 0x7769 PK11_Encrypt()
  5441 ms     | 0x7769 symkey:0x7f0e65480280
  5441 ms  0x7769 PR_Close()
  5441 ms  0x7769 fd:0x7f0e665ea5b0
  5441 ms     | 0x7769 PK11_Encrypt()
  5441 ms     | 0x7769 symkey:0x7f0e668e2300
           /* TID 0x77b7 */
  5441 ms  0x77b7 PR_Close()
  5441 ms  0x77b7 fd:0x7f0e53e0a490
  5441 ms  0x77b7 PR_Close()
  5441 ms  0x77b7 fd:0x7f0e53e0a490
           /* TID 0x7769 */
  5457 ms  0x7769 PK11_Derive()
  5457 ms  0x7769 basekey:0x7f0e668e2180
  5457 ms     | 0x7769 PK11_DeriveWithTemplate()
  5457 ms  0x7769 ret:0x7f0e668e2100
  5457 ms  0x7769 PK11_PubDeriveWithKDF()
  5457 ms  0x7769 seckey:0x7f0e540a5820
  5457 ms     | 0x7769 EC_ValidatePublicKey()
  5458 ms     | 0x7769 ret:0x0
  5460 ms  0x7769 ret:0x7f0e668e2180
  5460 ms  SECKEY_ECParamsToKeySize()
  5460 ms  0x7769 ret:0x100
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e668e2100
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e651c3f00
  5460 ms  0x7769 PK11_Derive()
  5460 ms  0x7769 basekey:0x7f0e668e2180
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e651c3e80
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e651c3e80
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e668e2100
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e651c3e80
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e668e2180
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e651c3e80
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e651c3f00
  5460 ms  0x7769 PK11_Derive()
  5460 ms  0x7769 basekey:0x7f0e66efda80
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e66efd900
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e668e2180
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e651c3e80
  5460 ms  0x7769 PK11_DeriveWithFlags()
  5460 ms  0x7769 basekey:0x7f0e668e2180
  5460 ms     | 0x7769 PK11_DeriveWithTemplate()
  5460 ms  0x7769 ret:0x7f0e651c3f00
           /* TID 0x77c2 */
  5462 ms  0x77c2 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5462 ms  0x77c2 ret:0x0
           /* TID 0x7769 */
  5462 ms  0x7769 PK11_DeriveWithFlags()
  5462 ms  0x7769 basekey:0x7f0e668e2180
  5462 ms     | 0x7769 PK11_DeriveWithTemplate()
  5462 ms  0x7769 ret:0x7f0e651c3f00
  5462 ms  0x7769 SSL_AuthCertificateComplete()
  5462 ms  0x7769 fd:0x7f0e76074ee0
  5462 ms  0x7769 err:0x0
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e66efd900
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e651c3f00
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e66efd900
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e66efda80
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e66efd900
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e64dfdd00
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e668e2100
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e64dfdc00
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e668e2100
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e64dfe700
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e66efda80
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e64dfe700
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e66efda80
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e64da2d00
  5462 ms     | 0x7769 PK11_DeriveWithFlags()
  5462 ms     | 0x7769 basekey:0x7f0e668e2100
  5462 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5462 ms     | 0x7769 ret:0x7f0e651c3e80
  5462 ms     | 0x7769 PK11_Encrypt()
  5462 ms     | 0x7769 symkey:0x7f0e64dfdc00
           /* TID 0x775e */
  5463 ms  0x775e PR_Close()
  5463 ms  0x775e fd:0x7f0e6687d9d0
  5463 ms  0x775e PR_Close()
  5463 ms  0x775e fd:0x7f0e540302b0
           /* TID 0x7769 */
  5463 ms     | 0x7769 PK11_DeriveWithFlags()
  5463 ms     | 0x7769 basekey:0x7f0e651c3f00
  5464 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5464 ms     | 0x7769 ret:0x7f0e651c3e80
  5464 ms     | 0x7769 PK11_DeriveWithFlags()
  5464 ms     | 0x7769 basekey:0x7f0e651c3f00
  5464 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5464 ms     | 0x7769 ret:0x7f0e64da2d00
  5464 ms     | 0x7769 PK11_DeriveWithFlags()
  5464 ms     | 0x7769 basekey:0x7f0e66efd900
  5464 ms     |    | 0x7769 PK11_DeriveWithTemplate()
  5464 ms     | 0x7769 ret:0x7f0e64dfdc00
  5464 ms     | 0x7769 SECKEY_DestroyPrivateKey()
  5464 ms     | 0x7769 privk:0x7f0e540a5820::7f0e540a5820  d0 4d 08 54                                      .M.T
  5464 ms     | 0x7769 privk:0x7f0e540a5820::7f0e540a5820  e5 e5 e5 e5                                      ....
  5464 ms     | 0x7769 SECKEY_DestroyPrivateKey()
  5464 ms     | 0x7769 privk:0x7f0e540a3820::7f0e540a3820  50 4b 08 54                                      PK.T
  5464 ms     | 0x7769 privk:0x7f0e540a3820::7f0e540a3820  e5 e5 e5 e5                                      ....
  5464 ms  0x7769 PK11_Encrypt()
  5464 ms  0x7769 symkey:0x7f0e651c3e80
           /* TID 0x775e */
  5465 ms  0x775e PR_Close()
  5465 ms  0x775e fd:0x7f0e54030370
  5465 ms  0x775e PR_Close()
  5465 ms  0x775e fd:0x7f0e53e0afa0
  5466 ms  0x775e PR_Close()
  5466 ms  0x775e fd:0x7f0e54030310
  5466 ms  0x775e PR_Close()
  5466 ms  0x775e fd:0x7f0e53e0afa0
           /* TID 0x77cd */
  5469 ms  0x77cd PR_Close()
  5469 ms  0x77cd fd:0x7f0e540303d0
           /* TID 0x7769 */
  5488 ms  0x7769 PK11_DeriveWithFlags()
  5488 ms  0x7769 basekey:0x7f0e64dfdc00
  5488 ms     | 0x7769 PK11_DeriveWithTemplate()
  5488 ms  0x7769 ret:0x7f0e668e2180
  5488 ms  0x7769 PK11_DeriveWithFlags()
  5488 ms  0x7769 basekey:0x7f0e64dfdc00
  5488 ms     | 0x7769 PK11_DeriveWithTemplate()
  5488 ms  0x7769 ret:0x7f0e668e2180
           /* TID 0x775e */
  5491 ms  0x775e PR_Close()
  5491 ms  0x775e fd:0x7f0e54030310
  5491 ms  0x775e PR_Close()
  5491 ms  0x775e fd:0x7f0e64d27fa0
  5491 ms  0x775e PR_Close()
  5491 ms  0x775e fd:0x7f0e54030310
  5492 ms  0x775e PR_Close()
  5492 ms  0x775e fd:0x7f0e64d27fa0
  5492 ms  0x775e PR_Close()
  5492 ms  0x775e fd:0x7f0e703c99a0
  5492 ms  0x775e PR_Close()
  5492 ms  0x775e fd:0x7f0e703c98b0
  5492 ms  0x775e PR_Close()
  5492 ms  0x775e fd:0x7f0e703c9a60
  5495 ms  0x775e PR_Close()
  5495 ms  0x775e fd:0x7f0e54030790
  5497 ms  0x775e PR_Close()
  5497 ms  0x775e fd:0x7f0e54030790
  5498 ms  0x775e PR_Close()
  5498 ms  0x775e fd:0x7f0e54030310
  5498 ms  0x775e PR_Close()
  5498 ms  0x775e fd:0x7f0e5411a3d0
  5499 ms  0x775e PR_Close()
  5499 ms  0x775e fd:0x7f0e54030310
  5499 ms  0x775e PR_Close()
  5499 ms  0x775e fd:0x7f0e5411a3d0
  5501 ms  0x775e PR_Close()
  5501 ms  0x775e fd:0x7f0e64d9c1c0
  5503 ms  0x775e PR_Close()
  5503 ms  0x775e fd:0x7f0e64d9c1c0
  5508 ms  0x775e PR_Close()
  5508 ms  0x775e fd:0x7f0e54030310
  5508 ms  0x775e PR_Close()
  5508 ms  0x775e fd:0x7f0e64d9cb20
  5509 ms  0x775e PR_Close()
  5509 ms  0x775e fd:0x7f0e54030310
  5509 ms  0x775e PR_Close()
  5509 ms  0x775e fd:0x7f0e64d9cb20
  5511 ms  0x775e PR_Close()
  5511 ms  0x775e fd:0x7f0e64d9cb50
  5512 ms  0x775e PR_Close()
  5512 ms  0x775e fd:0x7f0e64d9cb50
           /* TID 0x7769 */
  5518 ms  0x7769 PR_Close()
  5518 ms  0x7769 fd:0x7f0e76074ee0
  5518 ms     | 0x7769 PK11_Encrypt()
  5518 ms     | 0x7769 symkey:0x7f0e651c3e80
           /* TID 0x775e */
  5520 ms  0x775e PR_Close()
  5520 ms  0x775e fd:0x7f0e53e0a070
  5521 ms  0x775e PR_Close()
  5521 ms  0x775e fd:0x7f0e53e0a070
  5523 ms  0x775e PR_Close()
  5523 ms  0x775e fd:0x7f0e53e0a1c0
           /* TID 0x7769 */
  5531 ms  0x7769 SSL_ImportFD()
  5531 ms  0x7769 ret:0x7f0e665d5cd0
  5531 ms  0x7769 SSL_AuthCertificateHook()
  5531 ms  0x7769 fd:0x7f0e665d5cd0
  5531 ms  0x7769 ret:0x0
  5531 ms  0x7769 PR_Connect()
  5531 ms  0x7769 fd:0x7f0e665d5cd0
           /* TID 0x77cd */
  5532 ms  0x77cd PR_Close()
  5532 ms  0x77cd fd:0x7f0e53e0aee0
           /* TID 0x775e */
  5533 ms  0x775e PR_Close()
  5533 ms  0x775e fd:0x7f0e54030310
  5533 ms  0x775e PR_Close()
  5533 ms  0x775e fd:0x7f0e665ea670
           /* TID 0x77cd */
  5534 ms  0x77cd PR_Close()
  5534 ms  0x77cd fd:0x7f0e53e0aee0
  5539 ms  0x77cd PR_Close()
  5539 ms  0x77cd fd:0x7f0e540303d0
           /* TID 0x7771 */
  5546 ms  0x7771 PR_Close()
  5546 ms  0x7771 fd:0x7f0e656ff790
           /* TID 0x7769 */
  5555 ms  0x7769 SSL_ImportFD()
  5555 ms  0x7769 ret:0x7f0e6687d3a0
  5555 ms  0x7769 SSL_AuthCertificateHook()
  5555 ms  0x7769 fd:0x7f0e6687d3a0
  5555 ms  0x7769 ret:0x0
  5555 ms  0x7769 PR_Connect()
  5555 ms  0x7769 fd:0x7f0e6687d3a0
  5571 ms  0x7769 SECKEY_CreateECPrivateKey()
  5571 ms  0x7769 cx:0x7f0e5421c8c8
  5571 ms     | 0x7769 EC_ValidatePublicKey()
  5571 ms     | 0x7769 ret:0x0
  5571 ms  0x7769 ret:0x7f0e540ab820::7f0e540ab820  30 cd e0 6e                                      0..n
  5571 ms  0x7769 SECKEY_CreateECPrivateKey()
  5571 ms  0x7769 cx:0x7f0e5421c8c8
  5572 ms     | 0x7769 EC_ValidatePublicKey()
  5574 ms     | 0x7769 ret:0x0
  5574 ms  0x7769 ret:0x7f0e540ad820::7f0e540ad820  50 4b e7 6e                                      PK.n
           /* TID 0x77cd */
  5587 ms  0x77cd PR_Close()
  5587 ms  0x77cd fd:0x7f0e53f96520
           /* TID 0x7769 */
  5591 ms  0x7769 SSL_ImportFD()
  5591 ms  0x7769 ret:0x7f0e64d9c9a0
  5591 ms  0x7769 SSL_AuthCertificateHook()
  5591 ms  0x7769 fd:0x7f0e64d9c9a0
  5591 ms  0x7769 ret:0x0
  5591 ms  0x7769 PR_Connect()
  5591 ms  0x7769 fd:0x7f0e64d9c9a0
  5592 ms  0x7769 SSL_ImportFD()
  5592 ms  0x7769 ret:0x7f0e656fff40
  5592 ms  0x7769 SSL_AuthCertificateHook()
  5592 ms  0x7769 fd:0x7f0e656fff40
  5592 ms  0x7769 ret:0x0
  5592 ms  0x7769 PR_Connect()
  5592 ms  0x7769 fd:0x7f0e656fff40
  5592 ms  0x7769 SSL_ImportFD()
  5592 ms  0x7769 ret:0x7f0e665ea670
  5592 ms  0x7769 SSL_AuthCertificateHook()
  5592 ms  0x7769 fd:0x7f0e665ea670
  5592 ms  0x7769 ret:0x0
  5592 ms  0x7769 PR_Connect()
  5592 ms  0x7769 fd:0x7f0e665ea670
  5593 ms  0x7769 SSL_ImportFD()
  5593 ms  0x7769 ret:0x7f0e6853e820
  5593 ms  0x7769 SSL_AuthCertificateHook()
  5593 ms  0x7769 fd:0x7f0e6853e820
  5593 ms  0x7769 ret:0x0
  5593 ms  0x7769 PR_Connect()
  5593 ms  0x7769 fd:0x7f0e6853e820
  5593 ms  0x7769 SSL_ImportFD()
  5593 ms  0x7769 ret:0x7f0e6853ea60
  5593 ms  0x7769 SSL_AuthCertificateHook()
  5593 ms  0x7769 fd:0x7f0e6853ea60
  5593 ms  0x7769 ret:0x0
  5593 ms  0x7769 PR_Connect()
  5593 ms  0x7769 fd:0x7f0e6853ea60
  5593 ms  0x7769 SSL_ImportFD()
  5593 ms  0x7769 ret:0x7f0e6853ed00
  5593 ms  0x7769 SSL_AuthCertificateHook()
  5593 ms  0x7769 fd:0x7f0e6853ed00
  5593 ms  0x7769 ret:0x0
  5593 ms  0x7769 PR_Connect()
  5593 ms  0x7769 fd:0x7f0e6853ed00
  5593 ms  0x7769 SSL_ImportFD()
  5594 ms  0x7769 ret:0x7f0e69f90d00
  5594 ms  0x7769 SSL_AuthCertificateHook()
  5594 ms  0x7769 fd:0x7f0e69f90d00
  5594 ms  0x7769 ret:0x0
  5594 ms  0x7769 PR_Connect()
  5594 ms  0x7769 fd:0x7f0e69f90d00
  5594 ms  0x7769 SSL_ImportFD()
  5594 ms  0x7769 ret:0x7f0e6affc5b0
  5594 ms  0x7769 SSL_AuthCertificateHook()
  5594 ms  0x7769 fd:0x7f0e6affc5b0
  5594 ms  0x7769 ret:0x0
  5594 ms  0x7769 PR_Connect()
  5594 ms  0x7769 fd:0x7f0e6affc5b0
  5594 ms  0x7769 SSL_ImportFD()
  5594 ms  0x7769 ret:0x7f0e6b35a5e0
  5594 ms  0x7769 SSL_AuthCertificateHook()
  5594 ms  0x7769 fd:0x7f0e6b35a5e0
  5594 ms  0x7769 ret:0x0
  5594 ms  0x7769 PR_Connect()
  5594 ms  0x7769 fd:0x7f0e6b35a5e0
  5595 ms  0x7769 PR_Close()
  5595 ms  0x7769 fd:0x7f0e665d5cd0
  5596 ms     | 0x7769 SECKEY_DestroyPrivateKey()
  5596 ms     | 0x7769 privk:0x7f0e540ad820::7f0e540ad820  50 4b e7 6e                                      PK.n
  5596 ms     | 0x7769 privk:0x7f0e540ad820::7f0e540ad820  e5 e5 e5 e5                                      ....
  5596 ms     | 0x7769 SECKEY_DestroyPrivateKey()
  5596 ms     | 0x7769 privk:0x7f0e540ab820::7f0e540ab820  30 cd e0 6e                                      0..n
  5596 ms     | 0x7769 privk:0x7f0e540ab820::7f0e540ab820  e5 e5 e5 e5                                      ....
  5598 ms  0x7769 PR_Close()
  5598 ms  0x7769 fd:0x7f0e656fff40
  5598 ms  0x7769 PR_Close()
  5598 ms  0x7769 fd:0x7f0e665ea670
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6687d3a0
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e64d9c9a0
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6853e820
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6affc5b0
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e69f90d00
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6853ea60
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6853ed00
  5599 ms  0x7769 PR_Close()
  5599 ms  0x7769 fd:0x7f0e6b35a5e0
           /* TID 0x7763 */
  5610 ms  0x7763 PR_Close()
  5610 ms  0x7763 fd:0x7f0e6eefddf0
  5616 ms  0x7763 PR_Close()
  5616 ms  0x7763 fd:0x7f0e6b540790
           /* TID 0x77cd */
  5624 ms  0x77cd PR_Close()
  5624 ms  0x77cd fd:0x7f0e53e0a520
           /* TID 0x775e */
  5627 ms  0x775e PR_Close()
  5627 ms  0x775e fd:0x7f0e54030310
  5627 ms  0x775e PR_Close()
  5627 ms  0x775e fd:0x7f0e53e0a520
           /* TID 0x7769 */
  5627 ms  0x7769 PR_Close()
  5627 ms  0x7769 fd:0x7f0e6b9bc310
           /* TID 0x77b7 */
  5628 ms  0x77b7 PR_Close()
  5628 ms  0x77b7 fd:0x7f0e53e0aca0
  5628 ms  0x77b7 PR_Close()
  5628 ms  0x77b7 fd:0x7f0e53e0aca0
  5628 ms  0x77b7 PR_Close()
  5628 ms  0x77b7 fd:0x7f0e53e0aca0
  5628 ms  0x77b7 PR_Close()
  5628 ms  0x77b7 fd:0x7f0e53e0ad00
           /* TID 0x77cd */
  5629 ms  0x77cd PR_Close()
  5629 ms  0x77cd fd:0x7f0e53e0ad00
           /* TID 0x7771 */
  5632 ms  0x7771 PR_Close()
  5632 ms  0x7771 fd:0x7f0e656ffb80
  5632 ms  0x7771 PR_Close()
  5632 ms  0x7771 fd:0x7f0e656ffbe0
           /* TID 0x7763 */
  5640 ms  0x7763 PR_Close()
  5640 ms  0x7763 fd:0x7f0e69fb42b0
           /* TID 0x775e */
  5642 ms  0x775e PR_Close()
  5642 ms  0x775e fd:0x7f0e53e0ac40
  5642 ms  0x775e PR_Close()
  5642 ms  0x775e fd:0x7f0e656ffa60
           /* TID 0x77cd */
  5644 ms  0x77cd PR_Close()
  5644 ms  0x77cd fd:0x7f0e5411a400
  5647 ms  0x77cd PR_Close()
  5647 ms  0x77cd fd:0x7f0e5411a400
  5671 ms  0x77cd PR_Close()
  5671 ms  0x77cd fd:0x7f0e54030b20
  5672 ms  0x77cd PR_Close()
  5672 ms  0x77cd fd:0x7f0e54030b20
  5683 ms  0x77cd PR_Close()
  5683 ms  0x77cd fd:0x7f0e5425b9d0
  5684 ms  0x77cd PR_Close()
  5684 ms  0x77cd fd:0x7f0e5425ba30
  5690 ms  0x77cd PR_Close()
  5690 ms  0x77cd fd:0x7f0e651c0c70
  5695 ms  0x77cd PR_Close()
  5695 ms  0x77cd fd:0x7f0e656ffe50
  5702 ms  0x77cd PR_Close()
  5702 ms  0x77cd fd:0x7f0e665d5910
  5713 ms  0x77cd PR_Close()
  5713 ms  0x77cd fd:0x7f0e665ea550
  5714 ms  0x77cd PR_Close()
  5714 ms  0x77cd fd:0x7f0e665ea550
           /* TID 0x775e */
  5879 ms  0x775e PR_Close()
  5879 ms  0x775e fd:0x7f0e53e0a070
  5879 ms  0x775e PR_Close()
  5879 ms  0x775e fd:0x7f0e53e0a070
  5891 ms  0x775e PR_Close()
  5891 ms  0x775e fd:0x7f0e8d6da130
  5891 ms  0x775e PR_Close()
  5891 ms  0x775e fd:0x7f0e8d6da190
Process terminated
