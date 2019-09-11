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
           /* TID 0x159c */
    32 ms  0x159c PR_Close()
    32 ms  0x159c fd:0x7f6952a9ba60
    32 ms     | 0x159c PK11_Encrypt()
    32 ms     | 0x159c symkey:0x7f6952f03600
           /* TID 0x15a4 */
    33 ms  0x15a4 PR_Close()
    33 ms  0x15a4 fd:0x7f695150c4c0
           /* TID 0x159c */
   380 ms  0x159c SSL_ImportFD()
   380 ms  0x159c ret:0x7f69518dc610
   380 ms  0x159c SSL_AuthCertificateHook()
   380 ms  0x159c fd:0x7f69518dc610
   380 ms  0x159c ret:0x0
   381 ms  0x159c PR_Connect()
   381 ms  0x159c fd:0x7f69518dc610
           /* TID 0x15fe */
   551 ms  0x15fe PR_Close()
   551 ms  0x15fe fd:0x7f6951875fa0
   555 ms  0x15fe PR_Close()
   555 ms  0x15fe fd:0x7f6951875fa0
           /* TID 0x159c */
   581 ms  0x159c SECKEY_CreateECPrivateKey()
   581 ms  0x159c cx:0x7f69516e8648
   583 ms     | 0x159c EC_ValidatePublicKey()
   583 ms     | 0x159c ret:0x0
   583 ms  0x159c ret:0x7f6951857820::7f6951857820  40 1c f6 55                                      @..U
   585 ms  0x159c SECKEY_CreateECPrivateKey()
   585 ms  0x159c cx:0x7f69516e8648
   587 ms     | 0x159c EC_ValidatePublicKey()
   592 ms     | 0x159c ret:0x0
   592 ms  0x159c ret:0x7f6951859820::7f6951859820  00 1b f6 55                                      ...U
           /* TID 0x15fe */
   771 ms  0x15fe PR_Close()
   771 ms  0x15fe fd:0x7f69518dca30
           /* TID 0x159c */
   802 ms  SECKEY_ECParamsToKeySize()
   802 ms  0x159c ret:0x100
   802 ms  0x159c SECKEY_CreateECPrivateKey()
   802 ms  0x159c cx:0x7f69516e8648
   804 ms     | 0x159c EC_ValidatePublicKey()
   809 ms     | 0x159c ret:0x0
   809 ms  0x159c ret:0x7f6951862820::7f6951862820  80 f8 8e 51                                      ...Q
   809 ms  0x159c PK11_PubDeriveWithKDF()
   809 ms  0x159c seckey:0x7f6951862820
   809 ms     | 0x159c EC_ValidatePublicKey()
   813 ms     | 0x159c ret:0x0
   817 ms  0x159c ret:0x7f6952f03580
   817 ms  0x159c PK11_DeriveWithFlags()
   817 ms  0x159c basekey:0x7f6952f03580
   818 ms     | 0x159c PK11_DeriveWithTemplate()
   818 ms  0x159c ret:0x7f6952f03500
   818 ms  0x159c PK11_Derive()
   818 ms  0x159c basekey:0x7f6952f03500
   818 ms     | 0x159c PK11_DeriveWithTemplate()
   818 ms  0x159c ret:0x7f6952f03680
   818 ms  0x159c SECKEY_DestroyPrivateKey()
   818 ms  0x159c privk:0x7f6951862820::7f6951862820  80 f8 8e 51                                      ...Q
   818 ms  0x159c privk:0x7f6951862820::7f6951862820  e5 e5 e5 e5                                      ....
   818 ms  0x159c PK11_Encrypt()
   818 ms  0x159c symkey:0x7f695bad3600
   819 ms  0x159c PR_Connect()
   819 ms  0x159c fd:0x7f69518dcbb0
           /* TID 0x15f7 */
   873 ms  0x15f7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   874 ms  0x15f7 ret:0x0
           /* TID 0x15a4 */
   874 ms  0x15a4 PR_Close()
   874 ms  0x15a4 fd:0x7f69518dca90
           /* TID 0x159c */
   875 ms  0x159c SSL_AuthCertificateComplete()
   875 ms  0x159c fd:0x7f69518dc610
   875 ms  0x159c err:0x0
   875 ms  0x159c PK11_Encrypt()
   875 ms  0x159c symkey:0x7f695bad3600
  1019 ms  0x159c SECKEY_DestroyPrivateKey()
  1019 ms  0x159c privk:0x7f6951859820::7f6951859820  00 1b f6 55                                      ...U
  1019 ms  0x159c privk:0x7f6951859820::7f6951859820  e5 e5 e5 e5                                      ....
  1019 ms  0x159c SECKEY_DestroyPrivateKey()
  1019 ms  0x159c privk:0x7f6951857820::7f6951857820  40 1c f6 55                                      @..U
  1020 ms  0x159c privk:0x7f6951857820::7f6951857820  e5 e5 e5 e5                                      ....
  1274 ms  0x159c SSL_ImportFD()
  1274 ms  0x159c ret:0x7f69518dcd00
  1274 ms  0x159c SSL_AuthCertificateHook()
  1274 ms  0x159c fd:0x7f69518dcd00
  1274 ms  0x159c ret:0x0
  1274 ms  0x159c PR_Connect()
  1274 ms  0x159c fd:0x7f69518dcd00
  1300 ms  0x159c SECKEY_CreateECPrivateKey()
  1300 ms  0x159c cx:0x7f69518eb3e8
  1302 ms     | 0x159c EC_ValidatePublicKey()
  1302 ms     | 0x159c ret:0x0
  1302 ms  0x159c ret:0x7f6951859020::7f6951859020  80 f8 8e 51                                      ...Q
  1302 ms  0x159c SECKEY_CreateECPrivateKey()
  1302 ms  0x159c cx:0x7f69518eb3e8
  1304 ms     | 0x159c EC_ValidatePublicKey()
  1308 ms     | 0x159c ret:0x0
  1308 ms  0x159c ret:0x7f695185f020::7f695185f020  60 fa 8e 51                                      `..Q
           /* TID 0x15f7 */
  1361 ms  0x15f7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1362 ms  0x15f7 ret:0x0
           /* TID 0x159c */
  1362 ms  SECKEY_ECParamsToKeySize()
  1362 ms  0x159c ret:0x100
  1362 ms  0x159c SECKEY_CreateECPrivateKey()
  1362 ms  0x159c cx:0x7f69518eb3e8
  1364 ms     | 0x159c EC_ValidatePublicKey()
  1368 ms     | 0x159c ret:0x0
  1368 ms  0x159c ret:0x7f6951862820::7f6951862820  e0 fc 8e 51                                      ...Q
  1369 ms  0x159c PK11_PubDeriveWithKDF()
  1369 ms  0x159c seckey:0x7f6951862820
  1369 ms     | 0x159c EC_ValidatePublicKey()
  1373 ms     | 0x159c ret:0x0
  1377 ms  0x159c ret:0x7f6952f03580
  1377 ms  0x159c PK11_DeriveWithFlags()
  1377 ms  0x159c basekey:0x7f6952f03580
  1377 ms     | 0x159c PK11_DeriveWithTemplate()
  1377 ms  0x159c ret:0x7f69518e1300
  1377 ms  0x159c PK11_Derive()
  1377 ms  0x159c basekey:0x7f69518e1300
  1377 ms     | 0x159c PK11_DeriveWithTemplate()
  1377 ms  0x159c ret:0x7f69518e1380
  1377 ms  0x159c SECKEY_DestroyPrivateKey()
  1377 ms  0x159c privk:0x7f6951862820::7f6951862820  e0 fc 8e 51                                      ...Q
  1377 ms  0x159c privk:0x7f6951862820::7f6951862820  e5 e5 e5 e5                                      ....
  1378 ms  0x159c PK11_Encrypt()
  1378 ms  0x159c symkey:0x7f69518e1500
  1378 ms  0x159c SSL_AuthCertificateComplete()
  1378 ms  0x159c fd:0x7f69518dcd00
  1378 ms  0x159c err:0x0
  1378 ms  0x159c PK11_Encrypt()
  1378 ms  0x159c symkey:0x7f69518e1500
  1430 ms  0x159c SECKEY_DestroyPrivateKey()
  1430 ms  0x159c privk:0x7f695185f020::7f695185f020  60 fa 8e 51                                      `..Q
  1431 ms  0x159c privk:0x7f695185f020::7f695185f020  e5 e5 e5 e5                                      ....
  1431 ms  0x159c SECKEY_DestroyPrivateKey()
  1431 ms  0x159c privk:0x7f6951859020::7f6951859020  80 f8 8e 51                                      ...Q
  1431 ms  0x159c privk:0x7f6951859020::7f6951859020  e5 e5 e5 e5                                      ....
  1435 ms  0x159c PK11_Encrypt()
  1435 ms  0x159c symkey:0x7f69518e1500
  1465 ms  0x159c PK11_Encrypt()
  1465 ms  0x159c symkey:0x7f69518e1500
  1496 ms  0x159c PK11_Encrypt()
  1496 ms  0x159c symkey:0x7f69518e1500
  1526 ms  0x159c PK11_Encrypt()
  1526 ms  0x159c symkey:0x7f69518e1500
  1642 ms  0x159c PK11_Encrypt()
  1642 ms  0x159c symkey:0x7f69518e1500
  1676 ms  0x159c PK11_Encrypt()
  1676 ms  0x159c symkey:0x7f69518e1500
  1707 ms  0x159c PK11_Encrypt()
  1707 ms  0x159c symkey:0x7f69518e1500
           /* TID 0x15ee */
  1735 ms  0x15ee PR_Close()
  1735 ms  0x15ee fd:0x7f69518dcaf0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dceb0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dcaf0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dceb0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dcaf0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dceb0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dcaf0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dceb0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dcaf0
  1736 ms  0x15ee PR_Close()
  1736 ms  0x15ee fd:0x7f69518dceb0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dcaf0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dceb0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dcaf0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dceb0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dcaf0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dceb0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dcaf0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dceb0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dcaf0
  1737 ms  0x15ee PR_Close()
  1737 ms  0x15ee fd:0x7f69518dceb0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dcaf0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dceb0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dcaf0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dceb0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dcaf0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dceb0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dcaf0
  1738 ms  0x15ee PR_Close()
  1738 ms  0x15ee fd:0x7f69518dceb0
  1741 ms  0x15ee PR_Close()
  1741 ms  0x15ee fd:0x7f69518dcaf0
  1741 ms  0x15ee PR_Close()
  1741 ms  0x15ee fd:0x7f69518dcdf0
  1744 ms  0x15ee PR_Close()
  1744 ms  0x15ee fd:0x7f69518dcdf0
  1744 ms  0x15ee PR_Close()
  1744 ms  0x15ee fd:0x7f69518dce20
  1747 ms  0x15ee PR_Close()
  1747 ms  0x15ee fd:0x7f69518dce20
  1747 ms  0x15ee PR_Close()
  1747 ms  0x15ee fd:0x7f69518dce20
  1749 ms  0x15ee PR_Close()
  1749 ms  0x15ee fd:0x7f69518dce20
  1750 ms  0x15ee PR_Close()
  1750 ms  0x15ee fd:0x7f69518dce20
  1801 ms  0x15ee PR_Close()
  1801 ms  0x15ee fd:0x7f69518dce20
  1802 ms  0x15ee PR_Close()
  1802 ms  0x15ee fd:0x7f694081c280
  1809 ms  0x15ee PR_Close()
  1809 ms  0x15ee fd:0x7f694081c280
  1809 ms  0x15ee PR_Close()
  1809 ms  0x15ee fd:0x7f694081c280
  1816 ms  0x15ee PR_Close()
  1816 ms  0x15ee fd:0x7f694081c280
  1816 ms  0x15ee PR_Close()
  1816 ms  0x15ee fd:0x7f694081c280
  1818 ms  0x15ee PR_Close()
  1818 ms  0x15ee fd:0x7f694081c280
  1818 ms  0x15ee PR_Close()
  1818 ms  0x15ee fd:0x7f694081c280
           /* TID 0x15ec */
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1818 ms  0x15ec PR_Close()
  1818 ms  0x15ec fd:0x7f694081c280
  1819 ms  0x15ec PR_Close()
  1819 ms  0x15ec fd:0x7f694081c280
           /* TID 0x15fe */
  2322 ms  0x15fe PR_Close()
  2322 ms  0x15fe fd:0x7f694081c3a0
  2325 ms  0x15fe PR_Close()
  2325 ms  0x15fe fd:0x7f694081c3a0
  2808 ms  0x15fe PR_Close()
  2808 ms  0x15fe fd:0x7f694081c3a0
           /* TID 0x15a4 */
  4179 ms  0x15a4 PR_Close()
  4179 ms  0x15a4 fd:0x7f694081c3a0
  4179 ms  0x15a4 PR_Close()
  4179 ms  0x15a4 fd:0x7f694081c400
           /* TID 0x159c */
  4712 ms  0x159c SSL_ImportFD()
  4712 ms  0x159c ret:0x7f6952a03400
  4712 ms  0x159c SSL_AuthCertificateHook()
  4712 ms  0x159c fd:0x7f6952a03400
  4712 ms  0x159c ret:0x0
  4713 ms  0x159c PR_Connect()
  4713 ms  0x159c fd:0x7f6952a03400
  4751 ms  0x159c SECKEY_CreateECPrivateKey()
  4751 ms  0x159c cx:0x7f69518eb728
  4753 ms     | 0x159c EC_ValidatePublicKey()
  4753 ms     | 0x159c ret:0x0
  4753 ms  0x159c ret:0x7f69536f5820::7f69536f5820  d0 e8 40 52                                      ..@R
  4753 ms  0x159c SECKEY_CreateECPrivateKey()
  4753 ms  0x159c cx:0x7f69518eb728
  4755 ms     | 0x159c EC_ValidatePublicKey()
  4760 ms     | 0x159c ret:0x0
  4760 ms  0x159c ret:0x7f695c799820::7f695c799820  50 eb 40 52                                      P.@R
  4818 ms  0x159c PK11_Derive()
  4818 ms  0x159c basekey:0x7f6952f03580
  4818 ms     | 0x159c PK11_DeriveWithTemplate()
  4818 ms  0x159c ret:0x7f6952a07700
  4818 ms  0x159c PK11_PubDeriveWithKDF()
  4818 ms  0x159c seckey:0x7f69536f5820
  4818 ms     | 0x159c EC_ValidatePublicKey()
  4818 ms     | 0x159c ret:0x0
  4820 ms  0x159c ret:0x7f6952f03580
  4820 ms  SECKEY_ECParamsToKeySize()
  4820 ms  0x159c ret:0xff
  4820 ms  0x159c PK11_DeriveWithFlags()
  4820 ms  0x159c basekey:0x7f6952a07700
  4820 ms     | 0x159c PK11_DeriveWithTemplate()
  4820 ms  0x159c ret:0x7f6952a07780
  4820 ms  0x159c PK11_Derive()
  4820 ms  0x159c basekey:0x7f6952f03580
  4820 ms     | 0x159c PK11_DeriveWithTemplate()
  4820 ms  0x159c ret:0x7f6952a07800
  4820 ms  0x159c PK11_DeriveWithFlags()
  4820 ms  0x159c basekey:0x7f6952a07800
  4820 ms     | 0x159c PK11_DeriveWithTemplate()
  4820 ms  0x159c ret:0x7f6952a07700
  4820 ms  0x159c PK11_DeriveWithFlags()
  4820 ms  0x159c basekey:0x7f6952a07800
  4821 ms     | 0x159c PK11_DeriveWithTemplate()
  4821 ms  0x159c ret:0x7f6952f03580
  4821 ms  0x159c PK11_DeriveWithFlags()
  4821 ms  0x159c basekey:0x7f6952a07800
  4821 ms     | 0x159c PK11_DeriveWithTemplate()
  4821 ms  0x159c ret:0x7f6952a07780
  4821 ms  0x159c PK11_Derive()
  4821 ms  0x159c basekey:0x7f6952a07880
  4821 ms     | 0x159c PK11_DeriveWithTemplate()
  4821 ms  0x159c ret:0x7f6952a07900
  4821 ms  0x159c PK11_DeriveWithFlags()
  4821 ms  0x159c basekey:0x7f6952f03580
  4821 ms     | 0x159c PK11_DeriveWithTemplate()
  4821 ms  0x159c ret:0x7f6952a07800
  4821 ms  0x159c PK11_DeriveWithFlags()
  4821 ms  0x159c basekey:0x7f6952f03580
  4821 ms     | 0x159c PK11_DeriveWithTemplate()
  4821 ms  0x159c ret:0x7f6952a07780
  4827 ms  0x159c PK11_DeriveWithFlags()
  4827 ms  0x159c basekey:0x7f6952f03580
  4827 ms     | 0x159c PK11_DeriveWithTemplate()
  4827 ms  0x159c ret:0x7f6952a07780
  4924 ms  0x159c PR_Connect()
  4924 ms  0x159c fd:0x7f6952a038b0
           /* TID 0x15a4 */
  5107 ms  0x15a4 PR_Close()
  5107 ms  0x15a4 fd:0x7f6952a03370
           /* TID 0x15f7 */
  5107 ms  0x15f7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5108 ms  0x15f7 ret:0x0
           /* TID 0x159c */
  5117 ms  0x159c SSL_AuthCertificateComplete()
  5117 ms  0x159c fd:0x7f6952a03400
  5117 ms  0x159c err:0x0
  5117 ms     | 0x159c PK11_DeriveWithFlags()
  5117 ms     | 0x159c basekey:0x7f6952a07900
  5117 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5117 ms     | 0x159c ret:0x7f6952a07780
  5117 ms     | 0x159c PK11_DeriveWithFlags()
  5117 ms     | 0x159c basekey:0x7f6952a07900
  5117 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5117 ms     | 0x159c ret:0x7f6952a07880
  5117 ms     | 0x159c PK11_DeriveWithFlags()
  5117 ms     | 0x159c basekey:0x7f6952a07900
  5117 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5117 ms     | 0x159c ret:0x7f6952a07580
  5117 ms     | 0x159c PK11_DeriveWithFlags()
  5117 ms     | 0x159c basekey:0x7f6952a07700
  5117 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5117 ms     | 0x159c ret:0x7f6952a07b00
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07700
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07c80
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07880
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07c80
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07880
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07d00
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07700
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07800
  5118 ms     | 0x159c PK11_Encrypt()
  5118 ms     | 0x159c symkey:0x7f6952a07b00
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07780
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07800
  5118 ms     | 0x159c PK11_DeriveWithFlags()
  5118 ms     | 0x159c basekey:0x7f6952a07780
  5118 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5118 ms     | 0x159c ret:0x7f6952a07d00
  5119 ms     | 0x159c PK11_DeriveWithFlags()
  5119 ms     | 0x159c basekey:0x7f6952a07900
  5119 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5119 ms     | 0x159c ret:0x7f6952a07b00
  5119 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5119 ms     | 0x159c privk:0x7f695c799820::7f695c799820  50 eb 40 52                                      P.@R
  5119 ms     | 0x159c privk:0x7f695c799820::7f695c799820  e5 e5 e5 e5                                      ....
  5119 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5119 ms     | 0x159c privk:0x7f69536f5820::7f69536f5820  d0 e8 40 52                                      ..@R
  5119 ms     | 0x159c privk:0x7f69536f5820::7f69536f5820  e5 e5 e5 e5                                      ....
  5120 ms  0x159c PK11_Encrypt()
  5120 ms  0x159c symkey:0x7f6952a07800
  5120 ms  0x159c PK11_Encrypt()
  5120 ms  0x159c symkey:0x7f6952a07800
  5233 ms  0x159c PK11_DeriveWithFlags()
  5233 ms  0x159c basekey:0x7f6952a07b00
  5233 ms     | 0x159c PK11_DeriveWithTemplate()
  5234 ms  0x159c ret:0x7f6952f03580
  5234 ms  0x159c PK11_DeriveWithFlags()
  5234 ms  0x159c basekey:0x7f6952a07b00
  5234 ms     | 0x159c PK11_DeriveWithTemplate()
  5234 ms  0x159c ret:0x7f6952f03580
  5234 ms  0x159c PK11_Encrypt()
  5234 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15b3 */
  5330 ms  0x15b3 PR_Close()
  5330 ms  0x15b3 fd:0x7f6952a03df0
           /* TID 0x159c */
  5362 ms  0x159c PK11_Encrypt()
  5362 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5402 ms  0x15a4 PR_Close()
  5402 ms  0x15a4 fd:0x7f69407be490
           /* TID 0x159c */
  5422 ms  0x159c PK11_Encrypt()
  5422 ms  0x159c symkey:0x7f6952a07800
  5422 ms  0x159c PK11_Encrypt()
  5422 ms  0x159c symkey:0x7f6952a07800
  5432 ms  0x159c SSL_ImportFD()
  5432 ms  0x159c ret:0x7f694071b4c0
  5432 ms  0x159c SSL_AuthCertificateHook()
  5432 ms  0x159c fd:0x7f694071b4c0
  5432 ms  0x159c ret:0x0
  5432 ms  0x159c PR_Connect()
  5432 ms  0x159c fd:0x7f694071b4c0
  5433 ms  0x159c SSL_ImportFD()
  5433 ms  0x159c ret:0x7f694071b6a0
  5433 ms  0x159c SSL_AuthCertificateHook()
  5433 ms  0x159c fd:0x7f694071b6a0
  5433 ms  0x159c ret:0x0
  5433 ms  0x159c PR_Connect()
  5433 ms  0x159c fd:0x7f694071b6a0
  5434 ms  0x159c SSL_ImportFD()
  5434 ms  0x159c ret:0x7f694071b910
  5434 ms  0x159c SSL_AuthCertificateHook()
  5434 ms  0x159c fd:0x7f694071b910
  5434 ms  0x159c ret:0x0
  5434 ms  0x159c PR_Connect()
  5434 ms  0x159c fd:0x7f694071b910
  5435 ms  0x159c PK11_Encrypt()
  5435 ms  0x159c symkey:0x7f6952a07800
  5439 ms  0x159c PK11_Encrypt()
  5439 ms  0x159c symkey:0x7f6952a07800
  5450 ms  0x159c PK11_Encrypt()
  5450 ms  0x159c symkey:0x7f6952a07800
  5466 ms  0x159c PK11_Encrypt()
  5466 ms  0x159c symkey:0x7f6952a07800
  5470 ms  0x159c SECKEY_CreateECPrivateKey()
  5470 ms  0x159c cx:0x7f69518ec0e8
  5471 ms     | 0x159c EC_ValidatePublicKey()
  5471 ms     | 0x159c ret:0x0
  5471 ms  0x159c ret:0x7f69405dc020::7f69405dc020  c0 ce 71 40                                      ..q@
  5471 ms  0x159c SECKEY_CreateECPrivateKey()
  5471 ms  0x159c cx:0x7f69518ec0e8
  5472 ms     | 0x159c EC_ValidatePublicKey()
  5473 ms     | 0x159c ret:0x0
  5473 ms  0x159c ret:0x7f69405de020::7f69405de020  20 7e 7c 40                                       ~|@
  5475 ms  0x159c SECKEY_CreateECPrivateKey()
  5475 ms  0x159c cx:0x7f69518ec288
  5475 ms     | 0x159c EC_ValidatePublicKey()
  5475 ms     | 0x159c ret:0x0
  5475 ms  0x159c ret:0x7f69405e0820::7f69405e0820  b0 40 83 40                                      .@.@
  5475 ms  0x159c SECKEY_CreateECPrivateKey()
  5475 ms  0x159c cx:0x7f69518ec288
  5476 ms     | 0x159c EC_ValidatePublicKey()
  5479 ms     | 0x159c ret:0x0
  5480 ms  0x159c ret:0x7f69405e3020::7f69405e3020  90 42 83 40                                      .B.@
  5480 ms  0x159c SECKEY_CreateECPrivateKey()
  5480 ms  0x159c cx:0x7f69518ec428
  5480 ms     | 0x159c EC_ValidatePublicKey()
  5480 ms     | 0x159c ret:0x0
  5480 ms  0x159c ret:0x7f69405e5820::7f69405e5820  d0 43 83 40                                      .C.@
  5480 ms  0x159c SECKEY_CreateECPrivateKey()
  5480 ms  0x159c cx:0x7f69518ec428
  5481 ms     | 0x159c EC_ValidatePublicKey()
  5482 ms     | 0x159c ret:0x0
  5482 ms  0x159c ret:0x7f69405e7820::7f69405e7820  b0 45 83 40                                      .E.@
           /* TID 0x15a4 */
  5485 ms  0x15a4 PR_Close()
  5485 ms  0x15a4 fd:0x7f694071b490
           /* TID 0x159c */
  5486 ms  0x159c PK11_Encrypt()
  5486 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5502 ms  0x15a4 PR_Close()
  5502 ms  0x15a4 fd:0x7f694071b490
  5505 ms  0x15a4 PR_Close()
  5505 ms  0x15a4 fd:0x7f6940581fd0
           /* TID 0x159c */
  5527 ms  0x159c PK11_Derive()
  5527 ms  0x159c basekey:0x7f6952f03580
  5527 ms     | 0x159c PK11_DeriveWithTemplate()
  5527 ms  0x159c ret:0x7f6952a07700
  5527 ms  0x159c PK11_PubDeriveWithKDF()
  5527 ms  0x159c seckey:0x7f69405dc020
  5527 ms     | 0x159c EC_ValidatePublicKey()
  5527 ms     | 0x159c ret:0x0
  5527 ms  0x159c ret:0x7f6952f03580
  5527 ms  SECKEY_ECParamsToKeySize()
  5528 ms  0x159c ret:0xff
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952a07700
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07900
  5528 ms  0x159c PK11_Derive()
  5528 ms  0x159c basekey:0x7f6952f03580
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07d00
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952a07d00
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07700
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952a07d00
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952f03580
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952a07d00
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07900
  5528 ms  0x159c PK11_Derive()
  5528 ms  0x159c basekey:0x7f69405f8700
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f694076ca00
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952f03580
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07d00
  5528 ms  0x159c PK11_DeriveWithFlags()
  5528 ms  0x159c basekey:0x7f6952f03580
  5528 ms     | 0x159c PK11_DeriveWithTemplate()
  5528 ms  0x159c ret:0x7f6952a07900
  5533 ms  0x159c PK11_Derive()
  5533 ms  0x159c basekey:0x7f6952a07900
  5533 ms     | 0x159c PK11_DeriveWithTemplate()
  5533 ms  0x159c ret:0x7f69405f8700
  5533 ms  0x159c PK11_PubDeriveWithKDF()
  5533 ms  0x159c seckey:0x7f69405e0820
  5533 ms     | 0x159c EC_ValidatePublicKey()
  5533 ms     | 0x159c ret:0x0
  5535 ms  0x159c ret:0x7f6952a07900
  5535 ms  SECKEY_ECParamsToKeySize()
  5535 ms  0x159c ret:0xff
  5535 ms  0x159c PK11_DeriveWithFlags()
  5535 ms  0x159c basekey:0x7f69405f8700
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f69405f9800
  5535 ms  0x159c PK11_Derive()
  5535 ms  0x159c basekey:0x7f6952a07900
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f69405f9d00
  5535 ms  0x159c PK11_DeriveWithFlags()
  5535 ms  0x159c basekey:0x7f69405f9d00
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f69405f8700
  5535 ms  0x159c PK11_DeriveWithFlags()
  5535 ms  0x159c basekey:0x7f69405f9d00
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f6952a07900
  5535 ms  0x159c PK11_DeriveWithFlags()
  5535 ms  0x159c basekey:0x7f69405f9d00
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f69405f9800
  5535 ms  0x159c PK11_Derive()
  5535 ms  0x159c basekey:0x7f694076cc00
  5535 ms     | 0x159c PK11_DeriveWithTemplate()
  5535 ms  0x159c ret:0x7f694076cc80
  5535 ms  0x159c PK11_DeriveWithFlags()
  5535 ms  0x159c basekey:0x7f6952a07900
  5536 ms     | 0x159c PK11_DeriveWithTemplate()
  5536 ms  0x159c ret:0x7f69405f9d00
  5536 ms  0x159c PK11_DeriveWithFlags()
  5536 ms  0x159c basekey:0x7f6952a07900
  5536 ms     | 0x159c PK11_DeriveWithTemplate()
  5536 ms  0x159c ret:0x7f69405f9800
  5539 ms  SECKEY_ECParamsToKeySize()
  5539 ms  0x159c ret:0x100
  5539 ms  SECKEY_ECParamsToBasePointOrderLen()
  5539 ms  0x159c ret:0x100
  5539 ms  SECKEY_ECParamsToBasePointOrderLen()
  5539 ms  0x159c ret:0x100
  5539 ms  0x159c EC_ValidatePublicKey()
  5543 ms  0x159c ret:0x0
  5547 ms  0x159c PK11_DeriveWithFlags()
  5547 ms  0x159c basekey:0x7f6952a07900
  5547 ms     | 0x159c PK11_DeriveWithTemplate()
  5547 ms  0x159c ret:0x7f69405f9800
  5548 ms  0x159c PK11_Derive()
  5548 ms  0x159c basekey:0x7f69405f9800
  5548 ms     | 0x159c PK11_DeriveWithTemplate()
  5548 ms  0x159c ret:0x7f694076cc00
  5548 ms  0x159c PK11_PubDeriveWithKDF()
  5548 ms  0x159c seckey:0x7f69405e5820
  5548 ms     | 0x159c EC_ValidatePublicKey()
  5548 ms     | 0x159c ret:0x0
  5549 ms  0x159c ret:0x7f69405f9800
  5549 ms  SECKEY_ECParamsToKeySize()
  5549 ms  0x159c ret:0xff
  5549 ms  0x159c PK11_DeriveWithFlags()
  5549 ms  0x159c basekey:0x7f694076cc00
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f694076cb00
  5549 ms  0x159c PK11_Derive()
  5549 ms  0x159c basekey:0x7f69405f9800
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f694076cb80
  5549 ms  0x159c PK11_DeriveWithFlags()
  5549 ms  0x159c basekey:0x7f694076cb80
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f694076cc00
  5549 ms  0x159c PK11_DeriveWithFlags()
  5549 ms  0x159c basekey:0x7f694076cb80
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f69405f9800
  5549 ms  0x159c PK11_DeriveWithFlags()
  5549 ms  0x159c basekey:0x7f694076cb80
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f694076cb00
  5549 ms  0x159c PK11_Derive()
  5549 ms  0x159c basekey:0x7f694076d080
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5549 ms  0x159c ret:0x7f694076d100
  5549 ms  0x159c PK11_DeriveWithFlags()
  5549 ms  0x159c basekey:0x7f69405f9800
  5549 ms     | 0x159c PK11_DeriveWithTemplate()
  5550 ms  0x159c ret:0x7f694076cb80
  5550 ms  0x159c PK11_DeriveWithFlags()
  5550 ms  0x159c basekey:0x7f69405f9800
  5550 ms     | 0x159c PK11_DeriveWithTemplate()
  5550 ms  0x159c ret:0x7f694076cb00
  5550 ms  SECKEY_ECParamsToKeySize()
  5550 ms  0x159c ret:0x100
  5550 ms  SECKEY_ECParamsToBasePointOrderLen()
  5550 ms  0x159c ret:0x100
  5550 ms  SECKEY_ECParamsToBasePointOrderLen()
  5550 ms  0x159c ret:0x100
  5550 ms  0x159c EC_ValidatePublicKey()
  5552 ms  0x159c ret:0x0
  5555 ms  0x159c PK11_DeriveWithFlags()
  5555 ms  0x159c basekey:0x7f69405f9800
  5555 ms     | 0x159c PK11_DeriveWithTemplate()
  5555 ms  0x159c ret:0x7f694076cb00
  5556 ms  0x159c PR_Connect()
  5556 ms  0x159c fd:0x7f694071bf10
           /* TID 0x15a4 */
  5583 ms  0x15a4 PR_Close()
  5583 ms  0x15a4 fd:0x7f694071b670
  5596 ms  0x15a4 PR_Close()
  5596 ms  0x15a4 fd:0x7f6940581fd0
           /* TID 0x159c */
  5598 ms  0x159c PK11_Encrypt()
  5598 ms  0x159c symkey:0x7f6952a07800
  5600 ms  0x159c PK11_Encrypt()
  5600 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5601 ms  0x15a4 PR_Close()
  5601 ms  0x15a4 fd:0x7f6940581fd0
           /* TID 0x159c */
  5602 ms  0x159c PK11_Encrypt()
  5602 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5657 ms  0x15a4 PR_Close()
  5657 ms  0x15a4 fd:0x7f694071b670
           /* TID 0x159c */
  5669 ms  0x159c PK11_Encrypt()
  5669 ms  0x159c symkey:0x7f6952a07800
  5670 ms  0x159c PK11_Encrypt()
  5670 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5692 ms  0x15a4 PR_Close()
  5692 ms  0x15a4 fd:0x7f694071bca0
           /* TID 0x15f7 */
  5692 ms  0x15f7 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5692 ms  0x15f7 ret:0x0
           /* TID 0x159c */
  5692 ms  0x159c SSL_AuthCertificateComplete()
  5692 ms  0x159c fd:0x7f694071b6a0
  5692 ms  0x159c err:0x0
  5692 ms     | 0x159c PK11_DeriveWithFlags()
  5692 ms     | 0x159c basekey:0x7f694076cc80
  5692 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5692 ms     | 0x159c ret:0x7f694076cb00
  5692 ms     | 0x159c PK11_DeriveWithFlags()
  5692 ms     | 0x159c basekey:0x7f694076cc80
  5692 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5692 ms     | 0x159c ret:0x7f694076d080
  5692 ms     | 0x159c PK11_DeriveWithFlags()
  5692 ms     | 0x159c basekey:0x7f694076cc80
  5692 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5692 ms     | 0x159c ret:0x7f694076cf00
  5692 ms     | 0x159c PK11_DeriveWithFlags()
  5692 ms     | 0x159c basekey:0x7f69405f8700
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076d600
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f69405f8700
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076df00
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f694076d080
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076df00
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f694076d080
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076df80
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f69405f8700
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f69405f9d00
  5693 ms     | 0x159c PK11_Encrypt()
  5693 ms     | 0x159c symkey:0x7f694076d600
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f694076cb00
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f69405f9d00
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f694076cb00
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076df80
  5693 ms     | 0x159c PK11_DeriveWithFlags()
  5693 ms     | 0x159c basekey:0x7f694076cc80
  5693 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5693 ms     | 0x159c ret:0x7f694076d600
  5693 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5693 ms     | 0x159c privk:0x7f69405e3020::7f69405e3020  90 42 83 40                                      .B.@
  5693 ms     | 0x159c privk:0x7f69405e3020::7f69405e3020  e5 e5 e5 e5                                      ....
  5693 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5693 ms     | 0x159c privk:0x7f69405e0820::7f69405e0820  b0 40 83 40                                      .@.@
  5693 ms     | 0x159c privk:0x7f69405e0820::7f69405e0820  e5 e5 e5 e5                                      ....
  5694 ms  0x159c PK11_Encrypt()
  5694 ms  0x159c symkey:0x7f69405f9d00
  5694 ms  0x159c PK11_Encrypt()
  5694 ms  0x159c symkey:0x7f69405f9d00
  5705 ms  0x159c PK11_Encrypt()
  5705 ms  0x159c symkey:0x7f6952a07800
  5710 ms  0x159c PK11_Encrypt()
  5710 ms  0x159c symkey:0x7f69405f9d00
  5731 ms  0x159c PK11_DeriveWithFlags()
  5731 ms  0x159c basekey:0x7f694076d600
  5731 ms     | 0x159c PK11_DeriveWithTemplate()
  5731 ms  0x159c ret:0x7f6952a07900
  5731 ms  0x159c PK11_DeriveWithFlags()
  5731 ms  0x159c basekey:0x7f694076d600
  5731 ms     | 0x159c PK11_DeriveWithTemplate()
  5731 ms  0x159c ret:0x7f6952a07900
  5731 ms  0x159c PK11_Encrypt()
  5731 ms  0x159c symkey:0x7f69405f9d00
           /* TID 0x15a4 */
  5746 ms  0x15a4 PR_Close()
  5746 ms  0x15a4 fd:0x7f694063ff70
           /* TID 0x1635 */
  5746 ms  0x1635 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5746 ms  0x1635 ret:0x0
           /* TID 0x159c */
  5746 ms  0x159c SSL_AuthCertificateComplete()
  5746 ms  0x159c fd:0x7f694071b910
  5746 ms  0x159c err:0x0
  5746 ms     | 0x159c PK11_DeriveWithFlags()
  5746 ms     | 0x159c basekey:0x7f694076d100
  5746 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5746 ms     | 0x159c ret:0x7f6952a07900
  5746 ms     | 0x159c PK11_DeriveWithFlags()
  5746 ms     | 0x159c basekey:0x7f694076d100
  5746 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5746 ms     | 0x159c ret:0x7f69405f8700
  5746 ms     | 0x159c PK11_DeriveWithFlags()
  5746 ms     | 0x159c basekey:0x7f694076d100
  5746 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076cc80
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f694076cc00
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076df80
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f694076cc00
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076d300
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f69405f8700
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076d300
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f69405f8700
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f6940868200
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f694076cc00
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076cb80
  5747 ms     | 0x159c PK11_Encrypt()
  5747 ms     | 0x159c symkey:0x7f694076df80
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f6952a07900
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076cb80
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f6952a07900
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f6940868200
  5747 ms     | 0x159c PK11_DeriveWithFlags()
  5747 ms     | 0x159c basekey:0x7f694076d100
  5747 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5747 ms     | 0x159c ret:0x7f694076df80
  5747 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5747 ms     | 0x159c privk:0x7f69405e7820::7f69405e7820  b0 45 83 40                                      .E.@
  5747 ms     | 0x159c privk:0x7f69405e7820::7f69405e7820  e5 e5 e5 e5                                      ....
  5747 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5747 ms     | 0x159c privk:0x7f69405e5820::7f69405e5820  d0 43 83 40                                      .C.@
  5747 ms     | 0x159c privk:0x7f69405e5820::7f69405e5820  e5 e5 e5 e5                                      ....
  5748 ms  0x159c PK11_Encrypt()
  5748 ms  0x159c symkey:0x7f694076cb80
  5748 ms  0x159c PK11_Encrypt()
  5748 ms  0x159c symkey:0x7f694076cb80
  5777 ms  0x159c PK11_Encrypt()
  5777 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  5779 ms  0x15a4 PR_Close()
  5779 ms  0x15a4 fd:0x7f694071b160
           /* TID 0x159c */
  5785 ms  0x159c PK11_DeriveWithFlags()
  5785 ms  0x159c basekey:0x7f694076df80
  5786 ms     | 0x159c PK11_DeriveWithTemplate()
  5786 ms  0x159c ret:0x7f69405f9800
  5786 ms  0x159c PK11_DeriveWithFlags()
  5786 ms  0x159c basekey:0x7f694076df80
  5786 ms     | 0x159c PK11_DeriveWithTemplate()
  5786 ms  0x159c ret:0x7f69405f9800
  5786 ms  0x159c PK11_Encrypt()
  5786 ms  0x159c symkey:0x7f694076cb80
           /* TID 0x15a4 */
  5791 ms  0x15a4 PR_Close()
  5791 ms  0x15a4 fd:0x7f694071b8b0
           /* TID 0x159c */
  5802 ms  SECKEY_ECParamsToKeySize()
  5802 ms  0x159c ret:0x100
  5802 ms  SECKEY_ECParamsToBasePointOrderLen()
  5802 ms  0x159c ret:0x100
  5802 ms  SECKEY_ECParamsToBasePointOrderLen()
  5802 ms  0x159c ret:0x100
  5802 ms  0x159c EC_ValidatePublicKey()
  5804 ms  0x159c ret:0x0
  5809 ms  0x159c PK11_DeriveWithFlags()
  5809 ms  0x159c basekey:0x7f6952f03580
  5809 ms     | 0x159c PK11_DeriveWithTemplate()
  5809 ms  0x159c ret:0x7f69405f9800
  5809 ms  0x159c SSL_AuthCertificateComplete()
  5809 ms  0x159c fd:0x7f694071b4c0
  5809 ms  0x159c err:0x0
  5809 ms     | 0x159c PK11_DeriveWithFlags()
  5809 ms     | 0x159c basekey:0x7f694076ca00
  5809 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5809 ms     | 0x159c ret:0x7f69405f9800
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f694076ca00
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076cc00
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f694076ca00
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076d100
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f6952a07700
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f6940868200
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f6952a07700
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076da80
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f694076cc00
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076da80
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f694076cc00
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076de80
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f6952a07700
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f6952a07d00
  5810 ms     | 0x159c PK11_Encrypt()
  5810 ms     | 0x159c symkey:0x7f6940868200
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f69405f9800
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f6952a07d00
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f69405f9800
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f694076de80
  5810 ms     | 0x159c PK11_DeriveWithFlags()
  5810 ms     | 0x159c basekey:0x7f694076ca00
  5810 ms     |    | 0x159c PK11_DeriveWithTemplate()
  5810 ms     | 0x159c ret:0x7f6940868200
  5810 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5810 ms     | 0x159c privk:0x7f69405de020::7f69405de020  20 7e 7c 40                                       ~|@
  5810 ms     | 0x159c privk:0x7f69405de020::7f69405de020  e5 e5 e5 e5                                      ....
  5810 ms     | 0x159c SECKEY_DestroyPrivateKey()
  5810 ms     | 0x159c privk:0x7f69405dc020::7f69405dc020  c0 ce 71 40                                      ..q@
  5811 ms     | 0x159c privk:0x7f69405dc020::7f69405dc020  e5 e5 e5 e5                                      ....
  5813 ms  0x159c PK11_Encrypt()
  5813 ms  0x159c symkey:0x7f6952a07d00
  5814 ms  0x159c PK11_Encrypt()
  5814 ms  0x159c symkey:0x7f69405f9d00
  5821 ms  0x159c PK11_Encrypt()
  5821 ms  0x159c symkey:0x7f69405f9d00
           /* TID 0x15a4 */
  5822 ms  0x15a4 PR_Close()
  5822 ms  0x15a4 fd:0x7f6940581b20
  5822 ms  0x15a4 PR_Close()
  5822 ms  0x15a4 fd:0x7f694071bb50
           /* TID 0x159c */
  5834 ms  0x159c PK11_Encrypt()
  5834 ms  0x159c symkey:0x7f6952a07800
  5835 ms  0x159c PK11_Encrypt()
  5835 ms  0x159c symkey:0x7f6952a07800
  5848 ms  0x159c PK11_DeriveWithFlags()
  5848 ms  0x159c basekey:0x7f6940868200
  5848 ms     | 0x159c PK11_DeriveWithTemplate()
  5848 ms  0x159c ret:0x7f6952f03580
  5848 ms  0x159c PK11_DeriveWithFlags()
  5848 ms  0x159c basekey:0x7f6940868200
  5848 ms     | 0x159c PK11_DeriveWithTemplate()
  5848 ms  0x159c ret:0x7f6952f03580
  5848 ms  0x159c PR_Close()
  5848 ms  0x159c fd:0x7f694071b4c0
  5848 ms     | 0x159c PK11_Encrypt()
  5848 ms     | 0x159c symkey:0x7f6952a07d00
           /* TID 0x15a4 */
  5855 ms  0x15a4 PR_Close()
  5855 ms  0x15a4 fd:0x7f69405817f0
           /* TID 0x159c */
  5860 ms  0x159c SSL_ImportFD()
  5860 ms  0x159c ret:0x7f694071b580
  5860 ms  0x159c SSL_AuthCertificateHook()
  5860 ms  0x159c fd:0x7f694071b580
  5860 ms  0x159c ret:0x0
  5860 ms  0x159c PR_Connect()
  5860 ms  0x159c fd:0x7f694071b580
  5862 ms  0x159c PK11_Encrypt()
  5862 ms  0x159c symkey:0x7f694076cb80
  5897 ms  0x159c SECKEY_CreateECPrivateKey()
  5897 ms  0x159c cx:0x7f69518ec0e8
  5898 ms     | 0x159c EC_ValidatePublicKey()
  5898 ms     | 0x159c ret:0x0
  5898 ms  0x159c ret:0x7f69405e0020::7f69405e0020  20 7e 7c 40                                       ~|@
  5898 ms  0x159c SECKEY_CreateECPrivateKey()
  5898 ms  0x159c cx:0x7f69518ec0e8
  5900 ms     | 0x159c EC_ValidatePublicKey()
  5901 ms     | 0x159c ret:0x0
  5901 ms  0x159c ret:0x7f69405e5020::7f69405e5020  40 42 83 40                                      @B.@
           /* TID 0x15a4 */
  5911 ms  0x15a4 PR_Close()
  5911 ms  0x15a4 fd:0x7f694071b520
           /* TID 0x159c */
  5912 ms  0x159c PK11_Encrypt()
  5912 ms  0x159c symkey:0x7f6952a07800
  5957 ms  0x159c PK11_Derive()
  5957 ms  0x159c basekey:0x7f694076d100
  5957 ms     | 0x159c PK11_DeriveWithTemplate()
  5957 ms  0x159c ret:0x7f694076cc00
  5957 ms  0x159c PK11_PubDeriveWithKDF()
  5957 ms  0x159c seckey:0x7f69405e0020
  5957 ms     | 0x159c EC_ValidatePublicKey()
  5957 ms     | 0x159c ret:0x0
  5958 ms  0x159c ret:0x7f694076d100
  5958 ms  SECKEY_ECParamsToKeySize()
  5958 ms  0x159c ret:0xff
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f694076cc00
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f69405f9800
  5958 ms  0x159c PK11_Derive()
  5958 ms  0x159c basekey:0x7f694076d100
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f6940868200
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f6940868200
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f694076cc00
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f6940868200
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f694076d100
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f6940868200
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f69405f9800
  5958 ms  0x159c PK11_Derive()
  5958 ms  0x159c basekey:0x7f694076da80
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f6952a07d00
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f694076d100
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f6940868200
  5958 ms  0x159c PK11_DeriveWithFlags()
  5958 ms  0x159c basekey:0x7f694076d100
  5958 ms     | 0x159c PK11_DeriveWithTemplate()
  5958 ms  0x159c ret:0x7f69405f9800
  5960 ms  0x159c PK11_DeriveWithFlags()
  5960 ms  0x159c basekey:0x7f694076d100
  5960 ms     | 0x159c PK11_DeriveWithTemplate()
  5960 ms  0x159c ret:0x7f69405f9800
  5963 ms  0x159c PK11_Encrypt()
  5963 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  6028 ms  0x15a4 PR_Close()
  6028 ms  0x15a4 fd:0x7f694071ba00
           /* TID 0x159c */
  6033 ms  0x159c PK11_Encrypt()
  6033 ms  0x159c symkey:0x7f6952a07800
           /* TID 0x15a4 */
  6106 ms  0x15a4 PR_Close()
  6106 ms  0x15a4 fd:0x7f6940420100
           /* TID 0x1635 */
  6106 ms  0x1635 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6106 ms  0x1635 ret:0x0
           /* TID 0x159c */
  6107 ms  0x159c SSL_AuthCertificateComplete()
  6107 ms  0x159c fd:0x7f694071b580
  6107 ms  0x159c err:0x0
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f6952a07d00
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f69405f9800
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f6952a07d00
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f694076da80
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f6952a07d00
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f6952f03580
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f694076cc00
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f6952a07700
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f694076cc00
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f694076ca00
  6107 ms     | 0x159c PK11_DeriveWithFlags()
  6107 ms     | 0x159c basekey:0x7f694076da80
  6107 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6107 ms     | 0x159c ret:0x7f694076ca00
  6108 ms     | 0x159c PK11_DeriveWithFlags()
  6108 ms     | 0x159c basekey:0x7f694076da80
  6108 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6108 ms     | 0x159c ret:0x7f694076de80
  6108 ms     | 0x159c PK11_DeriveWithFlags()
  6108 ms     | 0x159c basekey:0x7f694076cc00
  6108 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6108 ms     | 0x159c ret:0x7f6940868200
  6108 ms     | 0x159c PK11_Encrypt()
  6108 ms     | 0x159c symkey:0x7f6952a07700
  6108 ms     | 0x159c PK11_DeriveWithFlags()
  6108 ms     | 0x159c basekey:0x7f69405f9800
  6108 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6109 ms     | 0x159c ret:0x7f6940868200
  6109 ms     | 0x159c PK11_DeriveWithFlags()
  6109 ms     | 0x159c basekey:0x7f69405f9800
  6109 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6109 ms     | 0x159c ret:0x7f694076de80
  6109 ms     | 0x159c PK11_DeriveWithFlags()
  6109 ms     | 0x159c basekey:0x7f6952a07d00
  6109 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6109 ms     | 0x159c ret:0x7f6952a07700
  6109 ms     | 0x159c SECKEY_DestroyPrivateKey()
  6109 ms     | 0x159c privk:0x7f69405e5020::7f69405e5020  40 42 83 40                                      @B.@
  6110 ms     | 0x159c privk:0x7f69405e5020::7f69405e5020  e5 e5 e5 e5                                      ....
  6110 ms     | 0x159c SECKEY_DestroyPrivateKey()
  6110 ms     | 0x159c privk:0x7f69405e0020::7f69405e0020  20 7e 7c 40                                       ~|@
  6110 ms     | 0x159c privk:0x7f69405e0020::7f69405e0020  e5 e5 e5 e5                                      ....
  6111 ms  0x159c PK11_Encrypt()
  6111 ms  0x159c symkey:0x7f6940868200
  6111 ms  0x159c PK11_Encrypt()
  6111 ms  0x159c symkey:0x7f6940868200
  6148 ms  0x159c PK11_DeriveWithFlags()
  6148 ms  0x159c basekey:0x7f6952a07700
  6148 ms     | 0x159c PK11_DeriveWithTemplate()
  6148 ms  0x159c ret:0x7f694076d100
  6148 ms  0x159c PK11_DeriveWithFlags()
  6148 ms  0x159c basekey:0x7f6952a07700
  6148 ms     | 0x159c PK11_DeriveWithTemplate()
  6148 ms  0x159c ret:0x7f694076d100
  6149 ms  0x159c PK11_Encrypt()
  6149 ms  0x159c symkey:0x7f6940868200
  6237 ms  0x159c PK11_Encrypt()
  6237 ms  0x159c symkey:0x7f6940868200
           /* TID 0x15a4 */
  6238 ms  0x15a4 PR_Close()
  6238 ms  0x15a4 fd:0x7f6940420220
           /* TID 0x159c */
  6280 ms  0x159c SSL_ImportFD()
  6280 ms  0x159c ret:0x7f6940420640
  6280 ms  0x159c SSL_AuthCertificateHook()
  6280 ms  0x159c fd:0x7f6940420640
  6280 ms  0x159c ret:0x0
  6280 ms  0x159c PR_Connect()
  6280 ms  0x159c fd:0x7f6940420640
  6531 ms  0x159c SSL_ImportFD()
  6531 ms  0x159c ret:0x7f6940420d00
  6531 ms  0x159c SSL_AuthCertificateHook()
  6531 ms  0x159c fd:0x7f6940420d00
  6531 ms  0x159c ret:0x0
  6531 ms  0x159c PR_Connect()
  6531 ms  0x159c fd:0x7f6940420d00
  6533 ms  0x159c SECKEY_CreateECPrivateKey()
  6533 ms  0x159c cx:0x7f69518ecf88
  6534 ms     | 0x159c EC_ValidatePublicKey()
  6534 ms     | 0x159c ret:0x0
  6534 ms  0x159c ret:0x7f69405d3820::7f69405d3820  00 76 7c 40                                      .v|@
  6534 ms  0x159c SECKEY_CreateECPrivateKey()
  6534 ms  0x159c cx:0x7f69518ecf88
  6535 ms     | 0x159c EC_ValidatePublicKey()
  6538 ms     | 0x159c ret:0x0
  6538 ms  0x159c ret:0x7f69405e0020::7f69405e0020  60 40 83 40                                      `@.@
  6796 ms  0x159c SECKEY_CreateECPrivateKey()
  6796 ms  0x159c cx:0x7f69518ed948
  6798 ms     | 0x159c EC_ValidatePublicKey()
  6798 ms     | 0x159c ret:0x0
  6798 ms  0x159c ret:0x7f69405d7020::7f69405d7020  90 c2 61 40                                      ..a@
  6798 ms  0x159c SECKEY_CreateECPrivateKey()
  6798 ms  0x159c cx:0x7f69518ed948
  6814 ms     | 0x159c EC_ValidatePublicKey()
  6822 ms     | 0x159c ret:0x0
  6822 ms  0x159c ret:0x7f69405da020::7f69405da020  60 ca 71 40                                      `.q@
  6836 ms  0x159c PK11_Derive()
  6836 ms  0x159c basekey:0x7f694076d100
  6836 ms     | 0x159c PK11_DeriveWithTemplate()
  6836 ms  0x159c ret:0x7f694076cc00
  6837 ms  0x159c PK11_PubDeriveWithKDF()
  6837 ms  0x159c seckey:0x7f69405d3820
  6837 ms     | 0x159c EC_ValidatePublicKey()
  6837 ms     | 0x159c ret:0x0
  6837 ms  0x159c ret:0x7f694076d100
  6837 ms  SECKEY_ECParamsToKeySize()
  6837 ms  0x159c ret:0xff
  6837 ms  0x159c PK11_DeriveWithFlags()
  6837 ms  0x159c basekey:0x7f694076cc00
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f6952a07d00
  6838 ms  0x159c PK11_Derive()
  6838 ms  0x159c basekey:0x7f694076d100
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f694076de80
  6838 ms  0x159c PK11_DeriveWithFlags()
  6838 ms  0x159c basekey:0x7f694076de80
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f694076cc00
  6838 ms  0x159c PK11_DeriveWithFlags()
  6838 ms  0x159c basekey:0x7f694076de80
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f694076d100
  6838 ms  0x159c PK11_DeriveWithFlags()
  6838 ms  0x159c basekey:0x7f694076de80
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f6952a07d00
  6838 ms  0x159c PK11_Derive()
  6838 ms  0x159c basekey:0x7f6940565080
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f6940565680
  6838 ms  0x159c PK11_DeriveWithFlags()
  6838 ms  0x159c basekey:0x7f694076d100
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f694076de80
  6838 ms  0x159c PK11_DeriveWithFlags()
  6838 ms  0x159c basekey:0x7f694076d100
  6838 ms     | 0x159c PK11_DeriveWithTemplate()
  6838 ms  0x159c ret:0x7f6952a07d00
  6855 ms  SECKEY_ECParamsToKeySize()
  6855 ms  0x159c ret:0x100
  6855 ms  SECKEY_ECParamsToBasePointOrderLen()
  6855 ms  0x159c ret:0x100
  6855 ms  SECKEY_ECParamsToBasePointOrderLen()
  6855 ms  0x159c ret:0x100
  6856 ms  0x159c EC_ValidatePublicKey()
  6859 ms  0x159c ret:0x0
  6863 ms  0x159c PK11_DeriveWithFlags()
  6863 ms  0x159c basekey:0x7f694076d100
  6863 ms     | 0x159c PK11_DeriveWithTemplate()
  6863 ms  0x159c ret:0x7f6952a07d00
  6864 ms  0x159c SSL_AuthCertificateComplete()
  6864 ms  0x159c fd:0x7f6940420640
  6864 ms  0x159c err:0x0
  6864 ms     | 0x159c PK11_DeriveWithFlags()
  6864 ms     | 0x159c basekey:0x7f6940565680
  6864 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6864 ms     | 0x159c ret:0x7f6952a07d00
  6864 ms     | 0x159c PK11_DeriveWithFlags()
  6864 ms     | 0x159c basekey:0x7f6940565680
  6864 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6864 ms     | 0x159c ret:0x7f6940565080
  6864 ms     | 0x159c PK11_DeriveWithFlags()
  6864 ms     | 0x159c basekey:0x7f6940565680
  6864 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6864 ms     | 0x159c ret:0x7f6940565800
  6864 ms     | 0x159c PK11_DeriveWithFlags()
  6864 ms     | 0x159c basekey:0x7f694076cc00
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f6940590780
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f694076cc00
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f69405f8380
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f6940565080
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f69405f8380
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f6940565080
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f69405f8580
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f694076cc00
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f694076de80
  6865 ms     | 0x159c PK11_Encrypt()
  6865 ms     | 0x159c symkey:0x7f6940590780
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f6952a07d00
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f694076de80
  6865 ms     | 0x159c PK11_DeriveWithFlags()
  6865 ms     | 0x159c basekey:0x7f6952a07d00
  6865 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6865 ms     | 0x159c ret:0x7f69405f8580
  6866 ms     | 0x159c PK11_DeriveWithFlags()
  6866 ms     | 0x159c basekey:0x7f6940565680
  6866 ms     |    | 0x159c PK11_DeriveWithTemplate()
  6866 ms     | 0x159c ret:0x7f6940590780
  6866 ms     | 0x159c SECKEY_DestroyPrivateKey()
  6866 ms     | 0x159c privk:0x7f69405e0020::7f69405e0020  60 40 83 40                                      `@.@
  6866 ms     | 0x159c privk:0x7f69405e0020::7f69405e0020  e5 e5 e5 e5                                      ....
  6866 ms     | 0x159c SECKEY_DestroyPrivateKey()
  6866 ms     | 0x159c privk:0x7f69405d3820::7f69405d3820  00 76 7c 40                                      .v|@
  6866 ms     | 0x159c privk:0x7f69405d3820::7f69405d3820  e5 e5 e5 e5                                      ....
  6868 ms  0x159c PK11_Encrypt()
  6868 ms  0x159c symkey:0x7f694076de80
  6868 ms  0x159c PK11_Encrypt()
  6868 ms  0x159c symkey:0x7f694076de80
  7119 ms  0x159c PK11_DeriveWithFlags()
  7119 ms  0x159c basekey:0x7f6940590780
  7119 ms     | 0x159c PK11_DeriveWithTemplate()
  7119 ms  0x159c ret:0x7f694076d100
  7119 ms  0x159c PK11_DeriveWithFlags()
  7119 ms  0x159c basekey:0x7f6940590780
  7119 ms     | 0x159c PK11_DeriveWithTemplate()
  7119 ms  0x159c ret:0x7f694076d100
  7119 ms  0x159c PK11_Encrypt()
  7119 ms  0x159c symkey:0x7f694076de80
  7130 ms  0x159c PK11_Derive()
  7130 ms  0x159c basekey:0x7f694076d100
  7130 ms     | 0x159c PK11_DeriveWithTemplate()
  7130 ms  0x159c ret:0x7f694076cc00
  7130 ms  0x159c PK11_PubDeriveWithKDF()
  7130 ms  0x159c seckey:0x7f69405d7020
  7130 ms     | 0x159c EC_ValidatePublicKey()
  7130 ms     | 0x159c ret:0x0
  7133 ms  0x159c ret:0x7f694076d100
  7133 ms  SECKEY_ECParamsToKeySize()
  7133 ms  0x159c ret:0xff
  7133 ms  0x159c PK11_DeriveWithFlags()
  7133 ms  0x159c basekey:0x7f694076cc00
  7133 ms     | 0x159c PK11_DeriveWithTemplate()
  7133 ms  0x159c ret:0x7f6940565680
  7133 ms  0x159c PK11_Derive()
  7133 ms  0x159c basekey:0x7f694076d100
  7133 ms     | 0x159c PK11_DeriveWithTemplate()
  7133 ms  0x159c ret:0x7f69405f8580
  7133 ms  0x159c PK11_DeriveWithFlags()
  7133 ms  0x159c basekey:0x7f69405f8580
  7133 ms     | 0x159c PK11_DeriveWithTemplate()
  7133 ms  0x159c ret:0x7f694076cc00
  7133 ms  0x159c PK11_DeriveWithFlags()
  7133 ms  0x159c basekey:0x7f69405f8580
  7133 ms     | 0x159c PK11_DeriveWithTemplate()
  7133 ms  0x159c ret:0x7f694076d100
  7133 ms  0x159c PK11_DeriveWithFlags()
  7133 ms  0x159c basekey:0x7f69405f8580
  7133 ms     | 0x159c PK11_DeriveWithTemplate()
  7133 ms  0x159c ret:0x7f6940565680
  7133 ms  0x159c PK11_Derive()
  7133 ms  0x159c basekey:0x7f69405f8900
  7134 ms     | 0x159c PK11_DeriveWithTemplate()
  7134 ms  0x159c ret:0x7f69405f8d80
  7134 ms  0x159c PK11_DeriveWithFlags()
  7134 ms  0x159c basekey:0x7f694076d100
  7134 ms     | 0x159c PK11_DeriveWithTemplate()
  7134 ms  0x159c ret:0x7f69405f8580
  7134 ms  0x159c PK11_DeriveWithFlags()
  7134 ms  0x159c basekey:0x7f694076d100
  7134 ms     | 0x159c PK11_DeriveWithTemplate()
  7134 ms  0x159c ret:0x7f6940565680
  7151 ms  SECKEY_ECParamsToKeySize()
  7151 ms  0x159c ret:0x100
  7151 ms  SECKEY_ECParamsToBasePointOrderLen()
  7151 ms  0x159c ret:0x100
  7151 ms  SECKEY_ECParamsToBasePointOrderLen()
  7151 ms  0x159c ret:0x100
  7151 ms  0x159c EC_ValidatePublicKey()
  7156 ms  0x159c ret:0x0
  7162 ms  0x159c PK11_DeriveWithFlags()
  7162 ms  0x159c basekey:0x7f694076d100
  7162 ms     | 0x159c PK11_DeriveWithTemplate()
  7162 ms  0x159c ret:0x7f6940565680
  7162 ms  0x159c SSL_AuthCertificateComplete()
  7162 ms  0x159c fd:0x7f6940420d00
  7162 ms  0x159c err:0x0
  7162 ms     | 0x159c PK11_DeriveWithFlags()
  7162 ms     | 0x159c basekey:0x7f69405f8d80
  7162 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f6940565680
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f69405f8d80
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f8900
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f69405f8d80
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f8c80
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f694076cc00
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f9880
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f694076cc00
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f9900
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f69405f8900
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f9900
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f69405f8900
  7163 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7163 ms     | 0x159c ret:0x7f69405f9980
  7163 ms     | 0x159c PK11_DeriveWithFlags()
  7163 ms     | 0x159c basekey:0x7f694076cc00
  7164 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7164 ms     | 0x159c ret:0x7f69405f8580
  7164 ms     | 0x159c PK11_Encrypt()
  7164 ms     | 0x159c symkey:0x7f69405f9880
  7165 ms     | 0x159c PK11_DeriveWithFlags()
  7165 ms     | 0x159c basekey:0x7f6940565680
  7165 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7165 ms     | 0x159c ret:0x7f69405f8580
  7165 ms     | 0x159c PK11_DeriveWithFlags()
  7165 ms     | 0x159c basekey:0x7f6940565680
  7165 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7165 ms     | 0x159c ret:0x7f69405f9980
  7165 ms     | 0x159c PK11_DeriveWithFlags()
  7165 ms     | 0x159c basekey:0x7f69405f8d80
  7165 ms     |    | 0x159c PK11_DeriveWithTemplate()
  7165 ms     | 0x159c ret:0x7f69405f9880
  7165 ms     | 0x159c SECKEY_DestroyPrivateKey()
  7165 ms     | 0x159c privk:0x7f69405da020::7f69405da020  60 ca 71 40                                      `.q@
  7166 ms     | 0x159c privk:0x7f69405da020::7f69405da020  e5 e5 e5 e5                                      ....
  7166 ms     | 0x159c SECKEY_DestroyPrivateKey()
  7166 ms     | 0x159c privk:0x7f69405d7020::7f69405d7020  90 c2 61 40                                      ..a@
  7166 ms     | 0x159c privk:0x7f69405d7020::7f69405d7020  e5 e5 e5 e5                                      ....
  7167 ms  0x159c PK11_Encrypt()
  7167 ms  0x159c symkey:0x7f69405f8580
  7428 ms  0x159c PK11_DeriveWithFlags()
  7428 ms  0x159c basekey:0x7f69405f9880
  7428 ms     | 0x159c PK11_DeriveWithTemplate()
  7428 ms  0x159c ret:0x7f694076d100
  7428 ms  0x159c PK11_DeriveWithFlags()
  7428 ms  0x159c basekey:0x7f69405f9880
  7428 ms     | 0x159c PK11_DeriveWithTemplate()
  7428 ms  0x159c ret:0x7f694076d100
  7428 ms  0x159c PR_Close()
  7428 ms  0x159c fd:0x7f6940420d00
  7428 ms     | 0x159c PK11_Encrypt()
  7428 ms     | 0x159c symkey:0x7f69405f8580
  7491 ms  0x159c PK11_Encrypt()
  7491 ms  0x159c symkey:0x7f694076de80
  7514 ms  0x159c PK11_Encrypt()
  7514 ms  0x159c symkey:0x7f6952a07800
  7514 ms  0x159c PK11_Encrypt()
  7514 ms  0x159c symkey:0x7f6952a07800
  7524 ms  0x159c PR_Close()
  7524 ms  0x159c fd:0x7f6952440dc0
           /* TID 0x1591 */
  7528 ms  0x1591 EC_ValidatePublicKey()
  7530 ms  0x1591 ret:0x0
  7530 ms  0x1591 EC_ValidatePublicKey()
  7534 ms  0x1591 ret:0x0
  7534 ms  0x1591 EC_ValidatePublicKey()
  7536 ms  0x1591 ret:0x0
  7536 ms  0x1591 EC_ValidatePublicKey()
  7538 ms  0x1591 ret:0x0
  7538 ms  0x1591 EC_ValidatePublicKey()
  7540 ms  0x1591 ret:0x0
  7540 ms  0x1591 EC_ValidatePublicKey()
  7541 ms  0x1591 ret:0x0
  7541 ms  0x1591 EC_ValidatePublicKey()
  7543 ms  0x1591 ret:0x0
  7543 ms  0x1591 EC_ValidatePublicKey()
  7544 ms  0x1591 ret:0x0
  7545 ms  0x1591 EC_ValidatePublicKey()
  7546 ms  0x1591 ret:0x0
  7546 ms  0x1591 EC_ValidatePublicKey()
  7547 ms  0x1591 ret:0x0
           /* TID 0x159c */
  7548 ms  0x159c PK11_Encrypt()
  7548 ms  0x159c symkey:0x7f6940868200
  7550 ms  0x159c PK11_Encrypt()
  7550 ms  0x159c symkey:0x7f694076de80
  7550 ms  0x159c PK11_Encrypt()
  7550 ms  0x159c symkey:0x7f694076cb80
  7550 ms  0x159c PK11_Encrypt()
  7550 ms  0x159c symkey:0x7f69405f9d00
  7550 ms  0x159c PR_Close()
  7550 ms  0x159c fd:0x7f694071bf10
  7550 ms  0x159c PR_Close()
  7550 ms  0x159c fd:0x7f6952a038b0
  7550 ms  0x159c PR_Close()
  7550 ms  0x159c fd:0x7f69518dcd00
  7550 ms     | 0x159c PK11_Encrypt()
  7550 ms     | 0x159c symkey:0x7f69518e1500
  7550 ms  0x159c PR_Close()
  7550 ms  0x159c fd:0x7f69518dcbb0
  7550 ms  0x159c PR_Close()
  7550 ms  0x159c fd:0x7f69518dc610
  7550 ms     | 0x159c PK11_Encrypt()
  7550 ms     | 0x159c symkey:0x7f695bad3600
  7551 ms  0x159c PR_Close()
  7551 ms  0x159c fd:0x7f6951cfbf70
  7551 ms  0x159c PR_Close()
  7551 ms  0x159c fd:0x7f694071b6a0
  7551 ms     | 0x159c PK11_Encrypt()
  7551 ms     | 0x159c symkey:0x7f69405f9d00
  7551 ms  0x159c PR_Close()
  7551 ms  0x159c fd:0x7f694071b580
  7551 ms     | 0x159c PK11_Encrypt()
  7551 ms     | 0x159c symkey:0x7f6940868200
  7551 ms  0x159c PR_Close()
  7551 ms  0x159c fd:0x7f694071b910
  7551 ms     | 0x159c PK11_Encrypt()
  7551 ms     | 0x159c symkey:0x7f694076cb80
  7551 ms  0x159c PR_Close()
  7551 ms  0x159c fd:0x7f6940420640
  7551 ms     | 0x159c PK11_Encrypt()
  7551 ms     | 0x159c symkey:0x7f694076de80
           /* TID 0x15ea */
  7552 ms  0x15ea PR_Close()
  7552 ms  0x15ea fd:0x7f69404201c0
  7552 ms  0x15ea PR_Close()
  7552 ms  0x15ea fd:0x7f69404201c0
           /* TID 0x1591 */
  7559 ms  0x1591 PR_Close()
  7559 ms  0x1591 fd:0x7f6952cef790
  7559 ms  0x1591 PR_Close()
  7559 ms  0x1591 fd:0x7f694063fc70
  7559 ms  0x1591 PR_Close()
  7559 ms  0x1591 fd:0x7f694063fdc0
  7559 ms  0x1591 PR_Close()
  7559 ms  0x1591 fd:0x7f694063fc70
  7560 ms  0x1591 PR_Close()
  7560 ms  0x1591 fd:0x7f694063fdc0
  7560 ms  0x1591 PR_Close()
  7560 ms  0x1591 fd:0x7f694063fc70
           /* TID 0x15fe */
  7563 ms  0x15fe PR_Close()
  7563 ms  0x15fe fd:0x7f694063fc70
           /* TID 0x159c */
  7568 ms  0x159c SSL_ImportFD()
  7568 ms  0x159c ret:0x7f694071b700
  7568 ms  0x159c SSL_AuthCertificateHook()
  7568 ms  0x159c fd:0x7f694071b700
  7568 ms  0x159c ret:0x0
  7568 ms  0x159c PR_Connect()
  7568 ms  0x159c fd:0x7f694071b700
  7570 ms  0x159c PK11_Encrypt()
  7570 ms  0x159c symkey:0x7f6952a07800
  7570 ms  0x159c PR_Close()
  7570 ms  0x159c fd:0x7f6952a03400
  7570 ms     | 0x159c PK11_Encrypt()
  7570 ms     | 0x159c symkey:0x7f6952a07800
           /* TID 0x1591 */
  7580 ms  0x1591 PR_Close()
  7580 ms  0x1591 fd:0x7f694063fdc0
  7580 ms  0x1591 PR_Close()
  7580 ms  0x1591 fd:0x7f69407be3d0
  7585 ms  0x1591 PR_Close()
  7585 ms  0x1591 fd:0x7f694063fdc0
  7585 ms  0x1591 PR_Close()
  7585 ms  0x1591 fd:0x7f69407be3d0
  7585 ms  0x1591 PR_Close()
  7585 ms  0x1591 fd:0x7f695c7c89a0
  7585 ms  0x1591 PR_Close()
  7585 ms  0x1591 fd:0x7f695c7c88b0
  7585 ms  0x1591 PR_Close()
  7585 ms  0x1591 fd:0x7f695c7c8a60
  7588 ms  0x1591 PR_Close()
  7588 ms  0x1591 fd:0x7f69407be400
  7590 ms  0x1591 PR_Close()
  7590 ms  0x1591 fd:0x7f69407be400
  7592 ms  0x1591 PR_Close()
  7592 ms  0x1591 fd:0x7f694063fdc0
  7592 ms  0x1591 PR_Close()
  7592 ms  0x1591 fd:0x7f69407be520
  7593 ms  0x1591 PR_Close()
  7593 ms  0x1591 fd:0x7f694063fdc0
  7593 ms  0x1591 PR_Close()
  7593 ms  0x1591 fd:0x7f69407be520
  7595 ms  0x1591 PR_Close()
  7595 ms  0x1591 fd:0x7f69407be6d0
  7596 ms  0x1591 PR_Close()
  7596 ms  0x1591 fd:0x7f69407be6d0
  7598 ms  0x1591 PR_Close()
  7598 ms  0x1591 fd:0x7f694063fdc0
  7598 ms  0x1591 PR_Close()
  7598 ms  0x1591 fd:0x7f69407be850
  7599 ms  0x1591 PR_Close()
  7599 ms  0x1591 fd:0x7f694063fdc0
  7599 ms  0x1591 PR_Close()
  7599 ms  0x1591 fd:0x7f69407be850
           /* TID 0x159c */
  7605 ms  0x159c SECKEY_CreateECPrivateKey()
  7605 ms  0x159c cx:0x7f69518eb3e8
  7606 ms     | 0x159c EC_ValidatePublicKey()
  7606 ms     | 0x159c ret:0x0
  7606 ms  0x159c ret:0x7f69405dd820::7f69405dd820  a0 c1 6f 51                                      ..oQ
  7606 ms  0x159c SECKEY_CreateECPrivateKey()
  7606 ms  0x159c cx:0x7f69518eb3e8
  7606 ms     | 0x159c EC_ValidatePublicKey()
  7608 ms     | 0x159c ret:0x0
  7608 ms  0x159c ret:0x7f69405e2020::7f69405e2020  20 c4 6f 51                                       .oQ
           /* TID 0x1591 */
  7608 ms  0x1591 PR_Close()
  7608 ms  0x1591 fd:0x7f6940420e50
  7610 ms  0x1591 PR_Close()
  7610 ms  0x1591 fd:0x7f6940420e50
  7616 ms  0x1591 PR_Close()
  7616 ms  0x1591 fd:0x7f694081c160
  7617 ms  0x1591 PR_Close()
  7617 ms  0x1591 fd:0x7f694081c160
  7619 ms  0x1591 PR_Close()
  7619 ms  0x1591 fd:0x7f694081c190
           /* TID 0x15fe */
  7624 ms  0x15fe PR_Close()
  7624 ms  0x15fe fd:0x7f694081c490
  7625 ms  0x15fe PR_Close()
  7625 ms  0x15fe fd:0x7f694081c490
           /* TID 0x1591 */
  7625 ms  0x1591 PR_Close()
  7625 ms  0x1591 fd:0x7f694063fdc0
  7625 ms  0x1591 PR_Close()
  7625 ms  0x1591 fd:0x7f694081c700
           /* TID 0x15fe */
  7632 ms  0x15fe PR_Close()
  7632 ms  0x15fe fd:0x7f694063fc70
           /* TID 0x15a4 */
  7635 ms  0x15a4 PR_Close()
  7635 ms  0x15a4 fd:0x7f6940420ca0
           /* TID 0x15fe */
  7655 ms  0x15fe PR_Close()
  7655 ms  0x15fe fd:0x7f69404200a0
           /* TID 0x159c */
  7663 ms  0x159c PK11_Derive()
  7663 ms  0x159c basekey:0x7f6952a07580
  7663 ms     | 0x159c PK11_DeriveWithTemplate()
  7663 ms  0x159c ret:0x7f6952a07880
  7663 ms  0x159c PK11_PubDeriveWithKDF()
  7663 ms  0x159c seckey:0x7f69405dd820
  7663 ms     | 0x159c EC_ValidatePublicKey()
  7663 ms     | 0x159c ret:0x0
  7663 ms  0x159c ret:0x7f6952a07580
  7663 ms  SECKEY_ECParamsToKeySize()
  7663 ms  0x159c ret:0xff
  7663 ms  0x159c PK11_DeriveWithFlags()
  7663 ms  0x159c basekey:0x7f6952a07880
  7663 ms     | 0x159c PK11_DeriveWithTemplate()
  7663 ms  0x159c ret:0x7f6952a07780
  7663 ms  0x159c PK11_Derive()
  7663 ms  0x159c basekey:0x7f6952a07580
  7663 ms     | 0x159c PK11_DeriveWithTemplate()
  7663 ms  0x159c ret:0x7f6952a07b00
  7663 ms  0x159c PK11_DeriveWithFlags()
  7663 ms  0x159c basekey:0x7f6952a07b00
  7663 ms     | 0x159c PK11_DeriveWithTemplate()
  7663 ms  0x159c ret:0x7f6952a07880
  7664 ms  0x159c PK11_DeriveWithFlags()
  7664 ms  0x159c basekey:0x7f6952a07b00
  7664 ms     | 0x159c PK11_DeriveWithTemplate()
  7664 ms  0x159c ret:0x7f6952a07580
  7664 ms  0x159c PK11_DeriveWithFlags()
  7664 ms  0x159c basekey:0x7f6952a07b00
  7664 ms     | 0x159c PK11_DeriveWithTemplate()
  7664 ms  0x159c ret:0x7f6952a07780
  7664 ms  0x159c PK11_Derive()
  7664 ms  0x159c basekey:0x7f6952a07c80
  7664 ms     | 0x159c PK11_DeriveWithTemplate()
  7664 ms  0x159c ret:0x7f6952a07800
  7664 ms  0x159c PK11_DeriveWithFlags()
  7664 ms  0x159c basekey:0x7f6952a07580
  7664 ms     | 0x159c PK11_DeriveWithTemplate()
  7664 ms  0x159c ret:0x7f6952a07b00
  7664 ms  0x159c PK11_DeriveWithFlags()
  7664 ms  0x159c basekey:0x7f6952a07580
  7664 ms     | 0x159c PK11_DeriveWithTemplate()
  7664 ms  0x159c ret:0x7f6952a07780
  7666 ms  0x159c PK11_DeriveWithFlags()
  7666 ms  0x159c basekey:0x7f6952a07580
  7666 ms     | 0x159c PK11_DeriveWithTemplate()
  7666 ms  0x159c ret:0x7f6952a07780
           /* TID 0x1596 */
  7670 ms  0x1596 PR_Close()
  7670 ms  0x1596 fd:0x7f695b89fdf0
           /* TID 0x159c */
  7671 ms  0x159c PR_Close()
  7671 ms  0x159c fd:0x7f694071b700
  7671 ms     | 0x159c SECKEY_DestroyPrivateKey()
  7671 ms     | 0x159c privk:0x7f69405e2020::7f69405e2020  20 c4 6f 51                                       .oQ
  7671 ms     | 0x159c privk:0x7f69405e2020::7f69405e2020  e5 e5 e5 e5                                      ....
  7671 ms     | 0x159c SECKEY_DestroyPrivateKey()
  7671 ms     | 0x159c privk:0x7f69405dd820::7f69405dd820  a0 c1 6f 51                                      ..oQ
  7671 ms     | 0x159c privk:0x7f69405dd820::7f69405dd820  e5 e5 e5 e5                                      ....
  7672 ms  0x159c PR_Connect()
  7672 ms  0x159c fd:0x7f6940581be0
  7674 ms  0x159c PR_Close()
  7674 ms  0x159c fd:0x7f6940581be0
           /* TID 0x15fe */
  7681 ms  0x15fe PR_Close()
  7681 ms  0x15fe fd:0x7f6940420e20
           /* TID 0x1596 */
  7688 ms  0x1596 PR_Close()
  7688 ms  0x1596 fd:0x7f6957ba8820
           /* TID 0x159c */
  7688 ms  0x159c PR_Close()
  7688 ms  0x159c fd:0x7f6951cfbe50
           /* TID 0x15ea */
  7689 ms  0x15ea PR_Close()
  7689 ms  0x15ea fd:0x7f6940581be0
  7689 ms  0x15ea PR_Close()
  7689 ms  0x15ea fd:0x7f6940581be0
  7689 ms  0x15ea PR_Close()
  7689 ms  0x15ea fd:0x7f6940581be0
  7689 ms  0x15ea PR_Close()
  7689 ms  0x15ea fd:0x7f694063f2b0
           /* TID 0x15fe */
  7690 ms  0x15fe PR_Close()
  7690 ms  0x15fe fd:0x7f694063f2b0
           /* TID 0x15a4 */
  7693 ms  0x15a4 PR_Close()
  7693 ms  0x15a4 fd:0x7f69518757c0
  7693 ms  0x15a4 PR_Close()
  7693 ms  0x15a4 fd:0x7f6951875850
           /* TID 0x1596 */
  7700 ms  0x1596 PR_Close()
  7700 ms  0x1596 fd:0x7f6952a9b1f0
           /* TID 0x1591 */
  7702 ms  0x1591 PR_Close()
  7702 ms  0x1591 fd:0x7f694063fdc0
  7703 ms  0x1591 PR_Close()
  7703 ms  0x1591 fd:0x7f6951875850
           /* TID 0x15fe */
  7704 ms  0x15fe PR_Close()
  7704 ms  0x15fe fd:0x7f69407bea90
  7707 ms  0x15fe PR_Close()
  7707 ms  0x15fe fd:0x7f69407bea90
  7725 ms  0x15fe PR_Close()
  7725 ms  0x15fe fd:0x7f6940581b50
  7726 ms  0x15fe PR_Close()
  7726 ms  0x15fe fd:0x7f6940581b50
  7748 ms  0x15fe PR_Close()
  7748 ms  0x15fe fd:0x7f694063f130
  7750 ms  0x15fe PR_Close()
  7750 ms  0x15fe fd:0x7f694063f160
  7768 ms  0x15fe PR_Close()
  7768 ms  0x15fe fd:0x7f694071b2e0
  7774 ms  0x15fe PR_Close()
  7774 ms  0x15fe fd:0x7f695150c5e0
  7781 ms  0x15fe PR_Close()
  7781 ms  0x15fe fd:0x7f6951875790
  7791 ms  0x15fe PR_Close()
  7791 ms  0x15fe fd:0x7f69518758e0
  7793 ms  0x15fe PR_Close()
  7793 ms  0x15fe fd:0x7f69518758e0
           /* TID 0x1591 */
  7961 ms  0x1591 PR_Close()
  7961 ms  0x1591 fd:0x7f69405811c0
  7961 ms  0x1591 PR_Close()
  7961 ms  0x1591 fd:0x7f69405811c0
  7966 ms  0x1591 PR_Close()
  7966 ms  0x1591 fd:0x7f6979bda130
  7967 ms  0x1591 PR_Close()
  7967 ms  0x1591 fd:0x7f6979bda190
Process terminated
