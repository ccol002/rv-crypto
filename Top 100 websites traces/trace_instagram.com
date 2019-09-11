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
           /* TID 0x6dfb */
    43 ms  0x6dfb SECKEY_DestroyPrivateKey()
    43 ms  0x6dfb privk:0x7fe1561d9820::7fe1561d9820  90 c7 57 5c                                      ..W\
    43 ms  0x6dfb privk:0x7fe1561d9820::7fe1561d9820  e5 e5 e5 e5                                      ....
    43 ms  0x6dfb SECKEY_DestroyPrivateKey()
    43 ms  0x6dfb privk:0x7fe1561d7820::7fe1561d7820  b0 bf 7b 57                                      ..{W
    43 ms  0x6dfb privk:0x7fe1561d7820::7fe1561d7820  e5 e5 e5 e5                                      ....
           /* TID 0x6e03 */
   266 ms  0x6e03 PR_Close()
   266 ms  0x6e03 fd:0x7fe157ffef10
           /* TID 0x6dfb */
   299 ms  0x6dfb SSL_ImportFD()
   299 ms  0x6dfb ret:0x7fe155d9f3d0
   299 ms  0x6dfb SSL_AuthCertificateHook()
   299 ms  0x6dfb fd:0x7fe155d9f3d0
   299 ms  0x6dfb ret:0x0
   299 ms  0x6dfb PR_Connect()
   299 ms  0x6dfb fd:0x7fe155d9f3d0
   506 ms  0x6dfb SECKEY_CreateECPrivateKey()
   506 ms  0x6dfb cx:0x7fe155d97e28
   507 ms     | 0x6dfb EC_ValidatePublicKey()
   507 ms     | 0x6dfb ret:0x0
   507 ms  0x6dfb ret:0x7fe155f4f820::7fe155f4f820  30 6d fb 55                                      0m.U
   507 ms  0x6dfb SECKEY_CreateECPrivateKey()
   507 ms  0x6dfb cx:0x7fe155d97e28
   509 ms     | 0x6dfb EC_ValidatePublicKey()
   513 ms     | 0x6dfb ret:0x0
   513 ms  0x6dfb ret:0x7fe155f51820::7fe155f51820  10 6f fb 55                                      .o.U
   727 ms  SECKEY_ECParamsToKeySize()
   727 ms  0x6dfb ret:0x100
   727 ms  0x6dfb SECKEY_CreateECPrivateKey()
   727 ms  0x6dfb cx:0x7fe155d97e28
   728 ms     | 0x6dfb EC_ValidatePublicKey()
   729 ms     | 0x6dfb ret:0x0
   729 ms  0x6dfb ret:0x7fe155f5a820::7fe155f5a820  70 99 ff 55                                      p..U
   729 ms  0x6dfb PK11_PubDeriveWithKDF()
   729 ms  0x6dfb seckey:0x7fe155f5a820
   729 ms     | 0x6dfb EC_ValidatePublicKey()
   731 ms     | 0x6dfb ret:0x0
   732 ms  0x6dfb ret:0x7fe157260b80
   732 ms  0x6dfb PK11_DeriveWithFlags()
   732 ms  0x6dfb basekey:0x7fe157260b80
   732 ms     | 0x6dfb PK11_DeriveWithTemplate()
   732 ms  0x6dfb ret:0x7fe155fea980
   732 ms  0x6dfb PK11_Derive()
   732 ms  0x6dfb basekey:0x7fe155fea980
   732 ms     | 0x6dfb PK11_DeriveWithTemplate()
   732 ms  0x6dfb ret:0x7fe155feaa00
   732 ms  0x6dfb SECKEY_DestroyPrivateKey()
   732 ms  0x6dfb privk:0x7fe155f5a820::7fe155f5a820  70 99 ff 55                                      p..U
   732 ms  0x6dfb privk:0x7fe155f5a820::7fe155f5a820  e5 e5 e5 e5                                      ....
   732 ms  0x6dfb PK11_Encrypt()
   732 ms  0x6dfb symkey:0x7fe155feab80
   733 ms  0x6dfb PR_Connect()
   733 ms  0x6dfb fd:0x7fe155d9feb0
           /* TID 0x6e15 */
   778 ms  0x6e15 PR_Close()
   778 ms  0x6e15 fd:0x7fe155d9fdf0
   782 ms  0x6e15 PR_Close()
   782 ms  0x6e15 fd:0x7fe155d9fdf0
   784 ms  0x6e15 PR_Close()
   784 ms  0x6e15 fd:0x7fe155d9fdf0
           /* TID 0x6e03 */
   786 ms  0x6e03 PR_Close()
   786 ms  0x6e03 fd:0x7fe155d9fdf0
           /* TID 0x6e5b */
   786 ms  0x6e5b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   786 ms  0x6e5b ret:0x0
           /* TID 0x6dfb */
   787 ms  0x6dfb SSL_AuthCertificateComplete()
   787 ms  0x6dfb fd:0x7fe155d9f3d0
   787 ms  0x6dfb err:0x0
   787 ms  0x6dfb PK11_Encrypt()
   787 ms  0x6dfb symkey:0x7fe155feab80
   940 ms  0x6dfb SECKEY_DestroyPrivateKey()
   940 ms  0x6dfb privk:0x7fe155f51820::7fe155f51820  10 6f fb 55                                      .o.U
   940 ms  0x6dfb privk:0x7fe155f51820::7fe155f51820  e5 e5 e5 e5                                      ....
   941 ms  0x6dfb SECKEY_DestroyPrivateKey()
   941 ms  0x6dfb privk:0x7fe155f4f820::7fe155f4f820  30 6d fb 55                                      0m.U
   941 ms  0x6dfb privk:0x7fe155f4f820::7fe155f4f820  e5 e5 e5 e5                                      ....
  1206 ms  0x6dfb SSL_ImportFD()
  1207 ms  0x6dfb ret:0x7fe145017100
  1207 ms  0x6dfb SSL_AuthCertificateHook()
  1207 ms  0x6dfb fd:0x7fe145017100
  1207 ms  0x6dfb ret:0x0
  1207 ms  0x6dfb PR_Connect()
  1207 ms  0x6dfb fd:0x7fe145017100
  1233 ms  0x6dfb SECKEY_CreateECPrivateKey()
  1233 ms  0x6dfb cx:0x7fe155ff58c8
  1235 ms     | 0x6dfb EC_ValidatePublicKey()
  1235 ms     | 0x6dfb ret:0x0
  1235 ms  0x6dfb ret:0x7fe155f51020::7fe155f51020  c0 6e fb 55                                      .n.U
  1235 ms  0x6dfb SECKEY_CreateECPrivateKey()
  1235 ms  0x6dfb cx:0x7fe155ff58c8
  1237 ms     | 0x6dfb EC_ValidatePublicKey()
  1241 ms     | 0x6dfb ret:0x0
  1241 ms  0x6dfb ret:0x7fe155f57020::7fe155f57020  40 97 ff 55                                      @..U
           /* TID 0x6e5b */
  1294 ms  0x6e5b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1294 ms  0x6e5b ret:0x0
           /* TID 0x6dfb */
  1295 ms  SECKEY_ECParamsToKeySize()
  1295 ms  0x6dfb ret:0x100
  1295 ms  0x6dfb SECKEY_CreateECPrivateKey()
  1295 ms  0x6dfb cx:0x7fe155ff58c8
  1296 ms     | 0x6dfb EC_ValidatePublicKey()
  1300 ms     | 0x6dfb ret:0x0
  1300 ms  0x6dfb ret:0x7fe155f5a820::7fe155f5a820  10 9a ff 55                                      ...U
  1300 ms  0x6dfb PK11_PubDeriveWithKDF()
  1300 ms  0x6dfb seckey:0x7fe155f5a820
  1300 ms     | 0x6dfb EC_ValidatePublicKey()
  1304 ms     | 0x6dfb ret:0x0
  1308 ms  0x6dfb ret:0x7fe157260b80
  1308 ms  0x6dfb PK11_DeriveWithFlags()
  1308 ms  0x6dfb basekey:0x7fe157260b80
  1308 ms     | 0x6dfb PK11_DeriveWithTemplate()
  1308 ms  0x6dfb ret:0x7fe155feb700
  1308 ms  0x6dfb PK11_Derive()
  1308 ms  0x6dfb basekey:0x7fe155feb700
  1308 ms     | 0x6dfb PK11_DeriveWithTemplate()
  1308 ms  0x6dfb ret:0x7fe155feb780
  1308 ms  0x6dfb SECKEY_DestroyPrivateKey()
  1308 ms  0x6dfb privk:0x7fe155f5a820::7fe155f5a820  10 9a ff 55                                      ...U
  1308 ms  0x6dfb privk:0x7fe155f5a820::7fe155f5a820  e5 e5 e5 e5                                      ....
  1309 ms  0x6dfb PK11_Encrypt()
  1309 ms  0x6dfb symkey:0x7fe155feb900
  1309 ms  0x6dfb SSL_AuthCertificateComplete()
  1309 ms  0x6dfb fd:0x7fe145017100
  1309 ms  0x6dfb err:0x0
  1309 ms  0x6dfb PK11_Encrypt()
  1309 ms  0x6dfb symkey:0x7fe155feb900
  1360 ms  0x6dfb SECKEY_DestroyPrivateKey()
  1360 ms  0x6dfb privk:0x7fe155f57020::7fe155f57020  40 97 ff 55                                      @..U
  1361 ms  0x6dfb privk:0x7fe155f57020::7fe155f57020  e5 e5 e5 e5                                      ....
  1361 ms  0x6dfb SECKEY_DestroyPrivateKey()
  1361 ms  0x6dfb privk:0x7fe155f51020::7fe155f51020  c0 6e fb 55                                      .n.U
  1361 ms  0x6dfb privk:0x7fe155f51020::7fe155f51020  e5 e5 e5 e5                                      ....
  1365 ms  0x6dfb PK11_Encrypt()
  1365 ms  0x6dfb symkey:0x7fe155feb900
  1395 ms  0x6dfb PK11_Encrypt()
  1395 ms  0x6dfb symkey:0x7fe155feb900
  1429 ms  0x6dfb PK11_Encrypt()
  1429 ms  0x6dfb symkey:0x7fe155feb900
  1458 ms  0x6dfb PK11_Encrypt()
  1458 ms  0x6dfb symkey:0x7fe155feb900
  1575 ms  0x6dfb PK11_Encrypt()
  1575 ms  0x6dfb symkey:0x7fe155feb900
  1608 ms  0x6dfb PK11_Encrypt()
  1608 ms  0x6dfb symkey:0x7fe155feb900
  1639 ms  0x6dfb PK11_Encrypt()
  1639 ms  0x6dfb symkey:0x7fe155feb900
           /* TID 0x6e51 */
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017310
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017370
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017310
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017370
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017310
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017370
  1668 ms  0x6e51 PR_Close()
  1668 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017310
  1669 ms  0x6e51 PR_Close()
  1669 ms  0x6e51 fd:0x7fe145017370
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017310
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017370
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017310
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017370
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017310
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017370
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017310
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017370
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017310
  1670 ms  0x6e51 PR_Close()
  1670 ms  0x6e51 fd:0x7fe145017370
  1672 ms  0x6e51 PR_Close()
  1672 ms  0x6e51 fd:0x7fe145017310
  1672 ms  0x6e51 PR_Close()
  1672 ms  0x6e51 fd:0x7fe1450172e0
  1674 ms  0x6e51 PR_Close()
  1674 ms  0x6e51 fd:0x7fe1450172e0
  1674 ms  0x6e51 PR_Close()
  1674 ms  0x6e51 fd:0x7fe145017310
  1675 ms  0x6e51 PR_Close()
  1675 ms  0x6e51 fd:0x7fe145017310
  1675 ms  0x6e51 PR_Close()
  1675 ms  0x6e51 fd:0x7fe145017310
  1677 ms  0x6e51 PR_Close()
  1677 ms  0x6e51 fd:0x7fe145017310
  1677 ms  0x6e51 PR_Close()
  1677 ms  0x6e51 fd:0x7fe145017310
  1710 ms  0x6e51 PR_Close()
  1710 ms  0x6e51 fd:0x7fe145017310
  1711 ms  0x6e51 PR_Close()
  1711 ms  0x6e51 fd:0x7fe145017310
  1718 ms  0x6e51 PR_Close()
  1718 ms  0x6e51 fd:0x7fe145017310
  1719 ms  0x6e51 PR_Close()
  1719 ms  0x6e51 fd:0x7fe145017310
  1725 ms  0x6e51 PR_Close()
  1725 ms  0x6e51 fd:0x7fe145017310
  1726 ms  0x6e51 PR_Close()
  1726 ms  0x6e51 fd:0x7fe145017310
  1727 ms  0x6e51 PR_Close()
  1727 ms  0x6e51 fd:0x7fe145017310
  1728 ms  0x6e51 PR_Close()
  1728 ms  0x6e51 fd:0x7fe145017310
           /* TID 0x6e4e */
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
  1728 ms  0x6e4e PR_Close()
  1728 ms  0x6e4e fd:0x7fe145017310
           /* TID 0x6e15 */
  2231 ms  0x6e15 PR_Close()
  2231 ms  0x6e15 fd:0x7fe145017670
  2234 ms  0x6e15 PR_Close()
  2234 ms  0x6e15 fd:0x7fe145017670
  2803 ms  0x6e15 PR_Close()
  2803 ms  0x6e15 fd:0x7fe145017670
           /* TID 0x6e03 */
  4156 ms  0x6e03 PR_Close()
  4156 ms  0x6e03 fd:0x7fe145017670
  4156 ms  0x6e03 PR_Close()
  4156 ms  0x6e03 fd:0x7fe1450177c0
           /* TID 0x6dfb */
  4515 ms  0x6dfb SSL_ImportFD()
  4515 ms  0x6dfb ret:0x7fe144fe8820
  4515 ms  0x6dfb SSL_AuthCertificateHook()
  4515 ms  0x6dfb fd:0x7fe144fe8820
  4515 ms  0x6dfb ret:0x0
  4516 ms  0x6dfb PR_Connect()
  4516 ms  0x6dfb fd:0x7fe144fe8820
  4552 ms  0x6dfb SECKEY_CreateECPrivateKey()
  4552 ms  0x6dfb cx:0x7fe155ff5c08
  4555 ms     | 0x6dfb EC_ValidatePublicKey()
  4555 ms     | 0x6dfb ret:0x0
  4555 ms  0x6dfb ret:0x7fe15f0ad020::7fe15f0ad020  30 f8 fe 44                                      0..D
  4555 ms  0x6dfb SECKEY_CreateECPrivateKey()
  4555 ms  0x6dfb cx:0x7fe155ff5c08
  4557 ms     | 0x6dfb EC_ValidatePublicKey()
  4562 ms     | 0x6dfb ret:0x0
  4562 ms  0x6dfb ret:0x7fe144e03820::7fe144e03820  b0 fa fe 44                                      ...D
  4602 ms  0x6dfb PK11_Derive()
  4602 ms  0x6dfb basekey:0x7fe157260b80
  4602 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4602 ms  0x6dfb ret:0x7fe144fecc00
  4602 ms  0x6dfb PK11_PubDeriveWithKDF()
  4602 ms  0x6dfb seckey:0x7fe15f0ad020
  4602 ms     | 0x6dfb EC_ValidatePublicKey()
  4602 ms     | 0x6dfb ret:0x0
  4603 ms  0x6dfb ret:0x7fe157260b80
  4604 ms  SECKEY_ECParamsToKeySize()
  4604 ms  0x6dfb ret:0xff
  4604 ms  0x6dfb PK11_DeriveWithFlags()
  4604 ms  0x6dfb basekey:0x7fe144fecc00
  4604 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4604 ms  0x6dfb ret:0x7fe144fecc80
  4604 ms  0x6dfb PK11_Derive()
  4604 ms  0x6dfb basekey:0x7fe157260b80
  4604 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4604 ms  0x6dfb ret:0x7fe144fecd00
  4604 ms  0x6dfb PK11_DeriveWithFlags()
  4604 ms  0x6dfb basekey:0x7fe144fecd00
  4604 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4604 ms  0x6dfb ret:0x7fe144fecc00
  4604 ms  0x6dfb PK11_DeriveWithFlags()
  4604 ms  0x6dfb basekey:0x7fe144fecd00
  4604 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4604 ms  0x6dfb ret:0x7fe157260b80
  4604 ms  0x6dfb PK11_DeriveWithFlags()
  4604 ms  0x6dfb basekey:0x7fe144fecd00
  4604 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4604 ms  0x6dfb ret:0x7fe144fecc80
  4604 ms  0x6dfb PK11_Derive()
  4604 ms  0x6dfb basekey:0x7fe144fecd80
  4605 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4605 ms  0x6dfb ret:0x7fe144fece00
  4605 ms  0x6dfb PK11_DeriveWithFlags()
  4605 ms  0x6dfb basekey:0x7fe157260b80
  4605 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4605 ms  0x6dfb ret:0x7fe144fecd00
  4605 ms  0x6dfb PK11_DeriveWithFlags()
  4605 ms  0x6dfb basekey:0x7fe157260b80
  4605 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4605 ms  0x6dfb ret:0x7fe144fecc80
  4609 ms  0x6dfb PK11_DeriveWithFlags()
  4609 ms  0x6dfb basekey:0x7fe157260b80
  4609 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4609 ms  0x6dfb ret:0x7fe144fecc80
           /* TID 0x6e03 */
  4638 ms  0x6e03 PR_Close()
  4638 ms  0x6e03 fd:0x7fe144fe8640
           /* TID 0x6e5b */
  4639 ms  0x6e5b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4639 ms  0x6e5b ret:0x0
           /* TID 0x6dfb */
  4651 ms  0x6dfb SSL_AuthCertificateComplete()
  4651 ms  0x6dfb fd:0x7fe144fe8820
  4651 ms  0x6dfb err:0x0
  4651 ms     | 0x6dfb PK11_DeriveWithFlags()
  4651 ms     | 0x6dfb basekey:0x7fe144fece00
  4651 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4651 ms     | 0x6dfb ret:0x7fe144fecc80
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fece00
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144fecd80
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fece00
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144fec680
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fecc00
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144fec780
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fecc00
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144fec980
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fecd80
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144fec980
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fecd80
  4652 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4652 ms     | 0x6dfb ret:0x7fe144feca80
  4652 ms     | 0x6dfb PK11_DeriveWithFlags()
  4652 ms     | 0x6dfb basekey:0x7fe144fecc00
  4653 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4653 ms     | 0x6dfb ret:0x7fe144fecd00
  4653 ms     | 0x6dfb PK11_Encrypt()
  4653 ms     | 0x6dfb symkey:0x7fe144fec780
  4653 ms     | 0x6dfb PK11_DeriveWithFlags()
  4653 ms     | 0x6dfb basekey:0x7fe144fecc80
  4653 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4660 ms     | 0x6dfb ret:0x7fe144fecd00
  4660 ms     | 0x6dfb PK11_DeriveWithFlags()
  4660 ms     | 0x6dfb basekey:0x7fe144fecc80
  4660 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4660 ms     | 0x6dfb ret:0x7fe144feca80
  4660 ms     | 0x6dfb PK11_DeriveWithFlags()
  4660 ms     | 0x6dfb basekey:0x7fe144fece00
  4660 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  4660 ms     | 0x6dfb ret:0x7fe144fec780
  4660 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  4660 ms     | 0x6dfb privk:0x7fe144e03820::7fe144e03820  b0 fa fe 44                                      ...D
  4660 ms     | 0x6dfb privk:0x7fe144e03820::7fe144e03820  e5 e5 e5 e5                                      ....
  4661 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  4661 ms     | 0x6dfb privk:0x7fe15f0ad020::7fe15f0ad020  30 f8 fe 44                                      0..D
  4661 ms     | 0x6dfb privk:0x7fe15f0ad020::7fe15f0ad020  e5 e5 e5 e5                                      ....
  4663 ms  0x6dfb PK11_Encrypt()
  4663 ms  0x6dfb symkey:0x7fe144fecd00
  4664 ms  0x6dfb PK11_Encrypt()
  4664 ms  0x6dfb symkey:0x7fe144fecd00
  4690 ms  0x6dfb PK11_DeriveWithFlags()
  4690 ms  0x6dfb basekey:0x7fe144fec780
  4690 ms     | 0x6dfb PK11_DeriveWithTemplate()
  4690 ms  0x6dfb ret:0x7fe157260b80
  4690 ms  0x6dfb PK11_Encrypt()
  4690 ms  0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e12 */
  4928 ms  0x6e12 PR_Close()
  4928 ms  0x6e12 fd:0x7fe15c68e250
           /* TID 0x6dfb */
  5010 ms  0x6dfb PK11_Encrypt()
  5010 ms  0x6dfb symkey:0x7fe144fecd00
  5010 ms  0x6dfb PK11_Encrypt()
  5010 ms  0x6dfb symkey:0x7fe144fecd00
  5012 ms  0x6dfb PK11_Encrypt()
  5012 ms  0x6dfb symkey:0x7fe144fecd00
  5012 ms  0x6dfb PK11_Encrypt()
  5012 ms  0x6dfb symkey:0x7fe144fecd00
  5013 ms  0x6dfb PK11_Encrypt()
  5013 ms  0x6dfb symkey:0x7fe144fecd00
  5013 ms  0x6dfb PK11_Encrypt()
  5013 ms  0x6dfb symkey:0x7fe144fecd00
  5013 ms  0x6dfb PK11_Encrypt()
  5013 ms  0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e03 */
  5102 ms  0x6e03 PR_Close()
  5102 ms  0x6e03 fd:0x7fe144ef90a0
  5147 ms  0x6e03 PR_Close()
  5147 ms  0x6e03 fd:0x7fe144ef90a0
  5152 ms  0x6e03 PR_Close()
  5152 ms  0x6e03 fd:0x7fe144ef90a0
  5160 ms  0x6e03 PR_Close()
  5160 ms  0x6e03 fd:0x7fe144ef90a0
  5163 ms  0x6e03 PR_Close()
  5163 ms  0x6e03 fd:0x7fe144ef90a0
  5184 ms  0x6e03 PR_Close()
  5184 ms  0x6e03 fd:0x7fe144ef9130
  5188 ms  0x6e03 PR_Close()
  5188 ms  0x6e03 fd:0x7fe144ef9130
           /* TID 0x6dfb */
  5216 ms  0x6dfb PK11_Encrypt()
  5216 ms  0x6dfb symkey:0x7fe144fecd00
  5217 ms  0x6dfb PK11_Encrypt()
  5217 ms  0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e03 */
  5255 ms  0x6e03 PR_Close()
  5255 ms  0x6e03 fd:0x7fe144ef9220
           /* TID 0x6e55 */
  5272 ms  0x6e55 PR_Close()
  5272 ms  0x6e55 fd:0x7fe145090cd0
  5273 ms  0x6e55 PR_Close()
  5273 ms  0x6e55 fd:0x7fe145090cd0
           /* TID 0x6e8b */
  5283 ms  0x6e8b PR_Close()
  5283 ms  0x6e8b fd:0x7fe15ac93a00
  5283 ms  0x6e8b PR_Close()
  5283 ms  0x6e8b fd:0x7fe15ac93a00
           /* TID 0x6e03 */
  5291 ms  0x6e03 PR_Close()
  5291 ms  0x6e03 fd:0x7fe144ef9400
           /* TID 0x6dfb */
  5300 ms  0x6dfb SSL_ImportFD()
  5300 ms  0x6dfb ret:0x7fe15c5e5cd0
  5300 ms  0x6dfb SSL_AuthCertificateHook()
  5300 ms  0x6dfb fd:0x7fe15c5e5cd0
  5300 ms  0x6dfb ret:0x0
  5300 ms  0x6dfb PR_Connect()
  5300 ms  0x6dfb fd:0x7fe15c5e5cd0
           /* TID 0x6e03 */
  5310 ms  0x6e03 PR_Close()
  5310 ms  0x6e03 fd:0x7fe156f06040
           /* TID 0x6dfb */
  5337 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5337 ms  0x6dfb cx:0x7fe155ff6428
  5337 ms     | 0x6dfb EC_ValidatePublicKey()
  5337 ms     | 0x6dfb ret:0x0
  5337 ms  0x6dfb ret:0x7fe145070020::7fe145070020  d0 53 f5 44                                      .S.D
  5337 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5337 ms  0x6dfb cx:0x7fe155ff6428
  5338 ms     | 0x6dfb EC_ValidatePublicKey()
  5339 ms     | 0x6dfb ret:0x0
  5339 ms  0x6dfb ret:0x7fe145072020::7fe145072020  b0 55 f5 44                                      .U.D
  5374 ms  0x6dfb PK11_Encrypt()
  5374 ms  0x6dfb symkey:0x7fe144fecd00
  5375 ms  0x6dfb PK11_Encrypt()
  5375 ms  0x6dfb symkey:0x7fe144fecd00
  5376 ms  0x6dfb PK11_Encrypt()
  5376 ms  0x6dfb symkey:0x7fe144fecd00
  5377 ms  0x6dfb PK11_Derive()
  5377 ms  0x6dfb basekey:0x7fe157260b80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144fecc00
  5377 ms  0x6dfb PK11_PubDeriveWithKDF()
  5377 ms  0x6dfb seckey:0x7fe145070020
  5377 ms     | 0x6dfb EC_ValidatePublicKey()
  5377 ms     | 0x6dfb ret:0x0
  5377 ms  0x6dfb ret:0x7fe157260b80
  5377 ms  SECKEY_ECParamsToKeySize()
  5377 ms  0x6dfb ret:0xff
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe144fecc00
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144fece00
  5377 ms  0x6dfb PK11_Derive()
  5377 ms  0x6dfb basekey:0x7fe157260b80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144feca80
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe144feca80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144fecc00
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe144feca80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe157260b80
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe144feca80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144fece00
  5377 ms  0x6dfb PK11_Derive()
  5377 ms  0x6dfb basekey:0x7fe144d82380
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144d82400
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe157260b80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144feca80
  5377 ms  0x6dfb PK11_DeriveWithFlags()
  5377 ms  0x6dfb basekey:0x7fe157260b80
  5377 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5377 ms  0x6dfb ret:0x7fe144fece00
  5378 ms  SECKEY_ECParamsToKeySize()
  5378 ms  0x6dfb ret:0x100
  5378 ms  SECKEY_ECParamsToBasePointOrderLen()
  5378 ms  0x6dfb ret:0x100
  5378 ms  SECKEY_ECParamsToBasePointOrderLen()
  5378 ms  0x6dfb ret:0x100
  5378 ms  0x6dfb EC_ValidatePublicKey()
  5380 ms  0x6dfb ret:0x0
  5382 ms  0x6dfb PK11_DeriveWithFlags()
  5382 ms  0x6dfb basekey:0x7fe157260b80
  5382 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5382 ms  0x6dfb ret:0x7fe144fece00
  5391 ms  0x6dfb PK11_Encrypt()
  5391 ms  0x6dfb symkey:0x7fe144fecd00
  5392 ms  0x6dfb PK11_Encrypt()
  5392 ms  0x6dfb symkey:0x7fe144fecd00
  5395 ms  0x6dfb PK11_Encrypt()
  5395 ms  0x6dfb symkey:0x7fe144fecd00
  5397 ms  0x6dfb PK11_Encrypt()
  5397 ms  0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e03 */
  5415 ms  0x6e03 PR_Close()
  5415 ms  0x6e03 fd:0x7fe145090bb0
  5415 ms  0x6e03 PR_Close()
  5415 ms  0x6e03 fd:0x7fe156f06130
           /* TID 0x6e5b */
  5415 ms  0x6e5b _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5415 ms  0x6e5b ret:0x0
           /* TID 0x6dfb */
  5415 ms  0x6dfb SSL_AuthCertificateComplete()
  5415 ms  0x6dfb fd:0x7fe15c5e5cd0
  5415 ms  0x6dfb err:0x0
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82400
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144fece00
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82400
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d82380
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82400
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d81b00
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144fecc00
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d82500
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144fecc00
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d82680
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82380
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d82680
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82380
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144df1900
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144fecc00
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144feca80
  5416 ms     | 0x6dfb PK11_Encrypt()
  5416 ms     | 0x6dfb symkey:0x7fe144d82500
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144fece00
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144feca80
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144fece00
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144df1900
  5416 ms     | 0x6dfb PK11_DeriveWithFlags()
  5416 ms     | 0x6dfb basekey:0x7fe144d82400
  5416 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5416 ms     | 0x6dfb ret:0x7fe144d82500
  5416 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5416 ms     | 0x6dfb privk:0x7fe145072020::7fe145072020  b0 55 f5 44                                      .U.D
  5416 ms     | 0x6dfb privk:0x7fe145072020::7fe145072020  e5 e5 e5 e5                                      ....
  5416 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5416 ms     | 0x6dfb privk:0x7fe145070020::7fe145070020  d0 53 f5 44                                      .S.D
  5416 ms     | 0x6dfb privk:0x7fe145070020::7fe145070020  e5 e5 e5 e5                                      ....
  5417 ms  0x6dfb PK11_Encrypt()
  5417 ms  0x6dfb symkey:0x7fe144feca80
  5417 ms  0x6dfb PK11_Encrypt()
  5417 ms  0x6dfb symkey:0x7fe144feca80
  5418 ms  0x6dfb PK11_Encrypt()
  5418 ms  0x6dfb symkey:0x7fe144fecd00
  5418 ms  0x6dfb PK11_Encrypt()
  5418 ms  0x6dfb symkey:0x7fe144fecd00
  5419 ms  0x6dfb PK11_Encrypt()
  5419 ms  0x6dfb symkey:0x7fe144fecd00
  5432 ms  0x6dfb PK11_Encrypt()
  5432 ms  0x6dfb symkey:0x7fe144fecd00
  5433 ms  0x6dfb PK11_Encrypt()
  5433 ms  0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e03 */
  5450 ms  0x6e03 PR_Close()
  5450 ms  0x6e03 fd:0x7fe156f06190
  5452 ms  0x6e03 PR_Close()
  5452 ms  0x6e03 fd:0x7fe144848040
  5452 ms  0x6e03 PR_Close()
  5452 ms  0x6e03 fd:0x7fe1448480d0
           /* TID 0x6dfb */
  5453 ms  0x6dfb PK11_DeriveWithFlags()
  5453 ms  0x6dfb basekey:0x7fe144d82500
  5453 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5453 ms  0x6dfb ret:0x7fe157260b80
  5453 ms  0x6dfb PK11_Encrypt()
  5453 ms  0x6dfb symkey:0x7fe144feca80
           /* TID 0x6e03 */
  5453 ms  0x6e03 PR_Close()
  5453 ms  0x6e03 fd:0x7fe144848040
  5454 ms  0x6e03 PR_Close()
  5454 ms  0x6e03 fd:0x7fe144848040
  5454 ms  0x6e03 PR_Close()
  5454 ms  0x6e03 fd:0x7fe144848040
  5489 ms  0x6e03 PR_Close()
  5489 ms  0x6e03 fd:0x7fe145090b50
  5490 ms  0x6e03 PR_Close()
  5490 ms  0x6e03 fd:0x7fe156f06130
  5497 ms  0x6e03 PR_Close()
  5497 ms  0x6e03 fd:0x7fe156f06130
           /* TID 0x6dfb */
  5542 ms  0x6dfb PK11_Encrypt()
  5542 ms  0x6dfb symkey:0x7fe144feca80
           /* TID 0x6e03 */
  5687 ms  0x6e03 PR_Close()
  5687 ms  0x6e03 fd:0x7fe156f06130
           /* TID 0x6dfb */
  5720 ms  0x6dfb SSL_ImportFD()
  5720 ms  0x6dfb ret:0x7fe156f06e80
  5720 ms  0x6dfb SSL_AuthCertificateHook()
  5720 ms  0x6dfb fd:0x7fe156f06e80
  5720 ms  0x6dfb ret:0x0
  5721 ms  0x6dfb PK11_Encrypt()
  5721 ms  0x6dfb symkey:0x7fe144feca80
  5722 ms  0x6dfb PR_Connect()
  5722 ms  0x6dfb fd:0x7fe156f06e80
  5758 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5758 ms  0x6dfb cx:0x7fe155ff6908
  5760 ms     | 0x6dfb EC_ValidatePublicKey()
  5760 ms     | 0x6dfb ret:0x0
  5760 ms  0x6dfb ret:0x7fe14480f820::7fe14480f820  e0 5c 04 45                                      .\.E
  5760 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5760 ms  0x6dfb cx:0x7fe155ff6908
  5765 ms     | 0x6dfb EC_ValidatePublicKey()
  5768 ms     | 0x6dfb ret:0x0
  5769 ms  0x6dfb ret:0x7fe144811820::7fe144811820  e0 92 21 57                                      ..!W
           /* TID 0x6e03 */
  5780 ms  0x6e03 PR_Close()
  5780 ms  0x6e03 fd:0x7fe156f065e0
           /* TID 0x6dfb */
  5799 ms  0x6dfb SSL_ImportFD()
  5799 ms  0x6dfb ret:0x7fe15c5633d0
  5799 ms  0x6dfb SSL_AuthCertificateHook()
  5799 ms  0x6dfb fd:0x7fe15c5633d0
  5799 ms  0x6dfb ret:0x0
  5799 ms  0x6dfb PR_Connect()
  5799 ms  0x6dfb fd:0x7fe15c5633d0
  5806 ms  0x6dfb PR_Close()
  5806 ms  0x6dfb fd:0x7fe156f7cbe0
  5807 ms  0x6dfb PK11_Derive()
  5807 ms  0x6dfb basekey:0x7fe157260b80
  5807 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5807 ms  0x6dfb ret:0x7fe144fecc00
  5807 ms  0x6dfb PK11_PubDeriveWithKDF()
  5807 ms  0x6dfb seckey:0x7fe14480f820
  5807 ms     | 0x6dfb EC_ValidatePublicKey()
  5807 ms     | 0x6dfb ret:0x0
  5808 ms  0x6dfb ret:0x7fe157260b80
  5808 ms  SECKEY_ECParamsToKeySize()
  5808 ms  0x6dfb ret:0xff
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe144fecc00
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144d82400
  5808 ms  0x6dfb PK11_Derive()
  5808 ms  0x6dfb basekey:0x7fe157260b80
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144df1900
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe144df1900
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144fecc00
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe144df1900
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe157260b80
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe144df1900
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144d82400
  5808 ms  0x6dfb PK11_Derive()
  5808 ms  0x6dfb basekey:0x7fe144862a80
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144862b00
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe157260b80
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144df1900
  5808 ms  0x6dfb PK11_DeriveWithFlags()
  5808 ms  0x6dfb basekey:0x7fe157260b80
  5808 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5808 ms  0x6dfb ret:0x7fe144d82400
  5809 ms  SECKEY_ECParamsToKeySize()
  5809 ms  0x6dfb ret:0x100
  5809 ms  SECKEY_ECParamsToBasePointOrderLen()
  5809 ms  0x6dfb ret:0x100
  5809 ms  SECKEY_ECParamsToBasePointOrderLen()
  5809 ms  0x6dfb ret:0x100
  5809 ms  0x6dfb EC_ValidatePublicKey()
  5810 ms  0x6dfb ret:0x0
  5812 ms  0x6dfb PK11_DeriveWithFlags()
  5812 ms  0x6dfb basekey:0x7fe157260b80
  5812 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5812 ms  0x6dfb ret:0x7fe144d82400
  5812 ms  0x6dfb SSL_AuthCertificateComplete()
  5812 ms  0x6dfb fd:0x7fe156f06e80
  5812 ms  0x6dfb err:0x0
  5812 ms     | 0x6dfb PK11_DeriveWithFlags()
  5812 ms     | 0x6dfb basekey:0x7fe144862b00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144d82400
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144862b00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862a80
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144862b00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862b80
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144fecc00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862c00
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144fecc00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862c80
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144862a80
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862c80
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144862a80
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144862d00
  5813 ms     | 0x6dfb PK11_DeriveWithFlags()
  5813 ms     | 0x6dfb basekey:0x7fe144fecc00
  5813 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5813 ms     | 0x6dfb ret:0x7fe144df1900
  5813 ms     | 0x6dfb PK11_Encrypt()
  5813 ms     | 0x6dfb symkey:0x7fe144862c00
           /* TID 0x6df0 */
  5816 ms  0x6df0 EC_ValidatePublicKey()
  5817 ms  0x6df0 ret:0x0
  5817 ms  0x6df0 EC_ValidatePublicKey()
  5819 ms  0x6df0 ret:0x0
  5819 ms  0x6df0 EC_ValidatePublicKey()
  5820 ms  0x6df0 ret:0x0
  5820 ms  0x6df0 EC_ValidatePublicKey()
  5822 ms  0x6df0 ret:0x0
  5822 ms  0x6df0 EC_ValidatePublicKey()
  5823 ms  0x6df0 ret:0x0
  5823 ms  0x6df0 EC_ValidatePublicKey()
           /* TID 0x6dfb */
  5827 ms     | 0x6dfb PK11_DeriveWithFlags()
  5827 ms     | 0x6dfb basekey:0x7fe144d82400
  5827 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5827 ms     | 0x6dfb ret:0x7fe144df1900
  5827 ms     | 0x6dfb PK11_DeriveWithFlags()
  5827 ms     | 0x6dfb basekey:0x7fe144d82400
  5827 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5827 ms     | 0x6dfb ret:0x7fe144862d00
           /* TID 0x6df0 */
  5831 ms  0x6df0 ret:0x0
           /* TID 0x6dfb */
  5831 ms     | 0x6dfb PK11_DeriveWithFlags()
  5831 ms     | 0x6dfb basekey:0x7fe144862b00
  5831 ms     |    | 0x6dfb PK11_DeriveWithTemplate()
  5831 ms     | 0x6dfb ret:0x7fe144862c00
  5831 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5831 ms     | 0x6dfb privk:0x7fe144811820::7fe144811820  e0 92 21 57                                      ..!W
  5831 ms     | 0x6dfb privk:0x7fe144811820::7fe144811820  e5 e5 e5 e5                                      ....
  5831 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5831 ms     | 0x6dfb privk:0x7fe14480f820::7fe14480f820  e0 5c 04 45                                      .\.E
  5831 ms     | 0x6dfb privk:0x7fe14480f820::7fe14480f820  e5 e5 e5 e5                                      ....
  5831 ms  0x6dfb PK11_Encrypt()
  5831 ms  0x6dfb symkey:0x7fe144df1900
           /* TID 0x6df0 */
  5833 ms  0x6df0 EC_ValidatePublicKey()
  5834 ms  0x6df0 ret:0x0
  5834 ms  0x6df0 EC_ValidatePublicKey()
           /* TID 0x6dfb */
  5835 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5835 ms  0x6dfb cx:0x7fe155ff6aa8
           /* TID 0x6df0 */
  5836 ms  0x6df0 ret:0x0
           /* TID 0x6dfb */
  5836 ms     | 0x6dfb EC_ValidatePublicKey()
  5836 ms     | 0x6dfb ret:0x0
  5836 ms  0x6dfb ret:0x7fe14481b020::7fe14481b020  90 3c 87 44                                      .<.D
  5836 ms  0x6dfb SECKEY_CreateECPrivateKey()
  5836 ms  0x6dfb cx:0x7fe155ff6aa8
  5837 ms     | 0x6dfb EC_ValidatePublicKey()
  5838 ms     | 0x6dfb ret:0x0
  5838 ms  0x6dfb ret:0x7fe14481d020::7fe14481d020  70 3e 87 44                                      p>.D
           /* TID 0x6df0 */
  5839 ms  0x6df0 EC_ValidatePublicKey()
  5840 ms  0x6df0 ret:0x0
  5840 ms  0x6df0 EC_ValidatePublicKey()
  5842 ms  0x6df0 ret:0x0
           /* TID 0x6dfb */
  5842 ms  0x6dfb PK11_Encrypt()
  5842 ms  0x6dfb symkey:0x7fe144fecd00
  5842 ms  0x6dfb PK11_Encrypt()
  5842 ms  0x6dfb symkey:0x7fe144feca80
  5842 ms  0x6dfb PR_Close()
  5842 ms  0x6dfb fd:0x7fe145017100
  5843 ms     | 0x6dfb PK11_Encrypt()
  5843 ms     | 0x6dfb symkey:0x7fe155feb900
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe155d9feb0
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe155d9f3d0
  5843 ms     | 0x6dfb PK11_Encrypt()
  5843 ms     | 0x6dfb symkey:0x7fe155feab80
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe157298910
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe1561c0910
  5843 ms     | 0x6dfb PK11_Encrypt()
  5843 ms     | 0x6dfb symkey:0x7fe157260d80
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe157ffedf0
  5843 ms     | 0x6dfb PK11_Encrypt()
  5843 ms     | 0x6dfb symkey:0x7fe156255600
  5843 ms  0x6dfb PR_Close()
  5843 ms  0x6dfb fd:0x7fe15c5e5cd0
  5843 ms     | 0x6dfb PK11_Encrypt()
  5843 ms     | 0x6dfb symkey:0x7fe144feca80
  5844 ms  0x6dfb PR_Close()
  5844 ms  0x6dfb fd:0x7fe144fe8820
  5844 ms     | 0x6dfb PK11_Encrypt()
  5844 ms     | 0x6dfb symkey:0x7fe144fecd00
           /* TID 0x6e4c */
  5844 ms  0x6e4c PR_Close()
  5844 ms  0x6e4c fd:0x7fe144871460
  5844 ms  0x6e4c PR_Close()
  5844 ms  0x6e4c fd:0x7fe144871460
           /* TID 0x6dfb */
  5850 ms  0x6dfb PK11_DeriveWithFlags()
  5850 ms  0x6dfb basekey:0x7fe144862c00
  5850 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5850 ms  0x6dfb ret:0x7fe144fec680
  5850 ms  0x6dfb PR_Close()
  5850 ms  0x6dfb fd:0x7fe156f06e80
  5850 ms     | 0x6dfb PK11_Encrypt()
  5850 ms     | 0x6dfb symkey:0x7fe144df1900
           /* TID 0x6df0 */
  5856 ms  0x6df0 PR_Close()
  5856 ms  0x6df0 fd:0x7fe15ac93c10
  5856 ms  0x6df0 PR_Close()
  5856 ms  0x6df0 fd:0x7fe144871f70
  5857 ms  0x6df0 PR_Close()
  5857 ms  0x6df0 fd:0x7fe144871fd0
  5857 ms  0x6df0 PR_Close()
  5857 ms  0x6df0 fd:0x7fe144871f70
  5857 ms  0x6df0 PR_Close()
  5857 ms  0x6df0 fd:0x7fe144871fd0
  5857 ms  0x6df0 PR_Close()
  5857 ms  0x6df0 fd:0x7fe144871f70
           /* TID 0x6e15 */
  5860 ms  0x6e15 PR_Close()
  5860 ms  0x6e15 fd:0x7fe144ef9340
           /* TID 0x6dfb */
  5876 ms  0x6dfb PK11_Derive()
  5876 ms  0x6dfb basekey:0x7fe144862b80
  5876 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5876 ms  0x6dfb ret:0x7fe144862a80
  5876 ms  0x6dfb PK11_PubDeriveWithKDF()
  5876 ms  0x6dfb seckey:0x7fe14481b020
  5876 ms     | 0x6dfb EC_ValidatePublicKey()
  5876 ms     | 0x6dfb ret:0x0
  5877 ms  0x6dfb ret:0x7fe144862b80
  5877 ms  SECKEY_ECParamsToKeySize()
  5877 ms  0x6dfb ret:0xff
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862a80
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144d82400
  5877 ms  0x6dfb PK11_Derive()
  5877 ms  0x6dfb basekey:0x7fe144862b80
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144862c00
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862c00
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144862a80
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862c00
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144862b80
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862c00
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144d82400
  5877 ms  0x6dfb PK11_Derive()
  5877 ms  0x6dfb basekey:0x7fe144862c80
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144df1900
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862b80
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144862c00
  5877 ms  0x6dfb PK11_DeriveWithFlags()
  5877 ms  0x6dfb basekey:0x7fe144862b80
  5877 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5877 ms  0x6dfb ret:0x7fe144d82400
  5878 ms  SECKEY_ECParamsToKeySize()
  5878 ms  0x6dfb ret:0x100
  5878 ms  SECKEY_ECParamsToBasePointOrderLen()
  5878 ms  0x6dfb ret:0x100
  5878 ms  SECKEY_ECParamsToBasePointOrderLen()
  5878 ms  0x6dfb ret:0x100
  5878 ms  0x6dfb EC_ValidatePublicKey()
  5881 ms  0x6dfb ret:0x0
  5883 ms  0x6dfb PK11_DeriveWithFlags()
  5883 ms  0x6dfb basekey:0x7fe144862b80
  5883 ms     | 0x6dfb PK11_DeriveWithTemplate()
  5883 ms  0x6dfb ret:0x7fe144d82400
           /* TID 0x6df0 */
  5890 ms  0x6df0 PR_Close()
  5890 ms  0x6df0 fd:0x7fe144871fd0
  5890 ms  0x6df0 PR_Close()
  5890 ms  0x6df0 fd:0x7fe155d9f4c0
  5891 ms  0x6df0 PR_Close()
  5891 ms  0x6df0 fd:0x7fe144871fd0
  5891 ms  0x6df0 PR_Close()
  5891 ms  0x6df0 fd:0x7fe155d9f4c0
  5892 ms  0x6df0 PR_Close()
  5892 ms  0x6df0 fd:0x7fe160fc89a0
  5892 ms  0x6df0 PR_Close()
  5892 ms  0x6df0 fd:0x7fe160fc88b0
  5892 ms  0x6df0 PR_Close()
  5892 ms  0x6df0 fd:0x7fe160fc8a60
  5894 ms  0x6df0 PR_Close()
  5894 ms  0x6df0 fd:0x7fe155d9f4f0
  5895 ms  0x6df0 PR_Close()
  5895 ms  0x6df0 fd:0x7fe155d9f4f0
  5897 ms  0x6df0 PR_Close()
  5897 ms  0x6df0 fd:0x7fe144871fd0
  5897 ms  0x6df0 PR_Close()
  5897 ms  0x6df0 fd:0x7fe155d9fdc0
  5897 ms  0x6df0 PR_Close()
  5897 ms  0x6df0 fd:0x7fe144871fd0
  5897 ms  0x6df0 PR_Close()
  5897 ms  0x6df0 fd:0x7fe155d9fdc0
  5900 ms  0x6df0 PR_Close()
  5900 ms  0x6df0 fd:0x7fe155d9fe20
  5901 ms  0x6df0 PR_Close()
  5901 ms  0x6df0 fd:0x7fe155d9fe20
  5903 ms  0x6df0 PR_Close()
  5903 ms  0x6df0 fd:0x7fe144871fd0
  5903 ms  0x6df0 PR_Close()
  5903 ms  0x6df0 fd:0x7fe155d9feb0
  5903 ms  0x6df0 PR_Close()
  5903 ms  0x6df0 fd:0x7fe144871fd0
  5903 ms  0x6df0 PR_Close()
  5903 ms  0x6df0 fd:0x7fe155d9feb0
  5906 ms  0x6df0 PR_Close()
  5906 ms  0x6df0 fd:0x7fe155d9fee0
  5908 ms  0x6df0 PR_Close()
  5908 ms  0x6df0 fd:0x7fe155d9fee0
  5914 ms  0x6df0 PR_Close()
  5914 ms  0x6df0 fd:0x7fe155f7aaf0
  5915 ms  0x6df0 PR_Close()
  5915 ms  0x6df0 fd:0x7fe155f7aaf0
  5917 ms  0x6df0 PR_Close()
  5917 ms  0x6df0 fd:0x7fe155f7ab20
           /* TID 0x6e15 */
  5921 ms  0x6e15 PR_Close()
  5921 ms  0x6e15 fd:0x7fe144871760
  5923 ms  0x6e15 PR_Close()
  5923 ms  0x6e15 fd:0x7fe144871760
           /* TID 0x6df0 */
  5923 ms  0x6df0 PR_Close()
  5923 ms  0x6df0 fd:0x7fe144871fd0
  5923 ms  0x6df0 PR_Close()
  5923 ms  0x6df0 fd:0x7fe144fe8970
           /* TID 0x6e15 */
  5928 ms  0x6e15 PR_Close()
  5928 ms  0x6e15 fd:0x7fe144ef9340
  5955 ms  0x6e15 PR_Close()
  5955 ms  0x6e15 fd:0x7fe144871940
           /* TID 0x6dfb */
  5956 ms  0x6dfb PR_Connect()
  5956 ms  0x6dfb fd:0x7fe144871af0
  5961 ms  0x6dfb PR_Close()
  5961 ms  0x6dfb fd:0x7fe15c5633d0
  5961 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5961 ms     | 0x6dfb privk:0x7fe14481d020::7fe14481d020  70 3e 87 44                                      p>.D
  5962 ms     | 0x6dfb privk:0x7fe14481d020::7fe14481d020  e5 e5 e5 e5                                      ....
  5962 ms     | 0x6dfb SECKEY_DestroyPrivateKey()
  5962 ms     | 0x6dfb privk:0x7fe14481b020::7fe14481b020  90 3c 87 44                                      .<.D
  5962 ms     | 0x6dfb privk:0x7fe14481b020::7fe14481b020  e5 e5 e5 e5                                      ....
           /* TID 0x6e55 */
  5962 ms  0x6e55 PR_Close()
  5962 ms  0x6e55 fd:0x7fe1448712e0
           /* TID 0x6df5 */
  5969 ms  0x6df5 PR_Close()
  5969 ms  0x6df5 fd:0x7fe15fb2ee20
           /* TID 0x6dfb */
  5969 ms  0x6dfb SSL_ImportFD()
  5969 ms  0x6dfb ret:0x7fe144871a30
  5969 ms  0x6dfb SSL_AuthCertificateHook()
  5969 ms  0x6dfb fd:0x7fe144871a30
  5970 ms  0x6dfb ret:0x0
  5970 ms  0x6dfb PR_Connect()
  5970 ms  0x6dfb fd:0x7fe144871a30
  5972 ms  0x6dfb PR_Close()
  5972 ms  0x6dfb fd:0x7fe144871a30
  5972 ms  0x6dfb PR_Close()
  5972 ms  0x6dfb fd:0x7fe144871af0
           /* TID 0x6e15 */
  5982 ms  0x6e15 PR_Close()
  5982 ms  0x6e15 fd:0x7fe144871880
           /* TID 0x6df5 */
  5990 ms  0x6df5 PR_Close()
  5990 ms  0x6df5 fd:0x7fe15c267820
           /* TID 0x6dfb */
  5991 ms  0x6dfb PR_Close()
  5991 ms  0x6dfb fd:0x7fe16424e7c0
           /* TID 0x6e4c */
  5991 ms  0x6e4c PR_Close()
  5991 ms  0x6e4c fd:0x7fe155fc41f0
  5991 ms  0x6e4c PR_Close()
  5991 ms  0x6e4c fd:0x7fe144871a00
  5992 ms  0x6e4c PR_Close()
  5992 ms  0x6e4c fd:0x7fe144871a00
  5992 ms  0x6e4c PR_Close()
  5992 ms  0x6e4c fd:0x7fe144871a00
           /* TID 0x6e15 */
  5992 ms  0x6e15 PR_Close()
  5992 ms  0x6e15 fd:0x7fe155fc4130
           /* TID 0x6e03 */
  5995 ms  0x6e03 PR_Close()
  5995 ms  0x6e03 fd:0x7fe155fc44c0
  5995 ms  0x6e03 PR_Close()
  5995 ms  0x6e03 fd:0x7fe155fc44f0
           /* TID 0x6df5 */
  6002 ms  0x6df5 PR_Close()
  6002 ms  0x6df5 fd:0x7fe157ffed30
           /* TID 0x6df0 */
  6004 ms  0x6df0 PR_Close()
  6004 ms  0x6df0 fd:0x7fe144871760
  6004 ms  0x6df0 PR_Close()
  6004 ms  0x6df0 fd:0x7fe155fc4580
           /* TID 0x6e15 */
  6005 ms  0x6e15 PR_Close()
  6005 ms  0x6e15 fd:0x7fe155fc45e0
  6010 ms  0x6e15 PR_Close()
  6010 ms  0x6e15 fd:0x7fe155fc4520
  6046 ms  0x6e15 PR_Close()
  6046 ms  0x6e15 fd:0x7fe144ef90d0
  6057 ms  0x6e15 PR_Close()
  6057 ms  0x6e15 fd:0x7fe144ef90d0
  6060 ms  0x6e15 PR_Close()
  6060 ms  0x6e15 fd:0x7fe144fe8b80
  6062 ms  0x6e15 PR_Close()
  6062 ms  0x6e15 fd:0x7fe144fe8be0
  6068 ms  0x6e15 PR_Close()
  6068 ms  0x6e15 fd:0x7fe155fc44c0
  6072 ms  0x6e15 PR_Close()
  6072 ms  0x6e15 fd:0x7fe1561c02b0
  6078 ms  0x6e15 PR_Close()
  6078 ms  0x6e15 fd:0x7fe1561c0d90
  6087 ms  0x6e15 PR_Close()
  6087 ms  0x6e15 fd:0x7fe1561c0f70
  6088 ms  0x6e15 PR_Close()
  6088 ms  0x6e15 fd:0x7fe1561c0f70
           /* TID 0x6df0 */
  6250 ms  0x6df0 PR_Close()
  6250 ms  0x6df0 fd:0x7fe144ef9730
  6250 ms  0x6df0 PR_Close()
  6250 ms  0x6df0 fd:0x7fe144ef9730
  6262 ms  0x6df0 PR_Close()
  6262 ms  0x6df0 fd:0x7fe17e2da130
  6262 ms  0x6df0 PR_Close()
  6262 ms  0x6df0 fd:0x7fe17e2da190
Process terminated
