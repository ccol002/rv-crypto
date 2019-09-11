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
           /* TID 0x681f */
   192 ms  0x681f PR_Close()
   192 ms  0x681f fd:0x7f479b79dd00
           /* TID 0x6817 */
   433 ms  0x6817 SSL_ImportFD()
   433 ms  0x6817 ret:0x7f479b20c940
   433 ms  0x6817 SSL_AuthCertificateHook()
   433 ms  0x6817 fd:0x7f479b20c940
   433 ms  0x6817 ret:0x0
   433 ms  0x6817 PR_Connect()
   433 ms  0x6817 fd:0x7f479b20c940
   641 ms  0x6817 SECKEY_CreateECPrivateKey()
   641 ms  0x6817 cx:0x7f479b799728
   643 ms     | 0x6817 EC_ValidatePublicKey()
   643 ms     | 0x6817 ret:0x0
   643 ms  0x6817 ret:0x7f479b456820::7f479b456820  c0 2e 4a 9b                                      ..J.
   643 ms  0x6817 SECKEY_CreateECPrivateKey()
   643 ms  0x6817 cx:0x7f479b799728
   645 ms     | 0x6817 EC_ValidatePublicKey()
   650 ms     | 0x6817 ret:0x0
   650 ms  0x6817 ret:0x7f479b458820::7f479b458820  60 b0 70 8a                                      `.p.
           /* TID 0x683e */
   707 ms  0x683e PR_Close()
   707 ms  0x683e fd:0x7f479b20c850
   711 ms  0x683e PR_Close()
   711 ms  0x683e fd:0x7f479b20c850
   791 ms  0x683e PR_Close()
   791 ms  0x683e fd:0x7f479b20ca00
           /* TID 0x6817 */
   865 ms  SECKEY_ECParamsToKeySize()
   865 ms  0x6817 ret:0x100
   865 ms  0x6817 SECKEY_CreateECPrivateKey()
   865 ms  0x6817 cx:0x7f479b799728
   866 ms     | 0x6817 EC_ValidatePublicKey()
   867 ms     | 0x6817 ret:0x0
   867 ms  0x6817 ret:0x7f479b461820::7f479b461820  a0 b6 70 8a                                      ..p.
   867 ms  0x6817 PK11_PubDeriveWithKDF()
   867 ms  0x6817 seckey:0x7f479b461820
   867 ms     | 0x6817 EC_ValidatePublicKey()
   869 ms     | 0x6817 ret:0x0
   870 ms  0x6817 ret:0x7f479c9a1b80
   870 ms  0x6817 PK11_DeriveWithFlags()
   870 ms  0x6817 basekey:0x7f479c9a1b80
   870 ms     | 0x6817 PK11_DeriveWithTemplate()
   870 ms  0x6817 ret:0x7f479b4fe900
   870 ms  0x6817 PK11_Derive()
   870 ms  0x6817 basekey:0x7f479b4fe900
   870 ms     | 0x6817 PK11_DeriveWithTemplate()
   870 ms  0x6817 ret:0x7f479b4fea00
   870 ms  0x6817 SECKEY_DestroyPrivateKey()
   870 ms  0x6817 privk:0x7f479b461820::7f479b461820  a0 b6 70 8a                                      ..p.
   870 ms  0x6817 privk:0x7f479b461820::7f479b461820  e5 e5 e5 e5                                      ....
   870 ms  0x6817 PK11_Encrypt()
   870 ms  0x6817 symkey:0x7f479b4feb80
   871 ms  0x6817 PR_Connect()
   871 ms  0x6817 fd:0x7f479b20cee0
           /* TID 0x687f */
   923 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   923 ms  0x687f ret:0x0
           /* TID 0x681f */
   924 ms  0x681f PR_Close()
   924 ms  0x681f fd:0x7f478a728070
           /* TID 0x6817 */
   924 ms  0x6817 SSL_AuthCertificateComplete()
   924 ms  0x6817 fd:0x7f479b20c940
   924 ms  0x6817 err:0x0
   925 ms  0x6817 PK11_Encrypt()
   925 ms  0x6817 symkey:0x7f479b4feb80
  1079 ms  0x6817 SECKEY_DestroyPrivateKey()
  1079 ms  0x6817 privk:0x7f479b458820::7f479b458820  60 b0 70 8a                                      `.p.
  1079 ms  0x6817 privk:0x7f479b458820::7f479b458820  e5 e5 e5 e5                                      ....
  1080 ms  0x6817 SECKEY_DestroyPrivateKey()
  1080 ms  0x6817 privk:0x7f479b456820::7f479b456820  c0 2e 4a 9b                                      ..J.
  1080 ms  0x6817 privk:0x7f479b456820::7f479b456820  e5 e5 e5 e5                                      ....
  1346 ms  0x6817 SSL_ImportFD()
  1347 ms  0x6817 ret:0x7f478a728220
  1347 ms  0x6817 SSL_AuthCertificateHook()
  1347 ms  0x6817 fd:0x7f478a728220
  1347 ms  0x6817 ret:0x0
  1347 ms  0x6817 PR_Connect()
  1347 ms  0x6817 fd:0x7f478a728220
  1373 ms  0x6817 SECKEY_CreateECPrivateKey()
  1373 ms  0x6817 cx:0x7f479b79a428
  1375 ms     | 0x6817 EC_ValidatePublicKey()
  1375 ms     | 0x6817 ret:0x0
  1375 ms  0x6817 ret:0x7f479b457820::7f479b457820  50 b6 70 8a                                      P.p.
  1376 ms  0x6817 SECKEY_CreateECPrivateKey()
  1376 ms  0x6817 cx:0x7f479b79a428
  1378 ms     | 0x6817 EC_ValidatePublicKey()
  1383 ms     | 0x6817 ret:0x0
  1383 ms  0x6817 ret:0x7f479b45d820::7f479b45d820  30 b8 70 8a                                      0.p.
           /* TID 0x687f */
  1436 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1436 ms  0x687f ret:0x0
           /* TID 0x6817 */
  1437 ms  SECKEY_ECParamsToKeySize()
  1437 ms  0x6817 ret:0x100
  1437 ms  0x6817 SECKEY_CreateECPrivateKey()
  1437 ms  0x6817 cx:0x7f479b79a428
  1439 ms     | 0x6817 EC_ValidatePublicKey()
  1444 ms     | 0x6817 ret:0x0
  1444 ms  0x6817 ret:0x7f479b461020::7f479b461020  b0 ba 70 8a                                      ..p.
  1444 ms  0x6817 PK11_PubDeriveWithKDF()
  1444 ms  0x6817 seckey:0x7f479b461020
  1444 ms     | 0x6817 EC_ValidatePublicKey()
  1448 ms     | 0x6817 ret:0x0
  1452 ms  0x6817 ret:0x7f479c9a1b80
  1452 ms  0x6817 PK11_DeriveWithFlags()
  1452 ms  0x6817 basekey:0x7f479c9a1b80
  1452 ms     | 0x6817 PK11_DeriveWithTemplate()
  1452 ms  0x6817 ret:0x7f479b4ff700
  1452 ms  0x6817 PK11_Derive()
  1452 ms  0x6817 basekey:0x7f479b4ff700
  1453 ms     | 0x6817 PK11_DeriveWithTemplate()
  1453 ms  0x6817 ret:0x7f479b4ff780
  1453 ms  0x6817 SECKEY_DestroyPrivateKey()
  1453 ms  0x6817 privk:0x7f479b461020::7f479b461020  b0 ba 70 8a                                      ..p.
  1453 ms  0x6817 privk:0x7f479b461020::7f479b461020  e5 e5 e5 e5                                      ....
  1453 ms  0x6817 PK11_Encrypt()
  1453 ms  0x6817 symkey:0x7f479b4ff900
  1453 ms  0x6817 SSL_AuthCertificateComplete()
  1453 ms  0x6817 fd:0x7f478a728220
  1453 ms  0x6817 err:0x0
  1454 ms  0x6817 PK11_Encrypt()
  1454 ms  0x6817 symkey:0x7f479b4ff900
  1505 ms  0x6817 SECKEY_DestroyPrivateKey()
  1505 ms  0x6817 privk:0x7f479b45d820::7f479b45d820  30 b8 70 8a                                      0.p.
  1505 ms  0x6817 privk:0x7f479b45d820::7f479b45d820  e5 e5 e5 e5                                      ....
  1506 ms  0x6817 SECKEY_DestroyPrivateKey()
  1506 ms  0x6817 privk:0x7f479b457820::7f479b457820  50 b6 70 8a                                      P.p.
  1506 ms  0x6817 privk:0x7f479b457820::7f479b457820  e5 e5 e5 e5                                      ....
  1510 ms  0x6817 PK11_Encrypt()
  1510 ms  0x6817 symkey:0x7f479b4ff900
  1540 ms  0x6817 PK11_Encrypt()
  1540 ms  0x6817 symkey:0x7f479b4ff900
  1571 ms  0x6817 PK11_Encrypt()
  1571 ms  0x6817 symkey:0x7f479b4ff900
  1601 ms  0x6817 PK11_Encrypt()
  1601 ms  0x6817 symkey:0x7f479b4ff900
  1717 ms  0x6817 PK11_Encrypt()
  1717 ms  0x6817 symkey:0x7f479b4ff900
  1751 ms  0x6817 PK11_Encrypt()
  1751 ms  0x6817 symkey:0x7f479b4ff900
  1782 ms  0x6817 PK11_Encrypt()
  1782 ms  0x6817 symkey:0x7f479b4ff900
           /* TID 0x6876 */
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728820
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728880
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728820
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728880
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728820
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728880
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728820
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728880
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728820
  1809 ms  0x6876 PR_Close()
  1809 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728820
  1810 ms  0x6876 PR_Close()
  1810 ms  0x6876 fd:0x7f478a728880
  1812 ms  0x6876 PR_Close()
  1812 ms  0x6876 fd:0x7f478a728820
  1812 ms  0x6876 PR_Close()
  1812 ms  0x6876 fd:0x7f478a728700
  1814 ms  0x6876 PR_Close()
  1814 ms  0x6876 fd:0x7f478a728700
  1814 ms  0x6876 PR_Close()
  1814 ms  0x6876 fd:0x7f478a728820
  1815 ms  0x6876 PR_Close()
  1815 ms  0x6876 fd:0x7f478a728820
  1816 ms  0x6876 PR_Close()
  1816 ms  0x6876 fd:0x7f478a728820
  1817 ms  0x6876 PR_Close()
  1817 ms  0x6876 fd:0x7f478a728820
  1817 ms  0x6876 PR_Close()
  1817 ms  0x6876 fd:0x7f478a728820
  1852 ms  0x6876 PR_Close()
  1852 ms  0x6876 fd:0x7f478a728820
  1853 ms  0x6876 PR_Close()
  1853 ms  0x6876 fd:0x7f478a728820
  1860 ms  0x6876 PR_Close()
  1860 ms  0x6876 fd:0x7f478a728820
  1860 ms  0x6876 PR_Close()
  1860 ms  0x6876 fd:0x7f478a728820
  1868 ms  0x6876 PR_Close()
  1868 ms  0x6876 fd:0x7f478a728820
  1868 ms  0x6876 PR_Close()
  1868 ms  0x6876 fd:0x7f478a728820
  1870 ms  0x6876 PR_Close()
  1870 ms  0x6876 fd:0x7f478a728820
  1870 ms  0x6876 PR_Close()
  1870 ms  0x6876 fd:0x7f478a728820
           /* TID 0x6873 */
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1870 ms  0x6873 PR_Close()
  1870 ms  0x6873 fd:0x7f478a728820
  1871 ms  0x6873 PR_Close()
  1871 ms  0x6873 fd:0x7f478a728820
           /* TID 0x683e */
  2373 ms  0x683e PR_Close()
  2373 ms  0x683e fd:0x7f478a7281f0
  2376 ms  0x683e PR_Close()
  2376 ms  0x683e fd:0x7f478a7281f0
  2664 ms  0x683e PR_Close()
  2664 ms  0x683e fd:0x7f478a728250
           /* TID 0x681f */
  4170 ms  0x681f PR_Close()
  4170 ms  0x681f fd:0x7f478a728250
  4170 ms  0x681f PR_Close()
  4170 ms  0x681f fd:0x7f478a728850
  4170 ms  0x681f PR_Close()
  4170 ms  0x681f fd:0x7f478a7288b0
           /* TID 0x6817 */
  4867 ms  0x6817 SSL_ImportFD()
  4867 ms  0x6817 ret:0x7f478a686820
  4868 ms  0x6817 SSL_AuthCertificateHook()
  4868 ms  0x6817 fd:0x7f478a686820
  4868 ms  0x6817 ret:0x0
  4868 ms  0x6817 PR_Connect()
  4868 ms  0x6817 fd:0x7f478a686820
  4943 ms  0x6817 SECKEY_CreateECPrivateKey()
  4943 ms  0x6817 cx:0x7f479b79a768
  4945 ms     | 0x6817 EC_ValidatePublicKey()
  4945 ms     | 0x6817 ret:0x0
  4945 ms  0x6817 ret:0x7f479c9b0020::7f479c9b0020  f0 76 6d 8a                                      .vm.
  4945 ms  0x6817 SECKEY_CreateECPrivateKey()
  4945 ms  0x6817 cx:0x7f479b79a768
  4948 ms     | 0x6817 EC_ValidatePublicKey()
  4953 ms     | 0x6817 ret:0x0
  4953 ms  0x6817 ret:0x7f479c9b2020::7f479c9b2020  d0 78 6d 8a                                      .xm.
  6070 ms  SECKEY_ECParamsToKeySize()
  6070 ms  0x6817 ret:0x100
  6070 ms  SECKEY_ECParamsToBasePointOrderLen()
  6070 ms  0x6817 ret:0x100
  6070 ms  SECKEY_ECParamsToBasePointOrderLen()
  6070 ms  0x6817 ret:0x100
  6070 ms  0x6817 EC_ValidatePublicKey()
  6072 ms  0x6817 ret:0x0
  6075 ms  SECKEY_ECParamsToKeySize()
  6075 ms  0x6817 ret:0xff
  6075 ms  0x6817 SECKEY_CreateECPrivateKey()
  6075 ms  0x6817 cx:0x7f479b79a768
  6075 ms     | 0x6817 EC_ValidatePublicKey()
  6075 ms     | 0x6817 ret:0x0
  6075 ms  0x6817 ret:0x7f479b44f820::7f479b44f820  20 7e 6d 8a                                       ~m.
  6075 ms  0x6817 PK11_PubDeriveWithKDF()
  6075 ms  0x6817 seckey:0x7f479b44f820
  6075 ms     | 0x6817 EC_ValidatePublicKey()
  6075 ms     | 0x6817 ret:0x0
  6077 ms  0x6817 ret:0x7f479c9a1b80
  6077 ms  0x6817 PK11_DeriveWithFlags()
  6077 ms  0x6817 basekey:0x7f479c9a1b80
  6078 ms     | 0x6817 PK11_DeriveWithTemplate()
  6078 ms  0x6817 ret:0x7f478a68b100
  6078 ms  0x6817 PK11_Derive()
  6078 ms  0x6817 basekey:0x7f478a68b100
  6078 ms     | 0x6817 PK11_DeriveWithTemplate()
  6078 ms  0x6817 ret:0x7f478a68b180
  6078 ms  0x6817 SECKEY_DestroyPrivateKey()
  6078 ms  0x6817 privk:0x7f479b44f820::7f479b44f820  20 7e 6d 8a                                       ~m.
  6078 ms  0x6817 privk:0x7f479b44f820::7f479b44f820  e5 e5 e5 e5                                      ....
  6078 ms  0x6817 PK11_Encrypt()
  6078 ms  0x6817 symkey:0x7f478a68b300
  6106 ms  0x6817 PR_Connect()
  6106 ms  0x6817 fd:0x7f478a686ee0
           /* TID 0x681f */
  6162 ms  0x681f PR_Close()
  6162 ms  0x681f fd:0x7f478a686cd0
           /* TID 0x687f */
  6162 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6162 ms  0x687f ret:0x0
  6162 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6162 ms  0x687f ret:0x0
           /* TID 0x6817 */
  6199 ms  0x6817 SSL_AuthCertificateComplete()
  6199 ms  0x6817 fd:0x7f478a686820
  6199 ms  0x6817 err:0x0
  6199 ms     | 0x6817 SECKEY_DestroyPrivateKey()
  6199 ms     | 0x6817 privk:0x7f479c9b2020::7f479c9b2020  d0 78 6d 8a                                      .xm.
  6199 ms     | 0x6817 privk:0x7f479c9b2020::7f479c9b2020  e5 e5 e5 e5                                      ....
  6199 ms     | 0x6817 SECKEY_DestroyPrivateKey()
  6199 ms     | 0x6817 privk:0x7f479c9b0020::7f479c9b0020  f0 76 6d 8a                                      .vm.
  6199 ms     | 0x6817 privk:0x7f479c9b0020::7f479c9b0020  e5 e5 e5 e5                                      ....
  6199 ms  0x6817 PK11_Encrypt()
  6199 ms  0x6817 symkey:0x7f478a68b300
  6199 ms  0x6817 PK11_Encrypt()
  6199 ms  0x6817 symkey:0x7f478a68b300
  6199 ms  0x6817 PK11_Encrypt()
  6199 ms  0x6817 symkey:0x7f478a68b300
           /* TID 0x682e */
  8692 ms  0x682e PR_Close()
  8692 ms  0x682e fd:0x7f479b48ba00
           /* TID 0x6817 */
  8858 ms  0x6817 SSL_ImportFD()
  8858 ms  0x6817 ret:0x7f479b7a7160
  8858 ms  0x6817 SSL_AuthCertificateHook()
  8858 ms  0x6817 fd:0x7f479b7a7160
  8858 ms  0x6817 ret:0x0
  8858 ms  0x6817 PK11_Encrypt()
  8858 ms  0x6817 symkey:0x7f478a68b300
  8859 ms  0x6817 PR_Connect()
  8859 ms  0x6817 fd:0x7f479b7a7160
  8934 ms  0x6817 SECKEY_CreateECPrivateKey()
  8934 ms  0x6817 cx:0x7f479b79b948
  8936 ms     | 0x6817 EC_ValidatePublicKey()
  8936 ms     | 0x6817 ret:0x0
  8936 ms  0x6817 ret:0x7f479c719020::7f479c719020  c0 84 48 9b                                      ..H.
  8936 ms  0x6817 SECKEY_CreateECPrivateKey()
  8936 ms  0x6817 cx:0x7f479b79b948
  8939 ms     | 0x6817 EC_ValidatePublicKey()
  8943 ms     | 0x6817 ret:0x0
  8944 ms  0x6817 ret:0x7f479c730020::7f479c730020  e0 87 48 9b                                      ..H.
           /* TID 0x681f */
  9354 ms  0x681f PR_Close()
  9354 ms  0x681f fd:0x7f479b48beb0
  9355 ms  0x681f PR_Close()
  9355 ms  0x681f fd:0x7f479b7a7190
  9355 ms  0x681f PR_Close()
  9355 ms  0x681f fd:0x7f479b48beb0
           /* TID 0x682e */
  9455 ms  0x682e PR_Close()
  9455 ms  0x682e fd:0x7f479b7a74f0
           /* TID 0x681f */
  9591 ms  0x681f PR_Close()
  9591 ms  0x681f fd:0x7f47a134baf0
           /* TID 0x6817 */
  9866 ms  0x6817 SSL_ImportFD()
  9866 ms  0x6817 ret:0x7f47a13b0880
  9866 ms  0x6817 SSL_AuthCertificateHook()
  9866 ms  0x6817 fd:0x7f47a13b0880
  9866 ms  0x6817 ret:0x0
  9866 ms  0x6817 PR_Connect()
  9866 ms  0x6817 fd:0x7f47a13b0880
  9867 ms  0x6817 SSL_ImportFD()
  9867 ms  0x6817 ret:0x7f479e5abc70
  9867 ms  0x6817 SSL_AuthCertificateHook()
  9867 ms  0x6817 fd:0x7f479e5abc70
  9867 ms  0x6817 ret:0x0
  9867 ms  0x6817 PR_Connect()
  9867 ms  0x6817 fd:0x7f479e5abc70
  9868 ms  0x6817 SSL_ImportFD()
  9868 ms  0x6817 ret:0x7f47a134be80
  9868 ms  0x6817 SSL_AuthCertificateHook()
  9868 ms  0x6817 fd:0x7f47a134be80
  9868 ms  0x6817 ret:0x0
  9868 ms  0x6817 PR_Connect()
  9868 ms  0x6817 fd:0x7f47a134be80
  9869 ms  0x6817 SSL_ImportFD()
  9869 ms  0x6817 ret:0x7f47a13b0670
  9869 ms  0x6817 SSL_AuthCertificateHook()
  9869 ms  0x6817 fd:0x7f47a13b0670
  9869 ms  0x6817 ret:0x0
  9869 ms  0x6817 PR_Connect()
  9869 ms  0x6817 fd:0x7f47a13b0670
  9935 ms  0x6817 SECKEY_CreateECPrivateKey()
  9935 ms  0x6817 cx:0x7f479b79bc88
  9936 ms     | 0x6817 EC_ValidatePublicKey()
  9936 ms     | 0x6817 ret:0x0
  9936 ms  0x6817 ret:0x7f47a1315820::7f47a1315820  50 db 43 a1                                      P.C.
  9937 ms  0x6817 SECKEY_CreateECPrivateKey()
  9937 ms  0x6817 cx:0x7f479b79bc88
  9938 ms     | 0x6817 EC_ValidatePublicKey()
  9946 ms     | 0x6817 ret:0x0
  9946 ms  0x6817 ret:0x7f47a1319820::7f47a1319820  a0 d1 43 a1                                      ..C.
  9949 ms  0x6817 SECKEY_CreateECPrivateKey()
  9949 ms  0x6817 cx:0x7f479b79c4a8
  9950 ms     | 0x6817 EC_ValidatePublicKey()
  9950 ms     | 0x6817 ret:0x0
  9950 ms  0x6817 ret:0x7f47a1498020::7f47a1498020  80 cd 44 a1                                      ..D.
  9952 ms  0x6817 SECKEY_CreateECPrivateKey()
  9952 ms  0x6817 cx:0x7f479b79c4a8
  9954 ms     | 0x6817 EC_ValidatePublicKey()
  9960 ms     | 0x6817 ret:0x0
  9960 ms  0x6817 ret:0x7f47a14a5020::7f47a14a5020  e0 17 47 a1                                      ..G.
  9961 ms  0x6817 SECKEY_CreateECPrivateKey()
  9961 ms  0x6817 cx:0x7f479b79c308
  9963 ms     | 0x6817 EC_ValidatePublicKey()
  9963 ms     | 0x6817 ret:0x0
  9963 ms  0x6817 ret:0x7f47a1807820::7f47a1807820  70 19 47 a1                                      p.G.
  9963 ms  0x6817 SECKEY_CreateECPrivateKey()
  9963 ms  0x6817 cx:0x7f479b79c308
  9964 ms     | 0x6817 EC_ValidatePublicKey()
  9967 ms     | 0x6817 ret:0x0
  9967 ms  0x6817 ret:0x7f47a180a020::7f47a180a020  a0 1b 47 a1                                      ..G.
  9968 ms  0x6817 SECKEY_CreateECPrivateKey()
  9968 ms  0x6817 cx:0x7f479b79c168
  9969 ms     | 0x6817 EC_ValidatePublicKey()
  9969 ms     | 0x6817 ret:0x0
  9969 ms  0x6817 ret:0x7f47a1810820::7f47a1810820  e0 1c 47 a1                                      ..G.
  9969 ms  0x6817 SECKEY_CreateECPrivateKey()
  9969 ms  0x6817 cx:0x7f479b79c168
  9970 ms     | 0x6817 EC_ValidatePublicKey()
  9973 ms     | 0x6817 ret:0x0
  9973 ms  0x6817 ret:0x7f47a1814820::7f47a1814820  c0 1e 47 a1                                      ..G.
  9978 ms  SECKEY_ECParamsToKeySize()
  9978 ms  0x6817 ret:0x100
  9978 ms  SECKEY_ECParamsToBasePointOrderLen()
  9978 ms  0x6817 ret:0x100
  9978 ms  SECKEY_ECParamsToBasePointOrderLen()
  9978 ms  0x6817 ret:0x100
  9978 ms  0x6817 EC_ValidatePublicKey()
  9980 ms  0x6817 ret:0x0
  9983 ms  SECKEY_ECParamsToKeySize()
  9983 ms  0x6817 ret:0xff
  9983 ms  0x6817 SECKEY_CreateECPrivateKey()
  9983 ms  0x6817 cx:0x7f479b79b948
  9983 ms     | 0x6817 EC_ValidatePublicKey()
  9983 ms     | 0x6817 ret:0x0
  9983 ms  0x6817 ret:0x7f47a1a06020::7f47a1a06020  40 d2 4d a1                                      @.M.
  9983 ms  0x6817 PK11_PubDeriveWithKDF()
  9983 ms  0x6817 seckey:0x7f47a1a06020
  9983 ms     | 0x6817 EC_ValidatePublicKey()
  9983 ms     | 0x6817 ret:0x0
  9984 ms  0x6817 ret:0x7f479c9a1b80
  9984 ms  0x6817 PK11_DeriveWithFlags()
  9984 ms  0x6817 basekey:0x7f479c9a1b80
  9984 ms     | 0x6817 PK11_DeriveWithTemplate()
  9984 ms  0x6817 ret:0x7f479cdd3080
  9984 ms  0x6817 PK11_Derive()
  9984 ms  0x6817 basekey:0x7f479cdd3080
  9984 ms     | 0x6817 PK11_DeriveWithTemplate()
  9984 ms  0x6817 ret:0x7f479cdd3180
  9984 ms  0x6817 SECKEY_DestroyPrivateKey()
  9984 ms  0x6817 privk:0x7f47a1a06020::7f47a1a06020  40 d2 4d a1                                      @.M.
  9984 ms  0x6817 privk:0x7f47a1a06020::7f47a1a06020  e5 e5 e5 e5                                      ....
  9984 ms  0x6817 PK11_Encrypt()
  9984 ms  0x6817 symkey:0x7f479cdd3680
  9984 ms  0x6817 SSL_AuthCertificateComplete()
  9984 ms  0x6817 fd:0x7f479b7a7160
  9984 ms  0x6817 err:0x0
  9984 ms  0x6817 PK11_Encrypt()
  9984 ms  0x6817 symkey:0x7f479cdd3680
 10015 ms  0x6817 PK11_Derive()
 10015 ms  0x6817 basekey:0x7f479c9a1b80
 10015 ms     | 0x6817 PK11_DeriveWithTemplate()
 10015 ms  0x6817 ret:0x7f479cdd3800
 10015 ms  0x6817 PK11_PubDeriveWithKDF()
 10015 ms  0x6817 seckey:0x7f47a1315820
 10015 ms     | 0x6817 EC_ValidatePublicKey()
 10015 ms     | 0x6817 ret:0x0
 10016 ms  0x6817 ret:0x7f479c9a1b80
 10016 ms  SECKEY_ECParamsToKeySize()
 10016 ms  0x6817 ret:0xff
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479cdd3800
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479cdd3f00
 10016 ms  0x6817 PK11_Derive()
 10016 ms  0x6817 basekey:0x7f479c9a1b80
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479d2aab00
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479d2aab00
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479cdd3800
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479d2aab00
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479c9a1b80
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479d2aab00
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479cdd3f00
 10016 ms  0x6817 PK11_Derive()
 10016 ms  0x6817 basekey:0x7f479d2aaf80
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479d2ab580
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479c9a1b80
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479d2aab00
 10016 ms  0x6817 PK11_DeriveWithFlags()
 10016 ms  0x6817 basekey:0x7f479c9a1b80
 10016 ms     | 0x6817 PK11_DeriveWithTemplate()
 10016 ms  0x6817 ret:0x7f479cdd3f00
 10017 ms  0x6817 PK11_DeriveWithFlags()
 10017 ms  0x6817 basekey:0x7f479c9a1b80
 10018 ms     | 0x6817 PK11_DeriveWithTemplate()
 10018 ms  0x6817 ret:0x7f479cdd3f00
 10036 ms  0x6817 PK11_Derive()
 10036 ms  0x6817 basekey:0x7f479cdd3f00
 10036 ms     | 0x6817 PK11_DeriveWithTemplate()
 10036 ms  0x6817 ret:0x7f479d2aaf80
 10036 ms  0x6817 PK11_PubDeriveWithKDF()
 10036 ms  0x6817 seckey:0x7f47a1498020
 10036 ms     | 0x6817 EC_ValidatePublicKey()
 10036 ms     | 0x6817 ret:0x0
 10036 ms  0x6817 ret:0x7f479cdd3f00
 10036 ms  SECKEY_ECParamsToKeySize()
 10036 ms  0x6817 ret:0xff
 10036 ms  0x6817 PK11_DeriveWithFlags()
 10036 ms  0x6817 basekey:0x7f479d2aaf80
 10036 ms     | 0x6817 PK11_DeriveWithTemplate()
 10036 ms  0x6817 ret:0x7f479d2bb300
 10036 ms  0x6817 PK11_Derive()
 10036 ms  0x6817 basekey:0x7f479cdd3f00
 10036 ms     | 0x6817 PK11_DeriveWithTemplate()
 10036 ms  0x6817 ret:0x7f479d2bb400
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479d2bb400
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2aaf80
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479d2bb400
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479cdd3f00
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479d2bb400
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2bb300
 10037 ms  0x6817 PK11_Derive()
 10037 ms  0x6817 basekey:0x7f479d2bb480
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2bb500
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479cdd3f00
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2bb400
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479cdd3f00
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2bb300
 10037 ms  0x6817 PK11_DeriveWithFlags()
 10037 ms  0x6817 basekey:0x7f479cdd3f00
 10037 ms     | 0x6817 PK11_DeriveWithTemplate()
 10037 ms  0x6817 ret:0x7f479d2bb300
 10039 ms  0x6817 PR_Connect()
 10039 ms  0x6817 fd:0x7f47a143b370
 10042 ms  0x6817 PK11_Derive()
 10042 ms  0x6817 basekey:0x7f479d2bb300
 10042 ms     | 0x6817 PK11_DeriveWithTemplate()
 10042 ms  0x6817 ret:0x7f479d2bb480
 10042 ms  0x6817 PK11_PubDeriveWithKDF()
 10042 ms  0x6817 seckey:0x7f47a1807820
 10042 ms     | 0x6817 EC_ValidatePublicKey()
 10042 ms     | 0x6817 ret:0x0
 10043 ms  0x6817 ret:0x7f479d2bb300
 10043 ms  SECKEY_ECParamsToKeySize()
 10043 ms  0x6817 ret:0xff
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2bb480
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe300
 10043 ms  0x6817 PK11_Derive()
 10043 ms  0x6817 basekey:0x7f479d2bb300
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe380
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2fe380
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2bb480
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2fe380
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2bb300
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2fe380
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe300
 10043 ms  0x6817 PK11_Derive()
 10043 ms  0x6817 basekey:0x7f479d2fe400
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe480
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2bb300
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe380
 10043 ms  0x6817 PK11_DeriveWithFlags()
 10043 ms  0x6817 basekey:0x7f479d2bb300
 10043 ms     | 0x6817 PK11_DeriveWithTemplate()
 10043 ms  0x6817 ret:0x7f479d2fe300
 10044 ms  0x6817 PK11_DeriveWithFlags()
 10044 ms  0x6817 basekey:0x7f479d2bb300
 10044 ms     | 0x6817 PK11_DeriveWithTemplate()
 10044 ms  0x6817 ret:0x7f479d2fe300
           /* TID 0x681f */
 10044 ms  0x681f PR_Close()
 10044 ms  0x681f fd:0x7f47a13b0ca0
           /* TID 0x687f */
 10045 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10045 ms  0x687f ret:0x0
 10045 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10045 ms  0x687f ret:0x0
           /* TID 0x6817 */
 10045 ms  0x6817 SSL_AuthCertificateComplete()
 10045 ms  0x6817 fd:0x7f47a13b0880
 10045 ms  0x6817 err:0x0
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2ab580
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2fe300
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2ab580
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2fe400
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2ab580
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2ab980
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479cdd3800
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2bb080
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479cdd3800
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2bb100
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2fe400
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2bb100
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2fe400
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2fe580
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479cdd3800
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2aab00
 10046 ms     | 0x6817 PK11_Encrypt()
 10046 ms     | 0x6817 symkey:0x7f479d2bb080
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2fe300
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2aab00
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2fe300
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2fe580
 10046 ms     | 0x6817 PK11_DeriveWithFlags()
 10046 ms     | 0x6817 basekey:0x7f479d2ab580
 10046 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10046 ms     | 0x6817 ret:0x7f479d2bb080
 10046 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10046 ms     | 0x6817 privk:0x7f47a1319820::7f47a1319820  a0 d1 43 a1                                      ..C.
 10046 ms     | 0x6817 privk:0x7f47a1319820::7f47a1319820  e5 e5 e5 e5                                      ....
 10046 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10046 ms     | 0x6817 privk:0x7f47a1315820::7f47a1315820  50 db 43 a1                                      P.C.
 10046 ms     | 0x6817 privk:0x7f47a1315820::7f47a1315820  e5 e5 e5 e5                                      ....
 10047 ms  0x6817 SSL_AuthCertificateComplete()
 10047 ms  0x6817 fd:0x7f47a134be80
 10047 ms  0x6817 err:0x0
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2fe480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479c9a1b80
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2fe480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479cdd3800
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2fe480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2ab580
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2bb480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe580
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2bb480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe680
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479cdd3800
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe680
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479cdd3800
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe700
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2bb480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe380
 10047 ms     | 0x6817 PK11_Encrypt()
 10047 ms     | 0x6817 symkey:0x7f479d2fe580
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479c9a1b80
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe380
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479c9a1b80
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe700
 10047 ms     | 0x6817 PK11_DeriveWithFlags()
 10047 ms     | 0x6817 basekey:0x7f479d2fe480
 10047 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10047 ms     | 0x6817 ret:0x7f479d2fe580
 10047 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10047 ms     | 0x6817 privk:0x7f47a180a020::7f47a180a020  a0 1b 47 a1                                      ..G.
 10047 ms     | 0x6817 privk:0x7f47a180a020::7f47a180a020  e5 e5 e5 e5                                      ....
 10047 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10047 ms     | 0x6817 privk:0x7f47a1807820::7f47a1807820  70 19 47 a1                                      p.G.
 10047 ms     | 0x6817 privk:0x7f47a1807820::7f47a1807820  e5 e5 e5 e5                                      ....
 10048 ms  0x6817 PK11_Encrypt()
 10048 ms  0x6817 symkey:0x7f479d2fe380
 10048 ms  0x6817 PK11_Encrypt()
 10048 ms  0x6817 symkey:0x7f479d2fe380
 10049 ms  0x6817 PK11_Encrypt()
 10049 ms  0x6817 symkey:0x7f479d2aab00
 10049 ms  0x6817 PK11_Encrypt()
 10049 ms  0x6817 symkey:0x7f479d2fe380
 10049 ms  0x6817 PK11_Derive()
 10049 ms  0x6817 basekey:0x7f479d2bb300
 10049 ms     | 0x6817 PK11_DeriveWithTemplate()
 10049 ms  0x6817 ret:0x7f479d2bb480
 10049 ms  0x6817 PK11_PubDeriveWithKDF()
 10049 ms  0x6817 seckey:0x7f47a1810820
 10050 ms     | 0x6817 EC_ValidatePublicKey()
 10050 ms     | 0x6817 ret:0x0
 10050 ms  0x6817 ret:0x7f479d2bb300
 10050 ms  SECKEY_ECParamsToKeySize()
 10050 ms  0x6817 ret:0xff
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2bb480
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe480
 10050 ms  0x6817 PK11_Derive()
 10050 ms  0x6817 basekey:0x7f479d2bb300
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe700
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2fe700
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2bb480
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2fe700
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2bb300
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2fe700
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe480
 10050 ms  0x6817 PK11_Derive()
 10050 ms  0x6817 basekey:0x7f479d2fe880
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe980
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2bb300
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe700
 10050 ms  0x6817 PK11_DeriveWithFlags()
 10050 ms  0x6817 basekey:0x7f479d2bb300
 10050 ms     | 0x6817 PK11_DeriveWithTemplate()
 10050 ms  0x6817 ret:0x7f479d2fe480
 10051 ms  0x6817 PK11_DeriveWithFlags()
 10051 ms  0x6817 basekey:0x7f479d2bb300
 10051 ms     | 0x6817 PK11_DeriveWithTemplate()
 10051 ms  0x6817 ret:0x7f479d2fe480
 10051 ms  0x6817 SSL_AuthCertificateComplete()
 10051 ms  0x6817 fd:0x7f479e5abc70
 10051 ms  0x6817 err:0x0
 10051 ms     | 0x6817 PK11_DeriveWithFlags()
 10051 ms     | 0x6817 basekey:0x7f479d2fe980
 10051 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10051 ms     | 0x6817 ret:0x7f479d2fe480
 10051 ms     | 0x6817 PK11_DeriveWithFlags()
 10051 ms     | 0x6817 basekey:0x7f479d2fe980
 10051 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10051 ms     | 0x6817 ret:0x7f479d2fe880
 10051 ms     | 0x6817 PK11_DeriveWithFlags()
 10051 ms     | 0x6817 basekey:0x7f479d2fe980
 10051 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10051 ms     | 0x6817 ret:0x7f479d2fea80
 10051 ms     | 0x6817 PK11_DeriveWithFlags()
 10051 ms     | 0x6817 basekey:0x7f479d2bb480
 10051 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fed00
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2bb480
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fed80
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2fe880
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fed80
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2fe880
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fef00
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2bb480
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fe700
 10052 ms     | 0x6817 PK11_Encrypt()
 10052 ms     | 0x6817 symkey:0x7f479d2fed00
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2fe480
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fe700
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2fe480
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fef00
 10052 ms     | 0x6817 PK11_DeriveWithFlags()
 10052 ms     | 0x6817 basekey:0x7f479d2fe980
 10052 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10052 ms     | 0x6817 ret:0x7f479d2fed00
 10052 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10052 ms     | 0x6817 privk:0x7f47a1814820::7f47a1814820  c0 1e 47 a1                                      ..G.
 10052 ms     | 0x6817 privk:0x7f47a1814820::7f47a1814820  e5 e5 e5 e5                                      ....
 10052 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10052 ms     | 0x6817 privk:0x7f47a1810820::7f47a1810820  e0 1c 47 a1                                      ..G.
 10052 ms     | 0x6817 privk:0x7f47a1810820::7f47a1810820  e5 e5 e5 e5                                      ....
 10053 ms  0x6817 PK11_Encrypt()
 10053 ms  0x6817 symkey:0x7f479d2fe700
 10053 ms  0x6817 PK11_Encrypt()
 10053 ms  0x6817 symkey:0x7f479d2fe380
 10054 ms  0x6817 SSL_ImportFD()
 10054 ms  0x6817 ret:0x7f47a143b6a0
 10054 ms  0x6817 SSL_AuthCertificateHook()
 10054 ms  0x6817 fd:0x7f47a143b6a0
 10054 ms  0x6817 ret:0x0
 10054 ms  0x6817 PR_Connect()
 10054 ms  0x6817 fd:0x7f47a143b6a0
 10054 ms  0x6817 SSL_ImportFD()
 10054 ms  0x6817 ret:0x7f47a143b550
 10054 ms  0x6817 SSL_AuthCertificateHook()
 10054 ms  0x6817 fd:0x7f47a143b550
 10054 ms  0x6817 ret:0x0
 10054 ms  0x6817 PR_Connect()
 10054 ms  0x6817 fd:0x7f47a143b550
 10059 ms  0x6817 SECKEY_DestroyPrivateKey()
 10059 ms  0x6817 privk:0x7f479c730020::7f479c730020  e0 87 48 9b                                      ..H.
 10059 ms  0x6817 privk:0x7f479c730020::7f479c730020  e5 e5 e5 e5                                      ....
 10059 ms  0x6817 SECKEY_DestroyPrivateKey()
 10059 ms  0x6817 privk:0x7f479c719020::7f479c719020  c0 84 48 9b                                      ..H.
 10059 ms  0x6817 privk:0x7f479c719020::7f479c719020  e5 e5 e5 e5                                      ....
 10059 ms  0x6817 PR_Close()
 10059 ms  0x6817 fd:0x7f479b7a7160
 10059 ms     | 0x6817 PK11_Encrypt()
 10059 ms     | 0x6817 symkey:0x7f479cdd3680
           /* TID 0x681f */
 10075 ms  0x681f PR_Close()
 10075 ms  0x681f fd:0x7f479b48b400
           /* TID 0x68b7 */
 10076 ms  0x68b7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10076 ms  0x68b7 ret:0x0
 10076 ms  0x68b7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10076 ms  0x68b7 ret:0x0
           /* TID 0x6817 */
 10076 ms  0x6817 SSL_AuthCertificateComplete()
 10076 ms  0x6817 fd:0x7f47a13b0670
 10076 ms  0x6817 err:0x0
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2bb500
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479cdd3180
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2bb500
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479cdd3080
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2bb500
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2bb300
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2aaf80
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2bb480
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2aaf80
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2fe980
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479cdd3080
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2fe980
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479cdd3080
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2fef00
 10076 ms     | 0x6817 PK11_DeriveWithFlags()
 10076 ms     | 0x6817 basekey:0x7f479d2aaf80
 10076 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10076 ms     | 0x6817 ret:0x7f479d2bb400
 10076 ms     | 0x6817 PK11_Encrypt()
 10076 ms     | 0x6817 symkey:0x7f479d2bb480
 10077 ms     | 0x6817 PK11_DeriveWithFlags()
 10077 ms     | 0x6817 basekey:0x7f479cdd3180
 10077 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10077 ms     | 0x6817 ret:0x7f479d2bb400
 10077 ms     | 0x6817 PK11_DeriveWithFlags()
 10077 ms     | 0x6817 basekey:0x7f479cdd3180
 10077 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10077 ms     | 0x6817 ret:0x7f479d2fef00
 10077 ms     | 0x6817 PK11_DeriveWithFlags()
 10077 ms     | 0x6817 basekey:0x7f479d2bb500
 10077 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10077 ms     | 0x6817 ret:0x7f479d2bb480
 10077 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10077 ms     | 0x6817 privk:0x7f47a14a5020::7f47a14a5020  e0 17 47 a1                                      ..G.
 10077 ms     | 0x6817 privk:0x7f47a14a5020::7f47a14a5020  e5 e5 e5 e5                                      ....
 10077 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10077 ms     | 0x6817 privk:0x7f47a1498020::7f47a1498020  80 cd 44 a1                                      ..D.
 10077 ms     | 0x6817 privk:0x7f47a1498020::7f47a1498020  e5 e5 e5 e5                                      ....
 10077 ms  0x6817 PK11_Encrypt()
 10077 ms  0x6817 symkey:0x7f479d2bb400
 10078 ms  0x6817 PK11_Encrypt()
 10078 ms  0x6817 symkey:0x7f479d2fe380
 10114 ms  0x6817 PK11_DeriveWithFlags()
 10114 ms  0x6817 basekey:0x7f479d2bb080
 10114 ms     | 0x6817 PK11_DeriveWithTemplate()
 10114 ms  0x6817 ret:0x7f479cdd3f00
 10114 ms  0x6817 PK11_DeriveWithFlags()
 10114 ms  0x6817 basekey:0x7f479d2bb080
 10114 ms     | 0x6817 PK11_DeriveWithTemplate()
 10114 ms  0x6817 ret:0x7f479cdd3f00
 10114 ms  0x6817 PR_Close()
 10114 ms  0x6817 fd:0x7f47a13b0880
 10114 ms     | 0x6817 PK11_Encrypt()
 10114 ms     | 0x6817 symkey:0x7f479d2aab00
 10122 ms  0x6817 SECKEY_CreateECPrivateKey()
 10122 ms  0x6817 cx:0x7f479b79ccc8
 10123 ms     | 0x6817 EC_ValidatePublicKey()
 10123 ms     | 0x6817 ret:0x0
 10123 ms  0x6817 ret:0x7f479c9ad020::7f479c9ad020  10 85 48 9b                                      ..H.
 10123 ms  0x6817 SECKEY_CreateECPrivateKey()
 10123 ms  0x6817 cx:0x7f479b79ccc8
 10124 ms     | 0x6817 EC_ValidatePublicKey()
 10130 ms     | 0x6817 ret:0x0
 10130 ms  0x6817 ret:0x7f47a131e820::7f47a131e820  80 c3 44 a1                                      ..D.
 10130 ms  0x6817 PK11_DeriveWithFlags()
 10130 ms  0x6817 basekey:0x7f479d2fe580
 10130 ms     | 0x6817 PK11_DeriveWithTemplate()
 10130 ms  0x6817 ret:0x7f479d2ab980
 10130 ms  0x6817 PK11_DeriveWithFlags()
 10130 ms  0x6817 basekey:0x7f479d2fe580
 10130 ms     | 0x6817 PK11_DeriveWithTemplate()
 10131 ms  0x6817 ret:0x7f479d2ab980
 10131 ms  0x6817 PK11_Encrypt()
 10131 ms  0x6817 symkey:0x7f479d2fe380
 10131 ms  0x6817 SECKEY_CreateECPrivateKey()
 10131 ms  0x6817 cx:0x7f479b79ce68
 10132 ms     | 0x6817 EC_ValidatePublicKey()
 10132 ms     | 0x6817 ret:0x0
 10132 ms  0x6817 ret:0x7f47a14a4820::7f47a14a4820  30 cd 44 a1                                      0.D.
 10132 ms  0x6817 SECKEY_CreateECPrivateKey()
 10132 ms  0x6817 cx:0x7f479b79ce68
 10133 ms     | 0x6817 EC_ValidatePublicKey()
 10135 ms     | 0x6817 ret:0x0
 10135 ms  0x6817 ret:0x7f47a1809020::7f47a1809020  40 12 47 a1                                      @.G.
 10136 ms  0x6817 PK11_DeriveWithFlags()
 10136 ms  0x6817 basekey:0x7f479d2fed00
 10136 ms     | 0x6817 PK11_DeriveWithTemplate()
 10136 ms  0x6817 ret:0x7f479d2ab980
 10136 ms  0x6817 PK11_DeriveWithFlags()
 10136 ms  0x6817 basekey:0x7f479d2fed00
 10136 ms     | 0x6817 PK11_DeriveWithTemplate()
 10136 ms  0x6817 ret:0x7f479d2ab980
 10136 ms  0x6817 PR_Close()
 10136 ms  0x6817 fd:0x7f479e5abc70
 10136 ms     | 0x6817 PK11_Encrypt()
 10136 ms     | 0x6817 symkey:0x7f479d2fe700
 10151 ms  0x6817 PK11_DeriveWithFlags()
 10151 ms  0x6817 basekey:0x7f479d2bb480
 10151 ms     | 0x6817 PK11_DeriveWithTemplate()
 10151 ms  0x6817 ret:0x7f479d2fea80
 10151 ms  0x6817 PK11_DeriveWithFlags()
 10151 ms  0x6817 basekey:0x7f479d2bb480
 10151 ms     | 0x6817 PK11_DeriveWithTemplate()
 10151 ms  0x6817 ret:0x7f479d2fea80
 10152 ms  0x6817 PR_Close()
 10152 ms  0x6817 fd:0x7f47a13b0670
 10152 ms     | 0x6817 PK11_Encrypt()
 10152 ms     | 0x6817 symkey:0x7f479d2bb400
 10199 ms  0x6817 PK11_Derive()
 10199 ms  0x6817 basekey:0x7f479d2bb300
 10199 ms     | 0x6817 PK11_DeriveWithTemplate()
 10199 ms  0x6817 ret:0x7f479cdd3080
 10199 ms  0x6817 PK11_PubDeriveWithKDF()
 10199 ms  0x6817 seckey:0x7f479c9ad020
 10200 ms     | 0x6817 EC_ValidatePublicKey()
 10200 ms     | 0x6817 ret:0x0
 10201 ms  0x6817 ret:0x7f479d2bb300
 10201 ms  SECKEY_ECParamsToKeySize()
 10201 ms  0x6817 ret:0xff
 10201 ms  0x6817 PK11_DeriveWithFlags()
 10201 ms  0x6817 basekey:0x7f479cdd3080
 10201 ms     | 0x6817 PK11_DeriveWithTemplate()
 10202 ms  0x6817 ret:0x7f479cdd3180
 10202 ms  0x6817 PK11_Derive()
 10202 ms  0x6817 basekey:0x7f479d2bb300
 10202 ms     | 0x6817 PK11_DeriveWithTemplate()
 10202 ms  0x6817 ret:0x7f479d2bb480
 10202 ms  0x6817 PK11_DeriveWithFlags()
 10202 ms  0x6817 basekey:0x7f479d2bb480
 10202 ms     | 0x6817 PK11_DeriveWithTemplate()
 10202 ms  0x6817 ret:0x7f479cdd3080
 10202 ms  0x6817 PK11_DeriveWithFlags()
 10202 ms  0x6817 basekey:0x7f479d2bb480
 10202 ms     | 0x6817 PK11_DeriveWithTemplate()
 10202 ms  0x6817 ret:0x7f479d2bb300
 10202 ms  0x6817 PK11_DeriveWithFlags()
 10202 ms  0x6817 basekey:0x7f479d2bb480
 10202 ms     | 0x6817 PK11_DeriveWithTemplate()
 10202 ms  0x6817 ret:0x7f479cdd3180
 10202 ms  0x6817 PK11_Derive()
 10202 ms  0x6817 basekey:0x7f479d2fe980
 10202 ms     | 0x6817 PK11_DeriveWithTemplate()
 10203 ms  0x6817 ret:0x7f479d2bb400
 10203 ms  0x6817 PK11_DeriveWithFlags()
 10203 ms  0x6817 basekey:0x7f479d2bb300
 10203 ms     | 0x6817 PK11_DeriveWithTemplate()
 10203 ms  0x6817 ret:0x7f479d2bb480
 10203 ms  0x6817 PK11_DeriveWithFlags()
 10203 ms  0x6817 basekey:0x7f479d2bb300
 10203 ms     | 0x6817 PK11_DeriveWithTemplate()
 10203 ms  0x6817 ret:0x7f479cdd3180
           /* TID 0x68b8 */
 10206 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10206 ms  0x68b8 ret:0x0
 10206 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10206 ms  0x68b8 ret:0x0
           /* TID 0x6817 */
 10207 ms  0x6817 PK11_DeriveWithFlags()
 10207 ms  0x6817 basekey:0x7f479d2bb300
 10207 ms     | 0x6817 PK11_DeriveWithTemplate()
 10207 ms  0x6817 ret:0x7f479cdd3180
 10212 ms  0x6817 SSL_AuthCertificateComplete()
 10212 ms  0x6817 fd:0x7f47a143b6a0
 10212 ms  0x6817 err:0x0
 10212 ms     | 0x6817 PK11_DeriveWithFlags()
 10212 ms     | 0x6817 basekey:0x7f479d2bb400
 10212 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10212 ms     | 0x6817 ret:0x7f479cdd3180
 10212 ms     | 0x6817 PK11_DeriveWithFlags()
 10212 ms     | 0x6817 basekey:0x7f479d2bb400
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fe980
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479d2bb400
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fea80
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479cdd3080
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fe880
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479cdd3080
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fe480
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479d2fe980
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fe480
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479d2fe980
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2fed00
 10213 ms     | 0x6817 PK11_DeriveWithFlags()
 10213 ms     | 0x6817 basekey:0x7f479cdd3080
 10213 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10213 ms     | 0x6817 ret:0x7f479d2bb480
 10213 ms     | 0x6817 PK11_Encrypt()
 10213 ms     | 0x6817 symkey:0x7f479d2fe880
 10215 ms     | 0x6817 PK11_DeriveWithFlags()
 10215 ms     | 0x6817 basekey:0x7f479cdd3180
 10216 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10216 ms     | 0x6817 ret:0x7f479d2bb480
 10216 ms     | 0x6817 PK11_DeriveWithFlags()
 10216 ms     | 0x6817 basekey:0x7f479cdd3180
 10216 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10216 ms     | 0x6817 ret:0x7f479d2fed00
 10216 ms     | 0x6817 PK11_DeriveWithFlags()
 10216 ms     | 0x6817 basekey:0x7f479d2bb400
 10216 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10216 ms     | 0x6817 ret:0x7f479d2fe880
 10216 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10216 ms     | 0x6817 privk:0x7f47a131e820::7f47a131e820  80 c3 44 a1                                      ..D.
 10216 ms     | 0x6817 privk:0x7f47a131e820::7f47a131e820  e5 e5 e5 e5                                      ....
 10216 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10216 ms     | 0x6817 privk:0x7f479c9ad020::7f479c9ad020  10 85 48 9b                                      ..H.
 10217 ms     | 0x6817 privk:0x7f479c9ad020::7f479c9ad020  e5 e5 e5 e5                                      ....
 10218 ms  0x6817 PK11_Encrypt()
 10218 ms  0x6817 symkey:0x7f479d2bb480
 10219 ms  0x6817 PK11_Encrypt()
 10219 ms  0x6817 symkey:0x7f479d2bb480
 10219 ms  0x6817 PK11_Derive()
 10219 ms  0x6817 basekey:0x7f479d2bb300
 10219 ms     | 0x6817 PK11_DeriveWithTemplate()
 10219 ms  0x6817 ret:0x7f479cdd3080
 10219 ms  0x6817 PK11_PubDeriveWithKDF()
 10219 ms  0x6817 seckey:0x7f47a14a4820
 10220 ms     | 0x6817 EC_ValidatePublicKey()
 10220 ms     | 0x6817 ret:0x0
 10221 ms  0x6817 ret:0x7f479d2bb300
 10221 ms  SECKEY_ECParamsToKeySize()
 10221 ms  0x6817 ret:0xff
 10221 ms  0x6817 PK11_DeriveWithFlags()
 10221 ms  0x6817 basekey:0x7f479cdd3080
 10221 ms     | 0x6817 PK11_DeriveWithTemplate()
 10221 ms  0x6817 ret:0x7f479d2bb400
 10221 ms  0x6817 PK11_Derive()
 10221 ms  0x6817 basekey:0x7f479d2bb300
 10221 ms     | 0x6817 PK11_DeriveWithTemplate()
 10221 ms  0x6817 ret:0x7f479d2fed00
 10221 ms  0x6817 PK11_DeriveWithFlags()
 10221 ms  0x6817 basekey:0x7f479d2fed00
 10221 ms     | 0x6817 PK11_DeriveWithTemplate()
 10221 ms  0x6817 ret:0x7f479cdd3080
 10221 ms  0x6817 PK11_DeriveWithFlags()
 10221 ms  0x6817 basekey:0x7f479d2fed00
 10221 ms     | 0x6817 PK11_DeriveWithTemplate()
 10221 ms  0x6817 ret:0x7f479d2bb300
 10222 ms  0x6817 PK11_DeriveWithFlags()
 10222 ms  0x6817 basekey:0x7f479d2fed00
 10222 ms     | 0x6817 PK11_DeriveWithTemplate()
 10222 ms  0x6817 ret:0x7f479d2bb400
 10222 ms  0x6817 PK11_Derive()
 10222 ms  0x6817 basekey:0x7f479d2fed80
 10222 ms     | 0x6817 PK11_DeriveWithTemplate()
 10222 ms  0x6817 ret:0x7f479d2fe700
 10222 ms  0x6817 PK11_DeriveWithFlags()
 10222 ms  0x6817 basekey:0x7f479d2bb300
 10222 ms     | 0x6817 PK11_DeriveWithTemplate()
 10222 ms  0x6817 ret:0x7f479d2fed00
 10222 ms  0x6817 PK11_DeriveWithFlags()
 10222 ms  0x6817 basekey:0x7f479d2bb300
 10222 ms     | 0x6817 PK11_DeriveWithTemplate()
 10222 ms  0x6817 ret:0x7f479d2bb400
           /* TID 0x687f */
 10224 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10224 ms  0x687f ret:0x0
 10224 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10224 ms  0x687f ret:0x0
           /* TID 0x6817 */
 10225 ms  0x6817 PK11_DeriveWithFlags()
 10225 ms  0x6817 basekey:0x7f479d2bb300
 10225 ms     | 0x6817 PK11_DeriveWithTemplate()
 10225 ms  0x6817 ret:0x7f479d2bb400
 10225 ms  0x6817 SSL_AuthCertificateComplete()
 10225 ms  0x6817 fd:0x7f47a143b550
 10225 ms  0x6817 err:0x0
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479d2fe700
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10227 ms     | 0x6817 ret:0x7f479d2bb400
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479d2fe700
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10227 ms     | 0x6817 ret:0x7f479d2fed80
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479d2fe700
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10227 ms     | 0x6817 ret:0x7f479d2ab980
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479cdd3080
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10227 ms     | 0x6817 ret:0x7f479d2fe400
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479cdd3080
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10227 ms     | 0x6817 ret:0x7f479d2fe300
 10227 ms     | 0x6817 PK11_DeriveWithFlags()
 10227 ms     | 0x6817 basekey:0x7f479d2fed80
 10227 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2fe300
 10228 ms     | 0x6817 PK11_DeriveWithFlags()
 10228 ms     | 0x6817 basekey:0x7f479d2fed80
 10228 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2bb080
 10228 ms     | 0x6817 PK11_DeriveWithFlags()
 10228 ms     | 0x6817 basekey:0x7f479cdd3080
 10228 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2fed00
 10228 ms     | 0x6817 PK11_Encrypt()
 10228 ms     | 0x6817 symkey:0x7f479d2fe400
 10228 ms     | 0x6817 PK11_DeriveWithFlags()
 10228 ms     | 0x6817 basekey:0x7f479d2bb400
 10228 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2fed00
 10228 ms     | 0x6817 PK11_DeriveWithFlags()
 10228 ms     | 0x6817 basekey:0x7f479d2bb400
 10228 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2bb080
 10228 ms     | 0x6817 PK11_DeriveWithFlags()
 10228 ms     | 0x6817 basekey:0x7f479d2fe700
 10228 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10228 ms     | 0x6817 ret:0x7f479d2fe400
 10228 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10228 ms     | 0x6817 privk:0x7f47a1809020::7f47a1809020  40 12 47 a1                                      @.G.
 10229 ms     | 0x6817 privk:0x7f47a1809020::7f47a1809020  e5 e5 e5 e5                                      ....
 10229 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10229 ms     | 0x6817 privk:0x7f47a14a4820::7f47a14a4820  30 cd 44 a1                                      0.D.
 10229 ms     | 0x6817 privk:0x7f47a14a4820::7f47a14a4820  e5 e5 e5 e5                                      ....
 10230 ms  0x6817 PK11_Encrypt()
 10230 ms  0x6817 symkey:0x7f479d2fed00
 10230 ms  0x6817 PK11_Encrypt()
 10230 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 10277 ms  0x681f PR_Close()
 10277 ms  0x681f fd:0x7f47a0147880
           /* TID 0x6817 */
 10281 ms  0x6817 PK11_DeriveWithFlags()
 10281 ms  0x6817 basekey:0x7f479d2fe880
 10281 ms     | 0x6817 PK11_DeriveWithTemplate()
 10281 ms  0x6817 ret:0x7f479d2bb300
 10281 ms  0x6817 PK11_DeriveWithFlags()
 10281 ms  0x6817 basekey:0x7f479d2fe880
 10281 ms     | 0x6817 PK11_DeriveWithTemplate()
 10282 ms  0x6817 ret:0x7f479d2bb300
 10295 ms  0x6817 PK11_DeriveWithFlags()
 10295 ms  0x6817 basekey:0x7f479d2fe400
 10295 ms     | 0x6817 PK11_DeriveWithTemplate()
 10295 ms  0x6817 ret:0x7f479d2bb300
 10296 ms  0x6817 PK11_DeriveWithFlags()
 10296 ms  0x6817 basekey:0x7f479d2fe400
 10296 ms     | 0x6817 PK11_DeriveWithTemplate()
 10296 ms  0x6817 ret:0x7f479d2bb300
 10296 ms  0x6817 PR_Close()
 10296 ms  0x6817 fd:0x7f47a143b550
 10296 ms     | 0x6817 PK11_Encrypt()
 10296 ms     | 0x6817 symkey:0x7f479d2fed00
 10352 ms  0x6817 PK11_Encrypt()
 10352 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 10358 ms  0x681f PR_Close()
 10358 ms  0x681f fd:0x7f47a143b2e0
 10361 ms  0x681f PR_Close()
 10361 ms  0x681f fd:0x7f479b7a7d90
 10368 ms  0x681f PR_Close()
 10368 ms  0x681f fd:0x7f479b7a7d90
 10370 ms  0x681f PR_Close()
 10370 ms  0x681f fd:0x7f479b48b490
 10376 ms  0x681f PR_Close()
 10376 ms  0x681f fd:0x7f479b48b490
           /* TID 0x6817 */
 10389 ms  0x6817 PK11_Encrypt()
 10389 ms  0x6817 symkey:0x7f479d2fe380
 10433 ms  0x6817 PK11_Encrypt()
 10433 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 10466 ms  0x681f PR_Close()
 10466 ms  0x681f fd:0x7f479c73ab80
 10528 ms  0x681f PR_Close()
 10528 ms  0x681f fd:0x7f479c73abe0
           /* TID 0x6817 */
 10551 ms  0x6817 SSL_ImportFD()
 10551 ms  0x6817 ret:0x7f47a14f2040
 10551 ms  0x6817 SSL_AuthCertificateHook()
 10551 ms  0x6817 fd:0x7f47a14f2040
 10551 ms  0x6817 ret:0x0
 10551 ms  0x6817 PK11_Encrypt()
 10551 ms  0x6817 symkey:0x7f479d2bb480
 10552 ms  0x6817 PR_Connect()
 10552 ms  0x6817 fd:0x7f47a14f2040
 10552 ms  0x6817 SSL_ImportFD()
 10552 ms  0x6817 ret:0x7f479c73abe0
 10552 ms  0x6817 SSL_AuthCertificateHook()
 10552 ms  0x6817 fd:0x7f479c73abe0
 10552 ms  0x6817 ret:0x0
 10552 ms  0x6817 PR_Connect()
 10552 ms  0x6817 fd:0x7f479c73abe0
 10552 ms  0x6817 PK11_Encrypt()
 10552 ms  0x6817 symkey:0x7f479d2bb480
 10575 ms  0x6817 PK11_Encrypt()
 10575 ms  0x6817 symkey:0x7f479d2fe380
 10583 ms  0x6817 PK11_Encrypt()
 10583 ms  0x6817 symkey:0x7f479d2fe380
 10619 ms  0x6817 SECKEY_CreateECPrivateKey()
 10619 ms  0x6817 cx:0x7f479b79ce68
 10620 ms     | 0x6817 EC_ValidatePublicKey()
 10620 ms     | 0x6817 ret:0x0
 10620 ms  0x6817 ret:0x7f47a180a820::7f47a180a820  70 d9 4d a1                                      p.M.
 10620 ms  0x6817 SECKEY_CreateECPrivateKey()
 10620 ms  0x6817 cx:0x7f479b79ce68
 10620 ms     | 0x6817 EC_ValidatePublicKey()
 10622 ms     | 0x6817 ret:0x0
 10622 ms  0x6817 ret:0x7f47a1811020::7f47a1811020  00 01 61 a1                                      ..a.
 10622 ms  0x6817 SECKEY_CreateECPrivateKey()
 10622 ms  0x6817 cx:0x7f479b79cb28
 10623 ms     | 0x6817 EC_ValidatePublicKey()
 10623 ms     | 0x6817 ret:0x0
 10623 ms  0x6817 ret:0x7f47a1815820::7f47a1815820  60 0a 61 a1                                      `.a.
 10623 ms  0x6817 SECKEY_CreateECPrivateKey()
 10623 ms  0x6817 cx:0x7f479b79cb28
 10624 ms     | 0x6817 EC_ValidatePublicKey()
 10625 ms     | 0x6817 ret:0x0
 10625 ms  0x6817 ret:0x7f47a1a0a820::7f47a1a0a820  c0 b4 62 a1                                      ..b.
           /* TID 0x681f */
 10652 ms  0x681f PR_Close()
 10652 ms  0x681f fd:0x7f47a143b5e0
 10687 ms  0x681f PR_Close()
 10687 ms  0x681f fd:0x7f47a164af70
 10689 ms  0x681f PR_Close()
 10689 ms  0x681f fd:0x7f47a13b0fa0
           /* TID 0x6817 */
 10690 ms  0x6817 PK11_Derive()
 10690 ms  0x6817 basekey:0x7f479d2ab980
 10690 ms     | 0x6817 PK11_DeriveWithTemplate()
 10690 ms  0x6817 ret:0x7f479d2fed80
 10690 ms  0x6817 PK11_PubDeriveWithKDF()
 10690 ms  0x6817 seckey:0x7f47a180a820
 10690 ms     | 0x6817 EC_ValidatePublicKey()
 10690 ms     | 0x6817 ret:0x0
 10691 ms  0x6817 ret:0x7f479d2ab980
 10691 ms  SECKEY_ECParamsToKeySize()
 10691 ms  0x6817 ret:0xff
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2fed80
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2bb400
 10691 ms  0x6817 PK11_Derive()
 10691 ms  0x6817 basekey:0x7f479d2ab980
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2fe400
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2fe400
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2fed80
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2fe400
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2ab980
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2fe400
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2bb400
 10691 ms  0x6817 PK11_Derive()
 10691 ms  0x6817 basekey:0x7f479d2fe300
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2fed00
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2ab980
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2fe400
 10691 ms  0x6817 PK11_DeriveWithFlags()
 10691 ms  0x6817 basekey:0x7f479d2ab980
 10691 ms     | 0x6817 PK11_DeriveWithTemplate()
 10691 ms  0x6817 ret:0x7f479d2bb400
 10692 ms  0x6817 PK11_DeriveWithFlags()
 10692 ms  0x6817 basekey:0x7f479d2ab980
 10692 ms     | 0x6817 PK11_DeriveWithTemplate()
 10692 ms  0x6817 ret:0x7f479d2bb400
 10692 ms  0x6817 SSL_AuthCertificateComplete()
 10692 ms  0x6817 fd:0x7f479c73abe0
 10692 ms  0x6817 err:0x0
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed00
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2bb400
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed00
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2fe300
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed00
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2bb300
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed80
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479cdd3080
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed80
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2fe700
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fe300
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2fe700
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fe300
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2bb080
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2fed80
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2fe400
 10692 ms     | 0x6817 PK11_Encrypt()
 10692 ms     | 0x6817 symkey:0x7f479cdd3080
 10692 ms     | 0x6817 PK11_DeriveWithFlags()
 10692 ms     | 0x6817 basekey:0x7f479d2bb400
 10692 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10692 ms     | 0x6817 ret:0x7f479d2fe400
 10693 ms     | 0x6817 PK11_DeriveWithFlags()
 10693 ms     | 0x6817 basekey:0x7f479d2bb400
 10693 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10693 ms     | 0x6817 ret:0x7f479d2bb080
 10693 ms     | 0x6817 PK11_DeriveWithFlags()
 10693 ms     | 0x6817 basekey:0x7f479d2fed00
 10693 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10693 ms     | 0x6817 ret:0x7f479cdd3080
 10693 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10693 ms     | 0x6817 privk:0x7f47a1811020::7f47a1811020  00 01 61 a1                                      ..a.
 10693 ms     | 0x6817 privk:0x7f47a1811020::7f47a1811020  e5 e5 e5 e5                                      ....
 10693 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10693 ms     | 0x6817 privk:0x7f47a180a820::7f47a180a820  70 d9 4d a1                                      p.M.
 10693 ms     | 0x6817 privk:0x7f47a180a820::7f47a180a820  e5 e5 e5 e5                                      ....
 10693 ms  0x6817 PK11_Encrypt()
 10693 ms  0x6817 symkey:0x7f479d2fe400
 10693 ms  0x6817 PK11_Derive()
 10693 ms  0x6817 basekey:0x7f479d2ab980
 10693 ms     | 0x6817 PK11_DeriveWithTemplate()
 10693 ms  0x6817 ret:0x7f479d2fed80
 10693 ms  0x6817 PK11_PubDeriveWithKDF()
 10693 ms  0x6817 seckey:0x7f47a1815820
 10693 ms     | 0x6817 EC_ValidatePublicKey()
 10693 ms     | 0x6817 ret:0x0
 10694 ms  0x6817 ret:0x7f479d2ab980
 10694 ms  SECKEY_ECParamsToKeySize()
 10694 ms  0x6817 ret:0xff
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2fed80
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2fed00
 10694 ms  0x6817 PK11_Derive()
 10694 ms  0x6817 basekey:0x7f479d2ab980
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2bb080
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2bb080
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2fed80
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2bb080
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2ab980
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2bb080
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2fed00
 10694 ms  0x6817 PK11_Derive()
 10694 ms  0x6817 basekey:0x7f479d2bb100
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2aab00
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2ab980
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2bb080
 10694 ms  0x6817 PK11_DeriveWithFlags()
 10694 ms  0x6817 basekey:0x7f479d2ab980
 10694 ms     | 0x6817 PK11_DeriveWithTemplate()
 10694 ms  0x6817 ret:0x7f479d2fed00
 10696 ms  0x6817 PK11_DeriveWithFlags()
 10696 ms  0x6817 basekey:0x7f479d2ab980
 10696 ms     | 0x6817 PK11_DeriveWithTemplate()
 10696 ms  0x6817 ret:0x7f479d2fed00
 10696 ms  0x6817 SSL_AuthCertificateComplete()
 10696 ms  0x6817 fd:0x7f47a14f2040
 10696 ms  0x6817 err:0x0
 10696 ms     | 0x6817 PK11_DeriveWithFlags()
 10696 ms     | 0x6817 basekey:0x7f479d2aab00
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2fed00
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2aab00
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2bb100
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2aab00
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479cdd3f00
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2fed80
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2aaf80
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2fed80
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2bb500
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2bb100
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2bb500
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2bb100
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2fef00
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2fed80
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10697 ms     | 0x6817 ret:0x7f479d2bb080
 10697 ms     | 0x6817 PK11_Encrypt()
 10697 ms     | 0x6817 symkey:0x7f479d2aaf80
 10697 ms     | 0x6817 PK11_DeriveWithFlags()
 10697 ms     | 0x6817 basekey:0x7f479d2fed00
 10697 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10698 ms     | 0x6817 ret:0x7f479d2bb080
 10698 ms     | 0x6817 PK11_DeriveWithFlags()
 10698 ms     | 0x6817 basekey:0x7f479d2fed00
 10698 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10698 ms     | 0x6817 ret:0x7f479d2fef00
 10698 ms     | 0x6817 PK11_DeriveWithFlags()
 10698 ms     | 0x6817 basekey:0x7f479d2aab00
 10698 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10698 ms     | 0x6817 ret:0x7f479d2aaf80
 10698 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10698 ms     | 0x6817 privk:0x7f47a1a0a820::7f47a1a0a820  c0 b4 62 a1                                      ..b.
 10698 ms     | 0x6817 privk:0x7f47a1a0a820::7f47a1a0a820  e5 e5 e5 e5                                      ....
 10698 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10698 ms     | 0x6817 privk:0x7f47a1815820::7f47a1815820  60 0a 61 a1                                      `.a.
 10698 ms     | 0x6817 privk:0x7f47a1815820::7f47a1815820  e5 e5 e5 e5                                      ....
 10698 ms  0x6817 PK11_Encrypt()
 10698 ms  0x6817 symkey:0x7f479d2bb080
 10723 ms  0x6817 SSL_ImportFD()
 10723 ms  0x6817 ret:0x7f47a14f4310
 10723 ms  0x6817 SSL_AuthCertificateHook()
 10723 ms  0x6817 fd:0x7f47a14f4310
 10723 ms  0x6817 ret:0x0
 10723 ms  0x6817 PR_Connect()
 10723 ms  0x6817 fd:0x7f47a14f4310
           /* TID 0x681f */
 10727 ms  0x681f PR_Close()
 10727 ms  0x681f fd:0x7f479c73ab80
           /* TID 0x6817 */
 10735 ms  0x6817 SSL_ImportFD()
 10735 ms  0x6817 ret:0x7f47a164aa90
 10735 ms  0x6817 SSL_AuthCertificateHook()
 10735 ms  0x6817 fd:0x7f47a164aa90
 10735 ms  0x6817 ret:0x0
 10735 ms  0x6817 PR_Connect()
 10735 ms  0x6817 fd:0x7f47a164aa90
 10760 ms  0x6817 PK11_DeriveWithFlags()
 10760 ms  0x6817 basekey:0x7f479cdd3080
 10760 ms     | 0x6817 PK11_DeriveWithTemplate()
 10760 ms  0x6817 ret:0x7f479d2ab980
 10760 ms  0x6817 PK11_DeriveWithFlags()
 10760 ms  0x6817 basekey:0x7f479cdd3080
 10760 ms     | 0x6817 PK11_DeriveWithTemplate()
 10760 ms  0x6817 ret:0x7f479d2ab980
 10760 ms  0x6817 PR_Close()
 10760 ms  0x6817 fd:0x7f479c73abe0
 10760 ms     | 0x6817 PK11_Encrypt()
 10760 ms     | 0x6817 symkey:0x7f479d2fe400
 10764 ms  0x6817 PK11_DeriveWithFlags()
 10764 ms  0x6817 basekey:0x7f479d2aaf80
 10764 ms     | 0x6817 PK11_DeriveWithTemplate()
 10764 ms  0x6817 ret:0x7f479d2bb300
 10764 ms  0x6817 PK11_DeriveWithFlags()
 10764 ms  0x6817 basekey:0x7f479d2aaf80
 10764 ms     | 0x6817 PK11_DeriveWithTemplate()
 10764 ms  0x6817 ret:0x7f479d2bb300
 10764 ms  0x6817 PR_Close()
 10764 ms  0x6817 fd:0x7f47a14f2040
 10765 ms     | 0x6817 PK11_Encrypt()
 10765 ms     | 0x6817 symkey:0x7f479d2bb080
 10791 ms  0x6817 SECKEY_CreateECPrivateKey()
 10791 ms  0x6817 cx:0x7f47a86a5248
 10792 ms     | 0x6817 EC_ValidatePublicKey()
 10792 ms     | 0x6817 ret:0x0
 10792 ms  0x6817 ret:0x7f47a1808820::7f47a1808820  60 0a 61 a1                                      `.a.
 10792 ms  0x6817 SECKEY_CreateECPrivateKey()
 10792 ms  0x6817 cx:0x7f47a86a5248
 10792 ms     | 0x6817 EC_ValidatePublicKey()
 10794 ms     | 0x6817 ret:0x0
 10794 ms  0x6817 ret:0x7f47a180b820::7f47a180b820  c0 b4 62 a1                                      ..b.
 10804 ms  0x6817 SECKEY_CreateECPrivateKey()
 10804 ms  0x6817 cx:0x7f47a86a53e8
 10805 ms     | 0x6817 EC_ValidatePublicKey()
 10805 ms     | 0x6817 ret:0x0
 10805 ms  0x6817 ret:0x7f47a1814820::7f47a1814820  00 e1 6e a1                                      ..n.
 10805 ms  0x6817 SECKEY_CreateECPrivateKey()
 10805 ms  0x6817 cx:0x7f47a86a53e8
 10806 ms     | 0x6817 EC_ValidatePublicKey()
 10807 ms     | 0x6817 ret:0x0
 10807 ms  0x6817 ret:0x7f47a1a03820::7f47a1a03820  30 e3 6e a1                                      0.n.
 10863 ms  0x6817 PK11_Derive()
 10863 ms  0x6817 basekey:0x7f479cdd3f00
 10863 ms     | 0x6817 PK11_DeriveWithTemplate()
 10863 ms  0x6817 ret:0x7f479d2bb100
 10863 ms  0x6817 PK11_PubDeriveWithKDF()
 10863 ms  0x6817 seckey:0x7f47a1808820
 10863 ms     | 0x6817 EC_ValidatePublicKey()
 10863 ms     | 0x6817 ret:0x0
 10865 ms  0x6817 ret:0x7f479cdd3f00
 10865 ms  SECKEY_ECParamsToKeySize()
 10865 ms  0x6817 ret:0xff
 10865 ms  0x6817 PK11_DeriveWithFlags()
 10865 ms  0x6817 basekey:0x7f479d2bb100
 10865 ms     | 0x6817 PK11_DeriveWithTemplate()
 10865 ms  0x6817 ret:0x7f479d2fed00
 10865 ms  0x6817 PK11_Derive()
 10865 ms  0x6817 basekey:0x7f479cdd3f00
 10865 ms     | 0x6817 PK11_DeriveWithTemplate()
 10865 ms  0x6817 ret:0x7f479d2aaf80
 10865 ms  0x6817 PK11_DeriveWithFlags()
 10865 ms  0x6817 basekey:0x7f479d2aaf80
 10865 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479d2bb100
 10866 ms  0x6817 PK11_DeriveWithFlags()
 10866 ms  0x6817 basekey:0x7f479d2aaf80
 10866 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479cdd3f00
 10866 ms  0x6817 PK11_DeriveWithFlags()
 10866 ms  0x6817 basekey:0x7f479d2aaf80
 10866 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479d2fed00
 10866 ms  0x6817 PK11_Derive()
 10866 ms  0x6817 basekey:0x7f479d2bb500
 10866 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479d2bb080
 10866 ms  0x6817 PK11_DeriveWithFlags()
 10866 ms  0x6817 basekey:0x7f479cdd3f00
 10866 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479d2aaf80
 10866 ms  0x6817 PK11_DeriveWithFlags()
 10866 ms  0x6817 basekey:0x7f479cdd3f00
 10866 ms     | 0x6817 PK11_DeriveWithTemplate()
 10866 ms  0x6817 ret:0x7f479d2fed00
 10869 ms  0x6817 PK11_DeriveWithFlags()
 10869 ms  0x6817 basekey:0x7f479cdd3f00
 10869 ms     | 0x6817 PK11_DeriveWithTemplate()
 10869 ms  0x6817 ret:0x7f479d2fed00
 10869 ms  0x6817 SSL_AuthCertificateComplete()
 10869 ms  0x6817 fd:0x7f47a14f4310
 10869 ms  0x6817 err:0x0
 10869 ms     | 0x6817 PK11_DeriveWithFlags()
 10869 ms     | 0x6817 basekey:0x7f479d2bb080
 10869 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10869 ms     | 0x6817 ret:0x7f479d2fed00
 10869 ms     | 0x6817 PK11_DeriveWithFlags()
 10869 ms     | 0x6817 basekey:0x7f479d2bb080
 10869 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10869 ms     | 0x6817 ret:0x7f479d2bb500
 10869 ms     | 0x6817 PK11_DeriveWithFlags()
 10869 ms     | 0x6817 basekey:0x7f479d2bb080
 10869 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10869 ms     | 0x6817 ret:0x7f479d2bb300
 10869 ms     | 0x6817 PK11_DeriveWithFlags()
 10869 ms     | 0x6817 basekey:0x7f479d2bb100
 10870 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10870 ms     | 0x6817 ret:0x7f479d2fe300
 10870 ms     | 0x6817 PK11_DeriveWithFlags()
 10870 ms     | 0x6817 basekey:0x7f479d2bb100
 10870 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10870 ms     | 0x6817 ret:0x7f479d2bb400
 10870 ms     | 0x6817 PK11_DeriveWithFlags()
 10870 ms     | 0x6817 basekey:0x7f479d2bb500
 10870 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10870 ms     | 0x6817 ret:0x7f479d2bb400
 10870 ms     | 0x6817 PK11_DeriveWithFlags()
 10870 ms     | 0x6817 basekey:0x7f479d2bb500
 10870 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10870 ms     | 0x6817 ret:0x7f479cdd3080
 10870 ms     | 0x6817 PK11_DeriveWithFlags()
 10870 ms     | 0x6817 basekey:0x7f479d2bb100
 10870 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10870 ms     | 0x6817 ret:0x7f479d2aaf80
 10870 ms     | 0x6817 PK11_Encrypt()
 10870 ms     | 0x6817 symkey:0x7f479d2fe300
 10874 ms     | 0x6817 PK11_DeriveWithFlags()
 10874 ms     | 0x6817 basekey:0x7f479d2fed00
 10874 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10874 ms     | 0x6817 ret:0x7f479d2aaf80
 10874 ms     | 0x6817 PK11_DeriveWithFlags()
 10874 ms     | 0x6817 basekey:0x7f479d2fed00
 10874 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10874 ms     | 0x6817 ret:0x7f479cdd3080
 10874 ms     | 0x6817 PK11_DeriveWithFlags()
 10874 ms     | 0x6817 basekey:0x7f479d2bb080
 10874 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 10874 ms     | 0x6817 ret:0x7f479d2fe300
 10874 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10874 ms     | 0x6817 privk:0x7f47a180b820::7f47a180b820  c0 b4 62 a1                                      ..b.
 10875 ms     | 0x6817 privk:0x7f47a180b820::7f47a180b820  e5 e5 e5 e5                                      ....
 10875 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 10875 ms     | 0x6817 privk:0x7f47a1808820::7f47a1808820  60 0a 61 a1                                      `.a.
 10875 ms     | 0x6817 privk:0x7f47a1808820::7f47a1808820  e5 e5 e5 e5                                      ....
 10877 ms  0x6817 PK11_Encrypt()
 10877 ms  0x6817 symkey:0x7f479d2aaf80
 10877 ms  0x6817 PK11_Encrypt()
 10877 ms  0x6817 symkey:0x7f479d2aaf80
 10880 ms  SECKEY_ECParamsToKeySize()
 10880 ms  0x6817 ret:0x100
 10880 ms  0x6817 SECKEY_CreateECPrivateKey()
 10880 ms  0x6817 cx:0x7f47a86a53e8
 10882 ms     | 0x6817 EC_ValidatePublicKey()
 10886 ms     | 0x6817 ret:0x0
 10886 ms  0x6817 ret:0x7f47a1a0a020::7f47a1a0a020  60 b0 62 a1                                      `.b.
 10887 ms  0x6817 PK11_PubDeriveWithKDF()
 10887 ms  0x6817 seckey:0x7f47a1a0a020
 10887 ms     | 0x6817 EC_ValidatePublicKey()
 10890 ms     | 0x6817 ret:0x0
 10893 ms  0x6817 ret:0x7f479cdd3f00
 10894 ms  0x6817 PK11_DeriveWithFlags()
 10894 ms  0x6817 basekey:0x7f479cdd3f00
 10894 ms     | 0x6817 PK11_DeriveWithTemplate()
 10894 ms  0x6817 ret:0x7f479d2bb100
 10894 ms  0x6817 PK11_Derive()
 10894 ms  0x6817 basekey:0x7f479d2bb100
 10894 ms     | 0x6817 PK11_DeriveWithTemplate()
 10894 ms  0x6817 ret:0x7f479d2bb080
 10894 ms  0x6817 SECKEY_DestroyPrivateKey()
 10894 ms  0x6817 privk:0x7f47a1a0a020::7f47a1a0a020  60 b0 62 a1                                      `.b.
 10894 ms  0x6817 privk:0x7f47a1a0a020::7f47a1a0a020  e5 e5 e5 e5                                      ....
 10894 ms  0x6817 PK11_Encrypt()
 10894 ms  0x6817 symkey:0x7f479cdd3380
 10897 ms  0x6817 SSL_AuthCertificateComplete()
 10897 ms  0x6817 fd:0x7f47a164aa90
 10897 ms  0x6817 err:0x0
 10897 ms  0x6817 PK11_Encrypt()
 10897 ms  0x6817 symkey:0x7f479cdd3380
 10912 ms  0x6817 SSL_ImportFD()
 10912 ms  0x6817 ret:0x7f47a14f2d00
 10912 ms  0x6817 SSL_AuthCertificateHook()
 10912 ms  0x6817 fd:0x7f47a14f2d00
 10912 ms  0x6817 ret:0x0
 10912 ms  0x6817 PR_Connect()
 10912 ms  0x6817 fd:0x7f47a14f2d00
 10938 ms  0x6817 PK11_DeriveWithFlags()
 10938 ms  0x6817 basekey:0x7f479d2fe300
 10938 ms     | 0x6817 PK11_DeriveWithTemplate()
 10938 ms  0x6817 ret:0x7f479cdd3f00
 10938 ms  0x6817 PK11_DeriveWithFlags()
 10938 ms  0x6817 basekey:0x7f479d2fe300
 10938 ms     | 0x6817 PK11_DeriveWithTemplate()
 10938 ms  0x6817 ret:0x7f479cdd3f00
 10963 ms  0x6817 SECKEY_DestroyPrivateKey()
 10963 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  30 e3 6e a1                                      0.n.
 10964 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  e5 e5 e5 e5                                      ....
 10964 ms  0x6817 SECKEY_DestroyPrivateKey()
 10964 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  00 e1 6e a1                                      ..n.
 10964 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  e5 e5 e5 e5                                      ....
 11005 ms  0x6817 PK11_Encrypt()
 11005 ms  0x6817 symkey:0x7f479d2aaf80
           /* TID 0x681f */
 11032 ms  0x681f PR_Close()
 11032 ms  0x681f fd:0x7f47a134b9d0
 11049 ms  0x681f PR_Close()
 11049 ms  0x681f fd:0x7f47a134b9d0
           /* TID 0x6817 */
 11091 ms  0x6817 PK11_Encrypt()
 11091 ms  0x6817 symkey:0x7f479d2fe380
 11093 ms  0x6817 PK11_Encrypt()
 11093 ms  0x6817 symkey:0x7f479d2fe380
 11094 ms  0x6817 PK11_Encrypt()
 11094 ms  0x6817 symkey:0x7f479d2fe380
 11162 ms  0x6817 SSL_ImportFD()
 11162 ms  0x6817 ret:0x7f479cbbda90
 11162 ms  0x6817 SSL_AuthCertificateHook()
 11162 ms  0x6817 fd:0x7f479cbbda90
 11162 ms  0x6817 ret:0x0
 11162 ms  0x6817 PR_Connect()
 11162 ms  0x6817 fd:0x7f479cbbda90
           /* TID 0x681f */
 11168 ms  0x681f PR_Close()
 11168 ms  0x681f fd:0x7f479c926d60
 11172 ms  0x681f PR_Close()
 11172 ms  0x681f fd:0x7f479c926d60
 11244 ms  0x681f PR_Close()
 11244 ms  0x681f fd:0x7f479c926be0
           /* TID 0x6817 */
 11261 ms  0x6817 SECKEY_CreateECPrivateKey()
 11261 ms  0x6817 cx:0x7f47a86a5728
 11262 ms     | 0x6817 EC_ValidatePublicKey()
 11262 ms     | 0x6817 ret:0x0
 11262 ms  0x6817 ret:0x7f47a1814820::7f47a1814820  b0 15 bb 9c                                      ....
 11263 ms  0x6817 SECKEY_CreateECPrivateKey()
 11263 ms  0x6817 cx:0x7f47a86a5728
 11264 ms     | 0x6817 EC_ValidatePublicKey()
 11277 ms     | 0x6817 ret:0x0
 11277 ms  0x6817 ret:0x7f47a1a03820::7f47a1a03820  a0 11 bb 9c                                      ....
 11319 ms  0x6817 PK11_Encrypt()
 11319 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 11388 ms  0x681f PR_Close()
 11388 ms  0x681f fd:0x7f479cdd4100
           /* TID 0x6817 */
 11471 ms  0x6817 SSL_ImportFD()
 11471 ms  0x6817 ret:0x7f479b79de20
 11471 ms  0x6817 SSL_AuthCertificateHook()
 11471 ms  0x6817 fd:0x7f479b79de20
 11471 ms  0x6817 ret:0x0
 11471 ms  0x6817 PR_Connect()
 11471 ms  0x6817 fd:0x7f479b79de20
 11483 ms  0x6817 SSL_ImportFD()
 11483 ms  0x6817 ret:0x7f479b7a7790
 11483 ms  0x6817 SSL_AuthCertificateHook()
 11483 ms  0x6817 fd:0x7f479b7a7790
 11483 ms  0x6817 ret:0x0
 11483 ms  0x6817 PR_Connect()
 11483 ms  0x6817 fd:0x7f479b7a7790
 11521 ms  0x6817 SSL_ImportFD()
 11521 ms  0x6817 ret:0x7f479c703400
 11521 ms  0x6817 SSL_AuthCertificateHook()
 11521 ms  0x6817 fd:0x7f479c703400
 11521 ms  0x6817 ret:0x0
 11521 ms  0x6817 PR_Connect()
 11521 ms  0x6817 fd:0x7f479c703400
 11522 ms  0x6817 SSL_ImportFD()
 11522 ms  0x6817 ret:0x7f479c703490
 11522 ms  0x6817 SSL_AuthCertificateHook()
 11522 ms  0x6817 fd:0x7f479c703490
 11522 ms  0x6817 ret:0x0
 11522 ms  0x6817 PR_Connect()
 11522 ms  0x6817 fd:0x7f479c703490
 11522 ms  0x6817 SSL_ImportFD()
 11522 ms  0x6817 ret:0x7f479b7b50d0
 11522 ms  0x6817 SSL_AuthCertificateHook()
 11522 ms  0x6817 fd:0x7f479b7b50d0
 11522 ms  0x6817 ret:0x0
 11522 ms  0x6817 PR_Connect()
 11522 ms  0x6817 fd:0x7f479b7b50d0
 11524 ms  0x6817 SSL_ImportFD()
 11524 ms  0x6817 ret:0x7f479b7b51c0
 11524 ms  0x6817 SSL_AuthCertificateHook()
 11524 ms  0x6817 fd:0x7f479b7b51c0
 11524 ms  0x6817 ret:0x0
 11524 ms  0x6817 PR_Connect()
 11524 ms  0x6817 fd:0x7f479b7b51c0
 11524 ms  0x6817 SSL_ImportFD()
 11524 ms  0x6817 ret:0x7f479b7b5640
 11524 ms  0x6817 SSL_AuthCertificateHook()
 11524 ms  0x6817 fd:0x7f479b7b5640
 11524 ms  0x6817 ret:0x0
 11524 ms  0x6817 PR_Connect()
 11524 ms  0x6817 fd:0x7f479b7b5640
 11524 ms  0x6817 SECKEY_CreateECPrivateKey()
 11524 ms  0x6817 cx:0x7f479b79cb28
 11525 ms     | 0x6817 EC_ValidatePublicKey()
 11525 ms     | 0x6817 ret:0x0
 11525 ms  0x6817 ret:0x7f479b447820::7f479b447820  30 88 48 9b                                      0.H.
 11525 ms  0x6817 SECKEY_CreateECPrivateKey()
 11525 ms  0x6817 cx:0x7f479b79cb28
 11526 ms     | 0x6817 EC_ValidatePublicKey()
 11528 ms     | 0x6817 ret:0x0
 11529 ms  0x6817 ret:0x7f479c719020::7f479c719020  20 5e cc 9b                                       ^..
 11672 ms  SECKEY_ECParamsToKeySize()
 11672 ms  0x6817 ret:0x100
 11672 ms  0x6817 SECKEY_CreateECPrivateKey()
 11672 ms  0x6817 cx:0x7f47a86a5728
 11673 ms     | 0x6817 EC_ValidatePublicKey()
 11677 ms     | 0x6817 ret:0x0
 11677 ms  0x6817 ret:0x7f479cd53820::7f479cd53820  10 2f db 9c                                      ./..
 11677 ms  0x6817 PK11_PubDeriveWithKDF()
 11677 ms  0x6817 seckey:0x7f479cd53820
 11677 ms     | 0x6817 EC_ValidatePublicKey()
 11680 ms     | 0x6817 ret:0x0
 11683 ms  0x6817 ret:0x7f479cdd3f00
 11683 ms  0x6817 PK11_DeriveWithFlags()
 11683 ms  0x6817 basekey:0x7f479cdd3f00
 11683 ms     | 0x6817 PK11_DeriveWithTemplate()
 11683 ms  0x6817 ret:0x7f479cdd3080
 11683 ms  0x6817 PK11_Derive()
 11683 ms  0x6817 basekey:0x7f479cdd3080
 11683 ms     | 0x6817 PK11_DeriveWithTemplate()
 11683 ms  0x6817 ret:0x7f479d2fe700
 11683 ms  0x6817 SECKEY_DestroyPrivateKey()
 11683 ms  0x6817 privk:0x7f479cd53820::7f479cd53820  10 2f db 9c                                      ./..
 11684 ms  0x6817 privk:0x7f479cd53820::7f479cd53820  e5 e5 e5 e5                                      ....
 11684 ms  0x6817 PK11_Encrypt()
 11684 ms  0x6817 symkey:0x7f479b46ea80
 11708 ms  0x6817 SSL_ImportFD()
 11708 ms  0x6817 ret:0x7f479c7038e0
 11708 ms  0x6817 SSL_AuthCertificateHook()
 11708 ms  0x6817 fd:0x7f479c7038e0
 11708 ms  0x6817 ret:0x0
 11710 ms  0x6817 PR_Connect()
 11710 ms  0x6817 fd:0x7f479c7038e0
           /* TID 0x681f */
 11713 ms  0x681f PR_Close()
 11713 ms  0x681f fd:0x7f479b48b3d0
           /* TID 0x68b8 */
 11713 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11714 ms  0x68b8 ret:0x0
 11714 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11714 ms  0x68b8 ret:0x0
           /* TID 0x6817 */
 11714 ms  0x6817 SSL_AuthCertificateComplete()
 11714 ms  0x6817 fd:0x7f47a14f2d00
 11714 ms  0x6817 err:0x0
 11715 ms  0x6817 PK11_Encrypt()
 11715 ms  0x6817 symkey:0x7f479b46ea80
 11716 ms  0x6817 PK11_Encrypt()
 11716 ms  0x6817 symkey:0x7f479b46ea80
 11717 ms  0x6817 SSL_ImportFD()
 11717 ms  0x6817 ret:0x7f479b7a7f10
 11717 ms  0x6817 SSL_AuthCertificateHook()
 11717 ms  0x6817 fd:0x7f479b7a7f10
 11717 ms  0x6817 ret:0x0
 11717 ms  0x6817 PR_Connect()
 11717 ms  0x6817 fd:0x7f479b7a7f10
 11721 ms  0x6817 SSL_ImportFD()
 11721 ms  0x6817 ret:0x7f47a0178040
 11722 ms  0x6817 SSL_AuthCertificateHook()
 11722 ms  0x6817 fd:0x7f47a0178040
 11722 ms  0x6817 ret:0x0
 11722 ms  0x6817 PR_Connect()
 11722 ms  0x6817 fd:0x7f47a0178040
 11733 ms  0x6817 SSL_ImportFD()
 11733 ms  0x6817 ret:0x7f47a14f44c0
 11733 ms  0x6817 SSL_AuthCertificateHook()
 11733 ms  0x6817 fd:0x7f47a14f44c0
 11733 ms  0x6817 ret:0x0
 11733 ms  0x6817 PR_Connect()
 11733 ms  0x6817 fd:0x7f47a14f44c0
 11760 ms  0x6817 SECKEY_CreateECPrivateKey()
 11760 ms  0x6817 cx:0x7f479b79b7a8
 11761 ms     | 0x6817 EC_ValidatePublicKey()
 11761 ms     | 0x6817 ret:0x0
 11761 ms  0x6817 ret:0x7f479c9c0020::7f479c9c0020  40 17 bb 9c                                      @...
 11761 ms  0x6817 SECKEY_CreateECPrivateKey()
 11761 ms  0x6817 cx:0x7f479b79b7a8
 11762 ms     | 0x6817 EC_ValidatePublicKey()
 11764 ms     | 0x6817 ret:0x0
 11764 ms  0x6817 ret:0x7f479cd53820::7f479cd53820  f0 f1 df 9c                                      ....
 11764 ms  0x6817 SECKEY_CreateECPrivateKey()
 11764 ms  0x6817 cx:0x7f47a86a5a68
 11765 ms     | 0x6817 EC_ValidatePublicKey()
 11765 ms     | 0x6817 ret:0x0
 11765 ms  0x6817 ret:0x7f479cd67020::7f479cd67020  d0 f8 df 9c                                      ....
 11765 ms  0x6817 SECKEY_CreateECPrivateKey()
 11765 ms  0x6817 cx:0x7f47a86a5a68
 11766 ms     | 0x6817 EC_ValidatePublicKey()
 11768 ms     | 0x6817 ret:0x0
 11768 ms  0x6817 ret:0x7f47a01ae820::7f47a01ae820  60 55 20 9d                                      `U .
 11772 ms  0x6817 SSL_ImportFD()
 11772 ms  0x6817 ret:0x7f47a1887130
 11772 ms  0x6817 SSL_AuthCertificateHook()
 11772 ms  0x6817 fd:0x7f47a1887130
 11772 ms  0x6817 ret:0x0
 11772 ms  0x6817 PR_Connect()
 11772 ms  0x6817 fd:0x7f47a1887130
 11772 ms  0x6817 SSL_ImportFD()
 11772 ms  0x6817 ret:0x7f479e577e50
 11772 ms  0x6817 SSL_AuthCertificateHook()
 11772 ms  0x6817 fd:0x7f479e577e50
 11772 ms  0x6817 ret:0x0
 11772 ms  0x6817 PR_Connect()
 11772 ms  0x6817 fd:0x7f479e577e50
 11772 ms  0x6817 SSL_ImportFD()
 11772 ms  0x6817 ret:0x7f47a18871f0
 11772 ms  0x6817 SSL_AuthCertificateHook()
 11772 ms  0x6817 fd:0x7f47a18871f0
 11772 ms  0x6817 ret:0x0
 11772 ms  0x6817 PR_Connect()
 11772 ms  0x6817 fd:0x7f47a18871f0
 11774 ms  0x6817 SSL_ImportFD()
 11774 ms  0x6817 ret:0x7f47a18dd400
 11774 ms  0x6817 SSL_AuthCertificateHook()
 11774 ms  0x6817 fd:0x7f47a18dd400
 11774 ms  0x6817 ret:0x0
 11774 ms  0x6817 PR_Connect()
 11774 ms  0x6817 fd:0x7f47a18dd400
 11775 ms  0x6817 SSL_ImportFD()
 11775 ms  0x6817 ret:0x7f47a18dd0a0
 11775 ms  0x6817 SSL_AuthCertificateHook()
 11775 ms  0x6817 fd:0x7f47a18dd0a0
 11775 ms  0x6817 ret:0x0
 11775 ms  0x6817 PR_Connect()
 11775 ms  0x6817 fd:0x7f47a18dd0a0
 11790 ms  0x6817 SSL_ImportFD()
 11790 ms  0x6817 ret:0x7f47a182ae80
 11790 ms  0x6817 SSL_AuthCertificateHook()
 11790 ms  0x6817 fd:0x7f47a182ae80
 11791 ms  0x6817 ret:0x0
 11791 ms  0x6817 PR_Connect()
 11791 ms  0x6817 fd:0x7f47a182ae80
 11804 ms  0x6817 SECKEY_CreateECPrivateKey()
 11804 ms  0x6817 cx:0x7f47a86a60e8
 11805 ms     | 0x6817 EC_ValidatePublicKey()
 11805 ms     | 0x6817 ret:0x0
 11805 ms  0x6817 ret:0x7f47a1311020::7f47a1311020  20 59 20 9d                                       Y .
 11806 ms  0x6817 SECKEY_CreateECPrivateKey()
 11806 ms  0x6817 cx:0x7f47a86a60e8
 11807 ms     | 0x6817 EC_ValidatePublicKey()
 11809 ms     | 0x6817 ret:0x0
 11810 ms  0x6817 ret:0x7f47a1318820::7f47a1318820  00 5b 20 9d                                      .[ .
 11811 ms  0x6817 SECKEY_CreateECPrivateKey()
 11811 ms  0x6817 cx:0x7f47a86a6428
 11812 ms     | 0x6817 EC_ValidatePublicKey()
 11812 ms     | 0x6817 ret:0x0
 11812 ms  0x6817 ret:0x7f47a14a5020::7f47a14a5020  40 5c 20 9d                                      @\ .
 11812 ms  0x6817 SECKEY_CreateECPrivateKey()
 11812 ms  0x6817 cx:0x7f47a86a6428
 11813 ms     | 0x6817 EC_ValidatePublicKey()
 11815 ms     | 0x6817 ret:0x0
 11815 ms  0x6817 ret:0x7f47a180a820::7f47a180a820  20 5e 20 9d                                       ^ .
 11816 ms  0x6817 SECKEY_CreateECPrivateKey()
 11816 ms  0x6817 cx:0x7f47a86a5da8
 11817 ms     | 0x6817 EC_ValidatePublicKey()
 11817 ms     | 0x6817 ret:0x0
 11817 ms  0x6817 ret:0x7f47a1a10820::7f47a1a10820  60 5f 20 9d                                      `_ .
 11817 ms  0x6817 SECKEY_CreateECPrivateKey()
 11817 ms  0x6817 cx:0x7f47a86a5da8
 11818 ms     | 0x6817 EC_ValidatePublicKey()
 11821 ms     | 0x6817 ret:0x0
 11821 ms  0x6817 ret:0x7f47a1a1e820::7f47a1a1e820  00 1b 55 9e                                      ..U.
 11822 ms  0x6817 SECKEY_CreateECPrivateKey()
 11822 ms  0x6817 cx:0x7f47a86a6288
 11823 ms     | 0x6817 EC_ValidatePublicKey()
 11823 ms     | 0x6817 ret:0x0
 11823 ms  0x6817 ret:0x7f47a1b6a820::7f47a1b6a820  e0 a7 55 9e                                      ..U.
 11824 ms  0x6817 SECKEY_CreateECPrivateKey()
 11824 ms  0x6817 cx:0x7f47a86a6288
 11825 ms     | 0x6817 EC_ValidatePublicKey()
 11827 ms     | 0x6817 ret:0x0
 11827 ms  0x6817 ret:0x7f47a1b6e820::7f47a1b6e820  90 ac 55 9e                                      ..U.
 11827 ms  0x6817 SECKEY_CreateECPrivateKey()
 11827 ms  0x6817 cx:0x7f47a86a5f48
 11828 ms     | 0x6817 EC_ValidatePublicKey()
 11828 ms     | 0x6817 ret:0x0
 11828 ms  0x6817 ret:0x7f47a1b72020::7f47a1b72020  70 ae 55 9e                                      p.U.
 11828 ms  0x6817 SECKEY_CreateECPrivateKey()
 11828 ms  0x6817 cx:0x7f47a86a5f48
 11829 ms     | 0x6817 EC_ValidatePublicKey()
 11830 ms     | 0x6817 ret:0x0
 11831 ms  0x6817 ret:0x7f47a1b74020::7f47a1b74020  e0 7c 56 9e                                      .|V.
 11927 ms  0x6817 SECKEY_CreateECPrivateKey()
 11927 ms  0x6817 cx:0x7f47a86a65c8
 11928 ms     | 0x6817 EC_ValidatePublicKey()
 11928 ms     | 0x6817 ret:0x0
 11928 ms  0x6817 ret:0x7f47a1b76820::7f47a1b76820  70 49 1c a0                                      pI..
 11928 ms  0x6817 SECKEY_CreateECPrivateKey()
 11928 ms  0x6817 cx:0x7f47a86a65c8
 11930 ms     | 0x6817 EC_ValidatePublicKey()
 11934 ms     | 0x6817 ret:0x0
 11934 ms  0x6817 ret:0x7f47a1b78820::7f47a1b78820  60 1a 47 a1                                      `.G.
 11948 ms  SECKEY_ECParamsToKeySize()
 11948 ms  0x6817 ret:0x100
 11948 ms  0x6817 SECKEY_CreateECPrivateKey()
 11948 ms  0x6817 cx:0x7f479b79cb28
 11950 ms     | 0x6817 EC_ValidatePublicKey()
 11953 ms     | 0x6817 ret:0x0
 11953 ms  0x6817 ret:0x7f47a1b7b820::7f47a1b7b820  40 d2 4d a1                                      @.M.
 11954 ms  0x6817 PK11_PubDeriveWithKDF()
 11954 ms  0x6817 seckey:0x7f47a1b7b820
 11954 ms     | 0x6817 EC_ValidatePublicKey()
 11962 ms     | 0x6817 ret:0x0
 11966 ms  0x6817 ret:0x7f479cdd3f00
 11966 ms  0x6817 PK11_DeriveWithFlags()
 11966 ms  0x6817 basekey:0x7f479cdd3f00
 11966 ms     | 0x6817 PK11_DeriveWithTemplate()
 11966 ms  0x6817 ret:0x7f479d2fe400
 11966 ms  0x6817 PK11_Derive()
 11966 ms  0x6817 basekey:0x7f479d2fe400
 11966 ms     | 0x6817 PK11_DeriveWithTemplate()
 11967 ms  0x6817 ret:0x7f479d2ab980
 11967 ms  0x6817 SECKEY_DestroyPrivateKey()
 11967 ms  0x6817 privk:0x7f47a1b7b820::7f47a1b7b820  40 d2 4d a1                                      @.M.
 11967 ms  0x6817 privk:0x7f47a1b7b820::7f47a1b7b820  e5 e5 e5 e5                                      ....
 11967 ms  0x6817 PK11_Encrypt()
 11967 ms  0x6817 symkey:0x7f479b495000
 11967 ms  0x6817 SSL_AuthCertificateComplete()
 11967 ms  0x6817 fd:0x7f479cbbda90
 11967 ms  0x6817 err:0x0
 11968 ms  0x6817 PK11_Encrypt()
 11968 ms  0x6817 symkey:0x7f479b495000
 11969 ms  0x6817 SSL_ImportFD()
 11969 ms  0x6817 ret:0x7f47a18fe4f0
 11969 ms  0x6817 SSL_AuthCertificateHook()
 11969 ms  0x6817 fd:0x7f47a18fe4f0
 11969 ms  0x6817 ret:0x0
 11969 ms  0x6817 PR_Connect()
 11969 ms  0x6817 fd:0x7f47a18fe4f0
 11982 ms  0x6817 SECKEY_CreateECPrivateKey()
 11982 ms  0x6817 cx:0x7f47a86a77a8
 11983 ms     | 0x6817 EC_ValidatePublicKey()
 11983 ms     | 0x6817 ret:0x0
 11983 ms  0x6817 ret:0x7f47a1b7c820::7f47a1b7c820  60 1f 47 a1                                      `.G.
 11983 ms  0x6817 SECKEY_CreateECPrivateKey()
 11983 ms  0x6817 cx:0x7f47a86a77a8
 11985 ms     | 0x6817 EC_ValidatePublicKey()
 11988 ms     | 0x6817 ret:0x0
 11988 ms  0x6817 ret:0x7f47a1b7e820::7f47a1b7e820  20 04 61 a1                                       .a.
 11989 ms  0x6817 SECKEY_CreateECPrivateKey()
 11989 ms  0x6817 cx:0x7f47a86a6908
 11990 ms     | 0x6817 EC_ValidatePublicKey()
 11990 ms     | 0x6817 ret:0x0
 11990 ms  0x6817 ret:0x7f47a1b81020::7f47a1b81020  20 0e 61 a1                                       .a.
 11990 ms  0x6817 SECKEY_CreateECPrivateKey()
 11990 ms  0x6817 cx:0x7f47a86a6908
 11991 ms     | 0x6817 EC_ValidatePublicKey()
 11994 ms     | 0x6817 ret:0x0
 11994 ms  0x6817 ret:0x7f47a1b83020::7f47a1b83020  00 e1 6e a1                                      ..n.
 12020 ms  0x6817 SECKEY_CreateECPrivateKey()
 12020 ms  0x6817 cx:0x7f47a86a6aa8
 12021 ms     | 0x6817 EC_ValidatePublicKey()
 12021 ms     | 0x6817 ret:0x0
 12021 ms  0x6817 ret:0x7f47a44ab820::7f47a44ab820  40 e2 6e a1                                      @.n.
 12021 ms  0x6817 SECKEY_CreateECPrivateKey()
 12021 ms  0x6817 cx:0x7f47a86a6aa8
 12022 ms     | 0x6817 EC_ValidatePublicKey()
 12024 ms     | 0x6817 ret:0x0
 12024 ms  0x6817 ret:0x7f47a44b0820::7f47a44b0820  c0 e4 6e a1                                      ..n.
 12025 ms  0x6817 SECKEY_CreateECPrivateKey()
 12025 ms  0x6817 cx:0x7f47a5dddcc8
 12026 ms     | 0x6817 EC_ValidatePublicKey()
 12026 ms     | 0x6817 ret:0x0
 12026 ms  0x6817 ret:0x7f47a44b5020::7f47a44b5020  e0 b2 6f a1                                      ..o.
 12026 ms  0x6817 SECKEY_CreateECPrivateKey()
 12026 ms  0x6817 cx:0x7f47a5dddcc8
 12027 ms     | 0x6817 EC_ValidatePublicKey()
 12029 ms     | 0x6817 ret:0x0
 12029 ms  0x6817 ret:0x7f47a44b9020::7f47a44b9020  00 01 88 a1                                      ....
 12051 ms  0x6817 SECKEY_CreateECPrivateKey()
 12051 ms  0x6817 cx:0x7f47a86a6c48
 12052 ms     | 0x6817 EC_ValidatePublicKey()
 12052 ms     | 0x6817 ret:0x0
 12052 ms  0x6817 ret:0x7f47a4f06020::7f47a4f06020  30 03 88 a1                                      0...
 12052 ms  0x6817 SECKEY_CreateECPrivateKey()
 12052 ms  0x6817 cx:0x7f47a86a6c48
 12053 ms     | 0x6817 EC_ValidatePublicKey()
 12055 ms     | 0x6817 ret:0x0
 12056 ms  0x6817 ret:0x7f47a4f08820::7f47a4f08820  a0 06 88 a1                                      ....
 12062 ms  0x6817 SECKEY_CreateECPrivateKey()
 12062 ms  0x6817 cx:0x7f47a86a7128
 12063 ms     | 0x6817 EC_ValidatePublicKey()
 12063 ms     | 0x6817 ret:0x0
 12063 ms  0x6817 ret:0x7f47a4f0c820::7f47a4f0c820  50 0b 88 a1                                      P...
 12063 ms  0x6817 SECKEY_CreateECPrivateKey()
 12063 ms  0x6817 cx:0x7f47a86a7128
 12064 ms     | 0x6817 EC_ValidatePublicKey()
 12067 ms     | 0x6817 ret:0x0
 12067 ms  0x6817 ret:0x7f47a4f0f820::7f47a4f0f820  e0 c7 8e a1                                      ....
 12067 ms  0x6817 SECKEY_DestroyPrivateKey()
 12067 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  a0 11 bb 9c                                      ....
 12067 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  e5 e5 e5 e5                                      ....
 12067 ms  0x6817 SECKEY_DestroyPrivateKey()
 12067 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  b0 15 bb 9c                                      ....
 12068 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  e5 e5 e5 e5                                      ....
 12068 ms  0x6817 PK11_Encrypt()
 12068 ms  0x6817 symkey:0x7f479b46ea80
 12068 ms  0x6817 PK11_Derive()
 12068 ms  0x6817 basekey:0x7f479cdd3f00
 12068 ms     | 0x6817 PK11_DeriveWithTemplate()
 12068 ms  0x6817 ret:0x7f479d2fed80
 12068 ms  0x6817 PK11_PubDeriveWithKDF()
 12068 ms  0x6817 seckey:0x7f479c9c0020
 12068 ms     | 0x6817 EC_ValidatePublicKey()
 12068 ms     | 0x6817 ret:0x0
 12069 ms  0x6817 ret:0x7f479cdd3f00
 12069 ms  SECKEY_ECParamsToKeySize()
 12069 ms  0x6817 ret:0xff
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479d2fed80
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2aab00
 12069 ms  0x6817 PK11_Derive()
 12069 ms  0x6817 basekey:0x7f479cdd3f00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2fef00
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479d2fef00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2fed80
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479d2fef00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479cdd3f00
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479d2fef00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2aab00
 12069 ms  0x6817 PK11_Derive()
 12069 ms  0x6817 basekey:0x7f479b495680
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479b495700
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479cdd3f00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2fef00
 12069 ms  0x6817 PK11_DeriveWithFlags()
 12069 ms  0x6817 basekey:0x7f479cdd3f00
 12069 ms     | 0x6817 PK11_DeriveWithTemplate()
 12069 ms  0x6817 ret:0x7f479d2aab00
 12070 ms  0x6817 PK11_DeriveWithFlags()
 12070 ms  0x6817 basekey:0x7f479cdd3f00
 12070 ms     | 0x6817 PK11_DeriveWithTemplate()
 12070 ms  0x6817 ret:0x7f479d2aab00
 12070 ms  0x6817 SSL_AuthCertificateComplete()
 12070 ms  0x6817 fd:0x7f479b79de20
 12070 ms  0x6817 err:0x0
 12070 ms     | 0x6817 PK11_DeriveWithFlags()
 12070 ms     | 0x6817 basekey:0x7f479b495700
 12070 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12070 ms     | 0x6817 ret:0x7f479d2aab00
 12070 ms     | 0x6817 PK11_DeriveWithFlags()
 12070 ms     | 0x6817 basekey:0x7f479b495700
 12070 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12070 ms     | 0x6817 ret:0x7f479b495680
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479b495700
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b495780
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479d2fed80
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b495800
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479d2fed80
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b495c00
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479b495680
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b495c00
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479b495680
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b4fe700
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479d2fed80
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479d2fef00
 12071 ms     | 0x6817 PK11_Encrypt()
 12071 ms     | 0x6817 symkey:0x7f479b495800
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479d2aab00
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479d2fef00
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479d2aab00
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b4fe700
 12071 ms     | 0x6817 PK11_DeriveWithFlags()
 12071 ms     | 0x6817 basekey:0x7f479b495700
 12071 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12071 ms     | 0x6817 ret:0x7f479b495800
 12071 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 12071 ms     | 0x6817 privk:0x7f479cd53820::7f479cd53820  f0 f1 df 9c                                      ....
 12072 ms     | 0x6817 privk:0x7f479cd53820::7f479cd53820  e5 e5 e5 e5                                      ....
 12072 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 12072 ms     | 0x6817 privk:0x7f479c9c0020::7f479c9c0020  40 17 bb 9c                                      @...
 12072 ms     | 0x6817 privk:0x7f479c9c0020::7f479c9c0020  e5 e5 e5 e5                                      ....
 12072 ms  0x6817 PK11_Encrypt()
 12072 ms  0x6817 symkey:0x7f479d2fef00
 12072 ms  0x6817 PK11_Encrypt()
 12072 ms  0x6817 symkey:0x7f479d2fef00
 12073 ms  0x6817 SECKEY_CreateECPrivateKey()
 12073 ms  0x6817 cx:0x7f47a86a72c8
 12074 ms     | 0x6817 EC_ValidatePublicKey()
 12074 ms     | 0x6817 ret:0x0
 12074 ms  0x6817 ret:0x7f479c9c7820::7f479c9c7820  a0 11 bb 9c                                      ....
 12074 ms  0x6817 SECKEY_CreateECPrivateKey()
 12074 ms  0x6817 cx:0x7f47a86a72c8
 12075 ms     | 0x6817 EC_ValidatePublicKey()
 12077 ms     | 0x6817 ret:0x0
 12077 ms  0x6817 ret:0x7f47a1814820::7f47a1814820  a0 16 bb 9c                                      ....
 12077 ms  0x6817 SECKEY_CreateECPrivateKey()
 12077 ms  0x6817 cx:0x7f47a86a7608
 12078 ms     | 0x6817 EC_ValidatePublicKey()
 12078 ms     | 0x6817 ret:0x0
 12078 ms  0x6817 ret:0x7f47a4f10020::7f47a4f10020  10 2f db 9c                                      ./..
 12078 ms  0x6817 SECKEY_CreateECPrivateKey()
 12078 ms  0x6817 cx:0x7f47a86a7608
 12079 ms     | 0x6817 EC_ValidatePublicKey()
 12081 ms     | 0x6817 ret:0x0
 12081 ms  0x6817 ret:0x7f47a4f17820::7f47a4f17820  10 ca 8e a1                                      ....
 12081 ms  0x6817 SECKEY_CreateECPrivateKey()
 12081 ms  0x6817 cx:0x7f47a86a7468
 12082 ms     | 0x6817 EC_ValidatePublicKey()
 12082 ms     | 0x6817 ret:0x0
 12082 ms  0x6817 ret:0x7f47a4f1c020::7f47a4f1c020  d0 48 90 a1                                      .H..
 12082 ms  0x6817 SECKEY_CreateECPrivateKey()
 12082 ms  0x6817 cx:0x7f47a86a7468
 12083 ms     | 0x6817 EC_ValidatePublicKey()
 12085 ms     | 0x6817 ret:0x0
 12085 ms  0x6817 ret:0x7f47a4f1f020::7f47a4f1f020  40 5c 91 a1                                      @\..
 12146 ms  SECKEY_ECParamsToKeySize()
 12147 ms  0x6817 ret:0x100
 12147 ms  SECKEY_ECParamsToBasePointOrderLen()
 12147 ms  0x6817 ret:0x100
 12147 ms  SECKEY_ECParamsToBasePointOrderLen()
 12147 ms  0x6817 ret:0x100
 12148 ms  0x6817 EC_ValidatePublicKey()
 12152 ms  0x6817 ret:0x0
 12157 ms  SECKEY_ECParamsToKeySize()
 12157 ms  0x6817 ret:0x100
 12157 ms  0x6817 SECKEY_CreateECPrivateKey()
 12157 ms  0x6817 cx:0x7f47a86a65c8
 12158 ms     | 0x6817 EC_ValidatePublicKey()
 12162 ms     | 0x6817 ret:0x0
 12162 ms  0x6817 ret:0x7f47a54cc820::7f47a54cc820  20 14 96 a1                                       ...
 12162 ms  0x6817 PK11_PubDeriveWithKDF()
 12162 ms  0x6817 seckey:0x7f47a54cc820
 12162 ms     | 0x6817 EC_ValidatePublicKey()
 12166 ms     | 0x6817 ret:0x0
 12169 ms  0x6817 ret:0x7f479cdd3f00
 12169 ms  0x6817 PK11_DeriveWithFlags()
 12169 ms  0x6817 basekey:0x7f479cdd3f00
 12169 ms     | 0x6817 PK11_DeriveWithTemplate()
 12169 ms  0x6817 ret:0x7f479d2fed80
 12169 ms  0x6817 PK11_Derive()
 12169 ms  0x6817 basekey:0x7f479d2fed80
 12169 ms     | 0x6817 PK11_DeriveWithTemplate()
 12169 ms  0x6817 ret:0x7f479b495700
 12169 ms  0x6817 SECKEY_DestroyPrivateKey()
 12169 ms  0x6817 privk:0x7f47a54cc820::7f47a54cc820  20 14 96 a1                                       ...
 12170 ms  0x6817 privk:0x7f47a54cc820::7f47a54cc820  e5 e5 e5 e5                                      ....
 12170 ms  0x6817 PK11_Encrypt()
 12170 ms  0x6817 symkey:0x7f479b7b8800
           /* TID 0x681f */
 12197 ms  0x681f PR_Close()
 12197 ms  0x681f fd:0x7f47a1908190
           /* TID 0x68b8 */
 12197 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12197 ms  0x68b8 ret:0x0
 12197 ms  0x68b8 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12197 ms  0x68b8 ret:0x0
           /* TID 0x6817 */
 12200 ms  0x6817 SSL_AuthCertificateComplete()
 12200 ms  0x6817 fd:0x7f479b7a7f10
 12200 ms  0x6817 err:0x0
 12201 ms  0x6817 PK11_Encrypt()
 12201 ms  0x6817 symkey:0x7f479b7b8800
 12201 ms  0x6817 PK11_Encrypt()
 12201 ms  0x6817 symkey:0x7f479b7b8800
 12238 ms  SECKEY_ECParamsToKeySize()
 12238 ms  0x6817 ret:0x100
 12238 ms  SECKEY_ECParamsToBasePointOrderLen()
 12238 ms  0x6817 ret:0x100
 12238 ms  SECKEY_ECParamsToBasePointOrderLen()
 12238 ms  0x6817 ret:0x100
 12239 ms  0x6817 EC_ValidatePublicKey()
 12243 ms  0x6817 ret:0x0
 12248 ms  SECKEY_ECParamsToKeySize()
 12248 ms  0x6817 ret:0xff
 12248 ms  0x6817 SECKEY_CreateECPrivateKey()
 12248 ms  0x6817 cx:0x7f47a86a5da8
 12249 ms     | 0x6817 EC_ValidatePublicKey()
 12249 ms     | 0x6817 ret:0x0
 12249 ms  0x6817 ret:0x7f47a54ca820::7f47a54ca820  90 8c b7 9c                                      ....
 12249 ms  0x6817 PK11_PubDeriveWithKDF()
 12249 ms  0x6817 seckey:0x7f47a54ca820
 12249 ms     | 0x6817 EC_ValidatePublicKey()
 12249 ms     | 0x6817 ret:0x0
 12249 ms  0x6817 ret:0x7f479cdd3f00
 12249 ms  0x6817 PK11_DeriveWithFlags()
 12249 ms  0x6817 basekey:0x7f479cdd3f00
 12249 ms     | 0x6817 PK11_DeriveWithTemplate()
 12249 ms  0x6817 ret:0x7f479b4fe700
 12249 ms  0x6817 PK11_Derive()
 12249 ms  0x6817 basekey:0x7f479b4fe700
 12249 ms     | 0x6817 PK11_DeriveWithTemplate()
 12249 ms  0x6817 ret:0x7f479bcc9180
 12249 ms  0x6817 SECKEY_DestroyPrivateKey()
 12249 ms  0x6817 privk:0x7f47a54ca820::7f47a54ca820  90 8c b7 9c                                      ....
 12250 ms  0x6817 privk:0x7f47a54ca820::7f47a54ca820  e5 e5 e5 e5                                      ....
 12250 ms  0x6817 PK11_Encrypt()
 12250 ms  0x6817 symkey:0x7f479c779280
 12251 ms  0x6817 SSL_AuthCertificateComplete()
 12251 ms  0x6817 fd:0x7f479c703400
 12251 ms  0x6817 err:0x0
 12251 ms  0x6817 PK11_Encrypt()
 12251 ms  0x6817 symkey:0x7f479c779280
 12253 ms  0x6817 PK11_Encrypt()
 12253 ms  0x6817 symkey:0x7f479c779280
 12262 ms  SECKEY_ECParamsToKeySize()
 12262 ms  0x6817 ret:0x100
 12262 ms  SECKEY_ECParamsToBasePointOrderLen()
 12262 ms  0x6817 ret:0x100
 12262 ms  SECKEY_ECParamsToBasePointOrderLen()
 12262 ms  0x6817 ret:0x100
 12262 ms  0x6817 EC_ValidatePublicKey()
 12263 ms  0x6817 ret:0x0
 12269 ms  SECKEY_ECParamsToKeySize()
 12269 ms  0x6817 ret:0xff
 12269 ms  0x6817 SECKEY_CreateECPrivateKey()
 12269 ms  0x6817 cx:0x7f47a86a6428
 12269 ms     | 0x6817 EC_ValidatePublicKey()
 12269 ms     | 0x6817 ret:0x0
 12269 ms  0x6817 ret:0x7f47a54cf020::7f47a54cf020  70 8e b7 9c                                      p...
 12269 ms  0x6817 PK11_PubDeriveWithKDF()
 12269 ms  0x6817 seckey:0x7f47a54cf020
 12269 ms     | 0x6817 EC_ValidatePublicKey()
 12269 ms     | 0x6817 ret:0x0
 12270 ms  0x6817 ret:0x7f479cdd3f00
 12270 ms  0x6817 PK11_DeriveWithFlags()
 12270 ms  0x6817 basekey:0x7f479cdd3f00
 12270 ms     | 0x6817 PK11_DeriveWithTemplate()
 12270 ms  0x6817 ret:0x7f479c779500
 12270 ms  0x6817 PK11_Derive()
 12270 ms  0x6817 basekey:0x7f479c779500
 12270 ms     | 0x6817 PK11_DeriveWithTemplate()
 12270 ms  0x6817 ret:0x7f479c779700
 12270 ms  0x6817 SECKEY_DestroyPrivateKey()
 12270 ms  0x6817 privk:0x7f47a54cf020::7f47a54cf020  70 8e b7 9c                                      p...
 12270 ms  0x6817 privk:0x7f47a54cf020::7f47a54cf020  e5 e5 e5 e5                                      ....
 12270 ms  0x6817 PK11_Encrypt()
 12270 ms  0x6817 symkey:0x7f479c779e80
 12272 ms  0x6817 PK11_Derive()
 12272 ms  0x6817 basekey:0x7f479cdd3f00
 12272 ms     | 0x6817 PK11_DeriveWithTemplate()
 12272 ms  0x6817 ret:0x7f479c77a380
 12272 ms  0x6817 PK11_PubDeriveWithKDF()
 12272 ms  0x6817 seckey:0x7f47a1b81020
 12273 ms     | 0x6817 EC_ValidatePublicKey()
 12273 ms     | 0x6817 ret:0x0
 12273 ms  0x6817 ret:0x7f479cdd3f00
 12273 ms  SECKEY_ECParamsToKeySize()
 12273 ms  0x6817 ret:0xff
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479c77a380
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a400
 12273 ms  0x6817 PK11_Derive()
 12273 ms  0x6817 basekey:0x7f479cdd3f00
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a580
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479c77a580
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a380
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479c77a580
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479cdd3f00
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479c77a580
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a400
 12273 ms  0x6817 PK11_Derive()
 12273 ms  0x6817 basekey:0x7f479c7eaa80
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c7eb400
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479cdd3f00
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a580
 12273 ms  0x6817 PK11_DeriveWithFlags()
 12273 ms  0x6817 basekey:0x7f479cdd3f00
 12273 ms     | 0x6817 PK11_DeriveWithTemplate()
 12273 ms  0x6817 ret:0x7f479c77a400
 12274 ms  0x6817 PK11_DeriveWithFlags()
 12274 ms  0x6817 basekey:0x7f479cdd3f00
 12274 ms     | 0x6817 PK11_DeriveWithTemplate()
 12274 ms  0x6817 ret:0x7f479c77a400
 12274 ms  0x6817 SSL_AuthCertificateComplete()
 12274 ms  0x6817 fd:0x7f479b7b5640
 12274 ms  0x6817 err:0x0
 12274 ms  0x6817 PK11_Encrypt()
 12274 ms  0x6817 symkey:0x7f479b46ea80
 12275 ms  0x6817 SSL_AuthCertificateComplete()
 12275 ms  0x6817 fd:0x7f47a0178040
 12275 ms  0x6817 err:0x0
 12275 ms     | 0x6817 PK11_DeriveWithFlags()
 12275 ms     | 0x6817 basekey:0x7f479c7eb400
 12275 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12275 ms     | 0x6817 ret:0x7f479c77a400
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c7eb400
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eaa80
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c7eb400
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479b7b0600
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c77a380
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb480
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c77a380
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb500
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c7eaa80
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb500
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c7eaa80
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb580
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c77a380
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c77a580
 12276 ms     | 0x6817 PK11_Encrypt()
 12276 ms     | 0x6817 symkey:0x7f479c7eb480
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c77a400
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c77a580
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c77a400
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb580
 12276 ms     | 0x6817 PK11_DeriveWithFlags()
 12276 ms     | 0x6817 basekey:0x7f479c7eb400
 12276 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 12276 ms     | 0x6817 ret:0x7f479c7eb480
 12276 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 12276 ms     | 0x6817 privk:0x7f47a1b83020::7f47a1b83020  00 e1 6e a1                                      ..n.
 12276 ms     | 0x6817 privk:0x7f47a1b83020::7f47a1b83020  e5 e5 e5 e5                                      ....
 12276 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 12276 ms     | 0x6817 privk:0x7f47a1b81020::7f47a1b81020  20 0e 61 a1                                       .a.
 12276 ms     | 0x6817 privk:0x7f47a1b81020::7f47a1b81020  e5 e5 e5 e5                                      ....
 12277 ms  0x6817 PK11_Encrypt()
 12277 ms  0x6817 symkey:0x7f479c779e80
 12278 ms  SECKEY_ECParamsToKeySize()
 12278 ms  0x6817 ret:0x100
 12278 ms  SECKEY_ECParamsToBasePointOrderLen()
 12278 ms  0x6817 ret:0x100
 12278 ms  SECKEY_ECParamsToBasePointOrderLen()
 12278 ms  0x6817 ret:0x100
 12278 ms  0x6817 EC_ValidatePublicKey()
 12279 ms  0x6817 ret:0x0
 12281 ms  SECKEY_ECParamsToKeySize()
 12281 ms  0x6817 ret:0xff
 12281 ms  0x6817 SECKEY_CreateECPrivateKey()
 12281 ms  0x6817 cx:0x7f47a86a60e8
 12281 ms     | 0x6817 EC_ValidatePublicKey()
 12281 ms     | 0x6817 ret:0x0
 12281 ms  0x6817 ret:0x7f47a1b83020::7f47a1b83020  b0 20 db 9c                                      . ..
 12282 ms  0x6817 PK11_PubDeriveWithKDF()
 12282 ms  0x6817 seckey:0x7f47a1b83020
 12282 ms     | 0x6817 EC_ValidatePublicKey()
 12282 ms     | 0x6817 ret:0x0
 12282 ms  0x6817 ret:0x7f479cdd3f00
 12282 ms  0x6817 PK11_DeriveWithFlags()
 12282 ms  0x6817 basekey:0x7f479cdd3f00
 12282 ms     | 0x6817 PK11_DeriveWithTemplate()
 12282 ms  0x6817 ret:0x7f479c77a380
 12282 ms  0x6817 PK11_Derive()
 12282 ms  0x6817 basekey:0x7f479c77a380
 12282 ms     | 0x6817 PK11_DeriveWithTemplate()
 12282 ms  0x6817 ret:0x7f479c7eb400
 12282 ms  0x6817 SECKEY_DestroyPrivateKey()
 12282 ms  0x6817 privk:0x7f47a1b83020::7f47a1b83020  b0 20 db 9c                                      . ..
 12282 ms  0x6817 privk:0x7f47a1b83020::7f47a1b83020  e5 e5 e5 e5                                      ....
 12282 ms  0x6817 PK11_Encrypt()
 12282 ms  0x6817 symkey:0x7f479c7eb700
 12285 ms  0x6817 PK11_Encrypt()
 12285 ms  0x6817 symkey:0x7f479c77a580
 12285 ms  0x6817 PK11_Encrypt()
 12285 ms  0x6817 symkey:0x7f479c779280
 12286 ms  0x6817 SSL_AuthCertificateComplete()
 12286 ms  0x6817 fd:0x7f479b7b50d0
 12286 ms  0x6817 err:0x0
 12286 ms  0x6817 PK11_Encrypt()
 12286 ms  0x6817 symkey:0x7f479d2fe380
 12286 ms  0x6817 PK11_Encrypt()
 12286 ms  0x6817 symkey:0x7f479c7eb700
 12287 ms  0x6817 PK11_Encrypt()
 12287 ms  0x6817 symkey:0x7f479c779280
 12287 ms  0x6817 SECKEY_CreateECPrivateKey()
 12287 ms  0x6817 cx:0x7f47a86a7948
 12287 ms     | 0x6817 EC_ValidatePublicKey()
 12287 ms     | 0x6817 ret:0x0
 12287 ms  0x6817 ret:0x7f47a54d2820::7f47a54d2820  00 21 db 9c                                      .!..
 12288 ms  0x6817 SECKEY_CreateECPrivateKey()
 12288 ms  0x6817 cx:0x7f47a86a7948
 12288 ms     | 0x6817 EC_ValidatePublicKey()
 12290 ms     | 0x6817 ret:0x0
 12290 ms  0x6817 ret:0x7f47a54d4820::7f47a54d4820  60 b0 62 a1                                      `.b.
 12359 ms  0x6817 SECKEY_DestroyPrivateKey()
 12359 ms  0x6817 privk:0x7f479c719020::7f479c719020  20 5e cc 9b                                       ^..
 12359 ms  0x6817 privk:0x7f479c719020::7f479c719020  e5 e5 e5 e5                                      ....
 12359 ms  0x6817 SECKEY_DestroyPrivateKey()
 12359 ms  0x6817 privk:0x7f479b447820::7f479b447820  30 88 48 9b                                      0.H.
 12359 ms  0x6817 privk:0x7f479b447820::7f479b447820  e5 e5 e5 e5                                      ....
 12359 ms  0x6817 PR_Close()
 12359 ms  0x6817 fd:0x7f479cbbda90
 12359 ms     | 0x6817 PK11_Encrypt()
 12359 ms     | 0x6817 symkey:0x7f479b495000
 12362 ms  SECKEY_ECParamsToKeySize()
 12362 ms  0x6817 ret:0x100
 12362 ms  SECKEY_ECParamsToBasePointOrderLen()
 12362 ms  0x6817 ret:0x100
 12362 ms  SECKEY_ECParamsToBasePointOrderLen()
 12362 ms  0x6817 ret:0x100
 12362 ms  0x6817 EC_ValidatePublicKey()
 12365 ms  0x6817 ret:0x0
 12369 ms  SECKEY_ECParamsToKeySize()
 12369 ms  0x6817 ret:0x100
 12369 ms  0x6817 SECKEY_CreateECPrivateKey()
 12369 ms  0x6817 cx:0x7f47a5dddcc8
 12370 ms     | 0x6817 EC_ValidatePublicKey()
 12373 ms     | 0x6817 ret:0x0
 12373 ms  0x6817 ret:0x7f479b44d820::7f479b44d820  80 2d 7a 9b                                      .-z.
 12373 ms  0x6817 PK11_PubDeriveWithKDF()
 12373 ms  0x6817 seckey:0x7f479b44d820
 12373 ms     | 0x6817 EC_ValidatePublicKey()
 12376 ms     | 0x6817 ret:0x0
 12379 ms  0x6817 ret:0x7f479d2ab980
 12379 ms  0x6817 PK11_DeriveWithFlags()
 12379 ms  0x6817 basekey:0x7f479d2ab980
 12379 ms     | 0x6817 PK11_DeriveWithTemplate()
 12379 ms  0x6817 ret:0x7f479d2fe400
 12379 ms  0x6817 PK11_Derive()
 12379 ms  0x6817 basekey:0x7f479d2fe400
 12379 ms     | 0x6817 PK11_DeriveWithTemplate()
 12379 ms  0x6817 ret:0x7f479cdd3f00
 12379 ms  0x6817 SECKEY_DestroyPrivateKey()
 12379 ms  0x6817 privk:0x7f479b44d820::7f479b44d820  80 2d 7a 9b                                      .-z.
 12379 ms  0x6817 privk:0x7f479b44d820::7f479b44d820  e5 e5 e5 e5                                      ....
 12380 ms  0x6817 PK11_Encrypt()
 12380 ms  0x6817 symkey:0x7f479b48a200
 12380 ms  0x6817 SSL_AuthCertificateComplete()
 12380 ms  0x6817 fd:0x7f479c7038e0
 12380 ms  0x6817 err:0x0
           /* TID 0x681f */
 12382 ms  0x681f PR_Close()
 12382 ms  0x681f fd:0x7f479cbbd7c0
           /* TID 0x6817 */
 12388 ms  0x6817 PK11_Encrypt()
 12388 ms  0x6817 symkey:0x7f479b48a200
 12388 ms  0x6817 PK11_Encrypt()
 12388 ms  0x6817 symkey:0x7f479b48a200
 12389 ms  0x6817 PK11_Encrypt()
 12389 ms  0x6817 symkey:0x7f479d2fe380
 12389 ms  0x6817 PK11_Encrypt()
 12389 ms  0x6817 symkey:0x7f479d2fe380
 12395 ms  0x6817 PK11_DeriveWithFlags()
 12395 ms  0x6817 basekey:0x7f479b495800
 12395 ms     | 0x6817 PK11_DeriveWithTemplate()
 12395 ms  0x6817 ret:0x7f479d2ab980
 12395 ms  0x6817 PK11_DeriveWithFlags()
 12395 ms  0x6817 basekey:0x7f479b495800
 12395 ms     | 0x6817 PK11_DeriveWithTemplate()
 12395 ms  0x6817 ret:0x7f479d2ab980
 12416 ms  0x6817 SSL_ImportFD()
 12416 ms  0x6817 ret:0x7f479cbbdb80
 12416 ms  0x6817 SSL_AuthCertificateHook()
 12416 ms  0x6817 fd:0x7f479cbbdb80
 12416 ms  0x6817 ret:0x0
 12417 ms  0x6817 PR_Connect()
 12417 ms  0x6817 fd:0x7f479cbbdb80
           /* TID 0x681f */
 12443 ms  0x681f PR_Close()
 12443 ms  0x681f fd:0x7f479cbbd6a0
 12467 ms  0x681f PR_Close()
 12467 ms  0x681f fd:0x7f479b7b5580
           /* TID 0x6817 */
 12475 ms  SECKEY_ECParamsToKeySize()
 12475 ms  0x6817 ret:0x100
 12475 ms  SECKEY_ECParamsToBasePointOrderLen()
 12475 ms  0x6817 ret:0x100
 12475 ms  SECKEY_ECParamsToBasePointOrderLen()
 12475 ms  0x6817 ret:0x100
 12475 ms  0x6817 EC_ValidatePublicKey()
 12479 ms  0x6817 ret:0x0
 12498 ms  SECKEY_ECParamsToKeySize()
 12498 ms  0x6817 ret:0xff
 12498 ms  0x6817 SECKEY_CreateECPrivateKey()
 12498 ms  0x6817 cx:0x7f47a86a6aa8
 12499 ms     | 0x6817 EC_ValidatePublicKey()
 12499 ms     | 0x6817 ret:0x0
 12499 ms  0x6817 ret:0x7f47a54cc020::7f47a54cc020  90 1c 47 a1                                      ..G.
 12499 ms  0x6817 PK11_PubDeriveWithKDF()
 12499 ms  0x6817 seckey:0x7f47a54cc020
 12499 ms     | 0x6817 EC_ValidatePublicKey()
 12499 ms     | 0x6817 ret:0x0
 12500 ms  0x6817 ret:0x7f479d2ab980
 12500 ms  0x6817 PK11_DeriveWithFlags()
 12500 ms  0x6817 basekey:0x7f479d2ab980
 12500 ms     | 0x6817 PK11_DeriveWithTemplate()
 12500 ms  0x6817 ret:0x7f479c7eb580
 12500 ms  0x6817 PK11_Derive()
 12500 ms  0x6817 basekey:0x7f479c7eb580
 12500 ms     | 0x6817 PK11_DeriveWithTemplate()
 12500 ms  0x6817 ret:0x7f479c90a980
 12500 ms  0x6817 SECKEY_DestroyPrivateKey()
 12500 ms  0x6817 privk:0x7f47a54cc020::7f47a54cc020  90 1c 47 a1                                      ..G.
 12500 ms  0x6817 privk:0x7f47a54cc020::7f47a54cc020  e5 e5 e5 e5                                      ....
 12500 ms  0x6817 PK11_Encrypt()
 12500 ms  0x6817 symkey:0x7f479c9a1400
 12500 ms  0x6817 SSL_AuthCertificateComplete()
 12500 ms  0x6817 fd:0x7f47a14f44c0
 12500 ms  0x6817 err:0x0
 12501 ms  0x6817 PK11_Encrypt()
 12501 ms  0x6817 symkey:0x7f479c9a1400
 12502 ms  SECKEY_ECParamsToKeySize()
 12502 ms  0x6817 ret:0x100
 12502 ms  SECKEY_ECParamsToBasePointOrderLen()
 12502 ms  0x6817 ret:0x100
 12502 ms  SECKEY_ECParamsToBasePointOrderLen()
 12502 ms  0x6817 ret:0x100
 12502 ms  0x6817 EC_ValidatePublicKey()
 12504 ms  0x6817 ret:0x0
 12507 ms  SECKEY_ECParamsToKeySize()
 12507 ms  0x6817 ret:0x100
 12507 ms  0x6817 SECKEY_CreateECPrivateKey()
 12507 ms  0x6817 cx:0x7f47a86a77a8
 12508 ms     | 0x6817 EC_ValidatePublicKey()
 12510 ms     | 0x6817 ret:0x0
 12510 ms  0x6817 ret:0x7f47a54d6820::7f47a54d6820  c0 b4 62 a1                                      ..b.
 12510 ms  0x6817 PK11_PubDeriveWithKDF()
 12510 ms  0x6817 seckey:0x7f47a54d6820
 12510 ms     | 0x6817 EC_ValidatePublicKey()
 12511 ms     | 0x6817 ret:0x0
 12513 ms  0x6817 ret:0x7f479d2ab980
 12513 ms  0x6817 PK11_DeriveWithFlags()
 12513 ms  0x6817 basekey:0x7f479d2ab980
 12513 ms     | 0x6817 PK11_DeriveWithTemplate()
 12513 ms  0x6817 ret:0x7f479cb28580
 12513 ms  0x6817 PK11_Derive()
 12513 ms  0x6817 basekey:0x7f479cb28580
 12513 ms     | 0x6817 PK11_DeriveWithTemplate()
 12513 ms  0x6817 ret:0x7f479cb28980
 12513 ms  0x6817 SECKEY_DestroyPrivateKey()
 12513 ms  0x6817 privk:0x7f47a54d6820::7f47a54d6820  c0 b4 62 a1                                      ..b.
 12513 ms  0x6817 privk:0x7f47a54d6820::7f47a54d6820  e5 e5 e5 e5                                      ....
 12513 ms  0x6817 PK11_Encrypt()
 12513 ms  0x6817 symkey:0x7f479cb29600
 12533 ms  0x6817 SSL_AuthCertificateComplete()
 12533 ms  0x6817 fd:0x7f47a182ae80
 12533 ms  0x6817 err:0x0
 12534 ms  SECKEY_ECParamsToKeySize()
 12534 ms  0x6817 ret:0x100
 12534 ms  SECKEY_ECParamsToBasePointOrderLen()
 12534 ms  0x6817 ret:0x100
 12534 ms  SECKEY_ECParamsToBasePointOrderLen()
 12534 ms  0x6817 ret:0x100
 12534 ms  0x6817 EC_ValidatePublicKey()
 12535 ms  0x6817 ret:0x0
 12537 ms  SECKEY_ECParamsToKeySize()
 12537 ms  0x6817 ret:0xff
 12537 ms  0x6817 SECKEY_CreateECPrivateKey()
 12537 ms  0x6817 cx:0x7f47a86a72c8
 12538 ms     | 0x6817 EC_ValidatePublicKey()
 12538 ms     | 0x6817 ret:0x0
 12538 ms  0x6817 ret:0x7f47a54db820::7f47a54db820  e0 5c 91 a1                                      .\..
 12538 ms  0x6817 PK11_PubDeriveWithKDF()
 12538 ms  0x6817 seckey:0x7f47a54db820
 12538 ms     | 0x6817 EC_ValidatePublicKey()
 12538 ms     | 0x6817 ret:0x0
 12538 ms  0x6817 ret:0x7f479d2ab980
 12538 ms  0x6817 PK11_DeriveWithFlags()
 12538 ms  0x6817 basekey:0x7f479d2ab980
 12538 ms     | 0x6817 PK11_DeriveWithTemplate()
 12538 ms  0x6817 ret:0x7f479cb29f80
 12538 ms  0x6817 PK11_Derive()
 12538 ms  0x6817 basekey:0x7f479cb29f80
 12541 ms     | 0x6817 PK11_DeriveWithTemplate()
 12541 ms  0x6817 ret:0x7f479cb72600
 12541 ms  0x6817 SECKEY_DestroyPrivateKey()
 12541 ms  0x6817 privk:0x7f47a54db820::7f47a54db820  e0 5c 91 a1                                      .\..
 12542 ms  0x6817 privk:0x7f47a54db820::7f47a54db820  e5 e5 e5 e5                                      ....
 12542 ms  0x6817 PK11_Encrypt()
 12542 ms  0x6817 symkey:0x7f479cb73a80
 12543 ms  SECKEY_ECParamsToKeySize()
 12543 ms  0x6817 ret:0x100
 12543 ms  SECKEY_ECParamsToBasePointOrderLen()
 12543 ms  0x6817 ret:0x100
 12543 ms  SECKEY_ECParamsToBasePointOrderLen()
 12543 ms  0x6817 ret:0x100
 12543 ms  0x6817 EC_ValidatePublicKey()
 12544 ms  0x6817 ret:0x0
 12546 ms  SECKEY_ECParamsToKeySize()
 12546 ms  0x6817 ret:0xff
 12546 ms  0x6817 SECKEY_CreateECPrivateKey()
 12546 ms  0x6817 cx:0x7f47a86a7128
 12546 ms     | 0x6817 EC_ValidatePublicKey()
 12546 ms     | 0x6817 ret:0x0
 12547 ms  0x6817 ret:0x7f47a54df820::7f47a54df820  50 a1 93 a1                                      P...
 12547 ms  0x6817 PK11_PubDeriveWithKDF()
 12547 ms  0x6817 seckey:0x7f47a54df820
 12547 ms     | 0x6817 EC_ValidatePublicKey()
 12547 ms     | 0x6817 ret:0x0
 12547 ms  0x6817 ret:0x7f479d2ab980
 12547 ms  0x6817 PK11_DeriveWithFlags()
 12547 ms  0x6817 basekey:0x7f479d2ab980
 12547 ms     | 0x6817 PK11_DeriveWithTemplate()
 12547 ms  0x6817 ret:0x7f479cb73d00
 12547 ms  0x6817 PK11_Derive()
 12547 ms  0x6817 basekey:0x7f479cb73d00
 12547 ms     | 0x6817 PK11_DeriveWithTemplate()
 12547 ms  0x6817 ret:0x7f479cbb8600
 12547 ms  0x6817 SECKEY_DestroyPrivateKey()
 12547 ms  0x6817 privk:0x7f47a54df820::7f47a54df820  50 a1 93 a1                                      P...
 12547 ms  0x6817 privk:0x7f47a54df820::7f47a54df820  e5 e5 e5 e5                                      ....
 12547 ms  0x6817 PK11_Encrypt()
 12547 ms  0x6817 symkey:0x7f479cbb8780
 12548 ms  0x6817 PK11_Encrypt()
 12548 ms  0x6817 symkey:0x7f479cb29600
 12548 ms  0x6817 PK11_Encrypt()
 12548 ms  0x6817 symkey:0x7f479cb29600
 12548 ms  0x6817 SSL_AuthCertificateComplete()
 12548 ms  0x6817 fd:0x7f47a18871f0
 12548 ms  0x6817 err:0x0
 12548 ms  0x6817 PR_Connect()
 12548 ms  0x6817 fd:0x7f47a19114f0
 12549 ms  0x6817 SSL_AuthCertificateComplete()
 12549 ms  0x6817 fd:0x7f479e577e50
 12549 ms  0x6817 err:0x0
 12549 ms  0x6817 SECKEY_DestroyPrivateKey()
 12549 ms  0x6817 privk:0x7f47a1a1e820::7f47a1a1e820  00 1b 55 9e                                      ..U.
 12549 ms  0x6817 privk:0x7f47a1a1e820::7f47a1a1e820  e5 e5 e5 e5                                      ....
 12549 ms  0x6817 SECKEY_DestroyPrivateKey()
 12549 ms  0x6817 privk:0x7f47a1a10820::7f47a1a10820  60 5f 20 9d                                      `_ .
 12549 ms  0x6817 privk:0x7f47a1a10820::7f47a1a10820  e5 e5 e5 e5                                      ....
           /* TID 0x681f */
 12551 ms  0x681f PR_Close()
 12551 ms  0x681f fd:0x7f479c703730
           /* TID 0x6817 */
 12551 ms  0x6817 PK11_Encrypt()
 12551 ms  0x6817 symkey:0x7f479c779280
 12551 ms  0x6817 PR_Connect()
 12551 ms  0x6817 fd:0x7f47a1911490
 12558 ms  0x6817 PR_Close()
 12558 ms  0x6817 fd:0x7f47a19114f0
 12558 ms  0x6817 SECKEY_DestroyPrivateKey()
 12558 ms  0x6817 privk:0x7f47a180a820::7f47a180a820  20 5e 20 9d                                       ^ .
 12558 ms  0x6817 privk:0x7f47a180a820::7f47a180a820  e5 e5 e5 e5                                      ....
 12558 ms  0x6817 SECKEY_DestroyPrivateKey()
 12558 ms  0x6817 privk:0x7f47a14a5020::7f47a14a5020  40 5c 20 9d                                      @\ .
 12558 ms  0x6817 privk:0x7f47a14a5020::7f47a14a5020  e5 e5 e5 e5                                      ....
 12564 ms  0x6817 PK11_DeriveWithFlags()
 12564 ms  0x6817 basekey:0x7f479c7eb480
 12564 ms     | 0x6817 PK11_DeriveWithTemplate()
 12564 ms  0x6817 ret:0x7f479d2ab980
 12564 ms  0x6817 PK11_DeriveWithFlags()
 12564 ms  0x6817 basekey:0x7f479c7eb480
 12564 ms     | 0x6817 PK11_DeriveWithTemplate()
 12564 ms  0x6817 ret:0x7f479d2ab980
 12564 ms  0x6817 PK11_Encrypt()
 12564 ms  0x6817 symkey:0x7f479cb73a80
 12565 ms  0x6817 PK11_Encrypt()
 12565 ms  0x6817 symkey:0x7f479cbb8780
 12566 ms  SECKEY_ECParamsToKeySize()
 12566 ms  0x6817 ret:0x100
 12566 ms  SECKEY_ECParamsToBasePointOrderLen()
 12566 ms  0x6817 ret:0x100
 12566 ms  SECKEY_ECParamsToBasePointOrderLen()
 12566 ms  0x6817 ret:0x100
 12566 ms  0x6817 EC_ValidatePublicKey()
 12567 ms  0x6817 ret:0x0
 12569 ms  SECKEY_ECParamsToKeySize()
 12569 ms  0x6817 ret:0xff
 12569 ms  0x6817 SECKEY_CreateECPrivateKey()
 12569 ms  0x6817 cx:0x7f47a86a7608
 12570 ms     | 0x6817 EC_ValidatePublicKey()
 12570 ms     | 0x6817 ret:0x0
 12570 ms  0x6817 ret:0x7f47a1a10820::7f47a1a10820  90 5c 20 9d                                      .\ .
 12570 ms  0x6817 PK11_PubDeriveWithKDF()
 12570 ms  0x6817 seckey:0x7f47a1a10820
 12570 ms     | 0x6817 EC_ValidatePublicKey()
 12570 ms     | 0x6817 ret:0x0
 12570 ms  0x6817 ret:0x7f479d2ab980
 12570 ms  0x6817 PK11_DeriveWithFlags()
 12570 ms  0x6817 basekey:0x7f479d2ab980
 12570 ms     | 0x6817 PK11_DeriveWithTemplate()
 12570 ms  0x6817 ret:0x7f479c90a000
 12570 ms  0x6817 PK11_Derive()
 12570 ms  0x6817 basekey:0x7f479c90a000
 12570 ms     | 0x6817 PK11_DeriveWithTemplate()
 12570 ms  0x6817 ret:0x7f479cbb9280
 12570 ms  0x6817 SECKEY_DestroyPrivateKey()
 12570 ms  0x6817 privk:0x7f47a1a10820::7f47a1a10820  90 5c 20 9d                                      .\ .
 12571 ms  0x6817 privk:0x7f47a1a10820::7f47a1a10820  e5 e5 e5 e5                                      ....
 12571 ms  0x6817 PK11_Encrypt()
 12571 ms  0x6817 symkey:0x7f479cbb9500
 12575 ms  0x6817 PR_Close()
 12575 ms  0x6817 fd:0x7f47a0178040
 12575 ms     | 0x6817 PK11_Encrypt()
 12575 ms     | 0x6817 symkey:0x7f479c77a580
 12576 ms  0x6817 PR_Close()
 12576 ms  0x6817 fd:0x7f479b7b5640
 12576 ms     | 0x6817 PK11_Encrypt()
 12576 ms     | 0x6817 symkey:0x7f479c779e80
 12576 ms  0x6817 SSL_AuthCertificateComplete()
 12576 ms  0x6817 fd:0x7f47a18dd0a0
 12576 ms  0x6817 err:0x0
 12576 ms  0x6817 PR_Close()
 12576 ms  0x6817 fd:0x7f47a1911490
 12577 ms  0x6817 SECKEY_DestroyPrivateKey()
 12577 ms  0x6817 privk:0x7f47a1318820::7f47a1318820  00 5b 20 9d                                      .[ .
 12577 ms  0x6817 privk:0x7f47a1318820::7f47a1318820  e5 e5 e5 e5                                      ....
 12577 ms  0x6817 SECKEY_DestroyPrivateKey()
 12577 ms  0x6817 privk:0x7f47a1311020::7f47a1311020  20 59 20 9d                                       Y .
 12577 ms  0x6817 privk:0x7f47a1311020::7f47a1311020  e5 e5 e5 e5                                      ....
 12577 ms  0x6817 PK11_Encrypt()
 12577 ms  0x6817 symkey:0x7f479cbb9500
 12577 ms  0x6817 PR_Close()
 12577 ms  0x6817 fd:0x7f479b7b50d0
 12577 ms     | 0x6817 PK11_Encrypt()
 12577 ms     | 0x6817 symkey:0x7f479c7eb700
 12602 ms  0x6817 PR_Connect()
 12602 ms  0x6817 fd:0x7f479b7b50d0
 12603 ms  0x6817 PR_Connect()
 12603 ms  0x6817 fd:0x7f479c703730
 12603 ms  0x6817 PR_Close()
 12603 ms  0x6817 fd:0x7f479b7b50d0
 12603 ms  0x6817 PR_Close()
 12603 ms  0x6817 fd:0x7f479c703730
 12630 ms  SECKEY_ECParamsToKeySize()
 12630 ms  0x6817 ret:0x100
 12630 ms  SECKEY_ECParamsToBasePointOrderLen()
 12630 ms  0x6817 ret:0x100
 12630 ms  SECKEY_ECParamsToBasePointOrderLen()
 12630 ms  0x6817 ret:0x100
 12630 ms  0x6817 EC_ValidatePublicKey()
 12632 ms  0x6817 ret:0x0
 12634 ms  SECKEY_ECParamsToKeySize()
 12634 ms  0x6817 ret:0x100
 12634 ms  0x6817 SECKEY_CreateECPrivateKey()
 12634 ms  0x6817 cx:0x7f47a86a7948
 12634 ms     | 0x6817 EC_ValidatePublicKey()
 12636 ms     | 0x6817 ret:0x0
 12636 ms  0x6817 ret:0x7f47a1318820::7f47a1318820  10 5a 20 9d                                      .Z .
 12637 ms  0x6817 PK11_PubDeriveWithKDF()
 12637 ms  0x6817 seckey:0x7f47a1318820
 12637 ms     | 0x6817 EC_ValidatePublicKey()
 12638 ms     | 0x6817 ret:0x0
 12639 ms  0x6817 ret:0x7f479c7eb400
 12639 ms  0x6817 PK11_DeriveWithFlags()
 12639 ms  0x6817 basekey:0x7f479c7eb400
 12639 ms     | 0x6817 PK11_DeriveWithTemplate()
 12639 ms  0x6817 ret:0x7f479c77a380
 12639 ms  0x6817 PK11_Derive()
 12639 ms  0x6817 basekey:0x7f479c77a380
 12639 ms     | 0x6817 PK11_DeriveWithTemplate()
 12640 ms  0x6817 ret:0x7f479c779700
 12640 ms  0x6817 SECKEY_DestroyPrivateKey()
 12640 ms  0x6817 privk:0x7f47a1318820::7f47a1318820  10 5a 20 9d                                      .Z .
 12640 ms  0x6817 privk:0x7f47a1318820::7f47a1318820  e5 e5 e5 e5                                      ....
 12640 ms  0x6817 PK11_Encrypt()
 12640 ms  0x6817 symkey:0x7f479c7eb600
 12640 ms  0x6817 SSL_AuthCertificateComplete()
 12640 ms  0x6817 fd:0x7f47a18fe4f0
 12640 ms  0x6817 err:0x0
 12640 ms  0x6817 PK11_Encrypt()
 12640 ms  0x6817 symkey:0x7f479c7eb600
 12670 ms  0x6817 SSL_ImportFD()
 12670 ms  0x6817 ret:0x7f479cbbd940
 12670 ms  0x6817 SSL_AuthCertificateHook()
 12670 ms  0x6817 fd:0x7f479cbbd940
 12670 ms  0x6817 ret:0x0
 12670 ms  0x6817 PR_Connect()
 12670 ms  0x6817 fd:0x7f479cbbd940
 12707 ms  0x6817 SECKEY_DestroyPrivateKey()
 12707 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  00 01 88 a1                                      ....
 12707 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  e5 e5 e5 e5                                      ....
 12707 ms  0x6817 SECKEY_DestroyPrivateKey()
 12707 ms  0x6817 privk:0x7f47a44b5020::7f47a44b5020  e0 b2 6f a1                                      ..o.
 12707 ms  0x6817 privk:0x7f47a44b5020::7f47a44b5020  e5 e5 e5 e5                                      ....
 12707 ms  0x6817 PK11_Encrypt()
 12707 ms  0x6817 symkey:0x7f479b48a200
 12712 ms  0x6817 PK11_Encrypt()
 12712 ms  0x6817 symkey:0x7f479d2fef00
 12715 ms  0x6817 PK11_Encrypt()
 12715 ms  0x6817 symkey:0x7f479d2bb480
 12723 ms  0x6817 SECKEY_CreateECPrivateKey()
 12723 ms  0x6817 cx:0x7f479ba1ef48
 12724 ms     | 0x6817 EC_ValidatePublicKey()
 12725 ms     | 0x6817 ret:0x0
 12725 ms  0x6817 ret:0x7f47a180a820::7f47a180a820  00 5b 20 9d                                      .[ .
 12725 ms  0x6817 SECKEY_CreateECPrivateKey()
 12725 ms  0x6817 cx:0x7f479ba1ef48
 12726 ms     | 0x6817 EC_ValidatePublicKey()
 12730 ms     | 0x6817 ret:0x0
 12730 ms  0x6817 ret:0x7f47a1a11820::7f47a1a11820  30 5d 20 9d                                      0] .
 12766 ms  0x6817 SSL_ImportFD()
 12767 ms  0x6817 ret:0x7f47a18dde80
 12767 ms  0x6817 SSL_AuthCertificateHook()
 12767 ms  0x6817 fd:0x7f47a18dde80
 12767 ms  0x6817 ret:0x0
 12767 ms  0x6817 PR_Connect()
 12767 ms  0x6817 fd:0x7f47a18dde80
 12788 ms  0x6817 SECKEY_DestroyPrivateKey()
 12788 ms  0x6817 privk:0x7f47a44b0820::7f47a44b0820  c0 e4 6e a1                                      ..n.
           /* TID 0x681f */
 12792 ms  0x681f PR_Close()
 12792 ms  0x681f fd:0x7f479c79a4c0
           /* TID 0x6817 */
 12792 ms  0x6817 privk:0x7f47a44b0820::7f47a44b0820  e5 e5 e5 e5                                      ....
 12792 ms  0x6817 SECKEY_DestroyPrivateKey()
 12792 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  40 e2 6e a1                                      @.n.
 12792 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  e5 e5 e5 e5                                      ....
 12797 ms  0x6817 PK11_Encrypt()
 12797 ms  0x6817 symkey:0x7f479c9a1400
 12836 ms  0x6817 SECKEY_DestroyPrivateKey()
 12836 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  a0 16 bb 9c                                      ....
 12836 ms  0x6817 privk:0x7f47a1814820::7f47a1814820  e5 e5 e5 e5                                      ....
 12836 ms  0x6817 SECKEY_DestroyPrivateKey()
 12836 ms  0x6817 privk:0x7f479c9c7820::7f479c9c7820  a0 11 bb 9c                                      ....
 12836 ms  0x6817 privk:0x7f479c9c7820::7f479c9c7820  e5 e5 e5 e5                                      ....
 12836 ms  0x6817 PR_Close()
 12836 ms  0x6817 fd:0x7f47a18871f0
 12836 ms     | 0x6817 PK11_Encrypt()
 12836 ms     | 0x6817 symkey:0x7f479cb73a80
 12837 ms  0x6817 SECKEY_DestroyPrivateKey()
 12837 ms  0x6817 privk:0x7f47a4f0f820::7f47a4f0f820  e0 c7 8e a1                                      ....
 12837 ms  0x6817 privk:0x7f47a4f0f820::7f47a4f0f820  e5 e5 e5 e5                                      ....
 12837 ms  0x6817 SECKEY_DestroyPrivateKey()
 12837 ms  0x6817 privk:0x7f47a4f0c820::7f47a4f0c820  50 0b 88 a1                                      P...
 12838 ms  0x6817 privk:0x7f47a4f0c820::7f47a4f0c820  e5 e5 e5 e5                                      ....
 12838 ms  0x6817 PR_Close()
 12838 ms  0x6817 fd:0x7f479e577e50
 12838 ms     | 0x6817 PK11_Encrypt()
 12838 ms     | 0x6817 symkey:0x7f479cbb8780
 12860 ms  0x6817 SECKEY_DestroyPrivateKey()
 12860 ms  0x6817 privk:0x7f47a1b7e820::7f47a1b7e820  20 04 61 a1                                       .a.
 12860 ms  0x6817 privk:0x7f47a1b7e820::7f47a1b7e820  e5 e5 e5 e5                                      ....
 12860 ms  0x6817 SECKEY_DestroyPrivateKey()
 12860 ms  0x6817 privk:0x7f47a1b7c820::7f47a1b7c820  60 1f 47 a1                                      `.G.
 12860 ms  0x6817 privk:0x7f47a1b7c820::7f47a1b7c820  e5 e5 e5 e5                                      ....
 12860 ms  0x6817 PK11_Encrypt()
 12860 ms  0x6817 symkey:0x7f479cb29600
 12862 ms  0x6817 SECKEY_DestroyPrivateKey()
 12862 ms  0x6817 privk:0x7f47a4f17820::7f47a4f17820  10 ca 8e a1                                      ....
 12862 ms  0x6817 privk:0x7f47a4f17820::7f47a4f17820  e5 e5 e5 e5                                      ....
 12862 ms  0x6817 SECKEY_DestroyPrivateKey()
 12862 ms  0x6817 privk:0x7f47a4f10020::7f47a4f10020  10 2f db 9c                                      ./..
 12862 ms  0x6817 privk:0x7f47a4f10020::7f47a4f10020  e5 e5 e5 e5                                      ....
 12863 ms  0x6817 PR_Close()
 12863 ms  0x6817 fd:0x7f47a18dd0a0
 12863 ms     | 0x6817 PK11_Encrypt()
 12863 ms     | 0x6817 symkey:0x7f479cbb9500
 12944 ms  0x6817 SECKEY_DestroyPrivateKey()
 12944 ms  0x6817 privk:0x7f47a54d4820::7f47a54d4820  60 b0 62 a1                                      `.b.
 12944 ms  0x6817 privk:0x7f47a54d4820::7f47a54d4820  e5 e5 e5 e5                                      ....
 12945 ms  0x6817 SECKEY_DestroyPrivateKey()
 12945 ms  0x6817 privk:0x7f47a54d2820::7f47a54d2820  00 21 db 9c                                      .!..
 12945 ms  0x6817 privk:0x7f47a54d2820::7f47a54d2820  e5 e5 e5 e5                                      ....
 12945 ms  0x6817 PR_Close()
 12945 ms  0x6817 fd:0x7f47a18fe4f0
 12945 ms     | 0x6817 PK11_Encrypt()
 12945 ms     | 0x6817 symkey:0x7f479c7eb600
 12958 ms  0x6817 SECKEY_CreateECPrivateKey()
 12958 ms  0x6817 cx:0x7f479ba1f908
 12959 ms     | 0x6817 EC_ValidatePublicKey()
 12959 ms     | 0x6817 ret:0x0
 12959 ms  0x6817 ret:0x7f479c9c5020::7f479c9c5020  b0 10 bb 9c                                      ....
 12960 ms  0x6817 SECKEY_CreateECPrivateKey()
 12960 ms  0x6817 cx:0x7f479ba1f908
 12962 ms     | 0x6817 EC_ValidatePublicKey()
 12967 ms     | 0x6817 ret:0x0
 12967 ms  0x6817 ret:0x7f47a1310820::7f47a1310820  50 16 bb 9c                                      P...
 12991 ms  0x6817 SECKEY_CreateECPrivateKey()
 12991 ms  0x6817 cx:0x7f479ba1eda8
 12992 ms     | 0x6817 EC_ValidatePublicKey()
 12992 ms     | 0x6817 ret:0x0
 12992 ms  0x6817 ret:0x7f47a1498020::7f47a1498020  00 21 db 9c                                      .!..
 12993 ms  0x6817 SECKEY_CreateECPrivateKey()
 12993 ms  0x6817 cx:0x7f479ba1eda8
 12994 ms     | 0x6817 EC_ValidatePublicKey()
 13002 ms     | 0x6817 ret:0x0
 13002 ms  0x6817 ret:0x7f47a1805820::7f47a1805820  80 58 20 9d                                      .X .
 13035 ms  SECKEY_ECParamsToKeySize()
 13035 ms  0x6817 ret:0x100
 13035 ms  0x6817 SECKEY_CreateECPrivateKey()
 13035 ms  0x6817 cx:0x7f479ba1ef48
 13037 ms     | 0x6817 EC_ValidatePublicKey()
 13041 ms     | 0x6817 ret:0x0
 13041 ms  0x6817 ret:0x7f47a1a03820::7f47a1a03820  00 16 55 9e                                      ..U.
 13041 ms  0x6817 PK11_PubDeriveWithKDF()
 13041 ms  0x6817 seckey:0x7f47a1a03820
 13041 ms     | 0x6817 EC_ValidatePublicKey()
 13045 ms     | 0x6817 ret:0x0
 13049 ms  0x6817 ret:0x7f479c779700
 13049 ms  0x6817 PK11_DeriveWithFlags()
 13049 ms  0x6817 basekey:0x7f479c779700
 13049 ms     | 0x6817 PK11_DeriveWithTemplate()
 13049 ms  0x6817 ret:0x7f479c77a380
 13049 ms  0x6817 PK11_Derive()
 13049 ms  0x6817 basekey:0x7f479c77a380
 13049 ms     | 0x6817 PK11_DeriveWithTemplate()
 13050 ms  0x6817 ret:0x7f479cbb9280
 13050 ms  0x6817 SECKEY_DestroyPrivateKey()
 13050 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  00 16 55 9e                                      ..U.
 13050 ms  0x6817 privk:0x7f47a1a03820::7f47a1a03820  e5 e5 e5 e5                                      ....
 13050 ms  0x6817 PK11_Encrypt()
 13050 ms  0x6817 symkey:0x7f479c7eb680
 13050 ms  0x6817 SSL_AuthCertificateComplete()
 13050 ms  0x6817 fd:0x7f479cbbdb80
 13050 ms  0x6817 err:0x0
 13051 ms  0x6817 PK11_Encrypt()
 13051 ms  0x6817 symkey:0x7f479c7eb680
 13102 ms  0x6817 SSL_ImportFD()
 13102 ms  0x6817 ret:0x7f47a13b0dc0
 13102 ms  0x6817 SSL_AuthCertificateHook()
 13102 ms  0x6817 fd:0x7f47a13b0dc0
 13102 ms  0x6817 ret:0x0
 13102 ms  0x6817 PR_Connect()
 13102 ms  0x6817 fd:0x7f47a13b0dc0
 13105 ms  0x6817 SSL_ImportFD()
 13105 ms  0x6817 ret:0x7f479e577e50
 13105 ms  0x6817 SSL_AuthCertificateHook()
 13105 ms  0x6817 fd:0x7f479e577e50
 13106 ms  0x6817 ret:0x0
 13106 ms  0x6817 PR_Connect()
 13106 ms  0x6817 fd:0x7f479e577e50
           /* TID 0x681f */
 13112 ms  0x681f PR_Close()
 13112 ms  0x681f fd:0x7f479c79a4c0
           /* TID 0x6817 */
 13157 ms  SECKEY_ECParamsToKeySize()
 13157 ms  0x6817 ret:0x100
 13157 ms  SECKEY_ECParamsToBasePointOrderLen()
 13157 ms  0x6817 ret:0x100
 13157 ms  SECKEY_ECParamsToBasePointOrderLen()
 13157 ms  0x6817 ret:0x100
 13157 ms  0x6817 EC_ValidatePublicKey()
 13160 ms  0x6817 ret:0x0
 13165 ms  SECKEY_ECParamsToKeySize()
 13167 ms  0x6817 ret:0x100
 13167 ms  0x6817 SECKEY_CreateECPrivateKey()
 13167 ms  0x6817 cx:0x7f479ba1f908
 13168 ms     | 0x6817 EC_ValidatePublicKey()
 13171 ms     | 0x6817 ret:0x0
 13171 ms  0x6817 ret:0x7f47a1b81020::7f47a1b81020  00 db 4d a1                                      ..M.
 13171 ms  0x6817 PK11_PubDeriveWithKDF()
 13171 ms  0x6817 seckey:0x7f47a1b81020
 13171 ms     | 0x6817 EC_ValidatePublicKey()
 13174 ms     | 0x6817 ret:0x0
 13176 ms  0x6817 ret:0x7f479c779700
 13176 ms  0x6817 PK11_DeriveWithFlags()
 13176 ms  0x6817 basekey:0x7f479c779700
 13176 ms     | 0x6817 PK11_DeriveWithTemplate()
 13176 ms  0x6817 ret:0x7f479c90a000
 13176 ms  0x6817 PK11_Derive()
 13176 ms  0x6817 basekey:0x7f479c90a000
 13176 ms     | 0x6817 PK11_DeriveWithTemplate()
 13176 ms  0x6817 ret:0x7f479cbb8600
 13176 ms  0x6817 SECKEY_DestroyPrivateKey()
 13176 ms  0x6817 privk:0x7f47a1b81020::7f47a1b81020  00 db 4d a1                                      ..M.
 13177 ms  0x6817 privk:0x7f47a1b81020::7f47a1b81020  e5 e5 e5 e5                                      ....
 13177 ms  0x6817 PK11_Encrypt()
 13177 ms  0x6817 symkey:0x7f479cbb9300
 13181 ms  0x6817 SECKEY_DestroyPrivateKey()
 13181 ms  0x6817 privk:0x7f47a1b78820::7f47a1b78820  60 1a 47 a1                                      `.G.
 13181 ms  0x6817 privk:0x7f47a1b78820::7f47a1b78820  e5 e5 e5 e5                                      ....
 13181 ms  0x6817 SECKEY_DestroyPrivateKey()
 13181 ms  0x6817 privk:0x7f47a1b76820::7f47a1b76820  70 49 1c a0                                      pI..
 13181 ms  0x6817 privk:0x7f47a1b76820::7f47a1b76820  e5 e5 e5 e5                                      ....
 13181 ms  0x6817 PK11_Encrypt()
 13181 ms  0x6817 symkey:0x7f479b7b8800
           /* TID 0x687f */
 13206 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13206 ms  0x687f ret:0x0
 13207 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 13207 ms  0x687f ret:0x0
           /* TID 0x681f */
 13207 ms  0x681f PR_Close()
 13207 ms  0x681f fd:0x7f479b7a75b0
           /* TID 0x6817 */
 13207 ms  0x6817 SSL_AuthCertificateComplete()
 13207 ms  0x6817 fd:0x7f47a18dde80
 13207 ms  0x6817 err:0x0
 13212 ms  0x6817 PK11_Encrypt()
 13212 ms  0x6817 symkey:0x7f479cbb9300
 13213 ms  0x6817 PK11_Encrypt()
 13213 ms  0x6817 symkey:0x7f479cbb9300
           /* TID 0x681f */
 13220 ms  0x681f PR_Close()
 13220 ms  0x681f fd:0x7f479b7a75b0
 13229 ms  0x681f PR_Close()
 13229 ms  0x681f fd:0x7f47a1887100
           /* TID 0x6817 */
 13236 ms  0x6817 PK11_Encrypt()
 13236 ms  0x6817 symkey:0x7f479cb29600
 13288 ms  0x6817 PK11_Encrypt()
 13288 ms  0x6817 symkey:0x7f479b46ea80
 13294 ms  0x6817 SECKEY_CreateECPrivateKey()
 13294 ms  0x6817 cx:0x7f479ba1fc48
 13295 ms     | 0x6817 EC_ValidatePublicKey()
 13295 ms     | 0x6817 ret:0x0
 13295 ms  0x6817 ret:0x7f47a1b7e020::7f47a1b7e020  70 49 1c a0                                      pI..
 13295 ms  0x6817 SECKEY_CreateECPrivateKey()
 13295 ms  0x6817 cx:0x7f479ba1fc48
 13295 ms     | 0x6817 EC_ValidatePublicKey()
 13297 ms     | 0x6817 ret:0x0
 13297 ms  0x6817 ret:0x7f47a1b81820::7f47a1b81820  60 1a 47 a1                                      `.G.
 13331 ms  SECKEY_ECParamsToKeySize()
 13331 ms  0x6817 ret:0x100
 13331 ms  0x6817 SECKEY_CreateECPrivateKey()
 13331 ms  0x6817 cx:0x7f479ba1eda8
 13332 ms     | 0x6817 EC_ValidatePublicKey()
 13333 ms     | 0x6817 ret:0x0
 13333 ms  0x6817 ret:0x7f47a44ab820::7f47a44ab820  80 d3 4d a1                                      ..M.
 13333 ms  0x6817 PK11_PubDeriveWithKDF()
 13333 ms  0x6817 seckey:0x7f47a44ab820
 13333 ms     | 0x6817 EC_ValidatePublicKey()
 13335 ms     | 0x6817 ret:0x0
 13336 ms  0x6817 ret:0x7f479c779700
 13336 ms  0x6817 PK11_DeriveWithFlags()
 13336 ms  0x6817 basekey:0x7f479c779700
 13336 ms     | 0x6817 PK11_DeriveWithTemplate()
 13336 ms  0x6817 ret:0x7f479cb73d00
 13336 ms  0x6817 PK11_Derive()
 13336 ms  0x6817 basekey:0x7f479cb73d00
 13336 ms     | 0x6817 PK11_DeriveWithTemplate()
 13336 ms  0x6817 ret:0x7f479cb72600
 13336 ms  0x6817 SECKEY_DestroyPrivateKey()
 13336 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  80 d3 4d a1                                      ..M.
 13337 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  e5 e5 e5 e5                                      ....
 13337 ms  0x6817 PK11_Encrypt()
 13337 ms  0x6817 symkey:0x7f479cbb8680
 13337 ms  0x6817 SSL_AuthCertificateComplete()
 13337 ms  0x6817 fd:0x7f479cbbd940
 13337 ms  0x6817 err:0x0
 13337 ms  0x6817 PK11_Encrypt()
 13337 ms  0x6817 symkey:0x7f479cbb8680
 13345 ms  0x6817 SECKEY_DestroyPrivateKey()
 13345 ms  0x6817 privk:0x7f47a1a11820::7f47a1a11820  30 5d 20 9d                                      0] .
 13345 ms  0x6817 privk:0x7f47a1a11820::7f47a1a11820  e5 e5 e5 e5                                      ....
 13345 ms  0x6817 SECKEY_DestroyPrivateKey()
 13345 ms  0x6817 privk:0x7f47a180a820::7f47a180a820  00 5b 20 9d                                      .[ .
 13345 ms  0x6817 privk:0x7f47a180a820::7f47a180a820  e5 e5 e5 e5                                      ....
 13345 ms  0x6817 PK11_Encrypt()
 13345 ms  0x6817 symkey:0x7f479c7eb680
 13346 ms  0x6817 SSL_ImportFD()
 13346 ms  0x6817 ret:0x7f47a18fe580
 13346 ms  0x6817 SSL_AuthCertificateHook()
 13346 ms  0x6817 fd:0x7f47a18fe580
 13346 ms  0x6817 ret:0x0
 13346 ms  0x6817 PR_Connect()
 13346 ms  0x6817 fd:0x7f47a18fe580
 13360 ms  0x6817 SSL_ImportFD()
 13360 ms  0x6817 ret:0x7f47a1931970
 13360 ms  0x6817 SSL_AuthCertificateHook()
 13360 ms  0x6817 fd:0x7f47a1931970
 13360 ms  0x6817 ret:0x0
 13360 ms  0x6817 PR_Connect()
 13360 ms  0x6817 fd:0x7f47a1931970
 13365 ms  0x6817 SECKEY_DestroyPrivateKey()
 13365 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  50 16 bb 9c                                      P...
 13365 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  e5 e5 e5 e5                                      ....
 13365 ms  0x6817 SECKEY_DestroyPrivateKey()
 13365 ms  0x6817 privk:0x7f479c9c5020::7f479c9c5020  b0 10 bb 9c                                      ....
 13365 ms  0x6817 privk:0x7f479c9c5020::7f479c9c5020  e5 e5 e5 e5                                      ....
 13365 ms  0x6817 PK11_Encrypt()
 13365 ms  0x6817 symkey:0x7f479cbb9300
 13412 ms  SECKEY_ECParamsToKeySize()
 13412 ms  0x6817 ret:0x100
 13413 ms  SECKEY_ECParamsToBasePointOrderLen()
 13413 ms  0x6817 ret:0x100
 13413 ms  SECKEY_ECParamsToBasePointOrderLen()
 13413 ms  0x6817 ret:0x100
 13413 ms  0x6817 EC_ValidatePublicKey()
 13418 ms  0x6817 ret:0x0
 13425 ms  SECKEY_ECParamsToKeySize()
 13425 ms  0x6817 ret:0xff
 13425 ms  0x6817 SECKEY_CreateECPrivateKey()
 13425 ms  0x6817 cx:0x7f47a86a6c48
 13427 ms     | 0x6817 EC_ValidatePublicKey()
 13427 ms     | 0x6817 ret:0x0
 13427 ms  0x6817 ret:0x7f479cd53820::7f479cd53820  b0 10 bb 9c                                      ....
 13427 ms  0x6817 PK11_PubDeriveWithKDF()
 13427 ms  0x6817 seckey:0x7f479cd53820
 13427 ms     | 0x6817 EC_ValidatePublicKey()
 13427 ms     | 0x6817 ret:0x0
 13429 ms  0x6817 ret:0x7f479c779700
 13429 ms  0x6817 PK11_DeriveWithFlags()
 13429 ms  0x6817 basekey:0x7f479c779700
 13429 ms     | 0x6817 PK11_DeriveWithTemplate()
 13429 ms  0x6817 ret:0x7f479cb29f80
 13429 ms  0x6817 PK11_Derive()
 13429 ms  0x6817 basekey:0x7f479cb29f80
 13429 ms     | 0x6817 PK11_DeriveWithTemplate()
 13429 ms  0x6817 ret:0x7f479c7eb400
 13429 ms  0x6817 SECKEY_DestroyPrivateKey()
 13429 ms  0x6817 privk:0x7f479cd53820::7f479cd53820  b0 10 bb 9c                                      ....
 13429 ms  0x6817 privk:0x7f479cd53820::7f479cd53820  e5 e5 e5 e5                                      ....
 13429 ms  0x6817 PK11_Encrypt()
 13429 ms  0x6817 symkey:0x7f479cb72700
 13430 ms  0x6817 SSL_AuthCertificateComplete()
 13430 ms  0x6817 fd:0x7f47a1887130
 13430 ms  0x6817 err:0x0
 13430 ms  0x6817 PK11_Encrypt()
 13430 ms  0x6817 symkey:0x7f479cb72700
 13431 ms  0x6817 SECKEY_CreateECPrivateKey()
 13431 ms  0x6817 cx:0x7f479ba20128
 13432 ms     | 0x6817 EC_ValidatePublicKey()
 13432 ms     | 0x6817 ret:0x0
 13432 ms  0x6817 ret:0x7f47a1310820::7f47a1310820  30 8d b7 9c                                      0...
 13432 ms  0x6817 SECKEY_CreateECPrivateKey()
 13432 ms  0x6817 cx:0x7f479ba20128
 13434 ms     | 0x6817 EC_ValidatePublicKey()
 13438 ms     | 0x6817 ret:0x0
 13438 ms  0x6817 ret:0x7f47a1a11820::7f47a1a11820  f0 5b 20 9d                                      .[ .
 13462 ms  SECKEY_ECParamsToKeySize()
 13462 ms  0x6817 ret:0x100
 13462 ms  SECKEY_ECParamsToBasePointOrderLen()
 13462 ms  0x6817 ret:0x100
 13462 ms  SECKEY_ECParamsToBasePointOrderLen()
 13462 ms  0x6817 ret:0x100
 13462 ms  0x6817 EC_ValidatePublicKey()
 13464 ms  0x6817 ret:0x0
 13469 ms  SECKEY_ECParamsToKeySize()
 13469 ms  0x6817 ret:0xff
 13469 ms  0x6817 SECKEY_CreateECPrivateKey()
 13469 ms  0x6817 cx:0x7f47a86a6288
 13470 ms     | 0x6817 EC_ValidatePublicKey()
 13470 ms     | 0x6817 ret:0x0
 13470 ms  0x6817 ret:0x7f47a44b0820::7f47a44b0820  70 a9 55 9e                                      p.U.
 13470 ms  0x6817 PK11_PubDeriveWithKDF()
 13470 ms  0x6817 seckey:0x7f47a44b0820
 13470 ms     | 0x6817 EC_ValidatePublicKey()
 13470 ms     | 0x6817 ret:0x0
 13471 ms  0x6817 ret:0x7f479c779700
 13471 ms  0x6817 PK11_DeriveWithFlags()
 13471 ms  0x6817 basekey:0x7f479c779700
 13471 ms     | 0x6817 PK11_DeriveWithTemplate()
 13471 ms  0x6817 ret:0x7f479c779500
 13471 ms  0x6817 PK11_Derive()
 13471 ms  0x6817 basekey:0x7f479c779500
 13471 ms     | 0x6817 PK11_DeriveWithTemplate()
 13471 ms  0x6817 ret:0x7f479b7b0600
 13471 ms  0x6817 SECKEY_DestroyPrivateKey()
 13471 ms  0x6817 privk:0x7f47a44b0820::7f47a44b0820  70 a9 55 9e                                      p.U.
 13471 ms  0x6817 privk:0x7f47a44b0820::7f47a44b0820  e5 e5 e5 e5                                      ....
 13471 ms  0x6817 PK11_Encrypt()
 13471 ms  0x6817 symkey:0x7f479c779d80
 13472 ms  0x6817 SSL_AuthCertificateComplete()
 13472 ms  0x6817 fd:0x7f479b7b51c0
 13472 ms  0x6817 err:0x0
 13472 ms  0x6817 PK11_Encrypt()
 13472 ms  0x6817 symkey:0x7f479c779d80
 13473 ms  0x6817 PK11_Encrypt()
 13473 ms  0x6817 symkey:0x7f479c779280
 13493 ms  SECKEY_ECParamsToKeySize()
 13494 ms  0x6817 ret:0x100
 13494 ms  0x6817 SECKEY_CreateECPrivateKey()
 13494 ms  0x6817 cx:0x7f479ba1fc48
 13494 ms     | 0x6817 EC_ValidatePublicKey()
 13497 ms     | 0x6817 ret:0x0
 13497 ms  0x6817 ret:0x7f47a44b5020::7f47a44b5020  40 d2 4d a1                                      @.M.
 13497 ms  0x6817 PK11_PubDeriveWithKDF()
 13497 ms  0x6817 seckey:0x7f47a44b5020
 13497 ms     | 0x6817 EC_ValidatePublicKey()
 13499 ms     | 0x6817 ret:0x0
 13501 ms  0x6817 ret:0x7f479c779700
 13501 ms  0x6817 PK11_DeriveWithFlags()
 13501 ms  0x6817 basekey:0x7f479c779700
 13501 ms     | 0x6817 PK11_DeriveWithTemplate()
 13501 ms  0x6817 ret:0x7f479c7eaa80
 13501 ms  0x6817 PK11_Derive()
 13501 ms  0x6817 basekey:0x7f479c7eaa80
 13501 ms     | 0x6817 PK11_DeriveWithTemplate()
 13501 ms  0x6817 ret:0x7f479c77a400
 13501 ms  0x6817 SECKEY_DestroyPrivateKey()
 13501 ms  0x6817 privk:0x7f47a44b5020::7f47a44b5020  40 d2 4d a1                                      @.M.
 13501 ms  0x6817 privk:0x7f47a44b5020::7f47a44b5020  e5 e5 e5 e5                                      ....
 13501 ms  0x6817 PK11_Encrypt()
 13501 ms  0x6817 symkey:0x7f479cbb9700
 13502 ms  0x6817 SSL_AuthCertificateComplete()
 13502 ms  0x6817 fd:0x7f47a13b0dc0
 13502 ms  0x6817 err:0x0
 13502 ms  0x6817 PK11_Encrypt()
 13502 ms  0x6817 symkey:0x7f479cbb9700
 13502 ms  0x6817 PK11_Encrypt()
 13502 ms  0x6817 symkey:0x7f479cbb9700
           /* TID 0x681f */
 13556 ms  0x681f PR_Close()
 13556 ms  0x681f fd:0x7f479c703f10
 13570 ms  0x681f PR_Close()
 13570 ms  0x681f fd:0x7f479e577820
           /* TID 0x6817 */
 13585 ms  0x6817 PK11_Encrypt()
 13585 ms  0x6817 symkey:0x7f479d2bb480
 13589 ms  0x6817 PK11_Encrypt()
 13589 ms  0x6817 symkey:0x7f479d2bb480
 13600 ms  0x6817 SSL_ImportFD()
 13600 ms  0x6817 ret:0x7f47a19317c0
 13600 ms  0x6817 SSL_AuthCertificateHook()
 13600 ms  0x6817 fd:0x7f47a19317c0
 13600 ms  0x6817 ret:0x0
 13600 ms  0x6817 PR_Connect()
 13600 ms  0x6817 fd:0x7f47a19317c0
 13654 ms  0x6817 SECKEY_CreateECPrivateKey()
 13654 ms  0x6817 cx:0x7f479ba20608
 13654 ms     | 0x6817 EC_ValidatePublicKey()
 13654 ms     | 0x6817 ret:0x0
 13654 ms  0x6817 ret:0x7f47a44b9020::7f47a44b9020  40 d2 4d a1                                      @.M.
 13655 ms  0x6817 SECKEY_CreateECPrivateKey()
 13655 ms  0x6817 cx:0x7f479ba20608
           /* TID 0x681f */
 13656 ms  0x681f PR_Close()
 13656 ms  0x681f fd:0x7f479e577820
           /* TID 0x6817 */
 13656 ms     | 0x6817 EC_ValidatePublicKey()
 13659 ms     | 0x6817 ret:0x0
 13659 ms  0x6817 ret:0x7f47a4f0c020::7f47a4f0c020  20 04 61 a1                                       .a.
 13667 ms  0x6817 SECKEY_DestroyPrivateKey()
 13667 ms  0x6817 privk:0x7f47a1805820::7f47a1805820  80 58 20 9d                                      .X .
 13667 ms  0x6817 privk:0x7f47a1805820::7f47a1805820  e5 e5 e5 e5                                      ....
 13667 ms  0x6817 SECKEY_DestroyPrivateKey()
 13667 ms  0x6817 privk:0x7f47a1498020::7f47a1498020  00 21 db 9c                                      .!..
 13668 ms  0x6817 privk:0x7f47a1498020::7f47a1498020  e5 e5 e5 e5                                      ....
 13668 ms  0x6817 PR_Close()
 13668 ms  0x6817 fd:0x7f479cbbd940
 13668 ms     | 0x6817 PK11_Encrypt()
 13668 ms     | 0x6817 symkey:0x7f479cbb8680
           /* TID 0x681f */
 13669 ms  0x681f PR_Close()
 13669 ms  0x681f fd:0x7f47a18ddaf0
 13669 ms  0x681f PR_Close()
 13669 ms  0x681f fd:0x7f479cbbda90
 13670 ms  0x681f PR_Close()
 13670 ms  0x681f fd:0x7f479c703730
           /* TID 0x6817 */
 13672 ms  0x6817 SECKEY_CreateECPrivateKey()
 13672 ms  0x6817 cx:0x7f479ba202c8
 13673 ms     | 0x6817 EC_ValidatePublicKey()
 13673 ms     | 0x6817 ret:0x0
 13673 ms  0x6817 ret:0x7f47a1498020::7f47a1498020  c0 19 bb 9c                                      ....
 13673 ms  0x6817 SECKEY_CreateECPrivateKey()
 13673 ms  0x6817 cx:0x7f479ba202c8
 13674 ms     | 0x6817 EC_ValidatePublicKey()
 13676 ms     | 0x6817 ret:0x0
 13676 ms  0x6817 ret:0x7f47a1805820::7f47a1805820  50 f1 df 9c                                      P...
 13687 ms  0x6817 SSL_ImportFD()
 13688 ms  0x6817 ret:0x7f479cdd4130
 13688 ms  0x6817 SSL_AuthCertificateHook()
 13688 ms  0x6817 fd:0x7f479cdd4130
 13688 ms  0x6817 ret:0x0
 13688 ms  0x6817 PR_Connect()
 13688 ms  0x6817 fd:0x7f479cdd4130
 13688 ms  0x6817 SSL_ImportFD()
 13688 ms  0x6817 ret:0x7f479cbbda90
 13688 ms  0x6817 SSL_AuthCertificateHook()
 13688 ms  0x6817 fd:0x7f479cbbda90
 13688 ms  0x6817 ret:0x0
 13688 ms  0x6817 PR_Connect()
 13688 ms  0x6817 fd:0x7f479cbbda90
 13689 ms  0x6817 SSL_ImportFD()
 13689 ms  0x6817 ret:0x7f479cbbde80
 13689 ms  0x6817 SSL_AuthCertificateHook()
 13689 ms  0x6817 fd:0x7f479cbbde80
 13689 ms  0x6817 ret:0x0
 13689 ms  0x6817 PR_Connect()
 13689 ms  0x6817 fd:0x7f479cbbde80
 13694 ms  0x6817 SECKEY_DestroyPrivateKey()
 13694 ms  0x6817 privk:0x7f47a1b81820::7f47a1b81820  60 1a 47 a1                                      `.G.
 13694 ms  0x6817 privk:0x7f47a1b81820::7f47a1b81820  e5 e5 e5 e5                                      ....
 13695 ms  0x6817 SECKEY_DestroyPrivateKey()
 13695 ms  0x6817 privk:0x7f47a1b7e020::7f47a1b7e020  70 49 1c a0                                      pI..
 13695 ms  0x6817 privk:0x7f47a1b7e020::7f47a1b7e020  e5 e5 e5 e5                                      ....
 13695 ms  0x6817 PK11_Encrypt()
 13695 ms  0x6817 symkey:0x7f479cbb9700
 13709 ms  0x6817 SECKEY_DestroyPrivateKey()
 13709 ms  0x6817 privk:0x7f47a4f08820::7f47a4f08820  a0 06 88 a1                                      ....
 13709 ms  0x6817 privk:0x7f47a4f08820::7f47a4f08820  e5 e5 e5 e5                                      ....
 13710 ms  0x6817 SECKEY_DestroyPrivateKey()
 13710 ms  0x6817 privk:0x7f47a4f06020::7f47a4f06020  30 03 88 a1                                      0...
 13710 ms  0x6817 privk:0x7f47a4f06020::7f47a4f06020  e5 e5 e5 e5                                      ....
 13710 ms  0x6817 PR_Close()
 13710 ms  0x6817 fd:0x7f47a1887130
 13710 ms     | 0x6817 PK11_Encrypt()
 13710 ms     | 0x6817 symkey:0x7f479cb72700
           /* TID 0x681f */
 13723 ms  0x681f PR_Close()
 13723 ms  0x681f fd:0x7f479c73ac70
           /* TID 0x6817 */
 13758 ms  0x6817 SECKEY_CreateECPrivateKey()
 13758 ms  0x6817 cx:0x7f479ba1eda8
 13759 ms     | 0x6817 EC_ValidatePublicKey()
 13759 ms     | 0x6817 ret:0x0
 13759 ms  0x6817 ret:0x7f47a1318820::7f47a1318820  80 28 db 9c                                      .(..
 13759 ms  0x6817 SECKEY_CreateECPrivateKey()
 13759 ms  0x6817 cx:0x7f479ba1eda8
 13761 ms     | 0x6817 EC_ValidatePublicKey()
 13765 ms     | 0x6817 ret:0x0
 13765 ms  0x6817 ret:0x7f47a1b7d820::7f47a1b7d820  c0 fe 18 a0                                      ....
 13769 ms  0x6817 SECKEY_CreateECPrivateKey()
 13769 ms  0x6817 cx:0x7f479ba20e28
 13771 ms     | 0x6817 EC_ValidatePublicKey()
 13771 ms     | 0x6817 ret:0x0
 13771 ms  0x6817 ret:0x7f47a1b81820::7f47a1b81820  80 cd 44 a1                                      ..D.
 13771 ms  0x6817 SECKEY_CreateECPrivateKey()
 13771 ms  0x6817 cx:0x7f479ba20e28
 13773 ms     | 0x6817 EC_ValidatePublicKey()
 13776 ms     | 0x6817 ret:0x0
 13776 ms  0x6817 ret:0x7f47a44b5020::7f47a44b5020  d0 0d 61 a1                                      ..a.
 13777 ms  0x6817 SECKEY_DestroyPrivateKey()
 13777 ms  0x6817 privk:0x7f47a1b6e820::7f47a1b6e820  90 ac 55 9e                                      ..U.
 13777 ms  0x6817 privk:0x7f47a1b6e820::7f47a1b6e820  e5 e5 e5 e5                                      ....
 13778 ms  0x6817 SECKEY_DestroyPrivateKey()
 13778 ms  0x6817 privk:0x7f47a1b6a820::7f47a1b6a820  e0 a7 55 9e                                      ..U.
 13778 ms  0x6817 privk:0x7f47a1b6a820::7f47a1b6a820  e5 e5 e5 e5                                      ....
 13780 ms  SECKEY_ECParamsToKeySize()
 13780 ms  0x6817 ret:0x100
 13780 ms  SECKEY_ECParamsToBasePointOrderLen()
 13780 ms  0x6817 ret:0x100
 13780 ms  SECKEY_ECParamsToBasePointOrderLen()
 13780 ms  0x6817 ret:0x100
 13780 ms  0x6817 EC_ValidatePublicKey()
 13783 ms  0x6817 ret:0x0
 13787 ms  SECKEY_ECParamsToKeySize()
 13787 ms  0x6817 ret:0xff
 13787 ms  0x6817 SECKEY_CreateECPrivateKey()
 13787 ms  0x6817 cx:0x7f47a86a5f48
 13788 ms     | 0x6817 EC_ValidatePublicKey()
 13788 ms     | 0x6817 ret:0x0
 13788 ms  0x6817 ret:0x7f47a1b6c820::7f47a1b6c820  b0 aa 55 9e                                      ..U.
 13788 ms  0x6817 PK11_PubDeriveWithKDF()
 13788 ms  0x6817 seckey:0x7f47a1b6c820
 13788 ms     | 0x6817 EC_ValidatePublicKey()
 13788 ms     | 0x6817 ret:0x0
 13789 ms  0x6817 ret:0x7f479c7eb400
 13789 ms  0x6817 PK11_DeriveWithFlags()
 13789 ms  0x6817 basekey:0x7f479c7eb400
 13789 ms     | 0x6817 PK11_DeriveWithTemplate()
 13789 ms  0x6817 ret:0x7f479cb29f80
 13789 ms  0x6817 PK11_Derive()
 13789 ms  0x6817 basekey:0x7f479cb29f80
 13789 ms     | 0x6817 PK11_DeriveWithTemplate()
 13789 ms  0x6817 ret:0x7f479cb72600
 13789 ms  0x6817 SECKEY_DestroyPrivateKey()
 13789 ms  0x6817 privk:0x7f47a1b6c820::7f47a1b6c820  b0 aa 55 9e                                      ..U.
 13789 ms  0x6817 privk:0x7f47a1b6c820::7f47a1b6c820  e5 e5 e5 e5                                      ....
 13789 ms  0x6817 PK11_Encrypt()
 13789 ms  0x6817 symkey:0x7f479cb72880
 13790 ms  0x6817 SECKEY_CreateECPrivateKey()
 13790 ms  0x6817 cx:0x7f479ba21168
 13791 ms     | 0x6817 EC_ValidatePublicKey()
 13791 ms     | 0x6817 ret:0x0
 13791 ms  0x6817 ret:0x7f47a1b6c820::7f47a1b6c820  60 aa 55 9e                                      `.U.
 13791 ms  0x6817 SECKEY_CreateECPrivateKey()
 13791 ms  0x6817 cx:0x7f479ba21168
 13792 ms     | 0x6817 EC_ValidatePublicKey()
 13794 ms     | 0x6817 ret:0x0
 13794 ms  0x6817 ret:0x7f47a44ac020::7f47a44ac020  00 b1 62 a1                                      ..b.
 13794 ms  0x6817 PR_Close()
 13794 ms  0x6817 fd:0x7f479b7b51c0
 13794 ms     | 0x6817 PK11_Encrypt()
 13794 ms     | 0x6817 symkey:0x7f479c779d80
 13795 ms  0x6817 SSL_AuthCertificateComplete()
 13795 ms  0x6817 fd:0x7f479c703490
 13795 ms  0x6817 err:0x0
 13795 ms  0x6817 PK11_Encrypt()
 13795 ms  0x6817 symkey:0x7f479cb72880
 13795 ms  0x6817 PK11_Encrypt()
 13795 ms  0x6817 symkey:0x7f479c779280
 13837 ms  0x6817 PK11_Derive()
 13837 ms  0x6817 basekey:0x7f479b7b0600
 13837 ms     | 0x6817 PK11_DeriveWithTemplate()
 13837 ms  0x6817 ret:0x7f479c779500
 13837 ms  0x6817 PK11_PubDeriveWithKDF()
 13837 ms  0x6817 seckey:0x7f47a1318820
 13837 ms     | 0x6817 EC_ValidatePublicKey()
 13837 ms     | 0x6817 ret:0x0
 13838 ms  0x6817 ret:0x7f479b7b0600
 13838 ms  SECKEY_ECParamsToKeySize()
 13838 ms  0x6817 ret:0xff
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479c779500
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479c7eb400
 13838 ms  0x6817 PK11_Derive()
 13838 ms  0x6817 basekey:0x7f479b7b0600
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479cb73d00
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479cb73d00
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479c779500
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479cb73d00
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479b7b0600
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479cb73d00
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479c7eb400
 13838 ms  0x6817 PK11_Derive()
 13838 ms  0x6817 basekey:0x7f479c779700
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479c7eb480
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479b7b0600
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479cb73d00
 13838 ms  0x6817 PK11_DeriveWithFlags()
 13838 ms  0x6817 basekey:0x7f479b7b0600
 13838 ms     | 0x6817 PK11_DeriveWithTemplate()
 13838 ms  0x6817 ret:0x7f479c7eb400
 13839 ms  0x6817 PK11_DeriveWithFlags()
 13839 ms  0x6817 basekey:0x7f479b7b0600
 13839 ms     | 0x6817 PK11_DeriveWithTemplate()
 13839 ms  0x6817 ret:0x7f479c7eb400
 13839 ms  0x6817 SSL_AuthCertificateComplete()
 13839 ms  0x6817 fd:0x7f479cdd4130
 13839 ms  0x6817 err:0x0
 13839 ms     | 0x6817 PK11_DeriveWithFlags()
 13839 ms     | 0x6817 basekey:0x7f479c7eb480
 13839 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13839 ms     | 0x6817 ret:0x7f479c7eb400
 13839 ms     | 0x6817 PK11_DeriveWithFlags()
 13839 ms     | 0x6817 basekey:0x7f479c7eb480
 13839 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13839 ms     | 0x6817 ret:0x7f479c779700
 13839 ms     | 0x6817 PK11_DeriveWithFlags()
 13839 ms     | 0x6817 basekey:0x7f479c7eb480
 13839 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13839 ms     | 0x6817 ret:0x7f479c7eb500
 13839 ms     | 0x6817 PK11_DeriveWithFlags()
 13839 ms     | 0x6817 basekey:0x7f479c779500
 13839 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13839 ms     | 0x6817 ret:0x7f479c77a580
 13839 ms     | 0x6817 PK11_DeriveWithFlags()
 13839 ms     | 0x6817 basekey:0x7f479c779500
 13839 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13839 ms     | 0x6817 ret:0x7f479d2ab980
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c779700
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479d2ab980
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c779700
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479c77a080
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c779500
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479cb73d00
 13840 ms     | 0x6817 PK11_Encrypt()
 13840 ms     | 0x6817 symkey:0x7f479c77a580
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c7eb400
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479cb73d00
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c7eb400
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479c77a080
 13840 ms     | 0x6817 PK11_DeriveWithFlags()
 13840 ms     | 0x6817 basekey:0x7f479c7eb480
 13840 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13840 ms     | 0x6817 ret:0x7f479c77a580
 13840 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13840 ms     | 0x6817 privk:0x7f47a1b7d820::7f47a1b7d820  c0 fe 18 a0                                      ....
 13840 ms     | 0x6817 privk:0x7f47a1b7d820::7f47a1b7d820  e5 e5 e5 e5                                      ....
 13840 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13840 ms     | 0x6817 privk:0x7f47a1318820::7f47a1318820  80 28 db 9c                                      .(..
 13840 ms     | 0x6817 privk:0x7f47a1318820::7f47a1318820  e5 e5 e5 e5                                      ....
 13841 ms  0x6817 PK11_Encrypt()
 13841 ms  0x6817 symkey:0x7f479cb73d00
 13841 ms  0x6817 PK11_Encrypt()
 13841 ms  0x6817 symkey:0x7f479cb73d00
 13846 ms  0x6817 PK11_Derive()
 13846 ms  0x6817 basekey:0x7f479b7b0600
 13846 ms     | 0x6817 PK11_DeriveWithTemplate()
 13846 ms  0x6817 ret:0x7f479c779500
 13846 ms  0x6817 PK11_PubDeriveWithKDF()
 13846 ms  0x6817 seckey:0x7f47a1b81820
 13846 ms     | 0x6817 EC_ValidatePublicKey()
 13846 ms     | 0x6817 ret:0x0
 13847 ms  0x6817 ret:0x7f479b7b0600
 13847 ms  SECKEY_ECParamsToKeySize()
 13847 ms  0x6817 ret:0xff
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479c779500
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c7eb480
 13847 ms  0x6817 PK11_Derive()
 13847 ms  0x6817 basekey:0x7f479b7b0600
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c77a080
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479c77a080
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c779500
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479c77a080
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479b7b0600
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479c77a080
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c7eb480
 13847 ms  0x6817 PK11_Derive()
 13847 ms  0x6817 basekey:0x7f479c779e80
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c779e00
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479b7b0600
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c77a080
 13847 ms  0x6817 PK11_DeriveWithFlags()
 13847 ms  0x6817 basekey:0x7f479b7b0600
 13847 ms     | 0x6817 PK11_DeriveWithTemplate()
 13847 ms  0x6817 ret:0x7f479c7eb480
 13848 ms  0x6817 PK11_DeriveWithFlags()
 13848 ms  0x6817 basekey:0x7f479b7b0600
 13848 ms     | 0x6817 PK11_DeriveWithTemplate()
 13848 ms  0x6817 ret:0x7f479c7eb480
 13848 ms  0x6817 SSL_AuthCertificateComplete()
 13848 ms  0x6817 fd:0x7f479cbbda90
 13848 ms  0x6817 err:0x0
 13848 ms     | 0x6817 PK11_DeriveWithFlags()
 13848 ms     | 0x6817 basekey:0x7f479c779e00
 13848 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13848 ms     | 0x6817 ret:0x7f479c7eb480
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779e00
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479c779e80
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779e00
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479c779d80
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779500
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479cbb8800
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779500
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479cbb8780
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779e80
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479cbb8780
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779e80
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479cbb8700
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c779500
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479c77a080
 13849 ms     | 0x6817 PK11_Encrypt()
 13849 ms     | 0x6817 symkey:0x7f479cbb8800
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c7eb480
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13849 ms     | 0x6817 ret:0x7f479c77a080
 13849 ms     | 0x6817 PK11_DeriveWithFlags()
 13849 ms     | 0x6817 basekey:0x7f479c7eb480
 13849 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13850 ms     | 0x6817 ret:0x7f479cbb8700
 13850 ms     | 0x6817 PK11_DeriveWithFlags()
 13850 ms     | 0x6817 basekey:0x7f479c779e00
 13850 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13850 ms     | 0x6817 ret:0x7f479cbb8800
 13850 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13850 ms     | 0x6817 privk:0x7f47a44b5020::7f47a44b5020  d0 0d 61 a1                                      ..a.
 13850 ms     | 0x6817 privk:0x7f47a44b5020::7f47a44b5020  e5 e5 e5 e5                                      ....
 13850 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13850 ms     | 0x6817 privk:0x7f47a1b81820::7f47a1b81820  80 cd 44 a1                                      ..D.
 13850 ms     | 0x6817 privk:0x7f47a1b81820::7f47a1b81820  e5 e5 e5 e5                                      ....
 13851 ms  0x6817 PK11_Encrypt()
 13851 ms  0x6817 symkey:0x7f479c77a080
 13851 ms  0x6817 PK11_Encrypt()
 13851 ms  0x6817 symkey:0x7f479cb73d00
 13863 ms  0x6817 PK11_Derive()
 13863 ms  0x6817 basekey:0x7f479b7b0600
 13863 ms     | 0x6817 PK11_DeriveWithTemplate()
 13863 ms  0x6817 ret:0x7f479c779500
 13863 ms  0x6817 PK11_PubDeriveWithKDF()
 13863 ms  0x6817 seckey:0x7f47a1b6c820
 13863 ms     | 0x6817 EC_ValidatePublicKey()
 13863 ms     | 0x6817 ret:0x0
 13864 ms  0x6817 ret:0x7f479b7b0600
 13864 ms  SECKEY_ECParamsToKeySize()
 13864 ms  0x6817 ret:0xff
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479c779500
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479c779e00
 13864 ms  0x6817 PK11_Derive()
 13864 ms  0x6817 basekey:0x7f479b7b0600
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479cbb8700
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479cbb8700
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479c779500
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479cbb8700
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479b7b0600
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479cbb8700
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479c779e00
 13864 ms  0x6817 PK11_Derive()
 13864 ms  0x6817 basekey:0x7f479cbb8680
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479e54f080
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479b7b0600
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479cbb8700
 13864 ms  0x6817 PK11_DeriveWithFlags()
 13864 ms  0x6817 basekey:0x7f479b7b0600
 13864 ms     | 0x6817 PK11_DeriveWithTemplate()
 13864 ms  0x6817 ret:0x7f479c779e00
 13865 ms  0x6817 PK11_DeriveWithFlags()
 13865 ms  0x6817 basekey:0x7f479b7b0600
 13865 ms     | 0x6817 PK11_DeriveWithTemplate()
 13865 ms  0x6817 ret:0x7f479c779e00
 13865 ms  0x6817 SSL_AuthCertificateComplete()
 13865 ms  0x6817 fd:0x7f479cbbde80
 13865 ms  0x6817 err:0x0
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479e54f080
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479c779e00
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479e54f080
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479cbb8680
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479e54f080
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479e54f300
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479c779500
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479e54f500
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479c779500
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479e54f700
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479cbb8680
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13865 ms     | 0x6817 ret:0x7f479e54f700
 13865 ms     | 0x6817 PK11_DeriveWithFlags()
 13865 ms     | 0x6817 basekey:0x7f479cbb8680
 13865 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13866 ms     | 0x6817 ret:0x7f479e54f780
 13866 ms     | 0x6817 PK11_DeriveWithFlags()
 13866 ms     | 0x6817 basekey:0x7f479c779500
 13866 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13866 ms     | 0x6817 ret:0x7f479cbb8700
 13866 ms     | 0x6817 PK11_Encrypt()
 13866 ms     | 0x6817 symkey:0x7f479e54f500
 13866 ms     | 0x6817 PK11_DeriveWithFlags()
 13866 ms     | 0x6817 basekey:0x7f479c779e00
 13866 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13866 ms     | 0x6817 ret:0x7f479cbb8700
 13866 ms     | 0x6817 PK11_DeriveWithFlags()
 13866 ms     | 0x6817 basekey:0x7f479c779e00
 13866 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13866 ms     | 0x6817 ret:0x7f479e54f780
 13866 ms     | 0x6817 PK11_DeriveWithFlags()
 13866 ms     | 0x6817 basekey:0x7f479e54f080
 13866 ms     |    | 0x6817 PK11_DeriveWithTemplate()
 13866 ms     | 0x6817 ret:0x7f479e54f500
 13866 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13866 ms     | 0x6817 privk:0x7f47a44ac020::7f47a44ac020  00 b1 62 a1                                      ..b.
 13866 ms     | 0x6817 privk:0x7f47a44ac020::7f47a44ac020  e5 e5 e5 e5                                      ....
 13866 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 13866 ms     | 0x6817 privk:0x7f47a1b6c820::7f47a1b6c820  60 aa 55 9e                                      `.U.
 13866 ms     | 0x6817 privk:0x7f47a1b6c820::7f47a1b6c820  e5 e5 e5 e5                                      ....
 13867 ms  0x6817 PK11_Encrypt()
 13867 ms  0x6817 symkey:0x7f479cbb8700
 13867 ms  0x6817 PK11_Encrypt()
 13867 ms  0x6817 symkey:0x7f479cb73d00
           /* TID 0x681f */
 13895 ms  0x681f PR_Close()
 13895 ms  0x681f fd:0x7f479c79a610
           /* TID 0x6817 */
 13908 ms  0x6817 PK11_DeriveWithFlags()
 13908 ms  0x6817 basekey:0x7f479c77a580
 13908 ms     | 0x6817 PK11_DeriveWithTemplate()
 13908 ms  0x6817 ret:0x7f479b7b0600
 13908 ms  0x6817 PK11_DeriveWithFlags()
 13908 ms  0x6817 basekey:0x7f479c77a580
 13908 ms     | 0x6817 PK11_DeriveWithTemplate()
 13908 ms  0x6817 ret:0x7f479b7b0600
 13918 ms  0x6817 PK11_DeriveWithFlags()
 13918 ms  0x6817 basekey:0x7f479cbb8800
 13918 ms     | 0x6817 PK11_DeriveWithTemplate()
 13918 ms  0x6817 ret:0x7f479b7b0600
 13918 ms  0x6817 PK11_DeriveWithFlags()
 13918 ms  0x6817 basekey:0x7f479cbb8800
 13918 ms     | 0x6817 PK11_DeriveWithTemplate()
 13918 ms  0x6817 ret:0x7f479b7b0600
 13918 ms  0x6817 PR_Close()
 13918 ms  0x6817 fd:0x7f479cbbda90
 13918 ms     | 0x6817 PK11_Encrypt()
 13918 ms     | 0x6817 symkey:0x7f479c77a080
 13923 ms  0x6817 SECKEY_CreateECPrivateKey()
 13923 ms  0x6817 cx:0x7f479ba20c88
 13924 ms     | 0x6817 EC_ValidatePublicKey()
 13924 ms     | 0x6817 ret:0x0
 13924 ms  0x6817 ret:0x7f47a1b6e020::7f47a1b6e020  40 12 55 9e                                      @.U.
 13924 ms  0x6817 SECKEY_CreateECPrivateKey()
 13924 ms  0x6817 cx:0x7f479ba20c88
 13925 ms     | 0x6817 EC_ValidatePublicKey()
 13927 ms     | 0x6817 ret:0x0
 13927 ms  0x6817 ret:0x7f47a1b7c820::7f47a1b7c820  40 ac 55 9e                                      @.U.
 13934 ms  0x6817 PK11_DeriveWithFlags()
 13934 ms  0x6817 basekey:0x7f479e54f500
 13934 ms     | 0x6817 PK11_DeriveWithTemplate()
 13934 ms  0x6817 ret:0x7f479c779d80
 13934 ms  0x6817 PK11_DeriveWithFlags()
 13934 ms  0x6817 basekey:0x7f479e54f500
 13934 ms     | 0x6817 PK11_DeriveWithTemplate()
 13934 ms  0x6817 ret:0x7f479c779d80
 13934 ms  0x6817 PR_Close()
 13934 ms  0x6817 fd:0x7f479cbbde80
 13934 ms     | 0x6817 PK11_Encrypt()
 13934 ms     | 0x6817 symkey:0x7f479cbb8700
           /* TID 0x681f */
 13939 ms  0x681f PR_Close()
 13939 ms  0x681f fd:0x7f479c926d60
           /* TID 0x6817 */
 13947 ms  0x6817 PK11_Encrypt()
 13947 ms  0x6817 symkey:0x7f479cb29600
 13952 ms  0x6817 PK11_Encrypt()
 13952 ms  0x6817 symkey:0x7f479cb29600
 13955 ms  0x6817 PK11_Encrypt()
 13955 ms  0x6817 symkey:0x7f479cb29600
 13977 ms  0x6817 PK11_Encrypt()
 13977 ms  0x6817 symkey:0x7f479cb73d00
 13978 ms  SECKEY_ECParamsToKeySize()
 13978 ms  0x6817 ret:0x100
 13978 ms  0x6817 SECKEY_CreateECPrivateKey()
 13978 ms  0x6817 cx:0x7f479ba20608
 13979 ms     | 0x6817 EC_ValidatePublicKey()
 13980 ms     | 0x6817 ret:0x0
 13980 ms  0x6817 ret:0x7f47a4f0d020::7f47a4f0d020  00 e1 6e a1                                      ..n.
 13981 ms  0x6817 PK11_PubDeriveWithKDF()
 13981 ms  0x6817 seckey:0x7f47a4f0d020
 13981 ms     | 0x6817 EC_ValidatePublicKey()
 13982 ms     | 0x6817 ret:0x0
 13984 ms  0x6817 ret:0x7f479e54f300
 13984 ms  0x6817 PK11_DeriveWithFlags()
 13984 ms  0x6817 basekey:0x7f479e54f300
 13984 ms     | 0x6817 PK11_DeriveWithTemplate()
 13984 ms  0x6817 ret:0x7f479cbb8680
 13984 ms  0x6817 PK11_Derive()
 13984 ms  0x6817 basekey:0x7f479cbb8680
 13984 ms     | 0x6817 PK11_DeriveWithTemplate()
 13984 ms  0x6817 ret:0x7f479c779e00
 13984 ms  0x6817 SECKEY_DestroyPrivateKey()
 13984 ms  0x6817 privk:0x7f47a4f0d020::7f47a4f0d020  00 e1 6e a1                                      ..n.
 13984 ms  0x6817 privk:0x7f47a4f0d020::7f47a4f0d020  e5 e5 e5 e5                                      ....
 13984 ms  0x6817 PK11_Encrypt()
 13984 ms  0x6817 symkey:0x7f479e56d300
           /* TID 0x681f */
 13985 ms  0x681f PR_Close()
 13985 ms  0x681f fd:0x7f47a18dd220
 13992 ms  0x681f PR_Close()
 13992 ms  0x681f fd:0x7f47a1908160
 13995 ms  0x681f PR_Close()
 13995 ms  0x681f fd:0x7f47a1931b50
           /* TID 0x6817 */
 13995 ms  0x6817 PK11_Derive()
 13995 ms  0x6817 basekey:0x7f479e54f500
 13995 ms     | 0x6817 PK11_DeriveWithTemplate()
 13995 ms  0x6817 ret:0x7f479e54f300
 13995 ms  0x6817 PK11_Encrypt()
 13995 ms  0x6817 symkey:0x7f479e56e980
 13996 ms  0x6817 SECKEY_DestroyPrivateKey()
 13996 ms  0x6817 privk:0x7f47a1805820::7f47a1805820  50 f1 df 9c                                      P...
 13996 ms  0x6817 privk:0x7f47a1805820::7f47a1805820  e5 e5 e5 e5                                      ....
 13996 ms  0x6817 SECKEY_DestroyPrivateKey()
 13996 ms  0x6817 privk:0x7f47a1498020::7f47a1498020  c0 19 bb 9c                                      ....
 13996 ms  0x6817 privk:0x7f47a1498020::7f47a1498020  e5 e5 e5 e5                                      ....
 13998 ms  0x6817 PK11_Encrypt()
 13998 ms  0x6817 symkey:0x7f479e56e980
 14000 ms  0x6817 PK11_Encrypt()
 14000 ms  0x6817 symkey:0x7f479d2bb480
 14001 ms  0x6817 PK11_Encrypt()
 14001 ms  0x6817 symkey:0x7f479d2bb480
 14002 ms  0x6817 PK11_Encrypt()
 14002 ms  0x6817 symkey:0x7f479d2bb480
 14004 ms  0x6817 PK11_Encrypt()
 14004 ms  0x6817 symkey:0x7f479d2bb480
 14004 ms  0x6817 PK11_Encrypt()
 14004 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 14019 ms  0x681f PR_Close()
 14019 ms  0x681f fd:0x7f47a18dd220
           /* TID 0x687f */
 14019 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14019 ms  0x687f ret:0x0
 14019 ms  0x687f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 14019 ms  0x687f ret:0x0
           /* TID 0x6817 */
 14019 ms  0x6817 SSL_AuthCertificateComplete()
 14019 ms  0x6817 fd:0x7f47a1931970
 14019 ms  0x6817 err:0x0
 14067 ms  0x6817 SSL_ImportFD()
 14067 ms  0x6817 ret:0x7f47a1977910
 14067 ms  0x6817 SSL_AuthCertificateHook()
 14067 ms  0x6817 fd:0x7f47a1977910
 14067 ms  0x6817 ret:0x0
 14068 ms  0x6817 PK11_Encrypt()
 14068 ms  0x6817 symkey:0x7f479cbb9700
 14068 ms  0x6817 PK11_Encrypt()
 14068 ms  0x6817 symkey:0x7f479cbb9700
 14068 ms  0x6817 PR_Connect()
 14068 ms  0x6817 fd:0x7f47a1977910
 14068 ms  0x6817 SSL_ImportFD()
 14068 ms  0x6817 ret:0x7f47a18fe160
 14068 ms  0x6817 SSL_AuthCertificateHook()
 14068 ms  0x6817 fd:0x7f47a18fe160
 14069 ms  0x6817 ret:0x0
 14069 ms  0x6817 PR_Connect()
 14069 ms  0x6817 fd:0x7f47a18fe160
 14069 ms  0x6817 SSL_ImportFD()
 14069 ms  0x6817 ret:0x7f47a1971100
 14069 ms  0x6817 SSL_AuthCertificateHook()
 14069 ms  0x6817 fd:0x7f47a1971100
 14069 ms  0x6817 ret:0x0
 14069 ms  0x6817 PR_Connect()
 14069 ms  0x6817 fd:0x7f47a1971100
 14069 ms  0x6817 PK11_Encrypt()
 14069 ms  0x6817 symkey:0x7f479cbb9700
           /* TID 0x681f */
 14070 ms  0x681f PR_Close()
 14070 ms  0x681f fd:0x7f479b7b51c0
           /* TID 0x6817 */
 14087 ms  0x6817 SECKEY_DestroyPrivateKey()
 14087 ms  0x6817 privk:0x7f47a1b74020::7f47a1b74020  e0 7c 56 9e                                      .|V.
 14087 ms  0x6817 privk:0x7f47a1b74020::7f47a1b74020  e5 e5 e5 e5                                      ....
 14087 ms  0x6817 SECKEY_DestroyPrivateKey()
 14087 ms  0x6817 privk:0x7f47a1b72020::7f47a1b72020  70 ae 55 9e                                      p.U.
 14087 ms  0x6817 privk:0x7f47a1b72020::7f47a1b72020  e5 e5 e5 e5                                      ....
 14087 ms  0x6817 PR_Close()
 14087 ms  0x6817 fd:0x7f479c703490
 14087 ms     | 0x6817 PK11_Encrypt()
 14087 ms     | 0x6817 symkey:0x7f479cb72880
           /* TID 0x681f */
 14140 ms  0x681f PR_Close()
 14140 ms  0x681f fd:0x7f479b7b5160
 14144 ms  0x681f PR_Close()
 14144 ms  0x681f fd:0x7f479b7b5160
 14149 ms  0x681f PR_Close()
 14149 ms  0x681f fd:0x7f479b7b5160
 14153 ms  0x681f PR_Close()
 14153 ms  0x681f fd:0x7f479b7b5160
           /* TID 0x6817 */
 14257 ms  0x6817 SECKEY_CreateECPrivateKey()
 14257 ms  0x6817 cx:0x7f479ba21168
 14259 ms     | 0x6817 EC_ValidatePublicKey()
 14259 ms     | 0x6817 ret:0x0
 14259 ms  0x6817 ret:0x7f47a1a16820::7f47a1a16820  40 5c 20 9d                                      @\ .
 14259 ms  0x6817 SECKEY_CreateECPrivateKey()
 14259 ms  0x6817 cx:0x7f479ba21168
 14262 ms     | 0x6817 EC_ValidatePublicKey()
 14263 ms     | 0x6817 ret:0x0
 14263 ms  0x6817 ret:0x7f47a1b70820::7f47a1b70820  70 ae 55 9e                                      p.U.
 14264 ms  0x6817 SECKEY_CreateECPrivateKey()
 14264 ms  0x6817 cx:0x7f479ba217e8
 14264 ms     | 0x6817 EC_ValidatePublicKey()
 14265 ms     | 0x6817 ret:0x0
 14265 ms  0x6817 ret:0x7f47a1b73020::7f47a1b73020  c0 ae 55 9e                                      ..U.
 14265 ms  0x6817 SECKEY_CreateECPrivateKey()
 14265 ms  0x6817 cx:0x7f479ba217e8
 14265 ms     | 0x6817 EC_ValidatePublicKey()
 14267 ms     | 0x6817 ret:0x0
 14267 ms  0x6817 ret:0x7f47a44ab020::7f47a44ab020  20 fe 41 a1                                       .A.
 14267 ms  0x6817 SECKEY_CreateECPrivateKey()
 14267 ms  0x6817 cx:0x7f479ba21648
 14267 ms     | 0x6817 EC_ValidatePublicKey()
 14268 ms     | 0x6817 ret:0x0
 14268 ms  0x6817 ret:0x7f47a4f12820::7f47a4f12820  60 b0 62 a1                                      `.b.
 14268 ms  0x6817 SECKEY_CreateECPrivateKey()
 14268 ms  0x6817 cx:0x7f479ba21648
 14268 ms     | 0x6817 EC_ValidatePublicKey()
 14270 ms     | 0x6817 ret:0x0
 14270 ms  0x6817 ret:0x7f47a54c8820::7f47a54c8820  40 e2 6e a1                                      @.n.
 14270 ms  0x6817 PK11_Derive()
 14270 ms  0x6817 basekey:0x7f479cb29f80
 14270 ms     | 0x6817 PK11_DeriveWithTemplate()
 14270 ms  0x6817 ret:0x7f479cb72600
 14270 ms  0x6817 PK11_Encrypt()
 14270 ms  0x6817 symkey:0x7f479cb73c80
 14271 ms  0x6817 SECKEY_DestroyPrivateKey()
 14271 ms  0x6817 privk:0x7f47a1b7c820::7f47a1b7c820  40 ac 55 9e                                      @.U.
 14271 ms  0x6817 privk:0x7f47a1b7c820::7f47a1b7c820  e5 e5 e5 e5                                      ....
 14271 ms  0x6817 SECKEY_DestroyPrivateKey()
 14271 ms  0x6817 privk:0x7f47a1b6e020::7f47a1b6e020  40 12 55 9e                                      @.U.
 14271 ms  0x6817 privk:0x7f47a1b6e020::7f47a1b6e020  e5 e5 e5 e5                                      ....
 14271 ms  0x6817 PR_Close()
 14271 ms  0x6817 fd:0x7f47a19317c0
 14271 ms     | 0x6817 PK11_Encrypt()
 14271 ms     | 0x6817 symkey:0x7f479cb73c80
 14281 ms  SECKEY_ECParamsToKeySize()
 14281 ms  0x6817 ret:0x100
 14281 ms  SECKEY_ECParamsToBasePointOrderLen()
 14281 ms  0x6817 ret:0x100
 14281 ms  SECKEY_ECParamsToBasePointOrderLen()
 14281 ms  0x6817 ret:0x100
 14281 ms  0x6817 EC_ValidatePublicKey()
 14283 ms  0x6817 ret:0x0
 14285 ms  SECKEY_ECParamsToKeySize()
 14285 ms  0x6817 ret:0xff
 14285 ms  0x6817 SECKEY_CreateECPrivateKey()
 14285 ms  0x6817 cx:0x7f47a86a7468
 14285 ms     | 0x6817 EC_ValidatePublicKey()
 14285 ms     | 0x6817 ret:0x0
 14285 ms  0x6817 ret:0x7f47a1b75020::7f47a1b75020  70 a9 55 9e                                      p.U.
 14285 ms  0x6817 PK11_PubDeriveWithKDF()
 14285 ms  0x6817 seckey:0x7f47a1b75020
 14285 ms     | 0x6817 EC_ValidatePublicKey()
 14285 ms     | 0x6817 ret:0x0
 14286 ms  0x6817 ret:0x7f479cb72600
 14286 ms  0x6817 PK11_DeriveWithFlags()
 14286 ms  0x6817 basekey:0x7f479cb72600
 14286 ms     | 0x6817 PK11_DeriveWithTemplate()
 14286 ms  0x6817 ret:0x7f479cb29f80
 14286 ms  0x6817 PK11_Derive()
 14286 ms  0x6817 basekey:0x7f479cb29f80
 14286 ms     | 0x6817 PK11_DeriveWithTemplate()
 14286 ms  0x6817 ret:0x7f479e54f700
 14286 ms  0x6817 SECKEY_DestroyPrivateKey()
 14286 ms  0x6817 privk:0x7f47a1b75020::7f47a1b75020  70 a9 55 9e                                      p.U.
 14286 ms  0x6817 privk:0x7f47a1b75020::7f47a1b75020  e5 e5 e5 e5                                      ....
 14286 ms  0x6817 PK11_Encrypt()
 14286 ms  0x6817 symkey:0x7f479cb73a80
 14286 ms  0x6817 SSL_AuthCertificateComplete()
 14286 ms  0x6817 fd:0x7f47a18dd400
 14286 ms  0x6817 err:0x0
 14287 ms  0x6817 PK11_Encrypt()
 14287 ms  0x6817 symkey:0x7f479cb73a80
 14301 ms  0x6817 SECKEY_DestroyPrivateKey()
 14301 ms  0x6817 privk:0x7f47a4f0c020::7f47a4f0c020  20 04 61 a1                                       .a.
 14301 ms  0x6817 privk:0x7f47a4f0c020::7f47a4f0c020  e5 e5 e5 e5                                      ....
 14301 ms  0x6817 SECKEY_DestroyPrivateKey()
 14301 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  40 d2 4d a1                                      @.M.
 14301 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  e5 e5 e5 e5                                      ....
           /* TID 0x681f */
 14303 ms  0x681f PR_Close()
 14303 ms  0x681f fd:0x7f479cbbd8e0
           /* TID 0x6817 */
 14308 ms  0x6817 PK11_Encrypt()
 14308 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 14311 ms  0x681f PR_Close()
 14311 ms  0x681f fd:0x7f479cdd4190
 14312 ms  0x681f PR_Close()
 14312 ms  0x681f fd:0x7f479cdd4190
 14313 ms  0x681f PR_Close()
 14313 ms  0x681f fd:0x7f479cdd4190
 14378 ms  0x681f PR_Close()
 14378 ms  0x681f fd:0x7f479b7b51c0
 14441 ms  0x681f PR_Close()
 14441 ms  0x681f fd:0x7f479b7b51c0
 14443 ms  0x681f PR_Close()
 14443 ms  0x681f fd:0x7f479c73a9a0
 14444 ms  0x681f PR_Close()
 14444 ms  0x681f fd:0x7f47a1887370
           /* TID 0x6817 */
 14446 ms  SECKEY_ECParamsToKeySize()
 14446 ms  0x6817 ret:0x100
 14446 ms  0x6817 SECKEY_CreateECPrivateKey()
 14446 ms  0x6817 cx:0x7f479ba20128
 14448 ms     | 0x6817 EC_ValidatePublicKey()
 14451 ms     | 0x6817 ret:0x0
 14451 ms  0x6817 ret:0x7f47a44ab820::7f47a44ab820  60 1f 55 9e                                      `.U.
 14451 ms  0x6817 PK11_PubDeriveWithKDF()
 14451 ms  0x6817 seckey:0x7f47a44ab820
 14452 ms     | 0x6817 EC_ValidatePublicKey()
           /* TID 0x681f */
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f479b7b51c0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f479c73a9a0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1887370
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1911dc0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a19317c0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1931b80
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1931d60
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1931f70
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1971070
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1971340
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1971760
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a19718e0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1977070
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a19774c0
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1977520
 14454 ms  0x681f PR_Close()
 14454 ms  0x681f fd:0x7f47a1977640
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1977880
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19779a0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a76d0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a77f0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a7d30
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a7eb0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a7f10
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a19a7f70
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a25190
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a25310
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a25370
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a253d0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a257c0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a2bdf0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a2be50
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a2bee0
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a89340
 14455 ms  0x681f PR_Close()
 14455 ms  0x681f fd:0x7f47a1a89400
 14456 ms  0x681f PR_Close()
 14456 ms  0x681f fd:0x7f47a1a898b0
           /* TID 0x6817 */
 14458 ms     | 0x6817 ret:0x0
 14463 ms  0x6817 ret:0x7f479cb72600
 14463 ms  0x6817 PK11_DeriveWithFlags()
 14463 ms  0x6817 basekey:0x7f479cb72600
 14463 ms     | 0x6817 PK11_DeriveWithTemplate()
 14463 ms  0x6817 ret:0x7f479cbb8700
 14463 ms  0x6817 PK11_Derive()
 14463 ms  0x6817 basekey:0x7f479cbb8700
 14463 ms     | 0x6817 PK11_DeriveWithTemplate()
 14463 ms  0x6817 ret:0x7f479c779d80
 14463 ms  0x6817 SECKEY_DestroyPrivateKey()
 14463 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  60 1f 55 9e                                      `.U.
 14463 ms  0x6817 privk:0x7f47a44ab820::7f47a44ab820  e5 e5 e5 e5                                      ....
 14463 ms  0x6817 PK11_Encrypt()
 14463 ms  0x6817 symkey:0x7f479e5c4980
 14464 ms  0x6817 SSL_AuthCertificateComplete()
 14464 ms  0x6817 fd:0x7f479e577e50
 14464 ms  0x6817 err:0x0
 14465 ms  SECKEY_ECParamsToKeySize()
 14465 ms  0x6817 ret:0x100
 14465 ms  0x6817 SECKEY_CreateECPrivateKey()
 14465 ms  0x6817 cx:0x7f479ba217e8
 14467 ms     | 0x6817 EC_ValidatePublicKey()
 14470 ms     | 0x6817 ret:0x0
 14470 ms  0x6817 ret:0x7f47a44b9020::7f47a44b9020  e0 a7 55 9e                                      ..U.
 14470 ms  0x6817 PK11_PubDeriveWithKDF()
 14470 ms  0x6817 seckey:0x7f47a44b9020
 14470 ms     | 0x6817 EC_ValidatePublicKey()
 14472 ms     | 0x6817 ret:0x0
 14475 ms  0x6817 ret:0x7f479cb72600
 14475 ms  0x6817 PK11_DeriveWithFlags()
 14475 ms  0x6817 basekey:0x7f479cb72600
 14475 ms     | 0x6817 PK11_DeriveWithTemplate()
 14475 ms  0x6817 ret:0x7f479c779e80
 14475 ms  0x6817 PK11_Derive()
 14475 ms  0x6817 basekey:0x7f479c779e80
 14475 ms     | 0x6817 PK11_DeriveWithTemplate()
 14475 ms  0x6817 ret:0x7f479c7eb480
 14475 ms  0x6817 SECKEY_DestroyPrivateKey()
 14475 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  e0 a7 55 9e                                      ..U.
 14475 ms  0x6817 privk:0x7f47a44b9020::7f47a44b9020  e5 e5 e5 e5                                      ....
 14475 ms  0x6817 PK11_Encrypt()
 14475 ms  0x6817 symkey:0x7f479e5c5980
 14477 ms  SECKEY_ECParamsToKeySize()
 14477 ms  0x6817 ret:0x100
 14477 ms  0x6817 SECKEY_CreateECPrivateKey()
 14477 ms  0x6817 cx:0x7f479ba21168
 14478 ms     | 0x6817 EC_ValidatePublicKey()
 14480 ms     | 0x6817 ret:0x0
 14480 ms  0x6817 ret:0x7f47a4f07820::7f47a4f07820  10 aa 55 9e                                      ..U.
 14480 ms  0x6817 PK11_PubDeriveWithKDF()
 14480 ms  0x6817 seckey:0x7f47a4f07820
 14480 ms     | 0x6817 EC_ValidatePublicKey()
 14482 ms     | 0x6817 ret:0x0
 14484 ms  0x6817 ret:0x7f479cb72600
 14484 ms  0x6817 PK11_DeriveWithFlags()
 14484 ms  0x6817 basekey:0x7f479cb72600
 14484 ms     | 0x6817 PK11_DeriveWithTemplate()
 14484 ms  0x6817 ret:0x7f479cbb8800
 14484 ms  0x6817 PK11_Derive()
 14484 ms  0x6817 basekey:0x7f479cbb8800
 14484 ms     | 0x6817 PK11_DeriveWithTemplate()
 14484 ms  0x6817 ret:0x7f479cbb8780
 14484 ms  0x6817 SECKEY_DestroyPrivateKey()
 14484 ms  0x6817 privk:0x7f47a4f07820::7f47a4f07820  10 aa 55 9e                                      ..U.
 14484 ms  0x6817 privk:0x7f47a4f07820::7f47a4f07820  e5 e5 e5 e5                                      ....
 14484 ms  0x6817 PK11_Encrypt()
 14484 ms  0x6817 symkey:0x7f479e5c5b80
 14485 ms  SECKEY_ECParamsToKeySize()
 14485 ms  0x6817 ret:0x100
 14485 ms  0x6817 SECKEY_CreateECPrivateKey()
 14485 ms  0x6817 cx:0x7f479ba21648
 14486 ms     | 0x6817 EC_ValidatePublicKey()
 14487 ms     | 0x6817 ret:0x0
 14487 ms  0x6817 ret:0x7f47a4f08820::7f47a4f08820  80 cd 44 a1                                      ..D.
 14488 ms  0x6817 PK11_PubDeriveWithKDF()
 14488 ms  0x6817 seckey:0x7f47a4f08820
 14488 ms     | 0x6817 EC_ValidatePublicKey()
 14489 ms     | 0x6817 ret:0x0
 14491 ms  0x6817 ret:0x7f479cb72600
 14491 ms  0x6817 PK11_DeriveWithFlags()
 14491 ms  0x6817 basekey:0x7f479cb72600
 14491 ms     | 0x6817 PK11_DeriveWithTemplate()
 14491 ms  0x6817 ret:0x7f479c77a080
 14491 ms  0x6817 PK11_Derive()
 14491 ms  0x6817 basekey:0x7f479c77a080
 14491 ms     | 0x6817 PK11_DeriveWithTemplate()
 14491 ms  0x6817 ret:0x7f479b7b0600
 14491 ms  0x6817 SECKEY_DestroyPrivateKey()
 14491 ms  0x6817 privk:0x7f47a4f08820::7f47a4f08820  80 cd 44 a1                                      ..D.
 14491 ms  0x6817 privk:0x7f47a4f08820::7f47a4f08820  e5 e5 e5 e5                                      ....
 14491 ms  0x6817 PK11_Encrypt()
 14491 ms  0x6817 symkey:0x7f479e5c5d00
 14492 ms  0x6817 PK11_Encrypt()
 14492 ms  0x6817 symkey:0x7f479e5c4980
 14493 ms  0x6817 SSL_AuthCertificateComplete()
 14493 ms  0x6817 fd:0x7f47a1971100
 14493 ms  0x6817 err:0x0
 14493 ms  0x6817 SSL_AuthCertificateComplete()
 14493 ms  0x6817 fd:0x7f47a1977910
 14493 ms  0x6817 err:0x0
 14493 ms  0x6817 SSL_AuthCertificateComplete()
 14493 ms  0x6817 fd:0x7f47a18fe160
 14493 ms  0x6817 err:0x0
 14493 ms  0x6817 PK11_Encrypt()
 14493 ms  0x6817 symkey:0x7f479e5c5980
 14498 ms  0x6817 PK11_Encrypt()
 14498 ms  0x6817 symkey:0x7f479e5c5b80
 14498 ms  0x6817 PK11_Encrypt()
 14498 ms  0x6817 symkey:0x7f479e5c5d00
           /* TID 0x681f */
 14656 ms  0x681f PR_Close()
 14656 ms  0x681f fd:0x7f479c703f40
           /* TID 0x6817 */
 14664 ms  0x6817 SECKEY_DestroyPrivateKey()
 14664 ms  0x6817 privk:0x7f47a44ab020::7f47a44ab020  20 fe 41 a1                                       .A.
 14665 ms  0x6817 privk:0x7f47a44ab020::7f47a44ab020  e5 e5 e5 e5                                      ....
 14665 ms  0x6817 SECKEY_DestroyPrivateKey()
 14665 ms  0x6817 privk:0x7f47a1b73020::7f47a1b73020  c0 ae 55 9e                                      ..U.
 14665 ms  0x6817 privk:0x7f47a1b73020::7f47a1b73020  e5 e5 e5 e5                                      ....
 14666 ms  0x6817 PR_Close()
 14666 ms  0x6817 fd:0x7f47a1971100
 14666 ms     | 0x6817 PK11_Encrypt()
 14666 ms     | 0x6817 symkey:0x7f479e5c5980
 14678 ms  0x6817 SECKEY_DestroyPrivateKey()
 14678 ms  0x6817 privk:0x7f47a1b70820::7f47a1b70820  70 ae 55 9e                                      p.U.
 14679 ms  0x6817 privk:0x7f47a1b70820::7f47a1b70820  e5 e5 e5 e5                                      ....
 14679 ms  0x6817 SECKEY_DestroyPrivateKey()
 14679 ms  0x6817 privk:0x7f47a1a16820::7f47a1a16820  40 5c 20 9d                                      @\ .
 14679 ms  0x6817 privk:0x7f47a1a16820::7f47a1a16820  e5 e5 e5 e5                                      ....
 14679 ms  0x6817 PR_Close()
 14679 ms  0x6817 fd:0x7f47a1977910
 14680 ms     | 0x6817 PK11_Encrypt()
 14680 ms     | 0x6817 symkey:0x7f479e5c5b80
 14686 ms  0x6817 SECKEY_DestroyPrivateKey()
 14686 ms  0x6817 privk:0x7f47a54c8820::7f47a54c8820  40 e2 6e a1                                      @.n.
 14687 ms  0x6817 privk:0x7f47a54c8820::7f47a54c8820  e5 e5 e5 e5                                      ....
 14687 ms  0x6817 SECKEY_DestroyPrivateKey()
 14687 ms  0x6817 privk:0x7f47a4f12820::7f47a4f12820  60 b0 62 a1                                      `.b.
 14687 ms  0x6817 privk:0x7f47a4f12820::7f47a4f12820  e5 e5 e5 e5                                      ....
 14688 ms  0x6817 PR_Close()
 14688 ms  0x6817 fd:0x7f47a18fe160
 14689 ms     | 0x6817 PK11_Encrypt()
 14689 ms     | 0x6817 symkey:0x7f479e5c5d00
           /* TID 0x681f */
 14699 ms  0x681f PR_Close()
 14699 ms  0x681f fd:0x7f479c703730
           /* TID 0x6817 */
 14699 ms  0x6817 PK11_Encrypt()
 14699 ms  0x6817 symkey:0x7f479e56e980
 14700 ms  0x6817 PK11_Encrypt()
 14700 ms  0x6817 symkey:0x7f479e56e980
 14709 ms  0x6817 PK11_Encrypt()
 14709 ms  0x6817 symkey:0x7f479d2bb480
 14711 ms  0x6817 PK11_Encrypt()
 14711 ms  0x6817 symkey:0x7f479d2bb480
 14712 ms  0x6817 PK11_Encrypt()
 14712 ms  0x6817 symkey:0x7f479d2bb480
 14715 ms  0x6817 PK11_Encrypt()
 14715 ms  0x6817 symkey:0x7f479d2bb480
 14715 ms  0x6817 PK11_Encrypt()
 14715 ms  0x6817 symkey:0x7f479d2bb480
 14716 ms  0x6817 PK11_Encrypt()
 14716 ms  0x6817 symkey:0x7f479d2bb480
 14719 ms  0x6817 PK11_Encrypt()
 14719 ms  0x6817 symkey:0x7f479d2bb480
 14719 ms  0x6817 PK11_Encrypt()
 14719 ms  0x6817 symkey:0x7f479d2bb480
 14720 ms  0x6817 PK11_Encrypt()
 14720 ms  0x6817 symkey:0x7f479d2bb480
 14723 ms  0x6817 PK11_Encrypt()
 14723 ms  0x6817 symkey:0x7f479d2bb480
 14724 ms  0x6817 PK11_Encrypt()
 14724 ms  0x6817 symkey:0x7f479d2bb480
 14725 ms  0x6817 PK11_Encrypt()
 14725 ms  0x6817 symkey:0x7f479d2bb480
 14727 ms  0x6817 PK11_Encrypt()
 14727 ms  0x6817 symkey:0x7f479d2bb480
 14727 ms  0x6817 PK11_Encrypt()
 14727 ms  0x6817 symkey:0x7f479d2bb480
 14728 ms  0x6817 PK11_Encrypt()
 14728 ms  0x6817 symkey:0x7f479d2bb480
 14730 ms  0x6817 PK11_Encrypt()
 14730 ms  0x6817 symkey:0x7f479d2bb480
 14730 ms  0x6817 PK11_Encrypt()
 14730 ms  0x6817 symkey:0x7f479d2bb480
 14731 ms  0x6817 PK11_Encrypt()
 14731 ms  0x6817 symkey:0x7f479d2bb480
 14733 ms  0x6817 PK11_Encrypt()
 14733 ms  0x6817 symkey:0x7f479d2bb480
 14734 ms  0x6817 PK11_Encrypt()
 14734 ms  0x6817 symkey:0x7f479d2bb480
 14735 ms  0x6817 PK11_Encrypt()
 14735 ms  0x6817 symkey:0x7f479d2bb480
 14738 ms  0x6817 PK11_Encrypt()
 14738 ms  0x6817 symkey:0x7f479d2bb480
 14739 ms  0x6817 PK11_Encrypt()
 14739 ms  0x6817 symkey:0x7f479d2bb480
 14740 ms  0x6817 PK11_Encrypt()
 14740 ms  0x6817 symkey:0x7f479d2bb480
 14779 ms  0x6817 SECKEY_DestroyPrivateKey()
 14779 ms  0x6817 privk:0x7f47a4f1f020::7f47a4f1f020  40 5c 91 a1                                      @\..
 14779 ms  0x6817 privk:0x7f47a4f1f020::7f47a4f1f020  e5 e5 e5 e5                                      ....
 14780 ms  0x6817 SECKEY_DestroyPrivateKey()
 14780 ms  0x6817 privk:0x7f47a4f1c020::7f47a4f1c020  d0 48 90 a1                                      .H..
 14780 ms  0x6817 privk:0x7f47a4f1c020::7f47a4f1c020  e5 e5 e5 e5                                      ....
 14780 ms  0x6817 PR_Close()
 14780 ms  0x6817 fd:0x7f47a18dd400
 14780 ms     | 0x6817 PK11_Encrypt()
 14780 ms     | 0x6817 symkey:0x7f479cb73a80
 14791 ms  0x6817 SECKEY_DestroyPrivateKey()
 14791 ms  0x6817 privk:0x7f47a1a11820::7f47a1a11820  f0 5b 20 9d                                      .[ .
 14791 ms  0x6817 privk:0x7f47a1a11820::7f47a1a11820  e5 e5 e5 e5                                      ....
 14791 ms  0x6817 SECKEY_DestroyPrivateKey()
 14791 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  30 8d b7 9c                                      0...
 14791 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  e5 e5 e5 e5                                      ....
           /* TID 0x681f */
 14801 ms  0x681f PR_Close()
 14801 ms  0x681f fd:0x7f479cdd4190
 14802 ms  0x681f PR_Close()
 14802 ms  0x681f fd:0x7f479cdd4190
 14804 ms  0x681f PR_Close()
 14804 ms  0x681f fd:0x7f479cdd4190
 14805 ms  0x681f PR_Close()
 14805 ms  0x681f fd:0x7f479cdd4190
 14998 ms  0x681f PR_Close()
 14998 ms  0x681f fd:0x7f479b7b5160
 15026 ms  0x681f PR_Close()
 15026 ms  0x681f fd:0x7f479d2c5f10
 15042 ms  0x681f PR_Close()
 15042 ms  0x681f fd:0x7f479d2c5f10
 15049 ms  0x681f PR_Close()
 15049 ms  0x681f fd:0x7f47a18871f0
 15104 ms  0x681f PR_Close()
 15104 ms  0x681f fd:0x7f47a1887640
           /* TID 0x6817 */
 15259 ms  SECKEY_ECParamsToKeySize()
 15259 ms  0x6817 ret:0x100
 15259 ms  SECKEY_ECParamsToBasePointOrderLen()
 15259 ms  0x6817 ret:0x100
 15259 ms  SECKEY_ECParamsToBasePointOrderLen()
 15259 ms  0x6817 ret:0x100
 15259 ms  0x6817 EC_ValidatePublicKey()
 15264 ms  0x6817 ret:0x0
 15271 ms  SECKEY_ECParamsToKeySize()
 15271 ms  0x6817 ret:0xff
 15271 ms  0x6817 SECKEY_CreateECPrivateKey()
 15271 ms  0x6817 cx:0x7f47a86a5a68
 15272 ms     | 0x6817 EC_ValidatePublicKey()
 15272 ms     | 0x6817 ret:0x0
 15272 ms  0x6817 ret:0x7f47a1310820::7f47a1310820  c0 14 bb 9c                                      ....
 15272 ms  0x6817 PK11_PubDeriveWithKDF()
 15272 ms  0x6817 seckey:0x7f47a1310820
 15272 ms     | 0x6817 EC_ValidatePublicKey()
 15272 ms     | 0x6817 ret:0x0
 15273 ms  0x6817 ret:0x7f479e54f700
 15273 ms  0x6817 PK11_DeriveWithFlags()
 15273 ms  0x6817 basekey:0x7f479e54f700
 15273 ms     | 0x6817 PK11_DeriveWithTemplate()
 15273 ms  0x6817 ret:0x7f479cb29f80
 15273 ms  0x6817 PK11_Derive()
 15273 ms  0x6817 basekey:0x7f479cb29f80
 15274 ms     | 0x6817 PK11_DeriveWithTemplate()
 15274 ms  0x6817 ret:0x7f479b7b0600
 15274 ms  0x6817 SECKEY_DestroyPrivateKey()
 15274 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  c0 14 bb 9c                                      ....
 15274 ms  0x6817 privk:0x7f47a1310820::7f47a1310820  e5 e5 e5 e5                                      ....
 15274 ms  0x6817 PK11_Encrypt()
 15274 ms  0x6817 symkey:0x7f479cb72700
 15275 ms  0x6817 SSL_AuthCertificateComplete()
 15275 ms  0x6817 fd:0x7f479b7a7790
 15275 ms  0x6817 err:0x0
 15278 ms  0x6817 PK11_Encrypt()
 15278 ms  0x6817 symkey:0x7f479cb72700
 15279 ms  0x6817 PK11_Encrypt()
 15279 ms  0x6817 symkey:0x7f479c9a1400
           /* TID 0x681f */
 15286 ms  0x681f PR_Close()
 15286 ms  0x681f fd:0x7f479b7b5160
 15300 ms  0x681f PR_Close()
 15300 ms  0x681f fd:0x7f47a13b0fa0
           /* TID 0x6817 */
 15439 ms  0x6817 PR_Close()
 15439 ms  0x6817 fd:0x7f47a143b370
 15555 ms  0x6817 SECKEY_DestroyPrivateKey()
 15555 ms  0x6817 privk:0x7f47a01ae820::7f47a01ae820  60 55 20 9d                                      `U .
 15556 ms  0x6817 privk:0x7f47a01ae820::7f47a01ae820  e5 e5 e5 e5                                      ....
 15556 ms  0x6817 SECKEY_DestroyPrivateKey()
 15556 ms  0x6817 privk:0x7f479cd67020::7f479cd67020  d0 f8 df 9c                                      ....
 15556 ms  0x6817 privk:0x7f479cd67020::7f479cd67020  e5 e5 e5 e5                                      ....
 15557 ms  0x6817 PR_Close()
 15557 ms  0x6817 fd:0x7f479b7a7790
 15557 ms     | 0x6817 PK11_Encrypt()
 15557 ms     | 0x6817 symkey:0x7f479cb72700
 15601 ms  0x6817 PK11_Encrypt()
 15601 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 15673 ms  0x681f PR_Close()
 15673 ms  0x681f fd:0x7f479b48bf40
 15774 ms  0x681f PR_Close()
 15774 ms  0x681f fd:0x7f47a18dd5b0
           /* TID 0x6817 */
 17518 ms  0x6817 PR_Close()
 17518 ms  0x6817 fd:0x7f47a1908a30
 17594 ms  0x6817 PR_Close()
 17594 ms  0x6817 fd:0x7f479b7b5640
 19070 ms  0x6817 SSL_ImportFD()
 19070 ms  0x6817 ret:0x7f47a1ace820
 19070 ms  0x6817 SSL_AuthCertificateHook()
 19070 ms  0x6817 fd:0x7f47a1ace820
 19070 ms  0x6817 ret:0x0
 19070 ms  0x6817 PR_Connect()
 19070 ms  0x6817 fd:0x7f47a1ace820
 19289 ms  0x6817 SECKEY_CreateECPrivateKey()
 19289 ms  0x6817 cx:0x7f479ba217e8
 19292 ms     | 0x6817 EC_ValidatePublicKey()
 19292 ms     | 0x6817 ret:0x0
 19292 ms  0x6817 ret:0x7f47a4f12820::7f47a4f12820  70 a9 55 9e                                      p.U.
 19292 ms  0x6817 SECKEY_CreateECPrivateKey()
 19292 ms  0x6817 cx:0x7f479ba217e8
 19294 ms     | 0x6817 EC_ValidatePublicKey()
 19300 ms     | 0x6817 ret:0x0
 19300 ms  0x6817 ret:0x7f47a4f18820::7f47a4f18820  70 5e 20 9d                                      p^ .
 19381 ms  0x6817 PK11_Encrypt()
 19381 ms  0x6817 symkey:0x7f479cb73d00
 19385 ms  0x6817 PK11_Encrypt()
 19385 ms  0x6817 symkey:0x7f479cb73d00
           /* TID 0x683e */
 19437 ms  0x683e PR_Close()
 19437 ms  0x683e fd:0x7f479cdd4250
 19439 ms  0x683e PR_Close()
 19439 ms  0x683e fd:0x7f479cdd4250
           /* TID 0x6817 */
 19440 ms  0x6817 PR_Close()
 19440 ms  0x6817 fd:0x7f47a1931970
 19440 ms     | 0x6817 PK11_Encrypt()
 19440 ms     | 0x6817 symkey:0x7f479e56d300
           /* TID 0x681f */
 19453 ms  0x681f PR_Close()
 19453 ms  0x681f fd:0x7f479b7b5190
           /* TID 0x6817 */
 19457 ms  0x6817 PK11_Encrypt()
 19457 ms  0x6817 symkey:0x7f479cbb9700
 19524 ms  SECKEY_ECParamsToKeySize()
 19524 ms  0x6817 ret:0x100
 19524 ms  0x6817 SECKEY_CreateECPrivateKey()
 19524 ms  0x6817 cx:0x7f479ba217e8
           /* TID 0x681f */
 19526 ms  0x681f PR_Close()
 19526 ms  0x681f fd:0x7f479b7b5190
           /* TID 0x6817 */
 19529 ms     | 0x6817 EC_ValidatePublicKey()
 19534 ms     | 0x6817 ret:0x0
 19534 ms  0x6817 ret:0x7f47a54d2820::7f47a54d2820  20 fe 41 a1                                       .A.
 19534 ms  0x6817 PK11_PubDeriveWithKDF()
 19534 ms  0x6817 seckey:0x7f47a54d2820
 19534 ms     | 0x6817 EC_ValidatePublicKey()
 19558 ms     | 0x6817 ret:0x0
 19560 ms  0x6817 ret:0x7f479c779e00
 19560 ms  0x6817 PK11_DeriveWithFlags()
 19560 ms  0x6817 basekey:0x7f479c779e00
 19560 ms     | 0x6817 PK11_DeriveWithTemplate()
 19560 ms  0x6817 ret:0x7f479cbb8680
 19560 ms  0x6817 PK11_Derive()
 19560 ms  0x6817 basekey:0x7f479cbb8680
 19560 ms     | 0x6817 PK11_DeriveWithTemplate()
 19560 ms  0x6817 ret:0x7f479b7b0600
 19560 ms  0x6817 SECKEY_DestroyPrivateKey()
 19560 ms  0x6817 privk:0x7f47a54d2820::7f47a54d2820  20 fe 41 a1                                       .A.
 19560 ms  0x6817 privk:0x7f47a54d2820::7f47a54d2820  e5 e5 e5 e5                                      ....
 19561 ms  0x6817 PK11_Encrypt()
 19561 ms  0x6817 symkey:0x7f479e56d200
 19561 ms  0x6817 PK11_Encrypt()
 19561 ms  0x6817 symkey:0x7f479cbb9700
 19577 ms  0x6817 PK11_Encrypt()
 19577 ms  0x6817 symkey:0x7f479d2bb480
 19578 ms  0x6817 PK11_Encrypt()
 19578 ms  0x6817 symkey:0x7f479d2bb480
 19579 ms  0x6817 PK11_Encrypt()
 19579 ms  0x6817 symkey:0x7f479d2bb480
 19580 ms  0x6817 PK11_Encrypt()
 19580 ms  0x6817 symkey:0x7f479d2bb480
 19581 ms  0x6817 PK11_Encrypt()
 19581 ms  0x6817 symkey:0x7f479d2bb480
 19582 ms  0x6817 PK11_Encrypt()
 19582 ms  0x6817 symkey:0x7f479d2bb480
 19583 ms  0x6817 PK11_Encrypt()
 19583 ms  0x6817 symkey:0x7f479d2bb480
 19584 ms  0x6817 PK11_Encrypt()
 19584 ms  0x6817 symkey:0x7f479d2bb480
 19584 ms  0x6817 PK11_Encrypt()
 19584 ms  0x6817 symkey:0x7f479d2bb480
 19585 ms  0x6817 PK11_Encrypt()
 19585 ms  0x6817 symkey:0x7f479d2bb480
           /* TID 0x681f */
 19588 ms  0x681f PR_Close()
 19588 ms  0x681f fd:0x7f47a1aceca0
           /* TID 0x68b7 */
 19588 ms  0x68b7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 19588 ms  0x68b7 ret:0x0
           /* TID 0x6817 */
 19588 ms  0x6817 SSL_AuthCertificateComplete()
 19588 ms  0x6817 fd:0x7f47a1ace820
 19588 ms  0x6817 err:0x0
 19588 ms  0x6817 PK11_Encrypt()
 19588 ms  0x6817 symkey:0x7f479e56d200
 19589 ms  0x6817 PK11_Encrypt()
 19589 ms  0x6817 symkey:0x7f479d2bb480
 19596 ms  0x6817 PK11_Encrypt()
 19596 ms  0x6817 symkey:0x7f479d2bb480
 19597 ms  0x6817 PK11_Encrypt()
 19597 ms  0x6817 symkey:0x7f479d2bb480
 19598 ms  0x6817 PK11_Encrypt()
 19598 ms  0x6817 symkey:0x7f479d2bb480
 19598 ms  0x6817 PK11_Encrypt()
 19598 ms  0x6817 symkey:0x7f479d2bb480
 19600 ms  0x6817 PK11_Encrypt()
 19600 ms  0x6817 symkey:0x7f479d2bb480
 19602 ms  0x6817 PK11_Encrypt()
 19602 ms  0x6817 symkey:0x7f479d2bb480
 19603 ms  0x6817 PK11_Encrypt()
 19603 ms  0x6817 symkey:0x7f479d2bb480
 19603 ms  0x6817 PK11_Encrypt()
 19603 ms  0x6817 symkey:0x7f479d2bb480
 19604 ms  0x6817 PK11_Encrypt()
 19604 ms  0x6817 symkey:0x7f479d2bb480
 19604 ms  0x6817 PK11_Encrypt()
 19604 ms  0x6817 symkey:0x7f479d2bb480
 19605 ms  0x6817 PK11_Encrypt()
 19605 ms  0x6817 symkey:0x7f479d2bb480
 19606 ms  0x6817 PK11_Encrypt()
 19606 ms  0x6817 symkey:0x7f479d2bb480
 19607 ms  0x6817 PK11_Encrypt()
 19607 ms  0x6817 symkey:0x7f479d2bb480
 19608 ms  0x6817 PK11_Encrypt()
 19608 ms  0x6817 symkey:0x7f479d2bb480
 19608 ms  0x6817 PK11_Encrypt()
 19608 ms  0x6817 symkey:0x7f479d2bb480
 19609 ms  0x6817 PK11_Encrypt()
 19609 ms  0x6817 symkey:0x7f479d2bb480
 19609 ms  0x6817 PK11_Encrypt()
 19609 ms  0x6817 symkey:0x7f479d2bb480
 19609 ms  0x6817 PK11_Encrypt()
 19609 ms  0x6817 symkey:0x7f479d2bb480
 19610 ms  0x6817 PK11_Encrypt()
 19610 ms  0x6817 symkey:0x7f479d2bb480
 19613 ms  0x6817 PK11_Encrypt()
 19613 ms  0x6817 symkey:0x7f479d2bb480
 19614 ms  0x6817 PK11_Encrypt()
 19614 ms  0x6817 symkey:0x7f479d2bb480
 19615 ms  0x6817 PK11_Encrypt()
 19615 ms  0x6817 symkey:0x7f479d2bb480
 19616 ms  0x6817 PK11_Encrypt()
 19616 ms  0x6817 symkey:0x7f479d2aaf80
           /* TID 0x681f */
 19655 ms  0x681f PR_Close()
 19655 ms  0x681f fd:0x7f47a1931be0
 19656 ms  0x681f PR_Close()
 19656 ms  0x681f fd:0x7f47a1931be0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a1931be0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8c460
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8c520
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8c580
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8c5e0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8c640
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a5d8ca30
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a60389d0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a60401f0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a6045b80
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a6052220
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a6052640
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a6052ac0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a6052bb0
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a605c250
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a605c910
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a62d7070
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a62d7130
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a62d7220
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a62d7580
 19658 ms  0x681f PR_Close()
 19658 ms  0x681f fd:0x7f47a62d7610
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62d7820
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62d79d0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62d7b80
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62e0a60
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62e9760
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62e9c10
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62e9e20
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef070
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef2b0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef340
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef4f0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef550
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62ef940
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62f9790
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a62f9e20
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b3550
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b64c0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b6580
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b6820
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b6c40
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b6e80
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b6fa0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63b9820
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63ea550
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63ea6a0
 19659 ms  0x681f PR_Close()
 19659 ms  0x681f fd:0x7f47a63ea7c0
 19665 ms  0x681f PR_Close()
 19665 ms  0x681f fd:0x7f47a18dd220
 19675 ms  0x681f PR_Close()
 19675 ms  0x681f fd:0x7f479d2c55e0
 19677 ms  0x681f PR_Close()
 19677 ms  0x681f fd:0x7f479d2c55e0
 19678 ms  0x681f PR_Close()
 19678 ms  0x681f fd:0x7f479d2c55e0
 19685 ms  0x681f PR_Close()
 19685 ms  0x681f fd:0x7f47a1acef70
 19687 ms  0x681f PR_Close()
 19687 ms  0x681f fd:0x7f47a18dd220
 19713 ms  0x681f PR_Close()
 19713 ms  0x681f fd:0x7f479cdd4250
 19741 ms  0x681f PR_Close()
 19741 ms  0x681f fd:0x7f479cdd4250
           /* TID 0x6817 */
 19778 ms  0x6817 SECKEY_DestroyPrivateKey()
 19778 ms  0x6817 privk:0x7f47a4f18820::7f47a4f18820  70 5e 20 9d                                      p^ .
 19779 ms  0x6817 privk:0x7f47a4f18820::7f47a4f18820  e5 e5 e5 e5                                      ....
 19779 ms  0x6817 SECKEY_DestroyPrivateKey()
 19779 ms  0x6817 privk:0x7f47a4f12820::7f47a4f12820  70 a9 55 9e                                      p.U.
 19779 ms  0x6817 privk:0x7f47a4f12820::7f47a4f12820  e5 e5 e5 e5                                      ....
           /* TID 0x681f */
 19794 ms  0x681f PR_Close()
 19794 ms  0x681f fd:0x7f479c234850
 19844 ms  0x681f PR_Close()
 19844 ms  0x681f fd:0x7f47a1931d60
 19877 ms  0x681f PR_Close()
 19877 ms  0x681f fd:0x7f479cdd4250
 19880 ms  0x681f PR_Close()
 19880 ms  0x681f fd:0x7f479cdd4250
 19883 ms  0x681f PR_Close()
 19883 ms  0x681f fd:0x7f479cdd4250
 19887 ms  0x681f PR_Close()
 19887 ms  0x681f fd:0x7f479cdd4250
 19888 ms  0x681f PR_Close()
 19888 ms  0x681f fd:0x7f479cdd4250
 19890 ms  0x681f PR_Close()
 19890 ms  0x681f fd:0x7f479cdd4250
 19891 ms  0x681f PR_Close()
 19891 ms  0x681f fd:0x7f479cdd4250
 19892 ms  0x681f PR_Close()
 19892 ms  0x681f fd:0x7f479cdd4250
 19893 ms  0x681f PR_Close()
 19893 ms  0x681f fd:0x7f479cdd4250
 19894 ms  0x681f PR_Close()
 19894 ms  0x681f fd:0x7f479cdd4250
 19895 ms  0x681f PR_Close()
 19895 ms  0x681f fd:0x7f479cdd4250
 19897 ms  0x681f PR_Close()
 19897 ms  0x681f fd:0x7f479cdd4250
 19898 ms  0x681f PR_Close()
 19898 ms  0x681f fd:0x7f479cdd4250
 19899 ms  0x681f PR_Close()
 19899 ms  0x681f fd:0x7f479cdd4250
 19900 ms  0x681f PR_Close()
 19900 ms  0x681f fd:0x7f479cdd4250
 19901 ms  0x681f PR_Close()
 19901 ms  0x681f fd:0x7f479cdd4250
 19901 ms  0x681f PR_Close()
 19901 ms  0x681f fd:0x7f47a1ba1eb0
 19904 ms  0x681f PR_Close()
 19904 ms  0x681f fd:0x7f479cdd4250
 19904 ms  0x681f PR_Close()
 19904 ms  0x681f fd:0x7f47a1ba1580
 19904 ms  0x681f PR_Close()
 19904 ms  0x681f fd:0x7f47a1ba1e80
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f479cdd4250
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f47a1ba13a0
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f47a1ba1640
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f47a1ba1c70
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f47a1bf1130
 19908 ms  0x681f PR_Close()
 19908 ms  0x681f fd:0x7f47a4382a60
 19912 ms  0x681f PR_Close()
 19912 ms  0x681f fd:0x7f479cdd4250
           /* TID 0x6817 */
 19998 ms  0x6817 PK11_Encrypt()
 19998 ms  0x6817 symkey:0x7f479e56d200
 20103 ms  0x6817 PR_Close()
 20103 ms  0x6817 fd:0x7f479e577e50
 20103 ms     | 0x6817 PK11_Encrypt()
 20103 ms     | 0x6817 symkey:0x7f479e5c4980
 20227 ms  0x6817 PK11_Encrypt()
 20227 ms  0x6817 symkey:0x7f479e56d200
           /* TID 0x683e */
 20468 ms  0x683e PR_Close()
 20468 ms  0x683e fd:0x7f47a1ba1e20
 20727 ms  0x683e PR_Close()
 20727 ms  0x683e fd:0x7f47a1ba1e20
 20730 ms  0x683e PR_Close()
 20730 ms  0x683e fd:0x7f47a1ba1e20
           /* TID 0x681f */
 21020 ms  0x681f PR_Close()
 21020 ms  0x681f fd:0x7f479e5ab070
           /* TID 0x6817 */
 21037 ms  0x6817 SSL_ImportFD()
 21038 ms  0x6817 ret:0x7f47a13b0fa0
 21038 ms  0x6817 SSL_AuthCertificateHook()
 21038 ms  0x6817 fd:0x7f47a13b0fa0
 21038 ms  0x6817 ret:0x0
 21038 ms  0x6817 PR_Connect()
 21038 ms  0x6817 fd:0x7f47a13b0fa0
 21038 ms  0x6817 PK11_Encrypt()
 21038 ms  0x6817 symkey:0x7f479d2fe380
 21038 ms  0x6817 PK11_Encrypt()
 21038 ms  0x6817 symkey:0x7f479d2fe380
 21043 ms  0x6817 PR_Close()
 21043 ms  0x6817 fd:0x7f479c2347c0
           /* TID 0x680c */
 21045 ms  0x680c EC_ValidatePublicKey()
 21046 ms  0x680c ret:0x0
 21046 ms  0x680c EC_ValidatePublicKey()
 21048 ms  0x680c ret:0x0
 21048 ms  0x680c EC_ValidatePublicKey()
 21049 ms  0x680c ret:0x0
 21049 ms  0x680c EC_ValidatePublicKey()
 21050 ms  0x680c ret:0x0
 21051 ms  0x680c EC_ValidatePublicKey()
 21052 ms  0x680c ret:0x0
 21052 ms  0x680c EC_ValidatePublicKey()
 21053 ms  0x680c ret:0x0
 21053 ms  0x680c EC_ValidatePublicKey()
 21055 ms  0x680c ret:0x0
 21055 ms  0x680c EC_ValidatePublicKey()
 21056 ms  0x680c ret:0x0
 21056 ms  0x680c EC_ValidatePublicKey()
 21058 ms  0x680c ret:0x0
 21058 ms  0x680c EC_ValidatePublicKey()
 21059 ms  0x680c ret:0x0
           /* TID 0x6817 */
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479c7eb680
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479b48a200
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479d2aaf80
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f478a68b300
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479cbb9300
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479b46ea80
 21060 ms  0x6817 PK11_Encrypt()
 21060 ms  0x6817 symkey:0x7f479c9a1400
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479cbb9700
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479b7b8800
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479cb73d00
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479d2fef00
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479cb29600
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479c779280
 21061 ms  0x6817 PK11_Encrypt()
 21061 ms  0x6817 symkey:0x7f479d2bb480
 21061 ms  0x6817 PR_Close()
 21061 ms  0x6817 fd:0x7f47a164aa90
 21061 ms     | 0x6817 PK11_Encrypt()
 21061 ms     | 0x6817 symkey:0x7f479cdd3380
 21061 ms  0x6817 PR_Close()
 21061 ms  0x6817 fd:0x7f478a686ee0
 21061 ms  0x6817 PR_Close()
 21061 ms  0x6817 fd:0x7f478a728220
 21061 ms     | 0x6817 PK11_Encrypt()
 21061 ms     | 0x6817 symkey:0x7f479b4ff900
 21062 ms  0x6817 PR_Close()
 21062 ms  0x6817 fd:0x7f479b20cee0
 21062 ms  0x6817 PR_Close()
 21062 ms  0x6817 fd:0x7f479b20c940
 21062 ms     | 0x6817 PK11_Encrypt()
 21062 ms     | 0x6817 symkey:0x7f479b4feb80
 21062 ms  0x6817 PR_Close()
 21062 ms  0x6817 fd:0x7f479b7b5f70
 21062 ms  0x6817 PR_Close()
 21062 ms  0x6817 fd:0x7f47a8639bb0
 21062 ms     | 0x6817 PK11_Encrypt()
 21062 ms     | 0x6817 symkey:0x7f479baeb000
 21062 ms  0x6817 PR_Close()
 21062 ms  0x6817 fd:0x7f47a1a89460
 21062 ms     | 0x6817 PK11_Encrypt()
 21062 ms     | 0x6817 symkey:0x7f479c9a1e00
 21063 ms  0x6817 PR_Close()
 21063 ms  0x6817 fd:0x7f47a13b0dc0
 21063 ms     | 0x6817 PK11_Encrypt()
 21063 ms     | 0x6817 symkey:0x7f479cbb9700
 21063 ms  0x6817 PR_Close()
 21063 ms  0x6817 fd:0x7f479b79de20
 21063 ms     | 0x6817 PK11_Encrypt()
 21063 ms     | 0x6817 symkey:0x7f479d2fef00
 21063 ms  0x6817 PR_Close()
 21063 ms  0x6817 fd:0x7f47a14f2d00
 21063 ms     | 0x6817 PK11_Encrypt()
 21063 ms     | 0x6817 symkey:0x7f479b46ea80
 21063 ms  0x6817 PR_Close()
 21063 ms  0x6817 fd:0x7f47a14f4310
 21063 ms     | 0x6817 PK11_Encrypt()
 21063 ms     | 0x6817 symkey:0x7f479d2aaf80
 21064 ms  0x6817 PR_Close()
 21064 ms  0x6817 fd:0x7f47a182ae80
 21064 ms     | 0x6817 PK11_Encrypt()
 21064 ms     | 0x6817 symkey:0x7f479cb29600
 21064 ms  0x6817 PR_Close()
 21064 ms  0x6817 fd:0x7f479cdd4130
 21064 ms     | 0x6817 PK11_Encrypt()
 21064 ms     | 0x6817 symkey:0x7f479cb73d00
 21064 ms  0x6817 PR_Close()
 21064 ms  0x6817 fd:0x7f47a143b6a0
 21064 ms     | 0x6817 PK11_Encrypt()
 21064 ms     | 0x6817 symkey:0x7f479d2bb480
 21064 ms  0x6817 PR_Close()
 21064 ms  0x6817 fd:0x7f479b7a7f10
 21064 ms     | 0x6817 PK11_Encrypt()
 21064 ms     | 0x6817 symkey:0x7f479b7b8800
 21065 ms  0x6817 PR_Close()
 21065 ms  0x6817 fd:0x7f478a686820
 21065 ms     | 0x6817 PK11_Encrypt()
 21065 ms     | 0x6817 symkey:0x7f478a68b300
 21065 ms  0x6817 PR_Close()
 21065 ms  0x6817 fd:0x7f479c7038e0
 21065 ms     | 0x6817 PK11_Encrypt()
 21065 ms     | 0x6817 symkey:0x7f479b48a200
 21065 ms  0x6817 PR_Close()
 21065 ms  0x6817 fd:0x7f479c703400
 21065 ms     | 0x6817 PK11_Encrypt()
 21065 ms     | 0x6817 symkey:0x7f479c779280
 21065 ms  0x6817 PR_Close()
 21065 ms  0x6817 fd:0x7f47a18dde80
 21065 ms     | 0x6817 PK11_Encrypt()
 21065 ms     | 0x6817 symkey:0x7f479cbb9300
 21065 ms  0x6817 PR_Close()
 21065 ms  0x6817 fd:0x7f47a14f44c0
 21065 ms     | 0x6817 PK11_Encrypt()
 21065 ms     | 0x6817 symkey:0x7f479c9a1400
 21066 ms  0x6817 PR_Close()
 21066 ms  0x6817 fd:0x7f479cbbdb80
 21066 ms     | 0x6817 PK11_Encrypt()
 21066 ms     | 0x6817 symkey:0x7f479c7eb680
           /* TID 0x6871 */
 21066 ms  0x6871 PR_Close()
 21066 ms  0x6871 fd:0x7f478a686730
 21066 ms  0x6871 PR_Close()
 21066 ms  0x6871 fd:0x7f478a686730
           /* TID 0x6817 */
 21080 ms  0x6817 PK11_Encrypt()
 21080 ms  0x6817 symkey:0x7f479e56e980
 21081 ms  0x6817 PK11_Encrypt()
 21081 ms  0x6817 symkey:0x7f479e56e980
 21081 ms  0x6817 SECKEY_CreateECPrivateKey()
 21081 ms  0x6817 cx:0x7f47a86a5f48
 21081 ms     | 0x6817 EC_ValidatePublicKey()
 21081 ms     | 0x6817 ret:0x0
 21081 ms  0x6817 ret:0x7f479b45b820::7f479b45b820  f0 f1 23 9c                                      ..#.
 21081 ms  0x6817 SECKEY_CreateECPrivateKey()
 21081 ms  0x6817 cx:0x7f47a86a5f48
 21082 ms     | 0x6817 EC_ValidatePublicKey()
 21083 ms     | 0x6817 ret:0x0
 21083 ms  0x6817 ret:0x7f479b45e820::7f479b45e820  a0 16 bb 9c                                      ....
 21089 ms  0x6817 PK11_Encrypt()
 21089 ms  0x6817 symkey:0x7f479e56e980
 21089 ms  0x6817 PK11_Encrypt()
 21089 ms  0x6817 symkey:0x7f479e56e980
 21093 ms  0x6817 PK11_Encrypt()
 21093 ms  0x6817 symkey:0x7f479e56e980
 21093 ms  0x6817 PK11_Encrypt()
 21093 ms  0x6817 symkey:0x7f479e56e980
 21093 ms  0x6817 SSL_ImportFD()
 21093 ms  0x6817 ret:0x7f479b48b670
 21093 ms  0x6817 SSL_AuthCertificateHook()
 21093 ms  0x6817 fd:0x7f479b48b670
 21093 ms  0x6817 ret:0x0
           /* TID 0x680c */
 21094 ms  0x680c PR_Close()
 21094 ms  0x680c fd:0x7f479c73ad60
 21094 ms  0x680c PR_Close()
 21094 ms  0x680c fd:0x7f479b7b53d0
           /* TID 0x6817 */
 21094 ms  0x6817 PR_Connect()
 21094 ms  0x6817 fd:0x7f479b48b670
 21094 ms  0x6817 SSL_ImportFD()
 21094 ms  0x6817 ret:0x7f479b48bfd0
 21094 ms  0x6817 SSL_AuthCertificateHook()
 21094 ms  0x6817 fd:0x7f479b48bfd0
 21094 ms  0x6817 ret:0x0
 21094 ms  0x6817 PR_Connect()
 21094 ms  0x6817 fd:0x7f479b48bfd0
           /* TID 0x680c */
 21095 ms  0x680c PR_Close()
 21095 ms  0x680c fd:0x7f479b7b5580
 21095 ms  0x680c PR_Close()
 21095 ms  0x680c fd:0x7f478a7281c0
 21096 ms  0x680c PR_Close()
 21096 ms  0x680c fd:0x7f479b7b5580
 21096 ms  0x680c PR_Close()
 21096 ms  0x680c fd:0x7f478a7281c0
           /* TID 0x683e */
 21099 ms  0x683e PR_Close()
 21099 ms  0x683e fd:0x7f479b7b5df0
           /* TID 0x680c */
 21115 ms  0x680c PR_Close()
 21115 ms  0x680c fd:0x7f479b7b5580
 21115 ms  0x680c PR_Close()
 21115 ms  0x680c fd:0x7f479cdd41c0
 21116 ms  0x680c PR_Close()
 21116 ms  0x680c fd:0x7f479b7b5580
 21116 ms  0x680c PR_Close()
 21116 ms  0x680c fd:0x7f479cdd41c0
 21117 ms  0x680c PR_Close()
 21117 ms  0x680c fd:0x7f47a66c89a0
 21117 ms  0x680c PR_Close()
 21117 ms  0x680c fd:0x7f47a66c88b0
 21117 ms  0x680c PR_Close()
 21117 ms  0x680c fd:0x7f47a66c8a60
 21119 ms  0x680c PR_Close()
 21119 ms  0x680c fd:0x7f479c926280
 21120 ms  0x680c PR_Close()
 21120 ms  0x680c fd:0x7f479c926280
 21122 ms  0x680c PR_Close()
 21122 ms  0x680c fd:0x7f479b7b5580
 21122 ms  0x680c PR_Close()
 21122 ms  0x680c fd:0x7f479cdd41c0
 21123 ms  0x680c PR_Close()
 21123 ms  0x680c fd:0x7f479b7b5580
 21123 ms  0x680c PR_Close()
 21123 ms  0x680c fd:0x7f479cdd41c0
 21125 ms  0x680c PR_Close()
 21125 ms  0x680c fd:0x7f479cdd4280
 21127 ms  0x680c PR_Close()
 21127 ms  0x680c fd:0x7f479cdd4280
 21128 ms  0x680c PR_Close()
 21128 ms  0x680c fd:0x7f479b7b5580
 21129 ms  0x680c PR_Close()
 21129 ms  0x680c fd:0x7f479cdd48e0
 21129 ms  0x680c PR_Close()
 21129 ms  0x680c fd:0x7f479b7b5580
 21129 ms  0x680c PR_Close()
 21129 ms  0x680c fd:0x7f479cdd48e0
 21134 ms  0x680c PR_Close()
 21134 ms  0x680c fd:0x7f479cdd49a0
 21136 ms  0x680c PR_Close()
 21136 ms  0x680c fd:0x7f479cdd49a0
           /* TID 0x6817 */
 21139 ms  0x6817 PK11_Derive()
 21139 ms  0x6817 basekey:0x7f479cbb9280
 21139 ms     | 0x6817 PK11_DeriveWithTemplate()
 21139 ms  0x6817 ret:0x7f479c77a380
 21139 ms  0x6817 PK11_PubDeriveWithKDF()
 21139 ms  0x6817 seckey:0x7f479b45b820
 21139 ms     | 0x6817 EC_ValidatePublicKey()
 21139 ms     | 0x6817 ret:0x0
 21140 ms  0x6817 ret:0x7f479cbb9280
 21140 ms  SECKEY_ECParamsToKeySize()
 21140 ms  0x6817 ret:0xff
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479c77a380
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c90a980
 21140 ms  0x6817 PK11_Derive()
 21140 ms  0x6817 basekey:0x7f479cbb9280
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c7eb580
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479c7eb580
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c77a380
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479c7eb580
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479cbb9280
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479c7eb580
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c90a980
 21140 ms  0x6817 PK11_Derive()
 21140 ms  0x6817 basekey:0x7f479cbb8600
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c90a000
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479cbb9280
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c7eb580
 21140 ms  0x6817 PK11_DeriveWithFlags()
 21140 ms  0x6817 basekey:0x7f479cbb9280
 21140 ms     | 0x6817 PK11_DeriveWithTemplate()
 21140 ms  0x6817 ret:0x7f479c90a980
 21144 ms  0x6817 PK11_DeriveWithFlags()
 21144 ms  0x6817 basekey:0x7f479cbb9280
 21144 ms     | 0x6817 PK11_DeriveWithTemplate()
 21144 ms  0x6817 ret:0x7f479c90a980
           /* TID 0x680c */
 21146 ms  0x680c PR_Close()
 21146 ms  0x680c fd:0x7f479d77ba30
 21147 ms  0x680c PR_Close()
 21147 ms  0x680c fd:0x7f479d77ba30
 21149 ms  0x680c PR_Close()
 21149 ms  0x680c fd:0x7f479d77ba60
           /* TID 0x683e */
 21154 ms  0x683e PR_Close()
 21154 ms  0x683e fd:0x7f478a7282b0
           /* TID 0x680c */
 21155 ms  0x680c PR_Close()
 21155 ms  0x680c fd:0x7f479b7b5580
 21155 ms  0x680c PR_Close()
 21155 ms  0x680c fd:0x7f479cbbd490
           /* TID 0x6817 */
 21158 ms  0x6817 PK11_Encrypt()
 21158 ms  0x6817 symkey:0x7f479e56d200
 21163 ms  0x6817 SECKEY_CreateECPrivateKey()
 21163 ms  0x6817 cx:0x7f479b79a288
 21164 ms     | 0x6817 EC_ValidatePublicKey()
 21164 ms     | 0x6817 ret:0x0
 21164 ms  0x6817 ret:0x7f479c734820::7f479c734820  70 49 90 a1                                      pI..
 21164 ms  0x6817 SECKEY_CreateECPrivateKey()
 21164 ms  0x6817 cx:0x7f479b79a288
 21164 ms     | 0x6817 EC_ValidatePublicKey()
 21166 ms     | 0x6817 ret:0x0
 21166 ms  0x6817 ret:0x7f479c9b7820::7f479c9b7820  e0 27 a0 a1                                      .'..
           /* TID 0x681f */
 21167 ms  0x681f PR_Close()
 21167 ms  0x681f fd:0x7f479b20ce20
           /* TID 0x68d5 */
 21170 ms  0x68d5 PR_Close()
 21170 ms  0x68d5 fd:0x7f479e577550
           /* TID 0x6817 */
 21188 ms  0x6817 PK11_Encrypt()
 21188 ms  0x6817 symkey:0x7f479d2fe380
 21188 ms  0x6817 PR_Close()
 21188 ms  0x6817 fd:0x7f47a134be80
 21188 ms     | 0x6817 PK11_Encrypt()
 21188 ms     | 0x6817 symkey:0x7f479d2fe380
           /* TID 0x68d5 */
 21194 ms  0x68d5 PR_Close()
 21194 ms  0x68d5 fd:0x7f478a728fd0
           /* TID 0x6817 */
 21195 ms  0x6817 PR_Connect()
 21195 ms  0x6817 fd:0x7f479b20ce50
           /* TID 0x681f */
 21198 ms  0x681f PR_Close()
 21198 ms  0x681f fd:0x7f479b20cfd0
           /* TID 0x6811 */
 21204 ms  0x6811 PR_Close()
 21204 ms  0x6811 fd:0x7f47aa9dac70
           /* TID 0x6817 */
 21204 ms  0x6817 PK11_Encrypt()
 21204 ms  0x6817 symkey:0x7f479e56e980
 21204 ms  0x6817 PK11_Encrypt()
 21204 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21205 ms  0x6817 PK11_Encrypt()
 21205 ms  0x6817 symkey:0x7f479e56e980
 21210 ms  0x6817 PR_Close()
 21210 ms  0x6817 fd:0x7f479b20ce50
 21210 ms  0x6817 PR_Close()
 21210 ms  0x6817 fd:0x7f479b48bfd0
 21210 ms  0x6817 PR_Close()
 21210 ms  0x6817 fd:0x7f479b48b670
 21210 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 21210 ms     | 0x6817 privk:0x7f479c9b7820::7f479c9b7820  e0 27 a0 a1                                      .'..
 21210 ms     | 0x6817 privk:0x7f479c9b7820::7f479c9b7820  e5 e5 e5 e5                                      ....
 21210 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 21210 ms     | 0x6817 privk:0x7f479c734820::7f479c734820  70 49 90 a1                                      pI..
 21210 ms     | 0x6817 privk:0x7f479c734820::7f479c734820  e5 e5 e5 e5                                      ....
 21210 ms  0x6817 PR_Close()
 21210 ms  0x6817 fd:0x7f47a13b0fa0
 21211 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 21211 ms     | 0x6817 privk:0x7f479b45e820::7f479b45e820  a0 16 bb 9c                                      ....
 21211 ms     | 0x6817 privk:0x7f479b45e820::7f479b45e820  e5 e5 e5 e5                                      ....
 21211 ms     | 0x6817 SECKEY_DestroyPrivateKey()
 21211 ms     | 0x6817 privk:0x7f479b45b820::7f479b45b820  f0 f1 23 9c                                      ..#.
 21211 ms     | 0x6817 privk:0x7f479b45b820::7f479b45b820  e5 e5 e5 e5                                      ....
           /* TID 0x683e */
 21213 ms  0x683e PR_Close()
 21213 ms  0x683e fd:0x7f478a7282b0
           /* TID 0x68d5 */
 21214 ms  0x68d5 PR_Close()
 21214 ms  0x68d5 fd:0x7f478a7282b0
           /* TID 0x680c */
 21231 ms  0x680c PR_Close()
 21231 ms  0x680c fd:0x7f479b7b5580
 21232 ms  0x680c PR_Close()
 21232 ms  0x680c fd:0x7f478a728220
           /* TID 0x6817 */
 21232 ms  0x6817 PK11_Encrypt()
 21232 ms  0x6817 symkey:0x7f479e56e980
 21233 ms  0x6817 PR_Close()
 21233 ms  0x6817 fd:0x7f47a1ace820
 21233 ms     | 0x6817 PK11_Encrypt()
 21233 ms     | 0x6817 symkey:0x7f479e56d200
 21233 ms  0x6817 PR_Close()
 21233 ms  0x6817 fd:0x7f47a18fe580
 21233 ms     | 0x6817 PK11_Encrypt()
 21233 ms     | 0x6817 symkey:0x7f479e56e980
 21233 ms  0x6817 PR_Close()
 21233 ms  0x6817 fd:0x7f479d77be20
           /* TID 0x6871 */
 21235 ms  0x6871 PR_Close()
 21235 ms  0x6871 fd:0x7f478a728ee0
 21235 ms  0x6871 PR_Close()
 21235 ms  0x6871 fd:0x7f478a728ee0
 21235 ms  0x6871 PR_Close()
 21235 ms  0x6871 fd:0x7f478a728ee0
 21235 ms  0x6871 PR_Close()
 21235 ms  0x6871 fd:0x7f479b20c070
           /* TID 0x68d5 */
 21236 ms  0x68d5 PR_Close()
 21236 ms  0x68d5 fd:0x7f479b20c070
           /* TID 0x681f */
 21242 ms  0x681f PR_Close()
 21242 ms  0x681f fd:0x7f479c2348e0
 21242 ms  0x681f PR_Close()
 21242 ms  0x681f fd:0x7f479c234910
           /* TID 0x6811 */
 21255 ms  0x6811 PR_Close()
 21255 ms  0x6811 fd:0x7f47a164a8b0
 21256 ms  0x6811 PR_Close()
 21256 ms  0x6811 fd:0x7f47a8639e50
           /* TID 0x680c */
 21260 ms  0x680c PR_Close()
 21260 ms  0x680c fd:0x7f478a728fd0
 21260 ms  0x680c PR_Close()
 21260 ms  0x680c fd:0x7f479b79ddc0
           /* TID 0x68d5 */
 21262 ms  0x68d5 PR_Close()
 21262 ms  0x68d5 fd:0x7f479b79dd30
 21265 ms  0x68d5 PR_Close()
 21265 ms  0x68d5 fd:0x7f478a686e50
           /* TID 0x681f */
 21281 ms  0x681f PR_Close()
 21281 ms  0x681f fd:0x7f47a43590a0
 21281 ms  0x681f PR_Close()
 21281 ms  0x681f fd:0x7f47a1bf1040
           /* TID 0x68d5 */
 21288 ms  0x68d5 PR_Close()
 21288 ms  0x68d5 fd:0x7f478a728220
 21290 ms  0x68d5 PR_Close()
 21290 ms  0x68d5 fd:0x7f478a728220
 21293 ms  0x68d5 PR_Close()
 21293 ms  0x68d5 fd:0x7f479b48b7f0
 21294 ms  0x68d5 PR_Close()
 21294 ms  0x68d5 fd:0x7f479b48b880
 21303 ms  0x68d5 PR_Close()
 21303 ms  0x68d5 fd:0x7f479b48bc40
 21309 ms  0x68d5 PR_Close()
 21309 ms  0x68d5 fd:0x7f479b79deb0
 21315 ms  0x68d5 PR_Close()
 21315 ms  0x68d5 fd:0x7f479b7a7880
 21324 ms  0x68d5 PR_Close()
 21324 ms  0x68d5 fd:0x7f479b7b5190
 21325 ms  0x68d5 PR_Close()
 21325 ms  0x68d5 fd:0x7f479b7b5190
           /* TID 0x680c */
 21483 ms  0x680c PR_Close()
 21483 ms  0x680c fd:0x7f478a728130
 21483 ms  0x680c PR_Close()
 21483 ms  0x680c fd:0x7f478a728130
 21489 ms  0x680c PR_Close()
 21489 ms  0x680c fd:0x7f47c39da130
 21489 ms  0x680c PR_Close()
 21489 ms  0x680c fd:0x7f47c39da190
Process terminated
