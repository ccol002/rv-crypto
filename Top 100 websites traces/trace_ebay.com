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
           /* TID 0x4a0 */
    13 ms  0x4a0 PR_Close()
    13 ms  0x4a0 fd:0x7fb7fa0d3790
           /* TID 0x498 */
   316 ms  0x498 SSL_ImportFD()
   316 ms  0x498 ret:0x7fb8030e2370
   316 ms  0x498 SSL_AuthCertificateHook()
   316 ms  0x498 fd:0x7fb8030e2370
   316 ms  0x498 ret:0x0
   317 ms  0x498 PR_Connect()
   317 ms  0x498 fd:0x7fb8030e2370
           /* TID 0x501 */
   527 ms  0x501 PR_Close()
   527 ms  0x501 fd:0x7fb8030e2940
           /* TID 0x498 */
   528 ms  0x498 SECKEY_CreateECPrivateKey()
   528 ms  0x498 cx:0x7fb7f9d11fc8
   529 ms     | 0x498 EC_ValidatePublicKey()
   529 ms     | 0x498 ret:0x0
   529 ms  0x498 ret:0x7fb7fa0ca020::7fb7fa0ca020  b0 7a de f9                                      .z..
   529 ms  0x498 SECKEY_CreateECPrivateKey()
   529 ms  0x498 cx:0x7fb7f9d11fc8
   531 ms     | 0x498 EC_ValidatePublicKey()
   535 ms     | 0x498 ret:0x0
   535 ms  0x498 ret:0x7fb7fa0cc020::7fb7fa0cc020  70 79 de f9                                      py..
           /* TID 0x501 */
   707 ms  0x501 PR_Close()
   707 ms  0x501 fd:0x7fb8030e2940
           /* TID 0x498 */
   750 ms  SECKEY_ECParamsToKeySize()
   750 ms  0x498 ret:0x100
   750 ms  0x498 SECKEY_CreateECPrivateKey()
   750 ms  0x498 cx:0x7fb7f9d11fc8
   751 ms     | 0x498 EC_ValidatePublicKey()
   752 ms     | 0x498 ret:0x0
   753 ms  0x498 ret:0x7fb7f9c29820::7fb7f9c29820  f0 26 c1 f9                                      .&..
   753 ms  0x498 PK11_PubDeriveWithKDF()
   753 ms  0x498 seckey:0x7fb7f9c29820
   753 ms     | 0x498 EC_ValidatePublicKey()
   754 ms     | 0x498 ret:0x0
   756 ms  0x498 ret:0x7fb7fbbe8080
   756 ms  0x498 PK11_DeriveWithFlags()
   756 ms  0x498 basekey:0x7fb7fbbe8080
   756 ms     | 0x498 PK11_DeriveWithTemplate()
   756 ms  0x498 ret:0x7fb7f9c02880
   756 ms  0x498 PK11_Derive()
   756 ms  0x498 basekey:0x7fb7f9c02880
   756 ms     | 0x498 PK11_DeriveWithTemplate()
   756 ms  0x498 ret:0x7fb7f9c02900
   756 ms  0x498 SECKEY_DestroyPrivateKey()
   756 ms  0x498 privk:0x7fb7f9c29820::7fb7f9c29820  f0 26 c1 f9                                      .&..
   756 ms  0x498 privk:0x7fb7f9c29820::7fb7f9c29820  e5 e5 e5 e5                                      ....
   757 ms  0x498 PK11_Encrypt()
   757 ms  0x498 symkey:0x7fb7f9c02a80
   757 ms  0x498 PR_Connect()
   757 ms  0x498 fd:0x7fb8030e2dc0
           /* TID 0x501 */
   791 ms  0x501 PR_Close()
   791 ms  0x501 fd:0x7fb8030e2d30
           /* TID 0x4a0 */
   809 ms  0x4a0 PR_Close()
   809 ms  0x4a0 fd:0x7fb8030e2d30
           /* TID 0x4f6 */
   809 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   809 ms  0x4f6 ret:0x0
           /* TID 0x498 */
   810 ms  0x498 SSL_AuthCertificateComplete()
   810 ms  0x498 fd:0x7fb8030e2370
   810 ms  0x498 err:0x0
   810 ms  0x498 PK11_Encrypt()
   810 ms  0x498 symkey:0x7fb7f9c02a80
   968 ms  0x498 SECKEY_DestroyPrivateKey()
   968 ms  0x498 privk:0x7fb7fa0cc020::7fb7fa0cc020  70 79 de f9                                      py..
   968 ms  0x498 privk:0x7fb7fa0cc020::7fb7fa0cc020  e5 e5 e5 e5                                      ....
   968 ms  0x498 SECKEY_DestroyPrivateKey()
   968 ms  0x498 privk:0x7fb7fa0ca020::7fb7fa0ca020  b0 7a de f9                                      .z..
   968 ms  0x498 privk:0x7fb7fa0ca020::7fb7fa0ca020  e5 e5 e5 e5                                      ....
  1181 ms  0x498 SSL_ImportFD()
  1182 ms  0x498 ret:0x7fb8030e2f10
  1182 ms  0x498 SSL_AuthCertificateHook()
  1182 ms  0x498 fd:0x7fb8030e2f10
  1182 ms  0x498 ret:0x0
  1182 ms  0x498 PR_Connect()
  1182 ms  0x498 fd:0x7fb8030e2f10
  1207 ms  0x498 SECKEY_CreateECPrivateKey()
  1207 ms  0x498 cx:0x7fb7f9c05c08
  1208 ms     | 0x498 EC_ValidatePublicKey()
  1208 ms     | 0x498 ret:0x0
  1208 ms  0x498 ret:0x7fb7fa0cb020::7fb7fa0cb020  a0 26 c1 f9                                      .&..
  1208 ms  0x498 SECKEY_CreateECPrivateKey()
  1208 ms  0x498 cx:0x7fb7f9c05c08
  1208 ms     | 0x498 EC_ValidatePublicKey()
  1210 ms     | 0x498 ret:0x0
  1210 ms  0x498 ret:0x7fb7fa0d0820::7fb7fa0d0820  80 28 c1 f9                                      .(..
           /* TID 0x4f6 */
  1262 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1262 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  1263 ms  SECKEY_ECParamsToKeySize()
  1263 ms  0x498 ret:0x100
  1263 ms  0x498 SECKEY_CreateECPrivateKey()
  1263 ms  0x498 cx:0x7fb7f9c05c08
  1263 ms     | 0x498 EC_ValidatePublicKey()
  1265 ms     | 0x498 ret:0x0
  1265 ms  0x498 ret:0x7fb7f9c57020::7fb7f9c57020  50 2b c1 f9                                      P+..
  1265 ms  0x498 PK11_PubDeriveWithKDF()
  1265 ms  0x498 seckey:0x7fb7f9c57020
  1265 ms     | 0x498 EC_ValidatePublicKey()
  1266 ms     | 0x498 ret:0x0
  1268 ms  0x498 ret:0x7fb7fbbe8080
  1268 ms  0x498 PK11_DeriveWithFlags()
  1268 ms  0x498 basekey:0x7fb7fbbe8080
  1268 ms     | 0x498 PK11_DeriveWithTemplate()
  1268 ms  0x498 ret:0x7fb7f9c03700
  1268 ms  0x498 PK11_Derive()
  1268 ms  0x498 basekey:0x7fb7f9c03700
  1268 ms     | 0x498 PK11_DeriveWithTemplate()
  1268 ms  0x498 ret:0x7fb7f9c03780
  1268 ms  0x498 SECKEY_DestroyPrivateKey()
  1268 ms  0x498 privk:0x7fb7f9c57020::7fb7f9c57020  50 2b c1 f9                                      P+..
  1268 ms  0x498 privk:0x7fb7f9c57020::7fb7f9c57020  e5 e5 e5 e5                                      ....
  1268 ms  0x498 PK11_Encrypt()
  1268 ms  0x498 symkey:0x7fb7f9c03900
  1268 ms  0x498 SSL_AuthCertificateComplete()
  1268 ms  0x498 fd:0x7fb8030e2f10
  1268 ms  0x498 err:0x0
  1269 ms  0x498 PK11_Encrypt()
  1269 ms  0x498 symkey:0x7fb7f9c03900
  1319 ms  0x498 SECKEY_DestroyPrivateKey()
  1319 ms  0x498 privk:0x7fb7fa0d0820::7fb7fa0d0820  80 28 c1 f9                                      .(..
  1319 ms  0x498 privk:0x7fb7fa0d0820::7fb7fa0d0820  e5 e5 e5 e5                                      ....
  1319 ms  0x498 SECKEY_DestroyPrivateKey()
  1319 ms  0x498 privk:0x7fb7fa0cb020::7fb7fa0cb020  a0 26 c1 f9                                      .&..
  1319 ms  0x498 privk:0x7fb7fa0cb020::7fb7fa0cb020  e5 e5 e5 e5                                      ....
  1322 ms  0x498 PK11_Encrypt()
  1322 ms  0x498 symkey:0x7fb7f9c03900
  1353 ms  0x498 PK11_Encrypt()
  1353 ms  0x498 symkey:0x7fb7f9c03900
  1380 ms  0x498 PK11_Encrypt()
  1380 ms  0x498 symkey:0x7fb7f9c03900
  1408 ms  0x498 PK11_Encrypt()
  1408 ms  0x498 symkey:0x7fb7f9c03900
  1521 ms  0x498 PK11_Encrypt()
  1521 ms  0x498 symkey:0x7fb7f9c03900
  1552 ms  0x498 PK11_Encrypt()
  1552 ms  0x498 symkey:0x7fb7f9c03900
  1582 ms  0x498 PK11_Encrypt()
  1582 ms  0x498 symkey:0x7fb7f9c03900
           /* TID 0x4ef */
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b1f0
  1613 ms  0x4ef PR_Close()
  1613 ms  0x4ef fd:0x7fb7f9c1b250
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b1f0
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b250
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b1f0
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b250
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b1f0
  1614 ms  0x4ef PR_Close()
  1614 ms  0x4ef fd:0x7fb7f9c1b250
  1616 ms  0x4ef PR_Close()
  1616 ms  0x4ef fd:0x7fb7f9c1b1f0
  1616 ms  0x4ef PR_Close()
  1616 ms  0x4ef fd:0x7fb7f9c1b1f0
  1617 ms  0x4ef PR_Close()
  1617 ms  0x4ef fd:0x7fb7f9c1b1f0
  1617 ms  0x4ef PR_Close()
  1617 ms  0x4ef fd:0x7fb7f9c1b220
  1618 ms  0x4ef PR_Close()
  1618 ms  0x4ef fd:0x7fb7f9c1b220
  1618 ms  0x4ef PR_Close()
  1618 ms  0x4ef fd:0x7fb7f9c1b220
  1620 ms  0x4ef PR_Close()
  1620 ms  0x4ef fd:0x7fb7f9c1b220
  1620 ms  0x4ef PR_Close()
  1620 ms  0x4ef fd:0x7fb7f9c1b220
  1668 ms  0x4ef PR_Close()
  1668 ms  0x4ef fd:0x7fb7f9c1b220
  1669 ms  0x4ef PR_Close()
  1669 ms  0x4ef fd:0x7fb7f9c1b220
  1676 ms  0x4ef PR_Close()
  1676 ms  0x4ef fd:0x7fb7f9c1b220
  1677 ms  0x4ef PR_Close()
  1677 ms  0x4ef fd:0x7fb7f9c1b220
  1683 ms  0x4ef PR_Close()
  1683 ms  0x4ef fd:0x7fb7f9c1b220
  1683 ms  0x4ef PR_Close()
  1683 ms  0x4ef fd:0x7fb7f9c1b220
  1685 ms  0x4ef PR_Close()
  1685 ms  0x4ef fd:0x7fb7f9c1b220
  1685 ms  0x4ef PR_Close()
  1685 ms  0x4ef fd:0x7fb7f9c1b220
           /* TID 0x4ed */
  1685 ms  0x4ed PR_Close()
  1685 ms  0x4ed fd:0x7fb7f9c1b220
  1685 ms  0x4ed PR_Close()
  1685 ms  0x4ed fd:0x7fb7f9c1b220
  1685 ms  0x4ed PR_Close()
  1685 ms  0x4ed fd:0x7fb7f9c1b220
  1685 ms  0x4ed PR_Close()
  1685 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
  1686 ms  0x4ed PR_Close()
  1686 ms  0x4ed fd:0x7fb7f9c1b220
           /* TID 0x501 */
  2188 ms  0x501 PR_Close()
  2188 ms  0x501 fd:0x7fb7f9c1b580
  2192 ms  0x501 PR_Close()
  2192 ms  0x501 fd:0x7fb7f9c1b580
  2815 ms  0x501 PR_Close()
  2815 ms  0x501 fd:0x7fb7f9c1b580
           /* TID 0x4a0 */
  4171 ms  0x4a0 PR_Close()
  4171 ms  0x4a0 fd:0x7fb7f9c1b580
  4172 ms  0x4a0 PR_Close()
  4172 ms  0x4a0 fd:0x7fb7f9c1b6d0
  4172 ms  0x4a0 PR_Close()
  4172 ms  0x4a0 fd:0x7fb7f9c1b730
           /* TID 0x498 */
  4421 ms  0x498 SSL_ImportFD()
  4421 ms  0x498 ret:0x7fb7fd2926a0
  4421 ms  0x498 SSL_AuthCertificateHook()
  4421 ms  0x498 fd:0x7fb7fd2926a0
  4421 ms  0x498 ret:0x0
  4421 ms  0x498 PR_Connect()
  4421 ms  0x498 fd:0x7fb7fd2926a0
  4504 ms  0x498 SECKEY_CreateECPrivateKey()
  4504 ms  0x498 cx:0x7fb7f9c05f48
  4506 ms     | 0x498 EC_ValidatePublicKey()
  4506 ms     | 0x498 ret:0x0
  4506 ms  0x498 ret:0x7fb7fb5b1820::7fb7fb5b1820  50 b6 f4 e8                                      P...
  4506 ms  0x498 SECKEY_CreateECPrivateKey()
  4506 ms  0x498 cx:0x7fb7f9c05f48
  4508 ms     | 0x498 EC_ValidatePublicKey()
  4514 ms     | 0x498 ret:0x0
  4514 ms  0x498 ret:0x7fb7fb5b3820::7fb7fb5b3820  c0 b4 f4 e8                                      ....
           /* TID 0x4f6 */
  4601 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4601 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  4602 ms  SECKEY_ECParamsToKeySize()
  4602 ms  0x498 ret:0x100
  4602 ms  0x498 SECKEY_CreateECPrivateKey()
  4602 ms  0x498 cx:0x7fb7f9c05f48
  4604 ms     | 0x498 EC_ValidatePublicKey()
  4608 ms     | 0x498 ret:0x0
  4608 ms  0x498 ret:0x7fb7fb5b9020::7fb7fb5b9020  80 bd f4 e8                                      ....
  4609 ms  0x498 PK11_PubDeriveWithKDF()
  4609 ms  0x498 seckey:0x7fb7fb5b9020
  4609 ms     | 0x498 EC_ValidatePublicKey()
  4613 ms     | 0x498 ret:0x0
  4617 ms  0x498 ret:0x7fb7fbbe8080
  4617 ms  0x498 PK11_DeriveWithFlags()
  4617 ms  0x498 basekey:0x7fb7fbbe8080
  4617 ms     | 0x498 PK11_DeriveWithTemplate()
  4617 ms  0x498 ret:0x7fb7fd296e00
  4617 ms  0x498 PK11_Derive()
  4617 ms  0x498 basekey:0x7fb7fd296e00
  4617 ms     | 0x498 PK11_DeriveWithTemplate()
  4617 ms  0x498 ret:0x7fb7fd296e80
  4617 ms  0x498 SECKEY_DestroyPrivateKey()
  4617 ms  0x498 privk:0x7fb7fb5b9020::7fb7fb5b9020  80 bd f4 e8                                      ....
  4617 ms  0x498 privk:0x7fb7fb5b9020::7fb7fb5b9020  e5 e5 e5 e5                                      ....
  4618 ms  0x498 PK11_Encrypt()
  4618 ms  0x498 symkey:0x7fb7fd297000
  4618 ms  0x498 SSL_AuthCertificateComplete()
  4618 ms  0x498 fd:0x7fb7fd2926a0
  4618 ms  0x498 err:0x0
  4620 ms  0x498 PK11_Encrypt()
  4620 ms  0x498 symkey:0x7fb7fd297000
  4621 ms  0x498 PK11_Encrypt()
  4621 ms  0x498 symkey:0x7fb7fd297000
  4701 ms  0x498 SECKEY_DestroyPrivateKey()
  4701 ms  0x498 privk:0x7fb7fb5b3820::7fb7fb5b3820  c0 b4 f4 e8                                      ....
  4702 ms  0x498 privk:0x7fb7fb5b3820::7fb7fb5b3820  e5 e5 e5 e5                                      ....
  4702 ms  0x498 SECKEY_DestroyPrivateKey()
  4702 ms  0x498 privk:0x7fb7fb5b1820::7fb7fb5b1820  50 b6 f4 e8                                      P...
  4702 ms  0x498 privk:0x7fb7fb5b1820::7fb7fb5b1820  e5 e5 e5 e5                                      ....
  4784 ms  0x498 PK11_Encrypt()
  4784 ms  0x498 symkey:0x7fb7fd297000
           /* TID 0x4af */
  5087 ms  0x4af PR_Close()
  5087 ms  0x4af fd:0x7fb7fd292ca0
           /* TID 0x498 */
  5169 ms  0x498 PK11_Encrypt()
  5169 ms  0x498 symkey:0x7fb7fd297000
           /* TID 0x4a0 */
  5259 ms  0x4a0 PR_Close()
  5259 ms  0x4a0 fd:0x7fb7e8ecf9a0
           /* TID 0x498 */
  5280 ms  0x498 SSL_ImportFD()
  5281 ms  0x498 ret:0x7fb7e90fc760
  5281 ms  0x498 SSL_AuthCertificateHook()
  5281 ms  0x498 fd:0x7fb7e90fc760
  5281 ms  0x498 ret:0x0
  5281 ms  0x498 PR_Connect()
  5281 ms  0x498 fd:0x7fb7e90fc760
  5281 ms  0x498 SSL_ImportFD()
  5281 ms  0x498 ret:0x7fb7e90fc940
  5281 ms  0x498 SSL_AuthCertificateHook()
  5281 ms  0x498 fd:0x7fb7e90fc940
  5281 ms  0x498 ret:0x0
  5282 ms  0x498 PR_Connect()
  5282 ms  0x498 fd:0x7fb7e90fc940
  5282 ms  0x498 SSL_ImportFD()
  5282 ms  0x498 ret:0x7fb7e8ecff70
  5282 ms  0x498 SSL_AuthCertificateHook()
  5282 ms  0x498 fd:0x7fb7e8ecff70
  5282 ms  0x498 ret:0x0
  5282 ms  0x498 PR_Connect()
  5282 ms  0x498 fd:0x7fb7e8ecff70
  5282 ms  0x498 SSL_ImportFD()
  5282 ms  0x498 ret:0x7fb7e8ecffd0
  5282 ms  0x498 SSL_AuthCertificateHook()
  5282 ms  0x498 fd:0x7fb7e8ecffd0
  5282 ms  0x498 ret:0x0
  5282 ms  0x498 PR_Connect()
  5282 ms  0x498 fd:0x7fb7e8ecffd0
           /* TID 0x4a0 */
  5296 ms  0x4a0 PR_Close()
  5296 ms  0x4a0 fd:0x7fb7f9ccd4c0
           /* TID 0x498 */
  5304 ms  0x498 SSL_ImportFD()
  5304 ms  0x498 ret:0x7fb7f9ccdaf0
  5304 ms  0x498 SSL_AuthCertificateHook()
  5304 ms  0x498 fd:0x7fb7f9ccdaf0
  5304 ms  0x498 ret:0x0
  5304 ms  0x498 PR_Connect()
  5304 ms  0x498 fd:0x7fb7f9ccdaf0
  5304 ms  0x498 SSL_ImportFD()
  5304 ms  0x498 ret:0x7fb7f9ccdcd0
  5304 ms  0x498 SSL_AuthCertificateHook()
  5304 ms  0x498 fd:0x7fb7f9ccdcd0
  5304 ms  0x498 ret:0x0
  5304 ms  0x498 PR_Connect()
  5304 ms  0x498 fd:0x7fb7f9ccdcd0
  5318 ms  0x498 SECKEY_CreateECPrivateKey()
  5318 ms  0x498 cx:0x7fb7f9c06908
  5319 ms     | 0x498 EC_ValidatePublicKey()
  5319 ms     | 0x498 ret:0x0
  5319 ms  0x498 ret:0x7fb7e8efd020::7fb7e8efd020  40 b2 cb f9                                      @...
  5319 ms  0x498 SECKEY_CreateECPrivateKey()
  5319 ms  0x498 cx:0x7fb7f9c06908
  5320 ms     | 0x498 EC_ValidatePublicKey()
  5322 ms     | 0x498 ret:0x0
  5322 ms  0x498 ret:0x7fb7e8eff020::7fb7e8eff020  10 1f c7 f9                                      ....
  5323 ms  0x498 SECKEY_CreateECPrivateKey()
  5323 ms  0x498 cx:0x7fb7f9c06de8
  5323 ms     | 0x498 EC_ValidatePublicKey()
  5323 ms     | 0x498 ret:0x0
  5323 ms  0x498 ret:0x7fb7fb5be820::7fb7fb5be820  d0 b8 cb f9                                      ....
  5324 ms  0x498 SECKEY_CreateECPrivateKey()
  5324 ms  0x498 cx:0x7fb7f9c06de8
  5324 ms     | 0x498 EC_ValidatePublicKey()
  5326 ms     | 0x498 ret:0x0
  5326 ms  0x498 ret:0x7fb7e903d820::7fb7e903d820  b0 ba cb f9                                      ....
  5326 ms  0x498 SECKEY_CreateECPrivateKey()
  5326 ms  0x498 cx:0x7fb7f9c06c48
  5327 ms     | 0x498 EC_ValidatePublicKey()
  5327 ms     | 0x498 ret:0x0
  5327 ms  0x498 ret:0x7fb7e9040020::7fb7e9040020  f0 bb cb f9                                      ....
  5327 ms  0x498 SECKEY_CreateECPrivateKey()
  5327 ms  0x498 cx:0x7fb7f9c06c48
  5328 ms     | 0x498 EC_ValidatePublicKey()
  5329 ms     | 0x498 ret:0x0
  5329 ms  0x498 ret:0x7fb7e9042020::7fb7e9042020  d0 bd cb f9                                      ....
  5329 ms  0x498 SECKEY_CreateECPrivateKey()
  5329 ms  0x498 cx:0x7fb7f9c06aa8
  5330 ms     | 0x498 EC_ValidatePublicKey()
  5330 ms     | 0x498 ret:0x0
  5330 ms  0x498 ret:0x7fb7e9044820::7fb7e9044820  10 bf cb f9                                      ....
  5330 ms  0x498 SECKEY_CreateECPrivateKey()
  5330 ms  0x498 cx:0x7fb7f9c06aa8
  5331 ms     | 0x498 EC_ValidatePublicKey()
  5332 ms     | 0x498 ret:0x0
  5332 ms  0x498 ret:0x7fb7e9046820::7fb7e9046820  60 f0 06 e9                                      `...
  5340 ms  0x498 SECKEY_CreateECPrivateKey()
  5340 ms  0x498 cx:0x7fb7f9c06f88
  5341 ms     | 0x498 EC_ValidatePublicKey()
  5341 ms     | 0x498 ret:0x0
  5341 ms  0x498 ret:0x7fb7e9049020::7fb7e9049020  a0 f1 06 e9                                      ....
  5342 ms  0x498 SECKEY_CreateECPrivateKey()
  5342 ms  0x498 cx:0x7fb7f9c06f88
  5342 ms     | 0x498 EC_ValidatePublicKey()
  5344 ms     | 0x498 ret:0x0
  5344 ms  0x498 ret:0x7fb7e904b020::7fb7e904b020  80 f3 06 e9                                      ....
  5344 ms  0x498 SECKEY_CreateECPrivateKey()
  5344 ms  0x498 cx:0x7fb7f9c07128
  5345 ms     | 0x498 EC_ValidatePublicKey()
  5345 ms     | 0x498 ret:0x0
  5345 ms  0x498 ret:0x7fb7e904d820::7fb7e904d820  c0 f4 06 e9                                      ....
  5345 ms  0x498 SECKEY_CreateECPrivateKey()
  5345 ms  0x498 cx:0x7fb7f9c07128
  5345 ms     | 0x498 EC_ValidatePublicKey()
  5347 ms     | 0x498 ret:0x0
  5347 ms  0x498 ret:0x7fb7e904f820::7fb7e904f820  a0 f6 06 e9                                      ....
           /* TID 0x4f6 */
  5360 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5360 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5361 ms  SECKEY_ECParamsToKeySize()
  5361 ms  0x498 ret:0x100
  5361 ms  0x498 SECKEY_CreateECPrivateKey()
  5361 ms  0x498 cx:0x7fb7f9c06908
  5361 ms     | 0x498 EC_ValidatePublicKey()
  5363 ms     | 0x498 ret:0x0
  5363 ms  0x498 ret:0x7fb7e9055820::7fb7e9055820  00 fb 06 e9                                      ....
  5363 ms  0x498 PK11_PubDeriveWithKDF()
  5363 ms  0x498 seckey:0x7fb7e9055820
  5363 ms     | 0x498 EC_ValidatePublicKey()
  5365 ms     | 0x498 ret:0x0
  5366 ms  0x498 ret:0x7fb7fbbe8080
  5366 ms  0x498 PK11_DeriveWithFlags()
  5366 ms  0x498 basekey:0x7fb7fbbe8080
  5366 ms     | 0x498 PK11_DeriveWithTemplate()
  5366 ms  0x498 ret:0x7fb7e8d16080
  5366 ms  0x498 PK11_Derive()
  5366 ms  0x498 basekey:0x7fb7e8d16080
  5366 ms     | 0x498 PK11_DeriveWithTemplate()
  5366 ms  0x498 ret:0x7fb7e8d16100
  5366 ms  0x498 SECKEY_DestroyPrivateKey()
  5366 ms  0x498 privk:0x7fb7e9055820::7fb7e9055820  00 fb 06 e9                                      ....
  5367 ms  0x498 privk:0x7fb7e9055820::7fb7e9055820  e5 e5 e5 e5                                      ....
  5367 ms  0x498 PK11_Encrypt()
  5367 ms  0x498 symkey:0x7fb7e8d16280
  5367 ms  0x498 SSL_AuthCertificateComplete()
  5367 ms  0x498 fd:0x7fb7e90fc760
  5367 ms  0x498 err:0x0
           /* TID 0x4f6 */
  5367 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5367 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5368 ms  SECKEY_ECParamsToKeySize()
  5368 ms  0x498 ret:0x100
  5368 ms  0x498 SECKEY_CreateECPrivateKey()
  5368 ms  0x498 cx:0x7fb7f9c06de8
  5368 ms     | 0x498 EC_ValidatePublicKey()
  5372 ms     | 0x498 ret:0x0
  5372 ms  0x498 ret:0x7fb7e9056020::7fb7e9056020  a0 fb 06 e9                                      ....
  5372 ms  0x498 PK11_PubDeriveWithKDF()
  5372 ms  0x498 seckey:0x7fb7e9056020
  5372 ms     | 0x498 EC_ValidatePublicKey()
  5374 ms     | 0x498 ret:0x0
  5375 ms  0x498 ret:0x7fb7fbbe8080
  5375 ms  0x498 PK11_DeriveWithFlags()
  5375 ms  0x498 basekey:0x7fb7fbbe8080
  5375 ms     | 0x498 PK11_DeriveWithTemplate()
  5375 ms  0x498 ret:0x7fb7e8d16380
  5375 ms  0x498 PK11_Derive()
  5375 ms  0x498 basekey:0x7fb7e8d16380
  5375 ms     | 0x498 PK11_DeriveWithTemplate()
  5376 ms  0x498 ret:0x7fb7e8d16400
  5376 ms  0x498 SECKEY_DestroyPrivateKey()
  5376 ms  0x498 privk:0x7fb7e9056020::7fb7e9056020  a0 fb 06 e9                                      ....
  5376 ms  0x498 privk:0x7fb7e9056020::7fb7e9056020  e5 e5 e5 e5                                      ....
  5376 ms  0x498 PK11_Encrypt()
  5376 ms  0x498 symkey:0x7fb7e8d16580
           /* TID 0x4f6 */
  5376 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5376 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5377 ms  SECKEY_ECParamsToKeySize()
  5377 ms  0x498 ret:0x100
  5377 ms  0x498 SECKEY_CreateECPrivateKey()
  5377 ms  0x498 cx:0x7fb7f9c06c48
  5377 ms     | 0x498 EC_ValidatePublicKey()
  5379 ms     | 0x498 ret:0x0
  5379 ms  0x498 ret:0x7fb7e9056820::7fb7e9056820  40 fc 06 e9                                      @...
  5379 ms  0x498 PK11_PubDeriveWithKDF()
  5379 ms  0x498 seckey:0x7fb7e9056820
  5379 ms     | 0x498 EC_ValidatePublicKey()
  5380 ms     | 0x498 ret:0x0
  5382 ms  0x498 ret:0x7fb7fbbe8080
  5382 ms  0x498 PK11_DeriveWithFlags()
  5382 ms  0x498 basekey:0x7fb7fbbe8080
  5382 ms     | 0x498 PK11_DeriveWithTemplate()
  5382 ms  0x498 ret:0x7fb7e8d16680
  5382 ms  0x498 PK11_Derive()
  5382 ms  0x498 basekey:0x7fb7e8d16680
  5382 ms     | 0x498 PK11_DeriveWithTemplate()
  5382 ms  0x498 ret:0x7fb7e8d16700
  5382 ms  0x498 SECKEY_DestroyPrivateKey()
  5382 ms  0x498 privk:0x7fb7e9056820::7fb7e9056820  40 fc 06 e9                                      @...
  5382 ms  0x498 privk:0x7fb7e9056820::7fb7e9056820  e5 e5 e5 e5                                      ....
  5382 ms  0x498 PK11_Encrypt()
  5382 ms  0x498 symkey:0x7fb7e8d16880
  5383 ms  0x498 PK11_Encrypt()
  5383 ms  0x498 symkey:0x7fb7e8d16280
  5383 ms  0x498 PK11_Encrypt()
  5383 ms  0x498 symkey:0x7fb7e8d16280
  5383 ms  0x498 SSL_AuthCertificateComplete()
  5383 ms  0x498 fd:0x7fb7e8ecffd0
  5383 ms  0x498 err:0x0
  5383 ms  0x498 SSL_AuthCertificateComplete()
  5383 ms  0x498 fd:0x7fb7e8ecff70
  5383 ms  0x498 err:0x0
  5384 ms  0x498 PK11_Encrypt()
  5384 ms  0x498 symkey:0x7fb7e8d16280
  5384 ms  0x498 PK11_Encrypt()
  5384 ms  0x498 symkey:0x7fb7e8d16280
  5384 ms  0x498 PK11_Encrypt()
  5384 ms  0x498 symkey:0x7fb7e8d16280
  5384 ms  0x498 PK11_Encrypt()
  5384 ms  0x498 symkey:0x7fb7e8d16280
  5385 ms  0x498 PK11_Encrypt()
  5385 ms  0x498 symkey:0x7fb7e8d16280
  5385 ms  0x498 PK11_Encrypt()
  5385 ms  0x498 symkey:0x7fb7e8d16580
  5385 ms  0x498 PK11_Encrypt()
  5385 ms  0x498 symkey:0x7fb7e8d16880
           /* TID 0x4f6 */
  5386 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5386 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5386 ms  SECKEY_ECParamsToKeySize()
  5386 ms  0x498 ret:0x100
  5386 ms  0x498 SECKEY_CreateECPrivateKey()
  5386 ms  0x498 cx:0x7fb7f9c06aa8
  5387 ms     | 0x498 EC_ValidatePublicKey()
  5388 ms     | 0x498 ret:0x0
  5388 ms  0x498 ret:0x7fb7e8d57820::7fb7e8d57820  e0 fc 06 e9                                      ....
  5389 ms  0x498 PK11_PubDeriveWithKDF()
  5389 ms  0x498 seckey:0x7fb7e8d57820
  5389 ms     | 0x498 EC_ValidatePublicKey()
  5390 ms     | 0x498 ret:0x0
  5391 ms  0x498 ret:0x7fb7fbbe8080
  5391 ms  0x498 PK11_DeriveWithFlags()
  5391 ms  0x498 basekey:0x7fb7fbbe8080
  5391 ms     | 0x498 PK11_DeriveWithTemplate()
  5392 ms  0x498 ret:0x7fb7e8d16a00
  5392 ms  0x498 PK11_Derive()
  5392 ms  0x498 basekey:0x7fb7e8d16a00
  5392 ms     | 0x498 PK11_DeriveWithTemplate()
  5392 ms  0x498 ret:0x7fb7e8d16b00
  5392 ms  0x498 SECKEY_DestroyPrivateKey()
  5392 ms  0x498 privk:0x7fb7e8d57820::7fb7e8d57820  e0 fc 06 e9                                      ....
  5392 ms  0x498 privk:0x7fb7e8d57820::7fb7e8d57820  e5 e5 e5 e5                                      ....
  5392 ms  0x498 PK11_Encrypt()
  5392 ms  0x498 symkey:0x7fb7e8d16c80
  5392 ms  0x498 PK11_Encrypt()
  5392 ms  0x498 symkey:0x7fb7e8d16280
           /* TID 0x4f6 */
  5393 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5393 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5393 ms  SECKEY_ECParamsToKeySize()
  5393 ms  0x498 ret:0x100
  5393 ms  0x498 SECKEY_CreateECPrivateKey()
  5393 ms  0x498 cx:0x7fb7f9c06f88
  5394 ms     | 0x498 EC_ValidatePublicKey()
  5395 ms     | 0x498 ret:0x0
  5395 ms  0x498 ret:0x7fb7e8d58820::7fb7e8d58820  80 fd 06 e9                                      ....
  5395 ms  0x498 PK11_PubDeriveWithKDF()
  5395 ms  0x498 seckey:0x7fb7e8d58820
  5395 ms     | 0x498 EC_ValidatePublicKey()
  5396 ms     | 0x498 ret:0x0
  5398 ms  0x498 ret:0x7fb7fbbe8080
  5398 ms  0x498 PK11_DeriveWithFlags()
  5398 ms  0x498 basekey:0x7fb7fbbe8080
  5398 ms     | 0x498 PK11_DeriveWithTemplate()
  5398 ms  0x498 ret:0x7fb7e8d16d80
  5398 ms  0x498 PK11_Derive()
  5398 ms  0x498 basekey:0x7fb7e8d16d80
  5398 ms     | 0x498 PK11_DeriveWithTemplate()
  5398 ms  0x498 ret:0x7fb7e8d16e00
  5398 ms  0x498 SECKEY_DestroyPrivateKey()
  5398 ms  0x498 privk:0x7fb7e8d58820::7fb7e8d58820  80 fd 06 e9                                      ....
  5398 ms  0x498 privk:0x7fb7e8d58820::7fb7e8d58820  e5 e5 e5 e5                                      ....
  5398 ms  0x498 PK11_Encrypt()
  5398 ms  0x498 symkey:0x7fb7e8d16f80
           /* TID 0x4f6 */
  5399 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5399 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5399 ms  SECKEY_ECParamsToKeySize()
  5399 ms  0x498 ret:0x100
  5399 ms  0x498 SECKEY_CreateECPrivateKey()
  5399 ms  0x498 cx:0x7fb7f9c07128
  5400 ms     | 0x498 EC_ValidatePublicKey()
  5401 ms     | 0x498 ret:0x0
  5401 ms  0x498 ret:0x7fb7e8d59820::7fb7e8d59820  20 fe 06 e9                                       ...
  5401 ms  0x498 PK11_PubDeriveWithKDF()
  5401 ms  0x498 seckey:0x7fb7e8d59820
  5401 ms     | 0x498 EC_ValidatePublicKey()
  5403 ms     | 0x498 ret:0x0
  5404 ms  0x498 ret:0x7fb7fbbe8080
  5404 ms  0x498 PK11_DeriveWithFlags()
  5404 ms  0x498 basekey:0x7fb7fbbe8080
  5404 ms     | 0x498 PK11_DeriveWithTemplate()
  5404 ms  0x498 ret:0x7fb7e8d17080
  5404 ms  0x498 PK11_Derive()
  5404 ms  0x498 basekey:0x7fb7e8d17080
  5404 ms     | 0x498 PK11_DeriveWithTemplate()
  5405 ms  0x498 ret:0x7fb7e8d17100
  5405 ms  0x498 SECKEY_DestroyPrivateKey()
  5405 ms  0x498 privk:0x7fb7e8d59820::7fb7e8d59820  20 fe 06 e9                                       ...
  5405 ms  0x498 privk:0x7fb7e8d59820::7fb7e8d59820  e5 e5 e5 e5                                      ....
  5405 ms  0x498 PK11_Encrypt()
  5405 ms  0x498 symkey:0x7fb7e8d17280
  5405 ms  0x498 SECKEY_DestroyPrivateKey()
  5405 ms  0x498 privk:0x7fb7e8eff020::7fb7e8eff020  10 1f c7 f9                                      ....
  5405 ms  0x498 privk:0x7fb7e8eff020::7fb7e8eff020  e5 e5 e5 e5                                      ....
  5405 ms  0x498 SECKEY_DestroyPrivateKey()
  5405 ms  0x498 privk:0x7fb7e8efd020::7fb7e8efd020  40 b2 cb f9                                      @...
  5406 ms  0x498 privk:0x7fb7e8efd020::7fb7e8efd020  e5 e5 e5 e5                                      ....
  5406 ms  0x498 PK11_Encrypt()
  5406 ms  0x498 symkey:0x7fb7e8d16280
  5406 ms  0x498 PK11_Encrypt()
  5406 ms  0x498 symkey:0x7fb7e8d16280
  5406 ms  0x498 SSL_AuthCertificateComplete()
  5406 ms  0x498 fd:0x7fb7e90fc940
  5406 ms  0x498 err:0x0
  5406 ms  0x498 SSL_AuthCertificateComplete()
  5406 ms  0x498 fd:0x7fb7f9ccdaf0
  5406 ms  0x498 err:0x0
  5406 ms  0x498 SSL_AuthCertificateComplete()
  5406 ms  0x498 fd:0x7fb7f9ccdcd0
  5406 ms  0x498 err:0x0
  5407 ms  0x498 PK11_Encrypt()
  5407 ms  0x498 symkey:0x7fb7e8d16c80
  5407 ms  0x498 PK11_Encrypt()
  5407 ms  0x498 symkey:0x7fb7e8d16f80
  5407 ms  0x498 PK11_Encrypt()
  5407 ms  0x498 symkey:0x7fb7e8d17280
  5407 ms  0x498 PK11_Encrypt()
  5407 ms  0x498 symkey:0x7fb7e8d16280
  5408 ms  0x498 PK11_Encrypt()
  5408 ms  0x498 symkey:0x7fb7e8d16280
  5408 ms  0x498 PK11_Encrypt()
  5408 ms  0x498 symkey:0x7fb7e8d16280
  5408 ms  0x498 PK11_Encrypt()
  5408 ms  0x498 symkey:0x7fb7e8d16280
  5409 ms  0x498 PK11_Encrypt()
  5409 ms  0x498 symkey:0x7fb7e8d16280
  5416 ms  0x498 SECKEY_DestroyPrivateKey()
  5416 ms  0x498 privk:0x7fb7e903d820::7fb7e903d820  b0 ba cb f9                                      ....
  5416 ms  0x498 privk:0x7fb7e903d820::7fb7e903d820  e5 e5 e5 e5                                      ....
  5416 ms  0x498 SECKEY_DestroyPrivateKey()
  5416 ms  0x498 privk:0x7fb7fb5be820::7fb7fb5be820  d0 b8 cb f9                                      ....
  5416 ms  0x498 privk:0x7fb7fb5be820::7fb7fb5be820  e5 e5 e5 e5                                      ....
  5416 ms  0x498 PR_Close()
  5416 ms  0x498 fd:0x7fb7e8ecffd0
  5416 ms     | 0x498 PK11_Encrypt()
  5416 ms     | 0x498 symkey:0x7fb7e8d16580
  5419 ms  0x498 SECKEY_DestroyPrivateKey()
  5419 ms  0x498 privk:0x7fb7e9042020::7fb7e9042020  d0 bd cb f9                                      ....
  5419 ms  0x498 privk:0x7fb7e9042020::7fb7e9042020  e5 e5 e5 e5                                      ....
  5419 ms  0x498 SECKEY_DestroyPrivateKey()
  5419 ms  0x498 privk:0x7fb7e9040020::7fb7e9040020  f0 bb cb f9                                      ....
  5420 ms  0x498 privk:0x7fb7e9040020::7fb7e9040020  e5 e5 e5 e5                                      ....
  5420 ms  0x498 PR_Close()
  5420 ms  0x498 fd:0x7fb7e8ecff70
  5420 ms     | 0x498 PK11_Encrypt()
  5420 ms     | 0x498 symkey:0x7fb7e8d16880
  5429 ms  0x498 SECKEY_DestroyPrivateKey()
  5429 ms  0x498 privk:0x7fb7e9046820::7fb7e9046820  60 f0 06 e9                                      `...
  5429 ms  0x498 privk:0x7fb7e9046820::7fb7e9046820  e5 e5 e5 e5                                      ....
  5429 ms  0x498 SECKEY_DestroyPrivateKey()
  5429 ms  0x498 privk:0x7fb7e9044820::7fb7e9044820  10 bf cb f9                                      ....
  5429 ms  0x498 privk:0x7fb7e9044820::7fb7e9044820  e5 e5 e5 e5                                      ....
  5429 ms  0x498 PR_Close()
  5429 ms  0x498 fd:0x7fb7e90fc940
  5429 ms     | 0x498 PK11_Encrypt()
  5429 ms     | 0x498 symkey:0x7fb7e8d16c80
  5435 ms  0x498 SECKEY_DestroyPrivateKey()
  5435 ms  0x498 privk:0x7fb7e904b020::7fb7e904b020  80 f3 06 e9                                      ....
  5435 ms  0x498 privk:0x7fb7e904b020::7fb7e904b020  e5 e5 e5 e5                                      ....
  5435 ms  0x498 SECKEY_DestroyPrivateKey()
  5435 ms  0x498 privk:0x7fb7e9049020::7fb7e9049020  a0 f1 06 e9                                      ....
  5435 ms  0x498 privk:0x7fb7e9049020::7fb7e9049020  e5 e5 e5 e5                                      ....
  5435 ms  0x498 PR_Close()
  5435 ms  0x498 fd:0x7fb7f9ccdaf0
  5435 ms     | 0x498 PK11_Encrypt()
  5435 ms     | 0x498 symkey:0x7fb7e8d16f80
  5439 ms  0x498 PK11_Encrypt()
  5439 ms  0x498 symkey:0x7fb7e8d16280
           /* TID 0x4a0 */
  5442 ms  0x4a0 PR_Close()
  5442 ms  0x4a0 fd:0x7fb7e8ecf880
           /* TID 0x498 */
  5445 ms  0x498 SECKEY_DestroyPrivateKey()
  5445 ms  0x498 privk:0x7fb7e904f820::7fb7e904f820  a0 f6 06 e9                                      ....
  5445 ms  0x498 privk:0x7fb7e904f820::7fb7e904f820  e5 e5 e5 e5                                      ....
  5446 ms  0x498 SECKEY_DestroyPrivateKey()
  5446 ms  0x498 privk:0x7fb7e904d820::7fb7e904d820  c0 f4 06 e9                                      ....
  5446 ms  0x498 privk:0x7fb7e904d820::7fb7e904d820  e5 e5 e5 e5                                      ....
  5447 ms  0x498 PR_Close()
  5447 ms  0x498 fd:0x7fb7f9ccdcd0
  5447 ms     | 0x498 PK11_Encrypt()
  5447 ms     | 0x498 symkey:0x7fb7e8d17280
           /* TID 0x4a0 */
  5486 ms  0x4a0 PR_Close()
  5486 ms  0x4a0 fd:0x7fb7e8ecf880
           /* TID 0x498 */
  5488 ms  0x498 SSL_ImportFD()
  5488 ms  0x498 ret:0x7fb7e8ecfd60
  5488 ms  0x498 SSL_AuthCertificateHook()
  5488 ms  0x498 fd:0x7fb7e8ecfd60
  5488 ms  0x498 ret:0x0
  5488 ms  0x498 PR_Connect()
  5488 ms  0x498 fd:0x7fb7e8ecfd60
           /* TID 0x4a0 */
  5490 ms  0x4a0 PR_Close()
  5490 ms  0x4a0 fd:0x7fb7f9ccd040
  5494 ms  0x4a0 PR_Close()
  5494 ms  0x4a0 fd:0x7fb7e8ecf8e0
  5497 ms  0x4a0 PR_Close()
  5497 ms  0x4a0 fd:0x7fb7e8ecfc40
  5521 ms  0x4a0 PR_Close()
  5521 ms  0x4a0 fd:0x7fb7e8ecf8e0
  5524 ms  0x4a0 PR_Close()
  5524 ms  0x4a0 fd:0x7fb7e8ecf8e0
  5527 ms  0x4a0 PR_Close()
  5527 ms  0x4a0 fd:0x7fb7e8ecfdc0
  5529 ms  0x4a0 PR_Close()
  5529 ms  0x4a0 fd:0x7fb7e8ecf7c0
  5532 ms  0x4a0 PR_Close()
  5532 ms  0x4a0 fd:0x7fb7e8ecf550
  5534 ms  0x4a0 PR_Close()
  5534 ms  0x4a0 fd:0x7fb7e8ecf1f0
           /* TID 0x498 */
  5550 ms  0x498 PK11_Encrypt()
  5550 ms  0x498 symkey:0x7fb7e8d16280
  5552 ms  0x498 PK11_Encrypt()
  5552 ms  0x498 symkey:0x7fb7e8d16280
           /* TID 0x4a0 */
  5560 ms  0x4a0 PR_Close()
  5560 ms  0x4a0 fd:0x7fb7e8ecf550
           /* TID 0x498 */
  5561 ms  0x498 PK11_Encrypt()
  5561 ms  0x498 symkey:0x7fb7e8d16280
           /* TID 0x4a0 */
  5561 ms  0x4a0 PR_Close()
  5561 ms  0x4a0 fd:0x7fb7e8ecf760
  5562 ms  0x4a0 PR_Close()
  5562 ms  0x4a0 fd:0x7fb7e8ea3b80
  5570 ms  0x4a0 PR_Close()
  5570 ms  0x4a0 fd:0x7fb7f9ccd130
           /* TID 0x498 */
  5575 ms  0x498 SSL_ImportFD()
  5575 ms  0x498 ret:0x7fb7e8ecf820
  5575 ms  0x498 SSL_AuthCertificateHook()
  5575 ms  0x498 fd:0x7fb7e8ecf820
  5575 ms  0x498 ret:0x0
  5575 ms  0x498 PR_Connect()
  5575 ms  0x498 fd:0x7fb7e8ecf820
           /* TID 0x4a0 */
  5588 ms  0x4a0 PR_Close()
  5588 ms  0x4a0 fd:0x7fb7e8ecf760
           /* TID 0x498 */
  5600 ms  0x498 SECKEY_CreateECPrivateKey()
  5600 ms  0x498 cx:0x7fb7f9c06de8
  5601 ms     | 0x498 EC_ValidatePublicKey()
  5601 ms     | 0x498 ret:0x0
  5601 ms  0x498 ret:0x7fb7e8d59820::7fb7e8d59820  70 f4 06 e9                                      p...
  5601 ms  0x498 SECKEY_CreateECPrivateKey()
  5601 ms  0x498 cx:0x7fb7f9c06de8
  5602 ms     | 0x498 EC_ValidatePublicKey()
  5603 ms     | 0x498 ret:0x0
  5603 ms  0x498 ret:0x7fb7e8d5b820::7fb7e8d5b820  50 f6 06 e9                                      P...
  5630 ms  0x498 PK11_Derive()
  5630 ms  0x498 basekey:0x7fb7e8d17100
  5630 ms     | 0x498 PK11_DeriveWithTemplate()
  5630 ms  0x498 ret:0x7fb7e8d17080
  5630 ms  0x498 PK11_PubDeriveWithKDF()
  5630 ms  0x498 seckey:0x7fb7e8d5b820
  5630 ms     | 0x498 EC_ValidatePublicKey()
  5631 ms     | 0x498 ret:0x0
  5633 ms  0x498 ret:0x7fb7e8d17100
  5633 ms  SECKEY_ECParamsToKeySize()
  5633 ms  0x498 ret:0x100
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d17080
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16e00
  5633 ms  0x498 PK11_Derive()
  5633 ms  0x498 basekey:0x7fb7e8d17100
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16d80
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d16d80
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d17080
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d16d80
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d17100
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d16d80
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16e00
  5633 ms  0x498 PK11_Derive()
  5633 ms  0x498 basekey:0x7fb7e8d16b00
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16a00
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d17100
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16d80
  5633 ms  0x498 PK11_DeriveWithFlags()
  5633 ms  0x498 basekey:0x7fb7e8d17100
  5633 ms     | 0x498 PK11_DeriveWithTemplate()
  5633 ms  0x498 ret:0x7fb7e8d16e00
           /* TID 0x4f6 */
  5638 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5638 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5638 ms  0x498 PK11_DeriveWithFlags()
  5638 ms  0x498 basekey:0x7fb7e8d17100
  5638 ms     | 0x498 PK11_DeriveWithTemplate()
  5638 ms  0x498 ret:0x7fb7e8d16e00
  5638 ms  0x498 SSL_AuthCertificateComplete()
  5638 ms  0x498 fd:0x7fb7e8ecf820
  5638 ms  0x498 err:0x0
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d16a00
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16e00
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d16a00
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16b00
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d16a00
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16700
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d17080
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16680
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d17080
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16400
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d16b00
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16400
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d16b00
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16380
  5638 ms     | 0x498 PK11_DeriveWithFlags()
  5638 ms     | 0x498 basekey:0x7fb7e8d17080
  5638 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5638 ms     | 0x498 ret:0x7fb7e8d16d80
  5638 ms     | 0x498 PK11_Encrypt()
  5638 ms     | 0x498 symkey:0x7fb7e8d16680
  5639 ms     | 0x498 PK11_DeriveWithFlags()
  5639 ms     | 0x498 basekey:0x7fb7e8d16e00
  5639 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5639 ms     | 0x498 ret:0x7fb7e8d16d80
  5639 ms     | 0x498 PK11_DeriveWithFlags()
  5639 ms     | 0x498 basekey:0x7fb7e8d16e00
  5639 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5639 ms     | 0x498 ret:0x7fb7e8d16380
  5639 ms     | 0x498 PK11_DeriveWithFlags()
  5639 ms     | 0x498 basekey:0x7fb7e8d16a00
  5639 ms     |    | 0x498 PK11_DeriveWithTemplate()
  5639 ms     | 0x498 ret:0x7fb7e8d16680
  5639 ms     | 0x498 SECKEY_DestroyPrivateKey()
  5639 ms     | 0x498 privk:0x7fb7e8d5b820::7fb7e8d5b820  50 f6 06 e9                                      P...
  5639 ms     | 0x498 privk:0x7fb7e8d5b820::7fb7e8d5b820  e5 e5 e5 e5                                      ....
  5639 ms     | 0x498 SECKEY_DestroyPrivateKey()
  5639 ms     | 0x498 privk:0x7fb7e8d59820::7fb7e8d59820  70 f4 06 e9                                      p...
  5639 ms     | 0x498 privk:0x7fb7e8d59820::7fb7e8d59820  e5 e5 e5 e5                                      ....
  5639 ms  0x498 PK11_Encrypt()
  5639 ms  0x498 symkey:0x7fb7e8d16d80
  5639 ms  0x498 PK11_Encrypt()
  5639 ms  0x498 symkey:0x7fb7e8d16d80
  5664 ms  0x498 PK11_DeriveWithFlags()
  5664 ms  0x498 basekey:0x7fb7e8d16680
  5664 ms     | 0x498 PK11_DeriveWithTemplate()
  5664 ms  0x498 ret:0x7fb7e8d17100
  5664 ms  0x498 PK11_DeriveWithFlags()
  5664 ms  0x498 basekey:0x7fb7e8d16680
  5664 ms     | 0x498 PK11_DeriveWithTemplate()
  5664 ms  0x498 ret:0x7fb7e8d17100
  5664 ms  0x498 PK11_Encrypt()
  5664 ms  0x498 symkey:0x7fb7e8d16d80
  5668 ms  0x498 PK11_Encrypt()
  5668 ms  0x498 symkey:0x7fb7e8d16280
  5669 ms  0x498 PK11_Encrypt()
  5669 ms  0x498 symkey:0x7fb7e8d16280
  5670 ms  0x498 SECKEY_CreateECPrivateKey()
  5670 ms  0x498 cx:0x7fb7f9c06aa8
  5671 ms     | 0x498 EC_ValidatePublicKey()
  5671 ms     | 0x498 ret:0x0
  5671 ms  0x498 ret:0x7fb7e8d60820::7fb7e8d60820  90 1c c7 f9                                      ....
  5671 ms  0x498 SECKEY_CreateECPrivateKey()
  5671 ms  0x498 cx:0x7fb7f9c06aa8
  5672 ms     | 0x498 EC_ValidatePublicKey()
  5673 ms     | 0x498 ret:0x0
  5673 ms  0x498 ret:0x7fb7e8d62820::7fb7e8d62820  10 1f c7 f9                                      ....
           /* TID 0x4a0 */
  5690 ms  0x4a0 PR_Close()
  5690 ms  0x4a0 fd:0x7fb7e8ea3b80
           /* TID 0x498 */
  5704 ms  0x498 PK11_Encrypt()
  5704 ms  0x498 symkey:0x7fb7e8d16d80
  5707 ms  0x498 PK11_Encrypt()
  5707 ms  0x498 symkey:0x7fb7e8d16d80
  5710 ms  0x498 PK11_Encrypt()
  5710 ms  0x498 symkey:0x7fb7e8d16d80
  5712 ms  0x498 PK11_Encrypt()
  5712 ms  0x498 symkey:0x7fb7e8d16d80
  5714 ms  0x498 PK11_Encrypt()
  5714 ms  0x498 symkey:0x7fb7e8d16d80
  5716 ms  0x498 PK11_Encrypt()
  5716 ms  0x498 symkey:0x7fb7e8d16d80
           /* TID 0x4a0 */
  5717 ms  0x4a0 PR_Close()
  5717 ms  0x4a0 fd:0x7fb7f9ccd550
           /* TID 0x498 */
  5718 ms  0x498 PK11_Encrypt()
  5718 ms  0x498 symkey:0x7fb7e8d16d80
  5719 ms  0x498 PK11_Encrypt()
  5719 ms  0x498 symkey:0x7fb7e8d16d80
  5720 ms  0x498 PK11_Encrypt()
  5720 ms  0x498 symkey:0x7fb7e8d16d80
  5721 ms  0x498 PK11_Encrypt()
  5721 ms  0x498 symkey:0x7fb7e8d16d80
  5722 ms  0x498 PK11_Encrypt()
  5722 ms  0x498 symkey:0x7fb7e8d16d80
           /* TID 0x4a0 */
  5742 ms  0x4a0 PR_Close()
  5742 ms  0x4a0 fd:0x7fb7e8da9250
  5813 ms  0x4a0 PR_Close()
  5813 ms  0x4a0 fd:0x7fb7e8da92e0
  5813 ms  0x4a0 PR_Close()
  5813 ms  0x4a0 fd:0x7fb7e8da9400
  5813 ms  0x4a0 PR_Close()
  5813 ms  0x4a0 fd:0x7fb7e8da94c0
  5838 ms  0x4a0 PR_Close()
  5838 ms  0x4a0 fd:0x7fb7e8da9070
  5838 ms  0x4a0 PR_Close()
  5838 ms  0x4a0 fd:0x7fb7e8da9280
  5838 ms  0x4a0 PR_Close()
  5838 ms  0x4a0 fd:0x7fb7e8da9430
  5838 ms  0x4a0 PR_Close()
  5838 ms  0x4a0 fd:0x7fb7e8da94f0
  5839 ms  0x4a0 PR_Close()
  5839 ms  0x4a0 fd:0x7fb7e8da9070
  5840 ms  0x4a0 PR_Close()
  5840 ms  0x4a0 fd:0x7fb7e8da9070
  5840 ms  0x4a0 PR_Close()
  5840 ms  0x4a0 fd:0x7fb7e8da9070
           /* TID 0x498 */
  5850 ms  0x498 SSL_ImportFD()
  5850 ms  0x498 ret:0x7fb7e8da9280
  5850 ms  0x498 SSL_AuthCertificateHook()
  5850 ms  0x498 fd:0x7fb7e8da9280
  5850 ms  0x498 ret:0x0
  5850 ms  0x498 PR_Connect()
  5850 ms  0x498 fd:0x7fb7e8da9280
  5856 ms  0x498 PK11_DeriveWithFlags()
  5856 ms  0x498 basekey:0x7fb7e8d17100
  5856 ms     | 0x498 PK11_DeriveWithTemplate()
  5856 ms  0x498 ret:0x7fb7e8d17080
  5856 ms  0x498 PK11_Derive()
  5856 ms  0x498 basekey:0x7fb7e8d17080
  5856 ms     | 0x498 PK11_DeriveWithTemplate()
  5856 ms  0x498 ret:0x7fb7e8d16a00
           /* TID 0x4a0 */
  5861 ms  0x4a0 PR_Close()
  5861 ms  0x4a0 fd:0x7fb7e8da90d0
  5884 ms  0x4a0 PR_Close()
  5884 ms  0x4a0 fd:0x7fb7e8da90d0
           /* TID 0x4f6 */
  5884 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5884 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  5884 ms  0x498 SSL_AuthCertificateComplete()
  5884 ms  0x498 fd:0x7fb7e8ecfd60
  5884 ms  0x498 err:0x0
  6041 ms  0x498 SECKEY_DestroyPrivateKey()
  6041 ms  0x498 privk:0x7fb7e8d62820::7fb7e8d62820  10 1f c7 f9                                      ....
  6042 ms  0x498 privk:0x7fb7e8d62820::7fb7e8d62820  e5 e5 e5 e5                                      ....
  6042 ms  0x498 SECKEY_DestroyPrivateKey()
  6042 ms  0x498 privk:0x7fb7e8d60820::7fb7e8d60820  90 1c c7 f9                                      ....
  6042 ms  0x498 privk:0x7fb7e8d60820::7fb7e8d60820  e5 e5 e5 e5                                      ....
  6044 ms  0x498 SECKEY_CreateECPrivateKey()
  6044 ms  0x498 cx:0x7fb7f9c06f88
  6045 ms     | 0x498 EC_ValidatePublicKey()
  6045 ms     | 0x498 ret:0x0
  6045 ms  0x498 ret:0x7fb7e8d60820::7fb7e8d60820  20 89 f3 e8                                       ...
  6045 ms  0x498 SECKEY_CreateECPrivateKey()
  6045 ms  0x498 cx:0x7fb7f9c06f88
  6047 ms     | 0x498 EC_ValidatePublicKey()
  6051 ms     | 0x498 ret:0x0
  6051 ms  0x498 ret:0x7fb7e8d62820::7fb7e8d62820  a0 8b f3 e8                                      ....
  6162 ms  0x498 SSL_ImportFD()
  6162 ms  0x498 ret:0x7fb7e8da9700
  6162 ms  0x498 SSL_AuthCertificateHook()
  6162 ms  0x498 fd:0x7fb7e8da9700
  6162 ms  0x498 ret:0x0
  6163 ms  0x498 PR_Connect()
  6163 ms  0x498 fd:0x7fb7e8da9700
  6243 ms  0x498 PK11_Derive()
  6243 ms  0x498 basekey:0x7fb7e8d16380
  6243 ms     | 0x498 PK11_DeriveWithTemplate()
  6243 ms  0x498 ret:0x7fb7e8d17100
  6246 ms  0x498 SECKEY_DestroyPrivateKey()
  6246 ms  0x498 privk:0x7fb7e8d62820::7fb7e8d62820  a0 8b f3 e8                                      ....
  6246 ms  0x498 privk:0x7fb7e8d62820::7fb7e8d62820  e5 e5 e5 e5                                      ....
  6246 ms  0x498 SECKEY_DestroyPrivateKey()
  6246 ms  0x498 privk:0x7fb7e8d60820::7fb7e8d60820  20 89 f3 e8                                       ...
  6247 ms  0x498 privk:0x7fb7e8d60820::7fb7e8d60820  e5 e5 e5 e5                                      ....
           /* TID 0x4a0 */
  6272 ms  0x4a0 PR_Close()
  6272 ms  0x4a0 fd:0x7fb7e8da9970
           /* TID 0x498 */
  6352 ms  0x498 SECKEY_CreateECPrivateKey()
  6352 ms  0x498 cx:0x7fb7f9c07e28
  6353 ms     | 0x498 EC_ValidatePublicKey()
  6353 ms     | 0x498 ret:0x0
  6353 ms  0x498 ret:0x7fb7e8d60820::7fb7e8d60820  00 8b f3 e8                                      ....
  6353 ms  0x498 SECKEY_CreateECPrivateKey()
  6353 ms  0x498 cx:0x7fb7f9c07e28
  6354 ms     | 0x498 EC_ValidatePublicKey()
  6355 ms     | 0x498 ret:0x0
  6355 ms  0x498 ret:0x7fb7e8d62820::7fb7e8d62820  10 b5 f4 e8                                      ....
           /* TID 0x4a0 */
  6639 ms  0x4a0 PR_Close()
  6639 ms  0x4a0 fd:0x7fb7e8f465b0
           /* TID 0x498 */
  6676 ms  0x498 PK11_Encrypt()
  6676 ms  0x498 symkey:0x7fb7e8d16d80
  6677 ms  0x498 PK11_Encrypt()
  6677 ms  0x498 symkey:0x7fb7e8d16d80
  6677 ms  0x498 PK11_Encrypt()
  6677 ms  0x498 symkey:0x7fb7e8d16d80
  6678 ms  0x498 PK11_Encrypt()
  6678 ms  0x498 symkey:0x7fb7e8d16d80
  6679 ms  0x498 PK11_Encrypt()
  6679 ms  0x498 symkey:0x7fb7e8d16d80
  6679 ms  0x498 PK11_Encrypt()
  6679 ms  0x498 symkey:0x7fb7e8d16d80
  6680 ms  0x498 PK11_Encrypt()
  6680 ms  0x498 symkey:0x7fb7e8d16d80
  6681 ms  0x498 PK11_Encrypt()
  6681 ms  0x498 symkey:0x7fb7e8d16d80
  6681 ms  0x498 PK11_Encrypt()
  6681 ms  0x498 symkey:0x7fb7e8d16d80
  6682 ms  0x498 PK11_Encrypt()
  6682 ms  0x498 symkey:0x7fb7e8d16d80
  6683 ms  0x498 PK11_Encrypt()
  6683 ms  0x498 symkey:0x7fb7e8d16d80
  6683 ms  0x498 PK11_Encrypt()
  6683 ms  0x498 symkey:0x7fb7e8d16d80
  6684 ms  0x498 PK11_Encrypt()
  6684 ms  0x498 symkey:0x7fb7e8d16d80
  6684 ms  0x498 PK11_Encrypt()
  6684 ms  0x498 symkey:0x7fb7e8d16d80
  6685 ms  0x498 PK11_Encrypt()
  6685 ms  0x498 symkey:0x7fb7e8d16d80
  6707 ms  0x498 PK11_Encrypt()
  6707 ms  0x498 symkey:0x7fb7e8d16d80
  6708 ms  0x498 PK11_Encrypt()
  6708 ms  0x498 symkey:0x7fb7e8d16d80
  6708 ms  0x498 PK11_Encrypt()
  6708 ms  0x498 symkey:0x7fb7e8d16d80
  6709 ms  0x498 PK11_Encrypt()
  6709 ms  0x498 symkey:0x7fb7e8d16d80
  6709 ms  0x498 PK11_Encrypt()
  6709 ms  0x498 symkey:0x7fb7e8d16d80
  6710 ms  0x498 PK11_Encrypt()
  6710 ms  0x498 symkey:0x7fb7e8d16d80
  6710 ms  0x498 PK11_Encrypt()
  6710 ms  0x498 symkey:0x7fb7e8d16d80
           /* TID 0x4a0 */
  6712 ms  0x4a0 PR_Close()
  6712 ms  0x4a0 fd:0x7fb7e90fc370
           /* TID 0x498 */
  6714 ms  0x498 PK11_Encrypt()
  6714 ms  0x498 symkey:0x7fb7e8d16d80
  6715 ms  0x498 PK11_Encrypt()
  6715 ms  0x498 symkey:0x7fb7e8d16d80
  6715 ms  0x498 PK11_Encrypt()
  6715 ms  0x498 symkey:0x7fb7e8d16d80
  6715 ms  0x498 PK11_Encrypt()
  6715 ms  0x498 symkey:0x7fb7e8d16280
  6716 ms  0x498 PK11_Encrypt()
  6716 ms  0x498 symkey:0x7fb7e8d16280
  6716 ms  0x498 SSL_ImportFD()
  6716 ms  0x498 ret:0x7fb7f9d8f790
  6716 ms  0x498 SSL_AuthCertificateHook()
  6716 ms  0x498 fd:0x7fb7f9d8f790
  6716 ms  0x498 ret:0x0
  6716 ms  0x498 PR_Connect()
  6716 ms  0x498 fd:0x7fb7f9d8f790
  6717 ms  0x498 SSL_ImportFD()
  6717 ms  0x498 ret:0x7fb7f9d8fc40
  6717 ms  0x498 SSL_AuthCertificateHook()
  6717 ms  0x498 fd:0x7fb7f9d8fc40
  6717 ms  0x498 ret:0x0
  6717 ms  0x498 PR_Connect()
  6717 ms  0x498 fd:0x7fb7f9d8fc40
  6718 ms  0x498 PR_Close()
  6718 ms  0x498 fd:0x7fb7fae8dd60
           /* TID 0x48d */
  6723 ms  0x48d EC_ValidatePublicKey()
  6724 ms  0x48d ret:0x0
  6724 ms  0x48d EC_ValidatePublicKey()
  6726 ms  0x48d ret:0x0
  6726 ms  0x48d EC_ValidatePublicKey()
  6727 ms  0x48d ret:0x0
  6727 ms  0x48d EC_ValidatePublicKey()
  6729 ms  0x48d ret:0x0
  6729 ms  0x48d EC_ValidatePublicKey()
  6730 ms  0x48d ret:0x0
  6730 ms  0x48d EC_ValidatePublicKey()
  6731 ms  0x48d ret:0x0
  6732 ms  0x48d EC_ValidatePublicKey()
  6734 ms  0x48d ret:0x0
  6734 ms  0x48d EC_ValidatePublicKey()
  6737 ms  0x48d ret:0x0
  6737 ms  0x48d EC_ValidatePublicKey()
  6739 ms  0x48d ret:0x0
  6739 ms  0x48d EC_ValidatePublicKey()
  6740 ms  0x48d ret:0x0
           /* TID 0x498 */
  6741 ms  0x498 PK11_DeriveWithFlags()
  6741 ms  0x498 basekey:0x7fb7fbbe8080
  6741 ms     | 0x498 PK11_DeriveWithTemplate()
  6741 ms  0x498 ret:0x7fb7e8d16c00
  6741 ms  0x498 PK11_Derive()
  6741 ms  0x498 basekey:0x7fb7e8d16c00
  6741 ms     | 0x498 PK11_DeriveWithTemplate()
  6741 ms  0x498 ret:0x7fb7e8d16d00
  6744 ms  0x498 PK11_Encrypt()
  6744 ms  0x498 symkey:0x7fb7fd297000
  6744 ms  0x498 PR_Close()
  6744 ms  0x498 fd:0x7fb7e8da9280
  6744 ms  0x498 PR_Close()
  6744 ms  0x498 fd:0x7fb7e8ecfd60
  6744 ms  0x498 PR_Close()
  6744 ms  0x498 fd:0x7fb8030e2f10
  6744 ms     | 0x498 PK11_Encrypt()
  6744 ms     | 0x498 symkey:0x7fb7f9c03900
  6745 ms  0x498 PR_Close()
  6745 ms  0x498 fd:0x7fb8030e2dc0
  6745 ms  0x498 PR_Close()
  6745 ms  0x498 fd:0x7fb8030e2370
  6745 ms     | 0x498 PK11_Encrypt()
  6745 ms     | 0x498 symkey:0x7fb7f9c02a80
  6745 ms  0x498 PR_Close()
  6745 ms  0x498 fd:0x7fb7fa368d60
  6745 ms  0x498 PR_Close()
  6745 ms  0x498 fd:0x7fb7fa30eb80
  6745 ms     | 0x498 PK11_Encrypt()
  6745 ms     | 0x498 symkey:0x7fb7fbbe8180
           /* TID 0x4eb */
  6745 ms  0x4eb PR_Close()
  6745 ms  0x4eb fd:0x7fb7e8da91c0
  6745 ms  0x4eb PR_Close()
  6745 ms  0x4eb fd:0x7fb7e8da9250
           /* TID 0x498 */
  6748 ms  0x498 PR_Close()
  6748 ms  0x498 fd:0x7fb7fc4d3d90
  6748 ms     | 0x498 PK11_Encrypt()
  6748 ms     | 0x498 symkey:0x7fb7fa0d6800
  6748 ms  0x498 PR_Close()
  6748 ms  0x498 fd:0x7fb7fd2926a0
  6748 ms     | 0x498 PK11_Encrypt()
  6748 ms     | 0x498 symkey:0x7fb7fd297000
           /* TID 0x4a0 */
  6752 ms  0x4a0 PR_Close()
  6752 ms  0x4a0 fd:0x7fb7e8f46c70
  6756 ms  0x4a0 PR_Close()
  6756 ms  0x4a0 fd:0x7fb7e8f46610
  6758 ms  0x4a0 PR_Close()
  6758 ms  0x4a0 fd:0x7fb7e8f46610
  6762 ms  0x4a0 PR_Close()
  6762 ms  0x4a0 fd:0x7fb7e8f46610
  6763 ms  0x4a0 PR_Close()
  6763 ms  0x4a0 fd:0x7fb7e8f46610
  6765 ms  0x4a0 PR_Close()
  6765 ms  0x4a0 fd:0x7fb7e8da90a0
  6772 ms  0x4a0 PR_Close()
  6772 ms  0x4a0 fd:0x7fb7e8f46070
  6772 ms  0x4a0 PR_Close()
  6772 ms  0x4a0 fd:0x7fb7f9ccd400
           /* TID 0x498 */
  6773 ms  0x498 SSL_ImportFD()
  6773 ms  0x498 ret:0x7fb7e8f465b0
  6773 ms  0x498 SSL_AuthCertificateHook()
  6773 ms  0x498 fd:0x7fb7e8f465b0
  6773 ms  0x498 ret:0x0
  6773 ms  0x498 PR_Connect()
  6773 ms  0x498 fd:0x7fb7e8f465b0
  6773 ms  0x498 PK11_Encrypt()
  6773 ms  0x498 symkey:0x7fb7e8d16d80
  6773 ms  0x498 PR_Close()
  6773 ms  0x498 fd:0x7fb7e8ecf820
  6773 ms     | 0x498 PK11_Encrypt()
  6773 ms     | 0x498 symkey:0x7fb7e8d16d80
           /* TID 0x4a0 */
  6778 ms  0x4a0 PR_Close()
  6778 ms  0x4a0 fd:0x7fb7e8da90a0
  6781 ms  0x4a0 PR_Close()
  6781 ms  0x4a0 fd:0x7fb7e8da90a0
  6783 ms  0x4a0 PR_Close()
  6783 ms  0x4a0 fd:0x7fb7e8da90a0
  6784 ms  0x4a0 PR_Close()
  6784 ms  0x4a0 fd:0x7fb7e8da90a0
  6785 ms  0x4a0 PR_Close()
  6785 ms  0x4a0 fd:0x7fb7e8da90a0
  6786 ms  0x4a0 PR_Close()
  6786 ms  0x4a0 fd:0x7fb7e8da90a0
           /* TID 0x498 */
  6791 ms  0x498 PK11_Encrypt()
  6791 ms  0x498 symkey:0x7fb7e8d16280
  6792 ms  0x498 PR_Close()
  6792 ms  0x498 fd:0x7fb7e90fc760
  6792 ms     | 0x498 PK11_Encrypt()
  6792 ms     | 0x498 symkey:0x7fb7e8d16280
           /* TID 0x48d */
  6804 ms  0x48d PR_Close()
  6804 ms  0x48d fd:0x7fb7fc4d3bb0
  6804 ms  0x48d PR_Close()
  6804 ms  0x48d fd:0x7fb7e90fcb80
  6805 ms  0x48d PR_Close()
  6805 ms  0x48d fd:0x7fb7f9ccd070
  6805 ms  0x48d PR_Close()
  6805 ms  0x48d fd:0x7fb7e90fcb80
  6806 ms  0x48d PR_Close()
  6806 ms  0x48d fd:0x7fb7f9ccd070
  6806 ms  0x48d PR_Close()
  6806 ms  0x48d fd:0x7fb7e90fcb80
           /* TID 0x501 */
  6808 ms  0x501 PR_Close()
  6808 ms  0x501 fd:0x7fb7e90fcb80
           /* TID 0x48d */
  6848 ms  0x48d PR_Close()
  6848 ms  0x48d fd:0x7fb7f9ccd070
  6857 ms  0x48d PR_Close()
  6857 ms  0x48d fd:0x7fb7f9d8f580
  6858 ms  0x48d PR_Close()
  6858 ms  0x48d fd:0x7fb7f9ccd070
  6858 ms  0x48d PR_Close()
  6858 ms  0x48d fd:0x7fb7f9d8f580
  6868 ms  0x48d PR_Close()
  6868 ms  0x48d fd:0x7fb8051c89a0
  6868 ms  0x48d PR_Close()
  6868 ms  0x48d fd:0x7fb8051c88b0
  6868 ms  0x48d PR_Close()
  6868 ms  0x48d fd:0x7fb8051c8a60
  6870 ms  0x48d PR_Close()
  6870 ms  0x48d fd:0x7fb7f9d8f5b0
  6871 ms  0x48d PR_Close()
  6871 ms  0x48d fd:0x7fb7f9d8f5b0
  6873 ms  0x48d PR_Close()
  6873 ms  0x48d fd:0x7fb7f9ccd070
  6873 ms  0x48d PR_Close()
  6873 ms  0x48d fd:0x7fb7f9d8f640
  6873 ms  0x48d PR_Close()
  6873 ms  0x48d fd:0x7fb7f9ccd070
  6873 ms  0x48d PR_Close()
  6873 ms  0x48d fd:0x7fb7f9d8f640
  6876 ms  0x48d PR_Close()
  6876 ms  0x48d fd:0x7fb7f9d8fa90
  6878 ms  0x48d PR_Close()
  6878 ms  0x48d fd:0x7fb7f9d8fa90
  6879 ms  0x48d PR_Close()
  6879 ms  0x48d fd:0x7fb7f9ccd070
  6879 ms  0x48d PR_Close()
  6879 ms  0x48d fd:0x7fb7f9d8faf0
  6881 ms  0x48d PR_Close()
  6881 ms  0x48d fd:0x7fb7f9ccd070
  6881 ms  0x48d PR_Close()
  6881 ms  0x48d fd:0x7fb7f9d8faf0
  6883 ms  0x48d PR_Close()
  6883 ms  0x48d fd:0x7fb7f9d8fb20
  6885 ms  0x48d PR_Close()
  6885 ms  0x48d fd:0x7fb7f9d8fb20
  6898 ms  0x48d PR_Close()
  6898 ms  0x48d fd:0x7fb7fa0d39d0
  6901 ms  0x48d PR_Close()
  6901 ms  0x48d fd:0x7fb7fa0d39d0
  6903 ms  0x48d PR_Close()
  6903 ms  0x48d fd:0x7fb7fa0d3a00
           /* TID 0x498 */
  6905 ms  0x498 SECKEY_CreateECPrivateKey()
  6905 ms  0x498 cx:0x7fb7f9c08e68
  6905 ms     | 0x498 EC_ValidatePublicKey()
  6905 ms     | 0x498 ret:0x0
  6905 ms  0x498 ret:0x7fb7e8ef3820::7fb7e8ef3820  b0 20 48 fb                                      . H.
  6905 ms  0x498 SECKEY_CreateECPrivateKey()
  6905 ms  0x498 cx:0x7fb7f9c08e68
  6906 ms     | 0x498 EC_ValidatePublicKey()
  6907 ms     | 0x498 ret:0x0
  6907 ms  0x498 ret:0x7fb7e8ef7820::7fb7e8ef7820  20 24 48 fb                                       $H.
           /* TID 0x4a0 */
  6913 ms  0x4a0 PR_Close()
  6913 ms  0x4a0 fd:0x7fb7e8ecfd90
           /* TID 0x498 */
  6914 ms  0x498 SECKEY_CreateECPrivateKey()
  6914 ms  0x498 cx:0x7fb7f9d12e68
  6915 ms     | 0x498 EC_ValidatePublicKey()
  6915 ms     | 0x498 ret:0x0
  6915 ms  0x498 ret:0x7fb7e8ef9820::7fb7e8ef9820  a0 21 c1 f9                                      .!..
  6915 ms  0x498 SECKEY_CreateECPrivateKey()
  6915 ms  0x498 cx:0x7fb7f9d12e68
  6915 ms     | 0x498 EC_ValidatePublicKey()
  6917 ms     | 0x498 ret:0x0
  6917 ms  0x498 ret:0x7fb7e904b020::7fb7e904b020  00 51 c6 f9                                      .Q..
           /* TID 0x4a0 */
  6918 ms  0x4a0 PR_Close()
  6918 ms  0x4a0 fd:0x7fb7f9ccdd90
  6919 ms  0x4a0 PR_Close()
  6919 ms  0x4a0 fd:0x7fb7f9ccd2e0
  6921 ms  0x4a0 PR_Close()
  6921 ms  0x4a0 fd:0x7fb7e8f46700
  6922 ms  0x4a0 PR_Close()
  6922 ms  0x4a0 fd:0x7fb7e8f46700
  6923 ms  0x4a0 PR_Close()
  6923 ms  0x4a0 fd:0x7fb7e8f46700
           /* TID 0x498 */
  6924 ms  0x498 PR_Connect()
  6924 ms  0x498 fd:0x7fb7f9d18190
           /* TID 0x4a0 */
  6925 ms  0x4a0 PR_Close()
  6925 ms  0x4a0 fd:0x7fb7e90fc7f0
  6933 ms  0x4a0 PR_Close()
  6933 ms  0x4a0 fd:0x7fb7e90fc100
  6934 ms  0x4a0 PR_Close()
  6934 ms  0x4a0 fd:0x7fb7e90fc100
  6935 ms  0x4a0 PR_Close()
  6935 ms  0x4a0 fd:0x7fb7e8da9a60
  6937 ms  0x4a0 PR_Close()
  6937 ms  0x4a0 fd:0x7fb7e8da9a60
  6938 ms  0x4a0 PR_Close()
  6938 ms  0x4a0 fd:0x7fb7e8da9a60
           /* TID 0x501 */
  6943 ms  0x501 PR_Close()
  6943 ms  0x501 fd:0x7fb7f9ccd160
  6944 ms  0x501 PR_Close()
  6944 ms  0x501 fd:0x7fb7f9ccd160
           /* TID 0x48d */
  6946 ms  0x48d PR_Close()
  6946 ms  0x48d fd:0x7fb7f9ccd070
  6946 ms  0x48d PR_Close()
  6946 ms  0x48d fd:0x7fb7f9ccd430
           /* TID 0x501 */
  6961 ms  0x501 PR_Close()
  6961 ms  0x501 fd:0x7fb7f9ccd700
           /* TID 0x498 */
  6971 ms  0x498 SECKEY_CreateECPrivateKey()
  6971 ms  0x498 cx:0x7fb7f9c050a8
  6971 ms     | 0x498 EC_ValidatePublicKey()
  6971 ms     | 0x498 ret:0x0
  6971 ms  0x498 ret:0x7fb7e8d70020::7fb7e8d70020  60 10 c7 f9                                      `...
  6971 ms  0x498 SECKEY_CreateECPrivateKey()
  6971 ms  0x498 cx:0x7fb7f9c050a8
  6972 ms     | 0x498 EC_ValidatePublicKey()
  6973 ms     | 0x498 ret:0x0
  6973 ms  0x498 ret:0x7fb7e904e020::7fb7e904e020  90 12 c7 f9                                      ....
  6975 ms  0x498 SSL_ImportFD()
  6975 ms  0x498 ret:0x7fb7fa0d3bb0
  6975 ms  0x498 SSL_AuthCertificateHook()
  6975 ms  0x498 fd:0x7fb7fa0d3bb0
  6975 ms  0x498 ret:0x0
  6975 ms  0x498 PR_Connect()
  6975 ms  0x498 fd:0x7fb7fa0d3bb0
           /* TID 0x501 */
  6994 ms  0x501 PR_Close()
  6994 ms  0x501 fd:0x7fb7e8ea3130
           /* TID 0x498 */
  7002 ms  0x498 PR_Close()
  7002 ms  0x498 fd:0x7fb7e8da9700
  7002 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7002 ms     | 0x498 privk:0x7fb7e8d62820::7fb7e8d62820  10 b5 f4 e8                                      ....
  7002 ms     | 0x498 privk:0x7fb7e8d62820::7fb7e8d62820  e5 e5 e5 e5                                      ....
  7002 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7002 ms     | 0x498 privk:0x7fb7e8d60820::7fb7e8d60820  00 8b f3 e8                                      ....
  7002 ms     | 0x498 privk:0x7fb7e8d60820::7fb7e8d60820  e5 e5 e5 e5                                      ....
  7002 ms  0x498 PR_Close()
  7002 ms  0x498 fd:0x7fb7fa0d3bb0
  7002 ms  0x498 PR_Close()
  7002 ms  0x498 fd:0x7fb7f9d8f790
  7003 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7003 ms     | 0x498 privk:0x7fb7e8ef7820::7fb7e8ef7820  20 24 48 fb                                       $H.
  7003 ms     | 0x498 privk:0x7fb7e8ef7820::7fb7e8ef7820  e5 e5 e5 e5                                      ....
  7003 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7003 ms     | 0x498 privk:0x7fb7e8ef3820::7fb7e8ef3820  b0 20 48 fb                                      . H.
  7003 ms     | 0x498 privk:0x7fb7e8ef3820::7fb7e8ef3820  e5 e5 e5 e5                                      ....
  7003 ms  0x498 PR_Close()
  7003 ms  0x498 fd:0x7fb7f9d8fc40
  7003 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7003 ms     | 0x498 privk:0x7fb7e904b020::7fb7e904b020  00 51 c6 f9                                      .Q..
  7003 ms     | 0x498 privk:0x7fb7e904b020::7fb7e904b020  e5 e5 e5 e5                                      ....
  7003 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7003 ms     | 0x498 privk:0x7fb7e8ef9820::7fb7e8ef9820  a0 21 c1 f9                                      .!..
  7003 ms     | 0x498 privk:0x7fb7e8ef9820::7fb7e8ef9820  e5 e5 e5 e5                                      ....
  7007 ms  0x498 PR_Close()
  7007 ms  0x498 fd:0x7fb7e8f465b0
  7007 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7007 ms     | 0x498 privk:0x7fb7e904e020::7fb7e904e020  90 12 c7 f9                                      ....
  7007 ms     | 0x498 privk:0x7fb7e904e020::7fb7e904e020  e5 e5 e5 e5                                      ....
  7007 ms     | 0x498 SECKEY_DestroyPrivateKey()
  7007 ms     | 0x498 privk:0x7fb7e8d70020::7fb7e8d70020  60 10 c7 f9                                      `...
  7007 ms     | 0x498 privk:0x7fb7e8d70020::7fb7e8d70020  e5 e5 e5 e5                                      ....
           /* TID 0x492 */
  7010 ms  0x492 PR_Close()
  7010 ms  0x492 fd:0x7fb803e2ca60
           /* TID 0x4a0 */
  7013 ms  0x4a0 PR_Close()
  7013 ms  0x4a0 fd:0x7fb7e8da9160
           /* TID 0x4f6 */
  7014 ms  0x4f6 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7014 ms  0x4f6 ret:0x0
           /* TID 0x498 */
  7016 ms  0x498 PR_Close()
  7016 ms  0x498 fd:0x7fb7f9d18190
           /* TID 0x501 */
  7021 ms  0x501 PR_Close()
  7021 ms  0x501 fd:0x7fb7e8da9a60
           /* TID 0x48d */
  7043 ms  0x48d PR_Close()
  7043 ms  0x48d fd:0x7fb7f9ccd070
  7043 ms  0x48d PR_Close()
  7043 ms  0x48d fd:0x7fb7e8da9880
           /* TID 0x492 */
  7043 ms  0x492 PR_Close()
  7043 ms  0x492 fd:0x7fb800331820
           /* TID 0x498 */
  7044 ms  0x498 PR_Close()
  7044 ms  0x498 fd:0x7fb7fa30e310
           /* TID 0x4eb */
  7045 ms  0x4eb PR_Close()
  7045 ms  0x4eb fd:0x7fb7e8ea30a0
  7045 ms  0x4eb PR_Close()
  7045 ms  0x4eb fd:0x7fb7e8ea30a0
  7045 ms  0x4eb PR_Close()
  7045 ms  0x4eb fd:0x7fb7e8ea30a0
  7045 ms  0x4eb PR_Close()
  7045 ms  0x4eb fd:0x7fb7e8ea33d0
           /* TID 0x501 */
  7045 ms  0x501 PR_Close()
  7045 ms  0x501 fd:0x7fb7e8ea33d0
           /* TID 0x4a0 */
  7048 ms  0x4a0 PR_Close()
  7048 ms  0x4a0 fd:0x7fb7e90fc370
  7048 ms  0x4a0 PR_Close()
  7048 ms  0x4a0 fd:0x7fb7e90fc430
           /* TID 0x492 */
  7055 ms  0x492 PR_Close()
  7055 ms  0x492 fd:0x7fb803e2ce50
           /* TID 0x48d */
  7057 ms  0x48d PR_Close()
  7057 ms  0x48d fd:0x7fb7e8ea3040
  7057 ms  0x48d PR_Close()
  7057 ms  0x48d fd:0x7fb7e90fcf70
           /* TID 0x501 */
  7059 ms  0x501 PR_Close()
  7059 ms  0x501 fd:0x7fb7e90fc880
  7061 ms  0x501 PR_Close()
  7061 ms  0x501 fd:0x7fb7e90fc880
  7091 ms  0x501 PR_Close()
  7091 ms  0x501 fd:0x7fb7e8da9190
  7092 ms  0x501 PR_Close()
  7092 ms  0x501 fd:0x7fb7e8da9190
  7096 ms  0x501 PR_Close()
  7096 ms  0x501 fd:0x7fb7e8ecf7c0
  7097 ms  0x501 PR_Close()
  7097 ms  0x501 fd:0x7fb7e8ecfa60
  7106 ms  0x501 PR_Close()
  7106 ms  0x501 fd:0x7fb7e8f464f0
  7111 ms  0x501 PR_Close()
  7111 ms  0x501 fd:0x7fb7e90fcc10
  7117 ms  0x501 PR_Close()
  7117 ms  0x501 fd:0x7fb7f9c1b760
  7126 ms  0x501 PR_Close()
  7126 ms  0x501 fd:0x7fb7f9c1ba90
  7128 ms  0x501 PR_Close()
  7128 ms  0x501 fd:0x7fb7f9c1ba90
           /* TID 0x48d */
  7283 ms  0x48d PR_Close()
  7283 ms  0x48d fd:0x7fb7e8da9100
  7283 ms  0x48d PR_Close()
  7283 ms  0x48d fd:0x7fb7e8da9100
  7290 ms  0x48d PR_Close()
  7290 ms  0x48d fd:0x7fb8224da130
  7290 ms  0x48d PR_Close()
  7290 ms  0x48d fd:0x7fb8224da190
Process terminated
