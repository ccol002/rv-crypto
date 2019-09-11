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
           /* TID 0x2209 */
    92 ms  0x2209 PR_Close()
    92 ms  0x2209 fd:0x7fd895d9e850
           /* TID 0x2201 */
   308 ms  0x2201 SSL_ImportFD()
   308 ms  0x2201 ret:0x7fd8a4fe03d0
   308 ms  0x2201 SSL_AuthCertificateHook()
   308 ms  0x2201 fd:0x7fd8a4fe03d0
   308 ms  0x2201 ret:0x0
   308 ms  0x2201 PR_Connect()
   308 ms  0x2201 fd:0x7fd8a4fe03d0
   527 ms  0x2201 SECKEY_CreateECPrivateKey()
   527 ms  0x2201 cx:0x7fd895da1c88
   529 ms     | 0x2201 EC_ValidatePublicKey()
   529 ms     | 0x2201 ret:0x0
   529 ms  0x2201 ret:0x7fd895958020::7fd895958020  f0 8b 9c 95                                      ....
   530 ms  0x2201 SECKEY_CreateECPrivateKey()
   530 ms  0x2201 cx:0x7fd895da1c88
   532 ms     | 0x2201 EC_ValidatePublicKey()
   537 ms     | 0x2201 ret:0x0
   537 ms  0x2201 ret:0x7fd89595a020::7fd89595a020  30 8d 9c 95                                      0...
           /* TID 0x2267 */
   625 ms  0x2267 PR_Close()
   625 ms  0x2267 fd:0x7fd8a4fe0d00
   628 ms  0x2267 PR_Close()
   628 ms  0x2267 fd:0x7fd8a4fe0d00
           /* TID 0x2201 */
   765 ms  SECKEY_ECParamsToKeySize()
   765 ms  0x2201 ret:0x100
   765 ms  0x2201 SECKEY_CreateECPrivateKey()
   765 ms  0x2201 cx:0x7fd895da1c88
   767 ms     | 0x2201 EC_ValidatePublicKey()
   771 ms     | 0x2201 ret:0x0
   772 ms  0x2201 ret:0x7fd897026820::7fd897026820  30 d8 a0 95                                      0...
   772 ms  0x2201 PK11_PubDeriveWithKDF()
   772 ms  0x2201 seckey:0x7fd897026820
   772 ms     | 0x2201 EC_ValidatePublicKey()
   776 ms     | 0x2201 ret:0x0
   780 ms  0x2201 ret:0x7fd89788df00
   780 ms  0x2201 PK11_DeriveWithFlags()
   780 ms  0x2201 basekey:0x7fd89788df00
   780 ms     | 0x2201 PK11_DeriveWithTemplate()
   780 ms  0x2201 ret:0x7fd8959fcb00
   780 ms  0x2201 PK11_Derive()
   780 ms  0x2201 basekey:0x7fd8959fcb00
   780 ms     | 0x2201 PK11_DeriveWithTemplate()
   780 ms  0x2201 ret:0x7fd8959fcc00
   780 ms  0x2201 SECKEY_DestroyPrivateKey()
   780 ms  0x2201 privk:0x7fd897026820::7fd897026820  30 d8 a0 95                                      0...
   780 ms  0x2201 privk:0x7fd897026820::7fd897026820  e5 e5 e5 e5                                      ....
   781 ms  0x2201 PK11_Encrypt()
   781 ms  0x2201 symkey:0x7fd8959fcd80
   782 ms  0x2201 PR_Connect()
   782 ms  0x2201 fd:0x7fd8a4fe0e50
           /* TID 0x2267 */
   790 ms  0x2267 PR_Close()
   790 ms  0x2267 fd:0x7fd8a4fe0df0
           /* TID 0x2209 */
   835 ms  0x2209 PR_Close()
   835 ms  0x2209 fd:0x7fd8a4fe0d30
           /* TID 0x225d */
   836 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   836 ms  0x225d ret:0x0
           /* TID 0x2201 */
   836 ms  0x2201 SSL_AuthCertificateComplete()
   836 ms  0x2201 fd:0x7fd8a4fe03d0
   836 ms  0x2201 err:0x0
   837 ms  0x2201 PK11_Encrypt()
   837 ms  0x2201 symkey:0x7fd8959fcd80
  1000 ms  0x2201 SECKEY_DestroyPrivateKey()
  1000 ms  0x2201 privk:0x7fd89595a020::7fd89595a020  30 8d 9c 95                                      0...
  1001 ms  0x2201 privk:0x7fd89595a020::7fd89595a020  e5 e5 e5 e5                                      ....
  1001 ms  0x2201 SECKEY_DestroyPrivateKey()
  1001 ms  0x2201 privk:0x7fd895958020::7fd895958020  f0 8b 9c 95                                      ....
  1001 ms  0x2201 privk:0x7fd895958020::7fd895958020  e5 e5 e5 e5                                      ....
  1226 ms  0x2201 SSL_ImportFD()
  1226 ms  0x2201 ret:0x7fd8959ff1c0
  1226 ms  0x2201 SSL_AuthCertificateHook()
  1226 ms  0x2201 fd:0x7fd8959ff1c0
  1227 ms  0x2201 ret:0x0
  1227 ms  0x2201 PR_Connect()
  1227 ms  0x2201 fd:0x7fd8959ff1c0
  1253 ms  0x2201 SECKEY_CreateECPrivateKey()
  1253 ms  0x2201 cx:0x7fd895a098c8
  1255 ms     | 0x2201 EC_ValidatePublicKey()
  1255 ms     | 0x2201 ret:0x0
  1255 ms  0x2201 ret:0x7fd895959020::7fd895959020  30 8d 9c 95                                      0...
  1255 ms  0x2201 SECKEY_CreateECPrivateKey()
  1255 ms  0x2201 cx:0x7fd895a098c8
  1257 ms     | 0x2201 EC_ValidatePublicKey()
  1262 ms     | 0x2201 ret:0x0
  1262 ms  0x2201 ret:0x7fd89595f020::7fd89595f020  f0 8b 9c 95                                      ....
           /* TID 0x225d */
  1315 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1315 ms  0x225d ret:0x0
           /* TID 0x2201 */
  1316 ms  SECKEY_ECParamsToKeySize()
  1316 ms  0x2201 ret:0x100
  1316 ms  0x2201 SECKEY_CreateECPrivateKey()
  1316 ms  0x2201 cx:0x7fd895a098c8
  1318 ms     | 0x2201 EC_ValidatePublicKey()
  1323 ms     | 0x2201 ret:0x0
  1323 ms  0x2201 ret:0x7fd895962820::7fd895962820  d0 d8 a0 95                                      ....
  1323 ms  0x2201 PK11_PubDeriveWithKDF()
  1323 ms  0x2201 seckey:0x7fd895962820
  1323 ms     | 0x2201 EC_ValidatePublicKey()
  1327 ms     | 0x2201 ret:0x0
  1331 ms  0x2201 ret:0x7fd89788df00
  1331 ms  0x2201 PK11_DeriveWithFlags()
  1331 ms  0x2201 basekey:0x7fd89788df00
  1331 ms     | 0x2201 PK11_DeriveWithTemplate()
  1331 ms  0x2201 ret:0x7fd89598fc00
  1331 ms  0x2201 PK11_Derive()
  1331 ms  0x2201 basekey:0x7fd89598fc00
  1331 ms     | 0x2201 PK11_DeriveWithTemplate()
  1332 ms  0x2201 ret:0x7fd8959fd600
  1332 ms  0x2201 SECKEY_DestroyPrivateKey()
  1332 ms  0x2201 privk:0x7fd895962820::7fd895962820  d0 d8 a0 95                                      ....
  1332 ms  0x2201 privk:0x7fd895962820::7fd895962820  e5 e5 e5 e5                                      ....
  1332 ms  0x2201 PK11_Encrypt()
  1332 ms  0x2201 symkey:0x7fd8959fdb00
  1332 ms  0x2201 SSL_AuthCertificateComplete()
  1332 ms  0x2201 fd:0x7fd8959ff1c0
  1332 ms  0x2201 err:0x0
  1333 ms  0x2201 PK11_Encrypt()
  1333 ms  0x2201 symkey:0x7fd8959fdb00
  1384 ms  0x2201 SECKEY_DestroyPrivateKey()
  1384 ms  0x2201 privk:0x7fd89595f020::7fd89595f020  f0 8b 9c 95                                      ....
  1384 ms  0x2201 privk:0x7fd89595f020::7fd89595f020  e5 e5 e5 e5                                      ....
  1385 ms  0x2201 SECKEY_DestroyPrivateKey()
  1385 ms  0x2201 privk:0x7fd895959020::7fd895959020  30 8d 9c 95                                      0...
  1385 ms  0x2201 privk:0x7fd895959020::7fd895959020  e5 e5 e5 e5                                      ....
  1389 ms  0x2201 PK11_Encrypt()
  1389 ms  0x2201 symkey:0x7fd8959fdb00
  1419 ms  0x2201 PK11_Encrypt()
  1419 ms  0x2201 symkey:0x7fd8959fdb00
  1450 ms  0x2201 PK11_Encrypt()
  1450 ms  0x2201 symkey:0x7fd8959fdb00
  1482 ms  0x2201 PK11_Encrypt()
  1482 ms  0x2201 symkey:0x7fd8959fdb00
  1596 ms  0x2201 PK11_Encrypt()
  1596 ms  0x2201 symkey:0x7fd8959fdb00
  1629 ms  0x2201 PK11_Encrypt()
  1629 ms  0x2201 symkey:0x7fd8959fdb00
  1660 ms  0x2201 PK11_Encrypt()
  1660 ms  0x2201 symkey:0x7fd8959fdb00
           /* TID 0x2257 */
  1689 ms  0x2257 PR_Close()
  1689 ms  0x2257 fd:0x7fd8959ff280
  1689 ms  0x2257 PR_Close()
  1689 ms  0x2257 fd:0x7fd8959ff340
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff280
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff340
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff280
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff340
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff280
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff340
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff280
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff340
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff280
  1690 ms  0x2257 PR_Close()
  1690 ms  0x2257 fd:0x7fd8959ff340
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff280
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff340
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff280
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff340
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff280
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff340
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff280
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff340
  1691 ms  0x2257 PR_Close()
  1691 ms  0x2257 fd:0x7fd8959ff280
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff340
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff280
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff340
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff280
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff340
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff280
  1692 ms  0x2257 PR_Close()
  1692 ms  0x2257 fd:0x7fd8959ff340
  1706 ms  0x2257 PR_Close()
  1706 ms  0x2257 fd:0x7fd8959ff280
  1706 ms  0x2257 PR_Close()
  1706 ms  0x2257 fd:0x7fd8959ff280
  1715 ms  0x2257 PR_Close()
  1715 ms  0x2257 fd:0x7fd8959ff280
  1715 ms  0x2257 PR_Close()
  1715 ms  0x2257 fd:0x7fd8959ff2b0
  1718 ms  0x2257 PR_Close()
  1718 ms  0x2257 fd:0x7fd8959ff2b0
  1718 ms  0x2257 PR_Close()
  1718 ms  0x2257 fd:0x7fd8959ff2b0
  1721 ms  0x2257 PR_Close()
  1721 ms  0x2257 fd:0x7fd8959ff2b0
  1721 ms  0x2257 PR_Close()
  1721 ms  0x2257 fd:0x7fd8959ff2b0
  1766 ms  0x2257 PR_Close()
  1766 ms  0x2257 fd:0x7fd8959ff2b0
  1767 ms  0x2257 PR_Close()
  1767 ms  0x2257 fd:0x7fd8959ff2b0
  1773 ms  0x2257 PR_Close()
  1773 ms  0x2257 fd:0x7fd8959ff2b0
  1774 ms  0x2257 PR_Close()
  1774 ms  0x2257 fd:0x7fd8959ff2b0
  1780 ms  0x2257 PR_Close()
  1780 ms  0x2257 fd:0x7fd8959ff2b0
  1780 ms  0x2257 PR_Close()
  1780 ms  0x2257 fd:0x7fd8959ff2b0
  1782 ms  0x2257 PR_Close()
  1782 ms  0x2257 fd:0x7fd8959ff2b0
  1782 ms  0x2257 PR_Close()
  1782 ms  0x2257 fd:0x7fd8959ff2b0
           /* TID 0x2254 */
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1782 ms  0x2254 PR_Close()
  1782 ms  0x2254 fd:0x7fd8959ff2b0
  1783 ms  0x2254 PR_Close()
  1783 ms  0x2254 fd:0x7fd8959ff2b0
  1783 ms  0x2254 PR_Close()
  1783 ms  0x2254 fd:0x7fd8959ff2b0
  1783 ms  0x2254 PR_Close()
  1783 ms  0x2254 fd:0x7fd8959ff2b0
           /* TID 0x2267 */
  2286 ms  0x2267 PR_Close()
  2286 ms  0x2267 fd:0x7fd8959ff670
  2289 ms  0x2267 PR_Close()
  2289 ms  0x2267 fd:0x7fd8959ff670
  2794 ms  0x2267 PR_Close()
  2794 ms  0x2267 fd:0x7fd8959ff670
           /* TID 0x2209 */
  4198 ms  0x2209 PR_Close()
  4198 ms  0x2209 fd:0x7fd8959ff670
  4198 ms  0x2209 PR_Close()
  4198 ms  0x2209 fd:0x7fd8959ff7c0
           /* TID 0x2201 */
  4529 ms  0x2201 SSL_ImportFD()
  4530 ms  0x2201 ret:0x7fd884c98820
  4530 ms  0x2201 SSL_AuthCertificateHook()
  4530 ms  0x2201 fd:0x7fd884c98820
  4530 ms  0x2201 ret:0x0
  4530 ms  0x2201 PR_Connect()
  4530 ms  0x2201 fd:0x7fd884c98820
  4556 ms  0x2201 SECKEY_CreateECPrivateKey()
  4556 ms  0x2201 cx:0x7fd895a09c08
  4557 ms     | 0x2201 EC_ValidatePublicKey()
  4557 ms     | 0x2201 ret:0x0
  4558 ms  0x2201 ret:0x7fd89728f820::7fd89728f820  40 87 cd 84                                      @...
  4558 ms  0x2201 SECKEY_CreateECPrivateKey()
  4558 ms  0x2201 cx:0x7fd895a09c08
  4560 ms     | 0x2201 EC_ValidatePublicKey()
  4562 ms     | 0x2201 ret:0x0
  4562 ms  0x2201 ret:0x7fd897291820::7fd897291820  60 85 cd 84                                      `...
  4588 ms  0x2201 PK11_Derive()
  4588 ms  0x2201 basekey:0x7fd89788df00
  4588 ms     | 0x2201 PK11_DeriveWithTemplate()
  4588 ms  0x2201 ret:0x7fd884c9be00
  4588 ms  0x2201 PK11_PubDeriveWithKDF()
  4588 ms  0x2201 seckey:0x7fd89728f820
  4588 ms     | 0x2201 EC_ValidatePublicKey()
  4588 ms     | 0x2201 ret:0x0
  4589 ms  0x2201 ret:0x7fd89788df00
  4589 ms  SECKEY_ECParamsToKeySize()
  4589 ms  0x2201 ret:0xff
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd884c9be00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9be80
  4589 ms  0x2201 PK11_Derive()
  4589 ms  0x2201 basekey:0x7fd89788df00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9bf00
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd884c9bf00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9be00
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd884c9bf00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd89788df00
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd884c9bf00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9be80
  4589 ms  0x2201 PK11_Derive()
  4589 ms  0x2201 basekey:0x7fd884c9bf80
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9c000
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd89788df00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9bf00
  4589 ms  0x2201 PK11_DeriveWithFlags()
  4589 ms  0x2201 basekey:0x7fd89788df00
  4589 ms     | 0x2201 PK11_DeriveWithTemplate()
  4589 ms  0x2201 ret:0x7fd884c9be80
           /* TID 0x225d */
  4591 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4591 ms  0x225d ret:0x0
           /* TID 0x2201 */
  4592 ms  SECKEY_ECParamsToKeySize()
  4592 ms  0x2201 ret:0x100
  4592 ms  SECKEY_ECParamsToBasePointOrderLen()
  4592 ms  0x2201 ret:0x100
  4592 ms  SECKEY_ECParamsToBasePointOrderLen()
  4592 ms  0x2201 ret:0x100
  4592 ms  0x2201 EC_ValidatePublicKey()
  4595 ms  0x2201 ret:0x0
  4600 ms  0x2201 PK11_DeriveWithFlags()
  4600 ms  0x2201 basekey:0x7fd89788df00
  4600 ms     | 0x2201 PK11_DeriveWithTemplate()
  4600 ms  0x2201 ret:0x7fd884c9be80
  4600 ms  0x2201 SSL_AuthCertificateComplete()
  4600 ms  0x2201 fd:0x7fd884c98820
  4600 ms  0x2201 err:0x0
  4600 ms     | 0x2201 PK11_DeriveWithFlags()
  4600 ms     | 0x2201 basekey:0x7fd884c9c000
  4600 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4600 ms     | 0x2201 ret:0x7fd884c9be80
  4600 ms     | 0x2201 PK11_DeriveWithFlags()
  4600 ms     | 0x2201 basekey:0x7fd884c9c000
  4600 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4600 ms     | 0x2201 ret:0x7fd884c9bf80
  4600 ms     | 0x2201 PK11_DeriveWithFlags()
  4600 ms     | 0x2201 basekey:0x7fd884c9c000
  4600 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4600 ms     | 0x2201 ret:0x7fd884c9c500
  4600 ms     | 0x2201 PK11_DeriveWithFlags()
  4600 ms     | 0x2201 basekey:0x7fd884c9be00
  4600 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4600 ms     | 0x2201 ret:0x7fd884c9c580
  4600 ms     | 0x2201 PK11_DeriveWithFlags()
  4600 ms     | 0x2201 basekey:0x7fd884c9be00
  4600 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9c600
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9bf80
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9c600
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9bf80
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9c680
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9be00
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9bf00
  4601 ms     | 0x2201 PK11_Encrypt()
  4601 ms     | 0x2201 symkey:0x7fd884c9c580
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9be80
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9bf00
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9be80
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9c680
  4601 ms     | 0x2201 PK11_DeriveWithFlags()
  4601 ms     | 0x2201 basekey:0x7fd884c9c000
  4601 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  4601 ms     | 0x2201 ret:0x7fd884c9c580
  4601 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  4601 ms     | 0x2201 privk:0x7fd897291820::7fd897291820  60 85 cd 84                                      `...
  4601 ms     | 0x2201 privk:0x7fd897291820::7fd897291820  e5 e5 e5 e5                                      ....
  4602 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  4602 ms     | 0x2201 privk:0x7fd89728f820::7fd89728f820  40 87 cd 84                                      @...
  4602 ms     | 0x2201 privk:0x7fd89728f820::7fd89728f820  e5 e5 e5 e5                                      ....
  4603 ms  0x2201 PK11_Encrypt()
  4603 ms  0x2201 symkey:0x7fd884c9bf00
  4603 ms  0x2201 PK11_Encrypt()
  4603 ms  0x2201 symkey:0x7fd884c9bf00
  4626 ms  0x2201 PK11_DeriveWithFlags()
  4626 ms  0x2201 basekey:0x7fd884c9c580
  4626 ms     | 0x2201 PK11_DeriveWithTemplate()
  4627 ms  0x2201 ret:0x7fd89788df00
  4627 ms  0x2201 PK11_DeriveWithFlags()
  4627 ms  0x2201 basekey:0x7fd884c9c580
  4627 ms     | 0x2201 PK11_DeriveWithTemplate()
  4627 ms  0x2201 ret:0x7fd89788df00
  4627 ms  0x2201 PK11_Encrypt()
  4627 ms  0x2201 symkey:0x7fd884c9bf00
           /* TID 0x2218 */
  4864 ms  0x2218 PR_Close()
  4864 ms  0x2218 fd:0x7fd89bdc8580
           /* TID 0x2209 */
  4899 ms  0x2209 PR_Close()
  4899 ms  0x2209 fd:0x7fd884cd2310
           /* TID 0x2201 */
  4971 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c80bb0
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c80bb0
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c80bb0
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c80be0
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c80be0
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c80be0
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c809a0
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c809a0
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c809a0
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c809d0
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c809d0
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c809d0
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c80a00
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c80a00
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c80a00
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c80a30
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c80a30
  4972 ms  0x2201 ret:0x0
  4972 ms  0x2201 PR_Connect()
  4972 ms  0x2201 fd:0x7fd884c80a30
  4972 ms  0x2201 SSL_ImportFD()
  4972 ms  0x2201 ret:0x7fd884c80a60
  4972 ms  0x2201 SSL_AuthCertificateHook()
  4972 ms  0x2201 fd:0x7fd884c80a60
  4973 ms  0x2201 ret:0x0
  4973 ms  0x2201 PR_Connect()
  4973 ms  0x2201 fd:0x7fd884c80a60
  4973 ms  0x2201 SSL_ImportFD()
  4973 ms  0x2201 ret:0x7fd884c80a90
  4973 ms  0x2201 SSL_AuthCertificateHook()
  4973 ms  0x2201 fd:0x7fd884c80a90
  4973 ms  0x2201 ret:0x0
  4973 ms  0x2201 PR_Connect()
  4973 ms  0x2201 fd:0x7fd884c80a90
  4974 ms  0x2201 SSL_ImportFD()
  4974 ms  0x2201 ret:0x7fd884c80ac0
  4974 ms  0x2201 SSL_AuthCertificateHook()
  4974 ms  0x2201 fd:0x7fd884c80ac0
  4974 ms  0x2201 ret:0x0
  4974 ms  0x2201 PR_Connect()
  4974 ms  0x2201 fd:0x7fd884c80ac0
  4974 ms  0x2201 SSL_ImportFD()
  4974 ms  0x2201 ret:0x7fd884c80af0
  4974 ms  0x2201 SSL_AuthCertificateHook()
  4974 ms  0x2201 fd:0x7fd884c80af0
  4974 ms  0x2201 ret:0x0
  4974 ms  0x2201 PR_Connect()
  4974 ms  0x2201 fd:0x7fd884c80af0
  4974 ms  0x2201 SSL_ImportFD()
  4974 ms  0x2201 ret:0x7fd884c80b20
  4974 ms  0x2201 SSL_AuthCertificateHook()
  4974 ms  0x2201 fd:0x7fd884c80b20
  4974 ms  0x2201 ret:0x0
  4974 ms  0x2201 PR_Connect()
  4974 ms  0x2201 fd:0x7fd884c80b20
  4974 ms  0x2201 SSL_ImportFD()
  4974 ms  0x2201 ret:0x7fd884c80b50
  4974 ms  0x2201 SSL_AuthCertificateHook()
  4974 ms  0x2201 fd:0x7fd884c80b50
  4974 ms  0x2201 ret:0x0
  4974 ms  0x2201 PR_Connect()
  4974 ms  0x2201 fd:0x7fd884c80b50
  4999 ms  0x2201 SECKEY_CreateECPrivateKey()
  4999 ms  0x2201 cx:0x7fd895a0a908
  5001 ms     | 0x2201 EC_ValidatePublicKey()
  5001 ms     | 0x2201 ret:0x0
  5001 ms  0x2201 ret:0x7fd8972a1820::7fd8972a1820  b0 ea c7 84                                      ....
  5001 ms  0x2201 SECKEY_CreateECPrivateKey()
  5001 ms  0x2201 cx:0x7fd895a0a908
  5002 ms     | 0x2201 EC_ValidatePublicKey()
  5006 ms     | 0x2201 ret:0x0
  5006 ms  0x2201 ret:0x7fd8972a3820::7fd8972a3820  90 ec c7 84                                      ....
  5008 ms  0x2201 SECKEY_CreateECPrivateKey()
  5008 ms  0x2201 cx:0x7fd895a0a768
  5009 ms     | 0x2201 EC_ValidatePublicKey()
  5009 ms     | 0x2201 ret:0x0
  5009 ms  0x2201 ret:0x7fd89c38f820::7fd89c38f820  30 e8 c7 84                                      0...
  5010 ms  0x2201 SECKEY_CreateECPrivateKey()
  5010 ms  0x2201 cx:0x7fd895a0a768
  5011 ms     | 0x2201 EC_ValidatePublicKey()
  5015 ms     | 0x2201 ret:0x0
  5015 ms  0x2201 ret:0x7fd895a86020::7fd895a86020  d0 ed c7 84                                      ....
  5020 ms  0x2201 SECKEY_CreateECPrivateKey()
  5020 ms  0x2201 cx:0x7fd895a0a5c8
  5022 ms     | 0x2201 EC_ValidatePublicKey()
  5022 ms     | 0x2201 ret:0x0
  5022 ms  0x2201 ret:0x7fd895a8a020::7fd895a8a020  10 ef c7 84                                      ....
  5022 ms  0x2201 SECKEY_CreateECPrivateKey()
  5022 ms  0x2201 cx:0x7fd895a0a5c8
  5023 ms     | 0x2201 EC_ValidatePublicKey()
  5025 ms     | 0x2201 ret:0x0
  5025 ms  0x2201 ret:0x7fd895a8c020::7fd895a8c020  50 21 ab 95                                      P!..
  5030 ms  0x2201 SECKEY_CreateECPrivateKey()
  5030 ms  0x2201 cx:0x7fd895a0a428
  5031 ms     | 0x2201 EC_ValidatePublicKey()
  5031 ms     | 0x2201 ret:0x0
  5031 ms  0x2201 ret:0x7fd895a8e820::7fd895a8e820  90 22 ab 95                                      ."..
  5031 ms  0x2201 SECKEY_CreateECPrivateKey()
  5031 ms  0x2201 cx:0x7fd895a0a428
  5033 ms     | 0x2201 EC_ValidatePublicKey()
  5035 ms     | 0x2201 ret:0x0
  5035 ms  0x2201 ret:0x7fd895a90820::7fd895a90820  c0 24 ab 95                                      .$..
  5035 ms  0x2201 SECKEY_CreateECPrivateKey()
  5035 ms  0x2201 cx:0x7fd895a0a288
  5036 ms     | 0x2201 EC_ValidatePublicKey()
  5036 ms     | 0x2201 ret:0x0
  5036 ms  0x2201 ret:0x7fd895a93020::7fd895a93020  00 26 ab 95                                      .&..
  5036 ms  0x2201 SECKEY_CreateECPrivateKey()
  5036 ms  0x2201 cx:0x7fd895a0a288
  5037 ms     | 0x2201 EC_ValidatePublicKey()
  5038 ms     | 0x2201 ret:0x0
  5038 ms  0x2201 ret:0x7fd895a95020::7fd895a95020  e0 27 ab 95                                      .'..
  5039 ms  0x2201 SECKEY_CreateECPrivateKey()
  5039 ms  0x2201 cx:0x7fd895a0aaa8
  5040 ms     | 0x2201 EC_ValidatePublicKey()
  5040 ms     | 0x2201 ret:0x0
  5040 ms  0x2201 ret:0x7fd895a97820::7fd895a97820  20 29 ab 95                                       )..
  5040 ms  0x2201 SECKEY_CreateECPrivateKey()
  5040 ms  0x2201 cx:0x7fd895a0aaa8
  5041 ms     | 0x2201 EC_ValidatePublicKey()
  5043 ms     | 0x2201 ret:0x0
  5043 ms  0x2201 ret:0x7fd895a99820::7fd895a99820  00 2b ab 95                                      .+..
  5043 ms  0x2201 PK11_Derive()
  5043 ms  0x2201 basekey:0x7fd89788df00
  5043 ms     | 0x2201 PK11_DeriveWithTemplate()
  5043 ms  0x2201 ret:0x7fd884c9be00
  5043 ms  0x2201 PK11_PubDeriveWithKDF()
  5043 ms  0x2201 seckey:0x7fd8972a3820
  5043 ms     | 0x2201 EC_ValidatePublicKey()
  5044 ms     | 0x2201 ret:0x0
  5046 ms  0x2201 ret:0x7fd89788df00
  5046 ms  SECKEY_ECParamsToKeySize()
  5046 ms  0x2201 ret:0x100
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd884c9be00
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9c000
  5046 ms  0x2201 PK11_Derive()
  5046 ms  0x2201 basekey:0x7fd89788df00
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9c680
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd884c9c680
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9be00
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd884c9c680
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd89788df00
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd884c9c680
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9c000
  5046 ms  0x2201 PK11_Derive()
  5046 ms  0x2201 basekey:0x7fd884a19800
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884a19880
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd89788df00
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9c680
  5046 ms  0x2201 PK11_DeriveWithFlags()
  5046 ms  0x2201 basekey:0x7fd89788df00
  5046 ms     | 0x2201 PK11_DeriveWithTemplate()
  5046 ms  0x2201 ret:0x7fd884c9c000
           /* TID 0x225d */
  5047 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5047 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5047 ms  0x2201 PK11_DeriveWithFlags()
  5047 ms  0x2201 basekey:0x7fd89788df00
  5047 ms     | 0x2201 PK11_DeriveWithTemplate()
  5047 ms  0x2201 ret:0x7fd884c9c000
  5047 ms  0x2201 SSL_AuthCertificateComplete()
  5047 ms  0x2201 fd:0x7fd884c80a00
  5047 ms  0x2201 err:0x0
  5047 ms     | 0x2201 PK11_DeriveWithFlags()
  5047 ms     | 0x2201 basekey:0x7fd884a19880
  5047 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5047 ms     | 0x2201 ret:0x7fd884c9c000
  5047 ms     | 0x2201 PK11_DeriveWithFlags()
  5047 ms     | 0x2201 basekey:0x7fd884a19880
  5047 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5047 ms     | 0x2201 ret:0x7fd884a19800
  5047 ms     | 0x2201 PK11_DeriveWithFlags()
  5047 ms     | 0x2201 basekey:0x7fd884a19880
  5047 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5047 ms     | 0x2201 ret:0x7fd884a19980
  5047 ms     | 0x2201 PK11_DeriveWithFlags()
  5047 ms     | 0x2201 basekey:0x7fd884c9be00
  5047 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5047 ms     | 0x2201 ret:0x7fd884a19a00
  5047 ms     | 0x2201 PK11_DeriveWithFlags()
  5047 ms     | 0x2201 basekey:0x7fd884c9be00
  5047 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884a19a80
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884a19800
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884a19a80
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884a19800
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884a19b00
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884c9be00
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884c9c680
  5048 ms     | 0x2201 PK11_Encrypt()
  5048 ms     | 0x2201 symkey:0x7fd884a19a00
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884c9c000
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884c9c680
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884c9c000
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884a19b00
  5048 ms     | 0x2201 PK11_DeriveWithFlags()
  5048 ms     | 0x2201 basekey:0x7fd884a19880
  5048 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5048 ms     | 0x2201 ret:0x7fd884a19a00
  5048 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5048 ms     | 0x2201 privk:0x7fd8972a3820::7fd8972a3820  90 ec c7 84                                      ....
  5048 ms     | 0x2201 privk:0x7fd8972a3820::7fd8972a3820  e5 e5 e5 e5                                      ....
  5048 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5048 ms     | 0x2201 privk:0x7fd8972a1820::7fd8972a1820  b0 ea c7 84                                      ....
  5048 ms     | 0x2201 privk:0x7fd8972a1820::7fd8972a1820  e5 e5 e5 e5                                      ....
  5048 ms  0x2201 SECKEY_CreateECPrivateKey()
  5048 ms  0x2201 cx:0x7fd895a0b608
  5049 ms     | 0x2201 EC_ValidatePublicKey()
  5049 ms     | 0x2201 ret:0x0
  5049 ms  0x2201 ret:0x7fd895aa0820::7fd895aa0820  b0 ea c7 84                                      ....
  5049 ms  0x2201 SECKEY_CreateECPrivateKey()
  5049 ms  0x2201 cx:0x7fd895a0b608
  5050 ms     | 0x2201 EC_ValidatePublicKey()
  5051 ms     | 0x2201 ret:0x0
  5051 ms  0x2201 ret:0x7fd895aa2820::7fd895aa2820  90 ec c7 84                                      ....
  5052 ms  0x2201 SECKEY_CreateECPrivateKey()
  5052 ms  0x2201 cx:0x7fd895a0b468
  5052 ms     | 0x2201 EC_ValidatePublicKey()
  5052 ms     | 0x2201 ret:0x0
  5052 ms  0x2201 ret:0x7fd89729e820::7fd89729e820  70 2e ab 95                                      p...
  5052 ms  0x2201 SECKEY_CreateECPrivateKey()
  5052 ms  0x2201 cx:0x7fd895a0b468
  5053 ms     | 0x2201 EC_ValidatePublicKey()
  5054 ms     | 0x2201 ret:0x0
  5054 ms  0x2201 ret:0x7fd8972a2020::7fd8972a2020  60 70 af 95                                      `p..
  5055 ms  0x2201 SECKEY_CreateECPrivateKey()
  5055 ms  0x2201 cx:0x7fd895a0b2c8
  5055 ms     | 0x2201 EC_ValidatePublicKey()
  5055 ms     | 0x2201 ret:0x0
  5055 ms  0x2201 ret:0x7fd884902820::7fd884902820  a0 71 af 95                                      .q..
  5055 ms  0x2201 SECKEY_CreateECPrivateKey()
  5055 ms  0x2201 cx:0x7fd895a0b2c8
  5056 ms     | 0x2201 EC_ValidatePublicKey()
  5057 ms     | 0x2201 ret:0x0
  5057 ms  0x2201 ret:0x7fd884904820::7fd884904820  80 73 af 95                                      .s..
  5058 ms  0x2201 SECKEY_CreateECPrivateKey()
  5058 ms  0x2201 cx:0x7fd895a0b128
  5058 ms     | 0x2201 EC_ValidatePublicKey()
  5058 ms     | 0x2201 ret:0x0
  5058 ms  0x2201 ret:0x7fd884907020::7fd884907020  c0 74 af 95                                      .t..
  5058 ms  0x2201 SECKEY_CreateECPrivateKey()
  5058 ms  0x2201 cx:0x7fd895a0b128
  5059 ms     | 0x2201 EC_ValidatePublicKey()
  5060 ms     | 0x2201 ret:0x0
  5060 ms  0x2201 ret:0x7fd884909020::7fd884909020  a0 76 af 95                                      .v..
  5061 ms  0x2201 SECKEY_CreateECPrivateKey()
  5061 ms  0x2201 cx:0x7fd895a0ade8
  5061 ms     | 0x2201 EC_ValidatePublicKey()
  5061 ms     | 0x2201 ret:0x0
  5061 ms  0x2201 ret:0x7fd88490b820::7fd88490b820  e0 77 af 95                                      .w..
  5061 ms  0x2201 SECKEY_CreateECPrivateKey()
  5061 ms  0x2201 cx:0x7fd895a0ade8
  5062 ms     | 0x2201 EC_ValidatePublicKey()
  5063 ms     | 0x2201 ret:0x0
  5063 ms  0x2201 ret:0x7fd88490d820::7fd88490d820  c0 79 af 95                                      .y..
  5064 ms  0x2201 SECKEY_CreateECPrivateKey()
  5064 ms  0x2201 cx:0x7fd895a0ac48
  5064 ms     | 0x2201 EC_ValidatePublicKey()
  5064 ms     | 0x2201 ret:0x0
  5064 ms  0x2201 ret:0x7fd884910020::7fd884910020  00 7b af 95                                      .{..
  5064 ms  0x2201 SECKEY_CreateECPrivateKey()
  5064 ms  0x2201 cx:0x7fd895a0ac48
  5065 ms     | 0x2201 EC_ValidatePublicKey()
  5067 ms     | 0x2201 ret:0x0
  5067 ms  0x2201 ret:0x7fd884912020::7fd884912020  e0 7c af 95                                      .|..
  5067 ms  0x2201 PK11_Encrypt()
  5067 ms  0x2201 symkey:0x7fd884c9c680
  5068 ms  0x2201 PK11_Encrypt()
  5068 ms  0x2201 symkey:0x7fd884c9c680
  5068 ms  0x2201 PK11_Derive()
  5068 ms  0x2201 basekey:0x7fd89788df00
  5068 ms     | 0x2201 PK11_DeriveWithTemplate()
  5068 ms  0x2201 ret:0x7fd884c9be00
  5068 ms  0x2201 PK11_PubDeriveWithKDF()
  5068 ms  0x2201 seckey:0x7fd895a86020
  5068 ms     | 0x2201 EC_ValidatePublicKey()
  5070 ms     | 0x2201 ret:0x0
  5071 ms  0x2201 ret:0x7fd89788df00
  5071 ms  SECKEY_ECParamsToKeySize()
  5071 ms  0x2201 ret:0x100
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd884c9be00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884a19880
  5071 ms  0x2201 PK11_Derive()
  5071 ms  0x2201 basekey:0x7fd89788df00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884a19b00
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd884a19b00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884c9be00
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd884a19b00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd89788df00
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd884a19b00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884a19880
  5071 ms  0x2201 PK11_Derive()
  5071 ms  0x2201 basekey:0x7fd884a19c80
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884a19d00
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd89788df00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5071 ms  0x2201 ret:0x7fd884a19b00
  5071 ms  0x2201 PK11_DeriveWithFlags()
  5071 ms  0x2201 basekey:0x7fd89788df00
  5071 ms     | 0x2201 PK11_DeriveWithTemplate()
  5072 ms  0x2201 ret:0x7fd884a19880
           /* TID 0x225d */
  5072 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5072 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5072 ms  0x2201 PK11_DeriveWithFlags()
  5072 ms  0x2201 basekey:0x7fd89788df00
  5072 ms     | 0x2201 PK11_DeriveWithTemplate()
  5072 ms  0x2201 ret:0x7fd884a19880
  5072 ms  0x2201 PK11_Encrypt()
  5072 ms  0x2201 symkey:0x7fd884c9c680
  5073 ms  0x2201 PK11_DeriveWithFlags()
  5073 ms  0x2201 basekey:0x7fd884a19a00
  5073 ms     | 0x2201 PK11_DeriveWithTemplate()
  5073 ms  0x2201 ret:0x7fd884a19880
  5073 ms  0x2201 PK11_DeriveWithFlags()
  5073 ms  0x2201 basekey:0x7fd884a19a00
  5073 ms     | 0x2201 PK11_DeriveWithTemplate()
  5073 ms  0x2201 ret:0x7fd884a19880
  5073 ms  0x2201 PK11_Encrypt()
  5073 ms  0x2201 symkey:0x7fd884c9c680
  5073 ms  0x2201 PK11_Encrypt()
  5073 ms  0x2201 symkey:0x7fd884c9c680
  5074 ms  0x2201 SSL_AuthCertificateComplete()
  5074 ms  0x2201 fd:0x7fd884c809d0
  5074 ms  0x2201 err:0x0
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19d00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19880
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19d00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19c80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19d00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19b80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884c9be00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19d80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884c9be00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19e00
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19c80
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19e00
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19c80
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19e80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884c9be00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19b00
  5074 ms     | 0x2201 PK11_Encrypt()
  5074 ms     | 0x2201 symkey:0x7fd884a19d80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19880
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19b00
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19880
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19e80
  5074 ms     | 0x2201 PK11_DeriveWithFlags()
  5074 ms     | 0x2201 basekey:0x7fd884a19d00
  5074 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5074 ms     | 0x2201 ret:0x7fd884a19d80
  5074 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5074 ms     | 0x2201 privk:0x7fd895a86020::7fd895a86020  d0 ed c7 84                                      ....
  5074 ms     | 0x2201 privk:0x7fd895a86020::7fd895a86020  e5 e5 e5 e5                                      ....
  5074 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5074 ms     | 0x2201 privk:0x7fd89c38f820::7fd89c38f820  30 e8 c7 84                                      0...
  5074 ms     | 0x2201 privk:0x7fd89c38f820::7fd89c38f820  e5 e5 e5 e5                                      ....
  5075 ms  0x2201 PK11_Encrypt()
  5075 ms  0x2201 symkey:0x7fd884c9c680
  5075 ms  0x2201 PK11_Derive()
  5075 ms  0x2201 basekey:0x7fd89788df00
  5075 ms     | 0x2201 PK11_DeriveWithTemplate()
  5075 ms  0x2201 ret:0x7fd884c9be00
  5075 ms  0x2201 PK11_PubDeriveWithKDF()
  5075 ms  0x2201 seckey:0x7fd895a99820
  5075 ms     | 0x2201 EC_ValidatePublicKey()
  5076 ms     | 0x2201 ret:0x0
  5078 ms  0x2201 ret:0x7fd89788df00
  5078 ms  SECKEY_ECParamsToKeySize()
  5078 ms  0x2201 ret:0x100
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd884c9be00
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19d00
  5078 ms  0x2201 PK11_Derive()
  5078 ms  0x2201 basekey:0x7fd89788df00
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19e80
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd884a19e80
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884c9be00
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd884a19e80
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd89788df00
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd884a19e80
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19d00
  5078 ms  0x2201 PK11_Derive()
  5078 ms  0x2201 basekey:0x7fd884a19f00
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19f80
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd89788df00
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19e80
  5078 ms  0x2201 PK11_DeriveWithFlags()
  5078 ms  0x2201 basekey:0x7fd89788df00
  5078 ms     | 0x2201 PK11_DeriveWithTemplate()
  5078 ms  0x2201 ret:0x7fd884a19d00
           /* TID 0x225d */
  5079 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5079 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5079 ms  0x2201 PK11_DeriveWithFlags()
  5079 ms  0x2201 basekey:0x7fd89788df00
  5079 ms     | 0x2201 PK11_DeriveWithTemplate()
  5079 ms  0x2201 ret:0x7fd884a19d00
  5079 ms  0x2201 PK11_Encrypt()
  5079 ms  0x2201 symkey:0x7fd884a19b00
  5079 ms  0x2201 PK11_Derive()
  5079 ms  0x2201 basekey:0x7fd884a19d00
  5079 ms     | 0x2201 PK11_DeriveWithTemplate()
  5079 ms  0x2201 ret:0x7fd884a19f00
  5079 ms  0x2201 PK11_PubDeriveWithKDF()
  5079 ms  0x2201 seckey:0x7fd895a8c020
  5080 ms     | 0x2201 EC_ValidatePublicKey()
  5088 ms     | 0x2201 ret:0x0
  5090 ms  0x2201 ret:0x7fd884a19d00
  5090 ms  SECKEY_ECParamsToKeySize()
  5090 ms  0x2201 ret:0x100
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a19f00
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a000
  5090 ms  0x2201 PK11_Derive()
  5090 ms  0x2201 basekey:0x7fd884a19d00
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a080
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a1a080
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a19f00
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a1a080
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a19d00
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a1a080
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a000
  5090 ms  0x2201 PK11_Derive()
  5090 ms  0x2201 basekey:0x7fd884a1a100
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a180
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a19d00
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a080
  5090 ms  0x2201 PK11_DeriveWithFlags()
  5090 ms  0x2201 basekey:0x7fd884a19d00
  5090 ms     | 0x2201 PK11_DeriveWithTemplate()
  5090 ms  0x2201 ret:0x7fd884a1a000
           /* TID 0x225d */
  5093 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5093 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5093 ms  0x2201 PK11_DeriveWithFlags()
  5093 ms  0x2201 basekey:0x7fd884a19d00
  5093 ms     | 0x2201 PK11_DeriveWithTemplate()
  5093 ms  0x2201 ret:0x7fd884a1a000
  5094 ms  0x2201 PK11_Derive()
  5094 ms  0x2201 basekey:0x7fd884a1a000
  5094 ms     | 0x2201 PK11_DeriveWithTemplate()
  5094 ms  0x2201 ret:0x7fd884a1a100
  5094 ms  0x2201 PK11_PubDeriveWithKDF()
  5094 ms  0x2201 seckey:0x7fd895a90820
  5094 ms     | 0x2201 EC_ValidatePublicKey()
  5095 ms     | 0x2201 ret:0x0
  5096 ms  0x2201 ret:0x7fd884a1a000
  5096 ms  SECKEY_ECParamsToKeySize()
  5096 ms  0x2201 ret:0x100
  5096 ms  0x2201 PK11_DeriveWithFlags()
  5096 ms  0x2201 basekey:0x7fd884a1a100
  5096 ms     | 0x2201 PK11_DeriveWithTemplate()
  5096 ms  0x2201 ret:0x7fd884a1a200
  5097 ms  0x2201 PK11_Derive()
  5097 ms  0x2201 basekey:0x7fd884a1a000
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a280
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a280
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a100
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a280
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a000
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a280
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a200
  5097 ms  0x2201 PK11_Derive()
  5097 ms  0x2201 basekey:0x7fd884a1a300
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a380
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a000
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a280
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a000
  5097 ms     | 0x2201 PK11_DeriveWithTemplate()
  5097 ms  0x2201 ret:0x7fd884a1a200
           /* TID 0x225d */
  5097 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5097 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5097 ms  0x2201 PK11_DeriveWithFlags()
  5097 ms  0x2201 basekey:0x7fd884a1a000
  5098 ms     | 0x2201 PK11_DeriveWithTemplate()
  5098 ms  0x2201 ret:0x7fd884a1a200
  5098 ms  0x2201 PK11_Derive()
  5098 ms  0x2201 basekey:0x7fd884a1a200
  5098 ms     | 0x2201 PK11_DeriveWithTemplate()
  5098 ms  0x2201 ret:0x7fd884a1a300
  5098 ms  0x2201 PK11_PubDeriveWithKDF()
  5098 ms  0x2201 seckey:0x7fd895a95020
  5098 ms     | 0x2201 EC_ValidatePublicKey()
  5100 ms     | 0x2201 ret:0x0
  5102 ms  0x2201 ret:0x7fd884a1a200
  5102 ms  SECKEY_ECParamsToKeySize()
  5102 ms  0x2201 ret:0x100
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a300
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a19580
  5102 ms  0x2201 PK11_Derive()
  5102 ms  0x2201 basekey:0x7fd884a1a200
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a1a400
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a400
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a1a300
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a400
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a1a200
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a400
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a19580
  5102 ms  0x2201 PK11_Derive()
  5102 ms  0x2201 basekey:0x7fd884a1a480
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a1a500
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a200
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a1a400
  5102 ms  0x2201 PK11_DeriveWithFlags()
  5102 ms  0x2201 basekey:0x7fd884a1a200
  5102 ms     | 0x2201 PK11_DeriveWithTemplate()
  5102 ms  0x2201 ret:0x7fd884a19580
           /* TID 0x225d */
  5103 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5103 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5103 ms  0x2201 PK11_DeriveWithFlags()
  5103 ms  0x2201 basekey:0x7fd884a1a200
  5103 ms     | 0x2201 PK11_DeriveWithTemplate()
  5103 ms  0x2201 ret:0x7fd884a19580
  5103 ms  0x2201 SSL_AuthCertificateComplete()
  5103 ms  0x2201 fd:0x7fd884c80a30
  5103 ms  0x2201 err:0x0
  5103 ms     | 0x2201 PK11_DeriveWithFlags()
  5103 ms     | 0x2201 basekey:0x7fd884a19f80
  5103 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5103 ms     | 0x2201 ret:0x7fd884a19580
  5103 ms     | 0x2201 PK11_DeriveWithFlags()
  5103 ms     | 0x2201 basekey:0x7fd884a19f80
  5103 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5103 ms     | 0x2201 ret:0x7fd884a1a480
  5103 ms     | 0x2201 PK11_DeriveWithFlags()
  5103 ms     | 0x2201 basekey:0x7fd884a19f80
  5103 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5103 ms     | 0x2201 ret:0x7fd884a1a580
  5103 ms     | 0x2201 PK11_DeriveWithFlags()
  5103 ms     | 0x2201 basekey:0x7fd884c9be00
  5103 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a600
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884c9be00
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a680
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884a1a480
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a680
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884a1a480
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a700
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884c9be00
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a19e80
  5104 ms     | 0x2201 PK11_Encrypt()
  5104 ms     | 0x2201 symkey:0x7fd884a1a600
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884a19580
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a19e80
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884a19580
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a700
  5104 ms     | 0x2201 PK11_DeriveWithFlags()
  5104 ms     | 0x2201 basekey:0x7fd884a19f80
  5104 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5104 ms     | 0x2201 ret:0x7fd884a1a600
  5104 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5104 ms     | 0x2201 privk:0x7fd895a99820::7fd895a99820  00 2b ab 95                                      .+..
  5104 ms     | 0x2201 privk:0x7fd895a99820::7fd895a99820  e5 e5 e5 e5                                      ....
  5104 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5104 ms     | 0x2201 privk:0x7fd895a97820::7fd895a97820  20 29 ab 95                                       )..
  5104 ms     | 0x2201 privk:0x7fd895a97820::7fd895a97820  e5 e5 e5 e5                                      ....
  5104 ms  0x2201 PK11_Encrypt()
  5104 ms  0x2201 symkey:0x7fd884c9c680
  5105 ms  0x2201 SSL_AuthCertificateComplete()
  5105 ms  0x2201 fd:0x7fd884c809a0
  5105 ms  0x2201 err:0x0
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a1a180
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd89788df00
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a1a180
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884c9be00
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a1a180
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a19f80
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a19f00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a700
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a19f00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a780
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884c9be00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a780
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884c9be00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a800
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a19f00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a080
  5105 ms     | 0x2201 PK11_Encrypt()
  5105 ms     | 0x2201 symkey:0x7fd884a1a700
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd89788df00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a080
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd89788df00
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a800
  5105 ms     | 0x2201 PK11_DeriveWithFlags()
  5105 ms     | 0x2201 basekey:0x7fd884a1a180
  5105 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5105 ms     | 0x2201 ret:0x7fd884a1a700
  5105 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5105 ms     | 0x2201 privk:0x7fd895a8c020::7fd895a8c020  50 21 ab 95                                      P!..
  5106 ms     | 0x2201 privk:0x7fd895a8c020::7fd895a8c020  e5 e5 e5 e5                                      ....
  5106 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5106 ms     | 0x2201 privk:0x7fd895a8a020::7fd895a8a020  10 ef c7 84                                      ....
  5106 ms     | 0x2201 privk:0x7fd895a8a020::7fd895a8a020  e5 e5 e5 e5                                      ....
  5106 ms  0x2201 SSL_AuthCertificateComplete()
  5106 ms  0x2201 fd:0x7fd884c80be0
  5106 ms  0x2201 err:0x0
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a380
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a19d00
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a380
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a19f00
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a380
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a180
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a100
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a800
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a100
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a880
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a19f00
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a880
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a19f00
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a900
  5106 ms     | 0x2201 PK11_DeriveWithFlags()
  5106 ms     | 0x2201 basekey:0x7fd884a1a100
  5106 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5106 ms     | 0x2201 ret:0x7fd884a1a280
  5106 ms     | 0x2201 PK11_Encrypt()
  5106 ms     | 0x2201 symkey:0x7fd884a1a800
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a19d00
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a280
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a19d00
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a900
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a380
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a800
  5107 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5107 ms     | 0x2201 privk:0x7fd895a90820::7fd895a90820  c0 24 ab 95                                      .$..
  5107 ms     | 0x2201 privk:0x7fd895a90820::7fd895a90820  e5 e5 e5 e5                                      ....
  5107 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5107 ms     | 0x2201 privk:0x7fd895a8e820::7fd895a8e820  90 22 ab 95                                      ."..
  5107 ms     | 0x2201 privk:0x7fd895a8e820::7fd895a8e820  e5 e5 e5 e5                                      ....
  5107 ms  0x2201 SSL_AuthCertificateComplete()
  5107 ms  0x2201 fd:0x7fd884c80bb0
  5107 ms  0x2201 err:0x0
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a500
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a000
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a500
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a100
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a500
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a380
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a300
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a900
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a300
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1aa00
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a100
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1aa00
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a100
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1aa80
  5107 ms     | 0x2201 PK11_DeriveWithFlags()
  5107 ms     | 0x2201 basekey:0x7fd884a1a300
  5107 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5107 ms     | 0x2201 ret:0x7fd884a1a400
  5108 ms     | 0x2201 PK11_Encrypt()
  5108 ms     | 0x2201 symkey:0x7fd884a1a900
  5108 ms     | 0x2201 PK11_DeriveWithFlags()
  5108 ms     | 0x2201 basekey:0x7fd884a1a000
  5108 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5108 ms     | 0x2201 ret:0x7fd884a1a400
  5108 ms     | 0x2201 PK11_DeriveWithFlags()
  5108 ms     | 0x2201 basekey:0x7fd884a1a000
  5108 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5108 ms     | 0x2201 ret:0x7fd884a1aa80
  5108 ms     | 0x2201 PK11_DeriveWithFlags()
  5108 ms     | 0x2201 basekey:0x7fd884a1a500
  5108 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5108 ms     | 0x2201 ret:0x7fd884a1a900
  5108 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5108 ms     | 0x2201 privk:0x7fd895a95020::7fd895a95020  e0 27 ab 95                                      .'..
  5108 ms     | 0x2201 privk:0x7fd895a95020::7fd895a95020  e5 e5 e5 e5                                      ....
  5108 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5108 ms     | 0x2201 privk:0x7fd895a93020::7fd895a93020  00 26 ab 95                                      .&..
  5108 ms     | 0x2201 privk:0x7fd895a93020::7fd895a93020  e5 e5 e5 e5                                      ....
           /* TID 0x2209 */
  5110 ms  0x2209 PR_Close()
  5110 ms  0x2209 fd:0x7fd884a83e50
  5111 ms  0x2209 PR_Close()
  5111 ms  0x2209 fd:0x7fd884a83df0
           /* TID 0x2201 */
  5113 ms  0x2201 PK11_Derive()
  5113 ms  0x2201 basekey:0x7fd884a1a200
  5113 ms     | 0x2201 PK11_DeriveWithTemplate()
  5113 ms  0x2201 ret:0x7fd884a1a300
  5113 ms  0x2201 PK11_PubDeriveWithKDF()
  5113 ms  0x2201 seckey:0x7fd895aa2820
  5113 ms     | 0x2201 EC_ValidatePublicKey()
  5114 ms     | 0x2201 ret:0x0
  5116 ms  0x2201 ret:0x7fd884a1a200
  5116 ms  SECKEY_ECParamsToKeySize()
  5116 ms  0x2201 ret:0x100
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1a300
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1a500
  5116 ms  0x2201 PK11_Derive()
  5116 ms  0x2201 basekey:0x7fd884a1a200
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1aa80
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1aa80
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1a300
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1aa80
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1a200
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1aa80
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1a500
  5116 ms  0x2201 PK11_Derive()
  5116 ms  0x2201 basekey:0x7fd884a1ad00
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1ad80
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1a200
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1aa80
  5116 ms  0x2201 PK11_DeriveWithFlags()
  5116 ms  0x2201 basekey:0x7fd884a1a200
  5116 ms     | 0x2201 PK11_DeriveWithTemplate()
  5116 ms  0x2201 ret:0x7fd884a1a500
           /* TID 0x225d */
  5117 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5117 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5117 ms  0x2201 PK11_DeriveWithFlags()
  5117 ms  0x2201 basekey:0x7fd884a1a200
  5117 ms     | 0x2201 PK11_DeriveWithTemplate()
  5117 ms  0x2201 ret:0x7fd884a1a500
  5117 ms  0x2201 PK11_Derive()
  5117 ms  0x2201 basekey:0x7fd884a1a500
  5117 ms     | 0x2201 PK11_DeriveWithTemplate()
  5117 ms  0x2201 ret:0x7fd884a1ad00
  5117 ms  0x2201 PK11_PubDeriveWithKDF()
  5117 ms  0x2201 seckey:0x7fd8972a2020
  5117 ms     | 0x2201 EC_ValidatePublicKey()
  5118 ms     | 0x2201 ret:0x0
  5120 ms  0x2201 ret:0x7fd884a1a500
  5120 ms  SECKEY_ECParamsToKeySize()
  5120 ms  0x2201 ret:0x100
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1ad00
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ae00
  5120 ms  0x2201 PK11_Derive()
  5120 ms  0x2201 basekey:0x7fd884a1a500
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ae80
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1ae80
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ad00
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1ae80
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1a500
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1ae80
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ae00
  5120 ms  0x2201 PK11_Derive()
  5120 ms  0x2201 basekey:0x7fd884a1af00
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1af80
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1a500
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ae80
  5120 ms  0x2201 PK11_DeriveWithFlags()
  5120 ms  0x2201 basekey:0x7fd884a1a500
  5120 ms     | 0x2201 PK11_DeriveWithTemplate()
  5120 ms  0x2201 ret:0x7fd884a1ae00
           /* TID 0x225d */
  5122 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5122 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5122 ms  0x2201 PK11_DeriveWithFlags()
  5122 ms  0x2201 basekey:0x7fd884a1a500
  5122 ms     | 0x2201 PK11_DeriveWithTemplate()
  5122 ms  0x2201 ret:0x7fd884a1ae00
  5122 ms  0x2201 PK11_Derive()
  5122 ms  0x2201 basekey:0x7fd884a1ae00
  5122 ms     | 0x2201 PK11_DeriveWithTemplate()
  5122 ms  0x2201 ret:0x7fd884a1af00
  5122 ms  0x2201 PK11_PubDeriveWithKDF()
  5122 ms  0x2201 seckey:0x7fd884904820
  5122 ms     | 0x2201 EC_ValidatePublicKey()
  5124 ms     | 0x2201 ret:0x0
  5126 ms  0x2201 ret:0x7fd884a1ae00
  5126 ms  SECKEY_ECParamsToKeySize()
  5126 ms  0x2201 ret:0x100
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884a1af00
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884a91880
  5126 ms  0x2201 PK11_Derive()
  5126 ms  0x2201 basekey:0x7fd884a1ae00
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884c7a280
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884c7a280
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884a1af00
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884c7a280
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884a1ae00
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884c7a280
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884a91880
  5126 ms  0x2201 PK11_Derive()
  5126 ms  0x2201 basekey:0x7fd884c7a480
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884c7ab80
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884a1ae00
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884c7a280
  5126 ms  0x2201 PK11_DeriveWithFlags()
  5126 ms  0x2201 basekey:0x7fd884a1ae00
  5126 ms     | 0x2201 PK11_DeriveWithTemplate()
  5126 ms  0x2201 ret:0x7fd884a91880
           /* TID 0x225d */
  5127 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5127 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5127 ms  0x2201 PK11_DeriveWithFlags()
  5127 ms  0x2201 basekey:0x7fd884a1ae00
  5127 ms     | 0x2201 PK11_DeriveWithTemplate()
  5127 ms  0x2201 ret:0x7fd884a91880
  5127 ms  0x2201 PK11_Derive()
  5127 ms  0x2201 basekey:0x7fd884a91880
  5127 ms     | 0x2201 PK11_DeriveWithTemplate()
  5127 ms  0x2201 ret:0x7fd884c7a480
  5127 ms  0x2201 PK11_PubDeriveWithKDF()
  5127 ms  0x2201 seckey:0x7fd884909020
  5127 ms     | 0x2201 EC_ValidatePublicKey()
  5129 ms     | 0x2201 ret:0x0
  5130 ms  0x2201 ret:0x7fd884a91880
  5130 ms  SECKEY_ECParamsToKeySize()
  5130 ms  0x2201 ret:0x100
  5130 ms  0x2201 PK11_DeriveWithFlags()
  5130 ms  0x2201 basekey:0x7fd884c7a480
  5130 ms     | 0x2201 PK11_DeriveWithTemplate()
  5130 ms  0x2201 ret:0x7fd884c7b780
  5130 ms  0x2201 PK11_Derive()
  5130 ms  0x2201 basekey:0x7fd884a91880
  5130 ms     | 0x2201 PK11_DeriveWithTemplate()
  5130 ms  0x2201 ret:0x7fd884c7b980
  5130 ms  0x2201 PK11_DeriveWithFlags()
  5130 ms  0x2201 basekey:0x7fd884c7b980
  5130 ms     | 0x2201 PK11_DeriveWithTemplate()
  5130 ms  0x2201 ret:0x7fd884c7a480
  5130 ms  0x2201 PK11_DeriveWithFlags()
  5130 ms  0x2201 basekey:0x7fd884c7b980
  5131 ms     | 0x2201 PK11_DeriveWithTemplate()
  5131 ms  0x2201 ret:0x7fd884a91880
  5131 ms  0x2201 PK11_DeriveWithFlags()
  5131 ms  0x2201 basekey:0x7fd884c7b980
  5131 ms     | 0x2201 PK11_DeriveWithTemplate()
  5131 ms  0x2201 ret:0x7fd884c7b780
  5131 ms  0x2201 PK11_Derive()
  5131 ms  0x2201 basekey:0x7fd8a0a81b00
  5131 ms     | 0x2201 PK11_DeriveWithTemplate()
  5131 ms  0x2201 ret:0x7fd8a0a81f00
  5131 ms  0x2201 PK11_DeriveWithFlags()
  5131 ms  0x2201 basekey:0x7fd884a91880
  5131 ms     | 0x2201 PK11_DeriveWithTemplate()
  5131 ms  0x2201 ret:0x7fd884c7b980
  5131 ms  0x2201 PK11_DeriveWithFlags()
  5131 ms  0x2201 basekey:0x7fd884a91880
  5131 ms     | 0x2201 PK11_DeriveWithTemplate()
  5131 ms  0x2201 ret:0x7fd884c7b780
           /* TID 0x225d */
  5131 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5131 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5132 ms  0x2201 PK11_DeriveWithFlags()
  5132 ms  0x2201 basekey:0x7fd884a91880
  5132 ms     | 0x2201 PK11_DeriveWithTemplate()
  5132 ms  0x2201 ret:0x7fd884c7b780
  5132 ms  0x2201 PK11_Derive()
  5132 ms  0x2201 basekey:0x7fd884c7b780
  5132 ms     | 0x2201 PK11_DeriveWithTemplate()
  5132 ms  0x2201 ret:0x7fd8a0a81b00
  5132 ms  0x2201 PK11_PubDeriveWithKDF()
  5132 ms  0x2201 seckey:0x7fd88490d820
  5132 ms     | 0x2201 EC_ValidatePublicKey()
  5133 ms     | 0x2201 ret:0x0
  5135 ms  0x2201 ret:0x7fd884c7b780
  5135 ms  SECKEY_ECParamsToKeySize()
  5135 ms  0x2201 ret:0x100
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd8a0a81b00
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de080
  5135 ms  0x2201 PK11_Derive()
  5135 ms  0x2201 basekey:0x7fd884c7b780
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de100
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd8849de100
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8a0a81b00
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd8849de100
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd884c7b780
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd8849de100
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de080
  5135 ms  0x2201 PK11_Derive()
  5135 ms  0x2201 basekey:0x7fd8849de180
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de200
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd884c7b780
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de100
  5135 ms  0x2201 PK11_DeriveWithFlags()
  5135 ms  0x2201 basekey:0x7fd884c7b780
  5135 ms     | 0x2201 PK11_DeriveWithTemplate()
  5135 ms  0x2201 ret:0x7fd8849de080
           /* TID 0x225d */
  5136 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5136 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5136 ms  0x2201 PK11_DeriveWithFlags()
  5136 ms  0x2201 basekey:0x7fd884c7b780
  5136 ms     | 0x2201 PK11_DeriveWithTemplate()
  5136 ms  0x2201 ret:0x7fd8849de080
  5136 ms  0x2201 PK11_Derive()
  5136 ms  0x2201 basekey:0x7fd8849de080
  5136 ms     | 0x2201 PK11_DeriveWithTemplate()
  5136 ms  0x2201 ret:0x7fd8849de180
  5136 ms  0x2201 PK11_PubDeriveWithKDF()
  5136 ms  0x2201 seckey:0x7fd884912020
  5136 ms     | 0x2201 EC_ValidatePublicKey()
  5137 ms     | 0x2201 ret:0x0
  5139 ms  0x2201 ret:0x7fd8849de080
  5139 ms  SECKEY_ECParamsToKeySize()
  5139 ms  0x2201 ret:0x100
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de180
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de280
  5139 ms  0x2201 PK11_Derive()
  5139 ms  0x2201 basekey:0x7fd8849de080
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de300
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de300
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de180
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de300
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de080
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de300
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de280
  5139 ms  0x2201 PK11_Derive()
  5139 ms  0x2201 basekey:0x7fd8849de380
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de400
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de080
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de300
  5139 ms  0x2201 PK11_DeriveWithFlags()
  5139 ms  0x2201 basekey:0x7fd8849de080
  5139 ms     | 0x2201 PK11_DeriveWithTemplate()
  5139 ms  0x2201 ret:0x7fd8849de280
           /* TID 0x225d */
  5140 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5140 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5140 ms  0x2201 PK11_DeriveWithFlags()
  5140 ms  0x2201 basekey:0x7fd8849de080
  5140 ms     | 0x2201 PK11_DeriveWithTemplate()
  5140 ms  0x2201 ret:0x7fd8849de280
  5140 ms  0x2201 PK11_Encrypt()
  5140 ms  0x2201 symkey:0x7fd884a19e80
  5151 ms  0x2201 PK11_DeriveWithFlags()
  5151 ms  0x2201 basekey:0x7fd884a19d80
  5151 ms     | 0x2201 PK11_DeriveWithTemplate()
  5151 ms  0x2201 ret:0x7fd8849de280
  5151 ms  0x2201 PK11_DeriveWithFlags()
  5151 ms  0x2201 basekey:0x7fd884a19d80
  5151 ms     | 0x2201 PK11_DeriveWithTemplate()
  5151 ms  0x2201 ret:0x7fd8849de280
  5151 ms  0x2201 PK11_Encrypt()
  5151 ms  0x2201 symkey:0x7fd884a1a080
  5151 ms  0x2201 PK11_Encrypt()
  5151 ms  0x2201 symkey:0x7fd884a1a280
  5152 ms  0x2201 PK11_Encrypt()
  5152 ms  0x2201 symkey:0x7fd884a1a400
  5152 ms  0x2201 PR_Close()
  5152 ms  0x2201 fd:0x7fd884c809d0
  5152 ms     | 0x2201 PK11_Encrypt()
  5152 ms     | 0x2201 symkey:0x7fd884a19b00
  5152 ms  0x2201 SSL_AuthCertificateComplete()
  5152 ms  0x2201 fd:0x7fd884c80b50
  5152 ms  0x2201 err:0x0
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1ad80
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19b80
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1ad80
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19c80
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1ad80
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19880
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1a300
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19d80
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1a300
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19e00
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a19c80
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19e00
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a19c80
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a19b00
  5152 ms     | 0x2201 PK11_DeriveWithFlags()
  5152 ms     | 0x2201 basekey:0x7fd884a1a300
  5152 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5152 ms     | 0x2201 ret:0x7fd884a1aa80
  5152 ms     | 0x2201 PK11_Encrypt()
  5152 ms     | 0x2201 symkey:0x7fd884a19d80
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a19b80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a1aa80
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a19b80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a19b00
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1ad80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a19d80
  5153 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5153 ms     | 0x2201 privk:0x7fd895aa2820::7fd895aa2820  90 ec c7 84                                      ....
  5153 ms     | 0x2201 privk:0x7fd895aa2820::7fd895aa2820  e5 e5 e5 e5                                      ....
  5153 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5153 ms     | 0x2201 privk:0x7fd895aa0820::7fd895aa0820  b0 ea c7 84                                      ....
  5153 ms     | 0x2201 privk:0x7fd895aa0820::7fd895aa0820  e5 e5 e5 e5                                      ....
  5153 ms  0x2201 SSL_AuthCertificateComplete()
  5153 ms  0x2201 fd:0x7fd884c80b20
  5153 ms  0x2201 err:0x0
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1af80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a1a200
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1af80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a1a300
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1af80
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a1ad80
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1ad00
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a19b00
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1ad00
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd8849de280
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1a300
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd8849de280
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1a300
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd8849de380
  5153 ms     | 0x2201 PK11_DeriveWithFlags()
  5153 ms     | 0x2201 basekey:0x7fd884a1ad00
  5153 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5153 ms     | 0x2201 ret:0x7fd884a1ae80
  5153 ms     | 0x2201 PK11_Encrypt()
  5153 ms     | 0x2201 symkey:0x7fd884a19b00
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1a200
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884a1ae80
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1a200
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd8849de380
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1af80
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884a19b00
  5154 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5154 ms     | 0x2201 privk:0x7fd8972a2020::7fd8972a2020  60 70 af 95                                      `p..
  5154 ms     | 0x2201 privk:0x7fd8972a2020::7fd8972a2020  e5 e5 e5 e5                                      ....
  5154 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5154 ms     | 0x2201 privk:0x7fd89729e820::7fd89729e820  70 2e ab 95                                      p...
  5154 ms     | 0x2201 privk:0x7fd89729e820::7fd89729e820  e5 e5 e5 e5                                      ....
  5154 ms  0x2201 SSL_AuthCertificateComplete()
  5154 ms  0x2201 fd:0x7fd884c80af0
  5154 ms  0x2201 err:0x0
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884c7ab80
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884a1a500
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884c7ab80
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884a1ad00
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884c7ab80
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884a1af80
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1af00
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd8849de380
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1af00
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd8849de600
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1ad00
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd8849de600
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1ad00
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd8849de680
  5154 ms     | 0x2201 PK11_DeriveWithFlags()
  5154 ms     | 0x2201 basekey:0x7fd884a1af00
  5154 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5154 ms     | 0x2201 ret:0x7fd884c7a280
  5154 ms     | 0x2201 PK11_Encrypt()
  5154 ms     | 0x2201 symkey:0x7fd8849de380
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884a1a500
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd884c7a280
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884a1a500
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de680
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884c7ab80
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de380
  5155 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5155 ms     | 0x2201 privk:0x7fd884904820::7fd884904820  80 73 af 95                                      .s..
  5155 ms     | 0x2201 privk:0x7fd884904820::7fd884904820  e5 e5 e5 e5                                      ....
  5155 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5155 ms     | 0x2201 privk:0x7fd884902820::7fd884902820  a0 71 af 95                                      .q..
  5155 ms     | 0x2201 privk:0x7fd884902820::7fd884902820  e5 e5 e5 e5                                      ....
  5155 ms  0x2201 SSL_AuthCertificateComplete()
  5155 ms  0x2201 fd:0x7fd884c80ac0
  5155 ms  0x2201 err:0x0
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd8a0a81f00
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd884a1ae00
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd8a0a81f00
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd884a1af00
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd8a0a81f00
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd884c7ab80
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884c7a480
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de680
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884c7a480
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de700
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884a1af00
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de700
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884a1af00
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd8849de780
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884c7a480
  5155 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5155 ms     | 0x2201 ret:0x7fd884c7b980
  5155 ms     | 0x2201 PK11_Encrypt()
  5155 ms     | 0x2201 symkey:0x7fd8849de680
  5155 ms     | 0x2201 PK11_DeriveWithFlags()
  5155 ms     | 0x2201 basekey:0x7fd884a1ae00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd884c7b980
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd884a1ae00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de780
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8a0a81f00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de680
  5156 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5156 ms     | 0x2201 privk:0x7fd884909020::7fd884909020  a0 76 af 95                                      .v..
  5156 ms     | 0x2201 privk:0x7fd884909020::7fd884909020  e5 e5 e5 e5                                      ....
  5156 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5156 ms     | 0x2201 privk:0x7fd884907020::7fd884907020  c0 74 af 95                                      .t..
  5156 ms     | 0x2201 privk:0x7fd884907020::7fd884907020  e5 e5 e5 e5                                      ....
  5156 ms  0x2201 SSL_AuthCertificateComplete()
  5156 ms  0x2201 fd:0x7fd884c80a90
  5156 ms  0x2201 err:0x0
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8849de200
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd884a91880
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8849de200
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd884c7a480
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8849de200
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8a0a81f00
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de780
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de800
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd884c7a480
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de800
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd884c7a480
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de880
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5156 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5156 ms     | 0x2201 ret:0x7fd8849de100
  5156 ms     | 0x2201 PK11_Encrypt()
  5156 ms     | 0x2201 symkey:0x7fd8849de780
  5156 ms     | 0x2201 PK11_DeriveWithFlags()
  5156 ms     | 0x2201 basekey:0x7fd884a91880
  5157 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5157 ms     | 0x2201 ret:0x7fd8849de100
  5157 ms     | 0x2201 PK11_DeriveWithFlags()
  5157 ms     | 0x2201 basekey:0x7fd884a91880
  5157 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5157 ms     | 0x2201 ret:0x7fd8849de880
  5157 ms     | 0x2201 PK11_DeriveWithFlags()
  5157 ms     | 0x2201 basekey:0x7fd8849de200
  5157 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5157 ms     | 0x2201 ret:0x7fd8849de780
  5157 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5157 ms     | 0x2201 privk:0x7fd88490d820::7fd88490d820  c0 79 af 95                                      .y..
  5157 ms     | 0x2201 privk:0x7fd88490d820::7fd88490d820  e5 e5 e5 e5                                      ....
  5157 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5157 ms     | 0x2201 privk:0x7fd88490b820::7fd88490b820  e0 77 af 95                                      .w..
  5157 ms     | 0x2201 privk:0x7fd88490b820::7fd88490b820  e5 e5 e5 e5                                      ....
  5157 ms  0x2201 SSL_AuthCertificateComplete()
  5157 ms  0x2201 fd:0x7fd884c80a60
  5157 ms  0x2201 err:0x0
  5157 ms     | 0x2201 PK11_DeriveWithFlags()
  5157 ms     | 0x2201 basekey:0x7fd8849de400
  5157 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5157 ms     | 0x2201 ret:0x7fd884c7b780
  5157 ms     | 0x2201 PK11_DeriveWithFlags()
  5157 ms     | 0x2201 basekey:0x7fd8849de400
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8a0a81b00
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8849de400
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de200
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8849de180
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de880
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8849de180
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de900
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de900
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de980
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8849de180
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de300
  5161 ms     | 0x2201 PK11_Encrypt()
  5161 ms     | 0x2201 symkey:0x7fd8849de880
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd884c7b780
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de300
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd884c7b780
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de980
  5161 ms     | 0x2201 PK11_DeriveWithFlags()
  5161 ms     | 0x2201 basekey:0x7fd8849de400
  5161 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5161 ms     | 0x2201 ret:0x7fd8849de880
  5161 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5161 ms     | 0x2201 privk:0x7fd884912020::7fd884912020  e0 7c af 95                                      .|..
  5161 ms     | 0x2201 privk:0x7fd884912020::7fd884912020  e5 e5 e5 e5                                      ....
  5161 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5161 ms     | 0x2201 privk:0x7fd884910020::7fd884910020  00 7b af 95                                      .{..
  5161 ms     | 0x2201 privk:0x7fd884910020::7fd884910020  e5 e5 e5 e5                                      ....
  5162 ms  0x2201 PK11_Encrypt()
  5162 ms  0x2201 symkey:0x7fd884c9c680
  5162 ms  0x2201 PK11_Encrypt()
  5162 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5163 ms  0x2209 PR_Close()
  5163 ms  0x2209 fd:0x7fd884a83eb0
  5167 ms  0x2209 PR_Close()
  5167 ms  0x2209 fd:0x7fd884a83e80
           /* TID 0x2201 */
  5168 ms  0x2201 PK11_Encrypt()
  5168 ms  0x2201 symkey:0x7fd884a1aa80
  5168 ms  0x2201 PK11_Encrypt()
  5168 ms  0x2201 symkey:0x7fd884a1aa80
  5169 ms  0x2201 PK11_Encrypt()
  5169 ms  0x2201 symkey:0x7fd884a1ae80
  5169 ms  0x2201 PK11_Encrypt()
  5169 ms  0x2201 symkey:0x7fd884c7a280
  5170 ms  0x2201 PK11_Encrypt()
  5170 ms  0x2201 symkey:0x7fd884c7b980
  5170 ms  0x2201 PK11_Encrypt()
  5170 ms  0x2201 symkey:0x7fd8849de100
  5170 ms  0x2201 PK11_Encrypt()
  5170 ms  0x2201 symkey:0x7fd8849de300
  5170 ms  0x2201 PK11_DeriveWithFlags()
  5170 ms  0x2201 basekey:0x7fd884a1a600
  5170 ms     | 0x2201 PK11_DeriveWithTemplate()
  5171 ms  0x2201 ret:0x7fd8849de080
  5171 ms  0x2201 PK11_DeriveWithFlags()
  5171 ms  0x2201 basekey:0x7fd884a1a600
  5171 ms     | 0x2201 PK11_DeriveWithTemplate()
  5171 ms  0x2201 ret:0x7fd8849de080
  5171 ms  0x2201 PK11_Encrypt()
  5171 ms  0x2201 symkey:0x7fd884c9c680
  5171 ms  0x2201 PK11_Encrypt()
  5171 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5172 ms  0x2209 PR_Close()
  5172 ms  0x2209 fd:0x7fd884a83f10
           /* TID 0x2201 */
  5173 ms  0x2201 PK11_DeriveWithFlags()
  5173 ms  0x2201 basekey:0x7fd884a1a900
  5173 ms     | 0x2201 PK11_DeriveWithTemplate()
  5173 ms  0x2201 ret:0x7fd8849de080
  5173 ms  0x2201 PK11_DeriveWithFlags()
  5173 ms  0x2201 basekey:0x7fd884a1a900
  5173 ms     | 0x2201 PK11_DeriveWithTemplate()
  5173 ms  0x2201 ret:0x7fd8849de080
  5173 ms  0x2201 PK11_DeriveWithFlags()
  5173 ms  0x2201 basekey:0x7fd884a1a700
  5173 ms     | 0x2201 PK11_DeriveWithTemplate()
  5173 ms  0x2201 ret:0x7fd8849de080
  5173 ms  0x2201 PK11_DeriveWithFlags()
  5173 ms  0x2201 basekey:0x7fd884a1a700
  5173 ms     | 0x2201 PK11_DeriveWithTemplate()
  5173 ms  0x2201 ret:0x7fd8849de080
  5174 ms  0x2201 PK11_DeriveWithFlags()
  5174 ms  0x2201 basekey:0x7fd884a1a800
  5174 ms     | 0x2201 PK11_DeriveWithTemplate()
  5174 ms  0x2201 ret:0x7fd8849de080
  5174 ms  0x2201 PK11_DeriveWithFlags()
  5174 ms  0x2201 basekey:0x7fd884a1a800
  5174 ms     | 0x2201 PK11_DeriveWithTemplate()
  5174 ms  0x2201 ret:0x7fd8849de080
  5174 ms  0x2201 PR_Close()
  5174 ms  0x2201 fd:0x7fd884c80be0
  5174 ms     | 0x2201 PK11_Encrypt()
  5174 ms     | 0x2201 symkey:0x7fd884a1a280
  5174 ms  0x2201 PR_Close()
  5174 ms  0x2201 fd:0x7fd884c809a0
  5174 ms     | 0x2201 PK11_Encrypt()
  5174 ms     | 0x2201 symkey:0x7fd884a1a080
  5174 ms  0x2201 PR_Close()
  5174 ms  0x2201 fd:0x7fd884c80bb0
  5174 ms     | 0x2201 PK11_Encrypt()
  5174 ms     | 0x2201 symkey:0x7fd884a1a400
  5175 ms  0x2201 PR_Close()
  5175 ms  0x2201 fd:0x7fd884c80a30
  5175 ms     | 0x2201 PK11_Encrypt()
  5175 ms     | 0x2201 symkey:0x7fd884a19e80
  5175 ms  0x2201 PK11_Encrypt()
  5175 ms  0x2201 symkey:0x7fd884a1aa80
  5175 ms  0x2201 PK11_Encrypt()
  5175 ms  0x2201 symkey:0x7fd884a1aa80
  5176 ms  0x2201 PK11_Encrypt()
  5176 ms  0x2201 symkey:0x7fd884a1aa80
  5176 ms  0x2201 PK11_Encrypt()
  5176 ms  0x2201 symkey:0x7fd884a1aa80
  5177 ms  0x2201 PK11_Encrypt()
  5177 ms  0x2201 symkey:0x7fd884a1aa80
  5177 ms  0x2201 PK11_Encrypt()
  5177 ms  0x2201 symkey:0x7fd884a1aa80
  5177 ms  0x2201 PK11_Encrypt()
  5177 ms  0x2201 symkey:0x7fd884c9c680
  5178 ms  0x2201 PK11_Encrypt()
  5178 ms  0x2201 symkey:0x7fd884a1aa80
  5178 ms  0x2201 PK11_DeriveWithFlags()
  5178 ms  0x2201 basekey:0x7fd884a19d80
  5178 ms     | 0x2201 PK11_DeriveWithTemplate()
  5178 ms  0x2201 ret:0x7fd884a1a580
  5178 ms  0x2201 PK11_DeriveWithFlags()
  5178 ms  0x2201 basekey:0x7fd884a19d80
  5178 ms     | 0x2201 PK11_DeriveWithTemplate()
  5178 ms  0x2201 ret:0x7fd884a1a580
  5178 ms  0x2201 PK11_Encrypt()
  5178 ms  0x2201 symkey:0x7fd884a1aa80
  5179 ms  0x2201 SSL_ImportFD()
  5179 ms  0x2201 ret:0x7fd884c75460
  5179 ms  0x2201 SSL_AuthCertificateHook()
  5179 ms  0x2201 fd:0x7fd884c75460
  5179 ms  0x2201 ret:0x0
  5179 ms  0x2201 PK11_Encrypt()
  5179 ms  0x2201 symkey:0x7fd884c9c680
  5180 ms  0x2201 PR_Connect()
  5180 ms  0x2201 fd:0x7fd884c75460
  5180 ms  0x2201 SSL_ImportFD()
  5180 ms  0x2201 ret:0x7fd884a83eb0
  5180 ms  0x2201 SSL_AuthCertificateHook()
  5180 ms  0x2201 fd:0x7fd884a83eb0
  5180 ms  0x2201 ret:0x0
  5180 ms  0x2201 PR_Connect()
  5180 ms  0x2201 fd:0x7fd884a83eb0
  5180 ms  0x2201 PK11_DeriveWithFlags()
  5180 ms  0x2201 basekey:0x7fd884a19b00
  5180 ms     | 0x2201 PK11_DeriveWithTemplate()
  5180 ms  0x2201 ret:0x7fd884a1a580
  5180 ms  0x2201 PK11_DeriveWithFlags()
  5180 ms  0x2201 basekey:0x7fd884a19b00
  5180 ms     | 0x2201 PK11_DeriveWithTemplate()
  5180 ms  0x2201 ret:0x7fd884a1a580
  5180 ms  0x2201 PK11_DeriveWithFlags()
  5180 ms  0x2201 basekey:0x7fd8849de380
  5180 ms     | 0x2201 PK11_DeriveWithTemplate()
  5180 ms  0x2201 ret:0x7fd884a1a580
  5181 ms  0x2201 PK11_DeriveWithFlags()
  5181 ms  0x2201 basekey:0x7fd8849de380
  5181 ms     | 0x2201 PK11_DeriveWithTemplate()
  5181 ms  0x2201 ret:0x7fd884a1a580
  5181 ms  0x2201 PK11_Encrypt()
  5181 ms  0x2201 symkey:0x7fd884c9c680
  5181 ms  0x2201 PR_Close()
  5181 ms  0x2201 fd:0x7fd884c80af0
  5181 ms     | 0x2201 PK11_Encrypt()
  5181 ms     | 0x2201 symkey:0x7fd884c7a280
  5181 ms  0x2201 PR_Close()
  5181 ms  0x2201 fd:0x7fd884c80b20
  5181 ms     | 0x2201 PK11_Encrypt()
  5181 ms     | 0x2201 symkey:0x7fd884a1ae80
  5181 ms  0x2201 PK11_DeriveWithFlags()
  5181 ms  0x2201 basekey:0x7fd8849de680
  5181 ms     | 0x2201 PK11_DeriveWithTemplate()
  5181 ms  0x2201 ret:0x7fd884a1ad80
  5181 ms  0x2201 PK11_DeriveWithFlags()
  5181 ms  0x2201 basekey:0x7fd8849de680
  5182 ms     | 0x2201 PK11_DeriveWithTemplate()
  5182 ms  0x2201 ret:0x7fd884a1ad80
  5182 ms  0x2201 PR_Close()
  5182 ms  0x2201 fd:0x7fd884c80ac0
  5182 ms     | 0x2201 PK11_Encrypt()
  5182 ms     | 0x2201 symkey:0x7fd884c7b980
  5182 ms  0x2201 PK11_DeriveWithFlags()
  5182 ms  0x2201 basekey:0x7fd8849de780
  5182 ms     | 0x2201 PK11_DeriveWithTemplate()
  5182 ms  0x2201 ret:0x7fd884c7ab80
  5182 ms  0x2201 PK11_DeriveWithFlags()
  5182 ms  0x2201 basekey:0x7fd8849de780
  5182 ms     | 0x2201 PK11_DeriveWithTemplate()
  5182 ms  0x2201 ret:0x7fd884c7ab80
  5182 ms  0x2201 PR_Close()
  5182 ms  0x2201 fd:0x7fd884c80a90
  5182 ms     | 0x2201 PK11_Encrypt()
  5182 ms     | 0x2201 symkey:0x7fd8849de100
  5186 ms  0x2201 PK11_DeriveWithFlags()
  5186 ms  0x2201 basekey:0x7fd8849de880
  5186 ms     | 0x2201 PK11_DeriveWithTemplate()
  5186 ms  0x2201 ret:0x7fd8a0a81f00
  5186 ms  0x2201 PK11_DeriveWithFlags()
  5186 ms  0x2201 basekey:0x7fd8849de880
  5186 ms     | 0x2201 PK11_DeriveWithTemplate()
  5186 ms  0x2201 ret:0x7fd8a0a81f00
  5186 ms  0x2201 PR_Close()
  5186 ms  0x2201 fd:0x7fd884c80a60
  5186 ms     | 0x2201 PK11_Encrypt()
  5186 ms     | 0x2201 symkey:0x7fd8849de300
           /* TID 0x2209 */
  5191 ms  0x2209 PR_Close()
  5191 ms  0x2209 fd:0x7fd884a83dc0
           /* TID 0x2201 */
  5211 ms  0x2201 SECKEY_CreateECPrivateKey()
  5211 ms  0x2201 cx:0x7fd895a0a5c8
  5212 ms     | 0x2201 EC_ValidatePublicKey()
  5212 ms     | 0x2201 ret:0x0
  5212 ms  0x2201 ret:0x7fd884905820::7fd884905820  30 f3 af 84                                      0...
  5212 ms  0x2201 SECKEY_CreateECPrivateKey()
  5212 ms  0x2201 cx:0x7fd895a0a5c8
  5212 ms     | 0x2201 EC_ValidatePublicKey()
  5214 ms     | 0x2201 ret:0x0
  5214 ms  0x2201 ret:0x7fd88490a020::7fd88490a020  60 f5 af 84                                      `...
  5220 ms  0x2201 SECKEY_CreateECPrivateKey()
  5220 ms  0x2201 cx:0x7fd895a0a428
  5221 ms     | 0x2201 EC_ValidatePublicKey()
  5221 ms     | 0x2201 ret:0x0
  5221 ms  0x2201 ret:0x7fd88490c820::7fd88490c820  f0 f6 af 84                                      ....
  5221 ms  0x2201 SECKEY_CreateECPrivateKey()
  5221 ms  0x2201 cx:0x7fd895a0a428
  5222 ms     | 0x2201 EC_ValidatePublicKey()
  5224 ms     | 0x2201 ret:0x0
  5224 ms  0x2201 ret:0x7fd884913020::7fd884913020  c0 f9 af 84                                      ....
           /* TID 0x2209 */
  5225 ms  0x2209 PR_Close()
  5225 ms  0x2209 fd:0x7fd884a83e20
  5227 ms  0x2209 PR_Close()
  5227 ms  0x2209 fd:0x7fd884a83d60
  5229 ms  0x2209 PR_Close()
  5229 ms  0x2209 fd:0x7fd884a83d60
           /* TID 0x2201 */
  5240 ms  0x2201 PK11_Derive()
  5240 ms  0x2201 basekey:0x7fd8849de200
  5240 ms     | 0x2201 PK11_DeriveWithTemplate()
  5240 ms  0x2201 ret:0x7fd8a0a81b00
  5240 ms  0x2201 PK11_PubDeriveWithKDF()
  5240 ms  0x2201 seckey:0x7fd88490a020
  5240 ms     | 0x2201 EC_ValidatePublicKey()
  5241 ms     | 0x2201 ret:0x0
  5243 ms  0x2201 ret:0x7fd8849de200
  5243 ms  SECKEY_ECParamsToKeySize()
  5243 ms  0x2201 ret:0x100
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8a0a81b00
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd884c7b780
  5243 ms  0x2201 PK11_Derive()
  5243 ms  0x2201 basekey:0x7fd8849de200
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd8849de880
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8849de880
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd8a0a81b00
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8849de880
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd8849de200
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8849de880
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd884c7b780
  5243 ms  0x2201 PK11_Derive()
  5243 ms  0x2201 basekey:0x7fd8849de900
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd8849de300
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8849de200
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd8849de880
  5243 ms  0x2201 PK11_DeriveWithFlags()
  5243 ms  0x2201 basekey:0x7fd8849de200
  5243 ms     | 0x2201 PK11_DeriveWithTemplate()
  5243 ms  0x2201 ret:0x7fd884c7b780
           /* TID 0x225d */
  5244 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5244 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5244 ms  0x2201 PK11_DeriveWithFlags()
  5244 ms  0x2201 basekey:0x7fd8849de200
  5244 ms     | 0x2201 PK11_DeriveWithTemplate()
  5244 ms  0x2201 ret:0x7fd884c7b780
  5244 ms  0x2201 SSL_AuthCertificateComplete()
  5244 ms  0x2201 fd:0x7fd884a83eb0
  5244 ms  0x2201 err:0x0
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8849de300
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd884c7b780
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8849de300
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd8849de900
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8849de300
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd8a0a81f00
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd884c7a480
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd884a91880
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8849de900
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd884a91880
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8849de900
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd8849de780
  5244 ms     | 0x2201 PK11_DeriveWithFlags()
  5244 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5244 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5244 ms     | 0x2201 ret:0x7fd8849de880
  5244 ms     | 0x2201 PK11_Encrypt()
  5244 ms     | 0x2201 symkey:0x7fd884c7a480
  5245 ms     | 0x2201 PK11_DeriveWithFlags()
  5245 ms     | 0x2201 basekey:0x7fd884c7b780
  5245 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5245 ms     | 0x2201 ret:0x7fd8849de880
  5245 ms     | 0x2201 PK11_DeriveWithFlags()
  5245 ms     | 0x2201 basekey:0x7fd884c7b780
  5245 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5245 ms     | 0x2201 ret:0x7fd8849de780
  5245 ms     | 0x2201 PK11_DeriveWithFlags()
  5245 ms     | 0x2201 basekey:0x7fd8849de300
  5245 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5245 ms     | 0x2201 ret:0x7fd884c7a480
  5245 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5245 ms     | 0x2201 privk:0x7fd88490a020::7fd88490a020  60 f5 af 84                                      `...
  5245 ms     | 0x2201 privk:0x7fd88490a020::7fd88490a020  e5 e5 e5 e5                                      ....
  5245 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5245 ms     | 0x2201 privk:0x7fd884905820::7fd884905820  30 f3 af 84                                      0...
  5245 ms     | 0x2201 privk:0x7fd884905820::7fd884905820  e5 e5 e5 e5                                      ....
  5245 ms  0x2201 PK11_Encrypt()
  5245 ms  0x2201 symkey:0x7fd8849de880
           /* TID 0x2209 */
  5251 ms  0x2209 PR_Close()
  5251 ms  0x2209 fd:0x7fd884c759d0
           /* TID 0x2201 */
  5251 ms  0x2201 PK11_Derive()
  5251 ms  0x2201 basekey:0x7fd8849de200
  5251 ms     | 0x2201 PK11_DeriveWithTemplate()
  5251 ms  0x2201 ret:0x7fd8a0a81b00
  5251 ms  0x2201 PK11_PubDeriveWithKDF()
  5251 ms  0x2201 seckey:0x7fd884913020
  5252 ms     | 0x2201 EC_ValidatePublicKey()
  5253 ms     | 0x2201 ret:0x0
  5255 ms  0x2201 ret:0x7fd8849de200
  5255 ms  SECKEY_ECParamsToKeySize()
  5255 ms  0x2201 ret:0x100
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8a0a81b00
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de300
  5255 ms  0x2201 PK11_Derive()
  5255 ms  0x2201 basekey:0x7fd8849de200
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de780
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8849de780
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8a0a81b00
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8849de780
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de200
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8849de780
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de300
  5255 ms  0x2201 PK11_Derive()
  5255 ms  0x2201 basekey:0x7fd8849de800
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de100
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8849de200
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de780
  5255 ms  0x2201 PK11_DeriveWithFlags()
  5255 ms  0x2201 basekey:0x7fd8849de200
  5255 ms     | 0x2201 PK11_DeriveWithTemplate()
  5255 ms  0x2201 ret:0x7fd8849de300
           /* TID 0x225d */
  5256 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5256 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5257 ms  0x2201 PK11_DeriveWithFlags()
  5257 ms  0x2201 basekey:0x7fd8849de200
  5257 ms     | 0x2201 PK11_DeriveWithTemplate()
  5257 ms  0x2201 ret:0x7fd8849de300
           /* TID 0x2209 */
  5258 ms  0x2209 PR_Close()
  5258 ms  0x2209 fd:0x7fd884a83d30
           /* TID 0x2201 */
  5266 ms  0x2201 SSL_AuthCertificateComplete()
  5266 ms  0x2201 fd:0x7fd884c75460
  5266 ms  0x2201 err:0x0
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de100
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de300
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de100
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de800
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de100
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd884c7ab80
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd884a1af00
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd884a1ae00
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de800
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd884a1ae00
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de800
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de680
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8a0a81b00
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de780
  5266 ms     | 0x2201 PK11_Encrypt()
  5266 ms     | 0x2201 symkey:0x7fd884a1af00
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de300
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de780
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de300
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd8849de680
  5266 ms     | 0x2201 PK11_DeriveWithFlags()
  5266 ms     | 0x2201 basekey:0x7fd8849de100
  5266 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5266 ms     | 0x2201 ret:0x7fd884a1af00
  5267 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5267 ms     | 0x2201 privk:0x7fd884913020::7fd884913020  c0 f9 af 84                                      ....
  5267 ms     | 0x2201 privk:0x7fd884913020::7fd884913020  e5 e5 e5 e5                                      ....
  5267 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5267 ms     | 0x2201 privk:0x7fd88490c820::7fd88490c820  f0 f6 af 84                                      ....
  5267 ms     | 0x2201 privk:0x7fd88490c820::7fd88490c820  e5 e5 e5 e5                                      ....
           /* TID 0x2209 */
  5272 ms  0x2209 PR_Close()
  5272 ms  0x2209 fd:0x7fd884c756a0
           /* TID 0x2201 */
  5274 ms  0x2201 PK11_Encrypt()
  5274 ms  0x2201 symkey:0x7fd8849de780
  5275 ms  0x2201 PK11_DeriveWithFlags()
  5275 ms  0x2201 basekey:0x7fd884c7a480
  5275 ms     | 0x2201 PK11_DeriveWithTemplate()
  5275 ms  0x2201 ret:0x7fd8849de200
  5275 ms  0x2201 PK11_DeriveWithFlags()
  5275 ms  0x2201 basekey:0x7fd884c7a480
  5275 ms     | 0x2201 PK11_DeriveWithTemplate()
  5275 ms  0x2201 ret:0x7fd8849de200
  5275 ms  0x2201 PR_Close()
  5275 ms  0x2201 fd:0x7fd884a83eb0
  5275 ms     | 0x2201 PK11_Encrypt()
  5275 ms     | 0x2201 symkey:0x7fd8849de880
           /* TID 0x2209 */
  5277 ms  0x2209 PR_Close()
  5277 ms  0x2209 fd:0x7fd884a83d60
  5277 ms  0x2209 PR_Close()
  5277 ms  0x2209 fd:0x7fd884a83d60
  5278 ms  0x2209 PR_Close()
  5278 ms  0x2209 fd:0x7fd884a83d60
  5279 ms  0x2209 PR_Close()
  5279 ms  0x2209 fd:0x7fd884a83d60
  5280 ms  0x2209 PR_Close()
  5280 ms  0x2209 fd:0x7fd884a83d60
  5286 ms  0x2209 PR_Close()
  5286 ms  0x2209 fd:0x7fd884a83d60
  5287 ms  0x2209 PR_Close()
  5287 ms  0x2209 fd:0x7fd884a83d60
           /* TID 0x2201 */
  5291 ms  0x2201 PK11_DeriveWithFlags()
  5291 ms  0x2201 basekey:0x7fd884a1af00
  5291 ms     | 0x2201 PK11_DeriveWithTemplate()
  5291 ms  0x2201 ret:0x7fd8a0a81f00
  5292 ms  0x2201 PK11_DeriveWithFlags()
  5292 ms  0x2201 basekey:0x7fd884a1af00
  5292 ms     | 0x2201 PK11_DeriveWithTemplate()
  5292 ms  0x2201 ret:0x7fd8a0a81f00
  5292 ms  0x2201 PR_Close()
  5292 ms  0x2201 fd:0x7fd884c75460
  5292 ms     | 0x2201 PK11_Encrypt()
  5292 ms     | 0x2201 symkey:0x7fd8849de780
           /* TID 0x2209 */
  5326 ms  0x2209 PR_Close()
  5326 ms  0x2209 fd:0x7fd884a83ee0
           /* TID 0x2201 */
  5332 ms  0x2201 PK11_Encrypt()
  5332 ms  0x2201 symkey:0x7fd884a1aa80
           /* TID 0x2209 */
  5358 ms  0x2209 PR_Close()
  5358 ms  0x2209 fd:0x7fd884a83e20
           /* TID 0x2201 */
  5377 ms  0x2201 SSL_ImportFD()
  5377 ms  0x2201 ret:0x7fd884c75400
  5377 ms  0x2201 SSL_AuthCertificateHook()
  5377 ms  0x2201 fd:0x7fd884c75400
  5377 ms  0x2201 ret:0x0
  5377 ms  0x2201 PR_Connect()
  5377 ms  0x2201 fd:0x7fd884c75400
  5378 ms  0x2201 SSL_ImportFD()
  5378 ms  0x2201 ret:0x7fd884c759a0
  5378 ms  0x2201 SSL_AuthCertificateHook()
  5378 ms  0x2201 fd:0x7fd884c759a0
  5378 ms  0x2201 ret:0x0
  5379 ms  0x2201 PR_Connect()
  5379 ms  0x2201 fd:0x7fd884c759a0
  5394 ms  0x2201 PK11_Encrypt()
  5394 ms  0x2201 symkey:0x7fd884a1aa80
  5397 ms  0x2201 PK11_Encrypt()
  5397 ms  0x2201 symkey:0x7fd884a1aa80
  5404 ms  0x2201 SECKEY_CreateECPrivateKey()
  5404 ms  0x2201 cx:0x7fd895a0ac48
  5404 ms     | 0x2201 EC_ValidatePublicKey()
  5404 ms     | 0x2201 ret:0x0
  5404 ms  0x2201 ret:0x7fd88490b020::7fd88490b020  d0 fd af 84                                      ....
  5404 ms  0x2201 SECKEY_CreateECPrivateKey()
  5404 ms  0x2201 cx:0x7fd895a0ac48
  5405 ms     | 0x2201 EC_ValidatePublicKey()
  5406 ms     | 0x2201 ret:0x0
  5406 ms  0x2201 ret:0x7fd88490d020::7fd88490d020  b0 ff af 84                                      ....
           /* TID 0x2209 */
  5423 ms  0x2209 PR_Close()
  5423 ms  0x2209 fd:0x7fd884c75d30
           /* TID 0x2201 */
  5432 ms  0x2201 PK11_Derive()
  5432 ms  0x2201 basekey:0x7fd884c7ab80
  5432 ms     | 0x2201 PK11_DeriveWithTemplate()
  5432 ms  0x2201 ret:0x7fd8849de800
  5432 ms  0x2201 PK11_PubDeriveWithKDF()
  5432 ms  0x2201 seckey:0x7fd88490b020
  5432 ms     | 0x2201 EC_ValidatePublicKey()
  5432 ms     | 0x2201 ret:0x0
  5433 ms  0x2201 ret:0x7fd884c7ab80
  5433 ms  SECKEY_ECParamsToKeySize()
  5433 ms  0x2201 ret:0xff
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd8849de800
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd8849de300
  5433 ms  0x2201 PK11_Derive()
  5433 ms  0x2201 basekey:0x7fd884c7ab80
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd884a1af00
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd884a1af00
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd8849de800
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd884a1af00
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd884c7ab80
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd884a1af00
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd8849de300
  5433 ms  0x2201 PK11_Derive()
  5433 ms  0x2201 basekey:0x7fd884a1ae00
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd8849de780
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd884c7ab80
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd884a1af00
  5433 ms  0x2201 PK11_DeriveWithFlags()
  5433 ms  0x2201 basekey:0x7fd884c7ab80
  5433 ms     | 0x2201 PK11_DeriveWithTemplate()
  5433 ms  0x2201 ret:0x7fd8849de300
           /* TID 0x225d */
  5434 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5434 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5434 ms  SECKEY_ECParamsToKeySize()
  5434 ms  0x2201 ret:0x100
  5434 ms  SECKEY_ECParamsToBasePointOrderLen()
  5434 ms  0x2201 ret:0x100
  5434 ms  SECKEY_ECParamsToBasePointOrderLen()
  5434 ms  0x2201 ret:0x100
  5434 ms  0x2201 EC_ValidatePublicKey()
  5436 ms  0x2201 ret:0x0
  5438 ms  0x2201 PK11_DeriveWithFlags()
  5438 ms  0x2201 basekey:0x7fd884c7ab80
  5438 ms     | 0x2201 PK11_DeriveWithTemplate()
  5438 ms  0x2201 ret:0x7fd8849de300
  5438 ms  0x2201 SSL_AuthCertificateComplete()
  5438 ms  0x2201 fd:0x7fd884c759a0
  5438 ms  0x2201 err:0x0
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de780
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd8849de300
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de780
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd884a1ae00
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de780
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd8a0a81f00
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de800
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd8849de900
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de800
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd884c7b780
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd884a1ae00
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd884c7b780
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd884a1ae00
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd884c7a480
  5438 ms     | 0x2201 PK11_DeriveWithFlags()
  5438 ms     | 0x2201 basekey:0x7fd8849de800
  5438 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5438 ms     | 0x2201 ret:0x7fd884a1af00
  5438 ms     | 0x2201 PK11_Encrypt()
  5438 ms     | 0x2201 symkey:0x7fd8849de900
  5441 ms     | 0x2201 PK11_DeriveWithFlags()
  5441 ms     | 0x2201 basekey:0x7fd8849de300
  5441 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5441 ms     | 0x2201 ret:0x7fd884a1af00
  5441 ms     | 0x2201 PK11_DeriveWithFlags()
  5441 ms     | 0x2201 basekey:0x7fd8849de300
  5441 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5441 ms     | 0x2201 ret:0x7fd884c7a480
  5441 ms     | 0x2201 PK11_DeriveWithFlags()
  5441 ms     | 0x2201 basekey:0x7fd8849de780
  5441 ms     |    | 0x2201 PK11_DeriveWithTemplate()
  5441 ms     | 0x2201 ret:0x7fd8849de900
  5441 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5441 ms     | 0x2201 privk:0x7fd88490d020::7fd88490d020  b0 ff af 84                                      ....
  5441 ms     | 0x2201 privk:0x7fd88490d020::7fd88490d020  e5 e5 e5 e5                                      ....
  5441 ms     | 0x2201 SECKEY_DestroyPrivateKey()
  5441 ms     | 0x2201 privk:0x7fd88490b020::7fd88490b020  d0 fd af 84                                      ....
  5441 ms     | 0x2201 privk:0x7fd88490b020::7fd88490b020  e5 e5 e5 e5                                      ....
  5444 ms  0x2201 PK11_Encrypt()
  5444 ms  0x2201 symkey:0x7fd884a1af00
  5444 ms  0x2201 PK11_Encrypt()
  5444 ms  0x2201 symkey:0x7fd884a1af00
           /* TID 0x2209 */
  5451 ms  0x2209 PR_Close()
  5451 ms  0x2209 fd:0x7fd884c80160
           /* TID 0x2201 */
  5463 ms  0x2201 PK11_DeriveWithFlags()
  5463 ms  0x2201 basekey:0x7fd8849de900
  5463 ms     | 0x2201 PK11_DeriveWithTemplate()
  5463 ms  0x2201 ret:0x7fd884c7ab80
  5463 ms  0x2201 PK11_DeriveWithFlags()
  5463 ms  0x2201 basekey:0x7fd8849de900
  5463 ms     | 0x2201 PK11_DeriveWithTemplate()
  5463 ms  0x2201 ret:0x7fd884c7ab80
  5464 ms  0x2201 PK11_Encrypt()
  5464 ms  0x2201 symkey:0x7fd884a1af00
  5511 ms  0x2201 SECKEY_CreateECPrivateKey()
  5511 ms  0x2201 cx:0x7fd895a0a428
  5512 ms     | 0x2201 EC_ValidatePublicKey()
  5512 ms     | 0x2201 ret:0x0
  5512 ms  0x2201 ret:0x7fd88490c020::7fd88490c020  e0 fc af 84                                      ....
  5512 ms  0x2201 SECKEY_CreateECPrivateKey()
  5512 ms  0x2201 cx:0x7fd895a0a428
  5512 ms     | 0x2201 EC_ValidatePublicKey()
  5514 ms     | 0x2201 ret:0x0
  5514 ms  0x2201 ret:0x7fd884912020::7fd884912020  60 ff af 84                                      `...
  5608 ms  0x2201 PK11_Encrypt()
  5608 ms  0x2201 symkey:0x7fd884c9bf00
  5610 ms  0x2201 PK11_Encrypt()
  5610 ms  0x2201 symkey:0x7fd884c9c680
  5611 ms  0x2201 PK11_Encrypt()
  5611 ms  0x2201 symkey:0x7fd884c9c680
  5612 ms  0x2201 PK11_Encrypt()
  5612 ms  0x2201 symkey:0x7fd884c9c680
  5614 ms  0x2201 PK11_Encrypt()
  5614 ms  0x2201 symkey:0x7fd884c9c680
  5615 ms  0x2201 PK11_Encrypt()
  5615 ms  0x2201 symkey:0x7fd884c9c680
  5616 ms  0x2201 PK11_Encrypt()
  5616 ms  0x2201 symkey:0x7fd884c9c680
  5617 ms  0x2201 PK11_Encrypt()
  5617 ms  0x2201 symkey:0x7fd884c9c680
  5619 ms  0x2201 PK11_Encrypt()
  5619 ms  0x2201 symkey:0x7fd884c9c680
  5628 ms  0x2201 PK11_Encrypt()
  5628 ms  0x2201 symkey:0x7fd884c9c680
  5633 ms  0x2201 PK11_Encrypt()
  5633 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5634 ms  0x2209 PR_Close()
  5634 ms  0x2209 fd:0x7fd884c809d0
           /* TID 0x2201 */
  5636 ms  0x2201 PK11_Encrypt()
  5636 ms  0x2201 symkey:0x7fd884c9c680
  5637 ms  0x2201 PK11_Encrypt()
  5637 ms  0x2201 symkey:0x7fd884c9c680
  5638 ms  0x2201 PK11_Encrypt()
  5638 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5640 ms  0x2209 PR_Close()
  5640 ms  0x2209 fd:0x7fd884c80b80
           /* TID 0x2201 */
  5651 ms  SECKEY_ECParamsToKeySize()
  5651 ms  0x2201 ret:0x100
  5651 ms  0x2201 SECKEY_CreateECPrivateKey()
  5651 ms  0x2201 cx:0x7fd895a0a428
  5651 ms     | 0x2201 EC_ValidatePublicKey()
  5653 ms     | 0x2201 ret:0x0
  5653 ms  0x2201 ret:0x7fd895a90820::7fd895a90820  90 e7 c7 84                                      ....
  5653 ms  0x2201 PK11_PubDeriveWithKDF()
  5653 ms  0x2201 seckey:0x7fd895a90820
  5653 ms     | 0x2201 EC_ValidatePublicKey()
  5654 ms     | 0x2201 ret:0x0
  5656 ms  0x2201 ret:0x7fd884c7ab80
  5656 ms  0x2201 PK11_DeriveWithFlags()
  5656 ms  0x2201 basekey:0x7fd884c7ab80
  5656 ms     | 0x2201 PK11_DeriveWithTemplate()
  5656 ms  0x2201 ret:0x7fd8849de800
  5656 ms  0x2201 PK11_Derive()
  5656 ms  0x2201 basekey:0x7fd8849de800
  5656 ms     | 0x2201 PK11_DeriveWithTemplate()
  5656 ms  0x2201 ret:0x7fd8849de780
  5656 ms  0x2201 SECKEY_DestroyPrivateKey()
  5656 ms  0x2201 privk:0x7fd895a90820::7fd895a90820  90 e7 c7 84                                      ....
  5656 ms  0x2201 privk:0x7fd895a90820::7fd895a90820  e5 e5 e5 e5                                      ....
  5656 ms  0x2201 PK11_Encrypt()
  5656 ms  0x2201 symkey:0x7fd884934280
           /* TID 0x225d */
  5657 ms  0x225d _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5657 ms  0x225d ret:0x0
           /* TID 0x2201 */
  5662 ms  0x2201 SSL_AuthCertificateComplete()
  5662 ms  0x2201 fd:0x7fd884c75400
  5662 ms  0x2201 err:0x0
  5662 ms  0x2201 PK11_Encrypt()
  5662 ms  0x2201 symkey:0x7fd884934280
  5667 ms  0x2201 PK11_Encrypt()
  5667 ms  0x2201 symkey:0x7fd884934280
           /* TID 0x2209 */
  5669 ms  0x2209 PR_Close()
  5669 ms  0x2209 fd:0x7fd884c80ac0
  5670 ms  0x2209 PR_Close()
  5670 ms  0x2209 fd:0x7fd884c80ac0
  5671 ms  0x2209 PR_Close()
  5671 ms  0x2209 fd:0x7fd884c80ac0
  5672 ms  0x2209 PR_Close()
  5672 ms  0x2209 fd:0x7fd884c80ac0
  5673 ms  0x2209 PR_Close()
  5673 ms  0x2209 fd:0x7fd884c80ac0
  5677 ms  0x2209 PR_Close()
  5677 ms  0x2209 fd:0x7fd884c80ac0
  5678 ms  0x2209 PR_Close()
  5678 ms  0x2209 fd:0x7fd884c80ac0
  5679 ms  0x2209 PR_Close()
  5679 ms  0x2209 fd:0x7fd884c80ac0
  5680 ms  0x2209 PR_Close()
  5680 ms  0x2209 fd:0x7fd884c80ac0
  5682 ms  0x2209 PR_Close()
  5682 ms  0x2209 fd:0x7fd884c80ac0
  5684 ms  0x2209 PR_Close()
  5684 ms  0x2209 fd:0x7fd884c80d60
  5693 ms  0x2209 PR_Close()
  5693 ms  0x2209 fd:0x7fd884c80ac0
           /* TID 0x2201 */
  5729 ms  0x2201 PK11_Encrypt()
  5729 ms  0x2201 symkey:0x7fd884c9bf00
  5730 ms  0x2201 PK11_Encrypt()
  5730 ms  0x2201 symkey:0x7fd884c9bf00
  5733 ms  0x2201 PK11_Encrypt()
  5733 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5762 ms  0x2209 PR_Close()
  5762 ms  0x2209 fd:0x7fd884c75d30
           /* TID 0x2201 */
  5763 ms  0x2201 PK11_Encrypt()
  5763 ms  0x2201 symkey:0x7fd884c9c680
  5763 ms  0x2201 PK11_Encrypt()
  5763 ms  0x2201 symkey:0x7fd884c9c680
  5791 ms  0x2201 SECKEY_DestroyPrivateKey()
  5791 ms  0x2201 privk:0x7fd884912020::7fd884912020  60 ff af 84                                      `...
  5791 ms  0x2201 privk:0x7fd884912020::7fd884912020  e5 e5 e5 e5                                      ....
  5791 ms  0x2201 SECKEY_DestroyPrivateKey()
  5791 ms  0x2201 privk:0x7fd88490c020::7fd88490c020  e0 fc af 84                                      ....
  5791 ms  0x2201 privk:0x7fd88490c020::7fd88490c020  e5 e5 e5 e5                                      ....
  5791 ms  0x2201 PK11_Encrypt()
  5791 ms  0x2201 symkey:0x7fd884934280
           /* TID 0x2209 */
  5792 ms  0x2209 PR_Close()
  5792 ms  0x2209 fd:0x7fd884c75cd0
           /* TID 0x2201 */
  5800 ms  0x2201 PK11_Encrypt()
  5800 ms  0x2201 symkey:0x7fd884c9c680
  5801 ms  0x2201 PK11_Encrypt()
  5801 ms  0x2201 symkey:0x7fd884c9c680
  5803 ms  0x2201 PK11_Encrypt()
  5803 ms  0x2201 symkey:0x7fd884c9c680
  5804 ms  0x2201 PK11_Encrypt()
  5804 ms  0x2201 symkey:0x7fd884c9c680
  5805 ms  0x2201 PK11_Encrypt()
  5805 ms  0x2201 symkey:0x7fd884c9c680
  5806 ms  0x2201 PK11_Encrypt()
  5806 ms  0x2201 symkey:0x7fd884c9c680
  5806 ms  0x2201 PK11_Encrypt()
  5806 ms  0x2201 symkey:0x7fd884c9c680
  5808 ms  0x2201 PK11_Encrypt()
  5808 ms  0x2201 symkey:0x7fd884c9c680
  5808 ms  0x2201 PK11_Encrypt()
  5808 ms  0x2201 symkey:0x7fd884c9c680
  5809 ms  0x2201 PK11_Encrypt()
  5809 ms  0x2201 symkey:0x7fd884c9c680
  5810 ms  0x2201 PK11_Encrypt()
  5810 ms  0x2201 symkey:0x7fd884c9c680
  5812 ms  0x2201 PK11_Encrypt()
  5812 ms  0x2201 symkey:0x7fd884c9c680
  5813 ms  0x2201 PK11_Encrypt()
  5813 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5822 ms  0x2209 PR_Close()
  5822 ms  0x2209 fd:0x7fd884cd2ac0
  5856 ms  0x2209 PR_Close()
  5856 ms  0x2209 fd:0x7fd884c80910
  5858 ms  0x2209 PR_Close()
  5858 ms  0x2209 fd:0x7fd884c80910
  5859 ms  0x2209 PR_Close()
  5859 ms  0x2209 fd:0x7fd884c80910
  5866 ms  0x2209 PR_Close()
  5866 ms  0x2209 fd:0x7fd884c80910
  5872 ms  0x2209 PR_Close()
  5872 ms  0x2209 fd:0x7fd884c80910
  5889 ms  0x2209 PR_Close()
  5889 ms  0x2209 fd:0x7fd884c80910
  5901 ms  0x2209 PR_Close()
  5901 ms  0x2209 fd:0x7fd895a5a250
           /* TID 0x2201 */
  5902 ms  0x2201 PK11_Encrypt()
  5902 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5914 ms  0x2209 PR_Close()
  5914 ms  0x2209 fd:0x7fd895a5a7f0
           /* TID 0x2201 */
  5916 ms  0x2201 PK11_Encrypt()
  5916 ms  0x2201 symkey:0x7fd884c9c680
  5916 ms  0x2201 PK11_Encrypt()
  5916 ms  0x2201 symkey:0x7fd884c9c680
  5917 ms  0x2201 PK11_Encrypt()
  5917 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5919 ms  0x2209 PR_Close()
  5919 ms  0x2209 fd:0x7fd895a5a2e0
  5919 ms  0x2209 PR_Close()
  5919 ms  0x2209 fd:0x7fd895a5a2b0
           /* TID 0x2201 */
  5921 ms  0x2201 PK11_Encrypt()
  5921 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5921 ms  0x2209 PR_Close()
  5921 ms  0x2209 fd:0x7fd895a5a2b0
           /* TID 0x2201 */
  5922 ms  0x2201 PK11_Encrypt()
  5922 ms  0x2201 symkey:0x7fd884c9c680
  5922 ms  0x2201 PK11_Encrypt()
  5922 ms  0x2201 symkey:0x7fd884c9c680
  5922 ms  0x2201 PK11_Encrypt()
  5922 ms  0x2201 symkey:0x7fd884c9c680
  5922 ms  0x2201 PK11_Encrypt()
  5922 ms  0x2201 symkey:0x7fd884c9c680
  5922 ms  0x2201 PK11_Encrypt()
  5922 ms  0x2201 symkey:0x7fd884c9c680
  5923 ms  0x2201 PK11_Encrypt()
  5923 ms  0x2201 symkey:0x7fd884c9c680
  5924 ms  0x2201 PK11_Encrypt()
  5924 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5930 ms  0x2209 PR_Close()
  5930 ms  0x2209 fd:0x7fd895a5aa30
  5930 ms  0x2209 PR_Close()
  5930 ms  0x2209 fd:0x7fd895a5a100
  5956 ms  0x2209 PR_Close()
  5956 ms  0x2209 fd:0x7fd895a5a100
           /* TID 0x2201 */
  5956 ms  0x2201 PK11_Encrypt()
  5956 ms  0x2201 symkey:0x7fd884c9c680
           /* TID 0x2209 */
  5960 ms  0x2209 PR_Close()
  5960 ms  0x2209 fd:0x7fd884c80910
  5960 ms  0x2209 PR_Close()
  5960 ms  0x2209 fd:0x7fd884c80910
  5961 ms  0x2209 PR_Close()
  5961 ms  0x2209 fd:0x7fd884c755e0
  5962 ms  0x2209 PR_Close()
  5962 ms  0x2209 fd:0x7fd884c755e0
  5963 ms  0x2209 PR_Close()
  5963 ms  0x2209 fd:0x7fd884c755e0
  5966 ms  0x2209 PR_Close()
  5966 ms  0x2209 fd:0x7fd884c755e0
  5968 ms  0x2209 PR_Close()
  5968 ms  0x2209 fd:0x7fd884c755e0
  5969 ms  0x2209 PR_Close()
  5969 ms  0x2209 fd:0x7fd884c755e0
  5970 ms  0x2209 PR_Close()
  5970 ms  0x2209 fd:0x7fd884c755e0
  5971 ms  0x2209 PR_Close()
  5971 ms  0x2209 fd:0x7fd884c755e0
  5974 ms  0x2209 PR_Close()
  5974 ms  0x2209 fd:0x7fd884c755e0
  5975 ms  0x2209 PR_Close()
  5975 ms  0x2209 fd:0x7fd884c755e0
  5988 ms  0x2209 PR_Close()
  5988 ms  0x2209 fd:0x7fd884a83d60
           /* TID 0x2201 */
  6039 ms  0x2201 PR_Close()
  6039 ms  0x2201 fd:0x7fd896a81d90
           /* TID 0x21f6 */
  6044 ms  0x21f6 EC_ValidatePublicKey()
  6045 ms  0x21f6 ret:0x0
  6045 ms  0x21f6 EC_ValidatePublicKey()
  6047 ms  0x21f6 ret:0x0
  6047 ms  0x21f6 EC_ValidatePublicKey()
  6048 ms  0x21f6 ret:0x0
  6048 ms  0x21f6 EC_ValidatePublicKey()
  6050 ms  0x21f6 ret:0x0
  6050 ms  0x21f6 EC_ValidatePublicKey()
  6056 ms  0x21f6 ret:0x0
  6056 ms  0x21f6 EC_ValidatePublicKey()
  6057 ms  0x21f6 ret:0x0
  6057 ms  0x21f6 EC_ValidatePublicKey()
  6059 ms  0x21f6 ret:0x0
  6059 ms  0x21f6 EC_ValidatePublicKey()
  6060 ms  0x21f6 ret:0x0
  6060 ms  0x21f6 EC_ValidatePublicKey()
  6068 ms  0x21f6 ret:0x0
  6068 ms  0x21f6 EC_ValidatePublicKey()
  6070 ms  0x21f6 ret:0x0
           /* TID 0x2201 */
  6073 ms  0x2201 PK11_Encrypt()
  6073 ms  0x2201 symkey:0x7fd884934280
  6073 ms  0x2201 PK11_Encrypt()
  6073 ms  0x2201 symkey:0x7fd884c9bf00
  6074 ms  0x2201 PK11_Encrypt()
  6074 ms  0x2201 symkey:0x7fd884a1af00
  6074 ms  0x2201 PK11_Encrypt()
  6074 ms  0x2201 symkey:0x7fd884a1aa80
  6074 ms  0x2201 PK11_Encrypt()
  6074 ms  0x2201 symkey:0x7fd884c9c680
  6074 ms  0x2201 PR_Close()
  6074 ms  0x2201 fd:0x7fd8959ff1c0
  6074 ms     | 0x2201 PK11_Encrypt()
  6074 ms     | 0x2201 symkey:0x7fd8959fdb00
  6074 ms  0x2201 PR_Close()
  6074 ms  0x2201 fd:0x7fd8a4fe0e50
  6074 ms  0x2201 PR_Close()
  6074 ms  0x2201 fd:0x7fd8a4fe03d0
  6074 ms     | 0x2201 PK11_Encrypt()
  6074 ms     | 0x2201 symkey:0x7fd8959fcd80
  6075 ms  0x2201 PR_Close()
  6075 ms  0x2201 fd:0x7fd896a81160
  6075 ms  0x2201 PR_Close()
  6075 ms  0x2201 fd:0x7fd8962fbaf0
  6075 ms     | 0x2201 PK11_Encrypt()
  6075 ms     | 0x2201 symkey:0x7fd89788ef80
  6075 ms  0x2201 PR_Close()
  6075 ms  0x2201 fd:0x7fd8982c44f0
  6075 ms     | 0x2201 PK11_Encrypt()
  6075 ms     | 0x2201 symkey:0x7fd89aa7ca80
  6075 ms  0x2201 PR_Close()
  6075 ms  0x2201 fd:0x7fd884c80b50
  6075 ms     | 0x2201 PK11_Encrypt()
  6075 ms     | 0x2201 symkey:0x7fd884a1aa80
  6076 ms  0x2201 PR_Close()
  6076 ms  0x2201 fd:0x7fd884c98820
  6076 ms     | 0x2201 PK11_Encrypt()
  6076 ms     | 0x2201 symkey:0x7fd884c9bf00
  6076 ms  0x2201 PR_Close()
  6076 ms  0x2201 fd:0x7fd884c75400
  6076 ms     | 0x2201 PK11_Encrypt()
  6076 ms     | 0x2201 symkey:0x7fd884934280
  6076 ms  0x2201 PR_Close()
  6076 ms  0x2201 fd:0x7fd884c759a0
  6076 ms     | 0x2201 PK11_Encrypt()
  6076 ms     | 0x2201 symkey:0x7fd884a1af00
  6076 ms  0x2201 PR_Close()
  6076 ms  0x2201 fd:0x7fd884c80a00
  6076 ms     | 0x2201 PK11_Encrypt()
  6076 ms     | 0x2201 symkey:0x7fd884c9c680
           /* TID 0x2252 */
  6078 ms  0x2252 PR_Close()
  6078 ms  0x2252 fd:0x7fd884a83dc0
  6078 ms  0x2252 PR_Close()
  6078 ms  0x2252 fd:0x7fd884a83dc0
           /* TID 0x21f6 */
  6103 ms  0x21f6 PR_Close()
  6103 ms  0x21f6 fd:0x7fd89703c520
  6103 ms  0x21f6 PR_Close()
  6103 ms  0x21f6 fd:0x7fd884c987f0
  6104 ms  0x21f6 PR_Close()
  6104 ms  0x21f6 fd:0x7fd884c988b0
  6104 ms  0x21f6 PR_Close()
  6104 ms  0x21f6 fd:0x7fd884c987f0
  6105 ms  0x21f6 PR_Close()
  6105 ms  0x21f6 fd:0x7fd884c988b0
  6105 ms  0x21f6 PR_Close()
  6105 ms  0x21f6 fd:0x7fd884c987f0
           /* TID 0x2267 */
  6109 ms  0x2267 PR_Close()
  6109 ms  0x2267 fd:0x7fd884c98970
           /* TID 0x21f6 */
  6137 ms  0x21f6 PR_Close()
  6137 ms  0x21f6 fd:0x7fd884c988b0
  6137 ms  0x21f6 PR_Close()
  6137 ms  0x21f6 fd:0x7fd895a5a8e0
  6138 ms  0x21f6 PR_Close()
  6138 ms  0x21f6 fd:0x7fd884c988b0
  6138 ms  0x21f6 PR_Close()
  6138 ms  0x21f6 fd:0x7fd895a5a8e0
  6138 ms  0x21f6 PR_Close()
  6138 ms  0x21f6 fd:0x7fd8a0dc89a0
  6138 ms  0x21f6 PR_Close()
  6138 ms  0x21f6 fd:0x7fd8a0dc88b0
  6138 ms  0x21f6 PR_Close()
  6138 ms  0x21f6 fd:0x7fd8a0dc8a60
  6140 ms  0x21f6 PR_Close()
  6140 ms  0x21f6 fd:0x7fd895a5a8e0
  6143 ms  0x21f6 PR_Close()
  6143 ms  0x21f6 fd:0x7fd895a5a8e0
  6146 ms  0x21f6 PR_Close()
  6146 ms  0x21f6 fd:0x7fd884c988b0
  6147 ms  0x21f6 PR_Close()
  6147 ms  0x21f6 fd:0x7fd895a5aaf0
  6147 ms  0x21f6 PR_Close()
  6147 ms  0x21f6 fd:0x7fd884c988b0
  6147 ms  0x21f6 PR_Close()
  6147 ms  0x21f6 fd:0x7fd895a5aaf0
  6151 ms  0x21f6 PR_Close()
  6151 ms  0x21f6 fd:0x7fd895a5ab20
  6152 ms  0x21f6 PR_Close()
  6152 ms  0x21f6 fd:0x7fd895a5ab20
  6164 ms  0x21f6 PR_Close()
  6164 ms  0x21f6 fd:0x7fd884c988b0
  6164 ms  0x21f6 PR_Close()
  6164 ms  0x21f6 fd:0x7fd895a5abb0
  6165 ms  0x21f6 PR_Close()
  6165 ms  0x21f6 fd:0x7fd884c988b0
  6165 ms  0x21f6 PR_Close()
  6165 ms  0x21f6 fd:0x7fd895a5abb0
  6167 ms  0x21f6 PR_Close()
  6167 ms  0x21f6 fd:0x7fd895a5abe0
  6168 ms  0x21f6 PR_Close()
  6168 ms  0x21f6 fd:0x7fd895a5abe0
  6174 ms  0x21f6 PR_Close()
  6174 ms  0x21f6 fd:0x7fd895a5adc0
  6175 ms  0x21f6 PR_Close()
  6175 ms  0x21f6 fd:0x7fd895a5adc0
  6177 ms  0x21f6 PR_Close()
  6177 ms  0x21f6 fd:0x7fd895a5adf0
           /* TID 0x2267 */
  6193 ms  0x2267 PR_Close()
  6193 ms  0x2267 fd:0x7fd884c80220
           /* TID 0x21f6 */
  6194 ms  0x21f6 PR_Close()
  6194 ms  0x21f6 fd:0x7fd884c988b0
  6194 ms  0x21f6 PR_Close()
  6194 ms  0x21f6 fd:0x7fd884c80f70
           /* TID 0x229e */
  6210 ms  0x229e PR_Close()
  6210 ms  0x229e fd:0x7fd896a2eb80
  6235 ms  0x229e PR_Close()
  6235 ms  0x229e fd:0x7fd884a83130
           /* TID 0x21fb */
  6241 ms  0x21fb PR_Close()
  6241 ms  0x21fb fd:0x7fd89fd98a60
           /* TID 0x2267 */
  6242 ms  0x2267 PR_Close()
  6242 ms  0x2267 fd:0x7fd884c80220
           /* TID 0x229e */
  6251 ms  0x229e PR_Close()
  6251 ms  0x229e fd:0x7fd884a831c0
           /* TID 0x21fb */
  6257 ms  0x21fb PR_Close()
  6257 ms  0x21fb fd:0x7fd89c048790
           /* TID 0x2201 */
  6260 ms  0x2201 PR_Close()
  6260 ms  0x2201 fd:0x7fd8962fb2e0
           /* TID 0x2252 */
  6261 ms  0x2252 PR_Close()
  6261 ms  0x2252 fd:0x7fd8959fff10
  6261 ms  0x2252 PR_Close()
  6261 ms  0x2252 fd:0x7fd8959fff10
  6261 ms  0x2252 PR_Close()
  6261 ms  0x2252 fd:0x7fd8959fff10
  6261 ms  0x2252 PR_Close()
  6261 ms  0x2252 fd:0x7fd8959fff40
           /* TID 0x229e */
  6262 ms  0x229e PR_Close()
  6262 ms  0x229e fd:0x7fd8959fff40
           /* TID 0x2209 */
  6265 ms  0x2209 PR_Close()
  6265 ms  0x2209 fd:0x7fd896a81f70
  6265 ms  0x2209 PR_Close()
  6265 ms  0x2209 fd:0x7fd896a81fa0
           /* TID 0x21fb */
  6272 ms  0x21fb PR_Close()
  6272 ms  0x21fb fd:0x7fd896a81340
           /* TID 0x21f6 */
  6274 ms  0x21f6 PR_Close()
  6274 ms  0x21f6 fd:0x7fd884c98670
  6274 ms  0x21f6 PR_Close()
  6274 ms  0x21f6 fd:0x7fd895dc8790
           /* TID 0x229e */
  6276 ms  0x229e PR_Close()
  6276 ms  0x229e fd:0x7fd895dc8850
  6278 ms  0x229e PR_Close()
  6278 ms  0x229e fd:0x7fd895dc81f0
  6305 ms  0x229e PR_Close()
  6305 ms  0x229e fd:0x7fd884c75310
  6306 ms  0x229e PR_Close()
  6306 ms  0x229e fd:0x7fd884c75310
  6318 ms  0x229e PR_Close()
  6318 ms  0x229e fd:0x7fd884c75550
  6319 ms  0x229e PR_Close()
  6319 ms  0x229e fd:0x7fd884c75580
  6327 ms  0x229e PR_Close()
  6327 ms  0x229e fd:0x7fd884c75b20
  6331 ms  0x229e PR_Close()
  6331 ms  0x229e fd:0x7fd884c80970
  6337 ms  0x229e PR_Close()
  6337 ms  0x229e fd:0x7fd884c98700
  6346 ms  0x229e PR_Close()
  6346 ms  0x229e fd:0x7fd884c98eb0
  6357 ms  0x229e PR_Close()
  6357 ms  0x229e fd:0x7fd884c98eb0
           /* TID 0x21f6 */
  6519 ms  0x21f6 PR_Close()
  6519 ms  0x21f6 fd:0x7fd884c750d0
  6519 ms  0x21f6 PR_Close()
  6519 ms  0x21f6 fd:0x7fd884c750d0
  6531 ms  0x21f6 PR_Close()
  6531 ms  0x21f6 fd:0x7fd8be0da130
  6531 ms  0x21f6 PR_Close()
  6531 ms  0x21f6 fd:0x7fd8be0da190
Process terminated
