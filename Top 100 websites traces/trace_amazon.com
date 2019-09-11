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
           /* TID 0x68ea */
   255 ms  0x68ea SSL_ImportFD()
   255 ms  0x68ea ret:0x7f5fcc84e1f0
   255 ms  0x68ea SSL_AuthCertificateHook()
   255 ms  0x68ea fd:0x7f5fcc84e1f0
   255 ms  0x68ea ret:0x0
   256 ms  0x68ea PR_Connect()
   256 ms  0x68ea fd:0x7f5fcc84e1f0
   475 ms  0x68ea SECKEY_CreateECPrivateKey()
   475 ms  0x68ea cx:0x7f5fc7bd8948
   477 ms     | 0x68ea EC_ValidatePublicKey()
   477 ms     | 0x68ea ret:0x0
   477 ms  0x68ea ret:0x7f5fc7a3b020::7f5fc7a3b020  50 db ab c7                                      P...
   477 ms  0x68ea SECKEY_CreateECPrivateKey()
   477 ms  0x68ea cx:0x7f5fc7bd8948
   479 ms     | 0x68ea EC_ValidatePublicKey()
   484 ms     | 0x68ea ret:0x0
   484 ms  0x68ea ret:0x7f5fc7a3d020::7f5fc7a3d020  30 dd ab c7                                      0...
           /* TID 0x6955 */
   518 ms  0x6955 PR_Close()
   518 ms  0x6955 fd:0x7f5fcc84e130
   521 ms  0x6955 PR_Close()
   521 ms  0x6955 fd:0x7f5fcc84e130
           /* TID 0x68ea */
   713 ms  SECKEY_ECParamsToKeySize()
   713 ms  0x68ea ret:0x100
   713 ms  0x68ea SECKEY_CreateECPrivateKey()
   713 ms  0x68ea cx:0x7f5fc7bd8948
   715 ms     | 0x68ea EC_ValidatePublicKey()
   720 ms     | 0x68ea ret:0x0
   720 ms  0x68ea ret:0x7f5fc7a46020::7f5fc7a46020  90 47 ae c7                                      .G..
   721 ms  0x68ea PK11_PubDeriveWithKDF()
   721 ms  0x68ea seckey:0x7f5fc7a46020
   721 ms     | 0x68ea EC_ValidatePublicKey()
   726 ms     | 0x68ea ret:0x0
   730 ms  0x68ea ret:0x7f5fc96e3c80
   730 ms  0x68ea PK11_DeriveWithFlags()
   730 ms  0x68ea basekey:0x7f5fc96e3c80
   730 ms     | 0x68ea PK11_DeriveWithTemplate()
   730 ms  0x68ea ret:0x7f5fc96e3c00
   730 ms  0x68ea PK11_Derive()
   730 ms  0x68ea basekey:0x7f5fc96e3c00
   730 ms     | 0x68ea PK11_DeriveWithTemplate()
   730 ms  0x68ea ret:0x7f5fc96e3d80
   730 ms  0x68ea SECKEY_DestroyPrivateKey()
   730 ms  0x68ea privk:0x7f5fc7a46020::7f5fc7a46020  90 47 ae c7                                      .G..
   731 ms  0x68ea privk:0x7f5fc7a46020::7f5fc7a46020  e5 e5 e5 e5                                      ....
   731 ms  0x68ea PK11_Encrypt()
   731 ms  0x68ea symkey:0x7f5fc9afb400
           /* TID 0x6955 */
   733 ms  0x6955 PR_Close()
   733 ms  0x6955 fd:0x7f5fcc84ec70
           /* TID 0x68ea */
   734 ms  0x68ea PR_Connect()
   734 ms  0x68ea fd:0x7f5fcc84ecd0
           /* TID 0x68f2 */
   788 ms  0x68f2 PR_Close()
   788 ms  0x68f2 fd:0x7f5fcc84eb50
           /* TID 0x6948 */
   788 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   788 ms  0x6948 ret:0x0
           /* TID 0x68ea */
   789 ms  0x68ea SSL_AuthCertificateComplete()
   789 ms  0x68ea fd:0x7f5fcc84e1f0
   789 ms  0x68ea err:0x0
   789 ms  0x68ea PK11_Encrypt()
   789 ms  0x68ea symkey:0x7f5fc9afb400
   951 ms  0x68ea SECKEY_DestroyPrivateKey()
   951 ms  0x68ea privk:0x7f5fc7a3d020::7f5fc7a3d020  30 dd ab c7                                      0...
   951 ms  0x68ea privk:0x7f5fc7a3d020::7f5fc7a3d020  e5 e5 e5 e5                                      ....
   952 ms  0x68ea SECKEY_DestroyPrivateKey()
   952 ms  0x68ea privk:0x7f5fc7a3b020::7f5fc7a3b020  50 db ab c7                                      P...
   952 ms  0x68ea privk:0x7f5fc7a3b020::7f5fc7a3b020  e5 e5 e5 e5                                      ....
  1184 ms  0x68ea SSL_ImportFD()
  1184 ms  0x68ea ret:0x7f5fcc84edf0
  1184 ms  0x68ea SSL_AuthCertificateHook()
  1184 ms  0x68ea fd:0x7f5fcc84edf0
  1184 ms  0x68ea ret:0x0
  1184 ms  0x68ea PR_Connect()
  1184 ms  0x68ea fd:0x7f5fcc84edf0
  1211 ms  0x68ea SECKEY_CreateECPrivateKey()
  1211 ms  0x68ea cx:0x7f5fc7ae0588
  1213 ms     | 0x68ea EC_ValidatePublicKey()
  1213 ms     | 0x68ea ret:0x0
  1213 ms  0x68ea ret:0x7f5fc7a3c820::7f5fc7a3c820  30 dd ab c7                                      0...
  1213 ms  0x68ea SECKEY_CreateECPrivateKey()
  1213 ms  0x68ea cx:0x7f5fc7ae0588
  1215 ms     | 0x68ea EC_ValidatePublicKey()
  1220 ms     | 0x68ea ret:0x0
  1220 ms  0x68ea ret:0x7f5fc7a42820::7f5fc7a42820  f0 db ab c7                                      ....
           /* TID 0x6948 */
  1273 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1274 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  1274 ms  SECKEY_ECParamsToKeySize()
  1274 ms  0x68ea ret:0x100
  1274 ms  0x68ea SECKEY_CreateECPrivateKey()
  1274 ms  0x68ea cx:0x7f5fc7ae0588
  1276 ms     | 0x68ea EC_ValidatePublicKey()
  1281 ms     | 0x68ea ret:0x0
  1281 ms  0x68ea ret:0x7f5fc7a46020::7f5fc7a46020  30 48 ae c7                                      0H..
  1282 ms  0x68ea PK11_PubDeriveWithKDF()
  1282 ms  0x68ea seckey:0x7f5fc7a46020
  1282 ms     | 0x68ea EC_ValidatePublicKey()
  1286 ms     | 0x68ea ret:0x0
  1291 ms  0x68ea ret:0x7f5fc96e3c80
  1291 ms  0x68ea PK11_DeriveWithFlags()
  1291 ms  0x68ea basekey:0x7f5fc96e3c80
  1291 ms     | 0x68ea PK11_DeriveWithTemplate()
  1291 ms  0x68ea ret:0x7f5fc7a68800
  1291 ms  0x68ea PK11_Derive()
  1291 ms  0x68ea basekey:0x7f5fc7a68800
  1291 ms     | 0x68ea PK11_DeriveWithTemplate()
  1291 ms  0x68ea ret:0x7f5fc7acbf00
  1291 ms  0x68ea SECKEY_DestroyPrivateKey()
  1291 ms  0x68ea privk:0x7f5fc7a46020::7f5fc7a46020  30 48 ae c7                                      0H..
  1291 ms  0x68ea privk:0x7f5fc7a46020::7f5fc7a46020  e5 e5 e5 e5                                      ....
  1291 ms  0x68ea PK11_Encrypt()
  1291 ms  0x68ea symkey:0x7f5fc7acc400
  1292 ms  0x68ea SSL_AuthCertificateComplete()
  1292 ms  0x68ea fd:0x7f5fcc84edf0
  1292 ms  0x68ea err:0x0
  1292 ms  0x68ea PK11_Encrypt()
  1292 ms  0x68ea symkey:0x7f5fc7acc400
  1343 ms  0x68ea SECKEY_DestroyPrivateKey()
  1343 ms  0x68ea privk:0x7f5fc7a42820::7f5fc7a42820  f0 db ab c7                                      ....
  1344 ms  0x68ea privk:0x7f5fc7a42820::7f5fc7a42820  e5 e5 e5 e5                                      ....
  1344 ms  0x68ea SECKEY_DestroyPrivateKey()
  1344 ms  0x68ea privk:0x7f5fc7a3c820::7f5fc7a3c820  30 dd ab c7                                      0...
  1344 ms  0x68ea privk:0x7f5fc7a3c820::7f5fc7a3c820  e5 e5 e5 e5                                      ....
  1347 ms  0x68ea PK11_Encrypt()
  1347 ms  0x68ea symkey:0x7f5fc7acc400
  1377 ms  0x68ea PK11_Encrypt()
  1377 ms  0x68ea symkey:0x7f5fc7acc400
  1408 ms  0x68ea PK11_Encrypt()
  1408 ms  0x68ea symkey:0x7f5fc7acc400
  1440 ms  0x68ea PK11_Encrypt()
  1440 ms  0x68ea symkey:0x7f5fc7acc400
  1556 ms  0x68ea PK11_Encrypt()
  1556 ms  0x68ea symkey:0x7f5fc7acc400
  1589 ms  0x68ea PK11_Encrypt()
  1589 ms  0x68ea symkey:0x7f5fc7acc400
  1620 ms  0x68ea PK11_Encrypt()
  1620 ms  0x68ea symkey:0x7f5fc7acc400
           /* TID 0x693e */
  1648 ms  0x693e PR_Close()
  1648 ms  0x693e fd:0x7f5fcc84ef10
  1648 ms  0x693e PR_Close()
  1648 ms  0x693e fd:0x7f5fcc84efd0
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84ef10
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84efd0
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84ef10
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84efd0
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84ef10
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84efd0
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84ef10
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84efd0
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84ef10
  1649 ms  0x693e PR_Close()
  1649 ms  0x693e fd:0x7f5fcc84efd0
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84ef10
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84efd0
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84ef10
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84efd0
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84ef10
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84efd0
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84ef10
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84efd0
  1650 ms  0x693e PR_Close()
  1650 ms  0x693e fd:0x7f5fcc84ef10
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84efd0
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84ef10
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84efd0
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84ef10
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84efd0
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84ef10
  1651 ms  0x693e PR_Close()
  1651 ms  0x693e fd:0x7f5fcc84efd0
  1655 ms  0x693e PR_Close()
  1655 ms  0x693e fd:0x7f5fcc84ef10
  1655 ms  0x693e PR_Close()
  1655 ms  0x693e fd:0x7f5fcc84eee0
  1659 ms  0x693e PR_Close()
  1659 ms  0x693e fd:0x7f5fcc84eee0
  1659 ms  0x693e PR_Close()
  1659 ms  0x693e fd:0x7f5fcc84ef10
  1662 ms  0x693e PR_Close()
  1662 ms  0x693e fd:0x7f5fcc84ef10
  1662 ms  0x693e PR_Close()
  1662 ms  0x693e fd:0x7f5fcc84ef10
  1665 ms  0x693e PR_Close()
  1665 ms  0x693e fd:0x7f5fcc84ef10
  1666 ms  0x693e PR_Close()
  1666 ms  0x693e fd:0x7f5fcc84ef10
  1724 ms  0x693e PR_Close()
  1724 ms  0x693e fd:0x7f5fcc84ef10
  1725 ms  0x693e PR_Close()
  1725 ms  0x693e fd:0x7f5fcc84ef10
  1737 ms  0x693e PR_Close()
  1737 ms  0x693e fd:0x7f5fcc84ef10
  1737 ms  0x693e PR_Close()
  1737 ms  0x693e fd:0x7f5fc7ad1370
  1743 ms  0x693e PR_Close()
  1743 ms  0x693e fd:0x7f5fc7ad1370
  1744 ms  0x693e PR_Close()
  1744 ms  0x693e fd:0x7f5fc7ad1370
  1745 ms  0x693e PR_Close()
  1745 ms  0x693e fd:0x7f5fc7ad1370
  1745 ms  0x693e PR_Close()
  1745 ms  0x693e fd:0x7f5fc7ad1370
           /* TID 0x693b */
  1745 ms  0x693b PR_Close()
  1745 ms  0x693b fd:0x7f5fc7ad1370
  1745 ms  0x693b PR_Close()
  1745 ms  0x693b fd:0x7f5fc7ad1370
  1745 ms  0x693b PR_Close()
  1745 ms  0x693b fd:0x7f5fc7ad1370
  1745 ms  0x693b PR_Close()
  1745 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
  1746 ms  0x693b PR_Close()
  1746 ms  0x693b fd:0x7f5fc7ad1370
           /* TID 0x6955 */
  2248 ms  0x6955 PR_Close()
  2248 ms  0x6955 fd:0x7f5fc7ad1490
  2250 ms  0x6955 PR_Close()
  2250 ms  0x6955 fd:0x7f5fc7ad1490
  2704 ms  0x6955 PR_Close()
  2704 ms  0x6955 fd:0x7f5fc7ad1490
           /* TID 0x68f2 */
  4134 ms  0x68f2 PR_Close()
  4134 ms  0x68f2 fd:0x7f5fc7ad1490
  4134 ms  0x68f2 PR_Close()
  4134 ms  0x68f2 fd:0x7f5fc7ad14f0
           /* TID 0x68ea */
  4530 ms  0x68ea SSL_ImportFD()
  4530 ms  0x68ea ret:0x7f5fc8ed55e0
  4530 ms  0x68ea SSL_AuthCertificateHook()
  4530 ms  0x68ea fd:0x7f5fc8ed55e0
  4530 ms  0x68ea ret:0x0
  4530 ms  0x68ea PR_Connect()
  4530 ms  0x68ea fd:0x7f5fc8ed55e0
  4555 ms  0x68ea SECKEY_CreateECPrivateKey()
  4555 ms  0x68ea cx:0x7f5fc7ae08c8
  4556 ms     | 0x68ea EC_ValidatePublicKey()
  4556 ms     | 0x68ea ret:0x0
  4556 ms  0x68ea ret:0x7f5fb6ac5820::7f5fb6ac5820  f0 86 ae b6                                      ....
  4556 ms  0x68ea SECKEY_CreateECPrivateKey()
  4556 ms  0x68ea cx:0x7f5fc7ae08c8
  4556 ms     | 0x68ea EC_ValidatePublicKey()
  4558 ms     | 0x68ea ret:0x0
  4558 ms  0x68ea ret:0x7f5fb6ac7820::7f5fb6ac7820  70 89 ae b6                                      p...
           /* TID 0x6948 */
  4612 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  4612 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  4614 ms  SECKEY_ECParamsToKeySize()
  4614 ms  0x68ea ret:0x100
  4614 ms  0x68ea SECKEY_CreateECPrivateKey()
  4614 ms  0x68ea cx:0x7f5fc7ae08c8
  4615 ms     | 0x68ea EC_ValidatePublicKey()
  4618 ms     | 0x68ea ret:0x0
  4619 ms  0x68ea ret:0x7f5fb6ad6020::7f5fb6ad6020  b0 00 a6 b6                                      ....
  4619 ms  0x68ea PK11_PubDeriveWithKDF()
  4619 ms  0x68ea seckey:0x7f5fb6ad6020
  4619 ms     | 0x68ea EC_ValidatePublicKey()
  4622 ms     | 0x68ea ret:0x0
  4626 ms  0x68ea ret:0x7f5fc96e3c80
  4626 ms  0x68ea PK11_DeriveWithFlags()
  4626 ms  0x68ea basekey:0x7f5fc96e3c80
  4626 ms     | 0x68ea PK11_DeriveWithTemplate()
  4626 ms  0x68ea ret:0x7f5fc8f5ac00
  4626 ms  0x68ea PK11_Derive()
  4626 ms  0x68ea basekey:0x7f5fc8f5ac00
  4626 ms     | 0x68ea PK11_DeriveWithTemplate()
  4626 ms  0x68ea ret:0x7f5fc8f5ac80
  4626 ms  0x68ea SECKEY_DestroyPrivateKey()
  4626 ms  0x68ea privk:0x7f5fb6ad6020::7f5fb6ad6020  b0 00 a6 b6                                      ....
  4626 ms  0x68ea privk:0x7f5fb6ad6020::7f5fb6ad6020  e5 e5 e5 e5                                      ....
  4627 ms  0x68ea PK11_Encrypt()
  4627 ms  0x68ea symkey:0x7f5fc8f5ae00
  4655 ms  0x68ea SSL_AuthCertificateComplete()
  4655 ms  0x68ea fd:0x7f5fc8ed55e0
  4655 ms  0x68ea err:0x0
  4655 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  4655 ms     | 0x68ea privk:0x7f5fb6ac7820::7f5fb6ac7820  70 89 ae b6                                      p...
  4655 ms     | 0x68ea privk:0x7f5fb6ac7820::7f5fb6ac7820  e5 e5 e5 e5                                      ....
  4655 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  4655 ms     | 0x68ea privk:0x7f5fb6ac5820::7f5fb6ac5820  f0 86 ae b6                                      ....
  4655 ms     | 0x68ea privk:0x7f5fb6ac5820::7f5fb6ac5820  e5 e5 e5 e5                                      ....
  4656 ms  0x68ea PK11_Encrypt()
  4656 ms  0x68ea symkey:0x7f5fc8f5ae00
  4657 ms  0x68ea PK11_Encrypt()
  4657 ms  0x68ea symkey:0x7f5fc8f5ae00
  4658 ms  0x68ea PK11_Encrypt()
  4658 ms  0x68ea symkey:0x7f5fc8f5ae00
           /* TID 0x6901 */
  4865 ms  0x6901 PR_Close()
  4865 ms  0x6901 fd:0x7f5fc8ed5e50
           /* TID 0x68ea */
  4948 ms  0x68ea SSL_ImportFD()
  4948 ms  0x68ea ret:0x7f5fb6bd5eb0
  4948 ms  0x68ea SSL_AuthCertificateHook()
  4948 ms  0x68ea fd:0x7f5fb6bd5eb0
  4948 ms  0x68ea ret:0x0
  4948 ms  0x68ea PR_Connect()
  4948 ms  0x68ea fd:0x7f5fb6bd5eb0
  4949 ms  0x68ea SSL_ImportFD()
  4949 ms  0x68ea ret:0x7f5fb6bd5ee0
  4949 ms  0x68ea SSL_AuthCertificateHook()
  4949 ms  0x68ea fd:0x7f5fb6bd5ee0
  4949 ms  0x68ea ret:0x0
  4949 ms  0x68ea PR_Connect()
  4949 ms  0x68ea fd:0x7f5fb6bd5ee0
  4949 ms  0x68ea SSL_ImportFD()
  4949 ms  0x68ea ret:0x7f5fb68b80d0
  4949 ms  0x68ea SSL_AuthCertificateHook()
  4949 ms  0x68ea fd:0x7f5fb68b80d0
  4949 ms  0x68ea ret:0x0
  4949 ms  0x68ea PR_Connect()
  4949 ms  0x68ea fd:0x7f5fb68b80d0
  4974 ms  0x68ea SECKEY_CreateECPrivateKey()
  4974 ms  0x68ea cx:0x7f5fc7ae1288
  4975 ms     | 0x68ea EC_ValidatePublicKey()
  4975 ms     | 0x68ea ret:0x0
  4975 ms  0x68ea ret:0x7f5fb6bc2820::7f5fb6bc2820  70 ee b9 b6                                      p...
  4975 ms  0x68ea SECKEY_CreateECPrivateKey()
  4975 ms  0x68ea cx:0x7f5fc7ae1288
  4975 ms     | 0x68ea EC_ValidatePublicKey()
  4977 ms     | 0x68ea ret:0x0
  4977 ms  0x68ea ret:0x7f5fb6bc4820::7f5fb6bc4820  60 70 8c b6                                      `p..
  4977 ms  0x68ea SECKEY_CreateECPrivateKey()
  4977 ms  0x68ea cx:0x7f5fc7ae10e8
  4977 ms     | 0x68ea EC_ValidatePublicKey()
  4977 ms     | 0x68ea ret:0x0
  4978 ms  0x68ea ret:0x7f5fb6bc7020::7f5fb6bc7020  f0 71 8c b6                                      .q..
  4978 ms  0x68ea SECKEY_CreateECPrivateKey()
  4978 ms  0x68ea cx:0x7f5fc7ae10e8
  4978 ms     | 0x68ea EC_ValidatePublicKey()
  4980 ms     | 0x68ea ret:0x0
  4980 ms  0x68ea ret:0x7f5fb6bc9020::7f5fb6bc9020  80 73 8c b6                                      .s..
  4981 ms  0x68ea SECKEY_CreateECPrivateKey()
  4981 ms  0x68ea cx:0x7f5fc7ae1428
  4981 ms     | 0x68ea EC_ValidatePublicKey()
  4981 ms     | 0x68ea ret:0x0
  4981 ms  0x68ea ret:0x7f5fb6bcb820::7f5fb6bcb820  c0 74 8c b6                                      .t..
  4981 ms  0x68ea SECKEY_CreateECPrivateKey()
  4981 ms  0x68ea cx:0x7f5fc7ae1428
  4982 ms     | 0x68ea EC_ValidatePublicKey()
  4983 ms     | 0x68ea ret:0x0
  4983 ms  0x68ea ret:0x7f5fb6bcd820::7f5fb6bcd820  a0 76 8c b6                                      .v..
           /* TID 0x6948 */
  5030 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5030 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  5031 ms  SECKEY_ECParamsToKeySize()
  5031 ms  0x68ea ret:0x100
  5031 ms  0x68ea SECKEY_CreateECPrivateKey()
  5031 ms  0x68ea cx:0x7f5fc7ae1288
  5034 ms     | 0x68ea EC_ValidatePublicKey()
  5042 ms     | 0x68ea ret:0x0
  5042 ms  0x68ea ret:0x7f5fc7a45020::7f5fc7a45020  f0 7b 8c b6                                      .{..
  5042 ms  0x68ea PK11_PubDeriveWithKDF()
  5042 ms  0x68ea seckey:0x7f5fc7a45020
  5042 ms     | 0x68ea EC_ValidatePublicKey()
  5046 ms     | 0x68ea ret:0x0
  5050 ms  0x68ea ret:0x7f5fc96e3c80
  5050 ms  0x68ea PK11_DeriveWithFlags()
  5050 ms  0x68ea basekey:0x7f5fc96e3c80
  5050 ms     | 0x68ea PK11_DeriveWithTemplate()
  5050 ms  0x68ea ret:0x7f5fb6885b80
  5050 ms  0x68ea PK11_Derive()
  5050 ms  0x68ea basekey:0x7f5fb6885b80
  5050 ms     | 0x68ea PK11_DeriveWithTemplate()
  5050 ms  0x68ea ret:0x7f5fb6886680
  5050 ms  0x68ea SECKEY_DestroyPrivateKey()
  5050 ms  0x68ea privk:0x7f5fc7a45020::7f5fc7a45020  f0 7b 8c b6                                      .{..
  5051 ms  0x68ea privk:0x7f5fc7a45020::7f5fc7a45020  e5 e5 e5 e5                                      ....
  5051 ms  0x68ea PK11_Encrypt()
  5051 ms  0x68ea symkey:0x7f5fb6886900
  5052 ms  0x68ea SSL_AuthCertificateComplete()
  5052 ms  0x68ea fd:0x7f5fb6bd5ee0
  5052 ms  0x68ea err:0x0
           /* TID 0x6948 */
  5062 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5062 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  5062 ms  SECKEY_ECParamsToKeySize()
  5062 ms  0x68ea ret:0x100
  5062 ms  0x68ea SECKEY_CreateECPrivateKey()
  5062 ms  0x68ea cx:0x7f5fc7ae1428
  5063 ms     | 0x68ea EC_ValidatePublicKey()
  5066 ms     | 0x68ea ret:0x0
  5066 ms  0x68ea ret:0x7f5fb691b820::7f5fb691b820  b0 80 ae b6                                      ....
  5066 ms  0x68ea PK11_PubDeriveWithKDF()
  5066 ms  0x68ea seckey:0x7f5fb691b820
  5066 ms     | 0x68ea EC_ValidatePublicKey()
  5068 ms     | 0x68ea ret:0x0
  5070 ms  0x68ea ret:0x7f5fc96e3c80
  5070 ms  0x68ea PK11_DeriveWithFlags()
  5070 ms  0x68ea basekey:0x7f5fc96e3c80
  5070 ms     | 0x68ea PK11_DeriveWithTemplate()
  5070 ms  0x68ea ret:0x7f5fb690b200
  5070 ms  0x68ea PK11_Derive()
  5070 ms  0x68ea basekey:0x7f5fb690b200
  5070 ms     | 0x68ea PK11_DeriveWithTemplate()
  5071 ms  0x68ea ret:0x7f5fb690b280
  5071 ms  0x68ea SECKEY_DestroyPrivateKey()
  5071 ms  0x68ea privk:0x7f5fb691b820::7f5fb691b820  b0 80 ae b6                                      ....
  5071 ms  0x68ea privk:0x7f5fb691b820::7f5fb691b820  e5 e5 e5 e5                                      ....
  5072 ms  0x68ea PK11_Encrypt()
  5072 ms  0x68ea symkey:0x7f5fb690b400
  5072 ms  0x68ea PK11_Encrypt()
  5072 ms  0x68ea symkey:0x7f5fb6886900
  5072 ms  0x68ea PK11_Encrypt()
  5072 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x6948 */
  5073 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5073 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  5074 ms  SECKEY_ECParamsToKeySize()
  5074 ms  0x68ea ret:0x100
  5074 ms  0x68ea SECKEY_CreateECPrivateKey()
  5074 ms  0x68ea cx:0x7f5fc7ae10e8
  5074 ms     | 0x68ea EC_ValidatePublicKey()
  5076 ms     | 0x68ea ret:0x0
  5076 ms  0x68ea ret:0x7f5fb691d820::7f5fb691d820  e0 82 ae b6                                      ....
  5076 ms  0x68ea PK11_PubDeriveWithKDF()
  5076 ms  0x68ea seckey:0x7f5fb691d820
  5076 ms     | 0x68ea EC_ValidatePublicKey()
  5078 ms     | 0x68ea ret:0x0
  5079 ms  0x68ea ret:0x7f5fc96e3c80
  5080 ms  0x68ea PK11_DeriveWithFlags()
  5080 ms  0x68ea basekey:0x7f5fc96e3c80
  5080 ms     | 0x68ea PK11_DeriveWithTemplate()
  5080 ms  0x68ea ret:0x7f5fb690b780
  5080 ms  0x68ea PK11_Derive()
  5080 ms  0x68ea basekey:0x7f5fb690b780
  5080 ms     | 0x68ea PK11_DeriveWithTemplate()
  5080 ms  0x68ea ret:0x7f5fb690b800
  5080 ms  0x68ea SECKEY_DestroyPrivateKey()
  5080 ms  0x68ea privk:0x7f5fb691d820::7f5fb691d820  e0 82 ae b6                                      ....
  5080 ms  0x68ea privk:0x7f5fb691d820::7f5fb691d820  e5 e5 e5 e5                                      ....
  5080 ms  0x68ea PK11_Encrypt()
  5080 ms  0x68ea symkey:0x7f5fb690b980
  5080 ms  0x68ea SECKEY_DestroyPrivateKey()
  5080 ms  0x68ea privk:0x7f5fb6bc4820::7f5fb6bc4820  60 70 8c b6                                      `p..
  5080 ms  0x68ea privk:0x7f5fb6bc4820::7f5fb6bc4820  e5 e5 e5 e5                                      ....
  5080 ms  0x68ea SECKEY_DestroyPrivateKey()
  5080 ms  0x68ea privk:0x7f5fb6bc2820::7f5fb6bc2820  70 ee b9 b6                                      p...
  5080 ms  0x68ea privk:0x7f5fb6bc2820::7f5fb6bc2820  e5 e5 e5 e5                                      ....
  5080 ms  0x68ea PK11_Encrypt()
  5080 ms  0x68ea symkey:0x7f5fb6886900
  5083 ms  0x68ea SSL_AuthCertificateComplete()
  5083 ms  0x68ea fd:0x7f5fb68b80d0
  5083 ms  0x68ea err:0x0
  5083 ms  0x68ea SSL_AuthCertificateComplete()
  5083 ms  0x68ea fd:0x7f5fb6bd5eb0
  5083 ms  0x68ea err:0x0
  5083 ms  0x68ea PK11_Encrypt()
  5083 ms  0x68ea symkey:0x7f5fb6886900
  5084 ms  0x68ea PK11_Encrypt()
  5084 ms  0x68ea symkey:0x7f5fb690b400
  5084 ms  0x68ea PK11_Encrypt()
  5084 ms  0x68ea symkey:0x7f5fb6886900
  5084 ms  0x68ea PK11_Encrypt()
  5084 ms  0x68ea symkey:0x7f5fb690b980
  5084 ms  0x68ea PK11_Encrypt()
  5084 ms  0x68ea symkey:0x7f5fb6886900
  5085 ms  0x68ea PK11_Encrypt()
  5085 ms  0x68ea symkey:0x7f5fb6886900
  5097 ms  0x68ea PR_Close()
  5097 ms  0x68ea fd:0x7f5fb68b80d0
  5098 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  5098 ms     | 0x68ea privk:0x7f5fb6bcd820::7f5fb6bcd820  a0 76 8c b6                                      .v..
  5098 ms     | 0x68ea privk:0x7f5fb6bcd820::7f5fb6bcd820  e5 e5 e5 e5                                      ....
  5098 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  5098 ms     | 0x68ea privk:0x7f5fb6bcb820::7f5fb6bcb820  c0 74 8c b6                                      .t..
  5098 ms     | 0x68ea privk:0x7f5fb6bcb820::7f5fb6bcb820  e5 e5 e5 e5                                      ....
  5106 ms  0x68ea SECKEY_DestroyPrivateKey()
  5106 ms  0x68ea privk:0x7f5fb6bc9020::7f5fb6bc9020  80 73 8c b6                                      .s..
  5106 ms  0x68ea privk:0x7f5fb6bc9020::7f5fb6bc9020  e5 e5 e5 e5                                      ....
  5106 ms  0x68ea SECKEY_DestroyPrivateKey()
  5106 ms  0x68ea privk:0x7f5fb6bc7020::7f5fb6bc7020  f0 71 8c b6                                      .q..
  5107 ms  0x68ea privk:0x7f5fb6bc7020::7f5fb6bc7020  e5 e5 e5 e5                                      ....
  5107 ms  0x68ea PR_Close()
  5107 ms  0x68ea fd:0x7f5fb6bd5eb0
  5107 ms     | 0x68ea PK11_Encrypt()
  5107 ms     | 0x68ea symkey:0x7f5fb690b980
           /* TID 0x68f2 */
  5120 ms  0x68f2 PR_Close()
  5120 ms  0x68f2 fd:0x7f5fb685ebb0
           /* TID 0x68ea */
  5130 ms  0x68ea SSL_ImportFD()
  5130 ms  0x68ea ret:0x7f5fb68b8130
  5131 ms  0x68ea SSL_AuthCertificateHook()
  5131 ms  0x68ea fd:0x7f5fb68b8130
  5131 ms  0x68ea ret:0x0
  5131 ms  0x68ea PR_Connect()
  5131 ms  0x68ea fd:0x7f5fb68b8130
           /* TID 0x68f2 */
  5133 ms  0x68f2 PR_Close()
  5133 ms  0x68f2 fd:0x7f5fb685ebb0
  5137 ms  0x68f2 PR_Close()
  5137 ms  0x68f2 fd:0x7f5fb685ebb0
  5145 ms  0x68f2 PR_Close()
  5145 ms  0x68f2 fd:0x7f5fb685ebb0
           /* TID 0x68ea */
  5147 ms  0x68ea PK11_Encrypt()
  5147 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5148 ms  0x68f2 PR_Close()
  5148 ms  0x68f2 fd:0x7f5fb68b8550
           /* TID 0x68ea */
  5148 ms  0x68ea PK11_Encrypt()
  5148 ms  0x68ea symkey:0x7f5fb6886900
  5149 ms  0x68ea PK11_Encrypt()
  5149 ms  0x68ea symkey:0x7f5fb6886900
  5150 ms  0x68ea PK11_Encrypt()
  5150 ms  0x68ea symkey:0x7f5fb6886900
  5151 ms  0x68ea PK11_Encrypt()
  5151 ms  0x68ea symkey:0x7f5fb6886900
  5152 ms  0x68ea PK11_Encrypt()
  5152 ms  0x68ea symkey:0x7f5fb6886900
  5153 ms  0x68ea PK11_Encrypt()
  5153 ms  0x68ea symkey:0x7f5fb6886900
  5174 ms  0x68ea PK11_Encrypt()
  5174 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5180 ms  0x68f2 PR_Close()
  5180 ms  0x68f2 fd:0x7f5fb68b85b0
           /* TID 0x68ea */
  5182 ms  0x68ea PK11_Encrypt()
  5182 ms  0x68ea symkey:0x7f5fb6886900
  5185 ms  0x68ea PK11_Encrypt()
  5185 ms  0x68ea symkey:0x7f5fb6886900
  5203 ms  0x68ea PK11_Encrypt()
  5203 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5211 ms  0x68f2 PR_Close()
  5211 ms  0x68f2 fd:0x7f5fb685ed30
  5212 ms  0x68f2 PR_Close()
  5212 ms  0x68f2 fd:0x7f5fb68b8790
  5212 ms  0x68f2 PR_Close()
  5212 ms  0x68f2 fd:0x7f5fb68b8790
  5213 ms  0x68f2 PR_Close()
  5213 ms  0x68f2 fd:0x7f5fb68b86d0
           /* TID 0x68ea */
  5214 ms  0x68ea SSL_ImportFD()
  5214 ms  0x68ea ret:0x7f5fb69860a0
  5214 ms  0x68ea SSL_AuthCertificateHook()
  5214 ms  0x68ea fd:0x7f5fb69860a0
  5214 ms  0x68ea ret:0x0
  5215 ms  0x68ea PK11_Encrypt()
  5215 ms  0x68ea symkey:0x7f5fb6886900
  5215 ms  0x68ea PR_Connect()
  5215 ms  0x68ea fd:0x7f5fb69860a0
  5215 ms  0x68ea PK11_Encrypt()
  5215 ms  0x68ea symkey:0x7f5fb6886900
  5216 ms  0x68ea PK11_Encrypt()
  5216 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5217 ms  0x68f2 PR_Close()
  5217 ms  0x68f2 fd:0x7f5fb68b8880
  5220 ms  0x68f2 PR_Close()
  5220 ms  0x68f2 fd:0x7f5fb68b86d0
           /* TID 0x68ea */
  5234 ms  0x68ea PK11_Encrypt()
  5234 ms  0x68ea symkey:0x7f5fb6886900
  5235 ms  0x68ea PK11_Encrypt()
  5235 ms  0x68ea symkey:0x7f5fb6886900
  5236 ms  0x68ea PK11_Encrypt()
  5236 ms  0x68ea symkey:0x7f5fb6886900
  5237 ms  0x68ea PK11_Encrypt()
  5237 ms  0x68ea symkey:0x7f5fb6886900
  5239 ms  0x68ea PK11_Encrypt()
  5239 ms  0x68ea symkey:0x7f5fb6886900
  5240 ms  0x68ea PK11_Encrypt()
  5240 ms  0x68ea symkey:0x7f5fb6886900
  5240 ms  0x68ea SECKEY_CreateECPrivateKey()
  5240 ms  0x68ea cx:0x7f5fc7ae1428
  5240 ms     | 0x68ea EC_ValidatePublicKey()
  5240 ms     | 0x68ea ret:0x0
  5241 ms  0x68ea ret:0x7f5fb6930820::7f5fb6930820  70 ee b9 b6                                      p...
  5241 ms  0x68ea SECKEY_CreateECPrivateKey()
  5241 ms  0x68ea cx:0x7f5fc7ae1428
  5241 ms     | 0x68ea EC_ValidatePublicKey()
  5243 ms     | 0x68ea ret:0x0
  5243 ms  0x68ea ret:0x7f5fb6932820::7f5fb6932820  60 40 97 b6                                      `@..
  5247 ms  0x68ea PK11_Encrypt()
  5247 ms  0x68ea symkey:0x7f5fb6886900
  5247 ms  0x68ea PK11_Encrypt()
  5247 ms  0x68ea symkey:0x7f5fb6886900
  5251 ms  0x68ea PK11_Encrypt()
  5251 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5252 ms  0x68f2 PR_Close()
  5252 ms  0x68f2 fd:0x7f5fb68b8490
  5252 ms  0x68f2 PR_Close()
  5252 ms  0x68f2 fd:0x7f5fb68b8490
  5253 ms  0x68f2 PR_Close()
  5253 ms  0x68f2 fd:0x7f5fb68b8490
  5254 ms  0x68f2 PR_Close()
  5254 ms  0x68f2 fd:0x7f5fb68b8490
           /* TID 0x68ea */
  5256 ms  0x68ea PK11_Encrypt()
  5256 ms  0x68ea symkey:0x7f5fb6886900
  5258 ms  0x68ea PK11_Encrypt()
  5258 ms  0x68ea symkey:0x7f5fb6886900
  5260 ms  0x68ea PK11_Encrypt()
  5260 ms  0x68ea symkey:0x7f5fb6886900
  5262 ms  0x68ea PK11_Encrypt()
  5262 ms  0x68ea symkey:0x7f5fb6886900
  5262 ms  0x68ea PK11_Encrypt()
  5262 ms  0x68ea symkey:0x7f5fb6886900
  5264 ms  0x68ea PK11_Encrypt()
  5264 ms  0x68ea symkey:0x7f5fb6886900
  5265 ms  0x68ea PK11_Encrypt()
  5265 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5268 ms  0x68f2 PR_Close()
  5268 ms  0x68f2 fd:0x7f5fb6986fd0
           /* TID 0x68ea */
  5270 ms  0x68ea SECKEY_CreateECPrivateKey()
  5270 ms  0x68ea cx:0x7f5fc7ae10e8
  5270 ms     | 0x68ea EC_ValidatePublicKey()
  5270 ms     | 0x68ea ret:0x0
  5270 ms  0x68ea ret:0x7f5fb6bc5020::7f5fb6bc5020  e0 42 97 b6                                      .B..
  5270 ms  0x68ea SECKEY_CreateECPrivateKey()
  5270 ms  0x68ea cx:0x7f5fc7ae10e8
  5271 ms     | 0x68ea EC_ValidatePublicKey()
  5272 ms     | 0x68ea ret:0x0
  5272 ms  0x68ea ret:0x7f5fb6bc7820::7f5fb6bc7820  50 46 97 b6                                      PF..
           /* TID 0x68f2 */
  5273 ms  0x68f2 PR_Close()
  5273 ms  0x68f2 fd:0x7f5fb685ec10
  5278 ms  0x68f2 PR_Close()
  5278 ms  0x68f2 fd:0x7f5fb68b8370
           /* TID 0x68ea */
  5278 ms  0x68ea PK11_Encrypt()
  5278 ms  0x68ea symkey:0x7f5fb6886900
  5279 ms  0x68ea PK11_Encrypt()
  5279 ms  0x68ea symkey:0x7f5fb6886900
  5279 ms  0x68ea PK11_Encrypt()
  5279 ms  0x68ea symkey:0x7f5fb6886900
  5279 ms  0x68ea PK11_Encrypt()
  5279 ms  0x68ea symkey:0x7f5fb6886900
  5280 ms  0x68ea PK11_Encrypt()
  5280 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5281 ms  0x68f2 PR_Close()
  5281 ms  0x68f2 fd:0x7f5fb68b89a0
  5282 ms  0x68f2 PR_Close()
  5282 ms  0x68f2 fd:0x7f5fb68b8880
           /* TID 0x68ea */
  5283 ms  0x68ea PK11_Encrypt()
  5283 ms  0x68ea symkey:0x7f5fb6886900
  5293 ms  SECKEY_ECParamsToKeySize()
  5293 ms  0x68ea ret:0x100
  5293 ms  0x68ea SECKEY_CreateECPrivateKey()
  5293 ms  0x68ea cx:0x7f5fc7ae1428
  5294 ms     | 0x68ea EC_ValidatePublicKey()
  5296 ms     | 0x68ea ret:0x0
           /* TID 0x6948 */
  5296 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5296 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  5296 ms  0x68ea ret:0x7f5fb6939820::7f5fb6939820  b0 75 8c b6                                      .u..
  5296 ms  0x68ea PK11_PubDeriveWithKDF()
  5296 ms  0x68ea seckey:0x7f5fb6939820
  5296 ms     | 0x68ea EC_ValidatePublicKey()
  5298 ms     | 0x68ea ret:0x0
           /* TID 0x68f2 */
  5304 ms  0x68f2 PR_Close()
  5304 ms  0x68f2 fd:0x7f5fb68b80d0
  5305 ms  0x68f2 PR_Close()
  5305 ms  0x68f2 fd:0x7f5fb68b80d0
  5305 ms  0x68f2 PR_Close()
  5305 ms  0x68f2 fd:0x7f5fb68b80d0
  5306 ms  0x68f2 PR_Close()
  5306 ms  0x68f2 fd:0x7f5fb68b80d0
  5307 ms  0x68f2 PR_Close()
  5307 ms  0x68f2 fd:0x7f5fb68b80d0
           /* TID 0x68ea */
  5310 ms  0x68ea ret:0x7f5fb690b800
  5310 ms  0x68ea PK11_DeriveWithFlags()
  5310 ms  0x68ea basekey:0x7f5fb690b800
  5310 ms     | 0x68ea PK11_DeriveWithTemplate()
  5310 ms  0x68ea ret:0x7f5fb690b780
  5310 ms  0x68ea PK11_Derive()
  5310 ms  0x68ea basekey:0x7f5fb690b780
  5310 ms     | 0x68ea PK11_DeriveWithTemplate()
  5310 ms  0x68ea ret:0x7f5fb690b280
  5310 ms  0x68ea SECKEY_DestroyPrivateKey()
  5310 ms  0x68ea privk:0x7f5fb6939820::7f5fb6939820  b0 75 8c b6                                      .u..
  5310 ms  0x68ea privk:0x7f5fb6939820::7f5fb6939820  e5 e5 e5 e5                                      ....
  5310 ms  0x68ea PK11_Encrypt()
  5310 ms  0x68ea symkey:0x7f5fb690b880
  5313 ms  0x68ea SSL_AuthCertificateComplete()
  5313 ms  0x68ea fd:0x7f5fb69860a0
  5313 ms  0x68ea err:0x0
  5313 ms  0x68ea PK11_Encrypt()
  5313 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5314 ms  0x68f2 PR_Close()
  5314 ms  0x68f2 fd:0x7f5fb68b80d0
  5316 ms  0x68f2 PR_Close()
  5316 ms  0x68f2 fd:0x7f5fb68b80d0
           /* TID 0x68ea */
  5316 ms  0x68ea PK11_Encrypt()
  5316 ms  0x68ea symkey:0x7f5fb690b880
           /* TID 0x68f2 */
  5317 ms  0x68f2 PR_Close()
  5317 ms  0x68f2 fd:0x7f5fb68b80d0
  5318 ms  0x68f2 PR_Close()
  5318 ms  0x68f2 fd:0x7f5fb68b80d0
  5323 ms  0x68f2 PR_Close()
  5323 ms  0x68f2 fd:0x7f5fb68b80d0
  5325 ms  0x68f2 PR_Close()
  5325 ms  0x68f2 fd:0x7f5fb68b80d0
  5325 ms  0x68f2 PR_Close()
  5325 ms  0x68f2 fd:0x7f5fb68b80d0
  5330 ms  0x68f2 PR_Close()
  5330 ms  0x68f2 fd:0x7f5fb68b8970
  5331 ms  0x68f2 PR_Close()
  5331 ms  0x68f2 fd:0x7f5fb68b8970
  5333 ms  0x68f2 PR_Close()
  5333 ms  0x68f2 fd:0x7f5fb68b8610
  5335 ms  0x68f2 PR_Close()
  5335 ms  0x68f2 fd:0x7f5fb68b8f40
           /* TID 0x68ea */
  5336 ms  0x68ea SECKEY_DestroyPrivateKey()
  5336 ms  0x68ea privk:0x7f5fb6932820::7f5fb6932820  60 40 97 b6                                      `@..
  5336 ms  0x68ea privk:0x7f5fb6932820::7f5fb6932820  e5 e5 e5 e5                                      ....
  5336 ms  0x68ea SECKEY_DestroyPrivateKey()
  5336 ms  0x68ea privk:0x7f5fb6930820::7f5fb6930820  70 ee b9 b6                                      p...
  5336 ms  0x68ea privk:0x7f5fb6930820::7f5fb6930820  e5 e5 e5 e5                                      ....
  5336 ms  0x68ea PR_Close()
  5336 ms  0x68ea fd:0x7f5fb69860a0
  5336 ms     | 0x68ea PK11_Encrypt()
  5336 ms     | 0x68ea symkey:0x7f5fb690b880
           /* TID 0x68f2 */
  5336 ms  0x68f2 PR_Close()
  5336 ms  0x68f2 fd:0x7f5fb68b80d0
  5337 ms  0x68f2 PR_Close()
  5337 ms  0x68f2 fd:0x7f5fb68b80d0
  5339 ms  0x68f2 PR_Close()
  5339 ms  0x68f2 fd:0x7f5fb68b8880
  5340 ms  0x68f2 PR_Close()
  5340 ms  0x68f2 fd:0x7f5fb68b8880
  5354 ms  0x68f2 PR_Close()
  5354 ms  0x68f2 fd:0x7f5fb68b80d0
           /* TID 0x68ea */
  5360 ms  0x68ea PK11_Encrypt()
  5360 ms  0x68ea symkey:0x7f5fb6886900
  5361 ms  0x68ea PK11_Encrypt()
  5361 ms  0x68ea symkey:0x7f5fb6886900
  5363 ms  0x68ea PK11_Encrypt()
  5363 ms  0x68ea symkey:0x7f5fb6886900
  5365 ms  0x68ea PK11_Encrypt()
  5365 ms  0x68ea symkey:0x7f5fb6886900
  5366 ms  0x68ea PK11_Encrypt()
  5366 ms  0x68ea symkey:0x7f5fb6886900
  5367 ms  0x68ea PK11_Encrypt()
  5367 ms  0x68ea symkey:0x7f5fb6886900
  5368 ms  0x68ea PK11_Encrypt()
  5368 ms  0x68ea symkey:0x7f5fb6886900
  5369 ms  0x68ea PK11_Encrypt()
  5369 ms  0x68ea symkey:0x7f5fb6886900
  5371 ms  0x68ea PK11_Encrypt()
  5371 ms  0x68ea symkey:0x7f5fb6886900
  5373 ms  0x68ea PK11_Encrypt()
  5373 ms  0x68ea symkey:0x7f5fb6886900
  5375 ms  0x68ea PK11_Encrypt()
  5375 ms  0x68ea symkey:0x7f5fb6886900
  5376 ms  0x68ea PK11_Encrypt()
  5376 ms  0x68ea symkey:0x7f5fb6886900
  5379 ms  0x68ea PK11_Encrypt()
  5379 ms  0x68ea symkey:0x7f5fb6886900
  5385 ms  0x68ea PK11_Encrypt()
  5385 ms  0x68ea symkey:0x7f5fb6886900
  5387 ms  0x68ea PK11_Encrypt()
  5387 ms  0x68ea symkey:0x7f5fb6886900
  5387 ms  0x68ea PK11_Encrypt()
  5387 ms  0x68ea symkey:0x7f5fb6886900
  5387 ms  0x68ea PK11_Encrypt()
  5387 ms  0x68ea symkey:0x7f5fb6886900
  5387 ms  0x68ea PK11_Encrypt()
  5387 ms  0x68ea symkey:0x7f5fb6886900
  5388 ms  0x68ea PK11_Encrypt()
  5388 ms  0x68ea symkey:0x7f5fb6886900
  5388 ms  0x68ea PK11_Encrypt()
  5388 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5389 ms  0x68f2 PR_Close()
  5389 ms  0x68f2 fd:0x7f5fb68b87f0
           /* TID 0x68ea */
  5389 ms  0x68ea PK11_Encrypt()
  5389 ms  0x68ea symkey:0x7f5fb6886900
  5396 ms  0x68ea PK11_Encrypt()
  5396 ms  0x68ea symkey:0x7f5fc8f5ae00
  5397 ms  0x68ea PK11_Encrypt()
  5397 ms  0x68ea symkey:0x7f5fc8f5ae00
  5413 ms  SECKEY_ECParamsToKeySize()
  5414 ms  0x68ea ret:0x100
  5414 ms  0x68ea SECKEY_CreateECPrivateKey()
  5414 ms  0x68ea cx:0x7f5fc7ae10e8
  5414 ms     | 0x68ea EC_ValidatePublicKey()
  5420 ms     | 0x68ea ret:0x0
  5422 ms  0x68ea ret:0x7f5fb617b020::7f5fb617b020  40 4c 97 b6                                      @L..
  5422 ms  0x68ea PK11_PubDeriveWithKDF()
  5422 ms  0x68ea seckey:0x7f5fb617b020
  5422 ms     | 0x68ea EC_ValidatePublicKey()
  5430 ms     | 0x68ea ret:0x0
  5432 ms  0x68ea ret:0x7f5fb690b280
  5432 ms  0x68ea PK11_DeriveWithFlags()
  5432 ms  0x68ea basekey:0x7f5fb690b280
  5432 ms     | 0x68ea PK11_DeriveWithTemplate()
  5432 ms  0x68ea ret:0x7f5fb690b780
  5432 ms  0x68ea PK11_Derive()
  5432 ms  0x68ea basekey:0x7f5fb690b780
  5432 ms     | 0x68ea PK11_DeriveWithTemplate()
  5432 ms  0x68ea ret:0x7f5fb690b800
  5432 ms  0x68ea SECKEY_DestroyPrivateKey()
  5432 ms  0x68ea privk:0x7f5fb617b020::7f5fb617b020  40 4c 97 b6                                      @L..
  5432 ms  0x68ea privk:0x7f5fb617b020::7f5fb617b020  e5 e5 e5 e5                                      ....
  5432 ms  0x68ea PK11_Encrypt()
  5432 ms  0x68ea symkey:0x7f5fb690b900
  5440 ms  0x68ea PK11_Encrypt()
  5440 ms  0x68ea symkey:0x7f5fb6886900
  5441 ms  0x68ea PK11_Encrypt()
  5441 ms  0x68ea symkey:0x7f5fb6886900
  5441 ms  0x68ea PK11_Encrypt()
  5441 ms  0x68ea symkey:0x7f5fb6886900
  5442 ms  0x68ea PK11_Encrypt()
  5442 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5444 ms  0x68f2 PR_Close()
  5444 ms  0x68f2 fd:0x7f5fb67fc0d0
           /* TID 0x68ea */
  5445 ms  0x68ea PK11_Encrypt()
  5445 ms  0x68ea symkey:0x7f5fb6886900
  5446 ms  0x68ea PK11_Encrypt()
  5446 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5447 ms  0x68f2 PR_Close()
  5447 ms  0x68f2 fd:0x7f5fb67fc0d0
           /* TID 0x68ea */
  5447 ms  0x68ea PK11_Encrypt()
  5447 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5448 ms  0x68f2 PR_Close()
  5448 ms  0x68f2 fd:0x7f5fb67fc0d0
  5449 ms  0x68f2 PR_Close()
  5449 ms  0x68f2 fd:0x7f5fb67fc0d0
  5450 ms  0x68f2 PR_Close()
  5450 ms  0x68f2 fd:0x7f5fb67fc0d0
  5450 ms  0x68f2 PR_Close()
  5450 ms  0x68f2 fd:0x7f5fb67fc0d0
  5456 ms  0x68f2 PR_Close()
  5456 ms  0x68f2 fd:0x7f5fb67fc0d0
  5457 ms  0x68f2 PR_Close()
  5457 ms  0x68f2 fd:0x7f5fb67fc0d0
  5458 ms  0x68f2 PR_Close()
  5458 ms  0x68f2 fd:0x7f5fb67fc0d0
  5459 ms  0x68f2 PR_Close()
  5459 ms  0x68f2 fd:0x7f5fb67fc0d0
  5459 ms  0x68f2 PR_Close()
  5459 ms  0x68f2 fd:0x7f5fb67fc0d0
  5460 ms  0x68f2 PR_Close()
  5460 ms  0x68f2 fd:0x7f5fb67fc0d0
  5461 ms  0x68f2 PR_Close()
  5461 ms  0x68f2 fd:0x7f5fb67fc0d0
  5461 ms  0x68f2 PR_Close()
  5461 ms  0x68f2 fd:0x7f5fb67fc0d0
  5462 ms  0x68f2 PR_Close()
  5462 ms  0x68f2 fd:0x7f5fb67fc0d0
  5463 ms  0x68f2 PR_Close()
  5463 ms  0x68f2 fd:0x7f5fb67fc0d0
  5464 ms  0x68f2 PR_Close()
  5464 ms  0x68f2 fd:0x7f5fb67fc0d0
  5464 ms  0x68f2 PR_Close()
  5464 ms  0x68f2 fd:0x7f5fb67fc0d0
  5466 ms  0x68f2 PR_Close()
  5466 ms  0x68f2 fd:0x7f5fb67fc0d0
  5466 ms  0x68f2 PR_Close()
  5466 ms  0x68f2 fd:0x7f5fb67fc0d0
  5467 ms  0x68f2 PR_Close()
  5467 ms  0x68f2 fd:0x7f5fb67fc0d0
           /* TID 0x68ea */
  5474 ms  0x68ea PR_Connect()
  5474 ms  0x68ea fd:0x7f5fb67fc190
  5490 ms  0x68ea PK11_Encrypt()
  5490 ms  0x68ea symkey:0x7f5fc8f5ae00
  5490 ms  0x68ea PK11_Encrypt()
  5490 ms  0x68ea symkey:0x7f5fc8f5ae00
           /* TID 0x68f2 */
  5494 ms  0x68f2 PR_Close()
  5494 ms  0x68f2 fd:0x7f5fb67fc0a0
  5495 ms  0x68f2 PR_Close()
  5495 ms  0x68f2 fd:0x7f5fb67fc0a0
  5495 ms  0x68f2 PR_Close()
  5495 ms  0x68f2 fd:0x7f5fb67fc0a0
  5496 ms  0x68f2 PR_Close()
  5496 ms  0x68f2 fd:0x7f5fb67fc0a0
  5497 ms  0x68f2 PR_Close()
  5497 ms  0x68f2 fd:0x7f5fb67fc0a0
  5498 ms  0x68f2 PR_Close()
  5498 ms  0x68f2 fd:0x7f5fb67fc0a0
           /* TID 0x68ea */
  5507 ms  0x68ea PK11_Encrypt()
  5507 ms  0x68ea symkey:0x7f5fc8f5ae00
  5565 ms  0x68ea PK11_Encrypt()
  5565 ms  0x68ea symkey:0x7f5fb6886900
  5566 ms  0x68ea PK11_Encrypt()
  5566 ms  0x68ea symkey:0x7f5fb6886900
  5567 ms  0x68ea PK11_Encrypt()
  5567 ms  0x68ea symkey:0x7f5fb6886900
  5568 ms  0x68ea PK11_Encrypt()
  5568 ms  0x68ea symkey:0x7f5fb6886900
  5569 ms  0x68ea PK11_Encrypt()
  5569 ms  0x68ea symkey:0x7f5fb6886900
  5570 ms  0x68ea PK11_Encrypt()
  5570 ms  0x68ea symkey:0x7f5fb6886900
  5571 ms  0x68ea PK11_Encrypt()
  5571 ms  0x68ea symkey:0x7f5fb6886900
  5572 ms  0x68ea PK11_Encrypt()
  5572 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5593 ms  0x68f2 PR_Close()
  5593 ms  0x68f2 fd:0x7f5fb67fc1c0
  5605 ms  0x68f2 PR_Close()
  5605 ms  0x68f2 fd:0x7f5fb67fc1c0
           /* TID 0x68ea */
  5605 ms  0x68ea PK11_Encrypt()
  5605 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5621 ms  0x68f2 PR_Close()
  5621 ms  0x68f2 fd:0x7f5fb67fc640
  5622 ms  0x68f2 PR_Close()
  5622 ms  0x68f2 fd:0x7f5fb67fc640
  5622 ms  0x68f2 PR_Close()
  5622 ms  0x68f2 fd:0x7f5fb67fc640
  5623 ms  0x68f2 PR_Close()
  5623 ms  0x68f2 fd:0x7f5fb67fc640
  5624 ms  0x68f2 PR_Close()
  5624 ms  0x68f2 fd:0x7f5fb67fc640
  5625 ms  0x68f2 PR_Close()
  5625 ms  0x68f2 fd:0x7f5fb67fc640
           /* TID 0x6948 */
  5625 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  5625 ms  0x6948 ret:0x0
           /* TID 0x68f2 */
  5627 ms  0x68f2 PR_Close()
  5627 ms  0x68f2 fd:0x7f5fb67fc040
  5627 ms  0x68f2 PR_Close()
  5627 ms  0x68f2 fd:0x7f5fb67fc040
           /* TID 0x68ea */
  5632 ms  0x68ea SSL_AuthCertificateComplete()
  5632 ms  0x68ea fd:0x7f5fb68b8130
  5632 ms  0x68ea err:0x0
  5632 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  5632 ms     | 0x68ea privk:0x7f5fb6bc7820::7f5fb6bc7820  50 46 97 b6                                      PF..
  5632 ms     | 0x68ea privk:0x7f5fb6bc7820::7f5fb6bc7820  e5 e5 e5 e5                                      ....
  5632 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  5632 ms     | 0x68ea privk:0x7f5fb6bc5020::7f5fb6bc5020  e0 42 97 b6                                      .B..
  5632 ms     | 0x68ea privk:0x7f5fb6bc5020::7f5fb6bc5020  e5 e5 e5 e5                                      ....
  5633 ms  0x68ea PK11_Encrypt()
  5633 ms  0x68ea symkey:0x7f5fb690b900
  5633 ms  0x68ea PK11_Encrypt()
  5633 ms  0x68ea symkey:0x7f5fb690b900
  5633 ms  0x68ea PK11_Encrypt()
  5633 ms  0x68ea symkey:0x7f5fb690b900
           /* TID 0x68f2 */
  5645 ms  0x68f2 PR_Close()
  5645 ms  0x68f2 fd:0x7f5fb67fc3d0
           /* TID 0x68ea */
  5692 ms  0x68ea SSL_ImportFD()
  5692 ms  0x68ea ret:0x7f5fb67fc4c0
  5692 ms  0x68ea SSL_AuthCertificateHook()
  5692 ms  0x68ea fd:0x7f5fb67fc4c0
  5692 ms  0x68ea ret:0x0
  5692 ms  0x68ea PR_Connect()
  5692 ms  0x68ea fd:0x7f5fb67fc4c0
  5820 ms  0x68ea SECKEY_CreateECPrivateKey()
  5820 ms  0x68ea cx:0x7f5fc7ae1c48
  5821 ms     | 0x68ea EC_ValidatePublicKey()
  5821 ms     | 0x68ea ret:0x0
  5821 ms  0x68ea ret:0x7f5fb6181020::7f5fb6181020  c0 7e 79 b6                                      .~y.
  5821 ms  0x68ea SECKEY_CreateECPrivateKey()
  5821 ms  0x68ea cx:0x7f5fc7ae1c48
  5821 ms     | 0x68ea EC_ValidatePublicKey()
  5823 ms     | 0x68ea ret:0x0
  5823 ms  0x68ea ret:0x7f5fb6185820::7f5fb6185820  b0 1f 86 b6                                      ....
           /* TID 0x68f2 */
  5826 ms  0x68f2 PR_Close()
  5826 ms  0x68f2 fd:0x7f5fb67fc160
           /* TID 0x68ea */
  5835 ms  0x68ea PK11_Encrypt()
  5835 ms  0x68ea symkey:0x7f5fb6886900
  5842 ms  0x68ea PK11_Encrypt()
  5842 ms  0x68ea symkey:0x7f5fb6886900
  5843 ms  0x68ea PK11_Encrypt()
  5843 ms  0x68ea symkey:0x7f5fb6886900
  5844 ms  0x68ea PK11_Encrypt()
  5844 ms  0x68ea symkey:0x7f5fb6886900
  5845 ms  0x68ea PK11_Encrypt()
  5845 ms  0x68ea symkey:0x7f5fb6886900
  5846 ms  0x68ea PK11_Encrypt()
  5846 ms  0x68ea symkey:0x7f5fb6886900
  5847 ms  0x68ea PK11_Encrypt()
  5847 ms  0x68ea symkey:0x7f5fb6886900
  5848 ms  0x68ea PK11_Encrypt()
  5848 ms  0x68ea symkey:0x7f5fb6886900
  5849 ms  0x68ea PK11_Encrypt()
  5849 ms  0x68ea symkey:0x7f5fb6886900
  5850 ms  0x68ea PK11_Encrypt()
  5850 ms  0x68ea symkey:0x7f5fb6886900
  5852 ms  0x68ea PK11_Encrypt()
  5852 ms  0x68ea symkey:0x7f5fb6886900
  5853 ms  0x68ea PK11_Encrypt()
  5853 ms  0x68ea symkey:0x7f5fb6886900
  5853 ms  0x68ea PK11_Encrypt()
  5853 ms  0x68ea symkey:0x7f5fb6886900
  5854 ms  0x68ea PK11_Encrypt()
  5854 ms  0x68ea symkey:0x7f5fb6886900
  5855 ms  0x68ea PK11_Encrypt()
  5855 ms  0x68ea symkey:0x7f5fb6886900
  5856 ms  0x68ea PK11_Encrypt()
  5856 ms  0x68ea symkey:0x7f5fb6886900
  5857 ms  0x68ea PK11_Encrypt()
  5857 ms  0x68ea symkey:0x7f5fb6886900
  5858 ms  0x68ea PK11_Encrypt()
  5858 ms  0x68ea symkey:0x7f5fb6886900
  5859 ms  0x68ea PK11_Encrypt()
  5859 ms  0x68ea symkey:0x7f5fb6886900
  5860 ms  0x68ea PK11_Encrypt()
  5860 ms  0x68ea symkey:0x7f5fb6886900
  5861 ms  0x68ea PK11_Encrypt()
  5861 ms  0x68ea symkey:0x7f5fb6886900
  5863 ms  0x68ea PK11_Encrypt()
  5863 ms  0x68ea symkey:0x7f5fb6886900
  5865 ms  0x68ea PK11_Encrypt()
  5865 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5866 ms  0x68f2 PR_Close()
  5866 ms  0x68f2 fd:0x7f5fb67fc5e0
           /* TID 0x68ea */
  5867 ms  0x68ea PK11_Encrypt()
  5867 ms  0x68ea symkey:0x7f5fb6886900
  5869 ms  0x68ea PK11_Encrypt()
  5869 ms  0x68ea symkey:0x7f5fb6886900
  5870 ms  0x68ea PK11_Encrypt()
  5870 ms  0x68ea symkey:0x7f5fb6886900
  5873 ms  0x68ea PK11_Encrypt()
  5873 ms  0x68ea symkey:0x7f5fb6886900
  5875 ms  0x68ea PK11_Encrypt()
  5875 ms  0x68ea symkey:0x7f5fb6886900
  5877 ms  0x68ea PK11_Encrypt()
  5877 ms  0x68ea symkey:0x7f5fb6886900
  5878 ms  0x68ea PK11_Encrypt()
  5878 ms  0x68ea symkey:0x7f5fb6886900
  5879 ms  0x68ea PK11_Encrypt()
  5879 ms  0x68ea symkey:0x7f5fb6886900
  5881 ms  0x68ea PK11_Encrypt()
  5881 ms  0x68ea symkey:0x7f5fb6886900
  5882 ms  0x68ea PK11_Encrypt()
  5882 ms  0x68ea symkey:0x7f5fb6886900
  5884 ms  0x68ea PK11_Encrypt()
  5884 ms  0x68ea symkey:0x7f5fb6886900
  5885 ms  0x68ea PK11_Encrypt()
  5885 ms  0x68ea symkey:0x7f5fb6886900
  5887 ms  0x68ea PK11_Encrypt()
  5887 ms  0x68ea symkey:0x7f5fb6886900
  5890 ms  0x68ea PK11_Encrypt()
  5890 ms  0x68ea symkey:0x7f5fb6886900
  5891 ms  0x68ea PK11_Encrypt()
  5891 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5895 ms  0x68f2 PR_Close()
  5895 ms  0x68f2 fd:0x7f5fb5b843d0
  5897 ms  0x68f2 PR_Close()
  5897 ms  0x68f2 fd:0x7f5fb5b84af0
  5898 ms  0x68f2 PR_Close()
  5898 ms  0x68f2 fd:0x7f5fb5b84af0
           /* TID 0x68ea */
  5899 ms  0x68ea PK11_Encrypt()
  5899 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5900 ms  0x68f2 PR_Close()
  5900 ms  0x68f2 fd:0x7f5fb5b84880
  5901 ms  0x68f2 PR_Close()
  5901 ms  0x68f2 fd:0x7f5fb5b84880
  5902 ms  0x68f2 PR_Close()
  5902 ms  0x68f2 fd:0x7f5fb5b84880
           /* TID 0x68ea */
  5902 ms  0x68ea PK11_Encrypt()
  5902 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5904 ms  0x68f2 PR_Close()
  5904 ms  0x68f2 fd:0x7f5fb5b84940
  5907 ms  0x68f2 PR_Close()
  5907 ms  0x68f2 fd:0x7f5fb5b84730
  5908 ms  0x68f2 PR_Close()
  5908 ms  0x68f2 fd:0x7f5fb5b84730
  5910 ms  0x68f2 PR_Close()
  5910 ms  0x68f2 fd:0x7f5fb5b84730
  5911 ms  0x68f2 PR_Close()
  5911 ms  0x68f2 fd:0x7f5fb5b84730
           /* TID 0x68ea */
  5911 ms  0x68ea PK11_Encrypt()
  5911 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5912 ms  0x68f2 PR_Close()
  5912 ms  0x68f2 fd:0x7f5fb5b84070
  5914 ms  0x68f2 PR_Close()
  5914 ms  0x68f2 fd:0x7f5fb67fcfd0
           /* TID 0x68ea */
  5915 ms  0x68ea PK11_Encrypt()
  5915 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5916 ms  0x68f2 PR_Close()
  5916 ms  0x68f2 fd:0x7f5fb68b8970
  5918 ms  0x68f2 PR_Close()
  5918 ms  0x68f2 fd:0x7f5fb5be5040
  5921 ms  0x68f2 PR_Close()
  5921 ms  0x68f2 fd:0x7f5fb5be5040
  5922 ms  0x68f2 PR_Close()
  5922 ms  0x68f2 fd:0x7f5fb5be5040
  5929 ms  0x68f2 PR_Close()
  5929 ms  0x68f2 fd:0x7f5fb5b845b0
  5930 ms  0x68f2 PR_Close()
  5930 ms  0x68f2 fd:0x7f5fb5b843d0
           /* TID 0x68ea */
  5933 ms  0x68ea PK11_Encrypt()
  5933 ms  0x68ea symkey:0x7f5fb6886900
  5933 ms  0x68ea PK11_Encrypt()
  5933 ms  0x68ea symkey:0x7f5fb6886900
  5935 ms  0x68ea PK11_Encrypt()
  5935 ms  0x68ea symkey:0x7f5fb6886900
  5938 ms  0x68ea PK11_Encrypt()
  5938 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5941 ms  0x68f2 PR_Close()
  5941 ms  0x68f2 fd:0x7f5fb5be56d0
  5943 ms  0x68f2 PR_Close()
  5943 ms  0x68f2 fd:0x7f5fb5b84a90
  5944 ms  0x68f2 PR_Close()
  5944 ms  0x68f2 fd:0x7f5fb5be57c0
  5945 ms  0x68f2 PR_Close()
  5945 ms  0x68f2 fd:0x7f5fb5be57c0
  5946 ms  0x68f2 PR_Close()
  5946 ms  0x68f2 fd:0x7f5fb5be5070
  5946 ms  0x68f2 PR_Close()
  5946 ms  0x68f2 fd:0x7f5fb5be5070
           /* TID 0x68ea */
  5947 ms  0x68ea PK11_Encrypt()
  5947 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5948 ms  0x68f2 PR_Close()
  5948 ms  0x68f2 fd:0x7f5fb5b84a30
  5948 ms  0x68f2 PR_Close()
  5948 ms  0x68f2 fd:0x7f5fb5b84a30
  5949 ms  0x68f2 PR_Close()
  5949 ms  0x68f2 fd:0x7f5fb5b84a30
  5950 ms  0x68f2 PR_Close()
  5950 ms  0x68f2 fd:0x7f5fb5b84190
  5951 ms  0x68f2 PR_Close()
  5951 ms  0x68f2 fd:0x7f5fb5b84190
           /* TID 0x68ea */
  5952 ms  SECKEY_ECParamsToKeySize()
  5952 ms  0x68ea ret:0x100
  5952 ms  0x68ea SECKEY_CreateECPrivateKey()
  5952 ms  0x68ea cx:0x7f5fc7ae1c48
  5952 ms     | 0x68ea EC_ValidatePublicKey()
  5954 ms     | 0x68ea ret:0x0
  5954 ms  0x68ea ret:0x7f5fb691c820::7f5fb691c820  00 26 bf b5                                      .&..
  5954 ms  0x68ea PK11_PubDeriveWithKDF()
  5954 ms  0x68ea seckey:0x7f5fb691c820
  5954 ms     | 0x68ea EC_ValidatePublicKey()
  5956 ms     | 0x68ea ret:0x0
  5957 ms  0x68ea ret:0x7f5fb690b280
  5957 ms  0x68ea PK11_DeriveWithFlags()
  5957 ms  0x68ea basekey:0x7f5fb690b280
  5957 ms     | 0x68ea PK11_DeriveWithTemplate()
  5957 ms  0x68ea ret:0x7f5fb690b200
  5957 ms  0x68ea PK11_Derive()
  5957 ms  0x68ea basekey:0x7f5fb690b200
  5957 ms     | 0x68ea PK11_DeriveWithTemplate()
  5957 ms  0x68ea ret:0x7f5fc96e3c80
  5957 ms  0x68ea SECKEY_DestroyPrivateKey()
  5957 ms  0x68ea privk:0x7f5fb691c820::7f5fb691c820  00 26 bf b5                                      .&..
  5957 ms  0x68ea privk:0x7f5fb691c820::7f5fb691c820  e5 e5 e5 e5                                      ....
           /* TID 0x68f2 */
  5959 ms  0x68f2 PR_Close()
  5959 ms  0x68f2 fd:0x7f5fb5b84190
  5960 ms  0x68f2 PR_Close()
  5960 ms  0x68f2 fd:0x7f5fb5b84220
  5960 ms  0x68f2 PR_Close()
  5960 ms  0x68f2 fd:0x7f5fb5b84220
  5961 ms  0x68f2 PR_Close()
  5961 ms  0x68f2 fd:0x7f5fb5b84040
  5962 ms  0x68f2 PR_Close()
  5962 ms  0x68f2 fd:0x7f5fb5b84040
           /* TID 0x68ea */
  5969 ms  0x68ea PK11_Encrypt()
  5969 ms  0x68ea symkey:0x7f5fb6886900
  5969 ms  0x68ea PK11_Encrypt()
  5969 ms  0x68ea symkey:0x7f5fb6886900
  5969 ms  0x68ea PK11_Encrypt()
  5969 ms  0x68ea symkey:0x7f5fb6886900
  5970 ms  0x68ea PK11_Encrypt()
  5970 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5971 ms  0x68f2 PR_Close()
  5971 ms  0x68f2 fd:0x7f5fb5b845e0
  5978 ms  0x68f2 PR_Close()
  5978 ms  0x68f2 fd:0x7f5fb5b84100
  5980 ms  0x68f2 PR_Close()
  5980 ms  0x68f2 fd:0x7f5fb5b84100
  5980 ms  0x68f2 PR_Close()
  5980 ms  0x68f2 fd:0x7f5fb5b84100
  5981 ms  0x68f2 PR_Close()
  5981 ms  0x68f2 fd:0x7f5fb5be56d0
  5982 ms  0x68f2 PR_Close()
  5982 ms  0x68f2 fd:0x7f5fb5b84310
           /* TID 0x68ea */
  5983 ms  0x68ea PK11_Encrypt()
  5983 ms  0x68ea symkey:0x7f5fb6886900
  5986 ms  0x68ea PK11_Encrypt()
  5986 ms  0x68ea symkey:0x7f5fb6886900
  5987 ms  0x68ea PK11_Encrypt()
  5987 ms  0x68ea symkey:0x7f5fb6886900
  5987 ms  0x68ea PK11_Encrypt()
  5987 ms  0x68ea symkey:0x7f5fb6886900
  5987 ms  0x68ea PK11_Encrypt()
  5987 ms  0x68ea symkey:0x7f5fb6886900
  5988 ms  0x68ea PK11_Encrypt()
  5988 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5989 ms  0x68f2 PR_Close()
  5989 ms  0x68f2 fd:0x7f5fb5b84040
  5989 ms  0x68f2 PR_Close()
  5989 ms  0x68f2 fd:0x7f5fb5b84040
  5990 ms  0x68f2 PR_Close()
  5990 ms  0x68f2 fd:0x7f5fb5b84040
  5991 ms  0x68f2 PR_Close()
  5991 ms  0x68f2 fd:0x7f5fb5b84040
  5992 ms  0x68f2 PR_Close()
  5992 ms  0x68f2 fd:0x7f5fb5b84040
           /* TID 0x68ea */
  5992 ms  0x68ea PK11_Encrypt()
  5992 ms  0x68ea symkey:0x7f5fb6886900
  5992 ms  0x68ea PK11_Encrypt()
  5992 ms  0x68ea symkey:0x7f5fb6886900
  5992 ms  0x68ea PK11_Encrypt()
  5992 ms  0x68ea symkey:0x7f5fb6886900
  5993 ms  0x68ea PK11_Encrypt()
  5993 ms  0x68ea symkey:0x7f5fb6886900
  5993 ms  0x68ea PK11_Encrypt()
  5993 ms  0x68ea symkey:0x7f5fb6886900
  5993 ms  0x68ea PK11_Encrypt()
  5993 ms  0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  5996 ms  0x68f2 PR_Close()
  5996 ms  0x68f2 fd:0x7f5fb5b84040
  6026 ms  0x68f2 PR_Close()
  6026 ms  0x68f2 fd:0x7f5fb5b84040
  6026 ms  0x68f2 PR_Close()
  6026 ms  0x68f2 fd:0x7f5fb5b84160
  6028 ms  0x68f2 PR_Close()
  6028 ms  0x68f2 fd:0x7f5fb5b84040
  6029 ms  0x68f2 PR_Close()
  6029 ms  0x68f2 fd:0x7f5fb5b84040
  6030 ms  0x68f2 PR_Close()
  6030 ms  0x68f2 fd:0x7f5fb5b84040
  6031 ms  0x68f2 PR_Close()
  6031 ms  0x68f2 fd:0x7f5fb5b84040
  6033 ms  0x68f2 PR_Close()
  6033 ms  0x68f2 fd:0x7f5fb5b84040
  6035 ms  0x68f2 PR_Close()
  6035 ms  0x68f2 fd:0x7f5fb5b84040
  6035 ms  0x68f2 PR_Close()
  6035 ms  0x68f2 fd:0x7f5fb5b84040
  6047 ms  0x68f2 PR_Close()
  6047 ms  0x68f2 fd:0x7f5fb5b84040
  6047 ms  0x68f2 PR_Close()
  6047 ms  0x68f2 fd:0x7f5fb5b84040
  6048 ms  0x68f2 PR_Close()
  6048 ms  0x68f2 fd:0x7f5fb5b84040
  6049 ms  0x68f2 PR_Close()
  6049 ms  0x68f2 fd:0x7f5fb5b84040
  6050 ms  0x68f2 PR_Close()
  6050 ms  0x68f2 fd:0x7f5fb5b84040
  6050 ms  0x68f2 PR_Close()
  6050 ms  0x68f2 fd:0x7f5fb5b84040
  6051 ms  0x68f2 PR_Close()
  6051 ms  0x68f2 fd:0x7f5fb5b84040
           /* TID 0x68ea */
  6086 ms  0x68ea PK11_Encrypt()
  6086 ms  0x68ea symkey:0x7f5fc8f5ae00
           /* TID 0x68f2 */
  6117 ms  0x68f2 PR_Close()
  6117 ms  0x68f2 fd:0x7f5fb5b84160
           /* TID 0x6948 */
  6117 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6117 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  6117 ms  0x68ea SSL_AuthCertificateComplete()
  6117 ms  0x68ea fd:0x7f5fb67fc4c0
  6117 ms  0x68ea err:0x0
  6117 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  6117 ms     | 0x68ea privk:0x7f5fb6185820::7f5fb6185820  b0 1f 86 b6                                      ....
  6117 ms     | 0x68ea privk:0x7f5fb6185820::7f5fb6185820  e5 e5 e5 e5                                      ....
  6117 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  6117 ms     | 0x68ea privk:0x7f5fb6181020::7f5fb6181020  c0 7e 79 b6                                      .~y.
  6117 ms     | 0x68ea privk:0x7f5fb6181020::7f5fb6181020  e5 e5 e5 e5                                      ....
           /* TID 0x68f2 */
  6267 ms  0x68f2 PR_Close()
  6267 ms  0x68f2 fd:0x7f5fb5b84370
           /* TID 0x68ea */
  6335 ms  0x68ea PK11_Encrypt()
  6335 ms  0x68ea symkey:0x7f5fc8f5ae00
  6337 ms  0x68ea PK11_Encrypt()
  6337 ms  0x68ea symkey:0x7f5fb690b900
  6338 ms  0x68ea PK11_Encrypt()
  6338 ms  0x68ea symkey:0x7f5fb690b900
  6339 ms  0x68ea PK11_Encrypt()
  6339 ms  0x68ea symkey:0x7f5fb6886900
  6340 ms  0x68ea PK11_Encrypt()
  6340 ms  0x68ea symkey:0x7f5fb6886900
  6342 ms  0x68ea PK11_Encrypt()
  6342 ms  0x68ea symkey:0x7f5fb690b900
  6345 ms  0x68ea PK11_Encrypt()
  6345 ms  0x68ea symkey:0x7f5fc8f5ae00
  6345 ms  0x68ea PK11_Encrypt()
  6345 ms  0x68ea symkey:0x7f5fc8f5ae00
  6349 ms  0x68ea PR_Close()
  6349 ms  0x68ea fd:0x7f5fc8888ee0
           /* TID 0x68df */
  6350 ms  0x68df EC_ValidatePublicKey()
  6351 ms  0x68df ret:0x0
  6351 ms  0x68df EC_ValidatePublicKey()
  6353 ms  0x68df ret:0x0
  6353 ms  0x68df EC_ValidatePublicKey()
  6354 ms  0x68df ret:0x0
  6354 ms  0x68df EC_ValidatePublicKey()
  6363 ms  0x68df ret:0x0
  6363 ms  0x68df EC_ValidatePublicKey()
  6375 ms  0x68df ret:0x0
  6375 ms  0x68df EC_ValidatePublicKey()
  6376 ms  0x68df ret:0x0
  6376 ms  0x68df EC_ValidatePublicKey()
  6378 ms  0x68df ret:0x0
  6378 ms  0x68df EC_ValidatePublicKey()
  6379 ms  0x68df ret:0x0
  6379 ms  0x68df EC_ValidatePublicKey()
  6380 ms  0x68df ret:0x0
  6380 ms  0x68df EC_ValidatePublicKey()
  6382 ms  0x68df ret:0x0
           /* TID 0x68ea */
  6385 ms  0x68ea PR_Close()
  6385 ms  0x68ea fd:0x7f5fb67fc190
  6385 ms  0x68ea PR_Close()
  6385 ms  0x68ea fd:0x7f5fcc84edf0
  6385 ms     | 0x68ea PK11_Encrypt()
  6385 ms     | 0x68ea symkey:0x7f5fc7acc400
  6385 ms  0x68ea PR_Close()
  6385 ms  0x68ea fd:0x7f5fcc84ecd0
  6386 ms  0x68ea PR_Close()
  6386 ms  0x68ea fd:0x7f5fcc84e1f0
  6386 ms     | 0x68ea PK11_Encrypt()
  6386 ms     | 0x68ea symkey:0x7f5fc9afb400
  6386 ms  0x68ea PR_Close()
  6386 ms  0x68ea fd:0x7f5fb67fc4c0
  6386 ms  0x68ea PR_Close()
  6386 ms  0x68ea fd:0x7f5fc8888fa0
           /* TID 0x6939 */
  6388 ms  0x6939 PR_Close()
  6388 ms  0x6939 fd:0x7f5fb5b84d90
  6388 ms  0x6939 PR_Close()
  6388 ms  0x6939 fd:0x7f5fb5b84d90
           /* TID 0x68ea */
  6391 ms  0x68ea PK11_Encrypt()
  6391 ms  0x68ea symkey:0x7f5fb6886900
  6392 ms  0x68ea PR_Close()
  6392 ms  0x68ea fd:0x7f5fb6bd5ee0
  6392 ms     | 0x68ea PK11_Encrypt()
  6392 ms     | 0x68ea symkey:0x7f5fb6886900
           /* TID 0x68f2 */
  6412 ms  0x68f2 PR_Close()
  6412 ms  0x68f2 fd:0x7f5fb5b849a0
  6433 ms  0x68f2 PR_Close()
  6433 ms  0x68f2 fd:0x7f5fb5b849a0
           /* TID 0x68ea */
  6442 ms  0x68ea SSL_ImportFD()
  6442 ms  0x68ea ret:0x7f5fb5be5310
  6442 ms  0x68ea SSL_AuthCertificateHook()
  6442 ms  0x68ea fd:0x7f5fb5be5310
  6442 ms  0x68ea ret:0x0
  6442 ms  0x68ea PR_Connect()
  6442 ms  0x68ea fd:0x7f5fb5be5310
           /* TID 0x68f2 */
  6447 ms  0x68f2 PR_Close()
  6447 ms  0x68f2 fd:0x7f5fb5b84130
           /* TID 0x68ea */
  6447 ms  0x68ea SSL_ImportFD()
  6447 ms  0x68ea ret:0x7f5fb5be56d0
  6447 ms  0x68ea SSL_AuthCertificateHook()
  6447 ms  0x68ea fd:0x7f5fb5be56d0
  6447 ms  0x68ea ret:0x0
  6447 ms  0x68ea PR_Connect()
  6447 ms  0x68ea fd:0x7f5fb5be56d0
  6447 ms  0x68ea SSL_ImportFD()
  6447 ms  0x68ea ret:0x7f5fb5be58b0
  6447 ms  0x68ea SSL_AuthCertificateHook()
  6447 ms  0x68ea fd:0x7f5fb5be58b0
  6447 ms  0x68ea ret:0x0
  6447 ms  0x68ea PR_Connect()
  6447 ms  0x68ea fd:0x7f5fb5be58b0
           /* TID 0x68df */
  6455 ms  0x68df PR_Close()
  6455 ms  0x68df fd:0x7f5fcaec1160
  6455 ms  0x68df PR_Close()
  6455 ms  0x68df fd:0x7f5fb5be5a60
  6456 ms  0x68df PR_Close()
  6456 ms  0x68df fd:0x7f5fb5be5ac0
  6456 ms  0x68df PR_Close()
  6456 ms  0x68df fd:0x7f5fb5be5a60
  6456 ms  0x68df PR_Close()
  6456 ms  0x68df fd:0x7f5fb5be5ac0
  6456 ms  0x68df PR_Close()
  6456 ms  0x68df fd:0x7f5fb5be5a60
           /* TID 0x6955 */
  6467 ms  0x6955 PR_Close()
  6467 ms  0x6955 fd:0x7f5fb5be5b50
           /* TID 0x68ea */
  6467 ms  0x68ea SECKEY_CreateECPrivateKey()
  6467 ms  0x68ea cx:0x7f5fb5b0f0a8
  6468 ms     | 0x68ea EC_ValidatePublicKey()
  6468 ms     | 0x68ea ret:0x0
  6468 ms  0x68ea ret:0x7f5fc7710020::7f5fc7710020  d0 7d 79 b6                                      .}y.
  6468 ms  0x68ea SECKEY_CreateECPrivateKey()
  6468 ms  0x68ea cx:0x7f5fb5b0f0a8
  6468 ms     | 0x68ea EC_ValidatePublicKey()
  6470 ms     | 0x68ea ret:0x0
  6470 ms  0x68ea ret:0x7f5fc7712020::7f5fc7712020  30 73 8c b6                                      0s..
  6472 ms  0x68ea SECKEY_CreateECPrivateKey()
  6472 ms  0x68ea cx:0x7f5fb5b0f248
  6473 ms     | 0x68ea EC_ValidatePublicKey()
  6473 ms     | 0x68ea ret:0x0
  6473 ms  0x68ea ret:0x7f5fc7714820::7f5fc7714820  e0 42 97 b6                                      .B..
  6473 ms  0x68ea SECKEY_CreateECPrivateKey()
  6473 ms  0x68ea cx:0x7f5fb5b0f248
  6473 ms     | 0x68ea EC_ValidatePublicKey()
  6475 ms     | 0x68ea ret:0x0
  6475 ms  0x68ea ret:0x7f5fc7716820::7f5fc7716820  c0 44 97 b6                                      .D..
           /* TID 0x68df */
  6491 ms  0x68df PR_Close()
  6491 ms  0x68df fd:0x7f5fb5be5ac0
  6491 ms  0x68df PR_Close()
  6491 ms  0x68df fd:0x7f5fb67fc820
  6492 ms  0x68df PR_Close()
  6492 ms  0x68df fd:0x7f5fb5be5ac0
  6492 ms  0x68df PR_Close()
  6492 ms  0x68df fd:0x7f5fb67fc820
  6492 ms  0x68df PR_Close()
  6492 ms  0x68df fd:0x7f5fd2bc89a0
  6492 ms  0x68df PR_Close()
  6492 ms  0x68df fd:0x7f5fd2bc88b0
  6492 ms  0x68df PR_Close()
  6492 ms  0x68df fd:0x7f5fd2bc8a60
  6496 ms  0x68df PR_Close()
  6496 ms  0x68df fd:0x7f5fb67fc850
  6499 ms  0x68df PR_Close()
  6499 ms  0x68df fd:0x7f5fb67fc8e0
  6503 ms  0x68df PR_Close()
  6503 ms  0x68df fd:0x7f5fb5be5ac0
  6504 ms  0x68df PR_Close()
  6504 ms  0x68df fd:0x7f5fb67fca00
  6505 ms  0x68df PR_Close()
  6505 ms  0x68df fd:0x7f5fb5be5ac0
  6505 ms  0x68df PR_Close()
  6505 ms  0x68df fd:0x7f5fb67fca00
  6508 ms  0x68df PR_Close()
  6508 ms  0x68df fd:0x7f5fb67fca30
  6509 ms  0x68df PR_Close()
  6509 ms  0x68df fd:0x7f5fb67fca30
  6511 ms  0x68df PR_Close()
  6511 ms  0x68df fd:0x7f5fb5be5ac0
  6511 ms  0x68df PR_Close()
  6511 ms  0x68df fd:0x7f5fb67fcbb0
  6512 ms  0x68df PR_Close()
  6512 ms  0x68df fd:0x7f5fb5be5ac0
  6512 ms  0x68df PR_Close()
  6512 ms  0x68df fd:0x7f5fb67fcbb0
  6516 ms  0x68df PR_Close()
  6516 ms  0x68df fd:0x7f5fb67fcbe0
  6517 ms  0x68df PR_Close()
  6517 ms  0x68df fd:0x7f5fb67fcbe0
           /* TID 0x68ea */
  6521 ms  SECKEY_ECParamsToKeySize()
  6521 ms  0x68ea ret:0x100
  6521 ms  0x68ea SECKEY_CreateECPrivateKey()
  6521 ms  0x68ea cx:0x7f5fb5b0f0a8
  6521 ms     | 0x68ea EC_ValidatePublicKey()
  6523 ms     | 0x68ea ret:0x0
  6523 ms  0x68ea ret:0x7f5fc7a2d020::7f5fc7a2d020  f0 36 a2 c7                                      .6..
  6523 ms  0x68ea PK11_PubDeriveWithKDF()
  6523 ms  0x68ea seckey:0x7f5fc7a2d020
  6523 ms     | 0x68ea EC_ValidatePublicKey()
  6524 ms     | 0x68ea ret:0x0
           /* TID 0x6948 */
  6525 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6525 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  6529 ms  0x68ea ret:0x7f5fb6886680
  6529 ms  0x68ea PK11_DeriveWithFlags()
  6529 ms  0x68ea basekey:0x7f5fb6886680
  6529 ms     | 0x68ea PK11_DeriveWithTemplate()
  6529 ms  0x68ea ret:0x7f5fb6885b80
  6529 ms  0x68ea PK11_Derive()
  6529 ms  0x68ea basekey:0x7f5fb6885b80
  6529 ms     | 0x68ea PK11_DeriveWithTemplate()
  6529 ms  0x68ea ret:0x7f5fc96e3c80
  6529 ms  0x68ea SECKEY_DestroyPrivateKey()
  6529 ms  0x68ea privk:0x7f5fc7a2d020::7f5fc7a2d020  f0 36 a2 c7                                      .6..
  6529 ms  0x68ea privk:0x7f5fc7a2d020::7f5fc7a2d020  e5 e5 e5 e5                                      ....
  6529 ms  0x68ea PK11_Encrypt()
  6529 ms  0x68ea symkey:0x7f5fb6886800
           /* TID 0x68df */
  6534 ms  0x68df PR_Close()
  6534 ms  0x68df fd:0x7f5fb67fcf10
  6534 ms  0x68df PR_Close()
  6534 ms  0x68df fd:0x7f5fb67fcf10
           /* TID 0x68ea */
  6535 ms  0x68ea SSL_AuthCertificateComplete()
  6535 ms  0x68ea fd:0x7f5fb5be5310
  6535 ms  0x68ea err:0x0
  6535 ms  0x68ea PK11_Encrypt()
  6535 ms  0x68ea symkey:0x7f5fb6886800
  6536 ms  0x68ea PK11_Encrypt()
  6536 ms  0x68ea symkey:0x7f5fb6886800
           /* TID 0x68df */
  6537 ms  0x68df PR_Close()
  6537 ms  0x68df fd:0x7f5fb67fcdf0
           /* TID 0x6948 */
  6538 ms  0x6948 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6538 ms  0x6948 ret:0x0
           /* TID 0x68ea */
  6538 ms  SECKEY_ECParamsToKeySize()
  6538 ms  0x68ea ret:0x100
  6538 ms  0x68ea SECKEY_CreateECPrivateKey()
  6538 ms  0x68ea cx:0x7f5fb5b0f248
  6538 ms     | 0x68ea EC_ValidatePublicKey()
  6540 ms     | 0x68ea ret:0x0
  6540 ms  0x68ea ret:0x7f5fc7a35020::7f5fc7a35020  50 3b a2 c7                                      P;..
  6540 ms  0x68ea PK11_PubDeriveWithKDF()
  6540 ms  0x68ea seckey:0x7f5fc7a35020
  6540 ms     | 0x68ea EC_ValidatePublicKey()
  6541 ms     | 0x68ea ret:0x0
  6543 ms  0x68ea ret:0x7f5fb6886680
  6543 ms  0x68ea PK11_DeriveWithFlags()
  6543 ms  0x68ea basekey:0x7f5fb6886680
  6543 ms     | 0x68ea PK11_DeriveWithTemplate()
  6543 ms  0x68ea ret:0x7f5fb690b200
  6543 ms  0x68ea PK11_Derive()
  6543 ms  0x68ea basekey:0x7f5fb690b200
  6543 ms     | 0x68ea PK11_DeriveWithTemplate()
  6543 ms  0x68ea ret:0x7f5fc96e3d80
  6543 ms  0x68ea SECKEY_DestroyPrivateKey()
  6543 ms  0x68ea privk:0x7f5fc7a35020::7f5fc7a35020  50 3b a2 c7                                      P;..
           /* TID 0x68f2 */
  6565 ms  0x68f2 PR_Close()
  6565 ms  0x68f2 fd:0x7f5fb5b84760
  6565 ms  0x68f2 PR_Close()
  6565 ms  0x68f2 fd:0x7f5fb5b84760
  6565 ms  0x68f2 PR_Close()
  6565 ms  0x68f2 fd:0x7f5fb5b84940
           /* TID 0x68ea */
  6567 ms  0x68ea privk:0x7f5fc7a35020::7f5fc7a35020  e5 e5 e5 e5                                      ....
  6568 ms  0x68ea PK11_Encrypt()
  6568 ms  0x68ea symkey:0x7f5fb690b380
  6568 ms  0x68ea SECKEY_DestroyPrivateKey()
  6568 ms  0x68ea privk:0x7f5fc7712020::7f5fc7712020  30 73 8c b6                                      0s..
  6568 ms  0x68ea privk:0x7f5fc7712020::7f5fc7712020  e5 e5 e5 e5                                      ....
  6568 ms  0x68ea SECKEY_DestroyPrivateKey()
  6568 ms  0x68ea privk:0x7f5fc7710020::7f5fc7710020  d0 7d 79 b6                                      .}y.
  6568 ms  0x68ea privk:0x7f5fc7710020::7f5fc7710020  e5 e5 e5 e5                                      ....
  6568 ms  0x68ea SSL_AuthCertificateComplete()
  6568 ms  0x68ea fd:0x7f5fb5be56d0
  6568 ms  0x68ea err:0x0
  6568 ms  0x68ea PK11_Encrypt()
  6568 ms  0x68ea symkey:0x7f5fb6886800
  6569 ms  0x68ea PK11_Encrypt()
  6569 ms  0x68ea symkey:0x7f5fc8f5ae00
  6570 ms  0x68ea PK11_Encrypt()
  6570 ms  0x68ea symkey:0x7f5fb690b380
  6570 ms  0x68ea PK11_Encrypt()
  6570 ms  0x68ea symkey:0x7f5fb690b380
  6571 ms  0x68ea PR_Close()
  6571 ms  0x68ea fd:0x7f5fc8ed55e0
  6571 ms     | 0x68ea PK11_Encrypt()
  6571 ms     | 0x68ea symkey:0x7f5fc8f5ae00
  6576 ms  0x68ea SECKEY_CreateECPrivateKey()
  6576 ms  0x68ea cx:0x7f5fb5b0f3e8
  6576 ms     | 0x68ea EC_ValidatePublicKey()
  6576 ms     | 0x68ea ret:0x0
  6576 ms  0x68ea ret:0x7f5fb6bd1020::7f5fb6bd1020  50 4b 97 b6                                      PK..
  6576 ms  0x68ea SECKEY_CreateECPrivateKey()
  6576 ms  0x68ea cx:0x7f5fb5b0f3e8
  6577 ms     | 0x68ea EC_ValidatePublicKey()
  6578 ms     | 0x68ea ret:0x0
  6578 ms  0x68ea ret:0x7f5fc7711020::7f5fc7711020  d0 4d 97 b6                                      .M..
           /* TID 0x6955 */
  6592 ms  0x6955 PR_Close()
  6592 ms  0x6955 fd:0x7f5fb5b84760
           /* TID 0x68df */
  6593 ms  0x68df PR_Close()
  6593 ms  0x68df fd:0x7f5fb5be5ac0
           /* TID 0x68ea */
  6593 ms  0x68ea SECKEY_DestroyPrivateKey()
  6593 ms  0x68ea privk:0x7f5fc7716820::7f5fc7716820  c0 44 97 b6                                      .D..
  6593 ms  0x68ea privk:0x7f5fc7716820::7f5fc7716820  e5 e5 e5 e5                                      ....
  6594 ms  0x68ea SECKEY_DestroyPrivateKey()
  6594 ms  0x68ea privk:0x7f5fc7714820::7f5fc7714820  e0 42 97 b6                                      .B..
  6594 ms  0x68ea privk:0x7f5fc7714820::7f5fc7714820  e5 e5 e5 e5                                      ....
  6594 ms  0x68ea PK11_Encrypt()
  6594 ms  0x68ea symkey:0x7f5fb690b380
           /* TID 0x68df */
  6596 ms  0x68df PR_Close()
  6596 ms  0x68df fd:0x7f5fb68b8970
           /* TID 0x698a */
  6607 ms  0x698a PR_Close()
  6607 ms  0x698a fd:0x7f5fb6986fd0
           /* TID 0x68f2 */
  6610 ms  0x68f2 PR_Close()
  6610 ms  0x68f2 fd:0x7f5fc7fd73d0
           /* TID 0x68ea */
  6611 ms  0x68ea PK11_Encrypt()
  6611 ms  0x68ea symkey:0x7f5fb6886800
  6612 ms  0x68ea PK11_Encrypt()
  6612 ms  0x68ea symkey:0x7f5fb6886800
  6612 ms  0x68ea PK11_Encrypt()
  6612 ms  0x68ea symkey:0x7f5fb6886800
  6612 ms  0x68ea PK11_Encrypt()
  6612 ms  0x68ea symkey:0x7f5fb6886800
           /* TID 0x6955 */
  6620 ms  0x6955 PR_Close()
  6620 ms  0x6955 fd:0x7f5fb5b84760
           /* TID 0x68ea */
  6621 ms  0x68ea PK11_Encrypt()
  6621 ms  0x68ea symkey:0x7f5fb690b900
  6621 ms  0x68ea PR_Close()
  6621 ms  0x68ea fd:0x7f5fb68b8130
  6621 ms     | 0x68ea PK11_Encrypt()
  6621 ms     | 0x68ea symkey:0x7f5fb690b900
  6643 ms  0x68ea SSL_ImportFD()
  6643 ms  0x68ea ret:0x7f5fb5b84490
  6643 ms  0x68ea SSL_AuthCertificateHook()
  6643 ms  0x68ea fd:0x7f5fb5b84490
  6643 ms  0x68ea ret:0x0
  6647 ms  0x68ea PR_Connect()
  6647 ms  0x68ea fd:0x7f5fb5b84490
           /* TID 0x698a */
  6649 ms  0x698a PR_Close()
  6649 ms  0x698a fd:0x7f5fb5b84280
           /* TID 0x68ea */
  6649 ms  0x68ea PK11_Encrypt()
  6649 ms  0x68ea symkey:0x7f5fb6886800
  6650 ms  0x68ea PK11_Encrypt()
  6650 ms  0x68ea symkey:0x7f5fb6886800
  6650 ms  0x68ea PK11_Encrypt()
  6650 ms  0x68ea symkey:0x7f5fb6886800
  6650 ms  0x68ea PK11_Encrypt()
  6650 ms  0x68ea symkey:0x7f5fb6886800
  6650 ms  0x68ea PK11_Encrypt()
  6650 ms  0x68ea symkey:0x7f5fb6886800
  6651 ms  0x68ea PK11_Encrypt()
  6651 ms  0x68ea symkey:0x7f5fb6886800
  6651 ms  0x68ea PK11_Encrypt()
  6651 ms  0x68ea symkey:0x7f5fb6886800
           /* TID 0x68f2 */
  6651 ms  0x68f2 PR_Close()
  6651 ms  0x68f2 fd:0x7f5fb69860a0
           /* TID 0x68ea */
  6651 ms  0x68ea PK11_Encrypt()
  6651 ms  0x68ea symkey:0x7f5fb6886800
  6652 ms  0x68ea PK11_Encrypt()
  6652 ms  0x68ea symkey:0x7f5fb690b380
  6652 ms  0x68ea PK11_Encrypt()
  6652 ms  0x68ea symkey:0x7f5fb690b380
  6652 ms  0x68ea PK11_Encrypt()
  6652 ms  0x68ea symkey:0x7f5fb6886800
  6653 ms  0x68ea PK11_Encrypt()
  6653 ms  0x68ea symkey:0x7f5fb6886800
  6653 ms  0x68ea PK11_Encrypt()
  6653 ms  0x68ea symkey:0x7f5fb6886800
  6653 ms  0x68ea PK11_Encrypt()
  6653 ms  0x68ea symkey:0x7f5fb6886800
  6653 ms  0x68ea PK11_Encrypt()
  6653 ms  0x68ea symkey:0x7f5fb6886800
           /* TID 0x68f2 */
  6656 ms  0x68f2 PR_Close()
  6656 ms  0x68f2 fd:0x7f5fb5b84760
           /* TID 0x68e4 */
  6656 ms  0x68e4 PR_Close()
  6656 ms  0x68e4 fd:0x7f5fd19fddf0
           /* TID 0x68ea */
  6657 ms  0x68ea PK11_Encrypt()
  6657 ms  0x68ea symkey:0x7f5fb690b380
  6657 ms  0x68ea PK11_Encrypt()
  6657 ms  0x68ea symkey:0x7f5fb690b380
  6664 ms  0x68ea PK11_Encrypt()
  6664 ms  0x68ea symkey:0x7f5fb6886800
  6665 ms  0x68ea PK11_Encrypt()
  6665 ms  0x68ea symkey:0x7f5fb6886800
  6665 ms  0x68ea PK11_Encrypt()
  6665 ms  0x68ea symkey:0x7f5fb6886800
  6666 ms  0x68ea PK11_Encrypt()
  6666 ms  0x68ea symkey:0x7f5fb6886800
  6666 ms  0x68ea PK11_Encrypt()
  6666 ms  0x68ea symkey:0x7f5fb6886800
  6667 ms  0x68ea PK11_Encrypt()
  6667 ms  0x68ea symkey:0x7f5fb690b380
  6667 ms  0x68ea PR_Close()
  6667 ms  0x68ea fd:0x7f5fb5b84490
  6667 ms  0x68ea PR_Close()
  6667 ms  0x68ea fd:0x7f5fb5be5310
  6667 ms     | 0x68ea PK11_Encrypt()
  6667 ms     | 0x68ea symkey:0x7f5fb6886800
  6667 ms  0x68ea PR_Close()
  6667 ms  0x68ea fd:0x7f5fb5be56d0
  6667 ms     | 0x68ea PK11_Encrypt()
  6667 ms     | 0x68ea symkey:0x7f5fb690b380
  6667 ms  0x68ea PR_Close()
  6667 ms  0x68ea fd:0x7f5fb5be58b0
  6668 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  6668 ms     | 0x68ea privk:0x7f5fc7711020::7f5fc7711020  d0 4d 97 b6                                      .M..
  6668 ms     | 0x68ea privk:0x7f5fc7711020::7f5fc7711020  e5 e5 e5 e5                                      ....
  6668 ms     | 0x68ea SECKEY_DestroyPrivateKey()
  6668 ms     | 0x68ea privk:0x7f5fb6bd1020::7f5fb6bd1020  50 4b 97 b6                                      PK..
  6668 ms     | 0x68ea privk:0x7f5fb6bd1020::7f5fb6bd1020  e5 e5 e5 e5                                      ....
           /* TID 0x698a */
  6677 ms  0x698a PR_Close()
  6677 ms  0x698a fd:0x7f5fb5b841f0
           /* TID 0x68df */
  6704 ms  0x68df PR_Close()
  6704 ms  0x68df fd:0x7f5fb5be5ac0
  6704 ms  0x68df PR_Close()
  6704 ms  0x68df fd:0x7f5fb5b84490
           /* TID 0x68ea */
  6704 ms  0x68ea PR_Close()
  6704 ms  0x68ea fd:0x7f5fce1846a0
           /* TID 0x6939 */
  6709 ms  0x6939 PR_Close()
  6709 ms  0x6939 fd:0x7f5fb5b847c0
  6709 ms  0x6939 PR_Close()
  6709 ms  0x6939 fd:0x7f5fb5b847c0
  6709 ms  0x6939 PR_Close()
  6709 ms  0x6939 fd:0x7f5fb5b847c0
  6709 ms  0x6939 PR_Close()
  6709 ms  0x6939 fd:0x7f5fb5b84970
           /* TID 0x698a */
  6711 ms  0x698a PR_Close()
  6711 ms  0x698a fd:0x7f5fb5b84970
           /* TID 0x68f2 */
  6718 ms  0x68f2 PR_Close()
  6718 ms  0x68f2 fd:0x7f5fb5be5ca0
  6718 ms  0x68f2 PR_Close()
  6718 ms  0x68f2 fd:0x7f5fb5be5e20
           /* TID 0x68e4 */
  6730 ms  0x68e4 PR_Close()
  6730 ms  0x68e4 fd:0x7f5fce1846d0
           /* TID 0x68df */
  6757 ms  0x68df PR_Close()
  6757 ms  0x68df fd:0x7f5fb5be50a0
  6757 ms  0x68df PR_Close()
  6757 ms  0x68df fd:0x7f5fb67fcd00
           /* TID 0x698a */
  6758 ms  0x698a PR_Close()
  6758 ms  0x698a fd:0x7f5fb67fcdf0
           /* TID 0x68e4 */
  6761 ms  0x68e4 PR_Close()
  6761 ms  0x68e4 fd:0x7f5fcdf55820
           /* TID 0x698a */
  6761 ms  0x698a PR_Close()
  6761 ms  0x698a fd:0x7f5fb5b84d90
  6782 ms  0x698a PR_Close()
  6782 ms  0x698a fd:0x7f5fb5b84370
  6783 ms  0x698a PR_Close()
  6783 ms  0x698a fd:0x7f5fb5b84370
  6799 ms  0x698a PR_Close()
  6799 ms  0x698a fd:0x7f5fb5b84730
  6800 ms  0x698a PR_Close()
  6800 ms  0x698a fd:0x7f5fb5b84790
  6809 ms  0x698a PR_Close()
  6809 ms  0x698a fd:0x7f5fb5b84d60
  6813 ms  0x698a PR_Close()
  6813 ms  0x698a fd:0x7f5fb5be56d0
  6820 ms  0x698a PR_Close()
  6820 ms  0x698a fd:0x7f5fb5be5f10
  6829 ms  0x698a PR_Close()
  6829 ms  0x698a fd:0x7f5fb67fc100
  6830 ms  0x698a PR_Close()
  6830 ms  0x698a fd:0x7f5fb67fc100
           /* TID 0x68df */
  6985 ms  0x68df PR_Close()
  6985 ms  0x68df fd:0x7f5fb5be56d0
  6985 ms  0x68df PR_Close()
  6985 ms  0x68df fd:0x7f5fb5be56d0
  6992 ms  0x68df PR_Close()
  6992 ms  0x68df fd:0x7f5fefeda130
  6992 ms  0x68df PR_Close()
  6992 ms  0x68df fd:0x7f5fefeda190
Process terminated
