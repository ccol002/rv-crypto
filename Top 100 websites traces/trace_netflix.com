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
           /* TID 0x7330 */
   104 ms  0x7330 PR_Close()
   104 ms  0x7330 fd:0x7f4b4d1c67c0
           /* TID 0x7328 */
   295 ms  0x7328 SSL_ImportFD()
   296 ms  0x7328 ret:0x7f4b521ac310
   296 ms  0x7328 SSL_AuthCertificateHook()
   296 ms  0x7328 fd:0x7f4b521ac310
   296 ms  0x7328 ret:0x0
   296 ms  0x7328 PR_Connect()
   296 ms  0x7328 fd:0x7f4b521ac310
   514 ms  0x7328 SECKEY_CreateECPrivateKey()
   514 ms  0x7328 cx:0x7f4b4d1c9ae8
   516 ms     | 0x7328 EC_ValidatePublicKey()
   516 ms     | 0x7328 ret:0x0
   516 ms  0x7328 ret:0x7f4b4d341820::7f4b4d341820  b0 ba 3b 4d                                      ..;M
   516 ms  0x7328 SECKEY_CreateECPrivateKey()
   516 ms  0x7328 cx:0x7f4b4d1c9ae8
   517 ms     | 0x7328 EC_ValidatePublicKey()
   521 ms     | 0x7328 ret:0x0
   521 ms  0x7328 ret:0x7f4b4d343820::7f4b4d343820  90 bc 3b 4d                                      ..;M
           /* TID 0x7391 */
   638 ms  0x7391 PR_Close()
   638 ms  0x7391 fd:0x7f4b521ac220
   641 ms  0x7391 PR_Close()
   641 ms  0x7391 fd:0x7f4b521ac220
           /* TID 0x7328 */
   745 ms  SECKEY_ECParamsToKeySize()
   745 ms  0x7328 ret:0x100
   745 ms  0x7328 SECKEY_CreateECPrivateKey()
   745 ms  0x7328 cx:0x7f4b4d1c9ae8
   747 ms     | 0x7328 EC_ValidatePublicKey()
   750 ms     | 0x7328 ret:0x0
   750 ms  0x7328 ret:0x7f4b4d34c820::7f4b4d34c820  f0 f6 3e 4d                                      ..>M
   751 ms  0x7328 PK11_PubDeriveWithKDF()
   751 ms  0x7328 seckey:0x7f4b4d34c820
   751 ms     | 0x7328 EC_ValidatePublicKey()
   755 ms     | 0x7328 ret:0x0
   759 ms  0x7328 ret:0x7f4b4edbcc00
   759 ms  0x7328 PK11_DeriveWithFlags()
   759 ms  0x7328 basekey:0x7f4b4edbcc00
   759 ms     | 0x7328 PK11_DeriveWithTemplate()
   759 ms  0x7328 ret:0x7f4b4d3db580
   759 ms  0x7328 PK11_Derive()
   759 ms  0x7328 basekey:0x7f4b4d3db580
   759 ms     | 0x7328 PK11_DeriveWithTemplate()
   759 ms  0x7328 ret:0x7f4b4d3db680
   759 ms  0x7328 SECKEY_DestroyPrivateKey()
   759 ms  0x7328 privk:0x7f4b4d34c820::7f4b4d34c820  f0 f6 3e 4d                                      ..>M
   759 ms  0x7328 privk:0x7f4b4d34c820::7f4b4d34c820  e5 e5 e5 e5                                      ....
   759 ms  0x7328 PK11_Encrypt()
   759 ms  0x7328 symkey:0x7f4b4d3db800
   760 ms  0x7328 PR_Connect()
   760 ms  0x7328 fd:0x7f4b521acd30
           /* TID 0x7391 */
   775 ms  0x7391 PR_Close()
   775 ms  0x7391 fd:0x7f4b521accd0
           /* TID 0x7330 */
   812 ms  0x7330 PR_Close()
   812 ms  0x7330 fd:0x7f4b521acc10
           /* TID 0x7384 */
   812 ms  0x7384 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   813 ms  0x7384 ret:0x0
           /* TID 0x7328 */
   813 ms  0x7328 SSL_AuthCertificateComplete()
   813 ms  0x7328 fd:0x7f4b521ac310
   813 ms  0x7328 err:0x0
   813 ms  0x7328 PK11_Encrypt()
   813 ms  0x7328 symkey:0x7f4b4d3db800
   978 ms  0x7328 SECKEY_DestroyPrivateKey()
   978 ms  0x7328 privk:0x7f4b4d343820::7f4b4d343820  90 bc 3b 4d                                      ..;M
   978 ms  0x7328 privk:0x7f4b4d343820::7f4b4d343820  e5 e5 e5 e5                                      ....
   978 ms  0x7328 SECKEY_DestroyPrivateKey()
   978 ms  0x7328 privk:0x7f4b4d341820::7f4b4d341820  b0 ba 3b 4d                                      ..;M
   978 ms  0x7328 privk:0x7f4b4d341820::7f4b4d341820  e5 e5 e5 e5                                      ....
  1200 ms  0x7328 SSL_ImportFD()
  1200 ms  0x7328 ret:0x7f4b521acf70
  1200 ms  0x7328 SSL_AuthCertificateHook()
  1200 ms  0x7328 fd:0x7f4b521acf70
  1200 ms  0x7328 ret:0x0
  1200 ms  0x7328 PR_Connect()
  1200 ms  0x7328 fd:0x7f4b521acf70
  1226 ms  0x7328 SECKEY_CreateECPrivateKey()
  1226 ms  0x7328 cx:0x7f4b4d3eb588
  1227 ms     | 0x7328 EC_ValidatePublicKey()
  1227 ms     | 0x7328 ret:0x0
  1227 ms  0x7328 ret:0x7f4b4d343020::7f4b4d343020  40 bc 3b 4d                                      @.;M
  1227 ms  0x7328 SECKEY_CreateECPrivateKey()
  1227 ms  0x7328 cx:0x7f4b4d3eb588
  1229 ms     | 0x7328 EC_ValidatePublicKey()
  1233 ms     | 0x7328 ret:0x0
  1233 ms  0x7328 ret:0x7f4b4d349020::7f4b4d349020  c0 f4 3e 4d                                      ..>M
           /* TID 0x7384 */
  1284 ms  0x7384 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1284 ms  0x7384 ret:0x0
           /* TID 0x7328 */
  1284 ms  SECKEY_ECParamsToKeySize()
  1284 ms  0x7328 ret:0x100
  1284 ms  0x7328 SECKEY_CreateECPrivateKey()
  1284 ms  0x7328 cx:0x7f4b4d3eb588
  1285 ms     | 0x7328 EC_ValidatePublicKey()
  1286 ms     | 0x7328 ret:0x0
  1286 ms  0x7328 ret:0x7f4b4d34c820::7f4b4d34c820  90 f7 3e 4d                                      ..>M
  1287 ms  0x7328 PK11_PubDeriveWithKDF()
  1287 ms  0x7328 seckey:0x7f4b4d34c820
  1287 ms     | 0x7328 EC_ValidatePublicKey()
  1288 ms     | 0x7328 ret:0x0
  1290 ms  0x7328 ret:0x7f4b4edbcc00
  1290 ms  0x7328 PK11_DeriveWithFlags()
  1290 ms  0x7328 basekey:0x7f4b4edbcc00
  1290 ms     | 0x7328 PK11_DeriveWithTemplate()
  1290 ms  0x7328 ret:0x7f4b4d3dc380
  1290 ms  0x7328 PK11_Derive()
  1290 ms  0x7328 basekey:0x7f4b4d3dc380
  1290 ms     | 0x7328 PK11_DeriveWithTemplate()
  1290 ms  0x7328 ret:0x7f4b4d3dc400
  1290 ms  0x7328 SECKEY_DestroyPrivateKey()
  1290 ms  0x7328 privk:0x7f4b4d34c820::7f4b4d34c820  90 f7 3e 4d                                      ..>M
  1290 ms  0x7328 privk:0x7f4b4d34c820::7f4b4d34c820  e5 e5 e5 e5                                      ....
  1290 ms  0x7328 PK11_Encrypt()
  1290 ms  0x7328 symkey:0x7f4b4d3dc580
  1290 ms  0x7328 SSL_AuthCertificateComplete()
  1290 ms  0x7328 fd:0x7f4b521acf70
  1290 ms  0x7328 err:0x0
  1290 ms  0x7328 PK11_Encrypt()
  1290 ms  0x7328 symkey:0x7f4b4d3dc580
  1343 ms  0x7328 SECKEY_DestroyPrivateKey()
  1343 ms  0x7328 privk:0x7f4b4d349020::7f4b4d349020  c0 f4 3e 4d                                      ..>M
  1344 ms  0x7328 privk:0x7f4b4d349020::7f4b4d349020  e5 e5 e5 e5                                      ....
  1344 ms  0x7328 SECKEY_DestroyPrivateKey()
  1344 ms  0x7328 privk:0x7f4b4d343020::7f4b4d343020  40 bc 3b 4d                                      @.;M
  1344 ms  0x7328 privk:0x7f4b4d343020::7f4b4d343020  e5 e5 e5 e5                                      ....
  1348 ms  0x7328 PK11_Encrypt()
  1348 ms  0x7328 symkey:0x7f4b4d3dc580
  1378 ms  0x7328 PK11_Encrypt()
  1378 ms  0x7328 symkey:0x7f4b4d3dc580
  1408 ms  0x7328 PK11_Encrypt()
  1408 ms  0x7328 symkey:0x7f4b4d3dc580
  1438 ms  0x7328 PK11_Encrypt()
  1438 ms  0x7328 symkey:0x7f4b4d3dc580
  1553 ms  0x7328 PK11_Encrypt()
  1553 ms  0x7328 symkey:0x7f4b4d3dc580
  1584 ms  0x7328 PK11_Encrypt()
  1584 ms  0x7328 symkey:0x7f4b4d3dc580
  1614 ms  0x7328 PK11_Encrypt()
  1614 ms  0x7328 symkey:0x7f4b4d3dc580
           /* TID 0x737d */
  1642 ms  0x737d PR_Close()
  1642 ms  0x737d fd:0x7f4b4d3d0220
  1643 ms  0x737d PR_Close()
  1643 ms  0x737d fd:0x7f4b4d3d0280
  1643 ms  0x737d PR_Close()
  1643 ms  0x737d fd:0x7f4b4d3d0220
  1643 ms  0x737d PR_Close()
  1643 ms  0x737d fd:0x7f4b4d3d0280
  1643 ms  0x737d PR_Close()
  1643 ms  0x737d fd:0x7f4b4d3d0220
  1643 ms  0x737d PR_Close()
  1643 ms  0x737d fd:0x7f4b4d3d0280
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0220
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0280
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0220
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0280
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0220
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0280
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0220
  1644 ms  0x737d PR_Close()
  1644 ms  0x737d fd:0x7f4b4d3d0280
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0220
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0280
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0220
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0280
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0220
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0280
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0220
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0280
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0220
  1645 ms  0x737d PR_Close()
  1645 ms  0x737d fd:0x7f4b4d3d0280
  1646 ms  0x737d PR_Close()
  1646 ms  0x737d fd:0x7f4b4d3d0220
  1646 ms  0x737d PR_Close()
  1646 ms  0x737d fd:0x7f4b4d3d0280
  1646 ms  0x737d PR_Close()
  1646 ms  0x737d fd:0x7f4b4d3d0220
  1646 ms  0x737d PR_Close()
  1646 ms  0x737d fd:0x7f4b4d3d0280
  1649 ms  0x737d PR_Close()
  1649 ms  0x737d fd:0x7f4b4d3d0220
  1649 ms  0x737d PR_Close()
  1649 ms  0x737d fd:0x7f4b4d3d0220
  1652 ms  0x737d PR_Close()
  1652 ms  0x737d fd:0x7f4b4d3d0220
  1652 ms  0x737d PR_Close()
  1652 ms  0x737d fd:0x7f4b4d3d0250
  1654 ms  0x737d PR_Close()
  1654 ms  0x737d fd:0x7f4b4d3d0250
  1654 ms  0x737d PR_Close()
  1654 ms  0x737d fd:0x7f4b4d3d0250
  1655 ms  0x737d PR_Close()
  1655 ms  0x737d fd:0x7f4b4d3d0250
  1655 ms  0x737d PR_Close()
  1655 ms  0x737d fd:0x7f4b4d3d0250
  1685 ms  0x737d PR_Close()
  1685 ms  0x737d fd:0x7f4b4d3d0250
  1686 ms  0x737d PR_Close()
  1686 ms  0x737d fd:0x7f4b4d3d0250
  1694 ms  0x737d PR_Close()
  1694 ms  0x737d fd:0x7f4b4d3d0250
  1694 ms  0x737d PR_Close()
  1694 ms  0x737d fd:0x7f4b4d3d0250
  1701 ms  0x737d PR_Close()
  1701 ms  0x737d fd:0x7f4b4d3d0250
  1701 ms  0x737d PR_Close()
  1701 ms  0x737d fd:0x7f4b4d3d0250
  1703 ms  0x737d PR_Close()
  1703 ms  0x737d fd:0x7f4b4d3d0250
  1703 ms  0x737d PR_Close()
  1703 ms  0x737d fd:0x7f4b4d3d0250
           /* TID 0x737a */
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1703 ms  0x737a PR_Close()
  1703 ms  0x737a fd:0x7f4b4d3d0250
  1704 ms  0x737a PR_Close()
  1704 ms  0x737a fd:0x7f4b4d3d0250
  1704 ms  0x737a PR_Close()
  1704 ms  0x737a fd:0x7f4b4d3d0250
           /* TID 0x7391 */
  2206 ms  0x7391 PR_Close()
  2206 ms  0x7391 fd:0x7f4b4d3d05b0
  2209 ms  0x7391 PR_Close()
  2209 ms  0x7391 fd:0x7f4b4d3d05b0
  2850 ms  0x7391 PR_Close()
  2850 ms  0x7391 fd:0x7f4b4d3d05b0
           /* TID 0x7330 */
  4188 ms  0x7330 PR_Close()
  4188 ms  0x7330 fd:0x7f4b4d3d05b0
  4188 ms  0x7330 PR_Close()
  4188 ms  0x7330 fd:0x7f4b4d3d0700
  4188 ms  0x7330 PR_Close()
  4188 ms  0x7330 fd:0x7f4b4d3d0760
           /* TID 0x7328 */
  4446 ms  0x7328 SSL_ImportFD()
  4446 ms  0x7328 ret:0x7f4b4e89f460
  4446 ms  0x7328 SSL_AuthCertificateHook()
  4446 ms  0x7328 fd:0x7f4b4e89f460
  4446 ms  0x7328 ret:0x0
  4446 ms  0x7328 PR_Connect()
  4446 ms  0x7328 fd:0x7f4b4e89f460
  4504 ms  0x7328 SECKEY_CreateECPrivateKey()
  4504 ms  0x7328 cx:0x7f4b4d3eb8c8
  4505 ms     | 0x7328 EC_ValidatePublicKey()
  4505 ms     | 0x7328 ret:0x0
  4505 ms  0x7328 ret:0x7f4b3c29b820::7f4b3c29b820  00 26 2e 3c                                      .&.<
  4505 ms  0x7328 SECKEY_CreateECPrivateKey()
  4505 ms  0x7328 cx:0x7f4b4d3eb8c8
  4507 ms     | 0x7328 EC_ValidatePublicKey()
  4512 ms     | 0x7328 ret:0x0
  4512 ms  0x7328 ret:0x7f4b3c29d820::7f4b3c29d820  70 24 2e 3c                                      p$.<
  4573 ms  SECKEY_ECParamsToKeySize()
  4573 ms  0x7328 ret:0x100
  4573 ms  0x7328 SECKEY_CreateECPrivateKey()
  4573 ms  0x7328 cx:0x7f4b4d3eb8c8
  4573 ms     | 0x7328 EC_ValidatePublicKey()
  4575 ms     | 0x7328 ret:0x0
  4575 ms  0x7328 ret:0x7f4b3c2a6020::7f4b3c2a6020  d0 2d 2e 3c                                      .-.<
  4575 ms  0x7328 PK11_PubDeriveWithKDF()
  4575 ms  0x7328 seckey:0x7f4b3c2a6020
  4575 ms     | 0x7328 EC_ValidatePublicKey()
  4576 ms     | 0x7328 ret:0x0
  4578 ms  0x7328 ret:0x7f4b4edbcc00
  4578 ms  0x7328 PK11_DeriveWithFlags()
  4578 ms  0x7328 basekey:0x7f4b4edbcc00
  4578 ms     | 0x7328 PK11_DeriveWithTemplate()
  4578 ms  0x7328 ret:0x7f4b3c2b9380
  4578 ms  0x7328 PK11_Derive()
  4578 ms  0x7328 basekey:0x7f4b3c2b9380
  4578 ms     | 0x7328 PK11_DeriveWithTemplate()
  4578 ms  0x7328 ret:0x7f4b3c2b9400
  4578 ms  0x7328 SECKEY_DestroyPrivateKey()
  4578 ms  0x7328 privk:0x7f4b3c2a6020::7f4b3c2a6020  d0 2d 2e 3c                                      .-.<
  4578 ms  0x7328 privk:0x7f4b3c2a6020::7f4b3c2a6020  e5 e5 e5 e5                                      ....
  4578 ms  0x7328 PK11_Encrypt()
  4578 ms  0x7328 symkey:0x7f4b3c2b9580
           /* TID 0x7384 */
  4605 ms  0x7384 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4605 ms  0x7384 ret:0x0
           /* TID 0x7330 */
  4605 ms  0x7330 PR_Close()
  4605 ms  0x7330 fd:0x7f4b4e89f700
           /* TID 0x7328 */
  4605 ms  0x7328 SSL_AuthCertificateComplete()
  4605 ms  0x7328 fd:0x7f4b4e89f460
  4605 ms  0x7328 err:0x0
  4606 ms  0x7328 PK11_Encrypt()
  4606 ms  0x7328 symkey:0x7f4b3c2b9580
  4636 ms  0x7328 SECKEY_DestroyPrivateKey()
  4636 ms  0x7328 privk:0x7f4b3c29d820::7f4b3c29d820  70 24 2e 3c                                      p$.<
  4637 ms  0x7328 privk:0x7f4b3c29d820::7f4b3c29d820  e5 e5 e5 e5                                      ....
  4637 ms  0x7328 SECKEY_DestroyPrivateKey()
  4637 ms  0x7328 privk:0x7f4b3c29b820::7f4b3c29b820  00 26 2e 3c                                      .&.<
  4637 ms  0x7328 privk:0x7f4b3c29b820::7f4b3c29b820  e5 e5 e5 e5                                      ....
           /* TID 0x733f */
  4837 ms  0x733f PR_Close()
  4837 ms  0x733f fd:0x7f4b4e89f9a0
           /* TID 0x7328 */
  4843 ms  0x7328 PK11_Encrypt()
  4843 ms  0x7328 symkey:0x7f4b3c2b9580
           /* TID 0x733f */
  5515 ms  0x733f PR_Close()
  5515 ms  0x733f fd:0x7f4b3c2633a0
           /* TID 0x7328 */
  5586 ms  0x7328 PK11_Encrypt()
  5586 ms  0x7328 symkey:0x7f4b3c2b9580
  5665 ms  0x7328 PK11_Encrypt()
  5665 ms  0x7328 symkey:0x7f4b3c2b9580
  5666 ms  0x7328 SSL_ImportFD()
  5666 ms  0x7328 ret:0x7f4b4e2a4c70
  5666 ms  0x7328 SSL_AuthCertificateHook()
  5666 ms  0x7328 fd:0x7f4b4e2a4c70
  5666 ms  0x7328 ret:0x0
  5666 ms  0x7328 PR_Connect()
  5666 ms  0x7328 fd:0x7f4b4e2a4c70
  5725 ms  0x7328 SECKEY_CreateECPrivateKey()
  5725 ms  0x7328 cx:0x7f4b4d3ebda8
  5727 ms     | 0x7328 EC_ValidatePublicKey()
  5727 ms     | 0x7328 ret:0x0
  5727 ms  0x7328 ret:0x7f4b3bf92020::7f4b3bf92020  f0 26 06 3c                                      .&.<
  5727 ms  0x7328 SECKEY_CreateECPrivateKey()
  5727 ms  0x7328 cx:0x7f4b4d3ebda8
  5729 ms     | 0x7328 EC_ValidatePublicKey()
  5734 ms     | 0x7328 ret:0x0
  5734 ms  0x7328 ret:0x7f4b3bf94020::7f4b3bf94020  d0 23 06 3c                                      .#.<
  5793 ms  0x7328 PK11_Derive()
  5793 ms  0x7328 basekey:0x7f4b3bfe2080
  5793 ms     | 0x7328 PK11_DeriveWithTemplate()
  5793 ms  0x7328 ret:0x7f4b4edbcc00
  5793 ms  0x7328 PK11_Encrypt()
  5793 ms  0x7328 symkey:0x7f4b3bfe2800
  5794 ms  0x7328 SECKEY_DestroyPrivateKey()
  5794 ms  0x7328 privk:0x7f4b3bf94020::7f4b3bf94020  d0 23 06 3c                                      .#.<
  5794 ms  0x7328 privk:0x7f4b3bf94020::7f4b3bf94020  e5 e5 e5 e5                                      ....
  5794 ms  0x7328 SECKEY_DestroyPrivateKey()
  5794 ms  0x7328 privk:0x7f4b3bf92020::7f4b3bf92020  f0 26 06 3c                                      .&.<
  5795 ms  0x7328 privk:0x7f4b3bf92020::7f4b3bf92020  e5 e5 e5 e5                                      ....
  5795 ms  0x7328 PK11_Encrypt()
  5795 ms  0x7328 symkey:0x7f4b3bfe2800
  5802 ms  0x7328 SSL_ImportFD()
  5802 ms  0x7328 ret:0x7f4b4e2a4c10
  5802 ms  0x7328 SSL_AuthCertificateHook()
  5802 ms  0x7328 fd:0x7f4b4e2a4c10
  5802 ms  0x7328 ret:0x0
  5802 ms  0x7328 PR_Connect()
  5802 ms  0x7328 fd:0x7f4b4e2a4c10
  5803 ms  0x7328 SSL_ImportFD()
  5803 ms  0x7328 ret:0x7f4b3c1a9bb0
  5803 ms  0x7328 SSL_AuthCertificateHook()
  5803 ms  0x7328 fd:0x7f4b3c1a9bb0
  5803 ms  0x7328 ret:0x0
  5803 ms  0x7328 PR_Connect()
  5803 ms  0x7328 fd:0x7f4b3c1a9bb0
  5803 ms  0x7328 SSL_ImportFD()
  5803 ms  0x7328 ret:0x7f4b4e2a4100
  5803 ms  0x7328 SSL_AuthCertificateHook()
  5803 ms  0x7328 fd:0x7f4b4e2a4100
  5803 ms  0x7328 ret:0x0
  5804 ms  0x7328 PR_Connect()
  5804 ms  0x7328 fd:0x7f4b4e2a4100
  5841 ms  0x7328 SECKEY_CreateECPrivateKey()
  5841 ms  0x7328 cx:0x7f4b4d3ec288
  5843 ms     | 0x7328 EC_ValidatePublicKey()
  5843 ms     | 0x7328 ret:0x0
  5845 ms  0x7328 ret:0x7f4b3bf91820::7f4b3bf91820  10 2a 06 3c                                      .*.<
  5848 ms  0x7328 SECKEY_CreateECPrivateKey()
  5848 ms  0x7328 cx:0x7f4b4d3ec288
  5849 ms     | 0x7328 EC_ValidatePublicKey()
  5853 ms     | 0x7328 ret:0x0
  5853 ms  0x7328 ret:0x7f4b3bf93820::7f4b3bf93820  30 28 06 3c                                      0(.<
  5855 ms  0x7328 SECKEY_CreateECPrivateKey()
  5855 ms  0x7328 cx:0x7f4b4d3ec0e8
  5857 ms     | 0x7328 EC_ValidatePublicKey()
  5859 ms     | 0x7328 ret:0x0
  5859 ms  0x7328 ret:0x7f4b3bf97020::7f4b3bf97020  00 2b 06 3c                                      .+.<
  5859 ms  0x7328 SECKEY_CreateECPrivateKey()
  5859 ms  0x7328 cx:0x7f4b4d3ec0e8
  5860 ms     | 0x7328 EC_ValidatePublicKey()
  5864 ms     | 0x7328 ret:0x0
  5864 ms  0x7328 ret:0x7f4b3bf99020::7f4b3bf99020  30 2d 06 3c                                      0-.<
  5865 ms  0x7328 SECKEY_CreateECPrivateKey()
  5865 ms  0x7328 cx:0x7f4b4d3ebf48
  5866 ms     | 0x7328 EC_ValidatePublicKey()
  5866 ms     | 0x7328 ret:0x0
  5866 ms  0x7328 ret:0x7f4b3bf9b820::7f4b3bf9b820  70 2e 06 3c                                      p..<
  5867 ms  0x7328 SECKEY_CreateECPrivateKey()
  5867 ms  0x7328 cx:0x7f4b4d3ebf48
  5868 ms     | 0x7328 EC_ValidatePublicKey()
  5870 ms     | 0x7328 ret:0x0
  5871 ms  0x7328 ret:0x7f4b3c2ab020::7f4b3c2ab020  30 ad 5a 50                                      0.ZP
  5895 ms  SECKEY_ECParamsToKeySize()
  5895 ms  0x7328 ret:0x100
  5895 ms  0x7328 SECKEY_CreateECPrivateKey()
  5895 ms  0x7328 cx:0x7f4b4d3ec288
  5896 ms     | 0x7328 EC_ValidatePublicKey()
  5901 ms     | 0x7328 ret:0x0
  5901 ms  0x7328 ret:0x7f4b3bf34020::7f4b3bf34020  00 d6 f2 3b                                      ...;
  5901 ms  0x7328 PK11_PubDeriveWithKDF()
  5901 ms  0x7328 seckey:0x7f4b3bf34020
  5901 ms     | 0x7328 EC_ValidatePublicKey()
  5908 ms     | 0x7328 ret:0x0
  5912 ms  0x7328 ret:0x7f4b3bfe3080
  5912 ms  0x7328 PK11_DeriveWithFlags()
  5912 ms  0x7328 basekey:0x7f4b3bfe3080
  5912 ms     | 0x7328 PK11_DeriveWithTemplate()
  5912 ms  0x7328 ret:0x7f4b3bfe3100
  5912 ms  0x7328 PK11_Derive()
  5912 ms  0x7328 basekey:0x7f4b3bfe3100
  5912 ms     | 0x7328 PK11_DeriveWithTemplate()
  5912 ms  0x7328 ret:0x7f4b3bfe3180
  5912 ms  0x7328 SECKEY_DestroyPrivateKey()
  5912 ms  0x7328 privk:0x7f4b3bf34020::7f4b3bf34020  00 d6 f2 3b                                      ...;
  5912 ms  0x7328 privk:0x7f4b3bf34020::7f4b3bf34020  e5 e5 e5 e5                                      ....
  5912 ms  0x7328 PK11_Encrypt()
  5912 ms  0x7328 symkey:0x7f4b3bfe3300
  5913 ms  SECKEY_ECParamsToKeySize()
  5913 ms  0x7328 ret:0x100
  5913 ms  0x7328 SECKEY_CreateECPrivateKey()
  5913 ms  0x7328 cx:0x7f4b4d3ec0e8
  5915 ms     | 0x7328 EC_ValidatePublicKey()
  5917 ms     | 0x7328 ret:0x0
  5917 ms  0x7328 ret:0x7f4b3bf36820::7f4b3bf36820  f0 d6 f2 3b                                      ...;
  5917 ms  0x7328 PK11_PubDeriveWithKDF()
  5917 ms  0x7328 seckey:0x7f4b3bf36820
  5917 ms     | 0x7328 EC_ValidatePublicKey()
  5920 ms     | 0x7328 ret:0x0
  5922 ms  0x7328 ret:0x7f4b3bfe3080
  5922 ms  0x7328 PK11_DeriveWithFlags()
  5922 ms  0x7328 basekey:0x7f4b3bfe3080
  5922 ms     | 0x7328 PK11_DeriveWithTemplate()
  5922 ms  0x7328 ret:0x7f4b3bfe3400
  5922 ms  0x7328 PK11_Derive()
  5922 ms  0x7328 basekey:0x7f4b3bfe3400
  5922 ms     | 0x7328 PK11_DeriveWithTemplate()
  5922 ms  0x7328 ret:0x7f4b3bfe3480
  5922 ms  0x7328 SECKEY_DestroyPrivateKey()
  5922 ms  0x7328 privk:0x7f4b3bf36820::7f4b3bf36820  f0 d6 f2 3b                                      ...;
  5922 ms  0x7328 privk:0x7f4b3bf36820::7f4b3bf36820  e5 e5 e5 e5                                      ....
  5922 ms  0x7328 PK11_Encrypt()
  5922 ms  0x7328 symkey:0x7f4b3bfe3600
  5924 ms  SECKEY_ECParamsToKeySize()
  5924 ms  0x7328 ret:0x100
  5924 ms  0x7328 SECKEY_CreateECPrivateKey()
  5924 ms  0x7328 cx:0x7f4b4d3ebf48
  5925 ms     | 0x7328 EC_ValidatePublicKey()
  5927 ms     | 0x7328 ret:0x0
  5927 ms  0x7328 ret:0x7f4b3bf3b020::7f4b3bf3b020  00 db f2 3b                                      ...;
  5927 ms  0x7328 PK11_PubDeriveWithKDF()
  5927 ms  0x7328 seckey:0x7f4b3bf3b020
  5927 ms     | 0x7328 EC_ValidatePublicKey()
  5929 ms     | 0x7328 ret:0x0
  5930 ms  0x7328 ret:0x7f4b3bfe3080
  5930 ms  0x7328 PK11_DeriveWithFlags()
  5930 ms  0x7328 basekey:0x7f4b3bfe3080
  5930 ms     | 0x7328 PK11_DeriveWithTemplate()
  5930 ms  0x7328 ret:0x7f4b3bfe3900
  5930 ms  0x7328 PK11_Derive()
  5930 ms  0x7328 basekey:0x7f4b3bfe3900
  5930 ms     | 0x7328 PK11_DeriveWithTemplate()
  5930 ms  0x7328 ret:0x7f4b3bfe3980
  5930 ms  0x7328 SECKEY_DestroyPrivateKey()
  5930 ms  0x7328 privk:0x7f4b3bf3b020::7f4b3bf3b020  00 db f2 3b                                      ...;
  5931 ms  0x7328 privk:0x7f4b3bf3b020::7f4b3bf3b020  e5 e5 e5 e5                                      ....
  5931 ms  0x7328 PK11_Encrypt()
  5931 ms  0x7328 symkey:0x7f4b3bfe3b00
  5932 ms  0x7328 PR_Connect()
  5932 ms  0x7328 fd:0x7f4b3bf514c0
  5932 ms  0x7328 PR_Connect()
  5932 ms  0x7328 fd:0x7f4b3bf513d0
           /* TID 0x7384 */
  5939 ms  0x7384 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5940 ms  0x7384 ret:0x0
           /* TID 0x7330 */
  5940 ms  0x7330 PR_Close()
  5940 ms  0x7330 fd:0x7f4b3bf51250
           /* TID 0x7328 */
  5940 ms  0x7328 SSL_AuthCertificateComplete()
  5940 ms  0x7328 fd:0x7f4b4e2a4100
  5940 ms  0x7328 err:0x0
  5940 ms  0x7328 PK11_Encrypt()
  5940 ms  0x7328 symkey:0x7f4b3bfe3300
  5949 ms  0x7328 SECKEY_DestroyPrivateKey()
  5949 ms  0x7328 privk:0x7f4b3bf93820::7f4b3bf93820  30 28 06 3c                                      0(.<
  5949 ms  0x7328 privk:0x7f4b3bf93820::7f4b3bf93820  e5 e5 e5 e5                                      ....
  5949 ms  0x7328 SECKEY_DestroyPrivateKey()
  5949 ms  0x7328 privk:0x7f4b3bf91820::7f4b3bf91820  10 2a 06 3c                                      .*.<
  5950 ms  0x7328 privk:0x7f4b3bf91820::7f4b3bf91820  e5 e5 e5 e5                                      ....
           /* TID 0x7330 */
  5967 ms  0x7330 PR_Close()
  5967 ms  0x7330 fd:0x7f4b3bf51220
           /* TID 0x73c3 */
  5968 ms  0x73c3 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5968 ms  0x73c3 ret:0x0
           /* TID 0x7328 */
  5968 ms  0x7328 SSL_AuthCertificateComplete()
  5968 ms  0x7328 fd:0x7f4b3c1a9bb0
  5968 ms  0x7328 err:0x0
  5968 ms     | 0x7328 SECKEY_DestroyPrivateKey()
  5968 ms     | 0x7328 privk:0x7f4b3bf99020::7f4b3bf99020  30 2d 06 3c                                      0-.<
  5969 ms     | 0x7328 privk:0x7f4b3bf99020::7f4b3bf99020  e5 e5 e5 e5                                      ....
  5969 ms     | 0x7328 SECKEY_DestroyPrivateKey()
  5969 ms     | 0x7328 privk:0x7f4b3bf97020::7f4b3bf97020  00 2b 06 3c                                      .+.<
  5969 ms     | 0x7328 privk:0x7f4b3bf97020::7f4b3bf97020  e5 e5 e5 e5                                      ....
  5970 ms  0x7328 PK11_Encrypt()
  5970 ms  0x7328 symkey:0x7f4b3bfe3600
           /* TID 0x7330 */
  5985 ms  0x7330 PR_Close()
  5985 ms  0x7330 fd:0x7f4b3bf51370
           /* TID 0x73c4 */
  5986 ms  0x73c4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5986 ms  0x73c4 ret:0x0
           /* TID 0x7328 */
  5986 ms  0x7328 SSL_AuthCertificateComplete()
  5986 ms  0x7328 fd:0x7f4b4e2a4c10
  5986 ms  0x7328 err:0x0
  5987 ms     | 0x7328 SECKEY_DestroyPrivateKey()
  5987 ms     | 0x7328 privk:0x7f4b3c2ab020::7f4b3c2ab020  30 ad 5a 50                                      0.ZP
  5987 ms     | 0x7328 privk:0x7f4b3c2ab020::7f4b3c2ab020  e5 e5 e5 e5                                      ....
  5987 ms     | 0x7328 SECKEY_DestroyPrivateKey()
  5987 ms     | 0x7328 privk:0x7f4b3bf9b820::7f4b3bf9b820  70 2e 06 3c                                      p..<
  5987 ms     | 0x7328 privk:0x7f4b3bf9b820::7f4b3bf9b820  e5 e5 e5 e5                                      ....
           /* TID 0x7330 */
  5991 ms  0x7330 PR_Close()
  5991 ms  0x7330 fd:0x7f4b3bf51580
           /* TID 0x7328 */
  5993 ms  0x7328 PK11_Encrypt()
  5993 ms  0x7328 symkey:0x7f4b3bfe3b00
           /* TID 0x7330 */
  6010 ms  0x7330 PR_Close()
  6010 ms  0x7330 fd:0x7f4b3bf51400
           /* TID 0x7328 */
  6031 ms  0x7328 SSL_ImportFD()
  6032 ms  0x7328 ret:0x7f4b3bf51850
  6032 ms  0x7328 SSL_AuthCertificateHook()
  6032 ms  0x7328 fd:0x7f4b3bf51850
  6032 ms  0x7328 ret:0x0
  6032 ms  0x7328 PR_Connect()
  6032 ms  0x7328 fd:0x7f4b3bf51850
  6032 ms  0x7328 SSL_ImportFD()
  6032 ms  0x7328 ret:0x7f4b3bf51430
  6032 ms  0x7328 SSL_AuthCertificateHook()
  6032 ms  0x7328 fd:0x7f4b3bf51430
  6032 ms  0x7328 ret:0x0
  6032 ms  0x7328 PR_Connect()
  6032 ms  0x7328 fd:0x7f4b3bf51430
  6033 ms  0x7328 SSL_ImportFD()
  6033 ms  0x7328 ret:0x7f4b3bf518b0
  6033 ms  0x7328 SSL_AuthCertificateHook()
  6033 ms  0x7328 fd:0x7f4b3bf518b0
  6033 ms  0x7328 ret:0x0
  6033 ms  0x7328 PR_Connect()
  6033 ms  0x7328 fd:0x7f4b3bf518b0
  6033 ms  0x7328 SSL_ImportFD()
  6033 ms  0x7328 ret:0x7f4b3bf516a0
  6033 ms  0x7328 SSL_AuthCertificateHook()
  6033 ms  0x7328 fd:0x7f4b3bf516a0
  6033 ms  0x7328 ret:0x0
  6033 ms  0x7328 PR_Connect()
  6033 ms  0x7328 fd:0x7f4b3bf516a0
  6034 ms  0x7328 SSL_ImportFD()
  6034 ms  0x7328 ret:0x7f4b3bf51730
  6034 ms  0x7328 SSL_AuthCertificateHook()
  6034 ms  0x7328 fd:0x7f4b3bf51730
  6034 ms  0x7328 ret:0x0
  6034 ms  0x7328 PR_Connect()
  6034 ms  0x7328 fd:0x7f4b3bf51730
           /* TID 0x7330 */
  6037 ms  0x7330 PR_Close()
  6037 ms  0x7330 fd:0x7f4b3bf51400
           /* TID 0x7328 */
  6054 ms  0x7328 SSL_ImportFD()
  6054 ms  0x7328 ret:0x7f4b3bf51fd0
  6054 ms  0x7328 SSL_AuthCertificateHook()
  6054 ms  0x7328 fd:0x7f4b3bf51fd0
  6054 ms  0x7328 ret:0x0
  6054 ms  0x7328 PR_Connect()
  6054 ms  0x7328 fd:0x7f4b3bf51fd0
  6066 ms  0x7328 SSL_ImportFD()
  6066 ms  0x7328 ret:0x7f4b4e2a4f10
  6066 ms  0x7328 SSL_AuthCertificateHook()
  6066 ms  0x7328 fd:0x7f4b4e2a4f10
  6066 ms  0x7328 ret:0x0
  6066 ms  0x7328 PR_Connect()
  6066 ms  0x7328 fd:0x7f4b4e2a4f10
  6067 ms  0x7328 SSL_ImportFD()
  6067 ms  0x7328 ret:0x7f4b3bf25190
  6067 ms  0x7328 SSL_AuthCertificateHook()
  6067 ms  0x7328 fd:0x7f4b3bf25190
  6067 ms  0x7328 ret:0x0
  6067 ms  0x7328 PR_Connect()
  6067 ms  0x7328 fd:0x7f4b3bf25190
  6068 ms  0x7328 SECKEY_CreateECPrivateKey()
  6068 ms  0x7328 cx:0x7f4b4d3ec908
  6069 ms     | 0x7328 EC_ValidatePublicKey()
  6069 ms     | 0x7328 ret:0x0
  6069 ms  0x7328 ret:0x7f4b3bf3a820::7f4b3bf3a820  20 de f2 3b                                       ..;
  6069 ms  0x7328 SECKEY_CreateECPrivateKey()
  6069 ms  0x7328 cx:0x7f4b4d3ec908
  6070 ms     | 0x7328 EC_ValidatePublicKey()
  6071 ms     | 0x7328 ret:0x0
  6071 ms  0x7328 ret:0x7f4b3bf3d020::7f4b3bf3d020  10 ea f9 3b                                      ...;
  6075 ms  0x7328 SECKEY_CreateECPrivateKey()
  6075 ms  0x7328 cx:0x7f4b4d3ecf88
  6076 ms     | 0x7328 EC_ValidatePublicKey()
  6076 ms     | 0x7328 ret:0x0
  6076 ms  0x7328 ret:0x7f4b3bf3f820::7f4b3bf3f820  b0 ea f9 3b                                      ...;
  6076 ms  0x7328 SECKEY_CreateECPrivateKey()
  6076 ms  0x7328 cx:0x7f4b4d3ecf88
  6077 ms     | 0x7328 EC_ValidatePublicKey()
  6078 ms     | 0x7328 ret:0x0
  6078 ms  0x7328 ret:0x7f4b3bf41820::7f4b3bf41820  50 ab 02 3c                                      P..<
  6078 ms  0x7328 SECKEY_CreateECPrivateKey()
  6078 ms  0x7328 cx:0x7f4b4d3ecde8
  6079 ms     | 0x7328 EC_ValidatePublicKey()
  6079 ms     | 0x7328 ret:0x0
  6079 ms  0x7328 ret:0x7f4b3bf44020::7f4b3bf44020  e0 22 06 3c                                      .".<
  6079 ms  0x7328 SECKEY_CreateECPrivateKey()
  6079 ms  0x7328 cx:0x7f4b4d3ecde8
  6079 ms     | 0x7328 EC_ValidatePublicKey()
  6081 ms     | 0x7328 ret:0x0
  6081 ms  0x7328 ret:0x7f4b3bf46020::7f4b3bf46020  90 27 06 3c                                      .'.<
  6086 ms  0x7328 SECKEY_CreateECPrivateKey()
  6086 ms  0x7328 cx:0x7f4b4d3ecc48
  6087 ms     | 0x7328 EC_ValidatePublicKey()
  6087 ms     | 0x7328 ret:0x0
  6087 ms  0x7328 ret:0x7f4b3bf48820::7f4b3bf48820  d0 28 06 3c                                      .(.<
  6087 ms  0x7328 SECKEY_CreateECPrivateKey()
  6087 ms  0x7328 cx:0x7f4b4d3ecc48
  6088 ms     | 0x7328 EC_ValidatePublicKey()
  6089 ms     | 0x7328 ret:0x0
  6089 ms  0x7328 ret:0x7f4b3bf4a820::7f4b3bf4a820  b0 2a 06 3c                                      .*.<
  6096 ms  0x7328 SECKEY_CreateECPrivateKey()
  6096 ms  0x7328 cx:0x7f4b4d3ecaa8
  6097 ms     | 0x7328 EC_ValidatePublicKey()
  6097 ms     | 0x7328 ret:0x0
  6097 ms  0x7328 ret:0x7f4b3bf4d820::7f4b3bf4d820  90 2c 06 3c                                      .,.<
  6097 ms  0x7328 SECKEY_CreateECPrivateKey()
  6097 ms  0x7328 cx:0x7f4b4d3ecaa8
  6097 ms     | 0x7328 EC_ValidatePublicKey()
  6099 ms     | 0x7328 ret:0x0
  6099 ms  0x7328 ret:0x7f4b3bf8f820::7f4b3bf8f820  70 2e 06 3c                                      p..<
  6100 ms  0x7328 SECKEY_CreateECPrivateKey()
  6100 ms  0x7328 cx:0x7f4b4d3ed128
  6100 ms     | 0x7328 EC_ValidatePublicKey()
  6100 ms     | 0x7328 ret:0x0
  6100 ms  0x7328 ret:0x7f4b3bf93020::7f4b3bf93020  b0 2f 06 3c                                      ./.<
  6100 ms  0x7328 SECKEY_CreateECPrivateKey()
  6100 ms  0x7328 cx:0x7f4b4d3ed128
  6101 ms     | 0x7328 EC_ValidatePublicKey()
  6102 ms     | 0x7328 ret:0x0
  6102 ms  0x7328 ret:0x7f4b3bf96820::7f4b3bf96820  f0 a1 0f 3c                                      ...<
  6106 ms  0x7328 SSL_ImportFD()
  6106 ms  0x7328 ret:0x7f4b3bf25700
  6106 ms  0x7328 SSL_AuthCertificateHook()
  6106 ms  0x7328 fd:0x7f4b3bf25700
  6106 ms  0x7328 ret:0x0
  6106 ms  0x7328 PR_Connect()
  6106 ms  0x7328 fd:0x7f4b3bf25700
  6107 ms  0x7328 SECKEY_CreateECPrivateKey()
  6107 ms  0x7328 cx:0x7f4b4d3ed2c8
  6107 ms     | 0x7328 EC_ValidatePublicKey()
  6107 ms     | 0x7328 ret:0x0
  6107 ms  0x7328 ret:0x7f4b3bf99020::7f4b3bf99020  d0 a3 0f 3c                                      ...<
  6107 ms  0x7328 SECKEY_CreateECPrivateKey()
  6107 ms  0x7328 cx:0x7f4b4d3ed2c8
  6108 ms     | 0x7328 EC_ValidatePublicKey()
  6109 ms     | 0x7328 ret:0x0
  6109 ms  0x7328 ret:0x7f4b3bf9b020::7f4b3bf9b020  b0 a5 0f 3c                                      ...<
  6110 ms  0x7328 SECKEY_CreateECPrivateKey()
  6110 ms  0x7328 cx:0x7f4b4d3ed468
  6110 ms     | 0x7328 EC_ValidatePublicKey()
  6110 ms     | 0x7328 ret:0x0
  6110 ms  0x7328 ret:0x7f4b3c2ab020::7f4b3c2ab020  f0 a6 0f 3c                                      ...<
  6110 ms  0x7328 SECKEY_CreateECPrivateKey()
  6110 ms  0x7328 cx:0x7f4b4d3ed468
  6111 ms     | 0x7328 EC_ValidatePublicKey()
  6112 ms     | 0x7328 ret:0x0
  6112 ms  0x7328 ret:0x7f4b4ed1d820::7f4b4ed1d820  d0 a8 0f 3c                                      ...<
  6113 ms  SECKEY_ECParamsToKeySize()
  6113 ms  0x7328 ret:0x100
  6113 ms  0x7328 SECKEY_CreateECPrivateKey()
  6113 ms  0x7328 cx:0x7f4b4d3ec908
  6114 ms     | 0x7328 EC_ValidatePublicKey()
  6115 ms     | 0x7328 ret:0x0
  6115 ms  0x7328 ret:0x7f4b3be17820::7f4b3be17820  a0 ab 0f 3c                                      ...<
  6115 ms  0x7328 PK11_PubDeriveWithKDF()
  6115 ms  0x7328 seckey:0x7f4b3be17820
  6115 ms     | 0x7328 EC_ValidatePublicKey()
  6126 ms     | 0x7328 ret:0x0
  6127 ms  0x7328 ret:0x7f4b3bfe3080
  6127 ms  0x7328 PK11_DeriveWithFlags()
  6127 ms  0x7328 basekey:0x7f4b3bfe3080
  6127 ms     | 0x7328 PK11_DeriveWithTemplate()
  6127 ms  0x7328 ret:0x7f4b3c0aa900
  6127 ms  0x7328 PK11_Derive()
  6127 ms  0x7328 basekey:0x7f4b3c0aa900
  6127 ms     | 0x7328 PK11_DeriveWithTemplate()
  6127 ms  0x7328 ret:0x7f4b3c0aa980
  6127 ms  0x7328 SECKEY_DestroyPrivateKey()
  6127 ms  0x7328 privk:0x7f4b3be17820::7f4b3be17820  a0 ab 0f 3c                                      ...<
  6131 ms  0x7328 privk:0x7f4b3be17820::7f4b3be17820  e5 e5 e5 e5                                      ....
  6131 ms  0x7328 PK11_Encrypt()
  6131 ms  0x7328 symkey:0x7f4b3c0aab00
  6131 ms  0x7328 SSL_AuthCertificateComplete()
  6131 ms  0x7328 fd:0x7f4b3bf51850
  6131 ms  0x7328 err:0x0
  6132 ms  SECKEY_ECParamsToKeySize()
  6132 ms  0x7328 ret:0x100
  6132 ms  0x7328 SECKEY_CreateECPrivateKey()
  6132 ms  0x7328 cx:0x7f4b4d3ecf88
  6133 ms     | 0x7328 EC_ValidatePublicKey()
  6134 ms     | 0x7328 ret:0x0
  6134 ms  0x7328 ret:0x7f4b3be18820::7f4b3be18820  20 ae 0f 3c                                       ..<
  6134 ms  0x7328 PK11_PubDeriveWithKDF()
  6134 ms  0x7328 seckey:0x7f4b3be18820
  6134 ms     | 0x7328 EC_ValidatePublicKey()
  6143 ms     | 0x7328 ret:0x0
  6144 ms  0x7328 ret:0x7f4b3bfe3080
  6144 ms  0x7328 PK11_DeriveWithFlags()
  6144 ms  0x7328 basekey:0x7f4b3bfe3080
  6144 ms     | 0x7328 PK11_DeriveWithTemplate()
  6145 ms  0x7328 ret:0x7f4b3c0aac80
  6145 ms  0x7328 PK11_Derive()
  6145 ms  0x7328 basekey:0x7f4b3c0aac80
  6145 ms     | 0x7328 PK11_DeriveWithTemplate()
  6145 ms  0x7328 ret:0x7f4b3c0aad00
  6145 ms  0x7328 SECKEY_DestroyPrivateKey()
  6145 ms  0x7328 privk:0x7f4b3be18820::7f4b3be18820  20 ae 0f 3c                                       ..<
  6145 ms  0x7328 privk:0x7f4b3be18820::7f4b3be18820  e5 e5 e5 e5                                      ....
  6145 ms  0x7328 PK11_Encrypt()
  6145 ms  0x7328 symkey:0x7f4b3c0aae80
  6146 ms  SECKEY_ECParamsToKeySize()
  6146 ms  0x7328 ret:0x100
  6146 ms  0x7328 SECKEY_CreateECPrivateKey()
  6146 ms  0x7328 cx:0x7f4b4d3ecde8
  6146 ms     | 0x7328 EC_ValidatePublicKey()
  6148 ms     | 0x7328 ret:0x0
  6148 ms  0x7328 ret:0x7f4b3be19820::7f4b3be19820  c0 ae 0f 3c                                      ...<
  6148 ms  0x7328 PK11_PubDeriveWithKDF()
  6148 ms  0x7328 seckey:0x7f4b3be19820
  6148 ms     | 0x7328 EC_ValidatePublicKey()
  6149 ms     | 0x7328 ret:0x0
  6152 ms  0x7328 ret:0x7f4b3bfe3080
  6152 ms  0x7328 PK11_DeriveWithFlags()
  6152 ms  0x7328 basekey:0x7f4b3bfe3080
  6152 ms     | 0x7328 PK11_DeriveWithTemplate()
  6152 ms  0x7328 ret:0x7f4b3c0ab000
  6152 ms  0x7328 PK11_Derive()
  6152 ms  0x7328 basekey:0x7f4b3c0ab000
  6152 ms     | 0x7328 PK11_DeriveWithTemplate()
  6152 ms  0x7328 ret:0x7f4b3c0ab180
  6152 ms  0x7328 SECKEY_DestroyPrivateKey()
  6152 ms  0x7328 privk:0x7f4b3be19820::7f4b3be19820  c0 ae 0f 3c                                      ...<
  6152 ms  0x7328 privk:0x7f4b3be19820::7f4b3be19820  e5 e5 e5 e5                                      ....
  6152 ms  0x7328 PK11_Encrypt()
  6152 ms  0x7328 symkey:0x7f4b3c0ab300
  6154 ms  SECKEY_ECParamsToKeySize()
  6154 ms  0x7328 ret:0x100
  6154 ms  0x7328 SECKEY_CreateECPrivateKey()
  6154 ms  0x7328 cx:0x7f4b4d3ecc48
  6154 ms     | 0x7328 EC_ValidatePublicKey()
  6156 ms     | 0x7328 ret:0x0
  6156 ms  0x7328 ret:0x7f4b3be1b020::7f4b3be1b020  10 25 2e 3c                                      .%.<
  6156 ms  0x7328 PK11_PubDeriveWithKDF()
  6156 ms  0x7328 seckey:0x7f4b3be1b020
  6156 ms     | 0x7328 EC_ValidatePublicKey()
  6157 ms     | 0x7328 ret:0x0
  6159 ms  0x7328 ret:0x7f4b3bfe3080
  6159 ms  0x7328 PK11_DeriveWithFlags()
  6159 ms  0x7328 basekey:0x7f4b3bfe3080
  6159 ms     | 0x7328 PK11_DeriveWithTemplate()
  6159 ms  0x7328 ret:0x7f4b3c0ab500
  6159 ms  0x7328 PK11_Derive()
  6159 ms  0x7328 basekey:0x7f4b3c0ab500
  6159 ms     | 0x7328 PK11_DeriveWithTemplate()
  6159 ms  0x7328 ret:0x7f4b3c0ab580
  6159 ms  0x7328 SECKEY_DestroyPrivateKey()
  6159 ms  0x7328 privk:0x7f4b3be1b020::7f4b3be1b020  10 25 2e 3c                                      .%.<
  6159 ms  0x7328 privk:0x7f4b3be1b020::7f4b3be1b020  e5 e5 e5 e5                                      ....
  6159 ms  0x7328 PK11_Encrypt()
  6159 ms  0x7328 symkey:0x7f4b3c0ab700
  6159 ms  0x7328 PK11_Encrypt()
  6159 ms  0x7328 symkey:0x7f4b3c0aab00
  6160 ms  0x7328 PK11_Encrypt()
  6160 ms  0x7328 symkey:0x7f4b3c0aab00
  6160 ms  0x7328 SSL_AuthCertificateComplete()
  6160 ms  0x7328 fd:0x7f4b3bf51730
  6160 ms  0x7328 err:0x0
  6160 ms  0x7328 SSL_AuthCertificateComplete()
  6160 ms  0x7328 fd:0x7f4b3bf516a0
  6160 ms  0x7328 err:0x0
  6160 ms  0x7328 SSL_AuthCertificateComplete()
  6160 ms  0x7328 fd:0x7f4b3bf518b0
  6160 ms  0x7328 err:0x0
  6160 ms  0x7328 PK11_Encrypt()
  6160 ms  0x7328 symkey:0x7f4b3c0aae80
  6160 ms  0x7328 PK11_Encrypt()
  6160 ms  0x7328 symkey:0x7f4b3c0ab300
  6161 ms  0x7328 PK11_Encrypt()
  6161 ms  0x7328 symkey:0x7f4b3c0ab700
  6161 ms  SECKEY_ECParamsToKeySize()
  6161 ms  0x7328 ret:0x100
  6161 ms  0x7328 SECKEY_CreateECPrivateKey()
  6161 ms  0x7328 cx:0x7f4b4d3ecaa8
  6162 ms     | 0x7328 EC_ValidatePublicKey()
  6163 ms     | 0x7328 ret:0x0
  6163 ms  0x7328 ret:0x7f4b3be20820::7f4b3be20820  10 d5 3f 5c                                      ..?\
  6163 ms  0x7328 PK11_PubDeriveWithKDF()
  6163 ms  0x7328 seckey:0x7f4b3be20820
  6164 ms     | 0x7328 EC_ValidatePublicKey()
  6165 ms     | 0x7328 ret:0x0
  6166 ms  0x7328 ret:0x7f4b3bfe3080
  6166 ms  0x7328 PK11_DeriveWithFlags()
  6166 ms  0x7328 basekey:0x7f4b3bfe3080
  6166 ms     | 0x7328 PK11_DeriveWithTemplate()
  6166 ms  0x7328 ret:0x7f4b3c0aba00
  6166 ms  0x7328 PK11_Derive()
  6166 ms  0x7328 basekey:0x7f4b3c0aba00
  6166 ms     | 0x7328 PK11_DeriveWithTemplate()
  6167 ms  0x7328 ret:0x7f4b3c0aba80
  6167 ms  0x7328 SECKEY_DestroyPrivateKey()
  6167 ms  0x7328 privk:0x7f4b3be20820::7f4b3be20820  10 d5 3f 5c                                      ..?\
  6167 ms  0x7328 privk:0x7f4b3be20820::7f4b3be20820  e5 e5 e5 e5                                      ....
  6167 ms  0x7328 PK11_Encrypt()
  6167 ms  0x7328 symkey:0x7f4b3c0abc00
  6169 ms  SECKEY_ECParamsToKeySize()
  6169 ms  0x7328 ret:0x100
  6169 ms  0x7328 SECKEY_CreateECPrivateKey()
  6169 ms  0x7328 cx:0x7f4b4d3ed128
  6170 ms     | 0x7328 EC_ValidatePublicKey()
  6171 ms     | 0x7328 ret:0x0
  6171 ms  0x7328 ret:0x7f4b3be21820::7f4b3be21820  50 db 3f 5c                                      P.?\
  6171 ms  0x7328 PK11_PubDeriveWithKDF()
  6171 ms  0x7328 seckey:0x7f4b3be21820
  6171 ms     | 0x7328 EC_ValidatePublicKey()
  6173 ms     | 0x7328 ret:0x0
  6174 ms  0x7328 ret:0x7f4b3bfe3080
  6174 ms  0x7328 PK11_DeriveWithFlags()
  6174 ms  0x7328 basekey:0x7f4b3bfe3080
  6174 ms     | 0x7328 PK11_DeriveWithTemplate()
  6174 ms  0x7328 ret:0x7f4b3c0abd80
  6174 ms  0x7328 PK11_Derive()
  6174 ms  0x7328 basekey:0x7f4b3c0abd80
  6174 ms     | 0x7328 PK11_DeriveWithTemplate()
  6174 ms  0x7328 ret:0x7f4b3c0abe00
  6174 ms  0x7328 SECKEY_DestroyPrivateKey()
  6174 ms  0x7328 privk:0x7f4b3be21820::7f4b3be21820  50 db 3f 5c                                      P.?\
  6174 ms  0x7328 privk:0x7f4b3be21820::7f4b3be21820  e5 e5 e5 e5                                      ....
  6175 ms  0x7328 PK11_Encrypt()
  6175 ms  0x7328 symkey:0x7f4b3c0abf80
  6175 ms  SECKEY_ECParamsToKeySize()
  6175 ms  0x7328 ret:0x100
  6175 ms  0x7328 SECKEY_CreateECPrivateKey()
  6175 ms  0x7328 cx:0x7f4b4d3ed2c8
  6176 ms     | 0x7328 EC_ValidatePublicKey()
  6177 ms     | 0x7328 ret:0x0
  6177 ms  0x7328 ret:0x7f4b3be22820::7f4b3be22820  80 dd 3f 5c                                      ..?\
  6177 ms  0x7328 PK11_PubDeriveWithKDF()
  6177 ms  0x7328 seckey:0x7f4b3be22820
  6177 ms     | 0x7328 EC_ValidatePublicKey()
  6179 ms     | 0x7328 ret:0x0
  6180 ms  0x7328 ret:0x7f4b3bfe3080
  6180 ms  0x7328 PK11_DeriveWithFlags()
  6180 ms  0x7328 basekey:0x7f4b3bfe3080
  6180 ms     | 0x7328 PK11_DeriveWithTemplate()
  6180 ms  0x7328 ret:0x7f4b3c2b9800
  6180 ms  0x7328 PK11_Derive()
  6180 ms  0x7328 basekey:0x7f4b3c2b9800
  6180 ms     | 0x7328 PK11_DeriveWithTemplate()
  6180 ms  0x7328 ret:0x7f4b3c2b9880
  6180 ms  0x7328 SECKEY_DestroyPrivateKey()
  6180 ms  0x7328 privk:0x7f4b3be22820::7f4b3be22820  80 dd 3f 5c                                      ..?\
  6180 ms  0x7328 privk:0x7f4b3be22820::7f4b3be22820  e5 e5 e5 e5                                      ....
  6181 ms  0x7328 PK11_Encrypt()
  6181 ms  0x7328 symkey:0x7f4b3bede100
  6181 ms  SECKEY_ECParamsToKeySize()
  6181 ms  0x7328 ret:0x100
  6181 ms  0x7328 SECKEY_CreateECPrivateKey()
  6181 ms  0x7328 cx:0x7f4b4d3ed468
  6182 ms     | 0x7328 EC_ValidatePublicKey()
  6183 ms     | 0x7328 ret:0x0
  6183 ms  0x7328 ret:0x7f4b3be23020::7f4b3be23020  70 de 3f 5c                                      p.?\
  6184 ms  0x7328 PK11_PubDeriveWithKDF()
  6184 ms  0x7328 seckey:0x7f4b3be23020
  6184 ms     | 0x7328 EC_ValidatePublicKey()
  6186 ms     | 0x7328 ret:0x0
  6187 ms  0x7328 ret:0x7f4b3bfe3080
  6187 ms  0x7328 PK11_DeriveWithFlags()
  6187 ms  0x7328 basekey:0x7f4b3bfe3080
  6187 ms     | 0x7328 PK11_DeriveWithTemplate()
  6187 ms  0x7328 ret:0x7f4b3bede280
  6187 ms  0x7328 PK11_Derive()
  6187 ms  0x7328 basekey:0x7f4b3bede280
  6187 ms     | 0x7328 PK11_DeriveWithTemplate()
  6187 ms  0x7328 ret:0x7f4b3bede300
  6187 ms  0x7328 SECKEY_DestroyPrivateKey()
  6187 ms  0x7328 privk:0x7f4b3be23020::7f4b3be23020  70 de 3f 5c                                      p.?\
  6187 ms  0x7328 privk:0x7f4b3be23020::7f4b3be23020  e5 e5 e5 e5                                      ....
  6187 ms  0x7328 PK11_Encrypt()
  6187 ms  0x7328 symkey:0x7f4b3bede480
  6188 ms  0x7328 SECKEY_DestroyPrivateKey()
  6188 ms  0x7328 privk:0x7f4b3bf3d020::7f4b3bf3d020  10 ea f9 3b                                      ...;
  6188 ms  0x7328 privk:0x7f4b3bf3d020::7f4b3bf3d020  e5 e5 e5 e5                                      ....
  6188 ms  0x7328 SECKEY_DestroyPrivateKey()
  6188 ms  0x7328 privk:0x7f4b3bf3a820::7f4b3bf3a820  20 de f2 3b                                       ..;
  6188 ms  0x7328 privk:0x7f4b3bf3a820::7f4b3bf3a820  e5 e5 e5 e5                                      ....
  6188 ms  0x7328 PK11_Encrypt()
  6188 ms  0x7328 symkey:0x7f4b3c0aab00
  6189 ms  0x7328 PK11_Encrypt()
  6189 ms  0x7328 symkey:0x7f4b3c0aab00
  6189 ms  0x7328 SSL_AuthCertificateComplete()
  6189 ms  0x7328 fd:0x7f4b3bf51430
  6189 ms  0x7328 err:0x0
  6189 ms  0x7328 SSL_AuthCertificateComplete()
  6189 ms  0x7328 fd:0x7f4b3bf51fd0
  6189 ms  0x7328 err:0x0
  6189 ms  0x7328 SSL_AuthCertificateComplete()
  6189 ms  0x7328 fd:0x7f4b4e2a4f10
  6189 ms  0x7328 err:0x0
  6189 ms  0x7328 SSL_AuthCertificateComplete()
  6189 ms  0x7328 fd:0x7f4b3bf25190
  6189 ms  0x7328 err:0x0
  6189 ms  0x7328 SECKEY_DestroyPrivateKey()
  6189 ms  0x7328 privk:0x7f4b3bf41820::7f4b3bf41820  50 ab 02 3c                                      P..<
  6189 ms  0x7328 privk:0x7f4b3bf41820::7f4b3bf41820  e5 e5 e5 e5                                      ....
  6189 ms  0x7328 SECKEY_DestroyPrivateKey()
  6189 ms  0x7328 privk:0x7f4b3bf3f820::7f4b3bf3f820  b0 ea f9 3b                                      ...;
  6189 ms  0x7328 privk:0x7f4b3bf3f820::7f4b3bf3f820  e5 e5 e5 e5                                      ....
  6190 ms  0x7328 SECKEY_DestroyPrivateKey()
  6190 ms  0x7328 privk:0x7f4b3bf46020::7f4b3bf46020  90 27 06 3c                                      .'.<
  6190 ms  0x7328 privk:0x7f4b3bf46020::7f4b3bf46020  e5 e5 e5 e5                                      ....
  6190 ms  0x7328 SECKEY_DestroyPrivateKey()
  6190 ms  0x7328 privk:0x7f4b3bf44020::7f4b3bf44020  e0 22 06 3c                                      .".<
  6190 ms  0x7328 privk:0x7f4b3bf44020::7f4b3bf44020  e5 e5 e5 e5                                      ....
  6190 ms  0x7328 PK11_Encrypt()
  6190 ms  0x7328 symkey:0x7f4b3c0abc00
  6190 ms  0x7328 PK11_Encrypt()
  6190 ms  0x7328 symkey:0x7f4b3c0aab00
  6190 ms  0x7328 PK11_Encrypt()
  6190 ms  0x7328 symkey:0x7f4b3c0abf80
  6191 ms  0x7328 PK11_Encrypt()
  6191 ms  0x7328 symkey:0x7f4b3bede100
  6191 ms  0x7328 PK11_Encrypt()
  6191 ms  0x7328 symkey:0x7f4b3bede480
  6191 ms  0x7328 SECKEY_CreateECPrivateKey()
  6191 ms  0x7328 cx:0x7f4b4d3ed608
  6192 ms     | 0x7328 EC_ValidatePublicKey()
  6192 ms     | 0x7328 ret:0x0
  6192 ms  0x7328 ret:0x7f4b3be24820::7f4b3be24820  c0 de f2 3b                                      ...;
  6192 ms  0x7328 SECKEY_CreateECPrivateKey()
  6192 ms  0x7328 cx:0x7f4b4d3ed608
  6192 ms     | 0x7328 EC_ValidatePublicKey()
  6194 ms     | 0x7328 ret:0x0
  6194 ms  0x7328 ret:0x7f4b3be26820::7f4b3be26820  b0 ea f9 3b                                      ...;
  6199 ms  0x7328 PR_Close()
  6199 ms  0x7328 fd:0x7f4b3bf516a0
  6199 ms     | 0x7328 PK11_Encrypt()
  6199 ms     | 0x7328 symkey:0x7f4b3c0ab300
  6199 ms  0x7328 PR_Close()
  6199 ms  0x7328 fd:0x7f4b3bf51730
  6199 ms     | 0x7328 PK11_Encrypt()
  6199 ms     | 0x7328 symkey:0x7f4b3c0aae80
  6200 ms  0x7328 PK11_Encrypt()
  6200 ms  0x7328 symkey:0x7f4b3c0aab00
  6200 ms  0x7328 SECKEY_DestroyPrivateKey()
  6200 ms  0x7328 privk:0x7f4b3bf4a820::7f4b3bf4a820  b0 2a 06 3c                                      .*.<
  6200 ms  0x7328 privk:0x7f4b3bf4a820::7f4b3bf4a820  e5 e5 e5 e5                                      ....
  6200 ms  0x7328 SECKEY_DestroyPrivateKey()
  6200 ms  0x7328 privk:0x7f4b3bf48820::7f4b3bf48820  d0 28 06 3c                                      .(.<
  6200 ms  0x7328 privk:0x7f4b3bf48820::7f4b3bf48820  e5 e5 e5 e5                                      ....
  6200 ms  0x7328 PK11_Encrypt()
  6200 ms  0x7328 symkey:0x7f4b3c0aab00
  6201 ms  0x7328 PR_Close()
  6201 ms  0x7328 fd:0x7f4b3bf518b0
  6201 ms     | 0x7328 PK11_Encrypt()
  6201 ms     | 0x7328 symkey:0x7f4b3c0ab700
  6203 ms  0x7328 SECKEY_DestroyPrivateKey()
  6203 ms  0x7328 privk:0x7f4b3bf8f820::7f4b3bf8f820  70 2e 06 3c                                      p..<
  6203 ms  0x7328 privk:0x7f4b3bf8f820::7f4b3bf8f820  e5 e5 e5 e5                                      ....
  6204 ms  0x7328 SECKEY_DestroyPrivateKey()
  6204 ms  0x7328 privk:0x7f4b3bf4d820::7f4b3bf4d820  90 2c 06 3c                                      .,.<
  6204 ms  0x7328 privk:0x7f4b3bf4d820::7f4b3bf4d820  e5 e5 e5 e5                                      ....
  6204 ms  0x7328 PR_Close()
  6204 ms  0x7328 fd:0x7f4b3bf51430
  6204 ms     | 0x7328 PK11_Encrypt()
  6204 ms     | 0x7328 symkey:0x7f4b3c0abc00
  6204 ms  0x7328 PK11_Encrypt()
  6204 ms  0x7328 symkey:0x7f4b3c0aab00
  6214 ms  0x7328 SECKEY_DestroyPrivateKey()
  6214 ms  0x7328 privk:0x7f4b3bf96820::7f4b3bf96820  f0 a1 0f 3c                                      ...<
  6214 ms  0x7328 privk:0x7f4b3bf96820::7f4b3bf96820  e5 e5 e5 e5                                      ....
  6214 ms  0x7328 SECKEY_DestroyPrivateKey()
  6214 ms  0x7328 privk:0x7f4b3bf93020::7f4b3bf93020  b0 2f 06 3c                                      ./.<
  6214 ms  0x7328 privk:0x7f4b3bf93020::7f4b3bf93020  e5 e5 e5 e5                                      ....
  6214 ms  0x7328 PR_Close()
  6214 ms  0x7328 fd:0x7f4b3bf51fd0
  6214 ms     | 0x7328 PK11_Encrypt()
  6214 ms     | 0x7328 symkey:0x7f4b3c0abf80
  6227 ms  0x7328 SECKEY_DestroyPrivateKey()
  6227 ms  0x7328 privk:0x7f4b4ed1d820::7f4b4ed1d820  d0 a8 0f 3c                                      ...<
  6227 ms  0x7328 privk:0x7f4b4ed1d820::7f4b4ed1d820  e5 e5 e5 e5                                      ....
  6227 ms  0x7328 SECKEY_DestroyPrivateKey()
  6227 ms  0x7328 privk:0x7f4b3c2ab020::7f4b3c2ab020  f0 a6 0f 3c                                      ...<
  6227 ms  0x7328 privk:0x7f4b3c2ab020::7f4b3c2ab020  e5 e5 e5 e5                                      ....
  6227 ms  0x7328 SECKEY_DestroyPrivateKey()
  6227 ms  0x7328 privk:0x7f4b3bf9b020::7f4b3bf9b020  b0 a5 0f 3c                                      ...<
  6227 ms  0x7328 privk:0x7f4b3bf9b020::7f4b3bf9b020  e5 e5 e5 e5                                      ....
  6227 ms  0x7328 SECKEY_DestroyPrivateKey()
  6227 ms  0x7328 privk:0x7f4b3bf99020::7f4b3bf99020  d0 a3 0f 3c                                      ...<
  6227 ms  0x7328 privk:0x7f4b3bf99020::7f4b3bf99020  e5 e5 e5 e5                                      ....
  6235 ms  SECKEY_ECParamsToKeySize()
  6235 ms  0x7328 ret:0x100
  6236 ms  0x7328 SECKEY_CreateECPrivateKey()
  6236 ms  0x7328 cx:0x7f4b4d3ed608
  6236 ms     | 0x7328 EC_ValidatePublicKey()
  6238 ms     | 0x7328 ret:0x0
  6238 ms  0x7328 ret:0x7f4b3be1b820::7f4b3be1b820  40 27 06 3c                                      @'.<
  6238 ms  0x7328 PK11_PubDeriveWithKDF()
  6238 ms  0x7328 seckey:0x7f4b3be1b820
  6238 ms     | 0x7328 EC_ValidatePublicKey()
  6239 ms     | 0x7328 ret:0x0
  6255 ms  0x7328 ret:0x7f4b3c0abe00
  6262 ms  0x7328 PK11_DeriveWithFlags()
  6262 ms  0x7328 basekey:0x7f4b3c0abe00
  6263 ms     | 0x7328 PK11_DeriveWithTemplate()
  6263 ms  0x7328 ret:0x7f4b3c0abd80
  6263 ms  0x7328 PK11_Derive()
  6263 ms  0x7328 basekey:0x7f4b3c0abd80
  6263 ms     | 0x7328 PK11_DeriveWithTemplate()
  6263 ms  0x7328 ret:0x7f4b3c0aba80
  6263 ms  0x7328 SECKEY_DestroyPrivateKey()
  6263 ms  0x7328 privk:0x7f4b3be1b820::7f4b3be1b820  40 27 06 3c                                      @'.<
  6263 ms  0x7328 privk:0x7f4b3be1b820::7f4b3be1b820  e5 e5 e5 e5                                      ....
  6263 ms  0x7328 PK11_Encrypt()
  6263 ms  0x7328 symkey:0x7f4b3c0abe80
  6263 ms  0x7328 SSL_AuthCertificateComplete()
  6263 ms  0x7328 fd:0x7f4b3bf25700
  6263 ms  0x7328 err:0x0
  6265 ms  0x7328 PK11_Encrypt()
  6265 ms  0x7328 symkey:0x7f4b3c0abe80
  6265 ms  0x7328 PK11_Encrypt()
  6265 ms  0x7328 symkey:0x7f4b3c0abe80
  6300 ms  0x7328 SECKEY_DestroyPrivateKey()
  6300 ms  0x7328 privk:0x7f4b3be26820::7f4b3be26820  b0 ea f9 3b                                      ...;
  6300 ms  0x7328 privk:0x7f4b3be26820::7f4b3be26820  e5 e5 e5 e5                                      ....
  6300 ms  0x7328 SECKEY_DestroyPrivateKey()
  6300 ms  0x7328 privk:0x7f4b3be24820::7f4b3be24820  c0 de f2 3b                                      ...;
  6300 ms  0x7328 privk:0x7f4b3be24820::7f4b3be24820  e5 e5 e5 e5                                      ....
           /* TID 0x7330 */
  6300 ms  0x7330 PR_Close()
  6300 ms  0x7330 fd:0x7f4b3bf257f0
           /* TID 0x7328 */
  6302 ms  0x7328 PK11_Encrypt()
  6302 ms  0x7328 symkey:0x7f4b3c2b9580
           /* TID 0x7330 */
  6334 ms  0x7330 PR_Close()
  6334 ms  0x7330 fd:0x7f4b3bf257f0
           /* TID 0x7328 */
  6336 ms  0x7328 PK11_Encrypt()
  6336 ms  0x7328 symkey:0x7f4b3c0abe80
           /* TID 0x7330 */
  6356 ms  0x7330 PR_Close()
  6356 ms  0x7330 fd:0x7f4b3bf257f0
  6373 ms  0x7330 PR_Close()
  6373 ms  0x7330 fd:0x7f4b3bf250d0
  6387 ms  0x7330 PR_Close()
  6387 ms  0x7330 fd:0x7f4b3bf25d30
  6391 ms  0x7330 PR_Close()
  6391 ms  0x7330 fd:0x7f4b3bf25d30
  6409 ms  0x7330 PR_Close()
  6409 ms  0x7330 fd:0x7f4b3bf25fd0
  6412 ms  0x7330 PR_Close()
  6412 ms  0x7330 fd:0x7f4b3bf250d0
  6413 ms  0x7330 PR_Close()
  6413 ms  0x7330 fd:0x7f4b3bf25b50
           /* TID 0x7328 */
  6418 ms  0x7328 PK11_Encrypt()
  6418 ms  0x7328 symkey:0x7f4b3c0aab00
  6419 ms  0x7328 PK11_Encrypt()
  6419 ms  0x7328 symkey:0x7f4b3c0aab00
  6419 ms  0x7328 PK11_Encrypt()
  6419 ms  0x7328 symkey:0x7f4b3c2b9580
           /* TID 0x7330 */
  6457 ms  0x7330 PR_Close()
  6457 ms  0x7330 fd:0x7f4b3bf250d0
           /* TID 0x7328 */
  6498 ms  0x7328 PR_Close()
  6498 ms  0x7328 fd:0x7f4b4e288e20
           /* TID 0x731d */
  6505 ms  0x731d EC_ValidatePublicKey()
  6506 ms  0x731d ret:0x0
  6506 ms  0x731d EC_ValidatePublicKey()
  6508 ms  0x731d ret:0x0
  6508 ms  0x731d EC_ValidatePublicKey()
  6509 ms  0x731d ret:0x0
  6509 ms  0x731d EC_ValidatePublicKey()
  6510 ms  0x731d ret:0x0
  6510 ms  0x731d EC_ValidatePublicKey()
  6512 ms  0x731d ret:0x0
  6512 ms  0x731d EC_ValidatePublicKey()
  6513 ms  0x731d ret:0x0
  6513 ms  0x731d EC_ValidatePublicKey()
  6525 ms  0x731d ret:0x0
  6526 ms  0x731d EC_ValidatePublicKey()
  6527 ms  0x731d ret:0x0
  6527 ms  0x731d EC_ValidatePublicKey()
  6528 ms  0x731d ret:0x0
  6528 ms  0x731d EC_ValidatePublicKey()
  6530 ms  0x731d ret:0x0
           /* TID 0x7328 */
  6530 ms  0x7328 PK11_Encrypt()
  6530 ms  0x7328 symkey:0x7f4b3c0abe80
  6532 ms  0x7328 PK11_Encrypt()
  6532 ms  0x7328 symkey:0x7f4b3c0aab00
  6540 ms  0x7328 PR_Close()
  6540 ms  0x7328 fd:0x7f4b4e2a4f10
  6540 ms     | 0x7328 PK11_Encrypt()
  6540 ms     | 0x7328 symkey:0x7f4b3bede100
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b3bf25190
  6541 ms     | 0x7328 PK11_Encrypt()
  6541 ms     | 0x7328 symkey:0x7f4b3bede480
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b3bf514c0
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b3bf513d0
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b4e2a4c10
  6541 ms     | 0x7328 PK11_Encrypt()
  6541 ms     | 0x7328 symkey:0x7f4b3bfe3b00
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b3c1a9bb0
  6541 ms     | 0x7328 PK11_Encrypt()
  6541 ms     | 0x7328 symkey:0x7f4b3bfe3600
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b4e2a4100
  6541 ms     | 0x7328 PK11_Encrypt()
  6541 ms     | 0x7328 symkey:0x7f4b3bfe3300
  6541 ms  0x7328 PR_Close()
  6541 ms  0x7328 fd:0x7f4b4e2a4c70
  6541 ms     | 0x7328 PK11_Encrypt()
  6541 ms     | 0x7328 symkey:0x7f4b3bfe2800
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b4e89f460
  6542 ms     | 0x7328 PK11_Encrypt()
  6542 ms     | 0x7328 symkey:0x7f4b3c2b9580
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b521acf70
  6542 ms     | 0x7328 PK11_Encrypt()
  6542 ms     | 0x7328 symkey:0x7f4b4d3dc580
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b521acd30
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b521ac310
  6542 ms     | 0x7328 PK11_Encrypt()
  6542 ms     | 0x7328 symkey:0x7f4b4d3db800
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b4d7c67f0
  6542 ms  0x7328 PR_Close()
  6542 ms  0x7328 fd:0x7f4b4f744f70
  6542 ms     | 0x7328 PK11_Encrypt()
  6542 ms     | 0x7328 symkey:0x7f4b4edbcf80
  6543 ms  0x7328 PR_Close()
  6543 ms  0x7328 fd:0x7f4b3bf51850
  6543 ms     | 0x7328 PK11_Encrypt()
  6543 ms     | 0x7328 symkey:0x7f4b3c0aab00
  6543 ms  0x7328 PR_Close()
  6543 ms  0x7328 fd:0x7f4b3bf25700
  6543 ms     | 0x7328 PK11_Encrypt()
  6543 ms     | 0x7328 symkey:0x7f4b3c0abe80
           /* TID 0x7378 */
  6543 ms  0x7378 PR_Close()
  6543 ms  0x7378 fd:0x7f4b3bf25160
  6543 ms  0x7378 PR_Close()
  6543 ms  0x7378 fd:0x7f4b3bf25160
           /* TID 0x7330 */
  6548 ms  0x7330 PR_Close()
  6548 ms  0x7330 fd:0x7f4b3bf25340
           /* TID 0x731d */
  6556 ms  0x731d PR_Close()
  6556 ms  0x731d fd:0x7f4b4e871eb0
  6556 ms  0x731d PR_Close()
  6556 ms  0x731d fd:0x7f4b3bf25b80
  6556 ms  0x731d PR_Close()
  6556 ms  0x731d fd:0x7f4b3bf25dc0
  6557 ms  0x731d PR_Close()
  6557 ms  0x731d fd:0x7f4b3bf25b80
  6557 ms  0x731d PR_Close()
  6557 ms  0x731d fd:0x7f4b3bf25dc0
  6557 ms  0x731d PR_Close()
  6557 ms  0x731d fd:0x7f4b3bf25b80
           /* TID 0x7391 */
  6559 ms  0x7391 PR_Close()
  6559 ms  0x7391 fd:0x7f4b3bf510a0
           /* TID 0x731d */
  6575 ms  0x731d PR_Close()
  6575 ms  0x731d fd:0x7f4b3bf25dc0
  6575 ms  0x731d PR_Close()
  6575 ms  0x731d fd:0x7f4b3c018820
  6576 ms  0x731d PR_Close()
  6576 ms  0x731d fd:0x7f4b3bf25dc0
  6579 ms  0x731d PR_Close()
  6579 ms  0x731d fd:0x7f4b3c018820
  6580 ms  0x731d PR_Close()
  6580 ms  0x731d fd:0x7f4b583c89a0
  6580 ms  0x731d PR_Close()
  6580 ms  0x731d fd:0x7f4b583c88b0
  6580 ms  0x731d PR_Close()
  6580 ms  0x731d fd:0x7f4b583c8a60
  6582 ms  0x731d PR_Close()
  6582 ms  0x731d fd:0x7f4b3c018850
  6583 ms  0x731d PR_Close()
  6583 ms  0x731d fd:0x7f4b3c018850
  6585 ms  0x731d PR_Close()
  6585 ms  0x731d fd:0x7f4b3bf25dc0
  6585 ms  0x731d PR_Close()
  6585 ms  0x731d fd:0x7f4b3c0188b0
  6586 ms  0x731d PR_Close()
  6586 ms  0x731d fd:0x7f4b3bf25dc0
  6586 ms  0x731d PR_Close()
  6586 ms  0x731d fd:0x7f4b3c0188b0
  6589 ms  0x731d PR_Close()
  6589 ms  0x731d fd:0x7f4b3c018970
  6590 ms  0x731d PR_Close()
  6590 ms  0x731d fd:0x7f4b3c018970
  6592 ms  0x731d PR_Close()
  6592 ms  0x731d fd:0x7f4b3bf25dc0
  6592 ms  0x731d PR_Close()
  6592 ms  0x731d fd:0x7f4b3c018a60
  6592 ms  0x731d PR_Close()
  6592 ms  0x731d fd:0x7f4b3bf25dc0
  6593 ms  0x731d PR_Close()
  6593 ms  0x731d fd:0x7f4b3c018a60
  6595 ms  0x731d PR_Close()
  6595 ms  0x731d fd:0x7f4b3c018a90
  6597 ms  0x731d PR_Close()
  6597 ms  0x731d fd:0x7f4b3c018a90
  6603 ms  0x731d PR_Close()
  6603 ms  0x731d fd:0x7f4b3c1a92e0
  6604 ms  0x731d PR_Close()
  6604 ms  0x731d fd:0x7f4b3c1a92e0
  6606 ms  0x731d PR_Close()
  6606 ms  0x731d fd:0x7f4b3c1a93a0
           /* TID 0x7391 */
  6615 ms  0x7391 PR_Close()
  6615 ms  0x7391 fd:0x7f4b3bf25220
           /* TID 0x731d */
  6616 ms  0x731d PR_Close()
  6616 ms  0x731d fd:0x7f4b3bf25dc0
  6616 ms  0x731d PR_Close()
  6616 ms  0x731d fd:0x7f4b4d1ce130
           /* TID 0x7391 */
  6616 ms  0x7391 PR_Close()
  6616 ms  0x7391 fd:0x7f4b3bf25220
  6622 ms  0x7391 PR_Close()
  6622 ms  0x7391 fd:0x7f4b3bf510a0
           /* TID 0x7328 */
  6626 ms  0x7328 SSL_ImportFD()
  6626 ms  0x7328 ret:0x7f4b4d1ce610
  6626 ms  0x7328 SSL_AuthCertificateHook()
  6626 ms  0x7328 fd:0x7f4b4d1ce610
  6626 ms  0x7328 ret:0x0
  6626 ms  0x7328 PR_Connect()
  6626 ms  0x7328 fd:0x7f4b4d1ce610
           /* TID 0x7391 */
  6647 ms  0x7391 PR_Close()
  6647 ms  0x7391 fd:0x7f4b3bf25940
           /* TID 0x7328 */
  6650 ms  0x7328 SSL_ImportFD()
  6650 ms  0x7328 ret:0x7f4b3c1a9760
  6650 ms  0x7328 SSL_AuthCertificateHook()
  6650 ms  0x7328 fd:0x7f4b3c1a9760
  6650 ms  0x7328 ret:0x0
  6650 ms  0x7328 PR_Connect()
  6650 ms  0x7328 fd:0x7f4b3c1a9760
  6652 ms  0x7328 PR_Close()
  6652 ms  0x7328 fd:0x7f4b4d1ce610
  6652 ms  0x7328 PR_Close()
  6652 ms  0x7328 fd:0x7f4b3c1a9760
           /* TID 0x7322 */
  6660 ms  0x7322 PR_Close()
  6660 ms  0x7322 fd:0x7f4b573e8e20
  6663 ms  0x7322 PR_Close()
  6663 ms  0x7322 fd:0x7f4b53645820
           /* TID 0x7391 */
  6675 ms  0x7391 PR_Close()
  6675 ms  0x7391 fd:0x7f4b3bf519d0
           /* TID 0x7328 */
  6678 ms  0x7328 PR_Close()
  6678 ms  0x7328 fd:0x7f4b4d7c67c0
           /* TID 0x7378 */
  6679 ms  0x7378 PR_Close()
  6679 ms  0x7378 fd:0x7f4b3bf51340
  6679 ms  0x7378 PR_Close()
  6679 ms  0x7378 fd:0x7f4b3bf25850
  6679 ms  0x7378 PR_Close()
  6679 ms  0x7378 fd:0x7f4b3bf25850
  6679 ms  0x7378 PR_Close()
  6679 ms  0x7378 fd:0x7f4b3bf25850
           /* TID 0x7391 */
  6679 ms  0x7391 PR_Close()
  6679 ms  0x7391 fd:0x7f4b3bf51160
           /* TID 0x7330 */
  6682 ms  0x7330 PR_Close()
  6682 ms  0x7330 fd:0x7f4b4d1ce940
  6682 ms  0x7330 PR_Close()
  6682 ms  0x7330 fd:0x7f4b4d1ce970
           /* TID 0x7322 */
  6688 ms  0x7322 PR_Close()
  6688 ms  0x7322 fd:0x7f4b4d52f5b0
           /* TID 0x731d */
  6691 ms  0x731d PR_Close()
  6691 ms  0x731d fd:0x7f4b3bf25dc0
  6691 ms  0x731d PR_Close()
  6691 ms  0x731d fd:0x7f4b4d52f5e0
           /* TID 0x7391 */
  6692 ms  0x7391 PR_Close()
  6692 ms  0x7391 fd:0x7f4b3c1a9ac0
  6695 ms  0x7391 PR_Close()
  6695 ms  0x7391 fd:0x7f4b3c1a9040
  6771 ms  0x7391 PR_Close()
  6771 ms  0x7391 fd:0x7f4b3bf258e0
  6792 ms  0x7391 PR_Close()
  6792 ms  0x7391 fd:0x7f4b3bf258e0
  6795 ms  0x7391 PR_Close()
  6795 ms  0x7391 fd:0x7f4b3bf516d0
  6796 ms  0x7391 PR_Close()
  6796 ms  0x7391 fd:0x7f4b3bf51eb0
  6806 ms  0x7391 PR_Close()
  6806 ms  0x7391 fd:0x7f4b4d1ce700
  6810 ms  0x7391 PR_Close()
  6810 ms  0x7391 fd:0x7f4b4d52fa00
  6817 ms  0x7391 PR_Close()
  6817 ms  0x7391 fd:0x7f4b4d52fd60
  6827 ms  0x7391 PR_Close()
  6827 ms  0x7391 fd:0x7f4b4d52ff40
  6829 ms  0x7391 PR_Close()
  6829 ms  0x7391 fd:0x7f4b4d52ff40
           /* TID 0x731d */
  6994 ms  0x731d PR_Close()
  6994 ms  0x731d fd:0x7f4b3c018100
  6994 ms  0x731d PR_Close()
  6994 ms  0x731d fd:0x7f4b3c018100
  7003 ms  0x731d PR_Close()
  7003 ms  0x731d fd:0x7f4b756da130
  7003 ms  0x731d PR_Close()
  7003 ms  0x731d fd:0x7f4b756da190
Process terminated
