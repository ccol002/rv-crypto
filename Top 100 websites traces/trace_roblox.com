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
           /* TID 0x29a3 */
    12 ms  0x29a3 PR_Close()
    12 ms  0x29a3 fd:0x7f5472583610
           /* TID 0x299b */
   262 ms  0x299b SSL_ImportFD()
   262 ms  0x299b ret:0x7f54816ab1f0
   262 ms  0x299b SSL_AuthCertificateHook()
   262 ms  0x299b fd:0x7f54816ab1f0
   262 ms  0x299b ret:0x0
   263 ms  0x299b PR_Connect()
   263 ms  0x299b fd:0x7f54816ab1f0
   481 ms  0x299b SECKEY_CreateECPrivateKey()
   481 ms  0x299b cx:0x7f5472586ae8
   482 ms     | 0x299b EC_ValidatePublicKey()
   482 ms     | 0x299b ret:0x0
   482 ms  0x299b ret:0x7f5472737820::7f5472737820  00 fb 79 72                                      ..yr
   483 ms  0x299b SECKEY_CreateECPrivateKey()
   483 ms  0x299b cx:0x7f5472586ae8
   485 ms     | 0x299b EC_ValidatePublicKey()
   490 ms     | 0x299b ret:0x0
   490 ms  0x299b ret:0x7f5472739820::7f5472739820  40 fc 79 72                                      @.yr
           /* TID 0x29fb */
   529 ms  0x29fb PR_Close()
   529 ms  0x29fb fd:0x7f54816abb20
   533 ms  0x29fb PR_Close()
   533 ms  0x29fb fd:0x7f54816abb20
           /* TID 0x299b */
   720 ms  SECKEY_ECParamsToKeySize()
   720 ms  0x299b ret:0x100
   720 ms  0x299b SECKEY_CreateECPrivateKey()
   720 ms  0x299b cx:0x7f5472586ae8
   721 ms     | 0x299b EC_ValidatePublicKey()
   725 ms     | 0x299b ret:0x0
   725 ms  0x299b ret:0x7f5472742820::7f5472742820  40 27 7e 72                                      @'~r
   726 ms  0x299b PK11_PubDeriveWithKDF()
   726 ms  0x299b seckey:0x7f5472742820
   726 ms     | 0x299b EC_ValidatePublicKey()
   730 ms     | 0x299b ret:0x0
   734 ms  0x299b ret:0x7f547cab0c80
   734 ms  0x299b PK11_DeriveWithFlags()
   734 ms  0x299b basekey:0x7f547cab0c80
   734 ms     | 0x299b PK11_DeriveWithTemplate()
   734 ms  0x299b ret:0x7f54727d3700
   734 ms  0x299b PK11_Derive()
   734 ms  0x299b basekey:0x7f54727d3700
   734 ms     | 0x299b PK11_DeriveWithTemplate()
   734 ms  0x299b ret:0x7f54727d3800
   734 ms  0x299b SECKEY_DestroyPrivateKey()
   734 ms  0x299b privk:0x7f5472742820::7f5472742820  40 27 7e 72                                      @'~r
   735 ms  0x299b privk:0x7f5472742820::7f5472742820  e5 e5 e5 e5                                      ....
   735 ms  0x299b PK11_Encrypt()
   735 ms  0x299b symkey:0x7f54727d3980
   736 ms  0x299b PR_Connect()
   736 ms  0x299b fd:0x7f54816abc70
           /* TID 0x29fb */
   743 ms  0x29fb PR_Close()
   743 ms  0x29fb fd:0x7f54816abc10
           /* TID 0x29a3 */
   789 ms  0x29a3 PR_Close()
   789 ms  0x29a3 fd:0x7f54816abb50
           /* TID 0x29f4 */
   789 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   789 ms  0x29f4 ret:0x0
           /* TID 0x299b */
   790 ms  0x299b SSL_AuthCertificateComplete()
   790 ms  0x299b fd:0x7f54816ab1f0
   790 ms  0x299b err:0x0
   790 ms  0x299b PK11_Encrypt()
   790 ms  0x299b symkey:0x7f54727d3980
   960 ms  0x299b SECKEY_DestroyPrivateKey()
   960 ms  0x299b privk:0x7f5472739820::7f5472739820  40 fc 79 72                                      @.yr
   960 ms  0x299b privk:0x7f5472739820::7f5472739820  e5 e5 e5 e5                                      ....
   960 ms  0x299b SECKEY_DestroyPrivateKey()
   960 ms  0x299b privk:0x7f5472737820::7f5472737820  00 fb 79 72                                      ..yr
   961 ms  0x299b privk:0x7f5472737820::7f5472737820  e5 e5 e5 e5                                      ....
  1186 ms  0x299b SSL_ImportFD()
  1187 ms  0x299b ret:0x7f54816abdf0
  1187 ms  0x299b SSL_AuthCertificateHook()
  1187 ms  0x299b fd:0x7f54816abdf0
  1187 ms  0x299b ret:0x0
  1187 ms  0x299b PR_Connect()
  1187 ms  0x299b fd:0x7f54816abdf0
  1213 ms  0x299b SECKEY_CreateECPrivateKey()
  1213 ms  0x299b cx:0x7f54727de588
  1215 ms     | 0x299b EC_ValidatePublicKey()
  1215 ms     | 0x299b ret:0x0
  1215 ms  0x299b ret:0x7f5472738820::7f5472738820  40 fc 79 72                                      @.yr
  1215 ms  0x299b SECKEY_CreateECPrivateKey()
  1215 ms  0x299b cx:0x7f54727de588
  1218 ms     | 0x299b EC_ValidatePublicKey()
  1222 ms     | 0x299b ret:0x0
  1222 ms  0x299b ret:0x7f547273e820::7f547273e820  70 24 7e 72                                      p$~r
           /* TID 0x29f4 */
  1276 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1276 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  1277 ms  SECKEY_ECParamsToKeySize()
  1277 ms  0x299b ret:0x100
  1277 ms  0x299b SECKEY_CreateECPrivateKey()
  1277 ms  0x299b cx:0x7f54727de588
  1279 ms     | 0x299b EC_ValidatePublicKey()
  1283 ms     | 0x299b ret:0x0
  1283 ms  0x299b ret:0x7f5472742020::7f5472742020  e0 27 7e 72                                      .'~r
  1283 ms  0x299b PK11_PubDeriveWithKDF()
  1283 ms  0x299b seckey:0x7f5472742020
  1283 ms     | 0x299b EC_ValidatePublicKey()
  1287 ms     | 0x299b ret:0x0
  1291 ms  0x299b ret:0x7f547cab0c80
  1291 ms  0x299b PK11_DeriveWithFlags()
  1291 ms  0x299b basekey:0x7f547cab0c80
  1291 ms     | 0x299b PK11_DeriveWithTemplate()
  1291 ms  0x299b ret:0x7f5472767800
  1291 ms  0x299b PK11_Derive()
  1291 ms  0x299b basekey:0x7f5472767800
  1291 ms     | 0x299b PK11_DeriveWithTemplate()
  1291 ms  0x299b ret:0x7f54727d4200
  1291 ms  0x299b SECKEY_DestroyPrivateKey()
  1291 ms  0x299b privk:0x7f5472742020::7f5472742020  e0 27 7e 72                                      .'~r
  1291 ms  0x299b privk:0x7f5472742020::7f5472742020  e5 e5 e5 e5                                      ....
  1292 ms  0x299b PK11_Encrypt()
  1292 ms  0x299b symkey:0x7f54727d4700
  1292 ms  0x299b SSL_AuthCertificateComplete()
  1292 ms  0x299b fd:0x7f54816abdf0
  1292 ms  0x299b err:0x0
  1292 ms  0x299b PK11_Encrypt()
  1292 ms  0x299b symkey:0x7f54727d4700
  1344 ms  0x299b SECKEY_DestroyPrivateKey()
  1344 ms  0x299b privk:0x7f547273e820::7f547273e820  70 24 7e 72                                      p$~r
  1344 ms  0x299b privk:0x7f547273e820::7f547273e820  e5 e5 e5 e5                                      ....
  1344 ms  0x299b SECKEY_DestroyPrivateKey()
  1344 ms  0x299b privk:0x7f5472738820::7f5472738820  40 fc 79 72                                      @.yr
  1344 ms  0x299b privk:0x7f5472738820::7f5472738820  e5 e5 e5 e5                                      ....
  1348 ms  0x299b PK11_Encrypt()
  1348 ms  0x299b symkey:0x7f54727d4700
  1378 ms  0x299b PK11_Encrypt()
  1378 ms  0x299b symkey:0x7f54727d4700
  1408 ms  0x299b PK11_Encrypt()
  1408 ms  0x299b symkey:0x7f54727d4700
  1437 ms  0x299b PK11_Encrypt()
  1437 ms  0x299b symkey:0x7f54727d4700
  1553 ms  0x299b PK11_Encrypt()
  1553 ms  0x299b symkey:0x7f54727d4700
  1586 ms  0x299b PK11_Encrypt()
  1586 ms  0x299b symkey:0x7f54727d4700
  1617 ms  0x299b PK11_Encrypt()
  1617 ms  0x299b symkey:0x7f54727d4700
           /* TID 0x29ef */
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf0a0
  1645 ms  0x29ef PR_Close()
  1645 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf0a0
  1646 ms  0x29ef PR_Close()
  1646 ms  0x29ef fd:0x7f54727cf100
  1647 ms  0x29ef PR_Close()
  1647 ms  0x29ef fd:0x7f54727cf0a0
  1647 ms  0x29ef PR_Close()
  1647 ms  0x29ef fd:0x7f54727cf100
  1647 ms  0x29ef PR_Close()
  1647 ms  0x29ef fd:0x7f54727cf0a0
  1647 ms  0x29ef PR_Close()
  1647 ms  0x29ef fd:0x7f54727cf100
  1650 ms  0x29ef PR_Close()
  1650 ms  0x29ef fd:0x7f54727cf0a0
  1650 ms  0x29ef PR_Close()
  1650 ms  0x29ef fd:0x7f54727cf070
  1653 ms  0x29ef PR_Close()
  1653 ms  0x29ef fd:0x7f54727cf070
  1654 ms  0x29ef PR_Close()
  1654 ms  0x29ef fd:0x7f54727cf0a0
  1655 ms  0x29ef PR_Close()
  1655 ms  0x29ef fd:0x7f54727cf0a0
  1656 ms  0x29ef PR_Close()
  1656 ms  0x29ef fd:0x7f54727cf0a0
  1658 ms  0x29ef PR_Close()
  1658 ms  0x29ef fd:0x7f54727cf0a0
  1658 ms  0x29ef PR_Close()
  1658 ms  0x29ef fd:0x7f54727cf0a0
  1711 ms  0x29ef PR_Close()
  1711 ms  0x29ef fd:0x7f54727cf0a0
  1712 ms  0x29ef PR_Close()
  1712 ms  0x29ef fd:0x7f54727cf0a0
  1719 ms  0x29ef PR_Close()
  1719 ms  0x29ef fd:0x7f54727cf0a0
  1719 ms  0x29ef PR_Close()
  1719 ms  0x29ef fd:0x7f54727cf0a0
  1732 ms  0x29ef PR_Close()
  1732 ms  0x29ef fd:0x7f54727cf0a0
  1732 ms  0x29ef PR_Close()
  1732 ms  0x29ef fd:0x7f54727cf0a0
  1735 ms  0x29ef PR_Close()
  1735 ms  0x29ef fd:0x7f54727cf0a0
  1735 ms  0x29ef PR_Close()
  1735 ms  0x29ef fd:0x7f54727cf0a0
           /* TID 0x29ec */
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
  1735 ms  0x29ec PR_Close()
  1735 ms  0x29ec fd:0x7f54727cf0a0
           /* TID 0x29fb */
  2238 ms  0x29fb PR_Close()
  2238 ms  0x29fb fd:0x7f54727cf0d0
  2242 ms  0x29fb PR_Close()
  2242 ms  0x29fb fd:0x7f54727cf0d0
  2721 ms  0x29fb PR_Close()
  2721 ms  0x29fb fd:0x7f54727cf0d0
           /* TID 0x29a3 */
  4146 ms  0x29a3 PR_Close()
  4146 ms  0x29a3 fd:0x7f54727cf0d0
  4147 ms  0x29a3 PR_Close()
  4147 ms  0x29a3 fd:0x7f54727cf5b0
           /* TID 0x299b */
  4626 ms  0x299b SSL_ImportFD()
  4627 ms  0x299b ret:0x7f54755b7490
  4627 ms  0x299b SSL_AuthCertificateHook()
  4627 ms  0x299b fd:0x7f54755b7490
  4627 ms  0x299b ret:0x0
  4627 ms  0x299b PR_Connect()
  4627 ms  0x299b fd:0x7f54755b7490
  4771 ms  0x299b SECKEY_CreateECPrivateKey()
  4771 ms  0x299b cx:0x7f54727de8c8
  4773 ms     | 0x299b EC_ValidatePublicKey()
  4773 ms     | 0x299b ret:0x0
  4773 ms  0x299b ret:0x7f54789b0020::7f54789b0020  50 c6 8b 61                                      P..a
  4774 ms  0x299b SECKEY_CreateECPrivateKey()
  4774 ms  0x299b cx:0x7f54727de8c8
  4776 ms     | 0x299b EC_ValidatePublicKey()
  4783 ms     | 0x299b ret:0x0
  4783 ms  0x299b ret:0x7f549ab74820::7f549ab74820  d0 c8 8b 61                                      ...a
  5073 ms  SECKEY_ECParamsToKeySize()
  5073 ms  0x299b ret:0x100
  5073 ms  0x299b SECKEY_CreateECPrivateKey()
  5073 ms  0x299b cx:0x7f54727de8c8
  5075 ms     | 0x299b EC_ValidatePublicKey()
  5081 ms     | 0x299b ret:0x0
           /* TID 0x29f4 */
  5083 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5083 ms  0x29f4 ret:0x0
  5083 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5084 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  5086 ms  0x299b ret:0x7f54618e5020::7f54618e5020  40 92 8c 61                                      @..a
  5086 ms  0x299b PK11_PubDeriveWithKDF()
  5086 ms  0x299b seckey:0x7f54618e5020
  5086 ms     | 0x299b EC_ValidatePublicKey()
  5092 ms     | 0x299b ret:0x0
  5096 ms  0x299b ret:0x7f547cab0c80
  5096 ms  0x299b PK11_DeriveWithFlags()
  5096 ms  0x299b basekey:0x7f547cab0c80
  5097 ms     | 0x299b PK11_DeriveWithTemplate()
  5097 ms  0x299b ret:0x7f54755bbf00
  5097 ms  0x299b PK11_Derive()
  5097 ms  0x299b basekey:0x7f54755bbf00
  5097 ms     | 0x299b PK11_DeriveWithTemplate()
  5097 ms  0x299b ret:0x7f54755bbf80
  5097 ms  0x299b SECKEY_DestroyPrivateKey()
  5097 ms  0x299b privk:0x7f54618e5020::7f54618e5020  40 92 8c 61                                      @..a
  5098 ms  0x299b privk:0x7f54618e5020::7f54618e5020  e5 e5 e5 e5                                      ....
  5098 ms  0x299b PK11_Encrypt()
  5098 ms  0x299b symkey:0x7f54755bc100
  5105 ms  0x299b SSL_AuthCertificateComplete()
  5105 ms  0x299b fd:0x7f54755b7490
  5105 ms  0x299b err:0x0
  5107 ms  0x299b PK11_Encrypt()
  5107 ms  0x299b symkey:0x7f54755bc100
  5243 ms  0x299b SECKEY_DestroyPrivateKey()
  5243 ms  0x299b privk:0x7f549ab74820::7f549ab74820  d0 c8 8b 61                                      ...a
  5244 ms  0x299b privk:0x7f549ab74820::7f549ab74820  e5 e5 e5 e5                                      ....
  5244 ms  0x299b SECKEY_DestroyPrivateKey()
  5244 ms  0x299b privk:0x7f54789b0020::7f54789b0020  50 c6 8b 61                                      P..a
  5244 ms  0x299b privk:0x7f54789b0020::7f54789b0020  e5 e5 e5 e5                                      ....
           /* TID 0x29a3 */
  5585 ms  0x29a3 PR_Close()
  5585 ms  0x29a3 fd:0x7f54755b7d90
           /* TID 0x29b2 */
  5593 ms  0x29b2 PR_Close()
  5593 ms  0x29b2 fd:0x7f54755b7a60
           /* TID 0x299b */
  5646 ms  0x299b PK11_Encrypt()
  5646 ms  0x299b symkey:0x7f54755bc100
  5689 ms  0x299b SSL_ImportFD()
  5689 ms  0x299b ret:0x7f5461523bb0
  5689 ms  0x299b SSL_AuthCertificateHook()
  5689 ms  0x299b fd:0x7f5461523bb0
  5689 ms  0x299b ret:0x0
  5689 ms  0x299b PR_Connect()
  5689 ms  0x299b fd:0x7f5461523bb0
  5690 ms  0x299b SSL_ImportFD()
  5690 ms  0x299b ret:0x7f5461523be0
  5690 ms  0x299b SSL_AuthCertificateHook()
  5690 ms  0x299b fd:0x7f5461523be0
  5690 ms  0x299b ret:0x0
  5690 ms  0x299b PR_Connect()
  5690 ms  0x299b fd:0x7f5461523be0
  5690 ms  0x299b SSL_ImportFD()
  5690 ms  0x299b ret:0x7f5461523af0
  5690 ms  0x299b SSL_AuthCertificateHook()
  5690 ms  0x299b fd:0x7f5461523af0
  5690 ms  0x299b ret:0x0
  5690 ms  0x299b PR_Connect()
  5690 ms  0x299b fd:0x7f5461523af0
  5690 ms  0x299b SSL_ImportFD()
  5690 ms  0x299b ret:0x7f5461523b50
  5691 ms  0x299b SSL_AuthCertificateHook()
  5691 ms  0x299b fd:0x7f5461523b50
  5691 ms  0x299b ret:0x0
  5691 ms  0x299b PR_Connect()
  5691 ms  0x299b fd:0x7f5461523b50
  5789 ms  0x299b SSL_ImportFD()
  5790 ms  0x299b ret:0x7f54615239d0
  5790 ms  0x299b SSL_AuthCertificateHook()
  5790 ms  0x299b fd:0x7f54615239d0
  5790 ms  0x299b ret:0x0
  5790 ms  0x299b PR_Connect()
  5790 ms  0x299b fd:0x7f54615239d0
           /* TID 0x29a3 */
  5796 ms  0x29a3 PR_Close()
  5796 ms  0x29a3 fd:0x7f5461523a00
           /* TID 0x299b */
  5816 ms  0x299b SECKEY_CreateECPrivateKey()
  5816 ms  0x299b cx:0x7f54727df288
  5818 ms     | 0x299b EC_ValidatePublicKey()
  5818 ms     | 0x299b ret:0x0
  5818 ms  0x299b ret:0x7f54619c3020::7f54619c3020  70 0e 53 61                                      p.Sa
  5818 ms  0x299b SECKEY_CreateECPrivateKey()
  5818 ms  0x299b cx:0x7f54727df288
  5820 ms     | 0x299b EC_ValidatePublicKey()
  5825 ms     | 0x299b ret:0x0
  5825 ms  0x299b ret:0x7f54619c5020::7f54619c5020  b0 ef 6d 61                                      ..ma
  5836 ms  0x299b SECKEY_CreateECPrivateKey()
  5836 ms  0x299b cx:0x7f54727dec08
  5838 ms     | 0x299b EC_ValidatePublicKey()
  5838 ms     | 0x299b ret:0x0
  5838 ms  0x299b ret:0x7f54619c7820::7f54619c7820  50 31 6f 61                                      P1oa
  5839 ms  0x299b SECKEY_CreateECPrivateKey()
  5839 ms  0x299b cx:0x7f54727dec08
  5841 ms     | 0x299b EC_ValidatePublicKey()
  5845 ms     | 0x299b ret:0x0
  5845 ms  0x299b ret:0x7f5461589820::7f5461589820  00 36 6f 61                                      .6oa
  5850 ms  0x299b SECKEY_CreateECPrivateKey()
  5850 ms  0x299b cx:0x7f54727df0e8
  5851 ms     | 0x299b EC_ValidatePublicKey()
  5851 ms     | 0x299b ret:0x0
  5851 ms  0x299b ret:0x7f546158c020::7f546158c020  80 38 6f 61                                      .8oa
  5852 ms  0x299b SECKEY_CreateECPrivateKey()
  5852 ms  0x299b cx:0x7f54727df0e8
  5853 ms     | 0x299b EC_ValidatePublicKey()
  5856 ms     | 0x299b ret:0x0
  5856 ms  0x299b ret:0x7f546158e020::7f546158e020  e0 3c 6f 61                                      .<oa
  5857 ms  0x299b SECKEY_CreateECPrivateKey()
  5857 ms  0x299b cx:0x7f54727def48
  5858 ms     | 0x299b EC_ValidatePublicKey()
  5858 ms     | 0x299b ret:0x0
  5858 ms  0x299b ret:0x7f5461590820::7f5461590820  90 82 8b 61                                      ...a
  5858 ms  0x299b SECKEY_CreateECPrivateKey()
  5858 ms  0x299b cx:0x7f54727def48
  5859 ms     | 0x299b EC_ValidatePublicKey()
  5861 ms     | 0x299b ret:0x0
  5862 ms  0x299b ret:0x7f5461592820::7f5461592820  c0 24 9e 61                                      .$.a
  5862 ms  0x299b SECKEY_CreateECPrivateKey()
  5862 ms  0x299b cx:0x7f54727deda8
  5863 ms     | 0x299b EC_ValidatePublicKey()
  5863 ms     | 0x299b ret:0x0
  5863 ms  0x299b ret:0x7f5461595020::7f5461595020  90 27 9e 61                                      .'.a
  5864 ms  0x299b SECKEY_CreateECPrivateKey()
  5864 ms  0x299b cx:0x7f54727deda8
  5865 ms     | 0x299b EC_ValidatePublicKey()
  5867 ms     | 0x299b ret:0x0
  5867 ms  0x299b ret:0x7f5461597020::7f5461597020  50 2b 9e 61                                      P+.a
           /* TID 0x29f4 */
  5869 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5869 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  5876 ms  0x299b SSL_AuthCertificateComplete()
  5876 ms  0x299b fd:0x7f54615239d0
  5876 ms  0x299b err:0x0
  5877 ms  SECKEY_ECParamsToKeySize()
  5877 ms  0x299b ret:0x100
  5877 ms  0x299b SECKEY_CreateECPrivateKey()
  5877 ms  0x299b cx:0x7f54727df288
  5878 ms     | 0x299b EC_ValidatePublicKey()
  5879 ms     | 0x299b ret:0x0
  5880 ms  0x299b ret:0x7f54615a5820::7f54615a5820  70 94 56 61                                      p.Va
  5880 ms  0x299b PK11_PubDeriveWithKDF()
  5880 ms  0x299b seckey:0x7f54615a5820
  5880 ms     | 0x299b EC_ValidatePublicKey()
  5881 ms     | 0x299b ret:0x0
  5883 ms  0x299b ret:0x7f547cab0c80
  5883 ms  0x299b PK11_DeriveWithFlags()
  5883 ms  0x299b basekey:0x7f547cab0c80
  5883 ms     | 0x299b PK11_DeriveWithTemplate()
  5883 ms  0x299b ret:0x7f5461525a00
  5883 ms  0x299b PK11_Derive()
  5883 ms  0x299b basekey:0x7f5461525a00
  5883 ms     | 0x299b PK11_DeriveWithTemplate()
  5883 ms  0x299b ret:0x7f5461525a80
  5883 ms  0x299b SECKEY_DestroyPrivateKey()
  5883 ms  0x299b privk:0x7f54615a5820::7f54615a5820  70 94 56 61                                      p.Va
  5883 ms  0x299b privk:0x7f54615a5820::7f54615a5820  e5 e5 e5 e5                                      ....
  5883 ms  0x299b PK11_Encrypt()
  5883 ms  0x299b symkey:0x7f5461525c00
  5883 ms  0x299b PK11_Encrypt()
  5883 ms  0x299b symkey:0x7f5461525c00
  5884 ms  0x299b PK11_Encrypt()
  5884 ms  0x299b symkey:0x7f5461525c00
  5912 ms  0x299b SECKEY_DestroyPrivateKey()
  5912 ms  0x299b privk:0x7f54619c5020::7f54619c5020  b0 ef 6d 61                                      ..ma
  5912 ms  0x299b privk:0x7f54619c5020::7f54619c5020  e5 e5 e5 e5                                      ....
  5912 ms  0x299b SECKEY_DestroyPrivateKey()
  5912 ms  0x299b privk:0x7f54619c3020::7f54619c3020  70 0e 53 61                                      p.Sa
  5912 ms  0x299b privk:0x7f54619c3020::7f54619c3020  e5 e5 e5 e5                                      ....
  5912 ms  0x299b PK11_Encrypt()
  5912 ms  0x299b symkey:0x7f5461525c00
           /* TID 0x29a3 */
  5962 ms  0x29a3 PR_Close()
  5962 ms  0x29a3 fd:0x7f5461577040
           /* TID 0x299b */
  5976 ms  0x299b SSL_ImportFD()
  5976 ms  0x299b ret:0x7f54615778b0
  5976 ms  0x299b SSL_AuthCertificateHook()
  5976 ms  0x299b fd:0x7f54615778b0
  5977 ms  0x299b ret:0x0
  5977 ms  0x299b PR_Connect()
  5977 ms  0x299b fd:0x7f54615778b0
  5977 ms  0x299b SSL_ImportFD()
  5977 ms  0x299b ret:0x7f54615778e0
  5977 ms  0x299b SSL_AuthCertificateHook()
  5977 ms  0x299b fd:0x7f54615778e0
  5977 ms  0x299b ret:0x0
  5977 ms  0x299b PR_Connect()
  5977 ms  0x299b fd:0x7f54615778e0
  5977 ms  0x299b SSL_ImportFD()
  5977 ms  0x299b ret:0x7f5461577160
  5977 ms  0x299b SSL_AuthCertificateHook()
  5977 ms  0x299b fd:0x7f5461577160
  5977 ms  0x299b ret:0x0
  5977 ms  0x299b PR_Connect()
  5977 ms  0x299b fd:0x7f5461577160
  5977 ms  0x299b SSL_ImportFD()
  5978 ms  0x299b ret:0x7f54615771c0
  5978 ms  0x299b SSL_AuthCertificateHook()
  5978 ms  0x299b fd:0x7f54615771c0
  5978 ms  0x299b ret:0x0
  5978 ms  0x299b PR_Connect()
  5978 ms  0x299b fd:0x7f54615771c0
  5978 ms  0x299b SSL_ImportFD()
  5978 ms  0x299b ret:0x7f5461577220
  5978 ms  0x299b SSL_AuthCertificateHook()
  5978 ms  0x299b fd:0x7f5461577220
  5978 ms  0x299b ret:0x0
  5978 ms  0x299b PR_Connect()
  5978 ms  0x299b fd:0x7f5461577220
  5978 ms  0x299b SSL_ImportFD()
  5978 ms  0x299b ret:0x7f5461577640
  5978 ms  0x299b SSL_AuthCertificateHook()
  5978 ms  0x299b fd:0x7f5461577640
  5978 ms  0x299b ret:0x0
  5978 ms  0x299b PR_Connect()
  5978 ms  0x299b fd:0x7f5461577640
  5978 ms  0x299b SSL_ImportFD()
  5978 ms  0x299b ret:0x7f54615776a0
  5978 ms  0x299b SSL_AuthCertificateHook()
  5978 ms  0x299b fd:0x7f54615776a0
  5978 ms  0x299b ret:0x0
  5978 ms  0x299b PR_Connect()
  5978 ms  0x299b fd:0x7f54615776a0
  5979 ms  0x299b SSL_ImportFD()
  5979 ms  0x299b ret:0x7f5461577700
  5979 ms  0x299b SSL_AuthCertificateHook()
  5979 ms  0x299b fd:0x7f5461577700
  5979 ms  0x299b ret:0x0
  5979 ms  0x299b PR_Connect()
  5979 ms  0x299b fd:0x7f5461577700
  5979 ms  0x299b SSL_ImportFD()
  5979 ms  0x299b ret:0x7f5461577760
  5979 ms  0x299b SSL_AuthCertificateHook()
  5979 ms  0x299b fd:0x7f5461577760
  5979 ms  0x299b ret:0x0
  5979 ms  0x299b PR_Connect()
  5979 ms  0x299b fd:0x7f5461577760
           /* TID 0x29f4 */
  5993 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5993 ms  0x29f4 ret:0x0
  5993 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5993 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  5993 ms  SECKEY_ECParamsToKeySize()
  5993 ms  0x299b ret:0x100
  5993 ms  0x299b SECKEY_CreateECPrivateKey()
  5993 ms  0x299b cx:0x7f54727dec08
  5994 ms     | 0x299b EC_ValidatePublicKey()
  5996 ms     | 0x299b ret:0x0
  5996 ms  0x299b ret:0x7f54615a8020::7f54615a8020  40 97 56 61                                      @.Va
  5996 ms  0x299b PK11_PubDeriveWithKDF()
  5996 ms  0x299b seckey:0x7f54615a8020
  5996 ms     | 0x299b EC_ValidatePublicKey()
  5998 ms     | 0x299b ret:0x0
  6000 ms  0x299b ret:0x7f547cab0c80
  6000 ms  0x299b PK11_DeriveWithFlags()
  6000 ms  0x299b basekey:0x7f547cab0c80
  6000 ms     | 0x299b PK11_DeriveWithTemplate()
  6000 ms  0x299b ret:0x7f5461203180
  6000 ms  0x299b PK11_Derive()
  6000 ms  0x299b basekey:0x7f5461203180
  6000 ms     | 0x299b PK11_DeriveWithTemplate()
  6000 ms  0x299b ret:0x7f5461203200
  6000 ms  0x299b SECKEY_DestroyPrivateKey()
  6000 ms  0x299b privk:0x7f54615a8020::7f54615a8020  40 97 56 61                                      @.Va
  6000 ms  0x299b privk:0x7f54615a8020::7f54615a8020  e5 e5 e5 e5                                      ....
  6000 ms  0x299b PK11_Encrypt()
  6000 ms  0x299b symkey:0x7f5461203380
  6000 ms  0x299b SSL_AuthCertificateComplete()
  6000 ms  0x299b fd:0x7f5461523bb0
  6000 ms  0x299b err:0x0
  6000 ms  0x299b PK11_Encrypt()
  6000 ms  0x299b symkey:0x7f5461203380
           /* TID 0x29f4 */
  6005 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6005 ms  0x29f4 ret:0x0
  6005 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6005 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6005 ms  SECKEY_ECParamsToKeySize()
  6005 ms  0x299b ret:0x100
  6005 ms  0x299b SECKEY_CreateECPrivateKey()
  6005 ms  0x299b cx:0x7f54727df0e8
  6006 ms     | 0x299b EC_ValidatePublicKey()
  6008 ms     | 0x299b ret:0x0
  6008 ms  0x299b ret:0x7f54618f4820::7f54618f4820  e0 97 56 61                                      ..Va
  6008 ms  0x299b PK11_PubDeriveWithKDF()
  6008 ms  0x299b seckey:0x7f54618f4820
  6008 ms     | 0x299b EC_ValidatePublicKey()
  6009 ms     | 0x299b ret:0x0
  6011 ms  0x299b ret:0x7f547cab0c80
  6011 ms  0x299b PK11_DeriveWithFlags()
  6011 ms  0x299b basekey:0x7f547cab0c80
  6011 ms     | 0x299b PK11_DeriveWithTemplate()
  6011 ms  0x299b ret:0x7f5461203480
  6011 ms  0x299b PK11_Derive()
  6011 ms  0x299b basekey:0x7f5461203480
  6011 ms     | 0x299b PK11_DeriveWithTemplate()
  6011 ms  0x299b ret:0x7f5461203500
  6011 ms  0x299b SECKEY_DestroyPrivateKey()
  6011 ms  0x299b privk:0x7f54618f4820::7f54618f4820  e0 97 56 61                                      ..Va
  6011 ms  0x299b privk:0x7f54618f4820::7f54618f4820  e5 e5 e5 e5                                      ....
  6011 ms  0x299b PK11_Encrypt()
  6011 ms  0x299b symkey:0x7f5461203680
  6011 ms  0x299b SSL_AuthCertificateComplete()
  6011 ms  0x299b fd:0x7f5461523b50
  6011 ms  0x299b err:0x0
  6011 ms  0x299b PK11_Encrypt()
  6011 ms  0x299b symkey:0x7f5461203680
           /* TID 0x29f4 */
  6012 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6012 ms  0x29f4 ret:0x0
  6012 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6013 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6013 ms  SECKEY_ECParamsToKeySize()
  6013 ms  0x299b ret:0x100
  6013 ms  0x299b SECKEY_CreateECPrivateKey()
  6013 ms  0x299b cx:0x7f54727def48
  6013 ms     | 0x299b EC_ValidatePublicKey()
  6015 ms     | 0x299b ret:0x0
  6015 ms  0x299b ret:0x7f54619c0820::7f54619c0820  80 98 56 61                                      ..Va
  6015 ms  0x299b PK11_PubDeriveWithKDF()
  6015 ms  0x299b seckey:0x7f54619c0820
  6015 ms     | 0x299b EC_ValidatePublicKey()
  6017 ms     | 0x299b ret:0x0
  6018 ms  0x299b ret:0x7f547cab0c80
  6018 ms  0x299b PK11_DeriveWithFlags()
  6018 ms  0x299b basekey:0x7f547cab0c80
  6018 ms     | 0x299b PK11_DeriveWithTemplate()
  6018 ms  0x299b ret:0x7f5461203780
  6018 ms  0x299b PK11_Derive()
  6018 ms  0x299b basekey:0x7f5461203780
  6018 ms     | 0x299b PK11_DeriveWithTemplate()
  6018 ms  0x299b ret:0x7f5461203800
  6018 ms  0x299b SECKEY_DestroyPrivateKey()
  6018 ms  0x299b privk:0x7f54619c0820::7f54619c0820  80 98 56 61                                      ..Va
  6018 ms  0x299b privk:0x7f54619c0820::7f54619c0820  e5 e5 e5 e5                                      ....
  6019 ms  0x299b PK11_Encrypt()
  6019 ms  0x299b symkey:0x7f5461203980
  6019 ms  0x299b SSL_AuthCertificateComplete()
  6019 ms  0x299b fd:0x7f5461523af0
  6019 ms  0x299b err:0x0
  6019 ms  0x299b PK11_Encrypt()
  6019 ms  0x299b symkey:0x7f5461203980
           /* TID 0x29f4 */
  6020 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6020 ms  0x29f4 ret:0x0
  6020 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6020 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6020 ms  SECKEY_ECParamsToKeySize()
  6020 ms  0x299b ret:0x100
  6020 ms  0x299b SECKEY_CreateECPrivateKey()
  6020 ms  0x299b cx:0x7f54727deda8
  6021 ms     | 0x299b EC_ValidatePublicKey()
  6022 ms     | 0x299b ret:0x0
  6022 ms  0x299b ret:0x7f54619c2820::7f54619c2820  20 99 56 61                                       .Va
  6022 ms  0x299b PK11_PubDeriveWithKDF()
  6022 ms  0x299b seckey:0x7f54619c2820
  6022 ms     | 0x299b EC_ValidatePublicKey()
  6024 ms     | 0x299b ret:0x0
  6025 ms  0x299b ret:0x7f547cab0c80
  6025 ms  0x299b PK11_DeriveWithFlags()
  6025 ms  0x299b basekey:0x7f547cab0c80
  6025 ms     | 0x299b PK11_DeriveWithTemplate()
  6025 ms  0x299b ret:0x7f5461203a80
  6025 ms  0x299b PK11_Derive()
  6025 ms  0x299b basekey:0x7f5461203a80
  6025 ms     | 0x299b PK11_DeriveWithTemplate()
  6025 ms  0x299b ret:0x7f5461203b00
  6025 ms  0x299b SECKEY_DestroyPrivateKey()
  6025 ms  0x299b privk:0x7f54619c2820::7f54619c2820  20 99 56 61                                       .Va
  6025 ms  0x299b privk:0x7f54619c2820::7f54619c2820  e5 e5 e5 e5                                      ....
  6026 ms  0x299b PK11_Encrypt()
  6026 ms  0x299b symkey:0x7f5461203c80
  6027 ms  0x299b SSL_AuthCertificateComplete()
  6027 ms  0x299b fd:0x7f5461523be0
  6027 ms  0x299b err:0x0
  6027 ms  0x299b PK11_Encrypt()
  6027 ms  0x299b symkey:0x7f5461203c80
  6031 ms  0x299b SECKEY_CreateECPrivateKey()
  6031 ms  0x299b cx:0x7f54727e0e28
  6032 ms     | 0x299b EC_ValidatePublicKey()
  6032 ms     | 0x299b ret:0x0
  6032 ms  0x299b ret:0x7f54619c2820::7f54619c2820  30 98 56 61                                      0.Va
  6032 ms  0x299b SECKEY_CreateECPrivateKey()
  6032 ms  0x299b cx:0x7f54727e0e28
  6033 ms     | 0x299b EC_ValidatePublicKey()
  6034 ms     | 0x299b ret:0x0
  6034 ms  0x299b ret:0x7f54619c4820::7f54619c4820  10 9a 56 61                                      ..Va
  6038 ms  0x299b SECKEY_CreateECPrivateKey()
  6038 ms  0x299b cx:0x7f54727e0c88
  6039 ms     | 0x299b EC_ValidatePublicKey()
  6039 ms     | 0x299b ret:0x0
  6039 ms  0x299b ret:0x7f546126e020::7f546126e020  f0 9b 56 61                                      ..Va
  6039 ms  0x299b SECKEY_CreateECPrivateKey()
  6039 ms  0x299b cx:0x7f54727e0c88
  6039 ms     | 0x299b EC_ValidatePublicKey()
  6041 ms     | 0x299b ret:0x0
  6041 ms  0x299b ret:0x7f5461270020::7f5461270020  c0 9e 56 61                                      ..Va
  6041 ms  0x299b SECKEY_CreateECPrivateKey()
  6041 ms  0x299b cx:0x7f54727e0ae8
  6042 ms     | 0x299b EC_ValidatePublicKey()
  6042 ms     | 0x299b ret:0x0
  6042 ms  0x299b ret:0x7f5461272820::7f5461272820  10 ef 6d 61                                      ..ma
  6042 ms  0x299b SECKEY_CreateECPrivateKey()
  6042 ms  0x299b cx:0x7f54727e0ae8
  6042 ms     | 0x299b EC_ValidatePublicKey()
  6044 ms     | 0x299b ret:0x0
  6044 ms  0x299b ret:0x7f5461274820::7f5461274820  40 82 8b 61                                      @..a
  6044 ms  0x299b SECKEY_CreateECPrivateKey()
  6044 ms  0x299b cx:0x7f54727e0948
  6045 ms     | 0x299b EC_ValidatePublicKey()
  6045 ms     | 0x299b ret:0x0
  6045 ms  0x299b ret:0x7f5461277020::7f5461277020  b0 2f 9e 61                                      ./.a
  6045 ms  0x299b SECKEY_CreateECPrivateKey()
  6045 ms  0x299b cx:0x7f54727e0948
  6045 ms     | 0x299b EC_ValidatePublicKey()
  6047 ms     | 0x299b ret:0x0
  6047 ms  0x299b ret:0x7f5461279020::7f5461279020  40 c7 6f 81                                      @.o.
  6047 ms  0x299b SECKEY_CreateECPrivateKey()
  6047 ms  0x299b cx:0x7f54727e07a8
  6047 ms     | 0x299b EC_ValidatePublicKey()
  6047 ms     | 0x299b ret:0x0
  6047 ms  0x299b ret:0x7f546127b820::7f546127b820  60 ca 6f 81                                      `.o.
  6048 ms  0x299b SECKEY_CreateECPrivateKey()
  6048 ms  0x299b cx:0x7f54727e07a8
  6048 ms     | 0x299b EC_ValidatePublicKey()
  6050 ms     | 0x299b ret:0x0
  6050 ms  0x299b ret:0x7f546127d820::7f546127d820  70 ce 6f 81                                      p.o.
  6050 ms  0x299b SECKEY_CreateECPrivateKey()
  6050 ms  0x299b cx:0x7f54727e0608
  6050 ms     | 0x299b EC_ValidatePublicKey()
  6050 ms     | 0x299b ret:0x0
  6050 ms  0x299b ret:0x7f5461280020::7f5461280020  60 aa af 81                                      `...
  6051 ms  0x299b SECKEY_CreateECPrivateKey()
  6051 ms  0x299b cx:0x7f54727e0608
  6051 ms     | 0x299b EC_ValidatePublicKey()
  6052 ms     | 0x299b ret:0x0
  6053 ms  0x299b ret:0x7f5461282020::7f5461282020  20 ae af 81                                       ...
  6053 ms  0x299b SECKEY_CreateECPrivateKey()
  6053 ms  0x299b cx:0x7f54727e0468
  6053 ms     | 0x299b EC_ValidatePublicKey()
  6053 ms     | 0x299b ret:0x0
  6053 ms  0x299b ret:0x7f5461284820::7f5461284820  b0 40 2b 61                                      .@+a
  6054 ms  0x299b SECKEY_CreateECPrivateKey()
  6054 ms  0x299b cx:0x7f54727e0468
  6054 ms     | 0x299b EC_ValidatePublicKey()
  6056 ms     | 0x299b ret:0x0
  6056 ms  0x299b ret:0x7f5461286820::7f5461286820  90 42 2b 61                                      .B+a
  6056 ms  0x299b SECKEY_CreateECPrivateKey()
  6056 ms  0x299b cx:0x7f54727e02c8
  6056 ms     | 0x299b EC_ValidatePublicKey()
  6056 ms     | 0x299b ret:0x0
  6056 ms  0x299b ret:0x7f5461289020::7f5461289020  d0 43 2b 61                                      .C+a
  6056 ms  0x299b SECKEY_CreateECPrivateKey()
  6056 ms  0x299b cx:0x7f54727e02c8
  6057 ms     | 0x299b EC_ValidatePublicKey()
  6058 ms     | 0x299b ret:0x0
  6058 ms  0x299b ret:0x7f546128b020::7f546128b020  b0 45 2b 61                                      .E+a
  6059 ms  0x299b SECKEY_CreateECPrivateKey()
  6059 ms  0x299b cx:0x7f54727e0128
  6059 ms     | 0x299b EC_ValidatePublicKey()
  6059 ms     | 0x299b ret:0x0
  6059 ms  0x299b ret:0x7f54612ca020::7f54612ca020  f0 46 2b 61                                      .F+a
  6059 ms  0x299b SECKEY_CreateECPrivateKey()
  6059 ms  0x299b cx:0x7f54727e0128
  6060 ms     | 0x299b EC_ValidatePublicKey()
  6061 ms     | 0x299b ret:0x0
  6061 ms  0x299b ret:0x7f54612cc020::7f54612cc020  d0 48 2b 61                                      .H+a
           /* TID 0x29f4 */
  6073 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6073 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6074 ms  SECKEY_ECParamsToKeySize()
  6074 ms  0x299b ret:0x100
  6074 ms  0x299b SECKEY_CreateECPrivateKey()
  6074 ms  0x299b cx:0x7f54727e0e28
  6075 ms     | 0x299b EC_ValidatePublicKey()
  6077 ms     | 0x299b ret:0x0
  6077 ms  0x299b ret:0x7f54612d6820::7f54612d6820  b0 4f 2b 61                                      .O+a
  6077 ms  0x299b PK11_PubDeriveWithKDF()
  6077 ms  0x299b seckey:0x7f54612d6820
  6077 ms     | 0x299b EC_ValidatePublicKey()
  6079 ms     | 0x299b ret:0x0
  6081 ms  0x299b ret:0x7f547cab0c80
  6081 ms  0x299b PK11_DeriveWithFlags()
  6081 ms  0x299b basekey:0x7f547cab0c80
  6081 ms     | 0x299b PK11_DeriveWithTemplate()
  6081 ms  0x299b ret:0x7f5461204000
  6081 ms  0x299b PK11_Derive()
  6081 ms  0x299b basekey:0x7f5461204000
  6081 ms     | 0x299b PK11_DeriveWithTemplate()
  6081 ms  0x299b ret:0x7f5461204080
  6081 ms  0x299b SECKEY_DestroyPrivateKey()
  6081 ms  0x299b privk:0x7f54612d6820::7f54612d6820  b0 4f 2b 61                                      .O+a
  6081 ms  0x299b privk:0x7f54612d6820::7f54612d6820  e5 e5 e5 e5                                      ....
  6081 ms  0x299b PK11_Encrypt()
  6081 ms  0x299b symkey:0x7f5461204200
  6081 ms  0x299b SSL_AuthCertificateComplete()
  6081 ms  0x299b fd:0x7f5461577760
  6081 ms  0x299b err:0x0
  6085 ms  0x299b PK11_Encrypt()
  6085 ms  0x299b symkey:0x7f5461204200
  6085 ms  0x299b PK11_Encrypt()
  6085 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29f4 */
  6086 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6086 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6086 ms  SECKEY_ECParamsToKeySize()
  6086 ms  0x299b ret:0x100
  6086 ms  0x299b SECKEY_CreateECPrivateKey()
  6086 ms  0x299b cx:0x7f54727e0c88
  6087 ms     | 0x299b EC_ValidatePublicKey()
  6088 ms     | 0x299b ret:0x0
  6088 ms  0x299b ret:0x7f54612d6820::7f54612d6820  70 4e 2b 61                                      pN+a
  6088 ms  0x299b PK11_PubDeriveWithKDF()
  6088 ms  0x299b seckey:0x7f54612d6820
  6088 ms     | 0x299b EC_ValidatePublicKey()
  6090 ms     | 0x299b ret:0x0
  6092 ms  0x299b ret:0x7f547cab0c80
  6092 ms  0x299b PK11_DeriveWithFlags()
  6092 ms  0x299b basekey:0x7f547cab0c80
  6092 ms     | 0x299b PK11_DeriveWithTemplate()
  6092 ms  0x299b ret:0x7f5461204380
  6092 ms  0x299b PK11_Derive()
  6092 ms  0x299b basekey:0x7f5461204380
  6092 ms     | 0x299b PK11_DeriveWithTemplate()
  6092 ms  0x299b ret:0x7f5461204400
  6092 ms  0x299b SECKEY_DestroyPrivateKey()
  6092 ms  0x299b privk:0x7f54612d6820::7f54612d6820  70 4e 2b 61                                      pN+a
  6092 ms  0x299b privk:0x7f54612d6820::7f54612d6820  e5 e5 e5 e5                                      ....
  6092 ms  0x299b PK11_Encrypt()
  6092 ms  0x299b symkey:0x7f5461204580
  6092 ms  0x299b PK11_Encrypt()
  6092 ms  0x299b symkey:0x7f5461204200
  6092 ms  0x299b PK11_Encrypt()
  6092 ms  0x299b symkey:0x7f5461204200
  6093 ms  0x299b PK11_Encrypt()
  6093 ms  0x299b symkey:0x7f5461204200
  6093 ms  0x299b SSL_AuthCertificateComplete()
  6093 ms  0x299b fd:0x7f5461577700
  6093 ms  0x299b err:0x0
  6093 ms  0x299b PK11_Encrypt()
  6093 ms  0x299b symkey:0x7f5461204580
           /* TID 0x29f4 */
  6094 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6094 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6094 ms  SECKEY_ECParamsToKeySize()
  6094 ms  0x299b ret:0x100
  6094 ms  0x299b SECKEY_CreateECPrivateKey()
  6094 ms  0x299b cx:0x7f54727e0ae8
  6095 ms     | 0x299b EC_ValidatePublicKey()
  6096 ms     | 0x299b ret:0x0
  6096 ms  0x299b ret:0x7f54612da020::7f54612da020  60 4f 2b 61                                      `O+a
  6096 ms  0x299b PK11_PubDeriveWithKDF()
  6096 ms  0x299b seckey:0x7f54612da020
  6096 ms     | 0x299b EC_ValidatePublicKey()
  6098 ms     | 0x299b ret:0x0
  6099 ms  0x299b ret:0x7f547cab0c80
  6099 ms  0x299b PK11_DeriveWithFlags()
  6099 ms  0x299b basekey:0x7f547cab0c80
  6099 ms     | 0x299b PK11_DeriveWithTemplate()
  6100 ms  0x299b ret:0x7f5461203d80
  6100 ms  0x299b PK11_Derive()
  6100 ms  0x299b basekey:0x7f5461203d80
  6100 ms     | 0x299b PK11_DeriveWithTemplate()
  6100 ms  0x299b ret:0x7f5461204680
  6100 ms  0x299b SECKEY_DestroyPrivateKey()
  6100 ms  0x299b privk:0x7f54612da020::7f54612da020  60 4f 2b 61                                      `O+a
  6100 ms  0x299b privk:0x7f54612da020::7f54612da020  e5 e5 e5 e5                                      ....
  6100 ms  0x299b PK11_Encrypt()
  6100 ms  0x299b symkey:0x7f5461204800
           /* TID 0x29f4 */
  6100 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6100 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6101 ms  SECKEY_ECParamsToKeySize()
  6101 ms  0x299b ret:0x100
  6101 ms  0x299b SECKEY_CreateECPrivateKey()
  6101 ms  0x299b cx:0x7f54727e0948
  6101 ms     | 0x299b EC_ValidatePublicKey()
  6103 ms     | 0x299b ret:0x0
  6103 ms  0x299b ret:0x7f54612da820::7f54612da820  60 60 13 61                                      ``.a
  6103 ms  0x299b PK11_PubDeriveWithKDF()
  6103 ms  0x299b seckey:0x7f54612da820
  6103 ms     | 0x299b EC_ValidatePublicKey()
  6104 ms     | 0x299b ret:0x0
  6106 ms  0x299b ret:0x7f547cab0c80
  6106 ms  0x299b PK11_DeriveWithFlags()
  6106 ms  0x299b basekey:0x7f547cab0c80
  6106 ms     | 0x299b PK11_DeriveWithTemplate()
  6106 ms  0x299b ret:0x7f5461204900
  6106 ms  0x299b PK11_Derive()
  6106 ms  0x299b basekey:0x7f5461204900
  6106 ms     | 0x299b PK11_DeriveWithTemplate()
  6106 ms  0x299b ret:0x7f5461204980
  6106 ms  0x299b SECKEY_DestroyPrivateKey()
  6106 ms  0x299b privk:0x7f54612da820::7f54612da820  60 60 13 61                                      ``.a
  6106 ms  0x299b privk:0x7f54612da820::7f54612da820  e5 e5 e5 e5                                      ....
  6106 ms  0x299b PK11_Encrypt()
  6106 ms  0x299b symkey:0x7f5461204b00
           /* TID 0x29f4 */
  6114 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6114 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6114 ms  SECKEY_ECParamsToKeySize()
  6114 ms  0x299b ret:0x100
  6114 ms  0x299b SECKEY_CreateECPrivateKey()
  6114 ms  0x299b cx:0x7f54727e07a8
  6115 ms     | 0x299b EC_ValidatePublicKey()
  6116 ms     | 0x299b ret:0x0
  6116 ms  0x299b ret:0x7f54612db020::7f54612db020  00 71 20 61                                      .q a
  6116 ms  0x299b PK11_PubDeriveWithKDF()
  6116 ms  0x299b seckey:0x7f54612db020
  6116 ms     | 0x299b EC_ValidatePublicKey()
  6118 ms     | 0x299b ret:0x0
  6119 ms  0x299b ret:0x7f547cab0c80
  6119 ms  0x299b PK11_DeriveWithFlags()
  6119 ms  0x299b basekey:0x7f547cab0c80
  6119 ms     | 0x299b PK11_DeriveWithTemplate()
  6119 ms  0x299b ret:0x7f5461204c80
  6119 ms  0x299b PK11_Derive()
  6119 ms  0x299b basekey:0x7f5461204c80
  6119 ms     | 0x299b PK11_DeriveWithTemplate()
  6119 ms  0x299b ret:0x7f5461204d00
  6119 ms  0x299b SECKEY_DestroyPrivateKey()
  6119 ms  0x299b privk:0x7f54612db020::7f54612db020  00 71 20 61                                      .q a
  6120 ms  0x299b privk:0x7f54612db020::7f54612db020  e5 e5 e5 e5                                      ....
  6120 ms  0x299b PK11_Encrypt()
  6120 ms  0x299b symkey:0x7f5461204e80
           /* TID 0x29f4 */
  6122 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6122 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6122 ms  SECKEY_ECParamsToKeySize()
  6122 ms  0x299b ret:0x100
  6122 ms  0x299b SECKEY_CreateECPrivateKey()
  6122 ms  0x299b cx:0x7f54727e0608
  6122 ms     | 0x299b EC_ValidatePublicKey()
  6124 ms     | 0x299b ret:0x0
  6124 ms  0x299b ret:0x7f54612db820::7f54612db820  90 72 20 61                                      .r a
  6124 ms  0x299b PK11_PubDeriveWithKDF()
  6124 ms  0x299b seckey:0x7f54612db820
  6124 ms     | 0x299b EC_ValidatePublicKey()
  6125 ms     | 0x299b ret:0x0
  6132 ms  0x299b ret:0x7f547cab0c80
  6132 ms  0x299b PK11_DeriveWithFlags()
  6132 ms  0x299b basekey:0x7f547cab0c80
  6132 ms     | 0x299b PK11_DeriveWithTemplate()
  6132 ms  0x299b ret:0x7f5461525880
  6132 ms  0x299b PK11_Derive()
  6132 ms  0x299b basekey:0x7f5461525880
  6132 ms     | 0x299b PK11_DeriveWithTemplate()
  6132 ms  0x299b ret:0x7f5461681080
  6132 ms  0x299b SECKEY_DestroyPrivateKey()
  6132 ms  0x299b privk:0x7f54612db820::7f54612db820  90 72 20 61                                      .r a
  6132 ms  0x299b privk:0x7f54612db820::7f54612db820  e5 e5 e5 e5                                      ....
  6132 ms  0x299b PK11_Encrypt()
  6132 ms  0x299b symkey:0x7f5461681a00
  6133 ms  0x299b SECKEY_DestroyPrivateKey()
  6133 ms  0x299b privk:0x7f54619c4820::7f54619c4820  10 9a 56 61                                      ..Va
  6133 ms  0x299b privk:0x7f54619c4820::7f54619c4820  e5 e5 e5 e5                                      ....
  6133 ms  0x299b SECKEY_DestroyPrivateKey()
  6133 ms  0x299b privk:0x7f54619c2820::7f54619c2820  30 98 56 61                                      0.Va
  6133 ms  0x299b privk:0x7f54619c2820::7f54619c2820  e5 e5 e5 e5                                      ....
  6133 ms  0x299b PK11_Encrypt()
  6133 ms  0x299b symkey:0x7f5461204200
  6133 ms  0x299b SSL_AuthCertificateComplete()
  6133 ms  0x299b fd:0x7f54615776a0
  6133 ms  0x299b err:0x0
  6133 ms  0x299b SSL_AuthCertificateComplete()
  6133 ms  0x299b fd:0x7f5461577640
  6133 ms  0x299b err:0x0
  6133 ms  0x299b SSL_AuthCertificateComplete()
  6133 ms  0x299b fd:0x7f5461577220
  6133 ms  0x299b err:0x0
  6133 ms  0x299b SSL_AuthCertificateComplete()
  6133 ms  0x299b fd:0x7f54615771c0
  6133 ms  0x299b err:0x0
  6133 ms  0x299b SECKEY_DestroyPrivateKey()
  6133 ms  0x299b privk:0x7f5461270020::7f5461270020  c0 9e 56 61                                      ..Va
  6133 ms  0x299b privk:0x7f5461270020::7f5461270020  e5 e5 e5 e5                                      ....
  6133 ms  0x299b SECKEY_DestroyPrivateKey()
  6133 ms  0x299b privk:0x7f546126e020::7f546126e020  f0 9b 56 61                                      ..Va
  6134 ms  0x299b privk:0x7f546126e020::7f546126e020  e5 e5 e5 e5                                      ....
  6134 ms  0x299b PK11_Encrypt()
  6134 ms  0x299b symkey:0x7f5461204800
  6134 ms  0x299b PK11_Encrypt()
  6134 ms  0x299b symkey:0x7f5461204b00
  6135 ms  0x299b PK11_Encrypt()
  6135 ms  0x299b symkey:0x7f5461204e80
  6139 ms  0x299b PK11_Encrypt()
  6139 ms  0x299b symkey:0x7f5461681a00
           /* TID 0x29f4 */
  6140 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6140 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6140 ms  SECKEY_ECParamsToKeySize()
  6140 ms  0x299b ret:0x100
  6140 ms  0x299b SECKEY_CreateECPrivateKey()
  6140 ms  0x299b cx:0x7f54727e0468
  6141 ms     | 0x299b EC_ValidatePublicKey()
  6142 ms     | 0x299b ret:0x0
  6142 ms  0x299b ret:0x7f54612dc820::7f54612dc820  c0 74 20 61                                      .t a
  6142 ms  0x299b PK11_PubDeriveWithKDF()
  6142 ms  0x299b seckey:0x7f54612dc820
  6142 ms     | 0x299b EC_ValidatePublicKey()
  6144 ms     | 0x299b ret:0x0
  6145 ms  0x299b ret:0x7f547cab0c80
  6145 ms  0x299b PK11_DeriveWithFlags()
  6145 ms  0x299b basekey:0x7f547cab0c80
  6145 ms     | 0x299b PK11_DeriveWithTemplate()
  6145 ms  0x299b ret:0x7f54618f8e80
  6145 ms  0x299b PK11_Derive()
  6145 ms  0x299b basekey:0x7f54618f8e80
  6145 ms     | 0x299b PK11_DeriveWithTemplate()
  6145 ms  0x299b ret:0x7f54619d0780
  6145 ms  0x299b SECKEY_DestroyPrivateKey()
  6145 ms  0x299b privk:0x7f54612dc820::7f54612dc820  c0 74 20 61                                      .t a
  6146 ms  0x299b privk:0x7f54612dc820::7f54612dc820  e5 e5 e5 e5                                      ....
  6147 ms  0x299b PK11_Encrypt()
  6147 ms  0x299b symkey:0x7f54619f4f80
           /* TID 0x29f4 */
  6147 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6147 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6148 ms  SECKEY_ECParamsToKeySize()
  6148 ms  0x299b ret:0x100
  6148 ms  0x299b SECKEY_CreateECPrivateKey()
  6148 ms  0x299b cx:0x7f54727e02c8
  6148 ms     | 0x299b EC_ValidatePublicKey()
  6150 ms     | 0x299b ret:0x0
  6150 ms  0x299b ret:0x7f54612dd020::7f54612dd020  40 77 20 61                                      @w a
  6150 ms  0x299b PK11_PubDeriveWithKDF()
  6150 ms  0x299b seckey:0x7f54612dd020
  6150 ms     | 0x299b EC_ValidatePublicKey()
  6151 ms     | 0x299b ret:0x0
  6152 ms  0x299b ret:0x7f547cab0c80
  6153 ms  0x299b PK11_DeriveWithFlags()
  6153 ms  0x299b basekey:0x7f547cab0c80
  6153 ms     | 0x299b PK11_DeriveWithTemplate()
  6153 ms  0x299b ret:0x7f5472593800
  6153 ms  0x299b PK11_Derive()
  6153 ms  0x299b basekey:0x7f5472593800
  6153 ms     | 0x299b PK11_DeriveWithTemplate()
  6153 ms  0x299b ret:0x7f5472759c00
  6153 ms  0x299b SECKEY_DestroyPrivateKey()
  6153 ms  0x299b privk:0x7f54612dd020::7f54612dd020  40 77 20 61                                      @w a
  6153 ms  0x299b privk:0x7f54612dd020::7f54612dd020  e5 e5 e5 e5                                      ....
  6153 ms  0x299b PK11_Encrypt()
  6153 ms  0x299b symkey:0x7f5473ac7380
           /* TID 0x29f4 */
  6153 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6154 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6154 ms  SECKEY_ECParamsToKeySize()
  6154 ms  0x299b ret:0x100
  6154 ms  0x299b SECKEY_CreateECPrivateKey()
  6154 ms  0x299b cx:0x7f54727e0128
  6155 ms     | 0x299b EC_ValidatePublicKey()
  6160 ms     | 0x299b ret:0x0
  6160 ms  0x299b ret:0x7f54612dd820::7f54612dd820  20 79 20 61                                       y a
  6160 ms  0x299b PK11_PubDeriveWithKDF()
  6160 ms  0x299b seckey:0x7f54612dd820
  6160 ms     | 0x299b EC_ValidatePublicKey()
  6162 ms     | 0x299b ret:0x0
  6163 ms  0x299b ret:0x7f547cab0c80
  6163 ms  0x299b PK11_DeriveWithFlags()
  6163 ms  0x299b basekey:0x7f547cab0c80
  6163 ms     | 0x299b PK11_DeriveWithTemplate()
  6163 ms  0x299b ret:0x7f5475544600
  6163 ms  0x299b PK11_Derive()
  6163 ms  0x299b basekey:0x7f5475544600
  6163 ms     | 0x299b PK11_DeriveWithTemplate()
  6163 ms  0x299b ret:0x7f5475544880
  6163 ms  0x299b SECKEY_DestroyPrivateKey()
  6163 ms  0x299b privk:0x7f54612dd820::7f54612dd820  20 79 20 61                                       y a
  6163 ms  0x299b privk:0x7f54612dd820::7f54612dd820  e5 e5 e5 e5                                      ....
  6163 ms  0x299b PK11_Encrypt()
  6163 ms  0x299b symkey:0x7f54755bbb00
  6166 ms  0x299b PR_Close()
  6166 ms  0x299b fd:0x7f5461577700
  6166 ms     | 0x299b PK11_Encrypt()
  6166 ms     | 0x299b symkey:0x7f5461204580
  6166 ms  0x299b PK11_Encrypt()
  6166 ms  0x299b symkey:0x7f5461204200
  6167 ms  0x299b PK11_Encrypt()
  6167 ms  0x299b symkey:0x7f5461204200
  6167 ms  0x299b SSL_AuthCertificateComplete()
  6167 ms  0x299b fd:0x7f5461577160
  6167 ms  0x299b err:0x0
  6167 ms  0x299b SSL_AuthCertificateComplete()
  6167 ms  0x299b fd:0x7f54615778e0
  6167 ms  0x299b err:0x0
  6167 ms  0x299b SSL_AuthCertificateComplete()
  6167 ms  0x299b fd:0x7f54615778b0
  6167 ms  0x299b err:0x0
  6167 ms  0x299b PK11_Encrypt()
  6167 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6168 ms  0x29a3 PR_Close()
  6168 ms  0x29a3 fd:0x7f5461577040
           /* TID 0x299b */
  6169 ms  0x299b SECKEY_DestroyPrivateKey()
  6169 ms  0x299b privk:0x7f546158e020::7f546158e020  e0 3c 6f 61                                      .<oa
  6169 ms  0x299b privk:0x7f546158e020::7f546158e020  e5 e5 e5 e5                                      ....
  6169 ms  0x299b SECKEY_DestroyPrivateKey()
  6169 ms  0x299b privk:0x7f546158c020::7f546158c020  80 38 6f 61                                      .8oa
  6170 ms  0x299b privk:0x7f546158c020::7f546158c020  e5 e5 e5 e5                                      ....
  6170 ms  0x299b SECKEY_DestroyPrivateKey()
  6170 ms  0x299b privk:0x7f5461592820::7f5461592820  c0 24 9e 61                                      .$.a
  6170 ms  0x299b privk:0x7f5461592820::7f5461592820  e5 e5 e5 e5                                      ....
  6170 ms  0x299b SECKEY_DestroyPrivateKey()
  6170 ms  0x299b privk:0x7f5461590820::7f5461590820  90 82 8b 61                                      ...a
  6170 ms  0x299b privk:0x7f5461590820::7f5461590820  e5 e5 e5 e5                                      ....
  6170 ms  0x299b SECKEY_DestroyPrivateKey()
  6170 ms  0x299b privk:0x7f5461589820::7f5461589820  00 36 6f 61                                      .6oa
  6170 ms  0x299b privk:0x7f5461589820::7f5461589820  e5 e5 e5 e5                                      ....
  6170 ms  0x299b SECKEY_DestroyPrivateKey()
  6170 ms  0x299b privk:0x7f54619c7820::7f54619c7820  50 31 6f 61                                      P1oa
  6170 ms  0x299b privk:0x7f54619c7820::7f54619c7820  e5 e5 e5 e5                                      ....
  6170 ms  0x299b PK11_Encrypt()
  6170 ms  0x299b symkey:0x7f5461204200
  6171 ms  0x299b PK11_Encrypt()
  6171 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6172 ms  0x29a3 PR_Close()
  6172 ms  0x29a3 fd:0x7f5461523ca0
           /* TID 0x299b */
  6173 ms  0x299b PK11_Encrypt()
  6173 ms  0x299b symkey:0x7f54755bbb00
  6173 ms  0x299b SECKEY_DestroyPrivateKey()
  6173 ms  0x299b privk:0x7f5461274820::7f5461274820  40 82 8b 61                                      @..a
  6174 ms  0x299b privk:0x7f5461274820::7f5461274820  e5 e5 e5 e5                                      ....
  6174 ms  0x299b SECKEY_DestroyPrivateKey()
  6174 ms  0x299b privk:0x7f5461272820::7f5461272820  10 ef 6d 61                                      ..ma
  6174 ms  0x299b privk:0x7f5461272820::7f5461272820  e5 e5 e5 e5                                      ....
  6174 ms  0x299b SECKEY_DestroyPrivateKey()
  6174 ms  0x299b privk:0x7f5461279020::7f5461279020  40 c7 6f 81                                      @.o.
  6174 ms  0x299b privk:0x7f5461279020::7f5461279020  e5 e5 e5 e5                                      ....
  6174 ms  0x299b SECKEY_DestroyPrivateKey()
  6174 ms  0x299b privk:0x7f5461277020::7f5461277020  b0 2f 9e 61                                      ./.a
  6174 ms  0x299b privk:0x7f5461277020::7f5461277020  e5 e5 e5 e5                                      ....
  6174 ms  0x299b SECKEY_DestroyPrivateKey()
  6174 ms  0x299b privk:0x7f546127d820::7f546127d820  70 ce 6f 81                                      p.o.
  6174 ms  0x299b privk:0x7f546127d820::7f546127d820  e5 e5 e5 e5                                      ....
  6174 ms  0x299b SECKEY_DestroyPrivateKey()
  6174 ms  0x299b privk:0x7f546127b820::7f546127b820  60 ca 6f 81                                      `.o.
  6174 ms  0x299b privk:0x7f546127b820::7f546127b820  e5 e5 e5 e5                                      ....
  6175 ms  0x299b SECKEY_DestroyPrivateKey()
  6175 ms  0x299b privk:0x7f5461282020::7f5461282020  20 ae af 81                                       ...
  6175 ms  0x299b privk:0x7f5461282020::7f5461282020  e5 e5 e5 e5                                      ....
  6175 ms  0x299b SECKEY_DestroyPrivateKey()
  6175 ms  0x299b privk:0x7f5461280020::7f5461280020  60 aa af 81                                      `...
  6175 ms  0x299b privk:0x7f5461280020::7f5461280020  e5 e5 e5 e5                                      ....
  6175 ms  0x299b PK11_Encrypt()
  6175 ms  0x299b symkey:0x7f54619f4f80
  6175 ms  0x299b PK11_Encrypt()
  6175 ms  0x299b symkey:0x7f5473ac7380
  6175 ms  0x299b PR_Close()
  6175 ms  0x299b fd:0x7f54615771c0
  6175 ms     | 0x299b PK11_Encrypt()
  6175 ms     | 0x299b symkey:0x7f5461681a00
  6175 ms  0x299b PR_Close()
  6175 ms  0x299b fd:0x7f5461577220
  6176 ms     | 0x299b PK11_Encrypt()
  6176 ms     | 0x299b symkey:0x7f5461204e80
  6176 ms  0x299b PR_Close()
  6176 ms  0x299b fd:0x7f5461577640
  6176 ms     | 0x299b PK11_Encrypt()
  6176 ms     | 0x299b symkey:0x7f5461204b00
  6176 ms  0x299b PR_Close()
  6176 ms  0x299b fd:0x7f54615776a0
  6176 ms     | 0x299b PK11_Encrypt()
  6176 ms     | 0x299b symkey:0x7f5461204800
  6177 ms  0x299b PK11_Encrypt()
  6177 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6178 ms  0x29a3 PR_Close()
  6178 ms  0x29a3 fd:0x7f5461523040
           /* TID 0x299b */
  6179 ms  0x299b SECKEY_DestroyPrivateKey()
  6179 ms  0x299b privk:0x7f5461597020::7f5461597020  50 2b 9e 61                                      P+.a
  6179 ms  0x299b privk:0x7f5461597020::7f5461597020  e5 e5 e5 e5                                      ....
  6179 ms  0x299b SECKEY_DestroyPrivateKey()
  6179 ms  0x299b privk:0x7f5461595020::7f5461595020  90 27 9e 61                                      .'.a
  6179 ms  0x299b privk:0x7f5461595020::7f5461595020  e5 e5 e5 e5                                      ....
  6179 ms  0x299b PK11_Encrypt()
  6179 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6180 ms  0x29a3 PR_Close()
  6180 ms  0x29a3 fd:0x7f5461523040
           /* TID 0x299b */
  6181 ms  0x299b PK11_Encrypt()
  6181 ms  0x299b symkey:0x7f5461204200
  6181 ms  0x299b PK11_Encrypt()
  6181 ms  0x299b symkey:0x7f5461204200
  6183 ms  0x299b SECKEY_DestroyPrivateKey()
  6183 ms  0x299b privk:0x7f5461286820::7f5461286820  90 42 2b 61                                      .B+a
  6184 ms  0x299b privk:0x7f5461286820::7f5461286820  e5 e5 e5 e5                                      ....
  6184 ms  0x299b SECKEY_DestroyPrivateKey()
  6184 ms  0x299b privk:0x7f5461284820::7f5461284820  b0 40 2b 61                                      .@+a
  6184 ms  0x299b privk:0x7f5461284820::7f5461284820  e5 e5 e5 e5                                      ....
  6184 ms  0x299b PR_Close()
  6184 ms  0x299b fd:0x7f5461577160
  6184 ms     | 0x299b PK11_Encrypt()
  6184 ms     | 0x299b symkey:0x7f54619f4f80
           /* TID 0x29a3 */
  6196 ms  0x29a3 PR_Close()
  6196 ms  0x29a3 fd:0x7f5461523040
           /* TID 0x299b */
  6196 ms  0x299b SECKEY_DestroyPrivateKey()
  6196 ms  0x299b privk:0x7f546128b020::7f546128b020  b0 45 2b 61                                      .E+a
  6196 ms  0x299b privk:0x7f546128b020::7f546128b020  e5 e5 e5 e5                                      ....
  6197 ms  0x299b SECKEY_DestroyPrivateKey()
  6197 ms  0x299b privk:0x7f5461289020::7f5461289020  d0 43 2b 61                                      .C+a
  6197 ms  0x299b privk:0x7f5461289020::7f5461289020  e5 e5 e5 e5                                      ....
  6197 ms  0x299b PR_Close()
  6197 ms  0x299b fd:0x7f54615778e0
  6197 ms     | 0x299b PK11_Encrypt()
  6197 ms     | 0x299b symkey:0x7f5473ac7380
  6200 ms  0x299b SECKEY_DestroyPrivateKey()
  6200 ms  0x299b privk:0x7f54612cc020::7f54612cc020  d0 48 2b 61                                      .H+a
  6200 ms  0x299b privk:0x7f54612cc020::7f54612cc020  e5 e5 e5 e5                                      ....
  6201 ms  0x299b SECKEY_DestroyPrivateKey()
  6201 ms  0x299b privk:0x7f54612ca020::7f54612ca020  f0 46 2b 61                                      .F+a
  6201 ms  0x299b privk:0x7f54612ca020::7f54612ca020  e5 e5 e5 e5                                      ....
  6201 ms  0x299b PR_Close()
  6201 ms  0x299b fd:0x7f54615778b0
  6201 ms     | 0x299b PK11_Encrypt()
  6201 ms     | 0x299b symkey:0x7f54755bbb00
           /* TID 0x29a3 */
  6278 ms  0x29a3 PR_Close()
  6278 ms  0x29a3 fd:0x7f5461523190
  6281 ms  0x29a3 PR_Close()
  6281 ms  0x29a3 fd:0x7f5461523580
  6289 ms  0x29a3 PR_Close()
  6289 ms  0x29a3 fd:0x7f5461523040
           /* TID 0x299b */
  6291 ms  0x299b PK11_Encrypt()
  6291 ms  0x299b symkey:0x7f54755bc100
  6293 ms  0x299b PK11_Encrypt()
  6293 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6308 ms  0x29a3 PR_Close()
  6308 ms  0x29a3 fd:0x7f5461577160
  6316 ms  0x29a3 PR_Close()
  6316 ms  0x29a3 fd:0x7f5461523250
  6317 ms  0x29a3 PR_Close()
  6317 ms  0x29a3 fd:0x7f5461523250
  6319 ms  0x29a3 PR_Close()
  6319 ms  0x29a3 fd:0x7f5461577130
  6322 ms  0x29a3 PR_Close()
  6322 ms  0x29a3 fd:0x7f5461523490
           /* TID 0x299b */
  6323 ms  0x299b PK11_Encrypt()
  6323 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6345 ms  0x29a3 PR_Close()
  6345 ms  0x29a3 fd:0x7f5461523640
           /* TID 0x299b */
  6356 ms  0x299b PK11_Encrypt()
  6356 ms  0x299b symkey:0x7f5461204200
  6357 ms  0x299b PK11_Encrypt()
  6357 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6373 ms  0x29a3 PR_Close()
  6373 ms  0x29a3 fd:0x7f5461523250
  6411 ms  0x29a3 PR_Close()
  6411 ms  0x29a3 fd:0x7f5461523250
  6412 ms  0x29a3 PR_Close()
  6412 ms  0x29a3 fd:0x7f5461523250
  6444 ms  0x29a3 PR_Close()
  6444 ms  0x29a3 fd:0x7f5461577190
           /* TID 0x299b */
  6474 ms  0x299b SSL_ImportFD()
  6474 ms  0x299b ret:0x7f5461577640
  6474 ms  0x299b SSL_AuthCertificateHook()
  6474 ms  0x299b fd:0x7f5461577640
  6474 ms  0x299b ret:0x0
  6474 ms  0x299b PR_Connect()
  6474 ms  0x299b fd:0x7f5461577640
  6477 ms  0x299b PK11_Encrypt()
  6477 ms  0x299b symkey:0x7f5461204200
  6478 ms  0x299b PK11_Encrypt()
  6478 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6519 ms  0x29a3 PR_Close()
  6519 ms  0x29a3 fd:0x7f54615774c0
           /* TID 0x299b */
  6539 ms  0x299b SSL_ImportFD()
  6540 ms  0x299b ret:0x7f5461577c10
  6540 ms  0x299b SSL_AuthCertificateHook()
  6540 ms  0x299b fd:0x7f5461577c10
  6540 ms  0x299b ret:0x0
  6540 ms  0x299b PK11_Encrypt()
  6540 ms  0x299b symkey:0x7f5461525c00
  6540 ms  0x299b PR_Connect()
  6540 ms  0x299b fd:0x7f5461577c10
           /* TID 0x29a3 */
  6556 ms  0x29a3 PR_Close()
  6556 ms  0x29a3 fd:0x7f54615774c0
           /* TID 0x299b */
  6566 ms  0x299b SECKEY_CreateECPrivateKey()
  6566 ms  0x299b cx:0x7f5461143f48
  6566 ms     | 0x299b EC_ValidatePublicKey()
  6566 ms     | 0x299b ret:0x0
  6566 ms  0x299b ret:0x7f5461279020::7f5461279020  40 7c 20 61                                      @| a
  6566 ms  0x299b SECKEY_CreateECPrivateKey()
  6566 ms  0x299b cx:0x7f5461143f48
  6567 ms     | 0x299b EC_ValidatePublicKey()
  6569 ms     | 0x299b ret:0x0
  6569 ms  0x299b ret:0x7f546127b020::7f546127b020  80 4d 2b 61                                      .M+a
           /* TID 0x29a3 */
  6572 ms  0x29a3 PR_Close()
  6572 ms  0x29a3 fd:0x7f54615774c0
           /* TID 0x29f4 */
  6597 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6597 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6597 ms  0x299b SSL_AuthCertificateComplete()
  6597 ms  0x299b fd:0x7f5461577c10
  6597 ms  0x299b err:0x0
  6620 ms  SECKEY_ECParamsToKeySize()
  6620 ms  0x299b ret:0x100
  6620 ms  0x299b SECKEY_CreateECPrivateKey()
  6620 ms  0x299b cx:0x7f5461143f48
  6620 ms     | 0x299b EC_ValidatePublicKey()
  6622 ms     | 0x299b ret:0x0
  6622 ms  0x299b ret:0x7f546127e020::7f546127e020  40 02 53 61                                      @.Sa
  6622 ms  0x299b PK11_PubDeriveWithKDF()
  6622 ms  0x299b seckey:0x7f546127e020
  6622 ms     | 0x299b EC_ValidatePublicKey()
  6627 ms     | 0x299b ret:0x0
  6628 ms  0x299b ret:0x7f5475544880
  6628 ms  0x299b PK11_DeriveWithFlags()
  6628 ms  0x299b basekey:0x7f5475544880
  6628 ms     | 0x299b PK11_DeriveWithTemplate()
  6628 ms  0x299b ret:0x7f5475544600
  6628 ms  0x299b PK11_Derive()
  6628 ms  0x299b basekey:0x7f5475544600
  6628 ms     | 0x299b PK11_DeriveWithTemplate()
  6629 ms  0x299b ret:0x7f5472759c00
  6629 ms  0x299b SECKEY_DestroyPrivateKey()
  6629 ms  0x299b privk:0x7f546127e020::7f546127e020  40 02 53 61                                      @.Sa
  6629 ms  0x299b privk:0x7f546127e020::7f546127e020  e5 e5 e5 e5                                      ....
  6629 ms  0x299b PK11_Encrypt()
  6629 ms  0x299b symkey:0x7f54755bb680
  6629 ms  0x299b PK11_Encrypt()
  6629 ms  0x299b symkey:0x7f54755bb680
  6629 ms  0x299b SECKEY_CreateECPrivateKey()
  6629 ms  0x299b cx:0x7f5461143c08
  6630 ms     | 0x299b EC_ValidatePublicKey()
  6630 ms     | 0x299b ret:0x0
  6630 ms  0x299b ret:0x7f546127f020::7f546127f020  60 00 53 61                                      `.Sa
  6630 ms  0x299b SECKEY_CreateECPrivateKey()
  6630 ms  0x299b cx:0x7f5461143c08
  6631 ms     | 0x299b EC_ValidatePublicKey()
  6632 ms     | 0x299b ret:0x0
  6632 ms  0x299b ret:0x7f5461281020::7f5461281020  d0 03 53 61                                      ..Sa
  6650 ms  0x299b SSL_ImportFD()
  6650 ms  0x299b ret:0x7f54615775b0
  6650 ms  0x299b SSL_AuthCertificateHook()
  6650 ms  0x299b fd:0x7f54615775b0
  6650 ms  0x299b ret:0x0
  6651 ms  0x299b PK11_Encrypt()
  6651 ms  0x299b symkey:0x7f5461204200
  6651 ms  0x299b PR_Connect()
  6651 ms  0x299b fd:0x7f54615775b0
  6654 ms  0x299b SECKEY_DestroyPrivateKey()
  6654 ms  0x299b privk:0x7f546127b020::7f546127b020  80 4d 2b 61                                      .M+a
  6655 ms  0x299b privk:0x7f546127b020::7f546127b020  e5 e5 e5 e5                                      ....
  6655 ms  0x299b SECKEY_DestroyPrivateKey()
  6655 ms  0x299b privk:0x7f5461279020::7f5461279020  40 7c 20 61                                      @| a
  6655 ms  0x299b privk:0x7f5461279020::7f5461279020  e5 e5 e5 e5                                      ....
  6655 ms  0x299b PR_Close()
  6655 ms  0x299b fd:0x7f5461577c10
  6655 ms     | 0x299b PK11_Encrypt()
  6655 ms     | 0x299b symkey:0x7f54755bb680
  6656 ms  0x299b PK11_Encrypt()
  6656 ms  0x299b symkey:0x7f5461204200
  6657 ms  0x299b PK11_Encrypt()
  6657 ms  0x299b symkey:0x7f5461204200
  6658 ms  0x299b PK11_Encrypt()
  6658 ms  0x299b symkey:0x7f5461204200
  6659 ms  0x299b PK11_Encrypt()
  6659 ms  0x299b symkey:0x7f5461204200
  6660 ms  0x299b PK11_Encrypt()
  6660 ms  0x299b symkey:0x7f5461204200
  6661 ms  0x299b PK11_Encrypt()
  6661 ms  0x299b symkey:0x7f5461204200
  6662 ms  0x299b PK11_Encrypt()
  6662 ms  0x299b symkey:0x7f5461204200
  6664 ms  0x299b SSL_ImportFD()
  6664 ms  0x299b ret:0x7f546199bbe0
  6664 ms  0x299b SSL_AuthCertificateHook()
  6664 ms  0x299b fd:0x7f546199bbe0
  6664 ms  0x299b ret:0x0
  6664 ms  0x299b PR_Connect()
  6664 ms  0x299b fd:0x7f546199bbe0
  6672 ms  0x299b PK11_Encrypt()
  6672 ms  0x299b symkey:0x7f5461204200
  6687 ms  0x299b SECKEY_CreateECPrivateKey()
  6687 ms  0x299b cx:0x7f5461144428
  6688 ms     | 0x299b EC_ValidatePublicKey()
  6688 ms     | 0x299b ret:0x0
  6688 ms  0x299b ret:0x7f5461285820::7f5461285820  20 94 56 61                                       .Va
  6688 ms  0x299b SECKEY_CreateECPrivateKey()
  6688 ms  0x299b cx:0x7f5461144428
  6689 ms     | 0x299b EC_ValidatePublicKey()
  6691 ms     | 0x299b ret:0x0
  6691 ms  0x299b ret:0x7f5461287820::7f5461287820  20 99 56 61                                       .Va
           /* TID 0x29a3 */
  6697 ms  0x29a3 PR_Close()
  6697 ms  0x29a3 fd:0x7f5461577190
  6727 ms  0x29a3 PR_Close()
  6727 ms  0x29a3 fd:0x7f5461577190
           /* TID 0x299b */
  6729 ms  SECKEY_ECParamsToKeySize()
  6729 ms  0x299b ret:0x100
  6729 ms  0x299b SECKEY_CreateECPrivateKey()
  6729 ms  0x299b cx:0x7f5461144428
  6729 ms     | 0x299b EC_ValidatePublicKey()
           /* TID 0x29a3 */
  6735 ms  0x29a3 PR_Close()
  6735 ms  0x29a3 fd:0x7f5461577490
  6736 ms  0x29a3 PR_Close()
  6736 ms  0x29a3 fd:0x7f5461577490
  6736 ms  0x29a3 PR_Close()
  6736 ms  0x29a3 fd:0x7f5461577490
           /* TID 0x299b */
  6738 ms     | 0x299b ret:0x0
           /* TID 0x29f4 */
  6738 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6738 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6747 ms  0x299b ret:0x7f5461288020::7f5461288020  10 7a 20 61                                      .z a
  6747 ms  0x299b PK11_PubDeriveWithKDF()
  6747 ms  0x299b seckey:0x7f5461288020
  6747 ms     | 0x299b EC_ValidatePublicKey()
  6749 ms     | 0x299b ret:0x0
  6750 ms  0x299b ret:0x7f5472759c00
  6750 ms  0x299b PK11_DeriveWithFlags()
  6750 ms  0x299b basekey:0x7f5472759c00
  6750 ms     | 0x299b PK11_DeriveWithTemplate()
  6750 ms  0x299b ret:0x7f5475544600
  6750 ms  0x299b PK11_Derive()
  6750 ms  0x299b basekey:0x7f5475544600
  6750 ms     | 0x299b PK11_DeriveWithTemplate()
  6750 ms  0x299b ret:0x7f5475544880
  6750 ms  0x299b SECKEY_DestroyPrivateKey()
  6750 ms  0x299b privk:0x7f5461288020::7f5461288020  10 7a 20 61                                      .z a
  6750 ms  0x299b privk:0x7f5461288020::7f5461288020  e5 e5 e5 e5                                      ....
  6750 ms  0x299b PK11_Encrypt()
  6750 ms  0x299b symkey:0x7f54755bb780
  6752 ms  0x299b SSL_AuthCertificateComplete()
  6752 ms  0x299b fd:0x7f54615775b0
  6752 ms  0x299b err:0x0
           /* TID 0x29a3 */
  6754 ms  0x29a3 PR_Close()
  6754 ms  0x29a3 fd:0x7f5461577610
           /* TID 0x299b */
  6756 ms  0x299b PK11_Encrypt()
  6756 ms  0x299b symkey:0x7f54755bb780
           /* TID 0x29a3 */
  6757 ms  0x29a3 PR_Close()
  6757 ms  0x29a3 fd:0x7f5461577610
  6758 ms  0x29a3 PR_Close()
  6758 ms  0x29a3 fd:0x7f5461577610
  6759 ms  0x29a3 PR_Close()
  6759 ms  0x29a3 fd:0x7f5461577610
           /* TID 0x299b */
  6777 ms  0x299b PK11_Encrypt()
  6777 ms  0x299b symkey:0x7f5461203380
  6780 ms  0x299b PK11_Encrypt()
  6780 ms  0x299b symkey:0x7f5461203680
  6781 ms  0x299b PK11_Encrypt()
  6781 ms  0x299b symkey:0x7f5461203980
  6783 ms  SECKEY_ECParamsToKeySize()
  6783 ms  0x299b ret:0x100
  6783 ms  0x299b SECKEY_CreateECPrivateKey()
  6783 ms  0x299b cx:0x7f5461143c08
  6784 ms     | 0x299b EC_ValidatePublicKey()
  6785 ms     | 0x299b ret:0x0
  6785 ms  0x299b ret:0x7f546128a820::7f546128a820  f0 0b 53 61                                      ..Sa
  6786 ms  0x299b PK11_PubDeriveWithKDF()
  6786 ms  0x299b seckey:0x7f546128a820
  6786 ms     | 0x299b EC_ValidatePublicKey()
           /* TID 0x29f4 */
  6789 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6789 ms  0x29f4 ret:0x0
  6789 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6789 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  6797 ms     | 0x299b ret:0x0
  6799 ms  0x299b ret:0x7f5472759c00
  6799 ms  0x299b PK11_DeriveWithFlags()
  6799 ms  0x299b basekey:0x7f5472759c00
  6799 ms     | 0x299b PK11_DeriveWithTemplate()
  6799 ms  0x299b ret:0x7f5472593800
  6799 ms  0x299b PK11_Derive()
  6799 ms  0x299b basekey:0x7f5472593800
  6799 ms     | 0x299b PK11_DeriveWithTemplate()
  6799 ms  0x299b ret:0x7f54619d0780
  6799 ms  0x299b SECKEY_DestroyPrivateKey()
  6799 ms  0x299b privk:0x7f546128a820::7f546128a820  f0 0b 53 61                                      ..Sa
  6799 ms  0x299b privk:0x7f546128a820::7f546128a820  e5 e5 e5 e5                                      ....
  6799 ms  0x299b PK11_Encrypt()
  6799 ms  0x299b symkey:0x7f547286f400
  6801 ms  0x299b SSL_AuthCertificateComplete()
  6801 ms  0x299b fd:0x7f5461577640
  6801 ms  0x299b err:0x0
  6801 ms  0x299b PK11_Encrypt()
  6801 ms  0x299b symkey:0x7f547286f400
  6801 ms  0x299b SECKEY_DestroyPrivateKey()
  6801 ms  0x299b privk:0x7f5461287820::7f5461287820  20 99 56 61                                       .Va
  6801 ms  0x299b privk:0x7f5461287820::7f5461287820  e5 e5 e5 e5                                      ....
  6801 ms  0x299b SECKEY_DestroyPrivateKey()
  6801 ms  0x299b privk:0x7f5461285820::7f5461285820  20 94 56 61                                       .Va
  6802 ms  0x299b privk:0x7f5461285820::7f5461285820  e5 e5 e5 e5                                      ....
  6802 ms  0x299b PR_Close()
  6802 ms  0x299b fd:0x7f54615775b0
  6802 ms     | 0x299b PK11_Encrypt()
  6802 ms     | 0x299b symkey:0x7f54755bb780
  6808 ms  0x299b SECKEY_CreateECPrivateKey()
  6808 ms  0x299b cx:0x7f5461143f48
  6809 ms     | 0x299b EC_ValidatePublicKey()
  6809 ms     | 0x299b ret:0x0
  6809 ms  0x299b ret:0x7f5461284820::7f5461284820  c0 09 53 61                                      ..Sa
  6809 ms  0x299b SECKEY_CreateECPrivateKey()
  6809 ms  0x299b cx:0x7f5461143f48
  6809 ms     | 0x299b EC_ValidatePublicKey()
  6811 ms     | 0x299b ret:0x0
  6811 ms  0x299b ret:0x7f5461286820::7f5461286820  d0 93 56 61                                      ..Va
  6843 ms  0x299b PK11_Encrypt()
  6843 ms  0x299b symkey:0x7f5461204200
  6844 ms  0x299b PK11_Encrypt()
  6844 ms  0x299b symkey:0x7f5461204200
  6845 ms  0x299b PK11_Encrypt()
  6845 ms  0x299b symkey:0x7f5461204200
  6846 ms  0x299b PK11_Encrypt()
  6846 ms  0x299b symkey:0x7f5461204200
  6847 ms  0x299b PK11_Encrypt()
  6847 ms  0x299b symkey:0x7f5461204200
  6848 ms  0x299b PK11_Encrypt()
  6848 ms  0x299b symkey:0x7f5461204200
  6850 ms  0x299b PK11_Encrypt()
  6850 ms  0x299b symkey:0x7f5461204200
  6851 ms  0x299b PK11_Encrypt()
  6851 ms  0x299b symkey:0x7f5461204200
  6851 ms  0x299b SSL_ImportFD()
  6851 ms  0x299b ret:0x7f54725838e0
  6851 ms  0x299b SSL_AuthCertificateHook()
  6851 ms  0x299b fd:0x7f54725838e0
  6851 ms  0x299b ret:0x0
  6851 ms  0x299b PR_Connect()
  6851 ms  0x299b fd:0x7f54725838e0
  6852 ms  0x299b PK11_Encrypt()
  6852 ms  0x299b symkey:0x7f5461204200
  6856 ms  0x299b PK11_Encrypt()
  6856 ms  0x299b symkey:0x7f5461204200
  6859 ms  0x299b PK11_Encrypt()
  6859 ms  0x299b symkey:0x7f5461204200
           /* TID 0x29a3 */
  6924 ms  0x29a3 PR_Close()
  6924 ms  0x29a3 fd:0x7f5461577670
  6930 ms  0x29a3 PR_Close()
  6930 ms  0x29a3 fd:0x7f5461577670
  6932 ms  0x29a3 PR_Close()
  6932 ms  0x29a3 fd:0x7f5461577670
  6934 ms  0x29a3 PR_Close()
  6934 ms  0x29a3 fd:0x7f5461577670
           /* TID 0x299b */
  6934 ms  0x299b SSL_ImportFD()
  6934 ms  0x299b ret:0x7f5472583cd0
  6934 ms  0x299b SSL_AuthCertificateHook()
  6934 ms  0x299b fd:0x7f5472583cd0
  6934 ms  0x299b ret:0x0
  6934 ms  0x299b PR_Connect()
  6934 ms  0x299b fd:0x7f5472583cd0
  6949 ms  0x299b SECKEY_DestroyPrivateKey()
  6949 ms  0x299b privk:0x7f5461281020::7f5461281020  d0 03 53 61                                      ..Sa
  6949 ms  0x299b privk:0x7f5461281020::7f5461281020  e5 e5 e5 e5                                      ....
  6949 ms  0x299b SECKEY_DestroyPrivateKey()
  6949 ms  0x299b privk:0x7f546127f020::7f546127f020  60 00 53 61                                      `.Sa
  6949 ms  0x299b privk:0x7f546127f020::7f546127f020  e5 e5 e5 e5                                      ....
           /* TID 0x29a3 */
  6956 ms  0x29a3 PR_Close()
  6956 ms  0x29a3 fd:0x7f5461577730
  6959 ms  0x29a3 PR_Close()
  6959 ms  0x29a3 fd:0x7f5461577730
  6960 ms  0x29a3 PR_Close()
  6960 ms  0x29a3 fd:0x7f5461577730
  6963 ms  0x29a3 PR_Close()
  6963 ms  0x29a3 fd:0x7f5461577730
  6965 ms  0x29a3 PR_Close()
  6965 ms  0x29a3 fd:0x7f5461577730
  6967 ms  0x29a3 PR_Close()
  6967 ms  0x29a3 fd:0x7f546199bd90
  6978 ms  0x29a3 PR_Close()
  6978 ms  0x29a3 fd:0x7f5461577e80
  6984 ms  0x29a3 PR_Close()
  6984 ms  0x29a3 fd:0x7f5472583be0
  6985 ms  0x29a3 PR_Close()
  6985 ms  0x29a3 fd:0x7f5461577730
           /* TID 0x299b */
  6998 ms  0x299b SECKEY_CreateECPrivateKey()
  6998 ms  0x299b cx:0x7f5461144428
  6998 ms     | 0x299b EC_ValidatePublicKey()
  6998 ms     | 0x299b ret:0x0
  6998 ms  0x299b ret:0x7f546127f820::7f546127f820  70 7e 20 61                                      p~ a
  6998 ms  0x299b SECKEY_CreateECPrivateKey()
  6998 ms  0x299b cx:0x7f5461144428
  6999 ms     | 0x299b EC_ValidatePublicKey()
  7000 ms     | 0x299b ret:0x0
  7000 ms  0x299b ret:0x7f5461287820::7f5461287820  00 01 53 61                                      ..Sa
  7080 ms  0x299b SECKEY_CreateECPrivateKey()
  7080 ms  0x299b cx:0x7f5461144aa8
  7080 ms     | 0x299b EC_ValidatePublicKey()
  7080 ms     | 0x299b ret:0x0
  7080 ms  0x299b ret:0x7f546128c020::7f546128c020  30 98 56 61                                      0.Va
  7081 ms  0x299b SECKEY_CreateECPrivateKey()
  7081 ms  0x299b cx:0x7f5461144aa8
  7081 ms     | 0x299b EC_ValidatePublicKey()
  7082 ms     | 0x299b ret:0x0
  7082 ms  0x299b ret:0x7f54612cc020::7f54612cc020  00 9b 56 61                                      ..Va
           /* TID 0x29a3 */
  7099 ms  0x29a3 PR_Close()
  7099 ms  0x29a3 fd:0x7f54615232b0
           /* TID 0x299b */
  7099 ms  SECKEY_ECParamsToKeySize()
  7099 ms  0x299b ret:0x100
  7099 ms  0x299b SECKEY_CreateECPrivateKey()
  7099 ms  0x299b cx:0x7f5461143f48
  7100 ms     | 0x299b EC_ValidatePublicKey()
  7102 ms     | 0x299b ret:0x0
           /* TID 0x29f4 */
  7102 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7102 ms  0x29f4 ret:0x0
  7102 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7102 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  7103 ms  0x299b ret:0x7f54612d8820::7f54612d8820  90 9c 56 61                                      ..Va
  7103 ms  0x299b PK11_PubDeriveWithKDF()
  7103 ms  0x299b seckey:0x7f54612d8820
  7103 ms     | 0x299b EC_ValidatePublicKey()
  7104 ms     | 0x299b ret:0x0
  7105 ms  0x299b ret:0x7f5475544880
  7106 ms  0x299b PK11_DeriveWithFlags()
  7106 ms  0x299b basekey:0x7f5475544880
  7106 ms     | 0x299b PK11_DeriveWithTemplate()
  7106 ms  0x299b ret:0x7f5475544600
  7106 ms  0x299b PK11_Derive()
  7106 ms  0x299b basekey:0x7f5475544600
  7106 ms     | 0x299b PK11_DeriveWithTemplate()
  7106 ms  0x299b ret:0x7f5472759c00
  7106 ms  0x299b SECKEY_DestroyPrivateKey()
  7106 ms  0x299b privk:0x7f54612d8820::7f54612d8820  90 9c 56 61                                      ..Va
  7106 ms  0x299b privk:0x7f54612d8820::7f54612d8820  e5 e5 e5 e5                                      ....
  7106 ms  0x299b PK11_Encrypt()
  7106 ms  0x299b symkey:0x7f54755bbc80
  7117 ms  0x299b SSL_AuthCertificateComplete()
  7117 ms  0x299b fd:0x7f546199bbe0
  7117 ms  0x299b err:0x0
  7117 ms  0x299b PK11_Encrypt()
  7117 ms  0x299b symkey:0x7f54755bbc80
  7229 ms  SECKEY_ECParamsToKeySize()
  7229 ms  0x299b ret:0x100
  7229 ms  0x299b SECKEY_CreateECPrivateKey()
  7229 ms  0x299b cx:0x7f5461144aa8
  7230 ms     | 0x299b EC_ValidatePublicKey()
  7231 ms     | 0x299b ret:0x0
  7231 ms  0x299b ret:0x7f54612db820::7f54612db820  50 31 6f 61                                      P1oa
  7231 ms  0x299b PK11_PubDeriveWithKDF()
  7231 ms  0x299b seckey:0x7f54612db820
  7231 ms     | 0x299b EC_ValidatePublicKey()
  7233 ms     | 0x299b ret:0x0
  7234 ms  0x299b ret:0x7f5475544880
  7234 ms  0x299b PK11_DeriveWithFlags()
  7234 ms  0x299b basekey:0x7f5475544880
  7234 ms     | 0x299b PK11_DeriveWithTemplate()
  7234 ms  0x299b ret:0x7f54618f8e80
  7234 ms  0x299b PK11_Derive()
  7234 ms  0x299b basekey:0x7f54618f8e80
  7234 ms     | 0x299b PK11_DeriveWithTemplate()
  7234 ms  0x299b ret:0x7f5461204680
  7234 ms  0x299b SECKEY_DestroyPrivateKey()
  7234 ms  0x299b privk:0x7f54612db820::7f54612db820  50 31 6f 61                                      P1oa
  7235 ms  0x299b privk:0x7f54612db820::7f54612db820  e5 e5 e5 e5                                      ....
  7235 ms  0x299b PK11_Encrypt()
  7235 ms  0x299b symkey:0x7f54619d1100
           /* TID 0x29f4 */
  7235 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7236 ms  0x29f4 ret:0x0
  7236 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7236 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  7250 ms  0x299b SSL_AuthCertificateComplete()
  7250 ms  0x299b fd:0x7f5472583cd0
  7250 ms  0x299b err:0x0
  7250 ms  0x299b SECKEY_DestroyPrivateKey()
  7250 ms  0x299b privk:0x7f5461286820::7f5461286820  d0 93 56 61                                      ..Va
  7251 ms  0x299b privk:0x7f5461286820::7f5461286820  e5 e5 e5 e5                                      ....
  7251 ms  0x299b SECKEY_DestroyPrivateKey()
  7251 ms  0x299b privk:0x7f5461284820::7f5461284820  c0 09 53 61                                      ..Sa
  7251 ms  0x299b privk:0x7f5461284820::7f5461284820  e5 e5 e5 e5                                      ....
  7251 ms  0x299b PK11_Encrypt()
  7251 ms  0x299b symkey:0x7f54619d1100
  7296 ms  SECKEY_ECParamsToKeySize()
  7296 ms  0x299b ret:0x100
  7296 ms  0x299b SECKEY_CreateECPrivateKey()
  7296 ms  0x299b cx:0x7f5461144428
  7299 ms     | 0x299b EC_ValidatePublicKey()
  7301 ms     | 0x299b ret:0x0
           /* TID 0x29f4 */
  7301 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7302 ms  0x29f4 ret:0x0
  7302 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7302 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  7304 ms  0x299b ret:0x7f5461284820::7f5461284820  20 9e 56 61                                       .Va
  7304 ms  0x299b PK11_PubDeriveWithKDF()
  7304 ms  0x299b seckey:0x7f5461284820
  7304 ms     | 0x299b EC_ValidatePublicKey()
  7305 ms     | 0x299b ret:0x0
  7306 ms  0x299b ret:0x7f5475544880
  7318 ms  0x299b PK11_DeriveWithFlags()
  7318 ms  0x299b basekey:0x7f5475544880
  7318 ms     | 0x299b PK11_DeriveWithTemplate()
  7318 ms  0x299b ret:0x7f5461203d80
  7318 ms  0x299b PK11_Derive()
  7318 ms  0x299b basekey:0x7f5461203d80
  7318 ms     | 0x299b PK11_DeriveWithTemplate()
  7319 ms  0x299b ret:0x7f5461204980
  7319 ms  0x299b SECKEY_DestroyPrivateKey()
  7319 ms  0x299b privk:0x7f5461284820::7f5461284820  20 9e 56 61                                       .Va
  7319 ms  0x299b privk:0x7f5461284820::7f5461284820  e5 e5 e5 e5                                      ....
  7319 ms  0x299b PK11_Encrypt()
  7319 ms  0x299b symkey:0x7f5461204700
  7322 ms  0x299b SSL_AuthCertificateComplete()
  7322 ms  0x299b fd:0x7f54725838e0
  7322 ms  0x299b err:0x0
  7322 ms  0x299b PK11_Encrypt()
  7322 ms  0x299b symkey:0x7f5461204700
  7381 ms  0x299b SECKEY_DestroyPrivateKey()
  7381 ms  0x299b privk:0x7f54612cc020::7f54612cc020  00 9b 56 61                                      ..Va
  7381 ms  0x299b privk:0x7f54612cc020::7f54612cc020  e5 e5 e5 e5                                      ....
  7381 ms  0x299b SECKEY_DestroyPrivateKey()
  7381 ms  0x299b privk:0x7f546128c020::7f546128c020  30 98 56 61                                      0.Va
  7381 ms  0x299b privk:0x7f546128c020::7f546128c020  e5 e5 e5 e5                                      ....
           /* TID 0x29a3 */
  7397 ms  0x29a3 PR_Close()
  7397 ms  0x29a3 fd:0x7f546167d340
           /* TID 0x299b */
  7466 ms  0x299b SECKEY_DestroyPrivateKey()
  7466 ms  0x299b privk:0x7f5461287820::7f5461287820  00 01 53 61                                      ..Sa
  7466 ms  0x299b privk:0x7f5461287820::7f5461287820  e5 e5 e5 e5                                      ....
  7467 ms  0x299b SECKEY_DestroyPrivateKey()
  7467 ms  0x299b privk:0x7f546127f820::7f546127f820  70 7e 20 61                                      p~ a
  7467 ms  0x299b privk:0x7f546127f820::7f546127f820  e5 e5 e5 e5                                      ....
           /* TID 0x29a3 */
  7530 ms  0x29a3 PR_Close()
  7530 ms  0x29a3 fd:0x7f546167dd90
  7617 ms  0x29a3 PR_Close()
  7617 ms  0x29a3 fd:0x7f546167d6d0
           /* TID 0x299b */
  7629 ms  0x299b PK11_Encrypt()
  7629 ms  0x299b symkey:0x7f5461204200
  7630 ms  0x299b SSL_ImportFD()
  7630 ms  0x299b ret:0x7f5472583af0
  7630 ms  0x299b SSL_AuthCertificateHook()
  7630 ms  0x299b fd:0x7f5472583af0
  7630 ms  0x299b ret:0x0
  7630 ms  0x299b PR_Connect()
  7630 ms  0x299b fd:0x7f5472583af0
  7670 ms  0x299b SECKEY_CreateECPrivateKey()
  7670 ms  0x299b cx:0x7f5461144f88
           /* TID 0x29a3 */
  7672 ms  0x29a3 PR_Close()
  7672 ms  0x29a3 fd:0x7f5461577f70
           /* TID 0x299b */
  7673 ms     | 0x299b EC_ValidatePublicKey()
  7673 ms     | 0x299b ret:0x0
  7673 ms  0x299b ret:0x7f546127f820::7f546127f820  10 4f 2b 61                                      .O+a
  7674 ms  0x299b SECKEY_CreateECPrivateKey()
  7674 ms  0x299b cx:0x7f5461144f88
  7675 ms     | 0x299b EC_ValidatePublicKey()
  7690 ms     | 0x299b ret:0x0
  7690 ms  0x299b ret:0x7f5461284020::7f5461284020  40 0c 53 61                                      @.Sa
  7745 ms  0x299b PK11_Derive()
  7745 ms  0x299b basekey:0x7f5475544880
  7745 ms     | 0x299b PK11_DeriveWithTemplate()
  7745 ms  0x299b ret:0x7f5461204900
  7745 ms  0x299b PK11_PubDeriveWithKDF()
  7745 ms  0x299b seckey:0x7f546127f820
  7745 ms     | 0x299b EC_ValidatePublicKey()
  7745 ms     | 0x299b ret:0x0
  7750 ms  0x299b ret:0x7f5475544880
  7750 ms  SECKEY_ECParamsToKeySize()
  7750 ms  0x299b ret:0xff
  7750 ms  0x299b PK11_DeriveWithFlags()
  7750 ms  0x299b basekey:0x7f5461204900
  7750 ms     | 0x299b PK11_DeriveWithTemplate()
  7750 ms  0x299b ret:0x7f5461204d00
  7751 ms  0x299b PK11_Derive()
  7751 ms  0x299b basekey:0x7f5475544880
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461204c80
  7751 ms  0x299b PK11_DeriveWithFlags()
  7751 ms  0x299b basekey:0x7f5461204c80
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461204900
  7751 ms  0x299b PK11_DeriveWithFlags()
  7751 ms  0x299b basekey:0x7f5461204c80
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5475544880
  7751 ms  0x299b PK11_DeriveWithFlags()
  7751 ms  0x299b basekey:0x7f5461204c80
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461204d00
  7751 ms  0x299b PK11_Derive()
  7751 ms  0x299b basekey:0x7f5461681080
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461525880
  7751 ms  0x299b PK11_DeriveWithFlags()
  7751 ms  0x299b basekey:0x7f5475544880
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461204c80
  7751 ms  0x299b PK11_DeriveWithFlags()
  7751 ms  0x299b basekey:0x7f5475544880
  7751 ms     | 0x299b PK11_DeriveWithTemplate()
  7751 ms  0x299b ret:0x7f5461204d00
  7759 ms  SECKEY_ECParamsToKeySize()
  7759 ms  0x299b ret:0x100
  7759 ms  SECKEY_ECParamsToBasePointOrderLen()
  7759 ms  0x299b ret:0x100
  7759 ms  SECKEY_ECParamsToBasePointOrderLen()
  7760 ms  0x299b ret:0x100
  7760 ms  0x299b EC_ValidatePublicKey()
  7766 ms  0x299b ret:0x0
  7772 ms  0x299b PK11_DeriveWithFlags()
  7772 ms  0x299b basekey:0x7f5475544880
  7772 ms     | 0x299b PK11_DeriveWithTemplate()
  7772 ms  0x299b ret:0x7f5461204d00
  7772 ms  0x299b PR_Connect()
  7772 ms  0x299b fd:0x7f547258e430
           /* TID 0x29a3 */
  7955 ms  0x29a3 PR_Close()
  7955 ms  0x29a3 fd:0x7f547258e0a0
           /* TID 0x29f4 */
  7955 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7955 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  8049 ms  0x299b SSL_AuthCertificateComplete()
  8049 ms  0x299b fd:0x7f5472583af0
  8049 ms  0x299b err:0x0
  8049 ms     | 0x299b PK11_DeriveWithFlags()
  8049 ms     | 0x299b basekey:0x7f5461525880
  8049 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8049 ms     | 0x299b ret:0x7f5461204d00
  8049 ms     | 0x299b PK11_DeriveWithFlags()
  8049 ms     | 0x299b basekey:0x7f5461525880
  8049 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8049 ms     | 0x299b ret:0x7f5461681080
  8049 ms     | 0x299b PK11_DeriveWithFlags()
  8049 ms     | 0x299b basekey:0x7f5461525880
  8049 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8049 ms     | 0x299b ret:0x7f5461204400
  8049 ms     | 0x299b PK11_DeriveWithFlags()
  8049 ms     | 0x299b basekey:0x7f5461204900
  8050 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8050 ms     | 0x299b ret:0x7f5461204380
  8050 ms     | 0x299b PK11_DeriveWithFlags()
  8050 ms     | 0x299b basekey:0x7f5461204900
  8050 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8050 ms     | 0x299b ret:0x7f547cab0c80
  8050 ms     | 0x299b PK11_DeriveWithFlags()
  8050 ms     | 0x299b basekey:0x7f5461681080
  8050 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8050 ms     | 0x299b ret:0x7f547cab0c80
  8050 ms     | 0x299b PK11_DeriveWithFlags()
  8050 ms     | 0x299b basekey:0x7f5461681080
  8050 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8050 ms     | 0x299b ret:0x7f5461204a80
  8050 ms     | 0x299b PK11_DeriveWithFlags()
  8050 ms     | 0x299b basekey:0x7f5461204900
  8050 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8050 ms     | 0x299b ret:0x7f5461204c80
  8050 ms     | 0x299b PK11_Encrypt()
  8050 ms     | 0x299b symkey:0x7f5461204380
  8051 ms     | 0x299b PK11_DeriveWithFlags()
  8051 ms     | 0x299b basekey:0x7f5461204d00
  8051 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8051 ms     | 0x299b ret:0x7f5461204c80
  8051 ms     | 0x299b PK11_DeriveWithFlags()
  8051 ms     | 0x299b basekey:0x7f5461204d00
  8051 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8051 ms     | 0x299b ret:0x7f5461204a80
  8051 ms     | 0x299b PK11_DeriveWithFlags()
  8051 ms     | 0x299b basekey:0x7f5461525880
  8051 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8051 ms     | 0x299b ret:0x7f5461204380
  8051 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8051 ms     | 0x299b privk:0x7f5461284020::7f5461284020  40 0c 53 61                                      @.Sa
  8052 ms     | 0x299b privk:0x7f5461284020::7f5461284020  e5 e5 e5 e5                                      ....
  8052 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8052 ms     | 0x299b privk:0x7f546127f820::7f546127f820  10 4f 2b 61                                      .O+a
  8052 ms     | 0x299b privk:0x7f546127f820::7f546127f820  e5 e5 e5 e5                                      ....
  8054 ms  0x299b PK11_Encrypt()
  8054 ms  0x299b symkey:0x7f5461204c80
  8054 ms  0x299b PK11_Encrypt()
  8054 ms  0x299b symkey:0x7f5461204c80
  8089 ms  0x299b PK11_DeriveWithFlags()
  8089 ms  0x299b basekey:0x7f5461204380
  8089 ms     | 0x299b PK11_DeriveWithTemplate()
  8089 ms  0x299b ret:0x7f5475544880
  8089 ms  0x299b PK11_DeriveWithFlags()
  8089 ms  0x299b basekey:0x7f5461204380
  8089 ms     | 0x299b PK11_DeriveWithTemplate()
  8089 ms  0x299b ret:0x7f5475544880
  8090 ms  0x299b PK11_Encrypt()
  8090 ms  0x299b symkey:0x7f5461204c80
  8176 ms  0x299b PK11_Encrypt()
  8176 ms  0x299b symkey:0x7f5461204c80
           /* TID 0x29a3 */
  8187 ms  0x29a3 PR_Close()
  8187 ms  0x29a3 fd:0x7f5472583fd0
           /* TID 0x299b */
  8206 ms  0x299b SSL_ImportFD()
  8206 ms  0x299b ret:0x7f547258e760
  8206 ms  0x299b SSL_AuthCertificateHook()
  8206 ms  0x299b fd:0x7f547258e760
  8206 ms  0x299b ret:0x0
  8207 ms  0x299b PR_Connect()
  8207 ms  0x299b fd:0x7f547258e760
  8245 ms  0x299b SECKEY_CreateECPrivateKey()
  8245 ms  0x299b cx:0x7f5461145128
  8246 ms     | 0x299b EC_ValidatePublicKey()
  8246 ms     | 0x299b ret:0x0
  8246 ms  0x299b ret:0x7f54612cb820::7f54612cb820  00 31 6f 61                                      .1oa
  8246 ms  0x299b SECKEY_CreateECPrivateKey()
  8246 ms  0x299b cx:0x7f5461145128
  8247 ms     | 0x299b EC_ValidatePublicKey()
  8249 ms     | 0x299b ret:0x0
  8249 ms  0x299b ret:0x7f54612db820::7f54612db820  40 32 6f 61                                      @2oa
  8305 ms  0x299b PK11_Derive()
  8305 ms  0x299b basekey:0x7f5475544880
  8305 ms     | 0x299b PK11_DeriveWithTemplate()
  8305 ms  0x299b ret:0x7f5461204900
  8305 ms  0x299b PK11_PubDeriveWithKDF()
  8305 ms  0x299b seckey:0x7f54612cb820
  8305 ms     | 0x299b EC_ValidatePublicKey()
  8306 ms     | 0x299b ret:0x0
  8307 ms  0x299b ret:0x7f5475544880
  8307 ms  SECKEY_ECParamsToKeySize()
  8307 ms  0x299b ret:0xff
  8307 ms  0x299b PK11_DeriveWithFlags()
  8307 ms  0x299b basekey:0x7f5461204900
  8307 ms     | 0x299b PK11_DeriveWithTemplate()
  8307 ms  0x299b ret:0x7f5461525880
  8307 ms  0x299b PK11_Derive()
  8307 ms  0x299b basekey:0x7f5475544880
  8307 ms     | 0x299b PK11_DeriveWithTemplate()
  8307 ms  0x299b ret:0x7f5461204a80
  8308 ms  0x299b PK11_DeriveWithFlags()
  8308 ms  0x299b basekey:0x7f5461204a80
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5461204900
  8308 ms  0x299b PK11_DeriveWithFlags()
  8308 ms  0x299b basekey:0x7f5461204a80
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5475544880
  8308 ms  0x299b PK11_DeriveWithFlags()
  8308 ms  0x299b basekey:0x7f5461204a80
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5461525880
  8308 ms  0x299b PK11_Derive()
  8308 ms  0x299b basekey:0x7f5461204b80
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5461204a00
  8308 ms  0x299b PK11_DeriveWithFlags()
  8308 ms  0x299b basekey:0x7f5475544880
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5461204a80
  8308 ms  0x299b PK11_DeriveWithFlags()
  8308 ms  0x299b basekey:0x7f5475544880
  8308 ms     | 0x299b PK11_DeriveWithTemplate()
  8308 ms  0x299b ret:0x7f5461525880
  8312 ms  0x299b PK11_DeriveWithFlags()
  8312 ms  0x299b basekey:0x7f5475544880
  8312 ms     | 0x299b PK11_DeriveWithTemplate()
  8312 ms  0x299b ret:0x7f5461525880
  8315 ms  0x299b SSL_ImportFD()
  8315 ms  0x299b ret:0x7f547258ec10
  8315 ms  0x299b SSL_AuthCertificateHook()
  8315 ms  0x299b fd:0x7f547258ec10
  8315 ms  0x299b ret:0x0
  8317 ms  0x299b PR_Connect()
  8317 ms  0x299b fd:0x7f547258ec10
  8318 ms  0x299b SSL_ImportFD()
  8318 ms  0x299b ret:0x7f547258ea90
  8318 ms  0x299b SSL_AuthCertificateHook()
  8318 ms  0x299b fd:0x7f547258ea90
  8318 ms  0x299b ret:0x0
  8318 ms  0x299b PR_Connect()
  8318 ms  0x299b fd:0x7f547258ea90
  8361 ms  0x299b SECKEY_CreateECPrivateKey()
  8361 ms  0x299b cx:0x7f5461145608
  8363 ms     | 0x299b EC_ValidatePublicKey()
  8363 ms     | 0x299b ret:0x0
  8363 ms  0x299b ret:0x7f54612e3020::7f54612e3020  d0 38 6f 61                                      .8oa
  8363 ms  0x299b SECKEY_CreateECPrivateKey()
  8363 ms  0x299b cx:0x7f5461145608
  8365 ms     | 0x299b EC_ValidatePublicKey()
  8369 ms     | 0x299b ret:0x0
  8370 ms  0x299b ret:0x7f54612e5020::7f54612e5020  b0 3a 6f 61                                      .:oa
  8370 ms  0x299b SECKEY_CreateECPrivateKey()
  8370 ms  0x299b cx:0x7f54611457a8
  8372 ms     | 0x299b EC_ValidatePublicKey()
  8372 ms     | 0x299b ret:0x0
  8372 ms  0x299b ret:0x7f54612e7820::7f54612e7820  f0 3b 6f 61                                      .;oa
  8372 ms  0x299b SECKEY_CreateECPrivateKey()
  8372 ms  0x299b cx:0x7f54611457a8
  8373 ms     | 0x299b EC_ValidatePublicKey()
  8378 ms     | 0x299b ret:0x0
  8378 ms  0x299b ret:0x7f546158a020::7f546158a020  20 3e 6f 61                                       >oa
  8389 ms  0x299b PK11_Encrypt()
  8389 ms  0x299b symkey:0x7f54619d1100
  8427 ms  0x299b PK11_Derive()
  8427 ms  0x299b basekey:0x7f5461525880
  8427 ms     | 0x299b PK11_DeriveWithTemplate()
  8427 ms  0x299b ret:0x7f5461204b80
  8427 ms  0x299b PK11_PubDeriveWithKDF()
  8427 ms  0x299b seckey:0x7f54612e3020
  8428 ms     | 0x299b EC_ValidatePublicKey()
  8428 ms     | 0x299b ret:0x0
  8428 ms  0x299b ret:0x7f5461525880
  8428 ms  SECKEY_ECParamsToKeySize()
  8428 ms  0x299b ret:0xff
  8428 ms  0x299b PK11_DeriveWithFlags()
  8428 ms  0x299b basekey:0x7f5461204b80
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204b00
  8429 ms  0x299b PK11_Derive()
  8429 ms  0x299b basekey:0x7f5461525880
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204e00
  8429 ms  0x299b PK11_DeriveWithFlags()
  8429 ms  0x299b basekey:0x7f5461204e00
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204b80
  8429 ms  0x299b PK11_DeriveWithFlags()
  8429 ms  0x299b basekey:0x7f5461204e00
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461525880
  8429 ms  0x299b PK11_DeriveWithFlags()
  8429 ms  0x299b basekey:0x7f5461204e00
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204b00
  8429 ms  0x299b PK11_Derive()
  8429 ms  0x299b basekey:0x7f5461204f00
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204d80
  8429 ms  0x299b PK11_DeriveWithFlags()
  8429 ms  0x299b basekey:0x7f5461525880
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204e00
  8429 ms  0x299b PK11_DeriveWithFlags()
  8429 ms  0x299b basekey:0x7f5461525880
  8429 ms     | 0x299b PK11_DeriveWithTemplate()
  8429 ms  0x299b ret:0x7f5461204b00
  8433 ms  SECKEY_ECParamsToKeySize()
  8433 ms  0x299b ret:0x100
  8433 ms  SECKEY_ECParamsToBasePointOrderLen()
  8433 ms  0x299b ret:0x100
  8433 ms  SECKEY_ECParamsToBasePointOrderLen()
  8433 ms  0x299b ret:0x100
  8434 ms  0x299b EC_ValidatePublicKey()
  8442 ms  0x299b ret:0x0
  8449 ms  0x299b PK11_DeriveWithFlags()
  8449 ms  0x299b basekey:0x7f5461525880
  8449 ms     | 0x299b PK11_DeriveWithTemplate()
  8449 ms  0x299b ret:0x7f5461204b00
  8449 ms  0x299b PK11_Derive()
  8449 ms  0x299b basekey:0x7f5461204b00
  8449 ms     | 0x299b PK11_DeriveWithTemplate()
  8449 ms  0x299b ret:0x7f5461204f00
  8449 ms  0x299b PK11_PubDeriveWithKDF()
  8449 ms  0x299b seckey:0x7f54612e7820
  8449 ms     | 0x299b EC_ValidatePublicKey()
  8449 ms     | 0x299b ret:0x0
  8450 ms  0x299b ret:0x7f5461204b00
  8450 ms  SECKEY_ECParamsToKeySize()
  8450 ms  0x299b ret:0xff
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461204f00
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461204e80
  8450 ms  0x299b PK11_Derive()
  8450 ms  0x299b basekey:0x7f5461204b00
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461681400
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461681400
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461204f00
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461681400
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461204b00
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461681400
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461204e80
  8450 ms  0x299b PK11_Derive()
  8450 ms  0x299b basekey:0x7f54618a2e00
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461681180
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461204b00
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461681400
  8450 ms  0x299b PK11_DeriveWithFlags()
  8450 ms  0x299b basekey:0x7f5461204b00
  8450 ms     | 0x299b PK11_DeriveWithTemplate()
  8450 ms  0x299b ret:0x7f5461204e80
  8451 ms  SECKEY_ECParamsToKeySize()
  8451 ms  0x299b ret:0x100
  8451 ms  SECKEY_ECParamsToBasePointOrderLen()
  8451 ms  0x299b ret:0x100
  8451 ms  SECKEY_ECParamsToBasePointOrderLen()
  8451 ms  0x299b ret:0x100
  8451 ms  0x299b EC_ValidatePublicKey()
  8453 ms  0x299b ret:0x0
  8456 ms  0x299b PK11_DeriveWithFlags()
  8456 ms  0x299b basekey:0x7f5461204b00
  8456 ms     | 0x299b PK11_DeriveWithTemplate()
  8456 ms  0x299b ret:0x7f5461204e80
           /* TID 0x29a3 */
  8458 ms  0x29a3 PR_Close()
  8458 ms  0x29a3 fd:0x7f54727642e0
           /* TID 0x29f4 */
  8458 ms  0x29f4 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8458 ms  0x29f4 ret:0x0
           /* TID 0x299b */
  8458 ms  0x299b SSL_AuthCertificateComplete()
  8458 ms  0x299b fd:0x7f547258ea90
  8458 ms  0x299b err:0x0
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461681180
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461204e80
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461681180
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f54618a2e00
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461681180
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461681a00
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461204f00
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461204500
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461204f00
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461204600
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f54618a2e00
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461204600
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f54618a2e00
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461204480
  8458 ms     | 0x299b PK11_DeriveWithFlags()
  8458 ms     | 0x299b basekey:0x7f5461204f00
  8458 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8458 ms     | 0x299b ret:0x7f5461681400
  8458 ms     | 0x299b PK11_Encrypt()
  8458 ms     | 0x299b symkey:0x7f5461204500
  8459 ms     | 0x299b PK11_DeriveWithFlags()
  8459 ms     | 0x299b basekey:0x7f5461204e80
  8459 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8459 ms     | 0x299b ret:0x7f5461681400
  8459 ms     | 0x299b PK11_DeriveWithFlags()
  8459 ms     | 0x299b basekey:0x7f5461204e80
  8459 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8460 ms     | 0x299b ret:0x7f5461204480
  8460 ms     | 0x299b PK11_DeriveWithFlags()
  8460 ms     | 0x299b basekey:0x7f5461681180
  8460 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8460 ms     | 0x299b ret:0x7f5461204500
  8460 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8460 ms     | 0x299b privk:0x7f546158a020::7f546158a020  20 3e 6f 61                                       >oa
  8460 ms     | 0x299b privk:0x7f546158a020::7f546158a020  e5 e5 e5 e5                                      ....
  8460 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8460 ms     | 0x299b privk:0x7f54612e7820::7f54612e7820  f0 3b 6f 61                                      .;oa
  8460 ms     | 0x299b privk:0x7f54612e7820::7f54612e7820  e5 e5 e5 e5                                      ....
  8460 ms  0x299b SSL_AuthCertificateComplete()
  8460 ms  0x299b fd:0x7f547258e760
  8460 ms  0x299b err:0x0
  8460 ms     | 0x299b PK11_DeriveWithFlags()
  8460 ms     | 0x299b basekey:0x7f5461204a00
  8460 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8460 ms     | 0x299b ret:0x7f5461204b00
  8460 ms     | 0x299b PK11_DeriveWithFlags()
  8460 ms     | 0x299b basekey:0x7f5461204a00
  8460 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8460 ms     | 0x299b ret:0x7f5461204f00
  8460 ms     | 0x299b PK11_DeriveWithFlags()
  8460 ms     | 0x299b basekey:0x7f5461204a00
  8460 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461681180
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204900
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204480
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204900
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204580
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204f00
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204580
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204f00
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5472593d80
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204900
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204a80
  8461 ms     | 0x299b PK11_Encrypt()
  8461 ms     | 0x299b symkey:0x7f5461204480
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204b00
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204a80
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204b00
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5472593d80
  8461 ms     | 0x299b PK11_DeriveWithFlags()
  8461 ms     | 0x299b basekey:0x7f5461204a00
  8461 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8461 ms     | 0x299b ret:0x7f5461204480
  8461 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8461 ms     | 0x299b privk:0x7f54612db820::7f54612db820  40 32 6f 61                                      @2oa
  8461 ms     | 0x299b privk:0x7f54612db820::7f54612db820  e5 e5 e5 e5                                      ....
  8461 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8461 ms     | 0x299b privk:0x7f54612cb820::7f54612cb820  00 31 6f 61                                      .1oa
  8461 ms     | 0x299b privk:0x7f54612cb820::7f54612cb820  e5 e5 e5 e5                                      ....
  8462 ms  0x299b PK11_Encrypt()
  8462 ms  0x299b symkey:0x7f5461204a80
  8462 ms  0x299b PK11_Encrypt()
  8462 ms  0x299b symkey:0x7f5461204a80
  8462 ms  0x299b PK11_Encrypt()
  8462 ms  0x299b symkey:0x7f5461681400
  8462 ms  0x299b PK11_Encrypt()
  8462 ms  0x299b symkey:0x7f5461681400
  8463 ms  0x299b PR_Connect()
  8463 ms  0x299b fd:0x7f547258eac0
  8496 ms  0x299b PK11_DeriveWithFlags()
  8496 ms  0x299b basekey:0x7f5461204500
  8496 ms     | 0x299b PK11_DeriveWithTemplate()
  8496 ms  0x299b ret:0x7f5475544880
  8497 ms  0x299b PK11_DeriveWithFlags()
  8497 ms  0x299b basekey:0x7f5461204500
  8497 ms     | 0x299b PK11_DeriveWithTemplate()
  8497 ms  0x299b ret:0x7f5475544880
  8497 ms  0x299b PK11_Encrypt()
  8497 ms  0x299b symkey:0x7f5461681400
  8500 ms  0x299b PK11_DeriveWithFlags()
  8500 ms  0x299b basekey:0x7f5461204480
  8501 ms     | 0x299b PK11_DeriveWithTemplate()
  8501 ms  0x299b ret:0x7f5475544880
  8501 ms  0x299b PK11_DeriveWithFlags()
  8501 ms  0x299b basekey:0x7f5461204480
  8501 ms     | 0x299b PK11_DeriveWithTemplate()
  8501 ms  0x299b ret:0x7f5475544880
  8501 ms  0x299b PK11_Encrypt()
  8501 ms  0x299b symkey:0x7f5461204a80
           /* TID 0x29a3 */
  8537 ms  0x29a3 PR_Close()
  8537 ms  0x29a3 fd:0x7f547258e5e0
           /* TID 0x299b */
  8555 ms  0x299b PK11_Encrypt()
  8555 ms  0x299b symkey:0x7f5461204a80
           /* TID 0x29a3 */
  8606 ms  0x29a3 PR_Close()
  8606 ms  0x29a3 fd:0x7f547258e4c0
           /* TID 0x2a31 */
  8606 ms  0x2a31 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8606 ms  0x2a31 ret:0x0
           /* TID 0x299b */
  8608 ms  0x299b SSL_AuthCertificateComplete()
  8608 ms  0x299b fd:0x7f547258ec10
  8608 ms  0x299b err:0x0
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204d80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f5475544880
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204d80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f5461204900
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204d80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f5461204a00
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204b80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f5472593d80
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204b80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f54727d3600
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204900
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f54727d3600
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204900
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f54727d3780
  8608 ms     | 0x299b PK11_DeriveWithFlags()
  8608 ms     | 0x299b basekey:0x7f5461204b80
  8608 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8608 ms     | 0x299b ret:0x7f5461204e00
  8608 ms     | 0x299b PK11_Encrypt()
  8608 ms     | 0x299b symkey:0x7f5472593d80
  8609 ms     | 0x299b PK11_DeriveWithFlags()
  8609 ms     | 0x299b basekey:0x7f5475544880
  8609 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8609 ms     | 0x299b ret:0x7f5461204e00
  8609 ms     | 0x299b PK11_DeriveWithFlags()
  8609 ms     | 0x299b basekey:0x7f5475544880
  8609 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8609 ms     | 0x299b ret:0x7f54727d3780
  8609 ms     | 0x299b PK11_DeriveWithFlags()
  8609 ms     | 0x299b basekey:0x7f5461204d80
  8609 ms     |    | 0x299b PK11_DeriveWithTemplate()
  8609 ms     | 0x299b ret:0x7f5472593d80
  8610 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8610 ms     | 0x299b privk:0x7f54612e5020::7f54612e5020  b0 3a 6f 61                                      .:oa
  8610 ms     | 0x299b privk:0x7f54612e5020::7f54612e5020  e5 e5 e5 e5                                      ....
  8610 ms     | 0x299b SECKEY_DestroyPrivateKey()
  8610 ms     | 0x299b privk:0x7f54612e3020::7f54612e3020  d0 38 6f 61                                      .8oa
  8610 ms     | 0x299b privk:0x7f54612e3020::7f54612e3020  e5 e5 e5 e5                                      ....
  8612 ms  0x299b PK11_Encrypt()
  8612 ms  0x299b symkey:0x7f5461204e00
  8613 ms  0x299b PK11_Encrypt()
  8613 ms  0x299b symkey:0x7f5461204e00
           /* TID 0x29a3 */
  8636 ms  0x29a3 PR_Close()
  8636 ms  0x29a3 fd:0x7f547258eb80
           /* TID 0x299b */
  8644 ms  0x299b PK11_Encrypt()
  8644 ms  0x299b symkey:0x7f5461681400
  8648 ms  0x299b PK11_DeriveWithFlags()
  8648 ms  0x299b basekey:0x7f5472593d80
  8648 ms     | 0x299b PK11_DeriveWithTemplate()
  8648 ms  0x299b ret:0x7f5461525880
  8649 ms  0x299b PK11_DeriveWithFlags()
  8649 ms  0x299b basekey:0x7f5472593d80
  8649 ms     | 0x299b PK11_DeriveWithTemplate()
  8649 ms  0x299b ret:0x7f5461525880
  8649 ms  0x299b PK11_Encrypt()
  8649 ms  0x299b symkey:0x7f5461204e00
  8705 ms  0x299b PK11_Encrypt()
  8705 ms  0x299b symkey:0x7f5461204e00
  8725 ms  0x299b PK11_Encrypt()
  8725 ms  0x299b symkey:0x7f54755bc100
  8758 ms  0x299b PR_Close()
  8758 ms  0x299b fd:0x7f547377edc0
           /* TID 0x2990 */
  8760 ms  0x2990 EC_ValidatePublicKey()
  8762 ms  0x2990 ret:0x0
  8762 ms  0x2990 EC_ValidatePublicKey()
  8771 ms  0x2990 ret:0x0
  8771 ms  0x2990 EC_ValidatePublicKey()
  8774 ms  0x2990 ret:0x0
  8774 ms  0x2990 EC_ValidatePublicKey()
  8776 ms  0x2990 ret:0x0
  8776 ms  0x2990 EC_ValidatePublicKey()
  8777 ms  0x2990 ret:0x0
  8777 ms  0x2990 EC_ValidatePublicKey()
  8779 ms  0x2990 ret:0x0
  8779 ms  0x2990 EC_ValidatePublicKey()
  8781 ms  0x2990 ret:0x0
  8781 ms  0x2990 EC_ValidatePublicKey()
  8782 ms  0x2990 ret:0x0
  8782 ms  0x2990 EC_ValidatePublicKey()
  8783 ms  0x2990 ret:0x0
  8783 ms  0x2990 EC_ValidatePublicKey()
  8785 ms  0x2990 ret:0x0
           /* TID 0x299b */
  8785 ms  0x299b PK11_Encrypt()
  8785 ms  0x299b symkey:0x7f5461204a80
  8789 ms  0x299b PK11_Encrypt()
  8789 ms  0x299b symkey:0x7f5461525c00
  8790 ms  0x299b PK11_Encrypt()
  8790 ms  0x299b symkey:0x7f5461204200
  8790 ms  0x299b PK11_Encrypt()
  8790 ms  0x299b symkey:0x7f5461204c80
  8790 ms  0x299b PK11_Encrypt()
  8790 ms  0x299b symkey:0x7f5461681400
  8790 ms  0x299b PK11_Encrypt()
  8790 ms  0x299b symkey:0x7f5461204e00
  8790 ms  0x299b PR_Close()
  8790 ms  0x299b fd:0x7f547258e430
  8790 ms  0x299b PR_Close()
  8790 ms  0x299b fd:0x7f5472583cd0
  8790 ms     | 0x299b PK11_Encrypt()
  8790 ms     | 0x299b symkey:0x7f54619d1100
  8790 ms  0x299b PR_Close()
  8790 ms  0x299b fd:0x7f54725838e0
  8790 ms     | 0x299b PK11_Encrypt()
  8790 ms     | 0x299b symkey:0x7f5461204700
  8791 ms  0x299b PR_Close()
  8791 ms  0x299b fd:0x7f546199bbe0
  8791 ms     | 0x299b PK11_Encrypt()
  8791 ms     | 0x299b symkey:0x7f54755bbc80
  8791 ms  0x299b PR_Close()
  8791 ms  0x299b fd:0x7f5461577640
  8791 ms     | 0x299b PK11_Encrypt()
  8791 ms     | 0x299b symkey:0x7f547286f400
  8791 ms  0x299b PR_Close()
  8791 ms  0x299b fd:0x7f5461523bb0
  8791 ms     | 0x299b PK11_Encrypt()
  8791 ms     | 0x299b symkey:0x7f5461203380
  8791 ms  0x299b PR_Close()
  8791 ms  0x299b fd:0x7f5461523be0
  8791 ms     | 0x299b PK11_Encrypt()
  8791 ms     | 0x299b symkey:0x7f5461203c80
  8791 ms  0x299b PR_Close()
  8791 ms  0x299b fd:0x7f5461523af0
  8791 ms     | 0x299b PK11_Encrypt()
  8791 ms     | 0x299b symkey:0x7f5461203980
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f5461523b50
  8792 ms     | 0x299b PK11_Encrypt()
  8792 ms     | 0x299b symkey:0x7f5461203680
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f54816abdf0
  8792 ms     | 0x299b PK11_Encrypt()
  8792 ms     | 0x299b symkey:0x7f54727d4700
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f54816abc70
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f54816ab1f0
  8792 ms     | 0x299b PK11_Encrypt()
  8792 ms     | 0x299b symkey:0x7f54727d3980
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f54737fcc10
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f547258eac0
  8792 ms  0x299b PR_Close()
  8792 ms  0x299b fd:0x7f5473a83970
  8792 ms     | 0x299b PK11_Encrypt()
  8792 ms     | 0x299b symkey:0x7f547cab1600
  8793 ms  0x299b PR_Close()
  8793 ms  0x299b fd:0x7f5461577760
  8793 ms     | 0x299b PK11_Encrypt()
  8793 ms     | 0x299b symkey:0x7f5461204200
           /* TID 0x29ea */
  8793 ms  0x29ea PR_Close()
  8793 ms  0x29ea fd:0x7f5461523550
  8793 ms  0x29ea PR_Close()
  8793 ms  0x29ea fd:0x7f5461523550
           /* TID 0x299b */
  8794 ms  0x299b PR_Close()
  8794 ms  0x299b fd:0x7f54615239d0
  8794 ms     | 0x299b PK11_Encrypt()
  8794 ms     | 0x299b symkey:0x7f5461525c00
  8795 ms  0x299b PR_Close()
  8795 ms  0x299b fd:0x7f547258ea90
  8795 ms     | 0x299b PK11_Encrypt()
  8795 ms     | 0x299b symkey:0x7f5461681400
  8796 ms  0x299b PR_Close()
  8796 ms  0x299b fd:0x7f547258e760
  8796 ms     | 0x299b PK11_Encrypt()
  8796 ms     | 0x299b symkey:0x7f5461204a80
  8796 ms  0x299b PR_Close()
  8796 ms  0x299b fd:0x7f547258ec10
  8796 ms     | 0x299b PK11_Encrypt()
  8796 ms     | 0x299b symkey:0x7f5461204e00
  8796 ms  0x299b PR_Close()
  8796 ms  0x299b fd:0x7f5472583af0
  8796 ms     | 0x299b PK11_Encrypt()
  8796 ms     | 0x299b symkey:0x7f5461204c80
           /* TID 0x2990 */
  8798 ms  0x2990 PR_Close()
  8798 ms  0x2990 fd:0x7f5474c70e50
  8798 ms  0x2990 PR_Close()
  8798 ms  0x2990 fd:0x7f5461523970
  8799 ms  0x2990 PR_Close()
  8799 ms  0x2990 fd:0x7f5461523a30
  8799 ms  0x2990 PR_Close()
  8799 ms  0x2990 fd:0x7f5461523970
  8800 ms  0x2990 PR_Close()
  8800 ms  0x2990 fd:0x7f5461523a30
  8800 ms  0x2990 PR_Close()
  8800 ms  0x2990 fd:0x7f5461523970
           /* TID 0x29fb */
  8806 ms  0x29fb PR_Close()
  8806 ms  0x29fb fd:0x7f5461523970
           /* TID 0x2990 */
  8837 ms  0x2990 PR_Close()
  8837 ms  0x2990 fd:0x7f5461523a30
  8837 ms  0x2990 PR_Close()
  8837 ms  0x2990 fd:0x7f5461577760
  8838 ms  0x2990 PR_Close()
  8838 ms  0x2990 fd:0x7f5461523a30
  8838 ms  0x2990 PR_Close()
  8838 ms  0x2990 fd:0x7f5461577760
  8839 ms  0x2990 PR_Close()
  8839 ms  0x2990 fd:0x7f547d7c89a0
  8839 ms  0x2990 PR_Close()
  8839 ms  0x2990 fd:0x7f547d7c88b0
  8839 ms  0x2990 PR_Close()
  8839 ms  0x2990 fd:0x7f547d7c8a60
  8841 ms  0x2990 PR_Close()
  8841 ms  0x2990 fd:0x7f5461577790
  8843 ms  0x2990 PR_Close()
  8843 ms  0x2990 fd:0x7f5461577790
  8845 ms  0x2990 PR_Close()
  8845 ms  0x2990 fd:0x7f5461523a30
  8845 ms  0x2990 PR_Close()
  8845 ms  0x2990 fd:0x7f5461577850
  8846 ms  0x2990 PR_Close()
  8846 ms  0x2990 fd:0x7f5461523a30
  8846 ms  0x2990 PR_Close()
  8846 ms  0x2990 fd:0x7f5461577850
  8853 ms  0x2990 PR_Close()
  8853 ms  0x2990 fd:0x7f5461577bb0
  8855 ms  0x2990 PR_Close()
  8855 ms  0x2990 fd:0x7f5461577bb0
  8857 ms  0x2990 PR_Close()
  8857 ms  0x2990 fd:0x7f5461523a30
  8857 ms  0x2990 PR_Close()
  8857 ms  0x2990 fd:0x7f5461577e80
  8857 ms  0x2990 PR_Close()
  8857 ms  0x2990 fd:0x7f5461523a30
  8857 ms  0x2990 PR_Close()
  8857 ms  0x2990 fd:0x7f5461577e80
  8861 ms  0x2990 PR_Close()
  8861 ms  0x2990 fd:0x7f5461577eb0
  8862 ms  0x2990 PR_Close()
  8862 ms  0x2990 fd:0x7f5461577eb0
  8873 ms  0x2990 PR_Close()
  8873 ms  0x2990 fd:0x7f54619917c0
           /* TID 0x299b */
  8874 ms  0x299b PR_Close()
  8874 ms  0x299b fd:0x7f54755b7490
  8874 ms     | 0x299b PK11_Encrypt()
  8874 ms     | 0x299b symkey:0x7f54755bc100
           /* TID 0x2990 */
  8875 ms  0x2990 PR_Close()
  8875 ms  0x2990 fd:0x7f54619917c0
  8877 ms  0x2990 PR_Close()
  8877 ms  0x2990 fd:0x7f5461991850
           /* TID 0x29fb */
  8887 ms  0x29fb PR_Close()
  8887 ms  0x29fb fd:0x7f54615230a0
  8891 ms  0x29fb PR_Close()
  8891 ms  0x29fb fd:0x7f54615230a0
           /* TID 0x2990 */
  8891 ms  0x2990 PR_Close()
  8891 ms  0x2990 fd:0x7f5461523a30
  8891 ms  0x2990 PR_Close()
  8891 ms  0x2990 fd:0x7f546199b880
           /* TID 0x29fb */
  8899 ms  0x29fb PR_Close()
  8899 ms  0x29fb fd:0x7f5461523970
  8932 ms  0x29fb PR_Close()
  8932 ms  0x29fb fd:0x7f54615231c0
           /* TID 0x2995 */
  8954 ms  0x2995 PR_Close()
  8954 ms  0x2995 fd:0x7f547c42ee20
           /* TID 0x299b */
  8954 ms  0x299b SSL_ImportFD()
  8954 ms  0x299b ret:0x7f5472583d30
  8954 ms  0x299b SSL_AuthCertificateHook()
  8954 ms  0x299b fd:0x7f5472583d30
  8954 ms  0x299b ret:0x0
  8954 ms  0x299b PR_Connect()
  8954 ms  0x299b fd:0x7f5472583d30
  8956 ms  0x299b PR_Close()
  8956 ms  0x299b fd:0x7f5472583d30
           /* TID 0x29fb */
  8960 ms  0x29fb PR_Close()
  8960 ms  0x29fb fd:0x7f5472583be0
           /* TID 0x2990 */
  8973 ms  0x2990 PR_Close()
  8973 ms  0x2990 fd:0x7f54615230a0
  8973 ms  0x2990 PR_Close()
  8973 ms  0x2990 fd:0x7f54727644c0
           /* TID 0x2995 */
  8975 ms  0x2995 PR_Close()
  8975 ms  0x2995 fd:0x7f5478d08820
           /* TID 0x299b */
  8975 ms  0x299b PR_Close()
  8975 ms  0x299b fd:0x7f5473a83340
           /* TID 0x29ea */
  8978 ms  0x29ea PR_Close()
  8978 ms  0x29ea fd:0x7f54727640a0
  8978 ms  0x29ea PR_Close()
  8978 ms  0x29ea fd:0x7f54727640a0
  8978 ms  0x29ea PR_Close()
  8978 ms  0x29ea fd:0x7f54727640a0
  8978 ms  0x29ea PR_Close()
  8978 ms  0x29ea fd:0x7f5472764130
           /* TID 0x29fb */
  8979 ms  0x29fb PR_Close()
  8979 ms  0x29fb fd:0x7f5472764130
           /* TID 0x29a3 */
  8986 ms  0x29a3 PR_Close()
  8986 ms  0x29a3 fd:0x7f54727b76d0
  8986 ms  0x29a3 PR_Close()
  8986 ms  0x29a3 fd:0x7f54727b7700
           /* TID 0x2995 */
  8993 ms  0x2995 PR_Close()
  8993 ms  0x2995 fd:0x7f5472b0ba30
           /* TID 0x2990 */
  8996 ms  0x2990 PR_Close()
  8996 ms  0x2990 fd:0x7f54615230a0
  8996 ms  0x2990 PR_Close()
  8996 ms  0x2990 fd:0x7f547258e2b0
           /* TID 0x29fb */
  8998 ms  0x29fb PR_Close()
  8998 ms  0x29fb fd:0x7f547258e2e0
  9001 ms  0x29fb PR_Close()
  9001 ms  0x29fb fd:0x7f546167de50
  9040 ms  0x29fb PR_Close()
  9040 ms  0x29fb fd:0x7f54615771c0
  9042 ms  0x29fb PR_Close()
  9042 ms  0x29fb fd:0x7f54615771c0
  9064 ms  0x29fb PR_Close()
  9064 ms  0x29fb fd:0x7f5461577610
  9067 ms  0x29fb PR_Close()
  9067 ms  0x29fb fd:0x7f5461577820
  9091 ms  0x29fb PR_Close()
  9091 ms  0x29fb fd:0x7f546167dcd0
  9102 ms  0x29fb PR_Close()
  9102 ms  0x29fb fd:0x7f546167dfd0
  9111 ms  0x29fb PR_Close()
  9111 ms  0x29fb fd:0x7f54619918e0
  9121 ms  0x29fb PR_Close()
  9121 ms  0x29fb fd:0x7f5461991c10
  9122 ms  0x29fb PR_Close()
  9122 ms  0x29fb fd:0x7f5461991c10
           /* TID 0x2990 */
  9285 ms  0x2990 PR_Close()
  9285 ms  0x2990 fd:0x7f5461523670
  9286 ms  0x2990 PR_Close()
  9286 ms  0x2990 fd:0x7f5461523670
  9292 ms  0x2990 PR_Close()
  9292 ms  0x2990 fd:0x7f549abda130
  9293 ms  0x2990 PR_Close()
  9293 ms  0x2990 fd:0x7f549abda190
Process terminated
