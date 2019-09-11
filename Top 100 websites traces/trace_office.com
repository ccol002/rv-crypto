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
           /* TID 0x5fe */
    46 ms  0x5fe SECKEY_DestroyPrivateKey()
    46 ms  0x5fe privk:0x7fbdd84b4820::7fbdd84b4820  70 24 0e e1                                      p$..
    46 ms  0x5fe privk:0x7fbdd84b4820::7fbdd84b4820  e5 e5 e5 e5                                      ....
    46 ms  0x5fe SECKEY_DestroyPrivateKey()
    46 ms  0x5fe privk:0x7fbdd84b2020::7fbdd84b2020  40 cc 36 de                                      @.6.
    46 ms  0x5fe privk:0x7fbdd84b2020::7fbdd84b2020  e5 e5 e5 e5                                      ....
           /* TID 0x606 */
   250 ms  0x606 PR_Close()
   250 ms  0x606 fd:0x7fbdd805f730
           /* TID 0x5fe */
   404 ms  0x5fe SSL_ImportFD()
   404 ms  0x5fe ret:0x7fbdd82f49d0
   404 ms  0x5fe SSL_AuthCertificateHook()
   404 ms  0x5fe fd:0x7fbdd82f49d0
   404 ms  0x5fe ret:0x0
   404 ms  0x5fe PR_Connect()
   404 ms  0x5fe fd:0x7fbdd82f49d0
   612 ms  0x5fe SECKEY_CreateECPrivateKey()
   612 ms  0x5fe cx:0x7fbdd82ec7e8
   613 ms     | 0x5fe EC_ValidatePublicKey()
   613 ms     | 0x5fe ret:0x0
   613 ms  0x5fe ret:0x7fbdc7462820::7fbdc7462820  a0 9b 4c c7                                      ..L.
   613 ms  0x5fe SECKEY_CreateECPrivateKey()
   613 ms  0x5fe cx:0x7fbdd82ec7e8
   615 ms     | 0x5fe EC_ValidatePublicKey()
   621 ms     | 0x5fe ret:0x0
   621 ms  0x5fe ret:0x7fbdc7464820::7fbdc7464820  60 9a 4c c7                                      `.L.
           /* TID 0x60b */
   785 ms  0x60b PR_Close()
   785 ms  0x60b fd:0x7fbdd82f4df0
   788 ms  0x60b PR_Close()
   788 ms  0x60b fd:0x7fbdd82f4df0
   791 ms  0x60b PR_Close()
   791 ms  0x60b fd:0x7fbdd82f4df0
           /* TID 0x5fe */
   832 ms  SECKEY_ECParamsToKeySize()
   832 ms  0x5fe ret:0x100
   832 ms  0x5fe SECKEY_CreateECPrivateKey()
   832 ms  0x5fe cx:0x7fbdd82ec7e8
   833 ms     | 0x5fe EC_ValidatePublicKey()
   835 ms     | 0x5fe ret:0x0
   835 ms  0x5fe ret:0x7fbdc746d820::7fbdc746d820  e0 f7 10 c7                                      ....
   835 ms  0x5fe PK11_PubDeriveWithKDF()
   835 ms  0x5fe seckey:0x7fbdc746d820
   835 ms     | 0x5fe EC_ValidatePublicKey()
   837 ms     | 0x5fe ret:0x0
   839 ms  0x5fe ret:0x7fbdd94f9f00
   839 ms  0x5fe PK11_DeriveWithFlags()
   839 ms  0x5fe basekey:0x7fbdd94f9f00
   839 ms     | 0x5fe PK11_DeriveWithTemplate()
   839 ms  0x5fe ret:0x7fbdc74fda00
   839 ms  0x5fe PK11_Derive()
   839 ms  0x5fe basekey:0x7fbdc74fda00
   839 ms     | 0x5fe PK11_DeriveWithTemplate()
   839 ms  0x5fe ret:0x7fbdc74fdb00
   839 ms  0x5fe SECKEY_DestroyPrivateKey()
   839 ms  0x5fe privk:0x7fbdc746d820::7fbdc746d820  e0 f7 10 c7                                      ....
   839 ms  0x5fe privk:0x7fbdc746d820::7fbdc746d820  e5 e5 e5 e5                                      ....
   840 ms  0x5fe PK11_Encrypt()
   840 ms  0x5fe symkey:0x7fbdc74fdc80
   840 ms  0x5fe PR_Connect()
   840 ms  0x5fe fd:0x7fbdc7132070
           /* TID 0x65d */
   892 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   893 ms  0x65d ret:0x0
           /* TID 0x606 */
   893 ms  0x606 PR_Close()
   893 ms  0x606 fd:0x7fbdc71320a0
           /* TID 0x5fe */
   894 ms  0x5fe SSL_AuthCertificateComplete()
   894 ms  0x5fe fd:0x7fbdd82f49d0
   894 ms  0x5fe err:0x0
   894 ms  0x5fe PK11_Encrypt()
   894 ms  0x5fe symkey:0x7fbdc74fdc80
  1047 ms  0x5fe SECKEY_DestroyPrivateKey()
  1047 ms  0x5fe privk:0x7fbdc7464820::7fbdc7464820  60 9a 4c c7                                      `.L.
  1048 ms  0x5fe privk:0x7fbdc7464820::7fbdc7464820  e5 e5 e5 e5                                      ....
  1048 ms  0x5fe SECKEY_DestroyPrivateKey()
  1048 ms  0x5fe privk:0x7fbdc7462820::7fbdc7462820  a0 9b 4c c7                                      ..L.
  1048 ms  0x5fe privk:0x7fbdc7462820::7fbdc7462820  e5 e5 e5 e5                                      ....
  1261 ms  0x5fe SSL_ImportFD()
  1261 ms  0x5fe ret:0x7fbdc71321c0
  1261 ms  0x5fe SSL_AuthCertificateHook()
  1261 ms  0x5fe fd:0x7fbdc71321c0
  1261 ms  0x5fe ret:0x0
  1261 ms  0x5fe PR_Connect()
  1261 ms  0x5fe fd:0x7fbdc71321c0
  1289 ms  0x5fe SECKEY_CreateECPrivateKey()
  1289 ms  0x5fe cx:0x7fbdc710b728
  1290 ms     | 0x5fe EC_ValidatePublicKey()
  1290 ms     | 0x5fe ret:0x0
  1290 ms  0x5fe ret:0x7fbdc7464020::7fbdc7464020  e0 f7 10 c7                                      ....
  1290 ms  0x5fe SECKEY_CreateECPrivateKey()
  1290 ms  0x5fe cx:0x7fbdc710b728
  1291 ms     | 0x5fe EC_ValidatePublicKey()
  1293 ms     | 0x5fe ret:0x0
  1293 ms  0x5fe ret:0x7fbdc746a020::7fbdc746a020  c0 f9 10 c7                                      ....
           /* TID 0x65d */
  1344 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1345 ms  0x65d ret:0x0
           /* TID 0x5fe */
  1345 ms  SECKEY_ECParamsToKeySize()
  1345 ms  0x5fe ret:0x100
  1345 ms  0x5fe SECKEY_CreateECPrivateKey()
  1345 ms  0x5fe cx:0x7fbdc710b728
  1345 ms     | 0x5fe EC_ValidatePublicKey()
  1347 ms     | 0x5fe ret:0x0
  1347 ms  0x5fe ret:0x7fbdc746d820::7fbdc746d820  40 fc 10 c7                                      @...
  1347 ms  0x5fe PK11_PubDeriveWithKDF()
  1347 ms  0x5fe seckey:0x7fbdc746d820
  1347 ms     | 0x5fe EC_ValidatePublicKey()
  1349 ms     | 0x5fe ret:0x0
  1350 ms  0x5fe ret:0x7fbdd94f9f00
  1350 ms  0x5fe PK11_DeriveWithFlags()
  1350 ms  0x5fe basekey:0x7fbdd94f9f00
  1351 ms     | 0x5fe PK11_DeriveWithTemplate()
  1351 ms  0x5fe ret:0x7fbdc74fe800
  1351 ms  0x5fe PK11_Derive()
  1351 ms  0x5fe basekey:0x7fbdc74fe800
  1351 ms     | 0x5fe PK11_DeriveWithTemplate()
  1351 ms  0x5fe ret:0x7fbdc74fe880
  1351 ms  0x5fe SECKEY_DestroyPrivateKey()
  1351 ms  0x5fe privk:0x7fbdc746d820::7fbdc746d820  40 fc 10 c7                                      @...
  1351 ms  0x5fe privk:0x7fbdc746d820::7fbdc746d820  e5 e5 e5 e5                                      ....
  1351 ms  0x5fe PK11_Encrypt()
  1351 ms  0x5fe symkey:0x7fbdc74fea00
  1351 ms  0x5fe SSL_AuthCertificateComplete()
  1351 ms  0x5fe fd:0x7fbdc71321c0
  1351 ms  0x5fe err:0x0
  1351 ms  0x5fe PK11_Encrypt()
  1351 ms  0x5fe symkey:0x7fbdc74fea00
  1404 ms  0x5fe SECKEY_DestroyPrivateKey()
  1404 ms  0x5fe privk:0x7fbdc746a020::7fbdc746a020  c0 f9 10 c7                                      ....
  1405 ms  0x5fe privk:0x7fbdc746a020::7fbdc746a020  e5 e5 e5 e5                                      ....
  1405 ms  0x5fe SECKEY_DestroyPrivateKey()
  1405 ms  0x5fe privk:0x7fbdc7464020::7fbdc7464020  e0 f7 10 c7                                      ....
  1405 ms  0x5fe privk:0x7fbdc7464020::7fbdc7464020  e5 e5 e5 e5                                      ....
  1408 ms  0x5fe PK11_Encrypt()
  1408 ms  0x5fe symkey:0x7fbdc74fea00
  1438 ms  0x5fe PK11_Encrypt()
  1438 ms  0x5fe symkey:0x7fbdc74fea00
  1467 ms  0x5fe PK11_Encrypt()
  1467 ms  0x5fe symkey:0x7fbdc74fea00
  1497 ms  0x5fe PK11_Encrypt()
  1497 ms  0x5fe symkey:0x7fbdc74fea00
  1611 ms  0x5fe PK11_Encrypt()
  1611 ms  0x5fe symkey:0x7fbdc74fea00
  1643 ms  0x5fe PK11_Encrypt()
  1643 ms  0x5fe symkey:0x7fbdc74fea00
  1674 ms  0x5fe PK11_Encrypt()
  1674 ms  0x5fe symkey:0x7fbdc74fea00
           /* TID 0x651 */
  1702 ms  0x651 PR_Close()
  1702 ms  0x651 fd:0x7fbdc71323d0
  1702 ms  0x651 PR_Close()
  1702 ms  0x651 fd:0x7fbdc7132430
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc71323d0
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc7132430
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc71323d0
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc7132430
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc71323d0
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc7132430
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc71323d0
  1703 ms  0x651 PR_Close()
  1703 ms  0x651 fd:0x7fbdc7132430
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc71323d0
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc7132430
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc71323d0
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc7132430
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc71323d0
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc7132430
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc71323d0
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc7132430
  1704 ms  0x651 PR_Close()
  1704 ms  0x651 fd:0x7fbdc71321f0
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc7132400
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc71321f0
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc7132400
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc71321f0
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc7132400
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc71321f0
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc7132400
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc71321f0
  1705 ms  0x651 PR_Close()
  1705 ms  0x651 fd:0x7fbdc7132400
  1709 ms  0x651 PR_Close()
  1709 ms  0x651 fd:0x7fbdc71321f0
  1709 ms  0x651 PR_Close()
  1709 ms  0x651 fd:0x7fbdc71323d0
  1712 ms  0x651 PR_Close()
  1712 ms  0x651 fd:0x7fbdc71323d0
  1712 ms  0x651 PR_Close()
  1712 ms  0x651 fd:0x7fbdc7132400
  1715 ms  0x651 PR_Close()
  1715 ms  0x651 fd:0x7fbdc7132400
  1715 ms  0x651 PR_Close()
  1715 ms  0x651 fd:0x7fbdc7132400
  1718 ms  0x651 PR_Close()
  1718 ms  0x651 fd:0x7fbdc7132400
  1718 ms  0x651 PR_Close()
  1718 ms  0x651 fd:0x7fbdc7132400
  1766 ms  0x651 PR_Close()
  1766 ms  0x651 fd:0x7fbdc7132400
  1767 ms  0x651 PR_Close()
  1767 ms  0x651 fd:0x7fbdc7132400
  1774 ms  0x651 PR_Close()
  1774 ms  0x651 fd:0x7fbdc7132400
  1774 ms  0x651 PR_Close()
  1774 ms  0x651 fd:0x7fbdc7132400
  1780 ms  0x651 PR_Close()
  1780 ms  0x651 fd:0x7fbdc7132400
  1781 ms  0x651 PR_Close()
  1781 ms  0x651 fd:0x7fbdc7132400
  1783 ms  0x651 PR_Close()
  1783 ms  0x651 fd:0x7fbdc7132400
  1783 ms  0x651 PR_Close()
  1783 ms  0x651 fd:0x7fbdc7132400
           /* TID 0x64e */
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
  1783 ms  0x64e PR_Close()
  1783 ms  0x64e fd:0x7fbdc7132400
           /* TID 0x60b */
  2287 ms  0x60b PR_Close()
  2287 ms  0x60b fd:0x7fbdc7132790
  2314 ms  0x60b PR_Close()
  2314 ms  0x60b fd:0x7fbdc7132790
  2844 ms  0x60b PR_Close()
  2844 ms  0x60b fd:0x7fbdc7132790
           /* TID 0x606 */
  4172 ms  0x606 PR_Close()
  4172 ms  0x606 fd:0x7fbdc7132790
  4172 ms  0x606 PR_Close()
  4172 ms  0x606 fd:0x7fbdc71328e0
           /* TID 0x5fe */
  4677 ms  0x5fe SSL_ImportFD()
  4677 ms  0x5fe ret:0x7fbdc70f9ac0
  4677 ms  0x5fe SSL_AuthCertificateHook()
  4677 ms  0x5fe fd:0x7fbdc70f9ac0
  4677 ms  0x5fe ret:0x0
  4677 ms  0x5fe PR_Connect()
  4677 ms  0x5fe fd:0x7fbdc70f9ac0
  4724 ms  0x5fe SECKEY_CreateECPrivateKey()
  4724 ms  0x5fe cx:0x7fbdc710ba68
  4726 ms     | 0x5fe EC_ValidatePublicKey()
  4726 ms     | 0x5fe ret:0x0
  4726 ms  0x5fe ret:0x7fbde3098820::7fbde3098820  40 e7 d0 d8                                      @...
  4726 ms  0x5fe SECKEY_CreateECPrivateKey()
  4726 ms  0x5fe cx:0x7fbdc710ba68
  4729 ms     | 0x5fe EC_ValidatePublicKey()
  4734 ms     | 0x5fe ret:0x0
  4734 ms  0x5fe ret:0x7fbdc6f04020::7fbdc6f04020  20 e9 d0 d8                                       ...
           /* TID 0x65d */
  4785 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4785 ms  0x65d ret:0x0
  4785 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4785 ms  0x65d ret:0x0
           /* TID 0x5fe */
  4786 ms  SECKEY_ECParamsToKeySize()
  4786 ms  0x5fe ret:0xff
  4786 ms  0x5fe SECKEY_CreateECPrivateKey()
  4786 ms  0x5fe cx:0x7fbdc710ba68
  4787 ms     | 0x5fe EC_ValidatePublicKey()
  4787 ms     | 0x5fe ret:0x0
  4787 ms  0x5fe ret:0x7fbdc6f11820::7fbdc6f11820  60 60 f5 c6                                      ``..
  4787 ms  0x5fe PK11_PubDeriveWithKDF()
  4787 ms  0x5fe seckey:0x7fbdc6f11820
  4787 ms     | 0x5fe EC_ValidatePublicKey()
  4787 ms     | 0x5fe ret:0x0
  4787 ms  0x5fe ret:0x7fbdd94f9f00
  4788 ms  0x5fe PK11_DeriveWithFlags()
  4788 ms  0x5fe basekey:0x7fbdd94f9f00
  4788 ms     | 0x5fe PK11_DeriveWithTemplate()
  4788 ms  0x5fe ret:0x7fbdc70e2180
  4788 ms  0x5fe PK11_Derive()
  4788 ms  0x5fe basekey:0x7fbdc70e2180
  4788 ms     | 0x5fe PK11_DeriveWithTemplate()
  4788 ms  0x5fe ret:0x7fbdc70e2200
  4788 ms  0x5fe SECKEY_DestroyPrivateKey()
  4788 ms  0x5fe privk:0x7fbdc6f11820::7fbdc6f11820  60 60 f5 c6                                      ``..
  4788 ms  0x5fe privk:0x7fbdc6f11820::7fbdc6f11820  e5 e5 e5 e5                                      ....
  4788 ms  0x5fe PK11_Encrypt()
  4788 ms  0x5fe symkey:0x7fbdc70e2380
  4791 ms  0x5fe SSL_AuthCertificateComplete()
  4791 ms  0x5fe fd:0x7fbdc70f9ac0
  4791 ms  0x5fe err:0x0
  4792 ms  0x5fe PK11_Encrypt()
  4792 ms  0x5fe symkey:0x7fbdc70e2380
  4792 ms  0x5fe PK11_Encrypt()
  4792 ms  0x5fe symkey:0x7fbdc70e2380
  4834 ms  0x5fe SECKEY_DestroyPrivateKey()
  4834 ms  0x5fe privk:0x7fbdc6f04020::7fbdc6f04020  20 e9 d0 d8                                       ...
  4835 ms  0x5fe privk:0x7fbdc6f04020::7fbdc6f04020  e5 e5 e5 e5                                      ....
  4837 ms  0x5fe SECKEY_DestroyPrivateKey()
  4837 ms  0x5fe privk:0x7fbde3098820::7fbde3098820  40 e7 d0 d8                                      @...
  4837 ms  0x5fe privk:0x7fbde3098820::7fbde3098820  e5 e5 e5 e5                                      ....
  4837 ms  0x5fe PK11_Encrypt()
  4837 ms  0x5fe symkey:0x7fbdc70e2380
           /* TID 0x615 */
  4926 ms  0x615 PR_Close()
  4926 ms  0x615 fd:0x7fbdc70a31c0
           /* TID 0x5fe */
  5030 ms  0x5fe SSL_ImportFD()
  5030 ms  0x5fe ret:0x7fbdc6dc5c70
  5030 ms  0x5fe SSL_AuthCertificateHook()
  5030 ms  0x5fe fd:0x7fbdc6dc5c70
  5030 ms  0x5fe ret:0x0
  5030 ms  0x5fe PR_Connect()
  5030 ms  0x5fe fd:0x7fbdc6dc5c70
  5031 ms  0x5fe SSL_ImportFD()
  5031 ms  0x5fe ret:0x7fbdc6dc5ca0
  5031 ms  0x5fe SSL_AuthCertificateHook()
  5031 ms  0x5fe fd:0x7fbdc6dc5ca0
  5031 ms  0x5fe ret:0x0
  5031 ms  0x5fe PR_Connect()
  5031 ms  0x5fe fd:0x7fbdc6dc5ca0
  5031 ms  0x5fe SSL_ImportFD()
  5031 ms  0x5fe ret:0x7fbdc6dc5c10
  5031 ms  0x5fe SSL_AuthCertificateHook()
  5031 ms  0x5fe fd:0x7fbdc6dc5c10
  5031 ms  0x5fe ret:0x0
  5031 ms  0x5fe PR_Connect()
  5031 ms  0x5fe fd:0x7fbdc6dc5c10
  5064 ms  0x5fe SSL_ImportFD()
  5065 ms  0x5fe ret:0x7fbdc6dc5a90
  5065 ms  0x5fe SSL_AuthCertificateHook()
  5065 ms  0x5fe fd:0x7fbdc6dc5a90
  5065 ms  0x5fe ret:0x0
  5065 ms  0x5fe PR_Connect()
  5065 ms  0x5fe fd:0x7fbdc6dc5a90
  5068 ms  0x5fe SECKEY_CreateECPrivateKey()
  5068 ms  0x5fe cx:0x7fbdc710c288
  5069 ms     | 0x5fe EC_ValidatePublicKey()
  5069 ms     | 0x5fe ret:0x0
  5069 ms  0x5fe ret:0x7fbdc6de0820::7fbdc6de0820  50 3b 06 c7                                      P;..
  5070 ms  0x5fe SECKEY_CreateECPrivateKey()
  5070 ms  0x5fe cx:0x7fbdc710c288
  5071 ms     | 0x5fe EC_ValidatePublicKey()
  5075 ms     | 0x5fe ret:0x0
  5075 ms  0x5fe ret:0x7fbdc6de2820::7fbdc6de2820  30 3d 06 c7                                      0=..
  5077 ms  0x5fe SECKEY_CreateECPrivateKey()
  5077 ms  0x5fe cx:0x7fbdc710c0e8
  5078 ms     | 0x5fe EC_ValidatePublicKey()
  5078 ms     | 0x5fe ret:0x0
  5078 ms  0x5fe ret:0x7fbdc6de5020::7fbdc6de5020  70 39 06 c7                                      p9..
  5078 ms  0x5fe SECKEY_CreateECPrivateKey()
  5078 ms  0x5fe cx:0x7fbdc710c0e8
  5080 ms     | 0x5fe EC_ValidatePublicKey()
  5083 ms     | 0x5fe ret:0x0
  5083 ms  0x5fe ret:0x7fbdc6de7020::7fbdc6de7020  10 3f 06 c7                                      .?..
  5088 ms  0x5fe SECKEY_CreateECPrivateKey()
  5088 ms  0x5fe cx:0x7fbdc710c5c8
  5089 ms     | 0x5fe EC_ValidatePublicKey()
  5089 ms     | 0x5fe ret:0x0
  5089 ms  0x5fe ret:0x7fbde23db020::7fbde23db020  b0 40 17 c7                                      .@..
  5089 ms  0x5fe SECKEY_CreateECPrivateKey()
  5089 ms  0x5fe cx:0x7fbdc710c5c8
  5091 ms     | 0x5fe EC_ValidatePublicKey()
  5094 ms     | 0x5fe ret:0x0
  5094 ms  0x5fe ret:0x7fbdc717a820::7fbdc717a820  90 42 17 c7                                      .B..
  5110 ms  0x5fe SSL_ImportFD()
  5110 ms  0x5fe ret:0x7fbdc6dc5e20
  5110 ms  0x5fe SSL_AuthCertificateHook()
  5110 ms  0x5fe fd:0x7fbdc6dc5e20
  5110 ms  0x5fe ret:0x0
  5110 ms  0x5fe PR_Connect()
  5110 ms  0x5fe fd:0x7fbdc6dc5e20
  5111 ms  0x5fe SSL_ImportFD()
  5111 ms  0x5fe ret:0x7fbdc6dc5550
  5111 ms  0x5fe SSL_AuthCertificateHook()
  5111 ms  0x5fe fd:0x7fbdc6dc5550
  5111 ms  0x5fe ret:0x0
  5111 ms  0x5fe PR_Connect()
  5111 ms  0x5fe fd:0x7fbdc6dc5550
  5112 ms  0x5fe SSL_ImportFD()
  5112 ms  0x5fe ret:0x7fbdc6decf10
  5112 ms  0x5fe SSL_AuthCertificateHook()
  5112 ms  0x5fe fd:0x7fbdc6decf10
  5113 ms  0x5fe ret:0x0
  5114 ms  0x5fe PR_Connect()
  5114 ms  0x5fe fd:0x7fbdc6decf10
  5115 ms  0x5fe SSL_ImportFD()
  5115 ms  0x5fe ret:0x7fbdc6dc5310
  5115 ms  0x5fe SSL_AuthCertificateHook()
  5115 ms  0x5fe fd:0x7fbdc6dc5310
  5115 ms  0x5fe ret:0x0
  5115 ms  0x5fe PR_Connect()
  5115 ms  0x5fe fd:0x7fbdc6dc5310
  5115 ms  0x5fe SSL_ImportFD()
  5115 ms  0x5fe ret:0x7fbdc6dc55b0
  5115 ms  0x5fe SSL_AuthCertificateHook()
  5115 ms  0x5fe fd:0x7fbdc6dc55b0
  5115 ms  0x5fe ret:0x0
  5115 ms  0x5fe PR_Connect()
  5115 ms  0x5fe fd:0x7fbdc6dc55b0
  5116 ms  0x5fe SSL_ImportFD()
  5116 ms  0x5fe ret:0x7fbdc6dec820
  5116 ms  0x5fe SSL_AuthCertificateHook()
  5116 ms  0x5fe fd:0x7fbdc6dec820
  5116 ms  0x5fe ret:0x0
  5116 ms  0x5fe PR_Connect()
  5116 ms  0x5fe fd:0x7fbdc6dec820
  5116 ms  0x5fe SSL_ImportFD()
  5116 ms  0x5fe ret:0x7fbdc6dec850
  5116 ms  0x5fe SSL_AuthCertificateHook()
  5116 ms  0x5fe fd:0x7fbdc6dec850
  5116 ms  0x5fe ret:0x0
  5117 ms  0x5fe PR_Connect()
  5117 ms  0x5fe fd:0x7fbdc6dec850
           /* TID 0x65d */
  5118 ms  SECKEY_ECParamsToBasePointOrderLen()
  5118 ms  0x65d ret:0x180
  5118 ms  SECKEY_ECParamsToBasePointOrderLen()
  5118 ms  0x65d ret:0x180
  5118 ms  0x65d EC_ValidatePublicKey()
           /* TID 0x5fe */
  5121 ms  SECKEY_ECParamsToKeySize()
  5121 ms  0x5fe ret:0x100
  5121 ms  SECKEY_ECParamsToBasePointOrderLen()
  5121 ms  0x5fe ret:0x100
  5121 ms  SECKEY_ECParamsToBasePointOrderLen()
  5121 ms  0x5fe ret:0x100
           /* TID 0x65d */
  5121 ms  0x65d ret:0x0
  5125 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5125 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5125 ms     | 0x65d ret:0x180
  5125 ms     | SECKEY_ECParamsToBasePointOrderLen()
  5125 ms     | 0x65d ret:0x180
  5125 ms     | 0x65d EC_ValidatePublicKey()
  5127 ms     | 0x65d ret:0x0
           /* TID 0x5fe */
  5127 ms  0x5fe EC_ValidatePublicKey()
  5129 ms  0x5fe ret:0x0
  5135 ms  SECKEY_ECParamsToKeySize()
  5135 ms  0x5fe ret:0x100
  5135 ms  0x5fe SECKEY_CreateECPrivateKey()
  5135 ms  0x5fe cx:0x7fbdc710c288
  5135 ms     | 0x5fe EC_ValidatePublicKey()
  5137 ms     | 0x5fe ret:0x0
  5137 ms  0x5fe ret:0x7fbdc7184820::7fbdc7184820  c0 49 17 c7                                      .I..
  5137 ms  0x5fe PK11_PubDeriveWithKDF()
  5137 ms  0x5fe seckey:0x7fbdc7184820
  5138 ms     | 0x5fe EC_ValidatePublicKey()
  5139 ms     | 0x5fe ret:0x0
  5141 ms  0x5fe ret:0x7fbdd94f9f00
  5141 ms  0x5fe PK11_DeriveWithFlags()
  5141 ms  0x5fe basekey:0x7fbdd94f9f00
  5141 ms     | 0x5fe PK11_DeriveWithTemplate()
  5141 ms  0x5fe ret:0x7fbdc7155b80
  5141 ms  0x5fe PK11_Derive()
  5141 ms  0x5fe basekey:0x7fbdc7155b80
  5141 ms     | 0x5fe PK11_DeriveWithTemplate()
  5141 ms  0x5fe ret:0x7fbdc7155c00
  5141 ms  0x5fe SECKEY_DestroyPrivateKey()
  5141 ms  0x5fe privk:0x7fbdc7184820::7fbdc7184820  c0 49 17 c7                                      .I..
  5141 ms  0x5fe privk:0x7fbdc7184820::7fbdc7184820  e5 e5 e5 e5                                      ....
  5141 ms  0x5fe PK11_Encrypt()
  5141 ms  0x5fe symkey:0x7fbdc7155d80
           /* TID 0x65d */
  5144 ms  0x65d ret:0x0
           /* TID 0x5fe */
  5145 ms  SECKEY_ECParamsToKeySize()
  5145 ms  0x5fe ret:0x100
  5145 ms  SECKEY_ECParamsToBasePointOrderLen()
  5145 ms  0x5fe ret:0x100
  5145 ms  SECKEY_ECParamsToBasePointOrderLen()
  5145 ms  0x5fe ret:0x100
  5145 ms  0x5fe EC_ValidatePublicKey()
  5148 ms  0x5fe ret:0x0
  5151 ms  SECKEY_ECParamsToKeySize()
  5151 ms  0x5fe ret:0x100
  5151 ms  0x5fe SECKEY_CreateECPrivateKey()
  5151 ms  0x5fe cx:0x7fbdc710c5c8
  5151 ms     | 0x5fe EC_ValidatePublicKey()
  5155 ms     | 0x5fe ret:0x0
  5155 ms  0x5fe ret:0x7fbdc7184020::7fbdc7184020  e0 4c 17 c7                                      .L..
  5155 ms  0x5fe PK11_PubDeriveWithKDF()
  5155 ms  0x5fe seckey:0x7fbdc7184020
  5155 ms     | 0x5fe EC_ValidatePublicKey()
  5157 ms     | 0x5fe ret:0x0
  5158 ms  0x5fe ret:0x7fbdd94f9f00
  5158 ms  0x5fe PK11_DeriveWithFlags()
  5158 ms  0x5fe basekey:0x7fbdd94f9f00
  5158 ms     | 0x5fe PK11_DeriveWithTemplate()
  5158 ms  0x5fe ret:0x7fbdc7012600
  5158 ms  0x5fe PK11_Derive()
  5158 ms  0x5fe basekey:0x7fbdc7012600
  5158 ms     | 0x5fe PK11_DeriveWithTemplate()
  5158 ms  0x5fe ret:0x7fbdc70e1680
  5158 ms  0x5fe SECKEY_DestroyPrivateKey()
  5158 ms  0x5fe privk:0x7fbdc7184020::7fbdc7184020  e0 4c 17 c7                                      .L..
  5158 ms  0x5fe privk:0x7fbdc7184020::7fbdc7184020  e5 e5 e5 e5                                      ....
  5159 ms  0x5fe PK11_Encrypt()
  5159 ms  0x5fe symkey:0x7fbdc70e1980
  5159 ms  SECKEY_ECParamsToKeySize()
  5159 ms  0x5fe ret:0x100
  5159 ms  SECKEY_ECParamsToBasePointOrderLen()
  5159 ms  0x5fe ret:0x100
  5159 ms  SECKEY_ECParamsToBasePointOrderLen()
  5159 ms  0x5fe ret:0x100
  5159 ms  0x5fe EC_ValidatePublicKey()
  5160 ms  0x5fe ret:0x0
  5162 ms  SECKEY_ECParamsToKeySize()
  5162 ms  0x5fe ret:0x100
  5162 ms  0x5fe SECKEY_CreateECPrivateKey()
  5162 ms  0x5fe cx:0x7fbdc710c0e8
  5163 ms     | 0x5fe EC_ValidatePublicKey()
  5164 ms     | 0x5fe ret:0x0
  5164 ms  0x5fe ret:0x7fbdc7186820::7fbdc7186820  70 4e 17 c7                                      pN..
  5164 ms  0x5fe PK11_PubDeriveWithKDF()
  5164 ms  0x5fe seckey:0x7fbdc7186820
  5164 ms     | 0x5fe EC_ValidatePublicKey()
  5166 ms     | 0x5fe ret:0x0
  5168 ms  0x5fe ret:0x7fbdd94f9f00
  5168 ms  0x5fe PK11_DeriveWithFlags()
  5168 ms  0x5fe basekey:0x7fbdd94f9f00
  5168 ms     | 0x5fe PK11_DeriveWithTemplate()
  5168 ms  0x5fe ret:0x7fbdc7155f80
  5168 ms  0x5fe PK11_Derive()
  5168 ms  0x5fe basekey:0x7fbdc7155f80
  5168 ms     | 0x5fe PK11_DeriveWithTemplate()
  5168 ms  0x5fe ret:0x7fbdc7156000
  5168 ms  0x5fe SECKEY_DestroyPrivateKey()
  5168 ms  0x5fe privk:0x7fbdc7186820::7fbdc7186820  70 4e 17 c7                                      pN..
  5168 ms  0x5fe privk:0x7fbdc7186820::7fbdc7186820  e5 e5 e5 e5                                      ....
  5168 ms  0x5fe PK11_Encrypt()
  5168 ms  0x5fe symkey:0x7fbdc7156180
  5169 ms  0x5fe SECKEY_CreateECPrivateKey()
  5169 ms  0x5fe cx:0x7fbdc710c768
  5169 ms     | 0x5fe EC_ValidatePublicKey()
  5169 ms     | 0x5fe ret:0x0
  5169 ms  0x5fe ret:0x7fbdc7186820::7fbdc7186820  e0 4c 17 c7                                      .L..
  5169 ms  0x5fe SECKEY_CreateECPrivateKey()
  5169 ms  0x5fe cx:0x7fbdc710c768
  5170 ms     | 0x5fe EC_ValidatePublicKey()
  5171 ms     | 0x5fe ret:0x0
  5171 ms  0x5fe ret:0x7fbdc7189020::7fbdc7189020  f0 e1 d0 d8                                      ....
  5174 ms  0x5fe SECKEY_CreateECPrivateKey()
  5174 ms  0x5fe cx:0x7fbdc710cf88
  5174 ms     | 0x5fe EC_ValidatePublicKey()
  5174 ms     | 0x5fe ret:0x0
  5174 ms  0x5fe ret:0x7fbdc718c020::7fbdc718c020  e0 62 b2 c6                                      .b..
  5174 ms  0x5fe SECKEY_CreateECPrivateKey()
  5174 ms  0x5fe cx:0x7fbdc710cf88
  5175 ms     | 0x5fe EC_ValidatePublicKey()
  5177 ms     | 0x5fe ret:0x0
  5177 ms  0x5fe ret:0x7fbdc718e020::7fbdc718e020  60 65 b2 c6                                      `e..
  5177 ms  0x5fe SECKEY_CreateECPrivateKey()
  5177 ms  0x5fe cx:0x7fbdc710c908
  5178 ms     | 0x5fe EC_ValidatePublicKey()
  5178 ms     | 0x5fe ret:0x0
  5178 ms  0x5fe ret:0x7fbdc7190820::7fbdc7190820  a0 66 b2 c6                                      .f..
  5178 ms  0x5fe SECKEY_CreateECPrivateKey()
  5178 ms  0x5fe cx:0x7fbdc710c908
  5178 ms     | 0x5fe EC_ValidatePublicKey()
  5180 ms     | 0x5fe ret:0x0
  5180 ms  0x5fe ret:0x7fbdc7192820::7fbdc7192820  80 68 b2 c6                                      .h..
  5180 ms  0x5fe SECKEY_CreateECPrivateKey()
  5180 ms  0x5fe cx:0x7fbdc710d7a8
  5181 ms     | 0x5fe EC_ValidatePublicKey()
  5181 ms     | 0x5fe ret:0x0
  5181 ms  0x5fe ret:0x7fbdc7195020::7fbdc7195020  c0 69 b2 c6                                      .i..
  5181 ms  0x5fe SECKEY_CreateECPrivateKey()
  5181 ms  0x5fe cx:0x7fbdc710d7a8
  5181 ms     | 0x5fe EC_ValidatePublicKey()
  5183 ms     | 0x5fe ret:0x0
  5183 ms  0x5fe ret:0x7fbdc7197020::7fbdc7197020  a0 6b b2 c6                                      .k..
  5183 ms  0x5fe SECKEY_CreateECPrivateKey()
  5183 ms  0x5fe cx:0x7fbdc710d608
  5184 ms     | 0x5fe EC_ValidatePublicKey()
  5184 ms     | 0x5fe ret:0x0
  5184 ms  0x5fe ret:0x7fbdc6b30820::7fbdc6b30820  e0 6c b2 c6                                      .l..
  5184 ms  0x5fe SECKEY_CreateECPrivateKey()
  5184 ms  0x5fe cx:0x7fbdc710d608
  5184 ms     | 0x5fe EC_ValidatePublicKey()
  5186 ms     | 0x5fe ret:0x0
  5186 ms  0x5fe ret:0x7fbdc6b32820::7fbdc6b32820  c0 6e b2 c6                                      .n..
  5186 ms  0x5fe SECKEY_CreateECPrivateKey()
  5186 ms  0x5fe cx:0x7fbdc710d468
  5187 ms     | 0x5fe EC_ValidatePublicKey()
  5187 ms     | 0x5fe ret:0x0
  5187 ms  0x5fe ret:0x7fbdc6b35020::7fbdc6b35020  d0 cd df c6                                      ....
  5187 ms  0x5fe SECKEY_CreateECPrivateKey()
  5187 ms  0x5fe cx:0x7fbdc710d468
  5187 ms     | 0x5fe EC_ValidatePublicKey()
  5189 ms     | 0x5fe ret:0x0
  5189 ms  0x5fe ret:0x7fbdc6b37020::7fbdc6b37020  80 4d 17 c7                                      .M..
  5189 ms  0x5fe SECKEY_CreateECPrivateKey()
  5189 ms  0x5fe cx:0x7fbdc710d2c8
  5190 ms     | 0x5fe EC_ValidatePublicKey()
  5190 ms     | 0x5fe ret:0x0
  5190 ms  0x5fe ret:0x7fbdc6b39820::7fbdc6b39820  00 51 b8 c6                                      .Q..
  5190 ms  0x5fe SECKEY_CreateECPrivateKey()
  5190 ms  0x5fe cx:0x7fbdc710d2c8
  5191 ms     | 0x5fe EC_ValidatePublicKey()
  5192 ms     | 0x5fe ret:0x0
  5192 ms  0x5fe ret:0x7fbdc6b3b820::7fbdc6b3b820  e0 52 b8 c6                                      .R..
  5193 ms  0x5fe SECKEY_CreateECPrivateKey()
  5193 ms  0x5fe cx:0x7fbdc710d128
  5193 ms     | 0x5fe EC_ValidatePublicKey()
  5193 ms     | 0x5fe ret:0x0
  5193 ms  0x5fe ret:0x7fbdc6b3e020::7fbdc6b3e020  20 54 b8 c6                                       T..
  5193 ms  0x5fe SECKEY_CreateECPrivateKey()
  5193 ms  0x5fe cx:0x7fbdc710d128
  5194 ms     | 0x5fe EC_ValidatePublicKey()
  5199 ms     | 0x5fe ret:0x0
  5199 ms  0x5fe ret:0x7fbdc6b40020::7fbdc6b40020  00 56 b8 c6                                      .V..
           /* TID 0x692 */
  6152 ms  SECKEY_ECParamsToBasePointOrderLen()
  6159 ms  0x692 ret:0x180
  6159 ms  SECKEY_ECParamsToBasePointOrderLen()
  6159 ms  0x692 ret:0x180
  6159 ms  0x692 EC_ValidatePublicKey()
  6164 ms  0x692 ret:0x0
           /* TID 0x693 */
  6167 ms  SECKEY_ECParamsToBasePointOrderLen()
           /* TID 0x5fe */
  6167 ms  SECKEY_ECParamsToKeySize()
  6167 ms  0x5fe ret:0x100
  6167 ms  0x5fe SECKEY_CreateECPrivateKey()
  6167 ms  0x5fe cx:0x7fbdc710cf88
  6169 ms     | 0x5fe EC_ValidatePublicKey()
  6173 ms     | 0x5fe ret:0x0
  6173 ms  0x5fe ret:0x7fbdc7184820::7fbdc7184820  f0 11 ba c6                                      ....
  6173 ms  0x5fe PK11_PubDeriveWithKDF()
  6173 ms  0x5fe seckey:0x7fbdc7184820
  6173 ms     | 0x5fe EC_ValidatePublicKey()
           /* TID 0x693 */
  6177 ms  0x693 ret:0x180
  6177 ms  SECKEY_ECParamsToBasePointOrderLen()
  6177 ms  0x693 ret:0x180
  6177 ms  0x693 EC_ValidatePublicKey()
  6181 ms  0x693 ret:0x0
           /* TID 0x65d */
  6187 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6187 ms  0x65d ret:0x0
  6187 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6187 ms  0x65d ret:0x0
           /* TID 0x692 */
  6191 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6191 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6191 ms     | 0x692 ret:0x180
  6191 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6191 ms     | 0x692 ret:0x180
  6191 ms     | 0x692 EC_ValidatePublicKey()
  6194 ms     | 0x692 ret:0x0
           /* TID 0x5fe */
  6197 ms     | 0x5fe ret:0x0
  6199 ms  0x5fe ret:0x7fbdd94f9f00
  6199 ms  0x5fe PK11_DeriveWithFlags()
  6199 ms  0x5fe basekey:0x7fbdd94f9f00
  6199 ms     | 0x5fe PK11_DeriveWithTemplate()
  6199 ms  0x5fe ret:0x7fbdc7156880
  6199 ms  0x5fe PK11_Derive()
  6199 ms  0x5fe basekey:0x7fbdc7156880
  6199 ms     | 0x5fe PK11_DeriveWithTemplate()
  6199 ms  0x5fe ret:0x7fbdc7156900
  6199 ms  0x5fe SECKEY_DestroyPrivateKey()
  6199 ms  0x5fe privk:0x7fbdc7184820::7fbdc7184820  f0 11 ba c6                                      ....
  6199 ms  0x5fe privk:0x7fbdc7184820::7fbdc7184820  e5 e5 e5 e5                                      ....
  6200 ms  0x5fe PK11_Encrypt()
  6200 ms  0x5fe symkey:0x7fbdc7156a80
           /* TID 0x693 */
  6200 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6200 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6200 ms     | 0x693 ret:0x180
  6200 ms     | SECKEY_ECParamsToBasePointOrderLen()
  6200 ms     | 0x693 ret:0x180
  6200 ms     | 0x693 EC_ValidatePublicKey()
  6202 ms     | 0x693 ret:0x0
  6205 ms  0x693 ret:0x0
           /* TID 0x5fe */
  6206 ms  0x5fe SSL_AuthCertificateComplete()
  6206 ms  0x5fe fd:0x7fbdc6dc5ca0
  6206 ms  0x5fe err:0x0
  6206 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  6206 ms     | 0x5fe privk:0x7fbdc6de2820::7fbdc6de2820  30 3d 06 c7                                      0=..
  6206 ms     | 0x5fe privk:0x7fbdc6de2820::7fbdc6de2820  e5 e5 e5 e5                                      ....
  6206 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  6206 ms     | 0x5fe privk:0x7fbdc6de0820::7fbdc6de0820  50 3b 06 c7                                      P;..
  6206 ms     | 0x5fe privk:0x7fbdc6de0820::7fbdc6de0820  e5 e5 e5 e5                                      ....
  6206 ms  0x5fe SSL_AuthCertificateComplete()
  6206 ms  0x5fe fd:0x7fbdc6dc5550
  6206 ms  0x5fe err:0x0
  6206 ms  0x5fe SSL_AuthCertificateComplete()
  6206 ms  0x5fe fd:0x7fbdc6dc5c70
  6206 ms  0x5fe err:0x0
  6206 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  6206 ms     | 0x5fe privk:0x7fbdc6de7020::7fbdc6de7020  10 3f 06 c7                                      .?..
  6206 ms     | 0x5fe privk:0x7fbdc6de7020::7fbdc6de7020  e5 e5 e5 e5                                      ....
  6206 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  6206 ms     | 0x5fe privk:0x7fbdc6de5020::7fbdc6de5020  70 39 06 c7                                      p9..
  6206 ms     | 0x5fe privk:0x7fbdc6de5020::7fbdc6de5020  e5 e5 e5 e5                                      ....
  6209 ms  0x5fe PK11_Encrypt()
  6209 ms  0x5fe symkey:0x7fbdc7155d80
  6210 ms  0x5fe PK11_Encrypt()
  6210 ms  0x5fe symkey:0x7fbdc7156180
           /* TID 0x65d */
  6211 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6211 ms  0x65d ret:0x0
  6211 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6211 ms  0x65d ret:0x0
           /* TID 0x5fe */
  6212 ms  SECKEY_ECParamsToKeySize()
  6212 ms  0x5fe ret:0x100
  6212 ms  0x5fe SECKEY_CreateECPrivateKey()
  6212 ms  0x5fe cx:0x7fbdc710c768
  6213 ms     | 0x5fe EC_ValidatePublicKey()
  6216 ms     | 0x5fe ret:0x0
  6216 ms  0x5fe ret:0x7fbdc717e820::7fbdc717e820  20 59 b8 c6                                       Y..
  6216 ms  0x5fe PK11_PubDeriveWithKDF()
  6216 ms  0x5fe seckey:0x7fbdc717e820
  6216 ms     | 0x5fe EC_ValidatePublicKey()
  6217 ms     | 0x5fe ret:0x0
  6219 ms  0x5fe ret:0x7fbdd94f9f00
  6219 ms  0x5fe PK11_DeriveWithFlags()
  6219 ms  0x5fe basekey:0x7fbdd94f9f00
  6219 ms     | 0x5fe PK11_DeriveWithTemplate()
  6219 ms  0x5fe ret:0x7fbdc6bf4200
  6219 ms  0x5fe PK11_Derive()
  6219 ms  0x5fe basekey:0x7fbdc6bf4200
  6219 ms     | 0x5fe PK11_DeriveWithTemplate()
  6219 ms  0x5fe ret:0x7fbdc6bf4280
  6219 ms  0x5fe SECKEY_DestroyPrivateKey()
  6219 ms  0x5fe privk:0x7fbdc717e820::7fbdc717e820  20 59 b8 c6                                       Y..
  6219 ms  0x5fe privk:0x7fbdc717e820::7fbdc717e820  e5 e5 e5 e5                                      ....
  6219 ms  0x5fe PK11_Encrypt()
  6219 ms  0x5fe symkey:0x7fbdc6bf4500
           /* TID 0x692 */
  6220 ms  0x692 ret:0x0
           /* TID 0x5fe */
  6221 ms  0x5fe PK11_Encrypt()
  6221 ms  0x5fe symkey:0x7fbdc7156a80
  6221 ms  0x5fe PK11_Encrypt()
  6221 ms  0x5fe symkey:0x7fbdc7156a80
           /* TID 0x693 */
  7224 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x5fe */
  7226 ms  SECKEY_ECParamsToKeySize()
  7226 ms  0x5fe ret:0x100
  7226 ms  0x5fe SECKEY_CreateECPrivateKey()
  7226 ms  0x5fe cx:0x7fbdc710c908
  7230 ms     | 0x5fe EC_ValidatePublicKey()
  7235 ms     | 0x5fe ret:0x0
  7235 ms  0x5fe ret:0x7fbdc6dd2020::7fbdc6dd2020  30 1d ba c6                                      0...
  7235 ms  0x5fe PK11_PubDeriveWithKDF()
  7235 ms  0x5fe seckey:0x7fbdc6dd2020
  7235 ms     | 0x5fe EC_ValidatePublicKey()
           /* TID 0x693 */
  7238 ms  0x693 ret:0x0
  7238 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7238 ms  0x693 ret:0x0
           /* TID 0x5fe */
  7242 ms     | 0x5fe ret:0x0
  7246 ms  0x5fe ret:0x7fbdd94f9f00
  7246 ms  0x5fe PK11_DeriveWithFlags()
  7246 ms  0x5fe basekey:0x7fbdd94f9f00
  7246 ms     | 0x5fe PK11_DeriveWithTemplate()
  7246 ms  0x5fe ret:0x7fbdc6bf5200
  7246 ms  0x5fe PK11_Derive()
  7246 ms  0x5fe basekey:0x7fbdc6bf5200
  7246 ms     | 0x5fe PK11_DeriveWithTemplate()
  7246 ms  0x5fe ret:0x7fbdc6bf5280
  7246 ms  0x5fe SECKEY_DestroyPrivateKey()
  7246 ms  0x5fe privk:0x7fbdc6dd2020::7fbdc6dd2020  30 1d ba c6                                      0...
  7247 ms  0x5fe privk:0x7fbdc6dd2020::7fbdc6dd2020  e5 e5 e5 e5                                      ....
  7247 ms  0x5fe PK11_Encrypt()
  7247 ms  0x5fe symkey:0x7fbdc6bf5400
           /* TID 0x692 */
  7251 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7251 ms  0x692 ret:0x0
  7251 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7251 ms  0x692 ret:0x0
           /* TID 0x5fe */
  7253 ms  SECKEY_ECParamsToKeySize()
  7253 ms  0x5fe ret:0x100
  7253 ms  0x5fe SECKEY_CreateECPrivateKey()
  7253 ms  0x5fe cx:0x7fbdc710d7a8
  7255 ms     | 0x5fe EC_ValidatePublicKey()
  7258 ms     | 0x5fe ret:0x0
  7258 ms  0x5fe ret:0x7fbdc6f1c020::7fbdc6f1c020  20 09 d3 c6                                       ...
  7259 ms  0x5fe PK11_PubDeriveWithKDF()
  7259 ms  0x5fe seckey:0x7fbdc6f1c020
  7259 ms     | 0x5fe EC_ValidatePublicKey()
  7263 ms     | 0x5fe ret:0x0
  7265 ms  0x5fe ret:0x7fbdd94f9f00
  7265 ms  0x5fe PK11_DeriveWithFlags()
  7265 ms  0x5fe basekey:0x7fbdd94f9f00
  7265 ms     | 0x5fe PK11_DeriveWithTemplate()
  7265 ms  0x5fe ret:0x7fbdc6bf5600
  7265 ms  0x5fe PK11_Derive()
  7265 ms  0x5fe basekey:0x7fbdc6bf5600
  7265 ms     | 0x5fe PK11_DeriveWithTemplate()
  7265 ms  0x5fe ret:0x7fbdc6bf5680
  7265 ms  0x5fe SECKEY_DestroyPrivateKey()
  7265 ms  0x5fe privk:0x7fbdc6f1c020::7fbdc6f1c020  20 09 d3 c6                                       ...
  7265 ms  0x5fe privk:0x7fbdc6f1c020::7fbdc6f1c020  e5 e5 e5 e5                                      ....
  7266 ms  0x5fe PK11_Encrypt()
  7266 ms  0x5fe symkey:0x7fbdc6bf5800
           /* TID 0x65d */
  7267 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7267 ms  0x65d ret:0x0
  7267 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7267 ms  0x65d ret:0x0
           /* TID 0x5fe */
  7268 ms  SECKEY_ECParamsToKeySize()
  7268 ms  0x5fe ret:0x100
  7268 ms  0x5fe SECKEY_CreateECPrivateKey()
  7268 ms  0x5fe cx:0x7fbdc710d608
  7269 ms     | 0x5fe EC_ValidatePublicKey()
  7270 ms     | 0x5fe ret:0x0
  7271 ms  0x5fe ret:0x7fbdc6de6820::7fbdc6de6820  a0 01 d3 c6                                      ....
  7271 ms  0x5fe PK11_PubDeriveWithKDF()
  7271 ms  0x5fe seckey:0x7fbdc6de6820
  7271 ms     | 0x5fe EC_ValidatePublicKey()
  7272 ms     | 0x5fe ret:0x0
  7274 ms  0x5fe ret:0x7fbdd94f9f00
  7274 ms  0x5fe PK11_DeriveWithFlags()
  7274 ms  0x5fe basekey:0x7fbdd94f9f00
  7274 ms     | 0x5fe PK11_DeriveWithTemplate()
  7274 ms  0x5fe ret:0x7fbdc6bf5900
  7274 ms  0x5fe PK11_Derive()
  7274 ms  0x5fe basekey:0x7fbdc6bf5900
  7274 ms     | 0x5fe PK11_DeriveWithTemplate()
  7274 ms  0x5fe ret:0x7fbdc6bf5980
  7274 ms  0x5fe SECKEY_DestroyPrivateKey()
  7274 ms  0x5fe privk:0x7fbdc6de6820::7fbdc6de6820  a0 01 d3 c6                                      ....
  7274 ms  0x5fe privk:0x7fbdc6de6820::7fbdc6de6820  e5 e5 e5 e5                                      ....
  7274 ms  0x5fe PK11_Encrypt()
  7274 ms  0x5fe symkey:0x7fbdc6bf5b00
           /* TID 0x693 */
  7276 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7276 ms  0x693 ret:0x0
  7276 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7276 ms  0x693 ret:0x0
           /* TID 0x5fe */
  7276 ms  SECKEY_ECParamsToKeySize()
  7276 ms  0x5fe ret:0x100
  7276 ms  0x5fe SECKEY_CreateECPrivateKey()
  7276 ms  0x5fe cx:0x7fbdc710d468
  7279 ms     | 0x5fe EC_ValidatePublicKey()
  7281 ms     | 0x5fe ret:0x0
  7281 ms  0x5fe ret:0x7fbdc6f03020::7fbdc6f03020  60 05 d3 c6                                      `...
  7281 ms  0x5fe PK11_PubDeriveWithKDF()
  7281 ms  0x5fe seckey:0x7fbdc6f03020
  7281 ms     | 0x5fe EC_ValidatePublicKey()
  7282 ms     | 0x5fe ret:0x0
  7284 ms  0x5fe ret:0x7fbdd94f9f00
  7284 ms  0x5fe PK11_DeriveWithFlags()
  7284 ms  0x5fe basekey:0x7fbdd94f9f00
  7284 ms     | 0x5fe PK11_DeriveWithTemplate()
  7284 ms  0x5fe ret:0x7fbdc6bf5c00
  7284 ms  0x5fe PK11_Derive()
  7284 ms  0x5fe basekey:0x7fbdc6bf5c00
  7284 ms     | 0x5fe PK11_DeriveWithTemplate()
  7284 ms  0x5fe ret:0x7fbdc6bf5c80
  7284 ms  0x5fe SECKEY_DestroyPrivateKey()
  7284 ms  0x5fe privk:0x7fbdc6f03020::7fbdc6f03020  60 05 d3 c6                                      `...
  7284 ms  0x5fe privk:0x7fbdc6f03020::7fbdc6f03020  e5 e5 e5 e5                                      ....
  7284 ms  0x5fe PK11_Encrypt()
  7284 ms  0x5fe symkey:0x7fbdc6bf5e00
           /* TID 0x692 */
  7285 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7286 ms  0x692 ret:0x0
  7286 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7286 ms  0x692 ret:0x0
           /* TID 0x5fe */
  7286 ms  SECKEY_ECParamsToKeySize()
  7286 ms  0x5fe ret:0x100
  7286 ms  0x5fe SECKEY_CreateECPrivateKey()
  7286 ms  0x5fe cx:0x7fbdc710d2c8
  7287 ms     | 0x5fe EC_ValidatePublicKey()
  7288 ms     | 0x5fe ret:0x0
  7288 ms  0x5fe ret:0x7fbdc717e820::7fbdc717e820  20 09 d3 c6                                       ...
  7288 ms  0x5fe PK11_PubDeriveWithKDF()
  7288 ms  0x5fe seckey:0x7fbdc717e820
  7288 ms     | 0x5fe EC_ValidatePublicKey()
  7289 ms     | 0x5fe ret:0x0
  7291 ms  0x5fe ret:0x7fbdd94f9f00
  7291 ms  0x5fe PK11_DeriveWithFlags()
  7291 ms  0x5fe basekey:0x7fbdd94f9f00
  7291 ms     | 0x5fe PK11_DeriveWithTemplate()
  7291 ms  0x5fe ret:0x7fbdc6bf5f00
  7291 ms  0x5fe PK11_Derive()
  7291 ms  0x5fe basekey:0x7fbdc6bf5f00
  7291 ms     | 0x5fe PK11_DeriveWithTemplate()
  7291 ms  0x5fe ret:0x7fbdc6bf5f80
  7291 ms  0x5fe SECKEY_DestroyPrivateKey()
  7291 ms  0x5fe privk:0x7fbdc717e820::7fbdc717e820  20 09 d3 c6                                       ...
  7291 ms  0x5fe privk:0x7fbdc717e820::7fbdc717e820  e5 e5 e5 e5                                      ....
  7291 ms  0x5fe PK11_Encrypt()
  7291 ms  0x5fe symkey:0x7fbdc6d8f300
           /* TID 0x65d */
  7292 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7292 ms  0x65d ret:0x0
  7292 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7292 ms  0x65d ret:0x0
           /* TID 0x5fe */
  7293 ms  SECKEY_ECParamsToKeySize()
  7293 ms  0x5fe ret:0x100
  7293 ms  0x5fe SECKEY_CreateECPrivateKey()
  7293 ms  0x5fe cx:0x7fbdc710d128
  7293 ms     | 0x5fe EC_ValidatePublicKey()
  7295 ms     | 0x5fe ret:0x0
  7295 ms  0x5fe ret:0x7fbdc7181020::7fbdc7181020  50 0b d3 c6                                      P...
  7295 ms  0x5fe PK11_PubDeriveWithKDF()
  7295 ms  0x5fe seckey:0x7fbdc7181020
  7295 ms     | 0x5fe EC_ValidatePublicKey()
  7296 ms     | 0x5fe ret:0x0
  7298 ms  0x5fe ret:0x7fbdd94f9f00
  7298 ms  0x5fe PK11_DeriveWithFlags()
  7298 ms  0x5fe basekey:0x7fbdd94f9f00
  7298 ms     | 0x5fe PK11_DeriveWithTemplate()
  7298 ms  0x5fe ret:0x7fbdc6d8f680
  7298 ms  0x5fe PK11_Derive()
  7298 ms  0x5fe basekey:0x7fbdc6d8f680
  7298 ms     | 0x5fe PK11_DeriveWithTemplate()
  7298 ms  0x5fe ret:0x7fbdc6dac580
  7298 ms  0x5fe SECKEY_DestroyPrivateKey()
  7298 ms  0x5fe privk:0x7fbdc7181020::7fbdc7181020  50 0b d3 c6                                      P...
  7298 ms  0x5fe privk:0x7fbdc7181020::7fbdc7181020  e5 e5 e5 e5                                      ....
  7298 ms  0x5fe PK11_Encrypt()
  7298 ms  0x5fe symkey:0x7fbdc6dadd80
  7298 ms  0x5fe SSL_AuthCertificateComplete()
  7298 ms  0x5fe fd:0x7fbdc6dc5c10
  7298 ms  0x5fe err:0x0
  7298 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  7298 ms     | 0x5fe privk:0x7fbdc717a820::7fbdc717a820  90 42 17 c7                                      .B..
  7298 ms     | 0x5fe privk:0x7fbdc717a820::7fbdc717a820  e5 e5 e5 e5                                      ....
  7298 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  7298 ms     | 0x5fe privk:0x7fbde23db020::7fbde23db020  b0 40 17 c7                                      .@..
  7298 ms     | 0x5fe privk:0x7fbde23db020::7fbde23db020  e5 e5 e5 e5                                      ....
  7299 ms  0x5fe SECKEY_DestroyPrivateKey()
  7299 ms  0x5fe privk:0x7fbdc718e020::7fbdc718e020  60 65 b2 c6                                      `e..
  7299 ms  0x5fe privk:0x7fbdc718e020::7fbdc718e020  e5 e5 e5 e5                                      ....
  7299 ms  0x5fe SECKEY_DestroyPrivateKey()
  7299 ms  0x5fe privk:0x7fbdc718c020::7fbdc718c020  e0 62 b2 c6                                      .b..
  7299 ms  0x5fe privk:0x7fbdc718c020::7fbdc718c020  e5 e5 e5 e5                                      ....
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dc5a90
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dc5e20
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dec850
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dec820
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dc55b0
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6dc5310
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe SSL_AuthCertificateComplete()
  7299 ms  0x5fe fd:0x7fbdc6decf10
  7299 ms  0x5fe err:0x0
  7299 ms  0x5fe PK11_Encrypt()
  7299 ms  0x5fe symkey:0x7fbdc7156a80
           /* TID 0x606 */
  7301 ms  0x606 PR_Close()
  7301 ms  0x606 fd:0x7fbdc6decdc0
           /* TID 0x5fe */
  7301 ms  0x5fe PK11_Encrypt()
  7301 ms  0x5fe symkey:0x7fbdc70e1980
           /* TID 0x606 */
  7304 ms  0x606 PR_Close()
  7304 ms  0x606 fd:0x7fbdc6dc57c0
           /* TID 0x5fe */
  7305 ms  0x5fe PK11_Encrypt()
  7305 ms  0x5fe symkey:0x7fbdc6bf4500
           /* TID 0x606 */
  7306 ms  0x606 PR_Close()
  7306 ms  0x606 fd:0x7fbdc6dc57c0
           /* TID 0x5fe */
  7312 ms  0x5fe PK11_Encrypt()
  7312 ms  0x5fe symkey:0x7fbdc6bf5400
  7312 ms  0x5fe SECKEY_DestroyPrivateKey()
  7312 ms  0x5fe privk:0x7fbdc7197020::7fbdc7197020  a0 6b b2 c6                                      .k..
  7312 ms  0x5fe privk:0x7fbdc7197020::7fbdc7197020  e5 e5 e5 e5                                      ....
  7312 ms  0x5fe SECKEY_DestroyPrivateKey()
  7312 ms  0x5fe privk:0x7fbdc7195020::7fbdc7195020  c0 69 b2 c6                                      .i..
  7312 ms  0x5fe privk:0x7fbdc7195020::7fbdc7195020  e5 e5 e5 e5                                      ....
  7313 ms  0x5fe PK11_Encrypt()
  7313 ms  0x5fe symkey:0x7fbdc6bf5800
  7313 ms  0x5fe PK11_Encrypt()
  7313 ms  0x5fe symkey:0x7fbdc6bf5800
  7313 ms  0x5fe PK11_Encrypt()
  7313 ms  0x5fe symkey:0x7fbdc6bf5b00
  7313 ms  0x5fe PK11_Encrypt()
  7313 ms  0x5fe symkey:0x7fbdc6bf5e00
  7314 ms  0x5fe PK11_Encrypt()
  7314 ms  0x5fe symkey:0x7fbdc6d8f300
  7314 ms  0x5fe PK11_Encrypt()
  7314 ms  0x5fe symkey:0x7fbdc6dadd80
  7314 ms  0x5fe PK11_Encrypt()
  7314 ms  0x5fe symkey:0x7fbdc6bf5800
  7314 ms  0x5fe PK11_Encrypt()
  7314 ms  0x5fe symkey:0x7fbdc7156a80
  7315 ms  0x5fe PK11_Encrypt()
  7315 ms  0x5fe symkey:0x7fbdc6bf5800
  7315 ms  0x5fe PK11_Encrypt()
  7315 ms  0x5fe symkey:0x7fbdc6bf5800
  7315 ms  0x5fe SECKEY_DestroyPrivateKey()
  7315 ms  0x5fe privk:0x7fbdc7189020::7fbdc7189020  f0 e1 d0 d8                                      ....
  7315 ms  0x5fe privk:0x7fbdc7189020::7fbdc7189020  e5 e5 e5 e5                                      ....
  7315 ms  0x5fe SECKEY_DestroyPrivateKey()
  7315 ms  0x5fe privk:0x7fbdc7186820::7fbdc7186820  e0 4c 17 c7                                      .L..
  7315 ms  0x5fe privk:0x7fbdc7186820::7fbdc7186820  e5 e5 e5 e5                                      ....
  7316 ms  0x5fe SECKEY_DestroyPrivateKey()
  7316 ms  0x5fe privk:0x7fbdc7192820::7fbdc7192820  80 68 b2 c6                                      .h..
  7316 ms  0x5fe privk:0x7fbdc7192820::7fbdc7192820  e5 e5 e5 e5                                      ....
  7316 ms  0x5fe SECKEY_DestroyPrivateKey()
  7316 ms  0x5fe privk:0x7fbdc7190820::7fbdc7190820  a0 66 b2 c6                                      .f..
  7316 ms  0x5fe privk:0x7fbdc7190820::7fbdc7190820  e5 e5 e5 e5                                      ....
  7316 ms  0x5fe PK11_Encrypt()
  7316 ms  0x5fe symkey:0x7fbdc6bf5800
  7316 ms  0x5fe SECKEY_DestroyPrivateKey()
  7316 ms  0x5fe privk:0x7fbdc6b32820::7fbdc6b32820  c0 6e b2 c6                                      .n..
  7316 ms  0x5fe privk:0x7fbdc6b32820::7fbdc6b32820  e5 e5 e5 e5                                      ....
  7316 ms  0x5fe SECKEY_DestroyPrivateKey()
  7316 ms  0x5fe privk:0x7fbdc6b30820::7fbdc6b30820  e0 6c b2 c6                                      .l..
  7316 ms  0x5fe privk:0x7fbdc6b30820::7fbdc6b30820  e5 e5 e5 e5                                      ....
  7317 ms  0x5fe PR_Close()
  7317 ms  0x5fe fd:0x7fbdc6dec820
  7317 ms     | 0x5fe PK11_Encrypt()
  7317 ms     | 0x5fe symkey:0x7fbdc6bf5b00
  7318 ms  0x5fe PR_Close()
  7318 ms  0x5fe fd:0x7fbdc6dc5e20
  7318 ms     | 0x5fe PK11_Encrypt()
  7318 ms     | 0x5fe symkey:0x7fbdc6bf5400
  7319 ms  0x5fe PK11_Encrypt()
  7319 ms  0x5fe symkey:0x7fbdc6bf5800
  7319 ms  0x5fe SSL_ImportFD()
  7319 ms  0x5fe ret:0x7fbdc6dc5f10
  7319 ms  0x5fe SSL_AuthCertificateHook()
  7319 ms  0x5fe fd:0x7fbdc6dc5f10
  7319 ms  0x5fe ret:0x0
  7319 ms  0x5fe PR_Connect()
  7319 ms  0x5fe fd:0x7fbdc6dc5f10
  7322 ms  0x5fe SECKEY_DestroyPrivateKey()
  7322 ms  0x5fe privk:0x7fbdc6b37020::7fbdc6b37020  80 4d 17 c7                                      .M..
  7322 ms  0x5fe privk:0x7fbdc6b37020::7fbdc6b37020  e5 e5 e5 e5                                      ....
  7322 ms  0x5fe SECKEY_DestroyPrivateKey()
  7322 ms  0x5fe privk:0x7fbdc6b35020::7fbdc6b35020  d0 cd df c6                                      ....
  7322 ms  0x5fe privk:0x7fbdc6b35020::7fbdc6b35020  e5 e5 e5 e5                                      ....
  7322 ms  0x5fe PR_Close()
  7322 ms  0x5fe fd:0x7fbdc6dc55b0
  7322 ms     | 0x5fe PK11_Encrypt()
  7322 ms     | 0x5fe symkey:0x7fbdc6bf5e00
  7328 ms  0x5fe SECKEY_DestroyPrivateKey()
  7328 ms  0x5fe privk:0x7fbdc6b3b820::7fbdc6b3b820  e0 52 b8 c6                                      .R..
  7329 ms  0x5fe privk:0x7fbdc6b3b820::7fbdc6b3b820  e5 e5 e5 e5                                      ....
  7329 ms  0x5fe SECKEY_DestroyPrivateKey()
  7329 ms  0x5fe privk:0x7fbdc6b39820::7fbdc6b39820  00 51 b8 c6                                      .Q..
  7329 ms  0x5fe privk:0x7fbdc6b39820::7fbdc6b39820  e5 e5 e5 e5                                      ....
  7329 ms  0x5fe PR_Close()
  7329 ms  0x5fe fd:0x7fbdc6dc5310
  7329 ms     | 0x5fe PK11_Encrypt()
  7329 ms     | 0x5fe symkey:0x7fbdc6d8f300
  7336 ms  0x5fe SECKEY_DestroyPrivateKey()
  7336 ms  0x5fe privk:0x7fbdc6b40020::7fbdc6b40020  00 56 b8 c6                                      .V..
  7336 ms  0x5fe privk:0x7fbdc6b40020::7fbdc6b40020  e5 e5 e5 e5                                      ....
  7336 ms  0x5fe SECKEY_DestroyPrivateKey()
  7336 ms  0x5fe privk:0x7fbdc6b3e020::7fbdc6b3e020  20 54 b8 c6                                       T..
  7336 ms  0x5fe privk:0x7fbdc6b3e020::7fbdc6b3e020  e5 e5 e5 e5                                      ....
  7336 ms  0x5fe PR_Close()
  7336 ms  0x5fe fd:0x7fbdc6decf10
  7336 ms     | 0x5fe PK11_Encrypt()
  7336 ms     | 0x5fe symkey:0x7fbdc6dadd80
           /* TID 0x606 */
  7341 ms  0x606 PR_Close()
  7341 ms  0x606 fd:0x7fbdc6dc51c0
           /* TID 0x5fe */
  7349 ms  0x5fe PK11_Encrypt()
  7349 ms  0x5fe symkey:0x7fbdc6bf5800
  7356 ms  0x5fe SECKEY_CreateECPrivateKey()
  7356 ms  0x5fe cx:0x7fbdc710c908
  7357 ms     | 0x5fe EC_ValidatePublicKey()
  7357 ms     | 0x5fe ret:0x0
  7357 ms  0x5fe ret:0x7fbdc6b32820::7fbdc6b32820  50 66 b2 c6                                      Pf..
  7357 ms  0x5fe SECKEY_CreateECPrivateKey()
  7357 ms  0x5fe cx:0x7fbdc710c908
  7357 ms     | 0x5fe EC_ValidatePublicKey()
  7359 ms     | 0x5fe ret:0x0
  7359 ms  0x5fe ret:0x7fbdc6b34820::7fbdc6b34820  30 68 b2 c6                                      0h..
           /* TID 0x606 */
  7377 ms  0x606 PR_Close()
  7377 ms  0x606 fd:0x7fbdc6dc51f0
  7390 ms  0x606 PR_Close()
  7390 ms  0x606 fd:0x7fbdc6dc51f0
           /* TID 0x693 */
  7397 ms  SECKEY_ECParamsToBasePointOrderLen()
  7397 ms  0x693 ret:0x180
  7397 ms  SECKEY_ECParamsToBasePointOrderLen()
  7397 ms  0x693 ret:0x180
  7397 ms  0x693 EC_ValidatePublicKey()
  7399 ms  0x693 ret:0x0
  7401 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7402 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7402 ms     | 0x693 ret:0x180
  7402 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7402 ms     | 0x693 ret:0x180
  7402 ms     | 0x693 EC_ValidatePublicKey()
  7403 ms     | 0x693 ret:0x0
  7406 ms  0x693 ret:0x0
           /* TID 0x5fe */
  7406 ms  SECKEY_ECParamsToKeySize()
  7406 ms  0x5fe ret:0x100
  7406 ms  SECKEY_ECParamsToBasePointOrderLen()
  7406 ms  0x5fe ret:0x100
  7406 ms  SECKEY_ECParamsToBasePointOrderLen()
  7406 ms  0x5fe ret:0x100
  7406 ms  0x5fe EC_ValidatePublicKey()
  7408 ms  0x5fe ret:0x0
  7410 ms  SECKEY_ECParamsToKeySize()
  7410 ms  0x5fe ret:0x100
  7410 ms  0x5fe SECKEY_CreateECPrivateKey()
  7410 ms  0x5fe cx:0x7fbdc710c908
  7410 ms     | 0x5fe EC_ValidatePublicKey()
  7412 ms     | 0x5fe ret:0x0
  7412 ms  0x5fe ret:0x7fbdc6b38820::7fbdc6b38820  50 6b b2 c6                                      Pk..
  7412 ms  0x5fe PK11_PubDeriveWithKDF()
  7412 ms  0x5fe seckey:0x7fbdc6b38820
  7412 ms     | 0x5fe EC_ValidatePublicKey()
  7413 ms     | 0x5fe ret:0x0
  7415 ms  0x5fe ret:0x7fbdc6dac580
  7415 ms  0x5fe PK11_DeriveWithFlags()
  7415 ms  0x5fe basekey:0x7fbdc6dac580
  7415 ms     | 0x5fe PK11_DeriveWithTemplate()
  7415 ms  0x5fe ret:0x7fbdc6d8f680
  7415 ms  0x5fe PK11_Derive()
  7415 ms  0x5fe basekey:0x7fbdc6d8f680
  7415 ms     | 0x5fe PK11_DeriveWithTemplate()
  7415 ms  0x5fe ret:0x7fbdc6bf5f80
  7415 ms  0x5fe SECKEY_DestroyPrivateKey()
  7415 ms  0x5fe privk:0x7fbdc6b38820::7fbdc6b38820  50 6b b2 c6                                      Pk..
  7415 ms  0x5fe privk:0x7fbdc6b38820::7fbdc6b38820  e5 e5 e5 e5                                      ....
  7415 ms  0x5fe PK11_Encrypt()
  7415 ms  0x5fe symkey:0x7fbdc6dac600
  7416 ms  0x5fe SSL_AuthCertificateComplete()
  7416 ms  0x5fe fd:0x7fbdc6dc5f10
  7416 ms  0x5fe err:0x0
  7416 ms  0x5fe PK11_Encrypt()
  7416 ms  0x5fe symkey:0x7fbdc6dac600
  7416 ms  0x5fe PK11_Encrypt()
  7416 ms  0x5fe symkey:0x7fbdc6dac600
           /* TID 0x606 */
  7424 ms  0x606 PR_Close()
  7424 ms  0x606 fd:0x7fbdc6dc55b0
  7427 ms  0x606 PR_Close()
  7427 ms  0x606 fd:0x7fbdc6dc55b0
  7429 ms  0x606 PR_Close()
  7429 ms  0x606 fd:0x7fbdc6dc55b0
  7432 ms  0x606 PR_Close()
  7432 ms  0x606 fd:0x7fbdc6dc5400
           /* TID 0x5fe */
  7450 ms  0x5fe PK11_Encrypt()
  7450 ms  0x5fe symkey:0x7fbdc7156a80
  7452 ms  0x5fe SECKEY_DestroyPrivateKey()
  7452 ms  0x5fe privk:0x7fbdc6b34820::7fbdc6b34820  30 68 b2 c6                                      0h..
  7452 ms  0x5fe privk:0x7fbdc6b34820::7fbdc6b34820  e5 e5 e5 e5                                      ....
  7452 ms  0x5fe SECKEY_DestroyPrivateKey()
  7452 ms  0x5fe privk:0x7fbdc6b32820::7fbdc6b32820  50 66 b2 c6                                      Pf..
  7452 ms  0x5fe privk:0x7fbdc6b32820::7fbdc6b32820  e5 e5 e5 e5                                      ....
  7454 ms  0x5fe PK11_Encrypt()
  7454 ms  0x5fe symkey:0x7fbdc7156a80
           /* TID 0x606 */
  7462 ms  0x606 PR_Close()
  7462 ms  0x606 fd:0x7fbdc6f50040
           /* TID 0x5fe */
  7464 ms  0x5fe PK11_Encrypt()
  7464 ms  0x5fe symkey:0x7fbdc6bf5800
  7466 ms  0x5fe PK11_Encrypt()
  7466 ms  0x5fe symkey:0x7fbdc6bf5800
  7470 ms  0x5fe PK11_Encrypt()
  7470 ms  0x5fe symkey:0x7fbdc6bf5800
  7477 ms  0x5fe PK11_Encrypt()
  7477 ms  0x5fe symkey:0x7fbdc7156a80
  7488 ms  0x5fe PK11_Encrypt()
  7488 ms  0x5fe symkey:0x7fbdc6dac600
           /* TID 0x606 */
  7490 ms  0x606 PR_Close()
  7490 ms  0x606 fd:0x7fbdc6dc5790
           /* TID 0x5fe */
  7499 ms  0x5fe SSL_ImportFD()
  7499 ms  0x5fe ret:0x7fbdc6f50a90
  7499 ms  0x5fe SSL_AuthCertificateHook()
  7499 ms  0x5fe fd:0x7fbdc6f50a90
  7499 ms  0x5fe ret:0x0
  7499 ms  0x5fe PR_Connect()
  7499 ms  0x5fe fd:0x7fbdc6f50a90
           /* TID 0x606 */
  7507 ms  0x606 PR_Close()
  7507 ms  0x606 fd:0x7fbdc6dec820
  7508 ms  0x606 PR_Close()
  7508 ms  0x606 fd:0x7fbdc6f501c0
  7524 ms  0x606 PR_Close()
  7524 ms  0x606 fd:0x7fbdc6dc5790
  7533 ms  0x606 PR_Close()
  7533 ms  0x606 fd:0x7fbdc6dc5790
  7542 ms  0x606 PR_Close()
  7542 ms  0x606 fd:0x7fbdc6decdc0
  7543 ms  0x606 PR_Close()
  7543 ms  0x606 fd:0x7fbdc6decdc0
  7560 ms  0x606 PR_Close()
  7560 ms  0x606 fd:0x7fbdc6dec8b0
           /* TID 0x5fe */
  7571 ms  0x5fe PK11_Encrypt()
  7571 ms  0x5fe symkey:0x7fbdc6bf4500
  7581 ms  0x5fe SECKEY_CreateECPrivateKey()
  7581 ms  0x5fe cx:0x7fbdc710d2c8
  7582 ms     | 0x5fe EC_ValidatePublicKey()
  7582 ms     | 0x5fe ret:0x0
  7582 ms  0x5fe ret:0x7fbdc6b3d820::7fbdc6b3d820  a0 51 b8 c6                                      .Q..
  7582 ms  0x5fe SECKEY_CreateECPrivateKey()
  7582 ms  0x5fe cx:0x7fbdc710d2c8
  7582 ms     | 0x5fe EC_ValidatePublicKey()
  7584 ms     | 0x5fe ret:0x0
  7584 ms  0x5fe ret:0x7fbdc6b3f820::7fbdc6b3f820  d0 53 b8 c6                                      .S..
  7594 ms  0x5fe SSL_ImportFD()
  7594 ms  0x5fe ret:0x7fbdc70a3730
  7594 ms  0x5fe SSL_AuthCertificateHook()
  7594 ms  0x5fe fd:0x7fbdc70a3730
  7594 ms  0x5fe ret:0x0
  7594 ms  0x5fe PR_Connect()
  7594 ms  0x5fe fd:0x7fbdc70a3730
  7639 ms  0x5fe SSL_ImportFD()
  7639 ms  0x5fe ret:0x7fbdc6f509d0
  7639 ms  0x5fe SSL_AuthCertificateHook()
  7639 ms  0x5fe fd:0x7fbdc6f509d0
  7639 ms  0x5fe ret:0x0
  7639 ms  0x5fe PR_Connect()
  7639 ms  0x5fe fd:0x7fbdc6f509d0
           /* TID 0x606 */
  7643 ms  0x606 PR_Close()
  7643 ms  0x606 fd:0x7fbdc6decdc0
           /* TID 0x692 */
  7669 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7670 ms  0x692 ret:0x0
  7670 ms  0x692 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7670 ms  0x692 ret:0x0
           /* TID 0x5fe */
  7670 ms  0x5fe SSL_AuthCertificateComplete()
  7670 ms  0x5fe fd:0x7fbdc6f50a90
  7670 ms  0x5fe err:0x0
  7676 ms  0x5fe SECKEY_CreateECPrivateKey()
  7676 ms  0x5fe cx:0x7fbdc710ecc8
  7676 ms     | 0x5fe EC_ValidatePublicKey()
  7676 ms     | 0x5fe ret:0x0
  7676 ms  0x5fe ret:0x7fbdc6f03020::7fbdc6f03020  50 16 ba c6                                      P...
  7676 ms  0x5fe SECKEY_CreateECPrivateKey()
  7676 ms  0x5fe cx:0x7fbdc710ecc8
  7677 ms     | 0x5fe EC_ValidatePublicKey()
  7678 ms     | 0x5fe ret:0x0
  7678 ms  0x5fe ret:0x7fbdc717f820::7fbdc717f820  20 1e ba c6                                       ...
  7739 ms  0x5fe SECKEY_CreateECPrivateKey()
  7739 ms  0x5fe cx:0x7fbdc710d608
  7740 ms     | 0x5fe EC_ValidatePublicKey()
  7740 ms     | 0x5fe ret:0x0
  7740 ms  0x5fe ret:0x7fbdc7188020::7fbdc7188020  e0 02 d3 c6                                      ....
  7740 ms  0x5fe SECKEY_CreateECPrivateKey()
  7740 ms  0x5fe cx:0x7fbdc710d608
  7740 ms     | 0x5fe EC_ValidatePublicKey()
  7742 ms     | 0x5fe ret:0x0
  7742 ms  0x5fe ret:0x7fbdc718a020::7fbdc718a020  c0 04 d3 c6                                      ....
  7749 ms  SECKEY_ECParamsToKeySize()
  7749 ms  0x5fe ret:0x100
  7749 ms  0x5fe SECKEY_CreateECPrivateKey()
  7749 ms  0x5fe cx:0x7fbdc710d2c8
  7749 ms     | 0x5fe EC_ValidatePublicKey()
  7751 ms     | 0x5fe ret:0x0
  7751 ms  0x5fe ret:0x7fbdc718d020::7fbdc718d020  50 06 d3 c6                                      P...
  7751 ms  0x5fe PK11_PubDeriveWithKDF()
  7751 ms  0x5fe seckey:0x7fbdc718d020
  7751 ms     | 0x5fe EC_ValidatePublicKey()
  7753 ms     | 0x5fe ret:0x0
  7754 ms  0x5fe ret:0x7fbdc6dac580
  7754 ms  0x5fe PK11_DeriveWithFlags()
  7754 ms  0x5fe basekey:0x7fbdc6dac580
  7754 ms     | 0x5fe PK11_DeriveWithTemplate()
  7754 ms  0x5fe ret:0x7fbdc6bf5f00
  7754 ms  0x5fe PK11_Derive()
  7754 ms  0x5fe basekey:0x7fbdc6bf5f00
  7754 ms     | 0x5fe PK11_DeriveWithTemplate()
  7754 ms  0x5fe ret:0x7fbdc6bf5c80
  7754 ms  0x5fe SECKEY_DestroyPrivateKey()
  7754 ms  0x5fe privk:0x7fbdc718d020::7fbdc718d020  50 06 d3 c6                                      P...
  7754 ms  0x5fe privk:0x7fbdc718d020::7fbdc718d020  e5 e5 e5 e5                                      ....
  7754 ms  0x5fe PK11_Encrypt()
  7754 ms  0x5fe symkey:0x7fbdc6d8f100
  7757 ms  0x5fe PK11_Encrypt()
  7757 ms  0x5fe symkey:0x7fbdc6d8f100
  7758 ms  0x5fe PK11_Encrypt()
  7758 ms  0x5fe symkey:0x7fbdc6d8f100
           /* TID 0x65d */
  7759 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7759 ms  0x65d ret:0x0
  7759 ms  0x65d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7759 ms  0x65d ret:0x0
           /* TID 0x5fe */
  7759 ms  SECKEY_ECParamsToKeySize()
  7759 ms  0x5fe ret:0x100
  7759 ms  0x5fe SECKEY_CreateECPrivateKey()
  7759 ms  0x5fe cx:0x7fbdc710ecc8
  7760 ms     | 0x5fe EC_ValidatePublicKey()
  7761 ms     | 0x5fe ret:0x0
  7761 ms  0x5fe ret:0x7fbdc718f820::7fbdc718f820  f0 06 d3 c6                                      ....
  7761 ms  0x5fe PK11_PubDeriveWithKDF()
  7761 ms  0x5fe seckey:0x7fbdc718f820
  7761 ms     | 0x5fe EC_ValidatePublicKey()
  7763 ms     | 0x5fe ret:0x0
  7764 ms  0x5fe ret:0x7fbdc6dac580
  7764 ms  0x5fe PK11_DeriveWithFlags()
  7764 ms  0x5fe basekey:0x7fbdc6dac580
  7764 ms     | 0x5fe PK11_DeriveWithTemplate()
  7764 ms  0x5fe ret:0x7fbdc6bf5c00
  7764 ms  0x5fe PK11_Derive()
  7764 ms  0x5fe basekey:0x7fbdc6bf5c00
  7764 ms     | 0x5fe PK11_DeriveWithTemplate()
  7764 ms  0x5fe ret:0x7fbdc6bf5280
  7764 ms  0x5fe SECKEY_DestroyPrivateKey()
  7764 ms  0x5fe privk:0x7fbdc718f820::7fbdc718f820  f0 06 d3 c6                                      ....
  7764 ms  0x5fe privk:0x7fbdc718f820::7fbdc718f820  e5 e5 e5 e5                                      ....
  7764 ms  0x5fe PK11_Encrypt()
  7764 ms  0x5fe symkey:0x7fbdc6bf5d00
  7765 ms  0x5fe SSL_AuthCertificateComplete()
  7765 ms  0x5fe fd:0x7fbdc6f509d0
  7765 ms  0x5fe err:0x0
  7765 ms  0x5fe PK11_Encrypt()
  7765 ms  0x5fe symkey:0x7fbdc6bf5d00
  7765 ms  0x5fe PK11_Encrypt()
  7765 ms  0x5fe symkey:0x7fbdc6bf5d00
  7801 ms  0x5fe SECKEY_DestroyPrivateKey()
  7801 ms  0x5fe privk:0x7fbdc717f820::7fbdc717f820  20 1e ba c6                                       ...
  7801 ms  0x5fe privk:0x7fbdc717f820::7fbdc717f820  e5 e5 e5 e5                                      ....
  7802 ms  0x5fe SECKEY_DestroyPrivateKey()
  7802 ms  0x5fe privk:0x7fbdc6f03020::7fbdc6f03020  50 16 ba c6                                      P...
  7802 ms  0x5fe privk:0x7fbdc6f03020::7fbdc6f03020  e5 e5 e5 e5                                      ....
  7838 ms  0x5fe SECKEY_DestroyPrivateKey()
  7838 ms  0x5fe privk:0x7fbdc6b3f820::7fbdc6b3f820  d0 53 b8 c6                                      .S..
  7838 ms  0x5fe privk:0x7fbdc6b3f820::7fbdc6b3f820  e5 e5 e5 e5                                      ....
  7838 ms  0x5fe SECKEY_DestroyPrivateKey()
  7838 ms  0x5fe privk:0x7fbdc6b3d820::7fbdc6b3d820  a0 51 b8 c6                                      .Q..
  7838 ms  0x5fe privk:0x7fbdc6b3d820::7fbdc6b3d820  e5 e5 e5 e5                                      ....
  7838 ms  0x5fe PK11_Encrypt()
  7838 ms  0x5fe symkey:0x7fbdc6bf5d00
           /* TID 0x693 */
  7884 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7885 ms  0x693 ret:0x0
  7885 ms  0x693 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7885 ms  0x693 ret:0x0
           /* TID 0x5fe */
  7886 ms  SECKEY_ECParamsToKeySize()
  7886 ms  0x5fe ret:0xff
  7886 ms  0x5fe SECKEY_CreateECPrivateKey()
  7886 ms  0x5fe cx:0x7fbdc710d608
  7891 ms     | 0x5fe EC_ValidatePublicKey()
  7891 ms     | 0x5fe ret:0x0
  7891 ms  0x5fe ret:0x7fbdc717a820::7fbdc717a820  80 13 ba c6                                      ....
  7891 ms  0x5fe PK11_PubDeriveWithKDF()
  7891 ms  0x5fe seckey:0x7fbdc717a820
  7891 ms     | 0x5fe EC_ValidatePublicKey()
  7891 ms     | 0x5fe ret:0x0
  7892 ms  0x5fe ret:0x7fbdc6dac580
  7892 ms  0x5fe PK11_DeriveWithFlags()
  7892 ms  0x5fe basekey:0x7fbdc6dac580
  7892 ms     | 0x5fe PK11_DeriveWithTemplate()
  7893 ms  0x5fe ret:0x7fbdc6bf5200
  7893 ms  0x5fe PK11_Derive()
  7893 ms  0x5fe basekey:0x7fbdc6bf5200
  7893 ms     | 0x5fe PK11_DeriveWithTemplate()
  7893 ms  0x5fe ret:0x7fbdc6bf5980
  7893 ms  0x5fe SECKEY_DestroyPrivateKey()
  7893 ms  0x5fe privk:0x7fbdc717a820::7fbdc717a820  80 13 ba c6                                      ....
  7893 ms  0x5fe privk:0x7fbdc717a820::7fbdc717a820  e5 e5 e5 e5                                      ....
  7893 ms  0x5fe PK11_Encrypt()
  7893 ms  0x5fe symkey:0x7fbdc6bf5300
  7894 ms  0x5fe SSL_AuthCertificateComplete()
  7894 ms  0x5fe fd:0x7fbdc70a3730
  7894 ms  0x5fe err:0x0
  7895 ms  0x5fe PK11_Encrypt()
  7895 ms  0x5fe symkey:0x7fbdc6bf5300
  7921 ms  0x5fe PK11_Encrypt()
  7921 ms  0x5fe symkey:0x7fbdc6d8f100
           /* TID 0x606 */
  8012 ms  0x606 PR_Close()
  8012 ms  0x606 fd:0x7fbdc70a3dc0
           /* TID 0x5fe */
  8023 ms  0x5fe SECKEY_DestroyPrivateKey()
  8023 ms  0x5fe privk:0x7fbdc718a020::7fbdc718a020  c0 04 d3 c6                                      ....
  8023 ms  0x5fe privk:0x7fbdc718a020::7fbdc718a020  e5 e5 e5 e5                                      ....
  8023 ms  0x5fe SECKEY_DestroyPrivateKey()
  8023 ms  0x5fe privk:0x7fbdc7188020::7fbdc7188020  e0 02 d3 c6                                      ....
  8024 ms  0x5fe privk:0x7fbdc7188020::7fbdc7188020  e5 e5 e5 e5                                      ....
  8114 ms  0x5fe PK11_Encrypt()
  8114 ms  0x5fe symkey:0x7fbdc6bf5800
           /* TID 0x606 */
  8153 ms  0x606 PR_Close()
  8153 ms  0x606 fd:0x7fbdc7044e80
           /* TID 0x5fe */
  8156 ms  0x5fe PK11_Encrypt()
  8156 ms  0x5fe symkey:0x7fbdc6bf4500
  8160 ms  0x5fe PR_Close()
  8160 ms  0x5fe fd:0x7fbde1c8eaf0
           /* TID 0x5f3 */
  8162 ms  0x5f3 EC_ValidatePublicKey()
  8163 ms  0x5f3 ret:0x0
  8163 ms  0x5f3 EC_ValidatePublicKey()
  8165 ms  0x5f3 ret:0x0
  8165 ms  0x5f3 EC_ValidatePublicKey()
  8166 ms  0x5f3 ret:0x0
  8166 ms  0x5f3 EC_ValidatePublicKey()
  8177 ms  0x5f3 ret:0x0
  8177 ms  0x5f3 EC_ValidatePublicKey()
  8179 ms  0x5f3 ret:0x0
  8179 ms  0x5f3 EC_ValidatePublicKey()
  8180 ms  0x5f3 ret:0x0
  8180 ms  0x5f3 EC_ValidatePublicKey()
  8181 ms  0x5f3 ret:0x0
  8182 ms  0x5f3 EC_ValidatePublicKey()
  8183 ms  0x5f3 ret:0x0
  8183 ms  0x5f3 EC_ValidatePublicKey()
  8185 ms  0x5f3 ret:0x0
  8185 ms  0x5f3 EC_ValidatePublicKey()
  8186 ms  0x5f3 ret:0x0
           /* TID 0x5fe */
  8195 ms  0x5fe PK11_Encrypt()
  8195 ms  0x5fe symkey:0x7fbdc6bf5d00
  8196 ms  0x5fe PK11_Encrypt()
  8196 ms  0x5fe symkey:0x7fbdc6d8f100
  8196 ms  0x5fe PK11_Encrypt()
  8196 ms  0x5fe symkey:0x7fbdc70e2380
  8196 ms  0x5fe PK11_Encrypt()
  8196 ms  0x5fe symkey:0x7fbdc7156a80
  8196 ms  0x5fe PK11_Encrypt()
  8196 ms  0x5fe symkey:0x7fbdc6bf5800
  8196 ms  0x5fe PK11_Encrypt()
  8196 ms  0x5fe symkey:0x7fbdc6dac600
  8196 ms  0x5fe PR_Close()
  8196 ms  0x5fe fd:0x7fbdc70a3730
  8196 ms     | 0x5fe PK11_Encrypt()
  8196 ms     | 0x5fe symkey:0x7fbdc6bf5300
  8196 ms  0x5fe PR_Close()
  8196 ms  0x5fe fd:0x7fbdc6dc5c70
  8196 ms     | 0x5fe PK11_Encrypt()
  8196 ms     | 0x5fe symkey:0x7fbdc7156180
  8197 ms  0x5fe PR_Close()
  8197 ms  0x5fe fd:0x7fbdc6dc5ca0
  8197 ms     | 0x5fe PK11_Encrypt()
  8197 ms     | 0x5fe symkey:0x7fbdc7155d80
  8197 ms  0x5fe PR_Close()
  8197 ms  0x5fe fd:0x7fbdc6dc5c10
  8197 ms     | 0x5fe PK11_Encrypt()
  8197 ms     | 0x5fe symkey:0x7fbdc70e1980
  8197 ms  0x5fe PR_Close()
  8197 ms  0x5fe fd:0x7fbdc71321c0
  8197 ms     | 0x5fe PK11_Encrypt()
  8197 ms     | 0x5fe symkey:0x7fbdc74fea00
  8197 ms  0x5fe PR_Close()
  8197 ms  0x5fe fd:0x7fbdc7132070
  8197 ms  0x5fe PR_Close()
  8197 ms  0x5fe fd:0x7fbdd82f49d0
  8197 ms     | 0x5fe PK11_Encrypt()
  8197 ms     | 0x5fe symkey:0x7fbdc74fdc80
  8198 ms  0x5fe PR_Close()
  8198 ms  0x5fe fd:0x7fbddb37dd90
  8198 ms  0x5fe PR_Close()
  8198 ms  0x5fe fd:0x7fbdd805f9d0
  8198 ms     | 0x5fe PK11_Encrypt()
  8198 ms     | 0x5fe symkey:0x7fbdd93dc180
  8198 ms  0x5fe PR_Close()
  8198 ms  0x5fe fd:0x7fbdd805f280
  8198 ms     | 0x5fe PK11_Encrypt()
  8198 ms     | 0x5fe symkey:0x7fbde6660280
  8198 ms  0x5fe PR_Close()
  8198 ms  0x5fe fd:0x7fbdc6dc5550
  8198 ms     | 0x5fe PK11_Encrypt()
  8198 ms     | 0x5fe symkey:0x7fbdc7156a80
  8198 ms  0x5fe PR_Close()
  8198 ms  0x5fe fd:0x7fbdc6f50a90
  8198 ms     | 0x5fe PK11_Encrypt()
  8198 ms     | 0x5fe symkey:0x7fbdc6d8f100
  8199 ms  0x5fe PR_Close()
  8199 ms  0x5fe fd:0x7fbdc6dec850
  8199 ms     | 0x5fe PK11_Encrypt()
  8199 ms     | 0x5fe symkey:0x7fbdc6bf5800
  8199 ms  0x5fe PR_Close()
  8199 ms  0x5fe fd:0x7fbdc6dc5f10
  8199 ms     | 0x5fe PK11_Encrypt()
  8199 ms     | 0x5fe symkey:0x7fbdc6dac600
           /* TID 0x64c */
  8199 ms  0x64c PR_Close()
  8199 ms  0x64c fd:0x7fbdc6dc5190
  8199 ms  0x64c PR_Close()
  8199 ms  0x64c fd:0x7fbdc6dc5190
           /* TID 0x5fe */
  8201 ms  0x5fe PR_Close()
  8201 ms  0x5fe fd:0x7fbdc70f9ac0
  8201 ms     | 0x5fe PK11_Encrypt()
  8201 ms     | 0x5fe symkey:0x7fbdc70e2380
  8201 ms  0x5fe PR_Close()
  8201 ms  0x5fe fd:0x7fbdc6f509d0
  8201 ms     | 0x5fe PK11_Encrypt()
  8201 ms     | 0x5fe symkey:0x7fbdc6bf5d00
  8218 ms  0x5fe SSL_ImportFD()
  8218 ms  0x5fe ret:0x7fbdc6f50bb0
  8218 ms  0x5fe SSL_AuthCertificateHook()
  8218 ms  0x5fe fd:0x7fbdc6f50bb0
  8218 ms  0x5fe ret:0x0
  8218 ms  0x5fe PR_Connect()
  8218 ms  0x5fe fd:0x7fbdc6f50bb0
  8222 ms  0x5fe SSL_ImportFD()
  8222 ms  0x5fe ret:0x7fbdc70a3fd0
  8222 ms  0x5fe SSL_AuthCertificateHook()
  8222 ms  0x5fe fd:0x7fbdc70a3fd0
  8223 ms  0x5fe ret:0x0
  8223 ms  0x5fe PR_Connect()
  8223 ms  0x5fe fd:0x7fbdc70a3fd0
           /* TID 0x5f3 */
  8227 ms  0x5f3 PR_Close()
  8227 ms  0x5f3 fd:0x7fbddcd97b20
  8227 ms  0x5f3 PR_Close()
  8227 ms  0x5f3 fd:0x7fbdc70f9b20
           /* TID 0x5fe */
  8236 ms  0x5fe PR_Close()
  8236 ms  0x5fe fd:0x7fbdc6dc5a90
  8236 ms     | 0x5fe PK11_Encrypt()
  8236 ms     | 0x5fe symkey:0x7fbdc6bf4500
           /* TID 0x5f3 */
  8238 ms  0x5f3 PR_Close()
  8238 ms  0x5f3 fd:0x7fbdc70f9be0
  8239 ms  0x5f3 PR_Close()
  8239 ms  0x5f3 fd:0x7fbdc6dc5910
  8240 ms  0x5f3 PR_Close()
  8240 ms  0x5f3 fd:0x7fbdc6dc5b20
  8240 ms  0x5f3 PR_Close()
  8240 ms  0x5f3 fd:0x7fbdc6dc5910
           /* TID 0x60b */
  8243 ms  0x60b PR_Close()
  8243 ms  0x60b fd:0x7fbdc6dc5910
           /* TID 0x5f3 */
  8261 ms  0x5f3 PR_Close()
  8261 ms  0x5f3 fd:0x7fbdc6dc5b20
  8261 ms  0x5f3 PR_Close()
  8261 ms  0x5f3 fd:0x7fbdc748c2b0
  8262 ms  0x5f3 PR_Close()
  8262 ms  0x5f3 fd:0x7fbdc6dc5b20
  8262 ms  0x5f3 PR_Close()
  8262 ms  0x5f3 fd:0x7fbdc748c2b0
  8262 ms  0x5f3 PR_Close()
  8262 ms  0x5f3 fd:0x7fbde30c89a0
  8262 ms  0x5f3 PR_Close()
  8262 ms  0x5f3 fd:0x7fbde30c88b0
  8262 ms  0x5f3 PR_Close()
  8262 ms  0x5f3 fd:0x7fbde30c8a60
           /* TID 0x5fe */
  8263 ms  0x5fe SSL_ImportFD()
  8263 ms  0x5fe ret:0x7fbdc748c340
  8263 ms  0x5fe SSL_AuthCertificateHook()
  8263 ms  0x5fe fd:0x7fbdc748c340
  8263 ms  0x5fe ret:0x0
  8263 ms  0x5fe PR_Connect()
  8263 ms  0x5fe fd:0x7fbdc748c340
           /* TID 0x5f3 */
  8265 ms  0x5f3 PR_Close()
  8265 ms  0x5f3 fd:0x7fbdc6f50b50
  8266 ms  0x5f3 PR_Close()
  8266 ms  0x5f3 fd:0x7fbdc6f50b50
  8268 ms  0x5f3 PR_Close()
  8268 ms  0x5f3 fd:0x7fbdc6dc5b20
  8268 ms  0x5f3 PR_Close()
  8268 ms  0x5f3 fd:0x7fbdc748c580
  8269 ms  0x5f3 PR_Close()
  8269 ms  0x5f3 fd:0x7fbdc6dc5b20
  8269 ms  0x5f3 PR_Close()
  8269 ms  0x5f3 fd:0x7fbdc748c580
  8273 ms  0x5f3 PR_Close()
  8273 ms  0x5f3 fd:0x7fbdc748c5b0
           /* TID 0x5fe */
  8274 ms  0x5fe SSL_ImportFD()
  8274 ms  0x5fe ret:0x7fbdc748c5e0
  8274 ms  0x5fe SSL_AuthCertificateHook()
  8274 ms  0x5fe fd:0x7fbdc748c5e0
  8274 ms  0x5fe ret:0x0
  8274 ms  0x5fe PR_Connect()
  8274 ms  0x5fe fd:0x7fbdc748c5e0
           /* TID 0x5f3 */
  8275 ms  0x5f3 PR_Close()
  8275 ms  0x5f3 fd:0x7fbdc70a3a30
  8277 ms  0x5f3 PR_Close()
  8277 ms  0x5f3 fd:0x7fbdc6dc5b20
  8277 ms  0x5f3 PR_Close()
  8277 ms  0x5f3 fd:0x7fbdc748c730
  8277 ms  0x5f3 PR_Close()
  8277 ms  0x5f3 fd:0x7fbdc6dc5b20
  8277 ms  0x5f3 PR_Close()
  8277 ms  0x5f3 fd:0x7fbdc748c730
  8280 ms  0x5f3 PR_Close()
  8280 ms  0x5f3 fd:0x7fbdc748c760
  8281 ms  0x5f3 PR_Close()
  8281 ms  0x5f3 fd:0x7fbdc748c760
  8290 ms  0x5f3 PR_Close()
  8290 ms  0x5f3 fd:0x7fbdc748c9d0
  8291 ms  0x5f3 PR_Close()
  8291 ms  0x5f3 fd:0x7fbdc748c9d0
  8293 ms  0x5f3 PR_Close()
  8293 ms  0x5f3 fd:0x7fbdc748ca30
           /* TID 0x606 */
  8300 ms  0x606 PR_Close()
  8300 ms  0x606 fd:0x7fbdc748cd60
           /* TID 0x60b */
  8311 ms  0x60b PR_Close()
  8311 ms  0x60b fd:0x7fbdc70a3ac0
  8312 ms  0x60b PR_Close()
  8312 ms  0x60b fd:0x7fbdc70a3ac0
           /* TID 0x5f3 */
  8313 ms  0x5f3 PR_Close()
  8313 ms  0x5f3 fd:0x7fbdc6dc5b20
  8313 ms  0x5f3 PR_Close()
  8313 ms  0x5f3 fd:0x7fbdc748cfd0
           /* TID 0x60b */
  8319 ms  0x60b PR_Close()
  8319 ms  0x60b fd:0x7fbdc6dc5910
           /* TID 0x5fe */
  8319 ms  0x5fe SECKEY_CreateECPrivateKey()
  8319 ms  0x5fe cx:0x7fbdc710caa8
  8320 ms     | 0x5fe EC_ValidatePublicKey()
  8320 ms     | 0x5fe ret:0x0
  8320 ms  0x5fe ret:0x7fbdc6b4c820::7fbdc6b4c820  00 f6 10 c7                                      ....
  8320 ms  0x5fe SECKEY_CreateECPrivateKey()
  8320 ms  0x5fe cx:0x7fbdc710caa8
  8321 ms     | 0x5fe EC_ValidatePublicKey()
  8322 ms     | 0x5fe ret:0x0
  8322 ms  0x5fe ret:0x7fbdc6de1820::7fbdc6de1820  b0 40 17 c7                                      .@..
  8329 ms  0x5fe SECKEY_CreateECPrivateKey()
  8329 ms  0x5fe cx:0x7fbdc710bc08
  8329 ms     | 0x5fe EC_ValidatePublicKey()
  8329 ms     | 0x5fe ret:0x0
  8329 ms  0x5fe ret:0x7fbdc6de7820::7fbdc6de7820  a0 46 17 c7                                      .F..
  8329 ms  0x5fe SECKEY_CreateECPrivateKey()
  8329 ms  0x5fe cx:0x7fbdc710bc08
  8330 ms     | 0x5fe EC_ValidatePublicKey()
  8331 ms     | 0x5fe ret:0x0
  8331 ms  0x5fe ret:0x7fbdc6f0a820::7fbdc6f0a820  d0 48 17 c7                                      .H..
  8347 ms  0x5fe SECKEY_CreateECPrivateKey()
  8347 ms  0x5fe cx:0x7fbdc710b728
  8347 ms     | 0x5fe EC_ValidatePublicKey()
  8348 ms     | 0x5fe ret:0x0
  8348 ms  0x5fe ret:0x7fbdc7186020::7fbdc7186020  10 6a b2 c6                                      .j..
  8348 ms  0x5fe SECKEY_CreateECPrivateKey()
  8348 ms  0x5fe cx:0x7fbdc710b728
  8348 ms     | 0x5fe EC_ValidatePublicKey()
  8350 ms     | 0x5fe ret:0x0
  8350 ms  0x5fe ret:0x7fbdc7461820::7fbdc7461820  80 6d b2 c6                                      .m..
  8353 ms  0x5fe SECKEY_CreateECPrivateKey()
  8353 ms  0x5fe cx:0x7fbdc710b8c8
  8353 ms     | 0x5fe EC_ValidatePublicKey()
  8353 ms     | 0x5fe ret:0x0
  8353 ms  0x5fe ret:0x7fbdc7465020::7fbdc7465020  10 6f b2 c6                                      .o..
  8353 ms  0x5fe SECKEY_CreateECPrivateKey()
  8353 ms  0x5fe cx:0x7fbdc710b8c8
  8354 ms     | 0x5fe EC_ValidatePublicKey()
  8356 ms     | 0x5fe ret:0x0
  8356 ms  0x5fe ret:0x7fbdc7467020::7fbdc7467020  c0 54 b8 c6                                      .T..
           /* TID 0x60b */
  8356 ms  0x60b PR_Close()
  8356 ms  0x60b fd:0x7fbdc6dc5910
           /* TID 0x5fe */
  8362 ms  0x5fe PR_Close()
  8362 ms  0x5fe fd:0x7fbdc748c340
  8362 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8362 ms     | 0x5fe privk:0x7fbdc6f0a820::7fbdc6f0a820  d0 48 17 c7                                      .H..
  8362 ms     | 0x5fe privk:0x7fbdc6f0a820::7fbdc6f0a820  e5 e5 e5 e5                                      ....
  8362 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8362 ms     | 0x5fe privk:0x7fbdc6de7820::7fbdc6de7820  a0 46 17 c7                                      .F..
  8362 ms     | 0x5fe privk:0x7fbdc6de7820::7fbdc6de7820  e5 e5 e5 e5                                      ....
           /* TID 0x5f8 */
  8369 ms  0x5f8 PR_Close()
  8369 ms  0x5f8 fd:0x7fbde1c2fe20
  8374 ms  0x5f8 PR_Close()
  8374 ms  0x5f8 fd:0x7fbdde4fc820
           /* TID 0x5fe */
  8374 ms  0x5fe PR_Close()
  8374 ms  0x5fe fd:0x7fbdc748c5e0
  8375 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8375 ms     | 0x5fe privk:0x7fbdc6de1820::7fbdc6de1820  b0 40 17 c7                                      .@..
  8375 ms     | 0x5fe privk:0x7fbdc6de1820::7fbdc6de1820  e5 e5 e5 e5                                      ....
  8375 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8375 ms     | 0x5fe privk:0x7fbdc6b4c820::7fbdc6b4c820  00 f6 10 c7                                      ....
  8375 ms     | 0x5fe privk:0x7fbdc6b4c820::7fbdc6b4c820  e5 e5 e5 e5                                      ....
  8375 ms  0x5fe PR_Close()
  8375 ms  0x5fe fd:0x7fbdc6f50bb0
  8375 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8375 ms     | 0x5fe privk:0x7fbdc7461820::7fbdc7461820  80 6d b2 c6                                      .m..
  8375 ms     | 0x5fe privk:0x7fbdc7461820::7fbdc7461820  e5 e5 e5 e5                                      ....
  8375 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8375 ms     | 0x5fe privk:0x7fbdc7186020::7fbdc7186020  10 6a b2 c6                                      .j..
  8375 ms     | 0x5fe privk:0x7fbdc7186020::7fbdc7186020  e5 e5 e5 e5                                      ....
  8376 ms  0x5fe PR_Close()
  8376 ms  0x5fe fd:0x7fbdc70a3fd0
  8376 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8376 ms     | 0x5fe privk:0x7fbdc7467020::7fbdc7467020  c0 54 b8 c6                                      .T..
  8376 ms     | 0x5fe privk:0x7fbdc7467020::7fbdc7467020  e5 e5 e5 e5                                      ....
  8376 ms     | 0x5fe SECKEY_DestroyPrivateKey()
  8376 ms     | 0x5fe privk:0x7fbdc7465020::7fbdc7465020  10 6f b2 c6                                      .o..
  8376 ms     | 0x5fe privk:0x7fbdc7465020::7fbdc7465020  e5 e5 e5 e5                                      ....
           /* TID 0x60b */
  8378 ms  0x60b PR_Close()
  8378 ms  0x60b fd:0x7fbdc6dc5550
           /* TID 0x5f3 */
  8388 ms  0x5f3 PR_Close()
  8388 ms  0x5f3 fd:0x7fbdc6dc5b20
  8388 ms  0x5f3 PR_Close()
  8388 ms  0x5f3 fd:0x7fbdc6dc5550
           /* TID 0x5fe */
  8388 ms  0x5fe PR_Close()
  8388 ms  0x5fe fd:0x7fbdd87fda90
           /* TID 0x64c */
  8389 ms  0x64c PR_Close()
  8389 ms  0x64c fd:0x7fbdc70f98e0
  8389 ms  0x64c PR_Close()
  8389 ms  0x64c fd:0x7fbdc6dc5280
  8389 ms  0x64c PR_Close()
  8389 ms  0x64c fd:0x7fbdc6dc5280
  8389 ms  0x64c PR_Close()
  8389 ms  0x64c fd:0x7fbdc6dc5280
           /* TID 0x60b */
  8389 ms  0x60b PR_Close()
  8389 ms  0x60b fd:0x7fbdc70a3fd0
           /* TID 0x606 */
  8392 ms  0x606 PR_Close()
  8392 ms  0x606 fd:0x7fbdc71fda60
  8392 ms  0x606 PR_Close()
  8392 ms  0x606 fd:0x7fbdc71fda90
           /* TID 0x5f8 */
  8402 ms  0x5f8 PR_Close()
  8402 ms  0x5f8 fd:0x7fbddb3b2d30
           /* TID 0x5f3 */
  8404 ms  0x5f3 PR_Close()
  8404 ms  0x5f3 fd:0x7fbdc6dc5b20
  8404 ms  0x5f3 PR_Close()
  8404 ms  0x5f3 fd:0x7fbdc71fdb20
           /* TID 0x60b */
  8407 ms  0x60b PR_Close()
  8407 ms  0x60b fd:0x7fbdc70f9dc0
  8409 ms  0x60b PR_Close()
  8409 ms  0x60b fd:0x7fbdc70f9d90
  8449 ms  0x60b PR_Close()
  8449 ms  0x60b fd:0x7fbdc6dc5e20
  8451 ms  0x60b PR_Close()
  8451 ms  0x60b fd:0x7fbdc6dc5e20
  8455 ms  0x60b PR_Close()
  8455 ms  0x60b fd:0x7fbdc6dec940
  8456 ms  0x60b PR_Close()
  8456 ms  0x60b fd:0x7fbdc6decee0
  8464 ms  0x60b PR_Close()
  8464 ms  0x60b fd:0x7fbdc6f50580
  8469 ms  0x60b PR_Close()
  8469 ms  0x60b fd:0x7fbdc70a3460
  8475 ms  0x60b PR_Close()
  8475 ms  0x60b fd:0x7fbdc70a3ee0
  8485 ms  0x60b PR_Close()
  8485 ms  0x60b fd:0x7fbdc70f9dc0
  8486 ms  0x60b PR_Close()
  8486 ms  0x60b fd:0x7fbdc70f9dc0
           /* TID 0x5f3 */
  8644 ms  0x5f3 PR_Close()
  8644 ms  0x5f3 fd:0x7fbdc6dc5160
  8645 ms  0x5f3 PR_Close()
  8645 ms  0x5f3 fd:0x7fbdc6dc5160
  8650 ms  0x5f3 PR_Close()
  8650 ms  0x5f3 fd:0x7fbe003da130
  8651 ms  0x5f3 PR_Close()
  8651 ms  0x5f3 fd:0x7fbe003da190
Process terminated
