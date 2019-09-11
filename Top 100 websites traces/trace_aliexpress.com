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
           /* TID 0x7e7c */
   254 ms  0x7e7c SSL_ImportFD()
   254 ms  0x7e7c ret:0x7fdd972c5850
   254 ms  0x7e7c SSL_AuthCertificateHook()
   254 ms  0x7e7c fd:0x7fdd972c5850
   254 ms  0x7e7c ret:0x0
   254 ms  0x7e7c PR_Connect()
   254 ms  0x7e7c fd:0x7fdd972c5850
           /* TID 0x7ee2 */
   419 ms  0x7ee2 PR_Close()
   419 ms  0x7ee2 fd:0x7fdd972c56d0
   420 ms  0x7ee2 PR_Close()
   420 ms  0x7ee2 fd:0x7fdd972c56d0
           /* TID 0x7e7c */
   465 ms  0x7e7c SECKEY_CreateECPrivateKey()
   465 ms  0x7e7c cx:0x7fdd972c47e8
   465 ms     | 0x7e7c EC_ValidatePublicKey()
   465 ms     | 0x7e7c ret:0x0
   465 ms  0x7e7c ret:0x7fdd97247020::7fdd97247020  60 90 2f 97                                      `./.
   465 ms  0x7e7c SECKEY_CreateECPrivateKey()
   465 ms  0x7e7c cx:0x7fdd972c47e8
   466 ms     | 0x7e7c EC_ValidatePublicKey()
   467 ms     | 0x7e7c ret:0x0
   468 ms  0x7e7c ret:0x7fdd97249020::7fdd97249020  40 92 2f 97                                      @./.
   683 ms  SECKEY_ECParamsToKeySize()
   683 ms  0x7e7c ret:0x100
   683 ms  0x7e7c SECKEY_CreateECPrivateKey()
   683 ms  0x7e7c cx:0x7fdd972c47e8
   684 ms     | 0x7e7c EC_ValidatePublicKey()
   685 ms     | 0x7e7c ret:0x0
   685 ms  0x7e7c ret:0x7fdd9899f820::7fdd9899f820  e0 97 2f 97                                      ../.
   686 ms  0x7e7c PK11_PubDeriveWithKDF()
   686 ms  0x7e7c seckey:0x7fdd9899f820
   686 ms     | 0x7e7c EC_ValidatePublicKey()
   687 ms     | 0x7e7c ret:0x0
   688 ms  0x7e7c ret:0x7fdd98944400
   688 ms  0x7e7c PK11_DeriveWithFlags()
   688 ms  0x7e7c basekey:0x7fdd98944400
   688 ms     | 0x7e7c PK11_DeriveWithTemplate()
   688 ms  0x7e7c ret:0x7fdd972bbb00
   688 ms  0x7e7c PK11_Derive()
   688 ms  0x7e7c basekey:0x7fdd972bbb00
   688 ms     | 0x7e7c PK11_DeriveWithTemplate()
   689 ms  0x7e7c ret:0x7fdd972bbc00
   689 ms  0x7e7c SECKEY_DestroyPrivateKey()
   689 ms  0x7e7c privk:0x7fdd9899f820::7fdd9899f820  e0 97 2f 97                                      ../.
   689 ms  0x7e7c privk:0x7fdd9899f820::7fdd9899f820  e5 e5 e5 e5                                      ....
   689 ms  0x7e7c PK11_Encrypt()
   689 ms  0x7e7c symkey:0x7fdd972bbd80
   689 ms  0x7e7c PR_Connect()
   689 ms  0x7e7c fd:0x7fdd972c5e20
           /* TID 0x7ee2 */
   723 ms  0x7ee2 PR_Close()
   723 ms  0x7ee2 fd:0x7fdd972c5d90
           /* TID 0x7e84 */
   741 ms  0x7e84 PR_Close()
   741 ms  0x7e84 fd:0x7fdd972c5d90
           /* TID 0x7ed7 */
   741 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   741 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
   741 ms  0x7e7c SSL_AuthCertificateComplete()
   741 ms  0x7e7c fd:0x7fdd972c5850
   741 ms  0x7e7c err:0x0
   741 ms  0x7e7c PK11_Encrypt()
   741 ms  0x7e7c symkey:0x7fdd972bbd80
   900 ms  0x7e7c SECKEY_DestroyPrivateKey()
   900 ms  0x7e7c privk:0x7fdd97249020::7fdd97249020  40 92 2f 97                                      @./.
   900 ms  0x7e7c privk:0x7fdd97249020::7fdd97249020  e5 e5 e5 e5                                      ....
   900 ms  0x7e7c SECKEY_DestroyPrivateKey()
   900 ms  0x7e7c privk:0x7fdd97247020::7fdd97247020  60 90 2f 97                                      `./.
   900 ms  0x7e7c privk:0x7fdd97247020::7fdd97247020  e5 e5 e5 e5                                      ....
  1113 ms  0x7e7c SSL_ImportFD()
  1113 ms  0x7e7c ret:0x7fdd972c5f40
  1113 ms  0x7e7c SSL_AuthCertificateHook()
  1113 ms  0x7e7c fd:0x7fdd972c5f40
  1113 ms  0x7e7c ret:0x0
  1113 ms  0x7e7c PR_Connect()
  1113 ms  0x7e7c fd:0x7fdd972c5f40
  1139 ms  0x7e7c SECKEY_CreateECPrivateKey()
  1139 ms  0x7e7c cx:0x7fdd972bd588
  1139 ms     | 0x7e7c EC_ValidatePublicKey()
  1139 ms     | 0x7e7c ret:0x0
  1139 ms  0x7e7c ret:0x7fdd97248020::7fdd97248020  f0 91 2f 97                                      ../.
  1139 ms  0x7e7c SECKEY_CreateECPrivateKey()
  1139 ms  0x7e7c cx:0x7fdd972bd588
  1140 ms     | 0x7e7c EC_ValidatePublicKey()
  1142 ms     | 0x7e7c ret:0x0
  1142 ms  0x7e7c ret:0x7fdd9724e020::7fdd9724e020  b0 95 2f 97                                      ../.
           /* TID 0x7ed7 */
  1193 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1193 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  1193 ms  SECKEY_ECParamsToKeySize()
  1193 ms  0x7e7c ret:0x100
  1193 ms  0x7e7c SECKEY_CreateECPrivateKey()
  1193 ms  0x7e7c cx:0x7fdd972bd588
  1194 ms     | 0x7e7c EC_ValidatePublicKey()
  1195 ms     | 0x7e7c ret:0x0
  1195 ms  0x7e7c ret:0x7fdd97251820::7fdd97251820  80 98 2f 97                                      ../.
  1195 ms  0x7e7c PK11_PubDeriveWithKDF()
  1195 ms  0x7e7c seckey:0x7fdd97251820
  1195 ms     | 0x7e7c EC_ValidatePublicKey()
  1197 ms     | 0x7e7c ret:0x0
  1198 ms  0x7e7c ret:0x7fdd98944400
  1198 ms  0x7e7c PK11_DeriveWithFlags()
  1198 ms  0x7e7c basekey:0x7fdd98944400
  1198 ms     | 0x7e7c PK11_DeriveWithTemplate()
  1198 ms  0x7e7c ret:0x7fdd972bca00
  1198 ms  0x7e7c PK11_Derive()
  1198 ms  0x7e7c basekey:0x7fdd972bca00
  1198 ms     | 0x7e7c PK11_DeriveWithTemplate()
  1199 ms  0x7e7c ret:0x7fdd972bca80
  1199 ms  0x7e7c SECKEY_DestroyPrivateKey()
  1199 ms  0x7e7c privk:0x7fdd97251820::7fdd97251820  80 98 2f 97                                      ../.
  1199 ms  0x7e7c privk:0x7fdd97251820::7fdd97251820  e5 e5 e5 e5                                      ....
  1199 ms  0x7e7c PK11_Encrypt()
  1199 ms  0x7e7c symkey:0x7fdd972bcc00
  1199 ms  0x7e7c SSL_AuthCertificateComplete()
  1199 ms  0x7e7c fd:0x7fdd972c5f40
  1199 ms  0x7e7c err:0x0
  1199 ms  0x7e7c PK11_Encrypt()
  1199 ms  0x7e7c symkey:0x7fdd972bcc00
  1250 ms  0x7e7c SECKEY_DestroyPrivateKey()
  1250 ms  0x7e7c privk:0x7fdd9724e020::7fdd9724e020  b0 95 2f 97                                      ../.
  1251 ms  0x7e7c privk:0x7fdd9724e020::7fdd9724e020  e5 e5 e5 e5                                      ....
  1251 ms  0x7e7c SECKEY_DestroyPrivateKey()
  1251 ms  0x7e7c privk:0x7fdd97248020::7fdd97248020  f0 91 2f 97                                      ../.
  1251 ms  0x7e7c privk:0x7fdd97248020::7fdd97248020  e5 e5 e5 e5                                      ....
  1252 ms  0x7e7c PK11_Encrypt()
  1252 ms  0x7e7c symkey:0x7fdd972bcc00
  1280 ms  0x7e7c PK11_Encrypt()
  1280 ms  0x7e7c symkey:0x7fdd972bcc00
  1308 ms  0x7e7c PK11_Encrypt()
  1308 ms  0x7e7c symkey:0x7fdd972bcc00
  1336 ms  0x7e7c PK11_Encrypt()
  1336 ms  0x7e7c symkey:0x7fdd972bcc00
  1450 ms  0x7e7c PK11_Encrypt()
  1450 ms  0x7e7c symkey:0x7fdd972bcc00
  1481 ms  0x7e7c PK11_Encrypt()
  1481 ms  0x7e7c symkey:0x7fdd972bcc00
  1511 ms  0x7e7c PK11_Encrypt()
  1511 ms  0x7e7c symkey:0x7fdd972bcc00
           /* TID 0x7ed2 */
  1537 ms  0x7ed2 PR_Close()
  1537 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd866141c0
  1538 ms  0x7ed2 PR_Close()
  1538 ms  0x7ed2 fd:0x7fdd86614220
  1681 ms  0x7ed2 PR_Close()
  1681 ms  0x7ed2 fd:0x7fdd866141c0
  1681 ms  0x7ed2 PR_Close()
  1681 ms  0x7ed2 fd:0x7fdd866141f0
  1739 ms  0x7ed2 PR_Close()
  1739 ms  0x7ed2 fd:0x7fdd866141f0
  1740 ms  0x7ed2 PR_Close()
  1740 ms  0x7ed2 fd:0x7fdd86614220
  1950 ms  0x7ed2 PR_Close()
  1950 ms  0x7ed2 fd:0x7fdd86614220
  1951 ms  0x7ed2 PR_Close()
  1951 ms  0x7ed2 fd:0x7fdd86614220
  2163 ms  0x7ed2 PR_Close()
  2163 ms  0x7ed2 fd:0x7fdd86614220
  2163 ms  0x7ed2 PR_Close()
  2163 ms  0x7ed2 fd:0x7fdd86614220
  2290 ms  0x7ed2 PR_Close()
  2290 ms  0x7ed2 fd:0x7fdd86614220
  2291 ms  0x7ed2 PR_Close()
  2291 ms  0x7ed2 fd:0x7fdd86614220
  2301 ms  0x7ed2 PR_Close()
  2301 ms  0x7ed2 fd:0x7fdd86614220
  2301 ms  0x7ed2 PR_Close()
  2301 ms  0x7ed2 fd:0x7fdd86614220
  2310 ms  0x7ed2 PR_Close()
  2310 ms  0x7ed2 fd:0x7fdd86614220
  2310 ms  0x7ed2 PR_Close()
  2310 ms  0x7ed2 fd:0x7fdd86614220
  2313 ms  0x7ed2 PR_Close()
  2313 ms  0x7ed2 fd:0x7fdd86614220
  2313 ms  0x7ed2 PR_Close()
  2313 ms  0x7ed2 fd:0x7fdd86614220
           /* TID 0x7ecf */
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2313 ms  0x7ecf PR_Close()
  2313 ms  0x7ecf fd:0x7fdd86614220
  2314 ms  0x7ecf PR_Close()
  2314 ms  0x7ecf fd:0x7fdd86614220
  2314 ms  0x7ecf PR_Close()
  2314 ms  0x7ecf fd:0x7fdd86614220
  2314 ms  0x7ecf PR_Close()
  2314 ms  0x7ecf fd:0x7fdd86614220
  2314 ms  0x7ecf PR_Close()
  2314 ms  0x7ecf fd:0x7fdd86614220
  2314 ms  0x7ecf PR_Close()
  2314 ms  0x7ecf fd:0x7fdd86614220
           /* TID 0x7ee2 */
  2586 ms  0x7ee2 PR_Close()
  2586 ms  0x7ee2 fd:0x7fdd86614190
  2815 ms  0x7ee2 PR_Close()
  2815 ms  0x7ee2 fd:0x7fdd86614190
  2849 ms  0x7ee2 PR_Close()
  2849 ms  0x7ee2 fd:0x7fdd86614190
           /* TID 0x7e84 */
  4056 ms  0x7e84 PR_Close()
  4056 ms  0x7e84 fd:0x7fdd86614190
  4056 ms  0x7e84 PR_Close()
  4056 ms  0x7e84 fd:0x7fdd866145e0
  4056 ms  0x7e84 PR_Close()
  4056 ms  0x7e84 fd:0x7fdd86614730
           /* TID 0x7e7c */
  4405 ms  0x7e7c SSL_ImportFD()
  4405 ms  0x7e7c ret:0x7fdd865f7790
  4405 ms  0x7e7c SSL_AuthCertificateHook()
  4405 ms  0x7e7c fd:0x7fdd865f7790
  4405 ms  0x7e7c ret:0x0
  4405 ms  0x7e7c PR_Connect()
  4405 ms  0x7e7c fd:0x7fdd865f7790
  4463 ms  0x7e7c SECKEY_CreateECPrivateKey()
  4463 ms  0x7e7c cx:0x7fdd972bd8c8
  4463 ms     | 0x7e7c EC_ValidatePublicKey()
  4463 ms     | 0x7e7c ret:0x0
  4463 ms  0x7e7c ret:0x7fdd8641a820::7fdd8641a820  d0 38 95 98                                      .8..
  4463 ms  0x7e7c SECKEY_CreateECPrivateKey()
  4463 ms  0x7e7c cx:0x7fdd972bd8c8
  4464 ms     | 0x7e7c EC_ValidatePublicKey()
  4466 ms     | 0x7e7c ret:0x0
  4466 ms  0x7e7c ret:0x7fdd8641c820::7fdd8641c820  50 3b 95 98                                      P;..
           /* TID 0x7ed7 */
  4527 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4527 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  4527 ms  SECKEY_ECParamsToKeySize()
  4527 ms  0x7e7c ret:0x100
  4527 ms  0x7e7c SECKEY_CreateECPrivateKey()
  4527 ms  0x7e7c cx:0x7fdd972bd8c8
  4528 ms     | 0x7e7c EC_ValidatePublicKey()
  4529 ms     | 0x7e7c ret:0x0
  4529 ms  0x7e7c ret:0x7fdd86422020::7fdd86422020  b0 3f 95 98                                      .?..
  4529 ms  0x7e7c PK11_PubDeriveWithKDF()
  4529 ms  0x7e7c seckey:0x7fdd86422020
  4529 ms     | 0x7e7c EC_ValidatePublicKey()
  4531 ms     | 0x7e7c ret:0x0
  4532 ms  0x7e7c ret:0x7fdd98944400
  4532 ms  0x7e7c PK11_DeriveWithFlags()
  4532 ms  0x7e7c basekey:0x7fdd98944400
  4532 ms     | 0x7e7c PK11_DeriveWithTemplate()
  4532 ms  0x7e7c ret:0x7fdd865fbe00
  4532 ms  0x7e7c PK11_Derive()
  4532 ms  0x7e7c basekey:0x7fdd865fbe00
  4532 ms     | 0x7e7c PK11_DeriveWithTemplate()
  4533 ms  0x7e7c ret:0x7fdd865fbe80
  4533 ms  0x7e7c SECKEY_DestroyPrivateKey()
  4533 ms  0x7e7c privk:0x7fdd86422020::7fdd86422020  b0 3f 95 98                                      .?..
  4533 ms  0x7e7c privk:0x7fdd86422020::7fdd86422020  e5 e5 e5 e5                                      ....
  4533 ms  0x7e7c PK11_Encrypt()
  4533 ms  0x7e7c symkey:0x7fdd865fc000
  4533 ms  0x7e7c SSL_AuthCertificateComplete()
  4533 ms  0x7e7c fd:0x7fdd865f7790
  4533 ms  0x7e7c err:0x0
  4533 ms  0x7e7c PK11_Encrypt()
  4533 ms  0x7e7c symkey:0x7fdd865fc000
  4533 ms  0x7e7c PK11_Encrypt()
  4533 ms  0x7e7c symkey:0x7fdd865fc000
  4591 ms  0x7e7c SECKEY_DestroyPrivateKey()
  4591 ms  0x7e7c privk:0x7fdd8641c820::7fdd8641c820  50 3b 95 98                                      P;..
  4592 ms  0x7e7c privk:0x7fdd8641c820::7fdd8641c820  e5 e5 e5 e5                                      ....
  4592 ms  0x7e7c SECKEY_DestroyPrivateKey()
  4592 ms  0x7e7c privk:0x7fdd8641a820::7fdd8641a820  d0 38 95 98                                      .8..
  4592 ms  0x7e7c privk:0x7fdd8641a820::7fdd8641a820  e5 e5 e5 e5                                      ....
  4650 ms  0x7e7c PK11_Encrypt()
  4650 ms  0x7e7c symkey:0x7fdd865fc000
  4653 ms  0x7e7c PK11_Encrypt()
  4653 ms  0x7e7c symkey:0x7fdd865fc000
  4654 ms  0x7e7c PK11_Encrypt()
  4654 ms  0x7e7c symkey:0x7fdd865fc000
  4654 ms  0x7e7c PK11_Encrypt()
  4654 ms  0x7e7c symkey:0x7fdd865fc000
  4655 ms  0x7e7c PK11_Encrypt()
  4655 ms  0x7e7c symkey:0x7fdd865fc000
           /* TID 0x7e93 */
  4894 ms  0x7e93 PR_Close()
  4894 ms  0x7e93 fd:0x7fdd864f2250
           /* TID 0x7e7c */
  5027 ms  0x7e7c SSL_ImportFD()
  5027 ms  0x7e7c ret:0x7fdd866592b0
  5027 ms  0x7e7c SSL_AuthCertificateHook()
  5027 ms  0x7e7c fd:0x7fdd866592b0
  5027 ms  0x7e7c ret:0x0
  5028 ms  0x7e7c PR_Connect()
  5028 ms  0x7e7c fd:0x7fdd866592b0
  5028 ms  0x7e7c SSL_ImportFD()
  5028 ms  0x7e7c ret:0x7fdd866592e0
  5028 ms  0x7e7c SSL_AuthCertificateHook()
  5028 ms  0x7e7c fd:0x7fdd866592e0
  5028 ms  0x7e7c ret:0x0
  5028 ms  0x7e7c PR_Connect()
  5028 ms  0x7e7c fd:0x7fdd866592e0
  5028 ms  0x7e7c SSL_ImportFD()
  5028 ms  0x7e7c ret:0x7fdd866591f0
  5028 ms  0x7e7c SSL_AuthCertificateHook()
  5028 ms  0x7e7c fd:0x7fdd866591f0
  5028 ms  0x7e7c ret:0x0
  5028 ms  0x7e7c PR_Connect()
  5028 ms  0x7e7c fd:0x7fdd866591f0
  5028 ms  0x7e7c SSL_ImportFD()
  5028 ms  0x7e7c ret:0x7fdd86659220
  5028 ms  0x7e7c SSL_AuthCertificateHook()
  5028 ms  0x7e7c fd:0x7fdd86659220
  5028 ms  0x7e7c ret:0x0
  5029 ms  0x7e7c PR_Connect()
  5029 ms  0x7e7c fd:0x7fdd86659220
  5029 ms  0x7e7c SSL_ImportFD()
  5029 ms  0x7e7c ret:0x7fdd86659250
  5029 ms  0x7e7c SSL_AuthCertificateHook()
  5029 ms  0x7e7c fd:0x7fdd86659250
  5029 ms  0x7e7c ret:0x0
  5029 ms  0x7e7c PR_Connect()
  5029 ms  0x7e7c fd:0x7fdd86659250
  5088 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5088 ms  0x7e7c cx:0x7fdd972be5c8
  5090 ms     | 0x7e7c EC_ValidatePublicKey()
  5090 ms     | 0x7e7c ret:0x0
  5090 ms  0x7e7c ret:0x7fdd8621e020::7fdd8621e020  30 a8 65 86                                      0.e.
  5090 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5090 ms  0x7e7c cx:0x7fdd972be5c8
  5094 ms     | 0x7e7c EC_ValidatePublicKey()
  5097 ms     | 0x7e7c ret:0x0
  5097 ms  0x7e7c ret:0x7fdd86220020::7fdd86220020  70 a9 65 86                                      p.e.
  5099 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5099 ms  0x7e7c cx:0x7fdd972be768
  5100 ms     | 0x7e7c EC_ValidatePublicKey()
  5100 ms     | 0x7e7c ret:0x0
  5100 ms  0x7e7c ret:0x7fdd86430820::7fdd86430820  b0 aa 65 86                                      ..e.
  5100 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5100 ms  0x7e7c cx:0x7fdd972be768
  5101 ms     | 0x7e7c EC_ValidatePublicKey()
  5104 ms     | 0x7e7c ret:0x0
  5104 ms  0x7e7c ret:0x7fdd989a6820::7fdd989a6820  90 ac 65 86                                      ..e.
  5105 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5105 ms  0x7e7c cx:0x7fdd972be0e8
  5106 ms     | 0x7e7c EC_ValidatePublicKey()
  5106 ms     | 0x7e7c ret:0x0
  5106 ms  0x7e7c ret:0x7fdd866d7020::7fdd866d7020  d0 ad 65 86                                      ..e.
  5106 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5106 ms  0x7e7c cx:0x7fdd972be0e8
  5107 ms     | 0x7e7c EC_ValidatePublicKey()
  5109 ms     | 0x7e7c ret:0x0
  5109 ms  0x7e7c ret:0x7fdd866d9020::7fdd866d9020  b0 af 65 86                                      ..e.
  5110 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5110 ms  0x7e7c cx:0x7fdd972be428
  5110 ms     | 0x7e7c EC_ValidatePublicKey()
  5110 ms     | 0x7e7c ret:0x0
  5110 ms  0x7e7c ret:0x7fdd866db820::7fdd866db820  50 51 22 86                                      PQ".
  5111 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5111 ms  0x7e7c cx:0x7fdd972be428
  5111 ms     | 0x7e7c EC_ValidatePublicKey()
  5113 ms     | 0x7e7c ret:0x0
  5113 ms  0x7e7c ret:0x7fdd866dd820::7fdd866dd820  30 53 22 86                                      0S".
  5114 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5114 ms  0x7e7c cx:0x7fdd972be288
  5114 ms     | 0x7e7c EC_ValidatePublicKey()
  5114 ms     | 0x7e7c ret:0x0
  5116 ms  0x7e7c ret:0x7fdd866e0020::7fdd866e0020  70 54 22 86                                      pT".
  5116 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5116 ms  0x7e7c cx:0x7fdd972be288
  5116 ms     | 0x7e7c EC_ValidatePublicKey()
  5118 ms     | 0x7e7c ret:0x0
  5118 ms  0x7e7c ret:0x7fdd866e2020::7fdd866e2020  50 56 22 86                                      PV".
           /* TID 0x7ed7 */
  5159 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5160 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5160 ms  0x7e7c SSL_AuthCertificateComplete()
  5160 ms  0x7e7c fd:0x7fdd86659220
  5160 ms  0x7e7c err:0x0
           /* TID 0x7ed7 */
  5166 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5166 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5166 ms  0x7e7c SSL_AuthCertificateComplete()
  5166 ms  0x7e7c fd:0x7fdd86659250
  5166 ms  0x7e7c err:0x0
           /* TID 0x7ed7 */
  5173 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5173 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5174 ms  0x7e7c SSL_AuthCertificateComplete()
  5174 ms  0x7e7c fd:0x7fdd866592b0
  5174 ms  0x7e7c err:0x0
           /* TID 0x7ed7 */
  5190 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5190 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5190 ms  0x7e7c SSL_AuthCertificateComplete()
  5190 ms  0x7e7c fd:0x7fdd866591f0
  5190 ms  0x7e7c err:0x0
           /* TID 0x7ed7 */
  5203 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5203 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5204 ms  0x7e7c SSL_AuthCertificateComplete()
  5204 ms  0x7e7c fd:0x7fdd866592e0
  5204 ms  0x7e7c err:0x0
  5216 ms  SECKEY_ECParamsToKeySize()
  5216 ms  0x7e7c ret:0x100
  5216 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5216 ms  0x7e7c cx:0x7fdd972be5c8
  5218 ms     | 0x7e7c EC_ValidatePublicKey()
  5222 ms     | 0x7e7c ret:0x0
  5222 ms  0x7e7c ret:0x7fdd866e8020::7fdd866e8020  80 1d 3d 86                                      ..=.
  5222 ms  0x7e7c PK11_PubDeriveWithKDF()
  5222 ms  0x7e7c seckey:0x7fdd866e8020
  5222 ms     | 0x7e7c EC_ValidatePublicKey()
  5226 ms     | 0x7e7c ret:0x0
  5228 ms  0x7e7c ret:0x7fdd98944400
  5228 ms  0x7e7c PK11_DeriveWithFlags()
  5228 ms  0x7e7c basekey:0x7fdd98944400
  5229 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5229 ms  0x7e7c ret:0x7fdd86257380
  5229 ms  0x7e7c PK11_Derive()
  5229 ms  0x7e7c basekey:0x7fdd86257380
  5229 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5229 ms  0x7e7c ret:0x7fdd86257400
  5229 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5229 ms  0x7e7c privk:0x7fdd866e8020::7fdd866e8020  80 1d 3d 86                                      ..=.
  5229 ms  0x7e7c privk:0x7fdd866e8020::7fdd866e8020  e5 e5 e5 e5                                      ....
  5229 ms  0x7e7c PK11_Encrypt()
  5229 ms  0x7e7c symkey:0x7fdd86257580
  5229 ms  SECKEY_ECParamsToKeySize()
  5229 ms  0x7e7c ret:0x100
  5229 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5229 ms  0x7e7c cx:0x7fdd972be768
  5230 ms     | 0x7e7c EC_ValidatePublicKey()
  5231 ms     | 0x7e7c ret:0x0
  5231 ms  0x7e7c ret:0x7fdd866e8820::7fdd866e8820  80 1d 3d 86                                      ..=.
  5231 ms  0x7e7c PK11_PubDeriveWithKDF()
  5231 ms  0x7e7c seckey:0x7fdd866e8820
  5231 ms     | 0x7e7c EC_ValidatePublicKey()
  5233 ms     | 0x7e7c ret:0x0
  5234 ms  0x7e7c ret:0x7fdd98944400
  5235 ms  0x7e7c PK11_DeriveWithFlags()
  5235 ms  0x7e7c basekey:0x7fdd98944400
  5235 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5235 ms  0x7e7c ret:0x7fdd86257680
  5235 ms  0x7e7c PK11_Derive()
  5235 ms  0x7e7c basekey:0x7fdd86257680
  5235 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5235 ms  0x7e7c ret:0x7fdd86257700
  5235 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5235 ms  0x7e7c privk:0x7fdd866e8820::7fdd866e8820  80 1d 3d 86                                      ..=.
  5235 ms  0x7e7c privk:0x7fdd866e8820::7fdd866e8820  e5 e5 e5 e5                                      ....
  5235 ms  0x7e7c PK11_Encrypt()
  5235 ms  0x7e7c symkey:0x7fdd86257880
  5235 ms  0x7e7c PK11_Encrypt()
  5235 ms  0x7e7c symkey:0x7fdd86257580
  5236 ms  0x7e7c PK11_Encrypt()
  5236 ms  0x7e7c symkey:0x7fdd86257580
  5236 ms  0x7e7c PK11_Encrypt()
  5236 ms  0x7e7c symkey:0x7fdd86257880
  5236 ms  0x7e7c PK11_Encrypt()
  5236 ms  0x7e7c symkey:0x7fdd86257880
  5236 ms  SECKEY_ECParamsToKeySize()
  5236 ms  0x7e7c ret:0x100
  5236 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5236 ms  0x7e7c cx:0x7fdd972be0e8
  5237 ms     | 0x7e7c EC_ValidatePublicKey()
  5238 ms     | 0x7e7c ret:0x0
  5239 ms  0x7e7c ret:0x7fdd866ee820::7fdd866ee820  80 1d 3d 86                                      ..=.
  5239 ms  0x7e7c PK11_PubDeriveWithKDF()
  5239 ms  0x7e7c seckey:0x7fdd866ee820
  5239 ms     | 0x7e7c EC_ValidatePublicKey()
  5240 ms     | 0x7e7c ret:0x0
  5242 ms  0x7e7c ret:0x7fdd98944400
  5242 ms  0x7e7c PK11_DeriveWithFlags()
  5242 ms  0x7e7c basekey:0x7fdd98944400
  5242 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5242 ms  0x7e7c ret:0x7fdd86257b00
  5242 ms  0x7e7c PK11_Derive()
  5242 ms  0x7e7c basekey:0x7fdd86257b00
  5242 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5242 ms  0x7e7c ret:0x7fdd86257b80
  5242 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5242 ms  0x7e7c privk:0x7fdd866ee820::7fdd866ee820  80 1d 3d 86                                      ..=.
  5242 ms  0x7e7c privk:0x7fdd866ee820::7fdd866ee820  e5 e5 e5 e5                                      ....
  5242 ms  0x7e7c PK11_Encrypt()
  5242 ms  0x7e7c symkey:0x7fdd86257d00
  5242 ms  0x7e7c PK11_Encrypt()
  5242 ms  0x7e7c symkey:0x7fdd86257d00
  5243 ms  0x7e7c PK11_Encrypt()
  5243 ms  0x7e7c symkey:0x7fdd86257580
  5263 ms  SECKEY_ECParamsToKeySize()
  5263 ms  0x7e7c ret:0x100
  5263 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5263 ms  0x7e7c cx:0x7fdd972be428
  5264 ms     | 0x7e7c EC_ValidatePublicKey()
  5266 ms     | 0x7e7c ret:0x0
  5266 ms  0x7e7c ret:0x7fdd866f0820::7fdd866f0820  70 1e 3d 86                                      p.=.
  5266 ms  0x7e7c PK11_PubDeriveWithKDF()
  5266 ms  0x7e7c seckey:0x7fdd866f0820
  5266 ms     | 0x7e7c EC_ValidatePublicKey()
  5267 ms     | 0x7e7c ret:0x0
  5269 ms  0x7e7c ret:0x7fdd98944400
  5269 ms  0x7e7c PK11_DeriveWithFlags()
  5269 ms  0x7e7c basekey:0x7fdd98944400
  5269 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5269 ms  0x7e7c ret:0x7fdd86257e00
  5269 ms  0x7e7c PK11_Derive()
  5269 ms  0x7e7c basekey:0x7fdd86257e00
  5269 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5269 ms  0x7e7c ret:0x7fdd86257e80
  5269 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5269 ms  0x7e7c privk:0x7fdd866f0820::7fdd866f0820  70 1e 3d 86                                      p.=.
  5269 ms  0x7e7c privk:0x7fdd866f0820::7fdd866f0820  e5 e5 e5 e5                                      ....
  5269 ms  0x7e7c PK11_Encrypt()
  5269 ms  0x7e7c symkey:0x7fdd86258000
  5272 ms  0x7e7c PK11_Encrypt()
  5272 ms  0x7e7c symkey:0x7fdd86258000
  5273 ms  0x7e7c PK11_Encrypt()
  5273 ms  0x7e7c symkey:0x7fdd86257580
  5282 ms  SECKEY_ECParamsToKeySize()
  5282 ms  0x7e7c ret:0x100
  5282 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5282 ms  0x7e7c cx:0x7fdd972be288
  5283 ms     | 0x7e7c EC_ValidatePublicKey()
  5284 ms     | 0x7e7c ret:0x0
  5284 ms  0x7e7c ret:0x7fdd866f2820::7fdd866f2820  70 1e 3d 86                                      p.=.
  5284 ms  0x7e7c PK11_PubDeriveWithKDF()
  5284 ms  0x7e7c seckey:0x7fdd866f2820
  5284 ms     | 0x7e7c EC_ValidatePublicKey()
  5286 ms     | 0x7e7c ret:0x0
  5288 ms  0x7e7c ret:0x7fdd98944400
  5288 ms  0x7e7c PK11_DeriveWithFlags()
  5288 ms  0x7e7c basekey:0x7fdd98944400
  5288 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5288 ms  0x7e7c ret:0x7fdd86258100
  5288 ms  0x7e7c PK11_Derive()
  5288 ms  0x7e7c basekey:0x7fdd86258100
  5288 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5288 ms  0x7e7c ret:0x7fdd86258180
  5288 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5288 ms  0x7e7c privk:0x7fdd866f2820::7fdd866f2820  70 1e 3d 86                                      p.=.
  5288 ms  0x7e7c privk:0x7fdd866f2820::7fdd866f2820  e5 e5 e5 e5                                      ....
  5288 ms  0x7e7c PK11_Encrypt()
  5288 ms  0x7e7c symkey:0x7fdd86258300
  5288 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5288 ms  0x7e7c privk:0x7fdd86220020::7fdd86220020  70 a9 65 86                                      p.e.
  5289 ms  0x7e7c privk:0x7fdd86220020::7fdd86220020  e5 e5 e5 e5                                      ....
  5289 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5289 ms  0x7e7c privk:0x7fdd8621e020::7fdd8621e020  30 a8 65 86                                      0.e.
  5289 ms  0x7e7c privk:0x7fdd8621e020::7fdd8621e020  e5 e5 e5 e5                                      ....
  5290 ms  0x7e7c PK11_Encrypt()
  5290 ms  0x7e7c symkey:0x7fdd86258300
  5290 ms  0x7e7c PK11_Encrypt()
  5290 ms  0x7e7c symkey:0x7fdd86257580
  5296 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5296 ms  0x7e7c privk:0x7fdd989a6820::7fdd989a6820  90 ac 65 86                                      ..e.
  5296 ms  0x7e7c privk:0x7fdd989a6820::7fdd989a6820  e5 e5 e5 e5                                      ....
  5296 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5296 ms  0x7e7c privk:0x7fdd86430820::7fdd86430820  b0 aa 65 86                                      ..e.
  5296 ms  0x7e7c privk:0x7fdd86430820::7fdd86430820  e5 e5 e5 e5                                      ....
  5310 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5310 ms  0x7e7c privk:0x7fdd866d9020::7fdd866d9020  b0 af 65 86                                      ..e.
  5310 ms  0x7e7c privk:0x7fdd866d9020::7fdd866d9020  e5 e5 e5 e5                                      ....
  5310 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5310 ms  0x7e7c privk:0x7fdd866d7020::7fdd866d7020  d0 ad 65 86                                      ..e.
  5310 ms  0x7e7c privk:0x7fdd866d7020::7fdd866d7020  e5 e5 e5 e5                                      ....
  5310 ms  0x7e7c PR_Close()
  5310 ms  0x7e7c fd:0x7fdd866592b0
  5310 ms     | 0x7e7c PK11_Encrypt()
  5310 ms     | 0x7e7c symkey:0x7fdd86257d00
  5345 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5345 ms  0x7e7c privk:0x7fdd866dd820::7fdd866dd820  30 53 22 86                                      0S".
  5345 ms  0x7e7c privk:0x7fdd866dd820::7fdd866dd820  e5 e5 e5 e5                                      ....
  5345 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5345 ms  0x7e7c privk:0x7fdd866db820::7fdd866db820  50 51 22 86                                      PQ".
  5345 ms  0x7e7c privk:0x7fdd866db820::7fdd866db820  e5 e5 e5 e5                                      ....
  5346 ms  0x7e7c PR_Close()
  5346 ms  0x7e7c fd:0x7fdd866591f0
  5346 ms     | 0x7e7c PK11_Encrypt()
  5346 ms     | 0x7e7c symkey:0x7fdd86258000
  5348 ms  0x7e7c PK11_Encrypt()
  5348 ms  0x7e7c symkey:0x7fdd86257580
  5356 ms  0x7e7c PK11_Encrypt()
  5356 ms  0x7e7c symkey:0x7fdd86257880
  5371 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5371 ms  0x7e7c privk:0x7fdd866e2020::7fdd866e2020  50 56 22 86                                      PV".
  5371 ms  0x7e7c privk:0x7fdd866e2020::7fdd866e2020  e5 e5 e5 e5                                      ....
  5372 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5372 ms  0x7e7c privk:0x7fdd866e0020::7fdd866e0020  70 54 22 86                                      pT".
  5372 ms  0x7e7c privk:0x7fdd866e0020::7fdd866e0020  e5 e5 e5 e5                                      ....
  5372 ms  0x7e7c PR_Close()
  5372 ms  0x7e7c fd:0x7fdd866592e0
  5372 ms     | 0x7e7c PK11_Encrypt()
  5372 ms     | 0x7e7c symkey:0x7fdd86258300
  5411 ms  0x7e7c SSL_ImportFD()
           /* TID 0x7e84 */
  5423 ms  0x7e84 PR_Close()
  5423 ms  0x7e84 fd:0x7fdd866594f0
  5424 ms  0x7e84 PR_Close()
  5424 ms  0x7e84 fd:0x7fdd863f3f70
           /* TID 0x7e7c */
  5424 ms  0x7e7c ret:0x7fdd866593d0
  5424 ms  0x7e7c SSL_AuthCertificateHook()
  5424 ms  0x7e7c fd:0x7fdd866593d0
  5424 ms  0x7e7c ret:0x0
  5427 ms  0x7e7c PK11_Encrypt()
  5427 ms  0x7e7c symkey:0x7fdd86257580
  5428 ms  0x7e7c PK11_Encrypt()
  5428 ms  0x7e7c symkey:0x7fdd86257580
  5428 ms  0x7e7c PK11_Encrypt()
  5428 ms  0x7e7c symkey:0x7fdd86257580
  5428 ms  0x7e7c PR_Connect()
  5428 ms  0x7e7c fd:0x7fdd866593d0
  5429 ms  0x7e7c SSL_ImportFD()
  5429 ms  0x7e7c ret:0x7fdd8651e940
  5429 ms  0x7e7c SSL_AuthCertificateHook()
  5429 ms  0x7e7c fd:0x7fdd8651e940
  5429 ms  0x7e7c ret:0x0
  5429 ms  0x7e7c PR_Connect()
  5429 ms  0x7e7c fd:0x7fdd8651e940
  5429 ms  0x7e7c SSL_ImportFD()
  5429 ms  0x7e7c ret:0x7fdd86659430
  5429 ms  0x7e7c SSL_AuthCertificateHook()
  5429 ms  0x7e7c fd:0x7fdd86659430
  5429 ms  0x7e7c ret:0x0
  5429 ms  0x7e7c PR_Connect()
  5429 ms  0x7e7c fd:0x7fdd86659430
  5430 ms  0x7e7c SSL_ImportFD()
  5430 ms  0x7e7c ret:0x7fdd866592b0
  5430 ms  0x7e7c SSL_AuthCertificateHook()
  5430 ms  0x7e7c fd:0x7fdd866592b0
  5430 ms  0x7e7c ret:0x0
  5430 ms  0x7e7c PR_Connect()
  5430 ms  0x7e7c fd:0x7fdd866592b0
  5431 ms  0x7e7c PK11_Encrypt()
  5431 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  5468 ms  0x7e84 PR_Close()
  5468 ms  0x7e84 fd:0x7fdd863d5790
  5471 ms  0x7e84 PR_Close()
  5471 ms  0x7e84 fd:0x7fdd863d5790
           /* TID 0x7e7c */
  5486 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5486 ms  0x7e7c cx:0x7fdd972be288
  5486 ms     | 0x7e7c EC_ValidatePublicKey()
  5486 ms     | 0x7e7c ret:0x0
  5486 ms  0x7e7c ret:0x7fdd86431820::7fdd86431820  20 54 22 86                                       T".
  5486 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5486 ms  0x7e7c cx:0x7fdd972be288
  5487 ms     | 0x7e7c EC_ValidatePublicKey()
  5489 ms     | 0x7e7c ret:0x0
  5489 ms  0x7e7c ret:0x7fdd866d8020::7fdd866d8020  10 5a 22 86                                      .Z".
  5489 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5489 ms  0x7e7c cx:0x7fdd972be428
  5493 ms     | 0x7e7c EC_ValidatePublicKey()
  5493 ms     | 0x7e7c ret:0x0
  5493 ms  0x7e7c ret:0x7fdd866da820::7fdd866da820  80 5d 22 86                                      .]".
  5493 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5493 ms  0x7e7c cx:0x7fdd972be428
  5494 ms     | 0x7e7c EC_ValidatePublicKey()
  5496 ms     | 0x7e7c ret:0x0
  5496 ms  0x7e7c ret:0x7fdd866dc820::7fdd866dc820  10 1a 3d 86                                      ..=.
  5499 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5499 ms  0x7e7c cx:0x7fdd972be0e8
  5499 ms     | 0x7e7c EC_ValidatePublicKey()
  5499 ms     | 0x7e7c ret:0x0
  5499 ms  0x7e7c ret:0x7fdd866df020::7fdd866df020  70 1e 3d 86                                      p.=.
  5500 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5500 ms  0x7e7c cx:0x7fdd972be0e8
  5500 ms     | 0x7e7c EC_ValidatePublicKey()
  5502 ms     | 0x7e7c ret:0x0
  5502 ms  0x7e7c ret:0x7fdd866e1020::7fdd866e1020  40 cc 52 86                                      @.R.
           /* TID 0x7e84 */
  5509 ms  0x7e84 PR_Close()
  5509 ms  0x7e84 fd:0x7fdd863f3fa0
           /* TID 0x7e7c */
  5510 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5510 ms  0x7e7c cx:0x7fdd972bf2c8
  5510 ms     | 0x7e7c EC_ValidatePublicKey()
  5510 ms     | 0x7e7c ret:0x0
  5510 ms  0x7e7c ret:0x7fdd866e9820::7fdd866e9820  80 cd 52 86                                      ..R.
  5510 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5510 ms  0x7e7c cx:0x7fdd972bf2c8
  5511 ms     | 0x7e7c EC_ValidatePublicKey()
  5512 ms     | 0x7e7c ret:0x0
  5512 ms  0x7e7c ret:0x7fdd866ec020::7fdd866ec020  f0 a6 65 86                                      ..e.
           /* TID 0x7e84 */
  5516 ms  0x7e84 PR_Close()
  5516 ms  0x7e84 fd:0x7fdd86659340
           /* TID 0x7e7c */
  5522 ms  0x7e7c SSL_ImportFD()
  5522 ms  0x7e7c ret:0x7fdd86659c10
  5522 ms  0x7e7c SSL_AuthCertificateHook()
  5522 ms  0x7e7c fd:0x7fdd86659c10
  5522 ms  0x7e7c ret:0x0
  5523 ms  0x7e7c PK11_Encrypt()
  5523 ms  0x7e7c symkey:0x7fdd86257580
  5523 ms  0x7e7c PR_Connect()
  5523 ms  0x7e7c fd:0x7fdd86659c10
  5524 ms  0x7e7c PK11_Encrypt()
  5524 ms  0x7e7c symkey:0x7fdd86257580
  5529 ms  0x7e7c PK11_Encrypt()
  5529 ms  0x7e7c symkey:0x7fdd86257580
  5539 ms  0x7e7c PK11_Encrypt()
  5539 ms  0x7e7c symkey:0x7fdd86257880
           /* TID 0x7e84 */
  5543 ms  0x7e84 PR_Close()
  5543 ms  0x7e84 fd:0x7fdd863f3fd0
  5543 ms  0x7e84 PR_Close()
  5543 ms  0x7e84 fd:0x7fdd86659eb0
  5545 ms  0x7e84 PR_Close()
  5545 ms  0x7e84 fd:0x7fdd863f3fd0
  5547 ms  0x7e84 PR_Close()
  5547 ms  0x7e84 fd:0x7fdd863fb070
           /* TID 0x7ed7 */
  5547 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5547 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5548 ms  0x7e7c SSL_AuthCertificateComplete()
  5548 ms  0x7e7c fd:0x7fdd8651e940
  5548 ms  0x7e7c err:0x0
  5553 ms  0x7e7c SSL_ImportFD()
  5553 ms  0x7e7c ret:0x7fdd86659fa0
  5553 ms  0x7e7c SSL_AuthCertificateHook()
  5553 ms  0x7e7c fd:0x7fdd86659fa0
  5553 ms  0x7e7c ret:0x0
  5553 ms  0x7e7c PR_Connect()
  5553 ms  0x7e7c fd:0x7fdd86659fa0
           /* TID 0x7ed7 */
  5557 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5557 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5557 ms  0x7e7c SSL_AuthCertificateComplete()
  5557 ms  0x7e7c fd:0x7fdd86659430
  5557 ms  0x7e7c err:0x0
  5563 ms  0x7e7c PK11_Encrypt()
  5563 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7ed7 */
  5571 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5572 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5572 ms  0x7e7c SSL_AuthCertificateComplete()
  5572 ms  0x7e7c fd:0x7fdd866593d0
  5572 ms  0x7e7c err:0x0
  5580 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5580 ms  0x7e7c cx:0x7fdd972bf468
  5581 ms     | 0x7e7c EC_ValidatePublicKey()
  5581 ms     | 0x7e7c ret:0x0
  5581 ms  0x7e7c ret:0x7fdd862de820::7fdd862de820  60 af 65 86                                      `.e.
  5581 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5581 ms  0x7e7c cx:0x7fdd972bf468
  5581 ms     | 0x7e7c EC_ValidatePublicKey()
  5587 ms     | 0x7e7c ret:0x0
  5587 ms  0x7e7c ret:0x7fdd862e0820::7fdd862e0820  d0 53 24 86                                      .S$.
           /* TID 0x7e84 */
  5596 ms  0x7e84 PR_Close()
  5596 ms  0x7e84 fd:0x7fdd862c2940
           /* TID 0x7ed7 */
  5597 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5597 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5597 ms  0x7e7c SSL_AuthCertificateComplete()
  5597 ms  0x7e7c fd:0x7fdd866592b0
  5597 ms  0x7e7c err:0x0
           /* TID 0x7e84 */
  5598 ms  0x7e84 PR_Close()
  5598 ms  0x7e84 fd:0x7fdd862c2a00
           /* TID 0x7e7c */
  5603 ms  SECKEY_ECParamsToKeySize()
  5603 ms  0x7e7c ret:0x100
  5603 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5603 ms  0x7e7c cx:0x7fdd972be288
  5603 ms     | 0x7e7c EC_ValidatePublicKey()
  5605 ms     | 0x7e7c ret:0x0
  5605 ms  0x7e7c ret:0x7fdd862e3820::7fdd862e3820  c0 54 24 86                                      .T$.
  5605 ms  0x7e7c PK11_PubDeriveWithKDF()
  5605 ms  0x7e7c seckey:0x7fdd862e3820
  5605 ms     | 0x7e7c EC_ValidatePublicKey()
  5607 ms     | 0x7e7c ret:0x0
  5609 ms  0x7e7c ret:0x7fdd86258180
  5609 ms  0x7e7c PK11_DeriveWithFlags()
  5609 ms  0x7e7c basekey:0x7fdd86258180
  5609 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5609 ms  0x7e7c ret:0x7fdd86258100
  5609 ms  0x7e7c PK11_Derive()
  5609 ms  0x7e7c basekey:0x7fdd86258100
  5609 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5609 ms  0x7e7c ret:0x7fdd86257e80
  5609 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5609 ms  0x7e7c privk:0x7fdd862e3820::7fdd862e3820  c0 54 24 86                                      .T$.
  5609 ms  0x7e7c privk:0x7fdd862e3820::7fdd862e3820  e5 e5 e5 e5                                      ....
  5609 ms  0x7e7c PK11_Encrypt()
  5609 ms  0x7e7c symkey:0x7fdd86258200
           /* TID 0x7e84 */
  5618 ms  0x7e84 PR_Close()
  5618 ms  0x7e84 fd:0x7fdd862c28b0
           /* TID 0x7e7c */
  5619 ms  SECKEY_ECParamsToKeySize()
  5619 ms  0x7e7c ret:0x100
  5619 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5619 ms  0x7e7c cx:0x7fdd972be428
  5619 ms     | 0x7e7c EC_ValidatePublicKey()
  5621 ms     | 0x7e7c ret:0x0
  5621 ms  0x7e7c ret:0x7fdd862e4820::7fdd862e4820  70 59 24 86                                      pY$.
  5621 ms  0x7e7c PK11_PubDeriveWithKDF()
  5621 ms  0x7e7c seckey:0x7fdd862e4820
  5621 ms     | 0x7e7c EC_ValidatePublicKey()
  5622 ms     | 0x7e7c ret:0x0
  5624 ms  0x7e7c ret:0x7fdd86258180
  5624 ms  0x7e7c PK11_DeriveWithFlags()
  5624 ms  0x7e7c basekey:0x7fdd86258180
  5624 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5624 ms  0x7e7c ret:0x7fdd86257e00
  5624 ms  0x7e7c PK11_Derive()
  5624 ms  0x7e7c basekey:0x7fdd86257e00
  5624 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5624 ms  0x7e7c ret:0x7fdd86257b80
  5624 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5624 ms  0x7e7c privk:0x7fdd862e4820::7fdd862e4820  70 59 24 86                                      pY$.
  5624 ms  0x7e7c privk:0x7fdd862e4820::7fdd862e4820  e5 e5 e5 e5                                      ....
  5624 ms  0x7e7c PK11_Encrypt()
  5624 ms  0x7e7c symkey:0x7fdd86257f00
  5637 ms  0x7e7c PK11_Encrypt()
  5637 ms  0x7e7c symkey:0x7fdd86258200
  5637 ms  0x7e7c PK11_Encrypt()
  5637 ms  0x7e7c symkey:0x7fdd86257f00
  5638 ms  SECKEY_ECParamsToKeySize()
  5638 ms  0x7e7c ret:0x100
  5638 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5638 ms  0x7e7c cx:0x7fdd972be0e8
  5638 ms     | 0x7e7c EC_ValidatePublicKey()
  5640 ms     | 0x7e7c ret:0x0
  5640 ms  0x7e7c ret:0x7fdd862e8020::7fdd862e8020  c0 59 24 86                                      .Y$.
  5640 ms  0x7e7c PK11_PubDeriveWithKDF()
  5640 ms  0x7e7c seckey:0x7fdd862e8020
  5640 ms     | 0x7e7c EC_ValidatePublicKey()
  5641 ms     | 0x7e7c ret:0x0
  5643 ms  0x7e7c ret:0x7fdd86258180
  5643 ms  0x7e7c PK11_DeriveWithFlags()
  5643 ms  0x7e7c basekey:0x7fdd86258180
  5643 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5643 ms  0x7e7c ret:0x7fdd86257b00
  5643 ms  0x7e7c PK11_Derive()
  5643 ms  0x7e7c basekey:0x7fdd86257b00
  5643 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5643 ms  0x7e7c ret:0x7fdd98944400
  5643 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5643 ms  0x7e7c privk:0x7fdd862e8020::7fdd862e8020  c0 59 24 86                                      .Y$.
  5643 ms  0x7e7c privk:0x7fdd862e8020::7fdd862e8020  e5 e5 e5 e5                                      ....
  5643 ms  0x7e7c PK11_Encrypt()
  5643 ms  0x7e7c symkey:0x7fdd86257c00
  5647 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5647 ms  0x7e7c cx:0x7fdd972bfc88
  5648 ms     | 0x7e7c EC_ValidatePublicKey()
  5648 ms     | 0x7e7c ret:0x0
  5648 ms  0x7e7c ret:0x7fdd862e8820::7fdd862e8820  20 59 24 86                                       Y$.
  5648 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5648 ms  0x7e7c cx:0x7fdd972bfc88
  5649 ms     | 0x7e7c EC_ValidatePublicKey()
  5650 ms     | 0x7e7c ret:0x0
  5650 ms  0x7e7c ret:0x7fdd862ea820::7fdd862ea820  00 5b 24 86                                      .[$.
           /* TID 0x7e84 */
  5655 ms  0x7e84 PR_Close()
  5655 ms  0x7e84 fd:0x7fdd862c28b0
           /* TID 0x7e7c */
  5655 ms  0x7e7c PK11_Encrypt()
  5655 ms  0x7e7c symkey:0x7fdd86257580
  5657 ms  SECKEY_ECParamsToKeySize()
  5657 ms  0x7e7c ret:0x100
  5657 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5657 ms  0x7e7c cx:0x7fdd972bf2c8
  5658 ms     | 0x7e7c EC_ValidatePublicKey()
  5659 ms     | 0x7e7c ret:0x0
  5659 ms  0x7e7c ret:0x7fdd862ee820::7fdd862ee820  d0 5d 24 86                                      .]$.
  5659 ms  0x7e7c PK11_PubDeriveWithKDF()
  5659 ms  0x7e7c seckey:0x7fdd862ee820
  5659 ms     | 0x7e7c EC_ValidatePublicKey()
  5674 ms     | 0x7e7c ret:0x0
  5675 ms  0x7e7c ret:0x7fdd86258180
  5675 ms  0x7e7c PK11_DeriveWithFlags()
  5675 ms  0x7e7c basekey:0x7fdd86258180
  5675 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5675 ms  0x7e7c ret:0x7fdd86136780
  5675 ms  0x7e7c PK11_Derive()
  5675 ms  0x7e7c basekey:0x7fdd86136780
  5675 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5675 ms  0x7e7c ret:0x7fdd86136800
  5675 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5675 ms  0x7e7c privk:0x7fdd862ee820::7fdd862ee820  d0 5d 24 86                                      .]$.
  5676 ms  0x7e7c privk:0x7fdd862ee820::7fdd862ee820  e5 e5 e5 e5                                      ....
  5676 ms  0x7e7c PK11_Encrypt()
  5676 ms  0x7e7c symkey:0x7fdd86136980
  5679 ms  0x7e7c PK11_Encrypt()
  5679 ms  0x7e7c symkey:0x7fdd86257c00
           /* TID 0x7ed7 */
  5681 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5681 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5681 ms  0x7e7c PK11_Encrypt()
  5681 ms  0x7e7c symkey:0x7fdd86257580
  5682 ms  0x7e7c PK11_Encrypt()
  5682 ms  0x7e7c symkey:0x7fdd86257580
  5682 ms  0x7e7c PK11_Encrypt()
  5682 ms  0x7e7c symkey:0x7fdd86257580
  5682 ms  0x7e7c SSL_AuthCertificateComplete()
  5682 ms  0x7e7c fd:0x7fdd86659c10
  5682 ms  0x7e7c err:0x0
  5688 ms  0x7e7c PK11_Encrypt()
  5688 ms  0x7e7c symkey:0x7fdd86257880
  5691 ms  0x7e7c PK11_Encrypt()
  5691 ms  0x7e7c symkey:0x7fdd86136980
  5692 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5692 ms  0x7e7c privk:0x7fdd866dc820::7fdd866dc820  10 1a 3d 86                                      ..=.
  5692 ms  0x7e7c privk:0x7fdd866dc820::7fdd866dc820  e5 e5 e5 e5                                      ....
  5692 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5692 ms  0x7e7c privk:0x7fdd866da820::7fdd866da820  80 5d 22 86                                      .]".
  5692 ms  0x7e7c privk:0x7fdd866da820::7fdd866da820  e5 e5 e5 e5                                      ....
  5692 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5692 ms  0x7e7c privk:0x7fdd866d8020::7fdd866d8020  10 5a 22 86                                      .Z".
  5692 ms  0x7e7c privk:0x7fdd866d8020::7fdd866d8020  e5 e5 e5 e5                                      ....
  5692 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5692 ms  0x7e7c privk:0x7fdd86431820::7fdd86431820  20 54 22 86                                       T".
  5692 ms  0x7e7c privk:0x7fdd86431820::7fdd86431820  e5 e5 e5 e5                                      ....
  5692 ms  0x7e7c PR_Close()
  5692 ms  0x7e7c fd:0x7fdd8651e940
  5692 ms     | 0x7e7c PK11_Encrypt()
  5692 ms     | 0x7e7c symkey:0x7fdd86258200
  5693 ms  0x7e7c PR_Close()
  5693 ms  0x7e7c fd:0x7fdd86659430
  5693 ms     | 0x7e7c PK11_Encrypt()
  5693 ms     | 0x7e7c symkey:0x7fdd86257f00
  5697 ms  0x7e7c PK11_Encrypt()
  5697 ms  0x7e7c symkey:0x7fdd86257580
  5701 ms  SECKEY_ECParamsToKeySize()
  5701 ms  0x7e7c ret:0x100
  5701 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5701 ms  0x7e7c cx:0x7fdd972bf468
  5702 ms     | 0x7e7c EC_ValidatePublicKey()
  5704 ms     | 0x7e7c ret:0x0
  5704 ms  0x7e7c ret:0x7fdd862e2820::7fdd862e2820  c0 54 22 86                                      .T".
  5704 ms  0x7e7c PK11_PubDeriveWithKDF()
  5704 ms  0x7e7c seckey:0x7fdd862e2820
  5704 ms     | 0x7e7c EC_ValidatePublicKey()
  5706 ms     | 0x7e7c ret:0x0
  5707 ms  0x7e7c ret:0x7fdd86257b80
  5707 ms  0x7e7c PK11_DeriveWithFlags()
  5707 ms  0x7e7c basekey:0x7fdd86257b80
  5707 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5707 ms  0x7e7c ret:0x7fdd86257e00
  5707 ms  0x7e7c PK11_Derive()
  5707 ms  0x7e7c basekey:0x7fdd86257e00
  5707 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5707 ms  0x7e7c ret:0x7fdd86257e80
  5707 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5707 ms  0x7e7c privk:0x7fdd862e2820::7fdd862e2820  c0 54 22 86                                      .T".
  5708 ms  0x7e7c privk:0x7fdd862e2820::7fdd862e2820  e5 e5 e5 e5                                      ....
  5708 ms  0x7e7c PK11_Encrypt()
  5708 ms  0x7e7c symkey:0x7fdd86257f80
           /* TID 0x7e84 */
  5718 ms  0x7e84 PR_Close()
  5718 ms  0x7e84 fd:0x7fdd862c23a0
           /* TID 0x7e7c */
  5718 ms  0x7e7c PK11_Encrypt()
  5718 ms  0x7e7c symkey:0x7fdd86257f80
           /* TID 0x7e84 */
  5719 ms  0x7e84 PR_Close()
  5719 ms  0x7e84 fd:0x7fdd862c23a0
           /* TID 0x7ed7 */
  5724 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5724 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  5724 ms  SECKEY_ECParamsToKeySize()
  5724 ms  0x7e7c ret:0x100
  5724 ms  0x7e7c SECKEY_CreateECPrivateKey()
  5724 ms  0x7e7c cx:0x7fdd972bfc88
  5725 ms     | 0x7e7c EC_ValidatePublicKey()
  5727 ms     | 0x7e7c ret:0x0
  5727 ms  0x7e7c ret:0x7fdd862f6820::7fdd862f6820  40 5c 22 86                                      @".
  5727 ms  0x7e7c PK11_PubDeriveWithKDF()
  5727 ms  0x7e7c seckey:0x7fdd862f6820
  5727 ms     | 0x7e7c EC_ValidatePublicKey()
  5728 ms     | 0x7e7c ret:0x0
  5730 ms  0x7e7c ret:0x7fdd86257b80
  5730 ms  0x7e7c PK11_DeriveWithFlags()
  5730 ms  0x7e7c basekey:0x7fdd86257b80
  5730 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5730 ms  0x7e7c ret:0x7fdd86258100
  5730 ms  0x7e7c PK11_Derive()
  5730 ms  0x7e7c basekey:0x7fdd86258100
  5730 ms     | 0x7e7c PK11_DeriveWithTemplate()
  5730 ms  0x7e7c ret:0x7fdd86258180
  5730 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5730 ms  0x7e7c privk:0x7fdd862f6820::7fdd862f6820  40 5c 22 86                                      @".
  5730 ms  0x7e7c privk:0x7fdd862f6820::7fdd862f6820  e5 e5 e5 e5                                      ....
  5730 ms  0x7e7c PK11_Encrypt()
  5730 ms  0x7e7c symkey:0x7fdd86258280
  5735 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5735 ms  0x7e7c privk:0x7fdd866e1020::7fdd866e1020  40 cc 52 86                                      @.R.
  5735 ms  0x7e7c privk:0x7fdd866e1020::7fdd866e1020  e5 e5 e5 e5                                      ....
  5735 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5735 ms  0x7e7c privk:0x7fdd866df020::7fdd866df020  70 1e 3d 86                                      p.=.
  5735 ms  0x7e7c privk:0x7fdd866df020::7fdd866df020  e5 e5 e5 e5                                      ....
  5735 ms  0x7e7c PR_Close()
  5735 ms  0x7e7c fd:0x7fdd866593d0
  5735 ms     | 0x7e7c PK11_Encrypt()
  5735 ms     | 0x7e7c symkey:0x7fdd86257c00
  5735 ms  0x7e7c SSL_AuthCertificateComplete()
  5735 ms  0x7e7c fd:0x7fdd86659fa0
  5735 ms  0x7e7c err:0x0
  5736 ms  0x7e7c PK11_Encrypt()
  5736 ms  0x7e7c symkey:0x7fdd86258280
  5736 ms  0x7e7c PK11_Encrypt()
  5736 ms  0x7e7c symkey:0x7fdd86258280
  5747 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5747 ms  0x7e7c privk:0x7fdd866ec020::7fdd866ec020  f0 a6 65 86                                      ..e.
  5747 ms  0x7e7c privk:0x7fdd866ec020::7fdd866ec020  e5 e5 e5 e5                                      ....
  5747 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5747 ms  0x7e7c privk:0x7fdd866e9820::7fdd866e9820  80 cd 52 86                                      ..R.
  5747 ms  0x7e7c privk:0x7fdd866e9820::7fdd866e9820  e5 e5 e5 e5                                      ....
  5747 ms  0x7e7c PR_Close()
  5747 ms  0x7e7c fd:0x7fdd866592b0
  5747 ms     | 0x7e7c PK11_Encrypt()
  5747 ms     | 0x7e7c symkey:0x7fdd86136980
           /* TID 0x7e84 */
  5752 ms  0x7e84 PR_Close()
  5752 ms  0x7e84 fd:0x7fdd862c2580
           /* TID 0x7e7c */
  5765 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5765 ms  0x7e7c privk:0x7fdd862e0820::7fdd862e0820  d0 53 24 86                                      .S$.
  5765 ms  0x7e7c privk:0x7fdd862e0820::7fdd862e0820  e5 e5 e5 e5                                      ....
  5766 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5766 ms  0x7e7c privk:0x7fdd862de820::7fdd862de820  60 af 65 86                                      `.e.
  5766 ms  0x7e7c privk:0x7fdd862de820::7fdd862de820  e5 e5 e5 e5                                      ....
  5766 ms  0x7e7c PR_Close()
  5766 ms  0x7e7c fd:0x7fdd86659c10
  5766 ms     | 0x7e7c PK11_Encrypt()
  5766 ms     | 0x7e7c symkey:0x7fdd86257f80
           /* TID 0x7e84 */
  5777 ms  0x7e84 PR_Close()
  5777 ms  0x7e84 fd:0x7fdd862c2580
  5779 ms  0x7e84 PR_Close()
  5779 ms  0x7e84 fd:0x7fdd862c2580
  5780 ms  0x7e84 PR_Close()
  5780 ms  0x7e84 fd:0x7fdd862c2580
           /* TID 0x7e7c */
  5792 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5792 ms  0x7e7c privk:0x7fdd862ea820::7fdd862ea820  00 5b 24 86                                      .[$.
  5792 ms  0x7e7c privk:0x7fdd862ea820::7fdd862ea820  e5 e5 e5 e5                                      ....
  5792 ms  0x7e7c SECKEY_DestroyPrivateKey()
  5792 ms  0x7e7c privk:0x7fdd862e8820::7fdd862e8820  20 59 24 86                                       Y$.
  5792 ms  0x7e7c privk:0x7fdd862e8820::7fdd862e8820  e5 e5 e5 e5                                      ....
  5797 ms  0x7e7c PK11_Encrypt()
  5797 ms  0x7e7c symkey:0x7fdd86257880
           /* TID 0x7e84 */
  5800 ms  0x7e84 PR_Close()
  5800 ms  0x7e84 fd:0x7fdd862c2580
           /* TID 0x7e7c */
  5844 ms  0x7e7c PK11_Encrypt()
  5844 ms  0x7e7c symkey:0x7fdd86257580
  5849 ms  0x7e7c PK11_Encrypt()
  5849 ms  0x7e7c symkey:0x7fdd86258280
           /* TID 0x7e84 */
  5865 ms  0x7e84 PR_Close()
  5865 ms  0x7e84 fd:0x7fdd862c2580
  5914 ms  0x7e84 PR_Close()
  5914 ms  0x7e84 fd:0x7fdd862c2580
           /* TID 0x7e7c */
  5914 ms  0x7e7c PK11_Encrypt()
  5914 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  5939 ms  0x7e84 PR_Close()
  5939 ms  0x7e84 fd:0x7fdd863fb100
           /* TID 0x7e7c */
  5948 ms  0x7e7c PK11_Encrypt()
  5948 ms  0x7e7c symkey:0x7fdd86257580
  5958 ms  0x7e7c SSL_ImportFD()
  5958 ms  0x7e7c ret:0x7fdd8651ed90
  5958 ms  0x7e7c SSL_AuthCertificateHook()
  5958 ms  0x7e7c fd:0x7fdd8651ed90
  5958 ms  0x7e7c ret:0x0
  5958 ms  0x7e7c PR_Connect()
  5958 ms  0x7e7c fd:0x7fdd8651ed90
  5966 ms  0x7e7c SSL_ImportFD()
  5966 ms  0x7e7c ret:0x7fdd86659460
  5966 ms  0x7e7c SSL_AuthCertificateHook()
  5966 ms  0x7e7c fd:0x7fdd86659460
  5966 ms  0x7e7c ret:0x0
  5966 ms  0x7e7c PR_Connect()
  5966 ms  0x7e7c fd:0x7fdd86659460
  5971 ms  0x7e7c SSL_ImportFD()
  5971 ms  0x7e7c ret:0x7fdd86659a00
  5971 ms  0x7e7c SSL_AuthCertificateHook()
  5971 ms  0x7e7c fd:0x7fdd86659a00
  5971 ms  0x7e7c ret:0x0
  5971 ms  0x7e7c PR_Connect()
  5971 ms  0x7e7c fd:0x7fdd86659a00
           /* TID 0x7e84 */
  5974 ms  0x7e84 PR_Close()
  5974 ms  0x7e84 fd:0x7fdd862c2670
           /* TID 0x7e7c */
  5993 ms  0x7e7c PK11_Encrypt()
  5993 ms  0x7e7c symkey:0x7fdd865fc000
  6014 ms  0x7e7c SSL_ImportFD()
  6014 ms  0x7e7c ret:0x7fdd86197cd0
  6014 ms  0x7e7c SSL_AuthCertificateHook()
  6014 ms  0x7e7c fd:0x7fdd86197cd0
  6014 ms  0x7e7c ret:0x0
  6014 ms  0x7e7c PK11_Encrypt()
  6014 ms  0x7e7c symkey:0x7fdd86257580
  6015 ms  0x7e7c PR_Connect()
  6015 ms  0x7e7c fd:0x7fdd86197cd0
           /* TID 0x7e84 */
  6035 ms  0x7e84 PR_Close()
  6035 ms  0x7e84 fd:0x7fdd86197610
           /* TID 0x7e7c */
  6076 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6076 ms  0x7e7c cx:0x7fdd972bf468
  6077 ms     | 0x7e7c EC_ValidatePublicKey()
  6077 ms     | 0x7e7c ret:0x0
  6077 ms  0x7e7c ret:0x7fdd862f6820::7fdd862f6820  20 ce 52 86                                       .R.
  6077 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6077 ms  0x7e7c cx:0x7fdd972bf468
  6077 ms     | 0x7e7c EC_ValidatePublicKey()
  6079 ms     | 0x7e7c ret:0x0
  6079 ms  0x7e7c ret:0x7fdd862f8820::7fdd862f8820  a0 a6 65 86                                      ..e.
  6085 ms  0x7e7c PK11_Encrypt()
  6085 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  6095 ms  0x7e84 PR_Close()
  6095 ms  0x7e84 fd:0x7fdd863d5790
           /* TID 0x7ed7 */
  6142 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6143 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  6143 ms  0x7e7c SSL_AuthCertificateComplete()
  6143 ms  0x7e7c fd:0x7fdd86197cd0
  6143 ms  0x7e7c err:0x0
  6146 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6146 ms  0x7e7c cx:0x7fdd972be0e8
  6146 ms     | 0x7e7c EC_ValidatePublicKey()
  6146 ms     | 0x7e7c ret:0x0
  6146 ms  0x7e7c ret:0x7fdd86420820::7fdd86420820  50 ab 65 86                                      P.e.
  6147 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6147 ms  0x7e7c cx:0x7fdd972be0e8
  6147 ms     | 0x7e7c EC_ValidatePublicKey()
  6149 ms     | 0x7e7c ret:0x0
  6149 ms  0x7e7c ret:0x7fdd866d6820::7fdd866d6820  d0 ad 65 86                                      ..e.
  6153 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6153 ms  0x7e7c cx:0x7fdd972be428
  6154 ms     | 0x7e7c EC_ValidatePublicKey()
  6154 ms     | 0x7e7c ret:0x0
  6154 ms  0x7e7c ret:0x7fdd866da020::7fdd866da020  30 c8 4f a6                                      0.O.
  6154 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6154 ms  0x7e7c cx:0x7fdd972be428
  6154 ms     | 0x7e7c EC_ValidatePublicKey()
  6156 ms     | 0x7e7c ret:0x0
  6156 ms  0x7e7c ret:0x7fdd866dc020::7fdd866dc020  30 cd 4f a6                                      0.O.
  6162 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6162 ms  0x7e7c cx:0x7fdd972bf2c8
  6163 ms     | 0x7e7c EC_ValidatePublicKey()
  6163 ms     | 0x7e7c ret:0x0
  6163 ms  0x7e7c ret:0x7fdd866df020::7fdd866df020  50 f1 1a 86                                      P...
  6163 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6163 ms  0x7e7c cx:0x7fdd972bf2c8
  6164 ms     | 0x7e7c EC_ValidatePublicKey()
  6165 ms     | 0x7e7c ret:0x0
  6165 ms  0x7e7c ret:0x7fdd866e1020::7fdd866e1020  30 f3 1a 86                                      0...
  6178 ms  0x7e7c SSL_ImportFD()
  6178 ms  0x7e7c ret:0x7fdd8619e2b0
  6178 ms  0x7e7c SSL_AuthCertificateHook()
  6178 ms  0x7e7c fd:0x7fdd8619e2b0
  6178 ms  0x7e7c ret:0x0
  6180 ms  0x7e7c PR_Connect()
  6180 ms  0x7e7c fd:0x7fdd8619e2b0
           /* TID 0x7e84 */
  6199 ms  0x7e84 PR_Close()
  6199 ms  0x7e84 fd:0x7fdd86197760
           /* TID 0x7e7c */
  6202 ms  SECKEY_ECParamsToKeySize()
  6202 ms  0x7e7c ret:0x100
  6202 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6202 ms  0x7e7c cx:0x7fdd972bf468
  6203 ms     | 0x7e7c EC_ValidatePublicKey()
  6205 ms     | 0x7e7c ret:0x0
  6205 ms  0x7e7c ret:0x7fdd8620c020::7fdd8620c020  a0 c6 19 86                                      ....
  6205 ms  0x7e7c PK11_PubDeriveWithKDF()
  6205 ms  0x7e7c seckey:0x7fdd8620c020
  6205 ms     | 0x7e7c EC_ValidatePublicKey()
  6207 ms     | 0x7e7c ret:0x0
  6208 ms  0x7e7c ret:0x7fdd86257e80
  6208 ms  0x7e7c PK11_DeriveWithFlags()
  6208 ms  0x7e7c basekey:0x7fdd86257e80
  6209 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6209 ms  0x7e7c ret:0x7fdd86257e00
  6209 ms  0x7e7c PK11_Derive()
  6209 ms  0x7e7c basekey:0x7fdd86257e00
  6209 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6209 ms  0x7e7c ret:0x7fdd86136800
  6209 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6209 ms  0x7e7c privk:0x7fdd8620c020::7fdd8620c020  a0 c6 19 86                                      ....
  6209 ms  0x7e7c privk:0x7fdd8620c020::7fdd8620c020  e5 e5 e5 e5                                      ....
  6209 ms  0x7e7c PK11_Encrypt()
  6209 ms  0x7e7c symkey:0x7fdd86258080
  6224 ms  0x7e7c PK11_Encrypt()
  6224 ms  0x7e7c symkey:0x7fdd86258080
  6226 ms  0x7e7c SSL_ImportFD()
  6227 ms  0x7e7c ret:0x7fdd8619ea60
  6227 ms  0x7e7c SSL_AuthCertificateHook()
  6227 ms  0x7e7c fd:0x7fdd8619ea60
  6227 ms  0x7e7c ret:0x0
  6227 ms  0x7e7c PR_Connect()
  6227 ms  0x7e7c fd:0x7fdd8619ea60
  6271 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6271 ms  0x7e7c privk:0x7fdd862f8820::7fdd862f8820  a0 a6 65 86                                      ..e.
  6271 ms  0x7e7c privk:0x7fdd862f8820::7fdd862f8820  e5 e5 e5 e5                                      ....
  6271 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6271 ms  0x7e7c privk:0x7fdd862f6820::7fdd862f6820  20 ce 52 86                                       .R.
  6271 ms  0x7e7c privk:0x7fdd862f6820::7fdd862f6820  e5 e5 e5 e5                                      ....
  6272 ms  0x7e7c PR_Close()
  6272 ms  0x7e7c fd:0x7fdd86197cd0
  6272 ms     | 0x7e7c PK11_Encrypt()
  6272 ms     | 0x7e7c symkey:0x7fdd86258080
  6274 ms  0x7e7c SSL_ImportFD()
  6274 ms  0x7e7c ret:0x7fdd8619ee20
  6274 ms  0x7e7c SSL_AuthCertificateHook()
  6274 ms  0x7e7c fd:0x7fdd8619ee20
  6274 ms  0x7e7c ret:0x0
  6274 ms  0x7e7c PR_Connect()
  6274 ms  0x7e7c fd:0x7fdd8619ee20
  6274 ms  0x7e7c SSL_ImportFD()
  6274 ms  0x7e7c ret:0x7fdd86197d60
  6274 ms  0x7e7c SSL_AuthCertificateHook()
  6274 ms  0x7e7c fd:0x7fdd86197d60
  6274 ms  0x7e7c ret:0x0
  6274 ms  0x7e7c PR_Connect()
  6274 ms  0x7e7c fd:0x7fdd86197d60
  6299 ms  0x7e7c SSL_ImportFD()
  6299 ms  0x7e7c ret:0x7fdd97af08b0
  6299 ms  0x7e7c SSL_AuthCertificateHook()
  6299 ms  0x7e7c fd:0x7fdd97af08b0
  6299 ms  0x7e7c ret:0x0
  6299 ms  0x7e7c PR_Connect()
  6299 ms  0x7e7c fd:0x7fdd97af08b0
  6316 ms  0x7e7c SSL_ImportFD()
  6316 ms  0x7e7c ret:0x7fdd98abf940
  6316 ms  0x7e7c SSL_AuthCertificateHook()
  6316 ms  0x7e7c fd:0x7fdd98abf940
  6316 ms  0x7e7c ret:0x0
  6316 ms  0x7e7c PR_Connect()
  6316 ms  0x7e7c fd:0x7fdd98abf940
  6316 ms  0x7e7c SSL_ImportFD()
  6316 ms  0x7e7c ret:0x7fdd98d8dd90
  6316 ms  0x7e7c SSL_AuthCertificateHook()
  6316 ms  0x7e7c fd:0x7fdd98d8dd90
  6316 ms  0x7e7c ret:0x0
  6316 ms  0x7e7c PR_Connect()
  6316 ms  0x7e7c fd:0x7fdd98d8dd90
  6316 ms  0x7e7c SSL_ImportFD()
  6316 ms  0x7e7c ret:0x7fdd976f3040
  6316 ms  0x7e7c SSL_AuthCertificateHook()
  6316 ms  0x7e7c fd:0x7fdd976f3040
  6316 ms  0x7e7c ret:0x0
  6316 ms  0x7e7c PR_Connect()
  6316 ms  0x7e7c fd:0x7fdd976f3040
  6316 ms  0x7e7c SSL_ImportFD()
  6316 ms  0x7e7c ret:0x7fdd976f3130
  6316 ms  0x7e7c SSL_AuthCertificateHook()
  6316 ms  0x7e7c fd:0x7fdd976f3130
  6317 ms  0x7e7c ret:0x0
  6317 ms  0x7e7c PR_Connect()
  6317 ms  0x7e7c fd:0x7fdd976f3130
  6317 ms  0x7e7c SSL_ImportFD()
  6317 ms  0x7e7c ret:0x7fdd98abaa90
  6317 ms  0x7e7c SSL_AuthCertificateHook()
  6317 ms  0x7e7c fd:0x7fdd98abaa90
  6317 ms  0x7e7c ret:0x0
  6317 ms  0x7e7c PR_Connect()
  6317 ms  0x7e7c fd:0x7fdd98abaa90
  6317 ms  0x7e7c SSL_ImportFD()
  6317 ms  0x7e7c ret:0x7fdd98abaca0
  6317 ms  0x7e7c SSL_AuthCertificateHook()
  6317 ms  0x7e7c fd:0x7fdd98abaca0
  6317 ms  0x7e7c ret:0x0
  6317 ms  0x7e7c PR_Connect()
  6317 ms  0x7e7c fd:0x7fdd98abaca0
  6338 ms  SECKEY_ECParamsToKeySize()
  6338 ms  0x7e7c ret:0x100
  6338 ms  SECKEY_ECParamsToBasePointOrderLen()
  6338 ms  0x7e7c ret:0x100
  6338 ms  SECKEY_ECParamsToBasePointOrderLen()
  6338 ms  0x7e7c ret:0x100
  6338 ms  0x7e7c EC_ValidatePublicKey()
  6339 ms  0x7e7c ret:0x0
  6345 ms  SECKEY_ECParamsToKeySize()
  6345 ms  0x7e7c ret:0x100
  6345 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6345 ms  0x7e7c cx:0x7fdd972be0e8
  6346 ms     | 0x7e7c EC_ValidatePublicKey()
  6347 ms     | 0x7e7c ret:0x0
  6347 ms  0x7e7c ret:0x7fdd866e3020::7fdd866e3020  a0 71 43 86                                      .qC.
  6348 ms  0x7e7c PK11_PubDeriveWithKDF()
  6348 ms  0x7e7c seckey:0x7fdd866e3020
  6348 ms     | 0x7e7c EC_ValidatePublicKey()
  6349 ms     | 0x7e7c ret:0x0
  6351 ms  0x7e7c ret:0x7fdd86136800
  6351 ms  0x7e7c PK11_DeriveWithFlags()
  6351 ms  0x7e7c basekey:0x7fdd86136800
  6351 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6351 ms  0x7e7c ret:0x7fdd86257e00
  6351 ms  0x7e7c PK11_Derive()
  6351 ms  0x7e7c basekey:0x7fdd86257e00
  6351 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6351 ms  0x7e7c ret:0x7fdd86257e80
  6351 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6351 ms  0x7e7c privk:0x7fdd866e3020::7fdd866e3020  a0 71 43 86                                      .qC.
  6351 ms  0x7e7c privk:0x7fdd866e3020::7fdd866e3020  e5 e5 e5 e5                                      ....
  6351 ms  0x7e7c PK11_Encrypt()
  6351 ms  0x7e7c symkey:0x7fdd86258000
  6356 ms  SECKEY_ECParamsToKeySize()
  6356 ms  0x7e7c ret:0x100
  6356 ms  SECKEY_ECParamsToBasePointOrderLen()
  6356 ms  0x7e7c ret:0x100
  6356 ms  SECKEY_ECParamsToBasePointOrderLen()
  6356 ms  0x7e7c ret:0x100
  6356 ms  0x7e7c EC_ValidatePublicKey()
  6357 ms  0x7e7c ret:0x0
  6359 ms  SECKEY_ECParamsToKeySize()
  6359 ms  0x7e7c ret:0x100
  6359 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6359 ms  0x7e7c cx:0x7fdd972be428
  6360 ms     | 0x7e7c EC_ValidatePublicKey()
  6361 ms     | 0x7e7c ret:0x0
  6361 ms  0x7e7c ret:0x7fdd866e9820::7fdd866e9820  00 7b 43 86                                      .{C.
  6361 ms  0x7e7c PK11_PubDeriveWithKDF()
  6361 ms  0x7e7c seckey:0x7fdd866e9820
  6361 ms     | 0x7e7c EC_ValidatePublicKey()
  6363 ms     | 0x7e7c ret:0x0
  6364 ms  0x7e7c ret:0x7fdd86136800
  6366 ms  0x7e7c PK11_DeriveWithFlags()
  6366 ms  0x7e7c basekey:0x7fdd86136800
  6366 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6366 ms  0x7e7c ret:0x7fdd86136780
  6366 ms  0x7e7c PK11_Derive()
  6366 ms  0x7e7c basekey:0x7fdd86136780
  6366 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6366 ms  0x7e7c ret:0x7fdd98944400
  6366 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6366 ms  0x7e7c privk:0x7fdd866e9820::7fdd866e9820  00 7b 43 86                                      .{C.
  6366 ms  0x7e7c privk:0x7fdd866e9820::7fdd866e9820  e5 e5 e5 e5                                      ....
  6366 ms  0x7e7c PK11_Encrypt()
  6366 ms  0x7e7c symkey:0x7fdd86136880
  6366 ms  0x7e7c SSL_ImportFD()
  6366 ms  0x7e7c ret:0x7fdd972c5f70
  6366 ms  0x7e7c SSL_AuthCertificateHook()
  6366 ms  0x7e7c fd:0x7fdd972c5f70
  6366 ms  0x7e7c ret:0x0
  6367 ms  0x7e7c PR_Connect()
  6367 ms  0x7e7c fd:0x7fdd972c5f70
  6367 ms  SECKEY_ECParamsToKeySize()
  6367 ms  0x7e7c ret:0x100
  6367 ms  SECKEY_ECParamsToBasePointOrderLen()
  6367 ms  0x7e7c ret:0x100
  6367 ms  SECKEY_ECParamsToBasePointOrderLen()
  6367 ms  0x7e7c ret:0x100
  6367 ms  0x7e7c EC_ValidatePublicKey()
  6368 ms  0x7e7c ret:0x0
  6370 ms  SECKEY_ECParamsToKeySize()
  6370 ms  0x7e7c ret:0x100
  6370 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6370 ms  0x7e7c cx:0x7fdd972bf2c8
  6371 ms     | 0x7e7c EC_ValidatePublicKey()
  6373 ms     | 0x7e7c ret:0x0
  6374 ms  0x7e7c ret:0x7fdd866f3020::7fdd866f3020  c0 c9 52 86                                      ..R.
  6374 ms  0x7e7c PK11_PubDeriveWithKDF()
  6374 ms  0x7e7c seckey:0x7fdd866f3020
  6374 ms     | 0x7e7c EC_ValidatePublicKey()
  6376 ms     | 0x7e7c ret:0x0
  6377 ms  0x7e7c ret:0x7fdd86136800
  6377 ms  0x7e7c PK11_DeriveWithFlags()
  6377 ms  0x7e7c basekey:0x7fdd86136800
  6377 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6377 ms  0x7e7c ret:0x7fdd86257b00
  6377 ms  0x7e7c PK11_Derive()
  6377 ms  0x7e7c basekey:0x7fdd86257b00
  6377 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6377 ms  0x7e7c ret:0x7fdd86257b80
  6377 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6377 ms  0x7e7c privk:0x7fdd866f3020::7fdd866f3020  c0 c9 52 86                                      ..R.
  6377 ms  0x7e7c privk:0x7fdd866f3020::7fdd866f3020  e5 e5 e5 e5                                      ....
  6377 ms  0x7e7c PK11_Encrypt()
  6377 ms  0x7e7c symkey:0x7fdd86257c80
  6378 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6378 ms  0x7e7c cx:0x7fdd86137a68
  6379 ms     | 0x7e7c EC_ValidatePublicKey()
  6379 ms     | 0x7e7c ret:0x0
  6379 ms  0x7e7c ret:0x7fdd866f3020::7fdd866f3020  00 7b 43 86                                      .{C.
  6379 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6379 ms  0x7e7c cx:0x7fdd86137a68
  6379 ms     | 0x7e7c EC_ValidatePublicKey()
  6381 ms     | 0x7e7c ret:0x0
  6381 ms  0x7e7c ret:0x7fdd866f5020::7fdd866f5020  80 cd 52 86                                      ..R.
  6381 ms  0x7e7c PR_Connect()
  6381 ms  0x7e7c fd:0x7fdd9d5433a0
  6382 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6382 ms  0x7e7c cx:0x7fdd972c07e8
  6382 ms     | 0x7e7c EC_ValidatePublicKey()
  6382 ms     | 0x7e7c ret:0x0
  6382 ms  0x7e7c ret:0x7fdd976a3820::7fdd976a3820  e0 e7 57 86                                      ..W.
  6382 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6382 ms  0x7e7c cx:0x7fdd972c07e8
  6383 ms     | 0x7e7c EC_ValidatePublicKey()
  6384 ms     | 0x7e7c ret:0x0
  6384 ms  0x7e7c ret:0x7fdd989a6020::7fdd989a6020  50 46 5a 86                                      PFZ.
  6385 ms  0x7e7c PR_Connect()
  6385 ms  0x7e7c fd:0x7fdd8619e280
  6385 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6385 ms  0x7e7c cx:0x7fdd86137f48
  6385 ms     | 0x7e7c EC_ValidatePublicKey()
  6386 ms     | 0x7e7c ret:0x0
  6386 ms  0x7e7c ret:0x7fdd9911c820::7fdd9911c820  80 a3 65 86                                      ..e.
  6386 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6386 ms  0x7e7c cx:0x7fdd86137f48
  6386 ms     | 0x7e7c EC_ValidatePublicKey()
  6393 ms     | 0x7e7c ret:0x0
  6393 ms  0x7e7c ret:0x7fdd9d490820::7fdd9d490820  c0 a9 65 86                                      ..e.
  6393 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6393 ms  0x7e7c cx:0x7fdd86137da8
  6394 ms     | 0x7e7c EC_ValidatePublicKey()
  6394 ms     | 0x7e7c ret:0x0
  6394 ms  0x7e7c ret:0x7fdd9d497020::7fdd9d497020  10 af 65 86                                      ..e.
  6394 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6394 ms  0x7e7c cx:0x7fdd86137da8
  6394 ms     | 0x7e7c EC_ValidatePublicKey()
  6396 ms     | 0x7e7c ret:0x0
  6396 ms  0x7e7c ret:0x7fdd9d519820::7fdd9d519820  90 52 62 97                                      .Rb.
  6396 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6396 ms  0x7e7c cx:0x7fdd86137c08
  6397 ms     | 0x7e7c EC_ValidatePublicKey()
  6397 ms     | 0x7e7c ret:0x0
  6397 ms  0x7e7c ret:0x7fdd9d51e820::7fdd9d51e820  20 54 62 97                                       Tb.
  6397 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6397 ms  0x7e7c cx:0x7fdd86137c08
  6397 ms     | 0x7e7c EC_ValidatePublicKey()
  6399 ms     | 0x7e7c ret:0x0
  6399 ms  0x7e7c ret:0x7fdd9d522820::7fdd9d522820  a0 56 62 97                                      .Vb.
  6399 ms  0x7e7c PR_Connect()
  6399 ms  0x7e7c fd:0x7fdd86659ca0
  6399 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6399 ms  0x7e7c cx:0x7fdd86138428
  6400 ms     | 0x7e7c EC_ValidatePublicKey()
  6400 ms     | 0x7e7c ret:0x0
  6400 ms  0x7e7c ret:0x7fdd9d529020::7fdd9d529020  90 b7 66 97                                      ..f.
  6400 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6400 ms  0x7e7c cx:0x7fdd86138428
  6401 ms     | 0x7e7c EC_ValidatePublicKey()
  6402 ms     | 0x7e7c ret:0x0
  6402 ms  0x7e7c ret:0x7fdd9d52e820::7fdd9d52e820  40 b7 6a 97                                      @.j.
  6402 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6402 ms  0x7e7c cx:0x7fdd86138288
  6403 ms     | 0x7e7c EC_ValidatePublicKey()
  6403 ms     | 0x7e7c ret:0x0
  6403 ms  0x7e7c ret:0x7fdd9d535820::7fdd9d535820  c0 b9 6a 97                                      ..j.
  6403 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6403 ms  0x7e7c cx:0x7fdd86138288
  6403 ms     | 0x7e7c EC_ValidatePublicKey()
  6406 ms     | 0x7e7c ret:0x0
  6406 ms  0x7e7c ret:0x7fdd9d6ab020::7fdd9d6ab020  30 bd 6a 97                                      0.j.
  6406 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6406 ms  0x7e7c cx:0x7fdd861380e8
  6407 ms     | 0x7e7c EC_ValidatePublicKey()
  6407 ms     | 0x7e7c ret:0x0
  6407 ms  0x7e7c ret:0x7fdd9d80c020::7fdd9d80c020  00 a1 9e 98                                      ....
  6407 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6407 ms  0x7e7c cx:0x7fdd861380e8
  6407 ms     | 0x7e7c EC_ValidatePublicKey()
  6409 ms     | 0x7e7c ret:0x0
  6409 ms  0x7e7c ret:0x7fdd9d80e820::7fdd9d80e820  00 a6 9e 98                                      ....
  6414 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6414 ms  0x7e7c cx:0x7fdd972c0b28
  6415 ms     | 0x7e7c EC_ValidatePublicKey()
  6415 ms     | 0x7e7c ret:0x0
  6415 ms  0x7e7c ret:0x7fdd9d815820::7fdd9d815820  20 a9 9e 98                                       ...
  6415 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6415 ms  0x7e7c cx:0x7fdd972c0b28
  6415 ms     | 0x7e7c EC_ValidatePublicKey()
  6417 ms     | 0x7e7c ret:0x0
  6417 ms  0x7e7c ret:0x7fdd9d819820::7fdd9d819820  80 ad 9e 98                                      ....
           /* TID 0x7ed7 */
  6436 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6436 ms  0x7ed7 ret:0x0
  6436 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6436 ms  0x7ed7 ret:0x0
           /* TID 0x7e84 */
  6438 ms  0x7e84 PR_Close()
  6438 ms  0x7e84 fd:0x7fdd8619e9a0
           /* TID 0x7e7c */
  6448 ms  SECKEY_ECParamsToKeySize()
  6448 ms  0x7e7c ret:0x100
  6448 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6448 ms  0x7e7c cx:0x7fdd86137a68
  6452 ms     | 0x7e7c EC_ValidatePublicKey()
  6453 ms     | 0x7e7c ret:0x0
           /* TID 0x7f24 */
  6454 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6454 ms  0x7f24 ret:0x0
           /* TID 0x7e7c */
  6460 ms  0x7e7c ret:0x7fdd866d8820::7fdd866d8820  60 af 9e 98                                      `...
  6460 ms  0x7e7c PK11_PubDeriveWithKDF()
  6460 ms  0x7e7c seckey:0x7fdd866d8820
  6460 ms     | 0x7e7c EC_ValidatePublicKey()
  6463 ms     | 0x7e7c ret:0x0
  6470 ms  0x7e7c ret:0x7fdd86136800
  6470 ms  0x7e7c PK11_DeriveWithFlags()
  6470 ms  0x7e7c basekey:0x7fdd86136800
  6470 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6470 ms  0x7e7c ret:0x7fdd861b0480
  6470 ms  0x7e7c PK11_Derive()
  6470 ms  0x7e7c basekey:0x7fdd861b0480
  6470 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6470 ms  0x7e7c ret:0x7fdd861b0580
  6470 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6470 ms  0x7e7c privk:0x7fdd866d8820::7fdd866d8820  60 af 9e 98                                      `...
  6470 ms  0x7e7c privk:0x7fdd866d8820::7fdd866d8820  e5 e5 e5 e5                                      ....
  6470 ms  0x7e7c PK11_Encrypt()
  6470 ms  0x7e7c symkey:0x7fdd861b1780
           /* TID 0x7e84 */
  6471 ms  0x7e84 PR_Close()
  6471 ms  0x7e84 fd:0x7fdd862c20d0
           /* TID 0x7f22 */
  6471 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6471 ms  0x7f22 ret:0x0
  6471 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6472 ms  0x7f22 ret:0x0
           /* TID 0x7e7c */
  6472 ms  0x7e7c SSL_AuthCertificateComplete()
  6472 ms  0x7e7c fd:0x7fdd8651ed90
  6472 ms  0x7e7c err:0x0
  6472 ms  0x7e7c SSL_AuthCertificateComplete()
  6472 ms  0x7e7c fd:0x7fdd97af08b0
  6472 ms  0x7e7c err:0x0
  6472 ms  0x7e7c SSL_AuthCertificateComplete()
  6472 ms  0x7e7c fd:0x7fdd86659460
  6472 ms  0x7e7c err:0x0
  6472 ms  0x7e7c PK11_Encrypt()
  6472 ms  0x7e7c symkey:0x7fdd86258000
  6474 ms  0x7e7c PK11_Encrypt()
  6474 ms  0x7e7c symkey:0x7fdd86258000
  6474 ms  0x7e7c PK11_Encrypt()
  6474 ms  0x7e7c symkey:0x7fdd86136880
  6474 ms  0x7e7c PK11_Encrypt()
  6474 ms  0x7e7c symkey:0x7fdd861b1780
           /* TID 0x7ed7 */
  6475 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6475 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  6476 ms  SECKEY_ECParamsToKeySize()
  6476 ms  0x7e7c ret:0x100
  6476 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6476 ms  0x7e7c cx:0x7fdd86137f48
  6476 ms     | 0x7e7c EC_ValidatePublicKey()
  6478 ms     | 0x7e7c ret:0x0
  6478 ms  0x7e7c ret:0x7fdd9ddab820::7fdd9ddab820  c0 1e 51 86                                      ..Q.
  6479 ms  0x7e7c PK11_PubDeriveWithKDF()
  6479 ms  0x7e7c seckey:0x7fdd9ddab820
  6479 ms     | 0x7e7c EC_ValidatePublicKey()
  6481 ms     | 0x7e7c ret:0x0
  6482 ms  0x7e7c ret:0x7fdd86136800
  6482 ms  0x7e7c PK11_DeriveWithFlags()
  6482 ms  0x7e7c basekey:0x7fdd86136800
  6482 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6482 ms  0x7e7c ret:0x7fdd86616300
  6482 ms  0x7e7c PK11_Derive()
  6482 ms  0x7e7c basekey:0x7fdd86616300
  6483 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6483 ms  0x7e7c ret:0x7fdd86616380
  6483 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6483 ms  0x7e7c privk:0x7fdd9ddab820::7fdd9ddab820  c0 1e 51 86                                      ..Q.
  6483 ms  0x7e7c privk:0x7fdd9ddab820::7fdd9ddab820  e5 e5 e5 e5                                      ....
  6483 ms  0x7e7c PK11_Encrypt()
  6483 ms  0x7e7c symkey:0x7fdd86616780
           /* TID 0x7f24 */
  6484 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6484 ms  0x7f24 ret:0x0
           /* TID 0x7e7c */
  6484 ms  SECKEY_ECParamsToKeySize()
  6484 ms  0x7e7c ret:0x100
  6484 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6484 ms  0x7e7c cx:0x7fdd86137da8
  6485 ms     | 0x7e7c EC_ValidatePublicKey()
  6486 ms     | 0x7e7c ret:0x0
  6486 ms  0x7e7c ret:0x7fdd9ddac020::7fdd9ddac020  50 36 95 98                                      P6..
  6486 ms  0x7e7c PK11_PubDeriveWithKDF()
  6486 ms  0x7e7c seckey:0x7fdd9ddac020
  6486 ms     | 0x7e7c EC_ValidatePublicKey()
  6488 ms     | 0x7e7c ret:0x0
  6489 ms  0x7e7c ret:0x7fdd86136800
  6489 ms  0x7e7c PK11_DeriveWithFlags()
  6489 ms  0x7e7c basekey:0x7fdd86136800
  6489 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6489 ms  0x7e7c ret:0x7fdd86616c00
  6489 ms  0x7e7c PK11_Derive()
  6489 ms  0x7e7c basekey:0x7fdd86616c00
  6489 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6489 ms  0x7e7c ret:0x7fdd86616f00
  6490 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6490 ms  0x7e7c privk:0x7fdd9ddac020::7fdd9ddac020  50 36 95 98                                      P6..
  6490 ms  0x7e7c privk:0x7fdd9ddac020::7fdd9ddac020  e5 e5 e5 e5                                      ....
  6490 ms  0x7e7c PK11_Encrypt()
  6490 ms  0x7e7c symkey:0x7fdd975db280
           /* TID 0x7f22 */
  6492 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6492 ms  0x7f22 ret:0x0
           /* TID 0x7e7c */
  6492 ms  SECKEY_ECParamsToKeySize()
  6492 ms  0x7e7c ret:0x100
  6492 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6492 ms  0x7e7c cx:0x7fdd86137c08
  6493 ms     | 0x7e7c EC_ValidatePublicKey()
  6494 ms     | 0x7e7c ret:0x0
  6494 ms  0x7e7c ret:0x7fdd9ddac820::7fdd9ddac820  a0 3b 95 98                                      .;..
  6494 ms  0x7e7c PK11_PubDeriveWithKDF()
  6494 ms  0x7e7c seckey:0x7fdd9ddac820
  6495 ms     | 0x7e7c EC_ValidatePublicKey()
  6496 ms     | 0x7e7c ret:0x0
  6497 ms  0x7e7c ret:0x7fdd86136800
  6497 ms  0x7e7c PK11_DeriveWithFlags()
  6497 ms  0x7e7c basekey:0x7fdd86136800
  6497 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6497 ms  0x7e7c ret:0x7fdd975dbc80
  6497 ms  0x7e7c PK11_Derive()
  6497 ms  0x7e7c basekey:0x7fdd975dbc80
  6497 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6498 ms  0x7e7c ret:0x7fdd975dbd00
  6498 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6498 ms  0x7e7c privk:0x7fdd9ddac820::7fdd9ddac820  a0 3b 95 98                                      .;..
  6498 ms  0x7e7c privk:0x7fdd9ddac820::7fdd9ddac820  e5 e5 e5 e5                                      ....
  6498 ms  0x7e7c PK11_Encrypt()
  6498 ms  0x7e7c symkey:0x7fdd975dbe80
           /* TID 0x7e84 */
  6502 ms  0x7e84 PR_Close()
  6502 ms  0x7e84 fd:0x7fdd864f29a0
           /* TID 0x7f23 */
  6502 ms  0x7f23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6502 ms  0x7f23 ret:0x0
  6502 ms  0x7f23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6502 ms  0x7f23 ret:0x0
           /* TID 0x7e7c */
  6503 ms  0x7e7c PK11_Encrypt()
  6503 ms  0x7e7c symkey:0x7fdd86258000
  6503 ms  0x7e7c SSL_AuthCertificateComplete()
  6503 ms  0x7e7c fd:0x7fdd976f3040
  6503 ms  0x7e7c err:0x0
  6503 ms  0x7e7c SSL_AuthCertificateComplete()
  6503 ms  0x7e7c fd:0x7fdd98d8dd90
  6503 ms  0x7e7c err:0x0
  6503 ms  0x7e7c SSL_AuthCertificateComplete()
  6503 ms  0x7e7c fd:0x7fdd98abf940
  6503 ms  0x7e7c err:0x0
  6503 ms  0x7e7c SSL_AuthCertificateComplete()
  6503 ms  0x7e7c fd:0x7fdd86659a00
  6503 ms  0x7e7c err:0x0
  6503 ms  0x7e7c PK11_Encrypt()
  6503 ms  0x7e7c symkey:0x7fdd86257c80
  6504 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6504 ms  0x7e7c cx:0x7fdd972c0cc8
  6504 ms     | 0x7e7c EC_ValidatePublicKey()
  6504 ms     | 0x7e7c ret:0x0
  6504 ms  0x7e7c ret:0x7fdd9ddac820::7fdd9ddac820  60 c5 52 86                                      `.R.
  6504 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6504 ms  0x7e7c cx:0x7fdd972c0cc8
  6505 ms     | 0x7e7c EC_ValidatePublicKey()
  6506 ms     | 0x7e7c ret:0x0
  6506 ms  0x7e7c ret:0x7fdd9ddae820::7fdd9ddae820  70 c9 52 86                                      p.R.
  6508 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6508 ms  0x7e7c cx:0x7fdd972bf468
  6509 ms     | 0x7e7c EC_ValidatePublicKey()
  6509 ms     | 0x7e7c ret:0x0
  6509 ms  0x7e7c ret:0x7fdd9ddb2820::7fdd9ddb2820  70 ae 9e 98                                      p...
  6509 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6509 ms  0x7e7c cx:0x7fdd972bf468
  6509 ms     | 0x7e7c EC_ValidatePublicKey()
  6511 ms     | 0x7e7c ret:0x0
  6511 ms  0x7e7c ret:0x7fdd9ddb4820::7fdd9ddb4820  f0 9b a6 98                                      ....
           /* TID 0x7ed7 */
  6512 ms  0x7ed7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6512 ms  0x7ed7 ret:0x0
           /* TID 0x7e7c */
  6512 ms  SECKEY_ECParamsToKeySize()
  6512 ms  0x7e7c ret:0x100
  6512 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6512 ms  0x7e7c cx:0x7fdd86138428
  6513 ms     | 0x7e7c EC_ValidatePublicKey()
  6514 ms     | 0x7e7c ret:0x0
  6514 ms  0x7e7c ret:0x7fdd9ddb7820::7fdd9ddb7820  50 31 da 98                                      P1..
  6514 ms  0x7e7c PK11_PubDeriveWithKDF()
  6514 ms  0x7e7c seckey:0x7fdd9ddb7820
  6514 ms     | 0x7e7c EC_ValidatePublicKey()
  6516 ms     | 0x7e7c ret:0x0
  6517 ms  0x7e7c ret:0x7fdd86136800
  6517 ms  0x7e7c PK11_DeriveWithFlags()
  6517 ms  0x7e7c basekey:0x7fdd86136800
  6517 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6517 ms  0x7e7c ret:0x7fdd97865380
  6517 ms  0x7e7c PK11_Derive()
  6517 ms  0x7e7c basekey:0x7fdd97865380
  6517 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6517 ms  0x7e7c ret:0x7fdd97865400
  6517 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6517 ms  0x7e7c privk:0x7fdd9ddb7820::7fdd9ddb7820  50 31 da 98                                      P1..
  6517 ms  0x7e7c privk:0x7fdd9ddb7820::7fdd9ddb7820  e5 e5 e5 e5                                      ....
  6518 ms  0x7e7c PK11_Encrypt()
  6518 ms  0x7e7c symkey:0x7fdd98520480
           /* TID 0x7f24 */
  6519 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6519 ms  0x7f24 ret:0x0
           /* TID 0x7e7c */
  6519 ms  SECKEY_ECParamsToKeySize()
  6519 ms  0x7e7c ret:0x100
  6519 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6519 ms  0x7e7c cx:0x7fdd86138288
  6520 ms     | 0x7e7c EC_ValidatePublicKey()
  6521 ms     | 0x7e7c ret:0x0
  6521 ms  0x7e7c ret:0x7fdd9ddb8020::7fdd9ddb8020  f0 31 da 98                                      .1..
  6521 ms  0x7e7c PK11_PubDeriveWithKDF()
  6521 ms  0x7e7c seckey:0x7fdd9ddb8020
  6521 ms     | 0x7e7c EC_ValidatePublicKey()
  6523 ms     | 0x7e7c ret:0x0
  6524 ms  0x7e7c ret:0x7fdd86136800
  6524 ms  0x7e7c PK11_DeriveWithFlags()
  6524 ms  0x7e7c basekey:0x7fdd86136800
  6524 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6524 ms  0x7e7c ret:0x7fdd98521180
  6524 ms  0x7e7c PK11_Derive()
  6524 ms  0x7e7c basekey:0x7fdd98521180
  6524 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6524 ms  0x7e7c ret:0x7fdd98521580
  6524 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6524 ms  0x7e7c privk:0x7fdd9ddb8020::7fdd9ddb8020  f0 31 da 98                                      .1..
  6524 ms  0x7e7c privk:0x7fdd9ddb8020::7fdd9ddb8020  e5 e5 e5 e5                                      ....
  6524 ms  0x7e7c PK11_Encrypt()
  6524 ms  0x7e7c symkey:0x7fdd98521b00
           /* TID 0x7f22 */
  6526 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6526 ms  0x7f22 ret:0x0
           /* TID 0x7e7c */
  6526 ms  SECKEY_ECParamsToKeySize()
  6526 ms  0x7e7c ret:0x100
  6526 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6526 ms  0x7e7c cx:0x7fdd861380e8
  6526 ms     | 0x7e7c EC_ValidatePublicKey()
  6528 ms     | 0x7e7c ret:0x0
  6528 ms  0x7e7c ret:0x7fdd9ddb8820::7fdd9ddb8820  c0 34 da 98                                      .4..
  6528 ms  0x7e7c PK11_PubDeriveWithKDF()
  6528 ms  0x7e7c seckey:0x7fdd9ddb8820
  6528 ms     | 0x7e7c EC_ValidatePublicKey()
  6529 ms     | 0x7e7c ret:0x0
  6531 ms  0x7e7c ret:0x7fdd86136800
  6531 ms  0x7e7c PK11_DeriveWithFlags()
  6531 ms  0x7e7c basekey:0x7fdd86136800
  6531 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6531 ms  0x7e7c ret:0x7fdd98521f00
  6531 ms  0x7e7c PK11_Derive()
  6531 ms  0x7e7c basekey:0x7fdd98521f00
  6531 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6531 ms  0x7e7c ret:0x7fdd98521f80
  6531 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6531 ms  0x7e7c privk:0x7fdd9ddb8820::7fdd9ddb8820  c0 34 da 98                                      .4..
  6531 ms  0x7e7c privk:0x7fdd9ddb8820::7fdd9ddb8820  e5 e5 e5 e5                                      ....
  6531 ms  0x7e7c PK11_Encrypt()
  6531 ms  0x7e7c symkey:0x7fdd985b5f00
  6532 ms  0x7e7c PK11_Encrypt()
  6532 ms  0x7e7c symkey:0x7fdd86616780
  6532 ms  0x7e7c PK11_Encrypt()
  6532 ms  0x7e7c symkey:0x7fdd86616780
  6532 ms  0x7e7c PK11_Encrypt()
  6532 ms  0x7e7c symkey:0x7fdd975db280
  6532 ms  0x7e7c PK11_Encrypt()
  6532 ms  0x7e7c symkey:0x7fdd975dbe80
  6533 ms  0x7e7c PK11_Encrypt()
  6533 ms  0x7e7c symkey:0x7fdd86616780
  6533 ms  0x7e7c PK11_Encrypt()
  6533 ms  0x7e7c symkey:0x7fdd86616780
  6533 ms  0x7e7c PK11_Encrypt()
  6533 ms  0x7e7c symkey:0x7fdd86616780
  6533 ms  0x7e7c PK11_Encrypt()
  6533 ms  0x7e7c symkey:0x7fdd86616780
  6533 ms  0x7e7c PK11_Encrypt()
  6533 ms  0x7e7c symkey:0x7fdd86616780
  6534 ms  0x7e7c PK11_Encrypt()
  6534 ms  0x7e7c symkey:0x7fdd86258000
  6534 ms  0x7e7c SSL_AuthCertificateComplete()
  6534 ms  0x7e7c fd:0x7fdd98abaca0
  6534 ms  0x7e7c err:0x0
  6534 ms  0x7e7c SSL_AuthCertificateComplete()
  6534 ms  0x7e7c fd:0x7fdd98abaa90
  6534 ms  0x7e7c err:0x0
  6534 ms  0x7e7c SSL_AuthCertificateComplete()
  6534 ms  0x7e7c fd:0x7fdd976f3130
  6534 ms  0x7e7c err:0x0
  6534 ms  0x7e7c PK11_Encrypt()
  6534 ms  0x7e7c symkey:0x7fdd86616780
  6535 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6535 ms  0x7e7c privk:0x7fdd866f5020::7fdd866f5020  80 cd 52 86                                      ..R.
  6535 ms  0x7e7c privk:0x7fdd866f5020::7fdd866f5020  e5 e5 e5 e5                                      ....
  6535 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6535 ms  0x7e7c privk:0x7fdd866f3020::7fdd866f3020  00 7b 43 86                                      .{C.
  6535 ms  0x7e7c privk:0x7fdd866f3020::7fdd866f3020  e5 e5 e5 e5                                      ....
  6535 ms  0x7e7c PK11_Encrypt()
  6535 ms  0x7e7c symkey:0x7fdd98520480
  6535 ms  0x7e7c PK11_Encrypt()
  6535 ms  0x7e7c symkey:0x7fdd98521b00
  6535 ms  0x7e7c PK11_Encrypt()
  6535 ms  0x7e7c symkey:0x7fdd985b5f00
  6536 ms  0x7e7c PK11_Encrypt()
  6536 ms  0x7e7c symkey:0x7fdd86616780
  6536 ms  0x7e7c PK11_Encrypt()
  6536 ms  0x7e7c symkey:0x7fdd86616780
  6536 ms  0x7e7c PK11_Encrypt()
  6536 ms  0x7e7c symkey:0x7fdd86616780
  6536 ms  0x7e7c PK11_Encrypt()
  6536 ms  0x7e7c symkey:0x7fdd86616780
  6537 ms  0x7e7c PK11_Encrypt()
  6537 ms  0x7e7c symkey:0x7fdd86616780
  6537 ms  0x7e7c PK11_Encrypt()
  6537 ms  0x7e7c symkey:0x7fdd86616780
  6537 ms  0x7e7c PK11_Encrypt()
  6537 ms  0x7e7c symkey:0x7fdd86616780
  6539 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6539 ms  0x7e7c privk:0x7fdd866d6820::7fdd866d6820  d0 ad 65 86                                      ..e.
  6539 ms  0x7e7c privk:0x7fdd866d6820::7fdd866d6820  e5 e5 e5 e5                                      ....
  6539 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6539 ms  0x7e7c privk:0x7fdd86420820::7fdd86420820  50 ab 65 86                                      P.e.
  6540 ms  0x7e7c privk:0x7fdd86420820::7fdd86420820  e5 e5 e5 e5                                      ....
  6540 ms  0x7e7c PK11_Encrypt()
  6540 ms  0x7e7c symkey:0x7fdd86258000
  6548 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6548 ms  0x7e7c privk:0x7fdd9d490820::7fdd9d490820  c0 a9 65 86                                      ..e.
  6548 ms  0x7e7c privk:0x7fdd9d490820::7fdd9d490820  e5 e5 e5 e5                                      ....
  6548 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6548 ms  0x7e7c privk:0x7fdd9911c820::7fdd9911c820  80 a3 65 86                                      ..e.
  6549 ms  0x7e7c privk:0x7fdd9911c820::7fdd9911c820  e5 e5 e5 e5                                      ....
  6552 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6552 ms  0x7e7c privk:0x7fdd9d519820::7fdd9d519820  90 52 62 97                                      .Rb.
  6552 ms  0x7e7c privk:0x7fdd9d519820::7fdd9d519820  e5 e5 e5 e5                                      ....
  6553 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6553 ms  0x7e7c privk:0x7fdd9d497020::7fdd9d497020  10 af 65 86                                      ..e.
  6553 ms  0x7e7c privk:0x7fdd9d497020::7fdd9d497020  e5 e5 e5 e5                                      ....
  6560 ms  0x7e7c PR_Close()
  6560 ms  0x7e7c fd:0x7fdd98d8dd90
  6560 ms     | 0x7e7c PK11_Encrypt()
  6560 ms     | 0x7e7c symkey:0x7fdd975db280
  6560 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6560 ms  0x7e7c privk:0x7fdd866dc020::7fdd866dc020  30 cd 4f a6                                      0.O.
  6560 ms  0x7e7c privk:0x7fdd866dc020::7fdd866dc020  e5 e5 e5 e5                                      ....
  6560 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6560 ms  0x7e7c privk:0x7fdd866da020::7fdd866da020  30 c8 4f a6                                      0.O.
  6560 ms  0x7e7c privk:0x7fdd866da020::7fdd866da020  e5 e5 e5 e5                                      ....
  6561 ms  0x7e7c PR_Close()
  6561 ms  0x7e7c fd:0x7fdd86659460
  6561 ms     | 0x7e7c PK11_Encrypt()
  6561 ms     | 0x7e7c symkey:0x7fdd86136880
  6562 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6562 ms  0x7e7c privk:0x7fdd9d522820::7fdd9d522820  a0 56 62 97                                      .Vb.
  6562 ms  0x7e7c privk:0x7fdd9d522820::7fdd9d522820  e5 e5 e5 e5                                      ....
  6562 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6562 ms  0x7e7c privk:0x7fdd9d51e820::7fdd9d51e820  20 54 62 97                                       Tb.
  6562 ms  0x7e7c privk:0x7fdd9d51e820::7fdd9d51e820  e5 e5 e5 e5                                      ....
  6563 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6563 ms  0x7e7c cx:0x7fdd86138908
  6563 ms     | 0x7e7c EC_ValidatePublicKey()
  6563 ms     | 0x7e7c ret:0x0
  6563 ms  0x7e7c ret:0x7fdd862fb820::7fdd862fb820  10 1a 3d 86                                      ..=.
  6563 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6563 ms  0x7e7c cx:0x7fdd86138908
  6564 ms     | 0x7e7c EC_ValidatePublicKey()
  6566 ms     | 0x7e7c ret:0x0
  6566 ms  0x7e7c ret:0x7fdd86430820::7fdd86430820  20 c9 52 86                                       .R.
  6566 ms  0x7e7c PR_Close()
  6566 ms  0x7e7c fd:0x7fdd98abf940
  6566 ms     | 0x7e7c PK11_Encrypt()
  6566 ms     | 0x7e7c symkey:0x7fdd975dbe80
  6569 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6569 ms  0x7e7c privk:0x7fdd866e1020::7fdd866e1020  30 f3 1a 86                                      0...
  6569 ms  0x7e7c privk:0x7fdd866e1020::7fdd866e1020  e5 e5 e5 e5                                      ....
  6569 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6569 ms  0x7e7c privk:0x7fdd866df020::7fdd866df020  50 f1 1a 86                                      P...
  6569 ms  0x7e7c privk:0x7fdd866df020::7fdd866df020  e5 e5 e5 e5                                      ....
  6569 ms  0x7e7c PR_Close()
  6569 ms  0x7e7c fd:0x7fdd86659a00
  6569 ms     | 0x7e7c PK11_Encrypt()
  6569 ms     | 0x7e7c symkey:0x7fdd86257c80
  6578 ms  SECKEY_ECParamsToKeySize()
  6578 ms  0x7e7c ret:0x100
  6578 ms  SECKEY_ECParamsToBasePointOrderLen()
  6578 ms  0x7e7c ret:0x100
  6579 ms  SECKEY_ECParamsToBasePointOrderLen()
  6579 ms  0x7e7c ret:0x100
  6579 ms  0x7e7c EC_ValidatePublicKey()
  6580 ms  0x7e7c ret:0x0
  6582 ms  SECKEY_ECParamsToKeySize()
  6582 ms  0x7e7c ret:0x100
  6582 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6582 ms  0x7e7c cx:0x7fdd972c07e8
  6583 ms     | 0x7e7c EC_ValidatePublicKey()
  6584 ms     | 0x7e7c ret:0x0
  6584 ms  0x7e7c ret:0x7fdd866d9820::7fdd866d9820  e0 f2 1a 86                                      ....
  6584 ms  0x7e7c PK11_PubDeriveWithKDF()
  6584 ms  0x7e7c seckey:0x7fdd866d9820
  6584 ms     | 0x7e7c EC_ValidatePublicKey()
  6586 ms     | 0x7e7c ret:0x0
  6587 ms  0x7e7c ret:0x7fdd86257b80
  6587 ms  0x7e7c PK11_DeriveWithFlags()
  6587 ms  0x7e7c basekey:0x7fdd86257b80
  6587 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6587 ms  0x7e7c ret:0x7fdd86257b00
  6587 ms  0x7e7c PK11_Derive()
  6587 ms  0x7e7c basekey:0x7fdd86257b00
  6587 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6587 ms  0x7e7c ret:0x7fdd975dbd00
  6587 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6587 ms  0x7e7c privk:0x7fdd866d9820::7fdd866d9820  e0 f2 1a 86                                      ....
  6587 ms  0x7e7c privk:0x7fdd866d9820::7fdd866d9820  e5 e5 e5 e5                                      ....
  6588 ms  0x7e7c PK11_Encrypt()
  6588 ms  0x7e7c symkey:0x7fdd86257d80
  6588 ms  0x7e7c SSL_AuthCertificateComplete()
  6588 ms  0x7e7c fd:0x7fdd8619e2b0
  6588 ms  0x7e7c err:0x0
  6588 ms  0x7e7c PK11_Encrypt()
  6588 ms  0x7e7c symkey:0x7fdd86257d80
  6588 ms  0x7e7c PK11_Encrypt()
  6588 ms  0x7e7c symkey:0x7fdd86258000
  6590 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6590 ms  0x7e7c privk:0x7fdd9d52e820::7fdd9d52e820  40 b7 6a 97                                      @.j.
  6591 ms  0x7e7c privk:0x7fdd9d52e820::7fdd9d52e820  e5 e5 e5 e5                                      ....
  6591 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6591 ms  0x7e7c privk:0x7fdd9d529020::7fdd9d529020  90 b7 66 97                                      ..f.
  6591 ms  0x7e7c privk:0x7fdd9d529020::7fdd9d529020  e5 e5 e5 e5                                      ....
  6591 ms  0x7e7c PR_Close()
  6591 ms  0x7e7c fd:0x7fdd98abaca0
  6591 ms     | 0x7e7c PK11_Encrypt()
  6591 ms     | 0x7e7c symkey:0x7fdd98520480
  6599 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6599 ms  0x7e7c privk:0x7fdd9d6ab020::7fdd9d6ab020  30 bd 6a 97                                      0.j.
  6599 ms  0x7e7c privk:0x7fdd9d6ab020::7fdd9d6ab020  e5 e5 e5 e5                                      ....
  6599 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6599 ms  0x7e7c privk:0x7fdd9d535820::7fdd9d535820  c0 b9 6a 97                                      ..j.
  6599 ms  0x7e7c privk:0x7fdd9d535820::7fdd9d535820  e5 e5 e5 e5                                      ....
  6600 ms  0x7e7c PR_Close()
  6600 ms  0x7e7c fd:0x7fdd98abaa90
  6600 ms     | 0x7e7c PK11_Encrypt()
  6600 ms     | 0x7e7c symkey:0x7fdd98521b00
  6600 ms  0x7e7c PK11_Encrypt()
  6600 ms  0x7e7c symkey:0x7fdd86616780
  6602 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6602 ms  0x7e7c privk:0x7fdd9d80e820::7fdd9d80e820  00 a6 9e 98                                      ....
  6602 ms  0x7e7c privk:0x7fdd9d80e820::7fdd9d80e820  e5 e5 e5 e5                                      ....
  6602 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6602 ms  0x7e7c privk:0x7fdd9d80c020::7fdd9d80c020  00 a1 9e 98                                      ....
  6602 ms  0x7e7c privk:0x7fdd9d80c020::7fdd9d80c020  e5 e5 e5 e5                                      ....
  6602 ms  0x7e7c PR_Close()
  6602 ms  0x7e7c fd:0x7fdd976f3130
  6602 ms     | 0x7e7c PK11_Encrypt()
  6602 ms     | 0x7e7c symkey:0x7fdd985b5f00
  6607 ms  SECKEY_ECParamsToKeySize()
  6607 ms  0x7e7c ret:0x100
  6607 ms  SECKEY_ECParamsToBasePointOrderLen()
  6607 ms  0x7e7c ret:0x100
  6607 ms  SECKEY_ECParamsToBasePointOrderLen()
  6607 ms  0x7e7c ret:0x100
  6607 ms  0x7e7c EC_ValidatePublicKey()
  6608 ms  0x7e7c ret:0x0
  6610 ms  SECKEY_ECParamsToKeySize()
  6610 ms  0x7e7c ret:0x100
  6610 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6610 ms  0x7e7c cx:0x7fdd972c0b28
  6611 ms     | 0x7e7c EC_ValidatePublicKey()
  6619 ms     | 0x7e7c ret:0x0
  6619 ms  0x7e7c ret:0x7fdd8621c820::7fdd8621c820  c0 19 3d 86                                      ..=.
  6619 ms  0x7e7c PK11_PubDeriveWithKDF()
  6619 ms  0x7e7c seckey:0x7fdd8621c820
  6619 ms     | 0x7e7c EC_ValidatePublicKey()
  6621 ms     | 0x7e7c ret:0x0
  6622 ms  0x7e7c ret:0x7fdd98521f80
  6622 ms  0x7e7c PK11_DeriveWithFlags()
  6622 ms  0x7e7c basekey:0x7fdd98521f80
  6622 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6622 ms  0x7e7c ret:0x7fdd98521f00
  6622 ms  0x7e7c PK11_Derive()
  6622 ms  0x7e7c basekey:0x7fdd98521f00
  6622 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6622 ms  0x7e7c ret:0x7fdd98521580
  6622 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6622 ms  0x7e7c privk:0x7fdd8621c820::7fdd8621c820  c0 19 3d 86                                      ..=.
  6622 ms  0x7e7c privk:0x7fdd8621c820::7fdd8621c820  e5 e5 e5 e5                                      ....
  6622 ms  0x7e7c PK11_Encrypt()
  6622 ms  0x7e7c symkey:0x7fdd9859db80
  6623 ms  0x7e7c SSL_AuthCertificateComplete()
  6623 ms  0x7e7c fd:0x7fdd8619ea60
  6623 ms  0x7e7c err:0x0
  6623 ms  0x7e7c PK11_Encrypt()
  6623 ms  0x7e7c symkey:0x7fdd9859db80
           /* TID 0x7e84 */
  6624 ms  0x7e84 PR_Close()
  6624 ms  0x7e84 fd:0x7fdd861972e0
           /* TID 0x7e7c */
  6626 ms  0x7e7c PK11_Encrypt()
  6626 ms  0x7e7c symkey:0x7fdd86258000
  6635 ms  0x7e7c SSL_ImportFD()
  6635 ms  0x7e7c ret:0x7fdd8619e4f0
  6635 ms  0x7e7c SSL_AuthCertificateHook()
  6635 ms  0x7e7c fd:0x7fdd8619e4f0
  6635 ms  0x7e7c ret:0x0
  6635 ms  0x7e7c PR_Connect()
  6635 ms  0x7e7c fd:0x7fdd8619e4f0
  6697 ms  SECKEY_ECParamsToKeySize()
  6697 ms  0x7e7c ret:0x100
  6697 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6697 ms  0x7e7c cx:0x7fdd972c0cc8
  6698 ms     | 0x7e7c EC_ValidatePublicKey()
  6702 ms     | 0x7e7c ret:0x0
  6704 ms  0x7e7c ret:0x7fdd8641c820::7fdd8641c820  10 ca 52 86                                      ..R.
  6704 ms  0x7e7c PK11_PubDeriveWithKDF()
  6704 ms  0x7e7c seckey:0x7fdd8641c820
  6704 ms     | 0x7e7c EC_ValidatePublicKey()
  6708 ms     | 0x7e7c ret:0x0
  6710 ms  0x7e7c ret:0x7fdd98521f80
  6710 ms  0x7e7c PK11_DeriveWithFlags()
  6710 ms  0x7e7c basekey:0x7fdd98521f80
  6710 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6711 ms  0x7e7c ret:0x7fdd98521180
  6711 ms  0x7e7c PK11_Derive()
  6711 ms  0x7e7c basekey:0x7fdd98521180
  6711 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6711 ms  0x7e7c ret:0x7fdd97865400
  6711 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6711 ms  0x7e7c privk:0x7fdd8641c820::7fdd8641c820  10 ca 52 86                                      ..R.
  6711 ms  0x7e7c privk:0x7fdd8641c820::7fdd8641c820  e5 e5 e5 e5                                      ....
  6711 ms  0x7e7c PK11_Encrypt()
  6711 ms  0x7e7c symkey:0x7fdd98521900
  6714 ms  SECKEY_ECParamsToKeySize()
  6714 ms  0x7e7c ret:0x100
  6714 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6714 ms  0x7e7c cx:0x7fdd972bf468
  6715 ms     | 0x7e7c EC_ValidatePublicKey()
  6717 ms     | 0x7e7c ret:0x0
  6717 ms  0x7e7c ret:0x7fdd8642a020::7fdd8642a020  f0 46 5a 86                                      .FZ.
  6717 ms  0x7e7c PK11_PubDeriveWithKDF()
  6717 ms  0x7e7c seckey:0x7fdd8642a020
  6717 ms     | 0x7e7c EC_ValidatePublicKey()
  6719 ms     | 0x7e7c ret:0x0
  6721 ms  0x7e7c ret:0x7fdd98521f80
  6721 ms  0x7e7c PK11_DeriveWithFlags()
  6721 ms  0x7e7c basekey:0x7fdd98521f80
  6721 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6721 ms  0x7e7c ret:0x7fdd97865380
  6721 ms  0x7e7c PK11_Derive()
  6721 ms  0x7e7c basekey:0x7fdd97865380
  6721 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6721 ms  0x7e7c ret:0x7fdd86257b80
  6721 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6721 ms  0x7e7c privk:0x7fdd8642a020::7fdd8642a020  f0 46 5a 86                                      .FZ.
  6721 ms  0x7e7c privk:0x7fdd8642a020::7fdd8642a020  e5 e5 e5 e5                                      ....
  6721 ms  0x7e7c PK11_Encrypt()
  6721 ms  0x7e7c symkey:0x7fdd97865580
           /* TID 0x7e84 */
  6738 ms  0x7e84 PR_Close()
  6738 ms  0x7e84 fd:0x7fdd862c2fa0
           /* TID 0x7f24 */
  6739 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6739 ms  0x7f24 ret:0x0
  6739 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6739 ms  0x7f24 ret:0x0
           /* TID 0x7e7c */
  6739 ms  0x7e7c SSL_AuthCertificateComplete()
  6739 ms  0x7e7c fd:0x7fdd86197d60
  6739 ms  0x7e7c err:0x0
  6739 ms  0x7e7c PK11_Encrypt()
  6739 ms  0x7e7c symkey:0x7fdd98521900
  6739 ms  0x7e7c PK11_Encrypt()
  6739 ms  0x7e7c symkey:0x7fdd98521900
           /* TID 0x7e84 */
  6754 ms  0x7e84 PR_Close()
  6754 ms  0x7e84 fd:0x7fdd863fb040
           /* TID 0x7f22 */
  6754 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6754 ms  0x7f22 ret:0x0
  6754 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6754 ms  0x7f22 ret:0x0
           /* TID 0x7e7c */
  6754 ms  0x7e7c SSL_AuthCertificateComplete()
  6754 ms  0x7e7c fd:0x7fdd8619ee20
  6754 ms  0x7e7c err:0x0
  6755 ms  0x7e7c PK11_Encrypt()
  6755 ms  0x7e7c symkey:0x7fdd97865580
  6755 ms  0x7e7c PK11_Encrypt()
  6755 ms  0x7e7c symkey:0x7fdd98521900
           /* TID 0x7e84 */
  6773 ms  0x7e84 PR_Close()
  6773 ms  0x7e84 fd:0x7fdd861977f0
           /* TID 0x7e7c */
  6775 ms  0x7e7c PK11_Encrypt()
  6775 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  6776 ms  0x7e84 PR_Close()
  6776 ms  0x7e84 fd:0x7fdd861978e0
  6779 ms  0x7e84 PR_Close()
  6779 ms  0x7e84 fd:0x7fdd86197520
           /* TID 0x7e7c */
  6780 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6780 ms  0x7e7c privk:0x7fdd989a6020::7fdd989a6020  50 46 5a 86                                      PFZ.
  6780 ms  0x7e7c privk:0x7fdd989a6020::7fdd989a6020  e5 e5 e5 e5                                      ....
  6780 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6780 ms  0x7e7c privk:0x7fdd976a3820::7fdd976a3820  e0 e7 57 86                                      ..W.
  6780 ms  0x7e7c privk:0x7fdd976a3820::7fdd976a3820  e5 e5 e5 e5                                      ....
  6780 ms  0x7e7c PR_Close()
  6780 ms  0x7e7c fd:0x7fdd8619e2b0
  6780 ms     | 0x7e7c PK11_Encrypt()
  6780 ms     | 0x7e7c symkey:0x7fdd86257d80
           /* TID 0x7e84 */
  6781 ms  0x7e84 PR_Close()
  6781 ms  0x7e84 fd:0x7fdd86197400
           /* TID 0x7e7c */
  6784 ms  0x7e7c PK11_Encrypt()
  6784 ms  0x7e7c symkey:0x7fdd86257580
  6784 ms  0x7e7c PK11_Encrypt()
  6784 ms  0x7e7c symkey:0x7fdd86257580
  6787 ms  0x7e7c PK11_Encrypt()
  6787 ms  0x7e7c symkey:0x7fdd86257580
  6787 ms  0x7e7c PK11_Encrypt()
  6787 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  6793 ms  0x7e84 PR_Close()
  6793 ms  0x7e84 fd:0x7fdd86197820
  6795 ms  0x7e84 PR_Close()
  6795 ms  0x7e84 fd:0x7fdd86197820
  6796 ms  0x7e84 PR_Close()
  6796 ms  0x7e84 fd:0x7fdd86197820
  6803 ms  0x7e84 PR_Close()
  6803 ms  0x7e84 fd:0x7fdd861973d0
  6808 ms  0x7e84 PR_Close()
  6808 ms  0x7e84 fd:0x7fdd861972b0
           /* TID 0x7e7c */
  6810 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6810 ms  0x7e7c privk:0x7fdd9d819820::7fdd9d819820  80 ad 9e 98                                      ....
  6810 ms  0x7e7c privk:0x7fdd9d819820::7fdd9d819820  e5 e5 e5 e5                                      ....
  6810 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6810 ms  0x7e7c privk:0x7fdd9d815820::7fdd9d815820  20 a9 9e 98                                       ...
  6810 ms  0x7e7c privk:0x7fdd9d815820::7fdd9d815820  e5 e5 e5 e5                                      ....
  6810 ms  0x7e7c PR_Close()
  6810 ms  0x7e7c fd:0x7fdd8619ea60
  6810 ms     | 0x7e7c PK11_Encrypt()
  6810 ms     | 0x7e7c symkey:0x7fdd9859db80
  6822 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6822 ms  0x7e7c cx:0x7fdd861380e8
  6823 ms     | 0x7e7c EC_ValidatePublicKey()
  6823 ms     | 0x7e7c ret:0x0
  6823 ms  0x7e7c ret:0x7fdd866d7020::7fdd866d7020  a0 5b 24 86                                      .[$.
  6823 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6823 ms  0x7e7c cx:0x7fdd861380e8
  6824 ms     | 0x7e7c EC_ValidatePublicKey()
  6825 ms     | 0x7e7c ret:0x0
  6825 ms  0x7e7c ret:0x7fdd866da020::7fdd866da020  e0 1c 3d 86                                      ..=.
  6834 ms  0x7e7c PK11_Encrypt()
  6834 ms  0x7e7c symkey:0x7fdd86257580
  6835 ms  0x7e7c PK11_Encrypt()
  6835 ms  0x7e7c symkey:0x7fdd86257580
  6836 ms  0x7e7c PK11_Encrypt()
  6836 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  6839 ms  0x7e84 PR_Close()
  6839 ms  0x7e84 fd:0x7fdd86197280
  6840 ms  0x7e84 PR_Close()
  6840 ms  0x7e84 fd:0x7fdd86197160
  6841 ms  0x7e84 PR_Close()
  6841 ms  0x7e84 fd:0x7fdd86197160
  6843 ms  0x7e84 PR_Close()
  6843 ms  0x7e84 fd:0x7fdd86197160
  6845 ms  0x7e84 PR_Close()
  6845 ms  0x7e84 fd:0x7fdd86197130
  6846 ms  0x7e84 PR_Close()
  6846 ms  0x7e84 fd:0x7fdd861970a0
           /* TID 0x7e7c */
  6848 ms  0x7e7c PK11_Encrypt()
  6848 ms  0x7e7c symkey:0x7fdd86257580
  6898 ms  0x7e7c PK11_Encrypt()
  6898 ms  0x7e7c symkey:0x7fdd86258000
  6899 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6899 ms  0x7e7c privk:0x7fdd9ddae820::7fdd9ddae820  70 c9 52 86                                      p.R.
  6899 ms  0x7e7c privk:0x7fdd9ddae820::7fdd9ddae820  e5 e5 e5 e5                                      ....
  6900 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6900 ms  0x7e7c privk:0x7fdd9ddac820::7fdd9ddac820  60 c5 52 86                                      `.R.
  6900 ms  0x7e7c privk:0x7fdd9ddac820::7fdd9ddac820  e5 e5 e5 e5                                      ....
  6900 ms  0x7e7c PK11_Encrypt()
  6900 ms  0x7e7c symkey:0x7fdd98521900
  6909 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6909 ms  0x7e7c privk:0x7fdd9ddb4820::7fdd9ddb4820  f0 9b a6 98                                      ....
  6909 ms  0x7e7c privk:0x7fdd9ddb4820::7fdd9ddb4820  e5 e5 e5 e5                                      ....
  6910 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6910 ms  0x7e7c privk:0x7fdd9ddb2820::7fdd9ddb2820  70 ae 9e 98                                      p...
  6910 ms  0x7e7c privk:0x7fdd9ddb2820::7fdd9ddb2820  e5 e5 e5 e5                                      ....
  6910 ms  0x7e7c PR_Close()
  6910 ms  0x7e7c fd:0x7fdd8619ee20
  6910 ms     | 0x7e7c PK11_Encrypt()
  6910 ms     | 0x7e7c symkey:0x7fdd97865580
           /* TID 0x7e84 */
  6912 ms  0x7e84 PR_Close()
  6912 ms  0x7e84 fd:0x7fdd86197400
  6912 ms  0x7e84 PR_Close()
  6912 ms  0x7e84 fd:0x7fdd86197e50
  6913 ms  0x7e84 PR_Close()
  6913 ms  0x7e84 fd:0x7fdd86197400
  6914 ms  0x7e84 PR_Close()
  6914 ms  0x7e84 fd:0x7fdd86197400
           /* TID 0x7e7c */
  6934 ms  0x7e7c PK11_Encrypt()
  6934 ms  0x7e7c symkey:0x7fdd86257580
  6936 ms  0x7e7c PK11_Encrypt()
  6936 ms  0x7e7c symkey:0x7fdd86257580
  6937 ms  0x7e7c PK11_Encrypt()
  6937 ms  0x7e7c symkey:0x7fdd86257580
  6938 ms  0x7e7c PK11_Encrypt()
  6938 ms  0x7e7c symkey:0x7fdd86257580
  6939 ms  0x7e7c PK11_Encrypt()
  6939 ms  0x7e7c symkey:0x7fdd86257580
  6940 ms  SECKEY_ECParamsToKeySize()
  6940 ms  0x7e7c ret:0x100
  6940 ms  SECKEY_ECParamsToBasePointOrderLen()
  6940 ms  0x7e7c ret:0x100
  6940 ms  SECKEY_ECParamsToBasePointOrderLen()
  6940 ms  0x7e7c ret:0x100
  6940 ms  0x7e7c EC_ValidatePublicKey()
  6941 ms  0x7e7c ret:0x0
  6944 ms  SECKEY_ECParamsToKeySize()
  6944 ms  0x7e7c ret:0x100
  6944 ms  0x7e7c SECKEY_CreateECPrivateKey()
  6944 ms  0x7e7c cx:0x7fdd86138908
  6945 ms     | 0x7e7c EC_ValidatePublicKey()
  6951 ms     | 0x7e7c ret:0x0
  6959 ms  0x7e7c ret:0x7fdd866f2820::7fdd866f2820  60 ca 52 86                                      `.R.
  6959 ms  0x7e7c PK11_PubDeriveWithKDF()
  6959 ms  0x7e7c seckey:0x7fdd866f2820
  6959 ms     | 0x7e7c EC_ValidatePublicKey()
  6960 ms     | 0x7e7c ret:0x0
  6962 ms  0x7e7c ret:0x7fdd86257b80
  6962 ms  0x7e7c PK11_DeriveWithFlags()
  6962 ms  0x7e7c basekey:0x7fdd86257b80
  6962 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6962 ms  0x7e7c ret:0x7fdd97865380
  6962 ms  0x7e7c PK11_Derive()
  6962 ms  0x7e7c basekey:0x7fdd97865380
  6962 ms     | 0x7e7c PK11_DeriveWithTemplate()
  6962 ms  0x7e7c ret:0x7fdd98521580
  6962 ms  0x7e7c SECKEY_DestroyPrivateKey()
  6962 ms  0x7e7c privk:0x7fdd866f2820::7fdd866f2820  60 ca 52 86                                      `.R.
  6962 ms  0x7e7c privk:0x7fdd866f2820::7fdd866f2820  e5 e5 e5 e5                                      ....
  6962 ms  0x7e7c PK11_Encrypt()
  6962 ms  0x7e7c symkey:0x7fdd97866280
           /* TID 0x7e84 */
  6975 ms  0x7e84 PR_Close()
  6975 ms  0x7e84 fd:0x7fdd86197730
  6976 ms  0x7e84 PR_Close()
  6976 ms  0x7e84 fd:0x7fdd86197520
  6978 ms  0x7e84 PR_Close()
  6978 ms  0x7e84 fd:0x7fdd86197520
  6979 ms  0x7e84 PR_Close()
  6979 ms  0x7e84 fd:0x7fdd86197520
  6995 ms  0x7e84 PR_Close()
  6995 ms  0x7e84 fd:0x7fdd861970a0
           /* TID 0x7f23 */
  6995 ms  0x7f23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6995 ms  0x7f23 ret:0x0
  6995 ms  0x7f23 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6996 ms  0x7f23 ret:0x0
           /* TID 0x7e7c */
  6996 ms  0x7e7c SSL_AuthCertificateComplete()
  6996 ms  0x7e7c fd:0x7fdd972c5f70
  6996 ms  0x7e7c err:0x0
  6996 ms  0x7e7c PK11_Encrypt()
  6996 ms  0x7e7c symkey:0x7fdd97866280
  6996 ms  0x7e7c PK11_Encrypt()
  6996 ms  0x7e7c symkey:0x7fdd97866280
  7014 ms  SECKEY_ECParamsToKeySize()
  7014 ms  0x7e7c ret:0x100
  7014 ms  SECKEY_ECParamsToBasePointOrderLen()
  7014 ms  0x7e7c ret:0x100
  7014 ms  SECKEY_ECParamsToBasePointOrderLen()
  7014 ms  0x7e7c ret:0x100
  7014 ms  0x7e7c EC_ValidatePublicKey()
  7016 ms  0x7e7c ret:0x0
  7018 ms  SECKEY_ECParamsToKeySize()
  7018 ms  0x7e7c ret:0x100
  7018 ms  0x7e7c SECKEY_CreateECPrivateKey()
  7018 ms  0x7e7c cx:0x7fdd861380e8
  7023 ms     | 0x7e7c EC_ValidatePublicKey()
  7025 ms     | 0x7e7c ret:0x0
  7026 ms  0x7e7c ret:0x7fdd866ef820::7fdd866ef820  00 1b 51 86                                      ..Q.
  7026 ms  0x7e7c PK11_PubDeriveWithKDF()
  7026 ms  0x7e7c seckey:0x7fdd866ef820
  7026 ms     | 0x7e7c EC_ValidatePublicKey()
  7027 ms     | 0x7e7c ret:0x0
  7029 ms  0x7e7c ret:0x7fdd86257b80
  7029 ms  0x7e7c PK11_DeriveWithFlags()
  7029 ms  0x7e7c basekey:0x7fdd86257b80
  7029 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7029 ms  0x7e7c ret:0x7fdd98521f00
  7029 ms  0x7e7c PK11_Derive()
  7029 ms  0x7e7c basekey:0x7fdd98521f00
  7029 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7029 ms  0x7e7c ret:0x7fdd975dbd00
  7029 ms  0x7e7c SECKEY_DestroyPrivateKey()
  7029 ms  0x7e7c privk:0x7fdd866ef820::7fdd866ef820  00 1b 51 86                                      ..Q.
  7029 ms  0x7e7c privk:0x7fdd866ef820::7fdd866ef820  e5 e5 e5 e5                                      ....
  7029 ms  0x7e7c PK11_Encrypt()
  7029 ms  0x7e7c symkey:0x7fdd9859dc00
  7037 ms  0x7e7c SSL_AuthCertificateComplete()
  7037 ms  0x7e7c fd:0x7fdd8619e4f0
  7037 ms  0x7e7c err:0x0
  7037 ms  0x7e7c PK11_Encrypt()
  7037 ms  0x7e7c symkey:0x7fdd86257580
  7038 ms  0x7e7c PK11_Encrypt()
  7038 ms  0x7e7c symkey:0x7fdd86257580
  7042 ms  0x7e7c PK11_Encrypt()
  7042 ms  0x7e7c symkey:0x7fdd86257580
  7044 ms  0x7e7c PK11_Encrypt()
  7044 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  7051 ms  0x7e84 PR_Close()
  7051 ms  0x7e84 fd:0x7fdd86197730
           /* TID 0x7e7c */
  7059 ms  0x7e7c PK11_Encrypt()
  7059 ms  0x7e7c symkey:0x7fdd9859dc00
  7059 ms  0x7e7c PK11_Encrypt()
  7059 ms  0x7e7c symkey:0x7fdd9859dc00
  7059 ms  0x7e7c PK11_Encrypt()
  7059 ms  0x7e7c symkey:0x7fdd86257580
  7059 ms  0x7e7c PK11_Encrypt()
  7059 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  7090 ms  0x7e84 PR_Close()
  7090 ms  0x7e84 fd:0x7fdd86197730
  7090 ms  0x7e84 PR_Close()
  7090 ms  0x7e84 fd:0x7fdd8619e3d0
  7124 ms  0x7e84 PR_Close()
  7124 ms  0x7e84 fd:0x7fdd86197730
  7125 ms  0x7e84 PR_Close()
  7125 ms  0x7e84 fd:0x7fdd86197730
           /* TID 0x7e7c */
  7136 ms  0x7e7c PK11_Encrypt()
  7136 ms  0x7e7c symkey:0x7fdd98521900
  7149 ms  0x7e7c SECKEY_DestroyPrivateKey()
  7149 ms  0x7e7c privk:0x7fdd86430820::7fdd86430820  20 c9 52 86                                       .R.
  7149 ms  0x7e7c privk:0x7fdd86430820::7fdd86430820  e5 e5 e5 e5                                      ....
  7149 ms  0x7e7c SECKEY_DestroyPrivateKey()
  7149 ms  0x7e7c privk:0x7fdd862fb820::7fdd862fb820  10 1a 3d 86                                      ..=.
  7149 ms  0x7e7c privk:0x7fdd862fb820::7fdd862fb820  e5 e5 e5 e5                                      ....
  7149 ms  0x7e7c PK11_Encrypt()
  7149 ms  0x7e7c symkey:0x7fdd97866280
  7152 ms  0x7e7c PK11_Encrypt()
  7152 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  7158 ms  0x7e84 PR_Close()
  7158 ms  0x7e84 fd:0x7fdd8619ea60
  7163 ms  0x7e84 PR_Close()
  7163 ms  0x7e84 fd:0x7fdd86197e80
  7164 ms  0x7e84 PR_Close()
  7164 ms  0x7e84 fd:0x7fdd86197e80
  7183 ms  0x7e84 PR_Close()
  7183 ms  0x7e84 fd:0x7fdd86197520
  7192 ms  0x7e84 PR_Close()
  7192 ms  0x7e84 fd:0x7fdd86197e80
  7193 ms  0x7e84 PR_Close()
  7193 ms  0x7e84 fd:0x7fdd86197e80
           /* TID 0x7e7c */
  7217 ms  0x7e7c SECKEY_DestroyPrivateKey()
  7217 ms  0x7e7c privk:0x7fdd866da020::7fdd866da020  e0 1c 3d 86                                      ..=.
  7217 ms  0x7e7c privk:0x7fdd866da020::7fdd866da020  e5 e5 e5 e5                                      ....
  7217 ms  0x7e7c SECKEY_DestroyPrivateKey()
  7217 ms  0x7e7c privk:0x7fdd866d7020::7fdd866d7020  a0 5b 24 86                                      .[$.
  7217 ms  0x7e7c privk:0x7fdd866d7020::7fdd866d7020  e5 e5 e5 e5                                      ....
  7217 ms  0x7e7c PK11_Encrypt()
  7217 ms  0x7e7c symkey:0x7fdd9859dc00
           /* TID 0x7e84 */
  7218 ms  0x7e84 PR_Close()
  7218 ms  0x7e84 fd:0x7fdd86197820
  7220 ms  0x7e84 PR_Close()
  7220 ms  0x7e84 fd:0x7fdd86197e80
           /* TID 0x7e7c */
  7222 ms  0x7e7c PK11_Encrypt()
  7222 ms  0x7e7c symkey:0x7fdd86257580
  7223 ms  0x7e7c PK11_Encrypt()
  7223 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  7284 ms  0x7e84 PR_Close()
  7284 ms  0x7e84 fd:0x7fdd86197520
  7286 ms  0x7e84 PR_Close()
  7286 ms  0x7e84 fd:0x7fdd86197520
  7339 ms  0x7e84 PR_Close()
  7339 ms  0x7e84 fd:0x7fdd862c20d0
           /* TID 0x7e7c */
  7342 ms  0x7e7c PR_Connect()
  7342 ms  0x7e7c fd:0x7fdd862c20d0
  7342 ms  0x7e7c PR_Close()
  7342 ms  0x7e7c fd:0x7fdd862c20d0
  7342 ms  0x7e7c PR_Connect()
  7342 ms  0x7e7c fd:0x7fdd862c20d0
  7343 ms  0x7e7c PR_Close()
  7343 ms  0x7e7c fd:0x7fdd862c20d0
           /* TID 0x7e84 */
  7346 ms  0x7e84 PR_Close()
  7346 ms  0x7e84 fd:0x7fdd8619e250
  7407 ms  0x7e84 PR_Close()
  7407 ms  0x7e84 fd:0x7fdd8619e130
           /* TID 0x7e7c */
  7410 ms  0x7e7c PR_Connect()
  7410 ms  0x7e7c fd:0x7fdd861973d0
  7410 ms  0x7e7c PR_Connect()
  7410 ms  0x7e7c fd:0x7fdd8619e8b0
  7410 ms  0x7e7c PR_Close()
  7410 ms  0x7e7c fd:0x7fdd861973d0
  7410 ms  0x7e7c PR_Close()
  7410 ms  0x7e7c fd:0x7fdd8619e8b0
  7436 ms  0x7e7c PK11_Encrypt()
  7436 ms  0x7e7c symkey:0x7fdd86257580
  7437 ms  0x7e7c PK11_Encrypt()
  7437 ms  0x7e7c symkey:0x7fdd86257580
  7438 ms  0x7e7c PK11_Encrypt()
  7438 ms  0x7e7c symkey:0x7fdd86257580
  7439 ms  0x7e7c PK11_Encrypt()
  7439 ms  0x7e7c symkey:0x7fdd86257580
  7454 ms  0x7e7c PK11_Encrypt()
  7454 ms  0x7e7c symkey:0x7fdd86257580
  7467 ms  0x7e7c PK11_Encrypt()
  7467 ms  0x7e7c symkey:0x7fdd86257580
  7468 ms  0x7e7c PK11_Encrypt()
  7468 ms  0x7e7c symkey:0x7fdd86257580
  7469 ms  0x7e7c PK11_Encrypt()
  7469 ms  0x7e7c symkey:0x7fdd86257580
  7469 ms  0x7e7c PK11_Encrypt()
  7469 ms  0x7e7c symkey:0x7fdd86257580
  7475 ms  0x7e7c PK11_Encrypt()
  7475 ms  0x7e7c symkey:0x7fdd9859dc00
           /* TID 0x7e84 */
  7498 ms  0x7e84 PR_Close()
  7498 ms  0x7e84 fd:0x7fdd86197bb0
  7504 ms  0x7e84 PR_Close()
  7504 ms  0x7e84 fd:0x7fdd86197bb0
  7560 ms  0x7e84 PR_Close()
  7560 ms  0x7e84 fd:0x7fdd862c28b0
  7563 ms  0x7e84 PR_Close()
  7563 ms  0x7e84 fd:0x7fdd864f29d0
  7565 ms  0x7e84 PR_Close()
  7565 ms  0x7e84 fd:0x7fdd862c24c0
  7566 ms  0x7e84 PR_Close()
  7566 ms  0x7e84 fd:0x7fdd866592e0
  7567 ms  0x7e84 PR_Close()
  7567 ms  0x7e84 fd:0x7fdd8619ea60
  7570 ms  0x7e84 PR_Close()
  7570 ms  0x7e84 fd:0x7fdd864f2d90
  7572 ms  0x7e84 PR_Close()
  7572 ms  0x7e84 fd:0x7fdd8619ea60
  7573 ms  0x7e84 PR_Close()
  7573 ms  0x7e84 fd:0x7fdd8619ea60
  7578 ms  0x7e84 PR_Close()
  7578 ms  0x7e84 fd:0x7fdd86614040
           /* TID 0x7e7c */
  7642 ms  0x7e7c PK11_Encrypt()
  7642 ms  0x7e7c symkey:0x7fdd98521900
  7643 ms  0x7e7c PK11_Encrypt()
  7643 ms  0x7e7c symkey:0x7fdd98521900
  7647 ms  0x7e7c PK11_Encrypt()
  7647 ms  0x7e7c symkey:0x7fdd98521900
  7647 ms  0x7e7c PK11_Encrypt()
  7647 ms  0x7e7c symkey:0x7fdd98521900
  7648 ms  0x7e7c PK11_Encrypt()
  7648 ms  0x7e7c symkey:0x7fdd98521900
  7661 ms  0x7e7c SSL_ImportFD()
  7661 ms  0x7e7c ret:0x7fdd862c28e0
  7661 ms  0x7e7c SSL_AuthCertificateHook()
  7661 ms  0x7e7c fd:0x7fdd862c28e0
  7661 ms  0x7e7c ret:0x0
  7661 ms  0x7e7c PR_Connect()
  7661 ms  0x7e7c fd:0x7fdd862c28e0
  7793 ms  0x7e7c SSL_ImportFD()
  7793 ms  0x7e7c ret:0x7fdd864f2dc0
  7793 ms  0x7e7c SSL_AuthCertificateHook()
  7793 ms  0x7e7c fd:0x7fdd864f2dc0
  7793 ms  0x7e7c ret:0x0
  7793 ms  0x7e7c PR_Connect()
  7793 ms  0x7e7c fd:0x7fdd864f2dc0
           /* TID 0x7e84 */
  7823 ms  0x7e84 PR_Close()
  7823 ms  0x7e84 fd:0x7fdd86197a00
           /* TID 0x7e7c */
  7832 ms  0x7e7c PK11_Encrypt()
  7832 ms  0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e84 */
  7837 ms  0x7e84 PR_Close()
  7837 ms  0x7e84 fd:0x7fdd863fbf40
           /* TID 0x7e7c */
  7852 ms  0x7e7c SECKEY_CreateECPrivateKey()
  7852 ms  0x7e7c cx:0x7fdd86139ae8
  7853 ms     | 0x7e7c EC_ValidatePublicKey()
  7853 ms     | 0x7e7c ret:0x0
  7853 ms  0x7e7c ret:0x7fdd866f5020::7fdd866f5020  c0 1e 51 86                                      ..Q.
  7853 ms  0x7e7c SECKEY_CreateECPrivateKey()
  7853 ms  0x7e7c cx:0x7fdd86139ae8
  7854 ms     | 0x7e7c EC_ValidatePublicKey()
  7855 ms     | 0x7e7c ret:0x0
  7855 ms  0x7e7c ret:0x7fdd97248020::7fdd97248020  b0 10 3d 86                                      ..=.
  7861 ms  0x7e7c SECKEY_CreateECPrivateKey()
  7861 ms  0x7e7c cx:0x7fdd86139c88
  7862 ms     | 0x7e7c EC_ValidatePublicKey()
  7862 ms     | 0x7e7c ret:0x0
  7862 ms  0x7e7c ret:0x7fdd97251020::7fdd97251020  e0 c7 52 86                                      ..R.
  7862 ms  0x7e7c SECKEY_CreateECPrivateKey()
  7862 ms  0x7e7c cx:0x7fdd86139c88
  7863 ms     | 0x7e7c EC_ValidatePublicKey()
  7864 ms     | 0x7e7c ret:0x0
  7864 ms  0x7e7c ret:0x7fdd976a2020::7fdd976a2020  b0 ca 52 86                                      ..R.
           /* TID 0x7e84 */
  7895 ms  0x7e84 PR_Close()
  7895 ms  0x7e84 fd:0x7fdd862c2250
           /* TID 0x7e7c */
  7933 ms  0x7e7c PK11_Derive()
  7933 ms  0x7e7c basekey:0x7fdd86257b80
  7933 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7933 ms  0x7e7c ret:0x7fdd86257b00
  7933 ms  0x7e7c PK11_PubDeriveWithKDF()
  7933 ms  0x7e7c seckey:0x7fdd97251020
  7933 ms     | 0x7e7c EC_ValidatePublicKey()
  7933 ms     | 0x7e7c ret:0x0
  7933 ms  0x7e7c ret:0x7fdd86257b80
  7933 ms  SECKEY_ECParamsToKeySize()
  7933 ms  0x7e7c ret:0xff
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd86257b00
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd98521f80
  7934 ms  0x7e7c PK11_Derive()
  7934 ms  0x7e7c basekey:0x7fdd86257b80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd975dbc80
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd975dbc80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd86257b00
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd975dbc80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd86257b80
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd975dbc80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd98521f80
  7934 ms  0x7e7c PK11_Derive()
  7934 ms  0x7e7c basekey:0x7fdd98944400
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd86136780
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd86257b80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd975dbc80
  7934 ms  0x7e7c PK11_DeriveWithFlags()
  7934 ms  0x7e7c basekey:0x7fdd86257b80
  7934 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7934 ms  0x7e7c ret:0x7fdd98521f80
  7935 ms  0x7e7c PK11_DeriveWithFlags()
  7935 ms  0x7e7c basekey:0x7fdd86257b80
  7935 ms     | 0x7e7c PK11_DeriveWithTemplate()
  7935 ms  0x7e7c ret:0x7fdd98521f80
           /* TID 0x7f24 */
  7962 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7962 ms  0x7f24 ret:0x0
  7962 ms  0x7f24 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7962 ms  0x7f24 ret:0x0
           /* TID 0x7e7c */
  7962 ms  0x7e7c SSL_AuthCertificateComplete()
  7962 ms  0x7e7c fd:0x7fdd864f2dc0
  7962 ms  0x7e7c err:0x0
  7962 ms     | 0x7e7c PK11_DeriveWithFlags()
  7962 ms     | 0x7e7c basekey:0x7fdd86136780
  7962 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7962 ms     | 0x7e7c ret:0x7fdd98521f80
  7962 ms     | 0x7e7c PK11_DeriveWithFlags()
  7962 ms     | 0x7e7c basekey:0x7fdd86136780
  7962 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7962 ms     | 0x7e7c ret:0x7fdd98944400
  7962 ms     | 0x7e7c PK11_DeriveWithFlags()
  7962 ms     | 0x7e7c basekey:0x7fdd86136780
  7962 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7962 ms     | 0x7e7c ret:0x7fdd86616f00
  7962 ms     | 0x7e7c PK11_DeriveWithFlags()
  7962 ms     | 0x7e7c basekey:0x7fdd86257b00
  7962 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7962 ms     | 0x7e7c ret:0x7fdd86616c00
  7962 ms     | 0x7e7c PK11_DeriveWithFlags()
  7962 ms     | 0x7e7c basekey:0x7fdd86257b00
  7962 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd86136800
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd98944400
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd86136800
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd98944400
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd86257c00
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd86257b00
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd975dbc80
  7963 ms     | 0x7e7c PK11_Encrypt()
  7963 ms     | 0x7e7c symkey:0x7fdd86616c00
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd98521f80
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd975dbc80
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd98521f80
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd86257c00
  7963 ms     | 0x7e7c PK11_DeriveWithFlags()
  7963 ms     | 0x7e7c basekey:0x7fdd86136780
  7963 ms     |    | 0x7e7c PK11_DeriveWithTemplate()
  7963 ms     | 0x7e7c ret:0x7fdd86616c00
  7963 ms     | 0x7e7c SECKEY_DestroyPrivateKey()
  7963 ms     | 0x7e7c privk:0x7fdd976a2020::7fdd976a2020  b0 ca 52 86                                      ..R.
  7963 ms     | 0x7e7c privk:0x7fdd976a2020::7fdd976a2020  e5 e5 e5 e5                                      ....
  7963 ms     | 0x7e7c SECKEY_DestroyPrivateKey()
  7963 ms     | 0x7e7c privk:0x7fdd97251020::7fdd97251020  e0 c7 52 86                                      ..R.
  7963 ms     | 0x7e7c privk:0x7fdd97251020::7fdd97251020  e5 e5 e5 e5                                      ....
           /* TID 0x7e84 */
  7963 ms  0x7e84 PR_Close()
  7963 ms  0x7e84 fd:0x7fdd8619e910
           /* TID 0x7e7c */
  7964 ms  0x7e7c PK11_Encrypt()
  7964 ms  0x7e7c symkey:0x7fdd975dbc80
  7964 ms  0x7e7c PK11_Encrypt()
  7964 ms  0x7e7c symkey:0x7fdd975dbc80
           /* TID 0x7e84 */
  8019 ms  0x7e84 PR_Close()
  8019 ms  0x7e84 fd:0x7fdd8619e190
           /* TID 0x7e7c */
  8030 ms  0x7e7c PK11_DeriveWithFlags()
  8030 ms  0x7e7c basekey:0x7fdd86616c00
  8030 ms     | 0x7e7c PK11_DeriveWithTemplate()
  8030 ms  0x7e7c ret:0x7fdd86257b80
  8030 ms  0x7e7c PK11_DeriveWithFlags()
  8030 ms  0x7e7c basekey:0x7fdd86616c00
  8030 ms     | 0x7e7c PK11_DeriveWithTemplate()
  8030 ms  0x7e7c ret:0x7fdd86257b80
  8049 ms  SECKEY_ECParamsToKeySize()
  8049 ms  0x7e7c ret:0x100
  8049 ms  SECKEY_ECParamsToBasePointOrderLen()
  8049 ms  0x7e7c ret:0x100
  8051 ms  SECKEY_ECParamsToBasePointOrderLen()
  8051 ms  0x7e7c ret:0x100
  8051 ms  0x7e7c EC_ValidatePublicKey()
  8052 ms  0x7e7c ret:0x0
  8055 ms  SECKEY_ECParamsToKeySize()
  8055 ms  0x7e7c ret:0x100
  8055 ms  0x7e7c SECKEY_CreateECPrivateKey()
  8055 ms  0x7e7c cx:0x7fdd86139ae8
  8056 ms     | 0x7e7c EC_ValidatePublicKey()
  8058 ms     | 0x7e7c ret:0x0
  8058 ms  0x7e7c ret:0x7fdd99107820::7fdd99107820  90 42 5a 86                                      .BZ.
  8058 ms  0x7e7c PK11_PubDeriveWithKDF()
  8058 ms  0x7e7c seckey:0x7fdd99107820
  8058 ms     | 0x7e7c EC_ValidatePublicKey()
  8060 ms     | 0x7e7c ret:0x0
  8062 ms  0x7e7c ret:0x7fdd86257b80
  8062 ms  0x7e7c PK11_DeriveWithFlags()
  8062 ms  0x7e7c basekey:0x7fdd86257b80
  8062 ms     | 0x7e7c PK11_DeriveWithTemplate()
  8062 ms  0x7e7c ret:0x7fdd86257b00
  8062 ms  0x7e7c PK11_Derive()
  8062 ms  0x7e7c basekey:0x7fdd86257b00
  8063 ms     | 0x7e7c PK11_DeriveWithTemplate()
  8063 ms  0x7e7c ret:0x7fdd86136780
  8063 ms  0x7e7c SECKEY_DestroyPrivateKey()
  8063 ms  0x7e7c privk:0x7fdd99107820::7fdd99107820  90 42 5a 86                                      .BZ.
  8063 ms  0x7e7c privk:0x7fdd99107820::7fdd99107820  e5 e5 e5 e5                                      ....
  8063 ms  0x7e7c PK11_Encrypt()
  8063 ms  0x7e7c symkey:0x7fdd86257d80
           /* TID 0x7f22 */
  8091 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8091 ms  0x7f22 ret:0x0
  8091 ms  0x7f22 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8091 ms  0x7f22 ret:0x0
           /* TID 0x7e84 */
  8092 ms  0x7e84 PR_Close()
  8092 ms  0x7e84 fd:0x7fdd8651e340
           /* TID 0x7e7c */
  8092 ms  0x7e7c SSL_AuthCertificateComplete()
  8092 ms  0x7e7c fd:0x7fdd862c28e0
  8092 ms  0x7e7c err:0x0
  8093 ms  0x7e7c PK11_Encrypt()
  8093 ms  0x7e7c symkey:0x7fdd86257d80
  8093 ms  0x7e7c PK11_Encrypt()
  8093 ms  0x7e7c symkey:0x7fdd86257d80
  8102 ms  0x7e7c PK11_Encrypt()
  8102 ms  0x7e7c symkey:0x7fdd975dbc80
           /* TID 0x7e84 */
  8107 ms  0x7e84 PR_Close()
  8107 ms  0x7e84 fd:0x7fdd8651e340
           /* TID 0x7e7c */
  8255 ms  0x7e7c SECKEY_DestroyPrivateKey()
  8255 ms  0x7e7c privk:0x7fdd97248020::7fdd97248020  b0 10 3d 86                                      ..=.
  8255 ms  0x7e7c privk:0x7fdd97248020::7fdd97248020  e5 e5 e5 e5                                      ....
  8255 ms  0x7e7c SECKEY_DestroyPrivateKey()
  8255 ms  0x7e7c privk:0x7fdd866f5020::7fdd866f5020  c0 1e 51 86                                      ..Q.
  8255 ms  0x7e7c privk:0x7fdd866f5020::7fdd866f5020  e5 e5 e5 e5                                      ....
  8256 ms  0x7e7c PK11_Encrypt()
  8256 ms  0x7e7c symkey:0x7fdd86257d80
           /* TID 0x7e84 */
  8449 ms  0x7e84 PR_Close()
  8449 ms  0x7e84 fd:0x7fdd863d5370
           /* TID 0x7e7c */
  8468 ms  0x7e7c PK11_Encrypt()
  8468 ms  0x7e7c symkey:0x7fdd86257580
  8472 ms  0x7e7c PK11_Encrypt()
  8472 ms  0x7e7c symkey:0x7fdd86257580
  8485 ms  0x7e7c PR_Close()
  8485 ms  0x7e7c fd:0x7fdd9859cd90
           /* TID 0x7e71 */
  8487 ms  0x7e71 EC_ValidatePublicKey()
  8489 ms  0x7e71 ret:0x0
  8489 ms  0x7e71 EC_ValidatePublicKey()
  8491 ms  0x7e71 ret:0x0
  8491 ms  0x7e71 EC_ValidatePublicKey()
  8493 ms  0x7e71 ret:0x0
  8493 ms  0x7e71 EC_ValidatePublicKey()
  8503 ms  0x7e71 ret:0x0
  8503 ms  0x7e71 EC_ValidatePublicKey()
  8506 ms  0x7e71 ret:0x0
  8507 ms  0x7e71 EC_ValidatePublicKey()
  8508 ms  0x7e71 ret:0x0
  8508 ms  0x7e71 EC_ValidatePublicKey()
  8510 ms  0x7e71 ret:0x0
  8510 ms  0x7e71 EC_ValidatePublicKey()
  8511 ms  0x7e71 ret:0x0
  8511 ms  0x7e71 EC_ValidatePublicKey()
  8513 ms  0x7e71 ret:0x0
  8513 ms  0x7e71 EC_ValidatePublicKey()
  8514 ms  0x7e71 ret:0x0
           /* TID 0x7e7c */
  8516 ms  0x7e7c PK11_Encrypt()
  8516 ms  0x7e7c symkey:0x7fdd98521900
  8516 ms  0x7e7c PK11_Encrypt()
  8516 ms  0x7e7c symkey:0x7fdd975dbc80
  8516 ms  0x7e7c PK11_Encrypt()
  8516 ms  0x7e7c symkey:0x7fdd86616780
  8516 ms  0x7e7c PK11_Encrypt()
  8516 ms  0x7e7c symkey:0x7fdd86257d80
  8517 ms  0x7e7c PK11_Encrypt()
  8517 ms  0x7e7c symkey:0x7fdd86257880
  8517 ms  0x7e7c PK11_Encrypt()
  8517 ms  0x7e7c symkey:0x7fdd97866280
  8517 ms  0x7e7c PK11_Encrypt()
  8517 ms  0x7e7c symkey:0x7fdd9859dc00
  8517 ms  0x7e7c PK11_Encrypt()
  8517 ms  0x7e7c symkey:0x7fdd86258000
  8517 ms  0x7e7c PK11_Encrypt()
  8517 ms  0x7e7c symkey:0x7fdd86258280
  8517 ms  0x7e7c PR_Close()
  8517 ms  0x7e7c fd:0x7fdd9d5433a0
  8517 ms  0x7e7c PR_Close()
  8517 ms  0x7e7c fd:0x7fdd97af08b0
  8517 ms     | 0x7e7c PK11_Encrypt()
  8517 ms     | 0x7e7c symkey:0x7fdd861b1780
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd86659ca0
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd8619e280
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd972c5f40
  8518 ms     | 0x7e7c PK11_Encrypt()
  8518 ms     | 0x7e7c symkey:0x7fdd972bcc00
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd972c5e20
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd972c5850
  8518 ms     | 0x7e7c PK11_Encrypt()
  8518 ms     | 0x7e7c symkey:0x7fdd972bbd80
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd97878cd0
  8518 ms  0x7e7c PR_Close()
  8518 ms  0x7e7c fd:0x7fdd9c3fed00
  8518 ms     | 0x7e7c PK11_Encrypt()
  8518 ms     | 0x7e7c symkey:0x7fdd98944680
  8519 ms  0x7e7c PR_Close()
  8519 ms  0x7e7c fd:0x7fdd989ebb80
  8519 ms     | 0x7e7c PK11_Encrypt()
  8519 ms     | 0x7e7c symkey:0x7fdd991dfb00
  8519 ms  0x7e7c PR_Close()
  8519 ms  0x7e7c fd:0x7fdd862c28e0
  8519 ms     | 0x7e7c PK11_Encrypt()
  8519 ms     | 0x7e7c symkey:0x7fdd86257d80
  8519 ms  0x7e7c PR_Close()
  8519 ms  0x7e7c fd:0x7fdd8651ed90
  8519 ms     | 0x7e7c PK11_Encrypt()
  8519 ms     | 0x7e7c symkey:0x7fdd86258000
  8519 ms  0x7e7c PR_Close()
  8519 ms  0x7e7c fd:0x7fdd86659fa0
  8519 ms     | 0x7e7c PK11_Encrypt()
  8519 ms     | 0x7e7c symkey:0x7fdd86258280
  8520 ms  0x7e7c PR_Close()
  8520 ms  0x7e7c fd:0x7fdd86659250
  8520 ms     | 0x7e7c PK11_Encrypt()
  8520 ms     | 0x7e7c symkey:0x7fdd86257880
           /* TID 0x7ecd */
  8520 ms  0x7ecd PR_Close()
  8520 ms  0x7ecd fd:0x7fdd8619e0d0
  8520 ms  0x7ecd PR_Close()
  8520 ms  0x7ecd fd:0x7fdd8619e0d0
           /* TID 0x7e7c */
  8524 ms  0x7e7c PR_Close()
  8524 ms  0x7e7c fd:0x7fdd86197d60
  8524 ms     | 0x7e7c PK11_Encrypt()
  8524 ms     | 0x7e7c symkey:0x7fdd98521900
  8525 ms  0x7e7c PR_Close()
  8525 ms  0x7e7c fd:0x7fdd8619e4f0
  8525 ms     | 0x7e7c PK11_Encrypt()
  8525 ms     | 0x7e7c symkey:0x7fdd9859dc00
  8525 ms  0x7e7c PR_Close()
  8525 ms  0x7e7c fd:0x7fdd976f3040
  8525 ms     | 0x7e7c PK11_Encrypt()
  8525 ms     | 0x7e7c symkey:0x7fdd86616780
  8525 ms  0x7e7c PR_Close()
  8525 ms  0x7e7c fd:0x7fdd864f2dc0
  8525 ms     | 0x7e7c PK11_Encrypt()
  8525 ms     | 0x7e7c symkey:0x7fdd975dbc80
  8529 ms  0x7e7c PR_Close()
  8529 ms  0x7e7c fd:0x7fdd972c5f70
  8529 ms     | 0x7e7c PK11_Encrypt()
  8529 ms     | 0x7e7c symkey:0x7fdd97866280
           /* TID 0x7e71 */
  8533 ms  0x7e71 PR_Close()
  8533 ms  0x7e71 fd:0x7fdd99a53f10
  8533 ms  0x7e71 PR_Close()
  8533 ms  0x7e71 fd:0x7fdd862c2700
  8534 ms  0x7e71 PR_Close()
  8534 ms  0x7e71 fd:0x7fdd862c2940
  8534 ms  0x7e71 PR_Close()
  8534 ms  0x7e71 fd:0x7fdd862c2700
  8535 ms  0x7e71 PR_Close()
  8535 ms  0x7e71 fd:0x7fdd862c2940
  8535 ms  0x7e71 PR_Close()
  8535 ms  0x7e71 fd:0x7fdd862c2700
           /* TID 0x7ee2 */
  8539 ms  0x7ee2 PR_Close()
  8539 ms  0x7ee2 fd:0x7fdd862c2700
           /* TID 0x7e71 */
  8561 ms  0x7e71 PR_Close()
  8561 ms  0x7e71 fd:0x7fdd862c2940
  8561 ms  0x7e71 PR_Close()
  8561 ms  0x7e71 fd:0x7fdd866590d0
  8563 ms  0x7e71 PR_Close()
  8563 ms  0x7e71 fd:0x7fdd862c2940
  8563 ms  0x7e71 PR_Close()
  8563 ms  0x7e71 fd:0x7fdd866590d0
  8563 ms  0x7e71 PR_Close()
  8563 ms  0x7e71 fd:0x7fdda26c89a0
  8563 ms  0x7e71 PR_Close()
  8563 ms  0x7e71 fd:0x7fdda26c88b0
  8564 ms  0x7e71 PR_Close()
  8564 ms  0x7e71 fd:0x7fdda26c8a60
  8570 ms  0x7e71 PR_Close()
  8570 ms  0x7e71 fd:0x7fdd86659100
  8571 ms  0x7e71 PR_Close()
  8571 ms  0x7e71 fd:0x7fdd86659100
  8573 ms  0x7e71 PR_Close()
  8573 ms  0x7e71 fd:0x7fdd862c2940
  8574 ms  0x7e71 PR_Close()
  8574 ms  0x7e71 fd:0x7fdd866591f0
  8574 ms  0x7e71 PR_Close()
  8574 ms  0x7e71 fd:0x7fdd862c2940
  8574 ms  0x7e71 PR_Close()
  8574 ms  0x7e71 fd:0x7fdd866591f0
  8578 ms  0x7e71 PR_Close()
  8578 ms  0x7e71 fd:0x7fdd86659250
  8579 ms  0x7e71 PR_Close()
  8579 ms  0x7e71 fd:0x7fdd86659250
  8581 ms  0x7e71 PR_Close()
  8581 ms  0x7e71 fd:0x7fdd862c2940
  8581 ms  0x7e71 PR_Close()
  8581 ms  0x7e71 fd:0x7fdd86659550
  8582 ms  0x7e71 PR_Close()
  8582 ms  0x7e71 fd:0x7fdd862c2940
  8582 ms  0x7e71 PR_Close()
  8582 ms  0x7e71 fd:0x7fdd86659550
  8585 ms  0x7e71 PR_Close()
  8585 ms  0x7e71 fd:0x7fdd866595e0
  8587 ms  0x7e71 PR_Close()
  8587 ms  0x7e71 fd:0x7fdd866595e0
           /* TID 0x7e7c */
  8588 ms  0x7e7c PK11_Encrypt()
  8588 ms  0x7e7c symkey:0x7fdd86257580
  8588 ms  0x7e7c PR_Close()
  8588 ms  0x7e7c fd:0x7fdd86659220
  8588 ms     | 0x7e7c PK11_Encrypt()
  8588 ms     | 0x7e7c symkey:0x7fdd86257580
           /* TID 0x7e71 */
  8596 ms  0x7e71 PR_Close()
  8596 ms  0x7e71 fd:0x7fdd86659760
  8597 ms  0x7e71 PR_Close()
  8597 ms  0x7e71 fd:0x7fdd86659760
  8599 ms  0x7e71 PR_Close()
  8599 ms  0x7e71 fd:0x7fdd86659790
           /* TID 0x7e84 */
  8607 ms  0x7e84 PR_Close()
  8607 ms  0x7e84 fd:0x7fdd86197df0
           /* TID 0x7ee2 */
  8612 ms  0x7ee2 PR_Close()
  8612 ms  0x7ee2 fd:0x7fdd861971c0
           /* TID 0x7e71 */
  8615 ms  0x7e71 PR_Close()
  8615 ms  0x7e71 fd:0x7fdd862c2940
  8615 ms  0x7e71 PR_Close()
  8615 ms  0x7e71 fd:0x7fdd8619e0d0
           /* TID 0x7ee2 */
  8616 ms  0x7ee2 PR_Close()
  8616 ms  0x7ee2 fd:0x7fdd861971c0
  8622 ms  0x7ee2 PR_Close()
  8622 ms  0x7ee2 fd:0x7fdd862c2700
           /* TID 0x7e84 */
  8629 ms  0x7e84 PR_Close()
  8629 ms  0x7e84 fd:0x7fdd86614ee0
           /* TID 0x7ee2 */
  8660 ms  0x7ee2 PR_Close()
  8660 ms  0x7ee2 fd:0x7fdd86197c10
           /* TID 0x7e76 */
  8683 ms  0x7e76 PR_Close()
  8683 ms  0x7e76 fd:0x7fdda11fde20
           /* TID 0x7e7c */
  8685 ms  0x7e7c PK11_Encrypt()
  8685 ms  0x7e7c symkey:0x7fdd865fc000
  8685 ms  0x7e7c PR_Close()
  8685 ms  0x7e7c fd:0x7fdd865f7790
  8685 ms     | 0x7e7c PK11_Encrypt()
  8685 ms     | 0x7e7c symkey:0x7fdd865fc000
           /* TID 0x7ee2 */
  8695 ms  0x7ee2 PR_Close()
  8695 ms  0x7ee2 fd:0x7fdd865f7490
           /* TID 0x7e71 */
  8707 ms  0x7e71 PR_Close()
  8707 ms  0x7e71 fd:0x7fdd8619e910
  8707 ms  0x7e71 PR_Close()
  8707 ms  0x7e71 fd:0x7fdd865f7490
           /* TID 0x7e7c */
  8707 ms  0x7e7c PR_Close()
  8707 ms  0x7e7c fd:0x7fdd862c20d0
  8707 ms  0x7e7c PR_Close()
  8707 ms  0x7e7c fd:0x7fdd9d5f8eb0
  8707 ms  0x7e7c PR_Close()
  8707 ms  0x7e7c fd:0x7fdd8619e130
           /* TID 0x7ecd */
  8709 ms  0x7ecd PR_Close()
  8709 ms  0x7ecd fd:0x7fdd862c2400
  8709 ms  0x7ecd PR_Close()
  8709 ms  0x7ecd fd:0x7fdd86197040
  8709 ms  0x7ecd PR_Close()
  8709 ms  0x7ecd fd:0x7fdd86197040
  8709 ms  0x7ecd PR_Close()
  8709 ms  0x7ecd fd:0x7fdd86197040
           /* TID 0x7ee2 */
  8709 ms  0x7ee2 PR_Close()
  8709 ms  0x7ee2 fd:0x7fdd86197dc0
           /* TID 0x7e84 */
  8712 ms  0x7e84 PR_Close()
  8712 ms  0x7e84 fd:0x7fdd978789d0
  8712 ms  0x7e84 PR_Close()
  8712 ms  0x7e84 fd:0x7fdd97878b50
           /* TID 0x7e76 */
  8725 ms  0x7e76 PR_Close()
  8725 ms  0x7e76 fd:0x7fdd98abff10
           /* TID 0x7e71 */
  8751 ms  0x7e71 PR_Close()
  8751 ms  0x7e71 fd:0x7fdd8619e910
  8751 ms  0x7e71 PR_Close()
  8751 ms  0x7e71 fd:0x7fdd86659160
           /* TID 0x7ee2 */
  8753 ms  0x7ee2 PR_Close()
  8753 ms  0x7ee2 fd:0x7fdd862c2f10
           /* TID 0x7e76 */
  8755 ms  0x7e76 PR_Close()
  8755 ms  0x7e76 fd:0x7fdd9d853820
           /* TID 0x7ee2 */
  8755 ms  0x7ee2 PR_Close()
  8755 ms  0x7ee2 fd:0x7fdd862c2700
  8812 ms  0x7ee2 PR_Close()
  8812 ms  0x7ee2 fd:0x7fdd86197220
  8814 ms  0x7ee2 PR_Close()
  8814 ms  0x7ee2 fd:0x7fdd86197220
  8818 ms  0x7ee2 PR_Close()
  8818 ms  0x7ee2 fd:0x7fdd86197640
  8819 ms  0x7ee2 PR_Close()
  8819 ms  0x7ee2 fd:0x7fdd86197730
  8831 ms  0x7ee2 PR_Close()
  8831 ms  0x7ee2 fd:0x7fdd86197ca0
  8838 ms  0x7ee2 PR_Close()
  8838 ms  0x7ee2 fd:0x7fdd8619eac0
  8846 ms  0x7ee2 PR_Close()
  8846 ms  0x7ee2 fd:0x7fdd862c2460
  8856 ms  0x7ee2 PR_Close()
  8856 ms  0x7ee2 fd:0x7fdd862c2700
  8857 ms  0x7ee2 PR_Close()
  8857 ms  0x7ee2 fd:0x7fdd862c2700
           /* TID 0x7e71 */
  9098 ms  0x7e71 PR_Close()
  9098 ms  0x7e71 fd:0x7fdd86197610
  9098 ms  0x7e71 PR_Close()
  9098 ms  0x7e71 fd:0x7fdd86197610
  9104 ms  0x7e71 PR_Close()
  9104 ms  0x7e71 fd:0x7fddbf9da130
  9104 ms  0x7e71 PR_Close()
  9104 ms  0x7e71 fd:0x7fddbf9da190
Process terminated
