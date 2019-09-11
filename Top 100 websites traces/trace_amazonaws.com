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
           /* TID 0x279e */
    75 ms  0x279e PR_Close()
    75 ms  0x279e fd:0x7f175fa9c760
           /* TID 0x2796 */
   471 ms  0x2796 SSL_ImportFD()
   472 ms  0x2796 ret:0x7f1750af5850
   472 ms  0x2796 SSL_AuthCertificateHook()
   472 ms  0x2796 fd:0x7f1750af5850
   472 ms  0x2796 ret:0x0
   472 ms  0x2796 PR_Connect()
   472 ms  0x2796 fd:0x7f1750af5850
           /* TID 0x27b3 */
   604 ms  0x27b3 PR_Close()
   604 ms  0x27b3 fd:0x7f1750af51f0
   607 ms  0x27b3 PR_Close()
   607 ms  0x27b3 fd:0x7f1750af51f0
           /* TID 0x2796 */
   690 ms  0x2796 SECKEY_CreateECPrivateKey()
   690 ms  0x2796 cx:0x7f1750aeaf48
   692 ms     | 0x2796 EC_ValidatePublicKey()
   692 ms     | 0x2796 ret:0x0
   692 ms  0x2796 ret:0x7f1750b61020::7f1750b61020  60 cf bd 50                                      `..P
   692 ms  0x2796 SECKEY_CreateECPrivateKey()
   692 ms  0x2796 cx:0x7f1750aeaf48
   694 ms     | 0x2796 EC_ValidatePublicKey()
   699 ms     | 0x2796 ret:0x0
   699 ms  0x2796 ret:0x7f1750b63020::7f1750b63020  20 ce bd 50                                       ..P
           /* TID 0x27b3 */
   846 ms  0x27b3 PR_Close()
   846 ms  0x27b3 fd:0x7f1750af5910
           /* TID 0x2796 */
   924 ms  SECKEY_ECParamsToKeySize()
   924 ms  0x2796 ret:0x100
   924 ms  0x2796 SECKEY_CreateECPrivateKey()
   924 ms  0x2796 cx:0x7f1750aeaf48
   925 ms     | 0x2796 EC_ValidatePublicKey()
   926 ms     | 0x2796 ret:0x0
   926 ms  0x2796 ret:0x7f1750b6c020::7f1750b6c020  40 f7 bf 50                                      @..P
   927 ms  0x2796 PK11_PubDeriveWithKDF()
   927 ms  0x2796 seckey:0x7f1750b6c020
   927 ms     | 0x2796 EC_ValidatePublicKey()
   928 ms     | 0x2796 ret:0x0
   929 ms  0x2796 ret:0x7f17524f4080
   929 ms  0x2796 PK11_DeriveWithFlags()
   929 ms  0x2796 basekey:0x7f17524f4080
   929 ms     | 0x2796 PK11_DeriveWithTemplate()
   930 ms  0x2796 ret:0x7f1750bfd600
   930 ms  0x2796 PK11_Derive()
   930 ms  0x2796 basekey:0x7f1750bfd600
   930 ms     | 0x2796 PK11_DeriveWithTemplate()
   930 ms  0x2796 ret:0x7f1750bfd700
   930 ms  0x2796 SECKEY_DestroyPrivateKey()
   930 ms  0x2796 privk:0x7f1750b6c020::7f1750b6c020  40 f7 bf 50                                      @..P
   930 ms  0x2796 privk:0x7f1750b6c020::7f1750b6c020  e5 e5 e5 e5                                      ....
   930 ms  0x2796 PK11_Encrypt()
   930 ms  0x2796 symkey:0x7f1750bfd880
   930 ms  0x2796 PR_Connect()
   930 ms  0x2796 fd:0x7f1750af5df0
           /* TID 0x27ff */
   982 ms  0x27ff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   983 ms  0x27ff ret:0x0
           /* TID 0x279e */
   983 ms  0x279e PR_Close()
   983 ms  0x279e fd:0x7f1750af5cd0
           /* TID 0x2796 */
   984 ms  0x2796 SSL_AuthCertificateComplete()
   984 ms  0x2796 fd:0x7f1750af5850
   984 ms  0x2796 err:0x0
   984 ms  0x2796 PK11_Encrypt()
   984 ms  0x2796 symkey:0x7f1750bfd880
  1149 ms  0x2796 SECKEY_DestroyPrivateKey()
  1149 ms  0x2796 privk:0x7f1750b63020::7f1750b63020  20 ce bd 50                                       ..P
  1149 ms  0x2796 privk:0x7f1750b63020::7f1750b63020  e5 e5 e5 e5                                      ....
  1149 ms  0x2796 SECKEY_DestroyPrivateKey()
  1149 ms  0x2796 privk:0x7f1750b61020::7f1750b61020  60 cf bd 50                                      `..P
  1149 ms  0x2796 privk:0x7f1750b61020::7f1750b61020  e5 e5 e5 e5                                      ....
  1369 ms  0x2796 SSL_ImportFD()
  1370 ms  0x2796 ret:0x7f1750af5f40
  1370 ms  0x2796 SSL_AuthCertificateHook()
  1370 ms  0x2796 fd:0x7f1750af5f40
  1370 ms  0x2796 ret:0x0
  1370 ms  0x2796 PR_Connect()
  1370 ms  0x2796 fd:0x7f1750af5f40
  1395 ms  0x2796 SECKEY_CreateECPrivateKey()
  1395 ms  0x2796 cx:0x7f1750aebc48
  1397 ms     | 0x2796 EC_ValidatePublicKey()
  1397 ms     | 0x2796 ret:0x0
  1397 ms  0x2796 ret:0x7f1750b62820::7f1750b62820  90 f2 bf 50                                      ...P
  1397 ms  0x2796 SECKEY_CreateECPrivateKey()
  1397 ms  0x2796 cx:0x7f1750aebc48
  1399 ms     | 0x2796 EC_ValidatePublicKey()
  1403 ms     | 0x2796 ret:0x0
  1403 ms  0x2796 ret:0x7f1750b68820::7f1750b68820  b0 f5 bf 50                                      ...P
           /* TID 0x27ff */
  1456 ms  0x27ff _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1456 ms  0x27ff ret:0x0
           /* TID 0x2796 */
  1457 ms  SECKEY_ECParamsToKeySize()
  1457 ms  0x2796 ret:0x100
  1457 ms  0x2796 SECKEY_CreateECPrivateKey()
  1457 ms  0x2796 cx:0x7f1750aebc48
  1459 ms     | 0x2796 EC_ValidatePublicKey()
  1463 ms     | 0x2796 ret:0x0
  1463 ms  0x2796 ret:0x7f1750b6c020::7f1750b6c020  30 f8 bf 50                                      0..P
  1463 ms  0x2796 PK11_PubDeriveWithKDF()
  1463 ms  0x2796 seckey:0x7f1750b6c020
  1463 ms     | 0x2796 EC_ValidatePublicKey()
  1467 ms     | 0x2796 ret:0x0
  1471 ms  0x2796 ret:0x7f17524f4080
  1471 ms  0x2796 PK11_DeriveWithFlags()
  1471 ms  0x2796 basekey:0x7f17524f4080
  1471 ms     | 0x2796 PK11_DeriveWithTemplate()
  1471 ms  0x2796 ret:0x7f1750b92700
  1471 ms  0x2796 PK11_Derive()
  1471 ms  0x2796 basekey:0x7f1750b92700
  1471 ms     | 0x2796 PK11_DeriveWithTemplate()
  1471 ms  0x2796 ret:0x7f1750bfe100
  1471 ms  0x2796 SECKEY_DestroyPrivateKey()
  1471 ms  0x2796 privk:0x7f1750b6c020::7f1750b6c020  30 f8 bf 50                                      0..P
  1471 ms  0x2796 privk:0x7f1750b6c020::7f1750b6c020  e5 e5 e5 e5                                      ....
  1472 ms  0x2796 PK11_Encrypt()
  1472 ms  0x2796 symkey:0x7f1750bfe600
  1472 ms  0x2796 SSL_AuthCertificateComplete()
  1472 ms  0x2796 fd:0x7f1750af5f40
  1472 ms  0x2796 err:0x0
  1472 ms  0x2796 PK11_Encrypt()
  1472 ms  0x2796 symkey:0x7f1750bfe600
  1523 ms  0x2796 SECKEY_DestroyPrivateKey()
  1523 ms  0x2796 privk:0x7f1750b68820::7f1750b68820  b0 f5 bf 50                                      ...P
  1524 ms  0x2796 privk:0x7f1750b68820::7f1750b68820  e5 e5 e5 e5                                      ....
  1524 ms  0x2796 SECKEY_DestroyPrivateKey()
  1524 ms  0x2796 privk:0x7f1750b62820::7f1750b62820  90 f2 bf 50                                      ...P
  1524 ms  0x2796 privk:0x7f1750b62820::7f1750b62820  e5 e5 e5 e5                                      ....
  1528 ms  0x2796 PK11_Encrypt()
  1528 ms  0x2796 symkey:0x7f1750bfe600
  1558 ms  0x2796 PK11_Encrypt()
  1558 ms  0x2796 symkey:0x7f1750bfe600
  1590 ms  0x2796 PK11_Encrypt()
  1590 ms  0x2796 symkey:0x7f1750bfe600
  1631 ms  0x2796 PK11_Encrypt()
  1631 ms  0x2796 symkey:0x7f1750bfe600
  1750 ms  0x2796 PK11_Encrypt()
  1750 ms  0x2796 symkey:0x7f1750bfe600
  1787 ms  0x2796 PK11_Encrypt()
  1787 ms  0x2796 symkey:0x7f1750bfe600
  1819 ms  0x2796 PK11_Encrypt()
  1819 ms  0x2796 symkey:0x7f1750bfe600
           /* TID 0x27f9 */
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13220
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13280
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13220
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13280
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13220
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13280
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13220
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13280
  1847 ms  0x27f9 PR_Close()
  1847 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13220
  1848 ms  0x27f9 PR_Close()
  1848 ms  0x27f9 fd:0x7f173fd13280
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13220
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13280
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13220
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13280
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13220
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13280
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13220
  1849 ms  0x27f9 PR_Close()
  1849 ms  0x27f9 fd:0x7f173fd13280
  1852 ms  0x27f9 PR_Close()
  1852 ms  0x27f9 fd:0x7f173fd13220
  1853 ms  0x27f9 PR_Close()
  1853 ms  0x27f9 fd:0x7f173fd131f0
  1856 ms  0x27f9 PR_Close()
  1856 ms  0x27f9 fd:0x7f173fd131f0
  1856 ms  0x27f9 PR_Close()
  1856 ms  0x27f9 fd:0x7f173fd13220
  1859 ms  0x27f9 PR_Close()
  1859 ms  0x27f9 fd:0x7f173fd13220
  1859 ms  0x27f9 PR_Close()
  1859 ms  0x27f9 fd:0x7f173fd13220
  1865 ms  0x27f9 PR_Close()
  1865 ms  0x27f9 fd:0x7f173fd13220
  1866 ms  0x27f9 PR_Close()
  1866 ms  0x27f9 fd:0x7f173fd13220
  1912 ms  0x27f9 PR_Close()
  1912 ms  0x27f9 fd:0x7f173fd13220
  1913 ms  0x27f9 PR_Close()
  1913 ms  0x27f9 fd:0x7f173fd13220
  1920 ms  0x27f9 PR_Close()
  1920 ms  0x27f9 fd:0x7f173fd13220
  1920 ms  0x27f9 PR_Close()
  1920 ms  0x27f9 fd:0x7f173fd13220
  1927 ms  0x27f9 PR_Close()
  1927 ms  0x27f9 fd:0x7f173fd13220
  1927 ms  0x27f9 PR_Close()
  1927 ms  0x27f9 fd:0x7f173fd13220
  1929 ms  0x27f9 PR_Close()
  1929 ms  0x27f9 fd:0x7f173fd13220
  1929 ms  0x27f9 PR_Close()
  1929 ms  0x27f9 fd:0x7f173fd13220
           /* TID 0x27f6 */
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
  1929 ms  0x27f6 PR_Close()
  1929 ms  0x27f6 fd:0x7f173fd13220
           /* TID 0x27b3 */
  2431 ms  0x27b3 PR_Close()
  2431 ms  0x27b3 fd:0x7f173fd13070
  2434 ms  0x27b3 PR_Close()
  2434 ms  0x27b3 fd:0x7f173fd13070
  2937 ms  0x27b3 PR_Close()
  2937 ms  0x27b3 fd:0x7f173fd131c0
           /* TID 0x279e */
  4264 ms  0x279e PR_Close()
  4264 ms  0x279e fd:0x7f173fd13760
  4264 ms  0x279e PR_Close()
  4264 ms  0x279e fd:0x7f173fd137c0
           /* TID 0x2796 */
  4642 ms  0x2796 SSL_ImportFD()
  4642 ms  0x2796 ret:0x7f175199f5e0
  4642 ms  0x2796 SSL_AuthCertificateHook()
  4642 ms  0x2796 fd:0x7f175199f5e0
  4642 ms  0x2796 ret:0x0
  4643 ms  0x2796 PR_Connect()
  4643 ms  0x2796 fd:0x7f175199f5e0
  4782 ms  0x2796 PR_Close()
  4782 ms  0x2796 fd:0x7f175199f5e0
  4875 ms  0x2796 PR_Close()
  4875 ms  0x2796 fd:0x7f1756b3c310
           /* TID 0x278b */
  4880 ms  0x278b EC_ValidatePublicKey()
  4883 ms  0x278b ret:0x0
  4883 ms  0x278b EC_ValidatePublicKey()
  4884 ms  0x278b ret:0x0
  4885 ms  0x278b EC_ValidatePublicKey()
  4886 ms  0x278b ret:0x0
  4886 ms  0x278b EC_ValidatePublicKey()
  4889 ms  0x278b ret:0x0
  4889 ms  0x278b EC_ValidatePublicKey()
  4890 ms  0x278b ret:0x0
  4890 ms  0x278b EC_ValidatePublicKey()
  4892 ms  0x278b ret:0x0
  4892 ms  0x278b EC_ValidatePublicKey()
  4893 ms  0x278b ret:0x0
  4893 ms  0x278b EC_ValidatePublicKey()
  4894 ms  0x278b ret:0x0
  4894 ms  0x278b EC_ValidatePublicKey()
  4896 ms  0x278b ret:0x0
  4896 ms  0x278b EC_ValidatePublicKey()
  4901 ms  0x278b ret:0x0
           /* TID 0x2796 */
  4901 ms  0x2796 PR_Close()
  4901 ms  0x2796 fd:0x7f1750af5df0
  4906 ms  0x2796 PR_Close()
  4906 ms  0x2796 fd:0x7f1750af5850
  4906 ms     | 0x2796 PK11_Encrypt()
  4906 ms     | 0x2796 symkey:0x7f1750bfd880
  4907 ms  0x2796 PR_Close()
  4907 ms  0x2796 fd:0x7f175108ac70
  4907 ms  0x2796 PR_Close()
  4907 ms  0x2796 fd:0x7f1753b15ca0
  4907 ms     | 0x2796 PK11_Encrypt()
  4907 ms     | 0x2796 symkey:0x7f17524f4200
  4907 ms  0x2796 PR_Close()
  4907 ms  0x2796 fd:0x7f1756b4b8e0
  4907 ms     | 0x2796 PK11_Encrypt()
  4907 ms     | 0x2796 symkey:0x7f1750de3780
  4907 ms  0x2796 PR_Close()
  4907 ms  0x2796 fd:0x7f1750af5f40
  4908 ms     | 0x2796 PK11_Encrypt()
  4908 ms     | 0x2796 symkey:0x7f1750bfe600
           /* TID 0x27f4 */
  4908 ms  0x27f4 PR_Close()
  4908 ms  0x27f4 fd:0x7f173fcc2a60
  4908 ms  0x27f4 PR_Close()
  4908 ms  0x27f4 fd:0x7f173fcc2a60
           /* TID 0x278b */
  4910 ms  0x278b PR_Close()
  4910 ms  0x278b fd:0x7f17524de280
  4910 ms  0x278b PR_Close()
  4910 ms  0x278b fd:0x7f173fcc2c10
  4911 ms  0x278b PR_Close()
  4911 ms  0x278b fd:0x7f173fcc2c70
  4911 ms  0x278b PR_Close()
  4911 ms  0x278b fd:0x7f173fcc2c10
  4911 ms  0x278b PR_Close()
  4911 ms  0x278b fd:0x7f173fcc2c70
  4911 ms  0x278b PR_Close()
  4911 ms  0x278b fd:0x7f173fcc2c10
           /* TID 0x27b3 */
  4914 ms  0x27b3 PR_Close()
  4914 ms  0x27b3 fd:0x7f173fcc2d00
           /* TID 0x278b */
  4936 ms  0x278b PR_Close()
  4936 ms  0x278b fd:0x7f173fcc2c70
  4936 ms  0x278b PR_Close()
  4936 ms  0x278b fd:0x7f1750af5fa0
  4937 ms  0x278b PR_Close()
  4937 ms  0x278b fd:0x7f173fcc2c70
  4937 ms  0x278b PR_Close()
  4937 ms  0x278b fd:0x7f1750af5fa0
  4938 ms  0x278b PR_Close()
  4938 ms  0x278b fd:0x7f175bcc89a0
  4938 ms  0x278b PR_Close()
  4938 ms  0x278b fd:0x7f175bcc88b0
  4938 ms  0x278b PR_Close()
  4938 ms  0x278b fd:0x7f175bcc8a60
  4940 ms  0x278b PR_Close()
  4940 ms  0x278b fd:0x7f1750b8e100
  4941 ms  0x278b PR_Close()
  4941 ms  0x278b fd:0x7f1750b8e100
  4943 ms  0x278b PR_Close()
  4943 ms  0x278b fd:0x7f173fcc2c70
  4943 ms  0x278b PR_Close()
  4943 ms  0x278b fd:0x7f1750b8e8b0
  4944 ms  0x278b PR_Close()
  4944 ms  0x278b fd:0x7f173fcc2c70
  4944 ms  0x278b PR_Close()
  4944 ms  0x278b fd:0x7f1750b8e8b0
  4947 ms  0x278b PR_Close()
  4947 ms  0x278b fd:0x7f1750b8e8e0
  4948 ms  0x278b PR_Close()
  4948 ms  0x278b fd:0x7f1750b8e8e0
  4950 ms  0x278b PR_Close()
  4950 ms  0x278b fd:0x7f173fcc2c70
  4950 ms  0x278b PR_Close()
  4950 ms  0x278b fd:0x7f1750b8eac0
  4951 ms  0x278b PR_Close()
  4951 ms  0x278b fd:0x7f173fcc2c70
  4951 ms  0x278b PR_Close()
  4951 ms  0x278b fd:0x7f1750b8eac0
  4953 ms  0x278b PR_Close()
  4953 ms  0x278b fd:0x7f1750b8eaf0
  4955 ms  0x278b PR_Close()
  4955 ms  0x278b fd:0x7f1750b8eaf0
  4961 ms  0x278b PR_Close()
  4961 ms  0x278b fd:0x7f175108abb0
  4962 ms  0x278b PR_Close()
  4962 ms  0x278b fd:0x7f175108abb0
  4964 ms  0x278b PR_Close()
  4964 ms  0x278b fd:0x7f175108ac70
           /* TID 0x27b3 */
  4970 ms  0x27b3 PR_Close()
  4970 ms  0x27b3 fd:0x7f173fcc2ac0
  4972 ms  0x27b3 PR_Close()
  4972 ms  0x27b3 fd:0x7f173fcc2ac0
           /* TID 0x278b */
  4972 ms  0x278b PR_Close()
  4972 ms  0x278b fd:0x7f173fcc2c70
  4972 ms  0x278b PR_Close()
  4972 ms  0x278b fd:0x7f17519d9430
           /* TID 0x27b3 */
  4977 ms  0x27b3 PR_Close()
  4977 ms  0x27b3 fd:0x7f173fcc2d00
  4998 ms  0x27b3 PR_Close()
  4998 ms  0x27b3 fd:0x7f173fcc2970
           /* TID 0x2790 */
  5012 ms  0x2790 PR_Close()
  5012 ms  0x2790 fd:0x7f175db0bc40
  5016 ms  0x2790 PR_Close()
  5016 ms  0x2790 fd:0x7f1756b4b880
           /* TID 0x27b3 */
  5025 ms  0x27b3 PR_Close()
  5025 ms  0x27b3 fd:0x7f173fdcf550
           /* TID 0x2796 */
  5027 ms  0x2796 PR_Close()
  5027 ms  0x2796 fd:0x7f17519d9670
           /* TID 0x27f4 */
  5028 ms  0x27f4 PR_Close()
  5028 ms  0x27f4 fd:0x7f173fdcf850
  5028 ms  0x27f4 PR_Close()
  5028 ms  0x27f4 fd:0x7f173fdcf850
  5028 ms  0x27f4 PR_Close()
  5028 ms  0x27f4 fd:0x7f173fdcf850
  5028 ms  0x27f4 PR_Close()
  5028 ms  0x27f4 fd:0x7f173fdcf880
           /* TID 0x27b3 */
  5029 ms  0x27b3 PR_Close()
  5029 ms  0x27b3 fd:0x7f173fdcf880
           /* TID 0x279e */
  5031 ms  0x279e PR_Close()
  5031 ms  0x279e fd:0x7f1750b9c670
  5031 ms  0x279e PR_Close()
  5031 ms  0x279e fd:0x7f1750b9c910
           /* TID 0x2790 */
  5039 ms  0x2790 PR_Close()
  5039 ms  0x2790 fd:0x7f1756b3c610
           /* TID 0x278b */
  5041 ms  0x278b PR_Close()
  5041 ms  0x278b fd:0x7f173fcc2ac0
  5041 ms  0x278b PR_Close()
  5041 ms  0x278b fd:0x7f1750b9ca60
           /* TID 0x27b3 */
  5043 ms  0x27b3 PR_Close()
  5043 ms  0x27b3 fd:0x7f1750b9cac0
  5045 ms  0x27b3 PR_Close()
  5045 ms  0x27b3 fd:0x7f1750b9c4c0
  5070 ms  0x27b3 PR_Close()
  5070 ms  0x27b3 fd:0x7f1750af5e20
  5088 ms  0x27b3 PR_Close()
  5088 ms  0x27b3 fd:0x7f1750af5e20
  5113 ms  0x27b3 PR_Close()
  5113 ms  0x27b3 fd:0x7f1750b9c580
  5114 ms  0x27b3 PR_Close()
  5114 ms  0x27b3 fd:0x7f1750b9c5b0
  5123 ms  0x27b3 PR_Close()
  5123 ms  0x27b3 fd:0x7f1750b9cb20
  5128 ms  0x27b3 PR_Close()
  5128 ms  0x27b3 fd:0x7f175108a0d0
  5135 ms  0x27b3 PR_Close()
  5135 ms  0x27b3 fd:0x7f175108a580
  5145 ms  0x27b3 PR_Close()
  5145 ms  0x27b3 fd:0x7f175108a6a0
  5146 ms  0x27b3 PR_Close()
  5146 ms  0x27b3 fd:0x7f175108a6a0
           /* TID 0x278b */
  5308 ms  0x278b PR_Close()
  5308 ms  0x278b fd:0x7f173fcc20d0
  5309 ms  0x278b PR_Close()
  5309 ms  0x278b fd:0x7f173fcc20d0
  5320 ms  0x278b PR_Close()
  5320 ms  0x278b fd:0x7f1778fda130
  5320 ms  0x278b PR_Close()
  5320 ms  0x278b fd:0x7f1778fda190
Process terminated
