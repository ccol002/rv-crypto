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
           /* TID 0x8fc */
   215 ms  0x8fc PR_Close()
   215 ms  0x8fc fd:0x7f18b4016a00
           /* TID 0x8f2 */
   317 ms  0x8f2 SSL_ImportFD()
   317 ms  0x8f2 ret:0x7f18b4023580
   317 ms  0x8f2 SSL_AuthCertificateHook()
   317 ms  0x8f2 fd:0x7f18b4023580
   317 ms  0x8f2 ret:0x0
   317 ms  0x8f2 PR_Connect()
   317 ms  0x8f2 fd:0x7f18b4023580
   523 ms  0x8f2 SECKEY_CreateECPrivateKey()
   523 ms  0x8f2 cx:0x7f18b4019ae8
   525 ms     | 0x8f2 EC_ValidatePublicKey()
   525 ms     | 0x8f2 ret:0x0
   525 ms  0x8f2 ret:0x7f18b42bf020::7f18b42bf020  20 3e 0d b4                                       >..
   525 ms  0x8f2 SECKEY_CreateECPrivateKey()
   525 ms  0x8f2 cx:0x7f18b4019ae8
   526 ms     | 0x8f2 EC_ValidatePublicKey()
   530 ms     | 0x8f2 ret:0x0
   530 ms  0x8f2 ret:0x7f18b42c1020::7f18b42c1020  60 40 21 a3                                      `@!.
   743 ms  SECKEY_ECParamsToKeySize()
   743 ms  0x8f2 ret:0x100
   743 ms  0x8f2 SECKEY_CreateECPrivateKey()
   743 ms  0x8f2 cx:0x7f18b4019ae8
   744 ms     | 0x8f2 EC_ValidatePublicKey()
   749 ms     | 0x8f2 ret:0x0
   749 ms  0x8f2 ret:0x7f18a3231020::7f18a3231020  a0 4b 21 a3                                      .K!.
   749 ms  0x8f2 PK11_PubDeriveWithKDF()
   749 ms  0x8f2 seckey:0x7f18a3231020
   749 ms     | 0x8f2 EC_ValidatePublicKey()
   753 ms     | 0x8f2 ret:0x0
           /* TID 0x971 */
   756 ms  0x971 PR_Close()
   756 ms  0x971 fd:0x7f18a32210d0
   758 ms  0x971 PR_Close()
   758 ms  0x971 fd:0x7f18a32210d0
           /* TID 0x8f2 */
   759 ms  0x8f2 ret:0x7f18b48eb100
   759 ms  0x8f2 PK11_DeriveWithFlags()
   759 ms  0x8f2 basekey:0x7f18b48eb100
   759 ms     | 0x8f2 PK11_DeriveWithTemplate()
   759 ms  0x8f2 ret:0x7f18a320a980
   759 ms  0x8f2 PK11_Derive()
   759 ms  0x8f2 basekey:0x7f18a320a980
   759 ms     | 0x8f2 PK11_DeriveWithTemplate()
   760 ms  0x8f2 ret:0x7f18a320aa00
   760 ms  0x8f2 SECKEY_DestroyPrivateKey()
   760 ms  0x8f2 privk:0x7f18a3231020::7f18a3231020  a0 4b 21 a3                                      .K!.
   760 ms  0x8f2 privk:0x7f18a3231020::7f18a3231020  e5 e5 e5 e5                                      ....
   760 ms  0x8f2 PK11_Encrypt()
   760 ms  0x8f2 symkey:0x7f18a320ab80
   761 ms  0x8f2 PR_Connect()
   761 ms  0x8f2 fd:0x7f18a3221160
           /* TID 0x971 */
   774 ms  0x971 PR_Close()
   774 ms  0x971 fd:0x7f18a3221130
           /* TID 0x8fc */
   814 ms  0x8fc PR_Close()
   814 ms  0x8fc fd:0x7f18a32210d0
           /* TID 0x975 */
   814 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   814 ms  0x975 ret:0x0
           /* TID 0x8f2 */
   815 ms  0x8f2 SSL_AuthCertificateComplete()
   815 ms  0x8f2 fd:0x7f18b4023580
   815 ms  0x8f2 err:0x0
   815 ms  0x8f2 PK11_Encrypt()
   815 ms  0x8f2 symkey:0x7f18a320ab80
   968 ms  0x8f2 SECKEY_DestroyPrivateKey()
   968 ms  0x8f2 privk:0x7f18b42c1020::7f18b42c1020  60 40 21 a3                                      `@!.
   968 ms  0x8f2 privk:0x7f18b42c1020::7f18b42c1020  e5 e5 e5 e5                                      ....
   968 ms  0x8f2 SECKEY_DestroyPrivateKey()
   968 ms  0x8f2 privk:0x7f18b42bf020::7f18b42bf020  20 3e 0d b4                                       >..
   969 ms  0x8f2 privk:0x7f18b42bf020::7f18b42bf020  e5 e5 e5 e5                                      ....
  1180 ms  0x8f2 SSL_ImportFD()
  1181 ms  0x8f2 ret:0x7f18a3221430
  1181 ms  0x8f2 SSL_AuthCertificateHook()
  1181 ms  0x8f2 fd:0x7f18a3221430
  1181 ms  0x8f2 ret:0x0
  1181 ms  0x8f2 PR_Connect()
  1181 ms  0x8f2 fd:0x7f18a3221430
  1207 ms  0x8f2 SECKEY_CreateECPrivateKey()
  1207 ms  0x8f2 cx:0x7f18a3216728
  1208 ms     | 0x8f2 EC_ValidatePublicKey()
  1208 ms     | 0x8f2 ret:0x0
  1208 ms  0x8f2 ret:0x7f18b42c0020::7f18b42c0020  00 4b 21 a3                                      .K!.
  1208 ms  0x8f2 SECKEY_CreateECPrivateKey()
  1208 ms  0x8f2 cx:0x7f18a3216728
  1210 ms     | 0x8f2 EC_ValidatePublicKey()
  1214 ms     | 0x8f2 ret:0x0
  1214 ms  0x8f2 ret:0x7f18b43a0020::7f18b43a0020  90 4c 21 a3                                      .L!.
           /* TID 0x96c */
  1266 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1266 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  1267 ms  SECKEY_ECParamsToKeySize()
  1267 ms  0x8f2 ret:0x100
  1267 ms  0x8f2 SECKEY_CreateECPrivateKey()
  1267 ms  0x8f2 cx:0x7f18a3216728
  1268 ms     | 0x8f2 EC_ValidatePublicKey()
  1272 ms     | 0x8f2 ret:0x0
  1272 ms  0x8f2 ret:0x7f18a325e820::7f18a325e820  b0 4f 21 a3                                      .O!.
  1272 ms  0x8f2 PK11_PubDeriveWithKDF()
  1272 ms  0x8f2 seckey:0x7f18a325e820
  1273 ms     | 0x8f2 EC_ValidatePublicKey()
  1278 ms     | 0x8f2 ret:0x0
  1282 ms  0x8f2 ret:0x7f18b48eb100
  1282 ms  0x8f2 PK11_DeriveWithFlags()
  1282 ms  0x8f2 basekey:0x7f18b48eb100
  1282 ms     | 0x8f2 PK11_DeriveWithTemplate()
  1282 ms  0x8f2 ret:0x7f18a320b800
  1282 ms  0x8f2 PK11_Derive()
  1282 ms  0x8f2 basekey:0x7f18a320b800
  1282 ms     | 0x8f2 PK11_DeriveWithTemplate()
  1282 ms  0x8f2 ret:0x7f18a320b880
  1282 ms  0x8f2 SECKEY_DestroyPrivateKey()
  1282 ms  0x8f2 privk:0x7f18a325e820::7f18a325e820  b0 4f 21 a3                                      .O!.
  1283 ms  0x8f2 privk:0x7f18a325e820::7f18a325e820  e5 e5 e5 e5                                      ....
  1283 ms  0x8f2 PK11_Encrypt()
  1283 ms  0x8f2 symkey:0x7f18a320ba00
  1283 ms  0x8f2 SSL_AuthCertificateComplete()
  1283 ms  0x8f2 fd:0x7f18a3221430
  1283 ms  0x8f2 err:0x0
  1284 ms  0x8f2 PK11_Encrypt()
  1284 ms  0x8f2 symkey:0x7f18a320ba00
  1334 ms  0x8f2 SECKEY_DestroyPrivateKey()
  1334 ms  0x8f2 privk:0x7f18b43a0020::7f18b43a0020  90 4c 21 a3                                      .L!.
  1335 ms  0x8f2 privk:0x7f18b43a0020::7f18b43a0020  e5 e5 e5 e5                                      ....
  1335 ms  0x8f2 SECKEY_DestroyPrivateKey()
  1335 ms  0x8f2 privk:0x7f18b42c0020::7f18b42c0020  00 4b 21 a3                                      .K!.
  1335 ms  0x8f2 privk:0x7f18b42c0020::7f18b42c0020  e5 e5 e5 e5                                      ....
  1338 ms  0x8f2 PK11_Encrypt()
  1338 ms  0x8f2 symkey:0x7f18a320ba00
  1367 ms  0x8f2 PK11_Encrypt()
  1367 ms  0x8f2 symkey:0x7f18a320ba00
  1397 ms  0x8f2 PK11_Encrypt()
  1397 ms  0x8f2 symkey:0x7f18a320ba00
  1426 ms  0x8f2 PK11_Encrypt()
  1426 ms  0x8f2 symkey:0x7f18a320ba00
  1543 ms  0x8f2 PK11_Encrypt()
  1543 ms  0x8f2 symkey:0x7f18a320ba00
  1576 ms  0x8f2 PK11_Encrypt()
  1576 ms  0x8f2 symkey:0x7f18a320ba00
  1607 ms  0x8f2 PK11_Encrypt()
  1607 ms  0x8f2 symkey:0x7f18a320ba00
           /* TID 0x963 */
  1635 ms  0x963 PR_Close()
  1635 ms  0x963 fd:0x7f18a3221220
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221280
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221220
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221280
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221220
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221280
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221220
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221280
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221220
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221280
  1636 ms  0x963 PR_Close()
  1636 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221220
  1637 ms  0x963 PR_Close()
  1637 ms  0x963 fd:0x7f18a3221280
  1638 ms  0x963 PR_Close()
  1638 ms  0x963 fd:0x7f18a3221220
  1638 ms  0x963 PR_Close()
  1638 ms  0x963 fd:0x7f18a3221280
  1638 ms  0x963 PR_Close()
  1638 ms  0x963 fd:0x7f18a3221220
  1638 ms  0x963 PR_Close()
  1638 ms  0x963 fd:0x7f18a3221280
  1641 ms  0x963 PR_Close()
  1641 ms  0x963 fd:0x7f18a3221220
  1641 ms  0x963 PR_Close()
  1641 ms  0x963 fd:0x7f18a3221220
  1643 ms  0x963 PR_Close()
  1643 ms  0x963 fd:0x7f18a3221220
  1643 ms  0x963 PR_Close()
  1643 ms  0x963 fd:0x7f18a3221250
  1645 ms  0x963 PR_Close()
  1645 ms  0x963 fd:0x7f18a3221250
  1645 ms  0x963 PR_Close()
  1645 ms  0x963 fd:0x7f18a3221250
  1647 ms  0x963 PR_Close()
  1647 ms  0x963 fd:0x7f18a3221250
  1648 ms  0x963 PR_Close()
  1648 ms  0x963 fd:0x7f18a3221250
  1680 ms  0x963 PR_Close()
  1680 ms  0x963 fd:0x7f18a3221250
  1681 ms  0x963 PR_Close()
  1681 ms  0x963 fd:0x7f18a3221250
  1688 ms  0x963 PR_Close()
  1688 ms  0x963 fd:0x7f18a3221250
  1688 ms  0x963 PR_Close()
  1688 ms  0x963 fd:0x7f18a3221250
  1694 ms  0x963 PR_Close()
  1694 ms  0x963 fd:0x7f18a3221250
  1695 ms  0x963 PR_Close()
  1695 ms  0x963 fd:0x7f18a3221250
  1696 ms  0x963 PR_Close()
  1696 ms  0x963 fd:0x7f18a3221250
  1696 ms  0x963 PR_Close()
  1696 ms  0x963 fd:0x7f18a3221250
           /* TID 0x961 */
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
  1697 ms  0x961 PR_Close()
  1697 ms  0x961 fd:0x7f18a3221250
           /* TID 0x971 */
  2199 ms  0x971 PR_Close()
  2199 ms  0x971 fd:0x7f18a32217f0
  2202 ms  0x971 PR_Close()
  2202 ms  0x971 fd:0x7f18a32217f0
  2713 ms  0x971 PR_Close()
  2713 ms  0x971 fd:0x7f18a32217f0
           /* TID 0x8fc */
  4086 ms  0x8fc PR_Close()
  4086 ms  0x8fc fd:0x7f18a32217f0
  4086 ms  0x8fc PR_Close()
  4086 ms  0x8fc fd:0x7f18a3221940
           /* TID 0x8f2 */
  4437 ms  0x8f2 SSL_ImportFD()
  4437 ms  0x8f2 ret:0x7f18b738c8b0
  4437 ms  0x8f2 SSL_AuthCertificateHook()
  4437 ms  0x8f2 fd:0x7f18b738c8b0
  4437 ms  0x8f2 ret:0x0
  4437 ms  0x8f2 PR_Connect()
  4437 ms  0x8f2 fd:0x7f18b738c8b0
  4463 ms  0x8f2 SECKEY_CreateECPrivateKey()
  4463 ms  0x8f2 cx:0x7f18a3216a68
  4464 ms     | 0x8f2 EC_ValidatePublicKey()
  4464 ms     | 0x8f2 ret:0x0
  4464 ms  0x8f2 ret:0x7f18a31a3820::7f18a31a3820  60 5a 02 b5                                      `Z..
  4464 ms  0x8f2 SECKEY_CreateECPrivateKey()
  4464 ms  0x8f2 cx:0x7f18a3216a68
  4466 ms     | 0x8f2 EC_ValidatePublicKey()
  4471 ms     | 0x8f2 ret:0x0
  4471 ms  0x8f2 ret:0x7f18a31a5820::7f18a31a5820  40 57 02 b5                                      @W..
           /* TID 0x975 */
  4525 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4525 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  4528 ms  SECKEY_ECParamsToKeySize()
  4528 ms  0x8f2 ret:0x100
  4528 ms  0x8f2 SECKEY_CreateECPrivateKey()
  4528 ms  0x8f2 cx:0x7f18a3216a68
  4530 ms     | 0x8f2 EC_ValidatePublicKey()
  4536 ms     | 0x8f2 ret:0x0
  4536 ms  0x8f2 ret:0x7f18a31b5820::7f18a31b5820  b0 55 2b a3                                      .U+.
  4536 ms  0x8f2 PK11_PubDeriveWithKDF()
  4536 ms  0x8f2 seckey:0x7f18a31b5820
  4536 ms     | 0x8f2 EC_ValidatePublicKey()
  4540 ms     | 0x8f2 ret:0x0
  4544 ms  0x8f2 ret:0x7f18b48eb100
  4544 ms  0x8f2 PK11_DeriveWithFlags()
  4544 ms  0x8f2 basekey:0x7f18b48eb100
  4544 ms     | 0x8f2 PK11_DeriveWithTemplate()
  4544 ms  0x8f2 ret:0x7f18b55c3200
  4544 ms  0x8f2 PK11_Derive()
  4544 ms  0x8f2 basekey:0x7f18b55c3200
  4544 ms     | 0x8f2 PK11_DeriveWithTemplate()
  4545 ms  0x8f2 ret:0x7f18b55c3280
  4545 ms  0x8f2 SECKEY_DestroyPrivateKey()
  4545 ms  0x8f2 privk:0x7f18a31b5820::7f18a31b5820  b0 55 2b a3                                      .U+.
  4545 ms  0x8f2 privk:0x7f18a31b5820::7f18a31b5820  e5 e5 e5 e5                                      ....
  4545 ms  0x8f2 PK11_Encrypt()
  4545 ms  0x8f2 symkey:0x7f18b55c3400
  4548 ms  0x8f2 SSL_AuthCertificateComplete()
  4548 ms  0x8f2 fd:0x7f18b738c8b0
  4548 ms  0x8f2 err:0x0
  4548 ms  0x8f2 PK11_Encrypt()
  4548 ms  0x8f2 symkey:0x7f18b55c3400
  4549 ms  0x8f2 PK11_Encrypt()
  4549 ms  0x8f2 symkey:0x7f18b55c3400
  4571 ms  0x8f2 SECKEY_DestroyPrivateKey()
  4571 ms  0x8f2 privk:0x7f18a31a5820::7f18a31a5820  40 57 02 b5                                      @W..
  4571 ms  0x8f2 privk:0x7f18a31a5820::7f18a31a5820  e5 e5 e5 e5                                      ....
  4571 ms  0x8f2 SECKEY_DestroyPrivateKey()
  4571 ms  0x8f2 privk:0x7f18a31a3820::7f18a31a3820  60 5a 02 b5                                      `Z..
  4572 ms  0x8f2 privk:0x7f18a31a3820::7f18a31a3820  e5 e5 e5 e5                                      ....
  4572 ms  0x8f2 PK11_Encrypt()
  4572 ms  0x8f2 symkey:0x7f18b55c3400
           /* TID 0x91d */
  4977 ms  0x91d PR_Close()
  4977 ms  0x91d fd:0x7f18a31ee1c0
           /* TID 0x8f2 */
  5051 ms  0x8f2 SSL_ImportFD()
  5051 ms  0x8f2 ret:0x7f18a2ef7940
  5051 ms  0x8f2 SSL_AuthCertificateHook()
  5051 ms  0x8f2 fd:0x7f18a2ef7940
  5051 ms  0x8f2 ret:0x0
  5051 ms  0x8f2 PR_Connect()
  5051 ms  0x8f2 fd:0x7f18a2ef7940
  5051 ms  0x8f2 SSL_ImportFD()
  5051 ms  0x8f2 ret:0x7f18a2ef7970
  5051 ms  0x8f2 SSL_AuthCertificateHook()
  5051 ms  0x8f2 fd:0x7f18a2ef7970
  5051 ms  0x8f2 ret:0x0
  5051 ms  0x8f2 PR_Connect()
  5051 ms  0x8f2 fd:0x7f18a2ef7970
  5052 ms  0x8f2 SSL_ImportFD()
  5052 ms  0x8f2 ret:0x7f18a2ef7c10
  5052 ms  0x8f2 SSL_AuthCertificateHook()
  5052 ms  0x8f2 fd:0x7f18a2ef7c10
  5052 ms  0x8f2 ret:0x0
  5052 ms  0x8f2 PR_Connect()
  5052 ms  0x8f2 fd:0x7f18a2ef7c10
  5087 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5087 ms  0x8f2 cx:0x7f18a3217428
  5088 ms     | 0x8f2 EC_ValidatePublicKey()
  5088 ms     | 0x8f2 ret:0x0
  5088 ms  0x8f2 ret:0x7f18a3081020::7f18a3081020  20 e4 01 a3                                       ...
  5088 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5088 ms  0x8f2 cx:0x7f18a3217428
  5089 ms     | 0x8f2 EC_ValidatePublicKey()
  5090 ms     | 0x8f2 ret:0x0
  5090 ms  0x8f2 ret:0x7f18a3083020::7f18a3083020  c0 e9 01 a3                                      ....
  5090 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5090 ms  0x8f2 cx:0x7f18a32170e8
  5091 ms     | 0x8f2 EC_ValidatePublicKey()
  5091 ms     | 0x8f2 ret:0x0
  5091 ms  0x8f2 ret:0x7f18a3085820::7f18a3085820  90 ac ef a2                                      ....
  5091 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5091 ms  0x8f2 cx:0x7f18a32170e8
  5092 ms     | 0x8f2 EC_ValidatePublicKey()
  5093 ms     | 0x8f2 ret:0x0
  5093 ms  0x8f2 ret:0x7f18a3087820::7f18a3087820  b0 90 0a a3                                      ....
  5094 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5094 ms  0x8f2 cx:0x7f18a32175c8
  5095 ms     | 0x8f2 EC_ValidatePublicKey()
  5095 ms     | 0x8f2 ret:0x0
  5095 ms  0x8f2 ret:0x7f18a308a020::7f18a308a020  70 94 0a a3                                      p...
  5095 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5095 ms  0x8f2 cx:0x7f18a32175c8
  5095 ms     | 0x8f2 EC_ValidatePublicKey()
  5097 ms     | 0x8f2 ret:0x0
  5097 ms  0x8f2 ret:0x7f18a308c020::7f18a308c020  40 97 0a a3                                      @...
  5110 ms  0x8f2 SSL_ImportFD()
  5110 ms  0x8f2 ret:0x7f18a2ef76d0
  5110 ms  0x8f2 SSL_AuthCertificateHook()
  5110 ms  0x8f2 fd:0x7f18a2ef76d0
  5110 ms  0x8f2 ret:0x0
  5110 ms  0x8f2 PR_Connect()
  5110 ms  0x8f2 fd:0x7f18a2ef76d0
  5111 ms  0x8f2 SSL_ImportFD()
  5111 ms  0x8f2 ret:0x7f18a2ef7430
  5111 ms  0x8f2 SSL_AuthCertificateHook()
  5111 ms  0x8f2 fd:0x7f18a2ef7430
  5111 ms  0x8f2 ret:0x0
  5111 ms  0x8f2 PR_Connect()
  5111 ms  0x8f2 fd:0x7f18a2ef7430
           /* TID 0x96c */
  5129 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5129 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5130 ms  SECKEY_ECParamsToKeySize()
  5130 ms  0x8f2 ret:0x100
  5130 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5130 ms  0x8f2 cx:0x7f18a3217428
  5131 ms     | 0x8f2 EC_ValidatePublicKey()
  5133 ms     | 0x8f2 ret:0x0
  5133 ms  0x8f2 ret:0x7f18a2d24020::7f18a2d24020  c0 9e 0a a3                                      ....
  5133 ms  0x8f2 PK11_PubDeriveWithKDF()
  5133 ms  0x8f2 seckey:0x7f18a2d24020
  5133 ms     | 0x8f2 EC_ValidatePublicKey()
  5136 ms     | 0x8f2 ret:0x0
  5138 ms  0x8f2 ret:0x7f18b48eb100
  5138 ms  0x8f2 PK11_DeriveWithFlags()
  5138 ms  0x8f2 basekey:0x7f18b48eb100
  5138 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5138 ms  0x8f2 ret:0x7f18a30a8580
  5138 ms  0x8f2 PK11_Derive()
  5138 ms  0x8f2 basekey:0x7f18a30a8580
  5138 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5138 ms  0x8f2 ret:0x7f18a30a8600
  5138 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5138 ms  0x8f2 privk:0x7f18a2d24020::7f18a2d24020  c0 9e 0a a3                                      ....
  5138 ms  0x8f2 privk:0x7f18a2d24020::7f18a2d24020  e5 e5 e5 e5                                      ....
  5138 ms  0x8f2 PK11_Encrypt()
  5138 ms  0x8f2 symkey:0x7f18a30a8780
  5138 ms  0x8f2 SSL_AuthCertificateComplete()
  5138 ms  0x8f2 fd:0x7f18a2ef7970
  5138 ms  0x8f2 err:0x0
  5139 ms  0x8f2 PK11_Encrypt()
  5139 ms  0x8f2 symkey:0x7f18a30a8780
  5140 ms  0x8f2 PK11_Encrypt()
  5140 ms  0x8f2 symkey:0x7f18a30a8780
           /* TID 0x975 */
  5141 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5141 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  5142 ms  SECKEY_ECParamsToKeySize()
  5142 ms  0x8f2 ret:0x100
  5142 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5142 ms  0x8f2 cx:0x7f18a32170e8
  5142 ms     | 0x8f2 EC_ValidatePublicKey()
  5144 ms     | 0x8f2 ret:0x0
  5144 ms  0x8f2 ret:0x7f18a2d25820::7f18a2d25820  d0 9d 0a a3                                      ....
  5144 ms  0x8f2 PK11_PubDeriveWithKDF()
  5144 ms  0x8f2 seckey:0x7f18a2d25820
  5144 ms     | 0x8f2 EC_ValidatePublicKey()
  5145 ms     | 0x8f2 ret:0x0
  5147 ms  0x8f2 ret:0x7f18b48eb100
  5147 ms  0x8f2 PK11_DeriveWithFlags()
  5147 ms  0x8f2 basekey:0x7f18b48eb100
  5147 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5147 ms  0x8f2 ret:0x7f18a30a8c00
  5147 ms  0x8f2 PK11_Derive()
  5147 ms  0x8f2 basekey:0x7f18a30a8c00
  5147 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5147 ms  0x8f2 ret:0x7f18a30a8c80
  5147 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5147 ms  0x8f2 privk:0x7f18a2d25820::7f18a2d25820  d0 9d 0a a3                                      ....
  5147 ms  0x8f2 privk:0x7f18a2d25820::7f18a2d25820  e5 e5 e5 e5                                      ....
  5147 ms  0x8f2 PK11_Encrypt()
  5147 ms  0x8f2 symkey:0x7f18a30a8e00
           /* TID 0x96c */
  5148 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5148 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5148 ms  SECKEY_ECParamsToKeySize()
  5148 ms  0x8f2 ret:0x100
  5148 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5148 ms  0x8f2 cx:0x7f18a32175c8
  5149 ms     | 0x8f2 EC_ValidatePublicKey()
  5150 ms     | 0x8f2 ret:0x0
  5150 ms  0x8f2 ret:0x7f18a2d26820::7f18a2d26820  70 9e 0a a3                                      p...
  5151 ms  0x8f2 PK11_PubDeriveWithKDF()
  5151 ms  0x8f2 seckey:0x7f18a2d26820
  5151 ms     | 0x8f2 EC_ValidatePublicKey()
  5152 ms     | 0x8f2 ret:0x0
  5154 ms  0x8f2 ret:0x7f18b48eb100
  5154 ms  0x8f2 PK11_DeriveWithFlags()
  5154 ms  0x8f2 basekey:0x7f18b48eb100
  5154 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5154 ms  0x8f2 ret:0x7f18a2d80080
  5154 ms  0x8f2 PK11_Derive()
  5154 ms  0x8f2 basekey:0x7f18a2d80080
  5154 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5154 ms  0x8f2 ret:0x7f18a2d80100
  5154 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5154 ms  0x8f2 privk:0x7f18a2d26820::7f18a2d26820  70 9e 0a a3                                      p...
  5154 ms  0x8f2 privk:0x7f18a2d26820::7f18a2d26820  e5 e5 e5 e5                                      ....
  5154 ms  0x8f2 PK11_Encrypt()
  5154 ms  0x8f2 symkey:0x7f18a2d80280
  5154 ms  0x8f2 PK11_Encrypt()
  5154 ms  0x8f2 symkey:0x7f18a30a8780
  5154 ms  0x8f2 PK11_Encrypt()
  5154 ms  0x8f2 symkey:0x7f18a30a8780
  5155 ms  0x8f2 PK11_Encrypt()
  5155 ms  0x8f2 symkey:0x7f18a30a8780
  5155 ms  0x8f2 PK11_Encrypt()
  5155 ms  0x8f2 symkey:0x7f18a30a8780
  5155 ms  0x8f2 PK11_Encrypt()
  5155 ms  0x8f2 symkey:0x7f18a30a8780
  5156 ms  0x8f2 PK11_Encrypt()
  5156 ms  0x8f2 symkey:0x7f18a30a8780
  5156 ms  0x8f2 PK11_Encrypt()
  5156 ms  0x8f2 symkey:0x7f18a30a8780
  5156 ms  0x8f2 PK11_Encrypt()
  5156 ms  0x8f2 symkey:0x7f18a30a8780
  5157 ms  0x8f2 PK11_Encrypt()
  5157 ms  0x8f2 symkey:0x7f18a30a8780
  5157 ms  0x8f2 PK11_Encrypt()
  5157 ms  0x8f2 symkey:0x7f18a30a8780
  5157 ms  0x8f2 PK11_Encrypt()
  5157 ms  0x8f2 symkey:0x7f18a30a8780
  5157 ms  0x8f2 PK11_Encrypt()
  5157 ms  0x8f2 symkey:0x7f18a30a8780
  5158 ms  0x8f2 PK11_Encrypt()
  5158 ms  0x8f2 symkey:0x7f18a30a8780
  5158 ms  0x8f2 PK11_Encrypt()
  5158 ms  0x8f2 symkey:0x7f18a30a8780
  5158 ms  0x8f2 PK11_Encrypt()
  5158 ms  0x8f2 symkey:0x7f18a30a8780
  5158 ms  0x8f2 PK11_Encrypt()
  5158 ms  0x8f2 symkey:0x7f18a30a8780
  5159 ms  0x8f2 PK11_Encrypt()
  5159 ms  0x8f2 symkey:0x7f18a30a8780
  5159 ms  0x8f2 PK11_Encrypt()
  5159 ms  0x8f2 symkey:0x7f18a30a8780
  5159 ms  0x8f2 PK11_Encrypt()
  5159 ms  0x8f2 symkey:0x7f18a30a8780
  5159 ms  0x8f2 SSL_AuthCertificateComplete()
  5159 ms  0x8f2 fd:0x7f18a2ef7940
  5159 ms  0x8f2 err:0x0
  5160 ms  0x8f2 SSL_AuthCertificateComplete()
  5160 ms  0x8f2 fd:0x7f18a2ef7c10
  5160 ms  0x8f2 err:0x0
           /* TID 0x8fc */
  5166 ms  0x8fc PR_Close()
  5166 ms  0x8fc fd:0x7f18a309c460
           /* TID 0x8f2 */
  5167 ms  0x8f2 PK11_Encrypt()
  5167 ms  0x8f2 symkey:0x7f18a30a8780
  5167 ms  0x8f2 PK11_Encrypt()
  5167 ms  0x8f2 symkey:0x7f18a30a8780
  5167 ms  0x8f2 PK11_Encrypt()
  5167 ms  0x8f2 symkey:0x7f18a30a8780
  5167 ms  0x8f2 PK11_Encrypt()
  5167 ms  0x8f2 symkey:0x7f18a30a8e00
  5168 ms  0x8f2 PK11_Encrypt()
  5168 ms  0x8f2 symkey:0x7f18a2d80280
  5168 ms  0x8f2 PK11_Encrypt()
  5168 ms  0x8f2 symkey:0x7f18a2d80280
  5168 ms  0x8f2 PK11_Encrypt()
  5168 ms  0x8f2 symkey:0x7f18a30a8780
  5169 ms  0x8f2 PK11_Encrypt()
  5169 ms  0x8f2 symkey:0x7f18a30a8780
  5169 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5169 ms  0x8f2 cx:0x7f18a3217de8
  5169 ms     | 0x8f2 EC_ValidatePublicKey()
  5169 ms     | 0x8f2 ret:0x0
  5169 ms  0x8f2 ret:0x7f18a2d3d820::7f18a2d3d820  00 5b 2b a3                                      .[+.
  5170 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5170 ms  0x8f2 cx:0x7f18a3217de8
  5170 ms     | 0x8f2 EC_ValidatePublicKey()
  5172 ms     | 0x8f2 ret:0x0
  5172 ms  0x8f2 ret:0x7f18a2d3f820::7f18a2d3f820  80 6d 48 b5                                      .mH.
  5172 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5172 ms  0x8f2 cx:0x7f18a3217768
  5173 ms     | 0x8f2 EC_ValidatePublicKey()
  5173 ms     | 0x8f2 ret:0x0
  5173 ms  0x8f2 ret:0x7f18a31b1820::7f18a31b1820  50 f1 d9 a2                                      P...
  5173 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5173 ms  0x8f2 cx:0x7f18a3217768
  5173 ms     | 0x8f2 EC_ValidatePublicKey()
  5175 ms     | 0x8f2 ret:0x0
  5175 ms  0x8f2 ret:0x7f18a2da5820::7f18a2da5820  30 f3 d9 a2                                      0...
  5175 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5175 ms  0x8f2 privk:0x7f18a3083020::7f18a3083020  c0 e9 01 a3                                      ....
  5175 ms  0x8f2 privk:0x7f18a3083020::7f18a3083020  e5 e5 e5 e5                                      ....
  5175 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5175 ms  0x8f2 privk:0x7f18a3081020::7f18a3081020  20 e4 01 a3                                       ...
  5175 ms  0x8f2 privk:0x7f18a3081020::7f18a3081020  e5 e5 e5 e5                                      ....
  5175 ms  0x8f2 PK11_Encrypt()
  5175 ms  0x8f2 symkey:0x7f18a30a8780
  5176 ms  0x8f2 PK11_Encrypt()
  5176 ms  0x8f2 symkey:0x7f18a30a8780
  5176 ms  0x8f2 PK11_Encrypt()
  5176 ms  0x8f2 symkey:0x7f18a30a8780
  5176 ms  0x8f2 PK11_Encrypt()
  5176 ms  0x8f2 symkey:0x7f18a30a8780
  5176 ms  0x8f2 PK11_Encrypt()
  5176 ms  0x8f2 symkey:0x7f18a30a8780
  5177 ms  0x8f2 PK11_Encrypt()
  5177 ms  0x8f2 symkey:0x7f18a30a8780
  5177 ms  0x8f2 PK11_Encrypt()
  5177 ms  0x8f2 symkey:0x7f18a30a8780
  5177 ms  0x8f2 PK11_Encrypt()
  5177 ms  0x8f2 symkey:0x7f18a30a8780
  5177 ms  0x8f2 PK11_Encrypt()
  5177 ms  0x8f2 symkey:0x7f18a30a8780
  5178 ms  0x8f2 PK11_Encrypt()
  5178 ms  0x8f2 symkey:0x7f18a30a8780
  5178 ms  0x8f2 PK11_Encrypt()
  5178 ms  0x8f2 symkey:0x7f18a30a8780
  5184 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5184 ms  0x8f2 privk:0x7f18a3087820::7f18a3087820  b0 90 0a a3                                      ....
  5184 ms  0x8f2 privk:0x7f18a3087820::7f18a3087820  e5 e5 e5 e5                                      ....
  5185 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5185 ms  0x8f2 privk:0x7f18a3085820::7f18a3085820  90 ac ef a2                                      ....
  5185 ms  0x8f2 privk:0x7f18a3085820::7f18a3085820  e5 e5 e5 e5                                      ....
  5185 ms  0x8f2 PR_Close()
  5185 ms  0x8f2 fd:0x7f18a2ef7940
  5185 ms     | 0x8f2 PK11_Encrypt()
  5185 ms     | 0x8f2 symkey:0x7f18a30a8e00
  5191 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5191 ms  0x8f2 privk:0x7f18a308c020::7f18a308c020  40 97 0a a3                                      @...
  5191 ms  0x8f2 privk:0x7f18a308c020::7f18a308c020  e5 e5 e5 e5                                      ....
  5191 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5191 ms  0x8f2 privk:0x7f18a308a020::7f18a308a020  70 94 0a a3                                      p...
  5191 ms  0x8f2 privk:0x7f18a308a020::7f18a308a020  e5 e5 e5 e5                                      ....
  5193 ms  0x8f2 PK11_Encrypt()
  5193 ms  0x8f2 symkey:0x7f18a30a8780
           /* TID 0x8fc */
  5196 ms  0x8fc PR_Close()
  5196 ms  0x8fc fd:0x7f18a2ef7700
  5201 ms  0x8fc PR_Close()
  5201 ms  0x8fc fd:0x7f18a2ef7700
  5204 ms  0x8fc PR_Close()
  5204 ms  0x8fc fd:0x7f18a2ef7700
           /* TID 0x975 */
  5210 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5210 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  5210 ms  SECKEY_ECParamsToKeySize()
  5210 ms  0x8f2 ret:0x100
  5210 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5210 ms  0x8f2 cx:0x7f18a3217de8
  5211 ms     | 0x8f2 EC_ValidatePublicKey()
  5213 ms     | 0x8f2 ret:0x0
  5213 ms  0x8f2 ret:0x7f18a2d38820::7f18a2d38820  40 f7 d9 a2                                      @...
  5213 ms  0x8f2 PK11_PubDeriveWithKDF()
  5213 ms  0x8f2 seckey:0x7f18a2d38820
  5213 ms     | 0x8f2 EC_ValidatePublicKey()
  5214 ms     | 0x8f2 ret:0x0
  5216 ms  0x8f2 ret:0x7f18a30a8c80
  5216 ms  0x8f2 PK11_DeriveWithFlags()
  5216 ms  0x8f2 basekey:0x7f18a30a8c80
  5216 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5216 ms  0x8f2 ret:0x7f18a30a8c00
  5216 ms  0x8f2 PK11_Derive()
  5216 ms  0x8f2 basekey:0x7f18a30a8c00
  5216 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5216 ms  0x8f2 ret:0x7f18b48eb100
  5216 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5216 ms  0x8f2 privk:0x7f18a2d38820::7f18a2d38820  40 f7 d9 a2                                      @...
  5216 ms  0x8f2 privk:0x7f18a2d38820::7f18a2d38820  e5 e5 e5 e5                                      ....
  5216 ms  0x8f2 PK11_Encrypt()
  5216 ms  0x8f2 symkey:0x7f18a30a8d00
  5219 ms  0x8f2 SSL_AuthCertificateComplete()
  5219 ms  0x8f2 fd:0x7f18a2ef7430
  5219 ms  0x8f2 err:0x0
           /* TID 0x8fc */
  5220 ms  0x8fc PR_Close()
  5220 ms  0x8fc fd:0x7f18a2ef7850
           /* TID 0x96c */
  5221 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5221 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5221 ms  SECKEY_ECParamsToKeySize()
  5221 ms  0x8f2 ret:0x100
  5221 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5221 ms  0x8f2 cx:0x7f18a3217768
  5222 ms     | 0x8f2 EC_ValidatePublicKey()
  5224 ms     | 0x8f2 ret:0x0
  5224 ms  0x8f2 ret:0x7f18a2d39020::7f18a2d39020  90 f7 d9 a2                                      ....
  5224 ms  0x8f2 PK11_PubDeriveWithKDF()
  5224 ms  0x8f2 seckey:0x7f18a2d39020
  5224 ms     | 0x8f2 EC_ValidatePublicKey()
  5225 ms     | 0x8f2 ret:0x0
  5227 ms  0x8f2 ret:0x7f18a30a8c80
  5227 ms  0x8f2 PK11_DeriveWithFlags()
  5227 ms  0x8f2 basekey:0x7f18a30a8c80
  5227 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5227 ms  0x8f2 ret:0x7f18a2d81780
  5227 ms  0x8f2 PK11_Derive()
  5227 ms  0x8f2 basekey:0x7f18a2d81780
  5227 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5227 ms  0x8f2 ret:0x7f18a2d81800
  5227 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5227 ms  0x8f2 privk:0x7f18a2d39020::7f18a2d39020  90 f7 d9 a2                                      ....
  5227 ms  0x8f2 privk:0x7f18a2d39020::7f18a2d39020  e5 e5 e5 e5                                      ....
  5227 ms  0x8f2 PK11_Encrypt()
  5227 ms  0x8f2 symkey:0x7f18a2d81980
  5228 ms  0x8f2 PK11_Encrypt()
  5228 ms  0x8f2 symkey:0x7f18a30a8d00
  5228 ms  0x8f2 SSL_AuthCertificateComplete()
  5228 ms  0x8f2 fd:0x7f18a2ef76d0
  5228 ms  0x8f2 err:0x0
  5229 ms  0x8f2 PK11_Encrypt()
  5229 ms  0x8f2 symkey:0x7f18a30a8780
  5229 ms  0x8f2 PK11_Encrypt()
  5229 ms  0x8f2 symkey:0x7f18a2d80280
           /* TID 0x8fc */
  5231 ms  0x8fc PR_Close()
  5231 ms  0x8fc fd:0x7f18a2ef78e0
  5233 ms  0x8fc PR_Close()
  5233 ms  0x8fc fd:0x7f18a2ef71c0
           /* TID 0x8f2 */
  5234 ms  0x8f2 PK11_Encrypt()
  5234 ms  0x8f2 symkey:0x7f18a2d81980
  5234 ms  0x8f2 PK11_Encrypt()
  5234 ms  0x8f2 symkey:0x7f18a30a8780
           /* TID 0x8fc */
  5237 ms  0x8fc PR_Close()
  5237 ms  0x8fc fd:0x7f18a2ef71c0
           /* TID 0x8f2 */
  5239 ms  0x8f2 SSL_ImportFD()
  5239 ms  0x8f2 ret:0x7f18a2ef7940
  5239 ms  0x8f2 SSL_AuthCertificateHook()
  5239 ms  0x8f2 fd:0x7f18a2ef7940
  5239 ms  0x8f2 ret:0x0
  5239 ms  0x8f2 PR_Connect()
  5239 ms  0x8f2 fd:0x7f18a2ef7940
  5253 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5253 ms  0x8f2 privk:0x7f18a2d3f820::7f18a2d3f820  80 6d 48 b5                                      .mH.
  5253 ms  0x8f2 privk:0x7f18a2d3f820::7f18a2d3f820  e5 e5 e5 e5                                      ....
  5253 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5253 ms  0x8f2 privk:0x7f18a2d3d820::7f18a2d3d820  00 5b 2b a3                                      .[+.
  5253 ms  0x8f2 privk:0x7f18a2d3d820::7f18a2d3d820  e5 e5 e5 e5                                      ....
  5253 ms  0x8f2 PR_Close()
  5253 ms  0x8f2 fd:0x7f18a2ef7430
  5253 ms     | 0x8f2 PK11_Encrypt()
  5253 ms     | 0x8f2 symkey:0x7f18a30a8d00
  5264 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5264 ms  0x8f2 privk:0x7f18a2da5820::7f18a2da5820  30 f3 d9 a2                                      0...
  5264 ms  0x8f2 privk:0x7f18a2da5820::7f18a2da5820  e5 e5 e5 e5                                      ....
  5264 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5264 ms  0x8f2 privk:0x7f18a31b1820::7f18a31b1820  50 f1 d9 a2                                      P...
  5264 ms  0x8f2 privk:0x7f18a31b1820::7f18a31b1820  e5 e5 e5 e5                                      ....
  5264 ms  0x8f2 PR_Close()
  5264 ms  0x8f2 fd:0x7f18a2ef76d0
  5265 ms     | 0x8f2 PK11_Encrypt()
  5265 ms     | 0x8f2 symkey:0x7f18a2d81980
           /* TID 0x8fc */
  5316 ms  0x8fc PR_Close()
  5316 ms  0x8fc fd:0x7f18a2ef71c0
  5324 ms  0x8fc PR_Close()
  5324 ms  0x8fc fd:0x7f18a2ef71c0
  5349 ms  0x8fc PR_Close()
  5349 ms  0x8fc fd:0x7f18a2ef71c0
  5350 ms  0x8fc PR_Close()
  5350 ms  0x8fc fd:0x7f18a2ef71c0
  5351 ms  0x8fc PR_Close()
  5351 ms  0x8fc fd:0x7f18a2ef71c0
  5352 ms  0x8fc PR_Close()
  5352 ms  0x8fc fd:0x7f18a2ef71c0
  5354 ms  0x8fc PR_Close()
  5354 ms  0x8fc fd:0x7f18a2ef71c0
  5354 ms  0x8fc PR_Close()
  5354 ms  0x8fc fd:0x7f18a2ef71c0
  5376 ms  0x8fc PR_Close()
  5376 ms  0x8fc fd:0x7f18a2ef71c0
  5376 ms  0x8fc PR_Close()
  5376 ms  0x8fc fd:0x7f18a2ef76a0
           /* TID 0x8f2 */
  5378 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5378 ms  0x8f2 cx:0x7f18a32182c8
  5378 ms     | 0x8f2 EC_ValidatePublicKey()
  5378 ms     | 0x8f2 ret:0x0
  5378 ms  0x8f2 ret:0x7f18a2d27820::7f18a2d27820  30 ad ef a2                                      0...
  5379 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5379 ms  0x8f2 cx:0x7f18a32182c8
  5379 ms     | 0x8f2 EC_ValidatePublicKey()
  5381 ms     | 0x8f2 ret:0x0
  5381 ms  0x8f2 ret:0x7f18a2d29820::7f18a2d29820  10 af ef a2                                      ....
           /* TID 0x8fc */
  5383 ms  0x8fc PR_Close()
  5383 ms  0x8fc fd:0x7f18a2ef71c0
  5386 ms  0x8fc PR_Close()
  5386 ms  0x8fc fd:0x7f18a2ef71c0
  5386 ms  0x8fc PR_Close()
  5386 ms  0x8fc fd:0x7f18a2ef7460
  5386 ms  0x8fc PR_Close()
  5386 ms  0x8fc fd:0x7f18a2ef7fa0
  5388 ms  0x8fc PR_Close()
  5388 ms  0x8fc fd:0x7f18a2ef71c0
  5390 ms  0x8fc PR_Close()
  5390 ms  0x8fc fd:0x7f18a2ef71c0
  5393 ms  0x8fc PR_Close()
  5393 ms  0x8fc fd:0x7f18a2ef71c0
  5394 ms  0x8fc PR_Close()
  5394 ms  0x8fc fd:0x7f18a2ef71c0
  5395 ms  0x8fc PR_Close()
  5395 ms  0x8fc fd:0x7f18a2ef71c0
  5396 ms  0x8fc PR_Close()
  5396 ms  0x8fc fd:0x7f18a2ef71c0
  5396 ms  0x8fc PR_Close()
  5396 ms  0x8fc fd:0x7f18a2ef71c0
  5397 ms  0x8fc PR_Close()
  5397 ms  0x8fc fd:0x7f18a2ef71c0
  5398 ms  0x8fc PR_Close()
  5398 ms  0x8fc fd:0x7f18a2ef71c0
  5400 ms  0x8fc PR_Close()
  5400 ms  0x8fc fd:0x7f18a2ef71c0
  5401 ms  0x8fc PR_Close()
  5401 ms  0x8fc fd:0x7f18a2ef71c0
  5402 ms  0x8fc PR_Close()
  5402 ms  0x8fc fd:0x7f18a2ef71c0
  5403 ms  0x8fc PR_Close()
  5403 ms  0x8fc fd:0x7f18a2ef71c0
  5404 ms  0x8fc PR_Close()
  5404 ms  0x8fc fd:0x7f18a2ef71c0
  5406 ms  0x8fc PR_Close()
  5406 ms  0x8fc fd:0x7f18a305b4f0
  5407 ms  0x8fc PR_Close()
  5407 ms  0x8fc fd:0x7f18a305b4f0
  5408 ms  0x8fc PR_Close()
  5408 ms  0x8fc fd:0x7f18a305b550
  5412 ms  0x8fc PR_Close()
  5412 ms  0x8fc fd:0x7f18a305b550
  5441 ms  0x8fc PR_Close()
  5441 ms  0x8fc fd:0x7f18a2ef7df0
           /* TID 0x8f2 */
  5453 ms  0x8f2 PK11_Encrypt()
  5453 ms  0x8f2 symkey:0x7f18a30a8780
           /* TID 0x8fc */
  5472 ms  0x8fc PR_Close()
  5472 ms  0x8fc fd:0x7f18a305b4f0
           /* TID 0x8f2 */
  5474 ms  0x8f2 PK11_Encrypt()
  5474 ms  0x8f2 symkey:0x7f18a30a8780
  5476 ms  0x8f2 PK11_Encrypt()
  5476 ms  0x8f2 symkey:0x7f18a30a8780
  5478 ms  0x8f2 PK11_Encrypt()
  5478 ms  0x8f2 symkey:0x7f18a30a8780
           /* TID 0x8fc */
  5494 ms  0x8fc PR_Close()
  5494 ms  0x8fc fd:0x7f18a2ef7e80
           /* TID 0x8f2 */
  5522 ms  SECKEY_ECParamsToKeySize()
  5522 ms  0x8f2 ret:0x100
  5522 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5522 ms  0x8f2 cx:0x7f18a32182c8
  5522 ms     | 0x8f2 EC_ValidatePublicKey()
  5524 ms     | 0x8f2 ret:0x0
  5524 ms  0x8f2 ret:0x7f18a2d34820::7f18a2d34820  10 ff d9 a2                                      ....
  5524 ms  0x8f2 PK11_PubDeriveWithKDF()
  5524 ms  0x8f2 seckey:0x7f18a2d34820
  5524 ms     | 0x8f2 EC_ValidatePublicKey()
  5529 ms     | 0x8f2 ret:0x0
  5531 ms  0x8f2 ret:0x7f18a2d81800
  5531 ms  0x8f2 PK11_DeriveWithFlags()
  5531 ms  0x8f2 basekey:0x7f18a2d81800
  5531 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5531 ms  0x8f2 ret:0x7f18a2d81780
  5531 ms  0x8f2 PK11_Derive()
  5531 ms  0x8f2 basekey:0x7f18a2d81780
  5531 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5531 ms  0x8f2 ret:0x7f18b48eb100
  5531 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5531 ms  0x8f2 privk:0x7f18a2d34820::7f18a2d34820  10 ff d9 a2                                      ....
  5531 ms  0x8f2 privk:0x7f18a2d34820::7f18a2d34820  e5 e5 e5 e5                                      ....
  5531 ms  0x8f2 PK11_Encrypt()
  5531 ms  0x8f2 symkey:0x7f18a2d81880
           /* TID 0x8fc */
  5536 ms  0x8fc PR_Close()
  5536 ms  0x8fc fd:0x7f18a305b430
  5537 ms  0x8fc PR_Close()
  5537 ms  0x8fc fd:0x7f18a305b430
  5538 ms  0x8fc PR_Close()
  5538 ms  0x8fc fd:0x7f18a305b430
           /* TID 0x8f2 */
  5586 ms  0x8f2 PR_Connect()
  5586 ms  0x8f2 fd:0x7f18a305b6d0
  5667 ms  0x8f2 SSL_ImportFD()
  5667 ms  0x8f2 ret:0x7f18a309c820
  5667 ms  0x8f2 SSL_AuthCertificateHook()
  5667 ms  0x8f2 fd:0x7f18a309c820
  5667 ms  0x8f2 ret:0x0
  5668 ms  0x8f2 PK11_Encrypt()
  5668 ms  0x8f2 symkey:0x7f18b55c3400
  5668 ms  0x8f2 PR_Connect()
  5668 ms  0x8f2 fd:0x7f18a309c820
  5673 ms  0x8f2 SSL_ImportFD()
  5673 ms  0x8f2 ret:0x7f18a309cb20
  5673 ms  0x8f2 SSL_AuthCertificateHook()
  5673 ms  0x8f2 fd:0x7f18a309cb20
  5673 ms  0x8f2 ret:0x0
  5673 ms  0x8f2 PR_Connect()
  5673 ms  0x8f2 fd:0x7f18a309cb20
  5690 ms  0x8f2 SSL_ImportFD()
  5690 ms  0x8f2 ret:0x7f18a309c310
  5690 ms  0x8f2 SSL_AuthCertificateHook()
  5690 ms  0x8f2 fd:0x7f18a309c310
  5690 ms  0x8f2 ret:0x0
  5690 ms  0x8f2 PR_Connect()
  5690 ms  0x8f2 fd:0x7f18a309c310
  5693 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5693 ms  0x8f2 cx:0x7f18a3217de8
  5694 ms     | 0x8f2 EC_ValidatePublicKey()
  5694 ms     | 0x8f2 ret:0x0
  5694 ms  0x8f2 ret:0x7f18a2d3e020::7f18a2d3e020  d0 9d 0a a3                                      ....
  5694 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5694 ms  0x8f2 cx:0x7f18a3217de8
  5695 ms     | 0x8f2 EC_ValidatePublicKey()
  5696 ms     | 0x8f2 ret:0x0
  5696 ms  0x8f2 ret:0x7f18a2ea5820::7f18a2ea5820  c0 54 2b a3                                      .T+.
  5729 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5729 ms  0x8f2 cx:0x7f18a3218468
  5730 ms     | 0x8f2 EC_ValidatePublicKey()
  5730 ms     | 0x8f2 ret:0x0
  5730 ms  0x8f2 ret:0x7f18a307f020::7f18a307f020  00 9b 2d a3                                      ..-.
  5730 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5730 ms  0x8f2 cx:0x7f18a3218468
  5730 ms     | 0x8f2 EC_ValidatePublicKey()
  5732 ms     | 0x8f2 ret:0x0
  5732 ms  0x8f2 ret:0x7f18a3081020::7f18a3081020  80 9d 2d a3                                      ..-.
           /* TID 0x975 */
  5745 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5745 ms  0x975 ret:0x0
           /* TID 0x8fc */
  5746 ms  0x8fc PR_Close()
  5746 ms  0x8fc fd:0x7f18a309ca30
           /* TID 0x8f2 */
  5746 ms  0x8f2 SSL_AuthCertificateComplete()
  5746 ms  0x8f2 fd:0x7f18a2ef7940
  5746 ms  0x8f2 err:0x0
  5746 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  5746 ms     | 0x8f2 privk:0x7f18a2d29820::7f18a2d29820  10 af ef a2                                      ....
  5746 ms     | 0x8f2 privk:0x7f18a2d29820::7f18a2d29820  e5 e5 e5 e5                                      ....
  5746 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  5746 ms     | 0x8f2 privk:0x7f18a2d27820::7f18a2d27820  30 ad ef a2                                      0...
  5746 ms     | 0x8f2 privk:0x7f18a2d27820::7f18a2d27820  e5 e5 e5 e5                                      ....
  5746 ms  0x8f2 PK11_Encrypt()
  5746 ms  0x8f2 symkey:0x7f18a2d81880
  5746 ms  0x8f2 PK11_Encrypt()
  5746 ms  0x8f2 symkey:0x7f18a2d81880
  5747 ms  0x8f2 PK11_Encrypt()
  5747 ms  0x8f2 symkey:0x7f18a2d81880
           /* TID 0x96c */
  5747 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5747 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5748 ms  SECKEY_ECParamsToKeySize()
  5748 ms  0x8f2 ret:0x100
  5748 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5748 ms  0x8f2 cx:0x7f18a3217de8
  5748 ms     | 0x8f2 EC_ValidatePublicKey()
  5750 ms     | 0x8f2 ret:0x0
  5750 ms  0x8f2 ret:0x7f18a2d32820::7f18a2d32820  30 ad ef a2                                      0...
  5750 ms  0x8f2 PK11_PubDeriveWithKDF()
  5750 ms  0x8f2 seckey:0x7f18a2d32820
  5750 ms     | 0x8f2 EC_ValidatePublicKey()
  5751 ms     | 0x8f2 ret:0x0
  5753 ms  0x8f2 ret:0x7f18a2d81800
  5753 ms  0x8f2 PK11_DeriveWithFlags()
  5753 ms  0x8f2 basekey:0x7f18a2d81800
  5753 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5753 ms  0x8f2 ret:0x7f18a30a8c00
  5753 ms  0x8f2 PK11_Derive()
  5753 ms  0x8f2 basekey:0x7f18a30a8c00
  5753 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5753 ms  0x8f2 ret:0x7f18a30a8c80
  5753 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5753 ms  0x8f2 privk:0x7f18a2d32820::7f18a2d32820  30 ad ef a2                                      0...
  5753 ms  0x8f2 privk:0x7f18a2d32820::7f18a2d32820  e5 e5 e5 e5                                      ....
  5753 ms  0x8f2 PK11_Encrypt()
  5753 ms  0x8f2 symkey:0x7f18a30a8d80
  5754 ms  0x8f2 SSL_AuthCertificateComplete()
  5754 ms  0x8f2 fd:0x7f18a309c820
  5754 ms  0x8f2 err:0x0
  5754 ms  0x8f2 PK11_Encrypt()
  5754 ms  0x8f2 symkey:0x7f18a30a8d80
  5755 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5755 ms  0x8f2 cx:0x7f18a3218608
  5756 ms     | 0x8f2 EC_ValidatePublicKey()
  5756 ms     | 0x8f2 ret:0x0
  5756 ms  0x8f2 ret:0x7f18a2d37020::7f18a2d37020  40 ac ef a2                                      @...
  5756 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5756 ms  0x8f2 cx:0x7f18a3218608
  5756 ms     | 0x8f2 EC_ValidatePublicKey()
  5758 ms     | 0x8f2 ret:0x0
  5758 ms  0x8f2 ret:0x7f18a3083020::7f18a3083020  20 ae ef a2                                       ...
  5773 ms  0x8f2 PK11_Encrypt()
  5773 ms  0x8f2 symkey:0x7f18b55c3400
  5779 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5779 ms  0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  c0 54 2b a3                                      .T+.
  5779 ms  0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  e5 e5 e5 e5                                      ....
  5779 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5779 ms  0x8f2 privk:0x7f18a2d3e020::7f18a2d3e020  d0 9d 0a a3                                      ....
  5779 ms  0x8f2 privk:0x7f18a2d3e020::7f18a2d3e020  e5 e5 e5 e5                                      ....
  5780 ms  0x8f2 PR_Close()
  5780 ms  0x8f2 fd:0x7f18a309c820
  5780 ms     | 0x8f2 PK11_Encrypt()
  5780 ms     | 0x8f2 symkey:0x7f18a30a8d80
  5789 ms  0x8f2 PK11_Encrypt()
  5789 ms  0x8f2 symkey:0x7f18a2d81880
  5791 ms  SECKEY_ECParamsToKeySize()
  5791 ms  0x8f2 ret:0x100
  5791 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5791 ms  0x8f2 cx:0x7f18a3218468
  5791 ms     | 0x8f2 EC_ValidatePublicKey()
  5793 ms     | 0x8f2 ret:0x0
  5793 ms  0x8f2 ret:0x7f18a3086820::7f18a3086820  c0 79 0d b4                                      .y..
  5793 ms  0x8f2 PK11_PubDeriveWithKDF()
  5793 ms  0x8f2 seckey:0x7f18a3086820
  5793 ms     | 0x8f2 EC_ValidatePublicKey()
           /* TID 0x975 */
  5795 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5795 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  5798 ms     | 0x8f2 ret:0x0
           /* TID 0x8fc */
  5803 ms  0x8fc PR_Close()
  5803 ms  0x8fc fd:0x7f18a2cf10a0
           /* TID 0x8f2 */
  5803 ms  0x8f2 ret:0x7f18a30a8c80
  5803 ms  0x8f2 PK11_DeriveWithFlags()
  5803 ms  0x8f2 basekey:0x7f18a30a8c80
  5803 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5803 ms  0x8f2 ret:0x7f18a30a8c00
  5803 ms  0x8f2 PK11_Derive()
  5803 ms  0x8f2 basekey:0x7f18a30a8c00
  5803 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5803 ms  0x8f2 ret:0x7f18a2d81800
  5803 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5803 ms  0x8f2 privk:0x7f18a3086820::7f18a3086820  c0 79 0d b4                                      .y..
  5803 ms  0x8f2 privk:0x7f18a3086820::7f18a3086820  e5 e5 e5 e5                                      ....
  5803 ms  0x8f2 PK11_Encrypt()
  5803 ms  0x8f2 symkey:0x7f18a30a8e80
  5804 ms  0x8f2 SSL_AuthCertificateComplete()
  5804 ms  0x8f2 fd:0x7f18a309cb20
  5804 ms  0x8f2 err:0x0
  5804 ms  0x8f2 PK11_Encrypt()
  5804 ms  0x8f2 symkey:0x7f18a2d81880
  5805 ms  0x8f2 PK11_Encrypt()
  5805 ms  0x8f2 symkey:0x7f18b55c3400
           /* TID 0x8fc */
  5807 ms  0x8fc PR_Close()
  5807 ms  0x8fc fd:0x7f18a2cf1040
           /* TID 0x8f2 */
  5807 ms  0x8f2 PK11_Encrypt()
  5807 ms  0x8f2 symkey:0x7f18a30a8e80
  5815 ms  0x8f2 PK11_Encrypt()
  5815 ms  0x8f2 symkey:0x7f18a2d81880
  5818 ms  SECKEY_ECParamsToKeySize()
  5818 ms  0x8f2 ret:0x100
  5818 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5818 ms  0x8f2 cx:0x7f18a3218608
  5819 ms     | 0x8f2 EC_ValidatePublicKey()
  5820 ms     | 0x8f2 ret:0x0
  5820 ms  0x8f2 ret:0x7f18a2c3f820::7f18a2c3f820  30 03 c3 a2                                      0...
           /* TID 0x96c */
  5821 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5821 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5822 ms  0x8f2 PK11_PubDeriveWithKDF()
  5822 ms  0x8f2 seckey:0x7f18a2c3f820
  5822 ms     | 0x8f2 EC_ValidatePublicKey()
  5829 ms     | 0x8f2 ret:0x0
  5830 ms  0x8f2 ret:0x7f18a30a8c80
  5830 ms  0x8f2 PK11_DeriveWithFlags()
  5830 ms  0x8f2 basekey:0x7f18a30a8c80
  5830 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5830 ms  0x8f2 ret:0x7f18a30a6c80
  5830 ms  0x8f2 PK11_Derive()
  5830 ms  0x8f2 basekey:0x7f18a30a6c80
  5831 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5831 ms  0x8f2 ret:0x7f18b7390400
  5831 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5831 ms  0x8f2 privk:0x7f18a2c3f820::7f18a2c3f820  30 03 c3 a2                                      0...
  5831 ms  0x8f2 privk:0x7f18a2c3f820::7f18a2c3f820  e5 e5 e5 e5                                      ....
  5831 ms  0x8f2 PK11_Encrypt()
  5831 ms  0x8f2 symkey:0x7f18b7390700
  5839 ms  0x8f2 PK11_Encrypt()
  5839 ms  0x8f2 symkey:0x7f18a2d81880
  5842 ms  0x8f2 SSL_AuthCertificateComplete()
  5842 ms  0x8f2 fd:0x7f18a309c310
  5842 ms  0x8f2 err:0x0
  5842 ms  0x8f2 PK11_Encrypt()
  5842 ms  0x8f2 symkey:0x7f18b55c3400
  5842 ms  0x8f2 PK11_Encrypt()
  5842 ms  0x8f2 symkey:0x7f18a2d81880
  5843 ms  0x8f2 PK11_Encrypt()
  5843 ms  0x8f2 symkey:0x7f18b7390700
  5844 ms  0x8f2 PK11_Encrypt()
  5844 ms  0x8f2 symkey:0x7f18b7390700
  5845 ms  0x8f2 SSL_ImportFD()
  5845 ms  0x8f2 ret:0x7f18a2cf1880
  5845 ms  0x8f2 SSL_AuthCertificateHook()
  5845 ms  0x8f2 fd:0x7f18a2cf1880
  5845 ms  0x8f2 ret:0x0
  5845 ms  0x8f2 PR_Connect()
  5845 ms  0x8f2 fd:0x7f18a2cf1880
  5849 ms  0x8f2 PK11_Encrypt()
  5849 ms  0x8f2 symkey:0x7f18b55c3400
  5860 ms  0x8f2 SSL_ImportFD()
  5860 ms  0x8f2 ret:0x7f18a2cf1c10
  5860 ms  0x8f2 SSL_AuthCertificateHook()
  5860 ms  0x8f2 fd:0x7f18a2cf1c10
  5860 ms  0x8f2 ret:0x0
  5860 ms  0x8f2 PR_Connect()
  5860 ms  0x8f2 fd:0x7f18a2cf1c10
  5860 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5860 ms  0x8f2 privk:0x7f18a3081020::7f18a3081020  80 9d 2d a3                                      ..-.
  5860 ms  0x8f2 privk:0x7f18a3081020::7f18a3081020  e5 e5 e5 e5                                      ....
  5860 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5860 ms  0x8f2 privk:0x7f18a307f020::7f18a307f020  00 9b 2d a3                                      ..-.
  5861 ms  0x8f2 privk:0x7f18a307f020::7f18a307f020  e5 e5 e5 e5                                      ....
  5870 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5870 ms  0x8f2 cx:0x7f18a3218ae8
  5871 ms     | 0x8f2 EC_ValidatePublicKey()
  5871 ms     | 0x8f2 ret:0x0
  5871 ms  0x8f2 ret:0x7f18a2c4b820::7f18a2c4b820  90 0c c3 a2                                      ....
  5871 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5871 ms  0x8f2 cx:0x7f18a3218ae8
  5871 ms     | 0x8f2 EC_ValidatePublicKey()
  5873 ms     | 0x8f2 ret:0x0
  5873 ms  0x8f2 ret:0x7f18a2c4d820::7f18a2c4d820  c0 0e c3 a2                                      ....
  5885 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5885 ms  0x8f2 cx:0x7f18a3218c88
  5885 ms     | 0x8f2 EC_ValidatePublicKey()
  5885 ms     | 0x8f2 ret:0x0
  5885 ms  0x8f2 ret:0x7f18a2c50020::7f18a2c50020  90 f2 d9 a2                                      ....
  5886 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5886 ms  0x8f2 cx:0x7f18a3218c88
  5886 ms     | 0x8f2 EC_ValidatePublicKey()
  5888 ms     | 0x8f2 ret:0x0
  5888 ms  0x8f2 ret:0x7f18a2c52020::7f18a2c52020  d0 f8 d9 a2                                      ....
  5889 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5889 ms  0x8f2 privk:0x7f18a3083020::7f18a3083020  20 ae ef a2                                       ...
  5889 ms  0x8f2 privk:0x7f18a3083020::7f18a3083020  e5 e5 e5 e5                                      ....
  5889 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5889 ms  0x8f2 privk:0x7f18a2d37020::7f18a2d37020  40 ac ef a2                                      @...
  5889 ms  0x8f2 privk:0x7f18a2d37020::7f18a2d37020  e5 e5 e5 e5                                      ....
  5900 ms  0x8f2 PK11_Derive()
  5900 ms  0x8f2 basekey:0x7f18a30a8c80
  5900 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5900 ms  0x8f2 ret:0x7f18a205b100
  5900 ms  0x8f2 PK11_PubDeriveWithKDF()
  5900 ms  0x8f2 seckey:0x7f18a2c4d820
  5900 ms     | 0x8f2 EC_ValidatePublicKey()
  5902 ms     | 0x8f2 ret:0x0
  5903 ms  0x8f2 ret:0x7f18a30a8c80
  5903 ms  SECKEY_ECParamsToKeySize()
  5903 ms  0x8f2 ret:0x100
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a205b100
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b180
  5903 ms  0x8f2 PK11_Derive()
  5903 ms  0x8f2 basekey:0x7f18a30a8c80
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b200
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a205b200
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b100
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a205b200
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a30a8c80
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a205b200
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b180
  5903 ms  0x8f2 PK11_Derive()
  5903 ms  0x8f2 basekey:0x7f18a205b280
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b300
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a30a8c80
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5903 ms  0x8f2 ret:0x7f18a205b200
  5903 ms  0x8f2 PK11_DeriveWithFlags()
  5903 ms  0x8f2 basekey:0x7f18a30a8c80
  5903 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5904 ms  0x8f2 ret:0x7f18a205b180
           /* TID 0x975 */
  5905 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5905 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  5906 ms  0x8f2 PK11_DeriveWithFlags()
  5906 ms  0x8f2 basekey:0x7f18a30a8c80
  5906 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5906 ms  0x8f2 ret:0x7f18a205b180
  5911 ms  0x8f2 SSL_AuthCertificateComplete()
  5911 ms  0x8f2 fd:0x7f18a2cf1880
  5911 ms  0x8f2 err:0x0
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b300
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b180
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b300
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b280
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b300
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b500
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b100
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b580
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b100
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b600
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b280
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b600
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b280
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b680
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b100
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b200
  5911 ms     | 0x8f2 PK11_Encrypt()
  5911 ms     | 0x8f2 symkey:0x7f18a205b580
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b180
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b200
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b180
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b680
  5911 ms     | 0x8f2 PK11_DeriveWithFlags()
  5911 ms     | 0x8f2 basekey:0x7f18a205b300
  5911 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  5911 ms     | 0x8f2 ret:0x7f18a205b580
  5912 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  5912 ms     | 0x8f2 privk:0x7f18a2c4d820::7f18a2c4d820  c0 0e c3 a2                                      ....
  5912 ms     | 0x8f2 privk:0x7f18a2c4d820::7f18a2c4d820  e5 e5 e5 e5                                      ....
  5912 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  5912 ms     | 0x8f2 privk:0x7f18a2c4b820::7f18a2c4b820  90 0c c3 a2                                      ....
  5912 ms     | 0x8f2 privk:0x7f18a2c4b820::7f18a2c4b820  e5 e5 e5 e5                                      ....
  5912 ms  0x8f2 PK11_Encrypt()
  5912 ms  0x8f2 symkey:0x7f18a205b200
  5932 ms  0x8f2 PK11_Encrypt()
  5932 ms  0x8f2 symkey:0x7f18a30a8e80
           /* TID 0x8fc */
  5933 ms  0x8fc PR_Close()
  5933 ms  0x8fc fd:0x7f18a2044160
           /* TID 0x8f2 */
  5937 ms  0x8f2 PK11_DeriveWithFlags()
  5937 ms  0x8f2 basekey:0x7f18a205b580
  5937 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5937 ms  0x8f2 ret:0x7f18a30a8c80
  5937 ms  0x8f2 PK11_DeriveWithFlags()
  5937 ms  0x8f2 basekey:0x7f18a205b580
  5937 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5937 ms  0x8f2 ret:0x7f18a30a8c80
  5939 ms  SECKEY_ECParamsToKeySize()
  5939 ms  0x8f2 ret:0x100
  5939 ms  0x8f2 SECKEY_CreateECPrivateKey()
  5939 ms  0x8f2 cx:0x7f18a3218c88
  5940 ms     | 0x8f2 EC_ValidatePublicKey()
  5941 ms     | 0x8f2 ret:0x0
  5941 ms  0x8f2 ret:0x7f18a2c5e020::7f18a2c5e020  f0 9b 2d a3                                      ..-.
  5942 ms  0x8f2 PK11_PubDeriveWithKDF()
  5942 ms  0x8f2 seckey:0x7f18a2c5e020
  5942 ms     | 0x8f2 EC_ValidatePublicKey()
  5943 ms     | 0x8f2 ret:0x0
           /* TID 0x96c */
  5945 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5945 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  5949 ms  0x8f2 ret:0x7f18a30a8c80
  5949 ms  0x8f2 PK11_DeriveWithFlags()
  5949 ms  0x8f2 basekey:0x7f18a30a8c80
  5949 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5949 ms  0x8f2 ret:0x7f18a205b100
  5949 ms  0x8f2 PK11_Derive()
  5949 ms  0x8f2 basekey:0x7f18a205b100
  5949 ms     | 0x8f2 PK11_DeriveWithTemplate()
  5949 ms  0x8f2 ret:0x7f18a205b300
  5949 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5949 ms  0x8f2 privk:0x7f18a2c5e020::7f18a2c5e020  f0 9b 2d a3                                      ..-.
  5950 ms  0x8f2 privk:0x7f18a2c5e020::7f18a2c5e020  e5 e5 e5 e5                                      ....
  5950 ms  0x8f2 PK11_Encrypt()
  5950 ms  0x8f2 symkey:0x7f18a205c980
  5961 ms  0x8f2 SSL_AuthCertificateComplete()
  5961 ms  0x8f2 fd:0x7f18a2cf1c10
  5961 ms  0x8f2 err:0x0
  5962 ms  0x8f2 PK11_Encrypt()
  5962 ms  0x8f2 symkey:0x7f18b7390700
  5962 ms  0x8f2 PK11_Encrypt()
  5962 ms  0x8f2 symkey:0x7f18a205c980
  5963 ms  0x8f2 PK11_Encrypt()
  5963 ms  0x8f2 symkey:0x7f18a205c980
           /* TID 0x8fc */
  5964 ms  0x8fc PR_Close()
  5964 ms  0x8fc fd:0x7f18a20441c0
           /* TID 0x8f2 */
  5969 ms  0x8f2 PK11_Encrypt()
  5969 ms  0x8f2 symkey:0x7f18a30a8780
  5975 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5975 ms  0x8f2 privk:0x7f18a2c52020::7f18a2c52020  d0 f8 d9 a2                                      ....
  5975 ms  0x8f2 privk:0x7f18a2c52020::7f18a2c52020  e5 e5 e5 e5                                      ....
  5976 ms  0x8f2 SECKEY_DestroyPrivateKey()
  5976 ms  0x8f2 privk:0x7f18a2c50020::7f18a2c50020  90 f2 d9 a2                                      ....
  5976 ms  0x8f2 privk:0x7f18a2c50020::7f18a2c50020  e5 e5 e5 e5                                      ....
  5976 ms  0x8f2 PK11_Encrypt()
  5976 ms  0x8f2 symkey:0x7f18a205c980
  5978 ms  0x8f2 SSL_ImportFD()
  5978 ms  0x8f2 ret:0x7f18a2044580
  5978 ms  0x8f2 SSL_AuthCertificateHook()
  5978 ms  0x8f2 fd:0x7f18a2044580
  5978 ms  0x8f2 ret:0x0
  5978 ms  0x8f2 PR_Connect()
  5978 ms  0x8f2 fd:0x7f18a2044580
  5983 ms  0x8f2 PK11_Encrypt()
  5983 ms  0x8f2 symkey:0x7f18a2d81880
           /* TID 0x8fc */
  5985 ms  0x8fc PR_Close()
  5985 ms  0x8fc fd:0x7f18a20444c0
  5985 ms  0x8fc PR_Close()
  5985 ms  0x8fc fd:0x7f18a20446d0
  5985 ms  0x8fc PR_Close()
  5985 ms  0x8fc fd:0x7f18a2044790
  5985 ms  0x8fc PR_Close()
  5985 ms  0x8fc fd:0x7f18a2044850
  6007 ms  0x8fc PR_Close()
  6007 ms  0x8fc fd:0x7f18a20442b0
  6009 ms  0x8fc PR_Close()
  6009 ms  0x8fc fd:0x7f18a2044250
  6009 ms  0x8fc PR_Close()
  6009 ms  0x8fc fd:0x7f18a2044550
  6014 ms  0x8fc PR_Close()
  6014 ms  0x8fc fd:0x7f18a2044250
           /* TID 0x8f2 */
  6015 ms  0x8f2 SSL_ImportFD()
  6015 ms  0x8f2 ret:0x7f18a2044760
  6015 ms  0x8f2 SSL_AuthCertificateHook()
  6015 ms  0x8f2 fd:0x7f18a2044760
  6016 ms  0x8f2 ret:0x0
  6016 ms  0x8f2 PR_Connect()
  6016 ms  0x8f2 fd:0x7f18a2044760
  6023 ms  0x8f2 PK11_Encrypt()
  6023 ms  0x8f2 symkey:0x7f18a205b200
           /* TID 0x8fc */
  6023 ms  0x8fc PR_Close()
  6023 ms  0x8fc fd:0x7f18a2044550
           /* TID 0x8f2 */
  6029 ms  0x8f2 SSL_ImportFD()
  6029 ms  0x8f2 ret:0x7f18a2044a90
  6029 ms  0x8f2 SSL_AuthCertificateHook()
  6029 ms  0x8f2 fd:0x7f18a2044a90
  6029 ms  0x8f2 ret:0x0
  6029 ms  0x8f2 PR_Connect()
  6029 ms  0x8f2 fd:0x7f18a2044a90
  6031 ms  0x8f2 SSL_ImportFD()
  6031 ms  0x8f2 ret:0x7f18a2044eb0
  6031 ms  0x8f2 SSL_AuthCertificateHook()
  6031 ms  0x8f2 fd:0x7f18a2044eb0
  6031 ms  0x8f2 ret:0x0
  6032 ms  0x8f2 PR_Connect()
  6032 ms  0x8f2 fd:0x7f18a2044eb0
  6050 ms  0x8f2 PK11_Encrypt()
  6050 ms  0x8f2 symkey:0x7f18a205b200
           /* TID 0x8fc */
  6051 ms  0x8fc PR_Close()
  6051 ms  0x8fc fd:0x7f18a20449d0
           /* TID 0x8f2 */
  6052 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6052 ms  0x8f2 cx:0x7f18a3219308
  6053 ms     | 0x8f2 EC_ValidatePublicKey()
  6053 ms     | 0x8f2 ret:0x0
  6053 ms  0x8f2 ret:0x7f18a2c52020::7f18a2c52020  a0 9b 0a a3                                      ....
  6053 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6053 ms  0x8f2 cx:0x7f18a3219308
  6053 ms     | 0x8f2 EC_ValidatePublicKey()
  6055 ms     | 0x8f2 ret:0x0
  6055 ms  0x8f2 ret:0x7f18a2d23820::7f18a2d23820  90 f7 d9 a2                                      ....
  6057 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6057 ms  0x8f2 cx:0x7f18a32194a8
  6058 ms     | 0x8f2 EC_ValidatePublicKey()
  6058 ms     | 0x8f2 ret:0x0
  6058 ms  0x8f2 ret:0x7f18a2d35020::7f18a2d35020  f0 9b 2d a3                                      ..-.
  6058 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6058 ms  0x8f2 cx:0x7f18a32194a8
  6058 ms     | 0x8f2 EC_ValidatePublicKey()
  6067 ms     | 0x8f2 ret:0x0
  6067 ms  0x8f2 ret:0x7f18a2d3c820::7f18a2d3c820  00 56 02 b5                                      .V..
  6067 ms  0x8f2 PK11_Derive()
  6067 ms  0x8f2 basekey:0x7f18a205b680
  6067 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6067 ms  0x8f2 ret:0x7f18a30a8c80
  6067 ms  0x8f2 PK11_DeriveWithFlags()
  6067 ms  0x8f2 basekey:0x7f18a30a8c80
  6067 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6067 ms  0x8f2 ret:0x7f18a205b680
  6067 ms  0x8f2 PK11_DeriveWithFlags()
  6067 ms  0x8f2 basekey:0x7f18a205b680
  6067 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6067 ms  0x8f2 ret:0x7f18a2cfb980
  6068 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6068 ms  0x8f2 cx:0x7f18a3219648
  6069 ms     | 0x8f2 EC_ValidatePublicKey()
  6069 ms     | 0x8f2 ret:0x0
  6069 ms  0x8f2 ret:0x7f18a307e020::7f18a307e020  b0 70 f4 a1                                      .p..
  6069 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6069 ms  0x8f2 cx:0x7f18a3219648
  6069 ms     | 0x8f2 EC_ValidatePublicKey()
  6071 ms     | 0x8f2 ret:0x0
  6071 ms  0x8f2 ret:0x7f18a3080020::7f18a3080020  90 72 f4 a1                                      .r..
  6071 ms  0x8f2 PK11_Derive()
  6071 ms  0x8f2 basekey:0x7f18b738fa00
  6071 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6071 ms  0x8f2 ret:0x7f18a2cfb980
  6071 ms  0x8f2 PK11_DeriveWithFlags()
  6071 ms  0x8f2 basekey:0x7f18a2cfb980
  6071 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6071 ms  0x8f2 ret:0x7f18b738fa00
  6071 ms  0x8f2 PK11_DeriveWithFlags()
  6071 ms  0x8f2 basekey:0x7f18b738fa00
  6071 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6071 ms  0x8f2 ret:0x7f18b738fd80
           /* TID 0x8fc */
  6078 ms  0x8fc PR_Close()
  6078 ms  0x8fc fd:0x7f18a2044550
  6081 ms  0x8fc PR_Close()
  6081 ms  0x8fc fd:0x7f18a2044550
           /* TID 0x8f2 */
  6082 ms  0x8f2 SSL_ImportFD()
  6082 ms  0x8f2 ret:0x7f18a2044e80
  6082 ms  0x8f2 SSL_AuthCertificateHook()
  6082 ms  0x8f2 fd:0x7f18a2044e80
  6082 ms  0x8f2 ret:0x0
  6082 ms  0x8f2 PR_Connect()
  6082 ms  0x8f2 fd:0x7f18a2044e80
  6094 ms  0x8f2 PK11_Derive()
  6094 ms  0x8f2 basekey:0x7f18b738fd80
  6094 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6094 ms  0x8f2 ret:0x7f18a1f61300
  6094 ms  0x8f2 PK11_PubDeriveWithKDF()
  6094 ms  0x8f2 seckey:0x7f18a2c52020
  6094 ms     | 0x8f2 EC_ValidatePublicKey()
  6094 ms     | 0x8f2 ret:0x0
  6094 ms  0x8f2 ret:0x7f18b738fd80
  6094 ms  SECKEY_ECParamsToKeySize()
  6094 ms  0x8f2 ret:0xff
  6094 ms  0x8f2 PK11_DeriveWithFlags()
  6094 ms  0x8f2 basekey:0x7f18a1f61300
  6094 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6094 ms  0x8f2 ret:0x7f18a1f61380
  6095 ms  0x8f2 PK11_Derive()
  6095 ms  0x8f2 basekey:0x7f18b738fd80
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61400
  6095 ms  0x8f2 PK11_DeriveWithFlags()
  6095 ms  0x8f2 basekey:0x7f18a1f61400
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61300
  6095 ms  0x8f2 PK11_DeriveWithFlags()
  6095 ms  0x8f2 basekey:0x7f18a1f61400
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18b738fd80
  6095 ms  0x8f2 PK11_DeriveWithFlags()
  6095 ms  0x8f2 basekey:0x7f18a1f61400
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61380
  6095 ms  0x8f2 PK11_Derive()
  6095 ms  0x8f2 basekey:0x7f18a1f61480
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61500
  6095 ms  0x8f2 PK11_DeriveWithFlags()
  6095 ms  0x8f2 basekey:0x7f18b738fd80
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61400
  6095 ms  0x8f2 PK11_DeriveWithFlags()
  6095 ms  0x8f2 basekey:0x7f18b738fd80
  6095 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6095 ms  0x8f2 ret:0x7f18a1f61380
  6096 ms  SECKEY_ECParamsToKeySize()
  6096 ms  0x8f2 ret:0x100
  6096 ms  SECKEY_ECParamsToBasePointOrderLen()
  6096 ms  0x8f2 ret:0x100
  6096 ms  SECKEY_ECParamsToBasePointOrderLen()
  6096 ms  0x8f2 ret:0x100
  6096 ms  0x8f2 EC_ValidatePublicKey()
  6098 ms  0x8f2 ret:0x0
  6100 ms  0x8f2 PK11_DeriveWithFlags()
  6100 ms  0x8f2 basekey:0x7f18b738fd80
  6101 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6101 ms  0x8f2 ret:0x7f18a1f61380
  6102 ms  0x8f2 PK11_Derive()
  6102 ms  0x8f2 basekey:0x7f18a30a8c80
  6102 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6102 ms  0x8f2 ret:0x7f18a1f61380
  6102 ms  0x8f2 PK11_PubDeriveWithKDF()
  6102 ms  0x8f2 seckey:0x7f18a2d3c820
  6102 ms     | 0x8f2 EC_ValidatePublicKey()
  6103 ms     | 0x8f2 ret:0x0
  6105 ms  0x8f2 ret:0x7f18a30a8c80
  6105 ms  SECKEY_ECParamsToKeySize()
  6105 ms  0x8f2 ret:0x100
  6105 ms  0x8f2 PK11_DeriveWithFlags()
  6105 ms  0x8f2 basekey:0x7f18a1f61380
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6105 ms  0x8f2 ret:0x7f18a1f61480
  6105 ms  0x8f2 PK11_Derive()
  6105 ms  0x8f2 basekey:0x7f18a30a8c80
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6105 ms  0x8f2 ret:0x7f18a1f61800
  6105 ms  0x8f2 PK11_DeriveWithFlags()
  6105 ms  0x8f2 basekey:0x7f18a1f61800
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6105 ms  0x8f2 ret:0x7f18a1f61380
  6105 ms  0x8f2 PK11_DeriveWithFlags()
  6105 ms  0x8f2 basekey:0x7f18a1f61800
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6105 ms  0x8f2 ret:0x7f18a30a8c80
  6105 ms  0x8f2 PK11_DeriveWithFlags()
  6105 ms  0x8f2 basekey:0x7f18a1f61800
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6105 ms  0x8f2 ret:0x7f18a1f61480
  6105 ms  0x8f2 PK11_Derive()
  6105 ms  0x8f2 basekey:0x7f18a1f61880
  6105 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6106 ms  0x8f2 ret:0x7f18a1f61900
  6106 ms  0x8f2 PK11_DeriveWithFlags()
  6106 ms  0x8f2 basekey:0x7f18a30a8c80
  6106 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6106 ms  0x8f2 ret:0x7f18a1f61800
  6106 ms  0x8f2 PK11_DeriveWithFlags()
  6106 ms  0x8f2 basekey:0x7f18a30a8c80
  6106 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6106 ms  0x8f2 ret:0x7f18a1f61480
           /* TID 0x96c */
  6106 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6106 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  6107 ms  0x8f2 PK11_DeriveWithFlags()
  6107 ms  0x8f2 basekey:0x7f18a30a8c80
  6107 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6107 ms  0x8f2 ret:0x7f18a1f61480
  6107 ms  0x8f2 PK11_Derive()
  6107 ms  0x8f2 basekey:0x7f18a2cfb980
  6107 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6107 ms  0x8f2 ret:0x7f18a1f61480
  6107 ms  0x8f2 PK11_PubDeriveWithKDF()
  6107 ms  0x8f2 seckey:0x7f18a3080020
  6107 ms     | 0x8f2 EC_ValidatePublicKey()
  6109 ms     | 0x8f2 ret:0x0
  6111 ms  0x8f2 ret:0x7f18a2cfb980
  6111 ms  SECKEY_ECParamsToKeySize()
  6111 ms  0x8f2 ret:0x100
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a1f61480
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61880
  6111 ms  0x8f2 PK11_Derive()
  6111 ms  0x8f2 basekey:0x7f18a2cfb980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61980
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a1f61980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61480
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a1f61980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a2cfb980
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a1f61980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61880
  6111 ms  0x8f2 PK11_Derive()
  6111 ms  0x8f2 basekey:0x7f18a1f61a00
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61a80
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a2cfb980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61980
  6111 ms  0x8f2 PK11_DeriveWithFlags()
  6111 ms  0x8f2 basekey:0x7f18a2cfb980
  6111 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6111 ms  0x8f2 ret:0x7f18a1f61880
           /* TID 0x96c */
  6112 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6112 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  6112 ms  0x8f2 PK11_DeriveWithFlags()
  6112 ms  0x8f2 basekey:0x7f18a2cfb980
  6112 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms  0x8f2 ret:0x7f18a1f61880
  6112 ms  0x8f2 SSL_AuthCertificateComplete()
  6112 ms  0x8f2 fd:0x7f18a2044a90
  6112 ms  0x8f2 err:0x0
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61900
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61880
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61900
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61a00
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61900
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61b00
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61380
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61b80
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61380
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61c00
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61a00
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61c00
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61a00
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61c80
  6112 ms     | 0x8f2 PK11_DeriveWithFlags()
  6112 ms     | 0x8f2 basekey:0x7f18a1f61380
  6112 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6112 ms     | 0x8f2 ret:0x7f18a1f61800
  6112 ms     | 0x8f2 PK11_Encrypt()
  6112 ms     | 0x8f2 symkey:0x7f18a1f61b80
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61880
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61800
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61880
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61c80
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61900
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61b80
  6113 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6113 ms     | 0x8f2 privk:0x7f18a2d3c820::7f18a2d3c820  00 56 02 b5                                      .V..
  6113 ms     | 0x8f2 privk:0x7f18a2d3c820::7f18a2d3c820  e5 e5 e5 e5                                      ....
  6113 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6113 ms     | 0x8f2 privk:0x7f18a2d35020::7f18a2d35020  f0 9b 2d a3                                      ..-.
  6113 ms     | 0x8f2 privk:0x7f18a2d35020::7f18a2d35020  e5 e5 e5 e5                                      ....
  6113 ms  0x8f2 SSL_AuthCertificateComplete()
  6113 ms  0x8f2 fd:0x7f18a2044eb0
  6113 ms  0x8f2 err:0x0
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61a80
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a30a8c80
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61a80
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61380
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61a80
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61900
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61480
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61c80
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61480
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61d00
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61380
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61d00
  6113 ms     | 0x8f2 PK11_DeriveWithFlags()
  6113 ms     | 0x8f2 basekey:0x7f18a1f61380
  6113 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6113 ms     | 0x8f2 ret:0x7f18a1f61d80
  6114 ms     | 0x8f2 PK11_DeriveWithFlags()
  6114 ms     | 0x8f2 basekey:0x7f18a1f61480
  6114 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6114 ms     | 0x8f2 ret:0x7f18a1f61980
  6114 ms     | 0x8f2 PK11_Encrypt()
  6114 ms     | 0x8f2 symkey:0x7f18a1f61c80
  6114 ms     | 0x8f2 PK11_DeriveWithFlags()
  6114 ms     | 0x8f2 basekey:0x7f18a30a8c80
  6114 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6114 ms     | 0x8f2 ret:0x7f18a1f61980
  6114 ms     | 0x8f2 PK11_DeriveWithFlags()
  6114 ms     | 0x8f2 basekey:0x7f18a30a8c80
  6114 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6114 ms     | 0x8f2 ret:0x7f18a1f61d80
  6114 ms     | 0x8f2 PK11_DeriveWithFlags()
  6114 ms     | 0x8f2 basekey:0x7f18a1f61a80
  6114 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6114 ms     | 0x8f2 ret:0x7f18a1f61c80
  6114 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6114 ms     | 0x8f2 privk:0x7f18a3080020::7f18a3080020  90 72 f4 a1                                      .r..
  6114 ms     | 0x8f2 privk:0x7f18a3080020::7f18a3080020  e5 e5 e5 e5                                      ....
  6114 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6114 ms     | 0x8f2 privk:0x7f18a307e020::7f18a307e020  b0 70 f4 a1                                      .p..
  6114 ms     | 0x8f2 privk:0x7f18a307e020::7f18a307e020  e5 e5 e5 e5                                      ....
  6114 ms  0x8f2 PK11_Encrypt()
  6114 ms  0x8f2 symkey:0x7f18a1f61800
  6117 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6117 ms  0x8f2 cx:0x7f18a3218e28
  6117 ms     | 0x8f2 EC_ValidatePublicKey()
  6117 ms     | 0x8f2 ret:0x0
  6117 ms  0x8f2 ret:0x7f18a1f77820::7f18a1f77820  50 71 f4 a1                                      Pq..
  6118 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6118 ms  0x8f2 cx:0x7f18a3218e28
  6118 ms     | 0x8f2 EC_ValidatePublicKey()
  6120 ms     | 0x8f2 ret:0x0
  6120 ms  0x8f2 ret:0x7f18a1f79820::7f18a1f79820  10 7a f4 a1                                      .z..
           /* TID 0x8fc */
  6130 ms  0x8fc PR_Close()
  6130 ms  0x8fc fd:0x7f18a2044430
           /* TID 0x975 */
  6130 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6130 ms  0x975 ret:0x0
           /* TID 0x8fc */
  6131 ms  0x8fc PR_Close()
  6131 ms  0x8fc fd:0x7f18a2cf1790
           /* TID 0x8f2 */
  6131 ms  0x8f2 SSL_AuthCertificateComplete()
  6131 ms  0x8f2 fd:0x7f18a2044760
  6131 ms  0x8f2 err:0x0
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61500
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a2cfb980
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61500
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61480
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61500
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61a80
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61300
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61d80
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61300
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61600
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61480
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61600
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61480
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61700
  6131 ms     | 0x8f2 PK11_DeriveWithFlags()
  6131 ms     | 0x8f2 basekey:0x7f18a1f61300
  6131 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6131 ms     | 0x8f2 ret:0x7f18a1f61400
  6131 ms     | 0x8f2 PK11_Encrypt()
  6131 ms     | 0x8f2 symkey:0x7f18a1f61d80
  6132 ms     | 0x8f2 PK11_DeriveWithFlags()
  6132 ms     | 0x8f2 basekey:0x7f18a2cfb980
  6132 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6132 ms     | 0x8f2 ret:0x7f18a1f61400
  6132 ms     | 0x8f2 PK11_DeriveWithFlags()
  6132 ms     | 0x8f2 basekey:0x7f18a2cfb980
  6132 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6132 ms     | 0x8f2 ret:0x7f18a1f61700
  6132 ms     | 0x8f2 PK11_DeriveWithFlags()
  6132 ms     | 0x8f2 basekey:0x7f18a1f61500
  6132 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  6132 ms     | 0x8f2 ret:0x7f18a1f61d80
  6132 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6132 ms     | 0x8f2 privk:0x7f18a2d23820::7f18a2d23820  90 f7 d9 a2                                      ....
  6132 ms     | 0x8f2 privk:0x7f18a2d23820::7f18a2d23820  e5 e5 e5 e5                                      ....
  6132 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6132 ms     | 0x8f2 privk:0x7f18a2c52020::7f18a2c52020  a0 9b 0a a3                                      ....
  6132 ms     | 0x8f2 privk:0x7f18a2c52020::7f18a2c52020  e5 e5 e5 e5                                      ....
  6133 ms  0x8f2 PK11_Encrypt()
  6133 ms  0x8f2 symkey:0x7f18a1f61400
  6133 ms  0x8f2 PK11_Encrypt()
  6133 ms  0x8f2 symkey:0x7f18a1f61400
  6133 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6133 ms  0x8f2 cx:0x7f18a32197e8
  6134 ms     | 0x8f2 EC_ValidatePublicKey()
  6134 ms     | 0x8f2 ret:0x0
  6134 ms  0x8f2 ret:0x7f18a1f7d020::7f18a1f7d020  e0 77 f4 a1                                      .w..
  6134 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6134 ms  0x8f2 cx:0x7f18a32197e8
  6135 ms     | 0x8f2 EC_ValidatePublicKey()
  6137 ms     | 0x8f2 ret:0x0
  6137 ms  0x8f2 ret:0x7f18a1f7f020::7f18a1f7f020  f0 7b f4 a1                                      .{..
  6138 ms  0x8f2 PK11_DeriveWithFlags()
  6138 ms  0x8f2 basekey:0x7f18a1f61b80
  6138 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6138 ms  0x8f2 ret:0x7f18b738fd80
  6138 ms  0x8f2 PK11_DeriveWithFlags()
  6138 ms  0x8f2 basekey:0x7f18a1f61b80
  6138 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6138 ms  0x8f2 ret:0x7f18b738fd80
  6139 ms  0x8f2 PK11_DeriveWithFlags()
  6139 ms  0x8f2 basekey:0x7f18a1f61c80
  6139 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6139 ms  0x8f2 ret:0x7f18b738fd80
  6139 ms  0x8f2 PK11_DeriveWithFlags()
  6139 ms  0x8f2 basekey:0x7f18a1f61c80
  6139 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6139 ms  0x8f2 ret:0x7f18b738fd80
           /* TID 0x8fc */
  6164 ms  0x8fc PR_Close()
  6164 ms  0x8fc fd:0x7f18a20441f0
           /* TID 0x8f2 */
  6165 ms  0x8f2 PK11_Encrypt()
  6165 ms  0x8f2 symkey:0x7f18a30a8780
  6165 ms  0x8f2 PK11_Encrypt()
  6165 ms  0x8f2 symkey:0x7f18a30a8780
  6165 ms  0x8f2 SSL_ImportFD()
  6166 ms  0x8f2 ret:0x7f18a2cf1cd0
  6166 ms  0x8f2 SSL_AuthCertificateHook()
  6166 ms  0x8f2 fd:0x7f18a2cf1cd0
  6166 ms  0x8f2 ret:0x0
  6166 ms  0x8f2 PR_Connect()
  6166 ms  0x8f2 fd:0x7f18a2cf1cd0
           /* TID 0x8fc */
  6167 ms  0x8fc PR_Close()
  6167 ms  0x8fc fd:0x7f18a2cf1250
           /* TID 0x8f2 */
  6168 ms  0x8f2 PK11_DeriveWithFlags()
  6168 ms  0x8f2 basekey:0x7f18a1f61d80
  6168 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6168 ms  0x8f2 ret:0x7f18b738fd80
  6168 ms  0x8f2 PK11_Encrypt()
  6168 ms  0x8f2 symkey:0x7f18a1f61400
  6178 ms  0x8f2 SSL_ImportFD()
  6178 ms  0x8f2 ret:0x7f18b504e610
  6178 ms  0x8f2 SSL_AuthCertificateHook()
  6178 ms  0x8f2 fd:0x7f18b504e610
  6178 ms  0x8f2 ret:0x0
  6178 ms  0x8f2 PR_Connect()
  6178 ms  0x8f2 fd:0x7f18b504e610
  6182 ms  SECKEY_ECParamsToKeySize()
  6182 ms  0x8f2 ret:0x100
  6182 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6182 ms  0x8f2 cx:0x7f18a32197e8
  6183 ms     | 0x8f2 EC_ValidatePublicKey()
  6185 ms     | 0x8f2 ret:0x0
  6185 ms  0x8f2 ret:0x7f18a1f89020::7f18a1f89020  d0 f8 d9 a2                                      ....
  6185 ms  0x8f2 PK11_PubDeriveWithKDF()
  6185 ms  0x8f2 seckey:0x7f18a1f89020
  6185 ms     | 0x8f2 EC_ValidatePublicKey()
  6186 ms     | 0x8f2 ret:0x0
  6188 ms  0x8f2 ret:0x7f18b738fd80
  6188 ms  0x8f2 PK11_DeriveWithFlags()
  6188 ms  0x8f2 basekey:0x7f18b738fd80
  6188 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6188 ms  0x8f2 ret:0x7f18a1f61300
  6188 ms  0x8f2 PK11_Derive()
  6188 ms  0x8f2 basekey:0x7f18a1f61300
  6188 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6188 ms  0x8f2 ret:0x7f18a1f61500
  6188 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6188 ms  0x8f2 privk:0x7f18a1f89020::7f18a1f89020  d0 f8 d9 a2                                      ....
  6188 ms  0x8f2 privk:0x7f18a1f89020::7f18a1f89020  e5 e5 e5 e5                                      ....
  6188 ms  0x8f2 PK11_Encrypt()
  6188 ms  0x8f2 symkey:0x7f18a2cfa700
           /* TID 0x8fc */
  6208 ms  0x8fc PR_Close()
  6208 ms  0x8fc fd:0x7f18a1fbc130
  6212 ms  0x8fc PR_Close()
  6212 ms  0x8fc fd:0x7f18a1fbc130
           /* TID 0x8f2 */
  6220 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6220 ms  0x8f2 cx:0x7f18a1f04728
  6220 ms     | 0x8f2 EC_ValidatePublicKey()
  6220 ms     | 0x8f2 ret:0x0
  6220 ms  0x8f2 ret:0x7f18a1f8b020::7f18a1f8b020  10 ff d9 a2                                      ....
  6220 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6220 ms  0x8f2 cx:0x7f18a1f04728
  6221 ms     | 0x8f2 EC_ValidatePublicKey()
  6223 ms     | 0x8f2 ret:0x0
  6223 ms  0x8f2 ret:0x7f18a1f8d020::7f18a1f8d020  b0 a0 ef a2                                      ....
  6231 ms  0x8f2 PK11_Encrypt()
  6231 ms  0x8f2 symkey:0x7f18a1f61400
           /* TID 0x8fc */
  6232 ms  0x8fc PR_Close()
  6232 ms  0x8fc fd:0x7f18a1fbc730
           /* TID 0x96c */
  6232 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6233 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  6233 ms  0x8f2 SSL_AuthCertificateComplete()
  6233 ms  0x8f2 fd:0x7f18a2044e80
  6233 ms  0x8f2 err:0x0
  6233 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6233 ms     | 0x8f2 privk:0x7f18a1f7f020::7f18a1f7f020  f0 7b f4 a1                                      .{..
  6233 ms     | 0x8f2 privk:0x7f18a1f7f020::7f18a1f7f020  e5 e5 e5 e5                                      ....
  6233 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  6233 ms     | 0x8f2 privk:0x7f18a1f7d020::7f18a1f7d020  e0 77 f4 a1                                      .w..
  6233 ms     | 0x8f2 privk:0x7f18a1f7d020::7f18a1f7d020  e5 e5 e5 e5                                      ....
  6233 ms  0x8f2 PK11_Encrypt()
  6233 ms  0x8f2 symkey:0x7f18a2cfa700
  6235 ms  0x8f2 PK11_Encrypt()
  6235 ms  0x8f2 symkey:0x7f18a2cfa700
  6236 ms  0x8f2 PK11_Encrypt()
  6236 ms  0x8f2 symkey:0x7f18a2cfa700
  6237 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6237 ms  0x8f2 cx:0x7f18a1f04588
  6238 ms     | 0x8f2 EC_ValidatePublicKey()
  6238 ms     | 0x8f2 ret:0x0
  6238 ms  0x8f2 ret:0x7f18a1f7f020::7f18a1f7f020  b0 7a f4 a1                                      .z..
  6238 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6238 ms  0x8f2 cx:0x7f18a1f04588
  6239 ms     | 0x8f2 EC_ValidatePublicKey()
  6240 ms     | 0x8f2 ret:0x0
  6240 ms  0x8f2 ret:0x7f18a1f88820::7f18a1f88820  e0 f2 d9 a2                                      ....
           /* TID 0x8fc */
  6242 ms  0x8fc PR_Close()
  6242 ms  0x8fc fd:0x7f18a1fbc880
           /* TID 0x8f2 */
  6262 ms  SECKEY_ECParamsToKeySize()
  6262 ms  0x8f2 ret:0x100
  6262 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6262 ms  0x8f2 cx:0x7f18a3218e28
  6263 ms     | 0x8f2 EC_ValidatePublicKey()
  6264 ms     | 0x8f2 ret:0x0
  6264 ms  0x8f2 ret:0x7f18a2d3b020::7f18a2d3b020  30 3d 16 a3                                      0=..
  6264 ms  0x8f2 PK11_PubDeriveWithKDF()
  6264 ms  0x8f2 seckey:0x7f18a2d3b020
  6264 ms     | 0x8f2 EC_ValidatePublicKey()
  6270 ms     | 0x8f2 ret:0x0
  6272 ms  0x8f2 ret:0x7f18b738fd80
  6272 ms  0x8f2 PK11_DeriveWithFlags()
  6272 ms  0x8f2 basekey:0x7f18b738fd80
  6272 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6273 ms  0x8f2 ret:0x7f18a1f61700
  6273 ms  0x8f2 PK11_Derive()
  6273 ms  0x8f2 basekey:0x7f18a1f61700
  6273 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6273 ms  0x8f2 ret:0x7f18a1fff580
  6273 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6273 ms  0x8f2 privk:0x7f18a2d3b020::7f18a2d3b020  30 3d 16 a3                                      0=..
  6273 ms  0x8f2 privk:0x7f18a2d3b020::7f18a2d3b020  e5 e5 e5 e5                                      ....
  6273 ms  0x8f2 PK11_Encrypt()
  6273 ms  0x8f2 symkey:0x7f18a1fff700
  6276 ms  SECKEY_ECParamsToKeySize()
  6276 ms  0x8f2 ret:0x100
  6276 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6276 ms  0x8f2 cx:0x7f18a1f04728
  6276 ms     | 0x8f2 EC_ValidatePublicKey()
  6278 ms     | 0x8f2 ret:0x0
  6278 ms  0x8f2 ret:0x7f18a2eb3820::7f18a2eb3820  70 6e 2c a3                                      pn,.
  6278 ms  0x8f2 PK11_PubDeriveWithKDF()
  6278 ms  0x8f2 seckey:0x7f18a2eb3820
  6278 ms     | 0x8f2 EC_ValidatePublicKey()
  6279 ms     | 0x8f2 ret:0x0
  6283 ms  0x8f2 ret:0x7f18b738fd80
  6283 ms  0x8f2 PK11_DeriveWithFlags()
  6283 ms  0x8f2 basekey:0x7f18b738fd80
  6283 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6283 ms  0x8f2 ret:0x7f18a1fff900
  6283 ms  0x8f2 PK11_Derive()
  6283 ms  0x8f2 basekey:0x7f18a1fff900
  6283 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6283 ms  0x8f2 ret:0x7f18a1fff980
  6283 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6283 ms  0x8f2 privk:0x7f18a2eb3820::7f18a2eb3820  70 6e 2c a3                                      pn,.
  6283 ms  0x8f2 privk:0x7f18a2eb3820::7f18a2eb3820  e5 e5 e5 e5                                      ....
  6284 ms  0x8f2 PK11_Encrypt()
  6284 ms  0x8f2 symkey:0x7f18a1fffb00
  6284 ms  0x8f2 SSL_AuthCertificateComplete()
  6284 ms  0x8f2 fd:0x7f18b504e610
  6284 ms  0x8f2 err:0x0
  6285 ms  0x8f2 PK11_Encrypt()
  6285 ms  0x8f2 symkey:0x7f18a1fffb00
  6285 ms  0x8f2 PK11_Encrypt()
  6285 ms  0x8f2 symkey:0x7f18a2cfa700
           /* TID 0x96c */
  6314 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6315 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  6318 ms  0x8f2 PR_Connect()
  6318 ms  0x8f2 fd:0x7f18a309c790
  6325 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6325 ms  0x8f2 privk:0x7f18a1f8d020::7f18a1f8d020  b0 a0 ef a2                                      ....
  6325 ms  0x8f2 privk:0x7f18a1f8d020::7f18a1f8d020  e5 e5 e5 e5                                      ....
  6325 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6325 ms  0x8f2 privk:0x7f18a1f8b020::7f18a1f8b020  10 ff d9 a2                                      ....
  6325 ms  0x8f2 privk:0x7f18a1f8b020::7f18a1f8b020  e5 e5 e5 e5                                      ....
  6325 ms  0x8f2 PR_Close()
  6325 ms  0x8f2 fd:0x7f18b504e610
  6325 ms     | 0x8f2 PK11_Encrypt()
  6325 ms     | 0x8f2 symkey:0x7f18a1fffb00
  6384 ms  SECKEY_ECParamsToKeySize()
  6384 ms  0x8f2 ret:0x100
  6384 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6384 ms  0x8f2 cx:0x7f18a1f04588
  6386 ms     | 0x8f2 EC_ValidatePublicKey()
  6390 ms     | 0x8f2 ret:0x0
  6390 ms  0x8f2 ret:0x7f18a1f8c820::7f18a1f8c820  80 fd 00 b4                                      ....
  6390 ms  0x8f2 PK11_PubDeriveWithKDF()
  6390 ms  0x8f2 seckey:0x7f18a1f8c820
  6390 ms     | 0x8f2 EC_ValidatePublicKey()
  6395 ms     | 0x8f2 ret:0x0
  6399 ms  0x8f2 ret:0x7f18a1fff980
  6399 ms  0x8f2 PK11_DeriveWithFlags()
  6399 ms  0x8f2 basekey:0x7f18a1fff980
  6399 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6402 ms  0x8f2 ret:0x7f18a1fff900
  6402 ms  0x8f2 PK11_Derive()
  6402 ms  0x8f2 basekey:0x7f18a1fff900
  6402 ms     | 0x8f2 PK11_DeriveWithTemplate()
  6402 ms  0x8f2 ret:0x7f18b738fd80
  6402 ms  0x8f2 SECKEY_DestroyPrivateKey()
  6402 ms  0x8f2 privk:0x7f18a1f8c820::7f18a1f8c820  80 fd 00 b4                                      ....
  6402 ms  0x8f2 privk:0x7f18a1f8c820::7f18a1f8c820  e5 e5 e5 e5                                      ....
  6403 ms  0x8f2 PK11_Encrypt()
  6403 ms  0x8f2 symkey:0x7f18a1fffa00
           /* TID 0x8fc */
  6406 ms  0x8fc PR_Close()
  6406 ms  0x8fc fd:0x7f18a1fbc430
           /* TID 0x8f2 */
  6422 ms  0x8f2 SSL_ImportFD()
  6422 ms  0x8f2 ret:0x7f18a1fbc490
  6422 ms  0x8f2 SSL_AuthCertificateHook()
  6422 ms  0x8f2 fd:0x7f18a1fbc490
  6422 ms  0x8f2 ret:0x0
  6422 ms  0x8f2 PR_Connect()
  6422 ms  0x8f2 fd:0x7f18a1fbc490
           /* TID 0x8fc */
  6437 ms  0x8fc PR_Close()
  6437 ms  0x8fc fd:0x7f18b4098100
  6437 ms  0x8fc PR_Close()
  6437 ms  0x8fc fd:0x7f18b4016f70
           /* TID 0x8f2 */
  6447 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6447 ms  0x8f2 cx:0x7f18a1f05aa8
  6448 ms     | 0x8f2 EC_ValidatePublicKey()
  6448 ms     | 0x8f2 ret:0x0
  6448 ms  0x8f2 ret:0x7f18a1f8c820::7f18a1f8c820  70 f9 00 b4                                      p...
  6448 ms  0x8f2 SECKEY_CreateECPrivateKey()
  6448 ms  0x8f2 cx:0x7f18a1f05aa8
  6449 ms     | 0x8f2 EC_ValidatePublicKey()
  6450 ms     | 0x8f2 ret:0x0
  6450 ms  0x8f2 ret:0x7f18a2c47020::7f18a2c47020  40 22 07 b4                                      @"..
  6469 ms  0x8f2 SSL_ImportFD()
  6469 ms  0x8f2 ret:0x7f18b4098190
  6469 ms  0x8f2 SSL_AuthCertificateHook()
  6469 ms  0x8f2 fd:0x7f18b4098190
  6469 ms  0x8f2 ret:0x0
  7470 ms  0x8f2 PK11_Encrypt()
  7470 ms  0x8f2 symkey:0x7f18a1f61400
  7471 ms  0x8f2 PR_Connect()
  7471 ms  0x8f2 fd:0x7f18b4098190
  7473 ms  0x8f2 PK11_Derive()
  7473 ms  0x8f2 basekey:0x7f18a1fff980
  7473 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7473 ms  0x8f2 ret:0x7f18a205b980
  7473 ms  0x8f2 PK11_PubDeriveWithKDF()
  7473 ms  0x8f2 seckey:0x7f18a2c47020
  7473 ms     | 0x8f2 EC_ValidatePublicKey()
  7482 ms     | 0x8f2 ret:0x0
  7486 ms  0x8f2 ret:0x7f18a1fff980
  7486 ms  SECKEY_ECParamsToKeySize()
  7486 ms  0x8f2 ret:0x100
  7486 ms  0x8f2 PK11_DeriveWithFlags()
  7486 ms  0x8f2 basekey:0x7f18a205b980
  7486 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7486 ms  0x8f2 ret:0x7f18a1f62e00
  7486 ms  0x8f2 PK11_Derive()
  7486 ms  0x8f2 basekey:0x7f18a1fff980
  7486 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7486 ms  0x8f2 ret:0x7f18a1fff080
  7486 ms  0x8f2 PK11_DeriveWithFlags()
  7486 ms  0x8f2 basekey:0x7f18a1fff080
  7486 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7486 ms  0x8f2 ret:0x7f18a205b980
  7486 ms  0x8f2 PK11_DeriveWithFlags()
  7486 ms  0x8f2 basekey:0x7f18a1fff080
  7486 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7486 ms  0x8f2 ret:0x7f18a1fff980
  7486 ms  0x8f2 PK11_DeriveWithFlags()
  7486 ms  0x8f2 basekey:0x7f18a1fff080
  7487 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7487 ms  0x8f2 ret:0x7f18a1f62e00
  7487 ms  0x8f2 PK11_Derive()
  7487 ms  0x8f2 basekey:0x7f18a205ba80
  7487 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7487 ms  0x8f2 ret:0x7f18a205bb00
  7487 ms  0x8f2 PK11_DeriveWithFlags()
  7487 ms  0x8f2 basekey:0x7f18a1fff980
  7487 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7487 ms  0x8f2 ret:0x7f18a1fff080
  7487 ms  0x8f2 PK11_DeriveWithFlags()
  7487 ms  0x8f2 basekey:0x7f18a1fff980
  7487 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7487 ms  0x8f2 ret:0x7f18a1f62e00
           /* TID 0x96c */
  7488 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7489 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  7489 ms  0x8f2 PK11_DeriveWithFlags()
  7489 ms  0x8f2 basekey:0x7f18a1fff980
  7489 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7489 ms  0x8f2 ret:0x7f18a1f62e00
  7490 ms  0x8f2 SSL_AuthCertificateComplete()
  7490 ms  0x8f2 fd:0x7f18a2cf1cd0
  7490 ms  0x8f2 err:0x0
  7490 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7490 ms     | 0x8f2 privk:0x7f18a1f88820::7f18a1f88820  e0 f2 d9 a2                                      ....
  7490 ms     | 0x8f2 privk:0x7f18a1f88820::7f18a1f88820  e5 e5 e5 e5                                      ....
  7490 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7490 ms     | 0x8f2 privk:0x7f18a1f7f020::7f18a1f7f020  b0 7a f4 a1                                      .z..
  7491 ms     | 0x8f2 privk:0x7f18a1f7f020::7f18a1f7f020  e5 e5 e5 e5                                      ....
  7491 ms  0x8f2 SSL_AuthCertificateComplete()
  7491 ms  0x8f2 fd:0x7f18a1fbc490
  7491 ms  0x8f2 err:0x0
  7491 ms     | 0x8f2 PK11_DeriveWithFlags()
  7491 ms     | 0x8f2 basekey:0x7f18a205bb00
  7491 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7491 ms     | 0x8f2 ret:0x7f18a1f62e00
  7491 ms     | 0x8f2 PK11_DeriveWithFlags()
  7491 ms     | 0x8f2 basekey:0x7f18a205bb00
  7491 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7491 ms     | 0x8f2 ret:0x7f18a205ba80
  7491 ms     | 0x8f2 PK11_DeriveWithFlags()
  7491 ms     | 0x8f2 basekey:0x7f18a205bb00
  7491 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7491 ms     | 0x8f2 ret:0x7f18a205bc00
  7491 ms     | 0x8f2 PK11_DeriveWithFlags()
  7491 ms     | 0x8f2 basekey:0x7f18a205b980
  7491 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7491 ms     | 0x8f2 ret:0x7f18a205bd00
  7491 ms     | 0x8f2 PK11_DeriveWithFlags()
  7491 ms     | 0x8f2 basekey:0x7f18a205b980
  7491 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7491 ms     | 0x8f2 ret:0x7f18a205be00
  7492 ms     | 0x8f2 PK11_DeriveWithFlags()
  7492 ms     | 0x8f2 basekey:0x7f18a205ba80
  7492 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7492 ms     | 0x8f2 ret:0x7f18a205be00
  7492 ms     | 0x8f2 PK11_DeriveWithFlags()
  7492 ms     | 0x8f2 basekey:0x7f18a205ba80
  7492 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7492 ms     | 0x8f2 ret:0x7f18a205be80
  7492 ms     | 0x8f2 PK11_DeriveWithFlags()
  7492 ms     | 0x8f2 basekey:0x7f18a205b980
  7492 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7492 ms     | 0x8f2 ret:0x7f18a1fff080
  7492 ms     | 0x8f2 PK11_Encrypt()
  7492 ms     | 0x8f2 symkey:0x7f18a205bd00
  7494 ms     | 0x8f2 PK11_DeriveWithFlags()
  7494 ms     | 0x8f2 basekey:0x7f18a1f62e00
  7494 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7495 ms     | 0x8f2 ret:0x7f18a1fff080
  7495 ms     | 0x8f2 PK11_DeriveWithFlags()
  7495 ms     | 0x8f2 basekey:0x7f18a1f62e00
  7495 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7495 ms     | 0x8f2 ret:0x7f18a205be80
  7495 ms     | 0x8f2 PK11_DeriveWithFlags()
  7495 ms     | 0x8f2 basekey:0x7f18a205bb00
  7495 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7495 ms     | 0x8f2 ret:0x7f18a205bd00
  7495 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7495 ms     | 0x8f2 privk:0x7f18a2c47020::7f18a2c47020  40 22 07 b4                                      @"..
  7495 ms     | 0x8f2 privk:0x7f18a2c47020::7f18a2c47020  e5 e5 e5 e5                                      ....
  7495 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7495 ms     | 0x8f2 privk:0x7f18a1f8c820::7f18a1f8c820  70 f9 00 b4                                      p...
  7495 ms     | 0x8f2 privk:0x7f18a1f8c820::7f18a1f8c820  e5 e5 e5 e5                                      ....
  7496 ms  0x8f2 PK11_Encrypt()
  7496 ms  0x8f2 symkey:0x7f18a1fffa00
  7497 ms  0x8f2 PK11_Encrypt()
  7497 ms  0x8f2 symkey:0x7f18a1fff080
  7497 ms  0x8f2 PK11_Encrypt()
  7497 ms  0x8f2 symkey:0x7f18a1fff080
  7498 ms  0x8f2 SSL_ImportFD()
  7498 ms  0x8f2 ret:0x7f18a305b160
  7498 ms  0x8f2 SSL_AuthCertificateHook()
  7498 ms  0x8f2 fd:0x7f18a305b160
  7498 ms  0x8f2 ret:0x0
  7499 ms  0x8f2 PR_Connect()
  7499 ms  0x8f2 fd:0x7f18a305b160
           /* TID 0x8fc */
  7517 ms  0x8fc PR_Close()
  7517 ms  0x8fc fd:0x7f18a2044490
           /* TID 0x8f2 */
  7517 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7517 ms  0x8f2 cx:0x7f18a1f05c48
  7529 ms     | 0x8f2 EC_ValidatePublicKey()
  7530 ms     | 0x8f2 ret:0x0
  7530 ms  0x8f2 ret:0x7f18a1f8b820::7f18a1f8b820  20 7e f4 a1                                       ~..
  7530 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7530 ms  0x8f2 cx:0x7f18a1f05c48
  7530 ms     | 0x8f2 EC_ValidatePublicKey()
  7532 ms     | 0x8f2 ret:0x0
  7532 ms  0x8f2 ret:0x7f18a1f8e020::7f18a1f8e020  30 c3 e1 a2                                      0...
  7533 ms  0x8f2 PK11_DeriveWithFlags()
  7533 ms  0x8f2 basekey:0x7f18a205bd00
  7533 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7533 ms  0x8f2 ret:0x7f18a1fff980
  7533 ms  0x8f2 PK11_DeriveWithFlags()
  7533 ms  0x8f2 basekey:0x7f18a205bd00
  7533 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7533 ms  0x8f2 ret:0x7f18a1fff980
  7533 ms  0x8f2 PK11_Encrypt()
  7533 ms  0x8f2 symkey:0x7f18a1fff080
  7535 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7535 ms  0x8f2 cx:0x7f18a1f05f88
  7535 ms     | 0x8f2 EC_ValidatePublicKey()
  7535 ms     | 0x8f2 ret:0x0
  7535 ms  0x8f2 ret:0x7f18a2c47020::7f18a2c47020  60 4f 21 a3                                      `O!.
  7535 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7535 ms  0x8f2 cx:0x7f18a1f05f88
  7536 ms     | 0x8f2 EC_ValidatePublicKey()
  7538 ms     | 0x8f2 ret:0x0
  7538 ms  0x8f2 ret:0x7f18a2c53020::7f18a2c53020  e0 97 2d a3                                      ..-.
           /* TID 0x8fc */
  7544 ms  0x8fc PR_Close()
  7544 ms  0x8fc fd:0x7f18a2044a60
           /* TID 0x8f2 */
  7555 ms  0x8f2 SSL_ImportFD()
  7555 ms  0x8f2 ret:0x7f18a31eee20
  7555 ms  0x8f2 SSL_AuthCertificateHook()
  7555 ms  0x8f2 fd:0x7f18a31eee20
  7555 ms  0x8f2 ret:0x0
  7556 ms  0x8f2 PK11_Encrypt()
  7556 ms  0x8f2 symkey:0x7f18a1fff080
  7556 ms  0x8f2 PR_Connect()
  7556 ms  0x8f2 fd:0x7f18a31eee20
  7557 ms  0x8f2 PK11_Encrypt()
  7557 ms  0x8f2 symkey:0x7f18a1fff080
  7558 ms  0x8f2 PK11_Encrypt()
  7558 ms  0x8f2 symkey:0x7f18a1fff080
  7560 ms  0x8f2 PK11_Encrypt()
  7560 ms  0x8f2 symkey:0x7f18a1fff080
  7561 ms  0x8f2 PK11_Encrypt()
  7561 ms  0x8f2 symkey:0x7f18a1fff080
  7562 ms  0x8f2 PK11_Encrypt()
  7562 ms  0x8f2 symkey:0x7f18a1fff080
  7565 ms  0x8f2 PK11_Encrypt()
  7565 ms  0x8f2 symkey:0x7f18a1fff080
  7570 ms  0x8f2 PK11_Derive()
  7570 ms  0x8f2 basekey:0x7f18a1fff980
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205b980
  7570 ms  0x8f2 PK11_PubDeriveWithKDF()
  7570 ms  0x8f2 seckey:0x7f18a1f8b820
  7570 ms     | 0x8f2 EC_ValidatePublicKey()
  7570 ms     | 0x8f2 ret:0x0
  7570 ms  0x8f2 ret:0x7f18a1fff980
  7570 ms  SECKEY_ECParamsToKeySize()
  7570 ms  0x8f2 ret:0xff
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a205b980
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205bb00
  7570 ms  0x8f2 PK11_Derive()
  7570 ms  0x8f2 basekey:0x7f18a1fff980
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205be80
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a205be80
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205b980
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a205be80
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a1fff980
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a205be80
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205bb00
  7570 ms  0x8f2 PK11_Derive()
  7570 ms  0x8f2 basekey:0x7f18a2e25200
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a2e93380
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a1fff980
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205be80
  7570 ms  0x8f2 PK11_DeriveWithFlags()
  7570 ms  0x8f2 basekey:0x7f18a1fff980
  7570 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7570 ms  0x8f2 ret:0x7f18a205bb00
  7571 ms  SECKEY_ECParamsToKeySize()
  7571 ms  0x8f2 ret:0x100
  7571 ms  SECKEY_ECParamsToBasePointOrderLen()
  7571 ms  0x8f2 ret:0x100
  7571 ms  SECKEY_ECParamsToBasePointOrderLen()
  7571 ms  0x8f2 ret:0x100
  7571 ms  0x8f2 EC_ValidatePublicKey()
  7573 ms  0x8f2 ret:0x0
  7575 ms  0x8f2 PK11_DeriveWithFlags()
  7575 ms  0x8f2 basekey:0x7f18a1fff980
  7575 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7575 ms  0x8f2 ret:0x7f18a205bb00
  7575 ms  0x8f2 SSL_AuthCertificateComplete()
  7575 ms  0x8f2 fd:0x7f18b4098190
  7575 ms  0x8f2 err:0x0
  7575 ms     | 0x8f2 PK11_DeriveWithFlags()
  7575 ms     | 0x8f2 basekey:0x7f18a2e93380
  7575 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7575 ms     | 0x8f2 ret:0x7f18a205bb00
  7575 ms     | 0x8f2 PK11_DeriveWithFlags()
  7575 ms     | 0x8f2 basekey:0x7f18a2e93380
  7575 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7575 ms     | 0x8f2 ret:0x7f18a2e25200
  7575 ms     | 0x8f2 PK11_DeriveWithFlags()
  7575 ms     | 0x8f2 basekey:0x7f18a2e93380
  7575 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7575 ms     | 0x8f2 ret:0x7f18a301ce00
  7575 ms     | 0x8f2 PK11_DeriveWithFlags()
  7575 ms     | 0x8f2 basekey:0x7f18a205b980
  7575 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7575 ms     | 0x8f2 ret:0x7f18a301cf00
  7575 ms     | 0x8f2 PK11_DeriveWithFlags()
  7575 ms     | 0x8f2 basekey:0x7f18a205b980
  7575 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a301cf80
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a2e25200
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a301cf80
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a2e25200
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a301d100
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a205b980
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a205be80
  7576 ms     | 0x8f2 PK11_Encrypt()
  7576 ms     | 0x8f2 symkey:0x7f18a301cf00
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a205bb00
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a205be80
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a205bb00
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a301d100
  7576 ms     | 0x8f2 PK11_DeriveWithFlags()
  7576 ms     | 0x8f2 basekey:0x7f18a2e93380
  7576 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7576 ms     | 0x8f2 ret:0x7f18a301cf00
  7576 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7576 ms     | 0x8f2 privk:0x7f18a1f8e020::7f18a1f8e020  30 c3 e1 a2                                      0...
  7576 ms     | 0x8f2 privk:0x7f18a1f8e020::7f18a1f8e020  e5 e5 e5 e5                                      ....
  7576 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7576 ms     | 0x8f2 privk:0x7f18a1f8b820::7f18a1f8b820  20 7e f4 a1                                       ~..
  7576 ms     | 0x8f2 privk:0x7f18a1f8b820::7f18a1f8b820  e5 e5 e5 e5                                      ....
  7580 ms  0x8f2 PK11_Encrypt()
  7580 ms  0x8f2 symkey:0x7f18a205be80
  7585 ms  0x8f2 PK11_Derive()
  7585 ms  0x8f2 basekey:0x7f18a1fff980
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a205b980
  7585 ms  0x8f2 PK11_PubDeriveWithKDF()
  7585 ms  0x8f2 seckey:0x7f18a2c47020
  7585 ms     | 0x8f2 EC_ValidatePublicKey()
  7585 ms     | 0x8f2 ret:0x0
  7585 ms  0x8f2 ret:0x7f18a1fff980
  7585 ms  SECKEY_ECParamsToKeySize()
  7585 ms  0x8f2 ret:0xff
  7585 ms  0x8f2 PK11_DeriveWithFlags()
  7585 ms  0x8f2 basekey:0x7f18a205b980
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a2e93380
  7585 ms  0x8f2 PK11_Derive()
  7585 ms  0x8f2 basekey:0x7f18a1fff980
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a301d100
  7585 ms  0x8f2 PK11_DeriveWithFlags()
  7585 ms  0x8f2 basekey:0x7f18a301d100
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a205b980
  7585 ms  0x8f2 PK11_DeriveWithFlags()
  7585 ms  0x8f2 basekey:0x7f18a301d100
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a1fff980
  7585 ms  0x8f2 PK11_DeriveWithFlags()
  7585 ms  0x8f2 basekey:0x7f18a301d100
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a2e93380
  7585 ms  0x8f2 PK11_Derive()
  7585 ms  0x8f2 basekey:0x7f18a2e9dd00
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7585 ms  0x8f2 ret:0x7f18a301c100
  7585 ms  0x8f2 PK11_DeriveWithFlags()
  7585 ms  0x8f2 basekey:0x7f18a1fff980
  7585 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7586 ms  0x8f2 ret:0x7f18a301d100
  7586 ms  0x8f2 PK11_DeriveWithFlags()
  7586 ms  0x8f2 basekey:0x7f18a1fff980
  7586 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7586 ms  0x8f2 ret:0x7f18a2e93380
  7586 ms  SECKEY_ECParamsToKeySize()
  7586 ms  0x8f2 ret:0x100
  7586 ms  SECKEY_ECParamsToBasePointOrderLen()
  7586 ms  0x8f2 ret:0x100
  7586 ms  SECKEY_ECParamsToBasePointOrderLen()
  7586 ms  0x8f2 ret:0x100
  7586 ms  0x8f2 EC_ValidatePublicKey()
  7588 ms  0x8f2 ret:0x0
  7590 ms  0x8f2 PK11_DeriveWithFlags()
  7590 ms  0x8f2 basekey:0x7f18a1fff980
  7590 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7590 ms  0x8f2 ret:0x7f18a2e93380
  7590 ms  0x8f2 PK11_Encrypt()
  7590 ms  0x8f2 symkey:0x7f18a1fff080
  7591 ms  0x8f2 PK11_Encrypt()
  7591 ms  0x8f2 symkey:0x7f18a1fff080
  7591 ms  0x8f2 PK11_Encrypt()
  7591 ms  0x8f2 symkey:0x7f18a1fffa00
  7591 ms  0x8f2 SSL_AuthCertificateComplete()
  7591 ms  0x8f2 fd:0x7f18a305b160
  7591 ms  0x8f2 err:0x0
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a301c100
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a2e93380
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a301c100
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a2e9dd00
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a301c100
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a1f62b00
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a205b980
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a301c200
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a205b980
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a301c380
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a2e9dd00
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a301c380
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a2e9dd00
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a301c900
  7591 ms     | 0x8f2 PK11_DeriveWithFlags()
  7591 ms     | 0x8f2 basekey:0x7f18a205b980
  7591 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7591 ms     | 0x8f2 ret:0x7f18a301d100
  7591 ms     | 0x8f2 PK11_Encrypt()
  7591 ms     | 0x8f2 symkey:0x7f18a301c200
  7592 ms     | 0x8f2 PK11_DeriveWithFlags()
  7592 ms     | 0x8f2 basekey:0x7f18a2e93380
  7592 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7592 ms     | 0x8f2 ret:0x7f18a301d100
  7592 ms     | 0x8f2 PK11_DeriveWithFlags()
  7592 ms     | 0x8f2 basekey:0x7f18a2e93380
  7592 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7592 ms     | 0x8f2 ret:0x7f18a301c900
  7592 ms     | 0x8f2 PK11_DeriveWithFlags()
  7592 ms     | 0x8f2 basekey:0x7f18a301c100
  7592 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7592 ms     | 0x8f2 ret:0x7f18a301c200
  7592 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7592 ms     | 0x8f2 privk:0x7f18a2c53020::7f18a2c53020  e0 97 2d a3                                      ..-.
  7592 ms     | 0x8f2 privk:0x7f18a2c53020::7f18a2c53020  e5 e5 e5 e5                                      ....
  7592 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7592 ms     | 0x8f2 privk:0x7f18a2c47020::7f18a2c47020  60 4f 21 a3                                      `O!.
  7592 ms     | 0x8f2 privk:0x7f18a2c47020::7f18a2c47020  e5 e5 e5 e5                                      ....
  7592 ms  0x8f2 PK11_Encrypt()
  7592 ms  0x8f2 symkey:0x7f18a1fff080
  7593 ms  0x8f2 PK11_Encrypt()
  7593 ms  0x8f2 symkey:0x7f18a301d100
  7593 ms  0x8f2 PK11_Encrypt()
  7593 ms  0x8f2 symkey:0x7f18a301d100
  7593 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7593 ms  0x8f2 cx:0x7f18a1f05de8
  7594 ms     | 0x8f2 EC_ValidatePublicKey()
  7594 ms     | 0x8f2 ret:0x0
  7594 ms  0x8f2 ret:0x7f18a2c53020::7f18a2c53020  80 48 21 a3                                      .H!.
  7594 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7594 ms  0x8f2 cx:0x7f18a1f05de8
  7594 ms     | 0x8f2 EC_ValidatePublicKey()
  7596 ms     | 0x8f2 ret:0x0
  7596 ms  0x8f2 ret:0x7f18a2ea4020::7f18a2ea4020  90 97 2d a3                                      ..-.
  7612 ms  0x8f2 PK11_DeriveWithFlags()
  7612 ms  0x8f2 basekey:0x7f18a301cf00
  7613 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7613 ms  0x8f2 ret:0x7f18a1fff980
  7613 ms  0x8f2 PR_Close()
  7613 ms  0x8f2 fd:0x7f18b4098190
  7613 ms     | 0x8f2 PK11_Encrypt()
  7613 ms     | 0x8f2 symkey:0x7f18a205be80
  7624 ms  0x8f2 PK11_Derive()
  7624 ms  0x8f2 basekey:0x7f18a301ce00
  7624 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7624 ms  0x8f2 ret:0x7f18a2e25200
  7624 ms  0x8f2 PK11_PubDeriveWithKDF()
  7624 ms  0x8f2 seckey:0x7f18a2ea4020
  7624 ms     | 0x8f2 EC_ValidatePublicKey()
  7627 ms     | 0x8f2 ret:0x0
  7629 ms  0x8f2 ret:0x7f18a301ce00
  7629 ms  SECKEY_ECParamsToKeySize()
  7629 ms  0x8f2 ret:0x100
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a2e25200
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a205bb00
  7629 ms  0x8f2 PK11_Derive()
  7629 ms  0x8f2 basekey:0x7f18a301ce00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a301cf00
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a301cf00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a2e25200
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a301cf00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a301ce00
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a301cf00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a205bb00
  7629 ms  0x8f2 PK11_Derive()
  7629 ms  0x8f2 basekey:0x7f18a301cf80
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a205be80
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a301ce00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a301cf00
  7629 ms  0x8f2 PK11_DeriveWithFlags()
  7629 ms  0x8f2 basekey:0x7f18a301ce00
  7629 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7629 ms  0x8f2 ret:0x7f18a205bb00
           /* TID 0x96c */
  7630 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7630 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  7630 ms  0x8f2 PK11_DeriveWithFlags()
  7630 ms  0x8f2 basekey:0x7f18a301ce00
  7630 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms  0x8f2 ret:0x7f18a205bb00
  7630 ms  0x8f2 SSL_AuthCertificateComplete()
  7630 ms  0x8f2 fd:0x7f18a31eee20
  7630 ms  0x8f2 err:0x0
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a205be80
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a205bb00
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a205be80
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a301cf80
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a205be80
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a1fff980
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a2e25200
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a205b980
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a2e25200
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a301c100
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a301cf80
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a301c100
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a301cf80
  7630 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7630 ms     | 0x8f2 ret:0x7f18a301c900
  7630 ms     | 0x8f2 PK11_DeriveWithFlags()
  7630 ms     | 0x8f2 basekey:0x7f18a2e25200
  7631 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7631 ms     | 0x8f2 ret:0x7f18a301cf00
  7631 ms     | 0x8f2 PK11_Encrypt()
  7631 ms     | 0x8f2 symkey:0x7f18a205b980
  7631 ms     | 0x8f2 PK11_DeriveWithFlags()
  7631 ms     | 0x8f2 basekey:0x7f18a205bb00
  7631 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7631 ms     | 0x8f2 ret:0x7f18a301cf00
  7631 ms     | 0x8f2 PK11_DeriveWithFlags()
  7631 ms     | 0x8f2 basekey:0x7f18a205bb00
  7631 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7631 ms     | 0x8f2 ret:0x7f18a301c900
  7631 ms     | 0x8f2 PK11_DeriveWithFlags()
  7631 ms     | 0x8f2 basekey:0x7f18a205be80
  7631 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7631 ms     | 0x8f2 ret:0x7f18a205b980
  7631 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7631 ms     | 0x8f2 privk:0x7f18a2ea4020::7f18a2ea4020  90 97 2d a3                                      ..-.
  7631 ms     | 0x8f2 privk:0x7f18a2ea4020::7f18a2ea4020  e5 e5 e5 e5                                      ....
  7631 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7631 ms     | 0x8f2 privk:0x7f18a2c53020::7f18a2c53020  80 48 21 a3                                      .H!.
  7631 ms     | 0x8f2 privk:0x7f18a2c53020::7f18a2c53020  e5 e5 e5 e5                                      ....
  7631 ms  0x8f2 PK11_Encrypt()
  7631 ms  0x8f2 symkey:0x7f18a301cf00
  7632 ms  0x8f2 PK11_DeriveWithFlags()
  7632 ms  0x8f2 basekey:0x7f18a301c200
  7632 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7632 ms  0x8f2 ret:0x7f18a301ce00
  7632 ms  0x8f2 PK11_Encrypt()
  7632 ms  0x8f2 symkey:0x7f18a301d100
           /* TID 0x8fc */
  7644 ms  0x8fc PR_Close()
  7644 ms  0x8fc fd:0x7f18a31ee3d0
  7645 ms  0x8fc PR_Close()
  7645 ms  0x8fc fd:0x7f18a2044a60
  7646 ms  0x8fc PR_Close()
  7646 ms  0x8fc fd:0x7f18a2044a60
  7647 ms  0x8fc PR_Close()
  7647 ms  0x8fc fd:0x7f18a2044a60
  7649 ms  0x8fc PR_Close()
  7649 ms  0x8fc fd:0x7f18a2044a60
  7650 ms  0x8fc PR_Close()
  7650 ms  0x8fc fd:0x7f18a2044a60
  7651 ms  0x8fc PR_Close()
  7651 ms  0x8fc fd:0x7f18a2044a60
  7652 ms  0x8fc PR_Close()
  7652 ms  0x8fc fd:0x7f18a2044a60
  7653 ms  0x8fc PR_Close()
  7653 ms  0x8fc fd:0x7f18a2044a60
  7654 ms  0x8fc PR_Close()
  7654 ms  0x8fc fd:0x7f18a1fbc130
           /* TID 0x8f2 */
  7656 ms  0x8f2 PK11_DeriveWithFlags()
  7656 ms  0x8f2 basekey:0x7f18a205b980
  7656 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7656 ms  0x8f2 ret:0x7f18a301ce00
  7656 ms  0x8f2 PK11_DeriveWithFlags()
  7656 ms  0x8f2 basekey:0x7f18a205b980
  7656 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7656 ms  0x8f2 ret:0x7f18a301ce00
  7656 ms  0x8f2 PR_Close()
  7656 ms  0x8f2 fd:0x7f18a31eee20
  7656 ms     | 0x8f2 PK11_Encrypt()
  7656 ms     | 0x8f2 symkey:0x7f18a301cf00
  7672 ms  0x8f2 PR_Close()
  7672 ms  0x8f2 fd:0x7f18a309c790
           /* TID 0x8fc */
  7672 ms  0x8fc PR_Close()
  7672 ms  0x8fc fd:0x7f18a1fbcc10
           /* TID 0x975 */
  7673 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7673 ms  0x975 ret:0x0
  7673 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7673 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  7681 ms  0x8f2 SSL_AuthCertificateComplete()
  7681 ms  0x8f2 fd:0x7f18a2044580
  7681 ms  0x8f2 err:0x0
  7681 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7681 ms     | 0x8f2 privk:0x7f18a1f79820::7f18a1f79820  10 7a f4 a1                                      .z..
  7681 ms     | 0x8f2 privk:0x7f18a1f79820::7f18a1f79820  e5 e5 e5 e5                                      ....
  7681 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7681 ms     | 0x8f2 privk:0x7f18a1f77820::7f18a1f77820  50 71 f4 a1                                      Pq..
  7681 ms     | 0x8f2 privk:0x7f18a1f77820::7f18a1f77820  e5 e5 e5 e5                                      ....
  7681 ms  0x8f2 PK11_Encrypt()
  7681 ms  0x8f2 symkey:0x7f18a1fff700
  7681 ms  0x8f2 PK11_Encrypt()
  7681 ms  0x8f2 symkey:0x7f18a1fff700
  7682 ms  0x8f2 PK11_Encrypt()
  7682 ms  0x8f2 symkey:0x7f18a1fff700
  7759 ms  0x8f2 PK11_Encrypt()
  7759 ms  0x8f2 symkey:0x7f18a301d100
  7766 ms  0x8f2 PK11_Encrypt()
  7766 ms  0x8f2 symkey:0x7f18a301d100
  7767 ms  0x8f2 PK11_Encrypt()
  7767 ms  0x8f2 symkey:0x7f18a301d100
  7772 ms  0x8f2 PK11_Encrypt()
  7772 ms  0x8f2 symkey:0x7f18a301d100
  7773 ms  0x8f2 PK11_Encrypt()
  7773 ms  0x8f2 symkey:0x7f18a301d100
  7775 ms  0x8f2 PK11_Encrypt()
  7775 ms  0x8f2 symkey:0x7f18a301d100
  7777 ms  0x8f2 SSL_ImportFD()
  7777 ms  0x8f2 ret:0x7f18b4016ca0
  7777 ms  0x8f2 SSL_AuthCertificateHook()
  7777 ms  0x8f2 fd:0x7f18b4016ca0
  7777 ms  0x8f2 ret:0x0
  7778 ms  0x8f2 PK11_Encrypt()
  7778 ms  0x8f2 symkey:0x7f18a1f61400
  7778 ms  0x8f2 PR_Connect()
  7778 ms  0x8f2 fd:0x7f18b4016ca0
  7779 ms  0x8f2 PK11_Encrypt()
  7779 ms  0x8f2 symkey:0x7f18a1f61400
  7779 ms  0x8f2 PK11_Encrypt()
  7779 ms  0x8f2 symkey:0x7f18a301d100
  7779 ms  0x8f2 PK11_Encrypt()
  7779 ms  0x8f2 symkey:0x7f18a301d100
  7780 ms  0x8f2 PK11_Encrypt()
  7780 ms  0x8f2 symkey:0x7f18a301d100
  7780 ms  0x8f2 PK11_Encrypt()
  7780 ms  0x8f2 symkey:0x7f18a301d100
  7780 ms  0x8f2 PK11_Encrypt()
  7780 ms  0x8f2 symkey:0x7f18a301d100
           /* TID 0x8fc */
  7809 ms  0x8fc PR_Close()
  7809 ms  0x8fc fd:0x7f18a31ee6d0
           /* TID 0x8f2 */
  7816 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7816 ms  0x8f2 cx:0x7f18a1f05c48
  7817 ms     | 0x8f2 EC_ValidatePublicKey()
  7818 ms     | 0x8f2 ret:0x0
  7818 ms  0x8f2 ret:0x7f18a2c4f020::7f18a2c4f020  50 91 0a a3                                      P...
  7818 ms  0x8f2 SECKEY_CreateECPrivateKey()
  7818 ms  0x8f2 cx:0x7f18a1f05c48
  7819 ms     | 0x8f2 EC_ValidatePublicKey()
  7823 ms     | 0x8f2 ret:0x0
  7823 ms  0x8f2 ret:0x7f18a2ea5820::7f18a2ea5820  e0 97 2d a3                                      ..-.
           /* TID 0x8fc */
  7830 ms  0x8fc PR_Close()
  7830 ms  0x8fc fd:0x7f18a309c580
  7849 ms  0x8fc PR_Close()
  7849 ms  0x8fc fd:0x7f18a309c580
  7853 ms  0x8fc PR_Close()
  7853 ms  0x8fc fd:0x7f18a309c580
           /* TID 0x8f2 */
  7861 ms  0x8f2 PK11_Derive()
  7861 ms  0x8f2 basekey:0x7f18a1fff980
  7861 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7861 ms  0x8f2 ret:0x7f18a301cf80
  7861 ms  0x8f2 PK11_PubDeriveWithKDF()
  7861 ms  0x8f2 seckey:0x7f18a2c4f020
  7861 ms     | 0x8f2 EC_ValidatePublicKey()
  7861 ms     | 0x8f2 ret:0x0
  7862 ms  0x8f2 ret:0x7f18a1fff980
  7862 ms  SECKEY_ECParamsToKeySize()
  7862 ms  0x8f2 ret:0xff
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a301cf80
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a205bb00
  7862 ms  0x8f2 PK11_Derive()
  7862 ms  0x8f2 basekey:0x7f18a1fff980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a205b980
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a205b980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a301cf80
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a205b980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a1fff980
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a205b980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a205bb00
  7862 ms  0x8f2 PK11_Derive()
  7862 ms  0x8f2 basekey:0x7f18a301c100
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a301cf00
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a1fff980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a205b980
  7862 ms  0x8f2 PK11_DeriveWithFlags()
  7862 ms  0x8f2 basekey:0x7f18a1fff980
  7862 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7862 ms  0x8f2 ret:0x7f18a205bb00
  7863 ms  SECKEY_ECParamsToKeySize()
  7863 ms  0x8f2 ret:0x100
  7863 ms  SECKEY_ECParamsToBasePointOrderLen()
  7863 ms  0x8f2 ret:0x100
  7863 ms  SECKEY_ECParamsToBasePointOrderLen()
  7863 ms  0x8f2 ret:0x100
  7863 ms  0x8f2 EC_ValidatePublicKey()
  7865 ms  0x8f2 ret:0x0
  7867 ms  0x8f2 PK11_DeriveWithFlags()
  7867 ms  0x8f2 basekey:0x7f18a1fff980
  7867 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7867 ms  0x8f2 ret:0x7f18a205bb00
  7867 ms  0x8f2 SSL_AuthCertificateComplete()
  7867 ms  0x8f2 fd:0x7f18b4016ca0
  7867 ms  0x8f2 err:0x0
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf00
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a205bb00
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf00
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a301c100
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf00
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a301ce00
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf80
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a2e25200
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf80
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a205be80
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301c100
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a205be80
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301c100
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a301c900
  7868 ms     | 0x8f2 PK11_DeriveWithFlags()
  7868 ms     | 0x8f2 basekey:0x7f18a301cf80
  7868 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7868 ms     | 0x8f2 ret:0x7f18a205b980
  7868 ms     | 0x8f2 PK11_Encrypt()
  7868 ms     | 0x8f2 symkey:0x7f18a2e25200
  7871 ms     | 0x8f2 PK11_DeriveWithFlags()
  7871 ms     | 0x8f2 basekey:0x7f18a205bb00
  7871 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7871 ms     | 0x8f2 ret:0x7f18a205b980
  7871 ms     | 0x8f2 PK11_DeriveWithFlags()
  7871 ms     | 0x8f2 basekey:0x7f18a205bb00
  7871 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7871 ms     | 0x8f2 ret:0x7f18a301c900
  7871 ms     | 0x8f2 PK11_DeriveWithFlags()
  7871 ms     | 0x8f2 basekey:0x7f18a301cf00
  7871 ms     |    | 0x8f2 PK11_DeriveWithTemplate()
  7871 ms     | 0x8f2 ret:0x7f18a2e25200
  7871 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7871 ms     | 0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  e0 97 2d a3                                      ..-.
  7871 ms     | 0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  e5 e5 e5 e5                                      ....
  7871 ms     | 0x8f2 SECKEY_DestroyPrivateKey()
  7871 ms     | 0x8f2 privk:0x7f18a2c4f020::7f18a2c4f020  50 91 0a a3                                      P...
  7872 ms     | 0x8f2 privk:0x7f18a2c4f020::7f18a2c4f020  e5 e5 e5 e5                                      ....
  7874 ms  0x8f2 PK11_Encrypt()
  7874 ms  0x8f2 symkey:0x7f18a205b980
           /* TID 0x8fc */
  7877 ms  0x8fc PR_Close()
  7877 ms  0x8fc fd:0x7f18a305b730
           /* TID 0x8f2 */
  7905 ms  0x8f2 PK11_DeriveWithFlags()
  7905 ms  0x8f2 basekey:0x7f18a2e25200
  7905 ms     | 0x8f2 PK11_DeriveWithTemplate()
  7905 ms  0x8f2 ret:0x7f18a1fff980
  7905 ms  0x8f2 PR_Close()
  7905 ms  0x8f2 fd:0x7f18b4016ca0
  7905 ms     | 0x8f2 PK11_Encrypt()
  7905 ms     | 0x8f2 symkey:0x7f18a205b980
           /* TID 0x8fc */
  7916 ms  0x8fc PR_Close()
  7916 ms  0x8fc fd:0x7f18a305b730
  7920 ms  0x8fc PR_Close()
  7920 ms  0x8fc fd:0x7f18a305b730
  7926 ms  0x8fc PR_Close()
  7926 ms  0x8fc fd:0x7f18a305b730
  7931 ms  0x8fc PR_Close()
  7931 ms  0x8fc fd:0x7f18a305b730
  7932 ms  0x8fc PR_Close()
  7932 ms  0x8fc fd:0x7f18a305b3d0
  7933 ms  0x8fc PR_Close()
  7933 ms  0x8fc fd:0x7f18a305b3d0
  7934 ms  0x8fc PR_Close()
  7934 ms  0x8fc fd:0x7f18a305b3d0
  7935 ms  0x8fc PR_Close()
  7935 ms  0x8fc fd:0x7f18a305b3d0
  7960 ms  0x8fc PR_Close()
  7960 ms  0x8fc fd:0x7f18a2044310
           /* TID 0x8f2 */
  8091 ms  0x8f2 PK11_Encrypt()
  8091 ms  0x8f2 symkey:0x7f18a205b200
  8092 ms  0x8f2 PK11_Encrypt()
  8092 ms  0x8f2 symkey:0x7f18a1f61800
  8097 ms  0x8f2 PK11_Encrypt()
  8097 ms  0x8f2 symkey:0x7f18a301d100
  8097 ms  0x8f2 PK11_Encrypt()
  8097 ms  0x8f2 symkey:0x7f18a301d100
  8102 ms  0x8f2 PK11_Encrypt()
  8102 ms  0x8f2 symkey:0x7f18a301d100
  8108 ms  0x8f2 PK11_Encrypt()
  8108 ms  0x8f2 symkey:0x7f18a1fff700
           /* TID 0x8fc */
  8118 ms  0x8fc PR_Close()
  8118 ms  0x8fc fd:0x7f18a3221700
           /* TID 0x8f2 */
  8119 ms  0x8f2 PR_Close()
  8119 ms  0x8f2 fd:0x7f18a2044a90
  8119 ms     | 0x8f2 PK11_Encrypt()
  8119 ms     | 0x8f2 symkey:0x7f18a1f61800
           /* TID 0x8fc */
  8135 ms  0x8fc PR_Close()
  8135 ms  0x8fc fd:0x7f18a20446d0
  8172 ms  0x8fc PR_Close()
  8172 ms  0x8fc fd:0x7f18a20446d0
  8172 ms  0x8fc PR_Close()
  8172 ms  0x8fc fd:0x7f18a2044b50
           /* TID 0x8f2 */
  8212 ms  0x8f2 PK11_Encrypt()
  8212 ms  0x8f2 symkey:0x7f18a301d100
  8212 ms  0x8f2 PK11_Encrypt()
  8212 ms  0x8f2 symkey:0x7f18a301d100
  8311 ms  0x8f2 SSL_ImportFD()
  8311 ms  0x8f2 ret:0x7f18a32212e0
  8311 ms  0x8f2 SSL_AuthCertificateHook()
  8311 ms  0x8f2 fd:0x7f18a32212e0
  8312 ms  0x8f2 ret:0x0
  8312 ms  0x8f2 PR_Connect()
  8312 ms  0x8f2 fd:0x7f18a32212e0
  8312 ms  0x8f2 SSL_ImportFD()
  8312 ms  0x8f2 ret:0x7f18b4016fd0
  8312 ms  0x8f2 SSL_AuthCertificateHook()
  8312 ms  0x8f2 fd:0x7f18b4016fd0
  8312 ms  0x8f2 ret:0x0
  8312 ms  0x8f2 PR_Connect()
  8312 ms  0x8f2 fd:0x7f18b4016fd0
  8312 ms  0x8f2 SSL_ImportFD()
  8312 ms  0x8f2 ret:0x7f18b4023040
  8312 ms  0x8f2 SSL_AuthCertificateHook()
  8312 ms  0x8f2 fd:0x7f18b4023040
  8312 ms  0x8f2 ret:0x0
  8312 ms  0x8f2 PR_Connect()
  8312 ms  0x8f2 fd:0x7f18b4023040
  8312 ms  0x8f2 SSL_ImportFD()
  8312 ms  0x8f2 ret:0x7f18b4015160
  8312 ms  0x8f2 SSL_AuthCertificateHook()
  8312 ms  0x8f2 fd:0x7f18b4015160
  8313 ms  0x8f2 ret:0x0
  8313 ms  0x8f2 PR_Connect()
  8313 ms  0x8f2 fd:0x7f18b4015160
  8325 ms  0x8f2 PK11_Encrypt()
  8325 ms  0x8f2 symkey:0x7f18a301d100
  8337 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8337 ms  0x8f2 cx:0x7f18a1f06948
  8338 ms     | 0x8f2 EC_ValidatePublicKey()
  8338 ms     | 0x8f2 ret:0x0
  8338 ms  0x8f2 ret:0x7f18a2ea5820::7f18a2ea5820  90 97 0a a3                                      ....
  8339 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8339 ms  0x8f2 cx:0x7f18a1f06948
  8340 ms     | 0x8f2 EC_ValidatePublicKey()
  8342 ms     | 0x8f2 ret:0x0
  8342 ms  0x8f2 ret:0x7f18a2ea8020::7f18a2ea8020  60 4f 21 a3                                      `O!.
  8353 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8353 ms  0x8f2 cx:0x7f18a1f06e28
  8354 ms     | 0x8f2 EC_ValidatePublicKey()
  8354 ms     | 0x8f2 ret:0x0
  8354 ms  0x8f2 ret:0x7f18a2ebe820::7f18a2ebe820  10 65 2c a3                                      .e,.
  8354 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8354 ms  0x8f2 cx:0x7f18a1f06e28
  8355 ms     | 0x8f2 EC_ValidatePublicKey()
  8357 ms     | 0x8f2 ret:0x0
  8357 ms  0x8f2 ret:0x7f18a2ec2820::7f18a2ec2820  c0 99 2d a3                                      ..-.
  8357 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8357 ms  0x8f2 cx:0x7f18a1f06c88
  8358 ms     | 0x8f2 EC_ValidatePublicKey()
  8358 ms     | 0x8f2 ret:0x0
  8358 ms  0x8f2 ret:0x7f18a3075820::7f18a3075820  10 f5 00 b4                                      ....
  8358 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8358 ms  0x8f2 cx:0x7f18a1f06c88
  8358 ms     | 0x8f2 EC_ValidatePublicKey()
  8360 ms     | 0x8f2 ret:0x0
  8360 ms  0x8f2 ret:0x7f18a3077820::7f18a3077820  80 f8 00 b4                                      ....
  8360 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8360 ms  0x8f2 cx:0x7f18a1f06ae8
  8361 ms     | 0x8f2 EC_ValidatePublicKey()
  8361 ms     | 0x8f2 ret:0x0
  8361 ms  0x8f2 ret:0x7f18a307a020::7f18a307a020  60 fa 00 b4                                      `...
  8361 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8361 ms  0x8f2 cx:0x7f18a1f06ae8
  8362 ms     | 0x8f2 EC_ValidatePublicKey()
  8366 ms     | 0x8f2 ret:0x0
  8366 ms  0x8f2 ret:0x7f18a307c020::7f18a307c020  40 27 07 b4                                      @'..
           /* TID 0x8fc */
  8368 ms  0x8fc PR_Close()
  8368 ms  0x8fc fd:0x7f18a2044ac0
           /* TID 0x975 */
  8395 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8396 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  8396 ms  SECKEY_ECParamsToKeySize()
  8396 ms  0x8f2 ret:0x100
  8396 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8396 ms  0x8f2 cx:0x7f18a1f06948
  8398 ms     | 0x8f2 EC_ValidatePublicKey()
  8401 ms     | 0x8f2 ret:0x0
  8401 ms  0x8f2 ret:0x7f18a319b020::7f18a319b020  a0 2b 07 b4                                      .+..
  8402 ms  0x8f2 PK11_PubDeriveWithKDF()
  8402 ms  0x8f2 seckey:0x7f18a319b020
  8402 ms     | 0x8f2 EC_ValidatePublicKey()
  8406 ms     | 0x8f2 ret:0x0
  8409 ms  0x8f2 ret:0x7f18a1f61b00
  8409 ms  0x8f2 PK11_DeriveWithFlags()
  8409 ms  0x8f2 basekey:0x7f18a1f61b00
  8409 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8409 ms  0x8f2 ret:0x7f18a1f61a00
  8409 ms  0x8f2 PK11_Derive()
  8409 ms  0x8f2 basekey:0x7f18a1f61a00
  8409 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8409 ms  0x8f2 ret:0x7f18a1f61880
  8409 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8409 ms  0x8f2 privk:0x7f18a319b020::7f18a319b020  a0 2b 07 b4                                      .+..
  8409 ms  0x8f2 privk:0x7f18a319b020::7f18a319b020  e5 e5 e5 e5                                      ....
  8409 ms  0x8f2 PK11_Encrypt()
  8409 ms  0x8f2 symkey:0x7f18b408d800
  8410 ms  0x8f2 SSL_AuthCertificateComplete()
  8410 ms  0x8f2 fd:0x7f18a32212e0
  8410 ms  0x8f2 err:0x0
  8410 ms  0x8f2 PK11_Encrypt()
  8410 ms  0x8f2 symkey:0x7f18b408d800
           /* TID 0x96c */
  8412 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8412 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  8412 ms  SECKEY_ECParamsToKeySize()
  8412 ms  0x8f2 ret:0x100
  8412 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8412 ms  0x8f2 cx:0x7f18a1f06e28
  8413 ms     | 0x8f2 EC_ValidatePublicKey()
  8415 ms     | 0x8f2 ret:0x0
  8415 ms  0x8f2 ret:0x7f18a31a2020::7f18a31a2020  40 2c 07 b4                                      @,..
  8416 ms  0x8f2 PK11_PubDeriveWithKDF()
  8416 ms  0x8f2 seckey:0x7f18a31a2020
  8416 ms     | 0x8f2 EC_ValidatePublicKey()
  8420 ms     | 0x8f2 ret:0x0
  8422 ms  0x8f2 ret:0x7f18a1f61b00
  8422 ms  0x8f2 PK11_DeriveWithFlags()
  8422 ms  0x8f2 basekey:0x7f18a1f61b00
  8422 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8422 ms  0x8f2 ret:0x7f18a205b680
  8422 ms  0x8f2 PK11_Derive()
  8422 ms  0x8f2 basekey:0x7f18a205b680
  8422 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8422 ms  0x8f2 ret:0x7f18a1f61b80
  8422 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8422 ms  0x8f2 privk:0x7f18a31a2020::7f18a31a2020  40 2c 07 b4                                      @,..
  8422 ms  0x8f2 privk:0x7f18a31a2020::7f18a31a2020  e5 e5 e5 e5                                      ....
  8422 ms  0x8f2 PK11_Encrypt()
  8422 ms  0x8f2 symkey:0x7f18b408da80
  8422 ms  0x8f2 SSL_AuthCertificateComplete()
  8422 ms  0x8f2 fd:0x7f18b4015160
  8422 ms  0x8f2 err:0x0
  8423 ms  0x8f2 PK11_Encrypt()
  8423 ms  0x8f2 symkey:0x7f18b408da80
           /* TID 0x975 */
  8424 ms  0x975 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8424 ms  0x975 ret:0x0
           /* TID 0x8f2 */
  8424 ms  SECKEY_ECParamsToKeySize()
  8424 ms  0x8f2 ret:0x100
  8424 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8424 ms  0x8f2 cx:0x7f18a1f06c88
  8425 ms     | 0x8f2 EC_ValidatePublicKey()
  8427 ms     | 0x8f2 ret:0x0
  8427 ms  0x8f2 ret:0x7f18a31a4020::7f18a31a4020  e0 2c 07 b4                                      .,..
  8427 ms  0x8f2 PK11_PubDeriveWithKDF()
  8427 ms  0x8f2 seckey:0x7f18a31a4020
  8427 ms     | 0x8f2 EC_ValidatePublicKey()
  8429 ms     | 0x8f2 ret:0x0
  8430 ms  0x8f2 ret:0x7f18a1f61b00
  8430 ms  0x8f2 PK11_DeriveWithFlags()
  8430 ms  0x8f2 basekey:0x7f18a1f61b00
  8430 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8430 ms  0x8f2 ret:0x7f18a1f61c00
  8430 ms  0x8f2 PK11_Derive()
  8430 ms  0x8f2 basekey:0x7f18a1f61c00
  8430 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8431 ms  0x8f2 ret:0x7f18a1f61800
  8431 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8431 ms  0x8f2 privk:0x7f18a31a4020::7f18a31a4020  e0 2c 07 b4                                      .,..
  8431 ms  0x8f2 privk:0x7f18a31a4020::7f18a31a4020  e5 e5 e5 e5                                      ....
  8431 ms  0x8f2 PK11_Encrypt()
  8431 ms  0x8f2 symkey:0x7f18b408de80
           /* TID 0x96c */
  8431 ms  0x96c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8432 ms  0x96c ret:0x0
           /* TID 0x8f2 */
  8432 ms  SECKEY_ECParamsToKeySize()
  8432 ms  0x8f2 ret:0x100
  8432 ms  0x8f2 SECKEY_CreateECPrivateKey()
  8432 ms  0x8f2 cx:0x7f18a1f06ae8
  8432 ms     | 0x8f2 EC_ValidatePublicKey()
  8434 ms     | 0x8f2 ret:0x0
  8434 ms  0x8f2 ret:0x7f18a31b1820::7f18a31b1820  20 2e 07 b4                                       ...
  8434 ms  0x8f2 PK11_PubDeriveWithKDF()
  8434 ms  0x8f2 seckey:0x7f18a31b1820
  8434 ms     | 0x8f2 EC_ValidatePublicKey()
  8435 ms     | 0x8f2 ret:0x0
  8437 ms  0x8f2 ret:0x7f18a1f61b00
  8437 ms  0x8f2 PK11_DeriveWithFlags()
  8437 ms  0x8f2 basekey:0x7f18a1f61b00
  8437 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8437 ms  0x8f2 ret:0x7f18a301ce00
  8437 ms  0x8f2 PK11_Derive()
  8437 ms  0x8f2 basekey:0x7f18a301ce00
  8437 ms     | 0x8f2 PK11_DeriveWithTemplate()
  8437 ms  0x8f2 ret:0x7f18a301c100
  8437 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8437 ms  0x8f2 privk:0x7f18a31b1820::7f18a31b1820  20 2e 07 b4                                       ...
  8437 ms  0x8f2 privk:0x7f18a31b1820::7f18a31b1820  e5 e5 e5 e5                                      ....
  8437 ms  0x8f2 PK11_Encrypt()
  8437 ms  0x8f2 symkey:0x7f18b408e080
  8437 ms  0x8f2 SSL_AuthCertificateComplete()
  8437 ms  0x8f2 fd:0x7f18b4023040
  8437 ms  0x8f2 err:0x0
  8437 ms  0x8f2 SSL_AuthCertificateComplete()
  8437 ms  0x8f2 fd:0x7f18b4016fd0
  8437 ms  0x8f2 err:0x0
  8438 ms  0x8f2 PK11_Encrypt()
  8438 ms  0x8f2 symkey:0x7f18b408de80
  8438 ms  0x8f2 PK11_Encrypt()
  8438 ms  0x8f2 symkey:0x7f18b408e080
  8461 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8461 ms  0x8f2 privk:0x7f18a2ea8020::7f18a2ea8020  60 4f 21 a3                                      `O!.
  8462 ms  0x8f2 privk:0x7f18a2ea8020::7f18a2ea8020  e5 e5 e5 e5                                      ....
  8462 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8462 ms  0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  90 97 0a a3                                      ....
  8462 ms  0x8f2 privk:0x7f18a2ea5820::7f18a2ea5820  e5 e5 e5 e5                                      ....
           /* TID 0x8fc */
  8469 ms  0x8fc PR_Close()
  8469 ms  0x8fc fd:0x7f18a2044c10
           /* TID 0x8f2 */
  8473 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8473 ms  0x8f2 privk:0x7f18a2ec2820::7f18a2ec2820  c0 99 2d a3                                      ..-.
  8473 ms  0x8f2 privk:0x7f18a2ec2820::7f18a2ec2820  e5 e5 e5 e5                                      ....
  8474 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8474 ms  0x8f2 privk:0x7f18a2ebe820::7f18a2ebe820  10 65 2c a3                                      .e,.
  8474 ms  0x8f2 privk:0x7f18a2ebe820::7f18a2ebe820  e5 e5 e5 e5                                      ....
           /* TID 0x8fc */
  8481 ms  0x8fc PR_Close()
  8481 ms  0x8fc fd:0x7f18a2044c10
           /* TID 0x8f2 */
  8483 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8483 ms  0x8f2 privk:0x7f18a3077820::7f18a3077820  80 f8 00 b4                                      ....
  8483 ms  0x8f2 privk:0x7f18a3077820::7f18a3077820  e5 e5 e5 e5                                      ....
  8483 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8483 ms  0x8f2 privk:0x7f18a3075820::7f18a3075820  10 f5 00 b4                                      ....
  8483 ms  0x8f2 privk:0x7f18a3075820::7f18a3075820  e5 e5 e5 e5                                      ....
  8489 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8489 ms  0x8f2 privk:0x7f18a307c020::7f18a307c020  40 27 07 b4                                      @'..
  8489 ms  0x8f2 privk:0x7f18a307c020::7f18a307c020  e5 e5 e5 e5                                      ....
  8489 ms  0x8f2 SECKEY_DestroyPrivateKey()
  8489 ms  0x8f2 privk:0x7f18a307a020::7f18a307a020  60 fa 00 b4                                      `...
  8490 ms  0x8f2 privk:0x7f18a307a020::7f18a307a020  e5 e5 e5 e5                                      ....
           /* TID 0x8fc */
  8492 ms  0x8fc PR_Close()
  8492 ms  0x8fc fd:0x7f18a2044c10
  8501 ms  0x8fc PR_Close()
  8501 ms  0x8fc fd:0x7f18a2044b50
           /* TID 0x8f2 */
  8508 ms  0x8f2 PK11_Encrypt()
  8508 ms  0x8f2 symkey:0x7f18a2d81880
  8510 ms  0x8f2 PK11_Encrypt()
  8510 ms  0x8f2 symkey:0x7f18a2d81880
  8511 ms  0x8f2 PK11_Encrypt()
  8511 ms  0x8f2 symkey:0x7f18a2d80280
  8513 ms  0x8f2 PK11_Encrypt()
  8513 ms  0x8f2 symkey:0x7f18a30a8780
  8518 ms  0x8f2 PK11_Encrypt()
  8518 ms  0x8f2 symkey:0x7f18a2d80280
  8527 ms  0x8f2 PK11_Encrypt()
  8527 ms  0x8f2 symkey:0x7f18a30a8780
  8529 ms  0x8f2 PK11_Encrypt()
  8529 ms  0x8f2 symkey:0x7f18a30a8780
  8530 ms  0x8f2 PK11_Encrypt()
  8530 ms  0x8f2 symkey:0x7f18a30a8780
  8533 ms  0x8f2 PK11_Encrypt()
  8533 ms  0x8f2 symkey:0x7f18b55c3400
  8537 ms  0x8f2 PR_Close()
  8537 ms  0x8f2 fd:0x7f18b50c2b80
           /* TID 0x8e2 */
  8538 ms  0x8e2 EC_ValidatePublicKey()
  8540 ms  0x8e2 ret:0x0
  8540 ms  0x8e2 EC_ValidatePublicKey()
  8541 ms  0x8e2 ret:0x0
  8541 ms  0x8e2 EC_ValidatePublicKey()
  8543 ms  0x8e2 ret:0x0
  8543 ms  0x8e2 EC_ValidatePublicKey()
  8544 ms  0x8e2 ret:0x0
  8544 ms  0x8e2 EC_ValidatePublicKey()
  8554 ms  0x8e2 ret:0x0
  8555 ms  0x8e2 EC_ValidatePublicKey()
  8556 ms  0x8e2 ret:0x0
  8556 ms  0x8e2 EC_ValidatePublicKey()
  8557 ms  0x8e2 ret:0x0
  8558 ms  0x8e2 EC_ValidatePublicKey()
  8559 ms  0x8e2 ret:0x0
  8559 ms  0x8e2 EC_ValidatePublicKey()
  8561 ms  0x8e2 ret:0x0
  8561 ms  0x8e2 EC_ValidatePublicKey()
  8563 ms  0x8e2 ret:0x0
           /* TID 0x8f2 */
  8563 ms  0x8f2 PK11_Encrypt()
  8563 ms  0x8f2 symkey:0x7f18a301d100
  8567 ms  0x8f2 PK11_Encrypt()
  8567 ms  0x8f2 symkey:0x7f18a2cfa700
  8570 ms  0x8f2 PK11_Encrypt()
  8570 ms  0x8f2 symkey:0x7f18a1fff700
  8570 ms  0x8f2 PK11_Encrypt()
  8570 ms  0x8f2 symkey:0x7f18a205c980
  8570 ms  0x8f2 PK11_Encrypt()
  8570 ms  0x8f2 symkey:0x7f18a1fff080
  8570 ms  0x8f2 PK11_Encrypt()
  8570 ms  0x8f2 symkey:0x7f18b7390700
  8570 ms  0x8f2 PK11_Encrypt()
  8570 ms  0x8f2 symkey:0x7f18a1f61400
  8570 ms  0x8f2 PR_Close()
  8570 ms  0x8f2 fd:0x7f18b4023040
  8570 ms     | 0x8f2 PK11_Encrypt()
  8570 ms     | 0x8f2 symkey:0x7f18b408de80
  8571 ms  0x8f2 PR_Close()
  8571 ms  0x8f2 fd:0x7f18b4015160
  8571 ms     | 0x8f2 PK11_Encrypt()
  8571 ms     | 0x8f2 symkey:0x7f18b408da80
  8571 ms  0x8f2 PR_Close()
  8571 ms  0x8f2 fd:0x7f18a32212e0
  8571 ms     | 0x8f2 PK11_Encrypt()
  8571 ms     | 0x8f2 symkey:0x7f18b408d800
  8571 ms  0x8f2 PR_Close()
  8571 ms  0x8f2 fd:0x7f18a2cf1cd0
  8571 ms     | 0x8f2 PK11_Encrypt()
  8571 ms     | 0x8f2 symkey:0x7f18a1fffa00
  8571 ms  0x8f2 PR_Close()
  8571 ms  0x8f2 fd:0x7f18a2cf1880
  8571 ms     | 0x8f2 PK11_Encrypt()
  8571 ms     | 0x8f2 symkey:0x7f18a205b200
  8572 ms  0x8f2 PR_Close()
  8572 ms  0x8f2 fd:0x7f18a309cb20
  8572 ms     | 0x8f2 PK11_Encrypt()
  8572 ms     | 0x8f2 symkey:0x7f18a30a8e80
  8572 ms  0x8f2 PR_Close()
  8572 ms  0x8f2 fd:0x7f18a305b6d0
  8572 ms  0x8f2 PR_Close()
  8572 ms  0x8f2 fd:0x7f18a3221430
  8572 ms     | 0x8f2 PK11_Encrypt()
  8572 ms     | 0x8f2 symkey:0x7f18a320ba00
  8572 ms  0x8f2 PR_Close()
  8572 ms  0x8f2 fd:0x7f18a3221160
  8572 ms  0x8f2 PR_Close()
  8572 ms  0x8f2 fd:0x7f18b4023580
  8572 ms     | 0x8f2 PK11_Encrypt()
  8572 ms     | 0x8f2 symkey:0x7f18a320ab80
  8573 ms  0x8f2 PR_Close()
  8573 ms  0x8f2 fd:0x7f18b5044ee0
  8573 ms  0x8f2 PR_Close()
  8573 ms  0x8f2 fd:0x7f18b737cca0
  8573 ms     | 0x8f2 PK11_Encrypt()
  8573 ms     | 0x8f2 symkey:0x7f18b48eb180
  8573 ms  0x8f2 PR_Close()
  8573 ms  0x8f2 fd:0x7f18b4016fd0
  8573 ms     | 0x8f2 PK11_Encrypt()
  8573 ms     | 0x8f2 symkey:0x7f18b408e080
  8573 ms  0x8f2 PR_Close()
  8573 ms  0x8f2 fd:0x7f18b4511d90
  8573 ms     | 0x8f2 PK11_Encrypt()
  8573 ms     | 0x8f2 symkey:0x7f18b5cf7780
           /* TID 0x95f */
  8573 ms  0x95f PR_Close()
  8573 ms  0x95f fd:0x7f18a1fbc8e0
  8573 ms  0x95f PR_Close()
  8573 ms  0x95f fd:0x7f18a1fbc8e0
           /* TID 0x8f2 */
  8577 ms  0x8f2 PR_Close()
  8577 ms  0x8f2 fd:0x7f18a2044eb0
  8577 ms     | 0x8f2 PK11_Encrypt()
  8577 ms     | 0x8f2 symkey:0x7f18a1f61980
  8580 ms  0x8f2 PR_Close()
  8580 ms  0x8f2 fd:0x7f18a2044760
  8581 ms     | 0x8f2 PK11_Encrypt()
  8581 ms     | 0x8f2 symkey:0x7f18a1f61400
  8582 ms  0x8f2 PR_Close()
  8582 ms  0x8f2 fd:0x7f18a2044580
  8582 ms     | 0x8f2 PK11_Encrypt()
  8582 ms     | 0x8f2 symkey:0x7f18a1fff700
  8582 ms  0x8f2 PR_Close()
  8582 ms  0x8f2 fd:0x7f18a2cf1c10
  8582 ms     | 0x8f2 PK11_Encrypt()
  8582 ms     | 0x8f2 symkey:0x7f18a205c980
  8582 ms  0x8f2 PR_Close()
  8582 ms  0x8f2 fd:0x7f18a305b160
  8582 ms     | 0x8f2 PK11_Encrypt()
  8582 ms     | 0x8f2 symkey:0x7f18a301d100
  8582 ms  0x8f2 PR_Close()
  8582 ms  0x8f2 fd:0x7f18a2044e80
  8582 ms     | 0x8f2 PK11_Encrypt()
  8582 ms     | 0x8f2 symkey:0x7f18a2cfa700
  8583 ms  0x8f2 PR_Close()
  8583 ms  0x8f2 fd:0x7f18a309c310
  8583 ms     | 0x8f2 PK11_Encrypt()
  8583 ms     | 0x8f2 symkey:0x7f18b7390700
  8585 ms  0x8f2 PR_Close()
  8585 ms  0x8f2 fd:0x7f18a1fbc490
  8585 ms     | 0x8f2 PK11_Encrypt()
  8585 ms     | 0x8f2 symkey:0x7f18a1fff080
  8585 ms  0x8f2 PK11_Encrypt()
  8585 ms  0x8f2 symkey:0x7f18a2d80280
  8586 ms  0x8f2 PR_Close()
  8586 ms  0x8f2 fd:0x7f18a2ef7c10
  8587 ms     | 0x8f2 PK11_Encrypt()
  8587 ms     | 0x8f2 symkey:0x7f18a2d80280
  8589 ms  0x8f2 PK11_Encrypt()
  8589 ms  0x8f2 symkey:0x7f18a30a8780
  8589 ms  0x8f2 PR_Close()
  8589 ms  0x8f2 fd:0x7f18a2ef7970
  8589 ms     | 0x8f2 PK11_Encrypt()
  8589 ms     | 0x8f2 symkey:0x7f18a30a8780
           /* TID 0x8fc */
  8590 ms  0x8fc PR_Close()
  8590 ms  0x8fc fd:0x7f18a1fbcd60
  8592 ms  0x8fc PR_Close()
  8592 ms  0x8fc fd:0x7f18a2044f40
           /* TID 0x8e2 */
  8606 ms  0x8e2 PR_Close()
  8606 ms  0x8e2 fd:0x7f18b8fa7670
  8606 ms  0x8e2 PR_Close()
  8606 ms  0x8e2 fd:0x7f18a2cf1d00
  8608 ms  0x8e2 PR_Close()
  8608 ms  0x8e2 fd:0x7f18a2e68040
  8609 ms  0x8e2 PR_Close()
  8609 ms  0x8e2 fd:0x7f18a2e682b0
  8610 ms  0x8e2 PR_Close()
  8610 ms  0x8e2 fd:0x7f18a2e68040
  8610 ms  0x8e2 PR_Close()
  8610 ms  0x8e2 fd:0x7f18a2ef7070
           /* TID 0x971 */
  8614 ms  0x971 PR_Close()
  8614 ms  0x971 fd:0x7f18a2ef71f0
           /* TID 0x8e2 */
  8633 ms  0x8e2 PR_Close()
  8633 ms  0x8e2 fd:0x7f18a2e68040
  8633 ms  0x8e2 PR_Close()
  8633 ms  0x8e2 fd:0x7f18a309cc40
  8634 ms  0x8e2 PR_Close()
  8634 ms  0x8e2 fd:0x7f18a2e68040
  8634 ms  0x8e2 PR_Close()
  8634 ms  0x8e2 fd:0x7f18a309cc40
  8636 ms  0x8e2 PR_Close()
  8636 ms  0x8e2 fd:0x7f18bf1c89a0
  8636 ms  0x8e2 PR_Close()
  8636 ms  0x8e2 fd:0x7f18bf1c88b0
  8636 ms  0x8e2 PR_Close()
  8636 ms  0x8e2 fd:0x7f18bf1c8a60
  8639 ms  0x8e2 PR_Close()
  8639 ms  0x8e2 fd:0x7f18a309cd30
  8640 ms  0x8e2 PR_Close()
  8640 ms  0x8e2 fd:0x7f18a309cd30
  8642 ms  0x8e2 PR_Close()
  8642 ms  0x8e2 fd:0x7f18a2e68040
  8642 ms  0x8e2 PR_Close()
  8642 ms  0x8e2 fd:0x7f18a309cfd0
  8643 ms  0x8e2 PR_Close()
  8643 ms  0x8e2 fd:0x7f18a2e68040
  8643 ms  0x8e2 PR_Close()
  8643 ms  0x8e2 fd:0x7f18a309cfd0
  8646 ms  0x8e2 PR_Close()
  8646 ms  0x8e2 fd:0x7f18a31ee160
  8647 ms  0x8e2 PR_Close()
  8647 ms  0x8e2 fd:0x7f18a31ee160
  8649 ms  0x8e2 PR_Close()
  8649 ms  0x8e2 fd:0x7f18a2e68040
  8649 ms  0x8e2 PR_Close()
  8649 ms  0x8e2 fd:0x7f18a31ee700
  8650 ms  0x8e2 PR_Close()
  8650 ms  0x8e2 fd:0x7f18a2e68040
  8650 ms  0x8e2 PR_Close()
  8650 ms  0x8e2 fd:0x7f18a31ee700
  8653 ms  0x8e2 PR_Close()
  8653 ms  0x8e2 fd:0x7f18a31ee730
  8654 ms  0x8e2 PR_Close()
  8654 ms  0x8e2 fd:0x7f18a31ee730
  8660 ms  0x8e2 PR_Close()
  8660 ms  0x8e2 fd:0x7f18a32213d0
  8661 ms  0x8e2 PR_Close()
  8661 ms  0x8e2 fd:0x7f18a32213d0
  8663 ms  0x8e2 PR_Close()
  8663 ms  0x8e2 fd:0x7f18a3221430
           /* TID 0x8f2 */
  8665 ms  0x8f2 PK11_Encrypt()
  8665 ms  0x8f2 symkey:0x7f18b55c3400
  8665 ms  0x8f2 PR_Close()
  8665 ms  0x8f2 fd:0x7f18b738c8b0
  8665 ms     | 0x8f2 PK11_Encrypt()
  8665 ms     | 0x8f2 symkey:0x7f18b55c3400
           /* TID 0x8fc */
  8669 ms  0x8fc PR_Close()
  8669 ms  0x8fc fd:0x7f18a1fbc520
  8671 ms  0x8fc PR_Close()
  8671 ms  0x8fc fd:0x7f18a1fbc5e0
  8672 ms  0x8fc PR_Close()
  8672 ms  0x8fc fd:0x7f18a1fbc5e0
  8673 ms  0x8fc PR_Close()
  8673 ms  0x8fc fd:0x7f18a1fbc5e0
           /* TID 0x971 */
  8679 ms  0x971 PR_Close()
  8679 ms  0x971 fd:0x7f18a2cf1b80
           /* TID 0x8e2 */
  8680 ms  0x8e2 PR_Close()
  8680 ms  0x8e2 fd:0x7f18a2e68040
  8680 ms  0x8e2 PR_Close()
  8680 ms  0x8e2 fd:0x7f18a2e68280
           /* TID 0x971 */
  8680 ms  0x971 PR_Close()
  8680 ms  0x971 fd:0x7f18a2cf1b80
  8683 ms  0x971 PR_Close()
  8683 ms  0x971 fd:0x7f18a2e682b0
           /* TID 0x8fc */
  8692 ms  0x8fc PR_Close()
  8692 ms  0x8fc fd:0x7f18a309c730
  8694 ms  0x8fc PR_Close()
  8694 ms  0x8fc fd:0x7f18a32212b0
           /* TID 0x971 */
  8720 ms  0x971 PR_Close()
  8720 ms  0x971 fd:0x7f18a2044460
           /* TID 0x8f2 */
  8725 ms  0x8f2 SSL_ImportFD()
  8725 ms  0x8f2 ret:0x7f18a2044880
  8725 ms  0x8f2 SSL_AuthCertificateHook()
  8725 ms  0x8f2 fd:0x7f18a2044880
  8725 ms  0x8f2 ret:0x0
  8725 ms  0x8f2 PR_Connect()
  8725 ms  0x8f2 fd:0x7f18a2044880
           /* TID 0x8ec */
  8741 ms  0x8ec PR_Close()
  8741 ms  0x8ec fd:0x7f18bddf8df0
           /* TID 0x8f2 */
  8742 ms  0x8f2 PK11_Encrypt()
  8742 ms  0x8f2 symkey:0x7f18a2d81880
  8742 ms  0x8f2 PR_Close()
  8742 ms  0x8f2 fd:0x7f18a2044880
  8742 ms  0x8f2 PR_Close()
  8742 ms  0x8f2 fd:0x7f18a2ef7940
  8742 ms     | 0x8f2 PK11_Encrypt()
  8742 ms     | 0x8f2 symkey:0x7f18a2d81880
           /* TID 0x971 */
  8755 ms  0x971 PR_Close()
  8755 ms  0x971 fd:0x7f18a20447c0
           /* TID 0x8e2 */
  8770 ms  0x8e2 PR_Close()
  8770 ms  0x8e2 fd:0x7f18a2e68040
  8770 ms  0x8e2 PR_Close()
  8770 ms  0x8e2 fd:0x7f18a1fbc8e0
           /* TID 0x8f2 */
  8770 ms  0x8f2 PR_Close()
  8770 ms  0x8f2 fd:0x7f18b50c2be0
           /* TID 0x95f */
  8771 ms  0x95f PR_Close()
  8771 ms  0x95f fd:0x7f18a1fbcd60
  8771 ms  0x95f PR_Close()
  8771 ms  0x95f fd:0x7f18a1fbcd60
  8771 ms  0x95f PR_Close()
  8771 ms  0x95f fd:0x7f18a1fbcd60
  8771 ms  0x95f PR_Close()
  8771 ms  0x95f fd:0x7f18a20445e0
           /* TID 0x971 */
  8772 ms  0x971 PR_Close()
  8772 ms  0x971 fd:0x7f18a20445e0
           /* TID 0x8fc */
  8778 ms  0x8fc PR_Close()
  8778 ms  0x8fc fd:0x7f18a2cf15b0
  8778 ms  0x8fc PR_Close()
  8778 ms  0x8fc fd:0x7f18a2cf1670
           /* TID 0x8ec */
  8784 ms  0x8ec PR_Close()
  8784 ms  0x8ec fd:0x7f18b50442b0
           /* TID 0x8e2 */
  8803 ms  0x8e2 PR_Close()
  8803 ms  0x8e2 fd:0x7f18a20447f0
  8803 ms  0x8e2 PR_Close()
  8803 ms  0x8e2 fd:0x7f18a2044130
           /* TID 0x971 */
  8810 ms  0x971 PR_Close()
  8810 ms  0x971 fd:0x7f18a20440a0
           /* TID 0x8ec */
  8814 ms  0x8ec PR_Close()
  8814 ms  0x8ec fd:0x7f18ba413820
           /* TID 0x971 */
  8815 ms  0x971 PR_Close()
  8815 ms  0x971 fd:0x7f18a1fbcf40
  8839 ms  0x971 PR_Close()
  8839 ms  0x971 fd:0x7f18a1fbc910
  8841 ms  0x971 PR_Close()
  8841 ms  0x971 fd:0x7f18a1fbc910
  8862 ms  0x971 PR_Close()
  8862 ms  0x971 fd:0x7f18a2044100
  8865 ms  0x971 PR_Close()
  8865 ms  0x971 fd:0x7f18a2044190
  8882 ms  0x971 PR_Close()
  8882 ms  0x971 fd:0x7f18a2044730
  8888 ms  0x971 PR_Close()
  8888 ms  0x971 fd:0x7f18a2cf1490
  8895 ms  0x971 PR_Close()
  8895 ms  0x971 fd:0x7f18a2cf1a90
  8905 ms  0x971 PR_Close()
  8905 ms  0x971 fd:0x7f18a2cf1ee0
  8906 ms  0x971 PR_Close()
  8906 ms  0x971 fd:0x7f18a2cf1ee0
           /* TID 0x8e2 */
  9111 ms  0x8e2 PR_Close()
  9111 ms  0x8e2 fd:0x7f18a2044190
  9112 ms  0x8e2 PR_Close()
  9112 ms  0x8e2 fd:0x7f18a2044190
  9124 ms  0x8e2 PR_Close()
  9124 ms  0x8e2 fd:0x7f18dc4da130
  9124 ms  0x8e2 PR_Close()
  9124 ms  0x8e2 fd:0x7f18dc4da190
Process terminated
