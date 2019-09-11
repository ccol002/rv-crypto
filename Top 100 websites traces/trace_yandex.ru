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
           /* TID 0x781c */
    51 ms  0x781c PR_Close()
    51 ms  0x781c fd:0x7f96a56e2460
           /* TID 0x7814 */
   287 ms  0x7814 SSL_ImportFD()
   287 ms  0x7814 ret:0x7f96a58e3370
   287 ms  0x7814 SSL_AuthCertificateHook()
   287 ms  0x7814 fd:0x7f96a58e3370
   287 ms  0x7814 ret:0x0
   287 ms  0x7814 PR_Connect()
   287 ms  0x7814 fd:0x7f96a58e3370
   504 ms  0x7814 SECKEY_CreateECPrivateKey()
   504 ms  0x7814 cx:0x7f96a58dbae8
   506 ms     | 0x7814 EC_ValidatePublicKey()
   506 ms     | 0x7814 ret:0x0
   506 ms  0x7814 ret:0x7f9694c51820::7f9694c51820  60 4a cd 94                                      `J..
   506 ms  0x7814 SECKEY_CreateECPrivateKey()
   506 ms  0x7814 cx:0x7f96a58dbae8
   508 ms     | 0x7814 EC_ValidatePublicKey()
   513 ms     | 0x7814 ret:0x0
   513 ms  0x7814 ret:0x7f9694c53820::7f9694c53820  20 49 cd 94                                       I..
           /* TID 0x7877 */
   570 ms  0x7877 PR_Close()
   570 ms  0x7877 fd:0x7f9694c7d910
   572 ms  0x7877 PR_Close()
   572 ms  0x7877 fd:0x7f9694c7d910
           /* TID 0x7814 */
   735 ms  SECKEY_ECParamsToKeySize()
   735 ms  0x7814 ret:0x100
   735 ms  0x7814 SECKEY_CreateECPrivateKey()
   735 ms  0x7814 cx:0x7f96a58dbae8
   736 ms     | 0x7814 EC_ValidatePublicKey()
   738 ms     | 0x7814 ret:0x0
   738 ms  0x7814 ret:0x7f9694c5c820::7f9694c5c820  a0 b6 cf 94                                      ....
   738 ms  0x7814 PK11_PubDeriveWithKDF()
   738 ms  0x7814 seckey:0x7f9694c5c820
   738 ms     | 0x7814 EC_ValidatePublicKey()
   740 ms     | 0x7814 ret:0x0
   742 ms  0x7814 ret:0x7f96a7031c80
   742 ms  0x7814 PK11_DeriveWithFlags()
   742 ms  0x7814 basekey:0x7f96a7031c80
   742 ms     | 0x7814 PK11_DeriveWithTemplate()
   742 ms  0x7814 ret:0x7f9694cecb00
   742 ms  0x7814 PK11_Derive()
   742 ms  0x7814 basekey:0x7f9694cecb00
   742 ms     | 0x7814 PK11_DeriveWithTemplate()
   742 ms  0x7814 ret:0x7f9694cecb80
   742 ms  0x7814 SECKEY_DestroyPrivateKey()
   742 ms  0x7814 privk:0x7f9694c5c820::7f9694c5c820  a0 b6 cf 94                                      ....
   742 ms  0x7814 privk:0x7f9694c5c820::7f9694c5c820  e5 e5 e5 e5                                      ....
   742 ms  0x7814 PK11_Encrypt()
   742 ms  0x7814 symkey:0x7f9694cecd00
   743 ms  0x7814 PR_Connect()
   743 ms  0x7814 fd:0x7f96a58e3dc0
           /* TID 0x7877 */
   770 ms  0x7877 PR_Close()
   770 ms  0x7877 fd:0x7f96a58e3d30
           /* TID 0x781c */
   795 ms  0x781c PR_Close()
   795 ms  0x781c fd:0x7f96a58e3d30
           /* TID 0x7870 */
   795 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   795 ms  0x7870 ret:0x0
           /* TID 0x7814 */
   795 ms  0x7814 SSL_AuthCertificateComplete()
   795 ms  0x7814 fd:0x7f96a58e3370
   795 ms  0x7814 err:0x0
   795 ms  0x7814 PK11_Encrypt()
   795 ms  0x7814 symkey:0x7f9694cecd00
   961 ms  0x7814 SECKEY_DestroyPrivateKey()
   961 ms  0x7814 privk:0x7f9694c53820::7f9694c53820  20 49 cd 94                                       I..
   961 ms  0x7814 privk:0x7f9694c53820::7f9694c53820  e5 e5 e5 e5                                      ....
   961 ms  0x7814 SECKEY_DestroyPrivateKey()
   961 ms  0x7814 privk:0x7f9694c51820::7f9694c51820  60 4a cd 94                                      `J..
   962 ms  0x7814 privk:0x7f9694c51820::7f9694c51820  e5 e5 e5 e5                                      ....
  1182 ms  0x7814 SSL_ImportFD()
  1182 ms  0x7814 ret:0x7f96a58e3f10
  1182 ms  0x7814 SSL_AuthCertificateHook()
  1182 ms  0x7814 fd:0x7f96a58e3f10
  1182 ms  0x7814 ret:0x0
  1183 ms  0x7814 PR_Connect()
  1183 ms  0x7814 fd:0x7f96a58e3f10
  1208 ms  0x7814 SECKEY_CreateECPrivateKey()
  1208 ms  0x7814 cx:0x7f9694cf7728
  1209 ms     | 0x7814 EC_ValidatePublicKey()
  1209 ms     | 0x7814 ret:0x0
  1209 ms  0x7814 ret:0x7f9694c52820::7f9694c52820  50 4b cd 94                                      PK..
  1210 ms  0x7814 SECKEY_CreateECPrivateKey()
  1210 ms  0x7814 cx:0x7f9694cf7728
  1211 ms     | 0x7814 EC_ValidatePublicKey()
  1214 ms     | 0x7814 ret:0x0
  1214 ms  0x7814 ret:0x7f9694c58820::7f9694c58820  d0 b3 cf 94                                      ....
           /* TID 0x7870 */
  1267 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1267 ms  0x7870 ret:0x0
           /* TID 0x7814 */
  1268 ms  SECKEY_ECParamsToKeySize()
  1268 ms  0x7814 ret:0x100
  1268 ms  0x7814 SECKEY_CreateECPrivateKey()
  1268 ms  0x7814 cx:0x7f9694cf7728
  1269 ms     | 0x7814 EC_ValidatePublicKey()
  1274 ms     | 0x7814 ret:0x0
  1274 ms  0x7814 ret:0x7f9694c5c020::7f9694c5c020  40 b7 cf 94                                      @...
  1274 ms  0x7814 PK11_PubDeriveWithKDF()
  1274 ms  0x7814 seckey:0x7f9694c5c020
  1274 ms     | 0x7814 EC_ValidatePublicKey()
  1278 ms     | 0x7814 ret:0x0
  1282 ms  0x7814 ret:0x7f96a7031c80
  1282 ms  0x7814 PK11_DeriveWithFlags()
  1282 ms  0x7814 basekey:0x7f96a7031c80
  1282 ms     | 0x7814 PK11_DeriveWithTemplate()
  1282 ms  0x7814 ret:0x7f9694ced880
  1282 ms  0x7814 PK11_Derive()
  1282 ms  0x7814 basekey:0x7f9694ced880
  1282 ms     | 0x7814 PK11_DeriveWithTemplate()
  1282 ms  0x7814 ret:0x7f9694ced900
  1282 ms  0x7814 SECKEY_DestroyPrivateKey()
  1282 ms  0x7814 privk:0x7f9694c5c020::7f9694c5c020  40 b7 cf 94                                      @...
  1283 ms  0x7814 privk:0x7f9694c5c020::7f9694c5c020  e5 e5 e5 e5                                      ....
  1283 ms  0x7814 PK11_Encrypt()
  1283 ms  0x7814 symkey:0x7f9694ceda80
  1283 ms  0x7814 SSL_AuthCertificateComplete()
  1283 ms  0x7814 fd:0x7f96a58e3f10
  1283 ms  0x7814 err:0x0
  1284 ms  0x7814 PK11_Encrypt()
  1284 ms  0x7814 symkey:0x7f9694ceda80
  1335 ms  0x7814 SECKEY_DestroyPrivateKey()
  1335 ms  0x7814 privk:0x7f9694c58820::7f9694c58820  d0 b3 cf 94                                      ....
  1335 ms  0x7814 privk:0x7f9694c58820::7f9694c58820  e5 e5 e5 e5                                      ....
  1335 ms  0x7814 SECKEY_DestroyPrivateKey()
  1335 ms  0x7814 privk:0x7f9694c52820::7f9694c52820  50 4b cd 94                                      PK..
  1336 ms  0x7814 privk:0x7f9694c52820::7f9694c52820  e5 e5 e5 e5                                      ....
  1341 ms  0x7814 PK11_Encrypt()
  1341 ms  0x7814 symkey:0x7f9694ceda80
  1373 ms  0x7814 PK11_Encrypt()
  1373 ms  0x7814 symkey:0x7f9694ceda80
  1403 ms  0x7814 PK11_Encrypt()
  1403 ms  0x7814 symkey:0x7f9694ceda80
  1432 ms  0x7814 PK11_Encrypt()
  1432 ms  0x7814 symkey:0x7f9694ceda80
  1549 ms  0x7814 PK11_Encrypt()
  1549 ms  0x7814 symkey:0x7f9694ceda80
  1583 ms  0x7814 PK11_Encrypt()
  1583 ms  0x7814 symkey:0x7f9694ceda80
  1614 ms  0x7814 PK11_Encrypt()
  1614 ms  0x7814 symkey:0x7f9694ceda80
           /* TID 0x786b */
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a220
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a280
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a220
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a280
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a220
  1642 ms  0x786b PR_Close()
  1642 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a280
  1643 ms  0x786b PR_Close()
  1643 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a220
  1644 ms  0x786b PR_Close()
  1644 ms  0x786b fd:0x7f969490a280
  1670 ms  0x786b PR_Close()
  1670 ms  0x786b fd:0x7f969490a220
  1671 ms  0x786b PR_Close()
  1671 ms  0x786b fd:0x7f969490a1f0
  1678 ms  0x786b PR_Close()
  1678 ms  0x786b fd:0x7f969490a1f0
  1678 ms  0x786b PR_Close()
  1678 ms  0x786b fd:0x7f969490a220
  1690 ms  0x786b PR_Close()
  1690 ms  0x786b fd:0x7f969490a220
  1691 ms  0x786b PR_Close()
  1691 ms  0x786b fd:0x7f969490a220
  1693 ms  0x786b PR_Close()
  1693 ms  0x786b fd:0x7f969490a220
  1693 ms  0x786b PR_Close()
  1693 ms  0x786b fd:0x7f969490a220
  1739 ms  0x786b PR_Close()
  1739 ms  0x786b fd:0x7f969490a220
  1740 ms  0x786b PR_Close()
  1740 ms  0x786b fd:0x7f969490a220
  1748 ms  0x786b PR_Close()
  1748 ms  0x786b fd:0x7f969490a220
  1748 ms  0x786b PR_Close()
  1748 ms  0x786b fd:0x7f969490a220
  1755 ms  0x786b PR_Close()
  1755 ms  0x786b fd:0x7f969490a220
  1755 ms  0x786b PR_Close()
  1755 ms  0x786b fd:0x7f969490a220
  1757 ms  0x786b PR_Close()
  1757 ms  0x786b fd:0x7f969490a220
  1757 ms  0x786b PR_Close()
  1757 ms  0x786b fd:0x7f969490a220
           /* TID 0x7868 */
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
  1758 ms  0x7868 PR_Close()
  1758 ms  0x7868 fd:0x7f969490a220
           /* TID 0x7877 */
  2260 ms  0x7877 PR_Close()
  2260 ms  0x7877 fd:0x7f969490a580
  2263 ms  0x7877 PR_Close()
  2263 ms  0x7877 fd:0x7f969490a580
  2754 ms  0x7877 PR_Close()
  2754 ms  0x7877 fd:0x7f969490a580
           /* TID 0x781c */
  4168 ms  0x781c PR_Close()
  4168 ms  0x781c fd:0x7f969490a580
  4168 ms  0x781c PR_Close()
  4168 ms  0x781c fd:0x7f969490a6d0
  4169 ms  0x781c PR_Close()
  4169 ms  0x781c fd:0x7f969490a730
           /* TID 0x7814 */
  4524 ms  0x7814 SSL_ImportFD()
  4524 ms  0x7814 ret:0x7f96a6ec6610
  4524 ms  0x7814 SSL_AuthCertificateHook()
  4524 ms  0x7814 fd:0x7f96a6ec6610
  4524 ms  0x7814 ret:0x0
  4524 ms  0x7814 PR_Connect()
  4524 ms  0x7814 fd:0x7f96a6ec6610
  4591 ms  0x7814 SECKEY_CreateECPrivateKey()
  4591 ms  0x7814 cx:0x7f9694cf7a68
  4593 ms     | 0x7814 EC_ValidatePublicKey()
  4593 ms     | 0x7814 ret:0x0
  4593 ms  0x7814 ret:0x7f96a731f820::7f96a731f820  b0 45 8b 94                                      .E..
  4593 ms  0x7814 SECKEY_CreateECPrivateKey()
  4593 ms  0x7814 cx:0x7f9694cf7a68
  4596 ms     | 0x7814 EC_ValidatePublicKey()
  4601 ms     | 0x7814 ret:0x0
  4602 ms  0x7814 ret:0x7f9694702820::7f9694702820  90 47 8b 94                                      .G..
  4673 ms  SECKEY_ECParamsToKeySize()
  4673 ms  0x7814 ret:0x100
  4673 ms  SECKEY_ECParamsToBasePointOrderLen()
  4673 ms  0x7814 ret:0x100
  4673 ms  SECKEY_ECParamsToBasePointOrderLen()
  4674 ms  0x7814 ret:0x100
  4674 ms  0x7814 EC_ValidatePublicKey()
  4678 ms  0x7814 ret:0x0
  4685 ms  SECKEY_ECParamsToKeySize()
  4685 ms  0x7814 ret:0x100
  4686 ms  0x7814 SECKEY_CreateECPrivateKey()
  4686 ms  0x7814 cx:0x7f9694cf7a68
  4687 ms     | 0x7814 EC_ValidatePublicKey()
  4691 ms     | 0x7814 ret:0x0
  4691 ms  0x7814 ret:0x7f9694711820::7f9694711820  90 cc 96 af                                      ....
  4691 ms  0x7814 PK11_PubDeriveWithKDF()
  4691 ms  0x7814 seckey:0x7f9694711820
  4691 ms     | 0x7814 EC_ValidatePublicKey()
  4694 ms     | 0x7814 ret:0x0
  4697 ms  0x7814 ret:0x7f96a7031c80
  4697 ms  0x7814 PK11_DeriveWithFlags()
  4697 ms  0x7814 basekey:0x7f96a7031c80
  4697 ms     | 0x7814 PK11_DeriveWithTemplate()
  4697 ms  0x7814 ret:0x7f96a6eca300
  4697 ms  0x7814 PK11_Derive()
  4697 ms  0x7814 basekey:0x7f96a6eca300
  4697 ms     | 0x7814 PK11_DeriveWithTemplate()
  4697 ms  0x7814 ret:0x7f96a6eca380
  4697 ms  0x7814 SECKEY_DestroyPrivateKey()
  4697 ms  0x7814 privk:0x7f9694711820::7f9694711820  90 cc 96 af                                      ....
  4697 ms  0x7814 privk:0x7f9694711820::7f9694711820  e5 e5 e5 e5                                      ....
  4698 ms  0x7814 PK11_Encrypt()
  4698 ms  0x7814 symkey:0x7f96a6eca500
  4968 ms  0x7814 PR_Connect()
  4968 ms  0x7814 fd:0x7f96a6ec6b80
           /* TID 0x781c */
  5103 ms  0x781c PR_Close()
  5103 ms  0x781c fd:0x7f96a6ec6ac0
           /* TID 0x7870 */
  5104 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5104 ms  0x7870 ret:0x0
  5104 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5104 ms  0x7870 ret:0x0
           /* TID 0x7814 */
  5117 ms  0x7814 SSL_AuthCertificateComplete()
  5117 ms  0x7814 fd:0x7f96a6ec6610
  5117 ms  0x7814 err:0x0
  5117 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  5117 ms     | 0x7814 privk:0x7f9694702820::7f9694702820  90 47 8b 94                                      .G..
  5118 ms     | 0x7814 privk:0x7f9694702820::7f9694702820  e5 e5 e5 e5                                      ....
  5118 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  5118 ms     | 0x7814 privk:0x7f96a731f820::7f96a731f820  b0 45 8b 94                                      .E..
  5118 ms     | 0x7814 privk:0x7f96a731f820::7f96a731f820  e5 e5 e5 e5                                      ....
  5118 ms  0x7814 PK11_Encrypt()
  5118 ms  0x7814 symkey:0x7f96a6eca500
  5119 ms  0x7814 PK11_Encrypt()
  5119 ms  0x7814 symkey:0x7f96a6eca500
  5119 ms  0x7814 PK11_Encrypt()
  5119 ms  0x7814 symkey:0x7f96a6eca500
           /* TID 0x782b */
  5316 ms  0x782b PR_Close()
  5316 ms  0x782b fd:0x7f96948b6130
           /* TID 0x7814 */
  5372 ms  0x7814 SSL_ImportFD()
  5372 ms  0x7814 ret:0x7f96948b6a00
  5372 ms  0x7814 SSL_AuthCertificateHook()
  5372 ms  0x7814 fd:0x7f96948b6a00
  5372 ms  0x7814 ret:0x0
  5374 ms  0x7814 PK11_Encrypt()
  5374 ms  0x7814 symkey:0x7f96a6eca500
  5374 ms  0x7814 PR_Connect()
  5374 ms  0x7814 fd:0x7f96948b6a00
  5440 ms  0x7814 SECKEY_CreateECPrivateKey()
  5440 ms  0x7814 cx:0x7f9694cf7f48
  5442 ms     | 0x7814 EC_ValidatePublicKey()
  5442 ms     | 0x7814 ret:0x0
  5442 ms  0x7814 ret:0x7f9694718820::7f9694718820  a0 56 8b 94                                      .V..
  5442 ms  0x7814 SECKEY_CreateECPrivateKey()
  5442 ms  0x7814 cx:0x7f9694cf7f48
  5444 ms     | 0x7814 EC_ValidatePublicKey()
  5448 ms     | 0x7814 ret:0x0
  5448 ms  0x7814 ret:0x7f969471a820::7f969471a820  70 59 8b 94                                      pY..
  5518 ms  SECKEY_ECParamsToKeySize()
  5518 ms  0x7814 ret:0x100
  5518 ms  SECKEY_ECParamsToBasePointOrderLen()
  5518 ms  0x7814 ret:0x100
  5518 ms  SECKEY_ECParamsToBasePointOrderLen()
  5518 ms  0x7814 ret:0x100
  5518 ms  0x7814 EC_ValidatePublicKey()
  5523 ms  0x7814 ret:0x0
  5530 ms  SECKEY_ECParamsToKeySize()
  5530 ms  0x7814 ret:0x100
  5530 ms  0x7814 SECKEY_CreateECPrivateKey()
  5530 ms  0x7814 cx:0x7f9694cf7f48
  5532 ms     | 0x7814 EC_ValidatePublicKey()
  5536 ms     | 0x7814 ret:0x0
  5536 ms  0x7814 ret:0x7f969471d820::7f969471d820  90 5c 8b 94                                      .\..
  5536 ms  0x7814 PK11_PubDeriveWithKDF()
  5536 ms  0x7814 seckey:0x7f969471d820
  5536 ms     | 0x7814 EC_ValidatePublicKey()
  5540 ms     | 0x7814 ret:0x0
  5544 ms  0x7814 ret:0x7f96a7031c80
  5544 ms  0x7814 PK11_DeriveWithFlags()
  5544 ms  0x7814 basekey:0x7f96a7031c80
  5544 ms     | 0x7814 PK11_DeriveWithTemplate()
  5544 ms  0x7814 ret:0x7f96948b7d00
  5544 ms  0x7814 PK11_Derive()
  5544 ms  0x7814 basekey:0x7f96948b7d00
  5544 ms     | 0x7814 PK11_DeriveWithTemplate()
  5544 ms  0x7814 ret:0x7f96948b7d80
  5544 ms  0x7814 SECKEY_DestroyPrivateKey()
  5544 ms  0x7814 privk:0x7f969471d820::7f969471d820  90 5c 8b 94                                      .\..
  5545 ms  0x7814 privk:0x7f969471d820::7f969471d820  e5 e5 e5 e5                                      ....
  5545 ms  0x7814 PK11_Encrypt()
  5545 ms  0x7814 symkey:0x7f96948b7f00
  5545 ms  0x7814 SSL_AuthCertificateComplete()
  5545 ms  0x7814 fd:0x7f96948b6a00
  5545 ms  0x7814 err:0x0
  5545 ms  0x7814 PK11_Encrypt()
  5545 ms  0x7814 symkey:0x7f96948b7f00
  5611 ms  0x7814 SECKEY_DestroyPrivateKey()
  5611 ms  0x7814 privk:0x7f969471a820::7f969471a820  70 59 8b 94                                      pY..
  5611 ms  0x7814 privk:0x7f969471a820::7f969471a820  e5 e5 e5 e5                                      ....
  5612 ms  0x7814 SECKEY_DestroyPrivateKey()
  5612 ms  0x7814 privk:0x7f9694718820::7f9694718820  a0 56 8b 94                                      .V..
  5612 ms  0x7814 privk:0x7f9694718820::7f9694718820  e5 e5 e5 e5                                      ....
  5614 ms  0x7814 PR_Close()
  5614 ms  0x7814 fd:0x7f96948b6a00
  5614 ms     | 0x7814 PK11_Encrypt()
  5614 ms     | 0x7814 symkey:0x7f96948b7f00
           /* TID 0x782b */
  5689 ms  0x782b PR_Close()
  5689 ms  0x782b fd:0x7f96948b6ac0
           /* TID 0x7814 */
  5880 ms  0x7814 SSL_ImportFD()
  5881 ms  0x7814 ret:0x7f96945eaf10
  5881 ms  0x7814 SSL_AuthCertificateHook()
  5881 ms  0x7814 fd:0x7f96945eaf10
  5881 ms  0x7814 ret:0x0
  5881 ms  0x7814 PR_Connect()
  5881 ms  0x7814 fd:0x7f96945eaf10
  5929 ms  0x7814 SECKEY_CreateECPrivateKey()
  5929 ms  0x7814 cx:0x7f9694cf85c8
  5929 ms     | 0x7814 EC_ValidatePublicKey()
  5929 ms     | 0x7814 ret:0x0
  5929 ms  0x7814 ret:0x7f969466b820::7f969466b820  40 d7 5f 94                                      @._.
  5930 ms  0x7814 SECKEY_CreateECPrivateKey()
  5930 ms  0x7814 cx:0x7f9694cf85c8
  5930 ms     | 0x7814 EC_ValidatePublicKey()
  5934 ms     | 0x7814 ret:0x0
  5934 ms  0x7814 ret:0x7f969466d020::7f969466d020  70 d9 5f 94                                      p._.
  5934 ms  0x7814 SSL_ImportFD()
  5934 ms  0x7814 ret:0x7f96945eaeb0
  5934 ms  0x7814 SSL_AuthCertificateHook()
  5934 ms  0x7814 fd:0x7f96945eaeb0
  5935 ms  0x7814 ret:0x0
  5935 ms  0x7814 PR_Connect()
  5935 ms  0x7814 fd:0x7f96945eaeb0
           /* TID 0x7870 */
  5984 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5985 ms  0x7870 ret:0x0
  5986 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5986 ms  0x7870 ret:0x0
           /* TID 0x7814 */
  5986 ms  SECKEY_ECParamsToKeySize()
  5986 ms  0x7814 ret:0x100
  5986 ms  SECKEY_ECParamsToBasePointOrderLen()
  5986 ms  0x7814 ret:0x100
  5986 ms  SECKEY_ECParamsToBasePointOrderLen()
  5986 ms  0x7814 ret:0x100
  5986 ms  0x7814 EC_ValidatePublicKey()
  5989 ms  0x7814 ret:0x0
  5991 ms  SECKEY_ECParamsToKeySize()
  5991 ms  0x7814 ret:0x100
  5991 ms  0x7814 SECKEY_CreateECPrivateKey()
  5991 ms  0x7814 cx:0x7f9694cf85c8
  5992 ms     | 0x7814 EC_ValidatePublicKey()
  5993 ms     | 0x7814 ret:0x0
  5993 ms  0x7814 ret:0x7f9694961820::7f9694961820  d0 dd 5f 94                                      .._.
  5993 ms  0x7814 PK11_PubDeriveWithKDF()
  5993 ms  0x7814 seckey:0x7f9694961820
  5993 ms     | 0x7814 EC_ValidatePublicKey()
  5995 ms     | 0x7814 ret:0x0
  5996 ms  0x7814 ret:0x7f96948b7d80
  5996 ms  0x7814 PK11_DeriveWithFlags()
  5996 ms  0x7814 basekey:0x7f96948b7d80
  5996 ms     | 0x7814 PK11_DeriveWithTemplate()
  5996 ms  0x7814 ret:0x7f96948b7d00
  5996 ms  0x7814 PK11_Derive()
  5996 ms  0x7814 basekey:0x7f96948b7d00
  5996 ms     | 0x7814 PK11_DeriveWithTemplate()
  5996 ms  0x7814 ret:0x7f96a7031c80
  5996 ms  0x7814 SECKEY_DestroyPrivateKey()
  5996 ms  0x7814 privk:0x7f9694961820::7f9694961820  d0 dd 5f 94                                      .._.
  5996 ms  0x7814 privk:0x7f9694961820::7f9694961820  e5 e5 e5 e5                                      ....
  5997 ms  0x7814 PK11_Encrypt()
  5997 ms  0x7814 symkey:0x7f96948b7e00
  5997 ms  0x7814 SSL_AuthCertificateComplete()
  5997 ms  0x7814 fd:0x7f96945eaf10
  5997 ms  0x7814 err:0x0
  5997 ms  0x7814 PK11_Encrypt()
  5997 ms  0x7814 symkey:0x7f96948b7e00
  5997 ms  0x7814 SSL_ImportFD()
  5997 ms  0x7814 ret:0x7f969462db20
  5997 ms  0x7814 SSL_AuthCertificateHook()
  5997 ms  0x7814 fd:0x7f969462db20
  5997 ms  0x7814 ret:0x0
  5998 ms  0x7814 PR_Connect()
  5998 ms  0x7814 fd:0x7f969462db20
  5998 ms  0x7814 SSL_ImportFD()
  5998 ms  0x7814 ret:0x7f96945ea0a0
  5998 ms  0x7814 SSL_AuthCertificateHook()
  5998 ms  0x7814 fd:0x7f96945ea0a0
  5998 ms  0x7814 ret:0x0
  5998 ms  0x7814 PR_Connect()
  5998 ms  0x7814 fd:0x7f96945ea0a0
  5998 ms  0x7814 SSL_ImportFD()
  5998 ms  0x7814 ret:0x7f96945ea190
  5998 ms  0x7814 SSL_AuthCertificateHook()
  5998 ms  0x7814 fd:0x7f96945ea190
  5998 ms  0x7814 ret:0x0
  5998 ms  0x7814 PR_Connect()
  5998 ms  0x7814 fd:0x7f96945ea190
  5998 ms  0x7814 SSL_ImportFD()
  5998 ms  0x7814 ret:0x7f96945ea280
  5998 ms  0x7814 SSL_AuthCertificateHook()
  5998 ms  0x7814 fd:0x7f96945ea280
  5999 ms  0x7814 ret:0x0
  5999 ms  0x7814 PR_Connect()
  5999 ms  0x7814 fd:0x7f96945ea280
  5999 ms  0x7814 SSL_ImportFD()
  5999 ms  0x7814 ret:0x7f96945ea370
  5999 ms  0x7814 SSL_AuthCertificateHook()
  5999 ms  0x7814 fd:0x7f96945ea370
  5999 ms  0x7814 ret:0x0
  5999 ms  0x7814 PR_Connect()
  5999 ms  0x7814 fd:0x7f96945ea370
  5999 ms  0x7814 SSL_ImportFD()
  5999 ms  0x7814 ret:0x7f96945ea460
  5999 ms  0x7814 SSL_AuthCertificateHook()
  5999 ms  0x7814 fd:0x7f96945ea460
  5999 ms  0x7814 ret:0x0
  5999 ms  0x7814 PR_Connect()
  5999 ms  0x7814 fd:0x7f96945ea460
  6000 ms  0x7814 SSL_ImportFD()
  6000 ms  0x7814 ret:0x7f96945ea6d0
  6000 ms  0x7814 SSL_AuthCertificateHook()
  6000 ms  0x7814 fd:0x7f96945ea6d0
  6000 ms  0x7814 ret:0x0
  6000 ms  0x7814 PR_Connect()
  6000 ms  0x7814 fd:0x7f96945ea6d0
  6000 ms  0x7814 SSL_ImportFD()
  6000 ms  0x7814 ret:0x7f96945ea9d0
  6000 ms  0x7814 SSL_AuthCertificateHook()
  6000 ms  0x7814 fd:0x7f96945ea9d0
  6000 ms  0x7814 ret:0x0
  6000 ms  0x7814 PR_Connect()
  6000 ms  0x7814 fd:0x7f96945ea9d0
  6000 ms  0x7814 SSL_ImportFD()
  6000 ms  0x7814 ret:0x7f96945eab50
  6000 ms  0x7814 SSL_AuthCertificateHook()
  6000 ms  0x7814 fd:0x7f96945eab50
  6000 ms  0x7814 ret:0x0
  6000 ms  0x7814 PR_Connect()
  6000 ms  0x7814 fd:0x7f96945eab50
  6001 ms  0x7814 SECKEY_CreateECPrivateKey()
  6001 ms  0x7814 cx:0x7f9694cf8768
  6001 ms     | 0x7814 EC_ValidatePublicKey()
  6001 ms     | 0x7814 ret:0x0
  6001 ms  0x7814 ret:0x7f9694991820::7f9694991820  90 dc 5f 94                                      .._.
  6001 ms  0x7814 SECKEY_CreateECPrivateKey()
  6001 ms  0x7814 cx:0x7f9694cf8768
  6002 ms     | 0x7814 EC_ValidatePublicKey()
  6003 ms     | 0x7814 ret:0x0
  6003 ms  0x7814 ret:0x7f9694993820::7f9694993820  c0 de 5f 94                                      .._.
  6045 ms  0x7814 SECKEY_DestroyPrivateKey()
  6045 ms  0x7814 privk:0x7f969466d020::7f969466d020  70 d9 5f 94                                      p._.
  6046 ms  0x7814 privk:0x7f969466d020::7f969466d020  e5 e5 e5 e5                                      ....
  6046 ms  0x7814 SECKEY_DestroyPrivateKey()
  6046 ms  0x7814 privk:0x7f969466b820::7f969466b820  40 d7 5f 94                                      @._.
  6046 ms  0x7814 privk:0x7f969466b820::7f969466b820  e5 e5 e5 e5                                      ....
  6050 ms  0x7814 SECKEY_CreateECPrivateKey()
  6050 ms  0x7814 cx:0x7f9694cf8f88
  6051 ms     | 0x7814 EC_ValidatePublicKey()
  6051 ms     | 0x7814 ret:0x0
  6051 ms  0x7814 ret:0x7f969466b020::7f969466b020  f0 d6 5f 94                                      .._.
  6051 ms  0x7814 SECKEY_CreateECPrivateKey()
  6051 ms  0x7814 cx:0x7f9694cf8f88
  6053 ms     | 0x7814 EC_ValidatePublicKey()
  6057 ms     | 0x7814 ret:0x0
  6057 ms  0x7814 ret:0x7f969466d020::7f969466d020  80 d8 5f 94                                      .._.
  6059 ms  0x7814 SECKEY_CreateECPrivateKey()
  6059 ms  0x7814 cx:0x7f9694cf8de8
  6060 ms     | 0x7814 EC_ValidatePublicKey()
  6060 ms     | 0x7814 ret:0x0
  6060 ms  0x7814 ret:0x7f9694996820::7f9694996820  60 df 5f 94                                      `._.
  6060 ms  0x7814 SECKEY_CreateECPrivateKey()
  6060 ms  0x7814 cx:0x7f9694cf8de8
  6062 ms     | 0x7814 EC_ValidatePublicKey()
  6065 ms     | 0x7814 ret:0x0
  6065 ms  0x7814 ret:0x7f9694998820::7f9694998820  f0 91 9b 94                                      ....
  6066 ms  0x7814 SECKEY_CreateECPrivateKey()
  6066 ms  0x7814 cx:0x7f9694cf8c48
  6067 ms     | 0x7814 EC_ValidatePublicKey()
  6067 ms     | 0x7814 ret:0x0
  6067 ms  0x7814 ret:0x7f969499b020::7f969499b020  30 93 9b 94                                      0...
  6067 ms  0x7814 SECKEY_CreateECPrivateKey()
  6067 ms  0x7814 cx:0x7f9694cf8c48
  6068 ms     | 0x7814 EC_ValidatePublicKey()
  6075 ms     | 0x7814 ret:0x0
  6075 ms  0x7814 ret:0x7f969499d020::7f969499d020  10 95 9b 94                                      ....
  6077 ms  0x7814 SECKEY_CreateECPrivateKey()
  6077 ms  0x7814 cx:0x7f9694cf8aa8
  6078 ms     | 0x7814 EC_ValidatePublicKey()
  6078 ms     | 0x7814 ret:0x0
  6078 ms  0x7814 ret:0x7f969499f820::7f969499f820  50 96 9b 94                                      P...
  6078 ms  0x7814 SECKEY_CreateECPrivateKey()
  6078 ms  0x7814 cx:0x7f9694cf8aa8
  6079 ms     | 0x7814 EC_ValidatePublicKey()
  6081 ms     | 0x7814 ret:0x0
  6081 ms  0x7814 ret:0x7f96949a1820::7f96949a1820  30 98 9b 94                                      0...
  6082 ms  SECKEY_ECParamsToKeySize()
  6082 ms  0x7814 ret:0x100
  6082 ms  0x7814 SECKEY_CreateECPrivateKey()
  6082 ms  0x7814 cx:0x7f9694cf8768
  6083 ms     | 0x7814 EC_ValidatePublicKey()
  6085 ms     | 0x7814 ret:0x0
  6085 ms  0x7814 ret:0x7f96949aa020::7f96949aa020  20 9e 9b 94                                       ...
  6085 ms  0x7814 PK11_PubDeriveWithKDF()
  6085 ms  0x7814 seckey:0x7f96949aa020
  6085 ms     | 0x7814 EC_ValidatePublicKey()
  6087 ms     | 0x7814 ret:0x0
  6088 ms  0x7814 ret:0x7f96948b7d80
  6088 ms  0x7814 PK11_DeriveWithFlags()
  6088 ms  0x7814 basekey:0x7f96948b7d80
  6088 ms     | 0x7814 PK11_DeriveWithTemplate()
  6088 ms  0x7814 ret:0x7f96948e0c80
  6088 ms  0x7814 PK11_Derive()
  6088 ms  0x7814 basekey:0x7f96948e0c80
  6088 ms     | 0x7814 PK11_DeriveWithTemplate()
  6088 ms  0x7814 ret:0x7f96948e0d00
  6088 ms  0x7814 SECKEY_DestroyPrivateKey()
  6088 ms  0x7814 privk:0x7f96949aa020::7f96949aa020  20 9e 9b 94                                       ...
  6089 ms  0x7814 privk:0x7f96949aa020::7f96949aa020  e5 e5 e5 e5                                      ....
  6089 ms  0x7814 PK11_Encrypt()
  6089 ms  0x7814 symkey:0x7f96948e0e80
  6089 ms  0x7814 SECKEY_CreateECPrivateKey()
  6089 ms  0x7814 cx:0x7f9694cf97a8
  6090 ms     | 0x7814 EC_ValidatePublicKey()
  6090 ms     | 0x7814 ret:0x0
  6090 ms  0x7814 ret:0x7f96949aa020::7f96949aa020  30 9d 9b 94                                      0...
  6090 ms  0x7814 SECKEY_CreateECPrivateKey()
  6090 ms  0x7814 cx:0x7f9694cf97a8
  6090 ms     | 0x7814 EC_ValidatePublicKey()
  6092 ms     | 0x7814 ret:0x0
  6092 ms  0x7814 ret:0x7f96949ac020::7f96949ac020  10 9f 9b 94                                      ....
  6093 ms  0x7814 SECKEY_CreateECPrivateKey()
  6093 ms  0x7814 cx:0x7f9694cf9608
  6093 ms     | 0x7814 EC_ValidatePublicKey()
  6093 ms     | 0x7814 ret:0x0
  6093 ms  0x7814 ret:0x7f96949ae820::7f96949ae820  60 6f ef a6                                      `o..
  6093 ms  0x7814 SECKEY_CreateECPrivateKey()
  6093 ms  0x7814 cx:0x7f9694cf9608
  6094 ms     | 0x7814 EC_ValidatePublicKey()
  6095 ms     | 0x7814 ret:0x0
  6095 ms  0x7814 ret:0x7f9694409020::7f9694409020  60 3a 89 b4                                      `:..
  6096 ms  0x7814 SECKEY_CreateECPrivateKey()
  6096 ms  0x7814 cx:0x7f9694cf9468
  6098 ms     | 0x7814 EC_ValidatePublicKey()
  6098 ms     | 0x7814 ret:0x0
  6099 ms  0x7814 ret:0x7f969440b820::7f969440b820  80 3d 89 b4                                      .=..
  6099 ms  0x7814 SECKEY_CreateECPrivateKey()
  6099 ms  0x7814 cx:0x7f9694cf9468
  6099 ms     | 0x7814 EC_ValidatePublicKey()
  6101 ms     | 0x7814 ret:0x0
  6101 ms  0x7814 ret:0x7f969440d820::7f969440d820  c0 c4 8f b4                                      ....
  6101 ms  0x7814 SECKEY_CreateECPrivateKey()
  6101 ms  0x7814 cx:0x7f9694cf92c8
  6102 ms     | 0x7814 EC_ValidatePublicKey()
  6102 ms     | 0x7814 ret:0x0
  6102 ms  0x7814 ret:0x7f9694410020::7f9694410020  e0 c7 8f b4                                      ....
  6102 ms  0x7814 SECKEY_CreateECPrivateKey()
  6102 ms  0x7814 cx:0x7f9694cf92c8
  6102 ms     | 0x7814 EC_ValidatePublicKey()
  6104 ms     | 0x7814 ret:0x0
  6104 ms  0x7814 ret:0x7f9694412020::7f9694412020  f0 cb 8f b4                                      ....
  6104 ms  0x7814 SECKEY_CreateECPrivateKey()
  6104 ms  0x7814 cx:0x7f9694cf9128
  6105 ms     | 0x7814 EC_ValidatePublicKey()
  6105 ms     | 0x7814 ret:0x0
  6105 ms  0x7814 ret:0x7f9694415020::7f9694415020  c0 ce 8f b4                                      ....
  6105 ms  0x7814 SECKEY_CreateECPrivateKey()
  6105 ms  0x7814 cx:0x7f9694cf9128
  6105 ms     | 0x7814 EC_ValidatePublicKey()
  6107 ms     | 0x7814 ret:0x0
  6107 ms  0x7814 ret:0x7f9694417020::7f9694417020  f0 51 44 94                                      .QD.
  6107 ms  0x7814 PK11_Derive()
  6107 ms  0x7814 basekey:0x7f96948b7d80
  6107 ms     | 0x7814 PK11_DeriveWithTemplate()
  6107 ms  0x7814 ret:0x7f96948e1000
  6107 ms  0x7814 PK11_PubDeriveWithKDF()
  6107 ms  0x7814 seckey:0x7f969466b020
  6107 ms     | 0x7814 EC_ValidatePublicKey()
  6107 ms     | 0x7814 ret:0x0
  6108 ms  0x7814 ret:0x7f96948b7d80
  6108 ms  SECKEY_ECParamsToKeySize()
  6108 ms  0x7814 ret:0xff
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948e1000
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1080
  6108 ms  0x7814 PK11_Derive()
  6108 ms  0x7814 basekey:0x7f96948b7d80
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1100
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948e1100
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1000
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948e1100
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948b7d80
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948e1100
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1080
  6108 ms  0x7814 PK11_Derive()
  6108 ms  0x7814 basekey:0x7f96948e1180
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1200
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948b7d80
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1100
  6108 ms  0x7814 PK11_DeriveWithFlags()
  6108 ms  0x7814 basekey:0x7f96948b7d80
  6108 ms     | 0x7814 PK11_DeriveWithTemplate()
  6108 ms  0x7814 ret:0x7f96948e1080
  6109 ms  SECKEY_ECParamsToKeySize()
  6109 ms  0x7814 ret:0x100
  6109 ms  SECKEY_ECParamsToBasePointOrderLen()
  6109 ms  0x7814 ret:0x100
  6109 ms  SECKEY_ECParamsToBasePointOrderLen()
  6109 ms  0x7814 ret:0x100
  6109 ms  0x7814 EC_ValidatePublicKey()
  6110 ms  0x7814 ret:0x0
  6112 ms  0x7814 PK11_DeriveWithFlags()
  6112 ms  0x7814 basekey:0x7f96948b7d80
  6113 ms     | 0x7814 PK11_DeriveWithTemplate()
  6113 ms  0x7814 ret:0x7f96948e1080
  6113 ms  0x7814 PK11_Derive()
  6113 ms  0x7814 basekey:0x7f96948e1080
  6113 ms     | 0x7814 PK11_DeriveWithTemplate()
  6113 ms  0x7814 ret:0x7f96948e1180
  6113 ms  0x7814 PK11_PubDeriveWithKDF()
  6113 ms  0x7814 seckey:0x7f9694996820
  6113 ms     | 0x7814 EC_ValidatePublicKey()
  6113 ms     | 0x7814 ret:0x0
  6114 ms  0x7814 ret:0x7f96948e1080
  6114 ms  SECKEY_ECParamsToKeySize()
  6114 ms  0x7814 ret:0xff
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1180
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1380
  6114 ms  0x7814 PK11_Derive()
  6114 ms  0x7814 basekey:0x7f96948e1080
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1400
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1400
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1180
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1400
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1080
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1400
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1380
  6114 ms  0x7814 PK11_Derive()
  6114 ms  0x7814 basekey:0x7f96948e1480
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1500
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1080
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1400
  6114 ms  0x7814 PK11_DeriveWithFlags()
  6114 ms  0x7814 basekey:0x7f96948e1080
  6114 ms     | 0x7814 PK11_DeriveWithTemplate()
  6114 ms  0x7814 ret:0x7f96948e1380
  6115 ms  SECKEY_ECParamsToKeySize()
  6115 ms  0x7814 ret:0x100
  6115 ms  SECKEY_ECParamsToBasePointOrderLen()
  6115 ms  0x7814 ret:0x100
  6115 ms  SECKEY_ECParamsToBasePointOrderLen()
  6115 ms  0x7814 ret:0x100
  6115 ms  0x7814 EC_ValidatePublicKey()
  6116 ms  0x7814 ret:0x0
  6118 ms  0x7814 PK11_DeriveWithFlags()
  6118 ms  0x7814 basekey:0x7f96948e1080
  6118 ms     | 0x7814 PK11_DeriveWithTemplate()
  6118 ms  0x7814 ret:0x7f96948e1380
  6120 ms  0x7814 PR_Connect()
  6120 ms  0x7814 fd:0x7f9694982e20
  6120 ms  0x7814 PR_Connect()
  6120 ms  0x7814 fd:0x7f9694982d30
  6123 ms  0x7814 PK11_Derive()
  6123 ms  0x7814 basekey:0x7f96948e1380
  6123 ms     | 0x7814 PK11_DeriveWithTemplate()
  6123 ms  0x7814 ret:0x7f96948e1480
  6123 ms  0x7814 PK11_PubDeriveWithKDF()
  6123 ms  0x7814 seckey:0x7f969499b020
  6123 ms     | 0x7814 EC_ValidatePublicKey()
  6123 ms     | 0x7814 ret:0x0
  6124 ms  0x7814 ret:0x7f96948e1380
  6124 ms  SECKEY_ECParamsToKeySize()
  6124 ms  0x7814 ret:0xff
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1480
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1900
  6124 ms  0x7814 PK11_Derive()
  6124 ms  0x7814 basekey:0x7f96948e1380
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1980
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1980
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1480
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1980
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1380
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1980
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1900
  6124 ms  0x7814 PK11_Derive()
  6124 ms  0x7814 basekey:0x7f96948e1a00
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1a80
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1380
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1980
  6124 ms  0x7814 PK11_DeriveWithFlags()
  6124 ms  0x7814 basekey:0x7f96948e1380
  6124 ms     | 0x7814 PK11_DeriveWithTemplate()
  6124 ms  0x7814 ret:0x7f96948e1900
  6125 ms  SECKEY_ECParamsToKeySize()
  6125 ms  0x7814 ret:0x100
  6125 ms  SECKEY_ECParamsToBasePointOrderLen()
  6125 ms  0x7814 ret:0x100
  6125 ms  SECKEY_ECParamsToBasePointOrderLen()
  6125 ms  0x7814 ret:0x100
  6125 ms  0x7814 EC_ValidatePublicKey()
  6127 ms  0x7814 ret:0x0
  6130 ms  0x7814 PK11_DeriveWithFlags()
  6130 ms  0x7814 basekey:0x7f96948e1380
  6130 ms     | 0x7814 PK11_DeriveWithTemplate()
  6130 ms  0x7814 ret:0x7f96948e1900
  6130 ms  0x7814 PK11_Derive()
  6130 ms  0x7814 basekey:0x7f96948e1900
  6130 ms     | 0x7814 PK11_DeriveWithTemplate()
  6130 ms  0x7814 ret:0x7f96948e1a00
  6130 ms  0x7814 PK11_PubDeriveWithKDF()
  6130 ms  0x7814 seckey:0x7f969499f820
  6130 ms     | 0x7814 EC_ValidatePublicKey()
  6130 ms     | 0x7814 ret:0x0
  6131 ms  0x7814 ret:0x7f96948e1900
  6131 ms  SECKEY_ECParamsToKeySize()
  6131 ms  0x7814 ret:0xff
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1a00
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1b80
  6131 ms  0x7814 PK11_Derive()
  6131 ms  0x7814 basekey:0x7f96948e1900
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1c00
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1c00
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1a00
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1c00
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1900
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1c00
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1b80
  6131 ms  0x7814 PK11_Derive()
  6131 ms  0x7814 basekey:0x7f96948e1c80
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1d00
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1900
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1c00
  6131 ms  0x7814 PK11_DeriveWithFlags()
  6131 ms  0x7814 basekey:0x7f96948e1900
  6131 ms     | 0x7814 PK11_DeriveWithTemplate()
  6131 ms  0x7814 ret:0x7f96948e1b80
  6132 ms  SECKEY_ECParamsToKeySize()
  6132 ms  0x7814 ret:0x100
  6132 ms  SECKEY_ECParamsToBasePointOrderLen()
  6132 ms  0x7814 ret:0x100
  6132 ms  SECKEY_ECParamsToBasePointOrderLen()
  6132 ms  0x7814 ret:0x100
  6132 ms  0x7814 EC_ValidatePublicKey()
  6134 ms  0x7814 ret:0x0
  6136 ms  0x7814 PK11_DeriveWithFlags()
  6136 ms  0x7814 basekey:0x7f96948e1900
  6136 ms     | 0x7814 PK11_DeriveWithTemplate()
  6136 ms  0x7814 ret:0x7f96948e1b80
  6138 ms  0x7814 PR_Connect()
  6138 ms  0x7814 fd:0x7f96944a7310
  6138 ms  0x7814 PR_Connect()
  6138 ms  0x7814 fd:0x7f96944a7220
           /* TID 0x781c */
  6143 ms  0x781c PR_Close()
  6143 ms  0x781c fd:0x7f96944a7130
           /* TID 0x7814 */
  6144 ms  0x7814 PK11_Derive()
  6144 ms  0x7814 basekey:0x7f96948e1b80
  6144 ms     | 0x7814 PK11_DeriveWithTemplate()
  6144 ms  0x7814 ret:0x7f96948e1c80
  6144 ms  0x7814 PK11_PubDeriveWithKDF()
  6144 ms  0x7814 seckey:0x7f96949aa020
  6144 ms     | 0x7814 EC_ValidatePublicKey()
  6144 ms     | 0x7814 ret:0x0
  6145 ms  0x7814 ret:0x7f96948e1b80
  6145 ms  SECKEY_ECParamsToKeySize()
  6145 ms  0x7814 ret:0xff
  6145 ms  0x7814 PK11_DeriveWithFlags()
  6145 ms  0x7814 basekey:0x7f96948e1c80
  6145 ms     | 0x7814 PK11_DeriveWithTemplate()
  6145 ms  0x7814 ret:0x7f96944db180
  6145 ms  0x7814 PK11_Derive()
  6145 ms  0x7814 basekey:0x7f96948e1b80
  6145 ms     | 0x7814 PK11_DeriveWithTemplate()
  6145 ms  0x7814 ret:0x7f96944db200
  6145 ms  0x7814 PK11_DeriveWithFlags()
  6145 ms  0x7814 basekey:0x7f96944db200
  6145 ms     | 0x7814 PK11_DeriveWithTemplate()
  6145 ms  0x7814 ret:0x7f96948e1c80
  6145 ms  0x7814 PK11_DeriveWithFlags()
  6145 ms  0x7814 basekey:0x7f96944db200
  6145 ms     | 0x7814 PK11_DeriveWithTemplate()
  6146 ms  0x7814 ret:0x7f96948e1b80
  6146 ms  0x7814 PK11_DeriveWithFlags()
  6146 ms  0x7814 basekey:0x7f96944db200
  6146 ms     | 0x7814 PK11_DeriveWithTemplate()
  6146 ms  0x7814 ret:0x7f96944db180
  6146 ms  0x7814 PK11_Derive()
  6146 ms  0x7814 basekey:0x7f96944db280
  6146 ms     | 0x7814 PK11_DeriveWithTemplate()
  6146 ms  0x7814 ret:0x7f96944db300
  6146 ms  0x7814 PK11_DeriveWithFlags()
  6146 ms  0x7814 basekey:0x7f96948e1b80
  6146 ms     | 0x7814 PK11_DeriveWithTemplate()
  6146 ms  0x7814 ret:0x7f96944db200
  6146 ms  0x7814 PK11_DeriveWithFlags()
  6146 ms  0x7814 basekey:0x7f96948e1b80
  6146 ms     | 0x7814 PK11_DeriveWithTemplate()
  6146 ms  0x7814 ret:0x7f96944db180
  6146 ms  SECKEY_ECParamsToKeySize()
  6146 ms  0x7814 ret:0x100
  6146 ms  SECKEY_ECParamsToBasePointOrderLen()
  6146 ms  0x7814 ret:0x100
  6146 ms  SECKEY_ECParamsToBasePointOrderLen()
  6146 ms  0x7814 ret:0x100
  6146 ms  0x7814 EC_ValidatePublicKey()
  6148 ms  0x7814 ret:0x0
  6155 ms  0x7814 PK11_DeriveWithFlags()
  6155 ms  0x7814 basekey:0x7f96948e1b80
  6159 ms     | 0x7814 PK11_DeriveWithTemplate()
  6159 ms  0x7814 ret:0x7f96944db180
  6159 ms  0x7814 PK11_Derive()
  6159 ms  0x7814 basekey:0x7f96944db180
  6159 ms     | 0x7814 PK11_DeriveWithTemplate()
  6159 ms  0x7814 ret:0x7f96944db280
  6159 ms  0x7814 PK11_PubDeriveWithKDF()
  6159 ms  0x7814 seckey:0x7f96949ae820
  6159 ms     | 0x7814 EC_ValidatePublicKey()
  6159 ms     | 0x7814 ret:0x0
  6160 ms  0x7814 ret:0x7f96944db180
  6160 ms  SECKEY_ECParamsToKeySize()
  6160 ms  0x7814 ret:0xff
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db280
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db380
  6160 ms  0x7814 PK11_Derive()
  6160 ms  0x7814 basekey:0x7f96944db180
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db400
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db400
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db280
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db400
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db180
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db400
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db380
  6160 ms  0x7814 PK11_Derive()
  6160 ms  0x7814 basekey:0x7f96944db480
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db500
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db180
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db400
  6160 ms  0x7814 PK11_DeriveWithFlags()
  6160 ms  0x7814 basekey:0x7f96944db180
  6160 ms     | 0x7814 PK11_DeriveWithTemplate()
  6160 ms  0x7814 ret:0x7f96944db380
  6160 ms  SECKEY_ECParamsToKeySize()
  6160 ms  0x7814 ret:0x100
  6160 ms  SECKEY_ECParamsToBasePointOrderLen()
  6160 ms  0x7814 ret:0x100
  6160 ms  SECKEY_ECParamsToBasePointOrderLen()
  6160 ms  0x7814 ret:0x100
  6160 ms  0x7814 EC_ValidatePublicKey()
  6163 ms  0x7814 ret:0x0
  6165 ms  0x7814 PK11_DeriveWithFlags()
  6165 ms  0x7814 basekey:0x7f96944db180
  6166 ms     | 0x7814 PK11_DeriveWithTemplate()
  6166 ms  0x7814 ret:0x7f96944db380
  6166 ms  0x7814 PK11_Derive()
  6166 ms  0x7814 basekey:0x7f96944db380
  6166 ms     | 0x7814 PK11_DeriveWithTemplate()
  6166 ms  0x7814 ret:0x7f96944db480
  6166 ms  0x7814 PK11_PubDeriveWithKDF()
  6166 ms  0x7814 seckey:0x7f969440b820
  6166 ms     | 0x7814 EC_ValidatePublicKey()
  6166 ms     | 0x7814 ret:0x0
  6166 ms  0x7814 ret:0x7f96944db380
  6166 ms  SECKEY_ECParamsToKeySize()
  6166 ms  0x7814 ret:0xff
  6166 ms  0x7814 PK11_DeriveWithFlags()
  6166 ms  0x7814 basekey:0x7f96944db480
  6166 ms     | 0x7814 PK11_DeriveWithTemplate()
  6166 ms  0x7814 ret:0x7f96944db580
  6166 ms  0x7814 PK11_Derive()
  6166 ms  0x7814 basekey:0x7f96944db380
  6166 ms     | 0x7814 PK11_DeriveWithTemplate()
  6166 ms  0x7814 ret:0x7f96944db700
  6167 ms  0x7814 PK11_DeriveWithFlags()
  6167 ms  0x7814 basekey:0x7f96944db700
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db480
  6167 ms  0x7814 PK11_DeriveWithFlags()
  6167 ms  0x7814 basekey:0x7f96944db700
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db380
  6167 ms  0x7814 PK11_DeriveWithFlags()
  6167 ms  0x7814 basekey:0x7f96944db700
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db580
  6167 ms  0x7814 PK11_Derive()
  6167 ms  0x7814 basekey:0x7f96944db780
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db800
  6167 ms  0x7814 PK11_DeriveWithFlags()
  6167 ms  0x7814 basekey:0x7f96944db380
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db700
  6167 ms  0x7814 PK11_DeriveWithFlags()
  6167 ms  0x7814 basekey:0x7f96944db380
  6167 ms     | 0x7814 PK11_DeriveWithTemplate()
  6167 ms  0x7814 ret:0x7f96944db580
  6167 ms  SECKEY_ECParamsToKeySize()
  6167 ms  0x7814 ret:0x100
  6167 ms  SECKEY_ECParamsToBasePointOrderLen()
  6167 ms  0x7814 ret:0x100
  6167 ms  SECKEY_ECParamsToBasePointOrderLen()
  6167 ms  0x7814 ret:0x100
  6167 ms  0x7814 EC_ValidatePublicKey()
  6169 ms  0x7814 ret:0x0
  6171 ms  0x7814 PK11_DeriveWithFlags()
  6171 ms  0x7814 basekey:0x7f96944db380
  6171 ms     | 0x7814 PK11_DeriveWithTemplate()
  6171 ms  0x7814 ret:0x7f96944db580
  6171 ms  0x7814 PK11_Derive()
  6171 ms  0x7814 basekey:0x7f96944db580
  6171 ms     | 0x7814 PK11_DeriveWithTemplate()
  6171 ms  0x7814 ret:0x7f96944db780
  6171 ms  0x7814 PK11_PubDeriveWithKDF()
  6171 ms  0x7814 seckey:0x7f9694410020
  6171 ms     | 0x7814 EC_ValidatePublicKey()
  6171 ms     | 0x7814 ret:0x0
  6171 ms  0x7814 ret:0x7f96944db580
  6171 ms  SECKEY_ECParamsToKeySize()
  6171 ms  0x7814 ret:0xff
  6171 ms  0x7814 PK11_DeriveWithFlags()
  6171 ms  0x7814 basekey:0x7f96944db780
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db880
  6172 ms  0x7814 PK11_Derive()
  6172 ms  0x7814 basekey:0x7f96944db580
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db900
  6172 ms  0x7814 PK11_DeriveWithFlags()
  6172 ms  0x7814 basekey:0x7f96944db900
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db780
  6172 ms  0x7814 PK11_DeriveWithFlags()
  6172 ms  0x7814 basekey:0x7f96944db900
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db580
  6172 ms  0x7814 PK11_DeriveWithFlags()
  6172 ms  0x7814 basekey:0x7f96944db900
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db880
  6172 ms  0x7814 PK11_Derive()
  6172 ms  0x7814 basekey:0x7f96944db980
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944dba00
  6172 ms  0x7814 PK11_DeriveWithFlags()
  6172 ms  0x7814 basekey:0x7f96944db580
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db900
  6172 ms  0x7814 PK11_DeriveWithFlags()
  6172 ms  0x7814 basekey:0x7f96944db580
  6172 ms     | 0x7814 PK11_DeriveWithTemplate()
  6172 ms  0x7814 ret:0x7f96944db880
  6172 ms  SECKEY_ECParamsToKeySize()
  6172 ms  0x7814 ret:0x100
  6172 ms  SECKEY_ECParamsToBasePointOrderLen()
  6172 ms  0x7814 ret:0x100
  6172 ms  SECKEY_ECParamsToBasePointOrderLen()
  6172 ms  0x7814 ret:0x100
  6172 ms  0x7814 EC_ValidatePublicKey()
  6174 ms  0x7814 ret:0x0
  6176 ms  0x7814 PK11_DeriveWithFlags()
  6176 ms  0x7814 basekey:0x7f96944db580
  6176 ms     | 0x7814 PK11_DeriveWithTemplate()
  6176 ms  0x7814 ret:0x7f96944db880
  6176 ms  0x7814 PK11_Derive()
  6176 ms  0x7814 basekey:0x7f96944db880
  6176 ms     | 0x7814 PK11_DeriveWithTemplate()
  6176 ms  0x7814 ret:0x7f96944db980
  6176 ms  0x7814 PK11_PubDeriveWithKDF()
  6176 ms  0x7814 seckey:0x7f9694415020
  6176 ms     | 0x7814 EC_ValidatePublicKey()
  6176 ms     | 0x7814 ret:0x0
  6177 ms  0x7814 ret:0x7f96944db880
  6177 ms  SECKEY_ECParamsToKeySize()
  6177 ms  0x7814 ret:0xff
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944db980
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dba80
  6177 ms  0x7814 PK11_Derive()
  6177 ms  0x7814 basekey:0x7f96944db880
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dbb00
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944dbb00
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944db980
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944dbb00
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944db880
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944dbb00
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dba80
  6177 ms  0x7814 PK11_Derive()
  6177 ms  0x7814 basekey:0x7f96944dbb80
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dbc00
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944db880
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dbb00
  6177 ms  0x7814 PK11_DeriveWithFlags()
  6177 ms  0x7814 basekey:0x7f96944db880
  6177 ms     | 0x7814 PK11_DeriveWithTemplate()
  6177 ms  0x7814 ret:0x7f96944dba80
  6177 ms  SECKEY_ECParamsToKeySize()
  6177 ms  0x7814 ret:0x100
  6177 ms  SECKEY_ECParamsToBasePointOrderLen()
  6177 ms  0x7814 ret:0x100
  6177 ms  SECKEY_ECParamsToBasePointOrderLen()
  6177 ms  0x7814 ret:0x100
  6177 ms  0x7814 EC_ValidatePublicKey()
  6179 ms  0x7814 ret:0x0
  6181 ms  0x7814 PK11_DeriveWithFlags()
  6181 ms  0x7814 basekey:0x7f96944db880
  6182 ms     | 0x7814 PK11_DeriveWithTemplate()
  6182 ms  0x7814 ret:0x7f96944dba80
           /* TID 0x7870 */
  6183 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6183 ms  0x7870 ret:0x0
  6183 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6183 ms  0x7870 ret:0x0
           /* TID 0x781c */
  6184 ms  0x781c PR_Close()
  6184 ms  0x781c fd:0x7f96944a76a0
           /* TID 0x7814 */
  6185 ms  0x7814 SSL_AuthCertificateComplete()
  6185 ms  0x7814 fd:0x7f96945eaeb0
  6185 ms  0x7814 err:0x0
  6185 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6185 ms     | 0x7814 privk:0x7f9694993820::7f9694993820  c0 de 5f 94                                      .._.
  6186 ms     | 0x7814 privk:0x7f9694993820::7f9694993820  e5 e5 e5 e5                                      ....
  6186 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6186 ms     | 0x7814 privk:0x7f9694991820::7f9694991820  90 dc 5f 94                                      .._.
  6186 ms     | 0x7814 privk:0x7f9694991820::7f9694991820  e5 e5 e5 e5                                      ....
  6186 ms  0x7814 PK11_Encrypt()
  6186 ms  0x7814 symkey:0x7f96948e0e80
  6187 ms  0x7814 PK11_Encrypt()
  6187 ms  0x7814 symkey:0x7f96948e0e80
  6187 ms  0x7814 PK11_Encrypt()
  6187 ms  0x7814 symkey:0x7f96948e0e80
           /* TID 0x781c */
  6253 ms  0x781c PR_Close()
  6253 ms  0x781c fd:0x7f96944a71c0
           /* TID 0x78ae */
  6253 ms  0x78ae _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6254 ms  0x78ae ret:0x0
  6254 ms  0x78ae _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6254 ms  0x78ae ret:0x0
           /* TID 0x7814 */
  6256 ms  0x7814 SSL_AuthCertificateComplete()
  6256 ms  0x7814 fd:0x7f96945ea280
  6256 ms  0x7814 err:0x0
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1200
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dba80
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1200
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dbb80
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1200
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dc400
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1000
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dc480
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1000
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dc500
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96944dbb80
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dc500
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96944dbb80
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96944dc580
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96948e1000
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6256 ms     | 0x7814 ret:0x7f96948e1100
  6256 ms     | 0x7814 PK11_Encrypt()
  6256 ms     | 0x7814 symkey:0x7f96944dc480
  6256 ms     | 0x7814 PK11_DeriveWithFlags()
  6256 ms     | 0x7814 basekey:0x7f96944dba80
  6256 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96948e1100
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944dba80
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc580
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96948e1200
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc480
  6257 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6257 ms     | 0x7814 privk:0x7f969466d020::7f969466d020  80 d8 5f 94                                      .._.
  6257 ms     | 0x7814 privk:0x7f969466d020::7f969466d020  e5 e5 e5 e5                                      ....
  6257 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6257 ms     | 0x7814 privk:0x7f969466b020::7f969466b020  f0 d6 5f 94                                      .._.
  6257 ms     | 0x7814 privk:0x7f969466b020::7f969466b020  e5 e5 e5 e5                                      ....
  6257 ms  0x7814 SSL_AuthCertificateComplete()
  6257 ms  0x7814 fd:0x7f96945ea9d0
  6257 ms  0x7814 err:0x0
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db500
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96948b7d80
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db500
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96948e1000
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db500
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96948e1200
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db280
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc580
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db280
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc600
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96948e1000
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc600
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96948e1000
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944dc680
  6257 ms     | 0x7814 PK11_DeriveWithFlags()
  6257 ms     | 0x7814 basekey:0x7f96944db280
  6257 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6257 ms     | 0x7814 ret:0x7f96944db400
  6257 ms     | 0x7814 PK11_Encrypt()
  6257 ms     | 0x7814 symkey:0x7f96944dc580
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96948b7d80
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944db400
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96948b7d80
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc680
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db500
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc580
  6258 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6258 ms     | 0x7814 privk:0x7f9694409020::7f9694409020  60 3a 89 b4                                      `:..
  6258 ms     | 0x7814 privk:0x7f9694409020::7f9694409020  e5 e5 e5 e5                                      ....
  6258 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6258 ms     | 0x7814 privk:0x7f96949ae820::7f96949ae820  60 6f ef a6                                      `o..
  6258 ms     | 0x7814 privk:0x7f96949ae820::7f96949ae820  e5 e5 e5 e5                                      ....
  6258 ms  0x7814 SSL_AuthCertificateComplete()
  6258 ms  0x7814 fd:0x7f96945ea6d0
  6258 ms  0x7814 err:0x0
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db800
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944db180
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db800
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944db280
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db800
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944db500
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db480
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc680
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db480
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc700
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db280
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc700
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db280
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944dc780
  6258 ms     | 0x7814 PK11_DeriveWithFlags()
  6258 ms     | 0x7814 basekey:0x7f96944db480
  6258 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6258 ms     | 0x7814 ret:0x7f96944db700
  6258 ms     | 0x7814 PK11_Encrypt()
  6258 ms     | 0x7814 symkey:0x7f96944dc680
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db180
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944db700
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db180
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc780
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db800
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc680
  6259 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6259 ms     | 0x7814 privk:0x7f969440d820::7f969440d820  c0 c4 8f b4                                      ....
  6259 ms     | 0x7814 privk:0x7f969440d820::7f969440d820  e5 e5 e5 e5                                      ....
  6259 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6259 ms     | 0x7814 privk:0x7f969440b820::7f969440b820  80 3d 89 b4                                      .=..
  6259 ms     | 0x7814 privk:0x7f969440b820::7f969440b820  e5 e5 e5 e5                                      ....
  6259 ms  0x7814 SSL_AuthCertificateComplete()
  6259 ms  0x7814 fd:0x7f96945ea460
  6259 ms  0x7814 err:0x0
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944dba00
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944db380
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944dba00
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944db480
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944dba00
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944db800
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db780
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc780
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db780
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc800
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db480
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc800
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db480
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944dc880
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db780
  6259 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6259 ms     | 0x7814 ret:0x7f96944db900
  6259 ms     | 0x7814 PK11_Encrypt()
  6259 ms     | 0x7814 symkey:0x7f96944dc780
  6259 ms     | 0x7814 PK11_DeriveWithFlags()
  6259 ms     | 0x7814 basekey:0x7f96944db380
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944db900
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db380
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc880
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944dba00
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc780
  6260 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6260 ms     | 0x7814 privk:0x7f9694412020::7f9694412020  f0 cb 8f b4                                      ....
  6260 ms     | 0x7814 privk:0x7f9694412020::7f9694412020  e5 e5 e5 e5                                      ....
  6260 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6260 ms     | 0x7814 privk:0x7f9694410020::7f9694410020  e0 c7 8f b4                                      ....
  6260 ms     | 0x7814 privk:0x7f9694410020::7f9694410020  e5 e5 e5 e5                                      ....
  6260 ms  0x7814 SSL_AuthCertificateComplete()
  6260 ms  0x7814 fd:0x7f96945ea370
  6260 ms  0x7814 err:0x0
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944dbc00
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944db580
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944dbc00
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944db780
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944dbc00
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dba00
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db980
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc880
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db980
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc900
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db780
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc900
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db780
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dc980
  6260 ms     | 0x7814 PK11_DeriveWithFlags()
  6260 ms     | 0x7814 basekey:0x7f96944db980
  6260 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6260 ms     | 0x7814 ret:0x7f96944dbb00
  6260 ms     | 0x7814 PK11_Encrypt()
  6260 ms     | 0x7814 symkey:0x7f96944dc880
           /* TID 0x781c */
  6261 ms  0x781c PR_Close()
  6261 ms  0x781c fd:0x7f96944a79d0
           /* TID 0x78af */
  6262 ms  0x78af _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6262 ms  0x78af ret:0x0
  6262 ms  0x78af _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6262 ms  0x78af ret:0x0
           /* TID 0x781c */
  6262 ms  0x781c PR_Close()
  6262 ms  0x781c fd:0x7f96944a7c70
           /* TID 0x78b0 */
  6263 ms  0x78b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6263 ms  0x78b0 ret:0x0
  6263 ms  0x78b0 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6263 ms  0x78b0 ret:0x0
           /* TID 0x7814 */
  6263 ms     | 0x7814 PK11_DeriveWithFlags()
  6263 ms     | 0x7814 basekey:0x7f96944db580
  6263 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6263 ms     | 0x7814 ret:0x7f96944dbb00
  6263 ms     | 0x7814 PK11_DeriveWithFlags()
  6263 ms     | 0x7814 basekey:0x7f96944db580
  6263 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6263 ms     | 0x7814 ret:0x7f96944dc980
  6263 ms     | 0x7814 PK11_DeriveWithFlags()
  6263 ms     | 0x7814 basekey:0x7f96944dbc00
  6263 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6263 ms     | 0x7814 ret:0x7f96944dc880
  6263 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6263 ms     | 0x7814 privk:0x7f9694417020::7f9694417020  f0 51 44 94                                      .QD.
  6263 ms     | 0x7814 privk:0x7f9694417020::7f9694417020  e5 e5 e5 e5                                      ....
  6263 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6263 ms     | 0x7814 privk:0x7f9694415020::7f9694415020  c0 ce 8f b4                                      ....
  6264 ms     | 0x7814 privk:0x7f9694415020::7f9694415020  e5 e5 e5 e5                                      ....
  6264 ms  0x7814 PK11_Encrypt()
  6264 ms  0x7814 symkey:0x7f96944db400
  6269 ms  0x7814 PK11_Encrypt()
  6269 ms  0x7814 symkey:0x7f96944db700
  6269 ms  0x7814 PK11_Encrypt()
  6269 ms  0x7814 symkey:0x7f96944db900
  6269 ms  0x7814 PK11_Encrypt()
  6269 ms  0x7814 symkey:0x7f96944dbb00
  6269 ms  0x7814 PK11_Encrypt()
  6269 ms  0x7814 symkey:0x7f96948e1100
  6269 ms  0x7814 SSL_AuthCertificateComplete()
  6269 ms  0x7814 fd:0x7f96945ea190
  6269 ms  0x7814 err:0x0
  6269 ms     | 0x7814 PK11_DeriveWithFlags()
  6269 ms     | 0x7814 basekey:0x7f96948e1500
  6269 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6269 ms     | 0x7814 ret:0x7f96944db880
  6269 ms     | 0x7814 PK11_DeriveWithFlags()
  6269 ms     | 0x7814 basekey:0x7f96948e1500
  6269 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6269 ms     | 0x7814 ret:0x7f96944db980
  6269 ms     | 0x7814 PK11_DeriveWithFlags()
  6269 ms     | 0x7814 basekey:0x7f96948e1500
  6269 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6269 ms     | 0x7814 ret:0x7f96944dbc00
  6269 ms     | 0x7814 PK11_DeriveWithFlags()
  6269 ms     | 0x7814 basekey:0x7f96948e1180
  6269 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dc980
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96948e1180
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dca00
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96944db980
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dca00
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96944db980
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dca80
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96948e1180
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96948e1400
  6270 ms     | 0x7814 PK11_Encrypt()
  6270 ms     | 0x7814 symkey:0x7f96944dc980
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96944db880
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96948e1400
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96944db880
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dca80
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96948e1500
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96944dc980
  6270 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6270 ms     | 0x7814 privk:0x7f9694998820::7f9694998820  f0 91 9b 94                                      ....
  6270 ms     | 0x7814 privk:0x7f9694998820::7f9694998820  e5 e5 e5 e5                                      ....
  6270 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6270 ms     | 0x7814 privk:0x7f9694996820::7f9694996820  60 df 5f 94                                      `._.
  6270 ms     | 0x7814 privk:0x7f9694996820::7f9694996820  e5 e5 e5 e5                                      ....
  6270 ms  0x7814 SSL_AuthCertificateComplete()
  6270 ms  0x7814 fd:0x7f96945ea0a0
  6270 ms  0x7814 err:0x0
  6270 ms     | 0x7814 PK11_DeriveWithFlags()
  6270 ms     | 0x7814 basekey:0x7f96948e1a80
  6270 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6270 ms     | 0x7814 ret:0x7f96948e1080
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1a80
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96948e1180
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1a80
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96948e1500
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1480
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dca80
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1480
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dcb00
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1180
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dcb00
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1180
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dcb80
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1480
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96948e1980
  6271 ms     | 0x7814 PK11_Encrypt()
  6271 ms     | 0x7814 symkey:0x7f96944dca80
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1080
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96948e1980
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1080
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dcb80
  6271 ms     | 0x7814 PK11_DeriveWithFlags()
  6271 ms     | 0x7814 basekey:0x7f96948e1a80
  6271 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6271 ms     | 0x7814 ret:0x7f96944dca80
  6271 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6271 ms     | 0x7814 privk:0x7f969499d020::7f969499d020  10 95 9b 94                                      ....
  6271 ms     | 0x7814 privk:0x7f969499d020::7f969499d020  e5 e5 e5 e5                                      ....
  6272 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6272 ms     | 0x7814 privk:0x7f969499b020::7f969499b020  30 93 9b 94                                      0...
  6272 ms     | 0x7814 privk:0x7f969499b020::7f969499b020  e5 e5 e5 e5                                      ....
  6272 ms  0x7814 PK11_Encrypt()
  6272 ms  0x7814 symkey:0x7f96948e1400
  6272 ms  0x7814 PK11_Encrypt()
  6272 ms  0x7814 symkey:0x7f96948e1980
           /* TID 0x781c */
  6281 ms  0x781c PR_Close()
  6281 ms  0x781c fd:0x7f96944a7a00
           /* TID 0x78b1 */
  6281 ms  0x78b1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6281 ms  0x78b1 ret:0x0
  6281 ms  0x78b1 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6281 ms  0x78b1 ret:0x0
           /* TID 0x7814 */
  6281 ms  0x7814 SSL_AuthCertificateComplete()
  6281 ms  0x7814 fd:0x7f969462db20
  6281 ms  0x7814 err:0x0
  6281 ms     | 0x7814 PK11_DeriveWithFlags()
  6281 ms     | 0x7814 basekey:0x7f96948e1d00
  6281 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6281 ms     | 0x7814 ret:0x7f96948e1380
  6281 ms     | 0x7814 PK11_DeriveWithFlags()
  6281 ms     | 0x7814 basekey:0x7f96948e1d00
  6281 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96948e1480
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1d00
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96948e1a80
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1a00
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dcb80
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1a00
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dcd80
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1480
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dcd80
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1480
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dce00
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1a00
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96948e1c00
  6282 ms     | 0x7814 PK11_Encrypt()
  6282 ms     | 0x7814 symkey:0x7f96944dcb80
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1380
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96948e1c00
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1380
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dce00
  6282 ms     | 0x7814 PK11_DeriveWithFlags()
  6282 ms     | 0x7814 basekey:0x7f96948e1d00
  6282 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6282 ms     | 0x7814 ret:0x7f96944dcb80
  6282 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6282 ms     | 0x7814 privk:0x7f96949a1820::7f96949a1820  30 98 9b 94                                      0...
  6283 ms     | 0x7814 privk:0x7f96949a1820::7f96949a1820  e5 e5 e5 e5                                      ....
  6283 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6283 ms     | 0x7814 privk:0x7f969499f820::7f969499f820  50 96 9b 94                                      P...
  6283 ms     | 0x7814 privk:0x7f969499f820::7f969499f820  e5 e5 e5 e5                                      ....
  6283 ms  0x7814 PK11_Encrypt()
  6283 ms  0x7814 symkey:0x7f96948e1c00
           /* TID 0x781c */
  6283 ms  0x781c PR_Close()
  6283 ms  0x781c fd:0x7f96944a72b0
           /* TID 0x7870 */
  6284 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6284 ms  0x7870 ret:0x0
  6284 ms  0x7870 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6284 ms  0x7870 ret:0x0
           /* TID 0x7814 */
  6284 ms  0x7814 SSL_AuthCertificateComplete()
  6284 ms  0x7814 fd:0x7f96945eab50
  6284 ms  0x7814 err:0x0
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96944db300
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96948e1900
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96944db300
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96948e1a00
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96944db300
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96948e1d00
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96948e1c80
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96944dce00
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96948e1c80
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96944dcf00
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96948e1a00
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96944dcf00
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96948e1a00
  6284 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6284 ms     | 0x7814 ret:0x7f96944dcf80
  6284 ms     | 0x7814 PK11_DeriveWithFlags()
  6284 ms     | 0x7814 basekey:0x7f96948e1c80
  6285 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6285 ms     | 0x7814 ret:0x7f96944db200
  6285 ms     | 0x7814 PK11_Encrypt()
  6285 ms     | 0x7814 symkey:0x7f96944dce00
  6285 ms     | 0x7814 PK11_DeriveWithFlags()
  6285 ms     | 0x7814 basekey:0x7f96948e1900
  6285 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6285 ms     | 0x7814 ret:0x7f96944db200
  6285 ms     | 0x7814 PK11_DeriveWithFlags()
  6285 ms     | 0x7814 basekey:0x7f96948e1900
  6285 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6285 ms     | 0x7814 ret:0x7f96944dcf80
  6285 ms     | 0x7814 PK11_DeriveWithFlags()
  6285 ms     | 0x7814 basekey:0x7f96944db300
  6285 ms     |    | 0x7814 PK11_DeriveWithTemplate()
  6285 ms     | 0x7814 ret:0x7f96944dce00
  6285 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6285 ms     | 0x7814 privk:0x7f96949ac020::7f96949ac020  10 9f 9b 94                                      ....
  6285 ms     | 0x7814 privk:0x7f96949ac020::7f96949ac020  e5 e5 e5 e5                                      ....
  6285 ms     | 0x7814 SECKEY_DestroyPrivateKey()
  6285 ms     | 0x7814 privk:0x7f96949aa020::7f96949aa020  30 9d 9b 94                                      0...
  6285 ms     | 0x7814 privk:0x7f96949aa020::7f96949aa020  e5 e5 e5 e5                                      ....
  6285 ms  0x7814 PK11_Encrypt()
  6285 ms  0x7814 symkey:0x7f96944db200
  6305 ms  0x7814 PK11_DeriveWithFlags()
  6305 ms  0x7814 basekey:0x7f96944dc480
  6305 ms     | 0x7814 PK11_DeriveWithTemplate()
  6305 ms  0x7814 ret:0x7f96948e1b80
  6305 ms  0x7814 PK11_DeriveWithFlags()
  6305 ms  0x7814 basekey:0x7f96944dc480
  6305 ms     | 0x7814 PK11_DeriveWithTemplate()
  6305 ms  0x7814 ret:0x7f96948e1b80
  6305 ms  0x7814 PK11_DeriveWithFlags()
  6305 ms  0x7814 basekey:0x7f96944dc580
  6305 ms     | 0x7814 PK11_DeriveWithTemplate()
  6305 ms  0x7814 ret:0x7f96948e1b80
  6305 ms  0x7814 PK11_DeriveWithFlags()
  6305 ms  0x7814 basekey:0x7f96944dc580
  6305 ms     | 0x7814 PK11_DeriveWithTemplate()
  6305 ms  0x7814 ret:0x7f96948e1b80
  6308 ms  0x7814 PK11_DeriveWithFlags()
  6308 ms  0x7814 basekey:0x7f96944dc680
  6308 ms     | 0x7814 PK11_DeriveWithTemplate()
  6308 ms  0x7814 ret:0x7f96948e1b80
  6308 ms  0x7814 PK11_DeriveWithFlags()
  6308 ms  0x7814 basekey:0x7f96944dc680
  6308 ms     | 0x7814 PK11_DeriveWithTemplate()
  6308 ms  0x7814 ret:0x7f96948e1b80
  6308 ms  0x7814 PK11_DeriveWithFlags()
  6308 ms  0x7814 basekey:0x7f96944dc780
  6308 ms     | 0x7814 PK11_DeriveWithTemplate()
  6308 ms  0x7814 ret:0x7f96948e1b80
  6308 ms  0x7814 PK11_DeriveWithFlags()
  6308 ms  0x7814 basekey:0x7f96944dc780
  6308 ms     | 0x7814 PK11_DeriveWithTemplate()
  6308 ms  0x7814 ret:0x7f96948e1b80
  6309 ms  0x7814 PK11_DeriveWithFlags()
  6309 ms  0x7814 basekey:0x7f96944dc880
  6309 ms     | 0x7814 PK11_DeriveWithTemplate()
  6309 ms  0x7814 ret:0x7f96948e1b80
  6309 ms  0x7814 PK11_DeriveWithFlags()
  6309 ms  0x7814 basekey:0x7f96944dc880
  6309 ms     | 0x7814 PK11_DeriveWithTemplate()
  6309 ms  0x7814 ret:0x7f96948e1b80
  6317 ms  0x7814 PK11_DeriveWithFlags()
  6317 ms  0x7814 basekey:0x7f96944dc980
  6317 ms     | 0x7814 PK11_DeriveWithTemplate()
  6317 ms  0x7814 ret:0x7f96948e1b80
  6317 ms  0x7814 PK11_DeriveWithFlags()
  6317 ms  0x7814 basekey:0x7f96944dc980
  6317 ms     | 0x7814 PK11_DeriveWithTemplate()
  6317 ms  0x7814 ret:0x7f96948e1b80
  6319 ms  0x7814 PK11_DeriveWithFlags()
  6319 ms  0x7814 basekey:0x7f96944dca80
  6319 ms     | 0x7814 PK11_DeriveWithTemplate()
  6319 ms  0x7814 ret:0x7f96948e1b80
  6319 ms  0x7814 PK11_DeriveWithFlags()
  6319 ms  0x7814 basekey:0x7f96944dca80
  6319 ms     | 0x7814 PK11_DeriveWithTemplate()
  6319 ms  0x7814 ret:0x7f96948e1b80
           /* TID 0x781c */
  6322 ms  0x781c PR_Close()
  6322 ms  0x781c fd:0x7f96944a7520
           /* TID 0x7814 */
  6330 ms  0x7814 PK11_DeriveWithFlags()
  6330 ms  0x7814 basekey:0x7f96944dcb80
  6330 ms     | 0x7814 PK11_DeriveWithTemplate()
  6330 ms  0x7814 ret:0x7f96948e1b80
  6330 ms  0x7814 PK11_DeriveWithFlags()
  6330 ms  0x7814 basekey:0x7f96944dcb80
  6330 ms     | 0x7814 PK11_DeriveWithTemplate()
  6330 ms  0x7814 ret:0x7f96948e1b80
  6333 ms  0x7814 PK11_DeriveWithFlags()
  6333 ms  0x7814 basekey:0x7f96944dce00
  6333 ms     | 0x7814 PK11_DeriveWithTemplate()
  6333 ms  0x7814 ret:0x7f96948e1b80
  6333 ms  0x7814 PK11_DeriveWithFlags()
  6333 ms  0x7814 basekey:0x7f96944dce00
  6333 ms     | 0x7814 PK11_DeriveWithTemplate()
  6333 ms  0x7814 ret:0x7f96948e1b80
  6351 ms  0x7814 PK11_Encrypt()
  6351 ms  0x7814 symkey:0x7f96948e1100
           /* TID 0x781c */
  6352 ms  0x781c PR_Close()
  6352 ms  0x781c fd:0x7f96944a7520
           /* TID 0x7814 */
  6354 ms  0x7814 PK11_Encrypt()
  6354 ms  0x7814 symkey:0x7f96944db900
  6355 ms  0x7814 PK11_Encrypt()
  6355 ms  0x7814 symkey:0x7f96944dbb00
           /* TID 0x781c */
  6355 ms  0x781c PR_Close()
  6355 ms  0x781c fd:0x7f96944a7520
  6359 ms  0x781c PR_Close()
  6359 ms  0x781c fd:0x7f96944a7520
  6365 ms  0x781c PR_Close()
  6365 ms  0x781c fd:0x7f96944a7520
  6367 ms  0x781c PR_Close()
  6367 ms  0x781c fd:0x7f96944a7520
  6377 ms  0x781c PR_Close()
  6377 ms  0x781c fd:0x7f96944a7a90
  6380 ms  0x781c PR_Close()
  6380 ms  0x781c fd:0x7f96944a7a90
  6401 ms  0x781c PR_Close()
  6401 ms  0x781c fd:0x7f96944a7520
  6403 ms  0x781c PR_Close()
  6403 ms  0x781c fd:0x7f96944a7520
  6404 ms  0x781c PR_Close()
  6404 ms  0x781c fd:0x7f96944a7520
  6406 ms  0x781c PR_Close()
  6406 ms  0x781c fd:0x7f96944a7520
  6544 ms  0x781c PR_Close()
  6544 ms  0x781c fd:0x7f96944a74c0
           /* TID 0x7814 */
  6751 ms  0x7814 PK11_Encrypt()
  6751 ms  0x7814 symkey:0x7f96944db400
  6753 ms  0x7814 PK11_Encrypt()
  6753 ms  0x7814 symkey:0x7f96944db700
  6754 ms  0x7814 PK11_Encrypt()
  6754 ms  0x7814 symkey:0x7f96944db200
  6756 ms  0x7814 SSL_ImportFD()
  6756 ms  0x7814 ret:0x7f96945ea7c0
  6756 ms  0x7814 SSL_AuthCertificateHook()
  6756 ms  0x7814 fd:0x7f96945ea7c0
  6756 ms  0x7814 ret:0x0
  6756 ms  0x7814 PR_Connect()
  6756 ms  0x7814 fd:0x7f96945ea7c0
  6784 ms  0x7814 PK11_Encrypt()
  6784 ms  0x7814 symkey:0x7f96948b7e00
  6790 ms  0x7814 PK11_Encrypt()
  6790 ms  0x7814 symkey:0x7f96a6eca500
  6790 ms  0x7814 PK11_Encrypt()
  6790 ms  0x7814 symkey:0x7f96a6eca500
  6792 ms  0x7814 PK11_Encrypt()
  6792 ms  0x7814 symkey:0x7f96948e1100
  6794 ms  0x7814 PK11_Encrypt()
  6794 ms  0x7814 symkey:0x7f96a6eca500
  6803 ms  0x7814 PK11_Encrypt()
  6803 ms  0x7814 symkey:0x7f96944db400
  6803 ms  0x7814 SECKEY_CreateECPrivateKey()
  6803 ms  0x7814 cx:0x7f96a58dcb28
  6804 ms     | 0x7814 EC_ValidatePublicKey()
  6804 ms     | 0x7814 ret:0x0
  6804 ms  0x7814 ret:0x7f969441e020::7f969441e020  10 2f 58 94                                      ./X.
  6804 ms  0x7814 SECKEY_CreateECPrivateKey()
  6804 ms  0x7814 cx:0x7f96a58dcb28
  6804 ms     | 0x7814 EC_ValidatePublicKey()
  6806 ms     | 0x7814 ret:0x0
  6806 ms  0x7814 ret:0x7f9694422020::7f9694422020  60 d5 5f 94                                      `._.
  6806 ms  0x7814 PK11_Derive()
  6806 ms  0x7814 basekey:0x7f96948e1c80
  6806 ms     | 0x7814 PK11_DeriveWithTemplate()
  6806 ms  0x7814 ret:0x7f96948e1b80
  6806 ms  0x7814 PK11_DeriveWithFlags()
  6806 ms  0x7814 basekey:0x7f96948e1b80
  6806 ms     | 0x7814 PK11_DeriveWithTemplate()
  6806 ms  0x7814 ret:0x7f96948e1c80
  6806 ms  0x7814 PK11_DeriveWithFlags()
  6806 ms  0x7814 basekey:0x7f96948e1c80
  6806 ms     | 0x7814 PK11_DeriveWithTemplate()
  6806 ms  0x7814 ret:0x7f96944db300
  6811 ms  0x7814 PK11_DeriveWithFlags()
  6811 ms  0x7814 basekey:0x7f96948e1b80
           /* TID 0x781c */
  6812 ms  0x781c PR_Close()
  6812 ms  0x781c fd:0x7f9694536bb0
           /* TID 0x7814 */
  6812 ms     | 0x7814 PK11_DeriveWithTemplate()
  6812 ms  0x7814 ret:0x7f96944db300
  6812 ms  0x7814 PK11_DeriveWithFlags()
  6812 ms  0x7814 basekey:0x7f96948e1b80
  6812 ms     | 0x7814 PK11_DeriveWithTemplate()
  6812 ms  0x7814 ret:0x7f96944dcf80
  6812 ms  0x7814 PK11_DeriveWithFlags()
  6812 ms  0x7814 basekey:0x7f96944db300
  6812 ms     | 0x7814 PK11_DeriveWithTemplate()
  6812 ms  0x7814 ret:0x7f96948e0a00
  6812 ms  0x7814 PK11_DeriveWithFlags()
  6812 ms  0x7814 basekey:0x7f96944db300
  6812 ms     | 0x7814 PK11_DeriveWithTemplate()
  6812 ms  0x7814 ret:0x7f96948e0b80
           /* TID 0x781c */
  6843 ms  0x781c PR_Close()
  6843 ms  0x781c fd:0x7f969462d5b0
           /* TID 0x7814 */
  6857 ms  0x7814 PK11_PubDeriveWithKDF()
  6857 ms  0x7814 seckey:0x7f969441e020
  6857 ms     | 0x7814 EC_ValidatePublicKey()
  6857 ms     | 0x7814 ret:0x0
  6857 ms  0x7814 ret:0x7f96944db300
  6857 ms  SECKEY_ECParamsToKeySize()
  6857 ms  0x7814 ret:0xff
  6857 ms  0x7814 PK11_DeriveWithFlags()
  6857 ms  0x7814 basekey:0x7f96948e1b80
  6857 ms     | 0x7814 PK11_DeriveWithTemplate()
  6857 ms  0x7814 ret:0x7f96948e0b80
  6857 ms  0x7814 PK11_Derive()
  6857 ms  0x7814 basekey:0x7f96944db300
  6857 ms     | 0x7814 PK11_DeriveWithTemplate()
  6857 ms  0x7814 ret:0x7f9694928380
  6857 ms  0x7814 PK11_DeriveWithFlags()
  6857 ms  0x7814 basekey:0x7f9694928380
  6857 ms     | 0x7814 PK11_DeriveWithTemplate()
  6857 ms  0x7814 ret:0x7f96948e1b80
  6857 ms  0x7814 PK11_DeriveWithFlags()
  6857 ms  0x7814 basekey:0x7f9694928380
  6857 ms     | 0x7814 PK11_DeriveWithTemplate()
  6857 ms  0x7814 ret:0x7f96944db300
  6857 ms  0x7814 PK11_DeriveWithFlags()
  6857 ms  0x7814 basekey:0x7f9694928380
  6857 ms     | 0x7814 PK11_DeriveWithTemplate()
  6857 ms  0x7814 ret:0x7f96948e0b80
  6858 ms  0x7814 PK11_Derive()
  6858 ms  0x7814 basekey:0x7f9694928680
  6858 ms     | 0x7814 PK11_DeriveWithTemplate()
  6858 ms  0x7814 ret:0x7f9694928c80
  6858 ms  0x7814 PK11_DeriveWithFlags()
  6858 ms  0x7814 basekey:0x7f96944db300
  6858 ms     | 0x7814 PK11_DeriveWithTemplate()
  6858 ms  0x7814 ret:0x7f9694928380
  6858 ms  0x7814 PK11_DeriveWithFlags()
  6858 ms  0x7814 basekey:0x7f96944db300
  6858 ms     | 0x7814 PK11_DeriveWithTemplate()
  6858 ms  0x7814 ret:0x7f96948e0b80
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f96944db300
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f96948e0b80
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f9694928c80
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f96948e0b80
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f9694928c80
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f9694928680
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f9694928c80
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f9694930080
  6862 ms  0x7814 PK11_Encrypt()
  6862 ms  0x7814 symkey:0x7f96948e0a00
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f96948e1b80
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f9694930180
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f96948e1b80
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f9694930200
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f9694928680
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6862 ms  0x7814 ret:0x7f96948e0a00
  6862 ms  0x7814 PK11_DeriveWithFlags()
  6862 ms  0x7814 basekey:0x7f9694928680
  6862 ms     | 0x7814 PK11_DeriveWithTemplate()
  6863 ms  0x7814 ret:0x7f9694930200
  6863 ms  0x7814 PK11_DeriveWithFlags()
  6863 ms  0x7814 basekey:0x7f96948e1b80
  6863 ms     | 0x7814 PK11_DeriveWithTemplate()
  6863 ms  0x7814 ret:0x7f9694928380
  6863 ms  0x7814 PK11_Encrypt()
  6863 ms  0x7814 symkey:0x7f9694930180
  6863 ms  0x7814 PK11_DeriveWithFlags()
  6863 ms  0x7814 basekey:0x7f96948e0b80
  6863 ms     | 0x7814 PK11_DeriveWithTemplate()
  6863 ms  0x7814 ret:0x7f9694928380
  6863 ms  0x7814 PK11_DeriveWithFlags()
  6863 ms  0x7814 basekey:0x7f96948e0b80
  6863 ms     | 0x7814 PK11_DeriveWithTemplate()
  6864 ms  0x7814 ret:0x7f9694930200
  6864 ms  0x7814 PK11_DeriveWithFlags()
  6864 ms  0x7814 basekey:0x7f9694928c80
  6864 ms     | 0x7814 PK11_DeriveWithTemplate()
  6864 ms  0x7814 ret:0x7f9694930180
  6864 ms  0x7814 SECKEY_DestroyPrivateKey()
  6864 ms  0x7814 privk:0x7f9694422020::7f9694422020  60 d5 5f 94                                      `._.
  6864 ms  0x7814 privk:0x7f9694422020::7f9694422020  e5 e5 e5 e5                                      ....
  6864 ms  0x7814 SECKEY_DestroyPrivateKey()
  6864 ms  0x7814 privk:0x7f969441e020::7f969441e020  10 2f 58 94                                      ./X.
  6864 ms  0x7814 privk:0x7f969441e020::7f969441e020  e5 e5 e5 e5                                      ....
  6866 ms  0x7814 PK11_Encrypt()
  6866 ms  0x7814 symkey:0x7f96a6eca500
  6868 ms  0x7814 PK11_Encrypt()
  6868 ms  0x7814 symkey:0x7f96a6eca500
  6869 ms  0x7814 PK11_Encrypt()
  6869 ms  0x7814 symkey:0x7f96a6eca500
  6869 ms  0x7814 PK11_Encrypt()
  6869 ms  0x7814 symkey:0x7f96a6eca500
  6869 ms  0x7814 PK11_Encrypt()
  6869 ms  0x7814 symkey:0x7f96a6eca500
           /* TID 0x781c */
  6873 ms  0x781c PR_Close()
  6873 ms  0x781c fd:0x7f96945ea3d0
  6874 ms  0x781c PR_Close()
  6874 ms  0x781c fd:0x7f96945ea3d0
           /* TID 0x7814 */
  6876 ms  0x7814 PK11_Encrypt()
  6876 ms  0x7814 symkey:0x7f96948e1100
  6886 ms  0x7814 SSL_ImportFD()
  6886 ms  0x7814 ret:0x7f969462d580
  6886 ms  0x7814 SSL_AuthCertificateHook()
  6886 ms  0x7814 fd:0x7f969462d580
  6886 ms  0x7814 ret:0x0
  6886 ms  0x7814 PR_Connect()
  6886 ms  0x7814 fd:0x7f969462d580
           /* TID 0x781c */
  6896 ms  0x781c PR_Close()
  6896 ms  0x781c fd:0x7f96945ea4c0
  6924 ms  0x781c PR_Close()
  6924 ms  0x781c fd:0x7f96944a7c10
  6925 ms  0x781c PR_Close()
  6925 ms  0x781c fd:0x7f96944a7c10
  6937 ms  0x781c PR_Close()
  6937 ms  0x781c fd:0x7f96944a7c10
           /* TID 0x7814 */
  6952 ms  0x7814 SECKEY_CreateECPrivateKey()
  6952 ms  0x7814 cx:0x7f96cdca72c8
  6952 ms     | 0x7814 EC_ValidatePublicKey()
  6952 ms     | 0x7814 ret:0x0
  6952 ms  0x7814 ret:0x7f969441f820::7f969441f820  f0 26 58 94                                      .&X.
  6952 ms  0x7814 SECKEY_CreateECPrivateKey()
  6952 ms  0x7814 cx:0x7f96cdca72c8
  6953 ms     | 0x7814 EC_ValidatePublicKey()
  6955 ms     | 0x7814 ret:0x0
  6955 ms  0x7814 ret:0x7f96944b9820::7f96944b9820  e0 5c 56 94                                      .\V.
           /* TID 0x781c */
  6988 ms  0x781c PR_Close()
  6988 ms  0x781c fd:0x7f969462d250
           /* TID 0x7814 */
  6993 ms  0x7814 PK11_DeriveWithFlags()
  6993 ms  0x7814 basekey:0x7f9694930180
  6994 ms     | 0x7814 PK11_DeriveWithTemplate()
  6994 ms  0x7814 ret:0x7f96944db300
  7021 ms  SECKEY_ECParamsToKeySize()
  7021 ms  0x7814 ret:0x100
  7022 ms  SECKEY_ECParamsToBasePointOrderLen()
  7022 ms  0x7814 ret:0x100
  7022 ms  SECKEY_ECParamsToBasePointOrderLen()
  7022 ms  0x7814 ret:0x100
  7022 ms  0x7814 EC_ValidatePublicKey()
  7027 ms  0x7814 ret:0x0
  7036 ms  SECKEY_ECParamsToKeySize()
  7037 ms  0x7814 ret:0x100
  7037 ms  0x7814 SECKEY_CreateECPrivateKey()
  7037 ms  0x7814 cx:0x7f96cdca72c8
  7038 ms     | 0x7814 EC_ValidatePublicKey()
  7040 ms     | 0x7814 ret:0x0
  7040 ms  0x7814 ret:0x7f96944bc820::7f96944bc820  80 d8 5f 94                                      .._.
  7040 ms  0x7814 PK11_PubDeriveWithKDF()
  7040 ms  0x7814 seckey:0x7f96944bc820
  7040 ms     | 0x7814 EC_ValidatePublicKey()
  7044 ms     | 0x7814 ret:0x0
  7046 ms  0x7814 ret:0x7f96944db300
  7046 ms  0x7814 PK11_DeriveWithFlags()
  7046 ms  0x7814 basekey:0x7f96944db300
  7046 ms     | 0x7814 PK11_DeriveWithTemplate()
  7046 ms  0x7814 ret:0x7f96948e1b80
  7046 ms  0x7814 PK11_Derive()
  7046 ms  0x7814 basekey:0x7f96948e1b80
  7046 ms     | 0x7814 PK11_DeriveWithTemplate()
  7046 ms  0x7814 ret:0x7f9694928c80
  7046 ms  0x7814 SECKEY_DestroyPrivateKey()
  7046 ms  0x7814 privk:0x7f96944bc820::7f96944bc820  80 d8 5f 94                                      .._.
  7046 ms  0x7814 privk:0x7f96944bc820::7f96944bc820  e5 e5 e5 e5                                      ....
  7046 ms  0x7814 PK11_Encrypt()
  7046 ms  0x7814 symkey:0x7f9694931500
  7047 ms  0x7814 PK11_Encrypt()
  7047 ms  0x7814 symkey:0x7f96948e1100
  7047 ms  0x7814 PK11_Encrypt()
  7047 ms  0x7814 symkey:0x7f96948e1400
  7047 ms  0x7814 SSL_AuthCertificateComplete()
  7047 ms  0x7814 fd:0x7f969462d580
  7047 ms  0x7814 err:0x0
  7048 ms  0x7814 PK11_Encrypt()
  7048 ms  0x7814 symkey:0x7f9694931500
           /* TID 0x781c */
  7100 ms  0x781c PR_Close()
  7100 ms  0x781c fd:0x7f969462d400
  7100 ms  0x781c PR_Close()
  7100 ms  0x781c fd:0x7f969462df40
           /* TID 0x7814 */
  7112 ms  0x7814 SECKEY_DestroyPrivateKey()
  7112 ms  0x7814 privk:0x7f96944b9820::7f96944b9820  e0 5c 56 94                                      .\V.
  7113 ms  0x7814 privk:0x7f96944b9820::7f96944b9820  e5 e5 e5 e5                                      ....
  7113 ms  0x7814 SECKEY_DestroyPrivateKey()
  7113 ms  0x7814 privk:0x7f969441f820::7f969441f820  f0 26 58 94                                      .&X.
  7113 ms  0x7814 privk:0x7f969441f820::7f969441f820  e5 e5 e5 e5                                      ....
  7238 ms  0x7814 PR_Close()
  7238 ms  0x7814 fd:0x7f96a6581d30
           /* TID 0x7809 */
  7242 ms  0x7809 EC_ValidatePublicKey()
  7245 ms  0x7809 ret:0x0
  7245 ms  0x7809 EC_ValidatePublicKey()
  7248 ms  0x7809 ret:0x0
  7248 ms  0x7809 EC_ValidatePublicKey()
  7250 ms  0x7809 ret:0x0
  7250 ms  0x7809 EC_ValidatePublicKey()
  7256 ms  0x7809 ret:0x0
  7256 ms  0x7809 EC_ValidatePublicKey()
  7258 ms  0x7809 ret:0x0
  7258 ms  0x7809 EC_ValidatePublicKey()
  7260 ms  0x7809 ret:0x0
  7260 ms  0x7809 EC_ValidatePublicKey()
  7267 ms  0x7809 ret:0x0
  7267 ms  0x7809 EC_ValidatePublicKey()
  7269 ms  0x7809 ret:0x0
  7269 ms  0x7809 EC_ValidatePublicKey()
  7271 ms  0x7809 ret:0x0
  7271 ms  0x7809 EC_ValidatePublicKey()
  7272 ms  0x7809 ret:0x0
           /* TID 0x7814 */
  7273 ms  0x7814 PK11_Encrypt()
  7273 ms  0x7814 symkey:0x7f96a6eca500
  7273 ms  0x7814 PK11_Encrypt()
  7273 ms  0x7814 symkey:0x7f96948e0e80
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f96944a7220
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f96944a7310
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f9694982d30
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f9694982e20
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f969462db20
  7273 ms     | 0x7814 PK11_Encrypt()
  7273 ms     | 0x7814 symkey:0x7f96948e1c00
  7273 ms  0x7814 PR_Close()
  7273 ms  0x7814 fd:0x7f96945ea0a0
  7273 ms     | 0x7814 PK11_Encrypt()
  7273 ms     | 0x7814 symkey:0x7f96948e1980
  7274 ms  0x7814 PR_Close()
  7274 ms  0x7814 fd:0x7f96945ea190
  7274 ms     | 0x7814 PK11_Encrypt()
  7274 ms     | 0x7814 symkey:0x7f96948e1400
  7274 ms  0x7814 PR_Close()
  7274 ms  0x7814 fd:0x7f96945ea280
  7274 ms     | 0x7814 PK11_Encrypt()
  7274 ms     | 0x7814 symkey:0x7f96948e1100
  7274 ms  0x7814 PR_Close()
  7274 ms  0x7814 fd:0x7f96945ea370
  7274 ms     | 0x7814 PK11_Encrypt()
  7274 ms     | 0x7814 symkey:0x7f96944dbb00
  7274 ms  0x7814 PR_Close()
  7274 ms  0x7814 fd:0x7f96945ea460
  7274 ms     | 0x7814 PK11_Encrypt()
  7274 ms     | 0x7814 symkey:0x7f96944db900
  7274 ms  0x7814 PR_Close()
  7274 ms  0x7814 fd:0x7f96945ea6d0
  7274 ms     | 0x7814 PK11_Encrypt()
  7274 ms     | 0x7814 symkey:0x7f96944db700
  7275 ms  0x7814 PR_Close()
  7275 ms  0x7814 fd:0x7f96945ea9d0
  7275 ms     | 0x7814 PK11_Encrypt()
  7275 ms     | 0x7814 symkey:0x7f96944db400
  7275 ms  0x7814 PR_Close()
  7275 ms  0x7814 fd:0x7f96945eab50
  7275 ms     | 0x7814 PK11_Encrypt()
  7275 ms     | 0x7814 symkey:0x7f96944db200
  7275 ms  0x7814 PR_Close()
  7275 ms  0x7814 fd:0x7f96945eaf10
  7275 ms     | 0x7814 PK11_Encrypt()
  7275 ms     | 0x7814 symkey:0x7f96948b7e00
  7276 ms  0x7814 PR_Close()
  7276 ms  0x7814 fd:0x7f96a6ec6b80
  7276 ms  0x7814 PR_Close()
  7276 ms  0x7814 fd:0x7f96a58e3f10
  7276 ms     | 0x7814 PK11_Encrypt()
  7276 ms     | 0x7814 symkey:0x7f9694ceda80
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f96a58e3dc0
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f96a58e3370
  7277 ms     | 0x7814 PK11_Encrypt()
  7277 ms     | 0x7814 symkey:0x7f9694cecd00
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f96a56e2f40
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f96a6ba87c0
  7277 ms     | 0x7814 PK11_Encrypt()
  7277 ms     | 0x7814 symkey:0x7f96a7031d80
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f969462d580
  7277 ms     | 0x7814 PK11_Encrypt()
  7277 ms     | 0x7814 symkey:0x7f9694931500
  7277 ms  0x7814 PR_Close()
  7277 ms  0x7814 fd:0x7f96a6ba8b50
  7277 ms     | 0x7814 PK11_Encrypt()
  7277 ms     | 0x7814 symkey:0x7f96aa656500
  7278 ms  0x7814 PR_Close()
  7278 ms  0x7814 fd:0x7f96945ea7c0
  7278 ms     | 0x7814 PK11_Encrypt()
  7278 ms     | 0x7814 symkey:0x7f9694928380
           /* TID 0x7866 */
  7278 ms  0x7866 PR_Close()
  7278 ms  0x7866 fd:0x7f96944a72e0
  7278 ms  0x7866 PR_Close()
  7278 ms  0x7866 fd:0x7f96944a72e0
           /* TID 0x7814 */
  7281 ms  0x7814 PR_Close()
  7281 ms  0x7814 fd:0x7f96945eaeb0
  7281 ms     | 0x7814 PK11_Encrypt()
  7281 ms     | 0x7814 symkey:0x7f96948e0e80
  7281 ms  0x7814 PR_Close()
  7281 ms  0x7814 fd:0x7f96a6ec6610
  7281 ms     | 0x7814 PK11_Encrypt()
  7281 ms     | 0x7814 symkey:0x7f96a6eca500
           /* TID 0x7809 */
  7287 ms  0x7809 PR_Close()
  7287 ms  0x7809 fd:0x7f96a70fe7c0
  7287 ms  0x7809 PR_Close()
  7287 ms  0x7809 fd:0x7f96945ea0a0
  7287 ms  0x7809 PR_Close()
  7287 ms  0x7809 fd:0x7f96945ea220
  7287 ms  0x7809 PR_Close()
  7287 ms  0x7809 fd:0x7f96945ea0a0
  7288 ms  0x7809 PR_Close()
  7288 ms  0x7809 fd:0x7f96945ea220
  7288 ms  0x7809 PR_Close()
  7288 ms  0x7809 fd:0x7f96945ea0a0
           /* TID 0x7877 */
  7294 ms  0x7877 PR_Close()
  7294 ms  0x7877 fd:0x7f96945ea0a0
           /* TID 0x7809 */
  7311 ms  0x7809 PR_Close()
  7311 ms  0x7809 fd:0x7f96945ea220
  7312 ms  0x7809 PR_Close()
  7312 ms  0x7809 fd:0x7f969462da60
  7312 ms  0x7809 PR_Close()
  7312 ms  0x7809 fd:0x7f96945ea220
  7313 ms  0x7809 PR_Close()
  7313 ms  0x7809 fd:0x7f969462da60
  7313 ms  0x7809 PR_Close()
  7313 ms  0x7809 fd:0x7f96b08c89a0
  7313 ms  0x7809 PR_Close()
  7313 ms  0x7809 fd:0x7f96b08c88b0
  7313 ms  0x7809 PR_Close()
  7313 ms  0x7809 fd:0x7f96b08c8a60
  7315 ms  0x7809 PR_Close()
  7315 ms  0x7809 fd:0x7f969462dac0
  7317 ms  0x7809 PR_Close()
  7317 ms  0x7809 fd:0x7f969462dac0
  7319 ms  0x7809 PR_Close()
  7319 ms  0x7809 fd:0x7f96945ea220
  7319 ms  0x7809 PR_Close()
  7319 ms  0x7809 fd:0x7f969462dc70
  7320 ms  0x7809 PR_Close()
  7320 ms  0x7809 fd:0x7f96945ea220
  7320 ms  0x7809 PR_Close()
  7320 ms  0x7809 fd:0x7f969462dc70
  7323 ms  0x7809 PR_Close()
  7323 ms  0x7809 fd:0x7f969462dd00
  7324 ms  0x7809 PR_Close()
  7324 ms  0x7809 fd:0x7f969462dd00
  7326 ms  0x7809 PR_Close()
  7326 ms  0x7809 fd:0x7f96945ea220
  7326 ms  0x7809 PR_Close()
  7326 ms  0x7809 fd:0x7f969462de20
  7327 ms  0x7809 PR_Close()
  7327 ms  0x7809 fd:0x7f96945ea220
  7327 ms  0x7809 PR_Close()
  7327 ms  0x7809 fd:0x7f969462de20
  7329 ms  0x7809 PR_Close()
  7329 ms  0x7809 fd:0x7f969462de50
  7331 ms  0x7809 PR_Close()
  7331 ms  0x7809 fd:0x7f969462de50
  7337 ms  0x7809 PR_Close()
  7337 ms  0x7809 fd:0x7f969490a0a0
  7338 ms  0x7809 PR_Close()
  7338 ms  0x7809 fd:0x7f969490a0a0
  7340 ms  0x7809 PR_Close()
  7340 ms  0x7809 fd:0x7f969490a0d0
           /* TID 0x7877 */
  7348 ms  0x7877 PR_Close()
  7348 ms  0x7877 fd:0x7f96944a7af0
           /* TID 0x7809 */
  7349 ms  0x7809 PR_Close()
  7349 ms  0x7809 fd:0x7f96945ea220
  7349 ms  0x7809 PR_Close()
  7349 ms  0x7809 fd:0x7f9694982310
           /* TID 0x7877 */
  7349 ms  0x7877 PR_Close()
  7349 ms  0x7877 fd:0x7f96944a7af0
  7355 ms  0x7877 PR_Close()
  7355 ms  0x7877 fd:0x7f96945ea0a0
  7379 ms  0x7877 PR_Close()
  7379 ms  0x7877 fd:0x7f96944a7460
           /* TID 0x7814 */
  7383 ms  0x7814 SSL_ImportFD()
  7384 ms  0x7814 ret:0x7f96946fc4f0
  7384 ms  0x7814 SSL_AuthCertificateHook()
  7384 ms  0x7814 fd:0x7f96946fc4f0
  7384 ms  0x7814 ret:0x0
  7384 ms  0x7814 PR_Connect()
  7384 ms  0x7814 fd:0x7f96946fc4f0
           /* TID 0x780e */
  7391 ms  0x780e PR_Close()
  7391 ms  0x780e fd:0x7f96af6f8e20
           /* TID 0x7814 */
  7392 ms  0x7814 PR_Close()
  7392 ms  0x7814 fd:0x7f96946fc4f0
           /* TID 0x7877 */
  7403 ms  0x7877 PR_Close()
  7403 ms  0x7877 fd:0x7f96945ea820
           /* TID 0x7809 */
  7411 ms  0x7809 PR_Close()
  7411 ms  0x7809 fd:0x7f96945ea220
  7411 ms  0x7809 PR_Close()
  7411 ms  0x7809 fd:0x7f96945ea0d0
           /* TID 0x780e */
  7415 ms  0x780e PR_Close()
  7415 ms  0x780e fd:0x7f96abb32820
           /* TID 0x7814 */
  7418 ms  0x7814 PR_Close()
  7418 ms  0x7814 fd:0x7f96a6ba83a0
           /* TID 0x7866 */
  7419 ms  0x7866 PR_Close()
  7419 ms  0x7866 fd:0x7f9694982040
  7419 ms  0x7866 PR_Close()
  7419 ms  0x7866 fd:0x7f96944a70a0
  7419 ms  0x7866 PR_Close()
  7419 ms  0x7866 fd:0x7f96944a70a0
  7419 ms  0x7866 PR_Close()
  7419 ms  0x7866 fd:0x7f96944a70a0
           /* TID 0x7877 */
  7420 ms  0x7877 PR_Close()
  7420 ms  0x7877 fd:0x7f969490ad90
           /* TID 0x781c */
  7423 ms  0x781c PR_Close()
  7423 ms  0x781c fd:0x7f96945ea970
  7423 ms  0x781c PR_Close()
  7423 ms  0x781c fd:0x7f969462df10
           /* TID 0x780e */
  7428 ms  0x780e PR_Close()
  7428 ms  0x780e fd:0x7f96a56e2040
           /* TID 0x7809 */
  7431 ms  0x7809 PR_Close()
  7431 ms  0x7809 fd:0x7f96945ea220
  7431 ms  0x7809 PR_Close()
  7431 ms  0x7809 fd:0x7f96948b66a0
           /* TID 0x7877 */
  7433 ms  0x7877 PR_Close()
  7433 ms  0x7877 fd:0x7f9694536d90
  7435 ms  0x7877 PR_Close()
  7435 ms  0x7877 fd:0x7f9694536d90
  7512 ms  0x7877 PR_Close()
  7512 ms  0x7877 fd:0x7f96944a74c0
  7528 ms  0x7877 PR_Close()
  7528 ms  0x7877 fd:0x7f96944a74c0
  7546 ms  0x7877 PR_Close()
  7546 ms  0x7877 fd:0x7f9694536ee0
  7549 ms  0x7877 PR_Close()
  7549 ms  0x7877 fd:0x7f9694536f10
  7568 ms  0x7877 PR_Close()
  7568 ms  0x7877 fd:0x7f96945ea880
  7576 ms  0x7877 PR_Close()
  7576 ms  0x7877 fd:0x7f969462deb0
  7583 ms  0x7877 PR_Close()
  7583 ms  0x7877 fd:0x7f96948b62e0
  7593 ms  0x7877 PR_Close()
  7593 ms  0x7877 fd:0x7f96948b63a0
  7595 ms  0x7877 PR_Close()
  7595 ms  0x7877 fd:0x7f96948b63a0
           /* TID 0x7809 */
  7758 ms  0x7809 PR_Close()
  7758 ms  0x7809 fd:0x7f9694536940
  7759 ms  0x7809 PR_Close()
  7759 ms  0x7809 fd:0x7f9694536940
  7765 ms  0x7809 PR_Close()
  7765 ms  0x7809 fd:0x7f96cdcda130
  7765 ms  0x7809 PR_Close()
  7765 ms  0x7809 fd:0x7f96cdcda190
Process terminated
