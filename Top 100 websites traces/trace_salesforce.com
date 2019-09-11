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
           /* TID 0x2414 */
   146 ms  0x2414 PR_Close()
   146 ms  0x2414 fd:0x7feb96053820
           /* TID 0x240c */
   322 ms  0x240c SSL_ImportFD()
   322 ms  0x240c ret:0x7feb8637c400
   322 ms  0x240c SSL_AuthCertificateHook()
   322 ms  0x240c fd:0x7feb8637c400
   322 ms  0x240c ret:0x0
   322 ms  0x240c PR_Connect()
   322 ms  0x240c fd:0x7feb8637c400
   530 ms  0x240c SECKEY_CreateECPrivateKey()
   530 ms  0x240c cx:0x7feb864e8fc8
   532 ms     | 0x240c EC_ValidatePublicKey()
   532 ms     | 0x240c ret:0x0
   533 ms  0x240c ret:0x7feb8626c020::7feb8626c020  50 bb 2d 86                                      P.-.
   533 ms  0x240c SECKEY_CreateECPrivateKey()
   533 ms  0x240c cx:0x7feb864e8fc8
   535 ms     | 0x240c EC_ValidatePublicKey()
   539 ms     | 0x240c ret:0x0
   539 ms  0x240c ret:0x7feb8626e020::7feb8626e020  90 bc 2d 86                                      ..-.
           /* TID 0x2472 */
   681 ms  0x2472 PR_Close()
   681 ms  0x2472 fd:0x7feb8637cd30
   701 ms  0x2472 PR_Close()
   701 ms  0x2472 fd:0x7feb8637cd30
           /* TID 0x240c */
   755 ms  SECKEY_ECParamsToKeySize()
   755 ms  0x240c ret:0x100
   755 ms  0x240c SECKEY_CreateECPrivateKey()
   755 ms  0x240c cx:0x7feb864e8fc8
   757 ms     | 0x240c EC_ValidatePublicKey()
   761 ms     | 0x240c ret:0x0
   761 ms  0x240c ret:0x7feb86277020::7feb86277020  90 c7 40 75                                      ..@u
   762 ms  0x240c PK11_PubDeriveWithKDF()
   762 ms  0x240c seckey:0x7feb86277020
   762 ms     | 0x240c EC_ValidatePublicKey()
   766 ms     | 0x240c ret:0x0
   769 ms  0x240c ret:0x7feb882fd880
   769 ms  0x240c PK11_DeriveWithFlags()
   769 ms  0x240c basekey:0x7feb882fd880
   770 ms     | 0x240c PK11_DeriveWithTemplate()
   770 ms  0x240c ret:0x7feb862fac00
   770 ms  0x240c PK11_Derive()
   770 ms  0x240c basekey:0x7feb862fac00
   770 ms     | 0x240c PK11_DeriveWithTemplate()
   770 ms  0x240c ret:0x7feb862fad00
   770 ms  0x240c SECKEY_DestroyPrivateKey()
   770 ms  0x240c privk:0x7feb86277020::7feb86277020  90 c7 40 75                                      ..@u
   770 ms  0x240c privk:0x7feb86277020::7feb86277020  e5 e5 e5 e5                                      ....
   770 ms  0x240c PK11_Encrypt()
   770 ms  0x240c symkey:0x7feb862fae80
   771 ms  0x240c PR_Connect()
   771 ms  0x240c fd:0x7feb8637ce80
           /* TID 0x2472 */
   798 ms  0x2472 PR_Close()
   798 ms  0x2472 fd:0x7feb8637ce20
           /* TID 0x2414 */
   828 ms  0x2414 PR_Close()
   828 ms  0x2414 fd:0x7feb8637cd60
           /* TID 0x246a */
   828 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   829 ms  0x246a ret:0x0
           /* TID 0x240c */
   829 ms  0x240c SSL_AuthCertificateComplete()
   829 ms  0x240c fd:0x7feb8637c400
   829 ms  0x240c err:0x0
   829 ms  0x240c PK11_Encrypt()
   829 ms  0x240c symkey:0x7feb862fae80
   979 ms  0x240c SECKEY_DestroyPrivateKey()
   979 ms  0x240c privk:0x7feb8626e020::7feb8626e020  90 bc 2d 86                                      ..-.
   980 ms  0x240c privk:0x7feb8626e020::7feb8626e020  e5 e5 e5 e5                                      ....
   980 ms  0x240c SECKEY_DestroyPrivateKey()
   980 ms  0x240c privk:0x7feb8626c020::7feb8626c020  50 bb 2d 86                                      P.-.
   980 ms  0x240c privk:0x7feb8626c020::7feb8626c020  e5 e5 e5 e5                                      ....
  1194 ms  0x240c SSL_ImportFD()
  1194 ms  0x240c ret:0x7feb754281c0
  1194 ms  0x240c SSL_AuthCertificateHook()
  1194 ms  0x240c fd:0x7feb754281c0
  1195 ms  0x240c ret:0x0
  1195 ms  0x240c PR_Connect()
  1195 ms  0x240c fd:0x7feb754281c0
  1220 ms  0x240c SECKEY_CreateECPrivateKey()
  1220 ms  0x240c cx:0x7feb75402c08
  1222 ms     | 0x240c EC_ValidatePublicKey()
  1222 ms     | 0x240c ret:0x0
  1222 ms  0x240c ret:0x7feb8626d820::7feb8626d820  90 c7 40 75                                      ..@u
  1222 ms  0x240c SECKEY_CreateECPrivateKey()
  1222 ms  0x240c cx:0x7feb75402c08
  1224 ms     | 0x240c EC_ValidatePublicKey()
  1228 ms     | 0x240c ret:0x0
  1228 ms  0x240c ret:0x7feb86273820::7feb86273820  50 c6 40 75                                      P.@u
           /* TID 0x246a */
  1280 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1280 ms  0x246a ret:0x0
           /* TID 0x240c */
  1281 ms  SECKEY_ECParamsToKeySize()
  1281 ms  0x240c ret:0x100
  1281 ms  0x240c SECKEY_CreateECPrivateKey()
  1281 ms  0x240c cx:0x7feb75402c08
  1282 ms     | 0x240c EC_ValidatePublicKey()
  1286 ms     | 0x240c ret:0x0
  1286 ms  0x240c ret:0x7feb86277020::7feb86277020  f0 cb 40 75                                      ..@u
  1286 ms  0x240c PK11_PubDeriveWithKDF()
  1286 ms  0x240c seckey:0x7feb86277020
  1286 ms     | 0x240c EC_ValidatePublicKey()
  1290 ms     | 0x240c ret:0x0
  1294 ms  0x240c ret:0x7feb882fd880
  1294 ms  0x240c PK11_DeriveWithFlags()
  1294 ms  0x240c basekey:0x7feb882fd880
  1294 ms     | 0x240c PK11_DeriveWithTemplate()
  1294 ms  0x240c ret:0x7feb8628ed00
  1294 ms  0x240c PK11_Derive()
  1294 ms  0x240c basekey:0x7feb8628ed00
  1294 ms     | 0x240c PK11_DeriveWithTemplate()
  1294 ms  0x240c ret:0x7feb862fb700
  1294 ms  0x240c SECKEY_DestroyPrivateKey()
  1294 ms  0x240c privk:0x7feb86277020::7feb86277020  f0 cb 40 75                                      ..@u
  1294 ms  0x240c privk:0x7feb86277020::7feb86277020  e5 e5 e5 e5                                      ....
  1295 ms  0x240c PK11_Encrypt()
  1295 ms  0x240c symkey:0x7feb862fbc00
  1295 ms  0x240c SSL_AuthCertificateComplete()
  1295 ms  0x240c fd:0x7feb754281c0
  1295 ms  0x240c err:0x0
  1295 ms  0x240c PK11_Encrypt()
  1295 ms  0x240c symkey:0x7feb862fbc00
  1347 ms  0x240c SECKEY_DestroyPrivateKey()
  1347 ms  0x240c privk:0x7feb86273820::7feb86273820  50 c6 40 75                                      P.@u
  1347 ms  0x240c privk:0x7feb86273820::7feb86273820  e5 e5 e5 e5                                      ....
  1347 ms  0x240c SECKEY_DestroyPrivateKey()
  1347 ms  0x240c privk:0x7feb8626d820::7feb8626d820  90 c7 40 75                                      ..@u
  1347 ms  0x240c privk:0x7feb8626d820::7feb8626d820  e5 e5 e5 e5                                      ....
  1351 ms  0x240c PK11_Encrypt()
  1351 ms  0x240c symkey:0x7feb862fbc00
  1382 ms  0x240c PK11_Encrypt()
  1382 ms  0x240c symkey:0x7feb862fbc00
  1413 ms  0x240c PK11_Encrypt()
  1413 ms  0x240c symkey:0x7feb862fbc00
  1441 ms  0x240c PK11_Encrypt()
  1441 ms  0x240c symkey:0x7feb862fbc00
  1565 ms  0x240c PK11_Encrypt()
  1565 ms  0x240c symkey:0x7feb862fbc00
  1598 ms  0x240c PK11_Encrypt()
  1598 ms  0x240c symkey:0x7feb862fbc00
  1630 ms  0x240c PK11_Encrypt()
  1630 ms  0x240c symkey:0x7feb862fbc00
           /* TID 0x2461 */
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb754282b0
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb75428370
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb754282b0
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb75428370
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb754282b0
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb75428370
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb754282b0
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb75428370
  1658 ms  0x2461 PR_Close()
  1658 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb75428370
  1659 ms  0x2461 PR_Close()
  1659 ms  0x2461 fd:0x7feb754282b0
  1660 ms  0x2461 PR_Close()
  1660 ms  0x2461 fd:0x7feb75428370
  1660 ms  0x2461 PR_Close()
  1660 ms  0x2461 fd:0x7feb754282b0
  1660 ms  0x2461 PR_Close()
  1660 ms  0x2461 fd:0x7feb75428370
  1660 ms  0x2461 PR_Close()
  1660 ms  0x2461 fd:0x7feb754282b0
  1660 ms  0x2461 PR_Close()
  1660 ms  0x2461 fd:0x7feb75428370
  1663 ms  0x2461 PR_Close()
  1663 ms  0x2461 fd:0x7feb754282b0
  1663 ms  0x2461 PR_Close()
  1663 ms  0x2461 fd:0x7feb75428280
  1665 ms  0x2461 PR_Close()
  1665 ms  0x2461 fd:0x7feb75428280
  1666 ms  0x2461 PR_Close()
  1666 ms  0x2461 fd:0x7feb754282b0
  1668 ms  0x2461 PR_Close()
  1668 ms  0x2461 fd:0x7feb754282b0
  1668 ms  0x2461 PR_Close()
  1668 ms  0x2461 fd:0x7feb754282b0
  1670 ms  0x2461 PR_Close()
  1670 ms  0x2461 fd:0x7feb754282b0
  1670 ms  0x2461 PR_Close()
  1670 ms  0x2461 fd:0x7feb754282b0
  1702 ms  0x2461 PR_Close()
  1702 ms  0x2461 fd:0x7feb754282b0
  1703 ms  0x2461 PR_Close()
  1703 ms  0x2461 fd:0x7feb754282b0
  1710 ms  0x2461 PR_Close()
  1710 ms  0x2461 fd:0x7feb754282b0
  1711 ms  0x2461 PR_Close()
  1711 ms  0x2461 fd:0x7feb754282b0
  1717 ms  0x2461 PR_Close()
  1717 ms  0x2461 fd:0x7feb754282b0
  1717 ms  0x2461 PR_Close()
  1717 ms  0x2461 fd:0x7feb754282b0
  1719 ms  0x2461 PR_Close()
  1719 ms  0x2461 fd:0x7feb754282b0
  1719 ms  0x2461 PR_Close()
  1719 ms  0x2461 fd:0x7feb754282b0
           /* TID 0x245f */
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1719 ms  0x245f PR_Close()
  1719 ms  0x245f fd:0x7feb754282b0
  1720 ms  0x245f PR_Close()
  1720 ms  0x245f fd:0x7feb754282b0
  1720 ms  0x245f PR_Close()
  1720 ms  0x245f fd:0x7feb754282b0
  1720 ms  0x245f PR_Close()
  1720 ms  0x245f fd:0x7feb754282b0
           /* TID 0x2472 */
  2222 ms  0x2472 PR_Close()
  2222 ms  0x2472 fd:0x7feb75428670
  2225 ms  0x2472 PR_Close()
  2225 ms  0x2472 fd:0x7feb75428670
  2816 ms  0x2472 PR_Close()
  2816 ms  0x2472 fd:0x7feb75428670
           /* TID 0x2414 */
  4225 ms  0x2414 PR_Close()
  4225 ms  0x2414 fd:0x7feb75428670
  4225 ms  0x2414 PR_Close()
  4225 ms  0x2414 fd:0x7feb754287c0
           /* TID 0x240c */
  4429 ms  0x240c SSL_ImportFD()
  4429 ms  0x240c ret:0x7feb904a81f0
  4429 ms  0x240c SSL_AuthCertificateHook()
  4429 ms  0x240c fd:0x7feb904a81f0
  4429 ms  0x240c ret:0x0
  4429 ms  0x240c PR_Connect()
  4429 ms  0x240c fd:0x7feb904a81f0
  4559 ms  0x240c SECKEY_CreateECPrivateKey()
  4559 ms  0x240c cx:0x7feb75402f48
  4561 ms     | 0x240c EC_ValidatePublicKey()
  4561 ms     | 0x240c ret:0x0
  4561 ms  0x240c ret:0x7feb8c372820::7feb8c372820  40 07 89 87                                      @...
  4561 ms  0x240c SECKEY_CreateECPrivateKey()
  4561 ms  0x240c cx:0x7feb75402f48
  4564 ms     | 0x240c EC_ValidatePublicKey()
  4568 ms     | 0x240c ret:0x0
  4568 ms  0x240c ret:0x7feb75203020::7feb75203020  20 09 89 87                                       ...
  4832 ms  SECKEY_ECParamsToKeySize()
  4834 ms  0x240c ret:0x100
  4834 ms  0x240c SECKEY_CreateECPrivateKey()
  4834 ms  0x240c cx:0x7feb75402f48
  4836 ms     | 0x240c EC_ValidatePublicKey()
  4841 ms     | 0x240c ret:0x0
  4841 ms  0x240c ret:0x7feb7520a820::7feb7520a820  c0 0e 89 87                                      ....
  4842 ms  0x240c PK11_PubDeriveWithKDF()
  4842 ms  0x240c seckey:0x7feb7520a820
  4842 ms     | 0x240c EC_ValidatePublicKey()
  4849 ms     | 0x240c ret:0x0
  4854 ms  0x240c ret:0x7feb882fd880
  4854 ms  0x240c PK11_DeriveWithFlags()
  4854 ms  0x240c basekey:0x7feb882fd880
  4854 ms     | 0x240c PK11_DeriveWithTemplate()
  4854 ms  0x240c ret:0x7feb8788b100
  4854 ms  0x240c PK11_Derive()
  4854 ms  0x240c basekey:0x7feb8788b100
  4854 ms     | 0x240c PK11_DeriveWithTemplate()
  4854 ms  0x240c ret:0x7feb8788b180
  4854 ms  0x240c SECKEY_DestroyPrivateKey()
  4854 ms  0x240c privk:0x7feb7520a820::7feb7520a820  c0 0e 89 87                                      ....
  4855 ms  0x240c privk:0x7feb7520a820::7feb7520a820  e5 e5 e5 e5                                      ....
  4855 ms  0x240c PK11_Encrypt()
  4855 ms  0x240c symkey:0x7feb8788b300
           /* TID 0x246a */
  4883 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4883 ms  0x246a ret:0x0
           /* TID 0x2414 */
  4885 ms  0x2414 PR_Close()
  4885 ms  0x2414 fd:0x7feb753e09d0
           /* TID 0x240c */
  4887 ms  0x240c SSL_AuthCertificateComplete()
  4887 ms  0x240c fd:0x7feb904a81f0
  4887 ms  0x240c err:0x0
  4889 ms  0x240c PK11_Encrypt()
  4889 ms  0x240c symkey:0x7feb8788b300
  4989 ms  0x240c SECKEY_DestroyPrivateKey()
  4989 ms  0x240c privk:0x7feb75203020::7feb75203020  20 09 89 87                                       ...
  4989 ms  0x240c privk:0x7feb75203020::7feb75203020  e5 e5 e5 e5                                      ....
  4989 ms  0x240c SECKEY_DestroyPrivateKey()
  4989 ms  0x240c privk:0x7feb8c372820::7feb8c372820  40 07 89 87                                      @...
  4990 ms  0x240c privk:0x7feb8c372820::7feb8c372820  e5 e5 e5 e5                                      ....
           /* TID 0x2423 */
  5158 ms  0x2423 PR_Close()
  5158 ms  0x2423 fd:0x7feb753e0ca0
           /* TID 0x240c */
  5198 ms  0x240c PR_Close()
  5198 ms  0x240c fd:0x7feb904a81f0
  5198 ms     | 0x240c PK11_Encrypt()
  5198 ms     | 0x240c symkey:0x7feb8788b300
           /* TID 0x2414 */
  5207 ms  0x2414 PR_Close()
  5207 ms  0x2414 fd:0x7feb75193820
           /* TID 0x240c */
  5220 ms  0x240c SSL_ImportFD()
  5220 ms  0x240c ret:0x7feb75131f70
  5220 ms  0x240c SSL_AuthCertificateHook()
  5220 ms  0x240c fd:0x7feb75131f70
  5220 ms  0x240c ret:0x0
  5220 ms  0x240c PR_Connect()
  5220 ms  0x240c fd:0x7feb75131f70
  5224 ms  0x240c SSL_ImportFD()
  5224 ms  0x240c ret:0x7feb75350280
  5224 ms  0x240c SSL_AuthCertificateHook()
  5224 ms  0x240c fd:0x7feb75350280
  5224 ms  0x240c ret:0x0
  5224 ms  0x240c PR_Connect()
  5224 ms  0x240c fd:0x7feb75350280
  5313 ms  0x240c PR_Close()
  5313 ms  0x240c fd:0x7feb75131f70
  5353 ms  0x240c SECKEY_CreateECPrivateKey()
  5353 ms  0x240c cx:0x7feb754035c8
  5354 ms     | 0x240c EC_ValidatePublicKey()
  5354 ms     | 0x240c ret:0x0
  5355 ms  0x240c ret:0x7feb751ac820::7feb751ac820  d0 73 1d 75                                      .s.u
  5355 ms  0x240c SECKEY_CreateECPrivateKey()
  5355 ms  0x240c cx:0x7feb754035c8
  5356 ms     | 0x240c EC_ValidatePublicKey()
  5360 ms     | 0x240c ret:0x0
  5360 ms  0x240c ret:0x7feb751ae820::7feb751ae820  50 76 1d 75                                      Pv.u
  5458 ms  0x240c SSL_ImportFD()
  5458 ms  0x240c ret:0x7feb75193c70
  5458 ms  0x240c SSL_AuthCertificateHook()
  5458 ms  0x240c fd:0x7feb75193c70
  5458 ms  0x240c ret:0x0
  5458 ms  0x240c PR_Connect()
  5458 ms  0x240c fd:0x7feb75193c70
  5491 ms  0x240c PK11_Derive()
  5491 ms  0x240c basekey:0x7feb8788b100
  5491 ms     | 0x240c PK11_DeriveWithTemplate()
  5491 ms  0x240c ret:0x7feb8788b180
  5491 ms  0x240c PK11_Encrypt()
  5491 ms  0x240c symkey:0x7feb8788b200
  5493 ms  0x240c SECKEY_DestroyPrivateKey()
  5493 ms  0x240c privk:0x7feb751ae820::7feb751ae820  50 76 1d 75                                      Pv.u
  5494 ms  0x240c privk:0x7feb751ae820::7feb751ae820  e5 e5 e5 e5                                      ....
  5494 ms  0x240c SECKEY_DestroyPrivateKey()
  5494 ms  0x240c privk:0x7feb751ac820::7feb751ac820  d0 73 1d 75                                      .s.u
  5494 ms  0x240c privk:0x7feb751ac820::7feb751ac820  e5 e5 e5 e5                                      ....
  5496 ms  0x240c PK11_Encrypt()
  5496 ms  0x240c symkey:0x7feb8788b200
  5518 ms  0x240c SECKEY_CreateECPrivateKey()
  5518 ms  0x240c cx:0x7feb75403428
  5519 ms     | 0x240c EC_ValidatePublicKey()
  5519 ms     | 0x240c ret:0x0
  5519 ms  0x240c ret:0x7feb751ac820::7feb751ac820  00 76 1d 75                                      .v.u
  5519 ms  0x240c SECKEY_CreateECPrivateKey()
  5519 ms  0x240c cx:0x7feb75403428
  5521 ms     | 0x240c EC_ValidatePublicKey()
  5526 ms     | 0x240c ret:0x0
  5526 ms  0x240c ret:0x7feb751ae820::7feb751ae820  70 74 1d 75                                      pt.u
           /* TID 0x246a */
  5591 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5591 ms  0x246a ret:0x0
           /* TID 0x240c */
  5592 ms  SECKEY_ECParamsToKeySize()
  5592 ms  0x240c ret:0x100
  5592 ms  0x240c SECKEY_CreateECPrivateKey()
  5592 ms  0x240c cx:0x7feb75403428
  5594 ms     | 0x240c EC_ValidatePublicKey()
  5599 ms     | 0x240c ret:0x0
  5599 ms  0x240c ret:0x7feb751b6820::7feb751b6820  90 7c 1d 75                                      .|.u
  5600 ms  0x240c PK11_PubDeriveWithKDF()
  5600 ms  0x240c seckey:0x7feb751b6820
  5600 ms     | 0x240c EC_ValidatePublicKey()
  5604 ms     | 0x240c ret:0x0
  5610 ms  0x240c ret:0x7feb882fd880
  5610 ms  0x240c PK11_DeriveWithFlags()
  5610 ms  0x240c basekey:0x7feb882fd880
  5611 ms     | 0x240c PK11_DeriveWithTemplate()
  5611 ms  0x240c ret:0x7feb7535bd00
  5611 ms  0x240c PK11_Derive()
  5611 ms  0x240c basekey:0x7feb7535bd00
  5611 ms     | 0x240c PK11_DeriveWithTemplate()
  5611 ms  0x240c ret:0x7feb7535bd80
  5611 ms  0x240c SECKEY_DestroyPrivateKey()
  5611 ms  0x240c privk:0x7feb751b6820::7feb751b6820  90 7c 1d 75                                      .|.u
  5611 ms  0x240c privk:0x7feb751b6820::7feb751b6820  e5 e5 e5 e5                                      ....
  5611 ms  0x240c PK11_Encrypt()
  5611 ms  0x240c symkey:0x7feb8788b680
  5613 ms  0x240c SSL_AuthCertificateComplete()
  5613 ms  0x240c fd:0x7feb75193c70
  5613 ms  0x240c err:0x0
  5614 ms  0x240c PK11_Encrypt()
  5614 ms  0x240c symkey:0x7feb8788b680
  5614 ms  0x240c PK11_Encrypt()
  5614 ms  0x240c symkey:0x7feb8788b680
  5679 ms  0x240c SECKEY_DestroyPrivateKey()
  5679 ms  0x240c privk:0x7feb751ae820::7feb751ae820  70 74 1d 75                                      pt.u
  5679 ms  0x240c privk:0x7feb751ae820::7feb751ae820  e5 e5 e5 e5                                      ....
  5679 ms  0x240c SECKEY_DestroyPrivateKey()
  5679 ms  0x240c privk:0x7feb751ac820::7feb751ac820  00 76 1d 75                                      .v.u
  5680 ms  0x240c privk:0x7feb751ac820::7feb751ac820  e5 e5 e5 e5                                      ....
  5741 ms  0x240c PK11_Encrypt()
  5741 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  5763 ms  0x2414 PR_Close()
  5763 ms  0x2414 fd:0x7feb75350520
  5900 ms  0x2414 PR_Close()
  5900 ms  0x2414 fd:0x7feb75350f70
           /* TID 0x240c */
  5908 ms  0x240c PK11_Encrypt()
  5908 ms  0x240c symkey:0x7feb8788b680
  5918 ms  0x240c PK11_Encrypt()
  5918 ms  0x240c symkey:0x7feb8788b680
  5920 ms  0x240c PK11_Encrypt()
  5920 ms  0x240c symkey:0x7feb8788b680
  5934 ms  0x240c PK11_Encrypt()
  5934 ms  0x240c symkey:0x7feb8788b680
  5935 ms  0x240c PK11_Encrypt()
  5935 ms  0x240c symkey:0x7feb8788b680
  5935 ms  0x240c SSL_ImportFD()
  5935 ms  0x240c ret:0x7feb754d0250
  5935 ms  0x240c SSL_AuthCertificateHook()
  5935 ms  0x240c fd:0x7feb754d0250
  5935 ms  0x240c ret:0x0
  5936 ms  0x240c PK11_Encrypt()
  5936 ms  0x240c symkey:0x7feb8788b680
  5936 ms  0x240c PR_Connect()
  5936 ms  0x240c fd:0x7feb754d0250
  5936 ms  0x240c PK11_Encrypt()
  5936 ms  0x240c symkey:0x7feb8788b680
  5939 ms  0x240c PK11_Encrypt()
  5939 ms  0x240c symkey:0x7feb8788b680
  5940 ms  0x240c PK11_Encrypt()
  5940 ms  0x240c symkey:0x7feb8788b680
  5942 ms  0x240c PK11_Encrypt()
  5942 ms  0x240c symkey:0x7feb8788b680
  5943 ms  0x240c PK11_Encrypt()
  5943 ms  0x240c symkey:0x7feb8788b680
  5944 ms  0x240c PK11_Encrypt()
  5944 ms  0x240c symkey:0x7feb8788b680
  5944 ms  0x240c PK11_Encrypt()
  5944 ms  0x240c symkey:0x7feb8788b680
  5945 ms  0x240c PK11_Encrypt()
  5945 ms  0x240c symkey:0x7feb8788b680
  5945 ms  0x240c PK11_Encrypt()
  5945 ms  0x240c symkey:0x7feb8788b680
  5945 ms  0x240c PK11_Encrypt()
  5945 ms  0x240c symkey:0x7feb8788b680
  5946 ms  0x240c PK11_Encrypt()
  5946 ms  0x240c symkey:0x7feb8788b680
  5946 ms  0x240c PK11_Encrypt()
  5946 ms  0x240c symkey:0x7feb8788b680
  5949 ms  0x240c PK11_Encrypt()
  5949 ms  0x240c symkey:0x7feb8788b680
  5951 ms  0x240c SSL_ImportFD()
  5951 ms  0x240c ret:0x7feb754d0760
  5951 ms  0x240c SSL_AuthCertificateHook()
  5951 ms  0x240c fd:0x7feb754d0760
  5951 ms  0x240c ret:0x0
  5951 ms  0x240c PR_Connect()
  5951 ms  0x240c fd:0x7feb754d0760
  5977 ms  0x240c SECKEY_CreateECPrivateKey()
  5977 ms  0x240c cx:0x7feb75403f88
  5977 ms     | 0x240c EC_ValidatePublicKey()
  5977 ms     | 0x240c ret:0x0
  5977 ms  0x240c ret:0x7feb75030020::7feb75030020  c0 4e 4a 75                                      .NJu
  5977 ms  0x240c SECKEY_CreateECPrivateKey()
  5977 ms  0x240c cx:0x7feb75403f88
  5978 ms     | 0x240c EC_ValidatePublicKey()
  5979 ms     | 0x240c ret:0x0
  5979 ms  0x240c ret:0x7feb75032820::7feb75032820  a0 71 3c 93                                      .q<.
  5985 ms  0x240c SSL_ImportFD()
  5985 ms  0x240c ret:0x7feb754d06a0
  5985 ms  0x240c SSL_AuthCertificateHook()
  5985 ms  0x240c fd:0x7feb754d06a0
  5985 ms  0x240c ret:0x0
  5985 ms  0x240c PR_Connect()
  5985 ms  0x240c fd:0x7feb754d06a0
  5994 ms  0x240c SECKEY_CreateECPrivateKey()
  5994 ms  0x240c cx:0x7feb75403de8
  5995 ms     | 0x240c EC_ValidatePublicKey()
  5995 ms     | 0x240c ret:0x0
  5995 ms  0x240c ret:0x7feb75035020::7feb75035020  20 74 3c 93                                       t<.
  5995 ms  0x240c SECKEY_CreateECPrivateKey()
  5995 ms  0x240c cx:0x7feb75403de8
  5996 ms     | 0x240c EC_ValidatePublicKey()
  5998 ms     | 0x240c ret:0x0
  5998 ms  0x240c ret:0x7feb75037020::7feb75037020  30 78 3c 93                                      0x<.
           /* TID 0x2414 */
  6030 ms  0x2414 PR_Close()
  6030 ms  0x2414 fd:0x7feb754d72e0
  6035 ms  0x2414 PR_Close()
  6035 ms  0x2414 fd:0x7feb75491040
           /* TID 0x246a */
  6036 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6036 ms  0x246a ret:0x0
  6036 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6036 ms  0x246a ret:0x0
           /* TID 0x240c */
  6037 ms  SECKEY_ECParamsToKeySize()
  6037 ms  0x240c ret:0x100
  6037 ms  0x240c SECKEY_CreateECPrivateKey()
  6037 ms  0x240c cx:0x7feb75403f88
  6038 ms     | 0x240c EC_ValidatePublicKey()
  6043 ms     | 0x240c ret:0x0
  6043 ms  0x240c ret:0x7feb75047820::7feb75047820  90 02 47 75                                      ..Gu
  6043 ms  0x240c PK11_PubDeriveWithKDF()
  6043 ms  0x240c seckey:0x7feb75047820
  6043 ms     | 0x240c EC_ValidatePublicKey()
  6045 ms     | 0x240c ret:0x0
  6054 ms  0x240c ret:0x7feb882fd880
  6054 ms  0x240c PK11_DeriveWithFlags()
  6054 ms  0x240c basekey:0x7feb882fd880
  6054 ms     | 0x240c PK11_DeriveWithTemplate()
  6054 ms  0x240c ret:0x7feb754b3a80
  6054 ms  0x240c PK11_Derive()
  6054 ms  0x240c basekey:0x7feb754b3a80
  6054 ms     | 0x240c PK11_DeriveWithTemplate()
  6054 ms  0x240c ret:0x7feb754b3f00
  6054 ms  0x240c SECKEY_DestroyPrivateKey()
  6054 ms  0x240c privk:0x7feb75047820::7feb75047820  90 02 47 75                                      ..Gu
  6054 ms  0x240c privk:0x7feb75047820::7feb75047820  e5 e5 e5 e5                                      ....
  6054 ms  0x240c PK11_Encrypt()
  6054 ms  0x240c symkey:0x7feb754c1a00
  6054 ms  0x240c SSL_AuthCertificateComplete()
  6054 ms  0x240c fd:0x7feb754d0760
  6054 ms  0x240c err:0x0
           /* TID 0x2414 */
  6055 ms  0x2414 PR_Close()
  6055 ms  0x2414 fd:0x7feb75350f70
           /* TID 0x240c */
  6055 ms  0x240c PK11_Encrypt()
  6055 ms  0x240c symkey:0x7feb754c1a00
           /* TID 0x2414 */
  6056 ms  0x2414 PR_Close()
  6056 ms  0x2414 fd:0x7feb75350f70
  6057 ms  0x2414 PR_Close()
  6057 ms  0x2414 fd:0x7feb75193430
  6058 ms  0x2414 PR_Close()
  6058 ms  0x2414 fd:0x7feb75193430
  6059 ms  0x2414 PR_Close()
  6059 ms  0x2414 fd:0x7feb75193430
           /* TID 0x246a */
  6060 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6060 ms  0x246a ret:0x0
           /* TID 0x240c */
  6060 ms  SECKEY_ECParamsToKeySize()
  6060 ms  0x240c ret:0x100
  6060 ms  0x240c SECKEY_CreateECPrivateKey()
  6060 ms  0x240c cx:0x7feb75403de8
  6061 ms     | 0x240c EC_ValidatePublicKey()
  6062 ms     | 0x240c ret:0x0
  6062 ms  0x240c ret:0x7feb75045820::7feb75045820  90 02 47 75                                      ..Gu
  6062 ms  0x240c PK11_PubDeriveWithKDF()
  6062 ms  0x240c seckey:0x7feb75045820
  6062 ms     | 0x240c EC_ValidatePublicKey()
  6069 ms     | 0x240c ret:0x0
  6071 ms  0x240c ret:0x7feb882fd880
  6071 ms  0x240c PK11_DeriveWithFlags()
  6071 ms  0x240c basekey:0x7feb882fd880
  6071 ms     | 0x240c PK11_DeriveWithTemplate()
  6071 ms  0x240c ret:0x7feb754c1e00
  6071 ms  0x240c PK11_Derive()
  6071 ms  0x240c basekey:0x7feb754c1e00
  6071 ms     | 0x240c PK11_DeriveWithTemplate()
  6071 ms  0x240c ret:0x7feb754c1e80
  6071 ms  0x240c SECKEY_DestroyPrivateKey()
  6071 ms  0x240c privk:0x7feb75045820::7feb75045820  90 02 47 75                                      ..Gu
  6071 ms  0x240c privk:0x7feb75045820::7feb75045820  e5 e5 e5 e5                                      ....
  6071 ms  0x240c PK11_Encrypt()
  6071 ms  0x240c symkey:0x7feb754c2000
  6073 ms  0x240c SSL_ImportFD()
  6073 ms  0x240c ret:0x7feb75491250
  6073 ms  0x240c SSL_AuthCertificateHook()
  6073 ms  0x240c fd:0x7feb75491250
  6073 ms  0x240c ret:0x0
  6073 ms  0x240c PR_Connect()
  6073 ms  0x240c fd:0x7feb75491250
  6073 ms  0x240c SSL_AuthCertificateComplete()
  6073 ms  0x240c fd:0x7feb754d0250
  6073 ms  0x240c err:0x0
           /* TID 0x2414 */
  6076 ms  0x2414 PR_Close()
  6076 ms  0x2414 fd:0x7feb75350f70
           /* TID 0x240c */
  6078 ms  0x240c SECKEY_CreateECPrivateKey()
  6078 ms  0x240c cx:0x7feb75404128
  6078 ms     | 0x240c EC_ValidatePublicKey()
  6078 ms     | 0x240c ret:0x0
  6078 ms  0x240c ret:0x7feb75045820::7feb75045820  a0 01 47 75                                      ..Gu
  6078 ms  0x240c SECKEY_CreateECPrivateKey()
  6078 ms  0x240c cx:0x7feb75404128
  6079 ms     | 0x240c EC_ValidatePublicKey()
  6088 ms     | 0x240c ret:0x0
  6088 ms  0x240c ret:0x7feb75048820::7feb75048820  20 04 47 75                                       .Gu
  6089 ms  0x240c PK11_Encrypt()
  6089 ms  0x240c symkey:0x7feb8788b680
  6094 ms  0x240c SSL_ImportFD()
  6094 ms  0x240c ret:0x7feb754d7730
  6094 ms  0x240c SSL_AuthCertificateHook()
  6094 ms  0x240c fd:0x7feb754d7730
  6094 ms  0x240c ret:0x0
  6094 ms  0x240c PR_Connect()
  6094 ms  0x240c fd:0x7feb754d7730
           /* TID 0x2414 */
  6099 ms  0x2414 PR_Close()
  6099 ms  0x2414 fd:0x7feb750a1040
  6099 ms  0x2414 PR_Close()
  6099 ms  0x2414 fd:0x7feb750a1160
  6099 ms  0x2414 PR_Close()
  6099 ms  0x2414 fd:0x7feb750a17f0
           /* TID 0x240c */
  6105 ms  0x240c SECKEY_DestroyPrivateKey()
  6105 ms  0x240c privk:0x7feb75032820::7feb75032820  a0 71 3c 93                                      .q<.
  6105 ms  0x240c privk:0x7feb75032820::7feb75032820  e5 e5 e5 e5                                      ....
  6105 ms  0x240c SECKEY_DestroyPrivateKey()
  6105 ms  0x240c privk:0x7feb75030020::7feb75030020  c0 4e 4a 75                                      .NJu
  6105 ms  0x240c privk:0x7feb75030020::7feb75030020  e5 e5 e5 e5                                      ....
  6109 ms  0x240c SECKEY_CreateECPrivateKey()
  6109 ms  0x240c cx:0x7feb75404608
           /* TID 0x2414 */
  6110 ms  0x2414 PR_Close()
  6110 ms  0x2414 fd:0x7feb750a1100
           /* TID 0x240c */
  6110 ms     | 0x240c EC_ValidatePublicKey()
  6110 ms     | 0x240c ret:0x0
  6110 ms  0x240c ret:0x7feb75030020::7feb75030020  b0 05 47 75                                      ..Gu
  6111 ms  0x240c SECKEY_CreateECPrivateKey()
  6111 ms  0x240c cx:0x7feb75404608
  6111 ms     | 0x240c EC_ValidatePublicKey()
  6114 ms     | 0x240c ret:0x0
  6114 ms  0x240c ret:0x7feb75032820::7feb75032820  c0 09 47 75                                      ..Gu
           /* TID 0x2414 */
  6118 ms  0x2414 PR_Close()
  6118 ms  0x2414 fd:0x7feb750a11c0
  6120 ms  0x2414 PR_Close()
  6120 ms  0x2414 fd:0x7feb750a11c0
           /* TID 0x240c */
  6129 ms  0x240c SECKEY_DestroyPrivateKey()
  6129 ms  0x240c privk:0x7feb75037020::7feb75037020  30 78 3c 93                                      0x<.
  6129 ms  0x240c privk:0x7feb75037020::7feb75037020  e5 e5 e5 e5                                      ....
  6129 ms  0x240c SECKEY_DestroyPrivateKey()
  6129 ms  0x240c privk:0x7feb75035020::7feb75035020  20 74 3c 93                                       t<.
  6129 ms  0x240c privk:0x7feb75035020::7feb75035020  e5 e5 e5 e5                                      ....
           /* TID 0x2414 */
  6146 ms  0x2414 PR_Close()
  6146 ms  0x2414 fd:0x7feb750a11c0
  6149 ms  0x2414 PR_Close()
  6149 ms  0x2414 fd:0x7feb750a11c0
           /* TID 0x240c */
  6151 ms  0x240c PK11_Encrypt()
  6151 ms  0x240c symkey:0x7feb8788b200
           /* TID 0x2414 */
  6152 ms  0x2414 PR_Close()
  6152 ms  0x2414 fd:0x7feb750a1190
           /* TID 0x240c */
  6154 ms  SECKEY_ECParamsToKeySize()
  6154 ms  0x240c ret:0x100
  6154 ms  0x240c SECKEY_CreateECPrivateKey()
  6154 ms  0x240c cx:0x7feb75404608
  6155 ms     | 0x240c EC_ValidatePublicKey()
  6157 ms     | 0x240c ret:0x0
           /* TID 0x246a */
  6157 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6157 ms  0x246a ret:0x0
           /* TID 0x240c */
  6158 ms  0x240c ret:0x7feb877df820::7feb877df820  80 43 4a 75                                      .CJu
  6159 ms  0x240c PK11_PubDeriveWithKDF()
  6159 ms  0x240c seckey:0x7feb877df820
  6159 ms     | 0x240c EC_ValidatePublicKey()
  6162 ms     | 0x240c ret:0x0
  6163 ms  0x240c ret:0x7feb882fd880
  6163 ms  0x240c PK11_DeriveWithFlags()
  6163 ms  0x240c basekey:0x7feb882fd880
  6163 ms     | 0x240c PK11_DeriveWithTemplate()
  6164 ms  0x240c ret:0x7feb750a6080
  6164 ms  0x240c PK11_Derive()
  6164 ms  0x240c basekey:0x7feb750a6080
  6164 ms     | 0x240c PK11_DeriveWithTemplate()
  6164 ms  0x240c ret:0x7feb750a6100
  6164 ms  0x240c SECKEY_DestroyPrivateKey()
  6164 ms  0x240c privk:0x7feb877df820::7feb877df820  80 43 4a 75                                      .CJu
  6164 ms  0x240c privk:0x7feb877df820::7feb877df820  e5 e5 e5 e5                                      ....
  6164 ms  0x240c PK11_Encrypt()
  6164 ms  0x240c symkey:0x7feb750a6280
           /* TID 0x2414 */
  6175 ms  0x2414 PR_Close()
  6175 ms  0x2414 fd:0x7feb750a1070
           /* TID 0x240c */
  6176 ms  0x240c PK11_Derive()
  6176 ms  0x240c basekey:0x7feb882fd880
  6176 ms     | 0x240c PK11_DeriveWithTemplate()
  6176 ms  0x240c ret:0x7feb750a5400
  6176 ms  0x240c PK11_PubDeriveWithKDF()
  6176 ms  0x240c seckey:0x7feb75045820
  6176 ms     | 0x240c EC_ValidatePublicKey()
  6176 ms     | 0x240c ret:0x0
  6176 ms  0x240c ret:0x7feb882fd880
  6176 ms  SECKEY_ECParamsToKeySize()
  6176 ms  0x240c ret:0xff
  6176 ms  0x240c PK11_DeriveWithFlags()
  6176 ms  0x240c basekey:0x7feb750a5400
  6176 ms     | 0x240c PK11_DeriveWithTemplate()
  6176 ms  0x240c ret:0x7feb750a6480
  6176 ms  0x240c PK11_Derive()
  6176 ms  0x240c basekey:0x7feb882fd880
  6176 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a6500
  6177 ms  0x240c PK11_DeriveWithFlags()
  6177 ms  0x240c basekey:0x7feb750a6500
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a5400
  6177 ms  0x240c PK11_DeriveWithFlags()
  6177 ms  0x240c basekey:0x7feb750a6500
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb882fd880
  6177 ms  0x240c PK11_DeriveWithFlags()
  6177 ms  0x240c basekey:0x7feb750a6500
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a6480
  6177 ms  0x240c PK11_Derive()
  6177 ms  0x240c basekey:0x7feb750a6580
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a6600
  6177 ms  0x240c PK11_DeriveWithFlags()
  6177 ms  0x240c basekey:0x7feb882fd880
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a6500
  6177 ms  0x240c PK11_DeriveWithFlags()
  6177 ms  0x240c basekey:0x7feb882fd880
  6177 ms     | 0x240c PK11_DeriveWithTemplate()
  6177 ms  0x240c ret:0x7feb750a6480
           /* TID 0x246a */
  7180 ms  SECKEY_ECParamsToBasePointOrderLen()
  7180 ms  0x246a ret:0x180
  7180 ms  SECKEY_ECParamsToBasePointOrderLen()
  7180 ms  0x246a ret:0x180
  7181 ms  0x246a EC_ValidatePublicKey()
  7186 ms  0x246a ret:0x0
           /* TID 0x240c */
  7193 ms  SECKEY_ECParamsToKeySize()
  7193 ms  0x240c ret:0x100
  7193 ms  SECKEY_ECParamsToBasePointOrderLen()
  7193 ms  0x240c ret:0x100
  7193 ms  SECKEY_ECParamsToBasePointOrderLen()
  7193 ms  0x240c ret:0x100
  7193 ms  0x240c EC_ValidatePublicKey()
  7198 ms  0x240c ret:0x0
  7203 ms  0x240c PK11_DeriveWithFlags()
  7203 ms  0x240c basekey:0x7feb882fd880
  7203 ms     | 0x240c PK11_DeriveWithTemplate()
  7204 ms  0x240c ret:0x7feb750a6480
  7204 ms  0x240c PK11_Encrypt()
  7204 ms  0x240c symkey:0x7feb8788b680
  7205 ms  0x240c PK11_Encrypt()
  7205 ms  0x240c symkey:0x7feb8788b680
  7206 ms  0x240c PK11_Encrypt()
  7206 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x246a */
  7209 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7209 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7209 ms     | 0x246a ret:0x180
  7209 ms     | SECKEY_ECParamsToBasePointOrderLen()
  7209 ms     | 0x246a ret:0x180
  7209 ms     | 0x246a EC_ValidatePublicKey()
           /* TID 0x240c */
  7209 ms  0x240c PK11_Encrypt()
  7209 ms  0x240c symkey:0x7feb8788b680
  7210 ms  0x240c PK11_Encrypt()
  7210 ms  0x240c symkey:0x7feb8788b680
  7210 ms  0x240c PK11_Encrypt()
  7210 ms  0x240c symkey:0x7feb8788b680
  7211 ms  0x240c SSL_AuthCertificateComplete()
  7211 ms  0x240c fd:0x7feb75491250
  7211 ms  0x240c err:0x0
           /* TID 0x2414 */
  7218 ms  0x2414 PR_Close()
  7218 ms  0x2414 fd:0x7feb750a1ca0
           /* TID 0x240c */
  7224 ms  0x240c PK11_Encrypt()
  7224 ms  0x240c symkey:0x7feb8788b680
  7224 ms  0x240c PK11_Encrypt()
  7224 ms  0x240c symkey:0x7feb8788b680
  7225 ms  0x240c SECKEY_DestroyPrivateKey()
  7225 ms  0x240c privk:0x7feb75032820::7feb75032820  c0 09 47 75                                      ..Gu
           /* TID 0x2414 */
  7226 ms  0x2414 PR_Close()
  7226 ms  0x2414 fd:0x7feb750a13d0
  7227 ms  0x2414 PR_Close()
  7227 ms  0x2414 fd:0x7feb750a13d0
  7227 ms  0x2414 PR_Close()
  7227 ms  0x2414 fd:0x7feb750a13d0
           /* TID 0x246a */
  7230 ms     | 0x246a ret:0x0
           /* TID 0x240c */
  7230 ms  0x240c privk:0x7feb75032820::7feb75032820  e5 e5 e5 e5                                      ....
  7230 ms  0x240c SECKEY_DestroyPrivateKey()
  7230 ms  0x240c privk:0x7feb75030020::7feb75030020  b0 05 47 75                                      ..Gu
  7230 ms  0x240c privk:0x7feb75030020::7feb75030020  e5 e5 e5 e5                                      ....
  7230 ms  0x240c PK11_Encrypt()
  7230 ms  0x240c symkey:0x7feb750a6280
  7230 ms  0x240c PK11_Encrypt()
  7230 ms  0x240c symkey:0x7feb750a6280
  7233 ms  0x240c SSL_ImportFD()
           /* TID 0x2414 */
  7234 ms  0x2414 PR_Close()
  7234 ms  0x2414 fd:0x7feb750a1dc0
           /* TID 0x240c */
  7234 ms  0x240c ret:0x7feb750a1be0
  7234 ms  0x240c SSL_AuthCertificateHook()
  7234 ms  0x240c fd:0x7feb750a1be0
  7234 ms  0x240c ret:0x0
  7234 ms  0x240c PR_Connect()
  7234 ms  0x240c fd:0x7feb750a1be0
  7234 ms  0x240c SSL_ImportFD()
  7234 ms  0x240c ret:0x7feb750a1970
  7234 ms  0x240c SSL_AuthCertificateHook()
  7234 ms  0x240c fd:0x7feb750a1970
  7234 ms  0x240c ret:0x0
  7234 ms  0x240c PR_Connect()
  7234 ms  0x240c fd:0x7feb750a1970
  7234 ms  0x240c PK11_Encrypt()
  7234 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x246a */
  7237 ms  0x246a ret:0x0
           /* TID 0x240c */
  7238 ms  0x240c SECKEY_CreateECPrivateKey()
  7238 ms  0x240c cx:0x7feb754047a8
  7239 ms     | 0x240c EC_ValidatePublicKey()
  7239 ms     | 0x240c ret:0x0
  7239 ms  0x240c ret:0x7feb74e23020::7feb74e23020  60 2a 35 75                                      `*5u
  7239 ms  0x240c SECKEY_CreateECPrivateKey()
  7239 ms  0x240c cx:0x7feb754047a8
  7239 ms     | 0x240c EC_ValidatePublicKey()
  7241 ms     | 0x240c ret:0x0
  7241 ms  0x240c ret:0x7feb74e2c020::7feb74e2c020  40 32 36 75                                      @26u
  7253 ms  0x240c PK11_Encrypt()
  7253 ms  0x240c symkey:0x7feb8788b680
  7258 ms  0x240c SSL_AuthCertificateComplete()
  7258 ms  0x240c fd:0x7feb754d06a0
  7258 ms  0x240c err:0x0
  7258 ms     | 0x240c PK11_DeriveWithFlags()
  7258 ms     | 0x240c basekey:0x7feb750a6600
  7258 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7258 ms     | 0x240c ret:0x7feb750a6480
  7258 ms     | 0x240c PK11_DeriveWithFlags()
  7258 ms     | 0x240c basekey:0x7feb750a6600
  7258 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7258 ms     | 0x240c ret:0x7feb750a6580
  7258 ms     | 0x240c PK11_DeriveWithFlags()
  7258 ms     | 0x240c basekey:0x7feb750a6600
  7258 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7258 ms     | 0x240c ret:0x7feb750a5d80
  7258 ms     | 0x240c PK11_DeriveWithFlags()
  7258 ms     | 0x240c basekey:0x7feb750a5400
  7258 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7258 ms     | 0x240c ret:0x7feb750a5e00
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a5400
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a5e80
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a6580
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a5e80
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a6580
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a5f00
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a5400
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a6500
  7259 ms     | 0x240c PK11_Encrypt()
  7259 ms     | 0x240c symkey:0x7feb750a5e00
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a6480
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a6500
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a6480
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a5f00
  7259 ms     | 0x240c PK11_DeriveWithFlags()
  7259 ms     | 0x240c basekey:0x7feb750a6600
  7259 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7259 ms     | 0x240c ret:0x7feb750a5e00
  7259 ms     | 0x240c SECKEY_DestroyPrivateKey()
  7259 ms     | 0x240c privk:0x7feb75048820::7feb75048820  20 04 47 75                                       .Gu
  7259 ms     | 0x240c privk:0x7feb75048820::7feb75048820  e5 e5 e5 e5                                      ....
  7259 ms     | 0x240c SECKEY_DestroyPrivateKey()
  7259 ms     | 0x240c privk:0x7feb75045820::7feb75045820  a0 01 47 75                                      ..Gu
  7259 ms     | 0x240c privk:0x7feb75045820::7feb75045820  e5 e5 e5 e5                                      ....
  7260 ms  0x240c PK11_Encrypt()
  7260 ms  0x240c symkey:0x7feb750a6500
  7260 ms  0x240c PK11_Encrypt()
  7260 ms  0x240c symkey:0x7feb750a6500
  7267 ms  0x240c PK11_Encrypt()
  7267 ms  0x240c symkey:0x7feb750a6280
           /* TID 0x2414 */
  7269 ms  0x2414 PR_Close()
  7269 ms  0x2414 fd:0x7feb750a1910
           /* TID 0x240c */
  7275 ms  0x240c SECKEY_CreateECPrivateKey()
  7275 ms  0x240c cx:0x7feb75402f48
  7276 ms     | 0x240c EC_ValidatePublicKey()
  7276 ms     | 0x240c ret:0x0
  7276 ms  0x240c ret:0x7feb74e2e820::7feb74e2e820  40 a7 33 75                                      @.3u
  7276 ms  0x240c SECKEY_CreateECPrivateKey()
  7276 ms  0x240c cx:0x7feb75402f48
  7276 ms     | 0x240c EC_ValidatePublicKey()
  7278 ms     | 0x240c ret:0x0
  7278 ms  0x240c ret:0x7feb74e30820::7feb74e30820  d0 33 36 75                                      .36u
  7321 ms  SECKEY_ECParamsToKeySize()
  7321 ms  0x240c ret:0x100
  7322 ms  0x240c SECKEY_CreateECPrivateKey()
  7322 ms  0x240c cx:0x7feb75402f48
  7322 ms     | 0x240c EC_ValidatePublicKey()
  7324 ms     | 0x240c ret:0x0
  7324 ms  0x240c ret:0x7feb7502e020::7feb7502e020  10 15 3a 75                                      ..:u
  7324 ms  0x240c PK11_PubDeriveWithKDF()
  7324 ms  0x240c seckey:0x7feb7502e020
  7324 ms     | 0x240c EC_ValidatePublicKey()
  7326 ms     | 0x240c ret:0x0
  7330 ms  0x240c ret:0x7feb882fd880
  7330 ms  0x240c PK11_DeriveWithFlags()
  7330 ms  0x240c basekey:0x7feb882fd880
  7330 ms     | 0x240c PK11_DeriveWithTemplate()
  7330 ms  0x240c ret:0x7feb750a5400
  7330 ms  0x240c PK11_Derive()
  7330 ms  0x240c basekey:0x7feb750a5400
  7330 ms     | 0x240c PK11_DeriveWithTemplate()
  7330 ms  0x240c ret:0x7feb750a6600
  7330 ms  0x240c SECKEY_DestroyPrivateKey()
  7330 ms  0x240c privk:0x7feb7502e020::7feb7502e020  10 15 3a 75                                      ..:u
  7330 ms  0x240c privk:0x7feb7502e020::7feb7502e020  e5 e5 e5 e5                                      ....
  7330 ms  0x240c PK11_Encrypt()
  7330 ms  0x240c symkey:0x7feb75138700
           /* TID 0x2414 */
  7332 ms  0x2414 PR_Close()
  7332 ms  0x2414 fd:0x7feb750a18b0
  7333 ms  0x2414 PR_Close()
  7333 ms  0x2414 fd:0x7feb750a18b0
  7334 ms  0x2414 PR_Close()
  7334 ms  0x2414 fd:0x7feb750a18b0
  7336 ms  0x2414 PR_Close()
  7336 ms  0x2414 fd:0x7feb750a18b0
  7338 ms  0x2414 PR_Close()
  7338 ms  0x2414 fd:0x7feb750a1bb0
  7339 ms  0x2414 PR_Close()
  7339 ms  0x2414 fd:0x7feb750a1bb0
  7339 ms  0x2414 PR_Close()
  7339 ms  0x2414 fd:0x7feb750a1bb0
  7340 ms  0x2414 PR_Close()
  7340 ms  0x2414 fd:0x7feb750a1bb0
  7341 ms  0x2414 PR_Close()
  7341 ms  0x2414 fd:0x7feb750a18b0
  7346 ms  0x2414 PR_Close()
  7346 ms  0x2414 fd:0x7feb750a18b0
           /* TID 0x240c */
  7356 ms  0x240c PK11_DeriveWithFlags()
  7356 ms  0x240c basekey:0x7feb750a5e00
  7356 ms     | 0x240c PK11_DeriveWithTemplate()
  7356 ms  0x240c ret:0x7feb882fd880
  7356 ms  0x240c PK11_DeriveWithFlags()
  7356 ms  0x240c basekey:0x7feb750a5e00
  7356 ms     | 0x240c PK11_DeriveWithTemplate()
  7356 ms  0x240c ret:0x7feb882fd880
           /* TID 0x2414 */
  7363 ms  0x2414 PR_Close()
  7363 ms  0x2414 fd:0x7feb750a1070
           /* TID 0x24aa */
  7363 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7363 ms  0x24aa ret:0x0
           /* TID 0x240c */
  7363 ms  0x240c SSL_AuthCertificateComplete()
  7363 ms  0x240c fd:0x7feb750a1be0
  7363 ms  0x240c err:0x0
  7363 ms  0x240c PK11_Encrypt()
  7363 ms  0x240c symkey:0x7feb75138700
  7364 ms  0x240c SECKEY_CreateECPrivateKey()
  7364 ms  0x240c cx:0x7feb75405168
  7365 ms     | 0x240c EC_ValidatePublicKey()
  7365 ms     | 0x240c ret:0x0
  7365 ms  0x240c ret:0x7feb74e26020::7feb74e26020  90 37 36 75                                      .76u
  7365 ms  0x240c SECKEY_CreateECPrivateKey()
  7365 ms  0x240c cx:0x7feb75405168
  7366 ms     | 0x240c EC_ValidatePublicKey()
  7367 ms     | 0x240c ret:0x0
  7367 ms  0x240c ret:0x7feb74e28020::7feb74e28020  10 15 3a 75                                      ..:u
  7372 ms  0x240c SECKEY_DestroyPrivateKey()
  7372 ms  0x240c privk:0x7feb74e30820::7feb74e30820  d0 33 36 75                                      .36u
  7372 ms  0x240c privk:0x7feb74e30820::7feb74e30820  e5 e5 e5 e5                                      ....
  7372 ms  0x240c SECKEY_DestroyPrivateKey()
  7372 ms  0x240c privk:0x7feb74e2e820::7feb74e2e820  40 a7 33 75                                      @.3u
  7372 ms  0x240c privk:0x7feb74e2e820::7feb74e2e820  e5 e5 e5 e5                                      ....
  7374 ms  SECKEY_ECParamsToKeySize()
  7374 ms  0x240c ret:0x100
  7374 ms  0x240c SECKEY_CreateECPrivateKey()
  7374 ms  0x240c cx:0x7feb754047a8
  7375 ms     | 0x240c EC_ValidatePublicKey()
  7377 ms     | 0x240c ret:0x0
  7377 ms  0x240c ret:0x7feb74e2f020::7feb74e2f020  80 33 36 75                                      .36u
  7377 ms  0x240c PK11_PubDeriveWithKDF()
  7377 ms  0x240c seckey:0x7feb74e2f020
  7377 ms     | 0x240c EC_ValidatePublicKey()
  7378 ms     | 0x240c ret:0x0
  7379 ms  0x240c ret:0x7feb882fd880
  7379 ms  0x240c PK11_DeriveWithFlags()
  7379 ms  0x240c basekey:0x7feb882fd880
  7379 ms     | 0x240c PK11_DeriveWithTemplate()
  7379 ms  0x240c ret:0x7feb750a5f00
  7380 ms  0x240c PK11_Derive()
  7380 ms  0x240c basekey:0x7feb750a5f00
  7380 ms     | 0x240c PK11_DeriveWithTemplate()
  7380 ms  0x240c ret:0x7feb750a5180
  7380 ms  0x240c SECKEY_DestroyPrivateKey()
  7380 ms  0x240c privk:0x7feb74e2f020::7feb74e2f020  80 33 36 75                                      .36u
  7380 ms  0x240c privk:0x7feb74e2f020::7feb74e2f020  e5 e5 e5 e5                                      ....
  7380 ms  0x240c PK11_Encrypt()
  7380 ms  0x240c symkey:0x7feb75138400
  7386 ms  0x240c SSL_AuthCertificateComplete()
  7386 ms  0x240c fd:0x7feb754d7730
  7386 ms  0x240c err:0x0
  7387 ms  0x240c PK11_Encrypt()
  7387 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  7413 ms  0x2414 PR_Close()
  7413 ms  0x2414 fd:0x7feb750a19d0
           /* TID 0x240c */
  7418 ms  0x240c SSL_ImportFD()
  7418 ms  0x240c ret:0x7feb754282b0
  7418 ms  0x240c SSL_AuthCertificateHook()
  7418 ms  0x240c fd:0x7feb754282b0
  7418 ms  0x240c ret:0x0
  7418 ms  0x240c PR_Connect()
  7418 ms  0x240c fd:0x7feb754282b0
  7423 ms  0x240c SSL_ImportFD()
  7423 ms  0x240c ret:0x7feb754910d0
  7423 ms  0x240c SSL_AuthCertificateHook()
  7423 ms  0x240c fd:0x7feb754910d0
  7423 ms  0x240c ret:0x0
  7423 ms  0x240c PR_Connect()
  7423 ms  0x240c fd:0x7feb754910d0
  7426 ms  0x240c PK11_Encrypt()
  7426 ms  0x240c symkey:0x7feb8788b200
  7443 ms  0x240c SSL_ImportFD()
  7443 ms  0x240c ret:0x7feb75491820
  7443 ms  0x240c SSL_AuthCertificateHook()
  7443 ms  0x240c fd:0x7feb75491820
  7443 ms  0x240c ret:0x0
  7443 ms  0x240c PR_Connect()
  7443 ms  0x240c fd:0x7feb75491820
  7447 ms  0x240c PK11_Encrypt()
  7447 ms  0x240c symkey:0x7feb750a6500
  7448 ms  0x240c SECKEY_CreateECPrivateKey()
  7448 ms  0x240c cx:0x7feb75405988
  7449 ms     | 0x240c EC_ValidatePublicKey()
  7449 ms     | 0x240c ret:0x0
  7449 ms  0x240c ret:0x7feb7502f020::7feb7502f020  a0 06 47 75                                      ..Gu
  7449 ms  0x240c SECKEY_CreateECPrivateKey()
  7449 ms  0x240c cx:0x7feb75405988
  7450 ms     | 0x240c EC_ValidatePublicKey()
  7451 ms     | 0x240c ret:0x0
  7451 ms  0x240c ret:0x7feb75031820::7feb75031820  10 0a 47 75                                      ..Gu
           /* TID 0x2414 */
  7455 ms  0x2414 PR_Close()
  7455 ms  0x2414 fd:0x7feb750a1df0
           /* TID 0x240c */
  7477 ms  0x240c SECKEY_CreateECPrivateKey()
  7477 ms  0x240c cx:0x7feb754054a8
  7477 ms     | 0x240c EC_ValidatePublicKey()
  7477 ms     | 0x240c ret:0x0
  7477 ms  0x240c ret:0x7feb75045820::7feb75045820  50 0b 47 75                                      P.Gu
  7477 ms  0x240c SECKEY_CreateECPrivateKey()
  7477 ms  0x240c cx:0x7feb754054a8
  7478 ms     | 0x240c EC_ValidatePublicKey()
  7479 ms     | 0x240c ret:0x0
  7479 ms  0x240c ret:0x7feb75048820::7feb75048820  00 41 4a 75                                      .AJu
           /* TID 0x24aa */
  7481 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7481 ms  0x24aa ret:0x0
  7481 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7481 ms  0x24aa ret:0x0
           /* TID 0x240c */
  7481 ms  0x240c SSL_AuthCertificateComplete()
  7481 ms  0x240c fd:0x7feb754910d0
  7481 ms  0x240c err:0x0
  7482 ms  0x240c SECKEY_CreateECPrivateKey()
  7482 ms  0x240c cx:0x7feb75405b28
  7482 ms     | 0x240c EC_ValidatePublicKey()
  7482 ms     | 0x240c ret:0x0
  7482 ms  0x240c ret:0x7feb751b7820::7feb751b7820  10 45 4a 75                                      .EJu
  7482 ms  0x240c SECKEY_CreateECPrivateKey()
  7482 ms  0x240c cx:0x7feb75405b28
  7483 ms     | 0x240c EC_ValidatePublicKey()
  7484 ms     | 0x240c ret:0x0
  7484 ms  0x240c ret:0x7feb751ba020::7feb751ba020  30 48 4a 75                                      0HJu
  7487 ms  0x240c SSL_ImportFD()
  7487 ms  0x240c ret:0x7feb75491730
  7487 ms  0x240c SSL_AuthCertificateHook()
  7487 ms  0x240c fd:0x7feb75491730
  7487 ms  0x240c ret:0x0
  7488 ms  0x240c PR_Connect()
  7488 ms  0x240c fd:0x7feb75491730
  7501 ms  SECKEY_ECParamsToKeySize()
  7501 ms  0x240c ret:0x100
  7501 ms  0x240c SECKEY_CreateECPrivateKey()
  7501 ms  0x240c cx:0x7feb75405168
  7502 ms     | 0x240c EC_ValidatePublicKey()
  7503 ms     | 0x240c ret:0x0
  7503 ms  0x240c ret:0x7feb751bd820::7feb751bd820  f0 4b 4a 75                                      .KJu
  7503 ms  0x240c PK11_PubDeriveWithKDF()
  7503 ms  0x240c seckey:0x7feb751bd820
  7503 ms     | 0x240c EC_ValidatePublicKey()
  7505 ms     | 0x240c ret:0x0
  7506 ms  0x240c ret:0x7feb882fd880
  7506 ms  0x240c PK11_DeriveWithFlags()
  7506 ms  0x240c basekey:0x7feb882fd880
  7506 ms     | 0x240c PK11_DeriveWithTemplate()
  7506 ms  0x240c ret:0x7feb75422800
  7506 ms  0x240c PK11_Derive()
  7506 ms  0x240c basekey:0x7feb75422800
  7506 ms     | 0x240c PK11_DeriveWithTemplate()
  7506 ms  0x240c ret:0x7feb75422980
  7506 ms  0x240c SECKEY_DestroyPrivateKey()
  7506 ms  0x240c privk:0x7feb751bd820::7feb751bd820  f0 4b 4a 75                                      .KJu
  7506 ms  0x240c privk:0x7feb751bd820::7feb751bd820  e5 e5 e5 e5                                      ....
  7507 ms  0x240c PK11_Encrypt()
  7507 ms  0x240c symkey:0x7feb75422b00
  7507 ms  0x240c SSL_AuthCertificateComplete()
  7507 ms  0x240c fd:0x7feb750a1970
  7507 ms  0x240c err:0x0
  7507 ms  SECKEY_ECParamsToKeySize()
  7507 ms  0x240c ret:0x100
  7507 ms  0x240c SECKEY_CreateECPrivateKey()
  7507 ms  0x240c cx:0x7feb75405988
  7508 ms     | 0x240c EC_ValidatePublicKey()
  7509 ms     | 0x240c ret:0x0
  7509 ms  0x240c ret:0x7feb751bf020::7feb751bf020  f0 4b 4a 75                                      .KJu
  7509 ms  0x240c PK11_PubDeriveWithKDF()
  7509 ms  0x240c seckey:0x7feb751bf020
  7509 ms     | 0x240c EC_ValidatePublicKey()
  7511 ms     | 0x240c ret:0x0
  7512 ms  0x240c ret:0x7feb882fd880
  7512 ms  0x240c PK11_DeriveWithFlags()
  7512 ms  0x240c basekey:0x7feb882fd880
  7512 ms     | 0x240c PK11_DeriveWithTemplate()
  7512 ms  0x240c ret:0x7feb75422e00
  7512 ms  0x240c PK11_Derive()
  7512 ms  0x240c basekey:0x7feb75422e00
  7512 ms     | 0x240c PK11_DeriveWithTemplate()
  7512 ms  0x240c ret:0x7feb75422e80
  7512 ms  0x240c SECKEY_DestroyPrivateKey()
  7512 ms  0x240c privk:0x7feb751bf020::7feb751bf020  f0 4b 4a 75                                      .KJu
  7512 ms  0x240c privk:0x7feb751bf020::7feb751bf020  e5 e5 e5 e5                                      ....
  7512 ms  0x240c PK11_Encrypt()
  7512 ms  0x240c symkey:0x7feb75423000
  7513 ms  0x240c SECKEY_DestroyPrivateKey()
  7513 ms  0x240c privk:0x7feb74e2c020::7feb74e2c020  40 32 36 75                                      @26u
  7513 ms  0x240c privk:0x7feb74e2c020::7feb74e2c020  e5 e5 e5 e5                                      ....
  7513 ms  0x240c SECKEY_DestroyPrivateKey()
  7513 ms  0x240c privk:0x7feb74e23020::7feb74e23020  60 2a 35 75                                      `*5u
  7513 ms  0x240c privk:0x7feb74e23020::7feb74e23020  e5 e5 e5 e5                                      ....
  7513 ms  0x240c PK11_Encrypt()
  7513 ms  0x240c symkey:0x7feb75423000
  7541 ms  SECKEY_ECParamsToKeySize()
  7541 ms  0x240c ret:0x100
  7541 ms  0x240c SECKEY_CreateECPrivateKey()
  7541 ms  0x240c cx:0x7feb754054a8
  7542 ms     | 0x240c EC_ValidatePublicKey()
  7543 ms     | 0x240c ret:0x0
  7543 ms  0x240c ret:0x7feb751c2020::7feb751c2020  90 4c 4a 75                                      .LJu
  7543 ms  0x240c PK11_PubDeriveWithKDF()
  7543 ms  0x240c seckey:0x7feb751c2020
  7543 ms     | 0x240c EC_ValidatePublicKey()
  7545 ms     | 0x240c ret:0x0
  7546 ms  0x240c ret:0x7feb882fd880
  7546 ms  0x240c PK11_DeriveWithFlags()
  7546 ms  0x240c basekey:0x7feb882fd880
  7546 ms     | 0x240c PK11_DeriveWithTemplate()
  7546 ms  0x240c ret:0x7feb75423400
  7546 ms  0x240c PK11_Derive()
  7546 ms  0x240c basekey:0x7feb75423400
  7546 ms     | 0x240c PK11_DeriveWithTemplate()
  7546 ms  0x240c ret:0x7feb75423480
  7546 ms  0x240c SECKEY_DestroyPrivateKey()
  7546 ms  0x240c privk:0x7feb751c2020::7feb751c2020  90 4c 4a 75                                      .LJu
  7546 ms  0x240c privk:0x7feb751c2020::7feb751c2020  e5 e5 e5 e5                                      ....
  7547 ms  0x240c PK11_Encrypt()
  7547 ms  0x240c symkey:0x7feb75423600
  7547 ms  0x240c PK11_Derive()
  7547 ms  0x240c basekey:0x7feb882fd880
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb75423780
  7547 ms  0x240c PK11_PubDeriveWithKDF()
  7547 ms  0x240c seckey:0x7feb751b7820
  7547 ms     | 0x240c EC_ValidatePublicKey()
  7547 ms     | 0x240c ret:0x0
  7547 ms  0x240c ret:0x7feb882fd880
  7547 ms  SECKEY_ECParamsToKeySize()
  7547 ms  0x240c ret:0xff
  7547 ms  0x240c PK11_DeriveWithFlags()
  7547 ms  0x240c basekey:0x7feb75423780
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb75423800
  7547 ms  0x240c PK11_Derive()
  7547 ms  0x240c basekey:0x7feb882fd880
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb75423880
  7547 ms  0x240c PK11_DeriveWithFlags()
  7547 ms  0x240c basekey:0x7feb75423880
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb75423780
  7547 ms  0x240c PK11_DeriveWithFlags()
  7547 ms  0x240c basekey:0x7feb75423880
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb882fd880
  7547 ms  0x240c PK11_DeriveWithFlags()
  7547 ms  0x240c basekey:0x7feb75423880
  7547 ms     | 0x240c PK11_DeriveWithTemplate()
  7547 ms  0x240c ret:0x7feb75423800
  7548 ms  0x240c PK11_Derive()
  7548 ms  0x240c basekey:0x7feb75423900
  7548 ms     | 0x240c PK11_DeriveWithTemplate()
  7548 ms  0x240c ret:0x7feb75423980
  7548 ms  0x240c PK11_DeriveWithFlags()
  7548 ms  0x240c basekey:0x7feb882fd880
  7548 ms     | 0x240c PK11_DeriveWithTemplate()
  7548 ms  0x240c ret:0x7feb75423880
  7548 ms  0x240c PK11_DeriveWithFlags()
  7548 ms  0x240c basekey:0x7feb882fd880
  7548 ms     | 0x240c PK11_DeriveWithTemplate()
  7548 ms  0x240c ret:0x7feb75423800
  7549 ms  0x240c PK11_DeriveWithFlags()
  7549 ms  0x240c basekey:0x7feb882fd880
  7549 ms     | 0x240c PK11_DeriveWithTemplate()
  7549 ms  0x240c ret:0x7feb75423800
  7550 ms  0x240c SECKEY_CreateECPrivateKey()
  7550 ms  0x240c cx:0x7feb75405e68
  7550 ms     | 0x240c EC_ValidatePublicKey()
  7550 ms     | 0x240c ret:0x0
  7550 ms  0x240c ret:0x7feb7521b020::7feb7521b020  e0 a2 24 86                                      ..$.
  7550 ms  0x240c SECKEY_CreateECPrivateKey()
  7550 ms  0x240c cx:0x7feb75405e68
  7551 ms     | 0x240c EC_ValidatePublicKey()
  7556 ms     | 0x240c ret:0x0
  7556 ms  0x240c ret:0x7feb7521f020::7feb7521f020  b0 a5 24 86                                      ..$.
  7557 ms  0x240c PR_Connect()
  7557 ms  0x240c fd:0x7feb754d0220
           /* TID 0x2414 */
  7563 ms  0x2414 PR_Close()
  7563 ms  0x2414 fd:0x7feb750a1e50
  7576 ms  0x2414 PR_Close()
  7576 ms  0x2414 fd:0x7feb750a13a0
           /* TID 0x24aa */
  7576 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7576 ms  0x24aa ret:0x0
           /* TID 0x240c */
  7576 ms  0x240c SSL_AuthCertificateComplete()
  7576 ms  0x240c fd:0x7feb754282b0
  7576 ms  0x240c err:0x0
  7576 ms  0x240c PK11_Encrypt()
  7576 ms  0x240c symkey:0x7feb75423600
  7605 ms  0x240c SECKEY_DestroyPrivateKey()
  7605 ms  0x240c privk:0x7feb75048820::7feb75048820  00 41 4a 75                                      .AJu
  7605 ms  0x240c privk:0x7feb75048820::7feb75048820  e5 e5 e5 e5                                      ....
  7605 ms  0x240c SECKEY_DestroyPrivateKey()
  7605 ms  0x240c privk:0x7feb75045820::7feb75045820  50 0b 47 75                                      P.Gu
  7606 ms  0x240c privk:0x7feb75045820::7feb75045820  e5 e5 e5 e5                                      ....
  7606 ms  0x240c SECKEY_DestroyPrivateKey()
  7606 ms  0x240c privk:0x7feb75031820::7feb75031820  10 0a 47 75                                      ..Gu
  7606 ms  0x240c privk:0x7feb75031820::7feb75031820  e5 e5 e5 e5                                      ....
  7606 ms  0x240c SECKEY_DestroyPrivateKey()
  7606 ms  0x240c privk:0x7feb7502f020::7feb7502f020  a0 06 47 75                                      ..Gu
  7606 ms  0x240c privk:0x7feb7502f020::7feb7502f020  e5 e5 e5 e5                                      ....
  7612 ms  SECKEY_ECParamsToKeySize()
  7612 ms  0x240c ret:0x100
  7612 ms  0x240c SECKEY_CreateECPrivateKey()
  7612 ms  0x240c cx:0x7feb75405e68
  7613 ms     | 0x240c EC_ValidatePublicKey()
  7616 ms     | 0x240c ret:0x0
  7616 ms  0x240c ret:0x7feb75048820::7feb75048820  b0 0a 47 75                                      ..Gu
  7616 ms  0x240c PK11_PubDeriveWithKDF()
  7616 ms  0x240c seckey:0x7feb75048820
  7616 ms     | 0x240c EC_ValidatePublicKey()
  7619 ms     | 0x240c ret:0x0
  7623 ms  0x240c ret:0x7feb75423800
  7623 ms  0x240c PK11_DeriveWithFlags()
  7623 ms  0x240c basekey:0x7feb75423800
  7623 ms     | 0x240c PK11_DeriveWithTemplate()
  7623 ms  0x240c ret:0x7feb75423900
  7623 ms  0x240c PK11_Derive()
  7623 ms  0x240c basekey:0x7feb75423900
  7623 ms     | 0x240c PK11_DeriveWithTemplate()
  7623 ms  0x240c ret:0x7feb7530dd80
  7623 ms  0x240c SECKEY_DestroyPrivateKey()
  7623 ms  0x240c privk:0x7feb75048820::7feb75048820  b0 0a 47 75                                      ..Gu
  7623 ms  0x240c privk:0x7feb75048820::7feb75048820  e5 e5 e5 e5                                      ....
  7623 ms  0x240c PK11_Encrypt()
  7623 ms  0x240c symkey:0x7feb754a0900
           /* TID 0x2414 */
  7636 ms  0x2414 PR_Close()
  7636 ms  0x2414 fd:0x7feb750a1730
           /* TID 0x240c */
  7639 ms  0x240c SECKEY_DestroyPrivateKey()
  7639 ms  0x240c privk:0x7feb74e28020::7feb74e28020  10 15 3a 75                                      ..:u
  7639 ms  0x240c privk:0x7feb74e28020::7feb74e28020  e5 e5 e5 e5                                      ....
  7640 ms  0x240c SECKEY_DestroyPrivateKey()
  7640 ms  0x240c privk:0x7feb74e26020::7feb74e26020  90 37 36 75                                      .76u
  7640 ms  0x240c privk:0x7feb74e26020::7feb74e26020  e5 e5 e5 e5                                      ....
           /* TID 0x2414 */
  7650 ms  0x2414 PR_Close()
  7650 ms  0x2414 fd:0x7feb75350190
           /* TID 0x24aa */
  7651 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7651 ms  0x24aa ret:0x0
           /* TID 0x240c */
  7651 ms  0x240c SSL_AuthCertificateComplete()
  7651 ms  0x240c fd:0x7feb75491730
  7651 ms  0x240c err:0x0
  7651 ms  0x240c PK11_Encrypt()
  7651 ms  0x240c symkey:0x7feb754a0900
  7679 ms  0x240c SECKEY_DestroyPrivateKey()
  7679 ms  0x240c privk:0x7feb7521f020::7feb7521f020  b0 a5 24 86                                      ..$.
  7680 ms  0x240c privk:0x7feb7521f020::7feb7521f020  e5 e5 e5 e5                                      ....
  7680 ms  0x240c SECKEY_DestroyPrivateKey()
  7680 ms  0x240c privk:0x7feb7521b020::7feb7521b020  e0 a2 24 86                                      ..$.
  7680 ms  0x240c privk:0x7feb7521b020::7feb7521b020  e5 e5 e5 e5                                      ....
           /* TID 0x2414 */
  7734 ms  0x2414 PR_Close()
  7734 ms  0x2414 fd:0x7feb75350d00
  7739 ms  0x2414 PR_Close()
  7739 ms  0x2414 fd:0x7feb75350d00
           /* TID 0x246a */
  7739 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  7739 ms  0x246a ret:0x0
           /* TID 0x240c */
  7746 ms  0x240c SSL_AuthCertificateComplete()
  7746 ms  0x240c fd:0x7feb75491820
  7746 ms  0x240c err:0x0
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423980
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb75423800
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423980
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb75423c80
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423980
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a0180
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423780
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a0200
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423780
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a1f00
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423c80
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a1f00
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423c80
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a1f80
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423780
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb75423880
  7746 ms     | 0x240c PK11_Encrypt()
  7746 ms     | 0x240c symkey:0x7feb754a0200
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423800
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb75423880
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423800
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a1f80
  7746 ms     | 0x240c PK11_DeriveWithFlags()
  7746 ms     | 0x240c basekey:0x7feb75423980
  7746 ms     |    | 0x240c PK11_DeriveWithTemplate()
  7746 ms     | 0x240c ret:0x7feb754a0200
  7746 ms     | 0x240c SECKEY_DestroyPrivateKey()
  7746 ms     | 0x240c privk:0x7feb751ba020::7feb751ba020  30 48 4a 75                                      0HJu
  7747 ms     | 0x240c privk:0x7feb751ba020::7feb751ba020  e5 e5 e5 e5                                      ....
  7747 ms     | 0x240c SECKEY_DestroyPrivateKey()
  7747 ms     | 0x240c privk:0x7feb751b7820::7feb751b7820  10 45 4a 75                                      .EJu
  7747 ms     | 0x240c privk:0x7feb751b7820::7feb751b7820  e5 e5 e5 e5                                      ....
  7747 ms  0x240c PK11_Encrypt()
  7747 ms  0x240c symkey:0x7feb75423880
  7747 ms  0x240c PK11_Encrypt()
  7747 ms  0x240c symkey:0x7feb75423880
  7766 ms  0x240c PK11_Encrypt()
  7766 ms  0x240c symkey:0x7feb750a6280
  7772 ms  0x240c PK11_Encrypt()
  7772 ms  0x240c symkey:0x7feb75423600
  7784 ms  0x240c PK11_DeriveWithFlags()
  7784 ms  0x240c basekey:0x7feb754a0200
  7784 ms     | 0x240c PK11_DeriveWithTemplate()
  7784 ms  0x240c ret:0x7feb882fd880
  7784 ms  0x240c PK11_DeriveWithFlags()
  7784 ms  0x240c basekey:0x7feb754a0200
  7784 ms     | 0x240c PK11_DeriveWithTemplate()
  7784 ms  0x240c ret:0x7feb882fd880
  7784 ms  0x240c PK11_Encrypt()
  7784 ms  0x240c symkey:0x7feb75423880
           /* TID 0x2414 */
  7813 ms  0x2414 PR_Close()
  7813 ms  0x2414 fd:0x7feb75350d30
           /* TID 0x240c */
  7852 ms  0x240c PK11_Encrypt()
  7852 ms  0x240c symkey:0x7feb75423880
           /* TID 0x2414 */
  7853 ms  0x2414 PR_Close()
  7853 ms  0x2414 fd:0x7feb75350d30
  7862 ms  0x2414 PR_Close()
  7862 ms  0x2414 fd:0x7feb754d7b50
           /* TID 0x240c */
  7874 ms  0x240c PK11_Encrypt()
  7874 ms  0x240c symkey:0x7feb8788b680
  7874 ms  0x240c PK11_Encrypt()
  7874 ms  0x240c symkey:0x7feb8788b680
  7874 ms  0x240c PK11_Encrypt()
  7874 ms  0x240c symkey:0x7feb8788b680
  7874 ms  0x240c PK11_Encrypt()
  7874 ms  0x240c symkey:0x7feb8788b680
  7875 ms  0x240c PK11_Encrypt()
  7875 ms  0x240c symkey:0x7feb8788b680
  7878 ms  0x240c PK11_Encrypt()
  7878 ms  0x240c symkey:0x7feb8788b680
  7883 ms  0x240c PK11_Encrypt()
  7883 ms  0x240c symkey:0x7feb8788b680
  7903 ms  0x240c SSL_ImportFD()
  7903 ms  0x240c ret:0x7feb8628c070
  7903 ms  0x240c SSL_AuthCertificateHook()
  7903 ms  0x240c fd:0x7feb8628c070
  7903 ms  0x240c ret:0x0
  7903 ms  0x240c PR_Connect()
  7903 ms  0x240c fd:0x7feb8628c070
  7909 ms  0x240c SSL_ImportFD()
  7909 ms  0x240c ret:0x7feb8628c4f0
  7909 ms  0x240c SSL_AuthCertificateHook()
  7909 ms  0x240c fd:0x7feb8628c4f0
  7909 ms  0x240c ret:0x0
  7909 ms  0x240c PR_Connect()
  7909 ms  0x240c fd:0x7feb8628c4f0
           /* TID 0x2414 */
  7934 ms  0x2414 PR_Close()
  7934 ms  0x2414 fd:0x7feb754d7b50
           /* TID 0x240c */
  7942 ms  0x240c PK11_Encrypt()
  7942 ms  0x240c symkey:0x7feb8788b680
  7943 ms  0x240c SSL_ImportFD()
  7943 ms  0x240c ret:0x7feb8628cac0
  7943 ms  0x240c SSL_AuthCertificateHook()
  7943 ms  0x240c fd:0x7feb8628cac0
  7943 ms  0x240c ret:0x0
  7943 ms  0x240c PR_Connect()
  7943 ms  0x240c fd:0x7feb8628cac0
  7961 ms  0x240c SECKEY_CreateECPrivateKey()
  7961 ms  0x240c cx:0x7febae7a84a8
  7962 ms     | 0x240c EC_ValidatePublicKey()
  7962 ms     | 0x240c ret:0x0
  7962 ms  0x240c ret:0x7feb7521e820::7feb7521e820  20 a9 24 86                                       .$.
  7962 ms  0x240c SECKEY_CreateECPrivateKey()
  7962 ms  0x240c cx:0x7febae7a84a8
  7963 ms     | 0x240c EC_ValidatePublicKey()
  7964 ms     | 0x240c ret:0x0
  7964 ms  0x240c ret:0x7feb86262020::7feb86262020  b0 aa 24 86                                      ..$.
  7972 ms  0x240c SECKEY_CreateECPrivateKey()
  7972 ms  0x240c cx:0x7feb933cd0a8
  7973 ms     | 0x240c EC_ValidatePublicKey()
  7973 ms     | 0x240c ret:0x0
  7973 ms  0x240c ret:0x7feb86269020::7feb86269020  90 ac 24 86                                      ..$.
  7973 ms  0x240c SECKEY_CreateECPrivateKey()
  7973 ms  0x240c cx:0x7feb933cd0a8
  7973 ms     | 0x240c EC_ValidatePublicKey()
  7975 ms     | 0x240c ret:0x0
  7975 ms  0x240c ret:0x7feb8626d020::7feb8626d020  70 ae 24 86                                      p.$.
  7976 ms  0x240c SSL_ImportFD()
  7976 ms  0x240c ret:0x7feb8628ce20
  7976 ms  0x240c SSL_AuthCertificateHook()
  7976 ms  0x240c fd:0x7feb8628ce20
  7976 ms  0x240c ret:0x0
  7976 ms  0x240c PR_Connect()
  7976 ms  0x240c fd:0x7feb8628ce20
  7979 ms  0x240c PK11_Encrypt()
  7979 ms  0x240c symkey:0x7feb750a6280
  7983 ms  0x240c PK11_Encrypt()
  7983 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  7993 ms  0x2414 PR_Close()
  7993 ms  0x2414 fd:0x7feb754d7c70
  7996 ms  0x2414 PR_Close()
  7996 ms  0x2414 fd:0x7feb75350d30
  7996 ms  0x2414 PR_Close()
  7996 ms  0x2414 fd:0x7feb754d7c70
           /* TID 0x240c */
  8001 ms  0x240c SECKEY_CreateECPrivateKey()
  8001 ms  0x240c cx:0x7feb933cd248
  8002 ms     | 0x240c EC_ValidatePublicKey()
  8002 ms     | 0x240c ret:0x0
  8002 ms  0x240c ret:0x7feb86280020::7feb86280020  40 62 28 86                                      @b(.
  8002 ms  0x240c SECKEY_CreateECPrivateKey()
  8002 ms  0x240c cx:0x7feb933cd248
  8002 ms     | 0x240c EC_ValidatePublicKey()
  8004 ms     | 0x240c ret:0x0
  8004 ms  0x240c ret:0x7feb86464020::7feb86464020  10 65 28 86                                      .e(.
           /* TID 0x2414 */
  8006 ms  0x2414 PR_Close()
  8006 ms  0x2414 fd:0x7feb8628cd30
           /* TID 0x240c */
  8006 ms  0x240c PK11_Encrypt()
  8006 ms  0x240c symkey:0x7feb75423880
           /* TID 0x2414 */
  8010 ms  0x2414 PR_Close()
  8010 ms  0x2414 fd:0x7feb754d7a90
  8011 ms  0x2414 PR_Close()
  8011 ms  0x2414 fd:0x7feb754d7a90
           /* TID 0x240c */
  8011 ms  0x240c SECKEY_CreateECPrivateKey()
  8011 ms  0x240c cx:0x7feb933cd3e8
  8011 ms     | 0x240c EC_ValidatePublicKey()
  8011 ms     | 0x240c ret:0x0
  8011 ms  0x240c ret:0x7feb86465820::7feb86465820  00 41 4a 75                                      .AJu
  8011 ms  0x240c SECKEY_CreateECPrivateKey()
  8011 ms  0x240c cx:0x7feb933cd3e8
  8012 ms     | 0x240c EC_ValidatePublicKey()
  8015 ms     | 0x240c ret:0x0
  8015 ms  0x240c ret:0x7feb86468020::7feb86468020  b0 65 28 86                                      .e(.
           /* TID 0x2414 */
  8019 ms  0x2414 PR_Close()
  8019 ms  0x2414 fd:0x7feb754d0be0
           /* TID 0x240c */
  8024 ms  SECKEY_ECParamsToKeySize()
  8024 ms  0x240c ret:0x100
  8024 ms  0x240c SECKEY_CreateECPrivateKey()
  8024 ms  0x240c cx:0x7febae7a84a8
  8025 ms     | 0x240c EC_ValidatePublicKey()
  8027 ms     | 0x240c ret:0x0
  8027 ms  0x240c ret:0x7feb8646b020::7feb8646b020  e0 67 28 86                                      .g(.
  8027 ms  0x240c PK11_PubDeriveWithKDF()
  8027 ms  0x240c seckey:0x7feb8646b020
  8028 ms     | 0x240c EC_ValidatePublicKey()
  8029 ms     | 0x240c ret:0x0
  8035 ms  0x240c ret:0x7feb882fd880
  8035 ms  0x240c PK11_DeriveWithFlags()
  8035 ms  0x240c basekey:0x7feb882fd880
  8035 ms     | 0x240c PK11_DeriveWithTemplate()
  8035 ms  0x240c ret:0x7feb75423780
  8035 ms  0x240c PK11_Derive()
  8035 ms  0x240c basekey:0x7feb75423780
  8035 ms     | 0x240c PK11_DeriveWithTemplate()
  8035 ms  0x240c ret:0x7feb75423980
  8035 ms  0x240c SECKEY_DestroyPrivateKey()
  8035 ms  0x240c privk:0x7feb8646b020::7feb8646b020  e0 67 28 86                                      .g(.
  8035 ms  0x240c privk:0x7feb8646b020::7feb8646b020  e5 e5 e5 e5                                      ....
  8035 ms  0x240c PK11_Encrypt()
  8035 ms  0x240c symkey:0x7feb86248980
  8035 ms  0x240c SSL_AuthCertificateComplete()
  8035 ms  0x240c fd:0x7feb8628c070
  8035 ms  0x240c err:0x0
  8041 ms  0x240c PK11_Encrypt()
  8041 ms  0x240c symkey:0x7feb86248980
  8043 ms  SECKEY_ECParamsToKeySize()
  8043 ms  0x240c ret:0x100
  8043 ms  0x240c SECKEY_CreateECPrivateKey()
  8043 ms  0x240c cx:0x7feb933cd0a8
  8043 ms     | 0x240c EC_ValidatePublicKey()
  8045 ms     | 0x240c ret:0x0
  8045 ms  0x240c ret:0x7feb87e3d820::7feb87e3d820  e0 6c 28 86                                      .l(.
  8045 ms  0x240c PK11_PubDeriveWithKDF()
  8045 ms  0x240c seckey:0x7feb87e3d820
  8045 ms     | 0x240c EC_ValidatePublicKey()
  8046 ms     | 0x240c ret:0x0
  8048 ms  0x240c ret:0x7feb882fd880
  8048 ms  0x240c PK11_DeriveWithFlags()
  8048 ms  0x240c basekey:0x7feb882fd880
  8048 ms     | 0x240c PK11_DeriveWithTemplate()
  8048 ms  0x240c ret:0x7feb754a1f80
  8048 ms  0x240c PK11_Derive()
  8048 ms  0x240c basekey:0x7feb754a1f80
  8048 ms     | 0x240c PK11_DeriveWithTemplate()
  8048 ms  0x240c ret:0x7feb86281900
  8048 ms  0x240c SECKEY_DestroyPrivateKey()
  8048 ms  0x240c privk:0x7feb87e3d820::7feb87e3d820  e0 6c 28 86                                      .l(.
  8048 ms  0x240c privk:0x7feb87e3d820::7feb87e3d820  e5 e5 e5 e5                                      ....
  8048 ms  0x240c PK11_Encrypt()
  8048 ms  0x240c symkey:0x7feb864ea280
  8064 ms  SECKEY_ECParamsToKeySize()
  8065 ms  0x240c ret:0x100
  8065 ms  0x240c SECKEY_CreateECPrivateKey()
  8065 ms  0x240c cx:0x7feb933cd248
  8065 ms     | 0x240c EC_ValidatePublicKey()
           /* TID 0x24aa */
  8066 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
           /* TID 0x240c */
  8068 ms     | 0x240c ret:0x0
           /* TID 0x24aa */
  8068 ms  0x24aa ret:0x0
           /* TID 0x240c */
  8070 ms  0x240c ret:0x7feb8c35e020::7feb8c35e020  e0 92 4f 86                                      ..O.
  8072 ms  0x240c PK11_PubDeriveWithKDF()
  8072 ms  0x240c seckey:0x7feb8c35e020
  8072 ms     | 0x240c EC_ValidatePublicKey()
  8077 ms     | 0x240c ret:0x0
  8084 ms  0x240c ret:0x7feb882fd880
  8084 ms  0x240c PK11_DeriveWithFlags()
  8084 ms  0x240c basekey:0x7feb882fd880
  8084 ms     | 0x240c PK11_DeriveWithTemplate()
  8084 ms  0x240c ret:0x7feb864ea500
  8084 ms  0x240c PK11_Derive()
  8084 ms  0x240c basekey:0x7feb864ea500
  8084 ms     | 0x240c PK11_DeriveWithTemplate()
  8084 ms  0x240c ret:0x7feb864ea680
  8084 ms  0x240c SECKEY_DestroyPrivateKey()
  8084 ms  0x240c privk:0x7feb8c35e020::7feb8c35e020  e0 92 4f 86                                      ..O.
  8084 ms  0x240c privk:0x7feb8c35e020::7feb8c35e020  e5 e5 e5 e5                                      ....
  8084 ms  0x240c PK11_Encrypt()
  8084 ms  0x240c symkey:0x7feb864ea800
  8084 ms  0x240c SSL_AuthCertificateComplete()
  8084 ms  0x240c fd:0x7feb8628cac0
  8084 ms  0x240c err:0x0
           /* TID 0x2414 */
  8089 ms  0x2414 PR_Close()
  8089 ms  0x2414 fd:0x7feb86295af0
           /* TID 0x246a */
  8089 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8089 ms  0x246a ret:0x0
           /* TID 0x2414 */
  8091 ms  0x2414 PR_Close()
  8091 ms  0x2414 fd:0x7feb86295310
  8092 ms  0x2414 PR_Close()
  8092 ms  0x2414 fd:0x7feb754d7b50
           /* TID 0x240c */
  8099 ms  0x240c PK11_Encrypt()
  8099 ms  0x240c symkey:0x7feb864ea800
  8099 ms  0x240c PK11_Encrypt()
  8099 ms  0x240c symkey:0x7feb864ea800
           /* TID 0x24aa */
  8100 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8100 ms  0x24aa ret:0x0
           /* TID 0x240c */
  8102 ms  SECKEY_ECParamsToKeySize()
  8102 ms  0x240c ret:0x100
  8102 ms  0x240c SECKEY_CreateECPrivateKey()
  8102 ms  0x240c cx:0x7feb933cd3e8
  8103 ms     | 0x240c EC_ValidatePublicKey()
  8107 ms     | 0x240c ret:0x0
  8107 ms  0x240c ret:0x7feb87e40020::7feb87e40020  c0 69 28 86                                      .i(.
  8108 ms  0x240c PK11_PubDeriveWithKDF()
  8108 ms  0x240c seckey:0x7feb87e40020
  8108 ms     | 0x240c EC_ValidatePublicKey()
  8109 ms     | 0x240c ret:0x0
  8118 ms  0x240c ret:0x7feb882fd880
  8118 ms  0x240c PK11_DeriveWithFlags()
  8118 ms  0x240c basekey:0x7feb882fd880
  8118 ms     | 0x240c PK11_DeriveWithTemplate()
  8118 ms  0x240c ret:0x7feb8628da80
  8118 ms  0x240c PK11_Derive()
  8118 ms  0x240c basekey:0x7feb8628da80
  8118 ms     | 0x240c PK11_DeriveWithTemplate()
  8118 ms  0x240c ret:0x7feb864ea600
  8118 ms  0x240c SECKEY_DestroyPrivateKey()
  8118 ms  0x240c privk:0x7feb87e40020::7feb87e40020  c0 69 28 86                                      .i(.
  8118 ms  0x240c privk:0x7feb87e40020::7feb87e40020  e5 e5 e5 e5                                      ....
  8118 ms  0x240c PK11_Encrypt()
  8118 ms  0x240c symkey:0x7feb864eab00
  8119 ms  0x240c SSL_AuthCertificateComplete()
  8119 ms  0x240c fd:0x7feb8628c4f0
  8119 ms  0x240c err:0x0
  8119 ms  0x240c SSL_AuthCertificateComplete()
  8119 ms  0x240c fd:0x7feb8628ce20
  8119 ms  0x240c err:0x0
           /* TID 0x2414 */
  8120 ms  0x2414 PR_Close()
  8120 ms  0x2414 fd:0x7feb862951f0
           /* TID 0x240c */
  8121 ms  0x240c PK11_Encrypt()
  8121 ms  0x240c symkey:0x7feb75423880
  8121 ms  0x240c SECKEY_DestroyPrivateKey()
  8121 ms  0x240c privk:0x7feb86262020::7feb86262020  b0 aa 24 86                                      ..$.
  8121 ms  0x240c privk:0x7feb86262020::7feb86262020  e5 e5 e5 e5                                      ....
  8121 ms  0x240c SECKEY_DestroyPrivateKey()
  8121 ms  0x240c privk:0x7feb7521e820::7feb7521e820  20 a9 24 86                                       .$.
  8121 ms  0x240c privk:0x7feb7521e820::7feb7521e820  e5 e5 e5 e5                                      ....
  8121 ms  0x240c PK11_Encrypt()
  8121 ms  0x240c symkey:0x7feb864ea280
  8132 ms  0x240c PK11_Encrypt()
  8132 ms  0x240c symkey:0x7feb864eab00
  8132 ms  0x240c PK11_Encrypt()
  8132 ms  0x240c symkey:0x7feb864eab00
  8132 ms  0x240c SECKEY_DestroyPrivateKey()
  8132 ms  0x240c privk:0x7feb8626d020::7feb8626d020  70 ae 24 86                                      p.$.
  8132 ms  0x240c privk:0x7feb8626d020::7feb8626d020  e5 e5 e5 e5                                      ....
  8132 ms  0x240c SECKEY_DestroyPrivateKey()
  8132 ms  0x240c privk:0x7feb86269020::7feb86269020  90 ac 24 86                                      ..$.
  8132 ms  0x240c privk:0x7feb86269020::7feb86269020  e5 e5 e5 e5                                      ....
  8143 ms  0x240c SECKEY_DestroyPrivateKey()
  8143 ms  0x240c privk:0x7feb86464020::7feb86464020  10 65 28 86                                      .e(.
  8143 ms  0x240c privk:0x7feb86464020::7feb86464020  e5 e5 e5 e5                                      ....
  8143 ms  0x240c SECKEY_DestroyPrivateKey()
  8143 ms  0x240c privk:0x7feb86280020::7feb86280020  40 62 28 86                                      @b(.
  8143 ms  0x240c privk:0x7feb86280020::7feb86280020  e5 e5 e5 e5                                      ....
  8144 ms  0x240c SECKEY_DestroyPrivateKey()
  8144 ms  0x240c privk:0x7feb86468020::7feb86468020  b0 65 28 86                                      .e(.
  8144 ms  0x240c privk:0x7feb86468020::7feb86468020  e5 e5 e5 e5                                      ....
  8144 ms  0x240c SECKEY_DestroyPrivateKey()
  8144 ms  0x240c privk:0x7feb86465820::7feb86465820  00 41 4a 75                                      .AJu
  8144 ms  0x240c privk:0x7feb86465820::7feb86465820  e5 e5 e5 e5                                      ....
  8144 ms  0x240c PK11_Encrypt()
  8144 ms  0x240c symkey:0x7feb864eab00
           /* TID 0x2414 */
  8154 ms  0x2414 PR_Close()
  8154 ms  0x2414 fd:0x7feb8628c400
  8171 ms  0x2414 PR_Close()
  8171 ms  0x2414 fd:0x7feb753e09a0
  8179 ms  0x2414 PR_Close()
  8179 ms  0x2414 fd:0x7feb754d76a0
           /* TID 0x240c */
  8200 ms  0x240c PK11_Encrypt()
  8200 ms  0x240c symkey:0x7feb864ea800
           /* TID 0x2414 */
  8202 ms  0x2414 PR_Close()
  8202 ms  0x2414 fd:0x7feb753e09a0
           /* TID 0x240c */
  8253 ms  0x240c SSL_ImportFD()
  8253 ms  0x240c ret:0x7feb8628c250
  8253 ms  0x240c SSL_AuthCertificateHook()
  8253 ms  0x240c fd:0x7feb8628c250
  8253 ms  0x240c ret:0x0
  8253 ms  0x240c PR_Connect()
  8253 ms  0x240c fd:0x7feb8628c250
  8253 ms  0x240c SSL_ImportFD()
  8253 ms  0x240c ret:0x7feb754d76d0
  8253 ms  0x240c SSL_AuthCertificateHook()
  8253 ms  0x240c fd:0x7feb754d76d0
  8253 ms  0x240c ret:0x0
  8253 ms  0x240c PR_Connect()
  8253 ms  0x240c fd:0x7feb754d76d0
  8316 ms  0x240c PK11_Encrypt()
  8316 ms  0x240c symkey:0x7feb8788b200
  8323 ms  0x240c PK11_Encrypt()
  8323 ms  0x240c symkey:0x7feb75138400
  8362 ms  0x240c PK11_Encrypt()
  8362 ms  0x240c symkey:0x7feb8788b680
  8363 ms  0x240c PK11_Encrypt()
  8363 ms  0x240c symkey:0x7feb8788b680
  8365 ms  0x240c PK11_Encrypt()
  8365 ms  0x240c symkey:0x7feb8788b680
  8413 ms  0x240c PK11_Encrypt()
  8413 ms  0x240c symkey:0x7feb754c1a00
  8433 ms  0x240c SSL_ImportFD()
  8433 ms  0x240c ret:0x7feb864ed670
  8433 ms  0x240c SSL_AuthCertificateHook()
  8433 ms  0x240c fd:0x7feb864ed670
  8433 ms  0x240c ret:0x0
  8433 ms  0x240c PR_Connect()
  8433 ms  0x240c fd:0x7feb864ed670
           /* TID 0x2414 */
  8442 ms  0x2414 PR_Close()
  8442 ms  0x2414 fd:0x7feb864ed370
           /* TID 0x240c */
  8443 ms  0x240c SECKEY_CreateECPrivateKey()
  8443 ms  0x240c cx:0x7feb933cdda8
  8444 ms     | 0x240c EC_ValidatePublicKey()
  8444 ms     | 0x240c ret:0x0
  8444 ms  0x240c ret:0x7feb86467020::7feb86467020  e0 a7 24 86                                      ..$.
  8444 ms  0x240c SECKEY_CreateECPrivateKey()
  8444 ms  0x240c cx:0x7feb933cdda8
  8444 ms     | 0x240c EC_ValidatePublicKey()
  8446 ms     | 0x240c ret:0x0
  8446 ms  0x240c ret:0x7feb877dc020::7feb877dc020  10 aa 24 86                                      ..$.
  8452 ms  0x240c SECKEY_CreateECPrivateKey()
  8452 ms  0x240c cx:0x7feb933cdf48
  8452 ms     | 0x240c EC_ValidatePublicKey()
  8452 ms     | 0x240c ret:0x0
  8452 ms  0x240c ret:0x7feb8c35e020::7feb8c35e020  a0 ab 24 86                                      ..$.
  8452 ms  0x240c SECKEY_CreateECPrivateKey()
  8452 ms  0x240c cx:0x7feb933cdf48
  8453 ms     | 0x240c EC_ValidatePublicKey()
  8455 ms     | 0x240c ret:0x0
  8455 ms  0x240c ret:0x7feb8c362020::7feb8c362020  80 ad 24 86                                      ..$.
           /* TID 0x2414 */
  8475 ms  0x2414 PR_Close()
  8475 ms  0x2414 fd:0x7feb754d76a0
  8526 ms  0x2414 PR_Close()
  8526 ms  0x2414 fd:0x7feb754d76a0
           /* TID 0x240c */
  8535 ms  0x240c PK11_Encrypt()
  8535 ms  0x240c symkey:0x7feb75422b00
           /* TID 0x2414 */
  8538 ms  0x2414 PR_Close()
  8538 ms  0x2414 fd:0x7feb8637cd90
           /* TID 0x240c */
  8539 ms  0x240c PK11_Encrypt()
  8539 ms  0x240c symkey:0x7feb8788b200
  8540 ms  0x240c SSL_ImportFD()
  8540 ms  0x240c ret:0x7feb864ed970
  8540 ms  0x240c SSL_AuthCertificateHook()
  8540 ms  0x240c fd:0x7feb864ed970
  8541 ms  0x240c ret:0x0
  8541 ms  0x240c PR_Connect()
  8541 ms  0x240c fd:0x7feb864ed970
  8542 ms  0x240c SSL_ImportFD()
  8542 ms  0x240c ret:0x7feb864edc40
  8542 ms  0x240c SSL_AuthCertificateHook()
  8542 ms  0x240c fd:0x7feb864edc40
  8542 ms  0x240c ret:0x0
  8542 ms  0x240c PR_Connect()
  8542 ms  0x240c fd:0x7feb864edc40
  8543 ms  0x240c SSL_ImportFD()
  8543 ms  0x240c ret:0x7feb864edf40
  8543 ms  0x240c SSL_AuthCertificateHook()
  8543 ms  0x240c fd:0x7feb864edf40
  8543 ms  0x240c ret:0x0
  8543 ms  0x240c PR_Connect()
  8543 ms  0x240c fd:0x7feb864edf40
  8572 ms  0x240c SSL_ImportFD()
  8572 ms  0x240c ret:0x7feb869f6040
  8572 ms  0x240c SSL_AuthCertificateHook()
  8572 ms  0x240c fd:0x7feb869f6040
  8572 ms  0x240c ret:0x0
  8572 ms  0x240c PR_Connect()
  8572 ms  0x240c fd:0x7feb869f6040
  8598 ms  0x240c SECKEY_CreateECPrivateKey()
  8598 ms  0x240c cx:0x7feb933ceaa8
  8598 ms     | 0x240c EC_ValidatePublicKey()
  8598 ms     | 0x240c ret:0x0
  8598 ms  0x240c ret:0x7feb8c76c820::7feb8c76c820  f0 b1 2d 86                                      ..-.
  8598 ms  0x240c SECKEY_CreateECPrivateKey()
  8598 ms  0x240c cx:0x7feb933ceaa8
  8599 ms     | 0x240c EC_ValidatePublicKey()
  8601 ms     | 0x240c ret:0x0
  8601 ms  0x240c ret:0x7feb8c76f020::7feb8c76f020  50 91 4f 86                                      P.O.
           /* TID 0x2414 */
  8606 ms  0x2414 PR_Close()
  8606 ms  0x2414 fd:0x7feb864ed130
           /* TID 0x240c */
  8618 ms  0x240c PK11_Encrypt()
  8618 ms  0x240c symkey:0x7feb75138400
           /* TID 0x2414 */
  8619 ms  0x2414 PR_Close()
  8619 ms  0x2414 fd:0x7feb8628c8b0
           /* TID 0x240c */
  8623 ms  0x240c SECKEY_CreateECPrivateKey()
  8623 ms  0x240c cx:0x7feb933ce0e8
  8624 ms     | 0x240c EC_ValidatePublicKey()
  8624 ms     | 0x240c ret:0x0
  8624 ms  0x240c ret:0x7feb8c774820::7feb8c774820  30 93 4f 86                                      0.O.
  8624 ms  0x240c SECKEY_CreateECPrivateKey()
  8624 ms  0x240c cx:0x7feb933ce0e8
  8624 ms     | 0x240c EC_ValidatePublicKey()
  8626 ms     | 0x240c ret:0x0
  8626 ms  0x240c ret:0x7feb8c778820::7feb8c778820  60 95 4f 86                                      `.O.
  8639 ms  SECKEY_ECParamsToKeySize()
  8639 ms  0x240c ret:0x100
  8639 ms  0x240c SECKEY_CreateECPrivateKey()
  8639 ms  0x240c cx:0x7feb933cdda8
  8640 ms     | 0x240c EC_ValidatePublicKey()
  8641 ms     | 0x240c ret:0x0
  8641 ms  0x240c ret:0x7feb8cb85020::7feb8cb85020  20 99 4f 86                                       .O.
  8641 ms  0x240c PK11_PubDeriveWithKDF()
  8641 ms  0x240c seckey:0x7feb8cb85020
  8641 ms     | 0x240c EC_ValidatePublicKey()
  8648 ms     | 0x240c ret:0x0
  8649 ms  0x240c ret:0x7feb882fd880
  8649 ms  0x240c PK11_DeriveWithFlags()
  8649 ms  0x240c basekey:0x7feb882fd880
  8649 ms     | 0x240c PK11_DeriveWithTemplate()
  8649 ms  0x240c ret:0x7feb87826b80
  8649 ms  0x240c PK11_Derive()
  8649 ms  0x240c basekey:0x7feb87826b80
  8649 ms     | 0x240c PK11_DeriveWithTemplate()
  8649 ms  0x240c ret:0x7feb87826c00
  8649 ms  0x240c SECKEY_DestroyPrivateKey()
  8649 ms  0x240c privk:0x7feb8cb85020::7feb8cb85020  20 99 4f 86                                       .O.
  8649 ms  0x240c privk:0x7feb8cb85020::7feb8cb85020  e5 e5 e5 e5                                      ....
  8649 ms  0x240c PK11_Encrypt()
  8649 ms  0x240c symkey:0x7feb8788ab00
  8665 ms  SECKEY_ECParamsToKeySize()
  8665 ms  0x240c ret:0x100
  8665 ms  0x240c SECKEY_CreateECPrivateKey()
  8665 ms  0x240c cx:0x7feb933cdf48
  8666 ms     | 0x240c EC_ValidatePublicKey()
  8668 ms     | 0x240c ret:0x0
  8668 ms  0x240c ret:0x7feb8cb8b820::7feb8cb8b820  10 9f 4f 86                                      ..O.
  8669 ms  0x240c PK11_PubDeriveWithKDF()
  8669 ms  0x240c seckey:0x7feb8cb8b820
  8669 ms     | 0x240c EC_ValidatePublicKey()
  8671 ms     | 0x240c ret:0x0
  8672 ms  0x240c ret:0x7feb882fd880
  8672 ms  0x240c PK11_DeriveWithFlags()
  8672 ms  0x240c basekey:0x7feb882fd880
  8672 ms     | 0x240c PK11_DeriveWithTemplate()
  8672 ms  0x240c ret:0x7feb8788b480
  8672 ms  0x240c PK11_Derive()
  8672 ms  0x240c basekey:0x7feb8788b480
  8672 ms     | 0x240c PK11_DeriveWithTemplate()
  8672 ms  0x240c ret:0x7feb8788b500
  8673 ms  0x240c SECKEY_DestroyPrivateKey()
  8673 ms  0x240c privk:0x7feb8cb8b820::7feb8cb8b820  10 9f 4f 86                                      ..O.
  8673 ms  0x240c privk:0x7feb8cb8b820::7feb8cb8b820  e5 e5 e5 e5                                      ....
  8673 ms  0x240c PK11_Encrypt()
  8673 ms  0x240c symkey:0x7feb8788b780
  8673 ms  SECKEY_ECParamsToKeySize()
  8673 ms  0x240c ret:0x100
  8673 ms  0x240c SECKEY_CreateECPrivateKey()
  8673 ms  0x240c cx:0x7feb933ceaa8
  8674 ms     | 0x240c EC_ValidatePublicKey()
  8675 ms     | 0x240c ret:0x0
  8675 ms  0x240c ret:0x7feb8cb8e020::7feb8cb8e020  00 e1 70 86                                      ..p.
  8675 ms  0x240c PK11_PubDeriveWithKDF()
  8675 ms  0x240c seckey:0x7feb8cb8e020
  8675 ms     | 0x240c EC_ValidatePublicKey()
  8677 ms     | 0x240c ret:0x0
  8678 ms  0x240c ret:0x7feb882fd880
  8678 ms  0x240c PK11_DeriveWithFlags()
  8678 ms  0x240c basekey:0x7feb882fd880
  8678 ms     | 0x240c PK11_DeriveWithTemplate()
  8678 ms  0x240c ret:0x7feb8788bd00
  8678 ms  0x240c PK11_Derive()
  8678 ms  0x240c basekey:0x7feb8788bd00
  8678 ms     | 0x240c PK11_DeriveWithTemplate()
  8678 ms  0x240c ret:0x7feb8788bd80
  8678 ms  0x240c SECKEY_DestroyPrivateKey()
  8678 ms  0x240c privk:0x7feb8cb8e020::7feb8cb8e020  00 e1 70 86                                      ..p.
  8678 ms  0x240c privk:0x7feb8cb8e020::7feb8cb8e020  e5 e5 e5 e5                                      ....
  8679 ms  0x240c PK11_Encrypt()
  8679 ms  0x240c symkey:0x7feb878d6080
           /* TID 0x24ad */
  8679 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8680 ms  0x24ad ret:0x0
           /* TID 0x240c */
  8682 ms  0x240c SSL_AuthCertificateComplete()
  8682 ms  0x240c fd:0x7feb869f6040
  8682 ms  0x240c err:0x0
  8687 ms  0x240c PK11_Encrypt()
  8687 ms  0x240c symkey:0x7feb878d6080
  8687 ms  0x240c PK11_Encrypt()
  8687 ms  0x240c symkey:0x7feb878d6080
  8687 ms  0x240c SECKEY_CreateECPrivateKey()
  8687 ms  0x240c cx:0x7feb933ce288
  8688 ms     | 0x240c EC_ValidatePublicKey()
  8688 ms     | 0x240c ret:0x0
  8688 ms  0x240c ret:0x7feb8cb8f020::7feb8cb8f020  60 9f 4f 86                                      `.O.
  8688 ms  0x240c SECKEY_CreateECPrivateKey()
  8688 ms  0x240c cx:0x7feb933ce288
  8689 ms     | 0x240c EC_ValidatePublicKey()
  8690 ms     | 0x240c ret:0x0
  8690 ms  0x240c ret:0x7feb8cb91020::7feb8cb91020  b0 f0 01 87                                      ....
  8691 ms  0x240c SECKEY_CreateECPrivateKey()
  8691 ms  0x240c cx:0x7feb933ce768
  8691 ms     | 0x240c EC_ValidatePublicKey()
  8691 ms     | 0x240c ret:0x0
  8691 ms  0x240c ret:0x7feb8cb93820::7feb8cb93820  b0 00 7c 87                                      ..|.
  8691 ms  0x240c SECKEY_CreateECPrivateKey()
  8691 ms  0x240c cx:0x7feb933ce768
  8692 ms     | 0x240c EC_ValidatePublicKey()
  8693 ms     | 0x240c ret:0x0
  8693 ms  0x240c ret:0x7feb8cb95820::7feb8cb95820  90 07 7c 87                                      ..|.
  8698 ms  0x240c SECKEY_CreateECPrivateKey()
  8698 ms  0x240c cx:0x7feb933ce908
  8698 ms     | 0x240c EC_ValidatePublicKey()
  8698 ms     | 0x240c ret:0x0
  8698 ms  0x240c ret:0x7feb8cb98020::7feb8cb98020  d0 08 7c 87                                      ..|.
  8699 ms  0x240c SECKEY_CreateECPrivateKey()
  8699 ms  0x240c cx:0x7feb933ce908
  8699 ms     | 0x240c EC_ValidatePublicKey()
  8701 ms     | 0x240c ret:0x0
  8701 ms  0x240c ret:0x7feb8cb9a020::7feb8cb9a020  a0 0b 7c 87                                      ..|.
           /* TID 0x2414 */
  8706 ms  0x2414 PR_Close()
  8706 ms  0x2414 fd:0x7feb869e38e0
           /* TID 0x246a */
  8706 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8706 ms  0x246a ret:0x0
           /* TID 0x240c */
  8706 ms  0x240c SECKEY_DestroyPrivateKey()
  8706 ms  0x240c privk:0x7feb8c76f020::7feb8c76f020  50 91 4f 86                                      P.O.
  8706 ms  0x240c privk:0x7feb8c76f020::7feb8c76f020  e5 e5 e5 e5                                      ....
  8706 ms  0x240c SECKEY_DestroyPrivateKey()
  8706 ms  0x240c privk:0x7feb8c76c820::7feb8c76c820  f0 b1 2d 86                                      ..-.
  8706 ms  0x240c privk:0x7feb8c76c820::7feb8c76c820  e5 e5 e5 e5                                      ....
  8706 ms  0x240c PK11_Encrypt()
  8706 ms  0x240c symkey:0x7feb878d6080
  8707 ms  0x240c PR_Connect()
  8707 ms  0x240c fd:0x7feb869f6550
  8708 ms  0x240c SSL_AuthCertificateComplete()
  8708 ms  0x240c fd:0x7feb8628c250
  8708 ms  0x240c err:0x0
  8708 ms  0x240c PK11_Encrypt()
  8708 ms  0x240c symkey:0x7feb8788ab00
           /* TID 0x2414 */
  8730 ms  0x2414 PR_Close()
  8730 ms  0x2414 fd:0x7feb864ed490
  8734 ms  0x2414 PR_Close()
  8734 ms  0x2414 fd:0x7feb864edbe0
           /* TID 0x24aa */
  8734 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  8734 ms  0x24aa ret:0x0
           /* TID 0x240c */
  8735 ms  0x240c SSL_AuthCertificateComplete()
  8735 ms  0x240c fd:0x7feb754d76d0
  8735 ms  0x240c err:0x0
  8735 ms  0x240c PK11_Encrypt()
  8735 ms  0x240c symkey:0x7feb8788b780
           /* TID 0x2414 */
  8744 ms  0x2414 PR_Close()
  8744 ms  0x2414 fd:0x7feb864edd00
  8749 ms  0x2414 PR_Close()
  8749 ms  0x2414 fd:0x7feb8628ca00
           /* TID 0x240c */
  8761 ms  0x240c SSL_ImportFD()
  8761 ms  0x240c ret:0x7feb869e3af0
  8761 ms  0x240c SSL_AuthCertificateHook()
  8761 ms  0x240c fd:0x7feb869e3af0
  8761 ms  0x240c ret:0x0
  8761 ms  0x240c PR_Connect()
  8761 ms  0x240c fd:0x7feb869e3af0
  8819 ms  SECKEY_ECParamsToKeySize()
  8819 ms  0x240c ret:0x100
  8819 ms  0x240c SECKEY_CreateECPrivateKey()
  8819 ms  0x240c cx:0x7feb933ce0e8
  8819 ms     | 0x240c EC_ValidatePublicKey()
  8821 ms     | 0x240c ret:0x0
  8821 ms  0x240c ret:0x7feb8cb83020::7feb8cb83020  80 cd 7c 87                                      ..|.
  8821 ms  0x240c PK11_PubDeriveWithKDF()
  8821 ms  0x240c seckey:0x7feb8cb83020
  8821 ms     | 0x240c EC_ValidatePublicKey()
  8826 ms     | 0x240c ret:0x0
  8828 ms  0x240c ret:0x7feb882fd880
  8828 ms  0x240c PK11_DeriveWithFlags()
  8828 ms  0x240c basekey:0x7feb882fd880
  8828 ms     | 0x240c PK11_DeriveWithTemplate()
  8828 ms  0x240c ret:0x7feb7535b380
  8828 ms  0x240c PK11_Derive()
  8828 ms  0x240c basekey:0x7feb7535b380
  8828 ms     | 0x240c PK11_DeriveWithTemplate()
  8828 ms  0x240c ret:0x7feb877fcb00
  8828 ms  0x240c SECKEY_DestroyPrivateKey()
  8828 ms  0x240c privk:0x7feb8cb83020::7feb8cb83020  80 cd 7c 87                                      ..|.
  8828 ms  0x240c privk:0x7feb8cb83020::7feb8cb83020  e5 e5 e5 e5                                      ....
  8828 ms  0x240c PK11_Encrypt()
  8828 ms  0x240c symkey:0x7feb87b0e400
  8828 ms  0x240c SSL_AuthCertificateComplete()
  8828 ms  0x240c fd:0x7feb864ed670
  8828 ms  0x240c err:0x0
  8831 ms  0x240c PK11_Encrypt()
  8831 ms  0x240c symkey:0x7feb87b0e400
  8832 ms  0x240c PK11_Derive()
  8832 ms  0x240c basekey:0x7feb87b0e280
  8832 ms     | 0x240c PK11_DeriveWithTemplate()
  8832 ms  0x240c ret:0x7feb882fd880
  8832 ms  0x240c PK11_Encrypt()
  8832 ms  0x240c symkey:0x7feb87b0f380
  8833 ms  0x240c SECKEY_DestroyPrivateKey()
  8833 ms  0x240c privk:0x7feb8cb91020::7feb8cb91020  b0 f0 01 87                                      ....
  8833 ms  0x240c privk:0x7feb8cb91020::7feb8cb91020  e5 e5 e5 e5                                      ....
  8833 ms  0x240c SECKEY_DestroyPrivateKey()
  8833 ms  0x240c privk:0x7feb8cb8f020::7feb8cb8f020  60 9f 4f 86                                      `.O.
  8833 ms  0x240c privk:0x7feb8cb8f020::7feb8cb8f020  e5 e5 e5 e5                                      ....
  8833 ms  0x240c PK11_Derive()
  8833 ms  0x240c basekey:0x7feb87b0f780
  8833 ms     | 0x240c PK11_DeriveWithTemplate()
  8833 ms  0x240c ret:0x7feb87b0f700
  8833 ms  0x240c PK11_Encrypt()
  8833 ms  0x240c symkey:0x7feb87b23080
  8838 ms  0x240c SECKEY_DestroyPrivateKey()
  8838 ms  0x240c privk:0x7feb8cb95820::7feb8cb95820  90 07 7c 87                                      ..|.
  8838 ms  0x240c privk:0x7feb8cb95820::7feb8cb95820  e5 e5 e5 e5                                      ....
  8838 ms  0x240c SECKEY_DestroyPrivateKey()
  8838 ms  0x240c privk:0x7feb8cb93820::7feb8cb93820  b0 00 7c 87                                      ..|.
  8838 ms  0x240c privk:0x7feb8cb93820::7feb8cb93820  e5 e5 e5 e5                                      ....
  8839 ms  0x240c PK11_Encrypt()
  8839 ms  0x240c symkey:0x7feb87b0f380
  8839 ms  0x240c PK11_Encrypt()
  8839 ms  0x240c symkey:0x7feb87b23080
  8840 ms  0x240c PK11_Derive()
  8840 ms  0x240c basekey:0x7feb87b24580
  8840 ms     | 0x240c PK11_DeriveWithTemplate()
  8840 ms  0x240c ret:0x7feb87b23f00
  8840 ms  0x240c PK11_Encrypt()
  8840 ms  0x240c symkey:0x7feb87b24900
  8841 ms  0x240c SECKEY_DestroyPrivateKey()
  8841 ms  0x240c privk:0x7feb8cb9a020::7feb8cb9a020  a0 0b 7c 87                                      ..|.
  8841 ms  0x240c privk:0x7feb8cb9a020::7feb8cb9a020  e5 e5 e5 e5                                      ....
  8841 ms  0x240c SECKEY_DestroyPrivateKey()
  8841 ms  0x240c privk:0x7feb8cb98020::7feb8cb98020  d0 08 7c 87                                      ..|.
  8841 ms  0x240c privk:0x7feb8cb98020::7feb8cb98020  e5 e5 e5 e5                                      ....
  8841 ms  0x240c SECKEY_DestroyPrivateKey()
  8841 ms  0x240c privk:0x7feb877dc020::7feb877dc020  10 aa 24 86                                      ..$.
  8841 ms  0x240c privk:0x7feb877dc020::7feb877dc020  e5 e5 e5 e5                                      ....
  8841 ms  0x240c SECKEY_DestroyPrivateKey()
  8841 ms  0x240c privk:0x7feb86467020::7feb86467020  e0 a7 24 86                                      ..$.
  8841 ms  0x240c privk:0x7feb86467020::7feb86467020  e5 e5 e5 e5                                      ....
  8842 ms  0x240c PK11_Encrypt()
  8842 ms  0x240c symkey:0x7feb87b24900
  8864 ms  0x240c SECKEY_DestroyPrivateKey()
  8864 ms  0x240c privk:0x7feb8c362020::7feb8c362020  80 ad 24 86                                      ..$.
  8864 ms  0x240c privk:0x7feb8c362020::7feb8c362020  e5 e5 e5 e5                                      ....
  8864 ms  0x240c SECKEY_DestroyPrivateKey()
  8864 ms  0x240c privk:0x7feb8c35e020::7feb8c35e020  a0 ab 24 86                                      ..$.
  8864 ms  0x240c privk:0x7feb8c35e020::7feb8c35e020  e5 e5 e5 e5                                      ....
  8889 ms  0x240c SECKEY_CreateECPrivateKey()
  8889 ms  0x240c cx:0x7feb933cfae8
  8890 ms     | 0x240c EC_ValidatePublicKey()
  8890 ms     | 0x240c ret:0x0
  8890 ms  0x240c ret:0x7feb86467020::7feb86467020  e0 a7 24 86                                      ..$.
  8890 ms  0x240c SECKEY_CreateECPrivateKey()
  8890 ms  0x240c cx:0x7feb933cfae8
  8891 ms     | 0x240c EC_ValidatePublicKey()
  8896 ms     | 0x240c ret:0x0
  8896 ms  0x240c ret:0x7feb877dc020::7feb877dc020  80 a3 24 86                                      ..$.
  9019 ms  0x240c SECKEY_DestroyPrivateKey()
  9019 ms  0x240c privk:0x7feb8c778820::7feb8c778820  60 95 4f 86                                      `.O.
  9020 ms  0x240c privk:0x7feb8c778820::7feb8c778820  e5 e5 e5 e5                                      ....
  9020 ms  0x240c SECKEY_DestroyPrivateKey()
  9020 ms  0x240c privk:0x7feb8c774820::7feb8c774820  30 93 4f 86                                      0.O.
  9020 ms  0x240c privk:0x7feb8c774820::7feb8c774820  e5 e5 e5 e5                                      ....
  9027 ms  SECKEY_ECParamsToKeySize()
  9027 ms  0x240c ret:0x100
  9027 ms  0x240c SECKEY_CreateECPrivateKey()
  9027 ms  0x240c cx:0x7feb933cfae8
  9028 ms     | 0x240c EC_ValidatePublicKey()
  9030 ms     | 0x240c ret:0x0
  9033 ms  0x240c ret:0x7feb8cb82020::7feb8cb82020  e0 9c 4f 86                                      ..O.
  9033 ms  0x240c PK11_PubDeriveWithKDF()
  9033 ms  0x240c seckey:0x7feb8cb82020
  9034 ms     | 0x240c EC_ValidatePublicKey()
  9035 ms     | 0x240c ret:0x0
  9043 ms  0x240c ret:0x7feb87b98600
  9043 ms  0x240c PK11_DeriveWithFlags()
  9043 ms  0x240c basekey:0x7feb87b98600
  9043 ms     | 0x240c PK11_DeriveWithTemplate()
  9043 ms  0x240c ret:0x7feb87b99280
  9043 ms  0x240c PK11_Derive()
  9043 ms  0x240c basekey:0x7feb87b99280
  9043 ms     | 0x240c PK11_DeriveWithTemplate()
  9043 ms  0x240c ret:0x7feb87b99500
  9043 ms  0x240c SECKEY_DestroyPrivateKey()
  9043 ms  0x240c privk:0x7feb8cb82020::7feb8cb82020  e0 9c 4f 86                                      ..O.
  9043 ms  0x240c privk:0x7feb8cb82020::7feb8cb82020  e5 e5 e5 e5                                      ....
  9043 ms  0x240c PK11_Encrypt()
  9043 ms  0x240c symkey:0x7feb87b99680
           /* TID 0x2414 */
  9045 ms  0x2414 PR_Close()
  9045 ms  0x2414 fd:0x7feb8628c4c0
           /* TID 0x240c */
  9045 ms  0x240c SSL_ImportFD()
  9045 ms  0x240c ret:0x7feb87088310
  9045 ms  0x240c SSL_AuthCertificateHook()
  9045 ms  0x240c fd:0x7feb87088310
  9045 ms  0x240c ret:0x0
  9045 ms  0x240c PR_Connect()
  9045 ms  0x240c fd:0x7feb87088310
           /* TID 0x2414 */
  9058 ms  0x2414 PR_Close()
  9058 ms  0x2414 fd:0x7feb8628c4c0
  9070 ms  0x2414 PR_Close()
  9070 ms  0x2414 fd:0x7feb8628c820
           /* TID 0x246a */
  9070 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9070 ms  0x246a ret:0x0
           /* TID 0x240c */
  9070 ms  0x240c SSL_AuthCertificateComplete()
  9070 ms  0x240c fd:0x7feb869e3af0
  9070 ms  0x240c err:0x0
  9070 ms  0x240c PK11_Encrypt()
  9070 ms  0x240c symkey:0x7feb87b99680
           /* TID 0x2414 */
  9094 ms  0x2414 PR_Close()
  9094 ms  0x2414 fd:0x7feb8637c070
           /* TID 0x240c */
  9172 ms  0x240c SECKEY_DestroyPrivateKey()
  9172 ms  0x240c privk:0x7feb877dc020::7feb877dc020  80 a3 24 86                                      ..$.
  9173 ms  0x240c privk:0x7feb877dc020::7feb877dc020  e5 e5 e5 e5                                      ....
  9173 ms  0x240c SECKEY_DestroyPrivateKey()
  9173 ms  0x240c privk:0x7feb86467020::7feb86467020  e0 a7 24 86                                      ..$.
  9173 ms  0x240c privk:0x7feb86467020::7feb86467020  e5 e5 e5 e5                                      ....
           /* TID 0x2414 */
  9175 ms  0x2414 PR_Close()
  9175 ms  0x2414 fd:0x7feb8637c070
  9179 ms  0x2414 PR_Close()
  9179 ms  0x2414 fd:0x7feb8637c070
           /* TID 0x240c */
  9184 ms  0x240c SECKEY_CreateECPrivateKey()
  9184 ms  0x240c cx:0x7feb933cfe28
  9185 ms     | 0x240c EC_ValidatePublicKey()
  9185 ms     | 0x240c ret:0x0
  9185 ms  0x240c ret:0x7feb86465820::7feb86465820  90 a7 24 86                                      ..$.
  9185 ms  0x240c SECKEY_CreateECPrivateKey()
  9185 ms  0x240c cx:0x7feb933cfe28
  9185 ms     | 0x240c EC_ValidatePublicKey()
  9187 ms     | 0x240c ret:0x0
  9187 ms  0x240c ret:0x7feb86468020::7feb86468020  10 aa 24 86                                      ..$.
  9195 ms  0x240c PK11_Encrypt()
  9195 ms  0x240c symkey:0x7feb75138400
           /* TID 0x2414 */
  9298 ms  0x2414 PR_Close()
  9298 ms  0x2414 fd:0x7feb8637c070
           /* TID 0x240c */
  9328 ms  SECKEY_ECParamsToKeySize()
  9328 ms  0x240c ret:0x100
  9328 ms  0x240c SECKEY_CreateECPrivateKey()
  9328 ms  0x240c cx:0x7feb933cfe28
  9328 ms     | 0x240c EC_ValidatePublicKey()
  9330 ms     | 0x240c ret:0x0
  9330 ms  0x240c ret:0x7feb8c76f820::7feb8c76f820  a0 61 28 86                                      .a(.
  9330 ms  0x240c PK11_PubDeriveWithKDF()
  9330 ms  0x240c seckey:0x7feb8c76f820
  9330 ms     | 0x240c EC_ValidatePublicKey()
  9336 ms     | 0x240c ret:0x0
  9337 ms  0x240c ret:0x7feb87b98600
  9337 ms  0x240c PK11_DeriveWithFlags()
  9337 ms  0x240c basekey:0x7feb87b98600
  9337 ms     | 0x240c PK11_DeriveWithTemplate()
  9337 ms  0x240c ret:0x7feb877fea80
  9337 ms  0x240c PK11_Derive()
  9337 ms  0x240c basekey:0x7feb877fea80
  9337 ms     | 0x240c PK11_DeriveWithTemplate()
  9337 ms  0x240c ret:0x7feb87826b00
  9337 ms  0x240c SECKEY_DestroyPrivateKey()
  9337 ms  0x240c privk:0x7feb8c76f820::7feb8c76f820  a0 61 28 86                                      .a(.
  9337 ms  0x240c privk:0x7feb8c76f820::7feb8c76f820  e5 e5 e5 e5                                      ....
  9337 ms  0x240c PK11_Encrypt()
  9337 ms  0x240c symkey:0x7feb87e36500
  9343 ms  0x240c SSL_AuthCertificateComplete()
  9343 ms  0x240c fd:0x7feb87088310
  9343 ms  0x240c err:0x0
  9343 ms  0x240c PK11_Encrypt()
  9343 ms  0x240c symkey:0x7feb87e36500
           /* TID 0x2414 */
  9399 ms  0x2414 PR_Close()
  9399 ms  0x2414 fd:0x7feb8637c130
  9423 ms  0x2414 PR_Close()
  9423 ms  0x2414 fd:0x7feb8637c040
  9423 ms  0x2414 PR_Close()
  9423 ms  0x2414 fd:0x7feb864edd60
  9423 ms  0x2414 PR_Close()
  9423 ms  0x2414 fd:0x7feb869f6850
  9423 ms  0x2414 PR_Close()
  9423 ms  0x2414 fd:0x7feb87b28850
  9423 ms  0x2414 PR_Close()
  9423 ms  0x2414 fd:0x7feb87b288b0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb8637c040
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb864edd60
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb869f6850
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87b28850
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87b288b0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33430
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e334c0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33550
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33610
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33670
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e336d0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33910
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33a60
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33ac0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33cd0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33d30
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb87e33fd0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb882b61c0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb882b6250
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb882b62e0
  9424 ms  0x2414 PR_Close()
  9424 ms  0x2414 fd:0x7feb882b67f0
  9457 ms  0x2414 PR_Close()
  9457 ms  0x2414 fd:0x7feb754d78e0
           /* TID 0x240c */
  9476 ms  0x240c SECKEY_DestroyPrivateKey()
  9476 ms  0x240c privk:0x7feb86468020::7feb86468020  10 aa 24 86                                      ..$.
  9477 ms  0x240c privk:0x7feb86468020::7feb86468020  e5 e5 e5 e5                                      ....
  9477 ms  0x240c SECKEY_DestroyPrivateKey()
  9477 ms  0x240c privk:0x7feb86465820::7feb86465820  90 a7 24 86                                      ..$.
  9477 ms  0x240c privk:0x7feb86465820::7feb86465820  e5 e5 e5 e5                                      ....
  9478 ms  0x240c PK11_Encrypt()
  9478 ms  0x240c symkey:0x7feb8788b680
  9490 ms  0x240c PK11_Encrypt()
  9490 ms  0x240c symkey:0x7feb8788ab00
  9494 ms  0x240c PK11_Encrypt()
  9494 ms  0x240c symkey:0x7feb75138400
  9496 ms  0x240c PK11_Encrypt()
  9496 ms  0x240c symkey:0x7feb8788b200
  9499 ms  0x240c PK11_Encrypt()
  9499 ms  0x240c symkey:0x7feb87b23080
  9500 ms  0x240c PK11_Encrypt()
  9500 ms  0x240c symkey:0x7feb87b0f380
  9503 ms  0x240c PK11_Encrypt()
  9503 ms  0x240c symkey:0x7feb75422b00
  9505 ms  0x240c PK11_Encrypt()
  9505 ms  0x240c symkey:0x7feb87b24900
           /* TID 0x2414 */
  9540 ms  0x2414 PR_Close()
  9540 ms  0x2414 fd:0x7feb8628ca00
  9618 ms  0x2414 PR_Close()
  9618 ms  0x2414 fd:0x7feb8628ca00
  9685 ms  0x2414 PR_Close()
  9685 ms  0x2414 fd:0x7feb8637c130
           /* TID 0x240c */
  9694 ms  0x240c PK11_Encrypt()
  9694 ms  0x240c symkey:0x7feb8788ab00
           /* TID 0x2414 */
  9703 ms  0x2414 PR_Close()
  9703 ms  0x2414 fd:0x7feb8637c040
  9706 ms  0x2414 PR_Close()
  9706 ms  0x2414 fd:0x7feb8637c040
  9708 ms  0x2414 PR_Close()
  9708 ms  0x2414 fd:0x7feb8637c040
  9710 ms  0x2414 PR_Close()
  9710 ms  0x2414 fd:0x7feb8637c040
  9713 ms  0x2414 PR_Close()
  9713 ms  0x2414 fd:0x7feb8637c040
  9715 ms  0x2414 PR_Close()
  9715 ms  0x2414 fd:0x7feb8637c040
           /* TID 0x240c */
  9717 ms  0x240c SSL_ImportFD()
  9717 ms  0x240c ret:0x7feb87e33a60
  9717 ms  0x240c SSL_AuthCertificateHook()
  9717 ms  0x240c fd:0x7feb87e33a60
  9717 ms  0x240c ret:0x0
  9717 ms  0x240c PR_Connect()
  9717 ms  0x240c fd:0x7feb87e33a60
  9718 ms  0x240c SSL_ImportFD()
  9718 ms  0x240c ret:0x7feb882b6250
  9718 ms  0x240c SSL_AuthCertificateHook()
  9718 ms  0x240c fd:0x7feb882b6250
  9718 ms  0x240c ret:0x0
  9718 ms  0x240c PR_Connect()
  9718 ms  0x240c fd:0x7feb882b6250
  9719 ms  0x240c SSL_ImportFD()
  9719 ms  0x240c ret:0x7feb882b6970
  9719 ms  0x240c SSL_AuthCertificateHook()
  9719 ms  0x240c fd:0x7feb882b6970
  9719 ms  0x240c ret:0x0
  9719 ms  0x240c PR_Connect()
  9719 ms  0x240c fd:0x7feb882b6970
  9719 ms  0x240c SSL_ImportFD()
  9719 ms  0x240c ret:0x7feb8953e280
  9719 ms  0x240c SSL_AuthCertificateHook()
  9719 ms  0x240c fd:0x7feb8953e280
  9719 ms  0x240c ret:0x0
  9719 ms  0x240c PR_Connect()
  9719 ms  0x240c fd:0x7feb8953e280
  9720 ms  0x240c PK11_Encrypt()
  9720 ms  0x240c symkey:0x7feb750a6280
  9720 ms  0x240c PK11_Encrypt()
  9720 ms  0x240c symkey:0x7feb750a6280
  9720 ms  0x240c PK11_Encrypt()
  9720 ms  0x240c symkey:0x7feb750a6280
  9721 ms  0x240c PK11_Encrypt()
  9721 ms  0x240c symkey:0x7feb750a6280
  9721 ms  0x240c PK11_Encrypt()
  9721 ms  0x240c symkey:0x7feb750a6280
  9721 ms  0x240c PK11_Encrypt()
  9721 ms  0x240c symkey:0x7feb750a6280
  9745 ms  0x240c SECKEY_CreateECPrivateKey()
  9745 ms  0x240c cx:0x7feb933d0308
  9745 ms     | 0x240c EC_ValidatePublicKey()
  9745 ms     | 0x240c ret:0x0
  9745 ms  0x240c ret:0x7feb8cb8e820::7feb8cb8e820  80 ad 24 86                                      ..$.
  9745 ms  0x240c SECKEY_CreateECPrivateKey()
  9745 ms  0x240c cx:0x7feb933d0308
  9746 ms     | 0x240c EC_ValidatePublicKey()
  9747 ms     | 0x240c ret:0x0
  9747 ms  0x240c ret:0x7feb8cb91020::7feb8cb91020  30 93 4f 86                                      0.O.
  9757 ms  0x240c SECKEY_CreateECPrivateKey()
  9757 ms  0x240c cx:0x7feb933d0648
  9757 ms     | 0x240c EC_ValidatePublicKey()
  9757 ms     | 0x240c ret:0x0
  9757 ms  0x240c ret:0x7feb8cb93820::7feb8cb93820  10 9f 4f 86                                      ..O.
  9757 ms  0x240c SECKEY_CreateECPrivateKey()
  9757 ms  0x240c cx:0x7feb933d0648
  9758 ms     | 0x240c EC_ValidatePublicKey()
  9759 ms     | 0x240c ret:0x0
  9759 ms  0x240c ret:0x7feb8cb95820::7feb8cb95820  d0 f8 01 87                                      ....
           /* TID 0x2414 */
  9760 ms  0x2414 PR_Close()
  9760 ms  0x2414 fd:0x7feb87e33a30
           /* TID 0x240c */
  9770 ms  0x240c SECKEY_CreateECPrivateKey()
  9770 ms  0x240c cx:0x7feb933d04a8
  9771 ms     | 0x240c EC_ValidatePublicKey()
  9771 ms     | 0x240c ret:0x0
  9771 ms  0x240c ret:0x7feb8cb98820::7feb8cb98820  f0 96 4f 86                                      ..O.
  9771 ms  0x240c SECKEY_CreateECPrivateKey()
  9771 ms  0x240c cx:0x7feb933d04a8
  9772 ms     | 0x240c EC_ValidatePublicKey()
  9773 ms     | 0x240c ret:0x0
  9773 ms  0x240c ret:0x7feb8cb9a820::7feb8cb9a820  f0 06 7c 87                                      ..|.
           /* TID 0x24ad */
  9780 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9780 ms  0x24ad ret:0x0
  9780 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9780 ms  0x24ad ret:0x0
           /* TID 0x240c */
  9781 ms  SECKEY_ECParamsToKeySize()
  9781 ms  0x240c ret:0xff
  9782 ms  0x240c SECKEY_CreateECPrivateKey()
  9782 ms  0x240c cx:0x7feb933d0308
  9782 ms     | 0x240c EC_ValidatePublicKey()
  9782 ms     | 0x240c ret:0x0
  9782 ms  0x240c ret:0x7feb8cbca020::7feb8cbca020  60 f0 81 87                                      `...
  9782 ms  0x240c PK11_PubDeriveWithKDF()
  9782 ms  0x240c seckey:0x7feb8cbca020
  9782 ms     | 0x240c EC_ValidatePublicKey()
  9782 ms     | 0x240c ret:0x0
  9783 ms  0x240c ret:0x7feb87b98600
  9783 ms  0x240c PK11_DeriveWithFlags()
  9783 ms  0x240c basekey:0x7feb87b98600
  9783 ms     | 0x240c PK11_DeriveWithTemplate()
  9783 ms  0x240c ret:0x7feb89555600
  9783 ms  0x240c PK11_Derive()
  9783 ms  0x240c basekey:0x7feb89555600
  9783 ms     | 0x240c PK11_DeriveWithTemplate()
  9783 ms  0x240c ret:0x7feb89555680
  9783 ms  0x240c SECKEY_DestroyPrivateKey()
  9783 ms  0x240c privk:0x7feb8cbca020::7feb8cbca020  60 f0 81 87                                      `...
  9783 ms  0x240c privk:0x7feb8cbca020::7feb8cbca020  e5 e5 e5 e5                                      ....
  9783 ms  0x240c PK11_Encrypt()
  9783 ms  0x240c symkey:0x7feb89555800
  9784 ms  0x240c SECKEY_CreateECPrivateKey()
  9784 ms  0x240c cx:0x7feb933d0168
  9785 ms     | 0x240c EC_ValidatePublicKey()
  9785 ms     | 0x240c ret:0x0
  9785 ms  0x240c ret:0x7feb8cbca020::7feb8cbca020  b0 cf 7c 87                                      ..|.
  9785 ms  0x240c SECKEY_CreateECPrivateKey()
  9785 ms  0x240c cx:0x7feb933d0168
  9786 ms     | 0x240c EC_ValidatePublicKey()
  9788 ms     | 0x240c ret:0x0
  9790 ms  0x240c ret:0x7feb8cbc5020::7feb8cbc5020  60 f0 81 87                                      `...
  9790 ms  0x240c SSL_AuthCertificateComplete()
  9790 ms  0x240c fd:0x7feb882b6250
  9790 ms  0x240c err:0x0
  9790 ms  0x240c PK11_Encrypt()
  9790 ms  0x240c symkey:0x7feb89555800
  9791 ms  0x240c PK11_Encrypt()
  9791 ms  0x240c symkey:0x7feb8788b680
  9792 ms  0x240c PK11_Encrypt()
  9792 ms  0x240c symkey:0x7feb8788b680
  9793 ms  0x240c PK11_Encrypt()
  9793 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  9800 ms  0x2414 PR_Close()
  9800 ms  0x2414 fd:0x7feb89571b80
           /* TID 0x240c */
  9800 ms  0x240c PK11_Encrypt()
  9800 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  9801 ms  0x2414 PR_Close()
  9801 ms  0x2414 fd:0x7feb864ed220
  9802 ms  0x2414 PR_Close()
  9802 ms  0x2414 fd:0x7feb864ed220
  9803 ms  0x2414 PR_Close()
  9803 ms  0x2414 fd:0x7feb864ed1f0
           /* TID 0x240c */
  9807 ms  0x240c PK11_Encrypt()
  9807 ms  0x240c symkey:0x7feb8788b680
  9811 ms  0x240c SECKEY_DestroyPrivateKey()
  9811 ms  0x240c privk:0x7feb8cb91020::7feb8cb91020  30 93 4f 86                                      0.O.
  9811 ms  0x240c privk:0x7feb8cb91020::7feb8cb91020  e5 e5 e5 e5                                      ....
  9812 ms  0x240c SECKEY_DestroyPrivateKey()
  9812 ms  0x240c privk:0x7feb8cb8e820::7feb8cb8e820  80 ad 24 86                                      ..$.
  9812 ms  0x240c privk:0x7feb8cb8e820::7feb8cb8e820  e5 e5 e5 e5                                      ....
  9816 ms  0x240c PK11_Derive()
  9816 ms  0x240c basekey:0x7feb87b98600
  9816 ms     | 0x240c PK11_DeriveWithTemplate()
  9816 ms  0x240c ret:0x7feb89575a00
  9816 ms  0x240c PK11_PubDeriveWithKDF()
  9816 ms  0x240c seckey:0x7feb8cb93820
  9816 ms     | 0x240c EC_ValidatePublicKey()
  9816 ms     | 0x240c ret:0x0
  9817 ms  0x240c ret:0x7feb87b98600
  9817 ms  SECKEY_ECParamsToKeySize()
  9817 ms  0x240c ret:0xff
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb89575a00
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575a80
  9817 ms  0x240c PK11_Derive()
  9817 ms  0x240c basekey:0x7feb87b98600
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575b80
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb89575b80
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575a00
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb89575b80
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb87b98600
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb89575b80
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575a80
  9817 ms  0x240c PK11_Derive()
  9817 ms  0x240c basekey:0x7feb89586080
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89586100
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb87b98600
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575b80
  9817 ms  0x240c PK11_DeriveWithFlags()
  9817 ms  0x240c basekey:0x7feb87b98600
  9817 ms     | 0x240c PK11_DeriveWithTemplate()
  9817 ms  0x240c ret:0x7feb89575a80
           /* TID 0x2414 */
  9817 ms  0x2414 PR_Close()
  9817 ms  0x2414 fd:0x7feb869e3220
           /* TID 0x240c */
  9818 ms  0x240c PK11_DeriveWithFlags()
  9818 ms  0x240c basekey:0x7feb87b98600
  9818 ms     | 0x240c PK11_DeriveWithTemplate()
  9818 ms  0x240c ret:0x7feb89575a80
  9818 ms  0x240c SSL_AuthCertificateComplete()
  9818 ms  0x240c fd:0x7feb8953e280
  9818 ms  0x240c err:0x0
  9818 ms     | 0x240c PK11_DeriveWithFlags()
  9818 ms     | 0x240c basekey:0x7feb89586100
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89575a80
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89586100
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89586080
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89586100
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb878fff80
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89575a00
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89554c00
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89575a00
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89574b80
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89586080
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89574b80
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89586080
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89586180
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89575a00
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89575b80
  9819 ms     | 0x240c PK11_Encrypt()
  9819 ms     | 0x240c symkey:0x7feb89554c00
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89575a80
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89575b80
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89575a80
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89586180
  9819 ms     | 0x240c PK11_DeriveWithFlags()
  9819 ms     | 0x240c basekey:0x7feb89586100
  9819 ms     |    | 0x240c PK11_DeriveWithTemplate()
  9819 ms     | 0x240c ret:0x7feb89554c00
  9819 ms     | 0x240c SECKEY_DestroyPrivateKey()
  9819 ms     | 0x240c privk:0x7feb8cb95820::7feb8cb95820  d0 f8 01 87                                      ....
  9819 ms     | 0x240c privk:0x7feb8cb95820::7feb8cb95820  e5 e5 e5 e5                                      ....
  9819 ms     | 0x240c SECKEY_DestroyPrivateKey()
  9819 ms     | 0x240c privk:0x7feb8cb93820::7feb8cb93820  10 9f 4f 86                                      ..O.
  9819 ms     | 0x240c privk:0x7feb8cb93820::7feb8cb93820  e5 e5 e5 e5                                      ....
  9820 ms  0x240c PK11_Encrypt()
  9820 ms  0x240c symkey:0x7feb89575b80
  9820 ms  0x240c PK11_Encrypt()
  9820 ms  0x240c symkey:0x7feb89575b80
  9825 ms  0x240c PK11_DeriveWithFlags()
  9825 ms  0x240c basekey:0x7feb87b98600
  9825 ms     | 0x240c PK11_DeriveWithTemplate()
  9825 ms  0x240c ret:0x7feb89575a00
  9825 ms  0x240c PK11_Derive()
  9825 ms  0x240c basekey:0x7feb89575a00
  9825 ms     | 0x240c PK11_DeriveWithTemplate()
  9825 ms  0x240c ret:0x7feb89586100
  9827 ms  0x240c PK11_Encrypt()
  9827 ms  0x240c symkey:0x7feb8788b680
  9828 ms  0x240c PK11_Encrypt()
  9828 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  9843 ms  0x2414 PR_Close()
  9843 ms  0x2414 fd:0x7feb864edc10
           /* TID 0x240c */
  9849 ms  SECKEY_ECParamsToKeySize()
  9849 ms  0x240c ret:0x100
  9849 ms  SECKEY_ECParamsToBasePointOrderLen()
  9849 ms  0x240c ret:0x100
  9849 ms  SECKEY_ECParamsToBasePointOrderLen()
  9849 ms  0x240c ret:0x100
  9849 ms  0x240c EC_ValidatePublicKey()
  9850 ms  0x240c ret:0x0
           /* TID 0x24ad */
  9852 ms  SECKEY_ECParamsToBasePointOrderLen()
  9852 ms  0x24ad ret:0x180
  9852 ms  SECKEY_ECParamsToBasePointOrderLen()
  9852 ms  0x24ad ret:0x180
  9852 ms  0x24ad EC_ValidatePublicKey()
  9854 ms  0x24ad ret:0x0
           /* TID 0x240c */
  9863 ms  SECKEY_ECParamsToKeySize()
  9863 ms  0x240c ret:0x100
  9863 ms  0x240c SECKEY_CreateECPrivateKey()
  9863 ms  0x240c cx:0x7feb933d0168
  9863 ms     | 0x240c EC_ValidatePublicKey()
  9865 ms     | 0x240c ret:0x0
  9865 ms  0x240c ret:0x7feb8f4cf820::7feb8f4cf820  70 fe 81 87                                      p...
  9865 ms  0x240c PK11_PubDeriveWithKDF()
  9865 ms  0x240c seckey:0x7feb8f4cf820
  9865 ms     | 0x240c EC_ValidatePublicKey()
  9866 ms     | 0x240c ret:0x0
  9868 ms  0x240c ret:0x7feb87b98600
  9868 ms  0x240c PK11_DeriveWithFlags()
  9868 ms  0x240c basekey:0x7feb87b98600
  9868 ms     | 0x240c PK11_DeriveWithTemplate()
  9868 ms  0x240c ret:0x7feb89586180
  9868 ms  0x240c PK11_Derive()
  9868 ms  0x240c basekey:0x7feb89586180
  9868 ms     | 0x240c PK11_DeriveWithTemplate()
  9868 ms  0x240c ret:0x7feb895b7500
  9868 ms  0x240c SECKEY_DestroyPrivateKey()
  9868 ms  0x240c privk:0x7feb8f4cf820::7feb8f4cf820  70 fe 81 87                                      p...
  9868 ms  0x240c privk:0x7feb8f4cf820::7feb8f4cf820  e5 e5 e5 e5                                      ....
  9868 ms  0x240c PK11_Encrypt()
  9868 ms  0x240c symkey:0x7feb895b7700
           /* TID 0x24ad */
  9869 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9869 ms     | SECKEY_ECParamsToBasePointOrderLen()
  9869 ms     | 0x24ad ret:0x180
  9869 ms     | SECKEY_ECParamsToBasePointOrderLen()
  9869 ms     | 0x24ad ret:0x180
  9869 ms     | 0x24ad EC_ValidatePublicKey()
  9871 ms     | 0x24ad ret:0x0
  9880 ms  0x24ad ret:0x0
           /* TID 0x240c */
  9880 ms  0x240c SSL_AuthCertificateComplete()
  9880 ms  0x240c fd:0x7feb87e33a60
  9880 ms  0x240c err:0x0
           /* TID 0x2414 */
  9881 ms  0x2414 PR_Close()
  9881 ms  0x2414 fd:0x7feb89571670
           /* TID 0x24aa */
  9881 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  9881 ms  0x24aa ret:0x0
           /* TID 0x240c */
  9882 ms  0x240c PK11_Encrypt()
  9882 ms  0x240c symkey:0x7feb895b7700
  9883 ms  0x240c PK11_DeriveWithFlags()
  9883 ms  0x240c basekey:0x7feb89554c00
  9883 ms     | 0x240c PK11_DeriveWithTemplate()
  9883 ms  0x240c ret:0x7feb87b98600
  9883 ms  0x240c PK11_DeriveWithFlags()
  9883 ms  0x240c basekey:0x7feb89554c00
  9883 ms     | 0x240c PK11_DeriveWithTemplate()
  9883 ms  0x240c ret:0x7feb87b98600
  9883 ms  0x240c PK11_Encrypt()
  9883 ms  0x240c symkey:0x7feb89575b80
  9883 ms  0x240c SSL_AuthCertificateComplete()
  9883 ms  0x240c fd:0x7feb882b6970
  9883 ms  0x240c err:0x0
           /* TID 0x2414 */
  9888 ms  0x2414 PR_Close()
  9888 ms  0x2414 fd:0x7feb8628cc40
           /* TID 0x240c */
  9890 ms  0x240c SECKEY_DestroyPrivateKey()
  9890 ms  0x240c privk:0x7feb8cb9a820::7feb8cb9a820  f0 06 7c 87                                      ..|.
  9890 ms  0x240c privk:0x7feb8cb9a820::7feb8cb9a820  e5 e5 e5 e5                                      ....
  9890 ms  0x240c SECKEY_DestroyPrivateKey()
  9890 ms  0x240c privk:0x7feb8cb98820::7feb8cb98820  f0 96 4f 86                                      ..O.
  9890 ms  0x240c privk:0x7feb8cb98820::7feb8cb98820  e5 e5 e5 e5                                      ....
           /* TID 0x2414 */
  9900 ms  0x2414 PR_Close()
  9900 ms  0x2414 fd:0x7feb864edb20
           /* TID 0x240c */
  9901 ms  0x240c PK11_Encrypt()
  9901 ms  0x240c symkey:0x7feb89575b80
           /* TID 0x2414 */
  9901 ms  0x2414 PR_Close()
  9901 ms  0x2414 fd:0x7feb864edb20
           /* TID 0x240c */
  9908 ms  0x240c PK11_Encrypt()
  9908 ms  0x240c symkey:0x7feb8788b680
  9910 ms  0x240c PK11_Encrypt()
  9910 ms  0x240c symkey:0x7feb8788b680
  9911 ms  0x240c PK11_Encrypt()
  9911 ms  0x240c symkey:0x7feb8788b680
  9912 ms  0x240c PK11_Encrypt()
  9912 ms  0x240c symkey:0x7feb8788b680
  9913 ms  0x240c PK11_Encrypt()
  9913 ms  0x240c symkey:0x7feb8788b680
  9917 ms  0x240c PK11_Encrypt()
  9917 ms  0x240c symkey:0x7feb8788b680
  9918 ms  0x240c PK11_Encrypt()
  9918 ms  0x240c symkey:0x7feb8788b680
  9919 ms  0x240c PK11_Encrypt()
  9919 ms  0x240c symkey:0x7feb8788b680
  9920 ms  0x240c PK11_Encrypt()
  9920 ms  0x240c symkey:0x7feb8788b680
  9921 ms  0x240c PK11_Encrypt()
  9921 ms  0x240c symkey:0x7feb8788b680
  9922 ms  0x240c PK11_Encrypt()
  9922 ms  0x240c symkey:0x7feb8788b680
  9923 ms  0x240c PK11_Encrypt()
  9923 ms  0x240c symkey:0x7feb8788b680
  9926 ms  0x240c SECKEY_DestroyPrivateKey()
  9926 ms  0x240c privk:0x7feb8cbc5020::7feb8cbc5020  60 f0 81 87                                      `...
  9926 ms  0x240c privk:0x7feb8cbc5020::7feb8cbc5020  e5 e5 e5 e5                                      ....
  9926 ms  0x240c SECKEY_DestroyPrivateKey()
  9926 ms  0x240c privk:0x7feb8cbca020::7feb8cbca020  b0 cf 7c 87                                      ..|.
  9926 ms  0x240c privk:0x7feb8cbca020::7feb8cbca020  e5 e5 e5 e5                                      ....
  9945 ms  0x240c PK11_Encrypt()
  9945 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  9958 ms  0x2414 PR_Close()
  9958 ms  0x2414 fd:0x7feb895b1430
  9959 ms  0x2414 PR_Close()
  9959 ms  0x2414 fd:0x7feb864ed3a0
           /* TID 0x240c */
  9975 ms  0x240c PK11_Encrypt()
  9975 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
  9989 ms  0x2414 PR_Close()
  9989 ms  0x2414 fd:0x7feb895b1430
  9990 ms  0x2414 PR_Close()
  9990 ms  0x2414 fd:0x7feb75491430
  9991 ms  0x2414 PR_Close()
  9991 ms  0x2414 fd:0x7feb75491430
 10007 ms  0x2414 PR_Close()
 10007 ms  0x2414 fd:0x7feb75491430
 10010 ms  0x2414 PR_Close()
 10010 ms  0x2414 fd:0x7feb75491430
 10011 ms  0x2414 PR_Close()
 10011 ms  0x2414 fd:0x7feb75491430
 10013 ms  0x2414 PR_Close()
 10013 ms  0x2414 fd:0x7feb75491430
 10014 ms  0x2414 PR_Close()
 10014 ms  0x2414 fd:0x7feb75491430
 10014 ms  0x2414 PR_Close()
 10014 ms  0x2414 fd:0x7feb89571d30
 10015 ms  0x2414 PR_Close()
 10015 ms  0x2414 fd:0x7feb75491430
 10016 ms  0x2414 PR_Close()
 10016 ms  0x2414 fd:0x7feb75491430
 10020 ms  0x2414 PR_Close()
 10020 ms  0x2414 fd:0x7feb75491430
 10020 ms  0x2414 PR_Close()
 10020 ms  0x2414 fd:0x7feb75491430
 10021 ms  0x2414 PR_Close()
 10021 ms  0x2414 fd:0x7feb75491430
 10022 ms  0x2414 PR_Close()
 10022 ms  0x2414 fd:0x7feb75491430
 10022 ms  0x2414 PR_Close()
 10022 ms  0x2414 fd:0x7feb75491430
 10034 ms  0x2414 PR_Close()
 10034 ms  0x2414 fd:0x7feb75491430
 10039 ms  0x2414 PR_Close()
 10039 ms  0x2414 fd:0x7feb75491430
 10094 ms  0x2414 PR_Close()
 10094 ms  0x2414 fd:0x7feb75491430
           /* TID 0x240c */
 10211 ms  0x240c PK11_Encrypt()
 10211 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
 10349 ms  0x2414 PR_Close()
 10349 ms  0x2414 fd:0x7feb89571970
           /* TID 0x240c */
 10349 ms  0x240c PK11_Encrypt()
 10349 ms  0x240c symkey:0x7feb864ea280
 10358 ms  0x240c PK11_Encrypt()
 10358 ms  0x240c symkey:0x7feb87b99680
 10372 ms  0x240c PK11_Encrypt()
 10372 ms  0x240c symkey:0x7feb8788b680
           /* TID 0x2414 */
 10447 ms  0x2414 PR_Close()
 10447 ms  0x2414 fd:0x7feb75491430
           /* TID 0x240c */
 10488 ms  0x240c SSL_ImportFD()
 10488 ms  0x240c ret:0x7feb895b1070
 10488 ms  0x240c SSL_AuthCertificateHook()
 10488 ms  0x240c fd:0x7feb895b1070
 10489 ms  0x240c ret:0x0
 10489 ms  0x240c PR_Connect()
 10489 ms  0x240c fd:0x7feb895b1070
 10559 ms  0x240c PK11_Encrypt()
 10559 ms  0x240c symkey:0x7feb89555800
 10562 ms  0x240c PK11_Encrypt()
 10562 ms  0x240c symkey:0x7feb8788ab00
 10567 ms  0x240c PK11_Encrypt()
 10567 ms  0x240c symkey:0x7feb89575b80
 10568 ms  0x240c PK11_Encrypt()
 10568 ms  0x240c symkey:0x7feb89575b80
 10578 ms  0x240c PK11_Encrypt()
 10578 ms  0x240c symkey:0x7feb75423600
           /* TID 0x2414 */
 10605 ms  0x2414 PR_Close()
 10605 ms  0x2414 fd:0x7feb75491430
           /* TID 0x240c */
 10606 ms  0x240c PK11_Encrypt()
 10606 ms  0x240c symkey:0x7feb89575b80
 10625 ms  0x240c SECKEY_CreateECPrivateKey()
 10625 ms  0x240c cx:0x7feb933d0988
 10625 ms     | 0x240c EC_ValidatePublicKey()
 10625 ms     | 0x240c ret:0x0
 10625 ms  0x240c ret:0x7feb8f4cf020::7feb8f4cf020  f0 06 7c 87                                      ..|.
 10625 ms  0x240c SECKEY_CreateECPrivateKey()
 10625 ms  0x240c cx:0x7feb933d0988
 10626 ms     | 0x240c EC_ValidatePublicKey()
 10627 ms     | 0x240c ret:0x0
 10627 ms  0x240c ret:0x7feb904e3820::7feb904e3820  80 cd 7c 87                                      ..|.
           /* TID 0x2414 */
 10635 ms  0x2414 PR_Close()
 10635 ms  0x2414 fd:0x7feb89571cd0
 10642 ms  0x2414 PR_Close()
 10642 ms  0x2414 fd:0x7feb87e33430
           /* TID 0x240c */
 10646 ms  0x240c PK11_Encrypt()
 10646 ms  0x240c symkey:0x7feb864ea280
 10704 ms  0x240c PK11_Encrypt()
 10704 ms  0x240c symkey:0x7feb89555800
           /* TID 0x2414 */
 10731 ms  0x2414 PR_Close()
 10731 ms  0x2414 fd:0x7feb8c37f940
 10737 ms  0x2414 PR_Close()
 10737 ms  0x2414 fd:0x7feb8c37fb80
 10742 ms  0x2414 PR_Close()
 10742 ms  0x2414 fd:0x7feb8c427130
 10757 ms  0x2414 PR_Close()
 10757 ms  0x2414 fd:0x7feb895b1100
           /* TID 0x240c */
 10760 ms  0x240c PK11_DeriveWithFlags()
 10760 ms  0x240c basekey:0x7feb87b98600
 10760 ms     | 0x240c PK11_DeriveWithTemplate()
 10760 ms  0x240c ret:0x7feb89587d00
 10760 ms  0x240c PK11_Derive()
 10760 ms  0x240c basekey:0x7feb89587d00
 10760 ms     | 0x240c PK11_DeriveWithTemplate()
 10760 ms  0x240c ret:0x7feb8c983500
 10806 ms  0x240c PR_Connect()
 10806 ms  0x240c fd:0x7feb8c4279a0
 10813 ms  0x240c PK11_Encrypt()
 10813 ms  0x240c symkey:0x7feb89575b80
 10814 ms  0x240c PK11_Encrypt()
 10814 ms  0x240c symkey:0x7feb89575b80
 10814 ms  0x240c SSL_ImportFD()
 10814 ms  0x240c ret:0x7feb8c4df790
 10814 ms  0x240c SSL_AuthCertificateHook()
 10814 ms  0x240c fd:0x7feb8c4df790
 10814 ms  0x240c ret:0x0
 10814 ms  0x240c PR_Connect()
 10814 ms  0x240c fd:0x7feb8c4df790
 10814 ms  0x240c SSL_ImportFD()
 10814 ms  0x240c ret:0x7feb8c460a60
 10814 ms  0x240c SSL_AuthCertificateHook()
 10814 ms  0x240c fd:0x7feb8c460a60
 10814 ms  0x240c ret:0x0
 10814 ms  0x240c PR_Connect()
 10814 ms  0x240c fd:0x7feb8c460a60
 10819 ms  0x240c PK11_Encrypt()
 10819 ms  0x240c symkey:0x7feb8788ab00
 10845 ms  0x240c SSL_ImportFD()
 10845 ms  0x240c ret:0x7feb8c460df0
 10845 ms  0x240c SSL_AuthCertificateHook()
 10845 ms  0x240c fd:0x7feb8c460df0
 10845 ms  0x240c ret:0x0
 10845 ms  0x240c PR_Connect()
 10845 ms  0x240c fd:0x7feb8c460df0
 10851 ms  0x240c PK11_Encrypt()
 10851 ms  0x240c symkey:0x7feb89575b80
 10862 ms  0x240c SECKEY_CreateECPrivateKey()
 10862 ms  0x240c cx:0x7feb74e063e8
 10862 ms     | 0x240c EC_ValidatePublicKey()
 10862 ms     | 0x240c ret:0x0
 10862 ms  0x240c ret:0x7feb90599820::7feb90599820  00 7b b2 87                                      .{..
 10862 ms  0x240c SECKEY_CreateECPrivateKey()
 10862 ms  0x240c cx:0x7feb74e063e8
 10863 ms     | 0x240c EC_ValidatePublicKey()
 10865 ms     | 0x240c ret:0x0
 10865 ms  0x240c ret:0x7feb9059b820::7feb9059b820  80 7d b2 87                                      .}..
 10868 ms  0x240c SECKEY_CreateECPrivateKey()
 10868 ms  0x240c cx:0x7feb74e06588
 10869 ms     | 0x240c EC_ValidatePublicKey()
 10869 ms     | 0x240c ret:0x0
 10869 ms  0x240c ret:0x7feb90e56820::7feb90e56820  60 10 b5 87                                      `...
 10869 ms  0x240c SECKEY_CreateECPrivateKey()
 10869 ms  0x240c cx:0x7feb74e06588
 10869 ms     | 0x240c EC_ValidatePublicKey()
 10871 ms     | 0x240c ret:0x0
 10871 ms  0x240c ret:0x7feb90f05820::7feb90f05820  90 12 b5 87                                      ....
 10872 ms  0x240c SECKEY_CreateECPrivateKey()
 10872 ms  0x240c cx:0x7feb74e06728
 10872 ms     | 0x240c EC_ValidatePublicKey()
 10872 ms     | 0x240c ret:0x0
 10872 ms  0x240c ret:0x7feb90f0c820::7feb90f0c820  d0 13 b5 87                                      ....
 10872 ms  0x240c SECKEY_CreateECPrivateKey()
 10872 ms  0x240c cx:0x7feb74e06728
 10873 ms     | 0x240c EC_ValidatePublicKey()
 10874 ms     | 0x240c ret:0x0
 10874 ms  0x240c ret:0x7feb90f12020::7feb90f12020  b0 15 b5 87                                      ....
           /* TID 0x2414 */
 10894 ms  0x2414 PR_Close()
 10894 ms  0x2414 fd:0x7feb8c427a30
           /* TID 0x246a */
 10894 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10894 ms  0x246a ret:0x0
           /* TID 0x240c */
 10902 ms  SECKEY_ECParamsToKeySize()
 10902 ms  0x240c ret:0xff
 10902 ms  0x240c SECKEY_CreateECPrivateKey()
 10902 ms  0x240c cx:0x7feb74e06728
 10903 ms     | 0x240c EC_ValidatePublicKey()
 10903 ms     | 0x240c ret:0x0
 10903 ms  0x240c ret:0x7feb90f1d020::7feb90f1d020  00 16 b5 87                                      ....
 10903 ms  0x240c PK11_PubDeriveWithKDF()
 10903 ms  0x240c seckey:0x7feb90f1d020
 10903 ms     | 0x240c EC_ValidatePublicKey()
 10903 ms     | 0x240c ret:0x0
 10903 ms  0x240c ret:0x7feb87b98600
 10903 ms  0x240c PK11_DeriveWithFlags()
 10903 ms  0x240c basekey:0x7feb87b98600
 10903 ms     | 0x240c PK11_DeriveWithTemplate()
 10903 ms  0x240c ret:0x7feb8c9b8d80
 10903 ms  0x240c PK11_Derive()
 10903 ms  0x240c basekey:0x7feb8c9b8d80
 10903 ms     | 0x240c PK11_DeriveWithTemplate()
 10903 ms  0x240c ret:0x7feb8c9b8f80
 10903 ms  0x240c SECKEY_DestroyPrivateKey()
 10903 ms  0x240c privk:0x7feb90f1d020::7feb90f1d020  00 16 b5 87                                      ....
 10904 ms  0x240c privk:0x7feb90f1d020::7feb90f1d020  e5 e5 e5 e5                                      ....
 10904 ms  0x240c PK11_Encrypt()
 10904 ms  0x240c symkey:0x7feb8f35ce80
 10904 ms  0x240c SSL_AuthCertificateComplete()
 10904 ms  0x240c fd:0x7feb895b1070
 10904 ms  0x240c err:0x0
           /* TID 0x24ad */
 10905 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10905 ms  0x24ad ret:0x0
 10905 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10906 ms  0x24ad ret:0x0
           /* TID 0x240c */
 10906 ms  0x240c SSL_AuthCertificateComplete()
 10906 ms  0x240c fd:0x7feb8c460df0
 10906 ms  0x240c err:0x0
 10906 ms  0x240c PK11_Encrypt()
 10906 ms  0x240c symkey:0x7feb8f35ce80
 10913 ms  0x240c PK11_Derive()
 10913 ms  0x240c basekey:0x7feb87b98600
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8c768100
 10913 ms  0x240c PK11_PubDeriveWithKDF()
 10913 ms  0x240c seckey:0x7feb90599820
 10913 ms     | 0x240c EC_ValidatePublicKey()
 10913 ms     | 0x240c ret:0x0
 10913 ms  0x240c ret:0x7feb87b98600
 10913 ms  SECKEY_ECParamsToKeySize()
 10913 ms  0x240c ret:0xff
 10913 ms  0x240c PK11_DeriveWithFlags()
 10913 ms  0x240c basekey:0x7feb8c768100
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8f38c780
 10913 ms  0x240c PK11_Derive()
 10913 ms  0x240c basekey:0x7feb87b98600
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8f38c880
 10913 ms  0x240c PK11_DeriveWithFlags()
 10913 ms  0x240c basekey:0x7feb8f38c880
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8c768100
 10913 ms  0x240c PK11_DeriveWithFlags()
 10913 ms  0x240c basekey:0x7feb8f38c880
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb87b98600
 10913 ms  0x240c PK11_DeriveWithFlags()
 10913 ms  0x240c basekey:0x7feb8f38c880
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8f38c780
 10913 ms  0x240c PK11_Derive()
 10913 ms  0x240c basekey:0x7feb8f38ca00
 10913 ms     | 0x240c PK11_DeriveWithTemplate()
 10913 ms  0x240c ret:0x7feb8f38d280
 10913 ms  0x240c PK11_DeriveWithFlags()
 10913 ms  0x240c basekey:0x7feb87b98600
 10914 ms     | 0x240c PK11_DeriveWithTemplate()
 10914 ms  0x240c ret:0x7feb8f38c880
 10914 ms  0x240c PK11_DeriveWithFlags()
 10914 ms  0x240c basekey:0x7feb87b98600
 10914 ms     | 0x240c PK11_DeriveWithTemplate()
 10914 ms  0x240c ret:0x7feb8f38c780
 10915 ms  SECKEY_ECParamsToKeySize()
 10915 ms  0x240c ret:0x100
 10915 ms  SECKEY_ECParamsToBasePointOrderLen()
 10915 ms  0x240c ret:0x100
 10915 ms  SECKEY_ECParamsToBasePointOrderLen()
 10915 ms  0x240c ret:0x100
 10915 ms  0x240c EC_ValidatePublicKey()
 10917 ms  0x240c ret:0x0
 10924 ms  0x240c PK11_DeriveWithFlags()
 10924 ms  0x240c basekey:0x7feb87b98600
 10925 ms     | 0x240c PK11_DeriveWithTemplate()
 10925 ms  0x240c ret:0x7feb8f38c780
 10926 ms  0x240c SECKEY_DestroyPrivateKey()
 10926 ms  0x240c privk:0x7feb904e3820::7feb904e3820  80 cd 7c 87                                      ..|.
 10926 ms  0x240c privk:0x7feb904e3820::7feb904e3820  e5 e5 e5 e5                                      ....
 10928 ms  0x240c SECKEY_DestroyPrivateKey()
 10928 ms  0x240c privk:0x7feb8f4cf020::7feb8f4cf020  f0 06 7c 87                                      ..|.
 10928 ms  0x240c privk:0x7feb8f4cf020::7feb8f4cf020  e5 e5 e5 e5                                      ....
 10929 ms  0x240c PK11_Derive()
 10929 ms  0x240c basekey:0x7feb8f38c780
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10929 ms  0x240c ret:0x7feb8f38ca00
 10929 ms  0x240c PK11_PubDeriveWithKDF()
 10929 ms  0x240c seckey:0x7feb90e56820
 10929 ms     | 0x240c EC_ValidatePublicKey()
 10929 ms     | 0x240c ret:0x0
 10929 ms  0x240c ret:0x7feb8f38c780
 10929 ms  SECKEY_ECParamsToKeySize()
 10929 ms  0x240c ret:0xff
 10929 ms  0x240c PK11_DeriveWithFlags()
 10929 ms  0x240c basekey:0x7feb8f38ca00
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10929 ms  0x240c ret:0x7feb8f454b80
 10929 ms  0x240c PK11_Derive()
 10929 ms  0x240c basekey:0x7feb8f38c780
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10929 ms  0x240c ret:0x7feb8f48e600
 10929 ms  0x240c PK11_DeriveWithFlags()
 10929 ms  0x240c basekey:0x7feb8f48e600
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10929 ms  0x240c ret:0x7feb8f38ca00
 10929 ms  0x240c PK11_DeriveWithFlags()
 10929 ms  0x240c basekey:0x7feb8f48e600
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10929 ms  0x240c ret:0x7feb8f38c780
 10929 ms  0x240c PK11_DeriveWithFlags()
 10929 ms  0x240c basekey:0x7feb8f48e600
 10929 ms     | 0x240c PK11_DeriveWithTemplate()
 10930 ms  0x240c ret:0x7feb8f454b80
 10930 ms  0x240c PK11_Derive()
 10930 ms  0x240c basekey:0x7feb8f48e680
 10930 ms     | 0x240c PK11_DeriveWithTemplate()
 10930 ms  0x240c ret:0x7feb8f48e800
 10930 ms  0x240c PK11_DeriveWithFlags()
 10930 ms  0x240c basekey:0x7feb8f38c780
 10930 ms     | 0x240c PK11_DeriveWithTemplate()
 10930 ms  0x240c ret:0x7feb8f48e600
 10930 ms  0x240c PK11_DeriveWithFlags()
 10930 ms  0x240c basekey:0x7feb8f38c780
 10930 ms     | 0x240c PK11_DeriveWithTemplate()
 10930 ms  0x240c ret:0x7feb8f454b80
 10932 ms  SECKEY_ECParamsToKeySize()
 10932 ms  0x240c ret:0x100
 10932 ms  SECKEY_ECParamsToBasePointOrderLen()
 10932 ms  0x240c ret:0x100
 10932 ms  SECKEY_ECParamsToBasePointOrderLen()
 10932 ms  0x240c ret:0x100
 10932 ms  0x240c EC_ValidatePublicKey()
 10935 ms  0x240c ret:0x0
 10937 ms  0x240c PK11_DeriveWithFlags()
 10937 ms  0x240c basekey:0x7feb8f38c780
 10937 ms     | 0x240c PK11_DeriveWithTemplate()
 10937 ms  0x240c ret:0x7feb8f454b80
 10937 ms  0x240c SECKEY_DestroyPrivateKey()
 10937 ms  0x240c privk:0x7feb90f12020::7feb90f12020  b0 15 b5 87                                      ....
 10937 ms  0x240c privk:0x7feb90f12020::7feb90f12020  e5 e5 e5 e5                                      ....
 10937 ms  0x240c SECKEY_DestroyPrivateKey()
 10937 ms  0x240c privk:0x7feb90f0c820::7feb90f0c820  d0 13 b5 87                                      ....
 10937 ms  0x240c privk:0x7feb90f0c820::7feb90f0c820  e5 e5 e5 e5                                      ....
 10938 ms  0x240c SSL_ImportFD()
 10938 ms  0x240c ret:0x7feb8c4fd310
 10938 ms  0x240c SSL_AuthCertificateHook()
 10938 ms  0x240c fd:0x7feb8c4fd310
 10938 ms  0x240c ret:0x0
 10938 ms  0x240c PR_Connect()
 10938 ms  0x240c fd:0x7feb8c4fd310
 10938 ms  0x240c PR_Connect()
 10938 ms  0x240c fd:0x7feb8c4fd5b0
 10949 ms  0x240c SSL_ImportFD()
 10949 ms  0x240c ret:0x7feb8c37f700
 10949 ms  0x240c SSL_AuthCertificateHook()
 10949 ms  0x240c fd:0x7feb8c37f700
 10949 ms  0x240c ret:0x0
 10949 ms  0x240c PR_Connect()
 10949 ms  0x240c fd:0x7feb8c37f700
 10963 ms  0x240c SECKEY_CreateECPrivateKey()
 10963 ms  0x240c cx:0x7feb74e06da8
 10964 ms     | 0x240c EC_ValidatePublicKey()
 10964 ms     | 0x240c ret:0x0
 10964 ms  0x240c ret:0x7feb90f08020::7feb90f08020  60 15 b5 87                                      `...
 10964 ms  0x240c SECKEY_CreateECPrivateKey()
 10964 ms  0x240c cx:0x7feb74e06da8
 10965 ms     | 0x240c EC_ValidatePublicKey()
 10966 ms     | 0x240c ret:0x0
 10966 ms  0x240c ret:0x7feb90f0c820::7feb90f0c820  10 75 eb 87                                      .u..
           /* TID 0x2414 */
 10996 ms  0x2414 PR_Close()
 10996 ms  0x2414 fd:0x7feb8c427d30
           /* TID 0x240c */
 10997 ms  0x240c PK11_Derive()
 10997 ms  0x240c basekey:0x7feb8f48e680
 10997 ms     | 0x240c PK11_DeriveWithTemplate()
 10997 ms  0x240c ret:0x7feb8f454b80
 10997 ms  0x240c PK11_Encrypt()
 10997 ms  0x240c symkey:0x7feb90329700
 10998 ms  0x240c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10998 ms  0x240c ret:0x0
 10998 ms  0x240c _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 10998 ms  0x240c ret:0x0
 10998 ms  0x240c SECKEY_DestroyPrivateKey()
 10998 ms  0x240c privk:0x7feb90f0c820::7feb90f0c820  10 75 eb 87                                      .u..
 10998 ms  0x240c privk:0x7feb90f0c820::7feb90f0c820  e5 e5 e5 e5                                      ....
 10998 ms  0x240c SECKEY_DestroyPrivateKey()
 10998 ms  0x240c privk:0x7feb90f08020::7feb90f08020  60 15 b5 87                                      `...
 10998 ms  0x240c privk:0x7feb90f08020::7feb90f08020  e5 e5 e5 e5                                      ....
 10999 ms  0x240c PR_Close()
 10999 ms  0x240c fd:0x7feb8c4fd310
 10999 ms     | 0x240c PK11_Encrypt()
 10999 ms     | 0x240c symkey:0x7feb90329700
           /* TID 0x2414 */
 11013 ms  0x2414 PR_Close()
 11013 ms  0x2414 fd:0x7feb8c3f8f70
 11066 ms  0x2414 PR_Close()
 11066 ms  0x2414 fd:0x7feb864edb20
 11071 ms  0x2414 PR_Close()
 11071 ms  0x2414 fd:0x7feb864edb20
           /* TID 0x24aa */
 11071 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11071 ms  0x24aa ret:0x0
           /* TID 0x240c */
 11086 ms  0x240c PR_Close()
 11086 ms  0x240c fd:0x7feb754d0250
 11086 ms     | 0x240c PK11_Encrypt()
 11086 ms     | 0x240c symkey:0x7feb754c2000
 11094 ms  0x240c SSL_AuthCertificateComplete()
 11094 ms  0x240c fd:0x7feb8c4df790
 11094 ms  0x240c err:0x0
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb8f38d280
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb754c1e80
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb8f38d280
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb754c1e00
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb8f38d280
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb8f454b80
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb8c768100
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb8f48e680
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb8c768100
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb754c1f80
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb754c1e00
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11094 ms     | 0x240c ret:0x7feb754c1f80
 11094 ms     | 0x240c PK11_DeriveWithFlags()
 11094 ms     | 0x240c basekey:0x7feb754c1e00
 11094 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11095 ms     | 0x240c ret:0x7feb754c2080
 11095 ms     | 0x240c PK11_DeriveWithFlags()
 11095 ms     | 0x240c basekey:0x7feb8c768100
 11095 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11095 ms     | 0x240c ret:0x7feb8f38c880
 11095 ms     | 0x240c PK11_Encrypt()
 11095 ms     | 0x240c symkey:0x7feb8f48e680
 11095 ms     | 0x240c PK11_DeriveWithFlags()
 11095 ms     | 0x240c basekey:0x7feb754c1e80
 11095 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11095 ms     | 0x240c ret:0x7feb8f38c880
 11095 ms     | 0x240c PK11_DeriveWithFlags()
 11095 ms     | 0x240c basekey:0x7feb754c1e80
 11095 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11095 ms     | 0x240c ret:0x7feb754c2080
 11095 ms     | 0x240c PK11_DeriveWithFlags()
 11095 ms     | 0x240c basekey:0x7feb8f38d280
 11095 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11095 ms     | 0x240c ret:0x7feb8f48e680
 11095 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11095 ms     | 0x240c privk:0x7feb9059b820::7feb9059b820  80 7d b2 87                                      .}..
 11095 ms     | 0x240c privk:0x7feb9059b820::7feb9059b820  e5 e5 e5 e5                                      ....
 11096 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11096 ms     | 0x240c privk:0x7feb90599820::7feb90599820  00 7b b2 87                                      .{..
 11096 ms     | 0x240c privk:0x7feb90599820::7feb90599820  e5 e5 e5 e5                                      ....
 11096 ms  0x240c PK11_Encrypt()
 11096 ms  0x240c symkey:0x7feb8f38c880
 11097 ms  0x240c PK11_Encrypt()
 11097 ms  0x240c symkey:0x7feb8f38c880
           /* TID 0x2414 */
 11120 ms  0x2414 PR_Close()
 11120 ms  0x2414 fd:0x7feb754d02b0
           /* TID 0x246a */
 11120 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11120 ms  0x246a ret:0x0
           /* TID 0x240c */
 11120 ms  0x240c SSL_AuthCertificateComplete()
 11120 ms  0x240c fd:0x7feb8c460a60
 11120 ms  0x240c err:0x0
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f48e800
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb87b98600
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f48e800
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb8c768100
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f48e800
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb8f38d280
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f38ca00
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb754c2080
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f38ca00
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb754c1f00
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8c768100
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb754c1f00
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8c768100
 11120 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11120 ms     | 0x240c ret:0x7feb754c2000
 11120 ms     | 0x240c PK11_DeriveWithFlags()
 11120 ms     | 0x240c basekey:0x7feb8f38ca00
 11121 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11121 ms     | 0x240c ret:0x7feb8f48e600
 11121 ms     | 0x240c PK11_Encrypt()
 11121 ms     | 0x240c symkey:0x7feb754c2080
 11121 ms     | 0x240c PK11_DeriveWithFlags()
 11121 ms     | 0x240c basekey:0x7feb87b98600
 11121 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11121 ms     | 0x240c ret:0x7feb8f48e600
 11121 ms     | 0x240c PK11_DeriveWithFlags()
 11121 ms     | 0x240c basekey:0x7feb87b98600
 11121 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11121 ms     | 0x240c ret:0x7feb754c2000
 11121 ms     | 0x240c PK11_DeriveWithFlags()
 11121 ms     | 0x240c basekey:0x7feb8f48e800
 11121 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11121 ms     | 0x240c ret:0x7feb754c2080
 11121 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11121 ms     | 0x240c privk:0x7feb90f05820::7feb90f05820  90 12 b5 87                                      ....
 11121 ms     | 0x240c privk:0x7feb90f05820::7feb90f05820  e5 e5 e5 e5                                      ....
 11121 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11121 ms     | 0x240c privk:0x7feb90e56820::7feb90e56820  60 10 b5 87                                      `...
 11121 ms     | 0x240c privk:0x7feb90e56820::7feb90e56820  e5 e5 e5 e5                                      ....
 11122 ms  0x240c PK11_Encrypt()
 11122 ms  0x240c symkey:0x7feb8f48e600
 11122 ms  0x240c PK11_Encrypt()
 11122 ms  0x240c symkey:0x7feb8f38c880
 11139 ms  0x240c SECKEY_CreateECPrivateKey()
 11139 ms  0x240c cx:0x7feb74e06f48
 11140 ms     | 0x240c EC_ValidatePublicKey()
 11140 ms     | 0x240c ret:0x0
 11140 ms  0x240c ret:0x7feb90596020::7feb90596020  e0 cc 7c 87                                      ..|.
 11140 ms  0x240c SECKEY_CreateECPrivateKey()
 11140 ms  0x240c cx:0x7feb74e06f48
 11140 ms     | 0x240c EC_ValidatePublicKey()
 11142 ms     | 0x240c ret:0x0
 11142 ms  0x240c ret:0x7feb9059a020::7feb9059a020  30 73 b2 87                                      0s..
 11158 ms  0x240c SSL_ImportFD()
 11158 ms  0x240c ret:0x7feb8c4dfe20
 11158 ms  0x240c SSL_AuthCertificateHook()
 11158 ms  0x240c fd:0x7feb8c4dfe20
 11158 ms  0x240c ret:0x0
 11158 ms  0x240c PR_Connect()
 11158 ms  0x240c fd:0x7feb8c4dfe20
 11169 ms  0x240c PK11_DeriveWithFlags()
 11169 ms  0x240c basekey:0x7feb754c2080
 11169 ms     | 0x240c PK11_DeriveWithTemplate()
 11169 ms  0x240c ret:0x7feb8f38c780
 11169 ms  0x240c PK11_DeriveWithFlags()
 11169 ms  0x240c basekey:0x7feb754c2080
 11169 ms     | 0x240c PK11_DeriveWithTemplate()
 11169 ms  0x240c ret:0x7feb8f38c780
 11169 ms  0x240c PR_Close()
 11169 ms  0x240c fd:0x7feb8c460a60
 11169 ms     | 0x240c PK11_Encrypt()
 11169 ms     | 0x240c symkey:0x7feb8f48e600
 11298 ms  0x240c SECKEY_CreateECPrivateKey()
 11298 ms  0x240c cx:0x7feb74e06da8
 11299 ms     | 0x240c EC_ValidatePublicKey()
 11299 ms     | 0x240c ret:0x0
 11299 ms  0x240c ret:0x7feb87e47020::7feb87e47020  10 f5 81 87                                      ....
 11299 ms  0x240c SECKEY_CreateECPrivateKey()
 11299 ms  0x240c cx:0x7feb74e06da8
 11301 ms     | 0x240c EC_ValidatePublicKey()
 11306 ms     | 0x240c ret:0x0
 11306 ms  0x240c ret:0x7feb87e52820::7feb87e52820  f0 f1 81 87                                      ....
 11336 ms  SECKEY_ECParamsToKeySize()
 11336 ms  0x240c ret:0x100
 11336 ms  0x240c SECKEY_CreateECPrivateKey()
 11336 ms  0x240c cx:0x7feb74e06f48
 11337 ms     | 0x240c EC_ValidatePublicKey()
 11338 ms     | 0x240c ret:0x0
 11338 ms  0x240c ret:0x7feb90f12020::7feb90f12020  60 70 b2 87                                      `p..
 11338 ms  0x240c PK11_PubDeriveWithKDF()
 11338 ms  0x240c seckey:0x7feb90f12020
 11338 ms     | 0x240c EC_ValidatePublicKey()
 11340 ms     | 0x240c ret:0x0
 11341 ms  0x240c ret:0x7feb8f38d280
 11341 ms  0x240c PK11_DeriveWithFlags()
 11341 ms  0x240c basekey:0x7feb8f38d280
 11341 ms     | 0x240c PK11_DeriveWithTemplate()
 11341 ms  0x240c ret:0x7feb8c768100
 11341 ms  0x240c PK11_Derive()
 11341 ms  0x240c basekey:0x7feb8c768100
 11341 ms     | 0x240c PK11_DeriveWithTemplate()
 11342 ms  0x240c ret:0x7feb87b98600
 11342 ms  0x240c SECKEY_DestroyPrivateKey()
 11342 ms  0x240c privk:0x7feb90f12020::7feb90f12020  60 70 b2 87                                      `p..
 11342 ms  0x240c privk:0x7feb90f12020::7feb90f12020  e5 e5 e5 e5                                      ....
 11342 ms  0x240c PK11_Encrypt()
 11342 ms  0x240c symkey:0x7feb901cee00
 11385 ms  0x240c PK11_Encrypt()
 11385 ms  0x240c symkey:0x7feb87b99680
           /* TID 0x2414 */
 11391 ms  0x2414 PR_Close()
 11391 ms  0x2414 fd:0x7feb8637c160
           /* TID 0x24ad */
 11391 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11391 ms  0x24ad ret:0x0
           /* TID 0x240c */
 11391 ms  0x240c PK11_DeriveWithFlags()
 11391 ms  0x240c basekey:0x7feb8f48e680
 11391 ms     | 0x240c PK11_DeriveWithTemplate()
 11391 ms  0x240c ret:0x7feb8f38d280
 11391 ms  0x240c PK11_DeriveWithFlags()
 11391 ms  0x240c basekey:0x7feb8f48e680
 11391 ms     | 0x240c PK11_DeriveWithTemplate()
 11391 ms  0x240c ret:0x7feb8f38d280
 11391 ms  0x240c PK11_Encrypt()
 11391 ms  0x240c symkey:0x7feb8f38c880
 11391 ms  0x240c SSL_AuthCertificateComplete()
 11391 ms  0x240c fd:0x7feb8c37f700
 11391 ms  0x240c err:0x0
 11392 ms  0x240c PK11_Encrypt()
 11392 ms  0x240c symkey:0x7feb901cee00
 11394 ms  0x240c PK11_Encrypt()
 11394 ms  0x240c symkey:0x7feb8f38c880
 11447 ms  SECKEY_ECParamsToKeySize()
 11447 ms  0x240c ret:0x100
 11447 ms  0x240c SECKEY_CreateECPrivateKey()
 11447 ms  0x240c cx:0x7feb74e06da8
 11448 ms     | 0x240c EC_ValidatePublicKey()
 11453 ms     | 0x240c ret:0x0
 11457 ms  0x240c ret:0x7feb90f5e820::7feb90f5e820  40 12 b5 87                                      @...
 11458 ms  0x240c PK11_PubDeriveWithKDF()
 11458 ms  0x240c seckey:0x7feb90f5e820
 11458 ms     | 0x240c EC_ValidatePublicKey()
 11460 ms     | 0x240c ret:0x0
 11465 ms  0x240c ret:0x7feb8f38d280
 11465 ms  0x240c PK11_DeriveWithFlags()
 11465 ms  0x240c basekey:0x7feb8f38d280
 11465 ms     | 0x240c PK11_DeriveWithTemplate()
 11465 ms  0x240c ret:0x7feb754c2080
 11465 ms  0x240c PK11_Derive()
 11465 ms  0x240c basekey:0x7feb754c2080
 11465 ms     | 0x240c PK11_DeriveWithTemplate()
 11465 ms  0x240c ret:0x7feb754c1f00
 11465 ms  0x240c SECKEY_DestroyPrivateKey()
 11465 ms  0x240c privk:0x7feb90f5e820::7feb90f5e820  40 12 b5 87                                      @...
 11465 ms  0x240c privk:0x7feb90f5e820::7feb90f5e820  e5 e5 e5 e5                                      ....
 11465 ms  0x240c PK11_Encrypt()
 11465 ms  0x240c symkey:0x7feb754c1c00
 11500 ms  0x240c PR_Connect()
 11500 ms  0x240c fd:0x7feb753505b0
 11533 ms  0x240c SECKEY_DestroyPrivateKey()
 11533 ms  0x240c privk:0x7feb9059a020::7feb9059a020  30 73 b2 87                                      0s..
 11533 ms  0x240c privk:0x7feb9059a020::7feb9059a020  e5 e5 e5 e5                                      ....
 11533 ms  0x240c SECKEY_DestroyPrivateKey()
 11533 ms  0x240c privk:0x7feb90596020::7feb90596020  e0 cc 7c 87                                      ..|.
 11533 ms  0x240c privk:0x7feb90596020::7feb90596020  e5 e5 e5 e5                                      ....
 11719 ms  0x240c SSL_ImportFD()
 11719 ms  0x240c ret:0x7feb75491d90
 11719 ms  0x240c SSL_AuthCertificateHook()
 11719 ms  0x240c fd:0x7feb75491d90
 11720 ms  0x240c ret:0x0
 11720 ms  0x240c PR_Connect()
 11720 ms  0x240c fd:0x7feb75491d90
 11720 ms  0x240c SSL_ImportFD()
 11720 ms  0x240c ret:0x7feb75491460
 11720 ms  0x240c SSL_AuthCertificateHook()
 11720 ms  0x240c fd:0x7feb75491460
 11720 ms  0x240c ret:0x0
 11720 ms  0x240c PR_Connect()
 11720 ms  0x240c fd:0x7feb75491460
 11723 ms  0x240c PR_Close()
 11723 ms  0x240c fd:0x7feb8c37f700
 11723 ms     | 0x240c PK11_Encrypt()
 11723 ms     | 0x240c symkey:0x7feb901cee00
           /* TID 0x2414 */
 11724 ms  0x2414 PR_Close()
 11724 ms  0x2414 fd:0x7feb750a1e20
           /* TID 0x240c */
 11757 ms  0x240c SECKEY_CreateECPrivateKey()
 11757 ms  0x240c cx:0x7feb74e06c08
 11758 ms     | 0x240c EC_ValidatePublicKey()
 11758 ms     | 0x240c ret:0x0
 11758 ms  0x240c ret:0x7feb74e19020::7feb74e19020  00 0b 7c 87                                      ..|.
 11758 ms  0x240c SECKEY_CreateECPrivateKey()
 11758 ms  0x240c cx:0x7feb74e06c08
 11759 ms     | 0x240c EC_ValidatePublicKey()
 11760 ms     | 0x240c ret:0x0
 11760 ms  0x240c ret:0x7feb74e25020::7feb74e25020  30 fd 81 87                                      0...
 11761 ms  0x240c SECKEY_CreateECPrivateKey()
 11761 ms  0x240c cx:0x7feb74e07428
 11761 ms     | 0x240c EC_ValidatePublicKey()
 11761 ms     | 0x240c ret:0x0
 11761 ms  0x240c ret:0x7feb74e30020::7feb74e30020  c0 09 89 87                                      ....
 11762 ms  0x240c SECKEY_CreateECPrivateKey()
 11762 ms  0x240c cx:0x7feb74e07428
 11762 ms     | 0x240c EC_ValidatePublicKey()
 11764 ms     | 0x240c ret:0x0
 11764 ms  0x240c ret:0x7feb7502e820::7feb7502e820  30 73 b2 87                                      0s..
 11814 ms  0x240c PK11_Derive()
 11814 ms  0x240c basekey:0x7feb87b98600
 11814 ms     | 0x240c PK11_DeriveWithTemplate()
 11814 ms  0x240c ret:0x7feb8c768100
 11815 ms  0x240c PK11_PubDeriveWithKDF()
 11815 ms  0x240c seckey:0x7feb74e19020
 11815 ms     | 0x240c EC_ValidatePublicKey()
 11815 ms     | 0x240c ret:0x0
 11815 ms  0x240c ret:0x7feb87b98600
 11815 ms  SECKEY_ECParamsToKeySize()
 11815 ms  0x240c ret:0xff
 11815 ms  0x240c PK11_DeriveWithFlags()
 11815 ms  0x240c basekey:0x7feb8c768100
 11815 ms     | 0x240c PK11_DeriveWithTemplate()
 11815 ms  0x240c ret:0x7feb8f38d280
 11815 ms  0x240c PK11_Derive()
 11815 ms  0x240c basekey:0x7feb87b98600
 11815 ms     | 0x240c PK11_DeriveWithTemplate()
 11815 ms  0x240c ret:0x7feb8f48e600
 11816 ms  0x240c PK11_DeriveWithFlags()
 11816 ms  0x240c basekey:0x7feb8f48e600
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb8c768100
 11816 ms  0x240c PK11_DeriveWithFlags()
 11816 ms  0x240c basekey:0x7feb8f48e600
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb87b98600
 11816 ms  0x240c PK11_DeriveWithFlags()
 11816 ms  0x240c basekey:0x7feb8f48e600
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb8f38d280
 11816 ms  0x240c PK11_Derive()
 11816 ms  0x240c basekey:0x7feb8f38c780
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb8f38ca00
 11816 ms  0x240c PK11_DeriveWithFlags()
 11816 ms  0x240c basekey:0x7feb87b98600
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb8f48e600
 11816 ms  0x240c PK11_DeriveWithFlags()
 11816 ms  0x240c basekey:0x7feb87b98600
 11816 ms     | 0x240c PK11_DeriveWithTemplate()
 11816 ms  0x240c ret:0x7feb8f38d280
 11818 ms  SECKEY_ECParamsToKeySize()
 11818 ms  0x240c ret:0x100
 11818 ms  SECKEY_ECParamsToBasePointOrderLen()
 11818 ms  0x240c ret:0x100
 11818 ms  SECKEY_ECParamsToBasePointOrderLen()
 11818 ms  0x240c ret:0x100
 11818 ms  0x240c EC_ValidatePublicKey()
 11820 ms  0x240c ret:0x0
 11823 ms  0x240c PK11_DeriveWithFlags()
 11823 ms  0x240c basekey:0x7feb87b98600
 11823 ms     | 0x240c PK11_DeriveWithTemplate()
 11823 ms  0x240c ret:0x7feb8f38d280
 11823 ms  0x240c PK11_Derive()
 11823 ms  0x240c basekey:0x7feb8f38d280
 11823 ms     | 0x240c PK11_DeriveWithTemplate()
 11823 ms  0x240c ret:0x7feb8f38c780
 11823 ms  0x240c PK11_PubDeriveWithKDF()
 11823 ms  0x240c seckey:0x7feb74e30020
 11823 ms     | 0x240c EC_ValidatePublicKey()
 11823 ms     | 0x240c ret:0x0
 11824 ms  0x240c ret:0x7feb8f38d280
 11824 ms  SECKEY_ECParamsToKeySize()
 11824 ms  0x240c ret:0xff
 11824 ms  0x240c PK11_DeriveWithFlags()
 11824 ms  0x240c basekey:0x7feb8f38c780
 11824 ms     | 0x240c PK11_DeriveWithTemplate()
 11824 ms  0x240c ret:0x7feb8f48e800
 11824 ms  0x240c PK11_Derive()
 11824 ms  0x240c basekey:0x7feb8f38d280
 11824 ms     | 0x240c PK11_DeriveWithTemplate()
 11824 ms  0x240c ret:0x7feb754c2000
 11824 ms  0x240c PK11_DeriveWithFlags()
 11824 ms  0x240c basekey:0x7feb754c2000
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb8f38c780
 11825 ms  0x240c PK11_DeriveWithFlags()
 11825 ms  0x240c basekey:0x7feb754c2000
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb8f38d280
 11825 ms  0x240c PK11_DeriveWithFlags()
 11825 ms  0x240c basekey:0x7feb754c2000
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb8f48e800
 11825 ms  0x240c PK11_Derive()
 11825 ms  0x240c basekey:0x7feb90329780
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb90329700
 11825 ms  0x240c PK11_DeriveWithFlags()
 11825 ms  0x240c basekey:0x7feb8f38d280
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb754c2000
 11825 ms  0x240c PK11_DeriveWithFlags()
 11825 ms  0x240c basekey:0x7feb8f38d280
 11825 ms     | 0x240c PK11_DeriveWithTemplate()
 11825 ms  0x240c ret:0x7feb8f48e800
 11827 ms  SECKEY_ECParamsToKeySize()
 11827 ms  0x240c ret:0x100
 11827 ms  SECKEY_ECParamsToBasePointOrderLen()
 11827 ms  0x240c ret:0x100
 11827 ms  SECKEY_ECParamsToBasePointOrderLen()
 11827 ms  0x240c ret:0x100
 11827 ms  0x240c EC_ValidatePublicKey()
 11829 ms  0x240c ret:0x0
 11831 ms  0x240c PK11_DeriveWithFlags()
 11831 ms  0x240c basekey:0x7feb8f38d280
 11831 ms     | 0x240c PK11_DeriveWithTemplate()
 11831 ms  0x240c ret:0x7feb8f48e800
           /* TID 0x2414 */
 11886 ms  0x2414 PR_Close()
 11886 ms  0x2414 fd:0x7feb864ed0a0
           /* TID 0x24aa */
 11887 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11887 ms  0x24aa ret:0x0
 11887 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11887 ms  0x24aa ret:0x0
           /* TID 0x240c */
 11887 ms  0x240c SSL_AuthCertificateComplete()
 11887 ms  0x240c fd:0x7feb8c4dfe20
 11887 ms  0x240c err:0x0
 11887 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11887 ms     | 0x240c privk:0x7feb87e52820::7feb87e52820  f0 f1 81 87                                      ....
 11888 ms     | 0x240c privk:0x7feb87e52820::7feb87e52820  e5 e5 e5 e5                                      ....
 11888 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11888 ms     | 0x240c privk:0x7feb87e47020::7feb87e47020  10 f5 81 87                                      ....
 11888 ms     | 0x240c privk:0x7feb87e47020::7feb87e47020  e5 e5 e5 e5                                      ....
 11888 ms  0x240c PR_Close()
 11888 ms  0x240c fd:0x7feb753505b0
 11890 ms  0x240c PK11_Encrypt()
 11890 ms  0x240c symkey:0x7feb754c1c00
           /* TID 0x2414 */
 11967 ms  0x2414 PR_Close()
 11967 ms  0x2414 fd:0x7feb750a1ee0
           /* TID 0x246a */
 11968 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11968 ms  0x246a ret:0x0
           /* TID 0x240c */
 11968 ms  0x240c SSL_AuthCertificateComplete()
 11968 ms  0x240c fd:0x7feb75491d90
 11968 ms  0x240c err:0x0
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8f38ca00
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb8f48e800
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8f38ca00
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb90329780
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8f38ca00
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb90329600
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8c768100
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb901cee00
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8c768100
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb750a6c80
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb90329780
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb750a6c80
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb90329780
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb7512ff00
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8c768100
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11968 ms     | 0x240c ret:0x7feb8f48e600
 11968 ms     | 0x240c PK11_Encrypt()
 11968 ms     | 0x240c symkey:0x7feb901cee00
 11968 ms     | 0x240c PK11_DeriveWithFlags()
 11968 ms     | 0x240c basekey:0x7feb8f48e800
 11968 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11969 ms     | 0x240c ret:0x7feb8f48e600
 11969 ms     | 0x240c PK11_DeriveWithFlags()
 11969 ms     | 0x240c basekey:0x7feb8f48e800
 11969 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11969 ms     | 0x240c ret:0x7feb7512ff00
 11969 ms     | 0x240c PK11_DeriveWithFlags()
 11969 ms     | 0x240c basekey:0x7feb8f38ca00
 11969 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11969 ms     | 0x240c ret:0x7feb901cee00
 11969 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11969 ms     | 0x240c privk:0x7feb74e25020::7feb74e25020  30 fd 81 87                                      0...
 11969 ms     | 0x240c privk:0x7feb74e25020::7feb74e25020  e5 e5 e5 e5                                      ....
 11969 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11969 ms     | 0x240c privk:0x7feb74e19020::7feb74e19020  00 0b 7c 87                                      ..|.
 11969 ms     | 0x240c privk:0x7feb74e19020::7feb74e19020  e5 e5 e5 e5                                      ....
 11969 ms  0x240c PK11_Encrypt()
 11969 ms  0x240c symkey:0x7feb8f48e600
 11969 ms  0x240c PK11_Encrypt()
 11969 ms  0x240c symkey:0x7feb8f48e600
           /* TID 0x24ad */
 11976 ms  0x24ad _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11976 ms  0x24ad ret:0x0
           /* TID 0x2414 */
 11976 ms  0x2414 PR_Close()
 11976 ms  0x2414 fd:0x7feb753505b0
           /* TID 0x240c */
 11977 ms  0x240c SSL_AuthCertificateComplete()
 11977 ms  0x240c fd:0x7feb75491460
 11977 ms  0x240c err:0x0
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb90329700
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb87b98600
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb90329700
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb8c768100
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb90329700
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb8f38ca00
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb8f38c780
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb7512ff00
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb8f38c780
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb75137200
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb8c768100
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb75137200
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb8c768100
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb75138a00
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb8f38c780
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb754c2000
 11977 ms     | 0x240c PK11_Encrypt()
 11977 ms     | 0x240c symkey:0x7feb7512ff00
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb87b98600
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb754c2000
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb87b98600
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb75138a00
 11977 ms     | 0x240c PK11_DeriveWithFlags()
 11977 ms     | 0x240c basekey:0x7feb90329700
 11977 ms     |    | 0x240c PK11_DeriveWithTemplate()
 11977 ms     | 0x240c ret:0x7feb7512ff00
 11977 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11977 ms     | 0x240c privk:0x7feb7502e820::7feb7502e820  30 73 b2 87                                      0s..
 11978 ms     | 0x240c privk:0x7feb7502e820::7feb7502e820  e5 e5 e5 e5                                      ....
 11978 ms     | 0x240c SECKEY_DestroyPrivateKey()
 11978 ms     | 0x240c privk:0x7feb74e30020::7feb74e30020  c0 09 89 87                                      ....
 11978 ms     | 0x240c privk:0x7feb74e30020::7feb74e30020  e5 e5 e5 e5                                      ....
 11978 ms  0x240c PK11_Encrypt()
 11978 ms  0x240c symkey:0x7feb754c2000
 11978 ms  0x240c PK11_Encrypt()
 11978 ms  0x240c symkey:0x7feb8f48e600
           /* TID 0x2414 */
 12059 ms  0x2414 PR_Close()
 12059 ms  0x2414 fd:0x7feb754d7a30
           /* TID 0x2401 */
 12060 ms  0x2401 PR_Close()
 12060 ms  0x2401 fd:0x7feb754d7a30
           /* TID 0x240c */
 12083 ms  0x240c PK11_DeriveWithFlags()
 12083 ms  0x240c basekey:0x7feb901cee00
 12083 ms     | 0x240c PK11_DeriveWithTemplate()
 12083 ms  0x240c ret:0x7feb8f38d280
 12083 ms  0x240c PK11_DeriveWithFlags()
 12083 ms  0x240c basekey:0x7feb901cee00
 12083 ms     | 0x240c PK11_DeriveWithTemplate()
 12083 ms  0x240c ret:0x7feb8f38d280
 12083 ms  0x240c PK11_Encrypt()
 12083 ms  0x240c symkey:0x7feb8f48e600
 12092 ms  0x240c PK11_DeriveWithFlags()
 12092 ms  0x240c basekey:0x7feb7512ff00
 12092 ms     | 0x240c PK11_DeriveWithTemplate()
 12092 ms  0x240c ret:0x7feb8f38d280
 12092 ms  0x240c PK11_DeriveWithFlags()
 12092 ms  0x240c basekey:0x7feb7512ff00
 12092 ms     | 0x240c PK11_DeriveWithTemplate()
 12092 ms  0x240c ret:0x7feb8f38d280
 12092 ms  0x240c PR_Close()
 12092 ms  0x240c fd:0x7feb75491460
 12092 ms     | 0x240c PK11_Encrypt()
 12092 ms     | 0x240c symkey:0x7feb754c2000
 12105 ms  0x240c PK11_Encrypt()
 12105 ms  0x240c symkey:0x7feb8f48e600
 12108 ms  0x240c SSL_ImportFD()
 12108 ms  0x240c ret:0x7feb8628c1f0
 12108 ms  0x240c SSL_AuthCertificateHook()
 12108 ms  0x240c fd:0x7feb8628c1f0
 12108 ms  0x240c ret:0x0
 12108 ms  0x240c PR_Connect()
 12108 ms  0x240c fd:0x7feb8628c1f0
 12109 ms  0x240c SSL_ImportFD()
 12109 ms  0x240c ret:0x7feb864ed460
 12109 ms  0x240c SSL_AuthCertificateHook()
 12109 ms  0x240c fd:0x7feb864ed460
 12109 ms  0x240c ret:0x0
 12109 ms  0x240c PR_Connect()
 12109 ms  0x240c fd:0x7feb864ed460
 12146 ms  0x240c SECKEY_CreateECPrivateKey()
 12146 ms  0x240c cx:0x7feb74e07428
 12146 ms     | 0x240c EC_ValidatePublicKey()
 12146 ms     | 0x240c ret:0x0
 12147 ms  0x240c ret:0x7feb74e2e820::7feb74e2e820  f0 f1 81 87                                      ....
 12147 ms  0x240c SECKEY_CreateECPrivateKey()
 12147 ms  0x240c cx:0x7feb74e07428
 12147 ms     | 0x240c EC_ValidatePublicKey()
 12150 ms     | 0x240c ret:0x0
 12150 ms  0x240c ret:0x7feb7502e820::7feb7502e820  b0 0a 7c 87                                      ..|.
 12151 ms  0x240c SECKEY_CreateECPrivateKey()
 12151 ms  0x240c cx:0x7feb74e07768
 12151 ms     | 0x240c EC_ValidatePublicKey()
 12151 ms     | 0x240c ret:0x0
 12151 ms  0x240c ret:0x7feb751af020::7feb751af020  00 f6 81 87                                      ....
 12151 ms  0x240c SECKEY_CreateECPrivateKey()
 12151 ms  0x240c cx:0x7feb74e07768
 12152 ms     | 0x240c EC_ValidatePublicKey()
 12154 ms     | 0x240c ret:0x0
 12154 ms  0x240c ret:0x7feb751b9020::7feb751b9020  b0 70 b2 87                                      .p..
 12205 ms  0x240c PK11_Derive()
 12205 ms  0x240c basekey:0x7feb8f38ca00
 12205 ms     | 0x240c PK11_DeriveWithTemplate()
 12205 ms  0x240c ret:0x7feb8c768100
 12205 ms  0x240c PK11_PubDeriveWithKDF()
 12205 ms  0x240c seckey:0x7feb74e2e820
 12205 ms     | 0x240c EC_ValidatePublicKey()
 12205 ms     | 0x240c ret:0x0
 12206 ms  0x240c ret:0x7feb8f38ca00
 12206 ms  SECKEY_ECParamsToKeySize()
 12206 ms  0x240c ret:0xff
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb8c768100
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb87b98600
 12206 ms  0x240c PK11_Derive()
 12206 ms  0x240c basekey:0x7feb8f38ca00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb7512ff00
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb7512ff00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb8c768100
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb7512ff00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb8f38ca00
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb7512ff00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb87b98600
 12206 ms  0x240c PK11_Derive()
 12206 ms  0x240c basekey:0x7feb75137200
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb754c2000
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb8f38ca00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb7512ff00
 12206 ms  0x240c PK11_DeriveWithFlags()
 12206 ms  0x240c basekey:0x7feb8f38ca00
 12206 ms     | 0x240c PK11_DeriveWithTemplate()
 12206 ms  0x240c ret:0x7feb87b98600
 12208 ms  0x240c PK11_DeriveWithFlags()
 12208 ms  0x240c basekey:0x7feb8f38ca00
 12208 ms     | 0x240c PK11_DeriveWithTemplate()
 12208 ms  0x240c ret:0x7feb87b98600
 12208 ms  0x240c PK11_Derive()
 12208 ms  0x240c basekey:0x7feb87b98600
 12208 ms     | 0x240c PK11_DeriveWithTemplate()
 12208 ms  0x240c ret:0x7feb75137200
 12208 ms  0x240c PK11_PubDeriveWithKDF()
 12208 ms  0x240c seckey:0x7feb751af020
 12208 ms     | 0x240c EC_ValidatePublicKey()
 12209 ms     | 0x240c ret:0x0
 12209 ms  0x240c ret:0x7feb87b98600
 12209 ms  SECKEY_ECParamsToKeySize()
 12209 ms  0x240c ret:0xff
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb75137200
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb8f38d280
 12209 ms  0x240c PK11_Derive()
 12209 ms  0x240c basekey:0x7feb87b98600
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb8f38c780
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb8f38c780
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb75137200
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb8f38c780
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb87b98600
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb8f38c780
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb8f38d280
 12209 ms  0x240c PK11_Derive()
 12209 ms  0x240c basekey:0x7feb90329700
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb75138a00
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb87b98600
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb8f38c780
 12209 ms  0x240c PK11_DeriveWithFlags()
 12209 ms  0x240c basekey:0x7feb87b98600
 12209 ms     | 0x240c PK11_DeriveWithTemplate()
 12209 ms  0x240c ret:0x7feb8f38d280
 12211 ms  0x240c PK11_DeriveWithFlags()
 12211 ms  0x240c basekey:0x7feb87b98600
 12211 ms     | 0x240c PK11_DeriveWithTemplate()
 12211 ms  0x240c ret:0x7feb8f38d280
           /* TID 0x2414 */
 12353 ms  0x2414 PR_Close()
 12353 ms  0x2414 fd:0x7feb75350790
           /* TID 0x24aa */
 12354 ms  0x24aa _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12354 ms  0x24aa ret:0x0
           /* TID 0x240c */
 12355 ms  0x240c SSL_AuthCertificateComplete()
 12355 ms  0x240c fd:0x7feb8628c1f0
 12355 ms  0x240c err:0x0
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb754c2000
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb8f38d280
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb754c2000
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb90329700
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb754c2000
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb7535b400
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb8c768100
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb7535b480
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb8c768100
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb7535b780
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb90329700
 12356 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12356 ms     | 0x240c ret:0x7feb7535b780
 12356 ms     | 0x240c PK11_DeriveWithFlags()
 12356 ms     | 0x240c basekey:0x7feb90329700
 12357 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12357 ms     | 0x240c ret:0x7feb753f0380
 12357 ms     | 0x240c PK11_DeriveWithFlags()
 12357 ms     | 0x240c basekey:0x7feb8c768100
 12357 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12357 ms     | 0x240c ret:0x7feb7512ff00
 12357 ms     | 0x240c PK11_Encrypt()
 12357 ms     | 0x240c symkey:0x7feb7535b480
 12357 ms     | 0x240c PK11_DeriveWithFlags()
 12357 ms     | 0x240c basekey:0x7feb8f38d280
 12357 ms     |    | 0x240c PK11_DeriveWithTemplate()
           /* TID 0x2414 */
 12359 ms  0x2414 PR_Close()
 12359 ms  0x2414 fd:0x7feb862959d0
           /* TID 0x246a */
 12359 ms  0x246a _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12359 ms  0x246a ret:0x0
           /* TID 0x240c */
 12359 ms     | 0x240c ret:0x7feb7512ff00
 12359 ms     | 0x240c PK11_DeriveWithFlags()
 12359 ms     | 0x240c basekey:0x7feb8f38d280
 12359 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12360 ms     | 0x240c ret:0x7feb753f0380
 12360 ms     | 0x240c PK11_DeriveWithFlags()
 12360 ms     | 0x240c basekey:0x7feb754c2000
 12360 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12360 ms     | 0x240c ret:0x7feb7535b480
 12360 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12360 ms     | 0x240c privk:0x7feb7502e820::7feb7502e820  b0 0a 7c 87                                      ..|.
 12360 ms     | 0x240c privk:0x7feb7502e820::7feb7502e820  e5 e5 e5 e5                                      ....
 12360 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12360 ms     | 0x240c privk:0x7feb74e2e820::7feb74e2e820  f0 f1 81 87                                      ....
 12360 ms     | 0x240c privk:0x7feb74e2e820::7feb74e2e820  e5 e5 e5 e5                                      ....
 12362 ms  0x240c PK11_Encrypt()
 12362 ms  0x240c symkey:0x7feb7512ff00
 12362 ms  0x240c PK11_Encrypt()
 12362 ms  0x240c symkey:0x7feb7512ff00
 12363 ms  0x240c SSL_AuthCertificateComplete()
 12363 ms  0x240c fd:0x7feb864ed460
 12363 ms  0x240c err:0x0
 12363 ms     | 0x240c PK11_DeriveWithFlags()
 12363 ms     | 0x240c basekey:0x7feb75138a00
 12363 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12363 ms     | 0x240c ret:0x7feb8f38ca00
 12363 ms     | 0x240c PK11_DeriveWithFlags()
 12363 ms     | 0x240c basekey:0x7feb75138a00
 12363 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12363 ms     | 0x240c ret:0x7feb8c768100
 12363 ms     | 0x240c PK11_DeriveWithFlags()
 12363 ms     | 0x240c basekey:0x7feb75138a00
 12363 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12363 ms     | 0x240c ret:0x7feb754c2000
 12363 ms     | 0x240c PK11_DeriveWithFlags()
 12363 ms     | 0x240c basekey:0x7feb75137200
 12364 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12364 ms     | 0x240c ret:0x7feb753f0380
 12364 ms     | 0x240c PK11_DeriveWithFlags()
 12364 ms     | 0x240c basekey:0x7feb75137200
 12364 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12364 ms     | 0x240c ret:0x7feb753fb300
 12364 ms     | 0x240c PK11_DeriveWithFlags()
 12364 ms     | 0x240c basekey:0x7feb8c768100
 12364 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12364 ms     | 0x240c ret:0x7feb753fb300
 12364 ms     | 0x240c PK11_DeriveWithFlags()
 12364 ms     | 0x240c basekey:0x7feb8c768100
 12364 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12364 ms     | 0x240c ret:0x7feb75422100
 12364 ms     | 0x240c PK11_DeriveWithFlags()
 12364 ms     | 0x240c basekey:0x7feb75137200
 12364 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12364 ms     | 0x240c ret:0x7feb8f38c780
 12364 ms     | 0x240c PK11_Encrypt()
 12364 ms     | 0x240c symkey:0x7feb753f0380
 12365 ms     | 0x240c PK11_DeriveWithFlags()
 12365 ms     | 0x240c basekey:0x7feb8f38ca00
 12365 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12365 ms     | 0x240c ret:0x7feb8f38c780
 12365 ms     | 0x240c PK11_DeriveWithFlags()
 12365 ms     | 0x240c basekey:0x7feb8f38ca00
 12365 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12365 ms     | 0x240c ret:0x7feb75422100
 12365 ms     | 0x240c PK11_DeriveWithFlags()
 12365 ms     | 0x240c basekey:0x7feb75138a00
 12365 ms     |    | 0x240c PK11_DeriveWithTemplate()
 12365 ms     | 0x240c ret:0x7feb753f0380
 12365 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12365 ms     | 0x240c privk:0x7feb751b9020::7feb751b9020  b0 70 b2 87                                      .p..
 12365 ms     | 0x240c privk:0x7feb751b9020::7feb751b9020  e5 e5 e5 e5                                      ....
 12366 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12366 ms     | 0x240c privk:0x7feb751af020::7feb751af020  00 f6 81 87                                      ....
 12366 ms     | 0x240c privk:0x7feb751af020::7feb751af020  e5 e5 e5 e5                                      ....
 12367 ms  0x240c PK11_Encrypt()
 12367 ms  0x240c symkey:0x7feb8f38c780
 12367 ms  0x240c PK11_Encrypt()
 12367 ms  0x240c symkey:0x7feb7512ff00
 12471 ms  0x240c PK11_DeriveWithFlags()
 12471 ms  0x240c basekey:0x7feb7535b480
 12471 ms     | 0x240c PK11_DeriveWithTemplate()
 12471 ms  0x240c ret:0x7feb87b98600
 12471 ms  0x240c PK11_DeriveWithFlags()
 12471 ms  0x240c basekey:0x7feb7535b480
 12471 ms     | 0x240c PK11_DeriveWithTemplate()
 12471 ms  0x240c ret:0x7feb87b98600
 12471 ms  0x240c PK11_Encrypt()
 12471 ms  0x240c symkey:0x7feb7512ff00
 12479 ms  0x240c PK11_DeriveWithFlags()
 12479 ms  0x240c basekey:0x7feb753f0380
 12479 ms     | 0x240c PK11_DeriveWithTemplate()
 12479 ms  0x240c ret:0x7feb87b98600
 12479 ms  0x240c PK11_DeriveWithFlags()
 12479 ms  0x240c basekey:0x7feb753f0380
 12479 ms     | 0x240c PK11_DeriveWithTemplate()
 12479 ms  0x240c ret:0x7feb87b98600
 12480 ms  0x240c PR_Close()
 12480 ms  0x240c fd:0x7feb864ed460
 12480 ms     | 0x240c PK11_Encrypt()
 12480 ms     | 0x240c symkey:0x7feb8f38c780
 12498 ms  0x240c PK11_Encrypt()
 12498 ms  0x240c symkey:0x7feb7512ff00
 12573 ms  0x240c SSL_ImportFD()
 12573 ms  0x240c ret:0x7feb864ede20
 12573 ms  0x240c SSL_AuthCertificateHook()
 12573 ms  0x240c fd:0x7feb864ede20
 12573 ms  0x240c ret:0x0
 12573 ms  0x240c PR_Connect()
 12573 ms  0x240c fd:0x7feb864ede20
 12603 ms  0x240c PR_Close()
 12603 ms  0x240c fd:0x7feb87088cd0
           /* TID 0x2401 */
 12605 ms  0x2401 EC_ValidatePublicKey()
 12606 ms  0x2401 ret:0x0
 12606 ms  0x2401 EC_ValidatePublicKey()
 12608 ms  0x2401 ret:0x0
 12608 ms  0x2401 EC_ValidatePublicKey()
 12609 ms  0x2401 ret:0x0
 12609 ms  0x2401 EC_ValidatePublicKey()
 12610 ms  0x2401 ret:0x0
 12610 ms  0x2401 EC_ValidatePublicKey()
 12612 ms  0x2401 ret:0x0
 12612 ms  0x2401 EC_ValidatePublicKey()
 12625 ms  0x2401 ret:0x0
 12626 ms  0x2401 EC_ValidatePublicKey()
 12627 ms  0x2401 ret:0x0
 12627 ms  0x2401 EC_ValidatePublicKey()
 12628 ms  0x2401 ret:0x0
 12628 ms  0x2401 EC_ValidatePublicKey()
 12630 ms  0x2401 ret:0x0
 12630 ms  0x2401 EC_ValidatePublicKey()
 12631 ms  0x2401 ret:0x0
           /* TID 0x240c */
 12643 ms  0x240c PK11_Encrypt()
 12643 ms  0x240c symkey:0x7feb7512ff00
 12643 ms  0x240c PK11_Encrypt()
 12643 ms  0x240c symkey:0x7feb864eab00
 12643 ms  0x240c PK11_Encrypt()
 12643 ms  0x240c symkey:0x7feb89575b80
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb8f48e600
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb750a6500
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb8788b680
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb8f38c880
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb864ea800
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb750a6280
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb878d6080
 12644 ms  0x240c PK11_Encrypt()
 12644 ms  0x240c symkey:0x7feb75423880
 12644 ms  0x240c PR_Close()
 12644 ms  0x240c fd:0x7feb8c4fd5b0
 12644 ms  0x240c PR_Close()
 12644 ms  0x240c fd:0x7feb8c460df0
 12644 ms     | 0x240c PK11_Encrypt()
 12644 ms     | 0x240c symkey:0x7feb8f35ce80
 12645 ms  0x240c PR_Close()
 12645 ms  0x240c fd:0x7feb8c4dfe20
 12645 ms     | 0x240c PK11_Encrypt()
 12645 ms     | 0x240c symkey:0x7feb754c1c00
 12645 ms  0x240c PR_Close()
 12645 ms  0x240c fd:0x7feb8c4279a0
 12645 ms  0x240c PR_Close()
 12645 ms  0x240c fd:0x7feb895b1070
 12645 ms  0x240c PR_Close()
 12645 ms  0x240c fd:0x7feb882b6970
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb882b6250
 12646 ms     | 0x240c PK11_Encrypt()
 12646 ms     | 0x240c symkey:0x7feb89555800
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb87e33a60
 12646 ms     | 0x240c PK11_Encrypt()
 12646 ms     | 0x240c symkey:0x7feb895b7700
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb87088310
 12646 ms     | 0x240c PK11_Encrypt()
 12646 ms     | 0x240c symkey:0x7feb87e36500
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb869e3af0
 12646 ms     | 0x240c PK11_Encrypt()
 12646 ms     | 0x240c symkey:0x7feb87b99680
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb869f6550
 12646 ms  0x240c PR_Close()
 12646 ms  0x240c fd:0x7feb864edf40
 12646 ms     | 0x240c PK11_Encrypt()
 12646 ms     | 0x240c symkey:0x7feb87b24900
 12647 ms  0x240c PR_Close()
 12647 ms  0x240c fd:0x7feb864edc40
 12647 ms     | 0x240c PK11_Encrypt()
 12647 ms     | 0x240c symkey:0x7feb87b23080
 12647 ms  0x240c PR_Close()
 12647 ms  0x240c fd:0x7feb864ed970
 12647 ms     | 0x240c PK11_Encrypt()
 12647 ms     | 0x240c symkey:0x7feb87b0f380
 12647 ms  0x240c PR_Close()
 12647 ms  0x240c fd:0x7feb750a1970
 12647 ms     | 0x240c PK11_Encrypt()
 12647 ms     | 0x240c symkey:0x7feb75422b00
 12647 ms  0x240c PR_Close()
 12647 ms  0x240c fd:0x7feb864ed670
 12647 ms     | 0x240c PK11_Encrypt()
 12647 ms     | 0x240c symkey:0x7feb87b0e400
 12647 ms  0x240c PR_Close()
 12647 ms  0x240c fd:0x7feb754d7730
 12647 ms     | 0x240c PK11_Encrypt()
 12647 ms     | 0x240c symkey:0x7feb75138400
 12648 ms  0x240c PR_Close()
 12648 ms  0x240c fd:0x7feb8628c250
 12648 ms     | 0x240c PK11_Encrypt()
 12648 ms     | 0x240c symkey:0x7feb8788ab00
 12648 ms  0x240c PR_Close()
 12648 ms  0x240c fd:0x7feb754d76d0
 12648 ms     | 0x240c PK11_Encrypt()
 12648 ms     | 0x240c symkey:0x7feb8788b780
           /* TID 0x245d */
 12648 ms  0x245d PR_Close()
 12648 ms  0x245d fd:0x7feb750a1a30
 12648 ms  0x245d PR_Close()
 12648 ms  0x245d fd:0x7feb750a1a30
           /* TID 0x240c */
 12651 ms  0x240c PR_Close()
 12651 ms  0x240c fd:0x7feb8628c4f0
 12651 ms     | 0x240c PK11_Encrypt()
 12651 ms     | 0x240c symkey:0x7feb864ea280
 12651 ms  0x240c PR_Close()
 12651 ms  0x240c fd:0x7feb8628c070
 12651 ms     | 0x240c PK11_Encrypt()
 12651 ms     | 0x240c symkey:0x7feb86248980
 12651 ms  0x240c PR_Close()
 12651 ms  0x240c fd:0x7feb754910d0
 12651 ms     | 0x240c PK11_Encrypt()
 12651 ms     | 0x240c symkey:0x7feb75423000
 12652 ms  0x240c PR_Close()
 12652 ms  0x240c fd:0x7feb754282b0
 12652 ms     | 0x240c PK11_Encrypt()
 12652 ms     | 0x240c symkey:0x7feb75423600
 12652 ms  0x240c PR_Close()
 12652 ms  0x240c fd:0x7feb750a1be0
 12652 ms     | 0x240c PK11_Encrypt()
 12652 ms     | 0x240c symkey:0x7feb75138700
 12652 ms  0x240c PR_Close()
 12652 ms  0x240c fd:0x7feb754d0220
 12652 ms  0x240c PR_Close()
 12652 ms  0x240c fd:0x7feb754d0760
 12652 ms     | 0x240c PK11_Encrypt()
 12652 ms     | 0x240c symkey:0x7feb754c1a00
 12652 ms  0x240c PR_Close()
 12652 ms  0x240c fd:0x7feb75491730
 12652 ms     | 0x240c PK11_Encrypt()
 12652 ms     | 0x240c symkey:0x7feb754a0900
 12653 ms  0x240c PR_Close()
 12653 ms  0x240c fd:0x7feb75350280
 12653 ms     | 0x240c PK11_Encrypt()
 12653 ms     | 0x240c symkey:0x7feb8788b200
 12653 ms  0x240c PR_Close()
 12653 ms  0x240c fd:0x7feb754281c0
 12653 ms     | 0x240c PK11_Encrypt()
 12653 ms     | 0x240c symkey:0x7feb862fbc00
 12653 ms  0x240c PR_Close()
 12653 ms  0x240c fd:0x7feb8637ce80
 12653 ms  0x240c PR_Close()
 12653 ms  0x240c fd:0x7feb8637c400
 12653 ms     | 0x240c PK11_Encrypt()
 12653 ms     | 0x240c symkey:0x7feb862fae80
 12655 ms  0x240c PR_Close()
 12655 ms  0x240c fd:0x7feb869f6fa0
 12655 ms  0x240c PR_Close()
 12655 ms  0x240c fd:0x7feb869e3fa0
 12655 ms     | 0x240c PK11_Encrypt()
 12655 ms     | 0x240c symkey:0x7feb882fdc00
 12655 ms  0x240c PR_Close()
 12655 ms  0x240c fd:0x7feb93aaa640
 12655 ms     | 0x240c PK11_Encrypt()
 12655 ms     | 0x240c symkey:0x7feb86372580
 12664 ms  0x240c PR_Close()
 12664 ms  0x240c fd:0x7feb754d06a0
 12664 ms     | 0x240c PK11_Encrypt()
 12664 ms     | 0x240c symkey:0x7feb750a6500
 12664 ms  0x240c PR_Close()
 12664 ms  0x240c fd:0x7feb8628cac0
 12664 ms     | 0x240c PK11_Encrypt()
 12664 ms     | 0x240c symkey:0x7feb864ea800
 12664 ms  0x240c PR_Close()
 12664 ms  0x240c fd:0x7feb8628c1f0
 12664 ms     | 0x240c PK11_Encrypt()
 12664 ms     | 0x240c symkey:0x7feb7512ff00
 12665 ms  0x240c PR_Close()
 12665 ms  0x240c fd:0x7feb75193c70
 12665 ms     | 0x240c PK11_Encrypt()
 12665 ms     | 0x240c symkey:0x7feb8788b680
 12665 ms  0x240c PR_Close()
 12665 ms  0x240c fd:0x7feb869f6040
 12665 ms     | 0x240c PK11_Encrypt()
 12665 ms     | 0x240c symkey:0x7feb878d6080
 12665 ms  0x240c PR_Close()
 12665 ms  0x240c fd:0x7feb75491820
 12665 ms     | 0x240c PK11_Encrypt()
 12665 ms     | 0x240c symkey:0x7feb75423880
 12666 ms  0x240c PR_Close()
 12666 ms  0x240c fd:0x7feb8c4df790
 12666 ms     | 0x240c PK11_Encrypt()
 12666 ms     | 0x240c symkey:0x7feb8f38c880
 12666 ms  0x240c PR_Close()
 12666 ms  0x240c fd:0x7feb8953e280
 12666 ms     | 0x240c PK11_Encrypt()
 12666 ms     | 0x240c symkey:0x7feb89575b80
 12666 ms  0x240c PR_Close()
 12666 ms  0x240c fd:0x7feb75491d90
 12666 ms     | 0x240c PK11_Encrypt()
 12666 ms     | 0x240c symkey:0x7feb8f48e600
 12667 ms  0x240c PR_Close()
 12667 ms  0x240c fd:0x7feb8628ce20
 12667 ms     | 0x240c PK11_Encrypt()
 12667 ms     | 0x240c symkey:0x7feb864eab00
 12667 ms  0x240c PR_Close()
 12667 ms  0x240c fd:0x7feb75491250
 12667 ms     | 0x240c PK11_Encrypt()
 12667 ms     | 0x240c symkey:0x7feb750a6280
 12679 ms  0x240c SSL_ImportFD()
 12679 ms  0x240c ret:0x7feb751936d0
 12679 ms  0x240c SSL_AuthCertificateHook()
 12679 ms  0x240c fd:0x7feb751936d0
 12679 ms  0x240c ret:0x0
 12679 ms  0x240c PR_Connect()
 12679 ms  0x240c fd:0x7feb751936d0
           /* TID 0x2401 */
 12687 ms  0x2401 PR_Close()
 12687 ms  0x2401 fd:0x7feb8953e0d0
 12687 ms  0x2401 PR_Close()
 12687 ms  0x2401 fd:0x7feb754282e0
 12688 ms  0x2401 PR_Close()
 12688 ms  0x2401 fd:0x7feb754289d0
 12688 ms  0x2401 PR_Close()
 12688 ms  0x2401 fd:0x7feb754282e0
 12689 ms  0x2401 PR_Close()
 12689 ms  0x2401 fd:0x7feb754289d0
 12689 ms  0x2401 PR_Close()
 12689 ms  0x2401 fd:0x7feb754282e0
           /* TID 0x2472 */
 12693 ms  0x2472 PR_Close()
 12693 ms  0x2472 fd:0x7feb754282e0
           /* TID 0x2401 */
 12713 ms  0x2401 PR_Close()
 12713 ms  0x2401 fd:0x7feb754289d0
 12713 ms  0x2401 PR_Close()
 12713 ms  0x2401 fd:0x7feb754d7280
 12714 ms  0x2401 PR_Close()
 12714 ms  0x2401 fd:0x7feb754289d0
 12714 ms  0x2401 PR_Close()
 12714 ms  0x2401 fd:0x7feb754d7280
 12715 ms  0x2401 PR_Close()
 12715 ms  0x2401 fd:0x7feb914c89a0
 12715 ms  0x2401 PR_Close()
 12715 ms  0x2401 fd:0x7feb914c88b0
 12715 ms  0x2401 PR_Close()
 12715 ms  0x2401 fd:0x7feb914c8a60
 12719 ms  0x2401 PR_Close()
 12719 ms  0x2401 fd:0x7feb754d72b0
 12720 ms  0x2401 PR_Close()
 12720 ms  0x2401 fd:0x7feb754d72b0
 12723 ms  0x2401 PR_Close()
 12723 ms  0x2401 fd:0x7feb754289d0
 12723 ms  0x2401 PR_Close()
 12723 ms  0x2401 fd:0x7feb754d7370
 12723 ms  0x2401 PR_Close()
 12723 ms  0x2401 fd:0x7feb754289d0
 12723 ms  0x2401 PR_Close()
 12723 ms  0x2401 fd:0x7feb754d7370
 12726 ms  0x2401 PR_Close()
 12726 ms  0x2401 fd:0x7feb754d73d0
 12727 ms  0x2401 PR_Close()
 12727 ms  0x2401 fd:0x7feb754d73d0
 12729 ms  0x2401 PR_Close()
 12729 ms  0x2401 fd:0x7feb754289d0
 12729 ms  0x2401 PR_Close()
 12729 ms  0x2401 fd:0x7feb754d7730
 12730 ms  0x2401 PR_Close()
 12730 ms  0x2401 fd:0x7feb754289d0
 12730 ms  0x2401 PR_Close()
 12730 ms  0x2401 fd:0x7feb754d7730
 12732 ms  0x2401 PR_Close()
 12732 ms  0x2401 fd:0x7feb754d7760
 12736 ms  0x2401 PR_Close()
 12736 ms  0x2401 fd:0x7feb754d7760
           /* TID 0x240c */
 12737 ms  0x240c SECKEY_CreateECPrivateKey()
 12737 ms  0x240c cx:0x7feb74e068c8
 12737 ms     | 0x240c EC_ValidatePublicKey()
 12737 ms     | 0x240c ret:0x0
 12737 ms  0x240c ret:0x7feb74e29820::7feb74e29820  40 1c b5 87                                      @...
 12737 ms  0x240c SECKEY_CreateECPrivateKey()
 12737 ms  0x240c cx:0x7feb74e068c8
 12738 ms     | 0x240c EC_ValidatePublicKey()
 12739 ms     | 0x240c ret:0x0
 12739 ms  0x240c ret:0x7feb7502c820::7feb7502c820  20 1e b5 87                                       ...
           /* TID 0x2401 */
 12746 ms  0x2401 PR_Close()
 12746 ms  0x2401 fd:0x7feb754d7c10
 12748 ms  0x2401 PR_Close()
 12748 ms  0x2401 fd:0x7feb754d7c10
 12750 ms  0x2401 PR_Close()
 12750 ms  0x2401 fd:0x7feb754d7ca0
           /* TID 0x2472 */
 12754 ms  0x2472 PR_Close()
 12754 ms  0x2472 fd:0x7feb8628c130
 12755 ms  0x2472 PR_Close()
 12755 ms  0x2472 fd:0x7feb8628c130
           /* TID 0x2401 */
 12756 ms  0x2401 PR_Close()
 12756 ms  0x2401 fd:0x7feb754289d0
 12756 ms  0x2401 PR_Close()
 12756 ms  0x2401 fd:0x7feb8628c250
           /* TID 0x2472 */
 12762 ms  0x2472 PR_Close()
 12762 ms  0x2472 fd:0x7feb754282e0
           /* TID 0x240c */
 12763 ms  0x240c SECKEY_CreateECPrivateKey()
 12763 ms  0x240c cx:0x7feb74e07768
 12764 ms     | 0x240c EC_ValidatePublicKey()
 12764 ms     | 0x240c ret:0x0
 12764 ms  0x240c ret:0x7feb75038020::7feb75038020  30 78 eb 87                                      0x..
 12764 ms  0x240c SECKEY_CreateECPrivateKey()
 12764 ms  0x240c cx:0x7feb74e07768
 12764 ms     | 0x240c EC_ValidatePublicKey()
 12766 ms     | 0x240c ret:0x0
 12766 ms  0x240c ret:0x7feb7503d820::7feb7503d820  b0 7a eb 87                                      .z..
           /* TID 0x2472 */
 12795 ms  0x2472 PR_Close()
 12795 ms  0x2472 fd:0x7feb750a1220
           /* TID 0x240c */
 12800 ms  SECKEY_ECParamsToKeySize()
 12800 ms  0x240c ret:0x100
 12800 ms  0x240c SECKEY_CreateECPrivateKey()
 12800 ms  0x240c cx:0x7feb74e068c8
 12800 ms     | 0x240c EC_ValidatePublicKey()
 12802 ms     | 0x240c ret:0x0
 12802 ms  0x240c ret:0x7feb86280020::7feb86280020  30 73 1d 75                                      0s.u
 12802 ms  0x240c PK11_PubDeriveWithKDF()
 12802 ms  0x240c seckey:0x7feb86280020
 12802 ms     | 0x240c EC_ValidatePublicKey()
 12805 ms     | 0x240c ret:0x0
 12806 ms  0x240c ret:0x7feb750a6100
 12806 ms  0x240c PK11_DeriveWithFlags()
 12806 ms  0x240c basekey:0x7feb750a6100
 12806 ms     | 0x240c PK11_DeriveWithTemplate()
 12806 ms  0x240c ret:0x7feb750a6080
 12806 ms  0x240c PK11_Derive()
 12806 ms  0x240c basekey:0x7feb750a6080
 12806 ms     | 0x240c PK11_DeriveWithTemplate()
 12806 ms  0x240c ret:0x7feb864ea600
 12806 ms  0x240c SECKEY_DestroyPrivateKey()
 12806 ms  0x240c privk:0x7feb86280020::7feb86280020  30 73 1d 75                                      0s.u
 12806 ms  0x240c privk:0x7feb86280020::7feb86280020  e5 e5 e5 e5                                      ....
 12807 ms  0x240c PK11_Encrypt()
 12807 ms  0x240c symkey:0x7feb750a6180
           /* TID 0x2406 */
 12811 ms  0x2406 PR_Close()
 12811 ms  0x2406 fd:0x7feb901f8df0
           /* TID 0x2472 */
 12812 ms  0x2472 PR_Close()
 12812 ms  0x2472 fd:0x7feb751930d0
           /* TID 0x240c */
 12813 ms  0x240c PR_Close()
 12813 ms  0x240c fd:0x7feb751936d0
 12813 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12813 ms     | 0x240c privk:0x7feb7502c820::7feb7502c820  20 1e b5 87                                       ...
 12815 ms     | 0x240c privk:0x7feb7502c820::7feb7502c820  e5 e5 e5 e5                                      ....
 12815 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12815 ms     | 0x240c privk:0x7feb74e29820::7feb74e29820  40 1c b5 87                                      @...
 12815 ms     | 0x240c privk:0x7feb74e29820::7feb74e29820  e5 e5 e5 e5                                      ....
 12815 ms  0x240c PR_Close()
 12815 ms  0x240c fd:0x7feb864ede20
 12815 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12815 ms     | 0x240c privk:0x7feb7503d820::7feb7503d820  b0 7a eb 87                                      .z..
 12815 ms     | 0x240c privk:0x7feb7503d820::7feb7503d820  e5 e5 e5 e5                                      ....
 12816 ms     | 0x240c SECKEY_DestroyPrivateKey()
 12816 ms     | 0x240c privk:0x7feb75038020::7feb75038020  30 78 eb 87                                      0x..
 12816 ms     | 0x240c privk:0x7feb75038020::7feb75038020  e5 e5 e5 e5                                      ....
           /* TID 0x2401 */
 12828 ms  0x2401 PR_Close()
 12828 ms  0x2401 fd:0x7feb754289d0
 12828 ms  0x2401 PR_Close()
 12828 ms  0x2401 fd:0x7feb750a1130
           /* TID 0x240c */
 12834 ms  0x240c PR_Close()
 12834 ms  0x240c fd:0x7feb869e3850
           /* TID 0x245d */
 12835 ms  0x245d PR_Close()
 12835 ms  0x245d fd:0x7feb753502b0
 12835 ms  0x245d PR_Close()
 12835 ms  0x245d fd:0x7feb750a11f0
 12835 ms  0x245d PR_Close()
 12835 ms  0x245d fd:0x7feb750a11f0
 12835 ms  0x245d PR_Close()
 12835 ms  0x245d fd:0x7feb750a11f0
           /* TID 0x2472 */
 12836 ms  0x2472 PR_Close()
 12836 ms  0x2472 fd:0x7feb75350160
           /* TID 0x2414 */
 12839 ms  0x2414 PR_Close()
 12839 ms  0x2414 fd:0x7feb753e0ac0
 12839 ms  0x2414 PR_Close()
 12839 ms  0x2414 fd:0x7feb753e0f10
           /* TID 0x2406 */
 12856 ms  0x2406 PR_Close()
 12856 ms  0x2406 fd:0x7feb869f6670
 12860 ms  0x2406 PR_Close()
 12860 ms  0x2406 fd:0x7feb8c64a820
           /* TID 0x2401 */
 12862 ms  0x2401 PR_Close()
 12862 ms  0x2401 fd:0x7feb751937c0
 12862 ms  0x2401 PR_Close()
 12862 ms  0x2401 fd:0x7feb75428e80
           /* TID 0x2472 */
 12865 ms  0x2472 PR_Close()
 12865 ms  0x2472 fd:0x7feb754282e0
 12868 ms  0x2472 PR_Close()
 12868 ms  0x2472 fd:0x7feb750a15b0
 12913 ms  0x2472 PR_Close()
 12913 ms  0x2472 fd:0x7feb750a1af0
 12914 ms  0x2472 PR_Close()
 12914 ms  0x2472 fd:0x7feb750a1af0
 12929 ms  0x2472 PR_Close()
 12929 ms  0x2472 fd:0x7feb750a1d60
 12931 ms  0x2472 PR_Close()
 12931 ms  0x2472 fd:0x7feb750a1fa0
 12940 ms  0x2472 PR_Close()
 12940 ms  0x2472 fd:0x7feb75350f70
 12945 ms  0x2472 PR_Close()
 12945 ms  0x2472 fd:0x7feb753e0f40
 12952 ms  0x2472 PR_Close()
 12952 ms  0x2472 fd:0x7feb75428af0
 12962 ms  0x2472 PR_Close()
 12962 ms  0x2472 fd:0x7feb75428e80
 12964 ms  0x2472 PR_Close()
 12964 ms  0x2472 fd:0x7feb75428e80
           /* TID 0x2401 */
 13125 ms  0x2401 PR_Close()
 13125 ms  0x2401 fd:0x7feb750a1fa0
 13125 ms  0x2401 PR_Close()
 13125 ms  0x2401 fd:0x7feb750a1fa0
 13132 ms  0x2401 PR_Close()
 13132 ms  0x2401 fd:0x7febae7da130
 13132 ms  0x2401 PR_Close()
 13132 ms  0x2401 fd:0x7febae7da190
Process terminated
