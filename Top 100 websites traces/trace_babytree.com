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
           /* TID 0x26e5 */
    19 ms  0x26e5 PR_Close()
    19 ms  0x26e5 fd:0x7f3008cb4700
           /* TID 0x26dd */
   246 ms  0x26dd SSL_ImportFD()
   246 ms  0x26dd ret:0x7f2ff9cca2e0
   246 ms  0x26dd SSL_AuthCertificateHook()
   246 ms  0x26dd fd:0x7f2ff9cca2e0
   246 ms  0x26dd ret:0x0
   246 ms  0x26dd PR_Connect()
   246 ms  0x26dd fd:0x7f2ff9cca2e0
   465 ms  0x26dd SECKEY_CreateECPrivateKey()
   465 ms  0x26dd cx:0x7f2ff9cc3cc8
   467 ms     | 0x26dd EC_ValidatePublicKey()
   467 ms     | 0x26dd ret:0x0
   467 ms  0x26dd ret:0x7f2fe9143820::7f2fe9143820  f0 1b 1a e9                                      ....
   467 ms  0x26dd SECKEY_CreateECPrivateKey()
   467 ms  0x26dd cx:0x7f2ff9cc3cc8
   469 ms     | 0x26dd EC_ValidatePublicKey()
   474 ms     | 0x26dd ret:0x0
   474 ms  0x26dd ret:0x7f2fe9145820::7f2fe9145820  d0 1d 1a e9                                      ....
           /* TID 0x2748 */
   534 ms  0x2748 PR_Close()
   534 ms  0x2748 fd:0x7f2ff9cca1f0
   537 ms  0x2748 PR_Close()
   537 ms  0x2748 fd:0x7f2ff9cca1f0
           /* TID 0x26dd */
   699 ms  SECKEY_ECParamsToKeySize()
   699 ms  0x26dd ret:0x100
   699 ms  0x26dd SECKEY_CreateECPrivateKey()
   699 ms  0x26dd cx:0x7f2ff9cc3cc8
   701 ms     | 0x26dd EC_ValidatePublicKey()
   705 ms     | 0x26dd ret:0x0
   705 ms  0x26dd ret:0x7f2fe914e820::7f2fe914e820  30 28 1e e9                                      0(..
   705 ms  0x26dd PK11_PubDeriveWithKDF()
   705 ms  0x26dd seckey:0x7f2fe914e820
   706 ms     | 0x26dd EC_ValidatePublicKey()
   710 ms     | 0x26dd ret:0x0
   714 ms  0x26dd ret:0x7f2ffb7d7680
   714 ms  0x26dd PK11_DeriveWithFlags()
   714 ms  0x26dd basekey:0x7f2ffb7d7680
   714 ms     | 0x26dd PK11_DeriveWithTemplate()
   714 ms  0x26dd ret:0x7f2fe91d7700
   714 ms  0x26dd PK11_Derive()
   714 ms  0x26dd basekey:0x7f2fe91d7700
   714 ms     | 0x26dd PK11_DeriveWithTemplate()
   714 ms  0x26dd ret:0x7f2fe91d7800
   714 ms  0x26dd SECKEY_DestroyPrivateKey()
   714 ms  0x26dd privk:0x7f2fe914e820::7f2fe914e820  30 28 1e e9                                      0(..
   714 ms  0x26dd privk:0x7f2fe914e820::7f2fe914e820  e5 e5 e5 e5                                      ....
   715 ms  0x26dd PK11_Encrypt()
   715 ms  0x26dd symkey:0x7f2fe91d7980
   717 ms  0x26dd PR_Connect()
   717 ms  0x26dd fd:0x7f2ff9ccad60
           /* TID 0x2748 */
   727 ms  0x2748 PR_Close()
   727 ms  0x2748 fd:0x7f2ff9ccad00
           /* TID 0x26e5 */
   771 ms  0x26e5 PR_Close()
   771 ms  0x26e5 fd:0x7f2ff9ccac40
           /* TID 0x2743 */
   772 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
   772 ms  0x2743 ret:0x0
           /* TID 0x26dd */
   772 ms  0x26dd SSL_AuthCertificateComplete()
   772 ms  0x26dd fd:0x7f2ff9cca2e0
   772 ms  0x26dd err:0x0
   773 ms  0x26dd PK11_Encrypt()
   773 ms  0x26dd symkey:0x7f2fe91d7980
   934 ms  0x26dd SECKEY_DestroyPrivateKey()
   934 ms  0x26dd privk:0x7f2fe9145820::7f2fe9145820  d0 1d 1a e9                                      ....
   934 ms  0x26dd privk:0x7f2fe9145820::7f2fe9145820  e5 e5 e5 e5                                      ....
   935 ms  0x26dd SECKEY_DestroyPrivateKey()
   935 ms  0x26dd privk:0x7f2fe9143820::7f2fe9143820  f0 1b 1a e9                                      ....
   935 ms  0x26dd privk:0x7f2fe9143820::7f2fe9143820  e5 e5 e5 e5                                      ....
  1158 ms  0x26dd SSL_ImportFD()
  1158 ms  0x26dd ret:0x7f2ff9ccaeb0
  1158 ms  0x26dd SSL_AuthCertificateHook()
  1158 ms  0x26dd fd:0x7f2ff9ccaeb0
  1158 ms  0x26dd ret:0x0
  1158 ms  0x26dd PR_Connect()
  1158 ms  0x26dd fd:0x7f2ff9ccaeb0
  1185 ms  0x26dd SECKEY_CreateECPrivateKey()
  1185 ms  0x26dd cx:0x7f2fe91d4768
  1186 ms     | 0x26dd EC_ValidatePublicKey()
  1186 ms     | 0x26dd ret:0x0
  1186 ms  0x26dd ret:0x7f2fe9144820::7f2fe9144820  80 1d 1a e9                                      ....
  1186 ms  0x26dd SECKEY_CreateECPrivateKey()
  1186 ms  0x26dd cx:0x7f2fe91d4768
  1188 ms     | 0x26dd EC_ValidatePublicKey()
  1193 ms     | 0x26dd ret:0x0
  1193 ms  0x26dd ret:0x7f2fe914a820::7f2fe914a820  00 26 1e e9                                      .&..
           /* TID 0x2743 */
  1246 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  1246 ms  0x2743 ret:0x0
           /* TID 0x26dd */
  1246 ms  SECKEY_ECParamsToKeySize()
  1247 ms  0x26dd ret:0x100
  1247 ms  0x26dd SECKEY_CreateECPrivateKey()
  1247 ms  0x26dd cx:0x7f2fe91d4768
  1248 ms     | 0x26dd EC_ValidatePublicKey()
  1252 ms     | 0x26dd ret:0x0
  1252 ms  0x26dd ret:0x7f2fe914e020::7f2fe914e020  d0 28 1e e9                                      .(..
  1252 ms  0x26dd PK11_PubDeriveWithKDF()
  1252 ms  0x26dd seckey:0x7f2fe914e020
  1252 ms     | 0x26dd EC_ValidatePublicKey()
  1255 ms     | 0x26dd ret:0x0
  1266 ms  0x26dd ret:0x7f2ffb7d7680
  1266 ms  0x26dd PK11_DeriveWithFlags()
  1266 ms  0x26dd basekey:0x7f2ffb7d7680
  1266 ms     | 0x26dd PK11_DeriveWithTemplate()
  1266 ms  0x26dd ret:0x7f2fe91d8500
  1266 ms  0x26dd PK11_Derive()
  1266 ms  0x26dd basekey:0x7f2fe91d8500
  1266 ms     | 0x26dd PK11_DeriveWithTemplate()
  1266 ms  0x26dd ret:0x7f2fe91d8580
  1266 ms  0x26dd SECKEY_DestroyPrivateKey()
  1266 ms  0x26dd privk:0x7f2fe914e020::7f2fe914e020  d0 28 1e e9                                      .(..
  1266 ms  0x26dd privk:0x7f2fe914e020::7f2fe914e020  e5 e5 e5 e5                                      ....
  1266 ms  0x26dd PK11_Encrypt()
  1266 ms  0x26dd symkey:0x7f2fe91d8700
  1266 ms  0x26dd SSL_AuthCertificateComplete()
  1266 ms  0x26dd fd:0x7f2ff9ccaeb0
  1266 ms  0x26dd err:0x0
  1267 ms  0x26dd PK11_Encrypt()
  1267 ms  0x26dd symkey:0x7f2fe91d8700
  1318 ms  0x26dd SECKEY_DestroyPrivateKey()
  1318 ms  0x26dd privk:0x7f2fe914a820::7f2fe914a820  00 26 1e e9                                      .&..
  1318 ms  0x26dd privk:0x7f2fe914a820::7f2fe914a820  e5 e5 e5 e5                                      ....
  1318 ms  0x26dd SECKEY_DestroyPrivateKey()
  1318 ms  0x26dd privk:0x7f2fe9144820::7f2fe9144820  80 1d 1a e9                                      ....
  1318 ms  0x26dd privk:0x7f2fe9144820::7f2fe9144820  e5 e5 e5 e5                                      ....
  1321 ms  0x26dd PK11_Encrypt()
  1321 ms  0x26dd symkey:0x7f2fe91d8700
  1351 ms  0x26dd PK11_Encrypt()
  1351 ms  0x26dd symkey:0x7f2fe91d8700
  1380 ms  0x26dd PK11_Encrypt()
  1380 ms  0x26dd symkey:0x7f2fe91d8700
  1408 ms  0x26dd PK11_Encrypt()
  1408 ms  0x26dd symkey:0x7f2fe91d8700
  1525 ms  0x26dd PK11_Encrypt()
  1525 ms  0x26dd symkey:0x7f2fe91d8700
  1557 ms  0x26dd PK11_Encrypt()
  1557 ms  0x26dd symkey:0x7f2fe91d8700
  1589 ms  0x26dd PK11_Encrypt()
  1589 ms  0x26dd symkey:0x7f2fe91d8700
           /* TID 0x273b */
  1617 ms  0x273b PR_Close()
  1617 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca1f0
  1618 ms  0x273b PR_Close()
  1618 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca1f0
  1619 ms  0x273b PR_Close()
  1619 ms  0x273b fd:0x7f2fe91ca250
  1620 ms  0x273b PR_Close()
  1620 ms  0x273b fd:0x7f2fe91ca1f0
  1620 ms  0x273b PR_Close()
  1620 ms  0x273b fd:0x7f2fe91ca250
  1620 ms  0x273b PR_Close()
  1620 ms  0x273b fd:0x7f2fe91ca1f0
  1620 ms  0x273b PR_Close()
  1620 ms  0x273b fd:0x7f2fe91ca250
  1622 ms  0x273b PR_Close()
  1622 ms  0x273b fd:0x7f2fe91ca1f0
  1623 ms  0x273b PR_Close()
  1623 ms  0x273b fd:0x7f2fe91ca1c0
  1625 ms  0x273b PR_Close()
  1625 ms  0x273b fd:0x7f2fe91ca1c0
  1625 ms  0x273b PR_Close()
  1625 ms  0x273b fd:0x7f2fe91ca1f0
  1628 ms  0x273b PR_Close()
  1628 ms  0x273b fd:0x7f2fe91ca1f0
  1628 ms  0x273b PR_Close()
  1628 ms  0x273b fd:0x7f2fe91ca1f0
  1631 ms  0x273b PR_Close()
  1631 ms  0x273b fd:0x7f2fe91ca1f0
  1631 ms  0x273b PR_Close()
  1631 ms  0x273b fd:0x7f2fe91ca1f0
  1680 ms  0x273b PR_Close()
  1680 ms  0x273b fd:0x7f2fe91ca1f0
  1681 ms  0x273b PR_Close()
  1681 ms  0x273b fd:0x7f2fe91ca1f0
  1688 ms  0x273b PR_Close()
  1688 ms  0x273b fd:0x7f2fe91ca1f0
  1688 ms  0x273b PR_Close()
  1688 ms  0x273b fd:0x7f2fe91ca1f0
  1695 ms  0x273b PR_Close()
  1695 ms  0x273b fd:0x7f2fe91ca1f0
  1695 ms  0x273b PR_Close()
  1695 ms  0x273b fd:0x7f2fe91ca1f0
  1697 ms  0x273b PR_Close()
  1697 ms  0x273b fd:0x7f2fe91ca1f0
  1697 ms  0x273b PR_Close()
  1697 ms  0x273b fd:0x7f2fe91ca1f0
           /* TID 0x2738 */
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
  1697 ms  0x2738 PR_Close()
  1697 ms  0x2738 fd:0x7f2fe91ca1f0
           /* TID 0x2748 */
  2200 ms  0x2748 PR_Close()
  2200 ms  0x2748 fd:0x7f2fe91ca550
  2203 ms  0x2748 PR_Close()
  2203 ms  0x2748 fd:0x7f2fe91ca550
  2794 ms  0x2748 PR_Close()
  2794 ms  0x2748 fd:0x7f2fe91ca550
           /* TID 0x26e5 */
  4118 ms  0x26e5 PR_Close()
  4118 ms  0x26e5 fd:0x7f2fe91ca550
  4118 ms  0x26e5 PR_Close()
  4118 ms  0x26e5 fd:0x7f2fe91ca6a0
           /* TID 0x26dd */
  4829 ms  0x26dd SSL_ImportFD()
  4829 ms  0x26dd ret:0x7f2ffb185580
  4829 ms  0x26dd SSL_AuthCertificateHook()
  4829 ms  0x26dd fd:0x7f2ffb185580
  4829 ms  0x26dd ret:0x0
  4830 ms  0x26dd PR_Connect()
  4830 ms  0x26dd fd:0x7f2ffb185580
  5080 ms  0x26dd SSL_ImportFD()
  5080 ms  0x26dd ret:0x7f2ffb185730
  5080 ms  0x26dd SSL_AuthCertificateHook()
  5080 ms  0x26dd fd:0x7f2ffb185730
  5081 ms  0x26dd ret:0x0
  5081 ms  0x26dd PR_Connect()
  5081 ms  0x26dd fd:0x7f2ffb185730
  5089 ms  0x26dd SECKEY_CreateECPrivateKey()
  5089 ms  0x26dd cx:0x7f2fe91d4aa8
  5091 ms     | 0x26dd EC_ValidatePublicKey()
  5091 ms     | 0x26dd ret:0x0
  5091 ms  0x26dd ret:0x7f2ffe895020::7f2ffe895020  20 09 2c 00                                       .,.
  5091 ms  0x26dd SECKEY_CreateECPrivateKey()
  5091 ms  0x26dd cx:0x7f2fe91d4aa8
  5093 ms     | 0x26dd EC_ValidatePublicKey()
  5095 ms     | 0x26dd ret:0x0
  5095 ms  0x26dd ret:0x7f3009905020::7f3009905020  50 0b 2c 00                                      P.,.
  5344 ms  0x26dd SECKEY_CreateECPrivateKey()
  5344 ms  0x26dd cx:0x7f2fe91d4c48
  5346 ms     | 0x26dd EC_ValidatePublicKey()
  5346 ms     | 0x26dd ret:0x0
  5346 ms  0x26dd ret:0x7f2fe8d04820::7f2fe8d04820  80 08 2c 00                                      ..,.
  5347 ms  0x26dd SECKEY_CreateECPrivateKey()
  5347 ms  0x26dd cx:0x7f2fe91d4c48
  5349 ms     | 0x26dd EC_ValidatePublicKey()
  5354 ms     | 0x26dd ret:0x0
  5354 ms  0x26dd ret:0x7f2fe8d06820::7f2fe8d06820  20 0e 2c 00                                       .,.
  5624 ms  SECKEY_ECParamsToKeySize()
  5624 ms  0x26dd ret:0x100
  5624 ms  0x26dd SECKEY_CreateECPrivateKey()
  5624 ms  0x26dd cx:0x7f2fe91d4c48
  5624 ms     | 0x26dd EC_ValidatePublicKey()
  5626 ms     | 0x26dd ret:0x0
  5626 ms  0x26dd ret:0x7f2fe8d18020::7f2fe8d18020  d0 e8 d9 e8                                      ....
  5626 ms  0x26dd PK11_PubDeriveWithKDF()
  5626 ms  0x26dd seckey:0x7f2fe8d18020
  5626 ms     | 0x26dd EC_ValidatePublicKey()
  5627 ms     | 0x26dd ret:0x0
  5629 ms  0x26dd ret:0x7f2ffb7d7680
  5629 ms  0x26dd PK11_DeriveWithFlags()
  5629 ms  0x26dd basekey:0x7f2ffb7d7680
  5629 ms     | 0x26dd PK11_DeriveWithTemplate()
  5629 ms  0x26dd ret:0x7f2ffb189d80
  5629 ms  0x26dd PK11_Derive()
  5629 ms  0x26dd basekey:0x7f2ffb189d80
  5629 ms     | 0x26dd PK11_DeriveWithTemplate()
  5629 ms  0x26dd ret:0x7f2ffb189e00
  5629 ms  0x26dd SECKEY_DestroyPrivateKey()
  5629 ms  0x26dd privk:0x7f2fe8d18020::7f2fe8d18020  d0 e8 d9 e8                                      ....
  5629 ms  0x26dd privk:0x7f2fe8d18020::7f2fe8d18020  e5 e5 e5 e5                                      ....
  5629 ms  0x26dd PK11_Encrypt()
  5629 ms  0x26dd symkey:0x7f2ffb189f80
  5630 ms  0x26dd PR_Connect()
  5630 ms  0x26dd fd:0x7f2ffb185e80
           /* TID 0x26e5 */
  6017 ms  0x26e5 PR_Close()
  6017 ms  0x26e5 fd:0x7f2ffb185e50
           /* TID 0x2743 */
  6018 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6019 ms  0x2743 ret:0x0
  6019 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
  6019 ms  0x2743 ret:0x0
           /* TID 0x26dd */
  6022 ms  0x26dd PR_Close()
  6022 ms  0x26dd fd:0x7f2ffb185e80
  6046 ms  0x26dd SSL_AuthCertificateComplete()
  6046 ms  0x26dd fd:0x7f2ffb185730
  6046 ms  0x26dd err:0x0
  6046 ms     | 0x26dd SECKEY_DestroyPrivateKey()
  6046 ms     | 0x26dd privk:0x7f2fe8d06820::7f2fe8d06820  20 0e 2c 00                                       .,.
  6047 ms     | 0x26dd privk:0x7f2fe8d06820::7f2fe8d06820  e5 e5 e5 e5                                      ....
  6047 ms     | 0x26dd SECKEY_DestroyPrivateKey()
  6047 ms     | 0x26dd privk:0x7f2fe8d04820::7f2fe8d04820  80 08 2c 00                                      ..,.
  6047 ms     | 0x26dd privk:0x7f2fe8d04820::7f2fe8d04820  e5 e5 e5 e5                                      ....
  6145 ms  SECKEY_ECParamsToKeySize()
  6148 ms  0x26dd ret:0x100
  6148 ms  0x26dd SECKEY_CreateECPrivateKey()
  6148 ms  0x26dd cx:0x7f2fe91d4aa8
  6150 ms     | 0x26dd EC_ValidatePublicKey()
  6155 ms     | 0x26dd ret:0x0
  6155 ms  0x26dd ret:0x7f2fe8d05020::7f2fe8d05020  e0 e7 d9 e8                                      ....
  6155 ms  0x26dd PK11_PubDeriveWithKDF()
  6155 ms  0x26dd seckey:0x7f2fe8d05020
  6156 ms     | 0x26dd EC_ValidatePublicKey()
  6161 ms     | 0x26dd ret:0x0
  6166 ms  0x26dd ret:0x7f2ffb7d7680
  6166 ms  0x26dd PK11_DeriveWithFlags()
  6166 ms  0x26dd basekey:0x7f2ffb7d7680
  6166 ms     | 0x26dd PK11_DeriveWithTemplate()
  6166 ms  0x26dd ret:0x7f2ffb189d00
  6166 ms  0x26dd PK11_Derive()
  6166 ms  0x26dd basekey:0x7f2ffb189d00
  6166 ms     | 0x26dd PK11_DeriveWithTemplate()
  6166 ms  0x26dd ret:0x7f2ffb18a100
  6166 ms  0x26dd SECKEY_DestroyPrivateKey()
  6166 ms  0x26dd privk:0x7f2fe8d05020::7f2fe8d05020  e0 e7 d9 e8                                      ....
  6167 ms  0x26dd privk:0x7f2fe8d05020::7f2fe8d05020  e5 e5 e5 e5                                      ....
  6167 ms  0x26dd PK11_Encrypt()
  6167 ms  0x26dd symkey:0x7f2ffb18a300
  6167 ms  0x26dd SSL_AuthCertificateComplete()
  6167 ms  0x26dd fd:0x7f2ffb185580
  6167 ms  0x26dd err:0x0
  6169 ms  0x26dd PK11_Encrypt()
  6169 ms  0x26dd symkey:0x7f2ffb18a300
  6429 ms  0x26dd SECKEY_DestroyPrivateKey()
  6429 ms  0x26dd privk:0x7f3009905020::7f3009905020  50 0b 2c 00                                      P.,.
  6429 ms  0x26dd privk:0x7f3009905020::7f3009905020  e5 e5 e5 e5                                      ....
  6429 ms  0x26dd SECKEY_DestroyPrivateKey()
  6429 ms  0x26dd privk:0x7f2ffe895020::7f2ffe895020  20 09 2c 00                                       .,.
  6430 ms  0x26dd privk:0x7f2ffe895020::7f2ffe895020  e5 e5 e5 e5                                      ....
           /* TID 0x26f4 */
  6715 ms  0x26f4 PR_Close()
  6715 ms  0x26f4 fd:0x7f2fe9164460
           /* TID 0x26dd */
  6723 ms  0x26dd PR_Connect()
  6723 ms  0x26dd fd:0x7f2fe91ca9d0
  6973 ms  0x26dd PR_Connect()
  6973 ms  0x26dd fd:0x7f2ffa3da700
           /* TID 0x26f4 */
  7496 ms  0x26f4 PR_Close()
  7496 ms  0x26f4 fd:0x7f2fe9164f70
           /* TID 0x26e5 */
  8175 ms  0x26e5 PR_Close()
  8175 ms  0x26e5 fd:0x7f2fffe671c0
           /* TID 0x26dd */
  8201 ms  0x26dd PR_Connect()
  8201 ms  0x26dd fd:0x7f2ffffbcdc0
  8238 ms  0x26dd PR_Connect()
  8238 ms  0x26dd fd:0x7f2ffffc2520
  8239 ms  0x26dd PR_Connect()
  8239 ms  0x26dd fd:0x7f300004b1c0
           /* TID 0x26e5 */
  8355 ms  0x26e5 PR_Close()
  8355 ms  0x26e5 fd:0x7f2fffa82310
  8360 ms  0x26e5 PR_Close()
  8360 ms  0x26e5 fd:0x7f2ffb039850
           /* TID 0x26dd */
  8451 ms  0x26dd PR_Connect()
  8451 ms  0x26dd fd:0x7f2fffa82340
  8521 ms  0x26dd PR_Connect()
  8521 ms  0x26dd fd:0x7f30000745e0
           /* TID 0x26e5 */
  8751 ms  0x26e5 PR_Close()
  8751 ms  0x26e5 fd:0x7f2fe91caca0
           /* TID 0x26dd */
  8771 ms  0x26dd PR_Connect()
  8771 ms  0x26dd fd:0x7f30000811f0
           /* TID 0x26e5 */
  9047 ms  0x26e5 PR_Close()
  9047 ms  0x26e5 fd:0x7f2ffb039070
  9421 ms  0x26e5 PR_Close()
  9421 ms  0x26e5 fd:0x7f2ffce79670
  9421 ms  0x26e5 PR_Close()
  9421 ms  0x26e5 fd:0x7f2fff8e8ca0
  9421 ms  0x26e5 PR_Close()
  9421 ms  0x26e5 fd:0x7f2fffbeb4c0
  9422 ms  0x26e5 PR_Close()
  9422 ms  0x26e5 fd:0x7f2ffff72640
  9422 ms  0x26e5 PR_Close()
  9422 ms  0x26e5 fd:0x7f2ffff72cd0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2ffce79670
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2fff8e8ca0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2fffbeb4c0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2ffff72640
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2ffff72cd0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f2ffff72fd0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f3000081670
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000816d0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f3000081d00
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba250
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba5e0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba640
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba6a0
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba730
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000ba790
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000bae50
  9432 ms  0x26e5 PR_Close()
  9432 ms  0x26e5 fd:0x7f30000baeb0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30000baf10
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30000bafa0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102250
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30001022b0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102310
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102370
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30001023d0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102430
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102490
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30001024f0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102580
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f30001025e0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102670
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102730
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102790
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102910
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102ca0
  9433 ms  0x26e5 PR_Close()
  9433 ms  0x26e5 fd:0x7f3000102d00
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102d60
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102dc0
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102e20
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102e80
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102ee0
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102f40
  9434 ms  0x26e5 PR_Close()
  9434 ms  0x26e5 fd:0x7f3000102fa0
           /* TID 0x26dd */
  9538 ms  0x26dd PR_Connect()
  9538 ms  0x26dd fd:0x7f3000081670
  9538 ms  0x26dd PR_Connect()
  9538 ms  0x26dd fd:0x7f2fffbf4df0
  9538 ms  0x26dd PR_Connect()
  9538 ms  0x26dd fd:0x7f2ffff72ca0
  9539 ms  0x26dd PR_Connect()
  9539 ms  0x26dd fd:0x7f2ffff72cd0
  9539 ms  0x26dd PR_Connect()
  9539 ms  0x26dd fd:0x7f2ffff72e50
  9539 ms  0x26dd PR_Connect()
  9539 ms  0x26dd fd:0x7f2ffff72fd0
           /* TID 0x26e5 */
  9984 ms  0x26e5 PR_Close()
  9984 ms  0x26e5 fd:0x7f2ffce3a040
  9990 ms  0x26e5 PR_Close()
  9990 ms  0x26e5 fd:0x7f2ffce3a040
  9996 ms  0x26e5 PR_Close()
  9996 ms  0x26e5 fd:0x7f2ffe847220
           /* TID 0x26dd */
 10023 ms  0x26dd PR_Connect()
 10023 ms  0x26dd fd:0x7f2ffff720a0
 10023 ms  0x26dd PR_Connect()
 10023 ms  0x26dd fd:0x7f2ffe847a00
 10024 ms  0x26dd PR_Connect()
 10024 ms  0x26dd fd:0x7f2ffffbce80
 10024 ms  0x26dd PR_Connect()
 10024 ms  0x26dd fd:0x7f2ffff72640
 10024 ms  0x26dd PR_Connect()
 10024 ms  0x26dd fd:0x7f2ffe890f40
 10024 ms  0x26dd PR_Connect()
 10024 ms  0x26dd fd:0x7f2fff8e8ca0
 10024 ms  0x26dd PR_Connect()
 10024 ms  0x26dd fd:0x7f2fffb3f3a0
 10025 ms  0x26dd PR_Connect()
 10025 ms  0x26dd fd:0x7f2fffb3f670
 10025 ms  0x26dd PR_Connect()
 10025 ms  0x26dd fd:0x7f2fffbdf700
 10025 ms  0x26dd PR_Connect()
 10025 ms  0x26dd fd:0x7f2fffbdf910
           /* TID 0x26e5 */
 10026 ms  0x26e5 PR_Close()
 10026 ms  0x26e5 fd:0x7f2ffce3a040
           /* TID 0x26dd */
 10038 ms  0x26dd PR_Connect()
 10038 ms  0x26dd fd:0x7f2fffbdfca0
 10048 ms  0x26dd PR_Connect()
 10048 ms  0x26dd fd:0x7f3000102250
 10098 ms  0x26dd PR_Connect()
 10098 ms  0x26dd fd:0x7f30000baee0
 10098 ms  0x26dd PR_Connect()
 10098 ms  0x26dd fd:0x7f2ffff72820
 10111 ms  0x26dd PR_Connect()
 10111 ms  0x26dd fd:0x7f3000102e80
           /* TID 0x26e5 */
 10141 ms  0x26e5 PR_Close()
 10141 ms  0x26e5 fd:0x7f2fff862fd0
           /* TID 0x26dd */
 10149 ms  0x26dd PR_Connect()
 10149 ms  0x26dd fd:0x7f2fffbdfd30
           /* TID 0x26e5 */
 10155 ms  0x26e5 PR_Close()
 10155 ms  0x26e5 fd:0x7f2ffce3ad60
           /* TID 0x26dd */
 10160 ms  0x26dd PR_Connect()
 10160 ms  0x26dd fd:0x7f2ffffc25b0
 10174 ms  0x26dd PR_Connect()
 10174 ms  0x26dd fd:0x7f30000ba790
 10186 ms  0x26dd PR_Connect()
 10186 ms  0x26dd fd:0x7f3000102fd0
 10199 ms  0x26dd PR_Connect()
 10199 ms  0x26dd fd:0x7f30001130d0
           /* TID 0x26e5 */
 10205 ms  0x26e5 PR_Close()
 10205 ms  0x26e5 fd:0x7f2ffe847880
           /* TID 0x26dd */
 10212 ms  0x26dd PR_Connect()
 10212 ms  0x26dd fd:0x7f3000102fa0
           /* TID 0x26e5 */
 10214 ms  0x26e5 PR_Close()
 10214 ms  0x26e5 fd:0x7f2ffe847880
           /* TID 0x26dd */
 10224 ms  0x26dd PR_Connect()
 10224 ms  0x26dd fd:0x7f300004ba60
 10236 ms  0x26dd PR_Connect()
 10236 ms  0x26dd fd:0x7f3000113700
           /* TID 0x26e5 */
 10241 ms  0x26e5 PR_Close()
 10241 ms  0x26e5 fd:0x7f2ffad900d0
           /* TID 0x26dd */
 10250 ms  0x26dd PR_Connect()
 10250 ms  0x26dd fd:0x7f2ffe856b50
           /* TID 0x26e5 */
 10260 ms  0x26e5 PR_Close()
 10260 ms  0x26e5 fd:0x7f2ffce3a070
           /* TID 0x26dd */
 10262 ms  0x26dd PR_Connect()
 10262 ms  0x26dd fd:0x7f2ffe847220
 10274 ms  0x26dd PR_Connect()
 10274 ms  0x26dd fd:0x7f300004ba30
 10274 ms  0x26dd PR_Connect()
 10274 ms  0x26dd fd:0x7f2fffb3f5b0
 10275 ms  0x26dd PR_Connect()
 10275 ms  0x26dd fd:0x7f300019f970
 10275 ms  0x26dd PR_Connect()
 10275 ms  0x26dd fd:0x7f300019f250
 10275 ms  0x26dd PR_Connect()
 10275 ms  0x26dd fd:0x7f300019f9a0
           /* TID 0x26e5 */
 10313 ms  0x26e5 PR_Close()
 10313 ms  0x26e5 fd:0x7f2ffe88b190
           /* TID 0x26dd */
 10316 ms  0x26dd PR_Connect()
 10316 ms  0x26dd fd:0x7f30001eae20
           /* TID 0x26e5 */
 10318 ms  0x26e5 PR_Close()
 10318 ms  0x26e5 fd:0x7f30001fd0d0
           /* TID 0x26dd */
 10320 ms  0x26dd PR_Connect()
 10320 ms  0x26dd fd:0x7f30001fe3a0
 10321 ms  0x26dd PR_Connect()
 10321 ms  0x26dd fd:0x7f30001fed00
 10324 ms  0x26dd PR_Connect()
 10324 ms  0x26dd fd:0x7f30002044c0
 10357 ms  0x26dd PR_Connect()
 10357 ms  0x26dd fd:0x7f30002e8df0
 10367 ms  0x26dd PR_Connect()
 10367 ms  0x26dd fd:0x7f3002a492e0
           /* TID 0x26e5 */
 10390 ms  0x26e5 PR_Close()
 10390 ms  0x26e5 fd:0x7f2fff8626d0
           /* TID 0x26dd */
 10426 ms  0x26dd PR_Connect()
 10426 ms  0x26dd fd:0x7f2fffe671c0
 10462 ms  0x26dd PR_Connect()
 10462 ms  0x26dd fd:0x7f30000ba730
           /* TID 0x26e5 */
 10469 ms  0x26e5 PR_Close()
 10469 ms  0x26e5 fd:0x7f2ffce79550
           /* TID 0x26dd */
 10474 ms  0x26dd PR_Connect()
 10474 ms  0x26dd fd:0x7f3002a616d0
           /* TID 0x26e5 */
 10486 ms  0x26e5 PR_Close()
 10486 ms  0x26e5 fd:0x7f2ffce3a070
           /* TID 0x26dd */
 10486 ms  0x26dd PR_Connect()
 10486 ms  0x26dd fd:0x7f3000102400
 10498 ms  0x26dd PR_Connect()
 10498 ms  0x26dd fd:0x7f300019fd00
 10498 ms  0x26dd PR_Connect()
 10498 ms  0x26dd fd:0x7f300004bbe0
 10498 ms  0x26dd PR_Connect()
 10498 ms  0x26dd fd:0x7f300004bc10
           /* TID 0x26e5 */
 10527 ms  0x26e5 PR_Close()
 10527 ms  0x26e5 fd:0x7f2ffc060820
 10527 ms  0x26e5 PR_Close()
 10527 ms  0x26e5 fd:0x7f2ffe856f70
           /* TID 0x26dd */
 10531 ms  0x26dd PR_Close()
 10531 ms  0x26dd fd:0x7f3000102250
           /* TID 0x26e5 */
 10534 ms  0x26e5 PR_Close()
 10534 ms  0x26e5 fd:0x7f2ffffc20a0
 10547 ms  0x26e5 PR_Close()
 10547 ms  0x26e5 fd:0x7f2ffffc29a0
 10565 ms  0x26e5 PR_Close()
 10565 ms  0x26e5 fd:0x7f2ffe856f70
           /* TID 0x26dd */
 10567 ms  0x26dd PR_Connect()
 10567 ms  0x26dd fd:0x7f2ffffc20a0
           /* TID 0x26e5 */
 10570 ms  0x26e5 PR_Close()
 10570 ms  0x26e5 fd:0x7f2ffe856f70
           /* TID 0x26dd */
 10574 ms  0x26dd PR_Connect()
 10574 ms  0x26dd fd:0x7f3000102310
           /* TID 0x26e5 */
 10576 ms  0x26e5 PR_Close()
 10576 ms  0x26e5 fd:0x7f300019fa00
 10634 ms  0x26e5 PR_Close()
 10634 ms  0x26e5 fd:0x7f2ffbbfee20
 10643 ms  0x26e5 PR_Close()
 10643 ms  0x26e5 fd:0x7f2ffce797f0
 10644 ms  0x26e5 PR_Close()
 10644 ms  0x26e5 fd:0x7f2ffce797f0
 10656 ms  0x26e5 PR_Close()
 10656 ms  0x26e5 fd:0x7f2ffbbfee20
 10660 ms  0x26e5 PR_Close()
 10660 ms  0x26e5 fd:0x7f2ffbbfee20
 10662 ms  0x26e5 PR_Close()
 10662 ms  0x26e5 fd:0x7f2fff8629d0
 10676 ms  0x26e5 PR_Close()
 10676 ms  0x26e5 fd:0x7f2ffce799a0
           /* TID 0x26dd */
 10676 ms  0x26dd PR_Connect()
 10676 ms  0x26dd fd:0x7f2fffe670a0
 10711 ms  0x26dd PR_Connect()
 10711 ms  0x26dd fd:0x7f30001021c0
           /* TID 0x26e5 */
 10723 ms  0x26e5 PR_Close()
 10723 ms  0x26e5 fd:0x7f2ffc060820
 10739 ms  0x26e5 PR_Close()
 10739 ms  0x26e5 fd:0x7f2fffe67520
           /* TID 0x26dd */
 10749 ms  0x26dd PR_Connect()
 10749 ms  0x26dd fd:0x7f3002ab95e0
 10749 ms  0x26dd PR_Connect()
 10749 ms  0x26dd fd:0x7f300004ba00
 10749 ms  0x26dd PR_Connect()
 10749 ms  0x26dd fd:0x7f3002ab9a90
 10761 ms  0x26dd PR_Connect()
 10761 ms  0x26dd fd:0x7f3002ac7d30
 10762 ms  0x26dd PR_Connect()
 10762 ms  0x26dd fd:0x7f3002ac7c10
           /* TID 0x26e5 */
 10765 ms  0x26e5 PR_Close()
 10765 ms  0x26e5 fd:0x7f3002ac7bb0
 10773 ms  0x26e5 PR_Close()
 10773 ms  0x26e5 fd:0x7f2ffff72070
 10774 ms  0x26e5 PR_Close()
 10774 ms  0x26e5 fd:0x7f2ffff72070
 10793 ms  0x26e5 PR_Close()
 10793 ms  0x26e5 fd:0x7f2ffff72070
           /* TID 0x26dd */
 10799 ms  0x26dd SSL_ImportFD()
 10799 ms  0x26dd ret:0x7f3000102460
 10799 ms  0x26dd SSL_AuthCertificateHook()
 10799 ms  0x26dd fd:0x7f3000102460
 10799 ms  0x26dd ret:0x0
 10799 ms  0x26dd PR_Connect()
 10799 ms  0x26dd fd:0x7f3000102460
           /* TID 0x26e5 */
 10806 ms  0x26e5 PR_Close()
 10806 ms  0x26e5 fd:0x7f2ffce79580
 10806 ms  0x26e5 PR_Close()
 10806 ms  0x26e5 fd:0x7f3000204070
           /* TID 0x26dd */
 10823 ms  0x26dd PR_Connect()
 10823 ms  0x26dd fd:0x7f2ffffc21c0
           /* TID 0x26e5 */
 10839 ms  0x26e5 PR_Close()
 10839 ms  0x26e5 fd:0x7f2ffce797f0
 10839 ms  0x26e5 PR_Close()
 10839 ms  0x26e5 fd:0x7f30001023d0
 10840 ms  0x26e5 PR_Close()
 10840 ms  0x26e5 fd:0x7f2ffce797f0
 10842 ms  0x26e5 PR_Close()
 10842 ms  0x26e5 fd:0x7f2ffce797f0
 10842 ms  0x26e5 PR_Close()
 10842 ms  0x26e5 fd:0x7f2ffce797f0
           /* TID 0x26dd */
 10871 ms  0x26dd PR_Connect()
 10871 ms  0x26dd fd:0x7f3002b78490
 10871 ms  0x26dd PR_Connect()
 10871 ms  0x26dd fd:0x7f3000234310
 10871 ms  0x26dd PR_Connect()
 10871 ms  0x26dd fd:0x7f3000234ac0
 10871 ms  0x26dd PR_Connect()
 10871 ms  0x26dd fd:0x7f3002a61460
 10872 ms  0x26dd PR_Connect()
 10872 ms  0x26dd fd:0x7f3002ab92e0
 10872 ms  0x26dd PR_Connect()
 10872 ms  0x26dd fd:0x7f3002ab9ac0
           /* TID 0x26e5 */
 10873 ms  0x26e5 PR_Close()
 10873 ms  0x26e5 fd:0x7f3000102610
           /* TID 0x26dd */
 10876 ms  0x26dd PR_Connect()
 10876 ms  0x26dd fd:0x7f3000222370
           /* TID 0x26e5 */
 10881 ms  0x26e5 PR_Close()
 10881 ms  0x26e5 fd:0x7f300004b970
 10897 ms  0x26e5 PR_Close()
 10897 ms  0x26e5 fd:0x7f300004b970
 10911 ms  0x26e5 PR_Close()
 10911 ms  0x26e5 fd:0x7f2ffc060820
 10917 ms  0x26e5 PR_Close()
 10917 ms  0x26e5 fd:0x7f2ffc060820
 10943 ms  0x26e5 PR_Close()
 10943 ms  0x26e5 fd:0x7f2ffffc2400
 10968 ms  0x26e5 PR_Close()
 10968 ms  0x26e5 fd:0x7f2ffc060f10
 10979 ms  0x26e5 PR_Close()
 10979 ms  0x26e5 fd:0x7f2ffc060f10
 10980 ms  0x26e5 PR_Close()
 10980 ms  0x26e5 fd:0x7f2ffc060f10
 10995 ms  0x26e5 PR_Close()
 10995 ms  0x26e5 fd:0x7f2ffce79850
 11003 ms  0x26e5 PR_Close()
 11003 ms  0x26e5 fd:0x7f2ffffbcd90
           /* TID 0x26dd */
 11011 ms  0x26dd PR_Connect()
 11011 ms  0x26dd fd:0x7f3000102280
 11012 ms  0x26dd PR_Connect()
 11012 ms  0x26dd fd:0x7f30001025e0
           /* TID 0x26e5 */
 11018 ms  0x26e5 PR_Close()
 11018 ms  0x26e5 fd:0x7f3000102910
 11018 ms  0x26e5 PR_Close()
 11018 ms  0x26e5 fd:0x7f3000102910
 11021 ms  0x26e5 PR_Close()
 11021 ms  0x26e5 fd:0x7f2ffffc2970
           /* TID 0x26dd */
 11049 ms  0x26dd PR_Close()
 11049 ms  0x26dd fd:0x7f2ffb185730
 11049 ms     | 0x26dd PK11_Encrypt()
 11049 ms     | 0x26dd symkey:0x7f2ffb189f80
 11049 ms  0x26dd SSL_ImportFD()
 11049 ms  0x26dd ret:0x7f2ffb185760
 11049 ms  0x26dd SSL_AuthCertificateHook()
 11049 ms  0x26dd fd:0x7f2ffb185760
 11049 ms  0x26dd ret:0x0
 11049 ms  0x26dd PR_Connect()
 11049 ms  0x26dd fd:0x7f2ffb185760
 11052 ms  0x26dd SECKEY_CreateECPrivateKey()
 11052 ms  0x26dd cx:0x7f2fe91d6168
 11053 ms     | 0x26dd EC_ValidatePublicKey()
 11053 ms     | 0x26dd ret:0x0
 11053 ms  0x26dd ret:0x7f3002bbc820::7f3002bbc820  b0 4f 06 00                                      .O..
 11053 ms  0x26dd SECKEY_CreateECPrivateKey()
 11053 ms  0x26dd cx:0x7f2fe91d6168
 11054 ms     | 0x26dd EC_ValidatePublicKey()
 11055 ms     | 0x26dd ret:0x0
 11055 ms  0x26dd ret:0x7f3002bc0820::7f3002bc0820  e0 3c 07 00                                      .<..
 11075 ms  0x26dd PR_Connect()
 11075 ms  0x26dd fd:0x7f3000234fa0
           /* TID 0x26e5 */
 11083 ms  0x26e5 PR_Close()
 11083 ms  0x26e5 fd:0x7f3000102670
 11107 ms  0x26e5 PR_Close()
 11107 ms  0x26e5 fd:0x7f2ffb105c10
 11114 ms  0x26e5 PR_Close()
 11114 ms  0x26e5 fd:0x7f2ff9ccae20
 11120 ms  0x26e5 PR_Close()
 11120 ms  0x26e5 fd:0x7f2ffce79b80
           /* TID 0x26dd */
 11122 ms  0x26dd PR_Connect()
 11122 ms  0x26dd fd:0x7f2ffe8565b0
 11122 ms  0x26dd PR_Connect()
 11122 ms  0x26dd fd:0x7f2ffce79e50
 11122 ms  0x26dd PR_Connect()
 11122 ms  0x26dd fd:0x7f2ffe856610
 11123 ms  0x26dd PR_Connect()
 11123 ms  0x26dd fd:0x7f2ffe856640
 11123 ms  0x26dd PR_Connect()
 11123 ms  0x26dd fd:0x7f2ffceb3130
 11123 ms  0x26dd PR_Connect()
 11123 ms  0x26dd fd:0x7f2ffe856040
           /* TID 0x26e5 */
 11134 ms  0x26e5 PR_Close()
 11134 ms  0x26e5 fd:0x7f2ffb039580
 11154 ms  0x26e5 PR_Close()
 11154 ms  0x26e5 fd:0x7f2ffb1055b0
 11155 ms  0x26e5 PR_Close()
 11155 ms  0x26e5 fd:0x7f2ffb1055b0
 11163 ms  0x26e5 PR_Close()
 11163 ms  0x26e5 fd:0x7f2ffb1055b0
 11195 ms  0x26e5 PR_Close()
 11195 ms  0x26e5 fd:0x7f2ffb039130
 11197 ms  0x26e5 PR_Close()
 11197 ms  0x26e5 fd:0x7f2ffa3da070
 11223 ms  0x26e5 PR_Close()
 11223 ms  0x26e5 fd:0x7f2ffb039130
 11232 ms  0x26e5 PR_Close()
 11232 ms  0x26e5 fd:0x7f2ffb039130
 11267 ms  0x26e5 PR_Close()
 11267 ms  0x26e5 fd:0x7f2fe9164400
 11277 ms  0x26e5 PR_Close()
 11277 ms  0x26e5 fd:0x7f2ffb039e20
 11280 ms  0x26e5 PR_Close()
 11280 ms  0x26e5 fd:0x7f2ffb0393d0
 11283 ms  0x26e5 PR_Close()
 11283 ms  0x26e5 fd:0x7f2ffb03b850
 11288 ms  0x26e5 PR_Close()
 11288 ms  0x26e5 fd:0x7f2ffb039640
 11294 ms  0x26e5 PR_Close()
 11294 ms  0x26e5 fd:0x7f2ffb039130
 11295 ms  0x26e5 PR_Close()
 11295 ms  0x26e5 fd:0x7f2ffb039130
 11301 ms  0x26e5 PR_Close()
 11301 ms  0x26e5 fd:0x7f2fe9164be0
 11302 ms  0x26e5 PR_Close()
 11302 ms  0x26e5 fd:0x7f2fe9164be0
           /* TID 0x26dd */
 11322 ms  SECKEY_ECParamsToKeySize()
 11322 ms  0x26dd ret:0x100
 11322 ms  0x26dd SECKEY_CreateECPrivateKey()
 11322 ms  0x26dd cx:0x7f2fe91d6168
 11322 ms     | 0x26dd EC_ValidatePublicKey()
 11324 ms     | 0x26dd ret:0x0
 11324 ms  0x26dd ret:0x7f2fe914c020::7f2fe914c020  70 ee 15 e9                                      p...
 11324 ms  0x26dd PK11_PubDeriveWithKDF()
 11324 ms  0x26dd seckey:0x7f2fe914c020
 11324 ms     | 0x26dd EC_ValidatePublicKey()
 11326 ms     | 0x26dd ret:0x0
 11331 ms  0x26dd ret:0x7f2ffb189e00
 11331 ms  0x26dd PK11_DeriveWithFlags()
 11331 ms  0x26dd basekey:0x7f2ffb189e00
 11331 ms     | 0x26dd PK11_DeriveWithTemplate()
 11331 ms  0x26dd ret:0x7f2ffb189d80
 11331 ms  0x26dd PK11_Derive()
 11331 ms  0x26dd basekey:0x7f2ffb189d80
 11331 ms     | 0x26dd PK11_DeriveWithTemplate()
 11331 ms  0x26dd ret:0x7f2ffb7d7680
 11331 ms  0x26dd SECKEY_DestroyPrivateKey()
 11331 ms  0x26dd privk:0x7f2fe914c020::7f2fe914c020  70 ee 15 e9                                      p...
 11331 ms  0x26dd privk:0x7f2fe914c020::7f2fe914c020  e5 e5 e5 e5                                      ....
 11331 ms  0x26dd PK11_Encrypt()
 11331 ms  0x26dd symkey:0x7f2ffb189e80
           /* TID 0x26e5 */
 11333 ms  0x26e5 PR_Close()
 11333 ms  0x26e5 fd:0x7f2ffb0ff1f0
           /* TID 0x26dd */
 11338 ms  0x26dd SECKEY_CreateECPrivateKey()
 11338 ms  0x26dd cx:0x7f2fe91d4c48
 11340 ms     | 0x26dd EC_ValidatePublicKey()
 11340 ms     | 0x26dd ret:0x0
 11340 ms  0x26dd ret:0x7f2fe914c020::7f2fe914c020  80 ed 15 e9                                      ....
 11340 ms  0x26dd SECKEY_CreateECPrivateKey()
 11340 ms  0x26dd cx:0x7f2fe91d4c48
 11340 ms     | 0x26dd EC_ValidatePublicKey()
 11342 ms     | 0x26dd ret:0x0
 11342 ms  0x26dd ret:0x7f2ff9d9e820::7f2ff9d9e820  90 87 43 fb                                      ..C.
           /* TID 0x26e5 */
 11344 ms  0x26e5 PR_Close()
 11344 ms  0x26e5 fd:0x7f2ffb0fffa0
           /* TID 0x26dd */
 11345 ms  0x26dd PR_Connect()
 11345 ms  0x26dd fd:0x7f2ffb1053d0
           /* TID 0x26e5 */
 11387 ms  0x26e5 PR_Close()
 11387 ms  0x26e5 fd:0x7f2ffb185850
 11389 ms  0x26e5 PR_Close()
 11389 ms  0x26e5 fd:0x7f2ffb44af10
 11390 ms  0x26e5 PR_Close()
 11390 ms  0x26e5 fd:0x7f2ffb44af10
 11393 ms  0x26e5 PR_Close()
 11393 ms  0x26e5 fd:0x7f2ffb44afa0
 11439 ms  0x26e5 PR_Close()
 11439 ms  0x26e5 fd:0x7f2ffb039370
 11481 ms  0x26e5 PR_Close()
 11481 ms  0x26e5 fd:0x7f2ffb0390d0
 11484 ms  0x26e5 PR_Close()
 11484 ms  0x26e5 fd:0x7f2ffb0390d0
 11544 ms  0x26e5 PR_Close()
 11544 ms  0x26e5 fd:0x7f2ffb185850
 11557 ms  0x26e5 PR_Close()
 11557 ms  0x26e5 fd:0x7f2ffb039100
 11575 ms  0x26e5 PR_Close()
 11575 ms  0x26e5 fd:0x7f2fe9164400
 11580 ms  0x26e5 PR_Close()
 11580 ms  0x26e5 fd:0x7f2fe9164400
 11581 ms  0x26e5 PR_Close()
 11581 ms  0x26e5 fd:0x7f2ffb0395b0
 11619 ms  0x26e5 PR_Close()
 11619 ms  0x26e5 fd:0x7f2ffb1050d0
           /* TID 0x26dd */
 11620 ms  SECKEY_ECParamsToKeySize()
 11620 ms  0x26dd ret:0x100
 11620 ms  0x26dd SECKEY_CreateECPrivateKey()
 11620 ms  0x26dd cx:0x7f2fe91d4c48
 11621 ms     | 0x26dd EC_ValidatePublicKey()
 11624 ms     | 0x26dd ret:0x0
 11624 ms  0x26dd ret:0x7f2fffa36020::7f2fffa36020  80 8d 43 fb                                      ..C.
 11624 ms  0x26dd PK11_PubDeriveWithKDF()
 11624 ms  0x26dd seckey:0x7f2fffa36020
 11624 ms     | 0x26dd EC_ValidatePublicKey()
 11628 ms     | 0x26dd ret:0x0
 11630 ms  0x26dd ret:0x7f2ffb189e00
 11630 ms  0x26dd PK11_DeriveWithFlags()
 11630 ms  0x26dd basekey:0x7f2ffb189e00
 11630 ms     | 0x26dd PK11_DeriveWithTemplate()
 11631 ms  0x26dd ret:0x7f2ffb4f7800
 11631 ms  0x26dd PK11_Derive()
 11631 ms  0x26dd basekey:0x7f2ffb4f7800
 11631 ms     | 0x26dd PK11_DeriveWithTemplate()
 11631 ms  0x26dd ret:0x7f2ffb4f8200
 11631 ms  0x26dd SECKEY_DestroyPrivateKey()
 11631 ms  0x26dd privk:0x7f2fffa36020::7f2fffa36020  80 8d 43 fb                                      ..C.
 11631 ms  0x26dd privk:0x7f2fffa36020::7f2fffa36020  e5 e5 e5 e5                                      ....
 11631 ms  0x26dd PK11_Encrypt()
 11631 ms  0x26dd symkey:0x7f2ffb4f8980
 11632 ms  0x26dd PR_Connect()
 11632 ms  0x26dd fd:0x7f2ffb7b5160
           /* TID 0x26e5 */
 11641 ms  0x26e5 PR_Close()
 11641 ms  0x26e5 fd:0x7f2ffb7b5130
 11646 ms  0x26e5 PR_Close()
 11646 ms  0x26e5 fd:0x7f2ffb039130
           /* TID 0x26dd */
 11648 ms  0x26dd PR_Close()
 11648 ms  0x26dd fd:0x7f2fffbdf910
           /* TID 0x26e5 */
 11654 ms  0x26e5 PR_Close()
 11654 ms  0x26e5 fd:0x7f2ffb039130
 11657 ms  0x26e5 PR_Close()
 11657 ms  0x26e5 fd:0x7f2ffb039d60
 11660 ms  0x26e5 PR_Close()
 11660 ms  0x26e5 fd:0x7f2ffb7b52e0
 11662 ms  0x26e5 PR_Close()
 11662 ms  0x26e5 fd:0x7f2ffb7b5370
 11664 ms  0x26e5 PR_Close()
 11664 ms  0x26e5 fd:0x7f2ffb03b8e0
 11667 ms  0x26e5 PR_Close()
 11667 ms  0x26e5 fd:0x7f2ffb7b5430
 11730 ms  0x26e5 PR_Close()
 11730 ms  0x26e5 fd:0x7f2ffb44af70
           /* TID 0x26dd */
 11751 ms  0x26dd PR_Close()
 11751 ms  0x26dd fd:0x7f2ffb1053d0
           /* TID 0x26e5 */
 11753 ms  0x26e5 PR_Close()
 11753 ms  0x26e5 fd:0x7f2ffb039130
           /* TID 0x2743 */
 11753 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11754 ms  0x2743 ret:0x0
 11754 ms  0x2743 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 11754 ms  0x2743 ret:0x0
           /* TID 0x26dd */
 11754 ms  0x26dd SSL_AuthCertificateComplete()
 11754 ms  0x26dd fd:0x7f3000102460
 11754 ms  0x26dd err:0x0
 11754 ms     | 0x26dd SECKEY_DestroyPrivateKey()
 11754 ms     | 0x26dd privk:0x7f3002bc0820::7f3002bc0820  e0 3c 07 00                                      .<..
 11755 ms     | 0x26dd privk:0x7f3002bc0820::7f3002bc0820  e5 e5 e5 e5                                      ....
 11755 ms     | 0x26dd SECKEY_DestroyPrivateKey()
 11755 ms     | 0x26dd privk:0x7f3002bbc820::7f3002bbc820  b0 4f 06 00                                      .O..
 11755 ms     | 0x26dd privk:0x7f3002bbc820::7f3002bbc820  e5 e5 e5 e5                                      ....
 11756 ms  0x26dd PK11_Encrypt()
 11756 ms  0x26dd symkey:0x7f2ffb189e80
           /* TID 0x26e5 */
 11821 ms  0x26e5 PR_Close()
 11821 ms  0x26e5 fd:0x7f2ffb185850
 11850 ms  0x26e5 PR_Close()
 11850 ms  0x26e5 fd:0x7f2ffb7b5130
 11862 ms  0x26e5 PR_Close()
 11862 ms  0x26e5 fd:0x7f2ffb039640
 11906 ms  0x26e5 PR_Close()
 11906 ms  0x26e5 fd:0x7f2ffb7b5310
 11918 ms  0x26e5 PR_Close()
 11918 ms  0x26e5 fd:0x7f2ffb7b5310
 11923 ms  0x26e5 PR_Close()
 11923 ms  0x26e5 fd:0x7f2ffb7b5310
 11926 ms  0x26e5 PR_Close()
 11926 ms  0x26e5 fd:0x7f2ffb7b5130
 11935 ms  0x26e5 PR_Close()
 11935 ms  0x26e5 fd:0x7f2ffb039580
 11940 ms  0x26e5 PR_Close()
 11940 ms  0x26e5 fd:0x7f2ffb039580
           /* TID 0x26dd */
 11996 ms  0x26dd PR_Close()
 11996 ms  0x26dd fd:0x7f2ffb7b5160
           /* TID 0x26e5 */
 11998 ms  0x26e5 PR_Close()
 11998 ms  0x26e5 fd:0x7f2fe9164460
           /* TID 0x2781 */
 11999 ms  0x2781 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12000 ms  0x2781 ret:0x0
 12000 ms  0x2781 _ZN7mozilla4pkix16VerifySignedDataERNS0_11TrustDomainERKNS0_3der23SignedDataWithSignatureENS0_5InputE()
 12000 ms  0x2781 ret:0x0
           /* TID 0x26dd */
 12000 ms  0x26dd SSL_AuthCertificateComplete()
 12000 ms  0x26dd fd:0x7f2ffb185760
 12000 ms  0x26dd err:0x0
 12001 ms     | 0x26dd SECKEY_DestroyPrivateKey()
 12001 ms     | 0x26dd privk:0x7f2ff9d9e820::7f2ff9d9e820  90 87 43 fb                                      ..C.
 12001 ms     | 0x26dd privk:0x7f2ff9d9e820::7f2ff9d9e820  e5 e5 e5 e5                                      ....
 12001 ms     | 0x26dd SECKEY_DestroyPrivateKey()
 12001 ms     | 0x26dd privk:0x7f2fe914c020::7f2fe914c020  80 ed 15 e9                                      ....
 12001 ms     | 0x26dd privk:0x7f2fe914c020::7f2fe914c020  e5 e5 e5 e5                                      ....
           /* TID 0x26e5 */
 12022 ms  0x26e5 PR_Close()
 12022 ms  0x26e5 fd:0x7f2ffb039580
 12096 ms  0x26e5 PR_Close()
 12096 ms  0x26e5 fd:0x7f2ffb03b790
 12131 ms  0x26e5 PR_Close()
 12131 ms  0x26e5 fd:0x7f2ffb039370
 12136 ms  0x26e5 PR_Close()
 12136 ms  0x26e5 fd:0x7f2ffb039370
           /* TID 0x26dd */
 12193 ms  0x26dd PR_Connect()
 12193 ms  0x26dd fd:0x7f2ffb1059d0
           /* TID 0x26e5 */
 12384 ms  0x26e5 PR_Close()
 12384 ms  0x26e5 fd:0x7f2ffb44aa30
 12385 ms  0x26e5 PR_Close()
 12385 ms  0x26e5 fd:0x7f2ffb185880
 12408 ms  0x26e5 PR_Close()
 12408 ms  0x26e5 fd:0x7f2ffb03b670
           /* TID 0x26dd */
 12444 ms  0x26dd PR_Connect()
 12444 ms  0x26dd fd:0x7f2ffb44a850
           /* TID 0x26e5 */
 12647 ms  0x26e5 PR_Close()
 12647 ms  0x26e5 fd:0x7f2ffb03b670
 12721 ms  0x26e5 PR_Close()
 12721 ms  0x26e5 fd:0x7f2ffb03b790
 12994 ms  0x26e5 PR_Close()
 12994 ms  0x26e5 fd:0x7f2ffad90730
           /* TID 0x26dd */
 13050 ms  0x26dd PR_Close()
 13050 ms  0x26dd fd:0x7f2ffa3da700
           /* TID 0x26e5 */
 13070 ms  0x26e5 PR_Close()
 13070 ms  0x26e5 fd:0x7f2fe9164070
 13074 ms  0x26e5 PR_Close()
 13074 ms  0x26e5 fd:0x7f2fe9164070
 13077 ms  0x26e5 PR_Close()
 13077 ms  0x26e5 fd:0x7f2fe9164070
 13232 ms  0x26e5 PR_Close()
 13232 ms  0x26e5 fd:0x7f2ffb1055e0
 13298 ms  0x26e5 PR_Close()
 13298 ms  0x26e5 fd:0x7f2ffb1055e0
 13346 ms  0x26e5 PR_Close()
 13346 ms  0x26e5 fd:0x7f2ffb1055e0
 13356 ms  0x26e5 PR_Close()
 13356 ms  0x26e5 fd:0x7f2ffa3da850
 13359 ms  0x26e5 PR_Close()
 13359 ms  0x26e5 fd:0x7f2ffa3da700
 13361 ms  0x26e5 PR_Close()
 13361 ms  0x26e5 fd:0x7f2ffa3da850
 13390 ms  0x26e5 PR_Close()
 13390 ms  0x26e5 fd:0x7f2ffa3da850
 13510 ms  0x26e5 PR_Close()
 13510 ms  0x26e5 fd:0x7f2ffa3da700
 13524 ms  0x26e5 PR_Close()
 13524 ms  0x26e5 fd:0x7f2ffb0390d0
           /* TID 0x26dd */
 13630 ms  0x26dd PR_Connect()
 13630 ms  0x26dd fd:0x7f2ffbbfe6a0
 13726 ms  0x26dd PR_Connect()
 13726 ms  0x26dd fd:0x7f2ffb7b5130
           /* TID 0x26e5 */
 13870 ms  0x26e5 PR_Close()
 13870 ms  0x26e5 fd:0x7f2ffb039e50
 13878 ms  0x26e5 PR_Close()
 13878 ms  0x26e5 fd:0x7f2ffb039580
           /* TID 0x26dd */
 13976 ms  0x26dd PR_Connect()
 13976 ms  0x26dd fd:0x7f2ffce79220
           /* TID 0x26e5 */
 14264 ms  0x26e5 PR_Close()
 14264 ms  0x26e5 fd:0x7f2ffbbfe880
           /* TID 0x26dd */
 14287 ms  0x26dd PR_Close()
 14287 ms  0x26dd fd:0x7f2ffad90e80
           /* TID 0x26d2 */
 14291 ms  0x26d2 EC_ValidatePublicKey()
 14294 ms  0x26d2 ret:0x0
 14294 ms  0x26d2 EC_ValidatePublicKey()
 14306 ms  0x26d2 ret:0x0
 14306 ms  0x26d2 EC_ValidatePublicKey()
 14308 ms  0x26d2 ret:0x0
 14308 ms  0x26d2 EC_ValidatePublicKey()
 14310 ms  0x26d2 ret:0x0
 14310 ms  0x26d2 EC_ValidatePublicKey()
 14312 ms  0x26d2 ret:0x0
 14312 ms  0x26d2 EC_ValidatePublicKey()
 14314 ms  0x26d2 ret:0x0
 14314 ms  0x26d2 EC_ValidatePublicKey()
 14315 ms  0x26d2 ret:0x0
 14315 ms  0x26d2 EC_ValidatePublicKey()
 14318 ms  0x26d2 ret:0x0
 14318 ms  0x26d2 EC_ValidatePublicKey()
 14319 ms  0x26d2 ret:0x0
 14319 ms  0x26d2 EC_ValidatePublicKey()
 14321 ms  0x26d2 ret:0x0
           /* TID 0x26dd */
 14321 ms  0x26dd PR_Close()
 14321 ms  0x26dd fd:0x7f2ffb7b5130
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffbbfe6a0
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffb1059d0
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffce79e50
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffe856610
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffe856640
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffceb3130
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffe856040
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f3000234fa0
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f2ffb185760
 14322 ms     | 0x26dd PK11_Encrypt()
 14322 ms     | 0x26dd symkey:0x7f2ffb4f8980
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f3000102280
 14322 ms  0x26dd PR_Close()
 14322 ms  0x26dd fd:0x7f3000222370
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002b78490
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3000234310
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3000234ac0
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002a61460
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002ab92e0
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002ab9ac0
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f2ffffc21c0
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3000102460
 14323 ms     | 0x26dd PK11_Encrypt()
 14323 ms     | 0x26dd symkey:0x7f2ffb189e80
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002ac7d30
 14323 ms  0x26dd PR_Close()
 14323 ms  0x26dd fd:0x7f3002ac7c10
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f3002ab95e0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f300004ba00
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f3002ab9a90
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f30001021c0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f2fffe670a0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f3000102310
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f2ffffc20a0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f300004bbe0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f300004bc10
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f3000102400
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f3002a616d0
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f30000ba730
 14324 ms  0x26dd PR_Close()
 14324 ms  0x26dd fd:0x7f2fffe671c0
           /* TID 0x2736 */
 14325 ms  0x2736 PR_Close()
 14325 ms  0x2736 fd:0x7f2ff9cca8b0
 14325 ms  0x2736 PR_Close()
 14325 ms  0x2736 fd:0x7f2ff9cca8b0
           /* TID 0x26dd */
 14325 ms  0x26dd PR_Close()
 14325 ms  0x26dd fd:0x7f3002a492e0
 14325 ms  0x26dd PR_Close()
 14325 ms  0x26dd fd:0x7f30002e8df0
 14325 ms  0x26dd PR_Close()
 14325 ms  0x26dd fd:0x7f30002044c0
 14325 ms  0x26dd PR_Close()
 14325 ms  0x26dd fd:0x7f30001fed00
 14325 ms  0x26dd PR_Close()
 14325 ms  0x26dd fd:0x7f30001fe3a0
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f30001eae20
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f300019f970
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f300019f250
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f300019f9a0
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f300004ba30
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f2fffb3f5b0
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f2ffe847220
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f2ffe856b50
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f3000113700
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f300004ba60
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f3000102fa0
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f30001130d0
 14326 ms  0x26dd PR_Close()
 14326 ms  0x26dd fd:0x7f3000102fd0
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f30000ba790
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffffc25b0
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2fffbdfd30
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f3000102e80
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f30000baee0
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffff72820
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f300019fd00
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2fffbdfca0
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffff720a0
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffe847a00
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffffbce80
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffff72640
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2ffe890f40
 14327 ms  0x26dd PR_Close()
 14327 ms  0x26dd fd:0x7f2fff8e8ca0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2fffb3f3a0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2fffb3f670
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2fffbdf700
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2ffe8565b0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f3000081670
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2fffbf4df0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2ffff72ca0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2ffff72cd0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2ffff72e50
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2ffff72fd0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f30000811f0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f30000745e0
 14328 ms  0x26dd PR_Close()
 14328 ms  0x26dd fd:0x7f2fffa82340
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f2ffffc2520
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f300004b1c0
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f2ffffbcdc0
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f2ffb44a850
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f2fe91ca9d0
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f30001025e0
 14329 ms  0x26dd PR_Close()
 14329 ms  0x26dd fd:0x7f2ffb185580
 14329 ms     | 0x26dd PK11_Encrypt()
 14329 ms     | 0x26dd symkey:0x7f2ffb18a300
           /* TID 0x26d2 */
 14332 ms  0x26d2 PR_Close()
 14332 ms  0x26d2 fd:0x7f2ffc060d00
 14332 ms  0x26d2 PR_Close()
 14332 ms  0x26d2 fd:0x7f2fe9164a90
 14333 ms  0x26d2 PR_Close()
 14333 ms  0x26d2 fd:0x7f2fe91ca9d0
 14333 ms  0x26d2 PR_Close()
 14333 ms  0x26d2 fd:0x7f2fe9164a90
 14333 ms  0x26d2 PR_Close()
 14333 ms  0x26d2 fd:0x7f2fe91ca9d0
 14333 ms  0x26d2 PR_Close()
 14333 ms  0x26d2 fd:0x7f2fe9164a90
           /* TID 0x26dd */
 14335 ms  0x26dd PR_Close()
 14335 ms  0x26dd fd:0x7f2ff9ccaeb0
 14335 ms     | 0x26dd PK11_Encrypt()
 14335 ms     | 0x26dd symkey:0x7f2fe91d8700
 14335 ms  0x26dd PR_Close()
 14335 ms  0x26dd fd:0x7f2ff9ccad60
 14335 ms  0x26dd PR_Close()
 14335 ms  0x26dd fd:0x7f2ff9cca2e0
 14335 ms     | 0x26dd PK11_Encrypt()
 14335 ms     | 0x26dd symkey:0x7f2fe91d7980
 14335 ms  0x26dd PR_Close()
 14335 ms  0x26dd fd:0x7f2ffb03bd60
 14336 ms  0x26dd PR_Close()
 14336 ms  0x26dd fd:0x7f2ffce79220
 14336 ms  0x26dd PR_Close()
 14336 ms  0x26dd fd:0x7f2ffc060d30
 14336 ms     | 0x26dd PK11_Encrypt()
 14336 ms     | 0x26dd symkey:0x7f2ffb7d7700
           /* TID 0x2748 */
 14339 ms  0x2748 PR_Close()
 14339 ms  0x2748 fd:0x7f2fe9164a90
           /* TID 0x26d2 */
 14357 ms  0x26d2 PR_Close()
 14357 ms  0x26d2 fd:0x7f2fe91ca9d0
 14357 ms  0x26d2 PR_Close()
 14357 ms  0x26d2 fd:0x7f2ffb0fff70
 14358 ms  0x26d2 PR_Close()
 14358 ms  0x26d2 fd:0x7f2fe91ca9d0
 14358 ms  0x26d2 PR_Close()
 14358 ms  0x26d2 fd:0x7f2ffb0fff70
 14358 ms  0x26d2 PR_Close()
 14358 ms  0x26d2 fd:0x7f3004dc89a0
 14358 ms  0x26d2 PR_Close()
 14358 ms  0x26d2 fd:0x7f3004dc88b0
 14358 ms  0x26d2 PR_Close()
 14358 ms  0x26d2 fd:0x7f3004dc8a60
 14361 ms  0x26d2 PR_Close()
 14361 ms  0x26d2 fd:0x7f2ffb039610
 14362 ms  0x26d2 PR_Close()
 14362 ms  0x26d2 fd:0x7f2ffb039610
 14364 ms  0x26d2 PR_Close()
 14364 ms  0x26d2 fd:0x7f2fe91ca9d0
 14364 ms  0x26d2 PR_Close()
 14364 ms  0x26d2 fd:0x7f2ffb0fffa0
 14365 ms  0x26d2 PR_Close()
 14365 ms  0x26d2 fd:0x7f2fe91ca9d0
 14365 ms  0x26d2 PR_Close()
 14365 ms  0x26d2 fd:0x7f2ffb0fffa0
 14367 ms  0x26d2 PR_Close()
 14367 ms  0x26d2 fd:0x7f2ffb105040
 14369 ms  0x26d2 PR_Close()
 14369 ms  0x26d2 fd:0x7f2ffb105040
 14371 ms  0x26d2 PR_Close()
 14371 ms  0x26d2 fd:0x7f2fe91ca9d0
 14371 ms  0x26d2 PR_Close()
 14371 ms  0x26d2 fd:0x7f2ffb1054f0
 14371 ms  0x26d2 PR_Close()
 14371 ms  0x26d2 fd:0x7f2fe91ca9d0
 14371 ms  0x26d2 PR_Close()
 14371 ms  0x26d2 fd:0x7f2ffb1054f0
 14374 ms  0x26d2 PR_Close()
 14374 ms  0x26d2 fd:0x7f2ffb1055b0
 14375 ms  0x26d2 PR_Close()
 14375 ms  0x26d2 fd:0x7f2ffb1055b0
 14388 ms  0x26d2 PR_Close()
 14388 ms  0x26d2 fd:0x7f2ffb185610
 14389 ms  0x26d2 PR_Close()
 14389 ms  0x26d2 fd:0x7f2ffb185610
 14391 ms  0x26d2 PR_Close()
 14391 ms  0x26d2 fd:0x7f2ffb185640
           /* TID 0x2748 */
 14400 ms  0x2748 PR_Close()
 14400 ms  0x2748 fd:0x7f2fe9164400
           /* TID 0x26d2 */
 14403 ms  0x26d2 PR_Close()
 14403 ms  0x26d2 fd:0x7f2fe91ca9d0
 14403 ms  0x26d2 PR_Close()
 14403 ms  0x26d2 fd:0x7f2ffb03b9a0
           /* TID 0x2748 */
 14403 ms  0x2748 PR_Close()
 14403 ms  0x2748 fd:0x7f2fe9164400
 14409 ms  0x2748 PR_Close()
 14409 ms  0x2748 fd:0x7f2fe9164a90
 14431 ms  0x2748 PR_Close()
 14431 ms  0x2748 fd:0x7f2fe9164a90
           /* TID 0x26d7 */
 14441 ms  0x26d7 PR_Close()
 14441 ms  0x26d7 fd:0x7f300375ce20
           /* TID 0x2748 */
 14457 ms  0x2748 PR_Close()
 14457 ms  0x2748 fd:0x7f2fe91caf40
           /* TID 0x26d7 */
 14466 ms  0x26d7 PR_Close()
 14466 ms  0x26d7 fd:0x7f2fffe677f0
           /* TID 0x26d2 */
 14467 ms  0x26d2 PR_Close()
 14467 ms  0x26d2 fd:0x7f2fe91ca9d0
 14467 ms  0x26d2 PR_Close()
 14467 ms  0x26d2 fd:0x7f2ffb03b070
           /* TID 0x26dd */
 14467 ms  0x26dd PR_Close()
 14467 ms  0x26dd fd:0x7f2ffa3da3a0
           /* TID 0x2736 */
 14468 ms  0x2736 PR_Close()
 14468 ms  0x2736 fd:0x7f2ffb03bbb0
 14468 ms  0x2736 PR_Close()
 14468 ms  0x2736 fd:0x7f2fe9164eb0
 14468 ms  0x2736 PR_Close()
 14468 ms  0x2736 fd:0x7f2fe9164eb0
 14468 ms  0x2736 PR_Close()
 14468 ms  0x2736 fd:0x7f2fe9164eb0
           /* TID 0x2748 */
 14468 ms  0x2748 PR_Close()
 14468 ms  0x2748 fd:0x7f2ffb03b070
           /* TID 0x26e5 */
 14471 ms  0x26e5 PR_Close()
 14471 ms  0x26e5 fd:0x7f2ffb105f10
 14471 ms  0x26e5 PR_Close()
 14471 ms  0x26e5 fd:0x7f2ffb105f40
           /* TID 0x26d7 */
 14477 ms  0x26d7 PR_Close()
 14477 ms  0x26d7 fd:0x7f2ffb03b1c0
           /* TID 0x26d2 */
 14479 ms  0x26d2 PR_Close()
 14479 ms  0x26d2 fd:0x7f2fe91ca9d0
 14479 ms  0x26d2 PR_Close()
 14479 ms  0x26d2 fd:0x7f2fe9164d90
           /* TID 0x2748 */
 14481 ms  0x2748 PR_Close()
 14481 ms  0x2748 fd:0x7f2fe9164dc0
 14483 ms  0x2748 PR_Close()
 14483 ms  0x2748 fd:0x7f2fe9164d00
           /* TID 0x26e5 */
 14529 ms  0x26e5 PR_Close()
 14529 ms  0x26e5 fd:0x7f2ffb185be0
 14529 ms  0x26e5 PR_Close()
 14529 ms  0x26e5 fd:0x7f2ffb03b0d0
           /* TID 0x2748 */
 14548 ms  0x2748 PR_Close()
 14548 ms  0x2748 fd:0x7f2fe9164520
 14549 ms  0x2748 PR_Close()
 14549 ms  0x2748 fd:0x7f2fe9164520
 14575 ms  0x2748 PR_Close()
 14575 ms  0x2748 fd:0x7f2fe9164700
 14577 ms  0x2748 PR_Close()
 14577 ms  0x2748 fd:0x7f2fe9164730
 14596 ms  0x2748 PR_Close()
 14596 ms  0x2748 fd:0x7f2fe9164f10
 14603 ms  0x2748 PR_Close()
 14603 ms  0x2748 fd:0x7f2fe91caca0
 14611 ms  0x2748 PR_Close()
 14611 ms  0x2748 fd:0x7f2ff9ccabe0
 14621 ms  0x2748 PR_Close()
 14621 ms  0x2748 fd:0x7f2ff9ccad60
 14623 ms  0x2748 PR_Close()
 14623 ms  0x2748 fd:0x7f2ff9ccad60
           /* TID 0x26d2 */
 15043 ms  0x26d2 PR_Close()
 15043 ms  0x26d2 fd:0x7f2fe9164730
 15043 ms  0x26d2 PR_Close()
 15043 ms  0x26d2 fd:0x7f2fe9164730
 15049 ms  0x26d2 PR_Close()
 15049 ms  0x26d2 fd:0x7f30220da130
 15049 ms  0x26d2 PR_Close()
 15049 ms  0x26d2 fd:0x7f30220da190
Process terminated
