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
           /* TID 0x7c69 */
   135 ms  0x7c69 PR_Close()
   135 ms  0x7c69 fd:0x7fb39d0631c0
           /* TID 0x7c61 */
   276 ms  0x7c61 SSL_ImportFD()
   276 ms  0x7c61 ret:0x7fb39cefc4f0
   276 ms  0x7c61 SSL_AuthCertificateHook()
   276 ms  0x7c61 fd:0x7fb39cefc4f0
   276 ms  0x7c61 ret:0x0
   276 ms  0x7c61 PR_Connect()
   276 ms  0x7c61 fd:0x7fb39cefc4f0
   494 ms  0x7c61 SECKEY_CreateECPrivateKey()
   494 ms  0x7c61 cx:0x7fb39d2ec248
   496 ms     | 0x7c61 EC_ValidatePublicKey()
   496 ms     | 0x7c61 ret:0x0
   496 ms  0x7c61 ret:0x7fb38c368820::7fb38c368820  e0 dc 3c 8c                                      ..<.
   497 ms  0x7c61 SECKEY_CreateECPrivateKey()
   497 ms  0x7c61 cx:0x7fb39d2ec248
   499 ms     | 0x7c61 EC_ValidatePublicKey()
   504 ms     | 0x7c61 ret:0x0
   504 ms  0x7c61 ret:0x7fb38c36a820::7fb38c36a820  c0 de 3c 8c                                      ..<.
           /* TID 0x7cd3 */
   669 ms  0x7cd3 PR_Close()
   669 ms  0x7cd3 fd:0x7fb39cefce20
   673 ms  0x7cd3 PR_Close()
   673 ms  0x7cd3 fd:0x7fb39cefce20
           /* TID 0x7c61 */
   730 ms  SECKEY_ECParamsToKeySize()
   730 ms  0x7c61 ret:0x100
   730 ms  0x7c61 SECKEY_CreateECPrivateKey()
   730 ms  0x7c61 cx:0x7fb39d2ec248
   732 ms     | 0x7c61 EC_ValidatePublicKey()
   737 ms     | 0x7c61 ret:0x0
   737 ms  0x7c61 ret:0x7fb38c373820::7fb38c373820  20 e9 00 8c                                       ...
   737 ms  0x7c61 PK11_PubDeriveWithKDF()
   737 ms  0x7c61 seckey:0x7fb38c373820
   737 ms     | 0x7c61 EC_ValidatePublicKey()
   742 ms     | 0x7c61 ret:0x0
   748 ms  0x7c61 ret:0x7fb39eef2380
   748 ms  0x7c61 PK11_DeriveWithFlags()
   748 ms  0x7c61 basekey:0x7fb39eef2380
   748 ms     | 0x7c61 PK11_DeriveWithTemplate()
   748 ms  0x7c61 ret:0x7fb38c003a00
   748 ms  0x7c61 PK11_Derive()
   748 ms  0x7c61 basekey:0x7fb38c003a00
   748 ms     | 0x7c61 PK11_DeriveWithTemplate()
   748 ms  0x7c61 ret:0x7fb38c003b00
   748 ms  0x7c61 SECKEY_DestroyPrivateKey()
   748 ms  0x7c61 privk:0x7fb38c373820::7fb38c373820  20 e9 00 8c                                       ...
   748 ms  0x7c61 privk:0x7fb38c373820::7fb38c373820  e5 e5 e5 e5                                      ....
   749 ms  0x7c61 PK11_Encrypt()
   749 ms  0x7c61 symkey:0x7fb38c003c80
   749 ms  0x7c61 PR_Connect()
   749 ms  0x7c61 fd:0x7fb38c029070
           /* TID 0x7cd3 */
   759 ms  0x7cd3 PR_Close()
   759 ms  0x7cd3 fd:0x7fb38c0290a0
           /* TID 0x7c69 */
   803 ms  0x7c69 PR_Close()
   803 ms  0x7c69 fd:0x7fb38c029100
           /* TID 0x7ccb */
   804 ms  0x7ccb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   804 ms  0x7ccb ret:0x0
           /* TID 0x7c61 */
   805 ms  0x7c61 SSL_AuthCertificateComplete()
   805 ms  0x7c61 fd:0x7fb39cefc4f0
   805 ms  0x7c61 err:0x0
   805 ms  0x7c61 PK11_Encrypt()
   805 ms  0x7c61 symkey:0x7fb38c003c80
   967 ms  0x7c61 SECKEY_DestroyPrivateKey()
   967 ms  0x7c61 privk:0x7fb38c36a820::7fb38c36a820  c0 de 3c 8c                                      ..<.
   968 ms  0x7c61 privk:0x7fb38c36a820::7fb38c36a820  e5 e5 e5 e5                                      ....
   968 ms  0x7c61 SECKEY_DestroyPrivateKey()
   968 ms  0x7c61 privk:0x7fb38c368820::7fb38c368820  e0 dc 3c 8c                                      ..<.
   968 ms  0x7c61 privk:0x7fb38c368820::7fb38c368820  e5 e5 e5 e5                                      ....
  1193 ms  0x7c61 SSL_ImportFD()
  1193 ms  0x7c61 ret:0x7fb38c0292e0
  1193 ms  0x7c61 SSL_AuthCertificateHook()
  1193 ms  0x7c61 fd:0x7fb38c0292e0
  1193 ms  0x7c61 ret:0x0
  1193 ms  0x7c61 PR_Connect()
  1193 ms  0x7c61 fd:0x7fb38c0292e0
  1218 ms  0x7c61 SECKEY_CreateECPrivateKey()
  1218 ms  0x7c61 cx:0x7fb39d2edc48
  1219 ms     | 0x7c61 EC_ValidatePublicKey()
  1219 ms     | 0x7c61 ret:0x0
  1219 ms  0x7c61 ret:0x7fb38c36a820::7fb38c36a820  20 e9 00 8c                                       ...
  1219 ms  0x7c61 SECKEY_CreateECPrivateKey()
  1219 ms  0x7c61 cx:0x7fb39d2edc48
  1220 ms     | 0x7c61 EC_ValidatePublicKey()
  1223 ms     | 0x7c61 ret:0x0
  1223 ms  0x7c61 ret:0x7fb38c370820::7fb38c370820  00 eb 00 8c                                      ....
           /* TID 0x7ccb */
  1276 ms  0x7ccb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1277 ms  0x7ccb ret:0x0
           /* TID 0x7c61 */
  1277 ms  SECKEY_ECParamsToKeySize()
  1277 ms  0x7c61 ret:0x100
  1277 ms  0x7c61 SECKEY_CreateECPrivateKey()
  1277 ms  0x7c61 cx:0x7fb39d2edc48
  1279 ms     | 0x7c61 EC_ValidatePublicKey()
  1284 ms     | 0x7c61 ret:0x0
  1284 ms  0x7c61 ret:0x7fb38c374020::7fb38c374020  80 ed 00 8c                                      ....
  1285 ms  0x7c61 PK11_PubDeriveWithKDF()
  1285 ms  0x7c61 seckey:0x7fb38c374020
  1285 ms     | 0x7c61 EC_ValidatePublicKey()
  1290 ms     | 0x7c61 ret:0x0
  1294 ms  0x7c61 ret:0x7fb39eef2380
  1294 ms  0x7c61 PK11_DeriveWithFlags()
  1294 ms  0x7c61 basekey:0x7fb39eef2380
  1294 ms     | 0x7c61 PK11_DeriveWithTemplate()
  1294 ms  0x7c61 ret:0x7fb38c004400
  1294 ms  0x7c61 PK11_Derive()
  1294 ms  0x7c61 basekey:0x7fb38c004400
  1294 ms     | 0x7c61 PK11_DeriveWithTemplate()
  1294 ms  0x7c61 ret:0x7fb38c004600
  1294 ms  0x7c61 SECKEY_DestroyPrivateKey()
  1294 ms  0x7c61 privk:0x7fb38c374020::7fb38c374020  80 ed 00 8c                                      ....
  1295 ms  0x7c61 privk:0x7fb38c374020::7fb38c374020  e5 e5 e5 e5                                      ....
  1295 ms  0x7c61 PK11_Encrypt()
  1295 ms  0x7c61 symkey:0x7fb38c004b00
  1295 ms  0x7c61 SSL_AuthCertificateComplete()
  1295 ms  0x7c61 fd:0x7fb38c0292e0
  1295 ms  0x7c61 err:0x0
  1296 ms  0x7c61 PK11_Encrypt()
  1296 ms  0x7c61 symkey:0x7fb38c004b00
  1347 ms  0x7c61 SECKEY_DestroyPrivateKey()
  1347 ms  0x7c61 privk:0x7fb38c370820::7fb38c370820  00 eb 00 8c                                      ....
  1347 ms  0x7c61 privk:0x7fb38c370820::7fb38c370820  e5 e5 e5 e5                                      ....
  1347 ms  0x7c61 SECKEY_DestroyPrivateKey()
  1347 ms  0x7c61 privk:0x7fb38c36a820::7fb38c36a820  20 e9 00 8c                                       ...
  1348 ms  0x7c61 privk:0x7fb38c36a820::7fb38c36a820  e5 e5 e5 e5                                      ....
  1352 ms  0x7c61 PK11_Encrypt()
  1352 ms  0x7c61 symkey:0x7fb38c004b00
  1382 ms  0x7c61 PK11_Encrypt()
  1382 ms  0x7c61 symkey:0x7fb38c004b00
  1413 ms  0x7c61 PK11_Encrypt()
  1413 ms  0x7c61 symkey:0x7fb38c004b00
  1443 ms  0x7c61 PK11_Encrypt()
  1443 ms  0x7c61 symkey:0x7fb38c004b00
  1560 ms  0x7c61 PK11_Encrypt()
  1560 ms  0x7c61 symkey:0x7fb38c004b00
  1592 ms  0x7c61 PK11_Encrypt()
  1592 ms  0x7c61 symkey:0x7fb38c004b00
  1624 ms  0x7c61 PK11_Encrypt()
  1624 ms  0x7c61 symkey:0x7fb38c004b00
           /* TID 0x7cc3 */
  1652 ms  0x7cc3 PR_Close()
  1652 ms  0x7cc3 fd:0x7fb38c0293d0
  1652 ms  0x7cc3 PR_Close()
  1652 ms  0x7cc3 fd:0x7fb38c029490
  1652 ms  0x7cc3 PR_Close()
  1652 ms  0x7cc3 fd:0x7fb38c0293d0
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c029490
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c0293d0
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c029490
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c0293d0
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c029490
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c0293d0
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c029490
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c0293d0
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c029490
  1653 ms  0x7cc3 PR_Close()
  1653 ms  0x7cc3 fd:0x7fb38c0293d0
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c029490
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c0293d0
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c029490
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c0293d0
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c029490
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c0293d0
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c029490
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c0293d0
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c029490
  1654 ms  0x7cc3 PR_Close()
  1654 ms  0x7cc3 fd:0x7fb38c0293d0
  1655 ms  0x7cc3 PR_Close()
  1655 ms  0x7cc3 fd:0x7fb38c029490
  1655 ms  0x7cc3 PR_Close()
  1655 ms  0x7cc3 fd:0x7fb38c0293d0
  1655 ms  0x7cc3 PR_Close()
  1655 ms  0x7cc3 fd:0x7fb38c029490
  1655 ms  0x7cc3 PR_Close()
  1655 ms  0x7cc3 fd:0x7fb38c0293d0
  1655 ms  0x7cc3 PR_Close()
  1655 ms  0x7cc3 fd:0x7fb38c029490
  1659 ms  0x7cc3 PR_Close()
  1659 ms  0x7cc3 fd:0x7fb38c029130
  1659 ms  0x7cc3 PR_Close()
  1659 ms  0x7cc3 fd:0x7fb38c0293a0
  1662 ms  0x7cc3 PR_Close()
  1662 ms  0x7cc3 fd:0x7fb38c0293a0
  1662 ms  0x7cc3 PR_Close()
  1662 ms  0x7cc3 fd:0x7fb38c0293d0
  1664 ms  0x7cc3 PR_Close()
  1664 ms  0x7cc3 fd:0x7fb38c0293d0
  1665 ms  0x7cc3 PR_Close()
  1665 ms  0x7cc3 fd:0x7fb38c0293d0
  1667 ms  0x7cc3 PR_Close()
  1667 ms  0x7cc3 fd:0x7fb38c0293d0
  1668 ms  0x7cc3 PR_Close()
  1668 ms  0x7cc3 fd:0x7fb38c0293d0
  1713 ms  0x7cc3 PR_Close()
  1713 ms  0x7cc3 fd:0x7fb38c0293d0
  1714 ms  0x7cc3 PR_Close()
  1714 ms  0x7cc3 fd:0x7fb38c0293d0
  1721 ms  0x7cc3 PR_Close()
  1721 ms  0x7cc3 fd:0x7fb38c0293d0
  1721 ms  0x7cc3 PR_Close()
  1721 ms  0x7cc3 fd:0x7fb38c0293d0
  1728 ms  0x7cc3 PR_Close()
  1728 ms  0x7cc3 fd:0x7fb38c0293d0
  1728 ms  0x7cc3 PR_Close()
  1728 ms  0x7cc3 fd:0x7fb38c0293d0
  1730 ms  0x7cc3 PR_Close()
  1730 ms  0x7cc3 fd:0x7fb38c0293d0
  1730 ms  0x7cc3 PR_Close()
  1730 ms  0x7cc3 fd:0x7fb38c0293d0
           /* TID 0x7cc1 */
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
  1730 ms  0x7cc1 PR_Close()
  1730 ms  0x7cc1 fd:0x7fb38c0293d0
           /* TID 0x7cd3 */
  2233 ms  0x7cd3 PR_Close()
  2233 ms  0x7cd3 fd:0x7fb38c029790
  2236 ms  0x7cd3 PR_Close()
  2236 ms  0x7cd3 fd:0x7fb38c029790
  2836 ms  0x7cd3 PR_Close()
  2836 ms  0x7cd3 fd:0x7fb38c029790
           /* TID 0x7c69 */
  4175 ms  0x7c69 PR_Close()
  4175 ms  0x7c69 fd:0x7fb38c029790
  4175 ms  0x7c69 PR_Close()
  4175 ms  0x7c69 fd:0x7fb38c0298e0
           /* TID 0x7c61 */
  4524 ms  0x7c61 SSL_ImportFD()
  4524 ms  0x7c61 ret:0x7fb39e3808e0
  4524 ms  0x7c61 SSL_AuthCertificateHook()
  4524 ms  0x7c61 fd:0x7fb39e3808e0
  4524 ms  0x7c61 ret:0x0
  4524 ms  0x7c61 PR_Connect()
  4524 ms  0x7c61 fd:0x7fb39e3808e0
  4550 ms  0x7c61 SECKEY_CreateECPrivateKey()
  4550 ms  0x7c61 cx:0x7fb39d2edf88
  4551 ms     | 0x7c61 EC_ValidatePublicKey()
  4551 ms     | 0x7c61 ret:0x0
  4551 ms  0x7c61 ret:0x7fb38bfa0020::7fb38bfa0020  90 97 fd 8b                                      ....
  4551 ms  0x7c61 SECKEY_CreateECPrivateKey()
  4551 ms  0x7c61 cx:0x7fb39d2edf88
  4552 ms     | 0x7c61 EC_ValidatePublicKey()
  4554 ms     | 0x7c61 ret:0x0
  4554 ms  0x7c61 ret:0x7fb38bfa2020::7fb38bfa2020  10 9a fd 8b                                      ....
           /* TID 0x7ccb */
  4585 ms  0x7ccb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4586 ms  0x7ccb ret:0x0
  4586 ms  0x7ccb _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4587 ms  0x7ccb ret:0x0
           /* TID 0x7c61 */
  4587 ms  SECKEY_ECParamsToKeySize()
  4587 ms  0x7c61 ret:0xff
  4587 ms  0x7c61 SECKEY_CreateECPrivateKey()
  4587 ms  0x7c61 cx:0x7fb39d2edf88
  4589 ms     | 0x7c61 EC_ValidatePublicKey()
  4589 ms     | 0x7c61 ret:0x0
  4589 ms  0x7c61 ret:0x7fb38bfaf020::7fb38bfaf020  60 9f fd 8b                                      `...
  4589 ms  0x7c61 PK11_PubDeriveWithKDF()
  4589 ms  0x7c61 seckey:0x7fb38bfaf020
  4589 ms     | 0x7c61 EC_ValidatePublicKey()
  4589 ms     | 0x7c61 ret:0x0
  4591 ms  0x7c61 ret:0x7fb39eef2380
  4591 ms  0x7c61 PK11_DeriveWithFlags()
  4591 ms  0x7c61 basekey:0x7fb39eef2380
  4591 ms     | 0x7c61 PK11_DeriveWithTemplate()
  4591 ms  0x7c61 ret:0x7fb38bfbec80
  4591 ms  0x7c61 PK11_Derive()
  4591 ms  0x7c61 basekey:0x7fb38bfbec80
  4591 ms     | 0x7c61 PK11_DeriveWithTemplate()
  4591 ms  0x7c61 ret:0x7fb38bfbed00
  4591 ms  0x7c61 SECKEY_DestroyPrivateKey()
  4591 ms  0x7c61 privk:0x7fb38bfaf020::7fb38bfaf020  60 9f fd 8b                                      `...
  4591 ms  0x7c61 privk:0x7fb38bfaf020::7fb38bfaf020  e5 e5 e5 e5                                      ....
  4592 ms  0x7c61 PK11_Encrypt()
  4592 ms  0x7c61 symkey:0x7fb38bfbee80
  4604 ms  0x7c61 SSL_AuthCertificateComplete()
  4604 ms  0x7c61 fd:0x7fb39e3808e0
  4604 ms  0x7c61 err:0x0
  4605 ms  0x7c61 PK11_Encrypt()
  4605 ms  0x7c61 symkey:0x7fb38bfbee80
  4605 ms  0x7c61 PK11_Encrypt()
  4605 ms  0x7c61 symkey:0x7fb38bfbee80
  4619 ms  0x7c61 SECKEY_DestroyPrivateKey()
  4619 ms  0x7c61 privk:0x7fb38bfa2020::7fb38bfa2020  10 9a fd 8b                                      ....
  4619 ms  0x7c61 privk:0x7fb38bfa2020::7fb38bfa2020  e5 e5 e5 e5                                      ....
  4619 ms  0x7c61 SECKEY_DestroyPrivateKey()
  4619 ms  0x7c61 privk:0x7fb38bfa0020::7fb38bfa0020  90 97 fd 8b                                      ....
  4619 ms  0x7c61 privk:0x7fb38bfa0020::7fb38bfa0020  e5 e5 e5 e5                                      ....
  4619 ms  0x7c61 PK11_Encrypt()
  4619 ms  0x7c61 symkey:0x7fb38bfbee80
           /* TID 0x7c78 */
  4827 ms  0x7c78 PR_Close()
  4827 ms  0x7c78 fd:0x7fb38bfd4220
           /* TID 0x7c69 */
  4925 ms  0x7c69 PR_Close()
  4925 ms  0x7c69 fd:0x7fb38bdda3d0
           /* TID 0x7c61 */
  4936 ms  0x7c61 PK11_Encrypt()
  4936 ms  0x7c61 symkey:0x7fb38bfbee80
  4940 ms  0x7c61 PK11_Encrypt()
  4940 ms  0x7c61 symkey:0x7fb38bfbee80
           /* TID 0x7c69 */
  5020 ms  0x7c69 PR_Close()
  5020 ms  0x7c69 fd:0x7fb38bd90a60
  5020 ms  0x7c69 PR_Close()
  5020 ms  0x7c69 fd:0x7fb38bd90a60
           /* TID 0x7c61 */
  5021 ms  0x7c61 PK11_Encrypt()
  5021 ms  0x7c61 symkey:0x7fb38bfbee80
  5029 ms  0x7c61 PR_Close()
  5029 ms  0x7c61 fd:0x7fb39e262b50
           /* TID 0x7c56 */
  5030 ms  0x7c56 EC_ValidatePublicKey()
  5032 ms  0x7c56 ret:0x0
  5032 ms  0x7c56 EC_ValidatePublicKey()
  5033 ms  0x7c56 ret:0x0
  5033 ms  0x7c56 EC_ValidatePublicKey()
  5035 ms  0x7c56 ret:0x0
  5035 ms  0x7c56 EC_ValidatePublicKey()
  5036 ms  0x7c56 ret:0x0
  5036 ms  0x7c56 EC_ValidatePublicKey()
  5040 ms  0x7c56 ret:0x0
  5041 ms  0x7c56 EC_ValidatePublicKey()
  5042 ms  0x7c56 ret:0x0
  5042 ms  0x7c56 EC_ValidatePublicKey()
  5043 ms  0x7c56 ret:0x0
  5043 ms  0x7c56 EC_ValidatePublicKey()
  5045 ms  0x7c56 ret:0x0
  5045 ms  0x7c56 EC_ValidatePublicKey()
  5046 ms  0x7c56 ret:0x0
  5046 ms  0x7c56 EC_ValidatePublicKey()
  5060 ms  0x7c56 ret:0x0
           /* TID 0x7c61 */
  5060 ms  0x7c61 PK11_Encrypt()
  5060 ms  0x7c61 symkey:0x7fb38bfbee80
  5060 ms  0x7c61 PR_Close()
  5060 ms  0x7c61 fd:0x7fb38c0292e0
  5060 ms     | 0x7c61 PK11_Encrypt()
  5060 ms     | 0x7c61 symkey:0x7fb38c004b00
  5060 ms  0x7c61 PR_Close()
  5060 ms  0x7c61 fd:0x7fb38c029070
  5060 ms  0x7c61 PR_Close()
  5060 ms  0x7c61 fd:0x7fb39cefc4f0
  5060 ms     | 0x7c61 PK11_Encrypt()
  5060 ms     | 0x7c61 symkey:0x7fb38c003c80
  5061 ms  0x7c61 PR_Close()
  5061 ms  0x7c61 fd:0x7fb39e262c40
  5061 ms  0x7c61 PR_Close()
  5061 ms  0x7c61 fd:0x7fb39d0638e0
  5061 ms     | 0x7c61 PK11_Encrypt()
  5061 ms     | 0x7c61 symkey:0x7fb39eef2800
  5061 ms  0x7c61 PR_Close()
  5061 ms  0x7c61 fd:0x7fb3a2dc4ee0
  5061 ms     | 0x7c61 PK11_Encrypt()
  5061 ms     | 0x7c61 symkey:0x7fb39d059a00
  5061 ms  0x7c61 PR_Close()
  5061 ms  0x7c61 fd:0x7fb39e3808e0
  5061 ms     | 0x7c61 PK11_Encrypt()
  5061 ms     | 0x7c61 symkey:0x7fb38bfbee80
           /* TID 0x7cbf */
  5061 ms  0x7cbf PR_Close()
  5061 ms  0x7cbf fd:0x7fb38c029400
  5062 ms  0x7cbf PR_Close()
  5062 ms  0x7cbf fd:0x7fb38c029400
           /* TID 0x7c69 */
  5070 ms  0x7c69 PR_Close()
  5070 ms  0x7c69 fd:0x7fb38bd90e80
           /* TID 0x7c56 */
  5079 ms  0x7c56 PR_Close()
  5079 ms  0x7c56 fd:0x7fb39fb8f2b0
  5079 ms  0x7c56 PR_Close()
  5079 ms  0x7c56 fd:0x7fb38c392ca0
  5080 ms  0x7c56 PR_Close()
  5080 ms  0x7c56 fd:0x7fb39df6f130
  5080 ms  0x7c56 PR_Close()
  5080 ms  0x7c56 fd:0x7fb38c392ca0
  5081 ms  0x7c56 PR_Close()
  5081 ms  0x7c56 fd:0x7fb39df6f130
  5081 ms  0x7c56 PR_Close()
  5081 ms  0x7c56 fd:0x7fb38c392ca0
           /* TID 0x7cd3 */
  5089 ms  0x7cd3 PR_Close()
  5089 ms  0x7cd3 fd:0x7fb39e3800d0
           /* TID 0x7c56 */
  5110 ms  0x7c56 PR_Close()
  5110 ms  0x7c56 fd:0x7fb39df6f130
  5110 ms  0x7c56 PR_Close()
  5110 ms  0x7c56 fd:0x7fb3a1dbf400
  5114 ms  0x7c56 PR_Close()
  5114 ms  0x7c56 fd:0x7fb39df6f130
  5114 ms  0x7c56 PR_Close()
  5114 ms  0x7c56 fd:0x7fb3a1dbf430
  5115 ms  0x7c56 PR_Close()
  5115 ms  0x7c56 fd:0x7fb3a80c89a0
  5115 ms  0x7c56 PR_Close()
  5115 ms  0x7c56 fd:0x7fb3a80c88b0
  5115 ms  0x7c56 PR_Close()
  5115 ms  0x7c56 fd:0x7fb3a80c8a60
  5117 ms  0x7c56 PR_Close()
  5117 ms  0x7c56 fd:0x7fb39d0633d0
  5118 ms  0x7c56 PR_Close()
  5118 ms  0x7c56 fd:0x7fb39d0633d0
  5120 ms  0x7c56 PR_Close()
  5120 ms  0x7c56 fd:0x7fb39df6f130
  5120 ms  0x7c56 PR_Close()
  5120 ms  0x7c56 fd:0x7fb39e590ee0
  5121 ms  0x7c56 PR_Close()
  5121 ms  0x7c56 fd:0x7fb39df6f130
  5121 ms  0x7c56 PR_Close()
  5121 ms  0x7c56 fd:0x7fb39e590ee0
  5123 ms  0x7c56 PR_Close()
  5123 ms  0x7c56 fd:0x7fb3a15a3e20
  5124 ms  0x7c56 PR_Close()
  5124 ms  0x7c56 fd:0x7fb3a15a3e20
  5126 ms  0x7c56 PR_Close()
  5126 ms  0x7c56 fd:0x7fb39df6f130
  5126 ms  0x7c56 PR_Close()
  5126 ms  0x7c56 fd:0x7fb3a1dbf430
  5132 ms  0x7c56 PR_Close()
  5132 ms  0x7c56 fd:0x7fb39df6f130
  5132 ms  0x7c56 PR_Close()
  5132 ms  0x7c56 fd:0x7fb3a1dbf430
  5134 ms  0x7c56 PR_Close()
  5134 ms  0x7c56 fd:0x7fb3a1dbf460
  5137 ms  0x7c56 PR_Close()
  5137 ms  0x7c56 fd:0x7fb3a1dbf460
  5144 ms  0x7c56 PR_Close()
  5144 ms  0x7c56 fd:0x7fb3a1dbf610
  5145 ms  0x7c56 PR_Close()
  5145 ms  0x7c56 fd:0x7fb3a1dbf610
  5148 ms  0x7c56 PR_Close()
  5148 ms  0x7c56 fd:0x7fb3a1dbf670
           /* TID 0x7cd3 */
  5155 ms  0x7cd3 PR_Close()
  5155 ms  0x7cd3 fd:0x7fb39df6ffa0
           /* TID 0x7c56 */
  5157 ms  0x7c56 PR_Close()
  5157 ms  0x7c56 fd:0x7fb39df6f130
           /* TID 0x7cd3 */
  5157 ms  0x7cd3 PR_Close()
  5157 ms  0x7cd3 fd:0x7fb39df6ffa0
           /* TID 0x7c56 */
  5157 ms  0x7c56 PR_Close()
  5157 ms  0x7c56 fd:0x7fb39e2cb070
           /* TID 0x7cd3 */
  5161 ms  0x7cd3 PR_Close()
  5161 ms  0x7cd3 fd:0x7fb39d6e2640
  5181 ms  0x7cd3 PR_Close()
  5181 ms  0x7cd3 fd:0x7fb38bd901c0
           /* TID 0x7c61 */
  5184 ms  0x7c61 SSL_ImportFD()
  5184 ms  0x7c61 ret:0x7fb38bd90430
  5184 ms  0x7c61 SSL_AuthCertificateHook()
  5184 ms  0x7c61 fd:0x7fb38bd90430
  5184 ms  0x7c61 ret:0x0
  5184 ms  0x7c61 PR_Connect()
  5184 ms  0x7c61 fd:0x7fb38bd90430
  5185 ms  0x7c61 PR_Close()
  5185 ms  0x7c61 fd:0x7fb38bd90430
  5185 ms  0x7c61 SSL_ImportFD()
  5185 ms  0x7c61 ret:0x7fb38bd900d0
  5185 ms  0x7c61 SSL_AuthCertificateHook()
  5185 ms  0x7c61 fd:0x7fb38bd900d0
  5185 ms  0x7c61 ret:0x0
  5185 ms  0x7c61 PR_Connect()
  5185 ms  0x7c61 fd:0x7fb38bd900d0
           /* TID 0x7c5b */
  5193 ms  0x7c5b PR_Close()
  5193 ms  0x7c5b fd:0x7fb3a684fe50
  5196 ms  0x7c5b PR_Close()
  5196 ms  0x7c5b fd:0x7fb3a2f48790
           /* TID 0x7c61 */
  5198 ms  0x7c61 PR_Close()
  5198 ms  0x7c61 fd:0x7fb38bd900d0
           /* TID 0x7cd3 */
  5207 ms  0x7cd3 PR_Close()
  5207 ms  0x7cd3 fd:0x7fb38bd90070
           /* TID 0x7c61 */
  5210 ms  0x7c61 PR_Close()
  5210 ms  0x7c61 fd:0x7fb39d6e2df0
           /* TID 0x7cbf */
  5211 ms  0x7cbf PR_Close()
  5211 ms  0x7cbf fd:0x7fb38c029f70
  5211 ms  0x7cbf PR_Close()
  5211 ms  0x7cbf fd:0x7fb38bd90040
  5211 ms  0x7cbf PR_Close()
  5211 ms  0x7cbf fd:0x7fb38bd90040
  5211 ms  0x7cbf PR_Close()
  5211 ms  0x7cbf fd:0x7fb38bd90040
           /* TID 0x7cd3 */
  5211 ms  0x7cd3 PR_Close()
  5211 ms  0x7cd3 fd:0x7fb38bd90df0
           /* TID 0x7c69 */
  5214 ms  0x7c69 PR_Close()
  5214 ms  0x7c69 fd:0x7fb39d0636a0
  5214 ms  0x7c69 PR_Close()
  5214 ms  0x7c69 fd:0x7fb39d063760
           /* TID 0x7c5b */
  5221 ms  0x7c5b PR_Close()
  5221 ms  0x7c5b fd:0x7fb39fb8ff70
           /* TID 0x7c56 */
  5223 ms  0x7c56 PR_Close()
  5223 ms  0x7c56 fd:0x7fb39df6f130
  5223 ms  0x7c56 PR_Close()
  5223 ms  0x7c56 fd:0x7fb39d063a90
           /* TID 0x7cd3 */
  5225 ms  0x7cd3 PR_Close()
  5225 ms  0x7cd3 fd:0x7fb39d6e2310
  5227 ms  0x7cd3 PR_Close()
  5227 ms  0x7cd3 fd:0x7fb39d0637c0
  5307 ms  0x7cd3 PR_Close()
  5307 ms  0x7cd3 fd:0x7fb38bfd4160
  5327 ms  0x7cd3 PR_Close()
  5327 ms  0x7cd3 fd:0x7fb38bfd4160
  5335 ms  0x7cd3 PR_Close()
  5335 ms  0x7cd3 fd:0x7fb38bfd4400
  5337 ms  0x7cd3 PR_Close()
  5337 ms  0x7cd3 fd:0x7fb38bfd4430
  5352 ms  0x7cd3 PR_Close()
  5352 ms  0x7cd3 fd:0x7fb38c029af0
  5361 ms  0x7cd3 PR_Close()
  5361 ms  0x7cd3 fd:0x7fb39d063f10
  5370 ms  0x7cd3 PR_Close()
  5370 ms  0x7cd3 fd:0x7fb39df6f100
  5381 ms  0x7cd3 PR_Close()
  5381 ms  0x7cd3 fd:0x7fb39df6f460
  5382 ms  0x7cd3 PR_Close()
  5382 ms  0x7cd3 fd:0x7fb39df6f460
           /* TID 0x7c56 */
  5539 ms  0x7c56 PR_Close()
  5539 ms  0x7c56 fd:0x7fb38bdda220
  5540 ms  0x7c56 PR_Close()
  5540 ms  0x7c56 fd:0x7fb38bdda220
  5551 ms  0x7c56 PR_Close()
  5551 ms  0x7c56 fd:0x7fb3c54da130
  5551 ms  0x7c56 PR_Close()
  5551 ms  0x7c56 fd:0x7fb3c54da190
Process terminated
