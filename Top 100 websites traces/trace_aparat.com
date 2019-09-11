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
           /* TID 0x2eb9 */
   380 ms  0x2eb9 SSL_ImportFD()
   380 ms  0x2eb9 ret:0x7f6101cd9dc0
   380 ms  0x2eb9 SSL_AuthCertificateHook()
   380 ms  0x2eb9 fd:0x7f6101cd9dc0
   380 ms  0x2eb9 ret:0x0
   380 ms  0x2eb9 PR_Connect()
   380 ms  0x2eb9 fd:0x7f6101cd9dc0
   592 ms  0x2eb9 SECKEY_CreateECPrivateKey()
   592 ms  0x2eb9 cx:0x7f6101ce2e28
   594 ms     | 0x2eb9 EC_ValidatePublicKey()
   594 ms     | 0x2eb9 ret:0x0
   594 ms  0x2eb9 ret:0x7f6101c95820::7f6101c95820  60 2f 95 11                                      `/..
   594 ms  0x2eb9 SECKEY_CreateECPrivateKey()
   594 ms  0x2eb9 cx:0x7f6101ce2e28
   598 ms     | 0x2eb9 EC_ValidatePublicKey()
   602 ms     | 0x2eb9 ret:0x0
   602 ms  0x2eb9 ret:0x7f6101c97820::7f6101c97820  f0 d1 cd 01                                      ....
           /* TID 0x2ed3 */
   855 ms  0x2ed3 PR_Close()
   855 ms  0x2ed3 fd:0x7f6101cf96a0
           /* TID 0x2eb9 */
  1326 ms  SECKEY_ECParamsToKeySize()
  1326 ms  0x2eb9 ret:0x100
  1326 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1326 ms  0x2eb9 cx:0x7f6101ce2e28
  1330 ms     | 0x2eb9 EC_ValidatePublicKey()
  1334 ms     | 0x2eb9 ret:0x0
  1334 ms  0x2eb9 ret:0x7f6101ca1020::7f6101ca1020  30 dd cd 01                                      0...
  1335 ms  0x2eb9 PK11_PubDeriveWithKDF()
  1335 ms  0x2eb9 seckey:0x7f6101ca1020
  1335 ms     | 0x2eb9 EC_ValidatePublicKey()
  1338 ms     | 0x2eb9 ret:0x0
  1346 ms  0x2eb9 ret:0x7f6102e19c00
  1346 ms  0x2eb9 PK11_DeriveWithFlags()
  1346 ms  0x2eb9 basekey:0x7f6102e19c00
  1346 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1346 ms  0x2eb9 ret:0x7f61071ec600
  1346 ms  0x2eb9 PK11_Derive()
  1346 ms  0x2eb9 basekey:0x7f61071ec600
  1346 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1346 ms  0x2eb9 ret:0x7f61071ec700
  1347 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1347 ms  0x2eb9 privk:0x7f6101ca1020::7f6101ca1020  30 dd cd 01                                      0...
  1347 ms  0x2eb9 privk:0x7f6101ca1020::7f6101ca1020  e5 e5 e5 e5                                      ....
  1347 ms  0x2eb9 PK11_Encrypt()
  1347 ms  0x2eb9 symkey:0x7f61071ec880
  1347 ms  0x2eb9 SSL_AuthCertificateComplete()
  1347 ms  0x2eb9 fd:0x7f6103aa5520
  1347 ms  0x2eb9 err:0x0
  1347 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  1347 ms     | 0x2eb9 privk:0x7f6103560020::7f6103560020  10 fa 5d 03                                      ..].
  1348 ms     | 0x2eb9 privk:0x7f6103560020::7f6103560020  e5 e5 e5 e5                                      ....
  1348 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  1348 ms     | 0x2eb9 privk:0x7f610355e020::7f610355e020  b0 f5 5d 03                                      ..].
  1348 ms     | 0x2eb9 privk:0x7f610355e020::7f610355e020  e5 e5 e5 e5                                      ....
  1348 ms  0x2eb9 SSL_AuthCertificateComplete()
  1348 ms  0x2eb9 fd:0x7f6102ea7e50
  1348 ms  0x2eb9 err:0x0
  1348 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  1348 ms     | 0x2eb9 privk:0x7f6102eea020::7f6102eea020  f0 61 64 02                                      .ad.
  1348 ms     | 0x2eb9 privk:0x7f6102eea020::7f6102eea020  e5 e5 e5 e5                                      ....
  1348 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  1348 ms     | 0x2eb9 privk:0x7f6102ee8020::7f6102ee8020  70 ae eb 02                                      p...
  1348 ms     | 0x2eb9 privk:0x7f6102ee8020::7f6102ee8020  e5 e5 e5 e5                                      ....
  1349 ms  0x2eb9 PK11_Encrypt()
  1349 ms  0x2eb9 symkey:0x7f61022e3900
  1349 ms  0x2eb9 PK11_Encrypt()
  1349 ms  0x2eb9 symkey:0x7f6102eae280
  1350 ms  0x2eb9 PR_Connect()
  1350 ms  0x2eb9 fd:0x7f6101cf9e20
  1382 ms  0x2eb9 PR_Close()
  1382 ms  0x2eb9 fd:0x7f6102ea7e50
  1382 ms     | 0x2eb9 PK11_Encrypt()
  1382 ms     | 0x2eb9 symkey:0x7f61022e3900
  1383 ms  0x2eb9 SSL_ImportFD()
  1383 ms  0x2eb9 ret:0x7f6102ea79d0
  1383 ms  0x2eb9 SSL_AuthCertificateHook()
  1383 ms  0x2eb9 fd:0x7f6102ea79d0
  1383 ms  0x2eb9 ret:0x0
  1384 ms  0x2eb9 PR_Connect()
  1384 ms  0x2eb9 fd:0x7f6102ea79d0
           /* TID 0x2ec1 */
  1409 ms  0x2ec1 PR_Close()
  1409 ms  0x2ec1 fd:0x7f6101cf96a0
           /* TID 0x2f1d */
  1409 ms  0x2f1d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1410 ms  0x2f1d ret:0x0
           /* TID 0x2eb9 */
  1410 ms  0x2eb9 SSL_AuthCertificateComplete()
  1410 ms  0x2eb9 fd:0x7f6101cd9dc0
  1410 ms  0x2eb9 err:0x0
  1415 ms  0x2eb9 PK11_Encrypt()
  1415 ms  0x2eb9 symkey:0x7f61071ec880
  1415 ms  0x2eb9 PR_Close()
  1415 ms  0x2eb9 fd:0x7f6103aa5520
  1415 ms     | 0x2eb9 PK11_Encrypt()
  1415 ms     | 0x2eb9 symkey:0x7f6102eae280
  1416 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1416 ms  0x2eb9 cx:0x7f61071e28c8
  1417 ms     | 0x2eb9 EC_ValidatePublicKey()
  1417 ms     | 0x2eb9 ret:0x0
  1417 ms  0x2eb9 ret:0x7f6101c9e820::7f6101c9e820  b0 60 64 02                                      .`d.
  1418 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1418 ms  0x2eb9 cx:0x7f61071e28c8
  1419 ms     | 0x2eb9 EC_ValidatePublicKey()
  1432 ms     | 0x2eb9 ret:0x0
  1432 ms  0x2eb9 ret:0x7f6101ca2820::7f6101ca2820  b0 df cd 01                                      ....
  1459 ms  0x2eb9 PK11_Derive()
  1459 ms  0x2eb9 basekey:0x7f6102eae080
  1459 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1459 ms  0x2eb9 ret:0x7f6102eae100
  1482 ms  0x2eb9 PK11_Encrypt()
  1482 ms  0x2eb9 symkey:0x7f6102eae180
  1484 ms  0x2eb9 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1484 ms  0x2eb9 ret:0x0
  1484 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1484 ms  0x2eb9 privk:0x7f6101ca2820::7f6101ca2820  b0 df cd 01                                      ....
  1484 ms  0x2eb9 privk:0x7f6101ca2820::7f6101ca2820  e5 e5 e5 e5                                      ....
  1485 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1485 ms  0x2eb9 privk:0x7f6101c9e820::7f6101c9e820  b0 60 64 02                                      .`d.
  1485 ms  0x2eb9 privk:0x7f6101c9e820::7f6101c9e820  e5 e5 e5 e5                                      ....
  1485 ms  0x2eb9 PK11_Encrypt()
  1485 ms  0x2eb9 symkey:0x7f6102eae180
  1512 ms  0x2eb9 SSL_ImportFD()
  1512 ms  0x2eb9 ret:0x7f61071ff0d0
  1512 ms  0x2eb9 SSL_AuthCertificateHook()
  1512 ms  0x2eb9 fd:0x7f61071ff0d0
  1512 ms  0x2eb9 ret:0x0
  1512 ms  0x2eb9 PR_Connect()
  1512 ms  0x2eb9 fd:0x7f61071ff0d0
           /* TID 0x2ec1 */
  1541 ms  0x2ec1 PR_Close()
  1541 ms  0x2ec1 fd:0x7f6101cf9f40
           /* TID 0x2eb9 */
  1564 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1564 ms  0x2eb9 privk:0x7f6101c97820::7f6101c97820  f0 d1 cd 01                                      ....
  1564 ms  0x2eb9 privk:0x7f6101c97820::7f6101c97820  e5 e5 e5 e5                                      ....
  1564 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1564 ms  0x2eb9 privk:0x7f6101c95820::7f6101c95820  60 2f 95 11                                      `/..
  1564 ms  0x2eb9 privk:0x7f6101c95820::7f6101c95820  e5 e5 e5 e5                                      ....
  1719 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1719 ms  0x2eb9 cx:0x7f61071e2a68
  1720 ms     | 0x2eb9 EC_ValidatePublicKey()
  1720 ms     | 0x2eb9 ret:0x0
  1720 ms  0x2eb9 ret:0x7f6101c95820::7f6101c95820  b0 2f 62 02                                      ./b.
  1720 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1720 ms  0x2eb9 cx:0x7f61071e2a68
  1726 ms     | 0x2eb9 EC_ValidatePublicKey()
  1730 ms     | 0x2eb9 ret:0x0
  1730 ms  0x2eb9 ret:0x7f6101c97820::7f6101c97820  50 61 64 02                                      Pad.
  1824 ms  0x2eb9 SSL_ImportFD()
  1824 ms  0x2eb9 ret:0x7f61071ff1c0
  1824 ms  0x2eb9 SSL_AuthCertificateHook()
  1824 ms  0x2eb9 fd:0x7f61071ff1c0
  1824 ms  0x2eb9 ret:0x0
  1825 ms  0x2eb9 PR_Connect()
  1825 ms  0x2eb9 fd:0x7f61071ff1c0
  1850 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1850 ms  0x2eb9 cx:0x7f61071e2c08
  1851 ms     | 0x2eb9 EC_ValidatePublicKey()
  1851 ms     | 0x2eb9 ret:0x0
  1851 ms  0x2eb9 ret:0x7f6101ca4020::7f6101ca4020  20 f9 5d 03                                       .].
  1852 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1852 ms  0x2eb9 cx:0x7f61071e2c08
  1853 ms     | 0x2eb9 EC_ValidatePublicKey()
  1857 ms     | 0x2eb9 ret:0x0
  1857 ms  0x2eb9 ret:0x7f6101ca6020::7f6101ca6020  60 20 95 06                                      ` ..
           /* TID 0x2f1f */
  1909 ms  0x2f1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1910 ms  0x2f1f ret:0x0
           /* TID 0x2eb9 */
  1911 ms  SECKEY_ECParamsToKeySize()
  1911 ms  0x2eb9 ret:0x100
  1911 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1911 ms  0x2eb9 cx:0x7f61071e2c08
           /* TID 0x2ed3 */
  1914 ms  0x2ed3 PR_Close()
  1914 ms  0x2ed3 fd:0x7f61071ffc10
           /* TID 0x2eb9 */
  1916 ms     | 0x2eb9 EC_ValidatePublicKey()
           /* TID 0x2ed3 */
  1916 ms  0x2ed3 PR_Close()
  1916 ms  0x2ed3 fd:0x7f61071ffc10
           /* TID 0x2eb9 */
  1921 ms     | 0x2eb9 ret:0x0
  1921 ms  0x2eb9 ret:0x7f6101ca9020::7f6101ca9020  20 69 18 07                                       i..
  1921 ms  0x2eb9 PK11_PubDeriveWithKDF()
  1921 ms  0x2eb9 seckey:0x7f6101ca9020
  1921 ms     | 0x2eb9 EC_ValidatePublicKey()
  1925 ms     | 0x2eb9 ret:0x0
  1929 ms  0x2eb9 ret:0x7f61022e3780
  1929 ms  0x2eb9 PK11_DeriveWithFlags()
  1929 ms  0x2eb9 basekey:0x7f61022e3780
  1929 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1929 ms  0x2eb9 ret:0x7f61022e3700
  1929 ms  0x2eb9 PK11_Derive()
  1929 ms  0x2eb9 basekey:0x7f61022e3700
  1929 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1929 ms  0x2eb9 ret:0x7f6102e19c00
  1929 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1929 ms  0x2eb9 privk:0x7f6101ca9020::7f6101ca9020  20 69 18 07                                       i..
  1929 ms  0x2eb9 privk:0x7f6101ca9020::7f6101ca9020  e5 e5 e5 e5                                      ....
  1930 ms  0x2eb9 PK11_Encrypt()
  1930 ms  0x2eb9 symkey:0x7f61022e3800
  1930 ms  0x2eb9 SSL_AuthCertificateComplete()
  1930 ms  0x2eb9 fd:0x7f61071ff1c0
  1930 ms  0x2eb9 err:0x0
  1930 ms  0x2eb9 PK11_Encrypt()
  1930 ms  0x2eb9 symkey:0x7f61022e3800
  1941 ms  SECKEY_ECParamsToKeySize()
  1941 ms  0x2eb9 ret:0x100
  1941 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  1941 ms  0x2eb9 cx:0x7f61071e2a68
  1942 ms     | 0x2eb9 EC_ValidatePublicKey()
  1945 ms     | 0x2eb9 ret:0x0
  1945 ms  0x2eb9 ret:0x7f6102ee8820::7f6102ee8820  e0 6c 18 07                                      .l..
  1945 ms  0x2eb9 PK11_PubDeriveWithKDF()
  1945 ms  0x2eb9 seckey:0x7f6102ee8820
  1946 ms     | 0x2eb9 EC_ValidatePublicKey()
  1948 ms     | 0x2eb9 ret:0x0
  1951 ms  0x2eb9 ret:0x7f61022e3780
  1951 ms  0x2eb9 PK11_DeriveWithFlags()
  1951 ms  0x2eb9 basekey:0x7f61022e3780
  1951 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1951 ms  0x2eb9 ret:0x7f61071ed500
  1951 ms  0x2eb9 PK11_Derive()
  1951 ms  0x2eb9 basekey:0x7f61071ed500
  1951 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  1951 ms  0x2eb9 ret:0x7f61071edf00
  1951 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1951 ms  0x2eb9 privk:0x7f6102ee8820::7f6102ee8820  e0 6c 18 07                                      .l..
  1951 ms  0x2eb9 privk:0x7f6102ee8820::7f6102ee8820  e5 e5 e5 e5                                      ....
  1952 ms  0x2eb9 PK11_Encrypt()
  1952 ms  0x2eb9 symkey:0x7f6101dd5180
  1952 ms  0x2eb9 PR_Connect()
  1952 ms  0x2eb9 fd:0x7f61071ffd30
  1981 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1981 ms  0x2eb9 privk:0x7f6101ca6020::7f6101ca6020  60 20 95 06                                      ` ..
  1982 ms  0x2eb9 privk:0x7f6101ca6020::7f6101ca6020  e5 e5 e5 e5                                      ....
  1982 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  1982 ms  0x2eb9 privk:0x7f6101ca4020::7f6101ca4020  20 f9 5d 03                                       .].
  1982 ms  0x2eb9 privk:0x7f6101ca4020::7f6101ca4020  e5 e5 e5 e5                                      ....
  1988 ms  0x2eb9 PK11_Encrypt()
  1988 ms  0x2eb9 symkey:0x7f61022e3800
           /* TID 0x2ec1 */
  2006 ms  0x2ec1 PR_Close()
  2006 ms  0x2ec1 fd:0x7f6101d81c70
           /* TID 0x2f1d */
  2006 ms  0x2f1d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  2006 ms  0x2f1d ret:0x0
           /* TID 0x2eb9 */
  2006 ms  0x2eb9 SSL_AuthCertificateComplete()
  2006 ms  0x2eb9 fd:0x7f61071ff0d0
  2006 ms  0x2eb9 err:0x0
  2006 ms  0x2eb9 PK11_Encrypt()
  2006 ms  0x2eb9 symkey:0x7f6101dd5180
  2018 ms  0x2eb9 PK11_Encrypt()
  2018 ms  0x2eb9 symkey:0x7f61022e3800
  2049 ms  0x2eb9 PK11_Encrypt()
  2049 ms  0x2eb9 symkey:0x7f61022e3800
  2078 ms  0x2eb9 PK11_Encrypt()
  2078 ms  0x2eb9 symkey:0x7f61022e3800
  2161 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  2161 ms  0x2eb9 privk:0x7f6101c97820::7f6101c97820  50 61 64 02                                      Pad.
  2162 ms  0x2eb9 privk:0x7f6101c97820::7f6101c97820  e5 e5 e5 e5                                      ....
  2162 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  2162 ms  0x2eb9 privk:0x7f6101c95820::7f6101c95820  b0 2f 62 02                                      ./b.
  2162 ms  0x2eb9 privk:0x7f6101c95820::7f6101c95820  e5 e5 e5 e5                                      ....
  2193 ms  0x2eb9 PK11_Encrypt()
  2193 ms  0x2eb9 symkey:0x7f61022e3800
  2228 ms  0x2eb9 PK11_Encrypt()
  2228 ms  0x2eb9 symkey:0x7f61022e3800
  2261 ms  0x2eb9 PK11_Encrypt()
  2261 ms  0x2eb9 symkey:0x7f61022e3800
           /* TID 0x2f11 */
  2290 ms  0x2f11 PR_Close()
  2290 ms  0x2f11 fd:0x7f6101d41220
  2290 ms  0x2f11 PR_Close()
  2290 ms  0x2f11 fd:0x7f6101d41280
  2290 ms  0x2f11 PR_Close()
  2290 ms  0x2f11 fd:0x7f6101d41220
  2290 ms  0x2f11 PR_Close()
  2290 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41280
  2291 ms  0x2f11 PR_Close()
  2291 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41220
  2292 ms  0x2f11 PR_Close()
  2292 ms  0x2f11 fd:0x7f6101d41280
  2293 ms  0x2f11 PR_Close()
  2293 ms  0x2f11 fd:0x7f6101d41220
  2293 ms  0x2f11 PR_Close()
  2293 ms  0x2f11 fd:0x7f6101d41280
  2297 ms  0x2f11 PR_Close()
  2297 ms  0x2f11 fd:0x7f6101d41220
  2297 ms  0x2f11 PR_Close()
  2297 ms  0x2f11 fd:0x7f6101d41220
  2300 ms  0x2f11 PR_Close()
  2300 ms  0x2f11 fd:0x7f6101d41220
  2300 ms  0x2f11 PR_Close()
  2300 ms  0x2f11 fd:0x7f6101d41250
  2302 ms  0x2f11 PR_Close()
  2302 ms  0x2f11 fd:0x7f6101d41250
  2303 ms  0x2f11 PR_Close()
  2303 ms  0x2f11 fd:0x7f6101d41250
  2307 ms  0x2f11 PR_Close()
  2307 ms  0x2f11 fd:0x7f6101d41250
  2307 ms  0x2f11 PR_Close()
  2307 ms  0x2f11 fd:0x7f6101d41250
  2353 ms  0x2f11 PR_Close()
  2353 ms  0x2f11 fd:0x7f6101d41250
  2354 ms  0x2f11 PR_Close()
  2354 ms  0x2f11 fd:0x7f6101d41250
  2361 ms  0x2f11 PR_Close()
  2361 ms  0x2f11 fd:0x7f6101d41250
  2362 ms  0x2f11 PR_Close()
  2362 ms  0x2f11 fd:0x7f6101d41250
           /* TID 0x2ec1 */
  2368 ms  0x2ec1 PR_Close()
  2368 ms  0x2ec1 fd:0x7f6101d412b0
           /* TID 0x2f11 */
  2370 ms  0x2f11 PR_Close()
  2370 ms  0x2f11 fd:0x7f6101d41250
  2370 ms  0x2f11 PR_Close()
  2370 ms  0x2f11 fd:0x7f6101d41250
  2371 ms  0x2f11 PR_Close()
  2371 ms  0x2f11 fd:0x7f6101d41250
  2372 ms  0x2f11 PR_Close()
  2372 ms  0x2f11 fd:0x7f6101d41250
           /* TID 0x2f0e */
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
  2372 ms  0x2f0e PR_Close()
  2372 ms  0x2f0e fd:0x7f6101d41250
           /* TID 0x2ed3 */
  2504 ms  0x2ed3 PR_Close()
  2504 ms  0x2ed3 fd:0x7f6101d411f0
  2506 ms  0x2ed3 PR_Close()
  2506 ms  0x2ed3 fd:0x7f6101d411f0
  2829 ms  0x2ed3 PR_Close()
  2829 ms  0x2ed3 fd:0x7f6101d41250
           /* TID 0x2ec1 */
  4218 ms  0x2ec1 PR_Close()
  4218 ms  0x2ec1 fd:0x7f6101d41280
           /* TID 0x2eb9 */
  4609 ms  0x2eb9 SSL_ImportFD()
  4609 ms  0x2eb9 ret:0x7f6102f9b2b0
  4609 ms  0x2eb9 SSL_AuthCertificateHook()
  4609 ms  0x2eb9 fd:0x7f6102f9b2b0
  4609 ms  0x2eb9 ret:0x0
  4609 ms  0x2eb9 PR_Connect()
  4609 ms  0x2eb9 fd:0x7f6102f9b2b0
  4662 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  4662 ms  0x2eb9 cx:0x7f61071e30e8
  4667 ms     | 0x2eb9 EC_ValidatePublicKey()
  4667 ms     | 0x2eb9 ret:0x0
  4667 ms  0x2eb9 ret:0x7f60f0a1e020::7f60f0a1e020  30 98 f8 02                                      0...
  4667 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  4667 ms  0x2eb9 cx:0x7f61071e30e8
  4669 ms     | 0x2eb9 EC_ValidatePublicKey()
  4676 ms     | 0x2eb9 ret:0x0
  4676 ms  0x2eb9 ret:0x7f60f0a20020::7f60f0a20020  b0 95 f8 02                                      ....
  4730 ms  0x2eb9 PK11_Derive()
  4730 ms  0x2eb9 basekey:0x7f61022e3780
  4731 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4731 ms  0x2eb9 ret:0x7f6102f98000
  4731 ms  0x2eb9 PK11_PubDeriveWithKDF()
  4731 ms  0x2eb9 seckey:0x7f60f0a1e020
  4731 ms     | 0x2eb9 EC_ValidatePublicKey()
  4731 ms     | 0x2eb9 ret:0x0
  4733 ms  0x2eb9 ret:0x7f61022e3780
  4733 ms  SECKEY_ECParamsToKeySize()
  4733 ms  0x2eb9 ret:0xff
  4733 ms  0x2eb9 PK11_DeriveWithFlags()
  4733 ms  0x2eb9 basekey:0x7f6102f98000
  4733 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4733 ms  0x2eb9 ret:0x7f6102f98080
  4733 ms  0x2eb9 PK11_Derive()
  4733 ms  0x2eb9 basekey:0x7f61022e3780
  4733 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4733 ms  0x2eb9 ret:0x7f6102f98100
  4733 ms  0x2eb9 PK11_DeriveWithFlags()
  4733 ms  0x2eb9 basekey:0x7f6102f98100
  4733 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4733 ms  0x2eb9 ret:0x7f6102f98000
  4733 ms  0x2eb9 PK11_DeriveWithFlags()
  4733 ms  0x2eb9 basekey:0x7f6102f98100
  4733 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4733 ms  0x2eb9 ret:0x7f61022e3780
  4733 ms  0x2eb9 PK11_DeriveWithFlags()
  4733 ms  0x2eb9 basekey:0x7f6102f98100
  4733 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4733 ms  0x2eb9 ret:0x7f6102f98080
  4733 ms  0x2eb9 PK11_Derive()
  4733 ms  0x2eb9 basekey:0x7f6102f98180
  4734 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4734 ms  0x2eb9 ret:0x7f6102f98200
  4734 ms  0x2eb9 PK11_DeriveWithFlags()
  4734 ms  0x2eb9 basekey:0x7f61022e3780
  4734 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4734 ms  0x2eb9 ret:0x7f6102f98100
  4734 ms  0x2eb9 PK11_DeriveWithFlags()
  4734 ms  0x2eb9 basekey:0x7f61022e3780
  4734 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4734 ms  0x2eb9 ret:0x7f6102f98080
  4740 ms  0x2eb9 PK11_DeriveWithFlags()
  4740 ms  0x2eb9 basekey:0x7f61022e3780
  4740 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4740 ms  0x2eb9 ret:0x7f6102f98080
  4741 ms  0x2eb9 PR_Connect()
  4741 ms  0x2eb9 fd:0x7f6102f9b790
           /* TID 0x2ec1 */
  4832 ms  0x2ec1 PR_Close()
  4832 ms  0x2ec1 fd:0x7f6102f9b310
           /* TID 0x2f1f */
  4832 ms  0x2f1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4833 ms  0x2f1f ret:0x0
           /* TID 0x2eb9 */
  4875 ms  0x2eb9 SSL_AuthCertificateComplete()
  4875 ms  0x2eb9 fd:0x7f6102f9b2b0
  4875 ms  0x2eb9 err:0x0
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98200
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4875 ms     | 0x2eb9 ret:0x7f6102f98080
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98200
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4875 ms     | 0x2eb9 ret:0x7f6102f98180
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98200
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4875 ms     | 0x2eb9 ret:0x7f6102f97a80
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98000
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4875 ms     | 0x2eb9 ret:0x7f6102f97c00
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98000
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4875 ms     | 0x2eb9 ret:0x7f6102f97d00
  4875 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4875 ms     | 0x2eb9 basekey:0x7f6102f98180
  4875 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f97d00
  4876 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4876 ms     | 0x2eb9 basekey:0x7f6102f98180
  4876 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f98580
  4876 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4876 ms     | 0x2eb9 basekey:0x7f6102f98000
  4876 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f98100
  4876 ms     | 0x2eb9 PK11_Encrypt()
  4876 ms     | 0x2eb9 symkey:0x7f6102f97c00
  4876 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4876 ms     | 0x2eb9 basekey:0x7f6102f98080
  4876 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f98100
  4876 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4876 ms     | 0x2eb9 basekey:0x7f6102f98080
  4876 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f98580
  4876 ms     | 0x2eb9 PK11_DeriveWithFlags()
  4876 ms     | 0x2eb9 basekey:0x7f6102f98200
  4876 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  4876 ms     | 0x2eb9 ret:0x7f6102f97c00
  4876 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  4876 ms     | 0x2eb9 privk:0x7f60f0a20020::7f60f0a20020  b0 95 f8 02                                      ....
  4877 ms     | 0x2eb9 privk:0x7f60f0a20020::7f60f0a20020  e5 e5 e5 e5                                      ....
  4877 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  4877 ms     | 0x2eb9 privk:0x7f60f0a1e020::7f60f0a1e020  30 98 f8 02                                      0...
  4877 ms     | 0x2eb9 privk:0x7f60f0a1e020::7f60f0a1e020  e5 e5 e5 e5                                      ....
  4877 ms  0x2eb9 PK11_Encrypt()
  4877 ms  0x2eb9 symkey:0x7f6102f98100
  4929 ms  0x2eb9 PK11_DeriveWithFlags()
  4929 ms  0x2eb9 basekey:0x7f6102f97c00
  4929 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4929 ms  0x2eb9 ret:0x7f61022e3780
  4930 ms  0x2eb9 PK11_DeriveWithFlags()
  4930 ms  0x2eb9 basekey:0x7f6102f97c00
  4930 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  4930 ms  0x2eb9 ret:0x7f61022e3780
           /* TID 0x2ed0 */
  5817 ms  0x2ed0 PR_Close()
  5817 ms  0x2ed0 fd:0x7f6102f9bbb0
           /* TID 0x2eb9 */
  5863 ms  0x2eb9 SSL_ImportFD()
  5863 ms  0x2eb9 ret:0x7f60f0aedaf0
  5863 ms  0x2eb9 SSL_AuthCertificateHook()
  5863 ms  0x2eb9 fd:0x7f60f0aedaf0
  5863 ms  0x2eb9 ret:0x0
  5863 ms  0x2eb9 PR_Connect()
  5863 ms  0x2eb9 fd:0x7f60f0aedaf0
  5864 ms  0x2eb9 SSL_ImportFD()
  5864 ms  0x2eb9 ret:0x7f60f0aedcd0
  5864 ms  0x2eb9 SSL_AuthCertificateHook()
  5864 ms  0x2eb9 fd:0x7f60f0aedcd0
  5864 ms  0x2eb9 ret:0x0
  5864 ms  0x2eb9 PR_Connect()
  5864 ms  0x2eb9 fd:0x7f60f0aedcd0
  5864 ms  0x2eb9 SSL_ImportFD()
  5864 ms  0x2eb9 ret:0x7f60f0aedeb0
  5864 ms  0x2eb9 SSL_AuthCertificateHook()
  5864 ms  0x2eb9 fd:0x7f60f0aedeb0
  5864 ms  0x2eb9 ret:0x0
  5864 ms  0x2eb9 PR_Connect()
  5864 ms  0x2eb9 fd:0x7f60f0aedeb0
  5864 ms  0x2eb9 SSL_ImportFD()
  5864 ms  0x2eb9 ret:0x7f61019a4070
  5864 ms  0x2eb9 SSL_AuthCertificateHook()
  5864 ms  0x2eb9 fd:0x7f61019a4070
  5864 ms  0x2eb9 ret:0x0
  5864 ms  0x2eb9 PR_Connect()
  5864 ms  0x2eb9 fd:0x7f61019a4070
  5886 ms  0x2eb9 PK11_Encrypt()
  5886 ms  0x2eb9 symkey:0x7f6102f98100
           /* TID 0x2ec1 */
  5887 ms  0x2ec1 PR_Close()
  5887 ms  0x2ec1 fd:0x7f60f0912820
           /* TID 0x2eb9 */
  5916 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5916 ms  0x2eb9 cx:0x7f61071e3288
  5918 ms     | 0x2eb9 EC_ValidatePublicKey()
  5918 ms     | 0x2eb9 ret:0x0
  5918 ms  0x2eb9 ret:0x7f610197a820::7f610197a820  10 5f 99 f0                                      ._..
  5918 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5918 ms  0x2eb9 cx:0x7f61071e3288
  5921 ms     | 0x2eb9 EC_ValidatePublicKey()
  5924 ms     | 0x2eb9 ret:0x0
  5924 ms  0x2eb9 ret:0x7f610197c820::7f610197c820  50 a1 af f0                                      P...
  5925 ms  0x2eb9 PK11_Derive()
  5925 ms  0x2eb9 basekey:0x7f6102f98000
  5925 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5925 ms  0x2eb9 ret:0x7f61022e3780
  5925 ms  0x2eb9 PK11_DeriveWithFlags()
  5925 ms  0x2eb9 basekey:0x7f61022e3780
  5925 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5925 ms  0x2eb9 ret:0x7f6102f98000
  5925 ms  0x2eb9 PK11_DeriveWithFlags()
  5925 ms  0x2eb9 basekey:0x7f6102f98000
  5925 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5925 ms  0x2eb9 ret:0x7f6102f98200
  5926 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5926 ms  0x2eb9 cx:0x7f61071e35c8
  5927 ms     | 0x2eb9 EC_ValidatePublicKey()
  5927 ms     | 0x2eb9 ret:0x0
  5927 ms  0x2eb9 ret:0x7f610197f020::7f610197f020  50 a6 af f0                                      P...
  5927 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5927 ms  0x2eb9 cx:0x7f61071e35c8
  5929 ms     | 0x2eb9 EC_ValidatePublicKey()
  5933 ms     | 0x2eb9 ret:0x0
  5933 ms  0x2eb9 ret:0x7f6101981020::7f6101981020  c0 a9 af f0                                      ....
  5933 ms  0x2eb9 PK11_Derive()
  5933 ms  0x2eb9 basekey:0x7f6102f98580
  5933 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5933 ms  0x2eb9 ret:0x7f6102f98200
  5933 ms  0x2eb9 PK11_DeriveWithFlags()
  5933 ms  0x2eb9 basekey:0x7f6102f98200
  5933 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5933 ms  0x2eb9 ret:0x7f6102f98580
  5933 ms  0x2eb9 PK11_DeriveWithFlags()
  5933 ms  0x2eb9 basekey:0x7f6102f98580
  5933 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5933 ms  0x2eb9 ret:0x7f60f09bb880
  5935 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5935 ms  0x2eb9 cx:0x7f61071e3768
  5936 ms     | 0x2eb9 EC_ValidatePublicKey()
  5936 ms     | 0x2eb9 ret:0x0
  5936 ms  0x2eb9 ret:0x7f6101983820::7f6101983820  a0 ab af f0                                      ....
  5936 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5936 ms  0x2eb9 cx:0x7f61071e3768
  5938 ms     | 0x2eb9 EC_ValidatePublicKey()
  5946 ms     | 0x2eb9 ret:0x0
  5946 ms  0x2eb9 ret:0x7f6101986020::7f6101986020  20 ae af f0                                       ...
  5946 ms  0x2eb9 PK11_Derive()
  5946 ms  0x2eb9 basekey:0x7f60f09bc180
  5947 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5947 ms  0x2eb9 ret:0x7f60f09bb880
  5947 ms  0x2eb9 PK11_DeriveWithFlags()
  5947 ms  0x2eb9 basekey:0x7f60f09bb880
  5947 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5947 ms  0x2eb9 ret:0x7f60f09bc180
  5947 ms  0x2eb9 PK11_DeriveWithFlags()
  5947 ms  0x2eb9 basekey:0x7f60f09bc180
  5947 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5947 ms  0x2eb9 ret:0x7f60f09bc200
           /* TID 0x2ec1 */
  5949 ms  0x2ec1 PR_Close()
  5949 ms  0x2ec1 fd:0x7f60f09129d0
           /* TID 0x2eb9 */
  5955 ms  0x2eb9 PK11_Encrypt()
  5955 ms  0x2eb9 symkey:0x7f6102f98100
  5956 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5956 ms  0x2eb9 cx:0x7f61071e3aa8
  5956 ms     | 0x2eb9 EC_ValidatePublicKey()
  5956 ms     | 0x2eb9 ret:0x0
  5956 ms  0x2eb9 ret:0x7f60f0b3b820::7f60f0b3b820  40 c2 bd f0                                      @...
  5956 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  5956 ms  0x2eb9 cx:0x7f61071e3aa8
  5957 ms     | 0x2eb9 EC_ValidatePublicKey()
  5959 ms     | 0x2eb9 ret:0x0
  5959 ms  0x2eb9 ret:0x7f60f0b3d820::7f60f0b3d820  10 ca bd f0                                      ....
  5959 ms  0x2eb9 PK11_Derive()
  5959 ms  0x2eb9 basekey:0x7f60f09bc380
  5959 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5959 ms  0x2eb9 ret:0x7f60f09bc200
  5959 ms  0x2eb9 PK11_DeriveWithFlags()
  5959 ms  0x2eb9 basekey:0x7f60f09bc200
  5959 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5959 ms  0x2eb9 ret:0x7f60f09bc380
  5959 ms  0x2eb9 PK11_DeriveWithFlags()
  5959 ms  0x2eb9 basekey:0x7f60f09bc380
  5959 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5959 ms  0x2eb9 ret:0x7f60f09bc400
  5978 ms  0x2eb9 PK11_PubDeriveWithKDF()
  5978 ms  0x2eb9 seckey:0x7f610197a820
  5978 ms     | 0x2eb9 EC_ValidatePublicKey()
  5978 ms     | 0x2eb9 ret:0x0
  5979 ms  0x2eb9 ret:0x7f60f09bc400
  5979 ms  SECKEY_ECParamsToKeySize()
  5979 ms  0x2eb9 ret:0xff
  5979 ms  0x2eb9 PK11_DeriveWithFlags()
  5979 ms  0x2eb9 basekey:0x7f61022e3780
  5979 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5979 ms  0x2eb9 ret:0x7f60f0963e80
  5980 ms  0x2eb9 PK11_Derive()
  5980 ms  0x2eb9 basekey:0x7f60f09bc400
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f09bc480
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc480
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f61022e3780
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc480
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f09bc400
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc480
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f0963e80
  5980 ms  0x2eb9 PK11_Derive()
  5980 ms  0x2eb9 basekey:0x7f60f09bc500
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f09bc580
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc400
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f09bc480
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc400
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5980 ms  0x2eb9 ret:0x7f60f0963e80
  5980 ms  0x2eb9 PK11_DeriveWithFlags()
  5980 ms  0x2eb9 basekey:0x7f60f09bc400
  5980 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f0963e80
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f60f09bc580
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f0963e80
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f60f09bc580
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc500
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f60f09bc580
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc600
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f61022e3780
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc680
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f61022e3780
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc700
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f60f09bc500
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc700
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f60f09bc500
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc780
  5981 ms  0x2eb9 PK11_DeriveWithFlags()
  5981 ms  0x2eb9 basekey:0x7f61022e3780
  5981 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5981 ms  0x2eb9 ret:0x7f60f09bc480
  5982 ms  0x2eb9 PK11_Encrypt()
  5982 ms  0x2eb9 symkey:0x7f60f09bc680
  5982 ms  0x2eb9 PK11_DeriveWithFlags()
  5982 ms  0x2eb9 basekey:0x7f60f0963e80
  5982 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5982 ms  0x2eb9 ret:0x7f60f09bc480
  5982 ms  0x2eb9 PK11_DeriveWithFlags()
  5982 ms  0x2eb9 basekey:0x7f60f0963e80
  5982 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5982 ms  0x2eb9 ret:0x7f60f09bc780
  5982 ms  0x2eb9 PK11_DeriveWithFlags()
  5982 ms  0x2eb9 basekey:0x7f60f09bc580
  5982 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5982 ms  0x2eb9 ret:0x7f60f09bc680
  5984 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  5984 ms  0x2eb9 privk:0x7f610197c820::7f610197c820  50 a1 af f0                                      P...
  5984 ms  0x2eb9 privk:0x7f610197c820::7f610197c820  e5 e5 e5 e5                                      ....
  5984 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  5984 ms  0x2eb9 privk:0x7f610197a820::7f610197a820  10 5f 99 f0                                      ._..
  5984 ms  0x2eb9 privk:0x7f610197a820::7f610197a820  e5 e5 e5 e5                                      ....
  5985 ms  0x2eb9 PK11_Encrypt()
  5985 ms  0x2eb9 symkey:0x7f60f09bc480
  5986 ms  0x2eb9 PK11_PubDeriveWithKDF()
  5986 ms  0x2eb9 seckey:0x7f610197f020
  5986 ms     | 0x2eb9 EC_ValidatePublicKey()
  5986 ms     | 0x2eb9 ret:0x0
  5988 ms  0x2eb9 ret:0x7f60f09bc400
  5988 ms  SECKEY_ECParamsToKeySize()
  5988 ms  0x2eb9 ret:0xff
  5988 ms  0x2eb9 PK11_DeriveWithFlags()
  5988 ms  0x2eb9 basekey:0x7f6102f98200
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f61022e3780
  5988 ms  0x2eb9 PK11_Derive()
  5988 ms  0x2eb9 basekey:0x7f60f09bc400
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f60f09bc580
  5988 ms  0x2eb9 PK11_DeriveWithFlags()
  5988 ms  0x2eb9 basekey:0x7f60f09bc580
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f6102f98200
  5988 ms  0x2eb9 PK11_DeriveWithFlags()
  5988 ms  0x2eb9 basekey:0x7f60f09bc580
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f60f09bc400
  5988 ms  0x2eb9 PK11_DeriveWithFlags()
  5988 ms  0x2eb9 basekey:0x7f60f09bc580
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f61022e3780
  5988 ms  0x2eb9 PK11_Derive()
  5988 ms  0x2eb9 basekey:0x7f60f09bc780
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5988 ms  0x2eb9 ret:0x7f60f09bc800
  5988 ms  0x2eb9 PK11_DeriveWithFlags()
  5988 ms  0x2eb9 basekey:0x7f60f09bc400
  5988 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc580
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc400
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f61022e3780
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc400
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f61022e3780
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc800
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f61022e3780
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc800
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc780
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc800
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc880
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f6102f98200
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc900
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f6102f98200
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc980
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc780
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc980
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f60f09bc780
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bca00
  5989 ms  0x2eb9 PK11_DeriveWithFlags()
  5989 ms  0x2eb9 basekey:0x7f6102f98200
  5989 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5989 ms  0x2eb9 ret:0x7f60f09bc580
  5989 ms  0x2eb9 PK11_Encrypt()
  5989 ms  0x2eb9 symkey:0x7f60f09bc900
  5990 ms  0x2eb9 PK11_DeriveWithFlags()
  5990 ms  0x2eb9 basekey:0x7f61022e3780
  5990 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5990 ms  0x2eb9 ret:0x7f60f09bc580
  5990 ms  0x2eb9 PK11_DeriveWithFlags()
  5990 ms  0x2eb9 basekey:0x7f61022e3780
  5990 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5990 ms  0x2eb9 ret:0x7f60f09bca00
  5990 ms  0x2eb9 PK11_DeriveWithFlags()
  5990 ms  0x2eb9 basekey:0x7f60f09bc800
  5990 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  5990 ms  0x2eb9 ret:0x7f60f09bc900
  5991 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  5991 ms  0x2eb9 privk:0x7f6101981020::7f6101981020  c0 a9 af f0                                      ....
  5991 ms  0x2eb9 privk:0x7f6101981020::7f6101981020  e5 e5 e5 e5                                      ....
  5992 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  5992 ms  0x2eb9 privk:0x7f610197f020::7f610197f020  50 a6 af f0                                      P...
  5992 ms  0x2eb9 privk:0x7f610197f020::7f610197f020  e5 e5 e5 e5                                      ....
  5992 ms  0x2eb9 PK11_Encrypt()
  5992 ms  0x2eb9 symkey:0x7f60f09bc580
  6005 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6005 ms  0x2eb9 seckey:0x7f6101983820
  6005 ms     | 0x2eb9 EC_ValidatePublicKey()
  6005 ms     | 0x2eb9 ret:0x0
  6005 ms  0x2eb9 ret:0x7f60f09bc400
  6006 ms  SECKEY_ECParamsToKeySize()
  6006 ms  0x2eb9 ret:0xff
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bb880
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f6102f98200
  6006 ms  0x2eb9 PK11_Derive()
  6006 ms  0x2eb9 basekey:0x7f60f09bc400
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bc800
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc800
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bb880
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc800
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bc400
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc800
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f6102f98200
  6006 ms  0x2eb9 PK11_Derive()
  6006 ms  0x2eb9 basekey:0x7f60f09bca00
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bca80
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc400
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bc800
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc400
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f6102f98200
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bc400
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f6102f98200
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bca80
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f6102f98200
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bca80
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bca00
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bca80
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bcb00
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bb880
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bcb80
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bb880
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bcc00
  6006 ms  0x2eb9 PK11_DeriveWithFlags()
  6006 ms  0x2eb9 basekey:0x7f60f09bca00
  6006 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6006 ms  0x2eb9 ret:0x7f60f09bcc00
  6007 ms  0x2eb9 PK11_DeriveWithFlags()
  6007 ms  0x2eb9 basekey:0x7f60f09bca00
  6007 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6007 ms  0x2eb9 ret:0x7f60f09bcc80
  6007 ms  0x2eb9 PK11_DeriveWithFlags()
  6007 ms  0x2eb9 basekey:0x7f60f09bb880
  6007 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6007 ms  0x2eb9 ret:0x7f60f09bc800
  6007 ms  0x2eb9 PK11_Encrypt()
  6007 ms  0x2eb9 symkey:0x7f60f09bcb80
  6007 ms  0x2eb9 PK11_DeriveWithFlags()
  6007 ms  0x2eb9 basekey:0x7f6102f98200
  6007 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6007 ms  0x2eb9 ret:0x7f60f09bc800
  6007 ms  0x2eb9 PK11_DeriveWithFlags()
  6007 ms  0x2eb9 basekey:0x7f6102f98200
  6007 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6007 ms  0x2eb9 ret:0x7f60f09bcc80
  6007 ms  0x2eb9 PK11_DeriveWithFlags()
  6007 ms  0x2eb9 basekey:0x7f60f09bca80
  6007 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6007 ms  0x2eb9 ret:0x7f60f09bcb80
  6008 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6008 ms  0x2eb9 privk:0x7f6101986020::7f6101986020  20 ae af f0                                       ...
  6008 ms  0x2eb9 privk:0x7f6101986020::7f6101986020  e5 e5 e5 e5                                      ....
  6008 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6008 ms  0x2eb9 privk:0x7f6101983820::7f6101983820  a0 ab af f0                                      ....
  6008 ms  0x2eb9 privk:0x7f6101983820::7f6101983820  e5 e5 e5 e5                                      ....
           /* TID 0x2ec1 */
  6010 ms  0x2ec1 PR_Close()
  6010 ms  0x2ec1 fd:0x7f60f0aed8e0
           /* TID 0x2eb9 */
  6011 ms  0x2eb9 PK11_Encrypt()
  6011 ms  0x2eb9 symkey:0x7f60f09bc800
  6011 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6011 ms  0x2eb9 seckey:0x7f60f0b3b820
  6012 ms     | 0x2eb9 EC_ValidatePublicKey()
  6012 ms     | 0x2eb9 ret:0x0
  6012 ms  0x2eb9 ret:0x7f60f09bc400
  6012 ms  SECKEY_ECParamsToKeySize()
  6012 ms  0x2eb9 ret:0xff
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bc200
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bb880
  6012 ms  0x2eb9 PK11_Derive()
  6012 ms  0x2eb9 basekey:0x7f60f09bc400
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bca80
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bca80
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bc200
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bca80
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bc400
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bca80
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bb880
  6012 ms  0x2eb9 PK11_Derive()
  6012 ms  0x2eb9 basekey:0x7f60f09bcc80
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bbf80
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bc400
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bca80
  6012 ms  0x2eb9 PK11_DeriveWithFlags()
  6012 ms  0x2eb9 basekey:0x7f60f09bc400
  6012 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6012 ms  0x2eb9 ret:0x7f60f09bb880
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bc400
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bb880
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bbf80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bb880
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bbf80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bcc80
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bbf80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bcd80
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bc200
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bce00
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bc200
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bce80
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bcc80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bce80
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bcc80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bcf00
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bc200
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bca80
  6013 ms  0x2eb9 PK11_Encrypt()
  6013 ms  0x2eb9 symkey:0x7f60f09bce00
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bb880
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bca80
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bb880
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bcf00
  6013 ms  0x2eb9 PK11_DeriveWithFlags()
  6013 ms  0x2eb9 basekey:0x7f60f09bbf80
  6013 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6013 ms  0x2eb9 ret:0x7f60f09bce00
  6014 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6014 ms  0x2eb9 privk:0x7f60f0b3d820::7f60f0b3d820  10 ca bd f0                                      ....
  6014 ms  0x2eb9 privk:0x7f60f0b3d820::7f60f0b3d820  e5 e5 e5 e5                                      ....
  6014 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6014 ms  0x2eb9 privk:0x7f60f0b3b820::7f60f0b3b820  40 c2 bd f0                                      @...
  6014 ms  0x2eb9 privk:0x7f60f0b3b820::7f60f0b3b820  e5 e5 e5 e5                                      ....
  6034 ms  0x2eb9 PK11_DeriveWithFlags()
  6034 ms  0x2eb9 basekey:0x7f60f09bc680
  6034 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6034 ms  0x2eb9 ret:0x7f60f09bc400
  6042 ms  0x2eb9 PK11_DeriveWithFlags()
  6042 ms  0x2eb9 basekey:0x7f60f09bc900
  6042 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6042 ms  0x2eb9 ret:0x7f60f09bc400
  6067 ms  0x2eb9 PK11_DeriveWithFlags()
  6067 ms  0x2eb9 basekey:0x7f60f09bcb80
  6067 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6067 ms  0x2eb9 ret:0x7f60f09bc400
  6068 ms  0x2eb9 PK11_DeriveWithFlags()
  6068 ms  0x2eb9 basekey:0x7f60f09bce00
  6068 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6068 ms  0x2eb9 ret:0x7f60f09bc400
           /* TID 0x2ec1 */
  6097 ms  0x2ec1 PR_Close()
  6097 ms  0x2ec1 fd:0x7f60f0aede80
  6144 ms  0x2ec1 PR_Close()
  6144 ms  0x2ec1 fd:0x7f60f0912490
           /* TID 0x2eb9 */
  6167 ms  0x2eb9 SSL_ImportFD()
  6167 ms  0x2eb9 ret:0x7f61019a47f0
  6167 ms  0x2eb9 SSL_AuthCertificateHook()
  6167 ms  0x2eb9 fd:0x7f61019a47f0
  6167 ms  0x2eb9 ret:0x0
  6167 ms  0x2eb9 PR_Connect()
  6167 ms  0x2eb9 fd:0x7f61019a47f0
  6168 ms  0x2eb9 SSL_ImportFD()
  6168 ms  0x2eb9 ret:0x7f60f0912a30
  6168 ms  0x2eb9 SSL_AuthCertificateHook()
  6168 ms  0x2eb9 fd:0x7f60f0912a30
  6168 ms  0x2eb9 ret:0x0
  6168 ms  0x2eb9 PR_Connect()
  6168 ms  0x2eb9 fd:0x7f60f0912a30
           /* TID 0x2ec1 */
  6169 ms  0x2ec1 PR_Close()
  6169 ms  0x2ec1 fd:0x7f60f0912490
           /* TID 0x2eb9 */
  6198 ms  0x2eb9 SSL_ImportFD()
  6198 ms  0x2eb9 ret:0x7f61019a4e20
  6198 ms  0x2eb9 SSL_AuthCertificateHook()
  6198 ms  0x2eb9 fd:0x7f61019a4e20
  6198 ms  0x2eb9 ret:0x0
  6198 ms  0x2eb9 PR_Connect()
  6198 ms  0x2eb9 fd:0x7f61019a4e20
  6218 ms  0x2eb9 PK11_Encrypt()
  6218 ms  0x2eb9 symkey:0x7f60f09bc800
  6219 ms  0x2eb9 SSL_ImportFD()
  6219 ms  0x2eb9 ret:0x7f60f0b97970
  6219 ms  0x2eb9 SSL_AuthCertificateHook()
  6219 ms  0x2eb9 fd:0x7f60f0b97970
  6219 ms  0x2eb9 ret:0x0
  6220 ms  0x2eb9 PR_Connect()
  6220 ms  0x2eb9 fd:0x7f60f0b97970
  6220 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6220 ms  0x2eb9 cx:0x7f61071e4468
  6220 ms     | 0x2eb9 EC_ValidatePublicKey()
  6220 ms     | 0x2eb9 ret:0x0
  6220 ms  0x2eb9 ret:0x7f60f0b49020::7f60f0b49020  a0 c1 bd f0                                      ....
  6220 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6220 ms  0x2eb9 cx:0x7f61071e4468
  6221 ms     | 0x2eb9 EC_ValidatePublicKey()
  6222 ms     | 0x2eb9 ret:0x0
  6222 ms  0x2eb9 ret:0x7f60f0b4b020::7f60f0b4b020  40 c7 bd f0                                      @...
  6224 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6224 ms  0x2eb9 cx:0x7f61071e42c8
  6225 ms     | 0x2eb9 EC_ValidatePublicKey()
  6225 ms     | 0x2eb9 ret:0x0
  6225 ms  0x2eb9 ret:0x7f60f0b4f820::7f60f0b4f820  b0 60 02 08                                      .`..
  6225 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6225 ms  0x2eb9 cx:0x7f61071e42c8
  6225 ms     | 0x2eb9 EC_ValidatePublicKey()
  6227 ms     | 0x2eb9 ret:0x0
  6227 ms  0x2eb9 ret:0x7f60f0b51820::7f60f0b51820  00 81 82 f0                                      ....
  6237 ms  0x2eb9 SSL_ImportFD()
  6237 ms  0x2eb9 ret:0x7f60f08324f0
  6237 ms  0x2eb9 SSL_AuthCertificateHook()
  6237 ms  0x2eb9 fd:0x7f60f08324f0
  6237 ms  0x2eb9 ret:0x0
  6237 ms  0x2eb9 PR_Connect()
  6237 ms  0x2eb9 fd:0x7f60f08324f0
  6237 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6237 ms  0x2eb9 cx:0x7f61071e4608
  6238 ms     | 0x2eb9 EC_ValidatePublicKey()
  6238 ms     | 0x2eb9 ret:0x0
  6238 ms  0x2eb9 ret:0x7f60f0b5a820::7f60f0b5a820  00 8b 82 f0                                      ....
  6238 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6238 ms  0x2eb9 cx:0x7f61071e4608
  6239 ms     | 0x2eb9 EC_ValidatePublicKey()
  6240 ms     | 0x2eb9 ret:0x0
  6240 ms  0x2eb9 ret:0x7f610197a020::7f610197a020  e0 8c 82 f0                                      ....
  6252 ms  0x2eb9 SSL_ImportFD()
  6252 ms  0x2eb9 ret:0x7f60f0832700
  6252 ms  0x2eb9 SSL_AuthCertificateHook()
  6252 ms  0x2eb9 fd:0x7f60f0832700
  6252 ms  0x2eb9 ret:0x0
  6252 ms  0x2eb9 PR_Connect()
  6252 ms  0x2eb9 fd:0x7f60f0832700
  6253 ms  0x2eb9 SSL_ImportFD()
  6253 ms  0x2eb9 ret:0x7f60f0832a30
  6253 ms  0x2eb9 SSL_AuthCertificateHook()
  6253 ms  0x2eb9 fd:0x7f60f0832a30
  6253 ms  0x2eb9 ret:0x0
  6253 ms  0x2eb9 PR_Connect()
  6253 ms  0x2eb9 fd:0x7f60f0832a30
  6253 ms  0x2eb9 SSL_ImportFD()
  6253 ms  0x2eb9 ret:0x7f60f0832550
  6253 ms  0x2eb9 SSL_AuthCertificateHook()
  6253 ms  0x2eb9 fd:0x7f60f0832550
  6253 ms  0x2eb9 ret:0x0
  6253 ms  0x2eb9 PR_Connect()
  6253 ms  0x2eb9 fd:0x7f60f0832550
  6272 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6272 ms  0x2eb9 cx:0x7f61071e47a8
  6272 ms     | 0x2eb9 EC_ValidatePublicKey()
  6272 ms     | 0x2eb9 ret:0x0
  6272 ms  0x2eb9 ret:0x7f6103561820::7f6103561820  80 18 89 f0                                      ....
  6272 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6272 ms  0x2eb9 cx:0x7f61071e47a8
  6273 ms     | 0x2eb9 EC_ValidatePublicKey()
  6274 ms     | 0x2eb9 ret:0x0
  6274 ms  0x2eb9 ret:0x7f60f08bb020::7f60f08bb020  60 1a 89 f0                                      `...
           /* TID 0x2ec1 */
  6278 ms  0x2ec1 PR_Close()
  6278 ms  0x2ec1 fd:0x7f60f08883a0
           /* TID 0x2eb9 */
  6278 ms  0x2eb9 PK11_Derive()
  6278 ms  0x2eb9 basekey:0x7f60f09bc400
  6278 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6278 ms  0x2eb9 ret:0x7f60f09bc200
  6278 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6278 ms  0x2eb9 seckey:0x7f60f0b49020
  6278 ms     | 0x2eb9 EC_ValidatePublicKey()
  6278 ms     | 0x2eb9 ret:0x0
  6279 ms  0x2eb9 ret:0x7f60f09bc400
  6279 ms  SECKEY_ECParamsToKeySize()
  6279 ms  0x2eb9 ret:0xff
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bc200
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bbf80
  6279 ms  0x2eb9 PK11_Derive()
  6279 ms  0x2eb9 basekey:0x7f60f09bc400
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bcf00
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bcf00
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bc200
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bcf00
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bc400
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bcf00
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bbf80
  6279 ms  0x2eb9 PK11_Derive()
  6279 ms  0x2eb9 basekey:0x7f60f08a3200
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f08a3280
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bc400
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bcf00
  6279 ms  0x2eb9 PK11_DeriveWithFlags()
  6279 ms  0x2eb9 basekey:0x7f60f09bc400
  6279 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6279 ms  0x2eb9 ret:0x7f60f09bbf80
  6288 ms  0x2eb9 PK11_DeriveWithFlags()
  6288 ms  0x2eb9 basekey:0x7f60f09bc400
  6288 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6288 ms  0x2eb9 ret:0x7f60f09bbf80
  6288 ms  0x2eb9 PK11_Derive()
  6288 ms  0x2eb9 basekey:0x7f60f09bbf80
  6288 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6288 ms  0x2eb9 ret:0x7f60f08a3200
  6288 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6288 ms  0x2eb9 seckey:0x7f60f0b4f820
  6288 ms     | 0x2eb9 EC_ValidatePublicKey()
  6288 ms     | 0x2eb9 ret:0x0
  6288 ms  0x2eb9 ret:0x7f60f09bbf80
  6288 ms  SECKEY_ECParamsToKeySize()
  6288 ms  0x2eb9 ret:0xff
  6288 ms  0x2eb9 PK11_DeriveWithFlags()
  6288 ms  0x2eb9 basekey:0x7f60f08a3200
  6288 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6288 ms  0x2eb9 ret:0x7f60f08a3400
  6288 ms  0x2eb9 PK11_Derive()
  6288 ms  0x2eb9 basekey:0x7f60f09bbf80
  6288 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6288 ms  0x2eb9 ret:0x7f60f08a3480
  6288 ms  0x2eb9 PK11_DeriveWithFlags()
  6288 ms  0x2eb9 basekey:0x7f60f08a3480
  6288 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6288 ms  0x2eb9 ret:0x7f60f08a3200
  6289 ms  0x2eb9 PK11_DeriveWithFlags()
  6289 ms  0x2eb9 basekey:0x7f60f08a3480
  6289 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6289 ms  0x2eb9 ret:0x7f60f09bbf80
  6289 ms  0x2eb9 PK11_DeriveWithFlags()
  6289 ms  0x2eb9 basekey:0x7f60f08a3480
  6289 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6289 ms  0x2eb9 ret:0x7f60f08a3400
  6289 ms  0x2eb9 PK11_Derive()
  6289 ms  0x2eb9 basekey:0x7f60f08a3500
  6289 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6289 ms  0x2eb9 ret:0x7f60f08a3580
  6289 ms  0x2eb9 PK11_DeriveWithFlags()
  6289 ms  0x2eb9 basekey:0x7f60f09bbf80
  6289 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6289 ms  0x2eb9 ret:0x7f60f08a3480
  6289 ms  0x2eb9 PK11_DeriveWithFlags()
  6289 ms  0x2eb9 basekey:0x7f60f09bbf80
  6289 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6289 ms  0x2eb9 ret:0x7f60f08a3400
  6290 ms  0x2eb9 PK11_DeriveWithFlags()
  6290 ms  0x2eb9 basekey:0x7f60f09bbf80
  6290 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6290 ms  0x2eb9 ret:0x7f60f08a3400
  6295 ms  0x2eb9 PK11_Derive()
  6295 ms  0x2eb9 basekey:0x7f60f08a3400
  6295 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6295 ms  0x2eb9 ret:0x7f60f08a3500
  6295 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6295 ms  0x2eb9 seckey:0x7f60f0b5a820
  6295 ms     | 0x2eb9 EC_ValidatePublicKey()
  6295 ms     | 0x2eb9 ret:0x0
  6296 ms  0x2eb9 ret:0x7f60f08a3400
  6296 ms  SECKEY_ECParamsToKeySize()
  6296 ms  0x2eb9 ret:0xff
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3500
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3700
  6296 ms  0x2eb9 PK11_Derive()
  6296 ms  0x2eb9 basekey:0x7f60f08a3400
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3780
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3780
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3500
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3780
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3400
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3780
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3700
  6296 ms  0x2eb9 PK11_Derive()
  6296 ms  0x2eb9 basekey:0x7f60f08a3800
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3880
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3400
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3780
  6296 ms  0x2eb9 PK11_DeriveWithFlags()
  6296 ms  0x2eb9 basekey:0x7f60f08a3400
  6296 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6296 ms  0x2eb9 ret:0x7f60f08a3700
  6296 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6296 ms  0x2eb9 cx:0x7f61071e4948
  6296 ms     | 0x2eb9 EC_ValidatePublicKey()
  6296 ms     | 0x2eb9 ret:0x0
  6296 ms  0x2eb9 ret:0x7f60f08c6020::7f60f08c6020  e0 1c 89 f0                                      ....
  6297 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6297 ms  0x2eb9 cx:0x7f61071e4948
  6297 ms     | 0x2eb9 EC_ValidatePublicKey()
  6299 ms     | 0x2eb9 ret:0x0
  6299 ms  0x2eb9 ret:0x7f60f08c8020::7f60f08c8020  c0 1e 89 f0                                      ....
  6312 ms  0x2eb9 PK11_DeriveWithFlags()
  6312 ms  0x2eb9 basekey:0x7f60f08a3400
  6312 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6313 ms  0x2eb9 ret:0x7f60f08a3700
  6313 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6313 ms  0x2eb9 cx:0x7f61071e5308
  6313 ms     | 0x2eb9 EC_ValidatePublicKey()
  6313 ms     | 0x2eb9 ret:0x0
  6313 ms  0x2eb9 ret:0x7f60f08d2020::7f60f08d2020  f0 51 99 f0                                      .Q..
  6313 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6313 ms  0x2eb9 cx:0x7f61071e5308
  6314 ms     | 0x2eb9 EC_ValidatePublicKey()
  6315 ms     | 0x2eb9 ret:0x0
  6315 ms  0x2eb9 ret:0x7f60f08d4020::7f60f08d4020  a0 5b 99 f0                                      .[..
  6320 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6320 ms  0x2eb9 cx:0x7f61071e5168
  6320 ms     | 0x2eb9 EC_ValidatePublicKey()
  6320 ms     | 0x2eb9 ret:0x0
  6320 ms  0x2eb9 ret:0x7f60f0b4c020::7f60f0b4c020  e0 a2 af f0                                      ....
  6320 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6320 ms  0x2eb9 cx:0x7f61071e5168
  6321 ms     | 0x2eb9 EC_ValidatePublicKey()
  6322 ms     | 0x2eb9 ret:0x0
  6322 ms  0x2eb9 ret:0x7f610196b020::7f610196b020  10 a5 af f0                                      ....
  6324 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6324 ms  0x2eb9 cx:0x7f61071e4e28
  6325 ms     | 0x2eb9 EC_ValidatePublicKey()
  6325 ms     | 0x2eb9 ret:0x0
  6325 ms  0x2eb9 ret:0x7f6101972820::7f6101972820  90 ac af f0                                      ....
  6325 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6325 ms  0x2eb9 cx:0x7f61071e4e28
  6326 ms     | 0x2eb9 EC_ValidatePublicKey()
  6327 ms     | 0x2eb9 ret:0x0
  6327 ms  0x2eb9 ret:0x7f6101976820::7f6101976820  30 c3 93 01                                      0...
  6340 ms  0x2eb9 PK11_Derive()
  6340 ms  0x2eb9 basekey:0x7f60f08a3700
  6340 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6340 ms  0x2eb9 ret:0x7f60f08a3800
  6340 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6340 ms  0x2eb9 seckey:0x7f6103561820
  6340 ms     | 0x2eb9 EC_ValidatePublicKey()
  6340 ms     | 0x2eb9 ret:0x0
  6340 ms  0x2eb9 ret:0x7f60f08a3700
  6340 ms  SECKEY_ECParamsToKeySize()
  6340 ms  0x2eb9 ret:0xff
  6340 ms  0x2eb9 PK11_DeriveWithFlags()
  6340 ms  0x2eb9 basekey:0x7f60f08a3800
  6340 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6340 ms  0x2eb9 ret:0x7f60f0bcc380
  6340 ms  0x2eb9 PK11_Derive()
  6340 ms  0x2eb9 basekey:0x7f60f08a3700
  6340 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6340 ms  0x2eb9 ret:0x7f60f0bcc580
  6340 ms  0x2eb9 PK11_DeriveWithFlags()
  6340 ms  0x2eb9 basekey:0x7f60f0bcc580
  6340 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6340 ms  0x2eb9 ret:0x7f60f08a3800
  6341 ms  0x2eb9 PK11_DeriveWithFlags()
  6341 ms  0x2eb9 basekey:0x7f60f0bcc580
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f08a3700
  6341 ms  0x2eb9 PK11_DeriveWithFlags()
  6341 ms  0x2eb9 basekey:0x7f60f0bcc580
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f0bcc380
  6341 ms  0x2eb9 PK11_Derive()
  6341 ms  0x2eb9 basekey:0x7f60f0bcdb00
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f0bcdc00
  6341 ms  0x2eb9 PK11_DeriveWithFlags()
  6341 ms  0x2eb9 basekey:0x7f60f08a3700
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f0bcc580
  6341 ms  0x2eb9 PK11_DeriveWithFlags()
  6341 ms  0x2eb9 basekey:0x7f60f08a3700
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f0bcc380
  6341 ms  0x2eb9 PK11_DeriveWithFlags()
  6341 ms  0x2eb9 basekey:0x7f60f08a3700
  6341 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6341 ms  0x2eb9 ret:0x7f60f0bcc380
  6352 ms  0x2eb9 PK11_Derive()
  6352 ms  0x2eb9 basekey:0x7f60f0bcc380
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6352 ms  0x2eb9 ret:0x7f60f0bcdb00
  6352 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6352 ms  0x2eb9 seckey:0x7f60f08c6020
  6352 ms     | 0x2eb9 EC_ValidatePublicKey()
  6352 ms     | 0x2eb9 ret:0x0
  6352 ms  0x2eb9 ret:0x7f60f0bcc380
  6352 ms  SECKEY_ECParamsToKeySize()
  6352 ms  0x2eb9 ret:0xff
  6352 ms  0x2eb9 PK11_DeriveWithFlags()
  6352 ms  0x2eb9 basekey:0x7f60f0bcdb00
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6352 ms  0x2eb9 ret:0x7f60f0964080
  6352 ms  0x2eb9 PK11_Derive()
  6352 ms  0x2eb9 basekey:0x7f60f0bcc380
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6352 ms  0x2eb9 ret:0x7f60f0964600
  6352 ms  0x2eb9 PK11_DeriveWithFlags()
  6352 ms  0x2eb9 basekey:0x7f60f0964600
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6352 ms  0x2eb9 ret:0x7f60f0bcdb00
  6352 ms  0x2eb9 PK11_DeriveWithFlags()
  6352 ms  0x2eb9 basekey:0x7f60f0964600
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6352 ms  0x2eb9 ret:0x7f60f0bcc380
  6352 ms  0x2eb9 PK11_DeriveWithFlags()
  6352 ms  0x2eb9 basekey:0x7f60f0964600
  6352 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6353 ms  0x2eb9 ret:0x7f60f0964080
  6353 ms  0x2eb9 PK11_Derive()
  6353 ms  0x2eb9 basekey:0x7f6101949280
  6353 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6353 ms  0x2eb9 ret:0x7f6101949b80
  6353 ms  0x2eb9 PK11_DeriveWithFlags()
  6353 ms  0x2eb9 basekey:0x7f60f0bcc380
  6353 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6353 ms  0x2eb9 ret:0x7f60f0964600
  6353 ms  0x2eb9 PK11_DeriveWithFlags()
  6353 ms  0x2eb9 basekey:0x7f60f0bcc380
  6353 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6353 ms  0x2eb9 ret:0x7f60f0964080
  6363 ms  0x2eb9 PK11_DeriveWithFlags()
  6363 ms  0x2eb9 basekey:0x7f60f0bcc380
  6363 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6363 ms  0x2eb9 ret:0x7f60f0964080
  6364 ms  0x2eb9 SSL_AuthCertificateComplete()
  6364 ms  0x2eb9 fd:0x7f60f08324f0
  6364 ms  0x2eb9 err:0x0
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f6101949b80
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f60f0964080
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f6101949b80
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101949280
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f6101949b80
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101961580
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101962580
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101962680
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f6101949280
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101962680
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f6101949280
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f6101d85380
  6364 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6364 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6364 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6364 ms     | 0x2eb9 ret:0x7f60f0964600
  6364 ms     | 0x2eb9 PK11_Encrypt()
  6364 ms     | 0x2eb9 symkey:0x7f6101962580
  6368 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6368 ms     | 0x2eb9 basekey:0x7f60f0964080
  6368 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6368 ms     | 0x2eb9 ret:0x7f60f0964600
  6368 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6368 ms     | 0x2eb9 basekey:0x7f60f0964080
  6368 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6368 ms     | 0x2eb9 ret:0x7f6101d85380
  6368 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6368 ms     | 0x2eb9 basekey:0x7f6101949b80
  6368 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6368 ms     | 0x2eb9 ret:0x7f6101962580
  6368 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6368 ms     | 0x2eb9 privk:0x7f60f08c8020::7f60f08c8020  c0 1e 89 f0                                      ....
  6368 ms     | 0x2eb9 privk:0x7f60f08c8020::7f60f08c8020  e5 e5 e5 e5                                      ....
  6368 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6368 ms     | 0x2eb9 privk:0x7f60f08c6020::7f60f08c6020  e0 1c 89 f0                                      ....
  6368 ms     | 0x2eb9 privk:0x7f60f08c6020::7f60f08c6020  e5 e5 e5 e5                                      ....
  6369 ms  0x2eb9 PK11_Encrypt()
  6369 ms  0x2eb9 symkey:0x7f60f0964600
  6369 ms  0x2eb9 PK11_Derive()
  6369 ms  0x2eb9 basekey:0x7f60f0bcc380
  6369 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6369 ms  0x2eb9 ret:0x7f60f0bcdb00
  6369 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6369 ms  0x2eb9 seckey:0x7f60f08d2020
  6369 ms     | 0x2eb9 EC_ValidatePublicKey()
  6369 ms     | 0x2eb9 ret:0x0
  6370 ms  0x2eb9 ret:0x7f60f0bcc380
  6370 ms  SECKEY_ECParamsToKeySize()
  6370 ms  0x2eb9 ret:0xff
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f60f0bcdb00
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101949b80
  6370 ms  0x2eb9 PK11_Derive()
  6370 ms  0x2eb9 basekey:0x7f60f0bcc380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101d85380
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f6101d85380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f60f0bcdb00
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f6101d85380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f60f0bcc380
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f6101d85380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101949b80
  6370 ms  0x2eb9 PK11_Derive()
  6370 ms  0x2eb9 basekey:0x7f6101de6500
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101de6580
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f60f0bcc380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101d85380
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f60f0bcc380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101949b80
  6370 ms  0x2eb9 PK11_DeriveWithFlags()
  6370 ms  0x2eb9 basekey:0x7f60f0bcc380
  6370 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6370 ms  0x2eb9 ret:0x7f6101949b80
  6371 ms  0x2eb9 SSL_ImportFD()
  6371 ms  0x2eb9 ret:0x7f60f0892c70
  6371 ms  0x2eb9 SSL_AuthCertificateHook()
  6371 ms  0x2eb9 fd:0x7f60f0892c70
  6371 ms  0x2eb9 ret:0x0
  6371 ms  0x2eb9 PR_Connect()
  6371 ms  0x2eb9 fd:0x7f60f0892c70
  6371 ms  0x2eb9 SSL_ImportFD()
  6371 ms  0x2eb9 ret:0x7f60f0892ca0
  6371 ms  0x2eb9 SSL_AuthCertificateHook()
  6371 ms  0x2eb9 fd:0x7f60f0892ca0
  6371 ms  0x2eb9 ret:0x0
  6371 ms  0x2eb9 PR_Connect()
  6371 ms  0x2eb9 fd:0x7f60f0892ca0
  6371 ms  0x2eb9 SSL_ImportFD()
  6371 ms  0x2eb9 ret:0x7f60f0892a90
  6371 ms  0x2eb9 SSL_AuthCertificateHook()
  6371 ms  0x2eb9 fd:0x7f60f0892a90
  6371 ms  0x2eb9 ret:0x0
  6371 ms  0x2eb9 PR_Connect()
  6371 ms  0x2eb9 fd:0x7f60f0892a90
  6380 ms  0x2eb9 PK11_Derive()
  6380 ms  0x2eb9 basekey:0x7f6101949b80
  6380 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6380 ms  0x2eb9 ret:0x7f6101de6500
  6380 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6380 ms  0x2eb9 seckey:0x7f60f0b4c020
  6380 ms     | 0x2eb9 EC_ValidatePublicKey()
  6380 ms     | 0x2eb9 ret:0x0
  6380 ms  0x2eb9 ret:0x7f6101949b80
  6380 ms  SECKEY_ECParamsToKeySize()
  6380 ms  0x2eb9 ret:0xff
  6380 ms  0x2eb9 PK11_DeriveWithFlags()
  6380 ms  0x2eb9 basekey:0x7f6101de6500
  6380 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6380 ms  0x2eb9 ret:0x7f6101dfbe80
  6380 ms  0x2eb9 PK11_Derive()
  6380 ms  0x2eb9 basekey:0x7f6101949b80
  6380 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6380 ms  0x2eb9 ret:0x7f6102e18f80
  6380 ms  0x2eb9 PK11_DeriveWithFlags()
  6380 ms  0x2eb9 basekey:0x7f6102e18f80
  6380 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6380 ms  0x2eb9 ret:0x7f6101de6500
  6381 ms  0x2eb9 PK11_DeriveWithFlags()
  6381 ms  0x2eb9 basekey:0x7f6102e18f80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6101949b80
  6381 ms  0x2eb9 PK11_DeriveWithFlags()
  6381 ms  0x2eb9 basekey:0x7f6102e18f80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6101dfbe80
  6381 ms  0x2eb9 PK11_Derive()
  6381 ms  0x2eb9 basekey:0x7f6102e19900
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6102fa8300
  6381 ms  0x2eb9 PK11_DeriveWithFlags()
  6381 ms  0x2eb9 basekey:0x7f6101949b80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6102e18f80
  6381 ms  0x2eb9 PK11_DeriveWithFlags()
  6381 ms  0x2eb9 basekey:0x7f6101949b80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6101dfbe80
  6381 ms  0x2eb9 PK11_DeriveWithFlags()
  6381 ms  0x2eb9 basekey:0x7f6101949b80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6101dfbe80
  6381 ms  0x2eb9 PK11_Derive()
  6381 ms  0x2eb9 basekey:0x7f6101dfbe80
  6381 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6381 ms  0x2eb9 ret:0x7f6102e19900
  6381 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6381 ms  0x2eb9 seckey:0x7f6101972820
  6381 ms     | 0x2eb9 EC_ValidatePublicKey()
  6381 ms     | 0x2eb9 ret:0x0
  6382 ms  0x2eb9 ret:0x7f6101dfbe80
  6382 ms  SECKEY_ECParamsToKeySize()
  6382 ms  0x2eb9 ret:0xff
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6102e19900
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f61032a8480
  6382 ms  0x2eb9 PK11_Derive()
  6382 ms  0x2eb9 basekey:0x7f6101dfbe80
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f6104d47700
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6104d47700
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f6102e19900
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6104d47700
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f6101dfbe80
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6104d47700
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f61032a8480
  6382 ms  0x2eb9 PK11_Derive()
  6382 ms  0x2eb9 basekey:0x7f6104d47780
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f6104dea080
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6101dfbe80
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f6104d47700
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6101dfbe80
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f61032a8480
  6382 ms  0x2eb9 PK11_DeriveWithFlags()
  6382 ms  0x2eb9 basekey:0x7f6101dfbe80
  6382 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6382 ms  0x2eb9 ret:0x7f61032a8480
  6384 ms  0x2eb9 PK11_Encrypt()
  6384 ms  0x2eb9 symkey:0x7f60f09bc800
           /* TID 0x2ec1 */
  6390 ms  0x2ec1 PR_Close()
  6390 ms  0x2ec1 fd:0x7f60f0892bb0
           /* TID 0x2f52 */
  6390 ms  0x2f52 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6390 ms  0x2f52 ret:0x0
           /* TID 0x2eb9 */
  6391 ms  0x2eb9 SSL_AuthCertificateComplete()
  6391 ms  0x2eb9 fd:0x7f60f0b97970
  6391 ms  0x2eb9 err:0x0
  6391 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6391 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6391 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6391 ms     | 0x2eb9 ret:0x7f61032a8480
  6391 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6391 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6391 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6391 ms     | 0x2eb9 ret:0x7f6104d47780
  6391 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6391 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6391 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6391 ms     | 0x2eb9 ret:0x7f6104dea180
  6391 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6391 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6391 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0300
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0380
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f6104d47780
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0380
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f6104d47780
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0500
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f60f0bcc580
  6392 ms     | 0x2eb9 PK11_Encrypt()
  6392 ms     | 0x2eb9 symkey:0x7f6107be0300
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f61032a8480
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f60f0bcc580
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f61032a8480
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0500
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f6107be0300
  6392 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6392 ms     | 0x2eb9 privk:0x7f60f08bb020::7f60f08bb020  60 1a 89 f0                                      `...
  6392 ms     | 0x2eb9 privk:0x7f60f08bb020::7f60f08bb020  e5 e5 e5 e5                                      ....
  6392 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6392 ms     | 0x2eb9 privk:0x7f6103561820::7f6103561820  80 18 89 f0                                      ....
  6392 ms     | 0x2eb9 privk:0x7f6103561820::7f6103561820  e5 e5 e5 e5                                      ....
  6392 ms  0x2eb9 SSL_AuthCertificateComplete()
  6392 ms  0x2eb9 fd:0x7f60f0832a30
  6392 ms  0x2eb9 err:0x0
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6392 ms     | 0x2eb9 ret:0x7f60f08a3700
  6392 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6392 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6392 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f60f08a3800
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f60f0bcdc00
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6101de6500
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0500
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6101de6500
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0580
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0580
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0d00
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6101de6500
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6102e18f80
  6393 ms     | 0x2eb9 PK11_Encrypt()
  6393 ms     | 0x2eb9 symkey:0x7f6107be0500
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6102e18f80
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0d00
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6107be0500
  6393 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6393 ms     | 0x2eb9 privk:0x7f610196b020::7f610196b020  10 a5 af f0                                      ....
  6393 ms     | 0x2eb9 privk:0x7f610196b020::7f610196b020  e5 e5 e5 e5                                      ....
  6393 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6393 ms     | 0x2eb9 privk:0x7f60f0b4c020::7f60f0b4c020  e0 a2 af f0                                      ....
  6393 ms     | 0x2eb9 privk:0x7f60f0b4c020::7f60f0b4c020  e5 e5 e5 e5                                      ....
  6393 ms  0x2eb9 SSL_AuthCertificateComplete()
  6393 ms  0x2eb9 fd:0x7f60f0832700
  6393 ms  0x2eb9 err:0x0
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6104dea080
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6393 ms     | 0x2eb9 ret:0x7f6101949b80
  6393 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6393 ms     | 0x2eb9 basekey:0x7f6104dea080
  6393 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6101de6500
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6104dea080
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6102fa8300
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6102e19900
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6107be0d00
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6102e19900
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6107be0e80
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6101de6500
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6107be0e80
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6101de6500
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6108081500
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6102e19900
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6104d47700
  6394 ms     | 0x2eb9 PK11_Encrypt()
  6394 ms     | 0x2eb9 symkey:0x7f6107be0d00
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6101949b80
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6104d47700
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6101949b80
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6108081500
  6394 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6394 ms     | 0x2eb9 basekey:0x7f6104dea080
  6394 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6394 ms     | 0x2eb9 ret:0x7f6107be0d00
  6394 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6394 ms     | 0x2eb9 privk:0x7f6101976820::7f6101976820  30 c3 93 01                                      0...
  6394 ms     | 0x2eb9 privk:0x7f6101976820::7f6101976820  e5 e5 e5 e5                                      ....
  6394 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6394 ms     | 0x2eb9 privk:0x7f6101972820::7f6101972820  90 ac af f0                                      ....
  6394 ms     | 0x2eb9 privk:0x7f6101972820::7f6101972820  e5 e5 e5 e5                                      ....
  6398 ms  0x2eb9 PK11_Encrypt()
  6398 ms  0x2eb9 symkey:0x7f60f0bcc580
  6398 ms  0x2eb9 PK11_Encrypt()
  6398 ms  0x2eb9 symkey:0x7f60f0bcc580
  6398 ms  0x2eb9 PK11_Encrypt()
  6398 ms  0x2eb9 symkey:0x7f6102e18f80
  6399 ms  0x2eb9 PK11_Encrypt()
  6399 ms  0x2eb9 symkey:0x7f6104d47700
  6403 ms  0x2eb9 PK11_Encrypt()
  6403 ms  0x2eb9 symkey:0x7f60f0bcc580
  6404 ms  0x2eb9 PK11_Encrypt()
  6404 ms  0x2eb9 symkey:0x7f60f0bcc580
  6405 ms  0x2eb9 PK11_Encrypt()
  6405 ms  0x2eb9 symkey:0x7f60f0bcc580
  6407 ms  0x2eb9 PK11_Encrypt()
  6407 ms  0x2eb9 symkey:0x7f60f0bcc580
  6407 ms  0x2eb9 PK11_Encrypt()
  6407 ms  0x2eb9 symkey:0x7f60f0bcc580
  6407 ms  0x2eb9 PK11_Encrypt()
  6407 ms  0x2eb9 symkey:0x7f60f0bcc580
  6407 ms  0x2eb9 PK11_Encrypt()
  6407 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6408 ms  0x2eb9 PK11_Encrypt()
  6408 ms  0x2eb9 symkey:0x7f60f0bcc580
  6411 ms  0x2eb9 PK11_Encrypt()
  6411 ms  0x2eb9 symkey:0x7f60f0bcc580
  6417 ms  0x2eb9 PK11_Encrypt()
  6417 ms  0x2eb9 symkey:0x7f60f0bcc580
  6417 ms  0x2eb9 PK11_Encrypt()
  6417 ms  0x2eb9 symkey:0x7f60f0bcc580
  6417 ms  0x2eb9 PK11_Encrypt()
  6417 ms  0x2eb9 symkey:0x7f60f0bcc580
  6418 ms  0x2eb9 PK11_Encrypt()
  6418 ms  0x2eb9 symkey:0x7f60f0bcc580
  6418 ms  0x2eb9 PK11_Encrypt()
  6418 ms  0x2eb9 symkey:0x7f60f0bcc580
  6418 ms  0x2eb9 PK11_Encrypt()
  6418 ms  0x2eb9 symkey:0x7f60f0bcc580
  6438 ms  0x2eb9 PK11_Encrypt()
  6438 ms  0x2eb9 symkey:0x7f60f09bc480
  6438 ms  0x2eb9 PK11_Encrypt()
  6438 ms  0x2eb9 symkey:0x7f60f0bcc580
  6438 ms  0x2eb9 PK11_Encrypt()
  6438 ms  0x2eb9 symkey:0x7f60f0bcc580
  6438 ms  0x2eb9 PK11_DeriveWithFlags()
  6438 ms  0x2eb9 basekey:0x7f6101962580
  6438 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6438 ms  0x2eb9 ret:0x7f6101dfbe80
  6438 ms  0x2eb9 PK11_DeriveWithFlags()
  6438 ms  0x2eb9 basekey:0x7f6101962580
  6438 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6439 ms  0x2eb9 ret:0x7f6101dfbe80
  6439 ms  0x2eb9 PK11_Encrypt()
  6439 ms  0x2eb9 symkey:0x7f60f0bcc580
  6439 ms  0x2eb9 PK11_Encrypt()
  6439 ms  0x2eb9 symkey:0x7f60f0bcc580
  6439 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6439 ms  0x2eb9 cx:0x7f6101de0248
  6439 ms     | 0x2eb9 EC_ValidatePublicKey()
  6439 ms     | 0x2eb9 ret:0x0
  6439 ms  0x2eb9 ret:0x7f6107f08020::7f6107f08020  50 2b 62 02                                      P+b.
  6440 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6440 ms  0x2eb9 cx:0x7f6101de0248
  6440 ms     | 0x2eb9 EC_ValidatePublicKey()
  6442 ms     | 0x2eb9 ret:0x0
  6442 ms  0x2eb9 ret:0x7f6107f0e020::7f6107f0e020  90 ac af f0                                      ....
  6442 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6442 ms  0x2eb9 cx:0x7f6101de00a8
  6446 ms     | 0x2eb9 EC_ValidatePublicKey()
  6446 ms     | 0x2eb9 ret:0x0
  6446 ms  0x2eb9 ret:0x7f6107f12820::7f6107f12820  d0 33 d8 01                                      .3..
  6446 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6446 ms  0x2eb9 cx:0x7f6101de00a8
  6447 ms     | 0x2eb9 EC_ValidatePublicKey()
  6448 ms     | 0x2eb9 ret:0x0
  6448 ms  0x2eb9 ret:0x7f6107fa7820::7f6107fa7820  a0 36 d8 01                                      .6..
  6449 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6449 ms  0x2eb9 cx:0x7f61071e5cc8
  6449 ms     | 0x2eb9 EC_ValidatePublicKey()
  6449 ms     | 0x2eb9 ret:0x0
  6449 ms  0x2eb9 ret:0x7f6107fb0020::7f6107fb0020  d0 38 d8 01                                      .8..
  6449 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6449 ms  0x2eb9 cx:0x7f61071e5cc8
  6450 ms     | 0x2eb9 EC_ValidatePublicKey()
  6451 ms     | 0x2eb9 ret:0x0
  6451 ms  0x2eb9 ret:0x7f6107fb4020::7f6107fb4020  10 65 64 02                                      .ed.
  6470 ms  0x2eb9 PK11_Encrypt()
  6470 ms  0x2eb9 symkey:0x7f6102f98100
  6470 ms  0x2eb9 PK11_Encrypt()
  6470 ms  0x2eb9 symkey:0x7f60f0bcc580
  6470 ms  0x2eb9 PK11_DeriveWithFlags()
  6470 ms  0x2eb9 basekey:0x7f6107be0300
  6470 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6470 ms  0x2eb9 ret:0x7f6101dfbe80
  6470 ms  0x2eb9 PK11_DeriveWithFlags()
  6470 ms  0x2eb9 basekey:0x7f6107be0300
  6470 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6470 ms  0x2eb9 ret:0x7f6101dfbe80
  6470 ms  0x2eb9 PK11_Encrypt()
  6470 ms  0x2eb9 symkey:0x7f60f0bcc580
  6471 ms  0x2eb9 PK11_DeriveWithFlags()
  6471 ms  0x2eb9 basekey:0x7f6107be0500
  6471 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6471 ms  0x2eb9 ret:0x7f6101dfbe80
  6471 ms  0x2eb9 PK11_DeriveWithFlags()
  6471 ms  0x2eb9 basekey:0x7f6107be0500
  6471 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6471 ms  0x2eb9 ret:0x7f6101dfbe80
  6471 ms  0x2eb9 PK11_DeriveWithFlags()
  6471 ms  0x2eb9 basekey:0x7f6107be0d00
  6471 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6471 ms  0x2eb9 ret:0x7f6101dfbe80
  6471 ms  0x2eb9 PK11_DeriveWithFlags()
  6471 ms  0x2eb9 basekey:0x7f6107be0d00
  6471 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6471 ms  0x2eb9 ret:0x7f6101dfbe80
  6471 ms  0x2eb9 PR_Close()
  6471 ms  0x2eb9 fd:0x7f60f0832700
  6471 ms     | 0x2eb9 PK11_Encrypt()
  6471 ms     | 0x2eb9 symkey:0x7f6104d47700
  6471 ms  0x2eb9 PR_Close()
  6471 ms  0x2eb9 fd:0x7f60f0832a30
  6471 ms     | 0x2eb9 PK11_Encrypt()
  6471 ms     | 0x2eb9 symkey:0x7f6102e18f80
  6472 ms  0x2eb9 PK11_Encrypt()
  6472 ms  0x2eb9 symkey:0x7f60f0bcc580
  6472 ms  0x2eb9 PK11_Encrypt()
  6472 ms  0x2eb9 symkey:0x7f60f0bcc580
  6472 ms  0x2eb9 PK11_Encrypt()
  6472 ms  0x2eb9 symkey:0x7f60f0bcc580
  6472 ms  0x2eb9 PK11_Encrypt()
  6472 ms  0x2eb9 symkey:0x7f60f0bcc580
  6472 ms  0x2eb9 PR_Connect()
  6472 ms  0x2eb9 fd:0x7f60f0832c10
  6472 ms  0x2eb9 PR_Connect()
  6472 ms  0x2eb9 fd:0x7f60f0832610
  6473 ms  0x2eb9 PR_Connect()
  6473 ms  0x2eb9 fd:0x7f60f0832700
  6473 ms  0x2eb9 PK11_Encrypt()
  6473 ms  0x2eb9 symkey:0x7f60f0bcc580
  6473 ms  0x2eb9 PK11_Encrypt()
  6473 ms  0x2eb9 symkey:0x7f60f0bcc580
  6473 ms  0x2eb9 PK11_Encrypt()
  6473 ms  0x2eb9 symkey:0x7f60f0bcc580
  6473 ms  0x2eb9 PK11_Encrypt()
  6473 ms  0x2eb9 symkey:0x7f60f0bcc580
  6473 ms  0x2eb9 PK11_Encrypt()
  6473 ms  0x2eb9 symkey:0x7f60f0bcc580
  6487 ms  0x2eb9 PK11_Encrypt()
  6487 ms  0x2eb9 symkey:0x7f60f09bc800
           /* TID 0x2ec1 */
  6494 ms  0x2ec1 PR_Close()
  6494 ms  0x2ec1 fd:0x7f60f0832520
           /* TID 0x2eb9 */
  6496 ms  0x2eb9 PK11_Derive()
  6496 ms  0x2eb9 basekey:0x7f60f0bcdc00
  6496 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6496 ms  0x2eb9 ret:0x7f60f08a3800
  6496 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6496 ms  0x2eb9 seckey:0x7f6107f08020
  6496 ms     | 0x2eb9 EC_ValidatePublicKey()
  6496 ms     | 0x2eb9 ret:0x0
  6497 ms  0x2eb9 ret:0x7f60f0bcdc00
  6497 ms  SECKEY_ECParamsToKeySize()
  6497 ms  0x2eb9 ret:0xff
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f60f08a3800
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f60f08a3700
  6497 ms  0x2eb9 PK11_Derive()
  6497 ms  0x2eb9 basekey:0x7f60f0bcdc00
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f6107be0500
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f6107be0500
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f60f08a3800
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f6107be0500
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f60f0bcdc00
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f6107be0500
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f60f08a3700
  6497 ms  0x2eb9 PK11_Derive()
  6497 ms  0x2eb9 basekey:0x7f6107be0580
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f6102e18f80
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f60f0bcdc00
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f6107be0500
  6497 ms  0x2eb9 PK11_DeriveWithFlags()
  6497 ms  0x2eb9 basekey:0x7f60f0bcdc00
  6497 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6497 ms  0x2eb9 ret:0x7f60f08a3700
  6499 ms  0x2eb9 PK11_DeriveWithFlags()
  6499 ms  0x2eb9 basekey:0x7f60f0bcdc00
  6499 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6499 ms  0x2eb9 ret:0x7f60f08a3700
           /* TID 0x2ec1 */
  6501 ms  0x2ec1 PR_Close()
  6501 ms  0x2ec1 fd:0x7f60f0888490
           /* TID 0x2f53 */
  6502 ms  0x2f53 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6502 ms  0x2f53 ret:0x0
           /* TID 0x2eb9 */
  6502 ms  0x2eb9 SSL_AuthCertificateComplete()
  6502 ms  0x2eb9 fd:0x7f60f0832550
  6502 ms  0x2eb9 err:0x0
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f6101de6580
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f60f08a3700
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f6101de6580
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6107be0580
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f6101de6580
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6102fa8300
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6101de6500
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6101949b80
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f6107be0580
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6101949b80
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f6107be0580
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6107be0d00
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6101d85380
  6502 ms     | 0x2eb9 PK11_Encrypt()
  6502 ms     | 0x2eb9 symkey:0x7f6101de6500
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6502 ms     | 0x2eb9 ret:0x7f6101d85380
  6502 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6502 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6502 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6503 ms     | 0x2eb9 ret:0x7f6107be0d00
  6503 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6503 ms     | 0x2eb9 basekey:0x7f6101de6580
  6503 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6503 ms     | 0x2eb9 ret:0x7f6101de6500
  6503 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6503 ms     | 0x2eb9 privk:0x7f60f08d4020::7f60f08d4020  a0 5b 99 f0                                      .[..
  6503 ms     | 0x2eb9 privk:0x7f60f08d4020::7f60f08d4020  e5 e5 e5 e5                                      ....
  6503 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6503 ms     | 0x2eb9 privk:0x7f60f08d2020::7f60f08d2020  f0 51 99 f0                                      .Q..
  6503 ms     | 0x2eb9 privk:0x7f60f08d2020::7f60f08d2020  e5 e5 e5 e5                                      ....
  6506 ms  0x2eb9 PK11_Encrypt()
  6506 ms  0x2eb9 symkey:0x7f6101d85380
  6507 ms  0x2eb9 PK11_Derive()
  6507 ms  0x2eb9 basekey:0x7f60f0bcc380
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f60f0bcdb00
  6507 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6507 ms  0x2eb9 seckey:0x7f6107f12820
  6507 ms     | 0x2eb9 EC_ValidatePublicKey()
  6507 ms     | 0x2eb9 ret:0x0
  6507 ms  0x2eb9 ret:0x7f60f0bcc380
  6507 ms  SECKEY_ECParamsToKeySize()
  6507 ms  0x2eb9 ret:0xff
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f60f0bcdb00
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6101de6580
  6507 ms  0x2eb9 PK11_Derive()
  6507 ms  0x2eb9 basekey:0x7f60f0bcc380
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6107be0d00
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f6107be0d00
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f60f0bcdb00
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f6107be0d00
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f60f0bcc380
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f6107be0d00
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6101de6580
  6507 ms  0x2eb9 PK11_Derive()
  6507 ms  0x2eb9 basekey:0x7f6107be0e80
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6104d47700
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f60f0bcc380
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6107be0d00
  6507 ms  0x2eb9 PK11_DeriveWithFlags()
  6507 ms  0x2eb9 basekey:0x7f60f0bcc380
  6507 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6507 ms  0x2eb9 ret:0x7f6101de6580
  6510 ms  0x2eb9 PK11_DeriveWithFlags()
  6510 ms  0x2eb9 basekey:0x7f60f0bcc380
  6510 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6510 ms  0x2eb9 ret:0x7f6101de6580
  6510 ms  0x2eb9 PK11_Encrypt()
  6510 ms  0x2eb9 symkey:0x7f60f0bcc580
  6511 ms  0x2eb9 PK11_Derive()
  6511 ms  0x2eb9 basekey:0x7f6101de6580
  6511 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6511 ms  0x2eb9 ret:0x7f6107be0e80
  6511 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6511 ms  0x2eb9 seckey:0x7f6107fb0020
  6511 ms     | 0x2eb9 EC_ValidatePublicKey()
  6511 ms     | 0x2eb9 ret:0x0
  6512 ms  0x2eb9 ret:0x7f6101de6580
  6512 ms  SECKEY_ECParamsToKeySize()
  6512 ms  0x2eb9 ret:0xff
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6107be0e80
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6101dfbe80
  6512 ms  0x2eb9 PK11_Derive()
  6512 ms  0x2eb9 basekey:0x7f6101de6580
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6102e19900
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6102e19900
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6107be0e80
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6102e19900
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6101de6580
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6102e19900
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6101dfbe80
  6512 ms  0x2eb9 PK11_Derive()
  6512 ms  0x2eb9 basekey:0x7f6104dea080
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6108081500
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6101de6580
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6512 ms  0x2eb9 ret:0x7f6102e19900
  6512 ms  0x2eb9 PK11_DeriveWithFlags()
  6512 ms  0x2eb9 basekey:0x7f6101de6580
  6512 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6517 ms  0x2eb9 ret:0x7f6101dfbe80
  6517 ms  0x2eb9 PK11_DeriveWithFlags()
  6517 ms  0x2eb9 basekey:0x7f6101de6580
  6517 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6518 ms  0x2eb9 ret:0x7f6101dfbe80
           /* TID 0x2ec1 */
  6519 ms  0x2ec1 PR_Close()
  6519 ms  0x2ec1 fd:0x7f60f08881c0
           /* TID 0x2eb9 */
  6520 ms  0x2eb9 PR_Connect()
  6520 ms  0x2eb9 fd:0x7f6101966c10
           /* TID 0x2ec1 */
  6532 ms  0x2ec1 PR_Close()
  6532 ms  0x2ec1 fd:0x7f60f08882e0
           /* TID 0x2f1d */
  6532 ms  0x2f1d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6532 ms  0x2f1d ret:0x0
           /* TID 0x2eb9 */
  6533 ms  0x2eb9 SSL_AuthCertificateComplete()
  6533 ms  0x2eb9 fd:0x7f60f0912a30
  6533 ms  0x2eb9 err:0x0
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f08a3280
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6101dfbe80
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f08a3280
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6104dea080
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f08a3280
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6107b49d00
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f09bc200
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6107b49d80
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f09bc200
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6107b49e00
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f6104dea080
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6107b49e00
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f6104dea080
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f6107b49e80
  6533 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6533 ms     | 0x2eb9 basekey:0x7f60f09bc200
  6533 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6533 ms     | 0x2eb9 ret:0x7f60f09bcf00
  6533 ms     | 0x2eb9 PK11_Encrypt()
  6533 ms     | 0x2eb9 symkey:0x7f6107b49d80
  6534 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6534 ms     | 0x2eb9 basekey:0x7f6101dfbe80
  6534 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6534 ms     | 0x2eb9 ret:0x7f60f09bcf00
  6534 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6534 ms     | 0x2eb9 basekey:0x7f6101dfbe80
  6534 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6534 ms     | 0x2eb9 ret:0x7f6107b49e80
  6534 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6534 ms     | 0x2eb9 basekey:0x7f60f08a3280
  6534 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6534 ms     | 0x2eb9 ret:0x7f6107b49d80
  6534 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6534 ms     | 0x2eb9 privk:0x7f60f0b4b020::7f60f0b4b020  40 c7 bd f0                                      @...
  6534 ms     | 0x2eb9 privk:0x7f60f0b4b020::7f60f0b4b020  e5 e5 e5 e5                                      ....
  6534 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6534 ms     | 0x2eb9 privk:0x7f60f0b49020::7f60f0b49020  a0 c1 bd f0                                      ....
  6534 ms     | 0x2eb9 privk:0x7f60f0b49020::7f60f0b49020  e5 e5 e5 e5                                      ....
  6534 ms  0x2eb9 PK11_Encrypt()
  6534 ms  0x2eb9 symkey:0x7f60f09bcf00
  6535 ms  0x2eb9 PK11_Encrypt()
  6535 ms  0x2eb9 symkey:0x7f60f0bcc580
           /* TID 0x2ec1 */
  6540 ms  0x2ec1 PR_Close()
  6540 ms  0x2ec1 fd:0x7f60f08888b0
  6542 ms  0x2ec1 PR_Close()
  6542 ms  0x2ec1 fd:0x7f60f0888070
           /* TID 0x2eb9 */
  6555 ms  0x2eb9 PK11_DeriveWithFlags()
  6555 ms  0x2eb9 basekey:0x7f6101de6500
  6555 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6555 ms  0x2eb9 ret:0x7f60f09bc400
  6555 ms  0x2eb9 PK11_DeriveWithFlags()
  6555 ms  0x2eb9 basekey:0x7f6101de6500
  6555 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6555 ms  0x2eb9 ret:0x7f60f09bc400
  6555 ms  0x2eb9 PR_Close()
  6555 ms  0x2eb9 fd:0x7f60f0832550
  6555 ms     | 0x2eb9 PK11_Encrypt()
  6555 ms     | 0x2eb9 symkey:0x7f6101d85380
           /* TID 0x2ec1 */
  6563 ms  0x2ec1 PR_Close()
  6563 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2f1f */
  6563 ms  0x2f1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6563 ms  0x2f1f ret:0x0
           /* TID 0x2eb9 */
  6563 ms  0x2eb9 SSL_AuthCertificateComplete()
  6563 ms  0x2eb9 fd:0x7f61019a47f0
  6563 ms  0x2eb9 err:0x0
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6102fa8300
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6107be0580
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f60f08a3700
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3200
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101de6500
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3200
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101949b80
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f6107be0580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101949b80
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f6107be0580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101d85380
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3200
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f60f08a3480
  6564 ms     | 0x2eb9 PK11_Encrypt()
  6564 ms     | 0x2eb9 symkey:0x7f6101de6500
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f60f08a3480
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f6102fa8300
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101d85380
  6564 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6564 ms     | 0x2eb9 basekey:0x7f60f08a3580
  6564 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6564 ms     | 0x2eb9 ret:0x7f6101de6500
  6564 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6564 ms     | 0x2eb9 privk:0x7f60f0b51820::7f60f0b51820  00 81 82 f0                                      ....
  6564 ms     | 0x2eb9 privk:0x7f60f0b51820::7f60f0b51820  e5 e5 e5 e5                                      ....
  6565 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6565 ms     | 0x2eb9 privk:0x7f60f0b4f820::7f60f0b4f820  b0 60 02 08                                      .`..
  6565 ms     | 0x2eb9 privk:0x7f60f0b4f820::7f60f0b4f820  e5 e5 e5 e5                                      ....
           /* TID 0x2ec1 */
  6565 ms  0x2ec1 PR_Close()
  6565 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2f52 */
  6565 ms  0x2f52 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6565 ms  0x2f52 ret:0x0
           /* TID 0x2ec1 */
  6566 ms  0x2ec1 PR_Close()
  6566 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2eb9 */
  6566 ms  0x2eb9 PK11_Encrypt()
  6566 ms  0x2eb9 symkey:0x7f60f08a3480
  6566 ms  0x2eb9 SSL_AuthCertificateComplete()
  6566 ms  0x2eb9 fd:0x7f60f0892a90
  6566 ms  0x2eb9 err:0x0
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f6102e18f80
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f09bbf80
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f6102e18f80
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f08a3200
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f6102e18f80
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f08a3580
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f6101d85380
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f09bc400
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f60f08a3200
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f09bc400
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f60f08a3200
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6566 ms     | 0x2eb9 ret:0x7f60f09bc200
  6566 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6566 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6566 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6567 ms     | 0x2eb9 ret:0x7f6107be0500
  6567 ms     | 0x2eb9 PK11_Encrypt()
  6567 ms     | 0x2eb9 symkey:0x7f6101d85380
  6567 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6567 ms     | 0x2eb9 basekey:0x7f60f09bbf80
  6567 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6567 ms     | 0x2eb9 ret:0x7f6107be0500
  6567 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6567 ms     | 0x2eb9 basekey:0x7f60f09bbf80
  6567 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6567 ms     | 0x2eb9 ret:0x7f60f09bc200
  6567 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6567 ms     | 0x2eb9 basekey:0x7f6102e18f80
  6567 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6567 ms     | 0x2eb9 ret:0x7f6101d85380
  6567 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6567 ms     | 0x2eb9 privk:0x7f6107f0e020::7f6107f0e020  90 ac af f0                                      ....
  6567 ms     | 0x2eb9 privk:0x7f6107f0e020::7f6107f0e020  e5 e5 e5 e5                                      ....
  6567 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6567 ms     | 0x2eb9 privk:0x7f6107f08020::7f6107f08020  50 2b 62 02                                      P+b.
  6567 ms     | 0x2eb9 privk:0x7f6107f08020::7f6107f08020  e5 e5 e5 e5                                      ....
  6567 ms  0x2eb9 PK11_Encrypt()
  6567 ms  0x2eb9 symkey:0x7f60f0bcc580
  6569 ms  0x2eb9 PK11_Encrypt()
  6569 ms  0x2eb9 symkey:0x7f6107be0500
           /* TID 0x2f53 */
  6575 ms  0x2f53 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6575 ms  0x2f53 ret:0x0
           /* TID 0x2ec1 */
  6575 ms  0x2ec1 PR_Close()
  6575 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2eb9 */
  6576 ms  0x2eb9 SSL_AuthCertificateComplete()
  6576 ms  0x2eb9 fd:0x7f60f0892ca0
  6576 ms  0x2eb9 err:0x0
  6576 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6576 ms     | 0x2eb9 basekey:0x7f6104d47700
  6576 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6576 ms     | 0x2eb9 ret:0x7f60f0bcdc00
  6576 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6576 ms     | 0x2eb9 basekey:0x7f6104d47700
  6576 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6576 ms     | 0x2eb9 ret:0x7f60f08a3800
  6576 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6576 ms     | 0x2eb9 basekey:0x7f6104d47700
  6576 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6576 ms     | 0x2eb9 ret:0x7f6102e18f80
  6576 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6576 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6576 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6576 ms     | 0x2eb9 ret:0x7f60f09bc200
  6576 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6576 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6576 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f60f08a3280
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f60f08a3280
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f60f08a3800
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f6107b49e80
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f60f0bcdb00
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f6107be0d00
  6577 ms     | 0x2eb9 PK11_Encrypt()
  6577 ms     | 0x2eb9 symkey:0x7f60f09bc200
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f6107be0d00
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f60f0bcdc00
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f6107b49e80
  6577 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6577 ms     | 0x2eb9 basekey:0x7f6104d47700
  6577 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6577 ms     | 0x2eb9 ret:0x7f60f09bc200
  6577 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6577 ms     | 0x2eb9 privk:0x7f6107fa7820::7f6107fa7820  a0 36 d8 01                                      .6..
  6577 ms     | 0x2eb9 privk:0x7f6107fa7820::7f6107fa7820  e5 e5 e5 e5                                      ....
  6577 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6577 ms     | 0x2eb9 privk:0x7f6107f12820::7f6107f12820  d0 33 d8 01                                      .3..
  6577 ms     | 0x2eb9 privk:0x7f6107f12820::7f6107f12820  e5 e5 e5 e5                                      ....
           /* TID 0x2ec1 */
  6584 ms  0x2ec1 PR_Close()
  6584 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2eb9 */
  6584 ms  0x2eb9 PK11_Encrypt()
  6584 ms  0x2eb9 symkey:0x7f6107be0d00
  6586 ms  0x2eb9 PK11_DeriveWithFlags()
  6586 ms  0x2eb9 basekey:0x7f6107b49d80
  6586 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6586 ms  0x2eb9 ret:0x7f60f0bcc380
  6586 ms  0x2eb9 PK11_DeriveWithFlags()
  6586 ms  0x2eb9 basekey:0x7f6107b49d80
  6586 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6586 ms  0x2eb9 ret:0x7f60f0bcc380
  6586 ms  0x2eb9 PR_Close()
  6586 ms  0x2eb9 fd:0x7f60f0912a30
  6586 ms     | 0x2eb9 PK11_Encrypt()
  6586 ms     | 0x2eb9 symkey:0x7f60f09bcf00
           /* TID 0x2ec1 */
  6601 ms  0x2ec1 PR_Close()
  6601 ms  0x2ec1 fd:0x7f60f08320a0
  6603 ms  0x2ec1 PR_Close()
  6603 ms  0x2ec1 fd:0x7f60f08320a0
           /* TID 0x2f1d */
  6603 ms  0x2f1d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6603 ms  0x2f1d ret:0x0
           /* TID 0x2eb9 */
  6604 ms  0x2eb9 SSL_AuthCertificateComplete()
  6604 ms  0x2eb9 fd:0x7f60f0892c70
  6604 ms  0x2eb9 err:0x0
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6108081500
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6107b49d00
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6108081500
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6104dea080
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6108081500
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6101dfbe80
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6107be0e80
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6107b49d80
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6107be0e80
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6107b49e00
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6104dea080
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6107b49e00
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6104dea080
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f60f09bcf00
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6107be0e80
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6102e19900
  6604 ms     | 0x2eb9 PK11_Encrypt()
  6604 ms     | 0x2eb9 symkey:0x7f6107b49d80
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6107b49d00
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f6102e19900
  6604 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6604 ms     | 0x2eb9 basekey:0x7f6107b49d00
  6604 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6604 ms     | 0x2eb9 ret:0x7f60f09bcf00
  6605 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6605 ms     | 0x2eb9 basekey:0x7f6108081500
  6605 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6605 ms     | 0x2eb9 ret:0x7f6107b49d80
  6605 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6605 ms     | 0x2eb9 privk:0x7f6107fb4020::7f6107fb4020  10 65 64 02                                      .ed.
  6605 ms     | 0x2eb9 privk:0x7f6107fb4020::7f6107fb4020  e5 e5 e5 e5                                      ....
  6605 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6605 ms     | 0x2eb9 privk:0x7f6107fb0020::7f6107fb0020  d0 38 d8 01                                      .8..
  6605 ms     | 0x2eb9 privk:0x7f6107fb0020::7f6107fb0020  e5 e5 e5 e5                                      ....
  6605 ms  0x2eb9 PK11_Encrypt()
  6605 ms  0x2eb9 symkey:0x7f6102e19900
           /* TID 0x2ec1 */
  6611 ms  0x2ec1 PR_Close()
  6611 ms  0x2ec1 fd:0x7f60f08326d0
           /* TID 0x2eb9 */
  6616 ms  0x2eb9 PK11_DeriveWithFlags()
  6616 ms  0x2eb9 basekey:0x7f6101de6500
  6617 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6617 ms  0x2eb9 ret:0x7f6101de6580
  6617 ms  0x2eb9 PK11_DeriveWithFlags()
  6617 ms  0x2eb9 basekey:0x7f6101de6500
  6617 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6617 ms  0x2eb9 ret:0x7f6101de6580
  6617 ms  0x2eb9 PR_Close()
  6617 ms  0x2eb9 fd:0x7f61019a47f0
  6617 ms     | 0x2eb9 PK11_Encrypt()
  6617 ms     | 0x2eb9 symkey:0x7f60f08a3480
           /* TID 0x2ec1 */
  6619 ms  0x2ec1 PR_Close()
  6619 ms  0x2ec1 fd:0x7f60f08320d0
           /* TID 0x2eb9 */
  6621 ms  0x2eb9 PK11_DeriveWithFlags()
  6621 ms  0x2eb9 basekey:0x7f6101d85380
  6621 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6621 ms  0x2eb9 ret:0x7f60f08a3700
  6621 ms  0x2eb9 PK11_DeriveWithFlags()
  6621 ms  0x2eb9 basekey:0x7f6101d85380
  6621 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6621 ms  0x2eb9 ret:0x7f60f08a3700
           /* TID 0x2ec1 */
  6624 ms  0x2ec1 PR_Close()
  6624 ms  0x2ec1 fd:0x7f60f0832130
           /* TID 0x2eb9 */
  6629 ms  0x2eb9 PK11_DeriveWithFlags()
  6629 ms  0x2eb9 basekey:0x7f60f09bc200
  6629 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6629 ms  0x2eb9 ret:0x7f60f08a3700
  6629 ms  0x2eb9 PK11_DeriveWithFlags()
  6629 ms  0x2eb9 basekey:0x7f60f09bc200
  6629 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6629 ms  0x2eb9 ret:0x7f60f08a3700
           /* TID 0x2ec1 */
  6644 ms  0x2ec1 PR_Close()
  6644 ms  0x2ec1 fd:0x7f60f0832160
           /* TID 0x2eb9 */
  6657 ms  0x2eb9 PK11_DeriveWithFlags()
  6657 ms  0x2eb9 basekey:0x7f6107b49d80
  6657 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6657 ms  0x2eb9 ret:0x7f60f08a3700
  6657 ms  0x2eb9 PK11_DeriveWithFlags()
  6657 ms  0x2eb9 basekey:0x7f6107b49d80
  6657 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6657 ms  0x2eb9 ret:0x7f60f08a3700
           /* TID 0x2ec1 */
  6664 ms  0x2ec1 PR_Close()
  6664 ms  0x2ec1 fd:0x7f60f0832310
  6668 ms  0x2ec1 PR_Close()
  6668 ms  0x2ec1 fd:0x7f60f0832310
  6671 ms  0x2ec1 PR_Close()
  6671 ms  0x2ec1 fd:0x7f60f0832310
           /* TID 0x2f51 */
  6671 ms  0x2f51 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6671 ms  0x2f51 ret:0x0
           /* TID 0x2eb9 */
  6677 ms  0x2eb9 SSL_AuthCertificateComplete()
  6677 ms  0x2eb9 fd:0x7f61019a4e20
  6677 ms  0x2eb9 err:0x0
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3880
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f60f08a3700
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3880
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f6107be0580
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3880
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f6102fa8300
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3500
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f6101de6500
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3500
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f6101949b80
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f6107be0580
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f6101949b80
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f6107be0580
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f60f08a3480
  6677 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6677 ms     | 0x2eb9 basekey:0x7f60f08a3500
  6677 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6677 ms     | 0x2eb9 ret:0x7f60f08a3780
  6677 ms     | 0x2eb9 PK11_Encrypt()
  6677 ms     | 0x2eb9 symkey:0x7f6101de6500
  6678 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6678 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6678 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6678 ms     | 0x2eb9 ret:0x7f60f08a3780
  6678 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6678 ms     | 0x2eb9 basekey:0x7f60f08a3700
  6678 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6678 ms     | 0x2eb9 ret:0x7f60f08a3480
  6678 ms     | 0x2eb9 PK11_DeriveWithFlags()
  6678 ms     | 0x2eb9 basekey:0x7f60f08a3880
  6678 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  6678 ms     | 0x2eb9 ret:0x7f6101de6500
  6678 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6678 ms     | 0x2eb9 privk:0x7f610197a020::7f610197a020  e0 8c 82 f0                                      ....
  6678 ms     | 0x2eb9 privk:0x7f610197a020::7f610197a020  e5 e5 e5 e5                                      ....
  6678 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  6678 ms     | 0x2eb9 privk:0x7f60f0b5a820::7f60f0b5a820  00 8b 82 f0                                      ....
  6678 ms     | 0x2eb9 privk:0x7f60f0b5a820::7f60f0b5a820  e5 e5 e5 e5                                      ....
  6678 ms  0x2eb9 PK11_Encrypt()
  6678 ms  0x2eb9 symkey:0x7f60f08a3780
  6678 ms  0x2eb9 PK11_Encrypt()
  6678 ms  0x2eb9 symkey:0x7f60f08a3780
           /* TID 0x2ec1 */
  6680 ms  0x2ec1 PR_Close()
  6680 ms  0x2ec1 fd:0x7f60f0832400
  6685 ms  0x2ec1 PR_Close()
  6685 ms  0x2ec1 fd:0x7f60f0832280
  6689 ms  0x2ec1 PR_Close()
  6689 ms  0x2ec1 fd:0x7f60f0832280
  6691 ms  0x2ec1 PR_Close()
  6691 ms  0x2ec1 fd:0x7f60f0832280
  6698 ms  0x2ec1 PR_Close()
  6698 ms  0x2ec1 fd:0x7f60f0832370
  6701 ms  0x2ec1 PR_Close()
  6701 ms  0x2ec1 fd:0x7f60f0832280
  6703 ms  0x2ec1 PR_Close()
  6703 ms  0x2ec1 fd:0x7f60f0832280
  6705 ms  0x2ec1 PR_Close()
  6705 ms  0x2ec1 fd:0x7f60f0832280
  6708 ms  0x2ec1 PR_Close()
  6708 ms  0x2ec1 fd:0x7f60f0832280
  6712 ms  0x2ec1 PR_Close()
  6712 ms  0x2ec1 fd:0x7f60f0832250
           /* TID 0x2eb9 */
  6717 ms  0x2eb9 PK11_DeriveWithFlags()
  6717 ms  0x2eb9 basekey:0x7f6101de6500
  6717 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6717 ms  0x2eb9 ret:0x7f60f08a3400
  6717 ms  0x2eb9 PK11_DeriveWithFlags()
  6717 ms  0x2eb9 basekey:0x7f6101de6500
  6717 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6717 ms  0x2eb9 ret:0x7f60f08a3400
  6717 ms  0x2eb9 PK11_Encrypt()
  6717 ms  0x2eb9 symkey:0x7f60f08a3780
           /* TID 0x2ec1 */
  6727 ms  0x2ec1 PR_Close()
  6727 ms  0x2ec1 fd:0x7f60f0832370
  6728 ms  0x2ec1 PR_Close()
  6728 ms  0x2ec1 fd:0x7f60f0832370
  6731 ms  0x2ec1 PR_Close()
  6731 ms  0x2ec1 fd:0x7f60f0832370
  6734 ms  0x2ec1 PR_Close()
  6734 ms  0x2ec1 fd:0x7f60f0832370
  6742 ms  0x2ec1 PR_Close()
  6742 ms  0x2ec1 fd:0x7f60f0832370
  6744 ms  0x2ec1 PR_Close()
  6744 ms  0x2ec1 fd:0x7f60f0832370
  6746 ms  0x2ec1 PR_Close()
  6746 ms  0x2ec1 fd:0x7f60f0832370
  6751 ms  0x2ec1 PR_Close()
  6751 ms  0x2ec1 fd:0x7f60f0832370
  6753 ms  0x2ec1 PR_Close()
  6753 ms  0x2ec1 fd:0x7f60f0832370
  6756 ms  0x2ec1 PR_Close()
  6756 ms  0x2ec1 fd:0x7f60f0832370
  6763 ms  0x2ec1 PR_Close()
  6763 ms  0x2ec1 fd:0x7f60f0832370
  6765 ms  0x2ec1 PR_Close()
  6765 ms  0x2ec1 fd:0x7f60f0832370
  6766 ms  0x2ec1 PR_Close()
  6766 ms  0x2ec1 fd:0x7f60f0832370
  6767 ms  0x2ec1 PR_Close()
  6767 ms  0x2ec1 fd:0x7f60f0832370
  6767 ms  0x2ec1 PR_Close()
  6767 ms  0x2ec1 fd:0x7f60f0832370
  6768 ms  0x2ec1 PR_Close()
  6768 ms  0x2ec1 fd:0x7f60f0832370
  6769 ms  0x2ec1 PR_Close()
  6769 ms  0x2ec1 fd:0x7f60f0832370
  6771 ms  0x2ec1 PR_Close()
  6771 ms  0x2ec1 fd:0x7f60f0832370
  6781 ms  0x2ec1 PR_Close()
  6781 ms  0x2ec1 fd:0x7f60f0832370
  6782 ms  0x2ec1 PR_Close()
  6782 ms  0x2ec1 fd:0x7f60f0832370
           /* TID 0x2eb9 */
  6799 ms  0x2eb9 PK11_Encrypt()
  6799 ms  0x2eb9 symkey:0x7f60f08a3780
           /* TID 0x2ec1 */
  6800 ms  0x2ec1 PR_Close()
  6800 ms  0x2ec1 fd:0x7f60f0832280
           /* TID 0x2eb9 */
  6800 ms  0x2eb9 PK11_Encrypt()
  6800 ms  0x2eb9 symkey:0x7f60f09bc480
  6801 ms  0x2eb9 SSL_ImportFD()
  6801 ms  0x2eb9 ret:0x7f60f08329a0
  6801 ms  0x2eb9 SSL_AuthCertificateHook()
  6801 ms  0x2eb9 fd:0x7f60f08329a0
  6801 ms  0x2eb9 ret:0x0
  6801 ms  0x2eb9 PR_Connect()
  6801 ms  0x2eb9 fd:0x7f60f08329a0
  6826 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6826 ms  0x2eb9 cx:0x7f6101de1c48
  6827 ms     | 0x2eb9 EC_ValidatePublicKey()
  6827 ms     | 0x2eb9 ret:0x0
  6827 ms  0x2eb9 ret:0x7f60f08c6020::7f60f08c6020  10 8a 82 f0                                      ....
  6827 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6827 ms  0x2eb9 cx:0x7f6101de1c48
  6827 ms     | 0x2eb9 EC_ValidatePublicKey()
  6829 ms     | 0x2eb9 ret:0x0
  6829 ms  0x2eb9 ret:0x7f60f08d0020::7f60f08d0020  f0 8b 82 f0                                      ....
           /* TID 0x2ec1 */
  6831 ms  0x2ec1 PR_Close()
  6831 ms  0x2ec1 fd:0x7f60f08326d0
  6831 ms  0x2ec1 PR_Close()
  6831 ms  0x2ec1 fd:0x7f60f0832970
  6855 ms  0x2ec1 PR_Close()
  6855 ms  0x2ec1 fd:0x7f60f08324c0
  6862 ms  0x2ec1 PR_Close()
  6862 ms  0x2ec1 fd:0x7f60f08324c0
           /* TID 0x2eb9 */
  6880 ms  SECKEY_ECParamsToKeySize()
  6880 ms  0x2eb9 ret:0x100
  6880 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  6880 ms  0x2eb9 cx:0x7f6101de1c48
  6881 ms     | 0x2eb9 EC_ValidatePublicKey()
  6882 ms     | 0x2eb9 ret:0x0
  6882 ms  0x2eb9 ret:0x7f60f0b4e820::7f60f0b4e820  20 19 89 f0                                       ...
  6882 ms  0x2eb9 PK11_PubDeriveWithKDF()
  6882 ms  0x2eb9 seckey:0x7f60f0b4e820
  6882 ms     | 0x2eb9 EC_ValidatePublicKey()
  6884 ms     | 0x2eb9 ret:0x0
  6885 ms  0x2eb9 ret:0x7f60f08a3400
  6885 ms  0x2eb9 PK11_DeriveWithFlags()
  6885 ms  0x2eb9 basekey:0x7f60f08a3400
  6885 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6885 ms  0x2eb9 ret:0x7f60f08a3500
  6885 ms  0x2eb9 PK11_Derive()
  6885 ms  0x2eb9 basekey:0x7f60f08a3500
  6885 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  6885 ms  0x2eb9 ret:0x7f60f08a3880
  6885 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6885 ms  0x2eb9 privk:0x7f60f0b4e820::7f60f0b4e820  20 19 89 f0                                       ...
  6886 ms  0x2eb9 privk:0x7f60f0b4e820::7f60f0b4e820  e5 e5 e5 e5                                      ....
  6886 ms  0x2eb9 PK11_Encrypt()
  6886 ms  0x2eb9 symkey:0x7f60f09bb280
           /* TID 0x2f1f */
  6886 ms  0x2f1f _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6886 ms  0x2f1f ret:0x0
           /* TID 0x2eb9 */
  6897 ms  0x2eb9 SSL_AuthCertificateComplete()
  6897 ms  0x2eb9 fd:0x7f60f08329a0
  6897 ms  0x2eb9 err:0x0
  6897 ms  0x2eb9 PK11_Encrypt()
  6897 ms  0x2eb9 symkey:0x7f60f09bb280
  6920 ms  0x2eb9 PK11_Encrypt()
  6920 ms  0x2eb9 symkey:0x7f6107be0d00
  6937 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6937 ms  0x2eb9 privk:0x7f60f08d0020::7f60f08d0020  f0 8b 82 f0                                      ....
  6937 ms  0x2eb9 privk:0x7f60f08d0020::7f60f08d0020  e5 e5 e5 e5                                      ....
  6937 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  6937 ms  0x2eb9 privk:0x7f60f08c6020::7f60f08c6020  10 8a 82 f0                                      ....
  6937 ms  0x2eb9 privk:0x7f60f08c6020::7f60f08c6020  e5 e5 e5 e5                                      ....
           /* TID 0x2ec1 */
  6938 ms  0x2ec1 PR_Close()
  6938 ms  0x2ec1 fd:0x7f60f08325e0
           /* TID 0x2eb9 */
  6952 ms  0x2eb9 PK11_Encrypt()
  6952 ms  0x2eb9 symkey:0x7f6107be0500
  6958 ms  0x2eb9 PK11_Encrypt()
  6958 ms  0x2eb9 symkey:0x7f6102e19900
  7001 ms  0x2eb9 SSL_ImportFD()
  7001 ms  0x2eb9 ret:0x7f60f0892ac0
  7001 ms  0x2eb9 SSL_AuthCertificateHook()
  7001 ms  0x2eb9 fd:0x7f60f0892ac0
  7001 ms  0x2eb9 ret:0x0
  7001 ms  0x2eb9 PR_Connect()
  7001 ms  0x2eb9 fd:0x7f60f0892ac0
  7021 ms  0x2eb9 SSL_ImportFD()
  7021 ms  0x2eb9 ret:0x7f60f09129a0
  7021 ms  0x2eb9 SSL_AuthCertificateHook()
  7021 ms  0x2eb9 fd:0x7f60f09129a0
  7021 ms  0x2eb9 ret:0x0
  7021 ms  0x2eb9 PR_Connect()
  7021 ms  0x2eb9 fd:0x7f60f09129a0
  7038 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7038 ms  0x2eb9 cx:0x7f6101de1f88
  7039 ms     | 0x2eb9 EC_ValidatePublicKey()
  7039 ms     | 0x2eb9 ret:0x0
  7039 ms  0x2eb9 ret:0x7f60f0a31020::7f60f0a31020  90 42 8a f0                                      .B..
  7039 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7039 ms  0x2eb9 cx:0x7f6101de1f88
  7040 ms     | 0x2eb9 EC_ValidatePublicKey()
  7041 ms     | 0x2eb9 ret:0x0
  7041 ms  0x2eb9 ret:0x7f60f0b51020::7f60f0b51020  70 44 8a f0                                      pD..
  7047 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7047 ms  0x2eb9 cx:0x7f6101de2128
  7047 ms     | 0x2eb9 EC_ValidatePublicKey()
  7048 ms     | 0x2eb9 ret:0x0
  7048 ms  0x2eb9 ret:0x7f60f0b5a020::7f60f0b5a020  60 45 8a f0                                      `E..
  7048 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7048 ms  0x2eb9 cx:0x7f6101de2128
  7048 ms     | 0x2eb9 EC_ValidatePublicKey()
  7050 ms     | 0x2eb9 ret:0x0
  7050 ms  0x2eb9 ret:0x7f610196e820::7f610196e820  90 47 8a f0                                      .G..
  7096 ms  0x2eb9 PK11_Derive()
  7096 ms  0x2eb9 basekey:0x7f60f08a3400
  7096 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7096 ms  0x2eb9 ret:0x7f60f08a3480
  7096 ms  0x2eb9 PK11_PubDeriveWithKDF()
  7096 ms  0x2eb9 seckey:0x7f60f0a31020
  7096 ms     | 0x2eb9 EC_ValidatePublicKey()
  7096 ms     | 0x2eb9 ret:0x0
  7097 ms  0x2eb9 ret:0x7f60f08a3400
  7097 ms  SECKEY_ECParamsToKeySize()
  7097 ms  0x2eb9 ret:0xff
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f60f08a3480
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f6101de6580
  7097 ms  0x2eb9 PK11_Derive()
  7097 ms  0x2eb9 basekey:0x7f60f08a3400
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f6107be0e80
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f6107be0e80
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f60f08a3480
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f6107be0e80
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f60f08a3400
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f6107be0e80
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f6101de6580
  7097 ms  0x2eb9 PK11_Derive()
  7097 ms  0x2eb9 basekey:0x7f6108081500
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f60f09bcf00
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f60f08a3400
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f6107be0e80
  7097 ms  0x2eb9 PK11_DeriveWithFlags()
  7097 ms  0x2eb9 basekey:0x7f60f08a3400
  7097 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7097 ms  0x2eb9 ret:0x7f6101de6580
  7099 ms  0x2eb9 PK11_DeriveWithFlags()
  7099 ms  0x2eb9 basekey:0x7f60f08a3400
  7099 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7099 ms  0x2eb9 ret:0x7f6101de6580
  7099 ms  0x2eb9 SSL_AuthCertificateComplete()
  7099 ms  0x2eb9 fd:0x7f60f0892ac0
  7099 ms  0x2eb9 err:0x0
  7099 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7099 ms     | 0x2eb9 basekey:0x7f60f09bcf00
  7099 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6101de6580
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f60f09bcf00
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6108081500
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f60f09bcf00
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f60f0bcc380
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f60f08a3480
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f60f0bcdb00
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f60f08a3480
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6104d47700
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f6108081500
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6104d47700
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f6108081500
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6107b49e80
  7100 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7100 ms     | 0x2eb9 basekey:0x7f60f08a3480
  7100 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7100 ms     | 0x2eb9 ret:0x7f6107be0e80
  7100 ms     | 0x2eb9 PK11_Encrypt()
  7100 ms     | 0x2eb9 symkey:0x7f60f0bcdb00
  7101 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7101 ms     | 0x2eb9 basekey:0x7f6101de6580
  7101 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7101 ms     | 0x2eb9 ret:0x7f6107be0e80
  7101 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7101 ms     | 0x2eb9 basekey:0x7f6101de6580
  7101 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7101 ms     | 0x2eb9 ret:0x7f6107b49e80
  7101 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7101 ms     | 0x2eb9 basekey:0x7f60f09bcf00
  7101 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7101 ms     | 0x2eb9 ret:0x7f60f0bcdb00
  7101 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7101 ms     | 0x2eb9 privk:0x7f60f0b51020::7f60f0b51020  70 44 8a f0                                      pD..
  7101 ms     | 0x2eb9 privk:0x7f60f0b51020::7f60f0b51020  e5 e5 e5 e5                                      ....
  7101 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7101 ms     | 0x2eb9 privk:0x7f60f0a31020::7f60f0a31020  90 42 8a f0                                      .B..
  7101 ms     | 0x2eb9 privk:0x7f60f0a31020::7f60f0a31020  e5 e5 e5 e5                                      ....
  7102 ms  0x2eb9 PK11_Encrypt()
  7102 ms  0x2eb9 symkey:0x7f6107be0e80
  7102 ms  0x2eb9 PK11_Encrypt()
  7102 ms  0x2eb9 symkey:0x7f6107be0e80
           /* TID 0x2f53 */
  7103 ms  0x2f53 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7103 ms  0x2f53 ret:0x0
           /* TID 0x2eb9 */
  7103 ms  SECKEY_ECParamsToKeySize()
  7103 ms  0x2eb9 ret:0x100
  7103 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7103 ms  0x2eb9 cx:0x7f6101de2128
  7104 ms     | 0x2eb9 EC_ValidatePublicKey()
  7105 ms     | 0x2eb9 ret:0x0
  7105 ms  0x2eb9 ret:0x7f6101977020::7f6101977020  10 4a 8a f0                                      .J..
  7106 ms  0x2eb9 PK11_PubDeriveWithKDF()
  7106 ms  0x2eb9 seckey:0x7f6101977020
  7106 ms     | 0x2eb9 EC_ValidatePublicKey()
  7107 ms     | 0x2eb9 ret:0x0
  7116 ms  0x2eb9 ret:0x7f60f08a3400
  7116 ms  0x2eb9 PK11_DeriveWithFlags()
  7116 ms  0x2eb9 basekey:0x7f60f08a3400
  7116 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7116 ms  0x2eb9 ret:0x7f60f08a3480
  7116 ms  0x2eb9 PK11_Derive()
  7116 ms  0x2eb9 basekey:0x7f60f08a3480
  7116 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7116 ms  0x2eb9 ret:0x7f60f09bcf00
  7116 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  7116 ms  0x2eb9 privk:0x7f6101977020::7f6101977020  10 4a 8a f0                                      .J..
  7117 ms  0x2eb9 privk:0x7f6101977020::7f6101977020  e5 e5 e5 e5                                      ....
  7117 ms  0x2eb9 PK11_Encrypt()
  7117 ms  0x2eb9 symkey:0x7f60f0b26f80
  7117 ms  0x2eb9 SSL_AuthCertificateComplete()
  7117 ms  0x2eb9 fd:0x7f60f09129a0
  7117 ms  0x2eb9 err:0x0
  7118 ms  0x2eb9 PK11_Encrypt()
  7118 ms  0x2eb9 symkey:0x7f60f0b26f80
           /* TID 0x2ec1 */
  7119 ms  0x2ec1 PR_Close()
  7119 ms  0x2ec1 fd:0x7f60f0888f40
           /* TID 0x2eb9 */
  7138 ms  0x2eb9 PK11_DeriveWithFlags()
  7138 ms  0x2eb9 basekey:0x7f60f0bcdb00
  7138 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7138 ms  0x2eb9 ret:0x7f60f08a3400
  7138 ms  0x2eb9 PK11_DeriveWithFlags()
  7138 ms  0x2eb9 basekey:0x7f60f0bcdb00
  7138 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7138 ms  0x2eb9 ret:0x7f60f08a3400
  7138 ms  0x2eb9 PK11_Encrypt()
  7138 ms  0x2eb9 symkey:0x7f6107be0e80
  7158 ms  0x2eb9 PK11_Encrypt()
  7158 ms  0x2eb9 symkey:0x7f6107be0d00
  7168 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  7168 ms  0x2eb9 privk:0x7f610196e820::7f610196e820  90 47 8a f0                                      .G..
  7168 ms  0x2eb9 privk:0x7f610196e820::7f610196e820  e5 e5 e5 e5                                      ....
  7168 ms  0x2eb9 SECKEY_DestroyPrivateKey()
  7168 ms  0x2eb9 privk:0x7f60f0b5a020::7f60f0b5a020  60 45 8a f0                                      `E..
  7168 ms  0x2eb9 privk:0x7f60f0b5a020::7f60f0b5a020  e5 e5 e5 e5                                      ....
           /* TID 0x2ec1 */
  7169 ms  0x2ec1 PR_Close()
  7169 ms  0x2ec1 fd:0x7f60f08922b0
           /* TID 0x2eb9 */
  7187 ms  0x2eb9 PK11_Encrypt()
  7187 ms  0x2eb9 symkey:0x7f6107be0e80
           /* TID 0x2ec1 */
  7187 ms  0x2ec1 PR_Close()
  7187 ms  0x2ec1 fd:0x7f60f08922b0
           /* TID 0x2eb9 */
  7212 ms  0x2eb9 PK11_Encrypt()
  7212 ms  0x2eb9 symkey:0x7f6107be0500
  7269 ms  0x2eb9 PK11_Encrypt()
  7269 ms  0x2eb9 symkey:0x7f6102e19900
  7294 ms  0x2eb9 PK11_Encrypt()
  7294 ms  0x2eb9 symkey:0x7f6107be0e80
  7298 ms  0x2eb9 PK11_Encrypt()
  7298 ms  0x2eb9 symkey:0x7f6107be0e80
  7349 ms  0x2eb9 PK11_Encrypt()
  7349 ms  0x2eb9 symkey:0x7f6107be0e80
  7354 ms  0x2eb9 SSL_ImportFD()
  7354 ms  0x2eb9 ret:0x7f6101966a60
  7354 ms  0x2eb9 SSL_AuthCertificateHook()
  7354 ms  0x2eb9 fd:0x7f6101966a60
  7354 ms  0x2eb9 ret:0x0
  7355 ms  0x2eb9 PR_Connect()
  7355 ms  0x2eb9 fd:0x7f6101966a60
           /* TID 0x2ec1 */
  7388 ms  0x2ec1 PR_Close()
  7388 ms  0x2ec1 fd:0x7f60f0892970
           /* TID 0x2eb9 */
  7396 ms  0x2eb9 PK11_Encrypt()
  7396 ms  0x2eb9 symkey:0x7f6107be0d00
  7402 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7402 ms  0x2eb9 cx:0x7f6101de2468
  7403 ms     | 0x2eb9 EC_ValidatePublicKey()
  7403 ms     | 0x2eb9 ret:0x0
  7403 ms  0x2eb9 ret:0x7f610196b020::7f610196b020  00 4b 8a f0                                      .K..
  7403 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7403 ms  0x2eb9 cx:0x7f6101de2468
  7404 ms     | 0x2eb9 EC_ValidatePublicKey()
  7407 ms     | 0x2eb9 ret:0x0
  7407 ms  0x2eb9 ret:0x7f6101977820::7f6101977820  80 4d 8a f0                                      .M..
           /* TID 0x2ec1 */
  7417 ms  0x2ec1 PR_Close()
  7417 ms  0x2ec1 fd:0x7f60f0892460
           /* TID 0x2eb9 */
  7422 ms  0x2eb9 PK11_Encrypt()
  7422 ms  0x2eb9 symkey:0x7f6107be0500
  7455 ms  0x2eb9 PK11_Derive()
  7455 ms  0x2eb9 basekey:0x7f60f08a3400
  7455 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7455 ms  0x2eb9 ret:0x7f6107b49e80
  7455 ms  0x2eb9 PK11_PubDeriveWithKDF()
  7455 ms  0x2eb9 seckey:0x7f610196b020
  7455 ms     | 0x2eb9 EC_ValidatePublicKey()
  7455 ms     | 0x2eb9 ret:0x0
  7456 ms  0x2eb9 ret:0x7f60f08a3400
  7456 ms  SECKEY_ECParamsToKeySize()
  7456 ms  0x2eb9 ret:0xff
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f6107b49e80
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86980
  7456 ms  0x2eb9 PK11_Derive()
  7456 ms  0x2eb9 basekey:0x7f60f08a3400
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86a00
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f6101d86a00
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6107b49e80
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f6101d86a00
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f60f08a3400
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f6101d86a00
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86980
  7456 ms  0x2eb9 PK11_Derive()
  7456 ms  0x2eb9 basekey:0x7f6101d86b00
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86b80
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f60f08a3400
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86a00
  7456 ms  0x2eb9 PK11_DeriveWithFlags()
  7456 ms  0x2eb9 basekey:0x7f60f08a3400
  7456 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7456 ms  0x2eb9 ret:0x7f6101d86980
  7457 ms  SECKEY_ECParamsToKeySize()
  7457 ms  0x2eb9 ret:0x100
  7457 ms  SECKEY_ECParamsToBasePointOrderLen()
  7457 ms  0x2eb9 ret:0x100
  7457 ms  SECKEY_ECParamsToBasePointOrderLen()
  7457 ms  0x2eb9 ret:0x100
  7457 ms  0x2eb9 EC_ValidatePublicKey()
  7459 ms  0x2eb9 ret:0x0
  7461 ms  0x2eb9 PK11_DeriveWithFlags()
  7461 ms  0x2eb9 basekey:0x7f60f08a3400
  7461 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7461 ms  0x2eb9 ret:0x7f6101d86980
  7462 ms  0x2eb9 SSL_ImportFD()
  7462 ms  0x2eb9 ret:0x7f6101966670
  7462 ms  0x2eb9 SSL_AuthCertificateHook()
  7462 ms  0x2eb9 fd:0x7f6101966670
  7462 ms  0x2eb9 ret:0x0
  7462 ms  0x2eb9 PR_Connect()
  7462 ms  0x2eb9 fd:0x7f6101966670
           /* TID 0x2ec1 */
  7477 ms  0x2ec1 PR_Close()
  7477 ms  0x2ec1 fd:0x7f60f0b97b50
  7484 ms  0x2ec1 PR_Close()
  7484 ms  0x2ec1 fd:0x7f60f0b97b50
           /* TID 0x2eb9 */
  7485 ms  0x2eb9 PK11_Encrypt()
  7485 ms  0x2eb9 symkey:0x7f6107be0d00
           /* TID 0x2ec1 */
  7486 ms  0x2ec1 PR_Close()
  7486 ms  0x2ec1 fd:0x7f60f0b97b50
           /* TID 0x2eb9 */
  7515 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7515 ms  0x2eb9 cx:0x7f6101de2c88
  7515 ms     | 0x2eb9 EC_ValidatePublicKey()
  7515 ms     | 0x2eb9 ret:0x0
  7515 ms  0x2eb9 ret:0x7f6101c9f020::7f6101c9f020  b0 50 99 f0                                      .P..
  7515 ms  0x2eb9 SECKEY_CreateECPrivateKey()
  7515 ms  0x2eb9 cx:0x7f6101de2c88
  7516 ms     | 0x2eb9 EC_ValidatePublicKey()
  7517 ms     | 0x2eb9 ret:0x0
  7517 ms  0x2eb9 ret:0x7f6101ca2820::7f6101ca2820  90 5c 99 f0                                      .\..
           /* TID 0x2ec1 */
  7546 ms  0x2ec1 PR_Close()
  7546 ms  0x2ec1 fd:0x7f60f0912bb0
           /* TID 0x2eb9 */
  7570 ms  0x2eb9 PK11_Derive()
  7570 ms  0x2eb9 basekey:0x7f6101d86980
  7570 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7570 ms  0x2eb9 ret:0x7f6101d86b00
  7570 ms  0x2eb9 PK11_PubDeriveWithKDF()
  7570 ms  0x2eb9 seckey:0x7f6101c9f020
  7570 ms     | 0x2eb9 EC_ValidatePublicKey()
  7570 ms     | 0x2eb9 ret:0x0
  7571 ms  0x2eb9 ret:0x7f6101d86980
  7571 ms  SECKEY_ECParamsToKeySize()
  7571 ms  0x2eb9 ret:0xff
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f6101d86b00
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f082d080
  7571 ms  0x2eb9 PK11_Derive()
  7571 ms  0x2eb9 basekey:0x7f6101d86980
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f082d380
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f60f082d380
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f6101d86b00
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f60f082d380
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f6101d86980
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f60f082d380
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f082d080
  7571 ms  0x2eb9 PK11_Derive()
  7571 ms  0x2eb9 basekey:0x7f60f0884f00
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f08a2400
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f6101d86980
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f082d380
  7571 ms  0x2eb9 PK11_DeriveWithFlags()
  7571 ms  0x2eb9 basekey:0x7f6101d86980
  7571 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7571 ms  0x2eb9 ret:0x7f60f082d080
  7572 ms  0x2eb9 PK11_DeriveWithFlags()
  7572 ms  0x2eb9 basekey:0x7f6101d86980
  7572 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7572 ms  0x2eb9 ret:0x7f60f082d080
  7572 ms  0x2eb9 SSL_AuthCertificateComplete()
  7572 ms  0x2eb9 fd:0x7f6101966670
  7572 ms  0x2eb9 err:0x0
  7572 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7572 ms     | 0x2eb9 basekey:0x7f60f08a2400
  7572 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7572 ms     | 0x2eb9 ret:0x7f60f082d080
  7572 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7572 ms     | 0x2eb9 basekey:0x7f60f08a2400
  7572 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7572 ms     | 0x2eb9 ret:0x7f60f0884f00
  7572 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7572 ms     | 0x2eb9 basekey:0x7f60f08a2400
  7572 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a2680
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f6101d86b00
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a2700
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f6101d86b00
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a3380
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f60f0884f00
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a3380
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f60f0884f00
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a3600
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f6101d86b00
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f082d380
  7573 ms     | 0x2eb9 PK11_Encrypt()
  7573 ms     | 0x2eb9 symkey:0x7f60f08a2700
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f60f082d080
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f082d380
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f60f082d080
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a3600
  7573 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7573 ms     | 0x2eb9 basekey:0x7f60f08a2400
  7573 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7573 ms     | 0x2eb9 ret:0x7f60f08a2700
  7573 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7573 ms     | 0x2eb9 privk:0x7f6101ca2820::7f6101ca2820  90 5c 99 f0                                      .\..
  7573 ms     | 0x2eb9 privk:0x7f6101ca2820::7f6101ca2820  e5 e5 e5 e5                                      ....
  7573 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7573 ms     | 0x2eb9 privk:0x7f6101c9f020::7f6101c9f020  b0 50 99 f0                                      .P..
  7573 ms     | 0x2eb9 privk:0x7f6101c9f020::7f6101c9f020  e5 e5 e5 e5                                      ....
  7574 ms  0x2eb9 PK11_Encrypt()
  7574 ms  0x2eb9 symkey:0x7f60f082d380
           /* TID 0x2ec1 */
  7605 ms  0x2ec1 PR_Close()
  7605 ms  0x2ec1 fd:0x7f61019663d0
           /* TID 0x2f1d */
  7605 ms  0x2f1d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7605 ms  0x2f1d ret:0x0
           /* TID 0x2eb9 */
  7605 ms  0x2eb9 SSL_AuthCertificateComplete()
  7605 ms  0x2eb9 fd:0x7f6101966a60
  7605 ms  0x2eb9 err:0x0
  7605 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7605 ms     | 0x2eb9 basekey:0x7f6101d86b80
  7605 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7605 ms     | 0x2eb9 ret:0x7f6101d86980
  7605 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7605 ms     | 0x2eb9 basekey:0x7f6101d86b80
  7605 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7605 ms     | 0x2eb9 ret:0x7f6101d86b00
  7605 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7605 ms     | 0x2eb9 basekey:0x7f6101d86b80
  7605 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7605 ms     | 0x2eb9 ret:0x7f60f08a2400
  7605 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7605 ms     | 0x2eb9 basekey:0x7f6107b49e80
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3600
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6107b49e80
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3b00
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6101d86b00
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3b00
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6101d86b00
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3f80
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6107b49e80
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f6101d86a00
  7606 ms     | 0x2eb9 PK11_Encrypt()
  7606 ms     | 0x2eb9 symkey:0x7f60f08a3600
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6101d86980
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f6101d86a00
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6101d86980
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3f80
  7606 ms     | 0x2eb9 PK11_DeriveWithFlags()
  7606 ms     | 0x2eb9 basekey:0x7f6101d86b80
  7606 ms     |    | 0x2eb9 PK11_DeriveWithTemplate()
  7606 ms     | 0x2eb9 ret:0x7f60f08a3600
  7606 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7606 ms     | 0x2eb9 privk:0x7f6101977820::7f6101977820  80 4d 8a f0                                      .M..
  7606 ms     | 0x2eb9 privk:0x7f6101977820::7f6101977820  e5 e5 e5 e5                                      ....
  7606 ms     | 0x2eb9 SECKEY_DestroyPrivateKey()
  7606 ms     | 0x2eb9 privk:0x7f610196b020::7f610196b020  00 4b 8a f0                                      .K..
  7606 ms     | 0x2eb9 privk:0x7f610196b020::7f610196b020  e5 e5 e5 e5                                      ....
  7607 ms  0x2eb9 PK11_Encrypt()
  7607 ms  0x2eb9 symkey:0x7f6101d86a00
  7607 ms  0x2eb9 PK11_Encrypt()
  7607 ms  0x2eb9 symkey:0x7f6101d86a00
  7632 ms  0x2eb9 PK11_DeriveWithFlags()
  7632 ms  0x2eb9 basekey:0x7f60f08a2700
  7632 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7632 ms  0x2eb9 ret:0x7f60f08a3400
  7632 ms  0x2eb9 PK11_DeriveWithFlags()
  7632 ms  0x2eb9 basekey:0x7f60f08a2700
  7632 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7632 ms  0x2eb9 ret:0x7f60f08a3400
  7653 ms  0x2eb9 PK11_DeriveWithFlags()
  7653 ms  0x2eb9 basekey:0x7f60f08a3600
  7654 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7654 ms  0x2eb9 ret:0x7f60f08a3400
  7654 ms  0x2eb9 PK11_DeriveWithFlags()
  7654 ms  0x2eb9 basekey:0x7f60f08a3600
  7654 ms     | 0x2eb9 PK11_DeriveWithTemplate()
  7654 ms  0x2eb9 ret:0x7f60f08a3400
  7654 ms  0x2eb9 PK11_Encrypt()
  7654 ms  0x2eb9 symkey:0x7f6101d86a00
           /* TID 0x2ec1 */
  7687 ms  0x2ec1 PR_Close()
  7687 ms  0x2ec1 fd:0x7f6101966310
           /* TID 0x2eb9 */
  7702 ms  0x2eb9 PK11_Encrypt()
  7702 ms  0x2eb9 symkey:0x7f6101d86a00
  7715 ms  0x2eb9 PR_Close()
  7715 ms  0x2eb9 fd:0x7f61022e61c0
           /* TID 0x2eae */
  7717 ms  0x2eae EC_ValidatePublicKey()
  7719 ms  0x2eae ret:0x0
  7719 ms  0x2eae EC_ValidatePublicKey()
  7725 ms  0x2eae ret:0x0
  7725 ms  0x2eae EC_ValidatePublicKey()
  7727 ms  0x2eae ret:0x0
  7727 ms  0x2eae EC_ValidatePublicKey()
  7729 ms  0x2eae ret:0x0
  7729 ms  0x2eae EC_ValidatePublicKey()
  7733 ms  0x2eae ret:0x0
  7733 ms  0x2eae EC_ValidatePublicKey()
  7734 ms  0x2eae ret:0x0
  7735 ms  0x2eae EC_ValidatePublicKey()
  7736 ms  0x2eae ret:0x0
  7736 ms  0x2eae EC_ValidatePublicKey()
  7737 ms  0x2eae ret:0x0
  7737 ms  0x2eae EC_ValidatePublicKey()
  7739 ms  0x2eae ret:0x0
  7739 ms  0x2eae EC_ValidatePublicKey()
  7741 ms  0x2eae ret:0x0
           /* TID 0x2eb9 */
  7742 ms  0x2eb9 PK11_Encrypt()
  7742 ms  0x2eb9 symkey:0x7f6101d86a00
  7742 ms  0x2eb9 PK11_Encrypt()
  7742 ms  0x2eb9 symkey:0x7f60f08a3780
  7742 ms  0x2eb9 PK11_Encrypt()
  7742 ms  0x2eb9 symkey:0x7f6107be0e80
  7742 ms  0x2eb9 PK11_Encrypt()
  7742 ms  0x2eb9 symkey:0x7f60f0bcc580
  7743 ms  0x2eb9 PR_Close()
  7743 ms  0x2eb9 fd:0x7f60f09129a0
  7743 ms     | 0x2eb9 PK11_Encrypt()
  7743 ms     | 0x2eb9 symkey:0x7f60f0b26f80
  7743 ms  0x2eb9 PR_Close()
  7743 ms  0x2eb9 fd:0x7f60f08329a0
  7743 ms     | 0x2eb9 PK11_Encrypt()
  7743 ms     | 0x2eb9 symkey:0x7f60f09bb280
  7743 ms  0x2eb9 PR_Close()
  7743 ms  0x2eb9 fd:0x7f60f0832700
  7743 ms  0x2eb9 PR_Close()
  7743 ms  0x2eb9 fd:0x7f60f0892a90
  7743 ms     | 0x2eb9 PK11_Encrypt()
  7743 ms     | 0x2eb9 symkey:0x7f6107be0500
  7743 ms  0x2eb9 PR_Close()
  7743 ms  0x2eb9 fd:0x7f60f0892c70
  7744 ms     | 0x2eb9 PK11_Encrypt()
  7744 ms     | 0x2eb9 symkey:0x7f6102e19900
  7744 ms  0x2eb9 PR_Close()
  7744 ms  0x2eb9 fd:0x7f60f0892ca0
  7744 ms     | 0x2eb9 PK11_Encrypt()
  7744 ms     | 0x2eb9 symkey:0x7f6107be0d00
  7744 ms  0x2eb9 PR_Close()
  7744 ms  0x2eb9 fd:0x7f6101966c10
  7744 ms  0x2eb9 PR_Close()
  7744 ms  0x2eb9 fd:0x7f60f08324f0
  7744 ms     | 0x2eb9 PK11_Encrypt()
  7744 ms     | 0x2eb9 symkey:0x7f60f0964600
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f60f0832610
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f60f0832c10
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f60f0aedeb0
  7745 ms     | 0x2eb9 PK11_Encrypt()
  7745 ms     | 0x2eb9 symkey:0x7f60f09bc800
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f60f0aedcd0
  7745 ms     | 0x2eb9 PK11_Encrypt()
  7745 ms     | 0x2eb9 symkey:0x7f60f09bc580
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f60f0aedaf0
  7745 ms     | 0x2eb9 PK11_Encrypt()
  7745 ms     | 0x2eb9 symkey:0x7f60f09bc480
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f6102f9b790
  7745 ms  0x2eb9 PR_Close()
  7745 ms  0x2eb9 fd:0x7f6102f9b2b0
  7745 ms     | 0x2eb9 PK11_Encrypt()
  7745 ms     | 0x2eb9 symkey:0x7f6102f98100
           /* TID 0x2f0c */
  7748 ms  0x2f0c PR_Close()
  7748 ms  0x2f0c fd:0x7f60f08320d0
  7748 ms  0x2f0c PR_Close()
  7748 ms  0x2f0c fd:0x7f60f08320d0
           /* TID 0x2eb9 */
  7750 ms  0x2eb9 PR_Close()
  7750 ms  0x2eb9 fd:0x7f61071ffd30
  7752 ms  0x2eb9 PR_Close()
  7752 ms  0x2eb9 fd:0x7f61071ff1c0
  7752 ms     | 0x2eb9 PK11_Encrypt()
  7752 ms     | 0x2eb9 symkey:0x7f61022e3800
  7752 ms  0x2eb9 PR_Close()
  7752 ms  0x2eb9 fd:0x7f61071ff0d0
  7752 ms     | 0x2eb9 PK11_Encrypt()
  7752 ms     | 0x2eb9 symkey:0x7f6101dd5180
  7752 ms  0x2eb9 PR_Close()
  7752 ms  0x2eb9 fd:0x7f6101cd9dc0
  7752 ms     | 0x2eb9 PK11_Encrypt()
  7752 ms     | 0x2eb9 symkey:0x7f61071ec880
  7753 ms  0x2eb9 PR_Close()
  7753 ms  0x2eb9 fd:0x7f6101966670
  7753 ms     | 0x2eb9 PK11_Encrypt()
  7753 ms     | 0x2eb9 symkey:0x7f60f082d380
  7753 ms  0x2eb9 PR_Close()
  7753 ms  0x2eb9 fd:0x7f6102ea79d0
  7753 ms     | 0x2eb9 PK11_Encrypt()
  7753 ms     | 0x2eb9 symkey:0x7f6102eae180
  7753 ms  0x2eb9 PR_Close()
  7753 ms  0x2eb9 fd:0x7f6101cf9e20
  7753 ms  0x2eb9 PR_Close()
  7753 ms  0x2eb9 fd:0x7f61019a4070
  7753 ms     | 0x2eb9 PK11_Encrypt()
  7753 ms     | 0x2eb9 symkey:0x7f60f09bca80
           /* TID 0x2eae */
  7755 ms  0x2eae PR_Close()
  7755 ms  0x2eae fd:0x7f6102ecd610
  7755 ms  0x2eae PR_Close()
  7755 ms  0x2eae fd:0x7f60f0832670
           /* TID 0x2eb9 */
  7755 ms  0x2eb9 PR_Close()
  7755 ms  0x2eb9 fd:0x7f60f0b97970
  7755 ms     | 0x2eb9 PK11_Encrypt()
  7755 ms     | 0x2eb9 symkey:0x7f60f0bcc580
  7755 ms  0x2eb9 PR_Close()
  7755 ms  0x2eb9 fd:0x7f61019a4e20
  7755 ms     | 0x2eb9 PK11_Encrypt()
  7755 ms     | 0x2eb9 symkey:0x7f60f08a3780
  7755 ms  0x2eb9 PR_Close()
  7755 ms  0x2eb9 fd:0x7f60f0892ac0
  7755 ms     | 0x2eb9 PK11_Encrypt()
  7755 ms     | 0x2eb9 symkey:0x7f6107be0e80
  7756 ms  0x2eb9 PR_Close()
  7756 ms  0x2eb9 fd:0x7f6101966a60
  7756 ms     | 0x2eb9 PK11_Encrypt()
  7756 ms     | 0x2eb9 symkey:0x7f6101d86a00
           /* TID 0x2eae */
  7757 ms  0x2eae PR_Close()
  7757 ms  0x2eae fd:0x7f60f0832790
  7757 ms  0x2eae PR_Close()
  7757 ms  0x2eae fd:0x7f60f0832250
  7757 ms  0x2eae PR_Close()
  7757 ms  0x2eae fd:0x7f60f08322e0
  7757 ms  0x2eae PR_Close()
  7757 ms  0x2eae fd:0x7f60f0832250
           /* TID 0x2ed3 */
  7762 ms  0x2ed3 PR_Close()
  7762 ms  0x2ed3 fd:0x7f60f0832250
           /* TID 0x2eae */
  7787 ms  0x2eae PR_Close()
  7787 ms  0x2eae fd:0x7f60f08322e0
  7787 ms  0x2eae PR_Close()
  7787 ms  0x2eae fd:0x7f60f0892d30
  7788 ms  0x2eae PR_Close()
  7788 ms  0x2eae fd:0x7f60f08322e0
  7788 ms  0x2eae PR_Close()
  7788 ms  0x2eae fd:0x7f60f0892d30
  7788 ms  0x2eae PR_Close()
  7788 ms  0x2eae fd:0x7f610ccc89a0
  7788 ms  0x2eae PR_Close()
  7788 ms  0x2eae fd:0x7f610ccc88b0
  7788 ms  0x2eae PR_Close()
  7788 ms  0x2eae fd:0x7f610ccc8a60
  7792 ms  0x2eae PR_Close()
  7792 ms  0x2eae fd:0x7f60f0892d60
  7798 ms  0x2eae PR_Close()
  7798 ms  0x2eae fd:0x7f60f0892d60
  7800 ms  0x2eae PR_Close()
  7800 ms  0x2eae fd:0x7f60f08322e0
  7800 ms  0x2eae PR_Close()
  7800 ms  0x2eae fd:0x7f60f0892df0
  7801 ms  0x2eae PR_Close()
  7801 ms  0x2eae fd:0x7f60f08322e0
  7801 ms  0x2eae PR_Close()
  7801 ms  0x2eae fd:0x7f60f0892df0
  7803 ms  0x2eae PR_Close()
  7803 ms  0x2eae fd:0x7f60f0892e20
  7805 ms  0x2eae PR_Close()
  7805 ms  0x2eae fd:0x7f60f0892e20
  7810 ms  0x2eae PR_Close()
  7810 ms  0x2eae fd:0x7f60f08322e0
  7810 ms  0x2eae PR_Close()
  7810 ms  0x2eae fd:0x7f60f0892eb0
  7811 ms  0x2eae PR_Close()
  7811 ms  0x2eae fd:0x7f60f08322e0
  7811 ms  0x2eae PR_Close()
  7811 ms  0x2eae fd:0x7f60f0892eb0
  7813 ms  0x2eae PR_Close()
  7813 ms  0x2eae fd:0x7f60f0892ee0
  7815 ms  0x2eae PR_Close()
  7815 ms  0x2eae fd:0x7f60f0892ee0
  7821 ms  0x2eae PR_Close()
  7821 ms  0x2eae fd:0x7f60f0912910
  7822 ms  0x2eae PR_Close()
  7822 ms  0x2eae fd:0x7f60f0912910
  7824 ms  0x2eae PR_Close()
  7824 ms  0x2eae fd:0x7f60f09129a0
           /* TID 0x2ed3 */
  7829 ms  0x2ed3 PR_Close()
  7829 ms  0x2ed3 fd:0x7f60f0832160
           /* TID 0x2eae */
  7834 ms  0x2eae PR_Close()
  7834 ms  0x2eae fd:0x7f60f08322e0
  7834 ms  0x2eae PR_Close()
  7834 ms  0x2eae fd:0x7f60f0aed400
           /* TID 0x2ed3 */
  7834 ms  0x2ed3 PR_Close()
  7834 ms  0x2ed3 fd:0x7f60f0832160
  7840 ms  0x2ed3 PR_Close()
  7840 ms  0x2ed3 fd:0x7f60f0832250
  7869 ms  0x2ed3 PR_Close()
  7869 ms  0x2ed3 fd:0x7f60f0832250
           /* TID 0x2eb3 */
  7877 ms  0x2eb3 PR_Close()
  7877 ms  0x2eb3 fd:0x7f610bb9ddf0
           /* TID 0x2ed3 */
  7890 ms  0x2ed3 PR_Close()
  7890 ms  0x2ed3 fd:0x7f60f0888640
           /* TID 0x2eb3 */
  7900 ms  0x2eb3 PR_Close()
  7900 ms  0x2eb3 fd:0x7f6107e32820
           /* TID 0x2eae */
  7901 ms  0x2eae PR_Close()
  7901 ms  0x2eae fd:0x7f60f08322e0
  7901 ms  0x2eae PR_Close()
  7901 ms  0x2eae fd:0x7f60f09123d0
           /* TID 0x2eb9 */
  7901 ms  0x2eb9 PR_Close()
  7901 ms  0x2eb9 fd:0x7f6102ecd730
           /* TID 0x2f0c */
  7902 ms  0x2f0c PR_Close()
  7902 ms  0x2f0c fd:0x7f60f08929a0
  7902 ms  0x2f0c PR_Close()
  7902 ms  0x2f0c fd:0x7f60f0832250
  7902 ms  0x2f0c PR_Close()
  7902 ms  0x2f0c fd:0x7f60f0832250
  7902 ms  0x2f0c PR_Close()
  7902 ms  0x2f0c fd:0x7f60f0832250
           /* TID 0x2ed3 */
  7903 ms  0x2ed3 PR_Close()
  7903 ms  0x2ed3 fd:0x7f60f08889d0
           /* TID 0x2ec1 */
  7905 ms  0x2ec1 PR_Close()
  7905 ms  0x2ec1 fd:0x7f6101cd9e20
  7905 ms  0x2ec1 PR_Close()
  7905 ms  0x2ec1 fd:0x7f6101cd9e50
           /* TID 0x2eb3 */
  7913 ms  0x2eb3 PR_Close()
  7913 ms  0x2eb3 fd:0x7f6102056d60
           /* TID 0x2eae */
  7915 ms  0x2eae PR_Close()
  7915 ms  0x2eae fd:0x7f60f08322e0
  7915 ms  0x2eae PR_Close()
  7915 ms  0x2eae fd:0x7f60f0892640
           /* TID 0x2ed3 */
  7916 ms  0x2ed3 PR_Close()
  7916 ms  0x2ed3 fd:0x7f60f0892670
  7919 ms  0x2ed3 PR_Close()
  7919 ms  0x2ed3 fd:0x7f60f0892640
  7955 ms  0x2ed3 PR_Close()
  7955 ms  0x2ed3 fd:0x7f60f0832340
  7957 ms  0x2ed3 PR_Close()
  7957 ms  0x2ed3 fd:0x7f60f0832340
  7960 ms  0x2ed3 PR_Close()
  7960 ms  0x2ed3 fd:0x7f60f0832820
  7961 ms  0x2ed3 PR_Close()
  7961 ms  0x2ed3 fd:0x7f60f0832880
  7969 ms  0x2ed3 PR_Close()
  7969 ms  0x2ed3 fd:0x7f60f08884f0
  7973 ms  0x2ed3 PR_Close()
  7973 ms  0x2ed3 fd:0x7f60f0892100
  7979 ms  0x2ed3 PR_Close()
  7979 ms  0x2ed3 fd:0x7f60f08926d0
  7988 ms  0x2ed3 PR_Close()
  7988 ms  0x2ed3 fd:0x7f60f0892e80
  7990 ms  0x2ed3 PR_Close()
  7990 ms  0x2ed3 fd:0x7f60f0892e80
           /* TID 0x2eae */
  8146 ms  0x2eae PR_Close()
  8146 ms  0x2eae fd:0x7f60f0892100
  8146 ms  0x2eae PR_Close()
  8146 ms  0x2eae fd:0x7f60f0892100
  8152 ms  0x2eae PR_Close()
  8152 ms  0x2eae fd:0x7f6129fda130
  8152 ms  0x2eae PR_Close()
  8152 ms  0x2eae fd:0x7f6129fda190
Process terminated
