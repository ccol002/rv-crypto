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
           /* TID 0x2e6 */
   305 ms  0x2e6 SSL_ImportFD()
   305 ms  0x2e6 ret:0x7f97a0886550
   306 ms  0x2e6 SSL_AuthCertificateHook()
   306 ms  0x2e6 fd:0x7f97a0886550
   306 ms  0x2e6 ret:0x0
   306 ms  0x2e6 PR_Connect()
   306 ms  0x2e6 fd:0x7f97a0886550
   517 ms  0x2e6 SECKEY_CreateECPrivateKey()
   517 ms  0x2e6 cx:0x7f979a8bc948
   519 ms     | 0x2e6 EC_ValidatePublicKey()
   519 ms     | 0x2e6 ret:0x0
   519 ms  0x2e6 ret:0x7f979a833020::7f979a833020  b0 70 8b a9                                      .p..
   520 ms  0x2e6 SECKEY_CreateECPrivateKey()
   520 ms  0x2e6 cx:0x7f979a8bc948
   521 ms     | 0x2e6 EC_ValidatePublicKey()
   527 ms     | 0x2e6 ret:0x0
   527 ms  0x2e6 ret:0x7f979a835020::7f979a835020  90 72 8b a9                                      .r..
   745 ms  SECKEY_ECParamsToKeySize()
   745 ms  0x2e6 ret:0x100
   745 ms  0x2e6 SECKEY_CreateECPrivateKey()
   745 ms  0x2e6 cx:0x7f979a8bc948
   747 ms     | 0x2e6 EC_ValidatePublicKey()
   751 ms     | 0x2e6 ret:0x0
   751 ms  0x2e6 ret:0x7f979a71b820::7f979a71b820  30 7d 8b a9                                      0}..
   751 ms  0x2e6 PK11_PubDeriveWithKDF()
   751 ms  0x2e6 seckey:0x7f979a71b820
   751 ms     | 0x2e6 EC_ValidatePublicKey()
   756 ms     | 0x2e6 ret:0x0
   760 ms  0x2e6 ret:0x7f979b2a7880
   760 ms  0x2e6 PK11_DeriveWithFlags()
   760 ms  0x2e6 basekey:0x7f979b2a7880
   760 ms     | 0x2e6 PK11_DeriveWithTemplate()
   760 ms  0x2e6 ret:0x7f979b2a7800
   760 ms  0x2e6 PK11_Derive()
   760 ms  0x2e6 basekey:0x7f979b2a7800
   760 ms     | 0x2e6 PK11_DeriveWithTemplate()
   760 ms  0x2e6 ret:0x7f979c4fdb80
   760 ms  0x2e6 SECKEY_DestroyPrivateKey()
   760 ms  0x2e6 privk:0x7f979a71b820::7f979a71b820  30 7d 8b a9                                      0}..
   761 ms  0x2e6 privk:0x7f979a71b820::7f979a71b820  e5 e5 e5 e5                                      ....
   761 ms  0x2e6 PK11_Encrypt()
   761 ms  0x2e6 symkey:0x7f979b2a7980
   762 ms  0x2e6 PR_Connect()
   762 ms  0x2e6 fd:0x7f979a737160
           /* TID 0x32e */
   789 ms  0x32e PR_Close()
   789 ms  0x32e fd:0x7f979a7370d0
           /* TID 0x2ee */
   816 ms  0x2ee PR_Close()
   816 ms  0x2ee fd:0x7f979a7370d0
           /* TID 0x35b */
   816 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   816 ms  0x35b ret:0x0
           /* TID 0x2e6 */
   817 ms  0x2e6 SSL_AuthCertificateComplete()
   817 ms  0x2e6 fd:0x7f97a0886550
   817 ms  0x2e6 err:0x0
   817 ms  0x2e6 PK11_Encrypt()
   817 ms  0x2e6 symkey:0x7f979b2a7980
   973 ms  0x2e6 SECKEY_DestroyPrivateKey()
   973 ms  0x2e6 privk:0x7f979a835020::7f979a835020  90 72 8b a9                                      .r..
   973 ms  0x2e6 privk:0x7f979a835020::7f979a835020  e5 e5 e5 e5                                      ....
   974 ms  0x2e6 SECKEY_DestroyPrivateKey()
   974 ms  0x2e6 privk:0x7f979a833020::7f979a833020  b0 70 8b a9                                      .p..
   974 ms  0x2e6 privk:0x7f979a833020::7f979a833020  e5 e5 e5 e5                                      ....
  1235 ms  0x2e6 SSL_ImportFD()
  1235 ms  0x2e6 ret:0x7f979a7372e0
  1235 ms  0x2e6 SSL_AuthCertificateHook()
  1235 ms  0x2e6 fd:0x7f979a7372e0
  1235 ms  0x2e6 ret:0x0
  1235 ms  0x2e6 PR_Connect()
  1235 ms  0x2e6 fd:0x7f979a7372e0
  1262 ms  0x2e6 SECKEY_CreateECPrivateKey()
  1262 ms  0x2e6 cx:0x7f979a70c3e8
  1263 ms     | 0x2e6 EC_ValidatePublicKey()
  1263 ms     | 0x2e6 ret:0x0
  1263 ms  0x2e6 ret:0x7f979a71a020::7f979a71a020  40 72 8b a9                                      @r..
  1264 ms  0x2e6 SECKEY_CreateECPrivateKey()
  1264 ms  0x2e6 cx:0x7f979a70c3e8
  1266 ms     | 0x2e6 EC_ValidatePublicKey()
  1270 ms     | 0x2e6 ret:0x0
  1270 ms  0x2e6 ret:0x7f979a71c020::7f979a71c020  60 7a 8b a9                                      `z..
           /* TID 0x35b */
  1322 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1322 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  1322 ms  SECKEY_ECParamsToKeySize()
  1322 ms  0x2e6 ret:0x100
  1322 ms  0x2e6 SECKEY_CreateECPrivateKey()
  1322 ms  0x2e6 cx:0x7f979a70c3e8
  1323 ms     | 0x2e6 EC_ValidatePublicKey()
  1326 ms     | 0x2e6 ret:0x0
  1326 ms  0x2e6 ret:0x7f979a71f020::7f979a71f020  d0 7d 8b a9                                      .}..
  1326 ms  0x2e6 PK11_PubDeriveWithKDF()
  1326 ms  0x2e6 seckey:0x7f979a71f020
  1326 ms     | 0x2e6 EC_ValidatePublicKey()
  1329 ms     | 0x2e6 ret:0x0
  1332 ms  0x2e6 ret:0x7f979b2a7880
  1332 ms  0x2e6 PK11_DeriveWithFlags()
  1332 ms  0x2e6 basekey:0x7f979b2a7880
  1332 ms     | 0x2e6 PK11_DeriveWithTemplate()
  1333 ms  0x2e6 ret:0x7f979a74ad80
  1333 ms  0x2e6 PK11_Derive()
  1333 ms  0x2e6 basekey:0x7f979a74ad80
  1333 ms     | 0x2e6 PK11_DeriveWithTemplate()
  1333 ms  0x2e6 ret:0x7f979a74ae00
  1333 ms  0x2e6 SECKEY_DestroyPrivateKey()
  1333 ms  0x2e6 privk:0x7f979a71f020::7f979a71f020  d0 7d 8b a9                                      .}..
  1333 ms  0x2e6 privk:0x7f979a71f020::7f979a71f020  e5 e5 e5 e5                                      ....
  1333 ms  0x2e6 PK11_Encrypt()
  1333 ms  0x2e6 symkey:0x7f979a74af80
  1333 ms  0x2e6 SSL_AuthCertificateComplete()
  1333 ms  0x2e6 fd:0x7f979a7372e0
  1333 ms  0x2e6 err:0x0
  1334 ms  0x2e6 PK11_Encrypt()
  1334 ms  0x2e6 symkey:0x7f979a74af80
  1386 ms  0x2e6 SECKEY_DestroyPrivateKey()
  1386 ms  0x2e6 privk:0x7f979a71c020::7f979a71c020  60 7a 8b a9                                      `z..
  1386 ms  0x2e6 privk:0x7f979a71c020::7f979a71c020  e5 e5 e5 e5                                      ....
  1386 ms  0x2e6 SECKEY_DestroyPrivateKey()
  1386 ms  0x2e6 privk:0x7f979a71a020::7f979a71a020  40 72 8b a9                                      @r..
  1386 ms  0x2e6 privk:0x7f979a71a020::7f979a71a020  e5 e5 e5 e5                                      ....
  1390 ms  0x2e6 PK11_Encrypt()
  1390 ms  0x2e6 symkey:0x7f979a74af80
  1419 ms  0x2e6 PK11_Encrypt()
  1419 ms  0x2e6 symkey:0x7f979a74af80
  1448 ms  0x2e6 PK11_Encrypt()
  1448 ms  0x2e6 symkey:0x7f979a74af80
  1478 ms  0x2e6 PK11_Encrypt()
  1478 ms  0x2e6 symkey:0x7f979a74af80
  1595 ms  0x2e6 PK11_Encrypt()
  1595 ms  0x2e6 symkey:0x7f979a74af80
  1627 ms  0x2e6 PK11_Encrypt()
  1627 ms  0x2e6 symkey:0x7f979a74af80
  1658 ms  0x2e6 PK11_Encrypt()
  1658 ms  0x2e6 symkey:0x7f979a74af80
           /* TID 0x355 */
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a7373d0
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a737490
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a7373d0
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a737490
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a7373d0
  1686 ms  0x355 PR_Close()
  1686 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a7373d0
  1687 ms  0x355 PR_Close()
  1687 ms  0x355 fd:0x7f979a737490
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a7373d0
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a737490
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a7373d0
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a737490
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a7373d0
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a737490
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a7373d0
  1688 ms  0x355 PR_Close()
  1688 ms  0x355 fd:0x7f979a737490
  1689 ms  0x355 PR_Close()
  1689 ms  0x355 fd:0x7f979a7373d0
  1689 ms  0x355 PR_Close()
  1689 ms  0x355 fd:0x7f979a737490
  1806 ms  0x355 PR_Close()
  1806 ms  0x355 fd:0x7f979a7373d0
  1806 ms  0x355 PR_Close()
  1806 ms  0x355 fd:0x7f979a737400
  1850 ms  0x355 PR_Close()
  1850 ms  0x355 fd:0x7f979a737400
  1850 ms  0x355 PR_Close()
  1850 ms  0x355 fd:0x7f979a737490
  1853 ms  0x355 PR_Close()
  1853 ms  0x355 fd:0x7f979a737490
  1853 ms  0x355 PR_Close()
  1853 ms  0x355 fd:0x7f979a737490
  1856 ms  0x355 PR_Close()
  1856 ms  0x355 fd:0x7f979a737490
  1857 ms  0x355 PR_Close()
  1857 ms  0x355 fd:0x7f979a737490
  1907 ms  0x355 PR_Close()
  1907 ms  0x355 fd:0x7f979a737490
  1908 ms  0x355 PR_Close()
  1908 ms  0x355 fd:0x7f979a737490
  1916 ms  0x355 PR_Close()
  1916 ms  0x355 fd:0x7f979a737490
  1916 ms  0x355 PR_Close()
  1916 ms  0x355 fd:0x7f979a737490
  1926 ms  0x355 PR_Close()
  1926 ms  0x355 fd:0x7f979a737490
  1927 ms  0x355 PR_Close()
  1927 ms  0x355 fd:0x7f979a737490
  1928 ms  0x355 PR_Close()
  1928 ms  0x355 fd:0x7f979a737490
  1928 ms  0x355 PR_Close()
  1928 ms  0x355 fd:0x7f979a737490
           /* TID 0x352 */
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
  1929 ms  0x352 PR_Close()
  1929 ms  0x352 fd:0x7f979a737490
           /* TID 0x32e */
  2431 ms  0x32e PR_Close()
  2431 ms  0x32e fd:0x7f979a4b1940
  2432 ms  0x32e PR_Close()
  2432 ms  0x32e fd:0x7f979a4b1940
  2760 ms  0x32e PR_Close()
  2760 ms  0x32e fd:0x7f979a4b1970
           /* TID 0x2e6 */
  3463 ms  0x2e6 PR_Close()
  3463 ms  0x2e6 fd:0x7f979d77df40
  3463 ms     | 0x2e6 PK11_Encrypt()
  3463 ms     | 0x2e6 symkey:0x7f979c0e7100
  3471 ms  0x2e6 SSL_ImportFD()
  3471 ms  0x2e6 ret:0x7f979a4b1e20
  3471 ms  0x2e6 SSL_AuthCertificateHook()
  3471 ms  0x2e6 fd:0x7f979a4b1e20
  3471 ms  0x2e6 ret:0x0
  3471 ms  0x2e6 PR_Connect()
  3471 ms  0x2e6 fd:0x7f979a4b1e20
  3672 ms  0x2e6 SECKEY_CreateECPrivateKey()
  3672 ms  0x2e6 cx:0x7f979a70c728
  3674 ms     | 0x2e6 EC_ValidatePublicKey()
  3674 ms     | 0x2e6 ret:0x0
  3674 ms  0x2e6 ret:0x7f979a733020::7f979a733020  e0 92 28 9b                                      ..(.
  3674 ms  0x2e6 SECKEY_CreateECPrivateKey()
  3674 ms  0x2e6 cx:0x7f979a70c728
  3676 ms     | 0x2e6 EC_ValidatePublicKey()
  3678 ms     | 0x2e6 ret:0x0
  3678 ms  0x2e6 ret:0x7f979a735020::7f979a735020  c0 94 28 9b                                      ..(.
  3884 ms  SECKEY_ECParamsToKeySize()
  3884 ms  0x2e6 ret:0x100
  3884 ms  0x2e6 SECKEY_CreateECPrivateKey()
  3884 ms  0x2e6 cx:0x7f979a70c728
  3885 ms     | 0x2e6 EC_ValidatePublicKey()
  3887 ms     | 0x2e6 ret:0x0
  3887 ms  0x2e6 ret:0x7f979a426020::7f979a426020  10 9a 28 9b                                      ..(.
  3887 ms  0x2e6 PK11_PubDeriveWithKDF()
  3887 ms  0x2e6 seckey:0x7f979a426020
  3887 ms     | 0x2e6 EC_ValidatePublicKey()
  3889 ms     | 0x2e6 ret:0x0
  3891 ms  0x2e6 ret:0x7f979c0e6f80
  3891 ms  0x2e6 PK11_DeriveWithFlags()
  3891 ms  0x2e6 basekey:0x7f979c0e6f80
  3891 ms     | 0x2e6 PK11_DeriveWithTemplate()
  3891 ms  0x2e6 ret:0x7f979c0e6f00
  3891 ms  0x2e6 PK11_Derive()
  3891 ms  0x2e6 basekey:0x7f979c0e6f00
  3891 ms     | 0x2e6 PK11_DeriveWithTemplate()
  3891 ms  0x2e6 ret:0x7f979b2a7880
  3891 ms  0x2e6 SECKEY_DestroyPrivateKey()
  3891 ms  0x2e6 privk:0x7f979a426020::7f979a426020  10 9a 28 9b                                      ..(.
  3891 ms  0x2e6 privk:0x7f979a426020::7f979a426020  e5 e5 e5 e5                                      ....
  3891 ms  0x2e6 PK11_Encrypt()
  3891 ms  0x2e6 symkey:0x7f979c0e7000
  3892 ms  0x2e6 PR_Connect()
  3892 ms  0x2e6 fd:0x7f979a7d8f70
           /* TID 0x35b */
  3943 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  3943 ms  0x35b ret:0x0
           /* TID 0x2ee */
  3943 ms  0x2ee PR_Close()
  3943 ms  0x2ee fd:0x7f979a4b1df0
           /* TID 0x2e6 */
  3944 ms  0x2e6 SSL_AuthCertificateComplete()
  3944 ms  0x2e6 fd:0x7f979a4b1e20
  3944 ms  0x2e6 err:0x0
  3944 ms  0x2e6 PK11_Encrypt()
  3944 ms  0x2e6 symkey:0x7f979c0e7000
           /* TID 0x32e */
  3966 ms  0x32e PR_Close()
  3966 ms  0x32e fd:0x7f979a4b19a0
  3967 ms  0x32e PR_Close()
  3967 ms  0x32e fd:0x7f979a4b19a0
           /* TID 0x2e6 */
  4091 ms  0x2e6 SECKEY_DestroyPrivateKey()
  4091 ms  0x2e6 privk:0x7f979a735020::7f979a735020  c0 94 28 9b                                      ..(.
  4092 ms  0x2e6 privk:0x7f979a735020::7f979a735020  e5 e5 e5 e5                                      ....
  4092 ms  0x2e6 SECKEY_DestroyPrivateKey()
  4092 ms  0x2e6 privk:0x7f979a733020::7f979a733020  e0 92 28 9b                                      ..(.
  4092 ms  0x2e6 privk:0x7f979a733020::7f979a733020  e5 e5 e5 e5                                      ....
           /* TID 0x2ee */
  4164 ms  0x2ee PR_Close()
  4164 ms  0x2ee fd:0x7f979a4b19a0
  4164 ms  0x2ee PR_Close()
  4164 ms  0x2ee fd:0x7f979a4b1f10
  4164 ms  0x2ee PR_Close()
  4164 ms  0x2ee fd:0x7f979a737490
  4317 ms  0x2ee PR_Close()
  4317 ms  0x2ee fd:0x7f979a4b1ac0
           /* TID 0x2e6 */
  4520 ms  0x2e6 SSL_ImportFD()
  4520 ms  0x2e6 ret:0x7f979bd46820
  4520 ms  0x2e6 SSL_AuthCertificateHook()
  4520 ms  0x2e6 fd:0x7f979bd46820
  4521 ms  0x2e6 ret:0x0
  4521 ms  0x2e6 PR_Connect()
  4521 ms  0x2e6 fd:0x7f979bd46820
  4575 ms  0x2e6 SECKEY_CreateECPrivateKey()
  4575 ms  0x2e6 cx:0x7f979a70ca68
  4576 ms     | 0x2e6 EC_ValidatePublicKey()
  4576 ms     | 0x2e6 ret:0x0
  4576 ms  0x2e6 ret:0x7f979a426020::7f979a426020  f0 b6 9c 9b                                      ....
  4576 ms  0x2e6 SECKEY_CreateECPrivateKey()
  4576 ms  0x2e6 cx:0x7f979a70ca68
  4577 ms     | 0x2e6 EC_ValidatePublicKey()
  4579 ms     | 0x2e6 ret:0x0
  4579 ms  0x2e6 ret:0x7f979a428020::7f979a428020  c0 b9 9c 9b                                      ....
  4641 ms  SECKEY_ECParamsToKeySize()
  4641 ms  0x2e6 ret:0x100
  4641 ms  0x2e6 SECKEY_CreateECPrivateKey()
  4641 ms  0x2e6 cx:0x7f979a70ca68
  4644 ms     | 0x2e6 EC_ValidatePublicKey()
  4649 ms     | 0x2e6 ret:0x0
  4649 ms  0x2e6 ret:0x7f979a439820::7f979a439820  40 22 51 9a                                      @"Q.
  4649 ms  0x2e6 PK11_PubDeriveWithKDF()
  4649 ms  0x2e6 seckey:0x7f979a439820
  4649 ms     | 0x2e6 EC_ValidatePublicKey()
  4654 ms     | 0x2e6 ret:0x0
  4658 ms  0x2e6 ret:0x7f979c0e6f80
  4658 ms  0x2e6 PK11_DeriveWithFlags()
  4658 ms  0x2e6 basekey:0x7f979c0e6f80
  4658 ms     | 0x2e6 PK11_DeriveWithTemplate()
  4658 ms  0x2e6 ret:0x7f979a443f80
  4658 ms  0x2e6 PK11_Derive()
  4658 ms  0x2e6 basekey:0x7f979a443f80
  4658 ms     | 0x2e6 PK11_DeriveWithTemplate()
  4658 ms  0x2e6 ret:0x7f979a444000
  4658 ms  0x2e6 SECKEY_DestroyPrivateKey()
  4658 ms  0x2e6 privk:0x7f979a439820::7f979a439820  40 22 51 9a                                      @"Q.
  4658 ms  0x2e6 privk:0x7f979a439820::7f979a439820  e5 e5 e5 e5                                      ....
  4659 ms  0x2e6 PK11_Encrypt()
  4659 ms  0x2e6 symkey:0x7f979a444180
  4659 ms  0x2e6 PR_Connect()
  4659 ms  0x2e6 fd:0x7f979a504280
           /* TID 0x2ee */
  4748 ms  0x2ee PR_Close()
  4748 ms  0x2ee fd:0x7f979a504460
           /* TID 0x35b */
  4748 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4748 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  4761 ms  0x2e6 SSL_AuthCertificateComplete()
  4761 ms  0x2e6 fd:0x7f979bd46820
  4761 ms  0x2e6 err:0x0
  4761 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  4761 ms     | 0x2e6 privk:0x7f979a428020::7f979a428020  c0 b9 9c 9b                                      ....
  4761 ms     | 0x2e6 privk:0x7f979a428020::7f979a428020  e5 e5 e5 e5                                      ....
  4762 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  4762 ms     | 0x2e6 privk:0x7f979a426020::7f979a426020  f0 b6 9c 9b                                      ....
  4762 ms     | 0x2e6 privk:0x7f979a426020::7f979a426020  e5 e5 e5 e5                                      ....
  4762 ms  0x2e6 PK11_Encrypt()
  4762 ms  0x2e6 symkey:0x7f979a444180
  4824 ms  0x2e6 PR_Close()
  4824 ms  0x2e6 fd:0x7f979bd46820
  4825 ms     | 0x2e6 PK11_Encrypt()
  4825 ms     | 0x2e6 symkey:0x7f979a444180
           /* TID 0x301 */
  4835 ms  0x301 PR_Close()
  4835 ms  0x301 fd:0x7f979a504880
           /* TID 0x2e6 */
  4844 ms  0x2e6 SSL_ImportFD()
  4844 ms  0x2e6 ret:0x7f979a504fd0
  4844 ms  0x2e6 SSL_AuthCertificateHook()
  4844 ms  0x2e6 fd:0x7f979a504fd0
  4844 ms  0x2e6 ret:0x0
  4844 ms  0x2e6 PR_Connect()
  4844 ms  0x2e6 fd:0x7f979a504fd0
  4899 ms  0x2e6 SECKEY_CreateECPrivateKey()
  4899 ms  0x2e6 cx:0x7f979a70cda8
  4900 ms     | 0x2e6 EC_ValidatePublicKey()
  4900 ms     | 0x2e6 ret:0x0
  4900 ms  0x2e6 ret:0x7f979a432820::7f979a432820  70 2e 51 9a                                      p.Q.
  4900 ms  0x2e6 SECKEY_CreateECPrivateKey()
  4900 ms  0x2e6 cx:0x7f979a70cda8
  4902 ms     | 0x2e6 EC_ValidatePublicKey()
  4907 ms     | 0x2e6 ret:0x0
  4907 ms  0x2e6 ret:0x7f979a439020::7f979a439020  30 2d 51 9a                                      0-Q.
  4961 ms  0x2e6 PK11_Derive()
  4961 ms  0x2e6 basekey:0x7f979a443f80
  4962 ms     | 0x2e6 PK11_DeriveWithTemplate()
  4962 ms  0x2e6 ret:0x7f979a444000
  4962 ms  0x2e6 PK11_Encrypt()
  4962 ms  0x2e6 symkey:0x7f979a444080
  4964 ms  0x2e6 SECKEY_DestroyPrivateKey()
  4964 ms  0x2e6 privk:0x7f979a439020::7f979a439020  30 2d 51 9a                                      0-Q.
  4965 ms  0x2e6 privk:0x7f979a439020::7f979a439020  e5 e5 e5 e5                                      ....
  4965 ms  0x2e6 SECKEY_DestroyPrivateKey()
  4965 ms  0x2e6 privk:0x7f979a432820::7f979a432820  70 2e 51 9a                                      p.Q.
  4965 ms  0x2e6 privk:0x7f979a432820::7f979a432820  e5 e5 e5 e5                                      ....
  4966 ms  0x2e6 PK11_Encrypt()
  4966 ms  0x2e6 symkey:0x7f979a444080
  5269 ms  0x2e6 PR_Close()
  5269 ms  0x2e6 fd:0x7f979a504fd0
  5269 ms     | 0x2e6 PK11_Encrypt()
  5269 ms     | 0x2e6 symkey:0x7f979a444080
           /* TID 0x301 */
  5281 ms  0x301 PR_Close()
  5281 ms  0x301 fd:0x7f979a504880
           /* TID 0x2e6 */
  5348 ms  0x2e6 SSL_ImportFD()
  5348 ms  0x2e6 ret:0x7f979c0e9cd0
  5348 ms  0x2e6 SSL_AuthCertificateHook()
  5348 ms  0x2e6 fd:0x7f979c0e9cd0
  5348 ms  0x2e6 ret:0x0
  5348 ms  0x2e6 PR_Connect()
  5348 ms  0x2e6 fd:0x7f979c0e9cd0
  5385 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5385 ms  0x2e6 cx:0x7f979a70cf48
  5386 ms     | 0x2e6 EC_ValidatePublicKey()
  5386 ms     | 0x2e6 ret:0x0
  5386 ms  0x2e6 ret:0x7f979a43c020::7f979a43c020  d0 a8 55 89                                      ..U.
  5386 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5386 ms  0x2e6 cx:0x7f979a70cf48
  5386 ms     | 0x2e6 EC_ValidatePublicKey()
  5388 ms     | 0x2e6 ret:0x0
  5388 ms  0x2e6 ret:0x7f979a43e020::7f979a43e020  90 52 46 9a                                      .RF.
  5442 ms  0x2e6 PK11_Derive()
  5442 ms  0x2e6 basekey:0x7f979a444000
  5442 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5442 ms  0x2e6 ret:0x7f979a443f80
  5442 ms  0x2e6 PK11_PubDeriveWithKDF()
  5442 ms  0x2e6 seckey:0x7f979a43c020
  5442 ms     | 0x2e6 EC_ValidatePublicKey()
  5442 ms     | 0x2e6 ret:0x0
  5443 ms  0x2e6 ret:0x7f979a444000
  5443 ms  SECKEY_ECParamsToKeySize()
  5443 ms  0x2e6 ret:0xff
  5443 ms  0x2e6 PK11_DeriveWithFlags()
  5443 ms  0x2e6 basekey:0x7f979a443f80
  5443 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5443 ms  0x2e6 ret:0x7f979c0e6f80
  5443 ms  0x2e6 PK11_Derive()
  5443 ms  0x2e6 basekey:0x7f979a444000
  5443 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5443 ms  0x2e6 ret:0x7f979a444200
  5443 ms  0x2e6 PK11_DeriveWithFlags()
  5443 ms  0x2e6 basekey:0x7f979a444200
  5443 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5443 ms  0x2e6 ret:0x7f979a443f80
  5443 ms  0x2e6 PK11_DeriveWithFlags()
  5443 ms  0x2e6 basekey:0x7f979a444200
  5443 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5443 ms  0x2e6 ret:0x7f979a444000
  5443 ms  0x2e6 PK11_DeriveWithFlags()
  5443 ms  0x2e6 basekey:0x7f979a444200
  5443 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5443 ms  0x2e6 ret:0x7f979c0e6f80
  5443 ms  0x2e6 PK11_Derive()
  5443 ms  0x2e6 basekey:0x7f979a444180
  5444 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5444 ms  0x2e6 ret:0x7f979a444100
  5444 ms  0x2e6 PK11_DeriveWithFlags()
  5444 ms  0x2e6 basekey:0x7f979a444000
  5444 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5444 ms  0x2e6 ret:0x7f979a444200
  5444 ms  0x2e6 PK11_DeriveWithFlags()
  5444 ms  0x2e6 basekey:0x7f979a444000
  5444 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5444 ms  0x2e6 ret:0x7f979c0e6f80
  5447 ms  SECKEY_ECParamsToKeySize()
  5447 ms  0x2e6 ret:0x100
  5447 ms  SECKEY_ECParamsToBasePointOrderLen()
  5447 ms  0x2e6 ret:0x100
  5447 ms  SECKEY_ECParamsToBasePointOrderLen()
  5447 ms  0x2e6 ret:0x100
  5447 ms  0x2e6 EC_ValidatePublicKey()
  5451 ms  0x2e6 ret:0x0
  5456 ms  0x2e6 PK11_DeriveWithFlags()
  5456 ms  0x2e6 basekey:0x7f979a444000
  5456 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5456 ms  0x2e6 ret:0x7f979c0e6f80
  5486 ms  0x2e6 SSL_ImportFD()
  5486 ms  0x2e6 ret:0x7f97895bf160
  5486 ms  0x2e6 SSL_AuthCertificateHook()
  5486 ms  0x2e6 fd:0x7f97895bf160
  5486 ms  0x2e6 ret:0x0
  5486 ms  0x2e6 PR_Connect()
  5486 ms  0x2e6 fd:0x7f97895bf160
  5487 ms  0x2e6 SSL_ImportFD()
  5487 ms  0x2e6 ret:0x7f9789419730
  5487 ms  0x2e6 SSL_AuthCertificateHook()
  5487 ms  0x2e6 fd:0x7f9789419730
  5487 ms  0x2e6 ret:0x0
  5487 ms  0x2e6 PR_Connect()
  5487 ms  0x2e6 fd:0x7f9789419730
  5488 ms  0x2e6 SSL_ImportFD()
  5488 ms  0x2e6 ret:0x7f9789419c40
  5488 ms  0x2e6 SSL_AuthCertificateHook()
  5488 ms  0x2e6 fd:0x7f9789419c40
  5488 ms  0x2e6 ret:0x0
  5488 ms  0x2e6 PR_Connect()
  5488 ms  0x2e6 fd:0x7f9789419c40
  5489 ms  0x2e6 SSL_ImportFD()
  5489 ms  0x2e6 ret:0x7f9789419c70
  5489 ms  0x2e6 SSL_AuthCertificateHook()
  5489 ms  0x2e6 fd:0x7f9789419c70
  5489 ms  0x2e6 ret:0x0
  5489 ms  0x2e6 PR_Connect()
  5489 ms  0x2e6 fd:0x7f9789419c70
  5490 ms  0x2e6 SSL_ImportFD()
  5490 ms  0x2e6 ret:0x7f9789419d30
  5490 ms  0x2e6 SSL_AuthCertificateHook()
  5490 ms  0x2e6 fd:0x7f9789419d30
  5490 ms  0x2e6 ret:0x0
  5490 ms  0x2e6 PR_Connect()
  5490 ms  0x2e6 fd:0x7f9789419d30
  5490 ms  0x2e6 SSL_ImportFD()
  5490 ms  0x2e6 ret:0x7f9789419dc0
  5490 ms  0x2e6 SSL_AuthCertificateHook()
  5490 ms  0x2e6 fd:0x7f9789419dc0
  5490 ms  0x2e6 ret:0x0
  5491 ms  0x2e6 PR_Connect()
  5491 ms  0x2e6 fd:0x7f9789419dc0
  5491 ms  0x2e6 SSL_ImportFD()
  5491 ms  0x2e6 ret:0x7f9789419e80
  5491 ms  0x2e6 SSL_AuthCertificateHook()
  5491 ms  0x2e6 fd:0x7f9789419e80
  5491 ms  0x2e6 ret:0x0
  5492 ms  0x2e6 PR_Connect()
  5492 ms  0x2e6 fd:0x7f9789419e80
  5499 ms  0x2e6 SSL_ImportFD()
  5499 ms  0x2e6 ret:0x7f9789419f40
  5499 ms  0x2e6 SSL_AuthCertificateHook()
  5499 ms  0x2e6 fd:0x7f9789419f40
  5499 ms  0x2e6 ret:0x0
  5500 ms  0x2e6 PR_Connect()
  5500 ms  0x2e6 fd:0x7f9789419f40
  5500 ms  0x2e6 SSL_ImportFD()
  5500 ms  0x2e6 ret:0x7f978948d4c0
  5500 ms  0x2e6 SSL_AuthCertificateHook()
  5500 ms  0x2e6 fd:0x7f978948d4c0
  5500 ms  0x2e6 ret:0x0
  5501 ms  0x2e6 PR_Connect()
  5501 ms  0x2e6 fd:0x7f978948d4c0
  5501 ms  0x2e6 SSL_ImportFD()
  5501 ms  0x2e6 ret:0x7f97895bf0a0
  5501 ms  0x2e6 SSL_AuthCertificateHook()
  5501 ms  0x2e6 fd:0x7f97895bf0a0
  5501 ms  0x2e6 ret:0x0
  5501 ms  0x2e6 PR_Connect()
  5501 ms  0x2e6 fd:0x7f97895bf0a0
  5543 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5543 ms  0x2e6 cx:0x7f979a70d288
  5544 ms     | 0x2e6 EC_ValidatePublicKey()
  5544 ms     | 0x2e6 ret:0x0
  5545 ms  0x2e6 ret:0x7f97895cb820::7f97895cb820  a0 d6 5b 89                                      ..[.
  5545 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5545 ms  0x2e6 cx:0x7f979a70d288
  5549 ms     | 0x2e6 EC_ValidatePublicKey()
  5556 ms     | 0x2e6 ret:0x0
  5556 ms  0x2e6 ret:0x7f97895cd820::7f97895cd820  d0 d8 5b 89                                      ..[.
  5559 ms  0x2e6 PR_Connect()
  5559 ms  0x2e6 fd:0x7f9789419670
  5560 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5560 ms  0x2e6 cx:0x7f979a70e2c8
  5561 ms     | 0x2e6 EC_ValidatePublicKey()
  5561 ms     | 0x2e6 ret:0x0
  5561 ms  0x2e6 ret:0x7f97895d0820::7f97895d0820  10 da 5b 89                                      ..[.
  5562 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5562 ms  0x2e6 cx:0x7f979a70e2c8
  5563 ms     | 0x2e6 EC_ValidatePublicKey()
  5566 ms     | 0x2e6 ret:0x0
  5566 ms  0x2e6 ret:0x7f97895d2820::7f97895d2820  f0 db 5b 89                                      ..[.
  5567 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5567 ms  0x2e6 cx:0x7f979a70e128
  5568 ms     | 0x2e6 EC_ValidatePublicKey()
  5568 ms     | 0x2e6 ret:0x0
  5568 ms  0x2e6 ret:0x7f97895d5020::7f97895d5020  30 dd 5b 89                                      0.[.
  5568 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5568 ms  0x2e6 cx:0x7f979a70e128
  5569 ms     | 0x2e6 EC_ValidatePublicKey()
  5572 ms     | 0x2e6 ret:0x0
  5572 ms  0x2e6 ret:0x7f97895d7020::7f97895d7020  10 df 5b 89                                      ..[.
  5572 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5572 ms  0x2e6 cx:0x7f979a70df88
  5573 ms     | 0x2e6 EC_ValidatePublicKey()
  5573 ms     | 0x2e6 ret:0x0
  5573 ms  0x2e6 ret:0x7f97895d9820::7f97895d9820  60 50 35 89                                      `P5.
  5573 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5573 ms  0x2e6 cx:0x7f979a70df88
  5574 ms     | 0x2e6 EC_ValidatePublicKey()
  5576 ms     | 0x2e6 ret:0x0
  5576 ms  0x2e6 ret:0x7f97895db820::7f97895db820  40 52 35 89                                      @R5.
  5577 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5577 ms  0x2e6 cx:0x7f979a70dde8
  5577 ms     | 0x2e6 EC_ValidatePublicKey()
  5577 ms     | 0x2e6 ret:0x0
  5578 ms  0x2e6 ret:0x7f97895de020::7f97895de020  80 53 35 89                                      .S5.
  5578 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5578 ms  0x2e6 cx:0x7f979a70dde8
  5578 ms     | 0x2e6 EC_ValidatePublicKey()
  5580 ms     | 0x2e6 ret:0x0
  5580 ms  0x2e6 ret:0x7f97895e0020::7f97895e0020  60 55 35 89                                      `U5.
  5581 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5581 ms  0x2e6 cx:0x7f979a70daa8
  5581 ms     | 0x2e6 EC_ValidatePublicKey()
  5581 ms     | 0x2e6 ret:0x0
  5581 ms  0x2e6 ret:0x7f979a439020::7f979a439020  a0 56 35 89                                      .V5.
  5581 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5581 ms  0x2e6 cx:0x7f979a70daa8
  5582 ms     | 0x2e6 EC_ValidatePublicKey()
  5584 ms     | 0x2e6 ret:0x0
  5584 ms  0x2e6 ret:0x7f978936f020::7f978936f020  80 58 35 89                                      .X5.
  5584 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5584 ms  0x2e6 cx:0x7f979a70d908
  5585 ms     | 0x2e6 EC_ValidatePublicKey()
  5585 ms     | 0x2e6 ret:0x0
  5585 ms  0x2e6 ret:0x7f9789371820::7f9789371820  c0 59 35 89                                      .Y5.
  5585 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5585 ms  0x2e6 cx:0x7f979a70d908
  5586 ms     | 0x2e6 EC_ValidatePublicKey()
  5587 ms     | 0x2e6 ret:0x0
  5587 ms  0x2e6 ret:0x7f9789373820::7f9789373820  a0 5b 35 89                                      .[5.
  5588 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5588 ms  0x2e6 cx:0x7f979a70d768
  5588 ms     | 0x2e6 EC_ValidatePublicKey()
  5588 ms     | 0x2e6 ret:0x0
  5588 ms  0x2e6 ret:0x7f9789376020::7f9789376020  e0 5c 35 89                                      ..
  5588 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5588 ms  0x2e6 cx:0x7f979a70d768
  5589 ms     | 0x2e6 EC_ValidatePublicKey()
  5590 ms     | 0x2e6 ret:0x0
  5590 ms  0x2e6 ret:0x7f9789378020::7f9789378020  c0 5e 35 89                                      .^5.
  5591 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5591 ms  0x2e6 cx:0x7f979a70d5c8
  5591 ms     | 0x2e6 EC_ValidatePublicKey()
  5591 ms     | 0x2e6 ret:0x0
  5591 ms  0x2e6 ret:0x7f978937a820::7f978937a820  60 70 3a 89                                      `p:.
  5591 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5591 ms  0x2e6 cx:0x7f979a70d5c8
  5592 ms     | 0x2e6 EC_ValidatePublicKey()
  5593 ms     | 0x2e6 ret:0x0
  5593 ms  0x2e6 ret:0x7f978937c820::7f978937c820  40 72 3a 89                                      @r:.
  5594 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5594 ms  0x2e6 cx:0x7f979a70d428
  5594 ms     | 0x2e6 EC_ValidatePublicKey()
  5594 ms     | 0x2e6 ret:0x0
  5594 ms  0x2e6 ret:0x7f978937f020::7f978937f020  80 73 3a 89                                      .s:.
  5594 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5594 ms  0x2e6 cx:0x7f979a70d428
  5595 ms     | 0x2e6 EC_ValidatePublicKey()
  5596 ms     | 0x2e6 ret:0x0
  5596 ms  0x2e6 ret:0x7f9789381020::7f9789381020  60 75 3a 89                                      `u:.
  5614 ms  SECKEY_ECParamsToKeySize()
  5614 ms  0x2e6 ret:0x100
  5614 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5614 ms  0x2e6 cx:0x7f979a70d288
  5614 ms     | 0x2e6 EC_ValidatePublicKey()
  5616 ms     | 0x2e6 ret:0x0
  5616 ms  0x2e6 ret:0x7f97893c5020::7f97893c5020  50 7b 3a 89                                      P{:.
  5616 ms  0x2e6 PK11_PubDeriveWithKDF()
  5616 ms  0x2e6 seckey:0x7f97893c5020
  5616 ms     | 0x2e6 EC_ValidatePublicKey()
  5617 ms     | 0x2e6 ret:0x0
  5619 ms  0x2e6 ret:0x7f979c0e6f80
  5619 ms  0x2e6 PK11_DeriveWithFlags()
  5619 ms  0x2e6 basekey:0x7f979c0e6f80
  5619 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5619 ms  0x2e6 ret:0x7f979a444180
  5619 ms  0x2e6 PK11_Derive()
  5619 ms  0x2e6 basekey:0x7f979a444180
  5619 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5619 ms  0x2e6 ret:0x7f979a444080
  5619 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5619 ms  0x2e6 privk:0x7f97893c5020::7f97893c5020  50 7b 3a 89                                      P{:.
  5619 ms  0x2e6 privk:0x7f97893c5020::7f97893c5020  e5 e5 e5 e5                                      ....
  5619 ms  0x2e6 PK11_Encrypt()
  5619 ms  0x2e6 symkey:0x7f9789577b00
           /* TID 0x39b */
  5620 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5620 ms  0x39b ret:0x0
  5627 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5627 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  5627 ms  SECKEY_ECParamsToKeySize()
  5627 ms  0x2e6 ret:0x100
  5627 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5627 ms  0x2e6 cx:0x7f979a70e2c8
  5627 ms     | 0x2e6 EC_ValidatePublicKey()
  5629 ms     | 0x2e6 ret:0x0
  5629 ms  0x2e6 ret:0x7f97893c2020::7f97893c2020  30 7d 3a 89                                      0}:.
  5629 ms  0x2e6 PK11_PubDeriveWithKDF()
  5629 ms  0x2e6 seckey:0x7f97893c2020
  5629 ms     | 0x2e6 EC_ValidatePublicKey()
  5631 ms     | 0x2e6 ret:0x0
  5632 ms  0x2e6 ret:0x7f979c0e6f80
  5632 ms  0x2e6 PK11_DeriveWithFlags()
  5632 ms  0x2e6 basekey:0x7f979c0e6f80
  5632 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5632 ms  0x2e6 ret:0x7f9789577c00
  5632 ms  0x2e6 PK11_Derive()
  5632 ms  0x2e6 basekey:0x7f9789577c00
  5632 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5632 ms  0x2e6 ret:0x7f9789577c80
  5632 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5632 ms  0x2e6 privk:0x7f97893c2020::7f97893c2020  30 7d 3a 89                                      0}:.
  5632 ms  0x2e6 privk:0x7f97893c2020::7f97893c2020  e5 e5 e5 e5                                      ....
  5632 ms  0x2e6 PK11_Encrypt()
  5632 ms  0x2e6 symkey:0x7f9789577e00
  5633 ms  0x2e6 SSL_AuthCertificateComplete()
  5633 ms  0x2e6 fd:0x7f97895bf160
  5633 ms  0x2e6 err:0x0
  5633 ms  0x2e6 SSL_AuthCertificateComplete()
  5633 ms  0x2e6 fd:0x7f97895bf0a0
  5633 ms  0x2e6 err:0x0
  5633 ms  0x2e6 PK11_Encrypt()
  5633 ms  0x2e6 symkey:0x7f9789577e00
  5633 ms  0x2e6 PK11_Encrypt()
  5633 ms  0x2e6 symkey:0x7f9789577e00
           /* TID 0x39b */
  5634 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5634 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  5634 ms  SECKEY_ECParamsToKeySize()
  5634 ms  0x2e6 ret:0x100
  5634 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5634 ms  0x2e6 cx:0x7f979a70e128
  5635 ms     | 0x2e6 EC_ValidatePublicKey()
  5636 ms     | 0x2e6 ret:0x0
  5636 ms  0x2e6 ret:0x7f97893c5820::7f97893c5820  b0 7f 3a 89                                      ..:.
  5637 ms  0x2e6 PK11_PubDeriveWithKDF()
  5637 ms  0x2e6 seckey:0x7f97893c5820
  5637 ms     | 0x2e6 EC_ValidatePublicKey()
  5638 ms     | 0x2e6 ret:0x0
  5640 ms  0x2e6 ret:0x7f979c0e6f80
  5640 ms  0x2e6 PK11_DeriveWithFlags()
  5640 ms  0x2e6 basekey:0x7f979c0e6f80
  5640 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5640 ms  0x2e6 ret:0x7f9789578080
  5640 ms  0x2e6 PK11_Derive()
  5640 ms  0x2e6 basekey:0x7f9789578080
  5640 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5640 ms  0x2e6 ret:0x7f9789578100
  5640 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5640 ms  0x2e6 privk:0x7f97893c5820::7f97893c5820  b0 7f 3a 89                                      ..:.
  5640 ms  0x2e6 privk:0x7f97893c5820::7f97893c5820  e5 e5 e5 e5                                      ....
  5640 ms  0x2e6 PK11_Encrypt()
  5640 ms  0x2e6 symkey:0x7f9789578280
  5640 ms  0x2e6 PK11_Encrypt()
  5640 ms  0x2e6 symkey:0x7f9789577b00
  5640 ms  0x2e6 PK11_Encrypt()
  5640 ms  0x2e6 symkey:0x7f9789577b00
  5641 ms  0x2e6 SSL_AuthCertificateComplete()
  5641 ms  0x2e6 fd:0x7f978948d4c0
  5641 ms  0x2e6 err:0x0
  5641 ms  0x2e6 PK11_Encrypt()
  5641 ms  0x2e6 symkey:0x7f9789578280
  5641 ms  0x2e6 PK11_Encrypt()
  5641 ms  0x2e6 symkey:0x7f9789578280
           /* TID 0x39c */
  5642 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5642 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  5643 ms  SECKEY_ECParamsToKeySize()
  5643 ms  0x2e6 ret:0x100
  5643 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5643 ms  0x2e6 cx:0x7f979a70df88
  5643 ms     | 0x2e6 EC_ValidatePublicKey()
  5645 ms     | 0x2e6 ret:0x0
  5645 ms  0x2e6 ret:0x7f97893ca020::7f97893ca020  90 d2 21 89                                      ..!.
  5645 ms  0x2e6 PK11_PubDeriveWithKDF()
  5645 ms  0x2e6 seckey:0x7f97893ca020
  5645 ms     | 0x2e6 EC_ValidatePublicKey()
  5646 ms     | 0x2e6 ret:0x0
  5648 ms  0x2e6 ret:0x7f979c0e6f80
  5648 ms  0x2e6 PK11_DeriveWithFlags()
  5648 ms  0x2e6 basekey:0x7f979c0e6f80
  5648 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5648 ms  0x2e6 ret:0x7f9789578480
  5648 ms  0x2e6 PK11_Derive()
  5648 ms  0x2e6 basekey:0x7f9789578480
  5648 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5648 ms  0x2e6 ret:0x7f9789578500
  5648 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5648 ms  0x2e6 privk:0x7f97893ca020::7f97893ca020  90 d2 21 89                                      ..!.
  5648 ms  0x2e6 privk:0x7f97893ca020::7f97893ca020  e5 e5 e5 e5                                      ....
  5648 ms  0x2e6 PK11_Encrypt()
  5648 ms  0x2e6 symkey:0x7f9789578680
           /* TID 0x39b */
  5649 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5649 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  5649 ms  SECKEY_ECParamsToKeySize()
  5649 ms  0x2e6 ret:0x100
  5649 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5649 ms  0x2e6 cx:0x7f979a70dde8
  5650 ms     | 0x2e6 EC_ValidatePublicKey()
  5652 ms     | 0x2e6 ret:0x0
  5652 ms  0x2e6 ret:0x7f97893cb020::7f97893cb020  30 d3 21 89                                      0.!.
  5652 ms  0x2e6 PK11_PubDeriveWithKDF()
  5652 ms  0x2e6 seckey:0x7f97893cb020
  5652 ms     | 0x2e6 EC_ValidatePublicKey()
  5653 ms     | 0x2e6 ret:0x0
  5655 ms  0x2e6 ret:0x7f979c0e6f80
  5655 ms  0x2e6 PK11_DeriveWithFlags()
  5655 ms  0x2e6 basekey:0x7f979c0e6f80
  5655 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5655 ms  0x2e6 ret:0x7f9789578780
  5655 ms  0x2e6 PK11_Derive()
  5655 ms  0x2e6 basekey:0x7f9789578780
  5655 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5655 ms  0x2e6 ret:0x7f9789578800
  5655 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5655 ms  0x2e6 privk:0x7f97893cb020::7f97893cb020  30 d3 21 89                                      0.!.
  5655 ms  0x2e6 privk:0x7f97893cb020::7f97893cb020  e5 e5 e5 e5                                      ....
  5655 ms  0x2e6 PK11_Encrypt()
  5655 ms  0x2e6 symkey:0x7f9789578980
  5655 ms  0x2e6 SSL_AuthCertificateComplete()
  5655 ms  0x2e6 fd:0x7f9789419f40
  5655 ms  0x2e6 err:0x0
  5655 ms  0x2e6 SSL_AuthCertificateComplete()
  5655 ms  0x2e6 fd:0x7f9789419e80
  5655 ms  0x2e6 err:0x0
  5656 ms  0x2e6 PK11_Encrypt()
  5656 ms  0x2e6 symkey:0x7f9789578680
  5656 ms  0x2e6 PK11_Encrypt()
  5656 ms  0x2e6 symkey:0x7f9789578980
           /* TID 0x39c */
  5657 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5657 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  5657 ms  SECKEY_ECParamsToKeySize()
  5657 ms  0x2e6 ret:0x100
  5657 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5657 ms  0x2e6 cx:0x7f979a70daa8
  5658 ms     | 0x2e6 EC_ValidatePublicKey()
  5659 ms     | 0x2e6 ret:0x0
  5659 ms  0x2e6 ret:0x7f97893cd820::7f97893cd820  d0 d3 21 89                                      ..!.
  5659 ms  0x2e6 PK11_PubDeriveWithKDF()
  5659 ms  0x2e6 seckey:0x7f97893cd820
  5659 ms     | 0x2e6 EC_ValidatePublicKey()
  5661 ms     | 0x2e6 ret:0x0
  5662 ms  0x2e6 ret:0x7f979c0e6f80
  5662 ms  0x2e6 PK11_DeriveWithFlags()
  5662 ms  0x2e6 basekey:0x7f979c0e6f80
  5662 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5662 ms  0x2e6 ret:0x7f9789578a80
  5662 ms  0x2e6 PK11_Derive()
  5662 ms  0x2e6 basekey:0x7f9789578a80
  5662 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5662 ms  0x2e6 ret:0x7f9789578b00
  5662 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5662 ms  0x2e6 privk:0x7f97893cd820::7f97893cd820  d0 d3 21 89                                      ..!.
  5662 ms  0x2e6 privk:0x7f97893cd820::7f97893cd820  e5 e5 e5 e5                                      ....
  5662 ms  0x2e6 PK11_Encrypt()
  5662 ms  0x2e6 symkey:0x7f9789578c80
           /* TID 0x39b */
  5663 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5663 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  5663 ms  SECKEY_ECParamsToKeySize()
  5663 ms  0x2e6 ret:0x100
  5663 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5663 ms  0x2e6 cx:0x7f979a70d908
  5664 ms     | 0x2e6 EC_ValidatePublicKey()
  5670 ms     | 0x2e6 ret:0x0
  5670 ms  0x2e6 ret:0x7f97893ce020::7f97893ce020  70 d4 21 89                                      p.!.
  5670 ms  0x2e6 PK11_PubDeriveWithKDF()
  5670 ms  0x2e6 seckey:0x7f97893ce020
  5670 ms     | 0x2e6 EC_ValidatePublicKey()
  5671 ms     | 0x2e6 ret:0x0
  5673 ms  0x2e6 ret:0x7f979c0e6f80
  5673 ms  0x2e6 PK11_DeriveWithFlags()
  5673 ms  0x2e6 basekey:0x7f979c0e6f80
  5673 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5673 ms  0x2e6 ret:0x7f978931d680
  5673 ms  0x2e6 PK11_Derive()
  5673 ms  0x2e6 basekey:0x7f978931d680
  5673 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5673 ms  0x2e6 ret:0x7f9789578d80
  5673 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5673 ms  0x2e6 privk:0x7f97893ce020::7f97893ce020  70 d4 21 89                                      p.!.
  5673 ms  0x2e6 privk:0x7f97893ce020::7f97893ce020  e5 e5 e5 e5                                      ....
  5673 ms  0x2e6 PK11_Encrypt()
  5673 ms  0x2e6 symkey:0x7f9789578f00
           /* TID 0x39c */
  5675 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5675 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  5675 ms  SECKEY_ECParamsToKeySize()
  5675 ms  0x2e6 ret:0x100
  5675 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5675 ms  0x2e6 cx:0x7f979a70d768
  5676 ms     | 0x2e6 EC_ValidatePublicKey()
  5678 ms     | 0x2e6 ret:0x0
  5678 ms  0x2e6 ret:0x7f97893ce820::7f97893ce820  d0 d8 21 89                                      ..!.
  5678 ms  0x2e6 PK11_PubDeriveWithKDF()
  5678 ms  0x2e6 seckey:0x7f97893ce820
  5678 ms     | 0x2e6 EC_ValidatePublicKey()
  5679 ms     | 0x2e6 ret:0x0
  5680 ms  0x2e6 ret:0x7f979c0e6f80
  5681 ms  0x2e6 PK11_DeriveWithFlags()
  5681 ms  0x2e6 basekey:0x7f979c0e6f80
  5681 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5681 ms  0x2e6 ret:0x7f979a414f00
  5681 ms  0x2e6 PK11_Derive()
  5681 ms  0x2e6 basekey:0x7f979a414f00
  5681 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5681 ms  0x2e6 ret:0x7f97892aa080
  5681 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5681 ms  0x2e6 privk:0x7f97893ce820::7f97893ce820  d0 d8 21 89                                      ..!.
  5681 ms  0x2e6 privk:0x7f97893ce820::7f97893ce820  e5 e5 e5 e5                                      ....
  5681 ms  0x2e6 PK11_Encrypt()
  5681 ms  0x2e6 symkey:0x7f97892aa200
           /* TID 0x39b */
  5682 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5682 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  5682 ms  SECKEY_ECParamsToKeySize()
  5682 ms  0x2e6 ret:0x100
  5682 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5682 ms  0x2e6 cx:0x7f979a70d5c8
  5682 ms     | 0x2e6 EC_ValidatePublicKey()
  5684 ms     | 0x2e6 ret:0x0
  5684 ms  0x2e6 ret:0x7f97893cf020::7f97893cf020  70 d9 21 89                                      p.!.
  5684 ms  0x2e6 PK11_PubDeriveWithKDF()
  5684 ms  0x2e6 seckey:0x7f97893cf020
  5684 ms     | 0x2e6 EC_ValidatePublicKey()
  5685 ms     | 0x2e6 ret:0x0
  5687 ms  0x2e6 ret:0x7f979c0e6f80
  5687 ms  0x2e6 PK11_DeriveWithFlags()
  5687 ms  0x2e6 basekey:0x7f979c0e6f80
  5687 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5687 ms  0x2e6 ret:0x7f97892aa300
  5687 ms  0x2e6 PK11_Derive()
  5687 ms  0x2e6 basekey:0x7f97892aa300
  5687 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5687 ms  0x2e6 ret:0x7f97892aa380
  5687 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5687 ms  0x2e6 privk:0x7f97893cf020::7f97893cf020  70 d9 21 89                                      p.!.
  5687 ms  0x2e6 privk:0x7f97893cf020::7f97893cf020  e5 e5 e5 e5                                      ....
  5687 ms  0x2e6 PK11_Encrypt()
  5687 ms  0x2e6 symkey:0x7f97892aa500
           /* TID 0x39c */
  5688 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5688 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  5688 ms  SECKEY_ECParamsToKeySize()
  5688 ms  0x2e6 ret:0x100
  5688 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5688 ms  0x2e6 cx:0x7f979a70d428
  5689 ms     | 0x2e6 EC_ValidatePublicKey()
  5690 ms     | 0x2e6 ret:0x0
  5690 ms  0x2e6 ret:0x7f97893cf820::7f97893cf820  10 da 21 89                                      ..!.
  5690 ms  0x2e6 PK11_PubDeriveWithKDF()
  5690 ms  0x2e6 seckey:0x7f97893cf820
  5690 ms     | 0x2e6 EC_ValidatePublicKey()
  5692 ms     | 0x2e6 ret:0x0
  5694 ms  0x2e6 ret:0x7f979c0e6f80
  5694 ms  0x2e6 PK11_DeriveWithFlags()
  5694 ms  0x2e6 basekey:0x7f979c0e6f80
  5694 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5694 ms  0x2e6 ret:0x7f97892aa600
  5694 ms  0x2e6 PK11_Derive()
  5694 ms  0x2e6 basekey:0x7f97892aa600
  5694 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5694 ms  0x2e6 ret:0x7f97892aa680
  5694 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5694 ms  0x2e6 privk:0x7f97893cf820::7f97893cf820  10 da 21 89                                      ..!.
  5694 ms  0x2e6 privk:0x7f97893cf820::7f97893cf820  e5 e5 e5 e5                                      ....
  5694 ms  0x2e6 PK11_Encrypt()
  5694 ms  0x2e6 symkey:0x7f97892aa800
  5694 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5694 ms  0x2e6 privk:0x7f97895d2820::7f97895d2820  f0 db 5b 89                                      ..[.
  5695 ms  0x2e6 privk:0x7f97895d2820::7f97895d2820  e5 e5 e5 e5                                      ....
  5695 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5695 ms  0x2e6 privk:0x7f97895d0820::7f97895d0820  10 da 5b 89                                      ..[.
  5695 ms  0x2e6 privk:0x7f97895d0820::7f97895d0820  e5 e5 e5 e5                                      ....
  5695 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5695 ms  0x2e6 privk:0x7f97895cd820::7f97895cd820  d0 d8 5b 89                                      ..[.
  5695 ms  0x2e6 privk:0x7f97895cd820::7f97895cd820  e5 e5 e5 e5                                      ....
  5695 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5695 ms  0x2e6 privk:0x7f97895cb820::7f97895cb820  a0 d6 5b 89                                      ..[.
  5695 ms  0x2e6 privk:0x7f97895cb820::7f97895cb820  e5 e5 e5 e5                                      ....
  5695 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5695 ms  0x2e6 privk:0x7f97895d7020::7f97895d7020  10 df 5b 89                                      ..[.
  5695 ms  0x2e6 privk:0x7f97895d7020::7f97895d7020  e5 e5 e5 e5                                      ....
  5695 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5695 ms  0x2e6 privk:0x7f97895d5020::7f97895d5020  30 dd 5b 89                                      0.[.
  5695 ms  0x2e6 privk:0x7f97895d5020::7f97895d5020  e5 e5 e5 e5                                      ....
  5696 ms  0x2e6 PK11_Encrypt()
  5696 ms  0x2e6 symkey:0x7f9789578280
  5696 ms  0x2e6 SSL_AuthCertificateComplete()
  5696 ms  0x2e6 fd:0x7f9789419dc0
  5696 ms  0x2e6 err:0x0
  5696 ms  0x2e6 SSL_AuthCertificateComplete()
  5696 ms  0x2e6 fd:0x7f9789419d30
  5696 ms  0x2e6 err:0x0
  5696 ms  0x2e6 SSL_AuthCertificateComplete()
  5696 ms  0x2e6 fd:0x7f9789419c70
  5696 ms  0x2e6 err:0x0
  5696 ms  0x2e6 SSL_AuthCertificateComplete()
  5696 ms  0x2e6 fd:0x7f9789419c40
  5696 ms  0x2e6 err:0x0
  5696 ms  0x2e6 SSL_AuthCertificateComplete()
  5696 ms  0x2e6 fd:0x7f9789419730
  5696 ms  0x2e6 err:0x0
  5696 ms  0x2e6 PK11_Encrypt()
  5696 ms  0x2e6 symkey:0x7f9789577e00
  5696 ms  0x2e6 PK11_Encrypt()
  5696 ms  0x2e6 symkey:0x7f9789578280
  5696 ms  0x2e6 PK11_Encrypt()
  5696 ms  0x2e6 symkey:0x7f9789577b00
  5696 ms  0x2e6 PK11_Encrypt()
  5696 ms  0x2e6 symkey:0x7f9789578280
  5697 ms  0x2e6 PK11_Encrypt()
  5697 ms  0x2e6 symkey:0x7f9789578c80
  5698 ms  0x2e6 PK11_Encrypt()
  5698 ms  0x2e6 symkey:0x7f9789578f00
  5699 ms  0x2e6 PK11_Encrypt()
  5699 ms  0x2e6 symkey:0x7f97892aa200
  5699 ms  0x2e6 PK11_Encrypt()
  5699 ms  0x2e6 symkey:0x7f97892aa500
  5699 ms  0x2e6 PK11_Encrypt()
  5699 ms  0x2e6 symkey:0x7f97892aa800
  5700 ms  0x2e6 PK11_Encrypt()
  5700 ms  0x2e6 symkey:0x7f9789578280
  5700 ms  0x2e6 PK11_Encrypt()
  5700 ms  0x2e6 symkey:0x7f9789577e00
  5700 ms  0x2e6 PK11_Encrypt()
  5700 ms  0x2e6 symkey:0x7f9789577e00
  5701 ms  0x2e6 PK11_Encrypt()
  5701 ms  0x2e6 symkey:0x7f9789577e00
  5701 ms  0x2e6 PK11_Encrypt()
  5701 ms  0x2e6 symkey:0x7f9789577e00
  5703 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5703 ms  0x2e6 privk:0x7f97895db820::7f97895db820  40 52 35 89                                      @R5.
  5703 ms  0x2e6 privk:0x7f97895db820::7f97895db820  e5 e5 e5 e5                                      ....
  5703 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5703 ms  0x2e6 privk:0x7f97895d9820::7f97895d9820  60 50 35 89                                      `P5.
  5703 ms  0x2e6 privk:0x7f97895d9820::7f97895d9820  e5 e5 e5 e5                                      ....
  5703 ms  0x2e6 PR_Close()
  5703 ms  0x2e6 fd:0x7f9789419f40
  5703 ms     | 0x2e6 PK11_Encrypt()
  5703 ms     | 0x2e6 symkey:0x7f9789578680
  5711 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5711 ms  0x2e6 privk:0x7f97895e0020::7f97895e0020  60 55 35 89                                      `U5.
  5711 ms  0x2e6 privk:0x7f97895e0020::7f97895e0020  e5 e5 e5 e5                                      ....
  5711 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5711 ms  0x2e6 privk:0x7f97895de020::7f97895de020  80 53 35 89                                      .S5.
  5711 ms  0x2e6 privk:0x7f97895de020::7f97895de020  e5 e5 e5 e5                                      ....
  5711 ms  0x2e6 PR_Close()
  5711 ms  0x2e6 fd:0x7f9789419e80
  5711 ms     | 0x2e6 PK11_Encrypt()
  5711 ms     | 0x2e6 symkey:0x7f9789578980
  5718 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5718 ms  0x2e6 privk:0x7f978936f020::7f978936f020  80 58 35 89                                      .X5.
  5718 ms  0x2e6 privk:0x7f978936f020::7f978936f020  e5 e5 e5 e5                                      ....
  5718 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5718 ms  0x2e6 privk:0x7f979a439020::7f979a439020  a0 56 35 89                                      .V5.
  5718 ms  0x2e6 privk:0x7f979a439020::7f979a439020  e5 e5 e5 e5                                      ....
  5718 ms  0x2e6 PR_Close()
  5718 ms  0x2e6 fd:0x7f9789419dc0
  5718 ms     | 0x2e6 PK11_Encrypt()
  5718 ms     | 0x2e6 symkey:0x7f9789578c80
  5729 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5729 ms  0x2e6 privk:0x7f9789373820::7f9789373820  a0 5b 35 89                                      .[5.
  5730 ms  0x2e6 privk:0x7f9789373820::7f9789373820  e5 e5 e5 e5                                      ....
  5730 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5730 ms  0x2e6 privk:0x7f9789371820::7f9789371820  c0 59 35 89                                      .Y5.
  5730 ms  0x2e6 privk:0x7f9789371820::7f9789371820  e5 e5 e5 e5                                      ....
  5730 ms  0x2e6 PR_Close()
  5730 ms  0x2e6 fd:0x7f9789419d30
  5730 ms     | 0x2e6 PK11_Encrypt()
  5730 ms     | 0x2e6 symkey:0x7f9789578f00
  5736 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5736 ms  0x2e6 privk:0x7f9789378020::7f9789378020  c0 5e 35 89                                      .^5.
  5736 ms  0x2e6 privk:0x7f9789378020::7f9789378020  e5 e5 e5 e5                                      ....
  5736 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5736 ms  0x2e6 privk:0x7f9789376020::7f9789376020  e0 5c 35 89                                      ..
  5736 ms  0x2e6 privk:0x7f9789376020::7f9789376020  e5 e5 e5 e5                                      ....
  5736 ms  0x2e6 PR_Close()
  5736 ms  0x2e6 fd:0x7f9789419c70
  5736 ms     | 0x2e6 PK11_Encrypt()
  5736 ms     | 0x2e6 symkey:0x7f97892aa200
  5742 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5742 ms  0x2e6 privk:0x7f978937c820::7f978937c820  40 72 3a 89                                      @r:.
  5742 ms  0x2e6 privk:0x7f978937c820::7f978937c820  e5 e5 e5 e5                                      ....
  5742 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5742 ms  0x2e6 privk:0x7f978937a820::7f978937a820  60 70 3a 89                                      `p:.
  5742 ms  0x2e6 privk:0x7f978937a820::7f978937a820  e5 e5 e5 e5                                      ....
  5742 ms  0x2e6 PR_Close()
  5742 ms  0x2e6 fd:0x7f9789419c40
  5742 ms     | 0x2e6 PK11_Encrypt()
  5742 ms     | 0x2e6 symkey:0x7f97892aa500
           /* TID 0x2ee */
  5745 ms  0x2ee PR_Close()
  5745 ms  0x2ee fd:0x7f978932c310
           /* TID 0x2e6 */
  5746 ms  0x2e6 SSL_ImportFD()
  5746 ms  0x2e6 ret:0x7f978932c610
  5746 ms  0x2e6 SSL_AuthCertificateHook()
  5746 ms  0x2e6 fd:0x7f978932c610
  5746 ms  0x2e6 ret:0x0
  5746 ms  0x2e6 PR_Connect()
  5746 ms  0x2e6 fd:0x7f978932c610
  5749 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5749 ms  0x2e6 privk:0x7f9789381020::7f9789381020  60 75 3a 89                                      `u:.
  5749 ms  0x2e6 privk:0x7f9789381020::7f9789381020  e5 e5 e5 e5                                      ....
  5749 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5749 ms  0x2e6 privk:0x7f978937f020::7f978937f020  80 73 3a 89                                      .s:.
  5750 ms  0x2e6 privk:0x7f978937f020::7f978937f020  e5 e5 e5 e5                                      ....
  5750 ms  0x2e6 PR_Close()
  5750 ms  0x2e6 fd:0x7f9789419730
  5750 ms     | 0x2e6 PK11_Encrypt()
  5750 ms     | 0x2e6 symkey:0x7f97892aa800
           /* TID 0x2ee */
  5751 ms  0x2ee PR_Close()
  5751 ms  0x2ee fd:0x7f978932c310
           /* TID 0x35b */
  5751 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5752 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  5758 ms  0x2e6 SSL_AuthCertificateComplete()
  5758 ms  0x2e6 fd:0x7f979c0e9cd0
  5758 ms  0x2e6 err:0x0
  5758 ms     | 0x2e6 PK11_DeriveWithFlags()
  5758 ms     | 0x2e6 basekey:0x7f979a444100
  5758 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5758 ms     | 0x2e6 ret:0x7f97892aa680
  5758 ms     | 0x2e6 PK11_DeriveWithFlags()
  5758 ms     | 0x2e6 basekey:0x7f979a444100
  5758 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5758 ms     | 0x2e6 ret:0x7f97892aa600
  5758 ms     | 0x2e6 PK11_DeriveWithFlags()
  5758 ms     | 0x2e6 basekey:0x7f979a444100
  5758 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f97892aa380
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f979a443f80
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f97892aa300
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f979a443f80
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f97892aa080
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f97892aa600
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f97892aa080
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f97892aa600
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f979a414f00
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f979a443f80
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f979a444200
  5759 ms     | 0x2e6 PK11_Encrypt()
  5759 ms     | 0x2e6 symkey:0x7f97892aa300
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f97892aa680
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f979a444200
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f97892aa680
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f979a414f00
  5759 ms     | 0x2e6 PK11_DeriveWithFlags()
  5759 ms     | 0x2e6 basekey:0x7f979a444100
  5759 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  5759 ms     | 0x2e6 ret:0x7f97892aa300
  5759 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  5759 ms     | 0x2e6 privk:0x7f979a43e020::7f979a43e020  90 52 46 9a                                      .RF.
  5759 ms     | 0x2e6 privk:0x7f979a43e020::7f979a43e020  e5 e5 e5 e5                                      ....
  5759 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  5759 ms     | 0x2e6 privk:0x7f979a43c020::7f979a43c020  d0 a8 55 89                                      ..U.
  5759 ms     | 0x2e6 privk:0x7f979a43c020::7f979a43c020  e5 e5 e5 e5                                      ....
  5760 ms  0x2e6 PK11_Encrypt()
  5760 ms  0x2e6 symkey:0x7f979a444200
  5760 ms  0x2e6 PK11_Encrypt()
  5760 ms  0x2e6 symkey:0x7f979a444200
           /* TID 0x2ee */
  5800 ms  0x2ee PR_Close()
  5800 ms  0x2ee fd:0x7f978932c820
           /* TID 0x2e6 */
  5801 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5801 ms  0x2e6 cx:0x7f979a70d768
  5801 ms     | 0x2e6 EC_ValidatePublicKey()
  5802 ms     | 0x2e6 ret:0x0
  5802 ms  0x2e6 ret:0x7f9789372820::7f9789372820  80 d8 21 89                                      ..!.
  5802 ms  0x2e6 SECKEY_CreateECPrivateKey()
  5802 ms  0x2e6 cx:0x7f979a70d768
  5802 ms     | 0x2e6 EC_ValidatePublicKey()
  5804 ms     | 0x2e6 ret:0x0
  5804 ms  0x2e6 ret:0x7f9789374820::7f9789374820  40 dc 21 89                                      @.!.
           /* TID 0x2ee */
  5860 ms  0x2ee PR_Close()
  5860 ms  0x2ee fd:0x7f978932c6d0
           /* TID 0x2e6 */
  5861 ms  0x2e6 PK11_Derive()
  5861 ms  0x2e6 basekey:0x7f979a443f80
  5861 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5861 ms  0x2e6 ret:0x7f979a444000
  5861 ms  0x2e6 PK11_Encrypt()
  5861 ms  0x2e6 symkey:0x7f97892aa700
  5863 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5863 ms  0x2e6 privk:0x7f9789374820::7f9789374820  40 dc 21 89                                      @.!.
  5863 ms  0x2e6 privk:0x7f9789374820::7f9789374820  e5 e5 e5 e5                                      ....
  5863 ms  0x2e6 SECKEY_DestroyPrivateKey()
  5863 ms  0x2e6 privk:0x7f9789372820::7f9789372820  80 d8 21 89                                      ..!.
  5863 ms  0x2e6 privk:0x7f9789372820::7f9789372820  e5 e5 e5 e5                                      ....
  5870 ms  0x2e6 PK11_Encrypt()
  5870 ms  0x2e6 symkey:0x7f97892aa700
           /* TID 0x2ee */
  5872 ms  0x2ee PR_Close()
  5872 ms  0x2ee fd:0x7f978932c8b0
           /* TID 0x2e6 */
  5876 ms  0x2e6 PK11_DeriveWithFlags()
  5876 ms  0x2e6 basekey:0x7f97892aa300
  5876 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5876 ms  0x2e6 ret:0x7f979a444100
  5876 ms  0x2e6 PK11_DeriveWithFlags()
  5876 ms  0x2e6 basekey:0x7f97892aa300
  5876 ms     | 0x2e6 PK11_DeriveWithTemplate()
  5876 ms  0x2e6 ret:0x7f979a444100
  5876 ms  0x2e6 PK11_Encrypt()
  5876 ms  0x2e6 symkey:0x7f979a444200
           /* TID 0x2ee */
  5878 ms  0x2ee PR_Close()
  5878 ms  0x2ee fd:0x7f978932c1f0
  5881 ms  0x2ee PR_Close()
  5881 ms  0x2ee fd:0x7f978932c1f0
           /* TID 0x2e6 */
  5893 ms  0x2e6 PK11_Encrypt()
  5893 ms  0x2e6 symkey:0x7f979a444200
           /* TID 0x2ee */
  5894 ms  0x2ee PR_Close()
  5894 ms  0x2ee fd:0x7f978932c910
  5898 ms  0x2ee PR_Close()
  5898 ms  0x2ee fd:0x7f978932c910
  5914 ms  0x2ee PR_Close()
  5914 ms  0x2ee fd:0x7f978932c190
  5967 ms  0x2ee PR_Close()
  5967 ms  0x2ee fd:0x7f978932c190
           /* TID 0x2e6 */
  5990 ms  0x2e6 SSL_ImportFD()
  5990 ms  0x2e6 ret:0x7f978932cca0
  5990 ms  0x2e6 SSL_AuthCertificateHook()
  5990 ms  0x2e6 fd:0x7f978932cca0
  5990 ms  0x2e6 ret:0x0
  5990 ms  0x2e6 PR_Connect()
  5990 ms  0x2e6 fd:0x7f978932cca0
  5994 ms  0x2e6 PK11_Encrypt()
  5994 ms  0x2e6 symkey:0x7f9789578280
  6006 ms  0x2e6 PR_Close()
  6006 ms  0x2e6 fd:0x7f978932c610
  6006 ms     | 0x2e6 PK11_Encrypt()
  6006 ms     | 0x2e6 symkey:0x7f97892aa700
           /* TID 0x2ee */
  6008 ms  0x2ee PR_Close()
  6008 ms  0x2ee fd:0x7f978932c040
  6015 ms  0x2ee PR_Close()
  6015 ms  0x2ee fd:0x7f978932c820
           /* TID 0x2e6 */
  6028 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6028 ms  0x2e6 cx:0x7f979a70d0e8
  6029 ms     | 0x2e6 EC_ValidatePublicKey()
  6029 ms     | 0x2e6 ret:0x0
  6029 ms  0x2e6 ret:0x7f9789376820::7f9789376820  50 71 3a 89                                      Pq:.
  6029 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6029 ms  0x2e6 cx:0x7f979a70d0e8
  6029 ms     | 0x2e6 EC_ValidatePublicKey()
  6031 ms     | 0x2e6 ret:0x0
  6031 ms  0x2e6 ret:0x7f9789378820::7f9789378820  20 74 3a 89                                       t:.
           /* TID 0x2ee */
  6066 ms  0x2ee PR_Close()
  6066 ms  0x2ee fd:0x7f978932c6a0
           /* TID 0x2e6 */
  6084 ms  0x2e6 PK11_Encrypt()
  6084 ms  0x2e6 symkey:0x7f9789578280
  6085 ms  0x2e6 PK11_Derive()
  6085 ms  0x2e6 basekey:0x7f979a444000
  6085 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6085 ms  0x2e6 ret:0x7f979a443f80
  6085 ms  0x2e6 PK11_PubDeriveWithKDF()
  6085 ms  0x2e6 seckey:0x7f9789376820
  6086 ms     | 0x2e6 EC_ValidatePublicKey()
  6086 ms     | 0x2e6 ret:0x0
  6086 ms  0x2e6 ret:0x7f979a444000
  6086 ms  SECKEY_ECParamsToKeySize()
  6086 ms  0x2e6 ret:0xff
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a443f80
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a444100
  6086 ms  0x2e6 PK11_Derive()
  6086 ms  0x2e6 basekey:0x7f979a444000
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a414f00
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a414f00
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a443f80
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a414f00
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a444000
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a414f00
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a444100
  6086 ms  0x2e6 PK11_Derive()
  6086 ms  0x2e6 basekey:0x7f9789578d80
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f978931d680
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a444000
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a414f00
  6086 ms  0x2e6 PK11_DeriveWithFlags()
  6086 ms  0x2e6 basekey:0x7f979a444000
  6086 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6086 ms  0x2e6 ret:0x7f979a444100
  6088 ms  0x2e6 PK11_DeriveWithFlags()
  6088 ms  0x2e6 basekey:0x7f979a444000
  6088 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6088 ms  0x2e6 ret:0x7f979a444100
  6090 ms  0x2e6 SSL_ImportFD()
  6090 ms  0x2e6 ret:0x7f978932c820
  6090 ms  0x2e6 SSL_AuthCertificateHook()
  6090 ms  0x2e6 fd:0x7f978932c820
  6090 ms  0x2e6 ret:0x0
  6090 ms  0x2e6 PR_Connect()
  6090 ms  0x2e6 fd:0x7f978932c820
  6127 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6127 ms  0x2e6 cx:0x7f979a70daa8
  6128 ms     | 0x2e6 EC_ValidatePublicKey()
  6128 ms     | 0x2e6 ret:0x0
  6128 ms  0x2e6 ret:0x7f97893c1020::7f97893c1020  30 a3 55 89                                      0.U.
  6128 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6128 ms  0x2e6 cx:0x7f979a70daa8
  6129 ms     | 0x2e6 EC_ValidatePublicKey()
  6130 ms     | 0x2e6 ret:0x0
  6130 ms  0x2e6 ret:0x7f97893c7820::7f97893c7820  b0 a5 55 89                                      ..U.
           /* TID 0x2ee */
  6146 ms  0x2ee PR_Close()
  6146 ms  0x2ee fd:0x7f978932c640
           /* TID 0x2e6 */
  6166 ms  0x2e6 PK11_Encrypt()
  6166 ms  0x2e6 symkey:0x7f9789577e00
  6167 ms  0x2e6 PK11_Encrypt()
  6167 ms  0x2e6 symkey:0x7f9789577e00
  6168 ms  0x2e6 PK11_Encrypt()
  6168 ms  0x2e6 symkey:0x7f9789577e00
  6170 ms  0x2e6 PK11_Encrypt()
  6170 ms  0x2e6 symkey:0x7f9789577e00
  6171 ms  0x2e6 PK11_Encrypt()
  6171 ms  0x2e6 symkey:0x7f9789577e00
  6172 ms  0x2e6 PK11_Encrypt()
  6172 ms  0x2e6 symkey:0x7f9789577e00
  6184 ms  0x2e6 PK11_Encrypt()
  6184 ms  0x2e6 symkey:0x7f9789577e00
  6184 ms  0x2e6 PK11_Derive()
  6184 ms  0x2e6 basekey:0x7f979a444100
  6184 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6184 ms  0x2e6 ret:0x7f9789578d80
  6184 ms  0x2e6 PK11_PubDeriveWithKDF()
  6184 ms  0x2e6 seckey:0x7f97893c1020
  6184 ms     | 0x2e6 EC_ValidatePublicKey()
  6184 ms     | 0x2e6 ret:0x0
  6184 ms  0x2e6 ret:0x7f979a444100
  6184 ms  SECKEY_ECParamsToKeySize()
  6184 ms  0x2e6 ret:0xff
  6184 ms  0x2e6 PK11_DeriveWithFlags()
  6184 ms  0x2e6 basekey:0x7f9789578d80
  6184 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578b00
  6185 ms  0x2e6 PK11_Derive()
  6185 ms  0x2e6 basekey:0x7f979a444100
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578a80
  6185 ms  0x2e6 PK11_DeriveWithFlags()
  6185 ms  0x2e6 basekey:0x7f9789578a80
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578d80
  6185 ms  0x2e6 PK11_DeriveWithFlags()
  6185 ms  0x2e6 basekey:0x7f9789578a80
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f979a444100
  6185 ms  0x2e6 PK11_DeriveWithFlags()
  6185 ms  0x2e6 basekey:0x7f9789578a80
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578b00
  6185 ms  0x2e6 PK11_Derive()
  6185 ms  0x2e6 basekey:0x7f9789578800
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578780
  6185 ms  0x2e6 PK11_DeriveWithFlags()
  6185 ms  0x2e6 basekey:0x7f979a444100
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578a80
  6185 ms  0x2e6 PK11_DeriveWithFlags()
  6185 ms  0x2e6 basekey:0x7f979a444100
  6185 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6185 ms  0x2e6 ret:0x7f9789578b00
  6187 ms  SECKEY_ECParamsToKeySize()
  6187 ms  0x2e6 ret:0x100
  6187 ms  SECKEY_ECParamsToBasePointOrderLen()
  6187 ms  0x2e6 ret:0x100
  6187 ms  SECKEY_ECParamsToBasePointOrderLen()
  6187 ms  0x2e6 ret:0x100
  6187 ms  0x2e6 EC_ValidatePublicKey()
  6188 ms  0x2e6 ret:0x0
  6190 ms  0x2e6 PK11_DeriveWithFlags()
  6190 ms  0x2e6 basekey:0x7f979a444100
  6190 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6190 ms  0x2e6 ret:0x7f9789578b00
  6194 ms  0x2e6 PK11_Encrypt()
  6194 ms  0x2e6 symkey:0x7f9789577e00
  6194 ms  0x2e6 PK11_Encrypt()
  6194 ms  0x2e6 symkey:0x7f9789577e00
  6205 ms  0x2e6 PR_Connect()
  6205 ms  0x2e6 fd:0x7f97895bf7f0
           /* TID 0x2ee */
  6233 ms  0x2ee PR_Close()
  6233 ms  0x2ee fd:0x7f978948d160
  6234 ms  0x2ee PR_Close()
  6234 ms  0x2ee fd:0x7f9789419e20
           /* TID 0x39b */
  6234 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6234 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  6234 ms  0x2e6 SSL_AuthCertificateComplete()
  6234 ms  0x2e6 fd:0x7f978932cca0
  6234 ms  0x2e6 err:0x0
  6234 ms     | 0x2e6 PK11_DeriveWithFlags()
  6234 ms     | 0x2e6 basekey:0x7f978931d680
  6234 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f9789578b00
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f978931d680
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f9789578800
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f978931d680
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f9789578500
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f979a443f80
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f9789578480
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f979a443f80
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f979c0e6f80
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f9789578800
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f979c0e6f80
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f9789578800
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f97892aa880
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f979a443f80
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f979a414f00
  6235 ms     | 0x2e6 PK11_Encrypt()
  6235 ms     | 0x2e6 symkey:0x7f9789578480
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f9789578b00
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f979a414f00
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f9789578b00
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f97892aa880
  6235 ms     | 0x2e6 PK11_DeriveWithFlags()
  6235 ms     | 0x2e6 basekey:0x7f978931d680
  6235 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6235 ms     | 0x2e6 ret:0x7f9789578480
  6235 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  6235 ms     | 0x2e6 privk:0x7f9789378820::7f9789378820  20 74 3a 89                                       t:.
  6235 ms     | 0x2e6 privk:0x7f9789378820::7f9789378820  e5 e5 e5 e5                                      ....
  6235 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  6235 ms     | 0x2e6 privk:0x7f9789376820::7f9789376820  50 71 3a 89                                      Pq:.
  6235 ms     | 0x2e6 privk:0x7f9789376820::7f9789376820  e5 e5 e5 e5                                      ....
  6236 ms  0x2e6 PK11_Encrypt()
  6236 ms  0x2e6 symkey:0x7f979a414f00
  6236 ms  0x2e6 PK11_Encrypt()
  6236 ms  0x2e6 symkey:0x7f979a414f00
  6273 ms  0x2e6 PK11_DeriveWithFlags()
  6273 ms  0x2e6 basekey:0x7f9789578480
  6273 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6273 ms  0x2e6 ret:0x7f979a444000
  6273 ms  0x2e6 PK11_DeriveWithFlags()
  6273 ms  0x2e6 basekey:0x7f9789578480
  6273 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6273 ms  0x2e6 ret:0x7f979a444000
  6273 ms  0x2e6 PK11_Encrypt()
  6273 ms  0x2e6 symkey:0x7f979a414f00
           /* TID 0x2ee */
  6279 ms  0x2ee PR_Close()
  6279 ms  0x2ee fd:0x7f978932ca60
  6282 ms  0x2ee PR_Close()
  6282 ms  0x2ee fd:0x7f978932ca60
  6282 ms  0x2ee PR_Close()
  6282 ms  0x2ee fd:0x7f9789419370
  6282 ms  0x2ee PR_Close()
  6282 ms  0x2ee fd:0x7f978932ca60
  6283 ms  0x2ee PR_Close()
  6283 ms  0x2ee fd:0x7f978932ca60
  6284 ms  0x2ee PR_Close()
  6284 ms  0x2ee fd:0x7f978932ca60
  6332 ms  0x2ee PR_Close()
  6332 ms  0x2ee fd:0x7f9789419880
  6332 ms  0x2ee PR_Close()
  6332 ms  0x2ee fd:0x7f9789419ca0
           /* TID 0x2e6 */
  6369 ms  0x2e6 PK11_Encrypt()
  6369 ms  0x2e6 symkey:0x7f979a414f00
           /* TID 0x2ee */
  6369 ms  0x2ee PR_Close()
  6369 ms  0x2ee fd:0x7f9789419880
  6376 ms  0x2ee PR_Close()
  6376 ms  0x2ee fd:0x7f978932caf0
           /* TID 0x39c */
  6376 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6376 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  6377 ms  0x2e6 SSL_AuthCertificateComplete()
  6377 ms  0x2e6 fd:0x7f978932c820
  6377 ms  0x2e6 err:0x0
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578780
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f979a444000
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578780
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f979a443f80
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578780
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f978931d680
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578d80
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa880
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578d80
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa800
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f979a443f80
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa800
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f979a443f80
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa780
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578d80
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f9789578a80
  6377 ms     | 0x2e6 PK11_Encrypt()
  6377 ms     | 0x2e6 symkey:0x7f97892aa880
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f979a444000
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f9789578a80
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f979a444000
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa780
  6377 ms     | 0x2e6 PK11_DeriveWithFlags()
  6377 ms     | 0x2e6 basekey:0x7f9789578780
  6377 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  6377 ms     | 0x2e6 ret:0x7f97892aa880
  6377 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  6377 ms     | 0x2e6 privk:0x7f97893c7820::7f97893c7820  b0 a5 55 89                                      ..U.
  6377 ms     | 0x2e6 privk:0x7f97893c7820::7f97893c7820  e5 e5 e5 e5                                      ....
  6378 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  6378 ms     | 0x2e6 privk:0x7f97893c1020::7f97893c1020  30 a3 55 89                                      0.U.
  6378 ms     | 0x2e6 privk:0x7f97893c1020::7f97893c1020  e5 e5 e5 e5                                      ....
  6378 ms  0x2e6 PK11_Encrypt()
  6378 ms  0x2e6 symkey:0x7f9789578a80
  6378 ms  0x2e6 PK11_Encrypt()
  6378 ms  0x2e6 symkey:0x7f9789578a80
  6388 ms  0x2e6 PK11_Encrypt()
  6388 ms  0x2e6 symkey:0x7f9789578280
  6415 ms  0x2e6 PK11_DeriveWithFlags()
  6415 ms  0x2e6 basekey:0x7f97892aa880
  6415 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6415 ms  0x2e6 ret:0x7f979a444100
  6415 ms  0x2e6 PK11_DeriveWithFlags()
  6415 ms  0x2e6 basekey:0x7f97892aa880
  6415 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6415 ms  0x2e6 ret:0x7f979a444100
  6415 ms  0x2e6 PK11_Encrypt()
  6415 ms  0x2e6 symkey:0x7f9789578a80
           /* TID 0x2ee */
  6454 ms  0x2ee PR_Close()
  6454 ms  0x2ee fd:0x7f978948d0a0
           /* TID 0x2e6 */
  6488 ms  0x2e6 SSL_ImportFD()
  6488 ms  0x2e6 ret:0x7f97895bf490
  6488 ms  0x2e6 SSL_AuthCertificateHook()
  6488 ms  0x2e6 fd:0x7f97895bf490
  6488 ms  0x2e6 ret:0x0
  6491 ms  0x2e6 PK11_Encrypt()
  6491 ms  0x2e6 symkey:0x7f9789577e00
  6491 ms  0x2e6 PK11_Encrypt()
  6491 ms  0x2e6 symkey:0x7f9789577e00
  6492 ms  0x2e6 PK11_Encrypt()
  6492 ms  0x2e6 symkey:0x7f9789577e00
  6492 ms  0x2e6 PK11_Encrypt()
  6492 ms  0x2e6 symkey:0x7f9789577e00
  6492 ms  0x2e6 PK11_Encrypt()
  6492 ms  0x2e6 symkey:0x7f9789577e00
  6492 ms  0x2e6 PR_Connect()
  6492 ms  0x2e6 fd:0x7f97895bf490
  6492 ms  0x2e6 SSL_ImportFD()
  6492 ms  0x2e6 ret:0x7f9789419400
  6492 ms  0x2e6 SSL_AuthCertificateHook()
  6492 ms  0x2e6 fd:0x7f9789419400
  6492 ms  0x2e6 ret:0x0
  6492 ms  0x2e6 PR_Connect()
  6492 ms  0x2e6 fd:0x7f9789419400
  6492 ms  0x2e6 SSL_ImportFD()
  6492 ms  0x2e6 ret:0x7f97895bf250
  6492 ms  0x2e6 SSL_AuthCertificateHook()
  6492 ms  0x2e6 fd:0x7f97895bf250
  6492 ms  0x2e6 ret:0x0
  6492 ms  0x2e6 PR_Connect()
  6492 ms  0x2e6 fd:0x7f97895bf250
  6493 ms  0x2e6 PK11_Encrypt()
  6493 ms  0x2e6 symkey:0x7f9789577e00
  6493 ms  0x2e6 PK11_Encrypt()
  6493 ms  0x2e6 symkey:0x7f9789577e00
  6493 ms  0x2e6 PK11_Encrypt()
  6493 ms  0x2e6 symkey:0x7f9789577e00
  6493 ms  0x2e6 SSL_ImportFD()
  6493 ms  0x2e6 ret:0x7f979bd6b190
  6493 ms  0x2e6 SSL_AuthCertificateHook()
  6493 ms  0x2e6 fd:0x7f979bd6b190
  6493 ms  0x2e6 ret:0x0
  6497 ms  0x2e6 PK11_Encrypt()
  6497 ms  0x2e6 symkey:0x7f9789577e00
  6498 ms  0x2e6 PK11_Encrypt()
  6498 ms  0x2e6 symkey:0x7f9789577e00
  6500 ms  0x2e6 PK11_Encrypt()
  6500 ms  0x2e6 symkey:0x7f9789577e00
  6500 ms  0x2e6 PK11_Encrypt()
  6500 ms  0x2e6 symkey:0x7f9789577e00
  6500 ms  0x2e6 PK11_Encrypt()
  6500 ms  0x2e6 symkey:0x7f9789577e00
  6500 ms  0x2e6 PR_Connect()
  6500 ms  0x2e6 fd:0x7f979bd6b190
  6500 ms  0x2e6 SSL_ImportFD()
  6500 ms  0x2e6 ret:0x7f97895bf340
  6500 ms  0x2e6 SSL_AuthCertificateHook()
  6500 ms  0x2e6 fd:0x7f97895bf340
  6500 ms  0x2e6 ret:0x0
  6500 ms  0x2e6 PR_Connect()
  6500 ms  0x2e6 fd:0x7f97895bf340
  6500 ms  0x2e6 SSL_ImportFD()
  6500 ms  0x2e6 ret:0x7f979a7d8cd0
  6500 ms  0x2e6 SSL_AuthCertificateHook()
  6500 ms  0x2e6 fd:0x7f979a7d8cd0
  6500 ms  0x2e6 ret:0x0
  6500 ms  0x2e6 PR_Connect()
  6500 ms  0x2e6 fd:0x7f979a7d8cd0
  6501 ms  0x2e6 SSL_ImportFD()
  6501 ms  0x2e6 ret:0x7f979a8ef340
  6501 ms  0x2e6 SSL_AuthCertificateHook()
  6501 ms  0x2e6 fd:0x7f979a8ef340
  6501 ms  0x2e6 ret:0x0
  6501 ms  0x2e6 PR_Connect()
  6501 ms  0x2e6 fd:0x7f979a8ef340
  6501 ms  0x2e6 SSL_ImportFD()
  6501 ms  0x2e6 ret:0x7f979b988ac0
  6501 ms  0x2e6 SSL_AuthCertificateHook()
  6501 ms  0x2e6 fd:0x7f979b988ac0
  6501 ms  0x2e6 ret:0x0
  6501 ms  0x2e6 PR_Connect()
  6501 ms  0x2e6 fd:0x7f979b988ac0
  6501 ms  0x2e6 SSL_ImportFD()
  6501 ms  0x2e6 ret:0x7f979b988df0
  6501 ms  0x2e6 SSL_AuthCertificateHook()
  6501 ms  0x2e6 fd:0x7f979b988df0
  6501 ms  0x2e6 ret:0x0
  6501 ms  0x2e6 PR_Connect()
  6501 ms  0x2e6 fd:0x7f979b988df0
  6501 ms  0x2e6 PK11_Encrypt()
  6501 ms  0x2e6 symkey:0x7f9789577e00
  6508 ms  0x2e6 PK11_Encrypt()
  6508 ms  0x2e6 symkey:0x7f9789577e00
  6508 ms  0x2e6 SSL_ImportFD()
  6508 ms  0x2e6 ret:0x7f979faebbe0
  6508 ms  0x2e6 SSL_AuthCertificateHook()
  6508 ms  0x2e6 fd:0x7f979faebbe0
  6508 ms  0x2e6 ret:0x0
  6509 ms  0x2e6 PK11_Encrypt()
  6509 ms  0x2e6 symkey:0x7f9789577e00
  6509 ms  0x2e6 PK11_Encrypt()
  6509 ms  0x2e6 symkey:0x7f9789577e00
  6509 ms  0x2e6 PR_Connect()
  6509 ms  0x2e6 fd:0x7f979faebbe0
  6513 ms  0x2e6 SSL_ImportFD()
  6513 ms  0x2e6 ret:0x7f979a7d8130
  6513 ms  0x2e6 SSL_AuthCertificateHook()
  6513 ms  0x2e6 fd:0x7f979a7d8130
  6513 ms  0x2e6 ret:0x0
  6513 ms  0x2e6 PR_Connect()
  6513 ms  0x2e6 fd:0x7f979a7d8130
  6513 ms  0x2e6 PK11_Encrypt()
  6513 ms  0x2e6 symkey:0x7f9789577e00
  6514 ms  0x2e6 PK11_Encrypt()
  6514 ms  0x2e6 symkey:0x7f9789577e00
  6514 ms  0x2e6 SSL_ImportFD()
  6514 ms  0x2e6 ret:0x7f979c9a3a00
  6514 ms  0x2e6 SSL_AuthCertificateHook()
  6514 ms  0x2e6 fd:0x7f979c9a3a00
  6514 ms  0x2e6 ret:0x0
  6515 ms  0x2e6 PK11_Encrypt()
  6515 ms  0x2e6 symkey:0x7f9789577e00
  6519 ms  0x2e6 PR_Connect()
  6519 ms  0x2e6 fd:0x7f979c9a3a00
  6519 ms  0x2e6 PK11_Encrypt()
  6519 ms  0x2e6 symkey:0x7f9789577e00
  6519 ms  0x2e6 SSL_ImportFD()
  6519 ms  0x2e6 ret:0x7f979a737b80
  6519 ms  0x2e6 SSL_AuthCertificateHook()
  6519 ms  0x2e6 fd:0x7f979a737b80
  6519 ms  0x2e6 ret:0x0
  6519 ms  0x2e6 PR_Connect()
  6519 ms  0x2e6 fd:0x7f979a737b80
  6519 ms  0x2e6 PK11_Encrypt()
  6519 ms  0x2e6 symkey:0x7f9789577e00
  6519 ms  0x2e6 PK11_Encrypt()
  6519 ms  0x2e6 symkey:0x7f9789577e00
  6531 ms  0x2e6 PK11_Encrypt()
  6531 ms  0x2e6 symkey:0x7f9789578a80
           /* TID 0x2ee */
  6532 ms  0x2ee PR_Close()
  6532 ms  0x2ee fd:0x7f9789419c40
           /* TID 0x2e6 */
  6546 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6546 ms  0x2e6 cx:0x7f979a70dde8
  6547 ms     | 0x2e6 EC_ValidatePublicKey()
  6547 ms     | 0x2e6 ret:0x0
  6547 ms  0x2e6 ret:0x7f97894ae820::7f97894ae820  60 ea 51 89                                      `.Q.
  6547 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6547 ms  0x2e6 cx:0x7f979a70dde8
  6548 ms     | 0x2e6 EC_ValidatePublicKey()
  6554 ms     | 0x2e6 ret:0x0
  6554 ms  0x2e6 ret:0x7f97894b2820::7f97894b2820  10 d5 5b 89                                      ..[.
           /* TID 0x2ee */
  6557 ms  0x2ee PR_Close()
  6557 ms  0x2ee fd:0x7f9789419fa0
  6566 ms  0x2ee PR_Close()
  6566 ms  0x2ee fd:0x7f9789419fa0
           /* TID 0x2e6 */
  6566 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6566 ms  0x2e6 cx:0x7f979a70fb28
  6567 ms     | 0x2e6 EC_ValidatePublicKey()
  6567 ms     | 0x2e6 ret:0x0
  6567 ms  0x2e6 ret:0x7f97894b6020::7f97894b6020  d0 dd 5b 89                                      ..[.
  6567 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6567 ms  0x2e6 cx:0x7f979a70fb28
  6574 ms     | 0x2e6 EC_ValidatePublicKey()
  6576 ms     | 0x2e6 ret:0x0
  6576 ms  0x2e6 ret:0x7f97894ba820::7f97894ba820  00 96 4a 9a                                      ..J.
  6581 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6581 ms  0x2e6 cx:0x7f979a70d908
  6581 ms     | 0x2e6 EC_ValidatePublicKey()
  6581 ms     | 0x2e6 ret:0x0
  6581 ms  0x2e6 ret:0x7f97895c6020::7f97895c6020  b0 9a 4a 9a                                      ..J.
  6581 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6581 ms  0x2e6 cx:0x7f979a70d908
  6582 ms     | 0x2e6 EC_ValidatePublicKey()
  6590 ms     | 0x2e6 ret:0x0
  6590 ms  0x2e6 ret:0x7f97895d6020::7f97895d6020  10 5f 7e 9a                                      ._~.
  6602 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6602 ms  0x2e6 cx:0x7f97a0d25248
  6603 ms     | 0x2e6 EC_ValidatePublicKey()
  6603 ms     | 0x2e6 ret:0x0
  6603 ms  0x2e6 ret:0x7f97895d8820::7f97895d8820  c0 d4 5b 89                                      ..[.
  6603 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6603 ms  0x2e6 cx:0x7f97a0d25248
  6604 ms     | 0x2e6 EC_ValidatePublicKey()
  6605 ms     | 0x2e6 ret:0x0
  6605 ms  0x2e6 ret:0x7f97895da820::7f97895da820  f0 81 20 9b                                      .. .
  6612 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6612 ms  0x2e6 cx:0x7f979a8bd988
  6613 ms     | 0x2e6 EC_ValidatePublicKey()
  6613 ms     | 0x2e6 ret:0x0
  6613 ms  0x2e6 ret:0x7f97895dd020::7f97895dd020  10 85 20 9b                                      .. .
  6613 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6613 ms  0x2e6 cx:0x7f979a8bd988
  6614 ms     | 0x2e6 EC_ValidatePublicKey()
  6615 ms     | 0x2e6 ret:0x0
  6615 ms  0x2e6 ret:0x7f97895df020::7f97895df020  60 80 22 9b                                      `.".
  6616 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6616 ms  0x2e6 cx:0x7f979a70fcc8
  6617 ms     | 0x2e6 EC_ValidatePublicKey()
  6617 ms     | 0x2e6 ret:0x0
  6617 ms  0x2e6 ret:0x7f97895e1820::7f97895e1820  e0 82 20 9b                                      .. .
  6617 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6617 ms  0x2e6 cx:0x7f979a70fcc8
  6618 ms     | 0x2e6 EC_ValidatePublicKey()
  6619 ms     | 0x2e6 ret:0x0
  6619 ms  0x2e6 ret:0x7f979a424020::7f979a424020  c0 84 22 9b                                      ..".
           /* TID 0x2ee */
  6631 ms  0x2ee PR_Close()
  6631 ms  0x2ee fd:0x7f978948d760
           /* TID 0x35b */
  6633 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6633 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  6633 ms  SECKEY_ECParamsToKeySize()
  6633 ms  0x2e6 ret:0x100
  6633 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6633 ms  0x2e6 cx:0x7f979a70dde8
  6634 ms     | 0x2e6 EC_ValidatePublicKey()
  6638 ms     | 0x2e6 ret:0x0
  6638 ms  0x2e6 ret:0x7f979a439820::7f979a439820  b0 d0 d3 9b                                      ....
  6639 ms  0x2e6 PK11_PubDeriveWithKDF()
  6639 ms  0x2e6 seckey:0x7f979a439820
  6639 ms     | 0x2e6 EC_ValidatePublicKey()
  6640 ms     | 0x2e6 ret:0x0
  6641 ms  0x2e6 ret:0x7f979a444100
  6641 ms  0x2e6 PK11_DeriveWithFlags()
  6641 ms  0x2e6 basekey:0x7f979a444100
  6641 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6642 ms  0x2e6 ret:0x7f9789578d80
  6642 ms  0x2e6 PK11_Derive()
  6642 ms  0x2e6 basekey:0x7f9789578d80
  6642 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6642 ms  0x2e6 ret:0x7f9789578780
  6642 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6642 ms  0x2e6 privk:0x7f979a439820::7f979a439820  b0 d0 d3 9b                                      ....
  6642 ms  0x2e6 privk:0x7f979a439820::7f979a439820  e5 e5 e5 e5                                      ....
  6642 ms  0x2e6 PK11_Encrypt()
  6642 ms  0x2e6 symkey:0x7f97892aa580
  6660 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6660 ms  0x2e6 cx:0x7f97a0d253e8
  6661 ms     | 0x2e6 EC_ValidatePublicKey()
  6661 ms     | 0x2e6 ret:0x0
  6661 ms  0x2e6 ret:0x7f979a439820::7f979a439820  c0 d9 93 9b                                      ....
  6661 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6661 ms  0x2e6 cx:0x7f97a0d253e8
  6661 ms     | 0x2e6 EC_ValidatePublicKey()
  6669 ms     | 0x2e6 ret:0x0
  6669 ms  0x2e6 ret:0x7f979a43c020::7f979a43c020  f0 d1 d3 9b                                      ....
  6670 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6670 ms  0x2e6 cx:0x7f97a0d250a8
  6670 ms     | 0x2e6 EC_ValidatePublicKey()
  6670 ms     | 0x2e6 ret:0x0
  6670 ms  0x2e6 ret:0x7f979a71d820::7f979a71d820  30 d3 d3 9b                                      0...
  6671 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6671 ms  0x2e6 cx:0x7f97a0d250a8
  6671 ms     | 0x2e6 EC_ValidatePublicKey()
  6673 ms     | 0x2e6 ret:0x0
  6673 ms  0x2e6 ret:0x7f979a722020::7f979a722020  c0 de d3 9b                                      ....
  6673 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6673 ms  0x2e6 cx:0x7f97a524a7a8
  6674 ms     | 0x2e6 EC_ValidatePublicKey()
  6674 ms     | 0x2e6 ret:0x0
  6674 ms  0x2e6 ret:0x7f979a726020::7f979a726020  f0 01 d4 9b                                      ....
  6674 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6674 ms  0x2e6 cx:0x7f97a524a7a8
  6674 ms     | 0x2e6 EC_ValidatePublicKey()
  6676 ms     | 0x2e6 ret:0x0
  6676 ms  0x2e6 ret:0x7f979a72a020::7f979a72a020  e0 e2 df 9b                                      ....
  6684 ms  0x2e6 SSL_AuthCertificateComplete()
  6684 ms  0x2e6 fd:0x7f9789419400
  6684 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  6686 ms  0x2ee PR_Close()
  6686 ms  0x2ee fd:0x7f979a737f10
           /* TID 0x39b */
  6686 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6686 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  6687 ms  SECKEY_ECParamsToKeySize()
  6687 ms  0x2e6 ret:0x100
  6687 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6687 ms  0x2e6 cx:0x7f979a70fb28
  6687 ms     | 0x2e6 EC_ValidatePublicKey()
  6689 ms     | 0x2e6 ret:0x0
  6689 ms  0x2e6 ret:0x7f979a835020::7f979a835020  10 ef df 9b                                      ....
  6689 ms  0x2e6 PK11_PubDeriveWithKDF()
  6689 ms  0x2e6 seckey:0x7f979a835020
  6689 ms     | 0x2e6 EC_ValidatePublicKey()
  6690 ms     | 0x2e6 ret:0x0
  6692 ms  0x2e6 ret:0x7f979a444100
  6692 ms  0x2e6 PK11_DeriveWithFlags()
  6692 ms  0x2e6 basekey:0x7f979a444100
  6692 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6692 ms  0x2e6 ret:0x7f97892aa780
  6692 ms  0x2e6 PK11_Derive()
  6692 ms  0x2e6 basekey:0x7f97892aa780
  6692 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6692 ms  0x2e6 ret:0x7f97892aa500
  6692 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6692 ms  0x2e6 privk:0x7f979a835020::7f979a835020  10 ef df 9b                                      ....
  6692 ms  0x2e6 privk:0x7f979a835020::7f979a835020  e5 e5 e5 e5                                      ....
  6692 ms  0x2e6 PK11_Encrypt()
  6692 ms  0x2e6 symkey:0x7f97892aa100
  6696 ms  0x2e6 PK11_Encrypt()
  6696 ms  0x2e6 symkey:0x7f97892aa580
           /* TID 0x39c */
  6697 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6698 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  6698 ms  SECKEY_ECParamsToKeySize()
  6698 ms  0x2e6 ret:0x100
  6698 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6698 ms  0x2e6 cx:0x7f979a70d908
  6698 ms     | 0x2e6 EC_ValidatePublicKey()
  6700 ms     | 0x2e6 ret:0x0
  6700 ms  0x2e6 ret:0x7f979c020820::7f979c020820  60 ea 0b 9c                                      `...
  6700 ms  0x2e6 PK11_PubDeriveWithKDF()
  6700 ms  0x2e6 seckey:0x7f979c020820
  6700 ms     | 0x2e6 EC_ValidatePublicKey()
  6701 ms     | 0x2e6 ret:0x0
  6713 ms  0x2e6 ret:0x7f979a444100
  6713 ms  0x2e6 PK11_DeriveWithFlags()
  6713 ms  0x2e6 basekey:0x7f979a444100
  6713 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6713 ms  0x2e6 ret:0x7f9789578e80
  6713 ms  0x2e6 PK11_Derive()
  6713 ms  0x2e6 basekey:0x7f9789578e80
  6713 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6714 ms  0x2e6 ret:0x7f9789578f80
  6714 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6714 ms  0x2e6 privk:0x7f979c020820::7f979c020820  60 ea 0b 9c                                      `...
  6714 ms  0x2e6 privk:0x7f979c020820::7f979c020820  e5 e5 e5 e5                                      ....
  6714 ms  0x2e6 PK11_Encrypt()
  6714 ms  0x2e6 symkey:0x7f9789578c00
           /* TID 0x35b */
  6715 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6715 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  6715 ms  SECKEY_ECParamsToKeySize()
  6715 ms  0x2e6 ret:0x100
  6715 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6715 ms  0x2e6 cx:0x7f97a0d25248
  6715 ms     | 0x2e6 EC_ValidatePublicKey()
  6717 ms     | 0x2e6 ret:0x0
  6717 ms  0x2e6 ret:0x7f979f1a9020::7f979f1a9020  d0 f3 4a 9c                                      ..J.
  6717 ms  0x2e6 PK11_PubDeriveWithKDF()
  6717 ms  0x2e6 seckey:0x7f979f1a9020
  6717 ms     | 0x2e6 EC_ValidatePublicKey()
  6718 ms     | 0x2e6 ret:0x0
  6720 ms  0x2e6 ret:0x7f979a444100
  6720 ms  0x2e6 PK11_DeriveWithFlags()
  6720 ms  0x2e6 basekey:0x7f979a444100
  6720 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6720 ms  0x2e6 ret:0x7f9789578b80
  6720 ms  0x2e6 PK11_Derive()
  6720 ms  0x2e6 basekey:0x7f9789578b80
  6720 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6720 ms  0x2e6 ret:0x7f9789578c80
  6720 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6720 ms  0x2e6 privk:0x7f979f1a9020::7f979f1a9020  d0 f3 4a 9c                                      ..J.
  6720 ms  0x2e6 privk:0x7f979f1a9020::7f979f1a9020  e5 e5 e5 e5                                      ....
  6720 ms  0x2e6 PK11_Encrypt()
  6720 ms  0x2e6 symkey:0x7f9789578880
           /* TID 0x39b */
  6728 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6728 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  6728 ms  SECKEY_ECParamsToKeySize()
  6728 ms  0x2e6 ret:0x100
  6729 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6729 ms  0x2e6 cx:0x7f979a8bd988
  6729 ms     | 0x2e6 EC_ValidatePublicKey()
  6738 ms     | 0x2e6 ret:0x0
  6738 ms  0x2e6 ret:0x7f97894a0820::7f97894a0820  b0 55 7e 9a                                      .U~.
  6738 ms  0x2e6 PK11_PubDeriveWithKDF()
  6738 ms  0x2e6 seckey:0x7f97894a0820
  6738 ms     | 0x2e6 EC_ValidatePublicKey()
  6740 ms     | 0x2e6 ret:0x0
  6741 ms  0x2e6 ret:0x7f979a444100
  6741 ms  0x2e6 PK11_DeriveWithFlags()
  6741 ms  0x2e6 basekey:0x7f979a444100
  6741 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6741 ms  0x2e6 ret:0x7f9789578600
  6741 ms  0x2e6 PK11_Derive()
  6741 ms  0x2e6 basekey:0x7f9789578600
  6741 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6741 ms  0x2e6 ret:0x7f9789578700
  6741 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6741 ms  0x2e6 privk:0x7f97894a0820::7f97894a0820  b0 55 7e 9a                                      .U~.
  6742 ms  0x2e6 privk:0x7f97894a0820::7f97894a0820  e5 e5 e5 e5                                      ....
  6742 ms  0x2e6 PK11_Encrypt()
  6742 ms  0x2e6 symkey:0x7f978924f080
           /* TID 0x39c */
  6752 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6752 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  6752 ms  SECKEY_ECParamsToKeySize()
  6752 ms  0x2e6 ret:0x100
  6752 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6752 ms  0x2e6 cx:0x7f979a70fcc8
  6753 ms     | 0x2e6 EC_ValidatePublicKey()
  6754 ms     | 0x2e6 ret:0x0
  6754 ms  0x2e6 ret:0x7f97894a1820::7f97894a1820  80 ed 4c 89                                      ..L.
  6754 ms  0x2e6 PK11_PubDeriveWithKDF()
  6754 ms  0x2e6 seckey:0x7f97894a1820
  6754 ms     | 0x2e6 EC_ValidatePublicKey()
  6756 ms     | 0x2e6 ret:0x0
  6757 ms  0x2e6 ret:0x7f979a444100
  6757 ms  0x2e6 PK11_DeriveWithFlags()
  6757 ms  0x2e6 basekey:0x7f979a444100
  6757 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6757 ms  0x2e6 ret:0x7f97892aac00
  6757 ms  0x2e6 PK11_Derive()
  6757 ms  0x2e6 basekey:0x7f97892aac00
  6757 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6757 ms  0x2e6 ret:0x7f97892ab100
  6757 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6757 ms  0x2e6 privk:0x7f97894a1820::7f97894a1820  80 ed 4c 89                                      ..L.
  6757 ms  0x2e6 privk:0x7f97894a1820::7f97894a1820  e5 e5 e5 e5                                      ....
  6757 ms  0x2e6 PK11_Encrypt()
  6757 ms  0x2e6 symkey:0x7f97892ab300
  6763 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6763 ms  0x2e6 cx:0x7f97a0d25728
  6763 ms     | 0x2e6 EC_ValidatePublicKey()
  6763 ms     | 0x2e6 ret:0x0
  6763 ms  0x2e6 ret:0x7f97894a1820::7f97894a1820  10 75 3a 89                                      .u:.
  6763 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6763 ms  0x2e6 cx:0x7f97a0d25728
  6764 ms     | 0x2e6 EC_ValidatePublicKey()
  6765 ms     | 0x2e6 ret:0x0
  6765 ms  0x2e6 ret:0x7f97894a3820::7f97894a3820  70 ae 55 89                                      p.U.
  6773 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6773 ms  0x2e6 cx:0x7f97a0d25588
  6773 ms     | 0x2e6 EC_ValidatePublicKey()
  6773 ms     | 0x2e6 ret:0x0
  6773 ms  0x2e6 ret:0x7f97895ca020::7f97895ca020  00 ab 4a 9a                                      ..J.
  6773 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6773 ms  0x2e6 cx:0x7f97a0d25588
  6774 ms     | 0x2e6 EC_ValidatePublicKey()
  6775 ms     | 0x2e6 ret:0x0
  6776 ms  0x2e6 ret:0x7f979a431820::7f979a431820  f0 26 51 9a                                      .&Q.
  6776 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6776 ms  0x2e6 cx:0x7f97a0d258c8
  6776 ms     | 0x2e6 EC_ValidatePublicKey()
  6776 ms     | 0x2e6 ret:0x0
  6776 ms  0x2e6 ret:0x7f979a717820::7f979a717820  b0 55 7e 9a                                      .U~.
  6776 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6776 ms  0x2e6 cx:0x7f97a0d258c8
  6777 ms     | 0x2e6 EC_ValidatePublicKey()
  6778 ms     | 0x2e6 ret:0x0
  6778 ms  0x2e6 ret:0x7f979a71a820::7f979a71a820  b0 80 20 9b                                      .. .
  6783 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6783 ms  0x2e6 cx:0x7f97a0d25a68
  6784 ms     | 0x2e6 EC_ValidatePublicKey()
  6784 ms     | 0x2e6 ret:0x0
  6784 ms  0x2e6 ret:0x7f979a732820::7f979a732820  b0 8f 20 9b                                      .. .
  6784 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6784 ms  0x2e6 cx:0x7f97a0d25a68
  6784 ms     | 0x2e6 EC_ValidatePublicKey()
  6786 ms     | 0x2e6 ret:0x0
  6786 ms  0x2e6 ret:0x7f979b9d4020::7f979b9d4020  30 d3 93 9b                                      0...
  6786 ms  0x2e6 SSL_AuthCertificateComplete()
  6786 ms  0x2e6 fd:0x7f97895bf250
  6786 ms  0x2e6 err:0x0
  6786 ms  0x2e6 SSL_AuthCertificateComplete()
  6786 ms  0x2e6 fd:0x7f97895bf490
  6786 ms  0x2e6 err:0x0
  6786 ms  0x2e6 SSL_AuthCertificateComplete()
  6786 ms  0x2e6 fd:0x7f979b988ac0
  6786 ms  0x2e6 err:0x0
  6786 ms  0x2e6 SSL_AuthCertificateComplete()
  6786 ms  0x2e6 fd:0x7f97895bf340
  6786 ms  0x2e6 err:0x0
  6786 ms  0x2e6 SSL_AuthCertificateComplete()
  6786 ms  0x2e6 fd:0x7f979bd6b190
  6786 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  6796 ms  0x2ee PR_Close()
  6796 ms  0x2ee fd:0x7f9789419d60
  6797 ms  0x2ee PR_Close()
  6797 ms  0x2ee fd:0x7f9789419d60
           /* TID 0x2e6 */
  6799 ms  0x2e6 PK11_Encrypt()
  6799 ms  0x2e6 symkey:0x7f97892aa100
  6800 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6800 ms  0x2e6 privk:0x7f97894b2820::7f97894b2820  10 d5 5b 89                                      ..[.
  6801 ms  0x2e6 privk:0x7f97894b2820::7f97894b2820  e5 e5 e5 e5                                      ....
  6801 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6801 ms  0x2e6 privk:0x7f97894ae820::7f97894ae820  60 ea 51 89                                      `.Q.
  6801 ms  0x2e6 privk:0x7f97894ae820::7f97894ae820  e5 e5 e5 e5                                      ....
  6801 ms  0x2e6 PK11_Encrypt()
  6801 ms  0x2e6 symkey:0x7f9789578c00
           /* TID 0x35b */
  6802 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6802 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  6802 ms  SECKEY_ECParamsToKeySize()
  6802 ms  0x2e6 ret:0x100
  6802 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6802 ms  0x2e6 cx:0x7f97a0d253e8
  6803 ms     | 0x2e6 EC_ValidatePublicKey()
  6804 ms     | 0x2e6 ret:0x0
  6804 ms  0x2e6 ret:0x7f97894b2020::7f97894b2020  d0 a3 55 89                                      ..U.
  6804 ms  0x2e6 PK11_PubDeriveWithKDF()
  6804 ms  0x2e6 seckey:0x7f97894b2020
  6804 ms     | 0x2e6 EC_ValidatePublicKey()
  6806 ms     | 0x2e6 ret:0x0
  6807 ms  0x2e6 ret:0x7f979a444100
  6807 ms  0x2e6 PK11_DeriveWithFlags()
  6807 ms  0x2e6 basekey:0x7f979a444100
  6807 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6807 ms  0x2e6 ret:0x7f978931da80
  6807 ms  0x2e6 PK11_Derive()
  6807 ms  0x2e6 basekey:0x7f978931da80
  6807 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6807 ms  0x2e6 ret:0x7f9789417b80
  6807 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6807 ms  0x2e6 privk:0x7f97894b2020::7f97894b2020  d0 a3 55 89                                      ..U.
  6807 ms  0x2e6 privk:0x7f97894b2020::7f97894b2020  e5 e5 e5 e5                                      ....
  6807 ms  0x2e6 PK11_Encrypt()
  6807 ms  0x2e6 symkey:0x7f9789418780
  6812 ms  0x2e6 PK11_Encrypt()
  6812 ms  0x2e6 symkey:0x7f9789578880
           /* TID 0x39b */
  6813 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6813 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  6814 ms  SECKEY_ECParamsToKeySize()
  6814 ms  0x2e6 ret:0x100
  6814 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6814 ms  0x2e6 cx:0x7f97a0d250a8
  6814 ms     | 0x2e6 EC_ValidatePublicKey()
  6816 ms     | 0x2e6 ret:0x0
  6816 ms  0x2e6 ret:0x7f979a72b820::7f979a72b820  00 a6 55 89                                      ..U.
  6816 ms  0x2e6 PK11_PubDeriveWithKDF()
  6816 ms  0x2e6 seckey:0x7f979a72b820
  6816 ms     | 0x2e6 EC_ValidatePublicKey()
  6817 ms     | 0x2e6 ret:0x0
  6818 ms  0x2e6 ret:0x7f979a444100
  6818 ms  0x2e6 PK11_DeriveWithFlags()
  6818 ms  0x2e6 basekey:0x7f979a444100
  6819 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6819 ms  0x2e6 ret:0x7f9789418b00
  6819 ms  0x2e6 PK11_Derive()
  6819 ms  0x2e6 basekey:0x7f9789418b00
  6819 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6819 ms  0x2e6 ret:0x7f9789418b80
  6819 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6819 ms  0x2e6 privk:0x7f979a72b820::7f979a72b820  00 a6 55 89                                      ..U.
  6819 ms  0x2e6 privk:0x7f979a72b820::7f979a72b820  e5 e5 e5 e5                                      ....
  6819 ms  0x2e6 PK11_Encrypt()
  6819 ms  0x2e6 symkey:0x7f9789418d00
           /* TID 0x39c */
  6828 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6829 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  6829 ms  SECKEY_ECParamsToKeySize()
  6829 ms  0x2e6 ret:0x100
  6829 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6829 ms  0x2e6 cx:0x7f97a524a7a8
  6829 ms     | 0x2e6 EC_ValidatePublicKey()
  6831 ms     | 0x2e6 ret:0x0
  6831 ms  0x2e6 ret:0x7f979a72c820::7f979a72c820  d0 a8 55 89                                      ..U.
  6831 ms  0x2e6 PK11_PubDeriveWithKDF()
  6831 ms  0x2e6 seckey:0x7f979a72c820
  6831 ms     | 0x2e6 EC_ValidatePublicKey()
  6840 ms     | 0x2e6 ret:0x0
  6842 ms  0x2e6 ret:0x7f979a444100
  6842 ms  0x2e6 PK11_DeriveWithFlags()
  6842 ms  0x2e6 basekey:0x7f979a444100
  6842 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6842 ms  0x2e6 ret:0x7f97892abe80
  6842 ms  0x2e6 PK11_Derive()
  6842 ms  0x2e6 basekey:0x7f97892abe80
  6842 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6842 ms  0x2e6 ret:0x7f9789418e80
  6842 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6842 ms  0x2e6 privk:0x7f979a72c820::7f979a72c820  d0 a8 55 89                                      ..U.
  6842 ms  0x2e6 privk:0x7f979a72c820::7f979a72c820  e5 e5 e5 e5                                      ....
  6842 ms  0x2e6 PK11_Encrypt()
  6842 ms  0x2e6 symkey:0x7f97894d3500
  6845 ms  0x2e6 PK11_Encrypt()
  6845 ms  0x2e6 symkey:0x7f978924f080
  6846 ms  0x2e6 PK11_Encrypt()
  6846 ms  0x2e6 symkey:0x7f97892ab300
  6846 ms  0x2e6 PR_Close()
  6846 ms  0x2e6 fd:0x7f9789419400
  6846 ms     | 0x2e6 PK11_Encrypt()
  6846 ms     | 0x2e6 symkey:0x7f97892aa580
  6849 ms  0x2e6 SSL_AuthCertificateComplete()
  6849 ms  0x2e6 fd:0x7f979b988df0
  6849 ms  0x2e6 err:0x0
  6849 ms  0x2e6 SSL_AuthCertificateComplete()
  6849 ms  0x2e6 fd:0x7f979a8ef340
  6849 ms  0x2e6 err:0x0
  6849 ms  0x2e6 SSL_AuthCertificateComplete()
  6849 ms  0x2e6 fd:0x7f979a7d8cd0
  6849 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  6851 ms  0x2ee PR_Close()
  6851 ms  0x2ee fd:0x7f978948dfd0
           /* TID 0x2e6 */
  6851 ms  0x2e6 PK11_Encrypt()
  6851 ms  0x2e6 symkey:0x7f9789578280
           /* TID 0x2ee */
  6857 ms  0x2ee PR_Close()
  6857 ms  0x2ee fd:0x7f978948d610
           /* TID 0x2e6 */
  6857 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6857 ms  0x2e6 privk:0x7f97894ba820::7f97894ba820  00 96 4a 9a                                      ..J.
  6858 ms  0x2e6 privk:0x7f97894ba820::7f97894ba820  e5 e5 e5 e5                                      ....
  6858 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6858 ms  0x2e6 privk:0x7f97894b6020::7f97894b6020  d0 dd 5b 89                                      ..[.
  6858 ms  0x2e6 privk:0x7f97894b6020::7f97894b6020  e5 e5 e5 e5                                      ....
           /* TID 0x35b */
  6858 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6859 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  6859 ms  SECKEY_ECParamsToKeySize()
  6859 ms  0x2e6 ret:0x100
  6859 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6859 ms  0x2e6 cx:0x7f97a0d25a68
  6859 ms     | 0x2e6 EC_ValidatePublicKey()
  6861 ms     | 0x2e6 ret:0x0
  6861 ms  0x2e6 ret:0x7f97893da820::7f97893da820  a0 d6 5b 89                                      ..[.
  6861 ms  0x2e6 PK11_PubDeriveWithKDF()
  6861 ms  0x2e6 seckey:0x7f97893da820
  6861 ms     | 0x2e6 EC_ValidatePublicKey()
  6862 ms     | 0x2e6 ret:0x0
  6867 ms  0x2e6 ret:0x7f9789578780
  6867 ms  0x2e6 PK11_DeriveWithFlags()
  6867 ms  0x2e6 basekey:0x7f9789578780
  6867 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6867 ms  0x2e6 ret:0x7f9789578d80
  6867 ms  0x2e6 PK11_Derive()
  6867 ms  0x2e6 basekey:0x7f9789578d80
  6867 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6868 ms  0x2e6 ret:0x7f979a444100
  6868 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6868 ms  0x2e6 privk:0x7f97893da820::7f97893da820  a0 d6 5b 89                                      ..[.
  6868 ms  0x2e6 privk:0x7f97893da820::7f97893da820  e5 e5 e5 e5                                      ....
  6868 ms  0x2e6 PK11_Encrypt()
  6868 ms  0x2e6 symkey:0x7f97892aa700
  6868 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6868 ms  0x2e6 privk:0x7f97895d6020::7f97895d6020  10 5f 7e 9a                                      ._~.
  6868 ms  0x2e6 privk:0x7f97895d6020::7f97895d6020  e5 e5 e5 e5                                      ....
  6868 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6868 ms  0x2e6 privk:0x7f97895c6020::7f97895c6020  b0 9a 4a 9a                                      ..J.
  6868 ms  0x2e6 privk:0x7f97895c6020::7f97895c6020  e5 e5 e5 e5                                      ....
  6868 ms  0x2e6 PK11_Encrypt()
  6868 ms  0x2e6 symkey:0x7f9789418780
  6869 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6869 ms  0x2e6 privk:0x7f97895da820::7f97895da820  f0 81 20 9b                                      .. .
  6869 ms  0x2e6 privk:0x7f97895da820::7f97895da820  e5 e5 e5 e5                                      ....
  6869 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6869 ms  0x2e6 privk:0x7f97895d8820::7f97895d8820  c0 d4 5b 89                                      ..[.
  6869 ms  0x2e6 privk:0x7f97895d8820::7f97895d8820  e5 e5 e5 e5                                      ....
  6873 ms  0x2e6 PK11_Encrypt()
  6873 ms  0x2e6 symkey:0x7f9789418d00
  6874 ms  0x2e6 PK11_Encrypt()
  6874 ms  0x2e6 symkey:0x7f97894d3500
  6874 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6874 ms  0x2e6 privk:0x7f97895df020::7f97895df020  60 80 22 9b                                      `.".
  6874 ms  0x2e6 privk:0x7f97895df020::7f97895df020  e5 e5 e5 e5                                      ....
  6874 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6874 ms  0x2e6 privk:0x7f97895dd020::7f97895dd020  10 85 20 9b                                      .. .
  6874 ms  0x2e6 privk:0x7f97895dd020::7f97895dd020  e5 e5 e5 e5                                      ....
  6874 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6874 ms  0x2e6 privk:0x7f979a424020::7f979a424020  c0 84 22 9b                                      ..".
  6875 ms  0x2e6 privk:0x7f979a424020::7f979a424020  e5 e5 e5 e5                                      ....
  6875 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6875 ms  0x2e6 privk:0x7f97895e1820::7f97895e1820  e0 82 20 9b                                      .. .
  6875 ms  0x2e6 privk:0x7f97895e1820::7f97895e1820  e5 e5 e5 e5                                      ....
           /* TID 0x39b */
  6876 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6876 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  6876 ms  SECKEY_ECParamsToKeySize()
  6876 ms  0x2e6 ret:0x100
  6876 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6876 ms  0x2e6 cx:0x7f97a0d25728
  6876 ms     | 0x2e6 EC_ValidatePublicKey()
  6878 ms     | 0x2e6 ret:0x0
  6878 ms  0x2e6 ret:0x7f97894b6820::7f97894b6820  00 a6 55 89                                      ..U.
  6878 ms  0x2e6 PK11_PubDeriveWithKDF()
  6878 ms  0x2e6 seckey:0x7f97894b6820
  6878 ms     | 0x2e6 EC_ValidatePublicKey()
  6879 ms     | 0x2e6 ret:0x0
  6881 ms  0x2e6 ret:0x7f9789578780
  6881 ms  0x2e6 PK11_DeriveWithFlags()
  6881 ms  0x2e6 basekey:0x7f9789578780
  6881 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6881 ms  0x2e6 ret:0x7f979a444400
  6881 ms  0x2e6 PK11_Derive()
  6881 ms  0x2e6 basekey:0x7f979a444400
  6881 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6881 ms  0x2e6 ret:0x7f979a444680
  6881 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6881 ms  0x2e6 privk:0x7f97894b6820::7f97894b6820  00 a6 55 89                                      ..U.
  6881 ms  0x2e6 privk:0x7f97894b6820::7f97894b6820  e5 e5 e5 e5                                      ....
  6881 ms  0x2e6 PK11_Encrypt()
  6881 ms  0x2e6 symkey:0x7f979a470100
           /* TID 0x39c */
  6889 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6889 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  6889 ms  SECKEY_ECParamsToKeySize()
  6889 ms  0x2e6 ret:0x100
  6889 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6889 ms  0x2e6 cx:0x7f97a0d25588
  6890 ms     | 0x2e6 EC_ValidatePublicKey()
  6891 ms     | 0x2e6 ret:0x0
  6891 ms  0x2e6 ret:0x7f97894ba020::7f97894ba020  d0 a8 55 89                                      ..U.
  6891 ms  0x2e6 PK11_PubDeriveWithKDF()
  6891 ms  0x2e6 seckey:0x7f97894ba020
  6891 ms     | 0x2e6 EC_ValidatePublicKey()
  6894 ms     | 0x2e6 ret:0x0
  6895 ms  0x2e6 ret:0x7f9789578780
  6895 ms  0x2e6 PK11_DeriveWithFlags()
  6895 ms  0x2e6 basekey:0x7f9789578780
  6895 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6895 ms  0x2e6 ret:0x7f979a444580
  6895 ms  0x2e6 PK11_Derive()
  6895 ms  0x2e6 basekey:0x7f979a444580
  6895 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6895 ms  0x2e6 ret:0x7f979a444600
  6895 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6895 ms  0x2e6 privk:0x7f97894ba020::7f97894ba020  d0 a8 55 89                                      ..U.
  6895 ms  0x2e6 privk:0x7f97894ba020::7f97894ba020  e5 e5 e5 e5                                      ....
  6895 ms  0x2e6 PK11_Encrypt()
  6895 ms  0x2e6 symkey:0x7f979a471680
           /* TID 0x35b */
  6905 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6906 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  6906 ms  SECKEY_ECParamsToKeySize()
  6906 ms  0x2e6 ret:0x100
  6906 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6906 ms  0x2e6 cx:0x7f97a0d258c8
  6906 ms     | 0x2e6 EC_ValidatePublicKey()
  6908 ms     | 0x2e6 ret:0x0
  6908 ms  0x2e6 ret:0x7f97895c6820::7f97895c6820  d0 dd 5b 89                                      ..[.
  6908 ms  0x2e6 PK11_PubDeriveWithKDF()
  6908 ms  0x2e6 seckey:0x7f97895c6820
  6908 ms     | 0x2e6 EC_ValidatePublicKey()
  6918 ms     | 0x2e6 ret:0x0
  6920 ms  0x2e6 ret:0x7f9789578780
  6920 ms  0x2e6 PK11_DeriveWithFlags()
  6920 ms  0x2e6 basekey:0x7f9789578780
  6920 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6920 ms  0x2e6 ret:0x7f979a444300
  6920 ms  0x2e6 PK11_Derive()
  6920 ms  0x2e6 basekey:0x7f979a444300
  6920 ms     | 0x2e6 PK11_DeriveWithTemplate()
  6920 ms  0x2e6 ret:0x7f979a470200
  6920 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6920 ms  0x2e6 privk:0x7f97895c6820::7f97895c6820  d0 dd 5b 89                                      ..[.
  6920 ms  0x2e6 privk:0x7f97895c6820::7f97895c6820  e5 e5 e5 e5                                      ....
  6920 ms  0x2e6 PK11_Encrypt()
  6920 ms  0x2e6 symkey:0x7f979a4b0200
  6920 ms  0x2e6 PR_Close()
  6920 ms  0x2e6 fd:0x7f979bd6b190
  6920 ms     | 0x2e6 PK11_Encrypt()
  6920 ms     | 0x2e6 symkey:0x7f97892ab300
  6921 ms  0x2e6 PR_Close()
  6921 ms  0x2e6 fd:0x7f97895bf340
  6921 ms     | 0x2e6 PK11_Encrypt()
  6921 ms     | 0x2e6 symkey:0x7f978924f080
  6921 ms  0x2e6 PR_Close()
  6921 ms  0x2e6 fd:0x7f979b988ac0
  6921 ms     | 0x2e6 PK11_Encrypt()
  6921 ms     | 0x2e6 symkey:0x7f9789578880
  6921 ms  0x2e6 PR_Close()
  6921 ms  0x2e6 fd:0x7f97895bf490
  6921 ms     | 0x2e6 PK11_Encrypt()
  6921 ms     | 0x2e6 symkey:0x7f9789578c00
  6922 ms  0x2e6 PR_Close()
  6922 ms  0x2e6 fd:0x7f97895bf250
  6922 ms     | 0x2e6 PK11_Encrypt()
  6922 ms     | 0x2e6 symkey:0x7f97892aa100
  6922 ms  0x2e6 PK11_Encrypt()
  6922 ms  0x2e6 symkey:0x7f9789577b00
  6922 ms  0x2e6 SSL_AuthCertificateComplete()
  6922 ms  0x2e6 fd:0x7f979a737b80
  6922 ms  0x2e6 err:0x0
  6922 ms  0x2e6 SSL_AuthCertificateComplete()
  6922 ms  0x2e6 fd:0x7f979a7d8130
  6922 ms  0x2e6 err:0x0
  6923 ms  0x2e6 SSL_AuthCertificateComplete()
  6923 ms  0x2e6 fd:0x7f979faebbe0
  6923 ms  0x2e6 err:0x0
  6923 ms  0x2e6 SSL_AuthCertificateComplete()
  6923 ms  0x2e6 fd:0x7f979c9a3a00
  6923 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  6924 ms  0x2ee PR_Close()
  6924 ms  0x2ee fd:0x7f9789419640
  6924 ms  0x2ee PR_Close()
  6924 ms  0x2ee fd:0x7f9789419640
  6927 ms  0x2ee PR_Close()
  6927 ms  0x2ee fd:0x7f9789419640
           /* TID 0x2e6 */
  6927 ms  0x2e6 PK11_Encrypt()
  6927 ms  0x2e6 symkey:0x7f979a471680
  6927 ms  0x2e6 PK11_Encrypt()
  6927 ms  0x2e6 symkey:0x7f97892aa700
  6928 ms  0x2e6 PK11_Encrypt()
  6928 ms  0x2e6 symkey:0x7f979a4b0200
  6928 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6928 ms  0x2e6 privk:0x7f979a43c020::7f979a43c020  f0 d1 d3 9b                                      ....
  6928 ms  0x2e6 privk:0x7f979a43c020::7f979a43c020  e5 e5 e5 e5                                      ....
  6929 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6929 ms  0x2e6 privk:0x7f979a439820::7f979a439820  c0 d9 93 9b                                      ....
  6929 ms  0x2e6 privk:0x7f979a439820::7f979a439820  e5 e5 e5 e5                                      ....
  6929 ms  0x2e6 PK11_Encrypt()
  6929 ms  0x2e6 symkey:0x7f979a470100
  6930 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6930 ms  0x2e6 privk:0x7f979a722020::7f979a722020  c0 de d3 9b                                      ....
  6930 ms  0x2e6 privk:0x7f979a722020::7f979a722020  e5 e5 e5 e5                                      ....
  6930 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6930 ms  0x2e6 privk:0x7f979a71d820::7f979a71d820  30 d3 d3 9b                                      0...
  6930 ms  0x2e6 privk:0x7f979a71d820::7f979a71d820  e5 e5 e5 e5                                      ....
  6934 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6934 ms  0x2e6 privk:0x7f979a72a020::7f979a72a020  e0 e2 df 9b                                      ....
  6934 ms  0x2e6 privk:0x7f979a72a020::7f979a72a020  e5 e5 e5 e5                                      ....
  6934 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6934 ms  0x2e6 privk:0x7f979a726020::7f979a726020  f0 01 d4 9b                                      ....
  6934 ms  0x2e6 privk:0x7f979a726020::7f979a726020  e5 e5 e5 e5                                      ....
  6934 ms  0x2e6 PR_Close()
  6934 ms  0x2e6 fd:0x7f979a7d8cd0
  6934 ms     | 0x2e6 PK11_Encrypt()
  6934 ms     | 0x2e6 symkey:0x7f97894d3500
  6935 ms  0x2e6 PR_Close()
  6935 ms  0x2e6 fd:0x7f979a8ef340
  6935 ms     | 0x2e6 PK11_Encrypt()
  6935 ms     | 0x2e6 symkey:0x7f9789418d00
  6935 ms  0x2e6 PR_Close()
  6935 ms  0x2e6 fd:0x7f979b988df0
  6935 ms     | 0x2e6 PK11_Encrypt()
  6935 ms     | 0x2e6 symkey:0x7f9789418780
           /* TID 0x2ee */
  6936 ms  0x2ee PR_Close()
  6936 ms  0x2ee fd:0x7f9789419640
           /* TID 0x2e6 */
  6937 ms  0x2e6 SSL_ImportFD()
  6937 ms  0x2e6 ret:0x7f9789419ca0
  6937 ms  0x2e6 SSL_AuthCertificateHook()
  6937 ms  0x2e6 fd:0x7f9789419ca0
  6937 ms  0x2e6 ret:0x0
  6937 ms  0x2e6 PR_Connect()
  6937 ms  0x2e6 fd:0x7f9789419ca0
  6937 ms  0x2e6 SSL_ImportFD()
  6937 ms  0x2e6 ret:0x7f9789419d60
  6937 ms  0x2e6 SSL_AuthCertificateHook()
  6937 ms  0x2e6 fd:0x7f9789419d60
  6937 ms  0x2e6 ret:0x0
  6937 ms  0x2e6 PR_Connect()
  6937 ms  0x2e6 fd:0x7f9789419d60
           /* TID 0x2ee */
  6939 ms  0x2ee PR_Close()
  6939 ms  0x2ee fd:0x7f9789419640
           /* TID 0x2e6 */
  6939 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6939 ms  0x2e6 privk:0x7f979b9d4020::7f979b9d4020  30 d3 93 9b                                      0...
  6939 ms  0x2e6 privk:0x7f979b9d4020::7f979b9d4020  e5 e5 e5 e5                                      ....
  6939 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6939 ms  0x2e6 privk:0x7f979a732820::7f979a732820  b0 8f 20 9b                                      .. .
  6939 ms  0x2e6 privk:0x7f979a732820::7f979a732820  e5 e5 e5 e5                                      ....
  6939 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6939 ms  0x2e6 privk:0x7f97894a3820::7f97894a3820  70 ae 55 89                                      p.U.
  6939 ms  0x2e6 privk:0x7f97894a3820::7f97894a3820  e5 e5 e5 e5                                      ....
  6939 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6939 ms  0x2e6 privk:0x7f97894a1820::7f97894a1820  10 75 3a 89                                      .u:.
  6940 ms  0x2e6 privk:0x7f97894a1820::7f97894a1820  e5 e5 e5 e5                                      ....
  6940 ms  0x2e6 PR_Close()
  6940 ms  0x2e6 fd:0x7f979a7d8130
  6940 ms     | 0x2e6 PK11_Encrypt()
  6940 ms     | 0x2e6 symkey:0x7f979a470100
  6943 ms  0x2e6 PR_Close()
  6943 ms  0x2e6 fd:0x7f979a737b80
  6943 ms     | 0x2e6 PK11_Encrypt()
  6943 ms     | 0x2e6 symkey:0x7f97892aa700
           /* TID 0x2ee */
  6945 ms  0x2ee PR_Close()
  6945 ms  0x2ee fd:0x7f9789419640
  6946 ms  0x2ee PR_Close()
  6946 ms  0x2ee fd:0x7f9789419640
  6947 ms  0x2ee PR_Close()
  6947 ms  0x2ee fd:0x7f9789419640
  6948 ms  0x2ee PR_Close()
  6948 ms  0x2ee fd:0x7f9789419640
  6949 ms  0x2ee PR_Close()
  6949 ms  0x2ee fd:0x7f9789419640
           /* TID 0x2e6 */
  6950 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6950 ms  0x2e6 privk:0x7f979a431820::7f979a431820  f0 26 51 9a                                      .&Q.
  6950 ms  0x2e6 privk:0x7f979a431820::7f979a431820  e5 e5 e5 e5                                      ....
  6950 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6950 ms  0x2e6 privk:0x7f97895ca020::7f97895ca020  00 ab 4a 9a                                      ..J.
  6950 ms  0x2e6 privk:0x7f97895ca020::7f97895ca020  e5 e5 e5 e5                                      ....
  6951 ms  0x2e6 PR_Close()
  6951 ms  0x2e6 fd:0x7f979faebbe0
  6951 ms     | 0x2e6 PK11_Encrypt()
  6951 ms     | 0x2e6 symkey:0x7f979a471680
           /* TID 0x2ee */
  6951 ms  0x2ee PR_Close()
  6951 ms  0x2ee fd:0x7f978932c040
  6952 ms  0x2ee PR_Close()
  6952 ms  0x2ee fd:0x7f978932c040
  6953 ms  0x2ee PR_Close()
  6953 ms  0x2ee fd:0x7f978932c040
  6954 ms  0x2ee PR_Close()
  6954 ms  0x2ee fd:0x7f978932c040
  6954 ms  0x2ee PR_Close()
  6954 ms  0x2ee fd:0x7f978932c040
  6955 ms  0x2ee PR_Close()
  6955 ms  0x2ee fd:0x7f978932c040
           /* TID 0x2e6 */
  6962 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6962 ms  0x2e6 cx:0x7f979a70d908
  6962 ms     | 0x2e6 EC_ValidatePublicKey()
  6962 ms     | 0x2e6 ret:0x0
  6962 ms  0x2e6 ret:0x7f978937e020::7f978937e020  d0 dd 21 89                                      ..!.
  6963 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6963 ms  0x2e6 cx:0x7f979a70d908
  6963 ms     | 0x2e6 EC_ValidatePublicKey()
  6965 ms     | 0x2e6 ret:0x0
  6965 ms  0x2e6 ret:0x7f97893d8020::7f97893d8020  10 fa 40 89                                      ..@.
  6965 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6965 ms  0x2e6 cx:0x7f979a70fb28
  6972 ms     | 0x2e6 EC_ValidatePublicKey()
  6972 ms     | 0x2e6 ret:0x0
  6972 ms  0x2e6 ret:0x7f97893dc020::7f97893dc020  80 fd 40 89                                      ..@.
  6972 ms  0x2e6 SECKEY_CreateECPrivateKey()
  6972 ms  0x2e6 cx:0x7f979a70fb28
  6972 ms     | 0x2e6 EC_ValidatePublicKey()
  6974 ms     | 0x2e6 ret:0x0
  6974 ms  0x2e6 ret:0x7f97893de020::7f97893de020  60 ef 4c 89                                      `.L.
  6977 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6977 ms  0x2e6 privk:0x7f979a71a820::7f979a71a820  b0 80 20 9b                                      .. .
  6977 ms  0x2e6 privk:0x7f979a71a820::7f979a71a820  e5 e5 e5 e5                                      ....
  6977 ms  0x2e6 SECKEY_DestroyPrivateKey()
  6977 ms  0x2e6 privk:0x7f979a717820::7f979a717820  b0 55 7e 9a                                      .U~.
  6977 ms  0x2e6 privk:0x7f979a717820::7f979a717820  e5 e5 e5 e5                                      ....
  6977 ms  0x2e6 PR_Close()
  6977 ms  0x2e6 fd:0x7f979c9a3a00
  6977 ms     | 0x2e6 PK11_Encrypt()
  6977 ms     | 0x2e6 symkey:0x7f979a4b0200
           /* TID 0x2ee */
  6980 ms  0x2ee PR_Close()
  6980 ms  0x2ee fd:0x7f978948dfd0
           /* TID 0x2e6 */
  6981 ms  0x2e6 SSL_ImportFD()
  6981 ms  0x2e6 ret:0x7f97895bf850
  6981 ms  0x2e6 SSL_AuthCertificateHook()
  6981 ms  0x2e6 fd:0x7f97895bf850
  6981 ms  0x2e6 ret:0x0
  6981 ms  0x2e6 PR_Connect()
  6981 ms  0x2e6 fd:0x7f97895bf850
  6981 ms  0x2e6 PK11_Encrypt()
  6981 ms  0x2e6 symkey:0x7f9789577b00
  6983 ms  0x2e6 PK11_Encrypt()
  6983 ms  0x2e6 symkey:0x7f9789577e00
  6984 ms  0x2e6 PK11_Encrypt()
  6984 ms  0x2e6 symkey:0x7f9789577e00
  6985 ms  0x2e6 PK11_Encrypt()
  6985 ms  0x2e6 symkey:0x7f9789577e00
  7002 ms  SECKEY_ECParamsToKeySize()
  7002 ms  0x2e6 ret:0xff
  7002 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7002 ms  0x2e6 cx:0x7f979a70fb28
  7002 ms     | 0x2e6 EC_ValidatePublicKey()
  7002 ms     | 0x2e6 ret:0x0
  7002 ms  0x2e6 ret:0x7f97895d6020::7f97895d6020  f0 d1 5b 89                                      ..[.
  7002 ms  0x2e6 PK11_PubDeriveWithKDF()
  7002 ms  0x2e6 seckey:0x7f97895d6020
  7002 ms     | 0x2e6 EC_ValidatePublicKey()
  7002 ms     | 0x2e6 ret:0x0
  7003 ms  0x2e6 ret:0x7f979a470200
  7003 ms  0x2e6 PK11_DeriveWithFlags()
  7003 ms  0x2e6 basekey:0x7f979a470200
  7003 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7003 ms  0x2e6 ret:0x7f979a444300
  7003 ms  0x2e6 PK11_Derive()
  7003 ms  0x2e6 basekey:0x7f979a444300
  7003 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7003 ms  0x2e6 ret:0x7f979a444600
  7003 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7003 ms  0x2e6 privk:0x7f97895d6020::7f97895d6020  f0 d1 5b 89                                      ..[.
  7003 ms  0x2e6 privk:0x7f97895d6020::7f97895d6020  e5 e5 e5 e5                                      ....
  7003 ms  0x2e6 PK11_Encrypt()
  7003 ms  0x2e6 symkey:0x7f979a470300
           /* TID 0x39b */
  7005 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7005 ms  0x39b ret:0x0
  7005 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7005 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  7012 ms  0x2e6 SSL_AuthCertificateComplete()
  7012 ms  0x2e6 fd:0x7f9789419d60
  7012 ms  0x2e6 err:0x0
  7013 ms  0x2e6 PK11_Encrypt()
  7013 ms  0x2e6 symkey:0x7f979a470300
  7013 ms  0x2e6 PK11_Encrypt()
  7013 ms  0x2e6 symkey:0x7f979a470300
  7015 ms  SECKEY_ECParamsToKeySize()
  7015 ms  0x2e6 ret:0x100
  7015 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7015 ms  0x2e6 cx:0x7f979a70d908
  7016 ms     | 0x2e6 EC_ValidatePublicKey()
  7018 ms     | 0x2e6 ret:0x0
  7018 ms  0x2e6 ret:0x7f97895d9820::7f97895d9820  a0 db 5b 89                                      ..[.
  7018 ms  0x2e6 PK11_PubDeriveWithKDF()
  7018 ms  0x2e6 seckey:0x7f97895d9820
  7018 ms     | 0x2e6 EC_ValidatePublicKey()
           /* TID 0x39c */
  7019 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7019 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  7030 ms     | 0x2e6 ret:0x0
  7031 ms  0x2e6 ret:0x7f979a470200
  7031 ms  0x2e6 PK11_DeriveWithFlags()
  7031 ms  0x2e6 basekey:0x7f979a470200
  7031 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7031 ms  0x2e6 ret:0x7f979a444580
  7031 ms  0x2e6 PK11_Derive()
  7031 ms  0x2e6 basekey:0x7f979a444580
  7032 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7032 ms  0x2e6 ret:0x7f979a444100
  7032 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7032 ms  0x2e6 privk:0x7f97895d9820::7f97895d9820  a0 db 5b 89                                      ..[.
  7032 ms  0x2e6 privk:0x7f97895d9820::7f97895d9820  e5 e5 e5 e5                                      ....
  7032 ms  0x2e6 PK11_Encrypt()
  7032 ms  0x2e6 symkey:0x7f979a470880
  7032 ms  0x2e6 SSL_AuthCertificateComplete()
  7032 ms  0x2e6 fd:0x7f9789419ca0
  7032 ms  0x2e6 err:0x0
  7032 ms  0x2e6 PK11_Encrypt()
  7032 ms  0x2e6 symkey:0x7f979a470880
  7033 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7033 ms  0x2e6 privk:0x7f97893de020::7f97893de020  60 ef 4c 89                                      `.L.
  7033 ms  0x2e6 privk:0x7f97893de020::7f97893de020  e5 e5 e5 e5                                      ....
  7033 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7033 ms  0x2e6 privk:0x7f97893dc020::7f97893dc020  80 fd 40 89                                      ..@.
  7033 ms  0x2e6 privk:0x7f97893dc020::7f97893dc020  e5 e5 e5 e5                                      ....
  7033 ms  0x2e6 PK11_Encrypt()
  7033 ms  0x2e6 symkey:0x7f979a470300
  7033 ms  0x2e6 SSL_ImportFD()
  7033 ms  0x2e6 ret:0x7f979a737bb0
  7033 ms  0x2e6 SSL_AuthCertificateHook()
  7033 ms  0x2e6 fd:0x7f979a737bb0
  7033 ms  0x2e6 ret:0x0
  7033 ms  0x2e6 PR_Connect()
  7033 ms  0x2e6 fd:0x7f979a737bb0
  7035 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7035 ms  0x2e6 cx:0x7f979a70fcc8
  7036 ms     | 0x2e6 EC_ValidatePublicKey()
  7036 ms     | 0x2e6 ret:0x0
  7036 ms  0x2e6 ret:0x7f97893dc020::7f97893dc020  60 ff 40 89                                      `.@.
  7036 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7036 ms  0x2e6 cx:0x7f979a70fcc8
  7036 ms     | 0x2e6 EC_ValidatePublicKey()
  7038 ms     | 0x2e6 ret:0x0
  7038 ms  0x2e6 ret:0x7f97893de020::7f97893de020  50 d6 5b 89                                      P.[.
           /* TID 0x2ee */
  7043 ms  0x2ee PR_Close()
  7043 ms  0x2ee fd:0x7f978948dc40
           /* TID 0x2e6 */
  7083 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7083 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  10 fa 40 89                                      ..@.
  7083 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  e5 e5 e5 e5                                      ....
  7083 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7083 ms  0x2e6 privk:0x7f978937e020::7f978937e020  d0 dd 21 89                                      ..!.
  7083 ms  0x2e6 privk:0x7f978937e020::7f978937e020  e5 e5 e5 e5                                      ....
           /* TID 0x2ee */
  7084 ms  0x2ee PR_Close()
  7084 ms  0x2ee fd:0x7f978948dc40
           /* TID 0x2e6 */
  7088 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7088 ms  0x2e6 cx:0x7f97a0d25248
  7088 ms     | 0x2e6 EC_ValidatePublicKey()
  7088 ms     | 0x2e6 ret:0x0
  7088 ms  0x2e6 ret:0x7f978937e020::7f978937e020  40 72 3a 89                                      @r:.
  7089 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7089 ms  0x2e6 cx:0x7f97a0d25248
  7089 ms     | 0x2e6 EC_ValidatePublicKey()
  7090 ms     | 0x2e6 ret:0x0
  7091 ms  0x2e6 ret:0x7f97893d8020::7f97893d8020  00 fb 40 89                                      ..@.
           /* TID 0x2ee */
  7099 ms  0x2ee PR_Close()
  7099 ms  0x2ee fd:0x7f978948d790
  7100 ms  0x2ee PR_Close()
  7100 ms  0x2ee fd:0x7f978948d790
           /* TID 0x2e6 */
  7101 ms  0x2e6 PK11_Derive()
  7101 ms  0x2e6 basekey:0x7f9789578d80
  7101 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7101 ms  0x2e6 ret:0x7f979a470200
  7101 ms  0x2e6 PK11_Encrypt()
  7101 ms  0x2e6 symkey:0x7f97892aa480
  7103 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7103 ms  0x2e6 privk:0x7f97893de020::7f97893de020  50 d6 5b 89                                      P.[.
  7103 ms  0x2e6 privk:0x7f97893de020::7f97893de020  e5 e5 e5 e5                                      ....
  7103 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7103 ms  0x2e6 privk:0x7f97893dc020::7f97893dc020  60 ff 40 89                                      `.@.
  7103 ms  0x2e6 privk:0x7f97893dc020::7f97893dc020  e5 e5 e5 e5                                      ....
           /* TID 0x2ee */
  7105 ms  0x2ee PR_Close()
  7105 ms  0x2ee fd:0x7f97895bf370
  7106 ms  0x2ee PR_Close()
  7106 ms  0x2ee fd:0x7f97895bf370
           /* TID 0x2e6 */
  7106 ms  0x2e6 PK11_Encrypt()
  7106 ms  0x2e6 symkey:0x7f97892aa480
  7147 ms  SECKEY_ECParamsToKeySize()
  7147 ms  0x2e6 ret:0x100
  7147 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7147 ms  0x2e6 cx:0x7f97a0d25248
  7148 ms     | 0x2e6 EC_ValidatePublicKey()
  7149 ms     | 0x2e6 ret:0x0
  7149 ms  0x2e6 ret:0x7f97893dd020::7f97893dd020  90 e2 51 89                                      ..Q.
  7149 ms  0x2e6 PK11_PubDeriveWithKDF()
  7149 ms  0x2e6 seckey:0x7f97893dd020
  7149 ms     | 0x2e6 EC_ValidatePublicKey()
  7151 ms     | 0x2e6 ret:0x0
  7152 ms  0x2e6 ret:0x7f979a444680
  7152 ms  0x2e6 PK11_DeriveWithFlags()
  7152 ms  0x2e6 basekey:0x7f979a444680
  7152 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7152 ms  0x2e6 ret:0x7f979a444400
  7152 ms  0x2e6 PK11_Derive()
  7152 ms  0x2e6 basekey:0x7f979a444400
  7152 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7152 ms  0x2e6 ret:0x7f9789417b80
  7152 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7152 ms  0x2e6 privk:0x7f97893dd020::7f97893dd020  90 e2 51 89                                      ..Q.
  7152 ms  0x2e6 privk:0x7f97893dd020::7f97893dd020  e5 e5 e5 e5                                      ....
           /* TID 0x35b */
  7153 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7154 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  7163 ms  0x2e6 PK11_Encrypt()
  7163 ms  0x2e6 symkey:0x7f979a444700
  7163 ms  0x2e6 SSL_AuthCertificateComplete()
  7163 ms  0x2e6 fd:0x7f979a737bb0
  7163 ms  0x2e6 err:0x0
  7163 ms  0x2e6 PK11_Encrypt()
  7163 ms  0x2e6 symkey:0x7f979a444700
  7218 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7218 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  00 fb 40 89                                      ..@.
  7218 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  e5 e5 e5 e5                                      ....
  7218 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7218 ms  0x2e6 privk:0x7f978937e020::7f978937e020  40 72 3a 89                                      @r:.
  7218 ms  0x2e6 privk:0x7f978937e020::7f978937e020  e5 e5 e5 e5                                      ....
  7257 ms  0x2e6 PR_Close()
  7257 ms  0x2e6 fd:0x7f97895bf850
  7257 ms     | 0x2e6 PK11_Encrypt()
  7257 ms     | 0x2e6 symkey:0x7f97892aa480
  7260 ms  0x2e6 SSL_ImportFD()
  7260 ms  0x2e6 ret:0x7f979a4b1b50
  7260 ms  0x2e6 SSL_AuthCertificateHook()
  7260 ms  0x2e6 fd:0x7f979a4b1b50
  7260 ms  0x2e6 ret:0x0
  7260 ms  0x2e6 PR_Connect()
  7260 ms  0x2e6 fd:0x7f979a4b1b50
  7260 ms  0x2e6 SSL_ImportFD()
  7260 ms  0x2e6 ret:0x7f979a7d8370
  7260 ms  0x2e6 SSL_AuthCertificateHook()
  7260 ms  0x2e6 fd:0x7f979a7d8370
  7260 ms  0x2e6 ret:0x0
  7260 ms  0x2e6 PR_Connect()
  7260 ms  0x2e6 fd:0x7f979a7d8370
  7260 ms  0x2e6 SSL_ImportFD()
  7260 ms  0x2e6 ret:0x7f979a7d8670
  7260 ms  0x2e6 SSL_AuthCertificateHook()
  7260 ms  0x2e6 fd:0x7f979a7d8670
  7260 ms  0x2e6 ret:0x0
  7260 ms  0x2e6 PR_Connect()
  7260 ms  0x2e6 fd:0x7f979a7d8670
  7286 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7286 ms  0x2e6 cx:0x7f97a0d258c8
  7287 ms     | 0x2e6 EC_ValidatePublicKey()
  7287 ms     | 0x2e6 ret:0x0
  7287 ms  0x2e6 ret:0x7f97893c6820::7f97893c6820  b0 55 50 89                                      .UP.
  7287 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7287 ms  0x2e6 cx:0x7f97a0d258c8
  7288 ms     | 0x2e6 EC_ValidatePublicKey()
  7294 ms     | 0x2e6 ret:0x0
  7294 ms  0x2e6 ret:0x7f97893d8020::7f97893d8020  e0 f7 40 89                                      ..@.
  7297 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7297 ms  0x2e6 cx:0x7f97a0d25728
  7298 ms     | 0x2e6 EC_ValidatePublicKey()
  7298 ms     | 0x2e6 ret:0x0
  7298 ms  0x2e6 ret:0x7f97893dd820::7f97893dd820  50 d6 5b 89                                      P.[.
  7298 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7298 ms  0x2e6 cx:0x7f97a0d25728
  7299 ms     | 0x2e6 EC_ValidatePublicKey()
  7300 ms     | 0x2e6 ret:0x0
  7301 ms  0x2e6 ret:0x7f97895c7820::7f97895c7820  d0 d8 5b 89                                      ..[.
  7315 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7315 ms  0x2e6 cx:0x7f97a0d25588
  7315 ms     | 0x2e6 EC_ValidatePublicKey()
  7315 ms     | 0x2e6 ret:0x0
  7315 ms  0x2e6 ret:0x7f97895cc020::7f97895cc020  10 da 5b 89                                      ..[.
  7315 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7315 ms  0x2e6 cx:0x7f97a0d25588
  7316 ms     | 0x2e6 EC_ValidatePublicKey()
  7318 ms     | 0x2e6 ret:0x0
  7318 ms  0x2e6 ret:0x7f97895ce020::7f97895ce020  90 dc 5b 89                                      ..[.
  7345 ms  SECKEY_ECParamsToKeySize()
  7345 ms  0x2e6 ret:0x100
  7345 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7345 ms  0x2e6 cx:0x7f97a0d258c8
  7346 ms     | 0x2e6 EC_ValidatePublicKey()
  7347 ms     | 0x2e6 ret:0x0
  7347 ms  0x2e6 ret:0x7f97895de820::7f97895de820  70 99 4a 9a                                      p.J.
  7347 ms  0x2e6 PK11_PubDeriveWithKDF()
  7347 ms  0x2e6 seckey:0x7f97895de820
  7347 ms     | 0x2e6 EC_ValidatePublicKey()
  7349 ms     | 0x2e6 ret:0x0
           /* TID 0x39b */
  7350 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7350 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  7362 ms  0x2e6 ret:0x7f979a470200
  7362 ms  0x2e6 PK11_DeriveWithFlags()
  7362 ms  0x2e6 basekey:0x7f979a470200
  7362 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7362 ms  0x2e6 ret:0x7f9789578d80
  7362 ms  0x2e6 PK11_Derive()
  7362 ms  0x2e6 basekey:0x7f9789578d80
  7362 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7362 ms  0x2e6 ret:0x7f979a444680
  7362 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7362 ms  0x2e6 privk:0x7f97895de820::7f97895de820  70 99 4a 9a                                      p.J.
  7362 ms  0x2e6 privk:0x7f97895de820::7f97895de820  e5 e5 e5 e5                                      ....
  7364 ms  0x2e6 PK11_Encrypt()
  7364 ms  0x2e6 symkey:0x7f97892aa400
  7364 ms  0x2e6 SSL_AuthCertificateComplete()
  7364 ms  0x2e6 fd:0x7f979a7d8670
  7364 ms  0x2e6 err:0x0
  7364 ms  0x2e6 PK11_Encrypt()
  7364 ms  0x2e6 symkey:0x7f97892aa400
  7365 ms  0x2e6 PK11_Derive()
  7365 ms  0x2e6 basekey:0x7f979a470200
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f978931da80
  7365 ms  0x2e6 PK11_PubDeriveWithKDF()
  7365 ms  0x2e6 seckey:0x7f97893dd820
  7365 ms     | 0x2e6 EC_ValidatePublicKey()
  7365 ms     | 0x2e6 ret:0x0
  7365 ms  0x2e6 ret:0x7f979a470200
  7365 ms  SECKEY_ECParamsToKeySize()
  7365 ms  0x2e6 ret:0xff
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f978931da80
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f9789418b80
  7365 ms  0x2e6 PK11_Derive()
  7365 ms  0x2e6 basekey:0x7f979a470200
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f9789418b00
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f9789418b00
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f978931da80
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f9789418b00
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f979a470200
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f9789418b00
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f9789418b80
  7365 ms  0x2e6 PK11_Derive()
  7365 ms  0x2e6 basekey:0x7f9789418e80
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f97892abe80
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f979a470200
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f9789418b00
  7365 ms  0x2e6 PK11_DeriveWithFlags()
  7365 ms  0x2e6 basekey:0x7f979a470200
  7365 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7365 ms  0x2e6 ret:0x7f9789418b80
  7366 ms  0x2e6 PK11_DeriveWithFlags()
  7366 ms  0x2e6 basekey:0x7f979a470200
  7367 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms  0x2e6 ret:0x7f9789418b80
  7367 ms  0x2e6 SSL_AuthCertificateComplete()
  7367 ms  0x2e6 fd:0x7f979a7d8370
  7367 ms  0x2e6 err:0x0
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f97892abe80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789418b80
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f97892abe80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789418e80
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f97892abe80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f97892aa500
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f978931da80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f97892aa780
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f978931da80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789578f80
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f9789418e80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789578f80
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f9789418e80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789578e80
  7367 ms     | 0x2e6 PK11_DeriveWithFlags()
  7367 ms     | 0x2e6 basekey:0x7f978931da80
  7367 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7367 ms     | 0x2e6 ret:0x7f9789418b00
  7367 ms     | 0x2e6 PK11_Encrypt()
  7367 ms     | 0x2e6 symkey:0x7f97892aa780
  7369 ms     | 0x2e6 PK11_DeriveWithFlags()
  7369 ms     | 0x2e6 basekey:0x7f9789418b80
  7369 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7370 ms     | 0x2e6 ret:0x7f9789418b00
  7370 ms     | 0x2e6 PK11_DeriveWithFlags()
  7370 ms     | 0x2e6 basekey:0x7f9789418b80
  7370 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7370 ms     | 0x2e6 ret:0x7f9789578e80
  7370 ms     | 0x2e6 PK11_DeriveWithFlags()
  7370 ms     | 0x2e6 basekey:0x7f97892abe80
  7370 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  7370 ms     | 0x2e6 ret:0x7f97892aa780
  7370 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  7370 ms     | 0x2e6 privk:0x7f97895c7820::7f97895c7820  d0 d8 5b 89                                      ..[.
  7371 ms     | 0x2e6 privk:0x7f97895c7820::7f97895c7820  e5 e5 e5 e5                                      ....
  7371 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  7371 ms     | 0x2e6 privk:0x7f97893dd820::7f97893dd820  50 d6 5b 89                                      P.[.
  7371 ms     | 0x2e6 privk:0x7f97893dd820::7f97893dd820  e5 e5 e5 e5                                      ....
  7371 ms  0x2e6 PK11_Encrypt()
  7371 ms  0x2e6 symkey:0x7f9789418b00
  7371 ms  0x2e6 PK11_Encrypt()
  7371 ms  0x2e6 symkey:0x7f9789418b00
  7373 ms  0x2e6 PK11_Derive()
  7373 ms  0x2e6 basekey:0x7f978931da80
  7373 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7374 ms  0x2e6 ret:0x7f979a470200
  7374 ms  0x2e6 PK11_Encrypt()
  7374 ms  0x2e6 symkey:0x7f9789417d00
  7374 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7374 ms  0x2e6 privk:0x7f97895ce020::7f97895ce020  90 dc 5b 89                                      ..[.
  7375 ms  0x2e6 privk:0x7f97895ce020::7f97895ce020  e5 e5 e5 e5                                      ....
  7375 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7375 ms  0x2e6 privk:0x7f97895cc020::7f97895cc020  10 da 5b 89                                      ..[.
  7375 ms  0x2e6 privk:0x7f97895cc020::7f97895cc020  e5 e5 e5 e5                                      ....
  7377 ms  0x2e6 PK11_Encrypt()
  7377 ms  0x2e6 symkey:0x7f9789417d00
  7405 ms  0x2e6 PK11_DeriveWithFlags()
  7405 ms  0x2e6 basekey:0x7f97892aa780
  7405 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7405 ms  0x2e6 ret:0x7f97892abe80
  7405 ms  0x2e6 PK11_DeriveWithFlags()
  7405 ms  0x2e6 basekey:0x7f97892aa780
  7405 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7405 ms  0x2e6 ret:0x7f97892abe80
  7405 ms  0x2e6 PK11_Encrypt()
  7405 ms  0x2e6 symkey:0x7f9789418b00
  7421 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7421 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  e0 f7 40 89                                      ..@.
  7421 ms  0x2e6 privk:0x7f97893d8020::7f97893d8020  e5 e5 e5 e5                                      ....
  7422 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7422 ms  0x2e6 privk:0x7f97893c6820::7f97893c6820  b0 55 50 89                                      .UP.
  7422 ms  0x2e6 privk:0x7f97893c6820::7f97893c6820  e5 e5 e5 e5                                      ....
           /* TID 0x2ee */
  7423 ms  0x2ee PR_Close()
  7423 ms  0x2ee fd:0x7f97895bf370
           /* TID 0x2e6 */
  7437 ms  0x2e6 PK11_Encrypt()
  7437 ms  0x2e6 symkey:0x7f9789577e00
  7453 ms  0x2e6 PK11_Encrypt()
  7453 ms  0x2e6 symkey:0x7f9789418b00
           /* TID 0x2ee */
  7454 ms  0x2ee PR_Close()
  7454 ms  0x2ee fd:0x7f979a7d81c0
           /* TID 0x2e6 */
  7489 ms  0x2e6 SSL_ImportFD()
  7489 ms  0x2e6 ret:0x7f979bd46880
  7489 ms  0x2e6 SSL_AuthCertificateHook()
  7489 ms  0x2e6 fd:0x7f979bd46880
  7489 ms  0x2e6 ret:0x0
  7489 ms  0x2e6 PR_Connect()
  7489 ms  0x2e6 fd:0x7f979bd46880
           /* TID 0x2ee */
  7498 ms  0x2ee PR_Close()
  7498 ms  0x2ee fd:0x7f979a4b12b0
           /* TID 0x2e6 */
  7516 ms  0x2e6 PR_Close()
  7516 ms  0x2e6 fd:0x7f979a4b1b50
  7516 ms     | 0x2e6 PK11_Encrypt()
  7516 ms     | 0x2e6 symkey:0x7f9789417d00
           /* TID 0x2ee */
  7517 ms  0x2ee PR_Close()
  7517 ms  0x2ee fd:0x7f97895bf790
           /* TID 0x2e6 */
  7523 ms  0x2e6 PK11_Encrypt()
  7523 ms  0x2e6 symkey:0x7f979a470300
  7544 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7544 ms  0x2e6 cx:0x7f97a0d27608
  7545 ms     | 0x2e6 EC_ValidatePublicKey()
  7545 ms     | 0x2e6 ret:0x0
  7545 ms  0x2e6 ret:0x7f97893de020::7f97893de020  10 da 5b 89                                      ..[.
  7545 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7545 ms  0x2e6 cx:0x7f97a0d27608
  7545 ms     | 0x2e6 EC_ValidatePublicKey()
  7547 ms     | 0x2e6 ret:0x0
  7547 ms  0x2e6 ret:0x7f97895c9820::7f97895c9820  e0 92 4a 9a                                      ..J.
  7570 ms  0x2e6 SSL_ImportFD()
  7570 ms  0x2e6 ret:0x7f979a5041c0
  7570 ms  0x2e6 SSL_AuthCertificateHook()
  7570 ms  0x2e6 fd:0x7f979a5041c0
  7570 ms  0x2e6 ret:0x0
  7571 ms  0x2e6 PK11_Encrypt()
  7571 ms  0x2e6 symkey:0x7f9789577e00
  7571 ms  0x2e6 PR_Connect()
  7571 ms  0x2e6 fd:0x7f979a5041c0
  7578 ms  0x2e6 PK11_Encrypt()
  7578 ms  0x2e6 symkey:0x7f979a444700
           /* TID 0x2ee */
  7590 ms  0x2ee PR_Close()
  7590 ms  0x2ee fd:0x7f978948d5e0
           /* TID 0x2e6 */
  7602 ms  0x2e6 PK11_Derive()
  7602 ms  0x2e6 basekey:0x7f978931da80
  7602 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7602 ms  0x2e6 ret:0x7f979a470200
  7602 ms  0x2e6 PK11_Encrypt()
  7602 ms  0x2e6 symkey:0x7f9789418000
  7603 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7603 ms  0x2e6 privk:0x7f97895c9820::7f97895c9820  e0 92 4a 9a                                      ..J.
  7603 ms  0x2e6 privk:0x7f97895c9820::7f97895c9820  e5 e5 e5 e5                                      ....
  7603 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7603 ms  0x2e6 privk:0x7f97893de020::7f97893de020  10 da 5b 89                                      ..[.
  7603 ms  0x2e6 privk:0x7f97893de020::7f97893de020  e5 e5 e5 e5                                      ....
  7604 ms  0x2e6 PK11_Encrypt()
  7604 ms  0x2e6 symkey:0x7f9789418000
  7615 ms  0x2e6 PK11_Encrypt()
  7615 ms  0x2e6 symkey:0x7f9789577e00
  7616 ms  0x2e6 PK11_Encrypt()
  7616 ms  0x2e6 symkey:0x7f9789577e00
  7617 ms  0x2e6 PK11_Encrypt()
  7617 ms  0x2e6 symkey:0x7f9789578280
  7625 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7625 ms  0x2e6 cx:0x7f97a0d27948
  7626 ms     | 0x2e6 EC_ValidatePublicKey()
  7626 ms     | 0x2e6 ret:0x0
  7626 ms  0x2e6 ret:0x7f97895cd820::7f97895cd820  e0 92 4a 9a                                      ..J.
  7626 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7626 ms  0x2e6 cx:0x7f97a0d27948
  7627 ms     | 0x2e6 EC_ValidatePublicKey()
  7628 ms     | 0x2e6 ret:0x0
  7628 ms  0x2e6 ret:0x7f97895de020::7f97895de020  c0 94 4a 9a                                      ..J.
           /* TID 0x2ee */
  7632 ms  0x2ee PR_Close()
  7632 ms  0x2ee fd:0x7f979a4b14c0
           /* TID 0x2e6 */
  7639 ms  0x2e6 PK11_Encrypt()
  7639 ms  0x2e6 symkey:0x7f979a444700
  7641 ms  0x2e6 PK11_Encrypt()
  7641 ms  0x2e6 symkey:0x7f979a444700
  7641 ms  0x2e6 PK11_Encrypt()
  7641 ms  0x2e6 symkey:0x7f979a444700
  7642 ms  0x2e6 PK11_Encrypt()
  7642 ms  0x2e6 symkey:0x7f979a444700
  7642 ms  0x2e6 PK11_Encrypt()
  7642 ms  0x2e6 symkey:0x7f979a444700
  7642 ms  0x2e6 PK11_Encrypt()
  7642 ms  0x2e6 symkey:0x7f979a444700
  7643 ms  0x2e6 PK11_Encrypt()
  7643 ms  0x2e6 symkey:0x7f979a444700
  7643 ms  0x2e6 PK11_Encrypt()
  7643 ms  0x2e6 symkey:0x7f979a444700
  7643 ms  0x2e6 PK11_Encrypt()
  7643 ms  0x2e6 symkey:0x7f979a444700
  7644 ms  0x2e6 PK11_Encrypt()
  7644 ms  0x2e6 symkey:0x7f979a444700
  7644 ms  0x2e6 PK11_Encrypt()
  7644 ms  0x2e6 symkey:0x7f979a444700
  7644 ms  0x2e6 PK11_Encrypt()
  7644 ms  0x2e6 symkey:0x7f979a444700
  7644 ms  0x2e6 PK11_Encrypt()
  7644 ms  0x2e6 symkey:0x7f979a444700
  7645 ms  0x2e6 PK11_Encrypt()
  7645 ms  0x2e6 symkey:0x7f979a444700
  7645 ms  0x2e6 PK11_Encrypt()
  7645 ms  0x2e6 symkey:0x7f979a444700
  7645 ms  0x2e6 PK11_Encrypt()
  7645 ms  0x2e6 symkey:0x7f979a444700
  7684 ms  SECKEY_ECParamsToKeySize()
  7684 ms  0x2e6 ret:0x100
  7684 ms  0x2e6 SECKEY_CreateECPrivateKey()
  7684 ms  0x2e6 cx:0x7f97a0d27948
  7685 ms     | 0x2e6 EC_ValidatePublicKey()
  7686 ms     | 0x2e6 ret:0x0
  7687 ms  0x2e6 ret:0x7f979a424020::7f979a424020  70 99 4a 9a                                      p.J.
  7687 ms  0x2e6 PK11_PubDeriveWithKDF()
  7687 ms  0x2e6 seckey:0x7f979a424020
  7687 ms     | 0x2e6 EC_ValidatePublicKey()
  7688 ms     | 0x2e6 ret:0x0
  7689 ms  0x2e6 ret:0x7f97892abe80
  7689 ms  0x2e6 PK11_DeriveWithFlags()
  7689 ms  0x2e6 basekey:0x7f97892abe80
  7689 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7690 ms  0x2e6 ret:0x7f9789578e80
  7690 ms  0x2e6 PK11_Derive()
  7690 ms  0x2e6 basekey:0x7f9789578e80
  7690 ms     | 0x2e6 PK11_DeriveWithTemplate()
  7690 ms  0x2e6 ret:0x7f9789578c80
  7690 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7690 ms  0x2e6 privk:0x7f979a424020::7f979a424020  70 99 4a 9a                                      p.J.
  7690 ms  0x2e6 privk:0x7f979a424020::7f979a424020  e5 e5 e5 e5                                      ....
  7690 ms  0x2e6 PK11_Encrypt()
  7690 ms  0x2e6 symkey:0x7f9789418c00
           /* TID 0x35b */
  7691 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7691 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  7696 ms  0x2e6 SSL_AuthCertificateComplete()
  7696 ms  0x2e6 fd:0x7f979a5041c0
  7696 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  7699 ms  0x2ee PR_Close()
  7699 ms  0x2ee fd:0x7f979a4b18b0
  7702 ms  0x2ee PR_Close()
  7702 ms  0x2ee fd:0x7f979a4b18b0
           /* TID 0x2e6 */
  7702 ms  0x2e6 PK11_Encrypt()
  7702 ms  0x2e6 symkey:0x7f9789418c00
  7745 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7745 ms  0x2e6 privk:0x7f97895de020::7f97895de020  c0 94 4a 9a                                      ..J.
  7745 ms  0x2e6 privk:0x7f97895de020::7f97895de020  e5 e5 e5 e5                                      ....
  7745 ms  0x2e6 SECKEY_DestroyPrivateKey()
  7745 ms  0x2e6 privk:0x7f97895cd820::7f97895cd820  e0 92 4a 9a                                      ..J.
  7745 ms  0x2e6 privk:0x7f97895cd820::7f97895cd820  e5 e5 e5 e5                                      ....
  7745 ms  0x2e6 PR_Close()
  7745 ms  0x2e6 fd:0x7f979a5041c0
  7745 ms     | 0x2e6 PK11_Encrypt()
  7745 ms     | 0x2e6 symkey:0x7f9789418c00
  7756 ms  0x2e6 PR_Close()
  7756 ms  0x2e6 fd:0x7f979bd46880
  7756 ms     | 0x2e6 PK11_Encrypt()
  7756 ms     | 0x2e6 symkey:0x7f9789418000
           /* TID 0x2ee */
  7844 ms  0x2ee PR_Close()
  7844 ms  0x2ee fd:0x7f978948d070
           /* TID 0x2e6 */
  7844 ms  0x2e6 PK11_Encrypt()
  7844 ms  0x2e6 symkey:0x7f9789418b00
  7966 ms  0x2e6 SSL_ImportFD()
  7966 ms  0x2e6 ret:0x7f979a8efac0
  7966 ms  0x2e6 SSL_AuthCertificateHook()
  7966 ms  0x2e6 fd:0x7f979a8efac0
  7966 ms  0x2e6 ret:0x0
  7966 ms  0x2e6 PR_Connect()
  7966 ms  0x2e6 fd:0x7f979a8efac0
  7997 ms  0x2e6 PK11_Encrypt()
  7997 ms  0x2e6 symkey:0x7f9789418b00
           /* TID 0x2ee */
  7998 ms  0x2ee PR_Close()
  7998 ms  0x2ee fd:0x7f979a4b1850
           /* TID 0x2e6 */
  7998 ms  0x2e6 SSL_ImportFD()
  7998 ms  0x2e6 ret:0x7f979a4b1850
  7998 ms  0x2e6 SSL_AuthCertificateHook()
  7998 ms  0x2e6 fd:0x7f979a4b1850
  7998 ms  0x2e6 ret:0x0
  7998 ms  0x2e6 PR_Connect()
  7998 ms  0x2e6 fd:0x7f979a4b1850
  8005 ms  0x2e6 PK11_Encrypt()
  8005 ms  0x2e6 symkey:0x7f9789577e00
  8010 ms  0x2e6 PK11_Encrypt()
  8010 ms  0x2e6 symkey:0x7f9789577e00
  8011 ms  0x2e6 PK11_Encrypt()
  8011 ms  0x2e6 symkey:0x7f9789577b00
  8021 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8021 ms  0x2e6 cx:0x7f97a0d27948
  8021 ms     | 0x2e6 EC_ValidatePublicKey()
  8021 ms     | 0x2e6 ret:0x0
  8021 ms  0x2e6 ret:0x7f97895dd820::7f97895dd820  30 98 4a 9a                                      0.J.
  8021 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8021 ms  0x2e6 cx:0x7f97a0d27948
  8022 ms     | 0x2e6 EC_ValidatePublicKey()
  8024 ms     | 0x2e6 ret:0x0
  8024 ms  0x2e6 ret:0x7f97895e0020::7f97895e0020  c0 94 4a 9a                                      ..J.
  8053 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8053 ms  0x2e6 cx:0x7f97a0d27c88
  8054 ms     | 0x2e6 EC_ValidatePublicKey()
  8054 ms     | 0x2e6 ret:0x0
  8054 ms  0x2e6 ret:0x7f979a431820::7f979a431820  a0 a1 4a 9a                                      ..J.
  8054 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8054 ms  0x2e6 cx:0x7f97a0d27c88
  8054 ms     | 0x2e6 EC_ValidatePublicKey()
  8056 ms     | 0x2e6 ret:0x0
  8056 ms  0x2e6 ret:0x7f979a437820::7f979a437820  20 a4 4a 9a                                       .J.
           /* TID 0x2ee */
  8063 ms  0x2ee PR_Close()
  8063 ms  0x2ee fd:0x7f979a4b12b0
  8068 ms  0x2ee PR_Close()
  8068 ms  0x2ee fd:0x7f979a4b12b0
           /* TID 0x2e6 */
  8079 ms  0x2e6 PK11_Derive()
  8079 ms  0x2e6 basekey:0x7f978931da80
  8079 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8079 ms  0x2e6 ret:0x7f979a470200
  8079 ms  0x2e6 PK11_Encrypt()
  8079 ms  0x2e6 symkey:0x7f9789418800
  8080 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8080 ms  0x2e6 privk:0x7f97895e0020::7f97895e0020  c0 94 4a 9a                                      ..J.
  8080 ms  0x2e6 privk:0x7f97895e0020::7f97895e0020  e5 e5 e5 e5                                      ....
  8080 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8080 ms  0x2e6 privk:0x7f97895dd820::7f97895dd820  30 98 4a 9a                                      0.J.
  8080 ms  0x2e6 privk:0x7f97895dd820::7f97895dd820  e5 e5 e5 e5                                      ....
  8080 ms  0x2e6 PK11_Encrypt()
  8080 ms  0x2e6 symkey:0x7f9789418800
  8089 ms  0x2e6 PK11_Encrypt()
  8089 ms  0x2e6 symkey:0x7f9789577b00
  8091 ms  0x2e6 PK11_Encrypt()
  8091 ms  0x2e6 symkey:0x7f9789578280
  8092 ms  0x2e6 PK11_Encrypt()
  8092 ms  0x2e6 symkey:0x7f9789577b00
  8093 ms  0x2e6 PK11_Encrypt()
  8093 ms  0x2e6 symkey:0x7f9789577e00
  8095 ms  0x2e6 PK11_Encrypt()
  8095 ms  0x2e6 symkey:0x7f9789578280
  8096 ms  0x2e6 PK11_Encrypt()
  8096 ms  0x2e6 symkey:0x7f9789578280
  8113 ms  SECKEY_ECParamsToKeySize()
  8113 ms  0x2e6 ret:0x100
  8113 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8113 ms  0x2e6 cx:0x7f97a0d27c88
  8113 ms     | 0x2e6 EC_ValidatePublicKey()
  8115 ms     | 0x2e6 ret:0x0
  8115 ms  0x2e6 ret:0x7f979a43d020::7f979a43d020  00 ab 4a 9a                                      ..J.
  8115 ms  0x2e6 PK11_PubDeriveWithKDF()
  8115 ms  0x2e6 seckey:0x7f979a43d020
  8115 ms     | 0x2e6 EC_ValidatePublicKey()
  8116 ms     | 0x2e6 ret:0x0
  8119 ms  0x2e6 ret:0x7f9789578c80
  8119 ms  0x2e6 PK11_DeriveWithFlags()
  8119 ms  0x2e6 basekey:0x7f9789578c80
  8119 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8119 ms  0x2e6 ret:0x7f9789578e80
  8119 ms  0x2e6 PK11_Derive()
  8119 ms  0x2e6 basekey:0x7f9789578e80
  8119 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8119 ms  0x2e6 ret:0x7f97892abe80
  8119 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8119 ms  0x2e6 privk:0x7f979a43d020::7f979a43d020  00 ab 4a 9a                                      ..J.
  8119 ms  0x2e6 privk:0x7f979a43d020::7f979a43d020  e5 e5 e5 e5                                      ....
  8119 ms  0x2e6 PK11_Encrypt()
  8119 ms  0x2e6 symkey:0x7f9789418c80
  8119 ms  0x2e6 SSL_AuthCertificateComplete()
  8119 ms  0x2e6 fd:0x7f979a4b1850
  8119 ms  0x2e6 err:0x0
           /* TID 0x2ee */
  8121 ms  0x2ee PR_Close()
  8121 ms  0x2ee fd:0x7f979bd46070
           /* TID 0x2e6 */
  8134 ms  0x2e6 PK11_Encrypt()
  8134 ms  0x2e6 symkey:0x7f9789418c80
  8135 ms  0x2e6 PK11_Encrypt()
  8135 ms  0x2e6 symkey:0x7f9789418c80
  8142 ms  0x2e6 PK11_Encrypt()
  8142 ms  0x2e6 symkey:0x7f9789577e00
  8144 ms  0x2e6 PK11_Encrypt()
  8144 ms  0x2e6 symkey:0x7f979a444700
           /* TID 0x2ee */
  8145 ms  0x2ee PR_Close()
  8145 ms  0x2ee fd:0x7f979a4b1ca0
  8149 ms  0x2ee PR_Close()
  8149 ms  0x2ee fd:0x7f979a4b1ca0
           /* TID 0x2e6 */
  8175 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8175 ms  0x2e6 privk:0x7f979a437820::7f979a437820  20 a4 4a 9a                                       .J.
  8175 ms  0x2e6 privk:0x7f979a437820::7f979a437820  e5 e5 e5 e5                                      ....
  8175 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8175 ms  0x2e6 privk:0x7f979a431820::7f979a431820  a0 a1 4a 9a                                      ..J.
  8175 ms  0x2e6 privk:0x7f979a431820::7f979a431820  e5 e5 e5 e5                                      ....
           /* TID 0x2ee */
  8178 ms  0x2ee PR_Close()
  8178 ms  0x2ee fd:0x7f979a737e20
  8202 ms  0x2ee PR_Close()
  8202 ms  0x2ee fd:0x7f979a5041c0
  8205 ms  0x2ee PR_Close()
  8205 ms  0x2ee fd:0x7f979a5041c0
  8209 ms  0x2ee PR_Close()
  8209 ms  0x2ee fd:0x7f979a5041c0
           /* TID 0x2e6 */
  8247 ms  0x2e6 PR_Close()
  8247 ms  0x2e6 fd:0x7f979a4b1850
  8247 ms     | 0x2e6 PK11_Encrypt()
  8247 ms     | 0x2e6 symkey:0x7f9789418c80
  8259 ms  0x2e6 PR_Close()
  8259 ms  0x2e6 fd:0x7f979a8efac0
  8259 ms     | 0x2e6 PK11_Encrypt()
  8259 ms     | 0x2e6 symkey:0x7f9789418800
           /* TID 0x2ee */
  8299 ms  0x2ee PR_Close()
  8299 ms  0x2ee fd:0x7f97895bfac0
           /* TID 0x2e6 */
  8299 ms  0x2e6 PK11_Encrypt()
  8299 ms  0x2e6 symkey:0x7f9789418b00
  8300 ms  0x2e6 SSL_ImportFD()
  8300 ms  0x2e6 ret:0x7f979a7d8a60
  8300 ms  0x2e6 SSL_AuthCertificateHook()
  8300 ms  0x2e6 fd:0x7f979a7d8a60
  8300 ms  0x2e6 ret:0x0
  8300 ms  0x2e6 PR_Connect()
  8300 ms  0x2e6 fd:0x7f979a7d8a60
  8337 ms  0x2e6 PK11_Encrypt()
  8337 ms  0x2e6 symkey:0x7f9789418b00
  8347 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8347 ms  0x2e6 cx:0x7f97a0d28648
  8348 ms     | 0x2e6 EC_ValidatePublicKey()
  8348 ms     | 0x2e6 ret:0x0
  8348 ms  0x2e6 ret:0x7f97895de020::7f97895de020  b0 95 4a 9a                                      ..J.
  8348 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8348 ms  0x2e6 cx:0x7f97a0d28648
  8349 ms     | 0x2e6 EC_ValidatePublicKey()
  8350 ms     | 0x2e6 ret:0x0
  8350 ms  0x2e6 ret:0x7f979a425820::7f979a425820  40 9c 4a 9a                                      @.J.
  8398 ms  0x2e6 PK11_Derive()
  8398 ms  0x2e6 basekey:0x7f979a470200
  8398 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8398 ms  0x2e6 ret:0x7f978931da80
  8398 ms  0x2e6 PK11_PubDeriveWithKDF()
  8398 ms  0x2e6 seckey:0x7f97895de020
  8398 ms     | 0x2e6 EC_ValidatePublicKey()
  8398 ms     | 0x2e6 ret:0x0
  8398 ms  0x2e6 ret:0x7f979a470200
  8398 ms  SECKEY_ECParamsToKeySize()
  8398 ms  0x2e6 ret:0xff
  8398 ms  0x2e6 PK11_DeriveWithFlags()
  8398 ms  0x2e6 basekey:0x7f978931da80
  8398 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8398 ms  0x2e6 ret:0x7f97892abe80
  8398 ms  0x2e6 PK11_Derive()
  8398 ms  0x2e6 basekey:0x7f979a470200
  8398 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8398 ms  0x2e6 ret:0x7f9789578e80
  8398 ms  0x2e6 PK11_DeriveWithFlags()
  8398 ms  0x2e6 basekey:0x7f9789578e80
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f978931da80
  8399 ms  0x2e6 PK11_DeriveWithFlags()
  8399 ms  0x2e6 basekey:0x7f9789578e80
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f979a470200
  8399 ms  0x2e6 PK11_DeriveWithFlags()
  8399 ms  0x2e6 basekey:0x7f9789578e80
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f97892abe80
  8399 ms  0x2e6 PK11_Derive()
  8399 ms  0x2e6 basekey:0x7f9789578c80
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f9789578b80
  8399 ms  0x2e6 PK11_DeriveWithFlags()
  8399 ms  0x2e6 basekey:0x7f979a470200
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f9789578e80
  8399 ms  0x2e6 PK11_DeriveWithFlags()
  8399 ms  0x2e6 basekey:0x7f979a470200
  8399 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8399 ms  0x2e6 ret:0x7f97892abe80
  8400 ms  SECKEY_ECParamsToKeySize()
  8400 ms  0x2e6 ret:0x100
  8400 ms  SECKEY_ECParamsToBasePointOrderLen()
  8400 ms  0x2e6 ret:0x100
  8400 ms  SECKEY_ECParamsToBasePointOrderLen()
  8400 ms  0x2e6 ret:0x100
  8400 ms  0x2e6 EC_ValidatePublicKey()
  8401 ms  0x2e6 ret:0x0
  8414 ms  0x2e6 PK11_DeriveWithFlags()
  8414 ms  0x2e6 basekey:0x7f979a470200
  8414 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8414 ms  0x2e6 ret:0x7f97892abe80
           /* TID 0x2ee */
  8557 ms  0x2ee PR_Close()
  8557 ms  0x2ee fd:0x7f979a4b1b50
           /* TID 0x39c */
  8558 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8558 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  8558 ms  0x2e6 SSL_AuthCertificateComplete()
  8558 ms  0x2e6 fd:0x7f979a7d8a60
  8558 ms  0x2e6 err:0x0
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f9789578b80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f97892abe80
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f9789578b80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f9789578c80
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f9789578b80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f9789578700
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f978931da80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f9789578600
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f978931da80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f97892ab100
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f9789578c80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f97892ab100
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f9789578c80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f97892aac00
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f978931da80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f9789578e80
  8558 ms     | 0x2e6 PK11_Encrypt()
  8558 ms     | 0x2e6 symkey:0x7f9789578600
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f97892abe80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f9789578e80
  8558 ms     | 0x2e6 PK11_DeriveWithFlags()
  8558 ms     | 0x2e6 basekey:0x7f97892abe80
  8558 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8558 ms     | 0x2e6 ret:0x7f97892aac00
  8559 ms     | 0x2e6 PK11_DeriveWithFlags()
  8559 ms     | 0x2e6 basekey:0x7f9789578b80
  8559 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  8559 ms     | 0x2e6 ret:0x7f9789578600
  8559 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  8559 ms     | 0x2e6 privk:0x7f979a425820::7f979a425820  40 9c 4a 9a                                      @.J.
  8559 ms     | 0x2e6 privk:0x7f979a425820::7f979a425820  e5 e5 e5 e5                                      ....
  8559 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  8559 ms     | 0x2e6 privk:0x7f97895de020::7f97895de020  b0 95 4a 9a                                      ..J.
  8559 ms     | 0x2e6 privk:0x7f97895de020::7f97895de020  e5 e5 e5 e5                                      ....
  8559 ms  0x2e6 PK11_Encrypt()
  8559 ms  0x2e6 symkey:0x7f9789578e80
  8559 ms  0x2e6 PK11_Encrypt()
  8559 ms  0x2e6 symkey:0x7f9789578e80
  8562 ms  0x2e6 PK11_Encrypt()
  8562 ms  0x2e6 symkey:0x7f9789577e00
  8567 ms  0x2e6 SSL_ImportFD()
  8567 ms  0x2e6 ret:0x7f979bdfd190
  8567 ms  0x2e6 SSL_AuthCertificateHook()
  8567 ms  0x2e6 fd:0x7f979bdfd190
  8567 ms  0x2e6 ret:0x0
  8567 ms  0x2e6 PR_Connect()
  8567 ms  0x2e6 fd:0x7f979bdfd190
  8594 ms  0x2e6 PK11_Encrypt()
  8594 ms  0x2e6 symkey:0x7f979a444700
  8606 ms  0x2e6 PK11_DeriveWithFlags()
  8606 ms  0x2e6 basekey:0x7f9789578600
  8606 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8606 ms  0x2e6 ret:0x7f979a470200
  8606 ms  0x2e6 PK11_DeriveWithFlags()
  8606 ms  0x2e6 basekey:0x7f9789578600
  8606 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8606 ms  0x2e6 ret:0x7f979a470200
  8606 ms  0x2e6 PK11_Encrypt()
  8606 ms  0x2e6 symkey:0x7f9789578e80
  8622 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8622 ms  0x2e6 cx:0x7f97a0d28988
  8622 ms     | 0x2e6 EC_ValidatePublicKey()
  8622 ms     | 0x2e6 ret:0x0
  8622 ms  0x2e6 ret:0x7f979a43c820::7f979a43c820  40 9c 4a 9a                                      @.J.
  8623 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8623 ms  0x2e6 cx:0x7f97a0d28988
  8623 ms     | 0x2e6 EC_ValidatePublicKey()
  8625 ms     | 0x2e6 ret:0x0
  8625 ms  0x2e6 ret:0x7f979a716820::7f979a716820  20 a4 4a 9a                                       .J.
           /* TID 0x2ee */
  8630 ms  0x2ee PR_Close()
  8630 ms  0x2ee fd:0x7f979b9885b0
           /* TID 0x2e6 */
  8651 ms  0x2e6 SSL_ImportFD()
  8651 ms  0x2e6 ret:0x7f979bdfd2e0
  8651 ms  0x2e6 SSL_AuthCertificateHook()
  8651 ms  0x2e6 fd:0x7f979bdfd2e0
  8651 ms  0x2e6 ret:0x0
  8651 ms  0x2e6 PR_Connect()
  8651 ms  0x2e6 fd:0x7f979bdfd2e0
  8654 ms  0x2e6 PK11_Encrypt()
  8654 ms  0x2e6 symkey:0x7f9789578e80
  8682 ms  0x2e6 PK11_Derive()
  8682 ms  0x2e6 basekey:0x7f978931da80
  8682 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8682 ms  0x2e6 ret:0x7f979a470200
  8682 ms  0x2e6 PK11_Encrypt()
  8682 ms  0x2e6 symkey:0x7f9789418780
  8683 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8683 ms  0x2e6 privk:0x7f979a716820::7f979a716820  20 a4 4a 9a                                       .J.
  8683 ms  0x2e6 privk:0x7f979a716820::7f979a716820  e5 e5 e5 e5                                      ....
  8683 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8683 ms  0x2e6 privk:0x7f979a43c820::7f979a43c820  40 9c 4a 9a                                      @.J.
  8683 ms  0x2e6 privk:0x7f979a43c820::7f979a43c820  e5 e5 e5 e5                                      ....
  8683 ms  0x2e6 PK11_Encrypt()
  8683 ms  0x2e6 symkey:0x7f9789418780
  8706 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8706 ms  0x2e6 cx:0x7f97a0d287e8
  8706 ms     | 0x2e6 EC_ValidatePublicKey()
  8706 ms     | 0x2e6 ret:0x0
  8706 ms  0x2e6 ret:0x7f979a43b020::7f979a43b020  30 a3 4a 9a                                      0.J.
  8706 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8706 ms  0x2e6 cx:0x7f97a0d287e8
  8707 ms     | 0x2e6 EC_ValidatePublicKey()
  8708 ms     | 0x2e6 ret:0x0
  8708 ms  0x2e6 ret:0x7f979a43e020::7f979a43e020  20 ae 4a 9a                                       .J.
  8765 ms  SECKEY_ECParamsToKeySize()
  8765 ms  0x2e6 ret:0x100
  8765 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8765 ms  0x2e6 cx:0x7f97a0d287e8
  8766 ms     | 0x2e6 EC_ValidatePublicKey()
  8768 ms     | 0x2e6 ret:0x0
  8768 ms  0x2e6 ret:0x7f979a71b820::7f979a71b820  d0 a8 50 9a                                      ..P.
  8768 ms  0x2e6 PK11_PubDeriveWithKDF()
  8768 ms  0x2e6 seckey:0x7f979a71b820
  8768 ms     | 0x2e6 EC_ValidatePublicKey()
  8769 ms     | 0x2e6 ret:0x0
  8770 ms  0x2e6 ret:0x7f9789578b80
  8771 ms  0x2e6 PK11_DeriveWithFlags()
  8771 ms  0x2e6 basekey:0x7f9789578b80
  8771 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8771 ms  0x2e6 ret:0x7f97892aac00
  8771 ms  0x2e6 PK11_Derive()
  8771 ms  0x2e6 basekey:0x7f97892aac00
  8771 ms     | 0x2e6 PK11_DeriveWithTemplate()
  8771 ms  0x2e6 ret:0x7f9789578780
  8771 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8771 ms  0x2e6 privk:0x7f979a71b820::7f979a71b820  d0 a8 50 9a                                      ..P.
  8771 ms  0x2e6 privk:0x7f979a71b820::7f979a71b820  e5 e5 e5 e5                                      ....
  8771 ms  0x2e6 PK11_Encrypt()
  8771 ms  0x2e6 symkey:0x7f9789418d80
           /* TID 0x35b */
  8772 ms  0x35b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8772 ms  0x35b ret:0x0
           /* TID 0x2e6 */
  8779 ms  0x2e6 SSL_AuthCertificateComplete()
  8779 ms  0x2e6 fd:0x7f979bdfd2e0
  8779 ms  0x2e6 err:0x0
  8779 ms  0x2e6 PK11_Encrypt()
  8779 ms  0x2e6 symkey:0x7f9789418d80
  8785 ms  0x2e6 PK11_Encrypt()
  8785 ms  0x2e6 symkey:0x7f979a444700
  8826 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8826 ms  0x2e6 privk:0x7f979a43e020::7f979a43e020  20 ae 4a 9a                                       .J.
  8826 ms  0x2e6 privk:0x7f979a43e020::7f979a43e020  e5 e5 e5 e5                                      ....
  8826 ms  0x2e6 SECKEY_DestroyPrivateKey()
  8826 ms  0x2e6 privk:0x7f979a43b020::7f979a43b020  30 a3 4a 9a                                      0.J.
  8826 ms  0x2e6 privk:0x7f979a43b020::7f979a43b020  e5 e5 e5 e5                                      ....
  8838 ms  0x2e6 PR_Close()
  8838 ms  0x2e6 fd:0x7f979bdfd190
  8838 ms     | 0x2e6 PK11_Encrypt()
  8838 ms     | 0x2e6 symkey:0x7f9789418780
  8840 ms  0x2e6 PK11_Encrypt()
  8840 ms  0x2e6 symkey:0x7f979a444200
  8883 ms  0x2e6 PK11_Encrypt()
  8883 ms  0x2e6 symkey:0x7f9789418d80
  8883 ms  0x2e6 PK11_Encrypt()
  8883 ms  0x2e6 symkey:0x7f9789418d80
  8899 ms  0x2e6 PK11_Encrypt()
  8899 ms  0x2e6 symkey:0x7f979a444200
  8906 ms  0x2e6 SSL_ImportFD()
  8906 ms  0x2e6 ret:0x7f979bdfd340
  8906 ms  0x2e6 SSL_AuthCertificateHook()
  8906 ms  0x2e6 fd:0x7f979bdfd340
  8906 ms  0x2e6 ret:0x0
  8906 ms  0x2e6 PR_Connect()
  8906 ms  0x2e6 fd:0x7f979bdfd340
  8944 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8944 ms  0x2e6 cx:0x7f97a0d28e68
  8946 ms     | 0x2e6 EC_ValidatePublicKey()
  8946 ms     | 0x2e6 ret:0x0
  8946 ms  0x2e6 ret:0x7f979a439020::7f979a439020  30 ad 4a 9a                                      0.J.
  8947 ms  0x2e6 SECKEY_CreateECPrivateKey()
  8947 ms  0x2e6 cx:0x7f97a0d28e68
  8950 ms     | 0x2e6 EC_ValidatePublicKey()
  8954 ms     | 0x2e6 ret:0x0
  8954 ms  0x2e6 ret:0x7f979a43d020::7f979a43d020  60 af 4a 9a                                      `.J.
  8962 ms  0x2e6 PK11_Encrypt()
  8962 ms  0x2e6 symkey:0x7f9789418d80
  8962 ms  0x2e6 PK11_Encrypt()
  8962 ms  0x2e6 symkey:0x7f9789418d80
  8963 ms  0x2e6 PK11_Encrypt()
  8963 ms  0x2e6 symkey:0x7f9789418d80
  8964 ms  0x2e6 PK11_Encrypt()
  8964 ms  0x2e6 symkey:0x7f979a444700
  8978 ms  0x2e6 PK11_Encrypt()
  8978 ms  0x2e6 symkey:0x7f9789418d80
  9009 ms  0x2e6 PK11_Derive()
  9009 ms  0x2e6 basekey:0x7f979a470200
  9009 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9009 ms  0x2e6 ret:0x7f978931da80
  9009 ms  0x2e6 PK11_PubDeriveWithKDF()
  9009 ms  0x2e6 seckey:0x7f979a439020
  9009 ms     | 0x2e6 EC_ValidatePublicKey()
  9009 ms     | 0x2e6 ret:0x0
  9009 ms  0x2e6 ret:0x7f979a470200
  9009 ms  SECKEY_ECParamsToKeySize()
  9010 ms  0x2e6 ret:0xff
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f978931da80
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789578b80
  9010 ms  0x2e6 PK11_Derive()
  9010 ms  0x2e6 basekey:0x7f979a470200
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789418000
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f9789418000
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f978931da80
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f9789418000
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f979a470200
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f9789418000
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789578b80
  9010 ms  0x2e6 PK11_Derive()
  9010 ms  0x2e6 basekey:0x7f9789418800
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789417d00
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f979a470200
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789418000
  9010 ms  0x2e6 PK11_DeriveWithFlags()
  9010 ms  0x2e6 basekey:0x7f979a470200
  9010 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9010 ms  0x2e6 ret:0x7f9789578b80
  9012 ms  0x2e6 PK11_DeriveWithFlags()
  9012 ms  0x2e6 basekey:0x7f979a470200
  9012 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9012 ms  0x2e6 ret:0x7f9789578b80
  9084 ms  0x2e6 PK11_Encrypt()
  9084 ms  0x2e6 symkey:0x7f979a444700
           /* TID 0x2ee */
  9156 ms  0x2ee PR_Close()
  9156 ms  0x2ee fd:0x7f979bd46070
           /* TID 0x39b */
  9156 ms  0x39b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9156 ms  0x39b ret:0x0
           /* TID 0x2e6 */
  9156 ms  0x2e6 SSL_AuthCertificateComplete()
  9156 ms  0x2e6 fd:0x7f979bdfd340
  9156 ms  0x2e6 err:0x0
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f9789417d00
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789578b80
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f9789417d00
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789418800
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f9789417d00
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789418780
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f978931da80
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789418f80
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f978931da80
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789502200
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f9789418800
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789502200
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f9789418800
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789418f00
  9156 ms     | 0x2e6 PK11_DeriveWithFlags()
  9156 ms     | 0x2e6 basekey:0x7f978931da80
  9156 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9156 ms     | 0x2e6 ret:0x7f9789418000
  9156 ms     | 0x2e6 PK11_Encrypt()
  9156 ms     | 0x2e6 symkey:0x7f9789418f80
  9157 ms     | 0x2e6 PK11_DeriveWithFlags()
  9157 ms     | 0x2e6 basekey:0x7f9789578b80
  9157 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9157 ms     | 0x2e6 ret:0x7f9789418000
  9157 ms     | 0x2e6 PK11_DeriveWithFlags()
  9157 ms     | 0x2e6 basekey:0x7f9789578b80
  9157 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9157 ms     | 0x2e6 ret:0x7f9789418f00
  9157 ms     | 0x2e6 PK11_DeriveWithFlags()
  9157 ms     | 0x2e6 basekey:0x7f9789417d00
  9157 ms     |    | 0x2e6 PK11_DeriveWithTemplate()
  9157 ms     | 0x2e6 ret:0x7f9789418f80
  9157 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  9157 ms     | 0x2e6 privk:0x7f979a43d020::7f979a43d020  60 af 4a 9a                                      `.J.
  9157 ms     | 0x2e6 privk:0x7f979a43d020::7f979a43d020  e5 e5 e5 e5                                      ....
  9157 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  9157 ms     | 0x2e6 privk:0x7f979a439020::7f979a439020  30 ad 4a 9a                                      0.J.
  9157 ms     | 0x2e6 privk:0x7f979a439020::7f979a439020  e5 e5 e5 e5                                      ....
  9157 ms  0x2e6 PK11_Encrypt()
  9157 ms  0x2e6 symkey:0x7f9789418000
  9158 ms  0x2e6 PK11_Encrypt()
  9158 ms  0x2e6 symkey:0x7f9789418000
  9180 ms  0x2e6 SSL_ImportFD()
  9180 ms  0x2e6 ret:0x7f979d77df10
  9180 ms  0x2e6 SSL_AuthCertificateHook()
  9180 ms  0x2e6 fd:0x7f979d77df10
  9180 ms  0x2e6 ret:0x0
  9181 ms  0x2e6 PR_Connect()
  9181 ms  0x2e6 fd:0x7f979d77df10
  9236 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9236 ms  0x2e6 cx:0x7f97a524a7a8
  9238 ms     | 0x2e6 EC_ValidatePublicKey()
  9238 ms     | 0x2e6 ret:0x0
  9238 ms  0x2e6 ret:0x7f979a43d020::7f979a43d020  80 ad 4a 9a                                      ..J.
  9238 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9238 ms  0x2e6 cx:0x7f97a524a7a8
  9240 ms     | 0x2e6 EC_ValidatePublicKey()
  9244 ms     | 0x2e6 ret:0x0
  9244 ms  0x2e6 ret:0x7f979a71e820::7f979a71e820  40 22 51 9a                                      @"Q.
  9271 ms  0x2e6 PK11_DeriveWithFlags()
  9271 ms  0x2e6 basekey:0x7f9789418f80
  9271 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9272 ms  0x2e6 ret:0x7f979a470200
  9272 ms  0x2e6 PK11_DeriveWithFlags()
  9272 ms  0x2e6 basekey:0x7f9789418f80
  9272 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9272 ms  0x2e6 ret:0x7f979a470200
  9272 ms  0x2e6 PK11_Encrypt()
  9272 ms  0x2e6 symkey:0x7f9789418000
  9296 ms  0x2e6 PK11_Encrypt()
  9296 ms  0x2e6 symkey:0x7f9789418000
           /* TID 0x39c */
  9304 ms  0x39c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9304 ms  0x39c ret:0x0
           /* TID 0x2e6 */
  9305 ms  SECKEY_ECParamsToKeySize()
  9305 ms  0x2e6 ret:0x100
  9305 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9305 ms  0x2e6 cx:0x7f97a524a7a8
  9306 ms     | 0x2e6 EC_ValidatePublicKey()
  9310 ms     | 0x2e6 ret:0x0
  9310 ms  0x2e6 ret:0x7f979a729820::7f979a729820  e0 52 7e 9a                                      .R~.
  9310 ms  0x2e6 PK11_PubDeriveWithKDF()
  9310 ms  0x2e6 seckey:0x7f979a729820
  9311 ms     | 0x2e6 EC_ValidatePublicKey()
  9326 ms     | 0x2e6 ret:0x0
  9328 ms  0x2e6 ret:0x7f979a470200
  9328 ms  0x2e6 PK11_DeriveWithFlags()
  9328 ms  0x2e6 basekey:0x7f979a470200
  9328 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9328 ms  0x2e6 ret:0x7f978931da80
  9328 ms  0x2e6 PK11_Derive()
  9328 ms  0x2e6 basekey:0x7f978931da80
  9328 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9328 ms  0x2e6 ret:0x7f9789417d00
  9328 ms  0x2e6 SECKEY_DestroyPrivateKey()
  9328 ms  0x2e6 privk:0x7f979a729820::7f979a729820  e0 52 7e 9a                                      .R~.
  9328 ms  0x2e6 privk:0x7f979a729820::7f979a729820  e5 e5 e5 e5                                      ....
  9328 ms  0x2e6 PK11_Encrypt()
  9328 ms  0x2e6 symkey:0x7f97892aa200
  9332 ms  0x2e6 SSL_AuthCertificateComplete()
  9332 ms  0x2e6 fd:0x7f979d77df10
  9332 ms  0x2e6 err:0x0
  9337 ms  0x2e6 PK11_Encrypt()
  9337 ms  0x2e6 symkey:0x7f97892aa200
  9339 ms  0x2e6 PR_Close()
  9339 ms  0x2e6 fd:0x7f979b290c10
           /* TID 0x2db */
  9343 ms  0x2db EC_ValidatePublicKey()
  9344 ms  0x2db ret:0x0
  9344 ms  0x2db EC_ValidatePublicKey()
  9346 ms  0x2db ret:0x0
  9346 ms  0x2db EC_ValidatePublicKey()
  9347 ms  0x2db ret:0x0
  9347 ms  0x2db EC_ValidatePublicKey()
  9349 ms  0x2db ret:0x0
  9349 ms  0x2db EC_ValidatePublicKey()
  9350 ms  0x2db ret:0x0
  9350 ms  0x2db EC_ValidatePublicKey()
  9352 ms  0x2db ret:0x0
  9352 ms  0x2db EC_ValidatePublicKey()
  9357 ms  0x2db ret:0x0
  9357 ms  0x2db EC_ValidatePublicKey()
  9359 ms  0x2db ret:0x0
  9359 ms  0x2db EC_ValidatePublicKey()
  9360 ms  0x2db ret:0x0
  9360 ms  0x2db EC_ValidatePublicKey()
  9362 ms  0x2db ret:0x0
           /* TID 0x2e6 */
  9362 ms  0x2e6 PK11_Encrypt()
  9362 ms  0x2e6 symkey:0x7f9789418000
  9362 ms  0x2e6 PK11_Encrypt()
  9362 ms  0x2e6 symkey:0x7f9789578280
  9362 ms  0x2e6 PK11_Encrypt()
  9362 ms  0x2e6 symkey:0x7f9789418b00
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f979a470300
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f9789577e00
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f9789577b00
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f979a444200
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f9789578a80
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f9789578e80
  9363 ms  0x2e6 PK11_Encrypt()
  9363 ms  0x2e6 symkey:0x7f979a414f00
  9363 ms  0x2e6 PR_Close()
  9363 ms  0x2e6 fd:0x7f979a7d8670
  9363 ms     | 0x2e6 PK11_Encrypt()
  9363 ms     | 0x2e6 symkey:0x7f97892aa400
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f9789419ca0
  9364 ms     | 0x2e6 PK11_Encrypt()
  9364 ms     | 0x2e6 symkey:0x7f979a470880
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f97895bf7f0
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f9789419670
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f979a504280
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f979a7d8f70
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f979a4b1e20
  9364 ms     | 0x2e6 PK11_Encrypt()
  9364 ms     | 0x2e6 symkey:0x7f979c0e7000
  9364 ms  0x2e6 PR_Close()
  9364 ms  0x2e6 fd:0x7f979a737160
  9365 ms  0x2e6 PR_Close()
  9365 ms  0x2e6 fd:0x7f97a0886550
  9365 ms     | 0x2e6 PK11_Encrypt()
  9365 ms     | 0x2e6 symkey:0x7f979b2a7980
  9365 ms  0x2e6 PR_Close()
  9365 ms  0x2e6 fd:0x7f979a7372e0
  9365 ms     | 0x2e6 PK11_Encrypt()
  9365 ms     | 0x2e6 symkey:0x7f979a74af80
  9365 ms  0x2e6 PR_Close()
  9365 ms  0x2e6 fd:0x7f978932cca0
  9365 ms     | 0x2e6 PK11_Encrypt()
  9365 ms     | 0x2e6 symkey:0x7f979a414f00
  9365 ms  0x2e6 PR_Close()
  9365 ms  0x2e6 fd:0x7f97895bf160
  9365 ms     | 0x2e6 PK11_Encrypt()
  9365 ms     | 0x2e6 symkey:0x7f9789577b00
  9366 ms  0x2e6 PR_Close()
  9366 ms  0x2e6 fd:0x7f979a7d8370
  9366 ms     | 0x2e6 PK11_Encrypt()
  9366 ms     | 0x2e6 symkey:0x7f9789418b00
  9366 ms  0x2e6 PR_Close()
  9366 ms  0x2e6 fd:0x7f978948d4c0
  9366 ms     | 0x2e6 PK11_Encrypt()
  9366 ms     | 0x2e6 symkey:0x7f9789578280
  9366 ms  0x2e6 PR_Close()
  9366 ms  0x2e6 fd:0x7f97895bf0a0
  9366 ms     | 0x2e6 PK11_Encrypt()
  9366 ms     | 0x2e6 symkey:0x7f9789577e00
  9366 ms  0x2e6 PR_Close()
  9366 ms  0x2e6 fd:0x7f979c0e9cd0
  9366 ms     | 0x2e6 PK11_Encrypt()
  9366 ms     | 0x2e6 symkey:0x7f979a444200
  9367 ms  0x2e6 PR_Close()
  9367 ms  0x2e6 fd:0x7f979bdfd340
  9367 ms     | 0x2e6 PK11_Encrypt()
  9367 ms     | 0x2e6 symkey:0x7f9789418000
  9367 ms  0x2e6 PR_Close()
  9367 ms  0x2e6 fd:0x7f9789419d60
  9367 ms     | 0x2e6 PK11_Encrypt()
  9367 ms     | 0x2e6 symkey:0x7f979a470300
  9367 ms  0x2e6 PR_Close()
  9367 ms  0x2e6 fd:0x7f979a7d8a60
  9367 ms     | 0x2e6 PK11_Encrypt()
  9367 ms     | 0x2e6 symkey:0x7f9789578e80
  9367 ms  0x2e6 PR_Close()
  9367 ms  0x2e6 fd:0x7f978932c820
  9367 ms     | 0x2e6 PK11_Encrypt()
  9367 ms     | 0x2e6 symkey:0x7f9789578a80
           /* TID 0x350 */
  9368 ms  0x350 PR_Close()
  9368 ms  0x350 fd:0x7f978932c280
  9368 ms  0x350 PR_Close()
  9368 ms  0x350 fd:0x7f978932c370
           /* TID 0x2e6 */
  9378 ms  0x2e6 PK11_Encrypt()
  9378 ms  0x2e6 symkey:0x7f9789418d80
  9381 ms  0x2e6 SSL_ImportFD()
  9381 ms  0x2e6 ret:0x7f97894193a0
  9381 ms  0x2e6 SSL_AuthCertificateHook()
  9381 ms  0x2e6 fd:0x7f97894193a0
  9381 ms  0x2e6 ret:0x0
  9381 ms  0x2e6 PR_Connect()
  9381 ms  0x2e6 fd:0x7f97894193a0
  9384 ms  0x2e6 SECKEY_DestroyPrivateKey()
  9384 ms  0x2e6 privk:0x7f979a71e820::7f979a71e820  40 22 51 9a                                      @"Q.
  9384 ms  0x2e6 privk:0x7f979a71e820::7f979a71e820  e5 e5 e5 e5                                      ....
  9384 ms  0x2e6 SECKEY_DestroyPrivateKey()
  9384 ms  0x2e6 privk:0x7f979a43d020::7f979a43d020  80 ad 4a 9a                                      ..J.
  9384 ms  0x2e6 privk:0x7f979a43d020::7f979a43d020  e5 e5 e5 e5                                      ....
           /* TID 0x2db */
  9385 ms  0x2db PR_Close()
  9385 ms  0x2db fd:0x7f979b988e20
  9385 ms  0x2db PR_Close()
  9385 ms  0x2db fd:0x7f9789419e50
  9390 ms  0x2db PR_Close()
  9390 ms  0x2db fd:0x7f9789419eb0
  9390 ms  0x2db PR_Close()
  9390 ms  0x2db fd:0x7f9789419e50
  9390 ms  0x2db PR_Close()
  9390 ms  0x2db fd:0x7f9789419eb0
  9391 ms  0x2db PR_Close()
  9391 ms  0x2db fd:0x7f9789419e50
           /* TID 0x32e */
  9401 ms  0x32e PR_Close()
  9401 ms  0x32e fd:0x7f9789419e50
           /* TID 0x2db */
  9425 ms  0x2db PR_Close()
  9425 ms  0x2db fd:0x7f9789419eb0
           /* TID 0x2e6 */
  9433 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9433 ms  0x2e6 cx:0x7f979a70c3e8
  9433 ms     | 0x2e6 EC_ValidatePublicKey()
  9433 ms     | 0x2e6 ret:0x0
  9433 ms  0x2e6 ret:0x7f9789378020::7f9789378020  30 ad 4a 9a                                      0.J.
  9434 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9434 ms  0x2e6 cx:0x7f979a70c3e8
  9434 ms     | 0x2e6 EC_ValidatePublicKey()
  9436 ms     | 0x2e6 ret:0x0
  9436 ms  0x2e6 ret:0x7f9789385020::7f9789385020  60 aa 50 9a                                      `.P.
  9436 ms  0x2e6 PR_Close()
  9436 ms  0x2e6 fd:0x7f979bdfd2e0
  9436 ms     | 0x2e6 PK11_Encrypt()
  9436 ms     | 0x2e6 symkey:0x7f9789418d80
           /* TID 0x2db */
  9436 ms  0x2db PR_Close()
  9436 ms  0x2db fd:0x7f97895bfb50
  9437 ms  0x2db PR_Close()
  9437 ms  0x2db fd:0x7f9789419040
  9437 ms  0x2db PR_Close()
  9437 ms  0x2db fd:0x7f9789419eb0
  9438 ms  0x2db PR_Close()
  9438 ms  0x2db fd:0x7f97a56c89a0
  9438 ms  0x2db PR_Close()
  9438 ms  0x2db fd:0x7f97a56c88b0
  9438 ms  0x2db PR_Close()
  9438 ms  0x2db fd:0x7f97a56c8a60
  9440 ms  0x2db PR_Close()
  9440 ms  0x2db fd:0x7f9789419fa0
  9441 ms  0x2db PR_Close()
  9441 ms  0x2db fd:0x7f9789419fa0
  9443 ms  0x2db PR_Close()
  9443 ms  0x2db fd:0x7f9789419040
  9443 ms  0x2db PR_Close()
  9443 ms  0x2db fd:0x7f97895bfb80
  9443 ms  0x2db PR_Close()
  9443 ms  0x2db fd:0x7f9789419040
  9444 ms  0x2db PR_Close()
  9444 ms  0x2db fd:0x7f97895bfb80
  9445 ms  0x2db PR_Close()
  9445 ms  0x2db fd:0x7f97895bfc40
  9447 ms  0x2db PR_Close()
  9447 ms  0x2db fd:0x7f97895bfc40
  9448 ms  0x2db PR_Close()
  9448 ms  0x2db fd:0x7f9789419040
  9448 ms  0x2db PR_Close()
  9448 ms  0x2db fd:0x7f97895bfca0
  9448 ms  0x2db PR_Close()
  9448 ms  0x2db fd:0x7f9789419040
  9449 ms  0x2db PR_Close()
  9449 ms  0x2db fd:0x7f97895bfca0
  9453 ms  0x2db PR_Close()
  9453 ms  0x2db fd:0x7f97895bfcd0
  9454 ms  0x2db PR_Close()
  9454 ms  0x2db fd:0x7f97895bfcd0
  9463 ms  0x2db PR_Close()
  9463 ms  0x2db fd:0x7f979a4b14c0
  9464 ms  0x2db PR_Close()
  9464 ms  0x2db fd:0x7f979a4b14c0
  9465 ms  0x2db PR_Close()
  9465 ms  0x2db fd:0x7f979a4b15b0
           /* TID 0x2e6 */
  9476 ms  0x2e6 PR_Close()
  9476 ms  0x2e6 fd:0x7f979d77df10
  9476 ms     | 0x2e6 PK11_Encrypt()
  9476 ms     | 0x2e6 symkey:0x7f97892aa200
           /* TID 0x2e0 */
  9483 ms  0x2e0 PR_Close()
  9483 ms  0x2e0 fd:0x7f97a4131a60
           /* TID 0x2db */
  9484 ms  0x2db PR_Close()
  9484 ms  0x2db fd:0x7f9789419040
  9484 ms  0x2db PR_Close()
  9484 ms  0x2db fd:0x7f978948d550
           /* TID 0x2e6 */
  9492 ms  SECKEY_ECParamsToKeySize()
  9492 ms  0x2e6 ret:0xff
  9492 ms  0x2e6 SECKEY_CreateECPrivateKey()
  9492 ms  0x2e6 cx:0x7f979a70c3e8
  9493 ms     | 0x2e6 EC_ValidatePublicKey()
  9493 ms     | 0x2e6 ret:0x0
  9494 ms  0x2e6 ret:0x7f97895c7820::7f97895c7820  10 d5 d3 9b                                      ....
  9494 ms  0x2e6 PK11_PubDeriveWithKDF()
  9494 ms  0x2e6 seckey:0x7f97895c7820
  9494 ms     | 0x2e6 EC_ValidatePublicKey()
  9494 ms     | 0x2e6 ret:0x0
  9495 ms  0x2e6 ret:0x7f9789417d00
  9495 ms  0x2e6 PK11_DeriveWithFlags()
  9495 ms  0x2e6 basekey:0x7f9789417d00
  9495 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9495 ms  0x2e6 ret:0x7f978931da80
  9495 ms  0x2e6 PK11_Derive()
  9495 ms  0x2e6 basekey:0x7f978931da80
  9495 ms     | 0x2e6 PK11_DeriveWithTemplate()
  9495 ms  0x2e6 ret:0x7f9789578780
  9495 ms  0x2e6 SECKEY_DestroyPrivateKey()
  9495 ms  0x2e6 privk:0x7f97895c7820::7f97895c7820  10 d5 d3 9b                                      ....
  9495 ms  0x2e6 privk:0x7f97895c7820::7f97895c7820  e5 e5 e5 e5                                      ....
  9495 ms  0x2e6 PK11_Encrypt()
  9495 ms  0x2e6 symkey:0x7f97894d3500
           /* TID 0x32e */
  9499 ms  0x32e PR_Close()
  9499 ms  0x32e fd:0x7f979a737370
           /* TID 0x2db */
  9500 ms  0x2db PR_Close()
  9500 ms  0x2db fd:0x7f9789419040
  9500 ms  0x2db PR_Close()
  9500 ms  0x2db fd:0x7f979a7d83d0
           /* TID 0x32e */
  9500 ms  0x32e PR_Close()
  9500 ms  0x32e fd:0x7f979a737370
  9505 ms  0x32e PR_Close()
  9505 ms  0x32e fd:0x7f979a737400
           /* TID 0x2ee */
  9521 ms  0x2ee PR_Close()
  9521 ms  0x2ee fd:0x7f979ab3d310
  9521 ms  0x2ee PR_Close()
  9521 ms  0x2ee fd:0x7f979ab3d3d0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3d700
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3d310
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3d3d0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3d700
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3dbb0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3dc10
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979ab3dca0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b290430
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b290d30
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b9880d0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b9883d0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b9885b0
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b988c40
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b988d60
  9522 ms  0x2ee PR_Close()
  9522 ms  0x2ee fd:0x7f979b988e20
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd46790
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49100
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49700
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49760
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd497c0
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49970
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49a60
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49af0
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49b50
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49bb0
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49c10
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49ca0
  9523 ms  0x2ee PR_Close()
  9523 ms  0x2ee fd:0x7f979bd49d00
           /* TID 0x32e */
  9534 ms  0x32e PR_Close()
  9534 ms  0x32e fd:0x7f978932c940
           /* TID 0x2e6 */
  9542 ms  0x2e6 PR_Close()
  9542 ms  0x2e6 fd:0x7f97894193a0
  9545 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  9545 ms     | 0x2e6 privk:0x7f9789385020::7f9789385020  60 aa 50 9a                                      `.P.
  9545 ms     | 0x2e6 privk:0x7f9789385020::7f9789385020  e5 e5 e5 e5                                      ....
  9545 ms     | 0x2e6 SECKEY_DestroyPrivateKey()
  9545 ms     | 0x2e6 privk:0x7f9789378020::7f9789378020  30 ad 4a 9a                                      0.J.
  9545 ms     | 0x2e6 privk:0x7f9789378020::7f9789378020  e5 e5 e5 e5                                      ....
           /* TID 0x32e */
  9553 ms  0x32e PR_Close()
  9553 ms  0x32e fd:0x7f978932c940
           /* TID 0x2e6 */
  9558 ms  0x2e6 PR_Close()
  9558 ms  0x2e6 fd:0x7f979ab3dd60
  9558 ms  0x2e6 PR_Close()
  9558 ms  0x2e6 fd:0x7f979a737bb0
  9559 ms     | 0x2e6 PK11_Encrypt()
  9559 ms     | 0x2e6 symkey:0x7f979a444700
           /* TID 0x350 */
  9561 ms  0x350 PR_Close()
  9561 ms  0x350 fd:0x7f978932ccd0
  9561 ms  0x350 PR_Close()
  9561 ms  0x350 fd:0x7f978932ccd0
  9561 ms  0x350 PR_Close()
  9561 ms  0x350 fd:0x7f978932ccd0
  9561 ms  0x350 PR_Close()
  9561 ms  0x350 fd:0x7f97894195b0
           /* TID 0x32e */
  9562 ms  0x32e PR_Close()
  9562 ms  0x32e fd:0x7f97894195b0
           /* TID 0x2ee */
  9574 ms  0x2ee PR_Close()
  9574 ms  0x2ee fd:0x7f979a463340
  9574 ms  0x2ee PR_Close()
  9574 ms  0x2ee fd:0x7f979a463370
           /* TID 0x2e0 */
  9580 ms  0x2e0 PR_Close()
  9580 ms  0x2e0 fd:0x7f979b9882b0
           /* TID 0x2db */
  9581 ms  0x2db PR_Close()
  9581 ms  0x2db fd:0x7f9789419040
  9581 ms  0x2db PR_Close()
  9581 ms  0x2db fd:0x7f979a463700
  9600 ms  0x2db PR_Close()
  9600 ms  0x2db fd:0x7f9789419040
  9600 ms  0x2db PR_Close()
  9600 ms  0x2db fd:0x7f979a463a30
           /* TID 0x32e */
  9601 ms  0x32e PR_Close()
  9601 ms  0x32e fd:0x7f979a463a60
           /* TID 0x2e0 */
  9605 ms  0x2e0 PR_Close()
  9605 ms  0x2e0 fd:0x7f97a0847790
           /* TID 0x32e */
  9605 ms  0x32e PR_Close()
  9605 ms  0x32e fd:0x7f979a4638b0
  9752 ms  0x32e PR_Close()
  9752 ms  0x32e fd:0x7f978932cd60
  9775 ms  0x32e PR_Close()
  9775 ms  0x32e fd:0x7f978932cd60
  9782 ms  0x32e PR_Close()
  9782 ms  0x32e fd:0x7f9789419220
  9784 ms  0x32e PR_Close()
  9784 ms  0x32e fd:0x7f9789419730
  9802 ms  0x32e PR_Close()
  9802 ms  0x32e fd:0x7f978948de50
  9812 ms  0x32e PR_Close()
  9812 ms  0x32e fd:0x7f97895bfe20
  9821 ms  0x32e PR_Close()
  9821 ms  0x32e fd:0x7f979a463a00
  9831 ms  0x32e PR_Close()
  9831 ms  0x32e fd:0x7f979a463ac0
  9833 ms  0x32e PR_Close()
  9833 ms  0x32e fd:0x7f979a463ac0
           /* TID 0x2db */
  9989 ms  0x2db PR_Close()
  9989 ms  0x2db fd:0x7f9789419100
  9990 ms  0x2db PR_Close()
  9990 ms  0x2db fd:0x7f9789419100
  9995 ms  0x2db PR_Close()
  9995 ms  0x2db fd:0x7f97c29da130
  9996 ms  0x2db PR_Close()
  9996 ms  0x2db fd:0x7f97c29da190
Process terminated
