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
           /* TID 0x6bcf */
    80 ms  0x6bcf PR_Close()
    80 ms  0x6bcf fd:0x7f7c36dd6850
           /* TID 0x6bc7 */
   282 ms  0x6bc7 SSL_ImportFD()
   282 ms  0x6bc7 ret:0x7f7c4636e3d0
   282 ms  0x6bc7 SSL_AuthCertificateHook()
   282 ms  0x6bc7 fd:0x7f7c4636e3d0
   282 ms  0x6bc7 ret:0x0
   282 ms  0x6bc7 PR_Connect()
   282 ms  0x6bc7 fd:0x7f7c4636e3d0
   500 ms  0x6bc7 SECKEY_CreateECPrivateKey()
   500 ms  0x6bc7 cx:0x7f7c36dda988
   502 ms     | 0x6bc7 EC_ValidatePublicKey()
   502 ms     | 0x6bc7 ret:0x0
   502 ms  0x6bc7 ret:0x7f7c36f4f020::7f7c36f4f020  90 7c fb 36                                      .|.6
   502 ms  0x6bc7 SECKEY_CreateECPrivateKey()
   502 ms  0x6bc7 cx:0x7f7c36dda988
   504 ms     | 0x6bc7 EC_ValidatePublicKey()
   509 ms     | 0x6bc7 ret:0x0
   509 ms  0x6bc7 ret:0x7f7c36f51020::7f7c36f51020  50 7b fb 36                                      P{.6
           /* TID 0x6c32 */
   598 ms  0x6c32 PR_Close()
   598 ms  0x6c32 fd:0x7f7c4636e310
   601 ms  0x6c32 PR_Close()
   601 ms  0x6c32 fd:0x7f7c4636e310
           /* TID 0x6bc7 */
   735 ms  SECKEY_ECParamsToKeySize()
   735 ms  0x6bc7 ret:0x100
   735 ms  0x6bc7 SECKEY_CreateECPrivateKey()
   735 ms  0x6bc7 cx:0x7f7c36dda988
   737 ms     | 0x6bc7 EC_ValidatePublicKey()
   741 ms     | 0x6bc7 ret:0x0
   741 ms  0x6bc7 ret:0x7f7c36f5a020::7f7c36f5a020  d0 a8 ff 36                                      ...6
   742 ms  0x6bc7 PK11_PubDeriveWithKDF()
   742 ms  0x6bc7 seckey:0x7f7c36f5a020
   742 ms     | 0x6bc7 EC_ValidatePublicKey()
   746 ms     | 0x6bc7 ret:0x0
   750 ms  0x6bc7 ret:0x7f7c410e5c00
   750 ms  0x6bc7 PK11_DeriveWithFlags()
   750 ms  0x6bc7 basekey:0x7f7c410e5c00
   750 ms     | 0x6bc7 PK11_DeriveWithTemplate()
   750 ms  0x6bc7 ret:0x7f7c36feab80
   750 ms  0x6bc7 PK11_Derive()
   750 ms  0x6bc7 basekey:0x7f7c36feab80
   750 ms     | 0x6bc7 PK11_DeriveWithTemplate()
   750 ms  0x6bc7 ret:0x7f7c36feac80
   750 ms  0x6bc7 SECKEY_DestroyPrivateKey()
   750 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  d0 a8 ff 36                                      ...6
   750 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  e5 e5 e5 e5                                      ....
   751 ms  0x6bc7 PK11_Encrypt()
   751 ms  0x6bc7 symkey:0x7f7c36feae00
   752 ms  0x6bc7 PR_Connect()
   752 ms  0x6bc7 fd:0x7f7c4636ee50
           /* TID 0x6c32 */
   765 ms  0x6c32 PR_Close()
   765 ms  0x6c32 fd:0x7f7c4636edf0
           /* TID 0x6bcf */
   805 ms  0x6bcf PR_Close()
   805 ms  0x6bcf fd:0x7f7c4636ed30
           /* TID 0x6c28 */
   805 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   806 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
   806 ms  0x6bc7 SSL_AuthCertificateComplete()
   806 ms  0x6bc7 fd:0x7f7c4636e3d0
   806 ms  0x6bc7 err:0x0
   807 ms  0x6bc7 PK11_Encrypt()
   807 ms  0x6bc7 symkey:0x7f7c36feae00
   969 ms  0x6bc7 SECKEY_DestroyPrivateKey()
   969 ms  0x6bc7 privk:0x7f7c36f51020::7f7c36f51020  50 7b fb 36                                      P{.6
   970 ms  0x6bc7 privk:0x7f7c36f51020::7f7c36f51020  e5 e5 e5 e5                                      ....
   970 ms  0x6bc7 SECKEY_DestroyPrivateKey()
   970 ms  0x6bc7 privk:0x7f7c36f4f020::7f7c36f4f020  90 7c fb 36                                      .|.6
   970 ms  0x6bc7 privk:0x7f7c36f4f020::7f7c36f4f020  e5 e5 e5 e5                                      ....
  1196 ms  0x6bc7 SSL_ImportFD()
  1196 ms  0x6bc7 ret:0x7f7c261181c0
  1196 ms  0x6bc7 SSL_AuthCertificateHook()
  1196 ms  0x6bc7 fd:0x7f7c261181c0
  1196 ms  0x6bc7 ret:0x0
  1196 ms  0x6bc7 PR_Connect()
  1196 ms  0x6bc7 fd:0x7f7c261181c0
  1221 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  1221 ms  0x6bc7 cx:0x7f7c36fee428
  1222 ms     | 0x6bc7 EC_ValidatePublicKey()
  1222 ms     | 0x6bc7 ret:0x0
  1222 ms  0x6bc7 ret:0x7f7c36f50820::7f7c36f50820  d0 7d fb 36                                      .}.6
  1222 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  1222 ms  0x6bc7 cx:0x7f7c36fee428
  1223 ms     | 0x6bc7 EC_ValidatePublicKey()
  1224 ms     | 0x6bc7 ret:0x0
  1224 ms  0x6bc7 ret:0x7f7c36f56820::7f7c36f56820  f0 a6 ff 36                                      ...6
           /* TID 0x6c28 */
  1276 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1277 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  1277 ms  SECKEY_ECParamsToKeySize()
  1277 ms  0x6bc7 ret:0x100
  1277 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  1277 ms  0x6bc7 cx:0x7f7c36fee428
  1278 ms     | 0x6bc7 EC_ValidatePublicKey()
  1283 ms     | 0x6bc7 ret:0x0
  1283 ms  0x6bc7 ret:0x7f7c36f5a020::7f7c36f5a020  70 a9 ff 36                                      p..6
  1283 ms  0x6bc7 PK11_PubDeriveWithKDF()
  1283 ms  0x6bc7 seckey:0x7f7c36f5a020
  1283 ms     | 0x6bc7 EC_ValidatePublicKey()
  1287 ms     | 0x6bc7 ret:0x0
  1290 ms  0x6bc7 ret:0x7f7c410e5c00
  1290 ms  0x6bc7 PK11_DeriveWithFlags()
  1290 ms  0x6bc7 basekey:0x7f7c410e5c00
  1290 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  1290 ms  0x6bc7 ret:0x7f7c36f7dc80
  1290 ms  0x6bc7 PK11_Derive()
  1290 ms  0x6bc7 basekey:0x7f7c36f7dc80
  1290 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  1290 ms  0x6bc7 ret:0x7f7c36feb680
  1290 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  1290 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  70 a9 ff 36                                      p..6
  1290 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  e5 e5 e5 e5                                      ....
  1290 ms  0x6bc7 PK11_Encrypt()
  1290 ms  0x6bc7 symkey:0x7f7c36febb80
  1291 ms  0x6bc7 SSL_AuthCertificateComplete()
  1291 ms  0x6bc7 fd:0x7f7c261181c0
  1291 ms  0x6bc7 err:0x0
  1292 ms  0x6bc7 PK11_Encrypt()
  1292 ms  0x6bc7 symkey:0x7f7c36febb80
  1341 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  1341 ms  0x6bc7 privk:0x7f7c36f56820::7f7c36f56820  f0 a6 ff 36                                      ...6
  1341 ms  0x6bc7 privk:0x7f7c36f56820::7f7c36f56820  e5 e5 e5 e5                                      ....
  1341 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  1341 ms  0x6bc7 privk:0x7f7c36f50820::7f7c36f50820  d0 7d fb 36                                      .}.6
  1341 ms  0x6bc7 privk:0x7f7c36f50820::7f7c36f50820  e5 e5 e5 e5                                      ....
  1343 ms  0x6bc7 PK11_Encrypt()
  1343 ms  0x6bc7 symkey:0x7f7c36febb80
  1371 ms  0x6bc7 PK11_Encrypt()
  1371 ms  0x6bc7 symkey:0x7f7c36febb80
  1401 ms  0x6bc7 PK11_Encrypt()
  1401 ms  0x6bc7 symkey:0x7f7c36febb80
  1430 ms  0x6bc7 PK11_Encrypt()
  1430 ms  0x6bc7 symkey:0x7f7c36febb80
  1543 ms  0x6bc7 PK11_Encrypt()
  1543 ms  0x6bc7 symkey:0x7f7c36febb80
  1577 ms  0x6bc7 PK11_Encrypt()
  1577 ms  0x6bc7 symkey:0x7f7c36febb80
  1609 ms  0x6bc7 PK11_Encrypt()
  1609 ms  0x6bc7 symkey:0x7f7c36febb80
           /* TID 0x6c23 */
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c261182b0
  1637 ms  0x6c23 PR_Close()
  1637 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c261182b0
  1638 ms  0x6c23 PR_Close()
  1638 ms  0x6c23 fd:0x7f7c26118370
  1639 ms  0x6c23 PR_Close()
  1639 ms  0x6c23 fd:0x7f7c261182b0
  1639 ms  0x6c23 PR_Close()
  1639 ms  0x6c23 fd:0x7f7c26118370
  1641 ms  0x6c23 PR_Close()
  1641 ms  0x6c23 fd:0x7f7c261182b0
  1641 ms  0x6c23 PR_Close()
  1641 ms  0x6c23 fd:0x7f7c26118280
  1643 ms  0x6c23 PR_Close()
  1643 ms  0x6c23 fd:0x7f7c26118280
  1644 ms  0x6c23 PR_Close()
  1644 ms  0x6c23 fd:0x7f7c261182b0
  1645 ms  0x6c23 PR_Close()
  1645 ms  0x6c23 fd:0x7f7c261182b0
  1646 ms  0x6c23 PR_Close()
  1646 ms  0x6c23 fd:0x7f7c261182b0
  1647 ms  0x6c23 PR_Close()
  1647 ms  0x6c23 fd:0x7f7c261182b0
  1648 ms  0x6c23 PR_Close()
  1648 ms  0x6c23 fd:0x7f7c261182b0
  1694 ms  0x6c23 PR_Close()
  1694 ms  0x6c23 fd:0x7f7c261182b0
  1695 ms  0x6c23 PR_Close()
  1695 ms  0x6c23 fd:0x7f7c261182b0
  1702 ms  0x6c23 PR_Close()
  1702 ms  0x6c23 fd:0x7f7c261182b0
  1702 ms  0x6c23 PR_Close()
  1702 ms  0x6c23 fd:0x7f7c261182b0
  1709 ms  0x6c23 PR_Close()
  1709 ms  0x6c23 fd:0x7f7c261182b0
  1709 ms  0x6c23 PR_Close()
  1709 ms  0x6c23 fd:0x7f7c261182b0
  1711 ms  0x6c23 PR_Close()
  1711 ms  0x6c23 fd:0x7f7c261182b0
  1711 ms  0x6c23 PR_Close()
  1711 ms  0x6c23 fd:0x7f7c261182b0
           /* TID 0x6c20 */
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1711 ms  0x6c20 PR_Close()
  1711 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
  1712 ms  0x6c20 PR_Close()
  1712 ms  0x6c20 fd:0x7f7c261182b0
           /* TID 0x6c32 */
  2215 ms  0x6c32 PR_Close()
  2215 ms  0x6c32 fd:0x7f7c26118670
  2218 ms  0x6c32 PR_Close()
  2218 ms  0x6c32 fd:0x7f7c26118670
  2869 ms  0x6c32 PR_Close()
  2869 ms  0x6c32 fd:0x7f7c26118670
           /* TID 0x6bcf */
  4177 ms  0x6bcf PR_Close()
  4177 ms  0x6bcf fd:0x7f7c26118670
  4177 ms  0x6bcf PR_Close()
  4177 ms  0x6bcf fd:0x7f7c261187c0
  4177 ms  0x6bcf PR_Close()
  4177 ms  0x6bcf fd:0x7f7c26118820
           /* TID 0x6bc7 */
  6044 ms  0x6bc7 SSL_ImportFD()
  6044 ms  0x6bc7 ret:0x7f7c260e0820
  6044 ms  0x6bc7 SSL_AuthCertificateHook()
  6044 ms  0x6bc7 fd:0x7f7c260e0820
  6044 ms  0x6bc7 ret:0x0
  6044 ms  0x6bc7 PR_Connect()
  6044 ms  0x6bc7 fd:0x7f7c260e0820
  6095 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  6095 ms  0x6bc7 cx:0x7f7c36fee768
  6097 ms     | 0x6bc7 EC_ValidatePublicKey()
  6097 ms     | 0x6bc7 ret:0x0
  6097 ms  0x6bc7 ret:0x7f7c3cfaf020::7f7c3cfaf020  d0 58 46 38                                      .XF8
  6098 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  6098 ms  0x6bc7 cx:0x7f7c36fee768
  6100 ms     | 0x6bc7 EC_ValidatePublicKey()
  6124 ms     | 0x6bc7 ret:0x0
  6124 ms  0x6bc7 ret:0x7f7c25f03020::7f7c25f03020  f0 56 46 38                                      .VF8
  6193 ms  SECKEY_ECParamsToKeySize()
  6193 ms  0x6bc7 ret:0x100
  6193 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  6193 ms  0x6bc7 cx:0x7f7c36fee768
  6195 ms     | 0x6bc7 EC_ValidatePublicKey()
  6200 ms     | 0x6bc7 ret:0x0
  6200 ms  0x6bc7 ret:0x7f7c25f10020::7f7c25f10020  e0 d7 ff 45                                      ...E
  6201 ms  0x6bc7 PK11_PubDeriveWithKDF()
  6201 ms  0x6bc7 seckey:0x7f7c25f10020
  6201 ms     | 0x6bc7 EC_ValidatePublicKey()
  6205 ms     | 0x6bc7 ret:0x0
  6210 ms  0x6bc7 ret:0x7f7c410e5c00
  6210 ms  0x6bc7 PK11_DeriveWithFlags()
  6210 ms  0x6bc7 basekey:0x7f7c410e5c00
  6210 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  6210 ms  0x6bc7 ret:0x7f7c260e5080
  6210 ms  0x6bc7 PK11_Derive()
  6210 ms  0x6bc7 basekey:0x7f7c260e5080
  6210 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  6210 ms  0x6bc7 ret:0x7f7c260e5100
  6210 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  6210 ms  0x6bc7 privk:0x7f7c25f10020::7f7c25f10020  e0 d7 ff 45                                      ...E
  6210 ms  0x6bc7 privk:0x7f7c25f10020::7f7c25f10020  e5 e5 e5 e5                                      ....
  6211 ms  0x6bc7 PK11_Encrypt()
  6211 ms  0x6bc7 symkey:0x7f7c260e5280
  6213 ms  0x6bc7 PR_Connect()
  6213 ms  0x6bc7 fd:0x7f7c260e0ca0
           /* TID 0x6bcf */
  6265 ms  0x6bcf PR_Close()
  6265 ms  0x6bcf fd:0x7f7c260e0ee0
           /* TID 0x6c28 */
  6266 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6266 ms  0x6c28 ret:0x0
  6266 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6266 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  6274 ms  0x6bc7 SSL_AuthCertificateComplete()
  6274 ms  0x6bc7 fd:0x7f7c260e0820
  6274 ms  0x6bc7 err:0x0
  6274 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  6274 ms     | 0x6bc7 privk:0x7f7c25f03020::7f7c25f03020  f0 56 46 38                                      .VF8
  6274 ms     | 0x6bc7 privk:0x7f7c25f03020::7f7c25f03020  e5 e5 e5 e5                                      ....
  6274 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  6274 ms     | 0x6bc7 privk:0x7f7c3cfaf020::7f7c3cfaf020  d0 58 46 38                                      .XF8
  6275 ms     | 0x6bc7 privk:0x7f7c3cfaf020::7f7c3cfaf020  e5 e5 e5 e5                                      ....
  6275 ms  0x6bc7 PK11_Encrypt()
  6275 ms  0x6bc7 symkey:0x7f7c260e5280
           /* TID 0x6bde */
  6344 ms  0x6bde PR_Close()
  6344 ms  0x6bde fd:0x7f7c36dd6d60
           /* TID 0x6bcf */
  6428 ms  0x6bcf PR_Close()
  6428 ms  0x6bcf fd:0x7f7c45358c40
           /* TID 0x6bc7 */
  7055 ms  0x6bc7 SSL_ImportFD()
  7055 ms  0x6bc7 ret:0x7f7c36dd6c10
  7055 ms  0x6bc7 SSL_AuthCertificateHook()
  7055 ms  0x6bc7 fd:0x7f7c36dd6c10
  7055 ms  0x6bc7 ret:0x0
  7056 ms  0x6bc7 PR_Connect()
  7056 ms  0x6bc7 fd:0x7f7c36dd6c10
  7081 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7081 ms  0x6bc7 cx:0x7f7c36feef88
  7083 ms     | 0x6bc7 EC_ValidatePublicKey()
  7083 ms     | 0x6bc7 ret:0x0
  7083 ms  0x6bc7 ret:0x7f7c36d53020::7f7c36d53020  20 be dd 36                                       ..6
  7083 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7083 ms  0x6bc7 cx:0x7f7c36feef88
  7087 ms     | 0x6bc7 EC_ValidatePublicKey()
  7092 ms     | 0x6bc7 ret:0x0
  7092 ms  0x6bc7 ret:0x7f7c36d56820::7f7c36d56820  f0 61 df 36                                      .a.6
  7118 ms  0x6bc7 PK11_Derive()
  7118 ms  0x6bc7 basekey:0x7f7c410e5c00
  7118 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7118 ms  0x6bc7 ret:0x7f7c2601a600
  7118 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7118 ms  0x6bc7 seckey:0x7f7c36d56820
  7119 ms     | 0x6bc7 EC_ValidatePublicKey()
  7123 ms     | 0x6bc7 ret:0x0
  7127 ms  0x6bc7 ret:0x7f7c410e5c00
  7127 ms  SECKEY_ECParamsToKeySize()
  7127 ms  0x6bc7 ret:0x100
  7127 ms  0x6bc7 PK11_DeriveWithFlags()
  7127 ms  0x6bc7 basekey:0x7f7c2601a600
  7127 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7127 ms  0x6bc7 ret:0x7f7c2607d300
  7127 ms  0x6bc7 PK11_Derive()
  7127 ms  0x6bc7 basekey:0x7f7c410e5c00
  7127 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7127 ms  0x6bc7 ret:0x7f7c2607dd00
  7127 ms  0x6bc7 PK11_DeriveWithFlags()
  7127 ms  0x6bc7 basekey:0x7f7c2607dd00
  7127 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7127 ms  0x6bc7 ret:0x7f7c2601a600
  7127 ms  0x6bc7 PK11_DeriveWithFlags()
  7127 ms  0x6bc7 basekey:0x7f7c2607dd00
  7127 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7127 ms  0x6bc7 ret:0x7f7c410e5c00
  7127 ms  0x6bc7 PK11_DeriveWithFlags()
  7127 ms  0x6bc7 basekey:0x7f7c2607dd00
  7127 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7128 ms  0x6bc7 ret:0x7f7c2607d300
  7128 ms  0x6bc7 PK11_Derive()
  7128 ms  0x6bc7 basekey:0x7f7c2607e700
  7128 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7128 ms  0x6bc7 ret:0x7f7c260e4d80
  7128 ms  0x6bc7 PK11_DeriveWithFlags()
  7128 ms  0x6bc7 basekey:0x7f7c410e5c00
  7128 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7128 ms  0x6bc7 ret:0x7f7c2607dd00
  7128 ms  0x6bc7 PK11_DeriveWithFlags()
  7128 ms  0x6bc7 basekey:0x7f7c410e5c00
  7128 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7128 ms  0x6bc7 ret:0x7f7c2607d300
           /* TID 0x6c28 */
  7130 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7130 ms  0x6c28 ret:0x0
  7130 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7130 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7131 ms  0x6bc7 PK11_DeriveWithFlags()
  7131 ms  0x6bc7 basekey:0x7f7c410e5c00
  7131 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7131 ms  0x6bc7 ret:0x7f7c2607d300
  7131 ms  0x6bc7 SSL_AuthCertificateComplete()
  7131 ms  0x6bc7 fd:0x7f7c36dd6c10
  7131 ms  0x6bc7 err:0x0
  7131 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7131 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7131 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7131 ms     | 0x6bc7 ret:0x7f7c2607d300
  7131 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7131 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7131 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7131 ms     | 0x6bc7 ret:0x7f7c2607e700
  7131 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7131 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7132 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7132 ms     | 0x6bc7 ret:0x7f7c260e5580
  7132 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7132 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7132 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7132 ms     | 0x6bc7 ret:0x7f7c260fa200
  7132 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7132 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7132 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7132 ms     | 0x6bc7 ret:0x7f7c260fa280
  7132 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7132 ms     | 0x6bc7 basekey:0x7f7c2607e700
  7132 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7132 ms     | 0x6bc7 ret:0x7f7c260fa280
  7132 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7132 ms     | 0x6bc7 basekey:0x7f7c2607e700
  7132 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7132 ms     | 0x6bc7 ret:0x7f7c260fa300
  7134 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7134 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7134 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7134 ms     | 0x6bc7 ret:0x7f7c2607dd00
  7134 ms     | 0x6bc7 PK11_Encrypt()
  7134 ms     | 0x6bc7 symkey:0x7f7c260fa200
  7135 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7135 ms     | 0x6bc7 basekey:0x7f7c2607d300
  7135 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7135 ms     | 0x6bc7 ret:0x7f7c2607dd00
  7135 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7135 ms     | 0x6bc7 basekey:0x7f7c2607d300
  7135 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7135 ms     | 0x6bc7 ret:0x7f7c260fa300
  7135 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7135 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7135 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7135 ms     | 0x6bc7 ret:0x7f7c260fa200
  7135 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7135 ms     | 0x6bc7 privk:0x7f7c36d56820::7f7c36d56820  f0 61 df 36                                      .a.6
  7136 ms     | 0x6bc7 privk:0x7f7c36d56820::7f7c36d56820  e5 e5 e5 e5                                      ....
  7136 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7136 ms     | 0x6bc7 privk:0x7f7c36d53020::7f7c36d53020  20 be dd 36                                       ..6
  7136 ms     | 0x6bc7 privk:0x7f7c36d53020::7f7c36d53020  e5 e5 e5 e5                                      ....
  7137 ms  0x6bc7 PK11_Encrypt()
  7137 ms  0x6bc7 symkey:0x7f7c2607dd00
  7137 ms  0x6bc7 PK11_Encrypt()
  7137 ms  0x6bc7 symkey:0x7f7c2607dd00
  7160 ms  0x6bc7 PK11_DeriveWithFlags()
  7160 ms  0x6bc7 basekey:0x7f7c260fa200
  7160 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7160 ms  0x6bc7 ret:0x7f7c410e5c00
  7160 ms  0x6bc7 PK11_DeriveWithFlags()
  7160 ms  0x6bc7 basekey:0x7f7c260fa200
  7160 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7160 ms  0x6bc7 ret:0x7f7c410e5c00
  7160 ms  0x6bc7 PK11_Encrypt()
  7160 ms  0x6bc7 symkey:0x7f7c2607dd00
  7230 ms  0x6bc7 SSL_ImportFD()
  7231 ms  0x6bc7 ret:0x7f7c36f77280
  7231 ms  0x6bc7 SSL_AuthCertificateHook()
  7231 ms  0x6bc7 fd:0x7f7c36f77280
  7231 ms  0x6bc7 ret:0x0
  7231 ms  0x6bc7 PR_Connect()
  7231 ms  0x6bc7 fd:0x7f7c36f77280
  7231 ms  0x6bc7 SSL_ImportFD()
  7231 ms  0x6bc7 ret:0x7f7c36f77310
  7231 ms  0x6bc7 SSL_AuthCertificateHook()
  7231 ms  0x6bc7 fd:0x7f7c36f77310
  7231 ms  0x6bc7 ret:0x0
  7233 ms  0x6bc7 PK11_Encrypt()
  7233 ms  0x6bc7 symkey:0x7f7c2607dd00
  7236 ms  0x6bc7 PK11_Encrypt()
  7236 ms  0x6bc7 symkey:0x7f7c2607dd00
  7238 ms  0x6bc7 PK11_Encrypt()
  7238 ms  0x6bc7 symkey:0x7f7c2607dd00
  7238 ms  0x6bc7 PK11_Encrypt()
  7238 ms  0x6bc7 symkey:0x7f7c2607dd00
  7239 ms  0x6bc7 PR_Connect()
  7239 ms  0x6bc7 fd:0x7f7c36f77310
  7239 ms  0x6bc7 SSL_ImportFD()
  7239 ms  0x6bc7 ret:0x7f7c26118850
  7239 ms  0x6bc7 SSL_AuthCertificateHook()
  7239 ms  0x6bc7 fd:0x7f7c26118850
  7239 ms  0x6bc7 ret:0x0
  7239 ms  0x6bc7 PR_Connect()
  7239 ms  0x6bc7 fd:0x7f7c26118850
  7243 ms  0x6bc7 SSL_ImportFD()
  7243 ms  0x6bc7 ret:0x7f7c260e0df0
  7243 ms  0x6bc7 SSL_AuthCertificateHook()
  7243 ms  0x6bc7 fd:0x7f7c260e0df0
  7243 ms  0x6bc7 ret:0x0
  7243 ms  0x6bc7 PR_Connect()
  7243 ms  0x6bc7 fd:0x7f7c260e0df0
  7244 ms  0x6bc7 SSL_ImportFD()
  7244 ms  0x6bc7 ret:0x7f7c36de4d30
  7244 ms  0x6bc7 SSL_AuthCertificateHook()
  7244 ms  0x6bc7 fd:0x7f7c36de4d30
  7244 ms  0x6bc7 ret:0x0
  7244 ms  0x6bc7 PR_Connect()
  7244 ms  0x6bc7 fd:0x7f7c36de4d30
  7245 ms  0x6bc7 SSL_ImportFD()
  7245 ms  0x6bc7 ret:0x7f7c36de4d90
  7245 ms  0x6bc7 SSL_AuthCertificateHook()
  7245 ms  0x6bc7 fd:0x7f7c36de4d90
  7245 ms  0x6bc7 ret:0x0
  7245 ms  0x6bc7 PR_Connect()
  7245 ms  0x6bc7 fd:0x7f7c36de4d90
  7245 ms  0x6bc7 SSL_ImportFD()
  7245 ms  0x6bc7 ret:0x7f7c36de4df0
  7245 ms  0x6bc7 SSL_AuthCertificateHook()
  7245 ms  0x6bc7 fd:0x7f7c36de4df0
  7245 ms  0x6bc7 ret:0x0
  7245 ms  0x6bc7 PR_Connect()
  7245 ms  0x6bc7 fd:0x7f7c36de4df0
  7246 ms  0x6bc7 PK11_Encrypt()
  7246 ms  0x6bc7 symkey:0x7f7c2607dd00
  7246 ms  0x6bc7 PK11_Encrypt()
  7246 ms  0x6bc7 symkey:0x7f7c2607dd00
  7258 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7258 ms  0x6bc7 cx:0x7f7c36fef468
  7259 ms     | 0x6bc7 EC_ValidatePublicKey()
  7259 ms     | 0x6bc7 ret:0x0
  7259 ms  0x6bc7 ret:0x7f7c36f4c020::7f7c36f4c020  f0 61 df 36                                      .a.6
  7259 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7259 ms  0x6bc7 cx:0x7f7c36fef468
  7261 ms     | 0x6bc7 EC_ValidatePublicKey()
  7266 ms     | 0x6bc7 ret:0x0
  7266 ms  0x6bc7 ret:0x7f7c36f50020::7f7c36f50020  c0 6e df 36                                      .n.6
  7268 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7268 ms  0x6bc7 cx:0x7f7c36fef948
  7269 ms     | 0x6bc7 EC_ValidatePublicKey()
  7269 ms     | 0x6bc7 ret:0x0
  7269 ms  0x6bc7 ret:0x7f7c36f58020::7f7c36f58020  10 35 f7 36                                      .5.6
  7270 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7270 ms  0x6bc7 cx:0x7f7c36fef948
  7271 ms     | 0x6bc7 EC_ValidatePublicKey()
  7274 ms     | 0x6bc7 ret:0x0
  7274 ms  0x6bc7 ret:0x7f7c36f5f020::7f7c36f5f020  90 37 f7 36                                      .7.6
  7275 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7275 ms  0x6bc7 cx:0x7f7c36fef608
  7276 ms     | 0x6bc7 EC_ValidatePublicKey()
  7276 ms     | 0x6bc7 ret:0x0
  7276 ms  0x6bc7 ret:0x7f7c383da020::7f7c383da020  e0 72 fb 36                                      .r.6
  7276 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7276 ms  0x6bc7 cx:0x7f7c36fef608
  7277 ms     | 0x6bc7 EC_ValidatePublicKey()
  7280 ms     | 0x6bc7 ret:0x0
  7280 ms  0x6bc7 ret:0x7f7c38a05820::7f7c38a05820  90 f2 40 37                                      ..@7
           /* TID 0x6bcf */
  7283 ms  0x6bcf PR_Close()
  7283 ms  0x6bcf fd:0x7f7c36f77dc0
  7291 ms  0x6bcf PR_Close()
  7291 ms  0x6bcf fd:0x7f7c36f77df0
           /* TID 0x6bc7 */
  7292 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7292 ms  0x6bc7 cx:0x7f7c36feffc8
  7293 ms     | 0x6bc7 EC_ValidatePublicKey()
  7293 ms     | 0x6bc7 ret:0x0
  7293 ms  0x6bc7 ret:0x7f7c38a07020::7f7c38a07020  70 f9 40 37                                      p.@7
  7293 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7293 ms  0x6bc7 cx:0x7f7c36feffc8
  7294 ms     | 0x6bc7 EC_ValidatePublicKey()
  7295 ms     | 0x6bc7 ret:0x0
  7295 ms  0x6bc7 ret:0x7f7c38a1c820::7f7c38a1c820  90 f2 4f 37                                      ..O7
  7296 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7296 ms  0x6bc7 cx:0x7f7c36fefe28
  7296 ms     | 0x6bc7 EC_ValidatePublicKey()
  7296 ms     | 0x6bc7 ret:0x0
  7296 ms  0x6bc7 ret:0x7f7c3bdcd820::7f7c3bdcd820  80 93 c2 37                                      ...7
  7296 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7296 ms  0x6bc7 cx:0x7f7c36fefe28
  7297 ms     | 0x6bc7 EC_ValidatePublicKey()
  7298 ms     | 0x6bc7 ret:0x0
  7298 ms  0x6bc7 ret:0x7f7c3ce02820::7f7c3ce02820  f0 96 c2 37                                      ...7
  7299 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7299 ms  0x6bc7 cx:0x7f7c36fefc88
  7299 ms     | 0x6bc7 EC_ValidatePublicKey()
  7299 ms     | 0x6bc7 ret:0x0
  7299 ms  0x6bc7 ret:0x7f7c3ce09020::7f7c3ce09020  20 99 c2 37                                       ..7
  7299 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7299 ms  0x6bc7 cx:0x7f7c36fefc88
  7300 ms     | 0x6bc7 EC_ValidatePublicKey()
  7302 ms     | 0x6bc7 ret:0x0
  7302 ms  0x6bc7 ret:0x7f7c3ce0d020::7f7c3ce0d020  40 b2 3f 38                                      @.?8
  7302 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7302 ms  0x6bc7 cx:0x7f7c36fefae8
  7303 ms     | 0x6bc7 EC_ValidatePublicKey()
  7303 ms     | 0x6bc7 ret:0x0
  7303 ms  0x6bc7 ret:0x7f7c3ce14020::7f7c3ce14020  00 b6 3f 38                                      ..?8
  7303 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  7303 ms  0x6bc7 cx:0x7f7c36fefae8
  7303 ms     | 0x6bc7 EC_ValidatePublicKey()
  7305 ms     | 0x6bc7 ret:0x0
  7305 ms  0x6bc7 ret:0x7f7c3ce19020::7f7c3ce19020  a0 bb 3f 38                                      ..?8
  7305 ms  0x6bc7 PK11_Derive()
  7305 ms  0x6bc7 basekey:0x7f7c410e5c00
  7305 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7305 ms  0x6bc7 ret:0x7f7c2601a600
  7305 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7305 ms  0x6bc7 seckey:0x7f7c36f5f020
  7305 ms     | 0x6bc7 EC_ValidatePublicKey()
  7307 ms     | 0x6bc7 ret:0x0
  7308 ms  0x6bc7 ret:0x7f7c410e5c00
  7308 ms  SECKEY_ECParamsToKeySize()
  7308 ms  0x6bc7 ret:0x100
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c2601a600
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c260e4d80
  7308 ms  0x6bc7 PK11_Derive()
  7308 ms  0x6bc7 basekey:0x7f7c410e5c00
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c260fa300
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c260fa300
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c2601a600
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c260fa300
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c410e5c00
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c260fa300
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c260e4d80
  7308 ms  0x6bc7 PK11_Derive()
  7308 ms  0x6bc7 basekey:0x7f7c2610a680
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c2610a700
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c410e5c00
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7308 ms  0x6bc7 ret:0x7f7c260fa300
  7308 ms  0x6bc7 PK11_DeriveWithFlags()
  7308 ms  0x6bc7 basekey:0x7f7c410e5c00
  7308 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7309 ms  0x6bc7 ret:0x7f7c260e4d80
           /* TID 0x6c28 */
  7309 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7309 ms  0x6c28 ret:0x0
  7309 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7309 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7310 ms  0x6bc7 PK11_DeriveWithFlags()
  7310 ms  0x6bc7 basekey:0x7f7c410e5c00
  7310 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7310 ms  0x6bc7 ret:0x7f7c260e4d80
  7310 ms  0x6bc7 PK11_Derive()
  7310 ms  0x6bc7 basekey:0x7f7c260e4d80
  7310 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7310 ms  0x6bc7 ret:0x7f7c2610a680
  7310 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7310 ms  0x6bc7 seckey:0x7f7c36f50020
  7310 ms     | 0x6bc7 EC_ValidatePublicKey()
  7311 ms     | 0x6bc7 ret:0x0
  7313 ms  0x6bc7 ret:0x7f7c260e4d80
  7313 ms  SECKEY_ECParamsToKeySize()
  7313 ms  0x6bc7 ret:0x100
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c2610a680
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a780
  7313 ms  0x6bc7 PK11_Derive()
  7313 ms  0x6bc7 basekey:0x7f7c260e4d80
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a880
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c2610a880
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a680
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c2610a880
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c260e4d80
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c2610a880
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a780
  7313 ms  0x6bc7 PK11_Derive()
  7313 ms  0x6bc7 basekey:0x7f7c2610a980
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610aa00
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c260e4d80
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a880
  7313 ms  0x6bc7 PK11_DeriveWithFlags()
  7313 ms  0x6bc7 basekey:0x7f7c260e4d80
  7313 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7313 ms  0x6bc7 ret:0x7f7c2610a780
           /* TID 0x6c28 */
  7314 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7314 ms  0x6c28 ret:0x0
  7314 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7314 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7314 ms  0x6bc7 PK11_DeriveWithFlags()
  7314 ms  0x6bc7 basekey:0x7f7c260e4d80
  7314 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms  0x6bc7 ret:0x7f7c2610a780
  7314 ms  0x6bc7 SSL_AuthCertificateComplete()
  7314 ms  0x6bc7 fd:0x7f7c26118850
  7314 ms  0x6bc7 err:0x0
  7314 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7314 ms     | 0x6bc7 basekey:0x7f7c2610a700
  7314 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms     | 0x6bc7 ret:0x7f7c2610a780
  7314 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7314 ms     | 0x6bc7 basekey:0x7f7c2610a700
  7314 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms     | 0x6bc7 ret:0x7f7c2610a980
  7314 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7314 ms     | 0x6bc7 basekey:0x7f7c2610a700
  7314 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms     | 0x6bc7 ret:0x7f7c2610aa80
  7314 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7314 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7314 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms     | 0x6bc7 ret:0x7f7c2610ab00
  7314 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7314 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7314 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7314 ms     | 0x6bc7 ret:0x7f7c2610ac80
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a980
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ac80
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a980
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ad00
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c260fa300
  7315 ms     | 0x6bc7 PK11_Encrypt()
  7315 ms     | 0x6bc7 symkey:0x7f7c2610ab00
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a780
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c260fa300
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a780
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ad00
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a700
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ab00
  7315 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7315 ms     | 0x6bc7 privk:0x7f7c36f5f020::7f7c36f5f020  90 37 f7 36                                      .7.6
  7315 ms     | 0x6bc7 privk:0x7f7c36f5f020::7f7c36f5f020  e5 e5 e5 e5                                      ....
  7315 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7315 ms     | 0x6bc7 privk:0x7f7c36f58020::7f7c36f58020  10 35 f7 36                                      .5.6
  7315 ms     | 0x6bc7 privk:0x7f7c36f58020::7f7c36f58020  e5 e5 e5 e5                                      ....
  7315 ms  0x6bc7 SSL_AuthCertificateComplete()
  7315 ms  0x6bc7 fd:0x7f7c36f77280
  7315 ms  0x6bc7 err:0x0
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c410e5c00
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2601a600
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610a700
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ad00
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7315 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7315 ms     | 0x6bc7 ret:0x7f7c2610ad80
  7315 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7315 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610ad80
  7316 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7316 ms     | 0x6bc7 basekey:0x7f7c2601a600
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610ae00
  7316 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7316 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610a880
  7316 ms     | 0x6bc7 PK11_Encrypt()
  7316 ms     | 0x6bc7 symkey:0x7f7c2610ad00
  7316 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7316 ms     | 0x6bc7 basekey:0x7f7c410e5c00
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610a880
  7316 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7316 ms     | 0x6bc7 basekey:0x7f7c410e5c00
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610ae00
  7316 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7316 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7316 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7316 ms     | 0x6bc7 ret:0x7f7c2610ad00
  7316 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7316 ms     | 0x6bc7 privk:0x7f7c36f50020::7f7c36f50020  c0 6e df 36                                      .n.6
  7316 ms     | 0x6bc7 privk:0x7f7c36f50020::7f7c36f50020  e5 e5 e5 e5                                      ....
  7316 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7316 ms     | 0x6bc7 privk:0x7f7c36f4c020::7f7c36f4c020  f0 61 df 36                                      .a.6
  7316 ms     | 0x6bc7 privk:0x7f7c36f4c020::7f7c36f4c020  e5 e5 e5 e5                                      ....
  7316 ms  0x6bc7 PK11_Encrypt()
  7316 ms  0x6bc7 symkey:0x7f7c260fa300
  7317 ms  0x6bc7 PK11_Derive()
  7317 ms  0x6bc7 basekey:0x7f7c260e4d80
  7317 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7317 ms  0x6bc7 ret:0x7f7c2610a680
  7317 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7317 ms  0x6bc7 seckey:0x7f7c38a05820
  7317 ms     | 0x6bc7 EC_ValidatePublicKey()
  7318 ms     | 0x6bc7 ret:0x0
  7319 ms  0x6bc7 ret:0x7f7c260e4d80
  7319 ms  SECKEY_ECParamsToKeySize()
  7319 ms  0x6bc7 ret:0x100
  7319 ms  0x6bc7 PK11_DeriveWithFlags()
  7319 ms  0x6bc7 basekey:0x7f7c2610a680
  7319 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7319 ms  0x6bc7 ret:0x7f7c2610aa00
  7319 ms  0x6bc7 PK11_Derive()
  7319 ms  0x6bc7 basekey:0x7f7c260e4d80
  7319 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610ae00
  7320 ms  0x6bc7 PK11_DeriveWithFlags()
  7320 ms  0x6bc7 basekey:0x7f7c2610ae00
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610a680
  7320 ms  0x6bc7 PK11_DeriveWithFlags()
  7320 ms  0x6bc7 basekey:0x7f7c2610ae00
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c260e4d80
  7320 ms  0x6bc7 PK11_DeriveWithFlags()
  7320 ms  0x6bc7 basekey:0x7f7c2610ae00
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610aa00
  7320 ms  0x6bc7 PK11_Derive()
  7320 ms  0x6bc7 basekey:0x7f7c2610af00
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610af80
  7320 ms  0x6bc7 PK11_DeriveWithFlags()
  7320 ms  0x6bc7 basekey:0x7f7c260e4d80
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610ae00
  7320 ms  0x6bc7 PK11_DeriveWithFlags()
  7320 ms  0x6bc7 basekey:0x7f7c260e4d80
  7320 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7320 ms  0x6bc7 ret:0x7f7c2610aa00
           /* TID 0x6c28 */
  7320 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7321 ms  0x6c28 ret:0x0
  7321 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7321 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7321 ms  0x6bc7 PK11_DeriveWithFlags()
  7321 ms  0x6bc7 basekey:0x7f7c260e4d80
  7321 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7321 ms  0x6bc7 ret:0x7f7c2610aa00
  7322 ms  0x6bc7 PK11_Encrypt()
  7322 ms  0x6bc7 symkey:0x7f7c2610a880
  7322 ms  0x6bc7 PK11_Encrypt()
  7322 ms  0x6bc7 symkey:0x7f7c2610a880
  7322 ms  0x6bc7 SSL_AuthCertificateComplete()
  7322 ms  0x6bc7 fd:0x7f7c36f77310
  7322 ms  0x6bc7 err:0x0
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610aa00
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610af00
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610b180
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610b200
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610b280
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610af00
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610b280
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610af00
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610b300
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7322 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7322 ms     | 0x6bc7 ret:0x7f7c2610ae00
  7322 ms     | 0x6bc7 PK11_Encrypt()
  7322 ms     | 0x6bc7 symkey:0x7f7c2610b200
  7322 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7322 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7323 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7323 ms     | 0x6bc7 ret:0x7f7c2610ae00
  7323 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7323 ms     | 0x6bc7 basekey:0x7f7c2610aa00
  7323 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7323 ms     | 0x6bc7 ret:0x7f7c2610b300
  7323 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7323 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7323 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7323 ms     | 0x6bc7 ret:0x7f7c2610b200
  7323 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7323 ms     | 0x6bc7 privk:0x7f7c38a05820::7f7c38a05820  90 f2 40 37                                      ..@7
  7323 ms     | 0x6bc7 privk:0x7f7c38a05820::7f7c38a05820  e5 e5 e5 e5                                      ....
  7323 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7323 ms     | 0x6bc7 privk:0x7f7c383da020::7f7c383da020  e0 72 fb 36                                      .r.6
  7323 ms     | 0x6bc7 privk:0x7f7c383da020::7f7c383da020  e5 e5 e5 e5                                      ....
  7323 ms  0x6bc7 PK11_Derive()
  7323 ms  0x6bc7 basekey:0x7f7c260e4d80
  7323 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7323 ms  0x6bc7 ret:0x7f7c2610a680
  7323 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7323 ms  0x6bc7 seckey:0x7f7c38a1c820
  7323 ms     | 0x6bc7 EC_ValidatePublicKey()
  7325 ms     | 0x6bc7 ret:0x0
  7326 ms  0x6bc7 ret:0x7f7c260e4d80
  7326 ms  SECKEY_ECParamsToKeySize()
  7326 ms  0x6bc7 ret:0x100
  7326 ms  0x6bc7 PK11_DeriveWithFlags()
  7326 ms  0x6bc7 basekey:0x7f7c2610a680
  7326 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7326 ms  0x6bc7 ret:0x7f7c2610af80
  7326 ms  0x6bc7 PK11_Derive()
  7326 ms  0x6bc7 basekey:0x7f7c260e4d80
  7326 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610b300
  7327 ms  0x6bc7 PK11_DeriveWithFlags()
  7327 ms  0x6bc7 basekey:0x7f7c2610b300
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610a680
  7327 ms  0x6bc7 PK11_DeriveWithFlags()
  7327 ms  0x6bc7 basekey:0x7f7c2610b300
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c260e4d80
  7327 ms  0x6bc7 PK11_DeriveWithFlags()
  7327 ms  0x6bc7 basekey:0x7f7c2610b300
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610af80
  7327 ms  0x6bc7 PK11_Derive()
  7327 ms  0x6bc7 basekey:0x7f7c2610b380
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610b400
  7327 ms  0x6bc7 PK11_DeriveWithFlags()
  7327 ms  0x6bc7 basekey:0x7f7c260e4d80
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610b300
  7327 ms  0x6bc7 PK11_DeriveWithFlags()
  7327 ms  0x6bc7 basekey:0x7f7c260e4d80
  7327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7327 ms  0x6bc7 ret:0x7f7c2610af80
           /* TID 0x6c28 */
  7328 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7328 ms  0x6c28 ret:0x0
  7328 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7328 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7328 ms  0x6bc7 PK11_DeriveWithFlags()
  7328 ms  0x6bc7 basekey:0x7f7c260e4d80
  7328 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7328 ms  0x6bc7 ret:0x7f7c2610af80
  7328 ms  0x6bc7 PK11_Encrypt()
  7328 ms  0x6bc7 symkey:0x7f7c2610ae00
  7328 ms  0x6bc7 SSL_AuthCertificateComplete()
  7328 ms  0x6bc7 fd:0x7f7c36de4df0
  7328 ms  0x6bc7 err:0x0
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b400
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610af80
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b400
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b380
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b400
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b500
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b600
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b680
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b380
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b680
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b380
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b700
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b300
  7329 ms     | 0x6bc7 PK11_Encrypt()
  7329 ms     | 0x6bc7 symkey:0x7f7c2610b600
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b300
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610af80
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b700
  7329 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7329 ms     | 0x6bc7 basekey:0x7f7c2610b400
  7329 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7329 ms     | 0x6bc7 ret:0x7f7c2610b600
  7329 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7329 ms     | 0x6bc7 privk:0x7f7c38a1c820::7f7c38a1c820  90 f2 4f 37                                      ..O7
  7329 ms     | 0x6bc7 privk:0x7f7c38a1c820::7f7c38a1c820  e5 e5 e5 e5                                      ....
  7329 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7329 ms     | 0x6bc7 privk:0x7f7c38a07020::7f7c38a07020  70 f9 40 37                                      p.@7
  7329 ms     | 0x6bc7 privk:0x7f7c38a07020::7f7c38a07020  e5 e5 e5 e5                                      ....
  7330 ms  0x6bc7 PK11_Encrypt()
  7330 ms  0x6bc7 symkey:0x7f7c2610b300
  7330 ms  0x6bc7 PK11_Derive()
  7330 ms  0x6bc7 basekey:0x7f7c260e4d80
  7330 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7330 ms  0x6bc7 ret:0x7f7c2610a680
  7330 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7330 ms  0x6bc7 seckey:0x7f7c3ce02820
  7330 ms     | 0x6bc7 EC_ValidatePublicKey()
  7332 ms     | 0x6bc7 ret:0x0
  7333 ms  0x6bc7 ret:0x7f7c260e4d80
  7333 ms  SECKEY_ECParamsToKeySize()
  7333 ms  0x6bc7 ret:0x100
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c2610a680
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b400
  7333 ms  0x6bc7 PK11_Derive()
  7333 ms  0x6bc7 basekey:0x7f7c260e4d80
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b700
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c2610b700
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610a680
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c2610b700
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c260e4d80
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c2610b700
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b400
  7333 ms  0x6bc7 PK11_Derive()
  7333 ms  0x6bc7 basekey:0x7f7c2610b800
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b880
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c260e4d80
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b700
  7333 ms  0x6bc7 PK11_DeriveWithFlags()
  7333 ms  0x6bc7 basekey:0x7f7c260e4d80
  7333 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7333 ms  0x6bc7 ret:0x7f7c2610b400
           /* TID 0x6c28 */
  7334 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7334 ms  0x6c28 ret:0x0
  7334 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7334 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7334 ms  0x6bc7 PK11_DeriveWithFlags()
  7334 ms  0x6bc7 basekey:0x7f7c260e4d80
  7334 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7334 ms  0x6bc7 ret:0x7f7c2610b400
  7334 ms  0x6bc7 PK11_Derive()
  7334 ms  0x6bc7 basekey:0x7f7c2610b400
  7334 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7334 ms  0x6bc7 ret:0x7f7c2610b800
  7335 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7335 ms  0x6bc7 seckey:0x7f7c3ce0d020
  7335 ms     | 0x6bc7 EC_ValidatePublicKey()
  7336 ms     | 0x6bc7 ret:0x0
  7337 ms  0x6bc7 ret:0x7f7c2610b400
  7337 ms  SECKEY_ECParamsToKeySize()
  7337 ms  0x6bc7 ret:0x100
  7337 ms  0x6bc7 PK11_DeriveWithFlags()
  7337 ms  0x6bc7 basekey:0x7f7c2610b800
  7337 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610b900
  7338 ms  0x6bc7 PK11_Derive()
  7338 ms  0x6bc7 basekey:0x7f7c2610b400
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610ba00
  7338 ms  0x6bc7 PK11_DeriveWithFlags()
  7338 ms  0x6bc7 basekey:0x7f7c2610ba00
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610b800
  7338 ms  0x6bc7 PK11_DeriveWithFlags()
  7338 ms  0x6bc7 basekey:0x7f7c2610ba00
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610b400
  7338 ms  0x6bc7 PK11_DeriveWithFlags()
  7338 ms  0x6bc7 basekey:0x7f7c2610ba00
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610b900
  7338 ms  0x6bc7 PK11_Derive()
  7338 ms  0x6bc7 basekey:0x7f7c2610bb00
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610bb80
  7338 ms  0x6bc7 PK11_DeriveWithFlags()
  7338 ms  0x6bc7 basekey:0x7f7c2610b400
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610ba00
  7338 ms  0x6bc7 PK11_DeriveWithFlags()
  7338 ms  0x6bc7 basekey:0x7f7c2610b400
  7338 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7338 ms  0x6bc7 ret:0x7f7c2610b900
           /* TID 0x6c28 */
  7338 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7339 ms  0x6c28 ret:0x0
  7339 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7339 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7339 ms  0x6bc7 PK11_DeriveWithFlags()
  7339 ms  0x6bc7 basekey:0x7f7c2610b400
  7339 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms  0x6bc7 ret:0x7f7c2610b900
  7339 ms  0x6bc7 SSL_AuthCertificateComplete()
  7339 ms  0x6bc7 fd:0x7f7c36de4d90
  7339 ms  0x6bc7 err:0x0
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610b880
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c2610b900
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610b880
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c2610bb00
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610b880
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c36de0080
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c36de0100
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c36de0180
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610bb00
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c36de0180
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610bb00
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c36de0200
  7339 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7339 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7339 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7339 ms     | 0x6bc7 ret:0x7f7c2610b700
  7339 ms     | 0x6bc7 PK11_Encrypt()
  7339 ms     | 0x6bc7 symkey:0x7f7c36de0100
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b900
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c2610b700
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b900
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0200
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b880
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0100
  7340 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7340 ms     | 0x6bc7 privk:0x7f7c3ce02820::7f7c3ce02820  f0 96 c2 37                                      ...7
  7340 ms     | 0x6bc7 privk:0x7f7c3ce02820::7f7c3ce02820  e5 e5 e5 e5                                      ....
  7340 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7340 ms     | 0x6bc7 privk:0x7f7c3bdcd820::7f7c3bdcd820  80 93 c2 37                                      ...7
  7340 ms     | 0x6bc7 privk:0x7f7c3bdcd820::7f7c3bdcd820  e5 e5 e5 e5                                      ....
  7340 ms  0x6bc7 SSL_AuthCertificateComplete()
  7340 ms  0x6bc7 fd:0x7f7c36de4d30
  7340 ms  0x6bc7 err:0x0
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610bb80
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c260e4d80
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610bb80
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c2610a680
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610bb80
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c2610b880
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0200
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0280
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0280
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610a680
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c36de0300
  7340 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7340 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7340 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7340 ms     | 0x6bc7 ret:0x7f7c2610ba00
  7341 ms     | 0x6bc7 PK11_Encrypt()
  7341 ms     | 0x6bc7 symkey:0x7f7c36de0200
  7341 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7341 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7341 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7341 ms     | 0x6bc7 ret:0x7f7c2610ba00
  7341 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7341 ms     | 0x6bc7 basekey:0x7f7c260e4d80
  7341 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7341 ms     | 0x6bc7 ret:0x7f7c36de0300
  7341 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7341 ms     | 0x6bc7 basekey:0x7f7c2610bb80
  7341 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7341 ms     | 0x6bc7 ret:0x7f7c36de0200
  7341 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7341 ms     | 0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  40 b2 3f 38                                      @.?8
  7341 ms     | 0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  e5 e5 e5 e5                                      ....
  7341 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7341 ms     | 0x6bc7 privk:0x7f7c3ce09020::7f7c3ce09020  20 99 c2 37                                       ..7
  7341 ms     | 0x6bc7 privk:0x7f7c3ce09020::7f7c3ce09020  e5 e5 e5 e5                                      ....
  7341 ms  0x6bc7 PK11_Encrypt()
  7341 ms  0x6bc7 symkey:0x7f7c2610b700
  7348 ms  0x6bc7 PK11_Encrypt()
  7348 ms  0x6bc7 symkey:0x7f7c2610ba00
  7348 ms  0x6bc7 PK11_Derive()
  7348 ms  0x6bc7 basekey:0x7f7c2610b400
  7348 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7348 ms  0x6bc7 ret:0x7f7c2610b800
  7348 ms  0x6bc7 PK11_PubDeriveWithKDF()
  7348 ms  0x6bc7 seckey:0x7f7c3ce19020
  7348 ms     | 0x6bc7 EC_ValidatePublicKey()
  7350 ms     | 0x6bc7 ret:0x0
  7351 ms  0x6bc7 ret:0x7f7c2610b400
  7351 ms  SECKEY_ECParamsToKeySize()
  7351 ms  0x6bc7 ret:0x100
  7351 ms  0x6bc7 PK11_DeriveWithFlags()
  7351 ms  0x6bc7 basekey:0x7f7c2610b800
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c2610bb80
  7351 ms  0x6bc7 PK11_Derive()
  7351 ms  0x6bc7 basekey:0x7f7c2610b400
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c36de0300
  7351 ms  0x6bc7 PK11_DeriveWithFlags()
  7351 ms  0x6bc7 basekey:0x7f7c36de0300
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c2610b800
  7351 ms  0x6bc7 PK11_DeriveWithFlags()
  7351 ms  0x6bc7 basekey:0x7f7c36de0300
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c2610b400
  7351 ms  0x6bc7 PK11_DeriveWithFlags()
  7351 ms  0x6bc7 basekey:0x7f7c36de0300
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c2610bb80
  7351 ms  0x6bc7 PK11_Derive()
  7351 ms  0x6bc7 basekey:0x7f7c36de0480
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c36de0500
  7351 ms  0x6bc7 PK11_DeriveWithFlags()
  7351 ms  0x6bc7 basekey:0x7f7c2610b400
  7351 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7351 ms  0x6bc7 ret:0x7f7c36de0300
  7352 ms  0x6bc7 PK11_DeriveWithFlags()
  7352 ms  0x6bc7 basekey:0x7f7c2610b400
  7352 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7352 ms  0x6bc7 ret:0x7f7c2610bb80
           /* TID 0x6c28 */
  7355 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7355 ms  0x6c28 ret:0x0
  7355 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7355 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  7355 ms  0x6bc7 PK11_DeriveWithFlags()
  7355 ms  0x6bc7 basekey:0x7f7c2610b400
  7355 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7355 ms  0x6bc7 ret:0x7f7c2610bb80
  7355 ms  0x6bc7 PK11_DeriveWithFlags()
  7355 ms  0x6bc7 basekey:0x7f7c2610ab00
  7355 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7355 ms  0x6bc7 ret:0x7f7c2610bb80
  7355 ms  0x6bc7 PK11_DeriveWithFlags()
  7355 ms  0x6bc7 basekey:0x7f7c2610ab00
  7355 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7355 ms  0x6bc7 ret:0x7f7c2610bb80
  7355 ms  0x6bc7 PK11_DeriveWithFlags()
  7355 ms  0x6bc7 basekey:0x7f7c2610ad00
  7355 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7355 ms  0x6bc7 ret:0x7f7c2610bb80
  7355 ms  0x6bc7 PK11_DeriveWithFlags()
  7355 ms  0x6bc7 basekey:0x7f7c2610ad00
  7355 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7356 ms  0x6bc7 ret:0x7f7c2610bb80
  7356 ms  0x6bc7 PK11_Encrypt()
  7356 ms  0x6bc7 symkey:0x7f7c2610a880
  7362 ms  0x6bc7 PR_Close()
  7362 ms  0x6bc7 fd:0x7f7c26118850
  7362 ms     | 0x6bc7 PK11_Encrypt()
  7362 ms     | 0x6bc7 symkey:0x7f7c260fa300
  7362 ms  0x6bc7 SSL_AuthCertificateComplete()
  7362 ms  0x6bc7 fd:0x7f7c260e0df0
  7362 ms  0x6bc7 err:0x0
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c36de0500
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610aa80
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c36de0500
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610a980
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c36de0500
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610a780
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610ab00
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610ac80
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610a980
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c2610ac80
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610a980
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c260fa300
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610b800
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c36de0300
  7362 ms     | 0x6bc7 PK11_Encrypt()
  7362 ms     | 0x6bc7 symkey:0x7f7c2610ab00
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610aa80
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c36de0300
  7362 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7362 ms     | 0x6bc7 basekey:0x7f7c2610aa80
  7362 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7362 ms     | 0x6bc7 ret:0x7f7c260fa300
  7363 ms     | 0x6bc7 PK11_DeriveWithFlags()
  7363 ms     | 0x6bc7 basekey:0x7f7c36de0500
  7363 ms     |    | 0x6bc7 PK11_DeriveWithTemplate()
  7363 ms     | 0x6bc7 ret:0x7f7c2610ab00
  7363 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7363 ms     | 0x6bc7 privk:0x7f7c3ce19020::7f7c3ce19020  a0 bb 3f 38                                      ..?8
  7363 ms     | 0x6bc7 privk:0x7f7c3ce19020::7f7c3ce19020  e5 e5 e5 e5                                      ....
  7363 ms     | 0x6bc7 SECKEY_DestroyPrivateKey()
  7363 ms     | 0x6bc7 privk:0x7f7c3ce14020::7f7c3ce14020  00 b6 3f 38                                      ..?8
  7363 ms     | 0x6bc7 privk:0x7f7c3ce14020::7f7c3ce14020  e5 e5 e5 e5                                      ....
  7363 ms  0x6bc7 PK11_DeriveWithFlags()
  7363 ms  0x6bc7 basekey:0x7f7c2610b600
  7363 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7363 ms  0x6bc7 ret:0x7f7c2610b400
  7363 ms  0x6bc7 PK11_DeriveWithFlags()
  7363 ms  0x6bc7 basekey:0x7f7c2610b600
  7363 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7363 ms  0x6bc7 ret:0x7f7c2610b400
  7363 ms  0x6bc7 PK11_Encrypt()
  7363 ms  0x6bc7 symkey:0x7f7c36de0300
  7363 ms  0x6bc7 PK11_DeriveWithFlags()
  7363 ms  0x6bc7 basekey:0x7f7c2610b200
  7363 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7363 ms  0x6bc7 ret:0x7f7c2610b400
  7363 ms  0x6bc7 PK11_DeriveWithFlags()
  7363 ms  0x6bc7 basekey:0x7f7c2610b200
  7363 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7363 ms  0x6bc7 ret:0x7f7c2610b400
  7364 ms  0x6bc7 PR_Close()
  7364 ms  0x6bc7 fd:0x7f7c36f77310
  7364 ms     | 0x6bc7 PK11_Encrypt()
  7364 ms     | 0x6bc7 symkey:0x7f7c2610ae00
  7364 ms  0x6bc7 PR_Close()
  7364 ms  0x6bc7 fd:0x7f7c36de4df0
  7364 ms     | 0x6bc7 PK11_Encrypt()
  7364 ms     | 0x6bc7 symkey:0x7f7c2610b300
  7364 ms  0x6bc7 PK11_DeriveWithFlags()
  7364 ms  0x6bc7 basekey:0x7f7c36de0100
  7364 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7364 ms  0x6bc7 ret:0x7f7c2610b500
  7365 ms  0x6bc7 PK11_DeriveWithFlags()
  7365 ms  0x6bc7 basekey:0x7f7c36de0100
  7365 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7365 ms  0x6bc7 ret:0x7f7c2610b500
  7365 ms  0x6bc7 PR_Close()
  7365 ms  0x6bc7 fd:0x7f7c36de4d90
  7365 ms     | 0x6bc7 PK11_Encrypt()
  7365 ms     | 0x6bc7 symkey:0x7f7c2610b700
  7366 ms  0x6bc7 PK11_DeriveWithFlags()
  7366 ms  0x6bc7 basekey:0x7f7c36de0200
  7366 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7366 ms  0x6bc7 ret:0x7f7c36de0080
  7366 ms  0x6bc7 PK11_DeriveWithFlags()
  7366 ms  0x6bc7 basekey:0x7f7c36de0200
  7366 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7366 ms  0x6bc7 ret:0x7f7c36de0080
  7366 ms  0x6bc7 PR_Close()
  7366 ms  0x6bc7 fd:0x7f7c36de4d30
  7366 ms     | 0x6bc7 PK11_Encrypt()
  7366 ms     | 0x6bc7 symkey:0x7f7c2610ba00
           /* TID 0x6bcf */
  7368 ms  0x6bcf PR_Close()
  7368 ms  0x6bcf fd:0x7f7c36de48e0
           /* TID 0x6bc7 */
  7388 ms  0x6bc7 PK11_DeriveWithFlags()
  7388 ms  0x6bc7 basekey:0x7f7c2610ab00
  7388 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7388 ms  0x6bc7 ret:0x7f7c2610b880
  7388 ms  0x6bc7 PK11_DeriveWithFlags()
  7388 ms  0x6bc7 basekey:0x7f7c2610ab00
  7388 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  7388 ms  0x6bc7 ret:0x7f7c2610b880
  7388 ms  0x6bc7 PR_Close()
  7388 ms  0x6bc7 fd:0x7f7c260e0df0
  7388 ms     | 0x6bc7 PK11_Encrypt()
  7388 ms     | 0x6bc7 symkey:0x7f7c36de0300
           /* TID 0x6bcf */
  7820 ms  0x6bcf PR_Close()
  7820 ms  0x6bcf fd:0x7f7c26118820
  7913 ms  0x6bcf PR_Close()
  7913 ms  0x6bcf fd:0x7f7c36de4940
  7922 ms  0x6bcf PR_Close()
  7922 ms  0x6bcf fd:0x7f7c36de4940
  7926 ms  0x6bcf PR_Close()
  7926 ms  0x6bcf fd:0x7f7c36de4940
  7941 ms  0x6bcf PR_Close()
  7941 ms  0x6bcf fd:0x7f7c36de4670
           /* TID 0x6bc7 */
  8001 ms  0x6bc7 PK11_Encrypt()
  8001 ms  0x6bc7 symkey:0x7f7c2607dd00
  8025 ms  0x6bc7 PK11_Encrypt()
  8025 ms  0x6bc7 symkey:0x7f7c2607dd00
           /* TID 0x6bcf */
  8030 ms  0x6bcf PR_Close()
  8030 ms  0x6bcf fd:0x7f7c36f77f40
           /* TID 0x6bc7 */
  8031 ms  0x6bc7 PK11_Encrypt()
  8031 ms  0x6bc7 symkey:0x7f7c2607dd00
  8034 ms  0x6bc7 PK11_Encrypt()
  8034 ms  0x6bc7 symkey:0x7f7c2607dd00
  8045 ms  0x6bc7 PK11_Encrypt()
  8045 ms  0x6bc7 symkey:0x7f7c2607dd00
           /* TID 0x6bcf */
  8054 ms  0x6bcf PR_Close()
  8054 ms  0x6bcf fd:0x7f7c383a0190
           /* TID 0x6bc7 */
  8055 ms  0x6bc7 PK11_Encrypt()
  8055 ms  0x6bc7 symkey:0x7f7c2607dd00
           /* TID 0x6bcf */
  8080 ms  0x6bcf PR_Close()
  8080 ms  0x6bcf fd:0x7f7c26118820
  8080 ms  0x6bcf PR_Close()
  8080 ms  0x6bcf fd:0x7f7c37c3a160
  8080 ms  0x6bcf PR_Close()
  8080 ms  0x6bcf fd:0x7f7c383a01c0
  8105 ms  0x6bcf PR_Close()
  8105 ms  0x6bcf fd:0x7f7c37c3af70
           /* TID 0x6bc7 */
  8592 ms  0x6bc7 SSL_ImportFD()
  8593 ms  0x6bc7 ret:0x7f7c38748ca0
  8593 ms  0x6bc7 SSL_AuthCertificateHook()
  8593 ms  0x6bc7 fd:0x7f7c38748ca0
  8593 ms  0x6bc7 ret:0x0
  8593 ms  0x6bc7 PR_Connect()
  8593 ms  0x6bc7 fd:0x7f7c38748ca0
  8593 ms  0x6bc7 SSL_ImportFD()
  8593 ms  0x6bc7 ret:0x7f7c38748cd0
  8593 ms  0x6bc7 SSL_AuthCertificateHook()
  8593 ms  0x6bc7 fd:0x7f7c38748cd0
  8593 ms  0x6bc7 ret:0x0
  8593 ms  0x6bc7 PR_Connect()
  8593 ms  0x6bc7 fd:0x7f7c38748cd0
  8622 ms  0x6bc7 SSL_ImportFD()
  8622 ms  0x6bc7 ret:0x7f7c38748c10
  8622 ms  0x6bc7 SSL_AuthCertificateHook()
  8622 ms  0x6bc7 fd:0x7f7c38748c10
  8622 ms  0x6bc7 ret:0x0
  8622 ms  0x6bc7 PR_Connect()
  8622 ms  0x6bc7 fd:0x7f7c38748c10
  8622 ms  0x6bc7 SSL_ImportFD()
  8622 ms  0x6bc7 ret:0x7f7c3878a0d0
  8622 ms  0x6bc7 SSL_AuthCertificateHook()
  8622 ms  0x6bc7 fd:0x7f7c3878a0d0
  8622 ms  0x6bc7 ret:0x0
  8622 ms  0x6bc7 PR_Connect()
  8622 ms  0x6bc7 fd:0x7f7c3878a0d0
  8623 ms  0x6bc7 SSL_ImportFD()
  8623 ms  0x6bc7 ret:0x7f7c36f77dc0
  8623 ms  0x6bc7 SSL_AuthCertificateHook()
  8623 ms  0x6bc7 fd:0x7f7c36f77dc0
  8623 ms  0x6bc7 ret:0x0
  8623 ms  0x6bc7 PR_Connect()
  8623 ms  0x6bc7 fd:0x7f7c36f77dc0
  8632 ms  0x6bc7 SSL_ImportFD()
  8632 ms  0x6bc7 ret:0x7f7c383fe490
  8632 ms  0x6bc7 SSL_AuthCertificateHook()
  8632 ms  0x6bc7 fd:0x7f7c383fe490
  8632 ms  0x6bc7 ret:0x0
  8632 ms  0x6bc7 PR_Connect()
  8632 ms  0x6bc7 fd:0x7f7c383fe490
  8632 ms  0x6bc7 SSL_ImportFD()
  8632 ms  0x6bc7 ret:0x7f7c383fe8b0
  8632 ms  0x6bc7 SSL_AuthCertificateHook()
  8632 ms  0x6bc7 fd:0x7f7c383fe8b0
  8632 ms  0x6bc7 ret:0x0
  8632 ms  0x6bc7 PR_Connect()
  8632 ms  0x6bc7 fd:0x7f7c383fe8b0
  8660 ms  0x6bc7 SSL_ImportFD()
  8660 ms  0x6bc7 ret:0x7f7c36f77550
  8661 ms  0x6bc7 SSL_AuthCertificateHook()
  8661 ms  0x6bc7 fd:0x7f7c36f77550
  8661 ms  0x6bc7 ret:0x0
  8661 ms  0x6bc7 PR_Connect()
  8661 ms  0x6bc7 fd:0x7f7c36f77550
  8667 ms  0x6bc7 SSL_ImportFD()
  8668 ms  0x6bc7 ret:0x7f7c376fe640
  8668 ms  0x6bc7 SSL_AuthCertificateHook()
  8668 ms  0x6bc7 fd:0x7f7c376fe640
  8668 ms  0x6bc7 ret:0x0
  8668 ms  0x6bc7 PR_Connect()
  8668 ms  0x6bc7 fd:0x7f7c376fe640
  8844 ms  0x6bc7 SSL_ImportFD()
  8844 ms  0x6bc7 ret:0x7f7c387ea400
  8844 ms  0x6bc7 SSL_AuthCertificateHook()
  8844 ms  0x6bc7 fd:0x7f7c387ea400
  8844 ms  0x6bc7 ret:0x0
  8844 ms  0x6bc7 PR_Connect()
  8844 ms  0x6bc7 fd:0x7f7c387ea400
  8845 ms  0x6bc7 SSL_ImportFD()
  8845 ms  0x6bc7 ret:0x7f7c383a0a00
  8845 ms  0x6bc7 SSL_AuthCertificateHook()
  8845 ms  0x6bc7 fd:0x7f7c383a0a00
  8845 ms  0x6bc7 ret:0x0
  8845 ms  0x6bc7 PR_Connect()
  8845 ms  0x6bc7 fd:0x7f7c383a0a00
  8875 ms  0x6bc7 SSL_ImportFD()
  8875 ms  0x6bc7 ret:0x7f7c3a1813d0
  8875 ms  0x6bc7 SSL_AuthCertificateHook()
  8875 ms  0x6bc7 fd:0x7f7c3a1813d0
  8875 ms  0x6bc7 ret:0x0
  8875 ms  0x6bc7 PR_Connect()
  8875 ms  0x6bc7 fd:0x7f7c3a1813d0
  8876 ms  0x6bc7 SSL_ImportFD()
  8876 ms  0x6bc7 ret:0x7f7c3a115250
  8876 ms  0x6bc7 SSL_AuthCertificateHook()
  8876 ms  0x6bc7 fd:0x7f7c3a115250
  8876 ms  0x6bc7 ret:0x0
  8876 ms  0x6bc7 PR_Connect()
  8876 ms  0x6bc7 fd:0x7f7c3a115250
  8876 ms  0x6bc7 SSL_ImportFD()
  8876 ms  0x6bc7 ret:0x7f7c3a181430
  8876 ms  0x6bc7 SSL_AuthCertificateHook()
  8876 ms  0x6bc7 fd:0x7f7c3a181430
  8876 ms  0x6bc7 ret:0x0
  8876 ms  0x6bc7 PR_Connect()
  8876 ms  0x6bc7 fd:0x7f7c3a181430
  8883 ms  0x6bc7 SSL_ImportFD()
  8883 ms  0x6bc7 ret:0x7f7c3a1c1940
  8883 ms  0x6bc7 SSL_AuthCertificateHook()
  8883 ms  0x6bc7 fd:0x7f7c3a1c1940
  8883 ms  0x6bc7 ret:0x0
  8883 ms  0x6bc7 PR_Connect()
  8883 ms  0x6bc7 fd:0x7f7c3a1c1940
  8883 ms  0x6bc7 SSL_ImportFD()
  8883 ms  0x6bc7 ret:0x7f7c3a1c10d0
  8883 ms  0x6bc7 SSL_AuthCertificateHook()
  8883 ms  0x6bc7 fd:0x7f7c3a1c10d0
  8883 ms  0x6bc7 ret:0x0
  8883 ms  0x6bc7 PR_Connect()
  8883 ms  0x6bc7 fd:0x7f7c3a1c10d0
  8911 ms  0x6bc7 SSL_ImportFD()
  8911 ms  0x6bc7 ret:0x7f7c3bd8c1c0
  8911 ms  0x6bc7 SSL_AuthCertificateHook()
  8911 ms  0x6bc7 fd:0x7f7c3bd8c1c0
  8911 ms  0x6bc7 ret:0x0
  8911 ms  0x6bc7 PR_Connect()
  8911 ms  0x6bc7 fd:0x7f7c3bd8c1c0
  8918 ms  0x6bc7 SSL_ImportFD()
  8918 ms  0x6bc7 ret:0x7f7c3c5fe850
  8918 ms  0x6bc7 SSL_AuthCertificateHook()
  8918 ms  0x6bc7 fd:0x7f7c3c5fe850
  8918 ms  0x6bc7 ret:0x0
  8918 ms  0x6bc7 PR_Connect()
  8918 ms  0x6bc7 fd:0x7f7c3c5fe850
  8941 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8941 ms  0x6bc7 cx:0x7f7c36ff0b28
  8942 ms     | 0x6bc7 EC_ValidatePublicKey()
  8942 ms     | 0x6bc7 ret:0x0
  8943 ms  0x6bc7 ret:0x7f7c36f51020::7f7c36f51020  90 62 16 3a                                      .b.:
  8943 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8943 ms  0x6bc7 cx:0x7f7c36ff0b28
  8945 ms     | 0x6bc7 EC_ValidatePublicKey()
  8953 ms     | 0x6bc7 ret:0x0
  8953 ms  0x6bc7 ret:0x7f7c3ce0d020::7f7c3ce0d020  70 64 16 3a                                      pd.:
  8961 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8961 ms  0x6bc7 cx:0x7f7c25ffc588
  8962 ms     | 0x6bc7 EC_ValidatePublicKey()
  8962 ms     | 0x6bc7 ret:0x0
  8962 ms  0x6bc7 ret:0x7f7c3ce14820::7f7c3ce14820  00 66 16 3a                                      .f.:
  8963 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8963 ms  0x6bc7 cx:0x7f7c25ffc588
  8966 ms     | 0x6bc7 EC_ValidatePublicKey()
  8969 ms     | 0x6bc7 ret:0x0
  8969 ms  0x6bc7 ret:0x7f7c3ce19820::7f7c3ce19820  60 6f 16 3a                                      `o.:
  8970 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8970 ms  0x6bc7 cx:0x7f7c36ff0cc8
  8971 ms     | 0x6bc7 EC_ValidatePublicKey()
  8971 ms     | 0x6bc7 ret:0x0
  8971 ms  0x6bc7 ret:0x7f7c3cfb7020::7f7c3cfb7020  80 13 1b 3a                                      ...:
  8971 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8971 ms  0x6bc7 cx:0x7f7c36ff0cc8
  8972 ms     | 0x6bc7 EC_ValidatePublicKey()
  8974 ms     | 0x6bc7 ret:0x0
  8974 ms  0x6bc7 ret:0x7f7c3d36c820::7f7c3d36c820  60 70 5f 3c                                      `p_<
  8975 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8975 ms  0x6bc7 cx:0x7f7c5f4a84a8
  8976 ms     | 0x6bc7 EC_ValidatePublicKey()
  8976 ms     | 0x6bc7 ret:0x0
  8976 ms  0x6bc7 ret:0x7f7c3d36f820::7f7c3d36f820  b0 75 5f 3c                                      .u_<
  8976 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8976 ms  0x6bc7 cx:0x7f7c5f4a84a8
  8977 ms     | 0x6bc7 EC_ValidatePublicKey()
  8979 ms     | 0x6bc7 ret:0x0
  8979 ms  0x6bc7 ret:0x7f7c3d372820::7f7c3d372820  60 2f c5 3c                                      `/.<
  8979 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8979 ms  0x6bc7 cx:0x7f7c418de648
  8980 ms     | 0x6bc7 EC_ValidatePublicKey()
  8980 ms     | 0x6bc7 ret:0x0
  8980 ms  0x6bc7 ret:0x7f7c3d379820::7f7c3d379820  30 98 ef 3c                                      0..<
  8980 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8980 ms  0x6bc7 cx:0x7f7c418de648
  8981 ms     | 0x6bc7 EC_ValidatePublicKey()
  8983 ms     | 0x6bc7 ret:0x0
  8983 ms  0x6bc7 ret:0x7f7c3d67e820::7f7c3d67e820  c0 44 f1 3c                                      .D.<
  8983 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8983 ms  0x6bc7 cx:0x7f7c25ffc0a8
  8984 ms     | 0x6bc7 EC_ValidatePublicKey()
  8984 ms     | 0x6bc7 ret:0x0
  8984 ms  0x6bc7 ret:0x7f7c3d681020::7f7c3d681020  20 4e f1 3c                                       N.<
  8984 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8984 ms  0x6bc7 cx:0x7f7c25ffc0a8
  8985 ms     | 0x6bc7 EC_ValidatePublicKey()
  8986 ms     | 0x6bc7 ret:0x0
  8986 ms  0x6bc7 ret:0x7f7c3d683020::7f7c3d683020  b0 3f f2 3c                                      .?.<
  8987 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8987 ms  0x6bc7 cx:0x7f7c25ffc3e8
  8987 ms     | 0x6bc7 EC_ValidatePublicKey()
  8987 ms     | 0x6bc7 ret:0x0
  8987 ms  0x6bc7 ret:0x7f7c3d687820::7f7c3d687820  c0 19 f3 3c                                      ...<
  8987 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8987 ms  0x6bc7 cx:0x7f7c25ffc3e8
  8988 ms     | 0x6bc7 EC_ValidatePublicKey()
  8990 ms     | 0x6bc7 ret:0x0
  8990 ms  0x6bc7 ret:0x7f7c3d68a820::7f7c3d68a820  70 ae f3 3c                                      p..<
  8993 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8993 ms  0x6bc7 cx:0x7f7c25ffc248
  8993 ms     | 0x6bc7 EC_ValidatePublicKey()
  8993 ms     | 0x6bc7 ret:0x0
  8993 ms  0x6bc7 ret:0x7f7c3d68d020::7f7c3d68d020  30 dd ff 3c                                      0..<
  8993 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  8993 ms  0x6bc7 cx:0x7f7c25ffc248
  8994 ms     | 0x6bc7 EC_ValidatePublicKey()
  8995 ms     | 0x6bc7 ret:0x0
  8995 ms  0x6bc7 ret:0x7f7c3d68f020::7f7c3d68f020  b0 85 20 3d                                      .. =
  9004 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9004 ms  0x6bc7 cx:0x7f7c25ffc728
  9004 ms     | 0x6bc7 EC_ValidatePublicKey()
  9004 ms     | 0x6bc7 ret:0x0
  9004 ms  0x6bc7 ret:0x7f7c3d691820::7f7c3d691820  f0 86 20 3d                                      .. =
  9004 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9004 ms  0x6bc7 cx:0x7f7c25ffc728
  9005 ms     | 0x6bc7 EC_ValidatePublicKey()
  9007 ms     | 0x6bc7 ret:0x0
  9007 ms  0x6bc7 ret:0x7f7c3d693820::7f7c3d693820  10 8a 20 3d                                      .. =
  9015 ms  0x6bc7 SSL_ImportFD()
  9015 ms  0x6bc7 ret:0x7f7c383a0580
  9015 ms  0x6bc7 SSL_AuthCertificateHook()
  9015 ms  0x6bc7 fd:0x7f7c383a0580
  9015 ms  0x6bc7 ret:0x0
  9015 ms  0x6bc7 PR_Connect()
  9015 ms  0x6bc7 fd:0x7f7c383a0580
  9015 ms  0x6bc7 SSL_ImportFD()
  9016 ms  0x6bc7 ret:0x7f7c36f77fa0
  9016 ms  0x6bc7 SSL_AuthCertificateHook()
  9016 ms  0x6bc7 fd:0x7f7c36f77fa0
  9016 ms  0x6bc7 ret:0x0
  9016 ms  0x6bc7 PR_Connect()
  9016 ms  0x6bc7 fd:0x7f7c36f77fa0
  9016 ms  0x6bc7 SSL_ImportFD()
  9016 ms  0x6bc7 ret:0x7f7c376fe160
  9016 ms  0x6bc7 SSL_AuthCertificateHook()
  9016 ms  0x6bc7 fd:0x7f7c376fe160
  9016 ms  0x6bc7 ret:0x0
  9016 ms  0x6bc7 PR_Connect()
  9016 ms  0x6bc7 fd:0x7f7c376fe160
  9021 ms  0x6bc7 SSL_ImportFD()
  9021 ms  0x6bc7 ret:0x7f7c3cce8cd0
  9021 ms  0x6bc7 SSL_AuthCertificateHook()
  9021 ms  0x6bc7 fd:0x7f7c3cce8cd0
  9021 ms  0x6bc7 ret:0x0
  9021 ms  0x6bc7 PR_Connect()
  9021 ms  0x6bc7 fd:0x7f7c3cce8cd0
  9028 ms  0x6bc7 SSL_ImportFD()
  9028 ms  0x6bc7 ret:0x7f7c3cef8310
  9028 ms  0x6bc7 SSL_AuthCertificateHook()
  9028 ms  0x6bc7 fd:0x7f7c3cef8310
  9028 ms  0x6bc7 ret:0x0
  9028 ms  0x6bc7 PR_Connect()
  9028 ms  0x6bc7 fd:0x7f7c3cef8310
  9034 ms  0x6bc7 SSL_ImportFD()
  9034 ms  0x6bc7 ret:0x7f7c3cf3f1f0
  9034 ms  0x6bc7 SSL_AuthCertificateHook()
  9034 ms  0x6bc7 fd:0x7f7c3cf3f1f0
  9034 ms  0x6bc7 ret:0x0
  9035 ms  0x6bc7 PR_Connect()
  9035 ms  0x6bc7 fd:0x7f7c3cf3f1f0
  9193 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9193 ms  0x6bc7 cx:0x7f7c25ffc8c8
  9195 ms     | 0x6bc7 EC_ValidatePublicKey()
  9195 ms     | 0x6bc7 ret:0x0
  9195 ms  0x6bc7 ret:0x7f7c3d697020::7f7c3d697020  30 b8 22 3d                                      0."=
  9195 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9195 ms  0x6bc7 cx:0x7f7c25ffc8c8
  9197 ms     | 0x6bc7 EC_ValidatePublicKey()
  9202 ms     | 0x6bc7 ret:0x0
  9202 ms  0x6bc7 ret:0x7f7c3d699020::7f7c3d699020  b0 f5 24 3d                                      ..$=
  9209 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9209 ms  0x6bc7 cx:0x7f7c25ffca68
  9211 ms     | 0x6bc7 EC_ValidatePublicKey()
  9211 ms     | 0x6bc7 ret:0x0
  9211 ms  0x6bc7 ret:0x7f7c3d69b820::7f7c3d69b820  c0 84 2f 3d                                      ../=
  9212 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9212 ms  0x6bc7 cx:0x7f7c25ffca68
  9213 ms     | 0x6bc7 EC_ValidatePublicKey()
  9221 ms     | 0x6bc7 ret:0x0
  9222 ms  0x6bc7 ret:0x7f7c38a21020::7f7c38a21020  80 5d 42 3d                                      .]B=
  9223 ms  0x6bc7 SSL_ImportFD()
  9223 ms  0x6bc7 ret:0x7f7c37c84df0
  9223 ms  0x6bc7 SSL_AuthCertificateHook()
  9223 ms  0x6bc7 fd:0x7f7c37c84df0
  9223 ms  0x6bc7 ret:0x0
  9223 ms  0x6bc7 PR_Connect()
  9223 ms  0x6bc7 fd:0x7f7c37c84df0
  9224 ms  0x6bc7 SSL_ImportFD()
  9224 ms  0x6bc7 ret:0x7f7c37c3aa90
  9224 ms  0x6bc7 SSL_AuthCertificateHook()
  9224 ms  0x6bc7 fd:0x7f7c37c3aa90
  9224 ms  0x6bc7 ret:0x0
  9225 ms  0x6bc7 PR_Connect()
  9225 ms  0x6bc7 fd:0x7f7c37c3aa90
  9225 ms  0x6bc7 SSL_ImportFD()
  9225 ms  0x6bc7 ret:0x7f7c37c3aaf0
  9225 ms  0x6bc7 SSL_AuthCertificateHook()
  9225 ms  0x6bc7 fd:0x7f7c37c3aaf0
  9225 ms  0x6bc7 ret:0x0
  9225 ms  0x6bc7 PR_Connect()
  9225 ms  0x6bc7 fd:0x7f7c37c3aaf0
  9226 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9226 ms  0x6bc7 cx:0x7f7c25ffcc08
  9227 ms     | 0x6bc7 EC_ValidatePublicKey()
  9227 ms     | 0x6bc7 ret:0x0
  9227 ms  0x6bc7 ret:0x7f7c3d6b3020::7f7c3d6b3020  c0 5e 42 3d                                      .^B=
  9227 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9227 ms  0x6bc7 cx:0x7f7c25ffcc08
  9228 ms     | 0x6bc7 EC_ValidatePublicKey()
  9231 ms     | 0x6bc7 ret:0x0
  9231 ms  0x6bc7 ret:0x7f7c3d6b8020::7f7c3d6b8020  e0 c2 44 3d                                      ..D=
  9232 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9232 ms  0x6bc7 cx:0x7f7c25ffd428
  9233 ms     | 0x6bc7 EC_ValidatePublicKey()
  9233 ms     | 0x6bc7 ret:0x0
  9233 ms  0x6bc7 ret:0x7f7c3d6be020::7f7c3d6be020  20 c4 44 3d                                       .D=
  9233 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9233 ms  0x6bc7 cx:0x7f7c25ffd428
  9234 ms     | 0x6bc7 EC_ValidatePublicKey()
  9236 ms     | 0x6bc7 ret:0x0
  9236 ms  0x6bc7 ret:0x7f7c3d6c0820::7f7c3d6c0820  b0 20 47 3d                                      . G=
  9239 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9239 ms  0x6bc7 cx:0x7f7c25ffd288
  9240 ms     | 0x6bc7 EC_ValidatePublicKey()
  9240 ms     | 0x6bc7 ret:0x0
  9240 ms  0x6bc7 ret:0x7f7c3d6c7820::7f7c3d6c7820  e0 2c 47 3d                                      .,G=
  9240 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9240 ms  0x6bc7 cx:0x7f7c25ffd288
  9241 ms     | 0x6bc7 EC_ValidatePublicKey()
  9243 ms     | 0x6bc7 ret:0x0
  9243 ms  0x6bc7 ret:0x7f7c3d6c9820::7f7c3d6c9820  10 da 48 3d                                      ..H=
  9246 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9246 ms  0x6bc7 cx:0x7f7c25ffd0e8
  9246 ms     | 0x6bc7 EC_ValidatePublicKey()
  9246 ms     | 0x6bc7 ret:0x0
  9246 ms  0x6bc7 ret:0x7f7c3ffbc020::7f7c3ffbc020  60 ca 4a 3d                                      `.J=
  9246 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9246 ms  0x6bc7 cx:0x7f7c25ffd0e8
  9247 ms     | 0x6bc7 EC_ValidatePublicKey()
  9249 ms     | 0x6bc7 ret:0x0
  9249 ms  0x6bc7 ret:0x7f7c3ffc1020::7f7c3ffc1020  10 7f 4b 3d                                      ..K=
  9249 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9249 ms  0x6bc7 cx:0x7f7c25ffcf48
  9250 ms     | 0x6bc7 EC_ValidatePublicKey()
  9250 ms     | 0x6bc7 ret:0x0
  9250 ms  0x6bc7 ret:0x7f7c3ffc5820::7f7c3ffc5820  50 b1 4c 3d                                      P.L=
  9250 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9250 ms  0x6bc7 cx:0x7f7c25ffcf48
  9250 ms     | 0x6bc7 EC_ValidatePublicKey()
  9252 ms     | 0x6bc7 ret:0x0
  9252 ms  0x6bc7 ret:0x7f7c3ffc9820::7f7c3ffc9820  50 3b 4d 3d                                      P;M=
  9252 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9252 ms  0x6bc7 cx:0x7f7c25ffcda8
  9253 ms     | 0x6bc7 EC_ValidatePublicKey()
  9253 ms     | 0x6bc7 ret:0x0
  9253 ms  0x6bc7 ret:0x7f7c40c10020::7f7c40c10020  90 3c 4d 3d                                      .<M=
  9253 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9253 ms  0x6bc7 cx:0x7f7c25ffcda8
  9254 ms     | 0x6bc7 EC_ValidatePublicKey()
  9255 ms     | 0x6bc7 ret:0x0
  9255 ms  0x6bc7 ret:0x7f7c40c12020::7f7c40c12020  10 3f 4d 3d                                      .?M=
  9262 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9262 ms  0x6bc7 cx:0x7f7c25ffd5c8
  9262 ms     | 0x6bc7 EC_ValidatePublicKey()
  9262 ms     | 0x6bc7 ret:0x0
  9262 ms  0x6bc7 ret:0x7f7c40c14820::7f7c40c14820  00 a6 4e 3d                                      ..N=
  9262 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9262 ms  0x6bc7 cx:0x7f7c25ffd5c8
  9263 ms     | 0x6bc7 EC_ValidatePublicKey()
  9264 ms     | 0x6bc7 ret:0x0
  9264 ms  0x6bc7 ret:0x7f7c40c18020::7f7c40c18020  30 78 50 3d                                      0xP=
  9265 ms  0x6bc7 SSL_ImportFD()
  9265 ms  0x6bc7 ret:0x7f7c3cfeb760
  9265 ms  0x6bc7 SSL_AuthCertificateHook()
  9265 ms  0x6bc7 fd:0x7f7c3cfeb760
  9265 ms  0x6bc7 ret:0x0
  9265 ms  0x6bc7 PR_Connect()
  9265 ms  0x6bc7 fd:0x7f7c3cfeb760
  9266 ms  0x6bc7 SSL_ImportFD()
  9266 ms  0x6bc7 ret:0x7f7c3cfebac0
  9266 ms  0x6bc7 SSL_AuthCertificateHook()
  9266 ms  0x6bc7 fd:0x7f7c3cfebac0
  9266 ms  0x6bc7 ret:0x0
  9266 ms  0x6bc7 PR_Connect()
  9266 ms  0x6bc7 fd:0x7f7c3cfebac0
  9266 ms  0x6bc7 SSL_ImportFD()
  9266 ms  0x6bc7 ret:0x7f7c3cffb2b0
  9266 ms  0x6bc7 SSL_AuthCertificateHook()
  9266 ms  0x6bc7 fd:0x7f7c3cffb2b0
  9266 ms  0x6bc7 ret:0x0
  9266 ms  0x6bc7 PR_Connect()
  9266 ms  0x6bc7 fd:0x7f7c3cffb2b0
  9272 ms  0x6bc7 SSL_ImportFD()
  9272 ms  0x6bc7 ret:0x7f7c3cffb790
  9272 ms  0x6bc7 SSL_AuthCertificateHook()
  9272 ms  0x6bc7 fd:0x7f7c3cffb790
  9272 ms  0x6bc7 ret:0x0
  9272 ms  0x6bc7 PR_Connect()
  9272 ms  0x6bc7 fd:0x7f7c3cffb790
  9274 ms  SECKEY_ECParamsToKeySize()
  9274 ms  0x6bc7 ret:0x100
  9274 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9274 ms  0x6bc7 cx:0x7f7c25ffc588
  9275 ms     | 0x6bc7 EC_ValidatePublicKey()
  9276 ms     | 0x6bc7 ret:0x0
  9276 ms  0x6bc7 ret:0x7f7c40c26820::7f7c40c26820  b0 f0 5c 3d                                      ..\=
  9276 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9276 ms  0x6bc7 seckey:0x7f7c40c26820
  9276 ms     | 0x6bc7 EC_ValidatePublicKey()
  9278 ms     | 0x6bc7 ret:0x0
  9279 ms  0x6bc7 ret:0x7f7c2610a780
  9279 ms  0x6bc7 PK11_DeriveWithFlags()
  9279 ms  0x6bc7 basekey:0x7f7c2610a780
  9279 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9279 ms  0x6bc7 ret:0x7f7c2610a980
  9279 ms  0x6bc7 PK11_Derive()
  9279 ms  0x6bc7 basekey:0x7f7c2610a980
  9279 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9279 ms  0x6bc7 ret:0x7f7c2610aa80
  9279 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9279 ms  0x6bc7 privk:0x7f7c40c26820::7f7c40c26820  b0 f0 5c 3d                                      ..\=
  9279 ms  0x6bc7 privk:0x7f7c40c26820::7f7c40c26820  e5 e5 e5 e5                                      ....
  9279 ms  0x6bc7 PK11_Encrypt()
  9279 ms  0x6bc7 symkey:0x7f7c37c85080
  9280 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9280 ms  0x6bc7 cx:0x7f7c25ffefc8
  9281 ms     | 0x6bc7 EC_ValidatePublicKey()
  9281 ms     | 0x6bc7 ret:0x0
  9281 ms  0x6bc7 ret:0x7f7c40c26820::7f7c40c26820  80 b8 5b 3d                                      ..[=
  9281 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9281 ms  0x6bc7 cx:0x7f7c25ffefc8
  9281 ms     | 0x6bc7 EC_ValidatePublicKey()
  9283 ms     | 0x6bc7 ret:0x0
  9283 ms  0x6bc7 ret:0x7f7c40c29820::7f7c40c29820  b0 fa 5c 3d                                      ..\=
  9283 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9283 ms  0x6bc7 cx:0x7f7c25fff648
  9284 ms     | 0x6bc7 EC_ValidatePublicKey()
  9284 ms     | 0x6bc7 ret:0x0
  9284 ms  0x6bc7 ret:0x7f7c40fce020::7f7c40fce020  60 e0 5e 3d                                      `.^=
  9284 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9284 ms  0x6bc7 cx:0x7f7c25fff648
  9284 ms     | 0x6bc7 EC_ValidatePublicKey()
  9286 ms     | 0x6bc7 ret:0x0
  9286 ms  0x6bc7 ret:0x7f7c40fd0020::7f7c40fd0020  f0 91 62 3d                                      ..b=
  9287 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9287 ms  0x6bc7 cx:0x7f7c25fff4a8
  9288 ms     | 0x6bc7 EC_ValidatePublicKey()
  9288 ms     | 0x6bc7 ret:0x0
  9288 ms  0x6bc7 ret:0x7f7c40fd2820::7f7c40fd2820  a0 56 46 38                                      .VF8
  9288 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9288 ms  0x6bc7 cx:0x7f7c25fff4a8
  9289 ms     | 0x6bc7 EC_ValidatePublicKey()
  9290 ms     | 0x6bc7 ret:0x0
  9290 ms  0x6bc7 ret:0x7f7c40fd4820::7f7c40fd4820  a0 31 64 3d                                      .1d=
  9290 ms  0x6bc7 SSL_ImportFD()
  9290 ms  0x6bc7 ret:0x7f7c3cffe910
  9290 ms  0x6bc7 SSL_AuthCertificateHook()
  9290 ms  0x6bc7 fd:0x7f7c3cffe910
  9290 ms  0x6bc7 ret:0x0
  9290 ms  0x6bc7 PR_Connect()
  9290 ms  0x6bc7 fd:0x7f7c3cffe910
  9291 ms  0x6bc7 SSL_ImportFD()
  9291 ms  0x6bc7 ret:0x7f7c3cffbd90
  9291 ms  0x6bc7 SSL_AuthCertificateHook()
  9291 ms  0x6bc7 fd:0x7f7c3cffbd90
  9291 ms  0x6bc7 ret:0x0
  9291 ms  0x6bc7 PR_Connect()
  9291 ms  0x6bc7 fd:0x7f7c3cffbd90
  9304 ms  SECKEY_ECParamsToKeySize()
  9304 ms  0x6bc7 ret:0x100
  9304 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9304 ms  0x6bc7 cx:0x7f7c36ff0b28
  9305 ms     | 0x6bc7 EC_ValidatePublicKey()
  9306 ms     | 0x6bc7 ret:0x0
  9306 ms  0x6bc7 ret:0x7f7c40fdb820::7f7c40fdb820  e0 8c e4 3f                                      ...?
  9306 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9306 ms  0x6bc7 seckey:0x7f7c40fdb820
  9306 ms     | 0x6bc7 EC_ValidatePublicKey()
  9308 ms     | 0x6bc7 ret:0x0
  9310 ms  0x6bc7 ret:0x7f7c2610a780
  9310 ms  0x6bc7 PK11_DeriveWithFlags()
  9310 ms  0x6bc7 basekey:0x7f7c2610a780
  9310 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9310 ms  0x6bc7 ret:0x7f7c2610ab00
  9310 ms  0x6bc7 PK11_Derive()
  9310 ms  0x6bc7 basekey:0x7f7c2610ab00
  9310 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9310 ms  0x6bc7 ret:0x7f7c2610ac80
  9310 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9310 ms  0x6bc7 privk:0x7f7c40fdb820::7f7c40fdb820  e0 8c e4 3f                                      ...?
  9310 ms  0x6bc7 privk:0x7f7c40fdb820::7f7c40fdb820  e5 e5 e5 e5                                      ....
  9310 ms  0x6bc7 PK11_Encrypt()
  9310 ms  0x6bc7 symkey:0x7f7c36f70c80
           /* TID 0x6bcf */
  9311 ms  0x6bcf PR_Close()
  9311 ms  0x6bcf fd:0x7f7c3d2022b0
           /* TID 0x6c28 */
  9311 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9311 ms  0x6c28 ret:0x0
  9311 ms  0x6c28 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9311 ms  0x6c28 ret:0x0
           /* TID 0x6bc7 */
  9312 ms  0x6bc7 SSL_AuthCertificateComplete()
  9312 ms  0x6bc7 fd:0x7f7c36f77550
  9312 ms  0x6bc7 err:0x0
  9312 ms  0x6bc7 PK11_Encrypt()
  9312 ms  0x6bc7 symkey:0x7f7c37c85080
  9322 ms  SECKEY_ECParamsToKeySize()
  9322 ms  0x6bc7 ret:0x100
  9322 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9322 ms  0x6bc7 cx:0x7f7c5f4a84a8
  9322 ms     | 0x6bc7 EC_ValidatePublicKey()
  9324 ms     | 0x6bc7 ret:0x0
  9324 ms  0x6bc7 ret:0x7f7c40fda820::7f7c40fda820  e0 07 e6 3f                                      ...?
  9324 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9324 ms  0x6bc7 seckey:0x7f7c40fda820
  9324 ms     | 0x6bc7 EC_ValidatePublicKey()
  9325 ms     | 0x6bc7 ret:0x0
  9327 ms  0x6bc7 ret:0x7f7c2610a780
  9327 ms  0x6bc7 PK11_DeriveWithFlags()
  9327 ms  0x6bc7 basekey:0x7f7c2610a780
  9327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9327 ms  0x6bc7 ret:0x7f7c36de0300
  9327 ms  0x6bc7 PK11_Derive()
  9327 ms  0x6bc7 basekey:0x7f7c36de0300
  9327 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9327 ms  0x6bc7 ret:0x7f7c2610b880
  9327 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9327 ms  0x6bc7 privk:0x7f7c40fda820::7f7c40fda820  e0 07 e6 3f                                      ...?
  9328 ms  0x6bc7 privk:0x7f7c40fda820::7f7c40fda820  e5 e5 e5 e5                                      ....
  9328 ms  0x6bc7 PK11_Encrypt()
  9328 ms  0x6bc7 symkey:0x7f7c38386380
  9329 ms  0x6bc7 SSL_AuthCertificateComplete()
  9329 ms  0x6bc7 fd:0x7f7c3878a0d0
  9329 ms  0x6bc7 err:0x0
  9329 ms  0x6bc7 PK11_Encrypt()
  9329 ms  0x6bc7 symkey:0x7f7c38386380
  9329 ms  0x6bc7 PK11_Encrypt()
  9329 ms  0x6bc7 symkey:0x7f7c38386380
  9330 ms  SECKEY_ECParamsToKeySize()
  9330 ms  0x6bc7 ret:0x100
  9330 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9330 ms  0x6bc7 cx:0x7f7c418de648
  9331 ms     | 0x6bc7 EC_ValidatePublicKey()
  9332 ms     | 0x6bc7 ret:0x0
  9332 ms  0x6bc7 ret:0x7f7c40fdf820::7f7c40fdf820  10 25 eb 3f                                      .%.?
  9332 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9332 ms  0x6bc7 seckey:0x7f7c40fdf820
  9332 ms     | 0x6bc7 EC_ValidatePublicKey()
  9334 ms     | 0x6bc7 ret:0x0
  9335 ms  0x6bc7 ret:0x7f7c2610a780
  9335 ms  0x6bc7 PK11_DeriveWithFlags()
  9335 ms  0x6bc7 basekey:0x7f7c2610a780
  9335 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9335 ms  0x6bc7 ret:0x7f7c2610a680
  9335 ms  0x6bc7 PK11_Derive()
  9335 ms  0x6bc7 basekey:0x7f7c2610a680
  9335 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9335 ms  0x6bc7 ret:0x7f7c260e4d80
  9335 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9335 ms  0x6bc7 privk:0x7f7c40fdf820::7f7c40fdf820  10 25 eb 3f                                      .%.?
  9335 ms  0x6bc7 privk:0x7f7c40fdf820::7f7c40fdf820  e5 e5 e5 e5                                      ....
  9335 ms  0x6bc7 PK11_Encrypt()
  9335 ms  0x6bc7 symkey:0x7f7c38386900
  9336 ms  0x6bc7 PR_Close()
  9336 ms  0x6bc7 fd:0x7f7c3cffbd90
  9336 ms  0x6bc7 PR_Close()
  9336 ms  0x6bc7 fd:0x7f7c3cf3f1f0
  9336 ms  0x6bc7 SSL_AuthCertificateComplete()
  9336 ms  0x6bc7 fd:0x7f7c38748c10
  9336 ms  0x6bc7 err:0x0
  9337 ms  0x6bc7 PK11_Encrypt()
  9337 ms  0x6bc7 symkey:0x7f7c38386900
  9337 ms  0x6bc7 PK11_Encrypt()
  9337 ms  0x6bc7 symkey:0x7f7c38386380
           /* TID 0x6bcf */
  9338 ms  0x6bcf PR_Close()
  9338 ms  0x6bcf fd:0x7f7c3cf3f190
           /* TID 0x6c6b */
  9338 ms  0x6c6b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9338 ms  0x6c6b ret:0x0
  9338 ms  0x6c6b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9338 ms  0x6c6b ret:0x0
           /* TID 0x6bc7 */
  9339 ms  0x6bc7 SSL_AuthCertificateComplete()
  9339 ms  0x6bc7 fd:0x7f7c38748ca0
  9339 ms  0x6bc7 err:0x0
  9339 ms  0x6bc7 PK11_Encrypt()
  9339 ms  0x6bc7 symkey:0x7f7c36f70c80
  9340 ms  SECKEY_ECParamsToKeySize()
  9340 ms  0x6bc7 ret:0x100
  9340 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9340 ms  0x6bc7 cx:0x7f7c25ffefc8
  9340 ms     | 0x6bc7 EC_ValidatePublicKey()
  9342 ms     | 0x6bc7 ret:0x0
  9342 ms  0x6bc7 ret:0x7f7c40fe0820::7f7c40fe0820  d0 03 e6 3f                                      ...?
  9342 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9342 ms  0x6bc7 seckey:0x7f7c40fe0820
  9342 ms     | 0x6bc7 EC_ValidatePublicKey()
  9344 ms     | 0x6bc7 ret:0x0
  9345 ms  0x6bc7 ret:0x7f7c2610a780
  9345 ms  0x6bc7 PK11_DeriveWithFlags()
  9345 ms  0x6bc7 basekey:0x7f7c2610a780
  9345 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9345 ms  0x6bc7 ret:0x7f7c36de0200
  9345 ms  0x6bc7 PK11_Derive()
  9345 ms  0x6bc7 basekey:0x7f7c36de0200
  9345 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9345 ms  0x6bc7 ret:0x7f7c36de0280
  9345 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9345 ms  0x6bc7 privk:0x7f7c40fe0820::7f7c40fe0820  d0 03 e6 3f                                      ...?
  9345 ms  0x6bc7 privk:0x7f7c40fe0820::7f7c40fe0820  e5 e5 e5 e5                                      ....
  9345 ms  0x6bc7 PK11_Encrypt()
  9345 ms  0x6bc7 symkey:0x7f7c38386080
  9345 ms  0x6bc7 SSL_AuthCertificateComplete()
  9345 ms  0x6bc7 fd:0x7f7c37c84df0
  9345 ms  0x6bc7 err:0x0
  9346 ms  SECKEY_ECParamsToKeySize()
  9346 ms  0x6bc7 ret:0x100
  9346 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9346 ms  0x6bc7 cx:0x7f7c25ffc0a8
  9347 ms     | 0x6bc7 EC_ValidatePublicKey()
  9348 ms     | 0x6bc7 ret:0x0
  9348 ms  0x6bc7 ret:0x7f7c40fe2020::7f7c40fe2020  e0 07 e6 3f                                      ...?
  9348 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9348 ms  0x6bc7 seckey:0x7f7c40fe2020
  9349 ms     | 0x6bc7 EC_ValidatePublicKey()
  9350 ms     | 0x6bc7 ret:0x0
  9352 ms  0x6bc7 ret:0x7f7c2610a780
  9352 ms  0x6bc7 PK11_DeriveWithFlags()
  9352 ms  0x6bc7 basekey:0x7f7c2610a780
  9352 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9352 ms  0x6bc7 ret:0x7f7c2610ba00
  9352 ms  0x6bc7 PK11_Derive()
  9352 ms  0x6bc7 basekey:0x7f7c2610ba00
  9352 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9352 ms  0x6bc7 ret:0x7f7c36de0080
  9352 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9352 ms  0x6bc7 privk:0x7f7c40fe2020::7f7c40fe2020  e0 07 e6 3f                                      ...?
  9352 ms  0x6bc7 privk:0x7f7c40fe2020::7f7c40fe2020  e5 e5 e5 e5                                      ....
  9352 ms  0x6bc7 PK11_Encrypt()
  9352 ms  0x6bc7 symkey:0x7f7c38387180
  9358 ms  SECKEY_ECParamsToKeySize()
  9358 ms  0x6bc7 ret:0x100
  9358 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9358 ms  0x6bc7 cx:0x7f7c25ffc3e8
  9359 ms     | 0x6bc7 EC_ValidatePublicKey()
  9361 ms     | 0x6bc7 ret:0x0
  9361 ms  0x6bc7 ret:0x7f7c40fe2820::7f7c40fe2820  10 25 eb 3f                                      .%.?
  9361 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9361 ms  0x6bc7 seckey:0x7f7c40fe2820
  9361 ms     | 0x6bc7 EC_ValidatePublicKey()
  9362 ms     | 0x6bc7 ret:0x0
  9364 ms  0x6bc7 ret:0x7f7c2610a780
  9364 ms  0x6bc7 PK11_DeriveWithFlags()
  9364 ms  0x6bc7 basekey:0x7f7c2610a780
  9364 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9364 ms  0x6bc7 ret:0x7f7c2610bb00
  9364 ms  0x6bc7 PK11_Derive()
  9364 ms  0x6bc7 basekey:0x7f7c2610bb00
  9364 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9364 ms  0x6bc7 ret:0x7f7c2610b900
  9364 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9364 ms  0x6bc7 privk:0x7f7c40fe2820::7f7c40fe2820  10 25 eb 3f                                      .%.?
  9364 ms  0x6bc7 privk:0x7f7c40fe2820::7f7c40fe2820  e5 e5 e5 e5                                      ....
  9364 ms  0x6bc7 PK11_Encrypt()
  9364 ms  0x6bc7 symkey:0x7f7c38387780
  9365 ms  SECKEY_ECParamsToKeySize()
  9365 ms  0x6bc7 ret:0x100
  9365 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9365 ms  0x6bc7 cx:0x7f7c25ffc728
  9365 ms     | 0x6bc7 EC_ValidatePublicKey()
  9367 ms     | 0x6bc7 ret:0x0
  9367 ms  0x6bc7 ret:0x7f7c40fe3820::7f7c40fe3820  e0 27 eb 3f                                      .'.?
  9367 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9367 ms  0x6bc7 seckey:0x7f7c40fe3820
  9367 ms     | 0x6bc7 EC_ValidatePublicKey()
           /* TID 0x6bcf */
  9368 ms  0x6bcf PR_Close()
  9368 ms  0x6bcf fd:0x7f7c3cffecd0
  9369 ms  0x6bcf PR_Close()
  9369 ms  0x6bcf fd:0x7f7c3cffecd0
  9369 ms  0x6bcf PR_Close()
  9369 ms  0x6bcf fd:0x7f7c3cffedf0
  9369 ms  0x6bcf PR_Close()
  9369 ms  0x6bcf fd:0x7f7c3d202100
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d202250
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d2022b0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d202340
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d202400
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d2024c0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d202580
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d2027c0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d2029a0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24b130
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24b1c0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24b520
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24b700
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24b970
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d24bf10
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a040
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a250
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a400
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a460
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a760
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a7c0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33a9d0
  9370 ms  0x6bcf PR_Close()
  9370 ms  0x6bcf fd:0x7f7c3d33ac70
           /* TID 0x6bc7 */
  9371 ms     | 0x6bc7 ret:0x0
  9372 ms  0x6bc7 ret:0x7f7c2610a780
  9372 ms  0x6bc7 PK11_DeriveWithFlags()
  9372 ms  0x6bc7 basekey:0x7f7c2610a780
  9372 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9372 ms  0x6bc7 ret:0x7f7c36de0100
  9372 ms  0x6bc7 PK11_Derive()
  9372 ms  0x6bc7 basekey:0x7f7c36de0100
  9372 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9372 ms  0x6bc7 ret:0x7f7c36de0180
  9372 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9372 ms  0x6bc7 privk:0x7f7c40fe3820::7f7c40fe3820  e0 27 eb 3f                                      .'.?
  9372 ms  0x6bc7 privk:0x7f7c40fe3820::7f7c40fe3820  e5 e5 e5 e5                                      ....
  9372 ms  0x6bc7 PK11_Encrypt()
  9372 ms  0x6bc7 symkey:0x7f7c383c7180
  9374 ms  SECKEY_ECParamsToKeySize()
  9374 ms  0x6bc7 ret:0x100
  9374 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9374 ms  0x6bc7 cx:0x7f7c25fff648
  9375 ms     | 0x6bc7 EC_ValidatePublicKey()
  9376 ms     | 0x6bc7 ret:0x0
  9376 ms  0x6bc7 ret:0x7f7c40fe3820::7f7c40fe3820  f0 2b eb 3f                                      .+.?
  9376 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9376 ms  0x6bc7 seckey:0x7f7c40fe3820
  9376 ms     | 0x6bc7 EC_ValidatePublicKey()
  9378 ms     | 0x6bc7 ret:0x0
  9379 ms  0x6bc7 ret:0x7f7c2610a780
  9379 ms  0x6bc7 PK11_DeriveWithFlags()
  9379 ms  0x6bc7 basekey:0x7f7c2610a780
  9379 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9379 ms  0x6bc7 ret:0x7f7c2610b700
  9379 ms  0x6bc7 PK11_Derive()
  9379 ms  0x6bc7 basekey:0x7f7c2610b700
  9379 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9379 ms  0x6bc7 ret:0x7f7c2610b500
  9379 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9379 ms  0x6bc7 privk:0x7f7c40fe3820::7f7c40fe3820  f0 2b eb 3f                                      .+.?
  9379 ms  0x6bc7 privk:0x7f7c40fe3820::7f7c40fe3820  e5 e5 e5 e5                                      ....
  9379 ms  0x6bc7 PK11_Encrypt()
  9379 ms  0x6bc7 symkey:0x7f7c383c7380
  9380 ms  SECKEY_ECParamsToKeySize()
  9380 ms  0x6bc7 ret:0x100
  9380 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9380 ms  0x6bc7 cx:0x7f7c25fff4a8
  9381 ms     | 0x6bc7 EC_ValidatePublicKey()
  9382 ms     | 0x6bc7 ret:0x0
  9382 ms  0x6bc7 ret:0x7f7c40fe4020::7f7c40fe4020  e0 2c eb 3f                                      .,.?
  9382 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9382 ms  0x6bc7 seckey:0x7f7c40fe4020
  9382 ms     | 0x6bc7 EC_ValidatePublicKey()
  9384 ms     | 0x6bc7 ret:0x0
  9385 ms  0x6bc7 ret:0x7f7c2610a780
  9385 ms  0x6bc7 PK11_DeriveWithFlags()
  9385 ms  0x6bc7 basekey:0x7f7c2610a780
  9385 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9385 ms  0x6bc7 ret:0x7f7c2610b380
  9385 ms  0x6bc7 PK11_Derive()
  9385 ms  0x6bc7 basekey:0x7f7c2610b380
  9385 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9385 ms  0x6bc7 ret:0x7f7c2610af80
  9385 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9385 ms  0x6bc7 privk:0x7f7c40fe4020::7f7c40fe4020  e0 2c eb 3f                                      .,.?
  9385 ms  0x6bc7 privk:0x7f7c40fe4020::7f7c40fe4020  e5 e5 e5 e5                                      ....
  9386 ms  0x6bc7 PK11_Encrypt()
  9386 ms  0x6bc7 symkey:0x7f7c383c7600
  9386 ms  0x6bc7 PK11_Encrypt()
  9386 ms  0x6bc7 symkey:0x7f7c38386080
  9386 ms  0x6bc7 SSL_AuthCertificateComplete()
  9386 ms  0x6bc7 fd:0x7f7c36f77dc0
  9386 ms  0x6bc7 err:0x0
  9386 ms  0x6bc7 SSL_AuthCertificateComplete()
  9386 ms  0x6bc7 fd:0x7f7c383fe8b0
  9386 ms  0x6bc7 err:0x0
  9386 ms  0x6bc7 SSL_AuthCertificateComplete()
  9386 ms  0x6bc7 fd:0x7f7c376fe640
  9386 ms  0x6bc7 err:0x0
  9386 ms  0x6bc7 SSL_AuthCertificateComplete()
  9386 ms  0x6bc7 fd:0x7f7c37c3aaf0
  9386 ms  0x6bc7 err:0x0
  9386 ms  0x6bc7 SSL_AuthCertificateComplete()
  9386 ms  0x6bc7 fd:0x7f7c37c3aa90
  9386 ms  0x6bc7 err:0x0
  9387 ms  SECKEY_ECParamsToKeySize()
  9387 ms  0x6bc7 ret:0x100
  9387 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9387 ms  0x6bc7 cx:0x7f7c36ff0cc8
  9388 ms     | 0x6bc7 EC_ValidatePublicKey()
  9389 ms     | 0x6bc7 ret:0x0
  9389 ms  0x6bc7 ret:0x7f7c410a6020::7f7c410a6020  10 2f eb 3f                                      ./.?
  9389 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9389 ms  0x6bc7 seckey:0x7f7c410a6020
  9389 ms     | 0x6bc7 EC_ValidatePublicKey()
  9392 ms     | 0x6bc7 ret:0x0
  9393 ms  0x6bc7 ret:0x7f7c2610a780
  9393 ms  0x6bc7 PK11_DeriveWithFlags()
  9393 ms  0x6bc7 basekey:0x7f7c2610a780
  9393 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9393 ms  0x6bc7 ret:0x7f7c2610b600
  9393 ms  0x6bc7 PK11_Derive()
  9393 ms  0x6bc7 basekey:0x7f7c2610b600
  9393 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9393 ms  0x6bc7 ret:0x7f7c2610b680
  9393 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9393 ms  0x6bc7 privk:0x7f7c410a6020::7f7c410a6020  10 2f eb 3f                                      ./.?
  9394 ms  0x6bc7 privk:0x7f7c410a6020::7f7c410a6020  e5 e5 e5 e5                                      ....
  9394 ms  0x6bc7 PK11_Encrypt()
  9394 ms  0x6bc7 symkey:0x7f7c383c7980
  9394 ms  0x6bc7 PK11_Encrypt()
  9394 ms  0x6bc7 symkey:0x7f7c38387180
  9394 ms  0x6bc7 PK11_Encrypt()
  9394 ms  0x6bc7 symkey:0x7f7c38387780
  9395 ms  0x6bc7 PK11_Encrypt()
  9395 ms  0x6bc7 symkey:0x7f7c38387780
  9396 ms  SECKEY_ECParamsToKeySize()
  9396 ms  0x6bc7 ret:0x100
  9396 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9396 ms  0x6bc7 cx:0x7f7c25ffc248
  9396 ms     | 0x6bc7 EC_ValidatePublicKey()
  9398 ms     | 0x6bc7 ret:0x0
  9398 ms  0x6bc7 ret:0x7f7c41db0820::7f7c41db0820  b0 95 eb 3f                                      ...?
  9398 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9398 ms  0x6bc7 seckey:0x7f7c41db0820
  9398 ms     | 0x6bc7 EC_ValidatePublicKey()
  9399 ms     | 0x6bc7 ret:0x0
  9401 ms  0x6bc7 ret:0x7f7c2610a780
  9401 ms  0x6bc7 PK11_DeriveWithFlags()
  9401 ms  0x6bc7 basekey:0x7f7c2610a780
  9401 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9401 ms  0x6bc7 ret:0x7f7c2610b300
  9401 ms  0x6bc7 PK11_Derive()
  9401 ms  0x6bc7 basekey:0x7f7c2610b300
  9401 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9401 ms  0x6bc7 ret:0x7f7c2610b180
  9401 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9401 ms  0x6bc7 privk:0x7f7c41db0820::7f7c41db0820  b0 95 eb 3f                                      ...?
  9401 ms  0x6bc7 privk:0x7f7c41db0820::7f7c41db0820  e5 e5 e5 e5                                      ....
  9401 ms  0x6bc7 PK11_Encrypt()
  9401 ms  0x6bc7 symkey:0x7f7c383c7d00
  9402 ms  0x6bc7 PK11_Encrypt()
  9402 ms  0x6bc7 symkey:0x7f7c383c7180
  9402 ms  0x6bc7 PK11_Encrypt()
  9402 ms  0x6bc7 symkey:0x7f7c383c7180
  9402 ms  0x6bc7 PK11_Encrypt()
  9402 ms  0x6bc7 symkey:0x7f7c383c7380
  9403 ms  0x6bc7 PK11_Encrypt()
  9403 ms  0x6bc7 symkey:0x7f7c383c7600
  9403 ms  0x6bc7 SSL_AuthCertificateComplete()
  9403 ms  0x6bc7 fd:0x7f7c38748cd0
  9403 ms  0x6bc7 err:0x0
  9403 ms  0x6bc7 PK11_Encrypt()
  9403 ms  0x6bc7 symkey:0x7f7c38386380
  9403 ms  0x6bc7 SSL_AuthCertificateComplete()
  9403 ms  0x6bc7 fd:0x7f7c383fe490
  9403 ms  0x6bc7 err:0x0
  9404 ms  0x6bc7 PK11_Encrypt()
  9404 ms  0x6bc7 symkey:0x7f7c383c7980
  9404 ms  0x6bc7 PK11_Encrypt()
  9404 ms  0x6bc7 symkey:0x7f7c383c7d00
  9404 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9404 ms  0x6bc7 cx:0x7f7c25ffe948
  9405 ms     | 0x6bc7 EC_ValidatePublicKey()
  9405 ms     | 0x6bc7 ret:0x0
  9405 ms  0x6bc7 ret:0x7f7c41db3020::7f7c41db3020  e0 2c eb 3f                                      .,.?
  9405 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9405 ms  0x6bc7 cx:0x7f7c25ffe948
  9405 ms     | 0x6bc7 EC_ValidatePublicKey()
  9407 ms     | 0x6bc7 ret:0x0
  9407 ms  0x6bc7 ret:0x7f7c41db5020::7f7c41db5020  90 3c f1 3f                                      .<.?
  9407 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9407 ms  0x6bc7 cx:0x7f7c25ffe7a8
  9408 ms     | 0x6bc7 EC_ValidatePublicKey()
  9408 ms     | 0x6bc7 ret:0x0
  9408 ms  0x6bc7 ret:0x7f7c41db8020::7f7c41db8020  b0 65 f1 3f                                      .e.?
  9408 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9408 ms  0x6bc7 cx:0x7f7c25ffe7a8
  9409 ms     | 0x6bc7 EC_ValidatePublicKey()
  9410 ms     | 0x6bc7 ret:0x0
  9410 ms  0x6bc7 ret:0x7f7c41dba820::7f7c41dba820  80 6d f1 3f                                      .m.?
  9415 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9415 ms  0x6bc7 cx:0x7f7c25ffd768
  9415 ms     | 0x6bc7 EC_ValidatePublicKey()
  9415 ms     | 0x6bc7 ret:0x0
  9415 ms  0x6bc7 ret:0x7f7c41dc5020::7f7c41dc5020  70 b9 f1 3f                                      p..?
  9415 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9415 ms  0x6bc7 cx:0x7f7c25ffd768
  9416 ms     | 0x6bc7 EC_ValidatePublicKey()
  9417 ms     | 0x6bc7 ret:0x0
  9417 ms  0x6bc7 ret:0x7f7c41e20820::7f7c41e20820  e0 67 f4 3f                                      .g.?
  9419 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9419 ms  0x6bc7 cx:0x7f7c25ffeae8
  9419 ms     | 0x6bc7 EC_ValidatePublicKey()
  9419 ms     | 0x6bc7 ret:0x0
  9419 ms  0x6bc7 ret:0x7f7c41e25820::7f7c41e25820  e0 42 f6 3f                                      .B.?
  9419 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9419 ms  0x6bc7 cx:0x7f7c25ffeae8
  9420 ms     | 0x6bc7 EC_ValidatePublicKey()
  9421 ms     | 0x6bc7 ret:0x0
  9421 ms  0x6bc7 ret:0x7f7c41e29820::7f7c41e29820  50 c1 ff 3f                                      P..?
  9422 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9422 ms  0x6bc7 cx:0x7f7c25ffec88
  9422 ms     | 0x6bc7 EC_ValidatePublicKey()
  9422 ms     | 0x6bc7 ret:0x0
  9422 ms  0x6bc7 ret:0x7f7c41e31820::7f7c41e31820  60 c5 ff 3f                                      `..?
  9422 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9422 ms  0x6bc7 cx:0x7f7c25ffec88
  9423 ms     | 0x6bc7 EC_ValidatePublicKey()
  9424 ms     | 0x6bc7 ret:0x0
  9424 ms  0x6bc7 ret:0x7f7c41e34820::7f7c41e34820  b0 7f c0 40                                      ...@
  9425 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9425 ms  0x6bc7 privk:0x7f7c40c29820::7f7c40c29820  b0 fa 5c 3d                                      ..\=
  9425 ms  0x6bc7 privk:0x7f7c40c29820::7f7c40c29820  e5 e5 e5 e5                                      ....
  9425 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9425 ms  0x6bc7 privk:0x7f7c40c26820::7f7c40c26820  80 b8 5b 3d                                      ..[=
  9425 ms  0x6bc7 privk:0x7f7c40c26820::7f7c40c26820  e5 e5 e5 e5                                      ....
  9425 ms  0x6bc7 PK11_Encrypt()
  9425 ms  0x6bc7 symkey:0x7f7c38387780
  9431 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9431 ms  0x6bc7 privk:0x7f7c40fd0020::7f7c40fd0020  f0 91 62 3d                                      ..b=
  9432 ms  0x6bc7 privk:0x7f7c40fd0020::7f7c40fd0020  e5 e5 e5 e5                                      ....
  9432 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9432 ms  0x6bc7 privk:0x7f7c40fce020::7f7c40fce020  60 e0 5e 3d                                      `.^=
  9432 ms  0x6bc7 privk:0x7f7c40fce020::7f7c40fce020  e5 e5 e5 e5                                      ....
  9440 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9440 ms  0x6bc7 privk:0x7f7c40fd4820::7f7c40fd4820  a0 31 64 3d                                      .1d=
  9440 ms  0x6bc7 privk:0x7f7c40fd4820::7f7c40fd4820  e5 e5 e5 e5                                      ....
  9440 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9440 ms  0x6bc7 privk:0x7f7c40fd2820::7f7c40fd2820  a0 56 46 38                                      .VF8
  9440 ms  0x6bc7 privk:0x7f7c40fd2820::7f7c40fd2820  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
  9448 ms  0x6bcf PR_Close()
  9448 ms  0x6bcf fd:0x7f7c37c3a430
           /* TID 0x6bc7 */
  9525 ms  SECKEY_ECParamsToKeySize()
  9525 ms  0x6bc7 ret:0x100
  9525 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9525 ms  0x6bc7 cx:0x7f7c25ffd428
  9526 ms     | 0x6bc7 EC_ValidatePublicKey()
  9530 ms     | 0x6bc7 ret:0x0
  9530 ms  0x6bc7 ret:0x7f7c40c29020::7f7c40c29020  80 b8 5b 3d                                      ..[=
  9530 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9530 ms  0x6bc7 seckey:0x7f7c40c29020
  9530 ms     | 0x6bc7 EC_ValidatePublicKey()
  9539 ms     | 0x6bc7 ret:0x0
  9545 ms  0x6bc7 ret:0x7f7c2610a780
  9545 ms  0x6bc7 PK11_DeriveWithFlags()
  9545 ms  0x6bc7 basekey:0x7f7c2610a780
  9545 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9545 ms  0x6bc7 ret:0x7f7c2610af00
  9545 ms  0x6bc7 PK11_Derive()
  9545 ms  0x6bc7 basekey:0x7f7c2610af00
  9545 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9545 ms  0x6bc7 ret:0x7f7c2610aa00
  9545 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9545 ms  0x6bc7 privk:0x7f7c40c29020::7f7c40c29020  80 b8 5b 3d                                      ..[=
  9545 ms  0x6bc7 privk:0x7f7c40c29020::7f7c40c29020  e5 e5 e5 e5                                      ....
  9545 ms  0x6bc7 PK11_Encrypt()
  9545 ms  0x6bc7 symkey:0x7f7c383cc500
  9545 ms  0x6bc7 SSL_AuthCertificateComplete()
  9545 ms  0x6bc7 fd:0x7f7c3bd8c1c0
  9545 ms  0x6bc7 err:0x0
           /* TID 0x6bcf */
  9555 ms  0x6bcf PR_Close()
  9555 ms  0x6bcf fd:0x7f7c37c3aeb0
           /* TID 0x6bc7 */
  9557 ms  SECKEY_ECParamsToKeySize()
  9557 ms  0x6bc7 ret:0x100
  9557 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9557 ms  0x6bc7 cx:0x7f7c25ffc8c8
  9558 ms     | 0x6bc7 EC_ValidatePublicKey()
  9560 ms     | 0x6bc7 ret:0x0
  9560 ms  0x6bc7 ret:0x7f7c40c29020::7f7c40c29020  80 b8 5b 3d                                      ..[=
  9560 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9560 ms  0x6bc7 seckey:0x7f7c40c29020
  9560 ms     | 0x6bc7 EC_ValidatePublicKey()
  9562 ms     | 0x6bc7 ret:0x0
  9563 ms  0x6bc7 ret:0x7f7c2610a780
  9563 ms  0x6bc7 PK11_DeriveWithFlags()
  9563 ms  0x6bc7 basekey:0x7f7c2610a780
  9563 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9563 ms  0x6bc7 ret:0x7f7c2610b200
  9563 ms  0x6bc7 PK11_Derive()
  9563 ms  0x6bc7 basekey:0x7f7c2610b200
  9563 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9563 ms  0x6bc7 ret:0x7f7c2610b280
  9563 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9563 ms  0x6bc7 privk:0x7f7c40c29020::7f7c40c29020  80 b8 5b 3d                                      ..[=
  9564 ms  0x6bc7 privk:0x7f7c40c29020::7f7c40c29020  e5 e5 e5 e5                                      ....
  9564 ms  0x6bc7 PK11_Encrypt()
  9564 ms  0x6bc7 symkey:0x7f7c383c7700
  9569 ms  0x6bc7 SSL_AuthCertificateComplete()
  9569 ms  0x6bc7 fd:0x7f7c387ea400
  9569 ms  0x6bc7 err:0x0
  9570 ms  0x6bc7 PK11_Encrypt()
  9570 ms  0x6bc7 symkey:0x7f7c383c7700
  9572 ms  SECKEY_ECParamsToKeySize()
  9572 ms  0x6bc7 ret:0x100
  9572 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9572 ms  0x6bc7 cx:0x7f7c25ffca68
  9572 ms     | 0x6bc7 EC_ValidatePublicKey()
  9574 ms     | 0x6bc7 ret:0x0
  9574 ms  0x6bc7 ret:0x7f7c40c29820::7f7c40c29820  b0 fa 5c 3d                                      ..\=
  9574 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9574 ms  0x6bc7 seckey:0x7f7c40c29820
  9574 ms     | 0x6bc7 EC_ValidatePublicKey()
  9575 ms     | 0x6bc7 ret:0x0
  9579 ms  0x6bc7 ret:0x7f7c2610a780
  9579 ms  0x6bc7 PK11_DeriveWithFlags()
  9579 ms  0x6bc7 basekey:0x7f7c2610a780
  9579 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9579 ms  0x6bc7 ret:0x7f7c2610ae00
  9579 ms  0x6bc7 PK11_Derive()
  9579 ms  0x6bc7 basekey:0x7f7c2610ae00
  9579 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9579 ms  0x6bc7 ret:0x7f7c2610b400
  9579 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9579 ms  0x6bc7 privk:0x7f7c40c29820::7f7c40c29820  b0 fa 5c 3d                                      ..\=
  9579 ms  0x6bc7 privk:0x7f7c40c29820::7f7c40c29820  e5 e5 e5 e5                                      ....
  9579 ms  0x6bc7 PK11_Encrypt()
  9579 ms  0x6bc7 symkey:0x7f7c383ccb00
  9579 ms  0x6bc7 SSL_AuthCertificateComplete()
  9579 ms  0x6bc7 fd:0x7f7c383a0a00
  9579 ms  0x6bc7 err:0x0
  9580 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9580 ms  0x6bc7 privk:0x7f7c3ce19820::7f7c3ce19820  60 6f 16 3a                                      `o.:
  9580 ms  0x6bc7 privk:0x7f7c3ce19820::7f7c3ce19820  e5 e5 e5 e5                                      ....
  9580 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9580 ms  0x6bc7 privk:0x7f7c3ce14820::7f7c3ce14820  00 66 16 3a                                      .f.:
  9580 ms  0x6bc7 privk:0x7f7c3ce14820::7f7c3ce14820  e5 e5 e5 e5                                      ....
  9586 ms  SECKEY_ECParamsToKeySize()
  9586 ms  0x6bc7 ret:0x100
  9586 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9586 ms  0x6bc7 cx:0x7f7c25ffcc08
  9587 ms     | 0x6bc7 EC_ValidatePublicKey()
  9588 ms     | 0x6bc7 ret:0x0
  9588 ms  0x6bc7 ret:0x7f7c3ce18820::7f7c3ce18820  70 6e 16 3a                                      pn.:
  9588 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9588 ms  0x6bc7 seckey:0x7f7c3ce18820
  9588 ms     | 0x6bc7 EC_ValidatePublicKey()
  9590 ms     | 0x6bc7 ret:0x0
  9591 ms  0x6bc7 ret:0x7f7c2610a780
  9591 ms  0x6bc7 PK11_DeriveWithFlags()
  9591 ms  0x6bc7 basekey:0x7f7c2610a780
  9591 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9591 ms  0x6bc7 ret:0x7f7c2610b800
  9591 ms  0x6bc7 PK11_Derive()
  9591 ms  0x6bc7 basekey:0x7f7c2610b800
  9592 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9592 ms  0x6bc7 ret:0x7f7c36de0500
  9592 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9592 ms  0x6bc7 privk:0x7f7c3ce18820::7f7c3ce18820  70 6e 16 3a                                      pn.:
  9592 ms  0x6bc7 privk:0x7f7c3ce18820::7f7c3ce18820  e5 e5 e5 e5                                      ....
  9592 ms  0x6bc7 PK11_Encrypt()
  9592 ms  0x6bc7 symkey:0x7f7c3846c980
  9592 ms  0x6bc7 SSL_AuthCertificateComplete()
  9592 ms  0x6bc7 fd:0x7f7c3a1813d0
  9592 ms  0x6bc7 err:0x0
  9592 ms  0x6bc7 PK11_Encrypt()
  9592 ms  0x6bc7 symkey:0x7f7c3846c980
  9593 ms  SECKEY_ECParamsToKeySize()
  9593 ms  0x6bc7 ret:0x100
  9593 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9593 ms  0x6bc7 cx:0x7f7c25ffd288
  9594 ms     | 0x6bc7 EC_ValidatePublicKey()
  9595 ms     | 0x6bc7 ret:0x0
  9595 ms  0x6bc7 ret:0x7f7c3d6ca820::7f7c3d6ca820  60 6f 16 3a                                      `o.:
  9595 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9595 ms  0x6bc7 seckey:0x7f7c3d6ca820
  9595 ms     | 0x6bc7 EC_ValidatePublicKey()
  9597 ms     | 0x6bc7 ret:0x0
  9598 ms  0x6bc7 ret:0x7f7c2610a780
  9598 ms  0x6bc7 PK11_DeriveWithFlags()
  9598 ms  0x6bc7 basekey:0x7f7c2610a780
  9598 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9598 ms  0x6bc7 ret:0x7f7c260fa300
  9598 ms  0x6bc7 PK11_Derive()
  9598 ms  0x6bc7 basekey:0x7f7c260fa300
  9598 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9598 ms  0x6bc7 ret:0x7f7c2610bb80
  9598 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9598 ms  0x6bc7 privk:0x7f7c3d6ca820::7f7c3d6ca820  60 6f 16 3a                                      `o.:
  9598 ms  0x6bc7 privk:0x7f7c3d6ca820::7f7c3d6ca820  e5 e5 e5 e5                                      ....
  9598 ms  0x6bc7 PK11_Encrypt()
  9598 ms  0x6bc7 symkey:0x7f7c3846cd00
  9602 ms  SECKEY_ECParamsToKeySize()
  9602 ms  0x6bc7 ret:0x100
  9602 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9602 ms  0x6bc7 cx:0x7f7c25ffd0e8
  9602 ms     | 0x6bc7 EC_ValidatePublicKey()
  9604 ms     | 0x6bc7 ret:0x0
  9604 ms  0x6bc7 ret:0x7f7c40c27020::7f7c40c27020  c0 be 5b 3d                                      ..[=
  9604 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9604 ms  0x6bc7 seckey:0x7f7c40c27020
  9604 ms     | 0x6bc7 EC_ValidatePublicKey()
  9605 ms     | 0x6bc7 ret:0x0
  9607 ms  0x6bc7 ret:0x7f7c2610a780
  9607 ms  0x6bc7 PK11_DeriveWithFlags()
  9607 ms  0x6bc7 basekey:0x7f7c2610a780
  9607 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9607 ms  0x6bc7 ret:0x7f7c36de0480
  9607 ms  0x6bc7 PK11_Derive()
  9607 ms  0x6bc7 basekey:0x7f7c36de0480
  9607 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9607 ms  0x6bc7 ret:0x7f7c3846dd80
  9607 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9607 ms  0x6bc7 privk:0x7f7c40c27020::7f7c40c27020  c0 be 5b 3d                                      ..[=
  9607 ms  0x6bc7 privk:0x7f7c40c27020::7f7c40c27020  e5 e5 e5 e5                                      ....
  9607 ms  0x6bc7 PK11_Encrypt()
  9607 ms  0x6bc7 symkey:0x7f7c3848d580
  9611 ms  0x6bc7 PK11_Encrypt()
  9611 ms  0x6bc7 symkey:0x7f7c38386380
  9611 ms  0x6bc7 SSL_AuthCertificateComplete()
  9611 ms  0x6bc7 fd:0x7f7c3a1c10d0
  9611 ms  0x6bc7 err:0x0
  9611 ms  0x6bc7 SSL_AuthCertificateComplete()
  9611 ms  0x6bc7 fd:0x7f7c3a1c1940
  9611 ms  0x6bc7 err:0x0
  9611 ms  0x6bc7 PK11_Encrypt()
  9611 ms  0x6bc7 symkey:0x7f7c3846cd00
  9611 ms  0x6bc7 PK11_Encrypt()
  9611 ms  0x6bc7 symkey:0x7f7c3848d580
  9612 ms  SECKEY_ECParamsToKeySize()
  9612 ms  0x6bc7 ret:0x100
  9612 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9612 ms  0x6bc7 cx:0x7f7c25ffd5c8
  9613 ms     | 0x6bc7 EC_ValidatePublicKey()
  9615 ms     | 0x6bc7 ret:0x0
  9615 ms  0x6bc7 ret:0x7f7c40fcd820::7f7c40fcd820  d0 f3 5c 3d                                      ..\=
  9615 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9615 ms  0x6bc7 seckey:0x7f7c40fcd820
  9615 ms     | 0x6bc7 EC_ValidatePublicKey()
  9618 ms     | 0x6bc7 ret:0x0
  9620 ms  0x6bc7 ret:0x7f7c2610a780
  9620 ms  0x6bc7 PK11_DeriveWithFlags()
  9620 ms  0x6bc7 basekey:0x7f7c2610a780
  9620 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9620 ms  0x6bc7 ret:0x7f7c3846d480
  9620 ms  0x6bc7 PK11_Derive()
  9620 ms  0x6bc7 basekey:0x7f7c3846d480
  9620 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9620 ms  0x6bc7 ret:0x7f7c3848dc00
  9620 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9620 ms  0x6bc7 privk:0x7f7c40fcd820::7f7c40fcd820  d0 f3 5c 3d                                      ..\=
  9620 ms  0x6bc7 privk:0x7f7c40fcd820::7f7c40fcd820  e5 e5 e5 e5                                      ....
  9620 ms  0x6bc7 PK11_Encrypt()
  9620 ms  0x6bc7 symkey:0x7f7c3848df00
  9620 ms  0x6bc7 SSL_AuthCertificateComplete()
  9620 ms  0x6bc7 fd:0x7f7c3c5fe850
  9620 ms  0x6bc7 err:0x0
  9621 ms  SECKEY_ECParamsToKeySize()
  9621 ms  0x6bc7 ret:0x100
  9621 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9621 ms  0x6bc7 cx:0x7f7c25ffcf48
  9622 ms     | 0x6bc7 EC_ValidatePublicKey()
  9624 ms     | 0x6bc7 ret:0x0
  9624 ms  0x6bc7 ret:0x7f7c40fce020::7f7c40fce020  b0 fa 5c 3d                                      ..\=
  9624 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9624 ms  0x6bc7 seckey:0x7f7c40fce020
  9624 ms     | 0x6bc7 EC_ValidatePublicKey()
  9625 ms     | 0x6bc7 ret:0x0
  9627 ms  0x6bc7 ret:0x7f7c2610a780
  9627 ms  0x6bc7 PK11_DeriveWithFlags()
  9627 ms  0x6bc7 basekey:0x7f7c2610a780
  9627 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9627 ms  0x6bc7 ret:0x7f7c3848e100
  9627 ms  0x6bc7 PK11_Derive()
  9627 ms  0x6bc7 basekey:0x7f7c3848e100
  9627 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9627 ms  0x6bc7 ret:0x7f7c3848e180
  9627 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9627 ms  0x6bc7 privk:0x7f7c40fce020::7f7c40fce020  b0 fa 5c 3d                                      ..\=
  9627 ms  0x6bc7 privk:0x7f7c40fce020::7f7c40fce020  e5 e5 e5 e5                                      ....
  9627 ms  0x6bc7 PK11_Encrypt()
  9627 ms  0x6bc7 symkey:0x7f7c3848e800
  9628 ms  SECKEY_ECParamsToKeySize()
  9628 ms  0x6bc7 ret:0x100
  9628 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9628 ms  0x6bc7 cx:0x7f7c25ffcda8
  9628 ms     | 0x6bc7 EC_ValidatePublicKey()
  9630 ms     | 0x6bc7 ret:0x0
  9630 ms  0x6bc7 ret:0x7f7c40fce820::7f7c40fce820  50 fb 5c 3d                                      P.\=
  9630 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9630 ms  0x6bc7 seckey:0x7f7c40fce820
  9630 ms     | 0x6bc7 EC_ValidatePublicKey()
  9636 ms     | 0x6bc7 ret:0x0
  9637 ms  0x6bc7 ret:0x7f7c2610a780
  9637 ms  0x6bc7 PK11_DeriveWithFlags()
  9637 ms  0x6bc7 basekey:0x7f7c2610a780
  9637 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9637 ms  0x6bc7 ret:0x7f7c384f5280
  9637 ms  0x6bc7 PK11_Derive()
  9637 ms  0x6bc7 basekey:0x7f7c384f5280
  9637 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9637 ms  0x6bc7 ret:0x7f7c384f5380
  9637 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9637 ms  0x6bc7 privk:0x7f7c40fce820::7f7c40fce820  50 fb 5c 3d                                      P.\=
  9637 ms  0x6bc7 privk:0x7f7c40fce820::7f7c40fce820  e5 e5 e5 e5                                      ....
  9637 ms  0x6bc7 PK11_Encrypt()
  9637 ms  0x6bc7 symkey:0x7f7c384f5980
  9638 ms  0x6bc7 PK11_Encrypt()
  9638 ms  0x6bc7 symkey:0x7f7c3848df00
  9638 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9638 ms  0x6bc7 cx:0x7f7c25fff7e8
  9638 ms     | 0x6bc7 EC_ValidatePublicKey()
  9638 ms     | 0x6bc7 ret:0x0
  9638 ms  0x6bc7 ret:0x7f7c40fcf820::7f7c40fcf820  80 f8 5c 3d                                      ..\=
  9639 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9639 ms  0x6bc7 cx:0x7f7c25fff7e8
  9639 ms     | 0x6bc7 EC_ValidatePublicKey()
  9641 ms     | 0x6bc7 ret:0x0
  9641 ms  0x6bc7 ret:0x7f7c40fd2020::7f7c40fd2020  b0 e0 5e 3d                                      ..^=
  9641 ms  0x6bc7 SSL_AuthCertificateComplete()
  9641 ms  0x6bc7 fd:0x7f7c3a181430
  9641 ms  0x6bc7 err:0x0
  9641 ms  0x6bc7 SSL_AuthCertificateComplete()
  9641 ms  0x6bc7 fd:0x7f7c3a115250
  9641 ms  0x6bc7 err:0x0
  9641 ms  0x6bc7 PK11_Encrypt()
  9641 ms  0x6bc7 symkey:0x7f7c3848e800
  9641 ms  0x6bc7 PK11_Encrypt()
  9641 ms  0x6bc7 symkey:0x7f7c384f5980
  9642 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9642 ms  0x6bc7 cx:0x7f7c451d6588
  9643 ms     | 0x6bc7 EC_ValidatePublicKey()
  9643 ms     | 0x6bc7 ret:0x0
  9643 ms  0x6bc7 ret:0x7f7c41e37020::7f7c41e37020  60 5f 62 3d                                      `_b=
  9643 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9643 ms  0x6bc7 cx:0x7f7c451d6588
  9643 ms     | 0x6bc7 EC_ValidatePublicKey()
  9645 ms     | 0x6bc7 ret:0x0
  9645 ms  0x6bc7 ret:0x7f7c41e39020::7f7c41e39020  b0 9f 62 3d                                      ..b=
  9645 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9645 ms  0x6bc7 cx:0x7f7c451d68c8
  9646 ms     | 0x6bc7 EC_ValidatePublicKey()
  9646 ms     | 0x6bc7 ret:0x0
  9646 ms  0x6bc7 ret:0x7f7c41e3b820::7f7c41e3b820  70 34 c8 40                                      p4.@
  9646 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9646 ms  0x6bc7 cx:0x7f7c451d68c8
  9647 ms     | 0x6bc7 EC_ValidatePublicKey()
  9648 ms     | 0x6bc7 ret:0x0
  9648 ms  0x6bc7 ret:0x7f7c41e3d820::7f7c41e3d820  e0 92 c9 40                                      ...@
  9648 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9648 ms  0x6bc7 cx:0x7f7c451d63e8
  9649 ms     | 0x6bc7 EC_ValidatePublicKey()
  9649 ms     | 0x6bc7 ret:0x0
  9649 ms  0x6bc7 ret:0x7f7c4217e820::7f7c4217e820  10 95 c9 40                                      ...@
  9649 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9649 ms  0x6bc7 cx:0x7f7c451d63e8
  9649 ms     | 0x6bc7 EC_ValidatePublicKey()
  9651 ms     | 0x6bc7 ret:0x0
  9651 ms  0x6bc7 ret:0x7f7c4218c020::7f7c4218c020  f0 41 cc 40                                      .A.@
  9653 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9653 ms  0x6bc7 cx:0x7f7c451d6728
  9653 ms     | 0x6bc7 EC_ValidatePublicKey()
  9653 ms     | 0x6bc7 ret:0x0
  9653 ms  0x6bc7 ret:0x7f7c42190820::7f7c42190820  60 d0 ce 40                                      `..@
  9653 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9653 ms  0x6bc7 cx:0x7f7c451d6728
  9654 ms     | 0x6bc7 EC_ValidatePublicKey()
  9655 ms     | 0x6bc7 ret:0x0
  9655 ms  0x6bc7 ret:0x7f7c42197020::7f7c42197020  f0 d1 cf 40                                      ...@
  9658 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9658 ms  0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  70 64 16 3a                                      pd.:
  9658 ms  0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  e5 e5 e5 e5                                      ....
  9658 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9658 ms  0x6bc7 privk:0x7f7c36f51020::7f7c36f51020  90 62 16 3a                                      .b.:
  9658 ms  0x6bc7 privk:0x7f7c36f51020::7f7c36f51020  e5 e5 e5 e5                                      ....
  9668 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9668 ms  0x6bc7 privk:0x7f7c3d372820::7f7c3d372820  60 2f c5 3c                                      `/.<
  9668 ms  0x6bc7 privk:0x7f7c3d372820::7f7c3d372820  e5 e5 e5 e5                                      ....
  9668 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9668 ms  0x6bc7 privk:0x7f7c3d36f820::7f7c3d36f820  b0 75 5f 3c                                      .u_<
  9668 ms  0x6bc7 privk:0x7f7c3d36f820::7f7c3d36f820  e5 e5 e5 e5                                      ....
  9668 ms  0x6bc7 PK11_Encrypt()
  9668 ms  0x6bc7 symkey:0x7f7c38386380
  9679 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9679 ms  0x6bc7 privk:0x7f7c3d67e820::7f7c3d67e820  c0 44 f1 3c                                      .D.<
  9679 ms  0x6bc7 privk:0x7f7c3d67e820::7f7c3d67e820  e5 e5 e5 e5                                      ....
  9679 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9679 ms  0x6bc7 privk:0x7f7c3d379820::7f7c3d379820  30 98 ef 3c                                      0..<
  9679 ms  0x6bc7 privk:0x7f7c3d379820::7f7c3d379820  e5 e5 e5 e5                                      ....
  9679 ms  0x6bc7 PR_Close()
  9679 ms  0x6bc7 fd:0x7f7c38748c10
  9679 ms     | 0x6bc7 PK11_Encrypt()
  9679 ms     | 0x6bc7 symkey:0x7f7c38386900
           /* TID 0x6bcf */
  9692 ms  0x6bcf PR_Close()
  9692 ms  0x6bcf fd:0x7f7c36de4cd0
           /* TID 0x6bc7 */
  9708 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9708 ms  0x6bc7 privk:0x7f7c3d683020::7f7c3d683020  b0 3f f2 3c                                      .?.<
  9708 ms  0x6bc7 privk:0x7f7c3d683020::7f7c3d683020  e5 e5 e5 e5                                      ....
  9708 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9708 ms  0x6bc7 privk:0x7f7c3d681020::7f7c3d681020  20 4e f1 3c                                       N.<
  9708 ms  0x6bc7 privk:0x7f7c3d681020::7f7c3d681020  e5 e5 e5 e5                                      ....
  9708 ms  0x6bc7 PR_Close()
  9708 ms  0x6bc7 fd:0x7f7c36f77dc0
  9708 ms     | 0x6bc7 PK11_Encrypt()
  9708 ms     | 0x6bc7 symkey:0x7f7c38387180
  9708 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9708 ms  0x6bc7 privk:0x7f7c3d693820::7f7c3d693820  10 8a 20 3d                                      .. =
  9709 ms  0x6bc7 privk:0x7f7c3d693820::7f7c3d693820  e5 e5 e5 e5                                      ....
  9709 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9709 ms  0x6bc7 privk:0x7f7c3d691820::7f7c3d691820  f0 86 20 3d                                      .. =
  9709 ms  0x6bc7 privk:0x7f7c3d691820::7f7c3d691820  e5 e5 e5 e5                                      ....
  9718 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9718 ms  0x6bc7 privk:0x7f7c3d68a820::7f7c3d68a820  70 ae f3 3c                                      p..<
  9718 ms  0x6bc7 privk:0x7f7c3d68a820::7f7c3d68a820  e5 e5 e5 e5                                      ....
  9719 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9719 ms  0x6bc7 privk:0x7f7c3d687820::7f7c3d687820  c0 19 f3 3c                                      ...<
  9719 ms  0x6bc7 privk:0x7f7c3d687820::7f7c3d687820  e5 e5 e5 e5                                      ....
  9719 ms  0x6bc7 PK11_Encrypt()
  9719 ms  0x6bc7 symkey:0x7f7c38387780
  9758 ms  SECKEY_ECParamsToKeySize()
  9758 ms  0x6bc7 ret:0x100
  9758 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9758 ms  0x6bc7 cx:0x7f7c25ffe7a8
  9759 ms     | 0x6bc7 EC_ValidatePublicKey()
  9762 ms     | 0x6bc7 ret:0x0
  9762 ms  0x6bc7 ret:0x7f7c3ce09820::7f7c3ce09820  20 64 16 3a                                       d.:
  9762 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9762 ms  0x6bc7 seckey:0x7f7c3ce09820
  9762 ms     | 0x6bc7 EC_ValidatePublicKey()
  9768 ms     | 0x6bc7 ret:0x0
  9771 ms  0x6bc7 ret:0x7f7c36de0080
  9771 ms  0x6bc7 PK11_DeriveWithFlags()
  9771 ms  0x6bc7 basekey:0x7f7c36de0080
  9771 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9771 ms  0x6bc7 ret:0x7f7c2610ba00
  9771 ms  0x6bc7 PK11_Derive()
  9771 ms  0x6bc7 basekey:0x7f7c2610ba00
  9771 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9771 ms  0x6bc7 ret:0x7f7c260e4d80
  9771 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9771 ms  0x6bc7 privk:0x7f7c3ce09820::7f7c3ce09820  20 64 16 3a                                       d.:
  9771 ms  0x6bc7 privk:0x7f7c3ce09820::7f7c3ce09820  e5 e5 e5 e5                                      ....
  9771 ms  0x6bc7 PK11_Encrypt()
  9771 ms  0x6bc7 symkey:0x7f7c38386c00
  9772 ms  0x6bc7 SSL_AuthCertificateComplete()
  9772 ms  0x6bc7 fd:0x7f7c36f77fa0
  9772 ms  0x6bc7 err:0x0
  9772 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9772 ms  0x6bc7 privk:0x7f7c3d36c820::7f7c3d36c820  60 70 5f 3c                                      `p_<
  9772 ms  0x6bc7 privk:0x7f7c3d36c820::7f7c3d36c820  e5 e5 e5 e5                                      ....
  9772 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9772 ms  0x6bc7 privk:0x7f7c3cfb7020::7f7c3cfb7020  80 13 1b 3a                                      ...:
  9772 ms  0x6bc7 privk:0x7f7c3cfb7020::7f7c3cfb7020  e5 e5 e5 e5                                      ....
  9773 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9773 ms  0x6bc7 privk:0x7f7c3d68f020::7f7c3d68f020  b0 85 20 3d                                      .. =
  9773 ms  0x6bc7 privk:0x7f7c3d68f020::7f7c3d68f020  e5 e5 e5 e5                                      ....
  9773 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9773 ms  0x6bc7 privk:0x7f7c3d68d020::7f7c3d68d020  30 dd ff 3c                                      0..<
  9773 ms  0x6bc7 privk:0x7f7c3d68d020::7f7c3d68d020  e5 e5 e5 e5                                      ....
  9774 ms  SECKEY_ECParamsToKeySize()
  9774 ms  0x6bc7 ret:0x100
  9774 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9774 ms  0x6bc7 cx:0x7f7c25ffe948
  9776 ms     | 0x6bc7 EC_ValidatePublicKey()
  9778 ms     | 0x6bc7 ret:0x0
  9779 ms  0x6bc7 ret:0x7f7c3ce0d020::7f7c3ce0d020  b0 10 1b 3a                                      ...:
  9779 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9779 ms  0x6bc7 seckey:0x7f7c3ce0d020
  9779 ms     | 0x6bc7 EC_ValidatePublicKey()
  9781 ms     | 0x6bc7 ret:0x0
  9784 ms  0x6bc7 ret:0x7f7c36de0080
  9784 ms  0x6bc7 PK11_DeriveWithFlags()
  9784 ms  0x6bc7 basekey:0x7f7c36de0080
  9784 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9784 ms  0x6bc7 ret:0x7f7c2610a680
  9784 ms  0x6bc7 PK11_Derive()
  9784 ms  0x6bc7 basekey:0x7f7c2610a680
  9784 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9784 ms  0x6bc7 ret:0x7f7c2610a780
  9784 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9784 ms  0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  b0 10 1b 3a                                      ...:
  9784 ms  0x6bc7 privk:0x7f7c3ce0d020::7f7c3ce0d020  e5 e5 e5 e5                                      ....
  9784 ms  0x6bc7 PK11_Encrypt()
  9784 ms  0x6bc7 symkey:0x7f7c38386780
  9785 ms  0x6bc7 PK11_Encrypt()
  9785 ms  0x6bc7 symkey:0x7f7c38386c00
  9786 ms  SECKEY_ECParamsToKeySize()
  9786 ms  0x6bc7 ret:0x100
  9786 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9786 ms  0x6bc7 cx:0x7f7c25ffd768
  9787 ms     | 0x6bc7 EC_ValidatePublicKey()
  9789 ms     | 0x6bc7 ret:0x0
  9789 ms  0x6bc7 ret:0x7f7c3ce1f820::7f7c3ce1f820  90 12 1b 3a                                      ...:
  9790 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9790 ms  0x6bc7 seckey:0x7f7c3ce1f820
  9790 ms     | 0x6bc7 EC_ValidatePublicKey()
  9791 ms     | 0x6bc7 ret:0x0
  9793 ms  0x6bc7 ret:0x7f7c36de0080
  9793 ms  0x6bc7 PK11_DeriveWithFlags()
  9793 ms  0x6bc7 basekey:0x7f7c36de0080
  9793 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9793 ms  0x6bc7 ret:0x7f7c36df5700
  9793 ms  0x6bc7 PK11_Derive()
  9793 ms  0x6bc7 basekey:0x7f7c36df5700
  9793 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9794 ms  0x6bc7 ret:0x7f7c36df5e00
  9794 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9794 ms  0x6bc7 privk:0x7f7c3ce1f820::7f7c3ce1f820  90 12 1b 3a                                      ...:
  9794 ms  0x6bc7 privk:0x7f7c3ce1f820::7f7c3ce1f820  e5 e5 e5 e5                                      ....
  9794 ms  0x6bc7 PK11_Encrypt()
  9794 ms  0x6bc7 symkey:0x7f7c383cc900
  9794 ms  0x6bc7 PR_Close()
  9794 ms  0x6bc7 fd:0x7f7c383fe490
  9794 ms     | 0x6bc7 PK11_Encrypt()
  9794 ms     | 0x6bc7 symkey:0x7f7c383c7d00
  9794 ms  0x6bc7 SSL_AuthCertificateComplete()
  9794 ms  0x6bc7 fd:0x7f7c376fe160
  9794 ms  0x6bc7 err:0x0
  9794 ms  0x6bc7 SSL_AuthCertificateComplete()
  9794 ms  0x6bc7 fd:0x7f7c383a0580
  9794 ms  0x6bc7 err:0x0
  9794 ms  0x6bc7 PK11_Encrypt()
  9794 ms  0x6bc7 symkey:0x7f7c38386780
  9795 ms  0x6bc7 PK11_Encrypt()
  9795 ms  0x6bc7 symkey:0x7f7c383cc900
  9796 ms  SECKEY_ECParamsToKeySize()
  9796 ms  0x6bc7 ret:0x100
  9796 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9796 ms  0x6bc7 cx:0x7f7c25ffeae8
  9797 ms     | 0x6bc7 EC_ValidatePublicKey()
  9798 ms     | 0x6bc7 ret:0x0
  9798 ms  0x6bc7 ret:0x7f7c3cfb7020::7f7c3cfb7020  50 16 1b 3a                                      P..:
  9798 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9798 ms  0x6bc7 seckey:0x7f7c3cfb7020
  9798 ms     | 0x6bc7 EC_ValidatePublicKey()
  9800 ms     | 0x6bc7 ret:0x0
  9801 ms  0x6bc7 ret:0x7f7c2610b180
  9801 ms  0x6bc7 PK11_DeriveWithFlags()
  9801 ms  0x6bc7 basekey:0x7f7c2610b180
  9802 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9802 ms  0x6bc7 ret:0x7f7c2610b300
  9802 ms  0x6bc7 PK11_Derive()
  9802 ms  0x6bc7 basekey:0x7f7c2610b300
  9802 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9802 ms  0x6bc7 ret:0x7f7c36de0080
  9802 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9802 ms  0x6bc7 privk:0x7f7c3cfb7020::7f7c3cfb7020  50 16 1b 3a                                      P..:
  9802 ms  0x6bc7 privk:0x7f7c3cfb7020::7f7c3cfb7020  e5 e5 e5 e5                                      ....
  9802 ms  0x6bc7 PK11_Encrypt()
  9802 ms  0x6bc7 symkey:0x7f7c383c7b80
  9808 ms  SECKEY_ECParamsToKeySize()
  9808 ms  0x6bc7 ret:0x100
  9808 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9808 ms  0x6bc7 cx:0x7f7c25ffec88
  9808 ms     | 0x6bc7 EC_ValidatePublicKey()
  9810 ms     | 0x6bc7 ret:0x0
  9810 ms  0x6bc7 ret:0x7f7c3d36a820::7f7c3d36a820  90 1c 1b 3a                                      ...:
  9810 ms  0x6bc7 PK11_PubDeriveWithKDF()
  9810 ms  0x6bc7 seckey:0x7f7c3d36a820
  9810 ms     | 0x6bc7 EC_ValidatePublicKey()
  9811 ms     | 0x6bc7 ret:0x0
  9812 ms  0x6bc7 ret:0x7f7c2610b180
  9813 ms  0x6bc7 PK11_DeriveWithFlags()
  9813 ms  0x6bc7 basekey:0x7f7c2610b180
  9813 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9813 ms  0x6bc7 ret:0x7f7c384f6f80
  9813 ms  0x6bc7 PK11_Derive()
  9813 ms  0x6bc7 basekey:0x7f7c384f6f80
  9813 ms     | 0x6bc7 PK11_DeriveWithTemplate()
  9813 ms  0x6bc7 ret:0x7f7c38707200
  9813 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9813 ms  0x6bc7 privk:0x7f7c3d36a820::7f7c3d36a820  90 1c 1b 3a                                      ...:
  9813 ms  0x6bc7 privk:0x7f7c3d36a820::7f7c3d36a820  e5 e5 e5 e5                                      ....
  9813 ms  0x6bc7 PK11_Encrypt()
  9813 ms  0x6bc7 symkey:0x7f7c38707600
  9816 ms  0x6bc7 SSL_AuthCertificateComplete()
  9816 ms  0x6bc7 fd:0x7f7c3cce8cd0
  9816 ms  0x6bc7 err:0x0
  9817 ms  0x6bc7 SSL_AuthCertificateComplete()
  9817 ms  0x6bc7 fd:0x7f7c3cef8310
  9817 ms  0x6bc7 err:0x0
  9817 ms  0x6bc7 PK11_Encrypt()
  9817 ms  0x6bc7 symkey:0x7f7c38707600
  9848 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9848 ms  0x6bc7 privk:0x7f7c3d6c0820::7f7c3d6c0820  b0 20 47 3d                                      . G=
  9848 ms  0x6bc7 privk:0x7f7c3d6c0820::7f7c3d6c0820  e5 e5 e5 e5                                      ....
  9848 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9848 ms  0x6bc7 privk:0x7f7c3d6be020::7f7c3d6be020  20 c4 44 3d                                       .D=
  9848 ms  0x6bc7 privk:0x7f7c3d6be020::7f7c3d6be020  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
  9876 ms  0x6bcf PR_Close()
  9876 ms  0x6bcf fd:0x7f7c36de4df0
           /* TID 0x6bc7 */
  9877 ms  0x6bc7 PR_Close()
  9877 ms  0x6bc7 fd:0x7f7c36f77550
  9877 ms     | 0x6bc7 PK11_Encrypt()
  9877 ms     | 0x6bc7 symkey:0x7f7c37c85080
  9912 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9912 ms  0x6bc7 privk:0x7f7c3d699020::7f7c3d699020  b0 f5 24 3d                                      ..$=
  9912 ms  0x6bc7 privk:0x7f7c3d699020::7f7c3d699020  e5 e5 e5 e5                                      ....
  9912 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9912 ms  0x6bc7 privk:0x7f7c3d697020::7f7c3d697020  30 b8 22 3d                                      0."=
  9913 ms  0x6bc7 privk:0x7f7c3d697020::7f7c3d697020  e5 e5 e5 e5                                      ....
  9929 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9929 ms  0x6bc7 privk:0x7f7c38a21020::7f7c38a21020  80 5d 42 3d                                      .]B=
  9930 ms  0x6bc7 privk:0x7f7c38a21020::7f7c38a21020  e5 e5 e5 e5                                      ....
  9930 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9930 ms  0x6bc7 privk:0x7f7c3d69b820::7f7c3d69b820  c0 84 2f 3d                                      ../=
  9930 ms  0x6bc7 privk:0x7f7c3d69b820::7f7c3d69b820  e5 e5 e5 e5                                      ....
  9935 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9935 ms  0x6bc7 privk:0x7f7c3d6b8020::7f7c3d6b8020  e0 c2 44 3d                                      ..D=
  9936 ms  0x6bc7 privk:0x7f7c3d6b8020::7f7c3d6b8020  e5 e5 e5 e5                                      ....
  9936 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9936 ms  0x6bc7 privk:0x7f7c3d6b3020::7f7c3d6b3020  c0 5e 42 3d                                      .^B=
  9936 ms  0x6bc7 privk:0x7f7c3d6b3020::7f7c3d6b3020  e5 e5 e5 e5                                      ....
  9936 ms  0x6bc7 PR_Close()
  9936 ms  0x6bc7 fd:0x7f7c3a1813d0
  9937 ms     | 0x6bc7 PK11_Encrypt()
  9937 ms     | 0x6bc7 symkey:0x7f7c3846c980
  9941 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9941 ms  0x6bc7 privk:0x7f7c3d6c9820::7f7c3d6c9820  10 da 48 3d                                      ..H=
  9941 ms  0x6bc7 privk:0x7f7c3d6c9820::7f7c3d6c9820  e5 e5 e5 e5                                      ....
  9942 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9942 ms  0x6bc7 privk:0x7f7c3d6c7820::7f7c3d6c7820  e0 2c 47 3d                                      .,G=
  9942 ms  0x6bc7 privk:0x7f7c3d6c7820::7f7c3d6c7820  e5 e5 e5 e5                                      ....
  9942 ms  0x6bc7 PR_Close()
  9942 ms  0x6bc7 fd:0x7f7c3a1c10d0
  9942 ms     | 0x6bc7 PK11_Encrypt()
  9942 ms     | 0x6bc7 symkey:0x7f7c3846cd00
  9954 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9954 ms  0x6bc7 privk:0x7f7c3ffc1020::7f7c3ffc1020  10 7f 4b 3d                                      ..K=
  9954 ms  0x6bc7 privk:0x7f7c3ffc1020::7f7c3ffc1020  e5 e5 e5 e5                                      ....
  9955 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9955 ms  0x6bc7 privk:0x7f7c3ffbc020::7f7c3ffbc020  60 ca 4a 3d                                      `.J=
  9955 ms  0x6bc7 privk:0x7f7c3ffbc020::7f7c3ffbc020  e5 e5 e5 e5                                      ....
  9955 ms  0x6bc7 PR_Close()
  9955 ms  0x6bc7 fd:0x7f7c3a1c1940
  9955 ms     | 0x6bc7 PK11_Encrypt()
  9955 ms     | 0x6bc7 symkey:0x7f7c3848d580
  9964 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9964 ms  0x6bc7 privk:0x7f7c40c18020::7f7c40c18020  30 78 50 3d                                      0xP=
  9964 ms  0x6bc7 privk:0x7f7c40c18020::7f7c40c18020  e5 e5 e5 e5                                      ....
  9966 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9966 ms  0x6bc7 privk:0x7f7c40c14820::7f7c40c14820  00 a6 4e 3d                                      ..N=
  9966 ms  0x6bc7 privk:0x7f7c40c14820::7f7c40c14820  e5 e5 e5 e5                                      ....
  9966 ms  0x6bc7 PR_Close()
  9966 ms  0x6bc7 fd:0x7f7c3c5fe850
  9966 ms     | 0x6bc7 PK11_Encrypt()
  9966 ms     | 0x6bc7 symkey:0x7f7c3848df00
  9990 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9990 ms  0x6bc7 privk:0x7f7c3ffc9820::7f7c3ffc9820  50 3b 4d 3d                                      P;M=
  9992 ms  0x6bc7 privk:0x7f7c3ffc9820::7f7c3ffc9820  e5 e5 e5 e5                                      ....
  9992 ms  0x6bc7 SECKEY_DestroyPrivateKey()
  9992 ms  0x6bc7 privk:0x7f7c3ffc5820::7f7c3ffc5820  50 b1 4c 3d                                      P.L=
  9992 ms  0x6bc7 privk:0x7f7c3ffc5820::7f7c3ffc5820  e5 e5 e5 e5                                      ....
  9996 ms  SECKEY_ECParamsToKeySize()
  9996 ms  0x6bc7 ret:0x100
  9996 ms  0x6bc7 SECKEY_CreateECPrivateKey()
  9996 ms  0x6bc7 cx:0x7f7c451d68c8
  9997 ms     | 0x6bc7 EC_ValidatePublicKey()
 10002 ms     | 0x6bc7 ret:0x0
 10002 ms  0x6bc7 ret:0x7f7c3ce14020::7f7c3ce14020  10 65 16 3a                                      .e.:
 10002 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10002 ms  0x6bc7 seckey:0x7f7c3ce14020
 10002 ms     | 0x6bc7 EC_ValidatePublicKey()
 10005 ms     | 0x6bc7 ret:0x0
 10008 ms  0x6bc7 ret:0x7f7c3848dc00
 10008 ms  0x6bc7 PK11_DeriveWithFlags()
 10008 ms  0x6bc7 basekey:0x7f7c3848dc00
 10008 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10008 ms  0x6bc7 ret:0x7f7c3846d480
 10008 ms  0x6bc7 PK11_Derive()
 10008 ms  0x6bc7 basekey:0x7f7c3846d480
 10008 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10008 ms  0x6bc7 ret:0x7f7c3846dd80
 10008 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10008 ms  0x6bc7 privk:0x7f7c3ce14020::7f7c3ce14020  10 65 16 3a                                      .e.:
 10008 ms  0x6bc7 privk:0x7f7c3ce14020::7f7c3ce14020  e5 e5 e5 e5                                      ....
 10009 ms  0x6bc7 PK11_Encrypt()
 10009 ms  0x6bc7 symkey:0x7f7c3848dd00
 10010 ms  SECKEY_ECParamsToKeySize()
 10010 ms  0x6bc7 ret:0x100
 10010 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10010 ms  0x6bc7 cx:0x7f7c25fff7e8
 10011 ms     | 0x6bc7 EC_ValidatePublicKey()
 10013 ms     | 0x6bc7 ret:0x0
 10013 ms  0x6bc7 ret:0x7f7c3ce15020::7f7c3ce15020  f0 66 16 3a                                      .f.:
 10013 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10013 ms  0x6bc7 seckey:0x7f7c3ce15020
 10013 ms     | 0x6bc7 EC_ValidatePublicKey()
 10016 ms     | 0x6bc7 ret:0x0
 10018 ms  0x6bc7 ret:0x7f7c3848dc00
 10018 ms  0x6bc7 PK11_DeriveWithFlags()
 10018 ms  0x6bc7 basekey:0x7f7c3848dc00
 10018 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10018 ms  0x6bc7 ret:0x7f7c36de0480
 10018 ms  0x6bc7 PK11_Derive()
 10018 ms  0x6bc7 basekey:0x7f7c36de0480
 10018 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10018 ms  0x6bc7 ret:0x7f7c2610bb80
 10018 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10018 ms  0x6bc7 privk:0x7f7c3ce15020::7f7c3ce15020  f0 66 16 3a                                      .f.:
 10018 ms  0x6bc7 privk:0x7f7c3ce15020::7f7c3ce15020  e5 e5 e5 e5                                      ....
 10018 ms  0x6bc7 PK11_Encrypt()
 10018 ms  0x6bc7 symkey:0x7f7c3846de00
 10018 ms  0x6bc7 PR_Close()
 10018 ms  0x6bc7 fd:0x7f7c3a181430
 10018 ms     | 0x6bc7 PK11_Encrypt()
 10018 ms     | 0x6bc7 symkey:0x7f7c3848e800
 10019 ms  0x6bc7 SSL_AuthCertificateComplete()
 10019 ms  0x6bc7 fd:0x7f7c3cffe910
 10019 ms  0x6bc7 err:0x0
 10019 ms  0x6bc7 SSL_AuthCertificateComplete()
 10019 ms  0x6bc7 fd:0x7f7c3cfeb760
 10019 ms  0x6bc7 err:0x0
 10020 ms  SECKEY_ECParamsToKeySize()
 10020 ms  0x6bc7 ret:0x100
 10020 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10020 ms  0x6bc7 cx:0x7f7c451d6588
 10020 ms     | 0x6bc7 EC_ValidatePublicKey()
 10023 ms     | 0x6bc7 ret:0x0
 10023 ms  0x6bc7 ret:0x7f7c3ce19820::7f7c3ce19820  c0 6e 16 3a                                      .n.:
 10024 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10024 ms  0x6bc7 seckey:0x7f7c3ce19820
 10024 ms     | 0x6bc7 EC_ValidatePublicKey()
 10025 ms     | 0x6bc7 ret:0x0
 10027 ms  0x6bc7 ret:0x7f7c3848e180
 10027 ms  0x6bc7 PK11_DeriveWithFlags()
 10027 ms  0x6bc7 basekey:0x7f7c3848e180
 10027 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10027 ms  0x6bc7 ret:0x7f7c3848e100
 10027 ms  0x6bc7 PK11_Derive()
 10027 ms  0x6bc7 basekey:0x7f7c3848e100
 10027 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10027 ms  0x6bc7 ret:0x7f7c3848dc00
 10027 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10027 ms  0x6bc7 privk:0x7f7c3ce19820::7f7c3ce19820  c0 6e 16 3a                                      .n.:
 10027 ms  0x6bc7 privk:0x7f7c3ce19820::7f7c3ce19820  e5 e5 e5 e5                                      ....
 10027 ms  0x6bc7 PK11_Encrypt()
 10027 ms  0x6bc7 symkey:0x7f7c3848e280
 10029 ms  SECKEY_ECParamsToKeySize()
 10029 ms  0x6bc7 ret:0x100
 10029 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10029 ms  0x6bc7 cx:0x7f7c451d6728
 10030 ms     | 0x6bc7 EC_ValidatePublicKey()
 10031 ms     | 0x6bc7 ret:0x0
 10031 ms  0x6bc7 ret:0x7f7c3cfb7820::7f7c3cfb7820  90 1c 1b 3a                                      ...:
 10031 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10031 ms  0x6bc7 seckey:0x7f7c3cfb7820
 10031 ms     | 0x6bc7 EC_ValidatePublicKey()
 10033 ms     | 0x6bc7 ret:0x0
 10034 ms  0x6bc7 ret:0x7f7c3848e180
 10034 ms  0x6bc7 PK11_DeriveWithFlags()
 10034 ms  0x6bc7 basekey:0x7f7c3848e180
 10034 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10034 ms  0x6bc7 ret:0x7f7c260fa300
 10034 ms  0x6bc7 PK11_Derive()
 10034 ms  0x6bc7 basekey:0x7f7c260fa300
 10034 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10034 ms  0x6bc7 ret:0x7f7c36de0500
 10034 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10034 ms  0x6bc7 privk:0x7f7c3cfb7820::7f7c3cfb7820  90 1c 1b 3a                                      ...:
 10034 ms  0x6bc7 privk:0x7f7c3cfb7820::7f7c3cfb7820  e5 e5 e5 e5                                      ....
 10034 ms  0x6bc7 PK11_Encrypt()
 10034 ms  0x6bc7 symkey:0x7f7c3846cc00
 10038 ms  SECKEY_ECParamsToKeySize()
 10038 ms  0x6bc7 ret:0x100
 10038 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10038 ms  0x6bc7 cx:0x7f7c451d63e8
 10038 ms     | 0x6bc7 EC_ValidatePublicKey()
 10040 ms     | 0x6bc7 ret:0x0
 10040 ms  0x6bc7 ret:0x7f7c3d36c820::7f7c3d36c820  30 73 5f 3c                                      0s_<
 10040 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10040 ms  0x6bc7 seckey:0x7f7c3d36c820
 10040 ms     | 0x6bc7 EC_ValidatePublicKey()
 10041 ms     | 0x6bc7 ret:0x0
 10046 ms  0x6bc7 ret:0x7f7c3848e180
 10046 ms  0x6bc7 PK11_DeriveWithFlags()
 10046 ms  0x6bc7 basekey:0x7f7c3848e180
 10046 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10046 ms  0x6bc7 ret:0x7f7c2610b800
 10046 ms  0x6bc7 PK11_Derive()
 10046 ms  0x6bc7 basekey:0x7f7c2610b800
 10046 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10046 ms  0x6bc7 ret:0x7f7c2610aa80
 10046 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10046 ms  0x6bc7 privk:0x7f7c3d36c820::7f7c3d36c820  30 73 5f 3c                                      0s_<
 10046 ms  0x6bc7 privk:0x7f7c3d36c820::7f7c3d36c820  e5 e5 e5 e5                                      ....
 10046 ms  0x6bc7 PK11_Encrypt()
 10046 ms  0x6bc7 symkey:0x7f7c3846c880
 10047 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10047 ms  0x6bc7 privk:0x7f7c40c12020::7f7c40c12020  10 3f 4d 3d                                      .?M=
 10047 ms  0x6bc7 privk:0x7f7c40c12020::7f7c40c12020  e5 e5 e5 e5                                      ....
 10047 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10047 ms  0x6bc7 privk:0x7f7c40c10020::7f7c40c10020  90 3c 4d 3d                                      .<M=
 10047 ms  0x6bc7 privk:0x7f7c40c10020::7f7c40c10020  e5 e5 e5 e5                                      ....
 10047 ms  0x6bc7 PR_Close()
 10047 ms  0x6bc7 fd:0x7f7c3a115250
 10047 ms     | 0x6bc7 PK11_Encrypt()
 10047 ms     | 0x6bc7 symkey:0x7f7c384f5980
 10047 ms  0x6bc7 SSL_AuthCertificateComplete()
 10047 ms  0x6bc7 fd:0x7f7c3cffb2b0
 10047 ms  0x6bc7 err:0x0
 10048 ms  0x6bc7 PK11_Encrypt()
 10048 ms  0x6bc7 symkey:0x7f7c383ccb00
 10048 ms  0x6bc7 SSL_AuthCertificateComplete()
 10048 ms  0x6bc7 fd:0x7f7c3cffb790
 10048 ms  0x6bc7 err:0x0
 10048 ms  0x6bc7 PK11_Encrypt()
 10048 ms  0x6bc7 symkey:0x7f7c38386380
 10048 ms  0x6bc7 SSL_AuthCertificateComplete()
 10048 ms  0x6bc7 fd:0x7f7c3cfebac0
 10048 ms  0x6bc7 err:0x0
 10049 ms  0x6bc7 PK11_Encrypt()
 10049 ms  0x6bc7 symkey:0x7f7c383c7180
 10049 ms  0x6bc7 PK11_Encrypt()
 10049 ms  0x6bc7 symkey:0x7f7c3848dd00
           /* TID 0x6bcf */
 10090 ms  0x6bcf PR_Close()
 10090 ms  0x6bcf fd:0x7f7c36f77130
 10092 ms  0x6bcf PR_Close()
 10092 ms  0x6bcf fd:0x7f7c36f77130
           /* TID 0x6bc7 */
 10094 ms  0x6bc7 PR_Close()
 10094 ms  0x6bc7 fd:0x7f7c38748ca0
 10094 ms     | 0x6bc7 PK11_Encrypt()
 10094 ms     | 0x6bc7 symkey:0x7f7c36f70c80
           /* TID 0x6bcf */
 10096 ms  0x6bcf PR_Close()
 10096 ms  0x6bcf fd:0x7f7c36de49d0
           /* TID 0x6bc7 */
 10117 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10117 ms  0x6bc7 privk:0x7f7c41dba820::7f7c41dba820  80 6d f1 3f                                      .m.?
 10117 ms  0x6bc7 privk:0x7f7c41dba820::7f7c41dba820  e5 e5 e5 e5                                      ....
 10117 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10117 ms  0x6bc7 privk:0x7f7c41db8020::7f7c41db8020  b0 65 f1 3f                                      .e.?
 10117 ms  0x6bc7 privk:0x7f7c41db8020::7f7c41db8020  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10118 ms  0x6bcf PR_Close()
 10118 ms  0x6bcf fd:0x7f7c36de49d0
 10128 ms  0x6bcf PR_Close()
 10128 ms  0x6bcf fd:0x7f7c36de4670
           /* TID 0x6bc7 */
 10135 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10135 ms  0x6bc7 privk:0x7f7c41db5020::7f7c41db5020  90 3c f1 3f                                      .<.?
 10135 ms  0x6bc7 privk:0x7f7c41db5020::7f7c41db5020  e5 e5 e5 e5                                      ....
 10135 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10135 ms  0x6bc7 privk:0x7f7c41db3020::7f7c41db3020  e0 2c eb 3f                                      .,.?
 10135 ms  0x6bc7 privk:0x7f7c41db3020::7f7c41db3020  e5 e5 e5 e5                                      ....
 10147 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10147 ms  0x6bc7 privk:0x7f7c41e20820::7f7c41e20820  e0 67 f4 3f                                      .g.?
 10147 ms  0x6bc7 privk:0x7f7c41e20820::7f7c41e20820  e5 e5 e5 e5                                      ....
 10147 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10147 ms  0x6bc7 privk:0x7f7c41dc5020::7f7c41dc5020  70 b9 f1 3f                                      p..?
 10147 ms  0x6bc7 privk:0x7f7c41dc5020::7f7c41dc5020  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10154 ms  0x6bcf PR_Close()
 10154 ms  0x6bcf fd:0x7f7c36de4670
           /* TID 0x6bc7 */
 10155 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10155 ms  0x6bc7 privk:0x7f7c41e29820::7f7c41e29820  50 c1 ff 3f                                      P..?
 10155 ms  0x6bc7 privk:0x7f7c41e29820::7f7c41e29820  e5 e5 e5 e5                                      ....
 10155 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10155 ms  0x6bc7 privk:0x7f7c41e25820::7f7c41e25820  e0 42 f6 3f                                      .B.?
 10155 ms  0x6bc7 privk:0x7f7c41e25820::7f7c41e25820  e5 e5 e5 e5                                      ....
 10164 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10164 ms  0x6bc7 privk:0x7f7c41e34820::7f7c41e34820  b0 7f c0 40                                      ...@
 10164 ms  0x6bc7 privk:0x7f7c41e34820::7f7c41e34820  e5 e5 e5 e5                                      ....
 10165 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10165 ms  0x6bc7 privk:0x7f7c41e31820::7f7c41e31820  60 c5 ff 3f                                      `..?
 10165 ms  0x6bc7 privk:0x7f7c41e31820::7f7c41e31820  e5 e5 e5 e5                                      ....
 10219 ms  0x6bc7 PR_Close()
 10219 ms  0x6bc7 fd:0x7f7c38748cd0
 10219 ms     | 0x6bc7 PK11_Encrypt()
 10219 ms     | 0x6bc7 symkey:0x7f7c383c7980
           /* TID 0x6bcf */
 10221 ms  0x6bcf PR_Close()
 10221 ms  0x6bcf fd:0x7f7c36f777f0
           /* TID 0x6bc7 */
 10343 ms  0x6bc7 PR_Close()
 10343 ms  0x6bc7 fd:0x7f7c387ea400
 10343 ms     | 0x6bc7 PK11_Encrypt()
 10343 ms     | 0x6bc7 symkey:0x7f7c383c7700
           /* TID 0x6bcf */
 10346 ms  0x6bcf PR_Close()
 10346 ms  0x6bcf fd:0x7f7c260e0df0
           /* TID 0x6bc7 */
 10350 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10350 ms  0x6bc7 privk:0x7f7c41e3d820::7f7c41e3d820  e0 92 c9 40                                      ...@
 10350 ms  0x6bc7 privk:0x7f7c41e3d820::7f7c41e3d820  e5 e5 e5 e5                                      ....
 10350 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10350 ms  0x6bc7 privk:0x7f7c41e3b820::7f7c41e3b820  70 34 c8 40                                      p4.@
 10351 ms  0x6bc7 privk:0x7f7c41e3b820::7f7c41e3b820  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10351 ms  0x6bcf PR_Close()
 10351 ms  0x6bcf fd:0x7f7c260e0df0
           /* TID 0x6bc7 */
 10360 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10360 ms  0x6bc7 privk:0x7f7c40fd2020::7f7c40fd2020  b0 e0 5e 3d                                      ..^=
 10361 ms  0x6bc7 privk:0x7f7c40fd2020::7f7c40fd2020  e5 e5 e5 e5                                      ....
 10361 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10361 ms  0x6bc7 privk:0x7f7c40fcf820::7f7c40fcf820  80 f8 5c 3d                                      ..\=
 10361 ms  0x6bc7 privk:0x7f7c40fcf820::7f7c40fcf820  e5 e5 e5 e5                                      ....
 10375 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10375 ms  0x6bc7 privk:0x7f7c41e39020::7f7c41e39020  b0 9f 62 3d                                      ..b=
 10375 ms  0x6bc7 privk:0x7f7c41e39020::7f7c41e39020  e5 e5 e5 e5                                      ....
 10375 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10375 ms  0x6bc7 privk:0x7f7c41e37020::7f7c41e37020  60 5f 62 3d                                      `_b=
 10376 ms  0x6bc7 privk:0x7f7c41e37020::7f7c41e37020  e5 e5 e5 e5                                      ....
 10385 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10385 ms  0x6bc7 privk:0x7f7c42197020::7f7c42197020  f0 d1 cf 40                                      ...@
 10385 ms  0x6bc7 privk:0x7f7c42197020::7f7c42197020  e5 e5 e5 e5                                      ....
 10385 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10385 ms  0x6bc7 privk:0x7f7c42190820::7f7c42190820  60 d0 ce 40                                      `..@
 10385 ms  0x6bc7 privk:0x7f7c42190820::7f7c42190820  e5 e5 e5 e5                                      ....
 10403 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10403 ms  0x6bc7 privk:0x7f7c4218c020::7f7c4218c020  f0 41 cc 40                                      .A.@
 10403 ms  0x6bc7 privk:0x7f7c4218c020::7f7c4218c020  e5 e5 e5 e5                                      ....
 10404 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10404 ms  0x6bc7 privk:0x7f7c4217e820::7f7c4217e820  10 95 c9 40                                      ...@
 10404 ms  0x6bc7 privk:0x7f7c4217e820::7f7c4217e820  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10428 ms  0x6bcf PR_Close()
 10428 ms  0x6bcf fd:0x7f7c36de4670
           /* TID 0x6bc7 */
 10476 ms  0x6bc7 PK11_Encrypt()
 10476 ms  0x6bc7 symkey:0x7f7c2607dd00
 10477 ms  0x6bc7 PK11_Encrypt()
 10477 ms  0x6bc7 symkey:0x7f7c2607dd00
 10478 ms  0x6bc7 PK11_Encrypt()
 10478 ms  0x6bc7 symkey:0x7f7c383c7600
 10483 ms  0x6bc7 PR_Close()
 10483 ms  0x6bc7 fd:0x7f7c383a0a00
 10483 ms     | 0x6bc7 PK11_Encrypt()
 10483 ms     | 0x6bc7 symkey:0x7f7c383ccb00
           /* TID 0x6bcf */
 10484 ms  0x6bcf PR_Close()
 10484 ms  0x6bcf fd:0x7f7c383fe5b0
           /* TID 0x6bc7 */
 10485 ms  0x6bc7 PK11_Encrypt()
 10485 ms  0x6bc7 symkey:0x7f7c2610a880
 10494 ms  0x6bc7 PK11_Encrypt()
 10494 ms  0x6bc7 symkey:0x7f7c383c7380
           /* TID 0x6bcf */
 10512 ms  0x6bcf PR_Close()
 10512 ms  0x6bcf fd:0x7f7c383a0a00
 10532 ms  0x6bcf PR_Close()
 10532 ms  0x6bcf fd:0x7f7c38748cd0
           /* TID 0x6bc7 */
 10543 ms  0x6bc7 PR_Close()
 10543 ms  0x6bc7 fd:0x7f7c36f77fa0
 10543 ms     | 0x6bc7 PK11_Encrypt()
 10543 ms     | 0x6bc7 symkey:0x7f7c38386c00
           /* TID 0x6bcf */
 10544 ms  0x6bcf PR_Close()
 10544 ms  0x6bcf fd:0x7f7c36f77fa0
 10546 ms  0x6bcf PR_Close()
 10546 ms  0x6bcf fd:0x7f7c36f77fa0
           /* TID 0x6bc7 */
 10562 ms  0x6bc7 PR_Close()
 10562 ms  0x6bc7 fd:0x7f7c376fe160
 10562 ms     | 0x6bc7 PK11_Encrypt()
 10562 ms     | 0x6bc7 symkey:0x7f7c38386780
           /* TID 0x6bcf */
 10563 ms  0x6bcf PR_Close()
 10563 ms  0x6bcf fd:0x7f7c36f77fa0
           /* TID 0x6bc7 */
 10580 ms  0x6bc7 PK11_Encrypt()
 10580 ms  0x6bc7 symkey:0x7f7c38386080
 10670 ms  0x6bc7 SSL_ImportFD()
 10670 ms  0x6bc7 ret:0x7f7c3a181820
 10670 ms  0x6bc7 SSL_AuthCertificateHook()
 10670 ms  0x6bc7 fd:0x7f7c3a181820
 10670 ms  0x6bc7 ret:0x0
 10670 ms  0x6bc7 PR_Connect()
 10670 ms  0x6bc7 fd:0x7f7c3a181820
 10676 ms  0x6bc7 PR_Close()
 10676 ms  0x6bc7 fd:0x7f7c3cef8310
 10676 ms     | 0x6bc7 PK11_Encrypt()
 10676 ms     | 0x6bc7 symkey:0x7f7c38707600
           /* TID 0x6bcf */
 10678 ms  0x6bcf PR_Close()
 10678 ms  0x6bcf fd:0x7f7c260e0df0
           /* TID 0x6bc7 */
 10695 ms  0x6bc7 PR_Close()
 10695 ms  0x6bc7 fd:0x7f7c383a0580
 10695 ms     | 0x6bc7 PK11_Encrypt()
 10695 ms     | 0x6bc7 symkey:0x7f7c383cc900
           /* TID 0x6bcf */
 10698 ms  0x6bcf PR_Close()
 10698 ms  0x6bcf fd:0x7f7c36f778b0
           /* TID 0x6bc7 */
 10704 ms  0x6bc7 SSL_ImportFD()
 10704 ms  0x6bc7 ret:0x7f7c37c3a9d0
 10704 ms  0x6bc7 SSL_AuthCertificateHook()
 10704 ms  0x6bc7 fd:0x7f7c37c3a9d0
 10704 ms  0x6bc7 ret:0x0
 10704 ms  0x6bc7 PR_Connect()
 10704 ms  0x6bc7 fd:0x7f7c37c3a9d0
 10705 ms  0x6bc7 SSL_ImportFD()
 10705 ms  0x6bc7 ret:0x7f7c36f778b0
 10705 ms  0x6bc7 SSL_AuthCertificateHook()
 10705 ms  0x6bc7 fd:0x7f7c36f778b0
 10705 ms  0x6bc7 ret:0x0
 10705 ms  0x6bc7 PR_Connect()
 10705 ms  0x6bc7 fd:0x7f7c36f778b0
 10705 ms  0x6bc7 SSL_ImportFD()
 10705 ms  0x6bc7 ret:0x7f7c36f77a30
 10705 ms  0x6bc7 SSL_AuthCertificateHook()
 10705 ms  0x6bc7 fd:0x7f7c36f77a30
 10705 ms  0x6bc7 ret:0x0
 10705 ms  0x6bc7 PR_Connect()
 10705 ms  0x6bc7 fd:0x7f7c36f77a30
 10705 ms  0x6bc7 SSL_ImportFD()
 10705 ms  0x6bc7 ret:0x7f7c36f77c10
 10705 ms  0x6bc7 SSL_AuthCertificateHook()
 10705 ms  0x6bc7 fd:0x7f7c36f77c10
 10705 ms  0x6bc7 ret:0x0
 10705 ms  0x6bc7 PR_Connect()
 10705 ms  0x6bc7 fd:0x7f7c36f77c10
 10709 ms  0x6bc7 SSL_ImportFD()
 10709 ms  0x6bc7 ret:0x7f7c3cf3f1f0
 10709 ms  0x6bc7 SSL_AuthCertificateHook()
 10709 ms  0x6bc7 fd:0x7f7c3cf3f1f0
 10709 ms  0x6bc7 ret:0x0
 10709 ms  0x6bc7 PR_Connect()
 10709 ms  0x6bc7 fd:0x7f7c3cf3f1f0
 10721 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10721 ms  0x6bc7 cx:0x7f7c451d7288
 10721 ms     | 0x6bc7 EC_ValidatePublicKey()
 10721 ms     | 0x6bc7 ret:0x0
 10721 ms  0x6bc7 ret:0x7f7c3d67f820::7f7c3d67f820  30 dd ff 3c                                      0..<
 10721 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10721 ms  0x6bc7 cx:0x7f7c451d7288
 10722 ms     | 0x6bc7 EC_ValidatePublicKey()
 10723 ms     | 0x6bc7 ret:0x0
 10723 ms  0x6bc7 ret:0x7f7c3d681820::7f7c3d681820  b0 85 20 3d                                      .. =
           /* TID 0x6bcf */
 10732 ms  0x6bcf PR_Close()
 10732 ms  0x6bcf fd:0x7f7c376fe160
           /* TID 0x6bc7 */
 10754 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10754 ms  0x6bc7 cx:0x7f7c451d7428
 10755 ms     | 0x6bc7 EC_ValidatePublicKey()
 10755 ms     | 0x6bc7 ret:0x0
 10755 ms  0x6bc7 ret:0x7f7c3d684020::7f7c3d684020  50 86 20 3d                                      P. =
 10755 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10755 ms  0x6bc7 cx:0x7f7c451d7428
 10755 ms     | 0x6bc7 EC_ValidatePublicKey()
 10757 ms     | 0x6bc7 ret:0x0
 10757 ms  0x6bc7 ret:0x7f7c3d688020::7f7c3d688020  70 89 20 3d                                      p. =
 10757 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10757 ms  0x6bc7 cx:0x7f7c451d7908
 10758 ms     | 0x6bc7 EC_ValidatePublicKey()
 10758 ms     | 0x6bc7 ret:0x0
 10758 ms  0x6bc7 ret:0x7f7c3d68c020::7f7c3d68c020  80 b3 22 3d                                      .."=
 10758 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10758 ms  0x6bc7 cx:0x7f7c451d7908
 10758 ms     | 0x6bc7 EC_ValidatePublicKey()
 10760 ms     | 0x6bc7 ret:0x0
 10760 ms  0x6bc7 ret:0x7f7c3d68e020::7f7c3d68e020  30 98 c2 37                                      0..7
 10760 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10760 ms  0x6bc7 cx:0x7f7c451d7768
 10761 ms     | 0x6bc7 EC_ValidatePublicKey()
 10761 ms     | 0x6bc7 ret:0x0
 10761 ms  0x6bc7 ret:0x7f7c3d690820::7f7c3d690820  70 8e 20 3d                                      p. =
 10761 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10761 ms  0x6bc7 cx:0x7f7c451d7768
 10762 ms     | 0x6bc7 EC_ValidatePublicKey()
 10763 ms     | 0x6bc7 ret:0x0
 10763 ms  0x6bc7 ret:0x7f7c3d692820::7f7c3d692820  00 81 2f 3d                                      ../=
 10763 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10763 ms  0x6bc7 cx:0x7f7c451d75c8
 10764 ms     | 0x6bc7 EC_ValidatePublicKey()
 10764 ms     | 0x6bc7 ret:0x0
 10764 ms  0x6bc7 ret:0x7f7c3d697020::7f7c3d697020  00 36 3f 3d                                      .6?=
 10764 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10764 ms  0x6bc7 cx:0x7f7c451d75c8
 10765 ms     | 0x6bc7 EC_ValidatePublicKey()
 10769 ms     | 0x6bc7 ret:0x0
 10769 ms  0x6bc7 ret:0x7f7c3d699020::7f7c3d699020  d0 5d 42 3d                                      .]B=
 10769 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10769 ms  0x6bc7 cx:0x7f7c451d7aa8
 10770 ms     | 0x6bc7 EC_ValidatePublicKey()
 10770 ms     | 0x6bc7 ret:0x0
 10770 ms  0x6bc7 ret:0x7f7c3d69b820::7f7c3d69b820  10 5f 42 3d                                      ._B=
 10770 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10770 ms  0x6bc7 cx:0x7f7c451d7aa8
 10771 ms     | 0x6bc7 EC_ValidatePublicKey()
 10772 ms     | 0x6bc7 ret:0x0
 10772 ms  0x6bc7 ret:0x7f7c3d6ad820::7f7c3d6ad820  30 c3 44 3d                                      0.D=
 10779 ms  SECKEY_ECParamsToKeySize()
 10779 ms  0x6bc7 ret:0x100
 10779 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10779 ms  0x6bc7 cx:0x7f7c451d7288
 10780 ms     | 0x6bc7 EC_ValidatePublicKey()
 10781 ms     | 0x6bc7 ret:0x0
 10781 ms  0x6bc7 ret:0x7f7c3d6b6820::7f7c3d6b6820  b0 20 47 3d                                      . G=
 10782 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10782 ms  0x6bc7 seckey:0x7f7c3d6b6820
 10782 ms     | 0x6bc7 EC_ValidatePublicKey()
 10784 ms     | 0x6bc7 ret:0x0
 10785 ms  0x6bc7 ret:0x7f7c36df5e00
 10785 ms  0x6bc7 PK11_DeriveWithFlags()
 10785 ms  0x6bc7 basekey:0x7f7c36df5e00
 10785 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10785 ms  0x6bc7 ret:0x7f7c36df5700
 10785 ms  0x6bc7 PK11_Derive()
 10785 ms  0x6bc7 basekey:0x7f7c36df5700
 10785 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10785 ms  0x6bc7 ret:0x7f7c38707200
 10785 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10785 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  b0 20 47 3d                                      . G=
 10785 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  e5 e5 e5 e5                                      ....
 10785 ms  0x6bc7 PK11_Encrypt()
 10785 ms  0x6bc7 symkey:0x7f7c36f6f280
 10785 ms  0x6bc7 SSL_AuthCertificateComplete()
 10785 ms  0x6bc7 fd:0x7f7c3a181820
 10785 ms  0x6bc7 err:0x0
           /* TID 0x6bcf */
 10787 ms  0x6bcf PR_Close()
 10787 ms  0x6bcf fd:0x7f7c38748ca0
           /* TID 0x6bc7 */
 10787 ms  0x6bc7 PK11_Encrypt()
 10787 ms  0x6bc7 symkey:0x7f7c36f6f280
 10812 ms  SECKEY_ECParamsToKeySize()
 10812 ms  0x6bc7 ret:0x100
 10812 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10812 ms  0x6bc7 cx:0x7f7c451d7428
 10813 ms     | 0x6bc7 EC_ValidatePublicKey()
 10814 ms     | 0x6bc7 ret:0x0
 10814 ms  0x6bc7 ret:0x7f7c3d6b6820::7f7c3d6b6820  20 c4 44 3d                                       .D=
 10814 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10814 ms  0x6bc7 seckey:0x7f7c3d6b6820
 10814 ms     | 0x6bc7 EC_ValidatePublicKey()
 10816 ms     | 0x6bc7 ret:0x0
 10820 ms  0x6bc7 ret:0x7f7c36df5e00
 10820 ms  0x6bc7 PK11_DeriveWithFlags()
 10820 ms  0x6bc7 basekey:0x7f7c36df5e00
 10820 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10820 ms  0x6bc7 ret:0x7f7c384f6f80
 10820 ms  0x6bc7 PK11_Derive()
 10820 ms  0x6bc7 basekey:0x7f7c384f6f80
 10820 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10820 ms  0x6bc7 ret:0x7f7c2610a780
 10820 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10820 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  20 c4 44 3d                                       .D=
 10821 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  e5 e5 e5 e5                                      ....
 10821 ms  0x6bc7 PK11_Encrypt()
 10821 ms  0x6bc7 symkey:0x7f7c38707280
 10821 ms  0x6bc7 SSL_AuthCertificateComplete()
 10821 ms  0x6bc7 fd:0x7f7c37c3a9d0
 10821 ms  0x6bc7 err:0x0
 10822 ms  SECKEY_ECParamsToKeySize()
 10822 ms  0x6bc7 ret:0x100
 10822 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10822 ms  0x6bc7 cx:0x7f7c451d7908
 10822 ms     | 0x6bc7 EC_ValidatePublicKey()
 10824 ms     | 0x6bc7 ret:0x0
 10824 ms  0x6bc7 ret:0x7f7c3d6b6820::7f7c3d6b6820  c0 c4 44 3d                                      ..D=
 10824 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10824 ms  0x6bc7 seckey:0x7f7c3d6b6820
 10824 ms     | 0x6bc7 EC_ValidatePublicKey()
 10826 ms     | 0x6bc7 ret:0x0
 10827 ms  0x6bc7 ret:0x7f7c36df5e00
 10827 ms  0x6bc7 PK11_DeriveWithFlags()
 10827 ms  0x6bc7 basekey:0x7f7c36df5e00
 10827 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10827 ms  0x6bc7 ret:0x7f7c2610a680
 10827 ms  0x6bc7 PK11_Derive()
 10827 ms  0x6bc7 basekey:0x7f7c2610a680
 10827 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10827 ms  0x6bc7 ret:0x7f7c260e4d80
 10827 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10827 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  c0 c4 44 3d                                      ..D=
 10827 ms  0x6bc7 privk:0x7f7c3d6b6820::7f7c3d6b6820  e5 e5 e5 e5                                      ....
 10827 ms  0x6bc7 PK11_Encrypt()
 10827 ms  0x6bc7 symkey:0x7f7c38386800
 10828 ms  0x6bc7 PK11_Encrypt()
 10828 ms  0x6bc7 symkey:0x7f7c38707280
 10828 ms  0x6bc7 SSL_AuthCertificateComplete()
 10828 ms  0x6bc7 fd:0x7f7c36f77c10
 10828 ms  0x6bc7 err:0x0
 10828 ms  0x6bc7 PK11_Encrypt()
 10828 ms  0x6bc7 symkey:0x7f7c38386800
 10829 ms  SECKEY_ECParamsToKeySize()
 10829 ms  0x6bc7 ret:0x100
 10829 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10829 ms  0x6bc7 cx:0x7f7c451d7768
 10830 ms     | 0x6bc7 EC_ValidatePublicKey()
 10831 ms     | 0x6bc7 ret:0x0
 10831 ms  0x6bc7 ret:0x7f7c3d6b8020::7f7c3d6b8020  d0 23 46 3d                                      .#F=
 10831 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10831 ms  0x6bc7 seckey:0x7f7c3d6b8020
 10831 ms     | 0x6bc7 EC_ValidatePublicKey()
 10833 ms     | 0x6bc7 ret:0x0
 10834 ms  0x6bc7 ret:0x7f7c36df5e00
 10834 ms  0x6bc7 PK11_DeriveWithFlags()
 10834 ms  0x6bc7 basekey:0x7f7c36df5e00
 10834 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10834 ms  0x6bc7 ret:0x7f7c2610ba00
 10834 ms  0x6bc7 PK11_Derive()
 10834 ms  0x6bc7 basekey:0x7f7c2610ba00
 10834 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10834 ms  0x6bc7 ret:0x7f7c2610b400
 10834 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10834 ms  0x6bc7 privk:0x7f7c3d6b8020::7f7c3d6b8020  d0 23 46 3d                                      .#F=
 10834 ms  0x6bc7 privk:0x7f7c3d6b8020::7f7c3d6b8020  e5 e5 e5 e5                                      ....
 10834 ms  0x6bc7 PK11_Encrypt()
 10834 ms  0x6bc7 symkey:0x7f7c38387100
 10839 ms  SECKEY_ECParamsToKeySize()
 10839 ms  0x6bc7 ret:0x100
 10839 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10839 ms  0x6bc7 cx:0x7f7c451d75c8
 10840 ms     | 0x6bc7 EC_ValidatePublicKey()
 10841 ms     | 0x6bc7 ret:0x0
 10841 ms  0x6bc7 ret:0x7f7c3d6b8820::7f7c3d6b8820  b0 20 47 3d                                      . G=
 10842 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10842 ms  0x6bc7 seckey:0x7f7c3d6b8820
 10842 ms     | 0x6bc7 EC_ValidatePublicKey()
 10843 ms     | 0x6bc7 ret:0x0
 10845 ms  0x6bc7 ret:0x7f7c36df5e00
 10845 ms  0x6bc7 PK11_DeriveWithFlags()
 10845 ms  0x6bc7 basekey:0x7f7c36df5e00
 10845 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10845 ms  0x6bc7 ret:0x7f7c2610ae00
 10845 ms  0x6bc7 PK11_Derive()
 10845 ms  0x6bc7 basekey:0x7f7c2610ae00
 10845 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10845 ms  0x6bc7 ret:0x7f7c2610b280
 10845 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10845 ms  0x6bc7 privk:0x7f7c3d6b8820::7f7c3d6b8820  b0 20 47 3d                                      . G=
 10845 ms  0x6bc7 privk:0x7f7c3d6b8820::7f7c3d6b8820  e5 e5 e5 e5                                      ....
 10845 ms  0x6bc7 PK11_Encrypt()
 10845 ms  0x6bc7 symkey:0x7f7c383cca00
 10846 ms  SECKEY_ECParamsToKeySize()
 10846 ms  0x6bc7 ret:0x100
 10846 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 10846 ms  0x6bc7 cx:0x7f7c451d7aa8
 10847 ms     | 0x6bc7 EC_ValidatePublicKey()
 10848 ms     | 0x6bc7 ret:0x0
 10848 ms  0x6bc7 ret:0x7f7c3d6b9020::7f7c3d6b9020  b0 2a 47 3d                                      .*G=
 10848 ms  0x6bc7 PK11_PubDeriveWithKDF()
 10848 ms  0x6bc7 seckey:0x7f7c3d6b9020
 10848 ms     | 0x6bc7 EC_ValidatePublicKey()
 10850 ms     | 0x6bc7 ret:0x0
 10851 ms  0x6bc7 ret:0x7f7c36df5e00
 10851 ms  0x6bc7 PK11_DeriveWithFlags()
 10851 ms  0x6bc7 basekey:0x7f7c36df5e00
 10851 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10851 ms  0x6bc7 ret:0x7f7c2610b200
 10851 ms  0x6bc7 PK11_Derive()
 10851 ms  0x6bc7 basekey:0x7f7c2610b200
 10851 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 10851 ms  0x6bc7 ret:0x7f7c2610b680
 10851 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10851 ms  0x6bc7 privk:0x7f7c3d6b9020::7f7c3d6b9020  b0 2a 47 3d                                      .*G=
 10851 ms  0x6bc7 privk:0x7f7c3d6b9020::7f7c3d6b9020  e5 e5 e5 e5                                      ....
 10851 ms  0x6bc7 PK11_Encrypt()
 10851 ms  0x6bc7 symkey:0x7f7c36f6fc80
 10855 ms  0x6bc7 SSL_AuthCertificateComplete()
 10855 ms  0x6bc7 fd:0x7f7c36f77a30
 10855 ms  0x6bc7 err:0x0
 10855 ms  0x6bc7 SSL_AuthCertificateComplete()
 10855 ms  0x6bc7 fd:0x7f7c36f778b0
 10855 ms  0x6bc7 err:0x0
 10855 ms  0x6bc7 SSL_AuthCertificateComplete()
 10855 ms  0x6bc7 fd:0x7f7c3cf3f1f0
 10855 ms  0x6bc7 err:0x0
 10855 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10855 ms  0x6bc7 privk:0x7f7c3d681820::7f7c3d681820  b0 85 20 3d                                      .. =
 10855 ms  0x6bc7 privk:0x7f7c3d681820::7f7c3d681820  e5 e5 e5 e5                                      ....
 10855 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10855 ms  0x6bc7 privk:0x7f7c3d67f820::7f7c3d67f820  30 dd ff 3c                                      0..<
 10855 ms  0x6bc7 privk:0x7f7c3d67f820::7f7c3d67f820  e5 e5 e5 e5                                      ....
 10856 ms  0x6bc7 PK11_Encrypt()
 10856 ms  0x6bc7 symkey:0x7f7c38387100
 10856 ms  0x6bc7 PK11_Encrypt()
 10856 ms  0x6bc7 symkey:0x7f7c383cca00
 10856 ms  0x6bc7 PK11_Encrypt()
 10856 ms  0x6bc7 symkey:0x7f7c36f6fc80
           /* TID 0x6bcf */
 10866 ms  0x6bcf PR_Close()
 10866 ms  0x6bcf fd:0x7f7c36de4dc0
           /* TID 0x6bc7 */
 10868 ms  0x6bc7 PR_Close()
 10868 ms  0x6bc7 fd:0x7f7c3cffe910
 10868 ms     | 0x6bc7 PK11_Encrypt()
 10868 ms     | 0x6bc7 symkey:0x7f7c3848dd00
 10871 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10871 ms  0x6bc7 privk:0x7f7c3d688020::7f7c3d688020  70 89 20 3d                                      p. =
 10871 ms  0x6bc7 privk:0x7f7c3d688020::7f7c3d688020  e5 e5 e5 e5                                      ....
 10871 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10871 ms  0x6bc7 privk:0x7f7c3d684020::7f7c3d684020  50 86 20 3d                                      P. =
 10871 ms  0x6bc7 privk:0x7f7c3d684020::7f7c3d684020  e5 e5 e5 e5                                      ....
 10879 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10879 ms  0x6bc7 privk:0x7f7c3d68e020::7f7c3d68e020  30 98 c2 37                                      0..7
 10879 ms  0x6bc7 privk:0x7f7c3d68e020::7f7c3d68e020  e5 e5 e5 e5                                      ....
 10879 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10879 ms  0x6bc7 privk:0x7f7c3d68c020::7f7c3d68c020  80 b3 22 3d                                      .."=
 10880 ms  0x6bc7 privk:0x7f7c3d68c020::7f7c3d68c020  e5 e5 e5 e5                                      ....
 10887 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10887 ms  0x6bc7 privk:0x7f7c3d692820::7f7c3d692820  00 81 2f 3d                                      ../=
 10887 ms  0x6bc7 privk:0x7f7c3d692820::7f7c3d692820  e5 e5 e5 e5                                      ....
 10887 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10887 ms  0x6bc7 privk:0x7f7c3d690820::7f7c3d690820  70 8e 20 3d                                      p. =
 10887 ms  0x6bc7 privk:0x7f7c3d690820::7f7c3d690820  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10895 ms  0x6bcf PR_Close()
 10895 ms  0x6bcf fd:0x7f7c384f90a0
           /* TID 0x6bc7 */
 10896 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10896 ms  0x6bc7 privk:0x7f7c3d699020::7f7c3d699020  d0 5d 42 3d                                      .]B=
 10896 ms  0x6bc7 privk:0x7f7c3d699020::7f7c3d699020  e5 e5 e5 e5                                      ....
 10896 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10896 ms  0x6bc7 privk:0x7f7c3d697020::7f7c3d697020  00 36 3f 3d                                      .6?=
 10896 ms  0x6bc7 privk:0x7f7c3d697020::7f7c3d697020  e5 e5 e5 e5                                      ....
 10905 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10905 ms  0x6bc7 privk:0x7f7c3d6ad820::7f7c3d6ad820  30 c3 44 3d                                      0.D=
 10905 ms  0x6bc7 privk:0x7f7c3d6ad820::7f7c3d6ad820  e5 e5 e5 e5                                      ....
 10905 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 10905 ms  0x6bc7 privk:0x7f7c3d69b820::7f7c3d69b820  10 5f 42 3d                                      ._B=
 10905 ms  0x6bc7 privk:0x7f7c3d69b820::7f7c3d69b820  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 10925 ms  0x6bcf PR_Close()
 10925 ms  0x6bcf fd:0x7f7c36de4ca0
 10934 ms  0x6bcf PR_Close()
 10934 ms  0x6bcf fd:0x7f7c36de4ca0
 10940 ms  0x6bcf PR_Close()
 10940 ms  0x6bcf fd:0x7f7c36de4ca0
 10950 ms  0x6bcf PR_Close()
 10950 ms  0x6bcf fd:0x7f7c36de4ca0
 10959 ms  0x6bcf PR_Close()
 10959 ms  0x6bcf fd:0x7f7c36de4ca0
           /* TID 0x6bc7 */
 11086 ms  0x6bc7 SSL_ImportFD()
 11086 ms  0x6bc7 ret:0x7f7c3878a730
 11086 ms  0x6bc7 SSL_AuthCertificateHook()
 11086 ms  0x6bc7 fd:0x7f7c3878a730
 11086 ms  0x6bc7 ret:0x0
 11086 ms  0x6bc7 PR_Connect()
 11086 ms  0x6bc7 fd:0x7f7c3878a730
 11086 ms  0x6bc7 SSL_ImportFD()
 11086 ms  0x6bc7 ret:0x7f7c387ea430
 11086 ms  0x6bc7 SSL_AuthCertificateHook()
 11086 ms  0x6bc7 fd:0x7f7c387ea430
 11086 ms  0x6bc7 ret:0x0
 11086 ms  0x6bc7 PR_Connect()
 11086 ms  0x6bc7 fd:0x7f7c387ea430
           /* TID 0x6bcf */
 11136 ms  0x6bcf PR_Close()
 11136 ms  0x6bcf fd:0x7f7c376fe040
           /* TID 0x6bc7 */
 11137 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11137 ms  0x6bc7 cx:0x7f7c451d8608
 11137 ms     | 0x6bc7 EC_ValidatePublicKey()
 11138 ms     | 0x6bc7 ret:0x0
 11138 ms  0x6bc7 ret:0x7f7c38a1c820::7f7c38a1c820  70 ae f3 3c                                      p..<
 11138 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11138 ms  0x6bc7 cx:0x7f7c451d8608
 11139 ms     | 0x6bc7 EC_ValidatePublicKey()
 11142 ms     | 0x6bc7 ret:0x0
 11142 ms  0x6bc7 ret:0x7f7c3d680020::7f7c3d680020  b0 85 20 3d                                      .. =
 11148 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11148 ms  0x6bc7 cx:0x7f7c451d87a8
 11149 ms     | 0x6bc7 EC_ValidatePublicKey()
 11149 ms     | 0x6bc7 ret:0x0
 11149 ms  0x6bc7 ret:0x7f7c3d683020::7f7c3d683020  10 8a 20 3d                                      .. =
 11149 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11149 ms  0x6bc7 cx:0x7f7c451d87a8
 11150 ms     | 0x6bc7 EC_ValidatePublicKey()
 11152 ms     | 0x6bc7 ret:0x0
 11152 ms  0x6bc7 ret:0x7f7c3d687020::7f7c3d687020  80 b3 22 3d                                      .."=
           /* TID 0x6bcf */
 11199 ms  0x6bcf PR_Close()
 11199 ms  0x6bcf fd:0x7f7c376fe040
           /* TID 0x6bc7 */
 11200 ms  SECKEY_ECParamsToKeySize()
 11200 ms  0x6bc7 ret:0x100
 11200 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11200 ms  0x6bc7 cx:0x7f7c451d8608
 11201 ms     | 0x6bc7 EC_ValidatePublicKey()
 11202 ms     | 0x6bc7 ret:0x0
 11202 ms  0x6bc7 ret:0x7f7c38a14820::7f7c38a14820  b0 e0 76 38                                      ..v8
 11202 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11202 ms  0x6bc7 seckey:0x7f7c38a14820
 11202 ms     | 0x6bc7 EC_ValidatePublicKey()
 11204 ms     | 0x6bc7 ret:0x0
 11209 ms  0x6bc7 ret:0x7f7c3846dd80
 11209 ms  0x6bc7 PK11_DeriveWithFlags()
 11209 ms  0x6bc7 basekey:0x7f7c3846dd80
 11209 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11209 ms  0x6bc7 ret:0x7f7c3846d480
 11209 ms  0x6bc7 PK11_Derive()
 11209 ms  0x6bc7 basekey:0x7f7c3846d480
 11209 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11209 ms  0x6bc7 ret:0x7f7c36df5e00
 11209 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11209 ms  0x6bc7 privk:0x7f7c38a14820::7f7c38a14820  b0 e0 76 38                                      ..v8
 11210 ms  0x6bc7 privk:0x7f7c38a14820::7f7c38a14820  e5 e5 e5 e5                                      ....
 11210 ms  0x6bc7 PK11_Encrypt()
 11210 ms  0x6bc7 symkey:0x7f7c3848dd80
 11210 ms  0x6bc7 SSL_AuthCertificateComplete()
 11210 ms  0x6bc7 fd:0x7f7c3878a730
 11210 ms  0x6bc7 err:0x0
 11211 ms  SECKEY_ECParamsToKeySize()
 11211 ms  0x6bc7 ret:0x100
 11211 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11211 ms  0x6bc7 cx:0x7f7c451d87a8
 11211 ms     | 0x6bc7 EC_ValidatePublicKey()
 11213 ms     | 0x6bc7 ret:0x0
 11213 ms  0x6bc7 ret:0x7f7c38a1b820::7f7c38a1b820  50 e1 76 38                                      P.v8
 11213 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11213 ms  0x6bc7 seckey:0x7f7c38a1b820
 11213 ms     | 0x6bc7 EC_ValidatePublicKey()
 11214 ms     | 0x6bc7 ret:0x0
 11216 ms  0x6bc7 ret:0x7f7c3846dd80
 11216 ms  0x6bc7 PK11_DeriveWithFlags()
 11216 ms  0x6bc7 basekey:0x7f7c3846dd80
 11216 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11216 ms  0x6bc7 ret:0x7f7c2610b600
 11216 ms  0x6bc7 PK11_Derive()
 11216 ms  0x6bc7 basekey:0x7f7c2610b600
 11216 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11216 ms  0x6bc7 ret:0x7f7c2610ac80
 11216 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11216 ms  0x6bc7 privk:0x7f7c38a1b820::7f7c38a1b820  50 e1 76 38                                      P.v8
 11216 ms  0x6bc7 privk:0x7f7c38a1b820::7f7c38a1b820  e5 e5 e5 e5                                      ....
 11216 ms  0x6bc7 PK11_Encrypt()
 11216 ms  0x6bc7 symkey:0x7f7c383c7780
 11216 ms  0x6bc7 PK11_Encrypt()
 11216 ms  0x6bc7 symkey:0x7f7c3848dd80
 11217 ms  0x6bc7 SSL_AuthCertificateComplete()
 11217 ms  0x6bc7 fd:0x7f7c387ea430
 11217 ms  0x6bc7 err:0x0
 11217 ms  0x6bc7 PK11_Encrypt()
 11217 ms  0x6bc7 symkey:0x7f7c383c7780
 11255 ms  0x6bc7 SSL_ImportFD()
 11255 ms  0x6bc7 ret:0x7f7c3870b3d0
 11255 ms  0x6bc7 SSL_AuthCertificateHook()
 11255 ms  0x6bc7 fd:0x7f7c3870b3d0
 11255 ms  0x6bc7 ret:0x0
 11255 ms  0x6bc7 PR_Connect()
 11255 ms  0x6bc7 fd:0x7f7c3870b3d0
 11259 ms  0x6bc7 SSL_ImportFD()
 11259 ms  0x6bc7 ret:0x7f7c26118970
 11259 ms  0x6bc7 SSL_AuthCertificateHook()
 11259 ms  0x6bc7 fd:0x7f7c26118970
 11259 ms  0x6bc7 ret:0x0
 11259 ms  0x6bc7 PR_Connect()
 11259 ms  0x6bc7 fd:0x7f7c26118970
 11261 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11261 ms  0x6bc7 privk:0x7f7c3d680020::7f7c3d680020  b0 85 20 3d                                      .. =
 11261 ms  0x6bc7 privk:0x7f7c3d680020::7f7c3d680020  e5 e5 e5 e5                                      ....
 11262 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11262 ms  0x6bc7 privk:0x7f7c38a1c820::7f7c38a1c820  70 ae f3 3c                                      p..<
 11262 ms  0x6bc7 privk:0x7f7c38a1c820::7f7c38a1c820  e5 e5 e5 e5                                      ....
 11268 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11268 ms  0x6bc7 privk:0x7f7c3d687020::7f7c3d687020  80 b3 22 3d                                      .."=
 11268 ms  0x6bc7 privk:0x7f7c3d687020::7f7c3d687020  e5 e5 e5 e5                                      ....
 11268 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11268 ms  0x6bc7 privk:0x7f7c3d683020::7f7c3d683020  10 8a 20 3d                                      .. =
 11268 ms  0x6bc7 privk:0x7f7c3d683020::7f7c3d683020  e5 e5 e5 e5                                      ....
 11284 ms  0x6bc7 SSL_ImportFD()
 11284 ms  0x6bc7 ret:0x7f7c383fe460
 11284 ms  0x6bc7 SSL_AuthCertificateHook()
 11284 ms  0x6bc7 fd:0x7f7c383fe460
 11284 ms  0x6bc7 ret:0x0
 11284 ms  0x6bc7 PR_Connect()
 11284 ms  0x6bc7 fd:0x7f7c383fe460
 11306 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11306 ms  0x6bc7 cx:0x7f7c451d8c88
 11307 ms     | 0x6bc7 EC_ValidatePublicKey()
 11307 ms     | 0x6bc7 ret:0x0
 11307 ms  0x6bc7 ret:0x7f7c25f10820::7f7c25f10820  c0 be 3f 38                                      ..?8
 11307 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11307 ms  0x6bc7 cx:0x7f7c451d8c88
 11307 ms     | 0x6bc7 EC_ValidatePublicKey()
 11309 ms     | 0x6bc7 ret:0x0
 11309 ms  0x6bc7 ret:0x7f7c25f17820::7f7c25f17820  50 e1 76 38                                      P.v8
 11310 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11310 ms  0x6bc7 cx:0x7f7c451d8e28
 11311 ms     | 0x6bc7 EC_ValidatePublicKey()
 11311 ms     | 0x6bc7 ret:0x0
 11311 ms  0x6bc7 ret:0x7f7c25f1b020::7f7c25f1b020  80 e3 76 38                                      ..v8
 11311 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11311 ms  0x6bc7 cx:0x7f7c451d8e28
 11312 ms     | 0x6bc7 EC_ValidatePublicKey()
 11313 ms     | 0x6bc7 ret:0x0
 11313 ms  0x6bc7 ret:0x7f7c36d54820::7f7c36d54820  60 3a 79 38                                      `:y8
           /* TID 0x6bcf */
 11331 ms  0x6bcf PR_Close()
 11331 ms  0x6bcf fd:0x7f7c36de4d30
 11334 ms  0x6bcf PR_Close()
 11334 ms  0x6bcf fd:0x7f7c36de4d30
           /* TID 0x6bc7 */
 11340 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11340 ms  0x6bc7 cx:0x7f7c451d8fc8
 11341 ms     | 0x6bc7 EC_ValidatePublicKey()
 11341 ms     | 0x6bc7 ret:0x0
 11341 ms  0x6bc7 ret:0x7f7c36f50020::7f7c36f50020  40 3c 79 38                                      @<y8
 11341 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11341 ms  0x6bc7 cx:0x7f7c451d8fc8
 11341 ms     | 0x6bc7 EC_ValidatePublicKey()
 11343 ms     | 0x6bc7 ret:0x0
 11343 ms  0x6bc7 ret:0x7f7c36f5e020::7f7c36f5e020  00 86 a4 38                                      ...8
 11369 ms  SECKEY_ECParamsToKeySize()
 11369 ms  0x6bc7 ret:0x100
 11369 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11369 ms  0x6bc7 cx:0x7f7c451d8c88
 11369 ms     | 0x6bc7 EC_ValidatePublicKey()
 11374 ms     | 0x6bc7 ret:0x0
 11375 ms  0x6bc7 ret:0x7f7c38a08020::7f7c38a08020  80 8d a4 38                                      ...8
 11375 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11375 ms  0x6bc7 seckey:0x7f7c38a08020
 11375 ms     | 0x6bc7 EC_ValidatePublicKey()
 11378 ms     | 0x6bc7 ret:0x0
 11379 ms  0x6bc7 ret:0x7f7c3846dd80
 11379 ms  0x6bc7 PK11_DeriveWithFlags()
 11379 ms  0x6bc7 basekey:0x7f7c3846dd80
 11379 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11379 ms  0x6bc7 ret:0x7f7c2610ab00
 11379 ms  0x6bc7 PK11_Derive()
 11379 ms  0x6bc7 basekey:0x7f7c2610ab00
 11379 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11380 ms  0x6bc7 ret:0x7f7c384f5380
 11380 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11380 ms  0x6bc7 privk:0x7f7c38a08020::7f7c38a08020  80 8d a4 38                                      ...8
 11380 ms  0x6bc7 privk:0x7f7c38a08020::7f7c38a08020  e5 e5 e5 e5                                      ....
 11380 ms  0x6bc7 PK11_Encrypt()
 11380 ms  0x6bc7 symkey:0x7f7c36f70700
 11380 ms  0x6bc7 SSL_AuthCertificateComplete()
 11380 ms  0x6bc7 fd:0x7f7c3870b3d0
 11380 ms  0x6bc7 err:0x0
 11381 ms  SECKEY_ECParamsToKeySize()
 11381 ms  0x6bc7 ret:0x100
 11381 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11381 ms  0x6bc7 cx:0x7f7c451d8e28
 11382 ms     | 0x6bc7 EC_ValidatePublicKey()
 11383 ms     | 0x6bc7 ret:0x0
 11383 ms  0x6bc7 ret:0x7f7c38a14020::7f7c38a14020  20 8e a4 38                                       ..8
 11384 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11384 ms  0x6bc7 seckey:0x7f7c38a14020
 11384 ms     | 0x6bc7 EC_ValidatePublicKey()
 11388 ms     | 0x6bc7 ret:0x0
 11389 ms  0x6bc7 ret:0x7f7c3846dd80
 11389 ms  0x6bc7 PK11_DeriveWithFlags()
 11389 ms  0x6bc7 basekey:0x7f7c3846dd80
 11389 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11389 ms  0x6bc7 ret:0x7f7c384f5280
 11389 ms  0x6bc7 PK11_Derive()
 11389 ms  0x6bc7 basekey:0x7f7c384f5280
 11389 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11389 ms  0x6bc7 ret:0x7f7c3848e180
 11389 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11389 ms  0x6bc7 privk:0x7f7c38a14020::7f7c38a14020  20 8e a4 38                                       ..8
 11390 ms  0x6bc7 privk:0x7f7c38a14020::7f7c38a14020  e5 e5 e5 e5                                      ....
 11390 ms  0x6bc7 PK11_Encrypt()
 11390 ms  0x6bc7 symkey:0x7f7c384f5500
 11390 ms  0x6bc7 PK11_Encrypt()
 11390 ms  0x6bc7 symkey:0x7f7c36f70700
 11390 ms  0x6bc7 SSL_ImportFD()
 11390 ms  0x6bc7 ret:0x7f7c383fe3a0
 11390 ms  0x6bc7 SSL_AuthCertificateHook()
 11390 ms  0x6bc7 fd:0x7f7c383fe3a0
 11390 ms  0x6bc7 ret:0x0
 11391 ms  0x6bc7 PR_Connect()
 11391 ms  0x6bc7 fd:0x7f7c383fe3a0
 11391 ms  0x6bc7 SSL_ImportFD()
 11391 ms  0x6bc7 ret:0x7f7c36f777c0
 11391 ms  0x6bc7 SSL_AuthCertificateHook()
 11391 ms  0x6bc7 fd:0x7f7c36f777c0
 11391 ms  0x6bc7 ret:0x0
 11391 ms  0x6bc7 PR_Connect()
 11391 ms  0x6bc7 fd:0x7f7c36f777c0
 11391 ms  0x6bc7 SSL_AuthCertificateComplete()
 11391 ms  0x6bc7 fd:0x7f7c26118970
 11391 ms  0x6bc7 err:0x0
 11391 ms  0x6bc7 PK11_Encrypt()
 11391 ms  0x6bc7 symkey:0x7f7c384f5500
 11399 ms  SECKEY_ECParamsToKeySize()
 11399 ms  0x6bc7 ret:0x100
 11399 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11399 ms  0x6bc7 cx:0x7f7c451d8fc8
 11400 ms     | 0x6bc7 EC_ValidatePublicKey()
 11401 ms     | 0x6bc7 ret:0x0
 11401 ms  0x6bc7 ret:0x7f7c38a14820::7f7c38a14820  c0 8e a4 38                                      ...8
 11401 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11401 ms  0x6bc7 seckey:0x7f7c38a14820
 11401 ms     | 0x6bc7 EC_ValidatePublicKey()
 11403 ms     | 0x6bc7 ret:0x0
 11404 ms  0x6bc7 ret:0x7f7c3846dd80
 11404 ms  0x6bc7 PK11_DeriveWithFlags()
 11404 ms  0x6bc7 basekey:0x7f7c3846dd80
 11404 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11404 ms  0x6bc7 ret:0x7f7c2610a980
 11404 ms  0x6bc7 PK11_Derive()
 11404 ms  0x6bc7 basekey:0x7f7c2610a980
 11404 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11404 ms  0x6bc7 ret:0x7f7c2610b180
 11404 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11404 ms  0x6bc7 privk:0x7f7c38a14820::7f7c38a14820  c0 8e a4 38                                      ...8
 11404 ms  0x6bc7 privk:0x7f7c38a14820::7f7c38a14820  e5 e5 e5 e5                                      ....
 11404 ms  0x6bc7 PK11_Encrypt()
 11404 ms  0x6bc7 symkey:0x7f7c376f1280
 11405 ms  0x6bc7 SSL_AuthCertificateComplete()
 11405 ms  0x6bc7 fd:0x7f7c383fe460
 11405 ms  0x6bc7 err:0x0
 11405 ms  0x6bc7 PK11_Encrypt()
 11405 ms  0x6bc7 symkey:0x7f7c376f1280
 11432 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11432 ms  0x6bc7 privk:0x7f7c25f17820::7f7c25f17820  50 e1 76 38                                      P.v8
 11432 ms  0x6bc7 privk:0x7f7c25f17820::7f7c25f17820  e5 e5 e5 e5                                      ....
 11432 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11432 ms  0x6bc7 privk:0x7f7c25f10820::7f7c25f10820  c0 be 3f 38                                      ..?8
 11432 ms  0x6bc7 privk:0x7f7c25f10820::7f7c25f10820  e5 e5 e5 e5                                      ....
 11441 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11441 ms  0x6bc7 cx:0x7f7c451d94a8
 11442 ms     | 0x6bc7 EC_ValidatePublicKey()
 11442 ms     | 0x6bc7 ret:0x0
 11442 ms  0x6bc7 ret:0x7f7c25f10820::7f7c25f10820  c0 be 3f 38                                      ..?8
 11442 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11442 ms  0x6bc7 cx:0x7f7c451d94a8
 11443 ms     | 0x6bc7 EC_ValidatePublicKey()
 11444 ms     | 0x6bc7 ret:0x0
 11444 ms  0x6bc7 ret:0x7f7c25f17820::7f7c25f17820  50 e1 76 38                                      P.v8
 11444 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11444 ms  0x6bc7 privk:0x7f7c36d54820::7f7c36d54820  60 3a 79 38                                      `:y8
 11445 ms  0x6bc7 privk:0x7f7c36d54820::7f7c36d54820  e5 e5 e5 e5                                      ....
 11445 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11445 ms  0x6bc7 privk:0x7f7c25f1b020::7f7c25f1b020  80 e3 76 38                                      ..v8
 11445 ms  0x6bc7 privk:0x7f7c25f1b020::7f7c25f1b020  e5 e5 e5 e5                                      ....
 11445 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11445 ms  0x6bc7 cx:0x7f7c451d97e8
 11445 ms     | 0x6bc7 EC_ValidatePublicKey()
 11445 ms     | 0x6bc7 ret:0x0
 11445 ms  0x6bc7 ret:0x7f7c25f1b020::7f7c25f1b020  80 e3 76 38                                      ..v8
 11445 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11445 ms  0x6bc7 cx:0x7f7c451d97e8
 11446 ms     | 0x6bc7 EC_ValidatePublicKey()
 11448 ms     | 0x6bc7 ret:0x0
 11448 ms  0x6bc7 ret:0x7f7c36d54820::7f7c36d54820  60 3a 79 38                                      `:y8
 11457 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11457 ms  0x6bc7 privk:0x7f7c36f5e020::7f7c36f5e020  00 86 a4 38                                      ...8
 11457 ms  0x6bc7 privk:0x7f7c36f5e020::7f7c36f5e020  e5 e5 e5 e5                                      ....
 11457 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11457 ms  0x6bc7 privk:0x7f7c36f50020::7f7c36f50020  40 3c 79 38                                      @<y8
 11457 ms  0x6bc7 privk:0x7f7c36f50020::7f7c36f50020  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 11486 ms  0x6bcf PR_Close()
 11486 ms  0x6bcf fd:0x7f7c37c3adc0
 11497 ms  0x6bcf PR_Close()
 11497 ms  0x6bcf fd:0x7f7c384f9b20
           /* TID 0x6bc7 */
 11500 ms  SECKEY_ECParamsToKeySize()
 11500 ms  0x6bc7 ret:0x100
 11500 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11500 ms  0x6bc7 cx:0x7f7c451d94a8
 11501 ms     | 0x6bc7 EC_ValidatePublicKey()
 11503 ms     | 0x6bc7 ret:0x0
 11503 ms  0x6bc7 ret:0x7f7c36f5a020::7f7c36f5a020  00 8b a4 38                                      ...8
 11503 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11503 ms  0x6bc7 seckey:0x7f7c36f5a020
 11503 ms     | 0x6bc7 EC_ValidatePublicKey()
 11510 ms     | 0x6bc7 ret:0x0
 11512 ms  0x6bc7 ret:0x7f7c3846dd80
 11512 ms  0x6bc7 PK11_DeriveWithFlags()
 11512 ms  0x6bc7 basekey:0x7f7c3846dd80
 11512 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11512 ms  0x6bc7 ret:0x7f7c2601b180
 11512 ms  0x6bc7 PK11_Derive()
 11512 ms  0x6bc7 basekey:0x7f7c2601b180
 11512 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11512 ms  0x6bc7 ret:0x7f7c2601b200
 11512 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11512 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  00 8b a4 38                                      ...8
 11512 ms  0x6bc7 privk:0x7f7c36f5a020::7f7c36f5a020  e5 e5 e5 e5                                      ....
 11513 ms  0x6bc7 PK11_Encrypt()
 11513 ms  0x6bc7 symkey:0x7f7c2601b980
 11514 ms  0x6bc7 SSL_AuthCertificateComplete()
 11514 ms  0x6bc7 fd:0x7f7c383fe3a0
 11514 ms  0x6bc7 err:0x0
 11515 ms  SECKEY_ECParamsToKeySize()
 11516 ms  0x6bc7 ret:0x100
 11516 ms  0x6bc7 SECKEY_CreateECPrivateKey()
 11516 ms  0x6bc7 cx:0x7f7c451d97e8
 11516 ms     | 0x6bc7 EC_ValidatePublicKey()
 11518 ms     | 0x6bc7 ret:0x0
 11518 ms  0x6bc7 ret:0x7f7c38a08020::7f7c38a08020  70 8e a4 38                                      p..8
 11518 ms  0x6bc7 PK11_PubDeriveWithKDF()
 11518 ms  0x6bc7 seckey:0x7f7c38a08020
 11518 ms     | 0x6bc7 EC_ValidatePublicKey()
 11519 ms     | 0x6bc7 ret:0x0
 11521 ms  0x6bc7 ret:0x7f7c3846dd80
 11521 ms  0x6bc7 PK11_DeriveWithFlags()
 11521 ms  0x6bc7 basekey:0x7f7c3846dd80
 11521 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11521 ms  0x6bc7 ret:0x7f7c2610a300
 11521 ms  0x6bc7 PK11_Derive()
 11521 ms  0x6bc7 basekey:0x7f7c2610a300
 11521 ms     | 0x6bc7 PK11_DeriveWithTemplate()
 11521 ms  0x6bc7 ret:0x7f7c2610a400
 11521 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11521 ms  0x6bc7 privk:0x7f7c38a08020::7f7c38a08020  70 8e a4 38                                      p..8
 11521 ms  0x6bc7 privk:0x7f7c38a08020::7f7c38a08020  e5 e5 e5 e5                                      ....
 11521 ms  0x6bc7 PK11_Encrypt()
 11521 ms  0x6bc7 symkey:0x7f7c2610a600
 11526 ms  0x6bc7 PK11_Encrypt()
 11526 ms  0x6bc7 symkey:0x7f7c2601b980
 11527 ms  0x6bc7 SSL_AuthCertificateComplete()
 11527 ms  0x6bc7 fd:0x7f7c36f777c0
 11527 ms  0x6bc7 err:0x0
 11527 ms  0x6bc7 PK11_Encrypt()
 11527 ms  0x6bc7 symkey:0x7f7c2610a600
           /* TID 0x6bcf */
 11564 ms  0x6bcf PR_Close()
 11564 ms  0x6bcf fd:0x7f7c36f77820
           /* TID 0x6bc7 */
 11564 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11564 ms  0x6bc7 privk:0x7f7c25f17820::7f7c25f17820  50 e1 76 38                                      P.v8
 11564 ms  0x6bc7 privk:0x7f7c25f17820::7f7c25f17820  e5 e5 e5 e5                                      ....
 11564 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11564 ms  0x6bc7 privk:0x7f7c25f10820::7f7c25f10820  c0 be 3f 38                                      ..?8
 11564 ms  0x6bc7 privk:0x7f7c25f10820::7f7c25f10820  e5 e5 e5 e5                                      ....
 11573 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11573 ms  0x6bc7 privk:0x7f7c36d54820::7f7c36d54820  60 3a 79 38                                      `:y8
 11573 ms  0x6bc7 privk:0x7f7c36d54820::7f7c36d54820  e5 e5 e5 e5                                      ....
 11573 ms  0x6bc7 SECKEY_DestroyPrivateKey()
 11573 ms  0x6bc7 privk:0x7f7c25f1b020::7f7c25f1b020  80 e3 76 38                                      ..v8
 11573 ms  0x6bc7 privk:0x7f7c25f1b020::7f7c25f1b020  e5 e5 e5 e5                                      ....
           /* TID 0x6bcf */
 11618 ms  0x6bcf PR_Close()
 11618 ms  0x6bcf fd:0x7f7c36f77040
 11625 ms  0x6bcf PR_Close()
 11625 ms  0x6bcf fd:0x7f7c36de49d0
           /* TID 0x6bc7 */
 11626 ms  0x6bc7 PK11_Encrypt()
 11626 ms  0x6bc7 symkey:0x7f7c260e5280
 11637 ms  0x6bc7 PK11_Encrypt()
 11637 ms  0x6bc7 symkey:0x7f7c38386380
 11639 ms  0x6bc7 PK11_Encrypt()
 11639 ms  0x6bc7 symkey:0x7f7c38387780
 11641 ms  0x6bc7 PK11_Encrypt()
 11641 ms  0x6bc7 symkey:0x7f7c2607dd00
 11649 ms  0x6bc7 PR_Close()
 11649 ms  0x6bc7 fd:0x7f7c37c84d60
           /* TID 0x6bbc */
 11652 ms  0x6bbc EC_ValidatePublicKey()
 11653 ms  0x6bbc ret:0x0
 11653 ms  0x6bbc EC_ValidatePublicKey()
 11658 ms  0x6bbc ret:0x0
 11658 ms  0x6bbc EC_ValidatePublicKey()
 11660 ms  0x6bbc ret:0x0
 11660 ms  0x6bbc EC_ValidatePublicKey()
 11661 ms  0x6bbc ret:0x0
 11661 ms  0x6bbc EC_ValidatePublicKey()
 11663 ms  0x6bbc ret:0x0
 11663 ms  0x6bbc EC_ValidatePublicKey()
 11664 ms  0x6bbc ret:0x0
 11664 ms  0x6bbc EC_ValidatePublicKey()
 11671 ms  0x6bbc ret:0x0
 11671 ms  0x6bbc EC_ValidatePublicKey()
 11672 ms  0x6bbc ret:0x0
 11672 ms  0x6bbc EC_ValidatePublicKey()
 11673 ms  0x6bbc ret:0x0
 11673 ms  0x6bbc EC_ValidatePublicKey()
 11679 ms  0x6bbc ret:0x0
           /* TID 0x6bc7 */
 11679 ms  0x6bc7 PK11_Encrypt()
 11679 ms  0x6bc7 symkey:0x7f7c383c7180
 11681 ms  0x6bc7 PK11_Encrypt()
 11681 ms  0x6bc7 symkey:0x7f7c2610a880
 11681 ms  0x6bc7 PK11_Encrypt()
 11681 ms  0x6bc7 symkey:0x7f7c2607dd00
 11681 ms  0x6bc7 PR_Close()
 11681 ms  0x6bc7 fd:0x7f7c36f777c0
 11681 ms     | 0x6bc7 PK11_Encrypt()
 11681 ms     | 0x6bc7 symkey:0x7f7c2610a600
 11681 ms  0x6bc7 PR_Close()
 11681 ms  0x6bc7 fd:0x7f7c383fe460
 11681 ms     | 0x6bc7 PK11_Encrypt()
 11681 ms     | 0x6bc7 symkey:0x7f7c376f1280
 11682 ms  0x6bc7 PR_Close()
 11682 ms  0x6bc7 fd:0x7f7c3870b3d0
 11682 ms     | 0x6bc7 PK11_Encrypt()
 11682 ms     | 0x6bc7 symkey:0x7f7c36f70700
 11682 ms  0x6bc7 PR_Close()
 11682 ms  0x6bc7 fd:0x7f7c26118970
 11682 ms     | 0x6bc7 PK11_Encrypt()
 11682 ms     | 0x6bc7 symkey:0x7f7c384f5500
 11682 ms  0x6bc7 PR_Close()
 11682 ms  0x6bc7 fd:0x7f7c3878a730
 11682 ms     | 0x6bc7 PK11_Encrypt()
 11682 ms     | 0x6bc7 symkey:0x7f7c3848dd80
 11682 ms  0x6bc7 PR_Close()
 11682 ms  0x6bc7 fd:0x7f7c387ea430
 11682 ms     | 0x6bc7 PK11_Encrypt()
 11682 ms     | 0x6bc7 symkey:0x7f7c383c7780
 11682 ms  0x6bc7 PR_Close()
 11682 ms  0x6bc7 fd:0x7f7c37c3a9d0
 11682 ms     | 0x6bc7 PK11_Encrypt()
 11682 ms     | 0x6bc7 symkey:0x7f7c38707280
 11683 ms  0x6bc7 PR_Close()
 11683 ms  0x6bc7 fd:0x7f7c36f778b0
 11683 ms     | 0x6bc7 PK11_Encrypt()
 11683 ms     | 0x6bc7 symkey:0x7f7c383cca00
 11683 ms  0x6bc7 PR_Close()
 11683 ms  0x6bc7 fd:0x7f7c36f77a30
 11683 ms     | 0x6bc7 PK11_Encrypt()
 11683 ms     | 0x6bc7 symkey:0x7f7c38387100
 11683 ms  0x6bc7 PR_Close()
 11683 ms  0x6bc7 fd:0x7f7c36f77c10
 11683 ms     | 0x6bc7 PK11_Encrypt()
 11683 ms     | 0x6bc7 symkey:0x7f7c38386800
 11683 ms  0x6bc7 PR_Close()
 11683 ms  0x6bc7 fd:0x7f7c37c84df0
 11683 ms     | 0x6bc7 PK11_Encrypt()
 11683 ms     | 0x6bc7 symkey:0x7f7c38386080
 11684 ms  0x6bc7 PR_Close()
 11684 ms  0x6bc7 fd:0x7f7c3a181820
 11684 ms     | 0x6bc7 PK11_Encrypt()
 11684 ms     | 0x6bc7 symkey:0x7f7c36f6f280
 11684 ms  0x6bc7 PR_Close()
 11684 ms  0x6bc7 fd:0x7f7c37c3aaf0
 11684 ms     | 0x6bc7 PK11_Encrypt()
 11684 ms     | 0x6bc7 symkey:0x7f7c383c7380
 11684 ms  0x6bc7 PR_Close()
 11684 ms  0x6bc7 fd:0x7f7c3cf3f1f0
 11684 ms     | 0x6bc7 PK11_Encrypt()
 11684 ms     | 0x6bc7 symkey:0x7f7c36f6fc80
 11684 ms  0x6bc7 PR_Close()
 11684 ms  0x6bc7 fd:0x7f7c37c3aa90
 11684 ms     | 0x6bc7 PK11_Encrypt()
 11684 ms     | 0x6bc7 symkey:0x7f7c383c7600
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c260e0ca0
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c261181c0
 11685 ms     | 0x6bc7 PK11_Encrypt()
 11685 ms     | 0x6bc7 symkey:0x7f7c36febb80
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c4636ee50
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c4636e3d0
 11685 ms     | 0x6bc7 PK11_Encrypt()
 11685 ms     | 0x6bc7 symkey:0x7f7c36feae00
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c383a0ca0
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c376fee80
 11685 ms     | 0x6bc7 PK11_Encrypt()
 11685 ms     | 0x6bc7 symkey:0x7f7c410e6700
 11685 ms  0x6bc7 PR_Close()
 11685 ms  0x6bc7 fd:0x7f7c383fe3a0
 11685 ms     | 0x6bc7 PK11_Encrypt()
 11685 ms     | 0x6bc7 symkey:0x7f7c2601b980
 11686 ms  0x6bc7 PR_Close()
 11686 ms  0x6bc7 fd:0x7f7c383fecd0
 11686 ms     | 0x6bc7 PK11_Encrypt()
 11686 ms     | 0x6bc7 symkey:0x7f7c371de380
 11686 ms  0x6bc7 PR_Close()
 11686 ms  0x6bc7 fd:0x7f7c3cfebac0
 11686 ms     | 0x6bc7 PK11_Encrypt()
 11686 ms     | 0x6bc7 symkey:0x7f7c3846c880
 11686 ms  0x6bc7 PR_Close()
 11686 ms  0x6bc7 fd:0x7f7c3cffb790
 11686 ms     | 0x6bc7 PK11_Encrypt()
 11686 ms     | 0x6bc7 symkey:0x7f7c3846cc00
 11686 ms  0x6bc7 PR_Close()
 11686 ms  0x6bc7 fd:0x7f7c3cffb2b0
 11686 ms     | 0x6bc7 PK11_Encrypt()
 11686 ms     | 0x6bc7 symkey:0x7f7c3848e280
 11687 ms  0x6bc7 PR_Close()
 11687 ms  0x6bc7 fd:0x7f7c3cfeb760
 11687 ms     | 0x6bc7 PK11_Encrypt()
 11687 ms     | 0x6bc7 symkey:0x7f7c3846de00
 11687 ms  0x6bc7 PR_Close()
 11687 ms  0x6bc7 fd:0x7f7c3cce8cd0
 11687 ms     | 0x6bc7 PK11_Encrypt()
 11687 ms     | 0x6bc7 symkey:0x7f7c383c7b80
 11687 ms  0x6bc7 PR_Close()
 11687 ms  0x6bc7 fd:0x7f7c3bd8c1c0
 11687 ms     | 0x6bc7 PK11_Encrypt()
 11687 ms     | 0x6bc7 symkey:0x7f7c383cc500
           /* TID 0x6c1e */
 11687 ms  0x6c1e PR_Close()
 11687 ms  0x6c1e fd:0x7f7c260e0cd0
 11687 ms  0x6c1e PR_Close()
 11687 ms  0x6c1e fd:0x7f7c260e0cd0
           /* TID 0x6bbc */
 11691 ms  0x6bbc PR_Close()
 11691 ms  0x6bbc fd:0x7f7c3a115070
 11691 ms  0x6bbc PR_Close()
 11691 ms  0x6bbc fd:0x7f7c26118220
 11692 ms  0x6bbc PR_Close()
 11692 ms  0x6bbc fd:0x7f7c261182e0
 11692 ms  0x6bbc PR_Close()
 11692 ms  0x6bbc fd:0x7f7c26118220
 11693 ms  0x6bbc PR_Close()
 11693 ms  0x6bbc fd:0x7f7c261182e0
 11693 ms  0x6bbc PR_Close()
 11693 ms  0x6bbc fd:0x7f7c26118370
           /* TID 0x6bc7 */
 11693 ms  0x6bc7 PR_Close()
 11693 ms  0x6bc7 fd:0x7f7c36f77280
 11693 ms     | 0x6bc7 PK11_Encrypt()
 11693 ms     | 0x6bc7 symkey:0x7f7c2610a880
 11698 ms  0x6bc7 PR_Close()
 11698 ms  0x6bc7 fd:0x7f7c36dd6c10
 11698 ms     | 0x6bc7 PK11_Encrypt()
 11698 ms     | 0x6bc7 symkey:0x7f7c2607dd00
 11698 ms  0x6bc7 PR_Close()
 11698 ms  0x6bc7 fd:0x7f7c260e0820
 11698 ms     | 0x6bc7 PK11_Encrypt()
 11698 ms     | 0x6bc7 symkey:0x7f7c260e5280
 11698 ms  0x6bc7 PR_Close()
 11698 ms  0x6bc7 fd:0x7f7c376fe640
 11698 ms     | 0x6bc7 PK11_Encrypt()
 11698 ms     | 0x6bc7 symkey:0x7f7c383c7180
           /* TID 0x6c32 */
 11701 ms  0x6c32 PR_Close()
 11701 ms  0x6c32 fd:0x7f7c260e0760
           /* TID 0x6bbc */
 11719 ms  0x6bbc PR_Close()
 11719 ms  0x6bbc fd:0x7f7c261182e0
 11719 ms  0x6bbc PR_Close()
 11719 ms  0x6bbc fd:0x7f7c36f777f0
 11720 ms  0x6bbc PR_Close()
 11720 ms  0x6bbc fd:0x7f7c261182e0
 11720 ms  0x6bbc PR_Close()
 11720 ms  0x6bbc fd:0x7f7c36f777f0
 11720 ms  0x6bbc PR_Close()
 11720 ms  0x6bbc fd:0x7f7c421c89a0
 11720 ms  0x6bbc PR_Close()
 11720 ms  0x6bbc fd:0x7f7c421c88b0
 11720 ms  0x6bbc PR_Close()
 11720 ms  0x6bbc fd:0x7f7c421c8a60
 11723 ms  0x6bbc PR_Close()
 11723 ms  0x6bbc fd:0x7f7c36f777f0
 11724 ms  0x6bbc PR_Close()
 11724 ms  0x6bbc fd:0x7f7c36f777f0
 11729 ms  0x6bbc PR_Close()
 11729 ms  0x6bbc fd:0x7f7c261182e0
 11729 ms  0x6bbc PR_Close()
 11729 ms  0x6bbc fd:0x7f7c36f778e0
 11730 ms  0x6bbc PR_Close()
 11730 ms  0x6bbc fd:0x7f7c261182e0
 11730 ms  0x6bbc PR_Close()
 11730 ms  0x6bbc fd:0x7f7c36f778e0
 11745 ms  0x6bbc PR_Close()
 11745 ms  0x6bbc fd:0x7f7c36f77a30
 11746 ms  0x6bbc PR_Close()
 11746 ms  0x6bbc fd:0x7f7c36f77a30
 11748 ms  0x6bbc PR_Close()
 11748 ms  0x6bbc fd:0x7f7c261182e0
 11748 ms  0x6bbc PR_Close()
 11748 ms  0x6bbc fd:0x7f7c36f77b50
 11749 ms  0x6bbc PR_Close()
 11749 ms  0x6bbc fd:0x7f7c261182e0
 11749 ms  0x6bbc PR_Close()
 11749 ms  0x6bbc fd:0x7f7c36f77b50
 11751 ms  0x6bbc PR_Close()
 11751 ms  0x6bbc fd:0x7f7c36f77b80
 11752 ms  0x6bbc PR_Close()
 11752 ms  0x6bbc fd:0x7f7c36f77b80
 11763 ms  0x6bbc PR_Close()
 11763 ms  0x6bbc fd:0x7f7c376fee50
 11764 ms  0x6bbc PR_Close()
 11764 ms  0x6bbc fd:0x7f7c376fee50
 11766 ms  0x6bbc PR_Close()
 11766 ms  0x6bbc fd:0x7f7c376fee80
           /* TID 0x6bcf */
 11772 ms  0x6bcf PR_Close()
 11772 ms  0x6bcf fd:0x7f7c37c3a730
 11782 ms  0x6bcf PR_Close()
 11782 ms  0x6bcf fd:0x7f7c260e0f70
           /* TID 0x6c32 */
 11785 ms  0x6c32 PR_Close()
 11785 ms  0x6c32 fd:0x7f7c260e0f70
           /* TID 0x6bbc */
 11786 ms  0x6bbc PR_Close()
 11786 ms  0x6bbc fd:0x7f7c261182e0
           /* TID 0x6c32 */
 11786 ms  0x6c32 PR_Close()
 11786 ms  0x6c32 fd:0x7f7c260e0f70
           /* TID 0x6bbc */
 11787 ms  0x6bbc PR_Close()
 11787 ms  0x6bbc fd:0x7f7c37c841c0
           /* TID 0x6c32 */
 11798 ms  0x6c32 PR_Close()
 11798 ms  0x6c32 fd:0x7f7c260e0760
 11838 ms  0x6c32 PR_Close()
 11838 ms  0x6c32 fd:0x7f7c260e0640
           /* TID 0x6bc7 */
 11851 ms  0x6bc7 PK11_Encrypt()
 11851 ms  0x6bc7 symkey:0x7f7c38387780
 11851 ms  0x6bc7 PK11_Encrypt()
 11851 ms  0x6bc7 symkey:0x7f7c38387780
 11852 ms  0x6bc7 PR_Close()
 11852 ms  0x6bc7 fd:0x7f7c383fe8b0
 11852 ms     | 0x6bc7 PK11_Encrypt()
 11852 ms     | 0x6bc7 symkey:0x7f7c38387780
 11852 ms  0x6bc7 PK11_Encrypt()
 11852 ms  0x6bc7 symkey:0x7f7c38386380
 11852 ms  0x6bc7 PK11_Encrypt()
 11852 ms  0x6bc7 symkey:0x7f7c38386380
 11852 ms  0x6bc7 PR_Close()
 11852 ms  0x6bc7 fd:0x7f7c3878a0d0
 11852 ms     | 0x6bc7 PK11_Encrypt()
 11852 ms     | 0x6bc7 symkey:0x7f7c38386380
           /* TID 0x6bc1 */
 11855 ms  0x6bc1 PR_Close()
 11855 ms  0x6bc1 fd:0x7f7c40ce0dc0
 11865 ms  0x6bc1 PR_Close()
 11865 ms  0x6bc1 fd:0x7f7c3d24b7f0
           /* TID 0x6bbc */
 11865 ms  0x6bbc PR_Close()
 11865 ms  0x6bbc fd:0x7f7c260e0f70
 11865 ms  0x6bbc PR_Close()
 11865 ms  0x6bbc fd:0x7f7c260e09a0
           /* TID 0x6c32 */
 11875 ms  0x6c32 PR_Close()
 11875 ms  0x6c32 fd:0x7f7c261181c0
           /* TID 0x6bc7 */
 11879 ms  0x6bc7 PR_Close()
 11879 ms  0x6bc7 fd:0x7f7c376fe280
           /* TID 0x6c1e */
 11880 ms  0x6c1e PR_Close()
 11880 ms  0x6c1e fd:0x7f7c26118f10
 11880 ms  0x6c1e PR_Close()
 11880 ms  0x6c1e fd:0x7f7c26118f10
 11880 ms  0x6c1e PR_Close()
 11880 ms  0x6c1e fd:0x7f7c26118f10
 11880 ms  0x6c1e PR_Close()
 11880 ms  0x6c1e fd:0x7f7c36de4160
           /* TID 0x6c32 */
 11881 ms  0x6c32 PR_Close()
 11881 ms  0x6c32 fd:0x7f7c36de4160
           /* TID 0x6bcf */
 11883 ms  0x6bcf PR_Close()
 11883 ms  0x6bcf fd:0x7f7c383a0ac0
 11883 ms  0x6bcf PR_Close()
 11883 ms  0x6bcf fd:0x7f7c383fe1c0
           /* TID 0x6bc1 */
 11890 ms  0x6bc1 PR_Close()
 11890 ms  0x6bc1 fd:0x7f7c383a0220
           /* TID 0x6bbc */
 11892 ms  0x6bbc PR_Close()
 11892 ms  0x6bbc fd:0x7f7c260e0e20
 11892 ms  0x6bbc PR_Close()
 11892 ms  0x6bbc fd:0x7f7c383a0250
           /* TID 0x6c32 */
 11894 ms  0x6c32 PR_Close()
 11894 ms  0x6c32 fd:0x7f7c383a0310
 11898 ms  0x6c32 PR_Close()
 11898 ms  0x6c32 fd:0x7f7c260e0bb0
 11922 ms  0x6c32 PR_Close()
 11922 ms  0x6c32 fd:0x7f7c261189a0
 11923 ms  0x6c32 PR_Close()
 11923 ms  0x6c32 fd:0x7f7c261189a0
 11941 ms  0x6c32 PR_Close()
 11941 ms  0x6c32 fd:0x7f7c36dd6e20
 11944 ms  0x6c32 PR_Close()
 11944 ms  0x6c32 fd:0x7f7c36dd6eb0
 11960 ms  0x6c32 PR_Close()
 11960 ms  0x6c32 fd:0x7f7c36de4670
 11965 ms  0x6c32 PR_Close()
 11965 ms  0x6c32 fd:0x7f7c36f77a00
 11972 ms  0x6c32 PR_Close()
 11972 ms  0x6c32 fd:0x7f7c376fe4c0
 11982 ms  0x6c32 PR_Close()
 11982 ms  0x6c32 fd:0x7f7c376fe610
 11983 ms  0x6c32 PR_Close()
 11983 ms  0x6c32 fd:0x7f7c376fe610
           /* TID 0x6bbc */
 12575 ms  0x6bbc PR_Close()
 12575 ms  0x6bbc fd:0x7f7c260e0700
 12575 ms  0x6bbc PR_Close()
 12575 ms  0x6bbc fd:0x7f7c260e0700
 12581 ms  0x6bbc PR_Close()
 12581 ms  0x6bbc fd:0x7f7c5f4da130
 12581 ms  0x6bbc PR_Close()
 12581 ms  0x6bbc fd:0x7f7c5f4da190
Process terminated
